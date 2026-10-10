;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TANGENT                  0   xyzw        3     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         4     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        5     NONE   float   xyzw
; SV_IsFrontFace           0   x           6    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 135133918a3bb3f40889814950b9f8d9
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
; Number of inputs: 25, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 18, 20, 21, 22, 23, 24 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = icmp ne i32 %56, 0
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = alloca [12 x float], align 4
  %79 = alloca [12 x float], align 4
  %80 = alloca [4 x float], align 4
  %81 = alloca [4 x float], align 4
  %82 = alloca [4 x float], align 4
  %83 = alloca [3 x float], align 4
  %84 = alloca [3 x float], align 4
  %85 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %86 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = fmul fast float %88, %74
  %90 = fmul fast float %88, %75
  %91 = select i1 %57, float 1.000000e+00, float -1.000000e+00
  %92 = fmul fast float %69, %91
  %93 = fmul fast float %70, %91
  %94 = fmul fast float %71, %91
  %95 = fmul fast float %70, %67
  %96 = fmul fast float %71, %66
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %71, %65
  %99 = fmul fast float %69, %67
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %69, %66
  %102 = fmul fast float %70, %65
  %103 = fsub fast float %101, %102
  %104 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %105 = bitcast float %104 to i32
  %106 = ashr i32 %105, 1
  %107 = sub nsw i32 1597250115, %106
  %108 = bitcast i32 %107 to float
  %109 = fmul fast float %108, %58
  %110 = fmul fast float %108, %59
  %111 = fmul fast float %108, %60
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %89, 2.000000e+00
  %116 = fmul fast float %115, %113
  %117 = fmul fast float %90, 2.000000e+00
  %118 = fmul fast float %117, %114
  %119 = fsub fast float 1.000000e+00, %116
  %120 = fsub fast float 1.000000e+00, %118
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %119, %122
  %126 = fmul fast float %119, %123
  %127 = fmul fast float %119, %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %120, %129
  %133 = fmul fast float %120, %130
  %134 = fmul fast float %120, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fadd fast float %132, %136
  %140 = fadd fast float %139, %125
  %141 = fadd fast float %133, %137
  %142 = fadd fast float %141, %126
  %143 = fadd fast float %134, %138
  %144 = fadd fast float %143, %127
  %145 = fmul fast float %140, %77
  %146 = fmul fast float %142, %77
  %147 = fmul fast float %144, %77
  %148 = fmul fast float %89, 5.000000e-01
  %149 = fmul fast float %90, 5.000000e-01
  %150 = fptosi float %148 to i32
  %151 = fptosi float %149 to i32
  %152 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %150, i32 %151, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = lshr i32 %153, 18
  %155 = uitofp i32 %154 to float
  %156 = fmul fast float %155, 0x3F4C00EBA0000000
  %157 = call float @dx.op.unary.f32(i32 21, float %156)  ; Exp(value)
  %158 = fadd fast float %157, -1.000000e+00
  %159 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %160 = extractvalue %dx.types.Dimensions %159, 0
  %161 = sitofp i32 %160 to float
  %162 = extractvalue %dx.types.Dimensions %159, 1
  %163 = sitofp i32 %162 to float
  %164 = fcmp fast oge float %148, %161
  %165 = fcmp fast oge float %149, %163
  %166 = or i1 %164, %165
  %167 = select i1 %166, float 0x4197782600000000, float %158
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %171 = fmul fast float %169, %89
  %172 = fmul fast float %170, %90
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = and i32 %174, 114688
  %176 = icmp ne i32 %175, 0
  %177 = select i1 %176, float %171, float 0.000000e+00
  %178 = select i1 %176, float %172, float 0.000000e+00
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %51, float %177, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fmul fast float %180, 2.550000e+02
  %182 = fptoui float %181 to i32
  %183 = select i1 %176, i32 %182, i32 0
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.i32 %185, 3
  %187 = and i32 %186, 3
  %188 = icmp ne i32 %187, 0
  %189 = and i32 %186, 4
  %190 = icmp ne i32 %189, 0
  %191 = and i1 %188, %190
  br i1 %191, label %192, label %203

; <label>:192                                     ; preds = %0
  %193 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %194 = fmul fast float %193, %90
  %195 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %196 = fmul fast float %195, %89
  %197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %196, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = fsub fast float 1.000000e+00, %198
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %202 = fcmp fast olt float %199, %201
  br label %206

; <label>:203                                     ; preds = %0
  %204 = icmp eq i32 %189, 0
  %205 = and i1 %188, %204
  br label %206

; <label>:206                                     ; preds = %203, %192
  %207 = phi i1 [ %202, %192 ], [ %205, %203 ]
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %210 = fmul fast float %209, 0x3FE3C6EF40000000
  %211 = frem fast float %89, 2.560000e+02
  %212 = frem fast float %90, 2.560000e+02
  %213 = fptoui float %211 to i32
  %214 = fptoui float %212 to i32
  %215 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %213, i32 %214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = fadd fast float %216, %210
  %218 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = shl i32 %220, 4
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %220, 7
  %225 = and i32 %224, 32752
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %220, 22
  %228 = shl nuw nsw i32 %227, 5
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 255
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F70101020000000
  %235 = lshr i32 %231, 8
  %236 = and i32 %235, 255
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %237, 0x3F70101020000000
  %239 = lshr i32 %231, 16
  %240 = and i32 %239, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F70101020000000
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 65535
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %244, 16
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = fmul fast float %252, 0x3F50624DE0000000
  %256 = fmul fast float %254, 0x3F50624DE0000000
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 2
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %268, label %261

; <label>:261                                     ; preds = %206
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = add i32 %263, 0
  %265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %264, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %265, %dx.types.Handle %86, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 3
  br label %268

; <label>:268                                     ; preds = %261, %206
  %269 = phi float [ 1.000000e+00, %206 ], [ %267, %261 ]
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = or i32 %273, %271
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %863, label %276

; <label>:276                                     ; preds = %268
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = lshr i32 %278, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %280, 0x3F50624DE0000000
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = lshr i32 %283, 16
  %285 = and i32 %284, 255
  %286 = lshr i32 %283, 24
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = lshr i32 %294, 22
  %296 = shl nuw nsw i32 %295, 5
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = shl i32 %294, 4
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %294, 7
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 3
  %306 = fmul fast float %305, 1.000000e+03
  %307 = fmul fast float %255, %306
  %308 = call float @dx.op.unary.f32(i32 22, float %307)  ; Frc(value)
  %309 = fadd fast float %308, %246
  %310 = fmul fast float %256, %306
  %311 = call float @dx.op.unary.f32(i32 22, float %310)  ; Frc(value)
  %312 = fadd fast float %311, %248
  %313 = fmul fast float %281, %306
  %314 = call float @dx.op.unary.f32(i32 22, float %313)  ; Frc(value)
  %315 = fmul fast float %314, 0x401921FB60000000
  %316 = fadd fast float %315, %297
  %317 = call float @dx.op.unary.f32(i32 13, float %316)  ; Sin(value)
  %318 = call float @dx.op.unary.f32(i32 12, float %316)  ; Cos(value)
  %319 = fsub fast float -0.000000e+00, %317
  %320 = fadd fast float %72, -5.000000e-01
  %321 = fadd fast float %73, -5.000000e-01
  %322 = fmul fast float %290, %320
  %323 = fmul fast float %292, %321
  %324 = fadd fast float %322, 5.000000e-01
  %325 = fadd fast float %323, 5.000000e-01
  %326 = fmul fast float %300, %324
  %327 = fmul fast float %303, %325
  %328 = fmul fast float %318, %326
  %329 = call float @dx.op.tertiary.f32(i32 46, float %319, float %327, float %328)  ; FMad(a,b,c)
  %330 = fmul fast float %317, %326
  %331 = call float @dx.op.tertiary.f32(i32 46, float %318, float %327, float %330)  ; FMad(a,b,c)
  %332 = fadd fast float %309, %329
  %333 = fadd fast float %312, %331
  %334 = icmp ugt i32 %285, 1
  %335 = icmp ugt i32 %283, 33554431
  %336 = or i1 %335, %334
  br i1 %336, label %337, label %361

; <label>:337                                     ; preds = %276
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = lshr i32 %339, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = fmul fast float %305, %341
  %343 = call float @dx.op.unary.f32(i32 22, float %342)  ; Frc(value)
  %344 = mul nuw nsw i32 %285, %286
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %343, %345
  %347 = call float @dx.op.unary.f32(i32 27, float %346)  ; Round_ni(value)
  %348 = fptoui float %347 to i32
  %349 = urem i32 %348, %285
  %350 = udiv i32 %348, %286
  %351 = call float @dx.op.unary.f32(i32 22, float %332)  ; Frc(value)
  %352 = call float @dx.op.unary.f32(i32 22, float %333)  ; Frc(value)
  %353 = uitofp i32 %349 to float
  %354 = uitofp i32 %350 to float
  %355 = fadd fast float %351, %353
  %356 = fadd fast float %352, %354
  %357 = uitofp i32 %285 to float
  %358 = uitofp i32 %286 to float
  %359 = fdiv fast float %355, %357
  %360 = fdiv fast float %356, %358
  br label %361

; <label>:361                                     ; preds = %337, %276
  %362 = phi float [ %359, %337 ], [ %332, %276 ]
  %363 = phi float [ %360, %337 ], [ %333, %276 ]
  %364 = and i32 %271, 256
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %410, label %366

; <label>:366                                     ; preds = %361
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = add i32 %368, 0
  %370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %371 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %370, %dx.types.Handle %86, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = shl i32 %374, 4
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %374, 7
  %379 = and i32 %378, 32752
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = fsub fast float 1.000000e+00, %269
  %382 = call float @dx.op.binary.f32(i32 35, float %381, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %383 = bitcast float %269 to i32
  %384 = sitofp i32 %383 to float
  %385 = fadd fast float %384, 0xC1CFBF8940000000
  %386 = fmul fast float %380, %385
  %387 = fadd fast float %386, 0x41CFBF8940000000
  %388 = fptosi float %387 to i32
  %389 = bitcast i32 %388 to float
  %390 = bitcast float %382 to i32
  %391 = sitofp i32 %390 to float
  %392 = fadd fast float %391, 0xC1CFBF8940000000
  %393 = fmul fast float %392, %380
  %394 = fadd fast float %393, 0x41CFBF8940000000
  %395 = fptosi float %394 to i32
  %396 = bitcast i32 %395 to float
  %397 = fmul fast float %389, %377
  %398 = fmul fast float %396, %377
  %399 = fsub fast float %382, %397
  %400 = fadd fast float %398, %382
  %401 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %402 = call float @dx.op.unary.f32(i32 7, float %400)  ; Saturate(value)
  %403 = fsub fast float %372, %401
  %404 = fsub fast float %402, %401
  %405 = bitcast float %404 to i32
  %406 = sub nsw i32 2129859010, %405
  %407 = bitcast i32 %406 to float
  %408 = fmul fast float %407, %403
  %409 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  br label %410

; <label>:410                                     ; preds = %366, %361
  %411 = phi float [ %409, %366 ], [ %269, %361 ]
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 128
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %431, label %416

; <label>:416                                     ; preds = %410
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = add i32 %418, 0
  %420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %420, %dx.types.Handle %86, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = and i32 %424, 524288
  %426 = icmp ne i32 %425, 0
  %427 = fcmp fast ogt float %422, 0x3FE0101020000000
  %428 = select i1 %427, float 1.000000e+00, float 0.000000e+00
  %429 = select i1 %426, float %428, float %422
  %430 = fmul fast float %429, %411
  br label %431

; <label>:431                                     ; preds = %416, %410
  %432 = phi float [ %430, %416 ], [ %411, %410 ]
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 16
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %630, label %437

; <label>:437                                     ; preds = %431
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = add i32 %441, 0
  %443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %443, %dx.types.Handle %85, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  %449 = and i32 %439, 255
  %450 = uitofp i32 %449 to float
  %451 = lshr i32 %439, 8
  %452 = and i32 %451, 255
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %448, %450
  %455 = fadd fast float %454, %453
  %456 = fmul fast float %455, 0x3F70101000000000
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 512
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %468, label %461

; <label>:461                                     ; preds = %437
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = add i32 %463, 0
  %465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %464, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %466 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %465, %dx.types.Handle %86, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  br label %468

; <label>:468                                     ; preds = %461, %437
  %469 = phi float [ %467, %461 ], [ 1.000000e+00, %437 ]
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = and i32 %471, 33554432
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %577, label %474

; <label>:474                                     ; preds = %468
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 65535
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = lshr i32 %476, 16
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 65535
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 24
  %488 = uitofp i32 %487 to float
  %489 = fmul fast float %488, 0x3F70101020000000
  %490 = and i32 %486, 255
  %491 = uitofp i32 %490 to float
  %492 = fmul fast float %491, 0x3F70101020000000
  %493 = lshr i32 %486, 8
  %494 = and i32 %493, 255
  %495 = uitofp i32 %494 to float
  %496 = fmul fast float %495, 0x3F70101020000000
  %497 = lshr i32 %486, 16
  %498 = and i32 %497, 255
  %499 = uitofp i32 %498 to float
  %500 = fmul fast float %499, 0x3F70101020000000
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = lshr i32 %502, 24
  %504 = uitofp i32 %503 to float
  %505 = fmul fast float %504, 0x3F70101020000000
  %506 = and i32 %502, 255
  %507 = uitofp i32 %506 to float
  %508 = fmul fast float %507, 0x3F70101020000000
  %509 = lshr i32 %502, 8
  %510 = and i32 %509, 255
  %511 = uitofp i32 %510 to float
  %512 = fmul fast float %511, 0x3F70101020000000
  %513 = lshr i32 %502, 16
  %514 = and i32 %513, 255
  %515 = uitofp i32 %514 to float
  %516 = fmul fast float %515, 0x3F70101020000000
  %517 = bitcast float %445 to i32
  %518 = ashr i32 %517, 1
  %519 = sub nsw i32 1597463174, %518
  %520 = bitcast i32 %519 to float
  %521 = fmul fast float %445, 5.000000e-01
  %522 = fmul fast float %520, %520
  %523 = fmul fast float %522, %521
  %524 = fsub fast float 1.500000e+00, %523
  %525 = fmul fast float %520, %445
  %526 = fmul fast float %525, %524
  %527 = bitcast float %446 to i32
  %528 = ashr i32 %527, 1
  %529 = sub nsw i32 1597463174, %528
  %530 = bitcast i32 %529 to float
  %531 = fmul fast float %446, 5.000000e-01
  %532 = fmul fast float %530, %530
  %533 = fmul fast float %532, %531
  %534 = fsub fast float 1.500000e+00, %533
  %535 = fmul fast float %530, %446
  %536 = fmul fast float %535, %534
  %537 = bitcast float %447 to i32
  %538 = ashr i32 %537, 1
  %539 = sub nsw i32 1597463174, %538
  %540 = bitcast i32 %539 to float
  %541 = fmul fast float %447, 5.000000e-01
  %542 = fmul fast float %540, %540
  %543 = fmul fast float %542, %541
  %544 = fsub fast float 1.500000e+00, %543
  %545 = fmul fast float %540, %447
  %546 = fmul fast float %545, %544
  %547 = fsub fast float %526, %508
  %548 = fsub fast float %536, %512
  %549 = fsub fast float %546, %516
  %550 = fmul fast float %547, %478
  %551 = fmul fast float %548, %480
  %552 = fmul fast float %549, %484
  %553 = fadd fast float %550, %492
  %554 = fadd fast float %551, %496
  %555 = fadd fast float %552, %500
  %556 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %557 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %558 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %559 = fmul fast float %556, %556
  %560 = fmul fast float %557, %557
  %561 = fmul fast float %558, %558
  %562 = fsub fast float %559, %445
  %563 = fsub fast float %560, %446
  %564 = fsub fast float %561, %447
  %565 = fmul fast float %562, %469
  %566 = fmul fast float %563, %469
  %567 = fmul fast float %564, %469
  %568 = fadd fast float %565, %445
  %569 = fadd fast float %566, %446
  %570 = fadd fast float %567, %447
  %571 = fadd fast float %489, %456
  %572 = fsub fast float %571, %505
  %573 = call float @dx.op.unary.f32(i32 7, float %572)  ; Saturate(value)
  %574 = fsub fast float %573, %456
  %575 = fmul fast float %574, %469
  %576 = fadd fast float %575, %456
  br label %630

; <label>:577                                     ; preds = %468
  %578 = and i32 %471, 134217728
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %614, label %580

; <label>:580                                     ; preds = %577
  %581 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %582 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %583 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %584 = fadd fast float %581, -5.000000e-01
  %585 = fadd fast float %582, -5.000000e-01
  %586 = fadd fast float %583, -5.000000e-01
  %587 = fmul fast float %584, %469
  %588 = fmul fast float %585, %469
  %589 = fmul fast float %586, %469
  %590 = fadd fast float %587, 5.000000e-01
  %591 = fadd fast float %588, 5.000000e-01
  %592 = fadd fast float %589, 5.000000e-01
  %593 = call float @dx.op.unary.f32(i32 24, float %445)  ; Sqrt(value)
  %594 = call float @dx.op.unary.f32(i32 24, float %446)  ; Sqrt(value)
  %595 = call float @dx.op.unary.f32(i32 24, float %447)  ; Sqrt(value)
  %596 = fmul fast float %590, 2.000000e+00
  %597 = fsub fast float 1.000000e+00, %596
  %598 = fmul fast float %597, %593
  %599 = fadd fast float %598, %596
  %600 = fmul fast float %599, %593
  %601 = fmul fast float %591, 2.000000e+00
  %602 = fsub fast float 1.000000e+00, %601
  %603 = fmul fast float %602, %594
  %604 = fadd fast float %603, %601
  %605 = fmul fast float %604, %594
  %606 = fmul fast float %592, 2.000000e+00
  %607 = fsub fast float 1.000000e+00, %606
  %608 = fmul fast float %607, %595
  %609 = fadd fast float %608, %606
  %610 = fmul fast float %609, %595
  %611 = fmul fast float %600, %600
  %612 = fmul fast float %605, %605
  %613 = fmul fast float %610, %610
  br label %630

; <label>:614                                     ; preds = %577
  %615 = fmul fast float %234, %234
  %616 = fmul fast float %238, %238
  %617 = fmul fast float %242, %242
  %618 = fadd fast float %615, -1.000000e+00
  %619 = fadd fast float %616, -1.000000e+00
  %620 = fadd fast float %617, -1.000000e+00
  %621 = fmul fast float %469, %618
  %622 = fmul fast float %469, %619
  %623 = fmul fast float %469, %620
  %624 = fadd fast float %621, 1.000000e+00
  %625 = fadd fast float %622, 1.000000e+00
  %626 = fadd fast float %623, 1.000000e+00
  %627 = fmul fast float %624, %445
  %628 = fmul fast float %625, %446
  %629 = fmul fast float %626, %447
  br label %630

; <label>:630                                     ; preds = %614, %580, %474, %431
  %631 = phi float [ %576, %474 ], [ %456, %580 ], [ %456, %614 ], [ 0x3FA23C0BE0000000, %431 ]
  %632 = phi float [ %568, %474 ], [ %611, %580 ], [ %627, %614 ], [ 1.000000e+00, %431 ]
  %633 = phi float [ %569, %474 ], [ %612, %580 ], [ %628, %614 ], [ 1.000000e+00, %431 ]
  %634 = phi float [ %570, %474 ], [ %613, %580 ], [ %629, %614 ], [ 1.000000e+00, %431 ]
  %635 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.i32 %635, 1
  %637 = and i32 %636, 1
  %638 = icmp ne i32 %637, 0
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 32
  %642 = icmp ne i32 %641, 0
  %643 = and i1 %638, %642
  %644 = select i1 %643, float 1.000000e+00, float %632
  %645 = select i1 %643, float 0x3FD3333340000000, float %633
  %646 = select i1 %643, float 0x3FD3333340000000, float %634
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = and i32 %648, 32
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %720, label %651

; <label>:651                                     ; preds = %630
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = add i32 %655, 0
  %657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %657, %dx.types.Handle %85, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = extractvalue %dx.types.ResRet.f32 %658, 1
  %661 = extractvalue %dx.types.ResRet.f32 %658, 2
  %662 = extractvalue %dx.types.ResRet.f32 %658, 3
  %663 = and i32 %653, 255
  %664 = uitofp i32 %663 to float
  %665 = lshr i32 %653, 8
  %666 = and i32 %665, 255
  %667 = uitofp i32 %666 to float
  %668 = lshr i32 %653, 16
  %669 = and i32 %668, 255
  %670 = uitofp i32 %669 to float
  %671 = fmul fast float %670, 0x3F70101000000000
  %672 = fmul fast float %659, %664
  %673 = fadd fast float %672, %667
  %674 = fmul fast float %673, 0x3F70101000000000
  %675 = fadd fast float %660, -5.000000e-01
  %676 = fadd fast float %662, -5.000000e-01
  %677 = fmul fast float %675, %671
  %678 = fmul fast float %676, %671
  %679 = fadd fast float %677, 5.000000e-01
  %680 = fadd fast float %678, 5.000000e-01
  %681 = fmul fast float %679, 2.000000e+00
  %682 = fadd fast float %681, -1.000000e+00
  %683 = fmul fast float %680, 2.000000e+00
  %684 = fadd fast float %683, -1.000000e+00
  %685 = fadd fast float %682, %684
  %686 = fmul fast float %685, 5.000000e-01
  %687 = fsub fast float %682, %684
  %688 = fmul fast float %687, 5.000000e-01
  %689 = call float @dx.op.unary.f32(i32 6, float %686)  ; FAbs(value)
  %690 = fsub fast float 1.000000e+00, %689
  %691 = call float @dx.op.unary.f32(i32 6, float %688)  ; FAbs(value)
  %692 = fsub fast float %690, %691
  %693 = call float @dx.op.dot3.f32(i32 55, float %686, float %688, float %692, float %686, float %688, float %692)  ; Dot3(ax,ay,az,bx,by,bz)
  %694 = call float @dx.op.unary.f32(i32 25, float %693)  ; Rsqrt(value)
  %695 = fmul fast float %686, %694
  %696 = fmul fast float %688, %694
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = and i32 %698, 67108864
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %716, label %701

; <label>:701                                     ; preds = %651
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 65535
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 65535
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = lshr i32 %703, 16
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = fsub fast float %674, %711
  %713 = fmul fast float %712, %705
  %714 = fadd fast float %713, %709
  %715 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  br label %716

; <label>:716                                     ; preds = %701, %651
  %717 = phi float [ %715, %701 ], [ %674, %651 ]
  %718 = call float @dx.op.dot2.f32(i32 54, float %695, float %696, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %719 = call float @dx.op.dot2.f32(i32 54, float %695, float %696, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %720

; <label>:720                                     ; preds = %716, %630
  %721 = phi float [ %717, %716 ], [ 0x3FD6666660000000, %630 ]
  %722 = phi float [ %718, %716 ], [ 0.000000e+00, %630 ]
  %723 = phi float [ %719, %716 ], [ 0.000000e+00, %630 ]
  %724 = phi float [ %661, %716 ], [ 1.000000e+00, %630 ]
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = lshr i32 %726, 22
  %728 = shl nuw nsw i32 %727, 5
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 64
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %766, label %734

; <label>:734                                     ; preds = %720
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = add i32 %736, 0
  %738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = and i32 %740, 131072
  %742 = icmp eq i32 %741, 0
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %738, %dx.types.Handle %85, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = extractvalue %dx.types.ResRet.f32 %743, 2
  %747 = fmul fast float %744, %223
  %748 = fmul fast float %745, %226
  %749 = fmul fast float %746, %229
  br i1 %742, label %756, label %750

; <label>:750                                     ; preds = %734
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 0
  %753 = fmul fast float %752, %747
  %754 = fmul fast float %752, %748
  %755 = fmul fast float %752, %749
  br label %756

; <label>:756                                     ; preds = %750, %734
  %757 = phi float [ %753, %750 ], [ %747, %734 ]
  %758 = phi float [ %754, %750 ], [ %748, %734 ]
  %759 = phi float [ %755, %750 ], [ %749, %734 ]
  %760 = fmul fast float %757, %729
  %761 = select i1 %207, float %760, float %757
  %762 = call float @dx.op.dot3.f32(i32 55, float %761, float %758, float %759, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %763 = select i1 %207, float 0.000000e+00, float %757
  %764 = select i1 %207, float %762, float %758
  %765 = select i1 %207, float 0.000000e+00, float %759
  br label %766

; <label>:766                                     ; preds = %756, %720
  %767 = phi float [ %763, %756 ], [ 0.000000e+00, %720 ]
  %768 = phi float [ %764, %756 ], [ 0.000000e+00, %720 ]
  %769 = phi float [ %765, %756 ], [ 0.000000e+00, %720 ]
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 1024
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %802, label %774

; <label>:774                                     ; preds = %766
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101020000000
  %780 = lshr i32 %776, 8
  %781 = and i32 %780, 255
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = lshr i32 %776, 16
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F70101020000000
  %788 = fmul fast float %779, %779
  %789 = fmul fast float %783, %783
  %790 = fmul fast float %787, %787
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = add i32 %792, 0
  %794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %794, %dx.types.Handle %86, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = fmul fast float %788, %796
  %800 = fmul fast float %789, %797
  %801 = fmul fast float %790, %798
  br label %802

; <label>:802                                     ; preds = %774, %766
  %803 = phi float [ %799, %774 ], [ 0.000000e+00, %766 ]
  %804 = phi float [ %800, %774 ], [ 0.000000e+00, %766 ]
  %805 = phi float [ %801, %774 ], [ 0.000000e+00, %766 ]
  %806 = fcmp fast ogt float %803, 0.000000e+00
  %807 = fcmp fast ogt float %804, 0.000000e+00
  %808 = fcmp fast ogt float %805, 0.000000e+00
  %809 = call float @dx.op.unary.f32(i32 23, float %803)  ; Log(value)
  %810 = call float @dx.op.unary.f32(i32 23, float %804)  ; Log(value)
  %811 = call float @dx.op.unary.f32(i32 23, float %805)  ; Log(value)
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 7
  %815 = and i32 %814, 32752
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = fmul fast float %809, 0xBFE62E4300000000
  %818 = fmul fast float %817, %816
  %819 = fmul fast float %810, 0xBFE62E4300000000
  %820 = fmul fast float %819, %816
  %821 = fmul fast float %811, 0xBFE62E4300000000
  %822 = fmul fast float %821, %816
  %823 = select i1 %806, float %818, float 1.270000e+02
  %824 = select i1 %807, float %820, float 1.270000e+02
  %825 = select i1 %808, float %822, float 1.270000e+02
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 10240
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %849, label %830

; <label>:830                                     ; preds = %802
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = and i32 %832, 2048
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %849, label %835

; <label>:835                                     ; preds = %830
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = add i32 %837, 0
  %839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %838, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %840 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %839, %dx.types.Handle %86, float %362, float %363, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 3
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = shl i32 %843, 4
  %845 = and i32 %844, 32752
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = fmul fast float %846, %841
  %848 = call float @dx.op.binary.f32(i32 35, float %847, float 0x3F70101020000000)  ; FMax(a,b)
  br label %849

; <label>:849                                     ; preds = %835, %830, %802
  %850 = phi float [ %848, %835 ], [ 0x3F70101020000000, %830 ], [ 0x3F70101020000000, %802 ]
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = and i32 %852, 255
  %854 = uitofp i32 %853 to float
  %855 = lshr i32 %852, 8
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = call float @dx.op.dot3.f32(i32 55, float %644, float %645, float %646, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %859 = fmul fast float %857, %858
  %860 = fadd fast float %859, %854
  %861 = fmul fast float %860, 0x3F70101020000000
  %862 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  br label %863

; <label>:863                                     ; preds = %849, %268
  %864 = phi float [ 0.000000e+00, %268 ], [ %722, %849 ]
  %865 = phi float [ 0.000000e+00, %268 ], [ %723, %849 ]
  %866 = phi float [ 0.000000e+00, %268 ], [ %644, %849 ]
  %867 = phi float [ 0.000000e+00, %268 ], [ %645, %849 ]
  %868 = phi float [ 0.000000e+00, %268 ], [ %646, %849 ]
  %869 = phi float [ 0.000000e+00, %268 ], [ %767, %849 ]
  %870 = phi float [ 0.000000e+00, %268 ], [ %768, %849 ]
  %871 = phi float [ 0.000000e+00, %268 ], [ %769, %849 ]
  %872 = phi float [ 0.000000e+00, %268 ], [ %823, %849 ]
  %873 = phi float [ 0.000000e+00, %268 ], [ %824, %849 ]
  %874 = phi float [ 0.000000e+00, %268 ], [ %825, %849 ]
  %875 = phi float [ 0.000000e+00, %268 ], [ %631, %849 ]
  %876 = phi float [ 0.000000e+00, %268 ], [ %432, %849 ]
  %877 = phi float [ 0.000000e+00, %268 ], [ %721, %849 ]
  %878 = phi float [ 0.000000e+00, %268 ], [ %724, %849 ]
  %879 = phi float [ 0.000000e+00, %268 ], [ %850, %849 ]
  %880 = phi float [ 0.000000e+00, %268 ], [ %862, %849 ]
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = bitcast i32 %882 to float
  %884 = fcmp fast oge float %883, 0.000000e+00
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = select i1 %884, float %883, float %886
  %888 = call float @dx.op.dot2.f32(i32 54, float %864, float %865, float %864, float %865)  ; Dot2(ax,ay,bx,by)
  %889 = fmul fast float %888, 0x3FE3333340000000
  %890 = fsub fast float 1.000000e+00, %889
  %891 = call float @dx.op.dot3.f32(i32 55, float %864, float %865, float %890, float %864, float %865, float %890)  ; Dot3(ax,ay,az,bx,by,bz)
  %892 = call float @dx.op.unary.f32(i32 25, float %891)  ; Rsqrt(value)
  %893 = fmul fast float %892, %864
  %894 = fmul fast float %892, %865
  %895 = fmul fast float %890, %892
  %896 = fmul fast float %895, %92
  %897 = fmul fast float %895, %93
  %898 = fmul fast float %895, %94
  %899 = fmul fast float %893, %65
  %900 = fmul fast float %893, %66
  %901 = fmul fast float %893, %67
  %902 = fmul fast float %97, %68
  %903 = fmul fast float %902, %894
  %904 = fmul fast float %100, %68
  %905 = fmul fast float %904, %894
  %906 = fmul fast float %103, %68
  %907 = fmul fast float %906, %894
  %908 = fadd fast float %903, %899
  %909 = fmul fast float %908, %91
  %910 = fadd fast float %909, %896
  %911 = fadd fast float %905, %900
  %912 = fmul fast float %911, %91
  %913 = fadd fast float %912, %897
  %914 = fadd fast float %907, %901
  %915 = fmul fast float %914, %91
  %916 = fadd fast float %915, %898
  %917 = call float @dx.op.dot3.f32(i32 55, float %910, float %913, float %916, float %910, float %913, float %916)  ; Dot3(ax,ay,az,bx,by,bz)
  %918 = call float @dx.op.unary.f32(i32 25, float %917)  ; Rsqrt(value)
  %919 = fmul fast float %910, %918
  %920 = fmul fast float %913, %918
  %921 = fmul fast float %916, %918
  %922 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %923 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %924 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %925 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %926 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %927 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %928 = fadd fast float %922, %145
  %929 = fadd fast float %923, %146
  %930 = fadd fast float %924, %147
  %931 = fadd fast float %925, %145
  %932 = fadd fast float %926, %146
  %933 = fadd fast float %927, %147
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 0
  %936 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %937 = extractvalue %dx.types.CBufRet.f32 %934, 2
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 3
  %941 = fmul fast float %935, %89
  %942 = fmul fast float %941, %939
  %943 = fmul fast float %936, %90
  %944 = fmul fast float %943, %940
  %945 = fptoui float %942 to i32
  %946 = fptoui float %944 to i32
  %947 = fadd fast float %935, -1.000000e+00
  %948 = fadd fast float %936, -1.000000e+00
  %949 = fptoui float %947 to i32
  %950 = fptoui float %948 to i32
  %951 = call i32 @dx.op.binary.i32(i32 40, i32 %945, i32 %949)  ; UMin(a,b)
  %952 = call i32 @dx.op.binary.i32(i32 40, i32 %946, i32 %950)  ; UMin(a,b)
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 2
  %955 = extractvalue %dx.types.CBufRet.f32 %953, 3
  %956 = fmul fast float %954, %77
  %957 = fsub fast float %956, %955
  %958 = fadd fast float %937, -1.000000e+00
  %959 = call float @dx.op.binary.f32(i32 36, float %957, float %958)  ; FMin(a,b)
  %960 = fptoui float %959 to i32
  %961 = fptoui float %935 to i32
  %962 = fptoui float %936 to i32
  %963 = mul i32 %960, %962
  %964 = add i32 %963, %952
  %965 = mul i32 %964, %961
  %966 = add i32 %965, %951
  %967 = shl i32 %966, 2
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 1023
  %971 = lshr i32 %969, 10
  %972 = icmp eq i32 %970, 0
  br i1 %972, label %1426, label %973

; <label>:973                                     ; preds = %863
  %974 = and i32 %969, 1023
  br label %975

; <label>:975                                     ; preds = %1104, %973
  %976 = phi float [ %1105, %1104 ], [ 0.000000e+00, %973 ]
  %977 = phi float [ %1106, %1104 ], [ %887, %973 ]
  %978 = phi float [ %1107, %1104 ], [ %880, %973 ]
  %979 = phi float [ %1108, %1104 ], [ %872, %973 ]
  %980 = phi float [ %1109, %1104 ], [ %873, %973 ]
  %981 = phi float [ %1110, %1104 ], [ %874, %973 ]
  %982 = phi float [ %1111, %1104 ], [ 0.000000e+00, %973 ]
  %983 = phi float [ %1112, %1104 ], [ 0.000000e+00, %973 ]
  %984 = phi float [ %1113, %1104 ], [ %869, %973 ]
  %985 = phi float [ %1114, %1104 ], [ %870, %973 ]
  %986 = phi float [ %1115, %1104 ], [ %871, %973 ]
  %987 = phi float [ %1116, %1104 ], [ %919, %973 ]
  %988 = phi float [ %1117, %1104 ], [ %920, %973 ]
  %989 = phi float [ %1118, %1104 ], [ %921, %973 ]
  %990 = phi float [ %1119, %1104 ], [ %878, %973 ]
  %991 = phi float [ %1120, %1104 ], [ %877, %973 ]
  %992 = phi float [ %1121, %1104 ], [ 0.000000e+00, %973 ]
  %993 = phi float [ %1122, %1104 ], [ %875, %973 ]
  %994 = phi float [ %1123, %1104 ], [ %866, %973 ]
  %995 = phi float [ %1124, %1104 ], [ %867, %973 ]
  %996 = phi float [ %1125, %1104 ], [ %868, %973 ]
  %997 = phi i32 [ %1054, %1104 ], [ 0, %973 ]
  %998 = add nuw nsw i32 %997, %971
  %999 = shl i32 %998, 2
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = shl i32 %1001, 8
  %1003 = or i32 %1002, 48
  %1004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.ResRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.ResRet.f32 %1004, 2
  %1008 = extractvalue %dx.types.ResRet.f32 %1004, 3
  %1009 = or i32 %1002, 64
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.i32 %1010, 1
  %1013 = or i32 %1002, 80
  %1014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 3
  %1017 = or i32 %1002, 96
  %1018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.ResRet.f32 %1018, 2
  %1022 = extractvalue %dx.types.ResRet.f32 %1018, 3
  %1023 = or i32 %1002, 112
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1026 = or i32 %1002, 128
  %1027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = extractvalue %dx.types.ResRet.f32 %1027, 3
  %1032 = or i32 %1002, 144
  %1033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = extractvalue %dx.types.ResRet.f32 %1033, 3
  %1038 = or i32 %1002, 160
  %1039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = extractvalue %dx.types.ResRet.f32 %1039, 3
  %1044 = or i32 %1002, 192
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = or i32 %1002, 208
  %1048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = or i32 %1002, 248
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = add nuw nsw i32 %997, 1
  %1055 = bitcast float %1008 to i32
  %1056 = and i32 %1055, 512
  %1057 = icmp eq i32 %1056, 0
  %1058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.f32 %1058, 2
  %1062 = extractvalue %dx.types.ResRet.f32 %1058, 3
  %1063 = call float @dx.op.dot4.f32(i32 56, float %1059, float %1060, float %1061, float %1062, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1064 = or i32 %1002, 16
  %1065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.f32 %1065, 2
  %1069 = extractvalue %dx.types.ResRet.f32 %1065, 3
  %1070 = call float @dx.op.dot4.f32(i32 56, float %1066, float %1067, float %1068, float %1069, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1071 = or i32 %1002, 32
  %1072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = extractvalue %dx.types.ResRet.f32 %1072, 3
  %1077 = call float @dx.op.dot4.f32(i32 56, float %1073, float %1074, float %1075, float %1076, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1078 = call float @dx.op.unary.f32(i32 27, float %1063)  ; Round_ni(value)
  %1079 = call float @dx.op.unary.f32(i32 6, float %1078)  ; FAbs(value)
  %1080 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1081 = call float @dx.op.unary.f32(i32 6, float %1080)  ; FAbs(value)
  %1082 = call float @dx.op.unary.f32(i32 6, float %1077)  ; FAbs(value)
  %1083 = call float @dx.op.unary.f32(i32 27, float %1082)  ; Round_ni(value)
  %1084 = fadd fast float %1081, %1079
  %1085 = fadd fast float %1084, %1083
  %1086 = fcmp fast oeq float %1085, 0.000000e+00
  %1087 = call float @dx.op.dot4.f32(i32 56, float %1059, float %1060, float %1061, float %1062, float %928, float %929, float %930, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1088 = call float @dx.op.dot4.f32(i32 56, float %1066, float %1067, float %1068, float %1069, float %928, float %929, float %930, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1089 = call float @dx.op.dot4.f32(i32 56, float %1059, float %1060, float %1061, float %1062, float %931, float %932, float %933, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1090 = call float @dx.op.dot4.f32(i32 56, float %1066, float %1067, float %1068, float %1069, float %931, float %932, float %933, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1091 = fsub fast float %1087, %1063
  %1092 = fsub fast float %1089, %1063
  %1093 = fsub fast float %1088, %1070
  %1094 = fsub fast float %1090, %1070
  %1095 = call float @dx.op.dot3.f32(i32 55, float %1005, float %1006, float %1007, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 2
  %1098 = fadd fast float %1097, %1095
  %1099 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1101 = fcmp fast ogt float %1099, %1100
  %1102 = and i1 %1086, %1101
  %1103 = and i1 %1057, %1102
  br i1 %1103, label %1127, label %1104

; <label>:1104                                    ; preds = %1412, %1208, %1127, %975
  %1105 = phi float [ %976, %1127 ], [ %1211, %1208 ], [ %1211, %1412 ], [ %976, %975 ]
  %1106 = phi float [ %977, %1127 ], [ %977, %1208 ], [ %1388, %1412 ], [ %977, %975 ]
  %1107 = phi float [ %978, %1127 ], [ %978, %1208 ], [ %1386, %1412 ], [ %978, %975 ]
  %1108 = phi float [ %979, %1127 ], [ %979, %1208 ], [ %1364, %1412 ], [ %979, %975 ]
  %1109 = phi float [ %980, %1127 ], [ %980, %1208 ], [ %1365, %1412 ], [ %980, %975 ]
  %1110 = phi float [ %981, %1127 ], [ %981, %1208 ], [ %1366, %1412 ], [ %981, %975 ]
  %1111 = phi float [ %982, %1127 ], [ %982, %1208 ], [ %1335, %1412 ], [ %982, %975 ]
  %1112 = phi float [ %983, %1127 ], [ %983, %1208 ], [ %1333, %1412 ], [ %983, %975 ]
  %1113 = phi float [ %984, %1127 ], [ %984, %1208 ], [ %1422, %1412 ], [ %984, %975 ]
  %1114 = phi float [ %985, %1127 ], [ %985, %1208 ], [ %1423, %1412 ], [ %985, %975 ]
  %1115 = phi float [ %986, %1127 ], [ %986, %1208 ], [ %1424, %1412 ], [ %986, %975 ]
  %1116 = phi float [ %987, %1127 ], [ %987, %1208 ], [ %1314, %1412 ], [ %987, %975 ]
  %1117 = phi float [ %988, %1127 ], [ %988, %1208 ], [ %1315, %1412 ], [ %988, %975 ]
  %1118 = phi float [ %989, %1127 ], [ %989, %1208 ], [ %1316, %1412 ], [ %989, %975 ]
  %1119 = phi float [ %990, %1127 ], [ %990, %1208 ], [ %1344, %1412 ], [ %990, %975 ]
  %1120 = phi float [ %991, %1127 ], [ %991, %1208 ], [ %1341, %1412 ], [ %991, %975 ]
  %1121 = phi float [ %992, %1127 ], [ %992, %1208 ], [ %1338, %1412 ], [ %992, %975 ]
  %1122 = phi float [ %993, %1127 ], [ %993, %1208 ], [ %1331, %1412 ], [ %993, %975 ]
  %1123 = phi float [ %994, %1127 ], [ %994, %1208 ], [ %1326, %1412 ], [ %994, %975 ]
  %1124 = phi float [ %995, %1127 ], [ %995, %1208 ], [ %1327, %1412 ], [ %995, %975 ]
  %1125 = phi float [ %996, %1127 ], [ %996, %1208 ], [ %1328, %1412 ], [ %996, %975 ]
  %1126 = icmp eq i32 %1054, %974
  br i1 %1126, label %1425, label %975

; <label>:1127                                    ; preds = %975
  %1128 = extractvalue %dx.types.ResRet.f32 %1024, 3
  %1129 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1130 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1131 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1132 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1133 = extractvalue %dx.types.ResRet.i32 %1010, 3
  %1134 = extractvalue %dx.types.ResRet.i32 %1010, 2
  %1135 = add i32 %1133, 0
  %1136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1136, %dx.types.Handle %1137, float %1063, float %1070, float undef, float undef, i32 0, i32 0, i32 undef, float %1091, float %1093, float undef, float %1092, float %1094, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = fmul fast float %1139, %1132
  %1141 = fadd fast float %1140, %1131
  %1142 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  %1143 = fmul fast float %1063, %1019
  %1144 = call float @dx.op.tertiary.f32(i32 46, float %1020, float %1070, float %1143)  ; FMad(a,b,c)
  %1145 = fadd fast float %1144, %1130
  %1146 = fmul fast float %1063, %1021
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %1070, float %1146)  ; FMad(a,b,c)
  %1148 = fadd fast float %1147, %1129
  %1149 = fmul fast float %1091, %1019
  %1150 = call float @dx.op.tertiary.f32(i32 46, float %1020, float %1093, float %1149)  ; FMad(a,b,c)
  %1151 = fmul fast float %1091, %1021
  %1152 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %1093, float %1151)  ; FMad(a,b,c)
  %1153 = fmul fast float %1092, %1019
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1020, float %1094, float %1153)  ; FMad(a,b,c)
  %1155 = fmul fast float %1092, %1021
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %1094, float %1155)  ; FMad(a,b,c)
  %1157 = add i32 %1134, 0
  %1158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1157, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1159 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1158, %dx.types.Handle %1137, float %1145, float %1148, float undef, float undef, i32 0, i32 0, i32 undef, float %1150, float %1152, float undef, float %1154, float %1156, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = and i32 %1055, 1024
  %1162 = icmp ne i32 %1161, 0
  %1163 = fcmp fast ogt float %1160, 0x3FE0101020000000
  %1164 = uitofp i1 %1163 to float
  %1165 = select i1 %1162, float %1164, float %1160
  %1166 = and i32 %1055, 8192
  %1167 = icmp ne i32 %1166, 0
  %1168 = select i1 %1167, float %1128, float 1.000000e+00
  %1169 = fmul fast float %1063, 2.000000e+00
  %1170 = fadd fast float %1169, -1.000000e+00
  %1171 = call float @dx.op.unary.f32(i32 6, float %1170)  ; FAbs(value)
  %1172 = fmul fast float %1171, %1052
  %1173 = fsub fast float %1172, %1052
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = fmul fast float %1070, 2.000000e+00
  %1176 = fadd fast float %1175, -1.000000e+00
  %1177 = call float @dx.op.unary.f32(i32 6, float %1176)  ; FAbs(value)
  %1178 = fmul fast float %1177, %1053
  %1179 = fsub fast float %1178, %1053
  %1180 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1181 = fmul fast float %1082, %1015
  %1182 = fsub fast float %1181, %1015
  %1183 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1184 = fmul fast float %1142, %1168
  %1185 = fmul fast float %1184, %1139
  %1186 = fmul fast float %1185, %1174
  %1187 = fmul fast float %1186, %1165
  %1188 = fmul fast float %1187, %1180
  %1189 = fmul fast float %1188, %1183
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 1
  %1192 = extractvalue %dx.types.CBufRet.f32 %1190, 0
  %1193 = fsub fast float %1099, %1192
  %1194 = fmul fast float %1193, %1191
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1196 = fmul fast float %1189, %1016
  %1197 = fadd fast float %1189, %1016
  %1198 = fmul fast float %1197, %1025
  %1199 = fsub fast float %1198, %1025
  %1200 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1201 = and i32 %1055, 128
  %1202 = icmp ne i32 %1201, 0
  %1203 = select i1 %1202, float %1200, float %1196
  %1204 = fmul fast float %1203, %1195
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 0
  %1207 = fcmp fast ugt float %1204, %1206
  br i1 %1207, label %1208, label %1104

; <label>:1208                                    ; preds = %1127
  %1209 = select i1 %1167, float %1204, float 0.000000e+00
  %1210 = fadd fast float %1209, %976
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  br i1 %1167, label %1104, label %1212

; <label>:1212                                    ; preds = %1208
  %1213 = and i32 %1055, 4
  %1214 = and i32 %1055, 8
  %1215 = add i32 %1011, 0
  %1216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1215, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1218 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1216, %dx.types.Handle %1217, float %1145, float %1148, float undef, float undef, i32 0, i32 0, i32 undef, float %1150, float %1152, float undef, float %1154, float %1156, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1223 = bitcast float %1037 to i32
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = lshr i32 %1223, 8
  %1227 = and i32 %1226, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = fmul fast float %1222, %1225
  %1230 = fadd fast float %1229, %1228
  %1231 = fmul fast float %1230, 0x3F70101000000000
  %1232 = add i32 %1012, 0
  %1233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1232, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1234 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1233, %dx.types.Handle %1217, float %1145, float %1148, float undef, float undef, i32 0, i32 0, i32 undef, float %1150, float %1152, float undef, float %1154, float %1156, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.ResRet.f32 %1234, 1
  %1237 = extractvalue %dx.types.ResRet.f32 %1234, 2
  %1238 = extractvalue %dx.types.ResRet.f32 %1234, 3
  %1239 = bitcast float %1031 to i32
  %1240 = and i32 %1239, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = lshr i32 %1239, 8
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = lshr i32 %1239, 16
  %1246 = and i32 %1245, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = fmul fast float %1247, 0x3F70101000000000
  %1249 = fmul fast float %1235, %1241
  %1250 = fadd fast float %1249, %1244
  %1251 = fmul fast float %1250, 0x3F70101000000000
  %1252 = fadd fast float %1236, -5.000000e-01
  %1253 = fadd fast float %1238, -5.000000e-01
  %1254 = fmul fast float %1252, %1248
  %1255 = fmul fast float %1253, %1248
  %1256 = fadd fast float %1254, 5.000000e-01
  %1257 = fadd fast float %1255, 5.000000e-01
  %1258 = fmul fast float %1219, %1040
  %1259 = fmul fast float %1220, %1041
  %1260 = fmul fast float %1221, %1042
  %1261 = fmul fast float %1256, 2.000000e+00
  %1262 = fadd fast float %1261, -1.000000e+00
  %1263 = fmul fast float %1257, 2.000000e+00
  %1264 = fadd fast float %1263, -1.000000e+00
  %1265 = fadd fast float %1262, %1264
  %1266 = fmul fast float %1265, 5.000000e-01
  %1267 = fsub fast float %1262, %1264
  %1268 = fmul fast float %1267, 5.000000e-01
  %1269 = call float @dx.op.unary.f32(i32 6, float %1266)  ; FAbs(value)
  %1270 = fsub fast float 1.000000e+00, %1269
  %1271 = call float @dx.op.unary.f32(i32 6, float %1268)  ; FAbs(value)
  %1272 = fsub fast float %1270, %1271
  %1273 = call float @dx.op.dot3.f32(i32 55, float %1266, float %1268, float %1272, float %1266, float %1268, float %1272)  ; Dot3(ax,ay,az,bx,by,bz)
  %1274 = call float @dx.op.unary.f32(i32 25, float %1273)  ; Rsqrt(value)
  %1275 = fmul fast float %1266, %1274
  %1276 = fmul fast float %1268, %1274
  %1277 = fmul fast float %1274, %1272
  %1278 = fmul fast float %1277, %1005
  %1279 = fmul fast float %1277, %1006
  %1280 = fmul fast float %1277, %1007
  %1281 = fmul fast float %1275, %1028
  %1282 = fmul fast float %1275, %1029
  %1283 = fmul fast float %1275, %1030
  %1284 = fadd fast float %1281, %1278
  %1285 = fadd fast float %1282, %1279
  %1286 = fadd fast float %1283, %1280
  %1287 = fmul fast float %1276, %1034
  %1288 = fmul fast float %1276, %1035
  %1289 = fmul fast float %1276, %1036
  %1290 = fadd fast float %1284, %1287
  %1291 = fadd fast float %1285, %1288
  %1292 = fadd fast float %1286, %1289
  %1293 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1291, float %1292, float %1290, float %1291, float %1292)  ; Dot3(ax,ay,az,bx,by,bz)
  %1294 = call float @dx.op.unary.f32(i32 25, float %1293)  ; Rsqrt(value)
  %1295 = fmul fast float %1290, %1294
  %1296 = fmul fast float %1291, %1294
  %1297 = fmul fast float %1292, %1294
  %1298 = icmp ne i32 %1214, 0
  %1299 = select i1 %1298, float 1.000000e+00, float 0.000000e+00
  %1300 = fmul fast float %1204, %1299
  %1301 = and i32 %1055, 1
  %1302 = icmp eq i32 %1301, 0
  br i1 %1302, label %1303, label %1307

; <label>:1303                                    ; preds = %1212
  %1304 = fsub fast float %1295, %987
  %1305 = fsub fast float %1296, %988
  %1306 = fsub fast float %1297, %989
  br label %1307

; <label>:1307                                    ; preds = %1303, %1212
  %1308 = phi float [ %1304, %1303 ], [ %1295, %1212 ]
  %1309 = phi float [ %1305, %1303 ], [ %1296, %1212 ]
  %1310 = phi float [ %1306, %1303 ], [ %1297, %1212 ]
  %1311 = fmul float %1310, %1300
  %1312 = fmul float %1309, %1300
  %1313 = fmul float %1308, %1300
  %1314 = fadd fast float %1313, %987
  %1315 = fadd fast float %1312, %988
  %1316 = fadd fast float %1311, %989
  %1317 = icmp ne i32 %1213, 0
  %1318 = select i1 %1317, float 1.000000e+00, float 0.000000e+00
  %1319 = fmul fast float %1204, %1318
  %1320 = fsub fast float %1258, %994
  %1321 = fsub fast float %1259, %995
  %1322 = fsub fast float %1260, %996
  %1323 = fmul fast float %1320, %1319
  %1324 = fmul fast float %1321, %1319
  %1325 = fmul fast float %1322, %1319
  %1326 = fadd fast float %1323, %994
  %1327 = fadd fast float %1324, %995
  %1328 = fadd fast float %1325, %996
  %1329 = fsub fast float %1231, %993
  %1330 = fmul fast float %1329, %1319
  %1331 = fadd fast float %1330, %993
  %1332 = fmul fast float %1319, %983
  %1333 = fsub fast float %983, %1332
  %1334 = fmul fast float %1319, %982
  %1335 = fsub fast float %982, %1334
  %1336 = bitcast float %1049 to i32
  %1337 = fadd fast float %1204, %992
  %1338 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1339 = fsub fast float %1251, %991
  %1340 = fmul fast float %1339, %1300
  %1341 = fadd fast float %1340, %991
  %1342 = fsub fast float %1237, %990
  %1343 = fmul fast float %1342, %1300
  %1344 = fadd fast float %1343, %990
  br i1 %1302, label %1353, label %1345

; <label>:1345                                    ; preds = %1307
  %1346 = and i32 %1055, 32768
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %1363, label %1348

; <label>:1348                                    ; preds = %1345
  %1349 = fmul fast float %1300, 1.270000e+02
  %1350 = fadd fast float %1349, %979
  %1351 = fadd fast float %1349, %980
  %1352 = fadd fast float %1349, %981
  br label %1363

; <label>:1353                                    ; preds = %1307
  %1354 = fsub fast float 1.270000e+02, %979
  %1355 = fsub fast float 1.270000e+02, %980
  %1356 = fsub fast float 1.270000e+02, %981
  %1357 = fmul fast float %1300, %1354
  %1358 = fmul fast float %1300, %1355
  %1359 = fmul fast float %1300, %1356
  %1360 = fadd fast float %1357, %979
  %1361 = fadd fast float %1358, %980
  %1362 = fadd fast float %1359, %981
  br label %1363

; <label>:1363                                    ; preds = %1353, %1348, %1345
  %1364 = phi float [ %1350, %1348 ], [ %979, %1345 ], [ %1360, %1353 ]
  %1365 = phi float [ %1351, %1348 ], [ %980, %1345 ], [ %1361, %1353 ]
  %1366 = phi float [ %1352, %1348 ], [ %981, %1345 ], [ %1362, %1353 ]
  %1367 = call float @dx.op.dot3.f32(i32 55, float %1258, float %1259, float %1260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.CBufRet.f32 %1368, 1
  %1371 = fmul fast float %1370, %1367
  %1372 = fadd fast float %1371, %1369
  %1373 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1374 = bitcast float %1043 to i32
  %1375 = and i32 %1374, 65535
  %1376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1375)  ; LegacyF16ToF32(value)
  %1377 = lshr i32 %1374, 16
  %1378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1377)  ; LegacyF16ToF32(value)
  %1379 = fcmp fast oge float %1376, 0.000000e+00
  %1380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.f32 %1380, 0
  %1382 = select i1 %1379, float %1376, float %1381
  %1383 = fadd fast float %1382, %1378
  %1384 = fsub fast float %1373, %978
  %1385 = fmul fast float %1384, %1204
  %1386 = fadd fast float %1385, %978
  %1387 = fmul fast float %1383, %1204
  %1388 = call float @dx.op.binary.f32(i32 35, float %977, float %1387)  ; FMax(a,b)
  %1389 = and i32 %1055, 16
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1412, label %1391

; <label>:1391                                    ; preds = %1363
  %1392 = add i32 %1046, 0
  %1393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1394 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1393, %dx.types.Handle %1217, float %1145, float %1148, float undef, float undef, i32 0, i32 0, i32 undef, float %1150, float %1152, float undef, float %1154, float %1156, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.ResRet.f32 %1394, 1
  %1397 = extractvalue %dx.types.ResRet.f32 %1394, 2
  %1398 = and i32 %1336, 65535
  %1399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1398)  ; LegacyF16ToF32(value)
  %1400 = fmul fast float %1395, %1040
  %1401 = fmul fast float %1396, %1041
  %1402 = fmul fast float %1397, %1042
  %1403 = and i32 %1055, 16384
  %1404 = icmp ne i32 %1403, 0
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = select i1 %1404, float %1406, float 1.000000e+00
  %1408 = fmul fast float %1407, %1399
  %1409 = fmul fast float %1400, %1408
  %1410 = fmul fast float %1401, %1408
  %1411 = fmul fast float %1402, %1408
  br label %1412

; <label>:1412                                    ; preds = %1391, %1363
  %1413 = phi float [ %1409, %1391 ], [ 0.000000e+00, %1363 ]
  %1414 = phi float [ %1410, %1391 ], [ 0.000000e+00, %1363 ]
  %1415 = phi float [ %1411, %1391 ], [ 0.000000e+00, %1363 ]
  %1416 = fsub fast float %1413, %984
  %1417 = fsub fast float %1414, %985
  %1418 = fsub fast float %1415, %986
  %1419 = fmul fast float %1416, %1204
  %1420 = fmul fast float %1417, %1204
  %1421 = fmul fast float %1418, %1204
  %1422 = fadd fast float %1419, %984
  %1423 = fadd fast float %1420, %985
  %1424 = fadd fast float %1421, %986
  br label %1104

; <label>:1425                                    ; preds = %1104
  br label %1426

; <label>:1426                                    ; preds = %1425, %863
  %1427 = phi float [ 0.000000e+00, %863 ], [ %1105, %1425 ]
  %1428 = phi float [ %887, %863 ], [ %1106, %1425 ]
  %1429 = phi float [ %880, %863 ], [ %1107, %1425 ]
  %1430 = phi float [ %872, %863 ], [ %1108, %1425 ]
  %1431 = phi float [ %873, %863 ], [ %1109, %1425 ]
  %1432 = phi float [ %874, %863 ], [ %1110, %1425 ]
  %1433 = phi float [ 0.000000e+00, %863 ], [ %1111, %1425 ]
  %1434 = phi float [ 0.000000e+00, %863 ], [ %1112, %1425 ]
  %1435 = phi float [ %869, %863 ], [ %1113, %1425 ]
  %1436 = phi float [ %870, %863 ], [ %1114, %1425 ]
  %1437 = phi float [ %871, %863 ], [ %1115, %1425 ]
  %1438 = phi float [ %919, %863 ], [ %1116, %1425 ]
  %1439 = phi float [ %920, %863 ], [ %1117, %1425 ]
  %1440 = phi float [ %921, %863 ], [ %1118, %1425 ]
  %1441 = phi float [ %878, %863 ], [ %1119, %1425 ]
  %1442 = phi float [ %877, %863 ], [ %1120, %1425 ]
  %1443 = phi float [ 0.000000e+00, %863 ], [ %1121, %1425 ]
  %1444 = phi float [ %875, %863 ], [ %1122, %1425 ]
  %1445 = phi float [ %866, %863 ], [ %1123, %1425 ]
  %1446 = phi float [ %867, %863 ], [ %1124, %1425 ]
  %1447 = phi float [ %868, %863 ], [ %1125, %1425 ]
  %1448 = call float @dx.op.dot3.f32(i32 55, float %1438, float %1439, float %1440, float %1438, float %1439, float %1440)  ; Dot3(ax,ay,az,bx,by,bz)
  %1449 = call float @dx.op.unary.f32(i32 25, float %1448)  ; Rsqrt(value)
  %1450 = fmul fast float %1449, %1438
  %1451 = fmul fast float %1449, %1439
  %1452 = fmul fast float %1449, %1440
  %1453 = fadd fast float %1443, %876
  %1454 = call float @dx.op.unary.f32(i32 7, float %1453)  ; Saturate(value)
  %1455 = call float @dx.op.dot3.f32(i32 55, float %1450, float %1451, float %1452, float %1450, float %1451, float %1452)  ; Dot3(ax,ay,az,bx,by,bz)
  %1456 = call float @dx.op.unary.f32(i32 25, float %1455)  ; Rsqrt(value)
  %1457 = fmul fast float %1456, %1450
  %1458 = fmul fast float %1456, %1451
  %1459 = fmul fast float %1456, %1452
  %1460 = fadd fast float %1444, 0xBFB99999A0000000
  %1461 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1462 = fmul fast float %1461, 0x3FF1C71C80000000
  %1463 = call float @dx.op.binary.f32(i32 36, float %1444, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1464 = fsub fast float 1.000000e+00, %1462
  %1465 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1466 = fmul fast float %1465, %1445
  %1467 = fmul fast float %1465, %1446
  %1468 = fmul fast float %1465, %1447
  %1469 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1470 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1471 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1472 = fmul fast float %1462, %1445
  %1473 = fmul fast float %1462, %1446
  %1474 = fmul fast float %1462, %1447
  %1475 = fadd fast float %1472, %1463
  %1476 = fadd fast float %1473, %1463
  %1477 = fadd fast float %1474, %1463
  %1478 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1479 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1480 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1481 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  %1482 = call float @dx.op.binary.f32(i32 36, float %1430, float 1.270000e+02)  ; FMin(a,b)
  %1483 = call float @dx.op.binary.f32(i32 36, float %1431, float 1.270000e+02)  ; FMin(a,b)
  %1484 = call float @dx.op.binary.f32(i32 36, float %1432, float 1.270000e+02)  ; FMin(a,b)
  %1485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.i32 %1485, 3
  %1487 = and i32 %1486, 8
  %1488 = icmp ne i32 %1487, 0
  %1489 = call float @dx.op.binary.f32(i32 35, float %1469, float %1445)  ; FMax(a,b)
  %1490 = call float @dx.op.binary.f32(i32 35, float %1470, float %1445)  ; FMax(a,b)
  %1491 = call float @dx.op.binary.f32(i32 35, float %1471, float %1445)  ; FMax(a,b)
  %1492 = call float @dx.op.dot3.f32(i32 55, float %1469, float %1470, float %1471, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1493 = select i1 %207, float %1445, float %1469
  %1494 = select i1 %207, float %1492, float %1470
  %1495 = select i1 %207, float 1.000000e+00, float %1471
  %1496 = select i1 %1488, float %1489, float %1493
  %1497 = select i1 %1488, float %1490, float %1494
  %1498 = select i1 %1488, float %1491, float %1495
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 0
  %1501 = extractvalue %dx.types.CBufRet.f32 %1499, 1
  %1502 = extractvalue %dx.types.CBufRet.f32 %1499, 2
  %1503 = fadd fast float %1500, %145
  %1504 = fadd fast float %1501, %146
  %1505 = fadd fast float %1502, %147
  %1506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.f32 %1506, 0
  %1508 = extractvalue %dx.types.CBufRet.f32 %1506, 1
  %1509 = fsub fast float %1503, %1507
  %1510 = fsub fast float %1504, %1508
  %1511 = fmul fast float %1509, %1509
  %1512 = fmul fast float %1510, %1510
  %1513 = fadd fast float %1511, %1512
  %1514 = call float @dx.op.unary.f32(i32 24, float %1513)  ; Sqrt(value)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1506, 2
  %1516 = fcmp fast olt float %1514, %1515
  br i1 %1516, label %1517, label %1584

; <label>:1517                                    ; preds = %1426
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 0
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1524 = extractvalue %dx.types.CBufRet.f32 %1518, 1
  %1525 = extractvalue %dx.types.CBufRet.f32 %1520, 1
  %1526 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %1527 = extractvalue %dx.types.CBufRet.f32 %1518, 3
  %1528 = extractvalue %dx.types.CBufRet.f32 %1520, 3
  %1529 = extractvalue %dx.types.CBufRet.f32 %1522, 3
  %1530 = fadd fast float %1527, %1503
  %1531 = fadd fast float %1528, %1504
  %1532 = fadd fast float %1529, %1505
  %1533 = fmul fast float %1530, %1519
  %1534 = call float @dx.op.tertiary.f32(i32 46, float %1531, float %1521, float %1533)  ; FMad(a,b,c)
  %1535 = call float @dx.op.tertiary.f32(i32 46, float %1532, float %1523, float %1534)  ; FMad(a,b,c)
  %1536 = fmul fast float %1530, %1524
  %1537 = call float @dx.op.tertiary.f32(i32 46, float %1531, float %1525, float %1536)  ; FMad(a,b,c)
  %1538 = call float @dx.op.tertiary.f32(i32 46, float %1532, float %1526, float %1537)  ; FMad(a,b,c)
  %1539 = fsub fast float %1535, %1527
  %1540 = fsub fast float %1538, %1528
  %1541 = fsub fast float %1539, %1507
  %1542 = fadd fast float %1541, %1515
  %1543 = fsub fast float %1540, %1508
  %1544 = fadd fast float %1543, %1515
  %1545 = extractvalue %dx.types.CBufRet.f32 %1506, 3
  %1546 = fmul fast float %1542, %1545
  %1547 = fmul fast float %1544, %1545
  %1548 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1549 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1550 = fsub fast float 1.000000e+00, %1548
  %1551 = fsub fast float 1.000000e+00, %1549
  %1552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %50, float %1550, float %1551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = fcmp fast ugt float %1553, 0.000000e+00
  br i1 %1554, label %1555, label %1858

; <label>:1555                                    ; preds = %1517
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 2
  %1558 = fmul fast float %1557, %1553
  %1559 = extractvalue %dx.types.CBufRet.f32 %1556, 3
  %1560 = fadd fast float %1559, %1558
  %1561 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1562 = fadd fast float %1560, %1529
  %1563 = fmul fast float %1535, %1523
  %1564 = call float @dx.op.tertiary.f32(i32 46, float %1538, float %1526, float %1563)  ; FMad(a,b,c)
  %1565 = call float @dx.op.tertiary.f32(i32 46, float %1562, float %1561, float %1564)  ; FMad(a,b,c)
  %1566 = fsub fast float %1565, %1529
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 2
  %1569 = fsub fast float %1566, %1568
  %1570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1550, float %1551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = extractvalue %dx.types.ResRet.f32 %1570, 1
  %1573 = extractvalue %dx.types.ResRet.f32 %1570, 2
  %1574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %1550, float %1551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  %1576 = extractvalue %dx.types.ResRet.f32 %1574, 1
  %1577 = extractvalue %dx.types.ResRet.f32 %1574, 2
  %1578 = fadd fast float %1575, %1571
  %1579 = fmul fast float %1578, 0x3F847AE140000000
  %1580 = fadd fast float %1576, %1572
  %1581 = fmul fast float %1580, 0x3F847AE140000000
  %1582 = fadd fast float %1577, %1573
  %1583 = fmul fast float %1582, 0x3F847AE140000000
  br label %1858

; <label>:1584                                    ; preds = %1426
  %1585 = and i32 %183, 1
  %1586 = icmp eq i32 %1585, 0
  br i1 %1586, label %1858, label %1587

; <label>:1587                                    ; preds = %1584
  %1588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1589 = extractvalue %dx.types.CBufRet.f32 %1588, 0
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 0
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.CBufRet.f32 %1588, 1
  %1595 = extractvalue %dx.types.CBufRet.f32 %1590, 1
  %1596 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1597 = extractvalue %dx.types.CBufRet.f32 %1588, 3
  %1598 = extractvalue %dx.types.CBufRet.f32 %1590, 3
  %1599 = extractvalue %dx.types.CBufRet.f32 %1592, 3
  %1600 = fadd fast float %1597, %1503
  %1601 = fadd fast float %1598, %1504
  %1602 = fadd fast float %1599, %1505
  %1603 = fmul fast float %1600, %1589
  %1604 = call float @dx.op.tertiary.f32(i32 46, float %1601, float %1591, float %1603)  ; FMad(a,b,c)
  %1605 = call float @dx.op.tertiary.f32(i32 46, float %1602, float %1593, float %1604)  ; FMad(a,b,c)
  %1606 = fmul fast float %1600, %1594
  %1607 = call float @dx.op.tertiary.f32(i32 46, float %1601, float %1595, float %1606)  ; FMad(a,b,c)
  %1608 = call float @dx.op.tertiary.f32(i32 46, float %1602, float %1596, float %1607)  ; FMad(a,b,c)
  %1609 = fsub fast float %1605, %1597
  %1610 = fsub fast float %1608, %1598
  %1611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1612 = extractvalue %dx.types.CBufRet.f32 %1611, 0
  %1613 = extractvalue %dx.types.CBufRet.f32 %1611, 1
  %1614 = extractvalue %dx.types.CBufRet.f32 %1611, 2
  %1615 = extractvalue %dx.types.CBufRet.f32 %1611, 3
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 3
  %1618 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.i32 %1618, 0
  %1620 = extractvalue %dx.types.CBufRet.i32 %1618, 1
  %1621 = udiv i32 %1620, %1619
  %1622 = fsub fast float %1609, %1612
  %1623 = fsub fast float %1610, %1613
  %1624 = call float @dx.op.binary.f32(i32 35, float %1622, float 0.000000e+00)  ; FMax(a,b)
  %1625 = call float @dx.op.binary.f32(i32 35, float %1623, float 0.000000e+00)  ; FMax(a,b)
  %1626 = call float @dx.op.binary.f32(i32 36, float %1624, float %1614)  ; FMin(a,b)
  %1627 = call float @dx.op.binary.f32(i32 36, float %1625, float %1615)  ; FMin(a,b)
  %1628 = add i32 %1619, -1
  %1629 = add i32 %1621, -1
  %1630 = fmul fast float %1626, %1617
  %1631 = fmul fast float %1627, %1617
  %1632 = fptoui float %1630 to i32
  %1633 = fptoui float %1631 to i32
  %1634 = call i32 @dx.op.binary.i32(i32 40, i32 %1632, i32 %1628)  ; UMin(a,b)
  %1635 = call i32 @dx.op.binary.i32(i32 40, i32 %1633, i32 %1629)  ; UMin(a,b)
  %1636 = mul i32 %1635, %1619
  %1637 = add i32 %1636, %1634
  %1638 = shl i32 %1637, 2
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = icmp eq i32 %1640, -1
  br i1 %1641, label %1858, label %1642

; <label>:1642                                    ; preds = %1587
  %1643 = mul i32 %1640, 148
  %1644 = add i32 %1643, 4
  %1645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1644, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.f32 %1645, 0
  %1647 = add i32 %1643, 8
  %1648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.f32 %1648, 0
  %1650 = add i32 %1643, 36
  %1651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.f32 %1651, 0
  %1653 = add i32 %1643, 60
  %1654 = add i32 %1643, 92
  %1655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.i32 %1655, 0
  %1657 = add i32 %1643, 116
  %1658 = fsub fast float %1609, %1646
  %1659 = fsub fast float %1610, %1649
  %1660 = fmul fast float %1617, %1658
  %1661 = fmul fast float %1617, %1659
  %1662 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1663 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  %1664 = fsub fast float 1.000000e+00, %1663
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 2
  %1667 = call float @dx.op.unary.f32(i32 83, float %1662)  ; DerivCoarseX(value)
  %1668 = call float @dx.op.unary.f32(i32 83, float %1664)  ; DerivCoarseX(value)
  %1669 = call float @dx.op.unary.f32(i32 84, float %1662)  ; DerivCoarseY(value)
  %1670 = call float @dx.op.unary.f32(i32 84, float %1664)  ; DerivCoarseY(value)
  %1671 = fmul fast float %1667, %1666
  %1672 = fmul fast float %1668, %1666
  %1673 = fmul fast float %1669, %1666
  %1674 = fmul fast float %1670, %1666
  %1675 = call float @dx.op.dot2.f32(i32 54, float %1673, float %1674, float %1673, float %1674)  ; Dot2(ax,ay,bx,by)
  %1676 = call float @dx.op.dot2.f32(i32 54, float %1671, float %1672, float %1671, float %1672)  ; Dot2(ax,ay,bx,by)
  %1677 = call float @dx.op.binary.f32(i32 35, float %1676, float %1675)  ; FMax(a,b)
  %1678 = call float @dx.op.unary.f32(i32 23, float %1677)  ; Log(value)
  %1679 = fmul fast float %1678, 5.000000e-01
  %1680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1681 = extractvalue %dx.types.CBufRet.f32 %1680, 1
  %1682 = fadd fast float %1681, %1679
  %1683 = call float @dx.op.binary.f32(i32 35, float %1682, float 0.000000e+00)  ; FMax(a,b)
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 3
  %1686 = fadd fast float %1685, %1683
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 3
  %1689 = fadd fast float %1686, %1688
  %1690 = add i32 %1656, 0
  %1691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1690, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1692 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1691, i32 0)  ; GetDimensions(handle,mipLevel)
  %1693 = extractvalue %dx.types.Dimensions %1692, 0
  %1694 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1693)  ; FirstbitLo(value)
  %1695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1696 = extractvalue %dx.types.CBufRet.i32 %1695, 1
  %1697 = sub nsw i32 %1696, %1694
  %1698 = sitofp i32 %1697 to float
  %1699 = fsub fast float %1689, %1698
  %1700 = call float @dx.op.binary.f32(i32 35, float %1699, float 0.000000e+00)  ; FMax(a,b)
  %1701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1691, %dx.types.Handle %48, float %1662, float %1664, float %1652, float undef, i32 0, i32 0, i32 undef, float %1700)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1702 = extractvalue %dx.types.ResRet.f32 %1701, 0
  %1703 = fcmp ule float %1702, 0x3FE0101020000000
  %1704 = extractvalue %dx.types.CBufRet.i32 %1695, 0
  %1705 = and i32 %1704, 128
  %1706 = icmp ne i32 %1705, 0
  %1707 = and i1 %1703, %1706
  br i1 %1707, label %1858, label %1708

; <label>:1708                                    ; preds = %1642
  %1709 = add i32 %1643, 20
  %1710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.f32 %1710, 0
  %1712 = add i32 %1643, 24
  %1713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.f32 %1713, 0
  %1715 = add i32 %1643, 40
  %1716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.f32 %1716, 0
  %1718 = add i32 %1643, 96
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1718, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 2
  %1723 = fmul fast float %1722, %1662
  %1724 = fmul fast float %1722, %1664
  %1725 = extractvalue %dx.types.CBufRet.f32 %1721, 3
  %1726 = fadd fast float %1723, %1725
  %1727 = fadd fast float %1724, %1725
  %1728 = add i32 %1720, 0
  %1729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1728, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1730 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1729, i32 0)  ; GetDimensions(handle,mipLevel)
  %1731 = extractvalue %dx.types.Dimensions %1730, 0
  %1732 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1731)  ; FirstbitLo(value)
  %1733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1734 = extractvalue %dx.types.CBufRet.i32 %1733, 1
  %1735 = sub nsw i32 %1734, %1732
  %1736 = sitofp i32 %1735 to float
  %1737 = fsub fast float %1686, %1736
  %1738 = call float @dx.op.binary.f32(i32 35, float %1737, float 0.000000e+00)  ; FMax(a,b)
  %1739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1729, %dx.types.Handle %48, float %1726, float %1727, float %1717, float undef, i32 0, i32 0, i32 undef, float %1738)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = fmul fast float %1740, %1711
  %1742 = fadd fast float %1741, %1714
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 0
  %1745 = extractvalue %dx.types.CBufRet.f32 %1743, 1
  %1746 = extractvalue %dx.types.CBufRet.f32 %1743, 2
  %1747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1748 = extractvalue %dx.types.CBufRet.f32 %1747, 3
  %1749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1749, 3
  %1751 = extractvalue %dx.types.CBufRet.f32 %1743, 3
  %1752 = fadd fast float %1748, %1609
  %1753 = fadd fast float %1750, %1610
  %1754 = fadd fast float %1742, %1751
  %1755 = fmul fast float %1752, %1744
  %1756 = call float @dx.op.tertiary.f32(i32 46, float %1753, float %1745, float %1755)  ; FMad(a,b,c)
  %1757 = call float @dx.op.tertiary.f32(i32 46, float %1754, float %1746, float %1756)  ; FMad(a,b,c)
  %1758 = fsub fast float %1757, %1751
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 2
  %1761 = fsub fast float %1758, %1760
  %1762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.i32 %1762, 0
  %1764 = call i32 @dx.op.binary.i32(i32 40, i32 %1640, i32 %1763)  ; UMin(a,b)
  %1765 = mul i32 %1764, 36
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = add i32 %1765, 4
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 0
  %1771 = fmul fast float %1770, %1662
  %1772 = fmul fast float %1770, %1664
  %1773 = extractvalue %dx.types.CBufRet.f32 %1769, 1
  %1774 = fadd fast float %1771, %1773
  %1775 = fadd fast float %1772, %1773
  %1776 = icmp eq i32 %1767, 0
  br i1 %1776, label %1845, label %1777

; <label>:1777                                    ; preds = %1708
  br label %1778

; <label>:1778                                    ; preds = %1835, %1777
  %1779 = phi float [ %1836, %1835 ], [ 0.000000e+00, %1777 ]
  %1780 = phi float [ %1837, %1835 ], [ 0.000000e+00, %1777 ]
  %1781 = phi float [ %1838, %1835 ], [ 0.000000e+00, %1777 ]
  %1782 = phi float [ %1839, %1835 ], [ 0.000000e+00, %1777 ]
  %1783 = phi float [ %1840, %1835 ], [ 0.000000e+00, %1777 ]
  %1784 = phi float [ %1841, %1835 ], [ 0.000000e+00, %1777 ]
  %1785 = phi i32 [ %1842, %1835 ], [ 0, %1777 ]
  %1786 = shl i32 %1785, 2
  %1787 = add i32 %1653, %1786
  %1788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = add i32 %1657, %1786
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = add i32 %1792, 0
  %1794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1793, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1795 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1794, i32 0)  ; GetDimensions(handle,mipLevel)
  %1796 = extractvalue %dx.types.Dimensions %1795, 0
  %1797 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1796)  ; FirstbitLo(value)
  %1798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.i32 %1798, 1
  %1800 = sub nsw i32 %1799, %1797
  %1801 = sitofp i32 %1800 to float
  %1802 = fsub fast float %1686, %1801
  %1803 = call float @dx.op.binary.f32(i32 35, float %1802, float 0.000000e+00)  ; FMax(a,b)
  %1804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1794, %dx.types.Handle %48, float %1774, float %1775, float %1789, float undef, i32 0, i32 0, i32 undef, float %1803)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1805 = extractvalue %dx.types.ResRet.f32 %1804, 0
  %1806 = fcmp fast ogt float %1805, 0.000000e+00
  br i1 %1806, label %1807, label %1835

; <label>:1807                                    ; preds = %1778
  %1808 = add i32 %1768, %1786
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = and i32 %1810, 32767
  %1812 = mul nuw nsw i32 %1811, 928
  %1813 = add nuw nsw i32 %1812, 48
  %1814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 0
  %1816 = extractvalue %dx.types.ResRet.f32 %1814, 1
  %1817 = extractvalue %dx.types.ResRet.f32 %1814, 2
  %1818 = add nuw nsw i32 %1812, 60
  %1819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.f32 %1819, 0
  %1821 = extractvalue %dx.types.ResRet.f32 %1819, 1
  %1822 = extractvalue %dx.types.ResRet.f32 %1819, 2
  %1823 = fmul fast float %1815, %1805
  %1824 = fmul fast float %1816, %1805
  %1825 = fmul fast float %1817, %1805
  %1826 = fadd fast float %1823, %1779
  %1827 = fadd fast float %1824, %1780
  %1828 = fadd fast float %1825, %1781
  %1829 = fmul fast float %1820, %1805
  %1830 = fmul fast float %1821, %1805
  %1831 = fmul fast float %1822, %1805
  %1832 = fadd fast float %1829, %1782
  %1833 = fadd fast float %1830, %1783
  %1834 = fadd fast float %1831, %1784
  br label %1835

; <label>:1835                                    ; preds = %1807, %1778
  %1836 = phi float [ %1826, %1807 ], [ %1779, %1778 ]
  %1837 = phi float [ %1827, %1807 ], [ %1780, %1778 ]
  %1838 = phi float [ %1828, %1807 ], [ %1781, %1778 ]
  %1839 = phi float [ %1832, %1807 ], [ %1782, %1778 ]
  %1840 = phi float [ %1833, %1807 ], [ %1783, %1778 ]
  %1841 = phi float [ %1834, %1807 ], [ %1784, %1778 ]
  %1842 = add nuw i32 %1785, 1
  %1843 = icmp eq i32 %1842, %1767
  br i1 %1843, label %1844, label %1778

; <label>:1844                                    ; preds = %1835
  br label %1845

; <label>:1845                                    ; preds = %1844, %1708
  %1846 = phi float [ 0.000000e+00, %1708 ], [ %1836, %1844 ]
  %1847 = phi float [ 0.000000e+00, %1708 ], [ %1837, %1844 ]
  %1848 = phi float [ 0.000000e+00, %1708 ], [ %1838, %1844 ]
  %1849 = phi float [ 0.000000e+00, %1708 ], [ %1839, %1844 ]
  %1850 = phi float [ 0.000000e+00, %1708 ], [ %1840, %1844 ]
  %1851 = phi float [ 0.000000e+00, %1708 ], [ %1841, %1844 ]
  %1852 = fadd fast float %1849, %1846
  %1853 = fmul fast float %1852, 0x3F847AE140000000
  %1854 = fadd fast float %1850, %1847
  %1855 = fmul fast float %1854, 0x3F847AE140000000
  %1856 = fadd fast float %1851, %1848
  %1857 = fmul fast float %1856, 0x3F847AE140000000
  br label %1858

; <label>:1858                                    ; preds = %1845, %1642, %1587, %1584, %1555, %1517
  %1859 = phi float [ %1569, %1555 ], [ -1.310720e+05, %1517 ], [ %1761, %1845 ], [ -1.310720e+05, %1587 ], [ -1.310720e+05, %1642 ], [ -1.310720e+05, %1584 ]
  %1860 = phi float [ %1579, %1555 ], [ 0.000000e+00, %1517 ], [ %1853, %1845 ], [ 0.000000e+00, %1587 ], [ 0.000000e+00, %1642 ], [ 0.000000e+00, %1584 ]
  %1861 = phi float [ %1581, %1555 ], [ 0.000000e+00, %1517 ], [ %1855, %1845 ], [ 0.000000e+00, %1587 ], [ 0.000000e+00, %1642 ], [ 0.000000e+00, %1584 ]
  %1862 = phi float [ %1583, %1555 ], [ 0.000000e+00, %1517 ], [ %1857, %1845 ], [ 0.000000e+00, %1587 ], [ 0.000000e+00, %1642 ], [ 0.000000e+00, %1584 ]
  %1863 = phi i1 [ true, %1555 ], [ false, %1517 ], [ true, %1845 ], [ false, %1587 ], [ false, %1642 ], [ false, %1584 ]
  %1864 = and i32 %183, 3
  %1865 = icmp eq i32 %1864, 1
  %1866 = select i1 %1865, float 1.000000e+00, float 0.000000e+00
  %1867 = fsub fast float %1859, %147
  %1868 = call float @dx.op.unary.f32(i32 7, float %1867)  ; Saturate(value)
  %1869 = select i1 %1863, float %1868, float 1.000000e+00
  %1870 = fmul fast float %1869, %1866
  %1871 = icmp eq i32 %1864, 3
  %1872 = select i1 %1871, float 1.000000e+00, float %1870
  %1873 = call float @dx.op.binary.f32(i32 35, float %1427, float %1872)  ; FMax(a,b)
  %1874 = call float @dx.op.unary.f32(i32 7, float %1873)  ; Saturate(value)
  %1875 = fcmp fast une float %1874, 0.000000e+00
  %1876 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %1877 = call float @dx.op.unary.f32(i32 25, float %1876)  ; Rsqrt(value)
  br i1 %1875, label %1885, label %1878

; <label>:1878                                    ; preds = %1858
  %1879 = fmul fast float %1877, %145
  %1880 = fmul fast float %1877, %146
  %1881 = fmul fast float %1877, %147
  %1882 = fsub fast float -0.000000e+00, %1879
  %1883 = fsub fast float -0.000000e+00, %1880
  %1884 = fsub fast float -0.000000e+00, %1881
  br label %2053

; <label>:1885                                    ; preds = %1858
  %1886 = fmul fast float %145, %1877
  %1887 = fsub fast float -0.000000e+00, %1886
  %1888 = fmul fast float %146, %1877
  %1889 = fsub fast float -0.000000e+00, %1888
  %1890 = fmul fast float %147, %1877
  %1891 = fsub fast float -0.000000e+00, %1890
  %1892 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1889, float %1891, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %1893 = fmul fast float %1874, 2.500000e+00
  %1894 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1895 = fmul fast float %1874, 0x4013FFFFE0000000
  %1896 = fadd fast float %1895, 0xBFFFFFFFE0000000
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = fmul fast float %1874, 0x4004000020000000
  %1899 = fadd fast float %1898, 0xBFF8000040000000
  %1900 = call float @dx.op.unary.f32(i32 7, float %1899)  ; Saturate(value)
  %1901 = call float @dx.op.unary.f32(i32 7, float %1894)  ; Saturate(value)
  %1902 = fmul fast float %1460, 1.000000e+01
  %1903 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  %1904 = fmul fast float %1903, 2.000000e+00
  %1905 = fsub fast float 3.000000e+00, %1904
  %1906 = fmul fast float %1903, %1903
  %1907 = fmul fast float %1906, %1905
  %1908 = fsub fast float 1.000000e+00, %1907
  %1909 = fsub fast float 0x3FE3333340000000, %1481
  %1910 = fmul fast float %1909, 0x400AAAAAA0000000
  %1911 = call float @dx.op.unary.f32(i32 7, float %1910)  ; Saturate(value)
  %1912 = fmul fast float %1908, %1911
  %1913 = fmul fast float %1496, 0x3FEA2B8620000000
  %1914 = fmul fast float %1497, 0x3FEA2B8620000000
  %1915 = fmul fast float %1498, 0x3FEA2B8620000000
  %1916 = fadd fast float %1913, 0x3FC81DFBA0000000
  %1917 = fmul fast float %1916, %1496
  %1918 = fadd fast float %1917, 0x3F910E6020000000
  %1919 = fadd fast float %1914, 0x3FC81DFBA0000000
  %1920 = fmul fast float %1919, %1497
  %1921 = fadd fast float %1920, 0x3F910E6020000000
  %1922 = fadd fast float %1915, 0x3FC81DFBA0000000
  %1923 = fmul fast float %1922, %1498
  %1924 = fadd fast float %1923, 0x3F910E6020000000
  %1925 = call float @dx.op.unary.f32(i32 7, float %1918)  ; Saturate(value)
  %1926 = call float @dx.op.unary.f32(i32 7, float %1921)  ; Saturate(value)
  %1927 = call float @dx.op.unary.f32(i32 7, float %1924)  ; Saturate(value)
  %1928 = fsub fast float %1925, %1496
  %1929 = fsub fast float %1926, %1497
  %1930 = fsub fast float %1927, %1498
  %1931 = fmul fast float %1928, %1901
  %1932 = fmul fast float %1931, %1912
  %1933 = fmul fast float %1929, %1901
  %1934 = fmul fast float %1933, %1912
  %1935 = fmul fast float %1930, %1901
  %1936 = fmul fast float %1935, %1912
  %1937 = fadd fast float %1932, %1496
  %1938 = fadd fast float %1934, %1497
  %1939 = fadd fast float %1936, %1498
  %1940 = fmul fast float %1441, %1441
  %1941 = fmul fast float %1940, %1940
  %1942 = fadd fast float %1897, 1.000000e+00
  %1943 = fsub fast float %1942, %1912
  %1944 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1945 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1946 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  %1947 = fsub fast float 1.000000e+00, %1941
  %1948 = call float @dx.op.binary.f32(i32 36, float %1944, float %1947)  ; FMin(a,b)
  %1949 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  %1950 = call float @dx.op.binary.f32(i32 35, float %1948, float %1949)  ; FMax(a,b)
  %1951 = fadd fast float %1946, 0xBFE4CCCCC0000000
  %1952 = fmul fast float %1951, 0x4006DB6DA0000000
  %1953 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %1954 = fmul fast float %1953, 2.000000e+00
  %1955 = fsub fast float 3.000000e+00, %1954
  %1956 = bitcast float %1478 to i32
  %1957 = ashr i32 %1956, 1
  %1958 = add nsw i32 %1957, 532487669
  %1959 = bitcast i32 %1958 to float
  %1960 = fsub fast float 1.000000e+00, %1959
  %1961 = bitcast float %1960 to i32
  %1962 = sub nsw i32 2129859010, %1961
  %1963 = bitcast i32 %1962 to float
  %1964 = fmul fast float %1963, 2.000000e+00
  %1965 = bitcast float %1479 to i32
  %1966 = ashr i32 %1965, 1
  %1967 = add nsw i32 %1966, 532487669
  %1968 = bitcast i32 %1967 to float
  %1969 = fsub fast float 1.000000e+00, %1968
  %1970 = bitcast float %1969 to i32
  %1971 = sub nsw i32 2129859010, %1970
  %1972 = bitcast i32 %1971 to float
  %1973 = fmul fast float %1972, 2.000000e+00
  %1974 = bitcast float %1480 to i32
  %1975 = ashr i32 %1974, 1
  %1976 = add nsw i32 %1975, 532487669
  %1977 = bitcast i32 %1976 to float
  %1978 = fsub fast float 1.000000e+00, %1977
  %1979 = bitcast float %1978 to i32
  %1980 = sub nsw i32 2129859010, %1979
  %1981 = bitcast i32 %1980 to float
  %1982 = fmul fast float %1981, 2.000000e+00
  %1983 = fsub fast float 0x4002A9FBE0000000, %1964
  %1984 = fadd fast float %1964, 0x3FD54FDF00000000
  %1985 = bitcast float %1984 to i32
  %1986 = sub nsw i32 2129859010, %1985
  %1987 = bitcast i32 %1986 to float
  %1988 = fmul fast float %1987, %1983
  %1989 = fmul fast float %1988, %1988
  %1990 = fsub fast float 0x4002A9FBE0000000, %1973
  %1991 = fadd fast float %1973, 0x3FD54FDF00000000
  %1992 = bitcast float %1991 to i32
  %1993 = sub nsw i32 2129859010, %1992
  %1994 = bitcast i32 %1993 to float
  %1995 = fmul fast float %1994, %1990
  %1996 = fmul fast float %1995, %1995
  %1997 = fsub fast float 0x4002A9FBE0000000, %1982
  %1998 = fadd fast float %1982, 0x3FD54FDF00000000
  %1999 = bitcast float %1998 to i32
  %2000 = sub nsw i32 2129859010, %1999
  %2001 = bitcast i32 %2000 to float
  %2002 = fmul fast float %2001, %1997
  %2003 = fmul fast float %2002, %2002
  %2004 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1989)  ; FMax(a,b)
  %2005 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1996)  ; FMax(a,b)
  %2006 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2003)  ; FMax(a,b)
  %2007 = fsub fast float 1.000000e+00, %1892
  %2008 = fadd fast float %2007, %1908
  %2009 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  %2010 = fsub fast float 1.000000e+00, %1872
  %2011 = fmul fast float %1950, %2010
  %2012 = fmul fast float %1953, %1953
  %2013 = fmul fast float %2012, %2011
  %2014 = fmul fast float %2013, %1955
  %2015 = fmul fast float %2010, 0xBFE99999A0000000
  %2016 = fmul fast float %2015, %1901
  %2017 = fmul fast float %2016, %1912
  %2018 = fadd fast float %2017, 1.000000e+00
  %2019 = fadd fast float %1481, -1.000000e+00
  %2020 = fmul fast float %2018, %2019
  %2021 = fadd fast float %2020, 1.000000e+00
  %2022 = fsub fast float %2004, %1478
  %2023 = fsub fast float %2005, %1479
  %2024 = fsub fast float %2006, %1480
  %2025 = fmul fast float %2014, %2022
  %2026 = fmul fast float %2014, %2023
  %2027 = fmul fast float %2014, %2024
  %2028 = fadd fast float %2025, %1478
  %2029 = fadd fast float %2026, %1479
  %2030 = fadd fast float %2027, %1480
  %2031 = fsub fast float %92, %1457
  %2032 = fsub fast float %93, %1458
  %2033 = fsub fast float %94, %1459
  %2034 = fmul fast float %2014, %2031
  %2035 = fmul fast float %2014, %2032
  %2036 = fmul fast float %2014, %2033
  %2037 = fadd fast float %2034, %1457
  %2038 = fadd fast float %2035, %1458
  %2039 = fadd fast float %2036, %1459
  %2040 = fmul fast float %2014, %2009
  %2041 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2042 = fsub fast float 1.000000e+00, %2041
  %2043 = fmul fast float %2040, %2042
  %2044 = fadd fast float %2043, %2041
  %2045 = fsub fast float 1.000000e+00, %1441
  %2046 = fmul fast float %2014, %2045
  %2047 = fadd fast float %2046, %1441
  %2048 = call float @dx.op.dot3.f32(i32 55, float %2037, float %2038, float %2039, float %2037, float %2038, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2049 = call float @dx.op.unary.f32(i32 25, float %2048)  ; Rsqrt(value)
  %2050 = fmul fast float %2037, %2049
  %2051 = fmul fast float %2038, %2049
  %2052 = fmul fast float %2039, %2049
  br label %2053

; <label>:2053                                    ; preds = %1885, %1878
  %2054 = phi float [ %1884, %1878 ], [ %1891, %1885 ]
  %2055 = phi float [ %1883, %1878 ], [ %1889, %1885 ]
  %2056 = phi float [ %1882, %1878 ], [ %1887, %1885 ]
  %2057 = phi float [ %1881, %1878 ], [ %1890, %1885 ]
  %2058 = phi float [ %1880, %1878 ], [ %1888, %1885 ]
  %2059 = phi float [ %1879, %1878 ], [ %1886, %1885 ]
  %2060 = phi float [ %1478, %1878 ], [ %2028, %1885 ]
  %2061 = phi float [ %1479, %1878 ], [ %2029, %1885 ]
  %2062 = phi float [ %1480, %1878 ], [ %2030, %1885 ]
  %2063 = phi float [ %1496, %1878 ], [ %1937, %1885 ]
  %2064 = phi float [ %1497, %1878 ], [ %1938, %1885 ]
  %2065 = phi float [ %1498, %1878 ], [ %1939, %1885 ]
  %2066 = phi float [ %1457, %1878 ], [ %2050, %1885 ]
  %2067 = phi float [ %1458, %1878 ], [ %2051, %1885 ]
  %2068 = phi float [ %1459, %1878 ], [ %2052, %1885 ]
  %2069 = phi float [ %1481, %1878 ], [ %2044, %1885 ]
  %2070 = phi float [ %1441, %1878 ], [ %2047, %1885 ]
  %2071 = fsub fast float -0.000000e+00, %147
  %2072 = select i1 %207, float 0.000000e+00, float %2062
  %2073 = call float @dx.op.dot3.f32(i32 55, float %2066, float %2067, float %2068, float %2056, float %2055, float %2054)  ; Dot3(ax,ay,az,bx,by,bz)
  %2074 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2075 = call float @dx.op.dot3.f32(i32 55, float %2059, float %2058, float %2057, float %2066, float %2067, float %2068)  ; Dot3(ax,ay,az,bx,by,bz)
  %2076 = fmul fast float %2075, 2.000000e+00
  %2077 = fmul fast float %2076, %2066
  %2078 = fmul fast float %2076, %2067
  %2079 = fmul fast float %2076, %2068
  %2080 = fsub fast float %2059, %2077
  %2081 = fsub fast float %2058, %2078
  %2082 = fsub fast float %2057, %2079
  %2083 = call float @dx.op.binary.f32(i32 36, float %2070, float 1.000000e+00)  ; FMin(a,b)
  %2084 = fsub fast float 1.000000e+00, %2083
  %2085 = bitcast float %2084 to i32
  %2086 = ashr i32 %2085, 1
  %2087 = add nsw i32 %2086, 532487669
  %2088 = bitcast i32 %2087 to float
  %2089 = fsub fast float 1.000000e+00, %2069
  %2090 = call float @dx.op.binary.f32(i32 35, float %2089, float 0x3F847AE140000000)  ; FMax(a,b)
  %2091 = fmul fast float %2090, %2090
  %2092 = fmul fast float %2091, %2091
  %2093 = call float @dx.op.unary.f32(i32 7, float %2074)  ; Saturate(value)
  %2094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %2088, float %2092, float %2093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = fsub fast float 1.000000e+00, %2070
  %2097 = bitcast float %2096 to i32
  %2098 = sub nsw i32 2129859010, %2097
  %2099 = bitcast i32 %2098 to float
  %2100 = fsub fast float 1.000000e+00, %61
  %2101 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %2102 = call float @dx.op.binary.f32(i32 35, float %2101, float 0x3FA99999A0000000)  ; FMax(a,b)
  %2103 = fdiv fast float %2100, %2102
  %2104 = call float @dx.op.dot3.f32(i32 55, float %2066, float %2067, float %2068, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  %2106 = fmul fast float %2105, 5.000000e-01
  %2107 = fadd fast float %2106, 5.000000e-01
  %2108 = fmul fast float %2107, %61
  %2109 = call float @dx.op.dot3.f32(i32 55, float %2066, float %2067, float %2068, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %2110 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2111 = fmul fast float %2110, %2103
  %2112 = fadd fast float %2108, %2111
  %2113 = fsub fast float 5.000000e-01, %2106
  %2114 = fmul fast float %2113, %2063
  %2115 = fmul fast float %2113, %2064
  %2116 = fmul fast float %2113, %2065
  %2117 = fadd fast float %2112, %2114
  %2118 = fadd fast float %2112, %2115
  %2119 = fadd fast float %2112, %2116
  %2120 = call float @dx.op.dot3.f32(i32 55, float %2080, float %2081, float %2082, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %2121 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  %2122 = fmul fast float %2121, 5.000000e-01
  %2123 = fadd fast float %2122, 5.000000e-01
  %2124 = fmul fast float %2123, %61
  %2125 = call float @dx.op.dot3.f32(i32 55, float %2080, float %2081, float %2082, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2127 = fmul fast float %2126, %2103
  %2128 = fadd fast float %2124, %2127
  %2129 = fsub fast float 5.000000e-01, %2122
  %2130 = fmul fast float %2129, %2063
  %2131 = fmul fast float %2129, %2064
  %2132 = fmul fast float %2129, %2065
  %2133 = fadd fast float %2128, %2130
  %2134 = fadd fast float %2128, %2131
  %2135 = fadd fast float %2128, %2132
  %2136 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = call float @dx.op.binary.f32(i32 36, float %2063, float %2138)  ; FMin(a,b)
  %2140 = fmul fast float %2139, %2084
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = bitcast float %2141 to i32
  %2143 = sub nsw i32 2129859010, %2142
  %2144 = bitcast i32 %2143 to float
  %2145 = call float @dx.op.binary.f32(i32 36, float %2064, float %2138)  ; FMin(a,b)
  %2146 = fmul fast float %2145, %2084
  %2147 = fsub fast float 1.000000e+00, %2146
  %2148 = bitcast float %2147 to i32
  %2149 = sub nsw i32 2129859010, %2148
  %2150 = bitcast i32 %2149 to float
  %2151 = call float @dx.op.binary.f32(i32 36, float %2065, float %2138)  ; FMin(a,b)
  %2152 = fmul fast float %2151, %2084
  %2153 = fsub fast float 1.000000e+00, %2152
  %2154 = bitcast float %2153 to i32
  %2155 = sub nsw i32 2129859010, %2154
  %2156 = bitcast i32 %2155 to float
  %2157 = fmul fast float %2083, %62
  %2158 = fmul fast float %2157, %2117
  %2159 = fmul fast float %2158, %2144
  %2160 = fmul fast float %2083, %63
  %2161 = fmul fast float %2160, %2118
  %2162 = fmul fast float %2161, %2150
  %2163 = fmul fast float %2083, %64
  %2164 = fmul fast float %2163, %2119
  %2165 = fmul fast float %2164, %2156
  %2166 = call float @dx.op.binary.f32(i32 36, float %2060, float %2138)  ; FMin(a,b)
  %2167 = fmul fast float %2166, %2084
  %2168 = fsub fast float 1.000000e+00, %2167
  %2169 = bitcast float %2168 to i32
  %2170 = sub nsw i32 2129859010, %2169
  %2171 = bitcast i32 %2170 to float
  %2172 = call float @dx.op.binary.f32(i32 36, float %2061, float %2138)  ; FMin(a,b)
  %2173 = fmul fast float %2172, %2084
  %2174 = fsub fast float 1.000000e+00, %2173
  %2175 = bitcast float %2174 to i32
  %2176 = sub nsw i32 2129859010, %2175
  %2177 = bitcast i32 %2176 to float
  %2178 = call float @dx.op.binary.f32(i32 36, float %2072, float %2138)  ; FMin(a,b)
  %2179 = fmul fast float %2178, %2084
  %2180 = fsub fast float 1.000000e+00, %2179
  %2181 = bitcast float %2180 to i32
  %2182 = sub nsw i32 2129859010, %2181
  %2183 = bitcast i32 %2182 to float
  %2184 = fmul fast float %2157, %2133
  %2185 = fmul fast float %2184, %2171
  %2186 = fmul fast float %2160, %2134
  %2187 = fmul fast float %2186, %2177
  %2188 = fmul fast float %2163, %2135
  %2189 = fmul fast float %2188, %2183
  %2190 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2162, float %2165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2191 = select i1 %207, float 0.000000e+00, float %2159
  %2192 = select i1 %207, float %2190, float %2162
  %2193 = select i1 %207, float 0.000000e+00, float %2165
  %2194 = call float @dx.op.dot3.f32(i32 55, float %2185, float %2187, float %2189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2195 = select i1 %207, float 0.000000e+00, float %2185
  %2196 = select i1 %207, float %2194, float %2187
  %2197 = select i1 %207, float 0.000000e+00, float %2189
  %2198 = fmul fast float %879, %879
  %2199 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2200 = fmul fast float %2074, 9.843750e-01
  %2201 = fmul fast float %2069, 9.843750e-01
  %2202 = fadd fast float %2200, 7.812500e-03
  %2203 = fadd fast float %2201, 7.812500e-03
  %2204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %2202, float %2203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2205 = extractvalue %dx.types.ResRet.f32 %2204, 0
  %2206 = extractvalue %dx.types.ResRet.f32 %2204, 1
  %2207 = extractvalue %dx.types.ResRet.f32 %2204, 2
  %2208 = extractvalue %dx.types.ResRet.f32 %2204, 3
  %2209 = fsub fast float 1.000000e+00, %2199
  %2210 = fsub fast float %2207, %2205
  %2211 = fsub fast float %2208, %2206
  %2212 = fmul fast float %2210, %2209
  %2213 = fmul fast float %2211, %2209
  %2214 = fadd fast float %2212, %2205
  %2215 = fadd fast float %2213, %2206
  %2216 = fmul fast float %2214, %2060
  %2217 = fmul fast float %2214, %2061
  %2218 = fmul fast float %2214, %2072
  %2219 = fadd fast float %2216, %2215
  %2220 = fadd fast float %2217, %2215
  %2221 = fadd fast float %2218, %2215
  %2222 = fcmp fast ogt float %1434, 0.000000e+00
  br i1 %2222, label %2223, label %2249

; <label>:2223                                    ; preds = %2053
  %2224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1434, float %2074, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2225 = extractvalue %dx.types.ResRet.f32 %2224, 0
  %2226 = extractvalue %dx.types.ResRet.f32 %2224, 1
  %2227 = extractvalue %dx.types.ResRet.f32 %2224, 2
  %2228 = fadd fast float %2225, -5.000000e-01
  %2229 = fadd fast float %2226, -5.000000e-01
  %2230 = fadd fast float %2227, -5.000000e-01
  %2231 = fsub fast float 1.000000e+00, %2060
  %2232 = fsub fast float 1.000000e+00, %2061
  %2233 = fsub fast float 1.000000e+00, %2072
  %2234 = fmul fast float %2060, 4.000000e+00
  %2235 = fmul fast float %2234, %2231
  %2236 = fmul fast float %2235, %2228
  %2237 = fmul fast float %2061, 4.000000e+00
  %2238 = fmul fast float %2237, %2232
  %2239 = fmul fast float %2238, %2229
  %2240 = fmul fast float %2072, 4.000000e+00
  %2241 = fmul fast float %2240, %2233
  %2242 = fmul fast float %2241, %2230
  %2243 = fadd fast float %2236, %2219
  %2244 = fadd fast float %2239, %2220
  %2245 = fadd fast float %2242, %2221
  %2246 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  %2247 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2248 = call float @dx.op.unary.f32(i32 7, float %2245)  ; Saturate(value)
  br label %2249

; <label>:2249                                    ; preds = %2223, %2053
  %2250 = phi float [ %2246, %2223 ], [ %2219, %2053 ]
  %2251 = phi float [ %2247, %2223 ], [ %2220, %2053 ]
  %2252 = phi float [ %2248, %2223 ], [ %2221, %2053 ]
  %2253 = call float @dx.op.binary.f32(i32 35, float %2251, float %2252)  ; FMax(a,b)
  %2254 = call float @dx.op.binary.f32(i32 35, float %2250, float %2253)  ; FMax(a,b)
  %2255 = fsub fast float 1.000000e+00, %2254
  %2256 = fmul fast float %2254, %2069
  %2257 = fadd fast float %2256, %2069
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 2
  %2260 = extractvalue %dx.types.CBufRet.f32 %2258, 3
  %2261 = fmul fast float %2257, %2259
  %2262 = fadd fast float %2261, %2260
  %2263 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2264 = fsub fast float 1.000000e+00, %2095
  %2265 = fadd fast float %2264, %2263
  %2266 = call float @dx.op.unary.f32(i32 7, float %2265)  ; Saturate(value)
  %2267 = fcmp fast olt float %2266, 1.000000e+00
  br i1 %2267, label %2268, label %2744

; <label>:2268                                    ; preds = %2249
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 2
  %2271 = extractvalue %dx.types.CBufRet.f32 %2269, 3
  %2272 = fmul fast float %2270, %89
  %2273 = fmul fast float %2271, %90
  %2274 = fptoui float %2272 to i32
  %2275 = fptoui float %2273 to i32
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 0
  %2278 = extractvalue %dx.types.CBufRet.f32 %2276, 2
  %2279 = extractvalue %dx.types.CBufRet.f32 %2276, 3
  %2280 = fadd fast float %77, -4.000000e+00
  %2281 = call float @dx.op.binary.f32(i32 35, float %2280, float 0.000000e+00)  ; FMax(a,b)
  %2282 = fadd fast float %2281, %2277
  %2283 = fmul fast float %2282, %2278
  %2284 = call float @dx.op.unary.f32(i32 23, float %2283)  ; Log(value)
  %2285 = fmul fast float %2284, %2279
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 2
  %2288 = fmul fast float %2285, %2287
  %2289 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.i32 %2290, 1
  %2292 = add i32 %2291, -1
  %2293 = uitofp i32 %2291 to float
  %2294 = fmul fast float %2293, %2289
  %2295 = fptoui float %2294 to i32
  %2296 = call i32 @dx.op.binary.i32(i32 40, i32 %2295, i32 %2292)  ; UMin(a,b)
  %2297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.i32 %2297, 2
  %2299 = extractvalue %dx.types.CBufRet.i32 %2297, 3
  %2300 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2275, i32 %2298, i32 %2274)  ; UMad(a,b,c)
  %2301 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2296, i32 %2299, i32 %2300)  ; UMad(a,b,c)
  %2302 = call float @dx.op.binary.f32(i32 35, float %77, float 0.000000e+00)  ; FMax(a,b)
  %2303 = fptoui float %2302 to i32
  %2304 = lshr i32 %2303, 5
  %2305 = call i32 @dx.op.binary.i32(i32 40, i32 %2304, i32 8191)  ; UMin(a,b)
  %2306 = fsub fast float %1859, %147
  %2307 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2308 = fcmp fast ogt float %2307, 0.000000e+00
  %2309 = fcmp fast ogt float %2082, 0.000000e+00
  %2310 = and i1 %2309, %2308
  br i1 %2310, label %2311, label %2340

; <label>:2311                                    ; preds = %2268
  %2312 = call float @dx.op.dot3.f32(i32 55, float %2080, float %2081, float %2082, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2313 = call float @dx.op.binary.f32(i32 35, float %2312, float -1.000000e+00)  ; FMax(a,b)
  %2314 = call float @dx.op.binary.f32(i32 36, float %2313, float 1.000000e+00)  ; FMin(a,b)
  %2315 = fmul fast float %2314, %2314
  %2316 = fsub fast float 1.000000e+00, %2315
  %2317 = fmul fast float %2316, 0x3FFC6E2300000000
  %2318 = fsub fast float 1.000000e+00, %2317
  %2319 = fcmp fast ogt float %2318, 0.000000e+00
  %2320 = call float @dx.op.unary.f32(i32 24, float %2318)  ; Sqrt(value)
  %2321 = fsub fast float 1.000000e+00, %2320
  %2322 = call float @dx.op.unary.f32(i32 23, float %2321)  ; Log(value)
  %2323 = fmul fast float %2322, 5.000000e+00
  %2324 = call float @dx.op.unary.f32(i32 21, float %2323)  ; Exp(value)
  %2325 = fmul fast float %2324, 0x3FEF591A60000000
  %2326 = fadd fast float %2325, 0x3F94DCB540000000
  %2327 = select i1 %2319, float %2326, float 1.000000e+00
  %2328 = fcmp fast oge float %2327, 1.000000e+00
  %2329 = fmul fast float %2312, 2.000000e+00
  %2330 = fadd fast float %2329, %2082
  %2331 = select i1 %2328, float %2330, float %2082
  %2332 = fsub fast float %2331, %2082
  %2333 = fmul fast float %2332, %2307
  %2334 = fadd fast float %2333, %2082
  %2335 = call float @dx.op.dot3.f32(i32 55, float %2080, float %2081, float %2334, float %2080, float %2081, float %2334)  ; Dot3(ax,ay,az,bx,by,bz)
  %2336 = call float @dx.op.unary.f32(i32 25, float %2335)  ; Rsqrt(value)
  %2337 = fmul fast float %2336, %2080
  %2338 = fmul fast float %2336, %2081
  %2339 = fmul fast float %2334, %2336
  br label %2340

; <label>:2340                                    ; preds = %2311, %2268
  %2341 = phi float [ %2337, %2311 ], [ %2080, %2268 ]
  %2342 = phi float [ %2338, %2311 ], [ %2081, %2268 ]
  %2343 = phi float [ %2339, %2311 ], [ %2082, %2268 ]
  %2344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.i32 %2344, 2
  %2346 = add nsw i32 %2345, -1
  %2347 = call i32 @dx.op.binary.i32(i32 37, i32 %2346, i32 0)  ; IMax(a,b)
  %2348 = shl i32 %2305, 2
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = lshr i32 %2350, 16
  %2352 = and i32 %2350, 65535
  %2353 = lshr i32 %2350, 21
  %2354 = lshr i32 %2352, 5
  %2355 = call i32 @dx.op.binary.i32(i32 40, i32 %2354, i32 %2347)  ; UMin(a,b)
  %2356 = icmp ugt i32 %2353, %2355
  br i1 %2356, label %2720, label %2357

; <label>:2357                                    ; preds = %2340
  br label %2358

; <label>:2358                                    ; preds = %2712, %2357
  %2359 = phi float [ %2713, %2712 ], [ 0.000000e+00, %2357 ]
  %2360 = phi float [ %2714, %2712 ], [ 0.000000e+00, %2357 ]
  %2361 = phi float [ %2715, %2712 ], [ 0.000000e+00, %2357 ]
  %2362 = phi float [ %2716, %2712 ], [ 1.000000e+00, %2357 ]
  %2363 = phi i32 [ %2717, %2712 ], [ %2353, %2357 ]
  %2364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.i32 %2364, 2
  %2366 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2301, i32 %2365, i32 %2363)  ; UMad(a,b,c)
  %2367 = shl i32 %2366, 2
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = shl i32 %2363, 5
  %2371 = sub nsw i32 %2351, %2370
  %2372 = call i32 @dx.op.binary.i32(i32 37, i32 %2371, i32 0)  ; IMax(a,b)
  %2373 = call i32 @dx.op.binary.i32(i32 38, i32 %2372, i32 31)  ; IMin(a,b)
  %2374 = sub nsw i32 1, %2351
  %2375 = add nsw i32 %2374, %2352
  %2376 = call i32 @dx.op.binary.i32(i32 37, i32 %2375, i32 0)  ; IMax(a,b)
  %2377 = call i32 @dx.op.binary.i32(i32 38, i32 %2376, i32 32)  ; IMin(a,b)
  %2378 = and i32 %2377, 31
  %2379 = shl i32 -1, %2378
  %2380 = xor i32 %2379, -1
  %2381 = and i32 %2373, 31
  %2382 = shl i32 %2380, %2381
  %2383 = icmp eq i32 %2377, 32
  %2384 = select i1 %2383, i32 -1, i32 %2382
  %2385 = and i32 %2384, %2369
  %2386 = icmp eq i32 %2385, 0
  br i1 %2386, label %2712, label %2387

; <label>:2387                                    ; preds = %2358
  br label %2388

; <label>:2388                                    ; preds = %2495, %2387
  %2389 = phi float [ %2496, %2495 ], [ %2359, %2387 ]
  %2390 = phi float [ %2497, %2495 ], [ %2360, %2387 ]
  %2391 = phi float [ %2498, %2495 ], [ %2361, %2387 ]
  %2392 = phi float [ %2499, %2495 ], [ %2362, %2387 ]
  %2393 = phi i32 [ %2398, %2495 ], [ %2385, %2387 ]
  %2394 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2393)  ; FirstbitLo(value)
  %2395 = add i32 %2394, %2370
  %2396 = and i32 %2394, 31
  %2397 = shl i32 1, %2396
  %2398 = xor i32 %2397, %2393
  %2399 = mul i32 %2395, 72
  %2400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.f32 %2400, 0
  %2402 = extractvalue %dx.types.ResRet.f32 %2400, 1
  %2403 = extractvalue %dx.types.ResRet.f32 %2400, 2
  %2404 = add i32 %2399, 12
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = add i32 %2399, 16
  %2408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.f32 %2408, 0
  %2410 = extractvalue %dx.types.ResRet.f32 %2408, 1
  %2411 = extractvalue %dx.types.ResRet.f32 %2408, 2
  %2412 = add i32 %2399, 28
  %2413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2412, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  %2415 = add i32 %2399, 32
  %2416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.f32 %2416, 0
  %2418 = extractvalue %dx.types.ResRet.f32 %2416, 1
  %2419 = extractvalue %dx.types.ResRet.f32 %2416, 2
  %2420 = extractvalue %dx.types.ResRet.f32 %2416, 3
  %2421 = add i32 %2399, 48
  %2422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2421, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.ResRet.f32 %2422, 1
  %2425 = add i32 %2399, 56
  %2426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.ResRet.f32 %2426, 1
  %2429 = add i32 %2399, 64
  %2430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.f32 %2430, 0
  %2432 = extractvalue %dx.types.ResRet.f32 %2430, 1
  %2433 = mul i32 %2395, 60
  %2434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.ResRet.f32 %2434, 1
  %2437 = extractvalue %dx.types.ResRet.f32 %2434, 2
  %2438 = add i32 %2433, 12
  %2439 = add i32 %2433, 48
  %2440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.f32 %2440, 0
  %2442 = extractvalue %dx.types.ResRet.f32 %2440, 1
  %2443 = extractvalue %dx.types.ResRet.f32 %2440, 2
  %2444 = and i32 %2406, 32767
  %2445 = bitcast float %2401 to i32
  %2446 = icmp eq i32 %2445, -1
  %2447 = bitcast float %2402 to i32
  %2448 = and i32 %2406, 32768
  %2449 = icmp ne i32 %2448, 0
  %2450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2451 = extractvalue %dx.types.CBufRet.f32 %2450, 0
  %2452 = extractvalue %dx.types.CBufRet.f32 %2450, 1
  %2453 = extractvalue %dx.types.CBufRet.f32 %2450, 2
  %2454 = fsub fast float %2435, %2451
  %2455 = fsub fast float %2436, %2452
  %2456 = fsub fast float %2437, %2453
  %2457 = fsub fast float %145, %2454
  %2458 = fsub fast float %146, %2455
  %2459 = fsub fast float %147, %2456
  %2460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2458, float %2459, float %2461, float %2462, float %2463)  ; Dot3(ax,ay,az,bx,by,bz)
  %2465 = add i32 %2433, 24
  %2466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2465, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.f32 %2466, 0
  %2468 = extractvalue %dx.types.ResRet.f32 %2466, 1
  %2469 = extractvalue %dx.types.ResRet.f32 %2466, 2
  %2470 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2458, float %2459, float %2467, float %2468, float %2469)  ; Dot3(ax,ay,az,bx,by,bz)
  %2471 = add i32 %2433, 36
  %2472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.f32 %2472, 0
  %2474 = extractvalue %dx.types.ResRet.f32 %2472, 1
  %2475 = extractvalue %dx.types.ResRet.f32 %2472, 2
  %2476 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2458, float %2459, float %2473, float %2474, float %2475)  ; Dot3(ax,ay,az,bx,by,bz)
  %2477 = call float @dx.op.unary.f32(i32 6, float %2464)  ; FAbs(value)
  %2478 = call float @dx.op.unary.f32(i32 6, float %2470)  ; FAbs(value)
  %2479 = call float @dx.op.unary.f32(i32 6, float %2476)  ; FAbs(value)
  %2480 = fsub fast float %2441, %2477
  %2481 = fsub fast float %2442, %2478
  %2482 = fsub fast float %2443, %2479
  %2483 = fmul fast float %2480, %2409
  %2484 = fmul fast float %2481, %2410
  %2485 = fmul fast float %2482, %2411
  %2486 = call float @dx.op.binary.f32(i32 36, float %2484, float %2485)  ; FMin(a,b)
  %2487 = call float @dx.op.binary.f32(i32 36, float %2483, float %2486)  ; FMin(a,b)
  %2488 = call float @dx.op.unary.f32(i32 7, float %2487)  ; Saturate(value)
  %2489 = call float @dx.op.binary.f32(i32 36, float %2392, float %2488)  ; FMin(a,b)
  %2490 = uitofp i1 %2449 to float
  %2491 = fadd fast float %2307, 1.000000e+00
  %2492 = fsub fast float %2491, %2490
  %2493 = fmul fast float %2489, %2492
  %2494 = fcmp fast ogt float %2493, 0.000000e+00
  br i1 %2494, label %2501, label %2495

; <label>:2495                                    ; preds = %2643, %2388
  %2496 = phi float [ %2707, %2643 ], [ %2389, %2388 ]
  %2497 = phi float [ %2708, %2643 ], [ %2390, %2388 ]
  %2498 = phi float [ %2709, %2643 ], [ %2391, %2388 ]
  %2499 = phi float [ %2710, %2643 ], [ %2392, %2388 ]
  %2500 = icmp eq i32 %2393, %2397
  br i1 %2500, label %2711, label %2388

; <label>:2501                                    ; preds = %2388
  br i1 %2446, label %2559, label %2502

; <label>:2502                                    ; preds = %2501
  %2503 = fsub fast float -0.000000e+00, %2461
  %2504 = fsub fast float -0.000000e+00, %2462
  %2505 = fsub fast float -0.000000e+00, %2463
  %2506 = call float @dx.op.dot3.f32(i32 55, float %2341, float %2342, float %2343, float %2503, float %2504, float %2505)  ; Dot3(ax,ay,az,bx,by,bz)
  %2507 = fsub fast float -0.000000e+00, %2506
  %2508 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2458, float %2459, float %2503, float %2504, float %2505)  ; Dot3(ax,ay,az,bx,by,bz)
  %2509 = fadd fast float %2508, %2424
  %2510 = fadd fast float %2423, %2508
  %2511 = fsub fast float -0.000000e+00, %2510
  %2512 = fcmp ogt float %2506, -0.000000e+00
  %2513 = select i1 %2512, float %2511, float %2509
  %2514 = call float @dx.op.unary.f32(i32 6, float %2507)  ; FAbs(value)
  %2515 = fdiv fast float 1.000000e+00, %2514
  %2516 = fmul fast float %2513, %2515
  %2517 = call float @dx.op.binary.f32(i32 35, float %2516, float 0.000000e+00)  ; FMax(a,b)
  %2518 = fsub fast float -0.000000e+00, %2467
  %2519 = fsub fast float -0.000000e+00, %2468
  %2520 = fsub fast float -0.000000e+00, %2469
  %2521 = call float @dx.op.dot3.f32(i32 55, float %2341, float %2342, float %2343, float %2518, float %2519, float %2520)  ; Dot3(ax,ay,az,bx,by,bz)
  %2522 = fsub fast float -0.000000e+00, %2521
  %2523 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2458, float %2459, float %2518, float %2519, float %2520)  ; Dot3(ax,ay,az,bx,by,bz)
  %2524 = fadd fast float %2523, %2428
  %2525 = fadd fast float %2427, %2523
  %2526 = fsub fast float -0.000000e+00, %2525
  %2527 = fcmp ogt float %2521, -0.000000e+00
  %2528 = select i1 %2527, float %2526, float %2524
  %2529 = call float @dx.op.unary.f32(i32 6, float %2522)  ; FAbs(value)
  %2530 = fdiv fast float 1.000000e+00, %2529
  %2531 = fmul fast float %2528, %2530
  %2532 = call float @dx.op.binary.f32(i32 35, float %2531, float 0.000000e+00)  ; FMax(a,b)
  %2533 = fsub fast float -0.000000e+00, %2473
  %2534 = fsub fast float -0.000000e+00, %2474
  %2535 = fsub fast float -0.000000e+00, %2475
  %2536 = call float @dx.op.dot3.f32(i32 55, float %2341, float %2342, float %2343, float %2533, float %2534, float %2535)  ; Dot3(ax,ay,az,bx,by,bz)
  %2537 = fsub fast float -0.000000e+00, %2536
  %2538 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2458, float %2459, float %2533, float %2534, float %2535)  ; Dot3(ax,ay,az,bx,by,bz)
  %2539 = fadd fast float %2538, %2432
  %2540 = fadd fast float %2431, %2538
  %2541 = fsub fast float -0.000000e+00, %2540
  %2542 = fcmp ogt float %2536, -0.000000e+00
  %2543 = select i1 %2542, float %2541, float %2539
  %2544 = call float @dx.op.unary.f32(i32 6, float %2537)  ; FAbs(value)
  %2545 = fdiv fast float 1.000000e+00, %2544
  %2546 = fmul fast float %2543, %2545
  %2547 = call float @dx.op.binary.f32(i32 35, float %2546, float 0.000000e+00)  ; FMax(a,b)
  %2548 = call float @dx.op.binary.f32(i32 36, float %2532, float %2547)  ; FMin(a,b)
  %2549 = call float @dx.op.binary.f32(i32 36, float %2517, float %2548)  ; FMin(a,b)
  %2550 = fmul fast float %2549, %2341
  %2551 = fmul fast float %2549, %2342
  %2552 = fmul fast float %2549, %2343
  %2553 = fadd fast float %2550, %145
  %2554 = fadd fast float %2551, %146
  %2555 = fadd fast float %2552, %147
  %2556 = fsub fast float %2553, %2401
  %2557 = fsub fast float %2554, %2402
  %2558 = fsub fast float %2555, %2403
  br label %2566

; <label>:2559                                    ; preds = %2501
  %2560 = fmul fast float %2341, 8.096000e+03
  %2561 = fmul fast float %2342, 8.096000e+03
  %2562 = fmul fast float %2343, 8.096000e+03
  %2563 = fadd fast float %2560, %145
  %2564 = fadd fast float %2561, %146
  %2565 = fadd fast float %2562, %147
  br label %2566

; <label>:2566                                    ; preds = %2559, %2502
  %2567 = phi float [ %2341, %2559 ], [ %2556, %2502 ]
  %2568 = phi float [ %2342, %2559 ], [ %2557, %2502 ]
  %2569 = phi float [ %2343, %2559 ], [ %2558, %2502 ]
  %2570 = phi float [ %2563, %2559 ], [ %2553, %2502 ]
  %2571 = phi float [ %2564, %2559 ], [ %2554, %2502 ]
  %2572 = phi float [ %2565, %2559 ], [ %2555, %2502 ]
  %2573 = fcmp fast olt float %2420, 1.000000e+00
  br i1 %2573, label %2574, label %2605, !dx.controlflow.hints !89

; <label>:2574                                    ; preds = %2566
  %2575 = fmul fast float %2569, %2418
  %2576 = fmul fast float %2568, %2419
  %2577 = fsub fast float %2575, %2576
  %2578 = fmul fast float %2567, %2419
  %2579 = fmul fast float %2569, %2417
  %2580 = fsub fast float %2578, %2579
  %2581 = fmul fast float %2568, %2417
  %2582 = fmul fast float %2567, %2418
  %2583 = fsub fast float %2581, %2582
  %2584 = fmul fast float %2577, 2.000000e+00
  %2585 = fmul fast float %2580, 2.000000e+00
  %2586 = fmul fast float %2583, 2.000000e+00
  %2587 = fmul fast float %2584, %2420
  %2588 = fmul fast float %2585, %2420
  %2589 = fmul fast float %2586, %2420
  %2590 = fmul fast float %2586, %2418
  %2591 = fmul fast float %2585, %2419
  %2592 = fmul fast float %2584, %2419
  %2593 = fmul fast float %2586, %2417
  %2594 = fmul fast float %2585, %2417
  %2595 = fmul fast float %2584, %2418
  %2596 = fadd fast float %2590, %2567
  %2597 = fadd fast float %2596, %2587
  %2598 = fsub fast float %2597, %2591
  %2599 = fsub fast float %2568, %2593
  %2600 = fadd fast float %2599, %2588
  %2601 = fadd fast float %2600, %2592
  %2602 = fadd fast float %2589, %2569
  %2603 = fsub fast float %2602, %2595
  %2604 = fadd fast float %2603, %2594
  br label %2605

; <label>:2605                                    ; preds = %2574, %2566
  %2606 = phi float [ %2598, %2574 ], [ %2567, %2566 ]
  %2607 = phi float [ %2601, %2574 ], [ %2568, %2566 ]
  %2608 = phi float [ %2604, %2574 ], [ %2569, %2566 ]
  br i1 %2446, label %2640, label %2609

; <label>:2609                                    ; preds = %2605
  %2610 = fmul fast float %2069, 0x400187C840000000
  %2611 = fadd fast float %2610, 0xC00EFC2120000000
  %2612 = fmul fast float %2611, %2069
  %2613 = fadd fast float %2612, 0x3FE5D16340000000
  %2614 = fmul fast float %2613, %2069
  %2615 = fadd fast float %2614, 1.000000e+00
  %2616 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2617 = fsub fast float %2570, %145
  %2618 = fsub fast float %2571, %146
  %2619 = fsub fast float %2572, %147
  %2620 = fsub fast float %2570, %2401
  %2621 = fsub fast float %2571, %2402
  %2622 = fsub fast float %2572, %2403
  %2623 = call float @dx.op.dot3.f32(i32 55, float %2617, float %2618, float %2619, float %2617, float %2618, float %2619)  ; Dot3(ax,ay,az,bx,by,bz)
  %2624 = call float @dx.op.dot3.f32(i32 55, float %2620, float %2621, float %2622, float %2620, float %2621, float %2622)  ; Dot3(ax,ay,az,bx,by,bz)
  %2625 = fadd fast float %2624, 0x3EE4F8B580000000
  %2626 = fdiv fast float %2623, %2625
  %2627 = bitcast float %2626 to i32
  %2628 = ashr i32 %2627, 1
  %2629 = add nsw i32 %2628, 532487669
  %2630 = bitcast i32 %2629 to float
  %2631 = fmul fast float %2630, %2616
  %2632 = call float @dx.op.unary.f32(i32 7, float %2631)  ; Saturate(value)
  %2633 = fmul fast float %2632, 0x4009981AE0000000
  %2634 = fsub fast float 0x40111BBD80000000, %2633
  %2635 = fmul fast float %2634, %2632
  %2636 = fadd fast float %2635, 0xC0009F6020000000
  %2637 = fmul fast float %2636, %2632
  %2638 = fadd fast float %2637, 1.000000e+00
  %2639 = call float @dx.op.unary.f32(i32 7, float %2638)  ; Saturate(value)
  br label %2643

; <label>:2640                                    ; preds = %2605
  %2641 = icmp ne i32 %2447, -1
  %2642 = zext i1 %2641 to i32
  br label %2643

; <label>:2643                                    ; preds = %2640, %2609
  %2644 = phi float [ %2069, %2640 ], [ %2639, %2609 ]
  %2645 = phi i32 [ %2642, %2640 ], [ 0, %2609 ]
  %2646 = fmul float %2644, 5.000000e+00
  %2647 = fsub float 5.000000e+00, %2646
  %2648 = icmp ne i32 %2645, 0
  %2649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2650 = extractvalue %dx.types.CBufRet.f32 %2649, 3
  %2651 = fadd fast float %2650, %2647
  %2652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2651)  ; FMax(a,b)
  %2653 = call float @dx.op.unary.f32(i32 6, float %2606)  ; FAbs(value)
  %2654 = call float @dx.op.unary.f32(i32 6, float %2607)  ; FAbs(value)
  %2655 = fadd fast float %2654, %2653
  %2656 = call float @dx.op.unary.f32(i32 6, float %2608)  ; FAbs(value)
  %2657 = fadd fast float %2655, %2656
  %2658 = fcmp fast oeq float %2657, 0.000000e+00
  %2659 = fdiv fast float 1.000000e+00, %2657
  %2660 = select i1 %2658, float 1.000000e+00, float %2659
  %2661 = fmul fast float %2660, %2606
  %2662 = fmul fast float %2660, %2607
  %2663 = call float @dx.op.unary.f32(i32 6, float %2662)  ; FAbs(value)
  %2664 = call float @dx.op.unary.f32(i32 6, float %2661)  ; FAbs(value)
  %2665 = fsub fast float 1.000000e+00, %2663
  %2666 = fsub fast float 1.000000e+00, %2664
  %2667 = fcmp fast oge float %2661, 0.000000e+00
  %2668 = fcmp fast oge float %2662, 0.000000e+00
  %2669 = select i1 %2667, float 1.000000e+00, float -1.000000e+00
  %2670 = select i1 %2668, float 1.000000e+00, float -1.000000e+00
  %2671 = fcmp fast ole float %2608, 0.000000e+00
  %2672 = fmul fast float %2669, %2665
  %2673 = fmul fast float %2670, %2666
  %2674 = select i1 %2671, float %2672, float %2661
  %2675 = select i1 %2671, float %2673, float %2662
  %2676 = fmul fast float %2674, 5.000000e-01
  %2677 = fmul fast float %2675, 5.000000e-01
  %2678 = fadd fast float %2676, 5.000000e-01
  %2679 = fadd fast float %2677, 5.000000e-01
  %2680 = uitofp i32 %2444 to float
  %2681 = call float @dx.op.binary.f32(i32 36, float %2652, float 3.000000e+00)  ; FMin(a,b)
  %2682 = fadd fast float %2681, 2.000000e+00
  %2683 = call float @dx.op.unary.f32(i32 21, float %2682)  ; Exp(value)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2649, 1
  %2685 = fmul fast float %2684, %2683
  %2686 = fmul fast float %2685, 2.000000e+00
  %2687 = fsub fast float 1.000000e+00, %2686
  %2688 = fmul fast float %2678, %2687
  %2689 = fmul fast float %2679, %2687
  %2690 = fadd fast float %2688, %2685
  %2691 = fadd fast float %2689, %2685
  %2692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %48, float %2690, float %2691, float %2680, float undef, i32 0, i32 0, i32 undef, float %2652)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2693 = extractvalue %dx.types.ResRet.f32 %2692, 0
  %2694 = extractvalue %dx.types.ResRet.f32 %2692, 1
  %2695 = extractvalue %dx.types.ResRet.f32 %2692, 2
  %2696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2697 = extractvalue %dx.types.CBufRet.f32 %2696, 3
  %2698 = fmul fast float %2697, %2414
  %2699 = call float @dx.op.binary.f32(i32 36, float %2136, float %2698)  ; FMin(a,b)
  %2700 = select i1 %2648, float %2699, float %2698
  %2701 = fmul fast float %2693, %2493
  %2702 = fmul fast float %2701, %2700
  %2703 = fmul fast float %2694, %2493
  %2704 = fmul fast float %2703, %2700
  %2705 = fmul fast float %2695, %2493
  %2706 = fmul fast float %2705, %2700
  %2707 = fadd fast float %2702, %2389
  %2708 = fadd fast float %2704, %2390
  %2709 = fadd fast float %2706, %2391
  %2710 = fsub fast float %2392, %2493
  br label %2495

; <label>:2711                                    ; preds = %2495
  br label %2712

; <label>:2712                                    ; preds = %2711, %2358
  %2713 = phi float [ %2359, %2358 ], [ %2496, %2711 ]
  %2714 = phi float [ %2360, %2358 ], [ %2497, %2711 ]
  %2715 = phi float [ %2361, %2358 ], [ %2498, %2711 ]
  %2716 = phi float [ %2362, %2358 ], [ %2499, %2711 ]
  %2717 = add i32 %2363, 1
  %2718 = icmp ugt i32 %2717, %2355
  br i1 %2718, label %2719, label %2358, !llvm.loop !90

; <label>:2719                                    ; preds = %2712
  br label %2720

; <label>:2720                                    ; preds = %2719, %2340
  %2721 = phi float [ 0.000000e+00, %2340 ], [ %2713, %2719 ]
  %2722 = phi float [ 0.000000e+00, %2340 ], [ %2714, %2719 ]
  %2723 = phi float [ 0.000000e+00, %2340 ], [ %2715, %2719 ]
  %2724 = call float @dx.op.dot3.f32(i32 55, float %2721, float %2722, float %2723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2725 = select i1 %207, float 0.000000e+00, float %2721
  %2726 = select i1 %207, float %2724, float %2722
  %2727 = select i1 %207, float 0.000000e+00, float %2723
  %2728 = fcmp fast olt float %2266, 0.000000e+00
  %2729 = call float @dx.op.unary.f32(i32 6, float %2266)  ; FAbs(value)
  %2730 = fmul fast float %2729, %2195
  %2731 = fmul fast float %2729, %2196
  %2732 = fmul fast float %2729, %2197
  %2733 = select i1 %2728, float %2195, float %2730
  %2734 = select i1 %2728, float %2196, float %2731
  %2735 = select i1 %2728, float %2197, float %2732
  %2736 = fsub fast float 1.000000e+00, %2729
  %2737 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2738 = fmul fast float %2737, %2725
  %2739 = fmul fast float %2737, %2726
  %2740 = fmul fast float %2737, %2727
  %2741 = fadd fast float %2733, %2738
  %2742 = fadd fast float %2734, %2739
  %2743 = fadd fast float %2735, %2740
  br label %2744

; <label>:2744                                    ; preds = %2720, %2249
  %2745 = phi float [ %2195, %2249 ], [ %2741, %2720 ]
  %2746 = phi float [ %2196, %2249 ], [ %2742, %2720 ]
  %2747 = phi float [ %2197, %2249 ], [ %2743, %2720 ]
  %2748 = fmul fast float %2255, %2191
  %2749 = fmul fast float %2255, %2192
  %2750 = fmul fast float %2255, %2193
  %2751 = call float @dx.op.dot3.f32(i32 55, float %2063, float %2064, float %2065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2752 = fcmp fast ogt float %2751, 0x3E7FF19E20000000
  %2753 = fdiv fast float 1.000000e+00, %2751
  %2754 = select i1 %2752, float %2753, float 0.000000e+00
  %2755 = fmul fast float %2754, %2063
  %2756 = fmul fast float %2754, %2064
  %2757 = fmul fast float %2754, %2065
  %2758 = fadd fast float %2755, -1.000000e+00
  %2759 = fadd fast float %2756, -1.000000e+00
  %2760 = fadd fast float %2757, -1.000000e+00
  %2761 = fmul fast float %2758, 5.000000e-01
  %2762 = fmul fast float %2759, 5.000000e-01
  %2763 = fmul fast float %2760, 5.000000e-01
  %2764 = fadd fast float %2761, 1.000000e+00
  %2765 = fadd fast float %2762, 1.000000e+00
  %2766 = fadd fast float %2763, 1.000000e+00
  %2767 = call float @dx.op.binary.f32(i32 35, float %2074, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2768 = fdiv fast float %879, %2767
  %2769 = fcmp fast olt float %1482, 1.270000e+02
  %2770 = fcmp fast olt float %1483, 1.270000e+02
  %2771 = fcmp fast olt float %1484, 1.270000e+02
  %2772 = fmul fast float %1482, 0xBFF7154760000000
  %2773 = fmul fast float %2772, %2768
  %2774 = fmul fast float %1483, 0xBFF7154760000000
  %2775 = fmul fast float %2774, %2768
  %2776 = fmul fast float %1484, 0xBFF7154760000000
  %2777 = fmul fast float %2776, %2768
  %2778 = call float @dx.op.unary.f32(i32 21, float %2773)  ; Exp(value)
  %2779 = call float @dx.op.unary.f32(i32 21, float %2775)  ; Exp(value)
  %2780 = call float @dx.op.unary.f32(i32 21, float %2777)  ; Exp(value)
  %2781 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  %2782 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2783 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  %2784 = select i1 %2769, float %2781, float 0.000000e+00
  %2785 = select i1 %2770, float %2782, float 0.000000e+00
  %2786 = select i1 %2771, float %2783, float 0.000000e+00
  %2787 = fmul fast float %2784, %2255
  %2788 = fmul fast float %2785, %2255
  %2789 = fmul fast float %2786, %2255
  %2790 = fadd fast float %2787, -1.000000e+00
  %2791 = fadd fast float %2788, -1.000000e+00
  %2792 = fadd fast float %2789, -1.000000e+00
  %2793 = fmul fast float %2745, %2250
  %2794 = fmul fast float %2746, %2251
  %2795 = fmul fast float %2747, %2252
  %2796 = fsub fast float 1.000000e+00, %2074
  %2797 = bitcast float %2796 to i32
  %2798 = sitofp i32 %2797 to float
  %2799 = fmul fast float %2798, 5.000000e+00
  %2800 = fadd fast float %2799, 0xC1EFBF8940000000
  %2801 = fptosi float %2800 to i32
  %2802 = bitcast i32 %2801 to float
  %2803 = fmul fast float %2802, %1433
  %2804 = fmul fast float %2191, %2803
  %2805 = fmul fast float %2804, %2255
  %2806 = fmul fast float %2805, %2764
  %2807 = fmul fast float %2192, %2803
  %2808 = fmul fast float %2807, %2255
  %2809 = fmul fast float %2808, %2765
  %2810 = fmul fast float %2193, %2803
  %2811 = fmul fast float %2810, %2255
  %2812 = fmul fast float %2811, %2766
  %2813 = fmul fast float %2748, %1454
  %2814 = fmul fast float %2749, %1454
  %2815 = fmul fast float %2750, %1454
  %2816 = fadd fast float %2793, %1435
  %2817 = fadd fast float %2816, %2806
  %2818 = fmul fast float %2817, %1454
  %2819 = fadd fast float %2794, %1436
  %2820 = fadd fast float %2819, %2809
  %2821 = fmul fast float %2820, %1454
  %2822 = fadd fast float %2795, %1437
  %2823 = fadd fast float %2822, %2812
  %2824 = fmul fast float %2823, %1454
  %2825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2826 = extractvalue %dx.types.CBufRet.f32 %2825, 3
  %2827 = fcmp fast oeq float %2826, 0.000000e+00
  br i1 %2827, label %4381, label %2828

; <label>:2828                                    ; preds = %2744
  %2829 = extractvalue %dx.types.CBufRet.f32 %2825, 0
  %2830 = extractvalue %dx.types.CBufRet.f32 %2825, 1
  %2831 = extractvalue %dx.types.CBufRet.f32 %2825, 2
  %2832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2833 = extractvalue %dx.types.CBufRet.f32 %2832, 0
  %2834 = extractvalue %dx.types.CBufRet.f32 %2832, 1
  %2835 = extractvalue %dx.types.CBufRet.f32 %2832, 2
  %2836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2837 = extractvalue %dx.types.CBufRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.CBufRet.f32 %2836, 1
  %2839 = call float @dx.op.dot3.f32(i32 55, float %2833, float %2834, float %2835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2840 = select i1 %207, float %2837, float %2833
  %2841 = select i1 %207, float %2839, float %2834
  %2842 = select i1 %207, float %2838, float %2835
  %2843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2844 = extractvalue %dx.types.CBufRet.f32 %2843, 2
  %2845 = fmul fast float %2844, %92
  %2846 = fmul fast float %2844, %93
  %2847 = fmul fast float %2844, %94
  %2848 = fadd fast float %2845, %145
  %2849 = fadd fast float %2846, %146
  %2850 = fadd fast float %2847, %147
  %2851 = fcmp fast olt float %2826, 0.000000e+00
  br i1 %2851, label %3947, label %2852

; <label>:2852                                    ; preds = %2828
  %2853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2854 = extractvalue %dx.types.CBufRet.f32 %2853, 0
  %2855 = extractvalue %dx.types.CBufRet.f32 %2853, 1
  %2856 = extractvalue %dx.types.CBufRet.f32 %2853, 2
  %2857 = extractvalue %dx.types.CBufRet.f32 %2853, 3
  %2858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2859 = extractvalue %dx.types.CBufRet.f32 %2858, 0
  %2860 = extractvalue %dx.types.CBufRet.f32 %2858, 1
  %2861 = extractvalue %dx.types.CBufRet.f32 %2858, 2
  %2862 = extractvalue %dx.types.CBufRet.f32 %2858, 3
  %2863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2864 = extractvalue %dx.types.CBufRet.f32 %2863, 0
  %2865 = extractvalue %dx.types.CBufRet.f32 %2863, 1
  %2866 = extractvalue %dx.types.CBufRet.f32 %2863, 2
  %2867 = extractvalue %dx.types.CBufRet.f32 %2863, 3
  %2868 = fmul fast float %2854, %2848
  %2869 = call float @dx.op.tertiary.f32(i32 46, float %2849, float %2855, float %2868)  ; FMad(a,b,c)
  %2870 = call float @dx.op.tertiary.f32(i32 46, float %2850, float %2856, float %2869)  ; FMad(a,b,c)
  %2871 = fadd fast float %2870, %2857
  %2872 = fmul fast float %2859, %2848
  %2873 = call float @dx.op.tertiary.f32(i32 46, float %2849, float %2860, float %2872)  ; FMad(a,b,c)
  %2874 = call float @dx.op.tertiary.f32(i32 46, float %2850, float %2861, float %2873)  ; FMad(a,b,c)
  %2875 = fadd fast float %2874, %2862
  %2876 = fmul fast float %2864, %2848
  %2877 = call float @dx.op.tertiary.f32(i32 46, float %2849, float %2865, float %2876)  ; FMad(a,b,c)
  %2878 = call float @dx.op.tertiary.f32(i32 46, float %2850, float %2866, float %2877)  ; FMad(a,b,c)
  %2879 = fadd fast float %2878, %2867
  %2880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2881 = extractvalue %dx.types.CBufRet.f32 %2880, 0
  %2882 = extractvalue %dx.types.CBufRet.f32 %2880, 1
  %2883 = extractvalue %dx.types.CBufRet.f32 %2880, 3
  %2884 = fmul fast float %2883, %2871
  %2885 = fmul fast float %2883, %2875
  %2886 = fadd fast float %2884, %2881
  %2887 = fadd fast float %2885, %2882
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 0
  %2890 = extractvalue %dx.types.CBufRet.f32 %2888, 1
  %2891 = extractvalue %dx.types.CBufRet.f32 %2888, 3
  %2892 = fmul fast float %2891, %2871
  %2893 = fmul fast float %2891, %2875
  %2894 = fadd fast float %2892, %2889
  %2895 = fadd fast float %2893, %2890
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 1
  %2898 = fsub fast float %2897, %2879
  %2899 = extractvalue %dx.types.CBufRet.f32 %2896, 2
  %2900 = fmul fast float %2898, %2899
  %2901 = fsub fast float 1.000000e+00, %2900
  %2902 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  %2903 = extractvalue %dx.types.CBufRet.f32 %2888, 2
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 2
  %2906 = fadd fast float %2905, %2903
  %2907 = fcmp fast ogt float %2906, 0.000000e+00
  br i1 %2907, label %2908, label %2932

; <label>:2908                                    ; preds = %2852
  %2909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2910 = extractvalue %dx.types.CBufRet.f32 %2909, 0
  %2911 = extractvalue %dx.types.CBufRet.f32 %2909, 1
  %2912 = fsub fast float %2894, %2910
  %2913 = fsub fast float %2895, %2911
  %2914 = fcmp fast olt float %2912, 0.000000e+00
  %2915 = fcmp fast olt float %2913, 0.000000e+00
  %2916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.f32 %2916, 0
  %2918 = extractvalue %dx.types.CBufRet.f32 %2916, 1
  %2919 = extractvalue %dx.types.CBufRet.f32 %2916, 2
  %2920 = extractvalue %dx.types.CBufRet.f32 %2916, 3
  %2921 = select i1 %2914, float %2917, float %2919
  %2922 = select i1 %2915, float %2918, float %2920
  %2923 = fmul fast float %2921, %2912
  %2924 = fmul fast float %2922, %2913
  %2925 = call float @dx.op.unary.f32(i32 6, float %2923)  ; FAbs(value)
  %2926 = call float @dx.op.unary.f32(i32 6, float %2924)  ; FAbs(value)
  %2927 = extractvalue %dx.types.CBufRet.f32 %2843, 0
  %2928 = call float @dx.op.binary.f32(i32 35, float %2925, float %2926)  ; FMax(a,b)
  %2929 = fsub fast float %2927, %2928
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = fmul fast float %2930, %2902
  br label %2932

; <label>:2932                                    ; preds = %2908, %2852
  %2933 = phi float [ %2931, %2908 ], [ 0.000000e+00, %2852 ]
  %2934 = extractvalue %dx.types.CBufRet.f32 %2880, 2
  %2935 = extractvalue %dx.types.CBufRet.f32 %2904, 1
  %2936 = fadd fast float %2935, %2934
  %2937 = fcmp fast ogt float %2936, 0.000000e+00
  %2938 = extractvalue %dx.types.CBufRet.f32 %2843, 0
  br i1 %2937, label %2939, label %2962

; <label>:2939                                    ; preds = %2932
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2940, 1
  %2943 = fsub fast float %2886, %2941
  %2944 = fsub fast float %2887, %2942
  %2945 = fcmp fast olt float %2943, 0.000000e+00
  %2946 = fcmp fast olt float %2944, 0.000000e+00
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.CBufRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.CBufRet.f32 %2947, 2
  %2951 = extractvalue %dx.types.CBufRet.f32 %2947, 3
  %2952 = select i1 %2945, float %2948, float %2950
  %2953 = select i1 %2946, float %2949, float %2951
  %2954 = fmul fast float %2952, %2943
  %2955 = fmul fast float %2953, %2944
  %2956 = call float @dx.op.unary.f32(i32 6, float %2954)  ; FAbs(value)
  %2957 = call float @dx.op.unary.f32(i32 6, float %2955)  ; FAbs(value)
  %2958 = call float @dx.op.binary.f32(i32 35, float %2956, float %2957)  ; FMax(a,b)
  %2959 = fsub fast float %2938, %2958
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2961 = fmul fast float %2960, %2902
  br label %2962

; <label>:2962                                    ; preds = %2939, %2932
  %2963 = phi float [ %2961, %2939 ], [ 0.000000e+00, %2932 ]
  %2964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2965 = extractvalue %dx.types.CBufRet.f32 %2964, 1
  %2966 = call float @dx.op.unary.f32(i32 7, float %2965)  ; Saturate(value)
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.CBufRet.f32 %2967, 1
  %2970 = fsub fast float %2871, %2968
  %2971 = fsub fast float %2875, %2969
  %2972 = fcmp fast olt float %2970, 0.000000e+00
  %2973 = fcmp fast olt float %2971, 0.000000e+00
  %2974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2975 = extractvalue %dx.types.CBufRet.f32 %2974, 0
  %2976 = extractvalue %dx.types.CBufRet.f32 %2974, 1
  %2977 = extractvalue %dx.types.CBufRet.f32 %2974, 2
  %2978 = extractvalue %dx.types.CBufRet.f32 %2974, 3
  %2979 = select i1 %2972, float %2975, float %2977
  %2980 = select i1 %2973, float %2976, float %2978
  %2981 = fmul fast float %2979, %2970
  %2982 = fmul fast float %2980, %2971
  %2983 = call float @dx.op.unary.f32(i32 6, float %2981)  ; FAbs(value)
  %2984 = call float @dx.op.unary.f32(i32 6, float %2982)  ; FAbs(value)
  %2985 = call float @dx.op.binary.f32(i32 35, float %2983, float %2984)  ; FMax(a,b)
  %2986 = fsub fast float %2938, %2985
  %2987 = call float @dx.op.unary.f32(i32 7, float %2986)  ; Saturate(value)
  %2988 = call float @dx.op.binary.f32(i32 36, float %2987, float %2966)  ; FMin(a,b)
  %2989 = fmul fast float %2988, %2902
  %2990 = fsub fast float %2963, %2989
  %2991 = fsub fast float %2933, %2963
  %2992 = fsub fast float %2991, %2989
  %2993 = call float @dx.op.binary.f32(i32 35, float %2963, float %2933)  ; FMax(a,b)
  %2994 = call float @dx.op.binary.f32(i32 35, float %2989, float %2993)  ; FMax(a,b)
  %2995 = fcmp fast olt float %2994, 1.000000e+00
  br i1 %2995, label %2996, label %3394, !dx.controlflow.hints !92

; <label>:2996                                    ; preds = %2962
  %2997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2998 = extractvalue %dx.types.CBufRet.f32 %2997, 0
  %2999 = fcmp fast une float %2998, 0.000000e+00
  br i1 %2999, label %3000, label %3394, !dx.controlflow.hints !93

; <label>:3000                                    ; preds = %2996
  %3001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3002 = extractvalue %dx.types.CBufRet.f32 %3001, 0
  %3003 = extractvalue %dx.types.CBufRet.f32 %3001, 1
  %3004 = extractvalue %dx.types.CBufRet.f32 %3001, 2
  %3005 = extractvalue %dx.types.CBufRet.f32 %3001, 3
  %3006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3007 = extractvalue %dx.types.CBufRet.f32 %3006, 0
  %3008 = extractvalue %dx.types.CBufRet.f32 %3006, 1
  %3009 = extractvalue %dx.types.CBufRet.f32 %3006, 2
  %3010 = extractvalue %dx.types.CBufRet.f32 %3006, 3
  %3011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3012 = extractvalue %dx.types.CBufRet.f32 %3011, 0
  %3013 = extractvalue %dx.types.CBufRet.f32 %3011, 1
  %3014 = extractvalue %dx.types.CBufRet.f32 %3011, 2
  %3015 = extractvalue %dx.types.CBufRet.f32 %3011, 3
  %3016 = fmul fast float %3002, %2848
  %3017 = call float @dx.op.tertiary.f32(i32 46, float %2849, float %3003, float %3016)  ; FMad(a,b,c)
  %3018 = call float @dx.op.tertiary.f32(i32 46, float %2850, float %3004, float %3017)  ; FMad(a,b,c)
  %3019 = fadd fast float %3018, %3005
  %3020 = fmul fast float %3007, %2848
  %3021 = call float @dx.op.tertiary.f32(i32 46, float %2849, float %3008, float %3020)  ; FMad(a,b,c)
  %3022 = call float @dx.op.tertiary.f32(i32 46, float %2850, float %3009, float %3021)  ; FMad(a,b,c)
  %3023 = fadd fast float %3022, %3010
  %3024 = fmul fast float %3012, %2848
  %3025 = call float @dx.op.tertiary.f32(i32 46, float %2849, float %3013, float %3024)  ; FMad(a,b,c)
  %3026 = call float @dx.op.tertiary.f32(i32 46, float %2850, float %3014, float %3025)  ; FMad(a,b,c)
  %3027 = fadd fast float %3026, %3015
  %3028 = fcmp fast oge float %3019, 1.000000e+00
  %3029 = fcmp fast oge float %3023, 1.000000e+00
  %3030 = or i1 %3028, %3029
  %3031 = fcmp fast olt float %3019, 0.000000e+00
  %3032 = fcmp fast olt float %3023, 0.000000e+00
  %3033 = or i1 %3031, %3032
  %3034 = or i1 %3030, %3033
  br i1 %3034, label %3394, label %3035, !dx.controlflow.hints !94

; <label>:3035                                    ; preds = %3000
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 0
  %3038 = extractvalue %dx.types.CBufRet.f32 %3036, 1
  %3039 = extractvalue %dx.types.CBufRet.f32 %3036, 2
  %3040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.i32 %3040, 2
  %3042 = uitofp i32 %3041 to float
  %3043 = extractvalue %dx.types.CBufRet.i32 %3040, 3
  %3044 = uitofp i32 %3043 to float
  %3045 = extractvalue %dx.types.CBufRet.f32 %3036, 3
  %3046 = fmul fast float %3045, 2.000000e+00
  %3047 = fsub fast float %3019, %3037
  %3048 = fsub fast float %3023, %3038
  %3049 = fmul fast float %3046, %3047
  %3050 = fmul fast float %3046, %3048
  %3051 = fdiv fast float 1.000000e+00, %2831
  %3052 = fmul fast float %3050, %3051
  %3053 = call float @dx.op.unary.f32(i32 6, float %3052)  ; FAbs(value)
  %3054 = fmul fast float %3039, %2850
  %3055 = fmul fast float %3054, %3046
  %3056 = call float @dx.op.unary.f32(i32 6, float %3055)  ; FAbs(value)
  %3057 = call float @dx.op.unary.f32(i32 6, float %3049)  ; FAbs(value)
  %3058 = call float @dx.op.binary.f32(i32 35, float %3056, float %3053)  ; FMax(a,b)
  %3059 = call float @dx.op.binary.f32(i32 35, float %3057, float %3058)  ; FMax(a,b)
  %3060 = fmul fast float %3059, 2.000000e+00
  %3061 = call float @dx.op.unary.f32(i32 23, float %3060)  ; Log(value)
  %3062 = call float @dx.op.binary.f32(i32 35, float %3061, float %3042)  ; FMax(a,b)
  %3063 = call float @dx.op.unary.f32(i32 22, float %3062)  ; Frc(value)
  %3064 = fadd fast float %3063, 0xBFEA666660000000
  %3065 = fmul fast float %3064, 8.000000e+00
  %3066 = call float @dx.op.unary.f32(i32 7, float %3065)  ; Saturate(value)
  %3067 = call float @dx.op.unary.f32(i32 27, float %3062)  ; Round_ni(value)
  %3068 = fadd fast float %3067, %3066
  %3069 = call float @dx.op.binary.f32(i32 36, float %3068, float %3044)  ; FMin(a,b)
  %3070 = call float @dx.op.unary.f32(i32 27, float %3069)  ; Round_ni(value)
  %3071 = fsub fast float -0.000000e+00, %3070
  %3072 = call float @dx.op.unary.f32(i32 21, float %3071)  ; Exp(value)
  %3073 = fmul fast float %3072, %3046
  %3074 = fmul fast float %3073, %3019
  %3075 = fmul fast float %3073, %3023
  %3076 = fmul fast float %3074, 2.500000e-01
  %3077 = fmul fast float %3075, 2.500000e-01
  %3078 = fadd fast float %3076, 5.000000e-01
  %3079 = fadd fast float %3077, 5.000000e-01
  %3080 = fsub fast float %3044, %3042
  %3081 = fptoui float %3080 to i32
  %3082 = add i32 %3081, 320
  %3083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %3082)  ; CBufferLoadLegacy(handle,regIndex)
  %3084 = extractvalue %dx.types.CBufRet.f32 %3083, 0
  %3085 = extractvalue %dx.types.CBufRet.f32 %3083, 1
  %3086 = fcmp fast une float %3069, %3044
  %3087 = fsub fast float %3019, %3084
  %3088 = fsub fast float %3023, %3085
  %3089 = call float @dx.op.unary.f32(i32 6, float %3087)  ; FAbs(value)
  %3090 = call float @dx.op.unary.f32(i32 6, float %3088)  ; FAbs(value)
  %3091 = fmul fast float %3089, %3073
  %3092 = fmul fast float %3090, %3073
  %3093 = fcmp fast olt float %3091, 1.000000e+00
  %3094 = fcmp fast olt float %3092, 1.000000e+00
  %3095 = and i1 %3093, %3094
  %3096 = or i1 %3086, %3095
  br i1 %3096, label %3097, label %3394, !dx.controlflow.hints !95

; <label>:3097                                    ; preds = %3035
  %3098 = fmul fast float %3075, 5.000000e-01
  %3099 = fmul fast float %3074, 5.000000e-01
  %3100 = fadd fast float %3098, 5.000000e-01
  %3101 = fadd fast float %3099, 5.000000e-01
  %3102 = sitofp i32 %3041 to float
  %3103 = fsub fast float %3069, %3102
  %3104 = call float @dx.op.unary.f32(i32 27, float %3103)  ; Round_ni(value)
  %3105 = call float @dx.op.unary.f32(i32 22, float %3069)  ; Frc(value)
  %3106 = call float @dx.op.unary.f32(i32 22, float %3101)  ; Frc(value)
  %3107 = call float @dx.op.unary.f32(i32 22, float %3100)  ; Frc(value)
  %3108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3106, float %3107, float %3104, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3109 = extractvalue %dx.types.ResRet.f32 %3108, 0
  %3110 = extractvalue %dx.types.ResRet.f32 %3108, 1
  %3111 = extractvalue %dx.types.ResRet.f32 %3108, 2
  %3112 = extractvalue %dx.types.ResRet.f32 %3108, 3
  %3113 = fcmp fast ogt float %3105, 0.000000e+00
  br i1 %3113, label %3114, label %3135, !dx.controlflow.hints !96

; <label>:3114                                    ; preds = %3097
  %3115 = fadd fast float %3104, 1.000000e+00
  %3116 = call float @dx.op.unary.f32(i32 22, float %3078)  ; Frc(value)
  %3117 = call float @dx.op.unary.f32(i32 22, float %3079)  ; Frc(value)
  %3118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3116, float %3117, float %3115, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3119 = extractvalue %dx.types.ResRet.f32 %3118, 0
  %3120 = extractvalue %dx.types.ResRet.f32 %3118, 1
  %3121 = extractvalue %dx.types.ResRet.f32 %3118, 2
  %3122 = extractvalue %dx.types.ResRet.f32 %3118, 3
  %3123 = fsub fast float %3119, %3109
  %3124 = fsub fast float %3120, %3110
  %3125 = fsub fast float %3121, %3111
  %3126 = fsub fast float %3122, %3112
  %3127 = fmul fast float %3123, %3105
  %3128 = fmul fast float %3124, %3105
  %3129 = fmul fast float %3125, %3105
  %3130 = fmul fast float %3126, %3105
  %3131 = fadd fast float %3127, %3109
  %3132 = fadd fast float %3128, %3110
  %3133 = fadd fast float %3129, %3111
  %3134 = fadd fast float %3130, %3112
  br label %3135

; <label>:3135                                    ; preds = %3114, %3097
  %3136 = phi float [ %3131, %3114 ], [ %3109, %3097 ]
  %3137 = phi float [ %3132, %3114 ], [ %3110, %3097 ]
  %3138 = phi float [ %3133, %3114 ], [ %3111, %3097 ]
  %3139 = phi float [ %3134, %3114 ], [ %3112, %3097 ]
  %3140 = fadd fast float %3136, -5.000000e-01
  %3141 = fadd fast float %3138, -5.000000e-01
  %3142 = fmul fast float %3140, 0xBFD5555560000000
  %3143 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3141, float %3142)  ; FMad(a,b,c)
  %3144 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3137, float 0.000000e+00)  ; FMad(a,b,c)
  %3145 = fadd fast float %3144, %3139
  %3146 = fmul fast float %3140, -7.500000e-01
  %3147 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3141, float %3146)  ; FMad(a,b,c)
  %3148 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3137, float 0.000000e+00)  ; FMad(a,b,c)
  %3149 = fadd fast float %3148, %3139
  %3150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.f32 %3150, 0
  %3152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3153 = extractvalue %dx.types.CBufRet.f32 %3152, 0
  %3154 = extractvalue %dx.types.CBufRet.f32 %3152, 1
  %3155 = extractvalue %dx.types.CBufRet.f32 %3152, 2
  %3156 = extractvalue %dx.types.CBufRet.f32 %3152, 3
  %3157 = fsub fast float %3153, %3143
  %3158 = fsub fast float %3154, %3145
  %3159 = fsub fast float %3155, %3147
  %3160 = fsub fast float %3156, %3149
  %3161 = fmul fast float %3157, %3151
  %3162 = fmul fast float %3158, %3151
  %3163 = fmul fast float %3159, %3151
  %3164 = fmul fast float %3160, %3151
  %3165 = fadd fast float %3161, %3143
  %3166 = fadd fast float %3162, %3145
  %3167 = fadd fast float %3163, %3147
  %3168 = fadd fast float %3164, %3149
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = and i32 %3170, 536870911
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3172, %3019
  %3174 = fmul fast float %3172, %3023
  %3175 = fptoui float %3173 to i32
  %3176 = fptoui float %3174 to i32
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 31
  %3180 = lshr i32 %3175, %3179
  %3181 = lshr i32 %3176, %3179
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = and i32 %3183, 31
  %3185 = shl i32 1, %3184
  %3186 = call i32 @dx.op.binary.i32(i32 40, i32 %3185, i32 4)  ; UMin(a,b)
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = extractvalue %dx.types.ResRet.i32 %3187, 1
  %3190 = icmp eq i32 %3186, 0
  br i1 %3190, label %3232, label %3191

; <label>:3191                                    ; preds = %3135
  br label %3192

; <label>:3192                                    ; preds = %3220, %3191
  %3193 = phi i32 [ %3223, %3220 ], [ 0, %3191 ]
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = lshr i32 %3195, 16
  %3197 = and i32 %3196, 31
  %3198 = shl i32 %3181, %3197
  %3199 = add i32 %3198, %3180
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 31
  %3203 = shl i32 %3199, %3202
  %3204 = add i32 %3203, %3193
  %3205 = shl i32 %3204, 2
  %3206 = add i32 %3205, 32
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = icmp slt i32 %3208, 0
  %3210 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3193
  %3211 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3193
  %3212 = bitcast float* %3210 to i32*
  %3213 = bitcast float* %3211 to i32*
  br i1 %3209, label %3214, label %3220

; <label>:3214                                    ; preds = %3192
  %3215 = and i32 %3208, 1073741823
  %3216 = add nuw nsw i32 %3215, 20
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = extractvalue %dx.types.ResRet.i32 %3217, 1
  br label %3220

; <label>:3220                                    ; preds = %3214, %3192
  %3221 = phi i32 [ %3218, %3214 ], [ %3188, %3192 ]
  %3222 = phi i32 [ %3219, %3214 ], [ %3189, %3192 ]
  store i32 %3221, i32* %3212, align 4
  store i32 %3222, i32* %3213, align 4
  %3223 = add nuw i32 %3193, 1
  %3224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.i32 %3224, 2
  %3226 = icmp eq i32 %3225, 0
  %3227 = icmp ugt i32 %3208, -1073741825
  %3228 = and i1 %3227, %3226
  %3229 = icmp ult i32 %3223, %3186
  %3230 = and i1 %3228, %3229
  br i1 %3230, label %3192, label %3231

; <label>:3231                                    ; preds = %3220
  br label %3232

; <label>:3232                                    ; preds = %3231, %3135
  %3233 = phi i32 [ 0, %3135 ], [ %3223, %3231 ]
  %3234 = extractvalue %dx.types.CBufRet.f32 %2997, 2
  %3235 = fptoui float %3234 to i32
  %3236 = icmp eq i32 %3235, 0
  br i1 %3236, label %3288, label %3237

; <label>:3237                                    ; preds = %3232
  br label %3238

; <label>:3238                                    ; preds = %3283, %3237
  %3239 = phi i32 [ %3284, %3283 ], [ %3233, %3237 ]
  %3240 = phi i32 [ %3285, %3283 ], [ 0, %3237 ]
  %3241 = lshr i32 %3240, 2
  %3242 = and i32 %3240, 3
  %3243 = add nuw nsw i32 %3241, 83
  %3244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %3243)  ; CBufferLoadLegacy(handle,regIndex)
  %3245 = extractvalue %dx.types.CBufRet.i32 %3244, 0
  %3246 = extractvalue %dx.types.CBufRet.i32 %3244, 1
  %3247 = extractvalue %dx.types.CBufRet.i32 %3244, 2
  %3248 = extractvalue %dx.types.CBufRet.i32 %3244, 3
  %3249 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %3245, i32* %3249, align 4
  %3250 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %3246, i32* %3250, align 4
  %3251 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %3247, i32* %3251, align 4
  %3252 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %3248, i32* %3252, align 4
  %3253 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %3242
  %3254 = load i32, i32* %3253, align 4, !tbaa !97, !noalias !101
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = lshr i32 %3256, 16
  %3258 = and i32 %3257, 31
  %3259 = shl i32 %3181, %3258
  %3260 = add i32 %3259, %3180
  %3261 = shl i32 %3260, 2
  %3262 = add i32 %3261, %3254
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = icmp eq i32 %3264, 0
  br i1 %3265, label %3283, label %3266

; <label>:3266                                    ; preds = %3238
  %3267 = icmp slt i32 %3264, 0
  %3268 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3239
  %3269 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3239
  %3270 = bitcast float* %3268 to i32*
  %3271 = bitcast float* %3269 to i32*
  br i1 %3267, label %3272, label %3279

; <label>:3272                                    ; preds = %3266
  %3273 = and i32 %3264, 1073741823
  %3274 = add i32 %3254, 20
  %3275 = add i32 %3274, %3273
  %3276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.i32 %3276, 0
  %3278 = extractvalue %dx.types.ResRet.i32 %3276, 1
  br label %3279

; <label>:3279                                    ; preds = %3272, %3266
  %3280 = phi i32 [ %3277, %3272 ], [ %3188, %3266 ]
  %3281 = phi i32 [ %3278, %3272 ], [ %3189, %3266 ]
  store i32 %3280, i32* %3270, align 4
  store i32 %3281, i32* %3271, align 4
  %3282 = add i32 %3239, 1
  br label %3283

; <label>:3283                                    ; preds = %3279, %3238
  %3284 = phi i32 [ %3239, %3238 ], [ %3282, %3279 ]
  %3285 = add nuw i32 %3240, 1
  %3286 = icmp eq i32 %3285, %3235
  br i1 %3286, label %3287, label %3238

; <label>:3287                                    ; preds = %3283
  br label %3288

; <label>:3288                                    ; preds = %3287, %3232
  %3289 = phi i32 [ %3233, %3232 ], [ %3284, %3287 ]
  %3290 = icmp eq i32 %3289, 1
  %3291 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  %3292 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  br i1 %3290, label %3293, label %3296

; <label>:3293                                    ; preds = %3288
  %3294 = load float, float* %3291, align 4
  %3295 = load float, float* %3292, align 4
  br label %3323

; <label>:3296                                    ; preds = %3288
  %3297 = load float, float* %3291, align 4
  %3298 = load float, float* %3292, align 4
  %3299 = fdiv fast float 1.000000e+00, %3298
  %3300 = fsub fast float %3297, %3299
  %3301 = icmp ugt i32 %3289, 1
  br i1 %3301, label %3302, label %3318

; <label>:3302                                    ; preds = %3296
  br label %3303

; <label>:3303                                    ; preds = %3303, %3302
  %3304 = phi float [ %3313, %3303 ], [ %3300, %3302 ]
  %3305 = phi float [ %3314, %3303 ], [ %3297, %3302 ]
  %3306 = phi i32 [ %3315, %3303 ], [ 1, %3302 ]
  %3307 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3306
  %3308 = load float, float* %3307, align 4
  %3309 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3306
  %3310 = load float, float* %3309, align 4
  %3311 = fdiv fast float 1.000000e+00, %3310
  %3312 = fsub fast float %3308, %3311
  %3313 = call float @dx.op.binary.f32(i32 36, float %3304, float %3312)  ; FMin(a,b)
  %3314 = call float @dx.op.binary.f32(i32 35, float %3305, float %3308)  ; FMax(a,b)
  %3315 = add nuw i32 %3306, 1
  %3316 = icmp eq i32 %3315, %3289
  br i1 %3316, label %3317, label %3303

; <label>:3317                                    ; preds = %3303
  br label %3318

; <label>:3318                                    ; preds = %3317, %3296
  %3319 = phi float [ %3300, %3296 ], [ %3313, %3317 ]
  %3320 = phi float [ %3297, %3296 ], [ %3314, %3317 ]
  %3321 = fsub fast float %3320, %3319
  %3322 = fdiv fast float 1.000000e+00, %3321
  br label %3323

; <label>:3323                                    ; preds = %3318, %3293
  %3324 = phi float [ %3294, %3293 ], [ %3320, %3318 ]
  %3325 = phi float [ %3295, %3293 ], [ %3322, %3318 ]
  %3326 = fadd fast float %3027, %3324
  %3327 = fmul fast float %3326, %3325
  %3328 = call float @dx.op.unary.f32(i32 7, float %3327)  ; Saturate(value)
  %3329 = fmul fast float %3328, 2.000000e+00
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = fmul fast float %3165, %3165
  %3332 = fsub fast float %3166, %3331
  %3333 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3332)  ; FMax(a,b)
  %3334 = fdiv fast float 1.000000e+00, %3333
  %3335 = fmul fast float %3166, %3165
  %3336 = fsub fast float %3167, %3335
  %3337 = fsub fast float %3330, %3165
  %3338 = fmul fast float %3330, %3330
  %3339 = fsub fast float %3338, %3166
  %3340 = fmul fast float %3334, %3336
  %3341 = fmul fast float %3340, %3337
  %3342 = fsub fast float %3339, %3341
  %3343 = fmul fast float %3166, %3166
  %3344 = fsub fast float %3168, %3343
  %3345 = fmul fast float %3336, %3336
  %3346 = fmul fast float %3345, %3334
  %3347 = fsub fast float %3344, %3346
  %3348 = fdiv fast float %3342, %3347
  %3349 = fmul fast float %3348, %3336
  %3350 = fsub fast float %3337, %3349
  %3351 = fmul fast float %3350, %3334
  %3352 = fmul fast float %3351, %3165
  %3353 = fsub fast float 1.000000e+00, %3352
  %3354 = fmul fast float %3348, %3166
  %3355 = fsub fast float %3353, %3354
  %3356 = fmul fast float %3351, %3351
  %3357 = fmul fast float %3348, 4.000000e+00
  %3358 = fmul fast float %3357, %3355
  %3359 = fsub fast float %3356, %3358
  %3360 = call float @dx.op.unary.f32(i32 24, float %3359)  ; Sqrt(value)
  %3361 = fcmp fast oge float %3351, 0.000000e+00
  %3362 = fsub fast float -0.000000e+00, %3360
  %3363 = select i1 %3361, float %3362, float %3360
  %3364 = fsub fast float %3363, %3351
  %3365 = fdiv fast float %3364, %3348
  %3366 = fdiv fast float %3355, %3364
  %3367 = fmul fast float %3365, 5.000000e-01
  %3368 = fmul fast float %3366, 2.000000e+00
  %3369 = select i1 %3361, float %3367, float %3368
  %3370 = select i1 %3361, float %3368, float %3367
  %3371 = call float @dx.op.binary.f32(i32 35, float %3369, float %3370)  ; FMax(a,b)
  %3372 = call float @dx.op.binary.f32(i32 36, float %3369, float %3370)  ; FMin(a,b)
  %3373 = fcmp fast ogt float %3330, %3371
  %3374 = fsub fast float %3330, %3372
  %3375 = fsub fast float %3330, %3371
  %3376 = fsub fast float %3371, %3372
  %3377 = select i1 %3373, float %3375, float %3376
  %3378 = fmul float %3374, %3377
  %3379 = select i1 %3373, float %3372, float %3330
  %3380 = fcmp fast ogt float %3330, %3372
  %3381 = fmul fast float %3379, %3371
  %3382 = fadd fast float %3379, %3371
  %3383 = fmul fast float %3382, %3165
  %3384 = fadd fast float %3381, %3166
  %3385 = fsub fast float %3384, %3383
  %3386 = fdiv fast float %3385, %3378
  %3387 = select i1 %3380, float %3386, float 0.000000e+00
  %3388 = fsub fast float 1.000000e+00, %3387
  %3389 = select i1 %3373, float %3388, float %3387
  %3390 = call float @dx.op.unary.f32(i32 7, float %3389)  ; Saturate(value)
  %3391 = extractvalue %dx.types.CBufRet.f32 %3150, 3
  %3392 = fmul fast float %3391, %3390
  %3393 = fsub fast float 1.000000e+00, %3392
  br label %3394

; <label>:3394                                    ; preds = %3323, %3035, %3000, %2996, %2962
  %3395 = phi float [ 1.000000e+00, %2962 ], [ %3393, %3323 ], [ 1.000000e+00, %3000 ], [ 1.000000e+00, %3035 ], [ 1.000000e+00, %2996 ]
  %3396 = fcmp fast ogt float %2992, 0.000000e+00
  br i1 %3396, label %3397, label %3559, !dx.controlflow.hints !110

; <label>:3397                                    ; preds = %3394
  %3398 = fadd fast float %2905, %2879
  %3399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3400 = extractvalue %dx.types.CBufRet.f32 %3399, 2
  %3401 = extractvalue %dx.types.CBufRet.f32 %3399, 3
  %3402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3403 = extractvalue %dx.types.CBufRet.f32 %3402, 2
  %3404 = call float @dx.op.binary.f32(i32 35, float %3398, float 0.000000e+00)  ; FMax(a,b)
  %3405 = fadd fast float %3404, 0x3F10000000000000
  %3406 = fcmp fast oeq float %3403, 0.000000e+00
  br i1 %3406, label %3407, label %3474

; <label>:3407                                    ; preds = %3397
  %3408 = extractvalue %dx.types.CBufRet.f32 %3399, 1
  %3409 = extractvalue %dx.types.CBufRet.f32 %3399, 0
  %3410 = fmul fast float %3409, %2894
  %3411 = fmul fast float %3408, %2895
  %3412 = fadd fast float %3410, 5.000000e-01
  %3413 = call float @dx.op.unary.f32(i32 27, float %3412)  ; Round_ni(value)
  %3414 = fadd fast float %3411, 5.000000e-01
  %3415 = call float @dx.op.unary.f32(i32 27, float %3414)  ; Round_ni(value)
  %3416 = fsub fast float %3412, %3413
  %3417 = fsub fast float %3414, %3415
  %3418 = fadd fast float %3413, -5.000000e-01
  %3419 = fadd fast float %3415, -5.000000e-01
  %3420 = fmul fast float %3416, 2.000000e+00
  %3421 = fsub fast float 3.000000e+00, %3420
  %3422 = fadd fast float %3420, 1.000000e+00
  %3423 = fsub fast float 2.000000e+00, %3416
  %3424 = bitcast float %3421 to i32
  %3425 = sub nsw i32 2129859010, %3424
  %3426 = bitcast i32 %3425 to float
  %3427 = fmul fast float %3426, %3423
  %3428 = fadd fast float %3427, -1.000000e+00
  %3429 = bitcast float %3422 to i32
  %3430 = sub nsw i32 2129859010, %3429
  %3431 = bitcast i32 %3430 to float
  %3432 = fmul fast float %3431, %3416
  %3433 = fadd fast float %3432, 1.000000e+00
  %3434 = fmul fast float %3417, 2.000000e+00
  %3435 = fsub fast float 3.000000e+00, %3434
  %3436 = fadd fast float %3434, 1.000000e+00
  %3437 = fsub fast float 2.000000e+00, %3417
  %3438 = bitcast float %3435 to i32
  %3439 = sub nsw i32 2129859010, %3438
  %3440 = bitcast i32 %3439 to float
  %3441 = fmul fast float %3440, %3437
  %3442 = fadd fast float %3441, -1.000000e+00
  %3443 = bitcast float %3436 to i32
  %3444 = sub nsw i32 2129859010, %3443
  %3445 = bitcast i32 %3444 to float
  %3446 = fmul fast float %3445, %3417
  %3447 = fadd fast float %3446, 1.000000e+00
  %3448 = fadd fast float %3428, %3418
  %3449 = fmul fast float %3448, %3400
  %3450 = fadd fast float %3442, %3419
  %3451 = fmul fast float %3450, %3401
  %3452 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3449, float %3451, float undef, float undef, i32 0, i32 0, i32 undef, float %3405)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3453 = extractvalue %dx.types.ResRet.f32 %3452, 0
  %3454 = fmul fast float %3453, %3421
  %3455 = fadd fast float %3433, %3418
  %3456 = fmul fast float %3455, %3400
  %3457 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3456, float %3451, float undef, float undef, i32 0, i32 0, i32 undef, float %3405)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3459 = fmul fast float %3458, %3422
  %3460 = fadd fast float %3447, %3419
  %3461 = fmul fast float %3460, %3401
  %3462 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3449, float %3461, float undef, float undef, i32 0, i32 0, i32 undef, float %3405)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3463 = extractvalue %dx.types.ResRet.f32 %3462, 0
  %3464 = fmul fast float %3463, %3421
  %3465 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3456, float %3461, float undef, float undef, i32 0, i32 0, i32 undef, float %3405)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3466 = extractvalue %dx.types.ResRet.f32 %3465, 0
  %3467 = fmul fast float %3466, %3422
  %3468 = fadd fast float %3467, %3464
  %3469 = fmul fast float %3468, %3436
  %3470 = fadd fast float %3459, %3454
  %3471 = fmul fast float %3470, %3435
  %3472 = fadd fast float %3471, %3469
  %3473 = fmul fast float %3472, 6.250000e-02
  br label %3559

; <label>:3474                                    ; preds = %3397
  %3475 = fmul fast float %218, 0x401921FB60000000
  %3476 = call float @dx.op.unary.f32(i32 13, float %3475)  ; Sin(value)
  %3477 = call float @dx.op.unary.f32(i32 12, float %3475)  ; Cos(value)
  %3478 = fsub fast float -0.000000e+00, %3476
  br label %3479

; <label>:3479                                    ; preds = %3528, %3474
  %3480 = phi float [ 0.000000e+00, %3474 ], [ %3523, %3528 ]
  %3481 = phi float [ 0.000000e+00, %3474 ], [ %3525, %3528 ]
  %3482 = phi i32 [ 0, %3474 ], [ %3529, %3528 ]
  %3483 = mul i32 %3482, 2
  %3484 = add i32 0, %3483
  %3485 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3484
  %3486 = load float, float* %3485, align 4
  %3487 = mul i32 %3482, 2
  %3488 = add i32 1, %3487
  %3489 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3488
  %3490 = load float, float* %3489, align 4
  %3491 = fmul fast float %3486, %3477
  %3492 = call float @dx.op.tertiary.f32(i32 46, float %3490, float %3478, float %3491)  ; FMad(a,b,c)
  %3493 = fmul fast float %3486, %3476
  %3494 = call float @dx.op.tertiary.f32(i32 46, float %3490, float %3477, float %3493)  ; FMad(a,b,c)
  %3495 = fmul fast float %3492, %3403
  %3496 = fmul fast float %3494, %3403
  %3497 = fadd fast float %3495, %2894
  %3498 = fadd fast float %3496, %2895
  %3499 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %51, float %3497, float %3498, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3501 = extractvalue %dx.types.ResRet.f32 %3499, 1
  %3502 = extractvalue %dx.types.ResRet.f32 %3499, 2
  %3503 = extractvalue %dx.types.ResRet.f32 %3499, 3
  %3504 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 0
  store float %3500, float* %3504, align 4
  %3505 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 1
  store float %3501, float* %3505, align 4
  %3506 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 2
  store float %3502, float* %3506, align 4
  %3507 = getelementptr inbounds [4 x float], [4 x float]* %82, i32 0, i32 3
  store float %3503, float* %3507, align 4
  %3508 = fsub fast float %3500, %3405
  %3509 = fcmp fast olt float %3508, 0.000000e+00
  %3510 = select i1 %3509, float 0.000000e+00, float 1.000000e+00
  %3511 = fadd fast float %3510, %3480
  %3512 = fmul fast float %3510, %3508
  %3513 = fadd fast float %3512, %3481
  br label %3514

; <label>:3514                                    ; preds = %3514, %3479
  %3515 = phi i32 [ 1, %3479 ], [ %3526, %3514 ]
  %3516 = phi float [ %3513, %3479 ], [ %3525, %3514 ]
  %3517 = phi float [ %3511, %3479 ], [ %3523, %3514 ]
  %3518 = getelementptr [4 x float], [4 x float]* %82, i32 0, i32 %3515
  %3519 = load float, float* %3518, align 4, !tbaa !111, !noalias !101
  %3520 = fsub fast float %3519, %3405
  %3521 = fcmp fast olt float %3520, 0.000000e+00
  %3522 = select i1 %3521, float 0.000000e+00, float 1.000000e+00
  %3523 = fadd fast float %3522, %3517
  %3524 = fmul fast float %3522, %3520
  %3525 = fadd fast float %3524, %3516
  %3526 = add nuw nsw i32 %3515, 1
  %3527 = icmp eq i32 %3526, 4
  br i1 %3527, label %3528, label %3514, !llvm.loop !113

; <label>:3528                                    ; preds = %3514
  %3529 = add nuw nsw i32 %3482, 1
  %3530 = icmp eq i32 %3529, 8
  br i1 %3530, label %3531, label %3479, !llvm.loop !114

; <label>:3531                                    ; preds = %3528
  %3532 = fdiv fast float 1.000000e+00, %3523
  %3533 = fmul fast float %3532, %3525
  %3534 = fdiv fast float 1.000000e+00, %3405
  %3535 = fmul fast float %3533, %3534
  %3536 = call float @dx.op.unary.f32(i32 7, float %3535)  ; Saturate(value)
  %3537 = call float @dx.op.binary.f32(i32 35, float %3536, float 0.000000e+00)  ; FMax(a,b)
  %3538 = fmul fast float %3523, 3.125000e-02
  %3539 = call float @dx.op.unary.f32(i32 7, float %3538)  ; Saturate(value)
  %3540 = fmul fast float %3539, 2.000000e+00
  %3541 = fadd fast float %3540, -1.000000e+00
  %3542 = fcmp fast ogt float %3541, 0.000000e+00
  %3543 = fcmp fast olt float %3541, 0.000000e+00
  %3544 = zext i1 %3542 to i32
  %3545 = zext i1 %3543 to i32
  %3546 = sub nsw i32 %3544, %3545
  %3547 = sitofp i32 %3546 to float
  %3548 = fmul fast float %3547, %3541
  %3549 = fsub fast float 1.000000e+00, %3548
  %3550 = fmul fast float %3549, %3549
  %3551 = fmul fast float %3550, %3549
  %3552 = fsub fast float %3549, %3551
  %3553 = fmul fast float %3552, %3537
  %3554 = fsub fast float 1.000000e+00, %3551
  %3555 = fsub fast float %3554, %3553
  %3556 = fmul fast float %3547, 5.000000e-01
  %3557 = fmul fast float %3556, %3555
  %3558 = fsub fast float 5.000000e-01, %3557
  br label %3559

; <label>:3559                                    ; preds = %3531, %3407, %3394
  %3560 = phi float [ 1.000000e+00, %3394 ], [ %3473, %3407 ], [ %3558, %3531 ]
  %3561 = fcmp fast ogt float %2990, 0.000000e+00
  br i1 %3561, label %3562, label %3726, !dx.controlflow.hints !115

; <label>:3562                                    ; preds = %3559
  %3563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3564 = extractvalue %dx.types.CBufRet.f32 %3563, 1
  %3565 = fadd fast float %3564, %2879
  %3566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3566, 2
  %3568 = extractvalue %dx.types.CBufRet.f32 %3566, 3
  %3569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3570 = extractvalue %dx.types.CBufRet.f32 %3569, 1
  %3571 = call float @dx.op.binary.f32(i32 35, float %3565, float 0.000000e+00)  ; FMax(a,b)
  %3572 = fadd fast float %3571, 0x3F10000000000000
  %3573 = fcmp fast oeq float %3570, 0.000000e+00
  br i1 %3573, label %3574, label %3641

; <label>:3574                                    ; preds = %3562
  %3575 = extractvalue %dx.types.CBufRet.f32 %3566, 1
  %3576 = extractvalue %dx.types.CBufRet.f32 %3566, 0
  %3577 = fmul fast float %3576, %2886
  %3578 = fmul fast float %3575, %2887
  %3579 = fadd fast float %3577, 5.000000e-01
  %3580 = call float @dx.op.unary.f32(i32 27, float %3579)  ; Round_ni(value)
  %3581 = fadd fast float %3578, 5.000000e-01
  %3582 = call float @dx.op.unary.f32(i32 27, float %3581)  ; Round_ni(value)
  %3583 = fsub fast float %3579, %3580
  %3584 = fsub fast float %3581, %3582
  %3585 = fadd fast float %3580, -5.000000e-01
  %3586 = fadd fast float %3582, -5.000000e-01
  %3587 = fmul fast float %3583, 2.000000e+00
  %3588 = fsub fast float 3.000000e+00, %3587
  %3589 = fadd fast float %3587, 1.000000e+00
  %3590 = fsub fast float 2.000000e+00, %3583
  %3591 = bitcast float %3588 to i32
  %3592 = sub nsw i32 2129859010, %3591
  %3593 = bitcast i32 %3592 to float
  %3594 = fmul fast float %3593, %3590
  %3595 = fadd fast float %3594, -1.000000e+00
  %3596 = bitcast float %3589 to i32
  %3597 = sub nsw i32 2129859010, %3596
  %3598 = bitcast i32 %3597 to float
  %3599 = fmul fast float %3598, %3583
  %3600 = fadd fast float %3599, 1.000000e+00
  %3601 = fmul fast float %3584, 2.000000e+00
  %3602 = fsub fast float 3.000000e+00, %3601
  %3603 = fadd fast float %3601, 1.000000e+00
  %3604 = fsub fast float 2.000000e+00, %3584
  %3605 = bitcast float %3602 to i32
  %3606 = sub nsw i32 2129859010, %3605
  %3607 = bitcast i32 %3606 to float
  %3608 = fmul fast float %3607, %3604
  %3609 = fadd fast float %3608, -1.000000e+00
  %3610 = bitcast float %3603 to i32
  %3611 = sub nsw i32 2129859010, %3610
  %3612 = bitcast i32 %3611 to float
  %3613 = fmul fast float %3612, %3584
  %3614 = fadd fast float %3613, 1.000000e+00
  %3615 = fadd fast float %3595, %3585
  %3616 = fmul fast float %3615, %3567
  %3617 = fadd fast float %3609, %3586
  %3618 = fmul fast float %3617, %3568
  %3619 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3616, float %3618, float undef, float undef, i32 0, i32 0, i32 undef, float %3572)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = fmul fast float %3620, %3588
  %3622 = fadd fast float %3600, %3585
  %3623 = fmul fast float %3622, %3567
  %3624 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3623, float %3618, float undef, float undef, i32 0, i32 0, i32 undef, float %3572)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = fmul fast float %3625, %3589
  %3627 = fadd fast float %3614, %3586
  %3628 = fmul fast float %3627, %3568
  %3629 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3616, float %3628, float undef, float undef, i32 0, i32 0, i32 undef, float %3572)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = fmul fast float %3630, %3588
  %3632 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3623, float %3628, float undef, float undef, i32 0, i32 0, i32 undef, float %3572)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = fmul fast float %3633, %3589
  %3635 = fadd fast float %3634, %3631
  %3636 = fmul fast float %3635, %3603
  %3637 = fadd fast float %3626, %3621
  %3638 = fmul fast float %3637, %3602
  %3639 = fadd fast float %3638, %3636
  %3640 = fmul fast float %3639, 6.250000e-02
  br label %3726

; <label>:3641                                    ; preds = %3562
  %3642 = fmul fast float %218, 0x401921FB60000000
  %3643 = call float @dx.op.unary.f32(i32 13, float %3642)  ; Sin(value)
  %3644 = call float @dx.op.unary.f32(i32 12, float %3642)  ; Cos(value)
  %3645 = fsub fast float -0.000000e+00, %3643
  br label %3646

; <label>:3646                                    ; preds = %3695, %3641
  %3647 = phi float [ 0.000000e+00, %3641 ], [ %3690, %3695 ]
  %3648 = phi float [ 0.000000e+00, %3641 ], [ %3692, %3695 ]
  %3649 = phi i32 [ 0, %3641 ], [ %3696, %3695 ]
  %3650 = mul i32 %3649, 2
  %3651 = add i32 0, %3650
  %3652 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3651
  %3653 = load float, float* %3652, align 4
  %3654 = mul i32 %3649, 2
  %3655 = add i32 1, %3654
  %3656 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3655
  %3657 = load float, float* %3656, align 4
  %3658 = fmul fast float %3653, %3644
  %3659 = call float @dx.op.tertiary.f32(i32 46, float %3657, float %3645, float %3658)  ; FMad(a,b,c)
  %3660 = fmul fast float %3653, %3643
  %3661 = call float @dx.op.tertiary.f32(i32 46, float %3657, float %3644, float %3660)  ; FMad(a,b,c)
  %3662 = fmul fast float %3659, %3570
  %3663 = fmul fast float %3661, %3570
  %3664 = fadd fast float %3662, %2886
  %3665 = fadd fast float %3663, %2887
  %3666 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %51, float %3664, float %3665, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3669 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3670 = extractvalue %dx.types.ResRet.f32 %3666, 3
  %3671 = getelementptr inbounds [4 x float], [4 x float]* %81, i32 0, i32 0
  store float %3667, float* %3671, align 4
  %3672 = getelementptr inbounds [4 x float], [4 x float]* %81, i32 0, i32 1
  store float %3668, float* %3672, align 4
  %3673 = getelementptr inbounds [4 x float], [4 x float]* %81, i32 0, i32 2
  store float %3669, float* %3673, align 4
  %3674 = getelementptr inbounds [4 x float], [4 x float]* %81, i32 0, i32 3
  store float %3670, float* %3674, align 4
  %3675 = fsub fast float %3667, %3572
  %3676 = fcmp fast olt float %3675, 0.000000e+00
  %3677 = select i1 %3676, float 0.000000e+00, float 1.000000e+00
  %3678 = fadd fast float %3677, %3647
  %3679 = fmul fast float %3677, %3675
  %3680 = fadd fast float %3679, %3648
  br label %3681

; <label>:3681                                    ; preds = %3681, %3646
  %3682 = phi i32 [ 1, %3646 ], [ %3693, %3681 ]
  %3683 = phi float [ %3680, %3646 ], [ %3692, %3681 ]
  %3684 = phi float [ %3678, %3646 ], [ %3690, %3681 ]
  %3685 = getelementptr [4 x float], [4 x float]* %81, i32 0, i32 %3682
  %3686 = load float, float* %3685, align 4, !tbaa !111, !noalias !101
  %3687 = fsub fast float %3686, %3572
  %3688 = fcmp fast olt float %3687, 0.000000e+00
  %3689 = select i1 %3688, float 0.000000e+00, float 1.000000e+00
  %3690 = fadd fast float %3689, %3684
  %3691 = fmul fast float %3689, %3687
  %3692 = fadd fast float %3691, %3683
  %3693 = add nuw nsw i32 %3682, 1
  %3694 = icmp eq i32 %3693, 4
  br i1 %3694, label %3695, label %3681, !llvm.loop !113

; <label>:3695                                    ; preds = %3681
  %3696 = add nuw nsw i32 %3649, 1
  %3697 = icmp eq i32 %3696, 8
  br i1 %3697, label %3698, label %3646, !llvm.loop !114

; <label>:3698                                    ; preds = %3695
  %3699 = fdiv fast float 1.000000e+00, %3690
  %3700 = fmul fast float %3699, %3692
  %3701 = fdiv fast float 1.000000e+00, %3572
  %3702 = fmul fast float %3700, %3701
  %3703 = call float @dx.op.unary.f32(i32 7, float %3702)  ; Saturate(value)
  %3704 = call float @dx.op.binary.f32(i32 35, float %3703, float 0.000000e+00)  ; FMax(a,b)
  %3705 = fmul fast float %3690, 3.125000e-02
  %3706 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3707 = fmul fast float %3706, 2.000000e+00
  %3708 = fadd fast float %3707, -1.000000e+00
  %3709 = fcmp fast ogt float %3708, 0.000000e+00
  %3710 = fcmp fast olt float %3708, 0.000000e+00
  %3711 = zext i1 %3709 to i32
  %3712 = zext i1 %3710 to i32
  %3713 = sub nsw i32 %3711, %3712
  %3714 = sitofp i32 %3713 to float
  %3715 = fmul fast float %3714, %3708
  %3716 = fsub fast float 1.000000e+00, %3715
  %3717 = fmul fast float %3716, %3716
  %3718 = fmul fast float %3717, %3716
  %3719 = fsub fast float %3716, %3718
  %3720 = fmul fast float %3719, %3704
  %3721 = fsub fast float 1.000000e+00, %3718
  %3722 = fsub fast float %3721, %3720
  %3723 = fmul fast float %3714, 5.000000e-01
  %3724 = fmul fast float %3723, %3722
  %3725 = fsub fast float 5.000000e-01, %3724
  br label %3726

; <label>:3726                                    ; preds = %3698, %3574, %3559
  %3727 = phi float [ 1.000000e+00, %3559 ], [ %3640, %3574 ], [ %3725, %3698 ]
  %3728 = fcmp fast ogt float %2989, 0.000000e+00
  br i1 %3728, label %3729, label %3893, !dx.controlflow.hints !116

; <label>:3729                                    ; preds = %3726
  %3730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.f32 %3730, 0
  %3732 = fadd fast float %3731, %2879
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 2
  %3735 = extractvalue %dx.types.CBufRet.f32 %3733, 3
  %3736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3737 = extractvalue %dx.types.CBufRet.f32 %3736, 0
  %3738 = call float @dx.op.binary.f32(i32 35, float %3732, float 0.000000e+00)  ; FMax(a,b)
  %3739 = fadd fast float %3738, 0x3F10000000000000
  %3740 = fcmp fast oeq float %3737, 0.000000e+00
  br i1 %3740, label %3741, label %3808

; <label>:3741                                    ; preds = %3729
  %3742 = extractvalue %dx.types.CBufRet.f32 %3733, 1
  %3743 = extractvalue %dx.types.CBufRet.f32 %3733, 0
  %3744 = fmul fast float %3743, %2871
  %3745 = fmul fast float %3742, %2875
  %3746 = fadd fast float %3744, 5.000000e-01
  %3747 = call float @dx.op.unary.f32(i32 27, float %3746)  ; Round_ni(value)
  %3748 = fadd fast float %3745, 5.000000e-01
  %3749 = call float @dx.op.unary.f32(i32 27, float %3748)  ; Round_ni(value)
  %3750 = fsub fast float %3746, %3747
  %3751 = fsub fast float %3748, %3749
  %3752 = fadd fast float %3747, -5.000000e-01
  %3753 = fadd fast float %3749, -5.000000e-01
  %3754 = fmul fast float %3750, 2.000000e+00
  %3755 = fsub fast float 3.000000e+00, %3754
  %3756 = fadd fast float %3754, 1.000000e+00
  %3757 = fsub fast float 2.000000e+00, %3750
  %3758 = bitcast float %3755 to i32
  %3759 = sub nsw i32 2129859010, %3758
  %3760 = bitcast i32 %3759 to float
  %3761 = fmul fast float %3760, %3757
  %3762 = fadd fast float %3761, -1.000000e+00
  %3763 = bitcast float %3756 to i32
  %3764 = sub nsw i32 2129859010, %3763
  %3765 = bitcast i32 %3764 to float
  %3766 = fmul fast float %3765, %3750
  %3767 = fadd fast float %3766, 1.000000e+00
  %3768 = fmul fast float %3751, 2.000000e+00
  %3769 = fsub fast float 3.000000e+00, %3768
  %3770 = fadd fast float %3768, 1.000000e+00
  %3771 = fsub fast float 2.000000e+00, %3751
  %3772 = bitcast float %3769 to i32
  %3773 = sub nsw i32 2129859010, %3772
  %3774 = bitcast i32 %3773 to float
  %3775 = fmul fast float %3774, %3771
  %3776 = fadd fast float %3775, -1.000000e+00
  %3777 = bitcast float %3770 to i32
  %3778 = sub nsw i32 2129859010, %3777
  %3779 = bitcast i32 %3778 to float
  %3780 = fmul fast float %3779, %3751
  %3781 = fadd fast float %3780, 1.000000e+00
  %3782 = fadd fast float %3762, %3752
  %3783 = fmul fast float %3782, %3734
  %3784 = fadd fast float %3776, %3753
  %3785 = fmul fast float %3784, %3735
  %3786 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %3783, float %3785, float undef, float undef, i32 0, i32 0, i32 undef, float %3739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = fmul fast float %3787, %3755
  %3789 = fadd fast float %3767, %3752
  %3790 = fmul fast float %3789, %3734
  %3791 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %3790, float %3785, float undef, float undef, i32 0, i32 0, i32 undef, float %3739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3792 = extractvalue %dx.types.ResRet.f32 %3791, 0
  %3793 = fmul fast float %3792, %3756
  %3794 = fadd fast float %3781, %3753
  %3795 = fmul fast float %3794, %3735
  %3796 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %3783, float %3795, float undef, float undef, i32 0, i32 0, i32 undef, float %3739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3797 = extractvalue %dx.types.ResRet.f32 %3796, 0
  %3798 = fmul fast float %3797, %3755
  %3799 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %3790, float %3795, float undef, float undef, i32 0, i32 0, i32 undef, float %3739)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = fmul fast float %3800, %3756
  %3802 = fadd fast float %3801, %3798
  %3803 = fmul fast float %3802, %3770
  %3804 = fadd fast float %3793, %3788
  %3805 = fmul fast float %3804, %3769
  %3806 = fadd fast float %3805, %3803
  %3807 = fmul fast float %3806, 6.250000e-02
  br label %3893

; <label>:3808                                    ; preds = %3729
  %3809 = fmul fast float %218, 0x401921FB60000000
  %3810 = call float @dx.op.unary.f32(i32 13, float %3809)  ; Sin(value)
  %3811 = call float @dx.op.unary.f32(i32 12, float %3809)  ; Cos(value)
  %3812 = fsub fast float -0.000000e+00, %3810
  br label %3813

; <label>:3813                                    ; preds = %3862, %3808
  %3814 = phi float [ 0.000000e+00, %3808 ], [ %3857, %3862 ]
  %3815 = phi float [ 0.000000e+00, %3808 ], [ %3859, %3862 ]
  %3816 = phi i32 [ 0, %3808 ], [ %3863, %3862 ]
  %3817 = mul i32 %3816, 2
  %3818 = add i32 0, %3817
  %3819 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3818
  %3820 = load float, float* %3819, align 4
  %3821 = mul i32 %3816, 2
  %3822 = add i32 1, %3821
  %3823 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3822
  %3824 = load float, float* %3823, align 4
  %3825 = fmul fast float %3820, %3811
  %3826 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3812, float %3825)  ; FMad(a,b,c)
  %3827 = fmul fast float %3820, %3810
  %3828 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3811, float %3827)  ; FMad(a,b,c)
  %3829 = fmul fast float %3826, %3737
  %3830 = fmul fast float %3828, %3737
  %3831 = fadd fast float %3829, %2871
  %3832 = fadd fast float %3830, %2875
  %3833 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %51, float %3831, float %3832, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3837 = extractvalue %dx.types.ResRet.f32 %3833, 3
  %3838 = getelementptr inbounds [4 x float], [4 x float]* %80, i32 0, i32 0
  store float %3834, float* %3838, align 4
  %3839 = getelementptr inbounds [4 x float], [4 x float]* %80, i32 0, i32 1
  store float %3835, float* %3839, align 4
  %3840 = getelementptr inbounds [4 x float], [4 x float]* %80, i32 0, i32 2
  store float %3836, float* %3840, align 4
  %3841 = getelementptr inbounds [4 x float], [4 x float]* %80, i32 0, i32 3
  store float %3837, float* %3841, align 4
  %3842 = fsub fast float %3834, %3739
  %3843 = fcmp fast olt float %3842, 0.000000e+00
  %3844 = select i1 %3843, float 0.000000e+00, float 1.000000e+00
  %3845 = fadd fast float %3844, %3814
  %3846 = fmul fast float %3844, %3842
  %3847 = fadd fast float %3846, %3815
  br label %3848

; <label>:3848                                    ; preds = %3848, %3813
  %3849 = phi i32 [ 1, %3813 ], [ %3860, %3848 ]
  %3850 = phi float [ %3847, %3813 ], [ %3859, %3848 ]
  %3851 = phi float [ %3845, %3813 ], [ %3857, %3848 ]
  %3852 = getelementptr [4 x float], [4 x float]* %80, i32 0, i32 %3849
  %3853 = load float, float* %3852, align 4, !tbaa !111, !noalias !101
  %3854 = fsub fast float %3853, %3739
  %3855 = fcmp fast olt float %3854, 0.000000e+00
  %3856 = select i1 %3855, float 0.000000e+00, float 1.000000e+00
  %3857 = fadd fast float %3856, %3851
  %3858 = fmul fast float %3856, %3854
  %3859 = fadd fast float %3858, %3850
  %3860 = add nuw nsw i32 %3849, 1
  %3861 = icmp eq i32 %3860, 4
  br i1 %3861, label %3862, label %3848, !llvm.loop !113

; <label>:3862                                    ; preds = %3848
  %3863 = add nuw nsw i32 %3816, 1
  %3864 = icmp eq i32 %3863, 8
  br i1 %3864, label %3865, label %3813, !llvm.loop !114

; <label>:3865                                    ; preds = %3862
  %3866 = fdiv fast float 1.000000e+00, %3857
  %3867 = fmul fast float %3866, %3859
  %3868 = fdiv fast float 1.000000e+00, %3739
  %3869 = fmul fast float %3867, %3868
  %3870 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3871 = call float @dx.op.binary.f32(i32 35, float %3870, float 0.000000e+00)  ; FMax(a,b)
  %3872 = fmul fast float %3857, 3.125000e-02
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = fmul fast float %3873, 2.000000e+00
  %3875 = fadd fast float %3874, -1.000000e+00
  %3876 = fcmp fast ogt float %3875, 0.000000e+00
  %3877 = fcmp fast olt float %3875, 0.000000e+00
  %3878 = zext i1 %3876 to i32
  %3879 = zext i1 %3877 to i32
  %3880 = sub nsw i32 %3878, %3879
  %3881 = sitofp i32 %3880 to float
  %3882 = fmul fast float %3881, %3875
  %3883 = fsub fast float 1.000000e+00, %3882
  %3884 = fmul fast float %3883, %3883
  %3885 = fmul fast float %3884, %3883
  %3886 = fsub fast float %3883, %3885
  %3887 = fmul fast float %3886, %3871
  %3888 = fsub fast float 1.000000e+00, %3885
  %3889 = fsub fast float %3888, %3887
  %3890 = fmul fast float %3881, 5.000000e-01
  %3891 = fmul fast float %3890, %3889
  %3892 = fsub fast float 5.000000e-01, %3891
  br label %3893

; <label>:3893                                    ; preds = %3865, %3741, %3726
  %3894 = phi float [ 1.000000e+00, %3726 ], [ %3807, %3741 ], [ %3892, %3865 ]
  %3895 = fsub fast float %3560, %3395
  %3896 = fmul fast float %3895, %2933
  %3897 = fadd fast float %3896, %3395
  %3898 = fsub fast float %3727, %3897
  %3899 = fmul fast float %3898, %2963
  %3900 = fadd fast float %3899, %3897
  %3901 = fsub fast float %3894, %3900
  %3902 = fmul fast float %3901, %2989
  %3903 = fadd fast float %3902, %3900
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 2
  %3906 = fcmp fast ogt float %3905, 0.000000e+00
  br i1 %3906, label %3907, label %3947, !dx.controlflow.hints !117

; <label>:3907                                    ; preds = %3893
  %3908 = fcmp fast ugt float %3905, 0.000000e+00
  br i1 %3908, label %3909, label %3944

; <label>:3909                                    ; preds = %3907
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 0
  %3912 = extractvalue %dx.types.CBufRet.f32 %3910, 1
  %3913 = extractvalue %dx.types.CBufRet.f32 %3910, 2
  %3914 = extractvalue %dx.types.CBufRet.f32 %3910, 3
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.CBufRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.CBufRet.f32 %3915, 2
  %3919 = extractvalue %dx.types.CBufRet.f32 %3915, 3
  %3920 = extractvalue %dx.types.CBufRet.f32 %3904, 0
  %3921 = extractvalue %dx.types.CBufRet.f32 %3904, 1
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.CBufRet.f32 %3922, 2
  %3926 = fadd fast float %3923, %2848
  %3927 = fadd fast float %3924, %2849
  %3928 = fadd fast float %3925, %2850
  %3929 = fmul fast float %3926, %3911
  %3930 = call float @dx.op.tertiary.f32(i32 46, float %3912, float %3927, float %3929)  ; FMad(a,b,c)
  %3931 = call float @dx.op.tertiary.f32(i32 46, float %3913, float %3928, float %3930)  ; FMad(a,b,c)
  %3932 = fadd fast float %3931, %3914
  %3933 = fmul fast float %3926, %3916
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3917, float %3927, float %3933)  ; FMad(a,b,c)
  %3935 = call float @dx.op.tertiary.f32(i32 46, float %3918, float %3928, float %3934)  ; FMad(a,b,c)
  %3936 = fadd fast float %3935, %3919
  %3937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %3932, float %3936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = fmul fast float %3938, %3921
  %3940 = fadd fast float %3939, %3920
  %3941 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3942 = fmul fast float %3941, %3905
  %3943 = fsub fast float 1.000000e+00, %3942
  br label %3944

; <label>:3944                                    ; preds = %3909, %3907
  %3945 = phi float [ %3943, %3909 ], [ 1.000000e+00, %3907 ]
  %3946 = fmul fast float %3945, %3903
  br label %3947

; <label>:3947                                    ; preds = %3944, %3893, %2828
  %3948 = phi float [ 1.000000e+00, %2828 ], [ %3946, %3944 ], [ %3903, %3893 ]
  %3949 = call float @dx.op.binary.f32(i32 36, float %3948, float %3948)  ; FMin(a,b)
  %3950 = call float @dx.op.binary.f32(i32 36, float %3948, float %3949)  ; FMin(a,b)
  %3951 = fcmp fast ogt float %3950, 0.000000e+00
  br i1 %3951, label %3952, label %4117, !dx.controlflow.hints !118

; <label>:3952                                    ; preds = %3947
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.CBufRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.CBufRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.CBufRet.f32 %3953, 3
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.CBufRet.f32 %3958, 1
  %3961 = extractvalue %dx.types.CBufRet.f32 %3958, 2
  %3962 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 0
  %3965 = extractvalue %dx.types.CBufRet.f32 %3963, 1
  %3966 = extractvalue %dx.types.CBufRet.f32 %3963, 2
  %3967 = extractvalue %dx.types.CBufRet.f32 %3963, 3
  %3968 = fmul fast float %3954, %2848
  %3969 = call float @dx.op.tertiary.f32(i32 46, float %2849, float %3955, float %3968)  ; FMad(a,b,c)
  %3970 = call float @dx.op.tertiary.f32(i32 46, float %2850, float %3956, float %3969)  ; FMad(a,b,c)
  %3971 = fadd fast float %3970, %3957
  %3972 = fmul fast float %3959, %2848
  %3973 = call float @dx.op.tertiary.f32(i32 46, float %2849, float %3960, float %3972)  ; FMad(a,b,c)
  %3974 = call float @dx.op.tertiary.f32(i32 46, float %2850, float %3961, float %3973)  ; FMad(a,b,c)
  %3975 = fadd fast float %3974, %3962
  %3976 = fmul fast float %3964, %2848
  %3977 = call float @dx.op.tertiary.f32(i32 46, float %2849, float %3965, float %3976)  ; FMad(a,b,c)
  %3978 = call float @dx.op.tertiary.f32(i32 46, float %2850, float %3966, float %3977)  ; FMad(a,b,c)
  %3979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3979, 0
  %3981 = extractvalue %dx.types.CBufRet.f32 %3979, 1
  %3982 = extractvalue %dx.types.CBufRet.f32 %3979, 3
  %3983 = fmul fast float %3982, %3971
  %3984 = fmul fast float %3982, %3975
  %3985 = fadd fast float %3983, %3980
  %3986 = fadd fast float %3984, %3981
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.CBufRet.f32 %3987, 1
  %3990 = fsub fast float %3985, %3988
  %3991 = fsub fast float %3986, %3989
  %3992 = fcmp fast olt float %3990, 0.000000e+00
  %3993 = fcmp fast olt float %3991, 0.000000e+00
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.CBufRet.f32 %3994, 1
  %3997 = extractvalue %dx.types.CBufRet.f32 %3994, 2
  %3998 = extractvalue %dx.types.CBufRet.f32 %3994, 3
  %3999 = select i1 %3992, float %3995, float %3997
  %4000 = select i1 %3993, float %3996, float %3998
  %4001 = fmul fast float %3999, %3990
  %4002 = fmul fast float %4000, %3991
  %4003 = call float @dx.op.unary.f32(i32 6, float %4001)  ; FAbs(value)
  %4004 = call float @dx.op.unary.f32(i32 6, float %4002)  ; FAbs(value)
  %4005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4005, 0
  %4007 = call float @dx.op.binary.f32(i32 35, float %4003, float %4004)  ; FMax(a,b)
  %4008 = fsub fast float %4006, %4007
  %4009 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4010 = fcmp fast ogt float %4009, 0.000000e+00
  br i1 %4010, label %4011, label %4052, !dx.controlflow.hints !119

; <label>:4011                                    ; preds = %3952
  %4012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %3985, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4013 = extractvalue %dx.types.ResRet.f32 %4012, 1
  %4014 = fcmp fast ogt float %4013, 0.000000e+00
  br i1 %4014, label %4015, label %4047

; <label>:4015                                    ; preds = %4011
  %4016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %3985, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = extractvalue %dx.types.ResRet.f32 %4016, 3
  %4021 = fsub fast float 1.000000e+00, %3967
  %4022 = fsub fast float %4021, %3978
  %4023 = fmul fast float %4022, 0x400921FB60000000
  %4024 = fadd fast float %4023, 0x3FF921FB60000000
  %4025 = call float @dx.op.unary.f32(i32 13, float %4024)  ; Sin(value)
  %4026 = fadd fast float %4025, -1.000000e+00
  %4027 = fmul fast float %4026, 0x3FD45F3060000000
  %4028 = fmul fast float %4022, 0x401921FB60000000
  %4029 = fadd fast float %4028, 0x400921FB60000000
  %4030 = call float @dx.op.unary.f32(i32 13, float %4029)  ; Sin(value)
  %4031 = fadd fast float %4030, 0x3E7777A5C0000000
  %4032 = fmul fast float %4031, 0x3FC45F3060000000
  %4033 = fmul fast float %4022, 0x4022D97C80000000
  %4034 = fadd fast float %4033, 0x4012D97C80000000
  %4035 = call float @dx.op.unary.f32(i32 13, float %4034)  ; Sin(value)
  %4036 = fadd fast float %4035, 1.000000e+00
  %4037 = fmul fast float %4036, 0x3FBB2995E0000000
  %4038 = fmul fast float %4022, 0x402921FB60000000
  %4039 = fadd fast float %4038, 0x401921FB60000000
  %4040 = call float @dx.op.unary.f32(i32 13, float %4039)  ; Sin(value)
  %4041 = fadd fast float %4040, 0xBE8777A5C0000000
  %4042 = fmul fast float %4041, 0x3FB45F3060000000
  %4043 = call float @dx.op.dot4.f32(i32 56, float %4017, float %4018, float %4019, float %4020, float %4027, float %4032, float %4037, float %4042)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4044 = fmul fast float %4043, 0xBFF7154760000000
  %4045 = call float @dx.op.unary.f32(i32 21, float %4044)  ; Exp(value)
  %4046 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  br label %4047

; <label>:4047                                    ; preds = %4015, %4011
  %4048 = phi float [ %4046, %4015 ], [ 1.000000e+00, %4011 ]
  %4049 = fadd fast float %4048, -1.000000e+00
  %4050 = fmul fast float %4049, %4009
  %4051 = fadd fast float %4050, 1.000000e+00
  br label %4052

; <label>:4052                                    ; preds = %4047, %3952
  %4053 = phi float [ %4051, %4047 ], [ 1.000000e+00, %3952 ]
  %4054 = fmul fast float %4053, %3948
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 0
  %4057 = extractvalue %dx.types.CBufRet.f32 %4055, 1
  %4058 = extractvalue %dx.types.CBufRet.f32 %4055, 2
  %4059 = fadd fast float %4056, %145
  %4060 = fadd fast float %4057, %146
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4066 = extractvalue %dx.types.CBufRet.f32 %4063, 2
  %4067 = fsub fast float -0.000000e+00, %4059
  %4068 = fsub fast float -0.000000e+00, %4060
  %4069 = fsub fast float %2071, %4058
  %4070 = fadd fast float %4069, %4062
  %4071 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4067, float %4068, float %4070)  ; Dot3(ax,ay,az,bx,by,bz)
  %4072 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4064, float %4065, float %4066)  ; Dot3(ax,ay,az,bx,by,bz)
  %4073 = fdiv fast float 1.000000e+00, %4072
  %4074 = fmul fast float %4073, %4071
  %4075 = fmul fast float %4064, %4074
  %4076 = fmul fast float %4065, %4074
  %4077 = fadd fast float %4075, %4059
  %4078 = fadd fast float %4076, %4060
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4082 = fsub fast float %4077, %4080
  %4083 = fsub fast float %4078, %4081
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 2
  %4086 = extractvalue %dx.types.CBufRet.f32 %4084, 3
  %4087 = fmul fast float %4082, %4085
  %4088 = fmul fast float %4083, %4086
  %4089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.i32 %4089, 3
  %4091 = icmp eq i32 %4090, 0
  br i1 %4091, label %4097, label %4092

; <label>:4092                                    ; preds = %4052
  %4093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %4087, float %4088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = extractvalue %dx.types.ResRet.f32 %4093, 1
  %4096 = extractvalue %dx.types.ResRet.f32 %4093, 2
  br label %4102

; <label>:4097                                    ; preds = %4052
  %4098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %4087, float %4088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.ResRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.ResRet.f32 %4098, 2
  br label %4102

; <label>:4102                                    ; preds = %4097, %4092
  %4103 = phi float [ %4094, %4092 ], [ %4099, %4097 ]
  %4104 = phi float [ %4095, %4092 ], [ %4100, %4097 ]
  %4105 = phi float [ %4096, %4092 ], [ %4101, %4097 ]
  %4106 = extractvalue %dx.types.CBufRet.f32 %4061, 2
  %4107 = fmul fast float %4106, %4103
  %4108 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4109 = fsub fast float %4074, %4108
  %4110 = fsub fast float %4109, %4107
  %4111 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4110)  ; FMax(a,b)
  %4112 = fmul fast float %4111, %4104
  %4113 = call float @dx.op.binary.f32(i32 36, float %4105, float %4112)  ; FMin(a,b)
  %4114 = fmul fast float %4113, 0xBFF7154760000000
  %4115 = call float @dx.op.unary.f32(i32 21, float %4114)  ; Exp(value)
  %4116 = fmul fast float %4054, %4115
  br label %4117

; <label>:4117                                    ; preds = %4102, %3947
  %4118 = phi float [ %4116, %4102 ], [ %3948, %3947 ]
  %4119 = call float @dx.op.binary.f32(i32 36, float %4118, float %4118)  ; FMin(a,b)
  %4120 = call float @dx.op.binary.f32(i32 36, float %4118, float %4119)  ; FMin(a,b)
  %4121 = fcmp fast ogt float %4120, 0.000000e+00
  br i1 %4121, label %4122, label %4381, !dx.controlflow.hints !120

; <label>:4122                                    ; preds = %4117
  %4123 = fmul fast float %4118, %2840
  %4124 = fmul fast float %4118, %2841
  %4125 = fmul fast float %4118, %2842
  %4126 = fsub fast float %147, %1859
  %4127 = fcmp fast ogt float %4126, 0.000000e+00
  %4128 = fmul fast float %2829, 5.120000e+02
  %4129 = fmul fast float %2830, 5.120000e+02
  %4130 = fmul fast float %2831, 5.120000e+02
  %4131 = fadd fast float %4130, %147
  %4132 = fsub fast float %1859, %4131
  %4133 = fmul fast float %4132, 2.000000e+00
  %4134 = fadd fast float %4133, %4131
  %4135 = select i1 %4127, float %4134, float %4131
  %4136 = fsub fast float %4135, %147
  %4137 = call float @dx.op.dot3.f32(i32 55, float %4128, float %4129, float %4136, float %4128, float %4129, float %4136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4138 = call float @dx.op.unary.f32(i32 25, float %4137)  ; Rsqrt(value)
  %4139 = fmul fast float %4138, %4128
  %4140 = fmul fast float %4138, %4129
  %4141 = fmul fast float %4138, %4136
  %4142 = fsub fast float %1859, %147
  %4143 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4142)  ; Dot3(ax,ay,az,bx,by,bz)
  %4144 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4139, float %4140, float %4141)  ; Dot3(ax,ay,az,bx,by,bz)
  %4145 = fdiv fast float 1.000000e+00, %4144
  %4146 = fmul fast float %4145, %4143
  %4147 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4126, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4148 = fcmp fast ogt float %4147, 0.000000e+00
  %4149 = fcmp fast olt float %4147, 0.000000e+00
  %4150 = zext i1 %4148 to i32
  %4151 = zext i1 %4149 to i32
  %4152 = sub nsw i32 %4150, %4151
  %4153 = sitofp i32 %4152 to float
  %4154 = fsub fast float %4135, %1859
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4128, float %4129, float %4154, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = fcmp fast ogt float %4155, 0.000000e+00
  %4157 = fcmp fast olt float %4155, 0.000000e+00
  %4158 = zext i1 %4156 to i32
  %4159 = zext i1 %4157 to i32
  %4160 = sub nsw i32 %4158, %4159
  %4161 = sitofp i32 %4160 to float
  %4162 = fcmp fast une float %4153, %4161
  br i1 %4162, label %4163, label %4173

; <label>:4163                                    ; preds = %4122
  %4164 = fmul fast float %4146, %4141
  %4165 = fmul fast float %4146, %4140
  %4166 = fmul fast float %4146, %4139
  %4167 = fmul fast float %4166, %4166
  %4168 = fmul fast float %4165, %4165
  %4169 = fadd fast float %4167, %4168
  %4170 = fmul fast float %4164, %4164
  %4171 = fadd fast float %4169, %4170
  %4172 = call float @dx.op.unary.f32(i32 24, float %4171)  ; Sqrt(value)
  br label %4183

; <label>:4173                                    ; preds = %4122
  %4174 = icmp slt i32 %4152, 0
  br i1 %4174, label %4175, label %4183

; <label>:4175                                    ; preds = %4173
  %4176 = fsub fast float %147, %4135
  %4177 = fmul fast float %4128, %4128
  %4178 = fmul fast float %4129, %4129
  %4179 = fadd fast float %4177, %4178
  %4180 = fmul fast float %4176, %4176
  %4181 = fadd fast float %4179, %4180
  %4182 = call float @dx.op.unary.f32(i32 24, float %4181)  ; Sqrt(value)
  br label %4183

; <label>:4183                                    ; preds = %4175, %4173, %4163
  %4184 = phi float [ %4172, %4163 ], [ %4182, %4175 ], [ 0.000000e+00, %4173 ]
  %4185 = fsub fast float -0.000000e+00, %4184
  %4186 = select i1 %4127, float -0.000000e+00, float %4185
  %4187 = fmul fast float %1860, 0x3FF7154760000000
  %4188 = fmul fast float %4187, %4186
  %4189 = fmul fast float %1861, 0x3FF7154760000000
  %4190 = fmul fast float %4189, %4186
  %4191 = fmul fast float %1862, 0x3FF7154760000000
  %4192 = fmul fast float %4191, %4186
  %4193 = call float @dx.op.unary.f32(i32 21, float %4188)  ; Exp(value)
  %4194 = call float @dx.op.unary.f32(i32 21, float %4190)  ; Exp(value)
  %4195 = call float @dx.op.unary.f32(i32 21, float %4192)  ; Exp(value)
  %4196 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4197 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  %4198 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4199 = fmul fast float %4123, %4196
  %4200 = fmul fast float %4124, %4197
  %4201 = fmul fast float %4125, %4198
  %4202 = fsub fast float %2829, %2059
  %4203 = fsub fast float %2830, %2058
  %4204 = fsub fast float %2831, %2057
  %4205 = call float @dx.op.dot3.f32(i32 55, float %4202, float %4203, float %4204, float %4202, float %4203, float %4204)  ; Dot3(ax,ay,az,bx,by,bz)
  %4206 = call float @dx.op.unary.f32(i32 25, float %4205)  ; Rsqrt(value)
  %4207 = fmul fast float %4206, %4202
  %4208 = fmul fast float %4206, %4203
  %4209 = fmul fast float %4206, %4204
  %4210 = call float @dx.op.dot3.f32(i32 55, float %2829, float %2830, float %2831, float %2066, float %2067, float %2068)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = call float @dx.op.dot3.f32(i32 55, float %2056, float %2055, float %2054, float %4207, float %4208, float %4209)  ; Dot3(ax,ay,az,bx,by,bz)
  %4212 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4213 = fmul fast float %4212, %4212
  %4214 = fmul fast float %4213, %2099
  %4215 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4216 = fmul fast float %4215, %4212
  %4217 = call float @dx.op.dot3.f32(i32 55, float %2066, float %2067, float %2068, float %4207, float %4208, float %4209)  ; Dot3(ax,ay,az,bx,by,bz)
  %4218 = fmul fast float %4217, %4217
  %4219 = call float @dx.op.unary.f32(i32 6, float %4210)  ; FAbs(value)
  %4220 = fsub fast float 1.000000e+00, %2092
  %4221 = fmul fast float %2074, %2074
  %4222 = fmul fast float %4221, %4220
  %4223 = fadd fast float %4222, %2092
  %4224 = bitcast float %4223 to i32
  %4225 = ashr i32 %4224, 1
  %4226 = add nsw i32 %4225, 532487669
  %4227 = bitcast i32 %4226 to float
  %4228 = fadd fast float %4227, %2074
  %4229 = fmul fast float %2092, %4218
  %4230 = fsub fast float 1.000000e+00, %4218
  %4231 = fadd fast float %4230, %4229
  %4232 = fmul fast float %4219, %4219
  %4233 = fmul fast float %4232, %4220
  %4234 = fadd fast float %4233, %2092
  %4235 = bitcast float %4234 to i32
  %4236 = ashr i32 %4235, 1
  %4237 = add nsw i32 %4236, 532487669
  %4238 = bitcast i32 %4237 to float
  %4239 = fadd fast float %4238, %4219
  %4240 = fmul fast float %4231, %4231
  %4241 = fmul fast float %4240, %4228
  %4242 = fmul fast float %4241, %4239
  %4243 = fdiv fast float 0x3FF0A00000000000, %4242
  %4244 = fmul fast float %4243, %2092
  %4245 = fmul fast float %2199, 0x3FF9999980000000
  %4246 = fsub fast float 5.000000e+00, %4245
  %4247 = call float @dx.op.unary.f32(i32 6, float %4211)  ; FAbs(value)
  %4248 = fsub fast float 1.000000e+00, %4247
  %4249 = fmul fast float %2199, 0x41D9660740000000
  %4250 = fadd fast float %4249, 0xC1EFBF8940000000
  %4251 = bitcast float %4248 to i32
  %4252 = sitofp i32 %4251 to float
  %4253 = fmul fast float %4252, %4246
  %4254 = fadd fast float %4250, %4253
  %4255 = fptosi float %4254 to i32
  %4256 = bitcast i32 %4255 to float
  %4257 = fsub fast float 1.000000e+00, %2060
  %4258 = fsub fast float 1.000000e+00, %2061
  %4259 = fsub fast float 1.000000e+00, %2072
  %4260 = fmul fast float %4256, %4257
  %4261 = fmul fast float %4256, %4258
  %4262 = fmul fast float %4256, %4259
  %4263 = fadd fast float %4260, %2060
  %4264 = fadd fast float %4261, %2061
  %4265 = fadd fast float %4262, %2072
  br i1 %2222, label %4266, label %4289

; <label>:4266                                    ; preds = %4183
  %4267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1434, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4268 = extractvalue %dx.types.ResRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.ResRet.f32 %4267, 1
  %4270 = extractvalue %dx.types.ResRet.f32 %4267, 2
  %4271 = fadd fast float %4268, -5.000000e-01
  %4272 = fadd fast float %4269, -5.000000e-01
  %4273 = fadd fast float %4270, -5.000000e-01
  %4274 = fmul fast float %2060, 4.000000e+00
  %4275 = fmul fast float %4274, %4257
  %4276 = fmul fast float %4275, %4271
  %4277 = fmul fast float %2061, 4.000000e+00
  %4278 = fmul fast float %4277, %4258
  %4279 = fmul fast float %4278, %4272
  %4280 = fmul fast float %2072, 4.000000e+00
  %4281 = fmul fast float %4280, %4259
  %4282 = fmul fast float %4281, %4273
  %4283 = fadd fast float %4276, %4263
  %4284 = fadd fast float %4279, %4264
  %4285 = fadd fast float %4282, %4265
  %4286 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4287 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4288 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  br label %4289

; <label>:4289                                    ; preds = %4266, %4183
  %4290 = phi float [ %4286, %4266 ], [ %4263, %4183 ]
  %4291 = phi float [ %4287, %4266 ], [ %4264, %4183 ]
  %4292 = phi float [ %4288, %4266 ], [ %4265, %4183 ]
  %4293 = fmul fast float %4210, 9.843750e-01
  %4294 = fadd fast float %4293, 7.812500e-03
  %4295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %4294, float %2203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4296 = extractvalue %dx.types.ResRet.f32 %4295, 0
  %4297 = extractvalue %dx.types.ResRet.f32 %4295, 1
  %4298 = extractvalue %dx.types.ResRet.f32 %4295, 2
  %4299 = extractvalue %dx.types.ResRet.f32 %4295, 3
  %4300 = fsub fast float %4298, %4296
  %4301 = fsub fast float %4299, %4297
  %4302 = fmul fast float %4300, %2209
  %4303 = fmul fast float %4301, %2209
  %4304 = fadd fast float %4302, %4296
  %4305 = fadd fast float %4303, %4297
  %4306 = fmul fast float %4304, %2060
  %4307 = fmul fast float %4304, %2061
  %4308 = fmul fast float %4304, %2072
  %4309 = fadd fast float %4306, %4305
  %4310 = fadd fast float %4307, %4305
  %4311 = fadd fast float %4308, %4305
  br i1 %2222, label %4312, label %4335

; <label>:4312                                    ; preds = %4289
  %4313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1434, float %4210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4314 = extractvalue %dx.types.ResRet.f32 %4313, 0
  %4315 = extractvalue %dx.types.ResRet.f32 %4313, 1
  %4316 = extractvalue %dx.types.ResRet.f32 %4313, 2
  %4317 = fadd fast float %4314, -5.000000e-01
  %4318 = fadd fast float %4315, -5.000000e-01
  %4319 = fadd fast float %4316, -5.000000e-01
  %4320 = fmul fast float %2060, 4.000000e+00
  %4321 = fmul fast float %4320, %4257
  %4322 = fmul fast float %4321, %4317
  %4323 = fmul fast float %2061, 4.000000e+00
  %4324 = fmul fast float %4323, %4258
  %4325 = fmul fast float %4324, %4318
  %4326 = fmul fast float %2072, 4.000000e+00
  %4327 = fmul fast float %4326, %4259
  %4328 = fmul fast float %4327, %4319
  %4329 = fadd fast float %4322, %4309
  %4330 = fadd fast float %4325, %4310
  %4331 = fadd fast float %4328, %4311
  %4332 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4333 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4334 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  br label %4335

; <label>:4335                                    ; preds = %4312, %4289
  %4336 = phi float [ %4332, %4312 ], [ %4309, %4289 ]
  %4337 = phi float [ %4333, %4312 ], [ %4310, %4289 ]
  %4338 = phi float [ %4334, %4312 ], [ %4311, %4289 ]
  %4339 = call float @dx.op.binary.f32(i32 35, float %4337, float %4338)  ; FMax(a,b)
  %4340 = call float @dx.op.binary.f32(i32 35, float %4336, float %4339)  ; FMax(a,b)
  %4341 = fsub fast float 1.000000e+00, %4340
  %4342 = fmul fast float %4290, %4244
  %4343 = fmul fast float %4291, %4244
  %4344 = fmul fast float %4292, %4244
  %4345 = fsub fast float 1.000000e+00, %4211
  %4346 = bitcast float %4345 to i32
  %4347 = sitofp i32 %4346 to float
  %4348 = fmul fast float %4347, 5.000000e+00
  %4349 = fadd fast float %4348, 0xC1EFBF8940000000
  %4350 = fptosi float %4349 to i32
  %4351 = bitcast i32 %4350 to float
  %4352 = fmul fast float %4351, %1433
  %4353 = fmul fast float %4341, %4352
  %4354 = fmul fast float %4353, %2764
  %4355 = fmul fast float %4353, %2765
  %4356 = fmul fast float %4353, %2766
  %4357 = fadd fast float %4354, %4342
  %4358 = fadd fast float %4355, %4343
  %4359 = fadd fast float %4356, %4344
  %4360 = fmul fast float %4216, %4199
  %4361 = fmul fast float %4360, %4341
  %4362 = fmul fast float %4216, %4200
  %4363 = fmul fast float %4362, %4341
  %4364 = fmul fast float %4216, %4201
  %4365 = fmul fast float %4364, %4341
  %4366 = fmul fast float %4360, %4357
  %4367 = fmul fast float %4362, %4358
  %4368 = fmul fast float %4364, %4359
  %4369 = fadd fast float %4361, %2748
  %4370 = fmul fast float %4369, %1454
  %4371 = fadd fast float %4363, %2749
  %4372 = fmul fast float %4371, %1454
  %4373 = fadd fast float %4365, %2750
  %4374 = fmul fast float %4373, %1454
  %4375 = fadd fast float %4366, %2817
  %4376 = fmul fast float %4375, %1454
  %4377 = fadd fast float %4367, %2820
  %4378 = fmul fast float %4377, %1454
  %4379 = fadd fast float %4368, %2823
  %4380 = fmul fast float %4379, %1454
  br label %4381

; <label>:4381                                    ; preds = %4335, %4117, %2744
  %4382 = phi float [ %2818, %2744 ], [ %2818, %4117 ], [ %4376, %4335 ]
  %4383 = phi float [ %2821, %2744 ], [ %2821, %4117 ], [ %4378, %4335 ]
  %4384 = phi float [ %2824, %2744 ], [ %2824, %4117 ], [ %4380, %4335 ]
  %4385 = phi float [ %2813, %2744 ], [ %2813, %4117 ], [ %4370, %4335 ]
  %4386 = phi float [ %2814, %2744 ], [ %2814, %4117 ], [ %4372, %4335 ]
  %4387 = phi float [ %2815, %2744 ], [ %2815, %4117 ], [ %4374, %4335 ]
  %4388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.i32 %4388, 0
  %4390 = icmp eq i32 %4389, 0
  br i1 %4390, label %5065, label %4391

; <label>:4391                                    ; preds = %4381
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 2
  %4394 = extractvalue %dx.types.CBufRet.f32 %4392, 3
  %4395 = fmul fast float %4393, %89
  %4396 = fmul fast float %4394, %90
  %4397 = fptoui float %4395 to i32
  %4398 = fptoui float %4396 to i32
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = extractvalue %dx.types.CBufRet.f32 %4399, 2
  %4402 = extractvalue %dx.types.CBufRet.f32 %4399, 3
  %4403 = fadd fast float %77, -4.000000e+00
  %4404 = call float @dx.op.binary.f32(i32 35, float %4403, float 0.000000e+00)  ; FMax(a,b)
  %4405 = fadd fast float %4404, %4400
  %4406 = fmul fast float %4405, %4401
  %4407 = call float @dx.op.unary.f32(i32 23, float %4406)  ; Log(value)
  %4408 = fmul fast float %4407, %4402
  %4409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.f32 %4409, 2
  %4411 = fmul fast float %4408, %4410
  %4412 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.i32 %4413, 1
  %4415 = add i32 %4414, -1
  %4416 = uitofp i32 %4414 to float
  %4417 = fmul fast float %4416, %4412
  %4418 = fptoui float %4417 to i32
  %4419 = call i32 @dx.op.binary.i32(i32 40, i32 %4418, i32 %4415)  ; UMin(a,b)
  %4420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.i32 %4420, 2
  %4422 = extractvalue %dx.types.CBufRet.i32 %4420, 3
  %4423 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4398, i32 %4421, i32 %4397)  ; UMad(a,b,c)
  %4424 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4419, i32 %4422, i32 %4423)  ; UMad(a,b,c)
  %4425 = add nsw i32 %4389, -1
  %4426 = call i32 @dx.op.binary.i32(i32 37, i32 %4425, i32 0)  ; IMax(a,b)
  %4427 = call float @dx.op.binary.f32(i32 35, float %77, float 0.000000e+00)  ; FMax(a,b)
  %4428 = fptoui float %4427 to i32
  %4429 = lshr i32 %4428, 5
  %4430 = call i32 @dx.op.binary.i32(i32 40, i32 %4429, i32 8191)  ; UMin(a,b)
  %4431 = shl i32 %4430, 2
  %4432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.i32 %4432, 0
  %4434 = lshr i32 %4433, 16
  %4435 = and i32 %4433, 65535
  %4436 = lshr i32 %4433, 21
  %4437 = lshr i32 %4435, 5
  %4438 = call i32 @dx.op.binary.i32(i32 40, i32 %4437, i32 %4426)  ; UMin(a,b)
  %4439 = icmp ugt i32 %4436, %4438
  br i1 %4439, label %5065, label %4440

; <label>:4440                                    ; preds = %4391
  br label %4441

; <label>:4441                                    ; preds = %5055, %4440
  %4442 = phi i32 [ %5062, %5055 ], [ %4436, %4440 ]
  %4443 = phi float [ %5056, %5055 ], [ %4382, %4440 ]
  %4444 = phi float [ %5057, %5055 ], [ %4383, %4440 ]
  %4445 = phi float [ %5058, %5055 ], [ %4384, %4440 ]
  %4446 = phi float [ %5059, %5055 ], [ %4385, %4440 ]
  %4447 = phi float [ %5060, %5055 ], [ %4386, %4440 ]
  %4448 = phi float [ %5061, %5055 ], [ %4387, %4440 ]
  %4449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.i32 %4449, 0
  %4451 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4424, i32 %4450, i32 %4442)  ; UMad(a,b,c)
  %4452 = shl i32 %4451, 2
  %4453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.i32 %4453, 0
  %4455 = shl i32 %4442, 5
  %4456 = sub nsw i32 %4434, %4455
  %4457 = call i32 @dx.op.binary.i32(i32 37, i32 %4456, i32 0)  ; IMax(a,b)
  %4458 = call i32 @dx.op.binary.i32(i32 38, i32 %4457, i32 31)  ; IMin(a,b)
  %4459 = sub nsw i32 1, %4434
  %4460 = add nsw i32 %4459, %4435
  %4461 = call i32 @dx.op.binary.i32(i32 37, i32 %4460, i32 0)  ; IMax(a,b)
  %4462 = call i32 @dx.op.binary.i32(i32 38, i32 %4461, i32 32)  ; IMin(a,b)
  %4463 = and i32 %4462, 31
  %4464 = shl i32 -1, %4463
  %4465 = xor i32 %4464, -1
  %4466 = and i32 %4458, 31
  %4467 = shl i32 %4465, %4466
  %4468 = icmp eq i32 %4462, 32
  %4469 = select i1 %4468, i32 -1, i32 %4467
  %4470 = and i32 %4469, %4454
  %4471 = icmp eq i32 %4470, 0
  br i1 %4471, label %5055, label %4472

; <label>:4472                                    ; preds = %4441
  br label %4473

; <label>:4473                                    ; preds = %4607, %4472
  %4474 = phi i32 [ %4485, %4607 ], [ %4470, %4472 ]
  %4475 = phi float [ %4608, %4607 ], [ %4443, %4472 ]
  %4476 = phi float [ %4609, %4607 ], [ %4444, %4472 ]
  %4477 = phi float [ %4610, %4607 ], [ %4445, %4472 ]
  %4478 = phi float [ %4611, %4607 ], [ %4446, %4472 ]
  %4479 = phi float [ %4612, %4607 ], [ %4447, %4472 ]
  %4480 = phi float [ %4613, %4607 ], [ %4448, %4472 ]
  %4481 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4474)  ; FirstbitLo(value)
  %4482 = add i32 %4481, %4455
  %4483 = and i32 %4481, 31
  %4484 = shl i32 1, %4483
  %4485 = xor i32 %4484, %4474
  %4486 = mul i32 %4482, 112
  %4487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4486, i32 undef)  ; BufferLoad(srv,index,wot)
  %4488 = extractvalue %dx.types.ResRet.f32 %4487, 0
  %4489 = extractvalue %dx.types.ResRet.f32 %4487, 1
  %4490 = extractvalue %dx.types.ResRet.f32 %4487, 2
  %4491 = or i32 %4486, 12
  %4492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4491, i32 undef)  ; BufferLoad(srv,index,wot)
  %4493 = extractvalue %dx.types.ResRet.f32 %4492, 0
  %4494 = add i32 %4486, 16
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = extractvalue %dx.types.ResRet.f32 %4495, 1
  %4498 = extractvalue %dx.types.ResRet.f32 %4495, 2
  %4499 = add i32 %4486, 28
  %4500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4499, i32 undef)  ; BufferLoad(srv,index,wot)
  %4501 = extractvalue %dx.types.ResRet.i32 %4500, 0
  %4502 = add i32 %4486, 44
  %4503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4502, i32 undef)  ; BufferLoad(srv,index,wot)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = add i32 %4486, 48
  %4506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4505, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = extractvalue %dx.types.ResRet.f32 %4506, 1
  %4509 = extractvalue %dx.types.ResRet.f32 %4506, 2
  %4510 = extractvalue %dx.types.ResRet.f32 %4506, 3
  %4511 = add i32 %4486, 64
  %4512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4511, i32 undef)  ; BufferLoad(srv,index,wot)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4512, 2
  %4516 = extractvalue %dx.types.ResRet.f32 %4512, 3
  %4517 = add i32 %4486, 80
  %4518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4517, i32 undef)  ; BufferLoad(srv,index,wot)
  %4519 = extractvalue %dx.types.ResRet.f32 %4518, 1
  %4520 = extractvalue %dx.types.ResRet.f32 %4518, 2
  %4521 = add i32 %4486, 92
  %4522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4521, i32 undef)  ; BufferLoad(srv,index,wot)
  %4523 = extractvalue %dx.types.ResRet.i32 %4522, 0
  %4524 = call float @dx.op.dot3.f32(i32 55, float %4488, float %4489, float %4490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4525 = select i1 %207, float %4519, float %4488
  %4526 = select i1 %207, float %4524, float %4489
  %4527 = select i1 %207, float %4520, float %4490
  %4528 = and i32 %4523, 65535
  %4529 = uitofp i32 %4528 to float
  %4530 = lshr i32 %4523, 16
  %4531 = uitofp i32 %4530 to float
  %4532 = and i32 %4501, 65535
  %4533 = and i32 %4501, 50331648
  %4534 = icmp eq i32 %4533, 33554432
  %4535 = fsub fast float %4507, %145
  %4536 = fsub fast float %4508, %146
  %4537 = fsub fast float %4509, %147
  %4538 = call float @dx.op.dot3.f32(i32 55, float %4535, float %4536, float %4537, float %4535, float %4536, float %4537)  ; Dot3(ax,ay,az,bx,by,bz)
  %4539 = call float @dx.op.unary.f32(i32 24, float %4538)  ; Sqrt(value)
  %4540 = fdiv fast float 1.000000e+00, %4539
  %4541 = fmul fast float %4540, %4535
  %4542 = fmul fast float %4540, %4536
  %4543 = fmul fast float %4540, %4537
  %4544 = fadd fast float %4539, %4493
  %4545 = fdiv fast float 1.000000e+00, %4544
  %4546 = fmul float %4504, %4545
  %4547 = fmul float %4546, %4546
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  br i1 %4534, label %4549, label %4570

; <label>:4549                                    ; preds = %4473
  %4550 = fmul fast float %4515, %4496
  %4551 = fmul fast float %4515, %4497
  %4552 = fmul fast float %4515, %4498
  %4553 = fadd fast float %4535, %4550
  %4554 = fadd fast float %4536, %4551
  %4555 = fadd fast float %4537, %4552
  %4556 = call float @dx.op.dot3.f32(i32 55, float %4553, float %4554, float %4555, float %4553, float %4554, float %4555)  ; Dot3(ax,ay,az,bx,by,bz)
  %4557 = call float @dx.op.unary.f32(i32 25, float %4556)  ; Rsqrt(value)
  %4558 = fmul fast float %4557, %4553
  %4559 = fmul fast float %4557, %4554
  %4560 = fmul fast float %4557, %4555
  %4561 = fsub fast float %145, %4507
  %4562 = fsub fast float %146, %4508
  %4563 = fsub fast float %147, %4509
  %4564 = fsub fast float -0.000000e+00, %4561
  %4565 = fsub fast float -0.000000e+00, %4562
  %4566 = fsub fast float -0.000000e+00, %4563
  %4567 = call float @dx.op.dot3.f32(i32 55, float %4564, float %4565, float %4566, float %4496, float %4497, float %4498)  ; Dot3(ax,ay,az,bx,by,bz)
  %4568 = fcmp fast ogt float %4567, 0.000000e+00
  %4569 = uitofp i1 %4568 to float
  br label %4570

; <label>:4570                                    ; preds = %4549, %4473
  %4571 = phi float [ %4569, %4549 ], [ 1.000000e+00, %4473 ]
  %4572 = phi float [ %4558, %4549 ], [ %4541, %4473 ]
  %4573 = phi float [ %4559, %4549 ], [ %4542, %4473 ]
  %4574 = phi float [ %4560, %4549 ], [ %4543, %4473 ]
  %4575 = call float @dx.op.dot3.f32(i32 55, float %4496, float %4497, float %4498, float %4572, float %4573, float %4574)  ; Dot3(ax,ay,az,bx,by,bz)
  %4576 = fmul fast float %4575, %4575
  %4577 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4578 = fsub fast float 1.000000e+00, %4577
  %4579 = fmul fast float %4578, 5.000000e-01
  %4580 = fcmp fast ogt float %4575, 0.000000e+00
  %4581 = fsub fast float 1.000000e+00, %4579
  %4582 = select i1 %4580, float %4579, float %4581
  %4583 = fmul fast float %4582, %4531
  %4584 = fadd fast float %4583, %4529
  %4585 = fmul fast float %4584, 0x3EF0001000000000
  %4586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %4585, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = fmul fast float %4575, %4513
  %4589 = fadd fast float %4588, %4514
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = select i1 %4534, float 1.000000e+00, float %4590
  %4592 = select i1 %4534, float %4590, float 1.000000e+00
  %4593 = fmul fast float %4539, %4510
  %4594 = fsub fast float 1.000000e+00, %4593
  %4595 = fmul fast float %4594, %4516
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = fmul fast float %4596, %4592
  %4598 = fmul fast float %4597, 2.000000e+00
  %4599 = fsub fast float 3.000000e+00, %4598
  %4600 = fmul fast float %4587, %4571
  %4601 = fmul fast float %4597, %4597
  %4602 = fmul fast float %4601, %4600
  %4603 = fmul fast float %4602, %4599
  %4604 = call float @dx.op.binary.f32(i32 36, float %4603, float %4603)  ; FMin(a,b)
  %4605 = call float @dx.op.binary.f32(i32 36, float %4603, float %4604)  ; FMin(a,b)
  %4606 = fcmp fast ogt float %4605, 0.000000e+00
  br i1 %4606, label %4615, label %4607, !dx.controlflow.hints !121

; <label>:4607                                    ; preds = %5011, %4761, %4570
  %4608 = phi float [ %4475, %4761 ], [ %4475, %4570 ], [ %5051, %5011 ]
  %4609 = phi float [ %4476, %4761 ], [ %4476, %4570 ], [ %5052, %5011 ]
  %4610 = phi float [ %4477, %4761 ], [ %4477, %4570 ], [ %5053, %5011 ]
  %4611 = phi float [ %4478, %4761 ], [ %4478, %4570 ], [ %5045, %5011 ]
  %4612 = phi float [ %4479, %4761 ], [ %4479, %4570 ], [ %5046, %5011 ]
  %4613 = phi float [ %4480, %4761 ], [ %4480, %4570 ], [ %5047, %5011 ]
  %4614 = icmp eq i32 %4474, %4484
  br i1 %4614, label %5054, label %4473

; <label>:4615                                    ; preds = %4570
  %4616 = icmp eq i32 %4532, 255
  br i1 %4616, label %4761, label %4617, !dx.controlflow.hints !122

; <label>:4617                                    ; preds = %4615
  %4618 = mul nuw nsw i32 %4532, 176
  %4619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4618, i32 undef)  ; BufferLoad(srv,index,wot)
  %4620 = extractvalue %dx.types.ResRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.ResRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.ResRet.f32 %4619, 2
  %4623 = extractvalue %dx.types.ResRet.f32 %4619, 3
  %4624 = add nuw nsw i32 %4618, 16
  %4625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4624, i32 undef)  ; BufferLoad(srv,index,wot)
  %4626 = extractvalue %dx.types.ResRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.ResRet.f32 %4625, 1
  %4628 = add nuw nsw i32 %4618, 32
  %4629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4628, i32 undef)  ; BufferLoad(srv,index,wot)
  %4630 = extractvalue %dx.types.ResRet.f32 %4629, 0
  %4631 = extractvalue %dx.types.ResRet.f32 %4629, 1
  %4632 = extractvalue %dx.types.ResRet.f32 %4629, 2
  %4633 = add nuw nsw i32 %4618, 48
  %4634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4633, i32 undef)  ; BufferLoad(srv,index,wot)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.f32 %4634, 1
  %4637 = extractvalue %dx.types.ResRet.f32 %4634, 2
  %4638 = extractvalue %dx.types.ResRet.f32 %4634, 3
  %4639 = add nuw nsw i32 %4618, 64
  %4640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4639, i32 undef)  ; BufferLoad(srv,index,wot)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.ResRet.f32 %4640, 1
  %4643 = extractvalue %dx.types.ResRet.f32 %4640, 2
  %4644 = extractvalue %dx.types.ResRet.f32 %4640, 3
  %4645 = add nuw nsw i32 %4618, 80
  %4646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.f32 %4646, 0
  %4648 = extractvalue %dx.types.ResRet.f32 %4646, 1
  %4649 = extractvalue %dx.types.ResRet.f32 %4646, 2
  %4650 = extractvalue %dx.types.ResRet.f32 %4646, 3
  %4651 = add nuw nsw i32 %4618, 96
  %4652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4651, i32 undef)  ; BufferLoad(srv,index,wot)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = extractvalue %dx.types.ResRet.f32 %4652, 1
  %4655 = extractvalue %dx.types.ResRet.f32 %4652, 2
  %4656 = extractvalue %dx.types.ResRet.f32 %4652, 3
  %4657 = bitcast float %4627 to i32
  %4658 = fmul fast float %4632, %92
  %4659 = fmul fast float %4632, %93
  %4660 = fmul fast float %4632, %94
  %4661 = fadd fast float %4658, %145
  %4662 = fadd fast float %4659, %146
  %4663 = fadd fast float %4660, %147
  %4664 = fmul fast float %4661, %4635
  %4665 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4641, float %4664)  ; FMad(a,b,c)
  %4666 = call float @dx.op.tertiary.f32(i32 46, float %4663, float %4647, float %4665)  ; FMad(a,b,c)
  %4667 = fadd fast float %4666, %4653
  %4668 = fmul fast float %4661, %4636
  %4669 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4642, float %4668)  ; FMad(a,b,c)
  %4670 = call float @dx.op.tertiary.f32(i32 46, float %4663, float %4648, float %4669)  ; FMad(a,b,c)
  %4671 = fadd fast float %4670, %4654
  %4672 = fmul fast float %4661, %4637
  %4673 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4643, float %4672)  ; FMad(a,b,c)
  %4674 = call float @dx.op.tertiary.f32(i32 46, float %4663, float %4649, float %4673)  ; FMad(a,b,c)
  %4675 = fadd fast float %4674, %4655
  %4676 = fmul fast float %4661, %4638
  %4677 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4644, float %4676)  ; FMad(a,b,c)
  %4678 = call float @dx.op.tertiary.f32(i32 46, float %4663, float %4650, float %4677)  ; FMad(a,b,c)
  %4679 = fadd fast float %4678, %4656
  %4680 = fdiv fast float %4667, %4679
  %4681 = fdiv fast float %4671, %4679
  %4682 = fdiv fast float %4675, %4679
  %4683 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4682)  ; FMax(a,b)
  %4684 = fmul fast float %218, 0x401921FB60000000
  %4685 = call float @dx.op.unary.f32(i32 13, float %4684)  ; Sin(value)
  %4686 = call float @dx.op.unary.f32(i32 12, float %4684)  ; Cos(value)
  %4687 = fmul fast float %4686, %4631
  %4688 = call float @dx.op.tertiary.f32(i32 46, float %4685, float %4631, float 0.000000e+00)  ; FMad(a,b,c)
  %4689 = fmul fast float %4631, %4685
  %4690 = fsub fast float -0.000000e+00, %4689
  %4691 = call float @dx.op.tertiary.f32(i32 46, float %4686, float %4631, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4692

; <label>:4692                                    ; preds = %4692, %4617
  %4693 = phi float [ 0.000000e+00, %4617 ], [ %4725, %4692 ]
  %4694 = phi float [ 0.000000e+00, %4617 ], [ %4727, %4692 ]
  %4695 = phi i32 [ 0, %4617 ], [ %4728, %4692 ]
  %4696 = mul i32 %4695, 2
  %4697 = add i32 0, %4696
  %4698 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4697
  %4699 = load float, float* %4698, align 4
  %4700 = mul i32 %4695, 2
  %4701 = add i32 1, %4700
  %4702 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4701
  %4703 = load float, float* %4702, align 4
  %4704 = fmul fast float %4687, %4699
  %4705 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4690, float %4704)  ; FMad(a,b,c)
  %4706 = fmul fast float %4699, %4688
  %4707 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4691, float %4706)  ; FMad(a,b,c)
  %4708 = fadd fast float %4705, %4680
  %4709 = fadd fast float %4707, %4681
  %4710 = fmul fast float %4708, %4626
  %4711 = fmul fast float %4709, %4626
  %4712 = call float @dx.op.binary.f32(i32 35, float %4710, float %4622)  ; FMax(a,b)
  %4713 = call float @dx.op.binary.f32(i32 35, float %4711, float %4622)  ; FMax(a,b)
  %4714 = call float @dx.op.binary.f32(i32 36, float %4712, float %4623)  ; FMin(a,b)
  %4715 = call float @dx.op.binary.f32(i32 36, float %4713, float %4623)  ; FMin(a,b)
  %4716 = fadd fast float %4714, %4620
  %4717 = fadd fast float %4715, %4621
  %4718 = uitofp i32 %4657 to float
  %4719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %51, float %4716, float %4717, float %4718, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = fsub fast float %4720, %4683
  %4722 = fsub fast float %4721, %4630
  %4723 = fcmp fast ogt float %4722, 0.000000e+00
  %4724 = select i1 %4723, float 1.000000e+00, float 0.000000e+00
  %4725 = fadd fast float %4724, %4693
  %4726 = select i1 %4723, float %4722, float 0.000000e+00
  %4727 = fadd fast float %4726, %4694
  %4728 = add nuw nsw i32 %4695, 1
  %4729 = icmp eq i32 %4728, 8
  br i1 %4729, label %4730, label %4692

; <label>:4730                                    ; preds = %4692
  %4731 = fdiv fast float 1.000000e+00, %4725
  %4732 = fmul fast float %4731, %4727
  %4733 = fdiv fast float 1.000000e+00, %4683
  %4734 = fmul fast float %4732, %4733
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = call float @dx.op.binary.f32(i32 35, float %4735, float 0.000000e+00)  ; FMax(a,b)
  %4737 = fmul fast float %4725, 1.250000e-01
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fmul fast float %4738, 2.000000e+00
  %4740 = fadd fast float %4739, -1.000000e+00
  %4741 = fcmp fast ogt float %4740, 0.000000e+00
  %4742 = fcmp fast olt float %4740, 0.000000e+00
  %4743 = zext i1 %4741 to i32
  %4744 = zext i1 %4742 to i32
  %4745 = sub nsw i32 %4743, %4744
  %4746 = sitofp i32 %4745 to float
  %4747 = fmul fast float %4746, %4740
  %4748 = fsub fast float 1.000000e+00, %4747
  %4749 = fmul fast float %4748, %4748
  %4750 = fmul fast float %4749, %4748
  %4751 = fsub fast float %4748, %4750
  %4752 = fmul fast float %4751, %4736
  %4753 = fsub fast float 1.000000e+00, %4750
  %4754 = fsub fast float %4753, %4752
  %4755 = fmul fast float %4746, 5.000000e-01
  %4756 = fmul fast float %4755, %4754
  %4757 = fsub fast float -5.000000e-01, %4756
  %4758 = fmul fast float %4757, %4591
  %4759 = fadd fast float %4758, 1.000000e+00
  %4760 = fmul fast float %4759, %4603
  br label %4761

; <label>:4761                                    ; preds = %4730, %4615
  %4762 = phi float [ %4760, %4730 ], [ %4603, %4615 ]
  %4763 = call float @dx.op.binary.f32(i32 36, float %4762, float %4762)  ; FMin(a,b)
  %4764 = call float @dx.op.binary.f32(i32 36, float %4762, float %4763)  ; FMin(a,b)
  %4765 = fcmp fast ogt float %4764, 0.000000e+00
  br i1 %4765, label %4766, label %4607, !dx.controlflow.hints !123

; <label>:4766                                    ; preds = %4761
  %4767 = fmul fast float %4762, %4525
  %4768 = fmul fast float %4762, %4526
  %4769 = fmul fast float %4762, %4527
  %4770 = fsub fast float %4509, %1859
  %4771 = fcmp fast ogt float %4770, 0.000000e+00
  %4772 = fsub fast float %147, %1859
  %4773 = fcmp fast ogt float %4772, 0.000000e+00
  %4774 = xor i1 %4773, %4771
  %4775 = fsub fast float %1859, %4509
  %4776 = fmul fast float %4775, 2.000000e+00
  %4777 = fadd fast float %4776, %4509
  %4778 = select i1 %4774, float %4509, float %4777
  %4779 = fsub fast float %4778, %147
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4535, float %4536, float %4779, float %4535, float %4536, float %4779)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = call float @dx.op.unary.f32(i32 25, float %4780)  ; Rsqrt(value)
  %4782 = fmul fast float %4781, %4535
  %4783 = fmul fast float %4781, %4536
  %4784 = fmul fast float %4781, %4779
  %4785 = fsub fast float %1859, %147
  %4786 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4785)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4782, float %4783, float %4784)  ; Dot3(ax,ay,az,bx,by,bz)
  %4788 = fdiv fast float 1.000000e+00, %4787
  %4789 = fmul fast float %4788, %4786
  %4790 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4772, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4791 = fcmp fast ogt float %4790, 0.000000e+00
  %4792 = fcmp fast olt float %4790, 0.000000e+00
  %4793 = zext i1 %4791 to i32
  %4794 = zext i1 %4792 to i32
  %4795 = sub nsw i32 %4793, %4794
  %4796 = sitofp i32 %4795 to float
  %4797 = fsub fast float %4778, %1859
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4535, float %4536, float %4797, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = fcmp fast ogt float %4798, 0.000000e+00
  %4800 = fcmp fast olt float %4798, 0.000000e+00
  %4801 = zext i1 %4799 to i32
  %4802 = zext i1 %4800 to i32
  %4803 = sub nsw i32 %4801, %4802
  %4804 = sitofp i32 %4803 to float
  %4805 = fcmp fast une float %4796, %4804
  br i1 %4805, label %4806, label %4816

; <label>:4806                                    ; preds = %4766
  %4807 = fmul fast float %4789, %4784
  %4808 = fmul fast float %4789, %4783
  %4809 = fmul fast float %4789, %4782
  %4810 = fmul fast float %4809, %4809
  %4811 = fmul fast float %4808, %4808
  %4812 = fadd fast float %4810, %4811
  %4813 = fmul fast float %4807, %4807
  %4814 = fadd fast float %4812, %4813
  %4815 = call float @dx.op.unary.f32(i32 24, float %4814)  ; Sqrt(value)
  br label %4828

; <label>:4816                                    ; preds = %4766
  %4817 = icmp slt i32 %4795, 0
  br i1 %4817, label %4818, label %4828

; <label>:4818                                    ; preds = %4816
  %4819 = fsub fast float %145, %4507
  %4820 = fsub fast float %146, %4508
  %4821 = fsub fast float %147, %4778
  %4822 = fmul fast float %4819, %4819
  %4823 = fmul fast float %4820, %4820
  %4824 = fadd fast float %4822, %4823
  %4825 = fmul fast float %4821, %4821
  %4826 = fadd fast float %4824, %4825
  %4827 = call float @dx.op.unary.f32(i32 24, float %4826)  ; Sqrt(value)
  br label %4828

; <label>:4828                                    ; preds = %4818, %4816, %4806
  %4829 = phi float [ %4815, %4806 ], [ %4827, %4818 ], [ 0.000000e+00, %4816 ]
  %4830 = and i1 %4773, %4771
  %4831 = fsub fast float -0.000000e+00, %4829
  %4832 = select i1 %4830, float -0.000000e+00, float %4831
  %4833 = fmul fast float %1860, 0x3FF7154760000000
  %4834 = fmul fast float %4833, %4832
  %4835 = fmul fast float %1861, 0x3FF7154760000000
  %4836 = fmul fast float %4835, %4832
  %4837 = fmul fast float %1862, 0x3FF7154760000000
  %4838 = fmul fast float %4837, %4832
  %4839 = call float @dx.op.unary.f32(i32 21, float %4834)  ; Exp(value)
  %4840 = call float @dx.op.unary.f32(i32 21, float %4836)  ; Exp(value)
  %4841 = call float @dx.op.unary.f32(i32 21, float %4838)  ; Exp(value)
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4845 = fmul fast float %4767, %4842
  %4846 = fmul fast float %4768, %4843
  %4847 = fmul fast float %4769, %4844
  %4848 = fsub fast float %4541, %2059
  %4849 = fsub fast float %4542, %2058
  %4850 = fsub fast float %4543, %2057
  %4851 = call float @dx.op.dot3.f32(i32 55, float %4848, float %4849, float %4850, float %4848, float %4849, float %4850)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = call float @dx.op.unary.f32(i32 25, float %4851)  ; Rsqrt(value)
  %4853 = fmul fast float %4852, %4848
  %4854 = fmul fast float %4852, %4849
  %4855 = fmul fast float %4852, %4850
  %4856 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4542, float %4543, float %2066, float %2067, float %2068)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = call float @dx.op.dot3.f32(i32 55, float %2056, float %2055, float %2054, float %4853, float %4854, float %4855)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4859 = fmul fast float %4858, %4548
  %4860 = fmul fast float %4858, %4858
  %4861 = fmul fast float %4860, %2099
  %4862 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4863 = fmul fast float %4859, %4862
  %4864 = bitcast float %4538 to i32
  %4865 = ashr i32 %4864, 1
  %4866 = sub nsw i32 1597463007, %4865
  %4867 = bitcast i32 %4866 to float
  %4868 = fmul fast float %4867, %4535
  %4869 = fmul fast float %4867, %4536
  %4870 = fmul fast float %4867, %4537
  %4871 = fsub fast float %4868, %2059
  %4872 = fsub fast float %4869, %2058
  %4873 = fsub fast float %4870, %2057
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4871, float %4872, float %4873, float %4871, float %4872, float %4873)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = call float @dx.op.unary.f32(i32 25, float %4874)  ; Rsqrt(value)
  %4876 = fmul fast float %4871, %4875
  %4877 = fmul fast float %4872, %4875
  %4878 = fmul fast float %4873, %4875
  %4879 = call float @dx.op.dot3.f32(i32 55, float %2066, float %2067, float %2068, float %4876, float %4877, float %4878)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = fmul fast float %4879, %4879
  %4881 = call float @dx.op.unary.f32(i32 6, float %4856)  ; FAbs(value)
  %4882 = fsub fast float 1.000000e+00, %2092
  %4883 = fmul fast float %2074, %2074
  %4884 = fmul fast float %4883, %4882
  %4885 = fadd fast float %4884, %2092
  %4886 = bitcast float %4885 to i32
  %4887 = ashr i32 %4886, 1
  %4888 = add nsw i32 %4887, 532487669
  %4889 = bitcast i32 %4888 to float
  %4890 = fadd fast float %4889, %2074
  %4891 = fmul fast float %2092, %4880
  %4892 = fsub fast float 1.000000e+00, %4880
  %4893 = fadd fast float %4892, %4891
  %4894 = fmul fast float %4881, %4881
  %4895 = fmul fast float %4894, %4882
  %4896 = fadd fast float %4895, %2092
  %4897 = bitcast float %4896 to i32
  %4898 = ashr i32 %4897, 1
  %4899 = add nsw i32 %4898, 532487669
  %4900 = bitcast i32 %4899 to float
  %4901 = fadd fast float %4900, %4881
  %4902 = fmul fast float %4893, %4893
  %4903 = fmul fast float %4902, %4890
  %4904 = fmul fast float %4903, %4901
  %4905 = fdiv fast float 1.000000e+00, %4904
  %4906 = bitcast float %2092 to i32
  %4907 = sitofp i32 %4906 to float
  %4908 = fmul fast float %4907, 0x3FE7F73180000000
  %4909 = fadd fast float %4908, 0x41AFE27C40000000
  %4910 = fptosi float %4909 to i32
  %4911 = bitcast i32 %4910 to float
  %4912 = fmul fast float %4504, 0x3FD80E9D60000000
  %4913 = fmul fast float %4912, %4867
  %4914 = fadd fast float %4911, %4913
  %4915 = bitcast float %4914 to i32
  %4916 = sub nsw i32 2129859010, %4915
  %4917 = bitcast i32 %4916 to float
  %4918 = fmul fast float %2092, %4905
  %4919 = fmul fast float %4918, %4911
  %4920 = fmul fast float %4919, %4917
  %4921 = fmul fast float %2199, 0x3FF9999980000000
  %4922 = fsub fast float 5.000000e+00, %4921
  %4923 = call float @dx.op.unary.f32(i32 6, float %4857)  ; FAbs(value)
  %4924 = fsub fast float 1.000000e+00, %4923
  %4925 = fmul fast float %2199, 0x41D9660740000000
  %4926 = fadd fast float %4925, 0xC1EFBF8940000000
  %4927 = bitcast float %4924 to i32
  %4928 = sitofp i32 %4927 to float
  %4929 = fmul fast float %4928, %4922
  %4930 = fadd fast float %4926, %4929
  %4931 = fptosi float %4930 to i32
  %4932 = bitcast i32 %4931 to float
  %4933 = fsub fast float 1.000000e+00, %2060
  %4934 = fsub fast float 1.000000e+00, %2061
  %4935 = fsub fast float 1.000000e+00, %2072
  %4936 = fmul fast float %4932, %4933
  %4937 = fmul fast float %4932, %4934
  %4938 = fmul fast float %4932, %4935
  %4939 = fadd fast float %4936, %2060
  %4940 = fadd fast float %4937, %2061
  %4941 = fadd fast float %4938, %2072
  br i1 %2222, label %4942, label %4965

; <label>:4942                                    ; preds = %4828
  %4943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1434, float %4923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 0
  %4945 = extractvalue %dx.types.ResRet.f32 %4943, 1
  %4946 = extractvalue %dx.types.ResRet.f32 %4943, 2
  %4947 = fadd fast float %4944, -5.000000e-01
  %4948 = fadd fast float %4945, -5.000000e-01
  %4949 = fadd fast float %4946, -5.000000e-01
  %4950 = fmul fast float %2060, 4.000000e+00
  %4951 = fmul fast float %4950, %4933
  %4952 = fmul fast float %4951, %4947
  %4953 = fmul fast float %2061, 4.000000e+00
  %4954 = fmul fast float %4953, %4934
  %4955 = fmul fast float %4954, %4948
  %4956 = fmul fast float %2072, 4.000000e+00
  %4957 = fmul fast float %4956, %4935
  %4958 = fmul fast float %4957, %4949
  %4959 = fadd fast float %4952, %4939
  %4960 = fadd fast float %4955, %4940
  %4961 = fadd fast float %4958, %4941
  %4962 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4963 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  br label %4965

; <label>:4965                                    ; preds = %4942, %4828
  %4966 = phi float [ %4962, %4942 ], [ %4939, %4828 ]
  %4967 = phi float [ %4963, %4942 ], [ %4940, %4828 ]
  %4968 = phi float [ %4964, %4942 ], [ %4941, %4828 ]
  %4969 = fmul fast float %4856, 9.843750e-01
  %4970 = fadd fast float %4969, 7.812500e-03
  %4971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %4970, float %2203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4972 = extractvalue %dx.types.ResRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.ResRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.ResRet.f32 %4971, 2
  %4975 = extractvalue %dx.types.ResRet.f32 %4971, 3
  %4976 = fsub fast float %4974, %4972
  %4977 = fsub fast float %4975, %4973
  %4978 = fmul fast float %4976, %2209
  %4979 = fmul fast float %4977, %2209
  %4980 = fadd fast float %4978, %4972
  %4981 = fadd fast float %4979, %4973
  %4982 = fmul fast float %4980, %2060
  %4983 = fmul fast float %4980, %2061
  %4984 = fmul fast float %4980, %2072
  %4985 = fadd fast float %4982, %4981
  %4986 = fadd fast float %4983, %4981
  %4987 = fadd fast float %4984, %4981
  br i1 %2222, label %4988, label %5011

; <label>:4988                                    ; preds = %4965
  %4989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1434, float %4856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4990 = extractvalue %dx.types.ResRet.f32 %4989, 0
  %4991 = extractvalue %dx.types.ResRet.f32 %4989, 1
  %4992 = extractvalue %dx.types.ResRet.f32 %4989, 2
  %4993 = fadd fast float %4990, -5.000000e-01
  %4994 = fadd fast float %4991, -5.000000e-01
  %4995 = fadd fast float %4992, -5.000000e-01
  %4996 = fmul fast float %2060, 4.000000e+00
  %4997 = fmul fast float %4996, %4933
  %4998 = fmul fast float %4997, %4993
  %4999 = fmul fast float %2061, 4.000000e+00
  %5000 = fmul fast float %4999, %4934
  %5001 = fmul fast float %5000, %4994
  %5002 = fmul fast float %2072, 4.000000e+00
  %5003 = fmul fast float %5002, %4935
  %5004 = fmul fast float %5003, %4995
  %5005 = fadd fast float %4998, %4985
  %5006 = fadd fast float %5001, %4986
  %5007 = fadd fast float %5004, %4987
  %5008 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5009 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5010 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  br label %5011

; <label>:5011                                    ; preds = %4988, %4965
  %5012 = phi float [ %5008, %4988 ], [ %4985, %4965 ]
  %5013 = phi float [ %5009, %4988 ], [ %4986, %4965 ]
  %5014 = phi float [ %5010, %4988 ], [ %4987, %4965 ]
  %5015 = call float @dx.op.binary.f32(i32 35, float %5013, float %5014)  ; FMax(a,b)
  %5016 = call float @dx.op.binary.f32(i32 35, float %5012, float %5015)  ; FMax(a,b)
  %5017 = fsub fast float 1.000000e+00, %5016
  %5018 = fmul fast float %4966, %4920
  %5019 = fmul fast float %4967, %4920
  %5020 = fmul fast float %4968, %4920
  %5021 = fsub fast float 1.000000e+00, %4857
  %5022 = bitcast float %5021 to i32
  %5023 = sitofp i32 %5022 to float
  %5024 = fmul fast float %5023, 5.000000e+00
  %5025 = fadd fast float %5024, 0xC1EFBF8940000000
  %5026 = fptosi float %5025 to i32
  %5027 = bitcast i32 %5026 to float
  %5028 = fmul fast float %5027, %1433
  %5029 = fmul fast float %5017, %5028
  %5030 = fmul fast float %5029, %2764
  %5031 = fmul fast float %5029, %2765
  %5032 = fmul fast float %5029, %2766
  %5033 = fadd fast float %5030, %5018
  %5034 = fadd fast float %5031, %5019
  %5035 = fadd fast float %5032, %5020
  %5036 = fmul fast float %4845, %1454
  %5037 = fmul fast float %5036, %4863
  %5038 = fmul fast float %5037, %5017
  %5039 = fmul fast float %4846, %1454
  %5040 = fmul fast float %5039, %4863
  %5041 = fmul fast float %5040, %5017
  %5042 = fmul fast float %4847, %1454
  %5043 = fmul fast float %5042, %4863
  %5044 = fmul fast float %5043, %5017
  %5045 = fadd fast float %5038, %4478
  %5046 = fadd fast float %5041, %4479
  %5047 = fadd fast float %5044, %4480
  %5048 = fmul fast float %5037, %5033
  %5049 = fmul fast float %5040, %5034
  %5050 = fmul fast float %5043, %5035
  %5051 = fadd fast float %5048, %4475
  %5052 = fadd fast float %5049, %4476
  %5053 = fadd fast float %5050, %4477
  br label %4607

; <label>:5054                                    ; preds = %4607
  br label %5055

; <label>:5055                                    ; preds = %5054, %4441
  %5056 = phi float [ %4443, %4441 ], [ %4608, %5054 ]
  %5057 = phi float [ %4444, %4441 ], [ %4609, %5054 ]
  %5058 = phi float [ %4445, %4441 ], [ %4610, %5054 ]
  %5059 = phi float [ %4446, %4441 ], [ %4611, %5054 ]
  %5060 = phi float [ %4447, %4441 ], [ %4612, %5054 ]
  %5061 = phi float [ %4448, %4441 ], [ %4613, %5054 ]
  %5062 = add i32 %4442, 1
  %5063 = icmp ugt i32 %5062, %4438
  br i1 %5063, label %5064, label %4441

; <label>:5064                                    ; preds = %5055
  br label %5065

; <label>:5065                                    ; preds = %5064, %4391, %4381
  %5066 = phi float [ %4382, %4381 ], [ %4382, %4391 ], [ %5056, %5064 ]
  %5067 = phi float [ %4383, %4381 ], [ %4383, %4391 ], [ %5057, %5064 ]
  %5068 = phi float [ %4384, %4381 ], [ %4384, %4391 ], [ %5058, %5064 ]
  %5069 = phi float [ %4385, %4381 ], [ %4385, %4391 ], [ %5059, %5064 ]
  %5070 = phi float [ %4386, %4381 ], [ %4386, %4391 ], [ %5060, %5064 ]
  %5071 = phi float [ %4387, %4381 ], [ %4387, %4391 ], [ %5061, %5064 ]
  %5072 = fmul fast float %1454, %1454
  %5073 = fmul fast float %5072, %2790
  %5074 = fmul fast float %5072, %2791
  %5075 = fmul fast float %5072, %2792
  %5076 = fadd fast float %5073, 1.000000e+00
  %5077 = fadd fast float %5074, 1.000000e+00
  %5078 = fadd fast float %5075, 1.000000e+00
  %5079 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5077, float %5078, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = fsub fast float 1.000000e+00, %5079
  %5081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5082 = extractvalue %dx.types.CBufRet.f32 %5081, 0
  %5083 = fmul fast float %5082, %2796
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 3
  %5086 = fsub fast float 1.000000e+00, %1429
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = fadd fast float %5071, %1428
  %5089 = fmul fast float %5088, %1429
  %5090 = fmul fast float %5087, %5085
  %5091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.f32 %5091, 3
  %5093 = fmul fast float %5069, %2063
  %5094 = fmul fast float %5070, %2064
  %5095 = fmul fast float %5071, %2065
  %5096 = fcmp fast ogt float %77, %167
  %5097 = and i1 %5096, %1865
  %5098 = or i1 %1871, %5097
  %5099 = icmp eq i32 %1864, 2
  %5100 = fcmp fast ole float %77, %167
  %5101 = and i1 %5100, %5099
  %5102 = or i1 %5101, %5098
  br i1 %5097, label %5103, label %5360

; <label>:5103                                    ; preds = %5065
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 2
  %5106 = extractvalue %dx.types.CBufRet.f32 %5104, 3
  %5107 = fmul fast float %5105, %89
  %5108 = fmul fast float %5106, %90
  %5109 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5110 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5111 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %5109, float %5110, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.f32 %5111, 2
  %5115 = extractvalue %dx.types.ResRet.f32 %5111, 3
  %5116 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %5109, float %5110, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5117 = extractvalue %dx.types.ResRet.f32 %5116, 0
  %5118 = extractvalue %dx.types.ResRet.f32 %5116, 1
  %5119 = extractvalue %dx.types.ResRet.f32 %5116, 2
  %5120 = extractvalue %dx.types.ResRet.f32 %5116, 3
  %5121 = call float @dx.op.binary.f32(i32 35, float %5113, float %5114)  ; FMax(a,b)
  %5122 = call float @dx.op.binary.f32(i32 35, float %5112, float %5121)  ; FMax(a,b)
  %5123 = call float @dx.op.binary.f32(i32 35, float %5122, float %5115)  ; FMax(a,b)
  %5124 = call float @dx.op.binary.f32(i32 36, float %5118, float %5119)  ; FMin(a,b)
  %5125 = call float @dx.op.binary.f32(i32 36, float %5117, float %5124)  ; FMin(a,b)
  %5126 = call float @dx.op.binary.f32(i32 36, float %5125, float %5120)  ; FMin(a,b)
  %5127 = fmul fast float %5123, 2.550000e+02
  %5128 = fadd fast float %5127, 0x3F70101020000000
  %5129 = fptoui float %5128 to i32
  %5130 = fmul fast float %5126, 2.550000e+02
  %5131 = fadd fast float %5130, 0x3F70101020000000
  %5132 = fptoui float %5131 to i32
  %5133 = icmp ult i32 %5129, %5132
  br i1 %5133, label %5134, label %5302

; <label>:5134                                    ; preds = %5103
  %5135 = fcmp fast ogt float %76, 9.843750e-01
  %5136 = fadd fast float %77, -4.000000e+00
  %5137 = select i1 %5135, float -4.000000e+00, float %5136
  %5138 = call float @dx.op.binary.f32(i32 35, float %5137, float 0.000000e+00)  ; FMax(a,b)
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 0
  %5141 = fadd fast float %5140, %5138
  %5142 = extractvalue %dx.types.CBufRet.f32 %5139, 2
  %5143 = fmul fast float %5141, %5142
  %5144 = call float @dx.op.unary.f32(i32 23, float %5143)  ; Log(value)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5139, 3
  %5146 = fmul fast float %5145, %5144
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 2
  %5149 = fmul fast float %5146, %5148
  %5150 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5151 = uitofp i32 %5129 to float
  %5152 = uitofp i32 %5132 to float
  %5153 = fadd fast float %5151, 5.000000e-01
  %5154 = fadd fast float %5152, 5.000000e-01
  %5155 = fmul fast float %5148, %5153
  %5156 = fmul fast float %5148, %5154
  %5157 = fadd fast float %5155, 0x3F0FFB4800000000
  %5158 = fadd fast float %5156, 0xBF0FFB4800000000
  %5159 = call float @dx.op.binary.f32(i32 35, float %5150, float %5157)  ; FMax(a,b)
  %5160 = call float @dx.op.binary.f32(i32 36, float %5159, float %5158)  ; FMin(a,b)
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5161, 2
  %5164 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5165 = fmul fast float %5162, %5160
  %5166 = fadd fast float %5164, %5165
  %5167 = fadd fast float %5164, %5163
  %5168 = fsub fast float %5162, %5163
  %5169 = fadd fast float %5168, %5164
  %5170 = call float @dx.op.binary.f32(i32 35, float %5166, float %5167)  ; FMax(a,b)
  %5171 = call float @dx.op.binary.f32(i32 36, float %5170, float %5169)  ; FMin(a,b)
  %5172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %5109, float %5110, float %5171, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5173 = extractvalue %dx.types.ResRet.f32 %5172, 0
  %5174 = extractvalue %dx.types.ResRet.f32 %5172, 1
  %5175 = extractvalue %dx.types.ResRet.f32 %5172, 2
  %5176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5177 = extractvalue %dx.types.CBufRet.i32 %5176, 0
  %5178 = extractvalue %dx.types.CBufRet.i32 %5176, 1
  %5179 = uitofp i32 %5177 to float
  %5180 = uitofp i32 %5178 to float
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 0
  %5183 = extractvalue %dx.types.CBufRet.f32 %5181, 1
  %5184 = fmul fast float %5179, %5109
  %5185 = fmul fast float %5180, %5110
  %5186 = fadd fast float %5184, -5.000000e-01
  %5187 = fadd fast float %5185, -5.000000e-01
  %5188 = call float @dx.op.unary.f32(i32 22, float %5186)  ; Frc(value)
  %5189 = call float @dx.op.unary.f32(i32 22, float %5187)  ; Frc(value)
  %5190 = fmul fast float %5188, %5188
  %5191 = fmul fast float %5190, %5188
  %5192 = fsub fast float 3.000000e+00, %5188
  %5193 = fmul fast float %5190, %5192
  %5194 = fmul fast float %5188, 3.000000e+00
  %5195 = fmul fast float %5191, 3.000000e+00
  %5196 = fmul fast float %5190, 6.000000e+00
  %5197 = fsub fast float %5195, %5196
  %5198 = fadd fast float %5197, 4.000000e+00
  %5199 = fmul fast float %5198, 0x3FC5555560000000
  %5200 = fmul fast float %5191, -3.000000e+00
  %5201 = fadd fast float %5190, %5188
  %5202 = fmul fast float %5201, 3.000000e+00
  %5203 = fadd fast float %5200, 1.000000e+00
  %5204 = fadd fast float %5203, %5202
  %5205 = fmul fast float %5191, 0x3FC5555560000000
  %5206 = fmul fast float %5189, %5189
  %5207 = fmul fast float %5206, %5189
  %5208 = fsub fast float 3.000000e+00, %5189
  %5209 = fmul fast float %5206, %5208
  %5210 = fmul fast float %5189, 3.000000e+00
  %5211 = fmul fast float %5207, 3.000000e+00
  %5212 = fmul fast float %5206, 6.000000e+00
  %5213 = fsub fast float %5211, %5212
  %5214 = fadd fast float %5213, 4.000000e+00
  %5215 = fmul fast float %5214, 0x3FC5555560000000
  %5216 = fmul fast float %5207, -3.000000e+00
  %5217 = fadd fast float %5206, %5189
  %5218 = fmul fast float %5217, 3.000000e+00
  %5219 = fadd fast float %5216, 1.000000e+00
  %5220 = fadd fast float %5219, %5218
  %5221 = fmul fast float %5207, 0x3FC5555560000000
  %5222 = fadd fast float %5188, 1.000000e+00
  %5223 = fsub fast float 1.000000e+00, %5194
  %5224 = fadd fast float %5223, %5193
  %5225 = fadd fast float %5224, %5198
  %5226 = fmul fast float %5225, 0x3FC5555560000000
  %5227 = fdiv fast float %5199, %5226
  %5228 = fsub fast float %5222, %5227
  %5229 = fsub fast float 1.000000e+00, %5188
  %5230 = fadd fast float %5204, %5191
  %5231 = fmul fast float %5230, 0x3FC5555560000000
  %5232 = fdiv fast float %5205, %5231
  %5233 = fadd fast float %5229, %5232
  %5234 = fadd fast float %5189, 1.000000e+00
  %5235 = fsub fast float 1.000000e+00, %5210
  %5236 = fadd fast float %5235, %5209
  %5237 = fadd fast float %5236, %5214
  %5238 = fmul fast float %5237, 0x3FC5555560000000
  %5239 = fdiv fast float %5215, %5238
  %5240 = fsub fast float %5234, %5239
  %5241 = fsub fast float 1.000000e+00, %5189
  %5242 = fadd fast float %5220, %5207
  %5243 = fmul fast float %5242, 0x3FC5555560000000
  %5244 = fdiv fast float %5221, %5243
  %5245 = fadd fast float %5244, %5241
  %5246 = fmul fast float %5228, %5182
  %5247 = fsub fast float %5109, %5246
  %5248 = fmul fast float %5233, %5182
  %5249 = fadd fast float %5248, %5109
  %5250 = fmul fast float %5245, %5183
  %5251 = fadd fast float %5250, %5110
  %5252 = fmul fast float %5240, %5183
  %5253 = fsub fast float %5110, %5252
  %5254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5247, float %5253, float %5171, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5255 = extractvalue %dx.types.ResRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.ResRet.f32 %5254, 1
  %5257 = extractvalue %dx.types.ResRet.f32 %5254, 2
  %5258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5249, float %5253, float %5171, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5259 = extractvalue %dx.types.ResRet.f32 %5258, 0
  %5260 = extractvalue %dx.types.ResRet.f32 %5258, 1
  %5261 = extractvalue %dx.types.ResRet.f32 %5258, 2
  %5262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5247, float %5251, float %5171, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5263 = extractvalue %dx.types.ResRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.ResRet.f32 %5262, 1
  %5265 = extractvalue %dx.types.ResRet.f32 %5262, 2
  %5266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5249, float %5251, float %5171, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5267 = extractvalue %dx.types.ResRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.ResRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.ResRet.f32 %5266, 2
  %5270 = fsub fast float %5263, %5255
  %5271 = fsub fast float %5264, %5256
  %5272 = fsub fast float %5265, %5257
  %5273 = fmul fast float %5270, %5243
  %5274 = fmul fast float %5271, %5243
  %5275 = fmul fast float %5272, %5243
  %5276 = fadd fast float %5273, %5255
  %5277 = fadd fast float %5274, %5256
  %5278 = fadd fast float %5275, %5257
  %5279 = fsub fast float %5267, %5259
  %5280 = fsub fast float %5268, %5260
  %5281 = fsub fast float %5269, %5261
  %5282 = fmul fast float %5279, %5243
  %5283 = fmul fast float %5280, %5243
  %5284 = fmul fast float %5281, %5243
  %5285 = fsub fast float %5259, %5276
  %5286 = fadd fast float %5285, %5282
  %5287 = fsub fast float %5260, %5277
  %5288 = fadd fast float %5287, %5283
  %5289 = fsub fast float %5261, %5278
  %5290 = fadd fast float %5289, %5284
  %5291 = fmul fast float %5286, %5231
  %5292 = fmul fast float %5288, %5231
  %5293 = fmul fast float %5290, %5231
  %5294 = fadd fast float %5291, %5276
  %5295 = fadd fast float %5292, %5277
  %5296 = fadd fast float %5293, %5278
  %5297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5298 = extractvalue %dx.types.CBufRet.f32 %5297, 1
  %5299 = fmul fast float %5294, %5298
  %5300 = fmul fast float %5295, %5298
  %5301 = fmul fast float %5296, %5298
  br label %5302

; <label>:5302                                    ; preds = %5134, %5103
  %5303 = phi float [ %5173, %5134 ], [ 1.000000e+00, %5103 ]
  %5304 = phi float [ %5174, %5134 ], [ 1.000000e+00, %5103 ]
  %5305 = phi float [ %5175, %5134 ], [ 1.000000e+00, %5103 ]
  %5306 = phi float [ %5299, %5134 ], [ 0.000000e+00, %5103 ]
  %5307 = phi float [ %5300, %5134 ], [ 0.000000e+00, %5103 ]
  %5308 = phi float [ %5301, %5134 ], [ 0.000000e+00, %5103 ]
  %5309 = fmul fast float %5306, %5080
  %5310 = fmul fast float %5307, %5080
  %5311 = fmul fast float %5308, %5080
  %5312 = call float @dx.op.dot3.f32(i32 55, float %5303, float %5304, float %5305, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = select i1 %207, float %5312, float %5303
  %5315 = select i1 %207, float %5312, float %5304
  %5316 = select i1 %207, float 1.000000e+00, float %5305
  %5317 = select i1 %207, float %5313, float %5309
  %5318 = select i1 %207, float 0.000000e+00, float %5310
  %5319 = select i1 %207, float 0.000000e+00, float %5311
  %5320 = fmul fast float %5314, %5093
  %5321 = fmul fast float %5315, %5094
  %5322 = fmul fast float %5316, %5095
  %5323 = fadd fast float %5320, %5317
  %5324 = fadd fast float %5321, %5318
  %5325 = fadd fast float %5319, %5322
  %5326 = fmul fast float %5314, %5066
  %5327 = fmul fast float %5315, %5067
  %5328 = fmul fast float %5316, %5068
  %5329 = fmul fast float %115, %5105
  %5330 = fmul fast float %117, %5106
  %5331 = fsub fast float 1.000000e+00, %5329
  %5332 = fsub fast float 1.000000e+00, %5330
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 0
  %5335 = extractvalue %dx.types.CBufRet.f32 %5333, 1
  %5336 = extractvalue %dx.types.CBufRet.f32 %5333, 2
  %5337 = fmul fast float %5331, %5334
  %5338 = fmul fast float %5331, %5335
  %5339 = fmul fast float %5331, %5336
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 0
  %5342 = extractvalue %dx.types.CBufRet.f32 %5340, 1
  %5343 = extractvalue %dx.types.CBufRet.f32 %5340, 2
  %5344 = fmul fast float %5332, %5341
  %5345 = fmul fast float %5332, %5342
  %5346 = fmul fast float %5332, %5343
  %5347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5348 = extractvalue %dx.types.CBufRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.CBufRet.f32 %5347, 1
  %5350 = extractvalue %dx.types.CBufRet.f32 %5347, 2
  %5351 = fadd fast float %5344, %5348
  %5352 = fadd fast float %5351, %5337
  %5353 = fadd fast float %5345, %5349
  %5354 = fadd fast float %5353, %5338
  %5355 = fadd fast float %5346, %5350
  %5356 = fadd fast float %5355, %5339
  %5357 = fmul fast float %5352, %167
  %5358 = fmul fast float %5354, %167
  %5359 = fmul fast float %5356, %167
  br label %5360

; <label>:5360                                    ; preds = %5302, %5065
  %5361 = phi float [ %5357, %5302 ], [ %145, %5065 ]
  %5362 = phi float [ %5358, %5302 ], [ %146, %5065 ]
  %5363 = phi float [ %5359, %5302 ], [ %147, %5065 ]
  %5364 = phi float [ %167, %5302 ], [ %77, %5065 ]
  %5365 = phi float [ %5323, %5302 ], [ %5093, %5065 ]
  %5366 = phi float [ %5324, %5302 ], [ %5094, %5065 ]
  %5367 = phi float [ %5325, %5302 ], [ %5095, %5065 ]
  %5368 = phi float [ %5326, %5302 ], [ %5066, %5065 ]
  %5369 = phi float [ %5327, %5302 ], [ %5067, %5065 ]
  %5370 = phi float [ %5328, %5302 ], [ %5068, %5065 ]
  %5371 = phi float [ %5303, %5302 ], [ 1.000000e+00, %5065 ]
  br i1 %5102, label %6526, label %5372

; <label>:5372                                    ; preds = %5360
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 0
  %5375 = extractvalue %dx.types.CBufRet.f32 %5373, 1
  %5376 = extractvalue %dx.types.CBufRet.f32 %5373, 2
  %5377 = extractvalue %dx.types.CBufRet.f32 %5373, 3
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 0
  %5380 = extractvalue %dx.types.CBufRet.f32 %5378, 1
  %5381 = extractvalue %dx.types.CBufRet.f32 %5378, 2
  %5382 = extractvalue %dx.types.CBufRet.f32 %5378, 3
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.CBufRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.CBufRet.f32 %5383, 2
  %5387 = extractvalue %dx.types.CBufRet.f32 %5383, 3
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.CBufRet.f32 %5388, 1
  %5391 = extractvalue %dx.types.CBufRet.f32 %5388, 2
  %5392 = extractvalue %dx.types.CBufRet.f32 %5388, 3
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 3
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 3
  %5397 = extractvalue %dx.types.CBufRet.f32 %5395, 0
  %5398 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5399 = extractvalue %dx.types.CBufRet.f32 %5395, 2
  %5400 = fcmp fast olt float %5399, -5.000000e-01
  %5401 = call float @dx.op.dot3.f32(i32 55, float %5361, float %5362, float %5363, float %5361, float %5362, float %5363)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = call float @dx.op.unary.f32(i32 25, float %5401)  ; Rsqrt(value)
  %5403 = fmul fast float %5402, %5401
  %5404 = fmul fast float %5402, %5361
  %5405 = fmul fast float %5402, %5362
  %5406 = fmul fast float %5402, %5363
  %5407 = fadd fast float %5403, %5377
  %5408 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5405, float %5406, float %5374, float %5375, float %5376)  ; Dot3(ax,ay,az,bx,by,bz)
  %5409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.i32 %5409, 1
  %5411 = and i32 %5410, 1
  %5412 = icmp ne i32 %5411, 0
  %5413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5414 = extractvalue %dx.types.CBufRet.f32 %5413, 2
  %5415 = fcmp fast ogt float %5414, 0.000000e+00
  %5416 = and i1 %5412, %5415
  br i1 %5416, label %5417, label %5823, !dx.controlflow.hints !124

; <label>:5417                                    ; preds = %5372
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 3
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 2
  %5422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.f32 %5422, 2
  %5424 = fsub fast float %5421, %5423
  %5425 = and i32 %5410, 2
  %5426 = extractvalue %dx.types.CBufRet.i32 %5409, 0
  %5427 = call i32 @dx.op.binary.i32(i32 40, i32 %5426, i32 3)  ; UMin(a,b)
  %5428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5429 = extractvalue %dx.types.CBufRet.f32 %5428, 0
  %5430 = extractvalue %dx.types.CBufRet.f32 %5428, 1
  %5431 = extractvalue %dx.types.CBufRet.f32 %5422, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5422, 1
  %5433 = fsub fast float %5429, %5431
  %5434 = fsub fast float %5430, %5432
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5437 = fcmp fast ogt float %5436, 0.000000e+00
  %5438 = fsub fast float -0.000000e+00, %5433
  %5439 = fsub fast float -0.000000e+00, %5434
  %5440 = call float @dx.op.dot2.f32(i32 54, float %5404, float %5405, float %5404, float %5405)  ; Dot2(ax,ay,bx,by)
  %5441 = call float @dx.op.dot2.f32(i32 54, float %5404, float %5405, float %5438, float %5439)  ; Dot2(ax,ay,bx,by)
  %5442 = fmul fast float %5441, 2.000000e+00
  %5443 = call float @dx.op.dot2.f32(i32 54, float %5438, float %5439, float %5438, float %5439)  ; Dot2(ax,ay,bx,by)
  %5444 = fmul fast float %5436, %5436
  %5445 = fsub fast float %5443, %5444
  %5446 = fmul fast float %5442, %5442
  %5447 = fmul fast float %5440, 4.000000e+00
  %5448 = fmul fast float %5447, %5445
  %5449 = fsub fast float %5446, %5448
  %5450 = fcmp fast ogt float %5449, 0.000000e+00
  br i1 %5450, label %5451, label %5466

; <label>:5451                                    ; preds = %5417
  %5452 = fcmp fast ogt float %5442, 0.000000e+00
  %5453 = call float @dx.op.unary.f32(i32 24, float %5449)  ; Sqrt(value)
  %5454 = fsub fast float -0.000000e+00, %5453
  %5455 = select i1 %5452, float %5453, float %5454
  %5456 = fadd fast float %5455, %5442
  %5457 = fmul float %5456, -5.000000e-01
  %5458 = fdiv fast float %5457, %5440
  %5459 = call float @dx.op.binary.f32(i32 35, float %5458, float 0.000000e+00)  ; FMax(a,b)
  %5460 = call float @dx.op.binary.f32(i32 36, float %5403, float %5459)  ; FMin(a,b)
  %5461 = fdiv fast float %5445, %5457
  %5462 = call float @dx.op.binary.f32(i32 35, float %5461, float 0.000000e+00)  ; FMax(a,b)
  %5463 = call float @dx.op.binary.f32(i32 36, float %5403, float %5462)  ; FMin(a,b)
  %5464 = call float @dx.op.binary.f32(i32 36, float %5460, float %5463)  ; FMin(a,b)
  %5465 = call float @dx.op.binary.f32(i32 35, float %5460, float %5463)  ; FMax(a,b)
  br label %5466

; <label>:5466                                    ; preds = %5451, %5417
  %5467 = phi float [ %5465, %5451 ], [ -1.000000e+00, %5417 ]
  %5468 = phi float [ %5464, %5451 ], [ -1.000000e+00, %5417 ]
  %5469 = phi i1 [ true, %5451 ], [ false, %5417 ]
  %5470 = and i1 %5437, %5469
  br i1 %5470, label %5471, label %5473

; <label>:5471                                    ; preds = %5466
  %5472 = fcmp fast oeq float %5468, %5467
  br i1 %5472, label %5776, label %5474

; <label>:5473                                    ; preds = %5466
  br i1 %5437, label %5776, label %5474

; <label>:5474                                    ; preds = %5473, %5471
  %5475 = phi float [ %5403, %5473 ], [ %5467, %5471 ]
  %5476 = phi float [ 0.000000e+00, %5473 ], [ %5468, %5471 ]
  %5477 = icmp ne i32 %5425, 0
  %5478 = fmul fast float %5475, %5406
  %5479 = fadd fast float %5478, %5419
  %5480 = fmul fast float %5479, %5475
  %5481 = select i1 %5477, float 0.000000e+00, float %5480
  %5482 = fcmp fast oeq float %5406, 0.000000e+00
  %5483 = fdiv fast float %5424, %5406
  %5484 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5483)  ; FMax(a,b)
  %5485 = select i1 %5482, float %5475, float %5484
  %5486 = call float @dx.op.binary.f32(i32 36, float %5475, float %5485)  ; FMin(a,b)
  %5487 = fcmp fast ogt float %5406, 0.000000e+00
  %5488 = fcmp fast olt float %5424, 0.000000e+00
  br i1 %5487, label %5489, label %5546

; <label>:5489                                    ; preds = %5474
  %5490 = icmp eq i32 %5425, 0
  br i1 %5488, label %5491, label %5535

; <label>:5491                                    ; preds = %5489
  %5492 = select i1 %5490, float %5475, float 0.000000e+00
  %5493 = fsub fast float -0.000000e+00, %5492
  %5494 = call float @dx.op.unary.f32(i32 6, float %5493)  ; FAbs(value)
  %5495 = fmul fast float %5492, %5406
  %5496 = fadd fast float %5495, %5419
  %5497 = fmul fast float %5494, %5496
  %5498 = fsub fast float %5481, %5497
  %5499 = fsub fast float %5475, %5494
  %5500 = select i1 %5490, float %5499, float 0.000000e+00
  %5501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.CBufRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.CBufRet.f32 %5501, 2
  %5505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.f32 %5505, 0
  %5507 = extractvalue %dx.types.CBufRet.f32 %5505, 1
  %5508 = extractvalue %dx.types.CBufRet.f32 %5505, 2
  %5509 = extractvalue %dx.types.CBufRet.f32 %5505, 3
  %5510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.f32 %5510, 3
  %5512 = call float @dx.op.binary.f32(i32 36, float %5498, float %5511)  ; FMin(a,b)
  %5513 = fmul fast float %5509, %5500
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = fsub fast float %5506, %5502
  %5516 = fsub fast float %5507, %5503
  %5517 = fsub fast float %5508, %5504
  %5518 = fmul fast float %5514, %5515
  %5519 = fmul fast float %5514, %5516
  %5520 = fmul fast float %5514, %5517
  %5521 = fadd fast float %5518, %5502
  %5522 = fadd fast float %5519, %5503
  %5523 = fadd fast float %5520, %5504
  %5524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5525 = extractvalue %dx.types.CBufRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.CBufRet.f32 %5524, 1
  %5527 = fadd fast float %5526, %5525
  %5528 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5524, 2
  %5530 = extractvalue %dx.types.CBufRet.f32 %5524, 3
  %5531 = fadd fast float %5530, %5529
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = fmul fast float %5528, %5512
  %5534 = fmul fast float %5533, %5532
  br label %5776

; <label>:5535                                    ; preds = %5489
  br i1 %5490, label %5536, label %5557

; <label>:5536                                    ; preds = %5535
  %5537 = call float @dx.op.binary.f32(i32 36, float %5486, float %5476)  ; FMin(a,b)
  %5538 = fsub fast float %5486, %5537
  %5539 = fsub fast float %5538, %5475
  %5540 = call float @dx.op.unary.f32(i32 6, float %5539)  ; FAbs(value)
  %5541 = fadd fast float %5538, %5475
  %5542 = fmul fast float %5541, %5406
  %5543 = fadd fast float %5542, %5419
  %5544 = fmul fast float %5543, %5540
  %5545 = fsub fast float %5481, %5544
  br label %5557

; <label>:5546                                    ; preds = %5474
  br i1 %5488, label %5547, label %5557

; <label>:5547                                    ; preds = %5546
  %5548 = call float @dx.op.binary.f32(i32 35, float %5476, float %5486)  ; FMax(a,b)
  %5549 = icmp eq i32 %5425, 0
  %5550 = select i1 %5549, float %5486, float 0.000000e+00
  %5551 = fsub fast float -0.000000e+00, %5550
  %5552 = call float @dx.op.unary.f32(i32 6, float %5551)  ; FAbs(value)
  %5553 = fmul fast float %5550, %5406
  %5554 = fadd fast float %5553, %5419
  %5555 = fmul fast float %5552, %5554
  %5556 = fsub fast float %5481, %5555
  br label %5557

; <label>:5557                                    ; preds = %5547, %5546, %5536, %5535
  %5558 = phi float [ %5476, %5535 ], [ %5476, %5536 ], [ %5548, %5547 ], [ %5476, %5546 ]
  %5559 = phi float [ 0.000000e+00, %5535 ], [ %5540, %5536 ], [ %5552, %5547 ], [ 0.000000e+00, %5546 ]
  %5560 = phi float [ %5481, %5535 ], [ %5545, %5536 ], [ %5556, %5547 ], [ %5481, %5546 ]
  %5561 = phi float [ %5486, %5535 ], [ %5486, %5536 ], [ %5475, %5547 ], [ %5475, %5546 ]
  %5562 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 0
  store float -1.000000e+00, float* %5562, align 4, !tbaa !111, !noalias !125
  %5563 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 1
  store float -1.000000e+00, float* %5563, align 4, !tbaa !111, !noalias !125
  %5564 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 2
  store float -1.000000e+00, float* %5564, align 4, !tbaa !111, !noalias !125
  %5565 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %5565, align 4, !tbaa !111, !noalias !125
  %5566 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %5566, align 4, !tbaa !111, !noalias !125
  %5567 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %5567, align 4, !tbaa !111, !noalias !125
  %5568 = icmp sgt i32 %5427, 0
  br i1 %5568, label %5569, label %5630

; <label>:5569                                    ; preds = %5557
  br label %5570

; <label>:5570                                    ; preds = %5619, %5569
  %5571 = phi i32 [ %5620, %5619 ], [ 0, %5569 ]
  %5572 = phi i32 [ %5621, %5619 ], [ 0, %5569 ]
  %5573 = add nuw i32 %5572, 171
  %5574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %5573)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.f32 %5574, 0
  %5576 = extractvalue %dx.types.CBufRet.f32 %5574, 1
  %5577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = extractvalue %dx.types.CBufRet.f32 %5577, 0
  %5579 = extractvalue %dx.types.CBufRet.f32 %5577, 1
  %5580 = fsub fast float %5575, %5578
  %5581 = fsub fast float %5576, %5579
  %5582 = extractvalue %dx.types.CBufRet.f32 %5574, 2
  %5583 = fsub fast float -0.000000e+00, %5580
  %5584 = fsub fast float -0.000000e+00, %5581
  %5585 = call float @dx.op.dot2.f32(i32 54, float %5404, float %5405, float %5583, float %5584)  ; Dot2(ax,ay,bx,by)
  %5586 = fmul fast float %5585, 2.000000e+00
  %5587 = call float @dx.op.dot2.f32(i32 54, float %5583, float %5584, float %5583, float %5584)  ; Dot2(ax,ay,bx,by)
  %5588 = fmul fast float %5582, %5582
  %5589 = fsub fast float %5587, %5588
  %5590 = fmul fast float %5586, %5586
  %5591 = fmul fast float %5447, %5589
  %5592 = fsub fast float %5590, %5591
  %5593 = fcmp fast ogt float %5592, 0.000000e+00
  br i1 %5593, label %5594, label %5609

; <label>:5594                                    ; preds = %5570
  %5595 = fcmp fast ogt float %5586, 0.000000e+00
  %5596 = call float @dx.op.unary.f32(i32 24, float %5592)  ; Sqrt(value)
  %5597 = fsub fast float -0.000000e+00, %5596
  %5598 = select i1 %5595, float %5596, float %5597
  %5599 = fadd fast float %5598, %5586
  %5600 = fmul float %5599, -5.000000e-01
  %5601 = fdiv fast float %5600, %5440
  %5602 = call float @dx.op.binary.f32(i32 35, float %5601, float 0.000000e+00)  ; FMax(a,b)
  %5603 = call float @dx.op.binary.f32(i32 36, float %5475, float %5602)  ; FMin(a,b)
  %5604 = fdiv fast float %5589, %5600
  %5605 = call float @dx.op.binary.f32(i32 35, float %5604, float 0.000000e+00)  ; FMax(a,b)
  %5606 = call float @dx.op.binary.f32(i32 36, float %5475, float %5605)  ; FMin(a,b)
  %5607 = call float @dx.op.binary.f32(i32 36, float %5603, float %5606)  ; FMin(a,b)
  %5608 = call float @dx.op.binary.f32(i32 35, float %5603, float %5606)  ; FMax(a,b)
  br label %5609

; <label>:5609                                    ; preds = %5594, %5570
  %5610 = phi float [ %5608, %5594 ], [ -1.000000e+00, %5570 ]
  %5611 = phi float [ %5607, %5594 ], [ -1.000000e+00, %5570 ]
  %5612 = phi i1 [ true, %5594 ], [ false, %5570 ]
  br i1 %5612, label %5613, label %5619

; <label>:5613                                    ; preds = %5609
  %5614 = call float @dx.op.binary.f32(i32 35, float %5558, float %5611)  ; FMax(a,b)
  %5615 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %5572
  store float %5614, float* %5615, align 4, !tbaa !111, !noalias !125
  %5616 = call float @dx.op.binary.f32(i32 35, float %5558, float %5610)  ; FMax(a,b)
  %5617 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %5572
  store float %5616, float* %5617, align 4, !tbaa !111, !noalias !125
  %5618 = add nsw i32 %5571, 1
  br label %5619

; <label>:5619                                    ; preds = %5613, %5609
  %5620 = phi i32 [ %5618, %5613 ], [ %5571, %5609 ]
  %5621 = add nuw nsw i32 %5572, 1
  %5622 = icmp eq i32 %5621, %5427
  br i1 %5622, label %5623, label %5570

; <label>:5623                                    ; preds = %5619
  %5624 = load float, float* %5564, align 4, !tbaa !111, !alias.scope !141, !noalias !144
  %5625 = load float, float* %5563, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  %5626 = load float, float* %5562, align 4, !tbaa !111, !alias.scope !149, !noalias !150
  %5627 = load float, float* %5567, align 4, !tbaa !111, !alias.scope !151, !noalias !154
  %5628 = load float, float* %5566, align 4, !tbaa !111, !alias.scope !157, !noalias !158
  %5629 = load float, float* %5565, align 4, !tbaa !111, !alias.scope !159, !noalias !160
  br label %5630

; <label>:5630                                    ; preds = %5623, %5557
  %5631 = phi float [ -1.000000e+00, %5557 ], [ %5629, %5623 ]
  %5632 = phi float [ -1.000000e+00, %5557 ], [ %5628, %5623 ]
  %5633 = phi float [ -1.000000e+00, %5557 ], [ %5627, %5623 ]
  %5634 = phi float [ -1.000000e+00, %5557 ], [ %5626, %5623 ]
  %5635 = phi float [ -1.000000e+00, %5557 ], [ %5625, %5623 ]
  %5636 = phi float [ -1.000000e+00, %5557 ], [ %5624, %5623 ]
  %5637 = phi i32 [ 0, %5557 ], [ %5620, %5623 ]
  %5638 = call float @dx.op.binary.f32(i32 36, float %5635, float %5636)  ; FMin(a,b)
  %5639 = call float @dx.op.binary.f32(i32 36, float %5634, float %5638)  ; FMin(a,b)
  %5640 = call float @dx.op.binary.f32(i32 35, float %5634, float %5635)  ; FMax(a,b)
  %5641 = call float @dx.op.binary.f32(i32 36, float %5640, float %5636)  ; FMin(a,b)
  %5642 = call float @dx.op.binary.f32(i32 36, float %5634, float %5635)  ; FMin(a,b)
  %5643 = call float @dx.op.binary.f32(i32 35, float %5642, float %5641)  ; FMax(a,b)
  %5644 = call float @dx.op.binary.f32(i32 35, float %5635, float %5636)  ; FMax(a,b)
  %5645 = call float @dx.op.binary.f32(i32 35, float %5634, float %5644)  ; FMax(a,b)
  store float %5639, float* %5562, align 4, !tbaa !111, !alias.scope !149, !noalias !150
  store float %5643, float* %5563, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  store float %5645, float* %5564, align 4, !tbaa !111, !alias.scope !141, !noalias !144
  %5646 = call float @dx.op.binary.f32(i32 36, float %5632, float %5633)  ; FMin(a,b)
  %5647 = call float @dx.op.binary.f32(i32 36, float %5631, float %5646)  ; FMin(a,b)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5631, float %5632)  ; FMax(a,b)
  %5649 = call float @dx.op.binary.f32(i32 36, float %5648, float %5633)  ; FMin(a,b)
  %5650 = call float @dx.op.binary.f32(i32 36, float %5631, float %5632)  ; FMin(a,b)
  %5651 = call float @dx.op.binary.f32(i32 35, float %5650, float %5649)  ; FMax(a,b)
  %5652 = call float @dx.op.binary.f32(i32 35, float %5632, float %5633)  ; FMax(a,b)
  %5653 = call float @dx.op.binary.f32(i32 35, float %5631, float %5652)  ; FMax(a,b)
  store float %5647, float* %5565, align 4, !tbaa !111, !alias.scope !159, !noalias !160
  store float %5651, float* %5566, align 4, !tbaa !111, !alias.scope !157, !noalias !158
  store float %5653, float* %5567, align 4, !tbaa !111, !alias.scope !151, !noalias !154
  %5654 = sub nsw i32 3, %5637
  %5655 = icmp sgt i32 %5654, 2
  br i1 %5655, label %5656, label %5694

; <label>:5656                                    ; preds = %5630
  %5657 = icmp eq i32 %5425, 0
  %5658 = fsub fast float %5475, %5559
  %5659 = select i1 %5657, float %5658, float %5559
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.CBufRet.f32 %5660, 2
  %5664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5665 = extractvalue %dx.types.CBufRet.f32 %5664, 0
  %5666 = extractvalue %dx.types.CBufRet.f32 %5664, 1
  %5667 = extractvalue %dx.types.CBufRet.f32 %5664, 2
  %5668 = extractvalue %dx.types.CBufRet.f32 %5664, 3
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 3
  %5671 = call float @dx.op.binary.f32(i32 36, float %5560, float %5670)  ; FMin(a,b)
  %5672 = fmul fast float %5668, %5659
  %5673 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5674 = fsub fast float %5665, %5661
  %5675 = fsub fast float %5666, %5662
  %5676 = fsub fast float %5667, %5663
  %5677 = fmul fast float %5673, %5674
  %5678 = fmul fast float %5673, %5675
  %5679 = fmul fast float %5673, %5676
  %5680 = fadd fast float %5677, %5661
  %5681 = fadd fast float %5678, %5662
  %5682 = fadd fast float %5679, %5663
  %5683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5683, 0
  %5685 = extractvalue %dx.types.CBufRet.f32 %5683, 1
  %5686 = fadd fast float %5685, %5684
  %5687 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5683, 2
  %5689 = extractvalue %dx.types.CBufRet.f32 %5683, 3
  %5690 = fadd fast float %5689, %5688
  %5691 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5692 = fmul fast float %5687, %5671
  %5693 = fmul fast float %5692, %5691
  br label %5776

; <label>:5694                                    ; preds = %5630
  %5695 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %5654
  %5696 = load float, float* %5695, align 4, !tbaa !111, !noalias !125
  %5697 = fcmp fast olt float %5696, %5561
  %5698 = icmp sgt i32 %5637, 0
  %5699 = and i1 %5698, %5697
  br i1 %5699, label %5700, label %5737

; <label>:5700                                    ; preds = %5694
  br label %5701

; <label>:5701                                    ; preds = %5730, %5700
  %5702 = phi float [ %5731, %5730 ], [ %5559, %5700 ]
  %5703 = phi float [ %5732, %5730 ], [ %5560, %5700 ]
  %5704 = phi float [ %5712, %5730 ], [ %5696, %5700 ]
  %5705 = phi i32 [ %5709, %5730 ], [ %5654, %5700 ]
  %5706 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %5705
  %5707 = load float, float* %5706, align 4, !tbaa !111, !noalias !125
  %5708 = icmp slt i32 %5705, 2
  %5709 = add nsw i32 %5705, 1
  %5710 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %5709
  %5711 = load float, float* %5710, align 4, !tbaa !111, !noalias !125
  %5712 = select i1 %5708, float %5711, float %5475
  %5713 = call float @dx.op.binary.f32(i32 36, float %5712, float %5707)  ; FMin(a,b)
  %5714 = call float @dx.op.binary.f32(i32 36, float %5561, float %5713)  ; FMin(a,b)
  %5715 = icmp eq i32 %5425, 0
  %5716 = fadd fast float %5714, %5704
  %5717 = fmul fast float %5716, %5406
  %5718 = fadd fast float %5717, %5419
  br i1 %5715, label %5724, label %5719

; <label>:5719                                    ; preds = %5701
  %5720 = fsub fast float %5714, %5704
  %5721 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5720)  ; FMax(a,b)
  %5722 = fmul fast float %5721, %5718
  %5723 = fadd fast float %5722, %5703
  br label %5730

; <label>:5724                                    ; preds = %5701
  %5725 = fsub fast float %5704, %5714
  %5726 = call float @dx.op.unary.f32(i32 6, float %5725)  ; FAbs(value)
  %5727 = fadd fast float %5726, %5702
  %5728 = fmul fast float %5726, %5718
  %5729 = fsub fast float %5703, %5728
  br label %5730

; <label>:5730                                    ; preds = %5724, %5719
  %5731 = phi float [ %5721, %5719 ], [ %5727, %5724 ]
  %5732 = phi float [ %5723, %5719 ], [ %5729, %5724 ]
  %5733 = fcmp fast olt float %5712, %5561
  %5734 = icmp slt i32 %5709, 3
  %5735 = and i1 %5734, %5733
  br i1 %5735, label %5701, label %5736

; <label>:5736                                    ; preds = %5730
  br label %5737

; <label>:5737                                    ; preds = %5736, %5694
  %5738 = phi float [ %5559, %5694 ], [ %5731, %5736 ]
  %5739 = phi float [ %5560, %5694 ], [ %5732, %5736 ]
  %5740 = fsub fast float %5475, %5738
  %5741 = select i1 %5477, float %5738, float %5740
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  %5744 = extractvalue %dx.types.CBufRet.f32 %5742, 1
  %5745 = extractvalue %dx.types.CBufRet.f32 %5742, 2
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.CBufRet.f32 %5746, 1
  %5749 = extractvalue %dx.types.CBufRet.f32 %5746, 2
  %5750 = extractvalue %dx.types.CBufRet.f32 %5746, 3
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 3
  %5753 = call float @dx.op.binary.f32(i32 36, float %5739, float %5752)  ; FMin(a,b)
  %5754 = fmul fast float %5750, %5741
  %5755 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5756 = fsub fast float %5747, %5743
  %5757 = fsub fast float %5748, %5744
  %5758 = fsub fast float %5749, %5745
  %5759 = fmul fast float %5755, %5756
  %5760 = fmul fast float %5755, %5757
  %5761 = fmul fast float %5755, %5758
  %5762 = fadd fast float %5759, %5743
  %5763 = fadd fast float %5760, %5744
  %5764 = fadd fast float %5761, %5745
  %5765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.CBufRet.f32 %5765, 1
  %5768 = fadd fast float %5767, %5766
  %5769 = call float @dx.op.unary.f32(i32 7, float %5768)  ; Saturate(value)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5765, 2
  %5771 = extractvalue %dx.types.CBufRet.f32 %5765, 3
  %5772 = fadd fast float %5771, %5770
  %5773 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5774 = fmul fast float %5769, %5753
  %5775 = fmul fast float %5774, %5773
  br label %5776

; <label>:5776                                    ; preds = %5737, %5656, %5491, %5473, %5471
  %5777 = phi float [ %5500, %5491 ], [ %5659, %5656 ], [ %5741, %5737 ], [ 0.000000e+00, %5471 ], [ 0.000000e+00, %5473 ]
  %5778 = phi float [ %5534, %5491 ], [ %5693, %5656 ], [ %5775, %5737 ], [ 0.000000e+00, %5471 ], [ 0.000000e+00, %5473 ]
  %5779 = phi float [ %5521, %5491 ], [ %5680, %5656 ], [ %5762, %5737 ], [ 0.000000e+00, %5471 ], [ 0.000000e+00, %5473 ]
  %5780 = phi float [ %5522, %5491 ], [ %5681, %5656 ], [ %5763, %5737 ], [ 0.000000e+00, %5471 ], [ 0.000000e+00, %5473 ]
  %5781 = phi float [ %5523, %5491 ], [ %5682, %5656 ], [ %5764, %5737 ], [ 0.000000e+00, %5471 ], [ 0.000000e+00, %5473 ]
  %5782 = fmul fast float %5414, %5778
  %5783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5784 = extractvalue %dx.types.CBufRet.f32 %5783, 2
  %5785 = fsub fast float %5421, %5784
  %5786 = fcmp fast olt float %5782, -2.000000e+01
  %5787 = call float @dx.op.unary.f32(i32 21, float %5782)  ; Exp(value)
  %5788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.f32 %5788, 2
  %5790 = extractvalue %dx.types.CBufRet.f32 %5788, 3
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5793 = fmul fast float %5790, %5785
  %5794 = call float @dx.op.unary.f32(i32 7, float %5793)  ; Saturate(value)
  %5795 = fsub fast float 1.000000e+00, %5794
  %5796 = fmul fast float %5406, 5.000000e-01
  %5797 = fadd fast float %5796, 5.000000e-01
  %5798 = call float @dx.op.unary.f32(i32 7, float %5797)  ; Saturate(value)
  %5799 = fsub fast float 1.000000e+00, %5798
  %5800 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5795)  ; FMax(a,b)
  %5801 = fdiv fast float %5799, %5800
  %5802 = fsub fast float %5785, %5363
  %5803 = call float @dx.op.unary.f32(i32 6, float %5802)  ; FAbs(value)
  %5804 = fmul fast float %5803, %5789
  %5805 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5806 = fsub fast float 1.000000e+00, %5804
  %5807 = fmul fast float %5806, %5805
  %5808 = fadd fast float %5807, %5804
  %5809 = fmul fast float %5792, %5785
  %5810 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5811 = fsub fast float 1.000000e+00, %5808
  %5812 = fmul fast float %5811, %5810
  %5813 = fadd fast float %5812, %5808
  %5814 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5815 = fadd fast float %5787, -1.000000e+00
  %5816 = select i1 %5786, float -1.000000e+00, float %5815
  %5817 = fmul fast float %5814, %5816
  %5818 = fadd fast float %5817, 1.000000e+00
  %5819 = fsub fast float -0.000000e+00, %5817
  %5820 = fmul fast float %5779, %5819
  %5821 = fmul fast float %5780, %5819
  %5822 = fmul fast float %5781, %5819
  br label %5823

; <label>:5823                                    ; preds = %5776, %5372
  %5824 = phi float [ %5777, %5776 ], [ 0.000000e+00, %5372 ]
  %5825 = phi float [ %5818, %5776 ], [ 1.000000e+00, %5372 ]
  %5826 = phi float [ %5820, %5776 ], [ 0.000000e+00, %5372 ]
  %5827 = phi float [ %5821, %5776 ], [ 0.000000e+00, %5372 ]
  %5828 = phi float [ %5822, %5776 ], [ 0.000000e+00, %5372 ]
  %5829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5829, 1
  %5831 = fsub fast float 1.000000e+00, %5825
  %5832 = fmul fast float %5831, %5407
  %5833 = fmul fast float %5832, %5830
  %5834 = fsub fast float %5407, %5833
  br i1 %5400, label %5835, label %5864, !dx.controlflow.hints !161

; <label>:5835                                    ; preds = %5823
  %5836 = fmul fast float %5408, %5397
  %5837 = fadd fast float %5836, %5398
  %5838 = call float @dx.op.unary.f32(i32 7, float %5837)  ; Saturate(value)
  %5839 = fmul fast float %5379, %5834
  %5840 = fsub fast float -0.000000e+00, %5839
  %5841 = fmul fast float %5380, %5834
  %5842 = fsub fast float -0.000000e+00, %5841
  %5843 = call float @dx.op.unary.f32(i32 21, float %5840)  ; Exp(value)
  %5844 = call float @dx.op.unary.f32(i32 21, float %5842)  ; Exp(value)
  %5845 = call float @dx.op.binary.f32(i32 35, float %5387, float %5843)  ; FMax(a,b)
  %5846 = call float @dx.op.binary.f32(i32 35, float %5387, float %5844)  ; FMax(a,b)
  %5847 = fsub fast float %5846, %5845
  %5848 = fmul fast float %5847, %5838
  %5849 = fadd fast float %5848, %5845
  %5850 = call float @dx.op.unary.f32(i32 7, float %5849)  ; Saturate(value)
  %5851 = fsub fast float %5384, %5389
  %5852 = fsub fast float %5385, %5390
  %5853 = fsub fast float %5386, %5391
  %5854 = fmul fast float %5838, %5851
  %5855 = fmul fast float %5838, %5852
  %5856 = fmul fast float %5838, %5853
  %5857 = fadd fast float %5854, %5389
  %5858 = fadd fast float %5855, %5390
  %5859 = fadd fast float %5856, %5391
  %5860 = fsub fast float 1.000000e+00, %5850
  %5861 = fmul fast float %5860, %5857
  %5862 = fmul fast float %5860, %5858
  %5863 = fmul fast float %5860, %5859
  br label %5923

; <label>:5864                                    ; preds = %5823
  %5865 = fmul fast float %5834, %5396
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5867 = fsub fast float 2.000000e+00, %5866
  %5868 = fmul fast float %5866, 9.921875e-01
  %5869 = fmul fast float %5868, %5867
  %5870 = fadd fast float %5869, 3.906250e-03
  %5871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %5870, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5872 = extractvalue %dx.types.ResRet.f32 %5871, 0
  %5873 = fsub fast float %5866, %5872
  %5874 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5873)  ; FMax(a,b)
  %5875 = fmul fast float %5382, %5363
  %5876 = call float @dx.op.unary.f32(i32 6, float %5875)  ; FAbs(value)
  %5877 = fcmp fast ogt float %5876, 0x3EB0C6F7A0000000
  br i1 %5877, label %5878, label %5884, !dx.controlflow.hints !162

; <label>:5878                                    ; preds = %5864
  %5879 = fmul fast float %5875, 0xBFF7154760000000
  %5880 = call float @dx.op.unary.f32(i32 21, float %5879)  ; Exp(value)
  %5881 = fsub fast float 1.000000e+00, %5880
  %5882 = fdiv fast float %5881, %5875
  %5883 = fmul fast float %5882, %5392
  br label %5884

; <label>:5884                                    ; preds = %5878, %5864
  %5885 = phi float [ %5883, %5878 ], [ %5392, %5864 ]
  %5886 = fadd fast float %5885, %5394
  %5887 = fmul fast float %5886, %5874
  %5888 = fmul fast float %5379, %5887
  %5889 = fsub fast float -0.000000e+00, %5888
  %5890 = fmul fast float %5380, %5887
  %5891 = fsub fast float -0.000000e+00, %5890
  %5892 = fmul fast float %5381, %5887
  %5893 = fsub fast float -0.000000e+00, %5892
  %5894 = call float @dx.op.unary.f32(i32 21, float %5889)  ; Exp(value)
  %5895 = call float @dx.op.unary.f32(i32 21, float %5891)  ; Exp(value)
  %5896 = call float @dx.op.unary.f32(i32 21, float %5893)  ; Exp(value)
  %5897 = fmul fast float %5408, %5408
  %5898 = fadd fast float %5897, 1.000000e+00
  %5899 = fmul fast float %5898, 0x3FAE8EC8A0000000
  %5900 = fmul fast float %5899, %5389
  %5901 = fmul fast float %5899, %5390
  %5902 = fmul fast float %5899, %5391
  %5903 = fmul fast float %5408, %5387
  %5904 = fsub fast float 1.000000e+00, %5903
  %5905 = fmul fast float %5387, %5387
  %5906 = fsub fast float 1.000000e+00, %5905
  %5907 = fmul fast float %5906, 0x3FB45F3060000000
  %5908 = fmul fast float %5904, %5904
  %5909 = fdiv fast float 1.000000e+00, %5908
  %5910 = fmul fast float %5907, %5909
  %5911 = fmul fast float %5910, %5384
  %5912 = fmul fast float %5910, %5385
  %5913 = fmul fast float %5910, %5386
  %5914 = fadd fast float %5911, %5900
  %5915 = fadd fast float %5912, %5901
  %5916 = fadd fast float %5913, %5902
  %5917 = fsub fast float 1.000000e+00, %5894
  %5918 = fsub fast float 1.000000e+00, %5895
  %5919 = fsub fast float 1.000000e+00, %5896
  %5920 = fmul fast float %5914, %5917
  %5921 = fmul fast float %5915, %5918
  %5922 = fmul fast float %5916, %5919
  br label %5923

; <label>:5923                                    ; preds = %5884, %5835
  %5924 = phi float [ %5861, %5835 ], [ %5920, %5884 ]
  %5925 = phi float [ %5862, %5835 ], [ %5921, %5884 ]
  %5926 = phi float [ %5863, %5835 ], [ %5922, %5884 ]
  %5927 = phi float [ %5850, %5835 ], [ %5894, %5884 ]
  %5928 = phi float [ %5850, %5835 ], [ %5895, %5884 ]
  %5929 = phi float [ %5850, %5835 ], [ %5896, %5884 ]
  br i1 %5416, label %5930, label %6128, !dx.controlflow.hints !163

; <label>:5930                                    ; preds = %5923
  %5931 = extractvalue %dx.types.CBufRet.f32 %5829, 0
  %5932 = fmul fast float %5931, %5831
  %5933 = fsub fast float %5826, %5924
  %5934 = fsub fast float %5827, %5925
  %5935 = fsub fast float %5828, %5926
  %5936 = fmul fast float %5932, %5933
  %5937 = fmul fast float %5932, %5934
  %5938 = fmul fast float %5932, %5935
  %5939 = fadd fast float %5936, %5924
  %5940 = fadd fast float %5937, %5925
  %5941 = fadd fast float %5938, %5926
  %5942 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5927)  ; FMax(a,b)
  %5943 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5928)  ; FMax(a,b)
  %5944 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5929)  ; FMax(a,b)
  %5945 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5825)  ; FMax(a,b)
  %5946 = call float @dx.op.binary.f32(i32 35, float %5824, float %5834)  ; FMax(a,b)
  %5947 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5946)  ; FMax(a,b)
  %5948 = fdiv fast float %5824, %5947
  %5949 = call float @dx.op.unary.f32(i32 7, float %5948)  ; Saturate(value)
  %5950 = fdiv fast float %5834, %5947
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = fcmp fast une float %5945, 1.000000e+00
  br i1 %5952, label %5953, label %5966, !dx.controlflow.hints !164

; <label>:5953                                    ; preds = %5930
  %5954 = call float @dx.op.unary.f32(i32 23, float %5945)  ; Log(value)
  %5955 = fmul fast float %5954, 0x3FE62E4300000000
  %5956 = fmul fast float %5826, %5955
  %5957 = fsub fast float -0.000000e+00, %5956
  %5958 = fmul fast float %5827, %5955
  %5959 = fsub fast float -0.000000e+00, %5958
  %5960 = fmul fast float %5828, %5955
  %5961 = fsub fast float -0.000000e+00, %5960
  %5962 = fsub fast float 1.000000e+00, %5945
  %5963 = fdiv fast float %5957, %5962
  %5964 = fdiv fast float %5959, %5962
  %5965 = fdiv fast float %5961, %5962
  br label %5966

; <label>:5966                                    ; preds = %5953, %5930
  %5967 = phi float [ %5963, %5953 ], [ %5826, %5930 ]
  %5968 = phi float [ %5964, %5953 ], [ %5827, %5930 ]
  %5969 = phi float [ %5965, %5953 ], [ %5828, %5930 ]
  %5970 = phi float [ %5955, %5953 ], [ 0.000000e+00, %5930 ]
  %5971 = fcmp fast une float %5942, 1.000000e+00
  br i1 %5971, label %5972, label %5979, !dx.controlflow.hints !165

; <label>:5972                                    ; preds = %5966
  %5973 = call float @dx.op.unary.f32(i32 23, float %5942)  ; Log(value)
  %5974 = fmul fast float %5973, 0x3FE62E4300000000
  %5975 = fmul fast float %5939, %5974
  %5976 = fsub fast float -0.000000e+00, %5975
  %5977 = fsub fast float 1.000000e+00, %5942
  %5978 = fdiv fast float %5976, %5977
  br label %5979

; <label>:5979                                    ; preds = %5972, %5966
  %5980 = phi float [ %5978, %5972 ], [ %5939, %5966 ]
  %5981 = phi float [ %5974, %5972 ], [ 0.000000e+00, %5966 ]
  %5982 = fcmp fast une float %5943, 1.000000e+00
  br i1 %5982, label %5983, label %5990, !dx.controlflow.hints !165

; <label>:5983                                    ; preds = %5979
  %5984 = call float @dx.op.unary.f32(i32 23, float %5943)  ; Log(value)
  %5985 = fmul fast float %5984, 0x3FE62E4300000000
  %5986 = fmul fast float %5940, %5985
  %5987 = fsub fast float -0.000000e+00, %5986
  %5988 = fsub fast float 1.000000e+00, %5943
  %5989 = fdiv fast float %5987, %5988
  br label %5990

; <label>:5990                                    ; preds = %5983, %5979
  %5991 = phi float [ %5989, %5983 ], [ %5940, %5979 ]
  %5992 = phi float [ %5985, %5983 ], [ 0.000000e+00, %5979 ]
  %5993 = fcmp fast une float %5944, 1.000000e+00
  br i1 %5993, label %5994, label %6001, !dx.controlflow.hints !165

; <label>:5994                                    ; preds = %5990
  %5995 = call float @dx.op.unary.f32(i32 23, float %5944)  ; Log(value)
  %5996 = fmul fast float %5995, 0x3FE62E4300000000
  %5997 = fmul fast float %5941, %5996
  %5998 = fsub fast float -0.000000e+00, %5997
  %5999 = fsub fast float 1.000000e+00, %5944
  %6000 = fdiv fast float %5998, %5999
  br label %6001

; <label>:6001                                    ; preds = %5994, %5990
  %6002 = phi float [ %6000, %5994 ], [ %5941, %5990 ]
  %6003 = phi float [ %5996, %5994 ], [ 0.000000e+00, %5990 ]
  %6004 = fmul fast float %5967, %5951
  %6005 = fmul fast float %5968, %5951
  %6006 = fmul fast float %5969, %5951
  %6007 = fmul fast float %5970, %5951
  %6008 = fmul fast float %5980, %5949
  %6009 = fmul fast float %5991, %5949
  %6010 = fmul fast float %6002, %5949
  %6011 = fmul fast float %5981, %5949
  %6012 = fmul fast float %5992, %5949
  %6013 = fmul fast float %6003, %5949
  %6014 = fadd fast float %6008, %6004
  %6015 = fadd fast float %6009, %6005
  %6016 = fadd fast float %6010, %6006
  %6017 = fadd fast float %6011, %6007
  %6018 = fadd fast float %6012, %6007
  %6019 = fadd fast float %6013, %6007
  %6020 = fcmp fast une float %6017, 0.000000e+00
  br i1 %6020, label %6021, label %6028, !dx.controlflow.hints !166

; <label>:6021                                    ; preds = %6001
  %6022 = fmul fast float %6017, 0x3FF7154760000000
  %6023 = call float @dx.op.unary.f32(i32 21, float %6022)  ; Exp(value)
  %6024 = fsub fast float 1.000000e+00, %6023
  %6025 = fmul fast float %6014, %6024
  %6026 = fsub fast float -0.000000e+00, %6025
  %6027 = fdiv fast float %6026, %6017
  br label %6028

; <label>:6028                                    ; preds = %6021, %6001
  %6029 = phi float [ %6023, %6021 ], [ 1.000000e+00, %6001 ]
  %6030 = phi float [ %6027, %6021 ], [ %6014, %6001 ]
  %6031 = fcmp fast une float %6018, 0.000000e+00
  br i1 %6031, label %6032, label %6039, !dx.controlflow.hints !166

; <label>:6032                                    ; preds = %6028
  %6033 = fmul fast float %6018, 0x3FF7154760000000
  %6034 = call float @dx.op.unary.f32(i32 21, float %6033)  ; Exp(value)
  %6035 = fsub fast float 1.000000e+00, %6034
  %6036 = fmul fast float %6015, %6035
  %6037 = fsub fast float -0.000000e+00, %6036
  %6038 = fdiv fast float %6037, %6018
  br label %6039

; <label>:6039                                    ; preds = %6032, %6028
  %6040 = phi float [ %6034, %6032 ], [ 1.000000e+00, %6028 ]
  %6041 = phi float [ %6038, %6032 ], [ %6015, %6028 ]
  %6042 = fcmp fast une float %6019, 0.000000e+00
  br i1 %6042, label %6043, label %6050, !dx.controlflow.hints !166

; <label>:6043                                    ; preds = %6039
  %6044 = fmul fast float %6019, 0x3FF7154760000000
  %6045 = call float @dx.op.unary.f32(i32 21, float %6044)  ; Exp(value)
  %6046 = fsub fast float 1.000000e+00, %6045
  %6047 = fmul fast float %6016, %6046
  %6048 = fsub fast float -0.000000e+00, %6047
  %6049 = fdiv fast float %6048, %6019
  br label %6050

; <label>:6050                                    ; preds = %6043, %6039
  %6051 = phi float [ %6045, %6043 ], [ 1.000000e+00, %6039 ]
  %6052 = phi float [ %6049, %6043 ], [ %6016, %6039 ]
  %6053 = fcmp fast ogt float %5949, %5951
  br i1 %6053, label %6054, label %6074

; <label>:6054                                    ; preds = %6050
  %6055 = fsub fast float 1.000000e+00, %5951
  %6056 = fmul fast float %5967, %6055
  %6057 = fmul fast float %5968, %6055
  %6058 = fmul fast float %5969, %6055
  %6059 = fmul fast float %5970, %6055
  %6060 = fcmp fast une float %6059, 0.000000e+00
  br i1 %6060, label %6061, label %6112, !dx.controlflow.hints !167

; <label>:6061                                    ; preds = %6054
  %6062 = fmul fast float %6059, 0x3FF7154760000000
  %6063 = call float @dx.op.unary.f32(i32 21, float %6062)  ; Exp(value)
  %6064 = fsub fast float 1.000000e+00, %6063
  %6065 = fmul fast float %6056, %6064
  %6066 = fsub fast float -0.000000e+00, %6065
  %6067 = fmul fast float %6057, %6064
  %6068 = fsub fast float -0.000000e+00, %6067
  %6069 = fmul fast float %6058, %6064
  %6070 = fsub fast float -0.000000e+00, %6069
  %6071 = fdiv fast float %6066, %6059
  %6072 = fdiv fast float %6068, %6059
  %6073 = fdiv fast float %6070, %6059
  br label %6112

; <label>:6074                                    ; preds = %6050
  %6075 = fsub fast float 1.000000e+00, %5949
  %6076 = fmul fast float %5980, %6075
  %6077 = fmul fast float %5991, %6075
  %6078 = fmul fast float %6002, %6075
  %6079 = fmul fast float %5981, %6075
  %6080 = fmul fast float %5992, %6075
  %6081 = fmul fast float %6003, %6075
  %6082 = fcmp fast une float %6079, 0.000000e+00
  br i1 %6082, label %6083, label %6090, !dx.controlflow.hints !166

; <label>:6083                                    ; preds = %6074
  %6084 = fmul fast float %6079, 0x3FF7154760000000
  %6085 = call float @dx.op.unary.f32(i32 21, float %6084)  ; Exp(value)
  %6086 = fsub fast float 1.000000e+00, %6085
  %6087 = fmul fast float %6076, %6086
  %6088 = fsub fast float -0.000000e+00, %6087
  %6089 = fdiv fast float %6088, %6079
  br label %6090

; <label>:6090                                    ; preds = %6083, %6074
  %6091 = phi float [ %6089, %6083 ], [ %6076, %6074 ]
  %6092 = phi float [ %6085, %6083 ], [ 1.000000e+00, %6074 ]
  %6093 = fcmp fast une float %6080, 0.000000e+00
  br i1 %6093, label %6094, label %6101, !dx.controlflow.hints !166

; <label>:6094                                    ; preds = %6090
  %6095 = fmul fast float %6080, 0x3FF7154760000000
  %6096 = call float @dx.op.unary.f32(i32 21, float %6095)  ; Exp(value)
  %6097 = fsub fast float 1.000000e+00, %6096
  %6098 = fmul fast float %6077, %6097
  %6099 = fsub fast float -0.000000e+00, %6098
  %6100 = fdiv fast float %6099, %6080
  br label %6101

; <label>:6101                                    ; preds = %6094, %6090
  %6102 = phi float [ %6100, %6094 ], [ %6077, %6090 ]
  %6103 = phi float [ %6096, %6094 ], [ 1.000000e+00, %6090 ]
  %6104 = fcmp fast une float %6081, 0.000000e+00
  br i1 %6104, label %6105, label %6112, !dx.controlflow.hints !166

; <label>:6105                                    ; preds = %6101
  %6106 = fmul fast float %6081, 0x3FF7154760000000
  %6107 = call float @dx.op.unary.f32(i32 21, float %6106)  ; Exp(value)
  %6108 = fsub fast float 1.000000e+00, %6107
  %6109 = fmul fast float %6078, %6108
  %6110 = fsub fast float -0.000000e+00, %6109
  %6111 = fdiv fast float %6110, %6081
  br label %6112

; <label>:6112                                    ; preds = %6105, %6101, %6061, %6054
  %6113 = phi float [ %6111, %6105 ], [ %6073, %6061 ], [ %6058, %6054 ], [ %6078, %6101 ]
  %6114 = phi float [ %6102, %6105 ], [ %6072, %6061 ], [ %6057, %6054 ], [ %6102, %6101 ]
  %6115 = phi float [ %6091, %6105 ], [ %6071, %6061 ], [ %6056, %6054 ], [ %6091, %6101 ]
  %6116 = phi float [ %6107, %6105 ], [ %6063, %6061 ], [ 1.000000e+00, %6054 ], [ 1.000000e+00, %6101 ]
  %6117 = phi float [ %6103, %6105 ], [ %6063, %6061 ], [ 1.000000e+00, %6054 ], [ %6103, %6101 ]
  %6118 = phi float [ %6092, %6105 ], [ %6063, %6061 ], [ 1.000000e+00, %6054 ], [ %6092, %6101 ]
  %6119 = fmul fast float %6118, %6030
  %6120 = fmul fast float %6117, %6041
  %6121 = fmul fast float %6116, %6052
  %6122 = fadd fast float %6119, %6115
  %6123 = fadd fast float %6120, %6114
  %6124 = fadd fast float %6121, %6113
  %6125 = fmul fast float %6118, %6029
  %6126 = fmul fast float %6117, %6040
  %6127 = fmul fast float %6116, %6051
  br label %6128

; <label>:6128                                    ; preds = %6112, %5923
  %6129 = phi float [ %6127, %6112 ], [ %5929, %5923 ]
  %6130 = phi float [ %6126, %6112 ], [ %5928, %5923 ]
  %6131 = phi float [ %6125, %6112 ], [ %5927, %5923 ]
  %6132 = phi float [ %6124, %6112 ], [ %5926, %5923 ]
  %6133 = phi float [ %6123, %6112 ], [ %5925, %5923 ]
  %6134 = phi float [ %6122, %6112 ], [ %5924, %5923 ]
  %6135 = fmul fast float %6134, %5080
  %6136 = fmul fast float %6133, %5080
  %6137 = fmul fast float %6132, %5080
  %6138 = fmul fast float %6131, %5371
  %6139 = call float @dx.op.dot3.f32(i32 55, float %6131, float %6130, float %6129, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = call float @dx.op.dot3.f32(i32 55, float %6135, float %6136, float %6137, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6141 = select i1 %207, float %6139, float %6131
  %6142 = select i1 %207, float %6139, float %6130
  %6143 = select i1 %207, float 1.000000e+00, float %6129
  %6144 = select i1 %207, float %6140, float %6135
  %6145 = select i1 %207, float 0.000000e+00, float %6136
  %6146 = select i1 %207, float 0.000000e+00, float %6137
  %6147 = fmul fast float %6141, %5365
  %6148 = fmul fast float %6142, %5366
  %6149 = fmul fast float %6143, %5367
  %6150 = fadd fast float %6147, %6144
  %6151 = fadd fast float %6148, %6145
  %6152 = fadd fast float %6146, %6149
  %6153 = fmul fast float %6141, %5368
  %6154 = fmul fast float %6142, %5369
  %6155 = fmul fast float %6143, %5370
  %6156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.i32 %6156, 0
  %6158 = icmp eq i32 %6157, 0
  br i1 %6158, label %6526, label %6159, !dx.controlflow.hints !168

; <label>:6159                                    ; preds = %6128
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6162 = extractvalue %dx.types.CBufRet.f32 %6160, 3
  %6163 = fmul fast float %6161, %89
  %6164 = fmul fast float %6162, %90
  %6165 = fmul fast float %6163, 2.000000e+00
  %6166 = fmul fast float %6164, 2.000000e+00
  %6167 = fsub fast float 1.000000e+00, %6165
  %6168 = fsub fast float 1.000000e+00, %6166
  %6169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6169, 0
  %6171 = extractvalue %dx.types.CBufRet.f32 %6169, 1
  %6172 = extractvalue %dx.types.CBufRet.f32 %6169, 2
  %6173 = fmul fast float %6167, %6170
  %6174 = fmul fast float %6167, %6171
  %6175 = fmul fast float %6167, %6172
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6180 = fmul fast float %6168, %6177
  %6181 = fmul fast float %6168, %6178
  %6182 = fmul fast float %6168, %6179
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.CBufRet.f32 %6183, 1
  %6186 = extractvalue %dx.types.CBufRet.f32 %6183, 2
  %6187 = fadd fast float %6180, %6184
  %6188 = fadd fast float %6187, %6173
  %6189 = fadd fast float %6181, %6185
  %6190 = fadd fast float %6189, %6174
  %6191 = fadd fast float %6182, %6186
  %6192 = fadd fast float %6191, %6175
  %6193 = fmul fast float %6188, %5364
  %6194 = fmul fast float %6190, %5364
  %6195 = fmul fast float %6192, %5364
  %6196 = fmul fast float %6193, %6193
  %6197 = fmul fast float %6194, %6194
  %6198 = fadd fast float %6196, %6197
  %6199 = fmul fast float %6195, %6195
  %6200 = fadd fast float %6198, %6199
  %6201 = call float @dx.op.unary.f32(i32 24, float %6200)  ; Sqrt(value)
  %6202 = extractvalue %dx.types.CBufRet.f32 %5091, 0
  %6203 = fsub fast float %6201, %6202
  %6204 = extractvalue %dx.types.CBufRet.f32 %5091, 2
  %6205 = fmul fast float %6203, %6204
  %6206 = call float @dx.op.unary.f32(i32 7, float %6205)  ; Saturate(value)
  %6207 = fadd fast float %6206, -5.000000e-01
  %6208 = fmul fast float %6207, 2.000000e+00
  %6209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.f32 %6209, 2
  %6211 = call float @dx.op.binary.f32(i32 36, float %6210, float %6208)  ; FMin(a,b)
  %6212 = fsub fast float -0.000000e+00, %6210
  %6213 = fcmp fast ogt float %6211, %6212
  br i1 %6213, label %6214, label %6526, !dx.controlflow.hints !169

; <label>:6214                                    ; preds = %6159
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 3
  %6217 = fcmp fast ogt float %6216, 0.000000e+00
  br i1 %6217, label %6218, label %6293, !dx.controlflow.hints !170

; <label>:6218                                    ; preds = %6214
  %6219 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %6220 = extractvalue %dx.types.Dimensions %6219, 0
  %6221 = sitofp i32 %6220 to float
  %6222 = extractvalue %dx.types.Dimensions %6219, 1
  %6223 = sitofp i32 %6222 to float
  %6224 = fmul fast float %6163, %6221
  %6225 = fmul fast float %6164, %6223
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %6228 = fsub fast float -0.000000e+00, %6227
  %6229 = fptoui float %6228 to i32
  %6230 = fptoui float %6224 to i32
  %6231 = fptoui float %6225 to i32
  %6232 = and i32 %6229, 31
  %6233 = lshr i32 %6230, %6232
  %6234 = lshr i32 %6231, %6232
  %6235 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %6229, i32 %6233, i32 %6234, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6236 = extractvalue %dx.types.ResRet.f32 %6235, 0
  %6237 = fcmp fast olt float %6236, -1.000000e+00
  %6238 = fcmp fast ogt float %6236, -1.000000e+00
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6241 = select i1 %6238, float %6240, float 1.000000e+00
  %6242 = fadd fast float %6236, 1.000000e+00
  %6243 = fmul fast float %6241, %6242
  %6244 = call float @dx.op.unary.f32(i32 6, float %6243)  ; FAbs(value)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6239, 3
  %6246 = fcmp fast oge float %6244, %6245
  %6247 = select i1 %6246, float 0x4197782600000000, float %6244
  %6248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.CBufRet.f32 %6248, 1
  %6251 = extractvalue %dx.types.CBufRet.f32 %6248, 2
  %6252 = select i1 %6237, float %6249, float %6170
  %6253 = select i1 %6237, float %6250, float %6171
  %6254 = select i1 %6237, float %6251, float %6172
  %6255 = fmul fast float %6252, %6167
  %6256 = fmul fast float %6253, %6167
  %6257 = fmul fast float %6254, %6167
  %6258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.f32 %6258, 0
  %6260 = extractvalue %dx.types.CBufRet.f32 %6258, 1
  %6261 = extractvalue %dx.types.CBufRet.f32 %6258, 2
  %6262 = select i1 %6237, float %6259, float %6177
  %6263 = select i1 %6237, float %6260, float %6178
  %6264 = select i1 %6237, float %6261, float %6179
  %6265 = fmul fast float %6262, %6168
  %6266 = fmul fast float %6263, %6168
  %6267 = fmul fast float %6264, %6168
  %6268 = fadd fast float %6265, %6255
  %6269 = fadd fast float %6266, %6256
  %6270 = fadd fast float %6267, %6257
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6275 = select i1 %6237, float %6272, float %6184
  %6276 = select i1 %6237, float %6273, float %6185
  %6277 = select i1 %6237, float %6274, float %6186
  %6278 = fadd fast float %6268, %6275
  %6279 = fadd fast float %6269, %6276
  %6280 = fadd fast float %6270, %6277
  %6281 = fmul fast float %6278, %6247
  %6282 = fmul fast float %6279, %6247
  %6283 = fmul fast float %6280, %6247
  %6284 = fmul fast float %6281, %6281
  %6285 = fmul fast float %6282, %6282
  %6286 = fadd fast float %6284, %6285
  %6287 = fmul fast float %6283, %6283
  %6288 = fadd fast float %6286, %6287
  %6289 = call float @dx.op.unary.f32(i32 24, float %6288)  ; Sqrt(value)
  %6290 = fsub fast float %6289, %6202
  %6291 = fmul fast float %6290, %6204
  %6292 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  br label %6293

; <label>:6293                                    ; preds = %6218, %6214
  %6294 = phi float [ %6292, %6218 ], [ 1.000000e+00, %6214 ]
  %6295 = fmul fast float %6211, 5.000000e-01
  %6296 = fadd fast float %6295, 5.000000e-01
  %6297 = call float @dx.op.unary.f32(i32 22, float %6296)  ; Frc(value)
  %6298 = call float @dx.op.unary.f32(i32 27, float %6297)  ; Round_ni(value)
  %6299 = call float @dx.op.unary.f32(i32 22, float %6297)  ; Frc(value)
  %6300 = fmul fast float %6299, 2.000000e+00
  %6301 = fadd fast float %6300, -1.000000e+00
  %6302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %6163, float %6164, float %6298, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6303 = extractvalue %dx.types.ResRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.ResRet.f32 %6302, 1
  %6305 = extractvalue %dx.types.ResRet.f32 %6302, 2
  %6306 = extractvalue %dx.types.ResRet.f32 %6302, 3
  %6307 = fadd fast float %6303, -5.000000e-01
  %6308 = fadd fast float %6305, -5.000000e-01
  %6309 = fmul fast float %6307, 0xBFD5555560000000
  %6310 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6308, float %6309)  ; FMad(a,b,c)
  %6311 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6304, float 0.000000e+00)  ; FMad(a,b,c)
  %6312 = fadd fast float %6311, %6306
  %6313 = fmul fast float %6307, -7.500000e-01
  %6314 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6308, float %6313)  ; FMad(a,b,c)
  %6315 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6304, float 0.000000e+00)  ; FMad(a,b,c)
  %6316 = fadd fast float %6315, %6306
  %6317 = call float @dx.op.binary.f32(i32 35, float %6310, float -1.000000e+00)  ; FMax(a,b)
  %6318 = call float @dx.op.binary.f32(i32 35, float %6312, float -1.000000e+00)  ; FMax(a,b)
  %6319 = call float @dx.op.binary.f32(i32 35, float %6314, float -1.000000e+00)  ; FMax(a,b)
  %6320 = call float @dx.op.binary.f32(i32 35, float %6316, float -1.000000e+00)  ; FMax(a,b)
  %6321 = call float @dx.op.binary.f32(i32 36, float %6317, float 1.000000e+00)  ; FMin(a,b)
  %6322 = call float @dx.op.binary.f32(i32 36, float %6318, float 1.000000e+00)  ; FMin(a,b)
  %6323 = call float @dx.op.binary.f32(i32 36, float %6319, float 1.000000e+00)  ; FMin(a,b)
  %6324 = call float @dx.op.binary.f32(i32 36, float %6320, float 1.000000e+00)  ; FMin(a,b)
  %6325 = fcmp fast olt float %6321, 0x3FEFFF8020000000
  br i1 %6325, label %6326, label %6441, !dx.controlflow.hints !171

; <label>:6326                                    ; preds = %6293
  %6327 = extractvalue %dx.types.CBufRet.f32 %6209, 3
  %6328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6328, 0
  %6330 = extractvalue %dx.types.CBufRet.f32 %6328, 1
  %6331 = extractvalue %dx.types.CBufRet.f32 %6328, 2
  %6332 = extractvalue %dx.types.CBufRet.f32 %6328, 3
  %6333 = fsub fast float %6329, %6321
  %6334 = fsub fast float %6330, %6322
  %6335 = fsub fast float %6331, %6323
  %6336 = fsub fast float %6332, %6324
  %6337 = fmul fast float %6333, %6327
  %6338 = fmul fast float %6334, %6327
  %6339 = fmul fast float %6335, %6327
  %6340 = fmul fast float %6336, %6327
  %6341 = fadd fast float %6337, %6321
  %6342 = fadd fast float %6338, %6322
  %6343 = fsub fast float -0.000000e+00, %6342
  %6344 = fadd fast float %6339, %6323
  %6345 = fadd fast float %6340, %6324
  %6346 = fmul fast float %6341, %6341
  %6347 = fsub fast float %6342, %6346
  %6348 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6347)  ; FMax(a,b)
  %6349 = fdiv fast float 1.000000e+00, %6348
  %6350 = fmul fast float %6342, %6341
  %6351 = fsub fast float %6344, %6350
  %6352 = fsub fast float %6301, %6341
  %6353 = fmul fast float %6301, %6301
  %6354 = fsub fast float %6353, %6342
  %6355 = fmul fast float %6352, %6349
  %6356 = fmul fast float %6355, %6351
  %6357 = fsub fast float %6354, %6356
  %6358 = fmul fast float %6342, %6342
  %6359 = fsub fast float %6345, %6358
  %6360 = fmul fast float %6351, %6351
  %6361 = fmul fast float %6360, %6349
  %6362 = fsub fast float %6359, %6361
  %6363 = fdiv fast float %6357, %6362
  %6364 = fmul fast float %6351, %6363
  %6365 = fsub fast float %6352, %6364
  %6366 = fmul fast float %6365, %6349
  %6367 = fmul fast float %6366, %6341
  %6368 = fsub fast float 1.000000e+00, %6367
  %6369 = fmul fast float %6342, %6363
  %6370 = fsub fast float %6368, %6369
  %6371 = fmul fast float %6366, %6366
  %6372 = fmul fast float %6363, 4.000000e+00
  %6373 = fmul fast float %6372, %6370
  %6374 = fsub fast float %6371, %6373
  %6375 = call float @dx.op.unary.f32(i32 24, float %6374)  ; Sqrt(value)
  %6376 = fcmp fast oge float %6366, 0.000000e+00
  %6377 = fsub fast float -0.000000e+00, %6375
  %6378 = select i1 %6376, float %6377, float %6375
  %6379 = fsub fast float %6378, %6366
  %6380 = fdiv fast float %6379, %6363
  %6381 = fdiv fast float %6370, %6379
  %6382 = fmul fast float %6380, 5.000000e-01
  %6383 = fmul fast float %6381, 2.000000e+00
  %6384 = select i1 %6376, float %6382, float %6383
  %6385 = select i1 %6376, float %6383, float %6382
  %6386 = call float @dx.op.binary.f32(i32 35, float %6384, float %6385)  ; FMax(a,b)
  %6387 = call float @dx.op.binary.f32(i32 36, float %6384, float %6385)  ; FMin(a,b)
  %6388 = fcmp fast ogt float %6301, %6387
  br i1 %6388, label %6389, label %6399

; <label>:6389                                    ; preds = %6326
  %6390 = fsub fast float %6301, %6387
  %6391 = fsub fast float %6386, %6387
  %6392 = fmul fast float %6390, %6391
  %6393 = fmul fast float %6386, %6301
  %6394 = fadd fast float %6386, %6301
  %6395 = fmul fast float %6394, %6341
  %6396 = fadd fast float %6393, %6342
  %6397 = fsub fast float %6396, %6395
  %6398 = fdiv fast float %6397, %6392
  br label %6399

; <label>:6399                                    ; preds = %6389, %6326
  %6400 = phi float [ %6398, %6389 ], [ 0.000000e+00, %6326 ]
  %6401 = fcmp fast ogt float %6301, %6386
  %6402 = fsub fast float %6301, %6386
  br i1 %6401, label %6403, label %6413

; <label>:6403                                    ; preds = %6399
  %6404 = fsub fast float %6386, %6387
  %6405 = fmul fast float %6404, %6402
  %6406 = fmul fast float %6387, %6301
  %6407 = fadd fast float %6387, %6301
  %6408 = fmul fast float %6407, %6341
  %6409 = fsub fast float %6343, %6406
  %6410 = fadd fast float %6409, %6408
  %6411 = fdiv fast float %6410, %6405
  %6412 = fadd fast float %6411, %6400
  br label %6413

; <label>:6413                                    ; preds = %6403, %6399
  %6414 = phi float [ %6412, %6403 ], [ %6400, %6399 ]
  %6415 = fsub fast float %6301, %6387
  %6416 = fmul fast float %6415, %6402
  %6417 = fmul fast float %6387, %6386
  %6418 = fadd fast float %6387, %6386
  %6419 = fmul fast float %6418, %6341
  %6420 = fadd fast float %6417, %6342
  %6421 = fsub fast float %6420, %6419
  %6422 = fdiv fast float %6421, %6416
  %6423 = call float @dx.op.unary.f32(i32 7, float %6414)  ; Saturate(value)
  %6424 = fcmp fast oeq float %5092, 0.000000e+00
  %6425 = extractvalue %dx.types.CBufRet.f32 %6209, 0
  %6426 = fcmp fast oeq float %6425, 0.000000e+00
  %6427 = or i1 %6424, %6426
  %6428 = fmul fast float %6425, 2.000000e+00
  %6429 = fadd fast float %6210, %6211
  %6430 = fdiv fast float %6429, %6428
  %6431 = call float @dx.op.unary.f32(i32 7, float %6430)  ; Saturate(value)
  %6432 = fmul fast float %6431, 2.000000e+00
  %6433 = fsub fast float 3.000000e+00, %6432
  %6434 = fmul fast float %6431, %6431
  %6435 = fmul fast float %6434, %6433
  %6436 = select i1 %6427, float 1.000000e+00, float %6435
  %6437 = fmul fast float %6422, %5092
  %6438 = fadd fast float %6423, %6437
  %6439 = call float @dx.op.unary.f32(i32 7, float %6438)  ; Saturate(value)
  %6440 = fmul fast float %6436, %6439
  br label %6441

; <label>:6441                                    ; preds = %6413, %6293
  %6442 = phi float [ %6440, %6413 ], [ 0.000000e+00, %6293 ]
  %6443 = fsub fast float 1.000000e+00, %6442
  %6444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %6163, float %6164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6445 = extractvalue %dx.types.ResRet.f32 %6444, 0
  %6446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.i32 %6446, 2
  %6448 = icmp eq i32 %6447, 0
  br i1 %6448, label %6454, label %6449

; <label>:6449                                    ; preds = %6441
  %6450 = call float @dx.op.unary.f32(i32 7, float %6442)  ; Saturate(value)
  %6451 = fadd fast float %6445, -1.000000e+00
  %6452 = fmul fast float %6450, %6451
  %6453 = fadd fast float %6452, 1.000000e+00
  br label %6454

; <label>:6454                                    ; preds = %6449, %6441
  %6455 = phi float [ %6453, %6449 ], [ %6443, %6441 ]
  br i1 %6217, label %6456, label %6474

; <label>:6456                                    ; preds = %6454
  %6457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6458 = extractvalue %dx.types.CBufRet.f32 %6457, 1
  %6459 = fsub fast float %6294, %6458
  %6460 = call float @dx.op.unary.f32(i32 7, float %6459)  ; Saturate(value)
  %6461 = fsub fast float %6294, %6216
  %6462 = call float @dx.op.unary.f32(i32 7, float %6461)  ; Saturate(value)
  %6463 = fsub fast float %6460, %6462
  %6464 = fsub fast float %6296, %6462
  %6465 = fdiv fast float %6464, %6463
  %6466 = call float @dx.op.unary.f32(i32 7, float %6465)  ; Saturate(value)
  %6467 = fmul fast float %6466, 2.000000e+00
  %6468 = fsub fast float 3.000000e+00, %6467
  %6469 = fsub fast float %6445, %6455
  %6470 = fmul fast float %6466, %6466
  %6471 = fmul fast float %6470, %6469
  %6472 = fmul fast float %6471, %6468
  %6473 = fadd fast float %6472, %6455
  br label %6474

; <label>:6474                                    ; preds = %6456, %6454
  %6475 = phi float [ %6473, %6456 ], [ %6455, %6454 ]
  %6476 = call float @dx.op.binary.f32(i32 35, float %6445, float %6475)  ; FMax(a,b)
  %6477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6478 = extractvalue %dx.types.CBufRet.i32 %6477, 2
  %6479 = and i32 %6478, 1
  %6480 = icmp eq i32 %6479, 0
  %6481 = fcmp fast une float %6476, 1.000000e+00
  %6482 = and i1 %6481, %6480
  br i1 %6482, label %6483, label %6502

; <label>:6483                                    ; preds = %6474
  %6484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %6163, float %6164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6485 = extractvalue %dx.types.ResRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.ResRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.ResRet.f32 %6484, 2
  %6488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.f32 %6488, 1
  %6490 = fmul fast float %6489, %6485
  %6491 = fmul fast float %6489, %6486
  %6492 = fmul fast float %6489, %6487
  %6493 = fcmp fast ogt float %6445, 0x3FEFFF2E40000000
  %6494 = fsub fast float 1.000000e+00, %6476
  %6495 = fsub fast float 1.000000e+00, %6445
  %6496 = fdiv fast float %6494, %6495
  %6497 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6498 = select i1 %6493, float 0.000000e+00, float %6497
  %6499 = fmul fast float %6490, %6498
  %6500 = fmul fast float %6491, %6498
  %6501 = fmul fast float %6492, %6498
  br label %6502

; <label>:6502                                    ; preds = %6483, %6474
  %6503 = phi float [ 0.000000e+00, %6474 ], [ %6499, %6483 ]
  %6504 = phi float [ 0.000000e+00, %6474 ], [ %6500, %6483 ]
  %6505 = phi float [ 0.000000e+00, %6474 ], [ %6501, %6483 ]
  %6506 = fmul fast float %6503, %5080
  %6507 = fmul fast float %6504, %5080
  %6508 = fmul fast float %6505, %5080
  %6509 = fmul fast float %6476, %6138
  %6510 = call float @dx.op.dot3.f32(i32 55, float %6476, float %6476, float %6476, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6511 = call float @dx.op.dot3.f32(i32 55, float %6506, float %6507, float %6508, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6512 = select i1 %207, float %6510, float %6476
  %6513 = select i1 %207, float 1.000000e+00, float %6476
  %6514 = select i1 %207, float %6511, float %6506
  %6515 = select i1 %207, float 0.000000e+00, float %6507
  %6516 = select i1 %207, float 0.000000e+00, float %6508
  %6517 = fmul fast float %6512, %6150
  %6518 = fmul fast float %6512, %6151
  %6519 = fmul fast float %6513, %6152
  %6520 = fadd fast float %6517, %6514
  %6521 = fadd fast float %6518, %6515
  %6522 = fadd fast float %6516, %6519
  %6523 = fmul fast float %6512, %6153
  %6524 = fmul fast float %6512, %6154
  %6525 = fmul fast float %6513, %6155
  br label %6526

; <label>:6526                                    ; preds = %6502, %6159, %6128, %5360
  %6527 = phi float [ %5365, %5360 ], [ %6150, %6128 ], [ %6520, %6502 ], [ %6150, %6159 ]
  %6528 = phi float [ %5366, %5360 ], [ %6151, %6128 ], [ %6521, %6502 ], [ %6151, %6159 ]
  %6529 = phi float [ %5367, %5360 ], [ %6152, %6128 ], [ %6522, %6502 ], [ %6152, %6159 ]
  %6530 = phi float [ %5368, %5360 ], [ %6153, %6128 ], [ %6523, %6502 ], [ %6153, %6159 ]
  %6531 = phi float [ %5369, %5360 ], [ %6154, %6128 ], [ %6524, %6502 ], [ %6154, %6159 ]
  %6532 = phi float [ %5370, %5360 ], [ %6155, %6128 ], [ %6525, %6502 ], [ %6155, %6159 ]
  %6533 = phi float [ %5371, %5360 ], [ %6138, %6128 ], [ %6509, %6502 ], [ %6138, %6159 ]
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 2
  %6536 = extractvalue %dx.types.CBufRet.f32 %6534, 3
  %6537 = fmul fast float %6535, %89
  %6538 = fmul fast float %6536, %90
  %6539 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  %6540 = call float @dx.op.unary.f32(i32 7, float %6538)  ; Saturate(value)
  %6541 = select i1 %5102, i32 2, i32 0
  %6542 = or i32 %6541, 1
  %6543 = uitofp i32 %6542 to float
  %6544 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %6539, float %6540, float %6543, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6545 = extractvalue %dx.types.ResRet.f32 %6544, 0
  %6546 = extractvalue %dx.types.ResRet.f32 %6544, 1
  %6547 = extractvalue %dx.types.ResRet.f32 %6544, 2
  %6548 = extractvalue %dx.types.ResRet.f32 %6544, 3
  %6549 = add nuw nsw i32 %6541, 2
  %6550 = uitofp i32 %6549 to float
  %6551 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %6539, float %6540, float %6550, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6552 = extractvalue %dx.types.ResRet.f32 %6551, 0
  %6553 = extractvalue %dx.types.ResRet.f32 %6551, 1
  %6554 = extractvalue %dx.types.ResRet.f32 %6551, 2
  %6555 = extractvalue %dx.types.ResRet.f32 %6551, 3
  %6556 = call float @dx.op.binary.f32(i32 35, float %6546, float %6547)  ; FMax(a,b)
  %6557 = call float @dx.op.binary.f32(i32 35, float %6545, float %6556)  ; FMax(a,b)
  %6558 = call float @dx.op.binary.f32(i32 35, float %6557, float %6548)  ; FMax(a,b)
  %6559 = call float @dx.op.binary.f32(i32 36, float %6553, float %6554)  ; FMin(a,b)
  %6560 = call float @dx.op.binary.f32(i32 36, float %6552, float %6559)  ; FMin(a,b)
  %6561 = call float @dx.op.binary.f32(i32 36, float %6560, float %6555)  ; FMin(a,b)
  %6562 = fmul fast float %6558, 2.550000e+02
  %6563 = fadd fast float %6562, 0x3F70101020000000
  %6564 = fptoui float %6563 to i32
  %6565 = fmul fast float %6561, 2.550000e+02
  %6566 = fadd fast float %6565, 0x3F70101020000000
  %6567 = fptoui float %6566 to i32
  %6568 = icmp ult i32 %6564, %6567
  br i1 %6568, label %6569, label %6738

; <label>:6569                                    ; preds = %6526
  %6570 = fcmp fast ogt float %76, 9.843750e-01
  %6571 = fadd fast float %5364, -4.000000e+00
  %6572 = select i1 %6570, float -4.000000e+00, float %6571
  %6573 = call float @dx.op.binary.f32(i32 35, float %6572, float 0.000000e+00)  ; FMax(a,b)
  %6574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6574, 0
  %6576 = fadd fast float %6575, %6573
  %6577 = extractvalue %dx.types.CBufRet.f32 %6574, 2
  %6578 = fmul fast float %6576, %6577
  %6579 = call float @dx.op.unary.f32(i32 23, float %6578)  ; Log(value)
  %6580 = extractvalue %dx.types.CBufRet.f32 %6574, 3
  %6581 = fmul fast float %6580, %6579
  %6582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6583 = extractvalue %dx.types.CBufRet.f32 %6582, 2
  %6584 = fmul fast float %6581, %6583
  %6585 = call float @dx.op.unary.f32(i32 7, float %6584)  ; Saturate(value)
  %6586 = uitofp i32 %6564 to float
  %6587 = uitofp i32 %6567 to float
  %6588 = fadd fast float %6586, 5.000000e-01
  %6589 = fadd fast float %6587, 5.000000e-01
  %6590 = fmul fast float %6583, %6588
  %6591 = fmul fast float %6583, %6589
  %6592 = fadd fast float %6590, 0x3F0FFB4800000000
  %6593 = fadd fast float %6591, 0xBF0FFB4800000000
  %6594 = call float @dx.op.binary.f32(i32 35, float %6585, float %6592)  ; FMax(a,b)
  %6595 = call float @dx.op.binary.f32(i32 36, float %6594, float %6593)  ; FMin(a,b)
  %6596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6597 = extractvalue %dx.types.CBufRet.f32 %6596, 1
  %6598 = extractvalue %dx.types.CBufRet.f32 %6596, 2
  %6599 = extractvalue %dx.types.CBufRet.f32 %6596, 0
  %6600 = select i1 %5102, float %6599, float 0.000000e+00
  %6601 = fmul fast float %6597, %6595
  %6602 = fadd fast float %6600, %6601
  %6603 = fadd fast float %6600, %6598
  %6604 = fsub fast float %6597, %6598
  %6605 = fadd fast float %6604, %6600
  %6606 = call float @dx.op.binary.f32(i32 35, float %6602, float %6603)  ; FMax(a,b)
  %6607 = call float @dx.op.binary.f32(i32 36, float %6606, float %6605)  ; FMin(a,b)
  %6608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %6539, float %6540, float %6607, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6609 = extractvalue %dx.types.ResRet.f32 %6608, 0
  %6610 = extractvalue %dx.types.ResRet.f32 %6608, 1
  %6611 = extractvalue %dx.types.ResRet.f32 %6608, 2
  %6612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.i32 %6612, 0
  %6614 = extractvalue %dx.types.CBufRet.i32 %6612, 1
  %6615 = uitofp i32 %6613 to float
  %6616 = uitofp i32 %6614 to float
  %6617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6618 = extractvalue %dx.types.CBufRet.f32 %6617, 0
  %6619 = extractvalue %dx.types.CBufRet.f32 %6617, 1
  %6620 = fmul fast float %6615, %6539
  %6621 = fmul fast float %6616, %6540
  %6622 = fadd fast float %6620, -5.000000e-01
  %6623 = fadd fast float %6621, -5.000000e-01
  %6624 = call float @dx.op.unary.f32(i32 22, float %6622)  ; Frc(value)
  %6625 = call float @dx.op.unary.f32(i32 22, float %6623)  ; Frc(value)
  %6626 = fmul fast float %6624, %6624
  %6627 = fmul fast float %6626, %6624
  %6628 = fsub fast float 3.000000e+00, %6624
  %6629 = fmul fast float %6626, %6628
  %6630 = fmul fast float %6624, 3.000000e+00
  %6631 = fmul fast float %6627, 3.000000e+00
  %6632 = fmul fast float %6626, 6.000000e+00
  %6633 = fsub fast float %6631, %6632
  %6634 = fadd fast float %6633, 4.000000e+00
  %6635 = fmul fast float %6634, 0x3FC5555560000000
  %6636 = fmul fast float %6627, -3.000000e+00
  %6637 = fadd fast float %6626, %6624
  %6638 = fmul fast float %6637, 3.000000e+00
  %6639 = fadd fast float %6636, 1.000000e+00
  %6640 = fadd fast float %6639, %6638
  %6641 = fmul fast float %6627, 0x3FC5555560000000
  %6642 = fmul fast float %6625, %6625
  %6643 = fmul fast float %6642, %6625
  %6644 = fsub fast float 3.000000e+00, %6625
  %6645 = fmul fast float %6642, %6644
  %6646 = fmul fast float %6625, 3.000000e+00
  %6647 = fmul fast float %6643, 3.000000e+00
  %6648 = fmul fast float %6642, 6.000000e+00
  %6649 = fsub fast float %6647, %6648
  %6650 = fadd fast float %6649, 4.000000e+00
  %6651 = fmul fast float %6650, 0x3FC5555560000000
  %6652 = fmul fast float %6643, -3.000000e+00
  %6653 = fadd fast float %6642, %6625
  %6654 = fmul fast float %6653, 3.000000e+00
  %6655 = fadd fast float %6652, 1.000000e+00
  %6656 = fadd fast float %6655, %6654
  %6657 = fmul fast float %6643, 0x3FC5555560000000
  %6658 = fadd fast float %6624, 1.000000e+00
  %6659 = fsub fast float 1.000000e+00, %6630
  %6660 = fadd fast float %6659, %6629
  %6661 = fadd fast float %6660, %6634
  %6662 = fmul fast float %6661, 0x3FC5555560000000
  %6663 = fdiv fast float %6635, %6662
  %6664 = fsub fast float %6658, %6663
  %6665 = fsub fast float 1.000000e+00, %6624
  %6666 = fadd fast float %6640, %6627
  %6667 = fmul fast float %6666, 0x3FC5555560000000
  %6668 = fdiv fast float %6641, %6667
  %6669 = fadd fast float %6665, %6668
  %6670 = fadd fast float %6625, 1.000000e+00
  %6671 = fsub fast float 1.000000e+00, %6646
  %6672 = fadd fast float %6671, %6645
  %6673 = fadd fast float %6672, %6650
  %6674 = fmul fast float %6673, 0x3FC5555560000000
  %6675 = fdiv fast float %6651, %6674
  %6676 = fsub fast float %6670, %6675
  %6677 = fsub fast float 1.000000e+00, %6625
  %6678 = fadd fast float %6656, %6643
  %6679 = fmul fast float %6678, 0x3FC5555560000000
  %6680 = fdiv fast float %6657, %6679
  %6681 = fadd fast float %6680, %6677
  %6682 = fmul fast float %6664, %6618
  %6683 = fsub fast float %6539, %6682
  %6684 = fmul fast float %6669, %6618
  %6685 = fadd fast float %6684, %6539
  %6686 = fmul fast float %6681, %6619
  %6687 = fadd fast float %6686, %6540
  %6688 = fmul fast float %6676, %6619
  %6689 = fsub fast float %6540, %6688
  %6690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6683, float %6689, float %6607, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.ResRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.ResRet.f32 %6690, 2
  %6694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6685, float %6689, float %6607, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6695 = extractvalue %dx.types.ResRet.f32 %6694, 0
  %6696 = extractvalue %dx.types.ResRet.f32 %6694, 1
  %6697 = extractvalue %dx.types.ResRet.f32 %6694, 2
  %6698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6683, float %6687, float %6607, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6699 = extractvalue %dx.types.ResRet.f32 %6698, 0
  %6700 = extractvalue %dx.types.ResRet.f32 %6698, 1
  %6701 = extractvalue %dx.types.ResRet.f32 %6698, 2
  %6702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6685, float %6687, float %6607, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6703 = extractvalue %dx.types.ResRet.f32 %6702, 0
  %6704 = extractvalue %dx.types.ResRet.f32 %6702, 1
  %6705 = extractvalue %dx.types.ResRet.f32 %6702, 2
  %6706 = fsub fast float %6699, %6691
  %6707 = fsub fast float %6700, %6692
  %6708 = fsub fast float %6701, %6693
  %6709 = fmul fast float %6706, %6679
  %6710 = fmul fast float %6707, %6679
  %6711 = fmul fast float %6708, %6679
  %6712 = fadd fast float %6709, %6691
  %6713 = fadd fast float %6710, %6692
  %6714 = fadd fast float %6711, %6693
  %6715 = fsub fast float %6703, %6695
  %6716 = fsub fast float %6704, %6696
  %6717 = fsub fast float %6705, %6697
  %6718 = fmul fast float %6715, %6679
  %6719 = fmul fast float %6716, %6679
  %6720 = fmul fast float %6717, %6679
  %6721 = fsub fast float %6695, %6712
  %6722 = fadd fast float %6721, %6718
  %6723 = fsub fast float %6696, %6713
  %6724 = fadd fast float %6723, %6719
  %6725 = fsub fast float %6697, %6714
  %6726 = fadd fast float %6725, %6720
  %6727 = fmul fast float %6722, %6667
  %6728 = fmul fast float %6724, %6667
  %6729 = fmul fast float %6726, %6667
  %6730 = fadd fast float %6727, %6712
  %6731 = fadd fast float %6728, %6713
  %6732 = fadd fast float %6729, %6714
  %6733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6734 = extractvalue %dx.types.CBufRet.f32 %6733, 1
  %6735 = fmul fast float %6730, %6734
  %6736 = fmul fast float %6731, %6734
  %6737 = fmul fast float %6732, %6734
  br label %6738

; <label>:6738                                    ; preds = %6569, %6526
  %6739 = phi float [ %6609, %6569 ], [ 1.000000e+00, %6526 ]
  %6740 = phi float [ %6610, %6569 ], [ 1.000000e+00, %6526 ]
  %6741 = phi float [ %6611, %6569 ], [ 1.000000e+00, %6526 ]
  %6742 = phi float [ %6735, %6569 ], [ 0.000000e+00, %6526 ]
  %6743 = phi float [ %6736, %6569 ], [ 0.000000e+00, %6526 ]
  %6744 = phi float [ %6737, %6569 ], [ 0.000000e+00, %6526 ]
  %6745 = fmul fast float %6742, %5080
  %6746 = fmul fast float %6743, %5080
  %6747 = fmul fast float %6744, %5080
  %6748 = fmul fast float %6739, %6533
  %6749 = call float @dx.op.dot3.f32(i32 55, float %6739, float %6740, float %6741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6750 = call float @dx.op.dot3.f32(i32 55, float %6745, float %6746, float %6747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6751 = select i1 %207, float %6749, float %6739
  %6752 = select i1 %207, float %6749, float %6740
  %6753 = select i1 %207, float 1.000000e+00, float %6741
  %6754 = select i1 %207, float %6750, float %6745
  %6755 = select i1 %207, float 0.000000e+00, float %6746
  %6756 = select i1 %207, float 0.000000e+00, float %6747
  %6757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6758 = extractvalue %dx.types.CBufRet.i32 %6757, 3
  %6759 = and i32 %6758, 3
  %6760 = icmp ne i32 %6759, 0
  %6761 = and i32 %6758, 4
  %6762 = icmp ne i32 %6761, 0
  %6763 = and i1 %6760, %6762
  %6764 = and i1 %207, %6763
  br i1 %6764, label %6765, label %6771

; <label>:6765                                    ; preds = %6738
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6768 = fadd fast float %6748, -1.000000e+00
  %6769 = fmul fast float %6767, %6768
  %6770 = fadd fast float %6769, 1.000000e+00
  br label %6771

; <label>:6771                                    ; preds = %6765, %6738
  %6772 = phi float [ %6770, %6765 ], [ %6748, %6738 ]
  %6773 = fadd fast float %6530, %6527
  %6774 = fmul fast float %6751, %6773
  %6775 = fadd fast float %6774, %6754
  %6776 = fadd fast float %6531, %6528
  %6777 = fmul fast float %6752, %6776
  %6778 = fadd fast float %6777, %6755
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 0
  br i1 %207, label %6781, label %6804

; <label>:6781                                    ; preds = %6771
  %6782 = fadd fast float %6775, %6778
  %6783 = fmul fast float %6780, %6782
  %6784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6785 = extractvalue %dx.types.CBufRet.f32 %6784, 3
  %6786 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %6787 = fsub fast float %5089, %5083
  %6788 = fadd fast float %6787, %5090
  %6789 = fsub fast float %6788, %6786
  %6790 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %6791 = fmul fast float %6789, %6790
  %6792 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  %6793 = fsub fast float %6792, %6785
  %6794 = fmul fast float %6793, %6772
  %6795 = fadd fast float %6794, %6785
  %6796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.f32 %6796, 0
  %6798 = fsub fast float %6795, %6797
  %6799 = fmul fast float %6798, 1.000000e+01
  %6800 = call float @dx.op.unary.f32(i32 7, float %6799)  ; Saturate(value)
  %6801 = fmul fast float %6800, %5079
  %6802 = fadd fast float %6801, %5080
  %6803 = fmul fast float %6802, %6795
  br label %6827

; <label>:6804                                    ; preds = %6771
  %6805 = fadd fast float %6532, %6529
  %6806 = fmul fast float %6753, %6805
  %6807 = fadd fast float %6806, %6756
  %6808 = fmul fast float %6780, %6775
  %6809 = fmul fast float %6780, %6778
  %6810 = fmul fast float %6780, %6807
  %6811 = call float @dx.op.binary.f32(i32 35, float %6809, float %6810)  ; FMax(a,b)
  %6812 = call float @dx.op.binary.f32(i32 35, float %6808, float %6811)  ; FMax(a,b)
  %6813 = call float @dx.op.binary.f32(i32 35, float %6812, float %5080)  ; FMax(a,b)
  %6814 = fcmp fast ugt float %6813, 0x3F10000000000000
  br i1 %6814, label %6816, label %6815

; <label>:6815                                    ; preds = %6804
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6816

; <label>:6816                                    ; preds = %6815, %6804
  %6817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6818 = extractvalue %dx.types.ResRet.i32 %6817, 0
  %6819 = and i32 %6818, 32
  %6820 = icmp eq i32 %6819, 0
  br i1 %6820, label %6827, label %6821

; <label>:6821                                    ; preds = %6816
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 0
  %6824 = fmul fast float %6823, 0x3FE99999A0000000
  %6825 = fadd fast float %6823, %6808
  %6826 = fadd fast float %6824, %6810
  br label %6827

; <label>:6827                                    ; preds = %6821, %6816, %6781
  %6828 = phi float [ %6783, %6781 ], [ %6825, %6821 ], [ %6808, %6816 ]
  %6829 = phi float [ %6803, %6781 ], [ %6809, %6821 ], [ %6809, %6816 ]
  %6830 = phi float [ %6802, %6781 ], [ %6826, %6821 ], [ %6810, %6816 ]
  %6831 = phi float [ %6802, %6781 ], [ %5080, %6821 ], [ %5080, %6816 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6832 = call float @dx.op.binary.f32(i32 36, float %6828, float 3.225500e+04)  ; FMin(a,b)
  %6833 = call float @dx.op.binary.f32(i32 36, float %6829, float 3.225500e+04)  ; FMin(a,b)
  %6834 = call float @dx.op.binary.f32(i32 36, float %6830, float 3.225500e+04)  ; FMin(a,b)
  %6835 = call float @dx.op.binary.f32(i32 36, float %6831, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6832)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6833)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6834)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6835)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!60 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!61 = !{!62, !63, !64, !65, !66, !67, !68}
!62 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!63 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!64 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!65 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!66 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!67 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!68 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!69 = !{[27 x i32] [i32 25, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !88}
!71 = !{!72, !86, null}
!72 = !{!73, !76, !78, !80, !81, !82, !83, !85}
!73 = !{i32 0, !"SV_Position", i8 9, i8 3, !74, i8 4, i32 1, i8 4, i32 0, i8 0, !75}
!74 = !{i32 0}
!75 = !{i32 3, i32 15}
!76 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 2, i32 1, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 2, !"NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 2, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 3, !"TANGENT", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 3, i8 0, !75}
!81 = !{i32 4, !"AMBIENT_COLOR", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 4, i8 0, !79}
!82 = !{i32 5, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 5, i8 0, !75}
!83 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !74, i8 1, i32 1, i8 1, i32 6, i8 0, !84}
!84 = !{i32 3, i32 1}
!85 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !74, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!86 = !{!87}
!87 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!88 = !{i32 0, i64 16}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !{!102, !104, !106, !108}
!102 = distinct !{!102, !103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!103 = distinct !{!103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!107 = distinct !{!107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = !{!112, !112, i64 0}
!112 = !{!"float", !99, i64 0}
!113 = distinct !{!113, !91}
!114 = distinct !{!114, !91}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!126 = distinct !{!126, !127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!127 = distinct !{!127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!128 = distinct !{!128, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!129 = distinct !{!129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!130 = distinct !{!130, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!140 = distinct !{!140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!149 = !{!145}
!150 = !{!146, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!159 = !{!155}
!160 = !{!156, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 2}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}

