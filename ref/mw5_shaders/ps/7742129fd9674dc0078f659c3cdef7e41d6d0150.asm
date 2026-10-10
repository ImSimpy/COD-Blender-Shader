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
; TRANSIENT_INDEX          0    y          5     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: efcb093c423d0bead439d06eeaaa3712
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
; TRANSIENT_INDEX          0        nointerpolation       
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
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32     2darray      T5     t16,space2     1
;                                   texture     f32          3d      T6     t15,space2     1
;                                   texture     f32          2d      T7     t14,space2     1
;                                   texture     f32          2d      T8     t13,space2     1
;                                   texture     u32          2d      T9     t17,space2     1
;                                   texture     f32          3d     T10     t18,space2     1
;                                   texture     f32     2darray     T11     t23,space2     1
;                                   texture     f32     2darray     T12     t24,space2     1
;                                   texture     f32     2darray     T13     t25,space2     1
;                                   texture    byte         r/o     T14     t66,space1     1
;                                   texture    byte         r/o     T15     t16,space1     1
;                                   texture    byte         r/o     T16     t17,space1     1
;                                   texture     f32          2d     T17     t69,space2     1
;                                   texture    byte         r/o     T18     t49,space1     1
;                                   texture    byte         r/o     T19     t50,space1     1
;                                   texture    byte         r/o     T20     t51,space1     1
;                                   texture    byte         r/o     T21     t52,space1     1
;                                   texture    byte         r/o     T22      t3,space1     1
;                                   texture    byte         r/o     T23      t4,space1     1
;                                   texture    byte         r/o     T24      t5,space1     1
;                                   texture    byte         r/o     T25      t6,space1     1
;                                   texture     f32          2d     T26     t37,space2     1
;                                   texture     f32          2d     T27             t0     1
;                                   texture     f32          2d     T28     t58,space2     1
;                                   texture     f32          2d     T29     t57,space2     1
;                                   texture    byte         r/o     T30     t69,space1     1
;                                   texture     u32          2d     T31     t56,space2     1
;                                   texture     f32     2darray     T32     t35,space2     1
;                                   texture     f32          2d     T33     t34,space2     1
;                                   texture     f32          3d     T34     t31,space2     1
;                                   texture     f32          2d     T35      t2,space2     1
;                                   texture     f32          2d     T36      t3,space2     1
;                                   texture     f32          2d     T37      t4,space2     1
;                                   textureunorm_f32     2darray     T38     t80,space2     1
;                                   texture    byte         r/o     T39     t67,space1     1
;                                   texture     f32          2d     T40      t7,space2     1
;                                   texture     f32          2d     T41      t6,space2     1
;                                   texture     f32          2d     T42      t5,space2     1
;                                   texture     f32          2d     T43     t38,space2     1
;                                   texture     f32          1d     T44     t30,space2     1
;                                   texture     f32          3d     T45     t44,space2     1
;                                   texture     f32          3d     T46     t45,space2     1
;                                   texture     f32     2darray     T47     t47,space2     1
;                                   textureunorm_f32     2darray     T48     t85,space2     1
;                                   texture     f32          2d     T49     t83,space2     1
;                                   texture     f32          2d     T50     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = alloca [4 x i32], align 4
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = alloca [12 x float], align 4
  %77 = alloca [12 x float], align 4
  %78 = alloca [4 x float], align 4
  %79 = alloca [4 x float], align 4
  %80 = alloca [4 x float], align 4
  %81 = alloca [3 x float], align 4
  %82 = alloca [3 x float], align 4
  %83 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %84 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = fmul fast float %86, %72
  %88 = fmul fast float %86, %73
  %89 = fmul fast float %65, %62
  %90 = fmul fast float %66, %61
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %66, %60
  %93 = fmul fast float %64, %62
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %64, %61
  %96 = fmul fast float %65, %60
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %91, %63
  %99 = fmul fast float %94, %63
  %100 = fmul fast float %97, %63
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %102, 2.000000e+00
  %105 = fmul fast float %104, %87
  %106 = fmul fast float %103, 2.000000e+00
  %107 = fmul fast float %106, %88
  %108 = fsub fast float 1.000000e+00, %105
  %109 = fsub fast float 1.000000e+00, %107
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %108, %111
  %115 = fmul fast float %108, %112
  %116 = fmul fast float %108, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fmul fast float %109, %118
  %122 = fmul fast float %109, %119
  %123 = fmul fast float %109, %120
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fadd fast float %121, %125
  %129 = fadd fast float %128, %114
  %130 = fadd fast float %122, %126
  %131 = fadd fast float %130, %115
  %132 = fadd fast float %123, %127
  %133 = fadd fast float %132, %116
  %134 = fmul fast float %129, %75
  %135 = fmul fast float %131, %75
  %136 = fmul fast float %133, %75
  %137 = fadd fast float %69, 5.000000e-01
  %138 = fptoui float %137 to i32
  %139 = shl i32 %138, 3
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %139, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = or i32 %139, 4
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %142, i32 undef)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = and i32 %141, 8191
  %146 = lshr i32 %141, 13
  %147 = and i32 %146, 8191
  %148 = lshr i32 %141, 26
  %149 = and i32 %144, 65535
  %150 = lshr i32 %144, 16
  %151 = uitofp i32 %149 to float
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %154 = uitofp i32 %150 to float
  %155 = uitofp i32 %145 to float
  %156 = fmul fast float %153, %155
  %157 = uitofp i32 %147 to float
  %158 = fmul fast float %153, %157
  %159 = fmul fast float %153, %67
  %160 = fmul fast float %159, %151
  %161 = fmul fast float %153, %68
  %162 = fmul fast float %161, %154
  %163 = fadd fast float %160, %156
  %164 = fadd fast float %158, %162
  %165 = uitofp i32 %148 to float
  %166 = add i32 %59, 120
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = extractvalue %dx.types.ResRet.i32 %167, 1
  %170 = extractvalue %dx.types.ResRet.i32 %167, 2
  %171 = extractvalue %dx.types.ResRet.i32 %167, 3
  %172 = bitcast i32 %168 to float
  %173 = bitcast i32 %169 to float
  %174 = bitcast i32 %170 to float
  %175 = bitcast i32 %171 to float
  %176 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %177 = call float @dx.op.unary.f32(i32 25, float %176)  ; Rsqrt(value)
  %178 = fmul fast float %177, %64
  %179 = fmul fast float %177, %65
  %180 = fmul fast float %177, %66
  %181 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %182 = call float @dx.op.unary.f32(i32 25, float %181)  ; Rsqrt(value)
  %183 = fmul fast float %182, %134
  %184 = fmul fast float %182, %135
  %185 = fmul fast float %182, %136
  %186 = call float @dx.op.dot3.f32(i32 55, float %183, float %184, float %185, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %187 = fmul fast float %186, %186
  %188 = fmul fast float %187, %174
  %189 = fadd fast float %188, %175
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %193 = fmul fast float %192, %181
  %194 = fsub fast float %172, %193
  %195 = fmul fast float %194, %173
  %196 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %197 = fmul fast float %196, %190
  %198 = fmul fast float %87, 5.000000e-01
  %199 = fmul fast float %88, 5.000000e-01
  %200 = fptosi float %198 to i32
  %201 = fptosi float %199 to i32
  %202 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %200, i32 %201, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = lshr i32 %203, 18
  %205 = uitofp i32 %204 to float
  %206 = fmul fast float %205, 0x3F4C00EBA0000000
  %207 = call float @dx.op.unary.f32(i32 21, float %206)  ; Exp(value)
  %208 = fadd fast float %207, -1.000000e+00
  %209 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %210 = extractvalue %dx.types.Dimensions %209, 0
  %211 = sitofp i32 %210 to float
  %212 = extractvalue %dx.types.Dimensions %209, 1
  %213 = sitofp i32 %212 to float
  %214 = fcmp fast oge float %198, %211
  %215 = fcmp fast oge float %199, %213
  %216 = or i1 %214, %215
  %217 = select i1 %216, float 0x4197782600000000, float %208
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = extractvalue %dx.types.CBufRet.f32 %218, 3
  %221 = fmul fast float %219, %87
  %222 = fmul fast float %220, %88
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 114688
  %226 = icmp ne i32 %225, 0
  %227 = select i1 %226, float %221, float 0.000000e+00
  %228 = select i1 %226, float %222, float 0.000000e+00
  %229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %53, float %227, float %228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = fmul fast float %230, 2.550000e+02
  %232 = fptoui float %231 to i32
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.i32 %234, 3
  %236 = and i32 %235, 3
  %237 = icmp ne i32 %236, 0
  %238 = and i32 %235, 4
  %239 = icmp ne i32 %238, 0
  %240 = and i1 %237, %239
  br i1 %240, label %241, label %252

; <label>:241                                     ; preds = %0
  %242 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %243 = fmul fast float %242, %88
  %244 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %245 = fmul fast float %244, %87
  %246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %52, float %245, float %243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = fsub fast float 1.000000e+00, %247
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = fcmp fast olt float %248, %250
  br label %255

; <label>:252                                     ; preds = %0
  %253 = icmp eq i32 %238, 0
  %254 = and i1 %237, %253
  br label %255

; <label>:255                                     ; preds = %252, %241
  %256 = phi i1 [ %251, %241 ], [ %254, %252 ]
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 2
  %259 = fmul fast float %258, 0x3FE3C6EF40000000
  %260 = frem fast float %87, 2.560000e+02
  %261 = frem fast float %88, 2.560000e+02
  %262 = fptoui float %260 to i32
  %263 = fptoui float %261 to i32
  %264 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %262, i32 %263, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = fadd fast float %265, %259
  %267 = call float @dx.op.unary.f32(i32 22, float %266)  ; Frc(value)
  %268 = add i32 %59, 60
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = shl i32 %270, 4
  %272 = and i32 %271, 32752
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %270, 7
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %270, 22
  %278 = shl nuw nsw i32 %277, 5
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = add i32 %59, 72
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = lshr i32 %282, 8
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %282, 16
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = add i32 %59, 36
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %296, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = add i32 %59, 96
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = fmul fast float %305, 0x3F50624DE0000000
  %309 = fmul fast float %307, 0x3F50624DE0000000
  %310 = add i32 %59, 108
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 2
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %323, label %315

; <label>:315                                     ; preds = %255
  %316 = add i32 %59, 200
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = add i32 %318, 0
  %320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %319, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %320, %dx.types.Handle %84, float %70, float %71, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 3
  br label %323

; <label>:323                                     ; preds = %315, %255
  %324 = phi float [ 1.000000e+00, %255 ], [ %322, %315 ]
  %325 = add i32 %59, 24
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = add i32 %59, 28
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = or i32 %330, %327
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %1085, label %333

; <label>:333                                     ; preds = %323
  %334 = add i32 %59, 92
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = lshr i32 %336, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = fmul fast float %338, 0x3F50624DE0000000
  %340 = add i32 %59, 40
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = lshr i32 %342, 16
  %344 = and i32 %343, 255
  %345 = lshr i32 %342, 24
  %346 = add i32 %59, 100
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = add i32 %59, 32
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = lshr i32 %355, 22
  %357 = shl nuw nsw i32 %356, 5
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = shl i32 %355, 4
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %355, 7
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 3
  %367 = fmul fast float %366, 1.000000e+03
  %368 = fmul fast float %308, %367
  %369 = call float @dx.op.unary.f32(i32 22, float %368)  ; Frc(value)
  %370 = fadd fast float %369, %298
  %371 = fmul fast float %309, %367
  %372 = call float @dx.op.unary.f32(i32 22, float %371)  ; Frc(value)
  %373 = fadd fast float %372, %300
  %374 = fmul fast float %339, %367
  %375 = call float @dx.op.unary.f32(i32 22, float %374)  ; Frc(value)
  %376 = fmul fast float %375, 0x401921FB60000000
  %377 = fadd fast float %376, %358
  %378 = call float @dx.op.unary.f32(i32 13, float %377)  ; Sin(value)
  %379 = call float @dx.op.unary.f32(i32 12, float %377)  ; Cos(value)
  %380 = fsub fast float -0.000000e+00, %378
  %381 = fadd fast float %70, -5.000000e-01
  %382 = fadd fast float %71, -5.000000e-01
  %383 = fmul fast float %350, %381
  %384 = fmul fast float %352, %382
  %385 = fadd fast float %383, 5.000000e-01
  %386 = fadd fast float %384, 5.000000e-01
  %387 = fmul fast float %361, %385
  %388 = fmul fast float %364, %386
  %389 = fmul fast float %379, %387
  %390 = call float @dx.op.tertiary.f32(i32 46, float %380, float %388, float %389)  ; FMad(a,b,c)
  %391 = fmul fast float %378, %387
  %392 = call float @dx.op.tertiary.f32(i32 46, float %379, float %388, float %391)  ; FMad(a,b,c)
  %393 = fadd fast float %370, %390
  %394 = fadd fast float %373, %392
  %395 = icmp ugt i32 %344, 1
  %396 = icmp ugt i32 %342, 33554431
  %397 = or i1 %396, %395
  br i1 %397, label %398, label %423

; <label>:398                                     ; preds = %333
  %399 = add i32 %59, 84
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = lshr i32 %401, 16
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = fmul fast float %366, %403
  %405 = call float @dx.op.unary.f32(i32 22, float %404)  ; Frc(value)
  %406 = mul nuw nsw i32 %344, %345
  %407 = uitofp i32 %406 to float
  %408 = fmul fast float %405, %407
  %409 = call float @dx.op.unary.f32(i32 27, float %408)  ; Round_ni(value)
  %410 = fptoui float %409 to i32
  %411 = urem i32 %410, %344
  %412 = udiv i32 %410, %345
  %413 = call float @dx.op.unary.f32(i32 22, float %393)  ; Frc(value)
  %414 = call float @dx.op.unary.f32(i32 22, float %394)  ; Frc(value)
  %415 = uitofp i32 %411 to float
  %416 = uitofp i32 %412 to float
  %417 = fadd fast float %413, %415
  %418 = fadd fast float %414, %416
  %419 = uitofp i32 %344 to float
  %420 = uitofp i32 %345 to float
  %421 = fdiv fast float %417, %419
  %422 = fdiv fast float %418, %420
  br label %423

; <label>:423                                     ; preds = %398, %333
  %424 = phi float [ %421, %398 ], [ %393, %333 ]
  %425 = phi float [ %422, %398 ], [ %394, %333 ]
  %426 = and i32 %327, 16777216
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %537, label %428

; <label>:428                                     ; preds = %423
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %431 = extractvalue %dx.types.CBufRet.f32 %429, 1
  %432 = extractvalue %dx.types.CBufRet.f32 %429, 2
  %433 = fadd fast float %430, %134
  %434 = fadd fast float %431, %135
  %435 = fadd fast float %432, %136
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 0
  %438 = call float @dx.op.unary.f32(i32 7, float %437)  ; Saturate(value)
  %439 = icmp eq i32 %58, 65535
  br i1 %439, label %534, label %440

; <label>:440                                     ; preds = %428
  %441 = lshr i32 %58, 1
  %442 = shl i32 %441, 2
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %58, 1
  %446 = icmp ne i32 %445, 0
  %447 = lshr i32 %444, 16
  %448 = and i32 %444, 65535
  %449 = select i1 %446, i32 %447, i32 %448
  %450 = icmp eq i32 %449, 65535
  br i1 %450, label %530, label %451

; <label>:451                                     ; preds = %440
  %452 = mul nuw nsw i32 %449, 40
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = extractvalue %dx.types.ResRet.f32 %453, 1
  %456 = extractvalue %dx.types.ResRet.f32 %453, 2
  %457 = add nuw nsw i32 %452, 12
  %458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = extractvalue %dx.types.ResRet.f32 %458, 2
  %462 = add nuw nsw i32 %452, 24
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = add nuw nsw i32 %452, 36
  %468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = fsub fast float %433, %454
  %471 = fsub fast float %434, %455
  %472 = fsub fast float %435, %456
  %473 = fmul fast float %469, %470
  %474 = fmul fast float %469, %471
  %475 = fmul fast float %469, %472
  %476 = call float @dx.op.unary.f32(i32 27, float %473)  ; Round_ni(value)
  %477 = call float @dx.op.unary.f32(i32 27, float %474)  ; Round_ni(value)
  %478 = call float @dx.op.unary.f32(i32 27, float %475)  ; Round_ni(value)
  %479 = fadd fast float %476, 5.000000e-01
  %480 = fadd fast float %477, 5.000000e-01
  %481 = fadd fast float %478, 5.000000e-01
  %482 = fmul fast float %479, %459
  %483 = fmul fast float %480, %460
  %484 = fmul fast float %481, %461
  %485 = shl i32 %58, 2
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = add i32 %487, 0
  %489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %490 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %491 = call float @dx.op.unary.f32(i32 22, float %483)  ; Frc(value)
  %492 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %489, %dx.types.Handle %53, float %490, float %491, float %492, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = fmul fast float %494, 1.023000e+03
  %498 = fmul fast float %495, 1.023000e+03
  %499 = fmul fast float %496, 1.023000e+03
  %500 = fadd fast float %497, 5.000000e-01
  %501 = fadd fast float %498, 5.000000e-01
  %502 = fadd fast float %499, 5.000000e-01
  %503 = call float @dx.op.unary.f32(i32 27, float %500)  ; Round_ni(value)
  %504 = call float @dx.op.unary.f32(i32 27, float %501)  ; Round_ni(value)
  %505 = call float @dx.op.unary.f32(i32 27, float %502)  ; Round_ni(value)
  %506 = fsub fast float %473, %476
  %507 = fsub fast float %474, %477
  %508 = fsub fast float %475, %478
  %509 = fmul fast float %506, 7.500000e-01
  %510 = fmul fast float %507, 7.500000e-01
  %511 = fmul fast float %508, 7.500000e-01
  %512 = fadd fast float %476, 1.250000e-01
  %513 = fadd fast float %512, %509
  %514 = fadd fast float %513, %503
  %515 = fadd fast float %477, 1.250000e-01
  %516 = fadd fast float %515, %510
  %517 = fadd fast float %516, %504
  %518 = fadd fast float %478, 1.250000e-01
  %519 = fadd fast float %518, %511
  %520 = fadd fast float %519, %505
  %521 = fmul fast float %514, %464
  %522 = fmul fast float %517, %465
  %523 = fmul fast float %520, %466
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = add i32 %525, 0
  %527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %527, %dx.types.Handle %51, float %521, float %522, float %523, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  br label %530

; <label>:530                                     ; preds = %451, %440
  %531 = phi float [ %529, %451 ], [ -1.000000e+00, %440 ]
  %532 = fadd fast float %531, %438
  %533 = call float @dx.op.unary.f32(i32 7, float %532)  ; Saturate(value)
  br label %534

; <label>:534                                     ; preds = %530, %428
  %535 = phi float [ %533, %530 ], [ %438, %428 ]
  %536 = fmul fast float %535, %324
  br label %537

; <label>:537                                     ; preds = %534, %423
  %538 = phi float [ %536, %534 ], [ %324, %423 ]
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = and i32 %540, 256
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %589, label %543

; <label>:543                                     ; preds = %537
  %544 = add i32 %59, 184
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = add i32 %546, 0
  %548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %548, %dx.types.Handle %84, float %424, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = add i32 %59, 52
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = shl i32 %553, 4
  %555 = and i32 %554, 32752
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %553, 7
  %558 = and i32 %557, 32752
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = fsub fast float 1.000000e+00, %538
  %561 = call float @dx.op.binary.f32(i32 35, float %560, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %562 = bitcast float %538 to i32
  %563 = sitofp i32 %562 to float
  %564 = fadd fast float %563, 0xC1CFBF8940000000
  %565 = fmul fast float %559, %564
  %566 = fadd fast float %565, 0x41CFBF8940000000
  %567 = fptosi float %566 to i32
  %568 = bitcast i32 %567 to float
  %569 = bitcast float %561 to i32
  %570 = sitofp i32 %569 to float
  %571 = fadd fast float %570, 0xC1CFBF8940000000
  %572 = fmul fast float %571, %559
  %573 = fadd fast float %572, 0x41CFBF8940000000
  %574 = fptosi float %573 to i32
  %575 = bitcast i32 %574 to float
  %576 = fmul fast float %568, %556
  %577 = fmul fast float %575, %556
  %578 = fsub fast float %561, %576
  %579 = fadd fast float %577, %561
  %580 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  %581 = call float @dx.op.unary.f32(i32 7, float %579)  ; Saturate(value)
  %582 = fsub fast float %550, %580
  %583 = fsub fast float %581, %580
  %584 = bitcast float %583 to i32
  %585 = sub nsw i32 2129859010, %584
  %586 = bitcast i32 %585 to float
  %587 = fmul fast float %586, %582
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  br label %589

; <label>:589                                     ; preds = %543, %537
  %590 = phi float [ %588, %543 ], [ %538, %537 ]
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %592, 128
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %611, label %595

; <label>:595                                     ; preds = %589
  %596 = add i32 %59, 180
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = add i32 %598, 0
  %600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %599, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %601 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %600, %dx.types.Handle %84, float %424, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = and i32 %604, 524288
  %606 = icmp ne i32 %605, 0
  %607 = fcmp fast ogt float %602, 0x3FE0101020000000
  %608 = select i1 %607, float 1.000000e+00, float 0.000000e+00
  %609 = select i1 %606, float %608, float %602
  %610 = fmul fast float %609, %590
  br label %611

; <label>:611                                     ; preds = %595, %589
  %612 = phi float [ %610, %595 ], [ %590, %589 ]
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 16
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %815, label %617

; <label>:617                                     ; preds = %611
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = add i32 %59, 168
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %622, 0
  %624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %624, %dx.types.Handle %83, float %424, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = extractvalue %dx.types.ResRet.f32 %625, 3
  %630 = and i32 %619, 255
  %631 = uitofp i32 %630 to float
  %632 = lshr i32 %619, 8
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %629, %631
  %636 = fadd fast float %635, %634
  %637 = fmul fast float %636, 0x3F70101000000000
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = and i32 %639, 512
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %650, label %642

; <label>:642                                     ; preds = %617
  %643 = add i32 %59, 188
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = add i32 %645, 0
  %647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %647, %dx.types.Handle %84, float %424, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  br label %650

; <label>:650                                     ; preds = %642, %617
  %651 = phi float [ %649, %642 ], [ 1.000000e+00, %617 ]
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 33554432
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %762, label %656

; <label>:656                                     ; preds = %650
  %657 = add i32 %59, 80
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = and i32 %659, 65535
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = lshr i32 %659, 16
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = add i32 %59, 84
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 65535
  %668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %667)  ; LegacyF16ToF32(value)
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = lshr i32 %670, 24
  %672 = uitofp i32 %671 to float
  %673 = fmul fast float %672, 0x3F70101020000000
  %674 = and i32 %670, 255
  %675 = uitofp i32 %674 to float
  %676 = fmul fast float %675, 0x3F70101020000000
  %677 = lshr i32 %670, 8
  %678 = and i32 %677, 255
  %679 = uitofp i32 %678 to float
  %680 = fmul fast float %679, 0x3F70101020000000
  %681 = lshr i32 %670, 16
  %682 = and i32 %681, 255
  %683 = uitofp i32 %682 to float
  %684 = fmul fast float %683, 0x3F70101020000000
  %685 = add i32 %59, 76
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = lshr i32 %687, 24
  %689 = uitofp i32 %688 to float
  %690 = fmul fast float %689, 0x3F70101020000000
  %691 = and i32 %687, 255
  %692 = uitofp i32 %691 to float
  %693 = fmul fast float %692, 0x3F70101020000000
  %694 = lshr i32 %687, 8
  %695 = and i32 %694, 255
  %696 = uitofp i32 %695 to float
  %697 = fmul fast float %696, 0x3F70101020000000
  %698 = lshr i32 %687, 16
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %700, 0x3F70101020000000
  %702 = bitcast float %626 to i32
  %703 = ashr i32 %702, 1
  %704 = sub nsw i32 1597463174, %703
  %705 = bitcast i32 %704 to float
  %706 = fmul fast float %626, 5.000000e-01
  %707 = fmul fast float %705, %705
  %708 = fmul fast float %707, %706
  %709 = fsub fast float 1.500000e+00, %708
  %710 = fmul fast float %705, %626
  %711 = fmul fast float %710, %709
  %712 = bitcast float %627 to i32
  %713 = ashr i32 %712, 1
  %714 = sub nsw i32 1597463174, %713
  %715 = bitcast i32 %714 to float
  %716 = fmul fast float %627, 5.000000e-01
  %717 = fmul fast float %715, %715
  %718 = fmul fast float %717, %716
  %719 = fsub fast float 1.500000e+00, %718
  %720 = fmul fast float %715, %627
  %721 = fmul fast float %720, %719
  %722 = bitcast float %628 to i32
  %723 = ashr i32 %722, 1
  %724 = sub nsw i32 1597463174, %723
  %725 = bitcast i32 %724 to float
  %726 = fmul fast float %628, 5.000000e-01
  %727 = fmul fast float %725, %725
  %728 = fmul fast float %727, %726
  %729 = fsub fast float 1.500000e+00, %728
  %730 = fmul fast float %725, %628
  %731 = fmul fast float %730, %729
  %732 = fsub fast float %711, %693
  %733 = fsub fast float %721, %697
  %734 = fsub fast float %731, %701
  %735 = fmul fast float %732, %661
  %736 = fmul fast float %733, %663
  %737 = fmul fast float %734, %668
  %738 = fadd fast float %735, %676
  %739 = fadd fast float %736, %680
  %740 = fadd fast float %737, %684
  %741 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %742 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %743 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  %744 = fmul fast float %741, %741
  %745 = fmul fast float %742, %742
  %746 = fmul fast float %743, %743
  %747 = fsub fast float %744, %626
  %748 = fsub fast float %745, %627
  %749 = fsub fast float %746, %628
  %750 = fmul fast float %747, %651
  %751 = fmul fast float %748, %651
  %752 = fmul fast float %749, %651
  %753 = fadd fast float %750, %626
  %754 = fadd fast float %751, %627
  %755 = fadd fast float %752, %628
  %756 = fadd fast float %673, %637
  %757 = fsub fast float %756, %690
  %758 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %759 = fsub fast float %758, %637
  %760 = fmul fast float %759, %651
  %761 = fadd fast float %760, %637
  br label %815

; <label>:762                                     ; preds = %650
  %763 = and i32 %653, 134217728
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %799, label %765

; <label>:765                                     ; preds = %762
  %766 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %767 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %768 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %769 = fadd fast float %766, -5.000000e-01
  %770 = fadd fast float %767, -5.000000e-01
  %771 = fadd fast float %768, -5.000000e-01
  %772 = fmul fast float %769, %651
  %773 = fmul fast float %770, %651
  %774 = fmul fast float %771, %651
  %775 = fadd fast float %772, 5.000000e-01
  %776 = fadd fast float %773, 5.000000e-01
  %777 = fadd fast float %774, 5.000000e-01
  %778 = call float @dx.op.unary.f32(i32 24, float %626)  ; Sqrt(value)
  %779 = call float @dx.op.unary.f32(i32 24, float %627)  ; Sqrt(value)
  %780 = call float @dx.op.unary.f32(i32 24, float %628)  ; Sqrt(value)
  %781 = fmul fast float %775, 2.000000e+00
  %782 = fsub fast float 1.000000e+00, %781
  %783 = fmul fast float %782, %778
  %784 = fadd fast float %783, %781
  %785 = fmul fast float %784, %778
  %786 = fmul fast float %776, 2.000000e+00
  %787 = fsub fast float 1.000000e+00, %786
  %788 = fmul fast float %787, %779
  %789 = fadd fast float %788, %786
  %790 = fmul fast float %789, %779
  %791 = fmul fast float %777, 2.000000e+00
  %792 = fsub fast float 1.000000e+00, %791
  %793 = fmul fast float %792, %780
  %794 = fadd fast float %793, %791
  %795 = fmul fast float %794, %780
  %796 = fmul fast float %785, %785
  %797 = fmul fast float %790, %790
  %798 = fmul fast float %795, %795
  br label %815

; <label>:799                                     ; preds = %762
  %800 = fmul fast float %285, %285
  %801 = fmul fast float %289, %289
  %802 = fmul fast float %293, %293
  %803 = fadd fast float %800, -1.000000e+00
  %804 = fadd fast float %801, -1.000000e+00
  %805 = fadd fast float %802, -1.000000e+00
  %806 = fmul fast float %651, %803
  %807 = fmul fast float %651, %804
  %808 = fmul fast float %651, %805
  %809 = fadd fast float %806, 1.000000e+00
  %810 = fadd fast float %807, 1.000000e+00
  %811 = fadd fast float %808, 1.000000e+00
  %812 = fmul fast float %809, %626
  %813 = fmul fast float %810, %627
  %814 = fmul fast float %811, %628
  br label %815

; <label>:815                                     ; preds = %799, %765, %656, %611
  %816 = phi float [ %761, %656 ], [ %637, %765 ], [ %637, %799 ], [ 0x3FA23C0BE0000000, %611 ]
  %817 = phi float [ %753, %656 ], [ %796, %765 ], [ %812, %799 ], [ 1.000000e+00, %611 ]
  %818 = phi float [ %754, %656 ], [ %797, %765 ], [ %813, %799 ], [ 1.000000e+00, %611 ]
  %819 = phi float [ %755, %656 ], [ %798, %765 ], [ %814, %799 ], [ 1.000000e+00, %611 ]
  %820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.i32 %820, 1
  %822 = and i32 %821, 1
  %823 = icmp ne i32 %822, 0
  %824 = add i32 %59, 116
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = and i32 %826, 32
  %828 = icmp ne i32 %827, 0
  %829 = and i1 %823, %828
  %830 = select i1 %829, float 1.000000e+00, float %817
  %831 = select i1 %829, float 0x3FD3333340000000, float %818
  %832 = select i1 %829, float 0x3FD3333340000000, float %819
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = and i32 %834, 32
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %909, label %837

; <label>:837                                     ; preds = %815
  %838 = add i32 %59, 44
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = add i32 %59, 172
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = add i32 %843, 0
  %845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %845, %dx.types.Handle %83, float %424, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = extractvalue %dx.types.ResRet.f32 %846, 3
  %851 = and i32 %840, 255
  %852 = uitofp i32 %851 to float
  %853 = lshr i32 %840, 8
  %854 = and i32 %853, 255
  %855 = uitofp i32 %854 to float
  %856 = lshr i32 %840, 16
  %857 = and i32 %856, 255
  %858 = uitofp i32 %857 to float
  %859 = fmul fast float %858, 0x3F70101000000000
  %860 = fmul fast float %847, %852
  %861 = fadd fast float %860, %855
  %862 = fmul fast float %861, 0x3F70101000000000
  %863 = fadd fast float %848, -5.000000e-01
  %864 = fadd fast float %850, -5.000000e-01
  %865 = fmul fast float %863, %859
  %866 = fmul fast float %864, %859
  %867 = fadd fast float %865, 5.000000e-01
  %868 = fadd fast float %866, 5.000000e-01
  %869 = fmul fast float %867, 2.000000e+00
  %870 = fadd fast float %869, -1.000000e+00
  %871 = fmul fast float %868, 2.000000e+00
  %872 = fadd fast float %871, -1.000000e+00
  %873 = fadd fast float %870, %872
  %874 = fmul fast float %873, 5.000000e-01
  %875 = fsub fast float %870, %872
  %876 = fmul fast float %875, 5.000000e-01
  %877 = call float @dx.op.unary.f32(i32 6, float %874)  ; FAbs(value)
  %878 = fsub fast float 1.000000e+00, %877
  %879 = call float @dx.op.unary.f32(i32 6, float %876)  ; FAbs(value)
  %880 = fsub fast float %878, %879
  %881 = call float @dx.op.dot3.f32(i32 55, float %874, float %876, float %880, float %874, float %876, float %880)  ; Dot3(ax,ay,az,bx,by,bz)
  %882 = call float @dx.op.unary.f32(i32 25, float %881)  ; Rsqrt(value)
  %883 = fmul fast float %874, %882
  %884 = fmul fast float %876, %882
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = and i32 %886, 67108864
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %905, label %889

; <label>:889                                     ; preds = %837
  %890 = add i32 %59, 88
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = and i32 %892, 65535
  %894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %893)  ; LegacyF16ToF32(value)
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, 65535
  %898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %897)  ; LegacyF16ToF32(value)
  %899 = lshr i32 %892, 16
  %900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %899)  ; LegacyF16ToF32(value)
  %901 = fsub fast float %862, %900
  %902 = fmul fast float %901, %894
  %903 = fadd fast float %902, %898
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  br label %905

; <label>:905                                     ; preds = %889, %837
  %906 = phi float [ %904, %889 ], [ %862, %837 ]
  %907 = call float @dx.op.dot2.f32(i32 54, float %883, float %884, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %908 = call float @dx.op.dot2.f32(i32 54, float %883, float %884, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %909

; <label>:909                                     ; preds = %905, %815
  %910 = phi float [ %906, %905 ], [ 0x3FD6666660000000, %815 ]
  %911 = phi float [ %907, %905 ], [ 0.000000e+00, %815 ]
  %912 = phi float [ %908, %905 ], [ 0.000000e+00, %815 ]
  %913 = phi float [ %849, %905 ], [ 1.000000e+00, %815 ]
  %914 = add i32 %59, 64
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = lshr i32 %916, 22
  %918 = shl nuw nsw i32 %917, 5
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = and i32 %921, 64
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %957, label %924

; <label>:924                                     ; preds = %909
  %925 = add i32 %59, 176
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = add i32 %927, 0
  %929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = and i32 %931, 131072
  %933 = icmp eq i32 %932, 0
  %934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %929, %dx.types.Handle %83, float %424, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  %936 = extractvalue %dx.types.ResRet.f32 %934, 1
  %937 = extractvalue %dx.types.ResRet.f32 %934, 2
  %938 = fmul fast float %935, %273
  %939 = fmul fast float %936, %276
  %940 = fmul fast float %937, %279
  br i1 %933, label %947, label %941

; <label>:941                                     ; preds = %924
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = fmul fast float %943, %938
  %945 = fmul fast float %943, %939
  %946 = fmul fast float %943, %940
  br label %947

; <label>:947                                     ; preds = %941, %924
  %948 = phi float [ %944, %941 ], [ %938, %924 ]
  %949 = phi float [ %945, %941 ], [ %939, %924 ]
  %950 = phi float [ %946, %941 ], [ %940, %924 ]
  %951 = fmul fast float %948, %919
  %952 = select i1 %256, float %951, float %948
  %953 = call float @dx.op.dot3.f32(i32 55, float %952, float %949, float %950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %954 = select i1 %256, float 0.000000e+00, float %948
  %955 = select i1 %256, float %953, float %949
  %956 = select i1 %256, float 0.000000e+00, float %950
  br label %957

; <label>:957                                     ; preds = %947, %909
  %958 = phi float [ %954, %947 ], [ 0.000000e+00, %909 ]
  %959 = phi float [ %955, %947 ], [ 0.000000e+00, %909 ]
  %960 = phi float [ %956, %947 ], [ 0.000000e+00, %909 ]
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, 1024
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %995, label %965

; <label>:965                                     ; preds = %957
  %966 = add i32 %59, 56
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 255
  %970 = uitofp i32 %969 to float
  %971 = fmul fast float %970, 0x3F70101020000000
  %972 = lshr i32 %968, 8
  %973 = and i32 %972, 255
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %974, 0x3F70101020000000
  %976 = lshr i32 %968, 16
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101020000000
  %980 = fmul fast float %971, %971
  %981 = fmul fast float %975, %975
  %982 = fmul fast float %979, %979
  %983 = add i32 %59, 192
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = add i32 %985, 0
  %987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %988 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %987, %dx.types.Handle %84, float %424, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = extractvalue %dx.types.ResRet.f32 %988, 1
  %991 = extractvalue %dx.types.ResRet.f32 %988, 2
  %992 = fmul fast float %980, %989
  %993 = fmul fast float %981, %990
  %994 = fmul fast float %982, %991
  br label %995

; <label>:995                                     ; preds = %965, %957
  %996 = phi float [ %992, %965 ], [ 0.000000e+00, %957 ]
  %997 = phi float [ %993, %965 ], [ 0.000000e+00, %957 ]
  %998 = phi float [ %994, %965 ], [ 0.000000e+00, %957 ]
  %999 = fcmp fast ogt float %996, 0.000000e+00
  %1000 = fcmp fast ogt float %997, 0.000000e+00
  %1001 = fcmp fast ogt float %998, 0.000000e+00
  %1002 = call float @dx.op.unary.f32(i32 23, float %996)  ; Log(value)
  %1003 = call float @dx.op.unary.f32(i32 23, float %997)  ; Log(value)
  %1004 = call float @dx.op.unary.f32(i32 23, float %998)  ; Log(value)
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = lshr i32 %1006, 7
  %1008 = and i32 %1007, 32752
  %1009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1008)  ; LegacyF16ToF32(value)
  %1010 = fmul fast float %1002, 0xBFE62E4300000000
  %1011 = fmul fast float %1010, %1009
  %1012 = fmul fast float %1003, 0xBFE62E4300000000
  %1013 = fmul fast float %1012, %1009
  %1014 = fmul fast float %1004, 0xBFE62E4300000000
  %1015 = fmul fast float %1014, %1009
  %1016 = select i1 %999, float %1011, float 1.270000e+02
  %1017 = select i1 %1000, float %1013, float 1.270000e+02
  %1018 = select i1 %1001, float %1015, float 1.270000e+02
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %1020, 10240
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1067, label %1023

; <label>:1023                                    ; preds = %995
  %1024 = add i32 %59, 196
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = add i32 %1026, 0
  %1028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1029 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1028, %dx.types.Handle %84, float %424, float %425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 3
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %1033, 1048576
  %1035 = icmp ne i32 %1034, 0
  %1036 = and i32 %1033, 8192
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1053, label %1038

; <label>:1038                                    ; preds = %1023
  %1039 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1040 = select i1 %1035, float %1039, float %1030
  %1041 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1042 = select i1 %1035, float %1041, float %1030
  %1043 = add i32 %59, 48
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = lshr i32 %1045, 16
  %1047 = and i32 %1046, 255
  %1048 = uitofp i32 %1047 to float
  %1049 = fmul fast float %1048, 0x3F80101020000000
  %1050 = fmul fast float %1049, %1042
  %1051 = fmul fast float %1049, %1030
  %1052 = fmul fast float %1049, %1040
  br label %1053

; <label>:1053                                    ; preds = %1038, %1023
  %1054 = phi float [ %1050, %1038 ], [ 0.000000e+00, %1023 ]
  %1055 = phi float [ %1051, %1038 ], [ 0.000000e+00, %1023 ]
  %1056 = phi float [ %1052, %1038 ], [ 0.000000e+00, %1023 ]
  %1057 = and i32 %1033, 2048
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1067, label %1059

; <label>:1059                                    ; preds = %1053
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = shl i32 %1061, 4
  %1063 = and i32 %1062, 32752
  %1064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1063)  ; LegacyF16ToF32(value)
  %1065 = fmul fast float %1064, %1031
  %1066 = call float @dx.op.binary.f32(i32 35, float %1065, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1067

; <label>:1067                                    ; preds = %1059, %1053, %995
  %1068 = phi float [ %1054, %1059 ], [ %1054, %1053 ], [ 0.000000e+00, %995 ]
  %1069 = phi float [ %1055, %1059 ], [ %1055, %1053 ], [ 0.000000e+00, %995 ]
  %1070 = phi float [ %1056, %1059 ], [ %1056, %1053 ], [ 0.000000e+00, %995 ]
  %1071 = phi float [ %1066, %1059 ], [ 0x3F70101020000000, %1053 ], [ 0x3F70101020000000, %995 ]
  %1072 = add i32 %59, 48
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 255
  %1076 = uitofp i32 %1075 to float
  %1077 = lshr i32 %1074, 8
  %1078 = and i32 %1077, 255
  %1079 = uitofp i32 %1078 to float
  %1080 = call float @dx.op.dot3.f32(i32 55, float %830, float %831, float %832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1081 = fmul fast float %1079, %1080
  %1082 = fadd fast float %1081, %1076
  %1083 = fmul fast float %1082, 0x3F70101020000000
  %1084 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  br label %1085

; <label>:1085                                    ; preds = %1067, %323
  %1086 = phi float [ 0.000000e+00, %323 ], [ %911, %1067 ]
  %1087 = phi float [ 0.000000e+00, %323 ], [ %912, %1067 ]
  %1088 = phi float [ 0.000000e+00, %323 ], [ %958, %1067 ]
  %1089 = phi float [ 0.000000e+00, %323 ], [ %959, %1067 ]
  %1090 = phi float [ 0.000000e+00, %323 ], [ %960, %1067 ]
  %1091 = phi float [ 0.000000e+00, %323 ], [ %830, %1067 ]
  %1092 = phi float [ 0.000000e+00, %323 ], [ %831, %1067 ]
  %1093 = phi float [ 0.000000e+00, %323 ], [ %832, %1067 ]
  %1094 = phi float [ 0.000000e+00, %323 ], [ %1068, %1067 ]
  %1095 = phi float [ 0.000000e+00, %323 ], [ %1069, %1067 ]
  %1096 = phi float [ 0.000000e+00, %323 ], [ %1070, %1067 ]
  %1097 = phi float [ 0.000000e+00, %323 ], [ %1016, %1067 ]
  %1098 = phi float [ 0.000000e+00, %323 ], [ %1017, %1067 ]
  %1099 = phi float [ 0.000000e+00, %323 ], [ %1018, %1067 ]
  %1100 = phi float [ 0.000000e+00, %323 ], [ %816, %1067 ]
  %1101 = phi float [ 0.000000e+00, %323 ], [ %612, %1067 ]
  %1102 = phi float [ 0.000000e+00, %323 ], [ %910, %1067 ]
  %1103 = phi float [ 0.000000e+00, %323 ], [ %913, %1067 ]
  %1104 = phi float [ 0.000000e+00, %323 ], [ %1071, %1067 ]
  %1105 = phi float [ 0.000000e+00, %323 ], [ %1084, %1067 ]
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = call float @dx.op.dot2.f32(i32 54, float %1086, float %1087, float %1086, float %1087)  ; Dot2(ax,ay,bx,by)
  %1109 = fmul fast float %1108, 0x3FE3333340000000
  %1110 = fsub fast float 1.000000e+00, %1109
  %1111 = call float @dx.op.dot3.f32(i32 55, float %1086, float %1087, float %1110, float %1086, float %1087, float %1110)  ; Dot3(ax,ay,az,bx,by,bz)
  %1112 = call float @dx.op.unary.f32(i32 25, float %1111)  ; Rsqrt(value)
  %1113 = fmul fast float %1112, %1086
  %1114 = fmul fast float %1112, %1087
  %1115 = fmul fast float %1110, %1112
  %1116 = fmul fast float %1115, %64
  %1117 = fmul fast float %1115, %65
  %1118 = fmul fast float %1115, %66
  %1119 = fmul fast float %1113, %60
  %1120 = fmul fast float %1113, %61
  %1121 = fmul fast float %1113, %62
  %1122 = fadd fast float %1116, %1119
  %1123 = fadd fast float %1117, %1120
  %1124 = fadd fast float %1118, %1121
  %1125 = fmul fast float %1114, %98
  %1126 = fmul fast float %1114, %99
  %1127 = fmul fast float %1114, %100
  %1128 = fadd fast float %1122, %1125
  %1129 = fadd fast float %1123, %1126
  %1130 = fadd fast float %1124, %1127
  %1131 = call float @dx.op.dot3.f32(i32 55, float %1128, float %1129, float %1130, float %1128, float %1129, float %1130)  ; Dot3(ax,ay,az,bx,by,bz)
  %1132 = call float @dx.op.unary.f32(i32 25, float %1131)  ; Rsqrt(value)
  %1133 = fmul fast float %1128, %1132
  %1134 = fmul fast float %1129, %1132
  %1135 = fmul fast float %1130, %1132
  %1136 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %1137 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %1138 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %1139 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %1140 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %1141 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %1142 = fadd fast float %1136, %134
  %1143 = fadd fast float %1137, %135
  %1144 = fadd fast float %1138, %136
  %1145 = fadd fast float %1139, %134
  %1146 = fadd fast float %1140, %135
  %1147 = fadd fast float %1141, %136
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 0
  %1150 = extractvalue %dx.types.CBufRet.f32 %1148, 1
  %1151 = extractvalue %dx.types.CBufRet.f32 %1148, 2
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 2
  %1154 = extractvalue %dx.types.CBufRet.f32 %1152, 3
  %1155 = fmul fast float %1149, %87
  %1156 = fmul fast float %1155, %1153
  %1157 = fmul fast float %1150, %88
  %1158 = fmul fast float %1157, %1154
  %1159 = fptoui float %1156 to i32
  %1160 = fptoui float %1158 to i32
  %1161 = fadd fast float %1149, -1.000000e+00
  %1162 = fadd fast float %1150, -1.000000e+00
  %1163 = fptoui float %1161 to i32
  %1164 = fptoui float %1162 to i32
  %1165 = call i32 @dx.op.binary.i32(i32 40, i32 %1159, i32 %1163)  ; UMin(a,b)
  %1166 = call i32 @dx.op.binary.i32(i32 40, i32 %1160, i32 %1164)  ; UMin(a,b)
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1169 = extractvalue %dx.types.CBufRet.f32 %1167, 3
  %1170 = fmul fast float %1168, %75
  %1171 = fsub fast float %1170, %1169
  %1172 = fadd fast float %1151, -1.000000e+00
  %1173 = call float @dx.op.binary.f32(i32 36, float %1171, float %1172)  ; FMin(a,b)
  %1174 = fptoui float %1173 to i32
  %1175 = fptoui float %1149 to i32
  %1176 = fptoui float %1150 to i32
  %1177 = mul i32 %1174, %1176
  %1178 = add i32 %1177, %1166
  %1179 = mul i32 %1178, %1175
  %1180 = add i32 %1179, %1165
  %1181 = shl i32 %1180, 2
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 1023
  %1185 = lshr i32 %1183, 10
  %1186 = icmp eq i32 %1184, 0
  br i1 %1186, label %1690, label %1187

; <label>:1187                                    ; preds = %1085
  %1188 = and i32 %1183, 1023
  br label %1189

; <label>:1189                                    ; preds = %1321, %1187
  %1190 = phi float [ %1322, %1321 ], [ 0.000000e+00, %1187 ]
  %1191 = phi float [ %1323, %1321 ], [ %1107, %1187 ]
  %1192 = phi float [ %1324, %1321 ], [ %1105, %1187 ]
  %1193 = phi float [ %1325, %1321 ], [ %1097, %1187 ]
  %1194 = phi float [ %1326, %1321 ], [ %1098, %1187 ]
  %1195 = phi float [ %1327, %1321 ], [ %1099, %1187 ]
  %1196 = phi float [ %1328, %1321 ], [ 0.000000e+00, %1187 ]
  %1197 = phi float [ %1329, %1321 ], [ 0.000000e+00, %1187 ]
  %1198 = phi float [ %1330, %1321 ], [ %1094, %1187 ]
  %1199 = phi float [ %1331, %1321 ], [ %1095, %1187 ]
  %1200 = phi float [ %1332, %1321 ], [ %1096, %1187 ]
  %1201 = phi float [ %1333, %1321 ], [ %1088, %1187 ]
  %1202 = phi float [ %1334, %1321 ], [ %1089, %1187 ]
  %1203 = phi float [ %1335, %1321 ], [ %1090, %1187 ]
  %1204 = phi float [ %1336, %1321 ], [ %1133, %1187 ]
  %1205 = phi float [ %1337, %1321 ], [ %1134, %1187 ]
  %1206 = phi float [ %1338, %1321 ], [ %1135, %1187 ]
  %1207 = phi float [ %1339, %1321 ], [ %1103, %1187 ]
  %1208 = phi float [ %1340, %1321 ], [ %1102, %1187 ]
  %1209 = phi float [ %1341, %1321 ], [ 0.000000e+00, %1187 ]
  %1210 = phi float [ %1342, %1321 ], [ %1100, %1187 ]
  %1211 = phi float [ %1343, %1321 ], [ %1091, %1187 ]
  %1212 = phi float [ %1344, %1321 ], [ %1092, %1187 ]
  %1213 = phi float [ %1345, %1321 ], [ %1093, %1187 ]
  %1214 = phi i32 [ %1271, %1321 ], [ 0, %1187 ]
  %1215 = add nuw nsw i32 %1214, %1185
  %1216 = shl i32 %1215, 2
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = shl i32 %1218, 8
  %1220 = or i32 %1219, 48
  %1221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.ResRet.f32 %1221, 2
  %1225 = extractvalue %dx.types.ResRet.f32 %1221, 3
  %1226 = or i32 %1219, 64
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.i32 %1227, 1
  %1230 = or i32 %1219, 80
  %1231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 2
  %1233 = extractvalue %dx.types.ResRet.f32 %1231, 3
  %1234 = or i32 %1219, 96
  %1235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.f32 %1235, 1
  %1238 = extractvalue %dx.types.ResRet.f32 %1235, 2
  %1239 = extractvalue %dx.types.ResRet.f32 %1235, 3
  %1240 = or i32 %1219, 112
  %1241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 2
  %1243 = or i32 %1219, 128
  %1244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.ResRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.ResRet.f32 %1244, 2
  %1248 = extractvalue %dx.types.ResRet.f32 %1244, 3
  %1249 = or i32 %1219, 144
  %1250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1255 = or i32 %1219, 160
  %1256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.ResRet.f32 %1256, 3
  %1261 = or i32 %1219, 192
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = or i32 %1219, 208
  %1265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = or i32 %1219, 248
  %1268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.ResRet.f32 %1268, 1
  %1271 = add nuw nsw i32 %1214, 1
  %1272 = bitcast float %1225 to i32
  %1273 = and i32 %1272, 2560
  %1274 = icmp eq i32 %1273, 0
  %1275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.ResRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.ResRet.f32 %1275, 2
  %1279 = extractvalue %dx.types.ResRet.f32 %1275, 3
  %1280 = call float @dx.op.dot4.f32(i32 56, float %1276, float %1277, float %1278, float %1279, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1281 = or i32 %1219, 16
  %1282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1286 = extractvalue %dx.types.ResRet.f32 %1282, 3
  %1287 = call float @dx.op.dot4.f32(i32 56, float %1283, float %1284, float %1285, float %1286, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1288 = or i32 %1219, 32
  %1289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.ResRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.ResRet.f32 %1289, 2
  %1293 = extractvalue %dx.types.ResRet.f32 %1289, 3
  %1294 = call float @dx.op.dot4.f32(i32 56, float %1290, float %1291, float %1292, float %1293, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1295 = call float @dx.op.unary.f32(i32 27, float %1280)  ; Round_ni(value)
  %1296 = call float @dx.op.unary.f32(i32 6, float %1295)  ; FAbs(value)
  %1297 = call float @dx.op.unary.f32(i32 27, float %1287)  ; Round_ni(value)
  %1298 = call float @dx.op.unary.f32(i32 6, float %1297)  ; FAbs(value)
  %1299 = call float @dx.op.unary.f32(i32 6, float %1294)  ; FAbs(value)
  %1300 = call float @dx.op.unary.f32(i32 27, float %1299)  ; Round_ni(value)
  %1301 = fadd fast float %1298, %1296
  %1302 = fadd fast float %1301, %1300
  %1303 = fcmp fast oeq float %1302, 0.000000e+00
  %1304 = call float @dx.op.dot4.f32(i32 56, float %1276, float %1277, float %1278, float %1279, float %1142, float %1143, float %1144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1305 = call float @dx.op.dot4.f32(i32 56, float %1283, float %1284, float %1285, float %1286, float %1142, float %1143, float %1144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1306 = call float @dx.op.dot4.f32(i32 56, float %1276, float %1277, float %1278, float %1279, float %1145, float %1146, float %1147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1307 = call float @dx.op.dot4.f32(i32 56, float %1283, float %1284, float %1285, float %1286, float %1145, float %1146, float %1147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1308 = fsub fast float %1304, %1280
  %1309 = fsub fast float %1306, %1280
  %1310 = fsub fast float %1305, %1287
  %1311 = fsub fast float %1307, %1287
  %1312 = call float @dx.op.dot3.f32(i32 55, float %1222, float %1223, float %1224, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 2
  %1315 = fadd fast float %1314, %1312
  %1316 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1313, 0
  %1318 = fcmp fast ogt float %1316, %1317
  %1319 = and i1 %1303, %1318
  %1320 = and i1 %1274, %1319
  br i1 %1320, label %1347, label %1321

; <label>:1321                                    ; preds = %1676, %1428, %1347, %1189
  %1322 = phi float [ %1190, %1347 ], [ %1431, %1428 ], [ %1431, %1676 ], [ %1190, %1189 ]
  %1323 = phi float [ %1191, %1347 ], [ %1191, %1428 ], [ %1652, %1676 ], [ %1191, %1189 ]
  %1324 = phi float [ %1192, %1347 ], [ %1192, %1428 ], [ %1650, %1676 ], [ %1192, %1189 ]
  %1325 = phi float [ %1193, %1347 ], [ %1193, %1428 ], [ %1628, %1676 ], [ %1193, %1189 ]
  %1326 = phi float [ %1194, %1347 ], [ %1194, %1428 ], [ %1629, %1676 ], [ %1194, %1189 ]
  %1327 = phi float [ %1195, %1347 ], [ %1195, %1428 ], [ %1630, %1676 ], [ %1195, %1189 ]
  %1328 = phi float [ %1196, %1347 ], [ %1196, %1428 ], [ %1555, %1676 ], [ %1196, %1189 ]
  %1329 = phi float [ %1197, %1347 ], [ %1197, %1428 ], [ %1553, %1676 ], [ %1197, %1189 ]
  %1330 = phi float [ %1198, %1347 ], [ %1198, %1428 ], [ %1598, %1676 ], [ %1198, %1189 ]
  %1331 = phi float [ %1199, %1347 ], [ %1199, %1428 ], [ %1599, %1676 ], [ %1199, %1189 ]
  %1332 = phi float [ %1200, %1347 ], [ %1200, %1428 ], [ %1600, %1676 ], [ %1200, %1189 ]
  %1333 = phi float [ %1201, %1347 ], [ %1201, %1428 ], [ %1686, %1676 ], [ %1201, %1189 ]
  %1334 = phi float [ %1202, %1347 ], [ %1202, %1428 ], [ %1687, %1676 ], [ %1202, %1189 ]
  %1335 = phi float [ %1203, %1347 ], [ %1203, %1428 ], [ %1688, %1676 ], [ %1203, %1189 ]
  %1336 = phi float [ %1204, %1347 ], [ %1204, %1428 ], [ %1534, %1676 ], [ %1204, %1189 ]
  %1337 = phi float [ %1205, %1347 ], [ %1205, %1428 ], [ %1535, %1676 ], [ %1205, %1189 ]
  %1338 = phi float [ %1206, %1347 ], [ %1206, %1428 ], [ %1536, %1676 ], [ %1206, %1189 ]
  %1339 = phi float [ %1207, %1347 ], [ %1207, %1428 ], [ %1608, %1676 ], [ %1207, %1189 ]
  %1340 = phi float [ %1208, %1347 ], [ %1208, %1428 ], [ %1605, %1676 ], [ %1208, %1189 ]
  %1341 = phi float [ %1209, %1347 ], [ %1209, %1428 ], [ %1602, %1676 ], [ %1209, %1189 ]
  %1342 = phi float [ %1210, %1347 ], [ %1210, %1428 ], [ %1551, %1676 ], [ %1210, %1189 ]
  %1343 = phi float [ %1211, %1347 ], [ %1211, %1428 ], [ %1546, %1676 ], [ %1211, %1189 ]
  %1344 = phi float [ %1212, %1347 ], [ %1212, %1428 ], [ %1547, %1676 ], [ %1212, %1189 ]
  %1345 = phi float [ %1213, %1347 ], [ %1213, %1428 ], [ %1548, %1676 ], [ %1213, %1189 ]
  %1346 = icmp eq i32 %1271, %1188
  br i1 %1346, label %1689, label %1189

; <label>:1347                                    ; preds = %1189
  %1348 = extractvalue %dx.types.ResRet.f32 %1241, 3
  %1349 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1350 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1231, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1231, 0
  %1353 = extractvalue %dx.types.ResRet.i32 %1227, 3
  %1354 = extractvalue %dx.types.ResRet.i32 %1227, 2
  %1355 = add i32 %1353, 0
  %1356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1355, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1356, %dx.types.Handle %1357, float %1280, float %1287, float undef, float undef, i32 0, i32 0, i32 undef, float %1308, float %1310, float undef, float %1309, float %1311, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = fmul fast float %1359, %1352
  %1361 = fadd fast float %1360, %1351
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1363 = fmul fast float %1280, %1236
  %1364 = call float @dx.op.tertiary.f32(i32 46, float %1237, float %1287, float %1363)  ; FMad(a,b,c)
  %1365 = fadd fast float %1364, %1350
  %1366 = fmul fast float %1280, %1238
  %1367 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %1287, float %1366)  ; FMad(a,b,c)
  %1368 = fadd fast float %1367, %1349
  %1369 = fmul fast float %1308, %1236
  %1370 = call float @dx.op.tertiary.f32(i32 46, float %1237, float %1310, float %1369)  ; FMad(a,b,c)
  %1371 = fmul fast float %1308, %1238
  %1372 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %1310, float %1371)  ; FMad(a,b,c)
  %1373 = fmul fast float %1309, %1236
  %1374 = call float @dx.op.tertiary.f32(i32 46, float %1237, float %1311, float %1373)  ; FMad(a,b,c)
  %1375 = fmul fast float %1309, %1238
  %1376 = call float @dx.op.tertiary.f32(i32 46, float %1239, float %1311, float %1375)  ; FMad(a,b,c)
  %1377 = add i32 %1354, 0
  %1378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1377, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1379 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1378, %dx.types.Handle %1357, float %1365, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float %1370, float %1372, float undef, float %1374, float %1376, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = and i32 %1272, 1024
  %1382 = icmp ne i32 %1381, 0
  %1383 = fcmp fast ogt float %1380, 0x3FE0101020000000
  %1384 = uitofp i1 %1383 to float
  %1385 = select i1 %1382, float %1384, float %1380
  %1386 = and i32 %1272, 8192
  %1387 = icmp ne i32 %1386, 0
  %1388 = select i1 %1387, float %1348, float 1.000000e+00
  %1389 = fmul fast float %1280, 2.000000e+00
  %1390 = fadd fast float %1389, -1.000000e+00
  %1391 = call float @dx.op.unary.f32(i32 6, float %1390)  ; FAbs(value)
  %1392 = fmul fast float %1391, %1269
  %1393 = fsub fast float %1392, %1269
  %1394 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1395 = fmul fast float %1287, 2.000000e+00
  %1396 = fadd fast float %1395, -1.000000e+00
  %1397 = call float @dx.op.unary.f32(i32 6, float %1396)  ; FAbs(value)
  %1398 = fmul fast float %1397, %1270
  %1399 = fsub fast float %1398, %1270
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = fmul fast float %1299, %1232
  %1402 = fsub fast float %1401, %1232
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1404 = fmul fast float %1362, %1388
  %1405 = fmul fast float %1404, %1359
  %1406 = fmul fast float %1405, %1394
  %1407 = fmul fast float %1406, %1385
  %1408 = fmul fast float %1407, %1400
  %1409 = fmul fast float %1408, %1403
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1412 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1413 = fsub fast float %1316, %1412
  %1414 = fmul fast float %1413, %1411
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1416 = fmul fast float %1409, %1233
  %1417 = fadd fast float %1409, %1233
  %1418 = fmul fast float %1417, %1242
  %1419 = fsub fast float %1418, %1242
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1421 = and i32 %1272, 128
  %1422 = icmp ne i32 %1421, 0
  %1423 = select i1 %1422, float %1420, float %1416
  %1424 = fmul fast float %1423, %1415
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = fcmp fast ugt float %1424, %1426
  br i1 %1427, label %1428, label %1321

; <label>:1428                                    ; preds = %1347
  %1429 = select i1 %1387, float %1424, float 0.000000e+00
  %1430 = fadd fast float %1429, %1190
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  br i1 %1387, label %1321, label %1432

; <label>:1432                                    ; preds = %1428
  %1433 = and i32 %1272, 4
  %1434 = and i32 %1272, 8
  %1435 = add i32 %1228, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1435, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1438 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1436, %dx.types.Handle %1437, float %1365, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float %1370, float %1372, float undef, float %1374, float %1376, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.ResRet.f32 %1438, 1
  %1441 = extractvalue %dx.types.ResRet.f32 %1438, 2
  %1442 = extractvalue %dx.types.ResRet.f32 %1438, 3
  %1443 = bitcast float %1254 to i32
  %1444 = and i32 %1443, 255
  %1445 = uitofp i32 %1444 to float
  %1446 = lshr i32 %1443, 8
  %1447 = and i32 %1446, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = fmul fast float %1442, %1445
  %1450 = fadd fast float %1449, %1448
  %1451 = fmul fast float %1450, 0x3F70101000000000
  %1452 = add i32 %1229, 0
  %1453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1452, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1454 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1453, %dx.types.Handle %1437, float %1365, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float %1370, float %1372, float undef, float %1374, float %1376, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.ResRet.f32 %1454, 1
  %1457 = extractvalue %dx.types.ResRet.f32 %1454, 2
  %1458 = extractvalue %dx.types.ResRet.f32 %1454, 3
  %1459 = bitcast float %1248 to i32
  %1460 = and i32 %1459, 255
  %1461 = uitofp i32 %1460 to float
  %1462 = lshr i32 %1459, 8
  %1463 = and i32 %1462, 255
  %1464 = uitofp i32 %1463 to float
  %1465 = lshr i32 %1459, 16
  %1466 = and i32 %1465, 255
  %1467 = uitofp i32 %1466 to float
  %1468 = fmul fast float %1467, 0x3F70101000000000
  %1469 = fmul fast float %1455, %1461
  %1470 = fadd fast float %1469, %1464
  %1471 = fmul fast float %1470, 0x3F70101000000000
  %1472 = fadd fast float %1456, -5.000000e-01
  %1473 = fadd fast float %1458, -5.000000e-01
  %1474 = fmul fast float %1472, %1468
  %1475 = fmul fast float %1473, %1468
  %1476 = fadd fast float %1474, 5.000000e-01
  %1477 = fadd fast float %1475, 5.000000e-01
  %1478 = fmul fast float %1439, %1257
  %1479 = fmul fast float %1440, %1258
  %1480 = fmul fast float %1441, %1259
  %1481 = fmul fast float %1476, 2.000000e+00
  %1482 = fadd fast float %1481, -1.000000e+00
  %1483 = fmul fast float %1477, 2.000000e+00
  %1484 = fadd fast float %1483, -1.000000e+00
  %1485 = fadd fast float %1482, %1484
  %1486 = fmul fast float %1485, 5.000000e-01
  %1487 = fsub fast float %1482, %1484
  %1488 = fmul fast float %1487, 5.000000e-01
  %1489 = call float @dx.op.unary.f32(i32 6, float %1486)  ; FAbs(value)
  %1490 = fsub fast float 1.000000e+00, %1489
  %1491 = call float @dx.op.unary.f32(i32 6, float %1488)  ; FAbs(value)
  %1492 = fsub fast float %1490, %1491
  %1493 = call float @dx.op.dot3.f32(i32 55, float %1486, float %1488, float %1492, float %1486, float %1488, float %1492)  ; Dot3(ax,ay,az,bx,by,bz)
  %1494 = call float @dx.op.unary.f32(i32 25, float %1493)  ; Rsqrt(value)
  %1495 = fmul fast float %1486, %1494
  %1496 = fmul fast float %1488, %1494
  %1497 = fmul fast float %1494, %1492
  %1498 = fmul fast float %1497, %1222
  %1499 = fmul fast float %1497, %1223
  %1500 = fmul fast float %1497, %1224
  %1501 = fmul fast float %1495, %1245
  %1502 = fmul fast float %1495, %1246
  %1503 = fmul fast float %1495, %1247
  %1504 = fadd fast float %1501, %1498
  %1505 = fadd fast float %1502, %1499
  %1506 = fadd fast float %1503, %1500
  %1507 = fmul fast float %1496, %1251
  %1508 = fmul fast float %1496, %1252
  %1509 = fmul fast float %1496, %1253
  %1510 = fadd fast float %1504, %1507
  %1511 = fadd fast float %1505, %1508
  %1512 = fadd fast float %1506, %1509
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1510, float %1511, float %1512, float %1510, float %1511, float %1512)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = call float @dx.op.unary.f32(i32 25, float %1513)  ; Rsqrt(value)
  %1515 = fmul fast float %1510, %1514
  %1516 = fmul fast float %1511, %1514
  %1517 = fmul fast float %1512, %1514
  %1518 = icmp ne i32 %1434, 0
  %1519 = select i1 %1518, float 1.000000e+00, float 0.000000e+00
  %1520 = fmul fast float %1424, %1519
  %1521 = and i32 %1272, 1
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1523, label %1527

; <label>:1523                                    ; preds = %1432
  %1524 = fsub fast float %1515, %1204
  %1525 = fsub fast float %1516, %1205
  %1526 = fsub fast float %1517, %1206
  br label %1527

; <label>:1527                                    ; preds = %1523, %1432
  %1528 = phi float [ %1524, %1523 ], [ %1515, %1432 ]
  %1529 = phi float [ %1525, %1523 ], [ %1516, %1432 ]
  %1530 = phi float [ %1526, %1523 ], [ %1517, %1432 ]
  %1531 = fmul float %1530, %1520
  %1532 = fmul float %1529, %1520
  %1533 = fmul float %1528, %1520
  %1534 = fadd fast float %1533, %1204
  %1535 = fadd fast float %1532, %1205
  %1536 = fadd fast float %1531, %1206
  %1537 = icmp ne i32 %1433, 0
  %1538 = select i1 %1537, float 1.000000e+00, float 0.000000e+00
  %1539 = fmul fast float %1424, %1538
  %1540 = fsub fast float %1478, %1211
  %1541 = fsub fast float %1479, %1212
  %1542 = fsub fast float %1480, %1213
  %1543 = fmul fast float %1540, %1539
  %1544 = fmul fast float %1541, %1539
  %1545 = fmul fast float %1542, %1539
  %1546 = fadd fast float %1543, %1211
  %1547 = fadd fast float %1544, %1212
  %1548 = fadd fast float %1545, %1213
  %1549 = fsub fast float %1451, %1210
  %1550 = fmul fast float %1549, %1539
  %1551 = fadd fast float %1550, %1210
  %1552 = fmul fast float %1539, %1197
  %1553 = fsub fast float %1197, %1552
  %1554 = fmul fast float %1539, %1196
  %1555 = fsub fast float %1196, %1554
  %1556 = bitcast float %1266 to i32
  %1557 = lshr i32 %1556, 16
  %1558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1557)  ; LegacyF16ToF32(value)
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 1
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1563, label %1588

; <label>:1563                                    ; preds = %1527
  %1564 = fadd fast float %1451, 0xBFB99999A0000000
  %1565 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1566 = fmul fast float %1565, 0x3FF1C71C80000000
  %1567 = fsub fast float 1.000000e+00, %1566
  %1568 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1569 = fmul fast float %1568, %1478
  %1570 = fmul fast float %1568, %1479
  %1571 = fmul fast float %1568, %1480
  %1572 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1573 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1574 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1575 = call float @dx.op.binary.f32(i32 35, float %1573, float %1574)  ; FMax(a,b)
  %1576 = call float @dx.op.binary.f32(i32 35, float %1572, float %1575)  ; FMax(a,b)
  %1577 = fcmp fast ogt float %1576, 0.000000e+00
  %1578 = bitcast float %1576 to i32
  %1579 = sub nsw i32 2129859010, %1578
  %1580 = bitcast i32 %1579 to float
  %1581 = select i1 %1577, float %1580, float 0.000000e+00
  %1582 = fmul fast float %1572, %1558
  %1583 = fmul fast float %1573, %1558
  %1584 = fmul fast float %1574, %1558
  %1585 = fmul fast float %1582, %1581
  %1586 = fmul fast float %1583, %1581
  %1587 = fmul fast float %1584, %1581
  br label %1588

; <label>:1588                                    ; preds = %1563, %1527
  %1589 = phi float [ %1558, %1527 ], [ %1585, %1563 ]
  %1590 = phi float [ %1558, %1527 ], [ %1586, %1563 ]
  %1591 = phi float [ %1558, %1527 ], [ %1587, %1563 ]
  %1592 = fsub fast float %1589, %1198
  %1593 = fsub fast float %1590, %1199
  %1594 = fsub fast float %1591, %1200
  %1595 = fmul fast float %1592, %1539
  %1596 = fmul fast float %1593, %1539
  %1597 = fmul fast float %1594, %1539
  %1598 = fadd fast float %1595, %1198
  %1599 = fadd fast float %1596, %1199
  %1600 = fadd fast float %1597, %1200
  %1601 = fadd fast float %1424, %1209
  %1602 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1603 = fsub fast float %1471, %1208
  %1604 = fmul fast float %1603, %1520
  %1605 = fadd fast float %1604, %1208
  %1606 = fsub fast float %1457, %1207
  %1607 = fmul fast float %1606, %1520
  %1608 = fadd fast float %1607, %1207
  br i1 %1522, label %1617, label %1609

; <label>:1609                                    ; preds = %1588
  %1610 = and i32 %1272, 32768
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1627, label %1612

; <label>:1612                                    ; preds = %1609
  %1613 = fmul fast float %1520, 1.270000e+02
  %1614 = fadd fast float %1613, %1193
  %1615 = fadd fast float %1613, %1194
  %1616 = fadd fast float %1613, %1195
  br label %1627

; <label>:1617                                    ; preds = %1588
  %1618 = fsub fast float 1.270000e+02, %1193
  %1619 = fsub fast float 1.270000e+02, %1194
  %1620 = fsub fast float 1.270000e+02, %1195
  %1621 = fmul fast float %1520, %1618
  %1622 = fmul fast float %1520, %1619
  %1623 = fmul fast float %1520, %1620
  %1624 = fadd fast float %1621, %1193
  %1625 = fadd fast float %1622, %1194
  %1626 = fadd fast float %1623, %1195
  br label %1627

; <label>:1627                                    ; preds = %1617, %1612, %1609
  %1628 = phi float [ %1614, %1612 ], [ %1193, %1609 ], [ %1624, %1617 ]
  %1629 = phi float [ %1615, %1612 ], [ %1194, %1609 ], [ %1625, %1617 ]
  %1630 = phi float [ %1616, %1612 ], [ %1195, %1609 ], [ %1626, %1617 ]
  %1631 = call float @dx.op.dot3.f32(i32 55, float %1478, float %1479, float %1480, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.CBufRet.f32 %1632, 1
  %1635 = fmul fast float %1634, %1631
  %1636 = fadd fast float %1635, %1633
  %1637 = call float @dx.op.unary.f32(i32 7, float %1636)  ; Saturate(value)
  %1638 = bitcast float %1260 to i32
  %1639 = and i32 %1638, 65535
  %1640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1639)  ; LegacyF16ToF32(value)
  %1641 = lshr i32 %1638, 16
  %1642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1641)  ; LegacyF16ToF32(value)
  %1643 = fcmp fast oge float %1640, 0.000000e+00
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1646 = select i1 %1643, float %1640, float %1645
  %1647 = fadd fast float %1646, %1642
  %1648 = fsub fast float %1637, %1192
  %1649 = fmul fast float %1648, %1424
  %1650 = fadd fast float %1649, %1192
  %1651 = fmul fast float %1647, %1424
  %1652 = call float @dx.op.binary.f32(i32 35, float %1191, float %1651)  ; FMax(a,b)
  %1653 = and i32 %1272, 16
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1676, label %1655

; <label>:1655                                    ; preds = %1627
  %1656 = add i32 %1263, 0
  %1657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1656, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1658 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1657, %dx.types.Handle %1437, float %1365, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float %1370, float %1372, float undef, float %1374, float %1376, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.ResRet.f32 %1658, 1
  %1661 = extractvalue %dx.types.ResRet.f32 %1658, 2
  %1662 = and i32 %1556, 65535
  %1663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1662)  ; LegacyF16ToF32(value)
  %1664 = fmul fast float %1659, %1257
  %1665 = fmul fast float %1660, %1258
  %1666 = fmul fast float %1661, %1259
  %1667 = and i32 %1272, 16384
  %1668 = icmp ne i32 %1667, 0
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 0
  %1671 = select i1 %1668, float %1670, float 1.000000e+00
  %1672 = fmul fast float %1671, %1663
  %1673 = fmul fast float %1664, %1672
  %1674 = fmul fast float %1665, %1672
  %1675 = fmul fast float %1666, %1672
  br label %1676

; <label>:1676                                    ; preds = %1655, %1627
  %1677 = phi float [ %1673, %1655 ], [ 0.000000e+00, %1627 ]
  %1678 = phi float [ %1674, %1655 ], [ 0.000000e+00, %1627 ]
  %1679 = phi float [ %1675, %1655 ], [ 0.000000e+00, %1627 ]
  %1680 = fsub fast float %1677, %1201
  %1681 = fsub fast float %1678, %1202
  %1682 = fsub fast float %1679, %1203
  %1683 = fmul fast float %1680, %1424
  %1684 = fmul fast float %1681, %1424
  %1685 = fmul fast float %1682, %1424
  %1686 = fadd fast float %1683, %1201
  %1687 = fadd fast float %1684, %1202
  %1688 = fadd fast float %1685, %1203
  br label %1321

; <label>:1689                                    ; preds = %1321
  br label %1690

; <label>:1690                                    ; preds = %1689, %1085
  %1691 = phi float [ 0.000000e+00, %1085 ], [ %1322, %1689 ]
  %1692 = phi float [ %1107, %1085 ], [ %1323, %1689 ]
  %1693 = phi float [ %1105, %1085 ], [ %1324, %1689 ]
  %1694 = phi float [ %1097, %1085 ], [ %1325, %1689 ]
  %1695 = phi float [ %1098, %1085 ], [ %1326, %1689 ]
  %1696 = phi float [ %1099, %1085 ], [ %1327, %1689 ]
  %1697 = phi float [ 0.000000e+00, %1085 ], [ %1328, %1689 ]
  %1698 = phi float [ 0.000000e+00, %1085 ], [ %1329, %1689 ]
  %1699 = phi float [ %1094, %1085 ], [ %1330, %1689 ]
  %1700 = phi float [ %1095, %1085 ], [ %1331, %1689 ]
  %1701 = phi float [ %1096, %1085 ], [ %1332, %1689 ]
  %1702 = phi float [ %1088, %1085 ], [ %1333, %1689 ]
  %1703 = phi float [ %1089, %1085 ], [ %1334, %1689 ]
  %1704 = phi float [ %1090, %1085 ], [ %1335, %1689 ]
  %1705 = phi float [ %1133, %1085 ], [ %1336, %1689 ]
  %1706 = phi float [ %1134, %1085 ], [ %1337, %1689 ]
  %1707 = phi float [ %1135, %1085 ], [ %1338, %1689 ]
  %1708 = phi float [ %1103, %1085 ], [ %1339, %1689 ]
  %1709 = phi float [ %1102, %1085 ], [ %1340, %1689 ]
  %1710 = phi float [ 0.000000e+00, %1085 ], [ %1341, %1689 ]
  %1711 = phi float [ %1100, %1085 ], [ %1342, %1689 ]
  %1712 = phi float [ %1091, %1085 ], [ %1343, %1689 ]
  %1713 = phi float [ %1092, %1085 ], [ %1344, %1689 ]
  %1714 = phi float [ %1093, %1085 ], [ %1345, %1689 ]
  %1715 = call float @dx.op.dot3.f32(i32 55, float %1705, float %1706, float %1707, float %1705, float %1706, float %1707)  ; Dot3(ax,ay,az,bx,by,bz)
  %1716 = call float @dx.op.unary.f32(i32 25, float %1715)  ; Rsqrt(value)
  %1717 = fmul fast float %1716, %1705
  %1718 = fmul fast float %1716, %1706
  %1719 = fmul fast float %1716, %1707
  %1720 = fadd fast float %1710, %1101
  %1721 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1722 = call float @dx.op.dot3.f32(i32 55, float %1717, float %1718, float %1719, float %1717, float %1718, float %1719)  ; Dot3(ax,ay,az,bx,by,bz)
  %1723 = call float @dx.op.unary.f32(i32 25, float %1722)  ; Rsqrt(value)
  %1724 = fmul fast float %1723, %1717
  %1725 = fmul fast float %1723, %1718
  %1726 = fmul fast float %1723, %1719
  %1727 = add i32 %59, 152
  %1728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1727, i32 undef)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.i32 %1728, 0
  %1730 = extractvalue %dx.types.ResRet.i32 %1728, 1
  %1731 = extractvalue %dx.types.ResRet.i32 %1728, 2
  %1732 = extractvalue %dx.types.ResRet.i32 %1728, 3
  %1733 = bitcast i32 %1729 to float
  %1734 = bitcast i32 %1730 to float
  %1735 = bitcast i32 %1731 to float
  %1736 = bitcast i32 %1732 to float
  %1737 = fsub fast float %1712, %1733
  %1738 = fsub fast float %1713, %1734
  %1739 = fsub fast float %1714, %1735
  %1740 = fmul fast float %1737, %197
  %1741 = fmul fast float %1738, %197
  %1742 = fmul fast float %1739, %197
  %1743 = fadd fast float %1740, %1733
  %1744 = fadd fast float %1741, %1734
  %1745 = fadd fast float %1742, %1735
  %1746 = fsub fast float %1721, %1736
  %1747 = fmul fast float %1746, %197
  %1748 = fadd fast float %1747, %1736
  %1749 = fadd fast float %1711, 0xBFB99999A0000000
  %1750 = call float @dx.op.unary.f32(i32 7, float %1749)  ; Saturate(value)
  %1751 = fmul fast float %1750, 0x3FF1C71C80000000
  %1752 = call float @dx.op.binary.f32(i32 36, float %1711, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1753 = fsub fast float 1.000000e+00, %1751
  %1754 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1755 = fmul fast float %1743, %1754
  %1756 = fmul fast float %1744, %1754
  %1757 = fmul fast float %1745, %1754
  %1758 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1759 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  %1760 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  %1761 = fmul fast float %1743, %1751
  %1762 = fmul fast float %1744, %1751
  %1763 = fmul fast float %1745, %1751
  %1764 = fadd fast float %1761, %1752
  %1765 = fadd fast float %1762, %1752
  %1766 = fadd fast float %1763, %1752
  %1767 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1768 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1769 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1770 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = and i32 %1772, 1
  %1774 = icmp eq i32 %1773, 0
  br i1 %1774, label %1789, label %1775

; <label>:1775                                    ; preds = %1690
  %1776 = call float @dx.op.binary.f32(i32 35, float %1759, float %1760)  ; FMax(a,b)
  %1777 = call float @dx.op.binary.f32(i32 35, float %1758, float %1776)  ; FMax(a,b)
  %1778 = fcmp fast ogt float %1777, 0.000000e+00
  %1779 = bitcast float %1777 to i32
  %1780 = sub nsw i32 2129859010, %1779
  %1781 = bitcast i32 %1780 to float
  %1782 = select i1 %1778, float %1781, float 0.000000e+00
  %1783 = fmul fast float %1758, %1699
  %1784 = fmul fast float %1759, %1700
  %1785 = fmul fast float %1760, %1701
  %1786 = fmul fast float %1783, %1782
  %1787 = fmul fast float %1784, %1782
  %1788 = fmul fast float %1785, %1782
  br label %1789

; <label>:1789                                    ; preds = %1775, %1690
  %1790 = phi float [ %1786, %1775 ], [ %1699, %1690 ]
  %1791 = phi float [ %1787, %1775 ], [ %1700, %1690 ]
  %1792 = phi float [ %1788, %1775 ], [ %1701, %1690 ]
  %1793 = call float @dx.op.binary.f32(i32 36, float %1694, float 1.270000e+02)  ; FMin(a,b)
  %1794 = call float @dx.op.binary.f32(i32 36, float %1695, float 1.270000e+02)  ; FMin(a,b)
  %1795 = call float @dx.op.binary.f32(i32 36, float %1696, float 1.270000e+02)  ; FMin(a,b)
  %1796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.i32 %1796, 3
  %1798 = and i32 %1797, 8
  %1799 = icmp ne i32 %1798, 0
  %1800 = call float @dx.op.binary.f32(i32 35, float %1758, float %1743)  ; FMax(a,b)
  %1801 = call float @dx.op.binary.f32(i32 35, float %1759, float %1743)  ; FMax(a,b)
  %1802 = call float @dx.op.binary.f32(i32 35, float %1760, float %1743)  ; FMax(a,b)
  %1803 = call float @dx.op.dot3.f32(i32 55, float %1758, float %1759, float %1760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1804 = select i1 %256, float %1743, float %1758
  %1805 = select i1 %256, float %1803, float %1759
  %1806 = select i1 %256, float 1.000000e+00, float %1760
  %1807 = select i1 %1799, float %1800, float %1804
  %1808 = select i1 %1799, float %1801, float %1805
  %1809 = select i1 %1799, float %1802, float %1806
  %1810 = call float @dx.op.dot3.f32(i32 55, float %1790, float %1791, float %1792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1811 = select i1 %256, float %1810, float %1790
  %1812 = select i1 %256, float %1810, float %1791
  %1813 = select i1 %256, float %1810, float %1792
  %1814 = and i32 %232, 3
  %1815 = select i1 %226, i32 %1814, i32 0
  %1816 = icmp eq i32 %1815, 1
  br i1 %1816, label %1817, label %1893

; <label>:1817                                    ; preds = %1789
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.CBufRet.f32 %1818, 1
  %1821 = fadd fast float %1819, %134
  %1822 = fadd fast float %1820, %135
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1826 = fsub fast float %1821, %1824
  %1827 = fsub fast float %1822, %1825
  %1828 = fmul fast float %1826, %1826
  %1829 = fmul fast float %1827, %1827
  %1830 = fadd fast float %1828, %1829
  %1831 = call float @dx.op.unary.f32(i32 24, float %1830)  ; Sqrt(value)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1833 = fcmp fast olt float %1831, %1832
  br i1 %1833, label %1834, label %1887

; <label>:1834                                    ; preds = %1817
  %1835 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  %1836 = fadd fast float %1835, %136
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1839, 0
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1844 = extractvalue %dx.types.CBufRet.f32 %1839, 1
  %1845 = extractvalue %dx.types.CBufRet.f32 %1841, 1
  %1846 = extractvalue %dx.types.CBufRet.f32 %1837, 3
  %1847 = extractvalue %dx.types.CBufRet.f32 %1839, 3
  %1848 = extractvalue %dx.types.CBufRet.f32 %1841, 3
  %1849 = fadd fast float %1846, %1821
  %1850 = fadd fast float %1847, %1822
  %1851 = fadd fast float %1836, %1848
  %1852 = fmul fast float %1849, %1838
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %1850, float %1840, float %1852)  ; FMad(a,b,c)
  %1854 = call float @dx.op.tertiary.f32(i32 46, float %1851, float %1842, float %1853)  ; FMad(a,b,c)
  %1855 = fmul fast float %1849, %1843
  %1856 = call float @dx.op.tertiary.f32(i32 46, float %1850, float %1844, float %1855)  ; FMad(a,b,c)
  %1857 = call float @dx.op.tertiary.f32(i32 46, float %1851, float %1845, float %1856)  ; FMad(a,b,c)
  %1858 = fsub fast float %1854, %1846
  %1859 = fsub fast float %1857, %1847
  %1860 = fsub fast float %1858, %1824
  %1861 = fadd fast float %1860, %1832
  %1862 = fsub fast float %1859, %1825
  %1863 = fadd fast float %1862, %1832
  %1864 = extractvalue %dx.types.CBufRet.f32 %1823, 3
  %1865 = fmul fast float %1861, %1864
  %1866 = fmul fast float %1863, %1864
  %1867 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1868 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  %1869 = fsub fast float 1.000000e+00, %1867
  %1870 = fsub fast float 1.000000e+00, %1868
  %1871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %52, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = fcmp fast ugt float %1872, 0.000000e+00
  br i1 %1873, label %1874, label %1887

; <label>:1874                                    ; preds = %1834
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 2
  %1877 = fmul fast float %1876, %1872
  %1878 = extractvalue %dx.types.CBufRet.f32 %1875, 3
  %1879 = fadd fast float %1878, %1877
  %1880 = extractvalue %dx.types.CBufRet.f32 %1841, 2
  %1881 = fadd fast float %1879, %1848
  %1882 = fmul fast float %1854, %1842
  %1883 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1845, float %1882)  ; FMad(a,b,c)
  %1884 = call float @dx.op.tertiary.f32(i32 46, float %1881, float %1880, float %1883)  ; FMad(a,b,c)
  %1885 = fsub fast float %1884, %1848
  %1886 = fsub fast float %1885, %1835
  br label %1887

; <label>:1887                                    ; preds = %1874, %1834, %1817
  %1888 = phi i1 [ true, %1874 ], [ false, %1834 ], [ false, %1817 ]
  %1889 = phi float [ %1886, %1874 ], [ -1.310720e+05, %1834 ], [ -1.310720e+05, %1817 ]
  %1890 = fsub fast float %1889, %136
  %1891 = call float @dx.op.unary.f32(i32 7, float %1890)  ; Saturate(value)
  %1892 = select i1 %1888, float %1891, float 1.000000e+00
  br label %1893

; <label>:1893                                    ; preds = %1887, %1789
  %1894 = phi float [ %1892, %1887 ], [ 0.000000e+00, %1789 ]
  %1895 = icmp eq i32 %1815, 3
  %1896 = select i1 %1895, float 1.000000e+00, float %1894
  %1897 = call float @dx.op.binary.f32(i32 35, float %1691, float %1896)  ; FMax(a,b)
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1899 = fcmp fast une float %1898, 0.000000e+00
  %1900 = fsub fast float -0.000000e+00, %183
  %1901 = fsub fast float -0.000000e+00, %184
  %1902 = fsub fast float -0.000000e+00, %185
  br i1 %1899, label %1903, label %2065

; <label>:1903                                    ; preds = %1893
  %1904 = call float @dx.op.dot3.f32(i32 55, float %1900, float %1901, float %1902, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = fmul fast float %1898, 2.500000e+00
  %1906 = call float @dx.op.unary.f32(i32 7, float %1905)  ; Saturate(value)
  %1907 = fmul fast float %1898, 0x4013FFFFE0000000
  %1908 = fadd fast float %1907, 0xBFFFFFFFE0000000
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = fmul fast float %1898, 0x4004000020000000
  %1911 = fadd fast float %1910, 0xBFF8000040000000
  %1912 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  %1913 = call float @dx.op.unary.f32(i32 7, float %1906)  ; Saturate(value)
  %1914 = fmul fast float %1749, 1.000000e+01
  %1915 = call float @dx.op.unary.f32(i32 7, float %1914)  ; Saturate(value)
  %1916 = fmul fast float %1915, 2.000000e+00
  %1917 = fsub fast float 3.000000e+00, %1916
  %1918 = fmul fast float %1915, %1915
  %1919 = fmul fast float %1918, %1917
  %1920 = fsub fast float 1.000000e+00, %1919
  %1921 = fsub fast float 0x3FE3333340000000, %1770
  %1922 = fmul fast float %1921, 0x400AAAAAA0000000
  %1923 = call float @dx.op.unary.f32(i32 7, float %1922)  ; Saturate(value)
  %1924 = fmul fast float %1920, %1923
  %1925 = fmul fast float %1807, 0x3FEA2B8620000000
  %1926 = fmul fast float %1808, 0x3FEA2B8620000000
  %1927 = fmul fast float %1809, 0x3FEA2B8620000000
  %1928 = fadd fast float %1925, 0x3FC81DFBA0000000
  %1929 = fmul fast float %1928, %1807
  %1930 = fadd fast float %1929, 0x3F910E6020000000
  %1931 = fadd fast float %1926, 0x3FC81DFBA0000000
  %1932 = fmul fast float %1931, %1808
  %1933 = fadd fast float %1932, 0x3F910E6020000000
  %1934 = fadd fast float %1927, 0x3FC81DFBA0000000
  %1935 = fmul fast float %1934, %1809
  %1936 = fadd fast float %1935, 0x3F910E6020000000
  %1937 = call float @dx.op.unary.f32(i32 7, float %1930)  ; Saturate(value)
  %1938 = call float @dx.op.unary.f32(i32 7, float %1933)  ; Saturate(value)
  %1939 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1940 = fsub fast float %1937, %1807
  %1941 = fsub fast float %1938, %1808
  %1942 = fsub fast float %1939, %1809
  %1943 = fmul fast float %1940, %1913
  %1944 = fmul fast float %1943, %1924
  %1945 = fmul fast float %1941, %1913
  %1946 = fmul fast float %1945, %1924
  %1947 = fmul fast float %1942, %1913
  %1948 = fmul fast float %1947, %1924
  %1949 = fadd fast float %1944, %1807
  %1950 = fadd fast float %1946, %1808
  %1951 = fadd fast float %1948, %1809
  %1952 = fmul fast float %1708, %1708
  %1953 = fmul fast float %1952, %1952
  %1954 = fadd fast float %1909, 1.000000e+00
  %1955 = fsub fast float %1954, %1924
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1957 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = fsub fast float 1.000000e+00, %1953
  %1960 = call float @dx.op.binary.f32(i32 36, float %1956, float %1959)  ; FMin(a,b)
  %1961 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1962 = call float @dx.op.binary.f32(i32 35, float %1960, float %1961)  ; FMax(a,b)
  %1963 = fadd fast float %1958, 0xBFE4CCCCC0000000
  %1964 = fmul fast float %1963, 0x4006DB6DA0000000
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1966 = fmul fast float %1965, 2.000000e+00
  %1967 = fsub fast float 3.000000e+00, %1966
  %1968 = bitcast float %1767 to i32
  %1969 = ashr i32 %1968, 1
  %1970 = add nsw i32 %1969, 532487669
  %1971 = bitcast i32 %1970 to float
  %1972 = fsub fast float 1.000000e+00, %1971
  %1973 = bitcast float %1972 to i32
  %1974 = sub nsw i32 2129859010, %1973
  %1975 = bitcast i32 %1974 to float
  %1976 = fmul fast float %1975, 2.000000e+00
  %1977 = bitcast float %1768 to i32
  %1978 = ashr i32 %1977, 1
  %1979 = add nsw i32 %1978, 532487669
  %1980 = bitcast i32 %1979 to float
  %1981 = fsub fast float 1.000000e+00, %1980
  %1982 = bitcast float %1981 to i32
  %1983 = sub nsw i32 2129859010, %1982
  %1984 = bitcast i32 %1983 to float
  %1985 = fmul fast float %1984, 2.000000e+00
  %1986 = bitcast float %1769 to i32
  %1987 = ashr i32 %1986, 1
  %1988 = add nsw i32 %1987, 532487669
  %1989 = bitcast i32 %1988 to float
  %1990 = fsub fast float 1.000000e+00, %1989
  %1991 = bitcast float %1990 to i32
  %1992 = sub nsw i32 2129859010, %1991
  %1993 = bitcast i32 %1992 to float
  %1994 = fmul fast float %1993, 2.000000e+00
  %1995 = fsub fast float 0x4002A9FBE0000000, %1976
  %1996 = fadd fast float %1976, 0x3FD54FDF00000000
  %1997 = bitcast float %1996 to i32
  %1998 = sub nsw i32 2129859010, %1997
  %1999 = bitcast i32 %1998 to float
  %2000 = fmul fast float %1999, %1995
  %2001 = fmul fast float %2000, %2000
  %2002 = fsub fast float 0x4002A9FBE0000000, %1985
  %2003 = fadd fast float %1985, 0x3FD54FDF00000000
  %2004 = bitcast float %2003 to i32
  %2005 = sub nsw i32 2129859010, %2004
  %2006 = bitcast i32 %2005 to float
  %2007 = fmul fast float %2006, %2002
  %2008 = fmul fast float %2007, %2007
  %2009 = fsub fast float 0x4002A9FBE0000000, %1994
  %2010 = fadd fast float %1994, 0x3FD54FDF00000000
  %2011 = bitcast float %2010 to i32
  %2012 = sub nsw i32 2129859010, %2011
  %2013 = bitcast i32 %2012 to float
  %2014 = fmul fast float %2013, %2009
  %2015 = fmul fast float %2014, %2014
  %2016 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2001)  ; FMax(a,b)
  %2017 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2008)  ; FMax(a,b)
  %2018 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2015)  ; FMax(a,b)
  %2019 = fsub fast float 1.000000e+00, %1904
  %2020 = fadd fast float %2019, %1920
  %2021 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  %2022 = fsub fast float 1.000000e+00, %1896
  %2023 = fmul fast float %1962, %2022
  %2024 = fmul fast float %1965, %1965
  %2025 = fmul fast float %2024, %2023
  %2026 = fmul fast float %2025, %1967
  %2027 = fmul fast float %2022, 0xBFE99999A0000000
  %2028 = fmul fast float %2027, %1913
  %2029 = fmul fast float %2028, %1924
  %2030 = fadd fast float %2029, 1.000000e+00
  %2031 = fadd fast float %1770, -1.000000e+00
  %2032 = fmul fast float %2030, %2031
  %2033 = fadd fast float %2032, 1.000000e+00
  %2034 = fsub fast float %2016, %1767
  %2035 = fsub fast float %2017, %1768
  %2036 = fsub fast float %2018, %1769
  %2037 = fmul fast float %2026, %2034
  %2038 = fmul fast float %2026, %2035
  %2039 = fmul fast float %2026, %2036
  %2040 = fadd fast float %2037, %1767
  %2041 = fadd fast float %2038, %1768
  %2042 = fadd fast float %2039, %1769
  %2043 = fsub fast float %64, %1724
  %2044 = fsub fast float %65, %1725
  %2045 = fsub fast float %66, %1726
  %2046 = fmul fast float %2026, %2043
  %2047 = fmul fast float %2026, %2044
  %2048 = fmul fast float %2026, %2045
  %2049 = fadd fast float %2046, %1724
  %2050 = fadd fast float %2047, %1725
  %2051 = fadd fast float %2048, %1726
  %2052 = fmul fast float %2026, %2021
  %2053 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2054 = fsub fast float 1.000000e+00, %2053
  %2055 = fmul fast float %2052, %2054
  %2056 = fadd fast float %2055, %2053
  %2057 = fsub fast float 1.000000e+00, %1708
  %2058 = fmul fast float %2026, %2057
  %2059 = fadd fast float %2058, %1708
  %2060 = call float @dx.op.dot3.f32(i32 55, float %2049, float %2050, float %2051, float %2049, float %2050, float %2051)  ; Dot3(ax,ay,az,bx,by,bz)
  %2061 = call float @dx.op.unary.f32(i32 25, float %2060)  ; Rsqrt(value)
  %2062 = fmul fast float %2049, %2061
  %2063 = fmul fast float %2050, %2061
  %2064 = fmul fast float %2051, %2061
  br label %2065

; <label>:2065                                    ; preds = %1903, %1893
  %2066 = phi float [ %2040, %1903 ], [ %1767, %1893 ]
  %2067 = phi float [ %2041, %1903 ], [ %1768, %1893 ]
  %2068 = phi float [ %2042, %1903 ], [ %1769, %1893 ]
  %2069 = phi float [ %2062, %1903 ], [ %1724, %1893 ]
  %2070 = phi float [ %2063, %1903 ], [ %1725, %1893 ]
  %2071 = phi float [ %2064, %1903 ], [ %1726, %1893 ]
  %2072 = phi float [ %1949, %1903 ], [ %1807, %1893 ]
  %2073 = phi float [ %1950, %1903 ], [ %1808, %1893 ]
  %2074 = phi float [ %1951, %1903 ], [ %1809, %1893 ]
  %2075 = phi float [ %2056, %1903 ], [ %1770, %1893 ]
  %2076 = phi float [ %2059, %1903 ], [ %1708, %1893 ]
  %2077 = select i1 %256, float 0.000000e+00, float %2068
  %2078 = call float @dx.op.dot3.f32(i32 55, float %2069, float %2070, float %2071, float %1900, float %1901, float %1902)  ; Dot3(ax,ay,az,bx,by,bz)
  %2079 = call float @dx.op.unary.f32(i32 7, float %2078)  ; Saturate(value)
  %2080 = call float @dx.op.dot3.f32(i32 55, float %183, float %184, float %185, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %2081 = fmul fast float %2080, 2.000000e+00
  %2082 = fmul fast float %2081, %2069
  %2083 = fmul fast float %2081, %2070
  %2084 = fmul fast float %2081, %2071
  %2085 = fsub fast float %183, %2082
  %2086 = fsub fast float %184, %2083
  %2087 = fsub fast float %185, %2084
  %2088 = call float @dx.op.binary.f32(i32 36, float %2076, float 1.000000e+00)  ; FMin(a,b)
  %2089 = fsub fast float 1.000000e+00, %2088
  %2090 = bitcast float %2089 to i32
  %2091 = ashr i32 %2090, 1
  %2092 = add nsw i32 %2091, 532487669
  %2093 = bitcast i32 %2092 to float
  %2094 = fsub fast float 1.000000e+00, %2075
  %2095 = call float @dx.op.binary.f32(i32 35, float %2094, float 0x3F847AE140000000)  ; FMax(a,b)
  %2096 = fmul fast float %2095, %2095
  %2097 = fmul fast float %2096, %2096
  %2098 = call float @dx.op.unary.f32(i32 7, float %2079)  ; Saturate(value)
  %2099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %52, float %2093, float %2097, float %2098, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = fsub fast float 1.000000e+00, %2076
  %2102 = bitcast float %2101 to i32
  %2103 = sub nsw i32 2129859010, %2102
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.CBufRet.f32 %2104, 1
  %2107 = fadd fast float %2105, %134
  %2108 = fadd fast float %2106, %135
  %2109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.i32 %2109, 0
  %2111 = icmp eq i32 %2110, 1
  br i1 %2111, label %2112, label %2147

; <label>:2112                                    ; preds = %2065
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 0
  %2115 = extractvalue %dx.types.CBufRet.f32 %2113, 1
  %2116 = fsub fast float %2107, %2114
  %2117 = fsub fast float %2108, %2115
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.CBufRet.f32 %2118, 1
  %2121 = fmul fast float %2116, %2119
  %2122 = fmul fast float %2117, %2120
  %2123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %52, float %2121, float %2122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2124 = extractvalue %dx.types.ResRet.f32 %2123, 0
  %2125 = fcmp fast ogt float %2124, 0.000000e+00
  %2126 = extractvalue %dx.types.CBufRet.i32 %2109, 3
  %2127 = icmp ne i32 %2126, 0
  %2128 = and i1 %2125, %2127
  br i1 %2128, label %2129, label %2147, !dx.controlflow.hints !91

; <label>:2129                                    ; preds = %2112
  %2130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.CBufRet.f32 %2130, 1
  %2133 = fsub fast float %2107, %2131
  %2134 = fsub fast float %2108, %2132
  %2135 = fmul fast float %2133, %2133
  %2136 = fmul fast float %2134, %2134
  %2137 = fadd fast float %2135, %2136
  %2138 = uitofp i32 %2126 to float
  %2139 = fmul fast float %2138, %2138
  %2140 = fcmp fast ogt float %2137, %2139
  br i1 %2140, label %2147, label %2141

; <label>:2141                                    ; preds = %2129
  %2142 = call float @dx.op.unary.f32(i32 24, float %2137)  ; Sqrt(value)
  %2143 = fsub fast float %2138, %2142
  %2144 = fmul fast float %2143, 0x3F75555560000000
  %2145 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2146 = call float @dx.op.binary.f32(i32 36, float %2145, float %2124)  ; FMin(a,b)
  br label %2147

; <label>:2147                                    ; preds = %2141, %2129, %2112, %2065
  %2148 = phi float [ 1.000000e+00, %2065 ], [ %2146, %2141 ], [ %2124, %2112 ], [ 0.000000e+00, %2129 ]
  %2149 = fcmp fast ogt float %2148, 0.000000e+00
  br i1 %2149, label %2150, label %2249, !dx.controlflow.hints !92

; <label>:2150                                    ; preds = %2147
  %2151 = fadd fast float %165, 5.000000e-01
  %2152 = call float @dx.op.unary.f32(i32 27, float %2151)  ; Round_ni(value)
  %2153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %52, float %163, float %164, float %2152, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2154 = extractvalue %dx.types.ResRet.f32 %2153, 0
  %2155 = extractvalue %dx.types.ResRet.f32 %2153, 1
  %2156 = extractvalue %dx.types.ResRet.f32 %2153, 2
  %2157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2158 = extractvalue %dx.types.CBufRet.f32 %2157, 3
  %2159 = fmul fast float %2158, %2154
  %2160 = fmul fast float %2158, %2155
  %2161 = fmul fast float %2158, %2156
  %2162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %52, float %163, float %164, float %2152, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2163 = extractvalue %dx.types.ResRet.f32 %2162, 0
  %2164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %52, float %163, float %164, float %2152, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2166 = extractvalue %dx.types.ResRet.f32 %2164, 1
  %2167 = fmul fast float %2165, 2.000000e+00
  %2168 = fmul fast float %2166, 2.000000e+00
  %2169 = fadd fast float %2167, -1.000000e+00
  %2170 = fadd fast float %2168, -1.000000e+00
  %2171 = fadd fast float %2169, %2170
  %2172 = fmul fast float %2171, 5.000000e-01
  %2173 = fsub fast float %2169, %2170
  %2174 = fmul fast float %2173, 5.000000e-01
  %2175 = call float @dx.op.unary.f32(i32 6, float %2172)  ; FAbs(value)
  %2176 = fsub fast float 1.000000e+00, %2175
  %2177 = call float @dx.op.unary.f32(i32 6, float %2174)  ; FAbs(value)
  %2178 = fsub fast float %2176, %2177
  %2179 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2178)  ; FMax(a,b)
  %2180 = call float @dx.op.dot3.f32(i32 55, float %2172, float %2174, float %2179, float %2172, float %2174, float %2179)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = bitcast float %2180 to i32
  %2182 = ashr i32 %2181, 1
  %2183 = sub nsw i32 1597250115, %2182
  %2184 = bitcast i32 %2183 to float
  %2185 = fmul fast float %2184, %2172
  %2186 = fmul fast float %2184, %2174
  %2187 = fmul fast float %2184, %2179
  %2188 = fsub fast float 1.000000e+00, %2163
  %2189 = fdiv fast float %2188, %2187
  %2190 = fmul fast float %2187, %64
  %2191 = fmul fast float %2187, %65
  %2192 = fmul fast float %2187, %66
  %2193 = fmul fast float %2185, %60
  %2194 = fmul fast float %2185, %61
  %2195 = fmul fast float %2185, %62
  %2196 = fadd fast float %2190, %2193
  %2197 = fadd fast float %2191, %2194
  %2198 = fadd fast float %2192, %2195
  %2199 = fmul fast float %2186, %98
  %2200 = fmul fast float %2186, %99
  %2201 = fmul fast float %2186, %100
  %2202 = fadd fast float %2196, %2199
  %2203 = fadd fast float %2197, %2200
  %2204 = fadd fast float %2198, %2201
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2202, float %2203, float %2204, float %2202, float %2203, float %2204)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = call float @dx.op.unary.f32(i32 25, float %2205)  ; Rsqrt(value)
  %2207 = fmul fast float %2202, %2206
  %2208 = fmul fast float %2203, %2206
  %2209 = fmul fast float %2204, %2206
  %2210 = call float @dx.op.dot3.f32(i32 55, float %2069, float %2070, float %2071, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %2211 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2212 = fmul fast float %2211, 5.000000e-01
  %2213 = fadd fast float %2212, 5.000000e-01
  %2214 = fmul fast float %2213, %2163
  %2215 = call float @dx.op.dot3.f32(i32 55, float %2069, float %2070, float %2071, float %2207, float %2208, float %2209)  ; Dot3(ax,ay,az,bx,by,bz)
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2217 = fmul fast float %2216, %2189
  %2218 = fadd fast float %2214, %2217
  %2219 = fsub fast float 5.000000e-01, %2212
  %2220 = fmul fast float %2219, %2072
  %2221 = fmul fast float %2219, %2073
  %2222 = fmul fast float %2219, %2074
  %2223 = fadd fast float %2218, %2220
  %2224 = fmul fast float %2223, %2159
  %2225 = fadd fast float %2218, %2221
  %2226 = fmul fast float %2225, %2160
  %2227 = fadd fast float %2218, %2222
  %2228 = fmul fast float %2227, %2161
  %2229 = call float @dx.op.dot3.f32(i32 55, float %2085, float %2086, float %2087, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %2230 = call float @dx.op.unary.f32(i32 7, float %2229)  ; Saturate(value)
  %2231 = fmul fast float %2230, 5.000000e-01
  %2232 = fadd fast float %2231, 5.000000e-01
  %2233 = fmul fast float %2232, %2163
  %2234 = call float @dx.op.dot3.f32(i32 55, float %2085, float %2086, float %2087, float %2207, float %2208, float %2209)  ; Dot3(ax,ay,az,bx,by,bz)
  %2235 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2236 = fmul fast float %2235, %2189
  %2237 = fadd fast float %2233, %2236
  %2238 = fsub fast float 5.000000e-01, %2231
  %2239 = fmul fast float %2238, %2072
  %2240 = fmul fast float %2238, %2073
  %2241 = fmul fast float %2238, %2074
  %2242 = fadd fast float %2237, %2239
  %2243 = fmul fast float %2242, %2159
  %2244 = fadd fast float %2237, %2240
  %2245 = fmul fast float %2244, %2160
  %2246 = fadd fast float %2237, %2241
  %2247 = fmul fast float %2246, %2161
  %2248 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2249

; <label>:2249                                    ; preds = %2150, %2147
  %2250 = phi float [ %2248, %2150 ], [ 0.000000e+00, %2147 ]
  %2251 = phi float [ %2243, %2150 ], [ 0.000000e+00, %2147 ]
  %2252 = phi float [ %2245, %2150 ], [ 0.000000e+00, %2147 ]
  %2253 = phi float [ %2247, %2150 ], [ 0.000000e+00, %2147 ]
  %2254 = phi float [ %2224, %2150 ], [ 0.000000e+00, %2147 ]
  %2255 = phi float [ %2226, %2150 ], [ 0.000000e+00, %2147 ]
  %2256 = phi float [ %2228, %2150 ], [ 0.000000e+00, %2147 ]
  %2257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2258 = extractvalue %dx.types.CBufRet.f32 %2257, 0
  %2259 = fcmp fast ogt float %2258, 0.000000e+00
  %2260 = and i1 %2149, %2259
  br i1 %2260, label %2261, label %2465, !dx.controlflow.hints !93

; <label>:2261                                    ; preds = %2249
  %2262 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2263 = fadd fast float %2262, %136
  %2264 = fmul fast float %2069, 3.200000e+01
  %2265 = fmul fast float %2070, 3.200000e+01
  %2266 = fadd fast float %2107, %2264
  %2267 = fadd fast float %2108, %2265
  %2268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.f32 %2268, 0
  %2270 = extractvalue %dx.types.CBufRet.f32 %2268, 1
  %2271 = fsub fast float %2266, %2269
  %2272 = fsub fast float %2267, %2270
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.CBufRet.f32 %2273, 1
  %2276 = fmul fast float %2271, %2274
  %2277 = fmul fast float %2272, %2275
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.CBufRet.f32 %2278, 1
  %2281 = fsub fast float %2107, %2279
  %2282 = fsub fast float %2108, %2280
  %2283 = fmul fast float %2281, %2281
  %2284 = fmul fast float %2282, %2282
  %2285 = fadd fast float %2283, %2284
  %2286 = call float @dx.op.unary.f32(i32 24, float %2285)  ; Sqrt(value)
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 0
  %2289 = extractvalue %dx.types.CBufRet.f32 %2287, 1
  %2290 = fsub fast float %2286, %2288
  %2291 = fdiv fast float %2290, %2289
  %2292 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2293 = fmul fast float %2292, 2.000000e+00
  %2294 = fsub fast float 3.000000e+00, %2293
  %2295 = fmul fast float %2292, %2292
  %2296 = fmul fast float %2295, %2294
  %2297 = fcmp fast oge float %2276, 0.000000e+00
  %2298 = fcmp fast ole float %2276, 1.000000e+00
  %2299 = and i1 %2298, %2297
  %2300 = fcmp fast oge float %2277, 0.000000e+00
  %2301 = and i1 %2300, %2299
  %2302 = fcmp fast ole float %2277, 1.000000e+00
  %2303 = and i1 %2302, %2301
  %2304 = fcmp fast ogt float %2296, 0.000000e+00
  %2305 = and i1 %2304, %2303
  br i1 %2305, label %2306, label %2429, !dx.controlflow.hints !94

; <label>:2306                                    ; preds = %2261
  %2307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.f32 %2307, 2
  %2309 = extractvalue %dx.types.CBufRet.f32 %2307, 3
  %2310 = fmul fast float %2308, %2276
  %2311 = fmul fast float %2309, %2277
  %2312 = call float @dx.op.unary.f32(i32 27, float %2310)  ; Round_ni(value)
  %2313 = call float @dx.op.unary.f32(i32 27, float %2311)  ; Round_ni(value)
  %2314 = fptosi float %2312 to i32
  %2315 = fptosi float %2313 to i32
  %2316 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %42, i32 0, i32 %2314, i32 %2315, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = lshr i32 %2317, 16
  %2319 = icmp eq i32 %2318, 65535
  br i1 %2319, label %2429, label %2320

; <label>:2320                                    ; preds = %2306
  %2321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.f32 %2321, 0
  %2323 = fmul fast float %2322, %2276
  %2324 = extractvalue %dx.types.CBufRet.f32 %2321, 1
  %2325 = fadd fast float %2323, %2324
  %2326 = extractvalue %dx.types.CBufRet.f32 %2321, 2
  %2327 = fmul fast float %2326, %2277
  %2328 = extractvalue %dx.types.CBufRet.f32 %2321, 3
  %2329 = fadd fast float %2327, %2328
  %2330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %2325, float %2329, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = extractvalue %dx.types.ResRet.f32 %2330, 1
  %2333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2334 = extractvalue %dx.types.CBufRet.f32 %2333, 1
  %2335 = extractvalue %dx.types.CBufRet.f32 %2333, 0
  %2336 = fsub fast float %2334, %2335
  %2337 = fmul fast float %2336, %2331
  %2338 = fadd fast float %2337, %2335
  %2339 = extractvalue %dx.types.CBufRet.f32 %2333, 3
  %2340 = extractvalue %dx.types.CBufRet.f32 %2333, 2
  %2341 = fsub fast float %2339, %2340
  %2342 = fmul fast float %2341, %2332
  %2343 = fadd fast float %2342, %2340
  %2344 = fsub fast float %2263, %2338
  %2345 = fsub fast float %2343, %2338
  %2346 = fdiv fast float %2344, %2345
  %2347 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2348 = extractvalue %dx.types.CBufRet.f32 %2257, 1
  %2349 = extractvalue %dx.types.CBufRet.f32 %2307, 0
  %2350 = extractvalue %dx.types.CBufRet.f32 %2307, 1
  %2351 = fmul fast float %2349, %2276
  %2352 = fmul fast float %2350, %2277
  %2353 = fmul fast float %2351, 1.250000e-01
  %2354 = fmul fast float %2352, 1.250000e-01
  %2355 = call float @dx.op.unary.f32(i32 27, float %2353)  ; Round_ni(value)
  %2356 = call float @dx.op.unary.f32(i32 27, float %2354)  ; Round_ni(value)
  %2357 = fmul fast float %2355, 8.000000e+00
  %2358 = fmul fast float %2356, 8.000000e+00
  %2359 = fsub fast float %2351, %2357
  %2360 = fsub fast float %2352, %2358
  %2361 = fadd fast float %2359, 5.000000e-01
  %2362 = fadd fast float %2360, 5.000000e-01
  %2363 = and i32 %2318, 255
  %2364 = lshr i32 %2317, 24
  %2365 = mul nuw nsw i32 %2363, 9
  %2366 = uitofp i32 %2365 to float
  %2367 = mul nuw nsw i32 %2364, 9
  %2368 = uitofp i32 %2367 to float
  %2369 = fadd fast float %2361, %2366
  %2370 = fadd fast float %2362, %2368
  %2371 = fdiv fast float %2369, %2258
  %2372 = fdiv fast float %2370, %2348
  %2373 = fmul fast float %2347, 4.375000e-01
  %2374 = fadd fast float %2373, 3.125000e-02
  %2375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %52, float %2371, float %2372, float %2374, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2376 = extractvalue %dx.types.ResRet.f32 %2375, 0
  %2377 = extractvalue %dx.types.ResRet.f32 %2375, 1
  %2378 = extractvalue %dx.types.ResRet.f32 %2375, 2
  %2379 = fadd fast float %2373, 5.312500e-01
  %2380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %52, float %2371, float %2372, float %2379, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2381 = extractvalue %dx.types.ResRet.f32 %2380, 0
  %2382 = extractvalue %dx.types.ResRet.f32 %2380, 1
  %2383 = extractvalue %dx.types.ResRet.f32 %2380, 2
  %2384 = fmul fast float %2381, 2.000000e+00
  %2385 = fmul fast float %2382, 2.000000e+00
  %2386 = fmul fast float %2383, 2.000000e+00
  %2387 = fadd fast float %2384, -1.000000e+00
  %2388 = fadd fast float %2385, -1.000000e+00
  %2389 = fadd fast float %2386, -1.000000e+00
  %2390 = fmul fast float %2387, %2387
  %2391 = fmul fast float %2388, %2388
  %2392 = fadd fast float %2390, %2391
  %2393 = fmul fast float %2389, %2389
  %2394 = fadd fast float %2392, %2393
  %2395 = call float @dx.op.unary.f32(i32 24, float %2394)  ; Sqrt(value)
  %2396 = fcmp fast ogt float %2395, 0.000000e+00
  br i1 %2396, label %2397, label %2401

; <label>:2397                                    ; preds = %2320
  %2398 = fdiv fast float %2387, %2395
  %2399 = fdiv fast float %2388, %2395
  %2400 = fdiv fast float %2389, %2395
  br label %2401

; <label>:2401                                    ; preds = %2397, %2320
  %2402 = phi float [ %2398, %2397 ], [ 0.000000e+00, %2320 ]
  %2403 = phi float [ %2399, %2397 ], [ 0.000000e+00, %2320 ]
  %2404 = phi float [ %2400, %2397 ], [ 0.000000e+00, %2320 ]
  %2405 = call float @dx.op.dot3.f32(i32 55, float %2402, float %2403, float %2404, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %2406 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2405)  ; FMax(a,b)
  %2407 = fmul fast float %2406, 0x400C5BF8A0000000
  %2408 = fmul fast float %2376, %2296
  %2409 = fmul fast float %2408, %2407
  %2410 = fmul fast float %2377, %2296
  %2411 = fmul fast float %2410, %2407
  %2412 = fmul fast float %2378, %2296
  %2413 = fmul fast float %2412, %2407
  %2414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2415 = extractvalue %dx.types.CBufRet.f32 %2414, 3
  %2416 = fmul fast float %2409, %2415
  %2417 = fmul fast float %2411, %2415
  %2418 = fmul fast float %2413, %2415
  %2419 = fcmp fast ogt float %2263, %2343
  br i1 %2419, label %2420, label %2429

; <label>:2420                                    ; preds = %2401
  %2421 = fmul fast float %2345, 0x3FC24924A0000000
  %2422 = fsub fast float %2263, %2343
  %2423 = fdiv fast float %2422, %2421
  %2424 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  %2425 = fsub fast float 1.000000e+00, %2424
  %2426 = fmul fast float %2425, %2416
  %2427 = fmul fast float %2425, %2417
  %2428 = fmul fast float %2425, %2418
  br label %2429

; <label>:2429                                    ; preds = %2420, %2401, %2306, %2261
  %2430 = phi float [ %2428, %2420 ], [ %2418, %2401 ], [ 0.000000e+00, %2306 ], [ 0.000000e+00, %2261 ]
  %2431 = phi float [ %2427, %2420 ], [ %2417, %2401 ], [ 0.000000e+00, %2306 ], [ 0.000000e+00, %2261 ]
  %2432 = phi float [ %2426, %2420 ], [ %2416, %2401 ], [ 0.000000e+00, %2306 ], [ 0.000000e+00, %2261 ]
  %2433 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2432)  ; FMax(a,b)
  %2434 = fmul fast float %2433, 0x3FD20DD760000000
  %2435 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2085, float %2086, float %2087)  ; Dot3(ax,ay,az,bx,by,bz)
  %2436 = fmul fast float %2435, 0x3FDF454380000000
  %2437 = fmul fast float %2435, %2435
  %2438 = fmul fast float %2437, 0x3FEE471020000000
  %2439 = fadd fast float %2438, 0xBFD42F6020000000
  %2440 = call float @dx.op.dot3.f32(i32 55, float %2433, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2436, float %2439)  ; Dot3(ax,ay,az,bx,by,bz)
  %2441 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2431)  ; FMax(a,b)
  %2442 = fmul fast float %2441, 0x3FD20DD760000000
  %2443 = call float @dx.op.dot3.f32(i32 55, float %2441, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2436, float %2439)  ; Dot3(ax,ay,az,bx,by,bz)
  %2444 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2430)  ; FMax(a,b)
  %2445 = fmul fast float %2444, 0x3FD20DD760000000
  %2446 = call float @dx.op.dot3.f32(i32 55, float %2444, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2436, float %2439)  ; Dot3(ax,ay,az,bx,by,bz)
  %2447 = call float @dx.op.binary.f32(i32 35, float %2434, float 0.000000e+00)  ; FMax(a,b)
  %2448 = call float @dx.op.binary.f32(i32 35, float %2442, float 0.000000e+00)  ; FMax(a,b)
  %2449 = call float @dx.op.binary.f32(i32 35, float %2445, float 0.000000e+00)  ; FMax(a,b)
  %2450 = call float @dx.op.binary.f32(i32 35, float %2440, float 0.000000e+00)  ; FMax(a,b)
  %2451 = call float @dx.op.binary.f32(i32 35, float %2443, float 0.000000e+00)  ; FMax(a,b)
  %2452 = call float @dx.op.binary.f32(i32 35, float %2446, float 0.000000e+00)  ; FMax(a,b)
  %2453 = fmul fast float %2447, %2148
  %2454 = fmul fast float %2448, %2148
  %2455 = fmul fast float %2449, %2148
  %2456 = fadd fast float %2453, %2254
  %2457 = fadd fast float %2454, %2255
  %2458 = fadd fast float %2455, %2256
  %2459 = fmul fast float %2450, %2148
  %2460 = fmul fast float %2451, %2148
  %2461 = fmul fast float %2452, %2148
  %2462 = fadd fast float %2459, %2251
  %2463 = fadd fast float %2460, %2252
  %2464 = fadd fast float %2461, %2253
  br label %2465

; <label>:2465                                    ; preds = %2429, %2249
  %2466 = phi float [ %2462, %2429 ], [ %2251, %2249 ]
  %2467 = phi float [ %2463, %2429 ], [ %2252, %2249 ]
  %2468 = phi float [ %2464, %2429 ], [ %2253, %2249 ]
  %2469 = phi float [ %2453, %2429 ], [ 0.000000e+00, %2249 ]
  %2470 = phi float [ %2454, %2429 ], [ 0.000000e+00, %2249 ]
  %2471 = phi float [ %2455, %2429 ], [ 0.000000e+00, %2249 ]
  %2472 = phi float [ %2456, %2429 ], [ %2254, %2249 ]
  %2473 = phi float [ %2457, %2429 ], [ %2255, %2249 ]
  %2474 = phi float [ %2458, %2429 ], [ %2256, %2249 ]
  %2475 = fcmp fast olt float %2148, 1.000000e+00
  br i1 %2475, label %2476, label %3314, !dx.controlflow.hints !95

; <label>:2476                                    ; preds = %2465
  %2477 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2478 = fadd fast float %2477, %136
  %2479 = fmul fast float %2069, 3.200000e+01
  %2480 = fmul fast float %2070, 3.200000e+01
  %2481 = fadd fast float %2107, %2479
  %2482 = fadd fast float %2108, %2480
  %2483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.CBufRet.f32 %2483, 1
  %2486 = fsub fast float %2481, %2484
  %2487 = fsub fast float %2482, %2485
  %2488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2489 = extractvalue %dx.types.CBufRet.f32 %2488, 0
  %2490 = extractvalue %dx.types.CBufRet.f32 %2488, 1
  %2491 = fmul fast float %2486, %2489
  %2492 = fmul fast float %2487, %2490
  %2493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2494 = extractvalue %dx.types.CBufRet.f32 %2493, 0
  %2495 = fmul fast float %2491, %2494
  %2496 = extractvalue %dx.types.CBufRet.f32 %2493, 1
  %2497 = fadd fast float %2495, %2496
  %2498 = extractvalue %dx.types.CBufRet.f32 %2493, 2
  %2499 = fmul fast float %2498, %2492
  %2500 = extractvalue %dx.types.CBufRet.f32 %2493, 3
  %2501 = fadd fast float %2499, %2500
  %2502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %2497, float %2501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2503 = extractvalue %dx.types.ResRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.ResRet.f32 %2502, 1
  %2505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2506 = extractvalue %dx.types.CBufRet.f32 %2505, 1
  %2507 = extractvalue %dx.types.CBufRet.f32 %2505, 0
  %2508 = fsub fast float %2506, %2507
  %2509 = fmul fast float %2508, %2503
  %2510 = fadd fast float %2509, %2507
  %2511 = extractvalue %dx.types.CBufRet.f32 %2505, 3
  %2512 = extractvalue %dx.types.CBufRet.f32 %2505, 2
  %2513 = fsub fast float %2511, %2512
  %2514 = fmul fast float %2513, %2504
  %2515 = fadd fast float %2514, %2512
  %2516 = fsub fast float %2478, %2510
  %2517 = fsub fast float %2515, %2510
  %2518 = fdiv fast float %2516, %2517
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2521 = extractvalue %dx.types.CBufRet.f32 %2520, 0
  %2522 = fmul fast float %2521, %2519
  %2523 = extractvalue %dx.types.CBufRet.f32 %2520, 1
  %2524 = fadd fast float %2522, %2523
  %2525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %52, float %2497, float %2501, float %2524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2527 = extractvalue %dx.types.ResRet.f32 %2525, 1
  %2528 = extractvalue %dx.types.ResRet.f32 %2525, 2
  %2529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2530 = extractvalue %dx.types.CBufRet.f32 %2529, 0
  %2531 = extractvalue %dx.types.CBufRet.f32 %2529, 1
  %2532 = extractvalue %dx.types.CBufRet.f32 %2529, 2
  %2533 = fmul fast float %2530, %2526
  %2534 = fmul fast float %2531, %2527
  %2535 = fmul fast float %2532, %2528
  %2536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.f32 %2536, 0
  %2538 = extractvalue %dx.types.CBufRet.f32 %2536, 1
  %2539 = extractvalue %dx.types.CBufRet.f32 %2536, 2
  %2540 = fadd fast float %2533, %2537
  %2541 = fadd fast float %2534, %2538
  %2542 = fadd fast float %2535, %2539
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 0
  %2545 = fmul fast float %2544, %2491
  %2546 = extractvalue %dx.types.CBufRet.f32 %2543, 1
  %2547 = fadd fast float %2545, %2546
  %2548 = extractvalue %dx.types.CBufRet.f32 %2543, 2
  %2549 = fmul fast float %2548, %2492
  %2550 = extractvalue %dx.types.CBufRet.f32 %2543, 3
  %2551 = fadd fast float %2549, %2550
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 0
  %2554 = extractvalue %dx.types.CBufRet.f32 %2552, 1
  %2555 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2556 = extractvalue %dx.types.CBufRet.f32 %2552, 3
  %2557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2558 = extractvalue %dx.types.CBufRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.CBufRet.f32 %2557, 1
  %2560 = extractvalue %dx.types.CBufRet.f32 %2557, 2
  %2561 = extractvalue %dx.types.CBufRet.f32 %2557, 3
  %2562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %52, float %2547, float %2551, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2563 = extractvalue %dx.types.ResRet.f32 %2562, 0
  %2564 = extractvalue %dx.types.ResRet.f32 %2562, 1
  %2565 = extractvalue %dx.types.ResRet.f32 %2562, 2
  %2566 = extractvalue %dx.types.ResRet.f32 %2562, 3
  %2567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %52, float %2547, float %2551, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2568 = extractvalue %dx.types.ResRet.f32 %2567, 0
  %2569 = extractvalue %dx.types.ResRet.f32 %2567, 1
  %2570 = extractvalue %dx.types.ResRet.f32 %2567, 2
  %2571 = extractvalue %dx.types.ResRet.f32 %2567, 3
  %2572 = fmul fast float %2563, %2540
  %2573 = fmul fast float %2568, %2540
  %2574 = fmul fast float %2570, %2540
  %2575 = fmul fast float %2566, %2540
  %2576 = fadd fast float %2572, %2553
  %2577 = fadd fast float %2573, %2554
  %2578 = fadd fast float %2574, %2555
  %2579 = fadd fast float %2575, %2556
  %2580 = fmul fast float %2564, %2540
  %2581 = fmul fast float %2569, %2540
  %2582 = fadd fast float %2580, %2558
  %2583 = fadd fast float %2581, %2559
  %2584 = fmul fast float %2565, %2540
  %2585 = fmul fast float %2571, %2540
  %2586 = fadd fast float %2584, %2560
  %2587 = fadd fast float %2585, %2561
  %2588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %52, float %2547, float %2551, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2589 = extractvalue %dx.types.ResRet.f32 %2588, 0
  %2590 = extractvalue %dx.types.ResRet.f32 %2588, 1
  %2591 = extractvalue %dx.types.ResRet.f32 %2588, 2
  %2592 = extractvalue %dx.types.ResRet.f32 %2588, 3
  %2593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %52, float %2547, float %2551, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2594 = extractvalue %dx.types.ResRet.f32 %2593, 0
  %2595 = extractvalue %dx.types.ResRet.f32 %2593, 1
  %2596 = extractvalue %dx.types.ResRet.f32 %2593, 2
  %2597 = extractvalue %dx.types.ResRet.f32 %2593, 3
  %2598 = fmul fast float %2589, %2541
  %2599 = fmul fast float %2594, %2541
  %2600 = fmul fast float %2596, %2541
  %2601 = fmul fast float %2592, %2541
  %2602 = fadd fast float %2576, %2598
  %2603 = fadd fast float %2577, %2599
  %2604 = fadd fast float %2578, %2600
  %2605 = fadd fast float %2579, %2601
  %2606 = fmul fast float %2590, %2541
  %2607 = fmul fast float %2595, %2541
  %2608 = fadd fast float %2582, %2606
  %2609 = fadd fast float %2583, %2607
  %2610 = fmul fast float %2591, %2541
  %2611 = fmul fast float %2597, %2541
  %2612 = fadd fast float %2586, %2610
  %2613 = fadd fast float %2587, %2611
  %2614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %52, float %2547, float %2551, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2615 = extractvalue %dx.types.ResRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.ResRet.f32 %2614, 1
  %2617 = extractvalue %dx.types.ResRet.f32 %2614, 2
  %2618 = extractvalue %dx.types.ResRet.f32 %2614, 3
  %2619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %52, float %2547, float %2551, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2620 = extractvalue %dx.types.ResRet.f32 %2619, 0
  %2621 = extractvalue %dx.types.ResRet.f32 %2619, 1
  %2622 = extractvalue %dx.types.ResRet.f32 %2619, 2
  %2623 = extractvalue %dx.types.ResRet.f32 %2619, 3
  %2624 = fmul fast float %2615, %2542
  %2625 = fmul fast float %2620, %2542
  %2626 = fmul fast float %2622, %2542
  %2627 = fmul fast float %2618, %2542
  %2628 = fadd fast float %2602, %2624
  %2629 = fadd fast float %2603, %2625
  %2630 = fadd fast float %2604, %2626
  %2631 = fadd fast float %2605, %2627
  %2632 = fmul fast float %2616, %2542
  %2633 = fmul fast float %2621, %2542
  %2634 = fadd fast float %2608, %2632
  %2635 = fadd fast float %2609, %2633
  %2636 = fmul fast float %2617, %2542
  %2637 = fmul fast float %2623, %2542
  %2638 = fadd fast float %2612, %2636
  %2639 = fadd fast float %2613, %2637
  %2640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.f32 %2640, 0
  %2642 = fsub fast float %2107, %2641
  %2643 = fsub fast float %2484, %2107
  %2644 = call float @dx.op.binary.f32(i32 35, float %2643, float %2642)  ; FMax(a,b)
  %2645 = extractvalue %dx.types.CBufRet.f32 %2640, 1
  %2646 = fsub fast float %2108, %2645
  %2647 = fsub fast float %2485, %2108
  %2648 = call float @dx.op.binary.f32(i32 35, float %2647, float %2646)  ; FMax(a,b)
  %2649 = call float @dx.op.binary.f32(i32 35, float %2644, float %2648)  ; FMax(a,b)
  %2650 = extractvalue %dx.types.CBufRet.f32 %2488, 3
  %2651 = fmul fast float %2650, %2649
  %2652 = call float @dx.op.unary.f32(i32 7, float %2651)  ; Saturate(value)
  %2653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2654 = extractvalue %dx.types.CBufRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.CBufRet.f32 %2653, 1
  %2656 = extractvalue %dx.types.CBufRet.f32 %2653, 2
  %2657 = extractvalue %dx.types.CBufRet.f32 %2653, 3
  %2658 = fsub fast float %2654, %2628
  %2659 = fsub fast float %2655, %2629
  %2660 = fsub fast float %2656, %2630
  %2661 = fsub fast float %2657, %2631
  %2662 = fmul fast float %2658, %2652
  %2663 = fmul fast float %2659, %2652
  %2664 = fmul fast float %2660, %2652
  %2665 = fmul fast float %2661, %2652
  %2666 = fadd fast float %2662, %2628
  %2667 = fadd fast float %2663, %2629
  %2668 = fadd fast float %2664, %2630
  %2669 = fadd fast float %2665, %2631
  %2670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2671 = extractvalue %dx.types.CBufRet.f32 %2670, 0
  %2672 = extractvalue %dx.types.CBufRet.f32 %2670, 1
  %2673 = fsub fast float %2671, %2634
  %2674 = fsub fast float %2672, %2635
  %2675 = fmul fast float %2673, %2652
  %2676 = fmul fast float %2674, %2652
  %2677 = fadd fast float %2675, %2634
  %2678 = fadd fast float %2676, %2635
  %2679 = extractvalue %dx.types.CBufRet.f32 %2670, 2
  %2680 = extractvalue %dx.types.CBufRet.f32 %2670, 3
  %2681 = fsub fast float %2679, %2638
  %2682 = fsub fast float %2680, %2639
  %2683 = fmul fast float %2681, %2652
  %2684 = fmul fast float %2682, %2652
  %2685 = fadd fast float %2683, %2638
  %2686 = fadd fast float %2684, %2639
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 0
  %2689 = fmul fast float %2688, %2666
  %2690 = fmul fast float %2688, %2667
  %2691 = fmul fast float %2688, %2668
  %2692 = fmul fast float %2688, %2669
  %2693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2693, 0
  %2695 = fmul fast float %2694, %2677
  %2696 = fmul fast float %2694, %2678
  %2697 = fadd fast float %2695, %2689
  %2698 = fadd fast float %2696, %2691
  %2699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2699, 0
  %2701 = fmul fast float %2700, %2685
  %2702 = fmul fast float %2700, %2686
  %2703 = fadd fast float %2697, %2701
  %2704 = fadd fast float %2698, %2702
  %2705 = extractvalue %dx.types.CBufRet.f32 %2687, 1
  %2706 = fmul fast float %2705, %2666
  %2707 = fmul fast float %2705, %2667
  %2708 = fmul fast float %2705, %2668
  %2709 = fmul fast float %2705, %2669
  %2710 = extractvalue %dx.types.CBufRet.f32 %2693, 1
  %2711 = fmul fast float %2710, %2677
  %2712 = fmul fast float %2710, %2678
  %2713 = fadd fast float %2711, %2706
  %2714 = fadd fast float %2712, %2708
  %2715 = extractvalue %dx.types.CBufRet.f32 %2699, 1
  %2716 = fmul fast float %2715, %2685
  %2717 = fmul fast float %2715, %2686
  %2718 = fadd fast float %2713, %2716
  %2719 = fadd fast float %2714, %2717
  %2720 = extractvalue %dx.types.CBufRet.f32 %2687, 2
  %2721 = fmul fast float %2720, %2666
  %2722 = fmul fast float %2720, %2667
  %2723 = fmul fast float %2720, %2668
  %2724 = fmul fast float %2720, %2669
  %2725 = extractvalue %dx.types.CBufRet.f32 %2693, 2
  %2726 = fmul fast float %2725, %2677
  %2727 = fmul fast float %2725, %2678
  %2728 = fadd fast float %2726, %2721
  %2729 = fadd fast float %2727, %2723
  %2730 = extractvalue %dx.types.CBufRet.f32 %2699, 2
  %2731 = fmul fast float %2730, %2685
  %2732 = fmul fast float %2730, %2686
  %2733 = fadd fast float %2728, %2731
  %2734 = fadd fast float %2729, %2732
  %2735 = fmul fast float %2722, %2722
  %2736 = fmul fast float %2734, %2734
  %2737 = fmul fast float %2724, %2724
  %2738 = fadd fast float %2737, %2735
  %2739 = fadd fast float %2738, %2736
  %2740 = call float @dx.op.unary.f32(i32 24, float %2739)  ; Sqrt(value)
  %2741 = fcmp fast ugt float %2740, 0.000000e+00
  br i1 %2741, label %2742, label %2757

; <label>:2742                                    ; preds = %2476
  %2743 = fsub fast float -0.000000e+00, %2724
  %2744 = fdiv fast float %2743, %2740
  %2745 = fsub fast float -0.000000e+00, %2722
  %2746 = fdiv fast float %2745, %2740
  %2747 = fdiv fast float %2734, %2740
  %2748 = fmul fast float %2733, 0x3FE279A760000000
  %2749 = fmul fast float %2746, %2722
  %2750 = fmul fast float %2747, %2734
  %2751 = fmul fast float %2744, %2724
  %2752 = fadd fast float %2749, %2751
  %2753 = fsub fast float %2752, %2750
  %2754 = call float @dx.op.unary.f32(i32 6, float %2753)  ; FAbs(value)
  %2755 = fadd fast float %2754, 0x3DDB7CDFE0000000
  %2756 = fdiv fast float %2748, %2755
  br label %2757

; <label>:2757                                    ; preds = %2742, %2476
  %2758 = phi float [ %2756, %2742 ], [ 1.000000e+00, %2476 ]
  %2759 = fmul fast float %2707, %2707
  %2760 = fmul fast float %2719, %2719
  %2761 = fmul fast float %2709, %2709
  %2762 = fadd fast float %2761, %2759
  %2763 = fadd fast float %2762, %2760
  %2764 = call float @dx.op.unary.f32(i32 24, float %2763)  ; Sqrt(value)
  %2765 = fcmp fast ugt float %2764, 0.000000e+00
  br i1 %2765, label %2766, label %2781

; <label>:2766                                    ; preds = %2757
  %2767 = fsub fast float -0.000000e+00, %2709
  %2768 = fdiv fast float %2767, %2764
  %2769 = fsub fast float -0.000000e+00, %2707
  %2770 = fdiv fast float %2769, %2764
  %2771 = fdiv fast float %2719, %2764
  %2772 = fmul fast float %2718, 0x3FE279A760000000
  %2773 = fmul fast float %2770, %2707
  %2774 = fmul fast float %2771, %2719
  %2775 = fmul fast float %2768, %2709
  %2776 = fadd fast float %2773, %2775
  %2777 = fsub fast float %2776, %2774
  %2778 = call float @dx.op.unary.f32(i32 6, float %2777)  ; FAbs(value)
  %2779 = fadd fast float %2778, 0x3DDB7CDFE0000000
  %2780 = fdiv fast float %2772, %2779
  br label %2781

; <label>:2781                                    ; preds = %2766, %2757
  %2782 = phi float [ %2780, %2766 ], [ 1.000000e+00, %2757 ]
  %2783 = call float @dx.op.binary.f32(i32 36, float %2782, float %2758)  ; FMin(a,b)
  %2784 = fmul fast float %2690, %2690
  %2785 = fmul fast float %2704, %2704
  %2786 = fmul fast float %2692, %2692
  %2787 = fadd fast float %2786, %2784
  %2788 = fadd fast float %2787, %2785
  %2789 = call float @dx.op.unary.f32(i32 24, float %2788)  ; Sqrt(value)
  %2790 = fcmp fast ugt float %2789, 0.000000e+00
  br i1 %2790, label %2791, label %2806

; <label>:2791                                    ; preds = %2781
  %2792 = fsub fast float -0.000000e+00, %2692
  %2793 = fdiv fast float %2792, %2789
  %2794 = fsub fast float -0.000000e+00, %2690
  %2795 = fdiv fast float %2794, %2789
  %2796 = fdiv fast float %2704, %2789
  %2797 = fmul fast float %2703, 0x3FE279A760000000
  %2798 = fmul fast float %2795, %2690
  %2799 = fmul fast float %2796, %2704
  %2800 = fmul fast float %2793, %2692
  %2801 = fadd fast float %2798, %2800
  %2802 = fsub fast float %2801, %2799
  %2803 = call float @dx.op.unary.f32(i32 6, float %2802)  ; FAbs(value)
  %2804 = fadd fast float %2803, 0x3DDB7CDFE0000000
  %2805 = fdiv fast float %2797, %2804
  br label %2806

; <label>:2806                                    ; preds = %2791, %2781
  %2807 = phi float [ %2805, %2791 ], [ 1.000000e+00, %2781 ]
  %2808 = call float @dx.op.binary.f32(i32 36, float %2807, float %2783)  ; FMin(a,b)
  %2809 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  %2810 = fcmp fast olt float %2809, 1.000000e+00
  br i1 %2810, label %2811, label %2821

; <label>:2811                                    ; preds = %2806
  %2812 = fmul fast float %2809, %2690
  %2813 = fmul fast float %2809, %2704
  %2814 = fmul fast float %2809, %2692
  %2815 = fmul fast float %2809, %2707
  %2816 = fmul fast float %2809, %2719
  %2817 = fmul fast float %2809, %2709
  %2818 = fmul fast float %2809, %2722
  %2819 = fmul fast float %2809, %2734
  %2820 = fmul fast float %2809, %2724
  br label %2821

; <label>:2821                                    ; preds = %2811, %2806
  %2822 = phi float [ %2818, %2811 ], [ %2722, %2806 ]
  %2823 = phi float [ %2819, %2811 ], [ %2734, %2806 ]
  %2824 = phi float [ %2820, %2811 ], [ %2724, %2806 ]
  %2825 = phi float [ %2815, %2811 ], [ %2707, %2806 ]
  %2826 = phi float [ %2816, %2811 ], [ %2719, %2806 ]
  %2827 = phi float [ %2817, %2811 ], [ %2709, %2806 ]
  %2828 = phi float [ %2812, %2811 ], [ %2690, %2806 ]
  %2829 = phi float [ %2813, %2811 ], [ %2704, %2806 ]
  %2830 = phi float [ %2814, %2811 ], [ %2692, %2806 ]
  %2831 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2703)  ; FMax(a,b)
  %2832 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2718)  ; FMax(a,b)
  %2833 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2733)  ; FMax(a,b)
  %2834 = fcmp fast oge float %2491, 0.000000e+00
  %2835 = and i1 %2834, %2259
  %2836 = fcmp fast ole float %2491, 1.000000e+00
  %2837 = and i1 %2836, %2835
  %2838 = fcmp fast oge float %2492, 0.000000e+00
  %2839 = and i1 %2838, %2837
  %2840 = fcmp fast ole float %2492, 1.000000e+00
  %2841 = and i1 %2840, %2839
  br i1 %2841, label %2842, label %2987, !dx.controlflow.hints !96

; <label>:2842                                    ; preds = %2821
  %2843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2844 = extractvalue %dx.types.CBufRet.f32 %2843, 2
  %2845 = extractvalue %dx.types.CBufRet.f32 %2843, 3
  %2846 = fmul fast float %2844, %2491
  %2847 = fmul fast float %2845, %2492
  %2848 = call float @dx.op.unary.f32(i32 27, float %2846)  ; Round_ni(value)
  %2849 = call float @dx.op.unary.f32(i32 27, float %2847)  ; Round_ni(value)
  %2850 = fptosi float %2848 to i32
  %2851 = fptosi float %2849 to i32
  %2852 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %42, i32 0, i32 %2850, i32 %2851, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = and i32 %2853, 65535
  %2855 = lshr i32 %2853, 16
  %2856 = icmp eq i32 %2854, 65535
  br i1 %2856, label %2893, label %2857

; <label>:2857                                    ; preds = %2842
  %2858 = extractvalue %dx.types.CBufRet.f32 %2257, 1
  %2859 = extractvalue %dx.types.CBufRet.f32 %2843, 0
  %2860 = extractvalue %dx.types.CBufRet.f32 %2843, 1
  %2861 = fmul fast float %2859, %2491
  %2862 = fmul fast float %2860, %2492
  %2863 = fmul fast float %2861, 1.250000e-01
  %2864 = fmul fast float %2862, 1.250000e-01
  %2865 = call float @dx.op.unary.f32(i32 27, float %2863)  ; Round_ni(value)
  %2866 = call float @dx.op.unary.f32(i32 27, float %2864)  ; Round_ni(value)
  %2867 = fmul fast float %2865, 8.000000e+00
  %2868 = fmul fast float %2866, 8.000000e+00
  %2869 = and i32 %2853, 255
  %2870 = lshr i32 %2853, 8
  %2871 = and i32 %2870, 255
  %2872 = mul nuw nsw i32 %2869, 9
  %2873 = uitofp i32 %2872 to float
  %2874 = mul nuw nsw i32 %2871, 9
  %2875 = uitofp i32 %2874 to float
  %2876 = fadd fast float %2873, 5.000000e-01
  %2877 = fadd fast float %2876, %2861
  %2878 = fsub fast float %2877, %2867
  %2879 = fadd fast float %2875, 5.000000e-01
  %2880 = fadd fast float %2879, %2862
  %2881 = fsub fast float %2880, %2868
  %2882 = fdiv fast float %2878, %2258
  %2883 = fdiv fast float %2881, %2858
  %2884 = fmul fast float %2519, 4.375000e-01
  %2885 = fadd fast float %2884, 3.125000e-02
  %2886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %52, float %2882, float %2883, float %2885, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2887 = extractvalue %dx.types.ResRet.f32 %2886, 0
  %2888 = extractvalue %dx.types.ResRet.f32 %2886, 1
  %2889 = extractvalue %dx.types.ResRet.f32 %2886, 2
  %2890 = fadd fast float %2887, %2831
  %2891 = fadd fast float %2888, %2832
  %2892 = fadd fast float %2889, %2833
  br label %2893

; <label>:2893                                    ; preds = %2857, %2842
  %2894 = phi float [ %2892, %2857 ], [ %2833, %2842 ]
  %2895 = phi float [ %2891, %2857 ], [ %2832, %2842 ]
  %2896 = phi float [ %2890, %2857 ], [ %2831, %2842 ]
  %2897 = icmp eq i32 %2855, 65535
  br i1 %2897, label %2987, label %2898

; <label>:2898                                    ; preds = %2893
  %2899 = extractvalue %dx.types.CBufRet.f32 %2257, 1
  %2900 = extractvalue %dx.types.CBufRet.f32 %2843, 0
  %2901 = extractvalue %dx.types.CBufRet.f32 %2843, 1
  %2902 = fmul fast float %2900, %2491
  %2903 = fmul fast float %2901, %2492
  %2904 = fmul fast float %2902, 1.250000e-01
  %2905 = fmul fast float %2903, 1.250000e-01
  %2906 = call float @dx.op.unary.f32(i32 27, float %2904)  ; Round_ni(value)
  %2907 = call float @dx.op.unary.f32(i32 27, float %2905)  ; Round_ni(value)
  %2908 = fmul fast float %2906, 8.000000e+00
  %2909 = fmul fast float %2907, 8.000000e+00
  %2910 = fsub fast float %2902, %2908
  %2911 = fsub fast float %2903, %2909
  %2912 = fadd fast float %2910, 5.000000e-01
  %2913 = fadd fast float %2911, 5.000000e-01
  %2914 = and i32 %2855, 255
  %2915 = lshr i32 %2853, 24
  %2916 = mul nuw nsw i32 %2914, 9
  %2917 = uitofp i32 %2916 to float
  %2918 = mul nuw nsw i32 %2915, 9
  %2919 = uitofp i32 %2918 to float
  %2920 = fadd fast float %2912, %2917
  %2921 = fadd fast float %2913, %2919
  %2922 = fdiv fast float %2920, %2258
  %2923 = fdiv fast float %2921, %2899
  %2924 = fmul fast float %2519, 4.375000e-01
  %2925 = fadd fast float %2924, 3.125000e-02
  %2926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %52, float %2922, float %2923, float %2925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2927 = extractvalue %dx.types.ResRet.f32 %2926, 0
  %2928 = extractvalue %dx.types.ResRet.f32 %2926, 1
  %2929 = extractvalue %dx.types.ResRet.f32 %2926, 2
  %2930 = fadd fast float %2924, 5.312500e-01
  %2931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %52, float %2922, float %2923, float %2930, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2932 = extractvalue %dx.types.ResRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.ResRet.f32 %2931, 1
  %2934 = extractvalue %dx.types.ResRet.f32 %2931, 2
  %2935 = fmul fast float %2932, 2.000000e+00
  %2936 = fmul fast float %2933, 2.000000e+00
  %2937 = fmul fast float %2934, 2.000000e+00
  %2938 = fadd fast float %2935, -1.000000e+00
  %2939 = fadd fast float %2936, -1.000000e+00
  %2940 = fadd fast float %2937, -1.000000e+00
  %2941 = fmul fast float %2938, %2938
  %2942 = fmul fast float %2939, %2939
  %2943 = fadd fast float %2941, %2942
  %2944 = fmul fast float %2940, %2940
  %2945 = fadd fast float %2943, %2944
  %2946 = call float @dx.op.unary.f32(i32 24, float %2945)  ; Sqrt(value)
  %2947 = fcmp fast ogt float %2946, 0.000000e+00
  br i1 %2947, label %2948, label %2952

; <label>:2948                                    ; preds = %2898
  %2949 = fdiv fast float %2938, %2946
  %2950 = fdiv fast float %2939, %2946
  %2951 = fdiv fast float %2940, %2946
  br label %2952

; <label>:2952                                    ; preds = %2948, %2898
  %2953 = phi float [ %2949, %2948 ], [ 0.000000e+00, %2898 ]
  %2954 = phi float [ %2950, %2948 ], [ 0.000000e+00, %2898 ]
  %2955 = phi float [ %2951, %2948 ], [ 0.000000e+00, %2898 ]
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 0
  %2958 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2959 = fsub fast float %2107, %2957
  %2960 = fsub fast float %2108, %2958
  %2961 = fmul fast float %2959, %2959
  %2962 = fmul fast float %2960, %2960
  %2963 = fadd fast float %2961, %2962
  %2964 = call float @dx.op.unary.f32(i32 24, float %2963)  ; Sqrt(value)
  %2965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.CBufRet.f32 %2965, 1
  %2968 = fsub fast float %2964, %2966
  %2969 = fdiv fast float %2968, %2967
  %2970 = call float @dx.op.unary.f32(i32 7, float %2969)  ; Saturate(value)
  %2971 = fmul fast float %2970, 2.000000e+00
  %2972 = fsub fast float 3.000000e+00, %2971
  %2973 = fmul fast float %2970, %2970
  %2974 = fmul fast float %2973, %2972
  %2975 = call float @dx.op.dot3.f32(i32 55, float %2953, float %2954, float %2955, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %2976 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2975)  ; FMax(a,b)
  %2977 = fmul fast float %2976, 0x400C5BF8A0000000
  %2978 = fmul fast float %2974, %2927
  %2979 = fmul fast float %2978, %2977
  %2980 = fadd fast float %2979, %2896
  %2981 = fmul fast float %2974, %2928
  %2982 = fmul fast float %2981, %2977
  %2983 = fadd fast float %2982, %2895
  %2984 = fmul fast float %2974, %2929
  %2985 = fmul fast float %2984, %2977
  %2986 = fadd fast float %2985, %2894
  br label %2987

; <label>:2987                                    ; preds = %2952, %2893, %2821
  %2988 = phi float [ %2986, %2952 ], [ %2894, %2893 ], [ %2833, %2821 ]
  %2989 = phi float [ %2983, %2952 ], [ %2895, %2893 ], [ %2832, %2821 ]
  %2990 = phi float [ %2980, %2952 ], [ %2896, %2893 ], [ %2831, %2821 ]
  %2991 = fcmp fast ogt float %2478, %2515
  %2992 = and i1 %2834, %2991
  %2993 = and i1 %2836, %2992
  %2994 = and i1 %2838, %2993
  %2995 = and i1 %2840, %2994
  br i1 %2995, label %2996, label %3053, !dx.controlflow.hints !97

; <label>:2996                                    ; preds = %2987
  %2997 = fmul fast float %2517, 0x3FC24924A0000000
  %2998 = fsub fast float %2478, %2515
  %2999 = fdiv fast float %2998, %2997
  %3000 = call float @dx.op.unary.f32(i32 7, float %2999)  ; Saturate(value)
  %3001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3002 = extractvalue %dx.types.CBufRet.f32 %3001, 0
  %3003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3004 = extractvalue %dx.types.CBufRet.f32 %3003, 0
  %3005 = extractvalue %dx.types.CBufRet.f32 %3003, 1
  %3006 = extractvalue %dx.types.CBufRet.f32 %3003, 2
  %3007 = fsub fast float %3002, %2990
  %3008 = fsub fast float %3004, %2828
  %3009 = fsub fast float %3005, %2829
  %3010 = fsub fast float %3006, %2830
  %3011 = fmul fast float %3007, %3000
  %3012 = fmul fast float %3008, %3000
  %3013 = fmul fast float %3009, %3000
  %3014 = fmul fast float %3010, %3000
  %3015 = fadd fast float %3011, %2990
  %3016 = fadd fast float %3012, %2828
  %3017 = fadd fast float %3013, %2829
  %3018 = fadd fast float %3014, %2830
  %3019 = extractvalue %dx.types.CBufRet.f32 %3001, 1
  %3020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3021 = extractvalue %dx.types.CBufRet.f32 %3020, 0
  %3022 = extractvalue %dx.types.CBufRet.f32 %3020, 1
  %3023 = extractvalue %dx.types.CBufRet.f32 %3020, 2
  %3024 = fsub fast float %3019, %2989
  %3025 = fsub fast float %3021, %2825
  %3026 = fsub fast float %3022, %2826
  %3027 = fsub fast float %3023, %2827
  %3028 = fmul fast float %3024, %3000
  %3029 = fmul fast float %3025, %3000
  %3030 = fmul fast float %3026, %3000
  %3031 = fmul fast float %3027, %3000
  %3032 = fadd fast float %3028, %2989
  %3033 = fadd fast float %3029, %2825
  %3034 = fadd fast float %3030, %2826
  %3035 = fadd fast float %3031, %2827
  %3036 = extractvalue %dx.types.CBufRet.f32 %3001, 2
  %3037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3038 = extractvalue %dx.types.CBufRet.f32 %3037, 0
  %3039 = extractvalue %dx.types.CBufRet.f32 %3037, 1
  %3040 = extractvalue %dx.types.CBufRet.f32 %3037, 2
  %3041 = fsub fast float %3036, %2988
  %3042 = fsub fast float %3038, %2822
  %3043 = fsub fast float %3039, %2823
  %3044 = fsub fast float %3040, %2824
  %3045 = fmul fast float %3041, %3000
  %3046 = fmul fast float %3042, %3000
  %3047 = fmul fast float %3043, %3000
  %3048 = fmul fast float %3044, %3000
  %3049 = fadd fast float %3045, %2988
  %3050 = fadd fast float %3046, %2822
  %3051 = fadd fast float %3047, %2823
  %3052 = fadd fast float %3048, %2824
  br label %3053

; <label>:3053                                    ; preds = %2996, %2987
  %3054 = phi float [ %3049, %2996 ], [ %2988, %2987 ]
  %3055 = phi float [ %3050, %2996 ], [ %2822, %2987 ]
  %3056 = phi float [ %3051, %2996 ], [ %2823, %2987 ]
  %3057 = phi float [ %3052, %2996 ], [ %2824, %2987 ]
  %3058 = phi float [ %3032, %2996 ], [ %2989, %2987 ]
  %3059 = phi float [ %3033, %2996 ], [ %2825, %2987 ]
  %3060 = phi float [ %3034, %2996 ], [ %2826, %2987 ]
  %3061 = phi float [ %3035, %2996 ], [ %2827, %2987 ]
  %3062 = phi float [ %3015, %2996 ], [ %2990, %2987 ]
  %3063 = phi float [ %3016, %2996 ], [ %2828, %2987 ]
  %3064 = phi float [ %3017, %2996 ], [ %2829, %2987 ]
  %3065 = phi float [ %3018, %2996 ], [ %2830, %2987 ]
  %3066 = extractvalue %dx.types.CBufRet.f32 %2640, 3
  %3067 = fmul fast float %3066, %3062
  %3068 = fmul fast float %3066, %3058
  %3069 = fmul fast float %3066, %3054
  %3070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3071 = extractvalue %dx.types.CBufRet.f32 %3070, 3
  %3072 = fmul fast float %3067, %3071
  %3073 = fmul fast float %3068, %3071
  %3074 = fmul fast float %3069, %3071
  %3075 = call float @dx.op.dot3.f32(i32 55, float %3072, float %3073, float %3074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3076 = fmul fast float %3075, 0x3FD20DD760000000
  %3077 = fmul fast float %3063, 1.500000e+00
  %3078 = fmul fast float %3077, %3066
  %3079 = fmul fast float %3078, %3071
  %3080 = fmul fast float %3064, 1.500000e+00
  %3081 = fmul fast float %3080, %3066
  %3082 = fmul fast float %3081, %3071
  %3083 = fmul fast float %3065, 1.500000e+00
  %3084 = fmul fast float %3083, %3066
  %3085 = fmul fast float %3084, %3071
  %3086 = fmul fast float %3059, 1.500000e+00
  %3087 = fmul fast float %3086, %3066
  %3088 = fmul fast float %3087, %3071
  %3089 = fmul fast float %3060, 1.500000e+00
  %3090 = fmul fast float %3089, %3066
  %3091 = fmul fast float %3090, %3071
  %3092 = fmul fast float %3061, 1.500000e+00
  %3093 = fmul fast float %3092, %3066
  %3094 = fmul fast float %3093, %3071
  %3095 = fmul fast float %3055, 1.500000e+00
  %3096 = fmul fast float %3095, %3066
  %3097 = fmul fast float %3096, %3071
  %3098 = fmul fast float %3056, 1.500000e+00
  %3099 = fmul fast float %3098, %3066
  %3100 = fmul fast float %3099, %3071
  %3101 = fmul fast float %3057, 1.500000e+00
  %3102 = fmul fast float %3101, %3066
  %3103 = fmul fast float %3102, %3071
  %3104 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3072)  ; FMax(a,b)
  %3105 = call float @dx.op.dot3.f32(i32 55, float %3079, float %3082, float %3085, float %3079, float %3082, float %3085)  ; Dot3(ax,ay,az,bx,by,bz)
  %3106 = fcmp fast oeq float %3105, 0.000000e+00
  %3107 = fcmp fast oeq float %3104, 0.000000e+00
  %3108 = or i1 %3107, %3106
  br i1 %3108, label %3138, label %3109

; <label>:3109                                    ; preds = %3053
  %3110 = fsub fast float -0.000000e+00, %3085
  %3111 = fsub fast float -0.000000e+00, %3079
  %3112 = call float @dx.op.unary.f32(i32 24, float %3105)  ; Sqrt(value)
  %3113 = fdiv fast float %3112, %3104
  %3114 = fcmp fast ogt float %3113, 0x3FFB6F8900000000
  %3115 = select i1 %3114, float 0x3FFB6F8900000000, float %3113
  %3116 = fmul fast float %3115, 0x3FE8A23460000000
  %3117 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3118 = call float @dx.op.binary.f32(i32 35, float %3115, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3119 = fmul fast float %3117, %3104
  %3120 = fmul fast float %3118, 0x3FF279A740000000
  %3121 = fadd fast float %3120, -1.000000e+00
  %3122 = call float @dx.op.dot3.f32(i32 55, float %3110, float %3111, float %3082, float %3110, float %3111, float %3082)  ; Dot3(ax,ay,az,bx,by,bz)
  %3123 = call float @dx.op.unary.f32(i32 25, float %3122)  ; Rsqrt(value)
  %3124 = fmul fast float %3123, %3110
  %3125 = fmul fast float %3123, %3111
  %3126 = fmul fast float %3123, %3082
  %3127 = fmul fast float %3121, %3121
  %3128 = fsub fast float 1.000000e+00, %3127
  %3129 = fmul fast float %3118, 0x40005F8BE0000000
  %3130 = fsub fast float 0x400C5BF8A0000000, %3129
  %3131 = fdiv fast float %3119, %3130
  %3132 = fmul fast float %3131, 0x3FEE31C3C0000000
  %3133 = fmul fast float %3132, %3128
  %3134 = fmul fast float %3118, 0x3FDACB7480000000
  %3135 = fadd fast float %3134, 0xBFD7347680000000
  %3136 = fmul fast float %3135, %3131
  %3137 = fmul fast float %3136, %3128
  br label %3138

; <label>:3138                                    ; preds = %3109, %3053
  %3139 = phi float [ %3124, %3109 ], [ 0.000000e+00, %3053 ]
  %3140 = phi float [ %3125, %3109 ], [ 0.000000e+00, %3053 ]
  %3141 = phi float [ %3126, %3109 ], [ 0.000000e+00, %3053 ]
  %3142 = phi float [ %3133, %3109 ], [ 0.000000e+00, %3053 ]
  %3143 = phi float [ %3137, %3109 ], [ 0.000000e+00, %3053 ]
  %3144 = call float @dx.op.dot3.f32(i32 55, float %3139, float %3140, float %3141, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %3145 = fmul fast float %3144, 0x3FDF454380000000
  %3146 = fmul fast float %3144, %3144
  %3147 = fmul fast float %3146, 0x3FEE471020000000
  %3148 = fadd fast float %3147, 0xBFD42F6020000000
  %3149 = fmul fast float %3104, 0x3FD20DD760000000
  %3150 = fmul fast float %3148, %3143
  %3151 = fadd fast float %3150, %3149
  %3152 = fmul fast float %3145, %3142
  %3153 = fadd fast float %3151, %3152
  %3154 = fsub fast float %3151, %3152
  %3155 = call float @dx.op.dot3.f32(i32 55, float %3139, float %3140, float %3141, float %2085, float %2086, float %2087)  ; Dot3(ax,ay,az,bx,by,bz)
  %3156 = fmul fast float %3155, 0x3FDF454380000000
  %3157 = fmul fast float %3155, %3155
  %3158 = fmul fast float %3157, 0x3FEE471020000000
  %3159 = fadd fast float %3158, 0xBFD42F6020000000
  %3160 = call float @dx.op.dot3.f32(i32 55, float %3104, float %3142, float %3143, float 0x3FD20DD760000000, float %3156, float %3159)  ; Dot3(ax,ay,az,bx,by,bz)
  %3161 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3073)  ; FMax(a,b)
  %3162 = call float @dx.op.dot3.f32(i32 55, float %3088, float %3091, float %3094, float %3088, float %3091, float %3094)  ; Dot3(ax,ay,az,bx,by,bz)
  %3163 = fcmp fast oeq float %3162, 0.000000e+00
  %3164 = fcmp fast oeq float %3161, 0.000000e+00
  %3165 = or i1 %3164, %3163
  br i1 %3165, label %3195, label %3166

; <label>:3166                                    ; preds = %3138
  %3167 = fsub fast float -0.000000e+00, %3094
  %3168 = fsub fast float -0.000000e+00, %3088
  %3169 = call float @dx.op.unary.f32(i32 24, float %3162)  ; Sqrt(value)
  %3170 = fdiv fast float %3169, %3161
  %3171 = fcmp fast ogt float %3170, 0x3FFB6F8900000000
  %3172 = select i1 %3171, float 0x3FFB6F8900000000, float %3170
  %3173 = fmul fast float %3172, 0x3FE8A23460000000
  %3174 = call float @dx.op.unary.f32(i32 7, float %3173)  ; Saturate(value)
  %3175 = call float @dx.op.binary.f32(i32 35, float %3172, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3176 = fmul fast float %3174, %3161
  %3177 = fmul fast float %3175, 0x3FF279A740000000
  %3178 = fadd fast float %3177, -1.000000e+00
  %3179 = call float @dx.op.dot3.f32(i32 55, float %3167, float %3168, float %3091, float %3167, float %3168, float %3091)  ; Dot3(ax,ay,az,bx,by,bz)
  %3180 = call float @dx.op.unary.f32(i32 25, float %3179)  ; Rsqrt(value)
  %3181 = fmul fast float %3180, %3167
  %3182 = fmul fast float %3180, %3168
  %3183 = fmul fast float %3180, %3091
  %3184 = fmul fast float %3178, %3178
  %3185 = fsub fast float 1.000000e+00, %3184
  %3186 = fmul fast float %3175, 0x40005F8BE0000000
  %3187 = fsub fast float 0x400C5BF8A0000000, %3186
  %3188 = fdiv fast float %3176, %3187
  %3189 = fmul fast float %3188, 0x3FEE31C3C0000000
  %3190 = fmul fast float %3189, %3185
  %3191 = fmul fast float %3175, 0x3FDACB7480000000
  %3192 = fadd fast float %3191, 0xBFD7347680000000
  %3193 = fmul fast float %3192, %3188
  %3194 = fmul fast float %3193, %3185
  br label %3195

; <label>:3195                                    ; preds = %3166, %3138
  %3196 = phi float [ %3181, %3166 ], [ 0.000000e+00, %3138 ]
  %3197 = phi float [ %3182, %3166 ], [ 0.000000e+00, %3138 ]
  %3198 = phi float [ %3183, %3166 ], [ 0.000000e+00, %3138 ]
  %3199 = phi float [ %3190, %3166 ], [ 0.000000e+00, %3138 ]
  %3200 = phi float [ %3194, %3166 ], [ 0.000000e+00, %3138 ]
  %3201 = call float @dx.op.dot3.f32(i32 55, float %3196, float %3197, float %3198, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %3202 = fmul fast float %3201, 0x3FDF454380000000
  %3203 = fmul fast float %3201, %3201
  %3204 = fmul fast float %3203, 0x3FEE471020000000
  %3205 = fadd fast float %3204, 0xBFD42F6020000000
  %3206 = fmul fast float %3161, 0x3FD20DD760000000
  %3207 = fmul fast float %3205, %3200
  %3208 = fadd fast float %3207, %3206
  %3209 = fmul fast float %3202, %3199
  %3210 = fadd fast float %3208, %3209
  %3211 = fsub fast float %3208, %3209
  %3212 = call float @dx.op.dot3.f32(i32 55, float %3196, float %3197, float %3198, float %2085, float %2086, float %2087)  ; Dot3(ax,ay,az,bx,by,bz)
  %3213 = fmul fast float %3212, 0x3FDF454380000000
  %3214 = fmul fast float %3212, %3212
  %3215 = fmul fast float %3214, 0x3FEE471020000000
  %3216 = fadd fast float %3215, 0xBFD42F6020000000
  %3217 = call float @dx.op.dot3.f32(i32 55, float %3161, float %3199, float %3200, float 0x3FD20DD760000000, float %3213, float %3216)  ; Dot3(ax,ay,az,bx,by,bz)
  %3218 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3074)  ; FMax(a,b)
  %3219 = call float @dx.op.dot3.f32(i32 55, float %3097, float %3100, float %3103, float %3097, float %3100, float %3103)  ; Dot3(ax,ay,az,bx,by,bz)
  %3220 = fcmp fast oeq float %3219, 0.000000e+00
  %3221 = fcmp fast oeq float %3218, 0.000000e+00
  %3222 = or i1 %3221, %3220
  br i1 %3222, label %3252, label %3223

; <label>:3223                                    ; preds = %3195
  %3224 = fsub fast float -0.000000e+00, %3103
  %3225 = fsub fast float -0.000000e+00, %3097
  %3226 = call float @dx.op.unary.f32(i32 24, float %3219)  ; Sqrt(value)
  %3227 = fdiv fast float %3226, %3218
  %3228 = fcmp fast ogt float %3227, 0x3FFB6F8900000000
  %3229 = select i1 %3228, float 0x3FFB6F8900000000, float %3227
  %3230 = fmul fast float %3229, 0x3FE8A23460000000
  %3231 = call float @dx.op.unary.f32(i32 7, float %3230)  ; Saturate(value)
  %3232 = call float @dx.op.binary.f32(i32 35, float %3229, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3233 = fmul fast float %3231, %3218
  %3234 = fmul fast float %3232, 0x3FF279A740000000
  %3235 = fadd fast float %3234, -1.000000e+00
  %3236 = call float @dx.op.dot3.f32(i32 55, float %3224, float %3225, float %3100, float %3224, float %3225, float %3100)  ; Dot3(ax,ay,az,bx,by,bz)
  %3237 = call float @dx.op.unary.f32(i32 25, float %3236)  ; Rsqrt(value)
  %3238 = fmul fast float %3237, %3224
  %3239 = fmul fast float %3237, %3225
  %3240 = fmul fast float %3237, %3100
  %3241 = fmul fast float %3235, %3235
  %3242 = fsub fast float 1.000000e+00, %3241
  %3243 = fmul fast float %3232, 0x40005F8BE0000000
  %3244 = fsub fast float 0x400C5BF8A0000000, %3243
  %3245 = fdiv fast float %3233, %3244
  %3246 = fmul fast float %3245, 0x3FEE31C3C0000000
  %3247 = fmul fast float %3246, %3242
  %3248 = fmul fast float %3232, 0x3FDACB7480000000
  %3249 = fadd fast float %3248, 0xBFD7347680000000
  %3250 = fmul fast float %3249, %3245
  %3251 = fmul fast float %3250, %3242
  br label %3252

; <label>:3252                                    ; preds = %3223, %3195
  %3253 = phi float [ %3238, %3223 ], [ 0.000000e+00, %3195 ]
  %3254 = phi float [ %3239, %3223 ], [ 0.000000e+00, %3195 ]
  %3255 = phi float [ %3240, %3223 ], [ 0.000000e+00, %3195 ]
  %3256 = phi float [ %3247, %3223 ], [ 0.000000e+00, %3195 ]
  %3257 = phi float [ %3251, %3223 ], [ 0.000000e+00, %3195 ]
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3253, float %3254, float %3255, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = fmul fast float %3258, 0x3FDF454380000000
  %3260 = fmul fast float %3258, %3258
  %3261 = fmul fast float %3260, 0x3FEE471020000000
  %3262 = fadd fast float %3261, 0xBFD42F6020000000
  %3263 = fmul fast float %3218, 0x3FD20DD760000000
  %3264 = fmul fast float %3262, %3257
  %3265 = fadd fast float %3264, %3263
  %3266 = fmul fast float %3259, %3256
  %3267 = fadd fast float %3265, %3266
  %3268 = fsub fast float %3265, %3266
  %3269 = call float @dx.op.dot3.f32(i32 55, float %3253, float %3254, float %3255, float %2085, float %2086, float %2087)  ; Dot3(ax,ay,az,bx,by,bz)
  %3270 = fmul fast float %3269, 0x3FDF454380000000
  %3271 = fmul fast float %3269, %3269
  %3272 = fmul fast float %3271, 0x3FEE471020000000
  %3273 = fadd fast float %3272, 0xBFD42F6020000000
  %3274 = call float @dx.op.dot3.f32(i32 55, float %3218, float %3256, float %3257, float 0x3FD20DD760000000, float %3270, float %3273)  ; Dot3(ax,ay,az,bx,by,bz)
  %3275 = call float @dx.op.binary.f32(i32 35, float %3153, float 0.000000e+00)  ; FMax(a,b)
  %3276 = call float @dx.op.binary.f32(i32 35, float %3210, float 0.000000e+00)  ; FMax(a,b)
  %3277 = call float @dx.op.binary.f32(i32 35, float %3267, float 0.000000e+00)  ; FMax(a,b)
  %3278 = call float @dx.op.binary.f32(i32 35, float %3154, float 0.000000e+00)  ; FMax(a,b)
  %3279 = call float @dx.op.binary.f32(i32 35, float %3211, float 0.000000e+00)  ; FMax(a,b)
  %3280 = call float @dx.op.binary.f32(i32 35, float %3268, float 0.000000e+00)  ; FMax(a,b)
  %3281 = call float @dx.op.binary.f32(i32 35, float %3160, float 0.000000e+00)  ; FMax(a,b)
  %3282 = call float @dx.op.binary.f32(i32 35, float %3217, float 0.000000e+00)  ; FMax(a,b)
  %3283 = call float @dx.op.binary.f32(i32 35, float %3274, float 0.000000e+00)  ; FMax(a,b)
  %3284 = fsub fast float %2472, %3275
  %3285 = fsub fast float %2473, %3276
  %3286 = fsub fast float %2474, %3277
  %3287 = fmul fast float %3284, %2148
  %3288 = fmul fast float %3285, %2148
  %3289 = fmul fast float %3286, %2148
  %3290 = fadd fast float %3287, %3275
  %3291 = fadd fast float %3288, %3276
  %3292 = fadd fast float %3289, %3277
  %3293 = fsub fast float %2469, %3278
  %3294 = fsub fast float %2470, %3279
  %3295 = fsub fast float %2471, %3280
  %3296 = fmul fast float %3293, %2148
  %3297 = fmul fast float %3294, %2148
  %3298 = fmul fast float %3295, %2148
  %3299 = fadd fast float %3296, %3278
  %3300 = fadd fast float %3297, %3279
  %3301 = fadd fast float %3298, %3280
  %3302 = fsub fast float %2466, %3281
  %3303 = fsub fast float %2467, %3282
  %3304 = fsub fast float %2468, %3283
  %3305 = fmul fast float %3302, %2148
  %3306 = fmul fast float %3303, %2148
  %3307 = fmul fast float %3304, %2148
  %3308 = fadd fast float %3305, %3281
  %3309 = fadd fast float %3306, %3282
  %3310 = fadd fast float %3307, %3283
  %3311 = fsub fast float %2250, %3076
  %3312 = fmul fast float %3311, %2148
  %3313 = fadd fast float %3312, %3076
  br label %3314

; <label>:3314                                    ; preds = %3252, %2465
  %3315 = phi float [ %3313, %3252 ], [ %2250, %2465 ]
  %3316 = phi float [ %3308, %3252 ], [ %2466, %2465 ]
  %3317 = phi float [ %3309, %3252 ], [ %2467, %2465 ]
  %3318 = phi float [ %3310, %3252 ], [ %2468, %2465 ]
  %3319 = phi float [ %3299, %3252 ], [ %2469, %2465 ]
  %3320 = phi float [ %3300, %3252 ], [ %2470, %2465 ]
  %3321 = phi float [ %3301, %3252 ], [ %2471, %2465 ]
  %3322 = phi float [ %3290, %3252 ], [ %2472, %2465 ]
  %3323 = phi float [ %3291, %3252 ], [ %2473, %2465 ]
  %3324 = phi float [ %3292, %3252 ], [ %2474, %2465 ]
  %3325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3326 = extractvalue %dx.types.CBufRet.f32 %3325, 0
  %3327 = call float @dx.op.binary.f32(i32 36, float %2072, float %3326)  ; FMin(a,b)
  %3328 = fmul fast float %3327, %2089
  %3329 = fsub fast float 1.000000e+00, %3328
  %3330 = bitcast float %3329 to i32
  %3331 = sub nsw i32 2129859010, %3330
  %3332 = bitcast i32 %3331 to float
  %3333 = call float @dx.op.binary.f32(i32 36, float %2073, float %3326)  ; FMin(a,b)
  %3334 = fmul fast float %3333, %2089
  %3335 = fsub fast float 1.000000e+00, %3334
  %3336 = bitcast float %3335 to i32
  %3337 = sub nsw i32 2129859010, %3336
  %3338 = bitcast i32 %3337 to float
  %3339 = call float @dx.op.binary.f32(i32 36, float %2074, float %3326)  ; FMin(a,b)
  %3340 = fmul fast float %3339, %2089
  %3341 = fsub fast float 1.000000e+00, %3340
  %3342 = bitcast float %3341 to i32
  %3343 = sub nsw i32 2129859010, %3342
  %3344 = bitcast i32 %3343 to float
  %3345 = fmul fast float %3322, %2088
  %3346 = fmul fast float %3345, %3332
  %3347 = fmul fast float %3323, %2088
  %3348 = fmul fast float %3347, %3338
  %3349 = fmul fast float %3324, %2088
  %3350 = fmul fast float %3349, %3344
  %3351 = call float @dx.op.binary.f32(i32 36, float %2066, float %3326)  ; FMin(a,b)
  %3352 = fmul fast float %3351, %2089
  %3353 = fsub fast float 1.000000e+00, %3352
  %3354 = bitcast float %3353 to i32
  %3355 = sub nsw i32 2129859010, %3354
  %3356 = bitcast i32 %3355 to float
  %3357 = call float @dx.op.binary.f32(i32 36, float %2067, float %3326)  ; FMin(a,b)
  %3358 = fmul fast float %3357, %2089
  %3359 = fsub fast float 1.000000e+00, %3358
  %3360 = bitcast float %3359 to i32
  %3361 = sub nsw i32 2129859010, %3360
  %3362 = bitcast i32 %3361 to float
  %3363 = call float @dx.op.binary.f32(i32 36, float %2077, float %3326)  ; FMin(a,b)
  %3364 = fmul fast float %3363, %2089
  %3365 = fsub fast float 1.000000e+00, %3364
  %3366 = bitcast float %3365 to i32
  %3367 = sub nsw i32 2129859010, %3366
  %3368 = bitcast i32 %3367 to float
  %3369 = fmul fast float %3316, %2088
  %3370 = fmul fast float %3369, %3356
  %3371 = fmul fast float %3317, %2088
  %3372 = fmul fast float %3371, %3362
  %3373 = fmul fast float %3318, %2088
  %3374 = fmul fast float %3373, %3368
  %3375 = call float @dx.op.dot3.f32(i32 55, float %3346, float %3348, float %3350, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3376 = select i1 %256, float 0.000000e+00, float %3346
  %3377 = select i1 %256, float %3375, float %3348
  %3378 = select i1 %256, float 0.000000e+00, float %3350
  %3379 = call float @dx.op.dot3.f32(i32 55, float %3319, float %3320, float %3321, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3380 = select i1 %256, float 0.000000e+00, float %3319
  %3381 = select i1 %256, float %3379, float %3320
  %3382 = select i1 %256, float 0.000000e+00, float %3321
  %3383 = call float @dx.op.dot3.f32(i32 55, float %3370, float %3372, float %3374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3384 = select i1 %256, float 0.000000e+00, float %3370
  %3385 = select i1 %256, float %3383, float %3372
  %3386 = select i1 %256, float 0.000000e+00, float %3374
  %3387 = fmul fast float %1104, %1104
  %3388 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  %3389 = fmul fast float %2079, 9.843750e-01
  %3390 = fmul fast float %2075, 9.843750e-01
  %3391 = fadd fast float %3389, 7.812500e-03
  %3392 = fadd fast float %3390, 7.812500e-03
  %3393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %52, float %3391, float %3392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = extractvalue %dx.types.ResRet.f32 %3393, 1
  %3396 = extractvalue %dx.types.ResRet.f32 %3393, 2
  %3397 = extractvalue %dx.types.ResRet.f32 %3393, 3
  %3398 = fsub fast float 1.000000e+00, %3388
  %3399 = fsub fast float %3396, %3394
  %3400 = fsub fast float %3397, %3395
  %3401 = fmul fast float %3399, %3398
  %3402 = fmul fast float %3400, %3398
  %3403 = fadd fast float %3401, %3394
  %3404 = fadd fast float %3402, %3395
  %3405 = fmul fast float %3403, %2066
  %3406 = fmul fast float %3403, %2067
  %3407 = fmul fast float %3403, %2077
  %3408 = fadd fast float %3405, %3404
  %3409 = fadd fast float %3406, %3404
  %3410 = fadd fast float %3407, %3404
  %3411 = fcmp fast ogt float %1698, 0.000000e+00
  br i1 %3411, label %3412, label %3438

; <label>:3412                                    ; preds = %3314
  %3413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %52, float %1698, float %2079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = extractvalue %dx.types.ResRet.f32 %3413, 1
  %3416 = extractvalue %dx.types.ResRet.f32 %3413, 2
  %3417 = fadd fast float %3414, -5.000000e-01
  %3418 = fadd fast float %3415, -5.000000e-01
  %3419 = fadd fast float %3416, -5.000000e-01
  %3420 = fsub fast float 1.000000e+00, %2066
  %3421 = fsub fast float 1.000000e+00, %2067
  %3422 = fsub fast float 1.000000e+00, %2077
  %3423 = fmul fast float %2066, 4.000000e+00
  %3424 = fmul fast float %3423, %3420
  %3425 = fmul fast float %3424, %3417
  %3426 = fmul fast float %2067, 4.000000e+00
  %3427 = fmul fast float %3426, %3421
  %3428 = fmul fast float %3427, %3418
  %3429 = fmul fast float %2077, 4.000000e+00
  %3430 = fmul fast float %3429, %3422
  %3431 = fmul fast float %3430, %3419
  %3432 = fadd fast float %3425, %3408
  %3433 = fadd fast float %3428, %3409
  %3434 = fadd fast float %3431, %3410
  %3435 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  %3436 = call float @dx.op.unary.f32(i32 7, float %3433)  ; Saturate(value)
  %3437 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  br label %3438

; <label>:3438                                    ; preds = %3412, %3314
  %3439 = phi float [ %3435, %3412 ], [ %3408, %3314 ]
  %3440 = phi float [ %3436, %3412 ], [ %3409, %3314 ]
  %3441 = phi float [ %3437, %3412 ], [ %3410, %3314 ]
  %3442 = call float @dx.op.binary.f32(i32 35, float %3440, float %3441)  ; FMax(a,b)
  %3443 = call float @dx.op.binary.f32(i32 35, float %3439, float %3442)  ; FMax(a,b)
  %3444 = fsub fast float 1.000000e+00, %3443
  %3445 = fmul fast float %3443, %2075
  %3446 = fadd fast float %3445, %2075
  %3447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3448 = extractvalue %dx.types.CBufRet.f32 %3447, 2
  %3449 = extractvalue %dx.types.CBufRet.f32 %3447, 3
  %3450 = fmul fast float %3446, %3448
  %3451 = fadd fast float %3450, %3449
  %3452 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3453 = fsub fast float 1.000000e+00, %2100
  %3454 = fadd fast float %3453, %3452
  %3455 = call float @dx.op.unary.f32(i32 7, float %3454)  ; Saturate(value)
  %3456 = fcmp fast olt float %3455, 1.000000e+00
  br i1 %3456, label %3457, label %3905

; <label>:3457                                    ; preds = %3438
  %3458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3459 = extractvalue %dx.types.CBufRet.f32 %3458, 2
  %3460 = extractvalue %dx.types.CBufRet.f32 %3458, 3
  %3461 = fmul fast float %3459, %87
  %3462 = fmul fast float %3460, %88
  %3463 = fptoui float %3461 to i32
  %3464 = fptoui float %3462 to i32
  %3465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3466 = extractvalue %dx.types.CBufRet.f32 %3465, 0
  %3467 = extractvalue %dx.types.CBufRet.f32 %3465, 2
  %3468 = extractvalue %dx.types.CBufRet.f32 %3465, 3
  %3469 = fadd fast float %75, -4.000000e+00
  %3470 = call float @dx.op.binary.f32(i32 35, float %3469, float 0.000000e+00)  ; FMax(a,b)
  %3471 = fadd fast float %3470, %3466
  %3472 = fmul fast float %3471, %3467
  %3473 = call float @dx.op.unary.f32(i32 23, float %3472)  ; Log(value)
  %3474 = fmul fast float %3473, %3468
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 2
  %3477 = fmul fast float %3474, %3476
  %3478 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  %3479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3480 = extractvalue %dx.types.CBufRet.i32 %3479, 1
  %3481 = add i32 %3480, -1
  %3482 = uitofp i32 %3480 to float
  %3483 = fmul fast float %3482, %3478
  %3484 = fptoui float %3483 to i32
  %3485 = call i32 @dx.op.binary.i32(i32 40, i32 %3484, i32 %3481)  ; UMin(a,b)
  %3486 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3487 = extractvalue %dx.types.CBufRet.i32 %3486, 2
  %3488 = extractvalue %dx.types.CBufRet.i32 %3486, 3
  %3489 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3464, i32 %3487, i32 %3463)  ; UMad(a,b,c)
  %3490 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3485, i32 %3488, i32 %3489)  ; UMad(a,b,c)
  %3491 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %3492 = fptoui float %3491 to i32
  %3493 = lshr i32 %3492, 5
  %3494 = call i32 @dx.op.binary.i32(i32 40, i32 %3493, i32 8191)  ; UMin(a,b)
  br i1 false, label %3495, label %3502

; <label>:3495                                    ; preds = %3457
  %3496 = fadd fast float 0.000000e+00, %2087
  %3497 = call float @dx.op.dot3.f32(i32 55, float %2085, float %2086, float %3496, float %2085, float %2086, float %3496)  ; Dot3(ax,ay,az,bx,by,bz)
  %3498 = call float @dx.op.unary.f32(i32 25, float %3497)  ; Rsqrt(value)
  %3499 = fmul fast float %3498, %2085
  %3500 = fmul fast float %3498, %2086
  %3501 = fmul fast float %3496, %3498
  br label %3502

; <label>:3502                                    ; preds = %3495, %3457
  %3503 = phi float [ %3499, %3495 ], [ %2085, %3457 ]
  %3504 = phi float [ %3500, %3495 ], [ %2086, %3457 ]
  %3505 = phi float [ %3501, %3495 ], [ %2087, %3457 ]
  %3506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.i32 %3506, 2
  %3508 = add nsw i32 %3507, -1
  %3509 = call i32 @dx.op.binary.i32(i32 37, i32 %3508, i32 0)  ; IMax(a,b)
  %3510 = shl i32 %3494, 2
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = lshr i32 %3512, 16
  %3514 = and i32 %3512, 65535
  %3515 = lshr i32 %3512, 21
  %3516 = lshr i32 %3514, 5
  %3517 = call i32 @dx.op.binary.i32(i32 40, i32 %3516, i32 %3509)  ; UMin(a,b)
  %3518 = icmp ugt i32 %3515, %3517
  br i1 %3518, label %3881, label %3519

; <label>:3519                                    ; preds = %3502
  br label %3520

; <label>:3520                                    ; preds = %3873, %3519
  %3521 = phi float [ %3874, %3873 ], [ 0.000000e+00, %3519 ]
  %3522 = phi float [ %3875, %3873 ], [ 0.000000e+00, %3519 ]
  %3523 = phi float [ %3876, %3873 ], [ 0.000000e+00, %3519 ]
  %3524 = phi float [ %3877, %3873 ], [ 1.000000e+00, %3519 ]
  %3525 = phi i32 [ %3878, %3873 ], [ %3515, %3519 ]
  %3526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.i32 %3526, 2
  %3528 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3490, i32 %3527, i32 %3525)  ; UMad(a,b,c)
  %3529 = shl i32 %3528, 2
  %3530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.i32 %3530, 0
  %3532 = shl i32 %3525, 5
  %3533 = sub nsw i32 %3513, %3532
  %3534 = call i32 @dx.op.binary.i32(i32 37, i32 %3533, i32 0)  ; IMax(a,b)
  %3535 = call i32 @dx.op.binary.i32(i32 38, i32 %3534, i32 31)  ; IMin(a,b)
  %3536 = sub nsw i32 1, %3513
  %3537 = add nsw i32 %3536, %3514
  %3538 = call i32 @dx.op.binary.i32(i32 37, i32 %3537, i32 0)  ; IMax(a,b)
  %3539 = call i32 @dx.op.binary.i32(i32 38, i32 %3538, i32 32)  ; IMin(a,b)
  %3540 = and i32 %3539, 31
  %3541 = shl i32 -1, %3540
  %3542 = xor i32 %3541, -1
  %3543 = and i32 %3535, 31
  %3544 = shl i32 %3542, %3543
  %3545 = icmp eq i32 %3539, 32
  %3546 = select i1 %3545, i32 -1, i32 %3544
  %3547 = and i32 %3546, %3531
  %3548 = icmp eq i32 %3547, 0
  br i1 %3548, label %3873, label %3549

; <label>:3549                                    ; preds = %3520
  br label %3550

; <label>:3550                                    ; preds = %3656, %3549
  %3551 = phi float [ %3657, %3656 ], [ %3521, %3549 ]
  %3552 = phi float [ %3658, %3656 ], [ %3522, %3549 ]
  %3553 = phi float [ %3659, %3656 ], [ %3523, %3549 ]
  %3554 = phi float [ %3660, %3656 ], [ %3524, %3549 ]
  %3555 = phi i32 [ %3560, %3656 ], [ %3547, %3549 ]
  %3556 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3555)  ; FirstbitLo(value)
  %3557 = add i32 %3556, %3532
  %3558 = and i32 %3556, 31
  %3559 = shl i32 1, %3558
  %3560 = xor i32 %3559, %3555
  %3561 = mul i32 %3557, 72
  %3562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.f32 %3562, 0
  %3564 = extractvalue %dx.types.ResRet.f32 %3562, 1
  %3565 = extractvalue %dx.types.ResRet.f32 %3562, 2
  %3566 = add i32 %3561, 12
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = add i32 %3561, 16
  %3570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.f32 %3570, 0
  %3572 = extractvalue %dx.types.ResRet.f32 %3570, 1
  %3573 = extractvalue %dx.types.ResRet.f32 %3570, 2
  %3574 = add i32 %3561, 28
  %3575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = add i32 %3561, 32
  %3578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = extractvalue %dx.types.ResRet.f32 %3578, 3
  %3583 = add i32 %3561, 48
  %3584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = extractvalue %dx.types.ResRet.f32 %3584, 1
  %3587 = add i32 %3561, 56
  %3588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.ResRet.f32 %3588, 1
  %3591 = add i32 %3561, 64
  %3592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3594 = extractvalue %dx.types.ResRet.f32 %3592, 1
  %3595 = mul i32 %3557, 60
  %3596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.ResRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.ResRet.f32 %3596, 2
  %3600 = add i32 %3595, 12
  %3601 = add i32 %3595, 48
  %3602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = and i32 %3568, 32767
  %3607 = bitcast float %3563 to i32
  %3608 = icmp eq i32 %3607, -1
  %3609 = bitcast float %3564 to i32
  %3610 = and i32 %3568, 32768
  %3611 = icmp ne i32 %3610, 0
  %3612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3613 = extractvalue %dx.types.CBufRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.CBufRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.CBufRet.f32 %3612, 2
  %3616 = fsub fast float %3597, %3613
  %3617 = fsub fast float %3598, %3614
  %3618 = fsub fast float %3599, %3615
  %3619 = fsub fast float %134, %3616
  %3620 = fsub fast float %135, %3617
  %3621 = fsub fast float %136, %3618
  %3622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  %3624 = extractvalue %dx.types.ResRet.f32 %3622, 1
  %3625 = extractvalue %dx.types.ResRet.f32 %3622, 2
  %3626 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3620, float %3621, float %3623, float %3624, float %3625)  ; Dot3(ax,ay,az,bx,by,bz)
  %3627 = add i32 %3595, 24
  %3628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3620, float %3621, float %3629, float %3630, float %3631)  ; Dot3(ax,ay,az,bx,by,bz)
  %3633 = add i32 %3595, 36
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3620, float %3621, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %3639 = call float @dx.op.unary.f32(i32 6, float %3626)  ; FAbs(value)
  %3640 = call float @dx.op.unary.f32(i32 6, float %3632)  ; FAbs(value)
  %3641 = call float @dx.op.unary.f32(i32 6, float %3638)  ; FAbs(value)
  %3642 = fsub fast float %3603, %3639
  %3643 = fsub fast float %3604, %3640
  %3644 = fsub fast float %3605, %3641
  %3645 = fmul fast float %3642, %3571
  %3646 = fmul fast float %3643, %3572
  %3647 = fmul fast float %3644, %3573
  %3648 = call float @dx.op.binary.f32(i32 36, float %3646, float %3647)  ; FMin(a,b)
  %3649 = call float @dx.op.binary.f32(i32 36, float %3645, float %3648)  ; FMin(a,b)
  %3650 = call float @dx.op.unary.f32(i32 7, float %3649)  ; Saturate(value)
  %3651 = call float @dx.op.binary.f32(i32 36, float %3554, float %3650)  ; FMin(a,b)
  %3652 = uitofp i1 %3611 to float
  %3653 = fsub fast float 1.000000e+00, %3652
  %3654 = fmul fast float %3651, %3653
  %3655 = fcmp fast ogt float %3654, 0.000000e+00
  br i1 %3655, label %3662, label %3656

; <label>:3656                                    ; preds = %3804, %3550
  %3657 = phi float [ %3868, %3804 ], [ %3551, %3550 ]
  %3658 = phi float [ %3869, %3804 ], [ %3552, %3550 ]
  %3659 = phi float [ %3870, %3804 ], [ %3553, %3550 ]
  %3660 = phi float [ %3871, %3804 ], [ %3554, %3550 ]
  %3661 = icmp eq i32 %3555, %3559
  br i1 %3661, label %3872, label %3550

; <label>:3662                                    ; preds = %3550
  br i1 %3608, label %3720, label %3663

; <label>:3663                                    ; preds = %3662
  %3664 = fsub fast float -0.000000e+00, %3623
  %3665 = fsub fast float -0.000000e+00, %3624
  %3666 = fsub fast float -0.000000e+00, %3625
  %3667 = call float @dx.op.dot3.f32(i32 55, float %3503, float %3504, float %3505, float %3664, float %3665, float %3666)  ; Dot3(ax,ay,az,bx,by,bz)
  %3668 = fsub fast float -0.000000e+00, %3667
  %3669 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3620, float %3621, float %3664, float %3665, float %3666)  ; Dot3(ax,ay,az,bx,by,bz)
  %3670 = fadd fast float %3669, %3586
  %3671 = fadd fast float %3585, %3669
  %3672 = fsub fast float -0.000000e+00, %3671
  %3673 = fcmp ogt float %3667, -0.000000e+00
  %3674 = select i1 %3673, float %3672, float %3670
  %3675 = call float @dx.op.unary.f32(i32 6, float %3668)  ; FAbs(value)
  %3676 = fdiv fast float 1.000000e+00, %3675
  %3677 = fmul fast float %3674, %3676
  %3678 = call float @dx.op.binary.f32(i32 35, float %3677, float 0.000000e+00)  ; FMax(a,b)
  %3679 = fsub fast float -0.000000e+00, %3629
  %3680 = fsub fast float -0.000000e+00, %3630
  %3681 = fsub fast float -0.000000e+00, %3631
  %3682 = call float @dx.op.dot3.f32(i32 55, float %3503, float %3504, float %3505, float %3679, float %3680, float %3681)  ; Dot3(ax,ay,az,bx,by,bz)
  %3683 = fsub fast float -0.000000e+00, %3682
  %3684 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3620, float %3621, float %3679, float %3680, float %3681)  ; Dot3(ax,ay,az,bx,by,bz)
  %3685 = fadd fast float %3684, %3590
  %3686 = fadd fast float %3589, %3684
  %3687 = fsub fast float -0.000000e+00, %3686
  %3688 = fcmp ogt float %3682, -0.000000e+00
  %3689 = select i1 %3688, float %3687, float %3685
  %3690 = call float @dx.op.unary.f32(i32 6, float %3683)  ; FAbs(value)
  %3691 = fdiv fast float 1.000000e+00, %3690
  %3692 = fmul fast float %3689, %3691
  %3693 = call float @dx.op.binary.f32(i32 35, float %3692, float 0.000000e+00)  ; FMax(a,b)
  %3694 = fsub fast float -0.000000e+00, %3635
  %3695 = fsub fast float -0.000000e+00, %3636
  %3696 = fsub fast float -0.000000e+00, %3637
  %3697 = call float @dx.op.dot3.f32(i32 55, float %3503, float %3504, float %3505, float %3694, float %3695, float %3696)  ; Dot3(ax,ay,az,bx,by,bz)
  %3698 = fsub fast float -0.000000e+00, %3697
  %3699 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3620, float %3621, float %3694, float %3695, float %3696)  ; Dot3(ax,ay,az,bx,by,bz)
  %3700 = fadd fast float %3699, %3594
  %3701 = fadd fast float %3593, %3699
  %3702 = fsub fast float -0.000000e+00, %3701
  %3703 = fcmp ogt float %3697, -0.000000e+00
  %3704 = select i1 %3703, float %3702, float %3700
  %3705 = call float @dx.op.unary.f32(i32 6, float %3698)  ; FAbs(value)
  %3706 = fdiv fast float 1.000000e+00, %3705
  %3707 = fmul fast float %3704, %3706
  %3708 = call float @dx.op.binary.f32(i32 35, float %3707, float 0.000000e+00)  ; FMax(a,b)
  %3709 = call float @dx.op.binary.f32(i32 36, float %3693, float %3708)  ; FMin(a,b)
  %3710 = call float @dx.op.binary.f32(i32 36, float %3678, float %3709)  ; FMin(a,b)
  %3711 = fmul fast float %3710, %3503
  %3712 = fmul fast float %3710, %3504
  %3713 = fmul fast float %3710, %3505
  %3714 = fadd fast float %3711, %134
  %3715 = fadd fast float %3712, %135
  %3716 = fadd fast float %3713, %136
  %3717 = fsub fast float %3714, %3563
  %3718 = fsub fast float %3715, %3564
  %3719 = fsub fast float %3716, %3565
  br label %3727

; <label>:3720                                    ; preds = %3662
  %3721 = fmul fast float %3503, 8.096000e+03
  %3722 = fmul fast float %3504, 8.096000e+03
  %3723 = fmul fast float %3505, 8.096000e+03
  %3724 = fadd fast float %3721, %134
  %3725 = fadd fast float %3722, %135
  %3726 = fadd fast float %3723, %136
  br label %3727

; <label>:3727                                    ; preds = %3720, %3663
  %3728 = phi float [ %3503, %3720 ], [ %3717, %3663 ]
  %3729 = phi float [ %3504, %3720 ], [ %3718, %3663 ]
  %3730 = phi float [ %3505, %3720 ], [ %3719, %3663 ]
  %3731 = phi float [ %3724, %3720 ], [ %3714, %3663 ]
  %3732 = phi float [ %3725, %3720 ], [ %3715, %3663 ]
  %3733 = phi float [ %3726, %3720 ], [ %3716, %3663 ]
  %3734 = fcmp fast olt float %3582, 1.000000e+00
  br i1 %3734, label %3735, label %3766, !dx.controlflow.hints !98

; <label>:3735                                    ; preds = %3727
  %3736 = fmul fast float %3730, %3580
  %3737 = fmul fast float %3729, %3581
  %3738 = fsub fast float %3736, %3737
  %3739 = fmul fast float %3728, %3581
  %3740 = fmul fast float %3730, %3579
  %3741 = fsub fast float %3739, %3740
  %3742 = fmul fast float %3729, %3579
  %3743 = fmul fast float %3728, %3580
  %3744 = fsub fast float %3742, %3743
  %3745 = fmul fast float %3738, 2.000000e+00
  %3746 = fmul fast float %3741, 2.000000e+00
  %3747 = fmul fast float %3744, 2.000000e+00
  %3748 = fmul fast float %3745, %3582
  %3749 = fmul fast float %3746, %3582
  %3750 = fmul fast float %3747, %3582
  %3751 = fmul fast float %3747, %3580
  %3752 = fmul fast float %3746, %3581
  %3753 = fmul fast float %3745, %3581
  %3754 = fmul fast float %3747, %3579
  %3755 = fmul fast float %3746, %3579
  %3756 = fmul fast float %3745, %3580
  %3757 = fadd fast float %3751, %3728
  %3758 = fadd fast float %3757, %3748
  %3759 = fsub fast float %3758, %3752
  %3760 = fsub fast float %3729, %3754
  %3761 = fadd fast float %3760, %3749
  %3762 = fadd fast float %3761, %3753
  %3763 = fadd fast float %3750, %3730
  %3764 = fsub fast float %3763, %3756
  %3765 = fadd fast float %3764, %3755
  br label %3766

; <label>:3766                                    ; preds = %3735, %3727
  %3767 = phi float [ %3759, %3735 ], [ %3728, %3727 ]
  %3768 = phi float [ %3762, %3735 ], [ %3729, %3727 ]
  %3769 = phi float [ %3765, %3735 ], [ %3730, %3727 ]
  br i1 %3608, label %3801, label %3770

; <label>:3770                                    ; preds = %3766
  %3771 = fmul fast float %2075, 0x400187C840000000
  %3772 = fadd fast float %3771, 0xC00EFC2120000000
  %3773 = fmul fast float %3772, %2075
  %3774 = fadd fast float %3773, 0x3FE5D16340000000
  %3775 = fmul fast float %3774, %2075
  %3776 = fadd fast float %3775, 1.000000e+00
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = fsub fast float %3731, %134
  %3779 = fsub fast float %3732, %135
  %3780 = fsub fast float %3733, %136
  %3781 = fsub fast float %3731, %3563
  %3782 = fsub fast float %3732, %3564
  %3783 = fsub fast float %3733, %3565
  %3784 = call float @dx.op.dot3.f32(i32 55, float %3778, float %3779, float %3780, float %3778, float %3779, float %3780)  ; Dot3(ax,ay,az,bx,by,bz)
  %3785 = call float @dx.op.dot3.f32(i32 55, float %3781, float %3782, float %3783, float %3781, float %3782, float %3783)  ; Dot3(ax,ay,az,bx,by,bz)
  %3786 = fadd fast float %3785, 0x3EE4F8B580000000
  %3787 = fdiv fast float %3784, %3786
  %3788 = bitcast float %3787 to i32
  %3789 = ashr i32 %3788, 1
  %3790 = add nsw i32 %3789, 532487669
  %3791 = bitcast i32 %3790 to float
  %3792 = fmul fast float %3791, %3777
  %3793 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3794 = fmul fast float %3793, 0x4009981AE0000000
  %3795 = fsub fast float 0x40111BBD80000000, %3794
  %3796 = fmul fast float %3795, %3793
  %3797 = fadd fast float %3796, 0xC0009F6020000000
  %3798 = fmul fast float %3797, %3793
  %3799 = fadd fast float %3798, 1.000000e+00
  %3800 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  br label %3804

; <label>:3801                                    ; preds = %3766
  %3802 = icmp ne i32 %3609, -1
  %3803 = zext i1 %3802 to i32
  br label %3804

; <label>:3804                                    ; preds = %3801, %3770
  %3805 = phi float [ %2075, %3801 ], [ %3800, %3770 ]
  %3806 = phi i32 [ %3803, %3801 ], [ 0, %3770 ]
  %3807 = fmul float %3805, 5.000000e+00
  %3808 = fsub float 5.000000e+00, %3807
  %3809 = icmp ne i32 %3806, 0
  %3810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3811 = extractvalue %dx.types.CBufRet.f32 %3810, 3
  %3812 = fadd fast float %3811, %3808
  %3813 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3812)  ; FMax(a,b)
  %3814 = call float @dx.op.unary.f32(i32 6, float %3767)  ; FAbs(value)
  %3815 = call float @dx.op.unary.f32(i32 6, float %3768)  ; FAbs(value)
  %3816 = fadd fast float %3815, %3814
  %3817 = call float @dx.op.unary.f32(i32 6, float %3769)  ; FAbs(value)
  %3818 = fadd fast float %3816, %3817
  %3819 = fcmp fast oeq float %3818, 0.000000e+00
  %3820 = fdiv fast float 1.000000e+00, %3818
  %3821 = select i1 %3819, float 1.000000e+00, float %3820
  %3822 = fmul fast float %3821, %3767
  %3823 = fmul fast float %3821, %3768
  %3824 = call float @dx.op.unary.f32(i32 6, float %3823)  ; FAbs(value)
  %3825 = call float @dx.op.unary.f32(i32 6, float %3822)  ; FAbs(value)
  %3826 = fsub fast float 1.000000e+00, %3824
  %3827 = fsub fast float 1.000000e+00, %3825
  %3828 = fcmp fast oge float %3822, 0.000000e+00
  %3829 = fcmp fast oge float %3823, 0.000000e+00
  %3830 = select i1 %3828, float 1.000000e+00, float -1.000000e+00
  %3831 = select i1 %3829, float 1.000000e+00, float -1.000000e+00
  %3832 = fcmp fast ole float %3769, 0.000000e+00
  %3833 = fmul fast float %3830, %3826
  %3834 = fmul fast float %3831, %3827
  %3835 = select i1 %3832, float %3833, float %3822
  %3836 = select i1 %3832, float %3834, float %3823
  %3837 = fmul fast float %3835, 5.000000e-01
  %3838 = fmul fast float %3836, 5.000000e-01
  %3839 = fadd fast float %3837, 5.000000e-01
  %3840 = fadd fast float %3838, 5.000000e-01
  %3841 = uitofp i32 %3606 to float
  %3842 = call float @dx.op.binary.f32(i32 36, float %3813, float 3.000000e+00)  ; FMin(a,b)
  %3843 = fadd fast float %3842, 2.000000e+00
  %3844 = call float @dx.op.unary.f32(i32 21, float %3843)  ; Exp(value)
  %3845 = extractvalue %dx.types.CBufRet.f32 %3810, 1
  %3846 = fmul fast float %3845, %3844
  %3847 = fmul fast float %3846, 2.000000e+00
  %3848 = fsub fast float 1.000000e+00, %3847
  %3849 = fmul fast float %3839, %3848
  %3850 = fmul fast float %3840, %3848
  %3851 = fadd fast float %3849, %3846
  %3852 = fadd fast float %3850, %3846
  %3853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %50, float %3851, float %3852, float %3841, float undef, i32 0, i32 0, i32 undef, float %3813)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.ResRet.f32 %3853, 1
  %3856 = extractvalue %dx.types.ResRet.f32 %3853, 2
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 3
  %3859 = fmul fast float %3858, %3576
  %3860 = call float @dx.op.binary.f32(i32 36, float %3315, float %3859)  ; FMin(a,b)
  %3861 = select i1 %3809, float %3860, float %3859
  %3862 = fmul fast float %3854, %3654
  %3863 = fmul fast float %3862, %3861
  %3864 = fmul fast float %3855, %3654
  %3865 = fmul fast float %3864, %3861
  %3866 = fmul fast float %3856, %3654
  %3867 = fmul fast float %3866, %3861
  %3868 = fadd fast float %3863, %3551
  %3869 = fadd fast float %3865, %3552
  %3870 = fadd fast float %3867, %3553
  %3871 = fsub fast float %3554, %3654
  br label %3656

; <label>:3872                                    ; preds = %3656
  br label %3873

; <label>:3873                                    ; preds = %3872, %3520
  %3874 = phi float [ %3521, %3520 ], [ %3657, %3872 ]
  %3875 = phi float [ %3522, %3520 ], [ %3658, %3872 ]
  %3876 = phi float [ %3523, %3520 ], [ %3659, %3872 ]
  %3877 = phi float [ %3524, %3520 ], [ %3660, %3872 ]
  %3878 = add i32 %3525, 1
  %3879 = icmp ugt i32 %3878, %3517
  br i1 %3879, label %3880, label %3520, !llvm.loop !99

; <label>:3880                                    ; preds = %3873
  br label %3881

; <label>:3881                                    ; preds = %3880, %3502
  %3882 = phi float [ 0.000000e+00, %3502 ], [ %3874, %3880 ]
  %3883 = phi float [ 0.000000e+00, %3502 ], [ %3875, %3880 ]
  %3884 = phi float [ 0.000000e+00, %3502 ], [ %3876, %3880 ]
  %3885 = call float @dx.op.dot3.f32(i32 55, float %3882, float %3883, float %3884, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = select i1 %256, float 0.000000e+00, float %3882
  %3887 = select i1 %256, float %3885, float %3883
  %3888 = select i1 %256, float 0.000000e+00, float %3884
  %3889 = fcmp fast olt float %3455, 0.000000e+00
  %3890 = call float @dx.op.unary.f32(i32 6, float %3455)  ; FAbs(value)
  %3891 = fmul fast float %3890, %3384
  %3892 = fmul fast float %3890, %3385
  %3893 = fmul fast float %3890, %3386
  %3894 = select i1 %3889, float %3384, float %3891
  %3895 = select i1 %3889, float %3385, float %3892
  %3896 = select i1 %3889, float %3386, float %3893
  %3897 = fsub fast float 1.000000e+00, %3890
  %3898 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3899 = fmul fast float %3898, %3886
  %3900 = fmul fast float %3898, %3887
  %3901 = fmul fast float %3898, %3888
  %3902 = fadd fast float %3894, %3899
  %3903 = fadd fast float %3895, %3900
  %3904 = fadd fast float %3896, %3901
  br label %3905

; <label>:3905                                    ; preds = %3881, %3438
  %3906 = phi float [ %3384, %3438 ], [ %3902, %3881 ]
  %3907 = phi float [ %3385, %3438 ], [ %3903, %3881 ]
  %3908 = phi float [ %3386, %3438 ], [ %3904, %3881 ]
  %3909 = call float @dx.op.dot3.f32(i32 55, float %2072, float %2073, float %2074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3910 = fcmp fast ogt float %3909, 0x3E7FF19E20000000
  %3911 = fdiv fast float 1.000000e+00, %3909
  %3912 = select i1 %3910, float %3911, float 0.000000e+00
  %3913 = fmul fast float %3912, %2072
  %3914 = fmul fast float %3912, %2073
  %3915 = fmul fast float %3912, %2074
  %3916 = fadd fast float %3913, -1.000000e+00
  %3917 = fadd fast float %3914, -1.000000e+00
  %3918 = fadd fast float %3915, -1.000000e+00
  %3919 = fmul fast float %3916, 5.000000e-01
  %3920 = fmul fast float %3917, 5.000000e-01
  %3921 = fmul fast float %3918, 5.000000e-01
  %3922 = fadd fast float %3919, 1.000000e+00
  %3923 = fadd fast float %3920, 1.000000e+00
  %3924 = fadd fast float %3921, 1.000000e+00
  %3925 = call float @dx.op.binary.f32(i32 35, float %2079, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3926 = fdiv fast float %1104, %3925
  %3927 = fcmp fast olt float %1793, 1.270000e+02
  %3928 = fcmp fast olt float %1794, 1.270000e+02
  %3929 = fcmp fast olt float %1795, 1.270000e+02
  %3930 = fmul fast float %1793, 0xBFF7154760000000
  %3931 = fmul fast float %3930, %3926
  %3932 = fmul fast float %1794, 0xBFF7154760000000
  %3933 = fmul fast float %3932, %3926
  %3934 = fmul fast float %1795, 0xBFF7154760000000
  %3935 = fmul fast float %3934, %3926
  %3936 = call float @dx.op.unary.f32(i32 21, float %3931)  ; Exp(value)
  %3937 = call float @dx.op.unary.f32(i32 21, float %3933)  ; Exp(value)
  %3938 = call float @dx.op.unary.f32(i32 21, float %3935)  ; Exp(value)
  %3939 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3940 = call float @dx.op.unary.f32(i32 7, float %3937)  ; Saturate(value)
  %3941 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3942 = select i1 %3927, float %3939, float 0.000000e+00
  %3943 = select i1 %3928, float %3940, float 0.000000e+00
  %3944 = select i1 %3929, float %3941, float 0.000000e+00
  %3945 = fmul fast float %3942, %3444
  %3946 = fmul fast float %3943, %3444
  %3947 = fmul fast float %3944, %3444
  %3948 = fadd fast float %3945, -1.000000e+00
  %3949 = fadd fast float %3946, -1.000000e+00
  %3950 = fadd fast float %3947, -1.000000e+00
  %3951 = fmul fast float %3948, %1748
  %3952 = fmul fast float %3949, %1748
  %3953 = fmul fast float %3950, %1748
  %3954 = fmul fast float %3906, %3439
  %3955 = fmul fast float %3907, %3440
  %3956 = fmul fast float %3908, %3441
  %3957 = fsub fast float 1.000000e+00, %2079
  %3958 = bitcast float %3957 to i32
  %3959 = sitofp i32 %3958 to float
  %3960 = fmul fast float %3959, 5.000000e+00
  %3961 = fadd fast float %3960, 0xC1EFBF8940000000
  %3962 = fptosi float %3961 to i32
  %3963 = bitcast i32 %3962 to float
  %3964 = fmul fast float %3963, %1697
  %3965 = fmul fast float %3376, %3964
  %3966 = fmul fast float %3965, %3444
  %3967 = fmul fast float %3966, %3922
  %3968 = fmul fast float %3377, %3964
  %3969 = fmul fast float %3968, %3444
  %3970 = fmul fast float %3969, %3923
  %3971 = fmul fast float %3378, %3964
  %3972 = fmul fast float %3971, %3444
  %3973 = fmul fast float %3972, %3924
  %3974 = fadd fast float %3954, %1702
  %3975 = fadd fast float %3974, %3967
  %3976 = fmul fast float %3975, %1748
  %3977 = fadd fast float %3955, %1703
  %3978 = fadd fast float %3977, %3970
  %3979 = fmul fast float %3978, %1748
  %3980 = fadd fast float %3956, %1704
  %3981 = fadd fast float %3980, %3973
  %3982 = fmul fast float %3981, %1748
  %3983 = fmul fast float %2067, 0x4012D0A400000000
  %3984 = fadd fast float %3953, 1.000000e+00
  %3985 = fadd fast float %3952, 1.000000e+00
  %3986 = fadd fast float %3951, 1.000000e+00
  %3987 = fmul fast float %3444, %3378
  %3988 = fmul fast float %3444, %3377
  %3989 = fmul fast float %3444, %3376
  %3990 = fmul fast float %2094, %1748
  %3991 = fsub fast float 1.000000e+00, %3990
  %3992 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3993 = fsub fast float 1.000000e+00, %3992
  %3994 = fadd fast float %3983, 0x3FDB6377A0000000
  %3995 = fmul fast float %3993, %3994
  %3996 = call float @dx.op.dot3.f32(i32 55, float %1811, float %1812, float %1813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = fadd fast float %3995, %3996
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = call float @dx.op.binary.f32(i32 35, float %3998, float 0x3F847AE140000000)  ; FMax(a,b)
  %4000 = fmul fast float %3999, %3999
  %4001 = fmul fast float %4000, %4000
  %4002 = fmul fast float %4001, 0xC00A935000000000
  %4003 = call float @dx.op.unary.f32(i32 21, float %4002)  ; Exp(value)
  %4004 = fsub fast float 1.000000e+00, %4003
  %4005 = fmul fast float %3986, %3380
  %4006 = fmul fast float %4005, %4004
  %4007 = fmul fast float %3985, %3381
  %4008 = fmul fast float %4007, %4004
  %4009 = fmul fast float %3984, %3382
  %4010 = fmul fast float %4009, %4004
  %4011 = fadd fast float %4006, %3989
  %4012 = fmul fast float %4011, %1748
  %4013 = fadd fast float %4008, %3988
  %4014 = fmul fast float %4013, %1748
  %4015 = fadd fast float %4010, %3987
  %4016 = fmul fast float %4015, %1748
  %4017 = bitcast i32 %2103 to float
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 3
  %4020 = fcmp fast oeq float %4019, 0.000000e+00
  br i1 %4020, label %5623, label %4021

; <label>:4021                                    ; preds = %3905
  %4022 = extractvalue %dx.types.CBufRet.f32 %4018, 0
  %4023 = extractvalue %dx.types.CBufRet.f32 %4018, 1
  %4024 = extractvalue %dx.types.CBufRet.f32 %4018, 2
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.CBufRet.f32 %4025, 2
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.CBufRet.f32 %4029, 1
  %4032 = call float @dx.op.dot3.f32(i32 55, float %4026, float %4027, float %4028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4033 = select i1 %256, float %4030, float %4026
  %4034 = select i1 %256, float %4032, float %4027
  %4035 = select i1 %256, float %4031, float %4028
  %4036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4037 = extractvalue %dx.types.CBufRet.f32 %4036, 2
  %4038 = fmul fast float %4037, %64
  %4039 = fmul fast float %4037, %65
  %4040 = fmul fast float %4037, %66
  %4041 = fadd fast float %4038, %134
  %4042 = fadd fast float %4039, %135
  %4043 = fadd fast float %4040, %136
  %4044 = fcmp fast olt float %4019, 0.000000e+00
  br i1 %4044, label %5140, label %4045

; <label>:4045                                    ; preds = %4021
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.CBufRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.CBufRet.f32 %4046, 2
  %4050 = extractvalue %dx.types.CBufRet.f32 %4046, 3
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4054 = extractvalue %dx.types.CBufRet.f32 %4051, 2
  %4055 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.CBufRet.f32 %4056, 2
  %4060 = extractvalue %dx.types.CBufRet.f32 %4056, 3
  %4061 = fmul fast float %4047, %4041
  %4062 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4048, float %4061)  ; FMad(a,b,c)
  %4063 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4049, float %4062)  ; FMad(a,b,c)
  %4064 = fadd fast float %4063, %4050
  %4065 = fmul fast float %4052, %4041
  %4066 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4053, float %4065)  ; FMad(a,b,c)
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4054, float %4066)  ; FMad(a,b,c)
  %4068 = fadd fast float %4067, %4055
  %4069 = fmul fast float %4057, %4041
  %4070 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4058, float %4069)  ; FMad(a,b,c)
  %4071 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4059, float %4070)  ; FMad(a,b,c)
  %4072 = fadd fast float %4071, %4060
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 0
  %4075 = extractvalue %dx.types.CBufRet.f32 %4073, 1
  %4076 = extractvalue %dx.types.CBufRet.f32 %4073, 3
  %4077 = fmul fast float %4076, %4064
  %4078 = fmul fast float %4076, %4068
  %4079 = fadd fast float %4077, %4074
  %4080 = fadd fast float %4078, %4075
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.CBufRet.f32 %4081, 1
  %4084 = extractvalue %dx.types.CBufRet.f32 %4081, 3
  %4085 = fmul fast float %4084, %4064
  %4086 = fmul fast float %4084, %4068
  %4087 = fadd fast float %4085, %4082
  %4088 = fadd fast float %4086, %4083
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4091 = fsub fast float %4090, %4072
  %4092 = extractvalue %dx.types.CBufRet.f32 %4089, 2
  %4093 = fmul fast float %4091, %4092
  %4094 = fsub fast float 1.000000e+00, %4093
  %4095 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4081, 2
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4099 = fadd fast float %4098, %4096
  %4100 = fcmp fast ogt float %4099, 0.000000e+00
  br i1 %4100, label %4101, label %4125

; <label>:4101                                    ; preds = %4045
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4104 = extractvalue %dx.types.CBufRet.f32 %4102, 1
  %4105 = fsub fast float %4087, %4103
  %4106 = fsub fast float %4088, %4104
  %4107 = fcmp fast olt float %4105, 0.000000e+00
  %4108 = fcmp fast olt float %4106, 0.000000e+00
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4112 = extractvalue %dx.types.CBufRet.f32 %4109, 2
  %4113 = extractvalue %dx.types.CBufRet.f32 %4109, 3
  %4114 = select i1 %4107, float %4110, float %4112
  %4115 = select i1 %4108, float %4111, float %4113
  %4116 = fmul fast float %4114, %4105
  %4117 = fmul fast float %4115, %4106
  %4118 = call float @dx.op.unary.f32(i32 6, float %4116)  ; FAbs(value)
  %4119 = call float @dx.op.unary.f32(i32 6, float %4117)  ; FAbs(value)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4036, 0
  %4121 = call float @dx.op.binary.f32(i32 35, float %4118, float %4119)  ; FMax(a,b)
  %4122 = fsub fast float %4120, %4121
  %4123 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4124 = fmul fast float %4123, %4095
  br label %4125

; <label>:4125                                    ; preds = %4101, %4045
  %4126 = phi float [ %4124, %4101 ], [ 0.000000e+00, %4045 ]
  %4127 = extractvalue %dx.types.CBufRet.f32 %4073, 2
  %4128 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4129 = fadd fast float %4128, %4127
  %4130 = fcmp fast ogt float %4129, 0.000000e+00
  %4131 = extractvalue %dx.types.CBufRet.f32 %4036, 0
  br i1 %4130, label %4132, label %4155

; <label>:4132                                    ; preds = %4125
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = fsub fast float %4079, %4134
  %4137 = fsub fast float %4080, %4135
  %4138 = fcmp fast olt float %4136, 0.000000e+00
  %4139 = fcmp fast olt float %4137, 0.000000e+00
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4143 = extractvalue %dx.types.CBufRet.f32 %4140, 2
  %4144 = extractvalue %dx.types.CBufRet.f32 %4140, 3
  %4145 = select i1 %4138, float %4141, float %4143
  %4146 = select i1 %4139, float %4142, float %4144
  %4147 = fmul fast float %4145, %4136
  %4148 = fmul fast float %4146, %4137
  %4149 = call float @dx.op.unary.f32(i32 6, float %4147)  ; FAbs(value)
  %4150 = call float @dx.op.unary.f32(i32 6, float %4148)  ; FAbs(value)
  %4151 = call float @dx.op.binary.f32(i32 35, float %4149, float %4150)  ; FMax(a,b)
  %4152 = fsub fast float %4131, %4151
  %4153 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4154 = fmul fast float %4153, %4095
  br label %4155

; <label>:4155                                    ; preds = %4132, %4125
  %4156 = phi float [ %4154, %4132 ], [ 0.000000e+00, %4125 ]
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4159 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.CBufRet.f32 %4160, 1
  %4163 = fsub fast float %4064, %4161
  %4164 = fsub fast float %4068, %4162
  %4165 = fcmp fast olt float %4163, 0.000000e+00
  %4166 = fcmp fast olt float %4164, 0.000000e+00
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.CBufRet.f32 %4167, 2
  %4171 = extractvalue %dx.types.CBufRet.f32 %4167, 3
  %4172 = select i1 %4165, float %4168, float %4170
  %4173 = select i1 %4166, float %4169, float %4171
  %4174 = fmul fast float %4172, %4163
  %4175 = fmul fast float %4173, %4164
  %4176 = call float @dx.op.unary.f32(i32 6, float %4174)  ; FAbs(value)
  %4177 = call float @dx.op.unary.f32(i32 6, float %4175)  ; FAbs(value)
  %4178 = call float @dx.op.binary.f32(i32 35, float %4176, float %4177)  ; FMax(a,b)
  %4179 = fsub fast float %4131, %4178
  %4180 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4181 = call float @dx.op.binary.f32(i32 36, float %4180, float %4159)  ; FMin(a,b)
  %4182 = fmul fast float %4181, %4095
  %4183 = fsub fast float %4156, %4182
  %4184 = fsub fast float %4126, %4156
  %4185 = fsub fast float %4184, %4182
  %4186 = call float @dx.op.binary.f32(i32 35, float %4156, float %4126)  ; FMax(a,b)
  %4187 = call float @dx.op.binary.f32(i32 35, float %4182, float %4186)  ; FMax(a,b)
  %4188 = fcmp fast olt float %4187, 1.000000e+00
  br i1 %4188, label %4189, label %4587, !dx.controlflow.hints !101

; <label>:4189                                    ; preds = %4155
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 0
  %4192 = fcmp fast une float %4191, 0.000000e+00
  br i1 %4192, label %4193, label %4587, !dx.controlflow.hints !102

; <label>:4193                                    ; preds = %4189
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.CBufRet.f32 %4194, 1
  %4197 = extractvalue %dx.types.CBufRet.f32 %4194, 2
  %4198 = extractvalue %dx.types.CBufRet.f32 %4194, 3
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.CBufRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.CBufRet.f32 %4199, 2
  %4203 = extractvalue %dx.types.CBufRet.f32 %4199, 3
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.CBufRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.CBufRet.f32 %4204, 2
  %4208 = extractvalue %dx.types.CBufRet.f32 %4204, 3
  %4209 = fmul fast float %4195, %4041
  %4210 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4196, float %4209)  ; FMad(a,b,c)
  %4211 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4197, float %4210)  ; FMad(a,b,c)
  %4212 = fadd fast float %4211, %4198
  %4213 = fmul fast float %4200, %4041
  %4214 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4201, float %4213)  ; FMad(a,b,c)
  %4215 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4202, float %4214)  ; FMad(a,b,c)
  %4216 = fadd fast float %4215, %4203
  %4217 = fmul fast float %4205, %4041
  %4218 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4206, float %4217)  ; FMad(a,b,c)
  %4219 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %4207, float %4218)  ; FMad(a,b,c)
  %4220 = fadd fast float %4219, %4208
  %4221 = fcmp fast oge float %4212, 1.000000e+00
  %4222 = fcmp fast oge float %4216, 1.000000e+00
  %4223 = or i1 %4221, %4222
  %4224 = fcmp fast olt float %4212, 0.000000e+00
  %4225 = fcmp fast olt float %4216, 0.000000e+00
  %4226 = or i1 %4224, %4225
  %4227 = or i1 %4223, %4226
  br i1 %4227, label %4587, label %4228, !dx.controlflow.hints !103

; <label>:4228                                    ; preds = %4193
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4232 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.i32 %4233, 2
  %4235 = uitofp i32 %4234 to float
  %4236 = extractvalue %dx.types.CBufRet.i32 %4233, 3
  %4237 = uitofp i32 %4236 to float
  %4238 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4239 = fmul fast float %4238, 2.000000e+00
  %4240 = fsub fast float %4212, %4230
  %4241 = fsub fast float %4216, %4231
  %4242 = fmul fast float %4239, %4240
  %4243 = fmul fast float %4239, %4241
  %4244 = fdiv fast float 1.000000e+00, %4024
  %4245 = fmul fast float %4243, %4244
  %4246 = call float @dx.op.unary.f32(i32 6, float %4245)  ; FAbs(value)
  %4247 = fmul fast float %4232, %4043
  %4248 = fmul fast float %4247, %4239
  %4249 = call float @dx.op.unary.f32(i32 6, float %4248)  ; FAbs(value)
  %4250 = call float @dx.op.unary.f32(i32 6, float %4242)  ; FAbs(value)
  %4251 = call float @dx.op.binary.f32(i32 35, float %4249, float %4246)  ; FMax(a,b)
  %4252 = call float @dx.op.binary.f32(i32 35, float %4250, float %4251)  ; FMax(a,b)
  %4253 = fmul fast float %4252, 2.000000e+00
  %4254 = call float @dx.op.unary.f32(i32 23, float %4253)  ; Log(value)
  %4255 = call float @dx.op.binary.f32(i32 35, float %4254, float %4235)  ; FMax(a,b)
  %4256 = call float @dx.op.unary.f32(i32 22, float %4255)  ; Frc(value)
  %4257 = fadd fast float %4256, 0xBFEA666660000000
  %4258 = fmul fast float %4257, 8.000000e+00
  %4259 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4260 = call float @dx.op.unary.f32(i32 27, float %4255)  ; Round_ni(value)
  %4261 = fadd fast float %4260, %4259
  %4262 = call float @dx.op.binary.f32(i32 36, float %4261, float %4237)  ; FMin(a,b)
  %4263 = call float @dx.op.unary.f32(i32 27, float %4262)  ; Round_ni(value)
  %4264 = fsub fast float -0.000000e+00, %4263
  %4265 = call float @dx.op.unary.f32(i32 21, float %4264)  ; Exp(value)
  %4266 = fmul fast float %4265, %4239
  %4267 = fmul fast float %4266, %4212
  %4268 = fmul fast float %4266, %4216
  %4269 = fmul fast float %4267, 2.500000e-01
  %4270 = fmul fast float %4268, 2.500000e-01
  %4271 = fadd fast float %4269, 5.000000e-01
  %4272 = fadd fast float %4270, 5.000000e-01
  %4273 = fsub fast float %4237, %4235
  %4274 = fptoui float %4273 to i32
  %4275 = add i32 %4274, 320
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %4275)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 0
  %4278 = extractvalue %dx.types.CBufRet.f32 %4276, 1
  %4279 = fcmp fast une float %4262, %4237
  %4280 = fsub fast float %4212, %4277
  %4281 = fsub fast float %4216, %4278
  %4282 = call float @dx.op.unary.f32(i32 6, float %4280)  ; FAbs(value)
  %4283 = call float @dx.op.unary.f32(i32 6, float %4281)  ; FAbs(value)
  %4284 = fmul fast float %4282, %4266
  %4285 = fmul fast float %4283, %4266
  %4286 = fcmp fast olt float %4284, 1.000000e+00
  %4287 = fcmp fast olt float %4285, 1.000000e+00
  %4288 = and i1 %4286, %4287
  %4289 = or i1 %4279, %4288
  br i1 %4289, label %4290, label %4587, !dx.controlflow.hints !104

; <label>:4290                                    ; preds = %4228
  %4291 = fmul fast float %4268, 5.000000e-01
  %4292 = fmul fast float %4267, 5.000000e-01
  %4293 = fadd fast float %4291, 5.000000e-01
  %4294 = fadd fast float %4292, 5.000000e-01
  %4295 = sitofp i32 %4234 to float
  %4296 = fsub fast float %4262, %4295
  %4297 = call float @dx.op.unary.f32(i32 27, float %4296)  ; Round_ni(value)
  %4298 = call float @dx.op.unary.f32(i32 22, float %4262)  ; Frc(value)
  %4299 = call float @dx.op.unary.f32(i32 22, float %4294)  ; Frc(value)
  %4300 = call float @dx.op.unary.f32(i32 22, float %4293)  ; Frc(value)
  %4301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %51, float %4299, float %4300, float %4297, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4302 = extractvalue %dx.types.ResRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.ResRet.f32 %4301, 1
  %4304 = extractvalue %dx.types.ResRet.f32 %4301, 2
  %4305 = extractvalue %dx.types.ResRet.f32 %4301, 3
  %4306 = fcmp fast ogt float %4298, 0.000000e+00
  br i1 %4306, label %4307, label %4328, !dx.controlflow.hints !105

; <label>:4307                                    ; preds = %4290
  %4308 = fadd fast float %4297, 1.000000e+00
  %4309 = call float @dx.op.unary.f32(i32 22, float %4271)  ; Frc(value)
  %4310 = call float @dx.op.unary.f32(i32 22, float %4272)  ; Frc(value)
  %4311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %51, float %4309, float %4310, float %4308, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4312 = extractvalue %dx.types.ResRet.f32 %4311, 0
  %4313 = extractvalue %dx.types.ResRet.f32 %4311, 1
  %4314 = extractvalue %dx.types.ResRet.f32 %4311, 2
  %4315 = extractvalue %dx.types.ResRet.f32 %4311, 3
  %4316 = fsub fast float %4312, %4302
  %4317 = fsub fast float %4313, %4303
  %4318 = fsub fast float %4314, %4304
  %4319 = fsub fast float %4315, %4305
  %4320 = fmul fast float %4316, %4298
  %4321 = fmul fast float %4317, %4298
  %4322 = fmul fast float %4318, %4298
  %4323 = fmul fast float %4319, %4298
  %4324 = fadd fast float %4320, %4302
  %4325 = fadd fast float %4321, %4303
  %4326 = fadd fast float %4322, %4304
  %4327 = fadd fast float %4323, %4305
  br label %4328

; <label>:4328                                    ; preds = %4307, %4290
  %4329 = phi float [ %4324, %4307 ], [ %4302, %4290 ]
  %4330 = phi float [ %4325, %4307 ], [ %4303, %4290 ]
  %4331 = phi float [ %4326, %4307 ], [ %4304, %4290 ]
  %4332 = phi float [ %4327, %4307 ], [ %4305, %4290 ]
  %4333 = fadd fast float %4329, -5.000000e-01
  %4334 = fadd fast float %4331, -5.000000e-01
  %4335 = fmul fast float %4333, 0xBFD5555560000000
  %4336 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4334, float %4335)  ; FMad(a,b,c)
  %4337 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4330, float 0.000000e+00)  ; FMad(a,b,c)
  %4338 = fadd fast float %4337, %4332
  %4339 = fmul fast float %4333, -7.500000e-01
  %4340 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4334, float %4339)  ; FMad(a,b,c)
  %4341 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4330, float 0.000000e+00)  ; FMad(a,b,c)
  %4342 = fadd fast float %4341, %4332
  %4343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.f32 %4343, 0
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.CBufRet.f32 %4345, 1
  %4348 = extractvalue %dx.types.CBufRet.f32 %4345, 2
  %4349 = extractvalue %dx.types.CBufRet.f32 %4345, 3
  %4350 = fsub fast float %4346, %4336
  %4351 = fsub fast float %4347, %4338
  %4352 = fsub fast float %4348, %4340
  %4353 = fsub fast float %4349, %4342
  %4354 = fmul fast float %4350, %4344
  %4355 = fmul fast float %4351, %4344
  %4356 = fmul fast float %4352, %4344
  %4357 = fmul fast float %4353, %4344
  %4358 = fadd fast float %4354, %4336
  %4359 = fadd fast float %4355, %4338
  %4360 = fadd fast float %4356, %4340
  %4361 = fadd fast float %4357, %4342
  %4362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.i32 %4362, 0
  %4364 = and i32 %4363, 536870911
  %4365 = uitofp i32 %4364 to float
  %4366 = fmul fast float %4365, %4212
  %4367 = fmul fast float %4365, %4216
  %4368 = fptoui float %4366 to i32
  %4369 = fptoui float %4367 to i32
  %4370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4371 = extractvalue %dx.types.ResRet.i32 %4370, 0
  %4372 = and i32 %4371, 31
  %4373 = lshr i32 %4368, %4372
  %4374 = lshr i32 %4369, %4372
  %4375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.i32 %4375, 0
  %4377 = and i32 %4376, 31
  %4378 = shl i32 1, %4377
  %4379 = call i32 @dx.op.binary.i32(i32 40, i32 %4378, i32 4)  ; UMin(a,b)
  %4380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4381 = extractvalue %dx.types.ResRet.i32 %4380, 0
  %4382 = extractvalue %dx.types.ResRet.i32 %4380, 1
  %4383 = icmp eq i32 %4379, 0
  br i1 %4383, label %4425, label %4384

; <label>:4384                                    ; preds = %4328
  br label %4385

; <label>:4385                                    ; preds = %4413, %4384
  %4386 = phi i32 [ %4416, %4413 ], [ 0, %4384 ]
  %4387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.i32 %4387, 0
  %4389 = lshr i32 %4388, 16
  %4390 = and i32 %4389, 31
  %4391 = shl i32 %4374, %4390
  %4392 = add i32 %4391, %4373
  %4393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4394 = extractvalue %dx.types.ResRet.i32 %4393, 0
  %4395 = and i32 %4394, 31
  %4396 = shl i32 %4392, %4395
  %4397 = add i32 %4396, %4386
  %4398 = shl i32 %4397, 2
  %4399 = add i32 %4398, 32
  %4400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.i32 %4400, 0
  %4402 = icmp slt i32 %4401, 0
  %4403 = getelementptr [12 x float], [12 x float]* %76, i32 0, i32 %4386
  %4404 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %4386
  %4405 = bitcast float* %4403 to i32*
  %4406 = bitcast float* %4404 to i32*
  br i1 %4402, label %4407, label %4413

; <label>:4407                                    ; preds = %4385
  %4408 = and i32 %4401, 1073741823
  %4409 = add nuw nsw i32 %4408, 20
  %4410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4409, i32 undef)  ; BufferLoad(srv,index,wot)
  %4411 = extractvalue %dx.types.ResRet.i32 %4410, 0
  %4412 = extractvalue %dx.types.ResRet.i32 %4410, 1
  br label %4413

; <label>:4413                                    ; preds = %4407, %4385
  %4414 = phi i32 [ %4411, %4407 ], [ %4381, %4385 ]
  %4415 = phi i32 [ %4412, %4407 ], [ %4382, %4385 ]
  store i32 %4414, i32* %4405, align 4
  store i32 %4415, i32* %4406, align 4
  %4416 = add nuw i32 %4386, 1
  %4417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.i32 %4417, 2
  %4419 = icmp eq i32 %4418, 0
  %4420 = icmp ugt i32 %4401, -1073741825
  %4421 = and i1 %4420, %4419
  %4422 = icmp ult i32 %4416, %4379
  %4423 = and i1 %4421, %4422
  br i1 %4423, label %4385, label %4424

; <label>:4424                                    ; preds = %4413
  br label %4425

; <label>:4425                                    ; preds = %4424, %4328
  %4426 = phi i32 [ 0, %4328 ], [ %4416, %4424 ]
  %4427 = extractvalue %dx.types.CBufRet.f32 %4190, 2
  %4428 = fptoui float %4427 to i32
  %4429 = icmp eq i32 %4428, 0
  br i1 %4429, label %4481, label %4430

; <label>:4430                                    ; preds = %4425
  br label %4431

; <label>:4431                                    ; preds = %4476, %4430
  %4432 = phi i32 [ %4477, %4476 ], [ %4426, %4430 ]
  %4433 = phi i32 [ %4478, %4476 ], [ 0, %4430 ]
  %4434 = lshr i32 %4433, 2
  %4435 = and i32 %4433, 3
  %4436 = add nuw nsw i32 %4434, 83
  %4437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 %4436)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.i32 %4437, 0
  %4439 = extractvalue %dx.types.CBufRet.i32 %4437, 1
  %4440 = extractvalue %dx.types.CBufRet.i32 %4437, 2
  %4441 = extractvalue %dx.types.CBufRet.i32 %4437, 3
  %4442 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 0
  store i32 %4438, i32* %4442, align 4
  %4443 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 1
  store i32 %4439, i32* %4443, align 4
  %4444 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 2
  store i32 %4440, i32* %4444, align 4
  %4445 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 3
  store i32 %4441, i32* %4445, align 4
  %4446 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 %4435
  %4447 = load i32, i32* %4446, align 4, !tbaa !106, !noalias !110
  %4448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.i32 %4448, 0
  %4450 = lshr i32 %4449, 16
  %4451 = and i32 %4450, 31
  %4452 = shl i32 %4374, %4451
  %4453 = add i32 %4452, %4373
  %4454 = shl i32 %4453, 2
  %4455 = add i32 %4454, %4447
  %4456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4455, i32 undef)  ; BufferLoad(srv,index,wot)
  %4457 = extractvalue %dx.types.ResRet.i32 %4456, 0
  %4458 = icmp eq i32 %4457, 0
  br i1 %4458, label %4476, label %4459

; <label>:4459                                    ; preds = %4431
  %4460 = icmp slt i32 %4457, 0
  %4461 = getelementptr [12 x float], [12 x float]* %76, i32 0, i32 %4432
  %4462 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %4432
  %4463 = bitcast float* %4461 to i32*
  %4464 = bitcast float* %4462 to i32*
  br i1 %4460, label %4465, label %4472

; <label>:4465                                    ; preds = %4459
  %4466 = and i32 %4457, 1073741823
  %4467 = add i32 %4447, 20
  %4468 = add i32 %4467, %4466
  %4469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4468, i32 undef)  ; BufferLoad(srv,index,wot)
  %4470 = extractvalue %dx.types.ResRet.i32 %4469, 0
  %4471 = extractvalue %dx.types.ResRet.i32 %4469, 1
  br label %4472

; <label>:4472                                    ; preds = %4465, %4459
  %4473 = phi i32 [ %4470, %4465 ], [ %4381, %4459 ]
  %4474 = phi i32 [ %4471, %4465 ], [ %4382, %4459 ]
  store i32 %4473, i32* %4463, align 4
  store i32 %4474, i32* %4464, align 4
  %4475 = add i32 %4432, 1
  br label %4476

; <label>:4476                                    ; preds = %4472, %4431
  %4477 = phi i32 [ %4432, %4431 ], [ %4475, %4472 ]
  %4478 = add nuw i32 %4433, 1
  %4479 = icmp eq i32 %4478, %4428
  br i1 %4479, label %4480, label %4431

; <label>:4480                                    ; preds = %4476
  br label %4481

; <label>:4481                                    ; preds = %4480, %4425
  %4482 = phi i32 [ %4426, %4425 ], [ %4477, %4480 ]
  %4483 = icmp eq i32 %4482, 1
  %4484 = getelementptr [12 x float], [12 x float]* %76, i32 0, i32 0
  %4485 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 0
  br i1 %4483, label %4486, label %4489

; <label>:4486                                    ; preds = %4481
  %4487 = load float, float* %4484, align 4
  %4488 = load float, float* %4485, align 4
  br label %4516

; <label>:4489                                    ; preds = %4481
  %4490 = load float, float* %4484, align 4
  %4491 = load float, float* %4485, align 4
  %4492 = fdiv fast float 1.000000e+00, %4491
  %4493 = fsub fast float %4490, %4492
  %4494 = icmp ugt i32 %4482, 1
  br i1 %4494, label %4495, label %4511

; <label>:4495                                    ; preds = %4489
  br label %4496

; <label>:4496                                    ; preds = %4496, %4495
  %4497 = phi float [ %4506, %4496 ], [ %4493, %4495 ]
  %4498 = phi float [ %4507, %4496 ], [ %4490, %4495 ]
  %4499 = phi i32 [ %4508, %4496 ], [ 1, %4495 ]
  %4500 = getelementptr [12 x float], [12 x float]* %76, i32 0, i32 %4499
  %4501 = load float, float* %4500, align 4
  %4502 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %4499
  %4503 = load float, float* %4502, align 4
  %4504 = fdiv fast float 1.000000e+00, %4503
  %4505 = fsub fast float %4501, %4504
  %4506 = call float @dx.op.binary.f32(i32 36, float %4497, float %4505)  ; FMin(a,b)
  %4507 = call float @dx.op.binary.f32(i32 35, float %4498, float %4501)  ; FMax(a,b)
  %4508 = add nuw i32 %4499, 1
  %4509 = icmp eq i32 %4508, %4482
  br i1 %4509, label %4510, label %4496

; <label>:4510                                    ; preds = %4496
  br label %4511

; <label>:4511                                    ; preds = %4510, %4489
  %4512 = phi float [ %4493, %4489 ], [ %4506, %4510 ]
  %4513 = phi float [ %4490, %4489 ], [ %4507, %4510 ]
  %4514 = fsub fast float %4513, %4512
  %4515 = fdiv fast float 1.000000e+00, %4514
  br label %4516

; <label>:4516                                    ; preds = %4511, %4486
  %4517 = phi float [ %4487, %4486 ], [ %4513, %4511 ]
  %4518 = phi float [ %4488, %4486 ], [ %4515, %4511 ]
  %4519 = fadd fast float %4220, %4517
  %4520 = fmul fast float %4519, %4518
  %4521 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4522 = fmul fast float %4521, 2.000000e+00
  %4523 = fsub fast float 1.000000e+00, %4522
  %4524 = fmul fast float %4358, %4358
  %4525 = fsub fast float %4359, %4524
  %4526 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4525)  ; FMax(a,b)
  %4527 = fdiv fast float 1.000000e+00, %4526
  %4528 = fmul fast float %4359, %4358
  %4529 = fsub fast float %4360, %4528
  %4530 = fsub fast float %4523, %4358
  %4531 = fmul fast float %4523, %4523
  %4532 = fsub fast float %4531, %4359
  %4533 = fmul fast float %4527, %4529
  %4534 = fmul fast float %4533, %4530
  %4535 = fsub fast float %4532, %4534
  %4536 = fmul fast float %4359, %4359
  %4537 = fsub fast float %4361, %4536
  %4538 = fmul fast float %4529, %4529
  %4539 = fmul fast float %4538, %4527
  %4540 = fsub fast float %4537, %4539
  %4541 = fdiv fast float %4535, %4540
  %4542 = fmul fast float %4541, %4529
  %4543 = fsub fast float %4530, %4542
  %4544 = fmul fast float %4543, %4527
  %4545 = fmul fast float %4544, %4358
  %4546 = fsub fast float 1.000000e+00, %4545
  %4547 = fmul fast float %4541, %4359
  %4548 = fsub fast float %4546, %4547
  %4549 = fmul fast float %4544, %4544
  %4550 = fmul fast float %4541, 4.000000e+00
  %4551 = fmul fast float %4550, %4548
  %4552 = fsub fast float %4549, %4551
  %4553 = call float @dx.op.unary.f32(i32 24, float %4552)  ; Sqrt(value)
  %4554 = fcmp fast oge float %4544, 0.000000e+00
  %4555 = fsub fast float -0.000000e+00, %4553
  %4556 = select i1 %4554, float %4555, float %4553
  %4557 = fsub fast float %4556, %4544
  %4558 = fdiv fast float %4557, %4541
  %4559 = fdiv fast float %4548, %4557
  %4560 = fmul fast float %4558, 5.000000e-01
  %4561 = fmul fast float %4559, 2.000000e+00
  %4562 = select i1 %4554, float %4560, float %4561
  %4563 = select i1 %4554, float %4561, float %4560
  %4564 = call float @dx.op.binary.f32(i32 35, float %4562, float %4563)  ; FMax(a,b)
  %4565 = call float @dx.op.binary.f32(i32 36, float %4562, float %4563)  ; FMin(a,b)
  %4566 = fcmp fast ogt float %4523, %4564
  %4567 = fsub fast float %4523, %4565
  %4568 = fsub fast float %4523, %4564
  %4569 = fsub fast float %4564, %4565
  %4570 = select i1 %4566, float %4568, float %4569
  %4571 = fmul float %4567, %4570
  %4572 = select i1 %4566, float %4565, float %4523
  %4573 = fcmp fast ogt float %4523, %4565
  %4574 = fmul fast float %4572, %4564
  %4575 = fadd fast float %4572, %4564
  %4576 = fmul fast float %4575, %4358
  %4577 = fadd fast float %4574, %4359
  %4578 = fsub fast float %4577, %4576
  %4579 = fdiv fast float %4578, %4571
  %4580 = select i1 %4573, float %4579, float 0.000000e+00
  %4581 = fsub fast float 1.000000e+00, %4580
  %4582 = select i1 %4566, float %4581, float %4580
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4343, 3
  %4585 = fmul fast float %4584, %4583
  %4586 = fsub fast float 1.000000e+00, %4585
  br label %4587

; <label>:4587                                    ; preds = %4516, %4228, %4193, %4189, %4155
  %4588 = phi float [ 1.000000e+00, %4155 ], [ %4586, %4516 ], [ 1.000000e+00, %4193 ], [ 1.000000e+00, %4228 ], [ 1.000000e+00, %4189 ]
  %4589 = fcmp fast ogt float %4185, 0.000000e+00
  br i1 %4589, label %4590, label %4752, !dx.controlflow.hints !119

; <label>:4590                                    ; preds = %4587
  %4591 = fadd fast float %4098, %4072
  %4592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4593 = extractvalue %dx.types.CBufRet.f32 %4592, 2
  %4594 = extractvalue %dx.types.CBufRet.f32 %4592, 3
  %4595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.f32 %4595, 2
  %4597 = call float @dx.op.binary.f32(i32 35, float %4591, float 0.000000e+00)  ; FMax(a,b)
  %4598 = fadd fast float %4597, 0x3F10000000000000
  %4599 = fcmp fast oeq float %4596, 0.000000e+00
  br i1 %4599, label %4600, label %4667

; <label>:4600                                    ; preds = %4590
  %4601 = extractvalue %dx.types.CBufRet.f32 %4592, 1
  %4602 = extractvalue %dx.types.CBufRet.f32 %4592, 0
  %4603 = fmul fast float %4602, %4087
  %4604 = fmul fast float %4601, %4088
  %4605 = fadd fast float %4603, 5.000000e-01
  %4606 = call float @dx.op.unary.f32(i32 27, float %4605)  ; Round_ni(value)
  %4607 = fadd fast float %4604, 5.000000e-01
  %4608 = call float @dx.op.unary.f32(i32 27, float %4607)  ; Round_ni(value)
  %4609 = fsub fast float %4605, %4606
  %4610 = fsub fast float %4607, %4608
  %4611 = fadd fast float %4606, -5.000000e-01
  %4612 = fadd fast float %4608, -5.000000e-01
  %4613 = fmul fast float %4609, 2.000000e+00
  %4614 = fsub fast float 3.000000e+00, %4613
  %4615 = fadd fast float %4613, 1.000000e+00
  %4616 = fsub fast float 2.000000e+00, %4609
  %4617 = bitcast float %4614 to i32
  %4618 = sub nsw i32 2129859010, %4617
  %4619 = bitcast i32 %4618 to float
  %4620 = fmul fast float %4619, %4616
  %4621 = fadd fast float %4620, -1.000000e+00
  %4622 = bitcast float %4615 to i32
  %4623 = sub nsw i32 2129859010, %4622
  %4624 = bitcast i32 %4623 to float
  %4625 = fmul fast float %4624, %4609
  %4626 = fadd fast float %4625, 1.000000e+00
  %4627 = fmul fast float %4610, 2.000000e+00
  %4628 = fsub fast float 3.000000e+00, %4627
  %4629 = fadd fast float %4627, 1.000000e+00
  %4630 = fsub fast float 2.000000e+00, %4610
  %4631 = bitcast float %4628 to i32
  %4632 = sub nsw i32 2129859010, %4631
  %4633 = bitcast i32 %4632 to float
  %4634 = fmul fast float %4633, %4630
  %4635 = fadd fast float %4634, -1.000000e+00
  %4636 = bitcast float %4629 to i32
  %4637 = sub nsw i32 2129859010, %4636
  %4638 = bitcast i32 %4637 to float
  %4639 = fmul fast float %4638, %4610
  %4640 = fadd fast float %4639, 1.000000e+00
  %4641 = fadd fast float %4621, %4611
  %4642 = fmul fast float %4641, %4593
  %4643 = fadd fast float %4635, %4612
  %4644 = fmul fast float %4643, %4594
  %4645 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %54, float %4642, float %4644, float undef, float undef, i32 0, i32 0, i32 undef, float %4598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = fmul fast float %4646, %4614
  %4648 = fadd fast float %4626, %4611
  %4649 = fmul fast float %4648, %4593
  %4650 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %54, float %4649, float %4644, float undef, float undef, i32 0, i32 0, i32 undef, float %4598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = fmul fast float %4651, %4615
  %4653 = fadd fast float %4640, %4612
  %4654 = fmul fast float %4653, %4594
  %4655 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %54, float %4642, float %4654, float undef, float undef, i32 0, i32 0, i32 undef, float %4598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = fmul fast float %4656, %4614
  %4658 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %54, float %4649, float %4654, float undef, float undef, i32 0, i32 0, i32 undef, float %4598)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = fmul fast float %4659, %4615
  %4661 = fadd fast float %4660, %4657
  %4662 = fmul fast float %4661, %4629
  %4663 = fadd fast float %4652, %4647
  %4664 = fmul fast float %4663, %4628
  %4665 = fadd fast float %4664, %4662
  %4666 = fmul fast float %4665, 6.250000e-02
  br label %4752

; <label>:4667                                    ; preds = %4590
  %4668 = fmul fast float %267, 0x401921FB60000000
  %4669 = call float @dx.op.unary.f32(i32 13, float %4668)  ; Sin(value)
  %4670 = call float @dx.op.unary.f32(i32 12, float %4668)  ; Cos(value)
  %4671 = fsub fast float -0.000000e+00, %4669
  br label %4672

; <label>:4672                                    ; preds = %4721, %4667
  %4673 = phi float [ 0.000000e+00, %4667 ], [ %4716, %4721 ]
  %4674 = phi float [ 0.000000e+00, %4667 ], [ %4718, %4721 ]
  %4675 = phi i32 [ 0, %4667 ], [ %4722, %4721 ]
  %4676 = mul i32 %4675, 2
  %4677 = add i32 0, %4676
  %4678 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4677
  %4679 = load float, float* %4678, align 4
  %4680 = mul i32 %4675, 2
  %4681 = add i32 1, %4680
  %4682 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4681
  %4683 = load float, float* %4682, align 4
  %4684 = fmul fast float %4679, %4670
  %4685 = call float @dx.op.tertiary.f32(i32 46, float %4683, float %4671, float %4684)  ; FMad(a,b,c)
  %4686 = fmul fast float %4679, %4669
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4683, float %4670, float %4686)  ; FMad(a,b,c)
  %4688 = fmul fast float %4685, %4596
  %4689 = fmul fast float %4687, %4596
  %4690 = fadd fast float %4688, %4087
  %4691 = fadd fast float %4689, %4088
  %4692 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %53, float %4690, float %4691, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = extractvalue %dx.types.ResRet.f32 %4692, 1
  %4695 = extractvalue %dx.types.ResRet.f32 %4692, 2
  %4696 = extractvalue %dx.types.ResRet.f32 %4692, 3
  %4697 = getelementptr inbounds [4 x float], [4 x float]* %80, i32 0, i32 0
  store float %4693, float* %4697, align 4
  %4698 = getelementptr inbounds [4 x float], [4 x float]* %80, i32 0, i32 1
  store float %4694, float* %4698, align 4
  %4699 = getelementptr inbounds [4 x float], [4 x float]* %80, i32 0, i32 2
  store float %4695, float* %4699, align 4
  %4700 = getelementptr inbounds [4 x float], [4 x float]* %80, i32 0, i32 3
  store float %4696, float* %4700, align 4
  %4701 = fsub fast float %4693, %4598
  %4702 = fcmp fast olt float %4701, 0.000000e+00
  %4703 = select i1 %4702, float 0.000000e+00, float 1.000000e+00
  %4704 = fadd fast float %4703, %4673
  %4705 = fmul fast float %4703, %4701
  %4706 = fadd fast float %4705, %4674
  br label %4707

; <label>:4707                                    ; preds = %4707, %4672
  %4708 = phi i32 [ 1, %4672 ], [ %4719, %4707 ]
  %4709 = phi float [ %4706, %4672 ], [ %4718, %4707 ]
  %4710 = phi float [ %4704, %4672 ], [ %4716, %4707 ]
  %4711 = getelementptr [4 x float], [4 x float]* %80, i32 0, i32 %4708
  %4712 = load float, float* %4711, align 4, !tbaa !120, !noalias !110
  %4713 = fsub fast float %4712, %4598
  %4714 = fcmp fast olt float %4713, 0.000000e+00
  %4715 = select i1 %4714, float 0.000000e+00, float 1.000000e+00
  %4716 = fadd fast float %4715, %4710
  %4717 = fmul fast float %4715, %4713
  %4718 = fadd fast float %4717, %4709
  %4719 = add nuw nsw i32 %4708, 1
  %4720 = icmp eq i32 %4719, 4
  br i1 %4720, label %4721, label %4707, !llvm.loop !122

; <label>:4721                                    ; preds = %4707
  %4722 = add nuw nsw i32 %4675, 1
  %4723 = icmp eq i32 %4722, 8
  br i1 %4723, label %4724, label %4672, !llvm.loop !123

; <label>:4724                                    ; preds = %4721
  %4725 = fdiv fast float 1.000000e+00, %4716
  %4726 = fmul fast float %4725, %4718
  %4727 = fdiv fast float 1.000000e+00, %4598
  %4728 = fmul fast float %4726, %4727
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = call float @dx.op.binary.f32(i32 35, float %4729, float 0.000000e+00)  ; FMax(a,b)
  %4731 = fmul fast float %4716, 3.125000e-02
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fmul fast float %4732, 2.000000e+00
  %4734 = fadd fast float %4733, -1.000000e+00
  %4735 = fcmp fast ogt float %4734, 0.000000e+00
  %4736 = fcmp fast olt float %4734, 0.000000e+00
  %4737 = zext i1 %4735 to i32
  %4738 = zext i1 %4736 to i32
  %4739 = sub nsw i32 %4737, %4738
  %4740 = sitofp i32 %4739 to float
  %4741 = fmul fast float %4740, %4734
  %4742 = fsub fast float 1.000000e+00, %4741
  %4743 = fmul fast float %4742, %4742
  %4744 = fmul fast float %4743, %4742
  %4745 = fsub fast float %4742, %4744
  %4746 = fmul fast float %4745, %4730
  %4747 = fsub fast float 1.000000e+00, %4744
  %4748 = fsub fast float %4747, %4746
  %4749 = fmul fast float %4740, 5.000000e-01
  %4750 = fmul fast float %4749, %4748
  %4751 = fsub fast float 5.000000e-01, %4750
  br label %4752

; <label>:4752                                    ; preds = %4724, %4600, %4587
  %4753 = phi float [ 1.000000e+00, %4587 ], [ %4666, %4600 ], [ %4751, %4724 ]
  %4754 = fcmp fast ogt float %4183, 0.000000e+00
  br i1 %4754, label %4755, label %4919, !dx.controlflow.hints !124

; <label>:4755                                    ; preds = %4752
  %4756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.f32 %4756, 1
  %4758 = fadd fast float %4757, %4072
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 2
  %4761 = extractvalue %dx.types.CBufRet.f32 %4759, 3
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4764 = call float @dx.op.binary.f32(i32 35, float %4758, float 0.000000e+00)  ; FMax(a,b)
  %4765 = fadd fast float %4764, 0x3F10000000000000
  %4766 = fcmp fast oeq float %4763, 0.000000e+00
  br i1 %4766, label %4767, label %4834

; <label>:4767                                    ; preds = %4755
  %4768 = extractvalue %dx.types.CBufRet.f32 %4759, 1
  %4769 = extractvalue %dx.types.CBufRet.f32 %4759, 0
  %4770 = fmul fast float %4769, %4079
  %4771 = fmul fast float %4768, %4080
  %4772 = fadd fast float %4770, 5.000000e-01
  %4773 = call float @dx.op.unary.f32(i32 27, float %4772)  ; Round_ni(value)
  %4774 = fadd fast float %4771, 5.000000e-01
  %4775 = call float @dx.op.unary.f32(i32 27, float %4774)  ; Round_ni(value)
  %4776 = fsub fast float %4772, %4773
  %4777 = fsub fast float %4774, %4775
  %4778 = fadd fast float %4773, -5.000000e-01
  %4779 = fadd fast float %4775, -5.000000e-01
  %4780 = fmul fast float %4776, 2.000000e+00
  %4781 = fsub fast float 3.000000e+00, %4780
  %4782 = fadd fast float %4780, 1.000000e+00
  %4783 = fsub fast float 2.000000e+00, %4776
  %4784 = bitcast float %4781 to i32
  %4785 = sub nsw i32 2129859010, %4784
  %4786 = bitcast i32 %4785 to float
  %4787 = fmul fast float %4786, %4783
  %4788 = fadd fast float %4787, -1.000000e+00
  %4789 = bitcast float %4782 to i32
  %4790 = sub nsw i32 2129859010, %4789
  %4791 = bitcast i32 %4790 to float
  %4792 = fmul fast float %4791, %4776
  %4793 = fadd fast float %4792, 1.000000e+00
  %4794 = fmul fast float %4777, 2.000000e+00
  %4795 = fsub fast float 3.000000e+00, %4794
  %4796 = fadd fast float %4794, 1.000000e+00
  %4797 = fsub fast float 2.000000e+00, %4777
  %4798 = bitcast float %4795 to i32
  %4799 = sub nsw i32 2129859010, %4798
  %4800 = bitcast i32 %4799 to float
  %4801 = fmul fast float %4800, %4797
  %4802 = fadd fast float %4801, -1.000000e+00
  %4803 = bitcast float %4796 to i32
  %4804 = sub nsw i32 2129859010, %4803
  %4805 = bitcast i32 %4804 to float
  %4806 = fmul fast float %4805, %4777
  %4807 = fadd fast float %4806, 1.000000e+00
  %4808 = fadd fast float %4788, %4778
  %4809 = fmul fast float %4808, %4760
  %4810 = fadd fast float %4802, %4779
  %4811 = fmul fast float %4810, %4761
  %4812 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %54, float %4809, float %4811, float undef, float undef, i32 0, i32 0, i32 undef, float %4765)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = fmul fast float %4813, %4781
  %4815 = fadd fast float %4793, %4778
  %4816 = fmul fast float %4815, %4760
  %4817 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %54, float %4816, float %4811, float undef, float undef, i32 0, i32 0, i32 undef, float %4765)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4818 = extractvalue %dx.types.ResRet.f32 %4817, 0
  %4819 = fmul fast float %4818, %4782
  %4820 = fadd fast float %4807, %4779
  %4821 = fmul fast float %4820, %4761
  %4822 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %54, float %4809, float %4821, float undef, float undef, i32 0, i32 0, i32 undef, float %4765)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4823 = extractvalue %dx.types.ResRet.f32 %4822, 0
  %4824 = fmul fast float %4823, %4781
  %4825 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %54, float %4816, float %4821, float undef, float undef, i32 0, i32 0, i32 undef, float %4765)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = fmul fast float %4826, %4782
  %4828 = fadd fast float %4827, %4824
  %4829 = fmul fast float %4828, %4796
  %4830 = fadd fast float %4819, %4814
  %4831 = fmul fast float %4830, %4795
  %4832 = fadd fast float %4831, %4829
  %4833 = fmul fast float %4832, 6.250000e-02
  br label %4919

; <label>:4834                                    ; preds = %4755
  %4835 = fmul fast float %267, 0x401921FB60000000
  %4836 = call float @dx.op.unary.f32(i32 13, float %4835)  ; Sin(value)
  %4837 = call float @dx.op.unary.f32(i32 12, float %4835)  ; Cos(value)
  %4838 = fsub fast float -0.000000e+00, %4836
  br label %4839

; <label>:4839                                    ; preds = %4888, %4834
  %4840 = phi float [ 0.000000e+00, %4834 ], [ %4883, %4888 ]
  %4841 = phi float [ 0.000000e+00, %4834 ], [ %4885, %4888 ]
  %4842 = phi i32 [ 0, %4834 ], [ %4889, %4888 ]
  %4843 = mul i32 %4842, 2
  %4844 = add i32 0, %4843
  %4845 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4844
  %4846 = load float, float* %4845, align 4
  %4847 = mul i32 %4842, 2
  %4848 = add i32 1, %4847
  %4849 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4848
  %4850 = load float, float* %4849, align 4
  %4851 = fmul fast float %4846, %4837
  %4852 = call float @dx.op.tertiary.f32(i32 46, float %4850, float %4838, float %4851)  ; FMad(a,b,c)
  %4853 = fmul fast float %4846, %4836
  %4854 = call float @dx.op.tertiary.f32(i32 46, float %4850, float %4837, float %4853)  ; FMad(a,b,c)
  %4855 = fmul fast float %4852, %4763
  %4856 = fmul fast float %4854, %4763
  %4857 = fadd fast float %4855, %4079
  %4858 = fadd fast float %4856, %4080
  %4859 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %53, float %4857, float %4858, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.ResRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.ResRet.f32 %4859, 2
  %4863 = extractvalue %dx.types.ResRet.f32 %4859, 3
  %4864 = getelementptr inbounds [4 x float], [4 x float]* %79, i32 0, i32 0
  store float %4860, float* %4864, align 4
  %4865 = getelementptr inbounds [4 x float], [4 x float]* %79, i32 0, i32 1
  store float %4861, float* %4865, align 4
  %4866 = getelementptr inbounds [4 x float], [4 x float]* %79, i32 0, i32 2
  store float %4862, float* %4866, align 4
  %4867 = getelementptr inbounds [4 x float], [4 x float]* %79, i32 0, i32 3
  store float %4863, float* %4867, align 4
  %4868 = fsub fast float %4860, %4765
  %4869 = fcmp fast olt float %4868, 0.000000e+00
  %4870 = select i1 %4869, float 0.000000e+00, float 1.000000e+00
  %4871 = fadd fast float %4870, %4840
  %4872 = fmul fast float %4870, %4868
  %4873 = fadd fast float %4872, %4841
  br label %4874

; <label>:4874                                    ; preds = %4874, %4839
  %4875 = phi i32 [ 1, %4839 ], [ %4886, %4874 ]
  %4876 = phi float [ %4873, %4839 ], [ %4885, %4874 ]
  %4877 = phi float [ %4871, %4839 ], [ %4883, %4874 ]
  %4878 = getelementptr [4 x float], [4 x float]* %79, i32 0, i32 %4875
  %4879 = load float, float* %4878, align 4, !tbaa !120, !noalias !110
  %4880 = fsub fast float %4879, %4765
  %4881 = fcmp fast olt float %4880, 0.000000e+00
  %4882 = select i1 %4881, float 0.000000e+00, float 1.000000e+00
  %4883 = fadd fast float %4882, %4877
  %4884 = fmul fast float %4882, %4880
  %4885 = fadd fast float %4884, %4876
  %4886 = add nuw nsw i32 %4875, 1
  %4887 = icmp eq i32 %4886, 4
  br i1 %4887, label %4888, label %4874, !llvm.loop !122

; <label>:4888                                    ; preds = %4874
  %4889 = add nuw nsw i32 %4842, 1
  %4890 = icmp eq i32 %4889, 8
  br i1 %4890, label %4891, label %4839, !llvm.loop !123

; <label>:4891                                    ; preds = %4888
  %4892 = fdiv fast float 1.000000e+00, %4883
  %4893 = fmul fast float %4892, %4885
  %4894 = fdiv fast float 1.000000e+00, %4765
  %4895 = fmul fast float %4893, %4894
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = call float @dx.op.binary.f32(i32 35, float %4896, float 0.000000e+00)  ; FMax(a,b)
  %4898 = fmul fast float %4883, 3.125000e-02
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = fmul fast float %4899, 2.000000e+00
  %4901 = fadd fast float %4900, -1.000000e+00
  %4902 = fcmp fast ogt float %4901, 0.000000e+00
  %4903 = fcmp fast olt float %4901, 0.000000e+00
  %4904 = zext i1 %4902 to i32
  %4905 = zext i1 %4903 to i32
  %4906 = sub nsw i32 %4904, %4905
  %4907 = sitofp i32 %4906 to float
  %4908 = fmul fast float %4907, %4901
  %4909 = fsub fast float 1.000000e+00, %4908
  %4910 = fmul fast float %4909, %4909
  %4911 = fmul fast float %4910, %4909
  %4912 = fsub fast float %4909, %4911
  %4913 = fmul fast float %4912, %4897
  %4914 = fsub fast float 1.000000e+00, %4911
  %4915 = fsub fast float %4914, %4913
  %4916 = fmul fast float %4907, 5.000000e-01
  %4917 = fmul fast float %4916, %4915
  %4918 = fsub fast float 5.000000e-01, %4917
  br label %4919

; <label>:4919                                    ; preds = %4891, %4767, %4752
  %4920 = phi float [ 1.000000e+00, %4752 ], [ %4833, %4767 ], [ %4918, %4891 ]
  %4921 = fcmp fast ogt float %4182, 0.000000e+00
  br i1 %4921, label %4922, label %5086, !dx.controlflow.hints !125

; <label>:4922                                    ; preds = %4919
  %4923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4924 = extractvalue %dx.types.CBufRet.f32 %4923, 0
  %4925 = fadd fast float %4924, %4072
  %4926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4927 = extractvalue %dx.types.CBufRet.f32 %4926, 2
  %4928 = extractvalue %dx.types.CBufRet.f32 %4926, 3
  %4929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4930 = extractvalue %dx.types.CBufRet.f32 %4929, 0
  %4931 = call float @dx.op.binary.f32(i32 35, float %4925, float 0.000000e+00)  ; FMax(a,b)
  %4932 = fadd fast float %4931, 0x3F10000000000000
  %4933 = fcmp fast oeq float %4930, 0.000000e+00
  br i1 %4933, label %4934, label %5001

; <label>:4934                                    ; preds = %4922
  %4935 = extractvalue %dx.types.CBufRet.f32 %4926, 1
  %4936 = extractvalue %dx.types.CBufRet.f32 %4926, 0
  %4937 = fmul fast float %4936, %4064
  %4938 = fmul fast float %4935, %4068
  %4939 = fadd fast float %4937, 5.000000e-01
  %4940 = call float @dx.op.unary.f32(i32 27, float %4939)  ; Round_ni(value)
  %4941 = fadd fast float %4938, 5.000000e-01
  %4942 = call float @dx.op.unary.f32(i32 27, float %4941)  ; Round_ni(value)
  %4943 = fsub fast float %4939, %4940
  %4944 = fsub fast float %4941, %4942
  %4945 = fadd fast float %4940, -5.000000e-01
  %4946 = fadd fast float %4942, -5.000000e-01
  %4947 = fmul fast float %4943, 2.000000e+00
  %4948 = fsub fast float 3.000000e+00, %4947
  %4949 = fadd fast float %4947, 1.000000e+00
  %4950 = fsub fast float 2.000000e+00, %4943
  %4951 = bitcast float %4948 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = fmul fast float %4953, %4950
  %4955 = fadd fast float %4954, -1.000000e+00
  %4956 = bitcast float %4949 to i32
  %4957 = sub nsw i32 2129859010, %4956
  %4958 = bitcast i32 %4957 to float
  %4959 = fmul fast float %4958, %4943
  %4960 = fadd fast float %4959, 1.000000e+00
  %4961 = fmul fast float %4944, 2.000000e+00
  %4962 = fsub fast float 3.000000e+00, %4961
  %4963 = fadd fast float %4961, 1.000000e+00
  %4964 = fsub fast float 2.000000e+00, %4944
  %4965 = bitcast float %4962 to i32
  %4966 = sub nsw i32 2129859010, %4965
  %4967 = bitcast i32 %4966 to float
  %4968 = fmul fast float %4967, %4964
  %4969 = fadd fast float %4968, -1.000000e+00
  %4970 = bitcast float %4963 to i32
  %4971 = sub nsw i32 2129859010, %4970
  %4972 = bitcast i32 %4971 to float
  %4973 = fmul fast float %4972, %4944
  %4974 = fadd fast float %4973, 1.000000e+00
  %4975 = fadd fast float %4955, %4945
  %4976 = fmul fast float %4975, %4927
  %4977 = fadd fast float %4969, %4946
  %4978 = fmul fast float %4977, %4928
  %4979 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %54, float %4976, float %4978, float undef, float undef, i32 0, i32 0, i32 undef, float %4932)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4980 = extractvalue %dx.types.ResRet.f32 %4979, 0
  %4981 = fmul fast float %4980, %4948
  %4982 = fadd fast float %4960, %4945
  %4983 = fmul fast float %4982, %4927
  %4984 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %54, float %4983, float %4978, float undef, float undef, i32 0, i32 0, i32 undef, float %4932)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4985 = extractvalue %dx.types.ResRet.f32 %4984, 0
  %4986 = fmul fast float %4985, %4949
  %4987 = fadd fast float %4974, %4946
  %4988 = fmul fast float %4987, %4928
  %4989 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %54, float %4976, float %4988, float undef, float undef, i32 0, i32 0, i32 undef, float %4932)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4990 = extractvalue %dx.types.ResRet.f32 %4989, 0
  %4991 = fmul fast float %4990, %4948
  %4992 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %54, float %4983, float %4988, float undef, float undef, i32 0, i32 0, i32 undef, float %4932)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4993 = extractvalue %dx.types.ResRet.f32 %4992, 0
  %4994 = fmul fast float %4993, %4949
  %4995 = fadd fast float %4994, %4991
  %4996 = fmul fast float %4995, %4963
  %4997 = fadd fast float %4986, %4981
  %4998 = fmul fast float %4997, %4962
  %4999 = fadd fast float %4998, %4996
  %5000 = fmul fast float %4999, 6.250000e-02
  br label %5086

; <label>:5001                                    ; preds = %4922
  %5002 = fmul fast float %267, 0x401921FB60000000
  %5003 = call float @dx.op.unary.f32(i32 13, float %5002)  ; Sin(value)
  %5004 = call float @dx.op.unary.f32(i32 12, float %5002)  ; Cos(value)
  %5005 = fsub fast float -0.000000e+00, %5003
  br label %5006

; <label>:5006                                    ; preds = %5055, %5001
  %5007 = phi float [ 0.000000e+00, %5001 ], [ %5050, %5055 ]
  %5008 = phi float [ 0.000000e+00, %5001 ], [ %5052, %5055 ]
  %5009 = phi i32 [ 0, %5001 ], [ %5056, %5055 ]
  %5010 = mul i32 %5009, 2
  %5011 = add i32 0, %5010
  %5012 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5011
  %5013 = load float, float* %5012, align 4
  %5014 = mul i32 %5009, 2
  %5015 = add i32 1, %5014
  %5016 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5015
  %5017 = load float, float* %5016, align 4
  %5018 = fmul fast float %5013, %5004
  %5019 = call float @dx.op.tertiary.f32(i32 46, float %5017, float %5005, float %5018)  ; FMad(a,b,c)
  %5020 = fmul fast float %5013, %5003
  %5021 = call float @dx.op.tertiary.f32(i32 46, float %5017, float %5004, float %5020)  ; FMad(a,b,c)
  %5022 = fmul fast float %5019, %4930
  %5023 = fmul fast float %5021, %4930
  %5024 = fadd fast float %5022, %4064
  %5025 = fadd fast float %5023, %4068
  %5026 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %53, float %5024, float %5025, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5027 = extractvalue %dx.types.ResRet.f32 %5026, 0
  %5028 = extractvalue %dx.types.ResRet.f32 %5026, 1
  %5029 = extractvalue %dx.types.ResRet.f32 %5026, 2
  %5030 = extractvalue %dx.types.ResRet.f32 %5026, 3
  %5031 = getelementptr inbounds [4 x float], [4 x float]* %78, i32 0, i32 0
  store float %5027, float* %5031, align 4
  %5032 = getelementptr inbounds [4 x float], [4 x float]* %78, i32 0, i32 1
  store float %5028, float* %5032, align 4
  %5033 = getelementptr inbounds [4 x float], [4 x float]* %78, i32 0, i32 2
  store float %5029, float* %5033, align 4
  %5034 = getelementptr inbounds [4 x float], [4 x float]* %78, i32 0, i32 3
  store float %5030, float* %5034, align 4
  %5035 = fsub fast float %5027, %4932
  %5036 = fcmp fast olt float %5035, 0.000000e+00
  %5037 = select i1 %5036, float 0.000000e+00, float 1.000000e+00
  %5038 = fadd fast float %5037, %5007
  %5039 = fmul fast float %5037, %5035
  %5040 = fadd fast float %5039, %5008
  br label %5041

; <label>:5041                                    ; preds = %5041, %5006
  %5042 = phi i32 [ 1, %5006 ], [ %5053, %5041 ]
  %5043 = phi float [ %5040, %5006 ], [ %5052, %5041 ]
  %5044 = phi float [ %5038, %5006 ], [ %5050, %5041 ]
  %5045 = getelementptr [4 x float], [4 x float]* %78, i32 0, i32 %5042
  %5046 = load float, float* %5045, align 4, !tbaa !120, !noalias !110
  %5047 = fsub fast float %5046, %4932
  %5048 = fcmp fast olt float %5047, 0.000000e+00
  %5049 = select i1 %5048, float 0.000000e+00, float 1.000000e+00
  %5050 = fadd fast float %5049, %5044
  %5051 = fmul fast float %5049, %5047
  %5052 = fadd fast float %5051, %5043
  %5053 = add nuw nsw i32 %5042, 1
  %5054 = icmp eq i32 %5053, 4
  br i1 %5054, label %5055, label %5041, !llvm.loop !122

; <label>:5055                                    ; preds = %5041
  %5056 = add nuw nsw i32 %5009, 1
  %5057 = icmp eq i32 %5056, 8
  br i1 %5057, label %5058, label %5006, !llvm.loop !123

; <label>:5058                                    ; preds = %5055
  %5059 = fdiv fast float 1.000000e+00, %5050
  %5060 = fmul fast float %5059, %5052
  %5061 = fdiv fast float 1.000000e+00, %4932
  %5062 = fmul fast float %5060, %5061
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = call float @dx.op.binary.f32(i32 35, float %5063, float 0.000000e+00)  ; FMax(a,b)
  %5065 = fmul fast float %5050, 3.125000e-02
  %5066 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5067 = fmul fast float %5066, 2.000000e+00
  %5068 = fadd fast float %5067, -1.000000e+00
  %5069 = fcmp fast ogt float %5068, 0.000000e+00
  %5070 = fcmp fast olt float %5068, 0.000000e+00
  %5071 = zext i1 %5069 to i32
  %5072 = zext i1 %5070 to i32
  %5073 = sub nsw i32 %5071, %5072
  %5074 = sitofp i32 %5073 to float
  %5075 = fmul fast float %5074, %5068
  %5076 = fsub fast float 1.000000e+00, %5075
  %5077 = fmul fast float %5076, %5076
  %5078 = fmul fast float %5077, %5076
  %5079 = fsub fast float %5076, %5078
  %5080 = fmul fast float %5079, %5064
  %5081 = fsub fast float 1.000000e+00, %5078
  %5082 = fsub fast float %5081, %5080
  %5083 = fmul fast float %5074, 5.000000e-01
  %5084 = fmul fast float %5083, %5082
  %5085 = fsub fast float 5.000000e-01, %5084
  br label %5086

; <label>:5086                                    ; preds = %5058, %4934, %4919
  %5087 = phi float [ 1.000000e+00, %4919 ], [ %5000, %4934 ], [ %5085, %5058 ]
  %5088 = fsub fast float %4753, %4588
  %5089 = fmul fast float %5088, %4126
  %5090 = fadd fast float %5089, %4588
  %5091 = fsub fast float %4920, %5090
  %5092 = fmul fast float %5091, %4156
  %5093 = fadd fast float %5092, %5090
  %5094 = fsub fast float %5087, %5093
  %5095 = fmul fast float %5094, %4182
  %5096 = fadd fast float %5095, %5093
  %5097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5098 = extractvalue %dx.types.CBufRet.f32 %5097, 2
  %5099 = fcmp fast ogt float %5098, 0.000000e+00
  br i1 %5099, label %5100, label %5140, !dx.controlflow.hints !126

; <label>:5100                                    ; preds = %5086
  %5101 = fcmp fast ugt float %5098, 0.000000e+00
  br i1 %5101, label %5102, label %5137

; <label>:5102                                    ; preds = %5100
  %5103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5104 = extractvalue %dx.types.CBufRet.f32 %5103, 0
  %5105 = extractvalue %dx.types.CBufRet.f32 %5103, 1
  %5106 = extractvalue %dx.types.CBufRet.f32 %5103, 2
  %5107 = extractvalue %dx.types.CBufRet.f32 %5103, 3
  %5108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5109 = extractvalue %dx.types.CBufRet.f32 %5108, 0
  %5110 = extractvalue %dx.types.CBufRet.f32 %5108, 1
  %5111 = extractvalue %dx.types.CBufRet.f32 %5108, 2
  %5112 = extractvalue %dx.types.CBufRet.f32 %5108, 3
  %5113 = extractvalue %dx.types.CBufRet.f32 %5097, 0
  %5114 = extractvalue %dx.types.CBufRet.f32 %5097, 1
  %5115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.f32 %5115, 0
  %5117 = extractvalue %dx.types.CBufRet.f32 %5115, 1
  %5118 = extractvalue %dx.types.CBufRet.f32 %5115, 2
  %5119 = fadd fast float %5116, %4041
  %5120 = fadd fast float %5117, %4042
  %5121 = fadd fast float %5118, %4043
  %5122 = fmul fast float %5119, %5104
  %5123 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5120, float %5122)  ; FMad(a,b,c)
  %5124 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5121, float %5123)  ; FMad(a,b,c)
  %5125 = fadd fast float %5124, %5107
  %5126 = fmul fast float %5119, %5109
  %5127 = call float @dx.op.tertiary.f32(i32 46, float %5110, float %5120, float %5126)  ; FMad(a,b,c)
  %5128 = call float @dx.op.tertiary.f32(i32 46, float %5111, float %5121, float %5127)  ; FMad(a,b,c)
  %5129 = fadd fast float %5128, %5112
  %5130 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %49, float %5125, float %5129, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5131 = extractvalue %dx.types.ResRet.f32 %5130, 0
  %5132 = fmul fast float %5131, %5114
  %5133 = fadd fast float %5132, %5113
  %5134 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5135 = fmul fast float %5134, %5098
  %5136 = fsub fast float 1.000000e+00, %5135
  br label %5137

; <label>:5137                                    ; preds = %5102, %5100
  %5138 = phi float [ %5136, %5102 ], [ 1.000000e+00, %5100 ]
  %5139 = fmul fast float %5138, %5096
  br label %5140

; <label>:5140                                    ; preds = %5137, %5086, %4021
  %5141 = phi float [ 1.000000e+00, %4021 ], [ %5139, %5137 ], [ %5096, %5086 ]
  %5142 = call float @dx.op.binary.f32(i32 36, float %5141, float %5141)  ; FMin(a,b)
  %5143 = call float @dx.op.binary.f32(i32 36, float %5141, float %5142)  ; FMin(a,b)
  %5144 = fcmp fast ogt float %5143, 0.000000e+00
  br i1 %5144, label %5145, label %5311, !dx.controlflow.hints !127

; <label>:5145                                    ; preds = %5140
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 0
  %5148 = extractvalue %dx.types.CBufRet.f32 %5146, 1
  %5149 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5150 = extractvalue %dx.types.CBufRet.f32 %5146, 3
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5155 = extractvalue %dx.types.CBufRet.f32 %5151, 3
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5159 = extractvalue %dx.types.CBufRet.f32 %5156, 2
  %5160 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5161 = fmul fast float %5147, %4041
  %5162 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %5148, float %5161)  ; FMad(a,b,c)
  %5163 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %5149, float %5162)  ; FMad(a,b,c)
  %5164 = fadd fast float %5163, %5150
  %5165 = fmul fast float %5152, %4041
  %5166 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %5153, float %5165)  ; FMad(a,b,c)
  %5167 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %5154, float %5166)  ; FMad(a,b,c)
  %5168 = fadd fast float %5167, %5155
  %5169 = fmul fast float %5157, %4041
  %5170 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %5158, float %5169)  ; FMad(a,b,c)
  %5171 = call float @dx.op.tertiary.f32(i32 46, float %4043, float %5159, float %5170)  ; FMad(a,b,c)
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5174 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5175 = extractvalue %dx.types.CBufRet.f32 %5172, 3
  %5176 = fmul fast float %5175, %5164
  %5177 = fmul fast float %5175, %5168
  %5178 = fadd fast float %5176, %5173
  %5179 = fadd fast float %5177, %5174
  %5180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.f32 %5180, 0
  %5182 = extractvalue %dx.types.CBufRet.f32 %5180, 1
  %5183 = fsub fast float %5178, %5181
  %5184 = fsub fast float %5179, %5182
  %5185 = fcmp fast olt float %5183, 0.000000e+00
  %5186 = fcmp fast olt float %5184, 0.000000e+00
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 0
  %5189 = extractvalue %dx.types.CBufRet.f32 %5187, 1
  %5190 = extractvalue %dx.types.CBufRet.f32 %5187, 2
  %5191 = extractvalue %dx.types.CBufRet.f32 %5187, 3
  %5192 = select i1 %5185, float %5188, float %5190
  %5193 = select i1 %5186, float %5189, float %5191
  %5194 = fmul fast float %5192, %5183
  %5195 = fmul fast float %5193, %5184
  %5196 = call float @dx.op.unary.f32(i32 6, float %5194)  ; FAbs(value)
  %5197 = call float @dx.op.unary.f32(i32 6, float %5195)  ; FAbs(value)
  %5198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5198, 0
  %5200 = call float @dx.op.binary.f32(i32 35, float %5196, float %5197)  ; FMax(a,b)
  %5201 = fsub fast float %5199, %5200
  %5202 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5203 = fcmp fast ogt float %5202, 0.000000e+00
  br i1 %5203, label %5204, label %5245, !dx.controlflow.hints !128

; <label>:5204                                    ; preds = %5145
  %5205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %52, float %5178, float %5179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5206 = extractvalue %dx.types.ResRet.f32 %5205, 1
  %5207 = fcmp fast ogt float %5206, 0.000000e+00
  br i1 %5207, label %5208, label %5240

; <label>:5208                                    ; preds = %5204
  %5209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %52, float %5178, float %5179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = extractvalue %dx.types.ResRet.f32 %5209, 1
  %5212 = extractvalue %dx.types.ResRet.f32 %5209, 2
  %5213 = extractvalue %dx.types.ResRet.f32 %5209, 3
  %5214 = fsub fast float 1.000000e+00, %5160
  %5215 = fsub fast float %5214, %5171
  %5216 = fmul fast float %5215, 0x400921FB60000000
  %5217 = fadd fast float %5216, 0x3FF921FB60000000
  %5218 = call float @dx.op.unary.f32(i32 13, float %5217)  ; Sin(value)
  %5219 = fadd fast float %5218, -1.000000e+00
  %5220 = fmul fast float %5219, 0x3FD45F3060000000
  %5221 = fmul fast float %5215, 0x401921FB60000000
  %5222 = fadd fast float %5221, 0x400921FB60000000
  %5223 = call float @dx.op.unary.f32(i32 13, float %5222)  ; Sin(value)
  %5224 = fadd fast float %5223, 0x3E7777A5C0000000
  %5225 = fmul fast float %5224, 0x3FC45F3060000000
  %5226 = fmul fast float %5215, 0x4022D97C80000000
  %5227 = fadd fast float %5226, 0x4012D97C80000000
  %5228 = call float @dx.op.unary.f32(i32 13, float %5227)  ; Sin(value)
  %5229 = fadd fast float %5228, 1.000000e+00
  %5230 = fmul fast float %5229, 0x3FBB2995E0000000
  %5231 = fmul fast float %5215, 0x402921FB60000000
  %5232 = fadd fast float %5231, 0x401921FB60000000
  %5233 = call float @dx.op.unary.f32(i32 13, float %5232)  ; Sin(value)
  %5234 = fadd fast float %5233, 0xBE8777A5C0000000
  %5235 = fmul fast float %5234, 0x3FB45F3060000000
  %5236 = call float @dx.op.dot4.f32(i32 56, float %5210, float %5211, float %5212, float %5213, float %5220, float %5225, float %5230, float %5235)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5237 = fmul fast float %5236, 0xBFF7154760000000
  %5238 = call float @dx.op.unary.f32(i32 21, float %5237)  ; Exp(value)
  %5239 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  br label %5240

; <label>:5240                                    ; preds = %5208, %5204
  %5241 = phi float [ %5239, %5208 ], [ 1.000000e+00, %5204 ]
  %5242 = fadd fast float %5241, -1.000000e+00
  %5243 = fmul fast float %5242, %5202
  %5244 = fadd fast float %5243, 1.000000e+00
  br label %5245

; <label>:5245                                    ; preds = %5240, %5145
  %5246 = phi float [ %5244, %5240 ], [ 1.000000e+00, %5145 ]
  %5247 = fmul fast float %5246, %5141
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 0
  %5250 = extractvalue %dx.types.CBufRet.f32 %5248, 1
  %5251 = extractvalue %dx.types.CBufRet.f32 %5248, 2
  %5252 = fadd fast float %5249, %134
  %5253 = fadd fast float %5250, %135
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.CBufRet.f32 %5256, 1
  %5259 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5260 = fsub fast float -0.000000e+00, %5252
  %5261 = fsub fast float -0.000000e+00, %5253
  %5262 = fsub fast float -0.000000e+00, %136
  %5263 = fsub fast float %5262, %5251
  %5264 = fadd fast float %5263, %5255
  %5265 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5260, float %5261, float %5264)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5257, float %5258, float %5259)  ; Dot3(ax,ay,az,bx,by,bz)
  %5267 = fdiv fast float 1.000000e+00, %5266
  %5268 = fmul fast float %5267, %5265
  %5269 = fmul fast float %5257, %5268
  %5270 = fmul fast float %5258, %5268
  %5271 = fadd fast float %5269, %5252
  %5272 = fadd fast float %5270, %5253
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.CBufRet.f32 %5273, 1
  %5276 = fsub fast float %5271, %5274
  %5277 = fsub fast float %5272, %5275
  %5278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.f32 %5278, 2
  %5280 = extractvalue %dx.types.CBufRet.f32 %5278, 3
  %5281 = fmul fast float %5276, %5279
  %5282 = fmul fast float %5277, %5280
  %5283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.i32 %5283, 3
  %5285 = icmp eq i32 %5284, 0
  br i1 %5285, label %5291, label %5286

; <label>:5286                                    ; preds = %5245
  %5287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %51, float %5281, float %5282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5288 = extractvalue %dx.types.ResRet.f32 %5287, 0
  %5289 = extractvalue %dx.types.ResRet.f32 %5287, 1
  %5290 = extractvalue %dx.types.ResRet.f32 %5287, 2
  br label %5296

; <label>:5291                                    ; preds = %5245
  %5292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %52, float %5281, float %5282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.ResRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.ResRet.f32 %5292, 2
  br label %5296

; <label>:5296                                    ; preds = %5291, %5286
  %5297 = phi float [ %5288, %5286 ], [ %5293, %5291 ]
  %5298 = phi float [ %5289, %5286 ], [ %5294, %5291 ]
  %5299 = phi float [ %5290, %5286 ], [ %5295, %5291 ]
  %5300 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5301 = fmul fast float %5300, %5297
  %5302 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5303 = fsub fast float %5268, %5302
  %5304 = fsub fast float %5303, %5301
  %5305 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5304)  ; FMax(a,b)
  %5306 = fmul fast float %5305, %5298
  %5307 = call float @dx.op.binary.f32(i32 36, float %5299, float %5306)  ; FMin(a,b)
  %5308 = fmul fast float %5307, 0xBFF7154760000000
  %5309 = call float @dx.op.unary.f32(i32 21, float %5308)  ; Exp(value)
  %5310 = fmul fast float %5247, %5309
  br label %5311

; <label>:5311                                    ; preds = %5296, %5140
  %5312 = phi float [ %5310, %5296 ], [ %5141, %5140 ]
  %5313 = call float @dx.op.binary.f32(i32 36, float %5312, float %5312)  ; FMin(a,b)
  %5314 = call float @dx.op.binary.f32(i32 36, float %5312, float %5313)  ; FMin(a,b)
  %5315 = fcmp fast ogt float %5314, 0.000000e+00
  br i1 %5315, label %5316, label %5623, !dx.controlflow.hints !129

; <label>:5316                                    ; preds = %5311
  %5317 = fmul fast float %5312, %4033
  %5318 = fmul fast float %5312, %4034
  %5319 = fmul fast float %5312, %4035
  %5320 = fsub fast float %4022, %183
  %5321 = fsub fast float %4023, %184
  %5322 = fsub fast float %4024, %185
  %5323 = call float @dx.op.dot3.f32(i32 55, float %5320, float %5321, float %5322, float %5320, float %5321, float %5322)  ; Dot3(ax,ay,az,bx,by,bz)
  %5324 = call float @dx.op.unary.f32(i32 25, float %5323)  ; Rsqrt(value)
  %5325 = fmul fast float %5324, %5320
  %5326 = fmul fast float %5324, %5321
  %5327 = fmul fast float %5324, %5322
  %5328 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4023, float %4024, float %2069, float %2070, float %2071)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = call float @dx.op.dot3.f32(i32 55, float %1900, float %1901, float %1902, float %5325, float %5326, float %5327)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  %5331 = fmul fast float %5330, %5330
  %5332 = fmul fast float %5331, %4017
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = fmul fast float %5333, %5330
  %5335 = call float @dx.op.dot3.f32(i32 55, float %2069, float %2070, float %2071, float %5325, float %5326, float %5327)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = fmul fast float %5335, %5335
  %5337 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5338 = fsub fast float 1.000000e+00, %2097
  %5339 = fmul fast float %2079, %2079
  %5340 = fmul fast float %5339, %5338
  %5341 = fadd fast float %5340, %2097
  %5342 = bitcast float %5341 to i32
  %5343 = ashr i32 %5342, 1
  %5344 = add nsw i32 %5343, 532487669
  %5345 = bitcast i32 %5344 to float
  %5346 = fadd fast float %5345, %2079
  %5347 = fmul fast float %2097, %5336
  %5348 = fsub fast float 1.000000e+00, %5336
  %5349 = fadd fast float %5348, %5347
  %5350 = fmul fast float %5337, %5337
  %5351 = fmul fast float %5350, %5338
  %5352 = fadd fast float %5351, %2097
  %5353 = bitcast float %5352 to i32
  %5354 = ashr i32 %5353, 1
  %5355 = add nsw i32 %5354, 532487669
  %5356 = bitcast i32 %5355 to float
  %5357 = fadd fast float %5356, %5337
  %5358 = fmul fast float %5349, %5349
  %5359 = fmul fast float %5358, %5346
  %5360 = fmul fast float %5359, %5357
  %5361 = fdiv fast float 0x3FF0A00000000000, %5360
  %5362 = fmul fast float %5361, %2097
  %5363 = fmul fast float %3388, 0x3FF9999980000000
  %5364 = fsub fast float 5.000000e+00, %5363
  %5365 = call float @dx.op.unary.f32(i32 6, float %5329)  ; FAbs(value)
  %5366 = fsub fast float 1.000000e+00, %5365
  %5367 = fmul fast float %3388, 0x41D9660740000000
  %5368 = fadd fast float %5367, 0xC1EFBF8940000000
  %5369 = bitcast float %5366 to i32
  %5370 = sitofp i32 %5369 to float
  %5371 = fmul fast float %5370, %5364
  %5372 = fadd fast float %5368, %5371
  %5373 = fptosi float %5372 to i32
  %5374 = bitcast i32 %5373 to float
  %5375 = fsub fast float 1.000000e+00, %2066
  %5376 = fsub fast float 1.000000e+00, %2067
  %5377 = fsub fast float 1.000000e+00, %2077
  %5378 = fmul fast float %5374, %5375
  %5379 = fmul fast float %5374, %5376
  %5380 = fmul fast float %5374, %5377
  %5381 = fadd fast float %5378, %2066
  %5382 = fadd fast float %5379, %2067
  %5383 = fadd fast float %5380, %2077
  br i1 %3411, label %5384, label %5407

; <label>:5384                                    ; preds = %5316
  %5385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %52, float %1698, float %5365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.ResRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.ResRet.f32 %5385, 2
  %5389 = fadd fast float %5386, -5.000000e-01
  %5390 = fadd fast float %5387, -5.000000e-01
  %5391 = fadd fast float %5388, -5.000000e-01
  %5392 = fmul fast float %2066, 4.000000e+00
  %5393 = fmul fast float %5392, %5375
  %5394 = fmul fast float %5393, %5389
  %5395 = fmul fast float %2067, 4.000000e+00
  %5396 = fmul fast float %5395, %5376
  %5397 = fmul fast float %5396, %5390
  %5398 = fmul fast float %2077, 4.000000e+00
  %5399 = fmul fast float %5398, %5377
  %5400 = fmul fast float %5399, %5391
  %5401 = fadd fast float %5394, %5381
  %5402 = fadd fast float %5397, %5382
  %5403 = fadd fast float %5400, %5383
  %5404 = call float @dx.op.unary.f32(i32 7, float %5401)  ; Saturate(value)
  %5405 = call float @dx.op.unary.f32(i32 7, float %5402)  ; Saturate(value)
  %5406 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  br label %5407

; <label>:5407                                    ; preds = %5384, %5316
  %5408 = phi float [ %5404, %5384 ], [ %5381, %5316 ]
  %5409 = phi float [ %5405, %5384 ], [ %5382, %5316 ]
  %5410 = phi float [ %5406, %5384 ], [ %5383, %5316 ]
  %5411 = fmul fast float %5328, 9.843750e-01
  %5412 = fadd fast float %5411, 7.812500e-03
  %5413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %52, float %5412, float %3392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5414 = extractvalue %dx.types.ResRet.f32 %5413, 0
  %5415 = extractvalue %dx.types.ResRet.f32 %5413, 1
  %5416 = extractvalue %dx.types.ResRet.f32 %5413, 2
  %5417 = extractvalue %dx.types.ResRet.f32 %5413, 3
  %5418 = fsub fast float %5416, %5414
  %5419 = fsub fast float %5417, %5415
  %5420 = fmul fast float %5418, %3398
  %5421 = fmul fast float %5419, %3398
  %5422 = fadd fast float %5420, %5414
  %5423 = fadd fast float %5421, %5415
  %5424 = fmul fast float %5422, %2066
  %5425 = fmul fast float %5422, %2067
  %5426 = fmul fast float %5422, %2077
  %5427 = fadd fast float %5424, %5423
  %5428 = fadd fast float %5425, %5423
  %5429 = fadd fast float %5426, %5423
  br i1 %3411, label %5430, label %5453

; <label>:5430                                    ; preds = %5407
  %5431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %52, float %1698, float %5328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.ResRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.ResRet.f32 %5431, 2
  %5435 = fadd fast float %5432, -5.000000e-01
  %5436 = fadd fast float %5433, -5.000000e-01
  %5437 = fadd fast float %5434, -5.000000e-01
  %5438 = fmul fast float %2066, 4.000000e+00
  %5439 = fmul fast float %5438, %5375
  %5440 = fmul fast float %5439, %5435
  %5441 = fmul fast float %2067, 4.000000e+00
  %5442 = fmul fast float %5441, %5376
  %5443 = fmul fast float %5442, %5436
  %5444 = fmul fast float %2077, 4.000000e+00
  %5445 = fmul fast float %5444, %5377
  %5446 = fmul fast float %5445, %5437
  %5447 = fadd fast float %5440, %5427
  %5448 = fadd fast float %5443, %5428
  %5449 = fadd fast float %5446, %5429
  %5450 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5451 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5452 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  br label %5453

; <label>:5453                                    ; preds = %5430, %5407
  %5454 = phi float [ %5450, %5430 ], [ %5427, %5407 ]
  %5455 = phi float [ %5451, %5430 ], [ %5428, %5407 ]
  %5456 = phi float [ %5452, %5430 ], [ %5429, %5407 ]
  %5457 = call float @dx.op.binary.f32(i32 35, float %5455, float %5456)  ; FMax(a,b)
  %5458 = call float @dx.op.binary.f32(i32 35, float %5454, float %5457)  ; FMax(a,b)
  %5459 = fsub fast float 1.000000e+00, %5458
  %5460 = call float @dx.op.binary.f32(i32 35, float %5337, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5461 = fdiv fast float %1104, %5460
  %5462 = fmul fast float %3930, %5461
  %5463 = fmul fast float %3932, %5461
  %5464 = fmul fast float %3934, %5461
  %5465 = call float @dx.op.unary.f32(i32 21, float %5462)  ; Exp(value)
  %5466 = call float @dx.op.unary.f32(i32 21, float %5463)  ; Exp(value)
  %5467 = call float @dx.op.unary.f32(i32 21, float %5464)  ; Exp(value)
  %5468 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5469 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5470 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5471 = select i1 %3927, float %5468, float 0.000000e+00
  %5472 = select i1 %3928, float %5469, float 0.000000e+00
  %5473 = select i1 %3929, float %5470, float 0.000000e+00
  %5474 = fsub fast float -0.000000e+00, %2069
  %5475 = fsub fast float -0.000000e+00, %2070
  %5476 = fsub fast float -0.000000e+00, %2071
  %5477 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4023, float %4024, float %5474, float %5475, float %5476)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5479 = fmul fast float %5478, 9.843750e-01
  %5480 = fadd fast float %5479, 7.812500e-03
  %5481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %52, float %5480, float %3392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.ResRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.ResRet.f32 %5481, 2
  %5485 = extractvalue %dx.types.ResRet.f32 %5481, 3
  %5486 = fsub fast float %5484, %5482
  %5487 = fsub fast float %5485, %5483
  %5488 = fmul fast float %5486, %3398
  %5489 = fmul fast float %5487, %3398
  %5490 = fadd fast float %5488, %5482
  %5491 = fadd fast float %5489, %5483
  %5492 = fmul fast float %5490, %2066
  %5493 = fmul fast float %5490, %2067
  %5494 = fmul fast float %5490, %2077
  %5495 = fadd fast float %5492, %5491
  %5496 = fadd fast float %5493, %5491
  %5497 = fadd fast float %5494, %5491
  br i1 %3411, label %5498, label %5521

; <label>:5498                                    ; preds = %5453
  %5499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %52, float %1698, float %5478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5500 = extractvalue %dx.types.ResRet.f32 %5499, 0
  %5501 = extractvalue %dx.types.ResRet.f32 %5499, 1
  %5502 = extractvalue %dx.types.ResRet.f32 %5499, 2
  %5503 = fadd fast float %5500, -5.000000e-01
  %5504 = fadd fast float %5501, -5.000000e-01
  %5505 = fadd fast float %5502, -5.000000e-01
  %5506 = fmul fast float %2066, 4.000000e+00
  %5507 = fmul fast float %5506, %5375
  %5508 = fmul fast float %5507, %5503
  %5509 = fmul fast float %2067, 4.000000e+00
  %5510 = fmul fast float %5509, %5376
  %5511 = fmul fast float %5510, %5504
  %5512 = fmul fast float %2077, 4.000000e+00
  %5513 = fmul fast float %5512, %5377
  %5514 = fmul fast float %5513, %5505
  %5515 = fadd fast float %5508, %5495
  %5516 = fadd fast float %5511, %5496
  %5517 = fadd fast float %5514, %5497
  %5518 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5519 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5520 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  br label %5521

; <label>:5521                                    ; preds = %5498, %5453
  %5522 = phi float [ %5518, %5498 ], [ %5495, %5453 ]
  %5523 = phi float [ %5519, %5498 ], [ %5496, %5453 ]
  %5524 = phi float [ %5520, %5498 ], [ %5497, %5453 ]
  %5525 = call float @dx.op.binary.f32(i32 35, float %5523, float %5524)  ; FMax(a,b)
  %5526 = call float @dx.op.binary.f32(i32 35, float %5522, float %5525)  ; FMax(a,b)
  %5527 = fsub fast float 1.000000e+00, %5526
  %5528 = fmul fast float %2094, %3994
  %5529 = fadd fast float %3996, %5528
  %5530 = call float @dx.op.unary.f32(i32 7, float %5529)  ; Saturate(value)
  %5531 = fsub fast float %4022, %2085
  %5532 = fsub fast float %4023, %2086
  %5533 = fsub fast float %4024, %2087
  %5534 = call float @dx.op.dot3.f32(i32 55, float %5531, float %5532, float %5533, float %5531, float %5532, float %5533)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = call float @dx.op.unary.f32(i32 25, float %5534)  ; Rsqrt(value)
  %5536 = fmul fast float %5535, %5531
  %5537 = fmul fast float %5535, %5532
  %5538 = fmul fast float %5535, %5533
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5475, float %5476, float %5536, float %5537, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = fmul fast float %5539, %5539
  %5541 = call float @dx.op.unary.f32(i32 6, float %5478)  ; FAbs(value)
  %5542 = call float @dx.op.binary.f32(i32 35, float %5530, float 0x3F847AE140000000)  ; FMax(a,b)
  %5543 = fmul fast float %5542, %5542
  %5544 = fmul fast float %5543, %5543
  %5545 = fsub fast float 1.000000e+00, %5544
  %5546 = fmul fast float %5339, %5545
  %5547 = fadd fast float %5546, %5544
  %5548 = bitcast float %5547 to i32
  %5549 = ashr i32 %5548, 1
  %5550 = add nsw i32 %5549, 532487669
  %5551 = bitcast i32 %5550 to float
  %5552 = fadd fast float %5551, %2079
  %5553 = fmul fast float %5544, %5540
  %5554 = fsub fast float 1.000000e+00, %5540
  %5555 = fadd fast float %5554, %5553
  %5556 = fmul fast float %5541, %5541
  %5557 = fmul fast float %5556, %5545
  %5558 = fadd fast float %5557, %5544
  %5559 = bitcast float %5558 to i32
  %5560 = ashr i32 %5559, 1
  %5561 = add nsw i32 %5560, 532487669
  %5562 = bitcast i32 %5561 to float
  %5563 = fadd fast float %5562, %5541
  %5564 = fmul fast float %5555, %5555
  %5565 = fmul fast float %5564, %5552
  %5566 = fmul fast float %5565, %5563
  %5567 = fdiv fast float 0x3FF0A00000000000, %5566
  %5568 = fmul fast float %5567, %5544
  %5569 = fmul fast float %5478, %5471
  %5570 = fmul fast float %5478, %5472
  %5571 = fmul fast float %5478, %5473
  %5572 = fmul fast float %5569, %5527
  %5573 = fmul fast float %5572, %5568
  %5574 = fmul fast float %5570, %5527
  %5575 = fmul fast float %5574, %5568
  %5576 = fmul fast float %5571, %5527
  %5577 = fmul fast float %5576, %5568
  %5578 = fmul fast float %5408, %5362
  %5579 = fmul fast float %5409, %5362
  %5580 = fmul fast float %5410, %5362
  %5581 = fsub fast float 1.000000e+00, %5329
  %5582 = bitcast float %5581 to i32
  %5583 = sitofp i32 %5582 to float
  %5584 = fmul fast float %5583, 5.000000e+00
  %5585 = fadd fast float %5584, 0xC1EFBF8940000000
  %5586 = fptosi float %5585 to i32
  %5587 = bitcast i32 %5586 to float
  %5588 = fmul fast float %5587, %1697
  %5589 = fmul fast float %5459, %5588
  %5590 = fmul fast float %5589, %3922
  %5591 = fmul fast float %5589, %3923
  %5592 = fmul fast float %5589, %3924
  %5593 = fadd fast float %5590, %5578
  %5594 = fadd fast float %5591, %5579
  %5595 = fadd fast float %5592, %5580
  %5596 = fmul fast float %5593, %5334
  %5597 = fmul fast float %5594, %5334
  %5598 = fmul fast float %5595, %5334
  %5599 = fmul fast float %5334, %5317
  %5600 = fmul fast float %5599, %5459
  %5601 = fmul fast float %5334, %5318
  %5602 = fmul fast float %5601, %5459
  %5603 = fmul fast float %5334, %5319
  %5604 = fmul fast float %5603, %5459
  %5605 = fadd fast float %5596, %5573
  %5606 = fadd fast float %5597, %5575
  %5607 = fadd fast float %5598, %5577
  %5608 = fmul fast float %5605, %5317
  %5609 = fmul fast float %5606, %5318
  %5610 = fmul fast float %5607, %5319
  %5611 = fadd fast float %5600, %4011
  %5612 = fmul fast float %5611, %1748
  %5613 = fadd fast float %5602, %4013
  %5614 = fmul fast float %5613, %1748
  %5615 = fadd fast float %5604, %4015
  %5616 = fmul fast float %5615, %1748
  %5617 = fadd fast float %5608, %3975
  %5618 = fmul fast float %5617, %1748
  %5619 = fadd fast float %5609, %3978
  %5620 = fmul fast float %5619, %1748
  %5621 = fadd fast float %5610, %3981
  %5622 = fmul fast float %5621, %1748
  br label %5623

; <label>:5623                                    ; preds = %5521, %5311, %3905
  %5624 = phi float [ %3976, %3905 ], [ %3976, %5311 ], [ %5618, %5521 ]
  %5625 = phi float [ %3979, %3905 ], [ %3979, %5311 ], [ %5620, %5521 ]
  %5626 = phi float [ %3982, %3905 ], [ %3982, %5311 ], [ %5622, %5521 ]
  %5627 = phi float [ %4012, %3905 ], [ %4012, %5311 ], [ %5612, %5521 ]
  %5628 = phi float [ %4014, %3905 ], [ %4014, %5311 ], [ %5614, %5521 ]
  %5629 = phi float [ %4016, %3905 ], [ %4016, %5311 ], [ %5616, %5521 ]
  %5630 = fmul fast float %3951, %1748
  %5631 = fmul fast float %3952, %1748
  %5632 = fmul fast float %3953, %1748
  %5633 = fadd fast float %5630, 1.000000e+00
  %5634 = fadd fast float %5631, 1.000000e+00
  %5635 = fadd fast float %5632, 1.000000e+00
  %5636 = call float @dx.op.dot3.f32(i32 55, float %5633, float %5634, float %5635, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = fsub fast float 1.000000e+00, %5636
  %5638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5639 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5640 = fmul fast float %5639, %3957
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 3
  %5643 = fsub fast float 1.000000e+00, %1693
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5645 = fadd fast float %5629, %1692
  %5646 = fmul fast float %5645, %1693
  %5647 = fmul fast float %5644, %5642
  %5648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1727, i32 undef)  ; BufferLoad(srv,index,wot)
  %5649 = extractvalue %dx.types.ResRet.i32 %5648, 3
  %5650 = bitcast i32 %5649 to float
  %5651 = fsub fast float %5637, %5650
  %5652 = fmul fast float %5651, %197
  %5653 = fadd fast float %5652, %5650
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 3
  %5656 = fmul fast float %5627, %2072
  %5657 = fmul fast float %5628, %2073
  %5658 = fmul fast float %5629, %2074
  %5659 = fcmp fast ogt float %75, %217
  %5660 = and i1 %5659, %1816
  %5661 = or i1 %1895, %5660
  %5662 = icmp eq i32 %1815, 2
  %5663 = fcmp fast ole float %75, %217
  %5664 = and i1 %5663, %5662
  %5665 = or i1 %5664, %5661
  br i1 %5660, label %5666, label %5925

; <label>:5666                                    ; preds = %5623
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 2
  %5669 = extractvalue %dx.types.CBufRet.f32 %5667, 3
  %5670 = fmul fast float %5668, %87
  %5671 = fmul fast float %5669, %88
  %5672 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5673 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5674 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %5672, float %5673, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5675 = extractvalue %dx.types.ResRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.ResRet.f32 %5674, 1
  %5677 = extractvalue %dx.types.ResRet.f32 %5674, 2
  %5678 = extractvalue %dx.types.ResRet.f32 %5674, 3
  %5679 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %5672, float %5673, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5680 = extractvalue %dx.types.ResRet.f32 %5679, 0
  %5681 = extractvalue %dx.types.ResRet.f32 %5679, 1
  %5682 = extractvalue %dx.types.ResRet.f32 %5679, 2
  %5683 = extractvalue %dx.types.ResRet.f32 %5679, 3
  %5684 = call float @dx.op.binary.f32(i32 35, float %5676, float %5677)  ; FMax(a,b)
  %5685 = call float @dx.op.binary.f32(i32 35, float %5675, float %5684)  ; FMax(a,b)
  %5686 = call float @dx.op.binary.f32(i32 35, float %5685, float %5678)  ; FMax(a,b)
  %5687 = call float @dx.op.binary.f32(i32 36, float %5681, float %5682)  ; FMin(a,b)
  %5688 = call float @dx.op.binary.f32(i32 36, float %5680, float %5687)  ; FMin(a,b)
  %5689 = call float @dx.op.binary.f32(i32 36, float %5688, float %5683)  ; FMin(a,b)
  %5690 = fmul fast float %5686, 2.550000e+02
  %5691 = fadd fast float %5690, 0x3F70101020000000
  %5692 = fptoui float %5691 to i32
  %5693 = fmul fast float %5689, 2.550000e+02
  %5694 = fadd fast float %5693, 0x3F70101020000000
  %5695 = fptoui float %5694 to i32
  %5696 = icmp ult i32 %5692, %5695
  br i1 %5696, label %5697, label %5865

; <label>:5697                                    ; preds = %5666
  %5698 = fcmp fast ogt float %74, 9.843750e-01
  %5699 = fadd fast float %75, -4.000000e+00
  %5700 = select i1 %5698, float -4.000000e+00, float %5699
  %5701 = call float @dx.op.binary.f32(i32 35, float %5700, float 0.000000e+00)  ; FMax(a,b)
  %5702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5702, 0
  %5704 = fadd fast float %5703, %5701
  %5705 = extractvalue %dx.types.CBufRet.f32 %5702, 2
  %5706 = fmul fast float %5704, %5705
  %5707 = call float @dx.op.unary.f32(i32 23, float %5706)  ; Log(value)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5702, 3
  %5709 = fmul fast float %5708, %5707
  %5710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5711 = extractvalue %dx.types.CBufRet.f32 %5710, 2
  %5712 = fmul fast float %5709, %5711
  %5713 = call float @dx.op.unary.f32(i32 7, float %5712)  ; Saturate(value)
  %5714 = uitofp i32 %5692 to float
  %5715 = uitofp i32 %5695 to float
  %5716 = fadd fast float %5714, 5.000000e-01
  %5717 = fadd fast float %5715, 5.000000e-01
  %5718 = fmul fast float %5711, %5716
  %5719 = fmul fast float %5711, %5717
  %5720 = fadd fast float %5718, 0x3F0FFB4800000000
  %5721 = fadd fast float %5719, 0xBF0FFB4800000000
  %5722 = call float @dx.op.binary.f32(i32 35, float %5713, float %5720)  ; FMax(a,b)
  %5723 = call float @dx.op.binary.f32(i32 36, float %5722, float %5721)  ; FMin(a,b)
  %5724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5725 = extractvalue %dx.types.CBufRet.f32 %5724, 1
  %5726 = extractvalue %dx.types.CBufRet.f32 %5724, 2
  %5727 = extractvalue %dx.types.CBufRet.f32 %5724, 0
  %5728 = fmul fast float %5725, %5723
  %5729 = fadd fast float %5727, %5728
  %5730 = fadd fast float %5727, %5726
  %5731 = fsub fast float %5725, %5726
  %5732 = fadd fast float %5731, %5727
  %5733 = call float @dx.op.binary.f32(i32 35, float %5729, float %5730)  ; FMax(a,b)
  %5734 = call float @dx.op.binary.f32(i32 36, float %5733, float %5732)  ; FMin(a,b)
  %5735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %50, float %5672, float %5673, float %5734, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5736 = extractvalue %dx.types.ResRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.ResRet.f32 %5735, 1
  %5738 = extractvalue %dx.types.ResRet.f32 %5735, 2
  %5739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5740 = extractvalue %dx.types.CBufRet.i32 %5739, 0
  %5741 = extractvalue %dx.types.CBufRet.i32 %5739, 1
  %5742 = uitofp i32 %5740 to float
  %5743 = uitofp i32 %5741 to float
  %5744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5745 = extractvalue %dx.types.CBufRet.f32 %5744, 0
  %5746 = extractvalue %dx.types.CBufRet.f32 %5744, 1
  %5747 = fmul fast float %5742, %5672
  %5748 = fmul fast float %5743, %5673
  %5749 = fadd fast float %5747, -5.000000e-01
  %5750 = fadd fast float %5748, -5.000000e-01
  %5751 = call float @dx.op.unary.f32(i32 22, float %5749)  ; Frc(value)
  %5752 = call float @dx.op.unary.f32(i32 22, float %5750)  ; Frc(value)
  %5753 = fmul fast float %5751, %5751
  %5754 = fmul fast float %5753, %5751
  %5755 = fsub fast float 3.000000e+00, %5751
  %5756 = fmul fast float %5753, %5755
  %5757 = fmul fast float %5751, 3.000000e+00
  %5758 = fmul fast float %5754, 3.000000e+00
  %5759 = fmul fast float %5753, 6.000000e+00
  %5760 = fsub fast float %5758, %5759
  %5761 = fadd fast float %5760, 4.000000e+00
  %5762 = fmul fast float %5761, 0x3FC5555560000000
  %5763 = fmul fast float %5754, -3.000000e+00
  %5764 = fadd fast float %5753, %5751
  %5765 = fmul fast float %5764, 3.000000e+00
  %5766 = fadd fast float %5763, 1.000000e+00
  %5767 = fadd fast float %5766, %5765
  %5768 = fmul fast float %5754, 0x3FC5555560000000
  %5769 = fmul fast float %5752, %5752
  %5770 = fmul fast float %5769, %5752
  %5771 = fsub fast float 3.000000e+00, %5752
  %5772 = fmul fast float %5769, %5771
  %5773 = fmul fast float %5752, 3.000000e+00
  %5774 = fmul fast float %5770, 3.000000e+00
  %5775 = fmul fast float %5769, 6.000000e+00
  %5776 = fsub fast float %5774, %5775
  %5777 = fadd fast float %5776, 4.000000e+00
  %5778 = fmul fast float %5777, 0x3FC5555560000000
  %5779 = fmul fast float %5770, -3.000000e+00
  %5780 = fadd fast float %5769, %5752
  %5781 = fmul fast float %5780, 3.000000e+00
  %5782 = fadd fast float %5779, 1.000000e+00
  %5783 = fadd fast float %5782, %5781
  %5784 = fmul fast float %5770, 0x3FC5555560000000
  %5785 = fadd fast float %5751, 1.000000e+00
  %5786 = fsub fast float 1.000000e+00, %5757
  %5787 = fadd fast float %5786, %5756
  %5788 = fadd fast float %5787, %5761
  %5789 = fmul fast float %5788, 0x3FC5555560000000
  %5790 = fdiv fast float %5762, %5789
  %5791 = fsub fast float %5785, %5790
  %5792 = fsub fast float 1.000000e+00, %5751
  %5793 = fadd fast float %5767, %5754
  %5794 = fmul fast float %5793, 0x3FC5555560000000
  %5795 = fdiv fast float %5768, %5794
  %5796 = fadd fast float %5792, %5795
  %5797 = fadd fast float %5752, 1.000000e+00
  %5798 = fsub fast float 1.000000e+00, %5773
  %5799 = fadd fast float %5798, %5772
  %5800 = fadd fast float %5799, %5777
  %5801 = fmul fast float %5800, 0x3FC5555560000000
  %5802 = fdiv fast float %5778, %5801
  %5803 = fsub fast float %5797, %5802
  %5804 = fsub fast float 1.000000e+00, %5752
  %5805 = fadd fast float %5783, %5770
  %5806 = fmul fast float %5805, 0x3FC5555560000000
  %5807 = fdiv fast float %5784, %5806
  %5808 = fadd fast float %5807, %5804
  %5809 = fmul fast float %5791, %5745
  %5810 = fsub fast float %5672, %5809
  %5811 = fmul fast float %5796, %5745
  %5812 = fadd fast float %5811, %5672
  %5813 = fmul fast float %5808, %5746
  %5814 = fadd fast float %5813, %5673
  %5815 = fmul fast float %5803, %5746
  %5816 = fsub fast float %5673, %5815
  %5817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %5810, float %5816, float %5734, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5818 = extractvalue %dx.types.ResRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.ResRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.ResRet.f32 %5817, 2
  %5821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %5812, float %5816, float %5734, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = extractvalue %dx.types.ResRet.f32 %5821, 1
  %5824 = extractvalue %dx.types.ResRet.f32 %5821, 2
  %5825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %5810, float %5814, float %5734, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5826 = extractvalue %dx.types.ResRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.ResRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.ResRet.f32 %5825, 2
  %5829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %5812, float %5814, float %5734, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5830 = extractvalue %dx.types.ResRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.ResRet.f32 %5829, 1
  %5832 = extractvalue %dx.types.ResRet.f32 %5829, 2
  %5833 = fsub fast float %5826, %5818
  %5834 = fsub fast float %5827, %5819
  %5835 = fsub fast float %5828, %5820
  %5836 = fmul fast float %5833, %5806
  %5837 = fmul fast float %5834, %5806
  %5838 = fmul fast float %5835, %5806
  %5839 = fadd fast float %5836, %5818
  %5840 = fadd fast float %5837, %5819
  %5841 = fadd fast float %5838, %5820
  %5842 = fsub fast float %5830, %5822
  %5843 = fsub fast float %5831, %5823
  %5844 = fsub fast float %5832, %5824
  %5845 = fmul fast float %5842, %5806
  %5846 = fmul fast float %5843, %5806
  %5847 = fmul fast float %5844, %5806
  %5848 = fsub fast float %5822, %5839
  %5849 = fadd fast float %5848, %5845
  %5850 = fsub fast float %5823, %5840
  %5851 = fadd fast float %5850, %5846
  %5852 = fsub fast float %5824, %5841
  %5853 = fadd fast float %5852, %5847
  %5854 = fmul fast float %5849, %5794
  %5855 = fmul fast float %5851, %5794
  %5856 = fmul fast float %5853, %5794
  %5857 = fadd fast float %5854, %5839
  %5858 = fadd fast float %5855, %5840
  %5859 = fadd fast float %5856, %5841
  %5860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5860, 1
  %5862 = fmul fast float %5857, %5861
  %5863 = fmul fast float %5858, %5861
  %5864 = fmul fast float %5859, %5861
  br label %5865

; <label>:5865                                    ; preds = %5697, %5666
  %5866 = phi float [ %5736, %5697 ], [ 1.000000e+00, %5666 ]
  %5867 = phi float [ %5737, %5697 ], [ 1.000000e+00, %5666 ]
  %5868 = phi float [ %5738, %5697 ], [ 1.000000e+00, %5666 ]
  %5869 = phi float [ %5862, %5697 ], [ 0.000000e+00, %5666 ]
  %5870 = phi float [ %5863, %5697 ], [ 0.000000e+00, %5666 ]
  %5871 = phi float [ %5864, %5697 ], [ 0.000000e+00, %5666 ]
  %5872 = fmul fast float %5869, %5653
  %5873 = fmul fast float %5870, %5653
  %5874 = fmul fast float %5871, %5653
  %5875 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5867, float %5868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5877 = select i1 %256, float %5875, float %5866
  %5878 = select i1 %256, float %5875, float %5867
  %5879 = select i1 %256, float 1.000000e+00, float %5868
  %5880 = select i1 %256, float %5876, float %5872
  %5881 = select i1 %256, float 0.000000e+00, float %5873
  %5882 = select i1 %256, float 0.000000e+00, float %5874
  %5883 = fmul fast float %5877, %5656
  %5884 = fmul fast float %5878, %5657
  %5885 = fmul fast float %5879, %5658
  %5886 = fadd fast float %5883, %5880
  %5887 = fadd fast float %5884, %5881
  %5888 = fadd fast float %5882, %5885
  %5889 = fmul fast float %5877, %5624
  %5890 = fmul fast float %5878, %5625
  %5891 = fmul fast float %5879, %5626
  %5892 = fmul fast float %87, 2.000000e+00
  %5893 = fmul fast float %5892, %5668
  %5894 = fmul fast float %88, 2.000000e+00
  %5895 = fmul fast float %5894, %5669
  %5896 = fsub fast float 1.000000e+00, %5893
  %5897 = fsub fast float 1.000000e+00, %5895
  %5898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5899 = extractvalue %dx.types.CBufRet.f32 %5898, 0
  %5900 = extractvalue %dx.types.CBufRet.f32 %5898, 1
  %5901 = extractvalue %dx.types.CBufRet.f32 %5898, 2
  %5902 = fmul fast float %5896, %5899
  %5903 = fmul fast float %5896, %5900
  %5904 = fmul fast float %5896, %5901
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5908 = extractvalue %dx.types.CBufRet.f32 %5905, 2
  %5909 = fmul fast float %5897, %5906
  %5910 = fmul fast float %5897, %5907
  %5911 = fmul fast float %5897, %5908
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.CBufRet.f32 %5912, 1
  %5915 = extractvalue %dx.types.CBufRet.f32 %5912, 2
  %5916 = fadd fast float %5909, %5913
  %5917 = fadd fast float %5916, %5902
  %5918 = fadd fast float %5910, %5914
  %5919 = fadd fast float %5918, %5903
  %5920 = fadd fast float %5911, %5915
  %5921 = fadd fast float %5920, %5904
  %5922 = fmul fast float %5917, %217
  %5923 = fmul fast float %5919, %217
  %5924 = fmul fast float %5921, %217
  br label %5925

; <label>:5925                                    ; preds = %5865, %5623
  %5926 = phi float [ %5922, %5865 ], [ %134, %5623 ]
  %5927 = phi float [ %5923, %5865 ], [ %135, %5623 ]
  %5928 = phi float [ %5924, %5865 ], [ %136, %5623 ]
  %5929 = phi float [ %217, %5865 ], [ %75, %5623 ]
  %5930 = phi float [ %5886, %5865 ], [ %5656, %5623 ]
  %5931 = phi float [ %5887, %5865 ], [ %5657, %5623 ]
  %5932 = phi float [ %5888, %5865 ], [ %5658, %5623 ]
  %5933 = phi float [ %5889, %5865 ], [ %5624, %5623 ]
  %5934 = phi float [ %5890, %5865 ], [ %5625, %5623 ]
  %5935 = phi float [ %5891, %5865 ], [ %5626, %5623 ]
  %5936 = phi float [ %5866, %5865 ], [ 1.000000e+00, %5623 ]
  br i1 %5665, label %7091, label %5937

; <label>:5937                                    ; preds = %5925
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.CBufRet.f32 %5938, 2
  %5942 = extractvalue %dx.types.CBufRet.f32 %5938, 3
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.CBufRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.CBufRet.f32 %5943, 2
  %5947 = extractvalue %dx.types.CBufRet.f32 %5943, 3
  %5948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.CBufRet.f32 %5948, 1
  %5951 = extractvalue %dx.types.CBufRet.f32 %5948, 2
  %5952 = extractvalue %dx.types.CBufRet.f32 %5948, 3
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.CBufRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.CBufRet.f32 %5953, 2
  %5957 = extractvalue %dx.types.CBufRet.f32 %5953, 3
  %5958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5958, 3
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 3
  %5962 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5963 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5964 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5965 = fcmp fast olt float %5964, -5.000000e-01
  %5966 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5927, float %5928, float %5926, float %5927, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %5967 = call float @dx.op.unary.f32(i32 25, float %5966)  ; Rsqrt(value)
  %5968 = fmul fast float %5967, %5966
  %5969 = fmul fast float %5967, %5926
  %5970 = fmul fast float %5967, %5927
  %5971 = fmul fast float %5967, %5928
  %5972 = fadd fast float %5968, %5942
  %5973 = call float @dx.op.dot3.f32(i32 55, float %5969, float %5970, float %5971, float %5939, float %5940, float %5941)  ; Dot3(ax,ay,az,bx,by,bz)
  %5974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5975 = extractvalue %dx.types.CBufRet.i32 %5974, 1
  %5976 = and i32 %5975, 1
  %5977 = icmp ne i32 %5976, 0
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5980 = fcmp fast ogt float %5979, 0.000000e+00
  %5981 = and i1 %5977, %5980
  br i1 %5981, label %5982, label %6388, !dx.controlflow.hints !130

; <label>:5982                                    ; preds = %5937
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 3
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 2
  %5987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5987, 2
  %5989 = fsub fast float %5986, %5988
  %5990 = and i32 %5975, 2
  %5991 = extractvalue %dx.types.CBufRet.i32 %5974, 0
  %5992 = call i32 @dx.op.binary.i32(i32 40, i32 %5991, i32 3)  ; UMin(a,b)
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 0
  %5995 = extractvalue %dx.types.CBufRet.f32 %5993, 1
  %5996 = extractvalue %dx.types.CBufRet.f32 %5987, 0
  %5997 = extractvalue %dx.types.CBufRet.f32 %5987, 1
  %5998 = fsub fast float %5994, %5996
  %5999 = fsub fast float %5995, %5997
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6002 = fcmp fast ogt float %6001, 0.000000e+00
  %6003 = fsub fast float -0.000000e+00, %5998
  %6004 = fsub fast float -0.000000e+00, %5999
  %6005 = call float @dx.op.dot2.f32(i32 54, float %5969, float %5970, float %5969, float %5970)  ; Dot2(ax,ay,bx,by)
  %6006 = call float @dx.op.dot2.f32(i32 54, float %5969, float %5970, float %6003, float %6004)  ; Dot2(ax,ay,bx,by)
  %6007 = fmul fast float %6006, 2.000000e+00
  %6008 = call float @dx.op.dot2.f32(i32 54, float %6003, float %6004, float %6003, float %6004)  ; Dot2(ax,ay,bx,by)
  %6009 = fmul fast float %6001, %6001
  %6010 = fsub fast float %6008, %6009
  %6011 = fmul fast float %6007, %6007
  %6012 = fmul fast float %6005, 4.000000e+00
  %6013 = fmul fast float %6012, %6010
  %6014 = fsub fast float %6011, %6013
  %6015 = fcmp fast ogt float %6014, 0.000000e+00
  br i1 %6015, label %6016, label %6031

; <label>:6016                                    ; preds = %5982
  %6017 = fcmp fast ogt float %6007, 0.000000e+00
  %6018 = call float @dx.op.unary.f32(i32 24, float %6014)  ; Sqrt(value)
  %6019 = fsub fast float -0.000000e+00, %6018
  %6020 = select i1 %6017, float %6018, float %6019
  %6021 = fadd fast float %6020, %6007
  %6022 = fmul float %6021, -5.000000e-01
  %6023 = fdiv fast float %6022, %6005
  %6024 = call float @dx.op.binary.f32(i32 35, float %6023, float 0.000000e+00)  ; FMax(a,b)
  %6025 = call float @dx.op.binary.f32(i32 36, float %5968, float %6024)  ; FMin(a,b)
  %6026 = fdiv fast float %6010, %6022
  %6027 = call float @dx.op.binary.f32(i32 35, float %6026, float 0.000000e+00)  ; FMax(a,b)
  %6028 = call float @dx.op.binary.f32(i32 36, float %5968, float %6027)  ; FMin(a,b)
  %6029 = call float @dx.op.binary.f32(i32 36, float %6025, float %6028)  ; FMin(a,b)
  %6030 = call float @dx.op.binary.f32(i32 35, float %6025, float %6028)  ; FMax(a,b)
  br label %6031

; <label>:6031                                    ; preds = %6016, %5982
  %6032 = phi float [ %6030, %6016 ], [ -1.000000e+00, %5982 ]
  %6033 = phi float [ %6029, %6016 ], [ -1.000000e+00, %5982 ]
  %6034 = phi i1 [ true, %6016 ], [ false, %5982 ]
  %6035 = and i1 %6002, %6034
  br i1 %6035, label %6036, label %6038

; <label>:6036                                    ; preds = %6031
  %6037 = fcmp fast oeq float %6033, %6032
  br i1 %6037, label %6341, label %6039

; <label>:6038                                    ; preds = %6031
  br i1 %6002, label %6341, label %6039

; <label>:6039                                    ; preds = %6038, %6036
  %6040 = phi float [ %5968, %6038 ], [ %6032, %6036 ]
  %6041 = phi float [ 0.000000e+00, %6038 ], [ %6033, %6036 ]
  %6042 = icmp ne i32 %5990, 0
  %6043 = fmul fast float %6040, %5971
  %6044 = fadd fast float %6043, %5984
  %6045 = fmul fast float %6044, %6040
  %6046 = select i1 %6042, float 0.000000e+00, float %6045
  %6047 = fcmp fast oeq float %5971, 0.000000e+00
  %6048 = fdiv fast float %5989, %5971
  %6049 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6048)  ; FMax(a,b)
  %6050 = select i1 %6047, float %6040, float %6049
  %6051 = call float @dx.op.binary.f32(i32 36, float %6040, float %6050)  ; FMin(a,b)
  %6052 = fcmp fast ogt float %5971, 0.000000e+00
  %6053 = fcmp fast olt float %5989, 0.000000e+00
  br i1 %6052, label %6054, label %6111

; <label>:6054                                    ; preds = %6039
  %6055 = icmp eq i32 %5990, 0
  br i1 %6053, label %6056, label %6100

; <label>:6056                                    ; preds = %6054
  %6057 = select i1 %6055, float %6040, float 0.000000e+00
  %6058 = fsub fast float -0.000000e+00, %6057
  %6059 = call float @dx.op.unary.f32(i32 6, float %6058)  ; FAbs(value)
  %6060 = fmul fast float %6057, %5971
  %6061 = fadd fast float %6060, %5984
  %6062 = fmul fast float %6059, %6061
  %6063 = fsub fast float %6046, %6062
  %6064 = fsub fast float %6040, %6059
  %6065 = select i1 %6055, float %6064, float 0.000000e+00
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 0
  %6068 = extractvalue %dx.types.CBufRet.f32 %6066, 1
  %6069 = extractvalue %dx.types.CBufRet.f32 %6066, 2
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 0
  %6072 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6073 = extractvalue %dx.types.CBufRet.f32 %6070, 2
  %6074 = extractvalue %dx.types.CBufRet.f32 %6070, 3
  %6075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6076 = extractvalue %dx.types.CBufRet.f32 %6075, 3
  %6077 = call float @dx.op.binary.f32(i32 36, float %6063, float %6076)  ; FMin(a,b)
  %6078 = fmul fast float %6074, %6065
  %6079 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  %6080 = fsub fast float %6071, %6067
  %6081 = fsub fast float %6072, %6068
  %6082 = fsub fast float %6073, %6069
  %6083 = fmul fast float %6079, %6080
  %6084 = fmul fast float %6079, %6081
  %6085 = fmul fast float %6079, %6082
  %6086 = fadd fast float %6083, %6067
  %6087 = fadd fast float %6084, %6068
  %6088 = fadd fast float %6085, %6069
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.CBufRet.f32 %6089, 1
  %6092 = fadd fast float %6091, %6090
  %6093 = call float @dx.op.unary.f32(i32 7, float %6092)  ; Saturate(value)
  %6094 = extractvalue %dx.types.CBufRet.f32 %6089, 2
  %6095 = extractvalue %dx.types.CBufRet.f32 %6089, 3
  %6096 = fadd fast float %6095, %6094
  %6097 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  %6098 = fmul fast float %6093, %6077
  %6099 = fmul fast float %6098, %6097
  br label %6341

; <label>:6100                                    ; preds = %6054
  br i1 %6055, label %6101, label %6122

; <label>:6101                                    ; preds = %6100
  %6102 = call float @dx.op.binary.f32(i32 36, float %6051, float %6041)  ; FMin(a,b)
  %6103 = fsub fast float %6051, %6102
  %6104 = fsub fast float %6103, %6040
  %6105 = call float @dx.op.unary.f32(i32 6, float %6104)  ; FAbs(value)
  %6106 = fadd fast float %6103, %6040
  %6107 = fmul fast float %6106, %5971
  %6108 = fadd fast float %6107, %5984
  %6109 = fmul fast float %6108, %6105
  %6110 = fsub fast float %6046, %6109
  br label %6122

; <label>:6111                                    ; preds = %6039
  br i1 %6053, label %6112, label %6122

; <label>:6112                                    ; preds = %6111
  %6113 = call float @dx.op.binary.f32(i32 35, float %6041, float %6051)  ; FMax(a,b)
  %6114 = icmp eq i32 %5990, 0
  %6115 = select i1 %6114, float %6051, float 0.000000e+00
  %6116 = fsub fast float -0.000000e+00, %6115
  %6117 = call float @dx.op.unary.f32(i32 6, float %6116)  ; FAbs(value)
  %6118 = fmul fast float %6115, %5971
  %6119 = fadd fast float %6118, %5984
  %6120 = fmul fast float %6117, %6119
  %6121 = fsub fast float %6046, %6120
  br label %6122

; <label>:6122                                    ; preds = %6112, %6111, %6101, %6100
  %6123 = phi float [ %6041, %6100 ], [ %6041, %6101 ], [ %6113, %6112 ], [ %6041, %6111 ]
  %6124 = phi float [ 0.000000e+00, %6100 ], [ %6105, %6101 ], [ %6117, %6112 ], [ 0.000000e+00, %6111 ]
  %6125 = phi float [ %6046, %6100 ], [ %6110, %6101 ], [ %6121, %6112 ], [ %6046, %6111 ]
  %6126 = phi float [ %6051, %6100 ], [ %6051, %6101 ], [ %6040, %6112 ], [ %6040, %6111 ]
  %6127 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %6127, align 4, !tbaa !120, !noalias !131
  %6128 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %6128, align 4, !tbaa !120, !noalias !131
  %6129 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %6129, align 4, !tbaa !120, !noalias !131
  %6130 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %6130, align 4, !tbaa !120, !noalias !131
  %6131 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %6131, align 4, !tbaa !120, !noalias !131
  %6132 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %6132, align 4, !tbaa !120, !noalias !131
  %6133 = icmp sgt i32 %5992, 0
  br i1 %6133, label %6134, label %6195

; <label>:6134                                    ; preds = %6122
  br label %6135

; <label>:6135                                    ; preds = %6184, %6134
  %6136 = phi i32 [ %6185, %6184 ], [ 0, %6134 ]
  %6137 = phi i32 [ %6186, %6184 ], [ 0, %6134 ]
  %6138 = add nuw i32 %6137, 171
  %6139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %6138)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6139, 0
  %6141 = extractvalue %dx.types.CBufRet.f32 %6139, 1
  %6142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.CBufRet.f32 %6142, 1
  %6145 = fsub fast float %6140, %6143
  %6146 = fsub fast float %6141, %6144
  %6147 = extractvalue %dx.types.CBufRet.f32 %6139, 2
  %6148 = fsub fast float -0.000000e+00, %6145
  %6149 = fsub fast float -0.000000e+00, %6146
  %6150 = call float @dx.op.dot2.f32(i32 54, float %5969, float %5970, float %6148, float %6149)  ; Dot2(ax,ay,bx,by)
  %6151 = fmul fast float %6150, 2.000000e+00
  %6152 = call float @dx.op.dot2.f32(i32 54, float %6148, float %6149, float %6148, float %6149)  ; Dot2(ax,ay,bx,by)
  %6153 = fmul fast float %6147, %6147
  %6154 = fsub fast float %6152, %6153
  %6155 = fmul fast float %6151, %6151
  %6156 = fmul fast float %6012, %6154
  %6157 = fsub fast float %6155, %6156
  %6158 = fcmp fast ogt float %6157, 0.000000e+00
  br i1 %6158, label %6159, label %6174

; <label>:6159                                    ; preds = %6135
  %6160 = fcmp fast ogt float %6151, 0.000000e+00
  %6161 = call float @dx.op.unary.f32(i32 24, float %6157)  ; Sqrt(value)
  %6162 = fsub fast float -0.000000e+00, %6161
  %6163 = select i1 %6160, float %6161, float %6162
  %6164 = fadd fast float %6163, %6151
  %6165 = fmul float %6164, -5.000000e-01
  %6166 = fdiv fast float %6165, %6005
  %6167 = call float @dx.op.binary.f32(i32 35, float %6166, float 0.000000e+00)  ; FMax(a,b)
  %6168 = call float @dx.op.binary.f32(i32 36, float %6040, float %6167)  ; FMin(a,b)
  %6169 = fdiv fast float %6154, %6165
  %6170 = call float @dx.op.binary.f32(i32 35, float %6169, float 0.000000e+00)  ; FMax(a,b)
  %6171 = call float @dx.op.binary.f32(i32 36, float %6040, float %6170)  ; FMin(a,b)
  %6172 = call float @dx.op.binary.f32(i32 36, float %6168, float %6171)  ; FMin(a,b)
  %6173 = call float @dx.op.binary.f32(i32 35, float %6168, float %6171)  ; FMax(a,b)
  br label %6174

; <label>:6174                                    ; preds = %6159, %6135
  %6175 = phi float [ %6173, %6159 ], [ -1.000000e+00, %6135 ]
  %6176 = phi float [ %6172, %6159 ], [ -1.000000e+00, %6135 ]
  %6177 = phi i1 [ true, %6159 ], [ false, %6135 ]
  br i1 %6177, label %6178, label %6184

; <label>:6178                                    ; preds = %6174
  %6179 = call float @dx.op.binary.f32(i32 35, float %6123, float %6176)  ; FMax(a,b)
  %6180 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %6137
  store float %6179, float* %6180, align 4, !tbaa !120, !noalias !131
  %6181 = call float @dx.op.binary.f32(i32 35, float %6123, float %6175)  ; FMax(a,b)
  %6182 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %6137
  store float %6181, float* %6182, align 4, !tbaa !120, !noalias !131
  %6183 = add nsw i32 %6136, 1
  br label %6184

; <label>:6184                                    ; preds = %6178, %6174
  %6185 = phi i32 [ %6183, %6178 ], [ %6136, %6174 ]
  %6186 = add nuw nsw i32 %6137, 1
  %6187 = icmp eq i32 %6186, %5992
  br i1 %6187, label %6188, label %6135

; <label>:6188                                    ; preds = %6184
  %6189 = load float, float* %6129, align 4, !tbaa !120, !alias.scope !147, !noalias !150
  %6190 = load float, float* %6128, align 4, !tbaa !120, !alias.scope !153, !noalias !154
  %6191 = load float, float* %6127, align 4, !tbaa !120, !alias.scope !155, !noalias !156
  %6192 = load float, float* %6132, align 4, !tbaa !120, !alias.scope !157, !noalias !160
  %6193 = load float, float* %6131, align 4, !tbaa !120, !alias.scope !163, !noalias !164
  %6194 = load float, float* %6130, align 4, !tbaa !120, !alias.scope !165, !noalias !166
  br label %6195

; <label>:6195                                    ; preds = %6188, %6122
  %6196 = phi float [ -1.000000e+00, %6122 ], [ %6194, %6188 ]
  %6197 = phi float [ -1.000000e+00, %6122 ], [ %6193, %6188 ]
  %6198 = phi float [ -1.000000e+00, %6122 ], [ %6192, %6188 ]
  %6199 = phi float [ -1.000000e+00, %6122 ], [ %6191, %6188 ]
  %6200 = phi float [ -1.000000e+00, %6122 ], [ %6190, %6188 ]
  %6201 = phi float [ -1.000000e+00, %6122 ], [ %6189, %6188 ]
  %6202 = phi i32 [ 0, %6122 ], [ %6185, %6188 ]
  %6203 = call float @dx.op.binary.f32(i32 36, float %6200, float %6201)  ; FMin(a,b)
  %6204 = call float @dx.op.binary.f32(i32 36, float %6199, float %6203)  ; FMin(a,b)
  %6205 = call float @dx.op.binary.f32(i32 35, float %6199, float %6200)  ; FMax(a,b)
  %6206 = call float @dx.op.binary.f32(i32 36, float %6205, float %6201)  ; FMin(a,b)
  %6207 = call float @dx.op.binary.f32(i32 36, float %6199, float %6200)  ; FMin(a,b)
  %6208 = call float @dx.op.binary.f32(i32 35, float %6207, float %6206)  ; FMax(a,b)
  %6209 = call float @dx.op.binary.f32(i32 35, float %6200, float %6201)  ; FMax(a,b)
  %6210 = call float @dx.op.binary.f32(i32 35, float %6199, float %6209)  ; FMax(a,b)
  store float %6204, float* %6127, align 4, !tbaa !120, !alias.scope !155, !noalias !156
  store float %6208, float* %6128, align 4, !tbaa !120, !alias.scope !153, !noalias !154
  store float %6210, float* %6129, align 4, !tbaa !120, !alias.scope !147, !noalias !150
  %6211 = call float @dx.op.binary.f32(i32 36, float %6197, float %6198)  ; FMin(a,b)
  %6212 = call float @dx.op.binary.f32(i32 36, float %6196, float %6211)  ; FMin(a,b)
  %6213 = call float @dx.op.binary.f32(i32 35, float %6196, float %6197)  ; FMax(a,b)
  %6214 = call float @dx.op.binary.f32(i32 36, float %6213, float %6198)  ; FMin(a,b)
  %6215 = call float @dx.op.binary.f32(i32 36, float %6196, float %6197)  ; FMin(a,b)
  %6216 = call float @dx.op.binary.f32(i32 35, float %6215, float %6214)  ; FMax(a,b)
  %6217 = call float @dx.op.binary.f32(i32 35, float %6197, float %6198)  ; FMax(a,b)
  %6218 = call float @dx.op.binary.f32(i32 35, float %6196, float %6217)  ; FMax(a,b)
  store float %6212, float* %6130, align 4, !tbaa !120, !alias.scope !165, !noalias !166
  store float %6216, float* %6131, align 4, !tbaa !120, !alias.scope !163, !noalias !164
  store float %6218, float* %6132, align 4, !tbaa !120, !alias.scope !157, !noalias !160
  %6219 = sub nsw i32 3, %6202
  %6220 = icmp sgt i32 %6219, 2
  br i1 %6220, label %6221, label %6259

; <label>:6221                                    ; preds = %6195
  %6222 = icmp eq i32 %5990, 0
  %6223 = fsub fast float %6040, %6124
  %6224 = select i1 %6222, float %6223, float %6124
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 0
  %6227 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %6228 = extractvalue %dx.types.CBufRet.f32 %6225, 2
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.CBufRet.f32 %6229, 1
  %6232 = extractvalue %dx.types.CBufRet.f32 %6229, 2
  %6233 = extractvalue %dx.types.CBufRet.f32 %6229, 3
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6236 = call float @dx.op.binary.f32(i32 36, float %6125, float %6235)  ; FMin(a,b)
  %6237 = fmul fast float %6233, %6224
  %6238 = call float @dx.op.unary.f32(i32 7, float %6237)  ; Saturate(value)
  %6239 = fsub fast float %6230, %6226
  %6240 = fsub fast float %6231, %6227
  %6241 = fsub fast float %6232, %6228
  %6242 = fmul fast float %6238, %6239
  %6243 = fmul fast float %6238, %6240
  %6244 = fmul fast float %6238, %6241
  %6245 = fadd fast float %6242, %6226
  %6246 = fadd fast float %6243, %6227
  %6247 = fadd fast float %6244, %6228
  %6248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.CBufRet.f32 %6248, 1
  %6251 = fadd fast float %6250, %6249
  %6252 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6248, 2
  %6254 = extractvalue %dx.types.CBufRet.f32 %6248, 3
  %6255 = fadd fast float %6254, %6253
  %6256 = call float @dx.op.unary.f32(i32 7, float %6255)  ; Saturate(value)
  %6257 = fmul fast float %6252, %6236
  %6258 = fmul fast float %6257, %6256
  br label %6341

; <label>:6259                                    ; preds = %6195
  %6260 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %6219
  %6261 = load float, float* %6260, align 4, !tbaa !120, !noalias !131
  %6262 = fcmp fast olt float %6261, %6126
  %6263 = icmp sgt i32 %6202, 0
  %6264 = and i1 %6263, %6262
  br i1 %6264, label %6265, label %6302

; <label>:6265                                    ; preds = %6259
  br label %6266

; <label>:6266                                    ; preds = %6295, %6265
  %6267 = phi float [ %6296, %6295 ], [ %6124, %6265 ]
  %6268 = phi float [ %6297, %6295 ], [ %6125, %6265 ]
  %6269 = phi float [ %6277, %6295 ], [ %6261, %6265 ]
  %6270 = phi i32 [ %6274, %6295 ], [ %6219, %6265 ]
  %6271 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %6270
  %6272 = load float, float* %6271, align 4, !tbaa !120, !noalias !131
  %6273 = icmp slt i32 %6270, 2
  %6274 = add nsw i32 %6270, 1
  %6275 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %6274
  %6276 = load float, float* %6275, align 4, !tbaa !120, !noalias !131
  %6277 = select i1 %6273, float %6276, float %6040
  %6278 = call float @dx.op.binary.f32(i32 36, float %6277, float %6272)  ; FMin(a,b)
  %6279 = call float @dx.op.binary.f32(i32 36, float %6126, float %6278)  ; FMin(a,b)
  %6280 = icmp eq i32 %5990, 0
  %6281 = fadd fast float %6279, %6269
  %6282 = fmul fast float %6281, %5971
  %6283 = fadd fast float %6282, %5984
  br i1 %6280, label %6289, label %6284

; <label>:6284                                    ; preds = %6266
  %6285 = fsub fast float %6279, %6269
  %6286 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6285)  ; FMax(a,b)
  %6287 = fmul fast float %6286, %6283
  %6288 = fadd fast float %6287, %6268
  br label %6295

; <label>:6289                                    ; preds = %6266
  %6290 = fsub fast float %6269, %6279
  %6291 = call float @dx.op.unary.f32(i32 6, float %6290)  ; FAbs(value)
  %6292 = fadd fast float %6291, %6267
  %6293 = fmul fast float %6291, %6283
  %6294 = fsub fast float %6268, %6293
  br label %6295

; <label>:6295                                    ; preds = %6289, %6284
  %6296 = phi float [ %6286, %6284 ], [ %6292, %6289 ]
  %6297 = phi float [ %6288, %6284 ], [ %6294, %6289 ]
  %6298 = fcmp fast olt float %6277, %6126
  %6299 = icmp slt i32 %6274, 3
  %6300 = and i1 %6299, %6298
  br i1 %6300, label %6266, label %6301

; <label>:6301                                    ; preds = %6295
  br label %6302

; <label>:6302                                    ; preds = %6301, %6259
  %6303 = phi float [ %6124, %6259 ], [ %6296, %6301 ]
  %6304 = phi float [ %6125, %6259 ], [ %6297, %6301 ]
  %6305 = fsub fast float %6040, %6303
  %6306 = select i1 %6042, float %6303, float %6305
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6307, 0
  %6309 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6310 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 0
  %6313 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6314 = extractvalue %dx.types.CBufRet.f32 %6311, 2
  %6315 = extractvalue %dx.types.CBufRet.f32 %6311, 3
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 3
  %6318 = call float @dx.op.binary.f32(i32 36, float %6304, float %6317)  ; FMin(a,b)
  %6319 = fmul fast float %6315, %6306
  %6320 = call float @dx.op.unary.f32(i32 7, float %6319)  ; Saturate(value)
  %6321 = fsub fast float %6312, %6308
  %6322 = fsub fast float %6313, %6309
  %6323 = fsub fast float %6314, %6310
  %6324 = fmul fast float %6320, %6321
  %6325 = fmul fast float %6320, %6322
  %6326 = fmul fast float %6320, %6323
  %6327 = fadd fast float %6324, %6308
  %6328 = fadd fast float %6325, %6309
  %6329 = fadd fast float %6326, %6310
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 0
  %6332 = extractvalue %dx.types.CBufRet.f32 %6330, 1
  %6333 = fadd fast float %6332, %6331
  %6334 = call float @dx.op.unary.f32(i32 7, float %6333)  ; Saturate(value)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %6336 = extractvalue %dx.types.CBufRet.f32 %6330, 3
  %6337 = fadd fast float %6336, %6335
  %6338 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  %6339 = fmul fast float %6334, %6318
  %6340 = fmul fast float %6339, %6338
  br label %6341

; <label>:6341                                    ; preds = %6302, %6221, %6056, %6038, %6036
  %6342 = phi float [ %6065, %6056 ], [ %6224, %6221 ], [ %6306, %6302 ], [ 0.000000e+00, %6036 ], [ 0.000000e+00, %6038 ]
  %6343 = phi float [ %6099, %6056 ], [ %6258, %6221 ], [ %6340, %6302 ], [ 0.000000e+00, %6036 ], [ 0.000000e+00, %6038 ]
  %6344 = phi float [ %6086, %6056 ], [ %6245, %6221 ], [ %6327, %6302 ], [ 0.000000e+00, %6036 ], [ 0.000000e+00, %6038 ]
  %6345 = phi float [ %6087, %6056 ], [ %6246, %6221 ], [ %6328, %6302 ], [ 0.000000e+00, %6036 ], [ 0.000000e+00, %6038 ]
  %6346 = phi float [ %6088, %6056 ], [ %6247, %6221 ], [ %6329, %6302 ], [ 0.000000e+00, %6036 ], [ 0.000000e+00, %6038 ]
  %6347 = fmul fast float %5979, %6343
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 2
  %6350 = fsub fast float %5986, %6349
  %6351 = fcmp fast olt float %6347, -2.000000e+01
  %6352 = call float @dx.op.unary.f32(i32 21, float %6347)  ; Exp(value)
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 2
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 3
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 2
  %6358 = fmul fast float %6355, %6350
  %6359 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6360 = fsub fast float 1.000000e+00, %6359
  %6361 = fmul fast float %5971, 5.000000e-01
  %6362 = fadd fast float %6361, 5.000000e-01
  %6363 = call float @dx.op.unary.f32(i32 7, float %6362)  ; Saturate(value)
  %6364 = fsub fast float 1.000000e+00, %6363
  %6365 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6360)  ; FMax(a,b)
  %6366 = fdiv fast float %6364, %6365
  %6367 = fsub fast float %6350, %5928
  %6368 = call float @dx.op.unary.f32(i32 6, float %6367)  ; FAbs(value)
  %6369 = fmul fast float %6368, %6354
  %6370 = call float @dx.op.unary.f32(i32 7, float %6366)  ; Saturate(value)
  %6371 = fsub fast float 1.000000e+00, %6369
  %6372 = fmul fast float %6371, %6370
  %6373 = fadd fast float %6372, %6369
  %6374 = fmul fast float %6357, %6350
  %6375 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  %6376 = fsub fast float 1.000000e+00, %6373
  %6377 = fmul fast float %6376, %6375
  %6378 = fadd fast float %6377, %6373
  %6379 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6380 = fadd fast float %6352, -1.000000e+00
  %6381 = select i1 %6351, float -1.000000e+00, float %6380
  %6382 = fmul fast float %6379, %6381
  %6383 = fadd fast float %6382, 1.000000e+00
  %6384 = fsub fast float -0.000000e+00, %6382
  %6385 = fmul fast float %6344, %6384
  %6386 = fmul fast float %6345, %6384
  %6387 = fmul fast float %6346, %6384
  br label %6388

; <label>:6388                                    ; preds = %6341, %5937
  %6389 = phi float [ %6342, %6341 ], [ 0.000000e+00, %5937 ]
  %6390 = phi float [ %6383, %6341 ], [ 1.000000e+00, %5937 ]
  %6391 = phi float [ %6385, %6341 ], [ 0.000000e+00, %5937 ]
  %6392 = phi float [ %6386, %6341 ], [ 0.000000e+00, %5937 ]
  %6393 = phi float [ %6387, %6341 ], [ 0.000000e+00, %5937 ]
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6396 = fsub fast float 1.000000e+00, %6390
  %6397 = fmul fast float %6396, %5972
  %6398 = fmul fast float %6397, %6395
  %6399 = fsub fast float %5972, %6398
  br i1 %5965, label %6400, label %6429, !dx.controlflow.hints !167

; <label>:6400                                    ; preds = %6388
  %6401 = fmul fast float %5973, %5962
  %6402 = fadd fast float %6401, %5963
  %6403 = call float @dx.op.unary.f32(i32 7, float %6402)  ; Saturate(value)
  %6404 = fmul fast float %5944, %6399
  %6405 = fsub fast float -0.000000e+00, %6404
  %6406 = fmul fast float %5945, %6399
  %6407 = fsub fast float -0.000000e+00, %6406
  %6408 = call float @dx.op.unary.f32(i32 21, float %6405)  ; Exp(value)
  %6409 = call float @dx.op.unary.f32(i32 21, float %6407)  ; Exp(value)
  %6410 = call float @dx.op.binary.f32(i32 35, float %5952, float %6408)  ; FMax(a,b)
  %6411 = call float @dx.op.binary.f32(i32 35, float %5952, float %6409)  ; FMax(a,b)
  %6412 = fsub fast float %6411, %6410
  %6413 = fmul fast float %6412, %6403
  %6414 = fadd fast float %6413, %6410
  %6415 = call float @dx.op.unary.f32(i32 7, float %6414)  ; Saturate(value)
  %6416 = fsub fast float %5949, %5954
  %6417 = fsub fast float %5950, %5955
  %6418 = fsub fast float %5951, %5956
  %6419 = fmul fast float %6403, %6416
  %6420 = fmul fast float %6403, %6417
  %6421 = fmul fast float %6403, %6418
  %6422 = fadd fast float %6419, %5954
  %6423 = fadd fast float %6420, %5955
  %6424 = fadd fast float %6421, %5956
  %6425 = fsub fast float 1.000000e+00, %6415
  %6426 = fmul fast float %6425, %6422
  %6427 = fmul fast float %6425, %6423
  %6428 = fmul fast float %6425, %6424
  br label %6488

; <label>:6429                                    ; preds = %6388
  %6430 = fmul fast float %6399, %5961
  %6431 = call float @dx.op.unary.f32(i32 7, float %6430)  ; Saturate(value)
  %6432 = fsub fast float 2.000000e+00, %6431
  %6433 = fmul fast float %6431, 9.921875e-01
  %6434 = fmul fast float %6433, %6432
  %6435 = fadd fast float %6434, 3.906250e-03
  %6436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %52, float %6435, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 0
  %6438 = fsub fast float %6431, %6437
  %6439 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6438)  ; FMax(a,b)
  %6440 = fmul fast float %5947, %5928
  %6441 = call float @dx.op.unary.f32(i32 6, float %6440)  ; FAbs(value)
  %6442 = fcmp fast ogt float %6441, 0x3EB0C6F7A0000000
  br i1 %6442, label %6443, label %6449, !dx.controlflow.hints !168

; <label>:6443                                    ; preds = %6429
  %6444 = fmul fast float %6440, 0xBFF7154760000000
  %6445 = call float @dx.op.unary.f32(i32 21, float %6444)  ; Exp(value)
  %6446 = fsub fast float 1.000000e+00, %6445
  %6447 = fdiv fast float %6446, %6440
  %6448 = fmul fast float %6447, %5957
  br label %6449

; <label>:6449                                    ; preds = %6443, %6429
  %6450 = phi float [ %6448, %6443 ], [ %5957, %6429 ]
  %6451 = fadd fast float %6450, %5959
  %6452 = fmul fast float %6451, %6439
  %6453 = fmul fast float %5944, %6452
  %6454 = fsub fast float -0.000000e+00, %6453
  %6455 = fmul fast float %5945, %6452
  %6456 = fsub fast float -0.000000e+00, %6455
  %6457 = fmul fast float %5946, %6452
  %6458 = fsub fast float -0.000000e+00, %6457
  %6459 = call float @dx.op.unary.f32(i32 21, float %6454)  ; Exp(value)
  %6460 = call float @dx.op.unary.f32(i32 21, float %6456)  ; Exp(value)
  %6461 = call float @dx.op.unary.f32(i32 21, float %6458)  ; Exp(value)
  %6462 = fmul fast float %5973, %5973
  %6463 = fadd fast float %6462, 1.000000e+00
  %6464 = fmul fast float %6463, 0x3FAE8EC8A0000000
  %6465 = fmul fast float %6464, %5954
  %6466 = fmul fast float %6464, %5955
  %6467 = fmul fast float %6464, %5956
  %6468 = fmul fast float %5973, %5952
  %6469 = fsub fast float 1.000000e+00, %6468
  %6470 = fmul fast float %5952, %5952
  %6471 = fsub fast float 1.000000e+00, %6470
  %6472 = fmul fast float %6471, 0x3FB45F3060000000
  %6473 = fmul fast float %6469, %6469
  %6474 = fdiv fast float 1.000000e+00, %6473
  %6475 = fmul fast float %6472, %6474
  %6476 = fmul fast float %6475, %5949
  %6477 = fmul fast float %6475, %5950
  %6478 = fmul fast float %6475, %5951
  %6479 = fadd fast float %6476, %6465
  %6480 = fadd fast float %6477, %6466
  %6481 = fadd fast float %6478, %6467
  %6482 = fsub fast float 1.000000e+00, %6459
  %6483 = fsub fast float 1.000000e+00, %6460
  %6484 = fsub fast float 1.000000e+00, %6461
  %6485 = fmul fast float %6479, %6482
  %6486 = fmul fast float %6480, %6483
  %6487 = fmul fast float %6481, %6484
  br label %6488

; <label>:6488                                    ; preds = %6449, %6400
  %6489 = phi float [ %6426, %6400 ], [ %6485, %6449 ]
  %6490 = phi float [ %6427, %6400 ], [ %6486, %6449 ]
  %6491 = phi float [ %6428, %6400 ], [ %6487, %6449 ]
  %6492 = phi float [ %6415, %6400 ], [ %6459, %6449 ]
  %6493 = phi float [ %6415, %6400 ], [ %6460, %6449 ]
  %6494 = phi float [ %6415, %6400 ], [ %6461, %6449 ]
  br i1 %5981, label %6495, label %6693, !dx.controlflow.hints !169

; <label>:6495                                    ; preds = %6488
  %6496 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6497 = fmul fast float %6496, %6396
  %6498 = fsub fast float %6391, %6489
  %6499 = fsub fast float %6392, %6490
  %6500 = fsub fast float %6393, %6491
  %6501 = fmul fast float %6497, %6498
  %6502 = fmul fast float %6497, %6499
  %6503 = fmul fast float %6497, %6500
  %6504 = fadd fast float %6501, %6489
  %6505 = fadd fast float %6502, %6490
  %6506 = fadd fast float %6503, %6491
  %6507 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6492)  ; FMax(a,b)
  %6508 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6493)  ; FMax(a,b)
  %6509 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6494)  ; FMax(a,b)
  %6510 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6390)  ; FMax(a,b)
  %6511 = call float @dx.op.binary.f32(i32 35, float %6389, float %6399)  ; FMax(a,b)
  %6512 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6511)  ; FMax(a,b)
  %6513 = fdiv fast float %6389, %6512
  %6514 = call float @dx.op.unary.f32(i32 7, float %6513)  ; Saturate(value)
  %6515 = fdiv fast float %6399, %6512
  %6516 = call float @dx.op.unary.f32(i32 7, float %6515)  ; Saturate(value)
  %6517 = fcmp fast une float %6510, 1.000000e+00
  br i1 %6517, label %6518, label %6531, !dx.controlflow.hints !170

; <label>:6518                                    ; preds = %6495
  %6519 = call float @dx.op.unary.f32(i32 23, float %6510)  ; Log(value)
  %6520 = fmul fast float %6519, 0x3FE62E4300000000
  %6521 = fmul fast float %6391, %6520
  %6522 = fsub fast float -0.000000e+00, %6521
  %6523 = fmul fast float %6392, %6520
  %6524 = fsub fast float -0.000000e+00, %6523
  %6525 = fmul fast float %6393, %6520
  %6526 = fsub fast float -0.000000e+00, %6525
  %6527 = fsub fast float 1.000000e+00, %6510
  %6528 = fdiv fast float %6522, %6527
  %6529 = fdiv fast float %6524, %6527
  %6530 = fdiv fast float %6526, %6527
  br label %6531

; <label>:6531                                    ; preds = %6518, %6495
  %6532 = phi float [ %6528, %6518 ], [ %6391, %6495 ]
  %6533 = phi float [ %6529, %6518 ], [ %6392, %6495 ]
  %6534 = phi float [ %6530, %6518 ], [ %6393, %6495 ]
  %6535 = phi float [ %6520, %6518 ], [ 0.000000e+00, %6495 ]
  %6536 = fcmp fast une float %6507, 1.000000e+00
  br i1 %6536, label %6537, label %6544, !dx.controlflow.hints !171

; <label>:6537                                    ; preds = %6531
  %6538 = call float @dx.op.unary.f32(i32 23, float %6507)  ; Log(value)
  %6539 = fmul fast float %6538, 0x3FE62E4300000000
  %6540 = fmul fast float %6504, %6539
  %6541 = fsub fast float -0.000000e+00, %6540
  %6542 = fsub fast float 1.000000e+00, %6507
  %6543 = fdiv fast float %6541, %6542
  br label %6544

; <label>:6544                                    ; preds = %6537, %6531
  %6545 = phi float [ %6543, %6537 ], [ %6504, %6531 ]
  %6546 = phi float [ %6539, %6537 ], [ 0.000000e+00, %6531 ]
  %6547 = fcmp fast une float %6508, 1.000000e+00
  br i1 %6547, label %6548, label %6555, !dx.controlflow.hints !171

; <label>:6548                                    ; preds = %6544
  %6549 = call float @dx.op.unary.f32(i32 23, float %6508)  ; Log(value)
  %6550 = fmul fast float %6549, 0x3FE62E4300000000
  %6551 = fmul fast float %6505, %6550
  %6552 = fsub fast float -0.000000e+00, %6551
  %6553 = fsub fast float 1.000000e+00, %6508
  %6554 = fdiv fast float %6552, %6553
  br label %6555

; <label>:6555                                    ; preds = %6548, %6544
  %6556 = phi float [ %6554, %6548 ], [ %6505, %6544 ]
  %6557 = phi float [ %6550, %6548 ], [ 0.000000e+00, %6544 ]
  %6558 = fcmp fast une float %6509, 1.000000e+00
  br i1 %6558, label %6559, label %6566, !dx.controlflow.hints !171

; <label>:6559                                    ; preds = %6555
  %6560 = call float @dx.op.unary.f32(i32 23, float %6509)  ; Log(value)
  %6561 = fmul fast float %6560, 0x3FE62E4300000000
  %6562 = fmul fast float %6506, %6561
  %6563 = fsub fast float -0.000000e+00, %6562
  %6564 = fsub fast float 1.000000e+00, %6509
  %6565 = fdiv fast float %6563, %6564
  br label %6566

; <label>:6566                                    ; preds = %6559, %6555
  %6567 = phi float [ %6565, %6559 ], [ %6506, %6555 ]
  %6568 = phi float [ %6561, %6559 ], [ 0.000000e+00, %6555 ]
  %6569 = fmul fast float %6532, %6516
  %6570 = fmul fast float %6533, %6516
  %6571 = fmul fast float %6534, %6516
  %6572 = fmul fast float %6535, %6516
  %6573 = fmul fast float %6545, %6514
  %6574 = fmul fast float %6556, %6514
  %6575 = fmul fast float %6567, %6514
  %6576 = fmul fast float %6546, %6514
  %6577 = fmul fast float %6557, %6514
  %6578 = fmul fast float %6568, %6514
  %6579 = fadd fast float %6573, %6569
  %6580 = fadd fast float %6574, %6570
  %6581 = fadd fast float %6575, %6571
  %6582 = fadd fast float %6576, %6572
  %6583 = fadd fast float %6577, %6572
  %6584 = fadd fast float %6578, %6572
  %6585 = fcmp fast une float %6582, 0.000000e+00
  br i1 %6585, label %6586, label %6593, !dx.controlflow.hints !172

; <label>:6586                                    ; preds = %6566
  %6587 = fmul fast float %6582, 0x3FF7154760000000
  %6588 = call float @dx.op.unary.f32(i32 21, float %6587)  ; Exp(value)
  %6589 = fsub fast float 1.000000e+00, %6588
  %6590 = fmul fast float %6579, %6589
  %6591 = fsub fast float -0.000000e+00, %6590
  %6592 = fdiv fast float %6591, %6582
  br label %6593

; <label>:6593                                    ; preds = %6586, %6566
  %6594 = phi float [ %6588, %6586 ], [ 1.000000e+00, %6566 ]
  %6595 = phi float [ %6592, %6586 ], [ %6579, %6566 ]
  %6596 = fcmp fast une float %6583, 0.000000e+00
  br i1 %6596, label %6597, label %6604, !dx.controlflow.hints !172

; <label>:6597                                    ; preds = %6593
  %6598 = fmul fast float %6583, 0x3FF7154760000000
  %6599 = call float @dx.op.unary.f32(i32 21, float %6598)  ; Exp(value)
  %6600 = fsub fast float 1.000000e+00, %6599
  %6601 = fmul fast float %6580, %6600
  %6602 = fsub fast float -0.000000e+00, %6601
  %6603 = fdiv fast float %6602, %6583
  br label %6604

; <label>:6604                                    ; preds = %6597, %6593
  %6605 = phi float [ %6599, %6597 ], [ 1.000000e+00, %6593 ]
  %6606 = phi float [ %6603, %6597 ], [ %6580, %6593 ]
  %6607 = fcmp fast une float %6584, 0.000000e+00
  br i1 %6607, label %6608, label %6615, !dx.controlflow.hints !172

; <label>:6608                                    ; preds = %6604
  %6609 = fmul fast float %6584, 0x3FF7154760000000
  %6610 = call float @dx.op.unary.f32(i32 21, float %6609)  ; Exp(value)
  %6611 = fsub fast float 1.000000e+00, %6610
  %6612 = fmul fast float %6581, %6611
  %6613 = fsub fast float -0.000000e+00, %6612
  %6614 = fdiv fast float %6613, %6584
  br label %6615

; <label>:6615                                    ; preds = %6608, %6604
  %6616 = phi float [ %6610, %6608 ], [ 1.000000e+00, %6604 ]
  %6617 = phi float [ %6614, %6608 ], [ %6581, %6604 ]
  %6618 = fcmp fast ogt float %6514, %6516
  br i1 %6618, label %6619, label %6639

; <label>:6619                                    ; preds = %6615
  %6620 = fsub fast float 1.000000e+00, %6516
  %6621 = fmul fast float %6532, %6620
  %6622 = fmul fast float %6533, %6620
  %6623 = fmul fast float %6534, %6620
  %6624 = fmul fast float %6535, %6620
  %6625 = fcmp fast une float %6624, 0.000000e+00
  br i1 %6625, label %6626, label %6677, !dx.controlflow.hints !173

; <label>:6626                                    ; preds = %6619
  %6627 = fmul fast float %6624, 0x3FF7154760000000
  %6628 = call float @dx.op.unary.f32(i32 21, float %6627)  ; Exp(value)
  %6629 = fsub fast float 1.000000e+00, %6628
  %6630 = fmul fast float %6621, %6629
  %6631 = fsub fast float -0.000000e+00, %6630
  %6632 = fmul fast float %6622, %6629
  %6633 = fsub fast float -0.000000e+00, %6632
  %6634 = fmul fast float %6623, %6629
  %6635 = fsub fast float -0.000000e+00, %6634
  %6636 = fdiv fast float %6631, %6624
  %6637 = fdiv fast float %6633, %6624
  %6638 = fdiv fast float %6635, %6624
  br label %6677

; <label>:6639                                    ; preds = %6615
  %6640 = fsub fast float 1.000000e+00, %6514
  %6641 = fmul fast float %6545, %6640
  %6642 = fmul fast float %6556, %6640
  %6643 = fmul fast float %6567, %6640
  %6644 = fmul fast float %6546, %6640
  %6645 = fmul fast float %6557, %6640
  %6646 = fmul fast float %6568, %6640
  %6647 = fcmp fast une float %6644, 0.000000e+00
  br i1 %6647, label %6648, label %6655, !dx.controlflow.hints !172

; <label>:6648                                    ; preds = %6639
  %6649 = fmul fast float %6644, 0x3FF7154760000000
  %6650 = call float @dx.op.unary.f32(i32 21, float %6649)  ; Exp(value)
  %6651 = fsub fast float 1.000000e+00, %6650
  %6652 = fmul fast float %6641, %6651
  %6653 = fsub fast float -0.000000e+00, %6652
  %6654 = fdiv fast float %6653, %6644
  br label %6655

; <label>:6655                                    ; preds = %6648, %6639
  %6656 = phi float [ %6654, %6648 ], [ %6641, %6639 ]
  %6657 = phi float [ %6650, %6648 ], [ 1.000000e+00, %6639 ]
  %6658 = fcmp fast une float %6645, 0.000000e+00
  br i1 %6658, label %6659, label %6666, !dx.controlflow.hints !172

; <label>:6659                                    ; preds = %6655
  %6660 = fmul fast float %6645, 0x3FF7154760000000
  %6661 = call float @dx.op.unary.f32(i32 21, float %6660)  ; Exp(value)
  %6662 = fsub fast float 1.000000e+00, %6661
  %6663 = fmul fast float %6642, %6662
  %6664 = fsub fast float -0.000000e+00, %6663
  %6665 = fdiv fast float %6664, %6645
  br label %6666

; <label>:6666                                    ; preds = %6659, %6655
  %6667 = phi float [ %6665, %6659 ], [ %6642, %6655 ]
  %6668 = phi float [ %6661, %6659 ], [ 1.000000e+00, %6655 ]
  %6669 = fcmp fast une float %6646, 0.000000e+00
  br i1 %6669, label %6670, label %6677, !dx.controlflow.hints !172

; <label>:6670                                    ; preds = %6666
  %6671 = fmul fast float %6646, 0x3FF7154760000000
  %6672 = call float @dx.op.unary.f32(i32 21, float %6671)  ; Exp(value)
  %6673 = fsub fast float 1.000000e+00, %6672
  %6674 = fmul fast float %6643, %6673
  %6675 = fsub fast float -0.000000e+00, %6674
  %6676 = fdiv fast float %6675, %6646
  br label %6677

; <label>:6677                                    ; preds = %6670, %6666, %6626, %6619
  %6678 = phi float [ %6676, %6670 ], [ %6638, %6626 ], [ %6623, %6619 ], [ %6643, %6666 ]
  %6679 = phi float [ %6667, %6670 ], [ %6637, %6626 ], [ %6622, %6619 ], [ %6667, %6666 ]
  %6680 = phi float [ %6656, %6670 ], [ %6636, %6626 ], [ %6621, %6619 ], [ %6656, %6666 ]
  %6681 = phi float [ %6672, %6670 ], [ %6628, %6626 ], [ 1.000000e+00, %6619 ], [ 1.000000e+00, %6666 ]
  %6682 = phi float [ %6668, %6670 ], [ %6628, %6626 ], [ 1.000000e+00, %6619 ], [ %6668, %6666 ]
  %6683 = phi float [ %6657, %6670 ], [ %6628, %6626 ], [ 1.000000e+00, %6619 ], [ %6657, %6666 ]
  %6684 = fmul fast float %6683, %6595
  %6685 = fmul fast float %6682, %6606
  %6686 = fmul fast float %6681, %6617
  %6687 = fadd fast float %6684, %6680
  %6688 = fadd fast float %6685, %6679
  %6689 = fadd fast float %6686, %6678
  %6690 = fmul fast float %6683, %6594
  %6691 = fmul fast float %6682, %6605
  %6692 = fmul fast float %6681, %6616
  br label %6693

; <label>:6693                                    ; preds = %6677, %6488
  %6694 = phi float [ %6692, %6677 ], [ %6494, %6488 ]
  %6695 = phi float [ %6691, %6677 ], [ %6493, %6488 ]
  %6696 = phi float [ %6690, %6677 ], [ %6492, %6488 ]
  %6697 = phi float [ %6689, %6677 ], [ %6491, %6488 ]
  %6698 = phi float [ %6688, %6677 ], [ %6490, %6488 ]
  %6699 = phi float [ %6687, %6677 ], [ %6489, %6488 ]
  %6700 = fmul fast float %6699, %5653
  %6701 = fmul fast float %6698, %5653
  %6702 = fmul fast float %6697, %5653
  %6703 = fmul fast float %6696, %5936
  %6704 = call float @dx.op.dot3.f32(i32 55, float %6696, float %6695, float %6694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6705 = call float @dx.op.dot3.f32(i32 55, float %6700, float %6701, float %6702, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6706 = select i1 %256, float %6704, float %6696
  %6707 = select i1 %256, float %6704, float %6695
  %6708 = select i1 %256, float 1.000000e+00, float %6694
  %6709 = select i1 %256, float %6705, float %6700
  %6710 = select i1 %256, float 0.000000e+00, float %6701
  %6711 = select i1 %256, float 0.000000e+00, float %6702
  %6712 = fmul fast float %6706, %5930
  %6713 = fmul fast float %6707, %5931
  %6714 = fmul fast float %6708, %5932
  %6715 = fadd fast float %6712, %6709
  %6716 = fadd fast float %6713, %6710
  %6717 = fadd fast float %6711, %6714
  %6718 = fmul fast float %6706, %5933
  %6719 = fmul fast float %6707, %5934
  %6720 = fmul fast float %6708, %5935
  %6721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.i32 %6721, 0
  %6723 = icmp eq i32 %6722, 0
  br i1 %6723, label %7091, label %6724, !dx.controlflow.hints !174

; <label>:6724                                    ; preds = %6693
  %6725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.f32 %6725, 2
  %6727 = extractvalue %dx.types.CBufRet.f32 %6725, 3
  %6728 = fmul fast float %6726, %87
  %6729 = fmul fast float %6727, %88
  %6730 = fmul fast float %6728, 2.000000e+00
  %6731 = fmul fast float %6729, 2.000000e+00
  %6732 = fsub fast float 1.000000e+00, %6730
  %6733 = fsub fast float 1.000000e+00, %6731
  %6734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6734, 0
  %6736 = extractvalue %dx.types.CBufRet.f32 %6734, 1
  %6737 = extractvalue %dx.types.CBufRet.f32 %6734, 2
  %6738 = fmul fast float %6732, %6735
  %6739 = fmul fast float %6732, %6736
  %6740 = fmul fast float %6732, %6737
  %6741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6742 = extractvalue %dx.types.CBufRet.f32 %6741, 0
  %6743 = extractvalue %dx.types.CBufRet.f32 %6741, 1
  %6744 = extractvalue %dx.types.CBufRet.f32 %6741, 2
  %6745 = fmul fast float %6733, %6742
  %6746 = fmul fast float %6733, %6743
  %6747 = fmul fast float %6733, %6744
  %6748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6749 = extractvalue %dx.types.CBufRet.f32 %6748, 0
  %6750 = extractvalue %dx.types.CBufRet.f32 %6748, 1
  %6751 = extractvalue %dx.types.CBufRet.f32 %6748, 2
  %6752 = fadd fast float %6745, %6749
  %6753 = fadd fast float %6752, %6738
  %6754 = fadd fast float %6746, %6750
  %6755 = fadd fast float %6754, %6739
  %6756 = fadd fast float %6747, %6751
  %6757 = fadd fast float %6756, %6740
  %6758 = fmul fast float %6753, %5929
  %6759 = fmul fast float %6755, %5929
  %6760 = fmul fast float %6757, %5929
  %6761 = fmul fast float %6758, %6758
  %6762 = fmul fast float %6759, %6759
  %6763 = fadd fast float %6761, %6762
  %6764 = fmul fast float %6760, %6760
  %6765 = fadd fast float %6763, %6764
  %6766 = call float @dx.op.unary.f32(i32 24, float %6765)  ; Sqrt(value)
  %6767 = extractvalue %dx.types.CBufRet.f32 %5654, 0
  %6768 = fsub fast float %6766, %6767
  %6769 = extractvalue %dx.types.CBufRet.f32 %5654, 2
  %6770 = fmul fast float %6768, %6769
  %6771 = call float @dx.op.unary.f32(i32 7, float %6770)  ; Saturate(value)
  %6772 = fadd fast float %6771, -5.000000e-01
  %6773 = fmul fast float %6772, 2.000000e+00
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 2
  %6776 = call float @dx.op.binary.f32(i32 36, float %6775, float %6773)  ; FMin(a,b)
  %6777 = fsub fast float -0.000000e+00, %6775
  %6778 = fcmp fast ogt float %6776, %6777
  br i1 %6778, label %6779, label %7091, !dx.controlflow.hints !175

; <label>:6779                                    ; preds = %6724
  %6780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.f32 %6780, 3
  %6782 = fcmp fast ogt float %6781, 0.000000e+00
  br i1 %6782, label %6783, label %6858, !dx.controlflow.hints !176

; <label>:6783                                    ; preds = %6779
  %6784 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %6785 = extractvalue %dx.types.Dimensions %6784, 0
  %6786 = sitofp i32 %6785 to float
  %6787 = extractvalue %dx.types.Dimensions %6784, 1
  %6788 = sitofp i32 %6787 to float
  %6789 = fmul fast float %6728, %6786
  %6790 = fmul fast float %6729, %6788
  %6791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6792 = extractvalue %dx.types.CBufRet.f32 %6791, 1
  %6793 = fsub fast float -0.000000e+00, %6792
  %6794 = fptoui float %6793 to i32
  %6795 = fptoui float %6789 to i32
  %6796 = fptoui float %6790 to i32
  %6797 = and i32 %6794, 31
  %6798 = lshr i32 %6795, %6797
  %6799 = lshr i32 %6796, %6797
  %6800 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %6794, i32 %6798, i32 %6799, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6801 = extractvalue %dx.types.ResRet.f32 %6800, 0
  %6802 = fcmp fast olt float %6801, -1.000000e+00
  %6803 = fcmp fast ogt float %6801, -1.000000e+00
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 1
  %6806 = select i1 %6803, float %6805, float 1.000000e+00
  %6807 = fadd fast float %6801, 1.000000e+00
  %6808 = fmul fast float %6806, %6807
  %6809 = call float @dx.op.unary.f32(i32 6, float %6808)  ; FAbs(value)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6804, 3
  %6811 = fcmp fast oge float %6809, %6810
  %6812 = select i1 %6811, float 0x4197782600000000, float %6809
  %6813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.f32 %6813, 0
  %6815 = extractvalue %dx.types.CBufRet.f32 %6813, 1
  %6816 = extractvalue %dx.types.CBufRet.f32 %6813, 2
  %6817 = select i1 %6802, float %6814, float %6735
  %6818 = select i1 %6802, float %6815, float %6736
  %6819 = select i1 %6802, float %6816, float %6737
  %6820 = fmul fast float %6817, %6732
  %6821 = fmul fast float %6818, %6732
  %6822 = fmul fast float %6819, %6732
  %6823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6824 = extractvalue %dx.types.CBufRet.f32 %6823, 0
  %6825 = extractvalue %dx.types.CBufRet.f32 %6823, 1
  %6826 = extractvalue %dx.types.CBufRet.f32 %6823, 2
  %6827 = select i1 %6802, float %6824, float %6742
  %6828 = select i1 %6802, float %6825, float %6743
  %6829 = select i1 %6802, float %6826, float %6744
  %6830 = fmul fast float %6827, %6733
  %6831 = fmul fast float %6828, %6733
  %6832 = fmul fast float %6829, %6733
  %6833 = fadd fast float %6830, %6820
  %6834 = fadd fast float %6831, %6821
  %6835 = fadd fast float %6832, %6822
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6840 = select i1 %6802, float %6837, float %6749
  %6841 = select i1 %6802, float %6838, float %6750
  %6842 = select i1 %6802, float %6839, float %6751
  %6843 = fadd fast float %6833, %6840
  %6844 = fadd fast float %6834, %6841
  %6845 = fadd fast float %6835, %6842
  %6846 = fmul fast float %6843, %6812
  %6847 = fmul fast float %6844, %6812
  %6848 = fmul fast float %6845, %6812
  %6849 = fmul fast float %6846, %6846
  %6850 = fmul fast float %6847, %6847
  %6851 = fadd fast float %6849, %6850
  %6852 = fmul fast float %6848, %6848
  %6853 = fadd fast float %6851, %6852
  %6854 = call float @dx.op.unary.f32(i32 24, float %6853)  ; Sqrt(value)
  %6855 = fsub fast float %6854, %6767
  %6856 = fmul fast float %6855, %6769
  %6857 = call float @dx.op.unary.f32(i32 7, float %6856)  ; Saturate(value)
  br label %6858

; <label>:6858                                    ; preds = %6783, %6779
  %6859 = phi float [ %6857, %6783 ], [ 1.000000e+00, %6779 ]
  %6860 = fmul fast float %6776, 5.000000e-01
  %6861 = fadd fast float %6860, 5.000000e-01
  %6862 = call float @dx.op.unary.f32(i32 22, float %6861)  ; Frc(value)
  %6863 = call float @dx.op.unary.f32(i32 27, float %6862)  ; Round_ni(value)
  %6864 = call float @dx.op.unary.f32(i32 22, float %6862)  ; Frc(value)
  %6865 = fmul fast float %6864, 2.000000e+00
  %6866 = fadd fast float %6865, -1.000000e+00
  %6867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %52, float %6728, float %6729, float %6863, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6868 = extractvalue %dx.types.ResRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.ResRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.ResRet.f32 %6867, 2
  %6871 = extractvalue %dx.types.ResRet.f32 %6867, 3
  %6872 = fadd fast float %6868, -5.000000e-01
  %6873 = fadd fast float %6870, -5.000000e-01
  %6874 = fmul fast float %6872, 0xBFD5555560000000
  %6875 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6873, float %6874)  ; FMad(a,b,c)
  %6876 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6869, float 0.000000e+00)  ; FMad(a,b,c)
  %6877 = fadd fast float %6876, %6871
  %6878 = fmul fast float %6872, -7.500000e-01
  %6879 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6873, float %6878)  ; FMad(a,b,c)
  %6880 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6869, float 0.000000e+00)  ; FMad(a,b,c)
  %6881 = fadd fast float %6880, %6871
  %6882 = call float @dx.op.binary.f32(i32 35, float %6875, float -1.000000e+00)  ; FMax(a,b)
  %6883 = call float @dx.op.binary.f32(i32 35, float %6877, float -1.000000e+00)  ; FMax(a,b)
  %6884 = call float @dx.op.binary.f32(i32 35, float %6879, float -1.000000e+00)  ; FMax(a,b)
  %6885 = call float @dx.op.binary.f32(i32 35, float %6881, float -1.000000e+00)  ; FMax(a,b)
  %6886 = call float @dx.op.binary.f32(i32 36, float %6882, float 1.000000e+00)  ; FMin(a,b)
  %6887 = call float @dx.op.binary.f32(i32 36, float %6883, float 1.000000e+00)  ; FMin(a,b)
  %6888 = call float @dx.op.binary.f32(i32 36, float %6884, float 1.000000e+00)  ; FMin(a,b)
  %6889 = call float @dx.op.binary.f32(i32 36, float %6885, float 1.000000e+00)  ; FMin(a,b)
  %6890 = fcmp fast olt float %6886, 0x3FEFFF8020000000
  br i1 %6890, label %6891, label %7006, !dx.controlflow.hints !177

; <label>:6891                                    ; preds = %6858
  %6892 = extractvalue %dx.types.CBufRet.f32 %6774, 3
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 0
  %6895 = extractvalue %dx.types.CBufRet.f32 %6893, 1
  %6896 = extractvalue %dx.types.CBufRet.f32 %6893, 2
  %6897 = extractvalue %dx.types.CBufRet.f32 %6893, 3
  %6898 = fsub fast float %6894, %6886
  %6899 = fsub fast float %6895, %6887
  %6900 = fsub fast float %6896, %6888
  %6901 = fsub fast float %6897, %6889
  %6902 = fmul fast float %6898, %6892
  %6903 = fmul fast float %6899, %6892
  %6904 = fmul fast float %6900, %6892
  %6905 = fmul fast float %6901, %6892
  %6906 = fadd fast float %6902, %6886
  %6907 = fadd fast float %6903, %6887
  %6908 = fsub fast float -0.000000e+00, %6907
  %6909 = fadd fast float %6904, %6888
  %6910 = fadd fast float %6905, %6889
  %6911 = fmul fast float %6906, %6906
  %6912 = fsub fast float %6907, %6911
  %6913 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6912)  ; FMax(a,b)
  %6914 = fdiv fast float 1.000000e+00, %6913
  %6915 = fmul fast float %6907, %6906
  %6916 = fsub fast float %6909, %6915
  %6917 = fsub fast float %6866, %6906
  %6918 = fmul fast float %6866, %6866
  %6919 = fsub fast float %6918, %6907
  %6920 = fmul fast float %6917, %6914
  %6921 = fmul fast float %6920, %6916
  %6922 = fsub fast float %6919, %6921
  %6923 = fmul fast float %6907, %6907
  %6924 = fsub fast float %6910, %6923
  %6925 = fmul fast float %6916, %6916
  %6926 = fmul fast float %6925, %6914
  %6927 = fsub fast float %6924, %6926
  %6928 = fdiv fast float %6922, %6927
  %6929 = fmul fast float %6916, %6928
  %6930 = fsub fast float %6917, %6929
  %6931 = fmul fast float %6930, %6914
  %6932 = fmul fast float %6931, %6906
  %6933 = fsub fast float 1.000000e+00, %6932
  %6934 = fmul fast float %6907, %6928
  %6935 = fsub fast float %6933, %6934
  %6936 = fmul fast float %6931, %6931
  %6937 = fmul fast float %6928, 4.000000e+00
  %6938 = fmul fast float %6937, %6935
  %6939 = fsub fast float %6936, %6938
  %6940 = call float @dx.op.unary.f32(i32 24, float %6939)  ; Sqrt(value)
  %6941 = fcmp fast oge float %6931, 0.000000e+00
  %6942 = fsub fast float -0.000000e+00, %6940
  %6943 = select i1 %6941, float %6942, float %6940
  %6944 = fsub fast float %6943, %6931
  %6945 = fdiv fast float %6944, %6928
  %6946 = fdiv fast float %6935, %6944
  %6947 = fmul fast float %6945, 5.000000e-01
  %6948 = fmul fast float %6946, 2.000000e+00
  %6949 = select i1 %6941, float %6947, float %6948
  %6950 = select i1 %6941, float %6948, float %6947
  %6951 = call float @dx.op.binary.f32(i32 35, float %6949, float %6950)  ; FMax(a,b)
  %6952 = call float @dx.op.binary.f32(i32 36, float %6949, float %6950)  ; FMin(a,b)
  %6953 = fcmp fast ogt float %6866, %6952
  br i1 %6953, label %6954, label %6964

; <label>:6954                                    ; preds = %6891
  %6955 = fsub fast float %6866, %6952
  %6956 = fsub fast float %6951, %6952
  %6957 = fmul fast float %6955, %6956
  %6958 = fmul fast float %6951, %6866
  %6959 = fadd fast float %6951, %6866
  %6960 = fmul fast float %6959, %6906
  %6961 = fadd fast float %6958, %6907
  %6962 = fsub fast float %6961, %6960
  %6963 = fdiv fast float %6962, %6957
  br label %6964

; <label>:6964                                    ; preds = %6954, %6891
  %6965 = phi float [ %6963, %6954 ], [ 0.000000e+00, %6891 ]
  %6966 = fcmp fast ogt float %6866, %6951
  %6967 = fsub fast float %6866, %6951
  br i1 %6966, label %6968, label %6978

; <label>:6968                                    ; preds = %6964
  %6969 = fsub fast float %6951, %6952
  %6970 = fmul fast float %6969, %6967
  %6971 = fmul fast float %6952, %6866
  %6972 = fadd fast float %6952, %6866
  %6973 = fmul fast float %6972, %6906
  %6974 = fsub fast float %6908, %6971
  %6975 = fadd fast float %6974, %6973
  %6976 = fdiv fast float %6975, %6970
  %6977 = fadd fast float %6976, %6965
  br label %6978

; <label>:6978                                    ; preds = %6968, %6964
  %6979 = phi float [ %6977, %6968 ], [ %6965, %6964 ]
  %6980 = fsub fast float %6866, %6952
  %6981 = fmul fast float %6980, %6967
  %6982 = fmul fast float %6952, %6951
  %6983 = fadd fast float %6952, %6951
  %6984 = fmul fast float %6983, %6906
  %6985 = fadd fast float %6982, %6907
  %6986 = fsub fast float %6985, %6984
  %6987 = fdiv fast float %6986, %6981
  %6988 = call float @dx.op.unary.f32(i32 7, float %6979)  ; Saturate(value)
  %6989 = fcmp fast oeq float %5655, 0.000000e+00
  %6990 = extractvalue %dx.types.CBufRet.f32 %6774, 0
  %6991 = fcmp fast oeq float %6990, 0.000000e+00
  %6992 = or i1 %6989, %6991
  %6993 = fmul fast float %6990, 2.000000e+00
  %6994 = fadd fast float %6775, %6776
  %6995 = fdiv fast float %6994, %6993
  %6996 = call float @dx.op.unary.f32(i32 7, float %6995)  ; Saturate(value)
  %6997 = fmul fast float %6996, 2.000000e+00
  %6998 = fsub fast float 3.000000e+00, %6997
  %6999 = fmul fast float %6996, %6996
  %7000 = fmul fast float %6999, %6998
  %7001 = select i1 %6992, float 1.000000e+00, float %7000
  %7002 = fmul fast float %6987, %5655
  %7003 = fadd fast float %6988, %7002
  %7004 = call float @dx.op.unary.f32(i32 7, float %7003)  ; Saturate(value)
  %7005 = fmul fast float %7001, %7004
  br label %7006

; <label>:7006                                    ; preds = %6978, %6858
  %7007 = phi float [ %7005, %6978 ], [ 0.000000e+00, %6858 ]
  %7008 = fsub fast float 1.000000e+00, %7007
  %7009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %52, float %6728, float %6729, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7010 = extractvalue %dx.types.ResRet.f32 %7009, 0
  %7011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7012 = extractvalue %dx.types.CBufRet.i32 %7011, 2
  %7013 = icmp eq i32 %7012, 0
  br i1 %7013, label %7019, label %7014

; <label>:7014                                    ; preds = %7006
  %7015 = call float @dx.op.unary.f32(i32 7, float %7007)  ; Saturate(value)
  %7016 = fadd fast float %7010, -1.000000e+00
  %7017 = fmul fast float %7015, %7016
  %7018 = fadd fast float %7017, 1.000000e+00
  br label %7019

; <label>:7019                                    ; preds = %7014, %7006
  %7020 = phi float [ %7018, %7014 ], [ %7008, %7006 ]
  br i1 %6782, label %7021, label %7039

; <label>:7021                                    ; preds = %7019
  %7022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.f32 %7022, 1
  %7024 = fsub fast float %6859, %7023
  %7025 = call float @dx.op.unary.f32(i32 7, float %7024)  ; Saturate(value)
  %7026 = fsub fast float %6859, %6781
  %7027 = call float @dx.op.unary.f32(i32 7, float %7026)  ; Saturate(value)
  %7028 = fsub fast float %7025, %7027
  %7029 = fsub fast float %6861, %7027
  %7030 = fdiv fast float %7029, %7028
  %7031 = call float @dx.op.unary.f32(i32 7, float %7030)  ; Saturate(value)
  %7032 = fmul fast float %7031, 2.000000e+00
  %7033 = fsub fast float 3.000000e+00, %7032
  %7034 = fsub fast float %7010, %7020
  %7035 = fmul fast float %7031, %7031
  %7036 = fmul fast float %7035, %7034
  %7037 = fmul fast float %7036, %7033
  %7038 = fadd fast float %7037, %7020
  br label %7039

; <label>:7039                                    ; preds = %7021, %7019
  %7040 = phi float [ %7038, %7021 ], [ %7020, %7019 ]
  %7041 = call float @dx.op.binary.f32(i32 35, float %7010, float %7040)  ; FMax(a,b)
  %7042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7043 = extractvalue %dx.types.CBufRet.i32 %7042, 2
  %7044 = and i32 %7043, 1
  %7045 = icmp eq i32 %7044, 0
  %7046 = fcmp fast une float %7041, 1.000000e+00
  %7047 = and i1 %7046, %7045
  br i1 %7047, label %7048, label %7067

; <label>:7048                                    ; preds = %7039
  %7049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %52, float %6728, float %6729, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7050 = extractvalue %dx.types.ResRet.f32 %7049, 0
  %7051 = extractvalue %dx.types.ResRet.f32 %7049, 1
  %7052 = extractvalue %dx.types.ResRet.f32 %7049, 2
  %7053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7054 = extractvalue %dx.types.CBufRet.f32 %7053, 1
  %7055 = fmul fast float %7054, %7050
  %7056 = fmul fast float %7054, %7051
  %7057 = fmul fast float %7054, %7052
  %7058 = fcmp fast ogt float %7010, 0x3FEFFF2E40000000
  %7059 = fsub fast float 1.000000e+00, %7041
  %7060 = fsub fast float 1.000000e+00, %7010
  %7061 = fdiv fast float %7059, %7060
  %7062 = call float @dx.op.unary.f32(i32 7, float %7061)  ; Saturate(value)
  %7063 = select i1 %7058, float 0.000000e+00, float %7062
  %7064 = fmul fast float %7055, %7063
  %7065 = fmul fast float %7056, %7063
  %7066 = fmul fast float %7057, %7063
  br label %7067

; <label>:7067                                    ; preds = %7048, %7039
  %7068 = phi float [ 0.000000e+00, %7039 ], [ %7064, %7048 ]
  %7069 = phi float [ 0.000000e+00, %7039 ], [ %7065, %7048 ]
  %7070 = phi float [ 0.000000e+00, %7039 ], [ %7066, %7048 ]
  %7071 = fmul fast float %7068, %5653
  %7072 = fmul fast float %7069, %5653
  %7073 = fmul fast float %7070, %5653
  %7074 = fmul fast float %7041, %6703
  %7075 = call float @dx.op.dot3.f32(i32 55, float %7041, float %7041, float %7041, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7076 = call float @dx.op.dot3.f32(i32 55, float %7071, float %7072, float %7073, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7077 = select i1 %256, float %7075, float %7041
  %7078 = select i1 %256, float 1.000000e+00, float %7041
  %7079 = select i1 %256, float %7076, float %7071
  %7080 = select i1 %256, float 0.000000e+00, float %7072
  %7081 = select i1 %256, float 0.000000e+00, float %7073
  %7082 = fmul fast float %7077, %6715
  %7083 = fmul fast float %7077, %6716
  %7084 = fmul fast float %7078, %6717
  %7085 = fadd fast float %7082, %7079
  %7086 = fadd fast float %7083, %7080
  %7087 = fadd fast float %7081, %7084
  %7088 = fmul fast float %7077, %6718
  %7089 = fmul fast float %7077, %6719
  %7090 = fmul fast float %7078, %6720
  br label %7091

; <label>:7091                                    ; preds = %7067, %6724, %6693, %5925
  %7092 = phi float [ %5930, %5925 ], [ %6715, %6693 ], [ %7085, %7067 ], [ %6715, %6724 ]
  %7093 = phi float [ %5931, %5925 ], [ %6716, %6693 ], [ %7086, %7067 ], [ %6716, %6724 ]
  %7094 = phi float [ %5932, %5925 ], [ %6717, %6693 ], [ %7087, %7067 ], [ %6717, %6724 ]
  %7095 = phi float [ %5933, %5925 ], [ %6718, %6693 ], [ %7088, %7067 ], [ %6718, %6724 ]
  %7096 = phi float [ %5934, %5925 ], [ %6719, %6693 ], [ %7089, %7067 ], [ %6719, %6724 ]
  %7097 = phi float [ %5935, %5925 ], [ %6720, %6693 ], [ %7090, %7067 ], [ %6720, %6724 ]
  %7098 = phi float [ %5936, %5925 ], [ %6703, %6693 ], [ %7074, %7067 ], [ %6703, %6724 ]
  %7099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.f32 %7099, 2
  %7101 = extractvalue %dx.types.CBufRet.f32 %7099, 3
  %7102 = fmul fast float %7100, %87
  %7103 = fmul fast float %7101, %88
  %7104 = call float @dx.op.unary.f32(i32 7, float %7102)  ; Saturate(value)
  %7105 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7106 = select i1 %5665, i32 2, i32 0
  %7107 = or i32 %7106, 1
  %7108 = uitofp i32 %7107 to float
  %7109 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %7104, float %7105, float %7108, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7110 = extractvalue %dx.types.ResRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.ResRet.f32 %7109, 1
  %7112 = extractvalue %dx.types.ResRet.f32 %7109, 2
  %7113 = extractvalue %dx.types.ResRet.f32 %7109, 3
  %7114 = add nuw nsw i32 %7106, 2
  %7115 = uitofp i32 %7114 to float
  %7116 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %7104, float %7105, float %7115, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7117 = extractvalue %dx.types.ResRet.f32 %7116, 0
  %7118 = extractvalue %dx.types.ResRet.f32 %7116, 1
  %7119 = extractvalue %dx.types.ResRet.f32 %7116, 2
  %7120 = extractvalue %dx.types.ResRet.f32 %7116, 3
  %7121 = call float @dx.op.binary.f32(i32 35, float %7111, float %7112)  ; FMax(a,b)
  %7122 = call float @dx.op.binary.f32(i32 35, float %7110, float %7121)  ; FMax(a,b)
  %7123 = call float @dx.op.binary.f32(i32 35, float %7122, float %7113)  ; FMax(a,b)
  %7124 = call float @dx.op.binary.f32(i32 36, float %7118, float %7119)  ; FMin(a,b)
  %7125 = call float @dx.op.binary.f32(i32 36, float %7117, float %7124)  ; FMin(a,b)
  %7126 = call float @dx.op.binary.f32(i32 36, float %7125, float %7120)  ; FMin(a,b)
  %7127 = fmul fast float %7123, 2.550000e+02
  %7128 = fadd fast float %7127, 0x3F70101020000000
  %7129 = fptoui float %7128 to i32
  %7130 = fmul fast float %7126, 2.550000e+02
  %7131 = fadd fast float %7130, 0x3F70101020000000
  %7132 = fptoui float %7131 to i32
  %7133 = icmp ult i32 %7129, %7132
  br i1 %7133, label %7134, label %7303

; <label>:7134                                    ; preds = %7091
  %7135 = fcmp fast ogt float %74, 9.843750e-01
  %7136 = fadd fast float %5929, -4.000000e+00
  %7137 = select i1 %7135, float -4.000000e+00, float %7136
  %7138 = call float @dx.op.binary.f32(i32 35, float %7137, float 0.000000e+00)  ; FMax(a,b)
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 0
  %7141 = fadd fast float %7140, %7138
  %7142 = extractvalue %dx.types.CBufRet.f32 %7139, 2
  %7143 = fmul fast float %7141, %7142
  %7144 = call float @dx.op.unary.f32(i32 23, float %7143)  ; Log(value)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7139, 3
  %7146 = fmul fast float %7145, %7144
  %7147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7148 = extractvalue %dx.types.CBufRet.f32 %7147, 2
  %7149 = fmul fast float %7146, %7148
  %7150 = call float @dx.op.unary.f32(i32 7, float %7149)  ; Saturate(value)
  %7151 = uitofp i32 %7129 to float
  %7152 = uitofp i32 %7132 to float
  %7153 = fadd fast float %7151, 5.000000e-01
  %7154 = fadd fast float %7152, 5.000000e-01
  %7155 = fmul fast float %7148, %7153
  %7156 = fmul fast float %7148, %7154
  %7157 = fadd fast float %7155, 0x3F0FFB4800000000
  %7158 = fadd fast float %7156, 0xBF0FFB4800000000
  %7159 = call float @dx.op.binary.f32(i32 35, float %7150, float %7157)  ; FMax(a,b)
  %7160 = call float @dx.op.binary.f32(i32 36, float %7159, float %7158)  ; FMin(a,b)
  %7161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7162 = extractvalue %dx.types.CBufRet.f32 %7161, 1
  %7163 = extractvalue %dx.types.CBufRet.f32 %7161, 2
  %7164 = extractvalue %dx.types.CBufRet.f32 %7161, 0
  %7165 = select i1 %5665, float %7164, float 0.000000e+00
  %7166 = fmul fast float %7162, %7160
  %7167 = fadd fast float %7165, %7166
  %7168 = fadd fast float %7165, %7163
  %7169 = fsub fast float %7162, %7163
  %7170 = fadd fast float %7169, %7165
  %7171 = call float @dx.op.binary.f32(i32 35, float %7167, float %7168)  ; FMax(a,b)
  %7172 = call float @dx.op.binary.f32(i32 36, float %7171, float %7170)  ; FMin(a,b)
  %7173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %50, float %7104, float %7105, float %7172, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7174 = extractvalue %dx.types.ResRet.f32 %7173, 0
  %7175 = extractvalue %dx.types.ResRet.f32 %7173, 1
  %7176 = extractvalue %dx.types.ResRet.f32 %7173, 2
  %7177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7178 = extractvalue %dx.types.CBufRet.i32 %7177, 0
  %7179 = extractvalue %dx.types.CBufRet.i32 %7177, 1
  %7180 = uitofp i32 %7178 to float
  %7181 = uitofp i32 %7179 to float
  %7182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7183 = extractvalue %dx.types.CBufRet.f32 %7182, 0
  %7184 = extractvalue %dx.types.CBufRet.f32 %7182, 1
  %7185 = fmul fast float %7180, %7104
  %7186 = fmul fast float %7181, %7105
  %7187 = fadd fast float %7185, -5.000000e-01
  %7188 = fadd fast float %7186, -5.000000e-01
  %7189 = call float @dx.op.unary.f32(i32 22, float %7187)  ; Frc(value)
  %7190 = call float @dx.op.unary.f32(i32 22, float %7188)  ; Frc(value)
  %7191 = fmul fast float %7189, %7189
  %7192 = fmul fast float %7191, %7189
  %7193 = fsub fast float 3.000000e+00, %7189
  %7194 = fmul fast float %7191, %7193
  %7195 = fmul fast float %7189, 3.000000e+00
  %7196 = fmul fast float %7192, 3.000000e+00
  %7197 = fmul fast float %7191, 6.000000e+00
  %7198 = fsub fast float %7196, %7197
  %7199 = fadd fast float %7198, 4.000000e+00
  %7200 = fmul fast float %7199, 0x3FC5555560000000
  %7201 = fmul fast float %7192, -3.000000e+00
  %7202 = fadd fast float %7191, %7189
  %7203 = fmul fast float %7202, 3.000000e+00
  %7204 = fadd fast float %7201, 1.000000e+00
  %7205 = fadd fast float %7204, %7203
  %7206 = fmul fast float %7192, 0x3FC5555560000000
  %7207 = fmul fast float %7190, %7190
  %7208 = fmul fast float %7207, %7190
  %7209 = fsub fast float 3.000000e+00, %7190
  %7210 = fmul fast float %7207, %7209
  %7211 = fmul fast float %7190, 3.000000e+00
  %7212 = fmul fast float %7208, 3.000000e+00
  %7213 = fmul fast float %7207, 6.000000e+00
  %7214 = fsub fast float %7212, %7213
  %7215 = fadd fast float %7214, 4.000000e+00
  %7216 = fmul fast float %7215, 0x3FC5555560000000
  %7217 = fmul fast float %7208, -3.000000e+00
  %7218 = fadd fast float %7207, %7190
  %7219 = fmul fast float %7218, 3.000000e+00
  %7220 = fadd fast float %7217, 1.000000e+00
  %7221 = fadd fast float %7220, %7219
  %7222 = fmul fast float %7208, 0x3FC5555560000000
  %7223 = fadd fast float %7189, 1.000000e+00
  %7224 = fsub fast float 1.000000e+00, %7195
  %7225 = fadd fast float %7224, %7194
  %7226 = fadd fast float %7225, %7199
  %7227 = fmul fast float %7226, 0x3FC5555560000000
  %7228 = fdiv fast float %7200, %7227
  %7229 = fsub fast float %7223, %7228
  %7230 = fsub fast float 1.000000e+00, %7189
  %7231 = fadd fast float %7205, %7192
  %7232 = fmul fast float %7231, 0x3FC5555560000000
  %7233 = fdiv fast float %7206, %7232
  %7234 = fadd fast float %7230, %7233
  %7235 = fadd fast float %7190, 1.000000e+00
  %7236 = fsub fast float 1.000000e+00, %7211
  %7237 = fadd fast float %7236, %7210
  %7238 = fadd fast float %7237, %7215
  %7239 = fmul fast float %7238, 0x3FC5555560000000
  %7240 = fdiv fast float %7216, %7239
  %7241 = fsub fast float %7235, %7240
  %7242 = fsub fast float 1.000000e+00, %7190
  %7243 = fadd fast float %7221, %7208
  %7244 = fmul fast float %7243, 0x3FC5555560000000
  %7245 = fdiv fast float %7222, %7244
  %7246 = fadd fast float %7245, %7242
  %7247 = fmul fast float %7229, %7183
  %7248 = fsub fast float %7104, %7247
  %7249 = fmul fast float %7234, %7183
  %7250 = fadd fast float %7249, %7104
  %7251 = fmul fast float %7246, %7184
  %7252 = fadd fast float %7251, %7105
  %7253 = fmul fast float %7241, %7184
  %7254 = fsub fast float %7105, %7253
  %7255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %7248, float %7254, float %7172, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7256 = extractvalue %dx.types.ResRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.ResRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.ResRet.f32 %7255, 2
  %7259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %7250, float %7254, float %7172, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7260 = extractvalue %dx.types.ResRet.f32 %7259, 0
  %7261 = extractvalue %dx.types.ResRet.f32 %7259, 1
  %7262 = extractvalue %dx.types.ResRet.f32 %7259, 2
  %7263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %7248, float %7252, float %7172, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7264 = extractvalue %dx.types.ResRet.f32 %7263, 0
  %7265 = extractvalue %dx.types.ResRet.f32 %7263, 1
  %7266 = extractvalue %dx.types.ResRet.f32 %7263, 2
  %7267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %7250, float %7252, float %7172, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7268 = extractvalue %dx.types.ResRet.f32 %7267, 0
  %7269 = extractvalue %dx.types.ResRet.f32 %7267, 1
  %7270 = extractvalue %dx.types.ResRet.f32 %7267, 2
  %7271 = fsub fast float %7264, %7256
  %7272 = fsub fast float %7265, %7257
  %7273 = fsub fast float %7266, %7258
  %7274 = fmul fast float %7271, %7244
  %7275 = fmul fast float %7272, %7244
  %7276 = fmul fast float %7273, %7244
  %7277 = fadd fast float %7274, %7256
  %7278 = fadd fast float %7275, %7257
  %7279 = fadd fast float %7276, %7258
  %7280 = fsub fast float %7268, %7260
  %7281 = fsub fast float %7269, %7261
  %7282 = fsub fast float %7270, %7262
  %7283 = fmul fast float %7280, %7244
  %7284 = fmul fast float %7281, %7244
  %7285 = fmul fast float %7282, %7244
  %7286 = fsub fast float %7260, %7277
  %7287 = fadd fast float %7286, %7283
  %7288 = fsub fast float %7261, %7278
  %7289 = fadd fast float %7288, %7284
  %7290 = fsub fast float %7262, %7279
  %7291 = fadd fast float %7290, %7285
  %7292 = fmul fast float %7287, %7232
  %7293 = fmul fast float %7289, %7232
  %7294 = fmul fast float %7291, %7232
  %7295 = fadd fast float %7292, %7277
  %7296 = fadd fast float %7293, %7278
  %7297 = fadd fast float %7294, %7279
  %7298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7298, 1
  %7300 = fmul fast float %7295, %7299
  %7301 = fmul fast float %7296, %7299
  %7302 = fmul fast float %7297, %7299
  br label %7303

; <label>:7303                                    ; preds = %7134, %7091
  %7304 = phi float [ %7174, %7134 ], [ 1.000000e+00, %7091 ]
  %7305 = phi float [ %7175, %7134 ], [ 1.000000e+00, %7091 ]
  %7306 = phi float [ %7176, %7134 ], [ 1.000000e+00, %7091 ]
  %7307 = phi float [ %7300, %7134 ], [ 0.000000e+00, %7091 ]
  %7308 = phi float [ %7301, %7134 ], [ 0.000000e+00, %7091 ]
  %7309 = phi float [ %7302, %7134 ], [ 0.000000e+00, %7091 ]
  %7310 = fmul fast float %7307, %5653
  %7311 = fmul fast float %7308, %5653
  %7312 = fmul fast float %7309, %5653
  %7313 = fmul fast float %7304, %7098
  %7314 = call float @dx.op.dot3.f32(i32 55, float %7304, float %7305, float %7306, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7315 = call float @dx.op.dot3.f32(i32 55, float %7310, float %7311, float %7312, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7316 = select i1 %256, float %7314, float %7304
  %7317 = select i1 %256, float %7314, float %7305
  %7318 = select i1 %256, float 1.000000e+00, float %7306
  %7319 = select i1 %256, float %7315, float %7310
  %7320 = select i1 %256, float 0.000000e+00, float %7311
  %7321 = select i1 %256, float 0.000000e+00, float %7312
  %7322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.i32 %7322, 3
  %7324 = and i32 %7323, 3
  %7325 = icmp ne i32 %7324, 0
  %7326 = and i32 %7323, 4
  %7327 = icmp ne i32 %7326, 0
  %7328 = and i1 %7325, %7327
  %7329 = and i1 %256, %7328
  br i1 %7329, label %7330, label %7336

; <label>:7330                                    ; preds = %7303
  %7331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7332 = extractvalue %dx.types.CBufRet.f32 %7331, 1
  %7333 = fadd fast float %7313, -1.000000e+00
  %7334 = fmul fast float %7332, %7333
  %7335 = fadd fast float %7334, 1.000000e+00
  br label %7336

; <label>:7336                                    ; preds = %7330, %7303
  %7337 = phi float [ %7335, %7330 ], [ %7313, %7303 ]
  %7338 = fadd fast float %7095, %7092
  %7339 = fmul fast float %7316, %7338
  %7340 = fadd fast float %7339, %7319
  %7341 = fadd fast float %7096, %7093
  %7342 = fmul fast float %7317, %7341
  %7343 = fadd fast float %7342, %7320
  %7344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7345 = extractvalue %dx.types.CBufRet.f32 %7344, 0
  br i1 %256, label %7346, label %7370

; <label>:7346                                    ; preds = %7336
  %7347 = fadd fast float %7340, %7343
  %7348 = fmul fast float %7345, %7347
  %7349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7350 = extractvalue %dx.types.CBufRet.f32 %7349, 3
  %7351 = extractvalue %dx.types.CBufRet.f32 %5641, 1
  %7352 = fsub fast float %5646, %5640
  %7353 = fadd fast float %7352, %5647
  %7354 = fsub fast float %7353, %7351
  %7355 = extractvalue %dx.types.CBufRet.f32 %5641, 2
  %7356 = fmul fast float %7354, %7355
  %7357 = call float @dx.op.unary.f32(i32 7, float %7356)  ; Saturate(value)
  %7358 = fsub fast float %7357, %7350
  %7359 = fmul fast float %7358, %7337
  %7360 = fadd fast float %7359, %7350
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 0
  %7363 = fsub fast float %7360, %7362
  %7364 = fmul fast float %7363, 1.000000e+01
  %7365 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  %7366 = fsub fast float 1.000000e+00, %5653
  %7367 = fmul fast float %7365, %7366
  %7368 = fadd fast float %7367, %5653
  %7369 = fmul fast float %7368, %7360
  br label %7394

; <label>:7370                                    ; preds = %7336
  %7371 = fadd fast float %7097, %7094
  %7372 = fmul fast float %7318, %7371
  %7373 = fadd fast float %7372, %7321
  %7374 = fmul fast float %7345, %7340
  %7375 = fmul fast float %7345, %7343
  %7376 = fmul fast float %7345, %7373
  %7377 = call float @dx.op.binary.f32(i32 35, float %7375, float %7376)  ; FMax(a,b)
  %7378 = call float @dx.op.binary.f32(i32 35, float %7374, float %7377)  ; FMax(a,b)
  %7379 = call float @dx.op.binary.f32(i32 35, float %7378, float %5653)  ; FMax(a,b)
  %7380 = fcmp fast ugt float %7379, 0x3F10000000000000
  br i1 %7380, label %7382, label %7381

; <label>:7381                                    ; preds = %7370
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7382

; <label>:7382                                    ; preds = %7381, %7370
  %7383 = add i32 %59, 116
  %7384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %7383, i32 undef)  ; BufferLoad(srv,index,wot)
  %7385 = extractvalue %dx.types.ResRet.i32 %7384, 0
  %7386 = and i32 %7385, 32
  %7387 = icmp eq i32 %7386, 0
  br i1 %7387, label %7394, label %7388

; <label>:7388                                    ; preds = %7382
  %7389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7390 = extractvalue %dx.types.CBufRet.f32 %7389, 0
  %7391 = fmul fast float %7390, 0x3FE99999A0000000
  %7392 = fadd fast float %7390, %7374
  %7393 = fadd fast float %7391, %7376
  br label %7394

; <label>:7394                                    ; preds = %7388, %7382, %7346
  %7395 = phi float [ %7348, %7346 ], [ %7392, %7388 ], [ %7374, %7382 ]
  %7396 = phi float [ %7369, %7346 ], [ %7375, %7388 ], [ %7375, %7382 ]
  %7397 = phi float [ %7368, %7346 ], [ %7393, %7388 ], [ %7376, %7382 ]
  %7398 = phi float [ %7368, %7346 ], [ %5653, %7388 ], [ %5653, %7382 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7399 = call float @dx.op.binary.f32(i32 36, float %7395, float 3.225500e+04)  ; FMin(a,b)
  %7400 = call float @dx.op.binary.f32(i32 36, float %7396, float 3.225500e+04)  ; FMin(a,b)
  %7401 = call float @dx.op.binary.f32(i32 36, float %7397, float 3.225500e+04)  ; FMin(a,b)
  %7402 = call float @dx.op.binary.f32(i32 36, float %7398, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7399)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7400)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7401)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7402)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!dx.viewIdState = !{!71}
!dx.entryPoints = !{!72}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !60, !63}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !17}
!40 = !{i32 32, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !47}
!47 = !{i32 0, i32 14}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!54 = !{i32 45, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!55 = !{i32 46, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!56 = !{i32 47, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!57 = !{i32 48, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !47}
!58 = !{i32 49, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!59 = !{i32 50, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!60 = !{!61, !62}
!61 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!62 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!63 = !{!64, !65, !66, !67, !68, !69, !70}
!64 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!65 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!66 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!67 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!68 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!69 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!70 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!71 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!72 = !{void ()* @ps_main, !"ps_main", !73, !4, !90}
!73 = !{!74, !88, null}
!74 = !{!75, !78, !80, !82, !83, !84, !86, !87}
!75 = !{i32 0, !"SV_Position", i8 9, i8 3, !76, i8 4, i32 1, i8 4, i32 0, i8 0, !77}
!76 = !{i32 0}
!77 = !{i32 3, i32 15}
!78 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !76, i8 2, i32 1, i8 2, i32 1, i8 0, !79}
!79 = !{i32 3, i32 3}
!80 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !76, i8 2, i32 1, i8 3, i32 2, i8 0, !81}
!81 = !{i32 3, i32 7}
!82 = !{i32 3, !"NORMAL", i8 9, i8 0, !76, i8 2, i32 1, i8 3, i32 3, i8 0, !81}
!83 = !{i32 4, !"TANGENT", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 4, i8 0, !77}
!84 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !76, i8 1, i32 1, i8 1, i32 5, i8 0, !85}
!85 = !{i32 3, i32 1}
!86 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !76, i8 1, i32 1, i8 1, i32 5, i8 1, !85}
!87 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !76, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !76, i8 0, i32 1, i8 4, i32 0, i8 0, !77}
!90 = !{i32 0, i64 16}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !{!111, !113, !115, !117}
!111 = distinct !{!111, !112, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!112 = distinct !{!112, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!113 = distinct !{!113, !114, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!114 = distinct !{!114, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!115 = distinct !{!115, !116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!116 = distinct !{!116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!117 = distinct !{!117, !118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = !{!121, !121, i64 0}
!121 = !{!"float", !108, i64 0}
!122 = distinct !{!122, !100}
!123 = distinct !{!123, !100}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = !{!132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!132 = distinct !{!132, !133, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!133 = distinct !{!133, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!134 = distinct !{!134, !135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!135 = distinct !{!135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!136 = distinct !{!136, !135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!142 = distinct !{!142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!143 = distinct !{!143, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!144 = distinct !{!144, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!145 = distinct !{!145, !146, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!146 = distinct !{!146, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"\01?sort@@YAXAIAM00@Z: %c"}
!149 = distinct !{!149, !"\01?sort@@YAXAIAM00@Z"}
!150 = !{!151, !152, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!151 = distinct !{!151, !149, !"\01?sort@@YAXAIAM00@Z: %a"}
!152 = distinct !{!152, !149, !"\01?sort@@YAXAIAM00@Z: %b"}
!153 = !{!152}
!154 = !{!151, !148, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!155 = !{!151}
!156 = !{!152, !148, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!157 = !{!158}
!158 = distinct !{!158, !159, !"\01?sort@@YAXAIAM00@Z: %c"}
!159 = distinct !{!159, !"\01?sort@@YAXAIAM00@Z"}
!160 = !{!161, !162, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!161 = distinct !{!161, !159, !"\01?sort@@YAXAIAM00@Z: %a"}
!162 = distinct !{!162, !159, !"\01?sort@@YAXAIAM00@Z: %b"}
!163 = !{!162}
!164 = !{!161, !158, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!165 = !{!161}
!166 = !{!162, !158, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 2}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}

