;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           5     NONE    uint   x   
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
; shader hash: b2e603fffd12a2712973bfbe0621795e
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
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
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
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture     f32     2darray      T4     t16,space2     1
;                                   texture     f32          3d      T5     t15,space2     1
;                                   texture     f32          2d      T6     t14,space2     1
;                                   texture     f32          2d      T7     t13,space2     1
;                                   texture     u32          2d      T8     t17,space2     1
;                                   texture     f32          3d      T9     t18,space2     1
;                                   texture     f32     2darray     T10     t23,space2     1
;                                   texture     f32     2darray     T11     t24,space2     1
;                                   texture     f32     2darray     T12     t25,space2     1
;                                   texture    byte         r/o     T13     t66,space1     1
;                                   texture    byte         r/o     T14     t16,space1     1
;                                   texture    byte         r/o     T15     t17,space1     1
;                                   texture     f32          2d     T16     t69,space2     1
;                                   texture    byte         r/o     T17      t3,space1     1
;                                   texture    byte         r/o     T18      t4,space1     1
;                                   texture    byte         r/o     T19      t5,space1     1
;                                   texture    byte         r/o     T20      t6,space1     1
;                                   texture     f32          2d     T21     t37,space2     1
;                                   texture     f32          2d     T22             t0     1
;                                   texture     f32          2d     T23     t58,space2     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture     u32          2d     T26     t56,space2     1
;                                   texture     f32     2darray     T27     t35,space2     1
;                                   texture     f32          2d     T28     t34,space2     1
;                                   texture     f32          3d     T29     t31,space2     1
;                                   texture     f32          2d     T30      t2,space2     1
;                                   texture     f32          2d     T31      t3,space2     1
;                                   texture     f32          2d     T32      t4,space2     1
;                                   textureunorm_f32     2darray     T33     t80,space2     1
;                                   texture    byte         r/o     T34     t67,space1     1
;                                   texture     f32          2d     T35      t7,space2     1
;                                   texture     f32          2d     T36      t6,space2     1
;                                   texture     f32          2d     T37      t5,space2     1
;                                   texture     f32          2d     T38     t38,space2     1
;                                   texture     f32          1d     T39     t30,space2     1
;                                   texture     f32          3d     T40     t44,space2     1
;                                   texture     f32          3d     T41     t45,space2     1
;                                   texture     f32     2darray     T42     t47,space2     1
;                                   textureunorm_f32     2darray     T43     t85,space2     1
;                                   texture     f32          2d     T44     t83,space2     1
;                                   texture     f32          2d     T45     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 21, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = alloca [4 x i32], align 4
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = alloca [12 x float], align 4
  %72 = alloca [12 x float], align 4
  %73 = alloca [4 x float], align 4
  %74 = alloca [4 x float], align 4
  %75 = alloca [4 x float], align 4
  %76 = alloca [3 x float], align 4
  %77 = alloca [3 x float], align 4
  %78 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %79 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = fmul fast float %81, %67
  %83 = fmul fast float %81, %68
  %84 = fmul fast float %60, %57
  %85 = fmul fast float %61, %56
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %61, %55
  %88 = fmul fast float %59, %57
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %59, %56
  %91 = fmul fast float %60, %55
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %86, %58
  %94 = fmul fast float %89, %58
  %95 = fmul fast float %92, %58
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %99 = fmul fast float %97, 2.000000e+00
  %100 = fmul fast float %99, %82
  %101 = fmul fast float %98, 2.000000e+00
  %102 = fmul fast float %101, %83
  %103 = fsub fast float 1.000000e+00, %100
  %104 = fsub fast float 1.000000e+00, %102
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fmul fast float %103, %106
  %110 = fmul fast float %103, %107
  %111 = fmul fast float %103, %108
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = fmul fast float %104, %113
  %117 = fmul fast float %104, %114
  %118 = fmul fast float %104, %115
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fadd fast float %116, %120
  %124 = fadd fast float %123, %109
  %125 = fadd fast float %117, %121
  %126 = fadd fast float %125, %110
  %127 = fadd fast float %118, %122
  %128 = fadd fast float %127, %111
  %129 = fmul fast float %124, %70
  %130 = fmul fast float %126, %70
  %131 = fmul fast float %128, %70
  %132 = fadd fast float %64, 5.000000e-01
  %133 = fptoui float %132 to i32
  %134 = shl i32 %133, 3
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = or i32 %134, 4
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = and i32 %136, 8191
  %141 = lshr i32 %136, 13
  %142 = and i32 %141, 8191
  %143 = lshr i32 %136, 26
  %144 = and i32 %139, 65535
  %145 = lshr i32 %139, 16
  %146 = uitofp i32 %144 to float
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %149 = uitofp i32 %145 to float
  %150 = uitofp i32 %140 to float
  %151 = fmul fast float %148, %150
  %152 = uitofp i32 %142 to float
  %153 = fmul fast float %148, %152
  %154 = fmul fast float %148, %62
  %155 = fmul fast float %154, %146
  %156 = fmul fast float %148, %63
  %157 = fmul fast float %156, %149
  %158 = fadd fast float %155, %151
  %159 = fadd fast float %153, %157
  %160 = uitofp i32 %143 to float
  %161 = fmul fast float %82, 5.000000e-01
  %162 = fmul fast float %83, 5.000000e-01
  %163 = fptosi float %161 to i32
  %164 = fptosi float %162 to i32
  %165 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %163, i32 %164, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = lshr i32 %166, 18
  %168 = uitofp i32 %167 to float
  %169 = fmul fast float %168, 0x3F4C00EBA0000000
  %170 = call float @dx.op.unary.f32(i32 21, float %169)  ; Exp(value)
  %171 = fadd fast float %170, -1.000000e+00
  %172 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %173 = extractvalue %dx.types.Dimensions %172, 0
  %174 = sitofp i32 %173 to float
  %175 = extractvalue %dx.types.Dimensions %172, 1
  %176 = sitofp i32 %175 to float
  %177 = fcmp fast oge float %161, %174
  %178 = fcmp fast oge float %162, %176
  %179 = or i1 %177, %178
  %180 = select i1 %179, float 0x4197782600000000, float %171
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %184 = fmul fast float %182, %82
  %185 = fmul fast float %183, %83
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 114688
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float %184, float 0.000000e+00
  %191 = select i1 %189, float %185, float 0.000000e+00
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %49, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fmul fast float %193, 2.550000e+02
  %195 = fptoui float %194 to i32
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.i32 %197, 3
  %199 = and i32 %198, 3
  %200 = icmp ne i32 %199, 0
  %201 = and i32 %198, 4
  %202 = icmp ne i32 %201, 0
  %203 = and i1 %200, %202
  br i1 %203, label %204, label %215

; <label>:204                                     ; preds = %0
  %205 = extractvalue %dx.types.CBufRet.f32 %196, 3
  %206 = fmul fast float %205, %83
  %207 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %208 = fmul fast float %207, %82
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %48, float %208, float %206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fsub fast float 1.000000e+00, %210
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = fcmp fast olt float %211, %213
  br label %218

; <label>:215                                     ; preds = %0
  %216 = icmp eq i32 %201, 0
  %217 = and i1 %200, %216
  br label %218

; <label>:218                                     ; preds = %215, %204
  %219 = phi i1 [ %214, %204 ], [ %217, %215 ]
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %222 = fmul fast float %221, 0x3FE3C6EF40000000
  %223 = frem fast float %82, 2.560000e+02
  %224 = frem fast float %83, 2.560000e+02
  %225 = fptoui float %223 to i32
  %226 = fptoui float %224 to i32
  %227 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %225, i32 %226, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = fadd fast float %228, %222
  %230 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %231 = add i32 %54, 60
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = shl i32 %233, 4
  %235 = and i32 %234, 32752
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %233, 7
  %238 = and i32 %237, 32752
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %233, 22
  %241 = shl nuw nsw i32 %240, 5
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = add i32 %54, 72
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F70101020000000
  %249 = lshr i32 %245, 8
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %245, 16
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = add i32 %54, 36
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 65535
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %259, 16
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = add i32 %54, 96
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = fmul fast float %268, 0x3F50624DE0000000
  %272 = fmul fast float %270, 0x3F50624DE0000000
  %273 = add i32 %54, 108
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 2
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %286, label %278

; <label>:278                                     ; preds = %218
  %279 = add i32 %54, 152
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = add i32 %281, 0
  %283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %283, %dx.types.Handle %79, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 3
  br label %286

; <label>:286                                     ; preds = %278, %218
  %287 = phi float [ 1.000000e+00, %218 ], [ %285, %278 ]
  %288 = add i32 %54, 24
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = add i32 %54, 28
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = or i32 %293, %290
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %906, label %296

; <label>:296                                     ; preds = %286
  %297 = add i32 %54, 92
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = lshr i32 %299, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = fmul fast float %301, 0x3F50624DE0000000
  %303 = add i32 %54, 40
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = lshr i32 %305, 16
  %307 = and i32 %306, 255
  %308 = lshr i32 %305, 24
  %309 = add i32 %54, 100
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %54, 32
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = lshr i32 %318, 22
  %320 = shl nuw nsw i32 %319, 5
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = shl i32 %318, 4
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %318, 7
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 3
  %330 = fmul fast float %329, 1.000000e+03
  %331 = fmul fast float %271, %330
  %332 = call float @dx.op.unary.f32(i32 22, float %331)  ; Frc(value)
  %333 = fadd fast float %332, %261
  %334 = fmul fast float %272, %330
  %335 = call float @dx.op.unary.f32(i32 22, float %334)  ; Frc(value)
  %336 = fadd fast float %335, %263
  %337 = fmul fast float %302, %330
  %338 = call float @dx.op.unary.f32(i32 22, float %337)  ; Frc(value)
  %339 = fmul fast float %338, 0x401921FB60000000
  %340 = fadd fast float %339, %321
  %341 = call float @dx.op.unary.f32(i32 13, float %340)  ; Sin(value)
  %342 = call float @dx.op.unary.f32(i32 12, float %340)  ; Cos(value)
  %343 = fsub fast float -0.000000e+00, %341
  %344 = fadd fast float %65, -5.000000e-01
  %345 = fadd fast float %66, -5.000000e-01
  %346 = fmul fast float %313, %344
  %347 = fmul fast float %315, %345
  %348 = fadd fast float %346, 5.000000e-01
  %349 = fadd fast float %347, 5.000000e-01
  %350 = fmul fast float %324, %348
  %351 = fmul fast float %327, %349
  %352 = fmul fast float %342, %350
  %353 = call float @dx.op.tertiary.f32(i32 46, float %343, float %351, float %352)  ; FMad(a,b,c)
  %354 = fmul fast float %341, %350
  %355 = call float @dx.op.tertiary.f32(i32 46, float %342, float %351, float %354)  ; FMad(a,b,c)
  %356 = fadd fast float %333, %353
  %357 = fadd fast float %336, %355
  %358 = icmp ugt i32 %307, 1
  %359 = icmp ugt i32 %305, 33554431
  %360 = or i1 %359, %358
  br i1 %360, label %361, label %386

; <label>:361                                     ; preds = %296
  %362 = add i32 %54, 84
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = lshr i32 %364, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = fmul fast float %329, %366
  %368 = call float @dx.op.unary.f32(i32 22, float %367)  ; Frc(value)
  %369 = mul nuw nsw i32 %307, %308
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %368, %370
  %372 = call float @dx.op.unary.f32(i32 27, float %371)  ; Round_ni(value)
  %373 = fptoui float %372 to i32
  %374 = urem i32 %373, %307
  %375 = udiv i32 %373, %308
  %376 = call float @dx.op.unary.f32(i32 22, float %356)  ; Frc(value)
  %377 = call float @dx.op.unary.f32(i32 22, float %357)  ; Frc(value)
  %378 = uitofp i32 %374 to float
  %379 = uitofp i32 %375 to float
  %380 = fadd fast float %376, %378
  %381 = fadd fast float %377, %379
  %382 = uitofp i32 %307 to float
  %383 = uitofp i32 %308 to float
  %384 = fdiv fast float %380, %382
  %385 = fdiv fast float %381, %383
  br label %386

; <label>:386                                     ; preds = %361, %296
  %387 = phi float [ %384, %361 ], [ %356, %296 ]
  %388 = phi float [ %385, %361 ], [ %357, %296 ]
  %389 = and i32 %290, 256
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %437, label %391

; <label>:391                                     ; preds = %386
  %392 = add i32 %54, 136
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = add i32 %394, 0
  %396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %395, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %397 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %396, %dx.types.Handle %79, float %387, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = add i32 %54, 52
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = shl i32 %401, 4
  %403 = and i32 %402, 32752
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %401, 7
  %406 = and i32 %405, 32752
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = fsub fast float 1.000000e+00, %287
  %409 = call float @dx.op.binary.f32(i32 35, float %408, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %410 = bitcast float %287 to i32
  %411 = sitofp i32 %410 to float
  %412 = fadd fast float %411, 0xC1CFBF8940000000
  %413 = fmul fast float %407, %412
  %414 = fadd fast float %413, 0x41CFBF8940000000
  %415 = fptosi float %414 to i32
  %416 = bitcast i32 %415 to float
  %417 = bitcast float %409 to i32
  %418 = sitofp i32 %417 to float
  %419 = fadd fast float %418, 0xC1CFBF8940000000
  %420 = fmul fast float %419, %407
  %421 = fadd fast float %420, 0x41CFBF8940000000
  %422 = fptosi float %421 to i32
  %423 = bitcast i32 %422 to float
  %424 = fmul fast float %416, %404
  %425 = fmul fast float %423, %404
  %426 = fsub fast float %409, %424
  %427 = fadd fast float %425, %409
  %428 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %429 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %430 = fsub fast float %398, %428
  %431 = fsub fast float %429, %428
  %432 = bitcast float %431 to i32
  %433 = sub nsw i32 2129859010, %432
  %434 = bitcast i32 %433 to float
  %435 = fmul fast float %434, %430
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  br label %437

; <label>:437                                     ; preds = %391, %386
  %438 = phi float [ %436, %391 ], [ %287, %386 ]
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 128
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %459, label %443

; <label>:443                                     ; preds = %437
  %444 = add i32 %54, 132
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = add i32 %446, 0
  %448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %448, %dx.types.Handle %79, float %387, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 524288
  %454 = icmp ne i32 %453, 0
  %455 = fcmp fast ogt float %450, 0x3FE0101020000000
  %456 = select i1 %455, float 1.000000e+00, float 0.000000e+00
  %457 = select i1 %454, float %456, float %450
  %458 = fmul fast float %457, %438
  br label %459

; <label>:459                                     ; preds = %443, %437
  %460 = phi float [ %458, %443 ], [ %438, %437 ]
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 16
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %663, label %465

; <label>:465                                     ; preds = %459
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = add i32 %54, 120
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = add i32 %470, 0
  %472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %472, %dx.types.Handle %78, float %387, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = extractvalue %dx.types.ResRet.f32 %473, 3
  %478 = and i32 %467, 255
  %479 = uitofp i32 %478 to float
  %480 = lshr i32 %467, 8
  %481 = and i32 %480, 255
  %482 = uitofp i32 %481 to float
  %483 = fmul fast float %477, %479
  %484 = fadd fast float %483, %482
  %485 = fmul fast float %484, 0x3F70101000000000
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 512
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %498, label %490

; <label>:490                                     ; preds = %465
  %491 = add i32 %54, 140
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = add i32 %493, 0
  %495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %495, %dx.types.Handle %79, float %387, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  br label %498

; <label>:498                                     ; preds = %490, %465
  %499 = phi float [ %497, %490 ], [ 1.000000e+00, %465 ]
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 33554432
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %610, label %504

; <label>:504                                     ; preds = %498
  %505 = add i32 %54, 80
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = and i32 %507, 65535
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = lshr i32 %507, 16
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = add i32 %54, 84
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 65535
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = lshr i32 %518, 24
  %520 = uitofp i32 %519 to float
  %521 = fmul fast float %520, 0x3F70101020000000
  %522 = and i32 %518, 255
  %523 = uitofp i32 %522 to float
  %524 = fmul fast float %523, 0x3F70101020000000
  %525 = lshr i32 %518, 8
  %526 = and i32 %525, 255
  %527 = uitofp i32 %526 to float
  %528 = fmul fast float %527, 0x3F70101020000000
  %529 = lshr i32 %518, 16
  %530 = and i32 %529, 255
  %531 = uitofp i32 %530 to float
  %532 = fmul fast float %531, 0x3F70101020000000
  %533 = add i32 %54, 76
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = lshr i32 %535, 24
  %537 = uitofp i32 %536 to float
  %538 = fmul fast float %537, 0x3F70101020000000
  %539 = and i32 %535, 255
  %540 = uitofp i32 %539 to float
  %541 = fmul fast float %540, 0x3F70101020000000
  %542 = lshr i32 %535, 8
  %543 = and i32 %542, 255
  %544 = uitofp i32 %543 to float
  %545 = fmul fast float %544, 0x3F70101020000000
  %546 = lshr i32 %535, 16
  %547 = and i32 %546, 255
  %548 = uitofp i32 %547 to float
  %549 = fmul fast float %548, 0x3F70101020000000
  %550 = bitcast float %474 to i32
  %551 = ashr i32 %550, 1
  %552 = sub nsw i32 1597463174, %551
  %553 = bitcast i32 %552 to float
  %554 = fmul fast float %474, 5.000000e-01
  %555 = fmul fast float %553, %553
  %556 = fmul fast float %555, %554
  %557 = fsub fast float 1.500000e+00, %556
  %558 = fmul fast float %553, %474
  %559 = fmul fast float %558, %557
  %560 = bitcast float %475 to i32
  %561 = ashr i32 %560, 1
  %562 = sub nsw i32 1597463174, %561
  %563 = bitcast i32 %562 to float
  %564 = fmul fast float %475, 5.000000e-01
  %565 = fmul fast float %563, %563
  %566 = fmul fast float %565, %564
  %567 = fsub fast float 1.500000e+00, %566
  %568 = fmul fast float %563, %475
  %569 = fmul fast float %568, %567
  %570 = bitcast float %476 to i32
  %571 = ashr i32 %570, 1
  %572 = sub nsw i32 1597463174, %571
  %573 = bitcast i32 %572 to float
  %574 = fmul fast float %476, 5.000000e-01
  %575 = fmul fast float %573, %573
  %576 = fmul fast float %575, %574
  %577 = fsub fast float 1.500000e+00, %576
  %578 = fmul fast float %573, %476
  %579 = fmul fast float %578, %577
  %580 = fsub fast float %559, %541
  %581 = fsub fast float %569, %545
  %582 = fsub fast float %579, %549
  %583 = fmul fast float %580, %509
  %584 = fmul fast float %581, %511
  %585 = fmul fast float %582, %516
  %586 = fadd fast float %583, %524
  %587 = fadd fast float %584, %528
  %588 = fadd fast float %585, %532
  %589 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  %590 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %591 = call float @dx.op.unary.f32(i32 7, float %588)  ; Saturate(value)
  %592 = fmul fast float %589, %589
  %593 = fmul fast float %590, %590
  %594 = fmul fast float %591, %591
  %595 = fsub fast float %592, %474
  %596 = fsub fast float %593, %475
  %597 = fsub fast float %594, %476
  %598 = fmul fast float %595, %499
  %599 = fmul fast float %596, %499
  %600 = fmul fast float %597, %499
  %601 = fadd fast float %598, %474
  %602 = fadd fast float %599, %475
  %603 = fadd fast float %600, %476
  %604 = fadd fast float %521, %485
  %605 = fsub fast float %604, %538
  %606 = call float @dx.op.unary.f32(i32 7, float %605)  ; Saturate(value)
  %607 = fsub fast float %606, %485
  %608 = fmul fast float %607, %499
  %609 = fadd fast float %608, %485
  br label %663

; <label>:610                                     ; preds = %498
  %611 = and i32 %501, 134217728
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %647, label %613

; <label>:613                                     ; preds = %610
  %614 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %615 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %616 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %617 = fadd fast float %614, -5.000000e-01
  %618 = fadd fast float %615, -5.000000e-01
  %619 = fadd fast float %616, -5.000000e-01
  %620 = fmul fast float %617, %499
  %621 = fmul fast float %618, %499
  %622 = fmul fast float %619, %499
  %623 = fadd fast float %620, 5.000000e-01
  %624 = fadd fast float %621, 5.000000e-01
  %625 = fadd fast float %622, 5.000000e-01
  %626 = call float @dx.op.unary.f32(i32 24, float %474)  ; Sqrt(value)
  %627 = call float @dx.op.unary.f32(i32 24, float %475)  ; Sqrt(value)
  %628 = call float @dx.op.unary.f32(i32 24, float %476)  ; Sqrt(value)
  %629 = fmul fast float %623, 2.000000e+00
  %630 = fsub fast float 1.000000e+00, %629
  %631 = fmul fast float %630, %626
  %632 = fadd fast float %631, %629
  %633 = fmul fast float %632, %626
  %634 = fmul fast float %624, 2.000000e+00
  %635 = fsub fast float 1.000000e+00, %634
  %636 = fmul fast float %635, %627
  %637 = fadd fast float %636, %634
  %638 = fmul fast float %637, %627
  %639 = fmul fast float %625, 2.000000e+00
  %640 = fsub fast float 1.000000e+00, %639
  %641 = fmul fast float %640, %628
  %642 = fadd fast float %641, %639
  %643 = fmul fast float %642, %628
  %644 = fmul fast float %633, %633
  %645 = fmul fast float %638, %638
  %646 = fmul fast float %643, %643
  br label %663

; <label>:647                                     ; preds = %610
  %648 = fmul fast float %248, %248
  %649 = fmul fast float %252, %252
  %650 = fmul fast float %256, %256
  %651 = fadd fast float %648, -1.000000e+00
  %652 = fadd fast float %649, -1.000000e+00
  %653 = fadd fast float %650, -1.000000e+00
  %654 = fmul fast float %499, %651
  %655 = fmul fast float %499, %652
  %656 = fmul fast float %499, %653
  %657 = fadd fast float %654, 1.000000e+00
  %658 = fadd fast float %655, 1.000000e+00
  %659 = fadd fast float %656, 1.000000e+00
  %660 = fmul fast float %657, %474
  %661 = fmul fast float %658, %475
  %662 = fmul fast float %659, %476
  br label %663

; <label>:663                                     ; preds = %647, %613, %504, %459
  %664 = phi float [ %609, %504 ], [ %485, %613 ], [ %485, %647 ], [ 0x3FA23C0BE0000000, %459 ]
  %665 = phi float [ %601, %504 ], [ %644, %613 ], [ %660, %647 ], [ 1.000000e+00, %459 ]
  %666 = phi float [ %602, %504 ], [ %645, %613 ], [ %661, %647 ], [ 1.000000e+00, %459 ]
  %667 = phi float [ %603, %504 ], [ %646, %613 ], [ %662, %647 ], [ 1.000000e+00, %459 ]
  %668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.i32 %668, 1
  %670 = and i32 %669, 1
  %671 = icmp ne i32 %670, 0
  %672 = add i32 %54, 116
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 32
  %676 = icmp ne i32 %675, 0
  %677 = and i1 %671, %676
  %678 = select i1 %677, float 1.000000e+00, float %665
  %679 = select i1 %677, float 0x3FD3333340000000, float %666
  %680 = select i1 %677, float 0x3FD3333340000000, float %667
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 32
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %757, label %685

; <label>:685                                     ; preds = %663
  %686 = add i32 %54, 44
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = add i32 %54, 124
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = add i32 %691, 0
  %693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %692, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %694 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %693, %dx.types.Handle %78, float %387, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 0
  %696 = extractvalue %dx.types.ResRet.f32 %694, 1
  %697 = extractvalue %dx.types.ResRet.f32 %694, 2
  %698 = extractvalue %dx.types.ResRet.f32 %694, 3
  %699 = and i32 %688, 255
  %700 = uitofp i32 %699 to float
  %701 = lshr i32 %688, 8
  %702 = and i32 %701, 255
  %703 = uitofp i32 %702 to float
  %704 = lshr i32 %688, 16
  %705 = and i32 %704, 255
  %706 = uitofp i32 %705 to float
  %707 = fmul fast float %706, 0x3F70101000000000
  %708 = fmul fast float %695, %700
  %709 = fadd fast float %708, %703
  %710 = fmul fast float %709, 0x3F70101000000000
  %711 = fadd fast float %696, -5.000000e-01
  %712 = fadd fast float %698, -5.000000e-01
  %713 = fmul fast float %711, %707
  %714 = fmul fast float %712, %707
  %715 = fadd fast float %713, 5.000000e-01
  %716 = fadd fast float %714, 5.000000e-01
  %717 = fmul fast float %715, 2.000000e+00
  %718 = fadd fast float %717, -1.000000e+00
  %719 = fmul fast float %716, 2.000000e+00
  %720 = fadd fast float %719, -1.000000e+00
  %721 = fadd fast float %718, %720
  %722 = fmul fast float %721, 5.000000e-01
  %723 = fsub fast float %718, %720
  %724 = fmul fast float %723, 5.000000e-01
  %725 = call float @dx.op.unary.f32(i32 6, float %722)  ; FAbs(value)
  %726 = fsub fast float 1.000000e+00, %725
  %727 = call float @dx.op.unary.f32(i32 6, float %724)  ; FAbs(value)
  %728 = fsub fast float %726, %727
  %729 = call float @dx.op.dot3.f32(i32 55, float %722, float %724, float %728, float %722, float %724, float %728)  ; Dot3(ax,ay,az,bx,by,bz)
  %730 = call float @dx.op.unary.f32(i32 25, float %729)  ; Rsqrt(value)
  %731 = fmul fast float %722, %730
  %732 = fmul fast float %724, %730
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 67108864
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %753, label %737

; <label>:737                                     ; preds = %685
  %738 = add i32 %54, 88
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = and i32 %740, 65535
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 65535
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = lshr i32 %740, 16
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = fsub fast float %710, %748
  %750 = fmul fast float %749, %742
  %751 = fadd fast float %750, %746
  %752 = call float @dx.op.unary.f32(i32 7, float %751)  ; Saturate(value)
  br label %753

; <label>:753                                     ; preds = %737, %685
  %754 = phi float [ %752, %737 ], [ %710, %685 ]
  %755 = call float @dx.op.dot2.f32(i32 54, float %731, float %732, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %756 = call float @dx.op.dot2.f32(i32 54, float %731, float %732, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %757

; <label>:757                                     ; preds = %753, %663
  %758 = phi float [ %754, %753 ], [ 0x3FD6666660000000, %663 ]
  %759 = phi float [ %755, %753 ], [ 0.000000e+00, %663 ]
  %760 = phi float [ %756, %753 ], [ 0.000000e+00, %663 ]
  %761 = phi float [ %697, %753 ], [ 1.000000e+00, %663 ]
  %762 = add i32 %54, 64
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = lshr i32 %764, 22
  %766 = shl nuw nsw i32 %765, 5
  %767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %766)  ; LegacyF16ToF32(value)
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 64
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %805, label %772

; <label>:772                                     ; preds = %757
  %773 = add i32 %54, 128
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = add i32 %775, 0
  %777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %776, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 131072
  %781 = icmp eq i32 %780, 0
  %782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %777, %dx.types.Handle %78, float %387, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = extractvalue %dx.types.ResRet.f32 %782, 1
  %785 = extractvalue %dx.types.ResRet.f32 %782, 2
  %786 = fmul fast float %783, %236
  %787 = fmul fast float %784, %239
  %788 = fmul fast float %785, %242
  br i1 %781, label %795, label %789

; <label>:789                                     ; preds = %772
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = fmul fast float %791, %786
  %793 = fmul fast float %791, %787
  %794 = fmul fast float %791, %788
  br label %795

; <label>:795                                     ; preds = %789, %772
  %796 = phi float [ %792, %789 ], [ %786, %772 ]
  %797 = phi float [ %793, %789 ], [ %787, %772 ]
  %798 = phi float [ %794, %789 ], [ %788, %772 ]
  %799 = fmul fast float %796, %767
  %800 = select i1 %219, float %799, float %796
  %801 = call float @dx.op.dot3.f32(i32 55, float %800, float %797, float %798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %802 = select i1 %219, float 0.000000e+00, float %796
  %803 = select i1 %219, float %801, float %797
  %804 = select i1 %219, float 0.000000e+00, float %798
  br label %805

; <label>:805                                     ; preds = %795, %757
  %806 = phi float [ %802, %795 ], [ 0.000000e+00, %757 ]
  %807 = phi float [ %803, %795 ], [ 0.000000e+00, %757 ]
  %808 = phi float [ %804, %795 ], [ 0.000000e+00, %757 ]
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 1024
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %843, label %813

; <label>:813                                     ; preds = %805
  %814 = add i32 %54, 56
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = lshr i32 %816, 8
  %821 = and i32 %820, 255
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %822, 0x3F70101020000000
  %824 = lshr i32 %816, 16
  %825 = and i32 %824, 255
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F70101020000000
  %828 = fmul fast float %819, %819
  %829 = fmul fast float %823, %823
  %830 = fmul fast float %827, %827
  %831 = add i32 %54, 144
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = add i32 %833, 0
  %835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %834, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %835, %dx.types.Handle %79, float %387, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = extractvalue %dx.types.ResRet.f32 %836, 1
  %839 = extractvalue %dx.types.ResRet.f32 %836, 2
  %840 = fmul fast float %828, %837
  %841 = fmul fast float %829, %838
  %842 = fmul fast float %830, %839
  br label %843

; <label>:843                                     ; preds = %813, %805
  %844 = phi float [ %840, %813 ], [ 0.000000e+00, %805 ]
  %845 = phi float [ %841, %813 ], [ 0.000000e+00, %805 ]
  %846 = phi float [ %842, %813 ], [ 0.000000e+00, %805 ]
  %847 = fcmp fast ogt float %844, 0.000000e+00
  %848 = fcmp fast ogt float %845, 0.000000e+00
  %849 = fcmp fast ogt float %846, 0.000000e+00
  %850 = call float @dx.op.unary.f32(i32 23, float %844)  ; Log(value)
  %851 = call float @dx.op.unary.f32(i32 23, float %845)  ; Log(value)
  %852 = call float @dx.op.unary.f32(i32 23, float %846)  ; Log(value)
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = lshr i32 %854, 7
  %856 = and i32 %855, 32752
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = fmul fast float %850, 0xBFE62E4300000000
  %859 = fmul fast float %858, %857
  %860 = fmul fast float %851, 0xBFE62E4300000000
  %861 = fmul fast float %860, %857
  %862 = fmul fast float %852, 0xBFE62E4300000000
  %863 = fmul fast float %862, %857
  %864 = select i1 %847, float %859, float 1.270000e+02
  %865 = select i1 %848, float %861, float 1.270000e+02
  %866 = select i1 %849, float %863, float 1.270000e+02
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 10240
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %891, label %871

; <label>:871                                     ; preds = %843
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 2048
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %891, label %876

; <label>:876                                     ; preds = %871
  %877 = add i32 %54, 148
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = add i32 %879, 0
  %881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %882 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %881, %dx.types.Handle %79, float %387, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 3
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = shl i32 %885, 4
  %887 = and i32 %886, 32752
  %888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %887)  ; LegacyF16ToF32(value)
  %889 = fmul fast float %888, %883
  %890 = call float @dx.op.binary.f32(i32 35, float %889, float 0x3F70101020000000)  ; FMax(a,b)
  br label %891

; <label>:891                                     ; preds = %876, %871, %843
  %892 = phi float [ %890, %876 ], [ 0x3F70101020000000, %871 ], [ 0x3F70101020000000, %843 ]
  %893 = add i32 %54, 48
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 255
  %897 = uitofp i32 %896 to float
  %898 = lshr i32 %895, 8
  %899 = and i32 %898, 255
  %900 = uitofp i32 %899 to float
  %901 = call float @dx.op.dot3.f32(i32 55, float %678, float %679, float %680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %902 = fmul fast float %900, %901
  %903 = fadd fast float %902, %897
  %904 = fmul fast float %903, 0x3F70101020000000
  %905 = call float @dx.op.unary.f32(i32 7, float %904)  ; Saturate(value)
  br label %906

; <label>:906                                     ; preds = %891, %286
  %907 = phi float [ 0.000000e+00, %286 ], [ %759, %891 ]
  %908 = phi float [ 0.000000e+00, %286 ], [ %760, %891 ]
  %909 = phi float [ 0.000000e+00, %286 ], [ %678, %891 ]
  %910 = phi float [ 0.000000e+00, %286 ], [ %679, %891 ]
  %911 = phi float [ 0.000000e+00, %286 ], [ %680, %891 ]
  %912 = phi float [ 0.000000e+00, %286 ], [ %864, %891 ]
  %913 = phi float [ 0.000000e+00, %286 ], [ %865, %891 ]
  %914 = phi float [ 0.000000e+00, %286 ], [ %866, %891 ]
  %915 = phi float [ 0.000000e+00, %286 ], [ %806, %891 ]
  %916 = phi float [ 0.000000e+00, %286 ], [ %807, %891 ]
  %917 = phi float [ 0.000000e+00, %286 ], [ %808, %891 ]
  %918 = phi float [ 0.000000e+00, %286 ], [ %664, %891 ]
  %919 = phi float [ 0.000000e+00, %286 ], [ %460, %891 ]
  %920 = phi float [ 0.000000e+00, %286 ], [ %758, %891 ]
  %921 = phi float [ 0.000000e+00, %286 ], [ %761, %891 ]
  %922 = phi float [ 0.000000e+00, %286 ], [ %892, %891 ]
  %923 = phi float [ 0.000000e+00, %286 ], [ %905, %891 ]
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %926 = call float @dx.op.dot2.f32(i32 54, float %907, float %908, float %907, float %908)  ; Dot2(ax,ay,bx,by)
  %927 = fmul fast float %926, 0x3FE3333340000000
  %928 = fsub fast float 1.000000e+00, %927
  %929 = call float @dx.op.dot3.f32(i32 55, float %907, float %908, float %928, float %907, float %908, float %928)  ; Dot3(ax,ay,az,bx,by,bz)
  %930 = call float @dx.op.unary.f32(i32 25, float %929)  ; Rsqrt(value)
  %931 = fmul fast float %930, %907
  %932 = fmul fast float %930, %908
  %933 = fmul fast float %928, %930
  %934 = fmul fast float %933, %59
  %935 = fmul fast float %933, %60
  %936 = fmul fast float %933, %61
  %937 = fmul fast float %931, %55
  %938 = fmul fast float %931, %56
  %939 = fmul fast float %931, %57
  %940 = fadd fast float %934, %937
  %941 = fadd fast float %935, %938
  %942 = fadd fast float %936, %939
  %943 = fmul fast float %932, %93
  %944 = fmul fast float %932, %94
  %945 = fmul fast float %932, %95
  %946 = fadd fast float %940, %943
  %947 = fadd fast float %941, %944
  %948 = fadd fast float %942, %945
  %949 = call float @dx.op.dot3.f32(i32 55, float %946, float %947, float %948, float %946, float %947, float %948)  ; Dot3(ax,ay,az,bx,by,bz)
  %950 = call float @dx.op.unary.f32(i32 25, float %949)  ; Rsqrt(value)
  %951 = fmul fast float %946, %950
  %952 = fmul fast float %947, %950
  %953 = fmul fast float %948, %950
  %954 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %955 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %956 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %957 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %958 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %959 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %960 = fadd fast float %954, %129
  %961 = fadd fast float %955, %130
  %962 = fadd fast float %956, %131
  %963 = fadd fast float %957, %129
  %964 = fadd fast float %958, %130
  %965 = fadd fast float %959, %131
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %969 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 2
  %972 = extractvalue %dx.types.CBufRet.f32 %970, 3
  %973 = fmul fast float %967, %82
  %974 = fmul fast float %973, %971
  %975 = fmul fast float %968, %83
  %976 = fmul fast float %975, %972
  %977 = fptoui float %974 to i32
  %978 = fptoui float %976 to i32
  %979 = fadd fast float %967, -1.000000e+00
  %980 = fadd fast float %968, -1.000000e+00
  %981 = fptoui float %979 to i32
  %982 = fptoui float %980 to i32
  %983 = call i32 @dx.op.binary.i32(i32 40, i32 %977, i32 %981)  ; UMin(a,b)
  %984 = call i32 @dx.op.binary.i32(i32 40, i32 %978, i32 %982)  ; UMin(a,b)
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 2
  %987 = extractvalue %dx.types.CBufRet.f32 %985, 3
  %988 = fmul fast float %986, %70
  %989 = fsub fast float %988, %987
  %990 = fadd fast float %969, -1.000000e+00
  %991 = call float @dx.op.binary.f32(i32 36, float %989, float %990)  ; FMin(a,b)
  %992 = fptoui float %991 to i32
  %993 = fptoui float %967 to i32
  %994 = fptoui float %968 to i32
  %995 = mul i32 %992, %994
  %996 = add i32 %995, %984
  %997 = mul i32 %996, %993
  %998 = add i32 %997, %983
  %999 = shl i32 %998, 2
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 1023
  %1003 = lshr i32 %1001, 10
  %1004 = icmp eq i32 %1002, 0
  br i1 %1004, label %1458, label %1005

; <label>:1005                                    ; preds = %906
  %1006 = and i32 %1001, 1023
  br label %1007

; <label>:1007                                    ; preds = %1136, %1005
  %1008 = phi float [ %1137, %1136 ], [ 0.000000e+00, %1005 ]
  %1009 = phi float [ %1138, %1136 ], [ %925, %1005 ]
  %1010 = phi float [ %1139, %1136 ], [ %923, %1005 ]
  %1011 = phi float [ %1140, %1136 ], [ %912, %1005 ]
  %1012 = phi float [ %1141, %1136 ], [ %913, %1005 ]
  %1013 = phi float [ %1142, %1136 ], [ %914, %1005 ]
  %1014 = phi float [ %1143, %1136 ], [ 0.000000e+00, %1005 ]
  %1015 = phi float [ %1144, %1136 ], [ 0.000000e+00, %1005 ]
  %1016 = phi float [ %1145, %1136 ], [ %915, %1005 ]
  %1017 = phi float [ %1146, %1136 ], [ %916, %1005 ]
  %1018 = phi float [ %1147, %1136 ], [ %917, %1005 ]
  %1019 = phi float [ %1148, %1136 ], [ %951, %1005 ]
  %1020 = phi float [ %1149, %1136 ], [ %952, %1005 ]
  %1021 = phi float [ %1150, %1136 ], [ %953, %1005 ]
  %1022 = phi float [ %1151, %1136 ], [ %921, %1005 ]
  %1023 = phi float [ %1152, %1136 ], [ %920, %1005 ]
  %1024 = phi float [ %1153, %1136 ], [ 0.000000e+00, %1005 ]
  %1025 = phi float [ %1154, %1136 ], [ %918, %1005 ]
  %1026 = phi float [ %1155, %1136 ], [ %909, %1005 ]
  %1027 = phi float [ %1156, %1136 ], [ %910, %1005 ]
  %1028 = phi float [ %1157, %1136 ], [ %911, %1005 ]
  %1029 = phi i32 [ %1086, %1136 ], [ 0, %1005 ]
  %1030 = add nuw nsw i32 %1029, %1003
  %1031 = shl i32 %1030, 2
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = shl i32 %1033, 8
  %1035 = or i32 %1034, 48
  %1036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = extractvalue %dx.types.ResRet.f32 %1036, 3
  %1041 = or i32 %1034, 64
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.i32 %1042, 1
  %1045 = or i32 %1034, 80
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 3
  %1049 = or i32 %1034, 96
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = extractvalue %dx.types.ResRet.f32 %1050, 3
  %1055 = or i32 %1034, 112
  %1056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1058 = or i32 %1034, 128
  %1059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = extractvalue %dx.types.ResRet.f32 %1059, 3
  %1064 = or i32 %1034, 144
  %1065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.f32 %1065, 2
  %1069 = extractvalue %dx.types.ResRet.f32 %1065, 3
  %1070 = or i32 %1034, 160
  %1071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1075 = extractvalue %dx.types.ResRet.f32 %1071, 3
  %1076 = or i32 %1034, 192
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = or i32 %1034, 208
  %1080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = or i32 %1034, 248
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = add nuw nsw i32 %1029, 1
  %1087 = bitcast float %1040 to i32
  %1088 = and i32 %1087, 2560
  %1089 = icmp eq i32 %1088, 2048
  %1090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1094 = extractvalue %dx.types.ResRet.f32 %1090, 3
  %1095 = call float @dx.op.dot4.f32(i32 56, float %1091, float %1092, float %1093, float %1094, float %129, float %130, float %131, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1096 = or i32 %1034, 16
  %1097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.ResRet.f32 %1097, 1
  %1100 = extractvalue %dx.types.ResRet.f32 %1097, 2
  %1101 = extractvalue %dx.types.ResRet.f32 %1097, 3
  %1102 = call float @dx.op.dot4.f32(i32 56, float %1098, float %1099, float %1100, float %1101, float %129, float %130, float %131, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1103 = or i32 %1034, 32
  %1104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = extractvalue %dx.types.ResRet.f32 %1104, 3
  %1109 = call float @dx.op.dot4.f32(i32 56, float %1105, float %1106, float %1107, float %1108, float %129, float %130, float %131, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1110 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1111 = call float @dx.op.unary.f32(i32 6, float %1110)  ; FAbs(value)
  %1112 = call float @dx.op.unary.f32(i32 27, float %1102)  ; Round_ni(value)
  %1113 = call float @dx.op.unary.f32(i32 6, float %1112)  ; FAbs(value)
  %1114 = call float @dx.op.unary.f32(i32 6, float %1109)  ; FAbs(value)
  %1115 = call float @dx.op.unary.f32(i32 27, float %1114)  ; Round_ni(value)
  %1116 = fadd fast float %1113, %1111
  %1117 = fadd fast float %1116, %1115
  %1118 = fcmp fast oeq float %1117, 0.000000e+00
  %1119 = call float @dx.op.dot4.f32(i32 56, float %1091, float %1092, float %1093, float %1094, float %960, float %961, float %962, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1120 = call float @dx.op.dot4.f32(i32 56, float %1098, float %1099, float %1100, float %1101, float %960, float %961, float %962, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1121 = call float @dx.op.dot4.f32(i32 56, float %1091, float %1092, float %1093, float %1094, float %963, float %964, float %965, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1122 = call float @dx.op.dot4.f32(i32 56, float %1098, float %1099, float %1100, float %1101, float %963, float %964, float %965, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1123 = fsub fast float %1119, %1095
  %1124 = fsub fast float %1121, %1095
  %1125 = fsub fast float %1120, %1102
  %1126 = fsub fast float %1122, %1102
  %1127 = call float @dx.op.dot3.f32(i32 55, float %1037, float %1038, float %1039, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1130 = fadd fast float %1129, %1127
  %1131 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1133 = fcmp fast ogt float %1131, %1132
  %1134 = and i1 %1118, %1133
  %1135 = and i1 %1089, %1134
  br i1 %1135, label %1159, label %1136

; <label>:1136                                    ; preds = %1444, %1240, %1159, %1007
  %1137 = phi float [ %1008, %1159 ], [ %1243, %1240 ], [ %1243, %1444 ], [ %1008, %1007 ]
  %1138 = phi float [ %1009, %1159 ], [ %1009, %1240 ], [ %1420, %1444 ], [ %1009, %1007 ]
  %1139 = phi float [ %1010, %1159 ], [ %1010, %1240 ], [ %1418, %1444 ], [ %1010, %1007 ]
  %1140 = phi float [ %1011, %1159 ], [ %1011, %1240 ], [ %1396, %1444 ], [ %1011, %1007 ]
  %1141 = phi float [ %1012, %1159 ], [ %1012, %1240 ], [ %1397, %1444 ], [ %1012, %1007 ]
  %1142 = phi float [ %1013, %1159 ], [ %1013, %1240 ], [ %1398, %1444 ], [ %1013, %1007 ]
  %1143 = phi float [ %1014, %1159 ], [ %1014, %1240 ], [ %1367, %1444 ], [ %1014, %1007 ]
  %1144 = phi float [ %1015, %1159 ], [ %1015, %1240 ], [ %1365, %1444 ], [ %1015, %1007 ]
  %1145 = phi float [ %1016, %1159 ], [ %1016, %1240 ], [ %1454, %1444 ], [ %1016, %1007 ]
  %1146 = phi float [ %1017, %1159 ], [ %1017, %1240 ], [ %1455, %1444 ], [ %1017, %1007 ]
  %1147 = phi float [ %1018, %1159 ], [ %1018, %1240 ], [ %1456, %1444 ], [ %1018, %1007 ]
  %1148 = phi float [ %1019, %1159 ], [ %1019, %1240 ], [ %1346, %1444 ], [ %1019, %1007 ]
  %1149 = phi float [ %1020, %1159 ], [ %1020, %1240 ], [ %1347, %1444 ], [ %1020, %1007 ]
  %1150 = phi float [ %1021, %1159 ], [ %1021, %1240 ], [ %1348, %1444 ], [ %1021, %1007 ]
  %1151 = phi float [ %1022, %1159 ], [ %1022, %1240 ], [ %1376, %1444 ], [ %1022, %1007 ]
  %1152 = phi float [ %1023, %1159 ], [ %1023, %1240 ], [ %1373, %1444 ], [ %1023, %1007 ]
  %1153 = phi float [ %1024, %1159 ], [ %1024, %1240 ], [ %1370, %1444 ], [ %1024, %1007 ]
  %1154 = phi float [ %1025, %1159 ], [ %1025, %1240 ], [ %1363, %1444 ], [ %1025, %1007 ]
  %1155 = phi float [ %1026, %1159 ], [ %1026, %1240 ], [ %1358, %1444 ], [ %1026, %1007 ]
  %1156 = phi float [ %1027, %1159 ], [ %1027, %1240 ], [ %1359, %1444 ], [ %1027, %1007 ]
  %1157 = phi float [ %1028, %1159 ], [ %1028, %1240 ], [ %1360, %1444 ], [ %1028, %1007 ]
  %1158 = icmp eq i32 %1086, %1006
  br i1 %1158, label %1457, label %1007

; <label>:1159                                    ; preds = %1007
  %1160 = extractvalue %dx.types.ResRet.f32 %1056, 3
  %1161 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1162 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1163 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1164 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1165 = extractvalue %dx.types.ResRet.i32 %1042, 3
  %1166 = extractvalue %dx.types.ResRet.i32 %1042, 2
  %1167 = add i32 %1165, 0
  %1168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1167, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1168, %dx.types.Handle %1169, float %1095, float %1102, float undef, float undef, i32 0, i32 0, i32 undef, float %1123, float %1125, float undef, float %1124, float %1126, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = fmul fast float %1171, %1164
  %1173 = fadd fast float %1172, %1163
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = fmul fast float %1095, %1051
  %1176 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %1102, float %1175)  ; FMad(a,b,c)
  %1177 = fadd fast float %1176, %1162
  %1178 = fmul fast float %1095, %1053
  %1179 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %1102, float %1178)  ; FMad(a,b,c)
  %1180 = fadd fast float %1179, %1161
  %1181 = fmul fast float %1123, %1051
  %1182 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %1125, float %1181)  ; FMad(a,b,c)
  %1183 = fmul fast float %1123, %1053
  %1184 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %1125, float %1183)  ; FMad(a,b,c)
  %1185 = fmul fast float %1124, %1051
  %1186 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %1126, float %1185)  ; FMad(a,b,c)
  %1187 = fmul fast float %1124, %1053
  %1188 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %1126, float %1187)  ; FMad(a,b,c)
  %1189 = add i32 %1166, 0
  %1190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1189, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1191 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1190, %dx.types.Handle %1169, float %1177, float %1180, float undef, float undef, i32 0, i32 0, i32 undef, float %1182, float %1184, float undef, float %1186, float %1188, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = and i32 %1087, 1024
  %1194 = icmp ne i32 %1193, 0
  %1195 = fcmp fast ogt float %1192, 0x3FE0101020000000
  %1196 = uitofp i1 %1195 to float
  %1197 = select i1 %1194, float %1196, float %1192
  %1198 = and i32 %1087, 8192
  %1199 = icmp ne i32 %1198, 0
  %1200 = select i1 %1199, float %1160, float 1.000000e+00
  %1201 = fmul fast float %1095, 2.000000e+00
  %1202 = fadd fast float %1201, -1.000000e+00
  %1203 = call float @dx.op.unary.f32(i32 6, float %1202)  ; FAbs(value)
  %1204 = fmul fast float %1203, %1084
  %1205 = fsub fast float %1204, %1084
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = fmul fast float %1102, 2.000000e+00
  %1208 = fadd fast float %1207, -1.000000e+00
  %1209 = call float @dx.op.unary.f32(i32 6, float %1208)  ; FAbs(value)
  %1210 = fmul fast float %1209, %1085
  %1211 = fsub fast float %1210, %1085
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1213 = fmul fast float %1114, %1047
  %1214 = fsub fast float %1213, %1047
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1216 = fmul fast float %1174, %1200
  %1217 = fmul fast float %1216, %1171
  %1218 = fmul fast float %1217, %1206
  %1219 = fmul fast float %1218, %1197
  %1220 = fmul fast float %1219, %1212
  %1221 = fmul fast float %1220, %1215
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1225 = fsub fast float %1131, %1224
  %1226 = fmul fast float %1225, %1223
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1228 = fmul fast float %1221, %1048
  %1229 = fadd fast float %1221, %1048
  %1230 = fmul fast float %1229, %1057
  %1231 = fsub fast float %1230, %1057
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1233 = and i32 %1087, 128
  %1234 = icmp ne i32 %1233, 0
  %1235 = select i1 %1234, float %1232, float %1228
  %1236 = fmul fast float %1235, %1227
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = fcmp fast ugt float %1236, %1238
  br i1 %1239, label %1240, label %1136

; <label>:1240                                    ; preds = %1159
  %1241 = select i1 %1199, float %1236, float 0.000000e+00
  %1242 = fadd fast float %1241, %1008
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  br i1 %1199, label %1136, label %1244

; <label>:1244                                    ; preds = %1240
  %1245 = and i32 %1087, 4
  %1246 = and i32 %1087, 8
  %1247 = add i32 %1043, 0
  %1248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1247, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1250 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1248, %dx.types.Handle %1249, float %1177, float %1180, float undef, float undef, i32 0, i32 0, i32 undef, float %1182, float %1184, float undef, float %1186, float %1188, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1255 = bitcast float %1069 to i32
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = lshr i32 %1255, 8
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1254, %1257
  %1262 = fadd fast float %1261, %1260
  %1263 = fmul fast float %1262, 0x3F70101000000000
  %1264 = add i32 %1044, 0
  %1265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1264, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1266 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1265, %dx.types.Handle %1249, float %1177, float %1180, float undef, float undef, i32 0, i32 0, i32 undef, float %1182, float %1184, float undef, float %1186, float %1188, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1266, 2
  %1270 = extractvalue %dx.types.ResRet.f32 %1266, 3
  %1271 = bitcast float %1063 to i32
  %1272 = and i32 %1271, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = lshr i32 %1271, 8
  %1275 = and i32 %1274, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = lshr i32 %1271, 16
  %1278 = and i32 %1277, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1279, 0x3F70101000000000
  %1281 = fmul fast float %1267, %1273
  %1282 = fadd fast float %1281, %1276
  %1283 = fmul fast float %1282, 0x3F70101000000000
  %1284 = fadd fast float %1268, -5.000000e-01
  %1285 = fadd fast float %1270, -5.000000e-01
  %1286 = fmul fast float %1284, %1280
  %1287 = fmul fast float %1285, %1280
  %1288 = fadd fast float %1286, 5.000000e-01
  %1289 = fadd fast float %1287, 5.000000e-01
  %1290 = fmul fast float %1251, %1072
  %1291 = fmul fast float %1252, %1073
  %1292 = fmul fast float %1253, %1074
  %1293 = fmul fast float %1288, 2.000000e+00
  %1294 = fadd fast float %1293, -1.000000e+00
  %1295 = fmul fast float %1289, 2.000000e+00
  %1296 = fadd fast float %1295, -1.000000e+00
  %1297 = fadd fast float %1294, %1296
  %1298 = fmul fast float %1297, 5.000000e-01
  %1299 = fsub fast float %1294, %1296
  %1300 = fmul fast float %1299, 5.000000e-01
  %1301 = call float @dx.op.unary.f32(i32 6, float %1298)  ; FAbs(value)
  %1302 = fsub fast float 1.000000e+00, %1301
  %1303 = call float @dx.op.unary.f32(i32 6, float %1300)  ; FAbs(value)
  %1304 = fsub fast float %1302, %1303
  %1305 = call float @dx.op.dot3.f32(i32 55, float %1298, float %1300, float %1304, float %1298, float %1300, float %1304)  ; Dot3(ax,ay,az,bx,by,bz)
  %1306 = call float @dx.op.unary.f32(i32 25, float %1305)  ; Rsqrt(value)
  %1307 = fmul fast float %1298, %1306
  %1308 = fmul fast float %1300, %1306
  %1309 = fmul fast float %1306, %1304
  %1310 = fmul fast float %1309, %1037
  %1311 = fmul fast float %1309, %1038
  %1312 = fmul fast float %1309, %1039
  %1313 = fmul fast float %1307, %1060
  %1314 = fmul fast float %1307, %1061
  %1315 = fmul fast float %1307, %1062
  %1316 = fadd fast float %1313, %1310
  %1317 = fadd fast float %1314, %1311
  %1318 = fadd fast float %1315, %1312
  %1319 = fmul fast float %1308, %1066
  %1320 = fmul fast float %1308, %1067
  %1321 = fmul fast float %1308, %1068
  %1322 = fadd fast float %1316, %1319
  %1323 = fadd fast float %1317, %1320
  %1324 = fadd fast float %1318, %1321
  %1325 = call float @dx.op.dot3.f32(i32 55, float %1322, float %1323, float %1324, float %1322, float %1323, float %1324)  ; Dot3(ax,ay,az,bx,by,bz)
  %1326 = call float @dx.op.unary.f32(i32 25, float %1325)  ; Rsqrt(value)
  %1327 = fmul fast float %1322, %1326
  %1328 = fmul fast float %1323, %1326
  %1329 = fmul fast float %1324, %1326
  %1330 = icmp ne i32 %1246, 0
  %1331 = select i1 %1330, float 1.000000e+00, float 0.000000e+00
  %1332 = fmul fast float %1236, %1331
  %1333 = and i32 %1087, 1
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1335, label %1339

; <label>:1335                                    ; preds = %1244
  %1336 = fsub fast float %1327, %1019
  %1337 = fsub fast float %1328, %1020
  %1338 = fsub fast float %1329, %1021
  br label %1339

; <label>:1339                                    ; preds = %1335, %1244
  %1340 = phi float [ %1336, %1335 ], [ %1327, %1244 ]
  %1341 = phi float [ %1337, %1335 ], [ %1328, %1244 ]
  %1342 = phi float [ %1338, %1335 ], [ %1329, %1244 ]
  %1343 = fmul float %1342, %1332
  %1344 = fmul float %1341, %1332
  %1345 = fmul float %1340, %1332
  %1346 = fadd fast float %1345, %1019
  %1347 = fadd fast float %1344, %1020
  %1348 = fadd fast float %1343, %1021
  %1349 = icmp ne i32 %1245, 0
  %1350 = select i1 %1349, float 1.000000e+00, float 0.000000e+00
  %1351 = fmul fast float %1236, %1350
  %1352 = fsub fast float %1290, %1026
  %1353 = fsub fast float %1291, %1027
  %1354 = fsub fast float %1292, %1028
  %1355 = fmul fast float %1352, %1351
  %1356 = fmul fast float %1353, %1351
  %1357 = fmul fast float %1354, %1351
  %1358 = fadd fast float %1355, %1026
  %1359 = fadd fast float %1356, %1027
  %1360 = fadd fast float %1357, %1028
  %1361 = fsub fast float %1263, %1025
  %1362 = fmul fast float %1361, %1351
  %1363 = fadd fast float %1362, %1025
  %1364 = fmul fast float %1351, %1015
  %1365 = fsub fast float %1015, %1364
  %1366 = fmul fast float %1351, %1014
  %1367 = fsub fast float %1014, %1366
  %1368 = bitcast float %1081 to i32
  %1369 = fadd fast float %1236, %1024
  %1370 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1371 = fsub fast float %1283, %1023
  %1372 = fmul fast float %1371, %1332
  %1373 = fadd fast float %1372, %1023
  %1374 = fsub fast float %1269, %1022
  %1375 = fmul fast float %1374, %1332
  %1376 = fadd fast float %1375, %1022
  br i1 %1334, label %1385, label %1377

; <label>:1377                                    ; preds = %1339
  %1378 = and i32 %1087, 32768
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1395, label %1380

; <label>:1380                                    ; preds = %1377
  %1381 = fmul fast float %1332, 1.270000e+02
  %1382 = fadd fast float %1381, %1011
  %1383 = fadd fast float %1381, %1012
  %1384 = fadd fast float %1381, %1013
  br label %1395

; <label>:1385                                    ; preds = %1339
  %1386 = fsub fast float 1.270000e+02, %1011
  %1387 = fsub fast float 1.270000e+02, %1012
  %1388 = fsub fast float 1.270000e+02, %1013
  %1389 = fmul fast float %1332, %1386
  %1390 = fmul fast float %1332, %1387
  %1391 = fmul fast float %1332, %1388
  %1392 = fadd fast float %1389, %1011
  %1393 = fadd fast float %1390, %1012
  %1394 = fadd fast float %1391, %1013
  br label %1395

; <label>:1395                                    ; preds = %1385, %1380, %1377
  %1396 = phi float [ %1382, %1380 ], [ %1011, %1377 ], [ %1392, %1385 ]
  %1397 = phi float [ %1383, %1380 ], [ %1012, %1377 ], [ %1393, %1385 ]
  %1398 = phi float [ %1384, %1380 ], [ %1013, %1377 ], [ %1394, %1385 ]
  %1399 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1291, float %1292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.CBufRet.f32 %1400, 1
  %1403 = fmul fast float %1402, %1399
  %1404 = fadd fast float %1403, %1401
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1406 = bitcast float %1075 to i32
  %1407 = and i32 %1406, 65535
  %1408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1407)  ; LegacyF16ToF32(value)
  %1409 = lshr i32 %1406, 16
  %1410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1409)  ; LegacyF16ToF32(value)
  %1411 = fcmp fast oge float %1408, 0.000000e+00
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 0
  %1414 = select i1 %1411, float %1408, float %1413
  %1415 = fadd fast float %1414, %1410
  %1416 = fsub fast float %1405, %1010
  %1417 = fmul fast float %1416, %1236
  %1418 = fadd fast float %1417, %1010
  %1419 = fmul fast float %1415, %1236
  %1420 = call float @dx.op.binary.f32(i32 35, float %1009, float %1419)  ; FMax(a,b)
  %1421 = and i32 %1087, 16
  %1422 = icmp eq i32 %1421, 0
  br i1 %1422, label %1444, label %1423

; <label>:1423                                    ; preds = %1395
  %1424 = add i32 %1078, 0
  %1425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1424, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1426 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1425, %dx.types.Handle %1249, float %1177, float %1180, float undef, float undef, i32 0, i32 0, i32 undef, float %1182, float %1184, float undef, float %1186, float %1188, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.ResRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.ResRet.f32 %1426, 2
  %1430 = and i32 %1368, 65535
  %1431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1430)  ; LegacyF16ToF32(value)
  %1432 = fmul fast float %1427, %1072
  %1433 = fmul fast float %1428, %1073
  %1434 = fmul fast float %1429, %1074
  %1435 = and i32 %1087, 16384
  %1436 = icmp ne i32 %1435, 0
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1439 = select i1 %1436, float %1438, float 1.000000e+00
  %1440 = fmul fast float %1439, %1431
  %1441 = fmul fast float %1432, %1440
  %1442 = fmul fast float %1433, %1440
  %1443 = fmul fast float %1434, %1440
  br label %1444

; <label>:1444                                    ; preds = %1423, %1395
  %1445 = phi float [ %1441, %1423 ], [ 0.000000e+00, %1395 ]
  %1446 = phi float [ %1442, %1423 ], [ 0.000000e+00, %1395 ]
  %1447 = phi float [ %1443, %1423 ], [ 0.000000e+00, %1395 ]
  %1448 = fsub fast float %1445, %1016
  %1449 = fsub fast float %1446, %1017
  %1450 = fsub fast float %1447, %1018
  %1451 = fmul fast float %1448, %1236
  %1452 = fmul fast float %1449, %1236
  %1453 = fmul fast float %1450, %1236
  %1454 = fadd fast float %1451, %1016
  %1455 = fadd fast float %1452, %1017
  %1456 = fadd fast float %1453, %1018
  br label %1136

; <label>:1457                                    ; preds = %1136
  br label %1458

; <label>:1458                                    ; preds = %1457, %906
  %1459 = phi float [ 0.000000e+00, %906 ], [ %1137, %1457 ]
  %1460 = phi float [ %925, %906 ], [ %1138, %1457 ]
  %1461 = phi float [ %923, %906 ], [ %1139, %1457 ]
  %1462 = phi float [ %912, %906 ], [ %1140, %1457 ]
  %1463 = phi float [ %913, %906 ], [ %1141, %1457 ]
  %1464 = phi float [ %914, %906 ], [ %1142, %1457 ]
  %1465 = phi float [ 0.000000e+00, %906 ], [ %1143, %1457 ]
  %1466 = phi float [ 0.000000e+00, %906 ], [ %1144, %1457 ]
  %1467 = phi float [ %915, %906 ], [ %1145, %1457 ]
  %1468 = phi float [ %916, %906 ], [ %1146, %1457 ]
  %1469 = phi float [ %917, %906 ], [ %1147, %1457 ]
  %1470 = phi float [ %951, %906 ], [ %1148, %1457 ]
  %1471 = phi float [ %952, %906 ], [ %1149, %1457 ]
  %1472 = phi float [ %953, %906 ], [ %1150, %1457 ]
  %1473 = phi float [ %921, %906 ], [ %1151, %1457 ]
  %1474 = phi float [ %920, %906 ], [ %1152, %1457 ]
  %1475 = phi float [ 0.000000e+00, %906 ], [ %1153, %1457 ]
  %1476 = phi float [ %918, %906 ], [ %1154, %1457 ]
  %1477 = phi float [ %909, %906 ], [ %1155, %1457 ]
  %1478 = phi float [ %910, %906 ], [ %1156, %1457 ]
  %1479 = phi float [ %911, %906 ], [ %1157, %1457 ]
  %1480 = call float @dx.op.dot3.f32(i32 55, float %1470, float %1471, float %1472, float %1470, float %1471, float %1472)  ; Dot3(ax,ay,az,bx,by,bz)
  %1481 = call float @dx.op.unary.f32(i32 25, float %1480)  ; Rsqrt(value)
  %1482 = fmul fast float %1481, %1470
  %1483 = fmul fast float %1481, %1471
  %1484 = fmul fast float %1481, %1472
  %1485 = fadd fast float %1475, %919
  %1486 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1487 = call float @dx.op.dot3.f32(i32 55, float %1482, float %1483, float %1484, float %1482, float %1483, float %1484)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = call float @dx.op.unary.f32(i32 25, float %1487)  ; Rsqrt(value)
  %1489 = fmul fast float %1488, %1482
  %1490 = fmul fast float %1488, %1483
  %1491 = fmul fast float %1488, %1484
  %1492 = fadd fast float %1476, 0xBFB99999A0000000
  %1493 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  %1494 = fmul fast float %1493, 0x3FF1C71C80000000
  %1495 = call float @dx.op.binary.f32(i32 36, float %1476, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1496 = fsub fast float 1.000000e+00, %1494
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1498 = fmul fast float %1497, %1477
  %1499 = fmul fast float %1497, %1478
  %1500 = fmul fast float %1497, %1479
  %1501 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1502 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1503 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1504 = fmul fast float %1494, %1477
  %1505 = fmul fast float %1494, %1478
  %1506 = fmul fast float %1494, %1479
  %1507 = fadd fast float %1504, %1495
  %1508 = fadd fast float %1505, %1495
  %1509 = fadd fast float %1506, %1495
  %1510 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1511 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1512 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  %1513 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  %1514 = call float @dx.op.binary.f32(i32 36, float %1462, float 1.270000e+02)  ; FMin(a,b)
  %1515 = call float @dx.op.binary.f32(i32 36, float %1463, float 1.270000e+02)  ; FMin(a,b)
  %1516 = call float @dx.op.binary.f32(i32 36, float %1464, float 1.270000e+02)  ; FMin(a,b)
  %1517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1518 = extractvalue %dx.types.CBufRet.i32 %1517, 3
  %1519 = and i32 %1518, 8
  %1520 = icmp ne i32 %1519, 0
  %1521 = call float @dx.op.binary.f32(i32 35, float %1501, float %1477)  ; FMax(a,b)
  %1522 = call float @dx.op.binary.f32(i32 35, float %1502, float %1477)  ; FMax(a,b)
  %1523 = call float @dx.op.binary.f32(i32 35, float %1503, float %1477)  ; FMax(a,b)
  %1524 = call float @dx.op.dot3.f32(i32 55, float %1501, float %1502, float %1503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1525 = select i1 %219, float %1477, float %1501
  %1526 = select i1 %219, float %1524, float %1502
  %1527 = select i1 %219, float 1.000000e+00, float %1503
  %1528 = select i1 %1520, float %1521, float %1525
  %1529 = select i1 %1520, float %1522, float %1526
  %1530 = select i1 %1520, float %1523, float %1527
  %1531 = and i32 %195, 3
  %1532 = select i1 %189, i32 %1531, i32 0
  %1533 = icmp eq i32 %1532, 1
  br i1 %1533, label %1534, label %1610

; <label>:1534                                    ; preds = %1458
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 0
  %1537 = extractvalue %dx.types.CBufRet.f32 %1535, 1
  %1538 = fadd fast float %1536, %129
  %1539 = fadd fast float %1537, %130
  %1540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.f32 %1540, 0
  %1542 = extractvalue %dx.types.CBufRet.f32 %1540, 1
  %1543 = fsub fast float %1538, %1541
  %1544 = fsub fast float %1539, %1542
  %1545 = fmul fast float %1543, %1543
  %1546 = fmul fast float %1544, %1544
  %1547 = fadd fast float %1545, %1546
  %1548 = call float @dx.op.unary.f32(i32 24, float %1547)  ; Sqrt(value)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1540, 2
  %1550 = fcmp fast olt float %1548, %1549
  br i1 %1550, label %1551, label %1604

; <label>:1551                                    ; preds = %1534
  %1552 = extractvalue %dx.types.CBufRet.f32 %1535, 2
  %1553 = fadd fast float %1552, %131
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 0
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 0
  %1560 = extractvalue %dx.types.CBufRet.f32 %1554, 1
  %1561 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1562 = extractvalue %dx.types.CBufRet.f32 %1558, 1
  %1563 = extractvalue %dx.types.CBufRet.f32 %1554, 3
  %1564 = extractvalue %dx.types.CBufRet.f32 %1556, 3
  %1565 = extractvalue %dx.types.CBufRet.f32 %1558, 3
  %1566 = fadd fast float %1563, %1538
  %1567 = fadd fast float %1564, %1539
  %1568 = fadd fast float %1553, %1565
  %1569 = fmul fast float %1566, %1555
  %1570 = call float @dx.op.tertiary.f32(i32 46, float %1567, float %1557, float %1569)  ; FMad(a,b,c)
  %1571 = call float @dx.op.tertiary.f32(i32 46, float %1568, float %1559, float %1570)  ; FMad(a,b,c)
  %1572 = fmul fast float %1566, %1560
  %1573 = call float @dx.op.tertiary.f32(i32 46, float %1567, float %1561, float %1572)  ; FMad(a,b,c)
  %1574 = call float @dx.op.tertiary.f32(i32 46, float %1568, float %1562, float %1573)  ; FMad(a,b,c)
  %1575 = fsub fast float %1571, %1563
  %1576 = fsub fast float %1574, %1564
  %1577 = fsub fast float %1575, %1541
  %1578 = fadd fast float %1577, %1549
  %1579 = fsub fast float %1576, %1542
  %1580 = fadd fast float %1579, %1549
  %1581 = extractvalue %dx.types.CBufRet.f32 %1540, 3
  %1582 = fmul fast float %1578, %1581
  %1583 = fmul fast float %1580, %1581
  %1584 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1585 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1586 = fsub fast float 1.000000e+00, %1584
  %1587 = fsub fast float 1.000000e+00, %1585
  %1588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %1586, float %1587, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1589 = extractvalue %dx.types.ResRet.f32 %1588, 0
  %1590 = fcmp fast ugt float %1589, 0.000000e+00
  br i1 %1590, label %1591, label %1604

; <label>:1591                                    ; preds = %1551
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 2
  %1594 = fmul fast float %1593, %1589
  %1595 = extractvalue %dx.types.CBufRet.f32 %1592, 3
  %1596 = fadd fast float %1595, %1594
  %1597 = extractvalue %dx.types.CBufRet.f32 %1558, 2
  %1598 = fadd fast float %1596, %1565
  %1599 = fmul fast float %1571, %1559
  %1600 = call float @dx.op.tertiary.f32(i32 46, float %1574, float %1562, float %1599)  ; FMad(a,b,c)
  %1601 = call float @dx.op.tertiary.f32(i32 46, float %1598, float %1597, float %1600)  ; FMad(a,b,c)
  %1602 = fsub fast float %1601, %1565
  %1603 = fsub fast float %1602, %1552
  br label %1604

; <label>:1604                                    ; preds = %1591, %1551, %1534
  %1605 = phi i1 [ true, %1591 ], [ false, %1551 ], [ false, %1534 ]
  %1606 = phi float [ %1603, %1591 ], [ -1.310720e+05, %1551 ], [ -1.310720e+05, %1534 ]
  %1607 = fsub fast float %1606, %131
  %1608 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  %1609 = select i1 %1605, float %1608, float 1.000000e+00
  br label %1610

; <label>:1610                                    ; preds = %1604, %1458
  %1611 = phi float [ %1609, %1604 ], [ 0.000000e+00, %1458 ]
  %1612 = icmp eq i32 %1532, 3
  %1613 = select i1 %1612, float 1.000000e+00, float %1611
  %1614 = call float @dx.op.binary.f32(i32 35, float %1459, float %1613)  ; FMax(a,b)
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1616 = fcmp fast une float %1615, 0.000000e+00
  %1617 = call float @dx.op.dot3.f32(i32 55, float %129, float %130, float %131, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %1618 = call float @dx.op.unary.f32(i32 25, float %1617)  ; Rsqrt(value)
  br i1 %1616, label %1626, label %1619

; <label>:1619                                    ; preds = %1610
  %1620 = fmul fast float %1618, %129
  %1621 = fmul fast float %1618, %130
  %1622 = fmul fast float %1618, %131
  %1623 = fsub fast float -0.000000e+00, %1620
  %1624 = fsub fast float -0.000000e+00, %1621
  %1625 = fsub fast float -0.000000e+00, %1622
  br label %1794

; <label>:1626                                    ; preds = %1610
  %1627 = fmul fast float %129, %1618
  %1628 = fsub fast float -0.000000e+00, %1627
  %1629 = fmul fast float %130, %1618
  %1630 = fsub fast float -0.000000e+00, %1629
  %1631 = fmul fast float %131, %1618
  %1632 = fsub fast float -0.000000e+00, %1631
  %1633 = call float @dx.op.dot3.f32(i32 55, float %1628, float %1630, float %1632, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %1634 = fmul fast float %1615, 2.500000e+00
  %1635 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1636 = fmul fast float %1615, 0x4013FFFFE0000000
  %1637 = fadd fast float %1636, 0xBFFFFFFFE0000000
  %1638 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1639 = fmul fast float %1615, 0x4004000020000000
  %1640 = fadd fast float %1639, 0xBFF8000040000000
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1642 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1643 = fmul fast float %1492, 1.000000e+01
  %1644 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1645 = fmul fast float %1644, 2.000000e+00
  %1646 = fsub fast float 3.000000e+00, %1645
  %1647 = fmul fast float %1644, %1644
  %1648 = fmul fast float %1647, %1646
  %1649 = fsub fast float 1.000000e+00, %1648
  %1650 = fsub fast float 0x3FE3333340000000, %1513
  %1651 = fmul fast float %1650, 0x400AAAAAA0000000
  %1652 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1653 = fmul fast float %1649, %1652
  %1654 = fmul fast float %1528, 0x3FEA2B8620000000
  %1655 = fmul fast float %1529, 0x3FEA2B8620000000
  %1656 = fmul fast float %1530, 0x3FEA2B8620000000
  %1657 = fadd fast float %1654, 0x3FC81DFBA0000000
  %1658 = fmul fast float %1657, %1528
  %1659 = fadd fast float %1658, 0x3F910E6020000000
  %1660 = fadd fast float %1655, 0x3FC81DFBA0000000
  %1661 = fmul fast float %1660, %1529
  %1662 = fadd fast float %1661, 0x3F910E6020000000
  %1663 = fadd fast float %1656, 0x3FC81DFBA0000000
  %1664 = fmul fast float %1663, %1530
  %1665 = fadd fast float %1664, 0x3F910E6020000000
  %1666 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1667 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1668 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1669 = fsub fast float %1666, %1528
  %1670 = fsub fast float %1667, %1529
  %1671 = fsub fast float %1668, %1530
  %1672 = fmul fast float %1669, %1642
  %1673 = fmul fast float %1672, %1653
  %1674 = fmul fast float %1670, %1642
  %1675 = fmul fast float %1674, %1653
  %1676 = fmul fast float %1671, %1642
  %1677 = fmul fast float %1676, %1653
  %1678 = fadd fast float %1673, %1528
  %1679 = fadd fast float %1675, %1529
  %1680 = fadd fast float %1677, %1530
  %1681 = fmul fast float %1473, %1473
  %1682 = fmul fast float %1681, %1681
  %1683 = fadd fast float %1638, 1.000000e+00
  %1684 = fsub fast float %1683, %1653
  %1685 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1686 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1687 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1688 = fsub fast float 1.000000e+00, %1682
  %1689 = call float @dx.op.binary.f32(i32 36, float %1685, float %1688)  ; FMin(a,b)
  %1690 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1691 = call float @dx.op.binary.f32(i32 35, float %1689, float %1690)  ; FMax(a,b)
  %1692 = fadd fast float %1687, 0xBFE4CCCCC0000000
  %1693 = fmul fast float %1692, 0x4006DB6DA0000000
  %1694 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1695 = fmul fast float %1694, 2.000000e+00
  %1696 = fsub fast float 3.000000e+00, %1695
  %1697 = bitcast float %1510 to i32
  %1698 = ashr i32 %1697, 1
  %1699 = add nsw i32 %1698, 532487669
  %1700 = bitcast i32 %1699 to float
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = bitcast float %1701 to i32
  %1703 = sub nsw i32 2129859010, %1702
  %1704 = bitcast i32 %1703 to float
  %1705 = fmul fast float %1704, 2.000000e+00
  %1706 = bitcast float %1511 to i32
  %1707 = ashr i32 %1706, 1
  %1708 = add nsw i32 %1707, 532487669
  %1709 = bitcast i32 %1708 to float
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = bitcast float %1710 to i32
  %1712 = sub nsw i32 2129859010, %1711
  %1713 = bitcast i32 %1712 to float
  %1714 = fmul fast float %1713, 2.000000e+00
  %1715 = bitcast float %1512 to i32
  %1716 = ashr i32 %1715, 1
  %1717 = add nsw i32 %1716, 532487669
  %1718 = bitcast i32 %1717 to float
  %1719 = fsub fast float 1.000000e+00, %1718
  %1720 = bitcast float %1719 to i32
  %1721 = sub nsw i32 2129859010, %1720
  %1722 = bitcast i32 %1721 to float
  %1723 = fmul fast float %1722, 2.000000e+00
  %1724 = fsub fast float 0x4002A9FBE0000000, %1705
  %1725 = fadd fast float %1705, 0x3FD54FDF00000000
  %1726 = bitcast float %1725 to i32
  %1727 = sub nsw i32 2129859010, %1726
  %1728 = bitcast i32 %1727 to float
  %1729 = fmul fast float %1728, %1724
  %1730 = fmul fast float %1729, %1729
  %1731 = fsub fast float 0x4002A9FBE0000000, %1714
  %1732 = fadd fast float %1714, 0x3FD54FDF00000000
  %1733 = bitcast float %1732 to i32
  %1734 = sub nsw i32 2129859010, %1733
  %1735 = bitcast i32 %1734 to float
  %1736 = fmul fast float %1735, %1731
  %1737 = fmul fast float %1736, %1736
  %1738 = fsub fast float 0x4002A9FBE0000000, %1723
  %1739 = fadd fast float %1723, 0x3FD54FDF00000000
  %1740 = bitcast float %1739 to i32
  %1741 = sub nsw i32 2129859010, %1740
  %1742 = bitcast i32 %1741 to float
  %1743 = fmul fast float %1742, %1738
  %1744 = fmul fast float %1743, %1743
  %1745 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1730)  ; FMax(a,b)
  %1746 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1737)  ; FMax(a,b)
  %1747 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1744)  ; FMax(a,b)
  %1748 = fsub fast float 1.000000e+00, %1633
  %1749 = fadd fast float %1748, %1649
  %1750 = call float @dx.op.unary.f32(i32 7, float %1749)  ; Saturate(value)
  %1751 = fsub fast float 1.000000e+00, %1613
  %1752 = fmul fast float %1691, %1751
  %1753 = fmul fast float %1694, %1694
  %1754 = fmul fast float %1753, %1752
  %1755 = fmul fast float %1754, %1696
  %1756 = fmul fast float %1751, 0xBFE99999A0000000
  %1757 = fmul fast float %1756, %1642
  %1758 = fmul fast float %1757, %1653
  %1759 = fadd fast float %1758, 1.000000e+00
  %1760 = fadd fast float %1513, -1.000000e+00
  %1761 = fmul fast float %1759, %1760
  %1762 = fadd fast float %1761, 1.000000e+00
  %1763 = fsub fast float %1745, %1510
  %1764 = fsub fast float %1746, %1511
  %1765 = fsub fast float %1747, %1512
  %1766 = fmul fast float %1755, %1763
  %1767 = fmul fast float %1755, %1764
  %1768 = fmul fast float %1755, %1765
  %1769 = fadd fast float %1766, %1510
  %1770 = fadd fast float %1767, %1511
  %1771 = fadd fast float %1768, %1512
  %1772 = fsub fast float %59, %1489
  %1773 = fsub fast float %60, %1490
  %1774 = fsub fast float %61, %1491
  %1775 = fmul fast float %1755, %1772
  %1776 = fmul fast float %1755, %1773
  %1777 = fmul fast float %1755, %1774
  %1778 = fadd fast float %1775, %1489
  %1779 = fadd fast float %1776, %1490
  %1780 = fadd fast float %1777, %1491
  %1781 = fmul fast float %1755, %1750
  %1782 = call float @dx.op.unary.f32(i32 7, float %1762)  ; Saturate(value)
  %1783 = fsub fast float 1.000000e+00, %1782
  %1784 = fmul fast float %1781, %1783
  %1785 = fadd fast float %1784, %1782
  %1786 = fsub fast float 1.000000e+00, %1473
  %1787 = fmul fast float %1755, %1786
  %1788 = fadd fast float %1787, %1473
  %1789 = call float @dx.op.dot3.f32(i32 55, float %1778, float %1779, float %1780, float %1778, float %1779, float %1780)  ; Dot3(ax,ay,az,bx,by,bz)
  %1790 = call float @dx.op.unary.f32(i32 25, float %1789)  ; Rsqrt(value)
  %1791 = fmul fast float %1778, %1790
  %1792 = fmul fast float %1779, %1790
  %1793 = fmul fast float %1780, %1790
  br label %1794

; <label>:1794                                    ; preds = %1626, %1619
  %1795 = phi float [ %1625, %1619 ], [ %1632, %1626 ]
  %1796 = phi float [ %1624, %1619 ], [ %1630, %1626 ]
  %1797 = phi float [ %1623, %1619 ], [ %1628, %1626 ]
  %1798 = phi float [ %1622, %1619 ], [ %1631, %1626 ]
  %1799 = phi float [ %1621, %1619 ], [ %1629, %1626 ]
  %1800 = phi float [ %1620, %1619 ], [ %1627, %1626 ]
  %1801 = phi float [ %1489, %1619 ], [ %1791, %1626 ]
  %1802 = phi float [ %1490, %1619 ], [ %1792, %1626 ]
  %1803 = phi float [ %1491, %1619 ], [ %1793, %1626 ]
  %1804 = phi float [ %1510, %1619 ], [ %1769, %1626 ]
  %1805 = phi float [ %1511, %1619 ], [ %1770, %1626 ]
  %1806 = phi float [ %1512, %1619 ], [ %1771, %1626 ]
  %1807 = phi float [ %1528, %1619 ], [ %1678, %1626 ]
  %1808 = phi float [ %1529, %1619 ], [ %1679, %1626 ]
  %1809 = phi float [ %1530, %1619 ], [ %1680, %1626 ]
  %1810 = phi float [ %1513, %1619 ], [ %1785, %1626 ]
  %1811 = phi float [ %1473, %1619 ], [ %1788, %1626 ]
  %1812 = select i1 %219, float 0.000000e+00, float %1806
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1801, float %1802, float %1803, float %1797, float %1796, float %1795)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1800, float %1799, float %1798, float %1801, float %1802, float %1803)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = fmul fast float %1815, 2.000000e+00
  %1817 = fmul fast float %1816, %1801
  %1818 = fmul fast float %1816, %1802
  %1819 = fmul fast float %1816, %1803
  %1820 = fsub fast float %1800, %1817
  %1821 = fsub fast float %1799, %1818
  %1822 = fsub fast float %1798, %1819
  %1823 = call float @dx.op.binary.f32(i32 36, float %1811, float 1.000000e+00)  ; FMin(a,b)
  %1824 = fsub fast float 1.000000e+00, %1823
  %1825 = bitcast float %1824 to i32
  %1826 = ashr i32 %1825, 1
  %1827 = add nsw i32 %1826, 532487669
  %1828 = bitcast i32 %1827 to float
  %1829 = fsub fast float 1.000000e+00, %1810
  %1830 = call float @dx.op.binary.f32(i32 35, float %1829, float 0x3F847AE140000000)  ; FMax(a,b)
  %1831 = fmul fast float %1830, %1830
  %1832 = fmul fast float %1831, %1831
  %1833 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  %1834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %48, float %1828, float %1832, float %1833, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1835 = extractvalue %dx.types.ResRet.f32 %1834, 0
  %1836 = fsub fast float 1.000000e+00, %1811
  %1837 = bitcast float %1836 to i32
  %1838 = sub nsw i32 2129859010, %1837
  %1839 = bitcast i32 %1838 to float
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1843 = fadd fast float %1841, %129
  %1844 = fadd fast float %1842, %130
  %1845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.i32 %1845, 0
  %1847 = icmp eq i32 %1846, 1
  br i1 %1847, label %1848, label %1883

; <label>:1848                                    ; preds = %1794
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.CBufRet.f32 %1849, 1
  %1852 = fsub fast float %1843, %1850
  %1853 = fsub fast float %1844, %1851
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1856 = extractvalue %dx.types.CBufRet.f32 %1854, 1
  %1857 = fmul fast float %1852, %1855
  %1858 = fmul fast float %1853, %1856
  %1859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %48, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1860 = extractvalue %dx.types.ResRet.f32 %1859, 0
  %1861 = fcmp fast ogt float %1860, 0.000000e+00
  %1862 = extractvalue %dx.types.CBufRet.i32 %1845, 3
  %1863 = icmp ne i32 %1862, 0
  %1864 = and i1 %1861, %1863
  br i1 %1864, label %1865, label %1883, !dx.controlflow.hints !87

; <label>:1865                                    ; preds = %1848
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1869 = fsub fast float %1843, %1867
  %1870 = fsub fast float %1844, %1868
  %1871 = fmul fast float %1869, %1869
  %1872 = fmul fast float %1870, %1870
  %1873 = fadd fast float %1871, %1872
  %1874 = uitofp i32 %1862 to float
  %1875 = fmul fast float %1874, %1874
  %1876 = fcmp fast ogt float %1873, %1875
  br i1 %1876, label %1883, label %1877

; <label>:1877                                    ; preds = %1865
  %1878 = call float @dx.op.unary.f32(i32 24, float %1873)  ; Sqrt(value)
  %1879 = fsub fast float %1874, %1878
  %1880 = fmul fast float %1879, 0x3F75555560000000
  %1881 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1882 = call float @dx.op.binary.f32(i32 36, float %1881, float %1860)  ; FMin(a,b)
  br label %1883

; <label>:1883                                    ; preds = %1877, %1865, %1848, %1794
  %1884 = phi float [ 1.000000e+00, %1794 ], [ %1882, %1877 ], [ %1860, %1848 ], [ 0.000000e+00, %1865 ]
  %1885 = fcmp fast ogt float %1884, 0.000000e+00
  br i1 %1885, label %1886, label %1985, !dx.controlflow.hints !88

; <label>:1886                                    ; preds = %1883
  %1887 = fadd fast float %160, 5.000000e-01
  %1888 = call float @dx.op.unary.f32(i32 27, float %1887)  ; Round_ni(value)
  %1889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %48, float %158, float %159, float %1888, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1890 = extractvalue %dx.types.ResRet.f32 %1889, 0
  %1891 = extractvalue %dx.types.ResRet.f32 %1889, 1
  %1892 = extractvalue %dx.types.ResRet.f32 %1889, 2
  %1893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.f32 %1893, 3
  %1895 = fmul fast float %1894, %1890
  %1896 = fmul fast float %1894, %1891
  %1897 = fmul fast float %1894, %1892
  %1898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %48, float %158, float %159, float %1888, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1899 = extractvalue %dx.types.ResRet.f32 %1898, 0
  %1900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %158, float %159, float %1888, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.ResRet.f32 %1900, 1
  %1903 = fmul fast float %1901, 2.000000e+00
  %1904 = fmul fast float %1902, 2.000000e+00
  %1905 = fadd fast float %1903, -1.000000e+00
  %1906 = fadd fast float %1904, -1.000000e+00
  %1907 = fadd fast float %1905, %1906
  %1908 = fmul fast float %1907, 5.000000e-01
  %1909 = fsub fast float %1905, %1906
  %1910 = fmul fast float %1909, 5.000000e-01
  %1911 = call float @dx.op.unary.f32(i32 6, float %1908)  ; FAbs(value)
  %1912 = fsub fast float 1.000000e+00, %1911
  %1913 = call float @dx.op.unary.f32(i32 6, float %1910)  ; FAbs(value)
  %1914 = fsub fast float %1912, %1913
  %1915 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1914)  ; FMax(a,b)
  %1916 = call float @dx.op.dot3.f32(i32 55, float %1908, float %1910, float %1915, float %1908, float %1910, float %1915)  ; Dot3(ax,ay,az,bx,by,bz)
  %1917 = bitcast float %1916 to i32
  %1918 = ashr i32 %1917, 1
  %1919 = sub nsw i32 1597250115, %1918
  %1920 = bitcast i32 %1919 to float
  %1921 = fmul fast float %1920, %1908
  %1922 = fmul fast float %1920, %1910
  %1923 = fmul fast float %1920, %1915
  %1924 = fsub fast float 1.000000e+00, %1899
  %1925 = fdiv fast float %1924, %1923
  %1926 = fmul fast float %1923, %59
  %1927 = fmul fast float %1923, %60
  %1928 = fmul fast float %1923, %61
  %1929 = fmul fast float %1921, %55
  %1930 = fmul fast float %1921, %56
  %1931 = fmul fast float %1921, %57
  %1932 = fadd fast float %1926, %1929
  %1933 = fadd fast float %1927, %1930
  %1934 = fadd fast float %1928, %1931
  %1935 = fmul fast float %1922, %93
  %1936 = fmul fast float %1922, %94
  %1937 = fmul fast float %1922, %95
  %1938 = fadd fast float %1932, %1935
  %1939 = fadd fast float %1933, %1936
  %1940 = fadd fast float %1934, %1937
  %1941 = call float @dx.op.dot3.f32(i32 55, float %1938, float %1939, float %1940, float %1938, float %1939, float %1940)  ; Dot3(ax,ay,az,bx,by,bz)
  %1942 = call float @dx.op.unary.f32(i32 25, float %1941)  ; Rsqrt(value)
  %1943 = fmul fast float %1938, %1942
  %1944 = fmul fast float %1939, %1942
  %1945 = fmul fast float %1940, %1942
  %1946 = call float @dx.op.dot3.f32(i32 55, float %1801, float %1802, float %1803, float %1801, float %1802, float %1803)  ; Dot3(ax,ay,az,bx,by,bz)
  %1947 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1948 = fmul fast float %1947, 5.000000e-01
  %1949 = fadd fast float %1948, 5.000000e-01
  %1950 = fmul fast float %1949, %1899
  %1951 = call float @dx.op.dot3.f32(i32 55, float %1801, float %1802, float %1803, float %1943, float %1944, float %1945)  ; Dot3(ax,ay,az,bx,by,bz)
  %1952 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  %1953 = fmul fast float %1952, %1925
  %1954 = fadd fast float %1950, %1953
  %1955 = fsub fast float 5.000000e-01, %1948
  %1956 = fmul fast float %1955, %1807
  %1957 = fmul fast float %1955, %1808
  %1958 = fmul fast float %1955, %1809
  %1959 = fadd fast float %1954, %1956
  %1960 = fmul fast float %1959, %1895
  %1961 = fadd fast float %1954, %1957
  %1962 = fmul fast float %1961, %1896
  %1963 = fadd fast float %1954, %1958
  %1964 = fmul fast float %1963, %1897
  %1965 = call float @dx.op.dot3.f32(i32 55, float %1820, float %1821, float %1822, float %1801, float %1802, float %1803)  ; Dot3(ax,ay,az,bx,by,bz)
  %1966 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1967 = fmul fast float %1966, 5.000000e-01
  %1968 = fadd fast float %1967, 5.000000e-01
  %1969 = fmul fast float %1968, %1899
  %1970 = call float @dx.op.dot3.f32(i32 55, float %1820, float %1821, float %1822, float %1943, float %1944, float %1945)  ; Dot3(ax,ay,az,bx,by,bz)
  %1971 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  %1972 = fmul fast float %1971, %1925
  %1973 = fadd fast float %1969, %1972
  %1974 = fsub fast float 5.000000e-01, %1967
  %1975 = fmul fast float %1974, %1807
  %1976 = fmul fast float %1974, %1808
  %1977 = fmul fast float %1974, %1809
  %1978 = fadd fast float %1973, %1975
  %1979 = fmul fast float %1978, %1895
  %1980 = fadd fast float %1973, %1976
  %1981 = fmul fast float %1980, %1896
  %1982 = fadd fast float %1973, %1977
  %1983 = fmul fast float %1982, %1897
  %1984 = call float @dx.op.dot3.f32(i32 55, float %1895, float %1896, float %1897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1985

; <label>:1985                                    ; preds = %1886, %1883
  %1986 = phi float [ %1984, %1886 ], [ 0.000000e+00, %1883 ]
  %1987 = phi float [ %1979, %1886 ], [ 0.000000e+00, %1883 ]
  %1988 = phi float [ %1981, %1886 ], [ 0.000000e+00, %1883 ]
  %1989 = phi float [ %1983, %1886 ], [ 0.000000e+00, %1883 ]
  %1990 = phi float [ %1960, %1886 ], [ 0.000000e+00, %1883 ]
  %1991 = phi float [ %1962, %1886 ], [ 0.000000e+00, %1883 ]
  %1992 = phi float [ %1964, %1886 ], [ 0.000000e+00, %1883 ]
  %1993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.f32 %1993, 0
  %1995 = fcmp fast ogt float %1994, 0.000000e+00
  %1996 = and i1 %1885, %1995
  br i1 %1996, label %1997, label %2201, !dx.controlflow.hints !89

; <label>:1997                                    ; preds = %1985
  %1998 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1999 = fadd fast float %1998, %131
  %2000 = fmul fast float %1801, 3.200000e+01
  %2001 = fmul fast float %1802, 3.200000e+01
  %2002 = fadd fast float %1843, %2000
  %2003 = fadd fast float %1844, %2001
  %2004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.f32 %2004, 0
  %2006 = extractvalue %dx.types.CBufRet.f32 %2004, 1
  %2007 = fsub fast float %2002, %2005
  %2008 = fsub fast float %2003, %2006
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 0
  %2011 = extractvalue %dx.types.CBufRet.f32 %2009, 1
  %2012 = fmul fast float %2007, %2010
  %2013 = fmul fast float %2008, %2011
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 0
  %2016 = extractvalue %dx.types.CBufRet.f32 %2014, 1
  %2017 = fsub fast float %1843, %2015
  %2018 = fsub fast float %1844, %2016
  %2019 = fmul fast float %2017, %2017
  %2020 = fmul fast float %2018, %2018
  %2021 = fadd fast float %2019, %2020
  %2022 = call float @dx.op.unary.f32(i32 24, float %2021)  ; Sqrt(value)
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = fsub fast float %2022, %2024
  %2027 = fdiv fast float %2026, %2025
  %2028 = call float @dx.op.unary.f32(i32 7, float %2027)  ; Saturate(value)
  %2029 = fmul fast float %2028, 2.000000e+00
  %2030 = fsub fast float 3.000000e+00, %2029
  %2031 = fmul fast float %2028, %2028
  %2032 = fmul fast float %2031, %2030
  %2033 = fcmp fast oge float %2012, 0.000000e+00
  %2034 = fcmp fast ole float %2012, 1.000000e+00
  %2035 = and i1 %2034, %2033
  %2036 = fcmp fast oge float %2013, 0.000000e+00
  %2037 = and i1 %2036, %2035
  %2038 = fcmp fast ole float %2013, 1.000000e+00
  %2039 = and i1 %2038, %2037
  %2040 = fcmp fast ogt float %2032, 0.000000e+00
  %2041 = and i1 %2040, %2039
  br i1 %2041, label %2042, label %2165, !dx.controlflow.hints !90

; <label>:2042                                    ; preds = %1997
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 2
  %2045 = extractvalue %dx.types.CBufRet.f32 %2043, 3
  %2046 = fmul fast float %2044, %2012
  %2047 = fmul fast float %2045, %2013
  %2048 = call float @dx.op.unary.f32(i32 27, float %2046)  ; Round_ni(value)
  %2049 = call float @dx.op.unary.f32(i32 27, float %2047)  ; Round_ni(value)
  %2050 = fptosi float %2048 to i32
  %2051 = fptosi float %2049 to i32
  %2052 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %38, i32 0, i32 %2050, i32 %2051, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = lshr i32 %2053, 16
  %2055 = icmp eq i32 %2054, 65535
  br i1 %2055, label %2165, label %2056

; <label>:2056                                    ; preds = %2042
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2059 = fmul fast float %2058, %2012
  %2060 = extractvalue %dx.types.CBufRet.f32 %2057, 1
  %2061 = fadd fast float %2059, %2060
  %2062 = extractvalue %dx.types.CBufRet.f32 %2057, 2
  %2063 = fmul fast float %2062, %2013
  %2064 = extractvalue %dx.types.CBufRet.f32 %2057, 3
  %2065 = fadd fast float %2063, %2064
  %2066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %48, float %2061, float %2065, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2067 = extractvalue %dx.types.ResRet.f32 %2066, 0
  %2068 = extractvalue %dx.types.ResRet.f32 %2066, 1
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 1
  %2071 = extractvalue %dx.types.CBufRet.f32 %2069, 0
  %2072 = fsub fast float %2070, %2071
  %2073 = fmul fast float %2072, %2067
  %2074 = fadd fast float %2073, %2071
  %2075 = extractvalue %dx.types.CBufRet.f32 %2069, 3
  %2076 = extractvalue %dx.types.CBufRet.f32 %2069, 2
  %2077 = fsub fast float %2075, %2076
  %2078 = fmul fast float %2077, %2068
  %2079 = fadd fast float %2078, %2076
  %2080 = fsub fast float %1999, %2074
  %2081 = fsub fast float %2079, %2074
  %2082 = fdiv fast float %2080, %2081
  %2083 = call float @dx.op.unary.f32(i32 7, float %2082)  ; Saturate(value)
  %2084 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %2085 = extractvalue %dx.types.CBufRet.f32 %2043, 0
  %2086 = extractvalue %dx.types.CBufRet.f32 %2043, 1
  %2087 = fmul fast float %2085, %2012
  %2088 = fmul fast float %2086, %2013
  %2089 = fmul fast float %2087, 1.250000e-01
  %2090 = fmul fast float %2088, 1.250000e-01
  %2091 = call float @dx.op.unary.f32(i32 27, float %2089)  ; Round_ni(value)
  %2092 = call float @dx.op.unary.f32(i32 27, float %2090)  ; Round_ni(value)
  %2093 = fmul fast float %2091, 8.000000e+00
  %2094 = fmul fast float %2092, 8.000000e+00
  %2095 = fsub fast float %2087, %2093
  %2096 = fsub fast float %2088, %2094
  %2097 = fadd fast float %2095, 5.000000e-01
  %2098 = fadd fast float %2096, 5.000000e-01
  %2099 = and i32 %2054, 255
  %2100 = lshr i32 %2053, 24
  %2101 = mul nuw nsw i32 %2099, 9
  %2102 = uitofp i32 %2101 to float
  %2103 = mul nuw nsw i32 %2100, 9
  %2104 = uitofp i32 %2103 to float
  %2105 = fadd fast float %2097, %2102
  %2106 = fadd fast float %2098, %2104
  %2107 = fdiv fast float %2105, %1994
  %2108 = fdiv fast float %2106, %2084
  %2109 = fmul fast float %2083, 4.375000e-01
  %2110 = fadd fast float %2109, 3.125000e-02
  %2111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %48, float %2107, float %2108, float %2110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2112 = extractvalue %dx.types.ResRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.ResRet.f32 %2111, 1
  %2114 = extractvalue %dx.types.ResRet.f32 %2111, 2
  %2115 = fadd fast float %2109, 5.312500e-01
  %2116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %48, float %2107, float %2108, float %2115, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2117 = extractvalue %dx.types.ResRet.f32 %2116, 0
  %2118 = extractvalue %dx.types.ResRet.f32 %2116, 1
  %2119 = extractvalue %dx.types.ResRet.f32 %2116, 2
  %2120 = fmul fast float %2117, 2.000000e+00
  %2121 = fmul fast float %2118, 2.000000e+00
  %2122 = fmul fast float %2119, 2.000000e+00
  %2123 = fadd fast float %2120, -1.000000e+00
  %2124 = fadd fast float %2121, -1.000000e+00
  %2125 = fadd fast float %2122, -1.000000e+00
  %2126 = fmul fast float %2123, %2123
  %2127 = fmul fast float %2124, %2124
  %2128 = fadd fast float %2126, %2127
  %2129 = fmul fast float %2125, %2125
  %2130 = fadd fast float %2128, %2129
  %2131 = call float @dx.op.unary.f32(i32 24, float %2130)  ; Sqrt(value)
  %2132 = fcmp fast ogt float %2131, 0.000000e+00
  br i1 %2132, label %2133, label %2137

; <label>:2133                                    ; preds = %2056
  %2134 = fdiv fast float %2123, %2131
  %2135 = fdiv fast float %2124, %2131
  %2136 = fdiv fast float %2125, %2131
  br label %2137

; <label>:2137                                    ; preds = %2133, %2056
  %2138 = phi float [ %2134, %2133 ], [ 0.000000e+00, %2056 ]
  %2139 = phi float [ %2135, %2133 ], [ 0.000000e+00, %2056 ]
  %2140 = phi float [ %2136, %2133 ], [ 0.000000e+00, %2056 ]
  %2141 = call float @dx.op.dot3.f32(i32 55, float %2138, float %2139, float %2140, float %1801, float %1802, float %1803)  ; Dot3(ax,ay,az,bx,by,bz)
  %2142 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2141)  ; FMax(a,b)
  %2143 = fmul fast float %2142, 0x400C5BF8A0000000
  %2144 = fmul fast float %2112, %2032
  %2145 = fmul fast float %2144, %2143
  %2146 = fmul fast float %2113, %2032
  %2147 = fmul fast float %2146, %2143
  %2148 = fmul fast float %2114, %2032
  %2149 = fmul fast float %2148, %2143
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 3
  %2152 = fmul fast float %2145, %2151
  %2153 = fmul fast float %2147, %2151
  %2154 = fmul fast float %2149, %2151
  %2155 = fcmp fast ogt float %1999, %2079
  br i1 %2155, label %2156, label %2165

; <label>:2156                                    ; preds = %2137
  %2157 = fmul fast float %2081, 0x3FC24924A0000000
  %2158 = fsub fast float %1999, %2079
  %2159 = fdiv fast float %2158, %2157
  %2160 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2161 = fsub fast float 1.000000e+00, %2160
  %2162 = fmul fast float %2161, %2152
  %2163 = fmul fast float %2161, %2153
  %2164 = fmul fast float %2161, %2154
  br label %2165

; <label>:2165                                    ; preds = %2156, %2137, %2042, %1997
  %2166 = phi float [ %2164, %2156 ], [ %2154, %2137 ], [ 0.000000e+00, %2042 ], [ 0.000000e+00, %1997 ]
  %2167 = phi float [ %2163, %2156 ], [ %2153, %2137 ], [ 0.000000e+00, %2042 ], [ 0.000000e+00, %1997 ]
  %2168 = phi float [ %2162, %2156 ], [ %2152, %2137 ], [ 0.000000e+00, %2042 ], [ 0.000000e+00, %1997 ]
  %2169 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2168)  ; FMax(a,b)
  %2170 = fmul fast float %2169, 0x3FD20DD760000000
  %2171 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1820, float %1821, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %2172 = fmul fast float %2171, 0x3FDF454380000000
  %2173 = fmul fast float %2171, %2171
  %2174 = fmul fast float %2173, 0x3FEE471020000000
  %2175 = fadd fast float %2174, 0xBFD42F6020000000
  %2176 = call float @dx.op.dot3.f32(i32 55, float %2169, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2172, float %2175)  ; Dot3(ax,ay,az,bx,by,bz)
  %2177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2167)  ; FMax(a,b)
  %2178 = fmul fast float %2177, 0x3FD20DD760000000
  %2179 = call float @dx.op.dot3.f32(i32 55, float %2177, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2172, float %2175)  ; Dot3(ax,ay,az,bx,by,bz)
  %2180 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2166)  ; FMax(a,b)
  %2181 = fmul fast float %2180, 0x3FD20DD760000000
  %2182 = call float @dx.op.dot3.f32(i32 55, float %2180, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2172, float %2175)  ; Dot3(ax,ay,az,bx,by,bz)
  %2183 = call float @dx.op.binary.f32(i32 35, float %2170, float 0.000000e+00)  ; FMax(a,b)
  %2184 = call float @dx.op.binary.f32(i32 35, float %2178, float 0.000000e+00)  ; FMax(a,b)
  %2185 = call float @dx.op.binary.f32(i32 35, float %2181, float 0.000000e+00)  ; FMax(a,b)
  %2186 = call float @dx.op.binary.f32(i32 35, float %2176, float 0.000000e+00)  ; FMax(a,b)
  %2187 = call float @dx.op.binary.f32(i32 35, float %2179, float 0.000000e+00)  ; FMax(a,b)
  %2188 = call float @dx.op.binary.f32(i32 35, float %2182, float 0.000000e+00)  ; FMax(a,b)
  %2189 = fmul fast float %2183, %1884
  %2190 = fmul fast float %2184, %1884
  %2191 = fmul fast float %2185, %1884
  %2192 = fadd fast float %2189, %1990
  %2193 = fadd fast float %2190, %1991
  %2194 = fadd fast float %2191, %1992
  %2195 = fmul fast float %2186, %1884
  %2196 = fmul fast float %2187, %1884
  %2197 = fmul fast float %2188, %1884
  %2198 = fadd fast float %2195, %1987
  %2199 = fadd fast float %2196, %1988
  %2200 = fadd fast float %2197, %1989
  br label %2201

; <label>:2201                                    ; preds = %2165, %1985
  %2202 = phi float [ %2198, %2165 ], [ %1987, %1985 ]
  %2203 = phi float [ %2199, %2165 ], [ %1988, %1985 ]
  %2204 = phi float [ %2200, %2165 ], [ %1989, %1985 ]
  %2205 = phi float [ %2192, %2165 ], [ %1990, %1985 ]
  %2206 = phi float [ %2193, %2165 ], [ %1991, %1985 ]
  %2207 = phi float [ %2194, %2165 ], [ %1992, %1985 ]
  %2208 = fcmp fast olt float %1884, 1.000000e+00
  br i1 %2208, label %2209, label %3032, !dx.controlflow.hints !91

; <label>:2209                                    ; preds = %2201
  %2210 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %2211 = fadd fast float %2210, %131
  %2212 = fmul fast float %1801, 3.200000e+01
  %2213 = fmul fast float %1802, 3.200000e+01
  %2214 = fadd fast float %1843, %2212
  %2215 = fadd fast float %1844, %2213
  %2216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2217 = extractvalue %dx.types.CBufRet.f32 %2216, 0
  %2218 = extractvalue %dx.types.CBufRet.f32 %2216, 1
  %2219 = fsub fast float %2214, %2217
  %2220 = fsub fast float %2215, %2218
  %2221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2222 = extractvalue %dx.types.CBufRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.CBufRet.f32 %2221, 1
  %2224 = fmul fast float %2219, %2222
  %2225 = fmul fast float %2220, %2223
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 0
  %2228 = fmul fast float %2224, %2227
  %2229 = extractvalue %dx.types.CBufRet.f32 %2226, 1
  %2230 = fadd fast float %2228, %2229
  %2231 = extractvalue %dx.types.CBufRet.f32 %2226, 2
  %2232 = fmul fast float %2231, %2225
  %2233 = extractvalue %dx.types.CBufRet.f32 %2226, 3
  %2234 = fadd fast float %2232, %2233
  %2235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %48, float %2230, float %2234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2236 = extractvalue %dx.types.ResRet.f32 %2235, 0
  %2237 = extractvalue %dx.types.ResRet.f32 %2235, 1
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 1
  %2240 = extractvalue %dx.types.CBufRet.f32 %2238, 0
  %2241 = fsub fast float %2239, %2240
  %2242 = fmul fast float %2241, %2236
  %2243 = fadd fast float %2242, %2240
  %2244 = extractvalue %dx.types.CBufRet.f32 %2238, 3
  %2245 = extractvalue %dx.types.CBufRet.f32 %2238, 2
  %2246 = fsub fast float %2244, %2245
  %2247 = fmul fast float %2246, %2237
  %2248 = fadd fast float %2247, %2245
  %2249 = fsub fast float %2211, %2243
  %2250 = fsub fast float %2248, %2243
  %2251 = fdiv fast float %2249, %2250
  %2252 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 0
  %2255 = fmul fast float %2254, %2252
  %2256 = extractvalue %dx.types.CBufRet.f32 %2253, 1
  %2257 = fadd fast float %2255, %2256
  %2258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %48, float %2230, float %2234, float %2257, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2259 = extractvalue %dx.types.ResRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.ResRet.f32 %2258, 1
  %2261 = extractvalue %dx.types.ResRet.f32 %2258, 2
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 0
  %2264 = extractvalue %dx.types.CBufRet.f32 %2262, 1
  %2265 = extractvalue %dx.types.CBufRet.f32 %2262, 2
  %2266 = fmul fast float %2263, %2259
  %2267 = fmul fast float %2264, %2260
  %2268 = fmul fast float %2265, %2261
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.CBufRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.CBufRet.f32 %2269, 2
  %2273 = fadd fast float %2266, %2270
  %2274 = fadd fast float %2267, %2271
  %2275 = fadd fast float %2268, %2272
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 0
  %2278 = fmul fast float %2277, %2224
  %2279 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2280 = fadd fast float %2278, %2279
  %2281 = extractvalue %dx.types.CBufRet.f32 %2276, 2
  %2282 = fmul fast float %2281, %2225
  %2283 = extractvalue %dx.types.CBufRet.f32 %2276, 3
  %2284 = fadd fast float %2282, %2283
  %2285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2285, 0
  %2287 = extractvalue %dx.types.CBufRet.f32 %2285, 1
  %2288 = extractvalue %dx.types.CBufRet.f32 %2285, 2
  %2289 = extractvalue %dx.types.CBufRet.f32 %2285, 3
  %2290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.CBufRet.f32 %2290, 1
  %2293 = extractvalue %dx.types.CBufRet.f32 %2290, 2
  %2294 = extractvalue %dx.types.CBufRet.f32 %2290, 3
  %2295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %2280, float %2284, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2296 = extractvalue %dx.types.ResRet.f32 %2295, 0
  %2297 = extractvalue %dx.types.ResRet.f32 %2295, 1
  %2298 = extractvalue %dx.types.ResRet.f32 %2295, 2
  %2299 = extractvalue %dx.types.ResRet.f32 %2295, 3
  %2300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %2280, float %2284, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2301 = extractvalue %dx.types.ResRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.ResRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.ResRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.ResRet.f32 %2300, 3
  %2305 = fmul fast float %2296, %2273
  %2306 = fmul fast float %2301, %2273
  %2307 = fmul fast float %2303, %2273
  %2308 = fmul fast float %2299, %2273
  %2309 = fadd fast float %2305, %2286
  %2310 = fadd fast float %2306, %2287
  %2311 = fadd fast float %2307, %2288
  %2312 = fadd fast float %2308, %2289
  %2313 = fmul fast float %2297, %2273
  %2314 = fmul fast float %2302, %2273
  %2315 = fadd fast float %2313, %2291
  %2316 = fadd fast float %2314, %2292
  %2317 = fmul fast float %2298, %2273
  %2318 = fmul fast float %2304, %2273
  %2319 = fadd fast float %2317, %2293
  %2320 = fadd fast float %2318, %2294
  %2321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %2280, float %2284, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.ResRet.f32 %2321, 1
  %2324 = extractvalue %dx.types.ResRet.f32 %2321, 2
  %2325 = extractvalue %dx.types.ResRet.f32 %2321, 3
  %2326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %2280, float %2284, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.ResRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.ResRet.f32 %2326, 2
  %2330 = extractvalue %dx.types.ResRet.f32 %2326, 3
  %2331 = fmul fast float %2322, %2274
  %2332 = fmul fast float %2327, %2274
  %2333 = fmul fast float %2329, %2274
  %2334 = fmul fast float %2325, %2274
  %2335 = fadd fast float %2309, %2331
  %2336 = fadd fast float %2310, %2332
  %2337 = fadd fast float %2311, %2333
  %2338 = fadd fast float %2312, %2334
  %2339 = fmul fast float %2323, %2274
  %2340 = fmul fast float %2328, %2274
  %2341 = fadd fast float %2315, %2339
  %2342 = fadd fast float %2316, %2340
  %2343 = fmul fast float %2324, %2274
  %2344 = fmul fast float %2330, %2274
  %2345 = fadd fast float %2319, %2343
  %2346 = fadd fast float %2320, %2344
  %2347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %2280, float %2284, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2348 = extractvalue %dx.types.ResRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.ResRet.f32 %2347, 1
  %2350 = extractvalue %dx.types.ResRet.f32 %2347, 2
  %2351 = extractvalue %dx.types.ResRet.f32 %2347, 3
  %2352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %2280, float %2284, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2353 = extractvalue %dx.types.ResRet.f32 %2352, 0
  %2354 = extractvalue %dx.types.ResRet.f32 %2352, 1
  %2355 = extractvalue %dx.types.ResRet.f32 %2352, 2
  %2356 = extractvalue %dx.types.ResRet.f32 %2352, 3
  %2357 = fmul fast float %2348, %2275
  %2358 = fmul fast float %2353, %2275
  %2359 = fmul fast float %2355, %2275
  %2360 = fmul fast float %2351, %2275
  %2361 = fadd fast float %2335, %2357
  %2362 = fadd fast float %2336, %2358
  %2363 = fadd fast float %2337, %2359
  %2364 = fadd fast float %2338, %2360
  %2365 = fmul fast float %2349, %2275
  %2366 = fmul fast float %2354, %2275
  %2367 = fadd fast float %2341, %2365
  %2368 = fadd fast float %2342, %2366
  %2369 = fmul fast float %2350, %2275
  %2370 = fmul fast float %2356, %2275
  %2371 = fadd fast float %2345, %2369
  %2372 = fadd fast float %2346, %2370
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 0
  %2375 = fsub fast float %1843, %2374
  %2376 = fsub fast float %2217, %1843
  %2377 = call float @dx.op.binary.f32(i32 35, float %2376, float %2375)  ; FMax(a,b)
  %2378 = extractvalue %dx.types.CBufRet.f32 %2373, 1
  %2379 = fsub fast float %1844, %2378
  %2380 = fsub fast float %2218, %1844
  %2381 = call float @dx.op.binary.f32(i32 35, float %2380, float %2379)  ; FMax(a,b)
  %2382 = call float @dx.op.binary.f32(i32 35, float %2377, float %2381)  ; FMax(a,b)
  %2383 = extractvalue %dx.types.CBufRet.f32 %2221, 3
  %2384 = fmul fast float %2383, %2382
  %2385 = call float @dx.op.unary.f32(i32 7, float %2384)  ; Saturate(value)
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 0
  %2388 = extractvalue %dx.types.CBufRet.f32 %2386, 1
  %2389 = extractvalue %dx.types.CBufRet.f32 %2386, 2
  %2390 = extractvalue %dx.types.CBufRet.f32 %2386, 3
  %2391 = fsub fast float %2387, %2361
  %2392 = fsub fast float %2388, %2362
  %2393 = fsub fast float %2389, %2363
  %2394 = fsub fast float %2390, %2364
  %2395 = fmul fast float %2391, %2385
  %2396 = fmul fast float %2392, %2385
  %2397 = fmul fast float %2393, %2385
  %2398 = fmul fast float %2394, %2385
  %2399 = fadd fast float %2395, %2361
  %2400 = fadd fast float %2396, %2362
  %2401 = fadd fast float %2397, %2363
  %2402 = fadd fast float %2398, %2364
  %2403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2404 = extractvalue %dx.types.CBufRet.f32 %2403, 0
  %2405 = extractvalue %dx.types.CBufRet.f32 %2403, 1
  %2406 = fsub fast float %2404, %2367
  %2407 = fsub fast float %2405, %2368
  %2408 = fmul fast float %2406, %2385
  %2409 = fmul fast float %2407, %2385
  %2410 = fadd fast float %2408, %2367
  %2411 = fadd fast float %2409, %2368
  %2412 = extractvalue %dx.types.CBufRet.f32 %2403, 2
  %2413 = extractvalue %dx.types.CBufRet.f32 %2403, 3
  %2414 = fsub fast float %2412, %2371
  %2415 = fsub fast float %2413, %2372
  %2416 = fmul fast float %2414, %2385
  %2417 = fmul fast float %2415, %2385
  %2418 = fadd fast float %2416, %2371
  %2419 = fadd fast float %2417, %2372
  %2420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2421 = extractvalue %dx.types.CBufRet.f32 %2420, 0
  %2422 = fmul fast float %2421, %2399
  %2423 = fmul fast float %2421, %2400
  %2424 = fmul fast float %2421, %2401
  %2425 = fmul fast float %2421, %2402
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = fmul fast float %2427, %2410
  %2429 = fmul fast float %2427, %2411
  %2430 = fadd fast float %2428, %2422
  %2431 = fadd fast float %2429, %2424
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 0
  %2434 = fmul fast float %2433, %2418
  %2435 = fmul fast float %2433, %2419
  %2436 = fadd fast float %2430, %2434
  %2437 = fadd fast float %2431, %2435
  %2438 = extractvalue %dx.types.CBufRet.f32 %2420, 1
  %2439 = fmul fast float %2438, %2399
  %2440 = fmul fast float %2438, %2400
  %2441 = fmul fast float %2438, %2401
  %2442 = fmul fast float %2438, %2402
  %2443 = extractvalue %dx.types.CBufRet.f32 %2426, 1
  %2444 = fmul fast float %2443, %2410
  %2445 = fmul fast float %2443, %2411
  %2446 = fadd fast float %2444, %2439
  %2447 = fadd fast float %2445, %2441
  %2448 = extractvalue %dx.types.CBufRet.f32 %2432, 1
  %2449 = fmul fast float %2448, %2418
  %2450 = fmul fast float %2448, %2419
  %2451 = fadd fast float %2446, %2449
  %2452 = fadd fast float %2447, %2450
  %2453 = extractvalue %dx.types.CBufRet.f32 %2420, 2
  %2454 = fmul fast float %2453, %2399
  %2455 = fmul fast float %2453, %2400
  %2456 = fmul fast float %2453, %2401
  %2457 = fmul fast float %2453, %2402
  %2458 = extractvalue %dx.types.CBufRet.f32 %2426, 2
  %2459 = fmul fast float %2458, %2410
  %2460 = fmul fast float %2458, %2411
  %2461 = fadd fast float %2459, %2454
  %2462 = fadd fast float %2460, %2456
  %2463 = extractvalue %dx.types.CBufRet.f32 %2432, 2
  %2464 = fmul fast float %2463, %2418
  %2465 = fmul fast float %2463, %2419
  %2466 = fadd fast float %2461, %2464
  %2467 = fadd fast float %2462, %2465
  %2468 = fmul fast float %2455, %2455
  %2469 = fmul fast float %2467, %2467
  %2470 = fmul fast float %2457, %2457
  %2471 = fadd fast float %2470, %2468
  %2472 = fadd fast float %2471, %2469
  %2473 = call float @dx.op.unary.f32(i32 24, float %2472)  ; Sqrt(value)
  %2474 = fcmp fast ugt float %2473, 0.000000e+00
  br i1 %2474, label %2475, label %2490

; <label>:2475                                    ; preds = %2209
  %2476 = fsub fast float -0.000000e+00, %2457
  %2477 = fdiv fast float %2476, %2473
  %2478 = fsub fast float -0.000000e+00, %2455
  %2479 = fdiv fast float %2478, %2473
  %2480 = fdiv fast float %2467, %2473
  %2481 = fmul fast float %2466, 0x3FE279A760000000
  %2482 = fmul fast float %2479, %2455
  %2483 = fmul fast float %2480, %2467
  %2484 = fmul fast float %2477, %2457
  %2485 = fadd fast float %2482, %2484
  %2486 = fsub fast float %2485, %2483
  %2487 = call float @dx.op.unary.f32(i32 6, float %2486)  ; FAbs(value)
  %2488 = fadd fast float %2487, 0x3DDB7CDFE0000000
  %2489 = fdiv fast float %2481, %2488
  br label %2490

; <label>:2490                                    ; preds = %2475, %2209
  %2491 = phi float [ %2489, %2475 ], [ 1.000000e+00, %2209 ]
  %2492 = fmul fast float %2440, %2440
  %2493 = fmul fast float %2452, %2452
  %2494 = fmul fast float %2442, %2442
  %2495 = fadd fast float %2494, %2492
  %2496 = fadd fast float %2495, %2493
  %2497 = call float @dx.op.unary.f32(i32 24, float %2496)  ; Sqrt(value)
  %2498 = fcmp fast ugt float %2497, 0.000000e+00
  br i1 %2498, label %2499, label %2514

; <label>:2499                                    ; preds = %2490
  %2500 = fsub fast float -0.000000e+00, %2442
  %2501 = fdiv fast float %2500, %2497
  %2502 = fsub fast float -0.000000e+00, %2440
  %2503 = fdiv fast float %2502, %2497
  %2504 = fdiv fast float %2452, %2497
  %2505 = fmul fast float %2451, 0x3FE279A760000000
  %2506 = fmul fast float %2503, %2440
  %2507 = fmul fast float %2504, %2452
  %2508 = fmul fast float %2501, %2442
  %2509 = fadd fast float %2506, %2508
  %2510 = fsub fast float %2509, %2507
  %2511 = call float @dx.op.unary.f32(i32 6, float %2510)  ; FAbs(value)
  %2512 = fadd fast float %2511, 0x3DDB7CDFE0000000
  %2513 = fdiv fast float %2505, %2512
  br label %2514

; <label>:2514                                    ; preds = %2499, %2490
  %2515 = phi float [ %2513, %2499 ], [ 1.000000e+00, %2490 ]
  %2516 = call float @dx.op.binary.f32(i32 36, float %2515, float %2491)  ; FMin(a,b)
  %2517 = fmul fast float %2423, %2423
  %2518 = fmul fast float %2437, %2437
  %2519 = fmul fast float %2425, %2425
  %2520 = fadd fast float %2519, %2517
  %2521 = fadd fast float %2520, %2518
  %2522 = call float @dx.op.unary.f32(i32 24, float %2521)  ; Sqrt(value)
  %2523 = fcmp fast ugt float %2522, 0.000000e+00
  br i1 %2523, label %2524, label %2539

; <label>:2524                                    ; preds = %2514
  %2525 = fsub fast float -0.000000e+00, %2425
  %2526 = fdiv fast float %2525, %2522
  %2527 = fsub fast float -0.000000e+00, %2423
  %2528 = fdiv fast float %2527, %2522
  %2529 = fdiv fast float %2437, %2522
  %2530 = fmul fast float %2436, 0x3FE279A760000000
  %2531 = fmul fast float %2528, %2423
  %2532 = fmul fast float %2529, %2437
  %2533 = fmul fast float %2526, %2425
  %2534 = fadd fast float %2531, %2533
  %2535 = fsub fast float %2534, %2532
  %2536 = call float @dx.op.unary.f32(i32 6, float %2535)  ; FAbs(value)
  %2537 = fadd fast float %2536, 0x3DDB7CDFE0000000
  %2538 = fdiv fast float %2530, %2537
  br label %2539

; <label>:2539                                    ; preds = %2524, %2514
  %2540 = phi float [ %2538, %2524 ], [ 1.000000e+00, %2514 ]
  %2541 = call float @dx.op.binary.f32(i32 36, float %2540, float %2516)  ; FMin(a,b)
  %2542 = call float @dx.op.unary.f32(i32 7, float %2541)  ; Saturate(value)
  %2543 = fcmp fast olt float %2542, 1.000000e+00
  br i1 %2543, label %2544, label %2554

; <label>:2544                                    ; preds = %2539
  %2545 = fmul fast float %2542, %2423
  %2546 = fmul fast float %2542, %2437
  %2547 = fmul fast float %2542, %2425
  %2548 = fmul fast float %2542, %2440
  %2549 = fmul fast float %2542, %2452
  %2550 = fmul fast float %2542, %2442
  %2551 = fmul fast float %2542, %2455
  %2552 = fmul fast float %2542, %2467
  %2553 = fmul fast float %2542, %2457
  br label %2554

; <label>:2554                                    ; preds = %2544, %2539
  %2555 = phi float [ %2551, %2544 ], [ %2455, %2539 ]
  %2556 = phi float [ %2552, %2544 ], [ %2467, %2539 ]
  %2557 = phi float [ %2553, %2544 ], [ %2457, %2539 ]
  %2558 = phi float [ %2548, %2544 ], [ %2440, %2539 ]
  %2559 = phi float [ %2549, %2544 ], [ %2452, %2539 ]
  %2560 = phi float [ %2550, %2544 ], [ %2442, %2539 ]
  %2561 = phi float [ %2545, %2544 ], [ %2423, %2539 ]
  %2562 = phi float [ %2546, %2544 ], [ %2437, %2539 ]
  %2563 = phi float [ %2547, %2544 ], [ %2425, %2539 ]
  %2564 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2436)  ; FMax(a,b)
  %2565 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2451)  ; FMax(a,b)
  %2566 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2466)  ; FMax(a,b)
  %2567 = fcmp fast oge float %2224, 0.000000e+00
  %2568 = and i1 %2567, %1995
  %2569 = fcmp fast ole float %2224, 1.000000e+00
  %2570 = and i1 %2569, %2568
  %2571 = fcmp fast oge float %2225, 0.000000e+00
  %2572 = and i1 %2571, %2570
  %2573 = fcmp fast ole float %2225, 1.000000e+00
  %2574 = and i1 %2573, %2572
  br i1 %2574, label %2575, label %2720, !dx.controlflow.hints !92

; <label>:2575                                    ; preds = %2554
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 2
  %2578 = extractvalue %dx.types.CBufRet.f32 %2576, 3
  %2579 = fmul fast float %2577, %2224
  %2580 = fmul fast float %2578, %2225
  %2581 = call float @dx.op.unary.f32(i32 27, float %2579)  ; Round_ni(value)
  %2582 = call float @dx.op.unary.f32(i32 27, float %2580)  ; Round_ni(value)
  %2583 = fptosi float %2581 to i32
  %2584 = fptosi float %2582 to i32
  %2585 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %38, i32 0, i32 %2583, i32 %2584, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = and i32 %2586, 65535
  %2588 = lshr i32 %2586, 16
  %2589 = icmp eq i32 %2587, 65535
  br i1 %2589, label %2626, label %2590

; <label>:2590                                    ; preds = %2575
  %2591 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %2592 = extractvalue %dx.types.CBufRet.f32 %2576, 0
  %2593 = extractvalue %dx.types.CBufRet.f32 %2576, 1
  %2594 = fmul fast float %2592, %2224
  %2595 = fmul fast float %2593, %2225
  %2596 = fmul fast float %2594, 1.250000e-01
  %2597 = fmul fast float %2595, 1.250000e-01
  %2598 = call float @dx.op.unary.f32(i32 27, float %2596)  ; Round_ni(value)
  %2599 = call float @dx.op.unary.f32(i32 27, float %2597)  ; Round_ni(value)
  %2600 = fmul fast float %2598, 8.000000e+00
  %2601 = fmul fast float %2599, 8.000000e+00
  %2602 = and i32 %2586, 255
  %2603 = lshr i32 %2586, 8
  %2604 = and i32 %2603, 255
  %2605 = mul nuw nsw i32 %2602, 9
  %2606 = uitofp i32 %2605 to float
  %2607 = mul nuw nsw i32 %2604, 9
  %2608 = uitofp i32 %2607 to float
  %2609 = fadd fast float %2606, 5.000000e-01
  %2610 = fadd fast float %2609, %2594
  %2611 = fsub fast float %2610, %2600
  %2612 = fadd fast float %2608, 5.000000e-01
  %2613 = fadd fast float %2612, %2595
  %2614 = fsub fast float %2613, %2601
  %2615 = fdiv fast float %2611, %1994
  %2616 = fdiv fast float %2614, %2591
  %2617 = fmul fast float %2252, 4.375000e-01
  %2618 = fadd fast float %2617, 3.125000e-02
  %2619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %48, float %2615, float %2616, float %2618, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2620 = extractvalue %dx.types.ResRet.f32 %2619, 0
  %2621 = extractvalue %dx.types.ResRet.f32 %2619, 1
  %2622 = extractvalue %dx.types.ResRet.f32 %2619, 2
  %2623 = fadd fast float %2620, %2564
  %2624 = fadd fast float %2621, %2565
  %2625 = fadd fast float %2622, %2566
  br label %2626

; <label>:2626                                    ; preds = %2590, %2575
  %2627 = phi float [ %2625, %2590 ], [ %2566, %2575 ]
  %2628 = phi float [ %2624, %2590 ], [ %2565, %2575 ]
  %2629 = phi float [ %2623, %2590 ], [ %2564, %2575 ]
  %2630 = icmp eq i32 %2588, 65535
  br i1 %2630, label %2720, label %2631

; <label>:2631                                    ; preds = %2626
  %2632 = extractvalue %dx.types.CBufRet.f32 %1993, 1
  %2633 = extractvalue %dx.types.CBufRet.f32 %2576, 0
  %2634 = extractvalue %dx.types.CBufRet.f32 %2576, 1
  %2635 = fmul fast float %2633, %2224
  %2636 = fmul fast float %2634, %2225
  %2637 = fmul fast float %2635, 1.250000e-01
  %2638 = fmul fast float %2636, 1.250000e-01
  %2639 = call float @dx.op.unary.f32(i32 27, float %2637)  ; Round_ni(value)
  %2640 = call float @dx.op.unary.f32(i32 27, float %2638)  ; Round_ni(value)
  %2641 = fmul fast float %2639, 8.000000e+00
  %2642 = fmul fast float %2640, 8.000000e+00
  %2643 = fsub fast float %2635, %2641
  %2644 = fsub fast float %2636, %2642
  %2645 = fadd fast float %2643, 5.000000e-01
  %2646 = fadd fast float %2644, 5.000000e-01
  %2647 = and i32 %2588, 255
  %2648 = lshr i32 %2586, 24
  %2649 = mul nuw nsw i32 %2647, 9
  %2650 = uitofp i32 %2649 to float
  %2651 = mul nuw nsw i32 %2648, 9
  %2652 = uitofp i32 %2651 to float
  %2653 = fadd fast float %2645, %2650
  %2654 = fadd fast float %2646, %2652
  %2655 = fdiv fast float %2653, %1994
  %2656 = fdiv fast float %2654, %2632
  %2657 = fmul fast float %2252, 4.375000e-01
  %2658 = fadd fast float %2657, 3.125000e-02
  %2659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %48, float %2655, float %2656, float %2658, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2660 = extractvalue %dx.types.ResRet.f32 %2659, 0
  %2661 = extractvalue %dx.types.ResRet.f32 %2659, 1
  %2662 = extractvalue %dx.types.ResRet.f32 %2659, 2
  %2663 = fadd fast float %2657, 5.312500e-01
  %2664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %48, float %2655, float %2656, float %2663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = extractvalue %dx.types.ResRet.f32 %2664, 1
  %2667 = extractvalue %dx.types.ResRet.f32 %2664, 2
  %2668 = fmul fast float %2665, 2.000000e+00
  %2669 = fmul fast float %2666, 2.000000e+00
  %2670 = fmul fast float %2667, 2.000000e+00
  %2671 = fadd fast float %2668, -1.000000e+00
  %2672 = fadd fast float %2669, -1.000000e+00
  %2673 = fadd fast float %2670, -1.000000e+00
  %2674 = fmul fast float %2671, %2671
  %2675 = fmul fast float %2672, %2672
  %2676 = fadd fast float %2674, %2675
  %2677 = fmul fast float %2673, %2673
  %2678 = fadd fast float %2676, %2677
  %2679 = call float @dx.op.unary.f32(i32 24, float %2678)  ; Sqrt(value)
  %2680 = fcmp fast ogt float %2679, 0.000000e+00
  br i1 %2680, label %2681, label %2685

; <label>:2681                                    ; preds = %2631
  %2682 = fdiv fast float %2671, %2679
  %2683 = fdiv fast float %2672, %2679
  %2684 = fdiv fast float %2673, %2679
  br label %2685

; <label>:2685                                    ; preds = %2681, %2631
  %2686 = phi float [ %2682, %2681 ], [ 0.000000e+00, %2631 ]
  %2687 = phi float [ %2683, %2681 ], [ 0.000000e+00, %2631 ]
  %2688 = phi float [ %2684, %2681 ], [ 0.000000e+00, %2631 ]
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2691 = extractvalue %dx.types.CBufRet.f32 %2689, 1
  %2692 = fsub fast float %1843, %2690
  %2693 = fsub fast float %1844, %2691
  %2694 = fmul fast float %2692, %2692
  %2695 = fmul fast float %2693, %2693
  %2696 = fadd fast float %2694, %2695
  %2697 = call float @dx.op.unary.f32(i32 24, float %2696)  ; Sqrt(value)
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.CBufRet.f32 %2698, 1
  %2701 = fsub fast float %2697, %2699
  %2702 = fdiv fast float %2701, %2700
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2704 = fmul fast float %2703, 2.000000e+00
  %2705 = fsub fast float 3.000000e+00, %2704
  %2706 = fmul fast float %2703, %2703
  %2707 = fmul fast float %2706, %2705
  %2708 = call float @dx.op.dot3.f32(i32 55, float %2686, float %2687, float %2688, float %1801, float %1802, float %1803)  ; Dot3(ax,ay,az,bx,by,bz)
  %2709 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2708)  ; FMax(a,b)
  %2710 = fmul fast float %2709, 0x400C5BF8A0000000
  %2711 = fmul fast float %2707, %2660
  %2712 = fmul fast float %2711, %2710
  %2713 = fadd fast float %2712, %2629
  %2714 = fmul fast float %2707, %2661
  %2715 = fmul fast float %2714, %2710
  %2716 = fadd fast float %2715, %2628
  %2717 = fmul fast float %2707, %2662
  %2718 = fmul fast float %2717, %2710
  %2719 = fadd fast float %2718, %2627
  br label %2720

; <label>:2720                                    ; preds = %2685, %2626, %2554
  %2721 = phi float [ %2719, %2685 ], [ %2627, %2626 ], [ %2566, %2554 ]
  %2722 = phi float [ %2716, %2685 ], [ %2628, %2626 ], [ %2565, %2554 ]
  %2723 = phi float [ %2713, %2685 ], [ %2629, %2626 ], [ %2564, %2554 ]
  %2724 = fcmp fast ogt float %2211, %2248
  %2725 = and i1 %2567, %2724
  %2726 = and i1 %2569, %2725
  %2727 = and i1 %2571, %2726
  %2728 = and i1 %2573, %2727
  br i1 %2728, label %2729, label %2786, !dx.controlflow.hints !93

; <label>:2729                                    ; preds = %2720
  %2730 = fmul fast float %2250, 0x3FC24924A0000000
  %2731 = fsub fast float %2211, %2248
  %2732 = fdiv fast float %2731, %2730
  %2733 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2734, 0
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.CBufRet.f32 %2736, 1
  %2739 = extractvalue %dx.types.CBufRet.f32 %2736, 2
  %2740 = fsub fast float %2735, %2723
  %2741 = fsub fast float %2737, %2561
  %2742 = fsub fast float %2738, %2562
  %2743 = fsub fast float %2739, %2563
  %2744 = fmul fast float %2740, %2733
  %2745 = fmul fast float %2741, %2733
  %2746 = fmul fast float %2742, %2733
  %2747 = fmul fast float %2743, %2733
  %2748 = fadd fast float %2744, %2723
  %2749 = fadd fast float %2745, %2561
  %2750 = fadd fast float %2746, %2562
  %2751 = fadd fast float %2747, %2563
  %2752 = extractvalue %dx.types.CBufRet.f32 %2734, 1
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.CBufRet.f32 %2753, 1
  %2756 = extractvalue %dx.types.CBufRet.f32 %2753, 2
  %2757 = fsub fast float %2752, %2722
  %2758 = fsub fast float %2754, %2558
  %2759 = fsub fast float %2755, %2559
  %2760 = fsub fast float %2756, %2560
  %2761 = fmul fast float %2757, %2733
  %2762 = fmul fast float %2758, %2733
  %2763 = fmul fast float %2759, %2733
  %2764 = fmul fast float %2760, %2733
  %2765 = fadd fast float %2761, %2722
  %2766 = fadd fast float %2762, %2558
  %2767 = fadd fast float %2763, %2559
  %2768 = fadd fast float %2764, %2560
  %2769 = extractvalue %dx.types.CBufRet.f32 %2734, 2
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.CBufRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.CBufRet.f32 %2770, 2
  %2774 = fsub fast float %2769, %2721
  %2775 = fsub fast float %2771, %2555
  %2776 = fsub fast float %2772, %2556
  %2777 = fsub fast float %2773, %2557
  %2778 = fmul fast float %2774, %2733
  %2779 = fmul fast float %2775, %2733
  %2780 = fmul fast float %2776, %2733
  %2781 = fmul fast float %2777, %2733
  %2782 = fadd fast float %2778, %2721
  %2783 = fadd fast float %2779, %2555
  %2784 = fadd fast float %2780, %2556
  %2785 = fadd fast float %2781, %2557
  br label %2786

; <label>:2786                                    ; preds = %2729, %2720
  %2787 = phi float [ %2782, %2729 ], [ %2721, %2720 ]
  %2788 = phi float [ %2783, %2729 ], [ %2555, %2720 ]
  %2789 = phi float [ %2784, %2729 ], [ %2556, %2720 ]
  %2790 = phi float [ %2785, %2729 ], [ %2557, %2720 ]
  %2791 = phi float [ %2765, %2729 ], [ %2722, %2720 ]
  %2792 = phi float [ %2766, %2729 ], [ %2558, %2720 ]
  %2793 = phi float [ %2767, %2729 ], [ %2559, %2720 ]
  %2794 = phi float [ %2768, %2729 ], [ %2560, %2720 ]
  %2795 = phi float [ %2748, %2729 ], [ %2723, %2720 ]
  %2796 = phi float [ %2749, %2729 ], [ %2561, %2720 ]
  %2797 = phi float [ %2750, %2729 ], [ %2562, %2720 ]
  %2798 = phi float [ %2751, %2729 ], [ %2563, %2720 ]
  %2799 = extractvalue %dx.types.CBufRet.f32 %2373, 3
  %2800 = fmul fast float %2799, %2795
  %2801 = fmul fast float %2799, %2791
  %2802 = fmul fast float %2799, %2787
  %2803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2804 = extractvalue %dx.types.CBufRet.f32 %2803, 3
  %2805 = fmul fast float %2800, %2804
  %2806 = fmul fast float %2801, %2804
  %2807 = fmul fast float %2802, %2804
  %2808 = call float @dx.op.dot3.f32(i32 55, float %2805, float %2806, float %2807, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2809 = fmul fast float %2808, 0x3FD20DD760000000
  %2810 = fmul fast float %2796, 1.500000e+00
  %2811 = fmul fast float %2810, %2799
  %2812 = fmul fast float %2811, %2804
  %2813 = fmul fast float %2797, 1.500000e+00
  %2814 = fmul fast float %2813, %2799
  %2815 = fmul fast float %2814, %2804
  %2816 = fmul fast float %2798, 1.500000e+00
  %2817 = fmul fast float %2816, %2799
  %2818 = fmul fast float %2817, %2804
  %2819 = fmul fast float %2792, 1.500000e+00
  %2820 = fmul fast float %2819, %2799
  %2821 = fmul fast float %2820, %2804
  %2822 = fmul fast float %2793, 1.500000e+00
  %2823 = fmul fast float %2822, %2799
  %2824 = fmul fast float %2823, %2804
  %2825 = fmul fast float %2794, 1.500000e+00
  %2826 = fmul fast float %2825, %2799
  %2827 = fmul fast float %2826, %2804
  %2828 = fmul fast float %2788, 1.500000e+00
  %2829 = fmul fast float %2828, %2799
  %2830 = fmul fast float %2829, %2804
  %2831 = fmul fast float %2789, 1.500000e+00
  %2832 = fmul fast float %2831, %2799
  %2833 = fmul fast float %2832, %2804
  %2834 = fmul fast float %2790, 1.500000e+00
  %2835 = fmul fast float %2834, %2799
  %2836 = fmul fast float %2835, %2804
  %2837 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2805)  ; FMax(a,b)
  %2838 = call float @dx.op.dot3.f32(i32 55, float %2812, float %2815, float %2818, float %2812, float %2815, float %2818)  ; Dot3(ax,ay,az,bx,by,bz)
  %2839 = fcmp fast oeq float %2838, 0.000000e+00
  %2840 = fcmp fast oeq float %2837, 0.000000e+00
  %2841 = or i1 %2840, %2839
  br i1 %2841, label %2871, label %2842

; <label>:2842                                    ; preds = %2786
  %2843 = fsub fast float -0.000000e+00, %2818
  %2844 = fsub fast float -0.000000e+00, %2812
  %2845 = call float @dx.op.unary.f32(i32 24, float %2838)  ; Sqrt(value)
  %2846 = fdiv fast float %2845, %2837
  %2847 = fcmp fast ogt float %2846, 0x3FFB6F8900000000
  %2848 = select i1 %2847, float 0x3FFB6F8900000000, float %2846
  %2849 = fmul fast float %2848, 0x3FE8A23460000000
  %2850 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2851 = call float @dx.op.binary.f32(i32 35, float %2848, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2852 = fmul fast float %2850, %2837
  %2853 = fmul fast float %2851, 0x3FF279A740000000
  %2854 = fadd fast float %2853, -1.000000e+00
  %2855 = call float @dx.op.dot3.f32(i32 55, float %2843, float %2844, float %2815, float %2843, float %2844, float %2815)  ; Dot3(ax,ay,az,bx,by,bz)
  %2856 = call float @dx.op.unary.f32(i32 25, float %2855)  ; Rsqrt(value)
  %2857 = fmul fast float %2856, %2843
  %2858 = fmul fast float %2856, %2844
  %2859 = fmul fast float %2856, %2815
  %2860 = fmul fast float %2854, %2854
  %2861 = fsub fast float 1.000000e+00, %2860
  %2862 = fmul fast float %2851, 0x40005F8BE0000000
  %2863 = fsub fast float 0x400C5BF8A0000000, %2862
  %2864 = fdiv fast float %2852, %2863
  %2865 = fmul fast float %2864, 0x3FEE31C3C0000000
  %2866 = fmul fast float %2865, %2861
  %2867 = fmul fast float %2851, 0x3FDACB7480000000
  %2868 = fadd fast float %2867, 0xBFD7347680000000
  %2869 = fmul fast float %2868, %2864
  %2870 = fmul fast float %2869, %2861
  br label %2871

; <label>:2871                                    ; preds = %2842, %2786
  %2872 = phi float [ %2857, %2842 ], [ 0.000000e+00, %2786 ]
  %2873 = phi float [ %2858, %2842 ], [ 0.000000e+00, %2786 ]
  %2874 = phi float [ %2859, %2842 ], [ 0.000000e+00, %2786 ]
  %2875 = phi float [ %2866, %2842 ], [ 0.000000e+00, %2786 ]
  %2876 = phi float [ %2870, %2842 ], [ 0.000000e+00, %2786 ]
  %2877 = call float @dx.op.dot3.f32(i32 55, float %2872, float %2873, float %2874, float %1801, float %1802, float %1803)  ; Dot3(ax,ay,az,bx,by,bz)
  %2878 = fmul fast float %2877, %2877
  %2879 = fmul fast float %2878, 0x3FEE471020000000
  %2880 = fadd fast float %2879, 0xBFD42F6020000000
  %2881 = fmul fast float %2837, 0x3FD20DD760000000
  %2882 = fmul fast float %2880, %2876
  %2883 = fmul fast float %2875, 0x3FDF454380000000
  %2884 = fmul fast float %2883, %2877
  %2885 = fadd fast float %2884, %2881
  %2886 = fadd fast float %2885, %2882
  %2887 = call float @dx.op.dot3.f32(i32 55, float %2872, float %2873, float %2874, float %1820, float %1821, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %2888 = fmul fast float %2887, 0x3FDF454380000000
  %2889 = fmul fast float %2887, %2887
  %2890 = fmul fast float %2889, 0x3FEE471020000000
  %2891 = fadd fast float %2890, 0xBFD42F6020000000
  %2892 = call float @dx.op.dot3.f32(i32 55, float %2837, float %2875, float %2876, float 0x3FD20DD760000000, float %2888, float %2891)  ; Dot3(ax,ay,az,bx,by,bz)
  %2893 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2806)  ; FMax(a,b)
  %2894 = call float @dx.op.dot3.f32(i32 55, float %2821, float %2824, float %2827, float %2821, float %2824, float %2827)  ; Dot3(ax,ay,az,bx,by,bz)
  %2895 = fcmp fast oeq float %2894, 0.000000e+00
  %2896 = fcmp fast oeq float %2893, 0.000000e+00
  %2897 = or i1 %2896, %2895
  br i1 %2897, label %2927, label %2898

; <label>:2898                                    ; preds = %2871
  %2899 = fsub fast float -0.000000e+00, %2827
  %2900 = fsub fast float -0.000000e+00, %2821
  %2901 = call float @dx.op.unary.f32(i32 24, float %2894)  ; Sqrt(value)
  %2902 = fdiv fast float %2901, %2893
  %2903 = fcmp fast ogt float %2902, 0x3FFB6F8900000000
  %2904 = select i1 %2903, float 0x3FFB6F8900000000, float %2902
  %2905 = fmul fast float %2904, 0x3FE8A23460000000
  %2906 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  %2907 = call float @dx.op.binary.f32(i32 35, float %2904, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2908 = fmul fast float %2906, %2893
  %2909 = fmul fast float %2907, 0x3FF279A740000000
  %2910 = fadd fast float %2909, -1.000000e+00
  %2911 = call float @dx.op.dot3.f32(i32 55, float %2899, float %2900, float %2824, float %2899, float %2900, float %2824)  ; Dot3(ax,ay,az,bx,by,bz)
  %2912 = call float @dx.op.unary.f32(i32 25, float %2911)  ; Rsqrt(value)
  %2913 = fmul fast float %2912, %2899
  %2914 = fmul fast float %2912, %2900
  %2915 = fmul fast float %2912, %2824
  %2916 = fmul fast float %2910, %2910
  %2917 = fsub fast float 1.000000e+00, %2916
  %2918 = fmul fast float %2907, 0x40005F8BE0000000
  %2919 = fsub fast float 0x400C5BF8A0000000, %2918
  %2920 = fdiv fast float %2908, %2919
  %2921 = fmul fast float %2920, 0x3FEE31C3C0000000
  %2922 = fmul fast float %2921, %2917
  %2923 = fmul fast float %2907, 0x3FDACB7480000000
  %2924 = fadd fast float %2923, 0xBFD7347680000000
  %2925 = fmul fast float %2924, %2920
  %2926 = fmul fast float %2925, %2917
  br label %2927

; <label>:2927                                    ; preds = %2898, %2871
  %2928 = phi float [ %2913, %2898 ], [ 0.000000e+00, %2871 ]
  %2929 = phi float [ %2914, %2898 ], [ 0.000000e+00, %2871 ]
  %2930 = phi float [ %2915, %2898 ], [ 0.000000e+00, %2871 ]
  %2931 = phi float [ %2922, %2898 ], [ 0.000000e+00, %2871 ]
  %2932 = phi float [ %2926, %2898 ], [ 0.000000e+00, %2871 ]
  %2933 = call float @dx.op.dot3.f32(i32 55, float %2928, float %2929, float %2930, float %1801, float %1802, float %1803)  ; Dot3(ax,ay,az,bx,by,bz)
  %2934 = fmul fast float %2933, %2933
  %2935 = fmul fast float %2934, 0x3FEE471020000000
  %2936 = fadd fast float %2935, 0xBFD42F6020000000
  %2937 = fmul fast float %2893, 0x3FD20DD760000000
  %2938 = fmul fast float %2936, %2932
  %2939 = fmul fast float %2931, 0x3FDF454380000000
  %2940 = fmul fast float %2939, %2933
  %2941 = fadd fast float %2940, %2937
  %2942 = fadd fast float %2941, %2938
  %2943 = call float @dx.op.dot3.f32(i32 55, float %2928, float %2929, float %2930, float %1820, float %1821, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %2944 = fmul fast float %2943, 0x3FDF454380000000
  %2945 = fmul fast float %2943, %2943
  %2946 = fmul fast float %2945, 0x3FEE471020000000
  %2947 = fadd fast float %2946, 0xBFD42F6020000000
  %2948 = call float @dx.op.dot3.f32(i32 55, float %2893, float %2931, float %2932, float 0x3FD20DD760000000, float %2944, float %2947)  ; Dot3(ax,ay,az,bx,by,bz)
  %2949 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2807)  ; FMax(a,b)
  %2950 = call float @dx.op.dot3.f32(i32 55, float %2830, float %2833, float %2836, float %2830, float %2833, float %2836)  ; Dot3(ax,ay,az,bx,by,bz)
  %2951 = fcmp fast oeq float %2950, 0.000000e+00
  %2952 = fcmp fast oeq float %2949, 0.000000e+00
  %2953 = or i1 %2952, %2951
  br i1 %2953, label %2983, label %2954

; <label>:2954                                    ; preds = %2927
  %2955 = fsub fast float -0.000000e+00, %2836
  %2956 = fsub fast float -0.000000e+00, %2830
  %2957 = call float @dx.op.unary.f32(i32 24, float %2950)  ; Sqrt(value)
  %2958 = fdiv fast float %2957, %2949
  %2959 = fcmp fast ogt float %2958, 0x3FFB6F8900000000
  %2960 = select i1 %2959, float 0x3FFB6F8900000000, float %2958
  %2961 = fmul fast float %2960, 0x3FE8A23460000000
  %2962 = call float @dx.op.unary.f32(i32 7, float %2961)  ; Saturate(value)
  %2963 = call float @dx.op.binary.f32(i32 35, float %2960, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2964 = fmul fast float %2962, %2949
  %2965 = fmul fast float %2963, 0x3FF279A740000000
  %2966 = fadd fast float %2965, -1.000000e+00
  %2967 = call float @dx.op.dot3.f32(i32 55, float %2955, float %2956, float %2833, float %2955, float %2956, float %2833)  ; Dot3(ax,ay,az,bx,by,bz)
  %2968 = call float @dx.op.unary.f32(i32 25, float %2967)  ; Rsqrt(value)
  %2969 = fmul fast float %2968, %2955
  %2970 = fmul fast float %2968, %2956
  %2971 = fmul fast float %2968, %2833
  %2972 = fmul fast float %2966, %2966
  %2973 = fsub fast float 1.000000e+00, %2972
  %2974 = fmul fast float %2963, 0x40005F8BE0000000
  %2975 = fsub fast float 0x400C5BF8A0000000, %2974
  %2976 = fdiv fast float %2964, %2975
  %2977 = fmul fast float %2976, 0x3FEE31C3C0000000
  %2978 = fmul fast float %2977, %2973
  %2979 = fmul fast float %2963, 0x3FDACB7480000000
  %2980 = fadd fast float %2979, 0xBFD7347680000000
  %2981 = fmul fast float %2980, %2976
  %2982 = fmul fast float %2981, %2973
  br label %2983

; <label>:2983                                    ; preds = %2954, %2927
  %2984 = phi float [ %2969, %2954 ], [ 0.000000e+00, %2927 ]
  %2985 = phi float [ %2970, %2954 ], [ 0.000000e+00, %2927 ]
  %2986 = phi float [ %2971, %2954 ], [ 0.000000e+00, %2927 ]
  %2987 = phi float [ %2978, %2954 ], [ 0.000000e+00, %2927 ]
  %2988 = phi float [ %2982, %2954 ], [ 0.000000e+00, %2927 ]
  %2989 = call float @dx.op.dot3.f32(i32 55, float %2984, float %2985, float %2986, float %1801, float %1802, float %1803)  ; Dot3(ax,ay,az,bx,by,bz)
  %2990 = fmul fast float %2989, %2989
  %2991 = fmul fast float %2990, 0x3FEE471020000000
  %2992 = fadd fast float %2991, 0xBFD42F6020000000
  %2993 = fmul fast float %2949, 0x3FD20DD760000000
  %2994 = fmul fast float %2992, %2988
  %2995 = fmul fast float %2987, 0x3FDF454380000000
  %2996 = fmul fast float %2995, %2989
  %2997 = fadd fast float %2996, %2993
  %2998 = fadd fast float %2997, %2994
  %2999 = call float @dx.op.dot3.f32(i32 55, float %2984, float %2985, float %2986, float %1820, float %1821, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %3000 = fmul fast float %2999, 0x3FDF454380000000
  %3001 = fmul fast float %2999, %2999
  %3002 = fmul fast float %3001, 0x3FEE471020000000
  %3003 = fadd fast float %3002, 0xBFD42F6020000000
  %3004 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2987, float %2988, float 0x3FD20DD760000000, float %3000, float %3003)  ; Dot3(ax,ay,az,bx,by,bz)
  %3005 = call float @dx.op.binary.f32(i32 35, float %2886, float 0.000000e+00)  ; FMax(a,b)
  %3006 = call float @dx.op.binary.f32(i32 35, float %2942, float 0.000000e+00)  ; FMax(a,b)
  %3007 = call float @dx.op.binary.f32(i32 35, float %2998, float 0.000000e+00)  ; FMax(a,b)
  %3008 = call float @dx.op.binary.f32(i32 35, float %2892, float 0.000000e+00)  ; FMax(a,b)
  %3009 = call float @dx.op.binary.f32(i32 35, float %2948, float 0.000000e+00)  ; FMax(a,b)
  %3010 = call float @dx.op.binary.f32(i32 35, float %3004, float 0.000000e+00)  ; FMax(a,b)
  %3011 = fsub fast float %2205, %3005
  %3012 = fsub fast float %2206, %3006
  %3013 = fsub fast float %2207, %3007
  %3014 = fmul fast float %3011, %1884
  %3015 = fmul fast float %3012, %1884
  %3016 = fmul fast float %3013, %1884
  %3017 = fadd fast float %3014, %3005
  %3018 = fadd fast float %3015, %3006
  %3019 = fadd fast float %3016, %3007
  %3020 = fsub fast float %2202, %3008
  %3021 = fsub fast float %2203, %3009
  %3022 = fsub fast float %2204, %3010
  %3023 = fmul fast float %3020, %1884
  %3024 = fmul fast float %3021, %1884
  %3025 = fmul fast float %3022, %1884
  %3026 = fadd fast float %3023, %3008
  %3027 = fadd fast float %3024, %3009
  %3028 = fadd fast float %3025, %3010
  %3029 = fsub fast float %1986, %2809
  %3030 = fmul fast float %3029, %1884
  %3031 = fadd fast float %3030, %2809
  br label %3032

; <label>:3032                                    ; preds = %2983, %2201
  %3033 = phi float [ %3031, %2983 ], [ %1986, %2201 ]
  %3034 = phi float [ %3026, %2983 ], [ %2202, %2201 ]
  %3035 = phi float [ %3027, %2983 ], [ %2203, %2201 ]
  %3036 = phi float [ %3028, %2983 ], [ %2204, %2201 ]
  %3037 = phi float [ %3017, %2983 ], [ %2205, %2201 ]
  %3038 = phi float [ %3018, %2983 ], [ %2206, %2201 ]
  %3039 = phi float [ %3019, %2983 ], [ %2207, %2201 ]
  %3040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.f32 %3040, 0
  %3042 = call float @dx.op.binary.f32(i32 36, float %1807, float %3041)  ; FMin(a,b)
  %3043 = fmul fast float %3042, %1824
  %3044 = fsub fast float 1.000000e+00, %3043
  %3045 = bitcast float %3044 to i32
  %3046 = sub nsw i32 2129859010, %3045
  %3047 = bitcast i32 %3046 to float
  %3048 = call float @dx.op.binary.f32(i32 36, float %1808, float %3041)  ; FMin(a,b)
  %3049 = fmul fast float %3048, %1824
  %3050 = fsub fast float 1.000000e+00, %3049
  %3051 = bitcast float %3050 to i32
  %3052 = sub nsw i32 2129859010, %3051
  %3053 = bitcast i32 %3052 to float
  %3054 = call float @dx.op.binary.f32(i32 36, float %1809, float %3041)  ; FMin(a,b)
  %3055 = fmul fast float %3054, %1824
  %3056 = fsub fast float 1.000000e+00, %3055
  %3057 = bitcast float %3056 to i32
  %3058 = sub nsw i32 2129859010, %3057
  %3059 = bitcast i32 %3058 to float
  %3060 = fmul fast float %3037, %1823
  %3061 = fmul fast float %3060, %3047
  %3062 = fmul fast float %3038, %1823
  %3063 = fmul fast float %3062, %3053
  %3064 = fmul fast float %3039, %1823
  %3065 = fmul fast float %3064, %3059
  %3066 = call float @dx.op.binary.f32(i32 36, float %1804, float %3041)  ; FMin(a,b)
  %3067 = fmul fast float %3066, %1824
  %3068 = fsub fast float 1.000000e+00, %3067
  %3069 = bitcast float %3068 to i32
  %3070 = sub nsw i32 2129859010, %3069
  %3071 = bitcast i32 %3070 to float
  %3072 = call float @dx.op.binary.f32(i32 36, float %1805, float %3041)  ; FMin(a,b)
  %3073 = fmul fast float %3072, %1824
  %3074 = fsub fast float 1.000000e+00, %3073
  %3075 = bitcast float %3074 to i32
  %3076 = sub nsw i32 2129859010, %3075
  %3077 = bitcast i32 %3076 to float
  %3078 = call float @dx.op.binary.f32(i32 36, float %1812, float %3041)  ; FMin(a,b)
  %3079 = fmul fast float %3078, %1824
  %3080 = fsub fast float 1.000000e+00, %3079
  %3081 = bitcast float %3080 to i32
  %3082 = sub nsw i32 2129859010, %3081
  %3083 = bitcast i32 %3082 to float
  %3084 = fmul fast float %3034, %1823
  %3085 = fmul fast float %3084, %3071
  %3086 = fmul fast float %3035, %1823
  %3087 = fmul fast float %3086, %3077
  %3088 = fmul fast float %3036, %1823
  %3089 = fmul fast float %3088, %3083
  %3090 = call float @dx.op.dot3.f32(i32 55, float %3061, float %3063, float %3065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3091 = select i1 %219, float 0.000000e+00, float %3061
  %3092 = select i1 %219, float %3090, float %3063
  %3093 = select i1 %219, float 0.000000e+00, float %3065
  %3094 = call float @dx.op.dot3.f32(i32 55, float %3085, float %3087, float %3089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3095 = select i1 %219, float 0.000000e+00, float %3085
  %3096 = select i1 %219, float %3094, float %3087
  %3097 = select i1 %219, float 0.000000e+00, float %3089
  %3098 = fmul fast float %922, %922
  %3099 = call float @dx.op.unary.f32(i32 7, float %3098)  ; Saturate(value)
  %3100 = fmul fast float %1814, 9.843750e-01
  %3101 = fmul fast float %1810, 9.843750e-01
  %3102 = fadd fast float %3100, 7.812500e-03
  %3103 = fadd fast float %3101, 7.812500e-03
  %3104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %3102, float %3103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3105 = extractvalue %dx.types.ResRet.f32 %3104, 0
  %3106 = extractvalue %dx.types.ResRet.f32 %3104, 1
  %3107 = extractvalue %dx.types.ResRet.f32 %3104, 2
  %3108 = extractvalue %dx.types.ResRet.f32 %3104, 3
  %3109 = fsub fast float 1.000000e+00, %3099
  %3110 = fsub fast float %3107, %3105
  %3111 = fsub fast float %3108, %3106
  %3112 = fmul fast float %3110, %3109
  %3113 = fmul fast float %3111, %3109
  %3114 = fadd fast float %3112, %3105
  %3115 = fadd fast float %3113, %3106
  %3116 = fmul fast float %3114, %1804
  %3117 = fmul fast float %3114, %1805
  %3118 = fmul fast float %3114, %1812
  %3119 = fadd fast float %3116, %3115
  %3120 = fadd fast float %3117, %3115
  %3121 = fadd fast float %3118, %3115
  %3122 = fcmp fast ogt float %1466, 0.000000e+00
  br i1 %3122, label %3123, label %3149

; <label>:3123                                    ; preds = %3032
  %3124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %48, float %1466, float %1814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3125 = extractvalue %dx.types.ResRet.f32 %3124, 0
  %3126 = extractvalue %dx.types.ResRet.f32 %3124, 1
  %3127 = extractvalue %dx.types.ResRet.f32 %3124, 2
  %3128 = fadd fast float %3125, -5.000000e-01
  %3129 = fadd fast float %3126, -5.000000e-01
  %3130 = fadd fast float %3127, -5.000000e-01
  %3131 = fsub fast float 1.000000e+00, %1804
  %3132 = fsub fast float 1.000000e+00, %1805
  %3133 = fsub fast float 1.000000e+00, %1812
  %3134 = fmul fast float %1804, 4.000000e+00
  %3135 = fmul fast float %3134, %3131
  %3136 = fmul fast float %3135, %3128
  %3137 = fmul fast float %1805, 4.000000e+00
  %3138 = fmul fast float %3137, %3132
  %3139 = fmul fast float %3138, %3129
  %3140 = fmul fast float %1812, 4.000000e+00
  %3141 = fmul fast float %3140, %3133
  %3142 = fmul fast float %3141, %3130
  %3143 = fadd fast float %3136, %3119
  %3144 = fadd fast float %3139, %3120
  %3145 = fadd fast float %3142, %3121
  %3146 = call float @dx.op.unary.f32(i32 7, float %3143)  ; Saturate(value)
  %3147 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3148 = call float @dx.op.unary.f32(i32 7, float %3145)  ; Saturate(value)
  br label %3149

; <label>:3149                                    ; preds = %3123, %3032
  %3150 = phi float [ %3146, %3123 ], [ %3119, %3032 ]
  %3151 = phi float [ %3147, %3123 ], [ %3120, %3032 ]
  %3152 = phi float [ %3148, %3123 ], [ %3121, %3032 ]
  %3153 = call float @dx.op.binary.f32(i32 35, float %3151, float %3152)  ; FMax(a,b)
  %3154 = call float @dx.op.binary.f32(i32 35, float %3150, float %3153)  ; FMax(a,b)
  %3155 = fsub fast float 1.000000e+00, %3154
  %3156 = fmul fast float %3154, %1810
  %3157 = fadd fast float %3156, %1810
  %3158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3159 = extractvalue %dx.types.CBufRet.f32 %3158, 2
  %3160 = extractvalue %dx.types.CBufRet.f32 %3158, 3
  %3161 = fmul fast float %3157, %3159
  %3162 = fadd fast float %3161, %3160
  %3163 = call float @dx.op.unary.f32(i32 7, float %3162)  ; Saturate(value)
  %3164 = fsub fast float 1.000000e+00, %1835
  %3165 = fadd fast float %3164, %3163
  %3166 = call float @dx.op.unary.f32(i32 7, float %3165)  ; Saturate(value)
  %3167 = fcmp fast olt float %3166, 1.000000e+00
  br i1 %3167, label %3168, label %3616

; <label>:3168                                    ; preds = %3149
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 2
  %3171 = extractvalue %dx.types.CBufRet.f32 %3169, 3
  %3172 = fmul fast float %3170, %82
  %3173 = fmul fast float %3171, %83
  %3174 = fptoui float %3172 to i32
  %3175 = fptoui float %3173 to i32
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 0
  %3178 = extractvalue %dx.types.CBufRet.f32 %3176, 2
  %3179 = extractvalue %dx.types.CBufRet.f32 %3176, 3
  %3180 = fadd fast float %70, -4.000000e+00
  %3181 = call float @dx.op.binary.f32(i32 35, float %3180, float 0.000000e+00)  ; FMax(a,b)
  %3182 = fadd fast float %3181, %3177
  %3183 = fmul fast float %3182, %3178
  %3184 = call float @dx.op.unary.f32(i32 23, float %3183)  ; Log(value)
  %3185 = fmul fast float %3184, %3179
  %3186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3187 = extractvalue %dx.types.CBufRet.f32 %3186, 2
  %3188 = fmul fast float %3185, %3187
  %3189 = call float @dx.op.unary.f32(i32 7, float %3188)  ; Saturate(value)
  %3190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3191 = extractvalue %dx.types.CBufRet.i32 %3190, 1
  %3192 = add i32 %3191, -1
  %3193 = uitofp i32 %3191 to float
  %3194 = fmul fast float %3193, %3189
  %3195 = fptoui float %3194 to i32
  %3196 = call i32 @dx.op.binary.i32(i32 40, i32 %3195, i32 %3192)  ; UMin(a,b)
  %3197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.i32 %3197, 2
  %3199 = extractvalue %dx.types.CBufRet.i32 %3197, 3
  %3200 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3175, i32 %3198, i32 %3174)  ; UMad(a,b,c)
  %3201 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3196, i32 %3199, i32 %3200)  ; UMad(a,b,c)
  %3202 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %3203 = fptoui float %3202 to i32
  %3204 = lshr i32 %3203, 5
  %3205 = call i32 @dx.op.binary.i32(i32 40, i32 %3204, i32 8191)  ; UMin(a,b)
  br i1 false, label %3206, label %3213

; <label>:3206                                    ; preds = %3168
  %3207 = fadd fast float 0.000000e+00, %1822
  %3208 = call float @dx.op.dot3.f32(i32 55, float %1820, float %1821, float %3207, float %1820, float %1821, float %3207)  ; Dot3(ax,ay,az,bx,by,bz)
  %3209 = call float @dx.op.unary.f32(i32 25, float %3208)  ; Rsqrt(value)
  %3210 = fmul fast float %3209, %1820
  %3211 = fmul fast float %3209, %1821
  %3212 = fmul fast float %3207, %3209
  br label %3213

; <label>:3213                                    ; preds = %3206, %3168
  %3214 = phi float [ %3210, %3206 ], [ %1820, %3168 ]
  %3215 = phi float [ %3211, %3206 ], [ %1821, %3168 ]
  %3216 = phi float [ %3212, %3206 ], [ %1822, %3168 ]
  %3217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3218 = extractvalue %dx.types.CBufRet.i32 %3217, 2
  %3219 = add nsw i32 %3218, -1
  %3220 = call i32 @dx.op.binary.i32(i32 37, i32 %3219, i32 0)  ; IMax(a,b)
  %3221 = shl i32 %3205, 2
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = lshr i32 %3223, 16
  %3225 = and i32 %3223, 65535
  %3226 = lshr i32 %3223, 21
  %3227 = lshr i32 %3225, 5
  %3228 = call i32 @dx.op.binary.i32(i32 40, i32 %3227, i32 %3220)  ; UMin(a,b)
  %3229 = icmp ugt i32 %3226, %3228
  br i1 %3229, label %3592, label %3230

; <label>:3230                                    ; preds = %3213
  br label %3231

; <label>:3231                                    ; preds = %3584, %3230
  %3232 = phi float [ %3585, %3584 ], [ 0.000000e+00, %3230 ]
  %3233 = phi float [ %3586, %3584 ], [ 0.000000e+00, %3230 ]
  %3234 = phi float [ %3587, %3584 ], [ 0.000000e+00, %3230 ]
  %3235 = phi float [ %3588, %3584 ], [ 1.000000e+00, %3230 ]
  %3236 = phi i32 [ %3589, %3584 ], [ %3226, %3230 ]
  %3237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3238 = extractvalue %dx.types.CBufRet.i32 %3237, 2
  %3239 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3201, i32 %3238, i32 %3236)  ; UMad(a,b,c)
  %3240 = shl i32 %3239, 2
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = shl i32 %3236, 5
  %3244 = sub nsw i32 %3224, %3243
  %3245 = call i32 @dx.op.binary.i32(i32 37, i32 %3244, i32 0)  ; IMax(a,b)
  %3246 = call i32 @dx.op.binary.i32(i32 38, i32 %3245, i32 31)  ; IMin(a,b)
  %3247 = sub nsw i32 1, %3224
  %3248 = add nsw i32 %3247, %3225
  %3249 = call i32 @dx.op.binary.i32(i32 37, i32 %3248, i32 0)  ; IMax(a,b)
  %3250 = call i32 @dx.op.binary.i32(i32 38, i32 %3249, i32 32)  ; IMin(a,b)
  %3251 = and i32 %3250, 31
  %3252 = shl i32 -1, %3251
  %3253 = xor i32 %3252, -1
  %3254 = and i32 %3246, 31
  %3255 = shl i32 %3253, %3254
  %3256 = icmp eq i32 %3250, 32
  %3257 = select i1 %3256, i32 -1, i32 %3255
  %3258 = and i32 %3257, %3242
  %3259 = icmp eq i32 %3258, 0
  br i1 %3259, label %3584, label %3260

; <label>:3260                                    ; preds = %3231
  br label %3261

; <label>:3261                                    ; preds = %3367, %3260
  %3262 = phi float [ %3368, %3367 ], [ %3232, %3260 ]
  %3263 = phi float [ %3369, %3367 ], [ %3233, %3260 ]
  %3264 = phi float [ %3370, %3367 ], [ %3234, %3260 ]
  %3265 = phi float [ %3371, %3367 ], [ %3235, %3260 ]
  %3266 = phi i32 [ %3271, %3367 ], [ %3258, %3260 ]
  %3267 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3266)  ; FirstbitLo(value)
  %3268 = add i32 %3267, %3243
  %3269 = and i32 %3267, 31
  %3270 = shl i32 1, %3269
  %3271 = xor i32 %3270, %3266
  %3272 = mul i32 %3268, 72
  %3273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.f32 %3273, 0
  %3275 = extractvalue %dx.types.ResRet.f32 %3273, 1
  %3276 = extractvalue %dx.types.ResRet.f32 %3273, 2
  %3277 = add i32 %3272, 12
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = add i32 %3272, 16
  %3281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3280, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.f32 %3281, 0
  %3283 = extractvalue %dx.types.ResRet.f32 %3281, 1
  %3284 = extractvalue %dx.types.ResRet.f32 %3281, 2
  %3285 = add i32 %3272, 28
  %3286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.f32 %3286, 0
  %3288 = add i32 %3272, 32
  %3289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3288, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.f32 %3289, 0
  %3291 = extractvalue %dx.types.ResRet.f32 %3289, 1
  %3292 = extractvalue %dx.types.ResRet.f32 %3289, 2
  %3293 = extractvalue %dx.types.ResRet.f32 %3289, 3
  %3294 = add i32 %3272, 48
  %3295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.ResRet.f32 %3295, 1
  %3298 = add i32 %3272, 56
  %3299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.f32 %3299, 0
  %3301 = extractvalue %dx.types.ResRet.f32 %3299, 1
  %3302 = add i32 %3272, 64
  %3303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.f32 %3303, 0
  %3305 = extractvalue %dx.types.ResRet.f32 %3303, 1
  %3306 = mul i32 %3268, 60
  %3307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.f32 %3307, 0
  %3309 = extractvalue %dx.types.ResRet.f32 %3307, 1
  %3310 = extractvalue %dx.types.ResRet.f32 %3307, 2
  %3311 = add i32 %3306, 12
  %3312 = add i32 %3306, 48
  %3313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 0
  %3315 = extractvalue %dx.types.ResRet.f32 %3313, 1
  %3316 = extractvalue %dx.types.ResRet.f32 %3313, 2
  %3317 = and i32 %3279, 32767
  %3318 = bitcast float %3274 to i32
  %3319 = icmp eq i32 %3318, -1
  %3320 = bitcast float %3275 to i32
  %3321 = and i32 %3279, 32768
  %3322 = icmp ne i32 %3321, 0
  %3323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3324 = extractvalue %dx.types.CBufRet.f32 %3323, 0
  %3325 = extractvalue %dx.types.CBufRet.f32 %3323, 1
  %3326 = extractvalue %dx.types.CBufRet.f32 %3323, 2
  %3327 = fsub fast float %3308, %3324
  %3328 = fsub fast float %3309, %3325
  %3329 = fsub fast float %3310, %3326
  %3330 = fsub fast float %129, %3327
  %3331 = fsub fast float %130, %3328
  %3332 = fsub fast float %131, %3329
  %3333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  %3335 = extractvalue %dx.types.ResRet.f32 %3333, 1
  %3336 = extractvalue %dx.types.ResRet.f32 %3333, 2
  %3337 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3331, float %3332, float %3334, float %3335, float %3336)  ; Dot3(ax,ay,az,bx,by,bz)
  %3338 = add i32 %3306, 24
  %3339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.f32 %3339, 0
  %3341 = extractvalue %dx.types.ResRet.f32 %3339, 1
  %3342 = extractvalue %dx.types.ResRet.f32 %3339, 2
  %3343 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3331, float %3332, float %3340, float %3341, float %3342)  ; Dot3(ax,ay,az,bx,by,bz)
  %3344 = add i32 %3306, 36
  %3345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.f32 %3345, 0
  %3347 = extractvalue %dx.types.ResRet.f32 %3345, 1
  %3348 = extractvalue %dx.types.ResRet.f32 %3345, 2
  %3349 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3331, float %3332, float %3346, float %3347, float %3348)  ; Dot3(ax,ay,az,bx,by,bz)
  %3350 = call float @dx.op.unary.f32(i32 6, float %3337)  ; FAbs(value)
  %3351 = call float @dx.op.unary.f32(i32 6, float %3343)  ; FAbs(value)
  %3352 = call float @dx.op.unary.f32(i32 6, float %3349)  ; FAbs(value)
  %3353 = fsub fast float %3314, %3350
  %3354 = fsub fast float %3315, %3351
  %3355 = fsub fast float %3316, %3352
  %3356 = fmul fast float %3353, %3282
  %3357 = fmul fast float %3354, %3283
  %3358 = fmul fast float %3355, %3284
  %3359 = call float @dx.op.binary.f32(i32 36, float %3357, float %3358)  ; FMin(a,b)
  %3360 = call float @dx.op.binary.f32(i32 36, float %3356, float %3359)  ; FMin(a,b)
  %3361 = call float @dx.op.unary.f32(i32 7, float %3360)  ; Saturate(value)
  %3362 = call float @dx.op.binary.f32(i32 36, float %3265, float %3361)  ; FMin(a,b)
  %3363 = uitofp i1 %3322 to float
  %3364 = fsub fast float 1.000000e+00, %3363
  %3365 = fmul fast float %3362, %3364
  %3366 = fcmp fast ogt float %3365, 0.000000e+00
  br i1 %3366, label %3373, label %3367

; <label>:3367                                    ; preds = %3515, %3261
  %3368 = phi float [ %3579, %3515 ], [ %3262, %3261 ]
  %3369 = phi float [ %3580, %3515 ], [ %3263, %3261 ]
  %3370 = phi float [ %3581, %3515 ], [ %3264, %3261 ]
  %3371 = phi float [ %3582, %3515 ], [ %3265, %3261 ]
  %3372 = icmp eq i32 %3266, %3270
  br i1 %3372, label %3583, label %3261

; <label>:3373                                    ; preds = %3261
  br i1 %3319, label %3431, label %3374

; <label>:3374                                    ; preds = %3373
  %3375 = fsub fast float -0.000000e+00, %3334
  %3376 = fsub fast float -0.000000e+00, %3335
  %3377 = fsub fast float -0.000000e+00, %3336
  %3378 = call float @dx.op.dot3.f32(i32 55, float %3214, float %3215, float %3216, float %3375, float %3376, float %3377)  ; Dot3(ax,ay,az,bx,by,bz)
  %3379 = fsub fast float -0.000000e+00, %3378
  %3380 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3331, float %3332, float %3375, float %3376, float %3377)  ; Dot3(ax,ay,az,bx,by,bz)
  %3381 = fadd fast float %3380, %3297
  %3382 = fadd fast float %3296, %3380
  %3383 = fsub fast float -0.000000e+00, %3382
  %3384 = fcmp ogt float %3378, -0.000000e+00
  %3385 = select i1 %3384, float %3383, float %3381
  %3386 = call float @dx.op.unary.f32(i32 6, float %3379)  ; FAbs(value)
  %3387 = fdiv fast float 1.000000e+00, %3386
  %3388 = fmul fast float %3385, %3387
  %3389 = call float @dx.op.binary.f32(i32 35, float %3388, float 0.000000e+00)  ; FMax(a,b)
  %3390 = fsub fast float -0.000000e+00, %3340
  %3391 = fsub fast float -0.000000e+00, %3341
  %3392 = fsub fast float -0.000000e+00, %3342
  %3393 = call float @dx.op.dot3.f32(i32 55, float %3214, float %3215, float %3216, float %3390, float %3391, float %3392)  ; Dot3(ax,ay,az,bx,by,bz)
  %3394 = fsub fast float -0.000000e+00, %3393
  %3395 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3331, float %3332, float %3390, float %3391, float %3392)  ; Dot3(ax,ay,az,bx,by,bz)
  %3396 = fadd fast float %3395, %3301
  %3397 = fadd fast float %3300, %3395
  %3398 = fsub fast float -0.000000e+00, %3397
  %3399 = fcmp ogt float %3393, -0.000000e+00
  %3400 = select i1 %3399, float %3398, float %3396
  %3401 = call float @dx.op.unary.f32(i32 6, float %3394)  ; FAbs(value)
  %3402 = fdiv fast float 1.000000e+00, %3401
  %3403 = fmul fast float %3400, %3402
  %3404 = call float @dx.op.binary.f32(i32 35, float %3403, float 0.000000e+00)  ; FMax(a,b)
  %3405 = fsub fast float -0.000000e+00, %3346
  %3406 = fsub fast float -0.000000e+00, %3347
  %3407 = fsub fast float -0.000000e+00, %3348
  %3408 = call float @dx.op.dot3.f32(i32 55, float %3214, float %3215, float %3216, float %3405, float %3406, float %3407)  ; Dot3(ax,ay,az,bx,by,bz)
  %3409 = fsub fast float -0.000000e+00, %3408
  %3410 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3331, float %3332, float %3405, float %3406, float %3407)  ; Dot3(ax,ay,az,bx,by,bz)
  %3411 = fadd fast float %3410, %3305
  %3412 = fadd fast float %3304, %3410
  %3413 = fsub fast float -0.000000e+00, %3412
  %3414 = fcmp ogt float %3408, -0.000000e+00
  %3415 = select i1 %3414, float %3413, float %3411
  %3416 = call float @dx.op.unary.f32(i32 6, float %3409)  ; FAbs(value)
  %3417 = fdiv fast float 1.000000e+00, %3416
  %3418 = fmul fast float %3415, %3417
  %3419 = call float @dx.op.binary.f32(i32 35, float %3418, float 0.000000e+00)  ; FMax(a,b)
  %3420 = call float @dx.op.binary.f32(i32 36, float %3404, float %3419)  ; FMin(a,b)
  %3421 = call float @dx.op.binary.f32(i32 36, float %3389, float %3420)  ; FMin(a,b)
  %3422 = fmul fast float %3421, %3214
  %3423 = fmul fast float %3421, %3215
  %3424 = fmul fast float %3421, %3216
  %3425 = fadd fast float %3422, %129
  %3426 = fadd fast float %3423, %130
  %3427 = fadd fast float %3424, %131
  %3428 = fsub fast float %3425, %3274
  %3429 = fsub fast float %3426, %3275
  %3430 = fsub fast float %3427, %3276
  br label %3438

; <label>:3431                                    ; preds = %3373
  %3432 = fmul fast float %3214, 8.096000e+03
  %3433 = fmul fast float %3215, 8.096000e+03
  %3434 = fmul fast float %3216, 8.096000e+03
  %3435 = fadd fast float %3432, %129
  %3436 = fadd fast float %3433, %130
  %3437 = fadd fast float %3434, %131
  br label %3438

; <label>:3438                                    ; preds = %3431, %3374
  %3439 = phi float [ %3214, %3431 ], [ %3428, %3374 ]
  %3440 = phi float [ %3215, %3431 ], [ %3429, %3374 ]
  %3441 = phi float [ %3216, %3431 ], [ %3430, %3374 ]
  %3442 = phi float [ %3435, %3431 ], [ %3425, %3374 ]
  %3443 = phi float [ %3436, %3431 ], [ %3426, %3374 ]
  %3444 = phi float [ %3437, %3431 ], [ %3427, %3374 ]
  %3445 = fcmp fast olt float %3293, 1.000000e+00
  br i1 %3445, label %3446, label %3477, !dx.controlflow.hints !94

; <label>:3446                                    ; preds = %3438
  %3447 = fmul fast float %3441, %3291
  %3448 = fmul fast float %3440, %3292
  %3449 = fsub fast float %3447, %3448
  %3450 = fmul fast float %3439, %3292
  %3451 = fmul fast float %3441, %3290
  %3452 = fsub fast float %3450, %3451
  %3453 = fmul fast float %3440, %3290
  %3454 = fmul fast float %3439, %3291
  %3455 = fsub fast float %3453, %3454
  %3456 = fmul fast float %3449, 2.000000e+00
  %3457 = fmul fast float %3452, 2.000000e+00
  %3458 = fmul fast float %3455, 2.000000e+00
  %3459 = fmul fast float %3456, %3293
  %3460 = fmul fast float %3457, %3293
  %3461 = fmul fast float %3458, %3293
  %3462 = fmul fast float %3458, %3291
  %3463 = fmul fast float %3457, %3292
  %3464 = fmul fast float %3456, %3292
  %3465 = fmul fast float %3458, %3290
  %3466 = fmul fast float %3457, %3290
  %3467 = fmul fast float %3456, %3291
  %3468 = fadd fast float %3462, %3439
  %3469 = fadd fast float %3468, %3459
  %3470 = fsub fast float %3469, %3463
  %3471 = fsub fast float %3440, %3465
  %3472 = fadd fast float %3471, %3460
  %3473 = fadd fast float %3472, %3464
  %3474 = fadd fast float %3461, %3441
  %3475 = fsub fast float %3474, %3467
  %3476 = fadd fast float %3475, %3466
  br label %3477

; <label>:3477                                    ; preds = %3446, %3438
  %3478 = phi float [ %3470, %3446 ], [ %3439, %3438 ]
  %3479 = phi float [ %3473, %3446 ], [ %3440, %3438 ]
  %3480 = phi float [ %3476, %3446 ], [ %3441, %3438 ]
  br i1 %3319, label %3512, label %3481

; <label>:3481                                    ; preds = %3477
  %3482 = fmul fast float %1810, 0x400187C840000000
  %3483 = fadd fast float %3482, 0xC00EFC2120000000
  %3484 = fmul fast float %3483, %1810
  %3485 = fadd fast float %3484, 0x3FE5D16340000000
  %3486 = fmul fast float %3485, %1810
  %3487 = fadd fast float %3486, 1.000000e+00
  %3488 = call float @dx.op.unary.f32(i32 7, float %3487)  ; Saturate(value)
  %3489 = fsub fast float %3442, %129
  %3490 = fsub fast float %3443, %130
  %3491 = fsub fast float %3444, %131
  %3492 = fsub fast float %3442, %3274
  %3493 = fsub fast float %3443, %3275
  %3494 = fsub fast float %3444, %3276
  %3495 = call float @dx.op.dot3.f32(i32 55, float %3489, float %3490, float %3491, float %3489, float %3490, float %3491)  ; Dot3(ax,ay,az,bx,by,bz)
  %3496 = call float @dx.op.dot3.f32(i32 55, float %3492, float %3493, float %3494, float %3492, float %3493, float %3494)  ; Dot3(ax,ay,az,bx,by,bz)
  %3497 = fadd fast float %3496, 0x3EE4F8B580000000
  %3498 = fdiv fast float %3495, %3497
  %3499 = bitcast float %3498 to i32
  %3500 = ashr i32 %3499, 1
  %3501 = add nsw i32 %3500, 532487669
  %3502 = bitcast i32 %3501 to float
  %3503 = fmul fast float %3502, %3488
  %3504 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  %3505 = fmul fast float %3504, 0x4009981AE0000000
  %3506 = fsub fast float 0x40111BBD80000000, %3505
  %3507 = fmul fast float %3506, %3504
  %3508 = fadd fast float %3507, 0xC0009F6020000000
  %3509 = fmul fast float %3508, %3504
  %3510 = fadd fast float %3509, 1.000000e+00
  %3511 = call float @dx.op.unary.f32(i32 7, float %3510)  ; Saturate(value)
  br label %3515

; <label>:3512                                    ; preds = %3477
  %3513 = icmp ne i32 %3320, -1
  %3514 = zext i1 %3513 to i32
  br label %3515

; <label>:3515                                    ; preds = %3512, %3481
  %3516 = phi float [ %1810, %3512 ], [ %3511, %3481 ]
  %3517 = phi i32 [ %3514, %3512 ], [ 0, %3481 ]
  %3518 = fmul float %3516, 5.000000e+00
  %3519 = fsub float 5.000000e+00, %3518
  %3520 = icmp ne i32 %3517, 0
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 3
  %3523 = fadd fast float %3522, %3519
  %3524 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3523)  ; FMax(a,b)
  %3525 = call float @dx.op.unary.f32(i32 6, float %3478)  ; FAbs(value)
  %3526 = call float @dx.op.unary.f32(i32 6, float %3479)  ; FAbs(value)
  %3527 = fadd fast float %3526, %3525
  %3528 = call float @dx.op.unary.f32(i32 6, float %3480)  ; FAbs(value)
  %3529 = fadd fast float %3527, %3528
  %3530 = fcmp fast oeq float %3529, 0.000000e+00
  %3531 = fdiv fast float 1.000000e+00, %3529
  %3532 = select i1 %3530, float 1.000000e+00, float %3531
  %3533 = fmul fast float %3532, %3478
  %3534 = fmul fast float %3532, %3479
  %3535 = call float @dx.op.unary.f32(i32 6, float %3534)  ; FAbs(value)
  %3536 = call float @dx.op.unary.f32(i32 6, float %3533)  ; FAbs(value)
  %3537 = fsub fast float 1.000000e+00, %3535
  %3538 = fsub fast float 1.000000e+00, %3536
  %3539 = fcmp fast oge float %3533, 0.000000e+00
  %3540 = fcmp fast oge float %3534, 0.000000e+00
  %3541 = select i1 %3539, float 1.000000e+00, float -1.000000e+00
  %3542 = select i1 %3540, float 1.000000e+00, float -1.000000e+00
  %3543 = fcmp fast ole float %3480, 0.000000e+00
  %3544 = fmul fast float %3541, %3537
  %3545 = fmul fast float %3542, %3538
  %3546 = select i1 %3543, float %3544, float %3533
  %3547 = select i1 %3543, float %3545, float %3534
  %3548 = fmul fast float %3546, 5.000000e-01
  %3549 = fmul fast float %3547, 5.000000e-01
  %3550 = fadd fast float %3548, 5.000000e-01
  %3551 = fadd fast float %3549, 5.000000e-01
  %3552 = uitofp i32 %3317 to float
  %3553 = call float @dx.op.binary.f32(i32 36, float %3524, float 3.000000e+00)  ; FMin(a,b)
  %3554 = fadd fast float %3553, 2.000000e+00
  %3555 = call float @dx.op.unary.f32(i32 21, float %3554)  ; Exp(value)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3521, 1
  %3557 = fmul fast float %3556, %3555
  %3558 = fmul fast float %3557, 2.000000e+00
  %3559 = fsub fast float 1.000000e+00, %3558
  %3560 = fmul fast float %3550, %3559
  %3561 = fmul fast float %3551, %3559
  %3562 = fadd fast float %3560, %3557
  %3563 = fadd fast float %3561, %3557
  %3564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %46, float %3562, float %3563, float %3552, float undef, i32 0, i32 0, i32 undef, float %3524)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3565 = extractvalue %dx.types.ResRet.f32 %3564, 0
  %3566 = extractvalue %dx.types.ResRet.f32 %3564, 1
  %3567 = extractvalue %dx.types.ResRet.f32 %3564, 2
  %3568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3569 = extractvalue %dx.types.CBufRet.f32 %3568, 3
  %3570 = fmul fast float %3569, %3287
  %3571 = call float @dx.op.binary.f32(i32 36, float %3033, float %3570)  ; FMin(a,b)
  %3572 = select i1 %3520, float %3571, float %3570
  %3573 = fmul fast float %3565, %3365
  %3574 = fmul fast float %3573, %3572
  %3575 = fmul fast float %3566, %3365
  %3576 = fmul fast float %3575, %3572
  %3577 = fmul fast float %3567, %3365
  %3578 = fmul fast float %3577, %3572
  %3579 = fadd fast float %3574, %3262
  %3580 = fadd fast float %3576, %3263
  %3581 = fadd fast float %3578, %3264
  %3582 = fsub fast float %3265, %3365
  br label %3367

; <label>:3583                                    ; preds = %3367
  br label %3584

; <label>:3584                                    ; preds = %3583, %3231
  %3585 = phi float [ %3232, %3231 ], [ %3368, %3583 ]
  %3586 = phi float [ %3233, %3231 ], [ %3369, %3583 ]
  %3587 = phi float [ %3234, %3231 ], [ %3370, %3583 ]
  %3588 = phi float [ %3235, %3231 ], [ %3371, %3583 ]
  %3589 = add i32 %3236, 1
  %3590 = icmp ugt i32 %3589, %3228
  br i1 %3590, label %3591, label %3231, !llvm.loop !95

; <label>:3591                                    ; preds = %3584
  br label %3592

; <label>:3592                                    ; preds = %3591, %3213
  %3593 = phi float [ 0.000000e+00, %3213 ], [ %3585, %3591 ]
  %3594 = phi float [ 0.000000e+00, %3213 ], [ %3586, %3591 ]
  %3595 = phi float [ 0.000000e+00, %3213 ], [ %3587, %3591 ]
  %3596 = call float @dx.op.dot3.f32(i32 55, float %3593, float %3594, float %3595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3597 = select i1 %219, float 0.000000e+00, float %3593
  %3598 = select i1 %219, float %3596, float %3594
  %3599 = select i1 %219, float 0.000000e+00, float %3595
  %3600 = fcmp fast olt float %3166, 0.000000e+00
  %3601 = call float @dx.op.unary.f32(i32 6, float %3166)  ; FAbs(value)
  %3602 = fmul fast float %3601, %3095
  %3603 = fmul fast float %3601, %3096
  %3604 = fmul fast float %3601, %3097
  %3605 = select i1 %3600, float %3095, float %3602
  %3606 = select i1 %3600, float %3096, float %3603
  %3607 = select i1 %3600, float %3097, float %3604
  %3608 = fsub fast float 1.000000e+00, %3601
  %3609 = call float @dx.op.unary.f32(i32 7, float %3608)  ; Saturate(value)
  %3610 = fmul fast float %3609, %3597
  %3611 = fmul fast float %3609, %3598
  %3612 = fmul fast float %3609, %3599
  %3613 = fadd fast float %3605, %3610
  %3614 = fadd fast float %3606, %3611
  %3615 = fadd fast float %3607, %3612
  br label %3616

; <label>:3616                                    ; preds = %3592, %3149
  %3617 = phi float [ %3095, %3149 ], [ %3613, %3592 ]
  %3618 = phi float [ %3096, %3149 ], [ %3614, %3592 ]
  %3619 = phi float [ %3097, %3149 ], [ %3615, %3592 ]
  %3620 = fmul fast float %3155, %3091
  %3621 = fmul fast float %3155, %3092
  %3622 = fmul fast float %3155, %3093
  %3623 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1808, float %1809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3624 = fcmp fast ogt float %3623, 0x3E7FF19E20000000
  %3625 = fdiv fast float 1.000000e+00, %3623
  %3626 = select i1 %3624, float %3625, float 0.000000e+00
  %3627 = fmul fast float %3626, %1807
  %3628 = fmul fast float %3626, %1808
  %3629 = fmul fast float %3626, %1809
  %3630 = fadd fast float %3627, -1.000000e+00
  %3631 = fadd fast float %3628, -1.000000e+00
  %3632 = fadd fast float %3629, -1.000000e+00
  %3633 = fmul fast float %3630, 5.000000e-01
  %3634 = fmul fast float %3631, 5.000000e-01
  %3635 = fmul fast float %3632, 5.000000e-01
  %3636 = fadd fast float %3633, 1.000000e+00
  %3637 = fadd fast float %3634, 1.000000e+00
  %3638 = fadd fast float %3635, 1.000000e+00
  %3639 = call float @dx.op.binary.f32(i32 35, float %1814, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3640 = fdiv fast float %922, %3639
  %3641 = fcmp fast olt float %1514, 1.270000e+02
  %3642 = fcmp fast olt float %1515, 1.270000e+02
  %3643 = fcmp fast olt float %1516, 1.270000e+02
  %3644 = fmul fast float %1514, 0xBFF7154760000000
  %3645 = fmul fast float %3644, %3640
  %3646 = fmul fast float %1515, 0xBFF7154760000000
  %3647 = fmul fast float %3646, %3640
  %3648 = fmul fast float %1516, 0xBFF7154760000000
  %3649 = fmul fast float %3648, %3640
  %3650 = call float @dx.op.unary.f32(i32 21, float %3645)  ; Exp(value)
  %3651 = call float @dx.op.unary.f32(i32 21, float %3647)  ; Exp(value)
  %3652 = call float @dx.op.unary.f32(i32 21, float %3649)  ; Exp(value)
  %3653 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3654 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  %3655 = call float @dx.op.unary.f32(i32 7, float %3652)  ; Saturate(value)
  %3656 = select i1 %3641, float %3653, float 0.000000e+00
  %3657 = select i1 %3642, float %3654, float 0.000000e+00
  %3658 = select i1 %3643, float %3655, float 0.000000e+00
  %3659 = fmul fast float %3656, %3155
  %3660 = fmul fast float %3657, %3155
  %3661 = fmul fast float %3658, %3155
  %3662 = fadd fast float %3659, -1.000000e+00
  %3663 = fadd fast float %3660, -1.000000e+00
  %3664 = fadd fast float %3661, -1.000000e+00
  %3665 = fmul fast float %3617, %3150
  %3666 = fmul fast float %3618, %3151
  %3667 = fmul fast float %3619, %3152
  %3668 = fsub fast float 1.000000e+00, %1814
  %3669 = bitcast float %3668 to i32
  %3670 = sitofp i32 %3669 to float
  %3671 = fmul fast float %3670, 5.000000e+00
  %3672 = fadd fast float %3671, 0xC1EFBF8940000000
  %3673 = fptosi float %3672 to i32
  %3674 = bitcast i32 %3673 to float
  %3675 = fmul fast float %3674, %1465
  %3676 = fmul fast float %3091, %3675
  %3677 = fmul fast float %3676, %3155
  %3678 = fmul fast float %3677, %3636
  %3679 = fmul fast float %3092, %3675
  %3680 = fmul fast float %3679, %3155
  %3681 = fmul fast float %3680, %3637
  %3682 = fmul fast float %3093, %3675
  %3683 = fmul fast float %3682, %3155
  %3684 = fmul fast float %3683, %3638
  %3685 = fmul fast float %3620, %1486
  %3686 = fmul fast float %3621, %1486
  %3687 = fmul fast float %3622, %1486
  %3688 = fadd fast float %3665, %1467
  %3689 = fadd fast float %3688, %3678
  %3690 = fmul fast float %3689, %1486
  %3691 = fadd fast float %3666, %1468
  %3692 = fadd fast float %3691, %3681
  %3693 = fmul fast float %3692, %1486
  %3694 = fadd fast float %3667, %1469
  %3695 = fadd fast float %3694, %3684
  %3696 = fmul fast float %3695, %1486
  %3697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3698 = extractvalue %dx.types.CBufRet.f32 %3697, 3
  %3699 = fcmp fast oeq float %3698, 0.000000e+00
  br i1 %3699, label %5178, label %3700

; <label>:3700                                    ; preds = %3616
  %3701 = extractvalue %dx.types.CBufRet.f32 %3697, 0
  %3702 = extractvalue %dx.types.CBufRet.f32 %3697, 1
  %3703 = extractvalue %dx.types.CBufRet.f32 %3697, 2
  %3704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3705 = extractvalue %dx.types.CBufRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.CBufRet.f32 %3704, 1
  %3707 = extractvalue %dx.types.CBufRet.f32 %3704, 2
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.CBufRet.f32 %3708, 1
  %3711 = call float @dx.op.dot3.f32(i32 55, float %3705, float %3706, float %3707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3712 = select i1 %219, float %3709, float %3705
  %3713 = select i1 %219, float %3711, float %3706
  %3714 = select i1 %219, float %3710, float %3707
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 2
  %3717 = fmul fast float %3716, %59
  %3718 = fmul fast float %3716, %60
  %3719 = fmul fast float %3716, %61
  %3720 = fadd fast float %3717, %129
  %3721 = fadd fast float %3718, %130
  %3722 = fadd fast float %3719, %131
  %3723 = fcmp fast olt float %3698, 0.000000e+00
  br i1 %3723, label %4819, label %3724

; <label>:3724                                    ; preds = %3700
  %3725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3726 = extractvalue %dx.types.CBufRet.f32 %3725, 0
  %3727 = extractvalue %dx.types.CBufRet.f32 %3725, 1
  %3728 = extractvalue %dx.types.CBufRet.f32 %3725, 2
  %3729 = extractvalue %dx.types.CBufRet.f32 %3725, 3
  %3730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.CBufRet.f32 %3730, 1
  %3733 = extractvalue %dx.types.CBufRet.f32 %3730, 2
  %3734 = extractvalue %dx.types.CBufRet.f32 %3730, 3
  %3735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3736 = extractvalue %dx.types.CBufRet.f32 %3735, 0
  %3737 = extractvalue %dx.types.CBufRet.f32 %3735, 1
  %3738 = extractvalue %dx.types.CBufRet.f32 %3735, 2
  %3739 = extractvalue %dx.types.CBufRet.f32 %3735, 3
  %3740 = fmul fast float %3726, %3720
  %3741 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3727, float %3740)  ; FMad(a,b,c)
  %3742 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3728, float %3741)  ; FMad(a,b,c)
  %3743 = fadd fast float %3742, %3729
  %3744 = fmul fast float %3731, %3720
  %3745 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3732, float %3744)  ; FMad(a,b,c)
  %3746 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3733, float %3745)  ; FMad(a,b,c)
  %3747 = fadd fast float %3746, %3734
  %3748 = fmul fast float %3736, %3720
  %3749 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3737, float %3748)  ; FMad(a,b,c)
  %3750 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3738, float %3749)  ; FMad(a,b,c)
  %3751 = fadd fast float %3750, %3739
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.CBufRet.f32 %3752, 1
  %3755 = extractvalue %dx.types.CBufRet.f32 %3752, 3
  %3756 = fmul fast float %3755, %3743
  %3757 = fmul fast float %3755, %3747
  %3758 = fadd fast float %3756, %3753
  %3759 = fadd fast float %3757, %3754
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 0
  %3762 = extractvalue %dx.types.CBufRet.f32 %3760, 1
  %3763 = extractvalue %dx.types.CBufRet.f32 %3760, 3
  %3764 = fmul fast float %3763, %3743
  %3765 = fmul fast float %3763, %3747
  %3766 = fadd fast float %3764, %3761
  %3767 = fadd fast float %3765, %3762
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3770 = fsub fast float %3769, %3751
  %3771 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3772 = fmul fast float %3770, %3771
  %3773 = fsub fast float 1.000000e+00, %3772
  %3774 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  %3775 = extractvalue %dx.types.CBufRet.f32 %3760, 2
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 2
  %3778 = fadd fast float %3777, %3775
  %3779 = fcmp fast ogt float %3778, 0.000000e+00
  br i1 %3779, label %3780, label %3804

; <label>:3780                                    ; preds = %3724
  %3781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.f32 %3781, 0
  %3783 = extractvalue %dx.types.CBufRet.f32 %3781, 1
  %3784 = fsub fast float %3766, %3782
  %3785 = fsub fast float %3767, %3783
  %3786 = fcmp fast olt float %3784, 0.000000e+00
  %3787 = fcmp fast olt float %3785, 0.000000e+00
  %3788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3789 = extractvalue %dx.types.CBufRet.f32 %3788, 0
  %3790 = extractvalue %dx.types.CBufRet.f32 %3788, 1
  %3791 = extractvalue %dx.types.CBufRet.f32 %3788, 2
  %3792 = extractvalue %dx.types.CBufRet.f32 %3788, 3
  %3793 = select i1 %3786, float %3789, float %3791
  %3794 = select i1 %3787, float %3790, float %3792
  %3795 = fmul fast float %3793, %3784
  %3796 = fmul fast float %3794, %3785
  %3797 = call float @dx.op.unary.f32(i32 6, float %3795)  ; FAbs(value)
  %3798 = call float @dx.op.unary.f32(i32 6, float %3796)  ; FAbs(value)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3715, 0
  %3800 = call float @dx.op.binary.f32(i32 35, float %3797, float %3798)  ; FMax(a,b)
  %3801 = fsub fast float %3799, %3800
  %3802 = call float @dx.op.unary.f32(i32 7, float %3801)  ; Saturate(value)
  %3803 = fmul fast float %3802, %3774
  br label %3804

; <label>:3804                                    ; preds = %3780, %3724
  %3805 = phi float [ %3803, %3780 ], [ 0.000000e+00, %3724 ]
  %3806 = extractvalue %dx.types.CBufRet.f32 %3752, 2
  %3807 = extractvalue %dx.types.CBufRet.f32 %3776, 1
  %3808 = fadd fast float %3807, %3806
  %3809 = fcmp fast ogt float %3808, 0.000000e+00
  %3810 = extractvalue %dx.types.CBufRet.f32 %3715, 0
  br i1 %3809, label %3811, label %3834

; <label>:3811                                    ; preds = %3804
  %3812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3812, 0
  %3814 = extractvalue %dx.types.CBufRet.f32 %3812, 1
  %3815 = fsub fast float %3758, %3813
  %3816 = fsub fast float %3759, %3814
  %3817 = fcmp fast olt float %3815, 0.000000e+00
  %3818 = fcmp fast olt float %3816, 0.000000e+00
  %3819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3820 = extractvalue %dx.types.CBufRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.CBufRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.CBufRet.f32 %3819, 2
  %3823 = extractvalue %dx.types.CBufRet.f32 %3819, 3
  %3824 = select i1 %3817, float %3820, float %3822
  %3825 = select i1 %3818, float %3821, float %3823
  %3826 = fmul fast float %3824, %3815
  %3827 = fmul fast float %3825, %3816
  %3828 = call float @dx.op.unary.f32(i32 6, float %3826)  ; FAbs(value)
  %3829 = call float @dx.op.unary.f32(i32 6, float %3827)  ; FAbs(value)
  %3830 = call float @dx.op.binary.f32(i32 35, float %3828, float %3829)  ; FMax(a,b)
  %3831 = fsub fast float %3810, %3830
  %3832 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3833 = fmul fast float %3832, %3774
  br label %3834

; <label>:3834                                    ; preds = %3811, %3804
  %3835 = phi float [ %3833, %3811 ], [ 0.000000e+00, %3804 ]
  %3836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3836, 1
  %3838 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.CBufRet.f32 %3839, 1
  %3842 = fsub fast float %3743, %3840
  %3843 = fsub fast float %3747, %3841
  %3844 = fcmp fast olt float %3842, 0.000000e+00
  %3845 = fcmp fast olt float %3843, 0.000000e+00
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.CBufRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.CBufRet.f32 %3846, 2
  %3850 = extractvalue %dx.types.CBufRet.f32 %3846, 3
  %3851 = select i1 %3844, float %3847, float %3849
  %3852 = select i1 %3845, float %3848, float %3850
  %3853 = fmul fast float %3851, %3842
  %3854 = fmul fast float %3852, %3843
  %3855 = call float @dx.op.unary.f32(i32 6, float %3853)  ; FAbs(value)
  %3856 = call float @dx.op.unary.f32(i32 6, float %3854)  ; FAbs(value)
  %3857 = call float @dx.op.binary.f32(i32 35, float %3855, float %3856)  ; FMax(a,b)
  %3858 = fsub fast float %3810, %3857
  %3859 = call float @dx.op.unary.f32(i32 7, float %3858)  ; Saturate(value)
  %3860 = call float @dx.op.binary.f32(i32 36, float %3859, float %3838)  ; FMin(a,b)
  %3861 = fmul fast float %3860, %3774
  %3862 = fsub fast float %3835, %3861
  %3863 = fsub fast float %3805, %3835
  %3864 = fsub fast float %3863, %3861
  %3865 = call float @dx.op.binary.f32(i32 35, float %3835, float %3805)  ; FMax(a,b)
  %3866 = call float @dx.op.binary.f32(i32 35, float %3861, float %3865)  ; FMax(a,b)
  %3867 = fcmp fast olt float %3866, 1.000000e+00
  br i1 %3867, label %3868, label %4266, !dx.controlflow.hints !97

; <label>:3868                                    ; preds = %3834
  %3869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.f32 %3869, 0
  %3871 = fcmp fast une float %3870, 0.000000e+00
  br i1 %3871, label %3872, label %4266, !dx.controlflow.hints !98

; <label>:3872                                    ; preds = %3868
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.CBufRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.CBufRet.f32 %3873, 2
  %3877 = extractvalue %dx.types.CBufRet.f32 %3873, 3
  %3878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.CBufRet.f32 %3878, 1
  %3881 = extractvalue %dx.types.CBufRet.f32 %3878, 2
  %3882 = extractvalue %dx.types.CBufRet.f32 %3878, 3
  %3883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3884 = extractvalue %dx.types.CBufRet.f32 %3883, 0
  %3885 = extractvalue %dx.types.CBufRet.f32 %3883, 1
  %3886 = extractvalue %dx.types.CBufRet.f32 %3883, 2
  %3887 = extractvalue %dx.types.CBufRet.f32 %3883, 3
  %3888 = fmul fast float %3874, %3720
  %3889 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3875, float %3888)  ; FMad(a,b,c)
  %3890 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3876, float %3889)  ; FMad(a,b,c)
  %3891 = fadd fast float %3890, %3877
  %3892 = fmul fast float %3879, %3720
  %3893 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3880, float %3892)  ; FMad(a,b,c)
  %3894 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3881, float %3893)  ; FMad(a,b,c)
  %3895 = fadd fast float %3894, %3882
  %3896 = fmul fast float %3884, %3720
  %3897 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3885, float %3896)  ; FMad(a,b,c)
  %3898 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3886, float %3897)  ; FMad(a,b,c)
  %3899 = fadd fast float %3898, %3887
  %3900 = fcmp fast oge float %3891, 1.000000e+00
  %3901 = fcmp fast oge float %3895, 1.000000e+00
  %3902 = or i1 %3900, %3901
  %3903 = fcmp fast olt float %3891, 0.000000e+00
  %3904 = fcmp fast olt float %3895, 0.000000e+00
  %3905 = or i1 %3903, %3904
  %3906 = or i1 %3902, %3905
  br i1 %3906, label %4266, label %3907, !dx.controlflow.hints !99

; <label>:3907                                    ; preds = %3872
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.CBufRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.CBufRet.f32 %3908, 2
  %3912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.i32 %3912, 2
  %3914 = uitofp i32 %3913 to float
  %3915 = extractvalue %dx.types.CBufRet.i32 %3912, 3
  %3916 = uitofp i32 %3915 to float
  %3917 = extractvalue %dx.types.CBufRet.f32 %3908, 3
  %3918 = fmul fast float %3917, 2.000000e+00
  %3919 = fsub fast float %3891, %3909
  %3920 = fsub fast float %3895, %3910
  %3921 = fmul fast float %3918, %3919
  %3922 = fmul fast float %3918, %3920
  %3923 = fdiv fast float 1.000000e+00, %3703
  %3924 = fmul fast float %3922, %3923
  %3925 = call float @dx.op.unary.f32(i32 6, float %3924)  ; FAbs(value)
  %3926 = fmul fast float %3911, %3722
  %3927 = fmul fast float %3926, %3918
  %3928 = call float @dx.op.unary.f32(i32 6, float %3927)  ; FAbs(value)
  %3929 = call float @dx.op.unary.f32(i32 6, float %3921)  ; FAbs(value)
  %3930 = call float @dx.op.binary.f32(i32 35, float %3928, float %3925)  ; FMax(a,b)
  %3931 = call float @dx.op.binary.f32(i32 35, float %3929, float %3930)  ; FMax(a,b)
  %3932 = fmul fast float %3931, 2.000000e+00
  %3933 = call float @dx.op.unary.f32(i32 23, float %3932)  ; Log(value)
  %3934 = call float @dx.op.binary.f32(i32 35, float %3933, float %3914)  ; FMax(a,b)
  %3935 = call float @dx.op.unary.f32(i32 22, float %3934)  ; Frc(value)
  %3936 = fadd fast float %3935, 0xBFEA666660000000
  %3937 = fmul fast float %3936, 8.000000e+00
  %3938 = call float @dx.op.unary.f32(i32 7, float %3937)  ; Saturate(value)
  %3939 = call float @dx.op.unary.f32(i32 27, float %3934)  ; Round_ni(value)
  %3940 = fadd fast float %3939, %3938
  %3941 = call float @dx.op.binary.f32(i32 36, float %3940, float %3916)  ; FMin(a,b)
  %3942 = call float @dx.op.unary.f32(i32 27, float %3941)  ; Round_ni(value)
  %3943 = fsub fast float -0.000000e+00, %3942
  %3944 = call float @dx.op.unary.f32(i32 21, float %3943)  ; Exp(value)
  %3945 = fmul fast float %3944, %3918
  %3946 = fmul fast float %3945, %3891
  %3947 = fmul fast float %3945, %3895
  %3948 = fmul fast float %3946, 2.500000e-01
  %3949 = fmul fast float %3947, 2.500000e-01
  %3950 = fadd fast float %3948, 5.000000e-01
  %3951 = fadd fast float %3949, 5.000000e-01
  %3952 = fsub fast float %3916, %3914
  %3953 = fptoui float %3952 to i32
  %3954 = add i32 %3953, 320
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %3954)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = extractvalue %dx.types.CBufRet.f32 %3955, 1
  %3958 = fcmp fast une float %3941, %3916
  %3959 = fsub fast float %3891, %3956
  %3960 = fsub fast float %3895, %3957
  %3961 = call float @dx.op.unary.f32(i32 6, float %3959)  ; FAbs(value)
  %3962 = call float @dx.op.unary.f32(i32 6, float %3960)  ; FAbs(value)
  %3963 = fmul fast float %3961, %3945
  %3964 = fmul fast float %3962, %3945
  %3965 = fcmp fast olt float %3963, 1.000000e+00
  %3966 = fcmp fast olt float %3964, 1.000000e+00
  %3967 = and i1 %3965, %3966
  %3968 = or i1 %3958, %3967
  br i1 %3968, label %3969, label %4266, !dx.controlflow.hints !100

; <label>:3969                                    ; preds = %3907
  %3970 = fmul fast float %3947, 5.000000e-01
  %3971 = fmul fast float %3946, 5.000000e-01
  %3972 = fadd fast float %3970, 5.000000e-01
  %3973 = fadd fast float %3971, 5.000000e-01
  %3974 = sitofp i32 %3913 to float
  %3975 = fsub fast float %3941, %3974
  %3976 = call float @dx.op.unary.f32(i32 27, float %3975)  ; Round_ni(value)
  %3977 = call float @dx.op.unary.f32(i32 22, float %3941)  ; Frc(value)
  %3978 = call float @dx.op.unary.f32(i32 22, float %3973)  ; Frc(value)
  %3979 = call float @dx.op.unary.f32(i32 22, float %3972)  ; Frc(value)
  %3980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %47, float %3978, float %3979, float %3976, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  %3984 = extractvalue %dx.types.ResRet.f32 %3980, 3
  %3985 = fcmp fast ogt float %3977, 0.000000e+00
  br i1 %3985, label %3986, label %4007, !dx.controlflow.hints !101

; <label>:3986                                    ; preds = %3969
  %3987 = fadd fast float %3976, 1.000000e+00
  %3988 = call float @dx.op.unary.f32(i32 22, float %3950)  ; Frc(value)
  %3989 = call float @dx.op.unary.f32(i32 22, float %3951)  ; Frc(value)
  %3990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %47, float %3988, float %3989, float %3987, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3994 = extractvalue %dx.types.ResRet.f32 %3990, 3
  %3995 = fsub fast float %3991, %3981
  %3996 = fsub fast float %3992, %3982
  %3997 = fsub fast float %3993, %3983
  %3998 = fsub fast float %3994, %3984
  %3999 = fmul fast float %3995, %3977
  %4000 = fmul fast float %3996, %3977
  %4001 = fmul fast float %3997, %3977
  %4002 = fmul fast float %3998, %3977
  %4003 = fadd fast float %3999, %3981
  %4004 = fadd fast float %4000, %3982
  %4005 = fadd fast float %4001, %3983
  %4006 = fadd fast float %4002, %3984
  br label %4007

; <label>:4007                                    ; preds = %3986, %3969
  %4008 = phi float [ %4003, %3986 ], [ %3981, %3969 ]
  %4009 = phi float [ %4004, %3986 ], [ %3982, %3969 ]
  %4010 = phi float [ %4005, %3986 ], [ %3983, %3969 ]
  %4011 = phi float [ %4006, %3986 ], [ %3984, %3969 ]
  %4012 = fadd fast float %4008, -5.000000e-01
  %4013 = fadd fast float %4010, -5.000000e-01
  %4014 = fmul fast float %4012, 0xBFD5555560000000
  %4015 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4013, float %4014)  ; FMad(a,b,c)
  %4016 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4009, float 0.000000e+00)  ; FMad(a,b,c)
  %4017 = fadd fast float %4016, %4011
  %4018 = fmul fast float %4012, -7.500000e-01
  %4019 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4013, float %4018)  ; FMad(a,b,c)
  %4020 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4009, float 0.000000e+00)  ; FMad(a,b,c)
  %4021 = fadd fast float %4020, %4011
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 0
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.CBufRet.f32 %4024, 2
  %4028 = extractvalue %dx.types.CBufRet.f32 %4024, 3
  %4029 = fsub fast float %4025, %4015
  %4030 = fsub fast float %4026, %4017
  %4031 = fsub fast float %4027, %4019
  %4032 = fsub fast float %4028, %4021
  %4033 = fmul fast float %4029, %4023
  %4034 = fmul fast float %4030, %4023
  %4035 = fmul fast float %4031, %4023
  %4036 = fmul fast float %4032, %4023
  %4037 = fadd fast float %4033, %4015
  %4038 = fadd fast float %4034, %4017
  %4039 = fadd fast float %4035, %4019
  %4040 = fadd fast float %4036, %4021
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = and i32 %4042, 536870911
  %4044 = uitofp i32 %4043 to float
  %4045 = fmul fast float %4044, %3891
  %4046 = fmul fast float %4044, %3895
  %4047 = fptoui float %4045 to i32
  %4048 = fptoui float %4046 to i32
  %4049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4050 = extractvalue %dx.types.ResRet.i32 %4049, 0
  %4051 = and i32 %4050, 31
  %4052 = lshr i32 %4047, %4051
  %4053 = lshr i32 %4048, %4051
  %4054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.i32 %4054, 0
  %4056 = and i32 %4055, 31
  %4057 = shl i32 1, %4056
  %4058 = call i32 @dx.op.binary.i32(i32 40, i32 %4057, i32 4)  ; UMin(a,b)
  %4059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4060 = extractvalue %dx.types.ResRet.i32 %4059, 0
  %4061 = extractvalue %dx.types.ResRet.i32 %4059, 1
  %4062 = icmp eq i32 %4058, 0
  br i1 %4062, label %4104, label %4063

; <label>:4063                                    ; preds = %4007
  br label %4064

; <label>:4064                                    ; preds = %4092, %4063
  %4065 = phi i32 [ %4095, %4092 ], [ 0, %4063 ]
  %4066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4067 = extractvalue %dx.types.ResRet.i32 %4066, 0
  %4068 = lshr i32 %4067, 16
  %4069 = and i32 %4068, 31
  %4070 = shl i32 %4053, %4069
  %4071 = add i32 %4070, %4052
  %4072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4073 = extractvalue %dx.types.ResRet.i32 %4072, 0
  %4074 = and i32 %4073, 31
  %4075 = shl i32 %4071, %4074
  %4076 = add i32 %4075, %4065
  %4077 = shl i32 %4076, 2
  %4078 = add i32 %4077, 32
  %4079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4078, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.i32 %4079, 0
  %4081 = icmp slt i32 %4080, 0
  %4082 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %4065
  %4083 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %4065
  %4084 = bitcast float* %4082 to i32*
  %4085 = bitcast float* %4083 to i32*
  br i1 %4081, label %4086, label %4092

; <label>:4086                                    ; preds = %4064
  %4087 = and i32 %4080, 1073741823
  %4088 = add nuw nsw i32 %4087, 20
  %4089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4088, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.i32 %4089, 0
  %4091 = extractvalue %dx.types.ResRet.i32 %4089, 1
  br label %4092

; <label>:4092                                    ; preds = %4086, %4064
  %4093 = phi i32 [ %4090, %4086 ], [ %4060, %4064 ]
  %4094 = phi i32 [ %4091, %4086 ], [ %4061, %4064 ]
  store i32 %4093, i32* %4084, align 4
  store i32 %4094, i32* %4085, align 4
  %4095 = add nuw i32 %4065, 1
  %4096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.i32 %4096, 2
  %4098 = icmp eq i32 %4097, 0
  %4099 = icmp ugt i32 %4080, -1073741825
  %4100 = and i1 %4099, %4098
  %4101 = icmp ult i32 %4095, %4058
  %4102 = and i1 %4100, %4101
  br i1 %4102, label %4064, label %4103

; <label>:4103                                    ; preds = %4092
  br label %4104

; <label>:4104                                    ; preds = %4103, %4007
  %4105 = phi i32 [ 0, %4007 ], [ %4095, %4103 ]
  %4106 = extractvalue %dx.types.CBufRet.f32 %3869, 2
  %4107 = fptoui float %4106 to i32
  %4108 = icmp eq i32 %4107, 0
  br i1 %4108, label %4160, label %4109

; <label>:4109                                    ; preds = %4104
  br label %4110

; <label>:4110                                    ; preds = %4155, %4109
  %4111 = phi i32 [ %4156, %4155 ], [ %4105, %4109 ]
  %4112 = phi i32 [ %4157, %4155 ], [ 0, %4109 ]
  %4113 = lshr i32 %4112, 2
  %4114 = and i32 %4112, 3
  %4115 = add nuw nsw i32 %4113, 83
  %4116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %4115)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.i32 %4116, 0
  %4118 = extractvalue %dx.types.CBufRet.i32 %4116, 1
  %4119 = extractvalue %dx.types.CBufRet.i32 %4116, 2
  %4120 = extractvalue %dx.types.CBufRet.i32 %4116, 3
  %4121 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %4117, i32* %4121, align 4
  %4122 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %4118, i32* %4122, align 4
  %4123 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %4119, i32* %4123, align 4
  %4124 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %4120, i32* %4124, align 4
  %4125 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %4114
  %4126 = load i32, i32* %4125, align 4, !tbaa !102, !noalias !106
  %4127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.i32 %4127, 0
  %4129 = lshr i32 %4128, 16
  %4130 = and i32 %4129, 31
  %4131 = shl i32 %4053, %4130
  %4132 = add i32 %4131, %4052
  %4133 = shl i32 %4132, 2
  %4134 = add i32 %4133, %4126
  %4135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4134, i32 undef)  ; BufferLoad(srv,index,wot)
  %4136 = extractvalue %dx.types.ResRet.i32 %4135, 0
  %4137 = icmp eq i32 %4136, 0
  br i1 %4137, label %4155, label %4138

; <label>:4138                                    ; preds = %4110
  %4139 = icmp slt i32 %4136, 0
  %4140 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %4111
  %4141 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %4111
  %4142 = bitcast float* %4140 to i32*
  %4143 = bitcast float* %4141 to i32*
  br i1 %4139, label %4144, label %4151

; <label>:4144                                    ; preds = %4138
  %4145 = and i32 %4136, 1073741823
  %4146 = add i32 %4126, 20
  %4147 = add i32 %4146, %4145
  %4148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.i32 %4148, 0
  %4150 = extractvalue %dx.types.ResRet.i32 %4148, 1
  br label %4151

; <label>:4151                                    ; preds = %4144, %4138
  %4152 = phi i32 [ %4149, %4144 ], [ %4060, %4138 ]
  %4153 = phi i32 [ %4150, %4144 ], [ %4061, %4138 ]
  store i32 %4152, i32* %4142, align 4
  store i32 %4153, i32* %4143, align 4
  %4154 = add i32 %4111, 1
  br label %4155

; <label>:4155                                    ; preds = %4151, %4110
  %4156 = phi i32 [ %4111, %4110 ], [ %4154, %4151 ]
  %4157 = add nuw i32 %4112, 1
  %4158 = icmp eq i32 %4157, %4107
  br i1 %4158, label %4159, label %4110

; <label>:4159                                    ; preds = %4155
  br label %4160

; <label>:4160                                    ; preds = %4159, %4104
  %4161 = phi i32 [ %4105, %4104 ], [ %4156, %4159 ]
  %4162 = icmp eq i32 %4161, 1
  %4163 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 0
  %4164 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 0
  br i1 %4162, label %4165, label %4168

; <label>:4165                                    ; preds = %4160
  %4166 = load float, float* %4163, align 4
  %4167 = load float, float* %4164, align 4
  br label %4195

; <label>:4168                                    ; preds = %4160
  %4169 = load float, float* %4163, align 4
  %4170 = load float, float* %4164, align 4
  %4171 = fdiv fast float 1.000000e+00, %4170
  %4172 = fsub fast float %4169, %4171
  %4173 = icmp ugt i32 %4161, 1
  br i1 %4173, label %4174, label %4190

; <label>:4174                                    ; preds = %4168
  br label %4175

; <label>:4175                                    ; preds = %4175, %4174
  %4176 = phi float [ %4185, %4175 ], [ %4172, %4174 ]
  %4177 = phi float [ %4186, %4175 ], [ %4169, %4174 ]
  %4178 = phi i32 [ %4187, %4175 ], [ 1, %4174 ]
  %4179 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %4178
  %4180 = load float, float* %4179, align 4
  %4181 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %4178
  %4182 = load float, float* %4181, align 4
  %4183 = fdiv fast float 1.000000e+00, %4182
  %4184 = fsub fast float %4180, %4183
  %4185 = call float @dx.op.binary.f32(i32 36, float %4176, float %4184)  ; FMin(a,b)
  %4186 = call float @dx.op.binary.f32(i32 35, float %4177, float %4180)  ; FMax(a,b)
  %4187 = add nuw i32 %4178, 1
  %4188 = icmp eq i32 %4187, %4161
  br i1 %4188, label %4189, label %4175

; <label>:4189                                    ; preds = %4175
  br label %4190

; <label>:4190                                    ; preds = %4189, %4168
  %4191 = phi float [ %4172, %4168 ], [ %4185, %4189 ]
  %4192 = phi float [ %4169, %4168 ], [ %4186, %4189 ]
  %4193 = fsub fast float %4192, %4191
  %4194 = fdiv fast float 1.000000e+00, %4193
  br label %4195

; <label>:4195                                    ; preds = %4190, %4165
  %4196 = phi float [ %4166, %4165 ], [ %4192, %4190 ]
  %4197 = phi float [ %4167, %4165 ], [ %4194, %4190 ]
  %4198 = fadd fast float %3899, %4196
  %4199 = fmul fast float %4198, %4197
  %4200 = call float @dx.op.unary.f32(i32 7, float %4199)  ; Saturate(value)
  %4201 = fmul fast float %4200, 2.000000e+00
  %4202 = fsub fast float 1.000000e+00, %4201
  %4203 = fmul fast float %4037, %4037
  %4204 = fsub fast float %4038, %4203
  %4205 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4204)  ; FMax(a,b)
  %4206 = fdiv fast float 1.000000e+00, %4205
  %4207 = fmul fast float %4038, %4037
  %4208 = fsub fast float %4039, %4207
  %4209 = fsub fast float %4202, %4037
  %4210 = fmul fast float %4202, %4202
  %4211 = fsub fast float %4210, %4038
  %4212 = fmul fast float %4206, %4208
  %4213 = fmul fast float %4212, %4209
  %4214 = fsub fast float %4211, %4213
  %4215 = fmul fast float %4038, %4038
  %4216 = fsub fast float %4040, %4215
  %4217 = fmul fast float %4208, %4208
  %4218 = fmul fast float %4217, %4206
  %4219 = fsub fast float %4216, %4218
  %4220 = fdiv fast float %4214, %4219
  %4221 = fmul fast float %4220, %4208
  %4222 = fsub fast float %4209, %4221
  %4223 = fmul fast float %4222, %4206
  %4224 = fmul fast float %4223, %4037
  %4225 = fsub fast float 1.000000e+00, %4224
  %4226 = fmul fast float %4220, %4038
  %4227 = fsub fast float %4225, %4226
  %4228 = fmul fast float %4223, %4223
  %4229 = fmul fast float %4220, 4.000000e+00
  %4230 = fmul fast float %4229, %4227
  %4231 = fsub fast float %4228, %4230
  %4232 = call float @dx.op.unary.f32(i32 24, float %4231)  ; Sqrt(value)
  %4233 = fcmp fast oge float %4223, 0.000000e+00
  %4234 = fsub fast float -0.000000e+00, %4232
  %4235 = select i1 %4233, float %4234, float %4232
  %4236 = fsub fast float %4235, %4223
  %4237 = fdiv fast float %4236, %4220
  %4238 = fdiv fast float %4227, %4236
  %4239 = fmul fast float %4237, 5.000000e-01
  %4240 = fmul fast float %4238, 2.000000e+00
  %4241 = select i1 %4233, float %4239, float %4240
  %4242 = select i1 %4233, float %4240, float %4239
  %4243 = call float @dx.op.binary.f32(i32 35, float %4241, float %4242)  ; FMax(a,b)
  %4244 = call float @dx.op.binary.f32(i32 36, float %4241, float %4242)  ; FMin(a,b)
  %4245 = fcmp fast ogt float %4202, %4243
  %4246 = fsub fast float %4202, %4244
  %4247 = fsub fast float %4202, %4243
  %4248 = fsub fast float %4243, %4244
  %4249 = select i1 %4245, float %4247, float %4248
  %4250 = fmul float %4246, %4249
  %4251 = select i1 %4245, float %4244, float %4202
  %4252 = fcmp fast ogt float %4202, %4244
  %4253 = fmul fast float %4251, %4243
  %4254 = fadd fast float %4251, %4243
  %4255 = fmul fast float %4254, %4037
  %4256 = fadd fast float %4253, %4038
  %4257 = fsub fast float %4256, %4255
  %4258 = fdiv fast float %4257, %4250
  %4259 = select i1 %4252, float %4258, float 0.000000e+00
  %4260 = fsub fast float 1.000000e+00, %4259
  %4261 = select i1 %4245, float %4260, float %4259
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4022, 3
  %4264 = fmul fast float %4263, %4262
  %4265 = fsub fast float 1.000000e+00, %4264
  br label %4266

; <label>:4266                                    ; preds = %4195, %3907, %3872, %3868, %3834
  %4267 = phi float [ 1.000000e+00, %3834 ], [ %4265, %4195 ], [ 1.000000e+00, %3872 ], [ 1.000000e+00, %3907 ], [ 1.000000e+00, %3868 ]
  %4268 = fcmp fast ogt float %3864, 0.000000e+00
  br i1 %4268, label %4269, label %4431, !dx.controlflow.hints !115

; <label>:4269                                    ; preds = %4266
  %4270 = fadd fast float %3777, %3751
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 2
  %4273 = extractvalue %dx.types.CBufRet.f32 %4271, 3
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 2
  %4276 = call float @dx.op.binary.f32(i32 35, float %4270, float 0.000000e+00)  ; FMax(a,b)
  %4277 = fadd fast float %4276, 0x3F10000000000000
  %4278 = fcmp fast oeq float %4275, 0.000000e+00
  br i1 %4278, label %4279, label %4346

; <label>:4279                                    ; preds = %4269
  %4280 = extractvalue %dx.types.CBufRet.f32 %4271, 1
  %4281 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4282 = fmul fast float %4281, %3766
  %4283 = fmul fast float %4280, %3767
  %4284 = fadd fast float %4282, 5.000000e-01
  %4285 = call float @dx.op.unary.f32(i32 27, float %4284)  ; Round_ni(value)
  %4286 = fadd fast float %4283, 5.000000e-01
  %4287 = call float @dx.op.unary.f32(i32 27, float %4286)  ; Round_ni(value)
  %4288 = fsub fast float %4284, %4285
  %4289 = fsub fast float %4286, %4287
  %4290 = fadd fast float %4285, -5.000000e-01
  %4291 = fadd fast float %4287, -5.000000e-01
  %4292 = fmul fast float %4288, 2.000000e+00
  %4293 = fsub fast float 3.000000e+00, %4292
  %4294 = fadd fast float %4292, 1.000000e+00
  %4295 = fsub fast float 2.000000e+00, %4288
  %4296 = bitcast float %4293 to i32
  %4297 = sub nsw i32 2129859010, %4296
  %4298 = bitcast i32 %4297 to float
  %4299 = fmul fast float %4298, %4295
  %4300 = fadd fast float %4299, -1.000000e+00
  %4301 = bitcast float %4294 to i32
  %4302 = sub nsw i32 2129859010, %4301
  %4303 = bitcast i32 %4302 to float
  %4304 = fmul fast float %4303, %4288
  %4305 = fadd fast float %4304, 1.000000e+00
  %4306 = fmul fast float %4289, 2.000000e+00
  %4307 = fsub fast float 3.000000e+00, %4306
  %4308 = fadd fast float %4306, 1.000000e+00
  %4309 = fsub fast float 2.000000e+00, %4289
  %4310 = bitcast float %4307 to i32
  %4311 = sub nsw i32 2129859010, %4310
  %4312 = bitcast i32 %4311 to float
  %4313 = fmul fast float %4312, %4309
  %4314 = fadd fast float %4313, -1.000000e+00
  %4315 = bitcast float %4308 to i32
  %4316 = sub nsw i32 2129859010, %4315
  %4317 = bitcast i32 %4316 to float
  %4318 = fmul fast float %4317, %4289
  %4319 = fadd fast float %4318, 1.000000e+00
  %4320 = fadd fast float %4300, %4290
  %4321 = fmul fast float %4320, %4272
  %4322 = fadd fast float %4314, %4291
  %4323 = fmul fast float %4322, %4273
  %4324 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %50, float %4321, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float %4277)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4325 = extractvalue %dx.types.ResRet.f32 %4324, 0
  %4326 = fmul fast float %4325, %4293
  %4327 = fadd fast float %4305, %4290
  %4328 = fmul fast float %4327, %4272
  %4329 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %50, float %4328, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float %4277)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4330 = extractvalue %dx.types.ResRet.f32 %4329, 0
  %4331 = fmul fast float %4330, %4294
  %4332 = fadd fast float %4319, %4291
  %4333 = fmul fast float %4332, %4273
  %4334 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %50, float %4321, float %4333, float undef, float undef, i32 0, i32 0, i32 undef, float %4277)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4335 = extractvalue %dx.types.ResRet.f32 %4334, 0
  %4336 = fmul fast float %4335, %4293
  %4337 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %50, float %4328, float %4333, float undef, float undef, i32 0, i32 0, i32 undef, float %4277)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4338 = extractvalue %dx.types.ResRet.f32 %4337, 0
  %4339 = fmul fast float %4338, %4294
  %4340 = fadd fast float %4339, %4336
  %4341 = fmul fast float %4340, %4308
  %4342 = fadd fast float %4331, %4326
  %4343 = fmul fast float %4342, %4307
  %4344 = fadd fast float %4343, %4341
  %4345 = fmul fast float %4344, 6.250000e-02
  br label %4431

; <label>:4346                                    ; preds = %4269
  %4347 = fmul fast float %230, 0x401921FB60000000
  %4348 = call float @dx.op.unary.f32(i32 13, float %4347)  ; Sin(value)
  %4349 = call float @dx.op.unary.f32(i32 12, float %4347)  ; Cos(value)
  %4350 = fsub fast float -0.000000e+00, %4348
  br label %4351

; <label>:4351                                    ; preds = %4400, %4346
  %4352 = phi float [ 0.000000e+00, %4346 ], [ %4395, %4400 ]
  %4353 = phi float [ 0.000000e+00, %4346 ], [ %4397, %4400 ]
  %4354 = phi i32 [ 0, %4346 ], [ %4401, %4400 ]
  %4355 = mul i32 %4354, 2
  %4356 = add i32 0, %4355
  %4357 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4356
  %4358 = load float, float* %4357, align 4
  %4359 = mul i32 %4354, 2
  %4360 = add i32 1, %4359
  %4361 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4360
  %4362 = load float, float* %4361, align 4
  %4363 = fmul fast float %4358, %4349
  %4364 = call float @dx.op.tertiary.f32(i32 46, float %4362, float %4350, float %4363)  ; FMad(a,b,c)
  %4365 = fmul fast float %4358, %4348
  %4366 = call float @dx.op.tertiary.f32(i32 46, float %4362, float %4349, float %4365)  ; FMad(a,b,c)
  %4367 = fmul fast float %4364, %4275
  %4368 = fmul fast float %4366, %4275
  %4369 = fadd fast float %4367, %3766
  %4370 = fadd fast float %4368, %3767
  %4371 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %49, float %4369, float %4370, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.ResRet.f32 %4371, 2
  %4375 = extractvalue %dx.types.ResRet.f32 %4371, 3
  %4376 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 0
  store float %4372, float* %4376, align 4
  %4377 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 1
  store float %4373, float* %4377, align 4
  %4378 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 2
  store float %4374, float* %4378, align 4
  %4379 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 3
  store float %4375, float* %4379, align 4
  %4380 = fsub fast float %4372, %4277
  %4381 = fcmp fast olt float %4380, 0.000000e+00
  %4382 = select i1 %4381, float 0.000000e+00, float 1.000000e+00
  %4383 = fadd fast float %4382, %4352
  %4384 = fmul fast float %4382, %4380
  %4385 = fadd fast float %4384, %4353
  br label %4386

; <label>:4386                                    ; preds = %4386, %4351
  %4387 = phi i32 [ 1, %4351 ], [ %4398, %4386 ]
  %4388 = phi float [ %4385, %4351 ], [ %4397, %4386 ]
  %4389 = phi float [ %4383, %4351 ], [ %4395, %4386 ]
  %4390 = getelementptr [4 x float], [4 x float]* %75, i32 0, i32 %4387
  %4391 = load float, float* %4390, align 4, !tbaa !116, !noalias !106
  %4392 = fsub fast float %4391, %4277
  %4393 = fcmp fast olt float %4392, 0.000000e+00
  %4394 = select i1 %4393, float 0.000000e+00, float 1.000000e+00
  %4395 = fadd fast float %4394, %4389
  %4396 = fmul fast float %4394, %4392
  %4397 = fadd fast float %4396, %4388
  %4398 = add nuw nsw i32 %4387, 1
  %4399 = icmp eq i32 %4398, 4
  br i1 %4399, label %4400, label %4386, !llvm.loop !118

; <label>:4400                                    ; preds = %4386
  %4401 = add nuw nsw i32 %4354, 1
  %4402 = icmp eq i32 %4401, 8
  br i1 %4402, label %4403, label %4351, !llvm.loop !119

; <label>:4403                                    ; preds = %4400
  %4404 = fdiv fast float 1.000000e+00, %4395
  %4405 = fmul fast float %4404, %4397
  %4406 = fdiv fast float 1.000000e+00, %4277
  %4407 = fmul fast float %4405, %4406
  %4408 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4409 = call float @dx.op.binary.f32(i32 35, float %4408, float 0.000000e+00)  ; FMax(a,b)
  %4410 = fmul fast float %4395, 3.125000e-02
  %4411 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4412 = fmul fast float %4411, 2.000000e+00
  %4413 = fadd fast float %4412, -1.000000e+00
  %4414 = fcmp fast ogt float %4413, 0.000000e+00
  %4415 = fcmp fast olt float %4413, 0.000000e+00
  %4416 = zext i1 %4414 to i32
  %4417 = zext i1 %4415 to i32
  %4418 = sub nsw i32 %4416, %4417
  %4419 = sitofp i32 %4418 to float
  %4420 = fmul fast float %4419, %4413
  %4421 = fsub fast float 1.000000e+00, %4420
  %4422 = fmul fast float %4421, %4421
  %4423 = fmul fast float %4422, %4421
  %4424 = fsub fast float %4421, %4423
  %4425 = fmul fast float %4424, %4409
  %4426 = fsub fast float 1.000000e+00, %4423
  %4427 = fsub fast float %4426, %4425
  %4428 = fmul fast float %4419, 5.000000e-01
  %4429 = fmul fast float %4428, %4427
  %4430 = fsub fast float 5.000000e-01, %4429
  br label %4431

; <label>:4431                                    ; preds = %4403, %4279, %4266
  %4432 = phi float [ 1.000000e+00, %4266 ], [ %4345, %4279 ], [ %4430, %4403 ]
  %4433 = fcmp fast ogt float %3862, 0.000000e+00
  br i1 %4433, label %4434, label %4598, !dx.controlflow.hints !120

; <label>:4434                                    ; preds = %4431
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 1
  %4437 = fadd fast float %4436, %3751
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 2
  %4440 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.f32 %4441, 1
  %4443 = call float @dx.op.binary.f32(i32 35, float %4437, float 0.000000e+00)  ; FMax(a,b)
  %4444 = fadd fast float %4443, 0x3F10000000000000
  %4445 = fcmp fast oeq float %4442, 0.000000e+00
  br i1 %4445, label %4446, label %4513

; <label>:4446                                    ; preds = %4434
  %4447 = extractvalue %dx.types.CBufRet.f32 %4438, 1
  %4448 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4449 = fmul fast float %4448, %3758
  %4450 = fmul fast float %4447, %3759
  %4451 = fadd fast float %4449, 5.000000e-01
  %4452 = call float @dx.op.unary.f32(i32 27, float %4451)  ; Round_ni(value)
  %4453 = fadd fast float %4450, 5.000000e-01
  %4454 = call float @dx.op.unary.f32(i32 27, float %4453)  ; Round_ni(value)
  %4455 = fsub fast float %4451, %4452
  %4456 = fsub fast float %4453, %4454
  %4457 = fadd fast float %4452, -5.000000e-01
  %4458 = fadd fast float %4454, -5.000000e-01
  %4459 = fmul fast float %4455, 2.000000e+00
  %4460 = fsub fast float 3.000000e+00, %4459
  %4461 = fadd fast float %4459, 1.000000e+00
  %4462 = fsub fast float 2.000000e+00, %4455
  %4463 = bitcast float %4460 to i32
  %4464 = sub nsw i32 2129859010, %4463
  %4465 = bitcast i32 %4464 to float
  %4466 = fmul fast float %4465, %4462
  %4467 = fadd fast float %4466, -1.000000e+00
  %4468 = bitcast float %4461 to i32
  %4469 = sub nsw i32 2129859010, %4468
  %4470 = bitcast i32 %4469 to float
  %4471 = fmul fast float %4470, %4455
  %4472 = fadd fast float %4471, 1.000000e+00
  %4473 = fmul fast float %4456, 2.000000e+00
  %4474 = fsub fast float 3.000000e+00, %4473
  %4475 = fadd fast float %4473, 1.000000e+00
  %4476 = fsub fast float 2.000000e+00, %4456
  %4477 = bitcast float %4474 to i32
  %4478 = sub nsw i32 2129859010, %4477
  %4479 = bitcast i32 %4478 to float
  %4480 = fmul fast float %4479, %4476
  %4481 = fadd fast float %4480, -1.000000e+00
  %4482 = bitcast float %4475 to i32
  %4483 = sub nsw i32 2129859010, %4482
  %4484 = bitcast i32 %4483 to float
  %4485 = fmul fast float %4484, %4456
  %4486 = fadd fast float %4485, 1.000000e+00
  %4487 = fadd fast float %4467, %4457
  %4488 = fmul fast float %4487, %4439
  %4489 = fadd fast float %4481, %4458
  %4490 = fmul fast float %4489, %4440
  %4491 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %50, float %4488, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float %4444)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = fmul fast float %4492, %4460
  %4494 = fadd fast float %4472, %4457
  %4495 = fmul fast float %4494, %4439
  %4496 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %50, float %4495, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float %4444)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4497 = extractvalue %dx.types.ResRet.f32 %4496, 0
  %4498 = fmul fast float %4497, %4461
  %4499 = fadd fast float %4486, %4458
  %4500 = fmul fast float %4499, %4440
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %50, float %4488, float %4500, float undef, float undef, i32 0, i32 0, i32 undef, float %4444)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = fmul fast float %4502, %4460
  %4504 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %50, float %4495, float %4500, float undef, float undef, i32 0, i32 0, i32 undef, float %4444)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4505 = extractvalue %dx.types.ResRet.f32 %4504, 0
  %4506 = fmul fast float %4505, %4461
  %4507 = fadd fast float %4506, %4503
  %4508 = fmul fast float %4507, %4475
  %4509 = fadd fast float %4498, %4493
  %4510 = fmul fast float %4509, %4474
  %4511 = fadd fast float %4510, %4508
  %4512 = fmul fast float %4511, 6.250000e-02
  br label %4598

; <label>:4513                                    ; preds = %4434
  %4514 = fmul fast float %230, 0x401921FB60000000
  %4515 = call float @dx.op.unary.f32(i32 13, float %4514)  ; Sin(value)
  %4516 = call float @dx.op.unary.f32(i32 12, float %4514)  ; Cos(value)
  %4517 = fsub fast float -0.000000e+00, %4515
  br label %4518

; <label>:4518                                    ; preds = %4567, %4513
  %4519 = phi float [ 0.000000e+00, %4513 ], [ %4562, %4567 ]
  %4520 = phi float [ 0.000000e+00, %4513 ], [ %4564, %4567 ]
  %4521 = phi i32 [ 0, %4513 ], [ %4568, %4567 ]
  %4522 = mul i32 %4521, 2
  %4523 = add i32 0, %4522
  %4524 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4523
  %4525 = load float, float* %4524, align 4
  %4526 = mul i32 %4521, 2
  %4527 = add i32 1, %4526
  %4528 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4527
  %4529 = load float, float* %4528, align 4
  %4530 = fmul fast float %4525, %4516
  %4531 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4517, float %4530)  ; FMad(a,b,c)
  %4532 = fmul fast float %4525, %4515
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4516, float %4532)  ; FMad(a,b,c)
  %4534 = fmul fast float %4531, %4442
  %4535 = fmul fast float %4533, %4442
  %4536 = fadd fast float %4534, %3758
  %4537 = fadd fast float %4535, %3759
  %4538 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %49, float %4536, float %4537, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4539 = extractvalue %dx.types.ResRet.f32 %4538, 0
  %4540 = extractvalue %dx.types.ResRet.f32 %4538, 1
  %4541 = extractvalue %dx.types.ResRet.f32 %4538, 2
  %4542 = extractvalue %dx.types.ResRet.f32 %4538, 3
  %4543 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 0
  store float %4539, float* %4543, align 4
  %4544 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 1
  store float %4540, float* %4544, align 4
  %4545 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 2
  store float %4541, float* %4545, align 4
  %4546 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 3
  store float %4542, float* %4546, align 4
  %4547 = fsub fast float %4539, %4444
  %4548 = fcmp fast olt float %4547, 0.000000e+00
  %4549 = select i1 %4548, float 0.000000e+00, float 1.000000e+00
  %4550 = fadd fast float %4549, %4519
  %4551 = fmul fast float %4549, %4547
  %4552 = fadd fast float %4551, %4520
  br label %4553

; <label>:4553                                    ; preds = %4553, %4518
  %4554 = phi i32 [ 1, %4518 ], [ %4565, %4553 ]
  %4555 = phi float [ %4552, %4518 ], [ %4564, %4553 ]
  %4556 = phi float [ %4550, %4518 ], [ %4562, %4553 ]
  %4557 = getelementptr [4 x float], [4 x float]* %74, i32 0, i32 %4554
  %4558 = load float, float* %4557, align 4, !tbaa !116, !noalias !106
  %4559 = fsub fast float %4558, %4444
  %4560 = fcmp fast olt float %4559, 0.000000e+00
  %4561 = select i1 %4560, float 0.000000e+00, float 1.000000e+00
  %4562 = fadd fast float %4561, %4556
  %4563 = fmul fast float %4561, %4559
  %4564 = fadd fast float %4563, %4555
  %4565 = add nuw nsw i32 %4554, 1
  %4566 = icmp eq i32 %4565, 4
  br i1 %4566, label %4567, label %4553, !llvm.loop !118

; <label>:4567                                    ; preds = %4553
  %4568 = add nuw nsw i32 %4521, 1
  %4569 = icmp eq i32 %4568, 8
  br i1 %4569, label %4570, label %4518, !llvm.loop !119

; <label>:4570                                    ; preds = %4567
  %4571 = fdiv fast float 1.000000e+00, %4562
  %4572 = fmul fast float %4571, %4564
  %4573 = fdiv fast float 1.000000e+00, %4444
  %4574 = fmul fast float %4572, %4573
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = call float @dx.op.binary.f32(i32 35, float %4575, float 0.000000e+00)  ; FMax(a,b)
  %4577 = fmul fast float %4562, 3.125000e-02
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = fmul fast float %4578, 2.000000e+00
  %4580 = fadd fast float %4579, -1.000000e+00
  %4581 = fcmp fast ogt float %4580, 0.000000e+00
  %4582 = fcmp fast olt float %4580, 0.000000e+00
  %4583 = zext i1 %4581 to i32
  %4584 = zext i1 %4582 to i32
  %4585 = sub nsw i32 %4583, %4584
  %4586 = sitofp i32 %4585 to float
  %4587 = fmul fast float %4586, %4580
  %4588 = fsub fast float 1.000000e+00, %4587
  %4589 = fmul fast float %4588, %4588
  %4590 = fmul fast float %4589, %4588
  %4591 = fsub fast float %4588, %4590
  %4592 = fmul fast float %4591, %4576
  %4593 = fsub fast float 1.000000e+00, %4590
  %4594 = fsub fast float %4593, %4592
  %4595 = fmul fast float %4586, 5.000000e-01
  %4596 = fmul fast float %4595, %4594
  %4597 = fsub fast float 5.000000e-01, %4596
  br label %4598

; <label>:4598                                    ; preds = %4570, %4446, %4431
  %4599 = phi float [ 1.000000e+00, %4431 ], [ %4512, %4446 ], [ %4597, %4570 ]
  %4600 = fcmp fast ogt float %3861, 0.000000e+00
  br i1 %4600, label %4601, label %4765, !dx.controlflow.hints !121

; <label>:4601                                    ; preds = %4598
  %4602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4603 = extractvalue %dx.types.CBufRet.f32 %4602, 0
  %4604 = fadd fast float %4603, %3751
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 2
  %4607 = extractvalue %dx.types.CBufRet.f32 %4605, 3
  %4608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.f32 %4608, 0
  %4610 = call float @dx.op.binary.f32(i32 35, float %4604, float 0.000000e+00)  ; FMax(a,b)
  %4611 = fadd fast float %4610, 0x3F10000000000000
  %4612 = fcmp fast oeq float %4609, 0.000000e+00
  br i1 %4612, label %4613, label %4680

; <label>:4613                                    ; preds = %4601
  %4614 = extractvalue %dx.types.CBufRet.f32 %4605, 1
  %4615 = extractvalue %dx.types.CBufRet.f32 %4605, 0
  %4616 = fmul fast float %4615, %3743
  %4617 = fmul fast float %4614, %3747
  %4618 = fadd fast float %4616, 5.000000e-01
  %4619 = call float @dx.op.unary.f32(i32 27, float %4618)  ; Round_ni(value)
  %4620 = fadd fast float %4617, 5.000000e-01
  %4621 = call float @dx.op.unary.f32(i32 27, float %4620)  ; Round_ni(value)
  %4622 = fsub fast float %4618, %4619
  %4623 = fsub fast float %4620, %4621
  %4624 = fadd fast float %4619, -5.000000e-01
  %4625 = fadd fast float %4621, -5.000000e-01
  %4626 = fmul fast float %4622, 2.000000e+00
  %4627 = fsub fast float 3.000000e+00, %4626
  %4628 = fadd fast float %4626, 1.000000e+00
  %4629 = fsub fast float 2.000000e+00, %4622
  %4630 = bitcast float %4627 to i32
  %4631 = sub nsw i32 2129859010, %4630
  %4632 = bitcast i32 %4631 to float
  %4633 = fmul fast float %4632, %4629
  %4634 = fadd fast float %4633, -1.000000e+00
  %4635 = bitcast float %4628 to i32
  %4636 = sub nsw i32 2129859010, %4635
  %4637 = bitcast i32 %4636 to float
  %4638 = fmul fast float %4637, %4622
  %4639 = fadd fast float %4638, 1.000000e+00
  %4640 = fmul fast float %4623, 2.000000e+00
  %4641 = fsub fast float 3.000000e+00, %4640
  %4642 = fadd fast float %4640, 1.000000e+00
  %4643 = fsub fast float 2.000000e+00, %4623
  %4644 = bitcast float %4641 to i32
  %4645 = sub nsw i32 2129859010, %4644
  %4646 = bitcast i32 %4645 to float
  %4647 = fmul fast float %4646, %4643
  %4648 = fadd fast float %4647, -1.000000e+00
  %4649 = bitcast float %4642 to i32
  %4650 = sub nsw i32 2129859010, %4649
  %4651 = bitcast i32 %4650 to float
  %4652 = fmul fast float %4651, %4623
  %4653 = fadd fast float %4652, 1.000000e+00
  %4654 = fadd fast float %4634, %4624
  %4655 = fmul fast float %4654, %4606
  %4656 = fadd fast float %4648, %4625
  %4657 = fmul fast float %4656, %4607
  %4658 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %4655, float %4657, float undef, float undef, i32 0, i32 0, i32 undef, float %4611)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = fmul fast float %4659, %4627
  %4661 = fadd fast float %4639, %4624
  %4662 = fmul fast float %4661, %4606
  %4663 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %4662, float %4657, float undef, float undef, i32 0, i32 0, i32 undef, float %4611)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  %4665 = fmul fast float %4664, %4628
  %4666 = fadd fast float %4653, %4625
  %4667 = fmul fast float %4666, %4607
  %4668 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %4655, float %4667, float undef, float undef, i32 0, i32 0, i32 undef, float %4611)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4669 = extractvalue %dx.types.ResRet.f32 %4668, 0
  %4670 = fmul fast float %4669, %4627
  %4671 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %4662, float %4667, float undef, float undef, i32 0, i32 0, i32 undef, float %4611)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4672 = extractvalue %dx.types.ResRet.f32 %4671, 0
  %4673 = fmul fast float %4672, %4628
  %4674 = fadd fast float %4673, %4670
  %4675 = fmul fast float %4674, %4642
  %4676 = fadd fast float %4665, %4660
  %4677 = fmul fast float %4676, %4641
  %4678 = fadd fast float %4677, %4675
  %4679 = fmul fast float %4678, 6.250000e-02
  br label %4765

; <label>:4680                                    ; preds = %4601
  %4681 = fmul fast float %230, 0x401921FB60000000
  %4682 = call float @dx.op.unary.f32(i32 13, float %4681)  ; Sin(value)
  %4683 = call float @dx.op.unary.f32(i32 12, float %4681)  ; Cos(value)
  %4684 = fsub fast float -0.000000e+00, %4682
  br label %4685

; <label>:4685                                    ; preds = %4734, %4680
  %4686 = phi float [ 0.000000e+00, %4680 ], [ %4729, %4734 ]
  %4687 = phi float [ 0.000000e+00, %4680 ], [ %4731, %4734 ]
  %4688 = phi i32 [ 0, %4680 ], [ %4735, %4734 ]
  %4689 = mul i32 %4688, 2
  %4690 = add i32 0, %4689
  %4691 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4690
  %4692 = load float, float* %4691, align 4
  %4693 = mul i32 %4688, 2
  %4694 = add i32 1, %4693
  %4695 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4694
  %4696 = load float, float* %4695, align 4
  %4697 = fmul fast float %4692, %4683
  %4698 = call float @dx.op.tertiary.f32(i32 46, float %4696, float %4684, float %4697)  ; FMad(a,b,c)
  %4699 = fmul fast float %4692, %4682
  %4700 = call float @dx.op.tertiary.f32(i32 46, float %4696, float %4683, float %4699)  ; FMad(a,b,c)
  %4701 = fmul fast float %4698, %4609
  %4702 = fmul fast float %4700, %4609
  %4703 = fadd fast float %4701, %3743
  %4704 = fadd fast float %4702, %3747
  %4705 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %49, float %4703, float %4704, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = extractvalue %dx.types.ResRet.f32 %4705, 1
  %4708 = extractvalue %dx.types.ResRet.f32 %4705, 2
  %4709 = extractvalue %dx.types.ResRet.f32 %4705, 3
  %4710 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 0
  store float %4706, float* %4710, align 4
  %4711 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 1
  store float %4707, float* %4711, align 4
  %4712 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 2
  store float %4708, float* %4712, align 4
  %4713 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 3
  store float %4709, float* %4713, align 4
  %4714 = fsub fast float %4706, %4611
  %4715 = fcmp fast olt float %4714, 0.000000e+00
  %4716 = select i1 %4715, float 0.000000e+00, float 1.000000e+00
  %4717 = fadd fast float %4716, %4686
  %4718 = fmul fast float %4716, %4714
  %4719 = fadd fast float %4718, %4687
  br label %4720

; <label>:4720                                    ; preds = %4720, %4685
  %4721 = phi i32 [ 1, %4685 ], [ %4732, %4720 ]
  %4722 = phi float [ %4719, %4685 ], [ %4731, %4720 ]
  %4723 = phi float [ %4717, %4685 ], [ %4729, %4720 ]
  %4724 = getelementptr [4 x float], [4 x float]* %73, i32 0, i32 %4721
  %4725 = load float, float* %4724, align 4, !tbaa !116, !noalias !106
  %4726 = fsub fast float %4725, %4611
  %4727 = fcmp fast olt float %4726, 0.000000e+00
  %4728 = select i1 %4727, float 0.000000e+00, float 1.000000e+00
  %4729 = fadd fast float %4728, %4723
  %4730 = fmul fast float %4728, %4726
  %4731 = fadd fast float %4730, %4722
  %4732 = add nuw nsw i32 %4721, 1
  %4733 = icmp eq i32 %4732, 4
  br i1 %4733, label %4734, label %4720, !llvm.loop !118

; <label>:4734                                    ; preds = %4720
  %4735 = add nuw nsw i32 %4688, 1
  %4736 = icmp eq i32 %4735, 8
  br i1 %4736, label %4737, label %4685, !llvm.loop !119

; <label>:4737                                    ; preds = %4734
  %4738 = fdiv fast float 1.000000e+00, %4729
  %4739 = fmul fast float %4738, %4731
  %4740 = fdiv fast float 1.000000e+00, %4611
  %4741 = fmul fast float %4739, %4740
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = call float @dx.op.binary.f32(i32 35, float %4742, float 0.000000e+00)  ; FMax(a,b)
  %4744 = fmul fast float %4729, 3.125000e-02
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4745, 2.000000e+00
  %4747 = fadd fast float %4746, -1.000000e+00
  %4748 = fcmp fast ogt float %4747, 0.000000e+00
  %4749 = fcmp fast olt float %4747, 0.000000e+00
  %4750 = zext i1 %4748 to i32
  %4751 = zext i1 %4749 to i32
  %4752 = sub nsw i32 %4750, %4751
  %4753 = sitofp i32 %4752 to float
  %4754 = fmul fast float %4753, %4747
  %4755 = fsub fast float 1.000000e+00, %4754
  %4756 = fmul fast float %4755, %4755
  %4757 = fmul fast float %4756, %4755
  %4758 = fsub fast float %4755, %4757
  %4759 = fmul fast float %4758, %4743
  %4760 = fsub fast float 1.000000e+00, %4757
  %4761 = fsub fast float %4760, %4759
  %4762 = fmul fast float %4753, 5.000000e-01
  %4763 = fmul fast float %4762, %4761
  %4764 = fsub fast float 5.000000e-01, %4763
  br label %4765

; <label>:4765                                    ; preds = %4737, %4613, %4598
  %4766 = phi float [ 1.000000e+00, %4598 ], [ %4679, %4613 ], [ %4764, %4737 ]
  %4767 = fsub fast float %4432, %4267
  %4768 = fmul fast float %4767, %3805
  %4769 = fadd fast float %4768, %4267
  %4770 = fsub fast float %4599, %4769
  %4771 = fmul fast float %4770, %3835
  %4772 = fadd fast float %4771, %4769
  %4773 = fsub fast float %4766, %4772
  %4774 = fmul fast float %4773, %3861
  %4775 = fadd fast float %4774, %4772
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 2
  %4778 = fcmp fast ogt float %4777, 0.000000e+00
  br i1 %4778, label %4779, label %4819, !dx.controlflow.hints !122

; <label>:4779                                    ; preds = %4765
  %4780 = fcmp fast ugt float %4777, 0.000000e+00
  br i1 %4780, label %4781, label %4816

; <label>:4781                                    ; preds = %4779
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  %4784 = extractvalue %dx.types.CBufRet.f32 %4782, 1
  %4785 = extractvalue %dx.types.CBufRet.f32 %4782, 2
  %4786 = extractvalue %dx.types.CBufRet.f32 %4782, 3
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.CBufRet.f32 %4787, 1
  %4790 = extractvalue %dx.types.CBufRet.f32 %4787, 2
  %4791 = extractvalue %dx.types.CBufRet.f32 %4787, 3
  %4792 = extractvalue %dx.types.CBufRet.f32 %4776, 0
  %4793 = extractvalue %dx.types.CBufRet.f32 %4776, 1
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4797 = extractvalue %dx.types.CBufRet.f32 %4794, 2
  %4798 = fadd fast float %4795, %3720
  %4799 = fadd fast float %4796, %3721
  %4800 = fadd fast float %4797, %3722
  %4801 = fmul fast float %4798, %4783
  %4802 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %4799, float %4801)  ; FMad(a,b,c)
  %4803 = call float @dx.op.tertiary.f32(i32 46, float %4785, float %4800, float %4802)  ; FMad(a,b,c)
  %4804 = fadd fast float %4803, %4786
  %4805 = fmul fast float %4798, %4788
  %4806 = call float @dx.op.tertiary.f32(i32 46, float %4789, float %4799, float %4805)  ; FMad(a,b,c)
  %4807 = call float @dx.op.tertiary.f32(i32 46, float %4790, float %4800, float %4806)  ; FMad(a,b,c)
  %4808 = fadd fast float %4807, %4791
  %4809 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %45, float %4804, float %4808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 0
  %4811 = fmul fast float %4810, %4793
  %4812 = fadd fast float %4811, %4792
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = fmul fast float %4813, %4777
  %4815 = fsub fast float 1.000000e+00, %4814
  br label %4816

; <label>:4816                                    ; preds = %4781, %4779
  %4817 = phi float [ %4815, %4781 ], [ 1.000000e+00, %4779 ]
  %4818 = fmul fast float %4817, %4775
  br label %4819

; <label>:4819                                    ; preds = %4816, %4765, %3700
  %4820 = phi float [ 1.000000e+00, %3700 ], [ %4818, %4816 ], [ %4775, %4765 ]
  %4821 = call float @dx.op.binary.f32(i32 36, float %4820, float %4820)  ; FMin(a,b)
  %4822 = call float @dx.op.binary.f32(i32 36, float %4820, float %4821)  ; FMin(a,b)
  %4823 = fcmp fast ogt float %4822, 0.000000e+00
  br i1 %4823, label %4824, label %4990, !dx.controlflow.hints !123

; <label>:4824                                    ; preds = %4819
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 0
  %4827 = extractvalue %dx.types.CBufRet.f32 %4825, 1
  %4828 = extractvalue %dx.types.CBufRet.f32 %4825, 2
  %4829 = extractvalue %dx.types.CBufRet.f32 %4825, 3
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.CBufRet.f32 %4830, 2
  %4834 = extractvalue %dx.types.CBufRet.f32 %4830, 3
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 0
  %4837 = extractvalue %dx.types.CBufRet.f32 %4835, 1
  %4838 = extractvalue %dx.types.CBufRet.f32 %4835, 2
  %4839 = extractvalue %dx.types.CBufRet.f32 %4835, 3
  %4840 = fmul fast float %4826, %3720
  %4841 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %4827, float %4840)  ; FMad(a,b,c)
  %4842 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %4828, float %4841)  ; FMad(a,b,c)
  %4843 = fadd fast float %4842, %4829
  %4844 = fmul fast float %4831, %3720
  %4845 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %4832, float %4844)  ; FMad(a,b,c)
  %4846 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %4833, float %4845)  ; FMad(a,b,c)
  %4847 = fadd fast float %4846, %4834
  %4848 = fmul fast float %4836, %3720
  %4849 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %4837, float %4848)  ; FMad(a,b,c)
  %4850 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %4838, float %4849)  ; FMad(a,b,c)
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = extractvalue %dx.types.CBufRet.f32 %4851, 1
  %4854 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4855 = fmul fast float %4854, %4843
  %4856 = fmul fast float %4854, %4847
  %4857 = fadd fast float %4855, %4852
  %4858 = fadd fast float %4856, %4853
  %4859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4860 = extractvalue %dx.types.CBufRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.CBufRet.f32 %4859, 1
  %4862 = fsub fast float %4857, %4860
  %4863 = fsub fast float %4858, %4861
  %4864 = fcmp fast olt float %4862, 0.000000e+00
  %4865 = fcmp fast olt float %4863, 0.000000e+00
  %4866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4867 = extractvalue %dx.types.CBufRet.f32 %4866, 0
  %4868 = extractvalue %dx.types.CBufRet.f32 %4866, 1
  %4869 = extractvalue %dx.types.CBufRet.f32 %4866, 2
  %4870 = extractvalue %dx.types.CBufRet.f32 %4866, 3
  %4871 = select i1 %4864, float %4867, float %4869
  %4872 = select i1 %4865, float %4868, float %4870
  %4873 = fmul fast float %4871, %4862
  %4874 = fmul fast float %4872, %4863
  %4875 = call float @dx.op.unary.f32(i32 6, float %4873)  ; FAbs(value)
  %4876 = call float @dx.op.unary.f32(i32 6, float %4874)  ; FAbs(value)
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4879 = call float @dx.op.binary.f32(i32 35, float %4875, float %4876)  ; FMax(a,b)
  %4880 = fsub fast float %4878, %4879
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fcmp fast ogt float %4881, 0.000000e+00
  br i1 %4882, label %4883, label %4924, !dx.controlflow.hints !124

; <label>:4883                                    ; preds = %4824
  %4884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %4857, float %4858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 1
  %4886 = fcmp fast ogt float %4885, 0.000000e+00
  br i1 %4886, label %4887, label %4919

; <label>:4887                                    ; preds = %4883
  %4888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %48, float %4857, float %4858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4889 = extractvalue %dx.types.ResRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.ResRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.ResRet.f32 %4888, 2
  %4892 = extractvalue %dx.types.ResRet.f32 %4888, 3
  %4893 = fsub fast float 1.000000e+00, %4839
  %4894 = fsub fast float %4893, %4850
  %4895 = fmul fast float %4894, 0x400921FB60000000
  %4896 = fadd fast float %4895, 0x3FF921FB60000000
  %4897 = call float @dx.op.unary.f32(i32 13, float %4896)  ; Sin(value)
  %4898 = fadd fast float %4897, -1.000000e+00
  %4899 = fmul fast float %4898, 0x3FD45F3060000000
  %4900 = fmul fast float %4894, 0x401921FB60000000
  %4901 = fadd fast float %4900, 0x400921FB60000000
  %4902 = call float @dx.op.unary.f32(i32 13, float %4901)  ; Sin(value)
  %4903 = fadd fast float %4902, 0x3E7777A5C0000000
  %4904 = fmul fast float %4903, 0x3FC45F3060000000
  %4905 = fmul fast float %4894, 0x4022D97C80000000
  %4906 = fadd fast float %4905, 0x4012D97C80000000
  %4907 = call float @dx.op.unary.f32(i32 13, float %4906)  ; Sin(value)
  %4908 = fadd fast float %4907, 1.000000e+00
  %4909 = fmul fast float %4908, 0x3FBB2995E0000000
  %4910 = fmul fast float %4894, 0x402921FB60000000
  %4911 = fadd fast float %4910, 0x401921FB60000000
  %4912 = call float @dx.op.unary.f32(i32 13, float %4911)  ; Sin(value)
  %4913 = fadd fast float %4912, 0xBE8777A5C0000000
  %4914 = fmul fast float %4913, 0x3FB45F3060000000
  %4915 = call float @dx.op.dot4.f32(i32 56, float %4889, float %4890, float %4891, float %4892, float %4899, float %4904, float %4909, float %4914)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4916 = fmul fast float %4915, 0xBFF7154760000000
  %4917 = call float @dx.op.unary.f32(i32 21, float %4916)  ; Exp(value)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  br label %4919

; <label>:4919                                    ; preds = %4887, %4883
  %4920 = phi float [ %4918, %4887 ], [ 1.000000e+00, %4883 ]
  %4921 = fadd fast float %4920, -1.000000e+00
  %4922 = fmul fast float %4921, %4881
  %4923 = fadd fast float %4922, 1.000000e+00
  br label %4924

; <label>:4924                                    ; preds = %4919, %4824
  %4925 = phi float [ %4923, %4919 ], [ 1.000000e+00, %4824 ]
  %4926 = fmul fast float %4925, %4820
  %4927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4928 = extractvalue %dx.types.CBufRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.CBufRet.f32 %4927, 1
  %4930 = extractvalue %dx.types.CBufRet.f32 %4927, 2
  %4931 = fadd fast float %4928, %129
  %4932 = fadd fast float %4929, %130
  %4933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4934 = extractvalue %dx.types.CBufRet.f32 %4933, 1
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.CBufRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4935, 2
  %4939 = fsub fast float -0.000000e+00, %4931
  %4940 = fsub fast float -0.000000e+00, %4932
  %4941 = fsub fast float -0.000000e+00, %131
  %4942 = fsub fast float %4941, %4930
  %4943 = fadd fast float %4942, %4934
  %4944 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4939, float %4940, float %4943)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4936, float %4937, float %4938)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = fdiv fast float 1.000000e+00, %4945
  %4947 = fmul fast float %4946, %4944
  %4948 = fmul fast float %4936, %4947
  %4949 = fmul fast float %4937, %4947
  %4950 = fadd fast float %4948, %4931
  %4951 = fadd fast float %4949, %4932
  %4952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.f32 %4952, 0
  %4954 = extractvalue %dx.types.CBufRet.f32 %4952, 1
  %4955 = fsub fast float %4950, %4953
  %4956 = fsub fast float %4951, %4954
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 2
  %4959 = extractvalue %dx.types.CBufRet.f32 %4957, 3
  %4960 = fmul fast float %4955, %4958
  %4961 = fmul fast float %4956, %4959
  %4962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.i32 %4962, 3
  %4964 = icmp eq i32 %4963, 0
  br i1 %4964, label %4970, label %4965

; <label>:4965                                    ; preds = %4924
  %4966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %47, float %4960, float %4961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4967 = extractvalue %dx.types.ResRet.f32 %4966, 0
  %4968 = extractvalue %dx.types.ResRet.f32 %4966, 1
  %4969 = extractvalue %dx.types.ResRet.f32 %4966, 2
  br label %4975

; <label>:4970                                    ; preds = %4924
  %4971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %48, float %4960, float %4961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4972 = extractvalue %dx.types.ResRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.ResRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.ResRet.f32 %4971, 2
  br label %4975

; <label>:4975                                    ; preds = %4970, %4965
  %4976 = phi float [ %4967, %4965 ], [ %4972, %4970 ]
  %4977 = phi float [ %4968, %4965 ], [ %4973, %4970 ]
  %4978 = phi float [ %4969, %4965 ], [ %4974, %4970 ]
  %4979 = extractvalue %dx.types.CBufRet.f32 %4933, 2
  %4980 = fmul fast float %4979, %4976
  %4981 = extractvalue %dx.types.CBufRet.f32 %4933, 0
  %4982 = fsub fast float %4947, %4981
  %4983 = fsub fast float %4982, %4980
  %4984 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4983)  ; FMax(a,b)
  %4985 = fmul fast float %4984, %4977
  %4986 = call float @dx.op.binary.f32(i32 36, float %4978, float %4985)  ; FMin(a,b)
  %4987 = fmul fast float %4986, 0xBFF7154760000000
  %4988 = call float @dx.op.unary.f32(i32 21, float %4987)  ; Exp(value)
  %4989 = fmul fast float %4926, %4988
  br label %4990

; <label>:4990                                    ; preds = %4975, %4819
  %4991 = phi float [ %4989, %4975 ], [ %4820, %4819 ]
  %4992 = call float @dx.op.binary.f32(i32 36, float %4991, float %4991)  ; FMin(a,b)
  %4993 = call float @dx.op.binary.f32(i32 36, float %4991, float %4992)  ; FMin(a,b)
  %4994 = fcmp fast ogt float %4993, 0.000000e+00
  br i1 %4994, label %4995, label %5178, !dx.controlflow.hints !125

; <label>:4995                                    ; preds = %4990
  %4996 = fmul fast float %4991, %3712
  %4997 = fmul fast float %4991, %3713
  %4998 = fmul fast float %4991, %3714
  %4999 = fsub fast float %3701, %1800
  %5000 = fsub fast float %3702, %1799
  %5001 = fsub fast float %3703, %1798
  %5002 = call float @dx.op.dot3.f32(i32 55, float %4999, float %5000, float %5001, float %4999, float %5000, float %5001)  ; Dot3(ax,ay,az,bx,by,bz)
  %5003 = call float @dx.op.unary.f32(i32 25, float %5002)  ; Rsqrt(value)
  %5004 = fmul fast float %5003, %4999
  %5005 = fmul fast float %5003, %5000
  %5006 = fmul fast float %5003, %5001
  %5007 = call float @dx.op.dot3.f32(i32 55, float %3701, float %3702, float %3703, float %1801, float %1802, float %1803)  ; Dot3(ax,ay,az,bx,by,bz)
  %5008 = call float @dx.op.dot3.f32(i32 55, float %1797, float %1796, float %1795, float %5004, float %5005, float %5006)  ; Dot3(ax,ay,az,bx,by,bz)
  %5009 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  %5010 = fmul fast float %5009, %5009
  %5011 = fmul fast float %5010, %1839
  %5012 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5013 = fmul fast float %5012, %5009
  %5014 = call float @dx.op.dot3.f32(i32 55, float %1801, float %1802, float %1803, float %5004, float %5005, float %5006)  ; Dot3(ax,ay,az,bx,by,bz)
  %5015 = fmul fast float %5014, %5014
  %5016 = call float @dx.op.unary.f32(i32 6, float %5007)  ; FAbs(value)
  %5017 = fsub fast float 1.000000e+00, %1832
  %5018 = fmul fast float %1814, %1814
  %5019 = fmul fast float %5018, %5017
  %5020 = fadd fast float %5019, %1832
  %5021 = bitcast float %5020 to i32
  %5022 = ashr i32 %5021, 1
  %5023 = add nsw i32 %5022, 532487669
  %5024 = bitcast i32 %5023 to float
  %5025 = fadd fast float %5024, %1814
  %5026 = fmul fast float %1832, %5015
  %5027 = fsub fast float 1.000000e+00, %5015
  %5028 = fadd fast float %5027, %5026
  %5029 = fmul fast float %5016, %5016
  %5030 = fmul fast float %5029, %5017
  %5031 = fadd fast float %5030, %1832
  %5032 = bitcast float %5031 to i32
  %5033 = ashr i32 %5032, 1
  %5034 = add nsw i32 %5033, 532487669
  %5035 = bitcast i32 %5034 to float
  %5036 = fadd fast float %5035, %5016
  %5037 = fmul fast float %5028, %5028
  %5038 = fmul fast float %5037, %5025
  %5039 = fmul fast float %5038, %5036
  %5040 = fdiv fast float 0x3FF0A00000000000, %5039
  %5041 = fmul fast float %5040, %1832
  %5042 = fmul fast float %3099, 0x3FF9999980000000
  %5043 = fsub fast float 5.000000e+00, %5042
  %5044 = call float @dx.op.unary.f32(i32 6, float %5008)  ; FAbs(value)
  %5045 = fsub fast float 1.000000e+00, %5044
  %5046 = fmul fast float %3099, 0x41D9660740000000
  %5047 = fadd fast float %5046, 0xC1EFBF8940000000
  %5048 = bitcast float %5045 to i32
  %5049 = sitofp i32 %5048 to float
  %5050 = fmul fast float %5049, %5043
  %5051 = fadd fast float %5047, %5050
  %5052 = fptosi float %5051 to i32
  %5053 = bitcast i32 %5052 to float
  %5054 = fsub fast float 1.000000e+00, %1804
  %5055 = fsub fast float 1.000000e+00, %1805
  %5056 = fsub fast float 1.000000e+00, %1812
  %5057 = fmul fast float %5053, %5054
  %5058 = fmul fast float %5053, %5055
  %5059 = fmul fast float %5053, %5056
  %5060 = fadd fast float %5057, %1804
  %5061 = fadd fast float %5058, %1805
  %5062 = fadd fast float %5059, %1812
  br i1 %3122, label %5063, label %5086

; <label>:5063                                    ; preds = %4995
  %5064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %48, float %1466, float %5044, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5065 = extractvalue %dx.types.ResRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.ResRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.ResRet.f32 %5064, 2
  %5068 = fadd fast float %5065, -5.000000e-01
  %5069 = fadd fast float %5066, -5.000000e-01
  %5070 = fadd fast float %5067, -5.000000e-01
  %5071 = fmul fast float %1804, 4.000000e+00
  %5072 = fmul fast float %5071, %5054
  %5073 = fmul fast float %5072, %5068
  %5074 = fmul fast float %1805, 4.000000e+00
  %5075 = fmul fast float %5074, %5055
  %5076 = fmul fast float %5075, %5069
  %5077 = fmul fast float %1812, 4.000000e+00
  %5078 = fmul fast float %5077, %5056
  %5079 = fmul fast float %5078, %5070
  %5080 = fadd fast float %5073, %5060
  %5081 = fadd fast float %5076, %5061
  %5082 = fadd fast float %5079, %5062
  %5083 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  br label %5086

; <label>:5086                                    ; preds = %5063, %4995
  %5087 = phi float [ %5083, %5063 ], [ %5060, %4995 ]
  %5088 = phi float [ %5084, %5063 ], [ %5061, %4995 ]
  %5089 = phi float [ %5085, %5063 ], [ %5062, %4995 ]
  %5090 = fmul fast float %5007, 9.843750e-01
  %5091 = fadd fast float %5090, 7.812500e-03
  %5092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5091, float %3103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5093 = extractvalue %dx.types.ResRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.ResRet.f32 %5092, 1
  %5095 = extractvalue %dx.types.ResRet.f32 %5092, 2
  %5096 = extractvalue %dx.types.ResRet.f32 %5092, 3
  %5097 = fsub fast float %5095, %5093
  %5098 = fsub fast float %5096, %5094
  %5099 = fmul fast float %5097, %3109
  %5100 = fmul fast float %5098, %3109
  %5101 = fadd fast float %5099, %5093
  %5102 = fadd fast float %5100, %5094
  %5103 = fmul fast float %5101, %1804
  %5104 = fmul fast float %5101, %1805
  %5105 = fmul fast float %5101, %1812
  %5106 = fadd fast float %5103, %5102
  %5107 = fadd fast float %5104, %5102
  %5108 = fadd fast float %5105, %5102
  br i1 %3122, label %5109, label %5132

; <label>:5109                                    ; preds = %5086
  %5110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %48, float %1466, float %5007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5111 = extractvalue %dx.types.ResRet.f32 %5110, 0
  %5112 = extractvalue %dx.types.ResRet.f32 %5110, 1
  %5113 = extractvalue %dx.types.ResRet.f32 %5110, 2
  %5114 = fadd fast float %5111, -5.000000e-01
  %5115 = fadd fast float %5112, -5.000000e-01
  %5116 = fadd fast float %5113, -5.000000e-01
  %5117 = fmul fast float %1804, 4.000000e+00
  %5118 = fmul fast float %5117, %5054
  %5119 = fmul fast float %5118, %5114
  %5120 = fmul fast float %1805, 4.000000e+00
  %5121 = fmul fast float %5120, %5055
  %5122 = fmul fast float %5121, %5115
  %5123 = fmul fast float %1812, 4.000000e+00
  %5124 = fmul fast float %5123, %5056
  %5125 = fmul fast float %5124, %5116
  %5126 = fadd fast float %5119, %5106
  %5127 = fadd fast float %5122, %5107
  %5128 = fadd fast float %5125, %5108
  %5129 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5130 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5131 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  br label %5132

; <label>:5132                                    ; preds = %5109, %5086
  %5133 = phi float [ %5129, %5109 ], [ %5106, %5086 ]
  %5134 = phi float [ %5130, %5109 ], [ %5107, %5086 ]
  %5135 = phi float [ %5131, %5109 ], [ %5108, %5086 ]
  %5136 = call float @dx.op.binary.f32(i32 35, float %5134, float %5135)  ; FMax(a,b)
  %5137 = call float @dx.op.binary.f32(i32 35, float %5133, float %5136)  ; FMax(a,b)
  %5138 = fsub fast float 1.000000e+00, %5137
  %5139 = fmul fast float %5087, %5041
  %5140 = fmul fast float %5088, %5041
  %5141 = fmul fast float %5089, %5041
  %5142 = fsub fast float 1.000000e+00, %5008
  %5143 = bitcast float %5142 to i32
  %5144 = sitofp i32 %5143 to float
  %5145 = fmul fast float %5144, 5.000000e+00
  %5146 = fadd fast float %5145, 0xC1EFBF8940000000
  %5147 = fptosi float %5146 to i32
  %5148 = bitcast i32 %5147 to float
  %5149 = fmul fast float %5148, %1465
  %5150 = fmul fast float %5138, %5149
  %5151 = fmul fast float %5150, %3636
  %5152 = fmul fast float %5150, %3637
  %5153 = fmul fast float %5150, %3638
  %5154 = fadd fast float %5151, %5139
  %5155 = fadd fast float %5152, %5140
  %5156 = fadd fast float %5153, %5141
  %5157 = fmul fast float %5013, %4996
  %5158 = fmul fast float %5157, %5138
  %5159 = fmul fast float %5013, %4997
  %5160 = fmul fast float %5159, %5138
  %5161 = fmul fast float %5013, %4998
  %5162 = fmul fast float %5161, %5138
  %5163 = fmul fast float %5157, %5154
  %5164 = fmul fast float %5159, %5155
  %5165 = fmul fast float %5161, %5156
  %5166 = fadd fast float %5158, %3620
  %5167 = fmul fast float %5166, %1486
  %5168 = fadd fast float %5160, %3621
  %5169 = fmul fast float %5168, %1486
  %5170 = fadd fast float %5162, %3622
  %5171 = fmul fast float %5170, %1486
  %5172 = fadd fast float %5163, %3689
  %5173 = fmul fast float %5172, %1486
  %5174 = fadd fast float %5164, %3692
  %5175 = fmul fast float %5174, %1486
  %5176 = fadd fast float %5165, %3695
  %5177 = fmul fast float %5176, %1486
  br label %5178

; <label>:5178                                    ; preds = %5132, %4990, %3616
  %5179 = phi float [ %3690, %3616 ], [ %3690, %4990 ], [ %5173, %5132 ]
  %5180 = phi float [ %3693, %3616 ], [ %3693, %4990 ], [ %5175, %5132 ]
  %5181 = phi float [ %3696, %3616 ], [ %3696, %4990 ], [ %5177, %5132 ]
  %5182 = phi float [ %3685, %3616 ], [ %3685, %4990 ], [ %5167, %5132 ]
  %5183 = phi float [ %3686, %3616 ], [ %3686, %4990 ], [ %5169, %5132 ]
  %5184 = phi float [ %3687, %3616 ], [ %3687, %4990 ], [ %5171, %5132 ]
  %5185 = fmul fast float %1486, %1486
  %5186 = fmul fast float %5185, %3662
  %5187 = fsub fast float -0.000000e+00, %5186
  %5188 = fmul fast float %5185, %3663
  %5189 = fsub fast float -0.000000e+00, %5188
  %5190 = fmul fast float %5185, %3664
  %5191 = fsub fast float -0.000000e+00, %5190
  %5192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5193 = extractvalue %dx.types.CBufRet.f32 %5192, 0
  %5194 = fmul fast float %5193, %3668
  %5195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.f32 %5195, 3
  %5197 = fsub fast float 1.000000e+00, %1461
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = fadd fast float %5184, %1460
  %5200 = fmul fast float %5199, %1461
  %5201 = fmul fast float %5198, %5196
  %5202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.f32 %5202, 3
  %5204 = fmul fast float %5182, %1807
  %5205 = fmul fast float %5183, %1808
  %5206 = fmul fast float %5184, %1809
  %5207 = fcmp fast ogt float %70, %180
  %5208 = and i1 %5207, %1533
  %5209 = or i1 %1612, %5208
  %5210 = icmp eq i32 %1532, 2
  %5211 = fcmp fast ole float %70, %180
  %5212 = and i1 %5211, %5210
  %5213 = or i1 %5212, %5209
  br i1 %5208, label %5214, label %5473

; <label>:5214                                    ; preds = %5178
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.f32 %5215, 2
  %5217 = extractvalue %dx.types.CBufRet.f32 %5215, 3
  %5218 = fmul fast float %5216, %82
  %5219 = fmul fast float %5217, %83
  %5220 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5221 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5222 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %5220, float %5221, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = extractvalue %dx.types.ResRet.f32 %5222, 1
  %5225 = extractvalue %dx.types.ResRet.f32 %5222, 2
  %5226 = extractvalue %dx.types.ResRet.f32 %5222, 3
  %5227 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %5220, float %5221, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5228 = extractvalue %dx.types.ResRet.f32 %5227, 0
  %5229 = extractvalue %dx.types.ResRet.f32 %5227, 1
  %5230 = extractvalue %dx.types.ResRet.f32 %5227, 2
  %5231 = extractvalue %dx.types.ResRet.f32 %5227, 3
  %5232 = call float @dx.op.binary.f32(i32 35, float %5224, float %5225)  ; FMax(a,b)
  %5233 = call float @dx.op.binary.f32(i32 35, float %5223, float %5232)  ; FMax(a,b)
  %5234 = call float @dx.op.binary.f32(i32 35, float %5233, float %5226)  ; FMax(a,b)
  %5235 = call float @dx.op.binary.f32(i32 36, float %5229, float %5230)  ; FMin(a,b)
  %5236 = call float @dx.op.binary.f32(i32 36, float %5228, float %5235)  ; FMin(a,b)
  %5237 = call float @dx.op.binary.f32(i32 36, float %5236, float %5231)  ; FMin(a,b)
  %5238 = fmul fast float %5234, 2.550000e+02
  %5239 = fadd fast float %5238, 0x3F70101020000000
  %5240 = fptoui float %5239 to i32
  %5241 = fmul fast float %5237, 2.550000e+02
  %5242 = fadd fast float %5241, 0x3F70101020000000
  %5243 = fptoui float %5242 to i32
  %5244 = icmp ult i32 %5240, %5243
  br i1 %5244, label %5245, label %5413

; <label>:5245                                    ; preds = %5214
  %5246 = fcmp fast ogt float %69, 9.843750e-01
  %5247 = fadd fast float %70, -4.000000e+00
  %5248 = select i1 %5246, float -4.000000e+00, float %5247
  %5249 = call float @dx.op.binary.f32(i32 35, float %5248, float 0.000000e+00)  ; FMax(a,b)
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 0
  %5252 = fadd fast float %5251, %5249
  %5253 = extractvalue %dx.types.CBufRet.f32 %5250, 2
  %5254 = fmul fast float %5252, %5253
  %5255 = call float @dx.op.unary.f32(i32 23, float %5254)  ; Log(value)
  %5256 = extractvalue %dx.types.CBufRet.f32 %5250, 3
  %5257 = fmul fast float %5256, %5255
  %5258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5258, 2
  %5260 = fmul fast float %5257, %5259
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = uitofp i32 %5240 to float
  %5263 = uitofp i32 %5243 to float
  %5264 = fadd fast float %5262, 5.000000e-01
  %5265 = fadd fast float %5263, 5.000000e-01
  %5266 = fmul fast float %5259, %5264
  %5267 = fmul fast float %5259, %5265
  %5268 = fadd fast float %5266, 0x3F0FFB4800000000
  %5269 = fadd fast float %5267, 0xBF0FFB4800000000
  %5270 = call float @dx.op.binary.f32(i32 35, float %5261, float %5268)  ; FMax(a,b)
  %5271 = call float @dx.op.binary.f32(i32 36, float %5270, float %5269)  ; FMin(a,b)
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 1
  %5274 = extractvalue %dx.types.CBufRet.f32 %5272, 2
  %5275 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  %5276 = fmul fast float %5273, %5271
  %5277 = fadd fast float %5275, %5276
  %5278 = fadd fast float %5275, %5274
  %5279 = fsub fast float %5273, %5274
  %5280 = fadd fast float %5279, %5275
  %5281 = call float @dx.op.binary.f32(i32 35, float %5277, float %5278)  ; FMax(a,b)
  %5282 = call float @dx.op.binary.f32(i32 36, float %5281, float %5280)  ; FMin(a,b)
  %5283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %5220, float %5221, float %5282, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  %5285 = extractvalue %dx.types.ResRet.f32 %5283, 1
  %5286 = extractvalue %dx.types.ResRet.f32 %5283, 2
  %5287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.i32 %5287, 0
  %5289 = extractvalue %dx.types.CBufRet.i32 %5287, 1
  %5290 = uitofp i32 %5288 to float
  %5291 = uitofp i32 %5289 to float
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.CBufRet.f32 %5292, 1
  %5295 = fmul fast float %5290, %5220
  %5296 = fmul fast float %5291, %5221
  %5297 = fadd fast float %5295, -5.000000e-01
  %5298 = fadd fast float %5296, -5.000000e-01
  %5299 = call float @dx.op.unary.f32(i32 22, float %5297)  ; Frc(value)
  %5300 = call float @dx.op.unary.f32(i32 22, float %5298)  ; Frc(value)
  %5301 = fmul fast float %5299, %5299
  %5302 = fmul fast float %5301, %5299
  %5303 = fsub fast float 3.000000e+00, %5299
  %5304 = fmul fast float %5301, %5303
  %5305 = fmul fast float %5299, 3.000000e+00
  %5306 = fmul fast float %5302, 3.000000e+00
  %5307 = fmul fast float %5301, 6.000000e+00
  %5308 = fsub fast float %5306, %5307
  %5309 = fadd fast float %5308, 4.000000e+00
  %5310 = fmul fast float %5309, 0x3FC5555560000000
  %5311 = fmul fast float %5302, -3.000000e+00
  %5312 = fadd fast float %5301, %5299
  %5313 = fmul fast float %5312, 3.000000e+00
  %5314 = fadd fast float %5311, 1.000000e+00
  %5315 = fadd fast float %5314, %5313
  %5316 = fmul fast float %5302, 0x3FC5555560000000
  %5317 = fmul fast float %5300, %5300
  %5318 = fmul fast float %5317, %5300
  %5319 = fsub fast float 3.000000e+00, %5300
  %5320 = fmul fast float %5317, %5319
  %5321 = fmul fast float %5300, 3.000000e+00
  %5322 = fmul fast float %5318, 3.000000e+00
  %5323 = fmul fast float %5317, 6.000000e+00
  %5324 = fsub fast float %5322, %5323
  %5325 = fadd fast float %5324, 4.000000e+00
  %5326 = fmul fast float %5325, 0x3FC5555560000000
  %5327 = fmul fast float %5318, -3.000000e+00
  %5328 = fadd fast float %5317, %5300
  %5329 = fmul fast float %5328, 3.000000e+00
  %5330 = fadd fast float %5327, 1.000000e+00
  %5331 = fadd fast float %5330, %5329
  %5332 = fmul fast float %5318, 0x3FC5555560000000
  %5333 = fadd fast float %5299, 1.000000e+00
  %5334 = fsub fast float 1.000000e+00, %5305
  %5335 = fadd fast float %5334, %5304
  %5336 = fadd fast float %5335, %5309
  %5337 = fmul fast float %5336, 0x3FC5555560000000
  %5338 = fdiv fast float %5310, %5337
  %5339 = fsub fast float %5333, %5338
  %5340 = fsub fast float 1.000000e+00, %5299
  %5341 = fadd fast float %5315, %5302
  %5342 = fmul fast float %5341, 0x3FC5555560000000
  %5343 = fdiv fast float %5316, %5342
  %5344 = fadd fast float %5340, %5343
  %5345 = fadd fast float %5300, 1.000000e+00
  %5346 = fsub fast float 1.000000e+00, %5321
  %5347 = fadd fast float %5346, %5320
  %5348 = fadd fast float %5347, %5325
  %5349 = fmul fast float %5348, 0x3FC5555560000000
  %5350 = fdiv fast float %5326, %5349
  %5351 = fsub fast float %5345, %5350
  %5352 = fsub fast float 1.000000e+00, %5300
  %5353 = fadd fast float %5331, %5318
  %5354 = fmul fast float %5353, 0x3FC5555560000000
  %5355 = fdiv fast float %5332, %5354
  %5356 = fadd fast float %5355, %5352
  %5357 = fmul fast float %5339, %5293
  %5358 = fsub fast float %5220, %5357
  %5359 = fmul fast float %5344, %5293
  %5360 = fadd fast float %5359, %5220
  %5361 = fmul fast float %5356, %5294
  %5362 = fadd fast float %5361, %5221
  %5363 = fmul fast float %5351, %5294
  %5364 = fsub fast float %5221, %5363
  %5365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %5358, float %5364, float %5282, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5366 = extractvalue %dx.types.ResRet.f32 %5365, 0
  %5367 = extractvalue %dx.types.ResRet.f32 %5365, 1
  %5368 = extractvalue %dx.types.ResRet.f32 %5365, 2
  %5369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %5360, float %5364, float %5282, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %5358, float %5362, float %5282, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5374 = extractvalue %dx.types.ResRet.f32 %5373, 0
  %5375 = extractvalue %dx.types.ResRet.f32 %5373, 1
  %5376 = extractvalue %dx.types.ResRet.f32 %5373, 2
  %5377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %5360, float %5362, float %5282, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.ResRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.ResRet.f32 %5377, 2
  %5381 = fsub fast float %5374, %5366
  %5382 = fsub fast float %5375, %5367
  %5383 = fsub fast float %5376, %5368
  %5384 = fmul fast float %5381, %5354
  %5385 = fmul fast float %5382, %5354
  %5386 = fmul fast float %5383, %5354
  %5387 = fadd fast float %5384, %5366
  %5388 = fadd fast float %5385, %5367
  %5389 = fadd fast float %5386, %5368
  %5390 = fsub fast float %5378, %5370
  %5391 = fsub fast float %5379, %5371
  %5392 = fsub fast float %5380, %5372
  %5393 = fmul fast float %5390, %5354
  %5394 = fmul fast float %5391, %5354
  %5395 = fmul fast float %5392, %5354
  %5396 = fsub fast float %5370, %5387
  %5397 = fadd fast float %5396, %5393
  %5398 = fsub fast float %5371, %5388
  %5399 = fadd fast float %5398, %5394
  %5400 = fsub fast float %5372, %5389
  %5401 = fadd fast float %5400, %5395
  %5402 = fmul fast float %5397, %5342
  %5403 = fmul fast float %5399, %5342
  %5404 = fmul fast float %5401, %5342
  %5405 = fadd fast float %5402, %5387
  %5406 = fadd fast float %5403, %5388
  %5407 = fadd fast float %5404, %5389
  %5408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.f32 %5408, 1
  %5410 = fmul fast float %5405, %5409
  %5411 = fmul fast float %5406, %5409
  %5412 = fmul fast float %5407, %5409
  br label %5413

; <label>:5413                                    ; preds = %5245, %5214
  %5414 = phi float [ %5284, %5245 ], [ 1.000000e+00, %5214 ]
  %5415 = phi float [ %5285, %5245 ], [ 1.000000e+00, %5214 ]
  %5416 = phi float [ %5286, %5245 ], [ 1.000000e+00, %5214 ]
  %5417 = phi float [ %5410, %5245 ], [ 0.000000e+00, %5214 ]
  %5418 = phi float [ %5411, %5245 ], [ 0.000000e+00, %5214 ]
  %5419 = phi float [ %5412, %5245 ], [ 0.000000e+00, %5214 ]
  %5420 = fmul fast float %5417, %5187
  %5421 = fmul fast float %5418, %5189
  %5422 = fmul fast float %5419, %5191
  %5423 = call float @dx.op.dot3.f32(i32 55, float %5414, float %5415, float %5416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5424 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = select i1 %219, float %5423, float %5414
  %5426 = select i1 %219, float %5423, float %5415
  %5427 = select i1 %219, float 1.000000e+00, float %5416
  %5428 = select i1 %219, float %5424, float %5420
  %5429 = select i1 %219, float 0.000000e+00, float %5421
  %5430 = select i1 %219, float 0.000000e+00, float %5422
  %5431 = fmul fast float %5425, %5204
  %5432 = fmul fast float %5426, %5205
  %5433 = fmul fast float %5427, %5206
  %5434 = fadd fast float %5431, %5428
  %5435 = fadd fast float %5432, %5429
  %5436 = fadd fast float %5430, %5433
  %5437 = fmul fast float %5425, %5179
  %5438 = fmul fast float %5426, %5180
  %5439 = fmul fast float %5427, %5181
  %5440 = fmul fast float %82, 2.000000e+00
  %5441 = fmul fast float %5440, %5216
  %5442 = fmul fast float %83, 2.000000e+00
  %5443 = fmul fast float %5442, %5217
  %5444 = fsub fast float 1.000000e+00, %5441
  %5445 = fsub fast float 1.000000e+00, %5443
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5446, 0
  %5448 = extractvalue %dx.types.CBufRet.f32 %5446, 1
  %5449 = extractvalue %dx.types.CBufRet.f32 %5446, 2
  %5450 = fmul fast float %5444, %5447
  %5451 = fmul fast float %5444, %5448
  %5452 = fmul fast float %5444, %5449
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 0
  %5455 = extractvalue %dx.types.CBufRet.f32 %5453, 1
  %5456 = extractvalue %dx.types.CBufRet.f32 %5453, 2
  %5457 = fmul fast float %5445, %5454
  %5458 = fmul fast float %5445, %5455
  %5459 = fmul fast float %5445, %5456
  %5460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.CBufRet.f32 %5460, 1
  %5463 = extractvalue %dx.types.CBufRet.f32 %5460, 2
  %5464 = fadd fast float %5457, %5461
  %5465 = fadd fast float %5464, %5450
  %5466 = fadd fast float %5458, %5462
  %5467 = fadd fast float %5466, %5451
  %5468 = fadd fast float %5459, %5463
  %5469 = fadd fast float %5468, %5452
  %5470 = fmul fast float %5465, %180
  %5471 = fmul fast float %5467, %180
  %5472 = fmul fast float %5469, %180
  br label %5473

; <label>:5473                                    ; preds = %5413, %5178
  %5474 = phi float [ %5470, %5413 ], [ %129, %5178 ]
  %5475 = phi float [ %5471, %5413 ], [ %130, %5178 ]
  %5476 = phi float [ %5472, %5413 ], [ %131, %5178 ]
  %5477 = phi float [ %180, %5413 ], [ %70, %5178 ]
  %5478 = phi float [ %5434, %5413 ], [ %5204, %5178 ]
  %5479 = phi float [ %5435, %5413 ], [ %5205, %5178 ]
  %5480 = phi float [ %5436, %5413 ], [ %5206, %5178 ]
  %5481 = phi float [ %5437, %5413 ], [ %5179, %5178 ]
  %5482 = phi float [ %5438, %5413 ], [ %5180, %5178 ]
  %5483 = phi float [ %5439, %5413 ], [ %5181, %5178 ]
  %5484 = phi float [ %5414, %5413 ], [ 1.000000e+00, %5178 ]
  br i1 %5213, label %6639, label %5485

; <label>:5485                                    ; preds = %5473
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5490 = extractvalue %dx.types.CBufRet.f32 %5486, 3
  %5491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5491, 0
  %5493 = extractvalue %dx.types.CBufRet.f32 %5491, 1
  %5494 = extractvalue %dx.types.CBufRet.f32 %5491, 2
  %5495 = extractvalue %dx.types.CBufRet.f32 %5491, 3
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 0
  %5498 = extractvalue %dx.types.CBufRet.f32 %5496, 1
  %5499 = extractvalue %dx.types.CBufRet.f32 %5496, 2
  %5500 = extractvalue %dx.types.CBufRet.f32 %5496, 3
  %5501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.CBufRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.CBufRet.f32 %5501, 2
  %5505 = extractvalue %dx.types.CBufRet.f32 %5501, 3
  %5506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.f32 %5506, 3
  %5508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = extractvalue %dx.types.CBufRet.f32 %5508, 3
  %5510 = extractvalue %dx.types.CBufRet.f32 %5508, 0
  %5511 = extractvalue %dx.types.CBufRet.f32 %5508, 1
  %5512 = extractvalue %dx.types.CBufRet.f32 %5508, 2
  %5513 = fcmp fast olt float %5512, -5.000000e-01
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5475, float %5476, float %5474, float %5475, float %5476)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = call float @dx.op.unary.f32(i32 25, float %5514)  ; Rsqrt(value)
  %5516 = fmul fast float %5515, %5514
  %5517 = fmul fast float %5515, %5474
  %5518 = fmul fast float %5515, %5475
  %5519 = fmul fast float %5515, %5476
  %5520 = fadd fast float %5516, %5490
  %5521 = call float @dx.op.dot3.f32(i32 55, float %5517, float %5518, float %5519, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5523 = extractvalue %dx.types.CBufRet.i32 %5522, 1
  %5524 = and i32 %5523, 1
  %5525 = icmp ne i32 %5524, 0
  %5526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5527 = extractvalue %dx.types.CBufRet.f32 %5526, 2
  %5528 = fcmp fast ogt float %5527, 0.000000e+00
  %5529 = and i1 %5525, %5528
  br i1 %5529, label %5530, label %5936, !dx.controlflow.hints !126

; <label>:5530                                    ; preds = %5485
  %5531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5531, 3
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 2
  %5535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.f32 %5535, 2
  %5537 = fsub fast float %5534, %5536
  %5538 = and i32 %5523, 2
  %5539 = extractvalue %dx.types.CBufRet.i32 %5522, 0
  %5540 = call i32 @dx.op.binary.i32(i32 40, i32 %5539, i32 3)  ; UMin(a,b)
  %5541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5542 = extractvalue %dx.types.CBufRet.f32 %5541, 0
  %5543 = extractvalue %dx.types.CBufRet.f32 %5541, 1
  %5544 = extractvalue %dx.types.CBufRet.f32 %5535, 0
  %5545 = extractvalue %dx.types.CBufRet.f32 %5535, 1
  %5546 = fsub fast float %5542, %5544
  %5547 = fsub fast float %5543, %5545
  %5548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5549 = extractvalue %dx.types.CBufRet.f32 %5548, 0
  %5550 = fcmp fast ogt float %5549, 0.000000e+00
  %5551 = fsub fast float -0.000000e+00, %5546
  %5552 = fsub fast float -0.000000e+00, %5547
  %5553 = call float @dx.op.dot2.f32(i32 54, float %5517, float %5518, float %5517, float %5518)  ; Dot2(ax,ay,bx,by)
  %5554 = call float @dx.op.dot2.f32(i32 54, float %5517, float %5518, float %5551, float %5552)  ; Dot2(ax,ay,bx,by)
  %5555 = fmul fast float %5554, 2.000000e+00
  %5556 = call float @dx.op.dot2.f32(i32 54, float %5551, float %5552, float %5551, float %5552)  ; Dot2(ax,ay,bx,by)
  %5557 = fmul fast float %5549, %5549
  %5558 = fsub fast float %5556, %5557
  %5559 = fmul fast float %5555, %5555
  %5560 = fmul fast float %5553, 4.000000e+00
  %5561 = fmul fast float %5560, %5558
  %5562 = fsub fast float %5559, %5561
  %5563 = fcmp fast ogt float %5562, 0.000000e+00
  br i1 %5563, label %5564, label %5579

; <label>:5564                                    ; preds = %5530
  %5565 = fcmp fast ogt float %5555, 0.000000e+00
  %5566 = call float @dx.op.unary.f32(i32 24, float %5562)  ; Sqrt(value)
  %5567 = fsub fast float -0.000000e+00, %5566
  %5568 = select i1 %5565, float %5566, float %5567
  %5569 = fadd fast float %5568, %5555
  %5570 = fmul float %5569, -5.000000e-01
  %5571 = fdiv fast float %5570, %5553
  %5572 = call float @dx.op.binary.f32(i32 35, float %5571, float 0.000000e+00)  ; FMax(a,b)
  %5573 = call float @dx.op.binary.f32(i32 36, float %5516, float %5572)  ; FMin(a,b)
  %5574 = fdiv fast float %5558, %5570
  %5575 = call float @dx.op.binary.f32(i32 35, float %5574, float 0.000000e+00)  ; FMax(a,b)
  %5576 = call float @dx.op.binary.f32(i32 36, float %5516, float %5575)  ; FMin(a,b)
  %5577 = call float @dx.op.binary.f32(i32 36, float %5573, float %5576)  ; FMin(a,b)
  %5578 = call float @dx.op.binary.f32(i32 35, float %5573, float %5576)  ; FMax(a,b)
  br label %5579

; <label>:5579                                    ; preds = %5564, %5530
  %5580 = phi float [ %5578, %5564 ], [ -1.000000e+00, %5530 ]
  %5581 = phi float [ %5577, %5564 ], [ -1.000000e+00, %5530 ]
  %5582 = phi i1 [ true, %5564 ], [ false, %5530 ]
  %5583 = and i1 %5550, %5582
  br i1 %5583, label %5584, label %5586

; <label>:5584                                    ; preds = %5579
  %5585 = fcmp fast oeq float %5581, %5580
  br i1 %5585, label %5889, label %5587

; <label>:5586                                    ; preds = %5579
  br i1 %5550, label %5889, label %5587

; <label>:5587                                    ; preds = %5586, %5584
  %5588 = phi float [ %5516, %5586 ], [ %5580, %5584 ]
  %5589 = phi float [ 0.000000e+00, %5586 ], [ %5581, %5584 ]
  %5590 = icmp ne i32 %5538, 0
  %5591 = fmul fast float %5588, %5519
  %5592 = fadd fast float %5591, %5532
  %5593 = fmul fast float %5592, %5588
  %5594 = select i1 %5590, float 0.000000e+00, float %5593
  %5595 = fcmp fast oeq float %5519, 0.000000e+00
  %5596 = fdiv fast float %5537, %5519
  %5597 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5596)  ; FMax(a,b)
  %5598 = select i1 %5595, float %5588, float %5597
  %5599 = call float @dx.op.binary.f32(i32 36, float %5588, float %5598)  ; FMin(a,b)
  %5600 = fcmp fast ogt float %5519, 0.000000e+00
  %5601 = fcmp fast olt float %5537, 0.000000e+00
  br i1 %5600, label %5602, label %5659

; <label>:5602                                    ; preds = %5587
  %5603 = icmp eq i32 %5538, 0
  br i1 %5601, label %5604, label %5648

; <label>:5604                                    ; preds = %5602
  %5605 = select i1 %5603, float %5588, float 0.000000e+00
  %5606 = fsub fast float -0.000000e+00, %5605
  %5607 = call float @dx.op.unary.f32(i32 6, float %5606)  ; FAbs(value)
  %5608 = fmul fast float %5605, %5519
  %5609 = fadd fast float %5608, %5532
  %5610 = fmul fast float %5607, %5609
  %5611 = fsub fast float %5594, %5610
  %5612 = fsub fast float %5588, %5607
  %5613 = select i1 %5603, float %5612, float 0.000000e+00
  %5614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5615 = extractvalue %dx.types.CBufRet.f32 %5614, 0
  %5616 = extractvalue %dx.types.CBufRet.f32 %5614, 1
  %5617 = extractvalue %dx.types.CBufRet.f32 %5614, 2
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5620 = extractvalue %dx.types.CBufRet.f32 %5618, 1
  %5621 = extractvalue %dx.types.CBufRet.f32 %5618, 2
  %5622 = extractvalue %dx.types.CBufRet.f32 %5618, 3
  %5623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5624 = extractvalue %dx.types.CBufRet.f32 %5623, 3
  %5625 = call float @dx.op.binary.f32(i32 36, float %5611, float %5624)  ; FMin(a,b)
  %5626 = fmul fast float %5622, %5613
  %5627 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5628 = fsub fast float %5619, %5615
  %5629 = fsub fast float %5620, %5616
  %5630 = fsub fast float %5621, %5617
  %5631 = fmul fast float %5627, %5628
  %5632 = fmul fast float %5627, %5629
  %5633 = fmul fast float %5627, %5630
  %5634 = fadd fast float %5631, %5615
  %5635 = fadd fast float %5632, %5616
  %5636 = fadd fast float %5633, %5617
  %5637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5637, 0
  %5639 = extractvalue %dx.types.CBufRet.f32 %5637, 1
  %5640 = fadd fast float %5639, %5638
  %5641 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5637, 2
  %5643 = extractvalue %dx.types.CBufRet.f32 %5637, 3
  %5644 = fadd fast float %5643, %5642
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = fmul fast float %5641, %5625
  %5647 = fmul fast float %5646, %5645
  br label %5889

; <label>:5648                                    ; preds = %5602
  br i1 %5603, label %5649, label %5670

; <label>:5649                                    ; preds = %5648
  %5650 = call float @dx.op.binary.f32(i32 36, float %5599, float %5589)  ; FMin(a,b)
  %5651 = fsub fast float %5599, %5650
  %5652 = fsub fast float %5651, %5588
  %5653 = call float @dx.op.unary.f32(i32 6, float %5652)  ; FAbs(value)
  %5654 = fadd fast float %5651, %5588
  %5655 = fmul fast float %5654, %5519
  %5656 = fadd fast float %5655, %5532
  %5657 = fmul fast float %5656, %5653
  %5658 = fsub fast float %5594, %5657
  br label %5670

; <label>:5659                                    ; preds = %5587
  br i1 %5601, label %5660, label %5670

; <label>:5660                                    ; preds = %5659
  %5661 = call float @dx.op.binary.f32(i32 35, float %5589, float %5599)  ; FMax(a,b)
  %5662 = icmp eq i32 %5538, 0
  %5663 = select i1 %5662, float %5599, float 0.000000e+00
  %5664 = fsub fast float -0.000000e+00, %5663
  %5665 = call float @dx.op.unary.f32(i32 6, float %5664)  ; FAbs(value)
  %5666 = fmul fast float %5663, %5519
  %5667 = fadd fast float %5666, %5532
  %5668 = fmul fast float %5665, %5667
  %5669 = fsub fast float %5594, %5668
  br label %5670

; <label>:5670                                    ; preds = %5660, %5659, %5649, %5648
  %5671 = phi float [ %5589, %5648 ], [ %5589, %5649 ], [ %5661, %5660 ], [ %5589, %5659 ]
  %5672 = phi float [ 0.000000e+00, %5648 ], [ %5653, %5649 ], [ %5665, %5660 ], [ 0.000000e+00, %5659 ]
  %5673 = phi float [ %5594, %5648 ], [ %5658, %5649 ], [ %5669, %5660 ], [ %5594, %5659 ]
  %5674 = phi float [ %5599, %5648 ], [ %5599, %5649 ], [ %5588, %5660 ], [ %5588, %5659 ]
  %5675 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 0
  store float -1.000000e+00, float* %5675, align 4, !tbaa !116, !noalias !127
  %5676 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 1
  store float -1.000000e+00, float* %5676, align 4, !tbaa !116, !noalias !127
  %5677 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 2
  store float -1.000000e+00, float* %5677, align 4, !tbaa !116, !noalias !127
  %5678 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 0
  store float -1.000000e+00, float* %5678, align 4, !tbaa !116, !noalias !127
  %5679 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 1
  store float -1.000000e+00, float* %5679, align 4, !tbaa !116, !noalias !127
  %5680 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 2
  store float -1.000000e+00, float* %5680, align 4, !tbaa !116, !noalias !127
  %5681 = icmp sgt i32 %5540, 0
  br i1 %5681, label %5682, label %5743

; <label>:5682                                    ; preds = %5670
  br label %5683

; <label>:5683                                    ; preds = %5732, %5682
  %5684 = phi i32 [ %5733, %5732 ], [ 0, %5682 ]
  %5685 = phi i32 [ %5734, %5732 ], [ 0, %5682 ]
  %5686 = add nuw i32 %5685, 171
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5686)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 0
  %5689 = extractvalue %dx.types.CBufRet.f32 %5687, 1
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5693 = fsub fast float %5688, %5691
  %5694 = fsub fast float %5689, %5692
  %5695 = extractvalue %dx.types.CBufRet.f32 %5687, 2
  %5696 = fsub fast float -0.000000e+00, %5693
  %5697 = fsub fast float -0.000000e+00, %5694
  %5698 = call float @dx.op.dot2.f32(i32 54, float %5517, float %5518, float %5696, float %5697)  ; Dot2(ax,ay,bx,by)
  %5699 = fmul fast float %5698, 2.000000e+00
  %5700 = call float @dx.op.dot2.f32(i32 54, float %5696, float %5697, float %5696, float %5697)  ; Dot2(ax,ay,bx,by)
  %5701 = fmul fast float %5695, %5695
  %5702 = fsub fast float %5700, %5701
  %5703 = fmul fast float %5699, %5699
  %5704 = fmul fast float %5560, %5702
  %5705 = fsub fast float %5703, %5704
  %5706 = fcmp fast ogt float %5705, 0.000000e+00
  br i1 %5706, label %5707, label %5722

; <label>:5707                                    ; preds = %5683
  %5708 = fcmp fast ogt float %5699, 0.000000e+00
  %5709 = call float @dx.op.unary.f32(i32 24, float %5705)  ; Sqrt(value)
  %5710 = fsub fast float -0.000000e+00, %5709
  %5711 = select i1 %5708, float %5709, float %5710
  %5712 = fadd fast float %5711, %5699
  %5713 = fmul float %5712, -5.000000e-01
  %5714 = fdiv fast float %5713, %5553
  %5715 = call float @dx.op.binary.f32(i32 35, float %5714, float 0.000000e+00)  ; FMax(a,b)
  %5716 = call float @dx.op.binary.f32(i32 36, float %5588, float %5715)  ; FMin(a,b)
  %5717 = fdiv fast float %5702, %5713
  %5718 = call float @dx.op.binary.f32(i32 35, float %5717, float 0.000000e+00)  ; FMax(a,b)
  %5719 = call float @dx.op.binary.f32(i32 36, float %5588, float %5718)  ; FMin(a,b)
  %5720 = call float @dx.op.binary.f32(i32 36, float %5716, float %5719)  ; FMin(a,b)
  %5721 = call float @dx.op.binary.f32(i32 35, float %5716, float %5719)  ; FMax(a,b)
  br label %5722

; <label>:5722                                    ; preds = %5707, %5683
  %5723 = phi float [ %5721, %5707 ], [ -1.000000e+00, %5683 ]
  %5724 = phi float [ %5720, %5707 ], [ -1.000000e+00, %5683 ]
  %5725 = phi i1 [ true, %5707 ], [ false, %5683 ]
  br i1 %5725, label %5726, label %5732

; <label>:5726                                    ; preds = %5722
  %5727 = call float @dx.op.binary.f32(i32 35, float %5671, float %5724)  ; FMax(a,b)
  %5728 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %5685
  store float %5727, float* %5728, align 4, !tbaa !116, !noalias !127
  %5729 = call float @dx.op.binary.f32(i32 35, float %5671, float %5723)  ; FMax(a,b)
  %5730 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %5685
  store float %5729, float* %5730, align 4, !tbaa !116, !noalias !127
  %5731 = add nsw i32 %5684, 1
  br label %5732

; <label>:5732                                    ; preds = %5726, %5722
  %5733 = phi i32 [ %5731, %5726 ], [ %5684, %5722 ]
  %5734 = add nuw nsw i32 %5685, 1
  %5735 = icmp eq i32 %5734, %5540
  br i1 %5735, label %5736, label %5683

; <label>:5736                                    ; preds = %5732
  %5737 = load float, float* %5677, align 4, !tbaa !116, !alias.scope !143, !noalias !146
  %5738 = load float, float* %5676, align 4, !tbaa !116, !alias.scope !149, !noalias !150
  %5739 = load float, float* %5675, align 4, !tbaa !116, !alias.scope !151, !noalias !152
  %5740 = load float, float* %5680, align 4, !tbaa !116, !alias.scope !153, !noalias !156
  %5741 = load float, float* %5679, align 4, !tbaa !116, !alias.scope !159, !noalias !160
  %5742 = load float, float* %5678, align 4, !tbaa !116, !alias.scope !161, !noalias !162
  br label %5743

; <label>:5743                                    ; preds = %5736, %5670
  %5744 = phi float [ -1.000000e+00, %5670 ], [ %5742, %5736 ]
  %5745 = phi float [ -1.000000e+00, %5670 ], [ %5741, %5736 ]
  %5746 = phi float [ -1.000000e+00, %5670 ], [ %5740, %5736 ]
  %5747 = phi float [ -1.000000e+00, %5670 ], [ %5739, %5736 ]
  %5748 = phi float [ -1.000000e+00, %5670 ], [ %5738, %5736 ]
  %5749 = phi float [ -1.000000e+00, %5670 ], [ %5737, %5736 ]
  %5750 = phi i32 [ 0, %5670 ], [ %5733, %5736 ]
  %5751 = call float @dx.op.binary.f32(i32 36, float %5748, float %5749)  ; FMin(a,b)
  %5752 = call float @dx.op.binary.f32(i32 36, float %5747, float %5751)  ; FMin(a,b)
  %5753 = call float @dx.op.binary.f32(i32 35, float %5747, float %5748)  ; FMax(a,b)
  %5754 = call float @dx.op.binary.f32(i32 36, float %5753, float %5749)  ; FMin(a,b)
  %5755 = call float @dx.op.binary.f32(i32 36, float %5747, float %5748)  ; FMin(a,b)
  %5756 = call float @dx.op.binary.f32(i32 35, float %5755, float %5754)  ; FMax(a,b)
  %5757 = call float @dx.op.binary.f32(i32 35, float %5748, float %5749)  ; FMax(a,b)
  %5758 = call float @dx.op.binary.f32(i32 35, float %5747, float %5757)  ; FMax(a,b)
  store float %5752, float* %5675, align 4, !tbaa !116, !alias.scope !151, !noalias !152
  store float %5756, float* %5676, align 4, !tbaa !116, !alias.scope !149, !noalias !150
  store float %5758, float* %5677, align 4, !tbaa !116, !alias.scope !143, !noalias !146
  %5759 = call float @dx.op.binary.f32(i32 36, float %5745, float %5746)  ; FMin(a,b)
  %5760 = call float @dx.op.binary.f32(i32 36, float %5744, float %5759)  ; FMin(a,b)
  %5761 = call float @dx.op.binary.f32(i32 35, float %5744, float %5745)  ; FMax(a,b)
  %5762 = call float @dx.op.binary.f32(i32 36, float %5761, float %5746)  ; FMin(a,b)
  %5763 = call float @dx.op.binary.f32(i32 36, float %5744, float %5745)  ; FMin(a,b)
  %5764 = call float @dx.op.binary.f32(i32 35, float %5763, float %5762)  ; FMax(a,b)
  %5765 = call float @dx.op.binary.f32(i32 35, float %5745, float %5746)  ; FMax(a,b)
  %5766 = call float @dx.op.binary.f32(i32 35, float %5744, float %5765)  ; FMax(a,b)
  store float %5760, float* %5678, align 4, !tbaa !116, !alias.scope !161, !noalias !162
  store float %5764, float* %5679, align 4, !tbaa !116, !alias.scope !159, !noalias !160
  store float %5766, float* %5680, align 4, !tbaa !116, !alias.scope !153, !noalias !156
  %5767 = sub nsw i32 3, %5750
  %5768 = icmp sgt i32 %5767, 2
  br i1 %5768, label %5769, label %5807

; <label>:5769                                    ; preds = %5743
  %5770 = icmp eq i32 %5538, 0
  %5771 = fsub fast float %5588, %5672
  %5772 = select i1 %5770, float %5771, float %5672
  %5773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5774 = extractvalue %dx.types.CBufRet.f32 %5773, 0
  %5775 = extractvalue %dx.types.CBufRet.f32 %5773, 1
  %5776 = extractvalue %dx.types.CBufRet.f32 %5773, 2
  %5777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5778 = extractvalue %dx.types.CBufRet.f32 %5777, 0
  %5779 = extractvalue %dx.types.CBufRet.f32 %5777, 1
  %5780 = extractvalue %dx.types.CBufRet.f32 %5777, 2
  %5781 = extractvalue %dx.types.CBufRet.f32 %5777, 3
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5784 = call float @dx.op.binary.f32(i32 36, float %5673, float %5783)  ; FMin(a,b)
  %5785 = fmul fast float %5781, %5772
  %5786 = call float @dx.op.unary.f32(i32 7, float %5785)  ; Saturate(value)
  %5787 = fsub fast float %5778, %5774
  %5788 = fsub fast float %5779, %5775
  %5789 = fsub fast float %5780, %5776
  %5790 = fmul fast float %5786, %5787
  %5791 = fmul fast float %5786, %5788
  %5792 = fmul fast float %5786, %5789
  %5793 = fadd fast float %5790, %5774
  %5794 = fadd fast float %5791, %5775
  %5795 = fadd fast float %5792, %5776
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5798 = extractvalue %dx.types.CBufRet.f32 %5796, 1
  %5799 = fadd fast float %5798, %5797
  %5800 = call float @dx.op.unary.f32(i32 7, float %5799)  ; Saturate(value)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5796, 2
  %5802 = extractvalue %dx.types.CBufRet.f32 %5796, 3
  %5803 = fadd fast float %5802, %5801
  %5804 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5805 = fmul fast float %5800, %5784
  %5806 = fmul fast float %5805, %5804
  br label %5889

; <label>:5807                                    ; preds = %5743
  %5808 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %5767
  %5809 = load float, float* %5808, align 4, !tbaa !116, !noalias !127
  %5810 = fcmp fast olt float %5809, %5674
  %5811 = icmp sgt i32 %5750, 0
  %5812 = and i1 %5811, %5810
  br i1 %5812, label %5813, label %5850

; <label>:5813                                    ; preds = %5807
  br label %5814

; <label>:5814                                    ; preds = %5843, %5813
  %5815 = phi float [ %5844, %5843 ], [ %5672, %5813 ]
  %5816 = phi float [ %5845, %5843 ], [ %5673, %5813 ]
  %5817 = phi float [ %5825, %5843 ], [ %5809, %5813 ]
  %5818 = phi i32 [ %5822, %5843 ], [ %5767, %5813 ]
  %5819 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %5818
  %5820 = load float, float* %5819, align 4, !tbaa !116, !noalias !127
  %5821 = icmp slt i32 %5818, 2
  %5822 = add nsw i32 %5818, 1
  %5823 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %5822
  %5824 = load float, float* %5823, align 4, !tbaa !116, !noalias !127
  %5825 = select i1 %5821, float %5824, float %5588
  %5826 = call float @dx.op.binary.f32(i32 36, float %5825, float %5820)  ; FMin(a,b)
  %5827 = call float @dx.op.binary.f32(i32 36, float %5674, float %5826)  ; FMin(a,b)
  %5828 = icmp eq i32 %5538, 0
  %5829 = fadd fast float %5827, %5817
  %5830 = fmul fast float %5829, %5519
  %5831 = fadd fast float %5830, %5532
  br i1 %5828, label %5837, label %5832

; <label>:5832                                    ; preds = %5814
  %5833 = fsub fast float %5827, %5817
  %5834 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5833)  ; FMax(a,b)
  %5835 = fmul fast float %5834, %5831
  %5836 = fadd fast float %5835, %5816
  br label %5843

; <label>:5837                                    ; preds = %5814
  %5838 = fsub fast float %5817, %5827
  %5839 = call float @dx.op.unary.f32(i32 6, float %5838)  ; FAbs(value)
  %5840 = fadd fast float %5839, %5815
  %5841 = fmul fast float %5839, %5831
  %5842 = fsub fast float %5816, %5841
  br label %5843

; <label>:5843                                    ; preds = %5837, %5832
  %5844 = phi float [ %5834, %5832 ], [ %5840, %5837 ]
  %5845 = phi float [ %5836, %5832 ], [ %5842, %5837 ]
  %5846 = fcmp fast olt float %5825, %5674
  %5847 = icmp slt i32 %5822, 3
  %5848 = and i1 %5847, %5846
  br i1 %5848, label %5814, label %5849

; <label>:5849                                    ; preds = %5843
  br label %5850

; <label>:5850                                    ; preds = %5849, %5807
  %5851 = phi float [ %5672, %5807 ], [ %5844, %5849 ]
  %5852 = phi float [ %5673, %5807 ], [ %5845, %5849 ]
  %5853 = fsub fast float %5588, %5851
  %5854 = select i1 %5590, float %5851, float %5853
  %5855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5855, 0
  %5857 = extractvalue %dx.types.CBufRet.f32 %5855, 1
  %5858 = extractvalue %dx.types.CBufRet.f32 %5855, 2
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5863 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %5864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.f32 %5864, 3
  %5866 = call float @dx.op.binary.f32(i32 36, float %5852, float %5865)  ; FMin(a,b)
  %5867 = fmul fast float %5863, %5854
  %5868 = call float @dx.op.unary.f32(i32 7, float %5867)  ; Saturate(value)
  %5869 = fsub fast float %5860, %5856
  %5870 = fsub fast float %5861, %5857
  %5871 = fsub fast float %5862, %5858
  %5872 = fmul fast float %5868, %5869
  %5873 = fmul fast float %5868, %5870
  %5874 = fmul fast float %5868, %5871
  %5875 = fadd fast float %5872, %5856
  %5876 = fadd fast float %5873, %5857
  %5877 = fadd fast float %5874, %5858
  %5878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5879 = extractvalue %dx.types.CBufRet.f32 %5878, 0
  %5880 = extractvalue %dx.types.CBufRet.f32 %5878, 1
  %5881 = fadd fast float %5880, %5879
  %5882 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5878, 2
  %5884 = extractvalue %dx.types.CBufRet.f32 %5878, 3
  %5885 = fadd fast float %5884, %5883
  %5886 = call float @dx.op.unary.f32(i32 7, float %5885)  ; Saturate(value)
  %5887 = fmul fast float %5882, %5866
  %5888 = fmul fast float %5887, %5886
  br label %5889

; <label>:5889                                    ; preds = %5850, %5769, %5604, %5586, %5584
  %5890 = phi float [ %5613, %5604 ], [ %5772, %5769 ], [ %5854, %5850 ], [ 0.000000e+00, %5584 ], [ 0.000000e+00, %5586 ]
  %5891 = phi float [ %5647, %5604 ], [ %5806, %5769 ], [ %5888, %5850 ], [ 0.000000e+00, %5584 ], [ 0.000000e+00, %5586 ]
  %5892 = phi float [ %5634, %5604 ], [ %5793, %5769 ], [ %5875, %5850 ], [ 0.000000e+00, %5584 ], [ 0.000000e+00, %5586 ]
  %5893 = phi float [ %5635, %5604 ], [ %5794, %5769 ], [ %5876, %5850 ], [ 0.000000e+00, %5584 ], [ 0.000000e+00, %5586 ]
  %5894 = phi float [ %5636, %5604 ], [ %5795, %5769 ], [ %5877, %5850 ], [ 0.000000e+00, %5584 ], [ 0.000000e+00, %5586 ]
  %5895 = fmul fast float %5527, %5891
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5898 = fsub fast float %5534, %5897
  %5899 = fcmp fast olt float %5895, -2.000000e+01
  %5900 = call float @dx.op.unary.f32(i32 21, float %5895)  ; Exp(value)
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 2
  %5903 = extractvalue %dx.types.CBufRet.f32 %5901, 3
  %5904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.f32 %5904, 2
  %5906 = fmul fast float %5903, %5898
  %5907 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  %5908 = fsub fast float 1.000000e+00, %5907
  %5909 = fmul fast float %5519, 5.000000e-01
  %5910 = fadd fast float %5909, 5.000000e-01
  %5911 = call float @dx.op.unary.f32(i32 7, float %5910)  ; Saturate(value)
  %5912 = fsub fast float 1.000000e+00, %5911
  %5913 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5908)  ; FMax(a,b)
  %5914 = fdiv fast float %5912, %5913
  %5915 = fsub fast float %5898, %5476
  %5916 = call float @dx.op.unary.f32(i32 6, float %5915)  ; FAbs(value)
  %5917 = fmul fast float %5916, %5902
  %5918 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5919 = fsub fast float 1.000000e+00, %5917
  %5920 = fmul fast float %5919, %5918
  %5921 = fadd fast float %5920, %5917
  %5922 = fmul fast float %5905, %5898
  %5923 = call float @dx.op.unary.f32(i32 7, float %5922)  ; Saturate(value)
  %5924 = fsub fast float 1.000000e+00, %5921
  %5925 = fmul fast float %5924, %5923
  %5926 = fadd fast float %5925, %5921
  %5927 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5928 = fadd fast float %5900, -1.000000e+00
  %5929 = select i1 %5899, float -1.000000e+00, float %5928
  %5930 = fmul fast float %5927, %5929
  %5931 = fadd fast float %5930, 1.000000e+00
  %5932 = fsub fast float -0.000000e+00, %5930
  %5933 = fmul fast float %5892, %5932
  %5934 = fmul fast float %5893, %5932
  %5935 = fmul fast float %5894, %5932
  br label %5936

; <label>:5936                                    ; preds = %5889, %5485
  %5937 = phi float [ %5890, %5889 ], [ 0.000000e+00, %5485 ]
  %5938 = phi float [ %5931, %5889 ], [ 1.000000e+00, %5485 ]
  %5939 = phi float [ %5933, %5889 ], [ 0.000000e+00, %5485 ]
  %5940 = phi float [ %5934, %5889 ], [ 0.000000e+00, %5485 ]
  %5941 = phi float [ %5935, %5889 ], [ 0.000000e+00, %5485 ]
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 1
  %5944 = fsub fast float 1.000000e+00, %5938
  %5945 = fmul fast float %5944, %5520
  %5946 = fmul fast float %5945, %5943
  %5947 = fsub fast float %5520, %5946
  br i1 %5513, label %5948, label %5977, !dx.controlflow.hints !163

; <label>:5948                                    ; preds = %5936
  %5949 = fmul fast float %5521, %5510
  %5950 = fadd fast float %5949, %5511
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = fmul fast float %5492, %5947
  %5953 = fsub fast float -0.000000e+00, %5952
  %5954 = fmul fast float %5493, %5947
  %5955 = fsub fast float -0.000000e+00, %5954
  %5956 = call float @dx.op.unary.f32(i32 21, float %5953)  ; Exp(value)
  %5957 = call float @dx.op.unary.f32(i32 21, float %5955)  ; Exp(value)
  %5958 = call float @dx.op.binary.f32(i32 35, float %5500, float %5956)  ; FMax(a,b)
  %5959 = call float @dx.op.binary.f32(i32 35, float %5500, float %5957)  ; FMax(a,b)
  %5960 = fsub fast float %5959, %5958
  %5961 = fmul fast float %5960, %5951
  %5962 = fadd fast float %5961, %5958
  %5963 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5964 = fsub fast float %5497, %5502
  %5965 = fsub fast float %5498, %5503
  %5966 = fsub fast float %5499, %5504
  %5967 = fmul fast float %5951, %5964
  %5968 = fmul fast float %5951, %5965
  %5969 = fmul fast float %5951, %5966
  %5970 = fadd fast float %5967, %5502
  %5971 = fadd fast float %5968, %5503
  %5972 = fadd fast float %5969, %5504
  %5973 = fsub fast float 1.000000e+00, %5963
  %5974 = fmul fast float %5973, %5970
  %5975 = fmul fast float %5973, %5971
  %5976 = fmul fast float %5973, %5972
  br label %6036

; <label>:5977                                    ; preds = %5936
  %5978 = fmul fast float %5947, %5509
  %5979 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5980 = fsub fast float 2.000000e+00, %5979
  %5981 = fmul fast float %5979, 9.921875e-01
  %5982 = fmul fast float %5981, %5980
  %5983 = fadd fast float %5982, 3.906250e-03
  %5984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %5983, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5985 = extractvalue %dx.types.ResRet.f32 %5984, 0
  %5986 = fsub fast float %5979, %5985
  %5987 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5986)  ; FMax(a,b)
  %5988 = fmul fast float %5495, %5476
  %5989 = call float @dx.op.unary.f32(i32 6, float %5988)  ; FAbs(value)
  %5990 = fcmp fast ogt float %5989, 0x3EB0C6F7A0000000
  br i1 %5990, label %5991, label %5997, !dx.controlflow.hints !164

; <label>:5991                                    ; preds = %5977
  %5992 = fmul fast float %5988, 0xBFF7154760000000
  %5993 = call float @dx.op.unary.f32(i32 21, float %5992)  ; Exp(value)
  %5994 = fsub fast float 1.000000e+00, %5993
  %5995 = fdiv fast float %5994, %5988
  %5996 = fmul fast float %5995, %5505
  br label %5997

; <label>:5997                                    ; preds = %5991, %5977
  %5998 = phi float [ %5996, %5991 ], [ %5505, %5977 ]
  %5999 = fadd fast float %5998, %5507
  %6000 = fmul fast float %5999, %5987
  %6001 = fmul fast float %5492, %6000
  %6002 = fsub fast float -0.000000e+00, %6001
  %6003 = fmul fast float %5493, %6000
  %6004 = fsub fast float -0.000000e+00, %6003
  %6005 = fmul fast float %5494, %6000
  %6006 = fsub fast float -0.000000e+00, %6005
  %6007 = call float @dx.op.unary.f32(i32 21, float %6002)  ; Exp(value)
  %6008 = call float @dx.op.unary.f32(i32 21, float %6004)  ; Exp(value)
  %6009 = call float @dx.op.unary.f32(i32 21, float %6006)  ; Exp(value)
  %6010 = fmul fast float %5521, %5521
  %6011 = fadd fast float %6010, 1.000000e+00
  %6012 = fmul fast float %6011, 0x3FAE8EC8A0000000
  %6013 = fmul fast float %6012, %5502
  %6014 = fmul fast float %6012, %5503
  %6015 = fmul fast float %6012, %5504
  %6016 = fmul fast float %5521, %5500
  %6017 = fsub fast float 1.000000e+00, %6016
  %6018 = fmul fast float %5500, %5500
  %6019 = fsub fast float 1.000000e+00, %6018
  %6020 = fmul fast float %6019, 0x3FB45F3060000000
  %6021 = fmul fast float %6017, %6017
  %6022 = fdiv fast float 1.000000e+00, %6021
  %6023 = fmul fast float %6020, %6022
  %6024 = fmul fast float %6023, %5497
  %6025 = fmul fast float %6023, %5498
  %6026 = fmul fast float %6023, %5499
  %6027 = fadd fast float %6024, %6013
  %6028 = fadd fast float %6025, %6014
  %6029 = fadd fast float %6026, %6015
  %6030 = fsub fast float 1.000000e+00, %6007
  %6031 = fsub fast float 1.000000e+00, %6008
  %6032 = fsub fast float 1.000000e+00, %6009
  %6033 = fmul fast float %6027, %6030
  %6034 = fmul fast float %6028, %6031
  %6035 = fmul fast float %6029, %6032
  br label %6036

; <label>:6036                                    ; preds = %5997, %5948
  %6037 = phi float [ %5974, %5948 ], [ %6033, %5997 ]
  %6038 = phi float [ %5975, %5948 ], [ %6034, %5997 ]
  %6039 = phi float [ %5976, %5948 ], [ %6035, %5997 ]
  %6040 = phi float [ %5963, %5948 ], [ %6007, %5997 ]
  %6041 = phi float [ %5963, %5948 ], [ %6008, %5997 ]
  %6042 = phi float [ %5963, %5948 ], [ %6009, %5997 ]
  br i1 %5529, label %6043, label %6241, !dx.controlflow.hints !165

; <label>:6043                                    ; preds = %6036
  %6044 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %6045 = fmul fast float %6044, %5944
  %6046 = fsub fast float %5939, %6037
  %6047 = fsub fast float %5940, %6038
  %6048 = fsub fast float %5941, %6039
  %6049 = fmul fast float %6045, %6046
  %6050 = fmul fast float %6045, %6047
  %6051 = fmul fast float %6045, %6048
  %6052 = fadd fast float %6049, %6037
  %6053 = fadd fast float %6050, %6038
  %6054 = fadd fast float %6051, %6039
  %6055 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6040)  ; FMax(a,b)
  %6056 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6041)  ; FMax(a,b)
  %6057 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6042)  ; FMax(a,b)
  %6058 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5938)  ; FMax(a,b)
  %6059 = call float @dx.op.binary.f32(i32 35, float %5937, float %5947)  ; FMax(a,b)
  %6060 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6059)  ; FMax(a,b)
  %6061 = fdiv fast float %5937, %6060
  %6062 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  %6063 = fdiv fast float %5947, %6060
  %6064 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6065 = fcmp fast une float %6058, 1.000000e+00
  br i1 %6065, label %6066, label %6079, !dx.controlflow.hints !166

; <label>:6066                                    ; preds = %6043
  %6067 = call float @dx.op.unary.f32(i32 23, float %6058)  ; Log(value)
  %6068 = fmul fast float %6067, 0x3FE62E4300000000
  %6069 = fmul fast float %5939, %6068
  %6070 = fsub fast float -0.000000e+00, %6069
  %6071 = fmul fast float %5940, %6068
  %6072 = fsub fast float -0.000000e+00, %6071
  %6073 = fmul fast float %5941, %6068
  %6074 = fsub fast float -0.000000e+00, %6073
  %6075 = fsub fast float 1.000000e+00, %6058
  %6076 = fdiv fast float %6070, %6075
  %6077 = fdiv fast float %6072, %6075
  %6078 = fdiv fast float %6074, %6075
  br label %6079

; <label>:6079                                    ; preds = %6066, %6043
  %6080 = phi float [ %6076, %6066 ], [ %5939, %6043 ]
  %6081 = phi float [ %6077, %6066 ], [ %5940, %6043 ]
  %6082 = phi float [ %6078, %6066 ], [ %5941, %6043 ]
  %6083 = phi float [ %6068, %6066 ], [ 0.000000e+00, %6043 ]
  %6084 = fcmp fast une float %6055, 1.000000e+00
  br i1 %6084, label %6085, label %6092, !dx.controlflow.hints !167

; <label>:6085                                    ; preds = %6079
  %6086 = call float @dx.op.unary.f32(i32 23, float %6055)  ; Log(value)
  %6087 = fmul fast float %6086, 0x3FE62E4300000000
  %6088 = fmul fast float %6052, %6087
  %6089 = fsub fast float -0.000000e+00, %6088
  %6090 = fsub fast float 1.000000e+00, %6055
  %6091 = fdiv fast float %6089, %6090
  br label %6092

; <label>:6092                                    ; preds = %6085, %6079
  %6093 = phi float [ %6091, %6085 ], [ %6052, %6079 ]
  %6094 = phi float [ %6087, %6085 ], [ 0.000000e+00, %6079 ]
  %6095 = fcmp fast une float %6056, 1.000000e+00
  br i1 %6095, label %6096, label %6103, !dx.controlflow.hints !167

; <label>:6096                                    ; preds = %6092
  %6097 = call float @dx.op.unary.f32(i32 23, float %6056)  ; Log(value)
  %6098 = fmul fast float %6097, 0x3FE62E4300000000
  %6099 = fmul fast float %6053, %6098
  %6100 = fsub fast float -0.000000e+00, %6099
  %6101 = fsub fast float 1.000000e+00, %6056
  %6102 = fdiv fast float %6100, %6101
  br label %6103

; <label>:6103                                    ; preds = %6096, %6092
  %6104 = phi float [ %6102, %6096 ], [ %6053, %6092 ]
  %6105 = phi float [ %6098, %6096 ], [ 0.000000e+00, %6092 ]
  %6106 = fcmp fast une float %6057, 1.000000e+00
  br i1 %6106, label %6107, label %6114, !dx.controlflow.hints !167

; <label>:6107                                    ; preds = %6103
  %6108 = call float @dx.op.unary.f32(i32 23, float %6057)  ; Log(value)
  %6109 = fmul fast float %6108, 0x3FE62E4300000000
  %6110 = fmul fast float %6054, %6109
  %6111 = fsub fast float -0.000000e+00, %6110
  %6112 = fsub fast float 1.000000e+00, %6057
  %6113 = fdiv fast float %6111, %6112
  br label %6114

; <label>:6114                                    ; preds = %6107, %6103
  %6115 = phi float [ %6113, %6107 ], [ %6054, %6103 ]
  %6116 = phi float [ %6109, %6107 ], [ 0.000000e+00, %6103 ]
  %6117 = fmul fast float %6080, %6064
  %6118 = fmul fast float %6081, %6064
  %6119 = fmul fast float %6082, %6064
  %6120 = fmul fast float %6083, %6064
  %6121 = fmul fast float %6093, %6062
  %6122 = fmul fast float %6104, %6062
  %6123 = fmul fast float %6115, %6062
  %6124 = fmul fast float %6094, %6062
  %6125 = fmul fast float %6105, %6062
  %6126 = fmul fast float %6116, %6062
  %6127 = fadd fast float %6121, %6117
  %6128 = fadd fast float %6122, %6118
  %6129 = fadd fast float %6123, %6119
  %6130 = fadd fast float %6124, %6120
  %6131 = fadd fast float %6125, %6120
  %6132 = fadd fast float %6126, %6120
  %6133 = fcmp fast une float %6130, 0.000000e+00
  br i1 %6133, label %6134, label %6141, !dx.controlflow.hints !168

; <label>:6134                                    ; preds = %6114
  %6135 = fmul fast float %6130, 0x3FF7154760000000
  %6136 = call float @dx.op.unary.f32(i32 21, float %6135)  ; Exp(value)
  %6137 = fsub fast float 1.000000e+00, %6136
  %6138 = fmul fast float %6127, %6137
  %6139 = fsub fast float -0.000000e+00, %6138
  %6140 = fdiv fast float %6139, %6130
  br label %6141

; <label>:6141                                    ; preds = %6134, %6114
  %6142 = phi float [ %6136, %6134 ], [ 1.000000e+00, %6114 ]
  %6143 = phi float [ %6140, %6134 ], [ %6127, %6114 ]
  %6144 = fcmp fast une float %6131, 0.000000e+00
  br i1 %6144, label %6145, label %6152, !dx.controlflow.hints !168

; <label>:6145                                    ; preds = %6141
  %6146 = fmul fast float %6131, 0x3FF7154760000000
  %6147 = call float @dx.op.unary.f32(i32 21, float %6146)  ; Exp(value)
  %6148 = fsub fast float 1.000000e+00, %6147
  %6149 = fmul fast float %6128, %6148
  %6150 = fsub fast float -0.000000e+00, %6149
  %6151 = fdiv fast float %6150, %6131
  br label %6152

; <label>:6152                                    ; preds = %6145, %6141
  %6153 = phi float [ %6147, %6145 ], [ 1.000000e+00, %6141 ]
  %6154 = phi float [ %6151, %6145 ], [ %6128, %6141 ]
  %6155 = fcmp fast une float %6132, 0.000000e+00
  br i1 %6155, label %6156, label %6163, !dx.controlflow.hints !168

; <label>:6156                                    ; preds = %6152
  %6157 = fmul fast float %6132, 0x3FF7154760000000
  %6158 = call float @dx.op.unary.f32(i32 21, float %6157)  ; Exp(value)
  %6159 = fsub fast float 1.000000e+00, %6158
  %6160 = fmul fast float %6129, %6159
  %6161 = fsub fast float -0.000000e+00, %6160
  %6162 = fdiv fast float %6161, %6132
  br label %6163

; <label>:6163                                    ; preds = %6156, %6152
  %6164 = phi float [ %6158, %6156 ], [ 1.000000e+00, %6152 ]
  %6165 = phi float [ %6162, %6156 ], [ %6129, %6152 ]
  %6166 = fcmp fast ogt float %6062, %6064
  br i1 %6166, label %6167, label %6187

; <label>:6167                                    ; preds = %6163
  %6168 = fsub fast float 1.000000e+00, %6064
  %6169 = fmul fast float %6080, %6168
  %6170 = fmul fast float %6081, %6168
  %6171 = fmul fast float %6082, %6168
  %6172 = fmul fast float %6083, %6168
  %6173 = fcmp fast une float %6172, 0.000000e+00
  br i1 %6173, label %6174, label %6225, !dx.controlflow.hints !169

; <label>:6174                                    ; preds = %6167
  %6175 = fmul fast float %6172, 0x3FF7154760000000
  %6176 = call float @dx.op.unary.f32(i32 21, float %6175)  ; Exp(value)
  %6177 = fsub fast float 1.000000e+00, %6176
  %6178 = fmul fast float %6169, %6177
  %6179 = fsub fast float -0.000000e+00, %6178
  %6180 = fmul fast float %6170, %6177
  %6181 = fsub fast float -0.000000e+00, %6180
  %6182 = fmul fast float %6171, %6177
  %6183 = fsub fast float -0.000000e+00, %6182
  %6184 = fdiv fast float %6179, %6172
  %6185 = fdiv fast float %6181, %6172
  %6186 = fdiv fast float %6183, %6172
  br label %6225

; <label>:6187                                    ; preds = %6163
  %6188 = fsub fast float 1.000000e+00, %6062
  %6189 = fmul fast float %6093, %6188
  %6190 = fmul fast float %6104, %6188
  %6191 = fmul fast float %6115, %6188
  %6192 = fmul fast float %6094, %6188
  %6193 = fmul fast float %6105, %6188
  %6194 = fmul fast float %6116, %6188
  %6195 = fcmp fast une float %6192, 0.000000e+00
  br i1 %6195, label %6196, label %6203, !dx.controlflow.hints !168

; <label>:6196                                    ; preds = %6187
  %6197 = fmul fast float %6192, 0x3FF7154760000000
  %6198 = call float @dx.op.unary.f32(i32 21, float %6197)  ; Exp(value)
  %6199 = fsub fast float 1.000000e+00, %6198
  %6200 = fmul fast float %6189, %6199
  %6201 = fsub fast float -0.000000e+00, %6200
  %6202 = fdiv fast float %6201, %6192
  br label %6203

; <label>:6203                                    ; preds = %6196, %6187
  %6204 = phi float [ %6202, %6196 ], [ %6189, %6187 ]
  %6205 = phi float [ %6198, %6196 ], [ 1.000000e+00, %6187 ]
  %6206 = fcmp fast une float %6193, 0.000000e+00
  br i1 %6206, label %6207, label %6214, !dx.controlflow.hints !168

; <label>:6207                                    ; preds = %6203
  %6208 = fmul fast float %6193, 0x3FF7154760000000
  %6209 = call float @dx.op.unary.f32(i32 21, float %6208)  ; Exp(value)
  %6210 = fsub fast float 1.000000e+00, %6209
  %6211 = fmul fast float %6190, %6210
  %6212 = fsub fast float -0.000000e+00, %6211
  %6213 = fdiv fast float %6212, %6193
  br label %6214

; <label>:6214                                    ; preds = %6207, %6203
  %6215 = phi float [ %6213, %6207 ], [ %6190, %6203 ]
  %6216 = phi float [ %6209, %6207 ], [ 1.000000e+00, %6203 ]
  %6217 = fcmp fast une float %6194, 0.000000e+00
  br i1 %6217, label %6218, label %6225, !dx.controlflow.hints !168

; <label>:6218                                    ; preds = %6214
  %6219 = fmul fast float %6194, 0x3FF7154760000000
  %6220 = call float @dx.op.unary.f32(i32 21, float %6219)  ; Exp(value)
  %6221 = fsub fast float 1.000000e+00, %6220
  %6222 = fmul fast float %6191, %6221
  %6223 = fsub fast float -0.000000e+00, %6222
  %6224 = fdiv fast float %6223, %6194
  br label %6225

; <label>:6225                                    ; preds = %6218, %6214, %6174, %6167
  %6226 = phi float [ %6224, %6218 ], [ %6186, %6174 ], [ %6171, %6167 ], [ %6191, %6214 ]
  %6227 = phi float [ %6215, %6218 ], [ %6185, %6174 ], [ %6170, %6167 ], [ %6215, %6214 ]
  %6228 = phi float [ %6204, %6218 ], [ %6184, %6174 ], [ %6169, %6167 ], [ %6204, %6214 ]
  %6229 = phi float [ %6220, %6218 ], [ %6176, %6174 ], [ 1.000000e+00, %6167 ], [ 1.000000e+00, %6214 ]
  %6230 = phi float [ %6216, %6218 ], [ %6176, %6174 ], [ 1.000000e+00, %6167 ], [ %6216, %6214 ]
  %6231 = phi float [ %6205, %6218 ], [ %6176, %6174 ], [ 1.000000e+00, %6167 ], [ %6205, %6214 ]
  %6232 = fmul fast float %6231, %6143
  %6233 = fmul fast float %6230, %6154
  %6234 = fmul fast float %6229, %6165
  %6235 = fadd fast float %6232, %6228
  %6236 = fadd fast float %6233, %6227
  %6237 = fadd fast float %6234, %6226
  %6238 = fmul fast float %6231, %6142
  %6239 = fmul fast float %6230, %6153
  %6240 = fmul fast float %6229, %6164
  br label %6241

; <label>:6241                                    ; preds = %6225, %6036
  %6242 = phi float [ %6240, %6225 ], [ %6042, %6036 ]
  %6243 = phi float [ %6239, %6225 ], [ %6041, %6036 ]
  %6244 = phi float [ %6238, %6225 ], [ %6040, %6036 ]
  %6245 = phi float [ %6237, %6225 ], [ %6039, %6036 ]
  %6246 = phi float [ %6236, %6225 ], [ %6038, %6036 ]
  %6247 = phi float [ %6235, %6225 ], [ %6037, %6036 ]
  %6248 = fmul fast float %6247, %5187
  %6249 = fmul fast float %6246, %5189
  %6250 = fmul fast float %6245, %5191
  %6251 = fmul fast float %6244, %5484
  %6252 = call float @dx.op.dot3.f32(i32 55, float %6244, float %6243, float %6242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6253 = call float @dx.op.dot3.f32(i32 55, float %6248, float %6249, float %6250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6254 = select i1 %219, float %6252, float %6244
  %6255 = select i1 %219, float %6252, float %6243
  %6256 = select i1 %219, float 1.000000e+00, float %6242
  %6257 = select i1 %219, float %6253, float %6248
  %6258 = select i1 %219, float 0.000000e+00, float %6249
  %6259 = select i1 %219, float 0.000000e+00, float %6250
  %6260 = fmul fast float %6254, %5478
  %6261 = fmul fast float %6255, %5479
  %6262 = fmul fast float %6256, %5480
  %6263 = fadd fast float %6260, %6257
  %6264 = fadd fast float %6261, %6258
  %6265 = fadd fast float %6259, %6262
  %6266 = fmul fast float %6254, %5481
  %6267 = fmul fast float %6255, %5482
  %6268 = fmul fast float %6256, %5483
  %6269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.i32 %6269, 0
  %6271 = icmp eq i32 %6270, 0
  br i1 %6271, label %6639, label %6272, !dx.controlflow.hints !170

; <label>:6272                                    ; preds = %6241
  %6273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6273, 2
  %6275 = extractvalue %dx.types.CBufRet.f32 %6273, 3
  %6276 = fmul fast float %6274, %82
  %6277 = fmul fast float %6275, %83
  %6278 = fmul fast float %6276, 2.000000e+00
  %6279 = fmul fast float %6277, 2.000000e+00
  %6280 = fsub fast float 1.000000e+00, %6278
  %6281 = fsub fast float 1.000000e+00, %6279
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 0
  %6284 = extractvalue %dx.types.CBufRet.f32 %6282, 1
  %6285 = extractvalue %dx.types.CBufRet.f32 %6282, 2
  %6286 = fmul fast float %6280, %6283
  %6287 = fmul fast float %6280, %6284
  %6288 = fmul fast float %6280, %6285
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6292 = extractvalue %dx.types.CBufRet.f32 %6289, 2
  %6293 = fmul fast float %6281, %6290
  %6294 = fmul fast float %6281, %6291
  %6295 = fmul fast float %6281, %6292
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %6298 = extractvalue %dx.types.CBufRet.f32 %6296, 1
  %6299 = extractvalue %dx.types.CBufRet.f32 %6296, 2
  %6300 = fadd fast float %6293, %6297
  %6301 = fadd fast float %6300, %6286
  %6302 = fadd fast float %6294, %6298
  %6303 = fadd fast float %6302, %6287
  %6304 = fadd fast float %6295, %6299
  %6305 = fadd fast float %6304, %6288
  %6306 = fmul fast float %6301, %5477
  %6307 = fmul fast float %6303, %5477
  %6308 = fmul fast float %6305, %5477
  %6309 = fmul fast float %6306, %6306
  %6310 = fmul fast float %6307, %6307
  %6311 = fadd fast float %6309, %6310
  %6312 = fmul fast float %6308, %6308
  %6313 = fadd fast float %6311, %6312
  %6314 = call float @dx.op.unary.f32(i32 24, float %6313)  ; Sqrt(value)
  %6315 = extractvalue %dx.types.CBufRet.f32 %5202, 0
  %6316 = fsub fast float %6314, %6315
  %6317 = extractvalue %dx.types.CBufRet.f32 %5202, 2
  %6318 = fmul fast float %6316, %6317
  %6319 = call float @dx.op.unary.f32(i32 7, float %6318)  ; Saturate(value)
  %6320 = fadd fast float %6319, -5.000000e-01
  %6321 = fmul fast float %6320, 2.000000e+00
  %6322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.f32 %6322, 2
  %6324 = call float @dx.op.binary.f32(i32 36, float %6323, float %6321)  ; FMin(a,b)
  %6325 = fsub fast float -0.000000e+00, %6323
  %6326 = fcmp fast ogt float %6324, %6325
  br i1 %6326, label %6327, label %6639, !dx.controlflow.hints !171

; <label>:6327                                    ; preds = %6272
  %6328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6328, 3
  %6330 = fcmp fast ogt float %6329, 0.000000e+00
  br i1 %6330, label %6331, label %6406, !dx.controlflow.hints !172

; <label>:6331                                    ; preds = %6327
  %6332 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %6333 = extractvalue %dx.types.Dimensions %6332, 0
  %6334 = sitofp i32 %6333 to float
  %6335 = extractvalue %dx.types.Dimensions %6332, 1
  %6336 = sitofp i32 %6335 to float
  %6337 = fmul fast float %6276, %6334
  %6338 = fmul fast float %6277, %6336
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 1
  %6341 = fsub fast float -0.000000e+00, %6340
  %6342 = fptoui float %6341 to i32
  %6343 = fptoui float %6337 to i32
  %6344 = fptoui float %6338 to i32
  %6345 = and i32 %6342, 31
  %6346 = lshr i32 %6343, %6345
  %6347 = lshr i32 %6344, %6345
  %6348 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %6342, i32 %6346, i32 %6347, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6349 = extractvalue %dx.types.ResRet.f32 %6348, 0
  %6350 = fcmp fast olt float %6349, -1.000000e+00
  %6351 = fcmp fast ogt float %6349, -1.000000e+00
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6354 = select i1 %6351, float %6353, float 1.000000e+00
  %6355 = fadd fast float %6349, 1.000000e+00
  %6356 = fmul fast float %6354, %6355
  %6357 = call float @dx.op.unary.f32(i32 6, float %6356)  ; FAbs(value)
  %6358 = extractvalue %dx.types.CBufRet.f32 %6352, 3
  %6359 = fcmp fast oge float %6357, %6358
  %6360 = select i1 %6359, float 0x4197782600000000, float %6357
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 0
  %6363 = extractvalue %dx.types.CBufRet.f32 %6361, 1
  %6364 = extractvalue %dx.types.CBufRet.f32 %6361, 2
  %6365 = select i1 %6350, float %6362, float %6283
  %6366 = select i1 %6350, float %6363, float %6284
  %6367 = select i1 %6350, float %6364, float %6285
  %6368 = fmul fast float %6365, %6280
  %6369 = fmul fast float %6366, %6280
  %6370 = fmul fast float %6367, %6280
  %6371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6372 = extractvalue %dx.types.CBufRet.f32 %6371, 0
  %6373 = extractvalue %dx.types.CBufRet.f32 %6371, 1
  %6374 = extractvalue %dx.types.CBufRet.f32 %6371, 2
  %6375 = select i1 %6350, float %6372, float %6290
  %6376 = select i1 %6350, float %6373, float %6291
  %6377 = select i1 %6350, float %6374, float %6292
  %6378 = fmul fast float %6375, %6281
  %6379 = fmul fast float %6376, %6281
  %6380 = fmul fast float %6377, %6281
  %6381 = fadd fast float %6378, %6368
  %6382 = fadd fast float %6379, %6369
  %6383 = fadd fast float %6380, %6370
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.CBufRet.f32 %6384, 1
  %6387 = extractvalue %dx.types.CBufRet.f32 %6384, 2
  %6388 = select i1 %6350, float %6385, float %6297
  %6389 = select i1 %6350, float %6386, float %6298
  %6390 = select i1 %6350, float %6387, float %6299
  %6391 = fadd fast float %6381, %6388
  %6392 = fadd fast float %6382, %6389
  %6393 = fadd fast float %6383, %6390
  %6394 = fmul fast float %6391, %6360
  %6395 = fmul fast float %6392, %6360
  %6396 = fmul fast float %6393, %6360
  %6397 = fmul fast float %6394, %6394
  %6398 = fmul fast float %6395, %6395
  %6399 = fadd fast float %6397, %6398
  %6400 = fmul fast float %6396, %6396
  %6401 = fadd fast float %6399, %6400
  %6402 = call float @dx.op.unary.f32(i32 24, float %6401)  ; Sqrt(value)
  %6403 = fsub fast float %6402, %6315
  %6404 = fmul fast float %6403, %6317
  %6405 = call float @dx.op.unary.f32(i32 7, float %6404)  ; Saturate(value)
  br label %6406

; <label>:6406                                    ; preds = %6331, %6327
  %6407 = phi float [ %6405, %6331 ], [ 1.000000e+00, %6327 ]
  %6408 = fmul fast float %6324, 5.000000e-01
  %6409 = fadd fast float %6408, 5.000000e-01
  %6410 = call float @dx.op.unary.f32(i32 22, float %6409)  ; Frc(value)
  %6411 = call float @dx.op.unary.f32(i32 27, float %6410)  ; Round_ni(value)
  %6412 = call float @dx.op.unary.f32(i32 22, float %6410)  ; Frc(value)
  %6413 = fmul fast float %6412, 2.000000e+00
  %6414 = fadd fast float %6413, -1.000000e+00
  %6415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %6276, float %6277, float %6411, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6416 = extractvalue %dx.types.ResRet.f32 %6415, 0
  %6417 = extractvalue %dx.types.ResRet.f32 %6415, 1
  %6418 = extractvalue %dx.types.ResRet.f32 %6415, 2
  %6419 = extractvalue %dx.types.ResRet.f32 %6415, 3
  %6420 = fadd fast float %6416, -5.000000e-01
  %6421 = fadd fast float %6418, -5.000000e-01
  %6422 = fmul fast float %6420, 0xBFD5555560000000
  %6423 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6421, float %6422)  ; FMad(a,b,c)
  %6424 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6417, float 0.000000e+00)  ; FMad(a,b,c)
  %6425 = fadd fast float %6424, %6419
  %6426 = fmul fast float %6420, -7.500000e-01
  %6427 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6421, float %6426)  ; FMad(a,b,c)
  %6428 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6417, float 0.000000e+00)  ; FMad(a,b,c)
  %6429 = fadd fast float %6428, %6419
  %6430 = call float @dx.op.binary.f32(i32 35, float %6423, float -1.000000e+00)  ; FMax(a,b)
  %6431 = call float @dx.op.binary.f32(i32 35, float %6425, float -1.000000e+00)  ; FMax(a,b)
  %6432 = call float @dx.op.binary.f32(i32 35, float %6427, float -1.000000e+00)  ; FMax(a,b)
  %6433 = call float @dx.op.binary.f32(i32 35, float %6429, float -1.000000e+00)  ; FMax(a,b)
  %6434 = call float @dx.op.binary.f32(i32 36, float %6430, float 1.000000e+00)  ; FMin(a,b)
  %6435 = call float @dx.op.binary.f32(i32 36, float %6431, float 1.000000e+00)  ; FMin(a,b)
  %6436 = call float @dx.op.binary.f32(i32 36, float %6432, float 1.000000e+00)  ; FMin(a,b)
  %6437 = call float @dx.op.binary.f32(i32 36, float %6433, float 1.000000e+00)  ; FMin(a,b)
  %6438 = fcmp fast olt float %6434, 0x3FEFFF8020000000
  br i1 %6438, label %6439, label %6554, !dx.controlflow.hints !173

; <label>:6439                                    ; preds = %6406
  %6440 = extractvalue %dx.types.CBufRet.f32 %6322, 3
  %6441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6442 = extractvalue %dx.types.CBufRet.f32 %6441, 0
  %6443 = extractvalue %dx.types.CBufRet.f32 %6441, 1
  %6444 = extractvalue %dx.types.CBufRet.f32 %6441, 2
  %6445 = extractvalue %dx.types.CBufRet.f32 %6441, 3
  %6446 = fsub fast float %6442, %6434
  %6447 = fsub fast float %6443, %6435
  %6448 = fsub fast float %6444, %6436
  %6449 = fsub fast float %6445, %6437
  %6450 = fmul fast float %6446, %6440
  %6451 = fmul fast float %6447, %6440
  %6452 = fmul fast float %6448, %6440
  %6453 = fmul fast float %6449, %6440
  %6454 = fadd fast float %6450, %6434
  %6455 = fadd fast float %6451, %6435
  %6456 = fsub fast float -0.000000e+00, %6455
  %6457 = fadd fast float %6452, %6436
  %6458 = fadd fast float %6453, %6437
  %6459 = fmul fast float %6454, %6454
  %6460 = fsub fast float %6455, %6459
  %6461 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6460)  ; FMax(a,b)
  %6462 = fdiv fast float 1.000000e+00, %6461
  %6463 = fmul fast float %6455, %6454
  %6464 = fsub fast float %6457, %6463
  %6465 = fsub fast float %6414, %6454
  %6466 = fmul fast float %6414, %6414
  %6467 = fsub fast float %6466, %6455
  %6468 = fmul fast float %6465, %6462
  %6469 = fmul fast float %6468, %6464
  %6470 = fsub fast float %6467, %6469
  %6471 = fmul fast float %6455, %6455
  %6472 = fsub fast float %6458, %6471
  %6473 = fmul fast float %6464, %6464
  %6474 = fmul fast float %6473, %6462
  %6475 = fsub fast float %6472, %6474
  %6476 = fdiv fast float %6470, %6475
  %6477 = fmul fast float %6464, %6476
  %6478 = fsub fast float %6465, %6477
  %6479 = fmul fast float %6478, %6462
  %6480 = fmul fast float %6479, %6454
  %6481 = fsub fast float 1.000000e+00, %6480
  %6482 = fmul fast float %6455, %6476
  %6483 = fsub fast float %6481, %6482
  %6484 = fmul fast float %6479, %6479
  %6485 = fmul fast float %6476, 4.000000e+00
  %6486 = fmul fast float %6485, %6483
  %6487 = fsub fast float %6484, %6486
  %6488 = call float @dx.op.unary.f32(i32 24, float %6487)  ; Sqrt(value)
  %6489 = fcmp fast oge float %6479, 0.000000e+00
  %6490 = fsub fast float -0.000000e+00, %6488
  %6491 = select i1 %6489, float %6490, float %6488
  %6492 = fsub fast float %6491, %6479
  %6493 = fdiv fast float %6492, %6476
  %6494 = fdiv fast float %6483, %6492
  %6495 = fmul fast float %6493, 5.000000e-01
  %6496 = fmul fast float %6494, 2.000000e+00
  %6497 = select i1 %6489, float %6495, float %6496
  %6498 = select i1 %6489, float %6496, float %6495
  %6499 = call float @dx.op.binary.f32(i32 35, float %6497, float %6498)  ; FMax(a,b)
  %6500 = call float @dx.op.binary.f32(i32 36, float %6497, float %6498)  ; FMin(a,b)
  %6501 = fcmp fast ogt float %6414, %6500
  br i1 %6501, label %6502, label %6512

; <label>:6502                                    ; preds = %6439
  %6503 = fsub fast float %6414, %6500
  %6504 = fsub fast float %6499, %6500
  %6505 = fmul fast float %6503, %6504
  %6506 = fmul fast float %6499, %6414
  %6507 = fadd fast float %6499, %6414
  %6508 = fmul fast float %6507, %6454
  %6509 = fadd fast float %6506, %6455
  %6510 = fsub fast float %6509, %6508
  %6511 = fdiv fast float %6510, %6505
  br label %6512

; <label>:6512                                    ; preds = %6502, %6439
  %6513 = phi float [ %6511, %6502 ], [ 0.000000e+00, %6439 ]
  %6514 = fcmp fast ogt float %6414, %6499
  %6515 = fsub fast float %6414, %6499
  br i1 %6514, label %6516, label %6526

; <label>:6516                                    ; preds = %6512
  %6517 = fsub fast float %6499, %6500
  %6518 = fmul fast float %6517, %6515
  %6519 = fmul fast float %6500, %6414
  %6520 = fadd fast float %6500, %6414
  %6521 = fmul fast float %6520, %6454
  %6522 = fsub fast float %6456, %6519
  %6523 = fadd fast float %6522, %6521
  %6524 = fdiv fast float %6523, %6518
  %6525 = fadd fast float %6524, %6513
  br label %6526

; <label>:6526                                    ; preds = %6516, %6512
  %6527 = phi float [ %6525, %6516 ], [ %6513, %6512 ]
  %6528 = fsub fast float %6414, %6500
  %6529 = fmul fast float %6528, %6515
  %6530 = fmul fast float %6500, %6499
  %6531 = fadd fast float %6500, %6499
  %6532 = fmul fast float %6531, %6454
  %6533 = fadd fast float %6530, %6455
  %6534 = fsub fast float %6533, %6532
  %6535 = fdiv fast float %6534, %6529
  %6536 = call float @dx.op.unary.f32(i32 7, float %6527)  ; Saturate(value)
  %6537 = fcmp fast oeq float %5203, 0.000000e+00
  %6538 = extractvalue %dx.types.CBufRet.f32 %6322, 0
  %6539 = fcmp fast oeq float %6538, 0.000000e+00
  %6540 = or i1 %6537, %6539
  %6541 = fmul fast float %6538, 2.000000e+00
  %6542 = fadd fast float %6323, %6324
  %6543 = fdiv fast float %6542, %6541
  %6544 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6545 = fmul fast float %6544, 2.000000e+00
  %6546 = fsub fast float 3.000000e+00, %6545
  %6547 = fmul fast float %6544, %6544
  %6548 = fmul fast float %6547, %6546
  %6549 = select i1 %6540, float 1.000000e+00, float %6548
  %6550 = fmul fast float %6535, %5203
  %6551 = fadd fast float %6536, %6550
  %6552 = call float @dx.op.unary.f32(i32 7, float %6551)  ; Saturate(value)
  %6553 = fmul fast float %6549, %6552
  br label %6554

; <label>:6554                                    ; preds = %6526, %6406
  %6555 = phi float [ %6553, %6526 ], [ 0.000000e+00, %6406 ]
  %6556 = fsub fast float 1.000000e+00, %6555
  %6557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %6276, float %6277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6558 = extractvalue %dx.types.ResRet.f32 %6557, 0
  %6559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6560 = extractvalue %dx.types.CBufRet.i32 %6559, 2
  %6561 = icmp eq i32 %6560, 0
  br i1 %6561, label %6567, label %6562

; <label>:6562                                    ; preds = %6554
  %6563 = call float @dx.op.unary.f32(i32 7, float %6555)  ; Saturate(value)
  %6564 = fadd fast float %6558, -1.000000e+00
  %6565 = fmul fast float %6563, %6564
  %6566 = fadd fast float %6565, 1.000000e+00
  br label %6567

; <label>:6567                                    ; preds = %6562, %6554
  %6568 = phi float [ %6566, %6562 ], [ %6556, %6554 ]
  br i1 %6330, label %6569, label %6587

; <label>:6569                                    ; preds = %6567
  %6570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6571 = extractvalue %dx.types.CBufRet.f32 %6570, 1
  %6572 = fsub fast float %6407, %6571
  %6573 = call float @dx.op.unary.f32(i32 7, float %6572)  ; Saturate(value)
  %6574 = fsub fast float %6407, %6329
  %6575 = call float @dx.op.unary.f32(i32 7, float %6574)  ; Saturate(value)
  %6576 = fsub fast float %6573, %6575
  %6577 = fsub fast float %6409, %6575
  %6578 = fdiv fast float %6577, %6576
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = fmul fast float %6579, 2.000000e+00
  %6581 = fsub fast float 3.000000e+00, %6580
  %6582 = fsub fast float %6558, %6568
  %6583 = fmul fast float %6579, %6579
  %6584 = fmul fast float %6583, %6582
  %6585 = fmul fast float %6584, %6581
  %6586 = fadd fast float %6585, %6568
  br label %6587

; <label>:6587                                    ; preds = %6569, %6567
  %6588 = phi float [ %6586, %6569 ], [ %6568, %6567 ]
  %6589 = call float @dx.op.binary.f32(i32 35, float %6558, float %6588)  ; FMax(a,b)
  %6590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.i32 %6590, 2
  %6592 = and i32 %6591, 1
  %6593 = icmp eq i32 %6592, 0
  %6594 = fcmp fast une float %6589, 1.000000e+00
  %6595 = and i1 %6594, %6593
  br i1 %6595, label %6596, label %6615

; <label>:6596                                    ; preds = %6587
  %6597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %6276, float %6277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6598 = extractvalue %dx.types.ResRet.f32 %6597, 0
  %6599 = extractvalue %dx.types.ResRet.f32 %6597, 1
  %6600 = extractvalue %dx.types.ResRet.f32 %6597, 2
  %6601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6602 = extractvalue %dx.types.CBufRet.f32 %6601, 1
  %6603 = fmul fast float %6602, %6598
  %6604 = fmul fast float %6602, %6599
  %6605 = fmul fast float %6602, %6600
  %6606 = fcmp fast ogt float %6558, 0x3FEFFF2E40000000
  %6607 = fsub fast float 1.000000e+00, %6589
  %6608 = fsub fast float 1.000000e+00, %6558
  %6609 = fdiv fast float %6607, %6608
  %6610 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  %6611 = select i1 %6606, float 0.000000e+00, float %6610
  %6612 = fmul fast float %6603, %6611
  %6613 = fmul fast float %6604, %6611
  %6614 = fmul fast float %6605, %6611
  br label %6615

; <label>:6615                                    ; preds = %6596, %6587
  %6616 = phi float [ 0.000000e+00, %6587 ], [ %6612, %6596 ]
  %6617 = phi float [ 0.000000e+00, %6587 ], [ %6613, %6596 ]
  %6618 = phi float [ 0.000000e+00, %6587 ], [ %6614, %6596 ]
  %6619 = fmul fast float %6616, %5187
  %6620 = fmul fast float %6617, %5189
  %6621 = fmul fast float %6618, %5191
  %6622 = fmul fast float %6589, %6251
  %6623 = call float @dx.op.dot3.f32(i32 55, float %6589, float %6589, float %6589, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6624 = call float @dx.op.dot3.f32(i32 55, float %6619, float %6620, float %6621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6625 = select i1 %219, float %6623, float %6589
  %6626 = select i1 %219, float 1.000000e+00, float %6589
  %6627 = select i1 %219, float %6624, float %6619
  %6628 = select i1 %219, float 0.000000e+00, float %6620
  %6629 = select i1 %219, float 0.000000e+00, float %6621
  %6630 = fmul fast float %6625, %6263
  %6631 = fmul fast float %6625, %6264
  %6632 = fmul fast float %6626, %6265
  %6633 = fadd fast float %6630, %6627
  %6634 = fadd fast float %6631, %6628
  %6635 = fadd fast float %6629, %6632
  %6636 = fmul fast float %6625, %6266
  %6637 = fmul fast float %6625, %6267
  %6638 = fmul fast float %6626, %6268
  br label %6639

; <label>:6639                                    ; preds = %6615, %6272, %6241, %5473
  %6640 = phi float [ %5478, %5473 ], [ %6263, %6241 ], [ %6633, %6615 ], [ %6263, %6272 ]
  %6641 = phi float [ %5479, %5473 ], [ %6264, %6241 ], [ %6634, %6615 ], [ %6264, %6272 ]
  %6642 = phi float [ %5480, %5473 ], [ %6265, %6241 ], [ %6635, %6615 ], [ %6265, %6272 ]
  %6643 = phi float [ %5481, %5473 ], [ %6266, %6241 ], [ %6636, %6615 ], [ %6266, %6272 ]
  %6644 = phi float [ %5482, %5473 ], [ %6267, %6241 ], [ %6637, %6615 ], [ %6267, %6272 ]
  %6645 = phi float [ %5483, %5473 ], [ %6268, %6241 ], [ %6638, %6615 ], [ %6268, %6272 ]
  %6646 = phi float [ %5484, %5473 ], [ %6251, %6241 ], [ %6622, %6615 ], [ %6251, %6272 ]
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 2
  %6649 = extractvalue %dx.types.CBufRet.f32 %6647, 3
  %6650 = fmul fast float %6648, %82
  %6651 = fmul fast float %6649, %83
  %6652 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6653 = call float @dx.op.unary.f32(i32 7, float %6651)  ; Saturate(value)
  %6654 = select i1 %5213, i32 2, i32 0
  %6655 = or i32 %6654, 1
  %6656 = uitofp i32 %6655 to float
  %6657 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6652, float %6653, float %6656, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6658 = extractvalue %dx.types.ResRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.ResRet.f32 %6657, 1
  %6660 = extractvalue %dx.types.ResRet.f32 %6657, 2
  %6661 = extractvalue %dx.types.ResRet.f32 %6657, 3
  %6662 = add nuw nsw i32 %6654, 2
  %6663 = uitofp i32 %6662 to float
  %6664 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6652, float %6653, float %6663, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  %6666 = extractvalue %dx.types.ResRet.f32 %6664, 1
  %6667 = extractvalue %dx.types.ResRet.f32 %6664, 2
  %6668 = extractvalue %dx.types.ResRet.f32 %6664, 3
  %6669 = call float @dx.op.binary.f32(i32 35, float %6659, float %6660)  ; FMax(a,b)
  %6670 = call float @dx.op.binary.f32(i32 35, float %6658, float %6669)  ; FMax(a,b)
  %6671 = call float @dx.op.binary.f32(i32 35, float %6670, float %6661)  ; FMax(a,b)
  %6672 = call float @dx.op.binary.f32(i32 36, float %6666, float %6667)  ; FMin(a,b)
  %6673 = call float @dx.op.binary.f32(i32 36, float %6665, float %6672)  ; FMin(a,b)
  %6674 = call float @dx.op.binary.f32(i32 36, float %6673, float %6668)  ; FMin(a,b)
  %6675 = fmul fast float %6671, 2.550000e+02
  %6676 = fadd fast float %6675, 0x3F70101020000000
  %6677 = fptoui float %6676 to i32
  %6678 = fmul fast float %6674, 2.550000e+02
  %6679 = fadd fast float %6678, 0x3F70101020000000
  %6680 = fptoui float %6679 to i32
  %6681 = icmp ult i32 %6677, %6680
  br i1 %6681, label %6682, label %6851

; <label>:6682                                    ; preds = %6639
  %6683 = fcmp fast ogt float %69, 9.843750e-01
  %6684 = fadd fast float %5477, -4.000000e+00
  %6685 = select i1 %6683, float -4.000000e+00, float %6684
  %6686 = call float @dx.op.binary.f32(i32 35, float %6685, float 0.000000e+00)  ; FMax(a,b)
  %6687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6688 = extractvalue %dx.types.CBufRet.f32 %6687, 0
  %6689 = fadd fast float %6688, %6686
  %6690 = extractvalue %dx.types.CBufRet.f32 %6687, 2
  %6691 = fmul fast float %6689, %6690
  %6692 = call float @dx.op.unary.f32(i32 23, float %6691)  ; Log(value)
  %6693 = extractvalue %dx.types.CBufRet.f32 %6687, 3
  %6694 = fmul fast float %6693, %6692
  %6695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6696 = extractvalue %dx.types.CBufRet.f32 %6695, 2
  %6697 = fmul fast float %6694, %6696
  %6698 = call float @dx.op.unary.f32(i32 7, float %6697)  ; Saturate(value)
  %6699 = uitofp i32 %6677 to float
  %6700 = uitofp i32 %6680 to float
  %6701 = fadd fast float %6699, 5.000000e-01
  %6702 = fadd fast float %6700, 5.000000e-01
  %6703 = fmul fast float %6696, %6701
  %6704 = fmul fast float %6696, %6702
  %6705 = fadd fast float %6703, 0x3F0FFB4800000000
  %6706 = fadd fast float %6704, 0xBF0FFB4800000000
  %6707 = call float @dx.op.binary.f32(i32 35, float %6698, float %6705)  ; FMax(a,b)
  %6708 = call float @dx.op.binary.f32(i32 36, float %6707, float %6706)  ; FMin(a,b)
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6711 = extractvalue %dx.types.CBufRet.f32 %6709, 2
  %6712 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6713 = select i1 %5213, float %6712, float 0.000000e+00
  %6714 = fmul fast float %6710, %6708
  %6715 = fadd fast float %6713, %6714
  %6716 = fadd fast float %6713, %6711
  %6717 = fsub fast float %6710, %6711
  %6718 = fadd fast float %6717, %6713
  %6719 = call float @dx.op.binary.f32(i32 35, float %6715, float %6716)  ; FMax(a,b)
  %6720 = call float @dx.op.binary.f32(i32 36, float %6719, float %6718)  ; FMin(a,b)
  %6721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %6652, float %6653, float %6720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6722 = extractvalue %dx.types.ResRet.f32 %6721, 0
  %6723 = extractvalue %dx.types.ResRet.f32 %6721, 1
  %6724 = extractvalue %dx.types.ResRet.f32 %6721, 2
  %6725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.i32 %6725, 0
  %6727 = extractvalue %dx.types.CBufRet.i32 %6725, 1
  %6728 = uitofp i32 %6726 to float
  %6729 = uitofp i32 %6727 to float
  %6730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6731 = extractvalue %dx.types.CBufRet.f32 %6730, 0
  %6732 = extractvalue %dx.types.CBufRet.f32 %6730, 1
  %6733 = fmul fast float %6728, %6652
  %6734 = fmul fast float %6729, %6653
  %6735 = fadd fast float %6733, -5.000000e-01
  %6736 = fadd fast float %6734, -5.000000e-01
  %6737 = call float @dx.op.unary.f32(i32 22, float %6735)  ; Frc(value)
  %6738 = call float @dx.op.unary.f32(i32 22, float %6736)  ; Frc(value)
  %6739 = fmul fast float %6737, %6737
  %6740 = fmul fast float %6739, %6737
  %6741 = fsub fast float 3.000000e+00, %6737
  %6742 = fmul fast float %6739, %6741
  %6743 = fmul fast float %6737, 3.000000e+00
  %6744 = fmul fast float %6740, 3.000000e+00
  %6745 = fmul fast float %6739, 6.000000e+00
  %6746 = fsub fast float %6744, %6745
  %6747 = fadd fast float %6746, 4.000000e+00
  %6748 = fmul fast float %6747, 0x3FC5555560000000
  %6749 = fmul fast float %6740, -3.000000e+00
  %6750 = fadd fast float %6739, %6737
  %6751 = fmul fast float %6750, 3.000000e+00
  %6752 = fadd fast float %6749, 1.000000e+00
  %6753 = fadd fast float %6752, %6751
  %6754 = fmul fast float %6740, 0x3FC5555560000000
  %6755 = fmul fast float %6738, %6738
  %6756 = fmul fast float %6755, %6738
  %6757 = fsub fast float 3.000000e+00, %6738
  %6758 = fmul fast float %6755, %6757
  %6759 = fmul fast float %6738, 3.000000e+00
  %6760 = fmul fast float %6756, 3.000000e+00
  %6761 = fmul fast float %6755, 6.000000e+00
  %6762 = fsub fast float %6760, %6761
  %6763 = fadd fast float %6762, 4.000000e+00
  %6764 = fmul fast float %6763, 0x3FC5555560000000
  %6765 = fmul fast float %6756, -3.000000e+00
  %6766 = fadd fast float %6755, %6738
  %6767 = fmul fast float %6766, 3.000000e+00
  %6768 = fadd fast float %6765, 1.000000e+00
  %6769 = fadd fast float %6768, %6767
  %6770 = fmul fast float %6756, 0x3FC5555560000000
  %6771 = fadd fast float %6737, 1.000000e+00
  %6772 = fsub fast float 1.000000e+00, %6743
  %6773 = fadd fast float %6772, %6742
  %6774 = fadd fast float %6773, %6747
  %6775 = fmul fast float %6774, 0x3FC5555560000000
  %6776 = fdiv fast float %6748, %6775
  %6777 = fsub fast float %6771, %6776
  %6778 = fsub fast float 1.000000e+00, %6737
  %6779 = fadd fast float %6753, %6740
  %6780 = fmul fast float %6779, 0x3FC5555560000000
  %6781 = fdiv fast float %6754, %6780
  %6782 = fadd fast float %6778, %6781
  %6783 = fadd fast float %6738, 1.000000e+00
  %6784 = fsub fast float 1.000000e+00, %6759
  %6785 = fadd fast float %6784, %6758
  %6786 = fadd fast float %6785, %6763
  %6787 = fmul fast float %6786, 0x3FC5555560000000
  %6788 = fdiv fast float %6764, %6787
  %6789 = fsub fast float %6783, %6788
  %6790 = fsub fast float 1.000000e+00, %6738
  %6791 = fadd fast float %6769, %6756
  %6792 = fmul fast float %6791, 0x3FC5555560000000
  %6793 = fdiv fast float %6770, %6792
  %6794 = fadd fast float %6793, %6790
  %6795 = fmul fast float %6777, %6731
  %6796 = fsub fast float %6652, %6795
  %6797 = fmul fast float %6782, %6731
  %6798 = fadd fast float %6797, %6652
  %6799 = fmul fast float %6794, %6732
  %6800 = fadd fast float %6799, %6653
  %6801 = fmul fast float %6789, %6732
  %6802 = fsub fast float %6653, %6801
  %6803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6796, float %6802, float %6720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6804 = extractvalue %dx.types.ResRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.ResRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.ResRet.f32 %6803, 2
  %6807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6798, float %6802, float %6720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6808 = extractvalue %dx.types.ResRet.f32 %6807, 0
  %6809 = extractvalue %dx.types.ResRet.f32 %6807, 1
  %6810 = extractvalue %dx.types.ResRet.f32 %6807, 2
  %6811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6796, float %6800, float %6720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6812 = extractvalue %dx.types.ResRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.ResRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.ResRet.f32 %6811, 2
  %6815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6798, float %6800, float %6720, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6816 = extractvalue %dx.types.ResRet.f32 %6815, 0
  %6817 = extractvalue %dx.types.ResRet.f32 %6815, 1
  %6818 = extractvalue %dx.types.ResRet.f32 %6815, 2
  %6819 = fsub fast float %6812, %6804
  %6820 = fsub fast float %6813, %6805
  %6821 = fsub fast float %6814, %6806
  %6822 = fmul fast float %6819, %6792
  %6823 = fmul fast float %6820, %6792
  %6824 = fmul fast float %6821, %6792
  %6825 = fadd fast float %6822, %6804
  %6826 = fadd fast float %6823, %6805
  %6827 = fadd fast float %6824, %6806
  %6828 = fsub fast float %6816, %6808
  %6829 = fsub fast float %6817, %6809
  %6830 = fsub fast float %6818, %6810
  %6831 = fmul fast float %6828, %6792
  %6832 = fmul fast float %6829, %6792
  %6833 = fmul fast float %6830, %6792
  %6834 = fsub fast float %6808, %6825
  %6835 = fadd fast float %6834, %6831
  %6836 = fsub fast float %6809, %6826
  %6837 = fadd fast float %6836, %6832
  %6838 = fsub fast float %6810, %6827
  %6839 = fadd fast float %6838, %6833
  %6840 = fmul fast float %6835, %6780
  %6841 = fmul fast float %6837, %6780
  %6842 = fmul fast float %6839, %6780
  %6843 = fadd fast float %6840, %6825
  %6844 = fadd fast float %6841, %6826
  %6845 = fadd fast float %6842, %6827
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 1
  %6848 = fmul fast float %6843, %6847
  %6849 = fmul fast float %6844, %6847
  %6850 = fmul fast float %6845, %6847
  br label %6851

; <label>:6851                                    ; preds = %6682, %6639
  %6852 = phi float [ %6722, %6682 ], [ 1.000000e+00, %6639 ]
  %6853 = phi float [ %6723, %6682 ], [ 1.000000e+00, %6639 ]
  %6854 = phi float [ %6724, %6682 ], [ 1.000000e+00, %6639 ]
  %6855 = phi float [ %6848, %6682 ], [ 0.000000e+00, %6639 ]
  %6856 = phi float [ %6849, %6682 ], [ 0.000000e+00, %6639 ]
  %6857 = phi float [ %6850, %6682 ], [ 0.000000e+00, %6639 ]
  %6858 = fmul fast float %6855, %5187
  %6859 = fmul fast float %6856, %5189
  %6860 = fmul fast float %6857, %5191
  %6861 = fmul fast float %6852, %6646
  %6862 = call float @dx.op.dot3.f32(i32 55, float %6852, float %6853, float %6854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6863 = call float @dx.op.dot3.f32(i32 55, float %6858, float %6859, float %6860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6864 = select i1 %219, float %6862, float %6852
  %6865 = select i1 %219, float %6862, float %6853
  %6866 = select i1 %219, float 1.000000e+00, float %6854
  %6867 = select i1 %219, float %6863, float %6858
  %6868 = select i1 %219, float 0.000000e+00, float %6859
  %6869 = select i1 %219, float 0.000000e+00, float %6860
  %6870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.i32 %6870, 3
  %6872 = and i32 %6871, 3
  %6873 = icmp ne i32 %6872, 0
  %6874 = and i32 %6871, 4
  %6875 = icmp ne i32 %6874, 0
  %6876 = and i1 %6873, %6875
  %6877 = and i1 %219, %6876
  br i1 %6877, label %6878, label %6884

; <label>:6878                                    ; preds = %6851
  %6879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6880 = extractvalue %dx.types.CBufRet.f32 %6879, 1
  %6881 = fadd fast float %6861, -1.000000e+00
  %6882 = fmul fast float %6880, %6881
  %6883 = fadd fast float %6882, 1.000000e+00
  br label %6884

; <label>:6884                                    ; preds = %6878, %6851
  %6885 = phi float [ %6883, %6878 ], [ %6861, %6851 ]
  %6886 = fadd fast float %6643, %6640
  %6887 = fmul fast float %6864, %6886
  %6888 = fadd fast float %6887, %6867
  %6889 = fadd fast float %6644, %6641
  %6890 = fmul fast float %6865, %6889
  %6891 = fadd fast float %6890, %6868
  %6892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6893 = extractvalue %dx.types.CBufRet.f32 %6892, 0
  br i1 %219, label %6894, label %6909

; <label>:6894                                    ; preds = %6884
  %6895 = fadd fast float %6888, %6891
  %6896 = fmul fast float %6893, %6895
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 3
  %6899 = extractvalue %dx.types.CBufRet.f32 %5195, 1
  %6900 = fsub fast float %5200, %5194
  %6901 = fadd fast float %6900, %5201
  %6902 = fsub fast float %6901, %6899
  %6903 = extractvalue %dx.types.CBufRet.f32 %5195, 2
  %6904 = fmul fast float %6902, %6903
  %6905 = call float @dx.op.unary.f32(i32 7, float %6904)  ; Saturate(value)
  %6906 = fsub fast float %6905, %6898
  %6907 = fmul fast float %6906, %6885
  %6908 = fadd fast float %6907, %6898
  br label %6935

; <label>:6909                                    ; preds = %6884
  %6910 = fadd fast float %6645, %6642
  %6911 = fmul fast float %6866, %6910
  %6912 = fadd fast float %6911, %6869
  %6913 = fmul fast float %6893, %6888
  %6914 = fmul fast float %6893, %6891
  %6915 = fmul fast float %6893, %6912
  %6916 = call float @dx.op.binary.f32(i32 35, float %6914, float %6915)  ; FMax(a,b)
  %6917 = call float @dx.op.binary.f32(i32 35, float %6913, float %6916)  ; FMax(a,b)
  %6918 = call float @dx.op.binary.f32(i32 35, float %5189, float %5191)  ; FMax(a,b)
  %6919 = call float @dx.op.binary.f32(i32 35, float %5187, float %6918)  ; FMax(a,b)
  %6920 = call float @dx.op.binary.f32(i32 35, float %6917, float %6919)  ; FMax(a,b)
  %6921 = fcmp fast ugt float %6920, 0x3F10000000000000
  br i1 %6921, label %6923, label %6922

; <label>:6922                                    ; preds = %6909
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6923

; <label>:6923                                    ; preds = %6922, %6909
  %6924 = add i32 %54, 116
  %6925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %6924, i32 undef)  ; BufferLoad(srv,index,wot)
  %6926 = extractvalue %dx.types.ResRet.i32 %6925, 0
  %6927 = and i32 %6926, 32
  %6928 = icmp eq i32 %6927, 0
  br i1 %6928, label %6935, label %6929

; <label>:6929                                    ; preds = %6923
  %6930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6931 = extractvalue %dx.types.CBufRet.f32 %6930, 0
  %6932 = fmul fast float %6931, 0x3FE99999A0000000
  %6933 = fadd fast float %6931, %6913
  %6934 = fadd fast float %6932, %6915
  br label %6935

; <label>:6935                                    ; preds = %6929, %6923, %6894
  %6936 = phi float [ 1.000000e+00, %6894 ], [ %5189, %6929 ], [ %5189, %6923 ]
  %6937 = phi float [ 1.000000e+00, %6894 ], [ %5191, %6929 ], [ %5191, %6923 ]
  %6938 = phi float [ %6896, %6894 ], [ %6933, %6929 ], [ %6913, %6923 ]
  %6939 = phi float [ %6908, %6894 ], [ %6914, %6929 ], [ %6914, %6923 ]
  %6940 = phi float [ 1.000000e+00, %6894 ], [ %6934, %6929 ], [ %6915, %6923 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6941 = call float @dx.op.binary.f32(i32 36, float %6938, float 3.225500e+04)  ; FMin(a,b)
  %6942 = call float @dx.op.binary.f32(i32 36, float %6939, float 3.225500e+04)  ; FMin(a,b)
  %6943 = call float @dx.op.binary.f32(i32 36, float %6940, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6941)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6942)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6943)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6944 = call float @dx.op.binary.f32(i32 36, float %5187, float 3.225500e+04)  ; FMin(a,b)
  %6945 = call float @dx.op.binary.f32(i32 36, float %6936, float 3.225500e+04)  ; FMin(a,b)
  %6946 = call float @dx.op.binary.f32(i32 36, float %6937, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %6944)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %6945)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %6946)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!66}
!dx.entryPoints = !{!67}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !55, !58}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !42}
!42 = !{i32 0, i32 14}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!49 = !{i32 40, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!50 = !{i32 41, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!51 = !{i32 42, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!52 = !{i32 43, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !42}
!53 = !{i32 44, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!55 = !{!56, !57}
!56 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!57 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!58 = !{!59, !60, !61, !62, !63, !64, !65}
!59 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!60 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!61 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!62 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!63 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!64 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!65 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!66 = !{[23 x i32] [i32 21, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119]}
!67 = !{void ()* @ps_main, !"ps_main", !68, !4, !86}
!68 = !{!69, !82, null}
!69 = !{!70, !73, !75, !77, !78, !79, !81}
!70 = !{i32 0, !"SV_Position", i8 9, i8 3, !71, i8 4, i32 1, i8 4, i32 0, i8 0, !72}
!71 = !{i32 0}
!72 = !{i32 3, i32 15}
!73 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !71, i8 2, i32 1, i8 2, i32 1, i8 0, !74}
!74 = !{i32 3, i32 3}
!75 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !71, i8 2, i32 1, i8 3, i32 2, i8 0, !76}
!76 = !{i32 3, i32 7}
!77 = !{i32 3, !"NORMAL", i8 9, i8 0, !71, i8 2, i32 1, i8 3, i32 3, i8 0, !76}
!78 = !{i32 4, !"TANGENT", i8 9, i8 0, !71, i8 2, i32 1, i8 4, i32 4, i8 0, !72}
!79 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !71, i8 1, i32 1, i8 1, i32 5, i8 0, !80}
!80 = !{i32 3, i32 1}
!81 = !{i32 6, !"SV_SampleIndex", i8 5, i8 12, !71, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!82 = !{!83, !84}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !71, i8 0, i32 1, i8 4, i32 0, i8 0, !72}
!84 = !{i32 1, !"SV_Target", i8 9, i8 16, !85, i8 0, i32 1, i8 4, i32 1, i8 0, !72}
!85 = !{i32 1}
!86 = !{i32 0, i64 16}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !{!107, !109, !111, !113}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!110 = distinct !{!110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!113 = distinct !{!113, !114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!114 = distinct !{!114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = !{!117, !117, i64 0}
!117 = !{!"float", !104, i64 0}
!118 = distinct !{!118, !96}
!119 = distinct !{!119, !96}
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
!133 = distinct !{!133, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

