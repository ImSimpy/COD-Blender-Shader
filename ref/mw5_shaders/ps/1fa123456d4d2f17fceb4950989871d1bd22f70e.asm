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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 1ea6e8ed28897f5f41ec5ccd3e7b8756
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
; Number of inputs: 22, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
  %291 = add i32 %71, 108
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 2
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %304, label %296

; <label>:296                                     ; preds = %236
  %297 = add i32 %71, 152
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
  br i1 %313, label %1066, label %314

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
  %525 = add i32 %71, 136
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
  %577 = add i32 %71, 132
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
  %601 = add i32 %71, 120
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
  %624 = add i32 %71, 140
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
  %805 = add i32 %71, 116
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
  %822 = add i32 %71, 124
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
  %906 = add i32 %71, 128
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
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = and i32 %943, 1024
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %976, label %946

; <label>:946                                     ; preds = %938
  %947 = add i32 %71, 56
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = and i32 %949, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F70101020000000
  %953 = lshr i32 %949, 8
  %954 = and i32 %953, 255
  %955 = uitofp i32 %954 to float
  %956 = fmul fast float %955, 0x3F70101020000000
  %957 = lshr i32 %949, 16
  %958 = and i32 %957, 255
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = fmul fast float %952, %952
  %962 = fmul fast float %956, %956
  %963 = fmul fast float %960, %960
  %964 = add i32 %71, 144
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = add i32 %966, 0
  %968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %967, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %969 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %968, %dx.types.Handle %96, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %970 = extractvalue %dx.types.ResRet.f32 %969, 0
  %971 = extractvalue %dx.types.ResRet.f32 %969, 1
  %972 = extractvalue %dx.types.ResRet.f32 %969, 2
  %973 = fmul fast float %961, %970
  %974 = fmul fast float %962, %971
  %975 = fmul fast float %963, %972
  br label %976

; <label>:976                                     ; preds = %946, %938
  %977 = phi float [ %973, %946 ], [ 0.000000e+00, %938 ]
  %978 = phi float [ %974, %946 ], [ 0.000000e+00, %938 ]
  %979 = phi float [ %975, %946 ], [ 0.000000e+00, %938 ]
  %980 = fcmp fast ogt float %977, 0.000000e+00
  %981 = fcmp fast ogt float %978, 0.000000e+00
  %982 = fcmp fast ogt float %979, 0.000000e+00
  %983 = call float @dx.op.unary.f32(i32 23, float %977)  ; Log(value)
  %984 = call float @dx.op.unary.f32(i32 23, float %978)  ; Log(value)
  %985 = call float @dx.op.unary.f32(i32 23, float %979)  ; Log(value)
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = lshr i32 %987, 7
  %989 = and i32 %988, 32752
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = fmul fast float %983, 0xBFE62E4300000000
  %992 = fmul fast float %991, %990
  %993 = fmul fast float %984, 0xBFE62E4300000000
  %994 = fmul fast float %993, %990
  %995 = fmul fast float %985, 0xBFE62E4300000000
  %996 = fmul fast float %995, %990
  %997 = select i1 %980, float %992, float 1.270000e+02
  %998 = select i1 %981, float %994, float 1.270000e+02
  %999 = select i1 %982, float %996, float 1.270000e+02
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 10240
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1048, label %1004

; <label>:1004                                    ; preds = %976
  %1005 = add i32 %71, 148
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = add i32 %1007, 0
  %1009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1008, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1010 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1009, %dx.types.Handle %96, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 3
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 1048576
  %1016 = icmp ne i32 %1015, 0
  %1017 = and i32 %1014, 8192
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1034, label %1019

; <label>:1019                                    ; preds = %1004
  %1020 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1021 = select i1 %1016, float %1020, float %1011
  %1022 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1023 = select i1 %1016, float %1022, float %1011
  %1024 = add i32 %71, 48
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = lshr i32 %1026, 16
  %1028 = and i32 %1027, 255
  %1029 = uitofp i32 %1028 to float
  %1030 = fmul fast float %1029, 0x3F80101020000000
  %1031 = fmul fast float %1030, %1023
  %1032 = fmul fast float %1030, %1011
  %1033 = fmul fast float %1030, %1021
  br label %1034

; <label>:1034                                    ; preds = %1019, %1004
  %1035 = phi float [ %1031, %1019 ], [ 0.000000e+00, %1004 ]
  %1036 = phi float [ %1032, %1019 ], [ 0.000000e+00, %1004 ]
  %1037 = phi float [ %1033, %1019 ], [ 0.000000e+00, %1004 ]
  %1038 = and i32 %1014, 2048
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1048, label %1040

; <label>:1040                                    ; preds = %1034
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = shl i32 %1042, 4
  %1044 = and i32 %1043, 32752
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = fmul fast float %1045, %1012
  %1047 = call float @dx.op.binary.f32(i32 35, float %1046, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1048

; <label>:1048                                    ; preds = %1040, %1034, %976
  %1049 = phi float [ %1035, %1040 ], [ %1035, %1034 ], [ 0.000000e+00, %976 ]
  %1050 = phi float [ %1036, %1040 ], [ %1036, %1034 ], [ 0.000000e+00, %976 ]
  %1051 = phi float [ %1037, %1040 ], [ %1037, %1034 ], [ 0.000000e+00, %976 ]
  %1052 = phi float [ %1047, %1040 ], [ 0x3F70101020000000, %1034 ], [ 0x3F70101020000000, %976 ]
  %1053 = add i32 %71, 48
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = and i32 %1055, 255
  %1057 = uitofp i32 %1056 to float
  %1058 = lshr i32 %1055, 8
  %1059 = and i32 %1058, 255
  %1060 = uitofp i32 %1059 to float
  %1061 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = fmul fast float %1060, %1061
  %1063 = fadd fast float %1062, %1057
  %1064 = fmul fast float %1063, 0x3F70101020000000
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  br label %1066

; <label>:1066                                    ; preds = %1048, %304
  %1067 = phi float [ 0.000000e+00, %304 ], [ %892, %1048 ]
  %1068 = phi float [ 0.000000e+00, %304 ], [ %893, %1048 ]
  %1069 = phi float [ 0.000000e+00, %304 ], [ %811, %1048 ]
  %1070 = phi float [ 0.000000e+00, %304 ], [ %812, %1048 ]
  %1071 = phi float [ 0.000000e+00, %304 ], [ %813, %1048 ]
  %1072 = phi float [ 0.000000e+00, %304 ], [ %1049, %1048 ]
  %1073 = phi float [ 0.000000e+00, %304 ], [ %1050, %1048 ]
  %1074 = phi float [ 0.000000e+00, %304 ], [ %1051, %1048 ]
  %1075 = phi float [ 0.000000e+00, %304 ], [ %939, %1048 ]
  %1076 = phi float [ 0.000000e+00, %304 ], [ %940, %1048 ]
  %1077 = phi float [ 0.000000e+00, %304 ], [ %941, %1048 ]
  %1078 = phi float [ 0.000000e+00, %304 ], [ %997, %1048 ]
  %1079 = phi float [ 0.000000e+00, %304 ], [ %998, %1048 ]
  %1080 = phi float [ 0.000000e+00, %304 ], [ %999, %1048 ]
  %1081 = phi float [ 0.000000e+00, %304 ], [ %797, %1048 ]
  %1082 = phi float [ 0.000000e+00, %304 ], [ %593, %1048 ]
  %1083 = phi float [ 0.000000e+00, %304 ], [ %891, %1048 ]
  %1084 = phi float [ 0.000000e+00, %304 ], [ %894, %1048 ]
  %1085 = phi float [ 0.000000e+00, %304 ], [ %1052, %1048 ]
  %1086 = phi float [ 0.000000e+00, %304 ], [ %1065, %1048 ]
  %1087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.f32 %1087, 0
  %1089 = call float @dx.op.dot2.f32(i32 54, float %1067, float %1068, float %1067, float %1068)  ; Dot2(ax,ay,bx,by)
  %1090 = fmul fast float %1089, 0x3FE3333340000000
  %1091 = fsub fast float 1.000000e+00, %1090
  %1092 = call float @dx.op.dot3.f32(i32 55, float %1067, float %1068, float %1091, float %1067, float %1068, float %1091)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = call float @dx.op.unary.f32(i32 25, float %1092)  ; Rsqrt(value)
  %1094 = fmul fast float %1093, %1067
  %1095 = fmul fast float %1093, %1068
  %1096 = fmul fast float %1091, %1093
  %1097 = fmul fast float %1096, %76
  %1098 = fmul fast float %1096, %77
  %1099 = fmul fast float %1096, %78
  %1100 = fmul fast float %1094, %72
  %1101 = fmul fast float %1094, %73
  %1102 = fmul fast float %1094, %74
  %1103 = fadd fast float %1097, %1100
  %1104 = fadd fast float %1098, %1101
  %1105 = fadd fast float %1099, %1102
  %1106 = fmul fast float %1095, %110
  %1107 = fmul fast float %1095, %111
  %1108 = fmul fast float %1095, %112
  %1109 = fadd fast float %1103, %1106
  %1110 = fadd fast float %1104, %1107
  %1111 = fadd fast float %1105, %1108
  %1112 = call float @dx.op.dot3.f32(i32 55, float %1109, float %1110, float %1111, float %1109, float %1110, float %1111)  ; Dot3(ax,ay,az,bx,by,bz)
  %1113 = call float @dx.op.unary.f32(i32 25, float %1112)  ; Rsqrt(value)
  %1114 = fmul fast float %1109, %1113
  %1115 = fmul fast float %1110, %1113
  %1116 = fmul fast float %1111, %1113
  %1117 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %1118 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %1119 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1120 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %1121 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %1122 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1123 = fadd fast float %1117, %146
  %1124 = fadd fast float %1118, %147
  %1125 = fadd fast float %1119, %148
  %1126 = fadd fast float %1120, %146
  %1127 = fadd fast float %1121, %147
  %1128 = fadd fast float %1122, %148
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.CBufRet.f32 %1129, 1
  %1132 = extractvalue %dx.types.CBufRet.f32 %1129, 2
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1135 = extractvalue %dx.types.CBufRet.f32 %1133, 3
  %1136 = fmul fast float %1130, %99
  %1137 = fmul fast float %1136, %1134
  %1138 = fmul fast float %1131, %100
  %1139 = fmul fast float %1138, %1135
  %1140 = fptoui float %1137 to i32
  %1141 = fptoui float %1139 to i32
  %1142 = fadd fast float %1130, -1.000000e+00
  %1143 = fadd fast float %1131, -1.000000e+00
  %1144 = fptoui float %1142 to i32
  %1145 = fptoui float %1143 to i32
  %1146 = call i32 @dx.op.binary.i32(i32 40, i32 %1140, i32 %1144)  ; UMin(a,b)
  %1147 = call i32 @dx.op.binary.i32(i32 40, i32 %1141, i32 %1145)  ; UMin(a,b)
  %1148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1148, 2
  %1150 = extractvalue %dx.types.CBufRet.f32 %1148, 3
  %1151 = fmul fast float %1149, %87
  %1152 = fsub fast float %1151, %1150
  %1153 = fadd fast float %1132, -1.000000e+00
  %1154 = call float @dx.op.binary.f32(i32 36, float %1152, float %1153)  ; FMin(a,b)
  %1155 = fptoui float %1154 to i32
  %1156 = fptoui float %1130 to i32
  %1157 = fptoui float %1131 to i32
  %1158 = mul i32 %1155, %1157
  %1159 = add i32 %1158, %1147
  %1160 = mul i32 %1159, %1156
  %1161 = add i32 %1160, %1146
  %1162 = shl i32 %1161, 2
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 1023
  %1166 = lshr i32 %1164, 10
  %1167 = icmp eq i32 %1165, 0
  br i1 %1167, label %1671, label %1168

; <label>:1168                                    ; preds = %1066
  %1169 = and i32 %1164, 1023
  br label %1170

; <label>:1170                                    ; preds = %1302, %1168
  %1171 = phi float [ %1303, %1302 ], [ 0.000000e+00, %1168 ]
  %1172 = phi float [ %1304, %1302 ], [ %1088, %1168 ]
  %1173 = phi float [ %1305, %1302 ], [ %1086, %1168 ]
  %1174 = phi float [ %1306, %1302 ], [ %1078, %1168 ]
  %1175 = phi float [ %1307, %1302 ], [ %1079, %1168 ]
  %1176 = phi float [ %1308, %1302 ], [ %1080, %1168 ]
  %1177 = phi float [ %1309, %1302 ], [ 0.000000e+00, %1168 ]
  %1178 = phi float [ %1310, %1302 ], [ 0.000000e+00, %1168 ]
  %1179 = phi float [ %1311, %1302 ], [ %1072, %1168 ]
  %1180 = phi float [ %1312, %1302 ], [ %1073, %1168 ]
  %1181 = phi float [ %1313, %1302 ], [ %1074, %1168 ]
  %1182 = phi float [ %1314, %1302 ], [ %1075, %1168 ]
  %1183 = phi float [ %1315, %1302 ], [ %1076, %1168 ]
  %1184 = phi float [ %1316, %1302 ], [ %1077, %1168 ]
  %1185 = phi float [ %1317, %1302 ], [ %1114, %1168 ]
  %1186 = phi float [ %1318, %1302 ], [ %1115, %1168 ]
  %1187 = phi float [ %1319, %1302 ], [ %1116, %1168 ]
  %1188 = phi float [ %1320, %1302 ], [ %1084, %1168 ]
  %1189 = phi float [ %1321, %1302 ], [ %1083, %1168 ]
  %1190 = phi float [ %1322, %1302 ], [ 0.000000e+00, %1168 ]
  %1191 = phi float [ %1323, %1302 ], [ %1081, %1168 ]
  %1192 = phi float [ %1324, %1302 ], [ %1069, %1168 ]
  %1193 = phi float [ %1325, %1302 ], [ %1070, %1168 ]
  %1194 = phi float [ %1326, %1302 ], [ %1071, %1168 ]
  %1195 = phi i32 [ %1252, %1302 ], [ 0, %1168 ]
  %1196 = add nuw nsw i32 %1195, %1166
  %1197 = shl i32 %1196, 2
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = shl i32 %1199, 8
  %1201 = or i32 %1200, 48
  %1202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.ResRet.f32 %1202, 3
  %1207 = or i32 %1200, 64
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = extractvalue %dx.types.ResRet.i32 %1208, 1
  %1211 = or i32 %1200, 80
  %1212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 2
  %1214 = extractvalue %dx.types.ResRet.f32 %1212, 3
  %1215 = or i32 %1200, 96
  %1216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = extractvalue %dx.types.ResRet.f32 %1216, 3
  %1221 = or i32 %1200, 112
  %1222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1224 = or i32 %1200, 128
  %1225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.ResRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.ResRet.f32 %1225, 2
  %1229 = extractvalue %dx.types.ResRet.f32 %1225, 3
  %1230 = or i32 %1200, 144
  %1231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.ResRet.f32 %1231, 1
  %1234 = extractvalue %dx.types.ResRet.f32 %1231, 2
  %1235 = extractvalue %dx.types.ResRet.f32 %1231, 3
  %1236 = or i32 %1200, 160
  %1237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.ResRet.f32 %1237, 3
  %1242 = or i32 %1200, 192
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = or i32 %1200, 208
  %1246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = or i32 %1200, 248
  %1249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = add nuw nsw i32 %1195, 1
  %1253 = bitcast float %1206 to i32
  %1254 = and i32 %1253, 2560
  %1255 = icmp eq i32 %1254, 0
  %1256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.ResRet.f32 %1256, 3
  %1261 = call float @dx.op.dot4.f32(i32 56, float %1257, float %1258, float %1259, float %1260, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1262 = or i32 %1200, 16
  %1263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = call float @dx.op.dot4.f32(i32 56, float %1264, float %1265, float %1266, float %1267, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1269 = or i32 %1200, 32
  %1270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.ResRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.ResRet.f32 %1270, 2
  %1274 = extractvalue %dx.types.ResRet.f32 %1270, 3
  %1275 = call float @dx.op.dot4.f32(i32 56, float %1271, float %1272, float %1273, float %1274, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1276 = call float @dx.op.unary.f32(i32 27, float %1261)  ; Round_ni(value)
  %1277 = call float @dx.op.unary.f32(i32 6, float %1276)  ; FAbs(value)
  %1278 = call float @dx.op.unary.f32(i32 27, float %1268)  ; Round_ni(value)
  %1279 = call float @dx.op.unary.f32(i32 6, float %1278)  ; FAbs(value)
  %1280 = call float @dx.op.unary.f32(i32 6, float %1275)  ; FAbs(value)
  %1281 = call float @dx.op.unary.f32(i32 27, float %1280)  ; Round_ni(value)
  %1282 = fadd fast float %1279, %1277
  %1283 = fadd fast float %1282, %1281
  %1284 = fcmp fast oeq float %1283, 0.000000e+00
  %1285 = call float @dx.op.dot4.f32(i32 56, float %1257, float %1258, float %1259, float %1260, float %1123, float %1124, float %1125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1286 = call float @dx.op.dot4.f32(i32 56, float %1264, float %1265, float %1266, float %1267, float %1123, float %1124, float %1125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1287 = call float @dx.op.dot4.f32(i32 56, float %1257, float %1258, float %1259, float %1260, float %1126, float %1127, float %1128, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1288 = call float @dx.op.dot4.f32(i32 56, float %1264, float %1265, float %1266, float %1267, float %1126, float %1127, float %1128, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1289 = fsub fast float %1285, %1261
  %1290 = fsub fast float %1287, %1261
  %1291 = fsub fast float %1286, %1268
  %1292 = fsub fast float %1288, %1268
  %1293 = call float @dx.op.dot3.f32(i32 55, float %1203, float %1204, float %1205, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1296 = fadd fast float %1295, %1293
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1299 = fcmp fast ogt float %1297, %1298
  %1300 = and i1 %1284, %1299
  %1301 = and i1 %1255, %1300
  br i1 %1301, label %1328, label %1302

; <label>:1302                                    ; preds = %1657, %1409, %1328, %1170
  %1303 = phi float [ %1171, %1328 ], [ %1412, %1409 ], [ %1412, %1657 ], [ %1171, %1170 ]
  %1304 = phi float [ %1172, %1328 ], [ %1172, %1409 ], [ %1633, %1657 ], [ %1172, %1170 ]
  %1305 = phi float [ %1173, %1328 ], [ %1173, %1409 ], [ %1631, %1657 ], [ %1173, %1170 ]
  %1306 = phi float [ %1174, %1328 ], [ %1174, %1409 ], [ %1609, %1657 ], [ %1174, %1170 ]
  %1307 = phi float [ %1175, %1328 ], [ %1175, %1409 ], [ %1610, %1657 ], [ %1175, %1170 ]
  %1308 = phi float [ %1176, %1328 ], [ %1176, %1409 ], [ %1611, %1657 ], [ %1176, %1170 ]
  %1309 = phi float [ %1177, %1328 ], [ %1177, %1409 ], [ %1536, %1657 ], [ %1177, %1170 ]
  %1310 = phi float [ %1178, %1328 ], [ %1178, %1409 ], [ %1534, %1657 ], [ %1178, %1170 ]
  %1311 = phi float [ %1179, %1328 ], [ %1179, %1409 ], [ %1579, %1657 ], [ %1179, %1170 ]
  %1312 = phi float [ %1180, %1328 ], [ %1180, %1409 ], [ %1580, %1657 ], [ %1180, %1170 ]
  %1313 = phi float [ %1181, %1328 ], [ %1181, %1409 ], [ %1581, %1657 ], [ %1181, %1170 ]
  %1314 = phi float [ %1182, %1328 ], [ %1182, %1409 ], [ %1667, %1657 ], [ %1182, %1170 ]
  %1315 = phi float [ %1183, %1328 ], [ %1183, %1409 ], [ %1668, %1657 ], [ %1183, %1170 ]
  %1316 = phi float [ %1184, %1328 ], [ %1184, %1409 ], [ %1669, %1657 ], [ %1184, %1170 ]
  %1317 = phi float [ %1185, %1328 ], [ %1185, %1409 ], [ %1515, %1657 ], [ %1185, %1170 ]
  %1318 = phi float [ %1186, %1328 ], [ %1186, %1409 ], [ %1516, %1657 ], [ %1186, %1170 ]
  %1319 = phi float [ %1187, %1328 ], [ %1187, %1409 ], [ %1517, %1657 ], [ %1187, %1170 ]
  %1320 = phi float [ %1188, %1328 ], [ %1188, %1409 ], [ %1589, %1657 ], [ %1188, %1170 ]
  %1321 = phi float [ %1189, %1328 ], [ %1189, %1409 ], [ %1586, %1657 ], [ %1189, %1170 ]
  %1322 = phi float [ %1190, %1328 ], [ %1190, %1409 ], [ %1583, %1657 ], [ %1190, %1170 ]
  %1323 = phi float [ %1191, %1328 ], [ %1191, %1409 ], [ %1532, %1657 ], [ %1191, %1170 ]
  %1324 = phi float [ %1192, %1328 ], [ %1192, %1409 ], [ %1527, %1657 ], [ %1192, %1170 ]
  %1325 = phi float [ %1193, %1328 ], [ %1193, %1409 ], [ %1528, %1657 ], [ %1193, %1170 ]
  %1326 = phi float [ %1194, %1328 ], [ %1194, %1409 ], [ %1529, %1657 ], [ %1194, %1170 ]
  %1327 = icmp eq i32 %1252, %1169
  br i1 %1327, label %1670, label %1170

; <label>:1328                                    ; preds = %1170
  %1329 = extractvalue %dx.types.ResRet.f32 %1222, 3
  %1330 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1331 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1332 = extractvalue %dx.types.ResRet.f32 %1212, 1
  %1333 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1334 = extractvalue %dx.types.ResRet.i32 %1208, 3
  %1335 = extractvalue %dx.types.ResRet.i32 %1208, 2
  %1336 = add i32 %1334, 0
  %1337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1336, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1338 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1339 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1337, %dx.types.Handle %1338, float %1261, float %1268, float undef, float undef, i32 0, i32 0, i32 undef, float %1289, float %1291, float undef, float %1290, float %1292, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1340 = extractvalue %dx.types.ResRet.f32 %1339, 0
  %1341 = fmul fast float %1340, %1333
  %1342 = fadd fast float %1341, %1332
  %1343 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1344 = fmul fast float %1261, %1217
  %1345 = call float @dx.op.tertiary.f32(i32 46, float %1218, float %1268, float %1344)  ; FMad(a,b,c)
  %1346 = fadd fast float %1345, %1331
  %1347 = fmul fast float %1261, %1219
  %1348 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1268, float %1347)  ; FMad(a,b,c)
  %1349 = fadd fast float %1348, %1330
  %1350 = fmul fast float %1289, %1217
  %1351 = call float @dx.op.tertiary.f32(i32 46, float %1218, float %1291, float %1350)  ; FMad(a,b,c)
  %1352 = fmul fast float %1289, %1219
  %1353 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1291, float %1352)  ; FMad(a,b,c)
  %1354 = fmul fast float %1290, %1217
  %1355 = call float @dx.op.tertiary.f32(i32 46, float %1218, float %1292, float %1354)  ; FMad(a,b,c)
  %1356 = fmul fast float %1290, %1219
  %1357 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1292, float %1356)  ; FMad(a,b,c)
  %1358 = add i32 %1335, 0
  %1359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1358, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1360 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1359, %dx.types.Handle %1338, float %1346, float %1349, float undef, float undef, i32 0, i32 0, i32 undef, float %1351, float %1353, float undef, float %1355, float %1357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = and i32 %1253, 1024
  %1363 = icmp ne i32 %1362, 0
  %1364 = fcmp fast ogt float %1361, 0x3FE0101020000000
  %1365 = uitofp i1 %1364 to float
  %1366 = select i1 %1363, float %1365, float %1361
  %1367 = and i32 %1253, 8192
  %1368 = icmp ne i32 %1367, 0
  %1369 = select i1 %1368, float %1329, float 1.000000e+00
  %1370 = fmul fast float %1261, 2.000000e+00
  %1371 = fadd fast float %1370, -1.000000e+00
  %1372 = call float @dx.op.unary.f32(i32 6, float %1371)  ; FAbs(value)
  %1373 = fmul fast float %1372, %1250
  %1374 = fsub fast float %1373, %1250
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1376 = fmul fast float %1268, 2.000000e+00
  %1377 = fadd fast float %1376, -1.000000e+00
  %1378 = call float @dx.op.unary.f32(i32 6, float %1377)  ; FAbs(value)
  %1379 = fmul fast float %1378, %1251
  %1380 = fsub fast float %1379, %1251
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fmul fast float %1280, %1213
  %1383 = fsub fast float %1382, %1213
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1385 = fmul fast float %1343, %1369
  %1386 = fmul fast float %1385, %1340
  %1387 = fmul fast float %1386, %1375
  %1388 = fmul fast float %1387, %1366
  %1389 = fmul fast float %1388, %1381
  %1390 = fmul fast float %1389, %1384
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 1
  %1393 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  %1394 = fsub fast float %1297, %1393
  %1395 = fmul fast float %1394, %1392
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1397 = fmul fast float %1390, %1214
  %1398 = fadd fast float %1390, %1214
  %1399 = fmul fast float %1398, %1223
  %1400 = fsub fast float %1399, %1223
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1402 = and i32 %1253, 128
  %1403 = icmp ne i32 %1402, 0
  %1404 = select i1 %1403, float %1401, float %1397
  %1405 = fmul fast float %1404, %1396
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 0
  %1408 = fcmp fast ugt float %1405, %1407
  br i1 %1408, label %1409, label %1302

; <label>:1409                                    ; preds = %1328
  %1410 = select i1 %1368, float %1405, float 0.000000e+00
  %1411 = fadd fast float %1410, %1171
  %1412 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  br i1 %1368, label %1302, label %1413

; <label>:1413                                    ; preds = %1409
  %1414 = and i32 %1253, 4
  %1415 = and i32 %1253, 8
  %1416 = add i32 %1209, 0
  %1417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1416, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1419 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1417, %dx.types.Handle %1418, float %1346, float %1349, float undef, float undef, i32 0, i32 0, i32 undef, float %1351, float %1353, float undef, float %1355, float %1357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.ResRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.ResRet.f32 %1419, 2
  %1423 = extractvalue %dx.types.ResRet.f32 %1419, 3
  %1424 = bitcast float %1235 to i32
  %1425 = and i32 %1424, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = lshr i32 %1424, 8
  %1428 = and i32 %1427, 255
  %1429 = uitofp i32 %1428 to float
  %1430 = fmul fast float %1423, %1426
  %1431 = fadd fast float %1430, %1429
  %1432 = fmul fast float %1431, 0x3F70101000000000
  %1433 = add i32 %1210, 0
  %1434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1433, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1435 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1434, %dx.types.Handle %1418, float %1346, float %1349, float undef, float undef, i32 0, i32 0, i32 undef, float %1351, float %1353, float undef, float %1355, float %1357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.ResRet.f32 %1435, 1
  %1438 = extractvalue %dx.types.ResRet.f32 %1435, 2
  %1439 = extractvalue %dx.types.ResRet.f32 %1435, 3
  %1440 = bitcast float %1229 to i32
  %1441 = and i32 %1440, 255
  %1442 = uitofp i32 %1441 to float
  %1443 = lshr i32 %1440, 8
  %1444 = and i32 %1443, 255
  %1445 = uitofp i32 %1444 to float
  %1446 = lshr i32 %1440, 16
  %1447 = and i32 %1446, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = fmul fast float %1448, 0x3F70101000000000
  %1450 = fmul fast float %1436, %1442
  %1451 = fadd fast float %1450, %1445
  %1452 = fmul fast float %1451, 0x3F70101000000000
  %1453 = fadd fast float %1437, -5.000000e-01
  %1454 = fadd fast float %1439, -5.000000e-01
  %1455 = fmul fast float %1453, %1449
  %1456 = fmul fast float %1454, %1449
  %1457 = fadd fast float %1455, 5.000000e-01
  %1458 = fadd fast float %1456, 5.000000e-01
  %1459 = fmul fast float %1420, %1238
  %1460 = fmul fast float %1421, %1239
  %1461 = fmul fast float %1422, %1240
  %1462 = fmul fast float %1457, 2.000000e+00
  %1463 = fadd fast float %1462, -1.000000e+00
  %1464 = fmul fast float %1458, 2.000000e+00
  %1465 = fadd fast float %1464, -1.000000e+00
  %1466 = fadd fast float %1463, %1465
  %1467 = fmul fast float %1466, 5.000000e-01
  %1468 = fsub fast float %1463, %1465
  %1469 = fmul fast float %1468, 5.000000e-01
  %1470 = call float @dx.op.unary.f32(i32 6, float %1467)  ; FAbs(value)
  %1471 = fsub fast float 1.000000e+00, %1470
  %1472 = call float @dx.op.unary.f32(i32 6, float %1469)  ; FAbs(value)
  %1473 = fsub fast float %1471, %1472
  %1474 = call float @dx.op.dot3.f32(i32 55, float %1467, float %1469, float %1473, float %1467, float %1469, float %1473)  ; Dot3(ax,ay,az,bx,by,bz)
  %1475 = call float @dx.op.unary.f32(i32 25, float %1474)  ; Rsqrt(value)
  %1476 = fmul fast float %1467, %1475
  %1477 = fmul fast float %1469, %1475
  %1478 = fmul fast float %1475, %1473
  %1479 = fmul fast float %1478, %1203
  %1480 = fmul fast float %1478, %1204
  %1481 = fmul fast float %1478, %1205
  %1482 = fmul fast float %1476, %1226
  %1483 = fmul fast float %1476, %1227
  %1484 = fmul fast float %1476, %1228
  %1485 = fadd fast float %1482, %1479
  %1486 = fadd fast float %1483, %1480
  %1487 = fadd fast float %1484, %1481
  %1488 = fmul fast float %1477, %1232
  %1489 = fmul fast float %1477, %1233
  %1490 = fmul fast float %1477, %1234
  %1491 = fadd fast float %1485, %1488
  %1492 = fadd fast float %1486, %1489
  %1493 = fadd fast float %1487, %1490
  %1494 = call float @dx.op.dot3.f32(i32 55, float %1491, float %1492, float %1493, float %1491, float %1492, float %1493)  ; Dot3(ax,ay,az,bx,by,bz)
  %1495 = call float @dx.op.unary.f32(i32 25, float %1494)  ; Rsqrt(value)
  %1496 = fmul fast float %1491, %1495
  %1497 = fmul fast float %1492, %1495
  %1498 = fmul fast float %1493, %1495
  %1499 = icmp ne i32 %1415, 0
  %1500 = select i1 %1499, float 1.000000e+00, float 0.000000e+00
  %1501 = fmul fast float %1405, %1500
  %1502 = and i32 %1253, 1
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1504, label %1508

; <label>:1504                                    ; preds = %1413
  %1505 = fsub fast float %1496, %1185
  %1506 = fsub fast float %1497, %1186
  %1507 = fsub fast float %1498, %1187
  br label %1508

; <label>:1508                                    ; preds = %1504, %1413
  %1509 = phi float [ %1505, %1504 ], [ %1496, %1413 ]
  %1510 = phi float [ %1506, %1504 ], [ %1497, %1413 ]
  %1511 = phi float [ %1507, %1504 ], [ %1498, %1413 ]
  %1512 = fmul float %1511, %1501
  %1513 = fmul float %1510, %1501
  %1514 = fmul float %1509, %1501
  %1515 = fadd fast float %1514, %1185
  %1516 = fadd fast float %1513, %1186
  %1517 = fadd fast float %1512, %1187
  %1518 = icmp ne i32 %1414, 0
  %1519 = select i1 %1518, float 1.000000e+00, float 0.000000e+00
  %1520 = fmul fast float %1405, %1519
  %1521 = fsub fast float %1459, %1192
  %1522 = fsub fast float %1460, %1193
  %1523 = fsub fast float %1461, %1194
  %1524 = fmul fast float %1521, %1520
  %1525 = fmul fast float %1522, %1520
  %1526 = fmul fast float %1523, %1520
  %1527 = fadd fast float %1524, %1192
  %1528 = fadd fast float %1525, %1193
  %1529 = fadd fast float %1526, %1194
  %1530 = fsub fast float %1432, %1191
  %1531 = fmul fast float %1530, %1520
  %1532 = fadd fast float %1531, %1191
  %1533 = fmul fast float %1520, %1178
  %1534 = fsub fast float %1178, %1533
  %1535 = fmul fast float %1520, %1177
  %1536 = fsub fast float %1177, %1535
  %1537 = bitcast float %1247 to i32
  %1538 = lshr i32 %1537, 16
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 1
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1544, label %1569

; <label>:1544                                    ; preds = %1508
  %1545 = fadd fast float %1432, 0xBFB99999A0000000
  %1546 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1547 = fmul fast float %1546, 0x3FF1C71C80000000
  %1548 = fsub fast float 1.000000e+00, %1547
  %1549 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1550 = fmul fast float %1549, %1459
  %1551 = fmul fast float %1549, %1460
  %1552 = fmul fast float %1549, %1461
  %1553 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  %1554 = call float @dx.op.unary.f32(i32 7, float %1551)  ; Saturate(value)
  %1555 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1556 = call float @dx.op.binary.f32(i32 35, float %1554, float %1555)  ; FMax(a,b)
  %1557 = call float @dx.op.binary.f32(i32 35, float %1553, float %1556)  ; FMax(a,b)
  %1558 = fcmp fast ogt float %1557, 0.000000e+00
  %1559 = bitcast float %1557 to i32
  %1560 = sub nsw i32 2129859010, %1559
  %1561 = bitcast i32 %1560 to float
  %1562 = select i1 %1558, float %1561, float 0.000000e+00
  %1563 = fmul fast float %1553, %1539
  %1564 = fmul fast float %1554, %1539
  %1565 = fmul fast float %1555, %1539
  %1566 = fmul fast float %1563, %1562
  %1567 = fmul fast float %1564, %1562
  %1568 = fmul fast float %1565, %1562
  br label %1569

; <label>:1569                                    ; preds = %1544, %1508
  %1570 = phi float [ %1539, %1508 ], [ %1566, %1544 ]
  %1571 = phi float [ %1539, %1508 ], [ %1567, %1544 ]
  %1572 = phi float [ %1539, %1508 ], [ %1568, %1544 ]
  %1573 = fsub fast float %1570, %1179
  %1574 = fsub fast float %1571, %1180
  %1575 = fsub fast float %1572, %1181
  %1576 = fmul fast float %1573, %1520
  %1577 = fmul fast float %1574, %1520
  %1578 = fmul fast float %1575, %1520
  %1579 = fadd fast float %1576, %1179
  %1580 = fadd fast float %1577, %1180
  %1581 = fadd fast float %1578, %1181
  %1582 = fadd fast float %1405, %1190
  %1583 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1584 = fsub fast float %1452, %1189
  %1585 = fmul fast float %1584, %1501
  %1586 = fadd fast float %1585, %1189
  %1587 = fsub fast float %1438, %1188
  %1588 = fmul fast float %1587, %1501
  %1589 = fadd fast float %1588, %1188
  br i1 %1503, label %1598, label %1590

; <label>:1590                                    ; preds = %1569
  %1591 = and i32 %1253, 32768
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1608, label %1593

; <label>:1593                                    ; preds = %1590
  %1594 = fmul fast float %1501, 1.270000e+02
  %1595 = fadd fast float %1594, %1174
  %1596 = fadd fast float %1594, %1175
  %1597 = fadd fast float %1594, %1176
  br label %1608

; <label>:1598                                    ; preds = %1569
  %1599 = fsub fast float 1.270000e+02, %1174
  %1600 = fsub fast float 1.270000e+02, %1175
  %1601 = fsub fast float 1.270000e+02, %1176
  %1602 = fmul fast float %1501, %1599
  %1603 = fmul fast float %1501, %1600
  %1604 = fmul fast float %1501, %1601
  %1605 = fadd fast float %1602, %1174
  %1606 = fadd fast float %1603, %1175
  %1607 = fadd fast float %1604, %1176
  br label %1608

; <label>:1608                                    ; preds = %1598, %1593, %1590
  %1609 = phi float [ %1595, %1593 ], [ %1174, %1590 ], [ %1605, %1598 ]
  %1610 = phi float [ %1596, %1593 ], [ %1175, %1590 ], [ %1606, %1598 ]
  %1611 = phi float [ %1597, %1593 ], [ %1176, %1590 ], [ %1607, %1598 ]
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1459, float %1460, float %1461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.CBufRet.f32 %1613, 1
  %1616 = fmul fast float %1615, %1612
  %1617 = fadd fast float %1616, %1614
  %1618 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1619 = bitcast float %1241 to i32
  %1620 = and i32 %1619, 65535
  %1621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1620)  ; LegacyF16ToF32(value)
  %1622 = lshr i32 %1619, 16
  %1623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1622)  ; LegacyF16ToF32(value)
  %1624 = fcmp fast oge float %1621, 0.000000e+00
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1627 = select i1 %1624, float %1621, float %1626
  %1628 = fadd fast float %1627, %1623
  %1629 = fsub fast float %1618, %1173
  %1630 = fmul fast float %1629, %1405
  %1631 = fadd fast float %1630, %1173
  %1632 = fmul fast float %1628, %1405
  %1633 = call float @dx.op.binary.f32(i32 35, float %1172, float %1632)  ; FMax(a,b)
  %1634 = and i32 %1253, 16
  %1635 = icmp eq i32 %1634, 0
  br i1 %1635, label %1657, label %1636

; <label>:1636                                    ; preds = %1608
  %1637 = add i32 %1244, 0
  %1638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1637, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1639 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1638, %dx.types.Handle %1418, float %1346, float %1349, float undef, float undef, i32 0, i32 0, i32 undef, float %1351, float %1353, float undef, float %1355, float %1357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1640 = extractvalue %dx.types.ResRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.ResRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.ResRet.f32 %1639, 2
  %1643 = and i32 %1537, 65535
  %1644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1643)  ; LegacyF16ToF32(value)
  %1645 = fmul fast float %1640, %1238
  %1646 = fmul fast float %1641, %1239
  %1647 = fmul fast float %1642, %1240
  %1648 = and i32 %1253, 16384
  %1649 = icmp ne i32 %1648, 0
  %1650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1651 = extractvalue %dx.types.CBufRet.f32 %1650, 0
  %1652 = select i1 %1649, float %1651, float 1.000000e+00
  %1653 = fmul fast float %1652, %1644
  %1654 = fmul fast float %1645, %1653
  %1655 = fmul fast float %1646, %1653
  %1656 = fmul fast float %1647, %1653
  br label %1657

; <label>:1657                                    ; preds = %1636, %1608
  %1658 = phi float [ %1654, %1636 ], [ 0.000000e+00, %1608 ]
  %1659 = phi float [ %1655, %1636 ], [ 0.000000e+00, %1608 ]
  %1660 = phi float [ %1656, %1636 ], [ 0.000000e+00, %1608 ]
  %1661 = fsub fast float %1658, %1182
  %1662 = fsub fast float %1659, %1183
  %1663 = fsub fast float %1660, %1184
  %1664 = fmul fast float %1661, %1405
  %1665 = fmul fast float %1662, %1405
  %1666 = fmul fast float %1663, %1405
  %1667 = fadd fast float %1664, %1182
  %1668 = fadd fast float %1665, %1183
  %1669 = fadd fast float %1666, %1184
  br label %1302

; <label>:1670                                    ; preds = %1302
  br label %1671

; <label>:1671                                    ; preds = %1670, %1066
  %1672 = phi float [ 0.000000e+00, %1066 ], [ %1303, %1670 ]
  %1673 = phi float [ %1088, %1066 ], [ %1304, %1670 ]
  %1674 = phi float [ %1086, %1066 ], [ %1305, %1670 ]
  %1675 = phi float [ %1078, %1066 ], [ %1306, %1670 ]
  %1676 = phi float [ %1079, %1066 ], [ %1307, %1670 ]
  %1677 = phi float [ %1080, %1066 ], [ %1308, %1670 ]
  %1678 = phi float [ 0.000000e+00, %1066 ], [ %1309, %1670 ]
  %1679 = phi float [ 0.000000e+00, %1066 ], [ %1310, %1670 ]
  %1680 = phi float [ %1072, %1066 ], [ %1311, %1670 ]
  %1681 = phi float [ %1073, %1066 ], [ %1312, %1670 ]
  %1682 = phi float [ %1074, %1066 ], [ %1313, %1670 ]
  %1683 = phi float [ %1075, %1066 ], [ %1314, %1670 ]
  %1684 = phi float [ %1076, %1066 ], [ %1315, %1670 ]
  %1685 = phi float [ %1077, %1066 ], [ %1316, %1670 ]
  %1686 = phi float [ %1114, %1066 ], [ %1317, %1670 ]
  %1687 = phi float [ %1115, %1066 ], [ %1318, %1670 ]
  %1688 = phi float [ %1116, %1066 ], [ %1319, %1670 ]
  %1689 = phi float [ %1084, %1066 ], [ %1320, %1670 ]
  %1690 = phi float [ %1083, %1066 ], [ %1321, %1670 ]
  %1691 = phi float [ 0.000000e+00, %1066 ], [ %1322, %1670 ]
  %1692 = phi float [ %1081, %1066 ], [ %1323, %1670 ]
  %1693 = phi float [ %1069, %1066 ], [ %1324, %1670 ]
  %1694 = phi float [ %1070, %1066 ], [ %1325, %1670 ]
  %1695 = phi float [ %1071, %1066 ], [ %1326, %1670 ]
  %1696 = call float @dx.op.dot3.f32(i32 55, float %1686, float %1687, float %1688, float %1686, float %1687, float %1688)  ; Dot3(ax,ay,az,bx,by,bz)
  %1697 = call float @dx.op.unary.f32(i32 25, float %1696)  ; Rsqrt(value)
  %1698 = fmul fast float %1697, %1686
  %1699 = fmul fast float %1697, %1687
  %1700 = fmul fast float %1697, %1688
  %1701 = fadd fast float %1691, %1082
  %1702 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1703 = call float @dx.op.dot3.f32(i32 55, float %1698, float %1699, float %1700, float %1698, float %1699, float %1700)  ; Dot3(ax,ay,az,bx,by,bz)
  %1704 = call float @dx.op.unary.f32(i32 25, float %1703)  ; Rsqrt(value)
  %1705 = fmul fast float %1704, %1698
  %1706 = fmul fast float %1704, %1699
  %1707 = fmul fast float %1704, %1700
  %1708 = fadd fast float %1692, 0xBFB99999A0000000
  %1709 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1710 = fmul fast float %1709, 0x3FF1C71C80000000
  %1711 = call float @dx.op.binary.f32(i32 36, float %1692, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1712 = fsub fast float 1.000000e+00, %1710
  %1713 = call float @dx.op.unary.f32(i32 7, float %1712)  ; Saturate(value)
  %1714 = fmul fast float %1713, %1693
  %1715 = fmul fast float %1713, %1694
  %1716 = fmul fast float %1713, %1695
  %1717 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1718 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1719 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1720 = fmul fast float %1710, %1693
  %1721 = fmul fast float %1710, %1694
  %1722 = fmul fast float %1710, %1695
  %1723 = fadd fast float %1720, %1711
  %1724 = fadd fast float %1721, %1711
  %1725 = fadd fast float %1722, %1711
  %1726 = call float @dx.op.unary.f32(i32 7, float %1723)  ; Saturate(value)
  %1727 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  %1728 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1729 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = and i32 %1731, 1
  %1733 = icmp eq i32 %1732, 0
  br i1 %1733, label %1748, label %1734

; <label>:1734                                    ; preds = %1671
  %1735 = call float @dx.op.binary.f32(i32 35, float %1718, float %1719)  ; FMax(a,b)
  %1736 = call float @dx.op.binary.f32(i32 35, float %1717, float %1735)  ; FMax(a,b)
  %1737 = fcmp fast ogt float %1736, 0.000000e+00
  %1738 = bitcast float %1736 to i32
  %1739 = sub nsw i32 2129859010, %1738
  %1740 = bitcast i32 %1739 to float
  %1741 = select i1 %1737, float %1740, float 0.000000e+00
  %1742 = fmul fast float %1717, %1680
  %1743 = fmul fast float %1718, %1681
  %1744 = fmul fast float %1719, %1682
  %1745 = fmul fast float %1742, %1741
  %1746 = fmul fast float %1743, %1741
  %1747 = fmul fast float %1744, %1741
  br label %1748

; <label>:1748                                    ; preds = %1734, %1671
  %1749 = phi float [ %1745, %1734 ], [ %1680, %1671 ]
  %1750 = phi float [ %1746, %1734 ], [ %1681, %1671 ]
  %1751 = phi float [ %1747, %1734 ], [ %1682, %1671 ]
  %1752 = call float @dx.op.binary.f32(i32 36, float %1675, float 1.270000e+02)  ; FMin(a,b)
  %1753 = call float @dx.op.binary.f32(i32 36, float %1676, float 1.270000e+02)  ; FMin(a,b)
  %1754 = call float @dx.op.binary.f32(i32 36, float %1677, float 1.270000e+02)  ; FMin(a,b)
  %1755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1756 = extractvalue %dx.types.CBufRet.i32 %1755, 3
  %1757 = and i32 %1756, 8
  %1758 = icmp ne i32 %1757, 0
  %1759 = call float @dx.op.binary.f32(i32 35, float %1717, float %1693)  ; FMax(a,b)
  %1760 = call float @dx.op.binary.f32(i32 35, float %1718, float %1693)  ; FMax(a,b)
  %1761 = call float @dx.op.binary.f32(i32 35, float %1719, float %1693)  ; FMax(a,b)
  %1762 = call float @dx.op.dot3.f32(i32 55, float %1717, float %1718, float %1719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1763 = select i1 %237, float %1693, float %1717
  %1764 = select i1 %237, float %1762, float %1718
  %1765 = select i1 %237, float 1.000000e+00, float %1719
  %1766 = select i1 %1758, float %1759, float %1763
  %1767 = select i1 %1758, float %1760, float %1764
  %1768 = select i1 %1758, float %1761, float %1765
  %1769 = call float @dx.op.dot3.f32(i32 55, float %1749, float %1750, float %1751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1770 = select i1 %237, float %1769, float %1749
  %1771 = select i1 %237, float %1769, float %1750
  %1772 = select i1 %237, float %1769, float %1751
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 0
  %1775 = extractvalue %dx.types.CBufRet.f32 %1773, 1
  %1776 = extractvalue %dx.types.CBufRet.f32 %1773, 2
  %1777 = fadd fast float %1774, %146
  %1778 = fadd fast float %1775, %147
  %1779 = fadd fast float %1776, %148
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.CBufRet.f32 %1780, 1
  %1783 = fsub fast float %1777, %1781
  %1784 = fsub fast float %1778, %1782
  %1785 = fmul fast float %1783, %1783
  %1786 = fmul fast float %1784, %1784
  %1787 = fadd fast float %1785, %1786
  %1788 = call float @dx.op.unary.f32(i32 24, float %1787)  ; Sqrt(value)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1780, 2
  %1790 = fcmp fast olt float %1788, %1789
  br i1 %1790, label %1791, label %1858

; <label>:1791                                    ; preds = %1748
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1799 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1800 = extractvalue %dx.types.CBufRet.f32 %1796, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1802 = extractvalue %dx.types.CBufRet.f32 %1794, 3
  %1803 = extractvalue %dx.types.CBufRet.f32 %1796, 3
  %1804 = fadd fast float %1801, %1777
  %1805 = fadd fast float %1802, %1778
  %1806 = fadd fast float %1803, %1779
  %1807 = fmul fast float %1804, %1793
  %1808 = call float @dx.op.tertiary.f32(i32 46, float %1805, float %1795, float %1807)  ; FMad(a,b,c)
  %1809 = call float @dx.op.tertiary.f32(i32 46, float %1806, float %1797, float %1808)  ; FMad(a,b,c)
  %1810 = fmul fast float %1804, %1798
  %1811 = call float @dx.op.tertiary.f32(i32 46, float %1805, float %1799, float %1810)  ; FMad(a,b,c)
  %1812 = call float @dx.op.tertiary.f32(i32 46, float %1806, float %1800, float %1811)  ; FMad(a,b,c)
  %1813 = fsub fast float %1809, %1801
  %1814 = fsub fast float %1812, %1802
  %1815 = fsub fast float %1813, %1781
  %1816 = fadd fast float %1815, %1789
  %1817 = fsub fast float %1814, %1782
  %1818 = fadd fast float %1817, %1789
  %1819 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1820 = fmul fast float %1816, %1819
  %1821 = fmul fast float %1818, %1819
  %1822 = call float @dx.op.unary.f32(i32 7, float %1820)  ; Saturate(value)
  %1823 = call float @dx.op.unary.f32(i32 7, float %1821)  ; Saturate(value)
  %1824 = fsub fast float 1.000000e+00, %1822
  %1825 = fsub fast float 1.000000e+00, %1823
  %1826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1824, float %1825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = fcmp fast ugt float %1827, 0.000000e+00
  br i1 %1828, label %1829, label %2132

; <label>:1829                                    ; preds = %1791
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 2
  %1832 = fmul fast float %1831, %1827
  %1833 = extractvalue %dx.types.CBufRet.f32 %1830, 3
  %1834 = fadd fast float %1833, %1832
  %1835 = extractvalue %dx.types.CBufRet.f32 %1796, 2
  %1836 = fadd fast float %1834, %1803
  %1837 = fmul fast float %1809, %1797
  %1838 = call float @dx.op.tertiary.f32(i32 46, float %1812, float %1800, float %1837)  ; FMad(a,b,c)
  %1839 = call float @dx.op.tertiary.f32(i32 46, float %1836, float %1835, float %1838)  ; FMad(a,b,c)
  %1840 = fsub fast float %1839, %1803
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 2
  %1843 = fsub fast float %1840, %1842
  %1844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1824, float %1825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.ResRet.f32 %1844, 1
  %1847 = extractvalue %dx.types.ResRet.f32 %1844, 2
  %1848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1824, float %1825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = extractvalue %dx.types.ResRet.f32 %1848, 1
  %1851 = extractvalue %dx.types.ResRet.f32 %1848, 2
  %1852 = fadd fast float %1849, %1845
  %1853 = fmul fast float %1852, 0x3F847AE140000000
  %1854 = fadd fast float %1850, %1846
  %1855 = fmul fast float %1854, 0x3F847AE140000000
  %1856 = fadd fast float %1851, %1847
  %1857 = fmul fast float %1856, 0x3F847AE140000000
  br label %2132

; <label>:1858                                    ; preds = %1748
  %1859 = and i32 %213, 1
  %1860 = icmp eq i32 %1859, 0
  br i1 %1860, label %2132, label %1861

; <label>:1861                                    ; preds = %1858
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.f32 %1862, 0
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.CBufRet.f32 %1862, 1
  %1869 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1870 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1871 = extractvalue %dx.types.CBufRet.f32 %1862, 3
  %1872 = extractvalue %dx.types.CBufRet.f32 %1864, 3
  %1873 = extractvalue %dx.types.CBufRet.f32 %1866, 3
  %1874 = fadd fast float %1871, %1777
  %1875 = fadd fast float %1872, %1778
  %1876 = fadd fast float %1873, %1779
  %1877 = fmul fast float %1874, %1863
  %1878 = call float @dx.op.tertiary.f32(i32 46, float %1875, float %1865, float %1877)  ; FMad(a,b,c)
  %1879 = call float @dx.op.tertiary.f32(i32 46, float %1876, float %1867, float %1878)  ; FMad(a,b,c)
  %1880 = fmul fast float %1874, %1868
  %1881 = call float @dx.op.tertiary.f32(i32 46, float %1875, float %1869, float %1880)  ; FMad(a,b,c)
  %1882 = call float @dx.op.tertiary.f32(i32 46, float %1876, float %1870, float %1881)  ; FMad(a,b,c)
  %1883 = fsub fast float %1879, %1871
  %1884 = fsub fast float %1882, %1872
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.CBufRet.f32 %1885, 1
  %1888 = extractvalue %dx.types.CBufRet.f32 %1885, 2
  %1889 = extractvalue %dx.types.CBufRet.f32 %1885, 3
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 3
  %1892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.i32 %1892, 0
  %1894 = extractvalue %dx.types.CBufRet.i32 %1892, 1
  %1895 = udiv i32 %1894, %1893
  %1896 = fsub fast float %1883, %1886
  %1897 = fsub fast float %1884, %1887
  %1898 = call float @dx.op.binary.f32(i32 35, float %1896, float 0.000000e+00)  ; FMax(a,b)
  %1899 = call float @dx.op.binary.f32(i32 35, float %1897, float 0.000000e+00)  ; FMax(a,b)
  %1900 = call float @dx.op.binary.f32(i32 36, float %1898, float %1888)  ; FMin(a,b)
  %1901 = call float @dx.op.binary.f32(i32 36, float %1899, float %1889)  ; FMin(a,b)
  %1902 = add i32 %1893, -1
  %1903 = add i32 %1895, -1
  %1904 = fmul fast float %1900, %1891
  %1905 = fmul fast float %1901, %1891
  %1906 = fptoui float %1904 to i32
  %1907 = fptoui float %1905 to i32
  %1908 = call i32 @dx.op.binary.i32(i32 40, i32 %1906, i32 %1902)  ; UMin(a,b)
  %1909 = call i32 @dx.op.binary.i32(i32 40, i32 %1907, i32 %1903)  ; UMin(a,b)
  %1910 = mul i32 %1909, %1893
  %1911 = add i32 %1910, %1908
  %1912 = shl i32 %1911, 2
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = icmp eq i32 %1914, -1
  br i1 %1915, label %2132, label %1916

; <label>:1916                                    ; preds = %1861
  %1917 = mul i32 %1914, 148
  %1918 = add i32 %1917, 4
  %1919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = add i32 %1917, 8
  %1922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.f32 %1922, 0
  %1924 = add i32 %1917, 36
  %1925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = add i32 %1917, 60
  %1928 = add i32 %1917, 92
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = add i32 %1917, 116
  %1932 = fsub fast float %1883, %1920
  %1933 = fsub fast float %1884, %1923
  %1934 = fmul fast float %1891, %1932
  %1935 = fmul fast float %1891, %1933
  %1936 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  %1937 = call float @dx.op.unary.f32(i32 7, float %1935)  ; Saturate(value)
  %1938 = fsub fast float 1.000000e+00, %1937
  %1939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.f32 %1939, 2
  %1941 = call float @dx.op.unary.f32(i32 83, float %1936)  ; DerivCoarseX(value)
  %1942 = call float @dx.op.unary.f32(i32 83, float %1938)  ; DerivCoarseX(value)
  %1943 = call float @dx.op.unary.f32(i32 84, float %1936)  ; DerivCoarseY(value)
  %1944 = call float @dx.op.unary.f32(i32 84, float %1938)  ; DerivCoarseY(value)
  %1945 = fmul fast float %1941, %1940
  %1946 = fmul fast float %1942, %1940
  %1947 = fmul fast float %1943, %1940
  %1948 = fmul fast float %1944, %1940
  %1949 = call float @dx.op.dot2.f32(i32 54, float %1947, float %1948, float %1947, float %1948)  ; Dot2(ax,ay,bx,by)
  %1950 = call float @dx.op.dot2.f32(i32 54, float %1945, float %1946, float %1945, float %1946)  ; Dot2(ax,ay,bx,by)
  %1951 = call float @dx.op.binary.f32(i32 35, float %1950, float %1949)  ; FMax(a,b)
  %1952 = call float @dx.op.unary.f32(i32 23, float %1951)  ; Log(value)
  %1953 = fmul fast float %1952, 5.000000e-01
  %1954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1955 = extractvalue %dx.types.CBufRet.f32 %1954, 1
  %1956 = fadd fast float %1955, %1953
  %1957 = call float @dx.op.binary.f32(i32 35, float %1956, float 0.000000e+00)  ; FMax(a,b)
  %1958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1959 = extractvalue %dx.types.CBufRet.f32 %1958, 3
  %1960 = fadd fast float %1959, %1957
  %1961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1962 = extractvalue %dx.types.CBufRet.f32 %1961, 3
  %1963 = fadd fast float %1960, %1962
  %1964 = add i32 %1930, 0
  %1965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1964, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1966 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1965, i32 0)  ; GetDimensions(handle,mipLevel)
  %1967 = extractvalue %dx.types.Dimensions %1966, 0
  %1968 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1967)  ; FirstbitLo(value)
  %1969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.i32 %1969, 1
  %1971 = sub nsw i32 %1970, %1968
  %1972 = sitofp i32 %1971 to float
  %1973 = fsub fast float %1963, %1972
  %1974 = call float @dx.op.binary.f32(i32 35, float %1973, float 0.000000e+00)  ; FMax(a,b)
  %1975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1965, %dx.types.Handle %62, float %1936, float %1938, float %1926, float undef, i32 0, i32 0, i32 undef, float %1974)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = fcmp ule float %1976, 0x3FE0101020000000
  %1978 = extractvalue %dx.types.CBufRet.i32 %1969, 0
  %1979 = and i32 %1978, 128
  %1980 = icmp ne i32 %1979, 0
  %1981 = and i1 %1977, %1980
  br i1 %1981, label %2132, label %1982

; <label>:1982                                    ; preds = %1916
  %1983 = add i32 %1917, 20
  %1984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.f32 %1984, 0
  %1986 = add i32 %1917, 24
  %1987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  %1989 = add i32 %1917, 40
  %1990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = add i32 %1917, 96
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 2
  %1997 = fmul fast float %1996, %1936
  %1998 = fmul fast float %1996, %1938
  %1999 = extractvalue %dx.types.CBufRet.f32 %1995, 3
  %2000 = fadd fast float %1997, %1999
  %2001 = fadd fast float %1998, %1999
  %2002 = add i32 %1994, 0
  %2003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2002, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2004 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2003, i32 0)  ; GetDimensions(handle,mipLevel)
  %2005 = extractvalue %dx.types.Dimensions %2004, 0
  %2006 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2005)  ; FirstbitLo(value)
  %2007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2008 = extractvalue %dx.types.CBufRet.i32 %2007, 1
  %2009 = sub nsw i32 %2008, %2006
  %2010 = sitofp i32 %2009 to float
  %2011 = fsub fast float %1960, %2010
  %2012 = call float @dx.op.binary.f32(i32 35, float %2011, float 0.000000e+00)  ; FMax(a,b)
  %2013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2003, %dx.types.Handle %62, float %2000, float %2001, float %1991, float undef, i32 0, i32 0, i32 undef, float %2012)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2014 = extractvalue %dx.types.ResRet.f32 %2013, 0
  %2015 = fmul fast float %2014, %1985
  %2016 = fadd fast float %2015, %1988
  %2017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.CBufRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.CBufRet.f32 %2017, 2
  %2021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2022 = extractvalue %dx.types.CBufRet.f32 %2021, 3
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 3
  %2025 = extractvalue %dx.types.CBufRet.f32 %2017, 3
  %2026 = fadd fast float %2022, %1883
  %2027 = fadd fast float %2024, %1884
  %2028 = fadd fast float %2016, %2025
  %2029 = fmul fast float %2026, %2018
  %2030 = call float @dx.op.tertiary.f32(i32 46, float %2027, float %2019, float %2029)  ; FMad(a,b,c)
  %2031 = call float @dx.op.tertiary.f32(i32 46, float %2028, float %2020, float %2030)  ; FMad(a,b,c)
  %2032 = fsub fast float %2031, %2025
  %2033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.f32 %2033, 2
  %2035 = fsub fast float %2032, %2034
  %2036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.i32 %2036, 0
  %2038 = call i32 @dx.op.binary.i32(i32 40, i32 %1914, i32 %2037)  ; UMin(a,b)
  %2039 = mul i32 %2038, 36
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = add i32 %2039, 4
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 0
  %2045 = fmul fast float %2044, %1936
  %2046 = fmul fast float %2044, %1938
  %2047 = extractvalue %dx.types.CBufRet.f32 %2043, 1
  %2048 = fadd fast float %2045, %2047
  %2049 = fadd fast float %2046, %2047
  %2050 = icmp eq i32 %2041, 0
  br i1 %2050, label %2119, label %2051

; <label>:2051                                    ; preds = %1982
  br label %2052

; <label>:2052                                    ; preds = %2109, %2051
  %2053 = phi float [ %2110, %2109 ], [ 0.000000e+00, %2051 ]
  %2054 = phi float [ %2111, %2109 ], [ 0.000000e+00, %2051 ]
  %2055 = phi float [ %2112, %2109 ], [ 0.000000e+00, %2051 ]
  %2056 = phi float [ %2113, %2109 ], [ 0.000000e+00, %2051 ]
  %2057 = phi float [ %2114, %2109 ], [ 0.000000e+00, %2051 ]
  %2058 = phi float [ %2115, %2109 ], [ 0.000000e+00, %2051 ]
  %2059 = phi i32 [ %2116, %2109 ], [ 0, %2051 ]
  %2060 = shl i32 %2059, 2
  %2061 = add i32 %1927, %2060
  %2062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.f32 %2062, 0
  %2064 = add i32 %1931, %2060
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = add i32 %2066, 0
  %2068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2067, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2069 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2068, i32 0)  ; GetDimensions(handle,mipLevel)
  %2070 = extractvalue %dx.types.Dimensions %2069, 0
  %2071 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2070)  ; FirstbitLo(value)
  %2072 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.i32 %2072, 1
  %2074 = sub nsw i32 %2073, %2071
  %2075 = sitofp i32 %2074 to float
  %2076 = fsub fast float %1960, %2075
  %2077 = call float @dx.op.binary.f32(i32 35, float %2076, float 0.000000e+00)  ; FMax(a,b)
  %2078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2068, %dx.types.Handle %62, float %2048, float %2049, float %2063, float undef, i32 0, i32 0, i32 undef, float %2077)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2079 = extractvalue %dx.types.ResRet.f32 %2078, 0
  %2080 = fcmp fast ogt float %2079, 0.000000e+00
  br i1 %2080, label %2081, label %2109

; <label>:2081                                    ; preds = %2052
  %2082 = add i32 %2042, %2060
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = and i32 %2084, 32767
  %2086 = mul nuw nsw i32 %2085, 928
  %2087 = add nuw nsw i32 %2086, 48
  %2088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.f32 %2088, 0
  %2090 = extractvalue %dx.types.ResRet.f32 %2088, 1
  %2091 = extractvalue %dx.types.ResRet.f32 %2088, 2
  %2092 = add nuw nsw i32 %2086, 60
  %2093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.f32 %2093, 0
  %2095 = extractvalue %dx.types.ResRet.f32 %2093, 1
  %2096 = extractvalue %dx.types.ResRet.f32 %2093, 2
  %2097 = fmul fast float %2089, %2079
  %2098 = fmul fast float %2090, %2079
  %2099 = fmul fast float %2091, %2079
  %2100 = fadd fast float %2097, %2053
  %2101 = fadd fast float %2098, %2054
  %2102 = fadd fast float %2099, %2055
  %2103 = fmul fast float %2094, %2079
  %2104 = fmul fast float %2095, %2079
  %2105 = fmul fast float %2096, %2079
  %2106 = fadd fast float %2103, %2056
  %2107 = fadd fast float %2104, %2057
  %2108 = fadd fast float %2105, %2058
  br label %2109

; <label>:2109                                    ; preds = %2081, %2052
  %2110 = phi float [ %2100, %2081 ], [ %2053, %2052 ]
  %2111 = phi float [ %2101, %2081 ], [ %2054, %2052 ]
  %2112 = phi float [ %2102, %2081 ], [ %2055, %2052 ]
  %2113 = phi float [ %2106, %2081 ], [ %2056, %2052 ]
  %2114 = phi float [ %2107, %2081 ], [ %2057, %2052 ]
  %2115 = phi float [ %2108, %2081 ], [ %2058, %2052 ]
  %2116 = add nuw i32 %2059, 1
  %2117 = icmp eq i32 %2116, %2041
  br i1 %2117, label %2118, label %2052

; <label>:2118                                    ; preds = %2109
  br label %2119

; <label>:2119                                    ; preds = %2118, %1982
  %2120 = phi float [ 0.000000e+00, %1982 ], [ %2110, %2118 ]
  %2121 = phi float [ 0.000000e+00, %1982 ], [ %2111, %2118 ]
  %2122 = phi float [ 0.000000e+00, %1982 ], [ %2112, %2118 ]
  %2123 = phi float [ 0.000000e+00, %1982 ], [ %2113, %2118 ]
  %2124 = phi float [ 0.000000e+00, %1982 ], [ %2114, %2118 ]
  %2125 = phi float [ 0.000000e+00, %1982 ], [ %2115, %2118 ]
  %2126 = fadd fast float %2123, %2120
  %2127 = fmul fast float %2126, 0x3F847AE140000000
  %2128 = fadd fast float %2124, %2121
  %2129 = fmul fast float %2128, 0x3F847AE140000000
  %2130 = fadd fast float %2125, %2122
  %2131 = fmul fast float %2130, 0x3F847AE140000000
  br label %2132

; <label>:2132                                    ; preds = %2119, %1916, %1861, %1858, %1829, %1791
  %2133 = phi float [ %1843, %1829 ], [ -1.310720e+05, %1791 ], [ %2035, %2119 ], [ -1.310720e+05, %1861 ], [ -1.310720e+05, %1916 ], [ -1.310720e+05, %1858 ]
  %2134 = phi float [ %1853, %1829 ], [ 0.000000e+00, %1791 ], [ %2127, %2119 ], [ 0.000000e+00, %1861 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1858 ]
  %2135 = phi float [ %1855, %1829 ], [ 0.000000e+00, %1791 ], [ %2129, %2119 ], [ 0.000000e+00, %1861 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1858 ]
  %2136 = phi float [ %1857, %1829 ], [ 0.000000e+00, %1791 ], [ %2131, %2119 ], [ 0.000000e+00, %1861 ], [ 0.000000e+00, %1916 ], [ 0.000000e+00, %1858 ]
  %2137 = phi i1 [ true, %1829 ], [ false, %1791 ], [ true, %2119 ], [ false, %1861 ], [ false, %1916 ], [ false, %1858 ]
  %2138 = and i32 %213, 3
  %2139 = icmp eq i32 %2138, 1
  %2140 = select i1 %2139, float 1.000000e+00, float 0.000000e+00
  %2141 = fsub fast float %2133, %148
  %2142 = call float @dx.op.unary.f32(i32 7, float %2141)  ; Saturate(value)
  %2143 = select i1 %2137, float %2142, float 1.000000e+00
  %2144 = fmul fast float %2143, %2140
  %2145 = icmp eq i32 %2138, 3
  %2146 = select i1 %2145, float 1.000000e+00, float %2144
  %2147 = call float @dx.op.binary.f32(i32 35, float %1672, float %2146)  ; FMax(a,b)
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = fcmp fast une float %2148, 0.000000e+00
  %2150 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %146, float %147, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %2151 = call float @dx.op.unary.f32(i32 25, float %2150)  ; Rsqrt(value)
  br i1 %2149, label %2159, label %2152

; <label>:2152                                    ; preds = %2132
  %2153 = fmul fast float %2151, %146
  %2154 = fmul fast float %2151, %147
  %2155 = fmul fast float %2151, %148
  %2156 = fsub fast float -0.000000e+00, %2153
  %2157 = fsub fast float -0.000000e+00, %2154
  %2158 = fsub fast float -0.000000e+00, %2155
  br label %2327

; <label>:2159                                    ; preds = %2132
  %2160 = fmul fast float %146, %2151
  %2161 = fsub fast float -0.000000e+00, %2160
  %2162 = fmul fast float %147, %2151
  %2163 = fsub fast float -0.000000e+00, %2162
  %2164 = fmul fast float %148, %2151
  %2165 = fsub fast float -0.000000e+00, %2164
  %2166 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2163, float %2165, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %2167 = fmul fast float %2148, 2.500000e+00
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = fmul fast float %2148, 0x4013FFFFE0000000
  %2170 = fadd fast float %2169, 0xBFFFFFFFE0000000
  %2171 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2172 = fmul fast float %2148, 0x4004000020000000
  %2173 = fadd fast float %2172, 0xBFF8000040000000
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2176 = fmul fast float %1708, 1.000000e+01
  %2177 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2178 = fmul fast float %2177, 2.000000e+00
  %2179 = fsub fast float 3.000000e+00, %2178
  %2180 = fmul fast float %2177, %2177
  %2181 = fmul fast float %2180, %2179
  %2182 = fsub fast float 1.000000e+00, %2181
  %2183 = fsub fast float 0x3FE3333340000000, %1729
  %2184 = fmul fast float %2183, 0x400AAAAAA0000000
  %2185 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2186 = fmul fast float %2182, %2185
  %2187 = fmul fast float %1766, 0x3FEA2B8620000000
  %2188 = fmul fast float %1767, 0x3FEA2B8620000000
  %2189 = fmul fast float %1768, 0x3FEA2B8620000000
  %2190 = fadd fast float %2187, 0x3FC81DFBA0000000
  %2191 = fmul fast float %2190, %1766
  %2192 = fadd fast float %2191, 0x3F910E6020000000
  %2193 = fadd fast float %2188, 0x3FC81DFBA0000000
  %2194 = fmul fast float %2193, %1767
  %2195 = fadd fast float %2194, 0x3F910E6020000000
  %2196 = fadd fast float %2189, 0x3FC81DFBA0000000
  %2197 = fmul fast float %2196, %1768
  %2198 = fadd fast float %2197, 0x3F910E6020000000
  %2199 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2200 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2201 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2202 = fsub fast float %2199, %1766
  %2203 = fsub fast float %2200, %1767
  %2204 = fsub fast float %2201, %1768
  %2205 = fmul fast float %2202, %2175
  %2206 = fmul fast float %2205, %2186
  %2207 = fmul fast float %2203, %2175
  %2208 = fmul fast float %2207, %2186
  %2209 = fmul fast float %2204, %2175
  %2210 = fmul fast float %2209, %2186
  %2211 = fadd fast float %2206, %1766
  %2212 = fadd fast float %2208, %1767
  %2213 = fadd fast float %2210, %1768
  %2214 = fmul fast float %1689, %1689
  %2215 = fmul fast float %2214, %2214
  %2216 = fadd fast float %2171, 1.000000e+00
  %2217 = fsub fast float %2216, %2186
  %2218 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2219 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2220 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2221 = fsub fast float 1.000000e+00, %2215
  %2222 = call float @dx.op.binary.f32(i32 36, float %2218, float %2221)  ; FMin(a,b)
  %2223 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2224 = call float @dx.op.binary.f32(i32 35, float %2222, float %2223)  ; FMax(a,b)
  %2225 = fadd fast float %2220, 0xBFE4CCCCC0000000
  %2226 = fmul fast float %2225, 0x4006DB6DA0000000
  %2227 = call float @dx.op.unary.f32(i32 7, float %2226)  ; Saturate(value)
  %2228 = fmul fast float %2227, 2.000000e+00
  %2229 = fsub fast float 3.000000e+00, %2228
  %2230 = bitcast float %1726 to i32
  %2231 = ashr i32 %2230, 1
  %2232 = add nsw i32 %2231, 532487669
  %2233 = bitcast i32 %2232 to float
  %2234 = fsub fast float 1.000000e+00, %2233
  %2235 = bitcast float %2234 to i32
  %2236 = sub nsw i32 2129859010, %2235
  %2237 = bitcast i32 %2236 to float
  %2238 = fmul fast float %2237, 2.000000e+00
  %2239 = bitcast float %1727 to i32
  %2240 = ashr i32 %2239, 1
  %2241 = add nsw i32 %2240, 532487669
  %2242 = bitcast i32 %2241 to float
  %2243 = fsub fast float 1.000000e+00, %2242
  %2244 = bitcast float %2243 to i32
  %2245 = sub nsw i32 2129859010, %2244
  %2246 = bitcast i32 %2245 to float
  %2247 = fmul fast float %2246, 2.000000e+00
  %2248 = bitcast float %1728 to i32
  %2249 = ashr i32 %2248, 1
  %2250 = add nsw i32 %2249, 532487669
  %2251 = bitcast i32 %2250 to float
  %2252 = fsub fast float 1.000000e+00, %2251
  %2253 = bitcast float %2252 to i32
  %2254 = sub nsw i32 2129859010, %2253
  %2255 = bitcast i32 %2254 to float
  %2256 = fmul fast float %2255, 2.000000e+00
  %2257 = fsub fast float 0x4002A9FBE0000000, %2238
  %2258 = fadd fast float %2238, 0x3FD54FDF00000000
  %2259 = bitcast float %2258 to i32
  %2260 = sub nsw i32 2129859010, %2259
  %2261 = bitcast i32 %2260 to float
  %2262 = fmul fast float %2261, %2257
  %2263 = fmul fast float %2262, %2262
  %2264 = fsub fast float 0x4002A9FBE0000000, %2247
  %2265 = fadd fast float %2247, 0x3FD54FDF00000000
  %2266 = bitcast float %2265 to i32
  %2267 = sub nsw i32 2129859010, %2266
  %2268 = bitcast i32 %2267 to float
  %2269 = fmul fast float %2268, %2264
  %2270 = fmul fast float %2269, %2269
  %2271 = fsub fast float 0x4002A9FBE0000000, %2256
  %2272 = fadd fast float %2256, 0x3FD54FDF00000000
  %2273 = bitcast float %2272 to i32
  %2274 = sub nsw i32 2129859010, %2273
  %2275 = bitcast i32 %2274 to float
  %2276 = fmul fast float %2275, %2271
  %2277 = fmul fast float %2276, %2276
  %2278 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2263)  ; FMax(a,b)
  %2279 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2270)  ; FMax(a,b)
  %2280 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2277)  ; FMax(a,b)
  %2281 = fsub fast float 1.000000e+00, %2166
  %2282 = fadd fast float %2281, %2182
  %2283 = call float @dx.op.unary.f32(i32 7, float %2282)  ; Saturate(value)
  %2284 = fsub fast float 1.000000e+00, %2146
  %2285 = fmul fast float %2224, %2284
  %2286 = fmul fast float %2227, %2227
  %2287 = fmul fast float %2286, %2285
  %2288 = fmul fast float %2287, %2229
  %2289 = fmul fast float %2284, 0xBFE99999A0000000
  %2290 = fmul fast float %2289, %2175
  %2291 = fmul fast float %2290, %2186
  %2292 = fadd fast float %2291, 1.000000e+00
  %2293 = fadd fast float %1729, -1.000000e+00
  %2294 = fmul fast float %2292, %2293
  %2295 = fadd fast float %2294, 1.000000e+00
  %2296 = fsub fast float %2278, %1726
  %2297 = fsub fast float %2279, %1727
  %2298 = fsub fast float %2280, %1728
  %2299 = fmul fast float %2288, %2296
  %2300 = fmul fast float %2288, %2297
  %2301 = fmul fast float %2288, %2298
  %2302 = fadd fast float %2299, %1726
  %2303 = fadd fast float %2300, %1727
  %2304 = fadd fast float %2301, %1728
  %2305 = fsub fast float %76, %1705
  %2306 = fsub fast float %77, %1706
  %2307 = fsub fast float %78, %1707
  %2308 = fmul fast float %2288, %2305
  %2309 = fmul fast float %2288, %2306
  %2310 = fmul fast float %2288, %2307
  %2311 = fadd fast float %2308, %1705
  %2312 = fadd fast float %2309, %1706
  %2313 = fadd fast float %2310, %1707
  %2314 = fmul fast float %2288, %2283
  %2315 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  %2316 = fsub fast float 1.000000e+00, %2315
  %2317 = fmul fast float %2314, %2316
  %2318 = fadd fast float %2317, %2315
  %2319 = fsub fast float 1.000000e+00, %1689
  %2320 = fmul fast float %2288, %2319
  %2321 = fadd fast float %2320, %1689
  %2322 = call float @dx.op.dot3.f32(i32 55, float %2311, float %2312, float %2313, float %2311, float %2312, float %2313)  ; Dot3(ax,ay,az,bx,by,bz)
  %2323 = call float @dx.op.unary.f32(i32 25, float %2322)  ; Rsqrt(value)
  %2324 = fmul fast float %2311, %2323
  %2325 = fmul fast float %2312, %2323
  %2326 = fmul fast float %2313, %2323
  br label %2327

; <label>:2327                                    ; preds = %2159, %2152
  %2328 = phi float [ %2158, %2152 ], [ %2165, %2159 ]
  %2329 = phi float [ %2157, %2152 ], [ %2163, %2159 ]
  %2330 = phi float [ %2156, %2152 ], [ %2161, %2159 ]
  %2331 = phi float [ %2155, %2152 ], [ %2164, %2159 ]
  %2332 = phi float [ %2154, %2152 ], [ %2162, %2159 ]
  %2333 = phi float [ %2153, %2152 ], [ %2160, %2159 ]
  %2334 = phi float [ %1726, %2152 ], [ %2302, %2159 ]
  %2335 = phi float [ %1727, %2152 ], [ %2303, %2159 ]
  %2336 = phi float [ %1728, %2152 ], [ %2304, %2159 ]
  %2337 = phi float [ %1766, %2152 ], [ %2211, %2159 ]
  %2338 = phi float [ %1767, %2152 ], [ %2212, %2159 ]
  %2339 = phi float [ %1768, %2152 ], [ %2213, %2159 ]
  %2340 = phi float [ %1705, %2152 ], [ %2324, %2159 ]
  %2341 = phi float [ %1706, %2152 ], [ %2325, %2159 ]
  %2342 = phi float [ %1707, %2152 ], [ %2326, %2159 ]
  %2343 = phi float [ %1729, %2152 ], [ %2318, %2159 ]
  %2344 = phi float [ %1689, %2152 ], [ %2321, %2159 ]
  %2345 = fsub fast float -0.000000e+00, %148
  %2346 = select i1 %237, float 0.000000e+00, float %2336
  %2347 = call float @dx.op.dot3.f32(i32 55, float %2340, float %2341, float %2342, float %2330, float %2329, float %2328)  ; Dot3(ax,ay,az,bx,by,bz)
  %2348 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2349 = call float @dx.op.dot3.f32(i32 55, float %2333, float %2332, float %2331, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %2350 = fmul fast float %2349, 2.000000e+00
  %2351 = fmul fast float %2350, %2340
  %2352 = fmul fast float %2350, %2341
  %2353 = fmul fast float %2350, %2342
  %2354 = fsub fast float %2333, %2351
  %2355 = fsub fast float %2332, %2352
  %2356 = fsub fast float %2331, %2353
  %2357 = call float @dx.op.binary.f32(i32 36, float %2344, float 1.000000e+00)  ; FMin(a,b)
  %2358 = fsub fast float 1.000000e+00, %2357
  %2359 = bitcast float %2358 to i32
  %2360 = ashr i32 %2359, 1
  %2361 = add nsw i32 %2360, 532487669
  %2362 = bitcast i32 %2361 to float
  %2363 = fsub fast float 1.000000e+00, %2343
  %2364 = call float @dx.op.binary.f32(i32 35, float %2363, float 0x3F847AE140000000)  ; FMax(a,b)
  %2365 = fmul fast float %2364, %2364
  %2366 = fmul fast float %2365, %2365
  %2367 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  %2368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2362, float %2366, float %2367, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2369 = extractvalue %dx.types.ResRet.f32 %2368, 0
  %2370 = fsub fast float 1.000000e+00, %2344
  %2371 = bitcast float %2370 to i32
  %2372 = sub nsw i32 2129859010, %2371
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.CBufRet.f32 %2373, 1
  %2376 = fadd fast float %2374, %146
  %2377 = fadd fast float %2375, %147
  %2378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.i32 %2378, 0
  %2380 = icmp eq i32 %2379, 1
  br i1 %2380, label %2381, label %2416

; <label>:2381                                    ; preds = %2327
  %2382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2383 = extractvalue %dx.types.CBufRet.f32 %2382, 0
  %2384 = extractvalue %dx.types.CBufRet.f32 %2382, 1
  %2385 = fsub fast float %2376, %2383
  %2386 = fsub fast float %2377, %2384
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 0
  %2389 = extractvalue %dx.types.CBufRet.f32 %2387, 1
  %2390 = fmul fast float %2385, %2388
  %2391 = fmul fast float %2386, %2389
  %2392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2390, float %2391, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2393 = extractvalue %dx.types.ResRet.f32 %2392, 0
  %2394 = fcmp fast ogt float %2393, 0.000000e+00
  %2395 = extractvalue %dx.types.CBufRet.i32 %2378, 3
  %2396 = icmp ne i32 %2395, 0
  %2397 = and i1 %2394, %2396
  br i1 %2397, label %2398, label %2416, !dx.controlflow.hints !106

; <label>:2398                                    ; preds = %2381
  %2399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2400 = extractvalue %dx.types.CBufRet.f32 %2399, 0
  %2401 = extractvalue %dx.types.CBufRet.f32 %2399, 1
  %2402 = fsub fast float %2376, %2400
  %2403 = fsub fast float %2377, %2401
  %2404 = fmul fast float %2402, %2402
  %2405 = fmul fast float %2403, %2403
  %2406 = fadd fast float %2404, %2405
  %2407 = uitofp i32 %2395 to float
  %2408 = fmul fast float %2407, %2407
  %2409 = fcmp fast ogt float %2406, %2408
  br i1 %2409, label %2416, label %2410

; <label>:2410                                    ; preds = %2398
  %2411 = call float @dx.op.unary.f32(i32 24, float %2406)  ; Sqrt(value)
  %2412 = fsub fast float %2407, %2411
  %2413 = fmul fast float %2412, 0x3F75555560000000
  %2414 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  %2415 = call float @dx.op.binary.f32(i32 36, float %2414, float %2393)  ; FMin(a,b)
  br label %2416

; <label>:2416                                    ; preds = %2410, %2398, %2381, %2327
  %2417 = phi float [ 1.000000e+00, %2327 ], [ %2415, %2410 ], [ %2393, %2381 ], [ 0.000000e+00, %2398 ]
  %2418 = fcmp fast ogt float %2417, 0.000000e+00
  br i1 %2418, label %2419, label %2518, !dx.controlflow.hints !107

; <label>:2419                                    ; preds = %2416
  %2420 = fadd fast float %177, 5.000000e-01
  %2421 = call float @dx.op.unary.f32(i32 27, float %2420)  ; Round_ni(value)
  %2422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %175, float %176, float %2421, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2423 = extractvalue %dx.types.ResRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.ResRet.f32 %2422, 1
  %2425 = extractvalue %dx.types.ResRet.f32 %2422, 2
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 3
  %2428 = fmul fast float %2427, %2423
  %2429 = fmul fast float %2427, %2424
  %2430 = fmul fast float %2427, %2425
  %2431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %175, float %176, float %2421, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2432 = extractvalue %dx.types.ResRet.f32 %2431, 0
  %2433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %175, float %176, float %2421, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2434 = extractvalue %dx.types.ResRet.f32 %2433, 0
  %2435 = extractvalue %dx.types.ResRet.f32 %2433, 1
  %2436 = fmul fast float %2434, 2.000000e+00
  %2437 = fmul fast float %2435, 2.000000e+00
  %2438 = fadd fast float %2436, -1.000000e+00
  %2439 = fadd fast float %2437, -1.000000e+00
  %2440 = fadd fast float %2438, %2439
  %2441 = fmul fast float %2440, 5.000000e-01
  %2442 = fsub fast float %2438, %2439
  %2443 = fmul fast float %2442, 5.000000e-01
  %2444 = call float @dx.op.unary.f32(i32 6, float %2441)  ; FAbs(value)
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = call float @dx.op.unary.f32(i32 6, float %2443)  ; FAbs(value)
  %2447 = fsub fast float %2445, %2446
  %2448 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2447)  ; FMax(a,b)
  %2449 = call float @dx.op.dot3.f32(i32 55, float %2441, float %2443, float %2448, float %2441, float %2443, float %2448)  ; Dot3(ax,ay,az,bx,by,bz)
  %2450 = bitcast float %2449 to i32
  %2451 = ashr i32 %2450, 1
  %2452 = sub nsw i32 1597250115, %2451
  %2453 = bitcast i32 %2452 to float
  %2454 = fmul fast float %2453, %2441
  %2455 = fmul fast float %2453, %2443
  %2456 = fmul fast float %2453, %2448
  %2457 = fsub fast float 1.000000e+00, %2432
  %2458 = fdiv fast float %2457, %2456
  %2459 = fmul fast float %2456, %76
  %2460 = fmul fast float %2456, %77
  %2461 = fmul fast float %2456, %78
  %2462 = fmul fast float %2454, %72
  %2463 = fmul fast float %2454, %73
  %2464 = fmul fast float %2454, %74
  %2465 = fadd fast float %2459, %2462
  %2466 = fadd fast float %2460, %2463
  %2467 = fadd fast float %2461, %2464
  %2468 = fmul fast float %2455, %110
  %2469 = fmul fast float %2455, %111
  %2470 = fmul fast float %2455, %112
  %2471 = fadd fast float %2465, %2468
  %2472 = fadd fast float %2466, %2469
  %2473 = fadd fast float %2467, %2470
  %2474 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2472, float %2473, float %2471, float %2472, float %2473)  ; Dot3(ax,ay,az,bx,by,bz)
  %2475 = call float @dx.op.unary.f32(i32 25, float %2474)  ; Rsqrt(value)
  %2476 = fmul fast float %2471, %2475
  %2477 = fmul fast float %2472, %2475
  %2478 = fmul fast float %2473, %2475
  %2479 = call float @dx.op.dot3.f32(i32 55, float %2340, float %2341, float %2342, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %2480 = call float @dx.op.unary.f32(i32 7, float %2479)  ; Saturate(value)
  %2481 = fmul fast float %2480, 5.000000e-01
  %2482 = fadd fast float %2481, 5.000000e-01
  %2483 = fmul fast float %2482, %2432
  %2484 = call float @dx.op.dot3.f32(i32 55, float %2340, float %2341, float %2342, float %2476, float %2477, float %2478)  ; Dot3(ax,ay,az,bx,by,bz)
  %2485 = call float @dx.op.unary.f32(i32 7, float %2484)  ; Saturate(value)
  %2486 = fmul fast float %2485, %2458
  %2487 = fadd fast float %2483, %2486
  %2488 = fsub fast float 5.000000e-01, %2481
  %2489 = fmul fast float %2488, %2337
  %2490 = fmul fast float %2488, %2338
  %2491 = fmul fast float %2488, %2339
  %2492 = fadd fast float %2487, %2489
  %2493 = fmul fast float %2492, %2428
  %2494 = fadd fast float %2487, %2490
  %2495 = fmul fast float %2494, %2429
  %2496 = fadd fast float %2487, %2491
  %2497 = fmul fast float %2496, %2430
  %2498 = call float @dx.op.dot3.f32(i32 55, float %2354, float %2355, float %2356, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %2499 = call float @dx.op.unary.f32(i32 7, float %2498)  ; Saturate(value)
  %2500 = fmul fast float %2499, 5.000000e-01
  %2501 = fadd fast float %2500, 5.000000e-01
  %2502 = fmul fast float %2501, %2432
  %2503 = call float @dx.op.dot3.f32(i32 55, float %2354, float %2355, float %2356, float %2476, float %2477, float %2478)  ; Dot3(ax,ay,az,bx,by,bz)
  %2504 = call float @dx.op.unary.f32(i32 7, float %2503)  ; Saturate(value)
  %2505 = fmul fast float %2504, %2458
  %2506 = fadd fast float %2502, %2505
  %2507 = fsub fast float 5.000000e-01, %2500
  %2508 = fmul fast float %2507, %2337
  %2509 = fmul fast float %2507, %2338
  %2510 = fmul fast float %2507, %2339
  %2511 = fadd fast float %2506, %2508
  %2512 = fmul fast float %2511, %2428
  %2513 = fadd fast float %2506, %2509
  %2514 = fmul fast float %2513, %2429
  %2515 = fadd fast float %2506, %2510
  %2516 = fmul fast float %2515, %2430
  %2517 = call float @dx.op.dot3.f32(i32 55, float %2428, float %2429, float %2430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2518

; <label>:2518                                    ; preds = %2419, %2416
  %2519 = phi float [ %2517, %2419 ], [ 0.000000e+00, %2416 ]
  %2520 = phi float [ %2512, %2419 ], [ 0.000000e+00, %2416 ]
  %2521 = phi float [ %2514, %2419 ], [ 0.000000e+00, %2416 ]
  %2522 = phi float [ %2516, %2419 ], [ 0.000000e+00, %2416 ]
  %2523 = phi float [ %2493, %2419 ], [ 0.000000e+00, %2416 ]
  %2524 = phi float [ %2495, %2419 ], [ 0.000000e+00, %2416 ]
  %2525 = phi float [ %2497, %2419 ], [ 0.000000e+00, %2416 ]
  %2526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2527 = extractvalue %dx.types.CBufRet.f32 %2526, 0
  %2528 = fcmp fast ogt float %2527, 0.000000e+00
  %2529 = and i1 %2418, %2528
  br i1 %2529, label %2530, label %2734, !dx.controlflow.hints !108

; <label>:2530                                    ; preds = %2518
  %2531 = extractvalue %dx.types.CBufRet.f32 %2373, 2
  %2532 = fadd fast float %2531, %148
  %2533 = fmul fast float %2340, 3.200000e+01
  %2534 = fmul fast float %2341, 3.200000e+01
  %2535 = fadd fast float %2376, %2533
  %2536 = fadd fast float %2377, %2534
  %2537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2537, 0
  %2539 = extractvalue %dx.types.CBufRet.f32 %2537, 1
  %2540 = fsub fast float %2535, %2538
  %2541 = fsub fast float %2536, %2539
  %2542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2543 = extractvalue %dx.types.CBufRet.f32 %2542, 0
  %2544 = extractvalue %dx.types.CBufRet.f32 %2542, 1
  %2545 = fmul fast float %2540, %2543
  %2546 = fmul fast float %2541, %2544
  %2547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2548 = extractvalue %dx.types.CBufRet.f32 %2547, 0
  %2549 = extractvalue %dx.types.CBufRet.f32 %2547, 1
  %2550 = fsub fast float %2376, %2548
  %2551 = fsub fast float %2377, %2549
  %2552 = fmul fast float %2550, %2550
  %2553 = fmul fast float %2551, %2551
  %2554 = fadd fast float %2552, %2553
  %2555 = call float @dx.op.unary.f32(i32 24, float %2554)  ; Sqrt(value)
  %2556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2557 = extractvalue %dx.types.CBufRet.f32 %2556, 0
  %2558 = extractvalue %dx.types.CBufRet.f32 %2556, 1
  %2559 = fsub fast float %2555, %2557
  %2560 = fdiv fast float %2559, %2558
  %2561 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  %2562 = fmul fast float %2561, 2.000000e+00
  %2563 = fsub fast float 3.000000e+00, %2562
  %2564 = fmul fast float %2561, %2561
  %2565 = fmul fast float %2564, %2563
  %2566 = fcmp fast oge float %2545, 0.000000e+00
  %2567 = fcmp fast ole float %2545, 1.000000e+00
  %2568 = and i1 %2567, %2566
  %2569 = fcmp fast oge float %2546, 0.000000e+00
  %2570 = and i1 %2569, %2568
  %2571 = fcmp fast ole float %2546, 1.000000e+00
  %2572 = and i1 %2571, %2570
  %2573 = fcmp fast ogt float %2565, 0.000000e+00
  %2574 = and i1 %2573, %2572
  br i1 %2574, label %2575, label %2698, !dx.controlflow.hints !109

; <label>:2575                                    ; preds = %2530
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 2
  %2578 = extractvalue %dx.types.CBufRet.f32 %2576, 3
  %2579 = fmul fast float %2577, %2545
  %2580 = fmul fast float %2578, %2546
  %2581 = call float @dx.op.unary.f32(i32 27, float %2579)  ; Round_ni(value)
  %2582 = call float @dx.op.unary.f32(i32 27, float %2580)  ; Round_ni(value)
  %2583 = fptosi float %2581 to i32
  %2584 = fptosi float %2582 to i32
  %2585 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2583, i32 %2584, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = lshr i32 %2586, 16
  %2588 = icmp eq i32 %2587, 65535
  br i1 %2588, label %2698, label %2589

; <label>:2589                                    ; preds = %2575
  %2590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2590, 0
  %2592 = fmul fast float %2591, %2545
  %2593 = extractvalue %dx.types.CBufRet.f32 %2590, 1
  %2594 = fadd fast float %2592, %2593
  %2595 = extractvalue %dx.types.CBufRet.f32 %2590, 2
  %2596 = fmul fast float %2595, %2546
  %2597 = extractvalue %dx.types.CBufRet.f32 %2590, 3
  %2598 = fadd fast float %2596, %2597
  %2599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2594, float %2598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2600 = extractvalue %dx.types.ResRet.f32 %2599, 0
  %2601 = extractvalue %dx.types.ResRet.f32 %2599, 1
  %2602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.f32 %2602, 1
  %2604 = extractvalue %dx.types.CBufRet.f32 %2602, 0
  %2605 = fsub fast float %2603, %2604
  %2606 = fmul fast float %2605, %2600
  %2607 = fadd fast float %2606, %2604
  %2608 = extractvalue %dx.types.CBufRet.f32 %2602, 3
  %2609 = extractvalue %dx.types.CBufRet.f32 %2602, 2
  %2610 = fsub fast float %2608, %2609
  %2611 = fmul fast float %2610, %2601
  %2612 = fadd fast float %2611, %2609
  %2613 = fsub fast float %2532, %2607
  %2614 = fsub fast float %2612, %2607
  %2615 = fdiv fast float %2613, %2614
  %2616 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2617 = extractvalue %dx.types.CBufRet.f32 %2526, 1
  %2618 = extractvalue %dx.types.CBufRet.f32 %2576, 0
  %2619 = extractvalue %dx.types.CBufRet.f32 %2576, 1
  %2620 = fmul fast float %2618, %2545
  %2621 = fmul fast float %2619, %2546
  %2622 = fmul fast float %2620, 1.250000e-01
  %2623 = fmul fast float %2621, 1.250000e-01
  %2624 = call float @dx.op.unary.f32(i32 27, float %2622)  ; Round_ni(value)
  %2625 = call float @dx.op.unary.f32(i32 27, float %2623)  ; Round_ni(value)
  %2626 = fmul fast float %2624, 8.000000e+00
  %2627 = fmul fast float %2625, 8.000000e+00
  %2628 = fsub fast float %2620, %2626
  %2629 = fsub fast float %2621, %2627
  %2630 = fadd fast float %2628, 5.000000e-01
  %2631 = fadd fast float %2629, 5.000000e-01
  %2632 = and i32 %2587, 255
  %2633 = lshr i32 %2586, 24
  %2634 = mul nuw nsw i32 %2632, 9
  %2635 = uitofp i32 %2634 to float
  %2636 = mul nuw nsw i32 %2633, 9
  %2637 = uitofp i32 %2636 to float
  %2638 = fadd fast float %2630, %2635
  %2639 = fadd fast float %2631, %2637
  %2640 = fdiv fast float %2638, %2527
  %2641 = fdiv fast float %2639, %2617
  %2642 = fmul fast float %2616, 4.375000e-01
  %2643 = fadd fast float %2642, 3.125000e-02
  %2644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2640, float %2641, float %2643, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2645 = extractvalue %dx.types.ResRet.f32 %2644, 0
  %2646 = extractvalue %dx.types.ResRet.f32 %2644, 1
  %2647 = extractvalue %dx.types.ResRet.f32 %2644, 2
  %2648 = fadd fast float %2642, 5.312500e-01
  %2649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2640, float %2641, float %2648, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.ResRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.ResRet.f32 %2649, 2
  %2653 = fmul fast float %2650, 2.000000e+00
  %2654 = fmul fast float %2651, 2.000000e+00
  %2655 = fmul fast float %2652, 2.000000e+00
  %2656 = fadd fast float %2653, -1.000000e+00
  %2657 = fadd fast float %2654, -1.000000e+00
  %2658 = fadd fast float %2655, -1.000000e+00
  %2659 = fmul fast float %2656, %2656
  %2660 = fmul fast float %2657, %2657
  %2661 = fadd fast float %2659, %2660
  %2662 = fmul fast float %2658, %2658
  %2663 = fadd fast float %2661, %2662
  %2664 = call float @dx.op.unary.f32(i32 24, float %2663)  ; Sqrt(value)
  %2665 = fcmp fast ogt float %2664, 0.000000e+00
  br i1 %2665, label %2666, label %2670

; <label>:2666                                    ; preds = %2589
  %2667 = fdiv fast float %2656, %2664
  %2668 = fdiv fast float %2657, %2664
  %2669 = fdiv fast float %2658, %2664
  br label %2670

; <label>:2670                                    ; preds = %2666, %2589
  %2671 = phi float [ %2667, %2666 ], [ 0.000000e+00, %2589 ]
  %2672 = phi float [ %2668, %2666 ], [ 0.000000e+00, %2589 ]
  %2673 = phi float [ %2669, %2666 ], [ 0.000000e+00, %2589 ]
  %2674 = call float @dx.op.dot3.f32(i32 55, float %2671, float %2672, float %2673, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %2675 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2674)  ; FMax(a,b)
  %2676 = fmul fast float %2675, 0x400C5BF8A0000000
  %2677 = fmul fast float %2645, %2565
  %2678 = fmul fast float %2677, %2676
  %2679 = fmul fast float %2646, %2565
  %2680 = fmul fast float %2679, %2676
  %2681 = fmul fast float %2647, %2565
  %2682 = fmul fast float %2681, %2676
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 3
  %2685 = fmul fast float %2678, %2684
  %2686 = fmul fast float %2680, %2684
  %2687 = fmul fast float %2682, %2684
  %2688 = fcmp fast ogt float %2532, %2612
  br i1 %2688, label %2689, label %2698

; <label>:2689                                    ; preds = %2670
  %2690 = fmul fast float %2614, 0x3FC24924A0000000
  %2691 = fsub fast float %2532, %2612
  %2692 = fdiv fast float %2691, %2690
  %2693 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2694 = fsub fast float 1.000000e+00, %2693
  %2695 = fmul fast float %2694, %2685
  %2696 = fmul fast float %2694, %2686
  %2697 = fmul fast float %2694, %2687
  br label %2698

; <label>:2698                                    ; preds = %2689, %2670, %2575, %2530
  %2699 = phi float [ %2697, %2689 ], [ %2687, %2670 ], [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2530 ]
  %2700 = phi float [ %2696, %2689 ], [ %2686, %2670 ], [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2530 ]
  %2701 = phi float [ %2695, %2689 ], [ %2685, %2670 ], [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2530 ]
  %2702 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2701)  ; FMax(a,b)
  %2703 = fmul fast float %2702, 0x3FD20DD760000000
  %2704 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2354, float %2355, float %2356)  ; Dot3(ax,ay,az,bx,by,bz)
  %2705 = fmul fast float %2704, 0x3FDF454380000000
  %2706 = fmul fast float %2704, %2704
  %2707 = fmul fast float %2706, 0x3FEE471020000000
  %2708 = fadd fast float %2707, 0xBFD42F6020000000
  %2709 = call float @dx.op.dot3.f32(i32 55, float %2702, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2705, float %2708)  ; Dot3(ax,ay,az,bx,by,bz)
  %2710 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2700)  ; FMax(a,b)
  %2711 = fmul fast float %2710, 0x3FD20DD760000000
  %2712 = call float @dx.op.dot3.f32(i32 55, float %2710, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2705, float %2708)  ; Dot3(ax,ay,az,bx,by,bz)
  %2713 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2699)  ; FMax(a,b)
  %2714 = fmul fast float %2713, 0x3FD20DD760000000
  %2715 = call float @dx.op.dot3.f32(i32 55, float %2713, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2705, float %2708)  ; Dot3(ax,ay,az,bx,by,bz)
  %2716 = call float @dx.op.binary.f32(i32 35, float %2703, float 0.000000e+00)  ; FMax(a,b)
  %2717 = call float @dx.op.binary.f32(i32 35, float %2711, float 0.000000e+00)  ; FMax(a,b)
  %2718 = call float @dx.op.binary.f32(i32 35, float %2714, float 0.000000e+00)  ; FMax(a,b)
  %2719 = call float @dx.op.binary.f32(i32 35, float %2709, float 0.000000e+00)  ; FMax(a,b)
  %2720 = call float @dx.op.binary.f32(i32 35, float %2712, float 0.000000e+00)  ; FMax(a,b)
  %2721 = call float @dx.op.binary.f32(i32 35, float %2715, float 0.000000e+00)  ; FMax(a,b)
  %2722 = fmul fast float %2716, %2417
  %2723 = fmul fast float %2717, %2417
  %2724 = fmul fast float %2718, %2417
  %2725 = fadd fast float %2722, %2523
  %2726 = fadd fast float %2723, %2524
  %2727 = fadd fast float %2724, %2525
  %2728 = fmul fast float %2719, %2417
  %2729 = fmul fast float %2720, %2417
  %2730 = fmul fast float %2721, %2417
  %2731 = fadd fast float %2728, %2520
  %2732 = fadd fast float %2729, %2521
  %2733 = fadd fast float %2730, %2522
  br label %2734

; <label>:2734                                    ; preds = %2698, %2518
  %2735 = phi float [ %2731, %2698 ], [ %2520, %2518 ]
  %2736 = phi float [ %2732, %2698 ], [ %2521, %2518 ]
  %2737 = phi float [ %2733, %2698 ], [ %2522, %2518 ]
  %2738 = phi float [ %2722, %2698 ], [ 0.000000e+00, %2518 ]
  %2739 = phi float [ %2723, %2698 ], [ 0.000000e+00, %2518 ]
  %2740 = phi float [ %2724, %2698 ], [ 0.000000e+00, %2518 ]
  %2741 = phi float [ %2725, %2698 ], [ %2523, %2518 ]
  %2742 = phi float [ %2726, %2698 ], [ %2524, %2518 ]
  %2743 = phi float [ %2727, %2698 ], [ %2525, %2518 ]
  %2744 = fcmp fast olt float %2417, 1.000000e+00
  br i1 %2744, label %2745, label %3583, !dx.controlflow.hints !110

; <label>:2745                                    ; preds = %2734
  %2746 = extractvalue %dx.types.CBufRet.f32 %2373, 2
  %2747 = fadd fast float %2746, %148
  %2748 = fmul fast float %2340, 3.200000e+01
  %2749 = fmul fast float %2341, 3.200000e+01
  %2750 = fadd fast float %2376, %2748
  %2751 = fadd fast float %2377, %2749
  %2752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.CBufRet.f32 %2752, 1
  %2755 = fsub fast float %2750, %2753
  %2756 = fsub fast float %2751, %2754
  %2757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.f32 %2757, 0
  %2759 = extractvalue %dx.types.CBufRet.f32 %2757, 1
  %2760 = fmul fast float %2755, %2758
  %2761 = fmul fast float %2756, %2759
  %2762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2763 = extractvalue %dx.types.CBufRet.f32 %2762, 0
  %2764 = fmul fast float %2760, %2763
  %2765 = extractvalue %dx.types.CBufRet.f32 %2762, 1
  %2766 = fadd fast float %2764, %2765
  %2767 = extractvalue %dx.types.CBufRet.f32 %2762, 2
  %2768 = fmul fast float %2767, %2761
  %2769 = extractvalue %dx.types.CBufRet.f32 %2762, 3
  %2770 = fadd fast float %2768, %2769
  %2771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2766, float %2770, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.ResRet.f32 %2771, 1
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2776 = extractvalue %dx.types.CBufRet.f32 %2774, 0
  %2777 = fsub fast float %2775, %2776
  %2778 = fmul fast float %2777, %2772
  %2779 = fadd fast float %2778, %2776
  %2780 = extractvalue %dx.types.CBufRet.f32 %2774, 3
  %2781 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2782 = fsub fast float %2780, %2781
  %2783 = fmul fast float %2782, %2773
  %2784 = fadd fast float %2783, %2781
  %2785 = fsub fast float %2747, %2779
  %2786 = fsub fast float %2784, %2779
  %2787 = fdiv fast float %2785, %2786
  %2788 = call float @dx.op.unary.f32(i32 7, float %2787)  ; Saturate(value)
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 0
  %2791 = fmul fast float %2790, %2788
  %2792 = extractvalue %dx.types.CBufRet.f32 %2789, 1
  %2793 = fadd fast float %2791, %2792
  %2794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2766, float %2770, float %2793, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.ResRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.ResRet.f32 %2794, 2
  %2798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2799 = extractvalue %dx.types.CBufRet.f32 %2798, 0
  %2800 = extractvalue %dx.types.CBufRet.f32 %2798, 1
  %2801 = extractvalue %dx.types.CBufRet.f32 %2798, 2
  %2802 = fmul fast float %2799, %2795
  %2803 = fmul fast float %2800, %2796
  %2804 = fmul fast float %2801, %2797
  %2805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.f32 %2805, 0
  %2807 = extractvalue %dx.types.CBufRet.f32 %2805, 1
  %2808 = extractvalue %dx.types.CBufRet.f32 %2805, 2
  %2809 = fadd fast float %2802, %2806
  %2810 = fadd fast float %2803, %2807
  %2811 = fadd fast float %2804, %2808
  %2812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.f32 %2812, 0
  %2814 = fmul fast float %2813, %2760
  %2815 = extractvalue %dx.types.CBufRet.f32 %2812, 1
  %2816 = fadd fast float %2814, %2815
  %2817 = extractvalue %dx.types.CBufRet.f32 %2812, 2
  %2818 = fmul fast float %2817, %2761
  %2819 = extractvalue %dx.types.CBufRet.f32 %2812, 3
  %2820 = fadd fast float %2818, %2819
  %2821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2822 = extractvalue %dx.types.CBufRet.f32 %2821, 0
  %2823 = extractvalue %dx.types.CBufRet.f32 %2821, 1
  %2824 = extractvalue %dx.types.CBufRet.f32 %2821, 2
  %2825 = extractvalue %dx.types.CBufRet.f32 %2821, 3
  %2826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2827 = extractvalue %dx.types.CBufRet.f32 %2826, 0
  %2828 = extractvalue %dx.types.CBufRet.f32 %2826, 1
  %2829 = extractvalue %dx.types.CBufRet.f32 %2826, 2
  %2830 = extractvalue %dx.types.CBufRet.f32 %2826, 3
  %2831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2816, float %2820, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2832 = extractvalue %dx.types.ResRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.ResRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.ResRet.f32 %2831, 2
  %2835 = extractvalue %dx.types.ResRet.f32 %2831, 3
  %2836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2816, float %2820, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.ResRet.f32 %2836, 2
  %2840 = extractvalue %dx.types.ResRet.f32 %2836, 3
  %2841 = fmul fast float %2832, %2809
  %2842 = fmul fast float %2837, %2809
  %2843 = fmul fast float %2839, %2809
  %2844 = fmul fast float %2835, %2809
  %2845 = fadd fast float %2841, %2822
  %2846 = fadd fast float %2842, %2823
  %2847 = fadd fast float %2843, %2824
  %2848 = fadd fast float %2844, %2825
  %2849 = fmul fast float %2833, %2809
  %2850 = fmul fast float %2838, %2809
  %2851 = fadd fast float %2849, %2827
  %2852 = fadd fast float %2850, %2828
  %2853 = fmul fast float %2834, %2809
  %2854 = fmul fast float %2840, %2809
  %2855 = fadd fast float %2853, %2829
  %2856 = fadd fast float %2854, %2830
  %2857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2816, float %2820, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2858 = extractvalue %dx.types.ResRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.ResRet.f32 %2857, 1
  %2860 = extractvalue %dx.types.ResRet.f32 %2857, 2
  %2861 = extractvalue %dx.types.ResRet.f32 %2857, 3
  %2862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2816, float %2820, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2863 = extractvalue %dx.types.ResRet.f32 %2862, 0
  %2864 = extractvalue %dx.types.ResRet.f32 %2862, 1
  %2865 = extractvalue %dx.types.ResRet.f32 %2862, 2
  %2866 = extractvalue %dx.types.ResRet.f32 %2862, 3
  %2867 = fmul fast float %2858, %2810
  %2868 = fmul fast float %2863, %2810
  %2869 = fmul fast float %2865, %2810
  %2870 = fmul fast float %2861, %2810
  %2871 = fadd fast float %2845, %2867
  %2872 = fadd fast float %2846, %2868
  %2873 = fadd fast float %2847, %2869
  %2874 = fadd fast float %2848, %2870
  %2875 = fmul fast float %2859, %2810
  %2876 = fmul fast float %2864, %2810
  %2877 = fadd fast float %2851, %2875
  %2878 = fadd fast float %2852, %2876
  %2879 = fmul fast float %2860, %2810
  %2880 = fmul fast float %2866, %2810
  %2881 = fadd fast float %2855, %2879
  %2882 = fadd fast float %2856, %2880
  %2883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2816, float %2820, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2884 = extractvalue %dx.types.ResRet.f32 %2883, 0
  %2885 = extractvalue %dx.types.ResRet.f32 %2883, 1
  %2886 = extractvalue %dx.types.ResRet.f32 %2883, 2
  %2887 = extractvalue %dx.types.ResRet.f32 %2883, 3
  %2888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2816, float %2820, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2889 = extractvalue %dx.types.ResRet.f32 %2888, 0
  %2890 = extractvalue %dx.types.ResRet.f32 %2888, 1
  %2891 = extractvalue %dx.types.ResRet.f32 %2888, 2
  %2892 = extractvalue %dx.types.ResRet.f32 %2888, 3
  %2893 = fmul fast float %2884, %2811
  %2894 = fmul fast float %2889, %2811
  %2895 = fmul fast float %2891, %2811
  %2896 = fmul fast float %2887, %2811
  %2897 = fadd fast float %2871, %2893
  %2898 = fadd fast float %2872, %2894
  %2899 = fadd fast float %2873, %2895
  %2900 = fadd fast float %2874, %2896
  %2901 = fmul fast float %2885, %2811
  %2902 = fmul fast float %2890, %2811
  %2903 = fadd fast float %2877, %2901
  %2904 = fadd fast float %2878, %2902
  %2905 = fmul fast float %2886, %2811
  %2906 = fmul fast float %2892, %2811
  %2907 = fadd fast float %2881, %2905
  %2908 = fadd fast float %2882, %2906
  %2909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2910 = extractvalue %dx.types.CBufRet.f32 %2909, 0
  %2911 = fsub fast float %2376, %2910
  %2912 = fsub fast float %2753, %2376
  %2913 = call float @dx.op.binary.f32(i32 35, float %2912, float %2911)  ; FMax(a,b)
  %2914 = extractvalue %dx.types.CBufRet.f32 %2909, 1
  %2915 = fsub fast float %2377, %2914
  %2916 = fsub fast float %2754, %2377
  %2917 = call float @dx.op.binary.f32(i32 35, float %2916, float %2915)  ; FMax(a,b)
  %2918 = call float @dx.op.binary.f32(i32 35, float %2913, float %2917)  ; FMax(a,b)
  %2919 = extractvalue %dx.types.CBufRet.f32 %2757, 3
  %2920 = fmul fast float %2919, %2918
  %2921 = call float @dx.op.unary.f32(i32 7, float %2920)  ; Saturate(value)
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 0
  %2924 = extractvalue %dx.types.CBufRet.f32 %2922, 1
  %2925 = extractvalue %dx.types.CBufRet.f32 %2922, 2
  %2926 = extractvalue %dx.types.CBufRet.f32 %2922, 3
  %2927 = fsub fast float %2923, %2897
  %2928 = fsub fast float %2924, %2898
  %2929 = fsub fast float %2925, %2899
  %2930 = fsub fast float %2926, %2900
  %2931 = fmul fast float %2927, %2921
  %2932 = fmul fast float %2928, %2921
  %2933 = fmul fast float %2929, %2921
  %2934 = fmul fast float %2930, %2921
  %2935 = fadd fast float %2931, %2897
  %2936 = fadd fast float %2932, %2898
  %2937 = fadd fast float %2933, %2899
  %2938 = fadd fast float %2934, %2900
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 0
  %2941 = extractvalue %dx.types.CBufRet.f32 %2939, 1
  %2942 = fsub fast float %2940, %2903
  %2943 = fsub fast float %2941, %2904
  %2944 = fmul fast float %2942, %2921
  %2945 = fmul fast float %2943, %2921
  %2946 = fadd fast float %2944, %2903
  %2947 = fadd fast float %2945, %2904
  %2948 = extractvalue %dx.types.CBufRet.f32 %2939, 2
  %2949 = extractvalue %dx.types.CBufRet.f32 %2939, 3
  %2950 = fsub fast float %2948, %2907
  %2951 = fsub fast float %2949, %2908
  %2952 = fmul fast float %2950, %2921
  %2953 = fmul fast float %2951, %2921
  %2954 = fadd fast float %2952, %2907
  %2955 = fadd fast float %2953, %2908
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 0
  %2958 = fmul fast float %2957, %2935
  %2959 = fmul fast float %2957, %2936
  %2960 = fmul fast float %2957, %2937
  %2961 = fmul fast float %2957, %2938
  %2962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2963 = extractvalue %dx.types.CBufRet.f32 %2962, 0
  %2964 = fmul fast float %2963, %2946
  %2965 = fmul fast float %2963, %2947
  %2966 = fadd fast float %2964, %2958
  %2967 = fadd fast float %2965, %2960
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2970 = fmul fast float %2969, %2954
  %2971 = fmul fast float %2969, %2955
  %2972 = fadd fast float %2966, %2970
  %2973 = fadd fast float %2967, %2971
  %2974 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2975 = fmul fast float %2974, %2935
  %2976 = fmul fast float %2974, %2936
  %2977 = fmul fast float %2974, %2937
  %2978 = fmul fast float %2974, %2938
  %2979 = extractvalue %dx.types.CBufRet.f32 %2962, 1
  %2980 = fmul fast float %2979, %2946
  %2981 = fmul fast float %2979, %2947
  %2982 = fadd fast float %2980, %2975
  %2983 = fadd fast float %2981, %2977
  %2984 = extractvalue %dx.types.CBufRet.f32 %2968, 1
  %2985 = fmul fast float %2984, %2954
  %2986 = fmul fast float %2984, %2955
  %2987 = fadd fast float %2982, %2985
  %2988 = fadd fast float %2983, %2986
  %2989 = extractvalue %dx.types.CBufRet.f32 %2956, 2
  %2990 = fmul fast float %2989, %2935
  %2991 = fmul fast float %2989, %2936
  %2992 = fmul fast float %2989, %2937
  %2993 = fmul fast float %2989, %2938
  %2994 = extractvalue %dx.types.CBufRet.f32 %2962, 2
  %2995 = fmul fast float %2994, %2946
  %2996 = fmul fast float %2994, %2947
  %2997 = fadd fast float %2995, %2990
  %2998 = fadd fast float %2996, %2992
  %2999 = extractvalue %dx.types.CBufRet.f32 %2968, 2
  %3000 = fmul fast float %2999, %2954
  %3001 = fmul fast float %2999, %2955
  %3002 = fadd fast float %2997, %3000
  %3003 = fadd fast float %2998, %3001
  %3004 = fmul fast float %2991, %2991
  %3005 = fmul fast float %3003, %3003
  %3006 = fmul fast float %2993, %2993
  %3007 = fadd fast float %3006, %3004
  %3008 = fadd fast float %3007, %3005
  %3009 = call float @dx.op.unary.f32(i32 24, float %3008)  ; Sqrt(value)
  %3010 = fcmp fast ugt float %3009, 0.000000e+00
  br i1 %3010, label %3011, label %3026

; <label>:3011                                    ; preds = %2745
  %3012 = fsub fast float -0.000000e+00, %2993
  %3013 = fdiv fast float %3012, %3009
  %3014 = fsub fast float -0.000000e+00, %2991
  %3015 = fdiv fast float %3014, %3009
  %3016 = fdiv fast float %3003, %3009
  %3017 = fmul fast float %3002, 0x3FE279A760000000
  %3018 = fmul fast float %3015, %2991
  %3019 = fmul fast float %3016, %3003
  %3020 = fmul fast float %3013, %2993
  %3021 = fadd fast float %3018, %3020
  %3022 = fsub fast float %3021, %3019
  %3023 = call float @dx.op.unary.f32(i32 6, float %3022)  ; FAbs(value)
  %3024 = fadd fast float %3023, 0x3DDB7CDFE0000000
  %3025 = fdiv fast float %3017, %3024
  br label %3026

; <label>:3026                                    ; preds = %3011, %2745
  %3027 = phi float [ %3025, %3011 ], [ 1.000000e+00, %2745 ]
  %3028 = fmul fast float %2976, %2976
  %3029 = fmul fast float %2988, %2988
  %3030 = fmul fast float %2978, %2978
  %3031 = fadd fast float %3030, %3028
  %3032 = fadd fast float %3031, %3029
  %3033 = call float @dx.op.unary.f32(i32 24, float %3032)  ; Sqrt(value)
  %3034 = fcmp fast ugt float %3033, 0.000000e+00
  br i1 %3034, label %3035, label %3050

; <label>:3035                                    ; preds = %3026
  %3036 = fsub fast float -0.000000e+00, %2978
  %3037 = fdiv fast float %3036, %3033
  %3038 = fsub fast float -0.000000e+00, %2976
  %3039 = fdiv fast float %3038, %3033
  %3040 = fdiv fast float %2988, %3033
  %3041 = fmul fast float %2987, 0x3FE279A760000000
  %3042 = fmul fast float %3039, %2976
  %3043 = fmul fast float %3040, %2988
  %3044 = fmul fast float %3037, %2978
  %3045 = fadd fast float %3042, %3044
  %3046 = fsub fast float %3045, %3043
  %3047 = call float @dx.op.unary.f32(i32 6, float %3046)  ; FAbs(value)
  %3048 = fadd fast float %3047, 0x3DDB7CDFE0000000
  %3049 = fdiv fast float %3041, %3048
  br label %3050

; <label>:3050                                    ; preds = %3035, %3026
  %3051 = phi float [ %3049, %3035 ], [ 1.000000e+00, %3026 ]
  %3052 = call float @dx.op.binary.f32(i32 36, float %3051, float %3027)  ; FMin(a,b)
  %3053 = fmul fast float %2959, %2959
  %3054 = fmul fast float %2973, %2973
  %3055 = fmul fast float %2961, %2961
  %3056 = fadd fast float %3055, %3053
  %3057 = fadd fast float %3056, %3054
  %3058 = call float @dx.op.unary.f32(i32 24, float %3057)  ; Sqrt(value)
  %3059 = fcmp fast ugt float %3058, 0.000000e+00
  br i1 %3059, label %3060, label %3075

; <label>:3060                                    ; preds = %3050
  %3061 = fsub fast float -0.000000e+00, %2961
  %3062 = fdiv fast float %3061, %3058
  %3063 = fsub fast float -0.000000e+00, %2959
  %3064 = fdiv fast float %3063, %3058
  %3065 = fdiv fast float %2973, %3058
  %3066 = fmul fast float %2972, 0x3FE279A760000000
  %3067 = fmul fast float %3064, %2959
  %3068 = fmul fast float %3065, %2973
  %3069 = fmul fast float %3062, %2961
  %3070 = fadd fast float %3067, %3069
  %3071 = fsub fast float %3070, %3068
  %3072 = call float @dx.op.unary.f32(i32 6, float %3071)  ; FAbs(value)
  %3073 = fadd fast float %3072, 0x3DDB7CDFE0000000
  %3074 = fdiv fast float %3066, %3073
  br label %3075

; <label>:3075                                    ; preds = %3060, %3050
  %3076 = phi float [ %3074, %3060 ], [ 1.000000e+00, %3050 ]
  %3077 = call float @dx.op.binary.f32(i32 36, float %3076, float %3052)  ; FMin(a,b)
  %3078 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3079 = fcmp fast olt float %3078, 1.000000e+00
  br i1 %3079, label %3080, label %3090

; <label>:3080                                    ; preds = %3075
  %3081 = fmul fast float %3078, %2959
  %3082 = fmul fast float %3078, %2973
  %3083 = fmul fast float %3078, %2961
  %3084 = fmul fast float %3078, %2976
  %3085 = fmul fast float %3078, %2988
  %3086 = fmul fast float %3078, %2978
  %3087 = fmul fast float %3078, %2991
  %3088 = fmul fast float %3078, %3003
  %3089 = fmul fast float %3078, %2993
  br label %3090

; <label>:3090                                    ; preds = %3080, %3075
  %3091 = phi float [ %3087, %3080 ], [ %2991, %3075 ]
  %3092 = phi float [ %3088, %3080 ], [ %3003, %3075 ]
  %3093 = phi float [ %3089, %3080 ], [ %2993, %3075 ]
  %3094 = phi float [ %3084, %3080 ], [ %2976, %3075 ]
  %3095 = phi float [ %3085, %3080 ], [ %2988, %3075 ]
  %3096 = phi float [ %3086, %3080 ], [ %2978, %3075 ]
  %3097 = phi float [ %3081, %3080 ], [ %2959, %3075 ]
  %3098 = phi float [ %3082, %3080 ], [ %2973, %3075 ]
  %3099 = phi float [ %3083, %3080 ], [ %2961, %3075 ]
  %3100 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2972)  ; FMax(a,b)
  %3101 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2987)  ; FMax(a,b)
  %3102 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3002)  ; FMax(a,b)
  %3103 = fcmp fast oge float %2760, 0.000000e+00
  %3104 = and i1 %3103, %2528
  %3105 = fcmp fast ole float %2760, 1.000000e+00
  %3106 = and i1 %3105, %3104
  %3107 = fcmp fast oge float %2761, 0.000000e+00
  %3108 = and i1 %3107, %3106
  %3109 = fcmp fast ole float %2761, 1.000000e+00
  %3110 = and i1 %3109, %3108
  br i1 %3110, label %3111, label %3256, !dx.controlflow.hints !111

; <label>:3111                                    ; preds = %3090
  %3112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3113 = extractvalue %dx.types.CBufRet.f32 %3112, 2
  %3114 = extractvalue %dx.types.CBufRet.f32 %3112, 3
  %3115 = fmul fast float %3113, %2760
  %3116 = fmul fast float %3114, %2761
  %3117 = call float @dx.op.unary.f32(i32 27, float %3115)  ; Round_ni(value)
  %3118 = call float @dx.op.unary.f32(i32 27, float %3116)  ; Round_ni(value)
  %3119 = fptosi float %3117 to i32
  %3120 = fptosi float %3118 to i32
  %3121 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %3119, i32 %3120, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, 65535
  %3124 = lshr i32 %3122, 16
  %3125 = icmp eq i32 %3123, 65535
  br i1 %3125, label %3162, label %3126

; <label>:3126                                    ; preds = %3111
  %3127 = extractvalue %dx.types.CBufRet.f32 %2526, 1
  %3128 = extractvalue %dx.types.CBufRet.f32 %3112, 0
  %3129 = extractvalue %dx.types.CBufRet.f32 %3112, 1
  %3130 = fmul fast float %3128, %2760
  %3131 = fmul fast float %3129, %2761
  %3132 = fmul fast float %3130, 1.250000e-01
  %3133 = fmul fast float %3131, 1.250000e-01
  %3134 = call float @dx.op.unary.f32(i32 27, float %3132)  ; Round_ni(value)
  %3135 = call float @dx.op.unary.f32(i32 27, float %3133)  ; Round_ni(value)
  %3136 = fmul fast float %3134, 8.000000e+00
  %3137 = fmul fast float %3135, 8.000000e+00
  %3138 = and i32 %3122, 255
  %3139 = lshr i32 %3122, 8
  %3140 = and i32 %3139, 255
  %3141 = mul nuw nsw i32 %3138, 9
  %3142 = uitofp i32 %3141 to float
  %3143 = mul nuw nsw i32 %3140, 9
  %3144 = uitofp i32 %3143 to float
  %3145 = fadd fast float %3142, 5.000000e-01
  %3146 = fadd fast float %3145, %3130
  %3147 = fsub fast float %3146, %3136
  %3148 = fadd fast float %3144, 5.000000e-01
  %3149 = fadd fast float %3148, %3131
  %3150 = fsub fast float %3149, %3137
  %3151 = fdiv fast float %3147, %2527
  %3152 = fdiv fast float %3150, %3127
  %3153 = fmul fast float %2788, 4.375000e-01
  %3154 = fadd fast float %3153, 3.125000e-02
  %3155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3151, float %3152, float %3154, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3156 = extractvalue %dx.types.ResRet.f32 %3155, 0
  %3157 = extractvalue %dx.types.ResRet.f32 %3155, 1
  %3158 = extractvalue %dx.types.ResRet.f32 %3155, 2
  %3159 = fadd fast float %3156, %3100
  %3160 = fadd fast float %3157, %3101
  %3161 = fadd fast float %3158, %3102
  br label %3162

; <label>:3162                                    ; preds = %3126, %3111
  %3163 = phi float [ %3161, %3126 ], [ %3102, %3111 ]
  %3164 = phi float [ %3160, %3126 ], [ %3101, %3111 ]
  %3165 = phi float [ %3159, %3126 ], [ %3100, %3111 ]
  %3166 = icmp eq i32 %3124, 65535
  br i1 %3166, label %3256, label %3167

; <label>:3167                                    ; preds = %3162
  %3168 = extractvalue %dx.types.CBufRet.f32 %2526, 1
  %3169 = extractvalue %dx.types.CBufRet.f32 %3112, 0
  %3170 = extractvalue %dx.types.CBufRet.f32 %3112, 1
  %3171 = fmul fast float %3169, %2760
  %3172 = fmul fast float %3170, %2761
  %3173 = fmul fast float %3171, 1.250000e-01
  %3174 = fmul fast float %3172, 1.250000e-01
  %3175 = call float @dx.op.unary.f32(i32 27, float %3173)  ; Round_ni(value)
  %3176 = call float @dx.op.unary.f32(i32 27, float %3174)  ; Round_ni(value)
  %3177 = fmul fast float %3175, 8.000000e+00
  %3178 = fmul fast float %3176, 8.000000e+00
  %3179 = fsub fast float %3171, %3177
  %3180 = fsub fast float %3172, %3178
  %3181 = fadd fast float %3179, 5.000000e-01
  %3182 = fadd fast float %3180, 5.000000e-01
  %3183 = and i32 %3124, 255
  %3184 = lshr i32 %3122, 24
  %3185 = mul nuw nsw i32 %3183, 9
  %3186 = uitofp i32 %3185 to float
  %3187 = mul nuw nsw i32 %3184, 9
  %3188 = uitofp i32 %3187 to float
  %3189 = fadd fast float %3181, %3186
  %3190 = fadd fast float %3182, %3188
  %3191 = fdiv fast float %3189, %2527
  %3192 = fdiv fast float %3190, %3168
  %3193 = fmul fast float %2788, 4.375000e-01
  %3194 = fadd fast float %3193, 3.125000e-02
  %3195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3191, float %3192, float %3194, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  %3197 = extractvalue %dx.types.ResRet.f32 %3195, 1
  %3198 = extractvalue %dx.types.ResRet.f32 %3195, 2
  %3199 = fadd fast float %3193, 5.312500e-01
  %3200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3191, float %3192, float %3199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3201 = extractvalue %dx.types.ResRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.ResRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.ResRet.f32 %3200, 2
  %3204 = fmul fast float %3201, 2.000000e+00
  %3205 = fmul fast float %3202, 2.000000e+00
  %3206 = fmul fast float %3203, 2.000000e+00
  %3207 = fadd fast float %3204, -1.000000e+00
  %3208 = fadd fast float %3205, -1.000000e+00
  %3209 = fadd fast float %3206, -1.000000e+00
  %3210 = fmul fast float %3207, %3207
  %3211 = fmul fast float %3208, %3208
  %3212 = fadd fast float %3210, %3211
  %3213 = fmul fast float %3209, %3209
  %3214 = fadd fast float %3212, %3213
  %3215 = call float @dx.op.unary.f32(i32 24, float %3214)  ; Sqrt(value)
  %3216 = fcmp fast ogt float %3215, 0.000000e+00
  br i1 %3216, label %3217, label %3221

; <label>:3217                                    ; preds = %3167
  %3218 = fdiv fast float %3207, %3215
  %3219 = fdiv fast float %3208, %3215
  %3220 = fdiv fast float %3209, %3215
  br label %3221

; <label>:3221                                    ; preds = %3217, %3167
  %3222 = phi float [ %3218, %3217 ], [ 0.000000e+00, %3167 ]
  %3223 = phi float [ %3219, %3217 ], [ 0.000000e+00, %3167 ]
  %3224 = phi float [ %3220, %3217 ], [ 0.000000e+00, %3167 ]
  %3225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3226 = extractvalue %dx.types.CBufRet.f32 %3225, 0
  %3227 = extractvalue %dx.types.CBufRet.f32 %3225, 1
  %3228 = fsub fast float %2376, %3226
  %3229 = fsub fast float %2377, %3227
  %3230 = fmul fast float %3228, %3228
  %3231 = fmul fast float %3229, %3229
  %3232 = fadd fast float %3230, %3231
  %3233 = call float @dx.op.unary.f32(i32 24, float %3232)  ; Sqrt(value)
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 0
  %3236 = extractvalue %dx.types.CBufRet.f32 %3234, 1
  %3237 = fsub fast float %3233, %3235
  %3238 = fdiv fast float %3237, %3236
  %3239 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3240 = fmul fast float %3239, 2.000000e+00
  %3241 = fsub fast float 3.000000e+00, %3240
  %3242 = fmul fast float %3239, %3239
  %3243 = fmul fast float %3242, %3241
  %3244 = call float @dx.op.dot3.f32(i32 55, float %3222, float %3223, float %3224, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %3245 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3244)  ; FMax(a,b)
  %3246 = fmul fast float %3245, 0x400C5BF8A0000000
  %3247 = fmul fast float %3243, %3196
  %3248 = fmul fast float %3247, %3246
  %3249 = fadd fast float %3248, %3165
  %3250 = fmul fast float %3243, %3197
  %3251 = fmul fast float %3250, %3246
  %3252 = fadd fast float %3251, %3164
  %3253 = fmul fast float %3243, %3198
  %3254 = fmul fast float %3253, %3246
  %3255 = fadd fast float %3254, %3163
  br label %3256

; <label>:3256                                    ; preds = %3221, %3162, %3090
  %3257 = phi float [ %3255, %3221 ], [ %3163, %3162 ], [ %3102, %3090 ]
  %3258 = phi float [ %3252, %3221 ], [ %3164, %3162 ], [ %3101, %3090 ]
  %3259 = phi float [ %3249, %3221 ], [ %3165, %3162 ], [ %3100, %3090 ]
  %3260 = fcmp fast ogt float %2747, %2784
  %3261 = and i1 %3103, %3260
  %3262 = and i1 %3105, %3261
  %3263 = and i1 %3107, %3262
  %3264 = and i1 %3109, %3263
  br i1 %3264, label %3265, label %3322, !dx.controlflow.hints !112

; <label>:3265                                    ; preds = %3256
  %3266 = fmul fast float %2786, 0x3FC24924A0000000
  %3267 = fsub fast float %2747, %2784
  %3268 = fdiv fast float %3267, %3266
  %3269 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3270, 0
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 0
  %3274 = extractvalue %dx.types.CBufRet.f32 %3272, 1
  %3275 = extractvalue %dx.types.CBufRet.f32 %3272, 2
  %3276 = fsub fast float %3271, %3259
  %3277 = fsub fast float %3273, %3097
  %3278 = fsub fast float %3274, %3098
  %3279 = fsub fast float %3275, %3099
  %3280 = fmul fast float %3276, %3269
  %3281 = fmul fast float %3277, %3269
  %3282 = fmul fast float %3278, %3269
  %3283 = fmul fast float %3279, %3269
  %3284 = fadd fast float %3280, %3259
  %3285 = fadd fast float %3281, %3097
  %3286 = fadd fast float %3282, %3098
  %3287 = fadd fast float %3283, %3099
  %3288 = extractvalue %dx.types.CBufRet.f32 %3270, 1
  %3289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3290 = extractvalue %dx.types.CBufRet.f32 %3289, 0
  %3291 = extractvalue %dx.types.CBufRet.f32 %3289, 1
  %3292 = extractvalue %dx.types.CBufRet.f32 %3289, 2
  %3293 = fsub fast float %3288, %3258
  %3294 = fsub fast float %3290, %3094
  %3295 = fsub fast float %3291, %3095
  %3296 = fsub fast float %3292, %3096
  %3297 = fmul fast float %3293, %3269
  %3298 = fmul fast float %3294, %3269
  %3299 = fmul fast float %3295, %3269
  %3300 = fmul fast float %3296, %3269
  %3301 = fadd fast float %3297, %3258
  %3302 = fadd fast float %3298, %3094
  %3303 = fadd fast float %3299, %3095
  %3304 = fadd fast float %3300, %3096
  %3305 = extractvalue %dx.types.CBufRet.f32 %3270, 2
  %3306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.CBufRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.CBufRet.f32 %3306, 2
  %3310 = fsub fast float %3305, %3257
  %3311 = fsub fast float %3307, %3091
  %3312 = fsub fast float %3308, %3092
  %3313 = fsub fast float %3309, %3093
  %3314 = fmul fast float %3310, %3269
  %3315 = fmul fast float %3311, %3269
  %3316 = fmul fast float %3312, %3269
  %3317 = fmul fast float %3313, %3269
  %3318 = fadd fast float %3314, %3257
  %3319 = fadd fast float %3315, %3091
  %3320 = fadd fast float %3316, %3092
  %3321 = fadd fast float %3317, %3093
  br label %3322

; <label>:3322                                    ; preds = %3265, %3256
  %3323 = phi float [ %3318, %3265 ], [ %3257, %3256 ]
  %3324 = phi float [ %3319, %3265 ], [ %3091, %3256 ]
  %3325 = phi float [ %3320, %3265 ], [ %3092, %3256 ]
  %3326 = phi float [ %3321, %3265 ], [ %3093, %3256 ]
  %3327 = phi float [ %3301, %3265 ], [ %3258, %3256 ]
  %3328 = phi float [ %3302, %3265 ], [ %3094, %3256 ]
  %3329 = phi float [ %3303, %3265 ], [ %3095, %3256 ]
  %3330 = phi float [ %3304, %3265 ], [ %3096, %3256 ]
  %3331 = phi float [ %3284, %3265 ], [ %3259, %3256 ]
  %3332 = phi float [ %3285, %3265 ], [ %3097, %3256 ]
  %3333 = phi float [ %3286, %3265 ], [ %3098, %3256 ]
  %3334 = phi float [ %3287, %3265 ], [ %3099, %3256 ]
  %3335 = extractvalue %dx.types.CBufRet.f32 %2909, 3
  %3336 = fmul fast float %3335, %3331
  %3337 = fmul fast float %3335, %3327
  %3338 = fmul fast float %3335, %3323
  %3339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3340 = extractvalue %dx.types.CBufRet.f32 %3339, 3
  %3341 = fmul fast float %3336, %3340
  %3342 = fmul fast float %3337, %3340
  %3343 = fmul fast float %3338, %3340
  %3344 = call float @dx.op.dot3.f32(i32 55, float %3341, float %3342, float %3343, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3345 = fmul fast float %3344, 0x3FD20DD760000000
  %3346 = fmul fast float %3332, 1.500000e+00
  %3347 = fmul fast float %3346, %3335
  %3348 = fmul fast float %3347, %3340
  %3349 = fmul fast float %3333, 1.500000e+00
  %3350 = fmul fast float %3349, %3335
  %3351 = fmul fast float %3350, %3340
  %3352 = fmul fast float %3334, 1.500000e+00
  %3353 = fmul fast float %3352, %3335
  %3354 = fmul fast float %3353, %3340
  %3355 = fmul fast float %3328, 1.500000e+00
  %3356 = fmul fast float %3355, %3335
  %3357 = fmul fast float %3356, %3340
  %3358 = fmul fast float %3329, 1.500000e+00
  %3359 = fmul fast float %3358, %3335
  %3360 = fmul fast float %3359, %3340
  %3361 = fmul fast float %3330, 1.500000e+00
  %3362 = fmul fast float %3361, %3335
  %3363 = fmul fast float %3362, %3340
  %3364 = fmul fast float %3324, 1.500000e+00
  %3365 = fmul fast float %3364, %3335
  %3366 = fmul fast float %3365, %3340
  %3367 = fmul fast float %3325, 1.500000e+00
  %3368 = fmul fast float %3367, %3335
  %3369 = fmul fast float %3368, %3340
  %3370 = fmul fast float %3326, 1.500000e+00
  %3371 = fmul fast float %3370, %3335
  %3372 = fmul fast float %3371, %3340
  %3373 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3341)  ; FMax(a,b)
  %3374 = call float @dx.op.dot3.f32(i32 55, float %3348, float %3351, float %3354, float %3348, float %3351, float %3354)  ; Dot3(ax,ay,az,bx,by,bz)
  %3375 = fcmp fast oeq float %3374, 0.000000e+00
  %3376 = fcmp fast oeq float %3373, 0.000000e+00
  %3377 = or i1 %3376, %3375
  br i1 %3377, label %3407, label %3378

; <label>:3378                                    ; preds = %3322
  %3379 = fsub fast float -0.000000e+00, %3354
  %3380 = fsub fast float -0.000000e+00, %3348
  %3381 = call float @dx.op.unary.f32(i32 24, float %3374)  ; Sqrt(value)
  %3382 = fdiv fast float %3381, %3373
  %3383 = fcmp fast ogt float %3382, 0x3FFB6F8900000000
  %3384 = select i1 %3383, float 0x3FFB6F8900000000, float %3382
  %3385 = fmul fast float %3384, 0x3FE8A23460000000
  %3386 = call float @dx.op.unary.f32(i32 7, float %3385)  ; Saturate(value)
  %3387 = call float @dx.op.binary.f32(i32 35, float %3384, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3388 = fmul fast float %3386, %3373
  %3389 = fmul fast float %3387, 0x3FF279A740000000
  %3390 = fadd fast float %3389, -1.000000e+00
  %3391 = call float @dx.op.dot3.f32(i32 55, float %3379, float %3380, float %3351, float %3379, float %3380, float %3351)  ; Dot3(ax,ay,az,bx,by,bz)
  %3392 = call float @dx.op.unary.f32(i32 25, float %3391)  ; Rsqrt(value)
  %3393 = fmul fast float %3392, %3379
  %3394 = fmul fast float %3392, %3380
  %3395 = fmul fast float %3392, %3351
  %3396 = fmul fast float %3390, %3390
  %3397 = fsub fast float 1.000000e+00, %3396
  %3398 = fmul fast float %3387, 0x40005F8BE0000000
  %3399 = fsub fast float 0x400C5BF8A0000000, %3398
  %3400 = fdiv fast float %3388, %3399
  %3401 = fmul fast float %3400, 0x3FEE31C3C0000000
  %3402 = fmul fast float %3401, %3397
  %3403 = fmul fast float %3387, 0x3FDACB7480000000
  %3404 = fadd fast float %3403, 0xBFD7347680000000
  %3405 = fmul fast float %3404, %3400
  %3406 = fmul fast float %3405, %3397
  br label %3407

; <label>:3407                                    ; preds = %3378, %3322
  %3408 = phi float [ %3393, %3378 ], [ 0.000000e+00, %3322 ]
  %3409 = phi float [ %3394, %3378 ], [ 0.000000e+00, %3322 ]
  %3410 = phi float [ %3395, %3378 ], [ 0.000000e+00, %3322 ]
  %3411 = phi float [ %3402, %3378 ], [ 0.000000e+00, %3322 ]
  %3412 = phi float [ %3406, %3378 ], [ 0.000000e+00, %3322 ]
  %3413 = call float @dx.op.dot3.f32(i32 55, float %3408, float %3409, float %3410, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %3414 = fmul fast float %3413, 0x3FDF454380000000
  %3415 = fmul fast float %3413, %3413
  %3416 = fmul fast float %3415, 0x3FEE471020000000
  %3417 = fadd fast float %3416, 0xBFD42F6020000000
  %3418 = fmul fast float %3373, 0x3FD20DD760000000
  %3419 = fmul fast float %3417, %3412
  %3420 = fadd fast float %3419, %3418
  %3421 = fmul fast float %3414, %3411
  %3422 = fadd fast float %3420, %3421
  %3423 = fsub fast float %3420, %3421
  %3424 = call float @dx.op.dot3.f32(i32 55, float %3408, float %3409, float %3410, float %2354, float %2355, float %2356)  ; Dot3(ax,ay,az,bx,by,bz)
  %3425 = fmul fast float %3424, 0x3FDF454380000000
  %3426 = fmul fast float %3424, %3424
  %3427 = fmul fast float %3426, 0x3FEE471020000000
  %3428 = fadd fast float %3427, 0xBFD42F6020000000
  %3429 = call float @dx.op.dot3.f32(i32 55, float %3373, float %3411, float %3412, float 0x3FD20DD760000000, float %3425, float %3428)  ; Dot3(ax,ay,az,bx,by,bz)
  %3430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3342)  ; FMax(a,b)
  %3431 = call float @dx.op.dot3.f32(i32 55, float %3357, float %3360, float %3363, float %3357, float %3360, float %3363)  ; Dot3(ax,ay,az,bx,by,bz)
  %3432 = fcmp fast oeq float %3431, 0.000000e+00
  %3433 = fcmp fast oeq float %3430, 0.000000e+00
  %3434 = or i1 %3433, %3432
  br i1 %3434, label %3464, label %3435

; <label>:3435                                    ; preds = %3407
  %3436 = fsub fast float -0.000000e+00, %3363
  %3437 = fsub fast float -0.000000e+00, %3357
  %3438 = call float @dx.op.unary.f32(i32 24, float %3431)  ; Sqrt(value)
  %3439 = fdiv fast float %3438, %3430
  %3440 = fcmp fast ogt float %3439, 0x3FFB6F8900000000
  %3441 = select i1 %3440, float 0x3FFB6F8900000000, float %3439
  %3442 = fmul fast float %3441, 0x3FE8A23460000000
  %3443 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3444 = call float @dx.op.binary.f32(i32 35, float %3441, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3445 = fmul fast float %3443, %3430
  %3446 = fmul fast float %3444, 0x3FF279A740000000
  %3447 = fadd fast float %3446, -1.000000e+00
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3436, float %3437, float %3360, float %3436, float %3437, float %3360)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = call float @dx.op.unary.f32(i32 25, float %3448)  ; Rsqrt(value)
  %3450 = fmul fast float %3449, %3436
  %3451 = fmul fast float %3449, %3437
  %3452 = fmul fast float %3449, %3360
  %3453 = fmul fast float %3447, %3447
  %3454 = fsub fast float 1.000000e+00, %3453
  %3455 = fmul fast float %3444, 0x40005F8BE0000000
  %3456 = fsub fast float 0x400C5BF8A0000000, %3455
  %3457 = fdiv fast float %3445, %3456
  %3458 = fmul fast float %3457, 0x3FEE31C3C0000000
  %3459 = fmul fast float %3458, %3454
  %3460 = fmul fast float %3444, 0x3FDACB7480000000
  %3461 = fadd fast float %3460, 0xBFD7347680000000
  %3462 = fmul fast float %3461, %3457
  %3463 = fmul fast float %3462, %3454
  br label %3464

; <label>:3464                                    ; preds = %3435, %3407
  %3465 = phi float [ %3450, %3435 ], [ 0.000000e+00, %3407 ]
  %3466 = phi float [ %3451, %3435 ], [ 0.000000e+00, %3407 ]
  %3467 = phi float [ %3452, %3435 ], [ 0.000000e+00, %3407 ]
  %3468 = phi float [ %3459, %3435 ], [ 0.000000e+00, %3407 ]
  %3469 = phi float [ %3463, %3435 ], [ 0.000000e+00, %3407 ]
  %3470 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3466, float %3467, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %3471 = fmul fast float %3470, 0x3FDF454380000000
  %3472 = fmul fast float %3470, %3470
  %3473 = fmul fast float %3472, 0x3FEE471020000000
  %3474 = fadd fast float %3473, 0xBFD42F6020000000
  %3475 = fmul fast float %3430, 0x3FD20DD760000000
  %3476 = fmul fast float %3474, %3469
  %3477 = fadd fast float %3476, %3475
  %3478 = fmul fast float %3471, %3468
  %3479 = fadd fast float %3477, %3478
  %3480 = fsub fast float %3477, %3478
  %3481 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3466, float %3467, float %2354, float %2355, float %2356)  ; Dot3(ax,ay,az,bx,by,bz)
  %3482 = fmul fast float %3481, 0x3FDF454380000000
  %3483 = fmul fast float %3481, %3481
  %3484 = fmul fast float %3483, 0x3FEE471020000000
  %3485 = fadd fast float %3484, 0xBFD42F6020000000
  %3486 = call float @dx.op.dot3.f32(i32 55, float %3430, float %3468, float %3469, float 0x3FD20DD760000000, float %3482, float %3485)  ; Dot3(ax,ay,az,bx,by,bz)
  %3487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3343)  ; FMax(a,b)
  %3488 = call float @dx.op.dot3.f32(i32 55, float %3366, float %3369, float %3372, float %3366, float %3369, float %3372)  ; Dot3(ax,ay,az,bx,by,bz)
  %3489 = fcmp fast oeq float %3488, 0.000000e+00
  %3490 = fcmp fast oeq float %3487, 0.000000e+00
  %3491 = or i1 %3490, %3489
  br i1 %3491, label %3521, label %3492

; <label>:3492                                    ; preds = %3464
  %3493 = fsub fast float -0.000000e+00, %3372
  %3494 = fsub fast float -0.000000e+00, %3366
  %3495 = call float @dx.op.unary.f32(i32 24, float %3488)  ; Sqrt(value)
  %3496 = fdiv fast float %3495, %3487
  %3497 = fcmp fast ogt float %3496, 0x3FFB6F8900000000
  %3498 = select i1 %3497, float 0x3FFB6F8900000000, float %3496
  %3499 = fmul fast float %3498, 0x3FE8A23460000000
  %3500 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3501 = call float @dx.op.binary.f32(i32 35, float %3498, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3502 = fmul fast float %3500, %3487
  %3503 = fmul fast float %3501, 0x3FF279A740000000
  %3504 = fadd fast float %3503, -1.000000e+00
  %3505 = call float @dx.op.dot3.f32(i32 55, float %3493, float %3494, float %3369, float %3493, float %3494, float %3369)  ; Dot3(ax,ay,az,bx,by,bz)
  %3506 = call float @dx.op.unary.f32(i32 25, float %3505)  ; Rsqrt(value)
  %3507 = fmul fast float %3506, %3493
  %3508 = fmul fast float %3506, %3494
  %3509 = fmul fast float %3506, %3369
  %3510 = fmul fast float %3504, %3504
  %3511 = fsub fast float 1.000000e+00, %3510
  %3512 = fmul fast float %3501, 0x40005F8BE0000000
  %3513 = fsub fast float 0x400C5BF8A0000000, %3512
  %3514 = fdiv fast float %3502, %3513
  %3515 = fmul fast float %3514, 0x3FEE31C3C0000000
  %3516 = fmul fast float %3515, %3511
  %3517 = fmul fast float %3501, 0x3FDACB7480000000
  %3518 = fadd fast float %3517, 0xBFD7347680000000
  %3519 = fmul fast float %3518, %3514
  %3520 = fmul fast float %3519, %3511
  br label %3521

; <label>:3521                                    ; preds = %3492, %3464
  %3522 = phi float [ %3507, %3492 ], [ 0.000000e+00, %3464 ]
  %3523 = phi float [ %3508, %3492 ], [ 0.000000e+00, %3464 ]
  %3524 = phi float [ %3509, %3492 ], [ 0.000000e+00, %3464 ]
  %3525 = phi float [ %3516, %3492 ], [ 0.000000e+00, %3464 ]
  %3526 = phi float [ %3520, %3492 ], [ 0.000000e+00, %3464 ]
  %3527 = call float @dx.op.dot3.f32(i32 55, float %3522, float %3523, float %3524, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %3528 = fmul fast float %3527, 0x3FDF454380000000
  %3529 = fmul fast float %3527, %3527
  %3530 = fmul fast float %3529, 0x3FEE471020000000
  %3531 = fadd fast float %3530, 0xBFD42F6020000000
  %3532 = fmul fast float %3487, 0x3FD20DD760000000
  %3533 = fmul fast float %3531, %3526
  %3534 = fadd fast float %3533, %3532
  %3535 = fmul fast float %3528, %3525
  %3536 = fadd fast float %3534, %3535
  %3537 = fsub fast float %3534, %3535
  %3538 = call float @dx.op.dot3.f32(i32 55, float %3522, float %3523, float %3524, float %2354, float %2355, float %2356)  ; Dot3(ax,ay,az,bx,by,bz)
  %3539 = fmul fast float %3538, 0x3FDF454380000000
  %3540 = fmul fast float %3538, %3538
  %3541 = fmul fast float %3540, 0x3FEE471020000000
  %3542 = fadd fast float %3541, 0xBFD42F6020000000
  %3543 = call float @dx.op.dot3.f32(i32 55, float %3487, float %3525, float %3526, float 0x3FD20DD760000000, float %3539, float %3542)  ; Dot3(ax,ay,az,bx,by,bz)
  %3544 = call float @dx.op.binary.f32(i32 35, float %3422, float 0.000000e+00)  ; FMax(a,b)
  %3545 = call float @dx.op.binary.f32(i32 35, float %3479, float 0.000000e+00)  ; FMax(a,b)
  %3546 = call float @dx.op.binary.f32(i32 35, float %3536, float 0.000000e+00)  ; FMax(a,b)
  %3547 = call float @dx.op.binary.f32(i32 35, float %3423, float 0.000000e+00)  ; FMax(a,b)
  %3548 = call float @dx.op.binary.f32(i32 35, float %3480, float 0.000000e+00)  ; FMax(a,b)
  %3549 = call float @dx.op.binary.f32(i32 35, float %3537, float 0.000000e+00)  ; FMax(a,b)
  %3550 = call float @dx.op.binary.f32(i32 35, float %3429, float 0.000000e+00)  ; FMax(a,b)
  %3551 = call float @dx.op.binary.f32(i32 35, float %3486, float 0.000000e+00)  ; FMax(a,b)
  %3552 = call float @dx.op.binary.f32(i32 35, float %3543, float 0.000000e+00)  ; FMax(a,b)
  %3553 = fsub fast float %2741, %3544
  %3554 = fsub fast float %2742, %3545
  %3555 = fsub fast float %2743, %3546
  %3556 = fmul fast float %3553, %2417
  %3557 = fmul fast float %3554, %2417
  %3558 = fmul fast float %3555, %2417
  %3559 = fadd fast float %3556, %3544
  %3560 = fadd fast float %3557, %3545
  %3561 = fadd fast float %3558, %3546
  %3562 = fsub fast float %2738, %3547
  %3563 = fsub fast float %2739, %3548
  %3564 = fsub fast float %2740, %3549
  %3565 = fmul fast float %3562, %2417
  %3566 = fmul fast float %3563, %2417
  %3567 = fmul fast float %3564, %2417
  %3568 = fadd fast float %3565, %3547
  %3569 = fadd fast float %3566, %3548
  %3570 = fadd fast float %3567, %3549
  %3571 = fsub fast float %2735, %3550
  %3572 = fsub fast float %2736, %3551
  %3573 = fsub fast float %2737, %3552
  %3574 = fmul fast float %3571, %2417
  %3575 = fmul fast float %3572, %2417
  %3576 = fmul fast float %3573, %2417
  %3577 = fadd fast float %3574, %3550
  %3578 = fadd fast float %3575, %3551
  %3579 = fadd fast float %3576, %3552
  %3580 = fsub fast float %2519, %3345
  %3581 = fmul fast float %3580, %2417
  %3582 = fadd fast float %3581, %3345
  br label %3583

; <label>:3583                                    ; preds = %3521, %2734
  %3584 = phi float [ %3582, %3521 ], [ %2519, %2734 ]
  %3585 = phi float [ %3577, %3521 ], [ %2735, %2734 ]
  %3586 = phi float [ %3578, %3521 ], [ %2736, %2734 ]
  %3587 = phi float [ %3579, %3521 ], [ %2737, %2734 ]
  %3588 = phi float [ %3568, %3521 ], [ %2738, %2734 ]
  %3589 = phi float [ %3569, %3521 ], [ %2739, %2734 ]
  %3590 = phi float [ %3570, %3521 ], [ %2740, %2734 ]
  %3591 = phi float [ %3559, %3521 ], [ %2741, %2734 ]
  %3592 = phi float [ %3560, %3521 ], [ %2742, %2734 ]
  %3593 = phi float [ %3561, %3521 ], [ %2743, %2734 ]
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %3596 = call float @dx.op.binary.f32(i32 36, float %2337, float %3595)  ; FMin(a,b)
  %3597 = fmul fast float %3596, %2358
  %3598 = fsub fast float 1.000000e+00, %3597
  %3599 = bitcast float %3598 to i32
  %3600 = sub nsw i32 2129859010, %3599
  %3601 = bitcast i32 %3600 to float
  %3602 = call float @dx.op.binary.f32(i32 36, float %2338, float %3595)  ; FMin(a,b)
  %3603 = fmul fast float %3602, %2358
  %3604 = fsub fast float 1.000000e+00, %3603
  %3605 = bitcast float %3604 to i32
  %3606 = sub nsw i32 2129859010, %3605
  %3607 = bitcast i32 %3606 to float
  %3608 = call float @dx.op.binary.f32(i32 36, float %2339, float %3595)  ; FMin(a,b)
  %3609 = fmul fast float %3608, %2358
  %3610 = fsub fast float 1.000000e+00, %3609
  %3611 = bitcast float %3610 to i32
  %3612 = sub nsw i32 2129859010, %3611
  %3613 = bitcast i32 %3612 to float
  %3614 = fmul fast float %3591, %2357
  %3615 = fmul fast float %3614, %3601
  %3616 = fmul fast float %3592, %2357
  %3617 = fmul fast float %3616, %3607
  %3618 = fmul fast float %3593, %2357
  %3619 = fmul fast float %3618, %3613
  %3620 = call float @dx.op.binary.f32(i32 36, float %2334, float %3595)  ; FMin(a,b)
  %3621 = fmul fast float %3620, %2358
  %3622 = fsub fast float 1.000000e+00, %3621
  %3623 = bitcast float %3622 to i32
  %3624 = sub nsw i32 2129859010, %3623
  %3625 = bitcast i32 %3624 to float
  %3626 = call float @dx.op.binary.f32(i32 36, float %2335, float %3595)  ; FMin(a,b)
  %3627 = fmul fast float %3626, %2358
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = bitcast float %3628 to i32
  %3630 = sub nsw i32 2129859010, %3629
  %3631 = bitcast i32 %3630 to float
  %3632 = call float @dx.op.binary.f32(i32 36, float %2346, float %3595)  ; FMin(a,b)
  %3633 = fmul fast float %3632, %2358
  %3634 = fsub fast float 1.000000e+00, %3633
  %3635 = bitcast float %3634 to i32
  %3636 = sub nsw i32 2129859010, %3635
  %3637 = bitcast i32 %3636 to float
  %3638 = fmul fast float %3585, %2357
  %3639 = fmul fast float %3638, %3625
  %3640 = fmul fast float %3586, %2357
  %3641 = fmul fast float %3640, %3631
  %3642 = fmul fast float %3587, %2357
  %3643 = fmul fast float %3642, %3637
  %3644 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3617, float %3619, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3645 = select i1 %237, float 0.000000e+00, float %3615
  %3646 = select i1 %237, float %3644, float %3617
  %3647 = select i1 %237, float 0.000000e+00, float %3619
  %3648 = call float @dx.op.dot3.f32(i32 55, float %3588, float %3589, float %3590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3649 = select i1 %237, float 0.000000e+00, float %3588
  %3650 = select i1 %237, float %3648, float %3589
  %3651 = select i1 %237, float 0.000000e+00, float %3590
  %3652 = call float @dx.op.dot3.f32(i32 55, float %3639, float %3641, float %3643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3653 = select i1 %237, float 0.000000e+00, float %3639
  %3654 = select i1 %237, float %3652, float %3641
  %3655 = select i1 %237, float 0.000000e+00, float %3643
  %3656 = fmul fast float %1085, %1085
  %3657 = call float @dx.op.unary.f32(i32 7, float %3656)  ; Saturate(value)
  %3658 = fmul fast float %2348, 9.843750e-01
  %3659 = fmul fast float %2343, 9.843750e-01
  %3660 = fadd fast float %3658, 7.812500e-03
  %3661 = fadd fast float %3659, 7.812500e-03
  %3662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3660, float %3661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3663 = extractvalue %dx.types.ResRet.f32 %3662, 0
  %3664 = extractvalue %dx.types.ResRet.f32 %3662, 1
  %3665 = extractvalue %dx.types.ResRet.f32 %3662, 2
  %3666 = extractvalue %dx.types.ResRet.f32 %3662, 3
  %3667 = fsub fast float 1.000000e+00, %3657
  %3668 = fsub fast float %3665, %3663
  %3669 = fsub fast float %3666, %3664
  %3670 = fmul fast float %3668, %3667
  %3671 = fmul fast float %3669, %3667
  %3672 = fadd fast float %3670, %3663
  %3673 = fadd fast float %3671, %3664
  %3674 = fmul fast float %3672, %2334
  %3675 = fmul fast float %3672, %2335
  %3676 = fmul fast float %3672, %2346
  %3677 = fadd fast float %3674, %3673
  %3678 = fadd fast float %3675, %3673
  %3679 = fadd fast float %3676, %3673
  %3680 = fcmp fast ogt float %1679, 0.000000e+00
  br i1 %3680, label %3681, label %3707

; <label>:3681                                    ; preds = %3583
  %3682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1679, float %2348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3683 = extractvalue %dx.types.ResRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.ResRet.f32 %3682, 1
  %3685 = extractvalue %dx.types.ResRet.f32 %3682, 2
  %3686 = fadd fast float %3683, -5.000000e-01
  %3687 = fadd fast float %3684, -5.000000e-01
  %3688 = fadd fast float %3685, -5.000000e-01
  %3689 = fsub fast float 1.000000e+00, %2334
  %3690 = fsub fast float 1.000000e+00, %2335
  %3691 = fsub fast float 1.000000e+00, %2346
  %3692 = fmul fast float %2334, 4.000000e+00
  %3693 = fmul fast float %3692, %3689
  %3694 = fmul fast float %3693, %3686
  %3695 = fmul fast float %2335, 4.000000e+00
  %3696 = fmul fast float %3695, %3690
  %3697 = fmul fast float %3696, %3687
  %3698 = fmul fast float %2346, 4.000000e+00
  %3699 = fmul fast float %3698, %3691
  %3700 = fmul fast float %3699, %3688
  %3701 = fadd fast float %3694, %3677
  %3702 = fadd fast float %3697, %3678
  %3703 = fadd fast float %3700, %3679
  %3704 = call float @dx.op.unary.f32(i32 7, float %3701)  ; Saturate(value)
  %3705 = call float @dx.op.unary.f32(i32 7, float %3702)  ; Saturate(value)
  %3706 = call float @dx.op.unary.f32(i32 7, float %3703)  ; Saturate(value)
  br label %3707

; <label>:3707                                    ; preds = %3681, %3583
  %3708 = phi float [ %3704, %3681 ], [ %3677, %3583 ]
  %3709 = phi float [ %3705, %3681 ], [ %3678, %3583 ]
  %3710 = phi float [ %3706, %3681 ], [ %3679, %3583 ]
  %3711 = call float @dx.op.binary.f32(i32 35, float %3709, float %3710)  ; FMax(a,b)
  %3712 = call float @dx.op.binary.f32(i32 35, float %3708, float %3711)  ; FMax(a,b)
  %3713 = fsub fast float 1.000000e+00, %3712
  %3714 = fmul fast float %3712, %2343
  %3715 = fadd fast float %3714, %2343
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 2
  %3718 = extractvalue %dx.types.CBufRet.f32 %3716, 3
  %3719 = fmul fast float %3715, %3717
  %3720 = fadd fast float %3719, %3718
  %3721 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3722 = fsub fast float 1.000000e+00, %2369
  %3723 = fadd fast float %3722, %3721
  %3724 = call float @dx.op.unary.f32(i32 7, float %3723)  ; Saturate(value)
  %3725 = fcmp fast olt float %3724, 1.000000e+00
  br i1 %3725, label %3726, label %4202

; <label>:3726                                    ; preds = %3707
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 2
  %3729 = extractvalue %dx.types.CBufRet.f32 %3727, 3
  %3730 = fmul fast float %3728, %99
  %3731 = fmul fast float %3729, %100
  %3732 = fptoui float %3730 to i32
  %3733 = fptoui float %3731 to i32
  %3734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3735 = extractvalue %dx.types.CBufRet.f32 %3734, 0
  %3736 = extractvalue %dx.types.CBufRet.f32 %3734, 2
  %3737 = extractvalue %dx.types.CBufRet.f32 %3734, 3
  %3738 = fadd fast float %87, -4.000000e+00
  %3739 = call float @dx.op.binary.f32(i32 35, float %3738, float 0.000000e+00)  ; FMax(a,b)
  %3740 = fadd fast float %3739, %3735
  %3741 = fmul fast float %3740, %3736
  %3742 = call float @dx.op.unary.f32(i32 23, float %3741)  ; Log(value)
  %3743 = fmul fast float %3742, %3737
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 2
  %3746 = fmul fast float %3743, %3745
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.i32 %3748, 1
  %3750 = add i32 %3749, -1
  %3751 = uitofp i32 %3749 to float
  %3752 = fmul fast float %3751, %3747
  %3753 = fptoui float %3752 to i32
  %3754 = call i32 @dx.op.binary.i32(i32 40, i32 %3753, i32 %3750)  ; UMin(a,b)
  %3755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3756 = extractvalue %dx.types.CBufRet.i32 %3755, 2
  %3757 = extractvalue %dx.types.CBufRet.i32 %3755, 3
  %3758 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3733, i32 %3756, i32 %3732)  ; UMad(a,b,c)
  %3759 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3754, i32 %3757, i32 %3758)  ; UMad(a,b,c)
  %3760 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %3761 = fptoui float %3760 to i32
  %3762 = lshr i32 %3761, 5
  %3763 = call i32 @dx.op.binary.i32(i32 40, i32 %3762, i32 8191)  ; UMin(a,b)
  %3764 = fsub fast float %2133, %148
  %3765 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3766 = fcmp fast ogt float %3765, 0.000000e+00
  %3767 = fcmp fast ogt float %2356, 0.000000e+00
  %3768 = and i1 %3767, %3766
  br i1 %3768, label %3769, label %3798

; <label>:3769                                    ; preds = %3726
  %3770 = call float @dx.op.dot3.f32(i32 55, float %2354, float %2355, float %2356, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3771 = call float @dx.op.binary.f32(i32 35, float %3770, float -1.000000e+00)  ; FMax(a,b)
  %3772 = call float @dx.op.binary.f32(i32 36, float %3771, float 1.000000e+00)  ; FMin(a,b)
  %3773 = fmul fast float %3772, %3772
  %3774 = fsub fast float 1.000000e+00, %3773
  %3775 = fmul fast float %3774, 0x3FFC6E2300000000
  %3776 = fsub fast float 1.000000e+00, %3775
  %3777 = fcmp fast ogt float %3776, 0.000000e+00
  %3778 = call float @dx.op.unary.f32(i32 24, float %3776)  ; Sqrt(value)
  %3779 = fsub fast float 1.000000e+00, %3778
  %3780 = call float @dx.op.unary.f32(i32 23, float %3779)  ; Log(value)
  %3781 = fmul fast float %3780, 5.000000e+00
  %3782 = call float @dx.op.unary.f32(i32 21, float %3781)  ; Exp(value)
  %3783 = fmul fast float %3782, 0x3FEF591A60000000
  %3784 = fadd fast float %3783, 0x3F94DCB540000000
  %3785 = select i1 %3777, float %3784, float 1.000000e+00
  %3786 = fcmp fast oge float %3785, 1.000000e+00
  %3787 = fmul fast float %3770, 2.000000e+00
  %3788 = fadd fast float %3787, %2356
  %3789 = select i1 %3786, float %3788, float %2356
  %3790 = fsub fast float %3789, %2356
  %3791 = fmul fast float %3790, %3765
  %3792 = fadd fast float %3791, %2356
  %3793 = call float @dx.op.dot3.f32(i32 55, float %2354, float %2355, float %3792, float %2354, float %2355, float %3792)  ; Dot3(ax,ay,az,bx,by,bz)
  %3794 = call float @dx.op.unary.f32(i32 25, float %3793)  ; Rsqrt(value)
  %3795 = fmul fast float %3794, %2354
  %3796 = fmul fast float %3794, %2355
  %3797 = fmul fast float %3792, %3794
  br label %3798

; <label>:3798                                    ; preds = %3769, %3726
  %3799 = phi float [ %3795, %3769 ], [ %2354, %3726 ]
  %3800 = phi float [ %3796, %3769 ], [ %2355, %3726 ]
  %3801 = phi float [ %3797, %3769 ], [ %2356, %3726 ]
  %3802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.i32 %3802, 2
  %3804 = add nsw i32 %3803, -1
  %3805 = call i32 @dx.op.binary.i32(i32 37, i32 %3804, i32 0)  ; IMax(a,b)
  %3806 = shl i32 %3763, 2
  %3807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.i32 %3807, 0
  %3809 = lshr i32 %3808, 16
  %3810 = and i32 %3808, 65535
  %3811 = lshr i32 %3808, 21
  %3812 = lshr i32 %3810, 5
  %3813 = call i32 @dx.op.binary.i32(i32 40, i32 %3812, i32 %3805)  ; UMin(a,b)
  %3814 = icmp ugt i32 %3811, %3813
  br i1 %3814, label %4178, label %3815

; <label>:3815                                    ; preds = %3798
  br label %3816

; <label>:3816                                    ; preds = %4170, %3815
  %3817 = phi float [ %4171, %4170 ], [ 0.000000e+00, %3815 ]
  %3818 = phi float [ %4172, %4170 ], [ 0.000000e+00, %3815 ]
  %3819 = phi float [ %4173, %4170 ], [ 0.000000e+00, %3815 ]
  %3820 = phi float [ %4174, %4170 ], [ 1.000000e+00, %3815 ]
  %3821 = phi i32 [ %4175, %4170 ], [ %3811, %3815 ]
  %3822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.i32 %3822, 2
  %3824 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3759, i32 %3823, i32 %3821)  ; UMad(a,b,c)
  %3825 = shl i32 %3824, 2
  %3826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.i32 %3826, 0
  %3828 = shl i32 %3821, 5
  %3829 = sub nsw i32 %3809, %3828
  %3830 = call i32 @dx.op.binary.i32(i32 37, i32 %3829, i32 0)  ; IMax(a,b)
  %3831 = call i32 @dx.op.binary.i32(i32 38, i32 %3830, i32 31)  ; IMin(a,b)
  %3832 = sub nsw i32 1, %3809
  %3833 = add nsw i32 %3832, %3810
  %3834 = call i32 @dx.op.binary.i32(i32 37, i32 %3833, i32 0)  ; IMax(a,b)
  %3835 = call i32 @dx.op.binary.i32(i32 38, i32 %3834, i32 32)  ; IMin(a,b)
  %3836 = and i32 %3835, 31
  %3837 = shl i32 -1, %3836
  %3838 = xor i32 %3837, -1
  %3839 = and i32 %3831, 31
  %3840 = shl i32 %3838, %3839
  %3841 = icmp eq i32 %3835, 32
  %3842 = select i1 %3841, i32 -1, i32 %3840
  %3843 = and i32 %3842, %3827
  %3844 = icmp eq i32 %3843, 0
  br i1 %3844, label %4170, label %3845

; <label>:3845                                    ; preds = %3816
  br label %3846

; <label>:3846                                    ; preds = %3953, %3845
  %3847 = phi float [ %3954, %3953 ], [ %3817, %3845 ]
  %3848 = phi float [ %3955, %3953 ], [ %3818, %3845 ]
  %3849 = phi float [ %3956, %3953 ], [ %3819, %3845 ]
  %3850 = phi float [ %3957, %3953 ], [ %3820, %3845 ]
  %3851 = phi i32 [ %3856, %3953 ], [ %3843, %3845 ]
  %3852 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3851)  ; FirstbitLo(value)
  %3853 = add i32 %3852, %3828
  %3854 = and i32 %3852, 31
  %3855 = shl i32 1, %3854
  %3856 = xor i32 %3855, %3851
  %3857 = mul i32 %3853, 72
  %3858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = add i32 %3857, 12
  %3863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.i32 %3863, 0
  %3865 = add i32 %3857, 16
  %3866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3866, 2
  %3870 = add i32 %3857, 28
  %3871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = add i32 %3857, 32
  %3874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.f32 %3874, 0
  %3876 = extractvalue %dx.types.ResRet.f32 %3874, 1
  %3877 = extractvalue %dx.types.ResRet.f32 %3874, 2
  %3878 = extractvalue %dx.types.ResRet.f32 %3874, 3
  %3879 = add i32 %3857, 48
  %3880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.f32 %3880, 1
  %3883 = add i32 %3857, 56
  %3884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.f32 %3884, 0
  %3886 = extractvalue %dx.types.ResRet.f32 %3884, 1
  %3887 = add i32 %3857, 64
  %3888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3891 = mul i32 %3853, 60
  %3892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3891, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.ResRet.f32 %3892, 1
  %3895 = extractvalue %dx.types.ResRet.f32 %3892, 2
  %3896 = add i32 %3891, 12
  %3897 = add i32 %3891, 48
  %3898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.f32 %3898, 0
  %3900 = extractvalue %dx.types.ResRet.f32 %3898, 1
  %3901 = extractvalue %dx.types.ResRet.f32 %3898, 2
  %3902 = and i32 %3864, 32767
  %3903 = bitcast float %3859 to i32
  %3904 = icmp eq i32 %3903, -1
  %3905 = bitcast float %3860 to i32
  %3906 = and i32 %3864, 32768
  %3907 = icmp ne i32 %3906, 0
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.CBufRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.CBufRet.f32 %3908, 2
  %3912 = fsub fast float %3893, %3909
  %3913 = fsub fast float %3894, %3910
  %3914 = fsub fast float %3895, %3911
  %3915 = fsub fast float %146, %3912
  %3916 = fsub fast float %147, %3913
  %3917 = fsub fast float %148, %3914
  %3918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.f32 %3918, 0
  %3920 = extractvalue %dx.types.ResRet.f32 %3918, 1
  %3921 = extractvalue %dx.types.ResRet.f32 %3918, 2
  %3922 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float %3919, float %3920, float %3921)  ; Dot3(ax,ay,az,bx,by,bz)
  %3923 = add i32 %3891, 24
  %3924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3928 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float %3925, float %3926, float %3927)  ; Dot3(ax,ay,az,bx,by,bz)
  %3929 = add i32 %3891, 36
  %3930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.f32 %3930, 1
  %3933 = extractvalue %dx.types.ResRet.f32 %3930, 2
  %3934 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float %3931, float %3932, float %3933)  ; Dot3(ax,ay,az,bx,by,bz)
  %3935 = call float @dx.op.unary.f32(i32 6, float %3922)  ; FAbs(value)
  %3936 = call float @dx.op.unary.f32(i32 6, float %3928)  ; FAbs(value)
  %3937 = call float @dx.op.unary.f32(i32 6, float %3934)  ; FAbs(value)
  %3938 = fsub fast float %3899, %3935
  %3939 = fsub fast float %3900, %3936
  %3940 = fsub fast float %3901, %3937
  %3941 = fmul fast float %3938, %3867
  %3942 = fmul fast float %3939, %3868
  %3943 = fmul fast float %3940, %3869
  %3944 = call float @dx.op.binary.f32(i32 36, float %3942, float %3943)  ; FMin(a,b)
  %3945 = call float @dx.op.binary.f32(i32 36, float %3941, float %3944)  ; FMin(a,b)
  %3946 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3947 = call float @dx.op.binary.f32(i32 36, float %3850, float %3946)  ; FMin(a,b)
  %3948 = uitofp i1 %3907 to float
  %3949 = fadd fast float %3765, 1.000000e+00
  %3950 = fsub fast float %3949, %3948
  %3951 = fmul fast float %3947, %3950
  %3952 = fcmp fast ogt float %3951, 0.000000e+00
  br i1 %3952, label %3959, label %3953

; <label>:3953                                    ; preds = %4101, %3846
  %3954 = phi float [ %4165, %4101 ], [ %3847, %3846 ]
  %3955 = phi float [ %4166, %4101 ], [ %3848, %3846 ]
  %3956 = phi float [ %4167, %4101 ], [ %3849, %3846 ]
  %3957 = phi float [ %4168, %4101 ], [ %3850, %3846 ]
  %3958 = icmp eq i32 %3851, %3855
  br i1 %3958, label %4169, label %3846

; <label>:3959                                    ; preds = %3846
  br i1 %3904, label %4017, label %3960

; <label>:3960                                    ; preds = %3959
  %3961 = fsub fast float -0.000000e+00, %3919
  %3962 = fsub fast float -0.000000e+00, %3920
  %3963 = fsub fast float -0.000000e+00, %3921
  %3964 = call float @dx.op.dot3.f32(i32 55, float %3799, float %3800, float %3801, float %3961, float %3962, float %3963)  ; Dot3(ax,ay,az,bx,by,bz)
  %3965 = fsub fast float -0.000000e+00, %3964
  %3966 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float %3961, float %3962, float %3963)  ; Dot3(ax,ay,az,bx,by,bz)
  %3967 = fadd fast float %3966, %3882
  %3968 = fadd fast float %3881, %3966
  %3969 = fsub fast float -0.000000e+00, %3968
  %3970 = fcmp ogt float %3964, -0.000000e+00
  %3971 = select i1 %3970, float %3969, float %3967
  %3972 = call float @dx.op.unary.f32(i32 6, float %3965)  ; FAbs(value)
  %3973 = fdiv fast float 1.000000e+00, %3972
  %3974 = fmul fast float %3971, %3973
  %3975 = call float @dx.op.binary.f32(i32 35, float %3974, float 0.000000e+00)  ; FMax(a,b)
  %3976 = fsub fast float -0.000000e+00, %3925
  %3977 = fsub fast float -0.000000e+00, %3926
  %3978 = fsub fast float -0.000000e+00, %3927
  %3979 = call float @dx.op.dot3.f32(i32 55, float %3799, float %3800, float %3801, float %3976, float %3977, float %3978)  ; Dot3(ax,ay,az,bx,by,bz)
  %3980 = fsub fast float -0.000000e+00, %3979
  %3981 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float %3976, float %3977, float %3978)  ; Dot3(ax,ay,az,bx,by,bz)
  %3982 = fadd fast float %3981, %3886
  %3983 = fadd fast float %3885, %3981
  %3984 = fsub fast float -0.000000e+00, %3983
  %3985 = fcmp ogt float %3979, -0.000000e+00
  %3986 = select i1 %3985, float %3984, float %3982
  %3987 = call float @dx.op.unary.f32(i32 6, float %3980)  ; FAbs(value)
  %3988 = fdiv fast float 1.000000e+00, %3987
  %3989 = fmul fast float %3986, %3988
  %3990 = call float @dx.op.binary.f32(i32 35, float %3989, float 0.000000e+00)  ; FMax(a,b)
  %3991 = fsub fast float -0.000000e+00, %3931
  %3992 = fsub fast float -0.000000e+00, %3932
  %3993 = fsub fast float -0.000000e+00, %3933
  %3994 = call float @dx.op.dot3.f32(i32 55, float %3799, float %3800, float %3801, float %3991, float %3992, float %3993)  ; Dot3(ax,ay,az,bx,by,bz)
  %3995 = fsub fast float -0.000000e+00, %3994
  %3996 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float %3991, float %3992, float %3993)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = fadd fast float %3996, %3890
  %3998 = fadd fast float %3889, %3996
  %3999 = fsub fast float -0.000000e+00, %3998
  %4000 = fcmp ogt float %3994, -0.000000e+00
  %4001 = select i1 %4000, float %3999, float %3997
  %4002 = call float @dx.op.unary.f32(i32 6, float %3995)  ; FAbs(value)
  %4003 = fdiv fast float 1.000000e+00, %4002
  %4004 = fmul fast float %4001, %4003
  %4005 = call float @dx.op.binary.f32(i32 35, float %4004, float 0.000000e+00)  ; FMax(a,b)
  %4006 = call float @dx.op.binary.f32(i32 36, float %3990, float %4005)  ; FMin(a,b)
  %4007 = call float @dx.op.binary.f32(i32 36, float %3975, float %4006)  ; FMin(a,b)
  %4008 = fmul fast float %4007, %3799
  %4009 = fmul fast float %4007, %3800
  %4010 = fmul fast float %4007, %3801
  %4011 = fadd fast float %4008, %146
  %4012 = fadd fast float %4009, %147
  %4013 = fadd fast float %4010, %148
  %4014 = fsub fast float %4011, %3859
  %4015 = fsub fast float %4012, %3860
  %4016 = fsub fast float %4013, %3861
  br label %4024

; <label>:4017                                    ; preds = %3959
  %4018 = fmul fast float %3799, 8.096000e+03
  %4019 = fmul fast float %3800, 8.096000e+03
  %4020 = fmul fast float %3801, 8.096000e+03
  %4021 = fadd fast float %4018, %146
  %4022 = fadd fast float %4019, %147
  %4023 = fadd fast float %4020, %148
  br label %4024

; <label>:4024                                    ; preds = %4017, %3960
  %4025 = phi float [ %3799, %4017 ], [ %4014, %3960 ]
  %4026 = phi float [ %3800, %4017 ], [ %4015, %3960 ]
  %4027 = phi float [ %3801, %4017 ], [ %4016, %3960 ]
  %4028 = phi float [ %4021, %4017 ], [ %4011, %3960 ]
  %4029 = phi float [ %4022, %4017 ], [ %4012, %3960 ]
  %4030 = phi float [ %4023, %4017 ], [ %4013, %3960 ]
  %4031 = fcmp fast olt float %3878, 1.000000e+00
  br i1 %4031, label %4032, label %4063, !dx.controlflow.hints !113

; <label>:4032                                    ; preds = %4024
  %4033 = fmul fast float %4027, %3876
  %4034 = fmul fast float %4026, %3877
  %4035 = fsub fast float %4033, %4034
  %4036 = fmul fast float %4025, %3877
  %4037 = fmul fast float %4027, %3875
  %4038 = fsub fast float %4036, %4037
  %4039 = fmul fast float %4026, %3875
  %4040 = fmul fast float %4025, %3876
  %4041 = fsub fast float %4039, %4040
  %4042 = fmul fast float %4035, 2.000000e+00
  %4043 = fmul fast float %4038, 2.000000e+00
  %4044 = fmul fast float %4041, 2.000000e+00
  %4045 = fmul fast float %4042, %3878
  %4046 = fmul fast float %4043, %3878
  %4047 = fmul fast float %4044, %3878
  %4048 = fmul fast float %4044, %3876
  %4049 = fmul fast float %4043, %3877
  %4050 = fmul fast float %4042, %3877
  %4051 = fmul fast float %4044, %3875
  %4052 = fmul fast float %4043, %3875
  %4053 = fmul fast float %4042, %3876
  %4054 = fadd fast float %4048, %4025
  %4055 = fadd fast float %4054, %4045
  %4056 = fsub fast float %4055, %4049
  %4057 = fsub fast float %4026, %4051
  %4058 = fadd fast float %4057, %4046
  %4059 = fadd fast float %4058, %4050
  %4060 = fadd fast float %4047, %4027
  %4061 = fsub fast float %4060, %4053
  %4062 = fadd fast float %4061, %4052
  br label %4063

; <label>:4063                                    ; preds = %4032, %4024
  %4064 = phi float [ %4056, %4032 ], [ %4025, %4024 ]
  %4065 = phi float [ %4059, %4032 ], [ %4026, %4024 ]
  %4066 = phi float [ %4062, %4032 ], [ %4027, %4024 ]
  br i1 %3904, label %4098, label %4067

; <label>:4067                                    ; preds = %4063
  %4068 = fmul fast float %2343, 0x400187C840000000
  %4069 = fadd fast float %4068, 0xC00EFC2120000000
  %4070 = fmul fast float %4069, %2343
  %4071 = fadd fast float %4070, 0x3FE5D16340000000
  %4072 = fmul fast float %4071, %2343
  %4073 = fadd fast float %4072, 1.000000e+00
  %4074 = call float @dx.op.unary.f32(i32 7, float %4073)  ; Saturate(value)
  %4075 = fsub fast float %4028, %146
  %4076 = fsub fast float %4029, %147
  %4077 = fsub fast float %4030, %148
  %4078 = fsub fast float %4028, %3859
  %4079 = fsub fast float %4029, %3860
  %4080 = fsub fast float %4030, %3861
  %4081 = call float @dx.op.dot3.f32(i32 55, float %4075, float %4076, float %4077, float %4075, float %4076, float %4077)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = call float @dx.op.dot3.f32(i32 55, float %4078, float %4079, float %4080, float %4078, float %4079, float %4080)  ; Dot3(ax,ay,az,bx,by,bz)
  %4083 = fadd fast float %4082, 0x3EE4F8B580000000
  %4084 = fdiv fast float %4081, %4083
  %4085 = bitcast float %4084 to i32
  %4086 = ashr i32 %4085, 1
  %4087 = add nsw i32 %4086, 532487669
  %4088 = bitcast i32 %4087 to float
  %4089 = fmul fast float %4088, %4074
  %4090 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4091 = fmul fast float %4090, 0x4009981AE0000000
  %4092 = fsub fast float 0x40111BBD80000000, %4091
  %4093 = fmul fast float %4092, %4090
  %4094 = fadd fast float %4093, 0xC0009F6020000000
  %4095 = fmul fast float %4094, %4090
  %4096 = fadd fast float %4095, 1.000000e+00
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  br label %4101

; <label>:4098                                    ; preds = %4063
  %4099 = icmp ne i32 %3905, -1
  %4100 = zext i1 %4099 to i32
  br label %4101

; <label>:4101                                    ; preds = %4098, %4067
  %4102 = phi float [ %2343, %4098 ], [ %4097, %4067 ]
  %4103 = phi i32 [ %4100, %4098 ], [ 0, %4067 ]
  %4104 = fmul float %4102, 5.000000e+00
  %4105 = fsub float 5.000000e+00, %4104
  %4106 = icmp ne i32 %4103, 0
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 3
  %4109 = fadd fast float %4108, %4105
  %4110 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4109)  ; FMax(a,b)
  %4111 = call float @dx.op.unary.f32(i32 6, float %4064)  ; FAbs(value)
  %4112 = call float @dx.op.unary.f32(i32 6, float %4065)  ; FAbs(value)
  %4113 = fadd fast float %4112, %4111
  %4114 = call float @dx.op.unary.f32(i32 6, float %4066)  ; FAbs(value)
  %4115 = fadd fast float %4113, %4114
  %4116 = fcmp fast oeq float %4115, 0.000000e+00
  %4117 = fdiv fast float 1.000000e+00, %4115
  %4118 = select i1 %4116, float 1.000000e+00, float %4117
  %4119 = fmul fast float %4118, %4064
  %4120 = fmul fast float %4118, %4065
  %4121 = call float @dx.op.unary.f32(i32 6, float %4120)  ; FAbs(value)
  %4122 = call float @dx.op.unary.f32(i32 6, float %4119)  ; FAbs(value)
  %4123 = fsub fast float 1.000000e+00, %4121
  %4124 = fsub fast float 1.000000e+00, %4122
  %4125 = fcmp fast oge float %4119, 0.000000e+00
  %4126 = fcmp fast oge float %4120, 0.000000e+00
  %4127 = select i1 %4125, float 1.000000e+00, float -1.000000e+00
  %4128 = select i1 %4126, float 1.000000e+00, float -1.000000e+00
  %4129 = fcmp fast ole float %4066, 0.000000e+00
  %4130 = fmul fast float %4127, %4123
  %4131 = fmul fast float %4128, %4124
  %4132 = select i1 %4129, float %4130, float %4119
  %4133 = select i1 %4129, float %4131, float %4120
  %4134 = fmul fast float %4132, 5.000000e-01
  %4135 = fmul fast float %4133, 5.000000e-01
  %4136 = fadd fast float %4134, 5.000000e-01
  %4137 = fadd fast float %4135, 5.000000e-01
  %4138 = uitofp i32 %3902 to float
  %4139 = call float @dx.op.binary.f32(i32 36, float %4110, float 3.000000e+00)  ; FMin(a,b)
  %4140 = fadd fast float %4139, 2.000000e+00
  %4141 = call float @dx.op.unary.f32(i32 21, float %4140)  ; Exp(value)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4143 = fmul fast float %4142, %4141
  %4144 = fmul fast float %4143, 2.000000e+00
  %4145 = fsub fast float 1.000000e+00, %4144
  %4146 = fmul fast float %4136, %4145
  %4147 = fmul fast float %4137, %4145
  %4148 = fadd fast float %4146, %4143
  %4149 = fadd fast float %4147, %4143
  %4150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %4148, float %4149, float %4138, float undef, i32 0, i32 0, i32 undef, float %4110)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.ResRet.f32 %4150, 1
  %4153 = extractvalue %dx.types.ResRet.f32 %4150, 2
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4156 = fmul fast float %4155, %3872
  %4157 = call float @dx.op.binary.f32(i32 36, float %3584, float %4156)  ; FMin(a,b)
  %4158 = select i1 %4106, float %4157, float %4156
  %4159 = fmul fast float %4151, %3951
  %4160 = fmul fast float %4159, %4158
  %4161 = fmul fast float %4152, %3951
  %4162 = fmul fast float %4161, %4158
  %4163 = fmul fast float %4153, %3951
  %4164 = fmul fast float %4163, %4158
  %4165 = fadd fast float %4160, %3847
  %4166 = fadd fast float %4162, %3848
  %4167 = fadd fast float %4164, %3849
  %4168 = fsub fast float %3850, %3951
  br label %3953

; <label>:4169                                    ; preds = %3953
  br label %4170

; <label>:4170                                    ; preds = %4169, %3816
  %4171 = phi float [ %3817, %3816 ], [ %3954, %4169 ]
  %4172 = phi float [ %3818, %3816 ], [ %3955, %4169 ]
  %4173 = phi float [ %3819, %3816 ], [ %3956, %4169 ]
  %4174 = phi float [ %3820, %3816 ], [ %3957, %4169 ]
  %4175 = add i32 %3821, 1
  %4176 = icmp ugt i32 %4175, %3813
  br i1 %4176, label %4177, label %3816, !llvm.loop !114

; <label>:4177                                    ; preds = %4170
  br label %4178

; <label>:4178                                    ; preds = %4177, %3798
  %4179 = phi float [ 0.000000e+00, %3798 ], [ %4171, %4177 ]
  %4180 = phi float [ 0.000000e+00, %3798 ], [ %4172, %4177 ]
  %4181 = phi float [ 0.000000e+00, %3798 ], [ %4173, %4177 ]
  %4182 = call float @dx.op.dot3.f32(i32 55, float %4179, float %4180, float %4181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4183 = select i1 %237, float 0.000000e+00, float %4179
  %4184 = select i1 %237, float %4182, float %4180
  %4185 = select i1 %237, float 0.000000e+00, float %4181
  %4186 = fcmp fast olt float %3724, 0.000000e+00
  %4187 = call float @dx.op.unary.f32(i32 6, float %3724)  ; FAbs(value)
  %4188 = fmul fast float %4187, %3653
  %4189 = fmul fast float %4187, %3654
  %4190 = fmul fast float %4187, %3655
  %4191 = select i1 %4186, float %3653, float %4188
  %4192 = select i1 %4186, float %3654, float %4189
  %4193 = select i1 %4186, float %3655, float %4190
  %4194 = fsub fast float 1.000000e+00, %4187
  %4195 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  %4196 = fmul fast float %4195, %4183
  %4197 = fmul fast float %4195, %4184
  %4198 = fmul fast float %4195, %4185
  %4199 = fadd fast float %4191, %4196
  %4200 = fadd fast float %4192, %4197
  %4201 = fadd fast float %4193, %4198
  br label %4202

; <label>:4202                                    ; preds = %4178, %3707
  %4203 = phi float [ %3653, %3707 ], [ %4199, %4178 ]
  %4204 = phi float [ %3654, %3707 ], [ %4200, %4178 ]
  %4205 = phi float [ %3655, %3707 ], [ %4201, %4178 ]
  %4206 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4207 = fcmp fast ogt float %4206, 0x3E7FF19E20000000
  %4208 = fdiv fast float 1.000000e+00, %4206
  %4209 = select i1 %4207, float %4208, float 0.000000e+00
  %4210 = fmul fast float %4209, %2337
  %4211 = fmul fast float %4209, %2338
  %4212 = fmul fast float %4209, %2339
  %4213 = fadd fast float %4210, -1.000000e+00
  %4214 = fadd fast float %4211, -1.000000e+00
  %4215 = fadd fast float %4212, -1.000000e+00
  %4216 = fmul fast float %4213, 5.000000e-01
  %4217 = fmul fast float %4214, 5.000000e-01
  %4218 = fmul fast float %4215, 5.000000e-01
  %4219 = fadd fast float %4216, 1.000000e+00
  %4220 = fadd fast float %4217, 1.000000e+00
  %4221 = fadd fast float %4218, 1.000000e+00
  %4222 = call float @dx.op.binary.f32(i32 35, float %2348, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4223 = fdiv fast float %1085, %4222
  %4224 = fcmp fast olt float %1752, 1.270000e+02
  %4225 = fcmp fast olt float %1753, 1.270000e+02
  %4226 = fcmp fast olt float %1754, 1.270000e+02
  %4227 = fmul fast float %1752, 0xBFF7154760000000
  %4228 = fmul fast float %4227, %4223
  %4229 = fmul fast float %1753, 0xBFF7154760000000
  %4230 = fmul fast float %4229, %4223
  %4231 = fmul fast float %1754, 0xBFF7154760000000
  %4232 = fmul fast float %4231, %4223
  %4233 = call float @dx.op.unary.f32(i32 21, float %4228)  ; Exp(value)
  %4234 = call float @dx.op.unary.f32(i32 21, float %4230)  ; Exp(value)
  %4235 = call float @dx.op.unary.f32(i32 21, float %4232)  ; Exp(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4239 = select i1 %4224, float %4236, float 0.000000e+00
  %4240 = select i1 %4225, float %4237, float 0.000000e+00
  %4241 = select i1 %4226, float %4238, float 0.000000e+00
  %4242 = fmul fast float %4239, %3713
  %4243 = fmul fast float %4240, %3713
  %4244 = fmul fast float %4241, %3713
  %4245 = fadd fast float %4242, -1.000000e+00
  %4246 = fadd fast float %4243, -1.000000e+00
  %4247 = fadd fast float %4244, -1.000000e+00
  %4248 = fmul fast float %4245, %1702
  %4249 = fmul fast float %4246, %1702
  %4250 = fmul fast float %4247, %1702
  %4251 = fmul fast float %4203, %3708
  %4252 = fmul fast float %4204, %3709
  %4253 = fmul fast float %4205, %3710
  %4254 = fsub fast float 1.000000e+00, %2348
  %4255 = bitcast float %4254 to i32
  %4256 = sitofp i32 %4255 to float
  %4257 = fmul fast float %4256, 5.000000e+00
  %4258 = fadd fast float %4257, 0xC1EFBF8940000000
  %4259 = fptosi float %4258 to i32
  %4260 = bitcast i32 %4259 to float
  %4261 = fmul fast float %4260, %1678
  %4262 = fmul fast float %3645, %4261
  %4263 = fmul fast float %4262, %3713
  %4264 = fmul fast float %4263, %4219
  %4265 = fmul fast float %3646, %4261
  %4266 = fmul fast float %4265, %3713
  %4267 = fmul fast float %4266, %4220
  %4268 = fmul fast float %3647, %4261
  %4269 = fmul fast float %4268, %3713
  %4270 = fmul fast float %4269, %4221
  %4271 = fadd fast float %4251, %1683
  %4272 = fadd fast float %4271, %4264
  %4273 = fmul fast float %4272, %1702
  %4274 = fadd fast float %4252, %1684
  %4275 = fadd fast float %4274, %4267
  %4276 = fmul fast float %4275, %1702
  %4277 = fadd fast float %4253, %1685
  %4278 = fadd fast float %4277, %4270
  %4279 = fmul fast float %4278, %1702
  %4280 = fmul fast float %2335, 0x4012D0A400000000
  %4281 = fadd fast float %4250, 1.000000e+00
  %4282 = fadd fast float %4249, 1.000000e+00
  %4283 = fadd fast float %4248, 1.000000e+00
  %4284 = fmul fast float %3713, %3647
  %4285 = fmul fast float %3713, %3646
  %4286 = fmul fast float %3713, %3645
  %4287 = fmul fast float %2363, %1702
  %4288 = fsub fast float 1.000000e+00, %4287
  %4289 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4290 = fsub fast float 1.000000e+00, %4289
  %4291 = fadd fast float %4280, 0x3FDB6377A0000000
  %4292 = fmul fast float %4290, %4291
  %4293 = call float @dx.op.dot3.f32(i32 55, float %1770, float %1771, float %1772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4294 = fadd fast float %4292, %4293
  %4295 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4296 = call float @dx.op.binary.f32(i32 35, float %4295, float 0x3F847AE140000000)  ; FMax(a,b)
  %4297 = fmul fast float %4296, %4296
  %4298 = fmul fast float %4297, %4297
  %4299 = fmul fast float %4298, 0xC00A935000000000
  %4300 = call float @dx.op.unary.f32(i32 21, float %4299)  ; Exp(value)
  %4301 = fsub fast float 1.000000e+00, %4300
  %4302 = fmul fast float %4283, %3649
  %4303 = fmul fast float %4302, %4301
  %4304 = fmul fast float %4282, %3650
  %4305 = fmul fast float %4304, %4301
  %4306 = fmul fast float %4281, %3651
  %4307 = fmul fast float %4306, %4301
  %4308 = fadd fast float %4303, %4286
  %4309 = fmul fast float %4308, %1702
  %4310 = fadd fast float %4305, %4285
  %4311 = fmul fast float %4310, %1702
  %4312 = fadd fast float %4307, %4284
  %4313 = fmul fast float %4312, %1702
  %4314 = bitcast i32 %2372 to float
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 3
  %4317 = fcmp fast oeq float %4316, 0.000000e+00
  br i1 %4317, label %5995, label %4318

; <label>:4318                                    ; preds = %4202
  %4319 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4320 = extractvalue %dx.types.CBufRet.f32 %4315, 1
  %4321 = extractvalue %dx.types.CBufRet.f32 %4315, 2
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 0
  %4324 = extractvalue %dx.types.CBufRet.f32 %4322, 1
  %4325 = extractvalue %dx.types.CBufRet.f32 %4322, 2
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 0
  %4328 = extractvalue %dx.types.CBufRet.f32 %4326, 1
  %4329 = call float @dx.op.dot3.f32(i32 55, float %4323, float %4324, float %4325, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4330 = select i1 %237, float %4327, float %4323
  %4331 = select i1 %237, float %4329, float %4324
  %4332 = select i1 %237, float %4328, float %4325
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 2
  %4335 = fmul fast float %4334, %76
  %4336 = fmul fast float %4334, %77
  %4337 = fmul fast float %4334, %78
  %4338 = fadd fast float %4335, %146
  %4339 = fadd fast float %4336, %147
  %4340 = fadd fast float %4337, %148
  %4341 = fcmp fast olt float %4316, 0.000000e+00
  br i1 %4341, label %5437, label %4342

; <label>:4342                                    ; preds = %4318
  %4343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.f32 %4343, 0
  %4345 = extractvalue %dx.types.CBufRet.f32 %4343, 1
  %4346 = extractvalue %dx.types.CBufRet.f32 %4343, 2
  %4347 = extractvalue %dx.types.CBufRet.f32 %4343, 3
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 0
  %4350 = extractvalue %dx.types.CBufRet.f32 %4348, 1
  %4351 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4352 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.f32 %4353, 0
  %4355 = extractvalue %dx.types.CBufRet.f32 %4353, 1
  %4356 = extractvalue %dx.types.CBufRet.f32 %4353, 2
  %4357 = extractvalue %dx.types.CBufRet.f32 %4353, 3
  %4358 = fmul fast float %4344, %4338
  %4359 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4345, float %4358)  ; FMad(a,b,c)
  %4360 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4346, float %4359)  ; FMad(a,b,c)
  %4361 = fadd fast float %4360, %4347
  %4362 = fmul fast float %4349, %4338
  %4363 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4350, float %4362)  ; FMad(a,b,c)
  %4364 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4351, float %4363)  ; FMad(a,b,c)
  %4365 = fadd fast float %4364, %4352
  %4366 = fmul fast float %4354, %4338
  %4367 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4355, float %4366)  ; FMad(a,b,c)
  %4368 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4356, float %4367)  ; FMad(a,b,c)
  %4369 = fadd fast float %4368, %4357
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 0
  %4372 = extractvalue %dx.types.CBufRet.f32 %4370, 1
  %4373 = extractvalue %dx.types.CBufRet.f32 %4370, 3
  %4374 = fmul fast float %4373, %4361
  %4375 = fmul fast float %4373, %4365
  %4376 = fadd fast float %4374, %4371
  %4377 = fadd fast float %4375, %4372
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4380 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4381 = extractvalue %dx.types.CBufRet.f32 %4378, 3
  %4382 = fmul fast float %4381, %4361
  %4383 = fmul fast float %4381, %4365
  %4384 = fadd fast float %4382, %4379
  %4385 = fadd fast float %4383, %4380
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 1
  %4388 = fsub fast float %4387, %4369
  %4389 = extractvalue %dx.types.CBufRet.f32 %4386, 2
  %4390 = fmul fast float %4388, %4389
  %4391 = fsub fast float 1.000000e+00, %4390
  %4392 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4378, 2
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 2
  %4396 = fadd fast float %4395, %4393
  %4397 = fcmp fast ogt float %4396, 0.000000e+00
  br i1 %4397, label %4398, label %4422

; <label>:4398                                    ; preds = %4342
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = extractvalue %dx.types.CBufRet.f32 %4399, 1
  %4402 = fsub fast float %4384, %4400
  %4403 = fsub fast float %4385, %4401
  %4404 = fcmp fast olt float %4402, 0.000000e+00
  %4405 = fcmp fast olt float %4403, 0.000000e+00
  %4406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.f32 %4406, 0
  %4408 = extractvalue %dx.types.CBufRet.f32 %4406, 1
  %4409 = extractvalue %dx.types.CBufRet.f32 %4406, 2
  %4410 = extractvalue %dx.types.CBufRet.f32 %4406, 3
  %4411 = select i1 %4404, float %4407, float %4409
  %4412 = select i1 %4405, float %4408, float %4410
  %4413 = fmul fast float %4411, %4402
  %4414 = fmul fast float %4412, %4403
  %4415 = call float @dx.op.unary.f32(i32 6, float %4413)  ; FAbs(value)
  %4416 = call float @dx.op.unary.f32(i32 6, float %4414)  ; FAbs(value)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4333, 0
  %4418 = call float @dx.op.binary.f32(i32 35, float %4415, float %4416)  ; FMax(a,b)
  %4419 = fsub fast float %4417, %4418
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = fmul fast float %4420, %4392
  br label %4422

; <label>:4422                                    ; preds = %4398, %4342
  %4423 = phi float [ %4421, %4398 ], [ 0.000000e+00, %4342 ]
  %4424 = extractvalue %dx.types.CBufRet.f32 %4370, 2
  %4425 = extractvalue %dx.types.CBufRet.f32 %4394, 1
  %4426 = fadd fast float %4425, %4424
  %4427 = fcmp fast ogt float %4426, 0.000000e+00
  %4428 = extractvalue %dx.types.CBufRet.f32 %4333, 0
  br i1 %4427, label %4429, label %4452

; <label>:4429                                    ; preds = %4422
  %4430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.f32 %4430, 0
  %4432 = extractvalue %dx.types.CBufRet.f32 %4430, 1
  %4433 = fsub fast float %4376, %4431
  %4434 = fsub fast float %4377, %4432
  %4435 = fcmp fast olt float %4433, 0.000000e+00
  %4436 = fcmp fast olt float %4434, 0.000000e+00
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.CBufRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4441 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4442 = select i1 %4435, float %4438, float %4440
  %4443 = select i1 %4436, float %4439, float %4441
  %4444 = fmul fast float %4442, %4433
  %4445 = fmul fast float %4443, %4434
  %4446 = call float @dx.op.unary.f32(i32 6, float %4444)  ; FAbs(value)
  %4447 = call float @dx.op.unary.f32(i32 6, float %4445)  ; FAbs(value)
  %4448 = call float @dx.op.binary.f32(i32 35, float %4446, float %4447)  ; FMax(a,b)
  %4449 = fsub fast float %4428, %4448
  %4450 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4451 = fmul fast float %4450, %4392
  br label %4452

; <label>:4452                                    ; preds = %4429, %4422
  %4453 = phi float [ %4451, %4429 ], [ 0.000000e+00, %4422 ]
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 1
  %4456 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.CBufRet.f32 %4457, 1
  %4460 = fsub fast float %4361, %4458
  %4461 = fsub fast float %4365, %4459
  %4462 = fcmp fast olt float %4460, 0.000000e+00
  %4463 = fcmp fast olt float %4461, 0.000000e+00
  %4464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.CBufRet.f32 %4464, 1
  %4467 = extractvalue %dx.types.CBufRet.f32 %4464, 2
  %4468 = extractvalue %dx.types.CBufRet.f32 %4464, 3
  %4469 = select i1 %4462, float %4465, float %4467
  %4470 = select i1 %4463, float %4466, float %4468
  %4471 = fmul fast float %4469, %4460
  %4472 = fmul fast float %4470, %4461
  %4473 = call float @dx.op.unary.f32(i32 6, float %4471)  ; FAbs(value)
  %4474 = call float @dx.op.unary.f32(i32 6, float %4472)  ; FAbs(value)
  %4475 = call float @dx.op.binary.f32(i32 35, float %4473, float %4474)  ; FMax(a,b)
  %4476 = fsub fast float %4428, %4475
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = call float @dx.op.binary.f32(i32 36, float %4477, float %4456)  ; FMin(a,b)
  %4479 = fmul fast float %4478, %4392
  %4480 = fsub fast float %4453, %4479
  %4481 = fsub fast float %4423, %4453
  %4482 = fsub fast float %4481, %4479
  %4483 = call float @dx.op.binary.f32(i32 35, float %4453, float %4423)  ; FMax(a,b)
  %4484 = call float @dx.op.binary.f32(i32 35, float %4479, float %4483)  ; FMax(a,b)
  %4485 = fcmp fast olt float %4484, 1.000000e+00
  br i1 %4485, label %4486, label %4884, !dx.controlflow.hints !116

; <label>:4486                                    ; preds = %4452
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = fcmp fast une float %4488, 0.000000e+00
  br i1 %4489, label %4490, label %4884, !dx.controlflow.hints !117

; <label>:4490                                    ; preds = %4486
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 0
  %4493 = extractvalue %dx.types.CBufRet.f32 %4491, 1
  %4494 = extractvalue %dx.types.CBufRet.f32 %4491, 2
  %4495 = extractvalue %dx.types.CBufRet.f32 %4491, 3
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 0
  %4498 = extractvalue %dx.types.CBufRet.f32 %4496, 1
  %4499 = extractvalue %dx.types.CBufRet.f32 %4496, 2
  %4500 = extractvalue %dx.types.CBufRet.f32 %4496, 3
  %4501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.f32 %4501, 0
  %4503 = extractvalue %dx.types.CBufRet.f32 %4501, 1
  %4504 = extractvalue %dx.types.CBufRet.f32 %4501, 2
  %4505 = extractvalue %dx.types.CBufRet.f32 %4501, 3
  %4506 = fmul fast float %4492, %4338
  %4507 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4493, float %4506)  ; FMad(a,b,c)
  %4508 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4494, float %4507)  ; FMad(a,b,c)
  %4509 = fadd fast float %4508, %4495
  %4510 = fmul fast float %4497, %4338
  %4511 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4498, float %4510)  ; FMad(a,b,c)
  %4512 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4499, float %4511)  ; FMad(a,b,c)
  %4513 = fadd fast float %4512, %4500
  %4514 = fmul fast float %4502, %4338
  %4515 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4503, float %4514)  ; FMad(a,b,c)
  %4516 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4504, float %4515)  ; FMad(a,b,c)
  %4517 = fadd fast float %4516, %4505
  %4518 = fcmp fast oge float %4509, 1.000000e+00
  %4519 = fcmp fast oge float %4513, 1.000000e+00
  %4520 = or i1 %4518, %4519
  %4521 = fcmp fast olt float %4509, 0.000000e+00
  %4522 = fcmp fast olt float %4513, 0.000000e+00
  %4523 = or i1 %4521, %4522
  %4524 = or i1 %4520, %4523
  br i1 %4524, label %4884, label %4525, !dx.controlflow.hints !118

; <label>:4525                                    ; preds = %4490
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  %4528 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4529 = extractvalue %dx.types.CBufRet.f32 %4526, 2
  %4530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4531 = extractvalue %dx.types.CBufRet.i32 %4530, 2
  %4532 = uitofp i32 %4531 to float
  %4533 = extractvalue %dx.types.CBufRet.i32 %4530, 3
  %4534 = uitofp i32 %4533 to float
  %4535 = extractvalue %dx.types.CBufRet.f32 %4526, 3
  %4536 = fmul fast float %4535, 2.000000e+00
  %4537 = fsub fast float %4509, %4527
  %4538 = fsub fast float %4513, %4528
  %4539 = fmul fast float %4536, %4537
  %4540 = fmul fast float %4536, %4538
  %4541 = fdiv fast float 1.000000e+00, %4321
  %4542 = fmul fast float %4540, %4541
  %4543 = call float @dx.op.unary.f32(i32 6, float %4542)  ; FAbs(value)
  %4544 = fmul fast float %4529, %4340
  %4545 = fmul fast float %4544, %4536
  %4546 = call float @dx.op.unary.f32(i32 6, float %4545)  ; FAbs(value)
  %4547 = call float @dx.op.unary.f32(i32 6, float %4539)  ; FAbs(value)
  %4548 = call float @dx.op.binary.f32(i32 35, float %4546, float %4543)  ; FMax(a,b)
  %4549 = call float @dx.op.binary.f32(i32 35, float %4547, float %4548)  ; FMax(a,b)
  %4550 = fmul fast float %4549, 2.000000e+00
  %4551 = call float @dx.op.unary.f32(i32 23, float %4550)  ; Log(value)
  %4552 = call float @dx.op.binary.f32(i32 35, float %4551, float %4532)  ; FMax(a,b)
  %4553 = call float @dx.op.unary.f32(i32 22, float %4552)  ; Frc(value)
  %4554 = fadd fast float %4553, 0xBFEA666660000000
  %4555 = fmul fast float %4554, 8.000000e+00
  %4556 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4557 = call float @dx.op.unary.f32(i32 27, float %4552)  ; Round_ni(value)
  %4558 = fadd fast float %4557, %4556
  %4559 = call float @dx.op.binary.f32(i32 36, float %4558, float %4534)  ; FMin(a,b)
  %4560 = call float @dx.op.unary.f32(i32 27, float %4559)  ; Round_ni(value)
  %4561 = fsub fast float -0.000000e+00, %4560
  %4562 = call float @dx.op.unary.f32(i32 21, float %4561)  ; Exp(value)
  %4563 = fmul fast float %4562, %4536
  %4564 = fmul fast float %4563, %4509
  %4565 = fmul fast float %4563, %4513
  %4566 = fmul fast float %4564, 2.500000e-01
  %4567 = fmul fast float %4565, 2.500000e-01
  %4568 = fadd fast float %4566, 5.000000e-01
  %4569 = fadd fast float %4567, 5.000000e-01
  %4570 = fsub fast float %4534, %4532
  %4571 = fptoui float %4570 to i32
  %4572 = add i32 %4571, 320
  %4573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4572)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.CBufRet.f32 %4573, 1
  %4576 = fcmp fast une float %4559, %4534
  %4577 = fsub fast float %4509, %4574
  %4578 = fsub fast float %4513, %4575
  %4579 = call float @dx.op.unary.f32(i32 6, float %4577)  ; FAbs(value)
  %4580 = call float @dx.op.unary.f32(i32 6, float %4578)  ; FAbs(value)
  %4581 = fmul fast float %4579, %4563
  %4582 = fmul fast float %4580, %4563
  %4583 = fcmp fast olt float %4581, 1.000000e+00
  %4584 = fcmp fast olt float %4582, 1.000000e+00
  %4585 = and i1 %4583, %4584
  %4586 = or i1 %4576, %4585
  br i1 %4586, label %4587, label %4884, !dx.controlflow.hints !119

; <label>:4587                                    ; preds = %4525
  %4588 = fmul fast float %4565, 5.000000e-01
  %4589 = fmul fast float %4564, 5.000000e-01
  %4590 = fadd fast float %4588, 5.000000e-01
  %4591 = fadd fast float %4589, 5.000000e-01
  %4592 = sitofp i32 %4531 to float
  %4593 = fsub fast float %4559, %4592
  %4594 = call float @dx.op.unary.f32(i32 27, float %4593)  ; Round_ni(value)
  %4595 = call float @dx.op.unary.f32(i32 22, float %4559)  ; Frc(value)
  %4596 = call float @dx.op.unary.f32(i32 22, float %4591)  ; Frc(value)
  %4597 = call float @dx.op.unary.f32(i32 22, float %4590)  ; Frc(value)
  %4598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4596, float %4597, float %4594, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = extractvalue %dx.types.ResRet.f32 %4598, 3
  %4603 = fcmp fast ogt float %4595, 0.000000e+00
  br i1 %4603, label %4604, label %4625, !dx.controlflow.hints !120

; <label>:4604                                    ; preds = %4587
  %4605 = fadd fast float %4594, 1.000000e+00
  %4606 = call float @dx.op.unary.f32(i32 22, float %4568)  ; Frc(value)
  %4607 = call float @dx.op.unary.f32(i32 22, float %4569)  ; Frc(value)
  %4608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4606, float %4607, float %4605, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.ResRet.f32 %4608, 3
  %4613 = fsub fast float %4609, %4599
  %4614 = fsub fast float %4610, %4600
  %4615 = fsub fast float %4611, %4601
  %4616 = fsub fast float %4612, %4602
  %4617 = fmul fast float %4613, %4595
  %4618 = fmul fast float %4614, %4595
  %4619 = fmul fast float %4615, %4595
  %4620 = fmul fast float %4616, %4595
  %4621 = fadd fast float %4617, %4599
  %4622 = fadd fast float %4618, %4600
  %4623 = fadd fast float %4619, %4601
  %4624 = fadd fast float %4620, %4602
  br label %4625

; <label>:4625                                    ; preds = %4604, %4587
  %4626 = phi float [ %4621, %4604 ], [ %4599, %4587 ]
  %4627 = phi float [ %4622, %4604 ], [ %4600, %4587 ]
  %4628 = phi float [ %4623, %4604 ], [ %4601, %4587 ]
  %4629 = phi float [ %4624, %4604 ], [ %4602, %4587 ]
  %4630 = fadd fast float %4626, -5.000000e-01
  %4631 = fadd fast float %4628, -5.000000e-01
  %4632 = fmul fast float %4630, 0xBFD5555560000000
  %4633 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4631, float %4632)  ; FMad(a,b,c)
  %4634 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4627, float 0.000000e+00)  ; FMad(a,b,c)
  %4635 = fadd fast float %4634, %4629
  %4636 = fmul fast float %4630, -7.500000e-01
  %4637 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4631, float %4636)  ; FMad(a,b,c)
  %4638 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4627, float 0.000000e+00)  ; FMad(a,b,c)
  %4639 = fadd fast float %4638, %4629
  %4640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4640, 0
  %4642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4643 = extractvalue %dx.types.CBufRet.f32 %4642, 0
  %4644 = extractvalue %dx.types.CBufRet.f32 %4642, 1
  %4645 = extractvalue %dx.types.CBufRet.f32 %4642, 2
  %4646 = extractvalue %dx.types.CBufRet.f32 %4642, 3
  %4647 = fsub fast float %4643, %4633
  %4648 = fsub fast float %4644, %4635
  %4649 = fsub fast float %4645, %4637
  %4650 = fsub fast float %4646, %4639
  %4651 = fmul fast float %4647, %4641
  %4652 = fmul fast float %4648, %4641
  %4653 = fmul fast float %4649, %4641
  %4654 = fmul fast float %4650, %4641
  %4655 = fadd fast float %4651, %4633
  %4656 = fadd fast float %4652, %4635
  %4657 = fadd fast float %4653, %4637
  %4658 = fadd fast float %4654, %4639
  %4659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.i32 %4659, 0
  %4661 = and i32 %4660, 536870911
  %4662 = uitofp i32 %4661 to float
  %4663 = fmul fast float %4662, %4509
  %4664 = fmul fast float %4662, %4513
  %4665 = fptoui float %4663 to i32
  %4666 = fptoui float %4664 to i32
  %4667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.i32 %4667, 0
  %4669 = and i32 %4668, 31
  %4670 = lshr i32 %4665, %4669
  %4671 = lshr i32 %4666, %4669
  %4672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.i32 %4672, 0
  %4674 = and i32 %4673, 31
  %4675 = shl i32 1, %4674
  %4676 = call i32 @dx.op.binary.i32(i32 40, i32 %4675, i32 4)  ; UMin(a,b)
  %4677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4678 = extractvalue %dx.types.ResRet.i32 %4677, 0
  %4679 = extractvalue %dx.types.ResRet.i32 %4677, 1
  %4680 = icmp eq i32 %4676, 0
  br i1 %4680, label %4722, label %4681

; <label>:4681                                    ; preds = %4625
  br label %4682

; <label>:4682                                    ; preds = %4710, %4681
  %4683 = phi i32 [ %4713, %4710 ], [ 0, %4681 ]
  %4684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4685 = extractvalue %dx.types.ResRet.i32 %4684, 0
  %4686 = lshr i32 %4685, 16
  %4687 = and i32 %4686, 31
  %4688 = shl i32 %4671, %4687
  %4689 = add i32 %4688, %4670
  %4690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4691 = extractvalue %dx.types.ResRet.i32 %4690, 0
  %4692 = and i32 %4691, 31
  %4693 = shl i32 %4689, %4692
  %4694 = add i32 %4693, %4683
  %4695 = shl i32 %4694, 2
  %4696 = add i32 %4695, 32
  %4697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4696, i32 undef)  ; BufferLoad(srv,index,wot)
  %4698 = extractvalue %dx.types.ResRet.i32 %4697, 0
  %4699 = icmp slt i32 %4698, 0
  %4700 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4683
  %4701 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4683
  %4702 = bitcast float* %4700 to i32*
  %4703 = bitcast float* %4701 to i32*
  br i1 %4699, label %4704, label %4710

; <label>:4704                                    ; preds = %4682
  %4705 = and i32 %4698, 1073741823
  %4706 = add nuw nsw i32 %4705, 20
  %4707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4706, i32 undef)  ; BufferLoad(srv,index,wot)
  %4708 = extractvalue %dx.types.ResRet.i32 %4707, 0
  %4709 = extractvalue %dx.types.ResRet.i32 %4707, 1
  br label %4710

; <label>:4710                                    ; preds = %4704, %4682
  %4711 = phi i32 [ %4708, %4704 ], [ %4678, %4682 ]
  %4712 = phi i32 [ %4709, %4704 ], [ %4679, %4682 ]
  store i32 %4711, i32* %4702, align 4
  store i32 %4712, i32* %4703, align 4
  %4713 = add nuw i32 %4683, 1
  %4714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.i32 %4714, 2
  %4716 = icmp eq i32 %4715, 0
  %4717 = icmp ugt i32 %4698, -1073741825
  %4718 = and i1 %4717, %4716
  %4719 = icmp ult i32 %4713, %4676
  %4720 = and i1 %4718, %4719
  br i1 %4720, label %4682, label %4721

; <label>:4721                                    ; preds = %4710
  br label %4722

; <label>:4722                                    ; preds = %4721, %4625
  %4723 = phi i32 [ 0, %4625 ], [ %4713, %4721 ]
  %4724 = extractvalue %dx.types.CBufRet.f32 %4487, 2
  %4725 = fptoui float %4724 to i32
  %4726 = icmp eq i32 %4725, 0
  br i1 %4726, label %4778, label %4727

; <label>:4727                                    ; preds = %4722
  br label %4728

; <label>:4728                                    ; preds = %4773, %4727
  %4729 = phi i32 [ %4774, %4773 ], [ %4723, %4727 ]
  %4730 = phi i32 [ %4775, %4773 ], [ 0, %4727 ]
  %4731 = lshr i32 %4730, 2
  %4732 = and i32 %4730, 3
  %4733 = add nuw nsw i32 %4731, 83
  %4734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4733)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.i32 %4734, 0
  %4736 = extractvalue %dx.types.CBufRet.i32 %4734, 1
  %4737 = extractvalue %dx.types.CBufRet.i32 %4734, 2
  %4738 = extractvalue %dx.types.CBufRet.i32 %4734, 3
  %4739 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4735, i32* %4739, align 4
  %4740 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4736, i32* %4740, align 4
  %4741 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4737, i32* %4741, align 4
  %4742 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4738, i32* %4742, align 4
  %4743 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4732
  %4744 = load i32, i32* %4743, align 4, !tbaa !121, !noalias !125
  %4745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4746 = extractvalue %dx.types.ResRet.i32 %4745, 0
  %4747 = lshr i32 %4746, 16
  %4748 = and i32 %4747, 31
  %4749 = shl i32 %4671, %4748
  %4750 = add i32 %4749, %4670
  %4751 = shl i32 %4750, 2
  %4752 = add i32 %4751, %4744
  %4753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4752, i32 undef)  ; BufferLoad(srv,index,wot)
  %4754 = extractvalue %dx.types.ResRet.i32 %4753, 0
  %4755 = icmp eq i32 %4754, 0
  br i1 %4755, label %4773, label %4756

; <label>:4756                                    ; preds = %4728
  %4757 = icmp slt i32 %4754, 0
  %4758 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4729
  %4759 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4729
  %4760 = bitcast float* %4758 to i32*
  %4761 = bitcast float* %4759 to i32*
  br i1 %4757, label %4762, label %4769

; <label>:4762                                    ; preds = %4756
  %4763 = and i32 %4754, 1073741823
  %4764 = add i32 %4744, 20
  %4765 = add i32 %4764, %4763
  %4766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4765, i32 undef)  ; BufferLoad(srv,index,wot)
  %4767 = extractvalue %dx.types.ResRet.i32 %4766, 0
  %4768 = extractvalue %dx.types.ResRet.i32 %4766, 1
  br label %4769

; <label>:4769                                    ; preds = %4762, %4756
  %4770 = phi i32 [ %4767, %4762 ], [ %4678, %4756 ]
  %4771 = phi i32 [ %4768, %4762 ], [ %4679, %4756 ]
  store i32 %4770, i32* %4760, align 4
  store i32 %4771, i32* %4761, align 4
  %4772 = add i32 %4729, 1
  br label %4773

; <label>:4773                                    ; preds = %4769, %4728
  %4774 = phi i32 [ %4729, %4728 ], [ %4772, %4769 ]
  %4775 = add nuw i32 %4730, 1
  %4776 = icmp eq i32 %4775, %4725
  br i1 %4776, label %4777, label %4728

; <label>:4777                                    ; preds = %4773
  br label %4778

; <label>:4778                                    ; preds = %4777, %4722
  %4779 = phi i32 [ %4723, %4722 ], [ %4774, %4777 ]
  %4780 = icmp eq i32 %4779, 1
  %4781 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %4782 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %4780, label %4783, label %4786

; <label>:4783                                    ; preds = %4778
  %4784 = load float, float* %4781, align 4
  %4785 = load float, float* %4782, align 4
  br label %4813

; <label>:4786                                    ; preds = %4778
  %4787 = load float, float* %4781, align 4
  %4788 = load float, float* %4782, align 4
  %4789 = fdiv fast float 1.000000e+00, %4788
  %4790 = fsub fast float %4787, %4789
  %4791 = icmp ugt i32 %4779, 1
  br i1 %4791, label %4792, label %4808

; <label>:4792                                    ; preds = %4786
  br label %4793

; <label>:4793                                    ; preds = %4793, %4792
  %4794 = phi float [ %4803, %4793 ], [ %4790, %4792 ]
  %4795 = phi float [ %4804, %4793 ], [ %4787, %4792 ]
  %4796 = phi i32 [ %4805, %4793 ], [ 1, %4792 ]
  %4797 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4796
  %4798 = load float, float* %4797, align 4
  %4799 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4796
  %4800 = load float, float* %4799, align 4
  %4801 = fdiv fast float 1.000000e+00, %4800
  %4802 = fsub fast float %4798, %4801
  %4803 = call float @dx.op.binary.f32(i32 36, float %4794, float %4802)  ; FMin(a,b)
  %4804 = call float @dx.op.binary.f32(i32 35, float %4795, float %4798)  ; FMax(a,b)
  %4805 = add nuw i32 %4796, 1
  %4806 = icmp eq i32 %4805, %4779
  br i1 %4806, label %4807, label %4793

; <label>:4807                                    ; preds = %4793
  br label %4808

; <label>:4808                                    ; preds = %4807, %4786
  %4809 = phi float [ %4790, %4786 ], [ %4803, %4807 ]
  %4810 = phi float [ %4787, %4786 ], [ %4804, %4807 ]
  %4811 = fsub fast float %4810, %4809
  %4812 = fdiv fast float 1.000000e+00, %4811
  br label %4813

; <label>:4813                                    ; preds = %4808, %4783
  %4814 = phi float [ %4784, %4783 ], [ %4810, %4808 ]
  %4815 = phi float [ %4785, %4783 ], [ %4812, %4808 ]
  %4816 = fadd fast float %4517, %4814
  %4817 = fmul fast float %4816, %4815
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = fmul fast float %4818, 2.000000e+00
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = fmul fast float %4655, %4655
  %4822 = fsub fast float %4656, %4821
  %4823 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4822)  ; FMax(a,b)
  %4824 = fdiv fast float 1.000000e+00, %4823
  %4825 = fmul fast float %4656, %4655
  %4826 = fsub fast float %4657, %4825
  %4827 = fsub fast float %4820, %4655
  %4828 = fmul fast float %4820, %4820
  %4829 = fsub fast float %4828, %4656
  %4830 = fmul fast float %4824, %4826
  %4831 = fmul fast float %4830, %4827
  %4832 = fsub fast float %4829, %4831
  %4833 = fmul fast float %4656, %4656
  %4834 = fsub fast float %4658, %4833
  %4835 = fmul fast float %4826, %4826
  %4836 = fmul fast float %4835, %4824
  %4837 = fsub fast float %4834, %4836
  %4838 = fdiv fast float %4832, %4837
  %4839 = fmul fast float %4838, %4826
  %4840 = fsub fast float %4827, %4839
  %4841 = fmul fast float %4840, %4824
  %4842 = fmul fast float %4841, %4655
  %4843 = fsub fast float 1.000000e+00, %4842
  %4844 = fmul fast float %4838, %4656
  %4845 = fsub fast float %4843, %4844
  %4846 = fmul fast float %4841, %4841
  %4847 = fmul fast float %4838, 4.000000e+00
  %4848 = fmul fast float %4847, %4845
  %4849 = fsub fast float %4846, %4848
  %4850 = call float @dx.op.unary.f32(i32 24, float %4849)  ; Sqrt(value)
  %4851 = fcmp fast oge float %4841, 0.000000e+00
  %4852 = fsub fast float -0.000000e+00, %4850
  %4853 = select i1 %4851, float %4852, float %4850
  %4854 = fsub fast float %4853, %4841
  %4855 = fdiv fast float %4854, %4838
  %4856 = fdiv fast float %4845, %4854
  %4857 = fmul fast float %4855, 5.000000e-01
  %4858 = fmul fast float %4856, 2.000000e+00
  %4859 = select i1 %4851, float %4857, float %4858
  %4860 = select i1 %4851, float %4858, float %4857
  %4861 = call float @dx.op.binary.f32(i32 35, float %4859, float %4860)  ; FMax(a,b)
  %4862 = call float @dx.op.binary.f32(i32 36, float %4859, float %4860)  ; FMin(a,b)
  %4863 = fcmp fast ogt float %4820, %4861
  %4864 = fsub fast float %4820, %4862
  %4865 = fsub fast float %4820, %4861
  %4866 = fsub fast float %4861, %4862
  %4867 = select i1 %4863, float %4865, float %4866
  %4868 = fmul float %4864, %4867
  %4869 = select i1 %4863, float %4862, float %4820
  %4870 = fcmp fast ogt float %4820, %4862
  %4871 = fmul fast float %4869, %4861
  %4872 = fadd fast float %4869, %4861
  %4873 = fmul fast float %4872, %4655
  %4874 = fadd fast float %4871, %4656
  %4875 = fsub fast float %4874, %4873
  %4876 = fdiv fast float %4875, %4868
  %4877 = select i1 %4870, float %4876, float 0.000000e+00
  %4878 = fsub fast float 1.000000e+00, %4877
  %4879 = select i1 %4863, float %4878, float %4877
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4640, 3
  %4882 = fmul fast float %4881, %4880
  %4883 = fsub fast float 1.000000e+00, %4882
  br label %4884

; <label>:4884                                    ; preds = %4813, %4525, %4490, %4486, %4452
  %4885 = phi float [ 1.000000e+00, %4452 ], [ %4883, %4813 ], [ 1.000000e+00, %4490 ], [ 1.000000e+00, %4525 ], [ 1.000000e+00, %4486 ]
  %4886 = fcmp fast ogt float %4482, 0.000000e+00
  br i1 %4886, label %4887, label %5049, !dx.controlflow.hints !134

; <label>:4887                                    ; preds = %4884
  %4888 = fadd fast float %4395, %4369
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 2
  %4891 = extractvalue %dx.types.CBufRet.f32 %4889, 3
  %4892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4893 = extractvalue %dx.types.CBufRet.f32 %4892, 2
  %4894 = call float @dx.op.binary.f32(i32 35, float %4888, float 0.000000e+00)  ; FMax(a,b)
  %4895 = fadd fast float %4894, 0x3F10000000000000
  %4896 = fcmp fast oeq float %4893, 0.000000e+00
  br i1 %4896, label %4897, label %4964

; <label>:4897                                    ; preds = %4887
  %4898 = extractvalue %dx.types.CBufRet.f32 %4889, 1
  %4899 = extractvalue %dx.types.CBufRet.f32 %4889, 0
  %4900 = fmul fast float %4899, %4384
  %4901 = fmul fast float %4898, %4385
  %4902 = fadd fast float %4900, 5.000000e-01
  %4903 = call float @dx.op.unary.f32(i32 27, float %4902)  ; Round_ni(value)
  %4904 = fadd fast float %4901, 5.000000e-01
  %4905 = call float @dx.op.unary.f32(i32 27, float %4904)  ; Round_ni(value)
  %4906 = fsub fast float %4902, %4903
  %4907 = fsub fast float %4904, %4905
  %4908 = fadd fast float %4903, -5.000000e-01
  %4909 = fadd fast float %4905, -5.000000e-01
  %4910 = fmul fast float %4906, 2.000000e+00
  %4911 = fsub fast float 3.000000e+00, %4910
  %4912 = fadd fast float %4910, 1.000000e+00
  %4913 = fsub fast float 2.000000e+00, %4906
  %4914 = bitcast float %4911 to i32
  %4915 = sub nsw i32 2129859010, %4914
  %4916 = bitcast i32 %4915 to float
  %4917 = fmul fast float %4916, %4913
  %4918 = fadd fast float %4917, -1.000000e+00
  %4919 = bitcast float %4912 to i32
  %4920 = sub nsw i32 2129859010, %4919
  %4921 = bitcast i32 %4920 to float
  %4922 = fmul fast float %4921, %4906
  %4923 = fadd fast float %4922, 1.000000e+00
  %4924 = fmul fast float %4907, 2.000000e+00
  %4925 = fsub fast float 3.000000e+00, %4924
  %4926 = fadd fast float %4924, 1.000000e+00
  %4927 = fsub fast float 2.000000e+00, %4907
  %4928 = bitcast float %4925 to i32
  %4929 = sub nsw i32 2129859010, %4928
  %4930 = bitcast i32 %4929 to float
  %4931 = fmul fast float %4930, %4927
  %4932 = fadd fast float %4931, -1.000000e+00
  %4933 = bitcast float %4926 to i32
  %4934 = sub nsw i32 2129859010, %4933
  %4935 = bitcast i32 %4934 to float
  %4936 = fmul fast float %4935, %4907
  %4937 = fadd fast float %4936, 1.000000e+00
  %4938 = fadd fast float %4918, %4908
  %4939 = fmul fast float %4938, %4890
  %4940 = fadd fast float %4932, %4909
  %4941 = fmul fast float %4940, %4891
  %4942 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4939, float %4941, float undef, float undef, i32 0, i32 0, i32 undef, float %4895)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4943 = extractvalue %dx.types.ResRet.f32 %4942, 0
  %4944 = fmul fast float %4943, %4911
  %4945 = fadd fast float %4923, %4908
  %4946 = fmul fast float %4945, %4890
  %4947 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4946, float %4941, float undef, float undef, i32 0, i32 0, i32 undef, float %4895)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4948 = extractvalue %dx.types.ResRet.f32 %4947, 0
  %4949 = fmul fast float %4948, %4912
  %4950 = fadd fast float %4937, %4909
  %4951 = fmul fast float %4950, %4891
  %4952 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4939, float %4951, float undef, float undef, i32 0, i32 0, i32 undef, float %4895)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4953 = extractvalue %dx.types.ResRet.f32 %4952, 0
  %4954 = fmul fast float %4953, %4911
  %4955 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4946, float %4951, float undef, float undef, i32 0, i32 0, i32 undef, float %4895)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4956 = extractvalue %dx.types.ResRet.f32 %4955, 0
  %4957 = fmul fast float %4956, %4912
  %4958 = fadd fast float %4957, %4954
  %4959 = fmul fast float %4958, %4926
  %4960 = fadd fast float %4949, %4944
  %4961 = fmul fast float %4960, %4925
  %4962 = fadd fast float %4961, %4959
  %4963 = fmul fast float %4962, 6.250000e-02
  br label %5049

; <label>:4964                                    ; preds = %4887
  %4965 = fmul fast float %248, 0x401921FB60000000
  %4966 = call float @dx.op.unary.f32(i32 13, float %4965)  ; Sin(value)
  %4967 = call float @dx.op.unary.f32(i32 12, float %4965)  ; Cos(value)
  %4968 = fsub fast float -0.000000e+00, %4966
  br label %4969

; <label>:4969                                    ; preds = %5018, %4964
  %4970 = phi float [ 0.000000e+00, %4964 ], [ %5013, %5018 ]
  %4971 = phi float [ 0.000000e+00, %4964 ], [ %5015, %5018 ]
  %4972 = phi i32 [ 0, %4964 ], [ %5019, %5018 ]
  %4973 = mul i32 %4972, 2
  %4974 = add i32 0, %4973
  %4975 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4974
  %4976 = load float, float* %4975, align 4
  %4977 = mul i32 %4972, 2
  %4978 = add i32 1, %4977
  %4979 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4978
  %4980 = load float, float* %4979, align 4
  %4981 = fmul fast float %4976, %4967
  %4982 = call float @dx.op.tertiary.f32(i32 46, float %4980, float %4968, float %4981)  ; FMad(a,b,c)
  %4983 = fmul fast float %4976, %4966
  %4984 = call float @dx.op.tertiary.f32(i32 46, float %4980, float %4967, float %4983)  ; FMad(a,b,c)
  %4985 = fmul fast float %4982, %4893
  %4986 = fmul fast float %4984, %4893
  %4987 = fadd fast float %4985, %4384
  %4988 = fadd fast float %4986, %4385
  %4989 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4987, float %4988, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4990 = extractvalue %dx.types.ResRet.f32 %4989, 0
  %4991 = extractvalue %dx.types.ResRet.f32 %4989, 1
  %4992 = extractvalue %dx.types.ResRet.f32 %4989, 2
  %4993 = extractvalue %dx.types.ResRet.f32 %4989, 3
  %4994 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %4990, float* %4994, align 4
  %4995 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %4991, float* %4995, align 4
  %4996 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %4992, float* %4996, align 4
  %4997 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %4993, float* %4997, align 4
  %4998 = fsub fast float %4990, %4895
  %4999 = fcmp fast olt float %4998, 0.000000e+00
  %5000 = select i1 %4999, float 0.000000e+00, float 1.000000e+00
  %5001 = fadd fast float %5000, %4970
  %5002 = fmul fast float %5000, %4998
  %5003 = fadd fast float %5002, %4971
  br label %5004

; <label>:5004                                    ; preds = %5004, %4969
  %5005 = phi i32 [ 1, %4969 ], [ %5016, %5004 ]
  %5006 = phi float [ %5003, %4969 ], [ %5015, %5004 ]
  %5007 = phi float [ %5001, %4969 ], [ %5013, %5004 ]
  %5008 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %5005
  %5009 = load float, float* %5008, align 4, !tbaa !135, !noalias !125
  %5010 = fsub fast float %5009, %4895
  %5011 = fcmp fast olt float %5010, 0.000000e+00
  %5012 = select i1 %5011, float 0.000000e+00, float 1.000000e+00
  %5013 = fadd fast float %5012, %5007
  %5014 = fmul fast float %5012, %5010
  %5015 = fadd fast float %5014, %5006
  %5016 = add nuw nsw i32 %5005, 1
  %5017 = icmp eq i32 %5016, 4
  br i1 %5017, label %5018, label %5004, !llvm.loop !137

; <label>:5018                                    ; preds = %5004
  %5019 = add nuw nsw i32 %4972, 1
  %5020 = icmp eq i32 %5019, 8
  br i1 %5020, label %5021, label %4969, !llvm.loop !138

; <label>:5021                                    ; preds = %5018
  %5022 = fdiv fast float 1.000000e+00, %5013
  %5023 = fmul fast float %5022, %5015
  %5024 = fdiv fast float 1.000000e+00, %4895
  %5025 = fmul fast float %5023, %5024
  %5026 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5027 = call float @dx.op.binary.f32(i32 35, float %5026, float 0.000000e+00)  ; FMax(a,b)
  %5028 = fmul fast float %5013, 3.125000e-02
  %5029 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5030 = fmul fast float %5029, 2.000000e+00
  %5031 = fadd fast float %5030, -1.000000e+00
  %5032 = fcmp fast ogt float %5031, 0.000000e+00
  %5033 = fcmp fast olt float %5031, 0.000000e+00
  %5034 = zext i1 %5032 to i32
  %5035 = zext i1 %5033 to i32
  %5036 = sub nsw i32 %5034, %5035
  %5037 = sitofp i32 %5036 to float
  %5038 = fmul fast float %5037, %5031
  %5039 = fsub fast float 1.000000e+00, %5038
  %5040 = fmul fast float %5039, %5039
  %5041 = fmul fast float %5040, %5039
  %5042 = fsub fast float %5039, %5041
  %5043 = fmul fast float %5042, %5027
  %5044 = fsub fast float 1.000000e+00, %5041
  %5045 = fsub fast float %5044, %5043
  %5046 = fmul fast float %5037, 5.000000e-01
  %5047 = fmul fast float %5046, %5045
  %5048 = fsub fast float 5.000000e-01, %5047
  br label %5049

; <label>:5049                                    ; preds = %5021, %4897, %4884
  %5050 = phi float [ 1.000000e+00, %4884 ], [ %4963, %4897 ], [ %5048, %5021 ]
  %5051 = fcmp fast ogt float %4480, 0.000000e+00
  br i1 %5051, label %5052, label %5216, !dx.controlflow.hints !139

; <label>:5052                                    ; preds = %5049
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 1
  %5055 = fadd fast float %5054, %4369
  %5056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5057 = extractvalue %dx.types.CBufRet.f32 %5056, 2
  %5058 = extractvalue %dx.types.CBufRet.f32 %5056, 3
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 1
  %5061 = call float @dx.op.binary.f32(i32 35, float %5055, float 0.000000e+00)  ; FMax(a,b)
  %5062 = fadd fast float %5061, 0x3F10000000000000
  %5063 = fcmp fast oeq float %5060, 0.000000e+00
  br i1 %5063, label %5064, label %5131

; <label>:5064                                    ; preds = %5052
  %5065 = extractvalue %dx.types.CBufRet.f32 %5056, 1
  %5066 = extractvalue %dx.types.CBufRet.f32 %5056, 0
  %5067 = fmul fast float %5066, %4376
  %5068 = fmul fast float %5065, %4377
  %5069 = fadd fast float %5067, 5.000000e-01
  %5070 = call float @dx.op.unary.f32(i32 27, float %5069)  ; Round_ni(value)
  %5071 = fadd fast float %5068, 5.000000e-01
  %5072 = call float @dx.op.unary.f32(i32 27, float %5071)  ; Round_ni(value)
  %5073 = fsub fast float %5069, %5070
  %5074 = fsub fast float %5071, %5072
  %5075 = fadd fast float %5070, -5.000000e-01
  %5076 = fadd fast float %5072, -5.000000e-01
  %5077 = fmul fast float %5073, 2.000000e+00
  %5078 = fsub fast float 3.000000e+00, %5077
  %5079 = fadd fast float %5077, 1.000000e+00
  %5080 = fsub fast float 2.000000e+00, %5073
  %5081 = bitcast float %5078 to i32
  %5082 = sub nsw i32 2129859010, %5081
  %5083 = bitcast i32 %5082 to float
  %5084 = fmul fast float %5083, %5080
  %5085 = fadd fast float %5084, -1.000000e+00
  %5086 = bitcast float %5079 to i32
  %5087 = sub nsw i32 2129859010, %5086
  %5088 = bitcast i32 %5087 to float
  %5089 = fmul fast float %5088, %5073
  %5090 = fadd fast float %5089, 1.000000e+00
  %5091 = fmul fast float %5074, 2.000000e+00
  %5092 = fsub fast float 3.000000e+00, %5091
  %5093 = fadd fast float %5091, 1.000000e+00
  %5094 = fsub fast float 2.000000e+00, %5074
  %5095 = bitcast float %5092 to i32
  %5096 = sub nsw i32 2129859010, %5095
  %5097 = bitcast i32 %5096 to float
  %5098 = fmul fast float %5097, %5094
  %5099 = fadd fast float %5098, -1.000000e+00
  %5100 = bitcast float %5093 to i32
  %5101 = sub nsw i32 2129859010, %5100
  %5102 = bitcast i32 %5101 to float
  %5103 = fmul fast float %5102, %5074
  %5104 = fadd fast float %5103, 1.000000e+00
  %5105 = fadd fast float %5085, %5075
  %5106 = fmul fast float %5105, %5057
  %5107 = fadd fast float %5099, %5076
  %5108 = fmul fast float %5107, %5058
  %5109 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5106, float %5108, float undef, float undef, i32 0, i32 0, i32 undef, float %5062)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5110 = extractvalue %dx.types.ResRet.f32 %5109, 0
  %5111 = fmul fast float %5110, %5078
  %5112 = fadd fast float %5090, %5075
  %5113 = fmul fast float %5112, %5057
  %5114 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5113, float %5108, float undef, float undef, i32 0, i32 0, i32 undef, float %5062)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 0
  %5116 = fmul fast float %5115, %5079
  %5117 = fadd fast float %5104, %5076
  %5118 = fmul fast float %5117, %5058
  %5119 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5106, float %5118, float undef, float undef, i32 0, i32 0, i32 undef, float %5062)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5120 = extractvalue %dx.types.ResRet.f32 %5119, 0
  %5121 = fmul fast float %5120, %5078
  %5122 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5113, float %5118, float undef, float undef, i32 0, i32 0, i32 undef, float %5062)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5123 = extractvalue %dx.types.ResRet.f32 %5122, 0
  %5124 = fmul fast float %5123, %5079
  %5125 = fadd fast float %5124, %5121
  %5126 = fmul fast float %5125, %5093
  %5127 = fadd fast float %5116, %5111
  %5128 = fmul fast float %5127, %5092
  %5129 = fadd fast float %5128, %5126
  %5130 = fmul fast float %5129, 6.250000e-02
  br label %5216

; <label>:5131                                    ; preds = %5052
  %5132 = fmul fast float %248, 0x401921FB60000000
  %5133 = call float @dx.op.unary.f32(i32 13, float %5132)  ; Sin(value)
  %5134 = call float @dx.op.unary.f32(i32 12, float %5132)  ; Cos(value)
  %5135 = fsub fast float -0.000000e+00, %5133
  br label %5136

; <label>:5136                                    ; preds = %5185, %5131
  %5137 = phi float [ 0.000000e+00, %5131 ], [ %5180, %5185 ]
  %5138 = phi float [ 0.000000e+00, %5131 ], [ %5182, %5185 ]
  %5139 = phi i32 [ 0, %5131 ], [ %5186, %5185 ]
  %5140 = mul i32 %5139, 2
  %5141 = add i32 0, %5140
  %5142 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5141
  %5143 = load float, float* %5142, align 4
  %5144 = mul i32 %5139, 2
  %5145 = add i32 1, %5144
  %5146 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5145
  %5147 = load float, float* %5146, align 4
  %5148 = fmul fast float %5143, %5134
  %5149 = call float @dx.op.tertiary.f32(i32 46, float %5147, float %5135, float %5148)  ; FMad(a,b,c)
  %5150 = fmul fast float %5143, %5133
  %5151 = call float @dx.op.tertiary.f32(i32 46, float %5147, float %5134, float %5150)  ; FMad(a,b,c)
  %5152 = fmul fast float %5149, %5060
  %5153 = fmul fast float %5151, %5060
  %5154 = fadd fast float %5152, %4376
  %5155 = fadd fast float %5153, %4377
  %5156 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %5154, float %5155, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5157 = extractvalue %dx.types.ResRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.ResRet.f32 %5156, 1
  %5159 = extractvalue %dx.types.ResRet.f32 %5156, 2
  %5160 = extractvalue %dx.types.ResRet.f32 %5156, 3
  %5161 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %5157, float* %5161, align 4
  %5162 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %5158, float* %5162, align 4
  %5163 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %5159, float* %5163, align 4
  %5164 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %5160, float* %5164, align 4
  %5165 = fsub fast float %5157, %5062
  %5166 = fcmp fast olt float %5165, 0.000000e+00
  %5167 = select i1 %5166, float 0.000000e+00, float 1.000000e+00
  %5168 = fadd fast float %5167, %5137
  %5169 = fmul fast float %5167, %5165
  %5170 = fadd fast float %5169, %5138
  br label %5171

; <label>:5171                                    ; preds = %5171, %5136
  %5172 = phi i32 [ 1, %5136 ], [ %5183, %5171 ]
  %5173 = phi float [ %5170, %5136 ], [ %5182, %5171 ]
  %5174 = phi float [ %5168, %5136 ], [ %5180, %5171 ]
  %5175 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %5172
  %5176 = load float, float* %5175, align 4, !tbaa !135, !noalias !125
  %5177 = fsub fast float %5176, %5062
  %5178 = fcmp fast olt float %5177, 0.000000e+00
  %5179 = select i1 %5178, float 0.000000e+00, float 1.000000e+00
  %5180 = fadd fast float %5179, %5174
  %5181 = fmul fast float %5179, %5177
  %5182 = fadd fast float %5181, %5173
  %5183 = add nuw nsw i32 %5172, 1
  %5184 = icmp eq i32 %5183, 4
  br i1 %5184, label %5185, label %5171, !llvm.loop !137

; <label>:5185                                    ; preds = %5171
  %5186 = add nuw nsw i32 %5139, 1
  %5187 = icmp eq i32 %5186, 8
  br i1 %5187, label %5188, label %5136, !llvm.loop !138

; <label>:5188                                    ; preds = %5185
  %5189 = fdiv fast float 1.000000e+00, %5180
  %5190 = fmul fast float %5189, %5182
  %5191 = fdiv fast float 1.000000e+00, %5062
  %5192 = fmul fast float %5190, %5191
  %5193 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5194 = call float @dx.op.binary.f32(i32 35, float %5193, float 0.000000e+00)  ; FMax(a,b)
  %5195 = fmul fast float %5180, 3.125000e-02
  %5196 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5197 = fmul fast float %5196, 2.000000e+00
  %5198 = fadd fast float %5197, -1.000000e+00
  %5199 = fcmp fast ogt float %5198, 0.000000e+00
  %5200 = fcmp fast olt float %5198, 0.000000e+00
  %5201 = zext i1 %5199 to i32
  %5202 = zext i1 %5200 to i32
  %5203 = sub nsw i32 %5201, %5202
  %5204 = sitofp i32 %5203 to float
  %5205 = fmul fast float %5204, %5198
  %5206 = fsub fast float 1.000000e+00, %5205
  %5207 = fmul fast float %5206, %5206
  %5208 = fmul fast float %5207, %5206
  %5209 = fsub fast float %5206, %5208
  %5210 = fmul fast float %5209, %5194
  %5211 = fsub fast float 1.000000e+00, %5208
  %5212 = fsub fast float %5211, %5210
  %5213 = fmul fast float %5204, 5.000000e-01
  %5214 = fmul fast float %5213, %5212
  %5215 = fsub fast float 5.000000e-01, %5214
  br label %5216

; <label>:5216                                    ; preds = %5188, %5064, %5049
  %5217 = phi float [ 1.000000e+00, %5049 ], [ %5130, %5064 ], [ %5215, %5188 ]
  %5218 = fcmp fast ogt float %4479, 0.000000e+00
  br i1 %5218, label %5219, label %5383, !dx.controlflow.hints !140

; <label>:5219                                    ; preds = %5216
  %5220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.f32 %5220, 0
  %5222 = fadd fast float %5221, %4369
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 2
  %5225 = extractvalue %dx.types.CBufRet.f32 %5223, 3
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5228 = call float @dx.op.binary.f32(i32 35, float %5222, float 0.000000e+00)  ; FMax(a,b)
  %5229 = fadd fast float %5228, 0x3F10000000000000
  %5230 = fcmp fast oeq float %5227, 0.000000e+00
  br i1 %5230, label %5231, label %5298

; <label>:5231                                    ; preds = %5219
  %5232 = extractvalue %dx.types.CBufRet.f32 %5223, 1
  %5233 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5234 = fmul fast float %5233, %4361
  %5235 = fmul fast float %5232, %4365
  %5236 = fadd fast float %5234, 5.000000e-01
  %5237 = call float @dx.op.unary.f32(i32 27, float %5236)  ; Round_ni(value)
  %5238 = fadd fast float %5235, 5.000000e-01
  %5239 = call float @dx.op.unary.f32(i32 27, float %5238)  ; Round_ni(value)
  %5240 = fsub fast float %5236, %5237
  %5241 = fsub fast float %5238, %5239
  %5242 = fadd fast float %5237, -5.000000e-01
  %5243 = fadd fast float %5239, -5.000000e-01
  %5244 = fmul fast float %5240, 2.000000e+00
  %5245 = fsub fast float 3.000000e+00, %5244
  %5246 = fadd fast float %5244, 1.000000e+00
  %5247 = fsub fast float 2.000000e+00, %5240
  %5248 = bitcast float %5245 to i32
  %5249 = sub nsw i32 2129859010, %5248
  %5250 = bitcast i32 %5249 to float
  %5251 = fmul fast float %5250, %5247
  %5252 = fadd fast float %5251, -1.000000e+00
  %5253 = bitcast float %5246 to i32
  %5254 = sub nsw i32 2129859010, %5253
  %5255 = bitcast i32 %5254 to float
  %5256 = fmul fast float %5255, %5240
  %5257 = fadd fast float %5256, 1.000000e+00
  %5258 = fmul fast float %5241, 2.000000e+00
  %5259 = fsub fast float 3.000000e+00, %5258
  %5260 = fadd fast float %5258, 1.000000e+00
  %5261 = fsub fast float 2.000000e+00, %5241
  %5262 = bitcast float %5259 to i32
  %5263 = sub nsw i32 2129859010, %5262
  %5264 = bitcast i32 %5263 to float
  %5265 = fmul fast float %5264, %5261
  %5266 = fadd fast float %5265, -1.000000e+00
  %5267 = bitcast float %5260 to i32
  %5268 = sub nsw i32 2129859010, %5267
  %5269 = bitcast i32 %5268 to float
  %5270 = fmul fast float %5269, %5241
  %5271 = fadd fast float %5270, 1.000000e+00
  %5272 = fadd fast float %5252, %5242
  %5273 = fmul fast float %5272, %5224
  %5274 = fadd fast float %5266, %5243
  %5275 = fmul fast float %5274, %5225
  %5276 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5273, float %5275, float undef, float undef, i32 0, i32 0, i32 undef, float %5229)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5277 = extractvalue %dx.types.ResRet.f32 %5276, 0
  %5278 = fmul fast float %5277, %5245
  %5279 = fadd fast float %5257, %5242
  %5280 = fmul fast float %5279, %5224
  %5281 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5280, float %5275, float undef, float undef, i32 0, i32 0, i32 undef, float %5229)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5282 = extractvalue %dx.types.ResRet.f32 %5281, 0
  %5283 = fmul fast float %5282, %5246
  %5284 = fadd fast float %5271, %5243
  %5285 = fmul fast float %5284, %5225
  %5286 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5273, float %5285, float undef, float undef, i32 0, i32 0, i32 undef, float %5229)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = fmul fast float %5287, %5245
  %5289 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5280, float %5285, float undef, float undef, i32 0, i32 0, i32 undef, float %5229)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = fmul fast float %5290, %5246
  %5292 = fadd fast float %5291, %5288
  %5293 = fmul fast float %5292, %5260
  %5294 = fadd fast float %5283, %5278
  %5295 = fmul fast float %5294, %5259
  %5296 = fadd fast float %5295, %5293
  %5297 = fmul fast float %5296, 6.250000e-02
  br label %5383

; <label>:5298                                    ; preds = %5219
  %5299 = fmul fast float %248, 0x401921FB60000000
  %5300 = call float @dx.op.unary.f32(i32 13, float %5299)  ; Sin(value)
  %5301 = call float @dx.op.unary.f32(i32 12, float %5299)  ; Cos(value)
  %5302 = fsub fast float -0.000000e+00, %5300
  br label %5303

; <label>:5303                                    ; preds = %5352, %5298
  %5304 = phi float [ 0.000000e+00, %5298 ], [ %5347, %5352 ]
  %5305 = phi float [ 0.000000e+00, %5298 ], [ %5349, %5352 ]
  %5306 = phi i32 [ 0, %5298 ], [ %5353, %5352 ]
  %5307 = mul i32 %5306, 2
  %5308 = add i32 0, %5307
  %5309 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5308
  %5310 = load float, float* %5309, align 4
  %5311 = mul i32 %5306, 2
  %5312 = add i32 1, %5311
  %5313 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5312
  %5314 = load float, float* %5313, align 4
  %5315 = fmul fast float %5310, %5301
  %5316 = call float @dx.op.tertiary.f32(i32 46, float %5314, float %5302, float %5315)  ; FMad(a,b,c)
  %5317 = fmul fast float %5310, %5300
  %5318 = call float @dx.op.tertiary.f32(i32 46, float %5314, float %5301, float %5317)  ; FMad(a,b,c)
  %5319 = fmul fast float %5316, %5227
  %5320 = fmul fast float %5318, %5227
  %5321 = fadd fast float %5319, %4361
  %5322 = fadd fast float %5320, %4365
  %5323 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5321, float %5322, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5324 = extractvalue %dx.types.ResRet.f32 %5323, 0
  %5325 = extractvalue %dx.types.ResRet.f32 %5323, 1
  %5326 = extractvalue %dx.types.ResRet.f32 %5323, 2
  %5327 = extractvalue %dx.types.ResRet.f32 %5323, 3
  %5328 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %5324, float* %5328, align 4
  %5329 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %5325, float* %5329, align 4
  %5330 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %5326, float* %5330, align 4
  %5331 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %5327, float* %5331, align 4
  %5332 = fsub fast float %5324, %5229
  %5333 = fcmp fast olt float %5332, 0.000000e+00
  %5334 = select i1 %5333, float 0.000000e+00, float 1.000000e+00
  %5335 = fadd fast float %5334, %5304
  %5336 = fmul fast float %5334, %5332
  %5337 = fadd fast float %5336, %5305
  br label %5338

; <label>:5338                                    ; preds = %5338, %5303
  %5339 = phi i32 [ 1, %5303 ], [ %5350, %5338 ]
  %5340 = phi float [ %5337, %5303 ], [ %5349, %5338 ]
  %5341 = phi float [ %5335, %5303 ], [ %5347, %5338 ]
  %5342 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %5339
  %5343 = load float, float* %5342, align 4, !tbaa !135, !noalias !125
  %5344 = fsub fast float %5343, %5229
  %5345 = fcmp fast olt float %5344, 0.000000e+00
  %5346 = select i1 %5345, float 0.000000e+00, float 1.000000e+00
  %5347 = fadd fast float %5346, %5341
  %5348 = fmul fast float %5346, %5344
  %5349 = fadd fast float %5348, %5340
  %5350 = add nuw nsw i32 %5339, 1
  %5351 = icmp eq i32 %5350, 4
  br i1 %5351, label %5352, label %5338, !llvm.loop !137

; <label>:5352                                    ; preds = %5338
  %5353 = add nuw nsw i32 %5306, 1
  %5354 = icmp eq i32 %5353, 8
  br i1 %5354, label %5355, label %5303, !llvm.loop !138

; <label>:5355                                    ; preds = %5352
  %5356 = fdiv fast float 1.000000e+00, %5347
  %5357 = fmul fast float %5356, %5349
  %5358 = fdiv fast float 1.000000e+00, %5229
  %5359 = fmul fast float %5357, %5358
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = call float @dx.op.binary.f32(i32 35, float %5360, float 0.000000e+00)  ; FMax(a,b)
  %5362 = fmul fast float %5347, 3.125000e-02
  %5363 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5364 = fmul fast float %5363, 2.000000e+00
  %5365 = fadd fast float %5364, -1.000000e+00
  %5366 = fcmp fast ogt float %5365, 0.000000e+00
  %5367 = fcmp fast olt float %5365, 0.000000e+00
  %5368 = zext i1 %5366 to i32
  %5369 = zext i1 %5367 to i32
  %5370 = sub nsw i32 %5368, %5369
  %5371 = sitofp i32 %5370 to float
  %5372 = fmul fast float %5371, %5365
  %5373 = fsub fast float 1.000000e+00, %5372
  %5374 = fmul fast float %5373, %5373
  %5375 = fmul fast float %5374, %5373
  %5376 = fsub fast float %5373, %5375
  %5377 = fmul fast float %5376, %5361
  %5378 = fsub fast float 1.000000e+00, %5375
  %5379 = fsub fast float %5378, %5377
  %5380 = fmul fast float %5371, 5.000000e-01
  %5381 = fmul fast float %5380, %5379
  %5382 = fsub fast float 5.000000e-01, %5381
  br label %5383

; <label>:5383                                    ; preds = %5355, %5231, %5216
  %5384 = phi float [ 1.000000e+00, %5216 ], [ %5297, %5231 ], [ %5382, %5355 ]
  %5385 = fsub fast float %5050, %4885
  %5386 = fmul fast float %5385, %4423
  %5387 = fadd fast float %5386, %4885
  %5388 = fsub fast float %5217, %5387
  %5389 = fmul fast float %5388, %4453
  %5390 = fadd fast float %5389, %5387
  %5391 = fsub fast float %5384, %5390
  %5392 = fmul fast float %5391, %4479
  %5393 = fadd fast float %5392, %5390
  %5394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.f32 %5394, 2
  %5396 = fcmp fast ogt float %5395, 0.000000e+00
  br i1 %5396, label %5397, label %5437, !dx.controlflow.hints !141

; <label>:5397                                    ; preds = %5383
  %5398 = fcmp fast ugt float %5395, 0.000000e+00
  br i1 %5398, label %5399, label %5434

; <label>:5399                                    ; preds = %5397
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5403 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5404 = extractvalue %dx.types.CBufRet.f32 %5400, 3
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 0
  %5407 = extractvalue %dx.types.CBufRet.f32 %5405, 1
  %5408 = extractvalue %dx.types.CBufRet.f32 %5405, 2
  %5409 = extractvalue %dx.types.CBufRet.f32 %5405, 3
  %5410 = extractvalue %dx.types.CBufRet.f32 %5394, 0
  %5411 = extractvalue %dx.types.CBufRet.f32 %5394, 1
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 0
  %5414 = extractvalue %dx.types.CBufRet.f32 %5412, 1
  %5415 = extractvalue %dx.types.CBufRet.f32 %5412, 2
  %5416 = fadd fast float %5413, %4338
  %5417 = fadd fast float %5414, %4339
  %5418 = fadd fast float %5415, %4340
  %5419 = fmul fast float %5416, %5401
  %5420 = call float @dx.op.tertiary.f32(i32 46, float %5402, float %5417, float %5419)  ; FMad(a,b,c)
  %5421 = call float @dx.op.tertiary.f32(i32 46, float %5403, float %5418, float %5420)  ; FMad(a,b,c)
  %5422 = fadd fast float %5421, %5404
  %5423 = fmul fast float %5416, %5406
  %5424 = call float @dx.op.tertiary.f32(i32 46, float %5407, float %5417, float %5423)  ; FMad(a,b,c)
  %5425 = call float @dx.op.tertiary.f32(i32 46, float %5408, float %5418, float %5424)  ; FMad(a,b,c)
  %5426 = fadd fast float %5425, %5409
  %5427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5422, float %5426, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5428 = extractvalue %dx.types.ResRet.f32 %5427, 0
  %5429 = fmul fast float %5428, %5411
  %5430 = fadd fast float %5429, %5410
  %5431 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5432 = fmul fast float %5431, %5395
  %5433 = fsub fast float 1.000000e+00, %5432
  br label %5434

; <label>:5434                                    ; preds = %5399, %5397
  %5435 = phi float [ %5433, %5399 ], [ 1.000000e+00, %5397 ]
  %5436 = fmul fast float %5435, %5393
  br label %5437

; <label>:5437                                    ; preds = %5434, %5383, %4318
  %5438 = phi float [ 1.000000e+00, %4318 ], [ %5436, %5434 ], [ %5393, %5383 ]
  %5439 = call float @dx.op.binary.f32(i32 36, float %5438, float %5438)  ; FMin(a,b)
  %5440 = call float @dx.op.binary.f32(i32 36, float %5438, float %5439)  ; FMin(a,b)
  %5441 = fcmp fast ogt float %5440, 0.000000e+00
  br i1 %5441, label %5442, label %5607, !dx.controlflow.hints !142

; <label>:5442                                    ; preds = %5437
  %5443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5444 = extractvalue %dx.types.CBufRet.f32 %5443, 0
  %5445 = extractvalue %dx.types.CBufRet.f32 %5443, 1
  %5446 = extractvalue %dx.types.CBufRet.f32 %5443, 2
  %5447 = extractvalue %dx.types.CBufRet.f32 %5443, 3
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 0
  %5450 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5451 = extractvalue %dx.types.CBufRet.f32 %5448, 2
  %5452 = extractvalue %dx.types.CBufRet.f32 %5448, 3
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 0
  %5455 = extractvalue %dx.types.CBufRet.f32 %5453, 1
  %5456 = extractvalue %dx.types.CBufRet.f32 %5453, 2
  %5457 = extractvalue %dx.types.CBufRet.f32 %5453, 3
  %5458 = fmul fast float %5444, %4338
  %5459 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %5445, float %5458)  ; FMad(a,b,c)
  %5460 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %5446, float %5459)  ; FMad(a,b,c)
  %5461 = fadd fast float %5460, %5447
  %5462 = fmul fast float %5449, %4338
  %5463 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %5450, float %5462)  ; FMad(a,b,c)
  %5464 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %5451, float %5463)  ; FMad(a,b,c)
  %5465 = fadd fast float %5464, %5452
  %5466 = fmul fast float %5454, %4338
  %5467 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %5455, float %5466)  ; FMad(a,b,c)
  %5468 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %5456, float %5467)  ; FMad(a,b,c)
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 0
  %5471 = extractvalue %dx.types.CBufRet.f32 %5469, 1
  %5472 = extractvalue %dx.types.CBufRet.f32 %5469, 3
  %5473 = fmul fast float %5472, %5461
  %5474 = fmul fast float %5472, %5465
  %5475 = fadd fast float %5473, %5470
  %5476 = fadd fast float %5474, %5471
  %5477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5478 = extractvalue %dx.types.CBufRet.f32 %5477, 0
  %5479 = extractvalue %dx.types.CBufRet.f32 %5477, 1
  %5480 = fsub fast float %5475, %5478
  %5481 = fsub fast float %5476, %5479
  %5482 = fcmp fast olt float %5480, 0.000000e+00
  %5483 = fcmp fast olt float %5481, 0.000000e+00
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5486 = extractvalue %dx.types.CBufRet.f32 %5484, 1
  %5487 = extractvalue %dx.types.CBufRet.f32 %5484, 2
  %5488 = extractvalue %dx.types.CBufRet.f32 %5484, 3
  %5489 = select i1 %5482, float %5485, float %5487
  %5490 = select i1 %5483, float %5486, float %5488
  %5491 = fmul fast float %5489, %5480
  %5492 = fmul fast float %5490, %5481
  %5493 = call float @dx.op.unary.f32(i32 6, float %5491)  ; FAbs(value)
  %5494 = call float @dx.op.unary.f32(i32 6, float %5492)  ; FAbs(value)
  %5495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.f32 %5495, 0
  %5497 = call float @dx.op.binary.f32(i32 35, float %5493, float %5494)  ; FMax(a,b)
  %5498 = fsub fast float %5496, %5497
  %5499 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5500 = fcmp fast ogt float %5499, 0.000000e+00
  br i1 %5500, label %5501, label %5542, !dx.controlflow.hints !143

; <label>:5501                                    ; preds = %5442
  %5502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5475, float %5476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5503 = extractvalue %dx.types.ResRet.f32 %5502, 1
  %5504 = fcmp fast ogt float %5503, 0.000000e+00
  br i1 %5504, label %5505, label %5537

; <label>:5505                                    ; preds = %5501
  %5506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5475, float %5476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5507 = extractvalue %dx.types.ResRet.f32 %5506, 0
  %5508 = extractvalue %dx.types.ResRet.f32 %5506, 1
  %5509 = extractvalue %dx.types.ResRet.f32 %5506, 2
  %5510 = extractvalue %dx.types.ResRet.f32 %5506, 3
  %5511 = fsub fast float 1.000000e+00, %5457
  %5512 = fsub fast float %5511, %5468
  %5513 = fmul fast float %5512, 0x400921FB60000000
  %5514 = fadd fast float %5513, 0x3FF921FB60000000
  %5515 = call float @dx.op.unary.f32(i32 13, float %5514)  ; Sin(value)
  %5516 = fadd fast float %5515, -1.000000e+00
  %5517 = fmul fast float %5516, 0x3FD45F3060000000
  %5518 = fmul fast float %5512, 0x401921FB60000000
  %5519 = fadd fast float %5518, 0x400921FB60000000
  %5520 = call float @dx.op.unary.f32(i32 13, float %5519)  ; Sin(value)
  %5521 = fadd fast float %5520, 0x3E7777A5C0000000
  %5522 = fmul fast float %5521, 0x3FC45F3060000000
  %5523 = fmul fast float %5512, 0x4022D97C80000000
  %5524 = fadd fast float %5523, 0x4012D97C80000000
  %5525 = call float @dx.op.unary.f32(i32 13, float %5524)  ; Sin(value)
  %5526 = fadd fast float %5525, 1.000000e+00
  %5527 = fmul fast float %5526, 0x3FBB2995E0000000
  %5528 = fmul fast float %5512, 0x402921FB60000000
  %5529 = fadd fast float %5528, 0x401921FB60000000
  %5530 = call float @dx.op.unary.f32(i32 13, float %5529)  ; Sin(value)
  %5531 = fadd fast float %5530, 0xBE8777A5C0000000
  %5532 = fmul fast float %5531, 0x3FB45F3060000000
  %5533 = call float @dx.op.dot4.f32(i32 56, float %5507, float %5508, float %5509, float %5510, float %5517, float %5522, float %5527, float %5532)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5534 = fmul fast float %5533, 0xBFF7154760000000
  %5535 = call float @dx.op.unary.f32(i32 21, float %5534)  ; Exp(value)
  %5536 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  br label %5537

; <label>:5537                                    ; preds = %5505, %5501
  %5538 = phi float [ %5536, %5505 ], [ 1.000000e+00, %5501 ]
  %5539 = fadd fast float %5538, -1.000000e+00
  %5540 = fmul fast float %5539, %5499
  %5541 = fadd fast float %5540, 1.000000e+00
  br label %5542

; <label>:5542                                    ; preds = %5537, %5442
  %5543 = phi float [ %5541, %5537 ], [ 1.000000e+00, %5442 ]
  %5544 = fmul fast float %5543, %5438
  %5545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5546 = extractvalue %dx.types.CBufRet.f32 %5545, 0
  %5547 = extractvalue %dx.types.CBufRet.f32 %5545, 1
  %5548 = extractvalue %dx.types.CBufRet.f32 %5545, 2
  %5549 = fadd fast float %5546, %146
  %5550 = fadd fast float %5547, %147
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 1
  %5553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.f32 %5553, 0
  %5555 = extractvalue %dx.types.CBufRet.f32 %5553, 1
  %5556 = extractvalue %dx.types.CBufRet.f32 %5553, 2
  %5557 = fsub fast float -0.000000e+00, %5549
  %5558 = fsub fast float -0.000000e+00, %5550
  %5559 = fsub fast float %2345, %5548
  %5560 = fadd fast float %5559, %5552
  %5561 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5557, float %5558, float %5560)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5554, float %5555, float %5556)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = fdiv fast float 1.000000e+00, %5562
  %5564 = fmul fast float %5563, %5561
  %5565 = fmul fast float %5554, %5564
  %5566 = fmul fast float %5555, %5564
  %5567 = fadd fast float %5565, %5549
  %5568 = fadd fast float %5566, %5550
  %5569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5570 = extractvalue %dx.types.CBufRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.CBufRet.f32 %5569, 1
  %5572 = fsub fast float %5567, %5570
  %5573 = fsub fast float %5568, %5571
  %5574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.f32 %5574, 2
  %5576 = extractvalue %dx.types.CBufRet.f32 %5574, 3
  %5577 = fmul fast float %5572, %5575
  %5578 = fmul fast float %5573, %5576
  %5579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.i32 %5579, 3
  %5581 = icmp eq i32 %5580, 0
  br i1 %5581, label %5587, label %5582

; <label>:5582                                    ; preds = %5542
  %5583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5577, float %5578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5584 = extractvalue %dx.types.ResRet.f32 %5583, 0
  %5585 = extractvalue %dx.types.ResRet.f32 %5583, 1
  %5586 = extractvalue %dx.types.ResRet.f32 %5583, 2
  br label %5592

; <label>:5587                                    ; preds = %5542
  %5588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5577, float %5578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5589 = extractvalue %dx.types.ResRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.ResRet.f32 %5588, 1
  %5591 = extractvalue %dx.types.ResRet.f32 %5588, 2
  br label %5592

; <label>:5592                                    ; preds = %5587, %5582
  %5593 = phi float [ %5584, %5582 ], [ %5589, %5587 ]
  %5594 = phi float [ %5585, %5582 ], [ %5590, %5587 ]
  %5595 = phi float [ %5586, %5582 ], [ %5591, %5587 ]
  %5596 = extractvalue %dx.types.CBufRet.f32 %5551, 2
  %5597 = fmul fast float %5596, %5593
  %5598 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5599 = fsub fast float %5564, %5598
  %5600 = fsub fast float %5599, %5597
  %5601 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5600)  ; FMax(a,b)
  %5602 = fmul fast float %5601, %5594
  %5603 = call float @dx.op.binary.f32(i32 36, float %5595, float %5602)  ; FMin(a,b)
  %5604 = fmul fast float %5603, 0xBFF7154760000000
  %5605 = call float @dx.op.unary.f32(i32 21, float %5604)  ; Exp(value)
  %5606 = fmul fast float %5544, %5605
  br label %5607

; <label>:5607                                    ; preds = %5592, %5437
  %5608 = phi float [ %5606, %5592 ], [ %5438, %5437 ]
  %5609 = call float @dx.op.binary.f32(i32 36, float %5608, float %5608)  ; FMin(a,b)
  %5610 = call float @dx.op.binary.f32(i32 36, float %5608, float %5609)  ; FMin(a,b)
  %5611 = fcmp fast ogt float %5610, 0.000000e+00
  br i1 %5611, label %5612, label %5995, !dx.controlflow.hints !144

; <label>:5612                                    ; preds = %5607
  %5613 = fmul fast float %5608, %4330
  %5614 = fmul fast float %5608, %4331
  %5615 = fmul fast float %5608, %4332
  %5616 = fsub fast float %148, %2133
  %5617 = fcmp fast ogt float %5616, 0.000000e+00
  %5618 = fmul fast float %4319, 5.120000e+02
  %5619 = fmul fast float %4320, 5.120000e+02
  %5620 = fmul fast float %4321, 5.120000e+02
  %5621 = fadd fast float %5620, %148
  %5622 = fsub fast float %2133, %5621
  %5623 = fmul fast float %5622, 2.000000e+00
  %5624 = fadd fast float %5623, %5621
  %5625 = select i1 %5617, float %5624, float %5621
  %5626 = fsub fast float %5625, %148
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5626, float %5618, float %5619, float %5626)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = call float @dx.op.unary.f32(i32 25, float %5627)  ; Rsqrt(value)
  %5629 = fmul fast float %5628, %5618
  %5630 = fmul fast float %5628, %5619
  %5631 = fmul fast float %5628, %5626
  %5632 = fsub fast float %2133, %148
  %5633 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5632)  ; Dot3(ax,ay,az,bx,by,bz)
  %5634 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5629, float %5630, float %5631)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = fdiv fast float 1.000000e+00, %5634
  %5636 = fmul fast float %5635, %5633
  %5637 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5616, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5638 = fcmp fast ogt float %5637, 0.000000e+00
  %5639 = fcmp fast olt float %5637, 0.000000e+00
  %5640 = zext i1 %5638 to i32
  %5641 = zext i1 %5639 to i32
  %5642 = sub nsw i32 %5640, %5641
  %5643 = sitofp i32 %5642 to float
  %5644 = fsub fast float %5625, %2133
  %5645 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5644, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = fcmp fast ogt float %5645, 0.000000e+00
  %5647 = fcmp fast olt float %5645, 0.000000e+00
  %5648 = zext i1 %5646 to i32
  %5649 = zext i1 %5647 to i32
  %5650 = sub nsw i32 %5648, %5649
  %5651 = sitofp i32 %5650 to float
  %5652 = fcmp fast une float %5643, %5651
  br i1 %5652, label %5653, label %5663

; <label>:5653                                    ; preds = %5612
  %5654 = fmul fast float %5636, %5631
  %5655 = fmul fast float %5636, %5630
  %5656 = fmul fast float %5636, %5629
  %5657 = fmul fast float %5656, %5656
  %5658 = fmul fast float %5655, %5655
  %5659 = fadd fast float %5657, %5658
  %5660 = fmul fast float %5654, %5654
  %5661 = fadd fast float %5659, %5660
  %5662 = call float @dx.op.unary.f32(i32 24, float %5661)  ; Sqrt(value)
  br label %5673

; <label>:5663                                    ; preds = %5612
  %5664 = icmp slt i32 %5642, 0
  br i1 %5664, label %5665, label %5673

; <label>:5665                                    ; preds = %5663
  %5666 = fsub fast float %148, %5625
  %5667 = fmul fast float %5618, %5618
  %5668 = fmul fast float %5619, %5619
  %5669 = fadd fast float %5667, %5668
  %5670 = fmul fast float %5666, %5666
  %5671 = fadd fast float %5669, %5670
  %5672 = call float @dx.op.unary.f32(i32 24, float %5671)  ; Sqrt(value)
  br label %5673

; <label>:5673                                    ; preds = %5665, %5663, %5653
  %5674 = phi float [ %5662, %5653 ], [ %5672, %5665 ], [ 0.000000e+00, %5663 ]
  %5675 = fsub fast float -0.000000e+00, %5674
  %5676 = select i1 %5617, float -0.000000e+00, float %5675
  %5677 = fmul fast float %2134, 0x3FF7154760000000
  %5678 = fmul fast float %5677, %5676
  %5679 = fmul fast float %2135, 0x3FF7154760000000
  %5680 = fmul fast float %5679, %5676
  %5681 = fmul fast float %2136, 0x3FF7154760000000
  %5682 = fmul fast float %5681, %5676
  %5683 = call float @dx.op.unary.f32(i32 21, float %5678)  ; Exp(value)
  %5684 = call float @dx.op.unary.f32(i32 21, float %5680)  ; Exp(value)
  %5685 = call float @dx.op.unary.f32(i32 21, float %5682)  ; Exp(value)
  %5686 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5687 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  %5688 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5689 = fmul fast float %5613, %5686
  %5690 = fmul fast float %5614, %5687
  %5691 = fmul fast float %5615, %5688
  %5692 = fsub fast float %4319, %2333
  %5693 = fsub fast float %4320, %2332
  %5694 = fsub fast float %4321, %2331
  %5695 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %5692, float %5693, float %5694)  ; Dot3(ax,ay,az,bx,by,bz)
  %5696 = call float @dx.op.unary.f32(i32 25, float %5695)  ; Rsqrt(value)
  %5697 = fmul fast float %5696, %5692
  %5698 = fmul fast float %5696, %5693
  %5699 = fmul fast float %5696, %5694
  %5700 = call float @dx.op.dot3.f32(i32 55, float %4319, float %4320, float %4321, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5701 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2329, float %2328, float %5697, float %5698, float %5699)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5703 = fmul fast float %5702, %5702
  %5704 = fmul fast float %5703, %4314
  %5705 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5706 = fmul fast float %5705, %5702
  %5707 = call float @dx.op.dot3.f32(i32 55, float %2340, float %2341, float %2342, float %5697, float %5698, float %5699)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = fmul fast float %5707, %5707
  %5709 = call float @dx.op.unary.f32(i32 6, float %5700)  ; FAbs(value)
  %5710 = fsub fast float 1.000000e+00, %2366
  %5711 = fmul fast float %2348, %2348
  %5712 = fmul fast float %5711, %5710
  %5713 = fadd fast float %5712, %2366
  %5714 = bitcast float %5713 to i32
  %5715 = ashr i32 %5714, 1
  %5716 = add nsw i32 %5715, 532487669
  %5717 = bitcast i32 %5716 to float
  %5718 = fadd fast float %5717, %2348
  %5719 = fmul fast float %2366, %5708
  %5720 = fsub fast float 1.000000e+00, %5708
  %5721 = fadd fast float %5720, %5719
  %5722 = fmul fast float %5709, %5709
  %5723 = fmul fast float %5722, %5710
  %5724 = fadd fast float %5723, %2366
  %5725 = bitcast float %5724 to i32
  %5726 = ashr i32 %5725, 1
  %5727 = add nsw i32 %5726, 532487669
  %5728 = bitcast i32 %5727 to float
  %5729 = fadd fast float %5728, %5709
  %5730 = fmul fast float %5721, %5721
  %5731 = fmul fast float %5730, %5718
  %5732 = fmul fast float %5731, %5729
  %5733 = fdiv fast float 0x3FF0A00000000000, %5732
  %5734 = fmul fast float %5733, %2366
  %5735 = fmul fast float %3657, 0x3FF9999980000000
  %5736 = fsub fast float 5.000000e+00, %5735
  %5737 = call float @dx.op.unary.f32(i32 6, float %5701)  ; FAbs(value)
  %5738 = fsub fast float 1.000000e+00, %5737
  %5739 = fmul fast float %3657, 0x41D9660740000000
  %5740 = fadd fast float %5739, 0xC1EFBF8940000000
  %5741 = bitcast float %5738 to i32
  %5742 = sitofp i32 %5741 to float
  %5743 = fmul fast float %5742, %5736
  %5744 = fadd fast float %5740, %5743
  %5745 = fptosi float %5744 to i32
  %5746 = bitcast i32 %5745 to float
  %5747 = fsub fast float 1.000000e+00, %2334
  %5748 = fsub fast float 1.000000e+00, %2335
  %5749 = fsub fast float 1.000000e+00, %2346
  %5750 = fmul fast float %5746, %5747
  %5751 = fmul fast float %5746, %5748
  %5752 = fmul fast float %5746, %5749
  %5753 = fadd fast float %5750, %2334
  %5754 = fadd fast float %5751, %2335
  %5755 = fadd fast float %5752, %2346
  br i1 %3680, label %5756, label %5779

; <label>:5756                                    ; preds = %5673
  %5757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1679, float %5737, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5758 = extractvalue %dx.types.ResRet.f32 %5757, 0
  %5759 = extractvalue %dx.types.ResRet.f32 %5757, 1
  %5760 = extractvalue %dx.types.ResRet.f32 %5757, 2
  %5761 = fadd fast float %5758, -5.000000e-01
  %5762 = fadd fast float %5759, -5.000000e-01
  %5763 = fadd fast float %5760, -5.000000e-01
  %5764 = fmul fast float %2334, 4.000000e+00
  %5765 = fmul fast float %5764, %5747
  %5766 = fmul fast float %5765, %5761
  %5767 = fmul fast float %2335, 4.000000e+00
  %5768 = fmul fast float %5767, %5748
  %5769 = fmul fast float %5768, %5762
  %5770 = fmul fast float %2346, 4.000000e+00
  %5771 = fmul fast float %5770, %5749
  %5772 = fmul fast float %5771, %5763
  %5773 = fadd fast float %5766, %5753
  %5774 = fadd fast float %5769, %5754
  %5775 = fadd fast float %5772, %5755
  %5776 = call float @dx.op.unary.f32(i32 7, float %5773)  ; Saturate(value)
  %5777 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5778 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  br label %5779

; <label>:5779                                    ; preds = %5756, %5673
  %5780 = phi float [ %5776, %5756 ], [ %5753, %5673 ]
  %5781 = phi float [ %5777, %5756 ], [ %5754, %5673 ]
  %5782 = phi float [ %5778, %5756 ], [ %5755, %5673 ]
  %5783 = fmul fast float %5700, 9.843750e-01
  %5784 = fadd fast float %5783, 7.812500e-03
  %5785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5784, float %3661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5786 = extractvalue %dx.types.ResRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.ResRet.f32 %5785, 1
  %5788 = extractvalue %dx.types.ResRet.f32 %5785, 2
  %5789 = extractvalue %dx.types.ResRet.f32 %5785, 3
  %5790 = fsub fast float %5788, %5786
  %5791 = fsub fast float %5789, %5787
  %5792 = fmul fast float %5790, %3667
  %5793 = fmul fast float %5791, %3667
  %5794 = fadd fast float %5792, %5786
  %5795 = fadd fast float %5793, %5787
  %5796 = fmul fast float %5794, %2334
  %5797 = fmul fast float %5794, %2335
  %5798 = fmul fast float %5794, %2346
  %5799 = fadd fast float %5796, %5795
  %5800 = fadd fast float %5797, %5795
  %5801 = fadd fast float %5798, %5795
  br i1 %3680, label %5802, label %5825

; <label>:5802                                    ; preds = %5779
  %5803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1679, float %5700, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5804 = extractvalue %dx.types.ResRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.ResRet.f32 %5803, 1
  %5806 = extractvalue %dx.types.ResRet.f32 %5803, 2
  %5807 = fadd fast float %5804, -5.000000e-01
  %5808 = fadd fast float %5805, -5.000000e-01
  %5809 = fadd fast float %5806, -5.000000e-01
  %5810 = fmul fast float %2334, 4.000000e+00
  %5811 = fmul fast float %5810, %5747
  %5812 = fmul fast float %5811, %5807
  %5813 = fmul fast float %2335, 4.000000e+00
  %5814 = fmul fast float %5813, %5748
  %5815 = fmul fast float %5814, %5808
  %5816 = fmul fast float %2346, 4.000000e+00
  %5817 = fmul fast float %5816, %5749
  %5818 = fmul fast float %5817, %5809
  %5819 = fadd fast float %5812, %5799
  %5820 = fadd fast float %5815, %5800
  %5821 = fadd fast float %5818, %5801
  %5822 = call float @dx.op.unary.f32(i32 7, float %5819)  ; Saturate(value)
  %5823 = call float @dx.op.unary.f32(i32 7, float %5820)  ; Saturate(value)
  %5824 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  br label %5825

; <label>:5825                                    ; preds = %5802, %5779
  %5826 = phi float [ %5822, %5802 ], [ %5799, %5779 ]
  %5827 = phi float [ %5823, %5802 ], [ %5800, %5779 ]
  %5828 = phi float [ %5824, %5802 ], [ %5801, %5779 ]
  %5829 = call float @dx.op.binary.f32(i32 35, float %5827, float %5828)  ; FMax(a,b)
  %5830 = call float @dx.op.binary.f32(i32 35, float %5826, float %5829)  ; FMax(a,b)
  %5831 = fsub fast float 1.000000e+00, %5830
  %5832 = call float @dx.op.binary.f32(i32 35, float %5709, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5833 = fdiv fast float %1085, %5832
  %5834 = fmul fast float %4227, %5833
  %5835 = fmul fast float %4229, %5833
  %5836 = fmul fast float %4231, %5833
  %5837 = call float @dx.op.unary.f32(i32 21, float %5834)  ; Exp(value)
  %5838 = call float @dx.op.unary.f32(i32 21, float %5835)  ; Exp(value)
  %5839 = call float @dx.op.unary.f32(i32 21, float %5836)  ; Exp(value)
  %5840 = call float @dx.op.unary.f32(i32 7, float %5837)  ; Saturate(value)
  %5841 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  %5842 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  %5843 = select i1 %4224, float %5840, float 0.000000e+00
  %5844 = select i1 %4225, float %5841, float 0.000000e+00
  %5845 = select i1 %4226, float %5842, float 0.000000e+00
  %5846 = fsub fast float -0.000000e+00, %2340
  %5847 = fsub fast float -0.000000e+00, %2341
  %5848 = fsub fast float -0.000000e+00, %2342
  %5849 = call float @dx.op.dot3.f32(i32 55, float %4319, float %4320, float %4321, float %5846, float %5847, float %5848)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = call float @dx.op.unary.f32(i32 7, float %5849)  ; Saturate(value)
  %5851 = fmul fast float %5850, 9.843750e-01
  %5852 = fadd fast float %5851, 7.812500e-03
  %5853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5852, float %3661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5854 = extractvalue %dx.types.ResRet.f32 %5853, 0
  %5855 = extractvalue %dx.types.ResRet.f32 %5853, 1
  %5856 = extractvalue %dx.types.ResRet.f32 %5853, 2
  %5857 = extractvalue %dx.types.ResRet.f32 %5853, 3
  %5858 = fsub fast float %5856, %5854
  %5859 = fsub fast float %5857, %5855
  %5860 = fmul fast float %5858, %3667
  %5861 = fmul fast float %5859, %3667
  %5862 = fadd fast float %5860, %5854
  %5863 = fadd fast float %5861, %5855
  %5864 = fmul fast float %5862, %2334
  %5865 = fmul fast float %5862, %2335
  %5866 = fmul fast float %5862, %2346
  %5867 = fadd fast float %5864, %5863
  %5868 = fadd fast float %5865, %5863
  %5869 = fadd fast float %5866, %5863
  br i1 %3680, label %5870, label %5893

; <label>:5870                                    ; preds = %5825
  %5871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1679, float %5850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5872 = extractvalue %dx.types.ResRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.ResRet.f32 %5871, 1
  %5874 = extractvalue %dx.types.ResRet.f32 %5871, 2
  %5875 = fadd fast float %5872, -5.000000e-01
  %5876 = fadd fast float %5873, -5.000000e-01
  %5877 = fadd fast float %5874, -5.000000e-01
  %5878 = fmul fast float %2334, 4.000000e+00
  %5879 = fmul fast float %5878, %5747
  %5880 = fmul fast float %5879, %5875
  %5881 = fmul fast float %2335, 4.000000e+00
  %5882 = fmul fast float %5881, %5748
  %5883 = fmul fast float %5882, %5876
  %5884 = fmul fast float %2346, 4.000000e+00
  %5885 = fmul fast float %5884, %5749
  %5886 = fmul fast float %5885, %5877
  %5887 = fadd fast float %5880, %5867
  %5888 = fadd fast float %5883, %5868
  %5889 = fadd fast float %5886, %5869
  %5890 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5891 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5892 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  br label %5893

; <label>:5893                                    ; preds = %5870, %5825
  %5894 = phi float [ %5890, %5870 ], [ %5867, %5825 ]
  %5895 = phi float [ %5891, %5870 ], [ %5868, %5825 ]
  %5896 = phi float [ %5892, %5870 ], [ %5869, %5825 ]
  %5897 = call float @dx.op.binary.f32(i32 35, float %5895, float %5896)  ; FMax(a,b)
  %5898 = call float @dx.op.binary.f32(i32 35, float %5894, float %5897)  ; FMax(a,b)
  %5899 = fsub fast float 1.000000e+00, %5898
  %5900 = fmul fast float %2363, %4291
  %5901 = fadd fast float %4293, %5900
  %5902 = call float @dx.op.unary.f32(i32 7, float %5901)  ; Saturate(value)
  %5903 = fsub fast float %4319, %2354
  %5904 = fsub fast float %4320, %2355
  %5905 = fsub fast float %4321, %2356
  %5906 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5904, float %5905, float %5903, float %5904, float %5905)  ; Dot3(ax,ay,az,bx,by,bz)
  %5907 = call float @dx.op.unary.f32(i32 25, float %5906)  ; Rsqrt(value)
  %5908 = fmul fast float %5907, %5903
  %5909 = fmul fast float %5907, %5904
  %5910 = fmul fast float %5907, %5905
  %5911 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %5848, float %5908, float %5909, float %5910)  ; Dot3(ax,ay,az,bx,by,bz)
  %5912 = fmul fast float %5911, %5911
  %5913 = call float @dx.op.unary.f32(i32 6, float %5850)  ; FAbs(value)
  %5914 = call float @dx.op.binary.f32(i32 35, float %5902, float 0x3F847AE140000000)  ; FMax(a,b)
  %5915 = fmul fast float %5914, %5914
  %5916 = fmul fast float %5915, %5915
  %5917 = fsub fast float 1.000000e+00, %5916
  %5918 = fmul fast float %5711, %5917
  %5919 = fadd fast float %5918, %5916
  %5920 = bitcast float %5919 to i32
  %5921 = ashr i32 %5920, 1
  %5922 = add nsw i32 %5921, 532487669
  %5923 = bitcast i32 %5922 to float
  %5924 = fadd fast float %5923, %2348
  %5925 = fmul fast float %5916, %5912
  %5926 = fsub fast float 1.000000e+00, %5912
  %5927 = fadd fast float %5926, %5925
  %5928 = fmul fast float %5913, %5913
  %5929 = fmul fast float %5928, %5917
  %5930 = fadd fast float %5929, %5916
  %5931 = bitcast float %5930 to i32
  %5932 = ashr i32 %5931, 1
  %5933 = add nsw i32 %5932, 532487669
  %5934 = bitcast i32 %5933 to float
  %5935 = fadd fast float %5934, %5913
  %5936 = fmul fast float %5927, %5927
  %5937 = fmul fast float %5936, %5924
  %5938 = fmul fast float %5937, %5935
  %5939 = fdiv fast float 0x3FF0A00000000000, %5938
  %5940 = fmul fast float %5939, %5916
  %5941 = fmul fast float %5850, %5843
  %5942 = fmul fast float %5850, %5844
  %5943 = fmul fast float %5850, %5845
  %5944 = fmul fast float %5941, %5899
  %5945 = fmul fast float %5944, %5940
  %5946 = fmul fast float %5942, %5899
  %5947 = fmul fast float %5946, %5940
  %5948 = fmul fast float %5943, %5899
  %5949 = fmul fast float %5948, %5940
  %5950 = fmul fast float %5780, %5734
  %5951 = fmul fast float %5781, %5734
  %5952 = fmul fast float %5782, %5734
  %5953 = fsub fast float 1.000000e+00, %5701
  %5954 = bitcast float %5953 to i32
  %5955 = sitofp i32 %5954 to float
  %5956 = fmul fast float %5955, 5.000000e+00
  %5957 = fadd fast float %5956, 0xC1EFBF8940000000
  %5958 = fptosi float %5957 to i32
  %5959 = bitcast i32 %5958 to float
  %5960 = fmul fast float %5959, %1678
  %5961 = fmul fast float %5831, %5960
  %5962 = fmul fast float %5961, %4219
  %5963 = fmul fast float %5961, %4220
  %5964 = fmul fast float %5961, %4221
  %5965 = fadd fast float %5962, %5950
  %5966 = fadd fast float %5963, %5951
  %5967 = fadd fast float %5964, %5952
  %5968 = fmul fast float %5965, %5706
  %5969 = fmul fast float %5966, %5706
  %5970 = fmul fast float %5967, %5706
  %5971 = fmul fast float %5706, %5689
  %5972 = fmul fast float %5971, %5831
  %5973 = fmul fast float %5706, %5690
  %5974 = fmul fast float %5973, %5831
  %5975 = fmul fast float %5706, %5691
  %5976 = fmul fast float %5975, %5831
  %5977 = fadd fast float %5968, %5945
  %5978 = fadd fast float %5969, %5947
  %5979 = fadd fast float %5970, %5949
  %5980 = fmul fast float %5977, %5689
  %5981 = fmul fast float %5978, %5690
  %5982 = fmul fast float %5979, %5691
  %5983 = fadd fast float %5972, %4308
  %5984 = fmul fast float %5983, %1702
  %5985 = fadd fast float %5974, %4310
  %5986 = fmul fast float %5985, %1702
  %5987 = fadd fast float %5976, %4312
  %5988 = fmul fast float %5987, %1702
  %5989 = fadd fast float %5980, %4272
  %5990 = fmul fast float %5989, %1702
  %5991 = fadd fast float %5981, %4275
  %5992 = fmul fast float %5991, %1702
  %5993 = fadd fast float %5982, %4278
  %5994 = fmul fast float %5993, %1702
  br label %5995

; <label>:5995                                    ; preds = %5893, %5607, %4202
  %5996 = phi float [ %4273, %4202 ], [ %4273, %5607 ], [ %5990, %5893 ]
  %5997 = phi float [ %4276, %4202 ], [ %4276, %5607 ], [ %5992, %5893 ]
  %5998 = phi float [ %4279, %4202 ], [ %4279, %5607 ], [ %5994, %5893 ]
  %5999 = phi float [ %4309, %4202 ], [ %4309, %5607 ], [ %5984, %5893 ]
  %6000 = phi float [ %4311, %4202 ], [ %4311, %5607 ], [ %5986, %5893 ]
  %6001 = phi float [ %4313, %4202 ], [ %4313, %5607 ], [ %5988, %5893 ]
  %6002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6003 = extractvalue %dx.types.CBufRet.i32 %6002, 0
  %6004 = icmp eq i32 %6003, 0
  br i1 %6004, label %6822, label %6005

; <label>:6005                                    ; preds = %5995
  %6006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6007 = extractvalue %dx.types.CBufRet.f32 %6006, 2
  %6008 = extractvalue %dx.types.CBufRet.f32 %6006, 3
  %6009 = fmul fast float %6007, %99
  %6010 = fmul fast float %6008, %100
  %6011 = fptoui float %6009 to i32
  %6012 = fptoui float %6010 to i32
  %6013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.f32 %6013, 0
  %6015 = extractvalue %dx.types.CBufRet.f32 %6013, 2
  %6016 = extractvalue %dx.types.CBufRet.f32 %6013, 3
  %6017 = fadd fast float %87, -4.000000e+00
  %6018 = call float @dx.op.binary.f32(i32 35, float %6017, float 0.000000e+00)  ; FMax(a,b)
  %6019 = fadd fast float %6018, %6014
  %6020 = fmul fast float %6019, %6015
  %6021 = call float @dx.op.unary.f32(i32 23, float %6020)  ; Log(value)
  %6022 = fmul fast float %6021, %6016
  %6023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6024 = extractvalue %dx.types.CBufRet.f32 %6023, 2
  %6025 = fmul fast float %6022, %6024
  %6026 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6027 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.i32 %6027, 1
  %6029 = add i32 %6028, -1
  %6030 = uitofp i32 %6028 to float
  %6031 = fmul fast float %6030, %6026
  %6032 = fptoui float %6031 to i32
  %6033 = call i32 @dx.op.binary.i32(i32 40, i32 %6032, i32 %6029)  ; UMin(a,b)
  %6034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6035 = extractvalue %dx.types.CBufRet.i32 %6034, 2
  %6036 = extractvalue %dx.types.CBufRet.i32 %6034, 3
  %6037 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6012, i32 %6035, i32 %6011)  ; UMad(a,b,c)
  %6038 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6033, i32 %6036, i32 %6037)  ; UMad(a,b,c)
  %6039 = add nsw i32 %6003, -1
  %6040 = call i32 @dx.op.binary.i32(i32 37, i32 %6039, i32 0)  ; IMax(a,b)
  %6041 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %6042 = fptoui float %6041 to i32
  %6043 = lshr i32 %6042, 5
  %6044 = call i32 @dx.op.binary.i32(i32 40, i32 %6043, i32 8191)  ; UMin(a,b)
  %6045 = shl i32 %6044, 2
  %6046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6045, i32 undef)  ; BufferLoad(srv,index,wot)
  %6047 = extractvalue %dx.types.ResRet.i32 %6046, 0
  %6048 = lshr i32 %6047, 16
  %6049 = and i32 %6047, 65535
  %6050 = lshr i32 %6047, 21
  %6051 = lshr i32 %6049, 5
  %6052 = call i32 @dx.op.binary.i32(i32 40, i32 %6051, i32 %6040)  ; UMin(a,b)
  %6053 = icmp ugt i32 %6050, %6052
  br i1 %6053, label %6822, label %6054

; <label>:6054                                    ; preds = %6005
  br label %6055

; <label>:6055                                    ; preds = %6812, %6054
  %6056 = phi i32 [ %6819, %6812 ], [ %6050, %6054 ]
  %6057 = phi float [ %6813, %6812 ], [ %5996, %6054 ]
  %6058 = phi float [ %6814, %6812 ], [ %5997, %6054 ]
  %6059 = phi float [ %6815, %6812 ], [ %5998, %6054 ]
  %6060 = phi float [ %6816, %6812 ], [ %5999, %6054 ]
  %6061 = phi float [ %6817, %6812 ], [ %6000, %6054 ]
  %6062 = phi float [ %6818, %6812 ], [ %6001, %6054 ]
  %6063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.i32 %6063, 0
  %6065 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6038, i32 %6064, i32 %6056)  ; UMad(a,b,c)
  %6066 = shl i32 %6065, 2
  %6067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6066, i32 undef)  ; BufferLoad(srv,index,wot)
  %6068 = extractvalue %dx.types.ResRet.i32 %6067, 0
  %6069 = shl i32 %6056, 5
  %6070 = sub nsw i32 %6048, %6069
  %6071 = call i32 @dx.op.binary.i32(i32 37, i32 %6070, i32 0)  ; IMax(a,b)
  %6072 = call i32 @dx.op.binary.i32(i32 38, i32 %6071, i32 31)  ; IMin(a,b)
  %6073 = sub nsw i32 1, %6048
  %6074 = add nsw i32 %6073, %6049
  %6075 = call i32 @dx.op.binary.i32(i32 37, i32 %6074, i32 0)  ; IMax(a,b)
  %6076 = call i32 @dx.op.binary.i32(i32 38, i32 %6075, i32 32)  ; IMin(a,b)
  %6077 = and i32 %6076, 31
  %6078 = shl i32 -1, %6077
  %6079 = xor i32 %6078, -1
  %6080 = and i32 %6072, 31
  %6081 = shl i32 %6079, %6080
  %6082 = icmp eq i32 %6076, 32
  %6083 = select i1 %6082, i32 -1, i32 %6081
  %6084 = and i32 %6083, %6068
  %6085 = icmp eq i32 %6084, 0
  br i1 %6085, label %6812, label %6086

; <label>:6086                                    ; preds = %6055
  br label %6087

; <label>:6087                                    ; preds = %6222, %6086
  %6088 = phi i32 [ %6099, %6222 ], [ %6084, %6086 ]
  %6089 = phi float [ %6223, %6222 ], [ %6057, %6086 ]
  %6090 = phi float [ %6224, %6222 ], [ %6058, %6086 ]
  %6091 = phi float [ %6225, %6222 ], [ %6059, %6086 ]
  %6092 = phi float [ %6226, %6222 ], [ %6060, %6086 ]
  %6093 = phi float [ %6227, %6222 ], [ %6061, %6086 ]
  %6094 = phi float [ %6228, %6222 ], [ %6062, %6086 ]
  %6095 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6088)  ; FirstbitLo(value)
  %6096 = add i32 %6095, %6069
  %6097 = and i32 %6095, 31
  %6098 = shl i32 1, %6097
  %6099 = xor i32 %6098, %6088
  %6100 = mul i32 %6096, 112
  %6101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6100, i32 undef)  ; BufferLoad(srv,index,wot)
  %6102 = extractvalue %dx.types.ResRet.f32 %6101, 0
  %6103 = extractvalue %dx.types.ResRet.f32 %6101, 1
  %6104 = extractvalue %dx.types.ResRet.f32 %6101, 2
  %6105 = or i32 %6100, 12
  %6106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6105, i32 undef)  ; BufferLoad(srv,index,wot)
  %6107 = extractvalue %dx.types.ResRet.f32 %6106, 0
  %6108 = add i32 %6100, 16
  %6109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6108, i32 undef)  ; BufferLoad(srv,index,wot)
  %6110 = extractvalue %dx.types.ResRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.ResRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.ResRet.f32 %6109, 2
  %6113 = add i32 %6100, 28
  %6114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6113, i32 undef)  ; BufferLoad(srv,index,wot)
  %6115 = extractvalue %dx.types.ResRet.i32 %6114, 0
  %6116 = add i32 %6100, 44
  %6117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6118 = extractvalue %dx.types.ResRet.f32 %6117, 0
  %6119 = add i32 %6100, 48
  %6120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6119, i32 undef)  ; BufferLoad(srv,index,wot)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.ResRet.f32 %6120, 2
  %6124 = extractvalue %dx.types.ResRet.f32 %6120, 3
  %6125 = add i32 %6100, 64
  %6126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6125, i32 undef)  ; BufferLoad(srv,index,wot)
  %6127 = extractvalue %dx.types.ResRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.ResRet.f32 %6126, 1
  %6129 = extractvalue %dx.types.ResRet.f32 %6126, 2
  %6130 = extractvalue %dx.types.ResRet.f32 %6126, 3
  %6131 = add i32 %6100, 80
  %6132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6131, i32 undef)  ; BufferLoad(srv,index,wot)
  %6133 = extractvalue %dx.types.ResRet.f32 %6132, 1
  %6134 = extractvalue %dx.types.ResRet.f32 %6132, 2
  %6135 = add i32 %6100, 92
  %6136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6135, i32 undef)  ; BufferLoad(srv,index,wot)
  %6137 = extractvalue %dx.types.ResRet.i32 %6136, 0
  %6138 = call float @dx.op.dot3.f32(i32 55, float %6102, float %6103, float %6104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = select i1 %237, float %6133, float %6102
  %6140 = select i1 %237, float %6138, float %6103
  %6141 = select i1 %237, float %6134, float %6104
  %6142 = and i32 %6137, 65535
  %6143 = uitofp i32 %6142 to float
  %6144 = lshr i32 %6137, 16
  %6145 = uitofp i32 %6144 to float
  %6146 = and i32 %6115, 65535
  %6147 = and i32 %6115, 50331648
  %6148 = icmp slt i32 %6115, 0
  %6149 = icmp eq i32 %6147, 33554432
  %6150 = fsub fast float %6121, %146
  %6151 = fsub fast float %6122, %147
  %6152 = fsub fast float %6123, %148
  %6153 = call float @dx.op.dot3.f32(i32 55, float %6150, float %6151, float %6152, float %6150, float %6151, float %6152)  ; Dot3(ax,ay,az,bx,by,bz)
  %6154 = call float @dx.op.unary.f32(i32 24, float %6153)  ; Sqrt(value)
  %6155 = fdiv fast float 1.000000e+00, %6154
  %6156 = fmul fast float %6155, %6150
  %6157 = fmul fast float %6155, %6151
  %6158 = fmul fast float %6155, %6152
  %6159 = fadd fast float %6154, %6107
  %6160 = fdiv fast float 1.000000e+00, %6159
  %6161 = fmul float %6118, %6160
  %6162 = fmul float %6161, %6161
  %6163 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  br i1 %6149, label %6164, label %6185

; <label>:6164                                    ; preds = %6087
  %6165 = fmul fast float %6129, %6110
  %6166 = fmul fast float %6129, %6111
  %6167 = fmul fast float %6129, %6112
  %6168 = fadd fast float %6150, %6165
  %6169 = fadd fast float %6151, %6166
  %6170 = fadd fast float %6152, %6167
  %6171 = call float @dx.op.dot3.f32(i32 55, float %6168, float %6169, float %6170, float %6168, float %6169, float %6170)  ; Dot3(ax,ay,az,bx,by,bz)
  %6172 = call float @dx.op.unary.f32(i32 25, float %6171)  ; Rsqrt(value)
  %6173 = fmul fast float %6172, %6168
  %6174 = fmul fast float %6172, %6169
  %6175 = fmul fast float %6172, %6170
  %6176 = fsub fast float %146, %6121
  %6177 = fsub fast float %147, %6122
  %6178 = fsub fast float %148, %6123
  %6179 = fsub fast float -0.000000e+00, %6176
  %6180 = fsub fast float -0.000000e+00, %6177
  %6181 = fsub fast float -0.000000e+00, %6178
  %6182 = call float @dx.op.dot3.f32(i32 55, float %6179, float %6180, float %6181, float %6110, float %6111, float %6112)  ; Dot3(ax,ay,az,bx,by,bz)
  %6183 = fcmp fast ogt float %6182, 0.000000e+00
  %6184 = uitofp i1 %6183 to float
  br label %6185

; <label>:6185                                    ; preds = %6164, %6087
  %6186 = phi float [ %6184, %6164 ], [ 1.000000e+00, %6087 ]
  %6187 = phi float [ %6173, %6164 ], [ %6156, %6087 ]
  %6188 = phi float [ %6174, %6164 ], [ %6157, %6087 ]
  %6189 = phi float [ %6175, %6164 ], [ %6158, %6087 ]
  %6190 = call float @dx.op.dot3.f32(i32 55, float %6110, float %6111, float %6112, float %6187, float %6188, float %6189)  ; Dot3(ax,ay,az,bx,by,bz)
  %6191 = fmul fast float %6190, %6190
  %6192 = call float @dx.op.unary.f32(i32 7, float %6191)  ; Saturate(value)
  %6193 = fsub fast float 1.000000e+00, %6192
  %6194 = fmul fast float %6193, 5.000000e-01
  %6195 = fcmp fast ogt float %6190, 0.000000e+00
  %6196 = fsub fast float 1.000000e+00, %6194
  %6197 = select i1 %6195, float %6194, float %6196
  %6198 = fmul fast float %6197, %6145
  %6199 = fadd fast float %6198, %6143
  %6200 = fmul fast float %6199, 0x3EF0001000000000
  %6201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %6200, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  %6203 = fmul fast float %6190, %6127
  %6204 = fadd fast float %6203, %6128
  %6205 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  %6206 = select i1 %6149, float 1.000000e+00, float %6205
  %6207 = select i1 %6149, float %6205, float 1.000000e+00
  %6208 = fmul fast float %6154, %6124
  %6209 = fsub fast float 1.000000e+00, %6208
  %6210 = fmul fast float %6209, %6130
  %6211 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6212 = fmul fast float %6211, %6207
  %6213 = fmul fast float %6212, 2.000000e+00
  %6214 = fsub fast float 3.000000e+00, %6213
  %6215 = fmul fast float %6202, %6186
  %6216 = fmul fast float %6212, %6212
  %6217 = fmul fast float %6216, %6215
  %6218 = fmul fast float %6217, %6214
  %6219 = call float @dx.op.binary.f32(i32 36, float %6218, float %6218)  ; FMin(a,b)
  %6220 = call float @dx.op.binary.f32(i32 36, float %6218, float %6219)  ; FMin(a,b)
  %6221 = fcmp fast ogt float %6220, 0.000000e+00
  br i1 %6221, label %6230, label %6222, !dx.controlflow.hints !145

; <label>:6222                                    ; preds = %6765, %6376, %6185
  %6223 = phi float [ %6089, %6376 ], [ %6089, %6185 ], [ %6808, %6765 ]
  %6224 = phi float [ %6090, %6376 ], [ %6090, %6185 ], [ %6809, %6765 ]
  %6225 = phi float [ %6091, %6376 ], [ %6091, %6185 ], [ %6810, %6765 ]
  %6226 = phi float [ %6092, %6376 ], [ %6092, %6185 ], [ %6802, %6765 ]
  %6227 = phi float [ %6093, %6376 ], [ %6093, %6185 ], [ %6803, %6765 ]
  %6228 = phi float [ %6094, %6376 ], [ %6094, %6185 ], [ %6804, %6765 ]
  %6229 = icmp eq i32 %6088, %6098
  br i1 %6229, label %6811, label %6087

; <label>:6230                                    ; preds = %6185
  %6231 = icmp eq i32 %6146, 255
  br i1 %6231, label %6376, label %6232, !dx.controlflow.hints !146

; <label>:6232                                    ; preds = %6230
  %6233 = mul nuw nsw i32 %6146, 176
  %6234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6233, i32 undef)  ; BufferLoad(srv,index,wot)
  %6235 = extractvalue %dx.types.ResRet.f32 %6234, 0
  %6236 = extractvalue %dx.types.ResRet.f32 %6234, 1
  %6237 = extractvalue %dx.types.ResRet.f32 %6234, 2
  %6238 = extractvalue %dx.types.ResRet.f32 %6234, 3
  %6239 = add nuw nsw i32 %6233, 16
  %6240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6239, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.f32 %6240, 0
  %6242 = extractvalue %dx.types.ResRet.f32 %6240, 1
  %6243 = add nuw nsw i32 %6233, 32
  %6244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6243, i32 undef)  ; BufferLoad(srv,index,wot)
  %6245 = extractvalue %dx.types.ResRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.ResRet.f32 %6244, 1
  %6247 = extractvalue %dx.types.ResRet.f32 %6244, 2
  %6248 = add nuw nsw i32 %6233, 48
  %6249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6248, i32 undef)  ; BufferLoad(srv,index,wot)
  %6250 = extractvalue %dx.types.ResRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.ResRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.ResRet.f32 %6249, 2
  %6253 = extractvalue %dx.types.ResRet.f32 %6249, 3
  %6254 = add nuw nsw i32 %6233, 64
  %6255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6254, i32 undef)  ; BufferLoad(srv,index,wot)
  %6256 = extractvalue %dx.types.ResRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.ResRet.f32 %6255, 1
  %6258 = extractvalue %dx.types.ResRet.f32 %6255, 2
  %6259 = extractvalue %dx.types.ResRet.f32 %6255, 3
  %6260 = add nuw nsw i32 %6233, 80
  %6261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6260, i32 undef)  ; BufferLoad(srv,index,wot)
  %6262 = extractvalue %dx.types.ResRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.ResRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.ResRet.f32 %6261, 2
  %6265 = extractvalue %dx.types.ResRet.f32 %6261, 3
  %6266 = add nuw nsw i32 %6233, 96
  %6267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6266, i32 undef)  ; BufferLoad(srv,index,wot)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.ResRet.f32 %6267, 3
  %6272 = bitcast float %6242 to i32
  %6273 = fmul fast float %6247, %76
  %6274 = fmul fast float %6247, %77
  %6275 = fmul fast float %6247, %78
  %6276 = fadd fast float %6273, %146
  %6277 = fadd fast float %6274, %147
  %6278 = fadd fast float %6275, %148
  %6279 = fmul fast float %6276, %6250
  %6280 = call float @dx.op.tertiary.f32(i32 46, float %6277, float %6256, float %6279)  ; FMad(a,b,c)
  %6281 = call float @dx.op.tertiary.f32(i32 46, float %6278, float %6262, float %6280)  ; FMad(a,b,c)
  %6282 = fadd fast float %6281, %6268
  %6283 = fmul fast float %6276, %6251
  %6284 = call float @dx.op.tertiary.f32(i32 46, float %6277, float %6257, float %6283)  ; FMad(a,b,c)
  %6285 = call float @dx.op.tertiary.f32(i32 46, float %6278, float %6263, float %6284)  ; FMad(a,b,c)
  %6286 = fadd fast float %6285, %6269
  %6287 = fmul fast float %6276, %6252
  %6288 = call float @dx.op.tertiary.f32(i32 46, float %6277, float %6258, float %6287)  ; FMad(a,b,c)
  %6289 = call float @dx.op.tertiary.f32(i32 46, float %6278, float %6264, float %6288)  ; FMad(a,b,c)
  %6290 = fadd fast float %6289, %6270
  %6291 = fmul fast float %6276, %6253
  %6292 = call float @dx.op.tertiary.f32(i32 46, float %6277, float %6259, float %6291)  ; FMad(a,b,c)
  %6293 = call float @dx.op.tertiary.f32(i32 46, float %6278, float %6265, float %6292)  ; FMad(a,b,c)
  %6294 = fadd fast float %6293, %6271
  %6295 = fdiv fast float %6282, %6294
  %6296 = fdiv fast float %6286, %6294
  %6297 = fdiv fast float %6290, %6294
  %6298 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6297)  ; FMax(a,b)
  %6299 = fmul fast float %248, 0x401921FB60000000
  %6300 = call float @dx.op.unary.f32(i32 13, float %6299)  ; Sin(value)
  %6301 = call float @dx.op.unary.f32(i32 12, float %6299)  ; Cos(value)
  %6302 = fmul fast float %6301, %6246
  %6303 = call float @dx.op.tertiary.f32(i32 46, float %6300, float %6246, float 0.000000e+00)  ; FMad(a,b,c)
  %6304 = fmul fast float %6246, %6300
  %6305 = fsub fast float -0.000000e+00, %6304
  %6306 = call float @dx.op.tertiary.f32(i32 46, float %6301, float %6246, float 0.000000e+00)  ; FMad(a,b,c)
  br label %6307

; <label>:6307                                    ; preds = %6307, %6232
  %6308 = phi float [ 0.000000e+00, %6232 ], [ %6340, %6307 ]
  %6309 = phi float [ 0.000000e+00, %6232 ], [ %6342, %6307 ]
  %6310 = phi i32 [ 0, %6232 ], [ %6343, %6307 ]
  %6311 = mul i32 %6310, 2
  %6312 = add i32 0, %6311
  %6313 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6312
  %6314 = load float, float* %6313, align 4
  %6315 = mul i32 %6310, 2
  %6316 = add i32 1, %6315
  %6317 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6316
  %6318 = load float, float* %6317, align 4
  %6319 = fmul fast float %6302, %6314
  %6320 = call float @dx.op.tertiary.f32(i32 46, float %6318, float %6305, float %6319)  ; FMad(a,b,c)
  %6321 = fmul fast float %6314, %6303
  %6322 = call float @dx.op.tertiary.f32(i32 46, float %6318, float %6306, float %6321)  ; FMad(a,b,c)
  %6323 = fadd fast float %6320, %6295
  %6324 = fadd fast float %6322, %6296
  %6325 = fmul fast float %6323, %6241
  %6326 = fmul fast float %6324, %6241
  %6327 = call float @dx.op.binary.f32(i32 35, float %6325, float %6237)  ; FMax(a,b)
  %6328 = call float @dx.op.binary.f32(i32 35, float %6326, float %6237)  ; FMax(a,b)
  %6329 = call float @dx.op.binary.f32(i32 36, float %6327, float %6238)  ; FMin(a,b)
  %6330 = call float @dx.op.binary.f32(i32 36, float %6328, float %6238)  ; FMin(a,b)
  %6331 = fadd fast float %6329, %6235
  %6332 = fadd fast float %6330, %6236
  %6333 = uitofp i32 %6272 to float
  %6334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %6331, float %6332, float %6333, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6335 = extractvalue %dx.types.ResRet.f32 %6334, 0
  %6336 = fsub fast float %6335, %6298
  %6337 = fsub fast float %6336, %6245
  %6338 = fcmp fast ogt float %6337, 0.000000e+00
  %6339 = select i1 %6338, float 1.000000e+00, float 0.000000e+00
  %6340 = fadd fast float %6339, %6308
  %6341 = select i1 %6338, float %6337, float 0.000000e+00
  %6342 = fadd fast float %6341, %6309
  %6343 = add nuw nsw i32 %6310, 1
  %6344 = icmp eq i32 %6343, 8
  br i1 %6344, label %6345, label %6307

; <label>:6345                                    ; preds = %6307
  %6346 = fdiv fast float 1.000000e+00, %6340
  %6347 = fmul fast float %6346, %6342
  %6348 = fdiv fast float 1.000000e+00, %6298
  %6349 = fmul fast float %6347, %6348
  %6350 = call float @dx.op.unary.f32(i32 7, float %6349)  ; Saturate(value)
  %6351 = call float @dx.op.binary.f32(i32 35, float %6350, float 0.000000e+00)  ; FMax(a,b)
  %6352 = fmul fast float %6340, 1.250000e-01
  %6353 = call float @dx.op.unary.f32(i32 7, float %6352)  ; Saturate(value)
  %6354 = fmul fast float %6353, 2.000000e+00
  %6355 = fadd fast float %6354, -1.000000e+00
  %6356 = fcmp fast ogt float %6355, 0.000000e+00
  %6357 = fcmp fast olt float %6355, 0.000000e+00
  %6358 = zext i1 %6356 to i32
  %6359 = zext i1 %6357 to i32
  %6360 = sub nsw i32 %6358, %6359
  %6361 = sitofp i32 %6360 to float
  %6362 = fmul fast float %6361, %6355
  %6363 = fsub fast float 1.000000e+00, %6362
  %6364 = fmul fast float %6363, %6363
  %6365 = fmul fast float %6364, %6363
  %6366 = fsub fast float %6363, %6365
  %6367 = fmul fast float %6366, %6351
  %6368 = fsub fast float 1.000000e+00, %6365
  %6369 = fsub fast float %6368, %6367
  %6370 = fmul fast float %6361, 5.000000e-01
  %6371 = fmul fast float %6370, %6369
  %6372 = fsub fast float -5.000000e-01, %6371
  %6373 = fmul fast float %6372, %6206
  %6374 = fadd fast float %6373, 1.000000e+00
  %6375 = fmul fast float %6374, %6218
  br label %6376

; <label>:6376                                    ; preds = %6345, %6230
  %6377 = phi float [ %6375, %6345 ], [ %6218, %6230 ]
  %6378 = call float @dx.op.binary.f32(i32 36, float %6377, float %6377)  ; FMin(a,b)
  %6379 = call float @dx.op.binary.f32(i32 36, float %6377, float %6378)  ; FMin(a,b)
  %6380 = fcmp fast ogt float %6379, 0.000000e+00
  br i1 %6380, label %6381, label %6222, !dx.controlflow.hints !147

; <label>:6381                                    ; preds = %6376
  %6382 = fmul fast float %6377, %6139
  %6383 = fmul fast float %6377, %6140
  %6384 = fmul fast float %6377, %6141
  %6385 = fsub fast float %6123, %2133
  %6386 = fcmp fast ogt float %6385, 0.000000e+00
  %6387 = fsub fast float %148, %2133
  %6388 = fcmp fast ogt float %6387, 0.000000e+00
  %6389 = xor i1 %6388, %6386
  %6390 = fsub fast float %2133, %6123
  %6391 = fmul fast float %6390, 2.000000e+00
  %6392 = fadd fast float %6391, %6123
  %6393 = select i1 %6389, float %6123, float %6392
  %6394 = fsub fast float %6393, %148
  %6395 = call float @dx.op.dot3.f32(i32 55, float %6150, float %6151, float %6394, float %6150, float %6151, float %6394)  ; Dot3(ax,ay,az,bx,by,bz)
  %6396 = call float @dx.op.unary.f32(i32 25, float %6395)  ; Rsqrt(value)
  %6397 = fmul fast float %6396, %6150
  %6398 = fmul fast float %6396, %6151
  %6399 = fmul fast float %6396, %6394
  %6400 = fsub fast float %2133, %148
  %6401 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6400)  ; Dot3(ax,ay,az,bx,by,bz)
  %6402 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6397, float %6398, float %6399)  ; Dot3(ax,ay,az,bx,by,bz)
  %6403 = fdiv fast float 1.000000e+00, %6402
  %6404 = fmul fast float %6403, %6401
  %6405 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6387, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6406 = fcmp fast ogt float %6405, 0.000000e+00
  %6407 = fcmp fast olt float %6405, 0.000000e+00
  %6408 = zext i1 %6406 to i32
  %6409 = zext i1 %6407 to i32
  %6410 = sub nsw i32 %6408, %6409
  %6411 = sitofp i32 %6410 to float
  %6412 = fsub fast float %6393, %2133
  %6413 = call float @dx.op.dot3.f32(i32 55, float %6150, float %6151, float %6412, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6414 = fcmp fast ogt float %6413, 0.000000e+00
  %6415 = fcmp fast olt float %6413, 0.000000e+00
  %6416 = zext i1 %6414 to i32
  %6417 = zext i1 %6415 to i32
  %6418 = sub nsw i32 %6416, %6417
  %6419 = sitofp i32 %6418 to float
  %6420 = fcmp fast une float %6411, %6419
  br i1 %6420, label %6421, label %6431

; <label>:6421                                    ; preds = %6381
  %6422 = fmul fast float %6404, %6399
  %6423 = fmul fast float %6404, %6398
  %6424 = fmul fast float %6404, %6397
  %6425 = fmul fast float %6424, %6424
  %6426 = fmul fast float %6423, %6423
  %6427 = fadd fast float %6425, %6426
  %6428 = fmul fast float %6422, %6422
  %6429 = fadd fast float %6427, %6428
  %6430 = call float @dx.op.unary.f32(i32 24, float %6429)  ; Sqrt(value)
  br label %6443

; <label>:6431                                    ; preds = %6381
  %6432 = icmp slt i32 %6410, 0
  br i1 %6432, label %6433, label %6443

; <label>:6433                                    ; preds = %6431
  %6434 = fsub fast float %146, %6121
  %6435 = fsub fast float %147, %6122
  %6436 = fsub fast float %148, %6393
  %6437 = fmul fast float %6434, %6434
  %6438 = fmul fast float %6435, %6435
  %6439 = fadd fast float %6437, %6438
  %6440 = fmul fast float %6436, %6436
  %6441 = fadd fast float %6439, %6440
  %6442 = call float @dx.op.unary.f32(i32 24, float %6441)  ; Sqrt(value)
  br label %6443

; <label>:6443                                    ; preds = %6433, %6431, %6421
  %6444 = phi float [ %6430, %6421 ], [ %6442, %6433 ], [ 0.000000e+00, %6431 ]
  %6445 = and i1 %6388, %6386
  %6446 = fsub fast float -0.000000e+00, %6444
  %6447 = select i1 %6445, float -0.000000e+00, float %6446
  %6448 = fmul fast float %2134, 0x3FF7154760000000
  %6449 = fmul fast float %6448, %6447
  %6450 = fmul fast float %2135, 0x3FF7154760000000
  %6451 = fmul fast float %6450, %6447
  %6452 = fmul fast float %2136, 0x3FF7154760000000
  %6453 = fmul fast float %6452, %6447
  %6454 = call float @dx.op.unary.f32(i32 21, float %6449)  ; Exp(value)
  %6455 = call float @dx.op.unary.f32(i32 21, float %6451)  ; Exp(value)
  %6456 = call float @dx.op.unary.f32(i32 21, float %6453)  ; Exp(value)
  %6457 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  %6458 = call float @dx.op.unary.f32(i32 7, float %6455)  ; Saturate(value)
  %6459 = call float @dx.op.unary.f32(i32 7, float %6456)  ; Saturate(value)
  %6460 = fmul fast float %6382, %6457
  %6461 = fmul fast float %6383, %6458
  %6462 = fmul fast float %6384, %6459
  %6463 = fsub fast float %6156, %2333
  %6464 = fsub fast float %6157, %2332
  %6465 = fsub fast float %6158, %2331
  %6466 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float %6463, float %6464, float %6465)  ; Dot3(ax,ay,az,bx,by,bz)
  %6467 = call float @dx.op.unary.f32(i32 25, float %6466)  ; Rsqrt(value)
  %6468 = fmul fast float %6467, %6463
  %6469 = fmul fast float %6467, %6464
  %6470 = fmul fast float %6467, %6465
  %6471 = call float @dx.op.dot3.f32(i32 55, float %6156, float %6157, float %6158, float %2340, float %2341, float %2342)  ; Dot3(ax,ay,az,bx,by,bz)
  %6472 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2329, float %2328, float %6468, float %6469, float %6470)  ; Dot3(ax,ay,az,bx,by,bz)
  %6473 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  %6474 = fmul fast float %6473, %6163
  %6475 = fmul fast float %6473, %6473
  %6476 = fmul fast float %6475, %4314
  %6477 = call float @dx.op.unary.f32(i32 7, float %6476)  ; Saturate(value)
  %6478 = fmul fast float %6474, %6477
  %6479 = bitcast float %6153 to i32
  %6480 = ashr i32 %6479, 1
  %6481 = sub nsw i32 1597463007, %6480
  %6482 = bitcast i32 %6481 to float
  %6483 = fmul fast float %6482, %6150
  %6484 = fmul fast float %6482, %6151
  %6485 = fmul fast float %6482, %6152
  %6486 = fsub fast float %6483, %2333
  %6487 = fsub fast float %6484, %2332
  %6488 = fsub fast float %6485, %2331
  %6489 = call float @dx.op.dot3.f32(i32 55, float %6486, float %6487, float %6488, float %6486, float %6487, float %6488)  ; Dot3(ax,ay,az,bx,by,bz)
  %6490 = call float @dx.op.unary.f32(i32 25, float %6489)  ; Rsqrt(value)
  %6491 = fmul fast float %6486, %6490
  %6492 = fmul fast float %6487, %6490
  %6493 = fmul fast float %6488, %6490
  %6494 = call float @dx.op.dot3.f32(i32 55, float %2340, float %2341, float %2342, float %6491, float %6492, float %6493)  ; Dot3(ax,ay,az,bx,by,bz)
  %6495 = fmul fast float %6494, %6494
  %6496 = call float @dx.op.unary.f32(i32 6, float %6471)  ; FAbs(value)
  %6497 = fsub fast float 1.000000e+00, %2366
  %6498 = fmul fast float %2348, %2348
  %6499 = fmul fast float %6498, %6497
  %6500 = fadd fast float %6499, %2366
  %6501 = bitcast float %6500 to i32
  %6502 = ashr i32 %6501, 1
  %6503 = add nsw i32 %6502, 532487669
  %6504 = bitcast i32 %6503 to float
  %6505 = fadd fast float %6504, %2348
  %6506 = fmul fast float %2366, %6495
  %6507 = fsub fast float 1.000000e+00, %6495
  %6508 = fadd fast float %6507, %6506
  %6509 = fmul fast float %6496, %6496
  %6510 = fmul fast float %6509, %6497
  %6511 = fadd fast float %6510, %2366
  %6512 = bitcast float %6511 to i32
  %6513 = ashr i32 %6512, 1
  %6514 = add nsw i32 %6513, 532487669
  %6515 = bitcast i32 %6514 to float
  %6516 = fadd fast float %6515, %6496
  %6517 = fmul fast float %6508, %6508
  %6518 = fmul fast float %6517, %6505
  %6519 = fmul fast float %6518, %6516
  %6520 = fdiv fast float 1.000000e+00, %6519
  %6521 = bitcast float %2366 to i32
  %6522 = sitofp i32 %6521 to float
  %6523 = fmul fast float %6522, 0x3FE7F73180000000
  %6524 = fadd fast float %6523, 0x41AFE27C40000000
  %6525 = fptosi float %6524 to i32
  %6526 = bitcast i32 %6525 to float
  %6527 = fmul fast float %6118, 0x3FD80E9D60000000
  %6528 = fmul fast float %6527, %6482
  %6529 = fadd fast float %6526, %6528
  %6530 = bitcast float %6529 to i32
  %6531 = sub nsw i32 2129859010, %6530
  %6532 = bitcast i32 %6531 to float
  %6533 = fmul fast float %2366, %6520
  %6534 = fmul fast float %6533, %6526
  %6535 = fmul fast float %6534, %6532
  %6536 = fmul fast float %3657, 0x3FF9999980000000
  %6537 = fsub fast float 5.000000e+00, %6536
  %6538 = call float @dx.op.unary.f32(i32 6, float %6472)  ; FAbs(value)
  %6539 = fsub fast float 1.000000e+00, %6538
  %6540 = fmul fast float %3657, 0x41D9660740000000
  %6541 = fadd fast float %6540, 0xC1EFBF8940000000
  %6542 = bitcast float %6539 to i32
  %6543 = sitofp i32 %6542 to float
  %6544 = fmul fast float %6543, %6537
  %6545 = fadd fast float %6541, %6544
  %6546 = fptosi float %6545 to i32
  %6547 = bitcast i32 %6546 to float
  %6548 = fsub fast float 1.000000e+00, %2334
  %6549 = fsub fast float 1.000000e+00, %2335
  %6550 = fsub fast float 1.000000e+00, %2346
  %6551 = fmul fast float %6547, %6548
  %6552 = fmul fast float %6547, %6549
  %6553 = fmul fast float %6547, %6550
  %6554 = fadd fast float %6551, %2334
  %6555 = fadd fast float %6552, %2335
  %6556 = fadd fast float %6553, %2346
  br i1 %3680, label %6557, label %6580

; <label>:6557                                    ; preds = %6443
  %6558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1679, float %6538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6559 = extractvalue %dx.types.ResRet.f32 %6558, 0
  %6560 = extractvalue %dx.types.ResRet.f32 %6558, 1
  %6561 = extractvalue %dx.types.ResRet.f32 %6558, 2
  %6562 = fadd fast float %6559, -5.000000e-01
  %6563 = fadd fast float %6560, -5.000000e-01
  %6564 = fadd fast float %6561, -5.000000e-01
  %6565 = fmul fast float %2334, 4.000000e+00
  %6566 = fmul fast float %6565, %6548
  %6567 = fmul fast float %6566, %6562
  %6568 = fmul fast float %2335, 4.000000e+00
  %6569 = fmul fast float %6568, %6549
  %6570 = fmul fast float %6569, %6563
  %6571 = fmul fast float %2346, 4.000000e+00
  %6572 = fmul fast float %6571, %6550
  %6573 = fmul fast float %6572, %6564
  %6574 = fadd fast float %6567, %6554
  %6575 = fadd fast float %6570, %6555
  %6576 = fadd fast float %6573, %6556
  %6577 = call float @dx.op.unary.f32(i32 7, float %6574)  ; Saturate(value)
  %6578 = call float @dx.op.unary.f32(i32 7, float %6575)  ; Saturate(value)
  %6579 = call float @dx.op.unary.f32(i32 7, float %6576)  ; Saturate(value)
  br label %6580

; <label>:6580                                    ; preds = %6557, %6443
  %6581 = phi float [ %6577, %6557 ], [ %6554, %6443 ]
  %6582 = phi float [ %6578, %6557 ], [ %6555, %6443 ]
  %6583 = phi float [ %6579, %6557 ], [ %6556, %6443 ]
  %6584 = fmul fast float %6471, 9.843750e-01
  %6585 = fadd fast float %6584, 7.812500e-03
  %6586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6585, float %3661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6587 = extractvalue %dx.types.ResRet.f32 %6586, 0
  %6588 = extractvalue %dx.types.ResRet.f32 %6586, 1
  %6589 = extractvalue %dx.types.ResRet.f32 %6586, 2
  %6590 = extractvalue %dx.types.ResRet.f32 %6586, 3
  %6591 = fsub fast float %6589, %6587
  %6592 = fsub fast float %6590, %6588
  %6593 = fmul fast float %6591, %3667
  %6594 = fmul fast float %6592, %3667
  %6595 = fadd fast float %6593, %6587
  %6596 = fadd fast float %6594, %6588
  %6597 = fmul fast float %6595, %2334
  %6598 = fmul fast float %6595, %2335
  %6599 = fmul fast float %6595, %2346
  %6600 = fadd fast float %6597, %6596
  %6601 = fadd fast float %6598, %6596
  %6602 = fadd fast float %6599, %6596
  br i1 %3680, label %6603, label %6626

; <label>:6603                                    ; preds = %6580
  %6604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1679, float %6471, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6605 = extractvalue %dx.types.ResRet.f32 %6604, 0
  %6606 = extractvalue %dx.types.ResRet.f32 %6604, 1
  %6607 = extractvalue %dx.types.ResRet.f32 %6604, 2
  %6608 = fadd fast float %6605, -5.000000e-01
  %6609 = fadd fast float %6606, -5.000000e-01
  %6610 = fadd fast float %6607, -5.000000e-01
  %6611 = fmul fast float %2334, 4.000000e+00
  %6612 = fmul fast float %6611, %6548
  %6613 = fmul fast float %6612, %6608
  %6614 = fmul fast float %2335, 4.000000e+00
  %6615 = fmul fast float %6614, %6549
  %6616 = fmul fast float %6615, %6609
  %6617 = fmul fast float %2346, 4.000000e+00
  %6618 = fmul fast float %6617, %6550
  %6619 = fmul fast float %6618, %6610
  %6620 = fadd fast float %6613, %6600
  %6621 = fadd fast float %6616, %6601
  %6622 = fadd fast float %6619, %6602
  %6623 = call float @dx.op.unary.f32(i32 7, float %6620)  ; Saturate(value)
  %6624 = call float @dx.op.unary.f32(i32 7, float %6621)  ; Saturate(value)
  %6625 = call float @dx.op.unary.f32(i32 7, float %6622)  ; Saturate(value)
  br label %6626

; <label>:6626                                    ; preds = %6603, %6580
  %6627 = phi float [ %6623, %6603 ], [ %6600, %6580 ]
  %6628 = phi float [ %6624, %6603 ], [ %6601, %6580 ]
  %6629 = phi float [ %6625, %6603 ], [ %6602, %6580 ]
  %6630 = call float @dx.op.binary.f32(i32 35, float %6628, float %6629)  ; FMax(a,b)
  %6631 = call float @dx.op.binary.f32(i32 35, float %6627, float %6630)  ; FMax(a,b)
  %6632 = fsub fast float 1.000000e+00, %6631
  %6633 = call float @dx.op.binary.f32(i32 35, float %6496, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6634 = fdiv fast float %1085, %6633
  %6635 = fmul fast float %4227, %6634
  %6636 = fmul fast float %4229, %6634
  %6637 = fmul fast float %4231, %6634
  %6638 = call float @dx.op.unary.f32(i32 21, float %6635)  ; Exp(value)
  %6639 = call float @dx.op.unary.f32(i32 21, float %6636)  ; Exp(value)
  %6640 = call float @dx.op.unary.f32(i32 21, float %6637)  ; Exp(value)
  %6641 = call float @dx.op.unary.f32(i32 7, float %6638)  ; Saturate(value)
  %6642 = call float @dx.op.unary.f32(i32 7, float %6639)  ; Saturate(value)
  %6643 = call float @dx.op.unary.f32(i32 7, float %6640)  ; Saturate(value)
  %6644 = select i1 %4224, float %6641, float 0.000000e+00
  %6645 = select i1 %4225, float %6642, float 0.000000e+00
  %6646 = select i1 %4226, float %6643, float 0.000000e+00
  %6647 = fsub fast float -0.000000e+00, %2340
  %6648 = fsub fast float -0.000000e+00, %2341
  %6649 = fsub fast float -0.000000e+00, %2342
  %6650 = call float @dx.op.dot3.f32(i32 55, float %6156, float %6157, float %6158, float %6647, float %6648, float %6649)  ; Dot3(ax,ay,az,bx,by,bz)
  %6651 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6652 = fmul fast float %6651, %6163
  %6653 = fmul fast float %6651, 9.843750e-01
  %6654 = fadd fast float %6653, 7.812500e-03
  %6655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6654, float %3661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6656 = extractvalue %dx.types.ResRet.f32 %6655, 0
  %6657 = extractvalue %dx.types.ResRet.f32 %6655, 1
  %6658 = extractvalue %dx.types.ResRet.f32 %6655, 2
  %6659 = extractvalue %dx.types.ResRet.f32 %6655, 3
  %6660 = fsub fast float %6658, %6656
  %6661 = fsub fast float %6659, %6657
  %6662 = fmul fast float %6660, %3667
  %6663 = fmul fast float %6661, %3667
  %6664 = fadd fast float %6662, %6656
  %6665 = fadd fast float %6663, %6657
  %6666 = fmul fast float %6664, %2334
  %6667 = fmul fast float %6664, %2335
  %6668 = fmul fast float %6664, %2346
  %6669 = fadd fast float %6666, %6665
  %6670 = fadd fast float %6667, %6665
  %6671 = fadd fast float %6668, %6665
  br i1 %3680, label %6672, label %6695

; <label>:6672                                    ; preds = %6626
  %6673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1679, float %6651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6674 = extractvalue %dx.types.ResRet.f32 %6673, 0
  %6675 = extractvalue %dx.types.ResRet.f32 %6673, 1
  %6676 = extractvalue %dx.types.ResRet.f32 %6673, 2
  %6677 = fadd fast float %6674, -5.000000e-01
  %6678 = fadd fast float %6675, -5.000000e-01
  %6679 = fadd fast float %6676, -5.000000e-01
  %6680 = fmul fast float %2334, 4.000000e+00
  %6681 = fmul fast float %6680, %6548
  %6682 = fmul fast float %6681, %6677
  %6683 = fmul fast float %2335, 4.000000e+00
  %6684 = fmul fast float %6683, %6549
  %6685 = fmul fast float %6684, %6678
  %6686 = fmul fast float %2346, 4.000000e+00
  %6687 = fmul fast float %6686, %6550
  %6688 = fmul fast float %6687, %6679
  %6689 = fadd fast float %6682, %6669
  %6690 = fadd fast float %6685, %6670
  %6691 = fadd fast float %6688, %6671
  %6692 = call float @dx.op.unary.f32(i32 7, float %6689)  ; Saturate(value)
  %6693 = call float @dx.op.unary.f32(i32 7, float %6690)  ; Saturate(value)
  %6694 = call float @dx.op.unary.f32(i32 7, float %6691)  ; Saturate(value)
  br label %6695

; <label>:6695                                    ; preds = %6672, %6626
  %6696 = phi float [ %6692, %6672 ], [ %6669, %6626 ]
  %6697 = phi float [ %6693, %6672 ], [ %6670, %6626 ]
  %6698 = phi float [ %6694, %6672 ], [ %6671, %6626 ]
  %6699 = call float @dx.op.binary.f32(i32 35, float %6697, float %6698)  ; FMax(a,b)
  %6700 = call float @dx.op.binary.f32(i32 35, float %6696, float %6699)  ; FMax(a,b)
  %6701 = fsub fast float 1.000000e+00, %6700
  %6702 = fmul fast float %2363, %4291
  %6703 = fadd fast float %4293, %6702
  %6704 = call float @dx.op.unary.f32(i32 7, float %6703)  ; Saturate(value)
  %6705 = fsub fast float %6483, %2354
  %6706 = fsub fast float %6484, %2355
  %6707 = fsub fast float %6485, %2356
  %6708 = call float @dx.op.dot3.f32(i32 55, float %6705, float %6706, float %6707, float %6705, float %6706, float %6707)  ; Dot3(ax,ay,az,bx,by,bz)
  %6709 = call float @dx.op.unary.f32(i32 25, float %6708)  ; Rsqrt(value)
  %6710 = fmul fast float %6705, %6709
  %6711 = fmul fast float %6706, %6709
  %6712 = fmul fast float %6707, %6709
  %6713 = call float @dx.op.dot3.f32(i32 55, float %6647, float %6648, float %6649, float %6710, float %6711, float %6712)  ; Dot3(ax,ay,az,bx,by,bz)
  %6714 = fmul fast float %6713, %6713
  %6715 = call float @dx.op.unary.f32(i32 6, float %6651)  ; FAbs(value)
  %6716 = call float @dx.op.binary.f32(i32 35, float %6704, float 0x3F847AE140000000)  ; FMax(a,b)
  %6717 = fmul fast float %6716, %6716
  %6718 = fmul fast float %6717, %6717
  %6719 = fsub fast float 1.000000e+00, %6718
  %6720 = fmul fast float %6498, %6719
  %6721 = fadd fast float %6720, %6718
  %6722 = bitcast float %6721 to i32
  %6723 = ashr i32 %6722, 1
  %6724 = add nsw i32 %6723, 532487669
  %6725 = bitcast i32 %6724 to float
  %6726 = fadd fast float %6725, %2348
  %6727 = fmul fast float %6718, %6714
  %6728 = fsub fast float 1.000000e+00, %6714
  %6729 = fadd fast float %6728, %6727
  %6730 = fmul fast float %6715, %6715
  %6731 = fmul fast float %6730, %6719
  %6732 = fadd fast float %6731, %6718
  %6733 = bitcast float %6732 to i32
  %6734 = ashr i32 %6733, 1
  %6735 = add nsw i32 %6734, 532487669
  %6736 = bitcast i32 %6735 to float
  %6737 = fadd fast float %6736, %6715
  %6738 = fmul fast float %6729, %6729
  %6739 = fmul fast float %6738, %6726
  %6740 = fmul fast float %6739, %6737
  %6741 = fdiv fast float 1.000000e+00, %6740
  %6742 = bitcast float %6718 to i32
  %6743 = sitofp i32 %6742 to float
  %6744 = fmul fast float %6743, 0x3FE7F73180000000
  %6745 = fadd fast float %6744, 0x41AFE27C40000000
  %6746 = fptosi float %6745 to i32
  %6747 = bitcast i32 %6746 to float
  %6748 = fadd fast float %6747, %6528
  %6749 = bitcast float %6748 to i32
  %6750 = sub nsw i32 2129859010, %6749
  %6751 = bitcast i32 %6750 to float
  %6752 = fmul fast float %6718, %6741
  %6753 = fmul fast float %6752, %6747
  %6754 = fmul fast float %6753, %6751
  br i1 %6148, label %6755, label %6765

; <label>:6755                                    ; preds = %6695
  %6756 = fmul fast float %6652, %6644
  %6757 = fmul fast float %6652, %6645
  %6758 = fmul fast float %6652, %6646
  %6759 = fmul fast float %6756, %6701
  %6760 = fmul fast float %6759, %6754
  %6761 = fmul fast float %6757, %6701
  %6762 = fmul fast float %6761, %6754
  %6763 = fmul fast float %6758, %6701
  %6764 = fmul fast float %6763, %6754
  br label %6765

; <label>:6765                                    ; preds = %6755, %6695
  %6766 = phi float [ %6760, %6755 ], [ 0.000000e+00, %6695 ]
  %6767 = phi float [ %6762, %6755 ], [ 0.000000e+00, %6695 ]
  %6768 = phi float [ %6764, %6755 ], [ 0.000000e+00, %6695 ]
  %6769 = fmul fast float %6581, %6535
  %6770 = fmul fast float %6582, %6535
  %6771 = fmul fast float %6583, %6535
  %6772 = fsub fast float 1.000000e+00, %6472
  %6773 = bitcast float %6772 to i32
  %6774 = sitofp i32 %6773 to float
  %6775 = fmul fast float %6774, 5.000000e+00
  %6776 = fadd fast float %6775, 0xC1EFBF8940000000
  %6777 = fptosi float %6776 to i32
  %6778 = bitcast i32 %6777 to float
  %6779 = fmul fast float %6778, %1678
  %6780 = fmul fast float %6632, %6779
  %6781 = fmul fast float %6780, %4219
  %6782 = fmul fast float %6780, %4220
  %6783 = fmul fast float %6780, %4221
  %6784 = fadd fast float %6781, %6769
  %6785 = fadd fast float %6782, %6770
  %6786 = fadd fast float %6783, %6771
  %6787 = fmul fast float %6784, %6478
  %6788 = fmul fast float %6785, %6478
  %6789 = fmul fast float %6786, %6478
  %6790 = fadd fast float %6787, %6766
  %6791 = fadd fast float %6788, %6767
  %6792 = fadd fast float %6789, %6768
  %6793 = fmul fast float %6460, %1702
  %6794 = fmul fast float %6793, %6478
  %6795 = fmul fast float %6794, %6632
  %6796 = fmul fast float %6461, %1702
  %6797 = fmul fast float %6796, %6478
  %6798 = fmul fast float %6797, %6632
  %6799 = fmul fast float %6462, %1702
  %6800 = fmul fast float %6799, %6478
  %6801 = fmul fast float %6800, %6632
  %6802 = fadd fast float %6795, %6092
  %6803 = fadd fast float %6798, %6093
  %6804 = fadd fast float %6801, %6094
  %6805 = fmul fast float %6793, %6790
  %6806 = fmul fast float %6796, %6791
  %6807 = fmul fast float %6799, %6792
  %6808 = fadd fast float %6805, %6089
  %6809 = fadd fast float %6806, %6090
  %6810 = fadd fast float %6807, %6091
  br label %6222

; <label>:6811                                    ; preds = %6222
  br label %6812

; <label>:6812                                    ; preds = %6811, %6055
  %6813 = phi float [ %6057, %6055 ], [ %6223, %6811 ]
  %6814 = phi float [ %6058, %6055 ], [ %6224, %6811 ]
  %6815 = phi float [ %6059, %6055 ], [ %6225, %6811 ]
  %6816 = phi float [ %6060, %6055 ], [ %6226, %6811 ]
  %6817 = phi float [ %6061, %6055 ], [ %6227, %6811 ]
  %6818 = phi float [ %6062, %6055 ], [ %6228, %6811 ]
  %6819 = add i32 %6056, 1
  %6820 = icmp ugt i32 %6819, %6052
  br i1 %6820, label %6821, label %6055

; <label>:6821                                    ; preds = %6812
  br label %6822

; <label>:6822                                    ; preds = %6821, %6005, %5995
  %6823 = phi float [ %5996, %5995 ], [ %5996, %6005 ], [ %6813, %6821 ]
  %6824 = phi float [ %5997, %5995 ], [ %5997, %6005 ], [ %6814, %6821 ]
  %6825 = phi float [ %5998, %5995 ], [ %5998, %6005 ], [ %6815, %6821 ]
  %6826 = phi float [ %5999, %5995 ], [ %5999, %6005 ], [ %6816, %6821 ]
  %6827 = phi float [ %6000, %5995 ], [ %6000, %6005 ], [ %6817, %6821 ]
  %6828 = phi float [ %6001, %5995 ], [ %6001, %6005 ], [ %6818, %6821 ]
  %6829 = fmul fast float %1702, %4248
  %6830 = fsub fast float -0.000000e+00, %6829
  %6831 = fmul fast float %1702, %4249
  %6832 = fsub fast float -0.000000e+00, %6831
  %6833 = fmul fast float %1702, %4250
  %6834 = fsub fast float -0.000000e+00, %6833
  %6835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6836 = extractvalue %dx.types.CBufRet.f32 %6835, 0
  %6837 = fmul fast float %6836, %4254
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 3
  %6840 = fsub fast float 1.000000e+00, %1674
  %6841 = call float @dx.op.unary.f32(i32 7, float %6840)  ; Saturate(value)
  %6842 = fadd fast float %6828, %1673
  %6843 = fmul fast float %6842, %1674
  %6844 = fmul fast float %6841, %6839
  %6845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6846 = extractvalue %dx.types.CBufRet.f32 %6845, 3
  %6847 = fmul fast float %6826, %2337
  %6848 = fmul fast float %6827, %2338
  %6849 = fmul fast float %6828, %2339
  %6850 = fcmp fast ogt float %87, %197
  %6851 = and i1 %6850, %2139
  %6852 = or i1 %2145, %6851
  %6853 = icmp eq i32 %2138, 2
  %6854 = fcmp fast ole float %87, %197
  %6855 = and i1 %6854, %6853
  %6856 = or i1 %6855, %6852
  br i1 %6851, label %6857, label %7116

; <label>:6857                                    ; preds = %6822
  %6858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6859 = extractvalue %dx.types.CBufRet.f32 %6858, 2
  %6860 = extractvalue %dx.types.CBufRet.f32 %6858, 3
  %6861 = fmul fast float %6859, %99
  %6862 = fmul fast float %6860, %100
  %6863 = call float @dx.op.unary.f32(i32 7, float %6861)  ; Saturate(value)
  %6864 = call float @dx.op.unary.f32(i32 7, float %6862)  ; Saturate(value)
  %6865 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6863, float %6864, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6866 = extractvalue %dx.types.ResRet.f32 %6865, 0
  %6867 = extractvalue %dx.types.ResRet.f32 %6865, 1
  %6868 = extractvalue %dx.types.ResRet.f32 %6865, 2
  %6869 = extractvalue %dx.types.ResRet.f32 %6865, 3
  %6870 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6863, float %6864, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6871 = extractvalue %dx.types.ResRet.f32 %6870, 0
  %6872 = extractvalue %dx.types.ResRet.f32 %6870, 1
  %6873 = extractvalue %dx.types.ResRet.f32 %6870, 2
  %6874 = extractvalue %dx.types.ResRet.f32 %6870, 3
  %6875 = call float @dx.op.binary.f32(i32 35, float %6867, float %6868)  ; FMax(a,b)
  %6876 = call float @dx.op.binary.f32(i32 35, float %6866, float %6875)  ; FMax(a,b)
  %6877 = call float @dx.op.binary.f32(i32 35, float %6876, float %6869)  ; FMax(a,b)
  %6878 = call float @dx.op.binary.f32(i32 36, float %6872, float %6873)  ; FMin(a,b)
  %6879 = call float @dx.op.binary.f32(i32 36, float %6871, float %6878)  ; FMin(a,b)
  %6880 = call float @dx.op.binary.f32(i32 36, float %6879, float %6874)  ; FMin(a,b)
  %6881 = fmul fast float %6877, 2.550000e+02
  %6882 = fadd fast float %6881, 0x3F70101020000000
  %6883 = fptoui float %6882 to i32
  %6884 = fmul fast float %6880, 2.550000e+02
  %6885 = fadd fast float %6884, 0x3F70101020000000
  %6886 = fptoui float %6885 to i32
  %6887 = icmp ult i32 %6883, %6886
  br i1 %6887, label %6888, label %7056

; <label>:6888                                    ; preds = %6857
  %6889 = fcmp fast ogt float %86, 9.843750e-01
  %6890 = fadd fast float %87, -4.000000e+00
  %6891 = select i1 %6889, float -4.000000e+00, float %6890
  %6892 = call float @dx.op.binary.f32(i32 35, float %6891, float 0.000000e+00)  ; FMax(a,b)
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 0
  %6895 = fadd fast float %6894, %6892
  %6896 = extractvalue %dx.types.CBufRet.f32 %6893, 2
  %6897 = fmul fast float %6895, %6896
  %6898 = call float @dx.op.unary.f32(i32 23, float %6897)  ; Log(value)
  %6899 = extractvalue %dx.types.CBufRet.f32 %6893, 3
  %6900 = fmul fast float %6899, %6898
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 2
  %6903 = fmul fast float %6900, %6902
  %6904 = call float @dx.op.unary.f32(i32 7, float %6903)  ; Saturate(value)
  %6905 = uitofp i32 %6883 to float
  %6906 = uitofp i32 %6886 to float
  %6907 = fadd fast float %6905, 5.000000e-01
  %6908 = fadd fast float %6906, 5.000000e-01
  %6909 = fmul fast float %6902, %6907
  %6910 = fmul fast float %6902, %6908
  %6911 = fadd fast float %6909, 0x3F0FFB4800000000
  %6912 = fadd fast float %6910, 0xBF0FFB4800000000
  %6913 = call float @dx.op.binary.f32(i32 35, float %6904, float %6911)  ; FMax(a,b)
  %6914 = call float @dx.op.binary.f32(i32 36, float %6913, float %6912)  ; FMin(a,b)
  %6915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6916 = extractvalue %dx.types.CBufRet.f32 %6915, 1
  %6917 = extractvalue %dx.types.CBufRet.f32 %6915, 2
  %6918 = extractvalue %dx.types.CBufRet.f32 %6915, 0
  %6919 = fmul fast float %6916, %6914
  %6920 = fadd fast float %6918, %6919
  %6921 = fadd fast float %6918, %6917
  %6922 = fsub fast float %6916, %6917
  %6923 = fadd fast float %6922, %6918
  %6924 = call float @dx.op.binary.f32(i32 35, float %6920, float %6921)  ; FMax(a,b)
  %6925 = call float @dx.op.binary.f32(i32 36, float %6924, float %6923)  ; FMin(a,b)
  %6926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6863, float %6864, float %6925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6927 = extractvalue %dx.types.ResRet.f32 %6926, 0
  %6928 = extractvalue %dx.types.ResRet.f32 %6926, 1
  %6929 = extractvalue %dx.types.ResRet.f32 %6926, 2
  %6930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6931 = extractvalue %dx.types.CBufRet.i32 %6930, 0
  %6932 = extractvalue %dx.types.CBufRet.i32 %6930, 1
  %6933 = uitofp i32 %6931 to float
  %6934 = uitofp i32 %6932 to float
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 0
  %6937 = extractvalue %dx.types.CBufRet.f32 %6935, 1
  %6938 = fmul fast float %6933, %6863
  %6939 = fmul fast float %6934, %6864
  %6940 = fadd fast float %6938, -5.000000e-01
  %6941 = fadd fast float %6939, -5.000000e-01
  %6942 = call float @dx.op.unary.f32(i32 22, float %6940)  ; Frc(value)
  %6943 = call float @dx.op.unary.f32(i32 22, float %6941)  ; Frc(value)
  %6944 = fmul fast float %6942, %6942
  %6945 = fmul fast float %6944, %6942
  %6946 = fsub fast float 3.000000e+00, %6942
  %6947 = fmul fast float %6944, %6946
  %6948 = fmul fast float %6942, 3.000000e+00
  %6949 = fmul fast float %6945, 3.000000e+00
  %6950 = fmul fast float %6944, 6.000000e+00
  %6951 = fsub fast float %6949, %6950
  %6952 = fadd fast float %6951, 4.000000e+00
  %6953 = fmul fast float %6952, 0x3FC5555560000000
  %6954 = fmul fast float %6945, -3.000000e+00
  %6955 = fadd fast float %6944, %6942
  %6956 = fmul fast float %6955, 3.000000e+00
  %6957 = fadd fast float %6954, 1.000000e+00
  %6958 = fadd fast float %6957, %6956
  %6959 = fmul fast float %6945, 0x3FC5555560000000
  %6960 = fmul fast float %6943, %6943
  %6961 = fmul fast float %6960, %6943
  %6962 = fsub fast float 3.000000e+00, %6943
  %6963 = fmul fast float %6960, %6962
  %6964 = fmul fast float %6943, 3.000000e+00
  %6965 = fmul fast float %6961, 3.000000e+00
  %6966 = fmul fast float %6960, 6.000000e+00
  %6967 = fsub fast float %6965, %6966
  %6968 = fadd fast float %6967, 4.000000e+00
  %6969 = fmul fast float %6968, 0x3FC5555560000000
  %6970 = fmul fast float %6961, -3.000000e+00
  %6971 = fadd fast float %6960, %6943
  %6972 = fmul fast float %6971, 3.000000e+00
  %6973 = fadd fast float %6970, 1.000000e+00
  %6974 = fadd fast float %6973, %6972
  %6975 = fmul fast float %6961, 0x3FC5555560000000
  %6976 = fadd fast float %6942, 1.000000e+00
  %6977 = fsub fast float 1.000000e+00, %6948
  %6978 = fadd fast float %6977, %6947
  %6979 = fadd fast float %6978, %6952
  %6980 = fmul fast float %6979, 0x3FC5555560000000
  %6981 = fdiv fast float %6953, %6980
  %6982 = fsub fast float %6976, %6981
  %6983 = fsub fast float 1.000000e+00, %6942
  %6984 = fadd fast float %6958, %6945
  %6985 = fmul fast float %6984, 0x3FC5555560000000
  %6986 = fdiv fast float %6959, %6985
  %6987 = fadd fast float %6983, %6986
  %6988 = fadd fast float %6943, 1.000000e+00
  %6989 = fsub fast float 1.000000e+00, %6964
  %6990 = fadd fast float %6989, %6963
  %6991 = fadd fast float %6990, %6968
  %6992 = fmul fast float %6991, 0x3FC5555560000000
  %6993 = fdiv fast float %6969, %6992
  %6994 = fsub fast float %6988, %6993
  %6995 = fsub fast float 1.000000e+00, %6943
  %6996 = fadd fast float %6974, %6961
  %6997 = fmul fast float %6996, 0x3FC5555560000000
  %6998 = fdiv fast float %6975, %6997
  %6999 = fadd fast float %6998, %6995
  %7000 = fmul fast float %6982, %6936
  %7001 = fsub fast float %6863, %7000
  %7002 = fmul fast float %6987, %6936
  %7003 = fadd fast float %7002, %6863
  %7004 = fmul fast float %6999, %6937
  %7005 = fadd fast float %7004, %6864
  %7006 = fmul fast float %6994, %6937
  %7007 = fsub fast float %6864, %7006
  %7008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7001, float %7007, float %6925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7009 = extractvalue %dx.types.ResRet.f32 %7008, 0
  %7010 = extractvalue %dx.types.ResRet.f32 %7008, 1
  %7011 = extractvalue %dx.types.ResRet.f32 %7008, 2
  %7012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7003, float %7007, float %6925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7013 = extractvalue %dx.types.ResRet.f32 %7012, 0
  %7014 = extractvalue %dx.types.ResRet.f32 %7012, 1
  %7015 = extractvalue %dx.types.ResRet.f32 %7012, 2
  %7016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7001, float %7005, float %6925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7017 = extractvalue %dx.types.ResRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.ResRet.f32 %7016, 1
  %7019 = extractvalue %dx.types.ResRet.f32 %7016, 2
  %7020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7003, float %7005, float %6925, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7021 = extractvalue %dx.types.ResRet.f32 %7020, 0
  %7022 = extractvalue %dx.types.ResRet.f32 %7020, 1
  %7023 = extractvalue %dx.types.ResRet.f32 %7020, 2
  %7024 = fsub fast float %7017, %7009
  %7025 = fsub fast float %7018, %7010
  %7026 = fsub fast float %7019, %7011
  %7027 = fmul fast float %7024, %6997
  %7028 = fmul fast float %7025, %6997
  %7029 = fmul fast float %7026, %6997
  %7030 = fadd fast float %7027, %7009
  %7031 = fadd fast float %7028, %7010
  %7032 = fadd fast float %7029, %7011
  %7033 = fsub fast float %7021, %7013
  %7034 = fsub fast float %7022, %7014
  %7035 = fsub fast float %7023, %7015
  %7036 = fmul fast float %7033, %6997
  %7037 = fmul fast float %7034, %6997
  %7038 = fmul fast float %7035, %6997
  %7039 = fsub fast float %7013, %7030
  %7040 = fadd fast float %7039, %7036
  %7041 = fsub fast float %7014, %7031
  %7042 = fadd fast float %7041, %7037
  %7043 = fsub fast float %7015, %7032
  %7044 = fadd fast float %7043, %7038
  %7045 = fmul fast float %7040, %6985
  %7046 = fmul fast float %7042, %6985
  %7047 = fmul fast float %7044, %6985
  %7048 = fadd fast float %7045, %7030
  %7049 = fadd fast float %7046, %7031
  %7050 = fadd fast float %7047, %7032
  %7051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.f32 %7051, 1
  %7053 = fmul fast float %7048, %7052
  %7054 = fmul fast float %7049, %7052
  %7055 = fmul fast float %7050, %7052
  br label %7056

; <label>:7056                                    ; preds = %6888, %6857
  %7057 = phi float [ %6927, %6888 ], [ 1.000000e+00, %6857 ]
  %7058 = phi float [ %6928, %6888 ], [ 1.000000e+00, %6857 ]
  %7059 = phi float [ %6929, %6888 ], [ 1.000000e+00, %6857 ]
  %7060 = phi float [ %7053, %6888 ], [ 0.000000e+00, %6857 ]
  %7061 = phi float [ %7054, %6888 ], [ 0.000000e+00, %6857 ]
  %7062 = phi float [ %7055, %6888 ], [ 0.000000e+00, %6857 ]
  %7063 = fmul fast float %7060, %6830
  %7064 = fmul fast float %7061, %6832
  %7065 = fmul fast float %7062, %6834
  %7066 = call float @dx.op.dot3.f32(i32 55, float %7057, float %7058, float %7059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7067 = call float @dx.op.dot3.f32(i32 55, float %7063, float %7064, float %7065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7068 = select i1 %237, float %7066, float %7057
  %7069 = select i1 %237, float %7066, float %7058
  %7070 = select i1 %237, float 1.000000e+00, float %7059
  %7071 = select i1 %237, float %7067, float %7063
  %7072 = select i1 %237, float 0.000000e+00, float %7064
  %7073 = select i1 %237, float 0.000000e+00, float %7065
  %7074 = fmul fast float %7068, %6847
  %7075 = fmul fast float %7069, %6848
  %7076 = fmul fast float %7070, %6849
  %7077 = fadd fast float %7074, %7071
  %7078 = fadd fast float %7075, %7072
  %7079 = fadd fast float %7073, %7076
  %7080 = fmul fast float %7068, %6823
  %7081 = fmul fast float %7069, %6824
  %7082 = fmul fast float %7070, %6825
  %7083 = fmul fast float %99, 2.000000e+00
  %7084 = fmul fast float %7083, %6859
  %7085 = fmul fast float %100, 2.000000e+00
  %7086 = fmul fast float %7085, %6860
  %7087 = fsub fast float 1.000000e+00, %7084
  %7088 = fsub fast float 1.000000e+00, %7086
  %7089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7090 = extractvalue %dx.types.CBufRet.f32 %7089, 0
  %7091 = extractvalue %dx.types.CBufRet.f32 %7089, 1
  %7092 = extractvalue %dx.types.CBufRet.f32 %7089, 2
  %7093 = fmul fast float %7087, %7090
  %7094 = fmul fast float %7087, %7091
  %7095 = fmul fast float %7087, %7092
  %7096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7097 = extractvalue %dx.types.CBufRet.f32 %7096, 0
  %7098 = extractvalue %dx.types.CBufRet.f32 %7096, 1
  %7099 = extractvalue %dx.types.CBufRet.f32 %7096, 2
  %7100 = fmul fast float %7088, %7097
  %7101 = fmul fast float %7088, %7098
  %7102 = fmul fast float %7088, %7099
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7106 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %7107 = fadd fast float %7100, %7104
  %7108 = fadd fast float %7107, %7093
  %7109 = fadd fast float %7101, %7105
  %7110 = fadd fast float %7109, %7094
  %7111 = fadd fast float %7102, %7106
  %7112 = fadd fast float %7111, %7095
  %7113 = fmul fast float %7108, %197
  %7114 = fmul fast float %7110, %197
  %7115 = fmul fast float %7112, %197
  br label %7116

; <label>:7116                                    ; preds = %7056, %6822
  %7117 = phi float [ %7113, %7056 ], [ %146, %6822 ]
  %7118 = phi float [ %7114, %7056 ], [ %147, %6822 ]
  %7119 = phi float [ %7115, %7056 ], [ %148, %6822 ]
  %7120 = phi float [ %197, %7056 ], [ %87, %6822 ]
  %7121 = phi float [ %7077, %7056 ], [ %6847, %6822 ]
  %7122 = phi float [ %7078, %7056 ], [ %6848, %6822 ]
  %7123 = phi float [ %7079, %7056 ], [ %6849, %6822 ]
  %7124 = phi float [ %7080, %7056 ], [ %6823, %6822 ]
  %7125 = phi float [ %7081, %7056 ], [ %6824, %6822 ]
  %7126 = phi float [ %7082, %7056 ], [ %6825, %6822 ]
  %7127 = phi float [ %7057, %7056 ], [ 1.000000e+00, %6822 ]
  br i1 %6856, label %8282, label %7128

; <label>:7128                                    ; preds = %7116
  %7129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7130 = extractvalue %dx.types.CBufRet.f32 %7129, 0
  %7131 = extractvalue %dx.types.CBufRet.f32 %7129, 1
  %7132 = extractvalue %dx.types.CBufRet.f32 %7129, 2
  %7133 = extractvalue %dx.types.CBufRet.f32 %7129, 3
  %7134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7135 = extractvalue %dx.types.CBufRet.f32 %7134, 0
  %7136 = extractvalue %dx.types.CBufRet.f32 %7134, 1
  %7137 = extractvalue %dx.types.CBufRet.f32 %7134, 2
  %7138 = extractvalue %dx.types.CBufRet.f32 %7134, 3
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 0
  %7141 = extractvalue %dx.types.CBufRet.f32 %7139, 1
  %7142 = extractvalue %dx.types.CBufRet.f32 %7139, 2
  %7143 = extractvalue %dx.types.CBufRet.f32 %7139, 3
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 0
  %7146 = extractvalue %dx.types.CBufRet.f32 %7144, 1
  %7147 = extractvalue %dx.types.CBufRet.f32 %7144, 2
  %7148 = extractvalue %dx.types.CBufRet.f32 %7144, 3
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 3
  %7151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.f32 %7151, 3
  %7153 = extractvalue %dx.types.CBufRet.f32 %7151, 0
  %7154 = extractvalue %dx.types.CBufRet.f32 %7151, 1
  %7155 = extractvalue %dx.types.CBufRet.f32 %7151, 2
  %7156 = fcmp fast olt float %7155, -5.000000e-01
  %7157 = call float @dx.op.dot3.f32(i32 55, float %7117, float %7118, float %7119, float %7117, float %7118, float %7119)  ; Dot3(ax,ay,az,bx,by,bz)
  %7158 = call float @dx.op.unary.f32(i32 25, float %7157)  ; Rsqrt(value)
  %7159 = fmul fast float %7158, %7157
  %7160 = fmul fast float %7158, %7117
  %7161 = fmul fast float %7158, %7118
  %7162 = fmul fast float %7158, %7119
  %7163 = fadd fast float %7159, %7133
  %7164 = call float @dx.op.dot3.f32(i32 55, float %7160, float %7161, float %7162, float %7130, float %7131, float %7132)  ; Dot3(ax,ay,az,bx,by,bz)
  %7165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7166 = extractvalue %dx.types.CBufRet.i32 %7165, 1
  %7167 = and i32 %7166, 1
  %7168 = icmp ne i32 %7167, 0
  %7169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.f32 %7169, 2
  %7171 = fcmp fast ogt float %7170, 0.000000e+00
  %7172 = and i1 %7168, %7171
  br i1 %7172, label %7173, label %7579, !dx.controlflow.hints !148

; <label>:7173                                    ; preds = %7128
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 3
  %7176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7177 = extractvalue %dx.types.CBufRet.f32 %7176, 2
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 2
  %7180 = fsub fast float %7177, %7179
  %7181 = and i32 %7166, 2
  %7182 = extractvalue %dx.types.CBufRet.i32 %7165, 0
  %7183 = call i32 @dx.op.binary.i32(i32 40, i32 %7182, i32 3)  ; UMin(a,b)
  %7184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7185 = extractvalue %dx.types.CBufRet.f32 %7184, 0
  %7186 = extractvalue %dx.types.CBufRet.f32 %7184, 1
  %7187 = extractvalue %dx.types.CBufRet.f32 %7178, 0
  %7188 = extractvalue %dx.types.CBufRet.f32 %7178, 1
  %7189 = fsub fast float %7185, %7187
  %7190 = fsub fast float %7186, %7188
  %7191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7192 = extractvalue %dx.types.CBufRet.f32 %7191, 0
  %7193 = fcmp fast ogt float %7192, 0.000000e+00
  %7194 = fsub fast float -0.000000e+00, %7189
  %7195 = fsub fast float -0.000000e+00, %7190
  %7196 = call float @dx.op.dot2.f32(i32 54, float %7160, float %7161, float %7160, float %7161)  ; Dot2(ax,ay,bx,by)
  %7197 = call float @dx.op.dot2.f32(i32 54, float %7160, float %7161, float %7194, float %7195)  ; Dot2(ax,ay,bx,by)
  %7198 = fmul fast float %7197, 2.000000e+00
  %7199 = call float @dx.op.dot2.f32(i32 54, float %7194, float %7195, float %7194, float %7195)  ; Dot2(ax,ay,bx,by)
  %7200 = fmul fast float %7192, %7192
  %7201 = fsub fast float %7199, %7200
  %7202 = fmul fast float %7198, %7198
  %7203 = fmul fast float %7196, 4.000000e+00
  %7204 = fmul fast float %7203, %7201
  %7205 = fsub fast float %7202, %7204
  %7206 = fcmp fast ogt float %7205, 0.000000e+00
  br i1 %7206, label %7207, label %7222

; <label>:7207                                    ; preds = %7173
  %7208 = fcmp fast ogt float %7198, 0.000000e+00
  %7209 = call float @dx.op.unary.f32(i32 24, float %7205)  ; Sqrt(value)
  %7210 = fsub fast float -0.000000e+00, %7209
  %7211 = select i1 %7208, float %7209, float %7210
  %7212 = fadd fast float %7211, %7198
  %7213 = fmul float %7212, -5.000000e-01
  %7214 = fdiv fast float %7213, %7196
  %7215 = call float @dx.op.binary.f32(i32 35, float %7214, float 0.000000e+00)  ; FMax(a,b)
  %7216 = call float @dx.op.binary.f32(i32 36, float %7159, float %7215)  ; FMin(a,b)
  %7217 = fdiv fast float %7201, %7213
  %7218 = call float @dx.op.binary.f32(i32 35, float %7217, float 0.000000e+00)  ; FMax(a,b)
  %7219 = call float @dx.op.binary.f32(i32 36, float %7159, float %7218)  ; FMin(a,b)
  %7220 = call float @dx.op.binary.f32(i32 36, float %7216, float %7219)  ; FMin(a,b)
  %7221 = call float @dx.op.binary.f32(i32 35, float %7216, float %7219)  ; FMax(a,b)
  br label %7222

; <label>:7222                                    ; preds = %7207, %7173
  %7223 = phi float [ %7221, %7207 ], [ -1.000000e+00, %7173 ]
  %7224 = phi float [ %7220, %7207 ], [ -1.000000e+00, %7173 ]
  %7225 = phi i1 [ true, %7207 ], [ false, %7173 ]
  %7226 = and i1 %7193, %7225
  br i1 %7226, label %7227, label %7229

; <label>:7227                                    ; preds = %7222
  %7228 = fcmp fast oeq float %7224, %7223
  br i1 %7228, label %7532, label %7230

; <label>:7229                                    ; preds = %7222
  br i1 %7193, label %7532, label %7230

; <label>:7230                                    ; preds = %7229, %7227
  %7231 = phi float [ %7159, %7229 ], [ %7223, %7227 ]
  %7232 = phi float [ 0.000000e+00, %7229 ], [ %7224, %7227 ]
  %7233 = icmp ne i32 %7181, 0
  %7234 = fmul fast float %7231, %7162
  %7235 = fadd fast float %7234, %7175
  %7236 = fmul fast float %7235, %7231
  %7237 = select i1 %7233, float 0.000000e+00, float %7236
  %7238 = fcmp fast oeq float %7162, 0.000000e+00
  %7239 = fdiv fast float %7180, %7162
  %7240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7239)  ; FMax(a,b)
  %7241 = select i1 %7238, float %7231, float %7240
  %7242 = call float @dx.op.binary.f32(i32 36, float %7231, float %7241)  ; FMin(a,b)
  %7243 = fcmp fast ogt float %7162, 0.000000e+00
  %7244 = fcmp fast olt float %7180, 0.000000e+00
  br i1 %7243, label %7245, label %7302

; <label>:7245                                    ; preds = %7230
  %7246 = icmp eq i32 %7181, 0
  br i1 %7244, label %7247, label %7291

; <label>:7247                                    ; preds = %7245
  %7248 = select i1 %7246, float %7231, float 0.000000e+00
  %7249 = fsub fast float -0.000000e+00, %7248
  %7250 = call float @dx.op.unary.f32(i32 6, float %7249)  ; FAbs(value)
  %7251 = fmul fast float %7248, %7162
  %7252 = fadd fast float %7251, %7175
  %7253 = fmul fast float %7250, %7252
  %7254 = fsub fast float %7237, %7253
  %7255 = fsub fast float %7231, %7250
  %7256 = select i1 %7246, float %7255, float 0.000000e+00
  %7257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7257, 0
  %7259 = extractvalue %dx.types.CBufRet.f32 %7257, 1
  %7260 = extractvalue %dx.types.CBufRet.f32 %7257, 2
  %7261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7262 = extractvalue %dx.types.CBufRet.f32 %7261, 0
  %7263 = extractvalue %dx.types.CBufRet.f32 %7261, 1
  %7264 = extractvalue %dx.types.CBufRet.f32 %7261, 2
  %7265 = extractvalue %dx.types.CBufRet.f32 %7261, 3
  %7266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7267 = extractvalue %dx.types.CBufRet.f32 %7266, 3
  %7268 = call float @dx.op.binary.f32(i32 36, float %7254, float %7267)  ; FMin(a,b)
  %7269 = fmul fast float %7265, %7256
  %7270 = call float @dx.op.unary.f32(i32 7, float %7269)  ; Saturate(value)
  %7271 = fsub fast float %7262, %7258
  %7272 = fsub fast float %7263, %7259
  %7273 = fsub fast float %7264, %7260
  %7274 = fmul fast float %7270, %7271
  %7275 = fmul fast float %7270, %7272
  %7276 = fmul fast float %7270, %7273
  %7277 = fadd fast float %7274, %7258
  %7278 = fadd fast float %7275, %7259
  %7279 = fadd fast float %7276, %7260
  %7280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7281 = extractvalue %dx.types.CBufRet.f32 %7280, 0
  %7282 = extractvalue %dx.types.CBufRet.f32 %7280, 1
  %7283 = fadd fast float %7282, %7281
  %7284 = call float @dx.op.unary.f32(i32 7, float %7283)  ; Saturate(value)
  %7285 = extractvalue %dx.types.CBufRet.f32 %7280, 2
  %7286 = extractvalue %dx.types.CBufRet.f32 %7280, 3
  %7287 = fadd fast float %7286, %7285
  %7288 = call float @dx.op.unary.f32(i32 7, float %7287)  ; Saturate(value)
  %7289 = fmul fast float %7284, %7268
  %7290 = fmul fast float %7289, %7288
  br label %7532

; <label>:7291                                    ; preds = %7245
  br i1 %7246, label %7292, label %7313

; <label>:7292                                    ; preds = %7291
  %7293 = call float @dx.op.binary.f32(i32 36, float %7242, float %7232)  ; FMin(a,b)
  %7294 = fsub fast float %7242, %7293
  %7295 = fsub fast float %7294, %7231
  %7296 = call float @dx.op.unary.f32(i32 6, float %7295)  ; FAbs(value)
  %7297 = fadd fast float %7294, %7231
  %7298 = fmul fast float %7297, %7162
  %7299 = fadd fast float %7298, %7175
  %7300 = fmul fast float %7299, %7296
  %7301 = fsub fast float %7237, %7300
  br label %7313

; <label>:7302                                    ; preds = %7230
  br i1 %7244, label %7303, label %7313

; <label>:7303                                    ; preds = %7302
  %7304 = call float @dx.op.binary.f32(i32 35, float %7232, float %7242)  ; FMax(a,b)
  %7305 = icmp eq i32 %7181, 0
  %7306 = select i1 %7305, float %7242, float 0.000000e+00
  %7307 = fsub fast float -0.000000e+00, %7306
  %7308 = call float @dx.op.unary.f32(i32 6, float %7307)  ; FAbs(value)
  %7309 = fmul fast float %7306, %7162
  %7310 = fadd fast float %7309, %7175
  %7311 = fmul fast float %7308, %7310
  %7312 = fsub fast float %7237, %7311
  br label %7313

; <label>:7313                                    ; preds = %7303, %7302, %7292, %7291
  %7314 = phi float [ %7232, %7291 ], [ %7232, %7292 ], [ %7304, %7303 ], [ %7232, %7302 ]
  %7315 = phi float [ 0.000000e+00, %7291 ], [ %7296, %7292 ], [ %7308, %7303 ], [ 0.000000e+00, %7302 ]
  %7316 = phi float [ %7237, %7291 ], [ %7301, %7292 ], [ %7312, %7303 ], [ %7237, %7302 ]
  %7317 = phi float [ %7242, %7291 ], [ %7242, %7292 ], [ %7231, %7303 ], [ %7231, %7302 ]
  %7318 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %7318, align 4, !tbaa !135, !noalias !149
  %7319 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %7319, align 4, !tbaa !135, !noalias !149
  %7320 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %7320, align 4, !tbaa !135, !noalias !149
  %7321 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7321, align 4, !tbaa !135, !noalias !149
  %7322 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7322, align 4, !tbaa !135, !noalias !149
  %7323 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7323, align 4, !tbaa !135, !noalias !149
  %7324 = icmp sgt i32 %7183, 0
  br i1 %7324, label %7325, label %7386

; <label>:7325                                    ; preds = %7313
  br label %7326

; <label>:7326                                    ; preds = %7375, %7325
  %7327 = phi i32 [ %7376, %7375 ], [ 0, %7325 ]
  %7328 = phi i32 [ %7377, %7375 ], [ 0, %7325 ]
  %7329 = add nuw i32 %7328, 171
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %7329)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.CBufRet.f32 %7330, 1
  %7333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7333, 0
  %7335 = extractvalue %dx.types.CBufRet.f32 %7333, 1
  %7336 = fsub fast float %7331, %7334
  %7337 = fsub fast float %7332, %7335
  %7338 = extractvalue %dx.types.CBufRet.f32 %7330, 2
  %7339 = fsub fast float -0.000000e+00, %7336
  %7340 = fsub fast float -0.000000e+00, %7337
  %7341 = call float @dx.op.dot2.f32(i32 54, float %7160, float %7161, float %7339, float %7340)  ; Dot2(ax,ay,bx,by)
  %7342 = fmul fast float %7341, 2.000000e+00
  %7343 = call float @dx.op.dot2.f32(i32 54, float %7339, float %7340, float %7339, float %7340)  ; Dot2(ax,ay,bx,by)
  %7344 = fmul fast float %7338, %7338
  %7345 = fsub fast float %7343, %7344
  %7346 = fmul fast float %7342, %7342
  %7347 = fmul fast float %7203, %7345
  %7348 = fsub fast float %7346, %7347
  %7349 = fcmp fast ogt float %7348, 0.000000e+00
  br i1 %7349, label %7350, label %7365

; <label>:7350                                    ; preds = %7326
  %7351 = fcmp fast ogt float %7342, 0.000000e+00
  %7352 = call float @dx.op.unary.f32(i32 24, float %7348)  ; Sqrt(value)
  %7353 = fsub fast float -0.000000e+00, %7352
  %7354 = select i1 %7351, float %7352, float %7353
  %7355 = fadd fast float %7354, %7342
  %7356 = fmul float %7355, -5.000000e-01
  %7357 = fdiv fast float %7356, %7196
  %7358 = call float @dx.op.binary.f32(i32 35, float %7357, float 0.000000e+00)  ; FMax(a,b)
  %7359 = call float @dx.op.binary.f32(i32 36, float %7231, float %7358)  ; FMin(a,b)
  %7360 = fdiv fast float %7345, %7356
  %7361 = call float @dx.op.binary.f32(i32 35, float %7360, float 0.000000e+00)  ; FMax(a,b)
  %7362 = call float @dx.op.binary.f32(i32 36, float %7231, float %7361)  ; FMin(a,b)
  %7363 = call float @dx.op.binary.f32(i32 36, float %7359, float %7362)  ; FMin(a,b)
  %7364 = call float @dx.op.binary.f32(i32 35, float %7359, float %7362)  ; FMax(a,b)
  br label %7365

; <label>:7365                                    ; preds = %7350, %7326
  %7366 = phi float [ %7364, %7350 ], [ -1.000000e+00, %7326 ]
  %7367 = phi float [ %7363, %7350 ], [ -1.000000e+00, %7326 ]
  %7368 = phi i1 [ true, %7350 ], [ false, %7326 ]
  br i1 %7368, label %7369, label %7375

; <label>:7369                                    ; preds = %7365
  %7370 = call float @dx.op.binary.f32(i32 35, float %7314, float %7367)  ; FMax(a,b)
  %7371 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7328
  store float %7370, float* %7371, align 4, !tbaa !135, !noalias !149
  %7372 = call float @dx.op.binary.f32(i32 35, float %7314, float %7366)  ; FMax(a,b)
  %7373 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7328
  store float %7372, float* %7373, align 4, !tbaa !135, !noalias !149
  %7374 = add nsw i32 %7327, 1
  br label %7375

; <label>:7375                                    ; preds = %7369, %7365
  %7376 = phi i32 [ %7374, %7369 ], [ %7327, %7365 ]
  %7377 = add nuw nsw i32 %7328, 1
  %7378 = icmp eq i32 %7377, %7183
  br i1 %7378, label %7379, label %7326

; <label>:7379                                    ; preds = %7375
  %7380 = load float, float* %7320, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %7381 = load float, float* %7319, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  %7382 = load float, float* %7318, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  %7383 = load float, float* %7323, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %7384 = load float, float* %7322, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  %7385 = load float, float* %7321, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  br label %7386

; <label>:7386                                    ; preds = %7379, %7313
  %7387 = phi float [ -1.000000e+00, %7313 ], [ %7385, %7379 ]
  %7388 = phi float [ -1.000000e+00, %7313 ], [ %7384, %7379 ]
  %7389 = phi float [ -1.000000e+00, %7313 ], [ %7383, %7379 ]
  %7390 = phi float [ -1.000000e+00, %7313 ], [ %7382, %7379 ]
  %7391 = phi float [ -1.000000e+00, %7313 ], [ %7381, %7379 ]
  %7392 = phi float [ -1.000000e+00, %7313 ], [ %7380, %7379 ]
  %7393 = phi i32 [ 0, %7313 ], [ %7376, %7379 ]
  %7394 = call float @dx.op.binary.f32(i32 36, float %7391, float %7392)  ; FMin(a,b)
  %7395 = call float @dx.op.binary.f32(i32 36, float %7390, float %7394)  ; FMin(a,b)
  %7396 = call float @dx.op.binary.f32(i32 35, float %7390, float %7391)  ; FMax(a,b)
  %7397 = call float @dx.op.binary.f32(i32 36, float %7396, float %7392)  ; FMin(a,b)
  %7398 = call float @dx.op.binary.f32(i32 36, float %7390, float %7391)  ; FMin(a,b)
  %7399 = call float @dx.op.binary.f32(i32 35, float %7398, float %7397)  ; FMax(a,b)
  %7400 = call float @dx.op.binary.f32(i32 35, float %7391, float %7392)  ; FMax(a,b)
  %7401 = call float @dx.op.binary.f32(i32 35, float %7390, float %7400)  ; FMax(a,b)
  store float %7395, float* %7318, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  store float %7399, float* %7319, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  store float %7401, float* %7320, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %7402 = call float @dx.op.binary.f32(i32 36, float %7388, float %7389)  ; FMin(a,b)
  %7403 = call float @dx.op.binary.f32(i32 36, float %7387, float %7402)  ; FMin(a,b)
  %7404 = call float @dx.op.binary.f32(i32 35, float %7387, float %7388)  ; FMax(a,b)
  %7405 = call float @dx.op.binary.f32(i32 36, float %7404, float %7389)  ; FMin(a,b)
  %7406 = call float @dx.op.binary.f32(i32 36, float %7387, float %7388)  ; FMin(a,b)
  %7407 = call float @dx.op.binary.f32(i32 35, float %7406, float %7405)  ; FMax(a,b)
  %7408 = call float @dx.op.binary.f32(i32 35, float %7388, float %7389)  ; FMax(a,b)
  %7409 = call float @dx.op.binary.f32(i32 35, float %7387, float %7408)  ; FMax(a,b)
  store float %7403, float* %7321, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  store float %7407, float* %7322, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  store float %7409, float* %7323, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %7410 = sub nsw i32 3, %7393
  %7411 = icmp sgt i32 %7410, 2
  br i1 %7411, label %7412, label %7450

; <label>:7412                                    ; preds = %7386
  %7413 = icmp eq i32 %7181, 0
  %7414 = fsub fast float %7231, %7315
  %7415 = select i1 %7413, float %7414, float %7315
  %7416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7417 = extractvalue %dx.types.CBufRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.CBufRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.CBufRet.f32 %7416, 2
  %7420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7421 = extractvalue %dx.types.CBufRet.f32 %7420, 0
  %7422 = extractvalue %dx.types.CBufRet.f32 %7420, 1
  %7423 = extractvalue %dx.types.CBufRet.f32 %7420, 2
  %7424 = extractvalue %dx.types.CBufRet.f32 %7420, 3
  %7425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7425, 3
  %7427 = call float @dx.op.binary.f32(i32 36, float %7316, float %7426)  ; FMin(a,b)
  %7428 = fmul fast float %7424, %7415
  %7429 = call float @dx.op.unary.f32(i32 7, float %7428)  ; Saturate(value)
  %7430 = fsub fast float %7421, %7417
  %7431 = fsub fast float %7422, %7418
  %7432 = fsub fast float %7423, %7419
  %7433 = fmul fast float %7429, %7430
  %7434 = fmul fast float %7429, %7431
  %7435 = fmul fast float %7429, %7432
  %7436 = fadd fast float %7433, %7417
  %7437 = fadd fast float %7434, %7418
  %7438 = fadd fast float %7435, %7419
  %7439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7440 = extractvalue %dx.types.CBufRet.f32 %7439, 0
  %7441 = extractvalue %dx.types.CBufRet.f32 %7439, 1
  %7442 = fadd fast float %7441, %7440
  %7443 = call float @dx.op.unary.f32(i32 7, float %7442)  ; Saturate(value)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7439, 2
  %7445 = extractvalue %dx.types.CBufRet.f32 %7439, 3
  %7446 = fadd fast float %7445, %7444
  %7447 = call float @dx.op.unary.f32(i32 7, float %7446)  ; Saturate(value)
  %7448 = fmul fast float %7443, %7427
  %7449 = fmul fast float %7448, %7447
  br label %7532

; <label>:7450                                    ; preds = %7386
  %7451 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7410
  %7452 = load float, float* %7451, align 4, !tbaa !135, !noalias !149
  %7453 = fcmp fast olt float %7452, %7317
  %7454 = icmp sgt i32 %7393, 0
  %7455 = and i1 %7454, %7453
  br i1 %7455, label %7456, label %7493

; <label>:7456                                    ; preds = %7450
  br label %7457

; <label>:7457                                    ; preds = %7486, %7456
  %7458 = phi float [ %7487, %7486 ], [ %7315, %7456 ]
  %7459 = phi float [ %7488, %7486 ], [ %7316, %7456 ]
  %7460 = phi float [ %7468, %7486 ], [ %7452, %7456 ]
  %7461 = phi i32 [ %7465, %7486 ], [ %7410, %7456 ]
  %7462 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7461
  %7463 = load float, float* %7462, align 4, !tbaa !135, !noalias !149
  %7464 = icmp slt i32 %7461, 2
  %7465 = add nsw i32 %7461, 1
  %7466 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7465
  %7467 = load float, float* %7466, align 4, !tbaa !135, !noalias !149
  %7468 = select i1 %7464, float %7467, float %7231
  %7469 = call float @dx.op.binary.f32(i32 36, float %7468, float %7463)  ; FMin(a,b)
  %7470 = call float @dx.op.binary.f32(i32 36, float %7317, float %7469)  ; FMin(a,b)
  %7471 = icmp eq i32 %7181, 0
  %7472 = fadd fast float %7470, %7460
  %7473 = fmul fast float %7472, %7162
  %7474 = fadd fast float %7473, %7175
  br i1 %7471, label %7480, label %7475

; <label>:7475                                    ; preds = %7457
  %7476 = fsub fast float %7470, %7460
  %7477 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7476)  ; FMax(a,b)
  %7478 = fmul fast float %7477, %7474
  %7479 = fadd fast float %7478, %7459
  br label %7486

; <label>:7480                                    ; preds = %7457
  %7481 = fsub fast float %7460, %7470
  %7482 = call float @dx.op.unary.f32(i32 6, float %7481)  ; FAbs(value)
  %7483 = fadd fast float %7482, %7458
  %7484 = fmul fast float %7482, %7474
  %7485 = fsub fast float %7459, %7484
  br label %7486

; <label>:7486                                    ; preds = %7480, %7475
  %7487 = phi float [ %7477, %7475 ], [ %7483, %7480 ]
  %7488 = phi float [ %7479, %7475 ], [ %7485, %7480 ]
  %7489 = fcmp fast olt float %7468, %7317
  %7490 = icmp slt i32 %7465, 3
  %7491 = and i1 %7490, %7489
  br i1 %7491, label %7457, label %7492

; <label>:7492                                    ; preds = %7486
  br label %7493

; <label>:7493                                    ; preds = %7492, %7450
  %7494 = phi float [ %7315, %7450 ], [ %7487, %7492 ]
  %7495 = phi float [ %7316, %7450 ], [ %7488, %7492 ]
  %7496 = fsub fast float %7231, %7494
  %7497 = select i1 %7233, float %7494, float %7496
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.CBufRet.f32 %7498, 1
  %7501 = extractvalue %dx.types.CBufRet.f32 %7498, 2
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 0
  %7504 = extractvalue %dx.types.CBufRet.f32 %7502, 1
  %7505 = extractvalue %dx.types.CBufRet.f32 %7502, 2
  %7506 = extractvalue %dx.types.CBufRet.f32 %7502, 3
  %7507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7508 = extractvalue %dx.types.CBufRet.f32 %7507, 3
  %7509 = call float @dx.op.binary.f32(i32 36, float %7495, float %7508)  ; FMin(a,b)
  %7510 = fmul fast float %7506, %7497
  %7511 = call float @dx.op.unary.f32(i32 7, float %7510)  ; Saturate(value)
  %7512 = fsub fast float %7503, %7499
  %7513 = fsub fast float %7504, %7500
  %7514 = fsub fast float %7505, %7501
  %7515 = fmul fast float %7511, %7512
  %7516 = fmul fast float %7511, %7513
  %7517 = fmul fast float %7511, %7514
  %7518 = fadd fast float %7515, %7499
  %7519 = fadd fast float %7516, %7500
  %7520 = fadd fast float %7517, %7501
  %7521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.f32 %7521, 0
  %7523 = extractvalue %dx.types.CBufRet.f32 %7521, 1
  %7524 = fadd fast float %7523, %7522
  %7525 = call float @dx.op.unary.f32(i32 7, float %7524)  ; Saturate(value)
  %7526 = extractvalue %dx.types.CBufRet.f32 %7521, 2
  %7527 = extractvalue %dx.types.CBufRet.f32 %7521, 3
  %7528 = fadd fast float %7527, %7526
  %7529 = call float @dx.op.unary.f32(i32 7, float %7528)  ; Saturate(value)
  %7530 = fmul fast float %7525, %7509
  %7531 = fmul fast float %7530, %7529
  br label %7532

; <label>:7532                                    ; preds = %7493, %7412, %7247, %7229, %7227
  %7533 = phi float [ %7256, %7247 ], [ %7415, %7412 ], [ %7497, %7493 ], [ 0.000000e+00, %7227 ], [ 0.000000e+00, %7229 ]
  %7534 = phi float [ %7290, %7247 ], [ %7449, %7412 ], [ %7531, %7493 ], [ 0.000000e+00, %7227 ], [ 0.000000e+00, %7229 ]
  %7535 = phi float [ %7277, %7247 ], [ %7436, %7412 ], [ %7518, %7493 ], [ 0.000000e+00, %7227 ], [ 0.000000e+00, %7229 ]
  %7536 = phi float [ %7278, %7247 ], [ %7437, %7412 ], [ %7519, %7493 ], [ 0.000000e+00, %7227 ], [ 0.000000e+00, %7229 ]
  %7537 = phi float [ %7279, %7247 ], [ %7438, %7412 ], [ %7520, %7493 ], [ 0.000000e+00, %7227 ], [ 0.000000e+00, %7229 ]
  %7538 = fmul fast float %7170, %7534
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7541 = fsub fast float %7177, %7540
  %7542 = fcmp fast olt float %7538, -2.000000e+01
  %7543 = call float @dx.op.unary.f32(i32 21, float %7538)  ; Exp(value)
  %7544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7545 = extractvalue %dx.types.CBufRet.f32 %7544, 2
  %7546 = extractvalue %dx.types.CBufRet.f32 %7544, 3
  %7547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7548 = extractvalue %dx.types.CBufRet.f32 %7547, 2
  %7549 = fmul fast float %7546, %7541
  %7550 = call float @dx.op.unary.f32(i32 7, float %7549)  ; Saturate(value)
  %7551 = fsub fast float 1.000000e+00, %7550
  %7552 = fmul fast float %7162, 5.000000e-01
  %7553 = fadd fast float %7552, 5.000000e-01
  %7554 = call float @dx.op.unary.f32(i32 7, float %7553)  ; Saturate(value)
  %7555 = fsub fast float 1.000000e+00, %7554
  %7556 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7551)  ; FMax(a,b)
  %7557 = fdiv fast float %7555, %7556
  %7558 = fsub fast float %7541, %7119
  %7559 = call float @dx.op.unary.f32(i32 6, float %7558)  ; FAbs(value)
  %7560 = fmul fast float %7559, %7545
  %7561 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  %7562 = fsub fast float 1.000000e+00, %7560
  %7563 = fmul fast float %7562, %7561
  %7564 = fadd fast float %7563, %7560
  %7565 = fmul fast float %7548, %7541
  %7566 = call float @dx.op.unary.f32(i32 7, float %7565)  ; Saturate(value)
  %7567 = fsub fast float 1.000000e+00, %7564
  %7568 = fmul fast float %7567, %7566
  %7569 = fadd fast float %7568, %7564
  %7570 = call float @dx.op.unary.f32(i32 7, float %7569)  ; Saturate(value)
  %7571 = fadd fast float %7543, -1.000000e+00
  %7572 = select i1 %7542, float -1.000000e+00, float %7571
  %7573 = fmul fast float %7570, %7572
  %7574 = fadd fast float %7573, 1.000000e+00
  %7575 = fsub fast float -0.000000e+00, %7573
  %7576 = fmul fast float %7535, %7575
  %7577 = fmul fast float %7536, %7575
  %7578 = fmul fast float %7537, %7575
  br label %7579

; <label>:7579                                    ; preds = %7532, %7128
  %7580 = phi float [ %7533, %7532 ], [ 0.000000e+00, %7128 ]
  %7581 = phi float [ %7574, %7532 ], [ 1.000000e+00, %7128 ]
  %7582 = phi float [ %7576, %7532 ], [ 0.000000e+00, %7128 ]
  %7583 = phi float [ %7577, %7532 ], [ 0.000000e+00, %7128 ]
  %7584 = phi float [ %7578, %7532 ], [ 0.000000e+00, %7128 ]
  %7585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7586 = extractvalue %dx.types.CBufRet.f32 %7585, 1
  %7587 = fsub fast float 1.000000e+00, %7581
  %7588 = fmul fast float %7587, %7163
  %7589 = fmul fast float %7588, %7586
  %7590 = fsub fast float %7163, %7589
  br i1 %7156, label %7591, label %7620, !dx.controlflow.hints !185

; <label>:7591                                    ; preds = %7579
  %7592 = fmul fast float %7164, %7153
  %7593 = fadd fast float %7592, %7154
  %7594 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7595 = fmul fast float %7135, %7590
  %7596 = fsub fast float -0.000000e+00, %7595
  %7597 = fmul fast float %7136, %7590
  %7598 = fsub fast float -0.000000e+00, %7597
  %7599 = call float @dx.op.unary.f32(i32 21, float %7596)  ; Exp(value)
  %7600 = call float @dx.op.unary.f32(i32 21, float %7598)  ; Exp(value)
  %7601 = call float @dx.op.binary.f32(i32 35, float %7143, float %7599)  ; FMax(a,b)
  %7602 = call float @dx.op.binary.f32(i32 35, float %7143, float %7600)  ; FMax(a,b)
  %7603 = fsub fast float %7602, %7601
  %7604 = fmul fast float %7603, %7594
  %7605 = fadd fast float %7604, %7601
  %7606 = call float @dx.op.unary.f32(i32 7, float %7605)  ; Saturate(value)
  %7607 = fsub fast float %7140, %7145
  %7608 = fsub fast float %7141, %7146
  %7609 = fsub fast float %7142, %7147
  %7610 = fmul fast float %7594, %7607
  %7611 = fmul fast float %7594, %7608
  %7612 = fmul fast float %7594, %7609
  %7613 = fadd fast float %7610, %7145
  %7614 = fadd fast float %7611, %7146
  %7615 = fadd fast float %7612, %7147
  %7616 = fsub fast float 1.000000e+00, %7606
  %7617 = fmul fast float %7616, %7613
  %7618 = fmul fast float %7616, %7614
  %7619 = fmul fast float %7616, %7615
  br label %7679

; <label>:7620                                    ; preds = %7579
  %7621 = fmul fast float %7590, %7152
  %7622 = call float @dx.op.unary.f32(i32 7, float %7621)  ; Saturate(value)
  %7623 = fsub fast float 2.000000e+00, %7622
  %7624 = fmul fast float %7622, 9.921875e-01
  %7625 = fmul fast float %7624, %7623
  %7626 = fadd fast float %7625, 3.906250e-03
  %7627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7626, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7628 = extractvalue %dx.types.ResRet.f32 %7627, 0
  %7629 = fsub fast float %7622, %7628
  %7630 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7629)  ; FMax(a,b)
  %7631 = fmul fast float %7138, %7119
  %7632 = call float @dx.op.unary.f32(i32 6, float %7631)  ; FAbs(value)
  %7633 = fcmp fast ogt float %7632, 0x3EB0C6F7A0000000
  br i1 %7633, label %7634, label %7640, !dx.controlflow.hints !186

; <label>:7634                                    ; preds = %7620
  %7635 = fmul fast float %7631, 0xBFF7154760000000
  %7636 = call float @dx.op.unary.f32(i32 21, float %7635)  ; Exp(value)
  %7637 = fsub fast float 1.000000e+00, %7636
  %7638 = fdiv fast float %7637, %7631
  %7639 = fmul fast float %7638, %7148
  br label %7640

; <label>:7640                                    ; preds = %7634, %7620
  %7641 = phi float [ %7639, %7634 ], [ %7148, %7620 ]
  %7642 = fadd fast float %7641, %7150
  %7643 = fmul fast float %7642, %7630
  %7644 = fmul fast float %7135, %7643
  %7645 = fsub fast float -0.000000e+00, %7644
  %7646 = fmul fast float %7136, %7643
  %7647 = fsub fast float -0.000000e+00, %7646
  %7648 = fmul fast float %7137, %7643
  %7649 = fsub fast float -0.000000e+00, %7648
  %7650 = call float @dx.op.unary.f32(i32 21, float %7645)  ; Exp(value)
  %7651 = call float @dx.op.unary.f32(i32 21, float %7647)  ; Exp(value)
  %7652 = call float @dx.op.unary.f32(i32 21, float %7649)  ; Exp(value)
  %7653 = fmul fast float %7164, %7164
  %7654 = fadd fast float %7653, 1.000000e+00
  %7655 = fmul fast float %7654, 0x3FAE8EC8A0000000
  %7656 = fmul fast float %7655, %7145
  %7657 = fmul fast float %7655, %7146
  %7658 = fmul fast float %7655, %7147
  %7659 = fmul fast float %7164, %7143
  %7660 = fsub fast float 1.000000e+00, %7659
  %7661 = fmul fast float %7143, %7143
  %7662 = fsub fast float 1.000000e+00, %7661
  %7663 = fmul fast float %7662, 0x3FB45F3060000000
  %7664 = fmul fast float %7660, %7660
  %7665 = fdiv fast float 1.000000e+00, %7664
  %7666 = fmul fast float %7663, %7665
  %7667 = fmul fast float %7666, %7140
  %7668 = fmul fast float %7666, %7141
  %7669 = fmul fast float %7666, %7142
  %7670 = fadd fast float %7667, %7656
  %7671 = fadd fast float %7668, %7657
  %7672 = fadd fast float %7669, %7658
  %7673 = fsub fast float 1.000000e+00, %7650
  %7674 = fsub fast float 1.000000e+00, %7651
  %7675 = fsub fast float 1.000000e+00, %7652
  %7676 = fmul fast float %7670, %7673
  %7677 = fmul fast float %7671, %7674
  %7678 = fmul fast float %7672, %7675
  br label %7679

; <label>:7679                                    ; preds = %7640, %7591
  %7680 = phi float [ %7617, %7591 ], [ %7676, %7640 ]
  %7681 = phi float [ %7618, %7591 ], [ %7677, %7640 ]
  %7682 = phi float [ %7619, %7591 ], [ %7678, %7640 ]
  %7683 = phi float [ %7606, %7591 ], [ %7650, %7640 ]
  %7684 = phi float [ %7606, %7591 ], [ %7651, %7640 ]
  %7685 = phi float [ %7606, %7591 ], [ %7652, %7640 ]
  br i1 %7172, label %7686, label %7884, !dx.controlflow.hints !187

; <label>:7686                                    ; preds = %7679
  %7687 = extractvalue %dx.types.CBufRet.f32 %7585, 0
  %7688 = fmul fast float %7687, %7587
  %7689 = fsub fast float %7582, %7680
  %7690 = fsub fast float %7583, %7681
  %7691 = fsub fast float %7584, %7682
  %7692 = fmul fast float %7688, %7689
  %7693 = fmul fast float %7688, %7690
  %7694 = fmul fast float %7688, %7691
  %7695 = fadd fast float %7692, %7680
  %7696 = fadd fast float %7693, %7681
  %7697 = fadd fast float %7694, %7682
  %7698 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7683)  ; FMax(a,b)
  %7699 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7684)  ; FMax(a,b)
  %7700 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7685)  ; FMax(a,b)
  %7701 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7581)  ; FMax(a,b)
  %7702 = call float @dx.op.binary.f32(i32 35, float %7580, float %7590)  ; FMax(a,b)
  %7703 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7702)  ; FMax(a,b)
  %7704 = fdiv fast float %7580, %7703
  %7705 = call float @dx.op.unary.f32(i32 7, float %7704)  ; Saturate(value)
  %7706 = fdiv fast float %7590, %7703
  %7707 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7708 = fcmp fast une float %7701, 1.000000e+00
  br i1 %7708, label %7709, label %7722, !dx.controlflow.hints !188

; <label>:7709                                    ; preds = %7686
  %7710 = call float @dx.op.unary.f32(i32 23, float %7701)  ; Log(value)
  %7711 = fmul fast float %7710, 0x3FE62E4300000000
  %7712 = fmul fast float %7582, %7711
  %7713 = fsub fast float -0.000000e+00, %7712
  %7714 = fmul fast float %7583, %7711
  %7715 = fsub fast float -0.000000e+00, %7714
  %7716 = fmul fast float %7584, %7711
  %7717 = fsub fast float -0.000000e+00, %7716
  %7718 = fsub fast float 1.000000e+00, %7701
  %7719 = fdiv fast float %7713, %7718
  %7720 = fdiv fast float %7715, %7718
  %7721 = fdiv fast float %7717, %7718
  br label %7722

; <label>:7722                                    ; preds = %7709, %7686
  %7723 = phi float [ %7719, %7709 ], [ %7582, %7686 ]
  %7724 = phi float [ %7720, %7709 ], [ %7583, %7686 ]
  %7725 = phi float [ %7721, %7709 ], [ %7584, %7686 ]
  %7726 = phi float [ %7711, %7709 ], [ 0.000000e+00, %7686 ]
  %7727 = fcmp fast une float %7698, 1.000000e+00
  br i1 %7727, label %7728, label %7735, !dx.controlflow.hints !189

; <label>:7728                                    ; preds = %7722
  %7729 = call float @dx.op.unary.f32(i32 23, float %7698)  ; Log(value)
  %7730 = fmul fast float %7729, 0x3FE62E4300000000
  %7731 = fmul fast float %7695, %7730
  %7732 = fsub fast float -0.000000e+00, %7731
  %7733 = fsub fast float 1.000000e+00, %7698
  %7734 = fdiv fast float %7732, %7733
  br label %7735

; <label>:7735                                    ; preds = %7728, %7722
  %7736 = phi float [ %7734, %7728 ], [ %7695, %7722 ]
  %7737 = phi float [ %7730, %7728 ], [ 0.000000e+00, %7722 ]
  %7738 = fcmp fast une float %7699, 1.000000e+00
  br i1 %7738, label %7739, label %7746, !dx.controlflow.hints !189

; <label>:7739                                    ; preds = %7735
  %7740 = call float @dx.op.unary.f32(i32 23, float %7699)  ; Log(value)
  %7741 = fmul fast float %7740, 0x3FE62E4300000000
  %7742 = fmul fast float %7696, %7741
  %7743 = fsub fast float -0.000000e+00, %7742
  %7744 = fsub fast float 1.000000e+00, %7699
  %7745 = fdiv fast float %7743, %7744
  br label %7746

; <label>:7746                                    ; preds = %7739, %7735
  %7747 = phi float [ %7745, %7739 ], [ %7696, %7735 ]
  %7748 = phi float [ %7741, %7739 ], [ 0.000000e+00, %7735 ]
  %7749 = fcmp fast une float %7700, 1.000000e+00
  br i1 %7749, label %7750, label %7757, !dx.controlflow.hints !189

; <label>:7750                                    ; preds = %7746
  %7751 = call float @dx.op.unary.f32(i32 23, float %7700)  ; Log(value)
  %7752 = fmul fast float %7751, 0x3FE62E4300000000
  %7753 = fmul fast float %7697, %7752
  %7754 = fsub fast float -0.000000e+00, %7753
  %7755 = fsub fast float 1.000000e+00, %7700
  %7756 = fdiv fast float %7754, %7755
  br label %7757

; <label>:7757                                    ; preds = %7750, %7746
  %7758 = phi float [ %7756, %7750 ], [ %7697, %7746 ]
  %7759 = phi float [ %7752, %7750 ], [ 0.000000e+00, %7746 ]
  %7760 = fmul fast float %7723, %7707
  %7761 = fmul fast float %7724, %7707
  %7762 = fmul fast float %7725, %7707
  %7763 = fmul fast float %7726, %7707
  %7764 = fmul fast float %7736, %7705
  %7765 = fmul fast float %7747, %7705
  %7766 = fmul fast float %7758, %7705
  %7767 = fmul fast float %7737, %7705
  %7768 = fmul fast float %7748, %7705
  %7769 = fmul fast float %7759, %7705
  %7770 = fadd fast float %7764, %7760
  %7771 = fadd fast float %7765, %7761
  %7772 = fadd fast float %7766, %7762
  %7773 = fadd fast float %7767, %7763
  %7774 = fadd fast float %7768, %7763
  %7775 = fadd fast float %7769, %7763
  %7776 = fcmp fast une float %7773, 0.000000e+00
  br i1 %7776, label %7777, label %7784, !dx.controlflow.hints !190

; <label>:7777                                    ; preds = %7757
  %7778 = fmul fast float %7773, 0x3FF7154760000000
  %7779 = call float @dx.op.unary.f32(i32 21, float %7778)  ; Exp(value)
  %7780 = fsub fast float 1.000000e+00, %7779
  %7781 = fmul fast float %7770, %7780
  %7782 = fsub fast float -0.000000e+00, %7781
  %7783 = fdiv fast float %7782, %7773
  br label %7784

; <label>:7784                                    ; preds = %7777, %7757
  %7785 = phi float [ %7779, %7777 ], [ 1.000000e+00, %7757 ]
  %7786 = phi float [ %7783, %7777 ], [ %7770, %7757 ]
  %7787 = fcmp fast une float %7774, 0.000000e+00
  br i1 %7787, label %7788, label %7795, !dx.controlflow.hints !190

; <label>:7788                                    ; preds = %7784
  %7789 = fmul fast float %7774, 0x3FF7154760000000
  %7790 = call float @dx.op.unary.f32(i32 21, float %7789)  ; Exp(value)
  %7791 = fsub fast float 1.000000e+00, %7790
  %7792 = fmul fast float %7771, %7791
  %7793 = fsub fast float -0.000000e+00, %7792
  %7794 = fdiv fast float %7793, %7774
  br label %7795

; <label>:7795                                    ; preds = %7788, %7784
  %7796 = phi float [ %7790, %7788 ], [ 1.000000e+00, %7784 ]
  %7797 = phi float [ %7794, %7788 ], [ %7771, %7784 ]
  %7798 = fcmp fast une float %7775, 0.000000e+00
  br i1 %7798, label %7799, label %7806, !dx.controlflow.hints !190

; <label>:7799                                    ; preds = %7795
  %7800 = fmul fast float %7775, 0x3FF7154760000000
  %7801 = call float @dx.op.unary.f32(i32 21, float %7800)  ; Exp(value)
  %7802 = fsub fast float 1.000000e+00, %7801
  %7803 = fmul fast float %7772, %7802
  %7804 = fsub fast float -0.000000e+00, %7803
  %7805 = fdiv fast float %7804, %7775
  br label %7806

; <label>:7806                                    ; preds = %7799, %7795
  %7807 = phi float [ %7801, %7799 ], [ 1.000000e+00, %7795 ]
  %7808 = phi float [ %7805, %7799 ], [ %7772, %7795 ]
  %7809 = fcmp fast ogt float %7705, %7707
  br i1 %7809, label %7810, label %7830

; <label>:7810                                    ; preds = %7806
  %7811 = fsub fast float 1.000000e+00, %7707
  %7812 = fmul fast float %7723, %7811
  %7813 = fmul fast float %7724, %7811
  %7814 = fmul fast float %7725, %7811
  %7815 = fmul fast float %7726, %7811
  %7816 = fcmp fast une float %7815, 0.000000e+00
  br i1 %7816, label %7817, label %7868, !dx.controlflow.hints !191

; <label>:7817                                    ; preds = %7810
  %7818 = fmul fast float %7815, 0x3FF7154760000000
  %7819 = call float @dx.op.unary.f32(i32 21, float %7818)  ; Exp(value)
  %7820 = fsub fast float 1.000000e+00, %7819
  %7821 = fmul fast float %7812, %7820
  %7822 = fsub fast float -0.000000e+00, %7821
  %7823 = fmul fast float %7813, %7820
  %7824 = fsub fast float -0.000000e+00, %7823
  %7825 = fmul fast float %7814, %7820
  %7826 = fsub fast float -0.000000e+00, %7825
  %7827 = fdiv fast float %7822, %7815
  %7828 = fdiv fast float %7824, %7815
  %7829 = fdiv fast float %7826, %7815
  br label %7868

; <label>:7830                                    ; preds = %7806
  %7831 = fsub fast float 1.000000e+00, %7705
  %7832 = fmul fast float %7736, %7831
  %7833 = fmul fast float %7747, %7831
  %7834 = fmul fast float %7758, %7831
  %7835 = fmul fast float %7737, %7831
  %7836 = fmul fast float %7748, %7831
  %7837 = fmul fast float %7759, %7831
  %7838 = fcmp fast une float %7835, 0.000000e+00
  br i1 %7838, label %7839, label %7846, !dx.controlflow.hints !190

; <label>:7839                                    ; preds = %7830
  %7840 = fmul fast float %7835, 0x3FF7154760000000
  %7841 = call float @dx.op.unary.f32(i32 21, float %7840)  ; Exp(value)
  %7842 = fsub fast float 1.000000e+00, %7841
  %7843 = fmul fast float %7832, %7842
  %7844 = fsub fast float -0.000000e+00, %7843
  %7845 = fdiv fast float %7844, %7835
  br label %7846

; <label>:7846                                    ; preds = %7839, %7830
  %7847 = phi float [ %7845, %7839 ], [ %7832, %7830 ]
  %7848 = phi float [ %7841, %7839 ], [ 1.000000e+00, %7830 ]
  %7849 = fcmp fast une float %7836, 0.000000e+00
  br i1 %7849, label %7850, label %7857, !dx.controlflow.hints !190

; <label>:7850                                    ; preds = %7846
  %7851 = fmul fast float %7836, 0x3FF7154760000000
  %7852 = call float @dx.op.unary.f32(i32 21, float %7851)  ; Exp(value)
  %7853 = fsub fast float 1.000000e+00, %7852
  %7854 = fmul fast float %7833, %7853
  %7855 = fsub fast float -0.000000e+00, %7854
  %7856 = fdiv fast float %7855, %7836
  br label %7857

; <label>:7857                                    ; preds = %7850, %7846
  %7858 = phi float [ %7856, %7850 ], [ %7833, %7846 ]
  %7859 = phi float [ %7852, %7850 ], [ 1.000000e+00, %7846 ]
  %7860 = fcmp fast une float %7837, 0.000000e+00
  br i1 %7860, label %7861, label %7868, !dx.controlflow.hints !190

; <label>:7861                                    ; preds = %7857
  %7862 = fmul fast float %7837, 0x3FF7154760000000
  %7863 = call float @dx.op.unary.f32(i32 21, float %7862)  ; Exp(value)
  %7864 = fsub fast float 1.000000e+00, %7863
  %7865 = fmul fast float %7834, %7864
  %7866 = fsub fast float -0.000000e+00, %7865
  %7867 = fdiv fast float %7866, %7837
  br label %7868

; <label>:7868                                    ; preds = %7861, %7857, %7817, %7810
  %7869 = phi float [ %7867, %7861 ], [ %7829, %7817 ], [ %7814, %7810 ], [ %7834, %7857 ]
  %7870 = phi float [ %7858, %7861 ], [ %7828, %7817 ], [ %7813, %7810 ], [ %7858, %7857 ]
  %7871 = phi float [ %7847, %7861 ], [ %7827, %7817 ], [ %7812, %7810 ], [ %7847, %7857 ]
  %7872 = phi float [ %7863, %7861 ], [ %7819, %7817 ], [ 1.000000e+00, %7810 ], [ 1.000000e+00, %7857 ]
  %7873 = phi float [ %7859, %7861 ], [ %7819, %7817 ], [ 1.000000e+00, %7810 ], [ %7859, %7857 ]
  %7874 = phi float [ %7848, %7861 ], [ %7819, %7817 ], [ 1.000000e+00, %7810 ], [ %7848, %7857 ]
  %7875 = fmul fast float %7874, %7786
  %7876 = fmul fast float %7873, %7797
  %7877 = fmul fast float %7872, %7808
  %7878 = fadd fast float %7875, %7871
  %7879 = fadd fast float %7876, %7870
  %7880 = fadd fast float %7877, %7869
  %7881 = fmul fast float %7874, %7785
  %7882 = fmul fast float %7873, %7796
  %7883 = fmul fast float %7872, %7807
  br label %7884

; <label>:7884                                    ; preds = %7868, %7679
  %7885 = phi float [ %7883, %7868 ], [ %7685, %7679 ]
  %7886 = phi float [ %7882, %7868 ], [ %7684, %7679 ]
  %7887 = phi float [ %7881, %7868 ], [ %7683, %7679 ]
  %7888 = phi float [ %7880, %7868 ], [ %7682, %7679 ]
  %7889 = phi float [ %7879, %7868 ], [ %7681, %7679 ]
  %7890 = phi float [ %7878, %7868 ], [ %7680, %7679 ]
  %7891 = fmul fast float %7890, %6830
  %7892 = fmul fast float %7889, %6832
  %7893 = fmul fast float %7888, %6834
  %7894 = fmul fast float %7887, %7127
  %7895 = call float @dx.op.dot3.f32(i32 55, float %7887, float %7886, float %7885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7896 = call float @dx.op.dot3.f32(i32 55, float %7891, float %7892, float %7893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7897 = select i1 %237, float %7895, float %7887
  %7898 = select i1 %237, float %7895, float %7886
  %7899 = select i1 %237, float 1.000000e+00, float %7885
  %7900 = select i1 %237, float %7896, float %7891
  %7901 = select i1 %237, float 0.000000e+00, float %7892
  %7902 = select i1 %237, float 0.000000e+00, float %7893
  %7903 = fmul fast float %7897, %7121
  %7904 = fmul fast float %7898, %7122
  %7905 = fmul fast float %7899, %7123
  %7906 = fadd fast float %7903, %7900
  %7907 = fadd fast float %7904, %7901
  %7908 = fadd fast float %7902, %7905
  %7909 = fmul fast float %7897, %7124
  %7910 = fmul fast float %7898, %7125
  %7911 = fmul fast float %7899, %7126
  %7912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.i32 %7912, 0
  %7914 = icmp eq i32 %7913, 0
  br i1 %7914, label %8282, label %7915, !dx.controlflow.hints !192

; <label>:7915                                    ; preds = %7884
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 2
  %7918 = extractvalue %dx.types.CBufRet.f32 %7916, 3
  %7919 = fmul fast float %7917, %99
  %7920 = fmul fast float %7918, %100
  %7921 = fmul fast float %7919, 2.000000e+00
  %7922 = fmul fast float %7920, 2.000000e+00
  %7923 = fsub fast float 1.000000e+00, %7921
  %7924 = fsub fast float 1.000000e+00, %7922
  %7925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7926 = extractvalue %dx.types.CBufRet.f32 %7925, 0
  %7927 = extractvalue %dx.types.CBufRet.f32 %7925, 1
  %7928 = extractvalue %dx.types.CBufRet.f32 %7925, 2
  %7929 = fmul fast float %7923, %7926
  %7930 = fmul fast float %7923, %7927
  %7931 = fmul fast float %7923, %7928
  %7932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7932, 0
  %7934 = extractvalue %dx.types.CBufRet.f32 %7932, 1
  %7935 = extractvalue %dx.types.CBufRet.f32 %7932, 2
  %7936 = fmul fast float %7924, %7933
  %7937 = fmul fast float %7924, %7934
  %7938 = fmul fast float %7924, %7935
  %7939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7939, 0
  %7941 = extractvalue %dx.types.CBufRet.f32 %7939, 1
  %7942 = extractvalue %dx.types.CBufRet.f32 %7939, 2
  %7943 = fadd fast float %7936, %7940
  %7944 = fadd fast float %7943, %7929
  %7945 = fadd fast float %7937, %7941
  %7946 = fadd fast float %7945, %7930
  %7947 = fadd fast float %7938, %7942
  %7948 = fadd fast float %7947, %7931
  %7949 = fmul fast float %7944, %7120
  %7950 = fmul fast float %7946, %7120
  %7951 = fmul fast float %7948, %7120
  %7952 = fmul fast float %7949, %7949
  %7953 = fmul fast float %7950, %7950
  %7954 = fadd fast float %7952, %7953
  %7955 = fmul fast float %7951, %7951
  %7956 = fadd fast float %7954, %7955
  %7957 = call float @dx.op.unary.f32(i32 24, float %7956)  ; Sqrt(value)
  %7958 = extractvalue %dx.types.CBufRet.f32 %6845, 0
  %7959 = fsub fast float %7957, %7958
  %7960 = extractvalue %dx.types.CBufRet.f32 %6845, 2
  %7961 = fmul fast float %7959, %7960
  %7962 = call float @dx.op.unary.f32(i32 7, float %7961)  ; Saturate(value)
  %7963 = fadd fast float %7962, -5.000000e-01
  %7964 = fmul fast float %7963, 2.000000e+00
  %7965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7966 = extractvalue %dx.types.CBufRet.f32 %7965, 2
  %7967 = call float @dx.op.binary.f32(i32 36, float %7966, float %7964)  ; FMin(a,b)
  %7968 = fsub fast float -0.000000e+00, %7966
  %7969 = fcmp fast ogt float %7967, %7968
  br i1 %7969, label %7970, label %8282, !dx.controlflow.hints !193

; <label>:7970                                    ; preds = %7915
  %7971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.f32 %7971, 3
  %7973 = fcmp fast ogt float %7972, 0.000000e+00
  br i1 %7973, label %7974, label %8049, !dx.controlflow.hints !194

; <label>:7974                                    ; preds = %7970
  %7975 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7976 = extractvalue %dx.types.Dimensions %7975, 0
  %7977 = sitofp i32 %7976 to float
  %7978 = extractvalue %dx.types.Dimensions %7975, 1
  %7979 = sitofp i32 %7978 to float
  %7980 = fmul fast float %7919, %7977
  %7981 = fmul fast float %7920, %7979
  %7982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7983 = extractvalue %dx.types.CBufRet.f32 %7982, 1
  %7984 = fsub fast float -0.000000e+00, %7983
  %7985 = fptoui float %7984 to i32
  %7986 = fptoui float %7980 to i32
  %7987 = fptoui float %7981 to i32
  %7988 = and i32 %7985, 31
  %7989 = lshr i32 %7986, %7988
  %7990 = lshr i32 %7987, %7988
  %7991 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7985, i32 %7989, i32 %7990, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7992 = extractvalue %dx.types.ResRet.f32 %7991, 0
  %7993 = fcmp fast olt float %7992, -1.000000e+00
  %7994 = fcmp fast ogt float %7992, -1.000000e+00
  %7995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7996 = extractvalue %dx.types.CBufRet.f32 %7995, 1
  %7997 = select i1 %7994, float %7996, float 1.000000e+00
  %7998 = fadd fast float %7992, 1.000000e+00
  %7999 = fmul fast float %7997, %7998
  %8000 = call float @dx.op.unary.f32(i32 6, float %7999)  ; FAbs(value)
  %8001 = extractvalue %dx.types.CBufRet.f32 %7995, 3
  %8002 = fcmp fast oge float %8000, %8001
  %8003 = select i1 %8002, float 0x4197782600000000, float %8000
  %8004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8005 = extractvalue %dx.types.CBufRet.f32 %8004, 0
  %8006 = extractvalue %dx.types.CBufRet.f32 %8004, 1
  %8007 = extractvalue %dx.types.CBufRet.f32 %8004, 2
  %8008 = select i1 %7993, float %8005, float %7926
  %8009 = select i1 %7993, float %8006, float %7927
  %8010 = select i1 %7993, float %8007, float %7928
  %8011 = fmul fast float %8008, %7923
  %8012 = fmul fast float %8009, %7923
  %8013 = fmul fast float %8010, %7923
  %8014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8015 = extractvalue %dx.types.CBufRet.f32 %8014, 0
  %8016 = extractvalue %dx.types.CBufRet.f32 %8014, 1
  %8017 = extractvalue %dx.types.CBufRet.f32 %8014, 2
  %8018 = select i1 %7993, float %8015, float %7933
  %8019 = select i1 %7993, float %8016, float %7934
  %8020 = select i1 %7993, float %8017, float %7935
  %8021 = fmul fast float %8018, %7924
  %8022 = fmul fast float %8019, %7924
  %8023 = fmul fast float %8020, %7924
  %8024 = fadd fast float %8021, %8011
  %8025 = fadd fast float %8022, %8012
  %8026 = fadd fast float %8023, %8013
  %8027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8028 = extractvalue %dx.types.CBufRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.CBufRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.CBufRet.f32 %8027, 2
  %8031 = select i1 %7993, float %8028, float %7940
  %8032 = select i1 %7993, float %8029, float %7941
  %8033 = select i1 %7993, float %8030, float %7942
  %8034 = fadd fast float %8024, %8031
  %8035 = fadd fast float %8025, %8032
  %8036 = fadd fast float %8026, %8033
  %8037 = fmul fast float %8034, %8003
  %8038 = fmul fast float %8035, %8003
  %8039 = fmul fast float %8036, %8003
  %8040 = fmul fast float %8037, %8037
  %8041 = fmul fast float %8038, %8038
  %8042 = fadd fast float %8040, %8041
  %8043 = fmul fast float %8039, %8039
  %8044 = fadd fast float %8042, %8043
  %8045 = call float @dx.op.unary.f32(i32 24, float %8044)  ; Sqrt(value)
  %8046 = fsub fast float %8045, %7958
  %8047 = fmul fast float %8046, %7960
  %8048 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  br label %8049

; <label>:8049                                    ; preds = %7974, %7970
  %8050 = phi float [ %8048, %7974 ], [ 1.000000e+00, %7970 ]
  %8051 = fmul fast float %7967, 5.000000e-01
  %8052 = fadd fast float %8051, 5.000000e-01
  %8053 = call float @dx.op.unary.f32(i32 22, float %8052)  ; Frc(value)
  %8054 = call float @dx.op.unary.f32(i32 27, float %8053)  ; Round_ni(value)
  %8055 = call float @dx.op.unary.f32(i32 22, float %8053)  ; Frc(value)
  %8056 = fmul fast float %8055, 2.000000e+00
  %8057 = fadd fast float %8056, -1.000000e+00
  %8058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7919, float %7920, float %8054, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8059 = extractvalue %dx.types.ResRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.ResRet.f32 %8058, 1
  %8061 = extractvalue %dx.types.ResRet.f32 %8058, 2
  %8062 = extractvalue %dx.types.ResRet.f32 %8058, 3
  %8063 = fadd fast float %8059, -5.000000e-01
  %8064 = fadd fast float %8061, -5.000000e-01
  %8065 = fmul fast float %8063, 0xBFD5555560000000
  %8066 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8064, float %8065)  ; FMad(a,b,c)
  %8067 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8060, float 0.000000e+00)  ; FMad(a,b,c)
  %8068 = fadd fast float %8067, %8062
  %8069 = fmul fast float %8063, -7.500000e-01
  %8070 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8064, float %8069)  ; FMad(a,b,c)
  %8071 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8060, float 0.000000e+00)  ; FMad(a,b,c)
  %8072 = fadd fast float %8071, %8062
  %8073 = call float @dx.op.binary.f32(i32 35, float %8066, float -1.000000e+00)  ; FMax(a,b)
  %8074 = call float @dx.op.binary.f32(i32 35, float %8068, float -1.000000e+00)  ; FMax(a,b)
  %8075 = call float @dx.op.binary.f32(i32 35, float %8070, float -1.000000e+00)  ; FMax(a,b)
  %8076 = call float @dx.op.binary.f32(i32 35, float %8072, float -1.000000e+00)  ; FMax(a,b)
  %8077 = call float @dx.op.binary.f32(i32 36, float %8073, float 1.000000e+00)  ; FMin(a,b)
  %8078 = call float @dx.op.binary.f32(i32 36, float %8074, float 1.000000e+00)  ; FMin(a,b)
  %8079 = call float @dx.op.binary.f32(i32 36, float %8075, float 1.000000e+00)  ; FMin(a,b)
  %8080 = call float @dx.op.binary.f32(i32 36, float %8076, float 1.000000e+00)  ; FMin(a,b)
  %8081 = fcmp fast olt float %8077, 0x3FEFFF8020000000
  br i1 %8081, label %8082, label %8197, !dx.controlflow.hints !195

; <label>:8082                                    ; preds = %8049
  %8083 = extractvalue %dx.types.CBufRet.f32 %7965, 3
  %8084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8085 = extractvalue %dx.types.CBufRet.f32 %8084, 0
  %8086 = extractvalue %dx.types.CBufRet.f32 %8084, 1
  %8087 = extractvalue %dx.types.CBufRet.f32 %8084, 2
  %8088 = extractvalue %dx.types.CBufRet.f32 %8084, 3
  %8089 = fsub fast float %8085, %8077
  %8090 = fsub fast float %8086, %8078
  %8091 = fsub fast float %8087, %8079
  %8092 = fsub fast float %8088, %8080
  %8093 = fmul fast float %8089, %8083
  %8094 = fmul fast float %8090, %8083
  %8095 = fmul fast float %8091, %8083
  %8096 = fmul fast float %8092, %8083
  %8097 = fadd fast float %8093, %8077
  %8098 = fadd fast float %8094, %8078
  %8099 = fsub fast float -0.000000e+00, %8098
  %8100 = fadd fast float %8095, %8079
  %8101 = fadd fast float %8096, %8080
  %8102 = fmul fast float %8097, %8097
  %8103 = fsub fast float %8098, %8102
  %8104 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8103)  ; FMax(a,b)
  %8105 = fdiv fast float 1.000000e+00, %8104
  %8106 = fmul fast float %8098, %8097
  %8107 = fsub fast float %8100, %8106
  %8108 = fsub fast float %8057, %8097
  %8109 = fmul fast float %8057, %8057
  %8110 = fsub fast float %8109, %8098
  %8111 = fmul fast float %8108, %8105
  %8112 = fmul fast float %8111, %8107
  %8113 = fsub fast float %8110, %8112
  %8114 = fmul fast float %8098, %8098
  %8115 = fsub fast float %8101, %8114
  %8116 = fmul fast float %8107, %8107
  %8117 = fmul fast float %8116, %8105
  %8118 = fsub fast float %8115, %8117
  %8119 = fdiv fast float %8113, %8118
  %8120 = fmul fast float %8107, %8119
  %8121 = fsub fast float %8108, %8120
  %8122 = fmul fast float %8121, %8105
  %8123 = fmul fast float %8122, %8097
  %8124 = fsub fast float 1.000000e+00, %8123
  %8125 = fmul fast float %8098, %8119
  %8126 = fsub fast float %8124, %8125
  %8127 = fmul fast float %8122, %8122
  %8128 = fmul fast float %8119, 4.000000e+00
  %8129 = fmul fast float %8128, %8126
  %8130 = fsub fast float %8127, %8129
  %8131 = call float @dx.op.unary.f32(i32 24, float %8130)  ; Sqrt(value)
  %8132 = fcmp fast oge float %8122, 0.000000e+00
  %8133 = fsub fast float -0.000000e+00, %8131
  %8134 = select i1 %8132, float %8133, float %8131
  %8135 = fsub fast float %8134, %8122
  %8136 = fdiv fast float %8135, %8119
  %8137 = fdiv fast float %8126, %8135
  %8138 = fmul fast float %8136, 5.000000e-01
  %8139 = fmul fast float %8137, 2.000000e+00
  %8140 = select i1 %8132, float %8138, float %8139
  %8141 = select i1 %8132, float %8139, float %8138
  %8142 = call float @dx.op.binary.f32(i32 35, float %8140, float %8141)  ; FMax(a,b)
  %8143 = call float @dx.op.binary.f32(i32 36, float %8140, float %8141)  ; FMin(a,b)
  %8144 = fcmp fast ogt float %8057, %8143
  br i1 %8144, label %8145, label %8155

; <label>:8145                                    ; preds = %8082
  %8146 = fsub fast float %8057, %8143
  %8147 = fsub fast float %8142, %8143
  %8148 = fmul fast float %8146, %8147
  %8149 = fmul fast float %8142, %8057
  %8150 = fadd fast float %8142, %8057
  %8151 = fmul fast float %8150, %8097
  %8152 = fadd fast float %8149, %8098
  %8153 = fsub fast float %8152, %8151
  %8154 = fdiv fast float %8153, %8148
  br label %8155

; <label>:8155                                    ; preds = %8145, %8082
  %8156 = phi float [ %8154, %8145 ], [ 0.000000e+00, %8082 ]
  %8157 = fcmp fast ogt float %8057, %8142
  %8158 = fsub fast float %8057, %8142
  br i1 %8157, label %8159, label %8169

; <label>:8159                                    ; preds = %8155
  %8160 = fsub fast float %8142, %8143
  %8161 = fmul fast float %8160, %8158
  %8162 = fmul fast float %8143, %8057
  %8163 = fadd fast float %8143, %8057
  %8164 = fmul fast float %8163, %8097
  %8165 = fsub fast float %8099, %8162
  %8166 = fadd fast float %8165, %8164
  %8167 = fdiv fast float %8166, %8161
  %8168 = fadd fast float %8167, %8156
  br label %8169

; <label>:8169                                    ; preds = %8159, %8155
  %8170 = phi float [ %8168, %8159 ], [ %8156, %8155 ]
  %8171 = fsub fast float %8057, %8143
  %8172 = fmul fast float %8171, %8158
  %8173 = fmul fast float %8143, %8142
  %8174 = fadd fast float %8143, %8142
  %8175 = fmul fast float %8174, %8097
  %8176 = fadd fast float %8173, %8098
  %8177 = fsub fast float %8176, %8175
  %8178 = fdiv fast float %8177, %8172
  %8179 = call float @dx.op.unary.f32(i32 7, float %8170)  ; Saturate(value)
  %8180 = fcmp fast oeq float %6846, 0.000000e+00
  %8181 = extractvalue %dx.types.CBufRet.f32 %7965, 0
  %8182 = fcmp fast oeq float %8181, 0.000000e+00
  %8183 = or i1 %8180, %8182
  %8184 = fmul fast float %8181, 2.000000e+00
  %8185 = fadd fast float %7966, %7967
  %8186 = fdiv fast float %8185, %8184
  %8187 = call float @dx.op.unary.f32(i32 7, float %8186)  ; Saturate(value)
  %8188 = fmul fast float %8187, 2.000000e+00
  %8189 = fsub fast float 3.000000e+00, %8188
  %8190 = fmul fast float %8187, %8187
  %8191 = fmul fast float %8190, %8189
  %8192 = select i1 %8183, float 1.000000e+00, float %8191
  %8193 = fmul fast float %8178, %6846
  %8194 = fadd fast float %8179, %8193
  %8195 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8196 = fmul fast float %8192, %8195
  br label %8197

; <label>:8197                                    ; preds = %8169, %8049
  %8198 = phi float [ %8196, %8169 ], [ 0.000000e+00, %8049 ]
  %8199 = fsub fast float 1.000000e+00, %8198
  %8200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7919, float %7920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8201 = extractvalue %dx.types.ResRet.f32 %8200, 0
  %8202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.i32 %8202, 2
  %8204 = icmp eq i32 %8203, 0
  br i1 %8204, label %8210, label %8205

; <label>:8205                                    ; preds = %8197
  %8206 = call float @dx.op.unary.f32(i32 7, float %8198)  ; Saturate(value)
  %8207 = fadd fast float %8201, -1.000000e+00
  %8208 = fmul fast float %8206, %8207
  %8209 = fadd fast float %8208, 1.000000e+00
  br label %8210

; <label>:8210                                    ; preds = %8205, %8197
  %8211 = phi float [ %8209, %8205 ], [ %8199, %8197 ]
  br i1 %7973, label %8212, label %8230

; <label>:8212                                    ; preds = %8210
  %8213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8214 = extractvalue %dx.types.CBufRet.f32 %8213, 1
  %8215 = fsub fast float %8050, %8214
  %8216 = call float @dx.op.unary.f32(i32 7, float %8215)  ; Saturate(value)
  %8217 = fsub fast float %8050, %7972
  %8218 = call float @dx.op.unary.f32(i32 7, float %8217)  ; Saturate(value)
  %8219 = fsub fast float %8216, %8218
  %8220 = fsub fast float %8052, %8218
  %8221 = fdiv fast float %8220, %8219
  %8222 = call float @dx.op.unary.f32(i32 7, float %8221)  ; Saturate(value)
  %8223 = fmul fast float %8222, 2.000000e+00
  %8224 = fsub fast float 3.000000e+00, %8223
  %8225 = fsub fast float %8201, %8211
  %8226 = fmul fast float %8222, %8222
  %8227 = fmul fast float %8226, %8225
  %8228 = fmul fast float %8227, %8224
  %8229 = fadd fast float %8228, %8211
  br label %8230

; <label>:8230                                    ; preds = %8212, %8210
  %8231 = phi float [ %8229, %8212 ], [ %8211, %8210 ]
  %8232 = call float @dx.op.binary.f32(i32 35, float %8201, float %8231)  ; FMax(a,b)
  %8233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.i32 %8233, 2
  %8235 = and i32 %8234, 1
  %8236 = icmp eq i32 %8235, 0
  %8237 = fcmp fast une float %8232, 1.000000e+00
  %8238 = and i1 %8237, %8236
  br i1 %8238, label %8239, label %8258

; <label>:8239                                    ; preds = %8230
  %8240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7919, float %7920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8241 = extractvalue %dx.types.ResRet.f32 %8240, 0
  %8242 = extractvalue %dx.types.ResRet.f32 %8240, 1
  %8243 = extractvalue %dx.types.ResRet.f32 %8240, 2
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 1
  %8246 = fmul fast float %8245, %8241
  %8247 = fmul fast float %8245, %8242
  %8248 = fmul fast float %8245, %8243
  %8249 = fcmp fast ogt float %8201, 0x3FEFFF2E40000000
  %8250 = fsub fast float 1.000000e+00, %8232
  %8251 = fsub fast float 1.000000e+00, %8201
  %8252 = fdiv fast float %8250, %8251
  %8253 = call float @dx.op.unary.f32(i32 7, float %8252)  ; Saturate(value)
  %8254 = select i1 %8249, float 0.000000e+00, float %8253
  %8255 = fmul fast float %8246, %8254
  %8256 = fmul fast float %8247, %8254
  %8257 = fmul fast float %8248, %8254
  br label %8258

; <label>:8258                                    ; preds = %8239, %8230
  %8259 = phi float [ 0.000000e+00, %8230 ], [ %8255, %8239 ]
  %8260 = phi float [ 0.000000e+00, %8230 ], [ %8256, %8239 ]
  %8261 = phi float [ 0.000000e+00, %8230 ], [ %8257, %8239 ]
  %8262 = fmul fast float %8259, %6830
  %8263 = fmul fast float %8260, %6832
  %8264 = fmul fast float %8261, %6834
  %8265 = fmul fast float %8232, %7894
  %8266 = call float @dx.op.dot3.f32(i32 55, float %8232, float %8232, float %8232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8267 = call float @dx.op.dot3.f32(i32 55, float %8262, float %8263, float %8264, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8268 = select i1 %237, float %8266, float %8232
  %8269 = select i1 %237, float 1.000000e+00, float %8232
  %8270 = select i1 %237, float %8267, float %8262
  %8271 = select i1 %237, float 0.000000e+00, float %8263
  %8272 = select i1 %237, float 0.000000e+00, float %8264
  %8273 = fmul fast float %8268, %7906
  %8274 = fmul fast float %8268, %7907
  %8275 = fmul fast float %8269, %7908
  %8276 = fadd fast float %8273, %8270
  %8277 = fadd fast float %8274, %8271
  %8278 = fadd fast float %8272, %8275
  %8279 = fmul fast float %8268, %7909
  %8280 = fmul fast float %8268, %7910
  %8281 = fmul fast float %8269, %7911
  br label %8282

; <label>:8282                                    ; preds = %8258, %7915, %7884, %7116
  %8283 = phi float [ %7121, %7116 ], [ %7906, %7884 ], [ %8276, %8258 ], [ %7906, %7915 ]
  %8284 = phi float [ %7122, %7116 ], [ %7907, %7884 ], [ %8277, %8258 ], [ %7907, %7915 ]
  %8285 = phi float [ %7123, %7116 ], [ %7908, %7884 ], [ %8278, %8258 ], [ %7908, %7915 ]
  %8286 = phi float [ %7124, %7116 ], [ %7909, %7884 ], [ %8279, %8258 ], [ %7909, %7915 ]
  %8287 = phi float [ %7125, %7116 ], [ %7910, %7884 ], [ %8280, %8258 ], [ %7910, %7915 ]
  %8288 = phi float [ %7126, %7116 ], [ %7911, %7884 ], [ %8281, %8258 ], [ %7911, %7915 ]
  %8289 = phi float [ %7127, %7116 ], [ %7894, %7884 ], [ %8265, %8258 ], [ %7894, %7915 ]
  %8290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8291 = extractvalue %dx.types.CBufRet.f32 %8290, 2
  %8292 = extractvalue %dx.types.CBufRet.f32 %8290, 3
  %8293 = fmul fast float %8291, %99
  %8294 = fmul fast float %8292, %100
  %8295 = call float @dx.op.unary.f32(i32 7, float %8293)  ; Saturate(value)
  %8296 = call float @dx.op.unary.f32(i32 7, float %8294)  ; Saturate(value)
  %8297 = select i1 %6856, i32 2, i32 0
  %8298 = or i32 %8297, 1
  %8299 = uitofp i32 %8298 to float
  %8300 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8295, float %8296, float %8299, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8301 = extractvalue %dx.types.ResRet.f32 %8300, 0
  %8302 = extractvalue %dx.types.ResRet.f32 %8300, 1
  %8303 = extractvalue %dx.types.ResRet.f32 %8300, 2
  %8304 = extractvalue %dx.types.ResRet.f32 %8300, 3
  %8305 = add nuw nsw i32 %8297, 2
  %8306 = uitofp i32 %8305 to float
  %8307 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8295, float %8296, float %8306, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8308 = extractvalue %dx.types.ResRet.f32 %8307, 0
  %8309 = extractvalue %dx.types.ResRet.f32 %8307, 1
  %8310 = extractvalue %dx.types.ResRet.f32 %8307, 2
  %8311 = extractvalue %dx.types.ResRet.f32 %8307, 3
  %8312 = call float @dx.op.binary.f32(i32 35, float %8302, float %8303)  ; FMax(a,b)
  %8313 = call float @dx.op.binary.f32(i32 35, float %8301, float %8312)  ; FMax(a,b)
  %8314 = call float @dx.op.binary.f32(i32 35, float %8313, float %8304)  ; FMax(a,b)
  %8315 = call float @dx.op.binary.f32(i32 36, float %8309, float %8310)  ; FMin(a,b)
  %8316 = call float @dx.op.binary.f32(i32 36, float %8308, float %8315)  ; FMin(a,b)
  %8317 = call float @dx.op.binary.f32(i32 36, float %8316, float %8311)  ; FMin(a,b)
  %8318 = fmul fast float %8314, 2.550000e+02
  %8319 = fadd fast float %8318, 0x3F70101020000000
  %8320 = fptoui float %8319 to i32
  %8321 = fmul fast float %8317, 2.550000e+02
  %8322 = fadd fast float %8321, 0x3F70101020000000
  %8323 = fptoui float %8322 to i32
  %8324 = icmp ult i32 %8320, %8323
  br i1 %8324, label %8325, label %8494

; <label>:8325                                    ; preds = %8282
  %8326 = fcmp fast ogt float %86, 9.843750e-01
  %8327 = fadd fast float %7120, -4.000000e+00
  %8328 = select i1 %8326, float -4.000000e+00, float %8327
  %8329 = call float @dx.op.binary.f32(i32 35, float %8328, float 0.000000e+00)  ; FMax(a,b)
  %8330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8330, 0
  %8332 = fadd fast float %8331, %8329
  %8333 = extractvalue %dx.types.CBufRet.f32 %8330, 2
  %8334 = fmul fast float %8332, %8333
  %8335 = call float @dx.op.unary.f32(i32 23, float %8334)  ; Log(value)
  %8336 = extractvalue %dx.types.CBufRet.f32 %8330, 3
  %8337 = fmul fast float %8336, %8335
  %8338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8339 = extractvalue %dx.types.CBufRet.f32 %8338, 2
  %8340 = fmul fast float %8337, %8339
  %8341 = call float @dx.op.unary.f32(i32 7, float %8340)  ; Saturate(value)
  %8342 = uitofp i32 %8320 to float
  %8343 = uitofp i32 %8323 to float
  %8344 = fadd fast float %8342, 5.000000e-01
  %8345 = fadd fast float %8343, 5.000000e-01
  %8346 = fmul fast float %8339, %8344
  %8347 = fmul fast float %8339, %8345
  %8348 = fadd fast float %8346, 0x3F0FFB4800000000
  %8349 = fadd fast float %8347, 0xBF0FFB4800000000
  %8350 = call float @dx.op.binary.f32(i32 35, float %8341, float %8348)  ; FMax(a,b)
  %8351 = call float @dx.op.binary.f32(i32 36, float %8350, float %8349)  ; FMin(a,b)
  %8352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8352, 1
  %8354 = extractvalue %dx.types.CBufRet.f32 %8352, 2
  %8355 = extractvalue %dx.types.CBufRet.f32 %8352, 0
  %8356 = select i1 %6856, float %8355, float 0.000000e+00
  %8357 = fmul fast float %8353, %8351
  %8358 = fadd fast float %8356, %8357
  %8359 = fadd fast float %8356, %8354
  %8360 = fsub fast float %8353, %8354
  %8361 = fadd fast float %8360, %8356
  %8362 = call float @dx.op.binary.f32(i32 35, float %8358, float %8359)  ; FMax(a,b)
  %8363 = call float @dx.op.binary.f32(i32 36, float %8362, float %8361)  ; FMin(a,b)
  %8364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %8295, float %8296, float %8363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8365 = extractvalue %dx.types.ResRet.f32 %8364, 0
  %8366 = extractvalue %dx.types.ResRet.f32 %8364, 1
  %8367 = extractvalue %dx.types.ResRet.f32 %8364, 2
  %8368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.i32 %8368, 0
  %8370 = extractvalue %dx.types.CBufRet.i32 %8368, 1
  %8371 = uitofp i32 %8369 to float
  %8372 = uitofp i32 %8370 to float
  %8373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8374 = extractvalue %dx.types.CBufRet.f32 %8373, 0
  %8375 = extractvalue %dx.types.CBufRet.f32 %8373, 1
  %8376 = fmul fast float %8371, %8295
  %8377 = fmul fast float %8372, %8296
  %8378 = fadd fast float %8376, -5.000000e-01
  %8379 = fadd fast float %8377, -5.000000e-01
  %8380 = call float @dx.op.unary.f32(i32 22, float %8378)  ; Frc(value)
  %8381 = call float @dx.op.unary.f32(i32 22, float %8379)  ; Frc(value)
  %8382 = fmul fast float %8380, %8380
  %8383 = fmul fast float %8382, %8380
  %8384 = fsub fast float 3.000000e+00, %8380
  %8385 = fmul fast float %8382, %8384
  %8386 = fmul fast float %8380, 3.000000e+00
  %8387 = fmul fast float %8383, 3.000000e+00
  %8388 = fmul fast float %8382, 6.000000e+00
  %8389 = fsub fast float %8387, %8388
  %8390 = fadd fast float %8389, 4.000000e+00
  %8391 = fmul fast float %8390, 0x3FC5555560000000
  %8392 = fmul fast float %8383, -3.000000e+00
  %8393 = fadd fast float %8382, %8380
  %8394 = fmul fast float %8393, 3.000000e+00
  %8395 = fadd fast float %8392, 1.000000e+00
  %8396 = fadd fast float %8395, %8394
  %8397 = fmul fast float %8383, 0x3FC5555560000000
  %8398 = fmul fast float %8381, %8381
  %8399 = fmul fast float %8398, %8381
  %8400 = fsub fast float 3.000000e+00, %8381
  %8401 = fmul fast float %8398, %8400
  %8402 = fmul fast float %8381, 3.000000e+00
  %8403 = fmul fast float %8399, 3.000000e+00
  %8404 = fmul fast float %8398, 6.000000e+00
  %8405 = fsub fast float %8403, %8404
  %8406 = fadd fast float %8405, 4.000000e+00
  %8407 = fmul fast float %8406, 0x3FC5555560000000
  %8408 = fmul fast float %8399, -3.000000e+00
  %8409 = fadd fast float %8398, %8381
  %8410 = fmul fast float %8409, 3.000000e+00
  %8411 = fadd fast float %8408, 1.000000e+00
  %8412 = fadd fast float %8411, %8410
  %8413 = fmul fast float %8399, 0x3FC5555560000000
  %8414 = fadd fast float %8380, 1.000000e+00
  %8415 = fsub fast float 1.000000e+00, %8386
  %8416 = fadd fast float %8415, %8385
  %8417 = fadd fast float %8416, %8390
  %8418 = fmul fast float %8417, 0x3FC5555560000000
  %8419 = fdiv fast float %8391, %8418
  %8420 = fsub fast float %8414, %8419
  %8421 = fsub fast float 1.000000e+00, %8380
  %8422 = fadd fast float %8396, %8383
  %8423 = fmul fast float %8422, 0x3FC5555560000000
  %8424 = fdiv fast float %8397, %8423
  %8425 = fadd fast float %8421, %8424
  %8426 = fadd fast float %8381, 1.000000e+00
  %8427 = fsub fast float 1.000000e+00, %8402
  %8428 = fadd fast float %8427, %8401
  %8429 = fadd fast float %8428, %8406
  %8430 = fmul fast float %8429, 0x3FC5555560000000
  %8431 = fdiv fast float %8407, %8430
  %8432 = fsub fast float %8426, %8431
  %8433 = fsub fast float 1.000000e+00, %8381
  %8434 = fadd fast float %8412, %8399
  %8435 = fmul fast float %8434, 0x3FC5555560000000
  %8436 = fdiv fast float %8413, %8435
  %8437 = fadd fast float %8436, %8433
  %8438 = fmul fast float %8420, %8374
  %8439 = fsub fast float %8295, %8438
  %8440 = fmul fast float %8425, %8374
  %8441 = fadd fast float %8440, %8295
  %8442 = fmul fast float %8437, %8375
  %8443 = fadd fast float %8442, %8296
  %8444 = fmul fast float %8432, %8375
  %8445 = fsub fast float %8296, %8444
  %8446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8439, float %8445, float %8363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8447 = extractvalue %dx.types.ResRet.f32 %8446, 0
  %8448 = extractvalue %dx.types.ResRet.f32 %8446, 1
  %8449 = extractvalue %dx.types.ResRet.f32 %8446, 2
  %8450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8441, float %8445, float %8363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8451 = extractvalue %dx.types.ResRet.f32 %8450, 0
  %8452 = extractvalue %dx.types.ResRet.f32 %8450, 1
  %8453 = extractvalue %dx.types.ResRet.f32 %8450, 2
  %8454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8439, float %8443, float %8363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8455 = extractvalue %dx.types.ResRet.f32 %8454, 0
  %8456 = extractvalue %dx.types.ResRet.f32 %8454, 1
  %8457 = extractvalue %dx.types.ResRet.f32 %8454, 2
  %8458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8441, float %8443, float %8363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8459 = extractvalue %dx.types.ResRet.f32 %8458, 0
  %8460 = extractvalue %dx.types.ResRet.f32 %8458, 1
  %8461 = extractvalue %dx.types.ResRet.f32 %8458, 2
  %8462 = fsub fast float %8455, %8447
  %8463 = fsub fast float %8456, %8448
  %8464 = fsub fast float %8457, %8449
  %8465 = fmul fast float %8462, %8435
  %8466 = fmul fast float %8463, %8435
  %8467 = fmul fast float %8464, %8435
  %8468 = fadd fast float %8465, %8447
  %8469 = fadd fast float %8466, %8448
  %8470 = fadd fast float %8467, %8449
  %8471 = fsub fast float %8459, %8451
  %8472 = fsub fast float %8460, %8452
  %8473 = fsub fast float %8461, %8453
  %8474 = fmul fast float %8471, %8435
  %8475 = fmul fast float %8472, %8435
  %8476 = fmul fast float %8473, %8435
  %8477 = fsub fast float %8451, %8468
  %8478 = fadd fast float %8477, %8474
  %8479 = fsub fast float %8452, %8469
  %8480 = fadd fast float %8479, %8475
  %8481 = fsub fast float %8453, %8470
  %8482 = fadd fast float %8481, %8476
  %8483 = fmul fast float %8478, %8423
  %8484 = fmul fast float %8480, %8423
  %8485 = fmul fast float %8482, %8423
  %8486 = fadd fast float %8483, %8468
  %8487 = fadd fast float %8484, %8469
  %8488 = fadd fast float %8485, %8470
  %8489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8490 = extractvalue %dx.types.CBufRet.f32 %8489, 1
  %8491 = fmul fast float %8486, %8490
  %8492 = fmul fast float %8487, %8490
  %8493 = fmul fast float %8488, %8490
  br label %8494

; <label>:8494                                    ; preds = %8325, %8282
  %8495 = phi float [ %8365, %8325 ], [ 1.000000e+00, %8282 ]
  %8496 = phi float [ %8366, %8325 ], [ 1.000000e+00, %8282 ]
  %8497 = phi float [ %8367, %8325 ], [ 1.000000e+00, %8282 ]
  %8498 = phi float [ %8491, %8325 ], [ 0.000000e+00, %8282 ]
  %8499 = phi float [ %8492, %8325 ], [ 0.000000e+00, %8282 ]
  %8500 = phi float [ %8493, %8325 ], [ 0.000000e+00, %8282 ]
  %8501 = fmul fast float %8498, %6830
  %8502 = fmul fast float %8499, %6832
  %8503 = fmul fast float %8500, %6834
  %8504 = fmul fast float %8495, %8289
  %8505 = call float @dx.op.dot3.f32(i32 55, float %8495, float %8496, float %8497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8506 = call float @dx.op.dot3.f32(i32 55, float %8501, float %8502, float %8503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8507 = select i1 %237, float %8505, float %8495
  %8508 = select i1 %237, float %8505, float %8496
  %8509 = select i1 %237, float 1.000000e+00, float %8497
  %8510 = select i1 %237, float %8506, float %8501
  %8511 = select i1 %237, float 0.000000e+00, float %8502
  %8512 = select i1 %237, float 0.000000e+00, float %8503
  %8513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8514 = extractvalue %dx.types.CBufRet.i32 %8513, 3
  %8515 = and i32 %8514, 3
  %8516 = icmp ne i32 %8515, 0
  %8517 = and i32 %8514, 4
  %8518 = icmp ne i32 %8517, 0
  %8519 = and i1 %8516, %8518
  %8520 = and i1 %237, %8519
  br i1 %8520, label %8521, label %8527

; <label>:8521                                    ; preds = %8494
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 1
  %8524 = fadd fast float %8504, -1.000000e+00
  %8525 = fmul fast float %8523, %8524
  %8526 = fadd fast float %8525, 1.000000e+00
  br label %8527

; <label>:8527                                    ; preds = %8521, %8494
  %8528 = phi float [ %8526, %8521 ], [ %8504, %8494 ]
  %8529 = fadd fast float %8286, %8283
  %8530 = fmul fast float %8507, %8529
  %8531 = fadd fast float %8530, %8510
  %8532 = fadd fast float %8287, %8284
  %8533 = fmul fast float %8508, %8532
  %8534 = fadd fast float %8533, %8511
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 0
  br i1 %237, label %8537, label %8552

; <label>:8537                                    ; preds = %8527
  %8538 = fadd fast float %8531, %8534
  %8539 = fmul fast float %8536, %8538
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 3
  %8542 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %8543 = fsub fast float %6843, %6837
  %8544 = fadd fast float %8543, %6844
  %8545 = fsub fast float %8544, %8542
  %8546 = extractvalue %dx.types.CBufRet.f32 %6838, 2
  %8547 = fmul fast float %8545, %8546
  %8548 = call float @dx.op.unary.f32(i32 7, float %8547)  ; Saturate(value)
  %8549 = fsub fast float %8548, %8541
  %8550 = fmul fast float %8549, %8528
  %8551 = fadd fast float %8550, %8541
  br label %8578

; <label>:8552                                    ; preds = %8527
  %8553 = fadd fast float %8288, %8285
  %8554 = fmul fast float %8509, %8553
  %8555 = fadd fast float %8554, %8512
  %8556 = fmul fast float %8536, %8531
  %8557 = fmul fast float %8536, %8534
  %8558 = fmul fast float %8536, %8555
  %8559 = call float @dx.op.binary.f32(i32 35, float %8557, float %8558)  ; FMax(a,b)
  %8560 = call float @dx.op.binary.f32(i32 35, float %8556, float %8559)  ; FMax(a,b)
  %8561 = call float @dx.op.binary.f32(i32 35, float %6832, float %6834)  ; FMax(a,b)
  %8562 = call float @dx.op.binary.f32(i32 35, float %6830, float %8561)  ; FMax(a,b)
  %8563 = call float @dx.op.binary.f32(i32 35, float %8560, float %8562)  ; FMax(a,b)
  %8564 = fcmp fast ugt float %8563, 0x3F10000000000000
  br i1 %8564, label %8566, label %8565

; <label>:8565                                    ; preds = %8552
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8566

; <label>:8566                                    ; preds = %8565, %8552
  %8567 = add i32 %71, 116
  %8568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %8567, i32 undef)  ; BufferLoad(srv,index,wot)
  %8569 = extractvalue %dx.types.ResRet.i32 %8568, 0
  %8570 = and i32 %8569, 32
  %8571 = icmp eq i32 %8570, 0
  br i1 %8571, label %8578, label %8572

; <label>:8572                                    ; preds = %8566
  %8573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8574 = extractvalue %dx.types.CBufRet.f32 %8573, 0
  %8575 = fmul fast float %8574, 0x3FE99999A0000000
  %8576 = fadd fast float %8574, %8556
  %8577 = fadd fast float %8575, %8558
  br label %8578

; <label>:8578                                    ; preds = %8572, %8566, %8537
  %8579 = phi float [ 1.000000e+00, %8537 ], [ %6832, %8572 ], [ %6832, %8566 ]
  %8580 = phi float [ 1.000000e+00, %8537 ], [ %6834, %8572 ], [ %6834, %8566 ]
  %8581 = phi float [ %8539, %8537 ], [ %8576, %8572 ], [ %8556, %8566 ]
  %8582 = phi float [ %8551, %8537 ], [ %8557, %8572 ], [ %8557, %8566 ]
  %8583 = phi float [ 1.000000e+00, %8537 ], [ %8577, %8572 ], [ %8558, %8566 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8584 = call float @dx.op.binary.f32(i32 36, float %8581, float 3.225500e+04)  ; FMin(a,b)
  %8585 = call float @dx.op.binary.f32(i32 36, float %8582, float 3.225500e+04)  ; FMin(a,b)
  %8586 = call float @dx.op.binary.f32(i32 36, float %8583, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8584)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8585)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8586)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8587 = call float @dx.op.binary.f32(i32 36, float %6830, float 3.225500e+04)  ; FMin(a,b)
  %8588 = call float @dx.op.binary.f32(i32 36, float %8579, float 3.225500e+04)  ; FMin(a,b)
  %8589 = call float @dx.op.binary.f32(i32 36, float %8580, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8587)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8588)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8589)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!84 = !{[24 x i32] [i32 22, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119]}
!85 = !{void ()* @ps_main, !"ps_main", !86, !4, !105}
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
!101 = !{!102, !103}
!102 = !{i32 0, !"SV_Target", i8 9, i8 16, !89, i8 0, i32 1, i8 4, i32 0, i8 0, !90}
!103 = !{i32 1, !"SV_Target", i8 9, i8 16, !104, i8 0, i32 1, i8 4, i32 1, i8 0, !90}
!104 = !{i32 1}
!105 = !{i32 0, i64 16}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !115}
!115 = !{!"llvm.loop.unroll.disable"}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = !{!122, !122, i64 0}
!122 = !{!"int", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C/C++ TBAA"}
!125 = !{!126, !128, !130, !132}
!126 = distinct !{!126, !127, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!127 = distinct !{!127, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!128 = distinct !{!128, !129, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!129 = distinct !{!129, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!130 = distinct !{!130, !131, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!131 = distinct !{!131, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!132 = distinct !{!132, !133, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!133 = distinct !{!133, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = !{!136, !136, i64 0}
!136 = !{!"float", !123, i64 0}
!137 = distinct !{!137, !115}
!138 = distinct !{!138, !115}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = !{!150, !152, !154, !155, !157, !158, !159, !161, !162, !163}
!150 = distinct !{!150, !151, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!151 = distinct !{!151, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!152 = distinct !{!152, !153, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!153 = distinct !{!153, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!154 = distinct !{!154, !153, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!155 = distinct !{!155, !156, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!156 = distinct !{!156, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!157 = distinct !{!157, !156, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!158 = distinct !{!158, !156, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!159 = distinct !{!159, !160, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!160 = distinct !{!160, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!161 = distinct !{!161, !160, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!162 = distinct !{!162, !160, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!163 = distinct !{!163, !164, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!164 = distinct !{!164, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"\01?sort@@YAXAIAM00@Z: %c"}
!167 = distinct !{!167, !"\01?sort@@YAXAIAM00@Z"}
!168 = !{!169, !170, !150, !152, !154, !155, !157, !158, !159, !161, !162, !163}
!169 = distinct !{!169, !167, !"\01?sort@@YAXAIAM00@Z: %a"}
!170 = distinct !{!170, !167, !"\01?sort@@YAXAIAM00@Z: %b"}
!171 = !{!170}
!172 = !{!169, !166, !150, !152, !154, !155, !157, !158, !159, !161, !162, !163}
!173 = !{!169}
!174 = !{!170, !166, !150, !152, !154, !155, !157, !158, !159, !161, !162, !163}
!175 = !{!176}
!176 = distinct !{!176, !177, !"\01?sort@@YAXAIAM00@Z: %c"}
!177 = distinct !{!177, !"\01?sort@@YAXAIAM00@Z"}
!178 = !{!179, !180, !150, !152, !154, !155, !157, !158, !159, !161, !162, !163}
!179 = distinct !{!179, !177, !"\01?sort@@YAXAIAM00@Z: %a"}
!180 = distinct !{!180, !177, !"\01?sort@@YAXAIAM00@Z: %b"}
!181 = !{!180}
!182 = !{!179, !176, !150, !152, !154, !155, !157, !158, !159, !161, !162, !163}
!183 = !{!179}
!184 = !{!180, !176, !150, !152, !154, !155, !157, !158, !159, !161, !162, !163}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 2}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 1}
!190 = distinct !{!190, !"dx.controlflow.hints", i32 1}
!191 = distinct !{!191, !"dx.controlflow.hints", i32 1}
!192 = distinct !{!192, !"dx.controlflow.hints", i32 1}
!193 = distinct !{!193, !"dx.controlflow.hints", i32 1}
!194 = distinct !{!194, !"dx.controlflow.hints", i32 1}
!195 = distinct !{!195, !"dx.controlflow.hints", i32 1}

