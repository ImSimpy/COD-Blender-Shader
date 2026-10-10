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
; shader hash: a2d39d28e78c3c854ee649cc01761cc2
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
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32     2darray      T6     t16,space2     1
;                                   texture     f32          3d      T7     t15,space2     1
;                                   texture     f32          2d      T8     t14,space2     1
;                                   texture     f32          2d      T9     t13,space2     1
;                                   texture     u32          2d     T10     t17,space2     1
;                                   texture     f32          3d     T11     t18,space2     1
;                                   texture     f32     2darray     T12     t23,space2     1
;                                   texture     f32     2darray     T13     t24,space2     1
;                                   texture     f32     2darray     T14     t25,space2     1
;                                   texture    byte         r/o     T15     t66,space1     1
;                                   texture    byte         r/o     T16     t16,space1     1
;                                   texture    byte         r/o     T17     t17,space1     1
;                                   texture     f32          2d     T18     t69,space2     1
;                                   texture    byte         r/o     T19     t49,space1     1
;                                   texture    byte         r/o     T20     t50,space1     1
;                                   texture    byte         r/o     T21     t51,space1     1
;                                   texture    byte         r/o     T22     t52,space1     1
;                                   texture    byte         r/o     T23      t3,space1     1
;                                   texture    byte         r/o     T24      t4,space1     1
;                                   texture    byte         r/o     T25      t5,space1     1
;                                   texture    byte         r/o     T26      t6,space1     1
;                                   texture     f32          2d     T27     t37,space2     1
;                                   texture     f32          2d     T28             t0     1
;                                   texture     f32          2d     T29     t58,space2     1
;                                   texture     f32          2d     T30     t59,space2     1
;                                   texture     f32          2d     T31     t60,space2     1
;                                   texture    byte         r/o     T32     t45,space1     1
;                                   texture    byte         r/o     T33     t46,space1     1
;                                   texture    byte         r/o     T34     t47,space1     1
;                                   texture    byte         r/o     T35     t48,space1     1
;                                   texture     f32          2d     T36     t57,space2     1
;                                   texture    byte         r/o     T37     t69,space1     1
;                                   texture     u32          2d     T38     t56,space2     1
;                                   texture     f32     2darray     T39     t35,space2     1
;                                   texture     f32          2d     T40     t34,space2     1
;                                   texture     f32          3d     T41     t31,space2     1
;                                   texture    byte         r/o     T42     t10,space1     1
;                                   texture    byte         r/o     T43      t1,space1     1
;                                   texture     f32          1d     T44     t32,space2     1
;                                   texture     f32     2darray     T45      t8,space2     1
;                                   texture     f32          2d     T46      t2,space2     1
;                                   texture     f32          2d     T47      t3,space2     1
;                                   texture     f32          2d     T48      t4,space2     1
;                                   textureunorm_f32     2darray     T49     t80,space2     1
;                                   texture    byte         r/o     T50     t67,space1     1
;                                   texture     f32          2d     T51      t7,space2     1
;                                   texture     f32          2d     T52      t6,space2     1
;                                   texture     f32          2d     T53      t5,space2     1
;                                   texture     f32          2d     T54     t38,space2     1
;                                   texture    byte         r/o     T55     t12,space1     1
;                                   texture    byte         r/o     T56     t13,space1     1
;                                   texture     f32          1d     T57     t30,space2     1
;                                   texture     f32          3d     T58     t44,space2     1
;                                   texture     f32          3d     T59     t45,space2     1
;                                   texture     f32     2darray     T60     t47,space2     1
;                                   textureunorm_f32     2darray     T61     t85,space2     1
;                                   texture     f32          2d     T62     t83,space2     1
;                                   texture     f32          2d     T63     t86,space2     1
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 63, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 62, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 61, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 60, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 59, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 58, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = alloca [4 x i32], align 4
  %70 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = alloca [12 x float], align 4
  %89 = alloca [12 x float], align 4
  %90 = alloca [4 x float], align 4
  %91 = alloca [4 x float], align 4
  %92 = alloca [4 x float], align 4
  %93 = alloca [3 x float], align 4
  %94 = alloca [3 x float], align 4
  %95 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %96 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = fmul fast float %98, %84
  %100 = fmul fast float %98, %85
  %101 = fmul fast float %77, %74
  %102 = fmul fast float %78, %73
  %103 = fsub fast float %101, %102
  %104 = fmul fast float %78, %72
  %105 = fmul fast float %76, %74
  %106 = fsub fast float %104, %105
  %107 = fmul fast float %76, %73
  %108 = fmul fast float %77, %72
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %103, %75
  %111 = fmul fast float %106, %75
  %112 = fmul fast float %109, %75
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %116 = fmul fast float %114, 2.000000e+00
  %117 = fmul fast float %116, %99
  %118 = fmul fast float %115, 2.000000e+00
  %119 = fmul fast float %118, %100
  %120 = fsub fast float 1.000000e+00, %117
  %121 = fsub fast float 1.000000e+00, %119
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = fmul fast float %120, %123
  %127 = fmul fast float %120, %124
  %128 = fmul fast float %120, %125
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = fmul fast float %121, %130
  %134 = fmul fast float %121, %131
  %135 = fmul fast float %121, %132
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fadd fast float %133, %137
  %141 = fadd fast float %140, %126
  %142 = fadd fast float %134, %138
  %143 = fadd fast float %142, %127
  %144 = fadd fast float %135, %139
  %145 = fadd fast float %144, %128
  %146 = fmul fast float %141, %87
  %147 = fmul fast float %143, %87
  %148 = fmul fast float %145, %87
  %149 = fadd fast float %81, 5.000000e-01
  %150 = fptoui float %149 to i32
  %151 = shl i32 %150, 3
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %151, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = or i32 %151, 4
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = and i32 %153, 8191
  %158 = lshr i32 %153, 13
  %159 = and i32 %158, 8191
  %160 = lshr i32 %153, 26
  %161 = and i32 %156, 65535
  %162 = lshr i32 %156, 16
  %163 = uitofp i32 %161 to float
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %166 = uitofp i32 %162 to float
  %167 = uitofp i32 %157 to float
  %168 = fmul fast float %165, %167
  %169 = uitofp i32 %159 to float
  %170 = fmul fast float %165, %169
  %171 = fmul fast float %165, %79
  %172 = fmul fast float %171, %163
  %173 = fmul fast float %165, %80
  %174 = fmul fast float %173, %166
  %175 = fadd fast float %172, %168
  %176 = fadd fast float %170, %174
  %177 = uitofp i32 %160 to float
  %178 = fmul fast float %99, 5.000000e-01
  %179 = fmul fast float %100, 5.000000e-01
  %180 = fptosi float %178 to i32
  %181 = fptosi float %179 to i32
  %182 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %180, i32 %181, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = lshr i32 %183, 18
  %185 = uitofp i32 %184 to float
  %186 = fmul fast float %185, 0x3F4C00EBA0000000
  %187 = call float @dx.op.unary.f32(i32 21, float %186)  ; Exp(value)
  %188 = fadd fast float %187, -1.000000e+00
  %189 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %190 = extractvalue %dx.types.Dimensions %189, 0
  %191 = sitofp i32 %190 to float
  %192 = extractvalue %dx.types.Dimensions %189, 1
  %193 = sitofp i32 %192 to float
  %194 = fcmp fast oge float %178, %191
  %195 = fcmp fast oge float %179, %193
  %196 = or i1 %194, %195
  %197 = select i1 %196, float 0x4197782600000000, float %188
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %200 = extractvalue %dx.types.CBufRet.f32 %198, 3
  %201 = fmul fast float %199, %99
  %202 = fmul fast float %200, %100
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = and i32 %204, 114688
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %206, float %201, float 0.000000e+00
  %208 = select i1 %206, float %202, float 0.000000e+00
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %65, float %207, float %208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fmul fast float %210, 2.550000e+02
  %212 = fptoui float %211 to i32
  %213 = select i1 %206, i32 %212, i32 0
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.i32 %215, 3
  %217 = and i32 %216, 3
  %218 = icmp ne i32 %217, 0
  %219 = and i32 %216, 4
  %220 = icmp ne i32 %219, 0
  %221 = and i1 %218, %220
  br i1 %221, label %222, label %233

; <label>:222                                     ; preds = %0
  %223 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %224 = fmul fast float %223, %100
  %225 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %226 = fmul fast float %225, %99
  %227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %64, float %226, float %224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = fsub fast float 1.000000e+00, %228
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %232 = fcmp fast olt float %229, %231
  br label %236

; <label>:233                                     ; preds = %0
  %234 = icmp eq i32 %219, 0
  %235 = and i1 %218, %234
  br label %236

; <label>:236                                     ; preds = %233, %222
  %237 = phi i1 [ %232, %222 ], [ %235, %233 ]
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %240 = fmul fast float %239, 0x3FE3C6EF40000000
  %241 = frem fast float %99, 2.560000e+02
  %242 = frem fast float %100, 2.560000e+02
  %243 = fptoui float %241 to i32
  %244 = fptoui float %242 to i32
  %245 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = fadd fast float %246, %240
  %248 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %249 = add i32 %71, 60
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = shl i32 %251, 4
  %253 = and i32 %252, 32752
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %251, 7
  %256 = and i32 %255, 32752
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %251, 22
  %259 = shl nuw nsw i32 %258, 5
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = add i32 %71, 72
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = lshr i32 %263, 8
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = lshr i32 %263, 16
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = add i32 %71, 36
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %71, 96
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = fmul fast float %286, 0x3F50624DE0000000
  %290 = fmul fast float %288, 0x3F50624DE0000000
  %291 = add i32 %71, 124
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 2
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %304, label %296

; <label>:296                                     ; preds = %236
  %297 = add i32 %71, 164
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = add i32 %299, 0
  %301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %302 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %301, %dx.types.Handle %96, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 3
  br label %304

; <label>:304                                     ; preds = %296, %236
  %305 = phi float [ 1.000000e+00, %236 ], [ %303, %296 ]
  %306 = add i32 %71, 24
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = add i32 %71, 28
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = or i32 %311, %308
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %955, label %314

; <label>:314                                     ; preds = %304
  %315 = add i32 %71, 92
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = lshr i32 %317, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = fmul fast float %319, 0x3F50624DE0000000
  %321 = add i32 %71, 40
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = lshr i32 %323, 16
  %325 = and i32 %324, 255
  %326 = lshr i32 %323, 24
  %327 = add i32 %71, 100
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %71, 32
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = lshr i32 %336, 22
  %338 = shl nuw nsw i32 %337, 5
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = shl i32 %336, 4
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %336, 7
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 3
  %348 = fmul fast float %347, 1.000000e+03
  %349 = fmul fast float %289, %348
  %350 = call float @dx.op.unary.f32(i32 22, float %349)  ; Frc(value)
  %351 = fadd fast float %350, %279
  %352 = fmul fast float %290, %348
  %353 = call float @dx.op.unary.f32(i32 22, float %352)  ; Frc(value)
  %354 = fadd fast float %353, %281
  %355 = fmul fast float %320, %348
  %356 = call float @dx.op.unary.f32(i32 22, float %355)  ; Frc(value)
  %357 = fmul fast float %356, 0x401921FB60000000
  %358 = fadd fast float %357, %339
  %359 = call float @dx.op.unary.f32(i32 13, float %358)  ; Sin(value)
  %360 = call float @dx.op.unary.f32(i32 12, float %358)  ; Cos(value)
  %361 = fsub fast float -0.000000e+00, %359
  %362 = fadd fast float %82, -5.000000e-01
  %363 = fadd fast float %83, -5.000000e-01
  %364 = fmul fast float %331, %362
  %365 = fmul fast float %333, %363
  %366 = fadd fast float %364, 5.000000e-01
  %367 = fadd fast float %365, 5.000000e-01
  %368 = fmul fast float %342, %366
  %369 = fmul fast float %345, %367
  %370 = fmul fast float %360, %368
  %371 = call float @dx.op.tertiary.f32(i32 46, float %361, float %369, float %370)  ; FMad(a,b,c)
  %372 = fmul fast float %359, %368
  %373 = call float @dx.op.tertiary.f32(i32 46, float %360, float %369, float %372)  ; FMad(a,b,c)
  %374 = fadd fast float %351, %371
  %375 = fadd fast float %354, %373
  %376 = icmp ugt i32 %325, 1
  %377 = icmp ugt i32 %323, 33554431
  %378 = or i1 %377, %376
  br i1 %378, label %379, label %404

; <label>:379                                     ; preds = %314
  %380 = add i32 %71, 84
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = lshr i32 %382, 16
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = fmul fast float %347, %384
  %386 = call float @dx.op.unary.f32(i32 22, float %385)  ; Frc(value)
  %387 = mul nuw nsw i32 %325, %326
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %386, %388
  %390 = call float @dx.op.unary.f32(i32 27, float %389)  ; Round_ni(value)
  %391 = fptoui float %390 to i32
  %392 = urem i32 %391, %325
  %393 = udiv i32 %391, %326
  %394 = call float @dx.op.unary.f32(i32 22, float %374)  ; Frc(value)
  %395 = call float @dx.op.unary.f32(i32 22, float %375)  ; Frc(value)
  %396 = uitofp i32 %392 to float
  %397 = uitofp i32 %393 to float
  %398 = fadd fast float %394, %396
  %399 = fadd fast float %395, %397
  %400 = uitofp i32 %325 to float
  %401 = uitofp i32 %326 to float
  %402 = fdiv fast float %398, %400
  %403 = fdiv fast float %399, %401
  br label %404

; <label>:404                                     ; preds = %379, %314
  %405 = phi float [ %402, %379 ], [ %374, %314 ]
  %406 = phi float [ %403, %379 ], [ %375, %314 ]
  %407 = and i32 %308, 16777216
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %518, label %409

; <label>:409                                     ; preds = %404
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %413 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %414 = fadd fast float %411, %146
  %415 = fadd fast float %412, %147
  %416 = fadd fast float %413, %148
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = icmp eq i32 %70, 65535
  br i1 %420, label %515, label %421

; <label>:421                                     ; preds = %409
  %422 = lshr i32 %70, 1
  %423 = shl i32 %422, 2
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %70, 1
  %427 = icmp ne i32 %426, 0
  %428 = lshr i32 %425, 16
  %429 = and i32 %425, 65535
  %430 = select i1 %427, i32 %428, i32 %429
  %431 = icmp eq i32 %430, 65535
  br i1 %431, label %511, label %432

; <label>:432                                     ; preds = %421
  %433 = mul nuw nsw i32 %430, 40
  %434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = extractvalue %dx.types.ResRet.f32 %434, 1
  %437 = extractvalue %dx.types.ResRet.f32 %434, 2
  %438 = add nuw nsw i32 %433, 12
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  %443 = add nuw nsw i32 %433, 24
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = add nuw nsw i32 %433, 36
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = fsub fast float %414, %435
  %452 = fsub fast float %415, %436
  %453 = fsub fast float %416, %437
  %454 = fmul fast float %450, %451
  %455 = fmul fast float %450, %452
  %456 = fmul fast float %450, %453
  %457 = call float @dx.op.unary.f32(i32 27, float %454)  ; Round_ni(value)
  %458 = call float @dx.op.unary.f32(i32 27, float %455)  ; Round_ni(value)
  %459 = call float @dx.op.unary.f32(i32 27, float %456)  ; Round_ni(value)
  %460 = fadd fast float %457, 5.000000e-01
  %461 = fadd fast float %458, 5.000000e-01
  %462 = fadd fast float %459, 5.000000e-01
  %463 = fmul fast float %460, %440
  %464 = fmul fast float %461, %441
  %465 = fmul fast float %462, %442
  %466 = shl i32 %70, 2
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = add i32 %468, 0
  %470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %471 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %472 = call float @dx.op.unary.f32(i32 22, float %464)  ; Frc(value)
  %473 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %470, %dx.types.Handle %65, float %471, float %472, float %473, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = fmul fast float %475, 1.023000e+03
  %479 = fmul fast float %476, 1.023000e+03
  %480 = fmul fast float %477, 1.023000e+03
  %481 = fadd fast float %478, 5.000000e-01
  %482 = fadd fast float %479, 5.000000e-01
  %483 = fadd fast float %480, 5.000000e-01
  %484 = call float @dx.op.unary.f32(i32 27, float %481)  ; Round_ni(value)
  %485 = call float @dx.op.unary.f32(i32 27, float %482)  ; Round_ni(value)
  %486 = call float @dx.op.unary.f32(i32 27, float %483)  ; Round_ni(value)
  %487 = fsub fast float %454, %457
  %488 = fsub fast float %455, %458
  %489 = fsub fast float %456, %459
  %490 = fmul fast float %487, 7.500000e-01
  %491 = fmul fast float %488, 7.500000e-01
  %492 = fmul fast float %489, 7.500000e-01
  %493 = fadd fast float %457, 1.250000e-01
  %494 = fadd fast float %493, %490
  %495 = fadd fast float %494, %484
  %496 = fadd fast float %458, 1.250000e-01
  %497 = fadd fast float %496, %491
  %498 = fadd fast float %497, %485
  %499 = fadd fast float %459, 1.250000e-01
  %500 = fadd fast float %499, %492
  %501 = fadd fast float %500, %486
  %502 = fmul fast float %495, %445
  %503 = fmul fast float %498, %446
  %504 = fmul fast float %501, %447
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = add i32 %506, 0
  %508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %508, %dx.types.Handle %63, float %502, float %503, float %504, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  br label %511

; <label>:511                                     ; preds = %432, %421
  %512 = phi float [ %510, %432 ], [ -1.000000e+00, %421 ]
  %513 = fadd fast float %512, %419
  %514 = call float @dx.op.unary.f32(i32 7, float %513)  ; Saturate(value)
  br label %515

; <label>:515                                     ; preds = %511, %409
  %516 = phi float [ %514, %511 ], [ %419, %409 ]
  %517 = fmul fast float %516, %305
  br label %518

; <label>:518                                     ; preds = %515, %404
  %519 = phi float [ %517, %515 ], [ %305, %404 ]
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 256
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %570, label %524

; <label>:524                                     ; preds = %518
  %525 = add i32 %71, 152
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = add i32 %527, 0
  %529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %529, %dx.types.Handle %96, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = add i32 %71, 52
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = shl i32 %534, 4
  %536 = and i32 %535, 32752
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %534, 7
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = fsub fast float 1.000000e+00, %519
  %542 = call float @dx.op.binary.f32(i32 35, float %541, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %543 = bitcast float %519 to i32
  %544 = sitofp i32 %543 to float
  %545 = fadd fast float %544, 0xC1CFBF8940000000
  %546 = fmul fast float %540, %545
  %547 = fadd fast float %546, 0x41CFBF8940000000
  %548 = fptosi float %547 to i32
  %549 = bitcast i32 %548 to float
  %550 = bitcast float %542 to i32
  %551 = sitofp i32 %550 to float
  %552 = fadd fast float %551, 0xC1CFBF8940000000
  %553 = fmul fast float %552, %540
  %554 = fadd fast float %553, 0x41CFBF8940000000
  %555 = fptosi float %554 to i32
  %556 = bitcast i32 %555 to float
  %557 = fmul fast float %549, %537
  %558 = fmul fast float %556, %537
  %559 = fsub fast float %542, %557
  %560 = fadd fast float %558, %542
  %561 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  %562 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %563 = fsub fast float %531, %561
  %564 = fsub fast float %562, %561
  %565 = bitcast float %564 to i32
  %566 = sub nsw i32 2129859010, %565
  %567 = bitcast i32 %566 to float
  %568 = fmul fast float %567, %563
  %569 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  br label %570

; <label>:570                                     ; preds = %524, %518
  %571 = phi float [ %569, %524 ], [ %519, %518 ]
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 128
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %592, label %576

; <label>:576                                     ; preds = %570
  %577 = add i32 %71, 148
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = add i32 %579, 0
  %581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %582 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %581, %dx.types.Handle %96, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 524288
  %587 = icmp ne i32 %586, 0
  %588 = fcmp fast ogt float %583, 0x3FE0101020000000
  %589 = select i1 %588, float 1.000000e+00, float 0.000000e+00
  %590 = select i1 %587, float %589, float %583
  %591 = fmul fast float %590, %571
  br label %592

; <label>:592                                     ; preds = %576, %570
  %593 = phi float [ %591, %576 ], [ %571, %570 ]
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = and i32 %595, 16
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %796, label %598

; <label>:598                                     ; preds = %592
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = add i32 %71, 136
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = add i32 %603, 0
  %605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %605, %dx.types.Handle %95, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = extractvalue %dx.types.ResRet.f32 %606, 3
  %611 = and i32 %600, 255
  %612 = uitofp i32 %611 to float
  %613 = lshr i32 %600, 8
  %614 = and i32 %613, 255
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %610, %612
  %617 = fadd fast float %616, %615
  %618 = fmul fast float %617, 0x3F70101000000000
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = and i32 %620, 512
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %631, label %623

; <label>:623                                     ; preds = %598
  %624 = add i32 %71, 156
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = add i32 %626, 0
  %628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %628, %dx.types.Handle %96, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  br label %631

; <label>:631                                     ; preds = %623, %598
  %632 = phi float [ %630, %623 ], [ 1.000000e+00, %598 ]
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 33554432
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %743, label %637

; <label>:637                                     ; preds = %631
  %638 = add i32 %71, 80
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = lshr i32 %640, 16
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = add i32 %71, 84
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 65535
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = lshr i32 %651, 24
  %653 = uitofp i32 %652 to float
  %654 = fmul fast float %653, 0x3F70101020000000
  %655 = and i32 %651, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = lshr i32 %651, 8
  %659 = and i32 %658, 255
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %660, 0x3F70101020000000
  %662 = lshr i32 %651, 16
  %663 = and i32 %662, 255
  %664 = uitofp i32 %663 to float
  %665 = fmul fast float %664, 0x3F70101020000000
  %666 = add i32 %71, 76
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = lshr i32 %668, 24
  %670 = uitofp i32 %669 to float
  %671 = fmul fast float %670, 0x3F70101020000000
  %672 = and i32 %668, 255
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F70101020000000
  %675 = lshr i32 %668, 8
  %676 = and i32 %675, 255
  %677 = uitofp i32 %676 to float
  %678 = fmul fast float %677, 0x3F70101020000000
  %679 = lshr i32 %668, 16
  %680 = and i32 %679, 255
  %681 = uitofp i32 %680 to float
  %682 = fmul fast float %681, 0x3F70101020000000
  %683 = bitcast float %607 to i32
  %684 = ashr i32 %683, 1
  %685 = sub nsw i32 1597463174, %684
  %686 = bitcast i32 %685 to float
  %687 = fmul fast float %607, 5.000000e-01
  %688 = fmul fast float %686, %686
  %689 = fmul fast float %688, %687
  %690 = fsub fast float 1.500000e+00, %689
  %691 = fmul fast float %686, %607
  %692 = fmul fast float %691, %690
  %693 = bitcast float %608 to i32
  %694 = ashr i32 %693, 1
  %695 = sub nsw i32 1597463174, %694
  %696 = bitcast i32 %695 to float
  %697 = fmul fast float %608, 5.000000e-01
  %698 = fmul fast float %696, %696
  %699 = fmul fast float %698, %697
  %700 = fsub fast float 1.500000e+00, %699
  %701 = fmul fast float %696, %608
  %702 = fmul fast float %701, %700
  %703 = bitcast float %609 to i32
  %704 = ashr i32 %703, 1
  %705 = sub nsw i32 1597463174, %704
  %706 = bitcast i32 %705 to float
  %707 = fmul fast float %609, 5.000000e-01
  %708 = fmul fast float %706, %706
  %709 = fmul fast float %708, %707
  %710 = fsub fast float 1.500000e+00, %709
  %711 = fmul fast float %706, %609
  %712 = fmul fast float %711, %710
  %713 = fsub fast float %692, %674
  %714 = fsub fast float %702, %678
  %715 = fsub fast float %712, %682
  %716 = fmul fast float %713, %642
  %717 = fmul fast float %714, %644
  %718 = fmul fast float %715, %649
  %719 = fadd fast float %716, %657
  %720 = fadd fast float %717, %661
  %721 = fadd fast float %718, %665
  %722 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  %723 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %724 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %725 = fmul fast float %722, %722
  %726 = fmul fast float %723, %723
  %727 = fmul fast float %724, %724
  %728 = fsub fast float %725, %607
  %729 = fsub fast float %726, %608
  %730 = fsub fast float %727, %609
  %731 = fmul fast float %728, %632
  %732 = fmul fast float %729, %632
  %733 = fmul fast float %730, %632
  %734 = fadd fast float %731, %607
  %735 = fadd fast float %732, %608
  %736 = fadd fast float %733, %609
  %737 = fadd fast float %654, %618
  %738 = fsub fast float %737, %671
  %739 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %740 = fsub fast float %739, %618
  %741 = fmul fast float %740, %632
  %742 = fadd fast float %741, %618
  br label %796

; <label>:743                                     ; preds = %631
  %744 = and i32 %634, 134217728
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %780, label %746

; <label>:746                                     ; preds = %743
  %747 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %748 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %749 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %750 = fadd fast float %747, -5.000000e-01
  %751 = fadd fast float %748, -5.000000e-01
  %752 = fadd fast float %749, -5.000000e-01
  %753 = fmul fast float %750, %632
  %754 = fmul fast float %751, %632
  %755 = fmul fast float %752, %632
  %756 = fadd fast float %753, 5.000000e-01
  %757 = fadd fast float %754, 5.000000e-01
  %758 = fadd fast float %755, 5.000000e-01
  %759 = call float @dx.op.unary.f32(i32 24, float %607)  ; Sqrt(value)
  %760 = call float @dx.op.unary.f32(i32 24, float %608)  ; Sqrt(value)
  %761 = call float @dx.op.unary.f32(i32 24, float %609)  ; Sqrt(value)
  %762 = fmul fast float %756, 2.000000e+00
  %763 = fsub fast float 1.000000e+00, %762
  %764 = fmul fast float %763, %759
  %765 = fadd fast float %764, %762
  %766 = fmul fast float %765, %759
  %767 = fmul fast float %757, 2.000000e+00
  %768 = fsub fast float 1.000000e+00, %767
  %769 = fmul fast float %768, %760
  %770 = fadd fast float %769, %767
  %771 = fmul fast float %770, %760
  %772 = fmul fast float %758, 2.000000e+00
  %773 = fsub fast float 1.000000e+00, %772
  %774 = fmul fast float %773, %761
  %775 = fadd fast float %774, %772
  %776 = fmul fast float %775, %761
  %777 = fmul fast float %766, %766
  %778 = fmul fast float %771, %771
  %779 = fmul fast float %776, %776
  br label %796

; <label>:780                                     ; preds = %743
  %781 = fmul fast float %266, %266
  %782 = fmul fast float %270, %270
  %783 = fmul fast float %274, %274
  %784 = fadd fast float %781, -1.000000e+00
  %785 = fadd fast float %782, -1.000000e+00
  %786 = fadd fast float %783, -1.000000e+00
  %787 = fmul fast float %632, %784
  %788 = fmul fast float %632, %785
  %789 = fmul fast float %632, %786
  %790 = fadd fast float %787, 1.000000e+00
  %791 = fadd fast float %788, 1.000000e+00
  %792 = fadd fast float %789, 1.000000e+00
  %793 = fmul fast float %790, %607
  %794 = fmul fast float %791, %608
  %795 = fmul fast float %792, %609
  br label %796

; <label>:796                                     ; preds = %780, %746, %637, %592
  %797 = phi float [ %742, %637 ], [ %618, %746 ], [ %618, %780 ], [ 0x3FA23C0BE0000000, %592 ]
  %798 = phi float [ %734, %637 ], [ %777, %746 ], [ %793, %780 ], [ 1.000000e+00, %592 ]
  %799 = phi float [ %735, %637 ], [ %778, %746 ], [ %794, %780 ], [ 1.000000e+00, %592 ]
  %800 = phi float [ %736, %637 ], [ %779, %746 ], [ %795, %780 ], [ 1.000000e+00, %592 ]
  %801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.i32 %801, 1
  %803 = and i32 %802, 1
  %804 = icmp ne i32 %803, 0
  %805 = add i32 %71, 132
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 32
  %809 = icmp ne i32 %808, 0
  %810 = and i1 %804, %809
  %811 = select i1 %810, float 1.000000e+00, float %798
  %812 = select i1 %810, float 0x3FD3333340000000, float %799
  %813 = select i1 %810, float 0x3FD3333340000000, float %800
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 32
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %890, label %818

; <label>:818                                     ; preds = %796
  %819 = add i32 %71, 44
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = add i32 %71, 140
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = add i32 %824, 0
  %826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %826, %dx.types.Handle %95, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = extractvalue %dx.types.ResRet.f32 %827, 1
  %830 = extractvalue %dx.types.ResRet.f32 %827, 2
  %831 = extractvalue %dx.types.ResRet.f32 %827, 3
  %832 = and i32 %821, 255
  %833 = uitofp i32 %832 to float
  %834 = lshr i32 %821, 8
  %835 = and i32 %834, 255
  %836 = uitofp i32 %835 to float
  %837 = lshr i32 %821, 16
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F70101000000000
  %841 = fmul fast float %828, %833
  %842 = fadd fast float %841, %836
  %843 = fmul fast float %842, 0x3F70101000000000
  %844 = fadd fast float %829, -5.000000e-01
  %845 = fadd fast float %831, -5.000000e-01
  %846 = fmul fast float %844, %840
  %847 = fmul fast float %845, %840
  %848 = fadd fast float %846, 5.000000e-01
  %849 = fadd fast float %847, 5.000000e-01
  %850 = fmul fast float %848, 2.000000e+00
  %851 = fadd fast float %850, -1.000000e+00
  %852 = fmul fast float %849, 2.000000e+00
  %853 = fadd fast float %852, -1.000000e+00
  %854 = fadd fast float %851, %853
  %855 = fmul fast float %854, 5.000000e-01
  %856 = fsub fast float %851, %853
  %857 = fmul fast float %856, 5.000000e-01
  %858 = call float @dx.op.unary.f32(i32 6, float %855)  ; FAbs(value)
  %859 = fsub fast float 1.000000e+00, %858
  %860 = call float @dx.op.unary.f32(i32 6, float %857)  ; FAbs(value)
  %861 = fsub fast float %859, %860
  %862 = call float @dx.op.dot3.f32(i32 55, float %855, float %857, float %861, float %855, float %857, float %861)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = call float @dx.op.unary.f32(i32 25, float %862)  ; Rsqrt(value)
  %864 = fmul fast float %855, %863
  %865 = fmul fast float %857, %863
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = and i32 %867, 67108864
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %886, label %870

; <label>:870                                     ; preds = %818
  %871 = add i32 %71, 88
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 65535
  %875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %874)  ; LegacyF16ToF32(value)
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = and i32 %877, 65535
  %879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %878)  ; LegacyF16ToF32(value)
  %880 = lshr i32 %873, 16
  %881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %880)  ; LegacyF16ToF32(value)
  %882 = fsub fast float %843, %881
  %883 = fmul fast float %882, %875
  %884 = fadd fast float %883, %879
  %885 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  br label %886

; <label>:886                                     ; preds = %870, %818
  %887 = phi float [ %885, %870 ], [ %843, %818 ]
  %888 = call float @dx.op.dot2.f32(i32 54, float %864, float %865, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %889 = call float @dx.op.dot2.f32(i32 54, float %864, float %865, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %890

; <label>:890                                     ; preds = %886, %796
  %891 = phi float [ %887, %886 ], [ 0x3FD6666660000000, %796 ]
  %892 = phi float [ %888, %886 ], [ 0.000000e+00, %796 ]
  %893 = phi float [ %889, %886 ], [ 0.000000e+00, %796 ]
  %894 = phi float [ %830, %886 ], [ 1.000000e+00, %796 ]
  %895 = add i32 %71, 64
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = lshr i32 %897, 22
  %899 = shl nuw nsw i32 %898, 5
  %900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %899)  ; LegacyF16ToF32(value)
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = and i32 %902, 64
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %938, label %905

; <label>:905                                     ; preds = %890
  %906 = add i32 %71, 144
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = add i32 %908, 0
  %910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 131072
  %914 = icmp eq i32 %913, 0
  %915 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %910, %dx.types.Handle %95, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = extractvalue %dx.types.ResRet.f32 %915, 1
  %918 = extractvalue %dx.types.ResRet.f32 %915, 2
  %919 = fmul fast float %916, %254
  %920 = fmul fast float %917, %257
  %921 = fmul fast float %918, %260
  br i1 %914, label %928, label %922

; <label>:922                                     ; preds = %905
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = fmul fast float %924, %919
  %926 = fmul fast float %924, %920
  %927 = fmul fast float %924, %921
  br label %928

; <label>:928                                     ; preds = %922, %905
  %929 = phi float [ %925, %922 ], [ %919, %905 ]
  %930 = phi float [ %926, %922 ], [ %920, %905 ]
  %931 = phi float [ %927, %922 ], [ %921, %905 ]
  %932 = fmul fast float %929, %900
  %933 = select i1 %237, float %932, float %929
  %934 = call float @dx.op.dot3.f32(i32 55, float %933, float %930, float %931, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %935 = select i1 %237, float 0.000000e+00, float %929
  %936 = select i1 %237, float %934, float %930
  %937 = select i1 %237, float 0.000000e+00, float %931
  br label %938

; <label>:938                                     ; preds = %928, %890
  %939 = phi float [ %935, %928 ], [ 0.000000e+00, %890 ]
  %940 = phi float [ %936, %928 ], [ 0.000000e+00, %890 ]
  %941 = phi float [ %937, %928 ], [ 0.000000e+00, %890 ]
  %942 = add i32 %71, 48
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 255
  %946 = uitofp i32 %945 to float
  %947 = lshr i32 %944, 8
  %948 = and i32 %947, 255
  %949 = uitofp i32 %948 to float
  %950 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %951 = fmul fast float %949, %950
  %952 = fadd fast float %951, %946
  %953 = fmul fast float %952, 0x3F70101020000000
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  br label %955

; <label>:955                                     ; preds = %938, %304
  %956 = phi float [ 0.000000e+00, %304 ], [ %892, %938 ]
  %957 = phi float [ 0.000000e+00, %304 ], [ %893, %938 ]
  %958 = phi float [ 0.000000e+00, %304 ], [ %811, %938 ]
  %959 = phi float [ 0.000000e+00, %304 ], [ %812, %938 ]
  %960 = phi float [ 0.000000e+00, %304 ], [ %813, %938 ]
  %961 = phi float [ 0.000000e+00, %304 ], [ %939, %938 ]
  %962 = phi float [ 0.000000e+00, %304 ], [ %940, %938 ]
  %963 = phi float [ 0.000000e+00, %304 ], [ %941, %938 ]
  %964 = phi float [ 0.000000e+00, %304 ], [ %797, %938 ]
  %965 = phi float [ 0.000000e+00, %304 ], [ %593, %938 ]
  %966 = phi float [ 0.000000e+00, %304 ], [ %891, %938 ]
  %967 = phi float [ 0.000000e+00, %304 ], [ %894, %938 ]
  %968 = phi float [ 0.000000e+00, %304 ], [ %954, %938 ]
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 0
  %971 = call float @dx.op.dot2.f32(i32 54, float %956, float %957, float %956, float %957)  ; Dot2(ax,ay,bx,by)
  %972 = fmul fast float %971, 0x3FE3333340000000
  %973 = fsub fast float 1.000000e+00, %972
  %974 = call float @dx.op.dot3.f32(i32 55, float %956, float %957, float %973, float %956, float %957, float %973)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = call float @dx.op.unary.f32(i32 25, float %974)  ; Rsqrt(value)
  %976 = fmul fast float %975, %956
  %977 = fmul fast float %975, %957
  %978 = fmul fast float %973, %975
  %979 = fmul fast float %978, %76
  %980 = fmul fast float %978, %77
  %981 = fmul fast float %978, %78
  %982 = fmul fast float %976, %72
  %983 = fmul fast float %976, %73
  %984 = fmul fast float %976, %74
  %985 = fadd fast float %979, %982
  %986 = fadd fast float %980, %983
  %987 = fadd fast float %981, %984
  %988 = fmul fast float %977, %110
  %989 = fmul fast float %977, %111
  %990 = fmul fast float %977, %112
  %991 = fadd fast float %985, %988
  %992 = fadd fast float %986, %989
  %993 = fadd fast float %987, %990
  %994 = call float @dx.op.dot3.f32(i32 55, float %991, float %992, float %993, float %991, float %992, float %993)  ; Dot3(ax,ay,az,bx,by,bz)
  %995 = call float @dx.op.unary.f32(i32 25, float %994)  ; Rsqrt(value)
  %996 = fmul fast float %991, %995
  %997 = fmul fast float %992, %995
  %998 = fmul fast float %993, %995
  %999 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %1000 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %1001 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1002 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %1003 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %1004 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1005 = fadd fast float %999, %146
  %1006 = fadd fast float %1000, %147
  %1007 = fadd fast float %1001, %148
  %1008 = fadd fast float %1002, %146
  %1009 = fadd fast float %1003, %147
  %1010 = fadd fast float %1004, %148
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1017 = extractvalue %dx.types.CBufRet.f32 %1015, 3
  %1018 = fmul fast float %1012, %99
  %1019 = fmul fast float %1018, %1016
  %1020 = fmul fast float %1013, %100
  %1021 = fmul fast float %1020, %1017
  %1022 = fptoui float %1019 to i32
  %1023 = fptoui float %1021 to i32
  %1024 = fadd fast float %1012, -1.000000e+00
  %1025 = fadd fast float %1013, -1.000000e+00
  %1026 = fptoui float %1024 to i32
  %1027 = fptoui float %1025 to i32
  %1028 = call i32 @dx.op.binary.i32(i32 40, i32 %1022, i32 %1026)  ; UMin(a,b)
  %1029 = call i32 @dx.op.binary.i32(i32 40, i32 %1023, i32 %1027)  ; UMin(a,b)
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1032 = extractvalue %dx.types.CBufRet.f32 %1030, 3
  %1033 = fmul fast float %1031, %87
  %1034 = fsub fast float %1033, %1032
  %1035 = fadd fast float %1014, -1.000000e+00
  %1036 = call float @dx.op.binary.f32(i32 36, float %1034, float %1035)  ; FMin(a,b)
  %1037 = fptoui float %1036 to i32
  %1038 = fptoui float %1012 to i32
  %1039 = fptoui float %1013 to i32
  %1040 = mul i32 %1037, %1039
  %1041 = add i32 %1040, %1029
  %1042 = mul i32 %1041, %1038
  %1043 = add i32 %1042, %1028
  %1044 = shl i32 %1043, 2
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %1046, 1023
  %1048 = lshr i32 %1046, 10
  %1049 = icmp eq i32 %1047, 0
  br i1 %1049, label %1475, label %1050

; <label>:1050                                    ; preds = %955
  %1051 = and i32 %1046, 1023
  br label %1052

; <label>:1052                                    ; preds = %1178, %1050
  %1053 = phi float [ %1179, %1178 ], [ 0.000000e+00, %1050 ]
  %1054 = phi float [ %1180, %1178 ], [ %970, %1050 ]
  %1055 = phi float [ %1181, %1178 ], [ %968, %1050 ]
  %1056 = phi float [ %1182, %1178 ], [ 0.000000e+00, %1050 ]
  %1057 = phi float [ %1183, %1178 ], [ 0.000000e+00, %1050 ]
  %1058 = phi float [ %1184, %1178 ], [ %961, %1050 ]
  %1059 = phi float [ %1185, %1178 ], [ %962, %1050 ]
  %1060 = phi float [ %1186, %1178 ], [ %963, %1050 ]
  %1061 = phi float [ %1187, %1178 ], [ %996, %1050 ]
  %1062 = phi float [ %1188, %1178 ], [ %997, %1050 ]
  %1063 = phi float [ %1189, %1178 ], [ %998, %1050 ]
  %1064 = phi float [ %1190, %1178 ], [ %967, %1050 ]
  %1065 = phi float [ %1191, %1178 ], [ %966, %1050 ]
  %1066 = phi float [ %1192, %1178 ], [ 0.000000e+00, %1050 ]
  %1067 = phi float [ %1193, %1178 ], [ %964, %1050 ]
  %1068 = phi float [ %1194, %1178 ], [ %958, %1050 ]
  %1069 = phi float [ %1195, %1178 ], [ %959, %1050 ]
  %1070 = phi float [ %1196, %1178 ], [ %960, %1050 ]
  %1071 = phi i32 [ %1128, %1178 ], [ 0, %1050 ]
  %1072 = add nuw nsw i32 %1071, %1048
  %1073 = shl i32 %1072, 2
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = shl i32 %1075, 8
  %1077 = or i32 %1076, 48
  %1078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = extractvalue %dx.types.ResRet.f32 %1078, 3
  %1083 = or i32 %1076, 64
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.i32 %1084, 1
  %1087 = or i32 %1076, 80
  %1088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 3
  %1091 = or i32 %1076, 96
  %1092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = extractvalue %dx.types.ResRet.f32 %1092, 3
  %1097 = or i32 %1076, 112
  %1098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 2
  %1100 = or i32 %1076, 128
  %1101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1104 = extractvalue %dx.types.ResRet.f32 %1101, 2
  %1105 = extractvalue %dx.types.ResRet.f32 %1101, 3
  %1106 = or i32 %1076, 144
  %1107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1111 = extractvalue %dx.types.ResRet.f32 %1107, 3
  %1112 = or i32 %1076, 160
  %1113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  %1117 = extractvalue %dx.types.ResRet.f32 %1113, 3
  %1118 = or i32 %1076, 192
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = or i32 %1076, 208
  %1122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = or i32 %1076, 248
  %1125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.ResRet.f32 %1125, 1
  %1128 = add nuw nsw i32 %1071, 1
  %1129 = bitcast float %1082 to i32
  %1130 = and i32 %1129, 2560
  %1131 = icmp eq i32 %1130, 0
  %1132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = extractvalue %dx.types.ResRet.f32 %1132, 3
  %1137 = call float @dx.op.dot4.f32(i32 56, float %1133, float %1134, float %1135, float %1136, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1138 = or i32 %1076, 16
  %1139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = extractvalue %dx.types.ResRet.f32 %1139, 3
  %1144 = call float @dx.op.dot4.f32(i32 56, float %1140, float %1141, float %1142, float %1143, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1145 = or i32 %1076, 32
  %1146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = extractvalue %dx.types.ResRet.f32 %1146, 3
  %1151 = call float @dx.op.dot4.f32(i32 56, float %1147, float %1148, float %1149, float %1150, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1152 = call float @dx.op.unary.f32(i32 27, float %1137)  ; Round_ni(value)
  %1153 = call float @dx.op.unary.f32(i32 6, float %1152)  ; FAbs(value)
  %1154 = call float @dx.op.unary.f32(i32 27, float %1144)  ; Round_ni(value)
  %1155 = call float @dx.op.unary.f32(i32 6, float %1154)  ; FAbs(value)
  %1156 = call float @dx.op.unary.f32(i32 6, float %1151)  ; FAbs(value)
  %1157 = call float @dx.op.unary.f32(i32 27, float %1156)  ; Round_ni(value)
  %1158 = fadd fast float %1155, %1153
  %1159 = fadd fast float %1158, %1157
  %1160 = fcmp fast oeq float %1159, 0.000000e+00
  %1161 = call float @dx.op.dot4.f32(i32 56, float %1133, float %1134, float %1135, float %1136, float %1005, float %1006, float %1007, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1162 = call float @dx.op.dot4.f32(i32 56, float %1140, float %1141, float %1142, float %1143, float %1005, float %1006, float %1007, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1163 = call float @dx.op.dot4.f32(i32 56, float %1133, float %1134, float %1135, float %1136, float %1008, float %1009, float %1010, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1164 = call float @dx.op.dot4.f32(i32 56, float %1140, float %1141, float %1142, float %1143, float %1008, float %1009, float %1010, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1165 = fsub fast float %1161, %1137
  %1166 = fsub fast float %1163, %1137
  %1167 = fsub fast float %1162, %1144
  %1168 = fsub fast float %1164, %1144
  %1169 = call float @dx.op.dot3.f32(i32 55, float %1079, float %1080, float %1081, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1172 = fadd fast float %1171, %1169
  %1173 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1175 = fcmp fast ogt float %1173, %1174
  %1176 = and i1 %1160, %1175
  %1177 = and i1 %1131, %1176
  br i1 %1177, label %1198, label %1178

; <label>:1178                                    ; preds = %1461, %1279, %1198, %1052
  %1179 = phi float [ %1053, %1198 ], [ %1282, %1279 ], [ %1282, %1461 ], [ %1053, %1052 ]
  %1180 = phi float [ %1054, %1198 ], [ %1054, %1279 ], [ %1436, %1461 ], [ %1054, %1052 ]
  %1181 = phi float [ %1055, %1198 ], [ %1055, %1279 ], [ %1434, %1461 ], [ %1055, %1052 ]
  %1182 = phi float [ %1056, %1198 ], [ %1056, %1279 ], [ %1406, %1461 ], [ %1056, %1052 ]
  %1183 = phi float [ %1057, %1198 ], [ %1057, %1279 ], [ %1404, %1461 ], [ %1057, %1052 ]
  %1184 = phi float [ %1058, %1198 ], [ %1058, %1279 ], [ %1471, %1461 ], [ %1058, %1052 ]
  %1185 = phi float [ %1059, %1198 ], [ %1059, %1279 ], [ %1472, %1461 ], [ %1059, %1052 ]
  %1186 = phi float [ %1060, %1198 ], [ %1060, %1279 ], [ %1473, %1461 ], [ %1060, %1052 ]
  %1187 = phi float [ %1061, %1198 ], [ %1061, %1279 ], [ %1385, %1461 ], [ %1061, %1052 ]
  %1188 = phi float [ %1062, %1198 ], [ %1062, %1279 ], [ %1386, %1461 ], [ %1062, %1052 ]
  %1189 = phi float [ %1063, %1198 ], [ %1063, %1279 ], [ %1387, %1461 ], [ %1063, %1052 ]
  %1190 = phi float [ %1064, %1198 ], [ %1064, %1279 ], [ %1414, %1461 ], [ %1064, %1052 ]
  %1191 = phi float [ %1065, %1198 ], [ %1065, %1279 ], [ %1411, %1461 ], [ %1065, %1052 ]
  %1192 = phi float [ %1066, %1198 ], [ %1066, %1279 ], [ %1408, %1461 ], [ %1066, %1052 ]
  %1193 = phi float [ %1067, %1198 ], [ %1067, %1279 ], [ %1402, %1461 ], [ %1067, %1052 ]
  %1194 = phi float [ %1068, %1198 ], [ %1068, %1279 ], [ %1397, %1461 ], [ %1068, %1052 ]
  %1195 = phi float [ %1069, %1198 ], [ %1069, %1279 ], [ %1398, %1461 ], [ %1069, %1052 ]
  %1196 = phi float [ %1070, %1198 ], [ %1070, %1279 ], [ %1399, %1461 ], [ %1070, %1052 ]
  %1197 = icmp eq i32 %1128, %1051
  br i1 %1197, label %1474, label %1052

; <label>:1198                                    ; preds = %1052
  %1199 = extractvalue %dx.types.ResRet.f32 %1098, 3
  %1200 = extractvalue %dx.types.ResRet.f32 %1098, 1
  %1201 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1202 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1203 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1204 = extractvalue %dx.types.ResRet.i32 %1084, 3
  %1205 = extractvalue %dx.types.ResRet.i32 %1084, 2
  %1206 = add i32 %1204, 0
  %1207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1206, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1209 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1207, %dx.types.Handle %1208, float %1137, float %1144, float undef, float undef, i32 0, i32 0, i32 undef, float %1165, float %1167, float undef, float %1166, float %1168, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = fmul fast float %1210, %1203
  %1212 = fadd fast float %1211, %1202
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = fmul fast float %1137, %1093
  %1215 = call float @dx.op.tertiary.f32(i32 46, float %1094, float %1144, float %1214)  ; FMad(a,b,c)
  %1216 = fadd fast float %1215, %1201
  %1217 = fmul fast float %1137, %1095
  %1218 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %1144, float %1217)  ; FMad(a,b,c)
  %1219 = fadd fast float %1218, %1200
  %1220 = fmul fast float %1165, %1093
  %1221 = call float @dx.op.tertiary.f32(i32 46, float %1094, float %1167, float %1220)  ; FMad(a,b,c)
  %1222 = fmul fast float %1165, %1095
  %1223 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %1167, float %1222)  ; FMad(a,b,c)
  %1224 = fmul fast float %1166, %1093
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %1094, float %1168, float %1224)  ; FMad(a,b,c)
  %1226 = fmul fast float %1166, %1095
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1096, float %1168, float %1226)  ; FMad(a,b,c)
  %1228 = add i32 %1205, 0
  %1229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1228, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1230 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1229, %dx.types.Handle %1208, float %1216, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float %1221, float %1223, float undef, float %1225, float %1227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = and i32 %1129, 1024
  %1233 = icmp ne i32 %1232, 0
  %1234 = fcmp fast ogt float %1231, 0x3FE0101020000000
  %1235 = uitofp i1 %1234 to float
  %1236 = select i1 %1233, float %1235, float %1231
  %1237 = and i32 %1129, 8192
  %1238 = icmp ne i32 %1237, 0
  %1239 = select i1 %1238, float %1199, float 1.000000e+00
  %1240 = fmul fast float %1137, 2.000000e+00
  %1241 = fadd fast float %1240, -1.000000e+00
  %1242 = call float @dx.op.unary.f32(i32 6, float %1241)  ; FAbs(value)
  %1243 = fmul fast float %1242, %1126
  %1244 = fsub fast float %1243, %1126
  %1245 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1246 = fmul fast float %1144, 2.000000e+00
  %1247 = fadd fast float %1246, -1.000000e+00
  %1248 = call float @dx.op.unary.f32(i32 6, float %1247)  ; FAbs(value)
  %1249 = fmul fast float %1248, %1127
  %1250 = fsub fast float %1249, %1127
  %1251 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1252 = fmul fast float %1156, %1089
  %1253 = fsub fast float %1252, %1089
  %1254 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  %1255 = fmul fast float %1213, %1239
  %1256 = fmul fast float %1255, %1210
  %1257 = fmul fast float %1256, %1245
  %1258 = fmul fast float %1257, %1236
  %1259 = fmul fast float %1258, %1251
  %1260 = fmul fast float %1259, %1254
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1263 = extractvalue %dx.types.CBufRet.f32 %1261, 0
  %1264 = fsub fast float %1173, %1263
  %1265 = fmul fast float %1264, %1262
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1267 = fmul fast float %1260, %1090
  %1268 = fadd fast float %1260, %1090
  %1269 = fmul fast float %1268, %1099
  %1270 = fsub fast float %1269, %1099
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1272 = and i32 %1129, 128
  %1273 = icmp ne i32 %1272, 0
  %1274 = select i1 %1273, float %1271, float %1267
  %1275 = fmul fast float %1274, %1266
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 0
  %1278 = fcmp fast ugt float %1275, %1277
  br i1 %1278, label %1279, label %1178

; <label>:1279                                    ; preds = %1198
  %1280 = select i1 %1238, float %1275, float 0.000000e+00
  %1281 = fadd fast float %1280, %1053
  %1282 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  br i1 %1238, label %1178, label %1283

; <label>:1283                                    ; preds = %1279
  %1284 = and i32 %1129, 4
  %1285 = and i32 %1129, 8
  %1286 = add i32 %1085, 0
  %1287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1286, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1289 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1287, %dx.types.Handle %1288, float %1216, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float %1221, float %1223, float undef, float %1225, float %1227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.ResRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.ResRet.f32 %1289, 2
  %1293 = extractvalue %dx.types.ResRet.f32 %1289, 3
  %1294 = bitcast float %1111 to i32
  %1295 = and i32 %1294, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = lshr i32 %1294, 8
  %1298 = and i32 %1297, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1293, %1296
  %1301 = fadd fast float %1300, %1299
  %1302 = fmul fast float %1301, 0x3F70101000000000
  %1303 = add i32 %1086, 0
  %1304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1303, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1305 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1304, %dx.types.Handle %1288, float %1216, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float %1221, float %1223, float undef, float %1225, float %1227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.ResRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.ResRet.f32 %1305, 2
  %1309 = extractvalue %dx.types.ResRet.f32 %1305, 3
  %1310 = bitcast float %1105 to i32
  %1311 = and i32 %1310, 255
  %1312 = uitofp i32 %1311 to float
  %1313 = lshr i32 %1310, 8
  %1314 = and i32 %1313, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = lshr i32 %1310, 16
  %1317 = and i32 %1316, 255
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1318, 0x3F70101000000000
  %1320 = fmul fast float %1306, %1312
  %1321 = fadd fast float %1320, %1315
  %1322 = fmul fast float %1321, 0x3F70101000000000
  %1323 = fadd fast float %1307, -5.000000e-01
  %1324 = fadd fast float %1309, -5.000000e-01
  %1325 = fmul fast float %1323, %1319
  %1326 = fmul fast float %1324, %1319
  %1327 = fadd fast float %1325, 5.000000e-01
  %1328 = fadd fast float %1326, 5.000000e-01
  %1329 = fmul fast float %1290, %1114
  %1330 = fmul fast float %1291, %1115
  %1331 = fmul fast float %1292, %1116
  %1332 = fmul fast float %1327, 2.000000e+00
  %1333 = fadd fast float %1332, -1.000000e+00
  %1334 = fmul fast float %1328, 2.000000e+00
  %1335 = fadd fast float %1334, -1.000000e+00
  %1336 = fadd fast float %1333, %1335
  %1337 = fmul fast float %1336, 5.000000e-01
  %1338 = fsub fast float %1333, %1335
  %1339 = fmul fast float %1338, 5.000000e-01
  %1340 = call float @dx.op.unary.f32(i32 6, float %1337)  ; FAbs(value)
  %1341 = fsub fast float 1.000000e+00, %1340
  %1342 = call float @dx.op.unary.f32(i32 6, float %1339)  ; FAbs(value)
  %1343 = fsub fast float %1341, %1342
  %1344 = call float @dx.op.dot3.f32(i32 55, float %1337, float %1339, float %1343, float %1337, float %1339, float %1343)  ; Dot3(ax,ay,az,bx,by,bz)
  %1345 = call float @dx.op.unary.f32(i32 25, float %1344)  ; Rsqrt(value)
  %1346 = fmul fast float %1337, %1345
  %1347 = fmul fast float %1339, %1345
  %1348 = fmul fast float %1345, %1343
  %1349 = fmul fast float %1348, %1079
  %1350 = fmul fast float %1348, %1080
  %1351 = fmul fast float %1348, %1081
  %1352 = fmul fast float %1346, %1102
  %1353 = fmul fast float %1346, %1103
  %1354 = fmul fast float %1346, %1104
  %1355 = fadd fast float %1352, %1349
  %1356 = fadd fast float %1353, %1350
  %1357 = fadd fast float %1354, %1351
  %1358 = fmul fast float %1347, %1108
  %1359 = fmul fast float %1347, %1109
  %1360 = fmul fast float %1347, %1110
  %1361 = fadd fast float %1355, %1358
  %1362 = fadd fast float %1356, %1359
  %1363 = fadd fast float %1357, %1360
  %1364 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1361, float %1362, float %1363)  ; Dot3(ax,ay,az,bx,by,bz)
  %1365 = call float @dx.op.unary.f32(i32 25, float %1364)  ; Rsqrt(value)
  %1366 = fmul fast float %1361, %1365
  %1367 = fmul fast float %1362, %1365
  %1368 = fmul fast float %1363, %1365
  %1369 = icmp ne i32 %1285, 0
  %1370 = select i1 %1369, float 1.000000e+00, float 0.000000e+00
  %1371 = fmul fast float %1275, %1370
  %1372 = and i32 %1129, 1
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %1374, label %1378

; <label>:1374                                    ; preds = %1283
  %1375 = fsub fast float %1366, %1061
  %1376 = fsub fast float %1367, %1062
  %1377 = fsub fast float %1368, %1063
  br label %1378

; <label>:1378                                    ; preds = %1374, %1283
  %1379 = phi float [ %1375, %1374 ], [ %1366, %1283 ]
  %1380 = phi float [ %1376, %1374 ], [ %1367, %1283 ]
  %1381 = phi float [ %1377, %1374 ], [ %1368, %1283 ]
  %1382 = fmul float %1381, %1371
  %1383 = fmul float %1380, %1371
  %1384 = fmul float %1379, %1371
  %1385 = fadd fast float %1384, %1061
  %1386 = fadd fast float %1383, %1062
  %1387 = fadd fast float %1382, %1063
  %1388 = icmp ne i32 %1284, 0
  %1389 = select i1 %1388, float 1.000000e+00, float 0.000000e+00
  %1390 = fmul fast float %1275, %1389
  %1391 = fsub fast float %1329, %1068
  %1392 = fsub fast float %1330, %1069
  %1393 = fsub fast float %1331, %1070
  %1394 = fmul fast float %1391, %1390
  %1395 = fmul fast float %1392, %1390
  %1396 = fmul fast float %1393, %1390
  %1397 = fadd fast float %1394, %1068
  %1398 = fadd fast float %1395, %1069
  %1399 = fadd fast float %1396, %1070
  %1400 = fsub fast float %1302, %1067
  %1401 = fmul fast float %1400, %1390
  %1402 = fadd fast float %1401, %1067
  %1403 = fmul fast float %1390, %1057
  %1404 = fsub fast float %1057, %1403
  %1405 = fmul fast float %1390, %1056
  %1406 = fsub fast float %1056, %1405
  %1407 = fadd fast float %1275, %1066
  %1408 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1409 = fsub fast float %1322, %1065
  %1410 = fmul fast float %1409, %1371
  %1411 = fadd fast float %1410, %1065
  %1412 = fsub fast float %1308, %1064
  %1413 = fmul fast float %1412, %1371
  %1414 = fadd fast float %1413, %1064
  %1415 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1419 = fmul fast float %1418, %1415
  %1420 = fadd fast float %1419, %1417
  %1421 = call float @dx.op.unary.f32(i32 7, float %1420)  ; Saturate(value)
  %1422 = bitcast float %1117 to i32
  %1423 = and i32 %1422, 65535
  %1424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1423)  ; LegacyF16ToF32(value)
  %1425 = lshr i32 %1422, 16
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = fcmp fast oge float %1424, 0.000000e+00
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 0
  %1430 = select i1 %1427, float %1424, float %1429
  %1431 = fadd fast float %1430, %1426
  %1432 = fsub fast float %1421, %1055
  %1433 = fmul fast float %1432, %1275
  %1434 = fadd fast float %1433, %1055
  %1435 = fmul fast float %1431, %1275
  %1436 = call float @dx.op.binary.f32(i32 35, float %1054, float %1435)  ; FMax(a,b)
  %1437 = and i32 %1129, 16
  %1438 = icmp eq i32 %1437, 0
  br i1 %1438, label %1461, label %1439

; <label>:1439                                    ; preds = %1378
  %1440 = bitcast float %1123 to i32
  %1441 = add i32 %1120, 0
  %1442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1441, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1443 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1442, %dx.types.Handle %1288, float %1216, float %1219, float undef, float undef, i32 0, i32 0, i32 undef, float %1221, float %1223, float undef, float %1225, float %1227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = and i32 %1440, 65535
  %1448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1447)  ; LegacyF16ToF32(value)
  %1449 = fmul fast float %1444, %1114
  %1450 = fmul fast float %1445, %1115
  %1451 = fmul fast float %1446, %1116
  %1452 = and i32 %1129, 16384
  %1453 = icmp ne i32 %1452, 0
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 0
  %1456 = select i1 %1453, float %1455, float 1.000000e+00
  %1457 = fmul fast float %1456, %1448
  %1458 = fmul fast float %1449, %1457
  %1459 = fmul fast float %1450, %1457
  %1460 = fmul fast float %1451, %1457
  br label %1461

; <label>:1461                                    ; preds = %1439, %1378
  %1462 = phi float [ %1458, %1439 ], [ 0.000000e+00, %1378 ]
  %1463 = phi float [ %1459, %1439 ], [ 0.000000e+00, %1378 ]
  %1464 = phi float [ %1460, %1439 ], [ 0.000000e+00, %1378 ]
  %1465 = fsub fast float %1462, %1058
  %1466 = fsub fast float %1463, %1059
  %1467 = fsub fast float %1464, %1060
  %1468 = fmul fast float %1465, %1275
  %1469 = fmul fast float %1466, %1275
  %1470 = fmul fast float %1467, %1275
  %1471 = fadd fast float %1468, %1058
  %1472 = fadd fast float %1469, %1059
  %1473 = fadd fast float %1470, %1060
  br label %1178

; <label>:1474                                    ; preds = %1178
  br label %1475

; <label>:1475                                    ; preds = %1474, %955
  %1476 = phi float [ 0.000000e+00, %955 ], [ %1179, %1474 ]
  %1477 = phi float [ %970, %955 ], [ %1180, %1474 ]
  %1478 = phi float [ %968, %955 ], [ %1181, %1474 ]
  %1479 = phi float [ 0.000000e+00, %955 ], [ %1182, %1474 ]
  %1480 = phi float [ 0.000000e+00, %955 ], [ %1183, %1474 ]
  %1481 = phi float [ %961, %955 ], [ %1184, %1474 ]
  %1482 = phi float [ %962, %955 ], [ %1185, %1474 ]
  %1483 = phi float [ %963, %955 ], [ %1186, %1474 ]
  %1484 = phi float [ %996, %955 ], [ %1187, %1474 ]
  %1485 = phi float [ %997, %955 ], [ %1188, %1474 ]
  %1486 = phi float [ %998, %955 ], [ %1189, %1474 ]
  %1487 = phi float [ %967, %955 ], [ %1190, %1474 ]
  %1488 = phi float [ %966, %955 ], [ %1191, %1474 ]
  %1489 = phi float [ 0.000000e+00, %955 ], [ %1192, %1474 ]
  %1490 = phi float [ %964, %955 ], [ %1193, %1474 ]
  %1491 = phi float [ %958, %955 ], [ %1194, %1474 ]
  %1492 = phi float [ %959, %955 ], [ %1195, %1474 ]
  %1493 = phi float [ %960, %955 ], [ %1196, %1474 ]
  %1494 = call float @dx.op.dot3.f32(i32 55, float %1484, float %1485, float %1486, float %1484, float %1485, float %1486)  ; Dot3(ax,ay,az,bx,by,bz)
  %1495 = call float @dx.op.unary.f32(i32 25, float %1494)  ; Rsqrt(value)
  %1496 = fmul fast float %1495, %1484
  %1497 = fmul fast float %1495, %1485
  %1498 = fmul fast float %1495, %1486
  %1499 = fadd fast float %1489, %965
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1501 = call float @dx.op.dot3.f32(i32 55, float %1496, float %1497, float %1498, float %1496, float %1497, float %1498)  ; Dot3(ax,ay,az,bx,by,bz)
  %1502 = call float @dx.op.unary.f32(i32 25, float %1501)  ; Rsqrt(value)
  %1503 = fmul fast float %1502, %1496
  %1504 = fmul fast float %1502, %1497
  %1505 = fmul fast float %1502, %1498
  %1506 = fadd fast float %1490, 0xBFB99999A0000000
  %1507 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1508 = fmul fast float %1507, 0x3FF1C71C80000000
  %1509 = call float @dx.op.binary.f32(i32 36, float %1490, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1510 = fsub fast float 1.000000e+00, %1508
  %1511 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1512 = fmul fast float %1511, %1491
  %1513 = fmul fast float %1511, %1492
  %1514 = fmul fast float %1511, %1493
  %1515 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1516 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1517 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1518 = fmul fast float %1508, %1491
  %1519 = fmul fast float %1508, %1492
  %1520 = fmul fast float %1508, %1493
  %1521 = fadd fast float %1518, %1509
  %1522 = fadd fast float %1519, %1509
  %1523 = fadd fast float %1520, %1509
  %1524 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1525 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1526 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1527 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.i32 %1528, 3
  %1530 = and i32 %1529, 8
  %1531 = icmp ne i32 %1530, 0
  %1532 = call float @dx.op.binary.f32(i32 35, float %1515, float %1491)  ; FMax(a,b)
  %1533 = call float @dx.op.binary.f32(i32 35, float %1516, float %1491)  ; FMax(a,b)
  %1534 = call float @dx.op.binary.f32(i32 35, float %1517, float %1491)  ; FMax(a,b)
  %1535 = call float @dx.op.dot3.f32(i32 55, float %1515, float %1516, float %1517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1536 = select i1 %237, float %1491, float %1515
  %1537 = select i1 %237, float %1535, float %1516
  %1538 = select i1 %237, float 1.000000e+00, float %1517
  %1539 = select i1 %1531, float %1532, float %1536
  %1540 = select i1 %1531, float %1533, float %1537
  %1541 = select i1 %1531, float %1534, float %1538
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1545 = extractvalue %dx.types.CBufRet.f32 %1542, 2
  %1546 = fadd fast float %1543, %146
  %1547 = fadd fast float %1544, %147
  %1548 = fadd fast float %1545, %148
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.CBufRet.f32 %1549, 1
  %1552 = fsub fast float %1546, %1550
  %1553 = fsub fast float %1547, %1551
  %1554 = fmul fast float %1552, %1552
  %1555 = fmul fast float %1553, %1553
  %1556 = fadd fast float %1554, %1555
  %1557 = call float @dx.op.unary.f32(i32 24, float %1556)  ; Sqrt(value)
  %1558 = extractvalue %dx.types.CBufRet.f32 %1549, 2
  %1559 = fcmp fast olt float %1557, %1558
  br i1 %1559, label %1560, label %1627

; <label>:1560                                    ; preds = %1475
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 0
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 0
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.CBufRet.f32 %1561, 1
  %1568 = extractvalue %dx.types.CBufRet.f32 %1563, 1
  %1569 = extractvalue %dx.types.CBufRet.f32 %1565, 1
  %1570 = extractvalue %dx.types.CBufRet.f32 %1561, 3
  %1571 = extractvalue %dx.types.CBufRet.f32 %1563, 3
  %1572 = extractvalue %dx.types.CBufRet.f32 %1565, 3
  %1573 = fadd fast float %1570, %1546
  %1574 = fadd fast float %1571, %1547
  %1575 = fadd fast float %1572, %1548
  %1576 = fmul fast float %1573, %1562
  %1577 = call float @dx.op.tertiary.f32(i32 46, float %1574, float %1564, float %1576)  ; FMad(a,b,c)
  %1578 = call float @dx.op.tertiary.f32(i32 46, float %1575, float %1566, float %1577)  ; FMad(a,b,c)
  %1579 = fmul fast float %1573, %1567
  %1580 = call float @dx.op.tertiary.f32(i32 46, float %1574, float %1568, float %1579)  ; FMad(a,b,c)
  %1581 = call float @dx.op.tertiary.f32(i32 46, float %1575, float %1569, float %1580)  ; FMad(a,b,c)
  %1582 = fsub fast float %1578, %1570
  %1583 = fsub fast float %1581, %1571
  %1584 = fsub fast float %1582, %1550
  %1585 = fadd fast float %1584, %1558
  %1586 = fsub fast float %1583, %1551
  %1587 = fadd fast float %1586, %1558
  %1588 = extractvalue %dx.types.CBufRet.f32 %1549, 3
  %1589 = fmul fast float %1585, %1588
  %1590 = fmul fast float %1587, %1588
  %1591 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1592 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1593 = fsub fast float 1.000000e+00, %1591
  %1594 = fsub fast float 1.000000e+00, %1592
  %1595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1593, float %1594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1596 = extractvalue %dx.types.ResRet.f32 %1595, 0
  %1597 = fcmp fast ugt float %1596, 0.000000e+00
  br i1 %1597, label %1598, label %1901

; <label>:1598                                    ; preds = %1560
  %1599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1600 = extractvalue %dx.types.CBufRet.f32 %1599, 2
  %1601 = fmul fast float %1600, %1596
  %1602 = extractvalue %dx.types.CBufRet.f32 %1599, 3
  %1603 = fadd fast float %1602, %1601
  %1604 = extractvalue %dx.types.CBufRet.f32 %1565, 2
  %1605 = fadd fast float %1603, %1572
  %1606 = fmul fast float %1578, %1566
  %1607 = call float @dx.op.tertiary.f32(i32 46, float %1581, float %1569, float %1606)  ; FMad(a,b,c)
  %1608 = call float @dx.op.tertiary.f32(i32 46, float %1605, float %1604, float %1607)  ; FMad(a,b,c)
  %1609 = fsub fast float %1608, %1572
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 2
  %1612 = fsub fast float %1609, %1611
  %1613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1593, float %1594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.ResRet.f32 %1613, 1
  %1616 = extractvalue %dx.types.ResRet.f32 %1613, 2
  %1617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1593, float %1594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1618 = extractvalue %dx.types.ResRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.ResRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.ResRet.f32 %1617, 2
  %1621 = fadd fast float %1618, %1614
  %1622 = fmul fast float %1621, 0x3F847AE140000000
  %1623 = fadd fast float %1619, %1615
  %1624 = fmul fast float %1623, 0x3F847AE140000000
  %1625 = fadd fast float %1620, %1616
  %1626 = fmul fast float %1625, 0x3F847AE140000000
  br label %1901

; <label>:1627                                    ; preds = %1475
  %1628 = and i32 %213, 1
  %1629 = icmp eq i32 %1628, 0
  br i1 %1629, label %1901, label %1630

; <label>:1630                                    ; preds = %1627
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.f32 %1633, 0
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1631, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1633, 1
  %1639 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1640 = extractvalue %dx.types.CBufRet.f32 %1631, 3
  %1641 = extractvalue %dx.types.CBufRet.f32 %1633, 3
  %1642 = extractvalue %dx.types.CBufRet.f32 %1635, 3
  %1643 = fadd fast float %1640, %1546
  %1644 = fadd fast float %1641, %1547
  %1645 = fadd fast float %1642, %1548
  %1646 = fmul fast float %1643, %1632
  %1647 = call float @dx.op.tertiary.f32(i32 46, float %1644, float %1634, float %1646)  ; FMad(a,b,c)
  %1648 = call float @dx.op.tertiary.f32(i32 46, float %1645, float %1636, float %1647)  ; FMad(a,b,c)
  %1649 = fmul fast float %1643, %1637
  %1650 = call float @dx.op.tertiary.f32(i32 46, float %1644, float %1638, float %1649)  ; FMad(a,b,c)
  %1651 = call float @dx.op.tertiary.f32(i32 46, float %1645, float %1639, float %1650)  ; FMad(a,b,c)
  %1652 = fsub fast float %1648, %1640
  %1653 = fsub fast float %1651, %1641
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 0
  %1656 = extractvalue %dx.types.CBufRet.f32 %1654, 1
  %1657 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1658 = extractvalue %dx.types.CBufRet.f32 %1654, 3
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 3
  %1661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.i32 %1661, 0
  %1663 = extractvalue %dx.types.CBufRet.i32 %1661, 1
  %1664 = udiv i32 %1663, %1662
  %1665 = fsub fast float %1652, %1655
  %1666 = fsub fast float %1653, %1656
  %1667 = call float @dx.op.binary.f32(i32 35, float %1665, float 0.000000e+00)  ; FMax(a,b)
  %1668 = call float @dx.op.binary.f32(i32 35, float %1666, float 0.000000e+00)  ; FMax(a,b)
  %1669 = call float @dx.op.binary.f32(i32 36, float %1667, float %1657)  ; FMin(a,b)
  %1670 = call float @dx.op.binary.f32(i32 36, float %1668, float %1658)  ; FMin(a,b)
  %1671 = add i32 %1662, -1
  %1672 = add i32 %1664, -1
  %1673 = fmul fast float %1669, %1660
  %1674 = fmul fast float %1670, %1660
  %1675 = fptoui float %1673 to i32
  %1676 = fptoui float %1674 to i32
  %1677 = call i32 @dx.op.binary.i32(i32 40, i32 %1675, i32 %1671)  ; UMin(a,b)
  %1678 = call i32 @dx.op.binary.i32(i32 40, i32 %1676, i32 %1672)  ; UMin(a,b)
  %1679 = mul i32 %1678, %1662
  %1680 = add i32 %1679, %1677
  %1681 = shl i32 %1680, 2
  %1682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.i32 %1682, 0
  %1684 = icmp eq i32 %1683, -1
  br i1 %1684, label %1901, label %1685

; <label>:1685                                    ; preds = %1630
  %1686 = mul i32 %1683, 148
  %1687 = add i32 %1686, 4
  %1688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1687, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.f32 %1688, 0
  %1690 = add i32 %1686, 8
  %1691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.f32 %1691, 0
  %1693 = add i32 %1686, 36
  %1694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.f32 %1694, 0
  %1696 = add i32 %1686, 60
  %1697 = add i32 %1686, 92
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = add i32 %1686, 116
  %1701 = fsub fast float %1652, %1689
  %1702 = fsub fast float %1653, %1692
  %1703 = fmul fast float %1660, %1701
  %1704 = fmul fast float %1660, %1702
  %1705 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1706 = call float @dx.op.unary.f32(i32 7, float %1704)  ; Saturate(value)
  %1707 = fsub fast float 1.000000e+00, %1706
  %1708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.f32 %1708, 2
  %1710 = call float @dx.op.unary.f32(i32 83, float %1705)  ; DerivCoarseX(value)
  %1711 = call float @dx.op.unary.f32(i32 83, float %1707)  ; DerivCoarseX(value)
  %1712 = call float @dx.op.unary.f32(i32 84, float %1705)  ; DerivCoarseY(value)
  %1713 = call float @dx.op.unary.f32(i32 84, float %1707)  ; DerivCoarseY(value)
  %1714 = fmul fast float %1710, %1709
  %1715 = fmul fast float %1711, %1709
  %1716 = fmul fast float %1712, %1709
  %1717 = fmul fast float %1713, %1709
  %1718 = call float @dx.op.dot2.f32(i32 54, float %1716, float %1717, float %1716, float %1717)  ; Dot2(ax,ay,bx,by)
  %1719 = call float @dx.op.dot2.f32(i32 54, float %1714, float %1715, float %1714, float %1715)  ; Dot2(ax,ay,bx,by)
  %1720 = call float @dx.op.binary.f32(i32 35, float %1719, float %1718)  ; FMax(a,b)
  %1721 = call float @dx.op.unary.f32(i32 23, float %1720)  ; Log(value)
  %1722 = fmul fast float %1721, 5.000000e-01
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 1
  %1725 = fadd fast float %1724, %1722
  %1726 = call float @dx.op.binary.f32(i32 35, float %1725, float 0.000000e+00)  ; FMax(a,b)
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 3
  %1729 = fadd fast float %1728, %1726
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 3
  %1732 = fadd fast float %1729, %1731
  %1733 = add i32 %1699, 0
  %1734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1733, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1735 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1734, i32 0)  ; GetDimensions(handle,mipLevel)
  %1736 = extractvalue %dx.types.Dimensions %1735, 0
  %1737 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1736)  ; FirstbitLo(value)
  %1738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1739 = extractvalue %dx.types.CBufRet.i32 %1738, 1
  %1740 = sub nsw i32 %1739, %1737
  %1741 = sitofp i32 %1740 to float
  %1742 = fsub fast float %1732, %1741
  %1743 = call float @dx.op.binary.f32(i32 35, float %1742, float 0.000000e+00)  ; FMax(a,b)
  %1744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1734, %dx.types.Handle %62, float %1705, float %1707, float %1695, float undef, i32 0, i32 0, i32 undef, float %1743)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 0
  %1746 = fcmp ule float %1745, 0x3FE0101020000000
  %1747 = extractvalue %dx.types.CBufRet.i32 %1738, 0
  %1748 = and i32 %1747, 128
  %1749 = icmp ne i32 %1748, 0
  %1750 = and i1 %1746, %1749
  br i1 %1750, label %1901, label %1751

; <label>:1751                                    ; preds = %1685
  %1752 = add i32 %1686, 20
  %1753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = add i32 %1686, 24
  %1756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.f32 %1756, 0
  %1758 = add i32 %1686, 40
  %1759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.f32 %1759, 0
  %1761 = add i32 %1686, 96
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 2
  %1766 = fmul fast float %1765, %1705
  %1767 = fmul fast float %1765, %1707
  %1768 = extractvalue %dx.types.CBufRet.f32 %1764, 3
  %1769 = fadd fast float %1766, %1768
  %1770 = fadd fast float %1767, %1768
  %1771 = add i32 %1763, 0
  %1772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1771, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1773 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1772, i32 0)  ; GetDimensions(handle,mipLevel)
  %1774 = extractvalue %dx.types.Dimensions %1773, 0
  %1775 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1774)  ; FirstbitLo(value)
  %1776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.i32 %1776, 1
  %1778 = sub nsw i32 %1777, %1775
  %1779 = sitofp i32 %1778 to float
  %1780 = fsub fast float %1729, %1779
  %1781 = call float @dx.op.binary.f32(i32 35, float %1780, float 0.000000e+00)  ; FMax(a,b)
  %1782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1772, %dx.types.Handle %62, float %1769, float %1770, float %1760, float undef, i32 0, i32 0, i32 undef, float %1781)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = fmul fast float %1783, %1754
  %1785 = fadd fast float %1784, %1757
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %1788 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %1789 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1794 = extractvalue %dx.types.CBufRet.f32 %1786, 3
  %1795 = fadd fast float %1791, %1652
  %1796 = fadd fast float %1793, %1653
  %1797 = fadd fast float %1785, %1794
  %1798 = fmul fast float %1795, %1787
  %1799 = call float @dx.op.tertiary.f32(i32 46, float %1796, float %1788, float %1798)  ; FMad(a,b,c)
  %1800 = call float @dx.op.tertiary.f32(i32 46, float %1797, float %1789, float %1799)  ; FMad(a,b,c)
  %1801 = fsub fast float %1800, %1794
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1804 = fsub fast float %1801, %1803
  %1805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.i32 %1805, 0
  %1807 = call i32 @dx.op.binary.i32(i32 40, i32 %1683, i32 %1806)  ; UMin(a,b)
  %1808 = mul i32 %1807, 36
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = add i32 %1808, 4
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 0
  %1814 = fmul fast float %1813, %1705
  %1815 = fmul fast float %1813, %1707
  %1816 = extractvalue %dx.types.CBufRet.f32 %1812, 1
  %1817 = fadd fast float %1814, %1816
  %1818 = fadd fast float %1815, %1816
  %1819 = icmp eq i32 %1810, 0
  br i1 %1819, label %1888, label %1820

; <label>:1820                                    ; preds = %1751
  br label %1821

; <label>:1821                                    ; preds = %1878, %1820
  %1822 = phi float [ %1879, %1878 ], [ 0.000000e+00, %1820 ]
  %1823 = phi float [ %1880, %1878 ], [ 0.000000e+00, %1820 ]
  %1824 = phi float [ %1881, %1878 ], [ 0.000000e+00, %1820 ]
  %1825 = phi float [ %1882, %1878 ], [ 0.000000e+00, %1820 ]
  %1826 = phi float [ %1883, %1878 ], [ 0.000000e+00, %1820 ]
  %1827 = phi float [ %1884, %1878 ], [ 0.000000e+00, %1820 ]
  %1828 = phi i32 [ %1885, %1878 ], [ 0, %1820 ]
  %1829 = shl i32 %1828, 2
  %1830 = add i32 %1696, %1829
  %1831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.f32 %1831, 0
  %1833 = add i32 %1700, %1829
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = add i32 %1835, 0
  %1837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1836, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1838 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1837, i32 0)  ; GetDimensions(handle,mipLevel)
  %1839 = extractvalue %dx.types.Dimensions %1838, 0
  %1840 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1839)  ; FirstbitLo(value)
  %1841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.i32 %1841, 1
  %1843 = sub nsw i32 %1842, %1840
  %1844 = sitofp i32 %1843 to float
  %1845 = fsub fast float %1729, %1844
  %1846 = call float @dx.op.binary.f32(i32 35, float %1845, float 0.000000e+00)  ; FMax(a,b)
  %1847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1837, %dx.types.Handle %62, float %1817, float %1818, float %1832, float undef, i32 0, i32 0, i32 undef, float %1846)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1849 = fcmp fast ogt float %1848, 0.000000e+00
  br i1 %1849, label %1850, label %1878

; <label>:1850                                    ; preds = %1821
  %1851 = add i32 %1811, %1829
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %1853, 32767
  %1855 = mul nuw nsw i32 %1854, 928
  %1856 = add nuw nsw i32 %1855, 48
  %1857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.f32 %1857, 0
  %1859 = extractvalue %dx.types.ResRet.f32 %1857, 1
  %1860 = extractvalue %dx.types.ResRet.f32 %1857, 2
  %1861 = add nuw nsw i32 %1855, 60
  %1862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = extractvalue %dx.types.ResRet.f32 %1862, 1
  %1865 = extractvalue %dx.types.ResRet.f32 %1862, 2
  %1866 = fmul fast float %1858, %1848
  %1867 = fmul fast float %1859, %1848
  %1868 = fmul fast float %1860, %1848
  %1869 = fadd fast float %1866, %1822
  %1870 = fadd fast float %1867, %1823
  %1871 = fadd fast float %1868, %1824
  %1872 = fmul fast float %1863, %1848
  %1873 = fmul fast float %1864, %1848
  %1874 = fmul fast float %1865, %1848
  %1875 = fadd fast float %1872, %1825
  %1876 = fadd fast float %1873, %1826
  %1877 = fadd fast float %1874, %1827
  br label %1878

; <label>:1878                                    ; preds = %1850, %1821
  %1879 = phi float [ %1869, %1850 ], [ %1822, %1821 ]
  %1880 = phi float [ %1870, %1850 ], [ %1823, %1821 ]
  %1881 = phi float [ %1871, %1850 ], [ %1824, %1821 ]
  %1882 = phi float [ %1875, %1850 ], [ %1825, %1821 ]
  %1883 = phi float [ %1876, %1850 ], [ %1826, %1821 ]
  %1884 = phi float [ %1877, %1850 ], [ %1827, %1821 ]
  %1885 = add nuw i32 %1828, 1
  %1886 = icmp eq i32 %1885, %1810
  br i1 %1886, label %1887, label %1821

; <label>:1887                                    ; preds = %1878
  br label %1888

; <label>:1888                                    ; preds = %1887, %1751
  %1889 = phi float [ 0.000000e+00, %1751 ], [ %1879, %1887 ]
  %1890 = phi float [ 0.000000e+00, %1751 ], [ %1880, %1887 ]
  %1891 = phi float [ 0.000000e+00, %1751 ], [ %1881, %1887 ]
  %1892 = phi float [ 0.000000e+00, %1751 ], [ %1882, %1887 ]
  %1893 = phi float [ 0.000000e+00, %1751 ], [ %1883, %1887 ]
  %1894 = phi float [ 0.000000e+00, %1751 ], [ %1884, %1887 ]
  %1895 = fadd fast float %1892, %1889
  %1896 = fmul fast float %1895, 0x3F847AE140000000
  %1897 = fadd fast float %1893, %1890
  %1898 = fmul fast float %1897, 0x3F847AE140000000
  %1899 = fadd fast float %1894, %1891
  %1900 = fmul fast float %1899, 0x3F847AE140000000
  br label %1901

; <label>:1901                                    ; preds = %1888, %1685, %1630, %1627, %1598, %1560
  %1902 = phi float [ %1612, %1598 ], [ -1.310720e+05, %1560 ], [ %1804, %1888 ], [ -1.310720e+05, %1630 ], [ -1.310720e+05, %1685 ], [ -1.310720e+05, %1627 ]
  %1903 = phi float [ %1622, %1598 ], [ 0.000000e+00, %1560 ], [ %1896, %1888 ], [ 0.000000e+00, %1630 ], [ 0.000000e+00, %1685 ], [ 0.000000e+00, %1627 ]
  %1904 = phi float [ %1624, %1598 ], [ 0.000000e+00, %1560 ], [ %1898, %1888 ], [ 0.000000e+00, %1630 ], [ 0.000000e+00, %1685 ], [ 0.000000e+00, %1627 ]
  %1905 = phi float [ %1626, %1598 ], [ 0.000000e+00, %1560 ], [ %1900, %1888 ], [ 0.000000e+00, %1630 ], [ 0.000000e+00, %1685 ], [ 0.000000e+00, %1627 ]
  %1906 = phi i1 [ true, %1598 ], [ false, %1560 ], [ true, %1888 ], [ false, %1630 ], [ false, %1685 ], [ false, %1627 ]
  %1907 = and i32 %213, 3
  %1908 = icmp eq i32 %1907, 1
  %1909 = select i1 %1908, float 1.000000e+00, float 0.000000e+00
  %1910 = fsub fast float %1902, %148
  %1911 = call float @dx.op.unary.f32(i32 7, float %1910)  ; Saturate(value)
  %1912 = select i1 %1906, float %1911, float 1.000000e+00
  %1913 = fmul fast float %1912, %1909
  %1914 = icmp eq i32 %1907, 3
  %1915 = select i1 %1914, float 1.000000e+00, float %1913
  %1916 = call float @dx.op.binary.f32(i32 35, float %1476, float %1915)  ; FMax(a,b)
  %1917 = call float @dx.op.unary.f32(i32 7, float %1916)  ; Saturate(value)
  %1918 = fcmp fast une float %1917, 0.000000e+00
  %1919 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %146, float %147, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %1920 = call float @dx.op.unary.f32(i32 25, float %1919)  ; Rsqrt(value)
  br i1 %1918, label %1928, label %1921

; <label>:1921                                    ; preds = %1901
  %1922 = fmul fast float %1920, %146
  %1923 = fmul fast float %1920, %147
  %1924 = fmul fast float %1920, %148
  %1925 = fsub fast float -0.000000e+00, %1922
  %1926 = fsub fast float -0.000000e+00, %1923
  %1927 = fsub fast float -0.000000e+00, %1924
  br label %2096

; <label>:1928                                    ; preds = %1901
  %1929 = fmul fast float %146, %1920
  %1930 = fsub fast float -0.000000e+00, %1929
  %1931 = fmul fast float %147, %1920
  %1932 = fsub fast float -0.000000e+00, %1931
  %1933 = fmul fast float %148, %1920
  %1934 = fsub fast float -0.000000e+00, %1933
  %1935 = call float @dx.op.dot3.f32(i32 55, float %1930, float %1932, float %1934, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1936 = fmul fast float %1917, 2.500000e+00
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fmul fast float %1917, 0x4013FFFFE0000000
  %1939 = fadd fast float %1938, 0xBFFFFFFFE0000000
  %1940 = call float @dx.op.unary.f32(i32 7, float %1939)  ; Saturate(value)
  %1941 = fmul fast float %1917, 0x4004000020000000
  %1942 = fadd fast float %1941, 0xBFF8000040000000
  %1943 = call float @dx.op.unary.f32(i32 7, float %1942)  ; Saturate(value)
  %1944 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  %1945 = fmul fast float %1506, 1.000000e+01
  %1946 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  %1947 = fmul fast float %1946, 2.000000e+00
  %1948 = fsub fast float 3.000000e+00, %1947
  %1949 = fmul fast float %1946, %1946
  %1950 = fmul fast float %1949, %1948
  %1951 = fsub fast float 1.000000e+00, %1950
  %1952 = fsub fast float 0x3FE3333340000000, %1527
  %1953 = fmul fast float %1952, 0x400AAAAAA0000000
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1955 = fmul fast float %1951, %1954
  %1956 = fmul fast float %1539, 0x3FEA2B8620000000
  %1957 = fmul fast float %1540, 0x3FEA2B8620000000
  %1958 = fmul fast float %1541, 0x3FEA2B8620000000
  %1959 = fadd fast float %1956, 0x3FC81DFBA0000000
  %1960 = fmul fast float %1959, %1539
  %1961 = fadd fast float %1960, 0x3F910E6020000000
  %1962 = fadd fast float %1957, 0x3FC81DFBA0000000
  %1963 = fmul fast float %1962, %1540
  %1964 = fadd fast float %1963, 0x3F910E6020000000
  %1965 = fadd fast float %1958, 0x3FC81DFBA0000000
  %1966 = fmul fast float %1965, %1541
  %1967 = fadd fast float %1966, 0x3F910E6020000000
  %1968 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  %1969 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1970 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1971 = fsub fast float %1968, %1539
  %1972 = fsub fast float %1969, %1540
  %1973 = fsub fast float %1970, %1541
  %1974 = fmul fast float %1971, %1944
  %1975 = fmul fast float %1974, %1955
  %1976 = fmul fast float %1972, %1944
  %1977 = fmul fast float %1976, %1955
  %1978 = fmul fast float %1973, %1944
  %1979 = fmul fast float %1978, %1955
  %1980 = fadd fast float %1975, %1539
  %1981 = fadd fast float %1977, %1540
  %1982 = fadd fast float %1979, %1541
  %1983 = fmul fast float %1487, %1487
  %1984 = fmul fast float %1983, %1983
  %1985 = fadd fast float %1940, 1.000000e+00
  %1986 = fsub fast float %1985, %1955
  %1987 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1988 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1990 = fsub fast float 1.000000e+00, %1984
  %1991 = call float @dx.op.binary.f32(i32 36, float %1987, float %1990)  ; FMin(a,b)
  %1992 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1993 = call float @dx.op.binary.f32(i32 35, float %1991, float %1992)  ; FMax(a,b)
  %1994 = fadd fast float %1989, 0xBFE4CCCCC0000000
  %1995 = fmul fast float %1994, 0x4006DB6DA0000000
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1997 = fmul fast float %1996, 2.000000e+00
  %1998 = fsub fast float 3.000000e+00, %1997
  %1999 = bitcast float %1524 to i32
  %2000 = ashr i32 %1999, 1
  %2001 = add nsw i32 %2000, 532487669
  %2002 = bitcast i32 %2001 to float
  %2003 = fsub fast float 1.000000e+00, %2002
  %2004 = bitcast float %2003 to i32
  %2005 = sub nsw i32 2129859010, %2004
  %2006 = bitcast i32 %2005 to float
  %2007 = fmul fast float %2006, 2.000000e+00
  %2008 = bitcast float %1525 to i32
  %2009 = ashr i32 %2008, 1
  %2010 = add nsw i32 %2009, 532487669
  %2011 = bitcast i32 %2010 to float
  %2012 = fsub fast float 1.000000e+00, %2011
  %2013 = bitcast float %2012 to i32
  %2014 = sub nsw i32 2129859010, %2013
  %2015 = bitcast i32 %2014 to float
  %2016 = fmul fast float %2015, 2.000000e+00
  %2017 = bitcast float %1526 to i32
  %2018 = ashr i32 %2017, 1
  %2019 = add nsw i32 %2018, 532487669
  %2020 = bitcast i32 %2019 to float
  %2021 = fsub fast float 1.000000e+00, %2020
  %2022 = bitcast float %2021 to i32
  %2023 = sub nsw i32 2129859010, %2022
  %2024 = bitcast i32 %2023 to float
  %2025 = fmul fast float %2024, 2.000000e+00
  %2026 = fsub fast float 0x4002A9FBE0000000, %2007
  %2027 = fadd fast float %2007, 0x3FD54FDF00000000
  %2028 = bitcast float %2027 to i32
  %2029 = sub nsw i32 2129859010, %2028
  %2030 = bitcast i32 %2029 to float
  %2031 = fmul fast float %2030, %2026
  %2032 = fmul fast float %2031, %2031
  %2033 = fsub fast float 0x4002A9FBE0000000, %2016
  %2034 = fadd fast float %2016, 0x3FD54FDF00000000
  %2035 = bitcast float %2034 to i32
  %2036 = sub nsw i32 2129859010, %2035
  %2037 = bitcast i32 %2036 to float
  %2038 = fmul fast float %2037, %2033
  %2039 = fmul fast float %2038, %2038
  %2040 = fsub fast float 0x4002A9FBE0000000, %2025
  %2041 = fadd fast float %2025, 0x3FD54FDF00000000
  %2042 = bitcast float %2041 to i32
  %2043 = sub nsw i32 2129859010, %2042
  %2044 = bitcast i32 %2043 to float
  %2045 = fmul fast float %2044, %2040
  %2046 = fmul fast float %2045, %2045
  %2047 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2032)  ; FMax(a,b)
  %2048 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2039)  ; FMax(a,b)
  %2049 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2046)  ; FMax(a,b)
  %2050 = fsub fast float 1.000000e+00, %1935
  %2051 = fadd fast float %2050, %1951
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  %2053 = fsub fast float 1.000000e+00, %1915
  %2054 = fmul fast float %1993, %2053
  %2055 = fmul fast float %1996, %1996
  %2056 = fmul fast float %2055, %2054
  %2057 = fmul fast float %2056, %1998
  %2058 = fmul fast float %2053, 0xBFE99999A0000000
  %2059 = fmul fast float %2058, %1944
  %2060 = fmul fast float %2059, %1955
  %2061 = fadd fast float %2060, 1.000000e+00
  %2062 = fadd fast float %1527, -1.000000e+00
  %2063 = fmul fast float %2061, %2062
  %2064 = fadd fast float %2063, 1.000000e+00
  %2065 = fsub fast float %2047, %1524
  %2066 = fsub fast float %2048, %1525
  %2067 = fsub fast float %2049, %1526
  %2068 = fmul fast float %2057, %2065
  %2069 = fmul fast float %2057, %2066
  %2070 = fmul fast float %2057, %2067
  %2071 = fadd fast float %2068, %1524
  %2072 = fadd fast float %2069, %1525
  %2073 = fadd fast float %2070, %1526
  %2074 = fsub fast float %76, %1503
  %2075 = fsub fast float %77, %1504
  %2076 = fsub fast float %78, %1505
  %2077 = fmul fast float %2057, %2074
  %2078 = fmul fast float %2057, %2075
  %2079 = fmul fast float %2057, %2076
  %2080 = fadd fast float %2077, %1503
  %2081 = fadd fast float %2078, %1504
  %2082 = fadd fast float %2079, %1505
  %2083 = fmul fast float %2057, %2052
  %2084 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  %2085 = fsub fast float 1.000000e+00, %2084
  %2086 = fmul fast float %2083, %2085
  %2087 = fadd fast float %2086, %2084
  %2088 = fsub fast float 1.000000e+00, %1487
  %2089 = fmul fast float %2057, %2088
  %2090 = fadd fast float %2089, %1487
  %2091 = call float @dx.op.dot3.f32(i32 55, float %2080, float %2081, float %2082, float %2080, float %2081, float %2082)  ; Dot3(ax,ay,az,bx,by,bz)
  %2092 = call float @dx.op.unary.f32(i32 25, float %2091)  ; Rsqrt(value)
  %2093 = fmul fast float %2080, %2092
  %2094 = fmul fast float %2081, %2092
  %2095 = fmul fast float %2082, %2092
  br label %2096

; <label>:2096                                    ; preds = %1928, %1921
  %2097 = phi float [ %1927, %1921 ], [ %1934, %1928 ]
  %2098 = phi float [ %1926, %1921 ], [ %1932, %1928 ]
  %2099 = phi float [ %1925, %1921 ], [ %1930, %1928 ]
  %2100 = phi float [ %1924, %1921 ], [ %1933, %1928 ]
  %2101 = phi float [ %1923, %1921 ], [ %1931, %1928 ]
  %2102 = phi float [ %1922, %1921 ], [ %1929, %1928 ]
  %2103 = phi float [ %1524, %1921 ], [ %2071, %1928 ]
  %2104 = phi float [ %1525, %1921 ], [ %2072, %1928 ]
  %2105 = phi float [ %1526, %1921 ], [ %2073, %1928 ]
  %2106 = phi float [ %1503, %1921 ], [ %2093, %1928 ]
  %2107 = phi float [ %1504, %1921 ], [ %2094, %1928 ]
  %2108 = phi float [ %1505, %1921 ], [ %2095, %1928 ]
  %2109 = phi float [ %1539, %1921 ], [ %1980, %1928 ]
  %2110 = phi float [ %1540, %1921 ], [ %1981, %1928 ]
  %2111 = phi float [ %1541, %1921 ], [ %1982, %1928 ]
  %2112 = phi float [ %1527, %1921 ], [ %2087, %1928 ]
  %2113 = phi float [ %1487, %1921 ], [ %2090, %1928 ]
  %2114 = fsub fast float -0.000000e+00, %148
  %2115 = select i1 %237, float 0.000000e+00, float %2105
  %2116 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2107, float %2108, float %2099, float %2098, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2117 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  %2118 = call float @dx.op.dot3.f32(i32 55, float %2102, float %2101, float %2100, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %2119 = fmul fast float %2118, 2.000000e+00
  %2120 = fmul fast float %2119, %2106
  %2121 = fmul fast float %2119, %2107
  %2122 = fmul fast float %2119, %2108
  %2123 = fsub fast float %2102, %2120
  %2124 = fsub fast float %2101, %2121
  %2125 = fsub fast float %2100, %2122
  %2126 = call float @dx.op.binary.f32(i32 36, float %2113, float 1.000000e+00)  ; FMin(a,b)
  %2127 = fsub fast float 1.000000e+00, %2126
  %2128 = bitcast float %2127 to i32
  %2129 = ashr i32 %2128, 1
  %2130 = add nsw i32 %2129, 532487669
  %2131 = bitcast i32 %2130 to float
  %2132 = fsub fast float 1.000000e+00, %2112
  %2133 = call float @dx.op.binary.f32(i32 35, float %2132, float 0x3F847AE140000000)  ; FMax(a,b)
  %2134 = fmul fast float %2133, %2133
  %2135 = fmul fast float %2134, %2134
  %2136 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2131, float %2135, float %2136, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2138 = extractvalue %dx.types.ResRet.f32 %2137, 0
  %2139 = fsub fast float 1.000000e+00, %2113
  %2140 = bitcast float %2139 to i32
  %2141 = sub nsw i32 2129859010, %2140
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 0
  %2144 = extractvalue %dx.types.CBufRet.f32 %2142, 1
  %2145 = fadd fast float %2143, %146
  %2146 = fadd fast float %2144, %147
  %2147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2148 = extractvalue %dx.types.CBufRet.i32 %2147, 0
  %2149 = icmp eq i32 %2148, 1
  br i1 %2149, label %2150, label %2185

; <label>:2150                                    ; preds = %2096
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 0
  %2153 = extractvalue %dx.types.CBufRet.f32 %2151, 1
  %2154 = fsub fast float %2145, %2152
  %2155 = fsub fast float %2146, %2153
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 0
  %2158 = extractvalue %dx.types.CBufRet.f32 %2156, 1
  %2159 = fmul fast float %2154, %2157
  %2160 = fmul fast float %2155, %2158
  %2161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2159, float %2160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2162 = extractvalue %dx.types.ResRet.f32 %2161, 0
  %2163 = fcmp fast ogt float %2162, 0.000000e+00
  %2164 = extractvalue %dx.types.CBufRet.i32 %2147, 3
  %2165 = icmp ne i32 %2164, 0
  %2166 = and i1 %2163, %2165
  br i1 %2166, label %2167, label %2185, !dx.controlflow.hints !104

; <label>:2167                                    ; preds = %2150
  %2168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2169 = extractvalue %dx.types.CBufRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.CBufRet.f32 %2168, 1
  %2171 = fsub fast float %2145, %2169
  %2172 = fsub fast float %2146, %2170
  %2173 = fmul fast float %2171, %2171
  %2174 = fmul fast float %2172, %2172
  %2175 = fadd fast float %2173, %2174
  %2176 = uitofp i32 %2164 to float
  %2177 = fmul fast float %2176, %2176
  %2178 = fcmp fast ogt float %2175, %2177
  br i1 %2178, label %2185, label %2179

; <label>:2179                                    ; preds = %2167
  %2180 = call float @dx.op.unary.f32(i32 24, float %2175)  ; Sqrt(value)
  %2181 = fsub fast float %2176, %2180
  %2182 = fmul fast float %2181, 0x3F75555560000000
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2184 = call float @dx.op.binary.f32(i32 36, float %2183, float %2162)  ; FMin(a,b)
  br label %2185

; <label>:2185                                    ; preds = %2179, %2167, %2150, %2096
  %2186 = phi float [ 1.000000e+00, %2096 ], [ %2184, %2179 ], [ %2162, %2150 ], [ 0.000000e+00, %2167 ]
  %2187 = fcmp fast ogt float %2186, 0.000000e+00
  br i1 %2187, label %2188, label %2287, !dx.controlflow.hints !105

; <label>:2188                                    ; preds = %2185
  %2189 = fadd fast float %177, 5.000000e-01
  %2190 = call float @dx.op.unary.f32(i32 27, float %2189)  ; Round_ni(value)
  %2191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %175, float %176, float %2190, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2192 = extractvalue %dx.types.ResRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.ResRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.ResRet.f32 %2191, 2
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 3
  %2197 = fmul fast float %2196, %2192
  %2198 = fmul fast float %2196, %2193
  %2199 = fmul fast float %2196, %2194
  %2200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %175, float %176, float %2190, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2201 = extractvalue %dx.types.ResRet.f32 %2200, 0
  %2202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %175, float %176, float %2190, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2203 = extractvalue %dx.types.ResRet.f32 %2202, 0
  %2204 = extractvalue %dx.types.ResRet.f32 %2202, 1
  %2205 = fmul fast float %2203, 2.000000e+00
  %2206 = fmul fast float %2204, 2.000000e+00
  %2207 = fadd fast float %2205, -1.000000e+00
  %2208 = fadd fast float %2206, -1.000000e+00
  %2209 = fadd fast float %2207, %2208
  %2210 = fmul fast float %2209, 5.000000e-01
  %2211 = fsub fast float %2207, %2208
  %2212 = fmul fast float %2211, 5.000000e-01
  %2213 = call float @dx.op.unary.f32(i32 6, float %2210)  ; FAbs(value)
  %2214 = fsub fast float 1.000000e+00, %2213
  %2215 = call float @dx.op.unary.f32(i32 6, float %2212)  ; FAbs(value)
  %2216 = fsub fast float %2214, %2215
  %2217 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2216)  ; FMax(a,b)
  %2218 = call float @dx.op.dot3.f32(i32 55, float %2210, float %2212, float %2217, float %2210, float %2212, float %2217)  ; Dot3(ax,ay,az,bx,by,bz)
  %2219 = bitcast float %2218 to i32
  %2220 = ashr i32 %2219, 1
  %2221 = sub nsw i32 1597250115, %2220
  %2222 = bitcast i32 %2221 to float
  %2223 = fmul fast float %2222, %2210
  %2224 = fmul fast float %2222, %2212
  %2225 = fmul fast float %2222, %2217
  %2226 = fsub fast float 1.000000e+00, %2201
  %2227 = fdiv fast float %2226, %2225
  %2228 = fmul fast float %2225, %76
  %2229 = fmul fast float %2225, %77
  %2230 = fmul fast float %2225, %78
  %2231 = fmul fast float %2223, %72
  %2232 = fmul fast float %2223, %73
  %2233 = fmul fast float %2223, %74
  %2234 = fadd fast float %2228, %2231
  %2235 = fadd fast float %2229, %2232
  %2236 = fadd fast float %2230, %2233
  %2237 = fmul fast float %2224, %110
  %2238 = fmul fast float %2224, %111
  %2239 = fmul fast float %2224, %112
  %2240 = fadd fast float %2234, %2237
  %2241 = fadd fast float %2235, %2238
  %2242 = fadd fast float %2236, %2239
  %2243 = call float @dx.op.dot3.f32(i32 55, float %2240, float %2241, float %2242, float %2240, float %2241, float %2242)  ; Dot3(ax,ay,az,bx,by,bz)
  %2244 = call float @dx.op.unary.f32(i32 25, float %2243)  ; Rsqrt(value)
  %2245 = fmul fast float %2240, %2244
  %2246 = fmul fast float %2241, %2244
  %2247 = fmul fast float %2242, %2244
  %2248 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2107, float %2108, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = fmul fast float %2249, 5.000000e-01
  %2251 = fadd fast float %2250, 5.000000e-01
  %2252 = fmul fast float %2251, %2201
  %2253 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2107, float %2108, float %2245, float %2246, float %2247)  ; Dot3(ax,ay,az,bx,by,bz)
  %2254 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  %2255 = fmul fast float %2254, %2227
  %2256 = fadd fast float %2252, %2255
  %2257 = fsub fast float 5.000000e-01, %2250
  %2258 = fmul fast float %2257, %2109
  %2259 = fmul fast float %2257, %2110
  %2260 = fmul fast float %2257, %2111
  %2261 = fadd fast float %2256, %2258
  %2262 = fmul fast float %2261, %2197
  %2263 = fadd fast float %2256, %2259
  %2264 = fmul fast float %2263, %2198
  %2265 = fadd fast float %2256, %2260
  %2266 = fmul fast float %2265, %2199
  %2267 = call float @dx.op.dot3.f32(i32 55, float %2123, float %2124, float %2125, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2269 = fmul fast float %2268, 5.000000e-01
  %2270 = fadd fast float %2269, 5.000000e-01
  %2271 = fmul fast float %2270, %2201
  %2272 = call float @dx.op.dot3.f32(i32 55, float %2123, float %2124, float %2125, float %2245, float %2246, float %2247)  ; Dot3(ax,ay,az,bx,by,bz)
  %2273 = call float @dx.op.unary.f32(i32 7, float %2272)  ; Saturate(value)
  %2274 = fmul fast float %2273, %2227
  %2275 = fadd fast float %2271, %2274
  %2276 = fsub fast float 5.000000e-01, %2269
  %2277 = fmul fast float %2276, %2109
  %2278 = fmul fast float %2276, %2110
  %2279 = fmul fast float %2276, %2111
  %2280 = fadd fast float %2275, %2277
  %2281 = fmul fast float %2280, %2197
  %2282 = fadd fast float %2275, %2278
  %2283 = fmul fast float %2282, %2198
  %2284 = fadd fast float %2275, %2279
  %2285 = fmul fast float %2284, %2199
  %2286 = call float @dx.op.dot3.f32(i32 55, float %2197, float %2198, float %2199, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2287

; <label>:2287                                    ; preds = %2188, %2185
  %2288 = phi float [ %2286, %2188 ], [ 0.000000e+00, %2185 ]
  %2289 = phi float [ %2281, %2188 ], [ 0.000000e+00, %2185 ]
  %2290 = phi float [ %2283, %2188 ], [ 0.000000e+00, %2185 ]
  %2291 = phi float [ %2285, %2188 ], [ 0.000000e+00, %2185 ]
  %2292 = phi float [ %2262, %2188 ], [ 0.000000e+00, %2185 ]
  %2293 = phi float [ %2264, %2188 ], [ 0.000000e+00, %2185 ]
  %2294 = phi float [ %2266, %2188 ], [ 0.000000e+00, %2185 ]
  %2295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2296 = extractvalue %dx.types.CBufRet.f32 %2295, 0
  %2297 = fcmp fast ogt float %2296, 0.000000e+00
  %2298 = and i1 %2187, %2297
  br i1 %2298, label %2299, label %2503, !dx.controlflow.hints !106

; <label>:2299                                    ; preds = %2287
  %2300 = extractvalue %dx.types.CBufRet.f32 %2142, 2
  %2301 = fadd fast float %2300, %148
  %2302 = fmul fast float %2106, 3.200000e+01
  %2303 = fmul fast float %2107, 3.200000e+01
  %2304 = fadd fast float %2145, %2302
  %2305 = fadd fast float %2146, %2303
  %2306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.f32 %2306, 0
  %2308 = extractvalue %dx.types.CBufRet.f32 %2306, 1
  %2309 = fsub fast float %2304, %2307
  %2310 = fsub fast float %2305, %2308
  %2311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.CBufRet.f32 %2311, 1
  %2314 = fmul fast float %2309, %2312
  %2315 = fmul fast float %2310, %2313
  %2316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.f32 %2316, 0
  %2318 = extractvalue %dx.types.CBufRet.f32 %2316, 1
  %2319 = fsub fast float %2145, %2317
  %2320 = fsub fast float %2146, %2318
  %2321 = fmul fast float %2319, %2319
  %2322 = fmul fast float %2320, %2320
  %2323 = fadd fast float %2321, %2322
  %2324 = call float @dx.op.unary.f32(i32 24, float %2323)  ; Sqrt(value)
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.CBufRet.f32 %2325, 1
  %2328 = fsub fast float %2324, %2326
  %2329 = fdiv fast float %2328, %2327
  %2330 = call float @dx.op.unary.f32(i32 7, float %2329)  ; Saturate(value)
  %2331 = fmul fast float %2330, 2.000000e+00
  %2332 = fsub fast float 3.000000e+00, %2331
  %2333 = fmul fast float %2330, %2330
  %2334 = fmul fast float %2333, %2332
  %2335 = fcmp fast oge float %2314, 0.000000e+00
  %2336 = fcmp fast ole float %2314, 1.000000e+00
  %2337 = and i1 %2336, %2335
  %2338 = fcmp fast oge float %2315, 0.000000e+00
  %2339 = and i1 %2338, %2337
  %2340 = fcmp fast ole float %2315, 1.000000e+00
  %2341 = and i1 %2340, %2339
  %2342 = fcmp fast ogt float %2334, 0.000000e+00
  %2343 = and i1 %2342, %2341
  br i1 %2343, label %2344, label %2467, !dx.controlflow.hints !107

; <label>:2344                                    ; preds = %2299
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 2
  %2347 = extractvalue %dx.types.CBufRet.f32 %2345, 3
  %2348 = fmul fast float %2346, %2314
  %2349 = fmul fast float %2347, %2315
  %2350 = call float @dx.op.unary.f32(i32 27, float %2348)  ; Round_ni(value)
  %2351 = call float @dx.op.unary.f32(i32 27, float %2349)  ; Round_ni(value)
  %2352 = fptosi float %2350 to i32
  %2353 = fptosi float %2351 to i32
  %2354 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2352, i32 %2353, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = lshr i32 %2355, 16
  %2357 = icmp eq i32 %2356, 65535
  br i1 %2357, label %2467, label %2358

; <label>:2358                                    ; preds = %2344
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = fmul fast float %2360, %2314
  %2362 = extractvalue %dx.types.CBufRet.f32 %2359, 1
  %2363 = fadd fast float %2361, %2362
  %2364 = extractvalue %dx.types.CBufRet.f32 %2359, 2
  %2365 = fmul fast float %2364, %2315
  %2366 = extractvalue %dx.types.CBufRet.f32 %2359, 3
  %2367 = fadd fast float %2365, %2366
  %2368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2363, float %2367, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2369 = extractvalue %dx.types.ResRet.f32 %2368, 0
  %2370 = extractvalue %dx.types.ResRet.f32 %2368, 1
  %2371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2371, 1
  %2373 = extractvalue %dx.types.CBufRet.f32 %2371, 0
  %2374 = fsub fast float %2372, %2373
  %2375 = fmul fast float %2374, %2369
  %2376 = fadd fast float %2375, %2373
  %2377 = extractvalue %dx.types.CBufRet.f32 %2371, 3
  %2378 = extractvalue %dx.types.CBufRet.f32 %2371, 2
  %2379 = fsub fast float %2377, %2378
  %2380 = fmul fast float %2379, %2370
  %2381 = fadd fast float %2380, %2378
  %2382 = fsub fast float %2301, %2376
  %2383 = fsub fast float %2381, %2376
  %2384 = fdiv fast float %2382, %2383
  %2385 = call float @dx.op.unary.f32(i32 7, float %2384)  ; Saturate(value)
  %2386 = extractvalue %dx.types.CBufRet.f32 %2295, 1
  %2387 = extractvalue %dx.types.CBufRet.f32 %2345, 0
  %2388 = extractvalue %dx.types.CBufRet.f32 %2345, 1
  %2389 = fmul fast float %2387, %2314
  %2390 = fmul fast float %2388, %2315
  %2391 = fmul fast float %2389, 1.250000e-01
  %2392 = fmul fast float %2390, 1.250000e-01
  %2393 = call float @dx.op.unary.f32(i32 27, float %2391)  ; Round_ni(value)
  %2394 = call float @dx.op.unary.f32(i32 27, float %2392)  ; Round_ni(value)
  %2395 = fmul fast float %2393, 8.000000e+00
  %2396 = fmul fast float %2394, 8.000000e+00
  %2397 = fsub fast float %2389, %2395
  %2398 = fsub fast float %2390, %2396
  %2399 = fadd fast float %2397, 5.000000e-01
  %2400 = fadd fast float %2398, 5.000000e-01
  %2401 = and i32 %2356, 255
  %2402 = lshr i32 %2355, 24
  %2403 = mul nuw nsw i32 %2401, 9
  %2404 = uitofp i32 %2403 to float
  %2405 = mul nuw nsw i32 %2402, 9
  %2406 = uitofp i32 %2405 to float
  %2407 = fadd fast float %2399, %2404
  %2408 = fadd fast float %2400, %2406
  %2409 = fdiv fast float %2407, %2296
  %2410 = fdiv fast float %2408, %2386
  %2411 = fmul fast float %2385, 4.375000e-01
  %2412 = fadd fast float %2411, 3.125000e-02
  %2413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2409, float %2410, float %2412, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  %2415 = extractvalue %dx.types.ResRet.f32 %2413, 1
  %2416 = extractvalue %dx.types.ResRet.f32 %2413, 2
  %2417 = fadd fast float %2411, 5.312500e-01
  %2418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2409, float %2410, float %2417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2419 = extractvalue %dx.types.ResRet.f32 %2418, 0
  %2420 = extractvalue %dx.types.ResRet.f32 %2418, 1
  %2421 = extractvalue %dx.types.ResRet.f32 %2418, 2
  %2422 = fmul fast float %2419, 2.000000e+00
  %2423 = fmul fast float %2420, 2.000000e+00
  %2424 = fmul fast float %2421, 2.000000e+00
  %2425 = fadd fast float %2422, -1.000000e+00
  %2426 = fadd fast float %2423, -1.000000e+00
  %2427 = fadd fast float %2424, -1.000000e+00
  %2428 = fmul fast float %2425, %2425
  %2429 = fmul fast float %2426, %2426
  %2430 = fadd fast float %2428, %2429
  %2431 = fmul fast float %2427, %2427
  %2432 = fadd fast float %2430, %2431
  %2433 = call float @dx.op.unary.f32(i32 24, float %2432)  ; Sqrt(value)
  %2434 = fcmp fast ogt float %2433, 0.000000e+00
  br i1 %2434, label %2435, label %2439

; <label>:2435                                    ; preds = %2358
  %2436 = fdiv fast float %2425, %2433
  %2437 = fdiv fast float %2426, %2433
  %2438 = fdiv fast float %2427, %2433
  br label %2439

; <label>:2439                                    ; preds = %2435, %2358
  %2440 = phi float [ %2436, %2435 ], [ 0.000000e+00, %2358 ]
  %2441 = phi float [ %2437, %2435 ], [ 0.000000e+00, %2358 ]
  %2442 = phi float [ %2438, %2435 ], [ 0.000000e+00, %2358 ]
  %2443 = call float @dx.op.dot3.f32(i32 55, float %2440, float %2441, float %2442, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %2444 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2443)  ; FMax(a,b)
  %2445 = fmul fast float %2444, 0x400C5BF8A0000000
  %2446 = fmul fast float %2414, %2334
  %2447 = fmul fast float %2446, %2445
  %2448 = fmul fast float %2415, %2334
  %2449 = fmul fast float %2448, %2445
  %2450 = fmul fast float %2416, %2334
  %2451 = fmul fast float %2450, %2445
  %2452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2453 = extractvalue %dx.types.CBufRet.f32 %2452, 3
  %2454 = fmul fast float %2447, %2453
  %2455 = fmul fast float %2449, %2453
  %2456 = fmul fast float %2451, %2453
  %2457 = fcmp fast ogt float %2301, %2381
  br i1 %2457, label %2458, label %2467

; <label>:2458                                    ; preds = %2439
  %2459 = fmul fast float %2383, 0x3FC24924A0000000
  %2460 = fsub fast float %2301, %2381
  %2461 = fdiv fast float %2460, %2459
  %2462 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  %2463 = fsub fast float 1.000000e+00, %2462
  %2464 = fmul fast float %2463, %2454
  %2465 = fmul fast float %2463, %2455
  %2466 = fmul fast float %2463, %2456
  br label %2467

; <label>:2467                                    ; preds = %2458, %2439, %2344, %2299
  %2468 = phi float [ %2466, %2458 ], [ %2456, %2439 ], [ 0.000000e+00, %2344 ], [ 0.000000e+00, %2299 ]
  %2469 = phi float [ %2465, %2458 ], [ %2455, %2439 ], [ 0.000000e+00, %2344 ], [ 0.000000e+00, %2299 ]
  %2470 = phi float [ %2464, %2458 ], [ %2454, %2439 ], [ 0.000000e+00, %2344 ], [ 0.000000e+00, %2299 ]
  %2471 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2470)  ; FMax(a,b)
  %2472 = fmul fast float %2471, 0x3FD20DD760000000
  %2473 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2123, float %2124, float %2125)  ; Dot3(ax,ay,az,bx,by,bz)
  %2474 = fmul fast float %2473, 0x3FDF454380000000
  %2475 = fmul fast float %2473, %2473
  %2476 = fmul fast float %2475, 0x3FEE471020000000
  %2477 = fadd fast float %2476, 0xBFD42F6020000000
  %2478 = call float @dx.op.dot3.f32(i32 55, float %2471, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2474, float %2477)  ; Dot3(ax,ay,az,bx,by,bz)
  %2479 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2469)  ; FMax(a,b)
  %2480 = fmul fast float %2479, 0x3FD20DD760000000
  %2481 = call float @dx.op.dot3.f32(i32 55, float %2479, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2474, float %2477)  ; Dot3(ax,ay,az,bx,by,bz)
  %2482 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2468)  ; FMax(a,b)
  %2483 = fmul fast float %2482, 0x3FD20DD760000000
  %2484 = call float @dx.op.dot3.f32(i32 55, float %2482, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2474, float %2477)  ; Dot3(ax,ay,az,bx,by,bz)
  %2485 = call float @dx.op.binary.f32(i32 35, float %2472, float 0.000000e+00)  ; FMax(a,b)
  %2486 = call float @dx.op.binary.f32(i32 35, float %2480, float 0.000000e+00)  ; FMax(a,b)
  %2487 = call float @dx.op.binary.f32(i32 35, float %2483, float 0.000000e+00)  ; FMax(a,b)
  %2488 = call float @dx.op.binary.f32(i32 35, float %2478, float 0.000000e+00)  ; FMax(a,b)
  %2489 = call float @dx.op.binary.f32(i32 35, float %2481, float 0.000000e+00)  ; FMax(a,b)
  %2490 = call float @dx.op.binary.f32(i32 35, float %2484, float 0.000000e+00)  ; FMax(a,b)
  %2491 = fmul fast float %2485, %2186
  %2492 = fmul fast float %2486, %2186
  %2493 = fmul fast float %2487, %2186
  %2494 = fadd fast float %2491, %2292
  %2495 = fadd fast float %2492, %2293
  %2496 = fadd fast float %2493, %2294
  %2497 = fmul fast float %2488, %2186
  %2498 = fmul fast float %2489, %2186
  %2499 = fmul fast float %2490, %2186
  %2500 = fadd fast float %2497, %2289
  %2501 = fadd fast float %2498, %2290
  %2502 = fadd fast float %2499, %2291
  br label %2503

; <label>:2503                                    ; preds = %2467, %2287
  %2504 = phi float [ %2500, %2467 ], [ %2289, %2287 ]
  %2505 = phi float [ %2501, %2467 ], [ %2290, %2287 ]
  %2506 = phi float [ %2502, %2467 ], [ %2291, %2287 ]
  %2507 = phi float [ %2494, %2467 ], [ %2292, %2287 ]
  %2508 = phi float [ %2495, %2467 ], [ %2293, %2287 ]
  %2509 = phi float [ %2496, %2467 ], [ %2294, %2287 ]
  %2510 = fcmp fast olt float %2186, 1.000000e+00
  br i1 %2510, label %2511, label %3334, !dx.controlflow.hints !108

; <label>:2511                                    ; preds = %2503
  %2512 = extractvalue %dx.types.CBufRet.f32 %2142, 2
  %2513 = fadd fast float %2512, %148
  %2514 = fmul fast float %2106, 3.200000e+01
  %2515 = fmul fast float %2107, 3.200000e+01
  %2516 = fadd fast float %2145, %2514
  %2517 = fadd fast float %2146, %2515
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.CBufRet.f32 %2518, 1
  %2521 = fsub fast float %2516, %2519
  %2522 = fsub fast float %2517, %2520
  %2523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2524 = extractvalue %dx.types.CBufRet.f32 %2523, 0
  %2525 = extractvalue %dx.types.CBufRet.f32 %2523, 1
  %2526 = fmul fast float %2521, %2524
  %2527 = fmul fast float %2522, %2525
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 0
  %2530 = fmul fast float %2526, %2529
  %2531 = extractvalue %dx.types.CBufRet.f32 %2528, 1
  %2532 = fadd fast float %2530, %2531
  %2533 = extractvalue %dx.types.CBufRet.f32 %2528, 2
  %2534 = fmul fast float %2533, %2527
  %2535 = extractvalue %dx.types.CBufRet.f32 %2528, 3
  %2536 = fadd fast float %2534, %2535
  %2537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2532, float %2536, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2538 = extractvalue %dx.types.ResRet.f32 %2537, 0
  %2539 = extractvalue %dx.types.ResRet.f32 %2537, 1
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 1
  %2542 = extractvalue %dx.types.CBufRet.f32 %2540, 0
  %2543 = fsub fast float %2541, %2542
  %2544 = fmul fast float %2543, %2538
  %2545 = fadd fast float %2544, %2542
  %2546 = extractvalue %dx.types.CBufRet.f32 %2540, 3
  %2547 = extractvalue %dx.types.CBufRet.f32 %2540, 2
  %2548 = fsub fast float %2546, %2547
  %2549 = fmul fast float %2548, %2539
  %2550 = fadd fast float %2549, %2547
  %2551 = fsub fast float %2513, %2545
  %2552 = fsub fast float %2550, %2545
  %2553 = fdiv fast float %2551, %2552
  %2554 = call float @dx.op.unary.f32(i32 7, float %2553)  ; Saturate(value)
  %2555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2556 = extractvalue %dx.types.CBufRet.f32 %2555, 0
  %2557 = fmul fast float %2556, %2554
  %2558 = extractvalue %dx.types.CBufRet.f32 %2555, 1
  %2559 = fadd fast float %2557, %2558
  %2560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2532, float %2536, float %2559, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2561 = extractvalue %dx.types.ResRet.f32 %2560, 0
  %2562 = extractvalue %dx.types.ResRet.f32 %2560, 1
  %2563 = extractvalue %dx.types.ResRet.f32 %2560, 2
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.CBufRet.f32 %2564, 1
  %2567 = extractvalue %dx.types.CBufRet.f32 %2564, 2
  %2568 = fmul fast float %2565, %2561
  %2569 = fmul fast float %2566, %2562
  %2570 = fmul fast float %2567, %2563
  %2571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2572 = extractvalue %dx.types.CBufRet.f32 %2571, 0
  %2573 = extractvalue %dx.types.CBufRet.f32 %2571, 1
  %2574 = extractvalue %dx.types.CBufRet.f32 %2571, 2
  %2575 = fadd fast float %2568, %2572
  %2576 = fadd fast float %2569, %2573
  %2577 = fadd fast float %2570, %2574
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2580 = fmul fast float %2579, %2526
  %2581 = extractvalue %dx.types.CBufRet.f32 %2578, 1
  %2582 = fadd fast float %2580, %2581
  %2583 = extractvalue %dx.types.CBufRet.f32 %2578, 2
  %2584 = fmul fast float %2583, %2527
  %2585 = extractvalue %dx.types.CBufRet.f32 %2578, 3
  %2586 = fadd fast float %2584, %2585
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2589 = extractvalue %dx.types.CBufRet.f32 %2587, 1
  %2590 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2591 = extractvalue %dx.types.CBufRet.f32 %2587, 3
  %2592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2592, 0
  %2594 = extractvalue %dx.types.CBufRet.f32 %2592, 1
  %2595 = extractvalue %dx.types.CBufRet.f32 %2592, 2
  %2596 = extractvalue %dx.types.CBufRet.f32 %2592, 3
  %2597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2582, float %2586, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2598 = extractvalue %dx.types.ResRet.f32 %2597, 0
  %2599 = extractvalue %dx.types.ResRet.f32 %2597, 1
  %2600 = extractvalue %dx.types.ResRet.f32 %2597, 2
  %2601 = extractvalue %dx.types.ResRet.f32 %2597, 3
  %2602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2582, float %2586, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2603 = extractvalue %dx.types.ResRet.f32 %2602, 0
  %2604 = extractvalue %dx.types.ResRet.f32 %2602, 1
  %2605 = extractvalue %dx.types.ResRet.f32 %2602, 2
  %2606 = extractvalue %dx.types.ResRet.f32 %2602, 3
  %2607 = fmul fast float %2598, %2575
  %2608 = fmul fast float %2603, %2575
  %2609 = fmul fast float %2605, %2575
  %2610 = fmul fast float %2601, %2575
  %2611 = fadd fast float %2607, %2588
  %2612 = fadd fast float %2608, %2589
  %2613 = fadd fast float %2609, %2590
  %2614 = fadd fast float %2610, %2591
  %2615 = fmul fast float %2599, %2575
  %2616 = fmul fast float %2604, %2575
  %2617 = fadd fast float %2615, %2593
  %2618 = fadd fast float %2616, %2594
  %2619 = fmul fast float %2600, %2575
  %2620 = fmul fast float %2606, %2575
  %2621 = fadd fast float %2619, %2595
  %2622 = fadd fast float %2620, %2596
  %2623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2582, float %2586, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  %2625 = extractvalue %dx.types.ResRet.f32 %2623, 1
  %2626 = extractvalue %dx.types.ResRet.f32 %2623, 2
  %2627 = extractvalue %dx.types.ResRet.f32 %2623, 3
  %2628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2582, float %2586, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2629 = extractvalue %dx.types.ResRet.f32 %2628, 0
  %2630 = extractvalue %dx.types.ResRet.f32 %2628, 1
  %2631 = extractvalue %dx.types.ResRet.f32 %2628, 2
  %2632 = extractvalue %dx.types.ResRet.f32 %2628, 3
  %2633 = fmul fast float %2624, %2576
  %2634 = fmul fast float %2629, %2576
  %2635 = fmul fast float %2631, %2576
  %2636 = fmul fast float %2627, %2576
  %2637 = fadd fast float %2611, %2633
  %2638 = fadd fast float %2612, %2634
  %2639 = fadd fast float %2613, %2635
  %2640 = fadd fast float %2614, %2636
  %2641 = fmul fast float %2625, %2576
  %2642 = fmul fast float %2630, %2576
  %2643 = fadd fast float %2617, %2641
  %2644 = fadd fast float %2618, %2642
  %2645 = fmul fast float %2626, %2576
  %2646 = fmul fast float %2632, %2576
  %2647 = fadd fast float %2621, %2645
  %2648 = fadd fast float %2622, %2646
  %2649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2582, float %2586, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.ResRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.ResRet.f32 %2649, 2
  %2653 = extractvalue %dx.types.ResRet.f32 %2649, 3
  %2654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2582, float %2586, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2655 = extractvalue %dx.types.ResRet.f32 %2654, 0
  %2656 = extractvalue %dx.types.ResRet.f32 %2654, 1
  %2657 = extractvalue %dx.types.ResRet.f32 %2654, 2
  %2658 = extractvalue %dx.types.ResRet.f32 %2654, 3
  %2659 = fmul fast float %2650, %2577
  %2660 = fmul fast float %2655, %2577
  %2661 = fmul fast float %2657, %2577
  %2662 = fmul fast float %2653, %2577
  %2663 = fadd fast float %2637, %2659
  %2664 = fadd fast float %2638, %2660
  %2665 = fadd fast float %2639, %2661
  %2666 = fadd fast float %2640, %2662
  %2667 = fmul fast float %2651, %2577
  %2668 = fmul fast float %2656, %2577
  %2669 = fadd fast float %2643, %2667
  %2670 = fadd fast float %2644, %2668
  %2671 = fmul fast float %2652, %2577
  %2672 = fmul fast float %2658, %2577
  %2673 = fadd fast float %2647, %2671
  %2674 = fadd fast float %2648, %2672
  %2675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2676 = extractvalue %dx.types.CBufRet.f32 %2675, 0
  %2677 = fsub fast float %2145, %2676
  %2678 = fsub fast float %2519, %2145
  %2679 = call float @dx.op.binary.f32(i32 35, float %2678, float %2677)  ; FMax(a,b)
  %2680 = extractvalue %dx.types.CBufRet.f32 %2675, 1
  %2681 = fsub fast float %2146, %2680
  %2682 = fsub fast float %2520, %2146
  %2683 = call float @dx.op.binary.f32(i32 35, float %2682, float %2681)  ; FMax(a,b)
  %2684 = call float @dx.op.binary.f32(i32 35, float %2679, float %2683)  ; FMax(a,b)
  %2685 = extractvalue %dx.types.CBufRet.f32 %2523, 3
  %2686 = fmul fast float %2685, %2684
  %2687 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2689 = extractvalue %dx.types.CBufRet.f32 %2688, 0
  %2690 = extractvalue %dx.types.CBufRet.f32 %2688, 1
  %2691 = extractvalue %dx.types.CBufRet.f32 %2688, 2
  %2692 = extractvalue %dx.types.CBufRet.f32 %2688, 3
  %2693 = fsub fast float %2689, %2663
  %2694 = fsub fast float %2690, %2664
  %2695 = fsub fast float %2691, %2665
  %2696 = fsub fast float %2692, %2666
  %2697 = fmul fast float %2693, %2687
  %2698 = fmul fast float %2694, %2687
  %2699 = fmul fast float %2695, %2687
  %2700 = fmul fast float %2696, %2687
  %2701 = fadd fast float %2697, %2663
  %2702 = fadd fast float %2698, %2664
  %2703 = fadd fast float %2699, %2665
  %2704 = fadd fast float %2700, %2666
  %2705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2705, 0
  %2707 = extractvalue %dx.types.CBufRet.f32 %2705, 1
  %2708 = fsub fast float %2706, %2669
  %2709 = fsub fast float %2707, %2670
  %2710 = fmul fast float %2708, %2687
  %2711 = fmul fast float %2709, %2687
  %2712 = fadd fast float %2710, %2669
  %2713 = fadd fast float %2711, %2670
  %2714 = extractvalue %dx.types.CBufRet.f32 %2705, 2
  %2715 = extractvalue %dx.types.CBufRet.f32 %2705, 3
  %2716 = fsub fast float %2714, %2673
  %2717 = fsub fast float %2715, %2674
  %2718 = fmul fast float %2716, %2687
  %2719 = fmul fast float %2717, %2687
  %2720 = fadd fast float %2718, %2673
  %2721 = fadd fast float %2719, %2674
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2724 = fmul fast float %2723, %2701
  %2725 = fmul fast float %2723, %2702
  %2726 = fmul fast float %2723, %2703
  %2727 = fmul fast float %2723, %2704
  %2728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.f32 %2728, 0
  %2730 = fmul fast float %2729, %2712
  %2731 = fmul fast float %2729, %2713
  %2732 = fadd fast float %2730, %2724
  %2733 = fadd fast float %2731, %2726
  %2734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2734, 0
  %2736 = fmul fast float %2735, %2720
  %2737 = fmul fast float %2735, %2721
  %2738 = fadd fast float %2732, %2736
  %2739 = fadd fast float %2733, %2737
  %2740 = extractvalue %dx.types.CBufRet.f32 %2722, 1
  %2741 = fmul fast float %2740, %2701
  %2742 = fmul fast float %2740, %2702
  %2743 = fmul fast float %2740, %2703
  %2744 = fmul fast float %2740, %2704
  %2745 = extractvalue %dx.types.CBufRet.f32 %2728, 1
  %2746 = fmul fast float %2745, %2712
  %2747 = fmul fast float %2745, %2713
  %2748 = fadd fast float %2746, %2741
  %2749 = fadd fast float %2747, %2743
  %2750 = extractvalue %dx.types.CBufRet.f32 %2734, 1
  %2751 = fmul fast float %2750, %2720
  %2752 = fmul fast float %2750, %2721
  %2753 = fadd fast float %2748, %2751
  %2754 = fadd fast float %2749, %2752
  %2755 = extractvalue %dx.types.CBufRet.f32 %2722, 2
  %2756 = fmul fast float %2755, %2701
  %2757 = fmul fast float %2755, %2702
  %2758 = fmul fast float %2755, %2703
  %2759 = fmul fast float %2755, %2704
  %2760 = extractvalue %dx.types.CBufRet.f32 %2728, 2
  %2761 = fmul fast float %2760, %2712
  %2762 = fmul fast float %2760, %2713
  %2763 = fadd fast float %2761, %2756
  %2764 = fadd fast float %2762, %2758
  %2765 = extractvalue %dx.types.CBufRet.f32 %2734, 2
  %2766 = fmul fast float %2765, %2720
  %2767 = fmul fast float %2765, %2721
  %2768 = fadd fast float %2763, %2766
  %2769 = fadd fast float %2764, %2767
  %2770 = fmul fast float %2757, %2757
  %2771 = fmul fast float %2769, %2769
  %2772 = fmul fast float %2759, %2759
  %2773 = fadd fast float %2772, %2770
  %2774 = fadd fast float %2773, %2771
  %2775 = call float @dx.op.unary.f32(i32 24, float %2774)  ; Sqrt(value)
  %2776 = fcmp fast ugt float %2775, 0.000000e+00
  br i1 %2776, label %2777, label %2792

; <label>:2777                                    ; preds = %2511
  %2778 = fsub fast float -0.000000e+00, %2759
  %2779 = fdiv fast float %2778, %2775
  %2780 = fsub fast float -0.000000e+00, %2757
  %2781 = fdiv fast float %2780, %2775
  %2782 = fdiv fast float %2769, %2775
  %2783 = fmul fast float %2768, 0x3FE279A760000000
  %2784 = fmul fast float %2781, %2757
  %2785 = fmul fast float %2782, %2769
  %2786 = fmul fast float %2779, %2759
  %2787 = fadd fast float %2784, %2786
  %2788 = fsub fast float %2787, %2785
  %2789 = call float @dx.op.unary.f32(i32 6, float %2788)  ; FAbs(value)
  %2790 = fadd fast float %2789, 0x3DDB7CDFE0000000
  %2791 = fdiv fast float %2783, %2790
  br label %2792

; <label>:2792                                    ; preds = %2777, %2511
  %2793 = phi float [ %2791, %2777 ], [ 1.000000e+00, %2511 ]
  %2794 = fmul fast float %2742, %2742
  %2795 = fmul fast float %2754, %2754
  %2796 = fmul fast float %2744, %2744
  %2797 = fadd fast float %2796, %2794
  %2798 = fadd fast float %2797, %2795
  %2799 = call float @dx.op.unary.f32(i32 24, float %2798)  ; Sqrt(value)
  %2800 = fcmp fast ugt float %2799, 0.000000e+00
  br i1 %2800, label %2801, label %2816

; <label>:2801                                    ; preds = %2792
  %2802 = fsub fast float -0.000000e+00, %2744
  %2803 = fdiv fast float %2802, %2799
  %2804 = fsub fast float -0.000000e+00, %2742
  %2805 = fdiv fast float %2804, %2799
  %2806 = fdiv fast float %2754, %2799
  %2807 = fmul fast float %2753, 0x3FE279A760000000
  %2808 = fmul fast float %2805, %2742
  %2809 = fmul fast float %2806, %2754
  %2810 = fmul fast float %2803, %2744
  %2811 = fadd fast float %2808, %2810
  %2812 = fsub fast float %2811, %2809
  %2813 = call float @dx.op.unary.f32(i32 6, float %2812)  ; FAbs(value)
  %2814 = fadd fast float %2813, 0x3DDB7CDFE0000000
  %2815 = fdiv fast float %2807, %2814
  br label %2816

; <label>:2816                                    ; preds = %2801, %2792
  %2817 = phi float [ %2815, %2801 ], [ 1.000000e+00, %2792 ]
  %2818 = call float @dx.op.binary.f32(i32 36, float %2817, float %2793)  ; FMin(a,b)
  %2819 = fmul fast float %2725, %2725
  %2820 = fmul fast float %2739, %2739
  %2821 = fmul fast float %2727, %2727
  %2822 = fadd fast float %2821, %2819
  %2823 = fadd fast float %2822, %2820
  %2824 = call float @dx.op.unary.f32(i32 24, float %2823)  ; Sqrt(value)
  %2825 = fcmp fast ugt float %2824, 0.000000e+00
  br i1 %2825, label %2826, label %2841

; <label>:2826                                    ; preds = %2816
  %2827 = fsub fast float -0.000000e+00, %2727
  %2828 = fdiv fast float %2827, %2824
  %2829 = fsub fast float -0.000000e+00, %2725
  %2830 = fdiv fast float %2829, %2824
  %2831 = fdiv fast float %2739, %2824
  %2832 = fmul fast float %2738, 0x3FE279A760000000
  %2833 = fmul fast float %2830, %2725
  %2834 = fmul fast float %2831, %2739
  %2835 = fmul fast float %2828, %2727
  %2836 = fadd fast float %2833, %2835
  %2837 = fsub fast float %2836, %2834
  %2838 = call float @dx.op.unary.f32(i32 6, float %2837)  ; FAbs(value)
  %2839 = fadd fast float %2838, 0x3DDB7CDFE0000000
  %2840 = fdiv fast float %2832, %2839
  br label %2841

; <label>:2841                                    ; preds = %2826, %2816
  %2842 = phi float [ %2840, %2826 ], [ 1.000000e+00, %2816 ]
  %2843 = call float @dx.op.binary.f32(i32 36, float %2842, float %2818)  ; FMin(a,b)
  %2844 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2845 = fcmp fast olt float %2844, 1.000000e+00
  br i1 %2845, label %2846, label %2856

; <label>:2846                                    ; preds = %2841
  %2847 = fmul fast float %2844, %2725
  %2848 = fmul fast float %2844, %2739
  %2849 = fmul fast float %2844, %2727
  %2850 = fmul fast float %2844, %2742
  %2851 = fmul fast float %2844, %2754
  %2852 = fmul fast float %2844, %2744
  %2853 = fmul fast float %2844, %2757
  %2854 = fmul fast float %2844, %2769
  %2855 = fmul fast float %2844, %2759
  br label %2856

; <label>:2856                                    ; preds = %2846, %2841
  %2857 = phi float [ %2853, %2846 ], [ %2757, %2841 ]
  %2858 = phi float [ %2854, %2846 ], [ %2769, %2841 ]
  %2859 = phi float [ %2855, %2846 ], [ %2759, %2841 ]
  %2860 = phi float [ %2850, %2846 ], [ %2742, %2841 ]
  %2861 = phi float [ %2851, %2846 ], [ %2754, %2841 ]
  %2862 = phi float [ %2852, %2846 ], [ %2744, %2841 ]
  %2863 = phi float [ %2847, %2846 ], [ %2725, %2841 ]
  %2864 = phi float [ %2848, %2846 ], [ %2739, %2841 ]
  %2865 = phi float [ %2849, %2846 ], [ %2727, %2841 ]
  %2866 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2738)  ; FMax(a,b)
  %2867 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2753)  ; FMax(a,b)
  %2868 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2768)  ; FMax(a,b)
  %2869 = fcmp fast oge float %2526, 0.000000e+00
  %2870 = and i1 %2869, %2297
  %2871 = fcmp fast ole float %2526, 1.000000e+00
  %2872 = and i1 %2871, %2870
  %2873 = fcmp fast oge float %2527, 0.000000e+00
  %2874 = and i1 %2873, %2872
  %2875 = fcmp fast ole float %2527, 1.000000e+00
  %2876 = and i1 %2875, %2874
  br i1 %2876, label %2877, label %3022, !dx.controlflow.hints !109

; <label>:2877                                    ; preds = %2856
  %2878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2879 = extractvalue %dx.types.CBufRet.f32 %2878, 2
  %2880 = extractvalue %dx.types.CBufRet.f32 %2878, 3
  %2881 = fmul fast float %2879, %2526
  %2882 = fmul fast float %2880, %2527
  %2883 = call float @dx.op.unary.f32(i32 27, float %2881)  ; Round_ni(value)
  %2884 = call float @dx.op.unary.f32(i32 27, float %2882)  ; Round_ni(value)
  %2885 = fptosi float %2883 to i32
  %2886 = fptosi float %2884 to i32
  %2887 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2885, i32 %2886, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = and i32 %2888, 65535
  %2890 = lshr i32 %2888, 16
  %2891 = icmp eq i32 %2889, 65535
  br i1 %2891, label %2928, label %2892

; <label>:2892                                    ; preds = %2877
  %2893 = extractvalue %dx.types.CBufRet.f32 %2295, 1
  %2894 = extractvalue %dx.types.CBufRet.f32 %2878, 0
  %2895 = extractvalue %dx.types.CBufRet.f32 %2878, 1
  %2896 = fmul fast float %2894, %2526
  %2897 = fmul fast float %2895, %2527
  %2898 = fmul fast float %2896, 1.250000e-01
  %2899 = fmul fast float %2897, 1.250000e-01
  %2900 = call float @dx.op.unary.f32(i32 27, float %2898)  ; Round_ni(value)
  %2901 = call float @dx.op.unary.f32(i32 27, float %2899)  ; Round_ni(value)
  %2902 = fmul fast float %2900, 8.000000e+00
  %2903 = fmul fast float %2901, 8.000000e+00
  %2904 = and i32 %2888, 255
  %2905 = lshr i32 %2888, 8
  %2906 = and i32 %2905, 255
  %2907 = mul nuw nsw i32 %2904, 9
  %2908 = uitofp i32 %2907 to float
  %2909 = mul nuw nsw i32 %2906, 9
  %2910 = uitofp i32 %2909 to float
  %2911 = fadd fast float %2908, 5.000000e-01
  %2912 = fadd fast float %2911, %2896
  %2913 = fsub fast float %2912, %2902
  %2914 = fadd fast float %2910, 5.000000e-01
  %2915 = fadd fast float %2914, %2897
  %2916 = fsub fast float %2915, %2903
  %2917 = fdiv fast float %2913, %2296
  %2918 = fdiv fast float %2916, %2893
  %2919 = fmul fast float %2554, 4.375000e-01
  %2920 = fadd fast float %2919, 3.125000e-02
  %2921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2917, float %2918, float %2920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2922 = extractvalue %dx.types.ResRet.f32 %2921, 0
  %2923 = extractvalue %dx.types.ResRet.f32 %2921, 1
  %2924 = extractvalue %dx.types.ResRet.f32 %2921, 2
  %2925 = fadd fast float %2922, %2866
  %2926 = fadd fast float %2923, %2867
  %2927 = fadd fast float %2924, %2868
  br label %2928

; <label>:2928                                    ; preds = %2892, %2877
  %2929 = phi float [ %2927, %2892 ], [ %2868, %2877 ]
  %2930 = phi float [ %2926, %2892 ], [ %2867, %2877 ]
  %2931 = phi float [ %2925, %2892 ], [ %2866, %2877 ]
  %2932 = icmp eq i32 %2890, 65535
  br i1 %2932, label %3022, label %2933

; <label>:2933                                    ; preds = %2928
  %2934 = extractvalue %dx.types.CBufRet.f32 %2295, 1
  %2935 = extractvalue %dx.types.CBufRet.f32 %2878, 0
  %2936 = extractvalue %dx.types.CBufRet.f32 %2878, 1
  %2937 = fmul fast float %2935, %2526
  %2938 = fmul fast float %2936, %2527
  %2939 = fmul fast float %2937, 1.250000e-01
  %2940 = fmul fast float %2938, 1.250000e-01
  %2941 = call float @dx.op.unary.f32(i32 27, float %2939)  ; Round_ni(value)
  %2942 = call float @dx.op.unary.f32(i32 27, float %2940)  ; Round_ni(value)
  %2943 = fmul fast float %2941, 8.000000e+00
  %2944 = fmul fast float %2942, 8.000000e+00
  %2945 = fsub fast float %2937, %2943
  %2946 = fsub fast float %2938, %2944
  %2947 = fadd fast float %2945, 5.000000e-01
  %2948 = fadd fast float %2946, 5.000000e-01
  %2949 = and i32 %2890, 255
  %2950 = lshr i32 %2888, 24
  %2951 = mul nuw nsw i32 %2949, 9
  %2952 = uitofp i32 %2951 to float
  %2953 = mul nuw nsw i32 %2950, 9
  %2954 = uitofp i32 %2953 to float
  %2955 = fadd fast float %2947, %2952
  %2956 = fadd fast float %2948, %2954
  %2957 = fdiv fast float %2955, %2296
  %2958 = fdiv fast float %2956, %2934
  %2959 = fmul fast float %2554, 4.375000e-01
  %2960 = fadd fast float %2959, 3.125000e-02
  %2961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2957, float %2958, float %2960, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2962 = extractvalue %dx.types.ResRet.f32 %2961, 0
  %2963 = extractvalue %dx.types.ResRet.f32 %2961, 1
  %2964 = extractvalue %dx.types.ResRet.f32 %2961, 2
  %2965 = fadd fast float %2959, 5.312500e-01
  %2966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2957, float %2958, float %2965, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2967 = extractvalue %dx.types.ResRet.f32 %2966, 0
  %2968 = extractvalue %dx.types.ResRet.f32 %2966, 1
  %2969 = extractvalue %dx.types.ResRet.f32 %2966, 2
  %2970 = fmul fast float %2967, 2.000000e+00
  %2971 = fmul fast float %2968, 2.000000e+00
  %2972 = fmul fast float %2969, 2.000000e+00
  %2973 = fadd fast float %2970, -1.000000e+00
  %2974 = fadd fast float %2971, -1.000000e+00
  %2975 = fadd fast float %2972, -1.000000e+00
  %2976 = fmul fast float %2973, %2973
  %2977 = fmul fast float %2974, %2974
  %2978 = fadd fast float %2976, %2977
  %2979 = fmul fast float %2975, %2975
  %2980 = fadd fast float %2978, %2979
  %2981 = call float @dx.op.unary.f32(i32 24, float %2980)  ; Sqrt(value)
  %2982 = fcmp fast ogt float %2981, 0.000000e+00
  br i1 %2982, label %2983, label %2987

; <label>:2983                                    ; preds = %2933
  %2984 = fdiv fast float %2973, %2981
  %2985 = fdiv fast float %2974, %2981
  %2986 = fdiv fast float %2975, %2981
  br label %2987

; <label>:2987                                    ; preds = %2983, %2933
  %2988 = phi float [ %2984, %2983 ], [ 0.000000e+00, %2933 ]
  %2989 = phi float [ %2985, %2983 ], [ 0.000000e+00, %2933 ]
  %2990 = phi float [ %2986, %2983 ], [ 0.000000e+00, %2933 ]
  %2991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2992 = extractvalue %dx.types.CBufRet.f32 %2991, 0
  %2993 = extractvalue %dx.types.CBufRet.f32 %2991, 1
  %2994 = fsub fast float %2145, %2992
  %2995 = fsub fast float %2146, %2993
  %2996 = fmul fast float %2994, %2994
  %2997 = fmul fast float %2995, %2995
  %2998 = fadd fast float %2996, %2997
  %2999 = call float @dx.op.unary.f32(i32 24, float %2998)  ; Sqrt(value)
  %3000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3001 = extractvalue %dx.types.CBufRet.f32 %3000, 0
  %3002 = extractvalue %dx.types.CBufRet.f32 %3000, 1
  %3003 = fsub fast float %2999, %3001
  %3004 = fdiv fast float %3003, %3002
  %3005 = call float @dx.op.unary.f32(i32 7, float %3004)  ; Saturate(value)
  %3006 = fmul fast float %3005, 2.000000e+00
  %3007 = fsub fast float 3.000000e+00, %3006
  %3008 = fmul fast float %3005, %3005
  %3009 = fmul fast float %3008, %3007
  %3010 = call float @dx.op.dot3.f32(i32 55, float %2988, float %2989, float %2990, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3011 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3010)  ; FMax(a,b)
  %3012 = fmul fast float %3011, 0x400C5BF8A0000000
  %3013 = fmul fast float %3009, %2962
  %3014 = fmul fast float %3013, %3012
  %3015 = fadd fast float %3014, %2931
  %3016 = fmul fast float %3009, %2963
  %3017 = fmul fast float %3016, %3012
  %3018 = fadd fast float %3017, %2930
  %3019 = fmul fast float %3009, %2964
  %3020 = fmul fast float %3019, %3012
  %3021 = fadd fast float %3020, %2929
  br label %3022

; <label>:3022                                    ; preds = %2987, %2928, %2856
  %3023 = phi float [ %3021, %2987 ], [ %2929, %2928 ], [ %2868, %2856 ]
  %3024 = phi float [ %3018, %2987 ], [ %2930, %2928 ], [ %2867, %2856 ]
  %3025 = phi float [ %3015, %2987 ], [ %2931, %2928 ], [ %2866, %2856 ]
  %3026 = fcmp fast ogt float %2513, %2550
  %3027 = and i1 %2869, %3026
  %3028 = and i1 %2871, %3027
  %3029 = and i1 %2873, %3028
  %3030 = and i1 %2875, %3029
  br i1 %3030, label %3031, label %3088, !dx.controlflow.hints !110

; <label>:3031                                    ; preds = %3022
  %3032 = fmul fast float %2552, 0x3FC24924A0000000
  %3033 = fsub fast float %2513, %2550
  %3034 = fdiv fast float %3033, %3032
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 0
  %3038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3039 = extractvalue %dx.types.CBufRet.f32 %3038, 0
  %3040 = extractvalue %dx.types.CBufRet.f32 %3038, 1
  %3041 = extractvalue %dx.types.CBufRet.f32 %3038, 2
  %3042 = fsub fast float %3037, %3025
  %3043 = fsub fast float %3039, %2863
  %3044 = fsub fast float %3040, %2864
  %3045 = fsub fast float %3041, %2865
  %3046 = fmul fast float %3042, %3035
  %3047 = fmul fast float %3043, %3035
  %3048 = fmul fast float %3044, %3035
  %3049 = fmul fast float %3045, %3035
  %3050 = fadd fast float %3046, %3025
  %3051 = fadd fast float %3047, %2863
  %3052 = fadd fast float %3048, %2864
  %3053 = fadd fast float %3049, %2865
  %3054 = extractvalue %dx.types.CBufRet.f32 %3036, 1
  %3055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3056 = extractvalue %dx.types.CBufRet.f32 %3055, 0
  %3057 = extractvalue %dx.types.CBufRet.f32 %3055, 1
  %3058 = extractvalue %dx.types.CBufRet.f32 %3055, 2
  %3059 = fsub fast float %3054, %3024
  %3060 = fsub fast float %3056, %2860
  %3061 = fsub fast float %3057, %2861
  %3062 = fsub fast float %3058, %2862
  %3063 = fmul fast float %3059, %3035
  %3064 = fmul fast float %3060, %3035
  %3065 = fmul fast float %3061, %3035
  %3066 = fmul fast float %3062, %3035
  %3067 = fadd fast float %3063, %3024
  %3068 = fadd fast float %3064, %2860
  %3069 = fadd fast float %3065, %2861
  %3070 = fadd fast float %3066, %2862
  %3071 = extractvalue %dx.types.CBufRet.f32 %3036, 2
  %3072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3073 = extractvalue %dx.types.CBufRet.f32 %3072, 0
  %3074 = extractvalue %dx.types.CBufRet.f32 %3072, 1
  %3075 = extractvalue %dx.types.CBufRet.f32 %3072, 2
  %3076 = fsub fast float %3071, %3023
  %3077 = fsub fast float %3073, %2857
  %3078 = fsub fast float %3074, %2858
  %3079 = fsub fast float %3075, %2859
  %3080 = fmul fast float %3076, %3035
  %3081 = fmul fast float %3077, %3035
  %3082 = fmul fast float %3078, %3035
  %3083 = fmul fast float %3079, %3035
  %3084 = fadd fast float %3080, %3023
  %3085 = fadd fast float %3081, %2857
  %3086 = fadd fast float %3082, %2858
  %3087 = fadd fast float %3083, %2859
  br label %3088

; <label>:3088                                    ; preds = %3031, %3022
  %3089 = phi float [ %3084, %3031 ], [ %3023, %3022 ]
  %3090 = phi float [ %3085, %3031 ], [ %2857, %3022 ]
  %3091 = phi float [ %3086, %3031 ], [ %2858, %3022 ]
  %3092 = phi float [ %3087, %3031 ], [ %2859, %3022 ]
  %3093 = phi float [ %3067, %3031 ], [ %3024, %3022 ]
  %3094 = phi float [ %3068, %3031 ], [ %2860, %3022 ]
  %3095 = phi float [ %3069, %3031 ], [ %2861, %3022 ]
  %3096 = phi float [ %3070, %3031 ], [ %2862, %3022 ]
  %3097 = phi float [ %3050, %3031 ], [ %3025, %3022 ]
  %3098 = phi float [ %3051, %3031 ], [ %2863, %3022 ]
  %3099 = phi float [ %3052, %3031 ], [ %2864, %3022 ]
  %3100 = phi float [ %3053, %3031 ], [ %2865, %3022 ]
  %3101 = extractvalue %dx.types.CBufRet.f32 %2675, 3
  %3102 = fmul fast float %3101, %3097
  %3103 = fmul fast float %3101, %3093
  %3104 = fmul fast float %3101, %3089
  %3105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3106 = extractvalue %dx.types.CBufRet.f32 %3105, 3
  %3107 = fmul fast float %3102, %3106
  %3108 = fmul fast float %3103, %3106
  %3109 = fmul fast float %3104, %3106
  %3110 = call float @dx.op.dot3.f32(i32 55, float %3107, float %3108, float %3109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3111 = fmul fast float %3110, 0x3FD20DD760000000
  %3112 = fmul fast float %3098, 1.500000e+00
  %3113 = fmul fast float %3112, %3101
  %3114 = fmul fast float %3113, %3106
  %3115 = fmul fast float %3099, 1.500000e+00
  %3116 = fmul fast float %3115, %3101
  %3117 = fmul fast float %3116, %3106
  %3118 = fmul fast float %3100, 1.500000e+00
  %3119 = fmul fast float %3118, %3101
  %3120 = fmul fast float %3119, %3106
  %3121 = fmul fast float %3094, 1.500000e+00
  %3122 = fmul fast float %3121, %3101
  %3123 = fmul fast float %3122, %3106
  %3124 = fmul fast float %3095, 1.500000e+00
  %3125 = fmul fast float %3124, %3101
  %3126 = fmul fast float %3125, %3106
  %3127 = fmul fast float %3096, 1.500000e+00
  %3128 = fmul fast float %3127, %3101
  %3129 = fmul fast float %3128, %3106
  %3130 = fmul fast float %3090, 1.500000e+00
  %3131 = fmul fast float %3130, %3101
  %3132 = fmul fast float %3131, %3106
  %3133 = fmul fast float %3091, 1.500000e+00
  %3134 = fmul fast float %3133, %3101
  %3135 = fmul fast float %3134, %3106
  %3136 = fmul fast float %3092, 1.500000e+00
  %3137 = fmul fast float %3136, %3101
  %3138 = fmul fast float %3137, %3106
  %3139 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3107)  ; FMax(a,b)
  %3140 = call float @dx.op.dot3.f32(i32 55, float %3114, float %3117, float %3120, float %3114, float %3117, float %3120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3141 = fcmp fast oeq float %3140, 0.000000e+00
  %3142 = fcmp fast oeq float %3139, 0.000000e+00
  %3143 = or i1 %3142, %3141
  br i1 %3143, label %3173, label %3144

; <label>:3144                                    ; preds = %3088
  %3145 = fsub fast float -0.000000e+00, %3120
  %3146 = fsub fast float -0.000000e+00, %3114
  %3147 = call float @dx.op.unary.f32(i32 24, float %3140)  ; Sqrt(value)
  %3148 = fdiv fast float %3147, %3139
  %3149 = fcmp fast ogt float %3148, 0x3FFB6F8900000000
  %3150 = select i1 %3149, float 0x3FFB6F8900000000, float %3148
  %3151 = fmul fast float %3150, 0x3FE8A23460000000
  %3152 = call float @dx.op.unary.f32(i32 7, float %3151)  ; Saturate(value)
  %3153 = call float @dx.op.binary.f32(i32 35, float %3150, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3154 = fmul fast float %3152, %3139
  %3155 = fmul fast float %3153, 0x3FF279A740000000
  %3156 = fadd fast float %3155, -1.000000e+00
  %3157 = call float @dx.op.dot3.f32(i32 55, float %3145, float %3146, float %3117, float %3145, float %3146, float %3117)  ; Dot3(ax,ay,az,bx,by,bz)
  %3158 = call float @dx.op.unary.f32(i32 25, float %3157)  ; Rsqrt(value)
  %3159 = fmul fast float %3158, %3145
  %3160 = fmul fast float %3158, %3146
  %3161 = fmul fast float %3158, %3117
  %3162 = fmul fast float %3156, %3156
  %3163 = fsub fast float 1.000000e+00, %3162
  %3164 = fmul fast float %3153, 0x40005F8BE0000000
  %3165 = fsub fast float 0x400C5BF8A0000000, %3164
  %3166 = fdiv fast float %3154, %3165
  %3167 = fmul fast float %3166, 0x3FEE31C3C0000000
  %3168 = fmul fast float %3167, %3163
  %3169 = fmul fast float %3153, 0x3FDACB7480000000
  %3170 = fadd fast float %3169, 0xBFD7347680000000
  %3171 = fmul fast float %3170, %3166
  %3172 = fmul fast float %3171, %3163
  br label %3173

; <label>:3173                                    ; preds = %3144, %3088
  %3174 = phi float [ %3159, %3144 ], [ 0.000000e+00, %3088 ]
  %3175 = phi float [ %3160, %3144 ], [ 0.000000e+00, %3088 ]
  %3176 = phi float [ %3161, %3144 ], [ 0.000000e+00, %3088 ]
  %3177 = phi float [ %3168, %3144 ], [ 0.000000e+00, %3088 ]
  %3178 = phi float [ %3172, %3144 ], [ 0.000000e+00, %3088 ]
  %3179 = call float @dx.op.dot3.f32(i32 55, float %3174, float %3175, float %3176, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3180 = fmul fast float %3179, %3179
  %3181 = fmul fast float %3180, 0x3FEE471020000000
  %3182 = fadd fast float %3181, 0xBFD42F6020000000
  %3183 = fmul fast float %3139, 0x3FD20DD760000000
  %3184 = fmul fast float %3182, %3178
  %3185 = fmul fast float %3177, 0x3FDF454380000000
  %3186 = fmul fast float %3185, %3179
  %3187 = fadd fast float %3186, %3183
  %3188 = fadd fast float %3187, %3184
  %3189 = call float @dx.op.dot3.f32(i32 55, float %3174, float %3175, float %3176, float %2123, float %2124, float %2125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3190 = fmul fast float %3189, 0x3FDF454380000000
  %3191 = fmul fast float %3189, %3189
  %3192 = fmul fast float %3191, 0x3FEE471020000000
  %3193 = fadd fast float %3192, 0xBFD42F6020000000
  %3194 = call float @dx.op.dot3.f32(i32 55, float %3139, float %3177, float %3178, float 0x3FD20DD760000000, float %3190, float %3193)  ; Dot3(ax,ay,az,bx,by,bz)
  %3195 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3108)  ; FMax(a,b)
  %3196 = call float @dx.op.dot3.f32(i32 55, float %3123, float %3126, float %3129, float %3123, float %3126, float %3129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3197 = fcmp fast oeq float %3196, 0.000000e+00
  %3198 = fcmp fast oeq float %3195, 0.000000e+00
  %3199 = or i1 %3198, %3197
  br i1 %3199, label %3229, label %3200

; <label>:3200                                    ; preds = %3173
  %3201 = fsub fast float -0.000000e+00, %3129
  %3202 = fsub fast float -0.000000e+00, %3123
  %3203 = call float @dx.op.unary.f32(i32 24, float %3196)  ; Sqrt(value)
  %3204 = fdiv fast float %3203, %3195
  %3205 = fcmp fast ogt float %3204, 0x3FFB6F8900000000
  %3206 = select i1 %3205, float 0x3FFB6F8900000000, float %3204
  %3207 = fmul fast float %3206, 0x3FE8A23460000000
  %3208 = call float @dx.op.unary.f32(i32 7, float %3207)  ; Saturate(value)
  %3209 = call float @dx.op.binary.f32(i32 35, float %3206, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3210 = fmul fast float %3208, %3195
  %3211 = fmul fast float %3209, 0x3FF279A740000000
  %3212 = fadd fast float %3211, -1.000000e+00
  %3213 = call float @dx.op.dot3.f32(i32 55, float %3201, float %3202, float %3126, float %3201, float %3202, float %3126)  ; Dot3(ax,ay,az,bx,by,bz)
  %3214 = call float @dx.op.unary.f32(i32 25, float %3213)  ; Rsqrt(value)
  %3215 = fmul fast float %3214, %3201
  %3216 = fmul fast float %3214, %3202
  %3217 = fmul fast float %3214, %3126
  %3218 = fmul fast float %3212, %3212
  %3219 = fsub fast float 1.000000e+00, %3218
  %3220 = fmul fast float %3209, 0x40005F8BE0000000
  %3221 = fsub fast float 0x400C5BF8A0000000, %3220
  %3222 = fdiv fast float %3210, %3221
  %3223 = fmul fast float %3222, 0x3FEE31C3C0000000
  %3224 = fmul fast float %3223, %3219
  %3225 = fmul fast float %3209, 0x3FDACB7480000000
  %3226 = fadd fast float %3225, 0xBFD7347680000000
  %3227 = fmul fast float %3226, %3222
  %3228 = fmul fast float %3227, %3219
  br label %3229

; <label>:3229                                    ; preds = %3200, %3173
  %3230 = phi float [ %3215, %3200 ], [ 0.000000e+00, %3173 ]
  %3231 = phi float [ %3216, %3200 ], [ 0.000000e+00, %3173 ]
  %3232 = phi float [ %3217, %3200 ], [ 0.000000e+00, %3173 ]
  %3233 = phi float [ %3224, %3200 ], [ 0.000000e+00, %3173 ]
  %3234 = phi float [ %3228, %3200 ], [ 0.000000e+00, %3173 ]
  %3235 = call float @dx.op.dot3.f32(i32 55, float %3230, float %3231, float %3232, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3236 = fmul fast float %3235, %3235
  %3237 = fmul fast float %3236, 0x3FEE471020000000
  %3238 = fadd fast float %3237, 0xBFD42F6020000000
  %3239 = fmul fast float %3195, 0x3FD20DD760000000
  %3240 = fmul fast float %3238, %3234
  %3241 = fmul fast float %3233, 0x3FDF454380000000
  %3242 = fmul fast float %3241, %3235
  %3243 = fadd fast float %3242, %3239
  %3244 = fadd fast float %3243, %3240
  %3245 = call float @dx.op.dot3.f32(i32 55, float %3230, float %3231, float %3232, float %2123, float %2124, float %2125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = fmul fast float %3245, 0x3FDF454380000000
  %3247 = fmul fast float %3245, %3245
  %3248 = fmul fast float %3247, 0x3FEE471020000000
  %3249 = fadd fast float %3248, 0xBFD42F6020000000
  %3250 = call float @dx.op.dot3.f32(i32 55, float %3195, float %3233, float %3234, float 0x3FD20DD760000000, float %3246, float %3249)  ; Dot3(ax,ay,az,bx,by,bz)
  %3251 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3109)  ; FMax(a,b)
  %3252 = call float @dx.op.dot3.f32(i32 55, float %3132, float %3135, float %3138, float %3132, float %3135, float %3138)  ; Dot3(ax,ay,az,bx,by,bz)
  %3253 = fcmp fast oeq float %3252, 0.000000e+00
  %3254 = fcmp fast oeq float %3251, 0.000000e+00
  %3255 = or i1 %3254, %3253
  br i1 %3255, label %3285, label %3256

; <label>:3256                                    ; preds = %3229
  %3257 = fsub fast float -0.000000e+00, %3138
  %3258 = fsub fast float -0.000000e+00, %3132
  %3259 = call float @dx.op.unary.f32(i32 24, float %3252)  ; Sqrt(value)
  %3260 = fdiv fast float %3259, %3251
  %3261 = fcmp fast ogt float %3260, 0x3FFB6F8900000000
  %3262 = select i1 %3261, float 0x3FFB6F8900000000, float %3260
  %3263 = fmul fast float %3262, 0x3FE8A23460000000
  %3264 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3265 = call float @dx.op.binary.f32(i32 35, float %3262, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3266 = fmul fast float %3264, %3251
  %3267 = fmul fast float %3265, 0x3FF279A740000000
  %3268 = fadd fast float %3267, -1.000000e+00
  %3269 = call float @dx.op.dot3.f32(i32 55, float %3257, float %3258, float %3135, float %3257, float %3258, float %3135)  ; Dot3(ax,ay,az,bx,by,bz)
  %3270 = call float @dx.op.unary.f32(i32 25, float %3269)  ; Rsqrt(value)
  %3271 = fmul fast float %3270, %3257
  %3272 = fmul fast float %3270, %3258
  %3273 = fmul fast float %3270, %3135
  %3274 = fmul fast float %3268, %3268
  %3275 = fsub fast float 1.000000e+00, %3274
  %3276 = fmul fast float %3265, 0x40005F8BE0000000
  %3277 = fsub fast float 0x400C5BF8A0000000, %3276
  %3278 = fdiv fast float %3266, %3277
  %3279 = fmul fast float %3278, 0x3FEE31C3C0000000
  %3280 = fmul fast float %3279, %3275
  %3281 = fmul fast float %3265, 0x3FDACB7480000000
  %3282 = fadd fast float %3281, 0xBFD7347680000000
  %3283 = fmul fast float %3282, %3278
  %3284 = fmul fast float %3283, %3275
  br label %3285

; <label>:3285                                    ; preds = %3256, %3229
  %3286 = phi float [ %3271, %3256 ], [ 0.000000e+00, %3229 ]
  %3287 = phi float [ %3272, %3256 ], [ 0.000000e+00, %3229 ]
  %3288 = phi float [ %3273, %3256 ], [ 0.000000e+00, %3229 ]
  %3289 = phi float [ %3280, %3256 ], [ 0.000000e+00, %3229 ]
  %3290 = phi float [ %3284, %3256 ], [ 0.000000e+00, %3229 ]
  %3291 = call float @dx.op.dot3.f32(i32 55, float %3286, float %3287, float %3288, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3292 = fmul fast float %3291, %3291
  %3293 = fmul fast float %3292, 0x3FEE471020000000
  %3294 = fadd fast float %3293, 0xBFD42F6020000000
  %3295 = fmul fast float %3251, 0x3FD20DD760000000
  %3296 = fmul fast float %3294, %3290
  %3297 = fmul fast float %3289, 0x3FDF454380000000
  %3298 = fmul fast float %3297, %3291
  %3299 = fadd fast float %3298, %3295
  %3300 = fadd fast float %3299, %3296
  %3301 = call float @dx.op.dot3.f32(i32 55, float %3286, float %3287, float %3288, float %2123, float %2124, float %2125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3302 = fmul fast float %3301, 0x3FDF454380000000
  %3303 = fmul fast float %3301, %3301
  %3304 = fmul fast float %3303, 0x3FEE471020000000
  %3305 = fadd fast float %3304, 0xBFD42F6020000000
  %3306 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3289, float %3290, float 0x3FD20DD760000000, float %3302, float %3305)  ; Dot3(ax,ay,az,bx,by,bz)
  %3307 = call float @dx.op.binary.f32(i32 35, float %3188, float 0.000000e+00)  ; FMax(a,b)
  %3308 = call float @dx.op.binary.f32(i32 35, float %3244, float 0.000000e+00)  ; FMax(a,b)
  %3309 = call float @dx.op.binary.f32(i32 35, float %3300, float 0.000000e+00)  ; FMax(a,b)
  %3310 = call float @dx.op.binary.f32(i32 35, float %3194, float 0.000000e+00)  ; FMax(a,b)
  %3311 = call float @dx.op.binary.f32(i32 35, float %3250, float 0.000000e+00)  ; FMax(a,b)
  %3312 = call float @dx.op.binary.f32(i32 35, float %3306, float 0.000000e+00)  ; FMax(a,b)
  %3313 = fsub fast float %2507, %3307
  %3314 = fsub fast float %2508, %3308
  %3315 = fsub fast float %2509, %3309
  %3316 = fmul fast float %3313, %2186
  %3317 = fmul fast float %3314, %2186
  %3318 = fmul fast float %3315, %2186
  %3319 = fadd fast float %3316, %3307
  %3320 = fadd fast float %3317, %3308
  %3321 = fadd fast float %3318, %3309
  %3322 = fsub fast float %2504, %3310
  %3323 = fsub fast float %2505, %3311
  %3324 = fsub fast float %2506, %3312
  %3325 = fmul fast float %3322, %2186
  %3326 = fmul fast float %3323, %2186
  %3327 = fmul fast float %3324, %2186
  %3328 = fadd fast float %3325, %3310
  %3329 = fadd fast float %3326, %3311
  %3330 = fadd fast float %3327, %3312
  %3331 = fsub fast float %2288, %3111
  %3332 = fmul fast float %3331, %2186
  %3333 = fadd fast float %3332, %3111
  br label %3334

; <label>:3334                                    ; preds = %3285, %2503
  %3335 = phi float [ %3333, %3285 ], [ %2288, %2503 ]
  %3336 = phi float [ %3328, %3285 ], [ %2504, %2503 ]
  %3337 = phi float [ %3329, %3285 ], [ %2505, %2503 ]
  %3338 = phi float [ %3330, %3285 ], [ %2506, %2503 ]
  %3339 = phi float [ %3319, %3285 ], [ %2507, %2503 ]
  %3340 = phi float [ %3320, %3285 ], [ %2508, %2503 ]
  %3341 = phi float [ %3321, %3285 ], [ %2509, %2503 ]
  %3342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3343 = extractvalue %dx.types.CBufRet.f32 %3342, 0
  %3344 = call float @dx.op.binary.f32(i32 36, float %2109, float %3343)  ; FMin(a,b)
  %3345 = fmul fast float %3344, %2127
  %3346 = fsub fast float 1.000000e+00, %3345
  %3347 = bitcast float %3346 to i32
  %3348 = sub nsw i32 2129859010, %3347
  %3349 = bitcast i32 %3348 to float
  %3350 = call float @dx.op.binary.f32(i32 36, float %2110, float %3343)  ; FMin(a,b)
  %3351 = fmul fast float %3350, %2127
  %3352 = fsub fast float 1.000000e+00, %3351
  %3353 = bitcast float %3352 to i32
  %3354 = sub nsw i32 2129859010, %3353
  %3355 = bitcast i32 %3354 to float
  %3356 = call float @dx.op.binary.f32(i32 36, float %2111, float %3343)  ; FMin(a,b)
  %3357 = fmul fast float %3356, %2127
  %3358 = fsub fast float 1.000000e+00, %3357
  %3359 = bitcast float %3358 to i32
  %3360 = sub nsw i32 2129859010, %3359
  %3361 = bitcast i32 %3360 to float
  %3362 = fmul fast float %3339, %2126
  %3363 = fmul fast float %3362, %3349
  %3364 = fmul fast float %3340, %2126
  %3365 = fmul fast float %3364, %3355
  %3366 = fmul fast float %3341, %2126
  %3367 = fmul fast float %3366, %3361
  %3368 = call float @dx.op.binary.f32(i32 36, float %2103, float %3343)  ; FMin(a,b)
  %3369 = fmul fast float %3368, %2127
  %3370 = fsub fast float 1.000000e+00, %3369
  %3371 = bitcast float %3370 to i32
  %3372 = sub nsw i32 2129859010, %3371
  %3373 = bitcast i32 %3372 to float
  %3374 = call float @dx.op.binary.f32(i32 36, float %2104, float %3343)  ; FMin(a,b)
  %3375 = fmul fast float %3374, %2127
  %3376 = fsub fast float 1.000000e+00, %3375
  %3377 = bitcast float %3376 to i32
  %3378 = sub nsw i32 2129859010, %3377
  %3379 = bitcast i32 %3378 to float
  %3380 = call float @dx.op.binary.f32(i32 36, float %2115, float %3343)  ; FMin(a,b)
  %3381 = fmul fast float %3380, %2127
  %3382 = fsub fast float 1.000000e+00, %3381
  %3383 = bitcast float %3382 to i32
  %3384 = sub nsw i32 2129859010, %3383
  %3385 = bitcast i32 %3384 to float
  %3386 = fmul fast float %3336, %2126
  %3387 = fmul fast float %3386, %3373
  %3388 = fmul fast float %3337, %2126
  %3389 = fmul fast float %3388, %3379
  %3390 = fmul fast float %3338, %2126
  %3391 = fmul fast float %3390, %3385
  %3392 = call float @dx.op.dot3.f32(i32 55, float %3363, float %3365, float %3367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3393 = select i1 %237, float 0.000000e+00, float %3363
  %3394 = select i1 %237, float %3392, float %3365
  %3395 = select i1 %237, float 0.000000e+00, float %3367
  %3396 = call float @dx.op.dot3.f32(i32 55, float %3387, float %3389, float %3391, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3397 = select i1 %237, float 0.000000e+00, float %3387
  %3398 = select i1 %237, float %3396, float %3389
  %3399 = select i1 %237, float 0.000000e+00, float %3391
  %3400 = fmul fast float %2117, 9.843750e-01
  %3401 = fmul fast float %2112, 9.843750e-01
  %3402 = fadd fast float %3400, 7.812500e-03
  %3403 = fadd fast float %3401, 7.812500e-03
  %3404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3402, float %3403, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 2
  %3406 = extractvalue %dx.types.ResRet.f32 %3404, 3
  %3407 = fmul fast float %3405, %2103
  %3408 = fmul fast float %3405, %2104
  %3409 = fmul fast float %3405, %2115
  %3410 = fadd fast float %3407, %3406
  %3411 = fadd fast float %3408, %3406
  %3412 = fadd fast float %3409, %3406
  %3413 = fcmp fast ogt float %1480, 0.000000e+00
  br i1 %3413, label %3414, label %3440

; <label>:3414                                    ; preds = %3334
  %3415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1480, float %2117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3416 = extractvalue %dx.types.ResRet.f32 %3415, 0
  %3417 = extractvalue %dx.types.ResRet.f32 %3415, 1
  %3418 = extractvalue %dx.types.ResRet.f32 %3415, 2
  %3419 = fadd fast float %3416, -5.000000e-01
  %3420 = fadd fast float %3417, -5.000000e-01
  %3421 = fadd fast float %3418, -5.000000e-01
  %3422 = fsub fast float 1.000000e+00, %2103
  %3423 = fsub fast float 1.000000e+00, %2104
  %3424 = fsub fast float 1.000000e+00, %2115
  %3425 = fmul fast float %2103, 4.000000e+00
  %3426 = fmul fast float %3425, %3422
  %3427 = fmul fast float %3426, %3419
  %3428 = fmul fast float %2104, 4.000000e+00
  %3429 = fmul fast float %3428, %3423
  %3430 = fmul fast float %3429, %3420
  %3431 = fmul fast float %2115, 4.000000e+00
  %3432 = fmul fast float %3431, %3424
  %3433 = fmul fast float %3432, %3421
  %3434 = fadd fast float %3427, %3410
  %3435 = fadd fast float %3430, %3411
  %3436 = fadd fast float %3433, %3412
  %3437 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  %3438 = call float @dx.op.unary.f32(i32 7, float %3435)  ; Saturate(value)
  %3439 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  br label %3440

; <label>:3440                                    ; preds = %3414, %3334
  %3441 = phi float [ %3437, %3414 ], [ %3410, %3334 ]
  %3442 = phi float [ %3438, %3414 ], [ %3411, %3334 ]
  %3443 = phi float [ %3439, %3414 ], [ %3412, %3334 ]
  %3444 = call float @dx.op.binary.f32(i32 35, float %3442, float %3443)  ; FMax(a,b)
  %3445 = call float @dx.op.binary.f32(i32 35, float %3441, float %3444)  ; FMax(a,b)
  %3446 = fsub fast float 1.000000e+00, %3445
  %3447 = fmul fast float %3445, %2112
  %3448 = fadd fast float %3447, %2112
  %3449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3450 = extractvalue %dx.types.CBufRet.f32 %3449, 2
  %3451 = extractvalue %dx.types.CBufRet.f32 %3449, 3
  %3452 = fmul fast float %3448, %3450
  %3453 = fadd fast float %3452, %3451
  %3454 = call float @dx.op.unary.f32(i32 7, float %3453)  ; Saturate(value)
  %3455 = fsub fast float 1.000000e+00, %2138
  %3456 = fadd fast float %3455, %3454
  %3457 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  %3458 = fcmp fast olt float %3457, 1.000000e+00
  br i1 %3458, label %3459, label %3935

; <label>:3459                                    ; preds = %3440
  %3460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3461 = extractvalue %dx.types.CBufRet.f32 %3460, 2
  %3462 = extractvalue %dx.types.CBufRet.f32 %3460, 3
  %3463 = fmul fast float %3461, %99
  %3464 = fmul fast float %3462, %100
  %3465 = fptoui float %3463 to i32
  %3466 = fptoui float %3464 to i32
  %3467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.f32 %3467, 0
  %3469 = extractvalue %dx.types.CBufRet.f32 %3467, 2
  %3470 = extractvalue %dx.types.CBufRet.f32 %3467, 3
  %3471 = fadd fast float %87, -4.000000e+00
  %3472 = call float @dx.op.binary.f32(i32 35, float %3471, float 0.000000e+00)  ; FMax(a,b)
  %3473 = fadd fast float %3472, %3468
  %3474 = fmul fast float %3473, %3469
  %3475 = call float @dx.op.unary.f32(i32 23, float %3474)  ; Log(value)
  %3476 = fmul fast float %3475, %3470
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 2
  %3479 = fmul fast float %3476, %3478
  %3480 = call float @dx.op.unary.f32(i32 7, float %3479)  ; Saturate(value)
  %3481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3482 = extractvalue %dx.types.CBufRet.i32 %3481, 1
  %3483 = add i32 %3482, -1
  %3484 = uitofp i32 %3482 to float
  %3485 = fmul fast float %3484, %3480
  %3486 = fptoui float %3485 to i32
  %3487 = call i32 @dx.op.binary.i32(i32 40, i32 %3486, i32 %3483)  ; UMin(a,b)
  %3488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3489 = extractvalue %dx.types.CBufRet.i32 %3488, 2
  %3490 = extractvalue %dx.types.CBufRet.i32 %3488, 3
  %3491 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3466, i32 %3489, i32 %3465)  ; UMad(a,b,c)
  %3492 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3487, i32 %3490, i32 %3491)  ; UMad(a,b,c)
  %3493 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %3494 = fptoui float %3493 to i32
  %3495 = lshr i32 %3494, 5
  %3496 = call i32 @dx.op.binary.i32(i32 40, i32 %3495, i32 8191)  ; UMin(a,b)
  %3497 = fsub fast float %1902, %148
  %3498 = call float @dx.op.unary.f32(i32 7, float %3497)  ; Saturate(value)
  %3499 = fcmp fast ogt float %3498, 0.000000e+00
  %3500 = fcmp fast ogt float %2125, 0.000000e+00
  %3501 = and i1 %3500, %3499
  br i1 %3501, label %3502, label %3531

; <label>:3502                                    ; preds = %3459
  %3503 = call float @dx.op.dot3.f32(i32 55, float %2123, float %2124, float %2125, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3504 = call float @dx.op.binary.f32(i32 35, float %3503, float -1.000000e+00)  ; FMax(a,b)
  %3505 = call float @dx.op.binary.f32(i32 36, float %3504, float 1.000000e+00)  ; FMin(a,b)
  %3506 = fmul fast float %3505, %3505
  %3507 = fsub fast float 1.000000e+00, %3506
  %3508 = fmul fast float %3507, 0x3FFC6E2300000000
  %3509 = fsub fast float 1.000000e+00, %3508
  %3510 = fcmp fast ogt float %3509, 0.000000e+00
  %3511 = call float @dx.op.unary.f32(i32 24, float %3509)  ; Sqrt(value)
  %3512 = fsub fast float 1.000000e+00, %3511
  %3513 = call float @dx.op.unary.f32(i32 23, float %3512)  ; Log(value)
  %3514 = fmul fast float %3513, 5.000000e+00
  %3515 = call float @dx.op.unary.f32(i32 21, float %3514)  ; Exp(value)
  %3516 = fmul fast float %3515, 0x3FEF591A60000000
  %3517 = fadd fast float %3516, 0x3F94DCB540000000
  %3518 = select i1 %3510, float %3517, float 1.000000e+00
  %3519 = fcmp fast oge float %3518, 1.000000e+00
  %3520 = fmul fast float %3503, 2.000000e+00
  %3521 = fadd fast float %3520, %2125
  %3522 = select i1 %3519, float %3521, float %2125
  %3523 = fsub fast float %3522, %2125
  %3524 = fmul fast float %3523, %3498
  %3525 = fadd fast float %3524, %2125
  %3526 = call float @dx.op.dot3.f32(i32 55, float %2123, float %2124, float %3525, float %2123, float %2124, float %3525)  ; Dot3(ax,ay,az,bx,by,bz)
  %3527 = call float @dx.op.unary.f32(i32 25, float %3526)  ; Rsqrt(value)
  %3528 = fmul fast float %3527, %2123
  %3529 = fmul fast float %3527, %2124
  %3530 = fmul fast float %3525, %3527
  br label %3531

; <label>:3531                                    ; preds = %3502, %3459
  %3532 = phi float [ %3528, %3502 ], [ %2123, %3459 ]
  %3533 = phi float [ %3529, %3502 ], [ %2124, %3459 ]
  %3534 = phi float [ %3530, %3502 ], [ %2125, %3459 ]
  %3535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3536 = extractvalue %dx.types.CBufRet.i32 %3535, 2
  %3537 = add nsw i32 %3536, -1
  %3538 = call i32 @dx.op.binary.i32(i32 37, i32 %3537, i32 0)  ; IMax(a,b)
  %3539 = shl i32 %3496, 2
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = lshr i32 %3541, 16
  %3543 = and i32 %3541, 65535
  %3544 = lshr i32 %3541, 21
  %3545 = lshr i32 %3543, 5
  %3546 = call i32 @dx.op.binary.i32(i32 40, i32 %3545, i32 %3538)  ; UMin(a,b)
  %3547 = icmp ugt i32 %3544, %3546
  br i1 %3547, label %3911, label %3548

; <label>:3548                                    ; preds = %3531
  br label %3549

; <label>:3549                                    ; preds = %3903, %3548
  %3550 = phi float [ %3904, %3903 ], [ 0.000000e+00, %3548 ]
  %3551 = phi float [ %3905, %3903 ], [ 0.000000e+00, %3548 ]
  %3552 = phi float [ %3906, %3903 ], [ 0.000000e+00, %3548 ]
  %3553 = phi float [ %3907, %3903 ], [ 1.000000e+00, %3548 ]
  %3554 = phi i32 [ %3908, %3903 ], [ %3544, %3548 ]
  %3555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.i32 %3555, 2
  %3557 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3492, i32 %3556, i32 %3554)  ; UMad(a,b,c)
  %3558 = shl i32 %3557, 2
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3558, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = shl i32 %3554, 5
  %3562 = sub nsw i32 %3542, %3561
  %3563 = call i32 @dx.op.binary.i32(i32 37, i32 %3562, i32 0)  ; IMax(a,b)
  %3564 = call i32 @dx.op.binary.i32(i32 38, i32 %3563, i32 31)  ; IMin(a,b)
  %3565 = sub nsw i32 1, %3542
  %3566 = add nsw i32 %3565, %3543
  %3567 = call i32 @dx.op.binary.i32(i32 37, i32 %3566, i32 0)  ; IMax(a,b)
  %3568 = call i32 @dx.op.binary.i32(i32 38, i32 %3567, i32 32)  ; IMin(a,b)
  %3569 = and i32 %3568, 31
  %3570 = shl i32 -1, %3569
  %3571 = xor i32 %3570, -1
  %3572 = and i32 %3564, 31
  %3573 = shl i32 %3571, %3572
  %3574 = icmp eq i32 %3568, 32
  %3575 = select i1 %3574, i32 -1, i32 %3573
  %3576 = and i32 %3575, %3560
  %3577 = icmp eq i32 %3576, 0
  br i1 %3577, label %3903, label %3578

; <label>:3578                                    ; preds = %3549
  br label %3579

; <label>:3579                                    ; preds = %3686, %3578
  %3580 = phi float [ %3687, %3686 ], [ %3550, %3578 ]
  %3581 = phi float [ %3688, %3686 ], [ %3551, %3578 ]
  %3582 = phi float [ %3689, %3686 ], [ %3552, %3578 ]
  %3583 = phi float [ %3690, %3686 ], [ %3553, %3578 ]
  %3584 = phi i32 [ %3589, %3686 ], [ %3576, %3578 ]
  %3585 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3584)  ; FirstbitLo(value)
  %3586 = add i32 %3585, %3561
  %3587 = and i32 %3585, 31
  %3588 = shl i32 1, %3587
  %3589 = xor i32 %3588, %3584
  %3590 = mul i32 %3586, 72
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3594 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3595 = add i32 %3590, 12
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = add i32 %3590, 16
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = add i32 %3590, 28
  %3604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = add i32 %3590, 32
  %3607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = extractvalue %dx.types.ResRet.f32 %3607, 3
  %3612 = add i32 %3590, 48
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = add i32 %3590, 56
  %3617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  %3619 = extractvalue %dx.types.ResRet.f32 %3617, 1
  %3620 = add i32 %3590, 64
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = mul i32 %3586, 60
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = add i32 %3624, 12
  %3630 = add i32 %3624, 48
  %3631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.f32 %3631, 0
  %3633 = extractvalue %dx.types.ResRet.f32 %3631, 1
  %3634 = extractvalue %dx.types.ResRet.f32 %3631, 2
  %3635 = and i32 %3597, 32767
  %3636 = bitcast float %3592 to i32
  %3637 = icmp eq i32 %3636, -1
  %3638 = bitcast float %3593 to i32
  %3639 = and i32 %3597, 32768
  %3640 = icmp ne i32 %3639, 0
  %3641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3642 = extractvalue %dx.types.CBufRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.CBufRet.f32 %3641, 1
  %3644 = extractvalue %dx.types.CBufRet.f32 %3641, 2
  %3645 = fsub fast float %3626, %3642
  %3646 = fsub fast float %3627, %3643
  %3647 = fsub fast float %3628, %3644
  %3648 = fsub fast float %146, %3645
  %3649 = fsub fast float %147, %3646
  %3650 = fsub fast float %148, %3647
  %3651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.f32 %3651, 0
  %3653 = extractvalue %dx.types.ResRet.f32 %3651, 1
  %3654 = extractvalue %dx.types.ResRet.f32 %3651, 2
  %3655 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3652, float %3653, float %3654)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = add i32 %3624, 24
  %3657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3656, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.ResRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.ResRet.f32 %3657, 2
  %3661 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3658, float %3659, float %3660)  ; Dot3(ax,ay,az,bx,by,bz)
  %3662 = add i32 %3624, 36
  %3663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.ResRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.ResRet.f32 %3663, 2
  %3667 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3664, float %3665, float %3666)  ; Dot3(ax,ay,az,bx,by,bz)
  %3668 = call float @dx.op.unary.f32(i32 6, float %3655)  ; FAbs(value)
  %3669 = call float @dx.op.unary.f32(i32 6, float %3661)  ; FAbs(value)
  %3670 = call float @dx.op.unary.f32(i32 6, float %3667)  ; FAbs(value)
  %3671 = fsub fast float %3632, %3668
  %3672 = fsub fast float %3633, %3669
  %3673 = fsub fast float %3634, %3670
  %3674 = fmul fast float %3671, %3600
  %3675 = fmul fast float %3672, %3601
  %3676 = fmul fast float %3673, %3602
  %3677 = call float @dx.op.binary.f32(i32 36, float %3675, float %3676)  ; FMin(a,b)
  %3678 = call float @dx.op.binary.f32(i32 36, float %3674, float %3677)  ; FMin(a,b)
  %3679 = call float @dx.op.unary.f32(i32 7, float %3678)  ; Saturate(value)
  %3680 = call float @dx.op.binary.f32(i32 36, float %3583, float %3679)  ; FMin(a,b)
  %3681 = uitofp i1 %3640 to float
  %3682 = fadd fast float %3498, 1.000000e+00
  %3683 = fsub fast float %3682, %3681
  %3684 = fmul fast float %3680, %3683
  %3685 = fcmp fast ogt float %3684, 0.000000e+00
  br i1 %3685, label %3692, label %3686

; <label>:3686                                    ; preds = %3834, %3579
  %3687 = phi float [ %3898, %3834 ], [ %3580, %3579 ]
  %3688 = phi float [ %3899, %3834 ], [ %3581, %3579 ]
  %3689 = phi float [ %3900, %3834 ], [ %3582, %3579 ]
  %3690 = phi float [ %3901, %3834 ], [ %3583, %3579 ]
  %3691 = icmp eq i32 %3584, %3588
  br i1 %3691, label %3902, label %3579

; <label>:3692                                    ; preds = %3579
  br i1 %3637, label %3750, label %3693

; <label>:3693                                    ; preds = %3692
  %3694 = fsub fast float -0.000000e+00, %3652
  %3695 = fsub fast float -0.000000e+00, %3653
  %3696 = fsub fast float -0.000000e+00, %3654
  %3697 = call float @dx.op.dot3.f32(i32 55, float %3532, float %3533, float %3534, float %3694, float %3695, float %3696)  ; Dot3(ax,ay,az,bx,by,bz)
  %3698 = fsub fast float -0.000000e+00, %3697
  %3699 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3694, float %3695, float %3696)  ; Dot3(ax,ay,az,bx,by,bz)
  %3700 = fadd fast float %3699, %3615
  %3701 = fadd fast float %3614, %3699
  %3702 = fsub fast float -0.000000e+00, %3701
  %3703 = fcmp ogt float %3697, -0.000000e+00
  %3704 = select i1 %3703, float %3702, float %3700
  %3705 = call float @dx.op.unary.f32(i32 6, float %3698)  ; FAbs(value)
  %3706 = fdiv fast float 1.000000e+00, %3705
  %3707 = fmul fast float %3704, %3706
  %3708 = call float @dx.op.binary.f32(i32 35, float %3707, float 0.000000e+00)  ; FMax(a,b)
  %3709 = fsub fast float -0.000000e+00, %3658
  %3710 = fsub fast float -0.000000e+00, %3659
  %3711 = fsub fast float -0.000000e+00, %3660
  %3712 = call float @dx.op.dot3.f32(i32 55, float %3532, float %3533, float %3534, float %3709, float %3710, float %3711)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = fsub fast float -0.000000e+00, %3712
  %3714 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3709, float %3710, float %3711)  ; Dot3(ax,ay,az,bx,by,bz)
  %3715 = fadd fast float %3714, %3619
  %3716 = fadd fast float %3618, %3714
  %3717 = fsub fast float -0.000000e+00, %3716
  %3718 = fcmp ogt float %3712, -0.000000e+00
  %3719 = select i1 %3718, float %3717, float %3715
  %3720 = call float @dx.op.unary.f32(i32 6, float %3713)  ; FAbs(value)
  %3721 = fdiv fast float 1.000000e+00, %3720
  %3722 = fmul fast float %3719, %3721
  %3723 = call float @dx.op.binary.f32(i32 35, float %3722, float 0.000000e+00)  ; FMax(a,b)
  %3724 = fsub fast float -0.000000e+00, %3664
  %3725 = fsub fast float -0.000000e+00, %3665
  %3726 = fsub fast float -0.000000e+00, %3666
  %3727 = call float @dx.op.dot3.f32(i32 55, float %3532, float %3533, float %3534, float %3724, float %3725, float %3726)  ; Dot3(ax,ay,az,bx,by,bz)
  %3728 = fsub fast float -0.000000e+00, %3727
  %3729 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3724, float %3725, float %3726)  ; Dot3(ax,ay,az,bx,by,bz)
  %3730 = fadd fast float %3729, %3623
  %3731 = fadd fast float %3622, %3729
  %3732 = fsub fast float -0.000000e+00, %3731
  %3733 = fcmp ogt float %3727, -0.000000e+00
  %3734 = select i1 %3733, float %3732, float %3730
  %3735 = call float @dx.op.unary.f32(i32 6, float %3728)  ; FAbs(value)
  %3736 = fdiv fast float 1.000000e+00, %3735
  %3737 = fmul fast float %3734, %3736
  %3738 = call float @dx.op.binary.f32(i32 35, float %3737, float 0.000000e+00)  ; FMax(a,b)
  %3739 = call float @dx.op.binary.f32(i32 36, float %3723, float %3738)  ; FMin(a,b)
  %3740 = call float @dx.op.binary.f32(i32 36, float %3708, float %3739)  ; FMin(a,b)
  %3741 = fmul fast float %3740, %3532
  %3742 = fmul fast float %3740, %3533
  %3743 = fmul fast float %3740, %3534
  %3744 = fadd fast float %3741, %146
  %3745 = fadd fast float %3742, %147
  %3746 = fadd fast float %3743, %148
  %3747 = fsub fast float %3744, %3592
  %3748 = fsub fast float %3745, %3593
  %3749 = fsub fast float %3746, %3594
  br label %3757

; <label>:3750                                    ; preds = %3692
  %3751 = fmul fast float %3532, 8.096000e+03
  %3752 = fmul fast float %3533, 8.096000e+03
  %3753 = fmul fast float %3534, 8.096000e+03
  %3754 = fadd fast float %3751, %146
  %3755 = fadd fast float %3752, %147
  %3756 = fadd fast float %3753, %148
  br label %3757

; <label>:3757                                    ; preds = %3750, %3693
  %3758 = phi float [ %3532, %3750 ], [ %3747, %3693 ]
  %3759 = phi float [ %3533, %3750 ], [ %3748, %3693 ]
  %3760 = phi float [ %3534, %3750 ], [ %3749, %3693 ]
  %3761 = phi float [ %3754, %3750 ], [ %3744, %3693 ]
  %3762 = phi float [ %3755, %3750 ], [ %3745, %3693 ]
  %3763 = phi float [ %3756, %3750 ], [ %3746, %3693 ]
  %3764 = fcmp fast olt float %3611, 1.000000e+00
  br i1 %3764, label %3765, label %3796, !dx.controlflow.hints !111

; <label>:3765                                    ; preds = %3757
  %3766 = fmul fast float %3760, %3609
  %3767 = fmul fast float %3759, %3610
  %3768 = fsub fast float %3766, %3767
  %3769 = fmul fast float %3758, %3610
  %3770 = fmul fast float %3760, %3608
  %3771 = fsub fast float %3769, %3770
  %3772 = fmul fast float %3759, %3608
  %3773 = fmul fast float %3758, %3609
  %3774 = fsub fast float %3772, %3773
  %3775 = fmul fast float %3768, 2.000000e+00
  %3776 = fmul fast float %3771, 2.000000e+00
  %3777 = fmul fast float %3774, 2.000000e+00
  %3778 = fmul fast float %3775, %3611
  %3779 = fmul fast float %3776, %3611
  %3780 = fmul fast float %3777, %3611
  %3781 = fmul fast float %3777, %3609
  %3782 = fmul fast float %3776, %3610
  %3783 = fmul fast float %3775, %3610
  %3784 = fmul fast float %3777, %3608
  %3785 = fmul fast float %3776, %3608
  %3786 = fmul fast float %3775, %3609
  %3787 = fadd fast float %3781, %3758
  %3788 = fadd fast float %3787, %3778
  %3789 = fsub fast float %3788, %3782
  %3790 = fsub fast float %3759, %3784
  %3791 = fadd fast float %3790, %3779
  %3792 = fadd fast float %3791, %3783
  %3793 = fadd fast float %3780, %3760
  %3794 = fsub fast float %3793, %3786
  %3795 = fadd fast float %3794, %3785
  br label %3796

; <label>:3796                                    ; preds = %3765, %3757
  %3797 = phi float [ %3789, %3765 ], [ %3758, %3757 ]
  %3798 = phi float [ %3792, %3765 ], [ %3759, %3757 ]
  %3799 = phi float [ %3795, %3765 ], [ %3760, %3757 ]
  br i1 %3637, label %3831, label %3800

; <label>:3800                                    ; preds = %3796
  %3801 = fmul fast float %2112, 0x400187C840000000
  %3802 = fadd fast float %3801, 0xC00EFC2120000000
  %3803 = fmul fast float %3802, %2112
  %3804 = fadd fast float %3803, 0x3FE5D16340000000
  %3805 = fmul fast float %3804, %2112
  %3806 = fadd fast float %3805, 1.000000e+00
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = fsub fast float %3761, %146
  %3809 = fsub fast float %3762, %147
  %3810 = fsub fast float %3763, %148
  %3811 = fsub fast float %3761, %3592
  %3812 = fsub fast float %3762, %3593
  %3813 = fsub fast float %3763, %3594
  %3814 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3810, float %3808, float %3809, float %3810)  ; Dot3(ax,ay,az,bx,by,bz)
  %3815 = call float @dx.op.dot3.f32(i32 55, float %3811, float %3812, float %3813, float %3811, float %3812, float %3813)  ; Dot3(ax,ay,az,bx,by,bz)
  %3816 = fadd fast float %3815, 0x3EE4F8B580000000
  %3817 = fdiv fast float %3814, %3816
  %3818 = bitcast float %3817 to i32
  %3819 = ashr i32 %3818, 1
  %3820 = add nsw i32 %3819, 532487669
  %3821 = bitcast i32 %3820 to float
  %3822 = fmul fast float %3821, %3807
  %3823 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3824 = fmul fast float %3823, 0x4009981AE0000000
  %3825 = fsub fast float 0x40111BBD80000000, %3824
  %3826 = fmul fast float %3825, %3823
  %3827 = fadd fast float %3826, 0xC0009F6020000000
  %3828 = fmul fast float %3827, %3823
  %3829 = fadd fast float %3828, 1.000000e+00
  %3830 = call float @dx.op.unary.f32(i32 7, float %3829)  ; Saturate(value)
  br label %3834

; <label>:3831                                    ; preds = %3796
  %3832 = icmp ne i32 %3638, -1
  %3833 = zext i1 %3832 to i32
  br label %3834

; <label>:3834                                    ; preds = %3831, %3800
  %3835 = phi float [ %2112, %3831 ], [ %3830, %3800 ]
  %3836 = phi i32 [ %3833, %3831 ], [ 0, %3800 ]
  %3837 = fmul float %3835, 5.000000e+00
  %3838 = fsub float 5.000000e+00, %3837
  %3839 = icmp ne i32 %3836, 0
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 3
  %3842 = fadd fast float %3841, %3838
  %3843 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3842)  ; FMax(a,b)
  %3844 = call float @dx.op.unary.f32(i32 6, float %3797)  ; FAbs(value)
  %3845 = call float @dx.op.unary.f32(i32 6, float %3798)  ; FAbs(value)
  %3846 = fadd fast float %3845, %3844
  %3847 = call float @dx.op.unary.f32(i32 6, float %3799)  ; FAbs(value)
  %3848 = fadd fast float %3846, %3847
  %3849 = fcmp fast oeq float %3848, 0.000000e+00
  %3850 = fdiv fast float 1.000000e+00, %3848
  %3851 = select i1 %3849, float 1.000000e+00, float %3850
  %3852 = fmul fast float %3851, %3797
  %3853 = fmul fast float %3851, %3798
  %3854 = call float @dx.op.unary.f32(i32 6, float %3853)  ; FAbs(value)
  %3855 = call float @dx.op.unary.f32(i32 6, float %3852)  ; FAbs(value)
  %3856 = fsub fast float 1.000000e+00, %3854
  %3857 = fsub fast float 1.000000e+00, %3855
  %3858 = fcmp fast oge float %3852, 0.000000e+00
  %3859 = fcmp fast oge float %3853, 0.000000e+00
  %3860 = select i1 %3858, float 1.000000e+00, float -1.000000e+00
  %3861 = select i1 %3859, float 1.000000e+00, float -1.000000e+00
  %3862 = fcmp fast ole float %3799, 0.000000e+00
  %3863 = fmul fast float %3860, %3856
  %3864 = fmul fast float %3861, %3857
  %3865 = select i1 %3862, float %3863, float %3852
  %3866 = select i1 %3862, float %3864, float %3853
  %3867 = fmul fast float %3865, 5.000000e-01
  %3868 = fmul fast float %3866, 5.000000e-01
  %3869 = fadd fast float %3867, 5.000000e-01
  %3870 = fadd fast float %3868, 5.000000e-01
  %3871 = uitofp i32 %3635 to float
  %3872 = call float @dx.op.binary.f32(i32 36, float %3843, float 3.000000e+00)  ; FMin(a,b)
  %3873 = fadd fast float %3872, 2.000000e+00
  %3874 = call float @dx.op.unary.f32(i32 21, float %3873)  ; Exp(value)
  %3875 = extractvalue %dx.types.CBufRet.f32 %3840, 1
  %3876 = fmul fast float %3875, %3874
  %3877 = fmul fast float %3876, 2.000000e+00
  %3878 = fsub fast float 1.000000e+00, %3877
  %3879 = fmul fast float %3869, %3878
  %3880 = fmul fast float %3870, %3878
  %3881 = fadd fast float %3879, %3876
  %3882 = fadd fast float %3880, %3876
  %3883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %3881, float %3882, float %3871, float undef, i32 0, i32 0, i32 undef, float %3843)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3884 = extractvalue %dx.types.ResRet.f32 %3883, 0
  %3885 = extractvalue %dx.types.ResRet.f32 %3883, 1
  %3886 = extractvalue %dx.types.ResRet.f32 %3883, 2
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 3
  %3889 = fmul fast float %3888, %3605
  %3890 = call float @dx.op.binary.f32(i32 36, float %3335, float %3889)  ; FMin(a,b)
  %3891 = select i1 %3839, float %3890, float %3889
  %3892 = fmul fast float %3884, %3684
  %3893 = fmul fast float %3892, %3891
  %3894 = fmul fast float %3885, %3684
  %3895 = fmul fast float %3894, %3891
  %3896 = fmul fast float %3886, %3684
  %3897 = fmul fast float %3896, %3891
  %3898 = fadd fast float %3893, %3580
  %3899 = fadd fast float %3895, %3581
  %3900 = fadd fast float %3897, %3582
  %3901 = fsub fast float %3583, %3684
  br label %3686

; <label>:3902                                    ; preds = %3686
  br label %3903

; <label>:3903                                    ; preds = %3902, %3549
  %3904 = phi float [ %3550, %3549 ], [ %3687, %3902 ]
  %3905 = phi float [ %3551, %3549 ], [ %3688, %3902 ]
  %3906 = phi float [ %3552, %3549 ], [ %3689, %3902 ]
  %3907 = phi float [ %3553, %3549 ], [ %3690, %3902 ]
  %3908 = add i32 %3554, 1
  %3909 = icmp ugt i32 %3908, %3546
  br i1 %3909, label %3910, label %3549, !llvm.loop !112

; <label>:3910                                    ; preds = %3903
  br label %3911

; <label>:3911                                    ; preds = %3910, %3531
  %3912 = phi float [ 0.000000e+00, %3531 ], [ %3904, %3910 ]
  %3913 = phi float [ 0.000000e+00, %3531 ], [ %3905, %3910 ]
  %3914 = phi float [ 0.000000e+00, %3531 ], [ %3906, %3910 ]
  %3915 = call float @dx.op.dot3.f32(i32 55, float %3912, float %3913, float %3914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3916 = select i1 %237, float 0.000000e+00, float %3912
  %3917 = select i1 %237, float %3915, float %3913
  %3918 = select i1 %237, float 0.000000e+00, float %3914
  %3919 = fcmp fast olt float %3457, 0.000000e+00
  %3920 = call float @dx.op.unary.f32(i32 6, float %3457)  ; FAbs(value)
  %3921 = fmul fast float %3920, %3397
  %3922 = fmul fast float %3920, %3398
  %3923 = fmul fast float %3920, %3399
  %3924 = select i1 %3919, float %3397, float %3921
  %3925 = select i1 %3919, float %3398, float %3922
  %3926 = select i1 %3919, float %3399, float %3923
  %3927 = fsub fast float 1.000000e+00, %3920
  %3928 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3929 = fmul fast float %3928, %3916
  %3930 = fmul fast float %3928, %3917
  %3931 = fmul fast float %3928, %3918
  %3932 = fadd fast float %3924, %3929
  %3933 = fadd fast float %3925, %3930
  %3934 = fadd fast float %3926, %3931
  br label %3935

; <label>:3935                                    ; preds = %3911, %3440
  %3936 = phi float [ %3397, %3440 ], [ %3932, %3911 ]
  %3937 = phi float [ %3398, %3440 ], [ %3933, %3911 ]
  %3938 = phi float [ %3399, %3440 ], [ %3934, %3911 ]
  %3939 = fmul fast float %3446, %3393
  %3940 = fmul fast float %3446, %3394
  %3941 = fmul fast float %3446, %3395
  %3942 = call float @dx.op.dot3.f32(i32 55, float %2109, float %2110, float %2111, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3943 = fcmp fast ogt float %3942, 0x3E7FF19E20000000
  %3944 = fdiv fast float 1.000000e+00, %3942
  %3945 = select i1 %3943, float %3944, float 0.000000e+00
  %3946 = fmul fast float %3945, %2109
  %3947 = fmul fast float %3945, %2110
  %3948 = fmul fast float %3945, %2111
  %3949 = fadd fast float %3946, -1.000000e+00
  %3950 = fadd fast float %3947, -1.000000e+00
  %3951 = fadd fast float %3948, -1.000000e+00
  %3952 = fmul fast float %3949, 5.000000e-01
  %3953 = fmul fast float %3950, 5.000000e-01
  %3954 = fmul fast float %3951, 5.000000e-01
  %3955 = fadd fast float %3952, 1.000000e+00
  %3956 = fadd fast float %3953, 1.000000e+00
  %3957 = fadd fast float %3954, 1.000000e+00
  %3958 = fmul fast float %3936, %3441
  %3959 = fmul fast float %3937, %3442
  %3960 = fmul fast float %3938, %3443
  %3961 = fsub fast float 1.000000e+00, %2117
  %3962 = bitcast float %3961 to i32
  %3963 = sitofp i32 %3962 to float
  %3964 = fmul fast float %3963, 5.000000e+00
  %3965 = fadd fast float %3964, 0xC1EFBF8940000000
  %3966 = fptosi float %3965 to i32
  %3967 = bitcast i32 %3966 to float
  %3968 = fmul fast float %3967, %1479
  %3969 = fmul fast float %3393, %3968
  %3970 = fmul fast float %3969, %3446
  %3971 = fmul fast float %3970, %3955
  %3972 = fmul fast float %3394, %3968
  %3973 = fmul fast float %3972, %3446
  %3974 = fmul fast float %3973, %3956
  %3975 = fmul fast float %3395, %3968
  %3976 = fmul fast float %3975, %3446
  %3977 = fmul fast float %3976, %3957
  %3978 = fmul fast float %3939, %1500
  %3979 = fmul fast float %3940, %1500
  %3980 = fmul fast float %3941, %1500
  %3981 = fadd fast float %3958, %1481
  %3982 = fadd fast float %3981, %3971
  %3983 = fmul fast float %3982, %1500
  %3984 = fadd fast float %3959, %1482
  %3985 = fadd fast float %3984, %3974
  %3986 = fmul fast float %3985, %1500
  %3987 = fadd fast float %3960, %1483
  %3988 = fadd fast float %3987, %3977
  %3989 = fmul fast float %3988, %1500
  %3990 = bitcast i32 %2141 to float
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 3
  %3993 = fcmp fast oeq float %3992, 0.000000e+00
  br i1 %3993, label %5535, label %3994

; <label>:3994                                    ; preds = %3935
  %3995 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3996 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3997 = extractvalue %dx.types.CBufRet.f32 %3991, 2
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.CBufRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.CBufRet.f32 %3998, 2
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4004 = extractvalue %dx.types.CBufRet.f32 %4002, 1
  %4005 = call float @dx.op.dot3.f32(i32 55, float %3999, float %4000, float %4001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4006 = select i1 %237, float %4003, float %3999
  %4007 = select i1 %237, float %4005, float %4000
  %4008 = select i1 %237, float %4004, float %4001
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 2
  %4011 = fmul fast float %4010, %76
  %4012 = fmul fast float %4010, %77
  %4013 = fmul fast float %4010, %78
  %4014 = fadd fast float %4011, %146
  %4015 = fadd fast float %4012, %147
  %4016 = fadd fast float %4013, %148
  %4017 = fcmp fast olt float %3992, 0.000000e+00
  br i1 %4017, label %5113, label %4018

; <label>:4018                                    ; preds = %3994
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.CBufRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.CBufRet.f32 %4019, 2
  %4023 = extractvalue %dx.types.CBufRet.f32 %4019, 3
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.CBufRet.f32 %4024, 2
  %4028 = extractvalue %dx.types.CBufRet.f32 %4024, 3
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.CBufRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.CBufRet.f32 %4029, 2
  %4033 = extractvalue %dx.types.CBufRet.f32 %4029, 3
  %4034 = fmul fast float %4020, %4014
  %4035 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %4021, float %4034)  ; FMad(a,b,c)
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %4016, float %4022, float %4035)  ; FMad(a,b,c)
  %4037 = fadd fast float %4036, %4023
  %4038 = fmul fast float %4025, %4014
  %4039 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %4026, float %4038)  ; FMad(a,b,c)
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %4016, float %4027, float %4039)  ; FMad(a,b,c)
  %4041 = fadd fast float %4040, %4028
  %4042 = fmul fast float %4030, %4014
  %4043 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %4031, float %4042)  ; FMad(a,b,c)
  %4044 = call float @dx.op.tertiary.f32(i32 46, float %4016, float %4032, float %4043)  ; FMad(a,b,c)
  %4045 = fadd fast float %4044, %4033
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.CBufRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.CBufRet.f32 %4046, 3
  %4050 = fmul fast float %4049, %4037
  %4051 = fmul fast float %4049, %4041
  %4052 = fadd fast float %4050, %4047
  %4053 = fadd fast float %4051, %4048
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.CBufRet.f32 %4054, 1
  %4057 = extractvalue %dx.types.CBufRet.f32 %4054, 3
  %4058 = fmul fast float %4057, %4037
  %4059 = fmul fast float %4057, %4041
  %4060 = fadd fast float %4058, %4055
  %4061 = fadd fast float %4059, %4056
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4064 = fsub fast float %4063, %4045
  %4065 = extractvalue %dx.types.CBufRet.f32 %4062, 2
  %4066 = fmul fast float %4064, %4065
  %4067 = fsub fast float 1.000000e+00, %4066
  %4068 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4054, 2
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 2
  %4072 = fadd fast float %4071, %4069
  %4073 = fcmp fast ogt float %4072, 0.000000e+00
  br i1 %4073, label %4074, label %4098

; <label>:4074                                    ; preds = %4018
  %4075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4075, 0
  %4077 = extractvalue %dx.types.CBufRet.f32 %4075, 1
  %4078 = fsub fast float %4060, %4076
  %4079 = fsub fast float %4061, %4077
  %4080 = fcmp fast olt float %4078, 0.000000e+00
  %4081 = fcmp fast olt float %4079, 0.000000e+00
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = extractvalue %dx.types.CBufRet.f32 %4082, 1
  %4085 = extractvalue %dx.types.CBufRet.f32 %4082, 2
  %4086 = extractvalue %dx.types.CBufRet.f32 %4082, 3
  %4087 = select i1 %4080, float %4083, float %4085
  %4088 = select i1 %4081, float %4084, float %4086
  %4089 = fmul fast float %4087, %4078
  %4090 = fmul fast float %4088, %4079
  %4091 = call float @dx.op.unary.f32(i32 6, float %4089)  ; FAbs(value)
  %4092 = call float @dx.op.unary.f32(i32 6, float %4090)  ; FAbs(value)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  %4094 = call float @dx.op.binary.f32(i32 35, float %4091, float %4092)  ; FMax(a,b)
  %4095 = fsub fast float %4093, %4094
  %4096 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4097 = fmul fast float %4096, %4068
  br label %4098

; <label>:4098                                    ; preds = %4074, %4018
  %4099 = phi float [ %4097, %4074 ], [ 0.000000e+00, %4018 ]
  %4100 = extractvalue %dx.types.CBufRet.f32 %4046, 2
  %4101 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4102 = fadd fast float %4101, %4100
  %4103 = fcmp fast ogt float %4102, 0.000000e+00
  %4104 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  br i1 %4103, label %4105, label %4128

; <label>:4105                                    ; preds = %4098
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4109 = fsub fast float %4052, %4107
  %4110 = fsub fast float %4053, %4108
  %4111 = fcmp fast olt float %4109, 0.000000e+00
  %4112 = fcmp fast olt float %4110, 0.000000e+00
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 0
  %4115 = extractvalue %dx.types.CBufRet.f32 %4113, 1
  %4116 = extractvalue %dx.types.CBufRet.f32 %4113, 2
  %4117 = extractvalue %dx.types.CBufRet.f32 %4113, 3
  %4118 = select i1 %4111, float %4114, float %4116
  %4119 = select i1 %4112, float %4115, float %4117
  %4120 = fmul fast float %4118, %4109
  %4121 = fmul fast float %4119, %4110
  %4122 = call float @dx.op.unary.f32(i32 6, float %4120)  ; FAbs(value)
  %4123 = call float @dx.op.unary.f32(i32 6, float %4121)  ; FAbs(value)
  %4124 = call float @dx.op.binary.f32(i32 35, float %4122, float %4123)  ; FMax(a,b)
  %4125 = fsub fast float %4104, %4124
  %4126 = call float @dx.op.unary.f32(i32 7, float %4125)  ; Saturate(value)
  %4127 = fmul fast float %4126, %4068
  br label %4128

; <label>:4128                                    ; preds = %4105, %4098
  %4129 = phi float [ %4127, %4105 ], [ 0.000000e+00, %4098 ]
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 1
  %4132 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = fsub fast float %4037, %4134
  %4137 = fsub fast float %4041, %4135
  %4138 = fcmp fast olt float %4136, 0.000000e+00
  %4139 = fcmp fast olt float %4137, 0.000000e+00
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4152 = fsub fast float %4104, %4151
  %4153 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4154 = call float @dx.op.binary.f32(i32 36, float %4153, float %4132)  ; FMin(a,b)
  %4155 = fmul fast float %4154, %4068
  %4156 = fsub fast float %4129, %4155
  %4157 = fsub fast float %4099, %4129
  %4158 = fsub fast float %4157, %4155
  %4159 = call float @dx.op.binary.f32(i32 35, float %4129, float %4099)  ; FMax(a,b)
  %4160 = call float @dx.op.binary.f32(i32 35, float %4155, float %4159)  ; FMax(a,b)
  %4161 = fcmp fast olt float %4160, 1.000000e+00
  br i1 %4161, label %4162, label %4560, !dx.controlflow.hints !114

; <label>:4162                                    ; preds = %4128
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = fcmp fast une float %4164, 0.000000e+00
  br i1 %4165, label %4166, label %4560, !dx.controlflow.hints !115

; <label>:4166                                    ; preds = %4162
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.CBufRet.f32 %4167, 2
  %4171 = extractvalue %dx.types.CBufRet.f32 %4167, 3
  %4172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.CBufRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.CBufRet.f32 %4172, 2
  %4176 = extractvalue %dx.types.CBufRet.f32 %4172, 3
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4179 = extractvalue %dx.types.CBufRet.f32 %4177, 1
  %4180 = extractvalue %dx.types.CBufRet.f32 %4177, 2
  %4181 = extractvalue %dx.types.CBufRet.f32 %4177, 3
  %4182 = fmul fast float %4168, %4014
  %4183 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %4169, float %4182)  ; FMad(a,b,c)
  %4184 = call float @dx.op.tertiary.f32(i32 46, float %4016, float %4170, float %4183)  ; FMad(a,b,c)
  %4185 = fadd fast float %4184, %4171
  %4186 = fmul fast float %4173, %4014
  %4187 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %4174, float %4186)  ; FMad(a,b,c)
  %4188 = call float @dx.op.tertiary.f32(i32 46, float %4016, float %4175, float %4187)  ; FMad(a,b,c)
  %4189 = fadd fast float %4188, %4176
  %4190 = fmul fast float %4178, %4014
  %4191 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %4179, float %4190)  ; FMad(a,b,c)
  %4192 = call float @dx.op.tertiary.f32(i32 46, float %4016, float %4180, float %4191)  ; FMad(a,b,c)
  %4193 = fadd fast float %4192, %4181
  %4194 = fcmp fast oge float %4185, 1.000000e+00
  %4195 = fcmp fast oge float %4189, 1.000000e+00
  %4196 = or i1 %4194, %4195
  %4197 = fcmp fast olt float %4185, 0.000000e+00
  %4198 = fcmp fast olt float %4189, 0.000000e+00
  %4199 = or i1 %4197, %4198
  %4200 = or i1 %4196, %4199
  br i1 %4200, label %4560, label %4201, !dx.controlflow.hints !116

; <label>:4201                                    ; preds = %4166
  %4202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.CBufRet.f32 %4202, 1
  %4205 = extractvalue %dx.types.CBufRet.f32 %4202, 2
  %4206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.i32 %4206, 2
  %4208 = uitofp i32 %4207 to float
  %4209 = extractvalue %dx.types.CBufRet.i32 %4206, 3
  %4210 = uitofp i32 %4209 to float
  %4211 = extractvalue %dx.types.CBufRet.f32 %4202, 3
  %4212 = fmul fast float %4211, 2.000000e+00
  %4213 = fsub fast float %4185, %4203
  %4214 = fsub fast float %4189, %4204
  %4215 = fmul fast float %4212, %4213
  %4216 = fmul fast float %4212, %4214
  %4217 = fdiv fast float 1.000000e+00, %3997
  %4218 = fmul fast float %4216, %4217
  %4219 = call float @dx.op.unary.f32(i32 6, float %4218)  ; FAbs(value)
  %4220 = fmul fast float %4205, %4016
  %4221 = fmul fast float %4220, %4212
  %4222 = call float @dx.op.unary.f32(i32 6, float %4221)  ; FAbs(value)
  %4223 = call float @dx.op.unary.f32(i32 6, float %4215)  ; FAbs(value)
  %4224 = call float @dx.op.binary.f32(i32 35, float %4222, float %4219)  ; FMax(a,b)
  %4225 = call float @dx.op.binary.f32(i32 35, float %4223, float %4224)  ; FMax(a,b)
  %4226 = fmul fast float %4225, 2.000000e+00
  %4227 = call float @dx.op.unary.f32(i32 23, float %4226)  ; Log(value)
  %4228 = call float @dx.op.binary.f32(i32 35, float %4227, float %4208)  ; FMax(a,b)
  %4229 = call float @dx.op.unary.f32(i32 22, float %4228)  ; Frc(value)
  %4230 = fadd fast float %4229, 0xBFEA666660000000
  %4231 = fmul fast float %4230, 8.000000e+00
  %4232 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4233 = call float @dx.op.unary.f32(i32 27, float %4228)  ; Round_ni(value)
  %4234 = fadd fast float %4233, %4232
  %4235 = call float @dx.op.binary.f32(i32 36, float %4234, float %4210)  ; FMin(a,b)
  %4236 = call float @dx.op.unary.f32(i32 27, float %4235)  ; Round_ni(value)
  %4237 = fsub fast float -0.000000e+00, %4236
  %4238 = call float @dx.op.unary.f32(i32 21, float %4237)  ; Exp(value)
  %4239 = fmul fast float %4238, %4212
  %4240 = fmul fast float %4239, %4185
  %4241 = fmul fast float %4239, %4189
  %4242 = fmul fast float %4240, 2.500000e-01
  %4243 = fmul fast float %4241, 2.500000e-01
  %4244 = fadd fast float %4242, 5.000000e-01
  %4245 = fadd fast float %4243, 5.000000e-01
  %4246 = fsub fast float %4210, %4208
  %4247 = fptoui float %4246 to i32
  %4248 = add i32 %4247, 320
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4248)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.CBufRet.f32 %4249, 1
  %4252 = fcmp fast une float %4235, %4210
  %4253 = fsub fast float %4185, %4250
  %4254 = fsub fast float %4189, %4251
  %4255 = call float @dx.op.unary.f32(i32 6, float %4253)  ; FAbs(value)
  %4256 = call float @dx.op.unary.f32(i32 6, float %4254)  ; FAbs(value)
  %4257 = fmul fast float %4255, %4239
  %4258 = fmul fast float %4256, %4239
  %4259 = fcmp fast olt float %4257, 1.000000e+00
  %4260 = fcmp fast olt float %4258, 1.000000e+00
  %4261 = and i1 %4259, %4260
  %4262 = or i1 %4252, %4261
  br i1 %4262, label %4263, label %4560, !dx.controlflow.hints !117

; <label>:4263                                    ; preds = %4201
  %4264 = fmul fast float %4241, 5.000000e-01
  %4265 = fmul fast float %4240, 5.000000e-01
  %4266 = fadd fast float %4264, 5.000000e-01
  %4267 = fadd fast float %4265, 5.000000e-01
  %4268 = sitofp i32 %4207 to float
  %4269 = fsub fast float %4235, %4268
  %4270 = call float @dx.op.unary.f32(i32 27, float %4269)  ; Round_ni(value)
  %4271 = call float @dx.op.unary.f32(i32 22, float %4235)  ; Frc(value)
  %4272 = call float @dx.op.unary.f32(i32 22, float %4267)  ; Frc(value)
  %4273 = call float @dx.op.unary.f32(i32 22, float %4266)  ; Frc(value)
  %4274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4272, float %4273, float %4270, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.ResRet.f32 %4274, 1
  %4277 = extractvalue %dx.types.ResRet.f32 %4274, 2
  %4278 = extractvalue %dx.types.ResRet.f32 %4274, 3
  %4279 = fcmp fast ogt float %4271, 0.000000e+00
  br i1 %4279, label %4280, label %4301, !dx.controlflow.hints !118

; <label>:4280                                    ; preds = %4263
  %4281 = fadd fast float %4270, 1.000000e+00
  %4282 = call float @dx.op.unary.f32(i32 22, float %4244)  ; Frc(value)
  %4283 = call float @dx.op.unary.f32(i32 22, float %4245)  ; Frc(value)
  %4284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4282, float %4283, float %4281, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.ResRet.f32 %4284, 1
  %4287 = extractvalue %dx.types.ResRet.f32 %4284, 2
  %4288 = extractvalue %dx.types.ResRet.f32 %4284, 3
  %4289 = fsub fast float %4285, %4275
  %4290 = fsub fast float %4286, %4276
  %4291 = fsub fast float %4287, %4277
  %4292 = fsub fast float %4288, %4278
  %4293 = fmul fast float %4289, %4271
  %4294 = fmul fast float %4290, %4271
  %4295 = fmul fast float %4291, %4271
  %4296 = fmul fast float %4292, %4271
  %4297 = fadd fast float %4293, %4275
  %4298 = fadd fast float %4294, %4276
  %4299 = fadd fast float %4295, %4277
  %4300 = fadd fast float %4296, %4278
  br label %4301

; <label>:4301                                    ; preds = %4280, %4263
  %4302 = phi float [ %4297, %4280 ], [ %4275, %4263 ]
  %4303 = phi float [ %4298, %4280 ], [ %4276, %4263 ]
  %4304 = phi float [ %4299, %4280 ], [ %4277, %4263 ]
  %4305 = phi float [ %4300, %4280 ], [ %4278, %4263 ]
  %4306 = fadd fast float %4302, -5.000000e-01
  %4307 = fadd fast float %4304, -5.000000e-01
  %4308 = fmul fast float %4306, 0xBFD5555560000000
  %4309 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4307, float %4308)  ; FMad(a,b,c)
  %4310 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4303, float 0.000000e+00)  ; FMad(a,b,c)
  %4311 = fadd fast float %4310, %4305
  %4312 = fmul fast float %4306, -7.500000e-01
  %4313 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4307, float %4312)  ; FMad(a,b,c)
  %4314 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4303, float 0.000000e+00)  ; FMad(a,b,c)
  %4315 = fadd fast float %4314, %4305
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 0
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 0
  %4320 = extractvalue %dx.types.CBufRet.f32 %4318, 1
  %4321 = extractvalue %dx.types.CBufRet.f32 %4318, 2
  %4322 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4323 = fsub fast float %4319, %4309
  %4324 = fsub fast float %4320, %4311
  %4325 = fsub fast float %4321, %4313
  %4326 = fsub fast float %4322, %4315
  %4327 = fmul fast float %4323, %4317
  %4328 = fmul fast float %4324, %4317
  %4329 = fmul fast float %4325, %4317
  %4330 = fmul fast float %4326, %4317
  %4331 = fadd fast float %4327, %4309
  %4332 = fadd fast float %4328, %4311
  %4333 = fadd fast float %4329, %4313
  %4334 = fadd fast float %4330, %4315
  %4335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.i32 %4335, 0
  %4337 = and i32 %4336, 536870911
  %4338 = uitofp i32 %4337 to float
  %4339 = fmul fast float %4338, %4185
  %4340 = fmul fast float %4338, %4189
  %4341 = fptoui float %4339 to i32
  %4342 = fptoui float %4340 to i32
  %4343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.i32 %4343, 0
  %4345 = and i32 %4344, 31
  %4346 = lshr i32 %4341, %4345
  %4347 = lshr i32 %4342, %4345
  %4348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4349 = extractvalue %dx.types.ResRet.i32 %4348, 0
  %4350 = and i32 %4349, 31
  %4351 = shl i32 1, %4350
  %4352 = call i32 @dx.op.binary.i32(i32 40, i32 %4351, i32 4)  ; UMin(a,b)
  %4353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.i32 %4353, 0
  %4355 = extractvalue %dx.types.ResRet.i32 %4353, 1
  %4356 = icmp eq i32 %4352, 0
  br i1 %4356, label %4398, label %4357

; <label>:4357                                    ; preds = %4301
  br label %4358

; <label>:4358                                    ; preds = %4386, %4357
  %4359 = phi i32 [ %4389, %4386 ], [ 0, %4357 ]
  %4360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.i32 %4360, 0
  %4362 = lshr i32 %4361, 16
  %4363 = and i32 %4362, 31
  %4364 = shl i32 %4347, %4363
  %4365 = add i32 %4364, %4346
  %4366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.i32 %4366, 0
  %4368 = and i32 %4367, 31
  %4369 = shl i32 %4365, %4368
  %4370 = add i32 %4369, %4359
  %4371 = shl i32 %4370, 2
  %4372 = add i32 %4371, 32
  %4373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4374 = extractvalue %dx.types.ResRet.i32 %4373, 0
  %4375 = icmp slt i32 %4374, 0
  %4376 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4359
  %4377 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4359
  %4378 = bitcast float* %4376 to i32*
  %4379 = bitcast float* %4377 to i32*
  br i1 %4375, label %4380, label %4386

; <label>:4380                                    ; preds = %4358
  %4381 = and i32 %4374, 1073741823
  %4382 = add nuw nsw i32 %4381, 20
  %4383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4382, i32 undef)  ; BufferLoad(srv,index,wot)
  %4384 = extractvalue %dx.types.ResRet.i32 %4383, 0
  %4385 = extractvalue %dx.types.ResRet.i32 %4383, 1
  br label %4386

; <label>:4386                                    ; preds = %4380, %4358
  %4387 = phi i32 [ %4384, %4380 ], [ %4354, %4358 ]
  %4388 = phi i32 [ %4385, %4380 ], [ %4355, %4358 ]
  store i32 %4387, i32* %4378, align 4
  store i32 %4388, i32* %4379, align 4
  %4389 = add nuw i32 %4359, 1
  %4390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.i32 %4390, 2
  %4392 = icmp eq i32 %4391, 0
  %4393 = icmp ugt i32 %4374, -1073741825
  %4394 = and i1 %4393, %4392
  %4395 = icmp ult i32 %4389, %4352
  %4396 = and i1 %4394, %4395
  br i1 %4396, label %4358, label %4397

; <label>:4397                                    ; preds = %4386
  br label %4398

; <label>:4398                                    ; preds = %4397, %4301
  %4399 = phi i32 [ 0, %4301 ], [ %4389, %4397 ]
  %4400 = extractvalue %dx.types.CBufRet.f32 %4163, 2
  %4401 = fptoui float %4400 to i32
  %4402 = icmp eq i32 %4401, 0
  br i1 %4402, label %4454, label %4403

; <label>:4403                                    ; preds = %4398
  br label %4404

; <label>:4404                                    ; preds = %4449, %4403
  %4405 = phi i32 [ %4450, %4449 ], [ %4399, %4403 ]
  %4406 = phi i32 [ %4451, %4449 ], [ 0, %4403 ]
  %4407 = lshr i32 %4406, 2
  %4408 = and i32 %4406, 3
  %4409 = add nuw nsw i32 %4407, 83
  %4410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4409)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.i32 %4410, 0
  %4412 = extractvalue %dx.types.CBufRet.i32 %4410, 1
  %4413 = extractvalue %dx.types.CBufRet.i32 %4410, 2
  %4414 = extractvalue %dx.types.CBufRet.i32 %4410, 3
  %4415 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4411, i32* %4415, align 4
  %4416 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4412, i32* %4416, align 4
  %4417 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4413, i32* %4417, align 4
  %4418 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4414, i32* %4418, align 4
  %4419 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4408
  %4420 = load i32, i32* %4419, align 4, !tbaa !119, !noalias !123
  %4421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.i32 %4421, 0
  %4423 = lshr i32 %4422, 16
  %4424 = and i32 %4423, 31
  %4425 = shl i32 %4347, %4424
  %4426 = add i32 %4425, %4346
  %4427 = shl i32 %4426, 2
  %4428 = add i32 %4427, %4420
  %4429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4428, i32 undef)  ; BufferLoad(srv,index,wot)
  %4430 = extractvalue %dx.types.ResRet.i32 %4429, 0
  %4431 = icmp eq i32 %4430, 0
  br i1 %4431, label %4449, label %4432

; <label>:4432                                    ; preds = %4404
  %4433 = icmp slt i32 %4430, 0
  %4434 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4405
  %4435 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4405
  %4436 = bitcast float* %4434 to i32*
  %4437 = bitcast float* %4435 to i32*
  br i1 %4433, label %4438, label %4445

; <label>:4438                                    ; preds = %4432
  %4439 = and i32 %4430, 1073741823
  %4440 = add i32 %4420, 20
  %4441 = add i32 %4440, %4439
  %4442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4441, i32 undef)  ; BufferLoad(srv,index,wot)
  %4443 = extractvalue %dx.types.ResRet.i32 %4442, 0
  %4444 = extractvalue %dx.types.ResRet.i32 %4442, 1
  br label %4445

; <label>:4445                                    ; preds = %4438, %4432
  %4446 = phi i32 [ %4443, %4438 ], [ %4354, %4432 ]
  %4447 = phi i32 [ %4444, %4438 ], [ %4355, %4432 ]
  store i32 %4446, i32* %4436, align 4
  store i32 %4447, i32* %4437, align 4
  %4448 = add i32 %4405, 1
  br label %4449

; <label>:4449                                    ; preds = %4445, %4404
  %4450 = phi i32 [ %4405, %4404 ], [ %4448, %4445 ]
  %4451 = add nuw i32 %4406, 1
  %4452 = icmp eq i32 %4451, %4401
  br i1 %4452, label %4453, label %4404

; <label>:4453                                    ; preds = %4449
  br label %4454

; <label>:4454                                    ; preds = %4453, %4398
  %4455 = phi i32 [ %4399, %4398 ], [ %4450, %4453 ]
  %4456 = icmp eq i32 %4455, 1
  %4457 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %4458 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %4456, label %4459, label %4462

; <label>:4459                                    ; preds = %4454
  %4460 = load float, float* %4457, align 4
  %4461 = load float, float* %4458, align 4
  br label %4489

; <label>:4462                                    ; preds = %4454
  %4463 = load float, float* %4457, align 4
  %4464 = load float, float* %4458, align 4
  %4465 = fdiv fast float 1.000000e+00, %4464
  %4466 = fsub fast float %4463, %4465
  %4467 = icmp ugt i32 %4455, 1
  br i1 %4467, label %4468, label %4484

; <label>:4468                                    ; preds = %4462
  br label %4469

; <label>:4469                                    ; preds = %4469, %4468
  %4470 = phi float [ %4479, %4469 ], [ %4466, %4468 ]
  %4471 = phi float [ %4480, %4469 ], [ %4463, %4468 ]
  %4472 = phi i32 [ %4481, %4469 ], [ 1, %4468 ]
  %4473 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4472
  %4474 = load float, float* %4473, align 4
  %4475 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4472
  %4476 = load float, float* %4475, align 4
  %4477 = fdiv fast float 1.000000e+00, %4476
  %4478 = fsub fast float %4474, %4477
  %4479 = call float @dx.op.binary.f32(i32 36, float %4470, float %4478)  ; FMin(a,b)
  %4480 = call float @dx.op.binary.f32(i32 35, float %4471, float %4474)  ; FMax(a,b)
  %4481 = add nuw i32 %4472, 1
  %4482 = icmp eq i32 %4481, %4455
  br i1 %4482, label %4483, label %4469

; <label>:4483                                    ; preds = %4469
  br label %4484

; <label>:4484                                    ; preds = %4483, %4462
  %4485 = phi float [ %4466, %4462 ], [ %4479, %4483 ]
  %4486 = phi float [ %4463, %4462 ], [ %4480, %4483 ]
  %4487 = fsub fast float %4486, %4485
  %4488 = fdiv fast float 1.000000e+00, %4487
  br label %4489

; <label>:4489                                    ; preds = %4484, %4459
  %4490 = phi float [ %4460, %4459 ], [ %4486, %4484 ]
  %4491 = phi float [ %4461, %4459 ], [ %4488, %4484 ]
  %4492 = fadd fast float %4193, %4490
  %4493 = fmul fast float %4492, %4491
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = fmul fast float %4494, 2.000000e+00
  %4496 = fsub fast float 1.000000e+00, %4495
  %4497 = fmul fast float %4331, %4331
  %4498 = fsub fast float %4332, %4497
  %4499 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4498)  ; FMax(a,b)
  %4500 = fdiv fast float 1.000000e+00, %4499
  %4501 = fmul fast float %4332, %4331
  %4502 = fsub fast float %4333, %4501
  %4503 = fsub fast float %4496, %4331
  %4504 = fmul fast float %4496, %4496
  %4505 = fsub fast float %4504, %4332
  %4506 = fmul fast float %4500, %4502
  %4507 = fmul fast float %4506, %4503
  %4508 = fsub fast float %4505, %4507
  %4509 = fmul fast float %4332, %4332
  %4510 = fsub fast float %4334, %4509
  %4511 = fmul fast float %4502, %4502
  %4512 = fmul fast float %4511, %4500
  %4513 = fsub fast float %4510, %4512
  %4514 = fdiv fast float %4508, %4513
  %4515 = fmul fast float %4514, %4502
  %4516 = fsub fast float %4503, %4515
  %4517 = fmul fast float %4516, %4500
  %4518 = fmul fast float %4517, %4331
  %4519 = fsub fast float 1.000000e+00, %4518
  %4520 = fmul fast float %4514, %4332
  %4521 = fsub fast float %4519, %4520
  %4522 = fmul fast float %4517, %4517
  %4523 = fmul fast float %4514, 4.000000e+00
  %4524 = fmul fast float %4523, %4521
  %4525 = fsub fast float %4522, %4524
  %4526 = call float @dx.op.unary.f32(i32 24, float %4525)  ; Sqrt(value)
  %4527 = fcmp fast oge float %4517, 0.000000e+00
  %4528 = fsub fast float -0.000000e+00, %4526
  %4529 = select i1 %4527, float %4528, float %4526
  %4530 = fsub fast float %4529, %4517
  %4531 = fdiv fast float %4530, %4514
  %4532 = fdiv fast float %4521, %4530
  %4533 = fmul fast float %4531, 5.000000e-01
  %4534 = fmul fast float %4532, 2.000000e+00
  %4535 = select i1 %4527, float %4533, float %4534
  %4536 = select i1 %4527, float %4534, float %4533
  %4537 = call float @dx.op.binary.f32(i32 35, float %4535, float %4536)  ; FMax(a,b)
  %4538 = call float @dx.op.binary.f32(i32 36, float %4535, float %4536)  ; FMin(a,b)
  %4539 = fcmp fast ogt float %4496, %4537
  %4540 = fsub fast float %4496, %4538
  %4541 = fsub fast float %4496, %4537
  %4542 = fsub fast float %4537, %4538
  %4543 = select i1 %4539, float %4541, float %4542
  %4544 = fmul float %4540, %4543
  %4545 = select i1 %4539, float %4538, float %4496
  %4546 = fcmp fast ogt float %4496, %4538
  %4547 = fmul fast float %4545, %4537
  %4548 = fadd fast float %4545, %4537
  %4549 = fmul fast float %4548, %4331
  %4550 = fadd fast float %4547, %4332
  %4551 = fsub fast float %4550, %4549
  %4552 = fdiv fast float %4551, %4544
  %4553 = select i1 %4546, float %4552, float 0.000000e+00
  %4554 = fsub fast float 1.000000e+00, %4553
  %4555 = select i1 %4539, float %4554, float %4553
  %4556 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4558 = fmul fast float %4557, %4556
  %4559 = fsub fast float 1.000000e+00, %4558
  br label %4560

; <label>:4560                                    ; preds = %4489, %4201, %4166, %4162, %4128
  %4561 = phi float [ 1.000000e+00, %4128 ], [ %4559, %4489 ], [ 1.000000e+00, %4166 ], [ 1.000000e+00, %4201 ], [ 1.000000e+00, %4162 ]
  %4562 = fcmp fast ogt float %4158, 0.000000e+00
  br i1 %4562, label %4563, label %4725, !dx.controlflow.hints !132

; <label>:4563                                    ; preds = %4560
  %4564 = fadd fast float %4071, %4045
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4567 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4568, 2
  %4570 = call float @dx.op.binary.f32(i32 35, float %4564, float 0.000000e+00)  ; FMax(a,b)
  %4571 = fadd fast float %4570, 0x3F10000000000000
  %4572 = fcmp fast oeq float %4569, 0.000000e+00
  br i1 %4572, label %4573, label %4640

; <label>:4573                                    ; preds = %4563
  %4574 = extractvalue %dx.types.CBufRet.f32 %4565, 1
  %4575 = extractvalue %dx.types.CBufRet.f32 %4565, 0
  %4576 = fmul fast float %4575, %4060
  %4577 = fmul fast float %4574, %4061
  %4578 = fadd fast float %4576, 5.000000e-01
  %4579 = call float @dx.op.unary.f32(i32 27, float %4578)  ; Round_ni(value)
  %4580 = fadd fast float %4577, 5.000000e-01
  %4581 = call float @dx.op.unary.f32(i32 27, float %4580)  ; Round_ni(value)
  %4582 = fsub fast float %4578, %4579
  %4583 = fsub fast float %4580, %4581
  %4584 = fadd fast float %4579, -5.000000e-01
  %4585 = fadd fast float %4581, -5.000000e-01
  %4586 = fmul fast float %4582, 2.000000e+00
  %4587 = fsub fast float 3.000000e+00, %4586
  %4588 = fadd fast float %4586, 1.000000e+00
  %4589 = fsub fast float 2.000000e+00, %4582
  %4590 = bitcast float %4587 to i32
  %4591 = sub nsw i32 2129859010, %4590
  %4592 = bitcast i32 %4591 to float
  %4593 = fmul fast float %4592, %4589
  %4594 = fadd fast float %4593, -1.000000e+00
  %4595 = bitcast float %4588 to i32
  %4596 = sub nsw i32 2129859010, %4595
  %4597 = bitcast i32 %4596 to float
  %4598 = fmul fast float %4597, %4582
  %4599 = fadd fast float %4598, 1.000000e+00
  %4600 = fmul fast float %4583, 2.000000e+00
  %4601 = fsub fast float 3.000000e+00, %4600
  %4602 = fadd fast float %4600, 1.000000e+00
  %4603 = fsub fast float 2.000000e+00, %4583
  %4604 = bitcast float %4601 to i32
  %4605 = sub nsw i32 2129859010, %4604
  %4606 = bitcast i32 %4605 to float
  %4607 = fmul fast float %4606, %4603
  %4608 = fadd fast float %4607, -1.000000e+00
  %4609 = bitcast float %4602 to i32
  %4610 = sub nsw i32 2129859010, %4609
  %4611 = bitcast i32 %4610 to float
  %4612 = fmul fast float %4611, %4583
  %4613 = fadd fast float %4612, 1.000000e+00
  %4614 = fadd fast float %4594, %4584
  %4615 = fmul fast float %4614, %4566
  %4616 = fadd fast float %4608, %4585
  %4617 = fmul fast float %4616, %4567
  %4618 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4615, float %4617, float undef, float undef, i32 0, i32 0, i32 undef, float %4571)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4619 = extractvalue %dx.types.ResRet.f32 %4618, 0
  %4620 = fmul fast float %4619, %4587
  %4621 = fadd fast float %4599, %4584
  %4622 = fmul fast float %4621, %4566
  %4623 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4622, float %4617, float undef, float undef, i32 0, i32 0, i32 undef, float %4571)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = fmul fast float %4624, %4588
  %4626 = fadd fast float %4613, %4585
  %4627 = fmul fast float %4626, %4567
  %4628 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4615, float %4627, float undef, float undef, i32 0, i32 0, i32 undef, float %4571)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4629 = extractvalue %dx.types.ResRet.f32 %4628, 0
  %4630 = fmul fast float %4629, %4587
  %4631 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4622, float %4627, float undef, float undef, i32 0, i32 0, i32 undef, float %4571)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4632 = extractvalue %dx.types.ResRet.f32 %4631, 0
  %4633 = fmul fast float %4632, %4588
  %4634 = fadd fast float %4633, %4630
  %4635 = fmul fast float %4634, %4602
  %4636 = fadd fast float %4625, %4620
  %4637 = fmul fast float %4636, %4601
  %4638 = fadd fast float %4637, %4635
  %4639 = fmul fast float %4638, 6.250000e-02
  br label %4725

; <label>:4640                                    ; preds = %4563
  %4641 = fmul fast float %248, 0x401921FB60000000
  %4642 = call float @dx.op.unary.f32(i32 13, float %4641)  ; Sin(value)
  %4643 = call float @dx.op.unary.f32(i32 12, float %4641)  ; Cos(value)
  %4644 = fsub fast float -0.000000e+00, %4642
  br label %4645

; <label>:4645                                    ; preds = %4694, %4640
  %4646 = phi float [ 0.000000e+00, %4640 ], [ %4689, %4694 ]
  %4647 = phi float [ 0.000000e+00, %4640 ], [ %4691, %4694 ]
  %4648 = phi i32 [ 0, %4640 ], [ %4695, %4694 ]
  %4649 = mul i32 %4648, 2
  %4650 = add i32 0, %4649
  %4651 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4650
  %4652 = load float, float* %4651, align 4
  %4653 = mul i32 %4648, 2
  %4654 = add i32 1, %4653
  %4655 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4654
  %4656 = load float, float* %4655, align 4
  %4657 = fmul fast float %4652, %4643
  %4658 = call float @dx.op.tertiary.f32(i32 46, float %4656, float %4644, float %4657)  ; FMad(a,b,c)
  %4659 = fmul fast float %4652, %4642
  %4660 = call float @dx.op.tertiary.f32(i32 46, float %4656, float %4643, float %4659)  ; FMad(a,b,c)
  %4661 = fmul fast float %4658, %4569
  %4662 = fmul fast float %4660, %4569
  %4663 = fadd fast float %4661, %4060
  %4664 = fadd fast float %4662, %4061
  %4665 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4663, float %4664, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = extractvalue %dx.types.ResRet.f32 %4665, 1
  %4668 = extractvalue %dx.types.ResRet.f32 %4665, 2
  %4669 = extractvalue %dx.types.ResRet.f32 %4665, 3
  %4670 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %4666, float* %4670, align 4
  %4671 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %4667, float* %4671, align 4
  %4672 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %4668, float* %4672, align 4
  %4673 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %4669, float* %4673, align 4
  %4674 = fsub fast float %4666, %4571
  %4675 = fcmp fast olt float %4674, 0.000000e+00
  %4676 = select i1 %4675, float 0.000000e+00, float 1.000000e+00
  %4677 = fadd fast float %4676, %4646
  %4678 = fmul fast float %4676, %4674
  %4679 = fadd fast float %4678, %4647
  br label %4680

; <label>:4680                                    ; preds = %4680, %4645
  %4681 = phi i32 [ 1, %4645 ], [ %4692, %4680 ]
  %4682 = phi float [ %4679, %4645 ], [ %4691, %4680 ]
  %4683 = phi float [ %4677, %4645 ], [ %4689, %4680 ]
  %4684 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %4681
  %4685 = load float, float* %4684, align 4, !tbaa !133, !noalias !123
  %4686 = fsub fast float %4685, %4571
  %4687 = fcmp fast olt float %4686, 0.000000e+00
  %4688 = select i1 %4687, float 0.000000e+00, float 1.000000e+00
  %4689 = fadd fast float %4688, %4683
  %4690 = fmul fast float %4688, %4686
  %4691 = fadd fast float %4690, %4682
  %4692 = add nuw nsw i32 %4681, 1
  %4693 = icmp eq i32 %4692, 4
  br i1 %4693, label %4694, label %4680, !llvm.loop !135

; <label>:4694                                    ; preds = %4680
  %4695 = add nuw nsw i32 %4648, 1
  %4696 = icmp eq i32 %4695, 8
  br i1 %4696, label %4697, label %4645, !llvm.loop !136

; <label>:4697                                    ; preds = %4694
  %4698 = fdiv fast float 1.000000e+00, %4689
  %4699 = fmul fast float %4698, %4691
  %4700 = fdiv fast float 1.000000e+00, %4571
  %4701 = fmul fast float %4699, %4700
  %4702 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4703 = call float @dx.op.binary.f32(i32 35, float %4702, float 0.000000e+00)  ; FMax(a,b)
  %4704 = fmul fast float %4689, 3.125000e-02
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = fmul fast float %4705, 2.000000e+00
  %4707 = fadd fast float %4706, -1.000000e+00
  %4708 = fcmp fast ogt float %4707, 0.000000e+00
  %4709 = fcmp fast olt float %4707, 0.000000e+00
  %4710 = zext i1 %4708 to i32
  %4711 = zext i1 %4709 to i32
  %4712 = sub nsw i32 %4710, %4711
  %4713 = sitofp i32 %4712 to float
  %4714 = fmul fast float %4713, %4707
  %4715 = fsub fast float 1.000000e+00, %4714
  %4716 = fmul fast float %4715, %4715
  %4717 = fmul fast float %4716, %4715
  %4718 = fsub fast float %4715, %4717
  %4719 = fmul fast float %4718, %4703
  %4720 = fsub fast float 1.000000e+00, %4717
  %4721 = fsub fast float %4720, %4719
  %4722 = fmul fast float %4713, 5.000000e-01
  %4723 = fmul fast float %4722, %4721
  %4724 = fsub fast float 5.000000e-01, %4723
  br label %4725

; <label>:4725                                    ; preds = %4697, %4573, %4560
  %4726 = phi float [ 1.000000e+00, %4560 ], [ %4639, %4573 ], [ %4724, %4697 ]
  %4727 = fcmp fast ogt float %4156, 0.000000e+00
  br i1 %4727, label %4728, label %4892, !dx.controlflow.hints !137

; <label>:4728                                    ; preds = %4725
  %4729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4729, 1
  %4731 = fadd fast float %4730, %4045
  %4732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.f32 %4732, 2
  %4734 = extractvalue %dx.types.CBufRet.f32 %4732, 3
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 1
  %4737 = call float @dx.op.binary.f32(i32 35, float %4731, float 0.000000e+00)  ; FMax(a,b)
  %4738 = fadd fast float %4737, 0x3F10000000000000
  %4739 = fcmp fast oeq float %4736, 0.000000e+00
  br i1 %4739, label %4740, label %4807

; <label>:4740                                    ; preds = %4728
  %4741 = extractvalue %dx.types.CBufRet.f32 %4732, 1
  %4742 = extractvalue %dx.types.CBufRet.f32 %4732, 0
  %4743 = fmul fast float %4742, %4052
  %4744 = fmul fast float %4741, %4053
  %4745 = fadd fast float %4743, 5.000000e-01
  %4746 = call float @dx.op.unary.f32(i32 27, float %4745)  ; Round_ni(value)
  %4747 = fadd fast float %4744, 5.000000e-01
  %4748 = call float @dx.op.unary.f32(i32 27, float %4747)  ; Round_ni(value)
  %4749 = fsub fast float %4745, %4746
  %4750 = fsub fast float %4747, %4748
  %4751 = fadd fast float %4746, -5.000000e-01
  %4752 = fadd fast float %4748, -5.000000e-01
  %4753 = fmul fast float %4749, 2.000000e+00
  %4754 = fsub fast float 3.000000e+00, %4753
  %4755 = fadd fast float %4753, 1.000000e+00
  %4756 = fsub fast float 2.000000e+00, %4749
  %4757 = bitcast float %4754 to i32
  %4758 = sub nsw i32 2129859010, %4757
  %4759 = bitcast i32 %4758 to float
  %4760 = fmul fast float %4759, %4756
  %4761 = fadd fast float %4760, -1.000000e+00
  %4762 = bitcast float %4755 to i32
  %4763 = sub nsw i32 2129859010, %4762
  %4764 = bitcast i32 %4763 to float
  %4765 = fmul fast float %4764, %4749
  %4766 = fadd fast float %4765, 1.000000e+00
  %4767 = fmul fast float %4750, 2.000000e+00
  %4768 = fsub fast float 3.000000e+00, %4767
  %4769 = fadd fast float %4767, 1.000000e+00
  %4770 = fsub fast float 2.000000e+00, %4750
  %4771 = bitcast float %4768 to i32
  %4772 = sub nsw i32 2129859010, %4771
  %4773 = bitcast i32 %4772 to float
  %4774 = fmul fast float %4773, %4770
  %4775 = fadd fast float %4774, -1.000000e+00
  %4776 = bitcast float %4769 to i32
  %4777 = sub nsw i32 2129859010, %4776
  %4778 = bitcast i32 %4777 to float
  %4779 = fmul fast float %4778, %4750
  %4780 = fadd fast float %4779, 1.000000e+00
  %4781 = fadd fast float %4761, %4751
  %4782 = fmul fast float %4781, %4733
  %4783 = fadd fast float %4775, %4752
  %4784 = fmul fast float %4783, %4734
  %4785 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4782, float %4784, float undef, float undef, i32 0, i32 0, i32 undef, float %4738)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = fmul fast float %4786, %4754
  %4788 = fadd fast float %4766, %4751
  %4789 = fmul fast float %4788, %4733
  %4790 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4789, float %4784, float undef, float undef, i32 0, i32 0, i32 undef, float %4738)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4791 = extractvalue %dx.types.ResRet.f32 %4790, 0
  %4792 = fmul fast float %4791, %4755
  %4793 = fadd fast float %4780, %4752
  %4794 = fmul fast float %4793, %4734
  %4795 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4782, float %4794, float undef, float undef, i32 0, i32 0, i32 undef, float %4738)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = fmul fast float %4796, %4754
  %4798 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4789, float %4794, float undef, float undef, i32 0, i32 0, i32 undef, float %4738)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4799 = extractvalue %dx.types.ResRet.f32 %4798, 0
  %4800 = fmul fast float %4799, %4755
  %4801 = fadd fast float %4800, %4797
  %4802 = fmul fast float %4801, %4769
  %4803 = fadd fast float %4792, %4787
  %4804 = fmul fast float %4803, %4768
  %4805 = fadd fast float %4804, %4802
  %4806 = fmul fast float %4805, 6.250000e-02
  br label %4892

; <label>:4807                                    ; preds = %4728
  %4808 = fmul fast float %248, 0x401921FB60000000
  %4809 = call float @dx.op.unary.f32(i32 13, float %4808)  ; Sin(value)
  %4810 = call float @dx.op.unary.f32(i32 12, float %4808)  ; Cos(value)
  %4811 = fsub fast float -0.000000e+00, %4809
  br label %4812

; <label>:4812                                    ; preds = %4861, %4807
  %4813 = phi float [ 0.000000e+00, %4807 ], [ %4856, %4861 ]
  %4814 = phi float [ 0.000000e+00, %4807 ], [ %4858, %4861 ]
  %4815 = phi i32 [ 0, %4807 ], [ %4862, %4861 ]
  %4816 = mul i32 %4815, 2
  %4817 = add i32 0, %4816
  %4818 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4817
  %4819 = load float, float* %4818, align 4
  %4820 = mul i32 %4815, 2
  %4821 = add i32 1, %4820
  %4822 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4821
  %4823 = load float, float* %4822, align 4
  %4824 = fmul fast float %4819, %4810
  %4825 = call float @dx.op.tertiary.f32(i32 46, float %4823, float %4811, float %4824)  ; FMad(a,b,c)
  %4826 = fmul fast float %4819, %4809
  %4827 = call float @dx.op.tertiary.f32(i32 46, float %4823, float %4810, float %4826)  ; FMad(a,b,c)
  %4828 = fmul fast float %4825, %4736
  %4829 = fmul fast float %4827, %4736
  %4830 = fadd fast float %4828, %4052
  %4831 = fadd fast float %4829, %4053
  %4832 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %4830, float %4831, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4833 = extractvalue %dx.types.ResRet.f32 %4832, 0
  %4834 = extractvalue %dx.types.ResRet.f32 %4832, 1
  %4835 = extractvalue %dx.types.ResRet.f32 %4832, 2
  %4836 = extractvalue %dx.types.ResRet.f32 %4832, 3
  %4837 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %4833, float* %4837, align 4
  %4838 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %4834, float* %4838, align 4
  %4839 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %4835, float* %4839, align 4
  %4840 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %4836, float* %4840, align 4
  %4841 = fsub fast float %4833, %4738
  %4842 = fcmp fast olt float %4841, 0.000000e+00
  %4843 = select i1 %4842, float 0.000000e+00, float 1.000000e+00
  %4844 = fadd fast float %4843, %4813
  %4845 = fmul fast float %4843, %4841
  %4846 = fadd fast float %4845, %4814
  br label %4847

; <label>:4847                                    ; preds = %4847, %4812
  %4848 = phi i32 [ 1, %4812 ], [ %4859, %4847 ]
  %4849 = phi float [ %4846, %4812 ], [ %4858, %4847 ]
  %4850 = phi float [ %4844, %4812 ], [ %4856, %4847 ]
  %4851 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %4848
  %4852 = load float, float* %4851, align 4, !tbaa !133, !noalias !123
  %4853 = fsub fast float %4852, %4738
  %4854 = fcmp fast olt float %4853, 0.000000e+00
  %4855 = select i1 %4854, float 0.000000e+00, float 1.000000e+00
  %4856 = fadd fast float %4855, %4850
  %4857 = fmul fast float %4855, %4853
  %4858 = fadd fast float %4857, %4849
  %4859 = add nuw nsw i32 %4848, 1
  %4860 = icmp eq i32 %4859, 4
  br i1 %4860, label %4861, label %4847, !llvm.loop !135

; <label>:4861                                    ; preds = %4847
  %4862 = add nuw nsw i32 %4815, 1
  %4863 = icmp eq i32 %4862, 8
  br i1 %4863, label %4864, label %4812, !llvm.loop !136

; <label>:4864                                    ; preds = %4861
  %4865 = fdiv fast float 1.000000e+00, %4856
  %4866 = fmul fast float %4865, %4858
  %4867 = fdiv fast float 1.000000e+00, %4738
  %4868 = fmul fast float %4866, %4867
  %4869 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4870 = call float @dx.op.binary.f32(i32 35, float %4869, float 0.000000e+00)  ; FMax(a,b)
  %4871 = fmul fast float %4856, 3.125000e-02
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = fmul fast float %4872, 2.000000e+00
  %4874 = fadd fast float %4873, -1.000000e+00
  %4875 = fcmp fast ogt float %4874, 0.000000e+00
  %4876 = fcmp fast olt float %4874, 0.000000e+00
  %4877 = zext i1 %4875 to i32
  %4878 = zext i1 %4876 to i32
  %4879 = sub nsw i32 %4877, %4878
  %4880 = sitofp i32 %4879 to float
  %4881 = fmul fast float %4880, %4874
  %4882 = fsub fast float 1.000000e+00, %4881
  %4883 = fmul fast float %4882, %4882
  %4884 = fmul fast float %4883, %4882
  %4885 = fsub fast float %4882, %4884
  %4886 = fmul fast float %4885, %4870
  %4887 = fsub fast float 1.000000e+00, %4884
  %4888 = fsub fast float %4887, %4886
  %4889 = fmul fast float %4880, 5.000000e-01
  %4890 = fmul fast float %4889, %4888
  %4891 = fsub fast float 5.000000e-01, %4890
  br label %4892

; <label>:4892                                    ; preds = %4864, %4740, %4725
  %4893 = phi float [ 1.000000e+00, %4725 ], [ %4806, %4740 ], [ %4891, %4864 ]
  %4894 = fcmp fast ogt float %4155, 0.000000e+00
  br i1 %4894, label %4895, label %5059, !dx.controlflow.hints !138

; <label>:4895                                    ; preds = %4892
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4898 = fadd fast float %4897, %4045
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 2
  %4901 = extractvalue %dx.types.CBufRet.f32 %4899, 3
  %4902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4903 = extractvalue %dx.types.CBufRet.f32 %4902, 0
  %4904 = call float @dx.op.binary.f32(i32 35, float %4898, float 0.000000e+00)  ; FMax(a,b)
  %4905 = fadd fast float %4904, 0x3F10000000000000
  %4906 = fcmp fast oeq float %4903, 0.000000e+00
  br i1 %4906, label %4907, label %4974

; <label>:4907                                    ; preds = %4895
  %4908 = extractvalue %dx.types.CBufRet.f32 %4899, 1
  %4909 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4910 = fmul fast float %4909, %4037
  %4911 = fmul fast float %4908, %4041
  %4912 = fadd fast float %4910, 5.000000e-01
  %4913 = call float @dx.op.unary.f32(i32 27, float %4912)  ; Round_ni(value)
  %4914 = fadd fast float %4911, 5.000000e-01
  %4915 = call float @dx.op.unary.f32(i32 27, float %4914)  ; Round_ni(value)
  %4916 = fsub fast float %4912, %4913
  %4917 = fsub fast float %4914, %4915
  %4918 = fadd fast float %4913, -5.000000e-01
  %4919 = fadd fast float %4915, -5.000000e-01
  %4920 = fmul fast float %4916, 2.000000e+00
  %4921 = fsub fast float 3.000000e+00, %4920
  %4922 = fadd fast float %4920, 1.000000e+00
  %4923 = fsub fast float 2.000000e+00, %4916
  %4924 = bitcast float %4921 to i32
  %4925 = sub nsw i32 2129859010, %4924
  %4926 = bitcast i32 %4925 to float
  %4927 = fmul fast float %4926, %4923
  %4928 = fadd fast float %4927, -1.000000e+00
  %4929 = bitcast float %4922 to i32
  %4930 = sub nsw i32 2129859010, %4929
  %4931 = bitcast i32 %4930 to float
  %4932 = fmul fast float %4931, %4916
  %4933 = fadd fast float %4932, 1.000000e+00
  %4934 = fmul fast float %4917, 2.000000e+00
  %4935 = fsub fast float 3.000000e+00, %4934
  %4936 = fadd fast float %4934, 1.000000e+00
  %4937 = fsub fast float 2.000000e+00, %4917
  %4938 = bitcast float %4935 to i32
  %4939 = sub nsw i32 2129859010, %4938
  %4940 = bitcast i32 %4939 to float
  %4941 = fmul fast float %4940, %4937
  %4942 = fadd fast float %4941, -1.000000e+00
  %4943 = bitcast float %4936 to i32
  %4944 = sub nsw i32 2129859010, %4943
  %4945 = bitcast i32 %4944 to float
  %4946 = fmul fast float %4945, %4917
  %4947 = fadd fast float %4946, 1.000000e+00
  %4948 = fadd fast float %4928, %4918
  %4949 = fmul fast float %4948, %4900
  %4950 = fadd fast float %4942, %4919
  %4951 = fmul fast float %4950, %4901
  %4952 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4949, float %4951, float undef, float undef, i32 0, i32 0, i32 undef, float %4905)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4953 = extractvalue %dx.types.ResRet.f32 %4952, 0
  %4954 = fmul fast float %4953, %4921
  %4955 = fadd fast float %4933, %4918
  %4956 = fmul fast float %4955, %4900
  %4957 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4956, float %4951, float undef, float undef, i32 0, i32 0, i32 undef, float %4905)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4958 = extractvalue %dx.types.ResRet.f32 %4957, 0
  %4959 = fmul fast float %4958, %4922
  %4960 = fadd fast float %4947, %4919
  %4961 = fmul fast float %4960, %4901
  %4962 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4949, float %4961, float undef, float undef, i32 0, i32 0, i32 undef, float %4905)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4963 = extractvalue %dx.types.ResRet.f32 %4962, 0
  %4964 = fmul fast float %4963, %4921
  %4965 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4956, float %4961, float undef, float undef, i32 0, i32 0, i32 undef, float %4905)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4966 = extractvalue %dx.types.ResRet.f32 %4965, 0
  %4967 = fmul fast float %4966, %4922
  %4968 = fadd fast float %4967, %4964
  %4969 = fmul fast float %4968, %4936
  %4970 = fadd fast float %4959, %4954
  %4971 = fmul fast float %4970, %4935
  %4972 = fadd fast float %4971, %4969
  %4973 = fmul fast float %4972, 6.250000e-02
  br label %5059

; <label>:4974                                    ; preds = %4895
  %4975 = fmul fast float %248, 0x401921FB60000000
  %4976 = call float @dx.op.unary.f32(i32 13, float %4975)  ; Sin(value)
  %4977 = call float @dx.op.unary.f32(i32 12, float %4975)  ; Cos(value)
  %4978 = fsub fast float -0.000000e+00, %4976
  br label %4979

; <label>:4979                                    ; preds = %5028, %4974
  %4980 = phi float [ 0.000000e+00, %4974 ], [ %5023, %5028 ]
  %4981 = phi float [ 0.000000e+00, %4974 ], [ %5025, %5028 ]
  %4982 = phi i32 [ 0, %4974 ], [ %5029, %5028 ]
  %4983 = mul i32 %4982, 2
  %4984 = add i32 0, %4983
  %4985 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4984
  %4986 = load float, float* %4985, align 4
  %4987 = mul i32 %4982, 2
  %4988 = add i32 1, %4987
  %4989 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4988
  %4990 = load float, float* %4989, align 4
  %4991 = fmul fast float %4986, %4977
  %4992 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4978, float %4991)  ; FMad(a,b,c)
  %4993 = fmul fast float %4986, %4976
  %4994 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4977, float %4993)  ; FMad(a,b,c)
  %4995 = fmul fast float %4992, %4903
  %4996 = fmul fast float %4994, %4903
  %4997 = fadd fast float %4995, %4037
  %4998 = fadd fast float %4996, %4041
  %4999 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %4997, float %4998, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5003 = extractvalue %dx.types.ResRet.f32 %4999, 3
  %5004 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %5000, float* %5004, align 4
  %5005 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %5001, float* %5005, align 4
  %5006 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %5002, float* %5006, align 4
  %5007 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %5003, float* %5007, align 4
  %5008 = fsub fast float %5000, %4905
  %5009 = fcmp fast olt float %5008, 0.000000e+00
  %5010 = select i1 %5009, float 0.000000e+00, float 1.000000e+00
  %5011 = fadd fast float %5010, %4980
  %5012 = fmul fast float %5010, %5008
  %5013 = fadd fast float %5012, %4981
  br label %5014

; <label>:5014                                    ; preds = %5014, %4979
  %5015 = phi i32 [ 1, %4979 ], [ %5026, %5014 ]
  %5016 = phi float [ %5013, %4979 ], [ %5025, %5014 ]
  %5017 = phi float [ %5011, %4979 ], [ %5023, %5014 ]
  %5018 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %5015
  %5019 = load float, float* %5018, align 4, !tbaa !133, !noalias !123
  %5020 = fsub fast float %5019, %4905
  %5021 = fcmp fast olt float %5020, 0.000000e+00
  %5022 = select i1 %5021, float 0.000000e+00, float 1.000000e+00
  %5023 = fadd fast float %5022, %5017
  %5024 = fmul fast float %5022, %5020
  %5025 = fadd fast float %5024, %5016
  %5026 = add nuw nsw i32 %5015, 1
  %5027 = icmp eq i32 %5026, 4
  br i1 %5027, label %5028, label %5014, !llvm.loop !135

; <label>:5028                                    ; preds = %5014
  %5029 = add nuw nsw i32 %4982, 1
  %5030 = icmp eq i32 %5029, 8
  br i1 %5030, label %5031, label %4979, !llvm.loop !136

; <label>:5031                                    ; preds = %5028
  %5032 = fdiv fast float 1.000000e+00, %5023
  %5033 = fmul fast float %5032, %5025
  %5034 = fdiv fast float 1.000000e+00, %4905
  %5035 = fmul fast float %5033, %5034
  %5036 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5037 = call float @dx.op.binary.f32(i32 35, float %5036, float 0.000000e+00)  ; FMax(a,b)
  %5038 = fmul fast float %5023, 3.125000e-02
  %5039 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5040 = fmul fast float %5039, 2.000000e+00
  %5041 = fadd fast float %5040, -1.000000e+00
  %5042 = fcmp fast ogt float %5041, 0.000000e+00
  %5043 = fcmp fast olt float %5041, 0.000000e+00
  %5044 = zext i1 %5042 to i32
  %5045 = zext i1 %5043 to i32
  %5046 = sub nsw i32 %5044, %5045
  %5047 = sitofp i32 %5046 to float
  %5048 = fmul fast float %5047, %5041
  %5049 = fsub fast float 1.000000e+00, %5048
  %5050 = fmul fast float %5049, %5049
  %5051 = fmul fast float %5050, %5049
  %5052 = fsub fast float %5049, %5051
  %5053 = fmul fast float %5052, %5037
  %5054 = fsub fast float 1.000000e+00, %5051
  %5055 = fsub fast float %5054, %5053
  %5056 = fmul fast float %5047, 5.000000e-01
  %5057 = fmul fast float %5056, %5055
  %5058 = fsub fast float 5.000000e-01, %5057
  br label %5059

; <label>:5059                                    ; preds = %5031, %4907, %4892
  %5060 = phi float [ 1.000000e+00, %4892 ], [ %4973, %4907 ], [ %5058, %5031 ]
  %5061 = fsub fast float %4726, %4561
  %5062 = fmul fast float %5061, %4099
  %5063 = fadd fast float %5062, %4561
  %5064 = fsub fast float %4893, %5063
  %5065 = fmul fast float %5064, %4129
  %5066 = fadd fast float %5065, %5063
  %5067 = fsub fast float %5060, %5066
  %5068 = fmul fast float %5067, %4155
  %5069 = fadd fast float %5068, %5066
  %5070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5071 = extractvalue %dx.types.CBufRet.f32 %5070, 2
  %5072 = fcmp fast ogt float %5071, 0.000000e+00
  br i1 %5072, label %5073, label %5113, !dx.controlflow.hints !139

; <label>:5073                                    ; preds = %5059
  %5074 = fcmp fast ugt float %5071, 0.000000e+00
  br i1 %5074, label %5075, label %5110

; <label>:5075                                    ; preds = %5073
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 0
  %5078 = extractvalue %dx.types.CBufRet.f32 %5076, 1
  %5079 = extractvalue %dx.types.CBufRet.f32 %5076, 2
  %5080 = extractvalue %dx.types.CBufRet.f32 %5076, 3
  %5081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5082 = extractvalue %dx.types.CBufRet.f32 %5081, 0
  %5083 = extractvalue %dx.types.CBufRet.f32 %5081, 1
  %5084 = extractvalue %dx.types.CBufRet.f32 %5081, 2
  %5085 = extractvalue %dx.types.CBufRet.f32 %5081, 3
  %5086 = extractvalue %dx.types.CBufRet.f32 %5070, 0
  %5087 = extractvalue %dx.types.CBufRet.f32 %5070, 1
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 0
  %5090 = extractvalue %dx.types.CBufRet.f32 %5088, 1
  %5091 = extractvalue %dx.types.CBufRet.f32 %5088, 2
  %5092 = fadd fast float %5089, %4014
  %5093 = fadd fast float %5090, %4015
  %5094 = fadd fast float %5091, %4016
  %5095 = fmul fast float %5092, %5077
  %5096 = call float @dx.op.tertiary.f32(i32 46, float %5078, float %5093, float %5095)  ; FMad(a,b,c)
  %5097 = call float @dx.op.tertiary.f32(i32 46, float %5079, float %5094, float %5096)  ; FMad(a,b,c)
  %5098 = fadd fast float %5097, %5080
  %5099 = fmul fast float %5092, %5082
  %5100 = call float @dx.op.tertiary.f32(i32 46, float %5083, float %5093, float %5099)  ; FMad(a,b,c)
  %5101 = call float @dx.op.tertiary.f32(i32 46, float %5084, float %5094, float %5100)  ; FMad(a,b,c)
  %5102 = fadd fast float %5101, %5085
  %5103 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5098, float %5102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5104 = extractvalue %dx.types.ResRet.f32 %5103, 0
  %5105 = fmul fast float %5104, %5087
  %5106 = fadd fast float %5105, %5086
  %5107 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5108 = fmul fast float %5107, %5071
  %5109 = fsub fast float 1.000000e+00, %5108
  br label %5110

; <label>:5110                                    ; preds = %5075, %5073
  %5111 = phi float [ %5109, %5075 ], [ 1.000000e+00, %5073 ]
  %5112 = fmul fast float %5111, %5069
  br label %5113

; <label>:5113                                    ; preds = %5110, %5059, %3994
  %5114 = phi float [ 1.000000e+00, %3994 ], [ %5112, %5110 ], [ %5069, %5059 ]
  %5115 = call float @dx.op.binary.f32(i32 36, float %5114, float %5114)  ; FMin(a,b)
  %5116 = call float @dx.op.binary.f32(i32 36, float %5114, float %5115)  ; FMin(a,b)
  %5117 = fcmp fast ogt float %5116, 0.000000e+00
  br i1 %5117, label %5118, label %5283, !dx.controlflow.hints !140

; <label>:5118                                    ; preds = %5113
  %5119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5119, 0
  %5121 = extractvalue %dx.types.CBufRet.f32 %5119, 1
  %5122 = extractvalue %dx.types.CBufRet.f32 %5119, 2
  %5123 = extractvalue %dx.types.CBufRet.f32 %5119, 3
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5126 = extractvalue %dx.types.CBufRet.f32 %5124, 1
  %5127 = extractvalue %dx.types.CBufRet.f32 %5124, 2
  %5128 = extractvalue %dx.types.CBufRet.f32 %5124, 3
  %5129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5130 = extractvalue %dx.types.CBufRet.f32 %5129, 0
  %5131 = extractvalue %dx.types.CBufRet.f32 %5129, 1
  %5132 = extractvalue %dx.types.CBufRet.f32 %5129, 2
  %5133 = extractvalue %dx.types.CBufRet.f32 %5129, 3
  %5134 = fmul fast float %5120, %4014
  %5135 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %5121, float %5134)  ; FMad(a,b,c)
  %5136 = call float @dx.op.tertiary.f32(i32 46, float %4016, float %5122, float %5135)  ; FMad(a,b,c)
  %5137 = fadd fast float %5136, %5123
  %5138 = fmul fast float %5125, %4014
  %5139 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %5126, float %5138)  ; FMad(a,b,c)
  %5140 = call float @dx.op.tertiary.f32(i32 46, float %4016, float %5127, float %5139)  ; FMad(a,b,c)
  %5141 = fadd fast float %5140, %5128
  %5142 = fmul fast float %5130, %4014
  %5143 = call float @dx.op.tertiary.f32(i32 46, float %4015, float %5131, float %5142)  ; FMad(a,b,c)
  %5144 = call float @dx.op.tertiary.f32(i32 46, float %4016, float %5132, float %5143)  ; FMad(a,b,c)
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 1
  %5148 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5149 = fmul fast float %5148, %5137
  %5150 = fmul fast float %5148, %5141
  %5151 = fadd fast float %5149, %5146
  %5152 = fadd fast float %5150, %5147
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.CBufRet.f32 %5153, 1
  %5156 = fsub fast float %5151, %5154
  %5157 = fsub fast float %5152, %5155
  %5158 = fcmp fast olt float %5156, 0.000000e+00
  %5159 = fcmp fast olt float %5157, 0.000000e+00
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5164 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5165 = select i1 %5158, float %5161, float %5163
  %5166 = select i1 %5159, float %5162, float %5164
  %5167 = fmul fast float %5165, %5156
  %5168 = fmul fast float %5166, %5157
  %5169 = call float @dx.op.unary.f32(i32 6, float %5167)  ; FAbs(value)
  %5170 = call float @dx.op.unary.f32(i32 6, float %5168)  ; FAbs(value)
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5173 = call float @dx.op.binary.f32(i32 35, float %5169, float %5170)  ; FMax(a,b)
  %5174 = fsub fast float %5172, %5173
  %5175 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5176 = fcmp fast ogt float %5175, 0.000000e+00
  br i1 %5176, label %5177, label %5218, !dx.controlflow.hints !141

; <label>:5177                                    ; preds = %5118
  %5178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5151, float %5152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5179 = extractvalue %dx.types.ResRet.f32 %5178, 1
  %5180 = fcmp fast ogt float %5179, 0.000000e+00
  br i1 %5180, label %5181, label %5213

; <label>:5181                                    ; preds = %5177
  %5182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5151, float %5152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5183 = extractvalue %dx.types.ResRet.f32 %5182, 0
  %5184 = extractvalue %dx.types.ResRet.f32 %5182, 1
  %5185 = extractvalue %dx.types.ResRet.f32 %5182, 2
  %5186 = extractvalue %dx.types.ResRet.f32 %5182, 3
  %5187 = fsub fast float 1.000000e+00, %5133
  %5188 = fsub fast float %5187, %5144
  %5189 = fmul fast float %5188, 0x400921FB60000000
  %5190 = fadd fast float %5189, 0x3FF921FB60000000
  %5191 = call float @dx.op.unary.f32(i32 13, float %5190)  ; Sin(value)
  %5192 = fadd fast float %5191, -1.000000e+00
  %5193 = fmul fast float %5192, 0x3FD45F3060000000
  %5194 = fmul fast float %5188, 0x401921FB60000000
  %5195 = fadd fast float %5194, 0x400921FB60000000
  %5196 = call float @dx.op.unary.f32(i32 13, float %5195)  ; Sin(value)
  %5197 = fadd fast float %5196, 0x3E7777A5C0000000
  %5198 = fmul fast float %5197, 0x3FC45F3060000000
  %5199 = fmul fast float %5188, 0x4022D97C80000000
  %5200 = fadd fast float %5199, 0x4012D97C80000000
  %5201 = call float @dx.op.unary.f32(i32 13, float %5200)  ; Sin(value)
  %5202 = fadd fast float %5201, 1.000000e+00
  %5203 = fmul fast float %5202, 0x3FBB2995E0000000
  %5204 = fmul fast float %5188, 0x402921FB60000000
  %5205 = fadd fast float %5204, 0x401921FB60000000
  %5206 = call float @dx.op.unary.f32(i32 13, float %5205)  ; Sin(value)
  %5207 = fadd fast float %5206, 0xBE8777A5C0000000
  %5208 = fmul fast float %5207, 0x3FB45F3060000000
  %5209 = call float @dx.op.dot4.f32(i32 56, float %5183, float %5184, float %5185, float %5186, float %5193, float %5198, float %5203, float %5208)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5210 = fmul fast float %5209, 0xBFF7154760000000
  %5211 = call float @dx.op.unary.f32(i32 21, float %5210)  ; Exp(value)
  %5212 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  br label %5213

; <label>:5213                                    ; preds = %5181, %5177
  %5214 = phi float [ %5212, %5181 ], [ 1.000000e+00, %5177 ]
  %5215 = fadd fast float %5214, -1.000000e+00
  %5216 = fmul fast float %5215, %5175
  %5217 = fadd fast float %5216, 1.000000e+00
  br label %5218

; <label>:5218                                    ; preds = %5213, %5118
  %5219 = phi float [ %5217, %5213 ], [ 1.000000e+00, %5118 ]
  %5220 = fmul fast float %5219, %5114
  %5221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5222 = extractvalue %dx.types.CBufRet.f32 %5221, 0
  %5223 = extractvalue %dx.types.CBufRet.f32 %5221, 1
  %5224 = extractvalue %dx.types.CBufRet.f32 %5221, 2
  %5225 = fadd fast float %5222, %146
  %5226 = fadd fast float %5223, %147
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 1
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.CBufRet.f32 %5229, 2
  %5233 = fsub fast float -0.000000e+00, %5225
  %5234 = fsub fast float -0.000000e+00, %5226
  %5235 = fsub fast float %2114, %5224
  %5236 = fadd fast float %5235, %5228
  %5237 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5233, float %5234, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5238 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5230, float %5231, float %5232)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = fdiv fast float 1.000000e+00, %5238
  %5240 = fmul fast float %5239, %5237
  %5241 = fmul fast float %5230, %5240
  %5242 = fmul fast float %5231, %5240
  %5243 = fadd fast float %5241, %5225
  %5244 = fadd fast float %5242, %5226
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.CBufRet.f32 %5245, 1
  %5248 = fsub fast float %5243, %5246
  %5249 = fsub fast float %5244, %5247
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 2
  %5252 = extractvalue %dx.types.CBufRet.f32 %5250, 3
  %5253 = fmul fast float %5248, %5251
  %5254 = fmul fast float %5249, %5252
  %5255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.i32 %5255, 3
  %5257 = icmp eq i32 %5256, 0
  br i1 %5257, label %5263, label %5258

; <label>:5258                                    ; preds = %5218
  %5259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5253, float %5254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5260 = extractvalue %dx.types.ResRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.ResRet.f32 %5259, 1
  %5262 = extractvalue %dx.types.ResRet.f32 %5259, 2
  br label %5268

; <label>:5263                                    ; preds = %5218
  %5264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5253, float %5254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5265 = extractvalue %dx.types.ResRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.f32 %5264, 1
  %5267 = extractvalue %dx.types.ResRet.f32 %5264, 2
  br label %5268

; <label>:5268                                    ; preds = %5263, %5258
  %5269 = phi float [ %5260, %5258 ], [ %5265, %5263 ]
  %5270 = phi float [ %5261, %5258 ], [ %5266, %5263 ]
  %5271 = phi float [ %5262, %5258 ], [ %5267, %5263 ]
  %5272 = extractvalue %dx.types.CBufRet.f32 %5227, 2
  %5273 = fmul fast float %5272, %5269
  %5274 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5275 = fsub fast float %5240, %5274
  %5276 = fsub fast float %5275, %5273
  %5277 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5276)  ; FMax(a,b)
  %5278 = fmul fast float %5277, %5270
  %5279 = call float @dx.op.binary.f32(i32 36, float %5271, float %5278)  ; FMin(a,b)
  %5280 = fmul fast float %5279, 0xBFF7154760000000
  %5281 = call float @dx.op.unary.f32(i32 21, float %5280)  ; Exp(value)
  %5282 = fmul fast float %5220, %5281
  br label %5283

; <label>:5283                                    ; preds = %5268, %5113
  %5284 = phi float [ %5282, %5268 ], [ %5114, %5113 ]
  %5285 = call float @dx.op.binary.f32(i32 36, float %5284, float %5284)  ; FMin(a,b)
  %5286 = call float @dx.op.binary.f32(i32 36, float %5284, float %5285)  ; FMin(a,b)
  %5287 = fcmp fast ogt float %5286, 0.000000e+00
  br i1 %5287, label %5288, label %5535, !dx.controlflow.hints !142

; <label>:5288                                    ; preds = %5283
  %5289 = fmul fast float %5284, %4006
  %5290 = fmul fast float %5284, %4007
  %5291 = fmul fast float %5284, %4008
  %5292 = fsub fast float %148, %1902
  %5293 = fcmp fast ogt float %5292, 0.000000e+00
  %5294 = fmul fast float %3995, 5.120000e+02
  %5295 = fmul fast float %3996, 5.120000e+02
  %5296 = fmul fast float %3997, 5.120000e+02
  %5297 = fadd fast float %5296, %148
  %5298 = fsub fast float %1902, %5297
  %5299 = fmul fast float %5298, 2.000000e+00
  %5300 = fadd fast float %5299, %5297
  %5301 = select i1 %5293, float %5300, float %5297
  %5302 = fsub fast float %5301, %148
  %5303 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5302, float %5294, float %5295, float %5302)  ; Dot3(ax,ay,az,bx,by,bz)
  %5304 = call float @dx.op.unary.f32(i32 25, float %5303)  ; Rsqrt(value)
  %5305 = fmul fast float %5304, %5294
  %5306 = fmul fast float %5304, %5295
  %5307 = fmul fast float %5304, %5302
  %5308 = fsub fast float %1902, %148
  %5309 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5305, float %5306, float %5307)  ; Dot3(ax,ay,az,bx,by,bz)
  %5311 = fdiv fast float 1.000000e+00, %5310
  %5312 = fmul fast float %5311, %5309
  %5313 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5292, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = fcmp fast ogt float %5313, 0.000000e+00
  %5315 = fcmp fast olt float %5313, 0.000000e+00
  %5316 = zext i1 %5314 to i32
  %5317 = zext i1 %5315 to i32
  %5318 = sub nsw i32 %5316, %5317
  %5319 = sitofp i32 %5318 to float
  %5320 = fsub fast float %5301, %1902
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5320, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = fcmp fast ogt float %5321, 0.000000e+00
  %5323 = fcmp fast olt float %5321, 0.000000e+00
  %5324 = zext i1 %5322 to i32
  %5325 = zext i1 %5323 to i32
  %5326 = sub nsw i32 %5324, %5325
  %5327 = sitofp i32 %5326 to float
  %5328 = fcmp fast une float %5319, %5327
  br i1 %5328, label %5329, label %5339

; <label>:5329                                    ; preds = %5288
  %5330 = fmul fast float %5312, %5307
  %5331 = fmul fast float %5312, %5306
  %5332 = fmul fast float %5312, %5305
  %5333 = fmul fast float %5332, %5332
  %5334 = fmul fast float %5331, %5331
  %5335 = fadd fast float %5333, %5334
  %5336 = fmul fast float %5330, %5330
  %5337 = fadd fast float %5335, %5336
  %5338 = call float @dx.op.unary.f32(i32 24, float %5337)  ; Sqrt(value)
  br label %5349

; <label>:5339                                    ; preds = %5288
  %5340 = icmp slt i32 %5318, 0
  br i1 %5340, label %5341, label %5349

; <label>:5341                                    ; preds = %5339
  %5342 = fsub fast float %148, %5301
  %5343 = fmul fast float %5294, %5294
  %5344 = fmul fast float %5295, %5295
  %5345 = fadd fast float %5343, %5344
  %5346 = fmul fast float %5342, %5342
  %5347 = fadd fast float %5345, %5346
  %5348 = call float @dx.op.unary.f32(i32 24, float %5347)  ; Sqrt(value)
  br label %5349

; <label>:5349                                    ; preds = %5341, %5339, %5329
  %5350 = phi float [ %5338, %5329 ], [ %5348, %5341 ], [ 0.000000e+00, %5339 ]
  %5351 = fsub fast float -0.000000e+00, %5350
  %5352 = select i1 %5293, float -0.000000e+00, float %5351
  %5353 = fmul fast float %1903, 0x3FF7154760000000
  %5354 = fmul fast float %5353, %5352
  %5355 = fmul fast float %1904, 0x3FF7154760000000
  %5356 = fmul fast float %5355, %5352
  %5357 = fmul fast float %1905, 0x3FF7154760000000
  %5358 = fmul fast float %5357, %5352
  %5359 = call float @dx.op.unary.f32(i32 21, float %5354)  ; Exp(value)
  %5360 = call float @dx.op.unary.f32(i32 21, float %5356)  ; Exp(value)
  %5361 = call float @dx.op.unary.f32(i32 21, float %5358)  ; Exp(value)
  %5362 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5363 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5364 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5365 = fmul fast float %5289, %5362
  %5366 = fmul fast float %5290, %5363
  %5367 = fmul fast float %5291, %5364
  %5368 = fsub fast float %3995, %2102
  %5369 = fsub fast float %3996, %2101
  %5370 = fsub fast float %3997, %2100
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5368, float %5369, float %5370, float %5368, float %5369, float %5370)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = call float @dx.op.unary.f32(i32 25, float %5371)  ; Rsqrt(value)
  %5373 = fmul fast float %5372, %5368
  %5374 = fmul fast float %5372, %5369
  %5375 = fmul fast float %5372, %5370
  %5376 = call float @dx.op.dot3.f32(i32 55, float %3995, float %3996, float %3997, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5377 = call float @dx.op.dot3.f32(i32 55, float %2099, float %2098, float %2097, float %5373, float %5374, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5378 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5379 = fmul fast float %5378, %5378
  %5380 = fmul fast float %5379, %3990
  %5381 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5382 = fmul fast float %5381, %5378
  %5383 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2107, float %2108, float %5373, float %5374, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5384 = fmul fast float %5383, %5383
  %5385 = call float @dx.op.unary.f32(i32 6, float %5376)  ; FAbs(value)
  %5386 = fsub fast float 1.000000e+00, %2135
  %5387 = fmul fast float %2117, %2117
  %5388 = fmul fast float %5387, %5386
  %5389 = fadd fast float %5388, %2135
  %5390 = bitcast float %5389 to i32
  %5391 = ashr i32 %5390, 1
  %5392 = add nsw i32 %5391, 532487669
  %5393 = bitcast i32 %5392 to float
  %5394 = fadd fast float %5393, %2117
  %5395 = fmul fast float %2135, %5384
  %5396 = fsub fast float 1.000000e+00, %5384
  %5397 = fadd fast float %5396, %5395
  %5398 = fmul fast float %5385, %5385
  %5399 = fmul fast float %5398, %5386
  %5400 = fadd fast float %5399, %2135
  %5401 = bitcast float %5400 to i32
  %5402 = ashr i32 %5401, 1
  %5403 = add nsw i32 %5402, 532487669
  %5404 = bitcast i32 %5403 to float
  %5405 = fadd fast float %5404, %5385
  %5406 = fmul fast float %5397, %5397
  %5407 = fmul fast float %5406, %5394
  %5408 = fmul fast float %5407, %5405
  %5409 = fdiv fast float 0x3FF0A00000000000, %5408
  %5410 = fmul fast float %5409, %2135
  %5411 = call float @dx.op.unary.f32(i32 6, float %5377)  ; FAbs(value)
  %5412 = fsub fast float 1.000000e+00, %5411
  %5413 = bitcast float %5412 to i32
  %5414 = sitofp i32 %5413 to float
  %5415 = fmul fast float %5414, 5.000000e+00
  %5416 = fadd fast float %5415, 0xC1EFBF8940000000
  %5417 = fptosi float %5416 to i32
  %5418 = bitcast i32 %5417 to float
  %5419 = fsub fast float 1.000000e+00, %2103
  %5420 = fsub fast float 1.000000e+00, %2104
  %5421 = fsub fast float 1.000000e+00, %2115
  %5422 = fmul fast float %5418, %5419
  %5423 = fmul fast float %5418, %5420
  %5424 = fmul fast float %5418, %5421
  %5425 = fadd fast float %5422, %2103
  %5426 = fadd fast float %5423, %2104
  %5427 = fadd fast float %5424, %2115
  br i1 %3413, label %5428, label %5451

; <label>:5428                                    ; preds = %5349
  %5429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1480, float %5411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.ResRet.f32 %5429, 1
  %5432 = extractvalue %dx.types.ResRet.f32 %5429, 2
  %5433 = fadd fast float %5430, -5.000000e-01
  %5434 = fadd fast float %5431, -5.000000e-01
  %5435 = fadd fast float %5432, -5.000000e-01
  %5436 = fmul fast float %2103, 4.000000e+00
  %5437 = fmul fast float %5436, %5419
  %5438 = fmul fast float %5437, %5433
  %5439 = fmul fast float %2104, 4.000000e+00
  %5440 = fmul fast float %5439, %5420
  %5441 = fmul fast float %5440, %5434
  %5442 = fmul fast float %2115, 4.000000e+00
  %5443 = fmul fast float %5442, %5421
  %5444 = fmul fast float %5443, %5435
  %5445 = fadd fast float %5438, %5425
  %5446 = fadd fast float %5441, %5426
  %5447 = fadd fast float %5444, %5427
  %5448 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5449 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5450 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  br label %5451

; <label>:5451                                    ; preds = %5428, %5349
  %5452 = phi float [ %5448, %5428 ], [ %5425, %5349 ]
  %5453 = phi float [ %5449, %5428 ], [ %5426, %5349 ]
  %5454 = phi float [ %5450, %5428 ], [ %5427, %5349 ]
  %5455 = fmul fast float %5376, 9.843750e-01
  %5456 = fadd fast float %5455, 7.812500e-03
  %5457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5456, float %3403, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5458 = extractvalue %dx.types.ResRet.f32 %5457, 2
  %5459 = extractvalue %dx.types.ResRet.f32 %5457, 3
  %5460 = fmul fast float %5458, %2103
  %5461 = fmul fast float %5458, %2104
  %5462 = fmul fast float %5458, %2115
  %5463 = fadd fast float %5460, %5459
  %5464 = fadd fast float %5461, %5459
  %5465 = fadd fast float %5462, %5459
  br i1 %3413, label %5466, label %5489

; <label>:5466                                    ; preds = %5451
  %5467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1480, float %5376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5468 = extractvalue %dx.types.ResRet.f32 %5467, 0
  %5469 = extractvalue %dx.types.ResRet.f32 %5467, 1
  %5470 = extractvalue %dx.types.ResRet.f32 %5467, 2
  %5471 = fadd fast float %5468, -5.000000e-01
  %5472 = fadd fast float %5469, -5.000000e-01
  %5473 = fadd fast float %5470, -5.000000e-01
  %5474 = fmul fast float %2103, 4.000000e+00
  %5475 = fmul fast float %5474, %5419
  %5476 = fmul fast float %5475, %5471
  %5477 = fmul fast float %2104, 4.000000e+00
  %5478 = fmul fast float %5477, %5420
  %5479 = fmul fast float %5478, %5472
  %5480 = fmul fast float %2115, 4.000000e+00
  %5481 = fmul fast float %5480, %5421
  %5482 = fmul fast float %5481, %5473
  %5483 = fadd fast float %5476, %5463
  %5484 = fadd fast float %5479, %5464
  %5485 = fadd fast float %5482, %5465
  %5486 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5487 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5488 = call float @dx.op.unary.f32(i32 7, float %5485)  ; Saturate(value)
  br label %5489

; <label>:5489                                    ; preds = %5466, %5451
  %5490 = phi float [ %5486, %5466 ], [ %5463, %5451 ]
  %5491 = phi float [ %5487, %5466 ], [ %5464, %5451 ]
  %5492 = phi float [ %5488, %5466 ], [ %5465, %5451 ]
  %5493 = call float @dx.op.binary.f32(i32 35, float %5491, float %5492)  ; FMax(a,b)
  %5494 = call float @dx.op.binary.f32(i32 35, float %5490, float %5493)  ; FMax(a,b)
  %5495 = fsub fast float 1.000000e+00, %5494
  %5496 = fmul fast float %5452, %5410
  %5497 = fmul fast float %5453, %5410
  %5498 = fmul fast float %5454, %5410
  %5499 = fsub fast float 1.000000e+00, %5377
  %5500 = bitcast float %5499 to i32
  %5501 = sitofp i32 %5500 to float
  %5502 = fmul fast float %5501, 5.000000e+00
  %5503 = fadd fast float %5502, 0xC1EFBF8940000000
  %5504 = fptosi float %5503 to i32
  %5505 = bitcast i32 %5504 to float
  %5506 = fmul fast float %5505, %1479
  %5507 = fmul fast float %5495, %5506
  %5508 = fmul fast float %5507, %3955
  %5509 = fmul fast float %5507, %3956
  %5510 = fmul fast float %5507, %3957
  %5511 = fadd fast float %5508, %5496
  %5512 = fadd fast float %5509, %5497
  %5513 = fadd fast float %5510, %5498
  %5514 = fmul fast float %5382, %5365
  %5515 = fmul fast float %5514, %5495
  %5516 = fmul fast float %5382, %5366
  %5517 = fmul fast float %5516, %5495
  %5518 = fmul fast float %5382, %5367
  %5519 = fmul fast float %5518, %5495
  %5520 = fmul fast float %5514, %5511
  %5521 = fmul fast float %5516, %5512
  %5522 = fmul fast float %5518, %5513
  %5523 = fadd fast float %5515, %3939
  %5524 = fmul fast float %5523, %1500
  %5525 = fadd fast float %5517, %3940
  %5526 = fmul fast float %5525, %1500
  %5527 = fadd fast float %5519, %3941
  %5528 = fmul fast float %5527, %1500
  %5529 = fadd fast float %5520, %3982
  %5530 = fmul fast float %5529, %1500
  %5531 = fadd fast float %5521, %3985
  %5532 = fmul fast float %5531, %1500
  %5533 = fadd fast float %5522, %3988
  %5534 = fmul fast float %5533, %1500
  br label %5535

; <label>:5535                                    ; preds = %5489, %5283, %3935
  %5536 = phi float [ %3983, %3935 ], [ %3983, %5283 ], [ %5530, %5489 ]
  %5537 = phi float [ %3986, %3935 ], [ %3986, %5283 ], [ %5532, %5489 ]
  %5538 = phi float [ %3989, %3935 ], [ %3989, %5283 ], [ %5534, %5489 ]
  %5539 = phi float [ %3978, %3935 ], [ %3978, %5283 ], [ %5524, %5489 ]
  %5540 = phi float [ %3979, %3935 ], [ %3979, %5283 ], [ %5526, %5489 ]
  %5541 = phi float [ %3980, %3935 ], [ %3980, %5283 ], [ %5528, %5489 ]
  %5542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.i32 %5542, 0
  %5544 = icmp eq i32 %5543, 0
  br i1 %5544, label %6207, label %5545

; <label>:5545                                    ; preds = %5535
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 2
  %5548 = extractvalue %dx.types.CBufRet.f32 %5546, 3
  %5549 = fmul fast float %5547, %99
  %5550 = fmul fast float %5548, %100
  %5551 = fptoui float %5549 to i32
  %5552 = fptoui float %5550 to i32
  %5553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.f32 %5553, 0
  %5555 = extractvalue %dx.types.CBufRet.f32 %5553, 2
  %5556 = extractvalue %dx.types.CBufRet.f32 %5553, 3
  %5557 = fadd fast float %87, -4.000000e+00
  %5558 = call float @dx.op.binary.f32(i32 35, float %5557, float 0.000000e+00)  ; FMax(a,b)
  %5559 = fadd fast float %5558, %5554
  %5560 = fmul fast float %5559, %5555
  %5561 = call float @dx.op.unary.f32(i32 23, float %5560)  ; Log(value)
  %5562 = fmul fast float %5561, %5556
  %5563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5564 = extractvalue %dx.types.CBufRet.f32 %5563, 2
  %5565 = fmul fast float %5562, %5564
  %5566 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5568 = extractvalue %dx.types.CBufRet.i32 %5567, 1
  %5569 = add i32 %5568, -1
  %5570 = uitofp i32 %5568 to float
  %5571 = fmul fast float %5570, %5566
  %5572 = fptoui float %5571 to i32
  %5573 = call i32 @dx.op.binary.i32(i32 40, i32 %5572, i32 %5569)  ; UMin(a,b)
  %5574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.i32 %5574, 2
  %5576 = extractvalue %dx.types.CBufRet.i32 %5574, 3
  %5577 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5552, i32 %5575, i32 %5551)  ; UMad(a,b,c)
  %5578 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5573, i32 %5576, i32 %5577)  ; UMad(a,b,c)
  %5579 = add nsw i32 %5543, -1
  %5580 = call i32 @dx.op.binary.i32(i32 37, i32 %5579, i32 0)  ; IMax(a,b)
  %5581 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %5582 = fptoui float %5581 to i32
  %5583 = lshr i32 %5582, 5
  %5584 = call i32 @dx.op.binary.i32(i32 40, i32 %5583, i32 8191)  ; UMin(a,b)
  %5585 = shl i32 %5584, 2
  %5586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5585, i32 undef)  ; BufferLoad(srv,index,wot)
  %5587 = extractvalue %dx.types.ResRet.i32 %5586, 0
  %5588 = lshr i32 %5587, 16
  %5589 = and i32 %5587, 65535
  %5590 = lshr i32 %5587, 21
  %5591 = lshr i32 %5589, 5
  %5592 = call i32 @dx.op.binary.i32(i32 40, i32 %5591, i32 %5580)  ; UMin(a,b)
  %5593 = icmp ugt i32 %5590, %5592
  br i1 %5593, label %6207, label %5594

; <label>:5594                                    ; preds = %5545
  br label %5595

; <label>:5595                                    ; preds = %6197, %5594
  %5596 = phi i32 [ %6204, %6197 ], [ %5590, %5594 ]
  %5597 = phi float [ %6198, %6197 ], [ %5536, %5594 ]
  %5598 = phi float [ %6199, %6197 ], [ %5537, %5594 ]
  %5599 = phi float [ %6200, %6197 ], [ %5538, %5594 ]
  %5600 = phi float [ %6201, %6197 ], [ %5539, %5594 ]
  %5601 = phi float [ %6202, %6197 ], [ %5540, %5594 ]
  %5602 = phi float [ %6203, %6197 ], [ %5541, %5594 ]
  %5603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5604 = extractvalue %dx.types.CBufRet.i32 %5603, 0
  %5605 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5578, i32 %5604, i32 %5596)  ; UMad(a,b,c)
  %5606 = shl i32 %5605, 2
  %5607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5606, i32 undef)  ; BufferLoad(srv,index,wot)
  %5608 = extractvalue %dx.types.ResRet.i32 %5607, 0
  %5609 = shl i32 %5596, 5
  %5610 = sub nsw i32 %5588, %5609
  %5611 = call i32 @dx.op.binary.i32(i32 37, i32 %5610, i32 0)  ; IMax(a,b)
  %5612 = call i32 @dx.op.binary.i32(i32 38, i32 %5611, i32 31)  ; IMin(a,b)
  %5613 = sub nsw i32 1, %5588
  %5614 = add nsw i32 %5613, %5589
  %5615 = call i32 @dx.op.binary.i32(i32 37, i32 %5614, i32 0)  ; IMax(a,b)
  %5616 = call i32 @dx.op.binary.i32(i32 38, i32 %5615, i32 32)  ; IMin(a,b)
  %5617 = and i32 %5616, 31
  %5618 = shl i32 -1, %5617
  %5619 = xor i32 %5618, -1
  %5620 = and i32 %5612, 31
  %5621 = shl i32 %5619, %5620
  %5622 = icmp eq i32 %5616, 32
  %5623 = select i1 %5622, i32 -1, i32 %5621
  %5624 = and i32 %5623, %5608
  %5625 = icmp eq i32 %5624, 0
  br i1 %5625, label %6197, label %5626

; <label>:5626                                    ; preds = %5595
  br label %5627

; <label>:5627                                    ; preds = %5761, %5626
  %5628 = phi i32 [ %5639, %5761 ], [ %5624, %5626 ]
  %5629 = phi float [ %5762, %5761 ], [ %5597, %5626 ]
  %5630 = phi float [ %5763, %5761 ], [ %5598, %5626 ]
  %5631 = phi float [ %5764, %5761 ], [ %5599, %5626 ]
  %5632 = phi float [ %5765, %5761 ], [ %5600, %5626 ]
  %5633 = phi float [ %5766, %5761 ], [ %5601, %5626 ]
  %5634 = phi float [ %5767, %5761 ], [ %5602, %5626 ]
  %5635 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5628)  ; FirstbitLo(value)
  %5636 = add i32 %5635, %5609
  %5637 = and i32 %5635, 31
  %5638 = shl i32 1, %5637
  %5639 = xor i32 %5638, %5628
  %5640 = mul i32 %5636, 112
  %5641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5640, i32 undef)  ; BufferLoad(srv,index,wot)
  %5642 = extractvalue %dx.types.ResRet.f32 %5641, 0
  %5643 = extractvalue %dx.types.ResRet.f32 %5641, 1
  %5644 = extractvalue %dx.types.ResRet.f32 %5641, 2
  %5645 = or i32 %5640, 12
  %5646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5645, i32 undef)  ; BufferLoad(srv,index,wot)
  %5647 = extractvalue %dx.types.ResRet.f32 %5646, 0
  %5648 = add i32 %5640, 16
  %5649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5648, i32 undef)  ; BufferLoad(srv,index,wot)
  %5650 = extractvalue %dx.types.ResRet.f32 %5649, 0
  %5651 = extractvalue %dx.types.ResRet.f32 %5649, 1
  %5652 = extractvalue %dx.types.ResRet.f32 %5649, 2
  %5653 = add i32 %5640, 28
  %5654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5653, i32 undef)  ; BufferLoad(srv,index,wot)
  %5655 = extractvalue %dx.types.ResRet.i32 %5654, 0
  %5656 = add i32 %5640, 44
  %5657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5656, i32 undef)  ; BufferLoad(srv,index,wot)
  %5658 = extractvalue %dx.types.ResRet.f32 %5657, 0
  %5659 = add i32 %5640, 48
  %5660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5659, i32 undef)  ; BufferLoad(srv,index,wot)
  %5661 = extractvalue %dx.types.ResRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.ResRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.ResRet.f32 %5660, 2
  %5664 = extractvalue %dx.types.ResRet.f32 %5660, 3
  %5665 = add i32 %5640, 64
  %5666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5665, i32 undef)  ; BufferLoad(srv,index,wot)
  %5667 = extractvalue %dx.types.ResRet.f32 %5666, 0
  %5668 = extractvalue %dx.types.ResRet.f32 %5666, 1
  %5669 = extractvalue %dx.types.ResRet.f32 %5666, 2
  %5670 = extractvalue %dx.types.ResRet.f32 %5666, 3
  %5671 = add i32 %5640, 80
  %5672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5671, i32 undef)  ; BufferLoad(srv,index,wot)
  %5673 = extractvalue %dx.types.ResRet.f32 %5672, 1
  %5674 = extractvalue %dx.types.ResRet.f32 %5672, 2
  %5675 = add i32 %5640, 92
  %5676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5675, i32 undef)  ; BufferLoad(srv,index,wot)
  %5677 = extractvalue %dx.types.ResRet.i32 %5676, 0
  %5678 = call float @dx.op.dot3.f32(i32 55, float %5642, float %5643, float %5644, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = select i1 %237, float %5673, float %5642
  %5680 = select i1 %237, float %5678, float %5643
  %5681 = select i1 %237, float %5674, float %5644
  %5682 = and i32 %5677, 65535
  %5683 = uitofp i32 %5682 to float
  %5684 = lshr i32 %5677, 16
  %5685 = uitofp i32 %5684 to float
  %5686 = and i32 %5655, 65535
  %5687 = and i32 %5655, 50331648
  %5688 = icmp eq i32 %5687, 33554432
  %5689 = fsub fast float %5661, %146
  %5690 = fsub fast float %5662, %147
  %5691 = fsub fast float %5663, %148
  %5692 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5690, float %5691, float %5689, float %5690, float %5691)  ; Dot3(ax,ay,az,bx,by,bz)
  %5693 = call float @dx.op.unary.f32(i32 24, float %5692)  ; Sqrt(value)
  %5694 = fdiv fast float 1.000000e+00, %5693
  %5695 = fmul fast float %5694, %5689
  %5696 = fmul fast float %5694, %5690
  %5697 = fmul fast float %5694, %5691
  %5698 = fadd fast float %5693, %5647
  %5699 = fdiv fast float 1.000000e+00, %5698
  %5700 = fmul float %5658, %5699
  %5701 = fmul float %5700, %5700
  %5702 = call float @dx.op.unary.f32(i32 7, float %5701)  ; Saturate(value)
  br i1 %5688, label %5703, label %5724

; <label>:5703                                    ; preds = %5627
  %5704 = fmul fast float %5669, %5650
  %5705 = fmul fast float %5669, %5651
  %5706 = fmul fast float %5669, %5652
  %5707 = fadd fast float %5689, %5704
  %5708 = fadd fast float %5690, %5705
  %5709 = fadd fast float %5691, %5706
  %5710 = call float @dx.op.dot3.f32(i32 55, float %5707, float %5708, float %5709, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %5711 = call float @dx.op.unary.f32(i32 25, float %5710)  ; Rsqrt(value)
  %5712 = fmul fast float %5711, %5707
  %5713 = fmul fast float %5711, %5708
  %5714 = fmul fast float %5711, %5709
  %5715 = fsub fast float %146, %5661
  %5716 = fsub fast float %147, %5662
  %5717 = fsub fast float %148, %5663
  %5718 = fsub fast float -0.000000e+00, %5715
  %5719 = fsub fast float -0.000000e+00, %5716
  %5720 = fsub fast float -0.000000e+00, %5717
  %5721 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %5720, float %5650, float %5651, float %5652)  ; Dot3(ax,ay,az,bx,by,bz)
  %5722 = fcmp fast ogt float %5721, 0.000000e+00
  %5723 = uitofp i1 %5722 to float
  br label %5724

; <label>:5724                                    ; preds = %5703, %5627
  %5725 = phi float [ %5723, %5703 ], [ 1.000000e+00, %5627 ]
  %5726 = phi float [ %5712, %5703 ], [ %5695, %5627 ]
  %5727 = phi float [ %5713, %5703 ], [ %5696, %5627 ]
  %5728 = phi float [ %5714, %5703 ], [ %5697, %5627 ]
  %5729 = call float @dx.op.dot3.f32(i32 55, float %5650, float %5651, float %5652, float %5726, float %5727, float %5728)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = fmul fast float %5729, %5729
  %5731 = call float @dx.op.unary.f32(i32 7, float %5730)  ; Saturate(value)
  %5732 = fsub fast float 1.000000e+00, %5731
  %5733 = fmul fast float %5732, 5.000000e-01
  %5734 = fcmp fast ogt float %5729, 0.000000e+00
  %5735 = fsub fast float 1.000000e+00, %5733
  %5736 = select i1 %5734, float %5733, float %5735
  %5737 = fmul fast float %5736, %5685
  %5738 = fadd fast float %5737, %5683
  %5739 = fmul fast float %5738, 0x3EF0001000000000
  %5740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %5739, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5741 = extractvalue %dx.types.ResRet.f32 %5740, 0
  %5742 = fmul fast float %5729, %5667
  %5743 = fadd fast float %5742, %5668
  %5744 = call float @dx.op.unary.f32(i32 7, float %5743)  ; Saturate(value)
  %5745 = select i1 %5688, float 1.000000e+00, float %5744
  %5746 = select i1 %5688, float %5744, float 1.000000e+00
  %5747 = fmul fast float %5693, %5664
  %5748 = fsub fast float 1.000000e+00, %5747
  %5749 = fmul fast float %5748, %5670
  %5750 = call float @dx.op.unary.f32(i32 7, float %5749)  ; Saturate(value)
  %5751 = fmul fast float %5750, %5746
  %5752 = fmul fast float %5751, 2.000000e+00
  %5753 = fsub fast float 3.000000e+00, %5752
  %5754 = fmul fast float %5741, %5725
  %5755 = fmul fast float %5751, %5751
  %5756 = fmul fast float %5755, %5754
  %5757 = fmul fast float %5756, %5753
  %5758 = call float @dx.op.binary.f32(i32 36, float %5757, float %5757)  ; FMin(a,b)
  %5759 = call float @dx.op.binary.f32(i32 36, float %5757, float %5758)  ; FMin(a,b)
  %5760 = fcmp fast ogt float %5759, 0.000000e+00
  br i1 %5760, label %5769, label %5761, !dx.controlflow.hints !143

; <label>:5761                                    ; preds = %6153, %5915, %5724
  %5762 = phi float [ %5629, %5915 ], [ %5629, %5724 ], [ %6193, %6153 ]
  %5763 = phi float [ %5630, %5915 ], [ %5630, %5724 ], [ %6194, %6153 ]
  %5764 = phi float [ %5631, %5915 ], [ %5631, %5724 ], [ %6195, %6153 ]
  %5765 = phi float [ %5632, %5915 ], [ %5632, %5724 ], [ %6187, %6153 ]
  %5766 = phi float [ %5633, %5915 ], [ %5633, %5724 ], [ %6188, %6153 ]
  %5767 = phi float [ %5634, %5915 ], [ %5634, %5724 ], [ %6189, %6153 ]
  %5768 = icmp eq i32 %5628, %5638
  br i1 %5768, label %6196, label %5627

; <label>:5769                                    ; preds = %5724
  %5770 = icmp eq i32 %5686, 255
  br i1 %5770, label %5915, label %5771, !dx.controlflow.hints !144

; <label>:5771                                    ; preds = %5769
  %5772 = mul nuw nsw i32 %5686, 176
  %5773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5772, i32 undef)  ; BufferLoad(srv,index,wot)
  %5774 = extractvalue %dx.types.ResRet.f32 %5773, 0
  %5775 = extractvalue %dx.types.ResRet.f32 %5773, 1
  %5776 = extractvalue %dx.types.ResRet.f32 %5773, 2
  %5777 = extractvalue %dx.types.ResRet.f32 %5773, 3
  %5778 = add nuw nsw i32 %5772, 16
  %5779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5778, i32 undef)  ; BufferLoad(srv,index,wot)
  %5780 = extractvalue %dx.types.ResRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.ResRet.f32 %5779, 1
  %5782 = add nuw nsw i32 %5772, 32
  %5783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5782, i32 undef)  ; BufferLoad(srv,index,wot)
  %5784 = extractvalue %dx.types.ResRet.f32 %5783, 0
  %5785 = extractvalue %dx.types.ResRet.f32 %5783, 1
  %5786 = extractvalue %dx.types.ResRet.f32 %5783, 2
  %5787 = add nuw nsw i32 %5772, 48
  %5788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5787, i32 undef)  ; BufferLoad(srv,index,wot)
  %5789 = extractvalue %dx.types.ResRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.ResRet.f32 %5788, 1
  %5791 = extractvalue %dx.types.ResRet.f32 %5788, 2
  %5792 = extractvalue %dx.types.ResRet.f32 %5788, 3
  %5793 = add nuw nsw i32 %5772, 64
  %5794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5793, i32 undef)  ; BufferLoad(srv,index,wot)
  %5795 = extractvalue %dx.types.ResRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.ResRet.f32 %5794, 1
  %5797 = extractvalue %dx.types.ResRet.f32 %5794, 2
  %5798 = extractvalue %dx.types.ResRet.f32 %5794, 3
  %5799 = add nuw nsw i32 %5772, 80
  %5800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5799, i32 undef)  ; BufferLoad(srv,index,wot)
  %5801 = extractvalue %dx.types.ResRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.ResRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.ResRet.f32 %5800, 2
  %5804 = extractvalue %dx.types.ResRet.f32 %5800, 3
  %5805 = add nuw nsw i32 %5772, 96
  %5806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5805, i32 undef)  ; BufferLoad(srv,index,wot)
  %5807 = extractvalue %dx.types.ResRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.ResRet.f32 %5806, 1
  %5809 = extractvalue %dx.types.ResRet.f32 %5806, 2
  %5810 = extractvalue %dx.types.ResRet.f32 %5806, 3
  %5811 = bitcast float %5781 to i32
  %5812 = fmul fast float %5786, %76
  %5813 = fmul fast float %5786, %77
  %5814 = fmul fast float %5786, %78
  %5815 = fadd fast float %5812, %146
  %5816 = fadd fast float %5813, %147
  %5817 = fadd fast float %5814, %148
  %5818 = fmul fast float %5815, %5789
  %5819 = call float @dx.op.tertiary.f32(i32 46, float %5816, float %5795, float %5818)  ; FMad(a,b,c)
  %5820 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %5801, float %5819)  ; FMad(a,b,c)
  %5821 = fadd fast float %5820, %5807
  %5822 = fmul fast float %5815, %5790
  %5823 = call float @dx.op.tertiary.f32(i32 46, float %5816, float %5796, float %5822)  ; FMad(a,b,c)
  %5824 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %5802, float %5823)  ; FMad(a,b,c)
  %5825 = fadd fast float %5824, %5808
  %5826 = fmul fast float %5815, %5791
  %5827 = call float @dx.op.tertiary.f32(i32 46, float %5816, float %5797, float %5826)  ; FMad(a,b,c)
  %5828 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %5803, float %5827)  ; FMad(a,b,c)
  %5829 = fadd fast float %5828, %5809
  %5830 = fmul fast float %5815, %5792
  %5831 = call float @dx.op.tertiary.f32(i32 46, float %5816, float %5798, float %5830)  ; FMad(a,b,c)
  %5832 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %5804, float %5831)  ; FMad(a,b,c)
  %5833 = fadd fast float %5832, %5810
  %5834 = fdiv fast float %5821, %5833
  %5835 = fdiv fast float %5825, %5833
  %5836 = fdiv fast float %5829, %5833
  %5837 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5836)  ; FMax(a,b)
  %5838 = fmul fast float %248, 0x401921FB60000000
  %5839 = call float @dx.op.unary.f32(i32 13, float %5838)  ; Sin(value)
  %5840 = call float @dx.op.unary.f32(i32 12, float %5838)  ; Cos(value)
  %5841 = fmul fast float %5840, %5785
  %5842 = call float @dx.op.tertiary.f32(i32 46, float %5839, float %5785, float 0.000000e+00)  ; FMad(a,b,c)
  %5843 = fmul fast float %5785, %5839
  %5844 = fsub fast float -0.000000e+00, %5843
  %5845 = call float @dx.op.tertiary.f32(i32 46, float %5840, float %5785, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5846

; <label>:5846                                    ; preds = %5846, %5771
  %5847 = phi float [ 0.000000e+00, %5771 ], [ %5879, %5846 ]
  %5848 = phi float [ 0.000000e+00, %5771 ], [ %5881, %5846 ]
  %5849 = phi i32 [ 0, %5771 ], [ %5882, %5846 ]
  %5850 = mul i32 %5849, 2
  %5851 = add i32 0, %5850
  %5852 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5851
  %5853 = load float, float* %5852, align 4
  %5854 = mul i32 %5849, 2
  %5855 = add i32 1, %5854
  %5856 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5855
  %5857 = load float, float* %5856, align 4
  %5858 = fmul fast float %5841, %5853
  %5859 = call float @dx.op.tertiary.f32(i32 46, float %5857, float %5844, float %5858)  ; FMad(a,b,c)
  %5860 = fmul fast float %5853, %5842
  %5861 = call float @dx.op.tertiary.f32(i32 46, float %5857, float %5845, float %5860)  ; FMad(a,b,c)
  %5862 = fadd fast float %5859, %5834
  %5863 = fadd fast float %5861, %5835
  %5864 = fmul fast float %5862, %5780
  %5865 = fmul fast float %5863, %5780
  %5866 = call float @dx.op.binary.f32(i32 35, float %5864, float %5776)  ; FMax(a,b)
  %5867 = call float @dx.op.binary.f32(i32 35, float %5865, float %5776)  ; FMax(a,b)
  %5868 = call float @dx.op.binary.f32(i32 36, float %5866, float %5777)  ; FMin(a,b)
  %5869 = call float @dx.op.binary.f32(i32 36, float %5867, float %5777)  ; FMin(a,b)
  %5870 = fadd fast float %5868, %5774
  %5871 = fadd fast float %5869, %5775
  %5872 = uitofp i32 %5811 to float
  %5873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %5870, float %5871, float %5872, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5874 = extractvalue %dx.types.ResRet.f32 %5873, 0
  %5875 = fsub fast float %5874, %5837
  %5876 = fsub fast float %5875, %5784
  %5877 = fcmp fast ogt float %5876, 0.000000e+00
  %5878 = select i1 %5877, float 1.000000e+00, float 0.000000e+00
  %5879 = fadd fast float %5878, %5847
  %5880 = select i1 %5877, float %5876, float 0.000000e+00
  %5881 = fadd fast float %5880, %5848
  %5882 = add nuw nsw i32 %5849, 1
  %5883 = icmp eq i32 %5882, 8
  br i1 %5883, label %5884, label %5846

; <label>:5884                                    ; preds = %5846
  %5885 = fdiv fast float 1.000000e+00, %5879
  %5886 = fmul fast float %5885, %5881
  %5887 = fdiv fast float 1.000000e+00, %5837
  %5888 = fmul fast float %5886, %5887
  %5889 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5890 = call float @dx.op.binary.f32(i32 35, float %5889, float 0.000000e+00)  ; FMax(a,b)
  %5891 = fmul fast float %5879, 1.250000e-01
  %5892 = call float @dx.op.unary.f32(i32 7, float %5891)  ; Saturate(value)
  %5893 = fmul fast float %5892, 2.000000e+00
  %5894 = fadd fast float %5893, -1.000000e+00
  %5895 = fcmp fast ogt float %5894, 0.000000e+00
  %5896 = fcmp fast olt float %5894, 0.000000e+00
  %5897 = zext i1 %5895 to i32
  %5898 = zext i1 %5896 to i32
  %5899 = sub nsw i32 %5897, %5898
  %5900 = sitofp i32 %5899 to float
  %5901 = fmul fast float %5900, %5894
  %5902 = fsub fast float 1.000000e+00, %5901
  %5903 = fmul fast float %5902, %5902
  %5904 = fmul fast float %5903, %5902
  %5905 = fsub fast float %5902, %5904
  %5906 = fmul fast float %5905, %5890
  %5907 = fsub fast float 1.000000e+00, %5904
  %5908 = fsub fast float %5907, %5906
  %5909 = fmul fast float %5900, 5.000000e-01
  %5910 = fmul fast float %5909, %5908
  %5911 = fsub fast float -5.000000e-01, %5910
  %5912 = fmul fast float %5911, %5745
  %5913 = fadd fast float %5912, 1.000000e+00
  %5914 = fmul fast float %5913, %5757
  br label %5915

; <label>:5915                                    ; preds = %5884, %5769
  %5916 = phi float [ %5914, %5884 ], [ %5757, %5769 ]
  %5917 = call float @dx.op.binary.f32(i32 36, float %5916, float %5916)  ; FMin(a,b)
  %5918 = call float @dx.op.binary.f32(i32 36, float %5916, float %5917)  ; FMin(a,b)
  %5919 = fcmp fast ogt float %5918, 0.000000e+00
  br i1 %5919, label %5920, label %5761, !dx.controlflow.hints !145

; <label>:5920                                    ; preds = %5915
  %5921 = fmul fast float %5916, %5679
  %5922 = fmul fast float %5916, %5680
  %5923 = fmul fast float %5916, %5681
  %5924 = fsub fast float %5663, %1902
  %5925 = fcmp fast ogt float %5924, 0.000000e+00
  %5926 = fsub fast float %148, %1902
  %5927 = fcmp fast ogt float %5926, 0.000000e+00
  %5928 = xor i1 %5927, %5925
  %5929 = fsub fast float %1902, %5663
  %5930 = fmul fast float %5929, 2.000000e+00
  %5931 = fadd fast float %5930, %5663
  %5932 = select i1 %5928, float %5663, float %5931
  %5933 = fsub fast float %5932, %148
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5690, float %5933, float %5689, float %5690, float %5933)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = call float @dx.op.unary.f32(i32 25, float %5934)  ; Rsqrt(value)
  %5936 = fmul fast float %5935, %5689
  %5937 = fmul fast float %5935, %5690
  %5938 = fmul fast float %5935, %5933
  %5939 = fsub fast float %1902, %148
  %5940 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5939)  ; Dot3(ax,ay,az,bx,by,bz)
  %5941 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5936, float %5937, float %5938)  ; Dot3(ax,ay,az,bx,by,bz)
  %5942 = fdiv fast float 1.000000e+00, %5941
  %5943 = fmul fast float %5942, %5940
  %5944 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5926, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = fcmp fast ogt float %5944, 0.000000e+00
  %5946 = fcmp fast olt float %5944, 0.000000e+00
  %5947 = zext i1 %5945 to i32
  %5948 = zext i1 %5946 to i32
  %5949 = sub nsw i32 %5947, %5948
  %5950 = sitofp i32 %5949 to float
  %5951 = fsub fast float %5932, %1902
  %5952 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5690, float %5951, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5953 = fcmp fast ogt float %5952, 0.000000e+00
  %5954 = fcmp fast olt float %5952, 0.000000e+00
  %5955 = zext i1 %5953 to i32
  %5956 = zext i1 %5954 to i32
  %5957 = sub nsw i32 %5955, %5956
  %5958 = sitofp i32 %5957 to float
  %5959 = fcmp fast une float %5950, %5958
  br i1 %5959, label %5960, label %5970

; <label>:5960                                    ; preds = %5920
  %5961 = fmul fast float %5943, %5938
  %5962 = fmul fast float %5943, %5937
  %5963 = fmul fast float %5943, %5936
  %5964 = fmul fast float %5963, %5963
  %5965 = fmul fast float %5962, %5962
  %5966 = fadd fast float %5964, %5965
  %5967 = fmul fast float %5961, %5961
  %5968 = fadd fast float %5966, %5967
  %5969 = call float @dx.op.unary.f32(i32 24, float %5968)  ; Sqrt(value)
  br label %5982

; <label>:5970                                    ; preds = %5920
  %5971 = icmp slt i32 %5949, 0
  br i1 %5971, label %5972, label %5982

; <label>:5972                                    ; preds = %5970
  %5973 = fsub fast float %146, %5661
  %5974 = fsub fast float %147, %5662
  %5975 = fsub fast float %148, %5932
  %5976 = fmul fast float %5973, %5973
  %5977 = fmul fast float %5974, %5974
  %5978 = fadd fast float %5976, %5977
  %5979 = fmul fast float %5975, %5975
  %5980 = fadd fast float %5978, %5979
  %5981 = call float @dx.op.unary.f32(i32 24, float %5980)  ; Sqrt(value)
  br label %5982

; <label>:5982                                    ; preds = %5972, %5970, %5960
  %5983 = phi float [ %5969, %5960 ], [ %5981, %5972 ], [ 0.000000e+00, %5970 ]
  %5984 = and i1 %5927, %5925
  %5985 = fsub fast float -0.000000e+00, %5983
  %5986 = select i1 %5984, float -0.000000e+00, float %5985
  %5987 = fmul fast float %1903, 0x3FF7154760000000
  %5988 = fmul fast float %5987, %5986
  %5989 = fmul fast float %1904, 0x3FF7154760000000
  %5990 = fmul fast float %5989, %5986
  %5991 = fmul fast float %1905, 0x3FF7154760000000
  %5992 = fmul fast float %5991, %5986
  %5993 = call float @dx.op.unary.f32(i32 21, float %5988)  ; Exp(value)
  %5994 = call float @dx.op.unary.f32(i32 21, float %5990)  ; Exp(value)
  %5995 = call float @dx.op.unary.f32(i32 21, float %5992)  ; Exp(value)
  %5996 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  %5997 = call float @dx.op.unary.f32(i32 7, float %5994)  ; Saturate(value)
  %5998 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5999 = fmul fast float %5921, %5996
  %6000 = fmul fast float %5922, %5997
  %6001 = fmul fast float %5923, %5998
  %6002 = fsub fast float %5695, %2102
  %6003 = fsub fast float %5696, %2101
  %6004 = fsub fast float %5697, %2100
  %6005 = call float @dx.op.dot3.f32(i32 55, float %6002, float %6003, float %6004, float %6002, float %6003, float %6004)  ; Dot3(ax,ay,az,bx,by,bz)
  %6006 = call float @dx.op.unary.f32(i32 25, float %6005)  ; Rsqrt(value)
  %6007 = fmul fast float %6006, %6002
  %6008 = fmul fast float %6006, %6003
  %6009 = fmul fast float %6006, %6004
  %6010 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5696, float %5697, float %2106, float %2107, float %2108)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = call float @dx.op.dot3.f32(i32 55, float %2099, float %2098, float %2097, float %6007, float %6008, float %6009)  ; Dot3(ax,ay,az,bx,by,bz)
  %6012 = call float @dx.op.unary.f32(i32 7, float %6010)  ; Saturate(value)
  %6013 = fmul fast float %6012, %5702
  %6014 = fmul fast float %6012, %6012
  %6015 = fmul fast float %6014, %3990
  %6016 = call float @dx.op.unary.f32(i32 7, float %6015)  ; Saturate(value)
  %6017 = fmul fast float %6013, %6016
  %6018 = bitcast float %5692 to i32
  %6019 = ashr i32 %6018, 1
  %6020 = sub nsw i32 1597463007, %6019
  %6021 = bitcast i32 %6020 to float
  %6022 = fmul fast float %6021, %5689
  %6023 = fmul fast float %6021, %5690
  %6024 = fmul fast float %6021, %5691
  %6025 = fsub fast float %6022, %2102
  %6026 = fsub fast float %6023, %2101
  %6027 = fsub fast float %6024, %2100
  %6028 = call float @dx.op.dot3.f32(i32 55, float %6025, float %6026, float %6027, float %6025, float %6026, float %6027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6029 = call float @dx.op.unary.f32(i32 25, float %6028)  ; Rsqrt(value)
  %6030 = fmul fast float %6025, %6029
  %6031 = fmul fast float %6026, %6029
  %6032 = fmul fast float %6027, %6029
  %6033 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2107, float %2108, float %6030, float %6031, float %6032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = fmul fast float %6033, %6033
  %6035 = call float @dx.op.unary.f32(i32 6, float %6010)  ; FAbs(value)
  %6036 = fsub fast float 1.000000e+00, %2135
  %6037 = fmul fast float %2117, %2117
  %6038 = fmul fast float %6037, %6036
  %6039 = fadd fast float %6038, %2135
  %6040 = bitcast float %6039 to i32
  %6041 = ashr i32 %6040, 1
  %6042 = add nsw i32 %6041, 532487669
  %6043 = bitcast i32 %6042 to float
  %6044 = fadd fast float %6043, %2117
  %6045 = fmul fast float %2135, %6034
  %6046 = fsub fast float 1.000000e+00, %6034
  %6047 = fadd fast float %6046, %6045
  %6048 = fmul fast float %6035, %6035
  %6049 = fmul fast float %6048, %6036
  %6050 = fadd fast float %6049, %2135
  %6051 = bitcast float %6050 to i32
  %6052 = ashr i32 %6051, 1
  %6053 = add nsw i32 %6052, 532487669
  %6054 = bitcast i32 %6053 to float
  %6055 = fadd fast float %6054, %6035
  %6056 = fmul fast float %6047, %6047
  %6057 = fmul fast float %6056, %6044
  %6058 = fmul fast float %6057, %6055
  %6059 = fdiv fast float 1.000000e+00, %6058
  %6060 = bitcast float %2135 to i32
  %6061 = sitofp i32 %6060 to float
  %6062 = fmul fast float %6061, 0x3FE7F73180000000
  %6063 = fadd fast float %6062, 0x41AFE27C40000000
  %6064 = fptosi float %6063 to i32
  %6065 = bitcast i32 %6064 to float
  %6066 = fmul fast float %5658, 0x3FD80E9D60000000
  %6067 = fmul fast float %6066, %6021
  %6068 = fadd fast float %6065, %6067
  %6069 = bitcast float %6068 to i32
  %6070 = sub nsw i32 2129859010, %6069
  %6071 = bitcast i32 %6070 to float
  %6072 = fmul fast float %2135, %6059
  %6073 = fmul fast float %6072, %6065
  %6074 = fmul fast float %6073, %6071
  %6075 = call float @dx.op.unary.f32(i32 6, float %6011)  ; FAbs(value)
  %6076 = fsub fast float 1.000000e+00, %6075
  %6077 = bitcast float %6076 to i32
  %6078 = sitofp i32 %6077 to float
  %6079 = fmul fast float %6078, 5.000000e+00
  %6080 = fadd fast float %6079, 0xC1EFBF8940000000
  %6081 = fptosi float %6080 to i32
  %6082 = bitcast i32 %6081 to float
  %6083 = fsub fast float 1.000000e+00, %2103
  %6084 = fsub fast float 1.000000e+00, %2104
  %6085 = fsub fast float 1.000000e+00, %2115
  %6086 = fmul fast float %6082, %6083
  %6087 = fmul fast float %6082, %6084
  %6088 = fmul fast float %6082, %6085
  %6089 = fadd fast float %6086, %2103
  %6090 = fadd fast float %6087, %2104
  %6091 = fadd fast float %6088, %2115
  br i1 %3413, label %6092, label %6115

; <label>:6092                                    ; preds = %5982
  %6093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1480, float %6075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6094 = extractvalue %dx.types.ResRet.f32 %6093, 0
  %6095 = extractvalue %dx.types.ResRet.f32 %6093, 1
  %6096 = extractvalue %dx.types.ResRet.f32 %6093, 2
  %6097 = fadd fast float %6094, -5.000000e-01
  %6098 = fadd fast float %6095, -5.000000e-01
  %6099 = fadd fast float %6096, -5.000000e-01
  %6100 = fmul fast float %2103, 4.000000e+00
  %6101 = fmul fast float %6100, %6083
  %6102 = fmul fast float %6101, %6097
  %6103 = fmul fast float %2104, 4.000000e+00
  %6104 = fmul fast float %6103, %6084
  %6105 = fmul fast float %6104, %6098
  %6106 = fmul fast float %2115, 4.000000e+00
  %6107 = fmul fast float %6106, %6085
  %6108 = fmul fast float %6107, %6099
  %6109 = fadd fast float %6102, %6089
  %6110 = fadd fast float %6105, %6090
  %6111 = fadd fast float %6108, %6091
  %6112 = call float @dx.op.unary.f32(i32 7, float %6109)  ; Saturate(value)
  %6113 = call float @dx.op.unary.f32(i32 7, float %6110)  ; Saturate(value)
  %6114 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  br label %6115

; <label>:6115                                    ; preds = %6092, %5982
  %6116 = phi float [ %6112, %6092 ], [ %6089, %5982 ]
  %6117 = phi float [ %6113, %6092 ], [ %6090, %5982 ]
  %6118 = phi float [ %6114, %6092 ], [ %6091, %5982 ]
  %6119 = fmul fast float %6010, 9.843750e-01
  %6120 = fadd fast float %6119, 7.812500e-03
  %6121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6120, float %3403, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6122 = extractvalue %dx.types.ResRet.f32 %6121, 2
  %6123 = extractvalue %dx.types.ResRet.f32 %6121, 3
  %6124 = fmul fast float %6122, %2103
  %6125 = fmul fast float %6122, %2104
  %6126 = fmul fast float %6122, %2115
  %6127 = fadd fast float %6124, %6123
  %6128 = fadd fast float %6125, %6123
  %6129 = fadd fast float %6126, %6123
  br i1 %3413, label %6130, label %6153

; <label>:6130                                    ; preds = %6115
  %6131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1480, float %6010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6132 = extractvalue %dx.types.ResRet.f32 %6131, 0
  %6133 = extractvalue %dx.types.ResRet.f32 %6131, 1
  %6134 = extractvalue %dx.types.ResRet.f32 %6131, 2
  %6135 = fadd fast float %6132, -5.000000e-01
  %6136 = fadd fast float %6133, -5.000000e-01
  %6137 = fadd fast float %6134, -5.000000e-01
  %6138 = fmul fast float %2103, 4.000000e+00
  %6139 = fmul fast float %6138, %6083
  %6140 = fmul fast float %6139, %6135
  %6141 = fmul fast float %2104, 4.000000e+00
  %6142 = fmul fast float %6141, %6084
  %6143 = fmul fast float %6142, %6136
  %6144 = fmul fast float %2115, 4.000000e+00
  %6145 = fmul fast float %6144, %6085
  %6146 = fmul fast float %6145, %6137
  %6147 = fadd fast float %6140, %6127
  %6148 = fadd fast float %6143, %6128
  %6149 = fadd fast float %6146, %6129
  %6150 = call float @dx.op.unary.f32(i32 7, float %6147)  ; Saturate(value)
  %6151 = call float @dx.op.unary.f32(i32 7, float %6148)  ; Saturate(value)
  %6152 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  br label %6153

; <label>:6153                                    ; preds = %6130, %6115
  %6154 = phi float [ %6150, %6130 ], [ %6127, %6115 ]
  %6155 = phi float [ %6151, %6130 ], [ %6128, %6115 ]
  %6156 = phi float [ %6152, %6130 ], [ %6129, %6115 ]
  %6157 = call float @dx.op.binary.f32(i32 35, float %6155, float %6156)  ; FMax(a,b)
  %6158 = call float @dx.op.binary.f32(i32 35, float %6154, float %6157)  ; FMax(a,b)
  %6159 = fsub fast float 1.000000e+00, %6158
  %6160 = fmul fast float %6116, %6074
  %6161 = fmul fast float %6117, %6074
  %6162 = fmul fast float %6118, %6074
  %6163 = fsub fast float 1.000000e+00, %6011
  %6164 = bitcast float %6163 to i32
  %6165 = sitofp i32 %6164 to float
  %6166 = fmul fast float %6165, 5.000000e+00
  %6167 = fadd fast float %6166, 0xC1EFBF8940000000
  %6168 = fptosi float %6167 to i32
  %6169 = bitcast i32 %6168 to float
  %6170 = fmul fast float %6169, %1479
  %6171 = fmul fast float %6159, %6170
  %6172 = fmul fast float %6171, %3955
  %6173 = fmul fast float %6171, %3956
  %6174 = fmul fast float %6171, %3957
  %6175 = fadd fast float %6172, %6160
  %6176 = fadd fast float %6173, %6161
  %6177 = fadd fast float %6174, %6162
  %6178 = fmul fast float %5999, %1500
  %6179 = fmul fast float %6178, %6017
  %6180 = fmul fast float %6179, %6159
  %6181 = fmul fast float %6000, %1500
  %6182 = fmul fast float %6181, %6017
  %6183 = fmul fast float %6182, %6159
  %6184 = fmul fast float %6001, %1500
  %6185 = fmul fast float %6184, %6017
  %6186 = fmul fast float %6185, %6159
  %6187 = fadd fast float %6180, %5632
  %6188 = fadd fast float %6183, %5633
  %6189 = fadd fast float %6186, %5634
  %6190 = fmul fast float %6179, %6175
  %6191 = fmul fast float %6182, %6176
  %6192 = fmul fast float %6185, %6177
  %6193 = fadd fast float %6190, %5629
  %6194 = fadd fast float %6191, %5630
  %6195 = fadd fast float %6192, %5631
  br label %5761

; <label>:6196                                    ; preds = %5761
  br label %6197

; <label>:6197                                    ; preds = %6196, %5595
  %6198 = phi float [ %5597, %5595 ], [ %5762, %6196 ]
  %6199 = phi float [ %5598, %5595 ], [ %5763, %6196 ]
  %6200 = phi float [ %5599, %5595 ], [ %5764, %6196 ]
  %6201 = phi float [ %5600, %5595 ], [ %5765, %6196 ]
  %6202 = phi float [ %5601, %5595 ], [ %5766, %6196 ]
  %6203 = phi float [ %5602, %5595 ], [ %5767, %6196 ]
  %6204 = add i32 %5596, 1
  %6205 = icmp ugt i32 %6204, %5592
  br i1 %6205, label %6206, label %5595

; <label>:6206                                    ; preds = %6197
  br label %6207

; <label>:6207                                    ; preds = %6206, %5545, %5535
  %6208 = phi float [ %5536, %5535 ], [ %5536, %5545 ], [ %6198, %6206 ]
  %6209 = phi float [ %5537, %5535 ], [ %5537, %5545 ], [ %6199, %6206 ]
  %6210 = phi float [ %5538, %5535 ], [ %5538, %5545 ], [ %6200, %6206 ]
  %6211 = phi float [ %5539, %5535 ], [ %5539, %5545 ], [ %6201, %6206 ]
  %6212 = phi float [ %5540, %5535 ], [ %5540, %5545 ], [ %6202, %6206 ]
  %6213 = phi float [ %5541, %5535 ], [ %5541, %5545 ], [ %6203, %6206 ]
  %6214 = fmul fast float %1500, %1500
  %6215 = fsub fast float 1.000000e+00, %6214
  %6216 = call float @dx.op.dot3.f32(i32 55, float %6215, float %6215, float %6215, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6217 = fsub fast float 1.000000e+00, %6216
  %6218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6219 = extractvalue %dx.types.CBufRet.f32 %6218, 0
  %6220 = fmul fast float %6219, %3961
  %6221 = fmul fast float %2108, 2.000000e+00
  %6222 = fmul fast float %6221, %2118
  %6223 = fsub fast float %2100, %6222
  %6224 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6225 = fsub fast float 1.000000e+00, %6224
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 3
  %6228 = fmul fast float %6227, %6225
  %6229 = fsub fast float 1.000000e+00, %1478
  %6230 = call float @dx.op.unary.f32(i32 7, float %6229)  ; Saturate(value)
  %6231 = fadd fast float %6213, %1477
  %6232 = fmul fast float %6231, %1478
  %6233 = fmul fast float %6228, %6230
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6236 = fmul fast float %6211, %2109
  %6237 = fmul fast float %6212, %2110
  %6238 = fmul fast float %6213, %2111
  %6239 = fcmp fast ogt float %87, %197
  %6240 = and i1 %6239, %1908
  %6241 = or i1 %1914, %6240
  %6242 = icmp eq i32 %1907, 2
  %6243 = fcmp fast ole float %87, %197
  %6244 = and i1 %6243, %6242
  %6245 = or i1 %6244, %6241
  br i1 %6240, label %6246, label %6505

; <label>:6246                                    ; preds = %6207
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6249 = extractvalue %dx.types.CBufRet.f32 %6247, 3
  %6250 = fmul fast float %6248, %99
  %6251 = fmul fast float %6249, %100
  %6252 = call float @dx.op.unary.f32(i32 7, float %6250)  ; Saturate(value)
  %6253 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6254 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6252, float %6253, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6255 = extractvalue %dx.types.ResRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.ResRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.ResRet.f32 %6254, 2
  %6258 = extractvalue %dx.types.ResRet.f32 %6254, 3
  %6259 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6252, float %6253, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.ResRet.f32 %6259, 2
  %6263 = extractvalue %dx.types.ResRet.f32 %6259, 3
  %6264 = call float @dx.op.binary.f32(i32 35, float %6256, float %6257)  ; FMax(a,b)
  %6265 = call float @dx.op.binary.f32(i32 35, float %6255, float %6264)  ; FMax(a,b)
  %6266 = call float @dx.op.binary.f32(i32 35, float %6265, float %6258)  ; FMax(a,b)
  %6267 = call float @dx.op.binary.f32(i32 36, float %6261, float %6262)  ; FMin(a,b)
  %6268 = call float @dx.op.binary.f32(i32 36, float %6260, float %6267)  ; FMin(a,b)
  %6269 = call float @dx.op.binary.f32(i32 36, float %6268, float %6263)  ; FMin(a,b)
  %6270 = fmul fast float %6266, 2.550000e+02
  %6271 = fadd fast float %6270, 0x3F70101020000000
  %6272 = fptoui float %6271 to i32
  %6273 = fmul fast float %6269, 2.550000e+02
  %6274 = fadd fast float %6273, 0x3F70101020000000
  %6275 = fptoui float %6274 to i32
  %6276 = icmp ult i32 %6272, %6275
  br i1 %6276, label %6277, label %6445

; <label>:6277                                    ; preds = %6246
  %6278 = fcmp fast ogt float %86, 9.843750e-01
  %6279 = fadd fast float %87, -4.000000e+00
  %6280 = select i1 %6278, float -4.000000e+00, float %6279
  %6281 = call float @dx.op.binary.f32(i32 35, float %6280, float 0.000000e+00)  ; FMax(a,b)
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 0
  %6284 = fadd fast float %6283, %6281
  %6285 = extractvalue %dx.types.CBufRet.f32 %6282, 2
  %6286 = fmul fast float %6284, %6285
  %6287 = call float @dx.op.unary.f32(i32 23, float %6286)  ; Log(value)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6282, 3
  %6289 = fmul fast float %6288, %6287
  %6290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6290, 2
  %6292 = fmul fast float %6289, %6291
  %6293 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  %6294 = uitofp i32 %6272 to float
  %6295 = uitofp i32 %6275 to float
  %6296 = fadd fast float %6294, 5.000000e-01
  %6297 = fadd fast float %6295, 5.000000e-01
  %6298 = fmul fast float %6291, %6296
  %6299 = fmul fast float %6291, %6297
  %6300 = fadd fast float %6298, 0x3F0FFB4800000000
  %6301 = fadd fast float %6299, 0xBF0FFB4800000000
  %6302 = call float @dx.op.binary.f32(i32 35, float %6293, float %6300)  ; FMax(a,b)
  %6303 = call float @dx.op.binary.f32(i32 36, float %6302, float %6301)  ; FMin(a,b)
  %6304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6305 = extractvalue %dx.types.CBufRet.f32 %6304, 1
  %6306 = extractvalue %dx.types.CBufRet.f32 %6304, 2
  %6307 = extractvalue %dx.types.CBufRet.f32 %6304, 0
  %6308 = fmul fast float %6305, %6303
  %6309 = fadd fast float %6307, %6308
  %6310 = fadd fast float %6307, %6306
  %6311 = fsub fast float %6305, %6306
  %6312 = fadd fast float %6311, %6307
  %6313 = call float @dx.op.binary.f32(i32 35, float %6309, float %6310)  ; FMax(a,b)
  %6314 = call float @dx.op.binary.f32(i32 36, float %6313, float %6312)  ; FMin(a,b)
  %6315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6252, float %6253, float %6314, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6316 = extractvalue %dx.types.ResRet.f32 %6315, 0
  %6317 = extractvalue %dx.types.ResRet.f32 %6315, 1
  %6318 = extractvalue %dx.types.ResRet.f32 %6315, 2
  %6319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.i32 %6319, 0
  %6321 = extractvalue %dx.types.CBufRet.i32 %6319, 1
  %6322 = uitofp i32 %6320 to float
  %6323 = uitofp i32 %6321 to float
  %6324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6325 = extractvalue %dx.types.CBufRet.f32 %6324, 0
  %6326 = extractvalue %dx.types.CBufRet.f32 %6324, 1
  %6327 = fmul fast float %6322, %6252
  %6328 = fmul fast float %6323, %6253
  %6329 = fadd fast float %6327, -5.000000e-01
  %6330 = fadd fast float %6328, -5.000000e-01
  %6331 = call float @dx.op.unary.f32(i32 22, float %6329)  ; Frc(value)
  %6332 = call float @dx.op.unary.f32(i32 22, float %6330)  ; Frc(value)
  %6333 = fmul fast float %6331, %6331
  %6334 = fmul fast float %6333, %6331
  %6335 = fsub fast float 3.000000e+00, %6331
  %6336 = fmul fast float %6333, %6335
  %6337 = fmul fast float %6331, 3.000000e+00
  %6338 = fmul fast float %6334, 3.000000e+00
  %6339 = fmul fast float %6333, 6.000000e+00
  %6340 = fsub fast float %6338, %6339
  %6341 = fadd fast float %6340, 4.000000e+00
  %6342 = fmul fast float %6341, 0x3FC5555560000000
  %6343 = fmul fast float %6334, -3.000000e+00
  %6344 = fadd fast float %6333, %6331
  %6345 = fmul fast float %6344, 3.000000e+00
  %6346 = fadd fast float %6343, 1.000000e+00
  %6347 = fadd fast float %6346, %6345
  %6348 = fmul fast float %6334, 0x3FC5555560000000
  %6349 = fmul fast float %6332, %6332
  %6350 = fmul fast float %6349, %6332
  %6351 = fsub fast float 3.000000e+00, %6332
  %6352 = fmul fast float %6349, %6351
  %6353 = fmul fast float %6332, 3.000000e+00
  %6354 = fmul fast float %6350, 3.000000e+00
  %6355 = fmul fast float %6349, 6.000000e+00
  %6356 = fsub fast float %6354, %6355
  %6357 = fadd fast float %6356, 4.000000e+00
  %6358 = fmul fast float %6357, 0x3FC5555560000000
  %6359 = fmul fast float %6350, -3.000000e+00
  %6360 = fadd fast float %6349, %6332
  %6361 = fmul fast float %6360, 3.000000e+00
  %6362 = fadd fast float %6359, 1.000000e+00
  %6363 = fadd fast float %6362, %6361
  %6364 = fmul fast float %6350, 0x3FC5555560000000
  %6365 = fadd fast float %6331, 1.000000e+00
  %6366 = fsub fast float 1.000000e+00, %6337
  %6367 = fadd fast float %6366, %6336
  %6368 = fadd fast float %6367, %6341
  %6369 = fmul fast float %6368, 0x3FC5555560000000
  %6370 = fdiv fast float %6342, %6369
  %6371 = fsub fast float %6365, %6370
  %6372 = fsub fast float 1.000000e+00, %6331
  %6373 = fadd fast float %6347, %6334
  %6374 = fmul fast float %6373, 0x3FC5555560000000
  %6375 = fdiv fast float %6348, %6374
  %6376 = fadd fast float %6372, %6375
  %6377 = fadd fast float %6332, 1.000000e+00
  %6378 = fsub fast float 1.000000e+00, %6353
  %6379 = fadd fast float %6378, %6352
  %6380 = fadd fast float %6379, %6357
  %6381 = fmul fast float %6380, 0x3FC5555560000000
  %6382 = fdiv fast float %6358, %6381
  %6383 = fsub fast float %6377, %6382
  %6384 = fsub fast float 1.000000e+00, %6332
  %6385 = fadd fast float %6363, %6350
  %6386 = fmul fast float %6385, 0x3FC5555560000000
  %6387 = fdiv fast float %6364, %6386
  %6388 = fadd fast float %6387, %6384
  %6389 = fmul fast float %6371, %6325
  %6390 = fsub fast float %6252, %6389
  %6391 = fmul fast float %6376, %6325
  %6392 = fadd fast float %6391, %6252
  %6393 = fmul fast float %6388, %6326
  %6394 = fadd fast float %6393, %6253
  %6395 = fmul fast float %6383, %6326
  %6396 = fsub fast float %6253, %6395
  %6397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6390, float %6396, float %6314, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6398 = extractvalue %dx.types.ResRet.f32 %6397, 0
  %6399 = extractvalue %dx.types.ResRet.f32 %6397, 1
  %6400 = extractvalue %dx.types.ResRet.f32 %6397, 2
  %6401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6392, float %6396, float %6314, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.ResRet.f32 %6401, 1
  %6404 = extractvalue %dx.types.ResRet.f32 %6401, 2
  %6405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6390, float %6394, float %6314, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.ResRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.ResRet.f32 %6405, 2
  %6409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6392, float %6394, float %6314, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6410 = extractvalue %dx.types.ResRet.f32 %6409, 0
  %6411 = extractvalue %dx.types.ResRet.f32 %6409, 1
  %6412 = extractvalue %dx.types.ResRet.f32 %6409, 2
  %6413 = fsub fast float %6406, %6398
  %6414 = fsub fast float %6407, %6399
  %6415 = fsub fast float %6408, %6400
  %6416 = fmul fast float %6413, %6386
  %6417 = fmul fast float %6414, %6386
  %6418 = fmul fast float %6415, %6386
  %6419 = fadd fast float %6416, %6398
  %6420 = fadd fast float %6417, %6399
  %6421 = fadd fast float %6418, %6400
  %6422 = fsub fast float %6410, %6402
  %6423 = fsub fast float %6411, %6403
  %6424 = fsub fast float %6412, %6404
  %6425 = fmul fast float %6422, %6386
  %6426 = fmul fast float %6423, %6386
  %6427 = fmul fast float %6424, %6386
  %6428 = fsub fast float %6402, %6419
  %6429 = fadd fast float %6428, %6425
  %6430 = fsub fast float %6403, %6420
  %6431 = fadd fast float %6430, %6426
  %6432 = fsub fast float %6404, %6421
  %6433 = fadd fast float %6432, %6427
  %6434 = fmul fast float %6429, %6374
  %6435 = fmul fast float %6431, %6374
  %6436 = fmul fast float %6433, %6374
  %6437 = fadd fast float %6434, %6419
  %6438 = fadd fast float %6435, %6420
  %6439 = fadd fast float %6436, %6421
  %6440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6441 = extractvalue %dx.types.CBufRet.f32 %6440, 1
  %6442 = fmul fast float %6437, %6441
  %6443 = fmul fast float %6438, %6441
  %6444 = fmul fast float %6439, %6441
  br label %6445

; <label>:6445                                    ; preds = %6277, %6246
  %6446 = phi float [ %6316, %6277 ], [ 1.000000e+00, %6246 ]
  %6447 = phi float [ %6317, %6277 ], [ 1.000000e+00, %6246 ]
  %6448 = phi float [ %6318, %6277 ], [ 1.000000e+00, %6246 ]
  %6449 = phi float [ %6442, %6277 ], [ 0.000000e+00, %6246 ]
  %6450 = phi float [ %6443, %6277 ], [ 0.000000e+00, %6246 ]
  %6451 = phi float [ %6444, %6277 ], [ 0.000000e+00, %6246 ]
  %6452 = fmul fast float %6449, %6217
  %6453 = fmul fast float %6450, %6217
  %6454 = fmul fast float %6451, %6217
  %6455 = call float @dx.op.dot3.f32(i32 55, float %6446, float %6447, float %6448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6456 = call float @dx.op.dot3.f32(i32 55, float %6452, float %6453, float %6454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6457 = select i1 %237, float %6455, float %6446
  %6458 = select i1 %237, float %6455, float %6447
  %6459 = select i1 %237, float 1.000000e+00, float %6448
  %6460 = select i1 %237, float %6456, float %6452
  %6461 = select i1 %237, float 0.000000e+00, float %6453
  %6462 = select i1 %237, float 0.000000e+00, float %6454
  %6463 = fmul fast float %6457, %6236
  %6464 = fmul fast float %6458, %6237
  %6465 = fmul fast float %6459, %6238
  %6466 = fadd fast float %6463, %6460
  %6467 = fadd fast float %6464, %6461
  %6468 = fadd fast float %6462, %6465
  %6469 = fmul fast float %6457, %6208
  %6470 = fmul fast float %6458, %6209
  %6471 = fmul fast float %6459, %6210
  %6472 = fmul fast float %99, 2.000000e+00
  %6473 = fmul fast float %6472, %6248
  %6474 = fmul fast float %100, 2.000000e+00
  %6475 = fmul fast float %6474, %6249
  %6476 = fsub fast float 1.000000e+00, %6473
  %6477 = fsub fast float 1.000000e+00, %6475
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 0
  %6480 = extractvalue %dx.types.CBufRet.f32 %6478, 1
  %6481 = extractvalue %dx.types.CBufRet.f32 %6478, 2
  %6482 = fmul fast float %6476, %6479
  %6483 = fmul fast float %6476, %6480
  %6484 = fmul fast float %6476, %6481
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 0
  %6487 = extractvalue %dx.types.CBufRet.f32 %6485, 1
  %6488 = extractvalue %dx.types.CBufRet.f32 %6485, 2
  %6489 = fmul fast float %6477, %6486
  %6490 = fmul fast float %6477, %6487
  %6491 = fmul fast float %6477, %6488
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.CBufRet.f32 %6492, 1
  %6495 = extractvalue %dx.types.CBufRet.f32 %6492, 2
  %6496 = fadd fast float %6489, %6493
  %6497 = fadd fast float %6496, %6482
  %6498 = fadd fast float %6490, %6494
  %6499 = fadd fast float %6498, %6483
  %6500 = fadd fast float %6491, %6495
  %6501 = fadd fast float %6500, %6484
  %6502 = fmul fast float %6497, %197
  %6503 = fmul fast float %6499, %197
  %6504 = fmul fast float %6501, %197
  br label %6505

; <label>:6505                                    ; preds = %6445, %6207
  %6506 = phi float [ %6502, %6445 ], [ %146, %6207 ]
  %6507 = phi float [ %6503, %6445 ], [ %147, %6207 ]
  %6508 = phi float [ %6504, %6445 ], [ %148, %6207 ]
  %6509 = phi float [ %197, %6445 ], [ %87, %6207 ]
  %6510 = phi float [ %6466, %6445 ], [ %6236, %6207 ]
  %6511 = phi float [ %6467, %6445 ], [ %6237, %6207 ]
  %6512 = phi float [ %6468, %6445 ], [ %6238, %6207 ]
  %6513 = phi float [ %6469, %6445 ], [ %6208, %6207 ]
  %6514 = phi float [ %6470, %6445 ], [ %6209, %6207 ]
  %6515 = phi float [ %6471, %6445 ], [ %6210, %6207 ]
  %6516 = phi float [ %6446, %6445 ], [ 1.000000e+00, %6207 ]
  br i1 %6245, label %7671, label %6517

; <label>:6517                                    ; preds = %6505
  %6518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.CBufRet.f32 %6518, 1
  %6521 = extractvalue %dx.types.CBufRet.f32 %6518, 2
  %6522 = extractvalue %dx.types.CBufRet.f32 %6518, 3
  %6523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6524 = extractvalue %dx.types.CBufRet.f32 %6523, 0
  %6525 = extractvalue %dx.types.CBufRet.f32 %6523, 1
  %6526 = extractvalue %dx.types.CBufRet.f32 %6523, 2
  %6527 = extractvalue %dx.types.CBufRet.f32 %6523, 3
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  %6530 = extractvalue %dx.types.CBufRet.f32 %6528, 1
  %6531 = extractvalue %dx.types.CBufRet.f32 %6528, 2
  %6532 = extractvalue %dx.types.CBufRet.f32 %6528, 3
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 0
  %6535 = extractvalue %dx.types.CBufRet.f32 %6533, 1
  %6536 = extractvalue %dx.types.CBufRet.f32 %6533, 2
  %6537 = extractvalue %dx.types.CBufRet.f32 %6533, 3
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 3
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 3
  %6542 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6543 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6544 = extractvalue %dx.types.CBufRet.f32 %6540, 2
  %6545 = fcmp fast olt float %6544, -5.000000e-01
  %6546 = call float @dx.op.dot3.f32(i32 55, float %6506, float %6507, float %6508, float %6506, float %6507, float %6508)  ; Dot3(ax,ay,az,bx,by,bz)
  %6547 = call float @dx.op.unary.f32(i32 25, float %6546)  ; Rsqrt(value)
  %6548 = fmul fast float %6547, %6546
  %6549 = fmul fast float %6547, %6506
  %6550 = fmul fast float %6547, %6507
  %6551 = fmul fast float %6547, %6508
  %6552 = fadd fast float %6548, %6522
  %6553 = call float @dx.op.dot3.f32(i32 55, float %6549, float %6550, float %6551, float %6519, float %6520, float %6521)  ; Dot3(ax,ay,az,bx,by,bz)
  %6554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6555 = extractvalue %dx.types.CBufRet.i32 %6554, 1
  %6556 = and i32 %6555, 1
  %6557 = icmp ne i32 %6556, 0
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 2
  %6560 = fcmp fast ogt float %6559, 0.000000e+00
  %6561 = and i1 %6557, %6560
  br i1 %6561, label %6562, label %6968, !dx.controlflow.hints !146

; <label>:6562                                    ; preds = %6517
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 3
  %6565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6566 = extractvalue %dx.types.CBufRet.f32 %6565, 2
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 2
  %6569 = fsub fast float %6566, %6568
  %6570 = and i32 %6555, 2
  %6571 = extractvalue %dx.types.CBufRet.i32 %6554, 0
  %6572 = call i32 @dx.op.binary.i32(i32 40, i32 %6571, i32 3)  ; UMin(a,b)
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6575 = extractvalue %dx.types.CBufRet.f32 %6573, 1
  %6576 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  %6577 = extractvalue %dx.types.CBufRet.f32 %6567, 1
  %6578 = fsub fast float %6574, %6576
  %6579 = fsub fast float %6575, %6577
  %6580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6580, 0
  %6582 = fcmp fast ogt float %6581, 0.000000e+00
  %6583 = fsub fast float -0.000000e+00, %6578
  %6584 = fsub fast float -0.000000e+00, %6579
  %6585 = call float @dx.op.dot2.f32(i32 54, float %6549, float %6550, float %6549, float %6550)  ; Dot2(ax,ay,bx,by)
  %6586 = call float @dx.op.dot2.f32(i32 54, float %6549, float %6550, float %6583, float %6584)  ; Dot2(ax,ay,bx,by)
  %6587 = fmul fast float %6586, 2.000000e+00
  %6588 = call float @dx.op.dot2.f32(i32 54, float %6583, float %6584, float %6583, float %6584)  ; Dot2(ax,ay,bx,by)
  %6589 = fmul fast float %6581, %6581
  %6590 = fsub fast float %6588, %6589
  %6591 = fmul fast float %6587, %6587
  %6592 = fmul fast float %6585, 4.000000e+00
  %6593 = fmul fast float %6592, %6590
  %6594 = fsub fast float %6591, %6593
  %6595 = fcmp fast ogt float %6594, 0.000000e+00
  br i1 %6595, label %6596, label %6611

; <label>:6596                                    ; preds = %6562
  %6597 = fcmp fast ogt float %6587, 0.000000e+00
  %6598 = call float @dx.op.unary.f32(i32 24, float %6594)  ; Sqrt(value)
  %6599 = fsub fast float -0.000000e+00, %6598
  %6600 = select i1 %6597, float %6598, float %6599
  %6601 = fadd fast float %6600, %6587
  %6602 = fmul float %6601, -5.000000e-01
  %6603 = fdiv fast float %6602, %6585
  %6604 = call float @dx.op.binary.f32(i32 35, float %6603, float 0.000000e+00)  ; FMax(a,b)
  %6605 = call float @dx.op.binary.f32(i32 36, float %6548, float %6604)  ; FMin(a,b)
  %6606 = fdiv fast float %6590, %6602
  %6607 = call float @dx.op.binary.f32(i32 35, float %6606, float 0.000000e+00)  ; FMax(a,b)
  %6608 = call float @dx.op.binary.f32(i32 36, float %6548, float %6607)  ; FMin(a,b)
  %6609 = call float @dx.op.binary.f32(i32 36, float %6605, float %6608)  ; FMin(a,b)
  %6610 = call float @dx.op.binary.f32(i32 35, float %6605, float %6608)  ; FMax(a,b)
  br label %6611

; <label>:6611                                    ; preds = %6596, %6562
  %6612 = phi float [ %6610, %6596 ], [ -1.000000e+00, %6562 ]
  %6613 = phi float [ %6609, %6596 ], [ -1.000000e+00, %6562 ]
  %6614 = phi i1 [ true, %6596 ], [ false, %6562 ]
  %6615 = and i1 %6582, %6614
  br i1 %6615, label %6616, label %6618

; <label>:6616                                    ; preds = %6611
  %6617 = fcmp fast oeq float %6613, %6612
  br i1 %6617, label %6921, label %6619

; <label>:6618                                    ; preds = %6611
  br i1 %6582, label %6921, label %6619

; <label>:6619                                    ; preds = %6618, %6616
  %6620 = phi float [ %6548, %6618 ], [ %6612, %6616 ]
  %6621 = phi float [ 0.000000e+00, %6618 ], [ %6613, %6616 ]
  %6622 = icmp ne i32 %6570, 0
  %6623 = fmul fast float %6620, %6551
  %6624 = fadd fast float %6623, %6564
  %6625 = fmul fast float %6624, %6620
  %6626 = select i1 %6622, float 0.000000e+00, float %6625
  %6627 = fcmp fast oeq float %6551, 0.000000e+00
  %6628 = fdiv fast float %6569, %6551
  %6629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6628)  ; FMax(a,b)
  %6630 = select i1 %6627, float %6620, float %6629
  %6631 = call float @dx.op.binary.f32(i32 36, float %6620, float %6630)  ; FMin(a,b)
  %6632 = fcmp fast ogt float %6551, 0.000000e+00
  %6633 = fcmp fast olt float %6569, 0.000000e+00
  br i1 %6632, label %6634, label %6691

; <label>:6634                                    ; preds = %6619
  %6635 = icmp eq i32 %6570, 0
  br i1 %6633, label %6636, label %6680

; <label>:6636                                    ; preds = %6634
  %6637 = select i1 %6635, float %6620, float 0.000000e+00
  %6638 = fsub fast float -0.000000e+00, %6637
  %6639 = call float @dx.op.unary.f32(i32 6, float %6638)  ; FAbs(value)
  %6640 = fmul fast float %6637, %6551
  %6641 = fadd fast float %6640, %6564
  %6642 = fmul fast float %6639, %6641
  %6643 = fsub fast float %6626, %6642
  %6644 = fsub fast float %6620, %6639
  %6645 = select i1 %6635, float %6644, float 0.000000e+00
  %6646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6647 = extractvalue %dx.types.CBufRet.f32 %6646, 0
  %6648 = extractvalue %dx.types.CBufRet.f32 %6646, 1
  %6649 = extractvalue %dx.types.CBufRet.f32 %6646, 2
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 0
  %6652 = extractvalue %dx.types.CBufRet.f32 %6650, 1
  %6653 = extractvalue %dx.types.CBufRet.f32 %6650, 2
  %6654 = extractvalue %dx.types.CBufRet.f32 %6650, 3
  %6655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6656 = extractvalue %dx.types.CBufRet.f32 %6655, 3
  %6657 = call float @dx.op.binary.f32(i32 36, float %6643, float %6656)  ; FMin(a,b)
  %6658 = fmul fast float %6654, %6645
  %6659 = call float @dx.op.unary.f32(i32 7, float %6658)  ; Saturate(value)
  %6660 = fsub fast float %6651, %6647
  %6661 = fsub fast float %6652, %6648
  %6662 = fsub fast float %6653, %6649
  %6663 = fmul fast float %6659, %6660
  %6664 = fmul fast float %6659, %6661
  %6665 = fmul fast float %6659, %6662
  %6666 = fadd fast float %6663, %6647
  %6667 = fadd fast float %6664, %6648
  %6668 = fadd fast float %6665, %6649
  %6669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6670 = extractvalue %dx.types.CBufRet.f32 %6669, 0
  %6671 = extractvalue %dx.types.CBufRet.f32 %6669, 1
  %6672 = fadd fast float %6671, %6670
  %6673 = call float @dx.op.unary.f32(i32 7, float %6672)  ; Saturate(value)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6669, 2
  %6675 = extractvalue %dx.types.CBufRet.f32 %6669, 3
  %6676 = fadd fast float %6675, %6674
  %6677 = call float @dx.op.unary.f32(i32 7, float %6676)  ; Saturate(value)
  %6678 = fmul fast float %6673, %6657
  %6679 = fmul fast float %6678, %6677
  br label %6921

; <label>:6680                                    ; preds = %6634
  br i1 %6635, label %6681, label %6702

; <label>:6681                                    ; preds = %6680
  %6682 = call float @dx.op.binary.f32(i32 36, float %6631, float %6621)  ; FMin(a,b)
  %6683 = fsub fast float %6631, %6682
  %6684 = fsub fast float %6683, %6620
  %6685 = call float @dx.op.unary.f32(i32 6, float %6684)  ; FAbs(value)
  %6686 = fadd fast float %6683, %6620
  %6687 = fmul fast float %6686, %6551
  %6688 = fadd fast float %6687, %6564
  %6689 = fmul fast float %6688, %6685
  %6690 = fsub fast float %6626, %6689
  br label %6702

; <label>:6691                                    ; preds = %6619
  br i1 %6633, label %6692, label %6702

; <label>:6692                                    ; preds = %6691
  %6693 = call float @dx.op.binary.f32(i32 35, float %6621, float %6631)  ; FMax(a,b)
  %6694 = icmp eq i32 %6570, 0
  %6695 = select i1 %6694, float %6631, float 0.000000e+00
  %6696 = fsub fast float -0.000000e+00, %6695
  %6697 = call float @dx.op.unary.f32(i32 6, float %6696)  ; FAbs(value)
  %6698 = fmul fast float %6695, %6551
  %6699 = fadd fast float %6698, %6564
  %6700 = fmul fast float %6697, %6699
  %6701 = fsub fast float %6626, %6700
  br label %6702

; <label>:6702                                    ; preds = %6692, %6691, %6681, %6680
  %6703 = phi float [ %6621, %6680 ], [ %6621, %6681 ], [ %6693, %6692 ], [ %6621, %6691 ]
  %6704 = phi float [ 0.000000e+00, %6680 ], [ %6685, %6681 ], [ %6697, %6692 ], [ 0.000000e+00, %6691 ]
  %6705 = phi float [ %6626, %6680 ], [ %6690, %6681 ], [ %6701, %6692 ], [ %6626, %6691 ]
  %6706 = phi float [ %6631, %6680 ], [ %6631, %6681 ], [ %6620, %6692 ], [ %6620, %6691 ]
  %6707 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %6707, align 4, !tbaa !133, !noalias !147
  %6708 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %6708, align 4, !tbaa !133, !noalias !147
  %6709 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %6709, align 4, !tbaa !133, !noalias !147
  %6710 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %6710, align 4, !tbaa !133, !noalias !147
  %6711 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %6711, align 4, !tbaa !133, !noalias !147
  %6712 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %6712, align 4, !tbaa !133, !noalias !147
  %6713 = icmp sgt i32 %6572, 0
  br i1 %6713, label %6714, label %6775

; <label>:6714                                    ; preds = %6702
  br label %6715

; <label>:6715                                    ; preds = %6764, %6714
  %6716 = phi i32 [ %6765, %6764 ], [ 0, %6714 ]
  %6717 = phi i32 [ %6766, %6764 ], [ 0, %6714 ]
  %6718 = add nuw i32 %6717, 171
  %6719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %6718)  ; CBufferLoadLegacy(handle,regIndex)
  %6720 = extractvalue %dx.types.CBufRet.f32 %6719, 0
  %6721 = extractvalue %dx.types.CBufRet.f32 %6719, 1
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6725 = fsub fast float %6720, %6723
  %6726 = fsub fast float %6721, %6724
  %6727 = extractvalue %dx.types.CBufRet.f32 %6719, 2
  %6728 = fsub fast float -0.000000e+00, %6725
  %6729 = fsub fast float -0.000000e+00, %6726
  %6730 = call float @dx.op.dot2.f32(i32 54, float %6549, float %6550, float %6728, float %6729)  ; Dot2(ax,ay,bx,by)
  %6731 = fmul fast float %6730, 2.000000e+00
  %6732 = call float @dx.op.dot2.f32(i32 54, float %6728, float %6729, float %6728, float %6729)  ; Dot2(ax,ay,bx,by)
  %6733 = fmul fast float %6727, %6727
  %6734 = fsub fast float %6732, %6733
  %6735 = fmul fast float %6731, %6731
  %6736 = fmul fast float %6592, %6734
  %6737 = fsub fast float %6735, %6736
  %6738 = fcmp fast ogt float %6737, 0.000000e+00
  br i1 %6738, label %6739, label %6754

; <label>:6739                                    ; preds = %6715
  %6740 = fcmp fast ogt float %6731, 0.000000e+00
  %6741 = call float @dx.op.unary.f32(i32 24, float %6737)  ; Sqrt(value)
  %6742 = fsub fast float -0.000000e+00, %6741
  %6743 = select i1 %6740, float %6741, float %6742
  %6744 = fadd fast float %6743, %6731
  %6745 = fmul float %6744, -5.000000e-01
  %6746 = fdiv fast float %6745, %6585
  %6747 = call float @dx.op.binary.f32(i32 35, float %6746, float 0.000000e+00)  ; FMax(a,b)
  %6748 = call float @dx.op.binary.f32(i32 36, float %6620, float %6747)  ; FMin(a,b)
  %6749 = fdiv fast float %6734, %6745
  %6750 = call float @dx.op.binary.f32(i32 35, float %6749, float 0.000000e+00)  ; FMax(a,b)
  %6751 = call float @dx.op.binary.f32(i32 36, float %6620, float %6750)  ; FMin(a,b)
  %6752 = call float @dx.op.binary.f32(i32 36, float %6748, float %6751)  ; FMin(a,b)
  %6753 = call float @dx.op.binary.f32(i32 35, float %6748, float %6751)  ; FMax(a,b)
  br label %6754

; <label>:6754                                    ; preds = %6739, %6715
  %6755 = phi float [ %6753, %6739 ], [ -1.000000e+00, %6715 ]
  %6756 = phi float [ %6752, %6739 ], [ -1.000000e+00, %6715 ]
  %6757 = phi i1 [ true, %6739 ], [ false, %6715 ]
  br i1 %6757, label %6758, label %6764

; <label>:6758                                    ; preds = %6754
  %6759 = call float @dx.op.binary.f32(i32 35, float %6703, float %6756)  ; FMax(a,b)
  %6760 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6717
  store float %6759, float* %6760, align 4, !tbaa !133, !noalias !147
  %6761 = call float @dx.op.binary.f32(i32 35, float %6703, float %6755)  ; FMax(a,b)
  %6762 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6717
  store float %6761, float* %6762, align 4, !tbaa !133, !noalias !147
  %6763 = add nsw i32 %6716, 1
  br label %6764

; <label>:6764                                    ; preds = %6758, %6754
  %6765 = phi i32 [ %6763, %6758 ], [ %6716, %6754 ]
  %6766 = add nuw nsw i32 %6717, 1
  %6767 = icmp eq i32 %6766, %6572
  br i1 %6767, label %6768, label %6715

; <label>:6768                                    ; preds = %6764
  %6769 = load float, float* %6709, align 4, !tbaa !133, !alias.scope !163, !noalias !166
  %6770 = load float, float* %6708, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  %6771 = load float, float* %6707, align 4, !tbaa !133, !alias.scope !171, !noalias !172
  %6772 = load float, float* %6712, align 4, !tbaa !133, !alias.scope !173, !noalias !176
  %6773 = load float, float* %6711, align 4, !tbaa !133, !alias.scope !179, !noalias !180
  %6774 = load float, float* %6710, align 4, !tbaa !133, !alias.scope !181, !noalias !182
  br label %6775

; <label>:6775                                    ; preds = %6768, %6702
  %6776 = phi float [ -1.000000e+00, %6702 ], [ %6774, %6768 ]
  %6777 = phi float [ -1.000000e+00, %6702 ], [ %6773, %6768 ]
  %6778 = phi float [ -1.000000e+00, %6702 ], [ %6772, %6768 ]
  %6779 = phi float [ -1.000000e+00, %6702 ], [ %6771, %6768 ]
  %6780 = phi float [ -1.000000e+00, %6702 ], [ %6770, %6768 ]
  %6781 = phi float [ -1.000000e+00, %6702 ], [ %6769, %6768 ]
  %6782 = phi i32 [ 0, %6702 ], [ %6765, %6768 ]
  %6783 = call float @dx.op.binary.f32(i32 36, float %6780, float %6781)  ; FMin(a,b)
  %6784 = call float @dx.op.binary.f32(i32 36, float %6779, float %6783)  ; FMin(a,b)
  %6785 = call float @dx.op.binary.f32(i32 35, float %6779, float %6780)  ; FMax(a,b)
  %6786 = call float @dx.op.binary.f32(i32 36, float %6785, float %6781)  ; FMin(a,b)
  %6787 = call float @dx.op.binary.f32(i32 36, float %6779, float %6780)  ; FMin(a,b)
  %6788 = call float @dx.op.binary.f32(i32 35, float %6787, float %6786)  ; FMax(a,b)
  %6789 = call float @dx.op.binary.f32(i32 35, float %6780, float %6781)  ; FMax(a,b)
  %6790 = call float @dx.op.binary.f32(i32 35, float %6779, float %6789)  ; FMax(a,b)
  store float %6784, float* %6707, align 4, !tbaa !133, !alias.scope !171, !noalias !172
  store float %6788, float* %6708, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  store float %6790, float* %6709, align 4, !tbaa !133, !alias.scope !163, !noalias !166
  %6791 = call float @dx.op.binary.f32(i32 36, float %6777, float %6778)  ; FMin(a,b)
  %6792 = call float @dx.op.binary.f32(i32 36, float %6776, float %6791)  ; FMin(a,b)
  %6793 = call float @dx.op.binary.f32(i32 35, float %6776, float %6777)  ; FMax(a,b)
  %6794 = call float @dx.op.binary.f32(i32 36, float %6793, float %6778)  ; FMin(a,b)
  %6795 = call float @dx.op.binary.f32(i32 36, float %6776, float %6777)  ; FMin(a,b)
  %6796 = call float @dx.op.binary.f32(i32 35, float %6795, float %6794)  ; FMax(a,b)
  %6797 = call float @dx.op.binary.f32(i32 35, float %6777, float %6778)  ; FMax(a,b)
  %6798 = call float @dx.op.binary.f32(i32 35, float %6776, float %6797)  ; FMax(a,b)
  store float %6792, float* %6710, align 4, !tbaa !133, !alias.scope !181, !noalias !182
  store float %6796, float* %6711, align 4, !tbaa !133, !alias.scope !179, !noalias !180
  store float %6798, float* %6712, align 4, !tbaa !133, !alias.scope !173, !noalias !176
  %6799 = sub nsw i32 3, %6782
  %6800 = icmp sgt i32 %6799, 2
  br i1 %6800, label %6801, label %6839

; <label>:6801                                    ; preds = %6775
  %6802 = icmp eq i32 %6570, 0
  %6803 = fsub fast float %6620, %6704
  %6804 = select i1 %6802, float %6803, float %6704
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.CBufRet.f32 %6805, 1
  %6808 = extractvalue %dx.types.CBufRet.f32 %6805, 2
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.CBufRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.CBufRet.f32 %6809, 2
  %6813 = extractvalue %dx.types.CBufRet.f32 %6809, 3
  %6814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6815 = extractvalue %dx.types.CBufRet.f32 %6814, 3
  %6816 = call float @dx.op.binary.f32(i32 36, float %6705, float %6815)  ; FMin(a,b)
  %6817 = fmul fast float %6813, %6804
  %6818 = call float @dx.op.unary.f32(i32 7, float %6817)  ; Saturate(value)
  %6819 = fsub fast float %6810, %6806
  %6820 = fsub fast float %6811, %6807
  %6821 = fsub fast float %6812, %6808
  %6822 = fmul fast float %6818, %6819
  %6823 = fmul fast float %6818, %6820
  %6824 = fmul fast float %6818, %6821
  %6825 = fadd fast float %6822, %6806
  %6826 = fadd fast float %6823, %6807
  %6827 = fadd fast float %6824, %6808
  %6828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6829 = extractvalue %dx.types.CBufRet.f32 %6828, 0
  %6830 = extractvalue %dx.types.CBufRet.f32 %6828, 1
  %6831 = fadd fast float %6830, %6829
  %6832 = call float @dx.op.unary.f32(i32 7, float %6831)  ; Saturate(value)
  %6833 = extractvalue %dx.types.CBufRet.f32 %6828, 2
  %6834 = extractvalue %dx.types.CBufRet.f32 %6828, 3
  %6835 = fadd fast float %6834, %6833
  %6836 = call float @dx.op.unary.f32(i32 7, float %6835)  ; Saturate(value)
  %6837 = fmul fast float %6832, %6816
  %6838 = fmul fast float %6837, %6836
  br label %6921

; <label>:6839                                    ; preds = %6775
  %6840 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6799
  %6841 = load float, float* %6840, align 4, !tbaa !133, !noalias !147
  %6842 = fcmp fast olt float %6841, %6706
  %6843 = icmp sgt i32 %6782, 0
  %6844 = and i1 %6843, %6842
  br i1 %6844, label %6845, label %6882

; <label>:6845                                    ; preds = %6839
  br label %6846

; <label>:6846                                    ; preds = %6875, %6845
  %6847 = phi float [ %6876, %6875 ], [ %6704, %6845 ]
  %6848 = phi float [ %6877, %6875 ], [ %6705, %6845 ]
  %6849 = phi float [ %6857, %6875 ], [ %6841, %6845 ]
  %6850 = phi i32 [ %6854, %6875 ], [ %6799, %6845 ]
  %6851 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6850
  %6852 = load float, float* %6851, align 4, !tbaa !133, !noalias !147
  %6853 = icmp slt i32 %6850, 2
  %6854 = add nsw i32 %6850, 1
  %6855 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6854
  %6856 = load float, float* %6855, align 4, !tbaa !133, !noalias !147
  %6857 = select i1 %6853, float %6856, float %6620
  %6858 = call float @dx.op.binary.f32(i32 36, float %6857, float %6852)  ; FMin(a,b)
  %6859 = call float @dx.op.binary.f32(i32 36, float %6706, float %6858)  ; FMin(a,b)
  %6860 = icmp eq i32 %6570, 0
  %6861 = fadd fast float %6859, %6849
  %6862 = fmul fast float %6861, %6551
  %6863 = fadd fast float %6862, %6564
  br i1 %6860, label %6869, label %6864

; <label>:6864                                    ; preds = %6846
  %6865 = fsub fast float %6859, %6849
  %6866 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6865)  ; FMax(a,b)
  %6867 = fmul fast float %6866, %6863
  %6868 = fadd fast float %6867, %6848
  br label %6875

; <label>:6869                                    ; preds = %6846
  %6870 = fsub fast float %6849, %6859
  %6871 = call float @dx.op.unary.f32(i32 6, float %6870)  ; FAbs(value)
  %6872 = fadd fast float %6871, %6847
  %6873 = fmul fast float %6871, %6863
  %6874 = fsub fast float %6848, %6873
  br label %6875

; <label>:6875                                    ; preds = %6869, %6864
  %6876 = phi float [ %6866, %6864 ], [ %6872, %6869 ]
  %6877 = phi float [ %6868, %6864 ], [ %6874, %6869 ]
  %6878 = fcmp fast olt float %6857, %6706
  %6879 = icmp slt i32 %6854, 3
  %6880 = and i1 %6879, %6878
  br i1 %6880, label %6846, label %6881

; <label>:6881                                    ; preds = %6875
  br label %6882

; <label>:6882                                    ; preds = %6881, %6839
  %6883 = phi float [ %6704, %6839 ], [ %6876, %6881 ]
  %6884 = phi float [ %6705, %6839 ], [ %6877, %6881 ]
  %6885 = fsub fast float %6620, %6883
  %6886 = select i1 %6622, float %6883, float %6885
  %6887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6887, 0
  %6889 = extractvalue %dx.types.CBufRet.f32 %6887, 1
  %6890 = extractvalue %dx.types.CBufRet.f32 %6887, 2
  %6891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6892 = extractvalue %dx.types.CBufRet.f32 %6891, 0
  %6893 = extractvalue %dx.types.CBufRet.f32 %6891, 1
  %6894 = extractvalue %dx.types.CBufRet.f32 %6891, 2
  %6895 = extractvalue %dx.types.CBufRet.f32 %6891, 3
  %6896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6896, 3
  %6898 = call float @dx.op.binary.f32(i32 36, float %6884, float %6897)  ; FMin(a,b)
  %6899 = fmul fast float %6895, %6886
  %6900 = call float @dx.op.unary.f32(i32 7, float %6899)  ; Saturate(value)
  %6901 = fsub fast float %6892, %6888
  %6902 = fsub fast float %6893, %6889
  %6903 = fsub fast float %6894, %6890
  %6904 = fmul fast float %6900, %6901
  %6905 = fmul fast float %6900, %6902
  %6906 = fmul fast float %6900, %6903
  %6907 = fadd fast float %6904, %6888
  %6908 = fadd fast float %6905, %6889
  %6909 = fadd fast float %6906, %6890
  %6910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.CBufRet.f32 %6910, 1
  %6913 = fadd fast float %6912, %6911
  %6914 = call float @dx.op.unary.f32(i32 7, float %6913)  ; Saturate(value)
  %6915 = extractvalue %dx.types.CBufRet.f32 %6910, 2
  %6916 = extractvalue %dx.types.CBufRet.f32 %6910, 3
  %6917 = fadd fast float %6916, %6915
  %6918 = call float @dx.op.unary.f32(i32 7, float %6917)  ; Saturate(value)
  %6919 = fmul fast float %6914, %6898
  %6920 = fmul fast float %6919, %6918
  br label %6921

; <label>:6921                                    ; preds = %6882, %6801, %6636, %6618, %6616
  %6922 = phi float [ %6645, %6636 ], [ %6804, %6801 ], [ %6886, %6882 ], [ 0.000000e+00, %6616 ], [ 0.000000e+00, %6618 ]
  %6923 = phi float [ %6679, %6636 ], [ %6838, %6801 ], [ %6920, %6882 ], [ 0.000000e+00, %6616 ], [ 0.000000e+00, %6618 ]
  %6924 = phi float [ %6666, %6636 ], [ %6825, %6801 ], [ %6907, %6882 ], [ 0.000000e+00, %6616 ], [ 0.000000e+00, %6618 ]
  %6925 = phi float [ %6667, %6636 ], [ %6826, %6801 ], [ %6908, %6882 ], [ 0.000000e+00, %6616 ], [ 0.000000e+00, %6618 ]
  %6926 = phi float [ %6668, %6636 ], [ %6827, %6801 ], [ %6909, %6882 ], [ 0.000000e+00, %6616 ], [ 0.000000e+00, %6618 ]
  %6927 = fmul fast float %6559, %6923
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6930 = fsub fast float %6566, %6929
  %6931 = fcmp fast olt float %6927, -2.000000e+01
  %6932 = call float @dx.op.unary.f32(i32 21, float %6927)  ; Exp(value)
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6935 = extractvalue %dx.types.CBufRet.f32 %6933, 3
  %6936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6936, 2
  %6938 = fmul fast float %6935, %6930
  %6939 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  %6940 = fsub fast float 1.000000e+00, %6939
  %6941 = fmul fast float %6551, 5.000000e-01
  %6942 = fadd fast float %6941, 5.000000e-01
  %6943 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6944 = fsub fast float 1.000000e+00, %6943
  %6945 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6940)  ; FMax(a,b)
  %6946 = fdiv fast float %6944, %6945
  %6947 = fsub fast float %6930, %6508
  %6948 = call float @dx.op.unary.f32(i32 6, float %6947)  ; FAbs(value)
  %6949 = fmul fast float %6948, %6934
  %6950 = call float @dx.op.unary.f32(i32 7, float %6946)  ; Saturate(value)
  %6951 = fsub fast float 1.000000e+00, %6949
  %6952 = fmul fast float %6951, %6950
  %6953 = fadd fast float %6952, %6949
  %6954 = fmul fast float %6937, %6930
  %6955 = call float @dx.op.unary.f32(i32 7, float %6954)  ; Saturate(value)
  %6956 = fsub fast float 1.000000e+00, %6953
  %6957 = fmul fast float %6956, %6955
  %6958 = fadd fast float %6957, %6953
  %6959 = call float @dx.op.unary.f32(i32 7, float %6958)  ; Saturate(value)
  %6960 = fadd fast float %6932, -1.000000e+00
  %6961 = select i1 %6931, float -1.000000e+00, float %6960
  %6962 = fmul fast float %6959, %6961
  %6963 = fadd fast float %6962, 1.000000e+00
  %6964 = fsub fast float -0.000000e+00, %6962
  %6965 = fmul fast float %6924, %6964
  %6966 = fmul fast float %6925, %6964
  %6967 = fmul fast float %6926, %6964
  br label %6968

; <label>:6968                                    ; preds = %6921, %6517
  %6969 = phi float [ %6922, %6921 ], [ 0.000000e+00, %6517 ]
  %6970 = phi float [ %6963, %6921 ], [ 1.000000e+00, %6517 ]
  %6971 = phi float [ %6965, %6921 ], [ 0.000000e+00, %6517 ]
  %6972 = phi float [ %6966, %6921 ], [ 0.000000e+00, %6517 ]
  %6973 = phi float [ %6967, %6921 ], [ 0.000000e+00, %6517 ]
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 1
  %6976 = fsub fast float 1.000000e+00, %6970
  %6977 = fmul fast float %6976, %6552
  %6978 = fmul fast float %6977, %6975
  %6979 = fsub fast float %6552, %6978
  br i1 %6545, label %6980, label %7009, !dx.controlflow.hints !183

; <label>:6980                                    ; preds = %6968
  %6981 = fmul fast float %6553, %6542
  %6982 = fadd fast float %6981, %6543
  %6983 = call float @dx.op.unary.f32(i32 7, float %6982)  ; Saturate(value)
  %6984 = fmul fast float %6524, %6979
  %6985 = fsub fast float -0.000000e+00, %6984
  %6986 = fmul fast float %6525, %6979
  %6987 = fsub fast float -0.000000e+00, %6986
  %6988 = call float @dx.op.unary.f32(i32 21, float %6985)  ; Exp(value)
  %6989 = call float @dx.op.unary.f32(i32 21, float %6987)  ; Exp(value)
  %6990 = call float @dx.op.binary.f32(i32 35, float %6532, float %6988)  ; FMax(a,b)
  %6991 = call float @dx.op.binary.f32(i32 35, float %6532, float %6989)  ; FMax(a,b)
  %6992 = fsub fast float %6991, %6990
  %6993 = fmul fast float %6992, %6983
  %6994 = fadd fast float %6993, %6990
  %6995 = call float @dx.op.unary.f32(i32 7, float %6994)  ; Saturate(value)
  %6996 = fsub fast float %6529, %6534
  %6997 = fsub fast float %6530, %6535
  %6998 = fsub fast float %6531, %6536
  %6999 = fmul fast float %6983, %6996
  %7000 = fmul fast float %6983, %6997
  %7001 = fmul fast float %6983, %6998
  %7002 = fadd fast float %6999, %6534
  %7003 = fadd fast float %7000, %6535
  %7004 = fadd fast float %7001, %6536
  %7005 = fsub fast float 1.000000e+00, %6995
  %7006 = fmul fast float %7005, %7002
  %7007 = fmul fast float %7005, %7003
  %7008 = fmul fast float %7005, %7004
  br label %7068

; <label>:7009                                    ; preds = %6968
  %7010 = fmul fast float %6979, %6541
  %7011 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  %7012 = fsub fast float 2.000000e+00, %7011
  %7013 = fmul fast float %7011, 9.921875e-01
  %7014 = fmul fast float %7013, %7012
  %7015 = fadd fast float %7014, 3.906250e-03
  %7016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7015, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7017 = extractvalue %dx.types.ResRet.f32 %7016, 0
  %7018 = fsub fast float %7011, %7017
  %7019 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7018)  ; FMax(a,b)
  %7020 = fmul fast float %6527, %6508
  %7021 = call float @dx.op.unary.f32(i32 6, float %7020)  ; FAbs(value)
  %7022 = fcmp fast ogt float %7021, 0x3EB0C6F7A0000000
  br i1 %7022, label %7023, label %7029, !dx.controlflow.hints !184

; <label>:7023                                    ; preds = %7009
  %7024 = fmul fast float %7020, 0xBFF7154760000000
  %7025 = call float @dx.op.unary.f32(i32 21, float %7024)  ; Exp(value)
  %7026 = fsub fast float 1.000000e+00, %7025
  %7027 = fdiv fast float %7026, %7020
  %7028 = fmul fast float %7027, %6537
  br label %7029

; <label>:7029                                    ; preds = %7023, %7009
  %7030 = phi float [ %7028, %7023 ], [ %6537, %7009 ]
  %7031 = fadd fast float %7030, %6539
  %7032 = fmul fast float %7031, %7019
  %7033 = fmul fast float %6524, %7032
  %7034 = fsub fast float -0.000000e+00, %7033
  %7035 = fmul fast float %6525, %7032
  %7036 = fsub fast float -0.000000e+00, %7035
  %7037 = fmul fast float %6526, %7032
  %7038 = fsub fast float -0.000000e+00, %7037
  %7039 = call float @dx.op.unary.f32(i32 21, float %7034)  ; Exp(value)
  %7040 = call float @dx.op.unary.f32(i32 21, float %7036)  ; Exp(value)
  %7041 = call float @dx.op.unary.f32(i32 21, float %7038)  ; Exp(value)
  %7042 = fmul fast float %6553, %6553
  %7043 = fadd fast float %7042, 1.000000e+00
  %7044 = fmul fast float %7043, 0x3FAE8EC8A0000000
  %7045 = fmul fast float %7044, %6534
  %7046 = fmul fast float %7044, %6535
  %7047 = fmul fast float %7044, %6536
  %7048 = fmul fast float %6553, %6532
  %7049 = fsub fast float 1.000000e+00, %7048
  %7050 = fmul fast float %6532, %6532
  %7051 = fsub fast float 1.000000e+00, %7050
  %7052 = fmul fast float %7051, 0x3FB45F3060000000
  %7053 = fmul fast float %7049, %7049
  %7054 = fdiv fast float 1.000000e+00, %7053
  %7055 = fmul fast float %7052, %7054
  %7056 = fmul fast float %7055, %6529
  %7057 = fmul fast float %7055, %6530
  %7058 = fmul fast float %7055, %6531
  %7059 = fadd fast float %7056, %7045
  %7060 = fadd fast float %7057, %7046
  %7061 = fadd fast float %7058, %7047
  %7062 = fsub fast float 1.000000e+00, %7039
  %7063 = fsub fast float 1.000000e+00, %7040
  %7064 = fsub fast float 1.000000e+00, %7041
  %7065 = fmul fast float %7059, %7062
  %7066 = fmul fast float %7060, %7063
  %7067 = fmul fast float %7061, %7064
  br label %7068

; <label>:7068                                    ; preds = %7029, %6980
  %7069 = phi float [ %7006, %6980 ], [ %7065, %7029 ]
  %7070 = phi float [ %7007, %6980 ], [ %7066, %7029 ]
  %7071 = phi float [ %7008, %6980 ], [ %7067, %7029 ]
  %7072 = phi float [ %6995, %6980 ], [ %7039, %7029 ]
  %7073 = phi float [ %6995, %6980 ], [ %7040, %7029 ]
  %7074 = phi float [ %6995, %6980 ], [ %7041, %7029 ]
  br i1 %6561, label %7075, label %7273, !dx.controlflow.hints !185

; <label>:7075                                    ; preds = %7068
  %7076 = extractvalue %dx.types.CBufRet.f32 %6974, 0
  %7077 = fmul fast float %7076, %6976
  %7078 = fsub fast float %6971, %7069
  %7079 = fsub fast float %6972, %7070
  %7080 = fsub fast float %6973, %7071
  %7081 = fmul fast float %7077, %7078
  %7082 = fmul fast float %7077, %7079
  %7083 = fmul fast float %7077, %7080
  %7084 = fadd fast float %7081, %7069
  %7085 = fadd fast float %7082, %7070
  %7086 = fadd fast float %7083, %7071
  %7087 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7072)  ; FMax(a,b)
  %7088 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7073)  ; FMax(a,b)
  %7089 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7074)  ; FMax(a,b)
  %7090 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6970)  ; FMax(a,b)
  %7091 = call float @dx.op.binary.f32(i32 35, float %6969, float %6979)  ; FMax(a,b)
  %7092 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7091)  ; FMax(a,b)
  %7093 = fdiv fast float %6969, %7092
  %7094 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7095 = fdiv fast float %6979, %7092
  %7096 = call float @dx.op.unary.f32(i32 7, float %7095)  ; Saturate(value)
  %7097 = fcmp fast une float %7090, 1.000000e+00
  br i1 %7097, label %7098, label %7111, !dx.controlflow.hints !186

; <label>:7098                                    ; preds = %7075
  %7099 = call float @dx.op.unary.f32(i32 23, float %7090)  ; Log(value)
  %7100 = fmul fast float %7099, 0x3FE62E4300000000
  %7101 = fmul fast float %6971, %7100
  %7102 = fsub fast float -0.000000e+00, %7101
  %7103 = fmul fast float %6972, %7100
  %7104 = fsub fast float -0.000000e+00, %7103
  %7105 = fmul fast float %6973, %7100
  %7106 = fsub fast float -0.000000e+00, %7105
  %7107 = fsub fast float 1.000000e+00, %7090
  %7108 = fdiv fast float %7102, %7107
  %7109 = fdiv fast float %7104, %7107
  %7110 = fdiv fast float %7106, %7107
  br label %7111

; <label>:7111                                    ; preds = %7098, %7075
  %7112 = phi float [ %7108, %7098 ], [ %6971, %7075 ]
  %7113 = phi float [ %7109, %7098 ], [ %6972, %7075 ]
  %7114 = phi float [ %7110, %7098 ], [ %6973, %7075 ]
  %7115 = phi float [ %7100, %7098 ], [ 0.000000e+00, %7075 ]
  %7116 = fcmp fast une float %7087, 1.000000e+00
  br i1 %7116, label %7117, label %7124, !dx.controlflow.hints !187

; <label>:7117                                    ; preds = %7111
  %7118 = call float @dx.op.unary.f32(i32 23, float %7087)  ; Log(value)
  %7119 = fmul fast float %7118, 0x3FE62E4300000000
  %7120 = fmul fast float %7084, %7119
  %7121 = fsub fast float -0.000000e+00, %7120
  %7122 = fsub fast float 1.000000e+00, %7087
  %7123 = fdiv fast float %7121, %7122
  br label %7124

; <label>:7124                                    ; preds = %7117, %7111
  %7125 = phi float [ %7123, %7117 ], [ %7084, %7111 ]
  %7126 = phi float [ %7119, %7117 ], [ 0.000000e+00, %7111 ]
  %7127 = fcmp fast une float %7088, 1.000000e+00
  br i1 %7127, label %7128, label %7135, !dx.controlflow.hints !187

; <label>:7128                                    ; preds = %7124
  %7129 = call float @dx.op.unary.f32(i32 23, float %7088)  ; Log(value)
  %7130 = fmul fast float %7129, 0x3FE62E4300000000
  %7131 = fmul fast float %7085, %7130
  %7132 = fsub fast float -0.000000e+00, %7131
  %7133 = fsub fast float 1.000000e+00, %7088
  %7134 = fdiv fast float %7132, %7133
  br label %7135

; <label>:7135                                    ; preds = %7128, %7124
  %7136 = phi float [ %7134, %7128 ], [ %7085, %7124 ]
  %7137 = phi float [ %7130, %7128 ], [ 0.000000e+00, %7124 ]
  %7138 = fcmp fast une float %7089, 1.000000e+00
  br i1 %7138, label %7139, label %7146, !dx.controlflow.hints !187

; <label>:7139                                    ; preds = %7135
  %7140 = call float @dx.op.unary.f32(i32 23, float %7089)  ; Log(value)
  %7141 = fmul fast float %7140, 0x3FE62E4300000000
  %7142 = fmul fast float %7086, %7141
  %7143 = fsub fast float -0.000000e+00, %7142
  %7144 = fsub fast float 1.000000e+00, %7089
  %7145 = fdiv fast float %7143, %7144
  br label %7146

; <label>:7146                                    ; preds = %7139, %7135
  %7147 = phi float [ %7145, %7139 ], [ %7086, %7135 ]
  %7148 = phi float [ %7141, %7139 ], [ 0.000000e+00, %7135 ]
  %7149 = fmul fast float %7112, %7096
  %7150 = fmul fast float %7113, %7096
  %7151 = fmul fast float %7114, %7096
  %7152 = fmul fast float %7115, %7096
  %7153 = fmul fast float %7125, %7094
  %7154 = fmul fast float %7136, %7094
  %7155 = fmul fast float %7147, %7094
  %7156 = fmul fast float %7126, %7094
  %7157 = fmul fast float %7137, %7094
  %7158 = fmul fast float %7148, %7094
  %7159 = fadd fast float %7153, %7149
  %7160 = fadd fast float %7154, %7150
  %7161 = fadd fast float %7155, %7151
  %7162 = fadd fast float %7156, %7152
  %7163 = fadd fast float %7157, %7152
  %7164 = fadd fast float %7158, %7152
  %7165 = fcmp fast une float %7162, 0.000000e+00
  br i1 %7165, label %7166, label %7173, !dx.controlflow.hints !188

; <label>:7166                                    ; preds = %7146
  %7167 = fmul fast float %7162, 0x3FF7154760000000
  %7168 = call float @dx.op.unary.f32(i32 21, float %7167)  ; Exp(value)
  %7169 = fsub fast float 1.000000e+00, %7168
  %7170 = fmul fast float %7159, %7169
  %7171 = fsub fast float -0.000000e+00, %7170
  %7172 = fdiv fast float %7171, %7162
  br label %7173

; <label>:7173                                    ; preds = %7166, %7146
  %7174 = phi float [ %7168, %7166 ], [ 1.000000e+00, %7146 ]
  %7175 = phi float [ %7172, %7166 ], [ %7159, %7146 ]
  %7176 = fcmp fast une float %7163, 0.000000e+00
  br i1 %7176, label %7177, label %7184, !dx.controlflow.hints !188

; <label>:7177                                    ; preds = %7173
  %7178 = fmul fast float %7163, 0x3FF7154760000000
  %7179 = call float @dx.op.unary.f32(i32 21, float %7178)  ; Exp(value)
  %7180 = fsub fast float 1.000000e+00, %7179
  %7181 = fmul fast float %7160, %7180
  %7182 = fsub fast float -0.000000e+00, %7181
  %7183 = fdiv fast float %7182, %7163
  br label %7184

; <label>:7184                                    ; preds = %7177, %7173
  %7185 = phi float [ %7179, %7177 ], [ 1.000000e+00, %7173 ]
  %7186 = phi float [ %7183, %7177 ], [ %7160, %7173 ]
  %7187 = fcmp fast une float %7164, 0.000000e+00
  br i1 %7187, label %7188, label %7195, !dx.controlflow.hints !188

; <label>:7188                                    ; preds = %7184
  %7189 = fmul fast float %7164, 0x3FF7154760000000
  %7190 = call float @dx.op.unary.f32(i32 21, float %7189)  ; Exp(value)
  %7191 = fsub fast float 1.000000e+00, %7190
  %7192 = fmul fast float %7161, %7191
  %7193 = fsub fast float -0.000000e+00, %7192
  %7194 = fdiv fast float %7193, %7164
  br label %7195

; <label>:7195                                    ; preds = %7188, %7184
  %7196 = phi float [ %7190, %7188 ], [ 1.000000e+00, %7184 ]
  %7197 = phi float [ %7194, %7188 ], [ %7161, %7184 ]
  %7198 = fcmp fast ogt float %7094, %7096
  br i1 %7198, label %7199, label %7219

; <label>:7199                                    ; preds = %7195
  %7200 = fsub fast float 1.000000e+00, %7096
  %7201 = fmul fast float %7112, %7200
  %7202 = fmul fast float %7113, %7200
  %7203 = fmul fast float %7114, %7200
  %7204 = fmul fast float %7115, %7200
  %7205 = fcmp fast une float %7204, 0.000000e+00
  br i1 %7205, label %7206, label %7257, !dx.controlflow.hints !189

; <label>:7206                                    ; preds = %7199
  %7207 = fmul fast float %7204, 0x3FF7154760000000
  %7208 = call float @dx.op.unary.f32(i32 21, float %7207)  ; Exp(value)
  %7209 = fsub fast float 1.000000e+00, %7208
  %7210 = fmul fast float %7201, %7209
  %7211 = fsub fast float -0.000000e+00, %7210
  %7212 = fmul fast float %7202, %7209
  %7213 = fsub fast float -0.000000e+00, %7212
  %7214 = fmul fast float %7203, %7209
  %7215 = fsub fast float -0.000000e+00, %7214
  %7216 = fdiv fast float %7211, %7204
  %7217 = fdiv fast float %7213, %7204
  %7218 = fdiv fast float %7215, %7204
  br label %7257

; <label>:7219                                    ; preds = %7195
  %7220 = fsub fast float 1.000000e+00, %7094
  %7221 = fmul fast float %7125, %7220
  %7222 = fmul fast float %7136, %7220
  %7223 = fmul fast float %7147, %7220
  %7224 = fmul fast float %7126, %7220
  %7225 = fmul fast float %7137, %7220
  %7226 = fmul fast float %7148, %7220
  %7227 = fcmp fast une float %7224, 0.000000e+00
  br i1 %7227, label %7228, label %7235, !dx.controlflow.hints !188

; <label>:7228                                    ; preds = %7219
  %7229 = fmul fast float %7224, 0x3FF7154760000000
  %7230 = call float @dx.op.unary.f32(i32 21, float %7229)  ; Exp(value)
  %7231 = fsub fast float 1.000000e+00, %7230
  %7232 = fmul fast float %7221, %7231
  %7233 = fsub fast float -0.000000e+00, %7232
  %7234 = fdiv fast float %7233, %7224
  br label %7235

; <label>:7235                                    ; preds = %7228, %7219
  %7236 = phi float [ %7234, %7228 ], [ %7221, %7219 ]
  %7237 = phi float [ %7230, %7228 ], [ 1.000000e+00, %7219 ]
  %7238 = fcmp fast une float %7225, 0.000000e+00
  br i1 %7238, label %7239, label %7246, !dx.controlflow.hints !188

; <label>:7239                                    ; preds = %7235
  %7240 = fmul fast float %7225, 0x3FF7154760000000
  %7241 = call float @dx.op.unary.f32(i32 21, float %7240)  ; Exp(value)
  %7242 = fsub fast float 1.000000e+00, %7241
  %7243 = fmul fast float %7222, %7242
  %7244 = fsub fast float -0.000000e+00, %7243
  %7245 = fdiv fast float %7244, %7225
  br label %7246

; <label>:7246                                    ; preds = %7239, %7235
  %7247 = phi float [ %7245, %7239 ], [ %7222, %7235 ]
  %7248 = phi float [ %7241, %7239 ], [ 1.000000e+00, %7235 ]
  %7249 = fcmp fast une float %7226, 0.000000e+00
  br i1 %7249, label %7250, label %7257, !dx.controlflow.hints !188

; <label>:7250                                    ; preds = %7246
  %7251 = fmul fast float %7226, 0x3FF7154760000000
  %7252 = call float @dx.op.unary.f32(i32 21, float %7251)  ; Exp(value)
  %7253 = fsub fast float 1.000000e+00, %7252
  %7254 = fmul fast float %7223, %7253
  %7255 = fsub fast float -0.000000e+00, %7254
  %7256 = fdiv fast float %7255, %7226
  br label %7257

; <label>:7257                                    ; preds = %7250, %7246, %7206, %7199
  %7258 = phi float [ %7256, %7250 ], [ %7218, %7206 ], [ %7203, %7199 ], [ %7223, %7246 ]
  %7259 = phi float [ %7247, %7250 ], [ %7217, %7206 ], [ %7202, %7199 ], [ %7247, %7246 ]
  %7260 = phi float [ %7236, %7250 ], [ %7216, %7206 ], [ %7201, %7199 ], [ %7236, %7246 ]
  %7261 = phi float [ %7252, %7250 ], [ %7208, %7206 ], [ 1.000000e+00, %7199 ], [ 1.000000e+00, %7246 ]
  %7262 = phi float [ %7248, %7250 ], [ %7208, %7206 ], [ 1.000000e+00, %7199 ], [ %7248, %7246 ]
  %7263 = phi float [ %7237, %7250 ], [ %7208, %7206 ], [ 1.000000e+00, %7199 ], [ %7237, %7246 ]
  %7264 = fmul fast float %7263, %7175
  %7265 = fmul fast float %7262, %7186
  %7266 = fmul fast float %7261, %7197
  %7267 = fadd fast float %7264, %7260
  %7268 = fadd fast float %7265, %7259
  %7269 = fadd fast float %7266, %7258
  %7270 = fmul fast float %7263, %7174
  %7271 = fmul fast float %7262, %7185
  %7272 = fmul fast float %7261, %7196
  br label %7273

; <label>:7273                                    ; preds = %7257, %7068
  %7274 = phi float [ %7272, %7257 ], [ %7074, %7068 ]
  %7275 = phi float [ %7271, %7257 ], [ %7073, %7068 ]
  %7276 = phi float [ %7270, %7257 ], [ %7072, %7068 ]
  %7277 = phi float [ %7269, %7257 ], [ %7071, %7068 ]
  %7278 = phi float [ %7268, %7257 ], [ %7070, %7068 ]
  %7279 = phi float [ %7267, %7257 ], [ %7069, %7068 ]
  %7280 = fmul fast float %7279, %6217
  %7281 = fmul fast float %7278, %6217
  %7282 = fmul fast float %7277, %6217
  %7283 = fmul fast float %7276, %6516
  %7284 = call float @dx.op.dot3.f32(i32 55, float %7276, float %7275, float %7274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7285 = call float @dx.op.dot3.f32(i32 55, float %7280, float %7281, float %7282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7286 = select i1 %237, float %7284, float %7276
  %7287 = select i1 %237, float %7284, float %7275
  %7288 = select i1 %237, float 1.000000e+00, float %7274
  %7289 = select i1 %237, float %7285, float %7280
  %7290 = select i1 %237, float 0.000000e+00, float %7281
  %7291 = select i1 %237, float 0.000000e+00, float %7282
  %7292 = fmul fast float %7286, %6510
  %7293 = fmul fast float %7287, %6511
  %7294 = fmul fast float %7288, %6512
  %7295 = fadd fast float %7292, %7289
  %7296 = fadd fast float %7293, %7290
  %7297 = fadd fast float %7291, %7294
  %7298 = fmul fast float %7286, %6513
  %7299 = fmul fast float %7287, %6514
  %7300 = fmul fast float %7288, %6515
  %7301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.i32 %7301, 0
  %7303 = icmp eq i32 %7302, 0
  br i1 %7303, label %7671, label %7304, !dx.controlflow.hints !190

; <label>:7304                                    ; preds = %7273
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 2
  %7307 = extractvalue %dx.types.CBufRet.f32 %7305, 3
  %7308 = fmul fast float %7306, %99
  %7309 = fmul fast float %7307, %100
  %7310 = fmul fast float %7308, 2.000000e+00
  %7311 = fmul fast float %7309, 2.000000e+00
  %7312 = fsub fast float 1.000000e+00, %7310
  %7313 = fsub fast float 1.000000e+00, %7311
  %7314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7315 = extractvalue %dx.types.CBufRet.f32 %7314, 0
  %7316 = extractvalue %dx.types.CBufRet.f32 %7314, 1
  %7317 = extractvalue %dx.types.CBufRet.f32 %7314, 2
  %7318 = fmul fast float %7312, %7315
  %7319 = fmul fast float %7312, %7316
  %7320 = fmul fast float %7312, %7317
  %7321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7321, 0
  %7323 = extractvalue %dx.types.CBufRet.f32 %7321, 1
  %7324 = extractvalue %dx.types.CBufRet.f32 %7321, 2
  %7325 = fmul fast float %7313, %7322
  %7326 = fmul fast float %7313, %7323
  %7327 = fmul fast float %7313, %7324
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.CBufRet.f32 %7328, 1
  %7331 = extractvalue %dx.types.CBufRet.f32 %7328, 2
  %7332 = fadd fast float %7325, %7329
  %7333 = fadd fast float %7332, %7318
  %7334 = fadd fast float %7326, %7330
  %7335 = fadd fast float %7334, %7319
  %7336 = fadd fast float %7327, %7331
  %7337 = fadd fast float %7336, %7320
  %7338 = fmul fast float %7333, %6509
  %7339 = fmul fast float %7335, %6509
  %7340 = fmul fast float %7337, %6509
  %7341 = fmul fast float %7338, %7338
  %7342 = fmul fast float %7339, %7339
  %7343 = fadd fast float %7341, %7342
  %7344 = fmul fast float %7340, %7340
  %7345 = fadd fast float %7343, %7344
  %7346 = call float @dx.op.unary.f32(i32 24, float %7345)  ; Sqrt(value)
  %7347 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %7348 = fsub fast float %7346, %7347
  %7349 = extractvalue %dx.types.CBufRet.f32 %6234, 2
  %7350 = fmul fast float %7348, %7349
  %7351 = call float @dx.op.unary.f32(i32 7, float %7350)  ; Saturate(value)
  %7352 = fadd fast float %7351, -5.000000e-01
  %7353 = fmul fast float %7352, 2.000000e+00
  %7354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7355 = extractvalue %dx.types.CBufRet.f32 %7354, 2
  %7356 = call float @dx.op.binary.f32(i32 36, float %7355, float %7353)  ; FMin(a,b)
  %7357 = fsub fast float -0.000000e+00, %7355
  %7358 = fcmp fast ogt float %7356, %7357
  br i1 %7358, label %7359, label %7671, !dx.controlflow.hints !191

; <label>:7359                                    ; preds = %7304
  %7360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7361 = extractvalue %dx.types.CBufRet.f32 %7360, 3
  %7362 = fcmp fast ogt float %7361, 0.000000e+00
  br i1 %7362, label %7363, label %7438, !dx.controlflow.hints !192

; <label>:7363                                    ; preds = %7359
  %7364 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7365 = extractvalue %dx.types.Dimensions %7364, 0
  %7366 = sitofp i32 %7365 to float
  %7367 = extractvalue %dx.types.Dimensions %7364, 1
  %7368 = sitofp i32 %7367 to float
  %7369 = fmul fast float %7308, %7366
  %7370 = fmul fast float %7309, %7368
  %7371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7372 = extractvalue %dx.types.CBufRet.f32 %7371, 1
  %7373 = fsub fast float -0.000000e+00, %7372
  %7374 = fptoui float %7373 to i32
  %7375 = fptoui float %7369 to i32
  %7376 = fptoui float %7370 to i32
  %7377 = and i32 %7374, 31
  %7378 = lshr i32 %7375, %7377
  %7379 = lshr i32 %7376, %7377
  %7380 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7374, i32 %7378, i32 %7379, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7381 = extractvalue %dx.types.ResRet.f32 %7380, 0
  %7382 = fcmp fast olt float %7381, -1.000000e+00
  %7383 = fcmp fast ogt float %7381, -1.000000e+00
  %7384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7385 = extractvalue %dx.types.CBufRet.f32 %7384, 1
  %7386 = select i1 %7383, float %7385, float 1.000000e+00
  %7387 = fadd fast float %7381, 1.000000e+00
  %7388 = fmul fast float %7386, %7387
  %7389 = call float @dx.op.unary.f32(i32 6, float %7388)  ; FAbs(value)
  %7390 = extractvalue %dx.types.CBufRet.f32 %7384, 3
  %7391 = fcmp fast oge float %7389, %7390
  %7392 = select i1 %7391, float 0x4197782600000000, float %7389
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 0
  %7395 = extractvalue %dx.types.CBufRet.f32 %7393, 1
  %7396 = extractvalue %dx.types.CBufRet.f32 %7393, 2
  %7397 = select i1 %7382, float %7394, float %7315
  %7398 = select i1 %7382, float %7395, float %7316
  %7399 = select i1 %7382, float %7396, float %7317
  %7400 = fmul fast float %7397, %7312
  %7401 = fmul fast float %7398, %7312
  %7402 = fmul fast float %7399, %7312
  %7403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7404 = extractvalue %dx.types.CBufRet.f32 %7403, 0
  %7405 = extractvalue %dx.types.CBufRet.f32 %7403, 1
  %7406 = extractvalue %dx.types.CBufRet.f32 %7403, 2
  %7407 = select i1 %7382, float %7404, float %7322
  %7408 = select i1 %7382, float %7405, float %7323
  %7409 = select i1 %7382, float %7406, float %7324
  %7410 = fmul fast float %7407, %7313
  %7411 = fmul fast float %7408, %7313
  %7412 = fmul fast float %7409, %7313
  %7413 = fadd fast float %7410, %7400
  %7414 = fadd fast float %7411, %7401
  %7415 = fadd fast float %7412, %7402
  %7416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7417 = extractvalue %dx.types.CBufRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.CBufRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.CBufRet.f32 %7416, 2
  %7420 = select i1 %7382, float %7417, float %7329
  %7421 = select i1 %7382, float %7418, float %7330
  %7422 = select i1 %7382, float %7419, float %7331
  %7423 = fadd fast float %7413, %7420
  %7424 = fadd fast float %7414, %7421
  %7425 = fadd fast float %7415, %7422
  %7426 = fmul fast float %7423, %7392
  %7427 = fmul fast float %7424, %7392
  %7428 = fmul fast float %7425, %7392
  %7429 = fmul fast float %7426, %7426
  %7430 = fmul fast float %7427, %7427
  %7431 = fadd fast float %7429, %7430
  %7432 = fmul fast float %7428, %7428
  %7433 = fadd fast float %7431, %7432
  %7434 = call float @dx.op.unary.f32(i32 24, float %7433)  ; Sqrt(value)
  %7435 = fsub fast float %7434, %7347
  %7436 = fmul fast float %7435, %7349
  %7437 = call float @dx.op.unary.f32(i32 7, float %7436)  ; Saturate(value)
  br label %7438

; <label>:7438                                    ; preds = %7363, %7359
  %7439 = phi float [ %7437, %7363 ], [ 1.000000e+00, %7359 ]
  %7440 = fmul fast float %7356, 5.000000e-01
  %7441 = fadd fast float %7440, 5.000000e-01
  %7442 = call float @dx.op.unary.f32(i32 22, float %7441)  ; Frc(value)
  %7443 = call float @dx.op.unary.f32(i32 27, float %7442)  ; Round_ni(value)
  %7444 = call float @dx.op.unary.f32(i32 22, float %7442)  ; Frc(value)
  %7445 = fmul fast float %7444, 2.000000e+00
  %7446 = fadd fast float %7445, -1.000000e+00
  %7447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7308, float %7309, float %7443, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7448 = extractvalue %dx.types.ResRet.f32 %7447, 0
  %7449 = extractvalue %dx.types.ResRet.f32 %7447, 1
  %7450 = extractvalue %dx.types.ResRet.f32 %7447, 2
  %7451 = extractvalue %dx.types.ResRet.f32 %7447, 3
  %7452 = fadd fast float %7448, -5.000000e-01
  %7453 = fadd fast float %7450, -5.000000e-01
  %7454 = fmul fast float %7452, 0xBFD5555560000000
  %7455 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7453, float %7454)  ; FMad(a,b,c)
  %7456 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7449, float 0.000000e+00)  ; FMad(a,b,c)
  %7457 = fadd fast float %7456, %7451
  %7458 = fmul fast float %7452, -7.500000e-01
  %7459 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7453, float %7458)  ; FMad(a,b,c)
  %7460 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7449, float 0.000000e+00)  ; FMad(a,b,c)
  %7461 = fadd fast float %7460, %7451
  %7462 = call float @dx.op.binary.f32(i32 35, float %7455, float -1.000000e+00)  ; FMax(a,b)
  %7463 = call float @dx.op.binary.f32(i32 35, float %7457, float -1.000000e+00)  ; FMax(a,b)
  %7464 = call float @dx.op.binary.f32(i32 35, float %7459, float -1.000000e+00)  ; FMax(a,b)
  %7465 = call float @dx.op.binary.f32(i32 35, float %7461, float -1.000000e+00)  ; FMax(a,b)
  %7466 = call float @dx.op.binary.f32(i32 36, float %7462, float 1.000000e+00)  ; FMin(a,b)
  %7467 = call float @dx.op.binary.f32(i32 36, float %7463, float 1.000000e+00)  ; FMin(a,b)
  %7468 = call float @dx.op.binary.f32(i32 36, float %7464, float 1.000000e+00)  ; FMin(a,b)
  %7469 = call float @dx.op.binary.f32(i32 36, float %7465, float 1.000000e+00)  ; FMin(a,b)
  %7470 = fcmp fast olt float %7466, 0x3FEFFF8020000000
  br i1 %7470, label %7471, label %7586, !dx.controlflow.hints !193

; <label>:7471                                    ; preds = %7438
  %7472 = extractvalue %dx.types.CBufRet.f32 %7354, 3
  %7473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7474 = extractvalue %dx.types.CBufRet.f32 %7473, 0
  %7475 = extractvalue %dx.types.CBufRet.f32 %7473, 1
  %7476 = extractvalue %dx.types.CBufRet.f32 %7473, 2
  %7477 = extractvalue %dx.types.CBufRet.f32 %7473, 3
  %7478 = fsub fast float %7474, %7466
  %7479 = fsub fast float %7475, %7467
  %7480 = fsub fast float %7476, %7468
  %7481 = fsub fast float %7477, %7469
  %7482 = fmul fast float %7478, %7472
  %7483 = fmul fast float %7479, %7472
  %7484 = fmul fast float %7480, %7472
  %7485 = fmul fast float %7481, %7472
  %7486 = fadd fast float %7482, %7466
  %7487 = fadd fast float %7483, %7467
  %7488 = fsub fast float -0.000000e+00, %7487
  %7489 = fadd fast float %7484, %7468
  %7490 = fadd fast float %7485, %7469
  %7491 = fmul fast float %7486, %7486
  %7492 = fsub fast float %7487, %7491
  %7493 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7492)  ; FMax(a,b)
  %7494 = fdiv fast float 1.000000e+00, %7493
  %7495 = fmul fast float %7487, %7486
  %7496 = fsub fast float %7489, %7495
  %7497 = fsub fast float %7446, %7486
  %7498 = fmul fast float %7446, %7446
  %7499 = fsub fast float %7498, %7487
  %7500 = fmul fast float %7497, %7494
  %7501 = fmul fast float %7500, %7496
  %7502 = fsub fast float %7499, %7501
  %7503 = fmul fast float %7487, %7487
  %7504 = fsub fast float %7490, %7503
  %7505 = fmul fast float %7496, %7496
  %7506 = fmul fast float %7505, %7494
  %7507 = fsub fast float %7504, %7506
  %7508 = fdiv fast float %7502, %7507
  %7509 = fmul fast float %7496, %7508
  %7510 = fsub fast float %7497, %7509
  %7511 = fmul fast float %7510, %7494
  %7512 = fmul fast float %7511, %7486
  %7513 = fsub fast float 1.000000e+00, %7512
  %7514 = fmul fast float %7487, %7508
  %7515 = fsub fast float %7513, %7514
  %7516 = fmul fast float %7511, %7511
  %7517 = fmul fast float %7508, 4.000000e+00
  %7518 = fmul fast float %7517, %7515
  %7519 = fsub fast float %7516, %7518
  %7520 = call float @dx.op.unary.f32(i32 24, float %7519)  ; Sqrt(value)
  %7521 = fcmp fast oge float %7511, 0.000000e+00
  %7522 = fsub fast float -0.000000e+00, %7520
  %7523 = select i1 %7521, float %7522, float %7520
  %7524 = fsub fast float %7523, %7511
  %7525 = fdiv fast float %7524, %7508
  %7526 = fdiv fast float %7515, %7524
  %7527 = fmul fast float %7525, 5.000000e-01
  %7528 = fmul fast float %7526, 2.000000e+00
  %7529 = select i1 %7521, float %7527, float %7528
  %7530 = select i1 %7521, float %7528, float %7527
  %7531 = call float @dx.op.binary.f32(i32 35, float %7529, float %7530)  ; FMax(a,b)
  %7532 = call float @dx.op.binary.f32(i32 36, float %7529, float %7530)  ; FMin(a,b)
  %7533 = fcmp fast ogt float %7446, %7532
  br i1 %7533, label %7534, label %7544

; <label>:7534                                    ; preds = %7471
  %7535 = fsub fast float %7446, %7532
  %7536 = fsub fast float %7531, %7532
  %7537 = fmul fast float %7535, %7536
  %7538 = fmul fast float %7531, %7446
  %7539 = fadd fast float %7531, %7446
  %7540 = fmul fast float %7539, %7486
  %7541 = fadd fast float %7538, %7487
  %7542 = fsub fast float %7541, %7540
  %7543 = fdiv fast float %7542, %7537
  br label %7544

; <label>:7544                                    ; preds = %7534, %7471
  %7545 = phi float [ %7543, %7534 ], [ 0.000000e+00, %7471 ]
  %7546 = fcmp fast ogt float %7446, %7531
  %7547 = fsub fast float %7446, %7531
  br i1 %7546, label %7548, label %7558

; <label>:7548                                    ; preds = %7544
  %7549 = fsub fast float %7531, %7532
  %7550 = fmul fast float %7549, %7547
  %7551 = fmul fast float %7532, %7446
  %7552 = fadd fast float %7532, %7446
  %7553 = fmul fast float %7552, %7486
  %7554 = fsub fast float %7488, %7551
  %7555 = fadd fast float %7554, %7553
  %7556 = fdiv fast float %7555, %7550
  %7557 = fadd fast float %7556, %7545
  br label %7558

; <label>:7558                                    ; preds = %7548, %7544
  %7559 = phi float [ %7557, %7548 ], [ %7545, %7544 ]
  %7560 = fsub fast float %7446, %7532
  %7561 = fmul fast float %7560, %7547
  %7562 = fmul fast float %7532, %7531
  %7563 = fadd fast float %7532, %7531
  %7564 = fmul fast float %7563, %7486
  %7565 = fadd fast float %7562, %7487
  %7566 = fsub fast float %7565, %7564
  %7567 = fdiv fast float %7566, %7561
  %7568 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  %7569 = fcmp fast oeq float %6235, 0.000000e+00
  %7570 = extractvalue %dx.types.CBufRet.f32 %7354, 0
  %7571 = fcmp fast oeq float %7570, 0.000000e+00
  %7572 = or i1 %7569, %7571
  %7573 = fmul fast float %7570, 2.000000e+00
  %7574 = fadd fast float %7355, %7356
  %7575 = fdiv fast float %7574, %7573
  %7576 = call float @dx.op.unary.f32(i32 7, float %7575)  ; Saturate(value)
  %7577 = fmul fast float %7576, 2.000000e+00
  %7578 = fsub fast float 3.000000e+00, %7577
  %7579 = fmul fast float %7576, %7576
  %7580 = fmul fast float %7579, %7578
  %7581 = select i1 %7572, float 1.000000e+00, float %7580
  %7582 = fmul fast float %7567, %6235
  %7583 = fadd fast float %7568, %7582
  %7584 = call float @dx.op.unary.f32(i32 7, float %7583)  ; Saturate(value)
  %7585 = fmul fast float %7581, %7584
  br label %7586

; <label>:7586                                    ; preds = %7558, %7438
  %7587 = phi float [ %7585, %7558 ], [ 0.000000e+00, %7438 ]
  %7588 = fsub fast float 1.000000e+00, %7587
  %7589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7308, float %7309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7590 = extractvalue %dx.types.ResRet.f32 %7589, 0
  %7591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.i32 %7591, 2
  %7593 = icmp eq i32 %7592, 0
  br i1 %7593, label %7599, label %7594

; <label>:7594                                    ; preds = %7586
  %7595 = call float @dx.op.unary.f32(i32 7, float %7587)  ; Saturate(value)
  %7596 = fadd fast float %7590, -1.000000e+00
  %7597 = fmul fast float %7595, %7596
  %7598 = fadd fast float %7597, 1.000000e+00
  br label %7599

; <label>:7599                                    ; preds = %7594, %7586
  %7600 = phi float [ %7598, %7594 ], [ %7588, %7586 ]
  br i1 %7362, label %7601, label %7619

; <label>:7601                                    ; preds = %7599
  %7602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.f32 %7602, 1
  %7604 = fsub fast float %7439, %7603
  %7605 = call float @dx.op.unary.f32(i32 7, float %7604)  ; Saturate(value)
  %7606 = fsub fast float %7439, %7361
  %7607 = call float @dx.op.unary.f32(i32 7, float %7606)  ; Saturate(value)
  %7608 = fsub fast float %7605, %7607
  %7609 = fsub fast float %7441, %7607
  %7610 = fdiv fast float %7609, %7608
  %7611 = call float @dx.op.unary.f32(i32 7, float %7610)  ; Saturate(value)
  %7612 = fmul fast float %7611, 2.000000e+00
  %7613 = fsub fast float 3.000000e+00, %7612
  %7614 = fsub fast float %7590, %7600
  %7615 = fmul fast float %7611, %7611
  %7616 = fmul fast float %7615, %7614
  %7617 = fmul fast float %7616, %7613
  %7618 = fadd fast float %7617, %7600
  br label %7619

; <label>:7619                                    ; preds = %7601, %7599
  %7620 = phi float [ %7618, %7601 ], [ %7600, %7599 ]
  %7621 = call float @dx.op.binary.f32(i32 35, float %7590, float %7620)  ; FMax(a,b)
  %7622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.i32 %7622, 2
  %7624 = and i32 %7623, 1
  %7625 = icmp eq i32 %7624, 0
  %7626 = fcmp fast une float %7621, 1.000000e+00
  %7627 = and i1 %7626, %7625
  br i1 %7627, label %7628, label %7647

; <label>:7628                                    ; preds = %7619
  %7629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7308, float %7309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 0
  %7631 = extractvalue %dx.types.ResRet.f32 %7629, 1
  %7632 = extractvalue %dx.types.ResRet.f32 %7629, 2
  %7633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7634 = extractvalue %dx.types.CBufRet.f32 %7633, 1
  %7635 = fmul fast float %7634, %7630
  %7636 = fmul fast float %7634, %7631
  %7637 = fmul fast float %7634, %7632
  %7638 = fcmp fast ogt float %7590, 0x3FEFFF2E40000000
  %7639 = fsub fast float 1.000000e+00, %7621
  %7640 = fsub fast float 1.000000e+00, %7590
  %7641 = fdiv fast float %7639, %7640
  %7642 = call float @dx.op.unary.f32(i32 7, float %7641)  ; Saturate(value)
  %7643 = select i1 %7638, float 0.000000e+00, float %7642
  %7644 = fmul fast float %7635, %7643
  %7645 = fmul fast float %7636, %7643
  %7646 = fmul fast float %7637, %7643
  br label %7647

; <label>:7647                                    ; preds = %7628, %7619
  %7648 = phi float [ 0.000000e+00, %7619 ], [ %7644, %7628 ]
  %7649 = phi float [ 0.000000e+00, %7619 ], [ %7645, %7628 ]
  %7650 = phi float [ 0.000000e+00, %7619 ], [ %7646, %7628 ]
  %7651 = fmul fast float %7648, %6217
  %7652 = fmul fast float %7649, %6217
  %7653 = fmul fast float %7650, %6217
  %7654 = fmul fast float %7621, %7283
  %7655 = call float @dx.op.dot3.f32(i32 55, float %7621, float %7621, float %7621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7656 = call float @dx.op.dot3.f32(i32 55, float %7651, float %7652, float %7653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7657 = select i1 %237, float %7655, float %7621
  %7658 = select i1 %237, float 1.000000e+00, float %7621
  %7659 = select i1 %237, float %7656, float %7651
  %7660 = select i1 %237, float 0.000000e+00, float %7652
  %7661 = select i1 %237, float 0.000000e+00, float %7653
  %7662 = fmul fast float %7657, %7295
  %7663 = fmul fast float %7657, %7296
  %7664 = fmul fast float %7658, %7297
  %7665 = fadd fast float %7662, %7659
  %7666 = fadd fast float %7663, %7660
  %7667 = fadd fast float %7661, %7664
  %7668 = fmul fast float %7657, %7298
  %7669 = fmul fast float %7657, %7299
  %7670 = fmul fast float %7658, %7300
  br label %7671

; <label>:7671                                    ; preds = %7647, %7304, %7273, %6505
  %7672 = phi float [ %6510, %6505 ], [ %7295, %7273 ], [ %7665, %7647 ], [ %7295, %7304 ]
  %7673 = phi float [ %6511, %6505 ], [ %7296, %7273 ], [ %7666, %7647 ], [ %7296, %7304 ]
  %7674 = phi float [ %6512, %6505 ], [ %7297, %7273 ], [ %7667, %7647 ], [ %7297, %7304 ]
  %7675 = phi float [ %6513, %6505 ], [ %7298, %7273 ], [ %7668, %7647 ], [ %7298, %7304 ]
  %7676 = phi float [ %6514, %6505 ], [ %7299, %7273 ], [ %7669, %7647 ], [ %7299, %7304 ]
  %7677 = phi float [ %6515, %6505 ], [ %7300, %7273 ], [ %7670, %7647 ], [ %7300, %7304 ]
  %7678 = phi float [ %6516, %6505 ], [ %7283, %7273 ], [ %7654, %7647 ], [ %7283, %7304 ]
  %7679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7680 = extractvalue %dx.types.CBufRet.f32 %7679, 2
  %7681 = extractvalue %dx.types.CBufRet.f32 %7679, 3
  %7682 = fmul fast float %7680, %99
  %7683 = fmul fast float %7681, %100
  %7684 = call float @dx.op.unary.f32(i32 7, float %7682)  ; Saturate(value)
  %7685 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7686 = select i1 %6245, i32 2, i32 0
  %7687 = or i32 %7686, 1
  %7688 = uitofp i32 %7687 to float
  %7689 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7684, float %7685, float %7688, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7690 = extractvalue %dx.types.ResRet.f32 %7689, 0
  %7691 = extractvalue %dx.types.ResRet.f32 %7689, 1
  %7692 = extractvalue %dx.types.ResRet.f32 %7689, 2
  %7693 = extractvalue %dx.types.ResRet.f32 %7689, 3
  %7694 = add nuw nsw i32 %7686, 2
  %7695 = uitofp i32 %7694 to float
  %7696 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7684, float %7685, float %7695, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7697 = extractvalue %dx.types.ResRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.ResRet.f32 %7696, 1
  %7699 = extractvalue %dx.types.ResRet.f32 %7696, 2
  %7700 = extractvalue %dx.types.ResRet.f32 %7696, 3
  %7701 = call float @dx.op.binary.f32(i32 35, float %7691, float %7692)  ; FMax(a,b)
  %7702 = call float @dx.op.binary.f32(i32 35, float %7690, float %7701)  ; FMax(a,b)
  %7703 = call float @dx.op.binary.f32(i32 35, float %7702, float %7693)  ; FMax(a,b)
  %7704 = call float @dx.op.binary.f32(i32 36, float %7698, float %7699)  ; FMin(a,b)
  %7705 = call float @dx.op.binary.f32(i32 36, float %7697, float %7704)  ; FMin(a,b)
  %7706 = call float @dx.op.binary.f32(i32 36, float %7705, float %7700)  ; FMin(a,b)
  %7707 = fmul fast float %7703, 2.550000e+02
  %7708 = fadd fast float %7707, 0x3F70101020000000
  %7709 = fptoui float %7708 to i32
  %7710 = fmul fast float %7706, 2.550000e+02
  %7711 = fadd fast float %7710, 0x3F70101020000000
  %7712 = fptoui float %7711 to i32
  %7713 = icmp ult i32 %7709, %7712
  br i1 %7713, label %7714, label %7883

; <label>:7714                                    ; preds = %7671
  %7715 = fcmp fast ogt float %86, 9.843750e-01
  %7716 = fadd fast float %6509, -4.000000e+00
  %7717 = select i1 %7715, float -4.000000e+00, float %7716
  %7718 = call float @dx.op.binary.f32(i32 35, float %7717, float 0.000000e+00)  ; FMax(a,b)
  %7719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7720 = extractvalue %dx.types.CBufRet.f32 %7719, 0
  %7721 = fadd fast float %7720, %7718
  %7722 = extractvalue %dx.types.CBufRet.f32 %7719, 2
  %7723 = fmul fast float %7721, %7722
  %7724 = call float @dx.op.unary.f32(i32 23, float %7723)  ; Log(value)
  %7725 = extractvalue %dx.types.CBufRet.f32 %7719, 3
  %7726 = fmul fast float %7725, %7724
  %7727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7728 = extractvalue %dx.types.CBufRet.f32 %7727, 2
  %7729 = fmul fast float %7726, %7728
  %7730 = call float @dx.op.unary.f32(i32 7, float %7729)  ; Saturate(value)
  %7731 = uitofp i32 %7709 to float
  %7732 = uitofp i32 %7712 to float
  %7733 = fadd fast float %7731, 5.000000e-01
  %7734 = fadd fast float %7732, 5.000000e-01
  %7735 = fmul fast float %7728, %7733
  %7736 = fmul fast float %7728, %7734
  %7737 = fadd fast float %7735, 0x3F0FFB4800000000
  %7738 = fadd fast float %7736, 0xBF0FFB4800000000
  %7739 = call float @dx.op.binary.f32(i32 35, float %7730, float %7737)  ; FMax(a,b)
  %7740 = call float @dx.op.binary.f32(i32 36, float %7739, float %7738)  ; FMin(a,b)
  %7741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7742 = extractvalue %dx.types.CBufRet.f32 %7741, 1
  %7743 = extractvalue %dx.types.CBufRet.f32 %7741, 2
  %7744 = extractvalue %dx.types.CBufRet.f32 %7741, 0
  %7745 = select i1 %6245, float %7744, float 0.000000e+00
  %7746 = fmul fast float %7742, %7740
  %7747 = fadd fast float %7745, %7746
  %7748 = fadd fast float %7745, %7743
  %7749 = fsub fast float %7742, %7743
  %7750 = fadd fast float %7749, %7745
  %7751 = call float @dx.op.binary.f32(i32 35, float %7747, float %7748)  ; FMax(a,b)
  %7752 = call float @dx.op.binary.f32(i32 36, float %7751, float %7750)  ; FMin(a,b)
  %7753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7684, float %7685, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7754 = extractvalue %dx.types.ResRet.f32 %7753, 0
  %7755 = extractvalue %dx.types.ResRet.f32 %7753, 1
  %7756 = extractvalue %dx.types.ResRet.f32 %7753, 2
  %7757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.i32 %7757, 0
  %7759 = extractvalue %dx.types.CBufRet.i32 %7757, 1
  %7760 = uitofp i32 %7758 to float
  %7761 = uitofp i32 %7759 to float
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.CBufRet.f32 %7762, 1
  %7765 = fmul fast float %7760, %7684
  %7766 = fmul fast float %7761, %7685
  %7767 = fadd fast float %7765, -5.000000e-01
  %7768 = fadd fast float %7766, -5.000000e-01
  %7769 = call float @dx.op.unary.f32(i32 22, float %7767)  ; Frc(value)
  %7770 = call float @dx.op.unary.f32(i32 22, float %7768)  ; Frc(value)
  %7771 = fmul fast float %7769, %7769
  %7772 = fmul fast float %7771, %7769
  %7773 = fsub fast float 3.000000e+00, %7769
  %7774 = fmul fast float %7771, %7773
  %7775 = fmul fast float %7769, 3.000000e+00
  %7776 = fmul fast float %7772, 3.000000e+00
  %7777 = fmul fast float %7771, 6.000000e+00
  %7778 = fsub fast float %7776, %7777
  %7779 = fadd fast float %7778, 4.000000e+00
  %7780 = fmul fast float %7779, 0x3FC5555560000000
  %7781 = fmul fast float %7772, -3.000000e+00
  %7782 = fadd fast float %7771, %7769
  %7783 = fmul fast float %7782, 3.000000e+00
  %7784 = fadd fast float %7781, 1.000000e+00
  %7785 = fadd fast float %7784, %7783
  %7786 = fmul fast float %7772, 0x3FC5555560000000
  %7787 = fmul fast float %7770, %7770
  %7788 = fmul fast float %7787, %7770
  %7789 = fsub fast float 3.000000e+00, %7770
  %7790 = fmul fast float %7787, %7789
  %7791 = fmul fast float %7770, 3.000000e+00
  %7792 = fmul fast float %7788, 3.000000e+00
  %7793 = fmul fast float %7787, 6.000000e+00
  %7794 = fsub fast float %7792, %7793
  %7795 = fadd fast float %7794, 4.000000e+00
  %7796 = fmul fast float %7795, 0x3FC5555560000000
  %7797 = fmul fast float %7788, -3.000000e+00
  %7798 = fadd fast float %7787, %7770
  %7799 = fmul fast float %7798, 3.000000e+00
  %7800 = fadd fast float %7797, 1.000000e+00
  %7801 = fadd fast float %7800, %7799
  %7802 = fmul fast float %7788, 0x3FC5555560000000
  %7803 = fadd fast float %7769, 1.000000e+00
  %7804 = fsub fast float 1.000000e+00, %7775
  %7805 = fadd fast float %7804, %7774
  %7806 = fadd fast float %7805, %7779
  %7807 = fmul fast float %7806, 0x3FC5555560000000
  %7808 = fdiv fast float %7780, %7807
  %7809 = fsub fast float %7803, %7808
  %7810 = fsub fast float 1.000000e+00, %7769
  %7811 = fadd fast float %7785, %7772
  %7812 = fmul fast float %7811, 0x3FC5555560000000
  %7813 = fdiv fast float %7786, %7812
  %7814 = fadd fast float %7810, %7813
  %7815 = fadd fast float %7770, 1.000000e+00
  %7816 = fsub fast float 1.000000e+00, %7791
  %7817 = fadd fast float %7816, %7790
  %7818 = fadd fast float %7817, %7795
  %7819 = fmul fast float %7818, 0x3FC5555560000000
  %7820 = fdiv fast float %7796, %7819
  %7821 = fsub fast float %7815, %7820
  %7822 = fsub fast float 1.000000e+00, %7770
  %7823 = fadd fast float %7801, %7788
  %7824 = fmul fast float %7823, 0x3FC5555560000000
  %7825 = fdiv fast float %7802, %7824
  %7826 = fadd fast float %7825, %7822
  %7827 = fmul fast float %7809, %7763
  %7828 = fsub fast float %7684, %7827
  %7829 = fmul fast float %7814, %7763
  %7830 = fadd fast float %7829, %7684
  %7831 = fmul fast float %7826, %7764
  %7832 = fadd fast float %7831, %7685
  %7833 = fmul fast float %7821, %7764
  %7834 = fsub fast float %7685, %7833
  %7835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7828, float %7834, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7836 = extractvalue %dx.types.ResRet.f32 %7835, 0
  %7837 = extractvalue %dx.types.ResRet.f32 %7835, 1
  %7838 = extractvalue %dx.types.ResRet.f32 %7835, 2
  %7839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7830, float %7834, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7840 = extractvalue %dx.types.ResRet.f32 %7839, 0
  %7841 = extractvalue %dx.types.ResRet.f32 %7839, 1
  %7842 = extractvalue %dx.types.ResRet.f32 %7839, 2
  %7843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7828, float %7832, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7844 = extractvalue %dx.types.ResRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.ResRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.ResRet.f32 %7843, 2
  %7847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7830, float %7832, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7848 = extractvalue %dx.types.ResRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.ResRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.ResRet.f32 %7847, 2
  %7851 = fsub fast float %7844, %7836
  %7852 = fsub fast float %7845, %7837
  %7853 = fsub fast float %7846, %7838
  %7854 = fmul fast float %7851, %7824
  %7855 = fmul fast float %7852, %7824
  %7856 = fmul fast float %7853, %7824
  %7857 = fadd fast float %7854, %7836
  %7858 = fadd fast float %7855, %7837
  %7859 = fadd fast float %7856, %7838
  %7860 = fsub fast float %7848, %7840
  %7861 = fsub fast float %7849, %7841
  %7862 = fsub fast float %7850, %7842
  %7863 = fmul fast float %7860, %7824
  %7864 = fmul fast float %7861, %7824
  %7865 = fmul fast float %7862, %7824
  %7866 = fsub fast float %7840, %7857
  %7867 = fadd fast float %7866, %7863
  %7868 = fsub fast float %7841, %7858
  %7869 = fadd fast float %7868, %7864
  %7870 = fsub fast float %7842, %7859
  %7871 = fadd fast float %7870, %7865
  %7872 = fmul fast float %7867, %7812
  %7873 = fmul fast float %7869, %7812
  %7874 = fmul fast float %7871, %7812
  %7875 = fadd fast float %7872, %7857
  %7876 = fadd fast float %7873, %7858
  %7877 = fadd fast float %7874, %7859
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7880 = fmul fast float %7875, %7879
  %7881 = fmul fast float %7876, %7879
  %7882 = fmul fast float %7877, %7879
  br label %7883

; <label>:7883                                    ; preds = %7714, %7671
  %7884 = phi float [ %7754, %7714 ], [ 1.000000e+00, %7671 ]
  %7885 = phi float [ %7755, %7714 ], [ 1.000000e+00, %7671 ]
  %7886 = phi float [ %7756, %7714 ], [ 1.000000e+00, %7671 ]
  %7887 = phi float [ %7880, %7714 ], [ 0.000000e+00, %7671 ]
  %7888 = phi float [ %7881, %7714 ], [ 0.000000e+00, %7671 ]
  %7889 = phi float [ %7882, %7714 ], [ 0.000000e+00, %7671 ]
  %7890 = fmul fast float %7887, %6217
  %7891 = fmul fast float %7888, %6217
  %7892 = fmul fast float %7889, %6217
  %7893 = fmul fast float %7884, %7678
  %7894 = call float @dx.op.dot3.f32(i32 55, float %7884, float %7885, float %7886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7895 = call float @dx.op.dot3.f32(i32 55, float %7890, float %7891, float %7892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7896 = select i1 %237, float %7894, float %7884
  %7897 = select i1 %237, float %7894, float %7885
  %7898 = select i1 %237, float 1.000000e+00, float %7886
  %7899 = select i1 %237, float %7895, float %7890
  %7900 = select i1 %237, float 0.000000e+00, float %7891
  %7901 = select i1 %237, float 0.000000e+00, float %7892
  %7902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7903 = extractvalue %dx.types.CBufRet.i32 %7902, 3
  %7904 = and i32 %7903, 3
  %7905 = icmp ne i32 %7904, 0
  %7906 = and i32 %7903, 4
  %7907 = icmp ne i32 %7906, 0
  %7908 = and i1 %7905, %7907
  %7909 = and i1 %237, %7908
  br i1 %7909, label %7910, label %7916

; <label>:7910                                    ; preds = %7883
  %7911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7912 = extractvalue %dx.types.CBufRet.f32 %7911, 1
  %7913 = fadd fast float %7893, -1.000000e+00
  %7914 = fmul fast float %7912, %7913
  %7915 = fadd fast float %7914, 1.000000e+00
  br label %7916

; <label>:7916                                    ; preds = %7910, %7883
  %7917 = phi float [ %7915, %7910 ], [ %7893, %7883 ]
  %7918 = fadd fast float %7675, %7672
  %7919 = fmul fast float %7896, %7918
  %7920 = fadd fast float %7919, %7899
  %7921 = fadd fast float %7676, %7673
  %7922 = fmul fast float %7897, %7921
  %7923 = fadd fast float %7922, %7900
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 0
  br i1 %237, label %7926, label %7949

; <label>:7926                                    ; preds = %7916
  %7927 = fadd fast float %7920, %7923
  %7928 = fmul fast float %7925, %7927
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 3
  %7931 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %7932 = fsub fast float %6232, %6220
  %7933 = fadd fast float %7932, %6233
  %7934 = fsub fast float %7933, %7931
  %7935 = extractvalue %dx.types.CBufRet.f32 %6226, 2
  %7936 = fmul fast float %7934, %7935
  %7937 = call float @dx.op.unary.f32(i32 7, float %7936)  ; Saturate(value)
  %7938 = fsub fast float %7937, %7930
  %7939 = fmul fast float %7938, %7917
  %7940 = fadd fast float %7939, %7930
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 0
  %7943 = fsub fast float %7940, %7942
  %7944 = fmul fast float %7943, 1.000000e+01
  %7945 = call float @dx.op.unary.f32(i32 7, float %7944)  ; Saturate(value)
  %7946 = fmul fast float %7945, %6216
  %7947 = fadd fast float %7946, %6217
  %7948 = fmul fast float %7947, %7940
  br label %7973

; <label>:7949                                    ; preds = %7916
  %7950 = fadd fast float %7677, %7674
  %7951 = fmul fast float %7898, %7950
  %7952 = fadd fast float %7951, %7901
  %7953 = fmul fast float %7925, %7920
  %7954 = fmul fast float %7925, %7923
  %7955 = fmul fast float %7925, %7952
  %7956 = call float @dx.op.binary.f32(i32 35, float %7954, float %7955)  ; FMax(a,b)
  %7957 = call float @dx.op.binary.f32(i32 35, float %7953, float %7956)  ; FMax(a,b)
  %7958 = call float @dx.op.binary.f32(i32 35, float %7957, float %6217)  ; FMax(a,b)
  %7959 = fcmp fast ugt float %7958, 0x3F10000000000000
  br i1 %7959, label %7961, label %7960

; <label>:7960                                    ; preds = %7949
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7961

; <label>:7961                                    ; preds = %7960, %7949
  %7962 = add i32 %71, 132
  %7963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %7962, i32 undef)  ; BufferLoad(srv,index,wot)
  %7964 = extractvalue %dx.types.ResRet.i32 %7963, 0
  %7965 = and i32 %7964, 32
  %7966 = icmp eq i32 %7965, 0
  br i1 %7966, label %7973, label %7967

; <label>:7967                                    ; preds = %7961
  %7968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7969 = extractvalue %dx.types.CBufRet.f32 %7968, 0
  %7970 = fmul fast float %7969, 0x3FE99999A0000000
  %7971 = fadd fast float %7969, %7953
  %7972 = fadd fast float %7970, %7955
  br label %7973

; <label>:7973                                    ; preds = %7967, %7961, %7926
  %7974 = phi float [ %7928, %7926 ], [ %7971, %7967 ], [ %7953, %7961 ]
  %7975 = phi float [ %7948, %7926 ], [ %7954, %7967 ], [ %7954, %7961 ]
  %7976 = phi float [ %7947, %7926 ], [ %7972, %7967 ], [ %7955, %7961 ]
  %7977 = phi float [ %7947, %7926 ], [ %6217, %7967 ], [ %6217, %7961 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7978 = call float @dx.op.binary.f32(i32 36, float %7974, float 3.225500e+04)  ; FMin(a,b)
  %7979 = call float @dx.op.binary.f32(i32 36, float %7975, float 3.225500e+04)  ; FMin(a,b)
  %7980 = call float @dx.op.binary.f32(i32 36, float %7976, float 3.225500e+04)  ; FMin(a,b)
  %7981 = call float @dx.op.binary.f32(i32 36, float %7977, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7978)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7979)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7980)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7981)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!84}
!dx.entryPoints = !{!85}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !73, !76}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !18}
!18 = !{i32 0, i32 5}
!19 = !{i32 11, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!46 = !{i32 38, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !18}
!47 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!48 = !{i32 40, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!49 = !{i32 41, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!50 = !{i32 42, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!51 = !{i32 43, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!52 = !{i32 44, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!53 = !{i32 45, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!54 = !{i32 46, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!55 = !{i32 47, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!56 = !{i32 48, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!57 = !{i32 49, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !58}
!58 = !{i32 0, i32 14}
!59 = !{i32 50, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!60 = !{i32 51, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!61 = !{i32 52, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!63 = !{i32 54, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!64 = !{i32 55, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!65 = !{i32 56, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!66 = !{i32 57, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!67 = !{i32 58, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!68 = !{i32 59, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!69 = !{i32 60, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!70 = !{i32 61, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !58}
!71 = !{i32 62, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!72 = !{i32 63, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!73 = !{!74, !75}
!74 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!75 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!76 = !{!77, !78, !79, !80, !81, !82, !83}
!77 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!78 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!79 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!80 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!81 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!82 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!83 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!84 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!85 = !{void ()* @ps_main, !"ps_main", !86, !4, !103}
!86 = !{!87, !101, null}
!87 = !{!88, !91, !93, !95, !96, !97, !99, !100}
!88 = !{i32 0, !"SV_Position", i8 9, i8 3, !89, i8 4, i32 1, i8 4, i32 0, i8 0, !90}
!89 = !{i32 0}
!90 = !{i32 3, i32 15}
!91 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !89, i8 2, i32 1, i8 2, i32 1, i8 0, !92}
!92 = !{i32 3, i32 3}
!93 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !89, i8 2, i32 1, i8 3, i32 2, i8 0, !94}
!94 = !{i32 3, i32 7}
!95 = !{i32 3, !"NORMAL", i8 9, i8 0, !89, i8 2, i32 1, i8 3, i32 3, i8 0, !94}
!96 = !{i32 4, !"TANGENT", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 4, i8 0, !90}
!97 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !89, i8 1, i32 1, i8 1, i32 5, i8 0, !98}
!98 = !{i32 3, i32 1}
!99 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !89, i8 1, i32 1, i8 1, i32 5, i8 1, !98}
!100 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !89, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!101 = !{!102}
!102 = !{i32 0, !"SV_Target", i8 9, i8 16, !89, i8 0, i32 1, i8 4, i32 0, i8 0, !90}
!103 = !{i32 0, i64 16}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !113}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = !{!120, !120, i64 0}
!120 = !{!"int", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !{!124, !126, !128, !130}
!124 = distinct !{!124, !125, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!125 = distinct !{!125, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!126 = distinct !{!126, !127, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!127 = distinct !{!127, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!128 = distinct !{!128, !129, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!129 = distinct !{!129, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!130 = distinct !{!130, !131, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!131 = distinct !{!131, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = !{!134, !134, i64 0}
!134 = !{!"float", !121, i64 0}
!135 = distinct !{!135, !113}
!136 = distinct !{!136, !113}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = !{!148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!148 = distinct !{!148, !149, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!149 = distinct !{!149, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!150 = distinct !{!150, !151, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!151 = distinct !{!151, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!152 = distinct !{!152, !151, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!153 = distinct !{!153, !154, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!154 = distinct !{!154, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!155 = distinct !{!155, !154, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!156 = distinct !{!156, !154, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!157 = distinct !{!157, !158, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!158 = distinct !{!158, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!159 = distinct !{!159, !158, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!160 = distinct !{!160, !158, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!161 = distinct !{!161, !162, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!162 = distinct !{!162, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"\01?sort@@YAXAIAM00@Z: %c"}
!165 = distinct !{!165, !"\01?sort@@YAXAIAM00@Z"}
!166 = !{!167, !168, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!167 = distinct !{!167, !165, !"\01?sort@@YAXAIAM00@Z: %a"}
!168 = distinct !{!168, !165, !"\01?sort@@YAXAIAM00@Z: %b"}
!169 = !{!168}
!170 = !{!167, !164, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!171 = !{!167}
!172 = !{!168, !164, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!173 = !{!174}
!174 = distinct !{!174, !175, !"\01?sort@@YAXAIAM00@Z: %c"}
!175 = distinct !{!175, !"\01?sort@@YAXAIAM00@Z"}
!176 = !{!177, !178, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!177 = distinct !{!177, !175, !"\01?sort@@YAXAIAM00@Z: %a"}
!178 = distinct !{!178, !175, !"\01?sort@@YAXAIAM00@Z: %b"}
!179 = !{!178}
!180 = !{!177, !174, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!181 = !{!177}
!182 = !{!178, !174, !148, !150, !152, !153, !155, !156, !157, !159, !160, !161}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 2}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 1}
!190 = distinct !{!190, !"dx.controlflow.hints", i32 1}
!191 = distinct !{!191, !"dx.controlflow.hints", i32 1}
!192 = distinct !{!192, !"dx.controlflow.hints", i32 1}
!193 = distinct !{!193, !"dx.controlflow.hints", i32 1}

