;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xyzw        1     NONE   float   xyzw
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        5     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           6     NONE    uint   x   
; TRANSIENT_INDEX          0    y          6     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: d0d19c7f63d8b91fe79dfd4bc83f0dd9
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
; NORMAL_TRANSFORM         1                 linear       
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
; Number of inputs: 26, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
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
  %70 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = alloca [12 x float], align 4
  %95 = alloca [12 x float], align 4
  %96 = alloca [4 x float], align 4
  %97 = alloca [4 x float], align 4
  %98 = alloca [4 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = alloca [3 x float], align 4
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fmul fast float %104, %90
  %106 = fmul fast float %104, %91
  %107 = fmul fast float %81, %78
  %108 = fmul fast float %82, %77
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %82, %76
  %111 = fmul fast float %80, %78
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %80, %77
  %114 = fmul fast float %81, %76
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %109, %79
  %117 = fmul fast float %112, %79
  %118 = fmul fast float %115, %79
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %122 = fmul fast float %120, 2.000000e+00
  %123 = fmul fast float %122, %105
  %124 = fmul fast float %121, 2.000000e+00
  %125 = fmul fast float %124, %106
  %126 = fsub fast float 1.000000e+00, %123
  %127 = fsub fast float 1.000000e+00, %125
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %126, %129
  %133 = fmul fast float %126, %130
  %134 = fmul fast float %126, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fmul fast float %127, %136
  %140 = fmul fast float %127, %137
  %141 = fmul fast float %127, %138
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = fadd fast float %139, %143
  %147 = fadd fast float %146, %132
  %148 = fadd fast float %140, %144
  %149 = fadd fast float %148, %133
  %150 = fadd fast float %141, %145
  %151 = fadd fast float %150, %134
  %152 = fmul fast float %147, %93
  %153 = fmul fast float %149, %93
  %154 = fmul fast float %151, %93
  %155 = fadd fast float %85, 5.000000e-01
  %156 = fptoui float %155 to i32
  %157 = shl i32 %156, 3
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = or i32 %157, 4
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = and i32 %159, 8191
  %164 = lshr i32 %159, 13
  %165 = and i32 %164, 8191
  %166 = lshr i32 %159, 26
  %167 = and i32 %162, 65535
  %168 = lshr i32 %162, 16
  %169 = uitofp i32 %167 to float
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %172 = uitofp i32 %168 to float
  %173 = uitofp i32 %163 to float
  %174 = fmul fast float %171, %173
  %175 = uitofp i32 %165 to float
  %176 = fmul fast float %171, %175
  %177 = fmul fast float %171, %83
  %178 = fmul fast float %177, %169
  %179 = fmul fast float %171, %84
  %180 = fmul fast float %179, %172
  %181 = fadd fast float %178, %174
  %182 = fadd fast float %176, %180
  %183 = uitofp i32 %166 to float
  %184 = fmul fast float %105, 5.000000e-01
  %185 = fmul fast float %106, 5.000000e-01
  %186 = fptosi float %184 to i32
  %187 = fptosi float %185 to i32
  %188 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %186, i32 %187, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = lshr i32 %189, 18
  %191 = uitofp i32 %190 to float
  %192 = fmul fast float %191, 0x3F4C00EBA0000000
  %193 = call float @dx.op.unary.f32(i32 21, float %192)  ; Exp(value)
  %194 = fadd fast float %193, -1.000000e+00
  %195 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %196 = extractvalue %dx.types.Dimensions %195, 0
  %197 = sitofp i32 %196 to float
  %198 = extractvalue %dx.types.Dimensions %195, 1
  %199 = sitofp i32 %198 to float
  %200 = fcmp fast oge float %184, %197
  %201 = fcmp fast oge float %185, %199
  %202 = or i1 %200, %201
  %203 = select i1 %202, float 0x4197782600000000, float %194
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %206 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %207 = fmul fast float %205, %105
  %208 = fmul fast float %206, %106
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = and i32 %210, 114688
  %212 = icmp ne i32 %211, 0
  %213 = select i1 %212, float %207, float 0.000000e+00
  %214 = select i1 %212, float %208, float 0.000000e+00
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %65, float %213, float %214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = fmul fast float %216, 2.550000e+02
  %218 = fptoui float %217 to i32
  %219 = select i1 %212, i32 %218, i32 0
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.i32 %221, 3
  %223 = and i32 %222, 3
  %224 = icmp ne i32 %223, 0
  %225 = and i32 %222, 4
  %226 = icmp ne i32 %225, 0
  %227 = and i1 %224, %226
  br i1 %227, label %228, label %239

; <label>:228                                     ; preds = %0
  %229 = extractvalue %dx.types.CBufRet.f32 %220, 3
  %230 = fmul fast float %229, %106
  %231 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %232 = fmul fast float %231, %105
  %233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %64, float %232, float %230, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = fsub fast float 1.000000e+00, %234
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = fcmp fast olt float %235, %237
  br label %242

; <label>:239                                     ; preds = %0
  %240 = icmp eq i32 %225, 0
  %241 = and i1 %224, %240
  br label %242

; <label>:242                                     ; preds = %239, %228
  %243 = phi i1 [ %238, %228 ], [ %241, %239 ]
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %246 = fmul fast float %245, 0x3FE3C6EF40000000
  %247 = frem fast float %105, 2.560000e+02
  %248 = frem fast float %106, 2.560000e+02
  %249 = fptoui float %247 to i32
  %250 = fptoui float %248 to i32
  %251 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %249, i32 %250, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = fadd fast float %252, %246
  %254 = call float @dx.op.unary.f32(i32 22, float %253)  ; Frc(value)
  %255 = add i32 %71, 92
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = shl i32 %257, 4
  %259 = and i32 %258, 32752
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %257, 7
  %262 = and i32 %261, 32752
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %257, 22
  %265 = shl nuw nsw i32 %264, 5
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = add i32 %71, 120
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = lshr i32 %269, 8
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = lshr i32 %269, 16
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = add i32 %71, 36
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = add i32 %71, 160
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = add i32 %71, 108
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %289, 4
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %289, 7
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %289, 22
  %297 = shl nuw nsw i32 %296, 5
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = add i32 %71, 136
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %301, 8
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %301, 16
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = add i32 %71, 52
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %71, 176
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = fmul fast float %324, 0x3F50624DE0000000
  %328 = fmul fast float %326, 0x3F50624DE0000000
  %329 = add i32 %71, 188
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = lshr i32 %331, 20
  %333 = and i32 %332, 3
  %334 = add nuw nsw i32 %333, 1
  %335 = add i32 %71, 24
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = add i32 %71, 28
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = or i32 %340, %337
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %991, label %343

; <label>:343                                     ; preds = %242
  %344 = lshr i32 %286, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %345, 0x3F50624DE0000000
  %347 = and i32 %286, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = fmul fast float %348, 0x3F50624DE0000000
  %350 = lshr i32 %283, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = and i32 %283, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = add i32 %71, 156
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = lshr i32 %356, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %358, 0x3F50624DE0000000
  %360 = add i32 %71, 56
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = lshr i32 %362, 16
  %364 = and i32 %363, 255
  %365 = lshr i32 %362, 24
  %366 = add i32 %71, 164
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 65535
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %368, 16
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = add i32 %71, 32
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = lshr i32 %375, 22
  %377 = shl nuw nsw i32 %376, 5
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = shl i32 %375, 4
  %380 = and i32 %379, 32752
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %375, 7
  %383 = and i32 %382, 32752
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 3
  %387 = fmul fast float %386, 1.000000e+03
  %388 = fmul fast float %349, %387
  %389 = call float @dx.op.unary.f32(i32 22, float %388)  ; Frc(value)
  %390 = fadd fast float %389, %353
  %391 = fmul fast float %346, %387
  %392 = call float @dx.op.unary.f32(i32 22, float %391)  ; Frc(value)
  %393 = fadd fast float %392, %351
  %394 = fmul fast float %359, %387
  %395 = call float @dx.op.unary.f32(i32 22, float %394)  ; Frc(value)
  %396 = fmul fast float %395, 0x401921FB60000000
  %397 = fadd fast float %396, %378
  %398 = call float @dx.op.unary.f32(i32 13, float %397)  ; Sin(value)
  %399 = call float @dx.op.unary.f32(i32 12, float %397)  ; Cos(value)
  %400 = fsub fast float -0.000000e+00, %398
  %401 = fadd fast float %86, -5.000000e-01
  %402 = fadd fast float %87, -5.000000e-01
  %403 = fmul fast float %370, %401
  %404 = fmul fast float %372, %402
  %405 = fadd fast float %403, 5.000000e-01
  %406 = fadd fast float %404, 5.000000e-01
  %407 = fmul fast float %381, %405
  %408 = fmul fast float %384, %406
  %409 = fmul fast float %399, %407
  %410 = call float @dx.op.tertiary.f32(i32 46, float %400, float %408, float %409)  ; FMad(a,b,c)
  %411 = fmul fast float %398, %407
  %412 = call float @dx.op.tertiary.f32(i32 46, float %399, float %408, float %411)  ; FMad(a,b,c)
  %413 = fadd fast float %390, %410
  %414 = fadd fast float %393, %412
  %415 = icmp ugt i32 %364, 1
  %416 = icmp ugt i32 %362, 33554431
  %417 = or i1 %416, %415
  br i1 %417, label %418, label %443

; <label>:418                                     ; preds = %343
  %419 = add i32 %71, 132
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = lshr i32 %421, 16
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = fmul fast float %386, %423
  %425 = call float @dx.op.unary.f32(i32 22, float %424)  ; Frc(value)
  %426 = mul nuw nsw i32 %364, %365
  %427 = uitofp i32 %426 to float
  %428 = fmul fast float %425, %427
  %429 = call float @dx.op.unary.f32(i32 27, float %428)  ; Round_ni(value)
  %430 = fptoui float %429 to i32
  %431 = urem i32 %430, %364
  %432 = udiv i32 %430, %365
  %433 = call float @dx.op.unary.f32(i32 22, float %413)  ; Frc(value)
  %434 = call float @dx.op.unary.f32(i32 22, float %414)  ; Frc(value)
  %435 = uitofp i32 %431 to float
  %436 = uitofp i32 %432 to float
  %437 = fadd fast float %433, %435
  %438 = fadd fast float %434, %436
  %439 = uitofp i32 %364 to float
  %440 = uitofp i32 %365 to float
  %441 = fdiv fast float %437, %439
  %442 = fdiv fast float %438, %440
  br label %443

; <label>:443                                     ; preds = %418, %343
  %444 = phi float [ %441, %418 ], [ %413, %343 ]
  %445 = phi float [ %442, %418 ], [ %414, %343 ]
  %446 = and i32 %337, 16777216
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %554, label %448

; <label>:448                                     ; preds = %443
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %452 = extractvalue %dx.types.CBufRet.f32 %449, 2
  %453 = fadd fast float %450, %152
  %454 = fadd fast float %451, %153
  %455 = fadd fast float %452, %154
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %458 = call float @dx.op.unary.f32(i32 7, float %457)  ; Saturate(value)
  %459 = icmp eq i32 %70, 65535
  br i1 %459, label %554, label %460

; <label>:460                                     ; preds = %448
  %461 = lshr i32 %70, 1
  %462 = shl i32 %461, 2
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %70, 1
  %466 = icmp ne i32 %465, 0
  %467 = lshr i32 %464, 16
  %468 = and i32 %464, 65535
  %469 = select i1 %466, i32 %467, i32 %468
  %470 = icmp eq i32 %469, 65535
  br i1 %470, label %550, label %471

; <label>:471                                     ; preds = %460
  %472 = mul nuw nsw i32 %469, 40
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = add nuw nsw i32 %472, 12
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = add nuw nsw i32 %472, 24
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = extractvalue %dx.types.ResRet.f32 %483, 1
  %486 = extractvalue %dx.types.ResRet.f32 %483, 2
  %487 = add nuw nsw i32 %472, 36
  %488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  %490 = fsub fast float %453, %474
  %491 = fsub fast float %454, %475
  %492 = fsub fast float %455, %476
  %493 = fmul fast float %489, %490
  %494 = fmul fast float %489, %491
  %495 = fmul fast float %489, %492
  %496 = call float @dx.op.unary.f32(i32 27, float %493)  ; Round_ni(value)
  %497 = call float @dx.op.unary.f32(i32 27, float %494)  ; Round_ni(value)
  %498 = call float @dx.op.unary.f32(i32 27, float %495)  ; Round_ni(value)
  %499 = fadd fast float %496, 5.000000e-01
  %500 = fadd fast float %497, 5.000000e-01
  %501 = fadd fast float %498, 5.000000e-01
  %502 = fmul fast float %499, %479
  %503 = fmul fast float %500, %480
  %504 = fmul fast float %501, %481
  %505 = shl i32 %70, 2
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = add i32 %507, 0
  %509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %510 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %511 = call float @dx.op.unary.f32(i32 22, float %503)  ; Frc(value)
  %512 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %509, %dx.types.Handle %65, float %510, float %511, float %512, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = extractvalue %dx.types.ResRet.f32 %513, 1
  %516 = extractvalue %dx.types.ResRet.f32 %513, 2
  %517 = fmul fast float %514, 1.023000e+03
  %518 = fmul fast float %515, 1.023000e+03
  %519 = fmul fast float %516, 1.023000e+03
  %520 = fadd fast float %517, 5.000000e-01
  %521 = fadd fast float %518, 5.000000e-01
  %522 = fadd fast float %519, 5.000000e-01
  %523 = call float @dx.op.unary.f32(i32 27, float %520)  ; Round_ni(value)
  %524 = call float @dx.op.unary.f32(i32 27, float %521)  ; Round_ni(value)
  %525 = call float @dx.op.unary.f32(i32 27, float %522)  ; Round_ni(value)
  %526 = fsub fast float %493, %496
  %527 = fsub fast float %494, %497
  %528 = fsub fast float %495, %498
  %529 = fmul fast float %526, 7.500000e-01
  %530 = fmul fast float %527, 7.500000e-01
  %531 = fmul fast float %528, 7.500000e-01
  %532 = fadd fast float %496, 1.250000e-01
  %533 = fadd fast float %532, %529
  %534 = fadd fast float %533, %523
  %535 = fadd fast float %497, 1.250000e-01
  %536 = fadd fast float %535, %530
  %537 = fadd fast float %536, %524
  %538 = fadd fast float %498, 1.250000e-01
  %539 = fadd fast float %538, %531
  %540 = fadd fast float %539, %525
  %541 = fmul fast float %534, %484
  %542 = fmul fast float %537, %485
  %543 = fmul fast float %540, %486
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = add i32 %545, 0
  %547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %547, %dx.types.Handle %63, float %541, float %542, float %543, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  br label %550

; <label>:550                                     ; preds = %471, %460
  %551 = phi float [ %549, %471 ], [ -1.000000e+00, %460 ]
  %552 = fadd fast float %551, %458
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  br label %554

; <label>:554                                     ; preds = %550, %448, %443
  %555 = phi float [ 1.000000e+00, %443 ], [ %553, %550 ], [ %458, %448 ]
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 256
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %606, label %560

; <label>:560                                     ; preds = %554
  %561 = add i32 %71, 232
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = add i32 %563, 0
  %565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %565, %dx.types.Handle %102, float %444, float %445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = add i32 %71, 68
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = shl i32 %570, 4
  %572 = and i32 %571, 32752
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = lshr i32 %570, 7
  %575 = and i32 %574, 32752
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = fsub fast float 1.000000e+00, %555
  %578 = call float @dx.op.binary.f32(i32 35, float %577, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %579 = bitcast float %555 to i32
  %580 = sitofp i32 %579 to float
  %581 = fadd fast float %580, 0xC1CFBF8940000000
  %582 = fmul fast float %576, %581
  %583 = fadd fast float %582, 0x41CFBF8940000000
  %584 = fptosi float %583 to i32
  %585 = bitcast i32 %584 to float
  %586 = bitcast float %578 to i32
  %587 = sitofp i32 %586 to float
  %588 = fadd fast float %587, 0xC1CFBF8940000000
  %589 = fmul fast float %588, %576
  %590 = fadd fast float %589, 0x41CFBF8940000000
  %591 = fptosi float %590 to i32
  %592 = bitcast i32 %591 to float
  %593 = fmul fast float %585, %573
  %594 = fmul fast float %592, %573
  %595 = fsub fast float %578, %593
  %596 = fadd fast float %594, %578
  %597 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %598 = call float @dx.op.unary.f32(i32 7, float %596)  ; Saturate(value)
  %599 = fsub fast float %567, %597
  %600 = fsub fast float %598, %597
  %601 = bitcast float %600 to i32
  %602 = sub nsw i32 2129859010, %601
  %603 = bitcast i32 %602 to float
  %604 = fmul fast float %603, %599
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  br label %606

; <label>:606                                     ; preds = %560, %554
  %607 = phi float [ %605, %560 ], [ %555, %554 ]
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = and i32 %609, 128
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %628, label %612

; <label>:612                                     ; preds = %606
  %613 = add i32 %71, 224
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = add i32 %615, 0
  %617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %617, %dx.types.Handle %102, float %444, float %445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = and i32 %621, 524288
  %623 = icmp ne i32 %622, 0
  %624 = fcmp fast ogt float %619, 0x3FE0101020000000
  %625 = select i1 %624, float 1.000000e+00, float 0.000000e+00
  %626 = select i1 %623, float %625, float %619
  %627 = fmul fast float %626, %607
  br label %628

; <label>:628                                     ; preds = %612, %606
  %629 = phi float [ %627, %612 ], [ %607, %606 ]
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = and i32 %631, 16
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %832, label %634

; <label>:634                                     ; preds = %628
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = add i32 %71, 200
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = add i32 %639, 0
  %641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %641, %dx.types.Handle %101, float %444, float %445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = extractvalue %dx.types.ResRet.f32 %642, 3
  %647 = and i32 %636, 255
  %648 = uitofp i32 %647 to float
  %649 = lshr i32 %636, 8
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %646, %648
  %653 = fadd fast float %652, %651
  %654 = fmul fast float %653, 0x3F70101000000000
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = and i32 %656, 512
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %667, label %659

; <label>:659                                     ; preds = %634
  %660 = add i32 %71, 240
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = add i32 %662, 0
  %664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %664, %dx.types.Handle %102, float %444, float %445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  br label %667

; <label>:667                                     ; preds = %659, %634
  %668 = phi float [ %666, %659 ], [ 1.000000e+00, %634 ]
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 33554432
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %779, label %673

; <label>:673                                     ; preds = %667
  %674 = add i32 %71, 128
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = and i32 %676, 65535
  %678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %677)  ; LegacyF16ToF32(value)
  %679 = lshr i32 %676, 16
  %680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %679)  ; LegacyF16ToF32(value)
  %681 = add i32 %71, 132
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 65535
  %685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %684)  ; LegacyF16ToF32(value)
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %702 = add i32 %71, 124
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = lshr i32 %704, 24
  %706 = uitofp i32 %705 to float
  %707 = fmul fast float %706, 0x3F70101020000000
  %708 = and i32 %704, 255
  %709 = uitofp i32 %708 to float
  %710 = fmul fast float %709, 0x3F70101020000000
  %711 = lshr i32 %704, 8
  %712 = and i32 %711, 255
  %713 = uitofp i32 %712 to float
  %714 = fmul fast float %713, 0x3F70101020000000
  %715 = lshr i32 %704, 16
  %716 = and i32 %715, 255
  %717 = uitofp i32 %716 to float
  %718 = fmul fast float %717, 0x3F70101020000000
  %719 = bitcast float %643 to i32
  %720 = ashr i32 %719, 1
  %721 = sub nsw i32 1597463174, %720
  %722 = bitcast i32 %721 to float
  %723 = fmul fast float %643, 5.000000e-01
  %724 = fmul fast float %722, %722
  %725 = fmul fast float %724, %723
  %726 = fsub fast float 1.500000e+00, %725
  %727 = fmul fast float %722, %643
  %728 = fmul fast float %727, %726
  %729 = bitcast float %644 to i32
  %730 = ashr i32 %729, 1
  %731 = sub nsw i32 1597463174, %730
  %732 = bitcast i32 %731 to float
  %733 = fmul fast float %644, 5.000000e-01
  %734 = fmul fast float %732, %732
  %735 = fmul fast float %734, %733
  %736 = fsub fast float 1.500000e+00, %735
  %737 = fmul fast float %732, %644
  %738 = fmul fast float %737, %736
  %739 = bitcast float %645 to i32
  %740 = ashr i32 %739, 1
  %741 = sub nsw i32 1597463174, %740
  %742 = bitcast i32 %741 to float
  %743 = fmul fast float %645, 5.000000e-01
  %744 = fmul fast float %742, %742
  %745 = fmul fast float %744, %743
  %746 = fsub fast float 1.500000e+00, %745
  %747 = fmul fast float %742, %645
  %748 = fmul fast float %747, %746
  %749 = fsub fast float %728, %710
  %750 = fsub fast float %738, %714
  %751 = fsub fast float %748, %718
  %752 = fmul fast float %749, %678
  %753 = fmul fast float %750, %680
  %754 = fmul fast float %751, %685
  %755 = fadd fast float %752, %693
  %756 = fadd fast float %753, %697
  %757 = fadd fast float %754, %701
  %758 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  %759 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %760 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %761 = fmul fast float %758, %758
  %762 = fmul fast float %759, %759
  %763 = fmul fast float %760, %760
  %764 = fsub fast float %761, %643
  %765 = fsub fast float %762, %644
  %766 = fsub fast float %763, %645
  %767 = fmul fast float %764, %668
  %768 = fmul fast float %765, %668
  %769 = fmul fast float %766, %668
  %770 = fadd fast float %767, %643
  %771 = fadd fast float %768, %644
  %772 = fadd fast float %769, %645
  %773 = fadd fast float %690, %654
  %774 = fsub fast float %773, %707
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %776 = fsub fast float %775, %654
  %777 = fmul fast float %776, %668
  %778 = fadd fast float %777, %654
  br label %832

; <label>:779                                     ; preds = %667
  %780 = and i32 %670, 134217728
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %816, label %782

; <label>:782                                     ; preds = %779
  %783 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %784 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %785 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %786 = fadd fast float %783, -5.000000e-01
  %787 = fadd fast float %784, -5.000000e-01
  %788 = fadd fast float %785, -5.000000e-01
  %789 = fmul fast float %786, %668
  %790 = fmul fast float %787, %668
  %791 = fmul fast float %788, %668
  %792 = fadd fast float %789, 5.000000e-01
  %793 = fadd fast float %790, 5.000000e-01
  %794 = fadd fast float %791, 5.000000e-01
  %795 = call float @dx.op.unary.f32(i32 24, float %643)  ; Sqrt(value)
  %796 = call float @dx.op.unary.f32(i32 24, float %644)  ; Sqrt(value)
  %797 = call float @dx.op.unary.f32(i32 24, float %645)  ; Sqrt(value)
  %798 = fmul fast float %792, 2.000000e+00
  %799 = fsub fast float 1.000000e+00, %798
  %800 = fmul fast float %799, %795
  %801 = fadd fast float %800, %798
  %802 = fmul fast float %801, %795
  %803 = fmul fast float %793, 2.000000e+00
  %804 = fsub fast float 1.000000e+00, %803
  %805 = fmul fast float %804, %796
  %806 = fadd fast float %805, %803
  %807 = fmul fast float %806, %796
  %808 = fmul fast float %794, 2.000000e+00
  %809 = fsub fast float 1.000000e+00, %808
  %810 = fmul fast float %809, %797
  %811 = fadd fast float %810, %808
  %812 = fmul fast float %811, %797
  %813 = fmul fast float %802, %802
  %814 = fmul fast float %807, %807
  %815 = fmul fast float %812, %812
  br label %832

; <label>:816                                     ; preds = %779
  %817 = fmul fast float %272, %272
  %818 = fmul fast float %276, %276
  %819 = fmul fast float %280, %280
  %820 = fadd fast float %817, -1.000000e+00
  %821 = fadd fast float %818, -1.000000e+00
  %822 = fadd fast float %819, -1.000000e+00
  %823 = fmul fast float %668, %820
  %824 = fmul fast float %668, %821
  %825 = fmul fast float %668, %822
  %826 = fadd fast float %823, 1.000000e+00
  %827 = fadd fast float %824, 1.000000e+00
  %828 = fadd fast float %825, 1.000000e+00
  %829 = fmul fast float %826, %643
  %830 = fmul fast float %827, %644
  %831 = fmul fast float %828, %645
  br label %832

; <label>:832                                     ; preds = %816, %782, %673, %628
  %833 = phi float [ %778, %673 ], [ %654, %782 ], [ %654, %816 ], [ 0x3FA23C0BE0000000, %628 ]
  %834 = phi float [ %770, %673 ], [ %813, %782 ], [ %829, %816 ], [ 1.000000e+00, %628 ]
  %835 = phi float [ %771, %673 ], [ %814, %782 ], [ %830, %816 ], [ 1.000000e+00, %628 ]
  %836 = phi float [ %772, %673 ], [ %815, %782 ], [ %831, %816 ], [ 1.000000e+00, %628 ]
  %837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.i32 %837, 1
  %839 = and i32 %838, 1
  %840 = icmp ne i32 %839, 0
  %841 = add i32 %71, 196
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, 32
  %845 = icmp ne i32 %844, 0
  %846 = and i1 %840, %845
  %847 = select i1 %846, float 1.000000e+00, float %834
  %848 = select i1 %846, float 0x3FD3333340000000, float %835
  %849 = select i1 %846, float 0x3FD3333340000000, float %836
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 32
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %926, label %854

; <label>:854                                     ; preds = %832
  %855 = add i32 %71, 60
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = add i32 %71, 208
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = add i32 %860, 0
  %862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %861, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %863 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %862, %dx.types.Handle %101, float %444, float %445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = extractvalue %dx.types.ResRet.f32 %863, 1
  %866 = extractvalue %dx.types.ResRet.f32 %863, 2
  %867 = extractvalue %dx.types.ResRet.f32 %863, 3
  %868 = and i32 %857, 255
  %869 = uitofp i32 %868 to float
  %870 = lshr i32 %857, 8
  %871 = and i32 %870, 255
  %872 = uitofp i32 %871 to float
  %873 = lshr i32 %857, 16
  %874 = and i32 %873, 255
  %875 = uitofp i32 %874 to float
  %876 = fmul fast float %875, 0x3F70101000000000
  %877 = fmul fast float %864, %869
  %878 = fadd fast float %877, %872
  %879 = fmul fast float %878, 0x3F70101000000000
  %880 = fadd fast float %865, -5.000000e-01
  %881 = fadd fast float %867, -5.000000e-01
  %882 = fmul fast float %880, %876
  %883 = fmul fast float %881, %876
  %884 = fadd fast float %882, 5.000000e-01
  %885 = fadd fast float %883, 5.000000e-01
  %886 = fmul fast float %884, 2.000000e+00
  %887 = fadd fast float %886, -1.000000e+00
  %888 = fmul fast float %885, 2.000000e+00
  %889 = fadd fast float %888, -1.000000e+00
  %890 = fadd fast float %887, %889
  %891 = fmul fast float %890, 5.000000e-01
  %892 = fsub fast float %887, %889
  %893 = fmul fast float %892, 5.000000e-01
  %894 = call float @dx.op.unary.f32(i32 6, float %891)  ; FAbs(value)
  %895 = fsub fast float 1.000000e+00, %894
  %896 = call float @dx.op.unary.f32(i32 6, float %893)  ; FAbs(value)
  %897 = fsub fast float %895, %896
  %898 = call float @dx.op.dot3.f32(i32 55, float %891, float %893, float %897, float %891, float %893, float %897)  ; Dot3(ax,ay,az,bx,by,bz)
  %899 = call float @dx.op.unary.f32(i32 25, float %898)  ; Rsqrt(value)
  %900 = fmul fast float %891, %899
  %901 = fmul fast float %893, %899
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = and i32 %903, 67108864
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %922, label %906

; <label>:906                                     ; preds = %854
  %907 = add i32 %71, 152
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = and i32 %909, 65535
  %911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %910)  ; LegacyF16ToF32(value)
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 65535
  %915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %914)  ; LegacyF16ToF32(value)
  %916 = lshr i32 %909, 16
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = fsub fast float %879, %917
  %919 = fmul fast float %918, %911
  %920 = fadd fast float %919, %915
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  br label %922

; <label>:922                                     ; preds = %906, %854
  %923 = phi float [ %921, %906 ], [ %879, %854 ]
  %924 = call float @dx.op.dot2.f32(i32 54, float %900, float %901, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %925 = call float @dx.op.dot2.f32(i32 54, float %900, float %901, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %926

; <label>:926                                     ; preds = %922, %832
  %927 = phi float [ %923, %922 ], [ 0x3FD6666660000000, %832 ]
  %928 = phi float [ %924, %922 ], [ 0.000000e+00, %832 ]
  %929 = phi float [ %925, %922 ], [ 0.000000e+00, %832 ]
  %930 = phi float [ %866, %922 ], [ 1.000000e+00, %832 ]
  %931 = add i32 %71, 96
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = lshr i32 %933, 22
  %935 = shl nuw nsw i32 %934, 5
  %936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %935)  ; LegacyF16ToF32(value)
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = and i32 %938, 64
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %974, label %941

; <label>:941                                     ; preds = %926
  %942 = add i32 %71, 216
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = add i32 %944, 0
  %946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = and i32 %948, 131072
  %950 = icmp eq i32 %949, 0
  %951 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %946, %dx.types.Handle %101, float %444, float %445, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %952 = extractvalue %dx.types.ResRet.f32 %951, 0
  %953 = extractvalue %dx.types.ResRet.f32 %951, 1
  %954 = extractvalue %dx.types.ResRet.f32 %951, 2
  %955 = fmul fast float %952, %260
  %956 = fmul fast float %953, %263
  %957 = fmul fast float %954, %266
  br i1 %950, label %964, label %958

; <label>:958                                     ; preds = %941
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = fmul fast float %960, %955
  %962 = fmul fast float %960, %956
  %963 = fmul fast float %960, %957
  br label %964

; <label>:964                                     ; preds = %958, %941
  %965 = phi float [ %961, %958 ], [ %955, %941 ]
  %966 = phi float [ %962, %958 ], [ %956, %941 ]
  %967 = phi float [ %963, %958 ], [ %957, %941 ]
  %968 = fmul fast float %965, %936
  %969 = select i1 %243, float %968, float %965
  %970 = call float @dx.op.dot3.f32(i32 55, float %969, float %966, float %967, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = select i1 %243, float 0.000000e+00, float %965
  %972 = select i1 %243, float %970, float %966
  %973 = select i1 %243, float 0.000000e+00, float %967
  br label %974

; <label>:974                                     ; preds = %964, %926
  %975 = phi float [ %971, %964 ], [ 0.000000e+00, %926 ]
  %976 = phi float [ %972, %964 ], [ 0.000000e+00, %926 ]
  %977 = phi float [ %973, %964 ], [ 0.000000e+00, %926 ]
  %978 = add i32 %71, 64
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = lshr i32 %980, 8
  %984 = and i32 %983, 255
  %985 = uitofp i32 %984 to float
  %986 = call float @dx.op.dot3.f32(i32 55, float %847, float %848, float %849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %987 = fmul fast float %985, %986
  %988 = fadd fast float %987, %982
  %989 = fmul fast float %988, 0x3F70101020000000
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  br label %991

; <label>:991                                     ; preds = %974, %242
  %992 = phi float [ %928, %974 ], [ 0.000000e+00, %242 ]
  %993 = phi float [ %929, %974 ], [ 0.000000e+00, %242 ]
  %994 = phi float [ %847, %974 ], [ 0.000000e+00, %242 ]
  %995 = phi float [ %848, %974 ], [ 0.000000e+00, %242 ]
  %996 = phi float [ %849, %974 ], [ 0.000000e+00, %242 ]
  %997 = phi float [ %975, %974 ], [ 0.000000e+00, %242 ]
  %998 = phi float [ %976, %974 ], [ 0.000000e+00, %242 ]
  %999 = phi float [ %977, %974 ], [ 0.000000e+00, %242 ]
  %1000 = phi float [ %833, %974 ], [ 0.000000e+00, %242 ]
  %1001 = phi float [ %629, %974 ], [ 0.000000e+00, %242 ]
  %1002 = phi float [ %927, %974 ], [ 0.000000e+00, %242 ]
  %1003 = phi float [ %930, %974 ], [ 0.000000e+00, %242 ]
  %1004 = phi float [ %990, %974 ], [ 0.000000e+00, %242 ]
  %1005 = icmp ult i32 %334, 2
  %1006 = add i32 %71, 40
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = add i32 %71, 44
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = or i32 %1011, %1008
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1834, label %1014

; <label>:1014                                    ; preds = %991
  %1015 = add i32 %71, 172
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = lshr i32 %1017, 16
  %1019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1018)  ; LegacyF16ToF32(value)
  %1020 = fmul fast float %1019, 0x3F50624DE0000000
  %1021 = add i32 %71, 72
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = lshr i32 %1023, 16
  %1025 = and i32 %1024, 255
  %1026 = lshr i32 %1023, 24
  %1027 = add i32 %71, 180
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = and i32 %1029, 65535
  %1031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1030)  ; LegacyF16ToF32(value)
  %1032 = lshr i32 %1029, 16
  %1033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1032)  ; LegacyF16ToF32(value)
  %1034 = add i32 %71, 48
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = lshr i32 %1036, 22
  %1038 = shl nuw nsw i32 %1037, 5
  %1039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1038)  ; LegacyF16ToF32(value)
  %1040 = shl i32 %1036, 4
  %1041 = and i32 %1040, 32752
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = lshr i32 %1036, 7
  %1044 = and i32 %1043, 32752
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 3
  %1048 = fmul fast float %1047, 1.000000e+03
  %1049 = fmul fast float %327, %1048
  %1050 = call float @dx.op.unary.f32(i32 22, float %1049)  ; Frc(value)
  %1051 = fadd fast float %1050, %317
  %1052 = fmul fast float %328, %1048
  %1053 = call float @dx.op.unary.f32(i32 22, float %1052)  ; Frc(value)
  %1054 = fadd fast float %1053, %319
  %1055 = fmul fast float %1020, %1048
  %1056 = call float @dx.op.unary.f32(i32 22, float %1055)  ; Frc(value)
  %1057 = fmul fast float %1056, 0x401921FB60000000
  %1058 = fadd fast float %1057, %1039
  %1059 = call float @dx.op.unary.f32(i32 13, float %1058)  ; Sin(value)
  %1060 = call float @dx.op.unary.f32(i32 12, float %1058)  ; Cos(value)
  %1061 = fsub fast float -0.000000e+00, %1059
  %1062 = fadd fast float %88, -5.000000e-01
  %1063 = fadd fast float %89, -5.000000e-01
  %1064 = fmul fast float %1031, %1062
  %1065 = fmul fast float %1033, %1063
  %1066 = fadd fast float %1064, 5.000000e-01
  %1067 = fadd fast float %1065, 5.000000e-01
  %1068 = fmul fast float %1042, %1066
  %1069 = fmul fast float %1045, %1067
  %1070 = fmul fast float %1060, %1068
  %1071 = call float @dx.op.tertiary.f32(i32 46, float %1061, float %1069, float %1070)  ; FMad(a,b,c)
  %1072 = fmul fast float %1059, %1068
  %1073 = call float @dx.op.tertiary.f32(i32 46, float %1060, float %1069, float %1072)  ; FMad(a,b,c)
  %1074 = fadd fast float %1051, %1071
  %1075 = fadd fast float %1054, %1073
  %1076 = icmp ugt i32 %1025, 1
  %1077 = icmp ugt i32 %1023, 33554431
  %1078 = or i1 %1077, %1076
  br i1 %1078, label %1079, label %1104

; <label>:1079                                    ; preds = %1014
  %1080 = add i32 %71, 148
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = lshr i32 %1082, 16
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = fmul fast float %1047, %1084
  %1086 = call float @dx.op.unary.f32(i32 22, float %1085)  ; Frc(value)
  %1087 = mul nuw nsw i32 %1025, %1026
  %1088 = uitofp i32 %1087 to float
  %1089 = fmul fast float %1086, %1088
  %1090 = call float @dx.op.unary.f32(i32 27, float %1089)  ; Round_ni(value)
  %1091 = fptoui float %1090 to i32
  %1092 = urem i32 %1091, %1025
  %1093 = udiv i32 %1091, %1026
  %1094 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1095 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1096 = uitofp i32 %1092 to float
  %1097 = uitofp i32 %1093 to float
  %1098 = fadd fast float %1094, %1096
  %1099 = fadd fast float %1095, %1097
  %1100 = uitofp i32 %1025 to float
  %1101 = uitofp i32 %1026 to float
  %1102 = fdiv fast float %1098, %1100
  %1103 = fdiv fast float %1099, %1101
  br label %1104

; <label>:1104                                    ; preds = %1079, %1014
  %1105 = phi float [ %1102, %1079 ], [ %1074, %1014 ]
  %1106 = phi float [ %1103, %1079 ], [ %1075, %1014 ]
  %1107 = and i32 %1008, 16777216
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1215, label %1109

; <label>:1109                                    ; preds = %1104
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.CBufRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.CBufRet.f32 %1110, 2
  %1114 = fadd fast float %1111, %152
  %1115 = fadd fast float %1112, %153
  %1116 = fadd fast float %1113, %154
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1120 = icmp eq i32 %70, 65535
  br i1 %1120, label %1215, label %1121

; <label>:1121                                    ; preds = %1109
  %1122 = lshr i32 %70, 1
  %1123 = shl i32 %1122, 2
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = and i32 %70, 1
  %1127 = icmp ne i32 %1126, 0
  %1128 = lshr i32 %1125, 16
  %1129 = and i32 %1125, 65535
  %1130 = select i1 %1127, i32 %1128, i32 %1129
  %1131 = icmp eq i32 %1130, 65535
  br i1 %1131, label %1211, label %1132

; <label>:1132                                    ; preds = %1121
  %1133 = mul nuw nsw i32 %1130, 40
  %1134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = add nuw nsw i32 %1133, 12
  %1139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = add nuw nsw i32 %1133, 24
  %1144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1144, 2
  %1148 = add nuw nsw i32 %1133, 36
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = fsub fast float %1114, %1135
  %1152 = fsub fast float %1115, %1136
  %1153 = fsub fast float %1116, %1137
  %1154 = fmul fast float %1150, %1151
  %1155 = fmul fast float %1150, %1152
  %1156 = fmul fast float %1150, %1153
  %1157 = call float @dx.op.unary.f32(i32 27, float %1154)  ; Round_ni(value)
  %1158 = call float @dx.op.unary.f32(i32 27, float %1155)  ; Round_ni(value)
  %1159 = call float @dx.op.unary.f32(i32 27, float %1156)  ; Round_ni(value)
  %1160 = fadd fast float %1157, 5.000000e-01
  %1161 = fadd fast float %1158, 5.000000e-01
  %1162 = fadd fast float %1159, 5.000000e-01
  %1163 = fmul fast float %1160, %1140
  %1164 = fmul fast float %1161, %1141
  %1165 = fmul fast float %1162, %1142
  %1166 = shl i32 %70, 2
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %1168, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call float @dx.op.unary.f32(i32 22, float %1163)  ; Frc(value)
  %1172 = call float @dx.op.unary.f32(i32 22, float %1164)  ; Frc(value)
  %1173 = call float @dx.op.unary.f32(i32 22, float %1165)  ; Frc(value)
  %1174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1170, %dx.types.Handle %65, float %1171, float %1172, float %1173, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.ResRet.f32 %1174, 1
  %1177 = extractvalue %dx.types.ResRet.f32 %1174, 2
  %1178 = fmul fast float %1175, 1.023000e+03
  %1179 = fmul fast float %1176, 1.023000e+03
  %1180 = fmul fast float %1177, 1.023000e+03
  %1181 = fadd fast float %1178, 5.000000e-01
  %1182 = fadd fast float %1179, 5.000000e-01
  %1183 = fadd fast float %1180, 5.000000e-01
  %1184 = call float @dx.op.unary.f32(i32 27, float %1181)  ; Round_ni(value)
  %1185 = call float @dx.op.unary.f32(i32 27, float %1182)  ; Round_ni(value)
  %1186 = call float @dx.op.unary.f32(i32 27, float %1183)  ; Round_ni(value)
  %1187 = fsub fast float %1154, %1157
  %1188 = fsub fast float %1155, %1158
  %1189 = fsub fast float %1156, %1159
  %1190 = fmul fast float %1187, 7.500000e-01
  %1191 = fmul fast float %1188, 7.500000e-01
  %1192 = fmul fast float %1189, 7.500000e-01
  %1193 = fadd fast float %1157, 1.250000e-01
  %1194 = fadd fast float %1193, %1190
  %1195 = fadd fast float %1194, %1184
  %1196 = fadd fast float %1158, 1.250000e-01
  %1197 = fadd fast float %1196, %1191
  %1198 = fadd fast float %1197, %1185
  %1199 = fadd fast float %1159, 1.250000e-01
  %1200 = fadd fast float %1199, %1192
  %1201 = fadd fast float %1200, %1186
  %1202 = fmul fast float %1195, %1145
  %1203 = fmul fast float %1198, %1146
  %1204 = fmul fast float %1201, %1147
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = add i32 %1206, 0
  %1208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1208, %dx.types.Handle %63, float %1202, float %1203, float %1204, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  br label %1211

; <label>:1211                                    ; preds = %1132, %1121
  %1212 = phi float [ %1210, %1132 ], [ -1.000000e+00, %1121 ]
  %1213 = fadd fast float %1212, %1119
  %1214 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  br label %1215

; <label>:1215                                    ; preds = %1211, %1109, %1104
  %1216 = phi float [ 1.000000e+00, %1104 ], [ %1214, %1211 ], [ %1119, %1109 ]
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 256
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1267, label %1221

; <label>:1221                                    ; preds = %1215
  %1222 = add i32 %71, 236
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = add i32 %1224, 0
  %1226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1226, %dx.types.Handle %102, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = add i32 %71, 84
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = shl i32 %1231, 4
  %1233 = and i32 %1232, 32752
  %1234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1233)  ; LegacyF16ToF32(value)
  %1235 = lshr i32 %1231, 7
  %1236 = and i32 %1235, 32752
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = fsub fast float 1.000000e+00, %1216
  %1239 = call float @dx.op.binary.f32(i32 35, float %1238, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1240 = bitcast float %1216 to i32
  %1241 = sitofp i32 %1240 to float
  %1242 = fadd fast float %1241, 0xC1CFBF8940000000
  %1243 = fmul fast float %1237, %1242
  %1244 = fadd fast float %1243, 0x41CFBF8940000000
  %1245 = fptosi float %1244 to i32
  %1246 = bitcast i32 %1245 to float
  %1247 = bitcast float %1239 to i32
  %1248 = sitofp i32 %1247 to float
  %1249 = fadd fast float %1248, 0xC1CFBF8940000000
  %1250 = fmul fast float %1249, %1237
  %1251 = fadd fast float %1250, 0x41CFBF8940000000
  %1252 = fptosi float %1251 to i32
  %1253 = bitcast i32 %1252 to float
  %1254 = fmul fast float %1246, %1234
  %1255 = fmul fast float %1253, %1234
  %1256 = fsub fast float %1239, %1254
  %1257 = fadd fast float %1255, %1239
  %1258 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1259 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1260 = fsub fast float %1228, %1258
  %1261 = fsub fast float %1259, %1258
  %1262 = bitcast float %1261 to i32
  %1263 = sub nsw i32 2129859010, %1262
  %1264 = bitcast i32 %1263 to float
  %1265 = fmul fast float %1264, %1260
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  br label %1267

; <label>:1267                                    ; preds = %1221, %1215
  %1268 = phi float [ %1266, %1221 ], [ %1216, %1215 ]
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 128
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %1289, label %1273

; <label>:1273                                    ; preds = %1267
  %1274 = add i32 %71, 228
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = add i32 %1276, 0
  %1278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1277, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1279 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1278, %dx.types.Handle %102, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 524288
  %1284 = icmp ne i32 %1283, 0
  %1285 = fcmp fast ogt float %1280, 0x3FE0101020000000
  %1286 = select i1 %1285, float 1.000000e+00, float 0.000000e+00
  %1287 = select i1 %1284, float %1286, float %1280
  %1288 = fmul fast float %1287, %1268
  br label %1289

; <label>:1289                                    ; preds = %1273, %1267
  %1290 = phi float [ %1288, %1273 ], [ %1268, %1267 ]
  %1291 = fcmp fast ult float %1290, 0x3F70101020000000
  br i1 %1291, label %1834, label %1292

; <label>:1292                                    ; preds = %1289
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = and i32 %1294, 16
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1495, label %1297

; <label>:1297                                    ; preds = %1292
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = add i32 %71, 204
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = add i32 %1302, 0
  %1304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1303, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1305 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1304, %dx.types.Handle %101, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.ResRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.ResRet.f32 %1305, 2
  %1309 = extractvalue %dx.types.ResRet.f32 %1305, 3
  %1310 = and i32 %1299, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = lshr i32 %1299, 8
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1309, %1311
  %1316 = fadd fast float %1315, %1314
  %1317 = fmul fast float %1316, 0x3F70101000000000
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 512
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1330, label %1322

; <label>:1322                                    ; preds = %1297
  %1323 = add i32 %71, 244
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = add i32 %1325, 0
  %1327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1327, %dx.types.Handle %102, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  br label %1330

; <label>:1330                                    ; preds = %1322, %1297
  %1331 = phi float [ %1329, %1322 ], [ 1.000000e+00, %1297 ]
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = and i32 %1333, 33554432
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1442, label %1336

; <label>:1336                                    ; preds = %1330
  %1337 = add i32 %71, 144
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = and i32 %1339, 65535
  %1341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1340)  ; LegacyF16ToF32(value)
  %1342 = lshr i32 %1339, 16
  %1343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1342)  ; LegacyF16ToF32(value)
  %1344 = add i32 %71, 148
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = and i32 %1346, 65535
  %1348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1347)  ; LegacyF16ToF32(value)
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = lshr i32 %1350, 24
  %1352 = uitofp i32 %1351 to float
  %1353 = fmul fast float %1352, 0x3F70101020000000
  %1354 = and i32 %1350, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = fmul fast float %1355, 0x3F70101020000000
  %1357 = lshr i32 %1350, 8
  %1358 = and i32 %1357, 255
  %1359 = uitofp i32 %1358 to float
  %1360 = fmul fast float %1359, 0x3F70101020000000
  %1361 = lshr i32 %1350, 16
  %1362 = and i32 %1361, 255
  %1363 = uitofp i32 %1362 to float
  %1364 = fmul fast float %1363, 0x3F70101020000000
  %1365 = add i32 %71, 140
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = lshr i32 %1367, 24
  %1369 = uitofp i32 %1368 to float
  %1370 = fmul fast float %1369, 0x3F70101020000000
  %1371 = and i32 %1367, 255
  %1372 = uitofp i32 %1371 to float
  %1373 = fmul fast float %1372, 0x3F70101020000000
  %1374 = lshr i32 %1367, 8
  %1375 = and i32 %1374, 255
  %1376 = uitofp i32 %1375 to float
  %1377 = fmul fast float %1376, 0x3F70101020000000
  %1378 = lshr i32 %1367, 16
  %1379 = and i32 %1378, 255
  %1380 = uitofp i32 %1379 to float
  %1381 = fmul fast float %1380, 0x3F70101020000000
  %1382 = bitcast float %1306 to i32
  %1383 = ashr i32 %1382, 1
  %1384 = sub nsw i32 1597463174, %1383
  %1385 = bitcast i32 %1384 to float
  %1386 = fmul fast float %1306, 5.000000e-01
  %1387 = fmul fast float %1385, %1385
  %1388 = fmul fast float %1387, %1386
  %1389 = fsub fast float 1.500000e+00, %1388
  %1390 = fmul fast float %1385, %1306
  %1391 = fmul fast float %1390, %1389
  %1392 = bitcast float %1307 to i32
  %1393 = ashr i32 %1392, 1
  %1394 = sub nsw i32 1597463174, %1393
  %1395 = bitcast i32 %1394 to float
  %1396 = fmul fast float %1307, 5.000000e-01
  %1397 = fmul fast float %1395, %1395
  %1398 = fmul fast float %1397, %1396
  %1399 = fsub fast float 1.500000e+00, %1398
  %1400 = fmul fast float %1395, %1307
  %1401 = fmul fast float %1400, %1399
  %1402 = bitcast float %1308 to i32
  %1403 = ashr i32 %1402, 1
  %1404 = sub nsw i32 1597463174, %1403
  %1405 = bitcast i32 %1404 to float
  %1406 = fmul fast float %1308, 5.000000e-01
  %1407 = fmul fast float %1405, %1405
  %1408 = fmul fast float %1407, %1406
  %1409 = fsub fast float 1.500000e+00, %1408
  %1410 = fmul fast float %1405, %1308
  %1411 = fmul fast float %1410, %1409
  %1412 = fsub fast float %1391, %1373
  %1413 = fsub fast float %1401, %1377
  %1414 = fsub fast float %1411, %1381
  %1415 = fmul fast float %1412, %1341
  %1416 = fmul fast float %1413, %1343
  %1417 = fmul fast float %1414, %1348
  %1418 = fadd fast float %1415, %1356
  %1419 = fadd fast float %1416, %1360
  %1420 = fadd fast float %1417, %1364
  %1421 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1422 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1423 = call float @dx.op.unary.f32(i32 7, float %1420)  ; Saturate(value)
  %1424 = fmul fast float %1421, %1421
  %1425 = fmul fast float %1422, %1422
  %1426 = fmul fast float %1423, %1423
  %1427 = fsub fast float %1424, %1306
  %1428 = fsub fast float %1425, %1307
  %1429 = fsub fast float %1426, %1308
  %1430 = fmul fast float %1427, %1331
  %1431 = fmul fast float %1428, %1331
  %1432 = fmul fast float %1429, %1331
  %1433 = fadd fast float %1430, %1306
  %1434 = fadd fast float %1431, %1307
  %1435 = fadd fast float %1432, %1308
  %1436 = fadd fast float %1353, %1317
  %1437 = fsub fast float %1436, %1370
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1439 = fsub fast float %1438, %1317
  %1440 = fmul fast float %1439, %1331
  %1441 = fadd fast float %1440, %1317
  br label %1495

; <label>:1442                                    ; preds = %1330
  %1443 = and i32 %1333, 134217728
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1479, label %1445

; <label>:1445                                    ; preds = %1442
  %1446 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1447 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1448 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %1449 = fadd fast float %1446, -5.000000e-01
  %1450 = fadd fast float %1447, -5.000000e-01
  %1451 = fadd fast float %1448, -5.000000e-01
  %1452 = fmul fast float %1449, %1331
  %1453 = fmul fast float %1450, %1331
  %1454 = fmul fast float %1451, %1331
  %1455 = fadd fast float %1452, 5.000000e-01
  %1456 = fadd fast float %1453, 5.000000e-01
  %1457 = fadd fast float %1454, 5.000000e-01
  %1458 = call float @dx.op.unary.f32(i32 24, float %1306)  ; Sqrt(value)
  %1459 = call float @dx.op.unary.f32(i32 24, float %1307)  ; Sqrt(value)
  %1460 = call float @dx.op.unary.f32(i32 24, float %1308)  ; Sqrt(value)
  %1461 = fmul fast float %1455, 2.000000e+00
  %1462 = fsub fast float 1.000000e+00, %1461
  %1463 = fmul fast float %1462, %1458
  %1464 = fadd fast float %1463, %1461
  %1465 = fmul fast float %1464, %1458
  %1466 = fmul fast float %1456, 2.000000e+00
  %1467 = fsub fast float 1.000000e+00, %1466
  %1468 = fmul fast float %1467, %1459
  %1469 = fadd fast float %1468, %1466
  %1470 = fmul fast float %1469, %1459
  %1471 = fmul fast float %1457, 2.000000e+00
  %1472 = fsub fast float 1.000000e+00, %1471
  %1473 = fmul fast float %1472, %1460
  %1474 = fadd fast float %1473, %1471
  %1475 = fmul fast float %1474, %1460
  %1476 = fmul fast float %1465, %1465
  %1477 = fmul fast float %1470, %1470
  %1478 = fmul fast float %1475, %1475
  br label %1495

; <label>:1479                                    ; preds = %1442
  %1480 = fmul fast float %304, %304
  %1481 = fmul fast float %308, %308
  %1482 = fmul fast float %312, %312
  %1483 = fadd fast float %1480, -1.000000e+00
  %1484 = fadd fast float %1481, -1.000000e+00
  %1485 = fadd fast float %1482, -1.000000e+00
  %1486 = fmul fast float %1331, %1483
  %1487 = fmul fast float %1331, %1484
  %1488 = fmul fast float %1331, %1485
  %1489 = fadd fast float %1486, 1.000000e+00
  %1490 = fadd fast float %1487, 1.000000e+00
  %1491 = fadd fast float %1488, 1.000000e+00
  %1492 = fmul fast float %1489, %1306
  %1493 = fmul fast float %1490, %1307
  %1494 = fmul fast float %1491, %1308
  br label %1495

; <label>:1495                                    ; preds = %1479, %1445, %1336, %1292
  %1496 = phi float [ %1441, %1336 ], [ %1317, %1445 ], [ %1317, %1479 ], [ 0x3FA23C0BE0000000, %1292 ]
  %1497 = phi float [ %1433, %1336 ], [ %1476, %1445 ], [ %1492, %1479 ], [ 1.000000e+00, %1292 ]
  %1498 = phi float [ %1434, %1336 ], [ %1477, %1445 ], [ %1493, %1479 ], [ 1.000000e+00, %1292 ]
  %1499 = phi float [ %1435, %1336 ], [ %1478, %1445 ], [ %1494, %1479 ], [ 1.000000e+00, %1292 ]
  %1500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.i32 %1500, 1
  %1502 = and i32 %1501, 1
  %1503 = icmp ne i32 %1502, 0
  %1504 = add i32 %71, 196
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 32
  %1508 = icmp ne i32 %1507, 0
  %1509 = and i1 %1503, %1508
  %1510 = select i1 %1509, float 1.000000e+00, float %1497
  %1511 = select i1 %1509, float 0x3FD3333340000000, float %1498
  %1512 = select i1 %1509, float 0x3FD3333340000000, float %1499
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 32
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1589, label %1517

; <label>:1517                                    ; preds = %1495
  %1518 = add i32 %71, 76
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %71, 212
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = add i32 %1523, 0
  %1525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1525, %dx.types.Handle %101, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1527 = extractvalue %dx.types.ResRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.ResRet.f32 %1526, 1
  %1529 = extractvalue %dx.types.ResRet.f32 %1526, 2
  %1530 = extractvalue %dx.types.ResRet.f32 %1526, 3
  %1531 = and i32 %1520, 255
  %1532 = uitofp i32 %1531 to float
  %1533 = lshr i32 %1520, 8
  %1534 = and i32 %1533, 255
  %1535 = uitofp i32 %1534 to float
  %1536 = lshr i32 %1520, 16
  %1537 = and i32 %1536, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = fmul fast float %1538, 0x3F70101000000000
  %1540 = fmul fast float %1527, %1532
  %1541 = fadd fast float %1540, %1535
  %1542 = fmul fast float %1541, 0x3F70101000000000
  %1543 = fadd fast float %1528, -5.000000e-01
  %1544 = fadd fast float %1530, -5.000000e-01
  %1545 = fmul fast float %1543, %1539
  %1546 = fmul fast float %1544, %1539
  %1547 = fadd fast float %1545, 5.000000e-01
  %1548 = fadd fast float %1546, 5.000000e-01
  %1549 = fmul fast float %1547, 2.000000e+00
  %1550 = fadd fast float %1549, -1.000000e+00
  %1551 = fmul fast float %1548, 2.000000e+00
  %1552 = fadd fast float %1551, -1.000000e+00
  %1553 = fadd fast float %1550, %1552
  %1554 = fmul fast float %1553, 5.000000e-01
  %1555 = fsub fast float %1550, %1552
  %1556 = fmul fast float %1555, 5.000000e-01
  %1557 = call float @dx.op.unary.f32(i32 6, float %1554)  ; FAbs(value)
  %1558 = fsub fast float 1.000000e+00, %1557
  %1559 = call float @dx.op.unary.f32(i32 6, float %1556)  ; FAbs(value)
  %1560 = fsub fast float %1558, %1559
  %1561 = call float @dx.op.dot3.f32(i32 55, float %1554, float %1556, float %1560, float %1554, float %1556, float %1560)  ; Dot3(ax,ay,az,bx,by,bz)
  %1562 = call float @dx.op.unary.f32(i32 25, float %1561)  ; Rsqrt(value)
  %1563 = fmul fast float %1554, %1562
  %1564 = fmul fast float %1556, %1562
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 67108864
  %1568 = icmp eq i32 %1567, 0
  br i1 %1568, label %1585, label %1569

; <label>:1569                                    ; preds = %1517
  %1570 = add i32 %71, 168
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1570, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = and i32 %1572, 65535
  %1574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1573)  ; LegacyF16ToF32(value)
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 65535
  %1578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1577)  ; LegacyF16ToF32(value)
  %1579 = lshr i32 %1572, 16
  %1580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1579)  ; LegacyF16ToF32(value)
  %1581 = fsub fast float %1542, %1580
  %1582 = fmul fast float %1581, %1574
  %1583 = fadd fast float %1582, %1578
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  br label %1585

; <label>:1585                                    ; preds = %1569, %1517
  %1586 = phi float [ %1584, %1569 ], [ %1542, %1517 ]
  %1587 = call float @dx.op.dot2.f32(i32 54, float %1563, float %1564, float %72, float %73)  ; Dot2(ax,ay,bx,by)
  %1588 = call float @dx.op.dot2.f32(i32 54, float %1563, float %1564, float %74, float %75)  ; Dot2(ax,ay,bx,by)
  br label %1589

; <label>:1589                                    ; preds = %1585, %1495
  %1590 = phi float [ %1586, %1585 ], [ 0x3FD6666660000000, %1495 ]
  %1591 = phi float [ %1587, %1585 ], [ 0.000000e+00, %1495 ]
  %1592 = phi float [ %1588, %1585 ], [ 0.000000e+00, %1495 ]
  %1593 = phi float [ %1529, %1585 ], [ 1.000000e+00, %1495 ]
  %1594 = add i32 %71, 112
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = lshr i32 %1596, 22
  %1598 = shl nuw nsw i32 %1597, 5
  %1599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1598)  ; LegacyF16ToF32(value)
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 64
  %1603 = icmp eq i32 %1602, 0
  br i1 %1603, label %1637, label %1604

; <label>:1604                                    ; preds = %1589
  %1605 = add i32 %71, 220
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = add i32 %1607, 0
  %1609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 131072
  %1613 = icmp eq i32 %1612, 0
  %1614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1609, %dx.types.Handle %101, float %1105, float %1106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1615 = extractvalue %dx.types.ResRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.ResRet.f32 %1614, 1
  %1617 = extractvalue %dx.types.ResRet.f32 %1614, 2
  %1618 = fmul fast float %1615, %292
  %1619 = fmul fast float %1616, %295
  %1620 = fmul fast float %1617, %298
  br i1 %1613, label %1627, label %1621

; <label>:1621                                    ; preds = %1604
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = fmul fast float %1623, %1618
  %1625 = fmul fast float %1623, %1619
  %1626 = fmul fast float %1623, %1620
  br label %1627

; <label>:1627                                    ; preds = %1621, %1604
  %1628 = phi float [ %1624, %1621 ], [ %1618, %1604 ]
  %1629 = phi float [ %1625, %1621 ], [ %1619, %1604 ]
  %1630 = phi float [ %1626, %1621 ], [ %1620, %1604 ]
  %1631 = fmul fast float %1628, %1599
  %1632 = select i1 %243, float %1631, float %1628
  %1633 = call float @dx.op.dot3.f32(i32 55, float %1632, float %1629, float %1630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1634 = select i1 %243, float 0.000000e+00, float %1628
  %1635 = select i1 %243, float %1633, float %1629
  %1636 = select i1 %243, float 0.000000e+00, float %1630
  br label %1637

; <label>:1637                                    ; preds = %1627, %1589
  %1638 = phi float [ %1634, %1627 ], [ 0.000000e+00, %1589 ]
  %1639 = phi float [ %1635, %1627 ], [ 0.000000e+00, %1589 ]
  %1640 = phi float [ %1636, %1627 ], [ 0.000000e+00, %1589 ]
  %1641 = add i32 %71, 80
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 255
  %1645 = uitofp i32 %1644 to float
  %1646 = lshr i32 %1643, 8
  %1647 = and i32 %1646, 255
  %1648 = uitofp i32 %1647 to float
  %1649 = call float @dx.op.dot3.f32(i32 55, float %1510, float %1511, float %1512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1650 = fmul fast float %1648, %1649
  %1651 = fadd fast float %1650, %1645
  %1652 = fmul fast float %1651, 0x3F70101020000000
  %1653 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  br i1 %1005, label %1654, label %1662

; <label>:1654                                    ; preds = %1637
  %1655 = fsub fast float 1.000000e+00, %1290
  %1656 = fmul fast float %1655, %994
  %1657 = fmul fast float %1655, %995
  %1658 = fmul fast float %1655, %996
  %1659 = fmul fast float %1655, %997
  %1660 = fmul fast float %1655, %998
  %1661 = fmul fast float %1655, %999
  br label %1662

; <label>:1662                                    ; preds = %1654, %1637
  %1663 = phi float [ %1656, %1654 ], [ %994, %1637 ]
  %1664 = phi float [ %1657, %1654 ], [ %995, %1637 ]
  %1665 = phi float [ %1658, %1654 ], [ %996, %1637 ]
  %1666 = phi float [ %1659, %1654 ], [ %997, %1637 ]
  %1667 = phi float [ %1660, %1654 ], [ %998, %1637 ]
  %1668 = phi float [ %1661, %1654 ], [ %999, %1637 ]
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = and i32 %1670, 3
  %1672 = icmp eq i32 %1671, 3
  br i1 %1672, label %1751, label %1673

; <label>:1673                                    ; preds = %1662
  %1674 = and i32 %1670, 16
  %1675 = icmp ne i32 %1674, 0
  %1676 = select i1 %1675, float %1290, float 0.000000e+00
  %1677 = icmp eq i32 %1671, 0
  br i1 %1677, label %1678, label %1706

; <label>:1678                                    ; preds = %1673
  %1679 = and i32 %1670, 64
  %1680 = icmp ne i32 %1679, 0
  %1681 = select i1 %1680, float %1290, float 0.000000e+00
  %1682 = fsub fast float %1510, %1663
  %1683 = fsub fast float %1511, %1664
  %1684 = fsub fast float %1512, %1665
  %1685 = fmul fast float %1676, %1682
  %1686 = fmul fast float %1676, %1683
  %1687 = fmul fast float %1676, %1684
  %1688 = fadd fast float %1685, %1663
  %1689 = fadd fast float %1686, %1664
  %1690 = fadd fast float %1687, %1665
  %1691 = fsub fast float %1496, %1000
  %1692 = fmul fast float %1676, %1691
  %1693 = fadd fast float %1692, %1000
  %1694 = fsub fast float %1638, %1666
  %1695 = fsub fast float %1639, %1667
  %1696 = fsub fast float %1640, %1668
  %1697 = fmul fast float %1681, %1694
  %1698 = fmul fast float %1681, %1695
  %1699 = fmul fast float %1681, %1696
  %1700 = fadd fast float %1697, %1666
  %1701 = fadd fast float %1698, %1667
  %1702 = fadd fast float %1699, %1668
  %1703 = fsub fast float %1653, %1004
  %1704 = fmul fast float %1676, %1703
  %1705 = fadd fast float %1704, %1004
  br label %1751

; <label>:1706                                    ; preds = %1673
  %1707 = icmp eq i32 %1671, 1
  br i1 %1707, label %1708, label %1721

; <label>:1708                                    ; preds = %1706
  %1709 = fadd fast float %1510, -1.000000e+00
  %1710 = fadd fast float %1511, -1.000000e+00
  %1711 = fadd fast float %1512, -1.000000e+00
  %1712 = fmul fast float %1676, %1709
  %1713 = fmul fast float %1676, %1710
  %1714 = fmul fast float %1676, %1711
  %1715 = fadd fast float %1712, 1.000000e+00
  %1716 = fadd fast float %1713, 1.000000e+00
  %1717 = fadd fast float %1714, 1.000000e+00
  %1718 = fmul fast float %1715, %1663
  %1719 = fmul fast float %1716, %1664
  %1720 = fmul fast float %1717, %1665
  br label %1751

; <label>:1721                                    ; preds = %1706
  %1722 = icmp eq i32 %1671, 2
  br i1 %1722, label %1723, label %1751

; <label>:1723                                    ; preds = %1721
  %1724 = call float @dx.op.unary.f32(i32 24, float %1510)  ; Sqrt(value)
  %1725 = call float @dx.op.unary.f32(i32 24, float %1511)  ; Sqrt(value)
  %1726 = call float @dx.op.unary.f32(i32 24, float %1512)  ; Sqrt(value)
  %1727 = fadd fast float %1724, -5.000000e-01
  %1728 = fadd fast float %1725, -5.000000e-01
  %1729 = fadd fast float %1726, -5.000000e-01
  %1730 = fmul fast float %1727, %1676
  %1731 = fmul fast float %1728, %1676
  %1732 = fmul fast float %1729, %1676
  %1733 = fadd fast float %1730, 5.000000e-01
  %1734 = fadd fast float %1731, 5.000000e-01
  %1735 = fadd fast float %1732, 5.000000e-01
  %1736 = fmul fast float %1733, 2.000000e+00
  %1737 = fsub fast float 1.000000e+00, %1736
  %1738 = fmul fast float %1737, %1663
  %1739 = fadd fast float %1738, %1736
  %1740 = fmul fast float %1739, %1663
  %1741 = fmul fast float %1734, 2.000000e+00
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1742, %1664
  %1744 = fadd fast float %1743, %1741
  %1745 = fmul fast float %1744, %1664
  %1746 = fmul fast float %1735, 2.000000e+00
  %1747 = fsub fast float 1.000000e+00, %1746
  %1748 = fmul fast float %1747, %1665
  %1749 = fadd fast float %1748, %1746
  %1750 = fmul fast float %1749, %1665
  br label %1751

; <label>:1751                                    ; preds = %1723, %1721, %1708, %1678, %1662
  %1752 = phi float [ %1663, %1662 ], [ %1740, %1723 ], [ %1663, %1721 ], [ %1718, %1708 ], [ %1688, %1678 ]
  %1753 = phi float [ %1664, %1662 ], [ %1745, %1723 ], [ %1664, %1721 ], [ %1719, %1708 ], [ %1689, %1678 ]
  %1754 = phi float [ %1665, %1662 ], [ %1750, %1723 ], [ %1665, %1721 ], [ %1720, %1708 ], [ %1690, %1678 ]
  %1755 = phi float [ %1666, %1662 ], [ %1666, %1723 ], [ %1666, %1721 ], [ %1666, %1708 ], [ %1700, %1678 ]
  %1756 = phi float [ %1667, %1662 ], [ %1667, %1723 ], [ %1667, %1721 ], [ %1667, %1708 ], [ %1701, %1678 ]
  %1757 = phi float [ %1668, %1662 ], [ %1668, %1723 ], [ %1668, %1721 ], [ %1668, %1708 ], [ %1702, %1678 ]
  %1758 = phi float [ %1000, %1662 ], [ %1000, %1723 ], [ %1000, %1721 ], [ %1000, %1708 ], [ %1693, %1678 ]
  %1759 = phi float [ %1004, %1662 ], [ %1004, %1723 ], [ %1004, %1721 ], [ %1004, %1708 ], [ %1705, %1678 ]
  %1760 = and i32 %1670, 12
  %1761 = icmp eq i32 %1760, 12
  br i1 %1761, label %1834, label %1762

; <label>:1762                                    ; preds = %1751
  %1763 = and i32 %1670, 2097184
  %1764 = icmp eq i32 %1763, 2097184
  %1765 = select i1 %1764, float %1290, float 0.000000e+00
  %1766 = and i32 %1670, 4194336
  %1767 = icmp eq i32 %1766, 4194336
  %1768 = select i1 %1767, float %1290, float 0.000000e+00
  %1769 = and i32 %1670, 8388640
  %1770 = icmp eq i32 %1769, 8388640
  %1771 = select i1 %1770, float %1290, float 0.000000e+00
  %1772 = icmp eq i32 %1760, 0
  br i1 %1772, label %1773, label %1786

; <label>:1773                                    ; preds = %1762
  %1774 = fsub fast float %1591, %992
  %1775 = fsub fast float %1592, %993
  %1776 = fmul fast float %1765, %1774
  %1777 = fmul fast float %1765, %1775
  %1778 = fadd fast float %1776, %992
  %1779 = fadd fast float %1777, %993
  %1780 = fsub fast float %1593, %1003
  %1781 = fmul fast float %1768, %1780
  %1782 = fadd fast float %1781, %1003
  %1783 = fsub fast float %1590, %1002
  %1784 = fmul fast float %1771, %1783
  %1785 = fadd fast float %1784, %1002
  br label %1834

; <label>:1786                                    ; preds = %1762
  %1787 = icmp eq i32 %1760, 4
  br i1 %1787, label %1788, label %1820

; <label>:1788                                    ; preds = %1786
  %1789 = fmul fast float %1765, %1591
  %1790 = fmul fast float %1765, %1592
  %1791 = fadd fast float %1789, %992
  %1792 = fadd fast float %1790, %993
  %1793 = call float @dx.op.binary.f32(i32 36, float %1003, float %1593)  ; FMin(a,b)
  %1794 = fsub fast float %1793, %1003
  %1795 = fmul fast float %1794, %1768
  %1796 = fadd fast float %1795, %1003
  %1797 = fadd fast float %1590, %1002
  %1798 = fmul fast float %1797, 0x3FF337FAE0000000
  %1799 = fmul fast float %1002, %1002
  %1800 = fmul fast float %1590, %1590
  %1801 = fadd fast float %1800, %1799
  %1802 = fmul fast float %1801, 0x3FE5152B00000000
  %1803 = fmul fast float %1002, 0xBFCC1F85E0000000
  %1804 = fmul fast float %1803, %1590
  %1805 = fadd fast float %1804, 0xBFE1363700000000
  %1806 = fadd fast float %1805, %1798
  %1807 = fsub fast float %1806, %1802
  %1808 = fmul fast float %1797, 0x3FBA6F0D00000000
  %1809 = fmul fast float %1801, 0x3FD0432880000000
  %1810 = fmul fast float %1002, 0xBFEF110800000000
  %1811 = fmul fast float %1810, %1590
  %1812 = fadd fast float %1811, 1.000000e+00
  %1813 = fsub fast float %1812, %1808
  %1814 = fadd fast float %1813, %1809
  %1815 = fdiv fast float %1807, %1814
  %1816 = call float @dx.op.unary.f32(i32 7, float %1815)  ; Saturate(value)
  %1817 = fsub fast float %1816, %1002
  %1818 = fmul fast float %1817, %1771
  %1819 = fadd fast float %1818, %1002
  br label %1834

; <label>:1820                                    ; preds = %1786
  %1821 = icmp eq i32 %1760, 8
  br i1 %1821, label %1822, label %1834

; <label>:1822                                    ; preds = %1820
  %1823 = fmul fast float %1765, %1591
  %1824 = fmul fast float %1765, %1592
  %1825 = fadd fast float %1823, %992
  %1826 = fadd fast float %1824, %993
  %1827 = call float @dx.op.binary.f32(i32 36, float %1003, float %1593)  ; FMin(a,b)
  %1828 = fsub fast float %1827, %1003
  %1829 = fmul fast float %1828, %1768
  %1830 = fadd fast float %1829, %1003
  %1831 = fsub fast float %1590, %1002
  %1832 = fmul fast float %1771, %1831
  %1833 = fadd fast float %1832, %1002
  br label %1834

; <label>:1834                                    ; preds = %1822, %1820, %1788, %1773, %1751, %1289, %991
  %1835 = phi float [ %992, %1751 ], [ %992, %1289 ], [ %992, %991 ], [ %1778, %1773 ], [ %1791, %1788 ], [ %992, %1820 ], [ %1825, %1822 ]
  %1836 = phi float [ %993, %1751 ], [ %993, %1289 ], [ %993, %991 ], [ %1779, %1773 ], [ %1792, %1788 ], [ %993, %1820 ], [ %1826, %1822 ]
  %1837 = phi float [ %1752, %1751 ], [ %994, %1289 ], [ %994, %991 ], [ %1752, %1773 ], [ %1752, %1788 ], [ %1752, %1820 ], [ %1752, %1822 ]
  %1838 = phi float [ %1753, %1751 ], [ %995, %1289 ], [ %995, %991 ], [ %1753, %1773 ], [ %1753, %1788 ], [ %1753, %1820 ], [ %1753, %1822 ]
  %1839 = phi float [ %1754, %1751 ], [ %996, %1289 ], [ %996, %991 ], [ %1754, %1773 ], [ %1754, %1788 ], [ %1754, %1820 ], [ %1754, %1822 ]
  %1840 = phi float [ %1755, %1751 ], [ %997, %1289 ], [ %997, %991 ], [ %1755, %1773 ], [ %1755, %1788 ], [ %1755, %1820 ], [ %1755, %1822 ]
  %1841 = phi float [ %1756, %1751 ], [ %998, %1289 ], [ %998, %991 ], [ %1756, %1773 ], [ %1756, %1788 ], [ %1756, %1820 ], [ %1756, %1822 ]
  %1842 = phi float [ %1757, %1751 ], [ %999, %1289 ], [ %999, %991 ], [ %1757, %1773 ], [ %1757, %1788 ], [ %1757, %1820 ], [ %1757, %1822 ]
  %1843 = phi float [ %1758, %1751 ], [ %1000, %1289 ], [ %1000, %991 ], [ %1758, %1773 ], [ %1758, %1788 ], [ %1758, %1820 ], [ %1758, %1822 ]
  %1844 = phi float [ %1002, %1751 ], [ %1002, %1289 ], [ %1002, %991 ], [ %1785, %1773 ], [ %1819, %1788 ], [ %1002, %1820 ], [ %1833, %1822 ]
  %1845 = phi float [ %1003, %1751 ], [ %1003, %1289 ], [ %1003, %991 ], [ %1782, %1773 ], [ %1796, %1788 ], [ %1003, %1820 ], [ %1830, %1822 ]
  %1846 = phi float [ %1759, %1751 ], [ %1004, %1289 ], [ %1004, %991 ], [ %1759, %1773 ], [ %1759, %1788 ], [ %1759, %1820 ], [ %1759, %1822 ]
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = call float @dx.op.dot2.f32(i32 54, float %1835, float %1836, float %1835, float %1836)  ; Dot2(ax,ay,bx,by)
  %1850 = fmul fast float %1849, 0x3FE3333340000000
  %1851 = fsub fast float 1.000000e+00, %1850
  %1852 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1836, float %1851, float %1835, float %1836, float %1851)  ; Dot3(ax,ay,az,bx,by,bz)
  %1853 = call float @dx.op.unary.f32(i32 25, float %1852)  ; Rsqrt(value)
  %1854 = fmul fast float %1853, %1835
  %1855 = fmul fast float %1853, %1836
  %1856 = fmul fast float %1851, %1853
  %1857 = fmul fast float %1856, %80
  %1858 = fmul fast float %1856, %81
  %1859 = fmul fast float %1856, %82
  %1860 = fmul fast float %1854, %76
  %1861 = fmul fast float %1854, %77
  %1862 = fmul fast float %1854, %78
  %1863 = fadd fast float %1857, %1860
  %1864 = fadd fast float %1858, %1861
  %1865 = fadd fast float %1859, %1862
  %1866 = fmul fast float %1855, %116
  %1867 = fmul fast float %1855, %117
  %1868 = fmul fast float %1855, %118
  %1869 = fadd fast float %1863, %1866
  %1870 = fadd fast float %1864, %1867
  %1871 = fadd fast float %1865, %1868
  %1872 = call float @dx.op.dot3.f32(i32 55, float %1869, float %1870, float %1871, float %1869, float %1870, float %1871)  ; Dot3(ax,ay,az,bx,by,bz)
  %1873 = call float @dx.op.unary.f32(i32 25, float %1872)  ; Rsqrt(value)
  %1874 = fmul fast float %1869, %1873
  %1875 = fmul fast float %1870, %1873
  %1876 = fmul fast float %1871, %1873
  %1877 = call float @dx.op.unary.f32(i32 83, float %152)  ; DerivCoarseX(value)
  %1878 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %1879 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %1880 = call float @dx.op.unary.f32(i32 84, float %152)  ; DerivCoarseY(value)
  %1881 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %1882 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %1883 = fadd fast float %1877, %152
  %1884 = fadd fast float %1878, %153
  %1885 = fadd fast float %1879, %154
  %1886 = fadd fast float %1880, %152
  %1887 = fadd fast float %1881, %153
  %1888 = fadd fast float %1882, %154
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 0
  %1891 = extractvalue %dx.types.CBufRet.f32 %1889, 1
  %1892 = extractvalue %dx.types.CBufRet.f32 %1889, 2
  %1893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.f32 %1893, 2
  %1895 = extractvalue %dx.types.CBufRet.f32 %1893, 3
  %1896 = fmul fast float %1890, %105
  %1897 = fmul fast float %1896, %1894
  %1898 = fmul fast float %1891, %106
  %1899 = fmul fast float %1898, %1895
  %1900 = fptoui float %1897 to i32
  %1901 = fptoui float %1899 to i32
  %1902 = fadd fast float %1890, -1.000000e+00
  %1903 = fadd fast float %1891, -1.000000e+00
  %1904 = fptoui float %1902 to i32
  %1905 = fptoui float %1903 to i32
  %1906 = call i32 @dx.op.binary.i32(i32 40, i32 %1900, i32 %1904)  ; UMin(a,b)
  %1907 = call i32 @dx.op.binary.i32(i32 40, i32 %1901, i32 %1905)  ; UMin(a,b)
  %1908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1908, 2
  %1910 = extractvalue %dx.types.CBufRet.f32 %1908, 3
  %1911 = fmul fast float %1909, %93
  %1912 = fsub fast float %1911, %1910
  %1913 = fadd fast float %1892, -1.000000e+00
  %1914 = call float @dx.op.binary.f32(i32 36, float %1912, float %1913)  ; FMin(a,b)
  %1915 = fptoui float %1914 to i32
  %1916 = fptoui float %1890 to i32
  %1917 = fptoui float %1891 to i32
  %1918 = mul i32 %1915, %1917
  %1919 = add i32 %1918, %1907
  %1920 = mul i32 %1919, %1916
  %1921 = add i32 %1920, %1906
  %1922 = shl i32 %1921, 2
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = and i32 %1924, 1023
  %1926 = lshr i32 %1924, 10
  %1927 = icmp eq i32 %1925, 0
  br i1 %1927, label %2356, label %1928

; <label>:1928                                    ; preds = %1834
  %1929 = and i32 %1924, 1023
  br label %1930

; <label>:1930                                    ; preds = %2057, %1928
  %1931 = phi float [ %2058, %2057 ], [ 0.000000e+00, %1928 ]
  %1932 = phi float [ %2059, %2057 ], [ %1001, %1928 ]
  %1933 = phi float [ %2060, %2057 ], [ %1848, %1928 ]
  %1934 = phi float [ %2061, %2057 ], [ %1846, %1928 ]
  %1935 = phi float [ %2062, %2057 ], [ 0.000000e+00, %1928 ]
  %1936 = phi float [ %2063, %2057 ], [ 0.000000e+00, %1928 ]
  %1937 = phi float [ %2064, %2057 ], [ %1840, %1928 ]
  %1938 = phi float [ %2065, %2057 ], [ %1841, %1928 ]
  %1939 = phi float [ %2066, %2057 ], [ %1842, %1928 ]
  %1940 = phi float [ %2067, %2057 ], [ %1874, %1928 ]
  %1941 = phi float [ %2068, %2057 ], [ %1875, %1928 ]
  %1942 = phi float [ %2069, %2057 ], [ %1876, %1928 ]
  %1943 = phi float [ %2070, %2057 ], [ %1845, %1928 ]
  %1944 = phi float [ %2071, %2057 ], [ %1844, %1928 ]
  %1945 = phi float [ %2072, %2057 ], [ 0.000000e+00, %1928 ]
  %1946 = phi float [ %2073, %2057 ], [ %1843, %1928 ]
  %1947 = phi float [ %2074, %2057 ], [ %1837, %1928 ]
  %1948 = phi float [ %2075, %2057 ], [ %1838, %1928 ]
  %1949 = phi float [ %2076, %2057 ], [ %1839, %1928 ]
  %1950 = phi i32 [ %2007, %2057 ], [ 0, %1928 ]
  %1951 = add nuw nsw i32 %1950, %1926
  %1952 = shl i32 %1951, 2
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = shl i32 %1954, 8
  %1956 = or i32 %1955, 48
  %1957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1959 = extractvalue %dx.types.ResRet.f32 %1957, 1
  %1960 = extractvalue %dx.types.ResRet.f32 %1957, 2
  %1961 = extractvalue %dx.types.ResRet.f32 %1957, 3
  %1962 = or i32 %1955, 64
  %1963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.i32 %1963, 0
  %1965 = extractvalue %dx.types.ResRet.i32 %1963, 1
  %1966 = or i32 %1955, 80
  %1967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.f32 %1967, 2
  %1969 = extractvalue %dx.types.ResRet.f32 %1967, 3
  %1970 = or i32 %1955, 96
  %1971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = extractvalue %dx.types.ResRet.f32 %1971, 1
  %1974 = extractvalue %dx.types.ResRet.f32 %1971, 2
  %1975 = extractvalue %dx.types.ResRet.f32 %1971, 3
  %1976 = or i32 %1955, 112
  %1977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 2
  %1979 = or i32 %1955, 128
  %1980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1982 = extractvalue %dx.types.ResRet.f32 %1980, 1
  %1983 = extractvalue %dx.types.ResRet.f32 %1980, 2
  %1984 = extractvalue %dx.types.ResRet.f32 %1980, 3
  %1985 = or i32 %1955, 144
  %1986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = extractvalue %dx.types.ResRet.f32 %1986, 1
  %1989 = extractvalue %dx.types.ResRet.f32 %1986, 2
  %1990 = extractvalue %dx.types.ResRet.f32 %1986, 3
  %1991 = or i32 %1955, 160
  %1992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.ResRet.f32 %1992, 1
  %1995 = extractvalue %dx.types.ResRet.f32 %1992, 2
  %1996 = extractvalue %dx.types.ResRet.f32 %1992, 3
  %1997 = or i32 %1955, 192
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = or i32 %1955, 208
  %2001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.f32 %2001, 0
  %2003 = or i32 %1955, 248
  %2004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.f32 %2004, 0
  %2006 = extractvalue %dx.types.ResRet.f32 %2004, 1
  %2007 = add nuw nsw i32 %1950, 1
  %2008 = bitcast float %1961 to i32
  %2009 = and i32 %2008, 2560
  %2010 = icmp eq i32 %2009, 0
  %2011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = extractvalue %dx.types.ResRet.f32 %2011, 1
  %2014 = extractvalue %dx.types.ResRet.f32 %2011, 2
  %2015 = extractvalue %dx.types.ResRet.f32 %2011, 3
  %2016 = call float @dx.op.dot4.f32(i32 56, float %2012, float %2013, float %2014, float %2015, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2017 = or i32 %1955, 16
  %2018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.ResRet.f32 %2018, 1
  %2021 = extractvalue %dx.types.ResRet.f32 %2018, 2
  %2022 = extractvalue %dx.types.ResRet.f32 %2018, 3
  %2023 = call float @dx.op.dot4.f32(i32 56, float %2019, float %2020, float %2021, float %2022, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2024 = or i32 %1955, 32
  %2025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  %2027 = extractvalue %dx.types.ResRet.f32 %2025, 1
  %2028 = extractvalue %dx.types.ResRet.f32 %2025, 2
  %2029 = extractvalue %dx.types.ResRet.f32 %2025, 3
  %2030 = call float @dx.op.dot4.f32(i32 56, float %2026, float %2027, float %2028, float %2029, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2031 = call float @dx.op.unary.f32(i32 27, float %2016)  ; Round_ni(value)
  %2032 = call float @dx.op.unary.f32(i32 6, float %2031)  ; FAbs(value)
  %2033 = call float @dx.op.unary.f32(i32 27, float %2023)  ; Round_ni(value)
  %2034 = call float @dx.op.unary.f32(i32 6, float %2033)  ; FAbs(value)
  %2035 = call float @dx.op.unary.f32(i32 6, float %2030)  ; FAbs(value)
  %2036 = call float @dx.op.unary.f32(i32 27, float %2035)  ; Round_ni(value)
  %2037 = fadd fast float %2034, %2032
  %2038 = fadd fast float %2037, %2036
  %2039 = fcmp fast oeq float %2038, 0.000000e+00
  %2040 = call float @dx.op.dot4.f32(i32 56, float %2012, float %2013, float %2014, float %2015, float %1883, float %1884, float %1885, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2041 = call float @dx.op.dot4.f32(i32 56, float %2019, float %2020, float %2021, float %2022, float %1883, float %1884, float %1885, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2042 = call float @dx.op.dot4.f32(i32 56, float %2012, float %2013, float %2014, float %2015, float %1886, float %1887, float %1888, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2043 = call float @dx.op.dot4.f32(i32 56, float %2019, float %2020, float %2021, float %2022, float %1886, float %1887, float %1888, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2044 = fsub fast float %2040, %2016
  %2045 = fsub fast float %2042, %2016
  %2046 = fsub fast float %2041, %2023
  %2047 = fsub fast float %2043, %2023
  %2048 = call float @dx.op.dot3.f32(i32 55, float %1958, float %1959, float %1960, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 2
  %2051 = fadd fast float %2050, %2048
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2049, 0
  %2054 = fcmp fast ogt float %2052, %2053
  %2055 = and i1 %2039, %2054
  %2056 = and i1 %2010, %2055
  br i1 %2056, label %2078, label %2057

; <label>:2057                                    ; preds = %2342, %2159, %2078, %1930
  %2058 = phi float [ %1931, %2078 ], [ %2162, %2159 ], [ %2162, %2342 ], [ %1931, %1930 ]
  %2059 = phi float [ %1932, %2078 ], [ %1932, %2159 ], [ %2317, %2342 ], [ %1932, %1930 ]
  %2060 = phi float [ %1933, %2078 ], [ %1933, %2159 ], [ %2316, %2342 ], [ %1933, %1930 ]
  %2061 = phi float [ %1934, %2078 ], [ %1934, %2159 ], [ %2314, %2342 ], [ %1934, %1930 ]
  %2062 = phi float [ %1935, %2078 ], [ %1935, %2159 ], [ %2286, %2342 ], [ %1935, %1930 ]
  %2063 = phi float [ %1936, %2078 ], [ %1936, %2159 ], [ %2284, %2342 ], [ %1936, %1930 ]
  %2064 = phi float [ %1937, %2078 ], [ %1937, %2159 ], [ %2352, %2342 ], [ %1937, %1930 ]
  %2065 = phi float [ %1938, %2078 ], [ %1938, %2159 ], [ %2353, %2342 ], [ %1938, %1930 ]
  %2066 = phi float [ %1939, %2078 ], [ %1939, %2159 ], [ %2354, %2342 ], [ %1939, %1930 ]
  %2067 = phi float [ %1940, %2078 ], [ %1940, %2159 ], [ %2265, %2342 ], [ %1940, %1930 ]
  %2068 = phi float [ %1941, %2078 ], [ %1941, %2159 ], [ %2266, %2342 ], [ %1941, %1930 ]
  %2069 = phi float [ %1942, %2078 ], [ %1942, %2159 ], [ %2267, %2342 ], [ %1942, %1930 ]
  %2070 = phi float [ %1943, %2078 ], [ %1943, %2159 ], [ %2294, %2342 ], [ %1943, %1930 ]
  %2071 = phi float [ %1944, %2078 ], [ %1944, %2159 ], [ %2291, %2342 ], [ %1944, %1930 ]
  %2072 = phi float [ %1945, %2078 ], [ %1945, %2159 ], [ %2288, %2342 ], [ %1945, %1930 ]
  %2073 = phi float [ %1946, %2078 ], [ %1946, %2159 ], [ %2282, %2342 ], [ %1946, %1930 ]
  %2074 = phi float [ %1947, %2078 ], [ %1947, %2159 ], [ %2277, %2342 ], [ %1947, %1930 ]
  %2075 = phi float [ %1948, %2078 ], [ %1948, %2159 ], [ %2278, %2342 ], [ %1948, %1930 ]
  %2076 = phi float [ %1949, %2078 ], [ %1949, %2159 ], [ %2279, %2342 ], [ %1949, %1930 ]
  %2077 = icmp eq i32 %2007, %1929
  br i1 %2077, label %2355, label %1930

; <label>:2078                                    ; preds = %1930
  %2079 = extractvalue %dx.types.ResRet.f32 %1977, 3
  %2080 = extractvalue %dx.types.ResRet.f32 %1977, 1
  %2081 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %2082 = extractvalue %dx.types.ResRet.f32 %1967, 1
  %2083 = extractvalue %dx.types.ResRet.f32 %1967, 0
  %2084 = extractvalue %dx.types.ResRet.i32 %1963, 3
  %2085 = extractvalue %dx.types.ResRet.i32 %1963, 2
  %2086 = add i32 %2084, 0
  %2087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2086, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2089 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2087, %dx.types.Handle %2088, float %2016, float %2023, float undef, float undef, i32 0, i32 0, i32 undef, float %2044, float %2046, float undef, float %2045, float %2047, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = fmul fast float %2090, %2083
  %2092 = fadd fast float %2091, %2082
  %2093 = call float @dx.op.unary.f32(i32 7, float %2092)  ; Saturate(value)
  %2094 = fmul fast float %2016, %1972
  %2095 = call float @dx.op.tertiary.f32(i32 46, float %1973, float %2023, float %2094)  ; FMad(a,b,c)
  %2096 = fadd fast float %2095, %2081
  %2097 = fmul fast float %2016, %1974
  %2098 = call float @dx.op.tertiary.f32(i32 46, float %1975, float %2023, float %2097)  ; FMad(a,b,c)
  %2099 = fadd fast float %2098, %2080
  %2100 = fmul fast float %2044, %1972
  %2101 = call float @dx.op.tertiary.f32(i32 46, float %1973, float %2046, float %2100)  ; FMad(a,b,c)
  %2102 = fmul fast float %2044, %1974
  %2103 = call float @dx.op.tertiary.f32(i32 46, float %1975, float %2046, float %2102)  ; FMad(a,b,c)
  %2104 = fmul fast float %2045, %1972
  %2105 = call float @dx.op.tertiary.f32(i32 46, float %1973, float %2047, float %2104)  ; FMad(a,b,c)
  %2106 = fmul fast float %2045, %1974
  %2107 = call float @dx.op.tertiary.f32(i32 46, float %1975, float %2047, float %2106)  ; FMad(a,b,c)
  %2108 = add i32 %2085, 0
  %2109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2108, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2110 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2109, %dx.types.Handle %2088, float %2096, float %2099, float undef, float undef, i32 0, i32 0, i32 undef, float %2101, float %2103, float undef, float %2105, float %2107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2111 = extractvalue %dx.types.ResRet.f32 %2110, 0
  %2112 = and i32 %2008, 1024
  %2113 = icmp ne i32 %2112, 0
  %2114 = fcmp fast ogt float %2111, 0x3FE0101020000000
  %2115 = uitofp i1 %2114 to float
  %2116 = select i1 %2113, float %2115, float %2111
  %2117 = and i32 %2008, 8192
  %2118 = icmp ne i32 %2117, 0
  %2119 = select i1 %2118, float %2079, float 1.000000e+00
  %2120 = fmul fast float %2016, 2.000000e+00
  %2121 = fadd fast float %2120, -1.000000e+00
  %2122 = call float @dx.op.unary.f32(i32 6, float %2121)  ; FAbs(value)
  %2123 = fmul fast float %2122, %2005
  %2124 = fsub fast float %2123, %2005
  %2125 = call float @dx.op.unary.f32(i32 7, float %2124)  ; Saturate(value)
  %2126 = fmul fast float %2023, 2.000000e+00
  %2127 = fadd fast float %2126, -1.000000e+00
  %2128 = call float @dx.op.unary.f32(i32 6, float %2127)  ; FAbs(value)
  %2129 = fmul fast float %2128, %2006
  %2130 = fsub fast float %2129, %2006
  %2131 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2132 = fmul fast float %2035, %1968
  %2133 = fsub fast float %2132, %1968
  %2134 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2135 = fmul fast float %2093, %2119
  %2136 = fmul fast float %2135, %2090
  %2137 = fmul fast float %2136, %2125
  %2138 = fmul fast float %2137, %2116
  %2139 = fmul fast float %2138, %2131
  %2140 = fmul fast float %2139, %2134
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 1
  %2143 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2144 = fsub fast float %2052, %2143
  %2145 = fmul fast float %2144, %2142
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fmul fast float %2140, %1969
  %2148 = fadd fast float %2140, %1969
  %2149 = fmul fast float %2148, %1978
  %2150 = fsub fast float %2149, %1978
  %2151 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2152 = and i32 %2008, 128
  %2153 = icmp ne i32 %2152, 0
  %2154 = select i1 %2153, float %2151, float %2147
  %2155 = fmul fast float %2154, %2146
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 0
  %2158 = fcmp fast ugt float %2155, %2157
  br i1 %2158, label %2159, label %2057

; <label>:2159                                    ; preds = %2078
  %2160 = select i1 %2118, float %2155, float 0.000000e+00
  %2161 = fadd fast float %2160, %1931
  %2162 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  br i1 %2118, label %2057, label %2163

; <label>:2163                                    ; preds = %2159
  %2164 = and i32 %2008, 4
  %2165 = and i32 %2008, 8
  %2166 = add i32 %1964, 0
  %2167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2166, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2169 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2167, %dx.types.Handle %2168, float %2096, float %2099, float undef, float undef, i32 0, i32 0, i32 undef, float %2101, float %2103, float undef, float %2105, float %2107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2170 = extractvalue %dx.types.ResRet.f32 %2169, 0
  %2171 = extractvalue %dx.types.ResRet.f32 %2169, 1
  %2172 = extractvalue %dx.types.ResRet.f32 %2169, 2
  %2173 = extractvalue %dx.types.ResRet.f32 %2169, 3
  %2174 = bitcast float %1990 to i32
  %2175 = and i32 %2174, 255
  %2176 = uitofp i32 %2175 to float
  %2177 = lshr i32 %2174, 8
  %2178 = and i32 %2177, 255
  %2179 = uitofp i32 %2178 to float
  %2180 = fmul fast float %2173, %2176
  %2181 = fadd fast float %2180, %2179
  %2182 = fmul fast float %2181, 0x3F70101000000000
  %2183 = add i32 %1965, 0
  %2184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2183, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2185 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2184, %dx.types.Handle %2168, float %2096, float %2099, float undef, float undef, i32 0, i32 0, i32 undef, float %2101, float %2103, float undef, float %2105, float %2107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.ResRet.f32 %2185, 1
  %2188 = extractvalue %dx.types.ResRet.f32 %2185, 2
  %2189 = extractvalue %dx.types.ResRet.f32 %2185, 3
  %2190 = bitcast float %1984 to i32
  %2191 = and i32 %2190, 255
  %2192 = uitofp i32 %2191 to float
  %2193 = lshr i32 %2190, 8
  %2194 = and i32 %2193, 255
  %2195 = uitofp i32 %2194 to float
  %2196 = lshr i32 %2190, 16
  %2197 = and i32 %2196, 255
  %2198 = uitofp i32 %2197 to float
  %2199 = fmul fast float %2198, 0x3F70101000000000
  %2200 = fmul fast float %2186, %2192
  %2201 = fadd fast float %2200, %2195
  %2202 = fmul fast float %2201, 0x3F70101000000000
  %2203 = fadd fast float %2187, -5.000000e-01
  %2204 = fadd fast float %2189, -5.000000e-01
  %2205 = fmul fast float %2203, %2199
  %2206 = fmul fast float %2204, %2199
  %2207 = fadd fast float %2205, 5.000000e-01
  %2208 = fadd fast float %2206, 5.000000e-01
  %2209 = fmul fast float %2170, %1993
  %2210 = fmul fast float %2171, %1994
  %2211 = fmul fast float %2172, %1995
  %2212 = fmul fast float %2207, 2.000000e+00
  %2213 = fadd fast float %2212, -1.000000e+00
  %2214 = fmul fast float %2208, 2.000000e+00
  %2215 = fadd fast float %2214, -1.000000e+00
  %2216 = fadd fast float %2213, %2215
  %2217 = fmul fast float %2216, 5.000000e-01
  %2218 = fsub fast float %2213, %2215
  %2219 = fmul fast float %2218, 5.000000e-01
  %2220 = call float @dx.op.unary.f32(i32 6, float %2217)  ; FAbs(value)
  %2221 = fsub fast float 1.000000e+00, %2220
  %2222 = call float @dx.op.unary.f32(i32 6, float %2219)  ; FAbs(value)
  %2223 = fsub fast float %2221, %2222
  %2224 = call float @dx.op.dot3.f32(i32 55, float %2217, float %2219, float %2223, float %2217, float %2219, float %2223)  ; Dot3(ax,ay,az,bx,by,bz)
  %2225 = call float @dx.op.unary.f32(i32 25, float %2224)  ; Rsqrt(value)
  %2226 = fmul fast float %2217, %2225
  %2227 = fmul fast float %2219, %2225
  %2228 = fmul fast float %2225, %2223
  %2229 = fmul fast float %2228, %1958
  %2230 = fmul fast float %2228, %1959
  %2231 = fmul fast float %2228, %1960
  %2232 = fmul fast float %2226, %1981
  %2233 = fmul fast float %2226, %1982
  %2234 = fmul fast float %2226, %1983
  %2235 = fadd fast float %2232, %2229
  %2236 = fadd fast float %2233, %2230
  %2237 = fadd fast float %2234, %2231
  %2238 = fmul fast float %2227, %1987
  %2239 = fmul fast float %2227, %1988
  %2240 = fmul fast float %2227, %1989
  %2241 = fadd fast float %2235, %2238
  %2242 = fadd fast float %2236, %2239
  %2243 = fadd fast float %2237, %2240
  %2244 = call float @dx.op.dot3.f32(i32 55, float %2241, float %2242, float %2243, float %2241, float %2242, float %2243)  ; Dot3(ax,ay,az,bx,by,bz)
  %2245 = call float @dx.op.unary.f32(i32 25, float %2244)  ; Rsqrt(value)
  %2246 = fmul fast float %2241, %2245
  %2247 = fmul fast float %2242, %2245
  %2248 = fmul fast float %2243, %2245
  %2249 = icmp ne i32 %2165, 0
  %2250 = select i1 %2249, float 1.000000e+00, float 0.000000e+00
  %2251 = fmul fast float %2155, %2250
  %2252 = and i32 %2008, 1
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2254, label %2258

; <label>:2254                                    ; preds = %2163
  %2255 = fsub fast float %2246, %1940
  %2256 = fsub fast float %2247, %1941
  %2257 = fsub fast float %2248, %1942
  br label %2258

; <label>:2258                                    ; preds = %2254, %2163
  %2259 = phi float [ %2255, %2254 ], [ %2246, %2163 ]
  %2260 = phi float [ %2256, %2254 ], [ %2247, %2163 ]
  %2261 = phi float [ %2257, %2254 ], [ %2248, %2163 ]
  %2262 = fmul float %2261, %2251
  %2263 = fmul float %2260, %2251
  %2264 = fmul float %2259, %2251
  %2265 = fadd fast float %2264, %1940
  %2266 = fadd fast float %2263, %1941
  %2267 = fadd fast float %2262, %1942
  %2268 = icmp ne i32 %2164, 0
  %2269 = select i1 %2268, float 1.000000e+00, float 0.000000e+00
  %2270 = fmul fast float %2155, %2269
  %2271 = fsub fast float %2209, %1947
  %2272 = fsub fast float %2210, %1948
  %2273 = fsub fast float %2211, %1949
  %2274 = fmul fast float %2271, %2270
  %2275 = fmul fast float %2272, %2270
  %2276 = fmul fast float %2273, %2270
  %2277 = fadd fast float %2274, %1947
  %2278 = fadd fast float %2275, %1948
  %2279 = fadd fast float %2276, %1949
  %2280 = fsub fast float %2182, %1946
  %2281 = fmul fast float %2280, %2270
  %2282 = fadd fast float %2281, %1946
  %2283 = fmul fast float %2270, %1936
  %2284 = fsub fast float %1936, %2283
  %2285 = fmul fast float %2270, %1935
  %2286 = fsub fast float %1935, %2285
  %2287 = fadd fast float %2155, %1945
  %2288 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2289 = fsub fast float %2202, %1944
  %2290 = fmul fast float %2289, %2251
  %2291 = fadd fast float %2290, %1944
  %2292 = fsub fast float %2188, %1943
  %2293 = fmul fast float %2292, %2251
  %2294 = fadd fast float %2293, %1943
  %2295 = call float @dx.op.dot3.f32(i32 55, float %2209, float %2210, float %2211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2299 = fmul fast float %2298, %2295
  %2300 = fadd fast float %2299, %2297
  %2301 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2302 = bitcast float %1996 to i32
  %2303 = and i32 %2302, 65535
  %2304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2303)  ; LegacyF16ToF32(value)
  %2305 = lshr i32 %2302, 16
  %2306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2305)  ; LegacyF16ToF32(value)
  %2307 = fcmp fast oge float %2304, 0.000000e+00
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 0
  %2310 = select i1 %2307, float %2304, float %2309
  %2311 = fadd fast float %2310, %2306
  %2312 = fsub fast float %2301, %1934
  %2313 = fmul fast float %2312, %2155
  %2314 = fadd fast float %2313, %1934
  %2315 = fmul fast float %2311, %2155
  %2316 = call float @dx.op.binary.f32(i32 35, float %1933, float %2315)  ; FMax(a,b)
  %2317 = call float @dx.op.binary.f32(i32 35, float %1932, float %2155)  ; FMax(a,b)
  %2318 = and i32 %2008, 16
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2342, label %2320

; <label>:2320                                    ; preds = %2258
  %2321 = bitcast float %2002 to i32
  %2322 = add i32 %1999, 0
  %2323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2322, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2324 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2323, %dx.types.Handle %2168, float %2096, float %2099, float undef, float undef, i32 0, i32 0, i32 undef, float %2101, float %2103, float undef, float %2105, float %2107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = extractvalue %dx.types.ResRet.f32 %2324, 1
  %2327 = extractvalue %dx.types.ResRet.f32 %2324, 2
  %2328 = and i32 %2321, 65535
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = fmul fast float %2325, %1993
  %2331 = fmul fast float %2326, %1994
  %2332 = fmul fast float %2327, %1995
  %2333 = and i32 %2008, 16384
  %2334 = icmp ne i32 %2333, 0
  %2335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.f32 %2335, 0
  %2337 = select i1 %2334, float %2336, float 1.000000e+00
  %2338 = fmul fast float %2337, %2329
  %2339 = fmul fast float %2330, %2338
  %2340 = fmul fast float %2331, %2338
  %2341 = fmul fast float %2332, %2338
  br label %2342

; <label>:2342                                    ; preds = %2320, %2258
  %2343 = phi float [ %2339, %2320 ], [ 0.000000e+00, %2258 ]
  %2344 = phi float [ %2340, %2320 ], [ 0.000000e+00, %2258 ]
  %2345 = phi float [ %2341, %2320 ], [ 0.000000e+00, %2258 ]
  %2346 = fsub fast float %2343, %1937
  %2347 = fsub fast float %2344, %1938
  %2348 = fsub fast float %2345, %1939
  %2349 = fmul fast float %2346, %2155
  %2350 = fmul fast float %2347, %2155
  %2351 = fmul fast float %2348, %2155
  %2352 = fadd fast float %2349, %1937
  %2353 = fadd fast float %2350, %1938
  %2354 = fadd fast float %2351, %1939
  br label %2057

; <label>:2355                                    ; preds = %2057
  br label %2356

; <label>:2356                                    ; preds = %2355, %1834
  %2357 = phi float [ 0.000000e+00, %1834 ], [ %2058, %2355 ]
  %2358 = phi float [ %1001, %1834 ], [ %2059, %2355 ]
  %2359 = phi float [ %1848, %1834 ], [ %2060, %2355 ]
  %2360 = phi float [ %1846, %1834 ], [ %2061, %2355 ]
  %2361 = phi float [ 0.000000e+00, %1834 ], [ %2062, %2355 ]
  %2362 = phi float [ 0.000000e+00, %1834 ], [ %2063, %2355 ]
  %2363 = phi float [ %1840, %1834 ], [ %2064, %2355 ]
  %2364 = phi float [ %1841, %1834 ], [ %2065, %2355 ]
  %2365 = phi float [ %1842, %1834 ], [ %2066, %2355 ]
  %2366 = phi float [ %1874, %1834 ], [ %2067, %2355 ]
  %2367 = phi float [ %1875, %1834 ], [ %2068, %2355 ]
  %2368 = phi float [ %1876, %1834 ], [ %2069, %2355 ]
  %2369 = phi float [ %1845, %1834 ], [ %2070, %2355 ]
  %2370 = phi float [ %1844, %1834 ], [ %2071, %2355 ]
  %2371 = phi float [ 0.000000e+00, %1834 ], [ %2072, %2355 ]
  %2372 = phi float [ %1843, %1834 ], [ %2073, %2355 ]
  %2373 = phi float [ %1837, %1834 ], [ %2074, %2355 ]
  %2374 = phi float [ %1838, %1834 ], [ %2075, %2355 ]
  %2375 = phi float [ %1839, %1834 ], [ %2076, %2355 ]
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2366, float %2367, float %2368, float %2366, float %2367, float %2368)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = call float @dx.op.unary.f32(i32 25, float %2376)  ; Rsqrt(value)
  %2378 = fmul fast float %2377, %2366
  %2379 = fmul fast float %2377, %2367
  %2380 = fmul fast float %2377, %2368
  %2381 = fadd fast float %2371, %1001
  %2382 = call float @dx.op.unary.f32(i32 7, float %2381)  ; Saturate(value)
  %2383 = call float @dx.op.dot3.f32(i32 55, float %2378, float %2379, float %2380, float %2378, float %2379, float %2380)  ; Dot3(ax,ay,az,bx,by,bz)
  %2384 = call float @dx.op.unary.f32(i32 25, float %2383)  ; Rsqrt(value)
  %2385 = fmul fast float %2384, %2378
  %2386 = fmul fast float %2384, %2379
  %2387 = fmul fast float %2384, %2380
  %2388 = fadd fast float %2372, 0xBFB99999A0000000
  %2389 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2390 = fmul fast float %2389, 0x3FF1C71C80000000
  %2391 = call float @dx.op.binary.f32(i32 36, float %2372, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2392 = fsub fast float 1.000000e+00, %2390
  %2393 = call float @dx.op.unary.f32(i32 7, float %2392)  ; Saturate(value)
  %2394 = fmul fast float %2393, %2373
  %2395 = fmul fast float %2393, %2374
  %2396 = fmul fast float %2393, %2375
  %2397 = call float @dx.op.unary.f32(i32 7, float %2394)  ; Saturate(value)
  %2398 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2399 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  %2400 = fmul fast float %2390, %2373
  %2401 = fmul fast float %2390, %2374
  %2402 = fmul fast float %2390, %2375
  %2403 = fadd fast float %2400, %2391
  %2404 = fadd fast float %2401, %2391
  %2405 = fadd fast float %2402, %2391
  %2406 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  %2407 = call float @dx.op.unary.f32(i32 7, float %2404)  ; Saturate(value)
  %2408 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  %2409 = call float @dx.op.unary.f32(i32 7, float %2370)  ; Saturate(value)
  %2410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2411 = extractvalue %dx.types.CBufRet.i32 %2410, 3
  %2412 = and i32 %2411, 8
  %2413 = icmp ne i32 %2412, 0
  %2414 = call float @dx.op.binary.f32(i32 35, float %2397, float %2373)  ; FMax(a,b)
  %2415 = call float @dx.op.binary.f32(i32 35, float %2398, float %2373)  ; FMax(a,b)
  %2416 = call float @dx.op.binary.f32(i32 35, float %2399, float %2373)  ; FMax(a,b)
  %2417 = call float @dx.op.dot3.f32(i32 55, float %2397, float %2398, float %2399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2418 = select i1 %243, float %2373, float %2397
  %2419 = select i1 %243, float %2417, float %2398
  %2420 = select i1 %243, float 1.000000e+00, float %2399
  %2421 = select i1 %2413, float %2414, float %2418
  %2422 = select i1 %2413, float %2415, float %2419
  %2423 = select i1 %2413, float %2416, float %2420
  %2424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.f32 %2424, 0
  %2426 = extractvalue %dx.types.CBufRet.f32 %2424, 1
  %2427 = extractvalue %dx.types.CBufRet.f32 %2424, 2
  %2428 = fadd fast float %2425, %152
  %2429 = fadd fast float %2426, %153
  %2430 = fadd fast float %2427, %154
  %2431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2432 = extractvalue %dx.types.CBufRet.f32 %2431, 0
  %2433 = extractvalue %dx.types.CBufRet.f32 %2431, 1
  %2434 = fsub fast float %2428, %2432
  %2435 = fsub fast float %2429, %2433
  %2436 = fmul fast float %2434, %2434
  %2437 = fmul fast float %2435, %2435
  %2438 = fadd fast float %2436, %2437
  %2439 = call float @dx.op.unary.f32(i32 24, float %2438)  ; Sqrt(value)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2431, 2
  %2441 = fcmp fast olt float %2439, %2440
  br i1 %2441, label %2442, label %2509

; <label>:2442                                    ; preds = %2356
  %2443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2444 = extractvalue %dx.types.CBufRet.f32 %2443, 0
  %2445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2446 = extractvalue %dx.types.CBufRet.f32 %2445, 0
  %2447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2448 = extractvalue %dx.types.CBufRet.f32 %2447, 0
  %2449 = extractvalue %dx.types.CBufRet.f32 %2443, 1
  %2450 = extractvalue %dx.types.CBufRet.f32 %2445, 1
  %2451 = extractvalue %dx.types.CBufRet.f32 %2447, 1
  %2452 = extractvalue %dx.types.CBufRet.f32 %2443, 3
  %2453 = extractvalue %dx.types.CBufRet.f32 %2445, 3
  %2454 = extractvalue %dx.types.CBufRet.f32 %2447, 3
  %2455 = fadd fast float %2452, %2428
  %2456 = fadd fast float %2453, %2429
  %2457 = fadd fast float %2454, %2430
  %2458 = fmul fast float %2455, %2444
  %2459 = call float @dx.op.tertiary.f32(i32 46, float %2456, float %2446, float %2458)  ; FMad(a,b,c)
  %2460 = call float @dx.op.tertiary.f32(i32 46, float %2457, float %2448, float %2459)  ; FMad(a,b,c)
  %2461 = fmul fast float %2455, %2449
  %2462 = call float @dx.op.tertiary.f32(i32 46, float %2456, float %2450, float %2461)  ; FMad(a,b,c)
  %2463 = call float @dx.op.tertiary.f32(i32 46, float %2457, float %2451, float %2462)  ; FMad(a,b,c)
  %2464 = fsub fast float %2460, %2452
  %2465 = fsub fast float %2463, %2453
  %2466 = fsub fast float %2464, %2432
  %2467 = fadd fast float %2466, %2440
  %2468 = fsub fast float %2465, %2433
  %2469 = fadd fast float %2468, %2440
  %2470 = extractvalue %dx.types.CBufRet.f32 %2431, 3
  %2471 = fmul fast float %2467, %2470
  %2472 = fmul fast float %2469, %2470
  %2473 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  %2474 = call float @dx.op.unary.f32(i32 7, float %2472)  ; Saturate(value)
  %2475 = fsub fast float 1.000000e+00, %2473
  %2476 = fsub fast float 1.000000e+00, %2474
  %2477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %2475, float %2476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2478 = extractvalue %dx.types.ResRet.f32 %2477, 0
  %2479 = fcmp fast ugt float %2478, 0.000000e+00
  br i1 %2479, label %2480, label %2783

; <label>:2480                                    ; preds = %2442
  %2481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2482 = extractvalue %dx.types.CBufRet.f32 %2481, 2
  %2483 = fmul fast float %2482, %2478
  %2484 = extractvalue %dx.types.CBufRet.f32 %2481, 3
  %2485 = fadd fast float %2484, %2483
  %2486 = extractvalue %dx.types.CBufRet.f32 %2447, 2
  %2487 = fadd fast float %2485, %2454
  %2488 = fmul fast float %2460, %2448
  %2489 = call float @dx.op.tertiary.f32(i32 46, float %2463, float %2451, float %2488)  ; FMad(a,b,c)
  %2490 = call float @dx.op.tertiary.f32(i32 46, float %2487, float %2486, float %2489)  ; FMad(a,b,c)
  %2491 = fsub fast float %2490, %2454
  %2492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.f32 %2492, 2
  %2494 = fsub fast float %2491, %2493
  %2495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %2475, float %2476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.ResRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.ResRet.f32 %2495, 2
  %2499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %2475, float %2476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2500 = extractvalue %dx.types.ResRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.ResRet.f32 %2499, 1
  %2502 = extractvalue %dx.types.ResRet.f32 %2499, 2
  %2503 = fadd fast float %2500, %2496
  %2504 = fmul fast float %2503, 0x3F847AE140000000
  %2505 = fadd fast float %2501, %2497
  %2506 = fmul fast float %2505, 0x3F847AE140000000
  %2507 = fadd fast float %2502, %2498
  %2508 = fmul fast float %2507, 0x3F847AE140000000
  br label %2783

; <label>:2509                                    ; preds = %2356
  %2510 = and i32 %219, 1
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2783, label %2512

; <label>:2512                                    ; preds = %2509
  %2513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2514 = extractvalue %dx.types.CBufRet.f32 %2513, 0
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2518 = extractvalue %dx.types.CBufRet.f32 %2517, 0
  %2519 = extractvalue %dx.types.CBufRet.f32 %2513, 1
  %2520 = extractvalue %dx.types.CBufRet.f32 %2515, 1
  %2521 = extractvalue %dx.types.CBufRet.f32 %2517, 1
  %2522 = extractvalue %dx.types.CBufRet.f32 %2513, 3
  %2523 = extractvalue %dx.types.CBufRet.f32 %2515, 3
  %2524 = extractvalue %dx.types.CBufRet.f32 %2517, 3
  %2525 = fadd fast float %2522, %2428
  %2526 = fadd fast float %2523, %2429
  %2527 = fadd fast float %2524, %2430
  %2528 = fmul fast float %2525, %2514
  %2529 = call float @dx.op.tertiary.f32(i32 46, float %2526, float %2516, float %2528)  ; FMad(a,b,c)
  %2530 = call float @dx.op.tertiary.f32(i32 46, float %2527, float %2518, float %2529)  ; FMad(a,b,c)
  %2531 = fmul fast float %2525, %2519
  %2532 = call float @dx.op.tertiary.f32(i32 46, float %2526, float %2520, float %2531)  ; FMad(a,b,c)
  %2533 = call float @dx.op.tertiary.f32(i32 46, float %2527, float %2521, float %2532)  ; FMad(a,b,c)
  %2534 = fsub fast float %2530, %2522
  %2535 = fsub fast float %2533, %2523
  %2536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.f32 %2536, 0
  %2538 = extractvalue %dx.types.CBufRet.f32 %2536, 1
  %2539 = extractvalue %dx.types.CBufRet.f32 %2536, 2
  %2540 = extractvalue %dx.types.CBufRet.f32 %2536, 3
  %2541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2542 = extractvalue %dx.types.CBufRet.f32 %2541, 3
  %2543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.i32 %2543, 0
  %2545 = extractvalue %dx.types.CBufRet.i32 %2543, 1
  %2546 = udiv i32 %2545, %2544
  %2547 = fsub fast float %2534, %2537
  %2548 = fsub fast float %2535, %2538
  %2549 = call float @dx.op.binary.f32(i32 35, float %2547, float 0.000000e+00)  ; FMax(a,b)
  %2550 = call float @dx.op.binary.f32(i32 35, float %2548, float 0.000000e+00)  ; FMax(a,b)
  %2551 = call float @dx.op.binary.f32(i32 36, float %2549, float %2539)  ; FMin(a,b)
  %2552 = call float @dx.op.binary.f32(i32 36, float %2550, float %2540)  ; FMin(a,b)
  %2553 = add i32 %2544, -1
  %2554 = add i32 %2546, -1
  %2555 = fmul fast float %2551, %2542
  %2556 = fmul fast float %2552, %2542
  %2557 = fptoui float %2555 to i32
  %2558 = fptoui float %2556 to i32
  %2559 = call i32 @dx.op.binary.i32(i32 40, i32 %2557, i32 %2553)  ; UMin(a,b)
  %2560 = call i32 @dx.op.binary.i32(i32 40, i32 %2558, i32 %2554)  ; UMin(a,b)
  %2561 = mul i32 %2560, %2544
  %2562 = add i32 %2561, %2559
  %2563 = shl i32 %2562, 2
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = icmp eq i32 %2565, -1
  br i1 %2566, label %2783, label %2567

; <label>:2567                                    ; preds = %2512
  %2568 = mul i32 %2565, 148
  %2569 = add i32 %2568, 4
  %2570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.f32 %2570, 0
  %2572 = add i32 %2568, 8
  %2573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.f32 %2573, 0
  %2575 = add i32 %2568, 36
  %2576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.f32 %2576, 0
  %2578 = add i32 %2568, 60
  %2579 = add i32 %2568, 92
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = add i32 %2568, 116
  %2583 = fsub fast float %2534, %2571
  %2584 = fsub fast float %2535, %2574
  %2585 = fmul fast float %2542, %2583
  %2586 = fmul fast float %2542, %2584
  %2587 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  %2588 = call float @dx.op.unary.f32(i32 7, float %2586)  ; Saturate(value)
  %2589 = fsub fast float 1.000000e+00, %2588
  %2590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2590, 2
  %2592 = call float @dx.op.unary.f32(i32 83, float %2587)  ; DerivCoarseX(value)
  %2593 = call float @dx.op.unary.f32(i32 83, float %2589)  ; DerivCoarseX(value)
  %2594 = call float @dx.op.unary.f32(i32 84, float %2587)  ; DerivCoarseY(value)
  %2595 = call float @dx.op.unary.f32(i32 84, float %2589)  ; DerivCoarseY(value)
  %2596 = fmul fast float %2592, %2591
  %2597 = fmul fast float %2593, %2591
  %2598 = fmul fast float %2594, %2591
  %2599 = fmul fast float %2595, %2591
  %2600 = call float @dx.op.dot2.f32(i32 54, float %2598, float %2599, float %2598, float %2599)  ; Dot2(ax,ay,bx,by)
  %2601 = call float @dx.op.dot2.f32(i32 54, float %2596, float %2597, float %2596, float %2597)  ; Dot2(ax,ay,bx,by)
  %2602 = call float @dx.op.binary.f32(i32 35, float %2601, float %2600)  ; FMax(a,b)
  %2603 = call float @dx.op.unary.f32(i32 23, float %2602)  ; Log(value)
  %2604 = fmul fast float %2603, 5.000000e-01
  %2605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2606 = extractvalue %dx.types.CBufRet.f32 %2605, 1
  %2607 = fadd fast float %2606, %2604
  %2608 = call float @dx.op.binary.f32(i32 35, float %2607, float 0.000000e+00)  ; FMax(a,b)
  %2609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.f32 %2609, 3
  %2611 = fadd fast float %2610, %2608
  %2612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2613 = extractvalue %dx.types.CBufRet.f32 %2612, 3
  %2614 = fadd fast float %2611, %2613
  %2615 = add i32 %2581, 0
  %2616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2615, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2617 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2616, i32 0)  ; GetDimensions(handle,mipLevel)
  %2618 = extractvalue %dx.types.Dimensions %2617, 0
  %2619 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2618)  ; FirstbitLo(value)
  %2620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2621 = extractvalue %dx.types.CBufRet.i32 %2620, 1
  %2622 = sub nsw i32 %2621, %2619
  %2623 = sitofp i32 %2622 to float
  %2624 = fsub fast float %2614, %2623
  %2625 = call float @dx.op.binary.f32(i32 35, float %2624, float 0.000000e+00)  ; FMax(a,b)
  %2626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2616, %dx.types.Handle %62, float %2587, float %2589, float %2577, float undef, i32 0, i32 0, i32 undef, float %2625)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2627 = extractvalue %dx.types.ResRet.f32 %2626, 0
  %2628 = fcmp ule float %2627, 0x3FE0101020000000
  %2629 = extractvalue %dx.types.CBufRet.i32 %2620, 0
  %2630 = and i32 %2629, 128
  %2631 = icmp ne i32 %2630, 0
  %2632 = and i1 %2628, %2631
  br i1 %2632, label %2783, label %2633

; <label>:2633                                    ; preds = %2567
  %2634 = add i32 %2568, 20
  %2635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2634, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.f32 %2635, 0
  %2637 = add i32 %2568, 24
  %2638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.f32 %2638, 0
  %2640 = add i32 %2568, 40
  %2641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 0
  %2643 = add i32 %2568, 96
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2647 = extractvalue %dx.types.CBufRet.f32 %2646, 2
  %2648 = fmul fast float %2647, %2587
  %2649 = fmul fast float %2647, %2589
  %2650 = extractvalue %dx.types.CBufRet.f32 %2646, 3
  %2651 = fadd fast float %2648, %2650
  %2652 = fadd fast float %2649, %2650
  %2653 = add i32 %2645, 0
  %2654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2653, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2655 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2654, i32 0)  ; GetDimensions(handle,mipLevel)
  %2656 = extractvalue %dx.types.Dimensions %2655, 0
  %2657 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2656)  ; FirstbitLo(value)
  %2658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.i32 %2658, 1
  %2660 = sub nsw i32 %2659, %2657
  %2661 = sitofp i32 %2660 to float
  %2662 = fsub fast float %2611, %2661
  %2663 = call float @dx.op.binary.f32(i32 35, float %2662, float 0.000000e+00)  ; FMax(a,b)
  %2664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2654, %dx.types.Handle %62, float %2651, float %2652, float %2642, float undef, i32 0, i32 0, i32 undef, float %2663)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = fmul fast float %2665, %2636
  %2667 = fadd fast float %2666, %2639
  %2668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2669 = extractvalue %dx.types.CBufRet.f32 %2668, 0
  %2670 = extractvalue %dx.types.CBufRet.f32 %2668, 1
  %2671 = extractvalue %dx.types.CBufRet.f32 %2668, 2
  %2672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2673 = extractvalue %dx.types.CBufRet.f32 %2672, 3
  %2674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2675 = extractvalue %dx.types.CBufRet.f32 %2674, 3
  %2676 = extractvalue %dx.types.CBufRet.f32 %2668, 3
  %2677 = fadd fast float %2673, %2534
  %2678 = fadd fast float %2675, %2535
  %2679 = fadd fast float %2667, %2676
  %2680 = fmul fast float %2677, %2669
  %2681 = call float @dx.op.tertiary.f32(i32 46, float %2678, float %2670, float %2680)  ; FMad(a,b,c)
  %2682 = call float @dx.op.tertiary.f32(i32 46, float %2679, float %2671, float %2681)  ; FMad(a,b,c)
  %2683 = fsub fast float %2682, %2676
  %2684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2685 = extractvalue %dx.types.CBufRet.f32 %2684, 2
  %2686 = fsub fast float %2683, %2685
  %2687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.i32 %2687, 0
  %2689 = call i32 @dx.op.binary.i32(i32 40, i32 %2565, i32 %2688)  ; UMin(a,b)
  %2690 = mul i32 %2689, 36
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2690, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = add i32 %2690, 4
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 0
  %2696 = fmul fast float %2695, %2587
  %2697 = fmul fast float %2695, %2589
  %2698 = extractvalue %dx.types.CBufRet.f32 %2694, 1
  %2699 = fadd fast float %2696, %2698
  %2700 = fadd fast float %2697, %2698
  %2701 = icmp eq i32 %2692, 0
  br i1 %2701, label %2770, label %2702

; <label>:2702                                    ; preds = %2633
  br label %2703

; <label>:2703                                    ; preds = %2760, %2702
  %2704 = phi float [ %2761, %2760 ], [ 0.000000e+00, %2702 ]
  %2705 = phi float [ %2762, %2760 ], [ 0.000000e+00, %2702 ]
  %2706 = phi float [ %2763, %2760 ], [ 0.000000e+00, %2702 ]
  %2707 = phi float [ %2764, %2760 ], [ 0.000000e+00, %2702 ]
  %2708 = phi float [ %2765, %2760 ], [ 0.000000e+00, %2702 ]
  %2709 = phi float [ %2766, %2760 ], [ 0.000000e+00, %2702 ]
  %2710 = phi i32 [ %2767, %2760 ], [ 0, %2702 ]
  %2711 = shl i32 %2710, 2
  %2712 = add i32 %2578, %2711
  %2713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = add i32 %2582, %2711
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = add i32 %2717, 0
  %2719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2718, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2720 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2719, i32 0)  ; GetDimensions(handle,mipLevel)
  %2721 = extractvalue %dx.types.Dimensions %2720, 0
  %2722 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2721)  ; FirstbitLo(value)
  %2723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2724 = extractvalue %dx.types.CBufRet.i32 %2723, 1
  %2725 = sub nsw i32 %2724, %2722
  %2726 = sitofp i32 %2725 to float
  %2727 = fsub fast float %2611, %2726
  %2728 = call float @dx.op.binary.f32(i32 35, float %2727, float 0.000000e+00)  ; FMax(a,b)
  %2729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2719, %dx.types.Handle %62, float %2699, float %2700, float %2714, float undef, i32 0, i32 0, i32 undef, float %2728)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2731 = fcmp fast ogt float %2730, 0.000000e+00
  br i1 %2731, label %2732, label %2760

; <label>:2732                                    ; preds = %2703
  %2733 = add i32 %2693, %2711
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = and i32 %2735, 32767
  %2737 = mul nuw nsw i32 %2736, 928
  %2738 = add nuw nsw i32 %2737, 48
  %2739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.ResRet.f32 %2739, 1
  %2742 = extractvalue %dx.types.ResRet.f32 %2739, 2
  %2743 = add nuw nsw i32 %2737, 60
  %2744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.f32 %2744, 0
  %2746 = extractvalue %dx.types.ResRet.f32 %2744, 1
  %2747 = extractvalue %dx.types.ResRet.f32 %2744, 2
  %2748 = fmul fast float %2740, %2730
  %2749 = fmul fast float %2741, %2730
  %2750 = fmul fast float %2742, %2730
  %2751 = fadd fast float %2748, %2704
  %2752 = fadd fast float %2749, %2705
  %2753 = fadd fast float %2750, %2706
  %2754 = fmul fast float %2745, %2730
  %2755 = fmul fast float %2746, %2730
  %2756 = fmul fast float %2747, %2730
  %2757 = fadd fast float %2754, %2707
  %2758 = fadd fast float %2755, %2708
  %2759 = fadd fast float %2756, %2709
  br label %2760

; <label>:2760                                    ; preds = %2732, %2703
  %2761 = phi float [ %2751, %2732 ], [ %2704, %2703 ]
  %2762 = phi float [ %2752, %2732 ], [ %2705, %2703 ]
  %2763 = phi float [ %2753, %2732 ], [ %2706, %2703 ]
  %2764 = phi float [ %2757, %2732 ], [ %2707, %2703 ]
  %2765 = phi float [ %2758, %2732 ], [ %2708, %2703 ]
  %2766 = phi float [ %2759, %2732 ], [ %2709, %2703 ]
  %2767 = add nuw i32 %2710, 1
  %2768 = icmp eq i32 %2767, %2692
  br i1 %2768, label %2769, label %2703

; <label>:2769                                    ; preds = %2760
  br label %2770

; <label>:2770                                    ; preds = %2769, %2633
  %2771 = phi float [ 0.000000e+00, %2633 ], [ %2761, %2769 ]
  %2772 = phi float [ 0.000000e+00, %2633 ], [ %2762, %2769 ]
  %2773 = phi float [ 0.000000e+00, %2633 ], [ %2763, %2769 ]
  %2774 = phi float [ 0.000000e+00, %2633 ], [ %2764, %2769 ]
  %2775 = phi float [ 0.000000e+00, %2633 ], [ %2765, %2769 ]
  %2776 = phi float [ 0.000000e+00, %2633 ], [ %2766, %2769 ]
  %2777 = fadd fast float %2774, %2771
  %2778 = fmul fast float %2777, 0x3F847AE140000000
  %2779 = fadd fast float %2775, %2772
  %2780 = fmul fast float %2779, 0x3F847AE140000000
  %2781 = fadd fast float %2776, %2773
  %2782 = fmul fast float %2781, 0x3F847AE140000000
  br label %2783

; <label>:2783                                    ; preds = %2770, %2567, %2512, %2509, %2480, %2442
  %2784 = phi float [ %2494, %2480 ], [ -1.310720e+05, %2442 ], [ %2686, %2770 ], [ -1.310720e+05, %2512 ], [ -1.310720e+05, %2567 ], [ -1.310720e+05, %2509 ]
  %2785 = phi float [ %2504, %2480 ], [ 0.000000e+00, %2442 ], [ %2778, %2770 ], [ 0.000000e+00, %2512 ], [ 0.000000e+00, %2567 ], [ 0.000000e+00, %2509 ]
  %2786 = phi float [ %2506, %2480 ], [ 0.000000e+00, %2442 ], [ %2780, %2770 ], [ 0.000000e+00, %2512 ], [ 0.000000e+00, %2567 ], [ 0.000000e+00, %2509 ]
  %2787 = phi float [ %2508, %2480 ], [ 0.000000e+00, %2442 ], [ %2782, %2770 ], [ 0.000000e+00, %2512 ], [ 0.000000e+00, %2567 ], [ 0.000000e+00, %2509 ]
  %2788 = phi i1 [ true, %2480 ], [ false, %2442 ], [ true, %2770 ], [ false, %2512 ], [ false, %2567 ], [ false, %2509 ]
  %2789 = and i32 %219, 3
  %2790 = icmp eq i32 %2789, 1
  %2791 = select i1 %2790, float 1.000000e+00, float 0.000000e+00
  %2792 = fsub fast float %2784, %154
  %2793 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  %2794 = select i1 %2788, float %2793, float 1.000000e+00
  %2795 = fmul fast float %2794, %2791
  %2796 = icmp eq i32 %2789, 3
  %2797 = select i1 %2796, float 1.000000e+00, float %2795
  %2798 = call float @dx.op.binary.f32(i32 35, float %2357, float %2797)  ; FMax(a,b)
  %2799 = call float @dx.op.unary.f32(i32 7, float %2798)  ; Saturate(value)
  %2800 = fcmp fast une float %2799, 0.000000e+00
  %2801 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %2802 = call float @dx.op.unary.f32(i32 25, float %2801)  ; Rsqrt(value)
  br i1 %2800, label %2810, label %2803

; <label>:2803                                    ; preds = %2783
  %2804 = fmul fast float %2802, %152
  %2805 = fmul fast float %2802, %153
  %2806 = fmul fast float %2802, %154
  %2807 = fsub fast float -0.000000e+00, %2804
  %2808 = fsub fast float -0.000000e+00, %2805
  %2809 = fsub fast float -0.000000e+00, %2806
  br label %2978

; <label>:2810                                    ; preds = %2783
  %2811 = fmul fast float %152, %2802
  %2812 = fsub fast float -0.000000e+00, %2811
  %2813 = fmul fast float %153, %2802
  %2814 = fsub fast float -0.000000e+00, %2813
  %2815 = fmul fast float %154, %2802
  %2816 = fsub fast float -0.000000e+00, %2815
  %2817 = call float @dx.op.dot3.f32(i32 55, float %2812, float %2814, float %2816, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %2818 = fmul fast float %2799, 2.500000e+00
  %2819 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2820 = fmul fast float %2799, 0x4013FFFFE0000000
  %2821 = fadd fast float %2820, 0xBFFFFFFFE0000000
  %2822 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  %2823 = fmul fast float %2799, 0x4004000020000000
  %2824 = fadd fast float %2823, 0xBFF8000040000000
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2826 = call float @dx.op.unary.f32(i32 7, float %2819)  ; Saturate(value)
  %2827 = fmul fast float %2388, 1.000000e+01
  %2828 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2829 = fmul fast float %2828, 2.000000e+00
  %2830 = fsub fast float 3.000000e+00, %2829
  %2831 = fmul fast float %2828, %2828
  %2832 = fmul fast float %2831, %2830
  %2833 = fsub fast float 1.000000e+00, %2832
  %2834 = fsub fast float 0x3FE3333340000000, %2409
  %2835 = fmul fast float %2834, 0x400AAAAAA0000000
  %2836 = call float @dx.op.unary.f32(i32 7, float %2835)  ; Saturate(value)
  %2837 = fmul fast float %2833, %2836
  %2838 = fmul fast float %2421, 0x3FEA2B8620000000
  %2839 = fmul fast float %2422, 0x3FEA2B8620000000
  %2840 = fmul fast float %2423, 0x3FEA2B8620000000
  %2841 = fadd fast float %2838, 0x3FC81DFBA0000000
  %2842 = fmul fast float %2841, %2421
  %2843 = fadd fast float %2842, 0x3F910E6020000000
  %2844 = fadd fast float %2839, 0x3FC81DFBA0000000
  %2845 = fmul fast float %2844, %2422
  %2846 = fadd fast float %2845, 0x3F910E6020000000
  %2847 = fadd fast float %2840, 0x3FC81DFBA0000000
  %2848 = fmul fast float %2847, %2423
  %2849 = fadd fast float %2848, 0x3F910E6020000000
  %2850 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2851 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  %2852 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2853 = fsub fast float %2850, %2421
  %2854 = fsub fast float %2851, %2422
  %2855 = fsub fast float %2852, %2423
  %2856 = fmul fast float %2853, %2826
  %2857 = fmul fast float %2856, %2837
  %2858 = fmul fast float %2854, %2826
  %2859 = fmul fast float %2858, %2837
  %2860 = fmul fast float %2855, %2826
  %2861 = fmul fast float %2860, %2837
  %2862 = fadd fast float %2857, %2421
  %2863 = fadd fast float %2859, %2422
  %2864 = fadd fast float %2861, %2423
  %2865 = fmul fast float %2369, %2369
  %2866 = fmul fast float %2865, %2865
  %2867 = fadd fast float %2822, 1.000000e+00
  %2868 = fsub fast float %2867, %2837
  %2869 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  %2870 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2871 = call float @dx.op.unary.f32(i32 7, float %2870)  ; Saturate(value)
  %2872 = fsub fast float 1.000000e+00, %2866
  %2873 = call float @dx.op.binary.f32(i32 36, float %2869, float %2872)  ; FMin(a,b)
  %2874 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2875 = call float @dx.op.binary.f32(i32 35, float %2873, float %2874)  ; FMax(a,b)
  %2876 = fadd fast float %2871, 0xBFE4CCCCC0000000
  %2877 = fmul fast float %2876, 0x4006DB6DA0000000
  %2878 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  %2879 = fmul fast float %2878, 2.000000e+00
  %2880 = fsub fast float 3.000000e+00, %2879
  %2881 = bitcast float %2406 to i32
  %2882 = ashr i32 %2881, 1
  %2883 = add nsw i32 %2882, 532487669
  %2884 = bitcast i32 %2883 to float
  %2885 = fsub fast float 1.000000e+00, %2884
  %2886 = bitcast float %2885 to i32
  %2887 = sub nsw i32 2129859010, %2886
  %2888 = bitcast i32 %2887 to float
  %2889 = fmul fast float %2888, 2.000000e+00
  %2890 = bitcast float %2407 to i32
  %2891 = ashr i32 %2890, 1
  %2892 = add nsw i32 %2891, 532487669
  %2893 = bitcast i32 %2892 to float
  %2894 = fsub fast float 1.000000e+00, %2893
  %2895 = bitcast float %2894 to i32
  %2896 = sub nsw i32 2129859010, %2895
  %2897 = bitcast i32 %2896 to float
  %2898 = fmul fast float %2897, 2.000000e+00
  %2899 = bitcast float %2408 to i32
  %2900 = ashr i32 %2899, 1
  %2901 = add nsw i32 %2900, 532487669
  %2902 = bitcast i32 %2901 to float
  %2903 = fsub fast float 1.000000e+00, %2902
  %2904 = bitcast float %2903 to i32
  %2905 = sub nsw i32 2129859010, %2904
  %2906 = bitcast i32 %2905 to float
  %2907 = fmul fast float %2906, 2.000000e+00
  %2908 = fsub fast float 0x4002A9FBE0000000, %2889
  %2909 = fadd fast float %2889, 0x3FD54FDF00000000
  %2910 = bitcast float %2909 to i32
  %2911 = sub nsw i32 2129859010, %2910
  %2912 = bitcast i32 %2911 to float
  %2913 = fmul fast float %2912, %2908
  %2914 = fmul fast float %2913, %2913
  %2915 = fsub fast float 0x4002A9FBE0000000, %2898
  %2916 = fadd fast float %2898, 0x3FD54FDF00000000
  %2917 = bitcast float %2916 to i32
  %2918 = sub nsw i32 2129859010, %2917
  %2919 = bitcast i32 %2918 to float
  %2920 = fmul fast float %2919, %2915
  %2921 = fmul fast float %2920, %2920
  %2922 = fsub fast float 0x4002A9FBE0000000, %2907
  %2923 = fadd fast float %2907, 0x3FD54FDF00000000
  %2924 = bitcast float %2923 to i32
  %2925 = sub nsw i32 2129859010, %2924
  %2926 = bitcast i32 %2925 to float
  %2927 = fmul fast float %2926, %2922
  %2928 = fmul fast float %2927, %2927
  %2929 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2914)  ; FMax(a,b)
  %2930 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2921)  ; FMax(a,b)
  %2931 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2928)  ; FMax(a,b)
  %2932 = fsub fast float 1.000000e+00, %2817
  %2933 = fadd fast float %2932, %2833
  %2934 = call float @dx.op.unary.f32(i32 7, float %2933)  ; Saturate(value)
  %2935 = fsub fast float 1.000000e+00, %2797
  %2936 = fmul fast float %2875, %2935
  %2937 = fmul fast float %2878, %2878
  %2938 = fmul fast float %2937, %2936
  %2939 = fmul fast float %2938, %2880
  %2940 = fmul fast float %2935, 0xBFE99999A0000000
  %2941 = fmul fast float %2940, %2826
  %2942 = fmul fast float %2941, %2837
  %2943 = fadd fast float %2942, 1.000000e+00
  %2944 = fadd fast float %2409, -1.000000e+00
  %2945 = fmul fast float %2943, %2944
  %2946 = fadd fast float %2945, 1.000000e+00
  %2947 = fsub fast float %2929, %2406
  %2948 = fsub fast float %2930, %2407
  %2949 = fsub fast float %2931, %2408
  %2950 = fmul fast float %2939, %2947
  %2951 = fmul fast float %2939, %2948
  %2952 = fmul fast float %2939, %2949
  %2953 = fadd fast float %2950, %2406
  %2954 = fadd fast float %2951, %2407
  %2955 = fadd fast float %2952, %2408
  %2956 = fsub fast float %80, %2385
  %2957 = fsub fast float %81, %2386
  %2958 = fsub fast float %82, %2387
  %2959 = fmul fast float %2939, %2956
  %2960 = fmul fast float %2939, %2957
  %2961 = fmul fast float %2939, %2958
  %2962 = fadd fast float %2959, %2385
  %2963 = fadd fast float %2960, %2386
  %2964 = fadd fast float %2961, %2387
  %2965 = fmul fast float %2939, %2934
  %2966 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2967 = fsub fast float 1.000000e+00, %2966
  %2968 = fmul fast float %2965, %2967
  %2969 = fadd fast float %2968, %2966
  %2970 = fsub fast float 1.000000e+00, %2369
  %2971 = fmul fast float %2939, %2970
  %2972 = fadd fast float %2971, %2369
  %2973 = call float @dx.op.dot3.f32(i32 55, float %2962, float %2963, float %2964, float %2962, float %2963, float %2964)  ; Dot3(ax,ay,az,bx,by,bz)
  %2974 = call float @dx.op.unary.f32(i32 25, float %2973)  ; Rsqrt(value)
  %2975 = fmul fast float %2962, %2974
  %2976 = fmul fast float %2963, %2974
  %2977 = fmul fast float %2964, %2974
  br label %2978

; <label>:2978                                    ; preds = %2810, %2803
  %2979 = phi float [ %2809, %2803 ], [ %2816, %2810 ]
  %2980 = phi float [ %2808, %2803 ], [ %2814, %2810 ]
  %2981 = phi float [ %2807, %2803 ], [ %2812, %2810 ]
  %2982 = phi float [ %2806, %2803 ], [ %2815, %2810 ]
  %2983 = phi float [ %2805, %2803 ], [ %2813, %2810 ]
  %2984 = phi float [ %2804, %2803 ], [ %2811, %2810 ]
  %2985 = phi float [ %2385, %2803 ], [ %2975, %2810 ]
  %2986 = phi float [ %2386, %2803 ], [ %2976, %2810 ]
  %2987 = phi float [ %2387, %2803 ], [ %2977, %2810 ]
  %2988 = phi float [ %2421, %2803 ], [ %2862, %2810 ]
  %2989 = phi float [ %2422, %2803 ], [ %2863, %2810 ]
  %2990 = phi float [ %2423, %2803 ], [ %2864, %2810 ]
  %2991 = phi float [ %2406, %2803 ], [ %2953, %2810 ]
  %2992 = phi float [ %2407, %2803 ], [ %2954, %2810 ]
  %2993 = phi float [ %2408, %2803 ], [ %2955, %2810 ]
  %2994 = phi float [ %2409, %2803 ], [ %2969, %2810 ]
  %2995 = phi float [ %2369, %2803 ], [ %2972, %2810 ]
  %2996 = fsub fast float -0.000000e+00, %154
  %2997 = select i1 %243, float 0.000000e+00, float %2993
  %2998 = call float @dx.op.dot3.f32(i32 55, float %2985, float %2986, float %2987, float %2981, float %2980, float %2979)  ; Dot3(ax,ay,az,bx,by,bz)
  %2999 = call float @dx.op.unary.f32(i32 7, float %2998)  ; Saturate(value)
  %3000 = call float @dx.op.dot3.f32(i32 55, float %2984, float %2983, float %2982, float %2985, float %2986, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %3001 = fmul fast float %3000, 2.000000e+00
  %3002 = fmul fast float %3001, %2985
  %3003 = fmul fast float %3001, %2986
  %3004 = fmul fast float %3001, %2987
  %3005 = fsub fast float %2984, %3002
  %3006 = fsub fast float %2983, %3003
  %3007 = fsub fast float %2982, %3004
  %3008 = call float @dx.op.binary.f32(i32 36, float %2995, float 1.000000e+00)  ; FMin(a,b)
  %3009 = fsub fast float 1.000000e+00, %3008
  %3010 = bitcast float %3009 to i32
  %3011 = ashr i32 %3010, 1
  %3012 = add nsw i32 %3011, 532487669
  %3013 = bitcast i32 %3012 to float
  %3014 = fsub fast float 1.000000e+00, %2994
  %3015 = call float @dx.op.binary.f32(i32 35, float %3014, float 0x3F847AE140000000)  ; FMax(a,b)
  %3016 = fmul fast float %3015, %3015
  %3017 = fmul fast float %3016, %3016
  %3018 = call float @dx.op.unary.f32(i32 7, float %2999)  ; Saturate(value)
  %3019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %3013, float %3017, float %3018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3020 = extractvalue %dx.types.ResRet.f32 %3019, 0
  %3021 = fsub fast float 1.000000e+00, %2995
  %3022 = bitcast float %3021 to i32
  %3023 = sub nsw i32 2129859010, %3022
  %3024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3025 = extractvalue %dx.types.CBufRet.f32 %3024, 0
  %3026 = extractvalue %dx.types.CBufRet.f32 %3024, 1
  %3027 = fadd fast float %3025, %152
  %3028 = fadd fast float %3026, %153
  %3029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3030 = extractvalue %dx.types.CBufRet.i32 %3029, 0
  %3031 = icmp eq i32 %3030, 1
  br i1 %3031, label %3032, label %3067

; <label>:3032                                    ; preds = %2978
  %3033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3034 = extractvalue %dx.types.CBufRet.f32 %3033, 0
  %3035 = extractvalue %dx.types.CBufRet.f32 %3033, 1
  %3036 = fsub fast float %3027, %3034
  %3037 = fsub fast float %3028, %3035
  %3038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3039 = extractvalue %dx.types.CBufRet.f32 %3038, 0
  %3040 = extractvalue %dx.types.CBufRet.f32 %3038, 1
  %3041 = fmul fast float %3036, %3039
  %3042 = fmul fast float %3037, %3040
  %3043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %3041, float %3042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3044 = extractvalue %dx.types.ResRet.f32 %3043, 0
  %3045 = fcmp fast ogt float %3044, 0.000000e+00
  %3046 = extractvalue %dx.types.CBufRet.i32 %3029, 3
  %3047 = icmp ne i32 %3046, 0
  %3048 = and i1 %3045, %3047
  br i1 %3048, label %3049, label %3067, !dx.controlflow.hints !105

; <label>:3049                                    ; preds = %3032
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 0
  %3052 = extractvalue %dx.types.CBufRet.f32 %3050, 1
  %3053 = fsub fast float %3027, %3051
  %3054 = fsub fast float %3028, %3052
  %3055 = fmul fast float %3053, %3053
  %3056 = fmul fast float %3054, %3054
  %3057 = fadd fast float %3055, %3056
  %3058 = uitofp i32 %3046 to float
  %3059 = fmul fast float %3058, %3058
  %3060 = fcmp fast ogt float %3057, %3059
  br i1 %3060, label %3067, label %3061

; <label>:3061                                    ; preds = %3049
  %3062 = call float @dx.op.unary.f32(i32 24, float %3057)  ; Sqrt(value)
  %3063 = fsub fast float %3058, %3062
  %3064 = fmul fast float %3063, 0x3F75555560000000
  %3065 = call float @dx.op.unary.f32(i32 7, float %3064)  ; Saturate(value)
  %3066 = call float @dx.op.binary.f32(i32 36, float %3065, float %3044)  ; FMin(a,b)
  br label %3067

; <label>:3067                                    ; preds = %3061, %3049, %3032, %2978
  %3068 = phi float [ 1.000000e+00, %2978 ], [ %3066, %3061 ], [ %3044, %3032 ], [ 0.000000e+00, %3049 ]
  %3069 = fcmp fast ogt float %3068, 0.000000e+00
  br i1 %3069, label %3070, label %3169, !dx.controlflow.hints !106

; <label>:3070                                    ; preds = %3067
  %3071 = fadd fast float %183, 5.000000e-01
  %3072 = call float @dx.op.unary.f32(i32 27, float %3071)  ; Round_ni(value)
  %3073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %181, float %182, float %3072, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3074 = extractvalue %dx.types.ResRet.f32 %3073, 0
  %3075 = extractvalue %dx.types.ResRet.f32 %3073, 1
  %3076 = extractvalue %dx.types.ResRet.f32 %3073, 2
  %3077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3078 = extractvalue %dx.types.CBufRet.f32 %3077, 3
  %3079 = fmul fast float %3078, %3074
  %3080 = fmul fast float %3078, %3075
  %3081 = fmul fast float %3078, %3076
  %3082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %181, float %182, float %3072, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3083 = extractvalue %dx.types.ResRet.f32 %3082, 0
  %3084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %181, float %182, float %3072, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3085 = extractvalue %dx.types.ResRet.f32 %3084, 0
  %3086 = extractvalue %dx.types.ResRet.f32 %3084, 1
  %3087 = fmul fast float %3085, 2.000000e+00
  %3088 = fmul fast float %3086, 2.000000e+00
  %3089 = fadd fast float %3087, -1.000000e+00
  %3090 = fadd fast float %3088, -1.000000e+00
  %3091 = fadd fast float %3089, %3090
  %3092 = fmul fast float %3091, 5.000000e-01
  %3093 = fsub fast float %3089, %3090
  %3094 = fmul fast float %3093, 5.000000e-01
  %3095 = call float @dx.op.unary.f32(i32 6, float %3092)  ; FAbs(value)
  %3096 = fsub fast float 1.000000e+00, %3095
  %3097 = call float @dx.op.unary.f32(i32 6, float %3094)  ; FAbs(value)
  %3098 = fsub fast float %3096, %3097
  %3099 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3098)  ; FMax(a,b)
  %3100 = call float @dx.op.dot3.f32(i32 55, float %3092, float %3094, float %3099, float %3092, float %3094, float %3099)  ; Dot3(ax,ay,az,bx,by,bz)
  %3101 = bitcast float %3100 to i32
  %3102 = ashr i32 %3101, 1
  %3103 = sub nsw i32 1597250115, %3102
  %3104 = bitcast i32 %3103 to float
  %3105 = fmul fast float %3104, %3092
  %3106 = fmul fast float %3104, %3094
  %3107 = fmul fast float %3104, %3099
  %3108 = fsub fast float 1.000000e+00, %3083
  %3109 = fdiv fast float %3108, %3107
  %3110 = fmul fast float %3107, %80
  %3111 = fmul fast float %3107, %81
  %3112 = fmul fast float %3107, %82
  %3113 = fmul fast float %3105, %76
  %3114 = fmul fast float %3105, %77
  %3115 = fmul fast float %3105, %78
  %3116 = fadd fast float %3110, %3113
  %3117 = fadd fast float %3111, %3114
  %3118 = fadd fast float %3112, %3115
  %3119 = fmul fast float %3106, %116
  %3120 = fmul fast float %3106, %117
  %3121 = fmul fast float %3106, %118
  %3122 = fadd fast float %3116, %3119
  %3123 = fadd fast float %3117, %3120
  %3124 = fadd fast float %3118, %3121
  %3125 = call float @dx.op.dot3.f32(i32 55, float %3122, float %3123, float %3124, float %3122, float %3123, float %3124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3126 = call float @dx.op.unary.f32(i32 25, float %3125)  ; Rsqrt(value)
  %3127 = fmul fast float %3122, %3126
  %3128 = fmul fast float %3123, %3126
  %3129 = fmul fast float %3124, %3126
  %3130 = call float @dx.op.dot3.f32(i32 55, float %2985, float %2986, float %2987, float %2985, float %2986, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %3131 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3132 = fmul fast float %3131, 5.000000e-01
  %3133 = fadd fast float %3132, 5.000000e-01
  %3134 = fmul fast float %3133, %3083
  %3135 = call float @dx.op.dot3.f32(i32 55, float %2985, float %2986, float %2987, float %3127, float %3128, float %3129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3136 = call float @dx.op.unary.f32(i32 7, float %3135)  ; Saturate(value)
  %3137 = fmul fast float %3136, %3109
  %3138 = fadd fast float %3134, %3137
  %3139 = fsub fast float 5.000000e-01, %3132
  %3140 = fmul fast float %3139, %2988
  %3141 = fmul fast float %3139, %2989
  %3142 = fmul fast float %3139, %2990
  %3143 = fadd fast float %3138, %3140
  %3144 = fmul fast float %3143, %3079
  %3145 = fadd fast float %3138, %3141
  %3146 = fmul fast float %3145, %3080
  %3147 = fadd fast float %3138, %3142
  %3148 = fmul fast float %3147, %3081
  %3149 = call float @dx.op.dot3.f32(i32 55, float %3005, float %3006, float %3007, float %2985, float %2986, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %3150 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  %3151 = fmul fast float %3150, 5.000000e-01
  %3152 = fadd fast float %3151, 5.000000e-01
  %3153 = fmul fast float %3152, %3083
  %3154 = call float @dx.op.dot3.f32(i32 55, float %3005, float %3006, float %3007, float %3127, float %3128, float %3129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3155 = call float @dx.op.unary.f32(i32 7, float %3154)  ; Saturate(value)
  %3156 = fmul fast float %3155, %3109
  %3157 = fadd fast float %3153, %3156
  %3158 = fsub fast float 5.000000e-01, %3151
  %3159 = fmul fast float %3158, %2988
  %3160 = fmul fast float %3158, %2989
  %3161 = fmul fast float %3158, %2990
  %3162 = fadd fast float %3157, %3159
  %3163 = fmul fast float %3162, %3079
  %3164 = fadd fast float %3157, %3160
  %3165 = fmul fast float %3164, %3080
  %3166 = fadd fast float %3157, %3161
  %3167 = fmul fast float %3166, %3081
  %3168 = call float @dx.op.dot3.f32(i32 55, float %3079, float %3080, float %3081, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %3169

; <label>:3169                                    ; preds = %3070, %3067
  %3170 = phi float [ %3168, %3070 ], [ 0.000000e+00, %3067 ]
  %3171 = phi float [ %3163, %3070 ], [ 0.000000e+00, %3067 ]
  %3172 = phi float [ %3165, %3070 ], [ 0.000000e+00, %3067 ]
  %3173 = phi float [ %3167, %3070 ], [ 0.000000e+00, %3067 ]
  %3174 = phi float [ %3144, %3070 ], [ 0.000000e+00, %3067 ]
  %3175 = phi float [ %3146, %3070 ], [ 0.000000e+00, %3067 ]
  %3176 = phi float [ %3148, %3070 ], [ 0.000000e+00, %3067 ]
  %3177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3178 = extractvalue %dx.types.CBufRet.f32 %3177, 0
  %3179 = fcmp fast ogt float %3178, 0.000000e+00
  %3180 = and i1 %3069, %3179
  br i1 %3180, label %3181, label %3385, !dx.controlflow.hints !107

; <label>:3181                                    ; preds = %3169
  %3182 = extractvalue %dx.types.CBufRet.f32 %3024, 2
  %3183 = fadd fast float %3182, %154
  %3184 = fmul fast float %2985, 3.200000e+01
  %3185 = fmul fast float %2986, 3.200000e+01
  %3186 = fadd fast float %3027, %3184
  %3187 = fadd fast float %3028, %3185
  %3188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3189 = extractvalue %dx.types.CBufRet.f32 %3188, 0
  %3190 = extractvalue %dx.types.CBufRet.f32 %3188, 1
  %3191 = fsub fast float %3186, %3189
  %3192 = fsub fast float %3187, %3190
  %3193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3193, 0
  %3195 = extractvalue %dx.types.CBufRet.f32 %3193, 1
  %3196 = fmul fast float %3191, %3194
  %3197 = fmul fast float %3192, %3195
  %3198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3199 = extractvalue %dx.types.CBufRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.CBufRet.f32 %3198, 1
  %3201 = fsub fast float %3027, %3199
  %3202 = fsub fast float %3028, %3200
  %3203 = fmul fast float %3201, %3201
  %3204 = fmul fast float %3202, %3202
  %3205 = fadd fast float %3203, %3204
  %3206 = call float @dx.op.unary.f32(i32 24, float %3205)  ; Sqrt(value)
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = extractvalue %dx.types.CBufRet.f32 %3207, 1
  %3210 = fsub fast float %3206, %3208
  %3211 = fdiv fast float %3210, %3209
  %3212 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3213 = fmul fast float %3212, 2.000000e+00
  %3214 = fsub fast float 3.000000e+00, %3213
  %3215 = fmul fast float %3212, %3212
  %3216 = fmul fast float %3215, %3214
  %3217 = fcmp fast oge float %3196, 0.000000e+00
  %3218 = fcmp fast ole float %3196, 1.000000e+00
  %3219 = and i1 %3218, %3217
  %3220 = fcmp fast oge float %3197, 0.000000e+00
  %3221 = and i1 %3220, %3219
  %3222 = fcmp fast ole float %3197, 1.000000e+00
  %3223 = and i1 %3222, %3221
  %3224 = fcmp fast ogt float %3216, 0.000000e+00
  %3225 = and i1 %3224, %3223
  br i1 %3225, label %3226, label %3349, !dx.controlflow.hints !108

; <label>:3226                                    ; preds = %3181
  %3227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3228 = extractvalue %dx.types.CBufRet.f32 %3227, 2
  %3229 = extractvalue %dx.types.CBufRet.f32 %3227, 3
  %3230 = fmul fast float %3228, %3196
  %3231 = fmul fast float %3229, %3197
  %3232 = call float @dx.op.unary.f32(i32 27, float %3230)  ; Round_ni(value)
  %3233 = call float @dx.op.unary.f32(i32 27, float %3231)  ; Round_ni(value)
  %3234 = fptosi float %3232 to i32
  %3235 = fptosi float %3233 to i32
  %3236 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %3234, i32 %3235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = lshr i32 %3237, 16
  %3239 = icmp eq i32 %3238, 65535
  br i1 %3239, label %3349, label %3240

; <label>:3240                                    ; preds = %3226
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 0
  %3243 = fmul fast float %3242, %3196
  %3244 = extractvalue %dx.types.CBufRet.f32 %3241, 1
  %3245 = fadd fast float %3243, %3244
  %3246 = extractvalue %dx.types.CBufRet.f32 %3241, 2
  %3247 = fmul fast float %3246, %3197
  %3248 = extractvalue %dx.types.CBufRet.f32 %3241, 3
  %3249 = fadd fast float %3247, %3248
  %3250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %3245, float %3249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3251 = extractvalue %dx.types.ResRet.f32 %3250, 0
  %3252 = extractvalue %dx.types.ResRet.f32 %3250, 1
  %3253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3254 = extractvalue %dx.types.CBufRet.f32 %3253, 1
  %3255 = extractvalue %dx.types.CBufRet.f32 %3253, 0
  %3256 = fsub fast float %3254, %3255
  %3257 = fmul fast float %3256, %3251
  %3258 = fadd fast float %3257, %3255
  %3259 = extractvalue %dx.types.CBufRet.f32 %3253, 3
  %3260 = extractvalue %dx.types.CBufRet.f32 %3253, 2
  %3261 = fsub fast float %3259, %3260
  %3262 = fmul fast float %3261, %3252
  %3263 = fadd fast float %3262, %3260
  %3264 = fsub fast float %3183, %3258
  %3265 = fsub fast float %3263, %3258
  %3266 = fdiv fast float %3264, %3265
  %3267 = call float @dx.op.unary.f32(i32 7, float %3266)  ; Saturate(value)
  %3268 = extractvalue %dx.types.CBufRet.f32 %3177, 1
  %3269 = extractvalue %dx.types.CBufRet.f32 %3227, 0
  %3270 = extractvalue %dx.types.CBufRet.f32 %3227, 1
  %3271 = fmul fast float %3269, %3196
  %3272 = fmul fast float %3270, %3197
  %3273 = fmul fast float %3271, 1.250000e-01
  %3274 = fmul fast float %3272, 1.250000e-01
  %3275 = call float @dx.op.unary.f32(i32 27, float %3273)  ; Round_ni(value)
  %3276 = call float @dx.op.unary.f32(i32 27, float %3274)  ; Round_ni(value)
  %3277 = fmul fast float %3275, 8.000000e+00
  %3278 = fmul fast float %3276, 8.000000e+00
  %3279 = fsub fast float %3271, %3277
  %3280 = fsub fast float %3272, %3278
  %3281 = fadd fast float %3279, 5.000000e-01
  %3282 = fadd fast float %3280, 5.000000e-01
  %3283 = and i32 %3238, 255
  %3284 = lshr i32 %3237, 24
  %3285 = mul nuw nsw i32 %3283, 9
  %3286 = uitofp i32 %3285 to float
  %3287 = mul nuw nsw i32 %3284, 9
  %3288 = uitofp i32 %3287 to float
  %3289 = fadd fast float %3281, %3286
  %3290 = fadd fast float %3282, %3288
  %3291 = fdiv fast float %3289, %3178
  %3292 = fdiv fast float %3290, %3268
  %3293 = fmul fast float %3267, 4.375000e-01
  %3294 = fadd fast float %3293, 3.125000e-02
  %3295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3291, float %3292, float %3294, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3296 = extractvalue %dx.types.ResRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.ResRet.f32 %3295, 1
  %3298 = extractvalue %dx.types.ResRet.f32 %3295, 2
  %3299 = fadd fast float %3293, 5.312500e-01
  %3300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3291, float %3292, float %3299, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3301 = extractvalue %dx.types.ResRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.ResRet.f32 %3300, 1
  %3303 = extractvalue %dx.types.ResRet.f32 %3300, 2
  %3304 = fmul fast float %3301, 2.000000e+00
  %3305 = fmul fast float %3302, 2.000000e+00
  %3306 = fmul fast float %3303, 2.000000e+00
  %3307 = fadd fast float %3304, -1.000000e+00
  %3308 = fadd fast float %3305, -1.000000e+00
  %3309 = fadd fast float %3306, -1.000000e+00
  %3310 = fmul fast float %3307, %3307
  %3311 = fmul fast float %3308, %3308
  %3312 = fadd fast float %3310, %3311
  %3313 = fmul fast float %3309, %3309
  %3314 = fadd fast float %3312, %3313
  %3315 = call float @dx.op.unary.f32(i32 24, float %3314)  ; Sqrt(value)
  %3316 = fcmp fast ogt float %3315, 0.000000e+00
  br i1 %3316, label %3317, label %3321

; <label>:3317                                    ; preds = %3240
  %3318 = fdiv fast float %3307, %3315
  %3319 = fdiv fast float %3308, %3315
  %3320 = fdiv fast float %3309, %3315
  br label %3321

; <label>:3321                                    ; preds = %3317, %3240
  %3322 = phi float [ %3318, %3317 ], [ 0.000000e+00, %3240 ]
  %3323 = phi float [ %3319, %3317 ], [ 0.000000e+00, %3240 ]
  %3324 = phi float [ %3320, %3317 ], [ 0.000000e+00, %3240 ]
  %3325 = call float @dx.op.dot3.f32(i32 55, float %3322, float %3323, float %3324, float %2985, float %2986, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %3326 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3325)  ; FMax(a,b)
  %3327 = fmul fast float %3326, 0x400C5BF8A0000000
  %3328 = fmul fast float %3296, %3216
  %3329 = fmul fast float %3328, %3327
  %3330 = fmul fast float %3297, %3216
  %3331 = fmul fast float %3330, %3327
  %3332 = fmul fast float %3298, %3216
  %3333 = fmul fast float %3332, %3327
  %3334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3334, 3
  %3336 = fmul fast float %3329, %3335
  %3337 = fmul fast float %3331, %3335
  %3338 = fmul fast float %3333, %3335
  %3339 = fcmp fast ogt float %3183, %3263
  br i1 %3339, label %3340, label %3349

; <label>:3340                                    ; preds = %3321
  %3341 = fmul fast float %3265, 0x3FC24924A0000000
  %3342 = fsub fast float %3183, %3263
  %3343 = fdiv fast float %3342, %3341
  %3344 = call float @dx.op.unary.f32(i32 7, float %3343)  ; Saturate(value)
  %3345 = fsub fast float 1.000000e+00, %3344
  %3346 = fmul fast float %3345, %3336
  %3347 = fmul fast float %3345, %3337
  %3348 = fmul fast float %3345, %3338
  br label %3349

; <label>:3349                                    ; preds = %3340, %3321, %3226, %3181
  %3350 = phi float [ %3348, %3340 ], [ %3338, %3321 ], [ 0.000000e+00, %3226 ], [ 0.000000e+00, %3181 ]
  %3351 = phi float [ %3347, %3340 ], [ %3337, %3321 ], [ 0.000000e+00, %3226 ], [ 0.000000e+00, %3181 ]
  %3352 = phi float [ %3346, %3340 ], [ %3336, %3321 ], [ 0.000000e+00, %3226 ], [ 0.000000e+00, %3181 ]
  %3353 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3352)  ; FMax(a,b)
  %3354 = fmul fast float %3353, 0x3FD20DD760000000
  %3355 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3005, float %3006, float %3007)  ; Dot3(ax,ay,az,bx,by,bz)
  %3356 = fmul fast float %3355, 0x3FDF454380000000
  %3357 = fmul fast float %3355, %3355
  %3358 = fmul fast float %3357, 0x3FEE471020000000
  %3359 = fadd fast float %3358, 0xBFD42F6020000000
  %3360 = call float @dx.op.dot3.f32(i32 55, float %3353, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3356, float %3359)  ; Dot3(ax,ay,az,bx,by,bz)
  %3361 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3351)  ; FMax(a,b)
  %3362 = fmul fast float %3361, 0x3FD20DD760000000
  %3363 = call float @dx.op.dot3.f32(i32 55, float %3361, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3356, float %3359)  ; Dot3(ax,ay,az,bx,by,bz)
  %3364 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3350)  ; FMax(a,b)
  %3365 = fmul fast float %3364, 0x3FD20DD760000000
  %3366 = call float @dx.op.dot3.f32(i32 55, float %3364, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3356, float %3359)  ; Dot3(ax,ay,az,bx,by,bz)
  %3367 = call float @dx.op.binary.f32(i32 35, float %3354, float 0.000000e+00)  ; FMax(a,b)
  %3368 = call float @dx.op.binary.f32(i32 35, float %3362, float 0.000000e+00)  ; FMax(a,b)
  %3369 = call float @dx.op.binary.f32(i32 35, float %3365, float 0.000000e+00)  ; FMax(a,b)
  %3370 = call float @dx.op.binary.f32(i32 35, float %3360, float 0.000000e+00)  ; FMax(a,b)
  %3371 = call float @dx.op.binary.f32(i32 35, float %3363, float 0.000000e+00)  ; FMax(a,b)
  %3372 = call float @dx.op.binary.f32(i32 35, float %3366, float 0.000000e+00)  ; FMax(a,b)
  %3373 = fmul fast float %3367, %3068
  %3374 = fmul fast float %3368, %3068
  %3375 = fmul fast float %3369, %3068
  %3376 = fadd fast float %3373, %3174
  %3377 = fadd fast float %3374, %3175
  %3378 = fadd fast float %3375, %3176
  %3379 = fmul fast float %3370, %3068
  %3380 = fmul fast float %3371, %3068
  %3381 = fmul fast float %3372, %3068
  %3382 = fadd fast float %3379, %3171
  %3383 = fadd fast float %3380, %3172
  %3384 = fadd fast float %3381, %3173
  br label %3385

; <label>:3385                                    ; preds = %3349, %3169
  %3386 = phi float [ %3382, %3349 ], [ %3171, %3169 ]
  %3387 = phi float [ %3383, %3349 ], [ %3172, %3169 ]
  %3388 = phi float [ %3384, %3349 ], [ %3173, %3169 ]
  %3389 = phi float [ %3376, %3349 ], [ %3174, %3169 ]
  %3390 = phi float [ %3377, %3349 ], [ %3175, %3169 ]
  %3391 = phi float [ %3378, %3349 ], [ %3176, %3169 ]
  %3392 = fcmp fast olt float %3068, 1.000000e+00
  br i1 %3392, label %3393, label %4216, !dx.controlflow.hints !109

; <label>:3393                                    ; preds = %3385
  %3394 = extractvalue %dx.types.CBufRet.f32 %3024, 2
  %3395 = fadd fast float %3394, %154
  %3396 = fmul fast float %2985, 3.200000e+01
  %3397 = fmul fast float %2986, 3.200000e+01
  %3398 = fadd fast float %3027, %3396
  %3399 = fadd fast float %3028, %3397
  %3400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3401 = extractvalue %dx.types.CBufRet.f32 %3400, 0
  %3402 = extractvalue %dx.types.CBufRet.f32 %3400, 1
  %3403 = fsub fast float %3398, %3401
  %3404 = fsub fast float %3399, %3402
  %3405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3406 = extractvalue %dx.types.CBufRet.f32 %3405, 0
  %3407 = extractvalue %dx.types.CBufRet.f32 %3405, 1
  %3408 = fmul fast float %3403, %3406
  %3409 = fmul fast float %3404, %3407
  %3410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3411 = extractvalue %dx.types.CBufRet.f32 %3410, 0
  %3412 = fmul fast float %3408, %3411
  %3413 = extractvalue %dx.types.CBufRet.f32 %3410, 1
  %3414 = fadd fast float %3412, %3413
  %3415 = extractvalue %dx.types.CBufRet.f32 %3410, 2
  %3416 = fmul fast float %3415, %3409
  %3417 = extractvalue %dx.types.CBufRet.f32 %3410, 3
  %3418 = fadd fast float %3416, %3417
  %3419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %3414, float %3418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3423 = extractvalue %dx.types.CBufRet.f32 %3422, 1
  %3424 = extractvalue %dx.types.CBufRet.f32 %3422, 0
  %3425 = fsub fast float %3423, %3424
  %3426 = fmul fast float %3425, %3420
  %3427 = fadd fast float %3426, %3424
  %3428 = extractvalue %dx.types.CBufRet.f32 %3422, 3
  %3429 = extractvalue %dx.types.CBufRet.f32 %3422, 2
  %3430 = fsub fast float %3428, %3429
  %3431 = fmul fast float %3430, %3421
  %3432 = fadd fast float %3431, %3429
  %3433 = fsub fast float %3395, %3427
  %3434 = fsub fast float %3432, %3427
  %3435 = fdiv fast float %3433, %3434
  %3436 = call float @dx.op.unary.f32(i32 7, float %3435)  ; Saturate(value)
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3439 = fmul fast float %3438, %3436
  %3440 = extractvalue %dx.types.CBufRet.f32 %3437, 1
  %3441 = fadd fast float %3439, %3440
  %3442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %3414, float %3418, float %3441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3443 = extractvalue %dx.types.ResRet.f32 %3442, 0
  %3444 = extractvalue %dx.types.ResRet.f32 %3442, 1
  %3445 = extractvalue %dx.types.ResRet.f32 %3442, 2
  %3446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3447 = extractvalue %dx.types.CBufRet.f32 %3446, 0
  %3448 = extractvalue %dx.types.CBufRet.f32 %3446, 1
  %3449 = extractvalue %dx.types.CBufRet.f32 %3446, 2
  %3450 = fmul fast float %3447, %3443
  %3451 = fmul fast float %3448, %3444
  %3452 = fmul fast float %3449, %3445
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 0
  %3455 = extractvalue %dx.types.CBufRet.f32 %3453, 1
  %3456 = extractvalue %dx.types.CBufRet.f32 %3453, 2
  %3457 = fadd fast float %3450, %3454
  %3458 = fadd fast float %3451, %3455
  %3459 = fadd fast float %3452, %3456
  %3460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3461 = extractvalue %dx.types.CBufRet.f32 %3460, 0
  %3462 = fmul fast float %3461, %3408
  %3463 = extractvalue %dx.types.CBufRet.f32 %3460, 1
  %3464 = fadd fast float %3462, %3463
  %3465 = extractvalue %dx.types.CBufRet.f32 %3460, 2
  %3466 = fmul fast float %3465, %3409
  %3467 = extractvalue %dx.types.CBufRet.f32 %3460, 3
  %3468 = fadd fast float %3466, %3467
  %3469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3470 = extractvalue %dx.types.CBufRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.CBufRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.CBufRet.f32 %3469, 2
  %3473 = extractvalue %dx.types.CBufRet.f32 %3469, 3
  %3474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.f32 %3474, 0
  %3476 = extractvalue %dx.types.CBufRet.f32 %3474, 1
  %3477 = extractvalue %dx.types.CBufRet.f32 %3474, 2
  %3478 = extractvalue %dx.types.CBufRet.f32 %3474, 3
  %3479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3464, float %3468, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3480 = extractvalue %dx.types.ResRet.f32 %3479, 0
  %3481 = extractvalue %dx.types.ResRet.f32 %3479, 1
  %3482 = extractvalue %dx.types.ResRet.f32 %3479, 2
  %3483 = extractvalue %dx.types.ResRet.f32 %3479, 3
  %3484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3464, float %3468, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3486 = extractvalue %dx.types.ResRet.f32 %3484, 1
  %3487 = extractvalue %dx.types.ResRet.f32 %3484, 2
  %3488 = extractvalue %dx.types.ResRet.f32 %3484, 3
  %3489 = fmul fast float %3480, %3457
  %3490 = fmul fast float %3485, %3457
  %3491 = fmul fast float %3487, %3457
  %3492 = fmul fast float %3483, %3457
  %3493 = fadd fast float %3489, %3470
  %3494 = fadd fast float %3490, %3471
  %3495 = fadd fast float %3491, %3472
  %3496 = fadd fast float %3492, %3473
  %3497 = fmul fast float %3481, %3457
  %3498 = fmul fast float %3486, %3457
  %3499 = fadd fast float %3497, %3475
  %3500 = fadd fast float %3498, %3476
  %3501 = fmul fast float %3482, %3457
  %3502 = fmul fast float %3488, %3457
  %3503 = fadd fast float %3501, %3477
  %3504 = fadd fast float %3502, %3478
  %3505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3464, float %3468, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3506 = extractvalue %dx.types.ResRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.ResRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3505, 2
  %3509 = extractvalue %dx.types.ResRet.f32 %3505, 3
  %3510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3464, float %3468, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3511 = extractvalue %dx.types.ResRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.ResRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.ResRet.f32 %3510, 2
  %3514 = extractvalue %dx.types.ResRet.f32 %3510, 3
  %3515 = fmul fast float %3506, %3458
  %3516 = fmul fast float %3511, %3458
  %3517 = fmul fast float %3513, %3458
  %3518 = fmul fast float %3509, %3458
  %3519 = fadd fast float %3493, %3515
  %3520 = fadd fast float %3494, %3516
  %3521 = fadd fast float %3495, %3517
  %3522 = fadd fast float %3496, %3518
  %3523 = fmul fast float %3507, %3458
  %3524 = fmul fast float %3512, %3458
  %3525 = fadd fast float %3499, %3523
  %3526 = fadd fast float %3500, %3524
  %3527 = fmul fast float %3508, %3458
  %3528 = fmul fast float %3514, %3458
  %3529 = fadd fast float %3503, %3527
  %3530 = fadd fast float %3504, %3528
  %3531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3464, float %3468, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3532 = extractvalue %dx.types.ResRet.f32 %3531, 0
  %3533 = extractvalue %dx.types.ResRet.f32 %3531, 1
  %3534 = extractvalue %dx.types.ResRet.f32 %3531, 2
  %3535 = extractvalue %dx.types.ResRet.f32 %3531, 3
  %3536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3464, float %3468, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3537 = extractvalue %dx.types.ResRet.f32 %3536, 0
  %3538 = extractvalue %dx.types.ResRet.f32 %3536, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3536, 2
  %3540 = extractvalue %dx.types.ResRet.f32 %3536, 3
  %3541 = fmul fast float %3532, %3459
  %3542 = fmul fast float %3537, %3459
  %3543 = fmul fast float %3539, %3459
  %3544 = fmul fast float %3535, %3459
  %3545 = fadd fast float %3519, %3541
  %3546 = fadd fast float %3520, %3542
  %3547 = fadd fast float %3521, %3543
  %3548 = fadd fast float %3522, %3544
  %3549 = fmul fast float %3533, %3459
  %3550 = fmul fast float %3538, %3459
  %3551 = fadd fast float %3525, %3549
  %3552 = fadd fast float %3526, %3550
  %3553 = fmul fast float %3534, %3459
  %3554 = fmul fast float %3540, %3459
  %3555 = fadd fast float %3529, %3553
  %3556 = fadd fast float %3530, %3554
  %3557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.f32 %3557, 0
  %3559 = fsub fast float %3027, %3558
  %3560 = fsub fast float %3401, %3027
  %3561 = call float @dx.op.binary.f32(i32 35, float %3560, float %3559)  ; FMax(a,b)
  %3562 = extractvalue %dx.types.CBufRet.f32 %3557, 1
  %3563 = fsub fast float %3028, %3562
  %3564 = fsub fast float %3402, %3028
  %3565 = call float @dx.op.binary.f32(i32 35, float %3564, float %3563)  ; FMax(a,b)
  %3566 = call float @dx.op.binary.f32(i32 35, float %3561, float %3565)  ; FMax(a,b)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3405, 3
  %3568 = fmul fast float %3567, %3566
  %3569 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 0
  %3572 = extractvalue %dx.types.CBufRet.f32 %3570, 1
  %3573 = extractvalue %dx.types.CBufRet.f32 %3570, 2
  %3574 = extractvalue %dx.types.CBufRet.f32 %3570, 3
  %3575 = fsub fast float %3571, %3545
  %3576 = fsub fast float %3572, %3546
  %3577 = fsub fast float %3573, %3547
  %3578 = fsub fast float %3574, %3548
  %3579 = fmul fast float %3575, %3569
  %3580 = fmul fast float %3576, %3569
  %3581 = fmul fast float %3577, %3569
  %3582 = fmul fast float %3578, %3569
  %3583 = fadd fast float %3579, %3545
  %3584 = fadd fast float %3580, %3546
  %3585 = fadd fast float %3581, %3547
  %3586 = fadd fast float %3582, %3548
  %3587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3588 = extractvalue %dx.types.CBufRet.f32 %3587, 0
  %3589 = extractvalue %dx.types.CBufRet.f32 %3587, 1
  %3590 = fsub fast float %3588, %3551
  %3591 = fsub fast float %3589, %3552
  %3592 = fmul fast float %3590, %3569
  %3593 = fmul fast float %3591, %3569
  %3594 = fadd fast float %3592, %3551
  %3595 = fadd fast float %3593, %3552
  %3596 = extractvalue %dx.types.CBufRet.f32 %3587, 2
  %3597 = extractvalue %dx.types.CBufRet.f32 %3587, 3
  %3598 = fsub fast float %3596, %3555
  %3599 = fsub fast float %3597, %3556
  %3600 = fmul fast float %3598, %3569
  %3601 = fmul fast float %3599, %3569
  %3602 = fadd fast float %3600, %3555
  %3603 = fadd fast float %3601, %3556
  %3604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3605 = extractvalue %dx.types.CBufRet.f32 %3604, 0
  %3606 = fmul fast float %3605, %3583
  %3607 = fmul fast float %3605, %3584
  %3608 = fmul fast float %3605, %3585
  %3609 = fmul fast float %3605, %3586
  %3610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3611 = extractvalue %dx.types.CBufRet.f32 %3610, 0
  %3612 = fmul fast float %3611, %3594
  %3613 = fmul fast float %3611, %3595
  %3614 = fadd fast float %3612, %3606
  %3615 = fadd fast float %3613, %3608
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 0
  %3618 = fmul fast float %3617, %3602
  %3619 = fmul fast float %3617, %3603
  %3620 = fadd fast float %3614, %3618
  %3621 = fadd fast float %3615, %3619
  %3622 = extractvalue %dx.types.CBufRet.f32 %3604, 1
  %3623 = fmul fast float %3622, %3583
  %3624 = fmul fast float %3622, %3584
  %3625 = fmul fast float %3622, %3585
  %3626 = fmul fast float %3622, %3586
  %3627 = extractvalue %dx.types.CBufRet.f32 %3610, 1
  %3628 = fmul fast float %3627, %3594
  %3629 = fmul fast float %3627, %3595
  %3630 = fadd fast float %3628, %3623
  %3631 = fadd fast float %3629, %3625
  %3632 = extractvalue %dx.types.CBufRet.f32 %3616, 1
  %3633 = fmul fast float %3632, %3602
  %3634 = fmul fast float %3632, %3603
  %3635 = fadd fast float %3630, %3633
  %3636 = fadd fast float %3631, %3634
  %3637 = extractvalue %dx.types.CBufRet.f32 %3604, 2
  %3638 = fmul fast float %3637, %3583
  %3639 = fmul fast float %3637, %3584
  %3640 = fmul fast float %3637, %3585
  %3641 = fmul fast float %3637, %3586
  %3642 = extractvalue %dx.types.CBufRet.f32 %3610, 2
  %3643 = fmul fast float %3642, %3594
  %3644 = fmul fast float %3642, %3595
  %3645 = fadd fast float %3643, %3638
  %3646 = fadd fast float %3644, %3640
  %3647 = extractvalue %dx.types.CBufRet.f32 %3616, 2
  %3648 = fmul fast float %3647, %3602
  %3649 = fmul fast float %3647, %3603
  %3650 = fadd fast float %3645, %3648
  %3651 = fadd fast float %3646, %3649
  %3652 = fmul fast float %3639, %3639
  %3653 = fmul fast float %3651, %3651
  %3654 = fmul fast float %3641, %3641
  %3655 = fadd fast float %3654, %3652
  %3656 = fadd fast float %3655, %3653
  %3657 = call float @dx.op.unary.f32(i32 24, float %3656)  ; Sqrt(value)
  %3658 = fcmp fast ugt float %3657, 0.000000e+00
  br i1 %3658, label %3659, label %3674

; <label>:3659                                    ; preds = %3393
  %3660 = fsub fast float -0.000000e+00, %3641
  %3661 = fdiv fast float %3660, %3657
  %3662 = fsub fast float -0.000000e+00, %3639
  %3663 = fdiv fast float %3662, %3657
  %3664 = fdiv fast float %3651, %3657
  %3665 = fmul fast float %3650, 0x3FE279A760000000
  %3666 = fmul fast float %3663, %3639
  %3667 = fmul fast float %3664, %3651
  %3668 = fmul fast float %3661, %3641
  %3669 = fadd fast float %3666, %3668
  %3670 = fsub fast float %3669, %3667
  %3671 = call float @dx.op.unary.f32(i32 6, float %3670)  ; FAbs(value)
  %3672 = fadd fast float %3671, 0x3DDB7CDFE0000000
  %3673 = fdiv fast float %3665, %3672
  br label %3674

; <label>:3674                                    ; preds = %3659, %3393
  %3675 = phi float [ %3673, %3659 ], [ 1.000000e+00, %3393 ]
  %3676 = fmul fast float %3624, %3624
  %3677 = fmul fast float %3636, %3636
  %3678 = fmul fast float %3626, %3626
  %3679 = fadd fast float %3678, %3676
  %3680 = fadd fast float %3679, %3677
  %3681 = call float @dx.op.unary.f32(i32 24, float %3680)  ; Sqrt(value)
  %3682 = fcmp fast ugt float %3681, 0.000000e+00
  br i1 %3682, label %3683, label %3698

; <label>:3683                                    ; preds = %3674
  %3684 = fsub fast float -0.000000e+00, %3626
  %3685 = fdiv fast float %3684, %3681
  %3686 = fsub fast float -0.000000e+00, %3624
  %3687 = fdiv fast float %3686, %3681
  %3688 = fdiv fast float %3636, %3681
  %3689 = fmul fast float %3635, 0x3FE279A760000000
  %3690 = fmul fast float %3687, %3624
  %3691 = fmul fast float %3688, %3636
  %3692 = fmul fast float %3685, %3626
  %3693 = fadd fast float %3690, %3692
  %3694 = fsub fast float %3693, %3691
  %3695 = call float @dx.op.unary.f32(i32 6, float %3694)  ; FAbs(value)
  %3696 = fadd fast float %3695, 0x3DDB7CDFE0000000
  %3697 = fdiv fast float %3689, %3696
  br label %3698

; <label>:3698                                    ; preds = %3683, %3674
  %3699 = phi float [ %3697, %3683 ], [ 1.000000e+00, %3674 ]
  %3700 = call float @dx.op.binary.f32(i32 36, float %3699, float %3675)  ; FMin(a,b)
  %3701 = fmul fast float %3607, %3607
  %3702 = fmul fast float %3621, %3621
  %3703 = fmul fast float %3609, %3609
  %3704 = fadd fast float %3703, %3701
  %3705 = fadd fast float %3704, %3702
  %3706 = call float @dx.op.unary.f32(i32 24, float %3705)  ; Sqrt(value)
  %3707 = fcmp fast ugt float %3706, 0.000000e+00
  br i1 %3707, label %3708, label %3723

; <label>:3708                                    ; preds = %3698
  %3709 = fsub fast float -0.000000e+00, %3609
  %3710 = fdiv fast float %3709, %3706
  %3711 = fsub fast float -0.000000e+00, %3607
  %3712 = fdiv fast float %3711, %3706
  %3713 = fdiv fast float %3621, %3706
  %3714 = fmul fast float %3620, 0x3FE279A760000000
  %3715 = fmul fast float %3712, %3607
  %3716 = fmul fast float %3713, %3621
  %3717 = fmul fast float %3710, %3609
  %3718 = fadd fast float %3715, %3717
  %3719 = fsub fast float %3718, %3716
  %3720 = call float @dx.op.unary.f32(i32 6, float %3719)  ; FAbs(value)
  %3721 = fadd fast float %3720, 0x3DDB7CDFE0000000
  %3722 = fdiv fast float %3714, %3721
  br label %3723

; <label>:3723                                    ; preds = %3708, %3698
  %3724 = phi float [ %3722, %3708 ], [ 1.000000e+00, %3698 ]
  %3725 = call float @dx.op.binary.f32(i32 36, float %3724, float %3700)  ; FMin(a,b)
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = fcmp fast olt float %3726, 1.000000e+00
  br i1 %3727, label %3728, label %3738

; <label>:3728                                    ; preds = %3723
  %3729 = fmul fast float %3726, %3607
  %3730 = fmul fast float %3726, %3621
  %3731 = fmul fast float %3726, %3609
  %3732 = fmul fast float %3726, %3624
  %3733 = fmul fast float %3726, %3636
  %3734 = fmul fast float %3726, %3626
  %3735 = fmul fast float %3726, %3639
  %3736 = fmul fast float %3726, %3651
  %3737 = fmul fast float %3726, %3641
  br label %3738

; <label>:3738                                    ; preds = %3728, %3723
  %3739 = phi float [ %3735, %3728 ], [ %3639, %3723 ]
  %3740 = phi float [ %3736, %3728 ], [ %3651, %3723 ]
  %3741 = phi float [ %3737, %3728 ], [ %3641, %3723 ]
  %3742 = phi float [ %3732, %3728 ], [ %3624, %3723 ]
  %3743 = phi float [ %3733, %3728 ], [ %3636, %3723 ]
  %3744 = phi float [ %3734, %3728 ], [ %3626, %3723 ]
  %3745 = phi float [ %3729, %3728 ], [ %3607, %3723 ]
  %3746 = phi float [ %3730, %3728 ], [ %3621, %3723 ]
  %3747 = phi float [ %3731, %3728 ], [ %3609, %3723 ]
  %3748 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3620)  ; FMax(a,b)
  %3749 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3635)  ; FMax(a,b)
  %3750 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3650)  ; FMax(a,b)
  %3751 = fcmp fast oge float %3408, 0.000000e+00
  %3752 = and i1 %3751, %3179
  %3753 = fcmp fast ole float %3408, 1.000000e+00
  %3754 = and i1 %3753, %3752
  %3755 = fcmp fast oge float %3409, 0.000000e+00
  %3756 = and i1 %3755, %3754
  %3757 = fcmp fast ole float %3409, 1.000000e+00
  %3758 = and i1 %3757, %3756
  br i1 %3758, label %3759, label %3904, !dx.controlflow.hints !110

; <label>:3759                                    ; preds = %3738
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 2
  %3762 = extractvalue %dx.types.CBufRet.f32 %3760, 3
  %3763 = fmul fast float %3761, %3408
  %3764 = fmul fast float %3762, %3409
  %3765 = call float @dx.op.unary.f32(i32 27, float %3763)  ; Round_ni(value)
  %3766 = call float @dx.op.unary.f32(i32 27, float %3764)  ; Round_ni(value)
  %3767 = fptosi float %3765 to i32
  %3768 = fptosi float %3766 to i32
  %3769 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %3767, i32 %3768, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3770 = extractvalue %dx.types.ResRet.i32 %3769, 0
  %3771 = and i32 %3770, 65535
  %3772 = lshr i32 %3770, 16
  %3773 = icmp eq i32 %3771, 65535
  br i1 %3773, label %3810, label %3774

; <label>:3774                                    ; preds = %3759
  %3775 = extractvalue %dx.types.CBufRet.f32 %3177, 1
  %3776 = extractvalue %dx.types.CBufRet.f32 %3760, 0
  %3777 = extractvalue %dx.types.CBufRet.f32 %3760, 1
  %3778 = fmul fast float %3776, %3408
  %3779 = fmul fast float %3777, %3409
  %3780 = fmul fast float %3778, 1.250000e-01
  %3781 = fmul fast float %3779, 1.250000e-01
  %3782 = call float @dx.op.unary.f32(i32 27, float %3780)  ; Round_ni(value)
  %3783 = call float @dx.op.unary.f32(i32 27, float %3781)  ; Round_ni(value)
  %3784 = fmul fast float %3782, 8.000000e+00
  %3785 = fmul fast float %3783, 8.000000e+00
  %3786 = and i32 %3770, 255
  %3787 = lshr i32 %3770, 8
  %3788 = and i32 %3787, 255
  %3789 = mul nuw nsw i32 %3786, 9
  %3790 = uitofp i32 %3789 to float
  %3791 = mul nuw nsw i32 %3788, 9
  %3792 = uitofp i32 %3791 to float
  %3793 = fadd fast float %3790, 5.000000e-01
  %3794 = fadd fast float %3793, %3778
  %3795 = fsub fast float %3794, %3784
  %3796 = fadd fast float %3792, 5.000000e-01
  %3797 = fadd fast float %3796, %3779
  %3798 = fsub fast float %3797, %3785
  %3799 = fdiv fast float %3795, %3178
  %3800 = fdiv fast float %3798, %3775
  %3801 = fmul fast float %3436, 4.375000e-01
  %3802 = fadd fast float %3801, 3.125000e-02
  %3803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3799, float %3800, float %3802, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.ResRet.f32 %3803, 1
  %3806 = extractvalue %dx.types.ResRet.f32 %3803, 2
  %3807 = fadd fast float %3804, %3748
  %3808 = fadd fast float %3805, %3749
  %3809 = fadd fast float %3806, %3750
  br label %3810

; <label>:3810                                    ; preds = %3774, %3759
  %3811 = phi float [ %3809, %3774 ], [ %3750, %3759 ]
  %3812 = phi float [ %3808, %3774 ], [ %3749, %3759 ]
  %3813 = phi float [ %3807, %3774 ], [ %3748, %3759 ]
  %3814 = icmp eq i32 %3772, 65535
  br i1 %3814, label %3904, label %3815

; <label>:3815                                    ; preds = %3810
  %3816 = extractvalue %dx.types.CBufRet.f32 %3177, 1
  %3817 = extractvalue %dx.types.CBufRet.f32 %3760, 0
  %3818 = extractvalue %dx.types.CBufRet.f32 %3760, 1
  %3819 = fmul fast float %3817, %3408
  %3820 = fmul fast float %3818, %3409
  %3821 = fmul fast float %3819, 1.250000e-01
  %3822 = fmul fast float %3820, 1.250000e-01
  %3823 = call float @dx.op.unary.f32(i32 27, float %3821)  ; Round_ni(value)
  %3824 = call float @dx.op.unary.f32(i32 27, float %3822)  ; Round_ni(value)
  %3825 = fmul fast float %3823, 8.000000e+00
  %3826 = fmul fast float %3824, 8.000000e+00
  %3827 = fsub fast float %3819, %3825
  %3828 = fsub fast float %3820, %3826
  %3829 = fadd fast float %3827, 5.000000e-01
  %3830 = fadd fast float %3828, 5.000000e-01
  %3831 = and i32 %3772, 255
  %3832 = lshr i32 %3770, 24
  %3833 = mul nuw nsw i32 %3831, 9
  %3834 = uitofp i32 %3833 to float
  %3835 = mul nuw nsw i32 %3832, 9
  %3836 = uitofp i32 %3835 to float
  %3837 = fadd fast float %3829, %3834
  %3838 = fadd fast float %3830, %3836
  %3839 = fdiv fast float %3837, %3178
  %3840 = fdiv fast float %3838, %3816
  %3841 = fmul fast float %3436, 4.375000e-01
  %3842 = fadd fast float %3841, 3.125000e-02
  %3843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3839, float %3840, float %3842, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3847 = fadd fast float %3841, 5.312500e-01
  %3848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3839, float %3840, float %3847, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = fmul fast float %3849, 2.000000e+00
  %3853 = fmul fast float %3850, 2.000000e+00
  %3854 = fmul fast float %3851, 2.000000e+00
  %3855 = fadd fast float %3852, -1.000000e+00
  %3856 = fadd fast float %3853, -1.000000e+00
  %3857 = fadd fast float %3854, -1.000000e+00
  %3858 = fmul fast float %3855, %3855
  %3859 = fmul fast float %3856, %3856
  %3860 = fadd fast float %3858, %3859
  %3861 = fmul fast float %3857, %3857
  %3862 = fadd fast float %3860, %3861
  %3863 = call float @dx.op.unary.f32(i32 24, float %3862)  ; Sqrt(value)
  %3864 = fcmp fast ogt float %3863, 0.000000e+00
  br i1 %3864, label %3865, label %3869

; <label>:3865                                    ; preds = %3815
  %3866 = fdiv fast float %3855, %3863
  %3867 = fdiv fast float %3856, %3863
  %3868 = fdiv fast float %3857, %3863
  br label %3869

; <label>:3869                                    ; preds = %3865, %3815
  %3870 = phi float [ %3866, %3865 ], [ 0.000000e+00, %3815 ]
  %3871 = phi float [ %3867, %3865 ], [ 0.000000e+00, %3815 ]
  %3872 = phi float [ %3868, %3865 ], [ 0.000000e+00, %3815 ]
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.CBufRet.f32 %3873, 1
  %3876 = fsub fast float %3027, %3874
  %3877 = fsub fast float %3028, %3875
  %3878 = fmul fast float %3876, %3876
  %3879 = fmul fast float %3877, %3877
  %3880 = fadd fast float %3878, %3879
  %3881 = call float @dx.op.unary.f32(i32 24, float %3880)  ; Sqrt(value)
  %3882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3883 = extractvalue %dx.types.CBufRet.f32 %3882, 0
  %3884 = extractvalue %dx.types.CBufRet.f32 %3882, 1
  %3885 = fsub fast float %3881, %3883
  %3886 = fdiv fast float %3885, %3884
  %3887 = call float @dx.op.unary.f32(i32 7, float %3886)  ; Saturate(value)
  %3888 = fmul fast float %3887, 2.000000e+00
  %3889 = fsub fast float 3.000000e+00, %3888
  %3890 = fmul fast float %3887, %3887
  %3891 = fmul fast float %3890, %3889
  %3892 = call float @dx.op.dot3.f32(i32 55, float %3870, float %3871, float %3872, float %2985, float %2986, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %3893 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3892)  ; FMax(a,b)
  %3894 = fmul fast float %3893, 0x400C5BF8A0000000
  %3895 = fmul fast float %3891, %3844
  %3896 = fmul fast float %3895, %3894
  %3897 = fadd fast float %3896, %3813
  %3898 = fmul fast float %3891, %3845
  %3899 = fmul fast float %3898, %3894
  %3900 = fadd fast float %3899, %3812
  %3901 = fmul fast float %3891, %3846
  %3902 = fmul fast float %3901, %3894
  %3903 = fadd fast float %3902, %3811
  br label %3904

; <label>:3904                                    ; preds = %3869, %3810, %3738
  %3905 = phi float [ %3903, %3869 ], [ %3811, %3810 ], [ %3750, %3738 ]
  %3906 = phi float [ %3900, %3869 ], [ %3812, %3810 ], [ %3749, %3738 ]
  %3907 = phi float [ %3897, %3869 ], [ %3813, %3810 ], [ %3748, %3738 ]
  %3908 = fcmp fast ogt float %3395, %3432
  %3909 = and i1 %3751, %3908
  %3910 = and i1 %3753, %3909
  %3911 = and i1 %3755, %3910
  %3912 = and i1 %3757, %3911
  br i1 %3912, label %3913, label %3970, !dx.controlflow.hints !111

; <label>:3913                                    ; preds = %3904
  %3914 = fmul fast float %3434, 0x3FC24924A0000000
  %3915 = fsub fast float %3395, %3432
  %3916 = fdiv fast float %3915, %3914
  %3917 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  %3918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3919 = extractvalue %dx.types.CBufRet.f32 %3918, 0
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.CBufRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.CBufRet.f32 %3920, 2
  %3924 = fsub fast float %3919, %3907
  %3925 = fsub fast float %3921, %3745
  %3926 = fsub fast float %3922, %3746
  %3927 = fsub fast float %3923, %3747
  %3928 = fmul fast float %3924, %3917
  %3929 = fmul fast float %3925, %3917
  %3930 = fmul fast float %3926, %3917
  %3931 = fmul fast float %3927, %3917
  %3932 = fadd fast float %3928, %3907
  %3933 = fadd fast float %3929, %3745
  %3934 = fadd fast float %3930, %3746
  %3935 = fadd fast float %3931, %3747
  %3936 = extractvalue %dx.types.CBufRet.f32 %3918, 1
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3940 = extractvalue %dx.types.CBufRet.f32 %3937, 2
  %3941 = fsub fast float %3936, %3906
  %3942 = fsub fast float %3938, %3742
  %3943 = fsub fast float %3939, %3743
  %3944 = fsub fast float %3940, %3744
  %3945 = fmul fast float %3941, %3917
  %3946 = fmul fast float %3942, %3917
  %3947 = fmul fast float %3943, %3917
  %3948 = fmul fast float %3944, %3917
  %3949 = fadd fast float %3945, %3906
  %3950 = fadd fast float %3946, %3742
  %3951 = fadd fast float %3947, %3743
  %3952 = fadd fast float %3948, %3744
  %3953 = extractvalue %dx.types.CBufRet.f32 %3918, 2
  %3954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.CBufRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.CBufRet.f32 %3954, 2
  %3958 = fsub fast float %3953, %3905
  %3959 = fsub fast float %3955, %3739
  %3960 = fsub fast float %3956, %3740
  %3961 = fsub fast float %3957, %3741
  %3962 = fmul fast float %3958, %3917
  %3963 = fmul fast float %3959, %3917
  %3964 = fmul fast float %3960, %3917
  %3965 = fmul fast float %3961, %3917
  %3966 = fadd fast float %3962, %3905
  %3967 = fadd fast float %3963, %3739
  %3968 = fadd fast float %3964, %3740
  %3969 = fadd fast float %3965, %3741
  br label %3970

; <label>:3970                                    ; preds = %3913, %3904
  %3971 = phi float [ %3966, %3913 ], [ %3905, %3904 ]
  %3972 = phi float [ %3967, %3913 ], [ %3739, %3904 ]
  %3973 = phi float [ %3968, %3913 ], [ %3740, %3904 ]
  %3974 = phi float [ %3969, %3913 ], [ %3741, %3904 ]
  %3975 = phi float [ %3949, %3913 ], [ %3906, %3904 ]
  %3976 = phi float [ %3950, %3913 ], [ %3742, %3904 ]
  %3977 = phi float [ %3951, %3913 ], [ %3743, %3904 ]
  %3978 = phi float [ %3952, %3913 ], [ %3744, %3904 ]
  %3979 = phi float [ %3932, %3913 ], [ %3907, %3904 ]
  %3980 = phi float [ %3933, %3913 ], [ %3745, %3904 ]
  %3981 = phi float [ %3934, %3913 ], [ %3746, %3904 ]
  %3982 = phi float [ %3935, %3913 ], [ %3747, %3904 ]
  %3983 = extractvalue %dx.types.CBufRet.f32 %3557, 3
  %3984 = fmul fast float %3983, %3979
  %3985 = fmul fast float %3983, %3975
  %3986 = fmul fast float %3983, %3971
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 3
  %3989 = fmul fast float %3984, %3988
  %3990 = fmul fast float %3985, %3988
  %3991 = fmul fast float %3986, %3988
  %3992 = call float @dx.op.dot3.f32(i32 55, float %3989, float %3990, float %3991, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3993 = fmul fast float %3992, 0x3FD20DD760000000
  %3994 = fmul fast float %3980, 1.500000e+00
  %3995 = fmul fast float %3994, %3983
  %3996 = fmul fast float %3995, %3988
  %3997 = fmul fast float %3981, 1.500000e+00
  %3998 = fmul fast float %3997, %3983
  %3999 = fmul fast float %3998, %3988
  %4000 = fmul fast float %3982, 1.500000e+00
  %4001 = fmul fast float %4000, %3983
  %4002 = fmul fast float %4001, %3988
  %4003 = fmul fast float %3976, 1.500000e+00
  %4004 = fmul fast float %4003, %3983
  %4005 = fmul fast float %4004, %3988
  %4006 = fmul fast float %3977, 1.500000e+00
  %4007 = fmul fast float %4006, %3983
  %4008 = fmul fast float %4007, %3988
  %4009 = fmul fast float %3978, 1.500000e+00
  %4010 = fmul fast float %4009, %3983
  %4011 = fmul fast float %4010, %3988
  %4012 = fmul fast float %3972, 1.500000e+00
  %4013 = fmul fast float %4012, %3983
  %4014 = fmul fast float %4013, %3988
  %4015 = fmul fast float %3973, 1.500000e+00
  %4016 = fmul fast float %4015, %3983
  %4017 = fmul fast float %4016, %3988
  %4018 = fmul fast float %3974, 1.500000e+00
  %4019 = fmul fast float %4018, %3983
  %4020 = fmul fast float %4019, %3988
  %4021 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3989)  ; FMax(a,b)
  %4022 = call float @dx.op.dot3.f32(i32 55, float %3996, float %3999, float %4002, float %3996, float %3999, float %4002)  ; Dot3(ax,ay,az,bx,by,bz)
  %4023 = fcmp fast oeq float %4022, 0.000000e+00
  %4024 = fcmp fast oeq float %4021, 0.000000e+00
  %4025 = or i1 %4024, %4023
  br i1 %4025, label %4055, label %4026

; <label>:4026                                    ; preds = %3970
  %4027 = fsub fast float -0.000000e+00, %4002
  %4028 = fsub fast float -0.000000e+00, %3996
  %4029 = call float @dx.op.unary.f32(i32 24, float %4022)  ; Sqrt(value)
  %4030 = fdiv fast float %4029, %4021
  %4031 = fcmp fast ogt float %4030, 0x3FFB6F8900000000
  %4032 = select i1 %4031, float 0x3FFB6F8900000000, float %4030
  %4033 = fmul fast float %4032, 0x3FE8A23460000000
  %4034 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4035 = call float @dx.op.binary.f32(i32 35, float %4032, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4036 = fmul fast float %4034, %4021
  %4037 = fmul fast float %4035, 0x3FF279A740000000
  %4038 = fadd fast float %4037, -1.000000e+00
  %4039 = call float @dx.op.dot3.f32(i32 55, float %4027, float %4028, float %3999, float %4027, float %4028, float %3999)  ; Dot3(ax,ay,az,bx,by,bz)
  %4040 = call float @dx.op.unary.f32(i32 25, float %4039)  ; Rsqrt(value)
  %4041 = fmul fast float %4040, %4027
  %4042 = fmul fast float %4040, %4028
  %4043 = fmul fast float %4040, %3999
  %4044 = fmul fast float %4038, %4038
  %4045 = fsub fast float 1.000000e+00, %4044
  %4046 = fmul fast float %4035, 0x40005F8BE0000000
  %4047 = fsub fast float 0x400C5BF8A0000000, %4046
  %4048 = fdiv fast float %4036, %4047
  %4049 = fmul fast float %4048, 0x3FEE31C3C0000000
  %4050 = fmul fast float %4049, %4045
  %4051 = fmul fast float %4035, 0x3FDACB7480000000
  %4052 = fadd fast float %4051, 0xBFD7347680000000
  %4053 = fmul fast float %4052, %4048
  %4054 = fmul fast float %4053, %4045
  br label %4055

; <label>:4055                                    ; preds = %4026, %3970
  %4056 = phi float [ %4041, %4026 ], [ 0.000000e+00, %3970 ]
  %4057 = phi float [ %4042, %4026 ], [ 0.000000e+00, %3970 ]
  %4058 = phi float [ %4043, %4026 ], [ 0.000000e+00, %3970 ]
  %4059 = phi float [ %4050, %4026 ], [ 0.000000e+00, %3970 ]
  %4060 = phi float [ %4054, %4026 ], [ 0.000000e+00, %3970 ]
  %4061 = call float @dx.op.dot3.f32(i32 55, float %4056, float %4057, float %4058, float %2985, float %2986, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %4062 = fmul fast float %4061, %4061
  %4063 = fmul fast float %4062, 0x3FEE471020000000
  %4064 = fadd fast float %4063, 0xBFD42F6020000000
  %4065 = fmul fast float %4021, 0x3FD20DD760000000
  %4066 = fmul fast float %4064, %4060
  %4067 = fmul fast float %4059, 0x3FDF454380000000
  %4068 = fmul fast float %4067, %4061
  %4069 = fadd fast float %4068, %4065
  %4070 = fadd fast float %4069, %4066
  %4071 = call float @dx.op.dot3.f32(i32 55, float %4056, float %4057, float %4058, float %3005, float %3006, float %3007)  ; Dot3(ax,ay,az,bx,by,bz)
  %4072 = fmul fast float %4071, 0x3FDF454380000000
  %4073 = fmul fast float %4071, %4071
  %4074 = fmul fast float %4073, 0x3FEE471020000000
  %4075 = fadd fast float %4074, 0xBFD42F6020000000
  %4076 = call float @dx.op.dot3.f32(i32 55, float %4021, float %4059, float %4060, float 0x3FD20DD760000000, float %4072, float %4075)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3990)  ; FMax(a,b)
  %4078 = call float @dx.op.dot3.f32(i32 55, float %4005, float %4008, float %4011, float %4005, float %4008, float %4011)  ; Dot3(ax,ay,az,bx,by,bz)
  %4079 = fcmp fast oeq float %4078, 0.000000e+00
  %4080 = fcmp fast oeq float %4077, 0.000000e+00
  %4081 = or i1 %4080, %4079
  br i1 %4081, label %4111, label %4082

; <label>:4082                                    ; preds = %4055
  %4083 = fsub fast float -0.000000e+00, %4011
  %4084 = fsub fast float -0.000000e+00, %4005
  %4085 = call float @dx.op.unary.f32(i32 24, float %4078)  ; Sqrt(value)
  %4086 = fdiv fast float %4085, %4077
  %4087 = fcmp fast ogt float %4086, 0x3FFB6F8900000000
  %4088 = select i1 %4087, float 0x3FFB6F8900000000, float %4086
  %4089 = fmul fast float %4088, 0x3FE8A23460000000
  %4090 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4091 = call float @dx.op.binary.f32(i32 35, float %4088, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4092 = fmul fast float %4090, %4077
  %4093 = fmul fast float %4091, 0x3FF279A740000000
  %4094 = fadd fast float %4093, -1.000000e+00
  %4095 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4008, float %4083, float %4084, float %4008)  ; Dot3(ax,ay,az,bx,by,bz)
  %4096 = call float @dx.op.unary.f32(i32 25, float %4095)  ; Rsqrt(value)
  %4097 = fmul fast float %4096, %4083
  %4098 = fmul fast float %4096, %4084
  %4099 = fmul fast float %4096, %4008
  %4100 = fmul fast float %4094, %4094
  %4101 = fsub fast float 1.000000e+00, %4100
  %4102 = fmul fast float %4091, 0x40005F8BE0000000
  %4103 = fsub fast float 0x400C5BF8A0000000, %4102
  %4104 = fdiv fast float %4092, %4103
  %4105 = fmul fast float %4104, 0x3FEE31C3C0000000
  %4106 = fmul fast float %4105, %4101
  %4107 = fmul fast float %4091, 0x3FDACB7480000000
  %4108 = fadd fast float %4107, 0xBFD7347680000000
  %4109 = fmul fast float %4108, %4104
  %4110 = fmul fast float %4109, %4101
  br label %4111

; <label>:4111                                    ; preds = %4082, %4055
  %4112 = phi float [ %4097, %4082 ], [ 0.000000e+00, %4055 ]
  %4113 = phi float [ %4098, %4082 ], [ 0.000000e+00, %4055 ]
  %4114 = phi float [ %4099, %4082 ], [ 0.000000e+00, %4055 ]
  %4115 = phi float [ %4106, %4082 ], [ 0.000000e+00, %4055 ]
  %4116 = phi float [ %4110, %4082 ], [ 0.000000e+00, %4055 ]
  %4117 = call float @dx.op.dot3.f32(i32 55, float %4112, float %4113, float %4114, float %2985, float %2986, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %4118 = fmul fast float %4117, %4117
  %4119 = fmul fast float %4118, 0x3FEE471020000000
  %4120 = fadd fast float %4119, 0xBFD42F6020000000
  %4121 = fmul fast float %4077, 0x3FD20DD760000000
  %4122 = fmul fast float %4120, %4116
  %4123 = fmul fast float %4115, 0x3FDF454380000000
  %4124 = fmul fast float %4123, %4117
  %4125 = fadd fast float %4124, %4121
  %4126 = fadd fast float %4125, %4122
  %4127 = call float @dx.op.dot3.f32(i32 55, float %4112, float %4113, float %4114, float %3005, float %3006, float %3007)  ; Dot3(ax,ay,az,bx,by,bz)
  %4128 = fmul fast float %4127, 0x3FDF454380000000
  %4129 = fmul fast float %4127, %4127
  %4130 = fmul fast float %4129, 0x3FEE471020000000
  %4131 = fadd fast float %4130, 0xBFD42F6020000000
  %4132 = call float @dx.op.dot3.f32(i32 55, float %4077, float %4115, float %4116, float 0x3FD20DD760000000, float %4128, float %4131)  ; Dot3(ax,ay,az,bx,by,bz)
  %4133 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3991)  ; FMax(a,b)
  %4134 = call float @dx.op.dot3.f32(i32 55, float %4014, float %4017, float %4020, float %4014, float %4017, float %4020)  ; Dot3(ax,ay,az,bx,by,bz)
  %4135 = fcmp fast oeq float %4134, 0.000000e+00
  %4136 = fcmp fast oeq float %4133, 0.000000e+00
  %4137 = or i1 %4136, %4135
  br i1 %4137, label %4167, label %4138

; <label>:4138                                    ; preds = %4111
  %4139 = fsub fast float -0.000000e+00, %4020
  %4140 = fsub fast float -0.000000e+00, %4014
  %4141 = call float @dx.op.unary.f32(i32 24, float %4134)  ; Sqrt(value)
  %4142 = fdiv fast float %4141, %4133
  %4143 = fcmp fast ogt float %4142, 0x3FFB6F8900000000
  %4144 = select i1 %4143, float 0x3FFB6F8900000000, float %4142
  %4145 = fmul fast float %4144, 0x3FE8A23460000000
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = call float @dx.op.binary.f32(i32 35, float %4144, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4148 = fmul fast float %4146, %4133
  %4149 = fmul fast float %4147, 0x3FF279A740000000
  %4150 = fadd fast float %4149, -1.000000e+00
  %4151 = call float @dx.op.dot3.f32(i32 55, float %4139, float %4140, float %4017, float %4139, float %4140, float %4017)  ; Dot3(ax,ay,az,bx,by,bz)
  %4152 = call float @dx.op.unary.f32(i32 25, float %4151)  ; Rsqrt(value)
  %4153 = fmul fast float %4152, %4139
  %4154 = fmul fast float %4152, %4140
  %4155 = fmul fast float %4152, %4017
  %4156 = fmul fast float %4150, %4150
  %4157 = fsub fast float 1.000000e+00, %4156
  %4158 = fmul fast float %4147, 0x40005F8BE0000000
  %4159 = fsub fast float 0x400C5BF8A0000000, %4158
  %4160 = fdiv fast float %4148, %4159
  %4161 = fmul fast float %4160, 0x3FEE31C3C0000000
  %4162 = fmul fast float %4161, %4157
  %4163 = fmul fast float %4147, 0x3FDACB7480000000
  %4164 = fadd fast float %4163, 0xBFD7347680000000
  %4165 = fmul fast float %4164, %4160
  %4166 = fmul fast float %4165, %4157
  br label %4167

; <label>:4167                                    ; preds = %4138, %4111
  %4168 = phi float [ %4153, %4138 ], [ 0.000000e+00, %4111 ]
  %4169 = phi float [ %4154, %4138 ], [ 0.000000e+00, %4111 ]
  %4170 = phi float [ %4155, %4138 ], [ 0.000000e+00, %4111 ]
  %4171 = phi float [ %4162, %4138 ], [ 0.000000e+00, %4111 ]
  %4172 = phi float [ %4166, %4138 ], [ 0.000000e+00, %4111 ]
  %4173 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4170, float %2985, float %2986, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %4174 = fmul fast float %4173, %4173
  %4175 = fmul fast float %4174, 0x3FEE471020000000
  %4176 = fadd fast float %4175, 0xBFD42F6020000000
  %4177 = fmul fast float %4133, 0x3FD20DD760000000
  %4178 = fmul fast float %4176, %4172
  %4179 = fmul fast float %4171, 0x3FDF454380000000
  %4180 = fmul fast float %4179, %4173
  %4181 = fadd fast float %4180, %4177
  %4182 = fadd fast float %4181, %4178
  %4183 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4170, float %3005, float %3006, float %3007)  ; Dot3(ax,ay,az,bx,by,bz)
  %4184 = fmul fast float %4183, 0x3FDF454380000000
  %4185 = fmul fast float %4183, %4183
  %4186 = fmul fast float %4185, 0x3FEE471020000000
  %4187 = fadd fast float %4186, 0xBFD42F6020000000
  %4188 = call float @dx.op.dot3.f32(i32 55, float %4133, float %4171, float %4172, float 0x3FD20DD760000000, float %4184, float %4187)  ; Dot3(ax,ay,az,bx,by,bz)
  %4189 = call float @dx.op.binary.f32(i32 35, float %4070, float 0.000000e+00)  ; FMax(a,b)
  %4190 = call float @dx.op.binary.f32(i32 35, float %4126, float 0.000000e+00)  ; FMax(a,b)
  %4191 = call float @dx.op.binary.f32(i32 35, float %4182, float 0.000000e+00)  ; FMax(a,b)
  %4192 = call float @dx.op.binary.f32(i32 35, float %4076, float 0.000000e+00)  ; FMax(a,b)
  %4193 = call float @dx.op.binary.f32(i32 35, float %4132, float 0.000000e+00)  ; FMax(a,b)
  %4194 = call float @dx.op.binary.f32(i32 35, float %4188, float 0.000000e+00)  ; FMax(a,b)
  %4195 = fsub fast float %3389, %4189
  %4196 = fsub fast float %3390, %4190
  %4197 = fsub fast float %3391, %4191
  %4198 = fmul fast float %4195, %3068
  %4199 = fmul fast float %4196, %3068
  %4200 = fmul fast float %4197, %3068
  %4201 = fadd fast float %4198, %4189
  %4202 = fadd fast float %4199, %4190
  %4203 = fadd fast float %4200, %4191
  %4204 = fsub fast float %3386, %4192
  %4205 = fsub fast float %3387, %4193
  %4206 = fsub fast float %3388, %4194
  %4207 = fmul fast float %4204, %3068
  %4208 = fmul fast float %4205, %3068
  %4209 = fmul fast float %4206, %3068
  %4210 = fadd fast float %4207, %4192
  %4211 = fadd fast float %4208, %4193
  %4212 = fadd fast float %4209, %4194
  %4213 = fsub fast float %3170, %3993
  %4214 = fmul fast float %4213, %3068
  %4215 = fadd fast float %4214, %3993
  br label %4216

; <label>:4216                                    ; preds = %4167, %3385
  %4217 = phi float [ %4215, %4167 ], [ %3170, %3385 ]
  %4218 = phi float [ %4210, %4167 ], [ %3386, %3385 ]
  %4219 = phi float [ %4211, %4167 ], [ %3387, %3385 ]
  %4220 = phi float [ %4212, %4167 ], [ %3388, %3385 ]
  %4221 = phi float [ %4201, %4167 ], [ %3389, %3385 ]
  %4222 = phi float [ %4202, %4167 ], [ %3390, %3385 ]
  %4223 = phi float [ %4203, %4167 ], [ %3391, %3385 ]
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = call float @dx.op.binary.f32(i32 36, float %2988, float %4225)  ; FMin(a,b)
  %4227 = fmul fast float %4226, %3009
  %4228 = fsub fast float 1.000000e+00, %4227
  %4229 = bitcast float %4228 to i32
  %4230 = sub nsw i32 2129859010, %4229
  %4231 = bitcast i32 %4230 to float
  %4232 = call float @dx.op.binary.f32(i32 36, float %2989, float %4225)  ; FMin(a,b)
  %4233 = fmul fast float %4232, %3009
  %4234 = fsub fast float 1.000000e+00, %4233
  %4235 = bitcast float %4234 to i32
  %4236 = sub nsw i32 2129859010, %4235
  %4237 = bitcast i32 %4236 to float
  %4238 = call float @dx.op.binary.f32(i32 36, float %2990, float %4225)  ; FMin(a,b)
  %4239 = fmul fast float %4238, %3009
  %4240 = fsub fast float 1.000000e+00, %4239
  %4241 = bitcast float %4240 to i32
  %4242 = sub nsw i32 2129859010, %4241
  %4243 = bitcast i32 %4242 to float
  %4244 = fmul fast float %4221, %3008
  %4245 = fmul fast float %4244, %4231
  %4246 = fmul fast float %4222, %3008
  %4247 = fmul fast float %4246, %4237
  %4248 = fmul fast float %4223, %3008
  %4249 = fmul fast float %4248, %4243
  %4250 = call float @dx.op.binary.f32(i32 36, float %2991, float %4225)  ; FMin(a,b)
  %4251 = fmul fast float %4250, %3009
  %4252 = fsub fast float 1.000000e+00, %4251
  %4253 = bitcast float %4252 to i32
  %4254 = sub nsw i32 2129859010, %4253
  %4255 = bitcast i32 %4254 to float
  %4256 = call float @dx.op.binary.f32(i32 36, float %2992, float %4225)  ; FMin(a,b)
  %4257 = fmul fast float %4256, %3009
  %4258 = fsub fast float 1.000000e+00, %4257
  %4259 = bitcast float %4258 to i32
  %4260 = sub nsw i32 2129859010, %4259
  %4261 = bitcast i32 %4260 to float
  %4262 = call float @dx.op.binary.f32(i32 36, float %2997, float %4225)  ; FMin(a,b)
  %4263 = fmul fast float %4262, %3009
  %4264 = fsub fast float 1.000000e+00, %4263
  %4265 = bitcast float %4264 to i32
  %4266 = sub nsw i32 2129859010, %4265
  %4267 = bitcast i32 %4266 to float
  %4268 = fmul fast float %4218, %3008
  %4269 = fmul fast float %4268, %4255
  %4270 = fmul fast float %4219, %3008
  %4271 = fmul fast float %4270, %4261
  %4272 = fmul fast float %4220, %3008
  %4273 = fmul fast float %4272, %4267
  %4274 = call float @dx.op.dot3.f32(i32 55, float %4245, float %4247, float %4249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4275 = select i1 %243, float 0.000000e+00, float %4245
  %4276 = select i1 %243, float %4274, float %4247
  %4277 = select i1 %243, float 0.000000e+00, float %4249
  %4278 = call float @dx.op.dot3.f32(i32 55, float %4269, float %4271, float %4273, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4279 = select i1 %243, float 0.000000e+00, float %4269
  %4280 = select i1 %243, float %4278, float %4271
  %4281 = select i1 %243, float 0.000000e+00, float %4273
  %4282 = fmul fast float %2999, 9.843750e-01
  %4283 = fmul fast float %2994, 9.843750e-01
  %4284 = fadd fast float %4282, 7.812500e-03
  %4285 = fadd fast float %4283, 7.812500e-03
  %4286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %4284, float %4285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 2
  %4288 = extractvalue %dx.types.ResRet.f32 %4286, 3
  %4289 = fmul fast float %4287, %2991
  %4290 = fmul fast float %4287, %2992
  %4291 = fmul fast float %4287, %2997
  %4292 = fadd fast float %4289, %4288
  %4293 = fadd fast float %4290, %4288
  %4294 = fadd fast float %4291, %4288
  %4295 = fcmp fast ogt float %2362, 0.000000e+00
  br i1 %4295, label %4296, label %4322

; <label>:4296                                    ; preds = %4216
  %4297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %2362, float %2999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.ResRet.f32 %4297, 1
  %4300 = extractvalue %dx.types.ResRet.f32 %4297, 2
  %4301 = fadd fast float %4298, -5.000000e-01
  %4302 = fadd fast float %4299, -5.000000e-01
  %4303 = fadd fast float %4300, -5.000000e-01
  %4304 = fsub fast float 1.000000e+00, %2991
  %4305 = fsub fast float 1.000000e+00, %2992
  %4306 = fsub fast float 1.000000e+00, %2997
  %4307 = fmul fast float %2991, 4.000000e+00
  %4308 = fmul fast float %4307, %4304
  %4309 = fmul fast float %4308, %4301
  %4310 = fmul fast float %2992, 4.000000e+00
  %4311 = fmul fast float %4310, %4305
  %4312 = fmul fast float %4311, %4302
  %4313 = fmul fast float %2997, 4.000000e+00
  %4314 = fmul fast float %4313, %4306
  %4315 = fmul fast float %4314, %4303
  %4316 = fadd fast float %4309, %4292
  %4317 = fadd fast float %4312, %4293
  %4318 = fadd fast float %4315, %4294
  %4319 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4320 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4321 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  br label %4322

; <label>:4322                                    ; preds = %4296, %4216
  %4323 = phi float [ %4319, %4296 ], [ %4292, %4216 ]
  %4324 = phi float [ %4320, %4296 ], [ %4293, %4216 ]
  %4325 = phi float [ %4321, %4296 ], [ %4294, %4216 ]
  %4326 = call float @dx.op.binary.f32(i32 35, float %4324, float %4325)  ; FMax(a,b)
  %4327 = call float @dx.op.binary.f32(i32 35, float %4323, float %4326)  ; FMax(a,b)
  %4328 = fsub fast float 1.000000e+00, %4327
  %4329 = fmul fast float %4327, %2994
  %4330 = fadd fast float %4329, %2994
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 2
  %4333 = extractvalue %dx.types.CBufRet.f32 %4331, 3
  %4334 = fmul fast float %4330, %4332
  %4335 = fadd fast float %4334, %4333
  %4336 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4337 = fsub fast float 1.000000e+00, %3020
  %4338 = fadd fast float %4337, %4336
  %4339 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4340 = fcmp fast olt float %4339, 1.000000e+00
  br i1 %4340, label %4341, label %4817

; <label>:4341                                    ; preds = %4322
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 2
  %4344 = extractvalue %dx.types.CBufRet.f32 %4342, 3
  %4345 = fmul fast float %4343, %105
  %4346 = fmul fast float %4344, %106
  %4347 = fptoui float %4345 to i32
  %4348 = fptoui float %4346 to i32
  %4349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.CBufRet.f32 %4349, 2
  %4352 = extractvalue %dx.types.CBufRet.f32 %4349, 3
  %4353 = fadd fast float %93, -4.000000e+00
  %4354 = call float @dx.op.binary.f32(i32 35, float %4353, float 0.000000e+00)  ; FMax(a,b)
  %4355 = fadd fast float %4354, %4350
  %4356 = fmul fast float %4355, %4351
  %4357 = call float @dx.op.unary.f32(i32 23, float %4356)  ; Log(value)
  %4358 = fmul fast float %4357, %4352
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 2
  %4361 = fmul fast float %4358, %4360
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4364 = extractvalue %dx.types.CBufRet.i32 %4363, 1
  %4365 = add i32 %4364, -1
  %4366 = uitofp i32 %4364 to float
  %4367 = fmul fast float %4366, %4362
  %4368 = fptoui float %4367 to i32
  %4369 = call i32 @dx.op.binary.i32(i32 40, i32 %4368, i32 %4365)  ; UMin(a,b)
  %4370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.i32 %4370, 2
  %4372 = extractvalue %dx.types.CBufRet.i32 %4370, 3
  %4373 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4348, i32 %4371, i32 %4347)  ; UMad(a,b,c)
  %4374 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4369, i32 %4372, i32 %4373)  ; UMad(a,b,c)
  %4375 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %4376 = fptoui float %4375 to i32
  %4377 = lshr i32 %4376, 5
  %4378 = call i32 @dx.op.binary.i32(i32 40, i32 %4377, i32 8191)  ; UMin(a,b)
  %4379 = fsub fast float %2784, %154
  %4380 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4381 = fcmp fast ogt float %4380, 0.000000e+00
  %4382 = fcmp fast ogt float %3007, 0.000000e+00
  %4383 = and i1 %4382, %4381
  br i1 %4383, label %4384, label %4413

; <label>:4384                                    ; preds = %4341
  %4385 = call float @dx.op.dot3.f32(i32 55, float %3005, float %3006, float %3007, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4386 = call float @dx.op.binary.f32(i32 35, float %4385, float -1.000000e+00)  ; FMax(a,b)
  %4387 = call float @dx.op.binary.f32(i32 36, float %4386, float 1.000000e+00)  ; FMin(a,b)
  %4388 = fmul fast float %4387, %4387
  %4389 = fsub fast float 1.000000e+00, %4388
  %4390 = fmul fast float %4389, 0x3FFC6E2300000000
  %4391 = fsub fast float 1.000000e+00, %4390
  %4392 = fcmp fast ogt float %4391, 0.000000e+00
  %4393 = call float @dx.op.unary.f32(i32 24, float %4391)  ; Sqrt(value)
  %4394 = fsub fast float 1.000000e+00, %4393
  %4395 = call float @dx.op.unary.f32(i32 23, float %4394)  ; Log(value)
  %4396 = fmul fast float %4395, 5.000000e+00
  %4397 = call float @dx.op.unary.f32(i32 21, float %4396)  ; Exp(value)
  %4398 = fmul fast float %4397, 0x3FEF591A60000000
  %4399 = fadd fast float %4398, 0x3F94DCB540000000
  %4400 = select i1 %4392, float %4399, float 1.000000e+00
  %4401 = fcmp fast oge float %4400, 1.000000e+00
  %4402 = fmul fast float %4385, 2.000000e+00
  %4403 = fadd fast float %4402, %3007
  %4404 = select i1 %4401, float %4403, float %3007
  %4405 = fsub fast float %4404, %3007
  %4406 = fmul fast float %4405, %4380
  %4407 = fadd fast float %4406, %3007
  %4408 = call float @dx.op.dot3.f32(i32 55, float %3005, float %3006, float %4407, float %3005, float %3006, float %4407)  ; Dot3(ax,ay,az,bx,by,bz)
  %4409 = call float @dx.op.unary.f32(i32 25, float %4408)  ; Rsqrt(value)
  %4410 = fmul fast float %4409, %3005
  %4411 = fmul fast float %4409, %3006
  %4412 = fmul fast float %4407, %4409
  br label %4413

; <label>:4413                                    ; preds = %4384, %4341
  %4414 = phi float [ %4410, %4384 ], [ %3005, %4341 ]
  %4415 = phi float [ %4411, %4384 ], [ %3006, %4341 ]
  %4416 = phi float [ %4412, %4384 ], [ %3007, %4341 ]
  %4417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.i32 %4417, 2
  %4419 = add nsw i32 %4418, -1
  %4420 = call i32 @dx.op.binary.i32(i32 37, i32 %4419, i32 0)  ; IMax(a,b)
  %4421 = shl i32 %4378, 2
  %4422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.i32 %4422, 0
  %4424 = lshr i32 %4423, 16
  %4425 = and i32 %4423, 65535
  %4426 = lshr i32 %4423, 21
  %4427 = lshr i32 %4425, 5
  %4428 = call i32 @dx.op.binary.i32(i32 40, i32 %4427, i32 %4420)  ; UMin(a,b)
  %4429 = icmp ugt i32 %4426, %4428
  br i1 %4429, label %4793, label %4430

; <label>:4430                                    ; preds = %4413
  br label %4431

; <label>:4431                                    ; preds = %4785, %4430
  %4432 = phi float [ %4786, %4785 ], [ 0.000000e+00, %4430 ]
  %4433 = phi float [ %4787, %4785 ], [ 0.000000e+00, %4430 ]
  %4434 = phi float [ %4788, %4785 ], [ 0.000000e+00, %4430 ]
  %4435 = phi float [ %4789, %4785 ], [ 1.000000e+00, %4430 ]
  %4436 = phi i32 [ %4790, %4785 ], [ %4426, %4430 ]
  %4437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.i32 %4437, 2
  %4439 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4374, i32 %4438, i32 %4436)  ; UMad(a,b,c)
  %4440 = shl i32 %4439, 2
  %4441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4440, i32 undef)  ; BufferLoad(srv,index,wot)
  %4442 = extractvalue %dx.types.ResRet.i32 %4441, 0
  %4443 = shl i32 %4436, 5
  %4444 = sub nsw i32 %4424, %4443
  %4445 = call i32 @dx.op.binary.i32(i32 37, i32 %4444, i32 0)  ; IMax(a,b)
  %4446 = call i32 @dx.op.binary.i32(i32 38, i32 %4445, i32 31)  ; IMin(a,b)
  %4447 = sub nsw i32 1, %4424
  %4448 = add nsw i32 %4447, %4425
  %4449 = call i32 @dx.op.binary.i32(i32 37, i32 %4448, i32 0)  ; IMax(a,b)
  %4450 = call i32 @dx.op.binary.i32(i32 38, i32 %4449, i32 32)  ; IMin(a,b)
  %4451 = and i32 %4450, 31
  %4452 = shl i32 -1, %4451
  %4453 = xor i32 %4452, -1
  %4454 = and i32 %4446, 31
  %4455 = shl i32 %4453, %4454
  %4456 = icmp eq i32 %4450, 32
  %4457 = select i1 %4456, i32 -1, i32 %4455
  %4458 = and i32 %4457, %4442
  %4459 = icmp eq i32 %4458, 0
  br i1 %4459, label %4785, label %4460

; <label>:4460                                    ; preds = %4431
  br label %4461

; <label>:4461                                    ; preds = %4568, %4460
  %4462 = phi float [ %4569, %4568 ], [ %4432, %4460 ]
  %4463 = phi float [ %4570, %4568 ], [ %4433, %4460 ]
  %4464 = phi float [ %4571, %4568 ], [ %4434, %4460 ]
  %4465 = phi float [ %4572, %4568 ], [ %4435, %4460 ]
  %4466 = phi i32 [ %4471, %4568 ], [ %4458, %4460 ]
  %4467 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4466)  ; FirstbitLo(value)
  %4468 = add i32 %4467, %4443
  %4469 = and i32 %4467, 31
  %4470 = shl i32 1, %4469
  %4471 = xor i32 %4470, %4466
  %4472 = mul i32 %4468, 72
  %4473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4474 = extractvalue %dx.types.ResRet.f32 %4473, 0
  %4475 = extractvalue %dx.types.ResRet.f32 %4473, 1
  %4476 = extractvalue %dx.types.ResRet.f32 %4473, 2
  %4477 = add i32 %4472, 12
  %4478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4477, i32 undef)  ; BufferLoad(srv,index,wot)
  %4479 = extractvalue %dx.types.ResRet.i32 %4478, 0
  %4480 = add i32 %4472, 16
  %4481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4480, i32 undef)  ; BufferLoad(srv,index,wot)
  %4482 = extractvalue %dx.types.ResRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.ResRet.f32 %4481, 1
  %4484 = extractvalue %dx.types.ResRet.f32 %4481, 2
  %4485 = add i32 %4472, 28
  %4486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4485, i32 undef)  ; BufferLoad(srv,index,wot)
  %4487 = extractvalue %dx.types.ResRet.f32 %4486, 0
  %4488 = add i32 %4472, 32
  %4489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4488, i32 undef)  ; BufferLoad(srv,index,wot)
  %4490 = extractvalue %dx.types.ResRet.f32 %4489, 0
  %4491 = extractvalue %dx.types.ResRet.f32 %4489, 1
  %4492 = extractvalue %dx.types.ResRet.f32 %4489, 2
  %4493 = extractvalue %dx.types.ResRet.f32 %4489, 3
  %4494 = add i32 %4472, 48
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = extractvalue %dx.types.ResRet.f32 %4495, 1
  %4498 = add i32 %4472, 56
  %4499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = extractvalue %dx.types.ResRet.f32 %4499, 1
  %4502 = add i32 %4472, 64
  %4503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4502, i32 undef)  ; BufferLoad(srv,index,wot)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.ResRet.f32 %4503, 1
  %4506 = mul i32 %4468, 60
  %4507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4506, i32 undef)  ; BufferLoad(srv,index,wot)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.ResRet.f32 %4507, 1
  %4510 = extractvalue %dx.types.ResRet.f32 %4507, 2
  %4511 = add i32 %4506, 12
  %4512 = add i32 %4506, 48
  %4513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4512, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.f32 %4513, 0
  %4515 = extractvalue %dx.types.ResRet.f32 %4513, 1
  %4516 = extractvalue %dx.types.ResRet.f32 %4513, 2
  %4517 = and i32 %4479, 32767
  %4518 = bitcast float %4474 to i32
  %4519 = icmp eq i32 %4518, -1
  %4520 = bitcast float %4475 to i32
  %4521 = and i32 %4479, 32768
  %4522 = icmp ne i32 %4521, 0
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 0
  %4525 = extractvalue %dx.types.CBufRet.f32 %4523, 1
  %4526 = extractvalue %dx.types.CBufRet.f32 %4523, 2
  %4527 = fsub fast float %4508, %4524
  %4528 = fsub fast float %4509, %4525
  %4529 = fsub fast float %4510, %4526
  %4530 = fsub fast float %152, %4527
  %4531 = fsub fast float %153, %4528
  %4532 = fsub fast float %154, %4529
  %4533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4511, i32 undef)  ; BufferLoad(srv,index,wot)
  %4534 = extractvalue %dx.types.ResRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.ResRet.f32 %4533, 1
  %4536 = extractvalue %dx.types.ResRet.f32 %4533, 2
  %4537 = call float @dx.op.dot3.f32(i32 55, float %4530, float %4531, float %4532, float %4534, float %4535, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %4538 = add i32 %4506, 24
  %4539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4538, i32 undef)  ; BufferLoad(srv,index,wot)
  %4540 = extractvalue %dx.types.ResRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.ResRet.f32 %4539, 1
  %4542 = extractvalue %dx.types.ResRet.f32 %4539, 2
  %4543 = call float @dx.op.dot3.f32(i32 55, float %4530, float %4531, float %4532, float %4540, float %4541, float %4542)  ; Dot3(ax,ay,az,bx,by,bz)
  %4544 = add i32 %4506, 36
  %4545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4544, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4547 = extractvalue %dx.types.ResRet.f32 %4545, 1
  %4548 = extractvalue %dx.types.ResRet.f32 %4545, 2
  %4549 = call float @dx.op.dot3.f32(i32 55, float %4530, float %4531, float %4532, float %4546, float %4547, float %4548)  ; Dot3(ax,ay,az,bx,by,bz)
  %4550 = call float @dx.op.unary.f32(i32 6, float %4537)  ; FAbs(value)
  %4551 = call float @dx.op.unary.f32(i32 6, float %4543)  ; FAbs(value)
  %4552 = call float @dx.op.unary.f32(i32 6, float %4549)  ; FAbs(value)
  %4553 = fsub fast float %4514, %4550
  %4554 = fsub fast float %4515, %4551
  %4555 = fsub fast float %4516, %4552
  %4556 = fmul fast float %4553, %4482
  %4557 = fmul fast float %4554, %4483
  %4558 = fmul fast float %4555, %4484
  %4559 = call float @dx.op.binary.f32(i32 36, float %4557, float %4558)  ; FMin(a,b)
  %4560 = call float @dx.op.binary.f32(i32 36, float %4556, float %4559)  ; FMin(a,b)
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = call float @dx.op.binary.f32(i32 36, float %4465, float %4561)  ; FMin(a,b)
  %4563 = uitofp i1 %4522 to float
  %4564 = fadd fast float %4380, 1.000000e+00
  %4565 = fsub fast float %4564, %4563
  %4566 = fmul fast float %4562, %4565
  %4567 = fcmp fast ogt float %4566, 0.000000e+00
  br i1 %4567, label %4574, label %4568

; <label>:4568                                    ; preds = %4716, %4461
  %4569 = phi float [ %4780, %4716 ], [ %4462, %4461 ]
  %4570 = phi float [ %4781, %4716 ], [ %4463, %4461 ]
  %4571 = phi float [ %4782, %4716 ], [ %4464, %4461 ]
  %4572 = phi float [ %4783, %4716 ], [ %4465, %4461 ]
  %4573 = icmp eq i32 %4466, %4470
  br i1 %4573, label %4784, label %4461

; <label>:4574                                    ; preds = %4461
  br i1 %4519, label %4632, label %4575

; <label>:4575                                    ; preds = %4574
  %4576 = fsub fast float -0.000000e+00, %4534
  %4577 = fsub fast float -0.000000e+00, %4535
  %4578 = fsub fast float -0.000000e+00, %4536
  %4579 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float %4576, float %4577, float %4578)  ; Dot3(ax,ay,az,bx,by,bz)
  %4580 = fsub fast float -0.000000e+00, %4579
  %4581 = call float @dx.op.dot3.f32(i32 55, float %4530, float %4531, float %4532, float %4576, float %4577, float %4578)  ; Dot3(ax,ay,az,bx,by,bz)
  %4582 = fadd fast float %4581, %4497
  %4583 = fadd fast float %4496, %4581
  %4584 = fsub fast float -0.000000e+00, %4583
  %4585 = fcmp ogt float %4579, -0.000000e+00
  %4586 = select i1 %4585, float %4584, float %4582
  %4587 = call float @dx.op.unary.f32(i32 6, float %4580)  ; FAbs(value)
  %4588 = fdiv fast float 1.000000e+00, %4587
  %4589 = fmul fast float %4586, %4588
  %4590 = call float @dx.op.binary.f32(i32 35, float %4589, float 0.000000e+00)  ; FMax(a,b)
  %4591 = fsub fast float -0.000000e+00, %4540
  %4592 = fsub fast float -0.000000e+00, %4541
  %4593 = fsub fast float -0.000000e+00, %4542
  %4594 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float %4591, float %4592, float %4593)  ; Dot3(ax,ay,az,bx,by,bz)
  %4595 = fsub fast float -0.000000e+00, %4594
  %4596 = call float @dx.op.dot3.f32(i32 55, float %4530, float %4531, float %4532, float %4591, float %4592, float %4593)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = fadd fast float %4596, %4501
  %4598 = fadd fast float %4500, %4596
  %4599 = fsub fast float -0.000000e+00, %4598
  %4600 = fcmp ogt float %4594, -0.000000e+00
  %4601 = select i1 %4600, float %4599, float %4597
  %4602 = call float @dx.op.unary.f32(i32 6, float %4595)  ; FAbs(value)
  %4603 = fdiv fast float 1.000000e+00, %4602
  %4604 = fmul fast float %4601, %4603
  %4605 = call float @dx.op.binary.f32(i32 35, float %4604, float 0.000000e+00)  ; FMax(a,b)
  %4606 = fsub fast float -0.000000e+00, %4546
  %4607 = fsub fast float -0.000000e+00, %4547
  %4608 = fsub fast float -0.000000e+00, %4548
  %4609 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4415, float %4416, float %4606, float %4607, float %4608)  ; Dot3(ax,ay,az,bx,by,bz)
  %4610 = fsub fast float -0.000000e+00, %4609
  %4611 = call float @dx.op.dot3.f32(i32 55, float %4530, float %4531, float %4532, float %4606, float %4607, float %4608)  ; Dot3(ax,ay,az,bx,by,bz)
  %4612 = fadd fast float %4611, %4505
  %4613 = fadd fast float %4504, %4611
  %4614 = fsub fast float -0.000000e+00, %4613
  %4615 = fcmp ogt float %4609, -0.000000e+00
  %4616 = select i1 %4615, float %4614, float %4612
  %4617 = call float @dx.op.unary.f32(i32 6, float %4610)  ; FAbs(value)
  %4618 = fdiv fast float 1.000000e+00, %4617
  %4619 = fmul fast float %4616, %4618
  %4620 = call float @dx.op.binary.f32(i32 35, float %4619, float 0.000000e+00)  ; FMax(a,b)
  %4621 = call float @dx.op.binary.f32(i32 36, float %4605, float %4620)  ; FMin(a,b)
  %4622 = call float @dx.op.binary.f32(i32 36, float %4590, float %4621)  ; FMin(a,b)
  %4623 = fmul fast float %4622, %4414
  %4624 = fmul fast float %4622, %4415
  %4625 = fmul fast float %4622, %4416
  %4626 = fadd fast float %4623, %152
  %4627 = fadd fast float %4624, %153
  %4628 = fadd fast float %4625, %154
  %4629 = fsub fast float %4626, %4474
  %4630 = fsub fast float %4627, %4475
  %4631 = fsub fast float %4628, %4476
  br label %4639

; <label>:4632                                    ; preds = %4574
  %4633 = fmul fast float %4414, 8.096000e+03
  %4634 = fmul fast float %4415, 8.096000e+03
  %4635 = fmul fast float %4416, 8.096000e+03
  %4636 = fadd fast float %4633, %152
  %4637 = fadd fast float %4634, %153
  %4638 = fadd fast float %4635, %154
  br label %4639

; <label>:4639                                    ; preds = %4632, %4575
  %4640 = phi float [ %4414, %4632 ], [ %4629, %4575 ]
  %4641 = phi float [ %4415, %4632 ], [ %4630, %4575 ]
  %4642 = phi float [ %4416, %4632 ], [ %4631, %4575 ]
  %4643 = phi float [ %4636, %4632 ], [ %4626, %4575 ]
  %4644 = phi float [ %4637, %4632 ], [ %4627, %4575 ]
  %4645 = phi float [ %4638, %4632 ], [ %4628, %4575 ]
  %4646 = fcmp fast olt float %4493, 1.000000e+00
  br i1 %4646, label %4647, label %4678, !dx.controlflow.hints !112

; <label>:4647                                    ; preds = %4639
  %4648 = fmul fast float %4642, %4491
  %4649 = fmul fast float %4641, %4492
  %4650 = fsub fast float %4648, %4649
  %4651 = fmul fast float %4640, %4492
  %4652 = fmul fast float %4642, %4490
  %4653 = fsub fast float %4651, %4652
  %4654 = fmul fast float %4641, %4490
  %4655 = fmul fast float %4640, %4491
  %4656 = fsub fast float %4654, %4655
  %4657 = fmul fast float %4650, 2.000000e+00
  %4658 = fmul fast float %4653, 2.000000e+00
  %4659 = fmul fast float %4656, 2.000000e+00
  %4660 = fmul fast float %4657, %4493
  %4661 = fmul fast float %4658, %4493
  %4662 = fmul fast float %4659, %4493
  %4663 = fmul fast float %4659, %4491
  %4664 = fmul fast float %4658, %4492
  %4665 = fmul fast float %4657, %4492
  %4666 = fmul fast float %4659, %4490
  %4667 = fmul fast float %4658, %4490
  %4668 = fmul fast float %4657, %4491
  %4669 = fadd fast float %4663, %4640
  %4670 = fadd fast float %4669, %4660
  %4671 = fsub fast float %4670, %4664
  %4672 = fsub fast float %4641, %4666
  %4673 = fadd fast float %4672, %4661
  %4674 = fadd fast float %4673, %4665
  %4675 = fadd fast float %4662, %4642
  %4676 = fsub fast float %4675, %4668
  %4677 = fadd fast float %4676, %4667
  br label %4678

; <label>:4678                                    ; preds = %4647, %4639
  %4679 = phi float [ %4671, %4647 ], [ %4640, %4639 ]
  %4680 = phi float [ %4674, %4647 ], [ %4641, %4639 ]
  %4681 = phi float [ %4677, %4647 ], [ %4642, %4639 ]
  br i1 %4519, label %4713, label %4682

; <label>:4682                                    ; preds = %4678
  %4683 = fmul fast float %2994, 0x400187C840000000
  %4684 = fadd fast float %4683, 0xC00EFC2120000000
  %4685 = fmul fast float %4684, %2994
  %4686 = fadd fast float %4685, 0x3FE5D16340000000
  %4687 = fmul fast float %4686, %2994
  %4688 = fadd fast float %4687, 1.000000e+00
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fsub fast float %4643, %152
  %4691 = fsub fast float %4644, %153
  %4692 = fsub fast float %4645, %154
  %4693 = fsub fast float %4643, %4474
  %4694 = fsub fast float %4644, %4475
  %4695 = fsub fast float %4645, %4476
  %4696 = call float @dx.op.dot3.f32(i32 55, float %4690, float %4691, float %4692, float %4690, float %4691, float %4692)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = call float @dx.op.dot3.f32(i32 55, float %4693, float %4694, float %4695, float %4693, float %4694, float %4695)  ; Dot3(ax,ay,az,bx,by,bz)
  %4698 = fadd fast float %4697, 0x3EE4F8B580000000
  %4699 = fdiv fast float %4696, %4698
  %4700 = bitcast float %4699 to i32
  %4701 = ashr i32 %4700, 1
  %4702 = add nsw i32 %4701, 532487669
  %4703 = bitcast i32 %4702 to float
  %4704 = fmul fast float %4703, %4689
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = fmul fast float %4705, 0x4009981AE0000000
  %4707 = fsub fast float 0x40111BBD80000000, %4706
  %4708 = fmul fast float %4707, %4705
  %4709 = fadd fast float %4708, 0xC0009F6020000000
  %4710 = fmul fast float %4709, %4705
  %4711 = fadd fast float %4710, 1.000000e+00
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  br label %4716

; <label>:4713                                    ; preds = %4678
  %4714 = icmp ne i32 %4520, -1
  %4715 = zext i1 %4714 to i32
  br label %4716

; <label>:4716                                    ; preds = %4713, %4682
  %4717 = phi float [ %2994, %4713 ], [ %4712, %4682 ]
  %4718 = phi i32 [ %4715, %4713 ], [ 0, %4682 ]
  %4719 = fmul float %4717, 5.000000e+00
  %4720 = fsub float 5.000000e+00, %4719
  %4721 = icmp ne i32 %4718, 0
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 3
  %4724 = fadd fast float %4723, %4720
  %4725 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4724)  ; FMax(a,b)
  %4726 = call float @dx.op.unary.f32(i32 6, float %4679)  ; FAbs(value)
  %4727 = call float @dx.op.unary.f32(i32 6, float %4680)  ; FAbs(value)
  %4728 = fadd fast float %4727, %4726
  %4729 = call float @dx.op.unary.f32(i32 6, float %4681)  ; FAbs(value)
  %4730 = fadd fast float %4728, %4729
  %4731 = fcmp fast oeq float %4730, 0.000000e+00
  %4732 = fdiv fast float 1.000000e+00, %4730
  %4733 = select i1 %4731, float 1.000000e+00, float %4732
  %4734 = fmul fast float %4733, %4679
  %4735 = fmul fast float %4733, %4680
  %4736 = call float @dx.op.unary.f32(i32 6, float %4735)  ; FAbs(value)
  %4737 = call float @dx.op.unary.f32(i32 6, float %4734)  ; FAbs(value)
  %4738 = fsub fast float 1.000000e+00, %4736
  %4739 = fsub fast float 1.000000e+00, %4737
  %4740 = fcmp fast oge float %4734, 0.000000e+00
  %4741 = fcmp fast oge float %4735, 0.000000e+00
  %4742 = select i1 %4740, float 1.000000e+00, float -1.000000e+00
  %4743 = select i1 %4741, float 1.000000e+00, float -1.000000e+00
  %4744 = fcmp fast ole float %4681, 0.000000e+00
  %4745 = fmul fast float %4742, %4738
  %4746 = fmul fast float %4743, %4739
  %4747 = select i1 %4744, float %4745, float %4734
  %4748 = select i1 %4744, float %4746, float %4735
  %4749 = fmul fast float %4747, 5.000000e-01
  %4750 = fmul fast float %4748, 5.000000e-01
  %4751 = fadd fast float %4749, 5.000000e-01
  %4752 = fadd fast float %4750, 5.000000e-01
  %4753 = uitofp i32 %4517 to float
  %4754 = call float @dx.op.binary.f32(i32 36, float %4725, float 3.000000e+00)  ; FMin(a,b)
  %4755 = fadd fast float %4754, 2.000000e+00
  %4756 = call float @dx.op.unary.f32(i32 21, float %4755)  ; Exp(value)
  %4757 = extractvalue %dx.types.CBufRet.f32 %4722, 1
  %4758 = fmul fast float %4757, %4756
  %4759 = fmul fast float %4758, 2.000000e+00
  %4760 = fsub fast float 1.000000e+00, %4759
  %4761 = fmul fast float %4751, %4760
  %4762 = fmul fast float %4752, %4760
  %4763 = fadd fast float %4761, %4758
  %4764 = fadd fast float %4762, %4758
  %4765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %4763, float %4764, float %4753, float undef, i32 0, i32 0, i32 undef, float %4725)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4766 = extractvalue %dx.types.ResRet.f32 %4765, 0
  %4767 = extractvalue %dx.types.ResRet.f32 %4765, 1
  %4768 = extractvalue %dx.types.ResRet.f32 %4765, 2
  %4769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4770 = extractvalue %dx.types.CBufRet.f32 %4769, 3
  %4771 = fmul fast float %4770, %4487
  %4772 = call float @dx.op.binary.f32(i32 36, float %4217, float %4771)  ; FMin(a,b)
  %4773 = select i1 %4721, float %4772, float %4771
  %4774 = fmul fast float %4766, %4566
  %4775 = fmul fast float %4774, %4773
  %4776 = fmul fast float %4767, %4566
  %4777 = fmul fast float %4776, %4773
  %4778 = fmul fast float %4768, %4566
  %4779 = fmul fast float %4778, %4773
  %4780 = fadd fast float %4775, %4462
  %4781 = fadd fast float %4777, %4463
  %4782 = fadd fast float %4779, %4464
  %4783 = fsub fast float %4465, %4566
  br label %4568

; <label>:4784                                    ; preds = %4568
  br label %4785

; <label>:4785                                    ; preds = %4784, %4431
  %4786 = phi float [ %4432, %4431 ], [ %4569, %4784 ]
  %4787 = phi float [ %4433, %4431 ], [ %4570, %4784 ]
  %4788 = phi float [ %4434, %4431 ], [ %4571, %4784 ]
  %4789 = phi float [ %4435, %4431 ], [ %4572, %4784 ]
  %4790 = add i32 %4436, 1
  %4791 = icmp ugt i32 %4790, %4428
  br i1 %4791, label %4792, label %4431, !llvm.loop !113

; <label>:4792                                    ; preds = %4785
  br label %4793

; <label>:4793                                    ; preds = %4792, %4413
  %4794 = phi float [ 0.000000e+00, %4413 ], [ %4786, %4792 ]
  %4795 = phi float [ 0.000000e+00, %4413 ], [ %4787, %4792 ]
  %4796 = phi float [ 0.000000e+00, %4413 ], [ %4788, %4792 ]
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4794, float %4795, float %4796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = select i1 %243, float 0.000000e+00, float %4794
  %4799 = select i1 %243, float %4797, float %4795
  %4800 = select i1 %243, float 0.000000e+00, float %4796
  %4801 = fcmp fast olt float %4339, 0.000000e+00
  %4802 = call float @dx.op.unary.f32(i32 6, float %4339)  ; FAbs(value)
  %4803 = fmul fast float %4802, %4279
  %4804 = fmul fast float %4802, %4280
  %4805 = fmul fast float %4802, %4281
  %4806 = select i1 %4801, float %4279, float %4803
  %4807 = select i1 %4801, float %4280, float %4804
  %4808 = select i1 %4801, float %4281, float %4805
  %4809 = fsub fast float 1.000000e+00, %4802
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4811 = fmul fast float %4810, %4798
  %4812 = fmul fast float %4810, %4799
  %4813 = fmul fast float %4810, %4800
  %4814 = fadd fast float %4806, %4811
  %4815 = fadd fast float %4807, %4812
  %4816 = fadd fast float %4808, %4813
  br label %4817

; <label>:4817                                    ; preds = %4793, %4322
  %4818 = phi float [ %4279, %4322 ], [ %4814, %4793 ]
  %4819 = phi float [ %4280, %4322 ], [ %4815, %4793 ]
  %4820 = phi float [ %4281, %4322 ], [ %4816, %4793 ]
  %4821 = fmul fast float %4328, %4275
  %4822 = fmul fast float %4328, %4276
  %4823 = fmul fast float %4328, %4277
  %4824 = call float @dx.op.dot3.f32(i32 55, float %2988, float %2989, float %2990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4825 = fcmp fast ogt float %4824, 0x3E7FF19E20000000
  %4826 = fdiv fast float 1.000000e+00, %4824
  %4827 = select i1 %4825, float %4826, float 0.000000e+00
  %4828 = fmul fast float %4827, %2988
  %4829 = fmul fast float %4827, %2989
  %4830 = fmul fast float %4827, %2990
  %4831 = fadd fast float %4828, -1.000000e+00
  %4832 = fadd fast float %4829, -1.000000e+00
  %4833 = fadd fast float %4830, -1.000000e+00
  %4834 = fmul fast float %4831, 5.000000e-01
  %4835 = fmul fast float %4832, 5.000000e-01
  %4836 = fmul fast float %4833, 5.000000e-01
  %4837 = fadd fast float %4834, 1.000000e+00
  %4838 = fadd fast float %4835, 1.000000e+00
  %4839 = fadd fast float %4836, 1.000000e+00
  %4840 = fmul fast float %4818, %4323
  %4841 = fmul fast float %4819, %4324
  %4842 = fmul fast float %4820, %4325
  %4843 = fsub fast float 1.000000e+00, %2999
  %4844 = bitcast float %4843 to i32
  %4845 = sitofp i32 %4844 to float
  %4846 = fmul fast float %4845, 5.000000e+00
  %4847 = fadd fast float %4846, 0xC1EFBF8940000000
  %4848 = fptosi float %4847 to i32
  %4849 = bitcast i32 %4848 to float
  %4850 = fmul fast float %4849, %2361
  %4851 = fmul fast float %4275, %4850
  %4852 = fmul fast float %4851, %4328
  %4853 = fmul fast float %4852, %4837
  %4854 = fmul fast float %4276, %4850
  %4855 = fmul fast float %4854, %4328
  %4856 = fmul fast float %4855, %4838
  %4857 = fmul fast float %4277, %4850
  %4858 = fmul fast float %4857, %4328
  %4859 = fmul fast float %4858, %4839
  %4860 = fmul fast float %4821, %2382
  %4861 = fmul fast float %4822, %2382
  %4862 = fmul fast float %4823, %2382
  %4863 = fadd fast float %4840, %2363
  %4864 = fadd fast float %4863, %4853
  %4865 = fmul fast float %4864, %2382
  %4866 = fadd fast float %4841, %2364
  %4867 = fadd fast float %4866, %4856
  %4868 = fmul fast float %4867, %2382
  %4869 = fadd fast float %4842, %2365
  %4870 = fadd fast float %4869, %4859
  %4871 = fmul fast float %4870, %2382
  %4872 = bitcast i32 %3023 to float
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.f32 %4873, 3
  %4875 = fcmp fast oeq float %4874, 0.000000e+00
  br i1 %4875, label %6417, label %4876

; <label>:4876                                    ; preds = %4817
  %4877 = extractvalue %dx.types.CBufRet.f32 %4873, 0
  %4878 = extractvalue %dx.types.CBufRet.f32 %4873, 1
  %4879 = extractvalue %dx.types.CBufRet.f32 %4873, 2
  %4880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4880, 0
  %4882 = extractvalue %dx.types.CBufRet.f32 %4880, 1
  %4883 = extractvalue %dx.types.CBufRet.f32 %4880, 2
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4887 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4888 = select i1 %243, float %4885, float %4881
  %4889 = select i1 %243, float %4887, float %4882
  %4890 = select i1 %243, float %4886, float %4883
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 2
  %4893 = fmul fast float %4892, %80
  %4894 = fmul fast float %4892, %81
  %4895 = fmul fast float %4892, %82
  %4896 = fadd fast float %4893, %152
  %4897 = fadd fast float %4894, %153
  %4898 = fadd fast float %4895, %154
  %4899 = fcmp fast olt float %4874, 0.000000e+00
  br i1 %4899, label %5995, label %4900

; <label>:4900                                    ; preds = %4876
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.CBufRet.f32 %4901, 1
  %4904 = extractvalue %dx.types.CBufRet.f32 %4901, 2
  %4905 = extractvalue %dx.types.CBufRet.f32 %4901, 3
  %4906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.f32 %4906, 0
  %4908 = extractvalue %dx.types.CBufRet.f32 %4906, 1
  %4909 = extractvalue %dx.types.CBufRet.f32 %4906, 2
  %4910 = extractvalue %dx.types.CBufRet.f32 %4906, 3
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 0
  %4913 = extractvalue %dx.types.CBufRet.f32 %4911, 1
  %4914 = extractvalue %dx.types.CBufRet.f32 %4911, 2
  %4915 = extractvalue %dx.types.CBufRet.f32 %4911, 3
  %4916 = fmul fast float %4902, %4896
  %4917 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %4903, float %4916)  ; FMad(a,b,c)
  %4918 = call float @dx.op.tertiary.f32(i32 46, float %4898, float %4904, float %4917)  ; FMad(a,b,c)
  %4919 = fadd fast float %4918, %4905
  %4920 = fmul fast float %4907, %4896
  %4921 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %4908, float %4920)  ; FMad(a,b,c)
  %4922 = call float @dx.op.tertiary.f32(i32 46, float %4898, float %4909, float %4921)  ; FMad(a,b,c)
  %4923 = fadd fast float %4922, %4910
  %4924 = fmul fast float %4912, %4896
  %4925 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %4913, float %4924)  ; FMad(a,b,c)
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4898, float %4914, float %4925)  ; FMad(a,b,c)
  %4927 = fadd fast float %4926, %4915
  %4928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4929 = extractvalue %dx.types.CBufRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.CBufRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.CBufRet.f32 %4928, 3
  %4932 = fmul fast float %4931, %4919
  %4933 = fmul fast float %4931, %4923
  %4934 = fadd fast float %4932, %4929
  %4935 = fadd fast float %4933, %4930
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 0
  %4938 = extractvalue %dx.types.CBufRet.f32 %4936, 1
  %4939 = extractvalue %dx.types.CBufRet.f32 %4936, 3
  %4940 = fmul fast float %4939, %4919
  %4941 = fmul fast float %4939, %4923
  %4942 = fadd fast float %4940, %4937
  %4943 = fadd fast float %4941, %4938
  %4944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4945 = extractvalue %dx.types.CBufRet.f32 %4944, 1
  %4946 = fsub fast float %4945, %4927
  %4947 = extractvalue %dx.types.CBufRet.f32 %4944, 2
  %4948 = fmul fast float %4946, %4947
  %4949 = fsub fast float 1.000000e+00, %4948
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = extractvalue %dx.types.CBufRet.f32 %4936, 2
  %4952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.f32 %4952, 2
  %4954 = fadd fast float %4953, %4951
  %4955 = fcmp fast ogt float %4954, 0.000000e+00
  br i1 %4955, label %4956, label %4980

; <label>:4956                                    ; preds = %4900
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 0
  %4959 = extractvalue %dx.types.CBufRet.f32 %4957, 1
  %4960 = fsub fast float %4942, %4958
  %4961 = fsub fast float %4943, %4959
  %4962 = fcmp fast olt float %4960, 0.000000e+00
  %4963 = fcmp fast olt float %4961, 0.000000e+00
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.CBufRet.f32 %4964, 1
  %4967 = extractvalue %dx.types.CBufRet.f32 %4964, 2
  %4968 = extractvalue %dx.types.CBufRet.f32 %4964, 3
  %4969 = select i1 %4962, float %4965, float %4967
  %4970 = select i1 %4963, float %4966, float %4968
  %4971 = fmul fast float %4969, %4960
  %4972 = fmul fast float %4970, %4961
  %4973 = call float @dx.op.unary.f32(i32 6, float %4971)  ; FAbs(value)
  %4974 = call float @dx.op.unary.f32(i32 6, float %4972)  ; FAbs(value)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4976 = call float @dx.op.binary.f32(i32 35, float %4973, float %4974)  ; FMax(a,b)
  %4977 = fsub fast float %4975, %4976
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fmul fast float %4978, %4950
  br label %4980

; <label>:4980                                    ; preds = %4956, %4900
  %4981 = phi float [ %4979, %4956 ], [ 0.000000e+00, %4900 ]
  %4982 = extractvalue %dx.types.CBufRet.f32 %4928, 2
  %4983 = extractvalue %dx.types.CBufRet.f32 %4952, 1
  %4984 = fadd fast float %4983, %4982
  %4985 = fcmp fast ogt float %4984, 0.000000e+00
  %4986 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  br i1 %4985, label %4987, label %5010

; <label>:4987                                    ; preds = %4980
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.CBufRet.f32 %4988, 1
  %4991 = fsub fast float %4934, %4989
  %4992 = fsub fast float %4935, %4990
  %4993 = fcmp fast olt float %4991, 0.000000e+00
  %4994 = fcmp fast olt float %4992, 0.000000e+00
  %4995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4996 = extractvalue %dx.types.CBufRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.CBufRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.CBufRet.f32 %4995, 2
  %4999 = extractvalue %dx.types.CBufRet.f32 %4995, 3
  %5000 = select i1 %4993, float %4996, float %4998
  %5001 = select i1 %4994, float %4997, float %4999
  %5002 = fmul fast float %5000, %4991
  %5003 = fmul fast float %5001, %4992
  %5004 = call float @dx.op.unary.f32(i32 6, float %5002)  ; FAbs(value)
  %5005 = call float @dx.op.unary.f32(i32 6, float %5003)  ; FAbs(value)
  %5006 = call float @dx.op.binary.f32(i32 35, float %5004, float %5005)  ; FMax(a,b)
  %5007 = fsub fast float %4986, %5006
  %5008 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  %5009 = fmul fast float %5008, %4950
  br label %5010

; <label>:5010                                    ; preds = %4987, %4980
  %5011 = phi float [ %5009, %4987 ], [ 0.000000e+00, %4980 ]
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5014 = call float @dx.op.unary.f32(i32 7, float %5013)  ; Saturate(value)
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.CBufRet.f32 %5015, 1
  %5018 = fsub fast float %4919, %5016
  %5019 = fsub fast float %4923, %5017
  %5020 = fcmp fast olt float %5018, 0.000000e+00
  %5021 = fcmp fast olt float %5019, 0.000000e+00
  %5022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5023 = extractvalue %dx.types.CBufRet.f32 %5022, 0
  %5024 = extractvalue %dx.types.CBufRet.f32 %5022, 1
  %5025 = extractvalue %dx.types.CBufRet.f32 %5022, 2
  %5026 = extractvalue %dx.types.CBufRet.f32 %5022, 3
  %5027 = select i1 %5020, float %5023, float %5025
  %5028 = select i1 %5021, float %5024, float %5026
  %5029 = fmul fast float %5027, %5018
  %5030 = fmul fast float %5028, %5019
  %5031 = call float @dx.op.unary.f32(i32 6, float %5029)  ; FAbs(value)
  %5032 = call float @dx.op.unary.f32(i32 6, float %5030)  ; FAbs(value)
  %5033 = call float @dx.op.binary.f32(i32 35, float %5031, float %5032)  ; FMax(a,b)
  %5034 = fsub fast float %4986, %5033
  %5035 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5036 = call float @dx.op.binary.f32(i32 36, float %5035, float %5014)  ; FMin(a,b)
  %5037 = fmul fast float %5036, %4950
  %5038 = fsub fast float %5011, %5037
  %5039 = fsub fast float %4981, %5011
  %5040 = fsub fast float %5039, %5037
  %5041 = call float @dx.op.binary.f32(i32 35, float %5011, float %4981)  ; FMax(a,b)
  %5042 = call float @dx.op.binary.f32(i32 35, float %5037, float %5041)  ; FMax(a,b)
  %5043 = fcmp fast olt float %5042, 1.000000e+00
  br i1 %5043, label %5044, label %5442, !dx.controlflow.hints !115

; <label>:5044                                    ; preds = %5010
  %5045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5046 = extractvalue %dx.types.CBufRet.f32 %5045, 0
  %5047 = fcmp fast une float %5046, 0.000000e+00
  br i1 %5047, label %5048, label %5442, !dx.controlflow.hints !116

; <label>:5048                                    ; preds = %5044
  %5049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = extractvalue %dx.types.CBufRet.f32 %5049, 0
  %5051 = extractvalue %dx.types.CBufRet.f32 %5049, 1
  %5052 = extractvalue %dx.types.CBufRet.f32 %5049, 2
  %5053 = extractvalue %dx.types.CBufRet.f32 %5049, 3
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 0
  %5056 = extractvalue %dx.types.CBufRet.f32 %5054, 1
  %5057 = extractvalue %dx.types.CBufRet.f32 %5054, 2
  %5058 = extractvalue %dx.types.CBufRet.f32 %5054, 3
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 0
  %5061 = extractvalue %dx.types.CBufRet.f32 %5059, 1
  %5062 = extractvalue %dx.types.CBufRet.f32 %5059, 2
  %5063 = extractvalue %dx.types.CBufRet.f32 %5059, 3
  %5064 = fmul fast float %5050, %4896
  %5065 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %5051, float %5064)  ; FMad(a,b,c)
  %5066 = call float @dx.op.tertiary.f32(i32 46, float %4898, float %5052, float %5065)  ; FMad(a,b,c)
  %5067 = fadd fast float %5066, %5053
  %5068 = fmul fast float %5055, %4896
  %5069 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %5056, float %5068)  ; FMad(a,b,c)
  %5070 = call float @dx.op.tertiary.f32(i32 46, float %4898, float %5057, float %5069)  ; FMad(a,b,c)
  %5071 = fadd fast float %5070, %5058
  %5072 = fmul fast float %5060, %4896
  %5073 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %5061, float %5072)  ; FMad(a,b,c)
  %5074 = call float @dx.op.tertiary.f32(i32 46, float %4898, float %5062, float %5073)  ; FMad(a,b,c)
  %5075 = fadd fast float %5074, %5063
  %5076 = fcmp fast oge float %5067, 1.000000e+00
  %5077 = fcmp fast oge float %5071, 1.000000e+00
  %5078 = or i1 %5076, %5077
  %5079 = fcmp fast olt float %5067, 0.000000e+00
  %5080 = fcmp fast olt float %5071, 0.000000e+00
  %5081 = or i1 %5079, %5080
  %5082 = or i1 %5078, %5081
  br i1 %5082, label %5442, label %5083, !dx.controlflow.hints !117

; <label>:5083                                    ; preds = %5048
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5086 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %5087 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %5088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.i32 %5088, 2
  %5090 = uitofp i32 %5089 to float
  %5091 = extractvalue %dx.types.CBufRet.i32 %5088, 3
  %5092 = uitofp i32 %5091 to float
  %5093 = extractvalue %dx.types.CBufRet.f32 %5084, 3
  %5094 = fmul fast float %5093, 2.000000e+00
  %5095 = fsub fast float %5067, %5085
  %5096 = fsub fast float %5071, %5086
  %5097 = fmul fast float %5094, %5095
  %5098 = fmul fast float %5094, %5096
  %5099 = fdiv fast float 1.000000e+00, %4879
  %5100 = fmul fast float %5098, %5099
  %5101 = call float @dx.op.unary.f32(i32 6, float %5100)  ; FAbs(value)
  %5102 = fmul fast float %5087, %4898
  %5103 = fmul fast float %5102, %5094
  %5104 = call float @dx.op.unary.f32(i32 6, float %5103)  ; FAbs(value)
  %5105 = call float @dx.op.unary.f32(i32 6, float %5097)  ; FAbs(value)
  %5106 = call float @dx.op.binary.f32(i32 35, float %5104, float %5101)  ; FMax(a,b)
  %5107 = call float @dx.op.binary.f32(i32 35, float %5105, float %5106)  ; FMax(a,b)
  %5108 = fmul fast float %5107, 2.000000e+00
  %5109 = call float @dx.op.unary.f32(i32 23, float %5108)  ; Log(value)
  %5110 = call float @dx.op.binary.f32(i32 35, float %5109, float %5090)  ; FMax(a,b)
  %5111 = call float @dx.op.unary.f32(i32 22, float %5110)  ; Frc(value)
  %5112 = fadd fast float %5111, 0xBFEA666660000000
  %5113 = fmul fast float %5112, 8.000000e+00
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = call float @dx.op.unary.f32(i32 27, float %5110)  ; Round_ni(value)
  %5116 = fadd fast float %5115, %5114
  %5117 = call float @dx.op.binary.f32(i32 36, float %5116, float %5092)  ; FMin(a,b)
  %5118 = call float @dx.op.unary.f32(i32 27, float %5117)  ; Round_ni(value)
  %5119 = fsub fast float -0.000000e+00, %5118
  %5120 = call float @dx.op.unary.f32(i32 21, float %5119)  ; Exp(value)
  %5121 = fmul fast float %5120, %5094
  %5122 = fmul fast float %5121, %5067
  %5123 = fmul fast float %5121, %5071
  %5124 = fmul fast float %5122, 2.500000e-01
  %5125 = fmul fast float %5123, 2.500000e-01
  %5126 = fadd fast float %5124, 5.000000e-01
  %5127 = fadd fast float %5125, 5.000000e-01
  %5128 = fsub fast float %5092, %5090
  %5129 = fptoui float %5128 to i32
  %5130 = add i32 %5129, 320
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %5130)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5133 = extractvalue %dx.types.CBufRet.f32 %5131, 1
  %5134 = fcmp fast une float %5117, %5092
  %5135 = fsub fast float %5067, %5132
  %5136 = fsub fast float %5071, %5133
  %5137 = call float @dx.op.unary.f32(i32 6, float %5135)  ; FAbs(value)
  %5138 = call float @dx.op.unary.f32(i32 6, float %5136)  ; FAbs(value)
  %5139 = fmul fast float %5137, %5121
  %5140 = fmul fast float %5138, %5121
  %5141 = fcmp fast olt float %5139, 1.000000e+00
  %5142 = fcmp fast olt float %5140, 1.000000e+00
  %5143 = and i1 %5141, %5142
  %5144 = or i1 %5134, %5143
  br i1 %5144, label %5145, label %5442, !dx.controlflow.hints !118

; <label>:5145                                    ; preds = %5083
  %5146 = fmul fast float %5123, 5.000000e-01
  %5147 = fmul fast float %5122, 5.000000e-01
  %5148 = fadd fast float %5146, 5.000000e-01
  %5149 = fadd fast float %5147, 5.000000e-01
  %5150 = sitofp i32 %5089 to float
  %5151 = fsub fast float %5117, %5150
  %5152 = call float @dx.op.unary.f32(i32 27, float %5151)  ; Round_ni(value)
  %5153 = call float @dx.op.unary.f32(i32 22, float %5117)  ; Frc(value)
  %5154 = call float @dx.op.unary.f32(i32 22, float %5149)  ; Frc(value)
  %5155 = call float @dx.op.unary.f32(i32 22, float %5148)  ; Frc(value)
  %5156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %5154, float %5155, float %5152, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5157 = extractvalue %dx.types.ResRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.ResRet.f32 %5156, 1
  %5159 = extractvalue %dx.types.ResRet.f32 %5156, 2
  %5160 = extractvalue %dx.types.ResRet.f32 %5156, 3
  %5161 = fcmp fast ogt float %5153, 0.000000e+00
  br i1 %5161, label %5162, label %5183, !dx.controlflow.hints !119

; <label>:5162                                    ; preds = %5145
  %5163 = fadd fast float %5152, 1.000000e+00
  %5164 = call float @dx.op.unary.f32(i32 22, float %5126)  ; Frc(value)
  %5165 = call float @dx.op.unary.f32(i32 22, float %5127)  ; Frc(value)
  %5166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %5164, float %5165, float %5163, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5167 = extractvalue %dx.types.ResRet.f32 %5166, 0
  %5168 = extractvalue %dx.types.ResRet.f32 %5166, 1
  %5169 = extractvalue %dx.types.ResRet.f32 %5166, 2
  %5170 = extractvalue %dx.types.ResRet.f32 %5166, 3
  %5171 = fsub fast float %5167, %5157
  %5172 = fsub fast float %5168, %5158
  %5173 = fsub fast float %5169, %5159
  %5174 = fsub fast float %5170, %5160
  %5175 = fmul fast float %5171, %5153
  %5176 = fmul fast float %5172, %5153
  %5177 = fmul fast float %5173, %5153
  %5178 = fmul fast float %5174, %5153
  %5179 = fadd fast float %5175, %5157
  %5180 = fadd fast float %5176, %5158
  %5181 = fadd fast float %5177, %5159
  %5182 = fadd fast float %5178, %5160
  br label %5183

; <label>:5183                                    ; preds = %5162, %5145
  %5184 = phi float [ %5179, %5162 ], [ %5157, %5145 ]
  %5185 = phi float [ %5180, %5162 ], [ %5158, %5145 ]
  %5186 = phi float [ %5181, %5162 ], [ %5159, %5145 ]
  %5187 = phi float [ %5182, %5162 ], [ %5160, %5145 ]
  %5188 = fadd fast float %5184, -5.000000e-01
  %5189 = fadd fast float %5186, -5.000000e-01
  %5190 = fmul fast float %5188, 0xBFD5555560000000
  %5191 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5189, float %5190)  ; FMad(a,b,c)
  %5192 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5185, float 0.000000e+00)  ; FMad(a,b,c)
  %5193 = fadd fast float %5192, %5187
  %5194 = fmul fast float %5188, -7.500000e-01
  %5195 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5189, float %5194)  ; FMad(a,b,c)
  %5196 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5185, float 0.000000e+00)  ; FMad(a,b,c)
  %5197 = fadd fast float %5196, %5187
  %5198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5198, 0
  %5200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5201 = extractvalue %dx.types.CBufRet.f32 %5200, 0
  %5202 = extractvalue %dx.types.CBufRet.f32 %5200, 1
  %5203 = extractvalue %dx.types.CBufRet.f32 %5200, 2
  %5204 = extractvalue %dx.types.CBufRet.f32 %5200, 3
  %5205 = fsub fast float %5201, %5191
  %5206 = fsub fast float %5202, %5193
  %5207 = fsub fast float %5203, %5195
  %5208 = fsub fast float %5204, %5197
  %5209 = fmul fast float %5205, %5199
  %5210 = fmul fast float %5206, %5199
  %5211 = fmul fast float %5207, %5199
  %5212 = fmul fast float %5208, %5199
  %5213 = fadd fast float %5209, %5191
  %5214 = fadd fast float %5210, %5193
  %5215 = fadd fast float %5211, %5195
  %5216 = fadd fast float %5212, %5197
  %5217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5218 = extractvalue %dx.types.ResRet.i32 %5217, 0
  %5219 = and i32 %5218, 536870911
  %5220 = uitofp i32 %5219 to float
  %5221 = fmul fast float %5220, %5067
  %5222 = fmul fast float %5220, %5071
  %5223 = fptoui float %5221 to i32
  %5224 = fptoui float %5222 to i32
  %5225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5226 = extractvalue %dx.types.ResRet.i32 %5225, 0
  %5227 = and i32 %5226, 31
  %5228 = lshr i32 %5223, %5227
  %5229 = lshr i32 %5224, %5227
  %5230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5231 = extractvalue %dx.types.ResRet.i32 %5230, 0
  %5232 = and i32 %5231, 31
  %5233 = shl i32 1, %5232
  %5234 = call i32 @dx.op.binary.i32(i32 40, i32 %5233, i32 4)  ; UMin(a,b)
  %5235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5236 = extractvalue %dx.types.ResRet.i32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.i32 %5235, 1
  %5238 = icmp eq i32 %5234, 0
  br i1 %5238, label %5280, label %5239

; <label>:5239                                    ; preds = %5183
  br label %5240

; <label>:5240                                    ; preds = %5268, %5239
  %5241 = phi i32 [ %5271, %5268 ], [ 0, %5239 ]
  %5242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5243 = extractvalue %dx.types.ResRet.i32 %5242, 0
  %5244 = lshr i32 %5243, 16
  %5245 = and i32 %5244, 31
  %5246 = shl i32 %5229, %5245
  %5247 = add i32 %5246, %5228
  %5248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.i32 %5248, 0
  %5250 = and i32 %5249, 31
  %5251 = shl i32 %5247, %5250
  %5252 = add i32 %5251, %5241
  %5253 = shl i32 %5252, 2
  %5254 = add i32 %5253, 32
  %5255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5254, i32 undef)  ; BufferLoad(srv,index,wot)
  %5256 = extractvalue %dx.types.ResRet.i32 %5255, 0
  %5257 = icmp slt i32 %5256, 0
  %5258 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5241
  %5259 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5241
  %5260 = bitcast float* %5258 to i32*
  %5261 = bitcast float* %5259 to i32*
  br i1 %5257, label %5262, label %5268

; <label>:5262                                    ; preds = %5240
  %5263 = and i32 %5256, 1073741823
  %5264 = add nuw nsw i32 %5263, 20
  %5265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5264, i32 undef)  ; BufferLoad(srv,index,wot)
  %5266 = extractvalue %dx.types.ResRet.i32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.i32 %5265, 1
  br label %5268

; <label>:5268                                    ; preds = %5262, %5240
  %5269 = phi i32 [ %5266, %5262 ], [ %5236, %5240 ]
  %5270 = phi i32 [ %5267, %5262 ], [ %5237, %5240 ]
  store i32 %5269, i32* %5260, align 4
  store i32 %5270, i32* %5261, align 4
  %5271 = add nuw i32 %5241, 1
  %5272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.i32 %5272, 2
  %5274 = icmp eq i32 %5273, 0
  %5275 = icmp ugt i32 %5256, -1073741825
  %5276 = and i1 %5275, %5274
  %5277 = icmp ult i32 %5271, %5234
  %5278 = and i1 %5276, %5277
  br i1 %5278, label %5240, label %5279

; <label>:5279                                    ; preds = %5268
  br label %5280

; <label>:5280                                    ; preds = %5279, %5183
  %5281 = phi i32 [ 0, %5183 ], [ %5271, %5279 ]
  %5282 = extractvalue %dx.types.CBufRet.f32 %5045, 2
  %5283 = fptoui float %5282 to i32
  %5284 = icmp eq i32 %5283, 0
  br i1 %5284, label %5336, label %5285

; <label>:5285                                    ; preds = %5280
  br label %5286

; <label>:5286                                    ; preds = %5331, %5285
  %5287 = phi i32 [ %5332, %5331 ], [ %5281, %5285 ]
  %5288 = phi i32 [ %5333, %5331 ], [ 0, %5285 ]
  %5289 = lshr i32 %5288, 2
  %5290 = and i32 %5288, 3
  %5291 = add nuw nsw i32 %5289, 83
  %5292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %5291)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.i32 %5292, 0
  %5294 = extractvalue %dx.types.CBufRet.i32 %5292, 1
  %5295 = extractvalue %dx.types.CBufRet.i32 %5292, 2
  %5296 = extractvalue %dx.types.CBufRet.i32 %5292, 3
  %5297 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %5293, i32* %5297, align 4
  %5298 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %5294, i32* %5298, align 4
  %5299 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %5295, i32* %5299, align 4
  %5300 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %5296, i32* %5300, align 4
  %5301 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %5290
  %5302 = load i32, i32* %5301, align 4, !tbaa !120, !noalias !124
  %5303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.i32 %5303, 0
  %5305 = lshr i32 %5304, 16
  %5306 = and i32 %5305, 31
  %5307 = shl i32 %5229, %5306
  %5308 = add i32 %5307, %5228
  %5309 = shl i32 %5308, 2
  %5310 = add i32 %5309, %5302
  %5311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.i32 %5311, 0
  %5313 = icmp eq i32 %5312, 0
  br i1 %5313, label %5331, label %5314

; <label>:5314                                    ; preds = %5286
  %5315 = icmp slt i32 %5312, 0
  %5316 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5287
  %5317 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5287
  %5318 = bitcast float* %5316 to i32*
  %5319 = bitcast float* %5317 to i32*
  br i1 %5315, label %5320, label %5327

; <label>:5320                                    ; preds = %5314
  %5321 = and i32 %5312, 1073741823
  %5322 = add i32 %5302, 20
  %5323 = add i32 %5322, %5321
  %5324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5323, i32 undef)  ; BufferLoad(srv,index,wot)
  %5325 = extractvalue %dx.types.ResRet.i32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.i32 %5324, 1
  br label %5327

; <label>:5327                                    ; preds = %5320, %5314
  %5328 = phi i32 [ %5325, %5320 ], [ %5236, %5314 ]
  %5329 = phi i32 [ %5326, %5320 ], [ %5237, %5314 ]
  store i32 %5328, i32* %5318, align 4
  store i32 %5329, i32* %5319, align 4
  %5330 = add i32 %5287, 1
  br label %5331

; <label>:5331                                    ; preds = %5327, %5286
  %5332 = phi i32 [ %5287, %5286 ], [ %5330, %5327 ]
  %5333 = add nuw i32 %5288, 1
  %5334 = icmp eq i32 %5333, %5283
  br i1 %5334, label %5335, label %5286

; <label>:5335                                    ; preds = %5331
  br label %5336

; <label>:5336                                    ; preds = %5335, %5280
  %5337 = phi i32 [ %5281, %5280 ], [ %5332, %5335 ]
  %5338 = icmp eq i32 %5337, 1
  %5339 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %5340 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %5338, label %5341, label %5344

; <label>:5341                                    ; preds = %5336
  %5342 = load float, float* %5339, align 4
  %5343 = load float, float* %5340, align 4
  br label %5371

; <label>:5344                                    ; preds = %5336
  %5345 = load float, float* %5339, align 4
  %5346 = load float, float* %5340, align 4
  %5347 = fdiv fast float 1.000000e+00, %5346
  %5348 = fsub fast float %5345, %5347
  %5349 = icmp ugt i32 %5337, 1
  br i1 %5349, label %5350, label %5366

; <label>:5350                                    ; preds = %5344
  br label %5351

; <label>:5351                                    ; preds = %5351, %5350
  %5352 = phi float [ %5361, %5351 ], [ %5348, %5350 ]
  %5353 = phi float [ %5362, %5351 ], [ %5345, %5350 ]
  %5354 = phi i32 [ %5363, %5351 ], [ 1, %5350 ]
  %5355 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5354
  %5356 = load float, float* %5355, align 4
  %5357 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5354
  %5358 = load float, float* %5357, align 4
  %5359 = fdiv fast float 1.000000e+00, %5358
  %5360 = fsub fast float %5356, %5359
  %5361 = call float @dx.op.binary.f32(i32 36, float %5352, float %5360)  ; FMin(a,b)
  %5362 = call float @dx.op.binary.f32(i32 35, float %5353, float %5356)  ; FMax(a,b)
  %5363 = add nuw i32 %5354, 1
  %5364 = icmp eq i32 %5363, %5337
  br i1 %5364, label %5365, label %5351

; <label>:5365                                    ; preds = %5351
  br label %5366

; <label>:5366                                    ; preds = %5365, %5344
  %5367 = phi float [ %5348, %5344 ], [ %5361, %5365 ]
  %5368 = phi float [ %5345, %5344 ], [ %5362, %5365 ]
  %5369 = fsub fast float %5368, %5367
  %5370 = fdiv fast float 1.000000e+00, %5369
  br label %5371

; <label>:5371                                    ; preds = %5366, %5341
  %5372 = phi float [ %5342, %5341 ], [ %5368, %5366 ]
  %5373 = phi float [ %5343, %5341 ], [ %5370, %5366 ]
  %5374 = fadd fast float %5075, %5372
  %5375 = fmul fast float %5374, %5373
  %5376 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5377 = fmul fast float %5376, 2.000000e+00
  %5378 = fsub fast float 1.000000e+00, %5377
  %5379 = fmul fast float %5213, %5213
  %5380 = fsub fast float %5214, %5379
  %5381 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5380)  ; FMax(a,b)
  %5382 = fdiv fast float 1.000000e+00, %5381
  %5383 = fmul fast float %5214, %5213
  %5384 = fsub fast float %5215, %5383
  %5385 = fsub fast float %5378, %5213
  %5386 = fmul fast float %5378, %5378
  %5387 = fsub fast float %5386, %5214
  %5388 = fmul fast float %5382, %5384
  %5389 = fmul fast float %5388, %5385
  %5390 = fsub fast float %5387, %5389
  %5391 = fmul fast float %5214, %5214
  %5392 = fsub fast float %5216, %5391
  %5393 = fmul fast float %5384, %5384
  %5394 = fmul fast float %5393, %5382
  %5395 = fsub fast float %5392, %5394
  %5396 = fdiv fast float %5390, %5395
  %5397 = fmul fast float %5396, %5384
  %5398 = fsub fast float %5385, %5397
  %5399 = fmul fast float %5398, %5382
  %5400 = fmul fast float %5399, %5213
  %5401 = fsub fast float 1.000000e+00, %5400
  %5402 = fmul fast float %5396, %5214
  %5403 = fsub fast float %5401, %5402
  %5404 = fmul fast float %5399, %5399
  %5405 = fmul fast float %5396, 4.000000e+00
  %5406 = fmul fast float %5405, %5403
  %5407 = fsub fast float %5404, %5406
  %5408 = call float @dx.op.unary.f32(i32 24, float %5407)  ; Sqrt(value)
  %5409 = fcmp fast oge float %5399, 0.000000e+00
  %5410 = fsub fast float -0.000000e+00, %5408
  %5411 = select i1 %5409, float %5410, float %5408
  %5412 = fsub fast float %5411, %5399
  %5413 = fdiv fast float %5412, %5396
  %5414 = fdiv fast float %5403, %5412
  %5415 = fmul fast float %5413, 5.000000e-01
  %5416 = fmul fast float %5414, 2.000000e+00
  %5417 = select i1 %5409, float %5415, float %5416
  %5418 = select i1 %5409, float %5416, float %5415
  %5419 = call float @dx.op.binary.f32(i32 35, float %5417, float %5418)  ; FMax(a,b)
  %5420 = call float @dx.op.binary.f32(i32 36, float %5417, float %5418)  ; FMin(a,b)
  %5421 = fcmp fast ogt float %5378, %5419
  %5422 = fsub fast float %5378, %5420
  %5423 = fsub fast float %5378, %5419
  %5424 = fsub fast float %5419, %5420
  %5425 = select i1 %5421, float %5423, float %5424
  %5426 = fmul float %5422, %5425
  %5427 = select i1 %5421, float %5420, float %5378
  %5428 = fcmp fast ogt float %5378, %5420
  %5429 = fmul fast float %5427, %5419
  %5430 = fadd fast float %5427, %5419
  %5431 = fmul fast float %5430, %5213
  %5432 = fadd fast float %5429, %5214
  %5433 = fsub fast float %5432, %5431
  %5434 = fdiv fast float %5433, %5426
  %5435 = select i1 %5428, float %5434, float 0.000000e+00
  %5436 = fsub fast float 1.000000e+00, %5435
  %5437 = select i1 %5421, float %5436, float %5435
  %5438 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5198, 3
  %5440 = fmul fast float %5439, %5438
  %5441 = fsub fast float 1.000000e+00, %5440
  br label %5442

; <label>:5442                                    ; preds = %5371, %5083, %5048, %5044, %5010
  %5443 = phi float [ 1.000000e+00, %5010 ], [ %5441, %5371 ], [ 1.000000e+00, %5048 ], [ 1.000000e+00, %5083 ], [ 1.000000e+00, %5044 ]
  %5444 = fcmp fast ogt float %5040, 0.000000e+00
  br i1 %5444, label %5445, label %5607, !dx.controlflow.hints !133

; <label>:5445                                    ; preds = %5442
  %5446 = fadd fast float %4953, %4927
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 3
  %5450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.f32 %5450, 2
  %5452 = call float @dx.op.binary.f32(i32 35, float %5446, float 0.000000e+00)  ; FMax(a,b)
  %5453 = fadd fast float %5452, 0x3F10000000000000
  %5454 = fcmp fast oeq float %5451, 0.000000e+00
  br i1 %5454, label %5455, label %5522

; <label>:5455                                    ; preds = %5445
  %5456 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5457 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5458 = fmul fast float %5457, %4942
  %5459 = fmul fast float %5456, %4943
  %5460 = fadd fast float %5458, 5.000000e-01
  %5461 = call float @dx.op.unary.f32(i32 27, float %5460)  ; Round_ni(value)
  %5462 = fadd fast float %5459, 5.000000e-01
  %5463 = call float @dx.op.unary.f32(i32 27, float %5462)  ; Round_ni(value)
  %5464 = fsub fast float %5460, %5461
  %5465 = fsub fast float %5462, %5463
  %5466 = fadd fast float %5461, -5.000000e-01
  %5467 = fadd fast float %5463, -5.000000e-01
  %5468 = fmul fast float %5464, 2.000000e+00
  %5469 = fsub fast float 3.000000e+00, %5468
  %5470 = fadd fast float %5468, 1.000000e+00
  %5471 = fsub fast float 2.000000e+00, %5464
  %5472 = bitcast float %5469 to i32
  %5473 = sub nsw i32 2129859010, %5472
  %5474 = bitcast i32 %5473 to float
  %5475 = fmul fast float %5474, %5471
  %5476 = fadd fast float %5475, -1.000000e+00
  %5477 = bitcast float %5470 to i32
  %5478 = sub nsw i32 2129859010, %5477
  %5479 = bitcast i32 %5478 to float
  %5480 = fmul fast float %5479, %5464
  %5481 = fadd fast float %5480, 1.000000e+00
  %5482 = fmul fast float %5465, 2.000000e+00
  %5483 = fsub fast float 3.000000e+00, %5482
  %5484 = fadd fast float %5482, 1.000000e+00
  %5485 = fsub fast float 2.000000e+00, %5465
  %5486 = bitcast float %5483 to i32
  %5487 = sub nsw i32 2129859010, %5486
  %5488 = bitcast i32 %5487 to float
  %5489 = fmul fast float %5488, %5485
  %5490 = fadd fast float %5489, -1.000000e+00
  %5491 = bitcast float %5484 to i32
  %5492 = sub nsw i32 2129859010, %5491
  %5493 = bitcast i32 %5492 to float
  %5494 = fmul fast float %5493, %5465
  %5495 = fadd fast float %5494, 1.000000e+00
  %5496 = fadd fast float %5476, %5466
  %5497 = fmul fast float %5496, %5448
  %5498 = fadd fast float %5490, %5467
  %5499 = fmul fast float %5498, %5449
  %5500 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %5497, float %5499, float undef, float undef, i32 0, i32 0, i32 undef, float %5453)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5501 = extractvalue %dx.types.ResRet.f32 %5500, 0
  %5502 = fmul fast float %5501, %5469
  %5503 = fadd fast float %5481, %5466
  %5504 = fmul fast float %5503, %5448
  %5505 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %5504, float %5499, float undef, float undef, i32 0, i32 0, i32 undef, float %5453)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5506 = extractvalue %dx.types.ResRet.f32 %5505, 0
  %5507 = fmul fast float %5506, %5470
  %5508 = fadd fast float %5495, %5467
  %5509 = fmul fast float %5508, %5449
  %5510 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %5497, float %5509, float undef, float undef, i32 0, i32 0, i32 undef, float %5453)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5511 = extractvalue %dx.types.ResRet.f32 %5510, 0
  %5512 = fmul fast float %5511, %5469
  %5513 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %5504, float %5509, float undef, float undef, i32 0, i32 0, i32 undef, float %5453)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5514 = extractvalue %dx.types.ResRet.f32 %5513, 0
  %5515 = fmul fast float %5514, %5470
  %5516 = fadd fast float %5515, %5512
  %5517 = fmul fast float %5516, %5484
  %5518 = fadd fast float %5507, %5502
  %5519 = fmul fast float %5518, %5483
  %5520 = fadd fast float %5519, %5517
  %5521 = fmul fast float %5520, 6.250000e-02
  br label %5607

; <label>:5522                                    ; preds = %5445
  %5523 = fmul fast float %254, 0x401921FB60000000
  %5524 = call float @dx.op.unary.f32(i32 13, float %5523)  ; Sin(value)
  %5525 = call float @dx.op.unary.f32(i32 12, float %5523)  ; Cos(value)
  %5526 = fsub fast float -0.000000e+00, %5524
  br label %5527

; <label>:5527                                    ; preds = %5576, %5522
  %5528 = phi float [ 0.000000e+00, %5522 ], [ %5571, %5576 ]
  %5529 = phi float [ 0.000000e+00, %5522 ], [ %5573, %5576 ]
  %5530 = phi i32 [ 0, %5522 ], [ %5577, %5576 ]
  %5531 = mul i32 %5530, 2
  %5532 = add i32 0, %5531
  %5533 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5532
  %5534 = load float, float* %5533, align 4
  %5535 = mul i32 %5530, 2
  %5536 = add i32 1, %5535
  %5537 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5536
  %5538 = load float, float* %5537, align 4
  %5539 = fmul fast float %5534, %5525
  %5540 = call float @dx.op.tertiary.f32(i32 46, float %5538, float %5526, float %5539)  ; FMad(a,b,c)
  %5541 = fmul fast float %5534, %5524
  %5542 = call float @dx.op.tertiary.f32(i32 46, float %5538, float %5525, float %5541)  ; FMad(a,b,c)
  %5543 = fmul fast float %5540, %5451
  %5544 = fmul fast float %5542, %5451
  %5545 = fadd fast float %5543, %4942
  %5546 = fadd fast float %5544, %4943
  %5547 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %5545, float %5546, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5548 = extractvalue %dx.types.ResRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.ResRet.f32 %5547, 1
  %5550 = extractvalue %dx.types.ResRet.f32 %5547, 2
  %5551 = extractvalue %dx.types.ResRet.f32 %5547, 3
  %5552 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 0
  store float %5548, float* %5552, align 4
  %5553 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 1
  store float %5549, float* %5553, align 4
  %5554 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 2
  store float %5550, float* %5554, align 4
  %5555 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 3
  store float %5551, float* %5555, align 4
  %5556 = fsub fast float %5548, %5453
  %5557 = fcmp fast olt float %5556, 0.000000e+00
  %5558 = select i1 %5557, float 0.000000e+00, float 1.000000e+00
  %5559 = fadd fast float %5558, %5528
  %5560 = fmul fast float %5558, %5556
  %5561 = fadd fast float %5560, %5529
  br label %5562

; <label>:5562                                    ; preds = %5562, %5527
  %5563 = phi i32 [ 1, %5527 ], [ %5574, %5562 ]
  %5564 = phi float [ %5561, %5527 ], [ %5573, %5562 ]
  %5565 = phi float [ %5559, %5527 ], [ %5571, %5562 ]
  %5566 = getelementptr [4 x float], [4 x float]* %98, i32 0, i32 %5563
  %5567 = load float, float* %5566, align 4, !tbaa !134, !noalias !124
  %5568 = fsub fast float %5567, %5453
  %5569 = fcmp fast olt float %5568, 0.000000e+00
  %5570 = select i1 %5569, float 0.000000e+00, float 1.000000e+00
  %5571 = fadd fast float %5570, %5565
  %5572 = fmul fast float %5570, %5568
  %5573 = fadd fast float %5572, %5564
  %5574 = add nuw nsw i32 %5563, 1
  %5575 = icmp eq i32 %5574, 4
  br i1 %5575, label %5576, label %5562, !llvm.loop !136

; <label>:5576                                    ; preds = %5562
  %5577 = add nuw nsw i32 %5530, 1
  %5578 = icmp eq i32 %5577, 8
  br i1 %5578, label %5579, label %5527, !llvm.loop !137

; <label>:5579                                    ; preds = %5576
  %5580 = fdiv fast float 1.000000e+00, %5571
  %5581 = fmul fast float %5580, %5573
  %5582 = fdiv fast float 1.000000e+00, %5453
  %5583 = fmul fast float %5581, %5582
  %5584 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5585 = call float @dx.op.binary.f32(i32 35, float %5584, float 0.000000e+00)  ; FMax(a,b)
  %5586 = fmul fast float %5571, 3.125000e-02
  %5587 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5588 = fmul fast float %5587, 2.000000e+00
  %5589 = fadd fast float %5588, -1.000000e+00
  %5590 = fcmp fast ogt float %5589, 0.000000e+00
  %5591 = fcmp fast olt float %5589, 0.000000e+00
  %5592 = zext i1 %5590 to i32
  %5593 = zext i1 %5591 to i32
  %5594 = sub nsw i32 %5592, %5593
  %5595 = sitofp i32 %5594 to float
  %5596 = fmul fast float %5595, %5589
  %5597 = fsub fast float 1.000000e+00, %5596
  %5598 = fmul fast float %5597, %5597
  %5599 = fmul fast float %5598, %5597
  %5600 = fsub fast float %5597, %5599
  %5601 = fmul fast float %5600, %5585
  %5602 = fsub fast float 1.000000e+00, %5599
  %5603 = fsub fast float %5602, %5601
  %5604 = fmul fast float %5595, 5.000000e-01
  %5605 = fmul fast float %5604, %5603
  %5606 = fsub fast float 5.000000e-01, %5605
  br label %5607

; <label>:5607                                    ; preds = %5579, %5455, %5442
  %5608 = phi float [ 1.000000e+00, %5442 ], [ %5521, %5455 ], [ %5606, %5579 ]
  %5609 = fcmp fast ogt float %5038, 0.000000e+00
  br i1 %5609, label %5610, label %5774, !dx.controlflow.hints !138

; <label>:5610                                    ; preds = %5607
  %5611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5612 = extractvalue %dx.types.CBufRet.f32 %5611, 1
  %5613 = fadd fast float %5612, %4927
  %5614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5615 = extractvalue %dx.types.CBufRet.f32 %5614, 2
  %5616 = extractvalue %dx.types.CBufRet.f32 %5614, 3
  %5617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.f32 %5617, 1
  %5619 = call float @dx.op.binary.f32(i32 35, float %5613, float 0.000000e+00)  ; FMax(a,b)
  %5620 = fadd fast float %5619, 0x3F10000000000000
  %5621 = fcmp fast oeq float %5618, 0.000000e+00
  br i1 %5621, label %5622, label %5689

; <label>:5622                                    ; preds = %5610
  %5623 = extractvalue %dx.types.CBufRet.f32 %5614, 1
  %5624 = extractvalue %dx.types.CBufRet.f32 %5614, 0
  %5625 = fmul fast float %5624, %4934
  %5626 = fmul fast float %5623, %4935
  %5627 = fadd fast float %5625, 5.000000e-01
  %5628 = call float @dx.op.unary.f32(i32 27, float %5627)  ; Round_ni(value)
  %5629 = fadd fast float %5626, 5.000000e-01
  %5630 = call float @dx.op.unary.f32(i32 27, float %5629)  ; Round_ni(value)
  %5631 = fsub fast float %5627, %5628
  %5632 = fsub fast float %5629, %5630
  %5633 = fadd fast float %5628, -5.000000e-01
  %5634 = fadd fast float %5630, -5.000000e-01
  %5635 = fmul fast float %5631, 2.000000e+00
  %5636 = fsub fast float 3.000000e+00, %5635
  %5637 = fadd fast float %5635, 1.000000e+00
  %5638 = fsub fast float 2.000000e+00, %5631
  %5639 = bitcast float %5636 to i32
  %5640 = sub nsw i32 2129859010, %5639
  %5641 = bitcast i32 %5640 to float
  %5642 = fmul fast float %5641, %5638
  %5643 = fadd fast float %5642, -1.000000e+00
  %5644 = bitcast float %5637 to i32
  %5645 = sub nsw i32 2129859010, %5644
  %5646 = bitcast i32 %5645 to float
  %5647 = fmul fast float %5646, %5631
  %5648 = fadd fast float %5647, 1.000000e+00
  %5649 = fmul fast float %5632, 2.000000e+00
  %5650 = fsub fast float 3.000000e+00, %5649
  %5651 = fadd fast float %5649, 1.000000e+00
  %5652 = fsub fast float 2.000000e+00, %5632
  %5653 = bitcast float %5650 to i32
  %5654 = sub nsw i32 2129859010, %5653
  %5655 = bitcast i32 %5654 to float
  %5656 = fmul fast float %5655, %5652
  %5657 = fadd fast float %5656, -1.000000e+00
  %5658 = bitcast float %5651 to i32
  %5659 = sub nsw i32 2129859010, %5658
  %5660 = bitcast i32 %5659 to float
  %5661 = fmul fast float %5660, %5632
  %5662 = fadd fast float %5661, 1.000000e+00
  %5663 = fadd fast float %5643, %5633
  %5664 = fmul fast float %5663, %5615
  %5665 = fadd fast float %5657, %5634
  %5666 = fmul fast float %5665, %5616
  %5667 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5664, float %5666, float undef, float undef, i32 0, i32 0, i32 undef, float %5620)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5668 = extractvalue %dx.types.ResRet.f32 %5667, 0
  %5669 = fmul fast float %5668, %5636
  %5670 = fadd fast float %5648, %5633
  %5671 = fmul fast float %5670, %5615
  %5672 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5671, float %5666, float undef, float undef, i32 0, i32 0, i32 undef, float %5620)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5673 = extractvalue %dx.types.ResRet.f32 %5672, 0
  %5674 = fmul fast float %5673, %5637
  %5675 = fadd fast float %5662, %5634
  %5676 = fmul fast float %5675, %5616
  %5677 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5664, float %5676, float undef, float undef, i32 0, i32 0, i32 undef, float %5620)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5678 = extractvalue %dx.types.ResRet.f32 %5677, 0
  %5679 = fmul fast float %5678, %5636
  %5680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5671, float %5676, float undef, float undef, i32 0, i32 0, i32 undef, float %5620)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5681 = extractvalue %dx.types.ResRet.f32 %5680, 0
  %5682 = fmul fast float %5681, %5637
  %5683 = fadd fast float %5682, %5679
  %5684 = fmul fast float %5683, %5651
  %5685 = fadd fast float %5674, %5669
  %5686 = fmul fast float %5685, %5650
  %5687 = fadd fast float %5686, %5684
  %5688 = fmul fast float %5687, 6.250000e-02
  br label %5774

; <label>:5689                                    ; preds = %5610
  %5690 = fmul fast float %254, 0x401921FB60000000
  %5691 = call float @dx.op.unary.f32(i32 13, float %5690)  ; Sin(value)
  %5692 = call float @dx.op.unary.f32(i32 12, float %5690)  ; Cos(value)
  %5693 = fsub fast float -0.000000e+00, %5691
  br label %5694

; <label>:5694                                    ; preds = %5743, %5689
  %5695 = phi float [ 0.000000e+00, %5689 ], [ %5738, %5743 ]
  %5696 = phi float [ 0.000000e+00, %5689 ], [ %5740, %5743 ]
  %5697 = phi i32 [ 0, %5689 ], [ %5744, %5743 ]
  %5698 = mul i32 %5697, 2
  %5699 = add i32 0, %5698
  %5700 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5699
  %5701 = load float, float* %5700, align 4
  %5702 = mul i32 %5697, 2
  %5703 = add i32 1, %5702
  %5704 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5703
  %5705 = load float, float* %5704, align 4
  %5706 = fmul fast float %5701, %5692
  %5707 = call float @dx.op.tertiary.f32(i32 46, float %5705, float %5693, float %5706)  ; FMad(a,b,c)
  %5708 = fmul fast float %5701, %5691
  %5709 = call float @dx.op.tertiary.f32(i32 46, float %5705, float %5692, float %5708)  ; FMad(a,b,c)
  %5710 = fmul fast float %5707, %5618
  %5711 = fmul fast float %5709, %5618
  %5712 = fadd fast float %5710, %4934
  %5713 = fadd fast float %5711, %4935
  %5714 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %5712, float %5713, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5715 = extractvalue %dx.types.ResRet.f32 %5714, 0
  %5716 = extractvalue %dx.types.ResRet.f32 %5714, 1
  %5717 = extractvalue %dx.types.ResRet.f32 %5714, 2
  %5718 = extractvalue %dx.types.ResRet.f32 %5714, 3
  %5719 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %5715, float* %5719, align 4
  %5720 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %5716, float* %5720, align 4
  %5721 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %5717, float* %5721, align 4
  %5722 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %5718, float* %5722, align 4
  %5723 = fsub fast float %5715, %5620
  %5724 = fcmp fast olt float %5723, 0.000000e+00
  %5725 = select i1 %5724, float 0.000000e+00, float 1.000000e+00
  %5726 = fadd fast float %5725, %5695
  %5727 = fmul fast float %5725, %5723
  %5728 = fadd fast float %5727, %5696
  br label %5729

; <label>:5729                                    ; preds = %5729, %5694
  %5730 = phi i32 [ 1, %5694 ], [ %5741, %5729 ]
  %5731 = phi float [ %5728, %5694 ], [ %5740, %5729 ]
  %5732 = phi float [ %5726, %5694 ], [ %5738, %5729 ]
  %5733 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %5730
  %5734 = load float, float* %5733, align 4, !tbaa !134, !noalias !124
  %5735 = fsub fast float %5734, %5620
  %5736 = fcmp fast olt float %5735, 0.000000e+00
  %5737 = select i1 %5736, float 0.000000e+00, float 1.000000e+00
  %5738 = fadd fast float %5737, %5732
  %5739 = fmul fast float %5737, %5735
  %5740 = fadd fast float %5739, %5731
  %5741 = add nuw nsw i32 %5730, 1
  %5742 = icmp eq i32 %5741, 4
  br i1 %5742, label %5743, label %5729, !llvm.loop !136

; <label>:5743                                    ; preds = %5729
  %5744 = add nuw nsw i32 %5697, 1
  %5745 = icmp eq i32 %5744, 8
  br i1 %5745, label %5746, label %5694, !llvm.loop !137

; <label>:5746                                    ; preds = %5743
  %5747 = fdiv fast float 1.000000e+00, %5738
  %5748 = fmul fast float %5747, %5740
  %5749 = fdiv fast float 1.000000e+00, %5620
  %5750 = fmul fast float %5748, %5749
  %5751 = call float @dx.op.unary.f32(i32 7, float %5750)  ; Saturate(value)
  %5752 = call float @dx.op.binary.f32(i32 35, float %5751, float 0.000000e+00)  ; FMax(a,b)
  %5753 = fmul fast float %5738, 3.125000e-02
  %5754 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5755 = fmul fast float %5754, 2.000000e+00
  %5756 = fadd fast float %5755, -1.000000e+00
  %5757 = fcmp fast ogt float %5756, 0.000000e+00
  %5758 = fcmp fast olt float %5756, 0.000000e+00
  %5759 = zext i1 %5757 to i32
  %5760 = zext i1 %5758 to i32
  %5761 = sub nsw i32 %5759, %5760
  %5762 = sitofp i32 %5761 to float
  %5763 = fmul fast float %5762, %5756
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = fmul fast float %5764, %5764
  %5766 = fmul fast float %5765, %5764
  %5767 = fsub fast float %5764, %5766
  %5768 = fmul fast float %5767, %5752
  %5769 = fsub fast float 1.000000e+00, %5766
  %5770 = fsub fast float %5769, %5768
  %5771 = fmul fast float %5762, 5.000000e-01
  %5772 = fmul fast float %5771, %5770
  %5773 = fsub fast float 5.000000e-01, %5772
  br label %5774

; <label>:5774                                    ; preds = %5746, %5622, %5607
  %5775 = phi float [ 1.000000e+00, %5607 ], [ %5688, %5622 ], [ %5773, %5746 ]
  %5776 = fcmp fast ogt float %5037, 0.000000e+00
  br i1 %5776, label %5777, label %5941, !dx.controlflow.hints !139

; <label>:5777                                    ; preds = %5774
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 0
  %5780 = fadd fast float %5779, %4927
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5783 = extractvalue %dx.types.CBufRet.f32 %5781, 3
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 0
  %5786 = call float @dx.op.binary.f32(i32 35, float %5780, float 0.000000e+00)  ; FMax(a,b)
  %5787 = fadd fast float %5786, 0x3F10000000000000
  %5788 = fcmp fast oeq float %5785, 0.000000e+00
  br i1 %5788, label %5789, label %5856

; <label>:5789                                    ; preds = %5777
  %5790 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5791 = extractvalue %dx.types.CBufRet.f32 %5781, 0
  %5792 = fmul fast float %5791, %4919
  %5793 = fmul fast float %5790, %4923
  %5794 = fadd fast float %5792, 5.000000e-01
  %5795 = call float @dx.op.unary.f32(i32 27, float %5794)  ; Round_ni(value)
  %5796 = fadd fast float %5793, 5.000000e-01
  %5797 = call float @dx.op.unary.f32(i32 27, float %5796)  ; Round_ni(value)
  %5798 = fsub fast float %5794, %5795
  %5799 = fsub fast float %5796, %5797
  %5800 = fadd fast float %5795, -5.000000e-01
  %5801 = fadd fast float %5797, -5.000000e-01
  %5802 = fmul fast float %5798, 2.000000e+00
  %5803 = fsub fast float 3.000000e+00, %5802
  %5804 = fadd fast float %5802, 1.000000e+00
  %5805 = fsub fast float 2.000000e+00, %5798
  %5806 = bitcast float %5803 to i32
  %5807 = sub nsw i32 2129859010, %5806
  %5808 = bitcast i32 %5807 to float
  %5809 = fmul fast float %5808, %5805
  %5810 = fadd fast float %5809, -1.000000e+00
  %5811 = bitcast float %5804 to i32
  %5812 = sub nsw i32 2129859010, %5811
  %5813 = bitcast i32 %5812 to float
  %5814 = fmul fast float %5813, %5798
  %5815 = fadd fast float %5814, 1.000000e+00
  %5816 = fmul fast float %5799, 2.000000e+00
  %5817 = fsub fast float 3.000000e+00, %5816
  %5818 = fadd fast float %5816, 1.000000e+00
  %5819 = fsub fast float 2.000000e+00, %5799
  %5820 = bitcast float %5817 to i32
  %5821 = sub nsw i32 2129859010, %5820
  %5822 = bitcast i32 %5821 to float
  %5823 = fmul fast float %5822, %5819
  %5824 = fadd fast float %5823, -1.000000e+00
  %5825 = bitcast float %5818 to i32
  %5826 = sub nsw i32 2129859010, %5825
  %5827 = bitcast i32 %5826 to float
  %5828 = fmul fast float %5827, %5799
  %5829 = fadd fast float %5828, 1.000000e+00
  %5830 = fadd fast float %5810, %5800
  %5831 = fmul fast float %5830, %5782
  %5832 = fadd fast float %5824, %5801
  %5833 = fmul fast float %5832, %5783
  %5834 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5831, float %5833, float undef, float undef, i32 0, i32 0, i32 undef, float %5787)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5835 = extractvalue %dx.types.ResRet.f32 %5834, 0
  %5836 = fmul fast float %5835, %5803
  %5837 = fadd fast float %5815, %5800
  %5838 = fmul fast float %5837, %5782
  %5839 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5838, float %5833, float undef, float undef, i32 0, i32 0, i32 undef, float %5787)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5840 = extractvalue %dx.types.ResRet.f32 %5839, 0
  %5841 = fmul fast float %5840, %5804
  %5842 = fadd fast float %5829, %5801
  %5843 = fmul fast float %5842, %5783
  %5844 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5831, float %5843, float undef, float undef, i32 0, i32 0, i32 undef, float %5787)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5845 = extractvalue %dx.types.ResRet.f32 %5844, 0
  %5846 = fmul fast float %5845, %5803
  %5847 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5838, float %5843, float undef, float undef, i32 0, i32 0, i32 undef, float %5787)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5848 = extractvalue %dx.types.ResRet.f32 %5847, 0
  %5849 = fmul fast float %5848, %5804
  %5850 = fadd fast float %5849, %5846
  %5851 = fmul fast float %5850, %5818
  %5852 = fadd fast float %5841, %5836
  %5853 = fmul fast float %5852, %5817
  %5854 = fadd fast float %5853, %5851
  %5855 = fmul fast float %5854, 6.250000e-02
  br label %5941

; <label>:5856                                    ; preds = %5777
  %5857 = fmul fast float %254, 0x401921FB60000000
  %5858 = call float @dx.op.unary.f32(i32 13, float %5857)  ; Sin(value)
  %5859 = call float @dx.op.unary.f32(i32 12, float %5857)  ; Cos(value)
  %5860 = fsub fast float -0.000000e+00, %5858
  br label %5861

; <label>:5861                                    ; preds = %5910, %5856
  %5862 = phi float [ 0.000000e+00, %5856 ], [ %5905, %5910 ]
  %5863 = phi float [ 0.000000e+00, %5856 ], [ %5907, %5910 ]
  %5864 = phi i32 [ 0, %5856 ], [ %5911, %5910 ]
  %5865 = mul i32 %5864, 2
  %5866 = add i32 0, %5865
  %5867 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5866
  %5868 = load float, float* %5867, align 4
  %5869 = mul i32 %5864, 2
  %5870 = add i32 1, %5869
  %5871 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5870
  %5872 = load float, float* %5871, align 4
  %5873 = fmul fast float %5868, %5859
  %5874 = call float @dx.op.tertiary.f32(i32 46, float %5872, float %5860, float %5873)  ; FMad(a,b,c)
  %5875 = fmul fast float %5868, %5858
  %5876 = call float @dx.op.tertiary.f32(i32 46, float %5872, float %5859, float %5875)  ; FMad(a,b,c)
  %5877 = fmul fast float %5874, %5785
  %5878 = fmul fast float %5876, %5785
  %5879 = fadd fast float %5877, %4919
  %5880 = fadd fast float %5878, %4923
  %5881 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5879, float %5880, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5882 = extractvalue %dx.types.ResRet.f32 %5881, 0
  %5883 = extractvalue %dx.types.ResRet.f32 %5881, 1
  %5884 = extractvalue %dx.types.ResRet.f32 %5881, 2
  %5885 = extractvalue %dx.types.ResRet.f32 %5881, 3
  %5886 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %5882, float* %5886, align 4
  %5887 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %5883, float* %5887, align 4
  %5888 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %5884, float* %5888, align 4
  %5889 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %5885, float* %5889, align 4
  %5890 = fsub fast float %5882, %5787
  %5891 = fcmp fast olt float %5890, 0.000000e+00
  %5892 = select i1 %5891, float 0.000000e+00, float 1.000000e+00
  %5893 = fadd fast float %5892, %5862
  %5894 = fmul fast float %5892, %5890
  %5895 = fadd fast float %5894, %5863
  br label %5896

; <label>:5896                                    ; preds = %5896, %5861
  %5897 = phi i32 [ 1, %5861 ], [ %5908, %5896 ]
  %5898 = phi float [ %5895, %5861 ], [ %5907, %5896 ]
  %5899 = phi float [ %5893, %5861 ], [ %5905, %5896 ]
  %5900 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %5897
  %5901 = load float, float* %5900, align 4, !tbaa !134, !noalias !124
  %5902 = fsub fast float %5901, %5787
  %5903 = fcmp fast olt float %5902, 0.000000e+00
  %5904 = select i1 %5903, float 0.000000e+00, float 1.000000e+00
  %5905 = fadd fast float %5904, %5899
  %5906 = fmul fast float %5904, %5902
  %5907 = fadd fast float %5906, %5898
  %5908 = add nuw nsw i32 %5897, 1
  %5909 = icmp eq i32 %5908, 4
  br i1 %5909, label %5910, label %5896, !llvm.loop !136

; <label>:5910                                    ; preds = %5896
  %5911 = add nuw nsw i32 %5864, 1
  %5912 = icmp eq i32 %5911, 8
  br i1 %5912, label %5913, label %5861, !llvm.loop !137

; <label>:5913                                    ; preds = %5910
  %5914 = fdiv fast float 1.000000e+00, %5905
  %5915 = fmul fast float %5914, %5907
  %5916 = fdiv fast float 1.000000e+00, %5787
  %5917 = fmul fast float %5915, %5916
  %5918 = call float @dx.op.unary.f32(i32 7, float %5917)  ; Saturate(value)
  %5919 = call float @dx.op.binary.f32(i32 35, float %5918, float 0.000000e+00)  ; FMax(a,b)
  %5920 = fmul fast float %5905, 3.125000e-02
  %5921 = call float @dx.op.unary.f32(i32 7, float %5920)  ; Saturate(value)
  %5922 = fmul fast float %5921, 2.000000e+00
  %5923 = fadd fast float %5922, -1.000000e+00
  %5924 = fcmp fast ogt float %5923, 0.000000e+00
  %5925 = fcmp fast olt float %5923, 0.000000e+00
  %5926 = zext i1 %5924 to i32
  %5927 = zext i1 %5925 to i32
  %5928 = sub nsw i32 %5926, %5927
  %5929 = sitofp i32 %5928 to float
  %5930 = fmul fast float %5929, %5923
  %5931 = fsub fast float 1.000000e+00, %5930
  %5932 = fmul fast float %5931, %5931
  %5933 = fmul fast float %5932, %5931
  %5934 = fsub fast float %5931, %5933
  %5935 = fmul fast float %5934, %5919
  %5936 = fsub fast float 1.000000e+00, %5933
  %5937 = fsub fast float %5936, %5935
  %5938 = fmul fast float %5929, 5.000000e-01
  %5939 = fmul fast float %5938, %5937
  %5940 = fsub fast float 5.000000e-01, %5939
  br label %5941

; <label>:5941                                    ; preds = %5913, %5789, %5774
  %5942 = phi float [ 1.000000e+00, %5774 ], [ %5855, %5789 ], [ %5940, %5913 ]
  %5943 = fsub fast float %5608, %5443
  %5944 = fmul fast float %5943, %4981
  %5945 = fadd fast float %5944, %5443
  %5946 = fsub fast float %5775, %5945
  %5947 = fmul fast float %5946, %5011
  %5948 = fadd fast float %5947, %5945
  %5949 = fsub fast float %5942, %5948
  %5950 = fmul fast float %5949, %5037
  %5951 = fadd fast float %5950, %5948
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 2
  %5954 = fcmp fast ogt float %5953, 0.000000e+00
  br i1 %5954, label %5955, label %5995, !dx.controlflow.hints !140

; <label>:5955                                    ; preds = %5941
  %5956 = fcmp fast ugt float %5953, 0.000000e+00
  br i1 %5956, label %5957, label %5992

; <label>:5957                                    ; preds = %5955
  %5958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.CBufRet.f32 %5958, 1
  %5961 = extractvalue %dx.types.CBufRet.f32 %5958, 2
  %5962 = extractvalue %dx.types.CBufRet.f32 %5958, 3
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.CBufRet.f32 %5963, 1
  %5966 = extractvalue %dx.types.CBufRet.f32 %5963, 2
  %5967 = extractvalue %dx.types.CBufRet.f32 %5963, 3
  %5968 = extractvalue %dx.types.CBufRet.f32 %5952, 0
  %5969 = extractvalue %dx.types.CBufRet.f32 %5952, 1
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.CBufRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.CBufRet.f32 %5970, 2
  %5974 = fadd fast float %5971, %4896
  %5975 = fadd fast float %5972, %4897
  %5976 = fadd fast float %5973, %4898
  %5977 = fmul fast float %5974, %5959
  %5978 = call float @dx.op.tertiary.f32(i32 46, float %5960, float %5975, float %5977)  ; FMad(a,b,c)
  %5979 = call float @dx.op.tertiary.f32(i32 46, float %5961, float %5976, float %5978)  ; FMad(a,b,c)
  %5980 = fadd fast float %5979, %5962
  %5981 = fmul fast float %5974, %5964
  %5982 = call float @dx.op.tertiary.f32(i32 46, float %5965, float %5975, float %5981)  ; FMad(a,b,c)
  %5983 = call float @dx.op.tertiary.f32(i32 46, float %5966, float %5976, float %5982)  ; FMad(a,b,c)
  %5984 = fadd fast float %5983, %5967
  %5985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5980, float %5984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = fmul fast float %5986, %5969
  %5988 = fadd fast float %5987, %5968
  %5989 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5990 = fmul fast float %5989, %5953
  %5991 = fsub fast float 1.000000e+00, %5990
  br label %5992

; <label>:5992                                    ; preds = %5957, %5955
  %5993 = phi float [ %5991, %5957 ], [ 1.000000e+00, %5955 ]
  %5994 = fmul fast float %5993, %5951
  br label %5995

; <label>:5995                                    ; preds = %5992, %5941, %4876
  %5996 = phi float [ 1.000000e+00, %4876 ], [ %5994, %5992 ], [ %5951, %5941 ]
  %5997 = call float @dx.op.binary.f32(i32 36, float %5996, float %5996)  ; FMin(a,b)
  %5998 = call float @dx.op.binary.f32(i32 36, float %5996, float %5997)  ; FMin(a,b)
  %5999 = fcmp fast ogt float %5998, 0.000000e+00
  br i1 %5999, label %6000, label %6165, !dx.controlflow.hints !141

; <label>:6000                                    ; preds = %5995
  %6001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.CBufRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.CBufRet.f32 %6001, 2
  %6005 = extractvalue %dx.types.CBufRet.f32 %6001, 3
  %6006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6007 = extractvalue %dx.types.CBufRet.f32 %6006, 0
  %6008 = extractvalue %dx.types.CBufRet.f32 %6006, 1
  %6009 = extractvalue %dx.types.CBufRet.f32 %6006, 2
  %6010 = extractvalue %dx.types.CBufRet.f32 %6006, 3
  %6011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.CBufRet.f32 %6011, 1
  %6014 = extractvalue %dx.types.CBufRet.f32 %6011, 2
  %6015 = extractvalue %dx.types.CBufRet.f32 %6011, 3
  %6016 = fmul fast float %6002, %4896
  %6017 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %6003, float %6016)  ; FMad(a,b,c)
  %6018 = call float @dx.op.tertiary.f32(i32 46, float %4898, float %6004, float %6017)  ; FMad(a,b,c)
  %6019 = fadd fast float %6018, %6005
  %6020 = fmul fast float %6007, %4896
  %6021 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %6008, float %6020)  ; FMad(a,b,c)
  %6022 = call float @dx.op.tertiary.f32(i32 46, float %4898, float %6009, float %6021)  ; FMad(a,b,c)
  %6023 = fadd fast float %6022, %6010
  %6024 = fmul fast float %6012, %4896
  %6025 = call float @dx.op.tertiary.f32(i32 46, float %4897, float %6013, float %6024)  ; FMad(a,b,c)
  %6026 = call float @dx.op.tertiary.f32(i32 46, float %4898, float %6014, float %6025)  ; FMad(a,b,c)
  %6027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.f32 %6027, 0
  %6029 = extractvalue %dx.types.CBufRet.f32 %6027, 1
  %6030 = extractvalue %dx.types.CBufRet.f32 %6027, 3
  %6031 = fmul fast float %6030, %6019
  %6032 = fmul fast float %6030, %6023
  %6033 = fadd fast float %6031, %6028
  %6034 = fadd fast float %6032, %6029
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6037 = extractvalue %dx.types.CBufRet.f32 %6035, 1
  %6038 = fsub fast float %6033, %6036
  %6039 = fsub fast float %6034, %6037
  %6040 = fcmp fast olt float %6038, 0.000000e+00
  %6041 = fcmp fast olt float %6039, 0.000000e+00
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.CBufRet.f32 %6042, 1
  %6045 = extractvalue %dx.types.CBufRet.f32 %6042, 2
  %6046 = extractvalue %dx.types.CBufRet.f32 %6042, 3
  %6047 = select i1 %6040, float %6043, float %6045
  %6048 = select i1 %6041, float %6044, float %6046
  %6049 = fmul fast float %6047, %6038
  %6050 = fmul fast float %6048, %6039
  %6051 = call float @dx.op.unary.f32(i32 6, float %6049)  ; FAbs(value)
  %6052 = call float @dx.op.unary.f32(i32 6, float %6050)  ; FAbs(value)
  %6053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.f32 %6053, 0
  %6055 = call float @dx.op.binary.f32(i32 35, float %6051, float %6052)  ; FMax(a,b)
  %6056 = fsub fast float %6054, %6055
  %6057 = call float @dx.op.unary.f32(i32 7, float %6056)  ; Saturate(value)
  %6058 = fcmp fast ogt float %6057, 0.000000e+00
  br i1 %6058, label %6059, label %6100, !dx.controlflow.hints !142

; <label>:6059                                    ; preds = %6000
  %6060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %6033, float %6034, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6061 = extractvalue %dx.types.ResRet.f32 %6060, 1
  %6062 = fcmp fast ogt float %6061, 0.000000e+00
  br i1 %6062, label %6063, label %6095

; <label>:6063                                    ; preds = %6059
  %6064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %6033, float %6034, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6065 = extractvalue %dx.types.ResRet.f32 %6064, 0
  %6066 = extractvalue %dx.types.ResRet.f32 %6064, 1
  %6067 = extractvalue %dx.types.ResRet.f32 %6064, 2
  %6068 = extractvalue %dx.types.ResRet.f32 %6064, 3
  %6069 = fsub fast float 1.000000e+00, %6015
  %6070 = fsub fast float %6069, %6026
  %6071 = fmul fast float %6070, 0x400921FB60000000
  %6072 = fadd fast float %6071, 0x3FF921FB60000000
  %6073 = call float @dx.op.unary.f32(i32 13, float %6072)  ; Sin(value)
  %6074 = fadd fast float %6073, -1.000000e+00
  %6075 = fmul fast float %6074, 0x3FD45F3060000000
  %6076 = fmul fast float %6070, 0x401921FB60000000
  %6077 = fadd fast float %6076, 0x400921FB60000000
  %6078 = call float @dx.op.unary.f32(i32 13, float %6077)  ; Sin(value)
  %6079 = fadd fast float %6078, 0x3E7777A5C0000000
  %6080 = fmul fast float %6079, 0x3FC45F3060000000
  %6081 = fmul fast float %6070, 0x4022D97C80000000
  %6082 = fadd fast float %6081, 0x4012D97C80000000
  %6083 = call float @dx.op.unary.f32(i32 13, float %6082)  ; Sin(value)
  %6084 = fadd fast float %6083, 1.000000e+00
  %6085 = fmul fast float %6084, 0x3FBB2995E0000000
  %6086 = fmul fast float %6070, 0x402921FB60000000
  %6087 = fadd fast float %6086, 0x401921FB60000000
  %6088 = call float @dx.op.unary.f32(i32 13, float %6087)  ; Sin(value)
  %6089 = fadd fast float %6088, 0xBE8777A5C0000000
  %6090 = fmul fast float %6089, 0x3FB45F3060000000
  %6091 = call float @dx.op.dot4.f32(i32 56, float %6065, float %6066, float %6067, float %6068, float %6075, float %6080, float %6085, float %6090)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6092 = fmul fast float %6091, 0xBFF7154760000000
  %6093 = call float @dx.op.unary.f32(i32 21, float %6092)  ; Exp(value)
  %6094 = call float @dx.op.unary.f32(i32 7, float %6093)  ; Saturate(value)
  br label %6095

; <label>:6095                                    ; preds = %6063, %6059
  %6096 = phi float [ %6094, %6063 ], [ 1.000000e+00, %6059 ]
  %6097 = fadd fast float %6096, -1.000000e+00
  %6098 = fmul fast float %6097, %6057
  %6099 = fadd fast float %6098, 1.000000e+00
  br label %6100

; <label>:6100                                    ; preds = %6095, %6000
  %6101 = phi float [ %6099, %6095 ], [ 1.000000e+00, %6000 ]
  %6102 = fmul fast float %6101, %5996
  %6103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6104 = extractvalue %dx.types.CBufRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.CBufRet.f32 %6103, 1
  %6106 = extractvalue %dx.types.CBufRet.f32 %6103, 2
  %6107 = fadd fast float %6104, %152
  %6108 = fadd fast float %6105, %153
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 1
  %6111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6111, 0
  %6113 = extractvalue %dx.types.CBufRet.f32 %6111, 1
  %6114 = extractvalue %dx.types.CBufRet.f32 %6111, 2
  %6115 = fsub fast float -0.000000e+00, %6107
  %6116 = fsub fast float -0.000000e+00, %6108
  %6117 = fsub fast float %2996, %6106
  %6118 = fadd fast float %6117, %6110
  %6119 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6115, float %6116, float %6118)  ; Dot3(ax,ay,az,bx,by,bz)
  %6120 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6112, float %6113, float %6114)  ; Dot3(ax,ay,az,bx,by,bz)
  %6121 = fdiv fast float 1.000000e+00, %6120
  %6122 = fmul fast float %6121, %6119
  %6123 = fmul fast float %6112, %6122
  %6124 = fmul fast float %6113, %6122
  %6125 = fadd fast float %6123, %6107
  %6126 = fadd fast float %6124, %6108
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = extractvalue %dx.types.CBufRet.f32 %6127, 1
  %6130 = fsub fast float %6125, %6128
  %6131 = fsub fast float %6126, %6129
  %6132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6132, 2
  %6134 = extractvalue %dx.types.CBufRet.f32 %6132, 3
  %6135 = fmul fast float %6130, %6133
  %6136 = fmul fast float %6131, %6134
  %6137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.i32 %6137, 3
  %6139 = icmp eq i32 %6138, 0
  br i1 %6139, label %6145, label %6140

; <label>:6140                                    ; preds = %6100
  %6141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %6135, float %6136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6142 = extractvalue %dx.types.ResRet.f32 %6141, 0
  %6143 = extractvalue %dx.types.ResRet.f32 %6141, 1
  %6144 = extractvalue %dx.types.ResRet.f32 %6141, 2
  br label %6150

; <label>:6145                                    ; preds = %6100
  %6146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %6135, float %6136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6147 = extractvalue %dx.types.ResRet.f32 %6146, 0
  %6148 = extractvalue %dx.types.ResRet.f32 %6146, 1
  %6149 = extractvalue %dx.types.ResRet.f32 %6146, 2
  br label %6150

; <label>:6150                                    ; preds = %6145, %6140
  %6151 = phi float [ %6142, %6140 ], [ %6147, %6145 ]
  %6152 = phi float [ %6143, %6140 ], [ %6148, %6145 ]
  %6153 = phi float [ %6144, %6140 ], [ %6149, %6145 ]
  %6154 = extractvalue %dx.types.CBufRet.f32 %6109, 2
  %6155 = fmul fast float %6154, %6151
  %6156 = extractvalue %dx.types.CBufRet.f32 %6109, 0
  %6157 = fsub fast float %6122, %6156
  %6158 = fsub fast float %6157, %6155
  %6159 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6158)  ; FMax(a,b)
  %6160 = fmul fast float %6159, %6152
  %6161 = call float @dx.op.binary.f32(i32 36, float %6153, float %6160)  ; FMin(a,b)
  %6162 = fmul fast float %6161, 0xBFF7154760000000
  %6163 = call float @dx.op.unary.f32(i32 21, float %6162)  ; Exp(value)
  %6164 = fmul fast float %6102, %6163
  br label %6165

; <label>:6165                                    ; preds = %6150, %5995
  %6166 = phi float [ %6164, %6150 ], [ %5996, %5995 ]
  %6167 = call float @dx.op.binary.f32(i32 36, float %6166, float %6166)  ; FMin(a,b)
  %6168 = call float @dx.op.binary.f32(i32 36, float %6166, float %6167)  ; FMin(a,b)
  %6169 = fcmp fast ogt float %6168, 0.000000e+00
  br i1 %6169, label %6170, label %6417, !dx.controlflow.hints !143

; <label>:6170                                    ; preds = %6165
  %6171 = fmul fast float %6166, %4888
  %6172 = fmul fast float %6166, %4889
  %6173 = fmul fast float %6166, %4890
  %6174 = fsub fast float %154, %2784
  %6175 = fcmp fast ogt float %6174, 0.000000e+00
  %6176 = fmul fast float %4877, 5.120000e+02
  %6177 = fmul fast float %4878, 5.120000e+02
  %6178 = fmul fast float %4879, 5.120000e+02
  %6179 = fadd fast float %6178, %154
  %6180 = fsub fast float %2784, %6179
  %6181 = fmul fast float %6180, 2.000000e+00
  %6182 = fadd fast float %6181, %6179
  %6183 = select i1 %6175, float %6182, float %6179
  %6184 = fsub fast float %6183, %154
  %6185 = call float @dx.op.dot3.f32(i32 55, float %6176, float %6177, float %6184, float %6176, float %6177, float %6184)  ; Dot3(ax,ay,az,bx,by,bz)
  %6186 = call float @dx.op.unary.f32(i32 25, float %6185)  ; Rsqrt(value)
  %6187 = fmul fast float %6186, %6176
  %6188 = fmul fast float %6186, %6177
  %6189 = fmul fast float %6186, %6184
  %6190 = fsub fast float %2784, %154
  %6191 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6190)  ; Dot3(ax,ay,az,bx,by,bz)
  %6192 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6187, float %6188, float %6189)  ; Dot3(ax,ay,az,bx,by,bz)
  %6193 = fdiv fast float 1.000000e+00, %6192
  %6194 = fmul fast float %6193, %6191
  %6195 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6174, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6196 = fcmp fast ogt float %6195, 0.000000e+00
  %6197 = fcmp fast olt float %6195, 0.000000e+00
  %6198 = zext i1 %6196 to i32
  %6199 = zext i1 %6197 to i32
  %6200 = sub nsw i32 %6198, %6199
  %6201 = sitofp i32 %6200 to float
  %6202 = fsub fast float %6183, %2784
  %6203 = call float @dx.op.dot3.f32(i32 55, float %6176, float %6177, float %6202, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6204 = fcmp fast ogt float %6203, 0.000000e+00
  %6205 = fcmp fast olt float %6203, 0.000000e+00
  %6206 = zext i1 %6204 to i32
  %6207 = zext i1 %6205 to i32
  %6208 = sub nsw i32 %6206, %6207
  %6209 = sitofp i32 %6208 to float
  %6210 = fcmp fast une float %6201, %6209
  br i1 %6210, label %6211, label %6221

; <label>:6211                                    ; preds = %6170
  %6212 = fmul fast float %6194, %6189
  %6213 = fmul fast float %6194, %6188
  %6214 = fmul fast float %6194, %6187
  %6215 = fmul fast float %6214, %6214
  %6216 = fmul fast float %6213, %6213
  %6217 = fadd fast float %6215, %6216
  %6218 = fmul fast float %6212, %6212
  %6219 = fadd fast float %6217, %6218
  %6220 = call float @dx.op.unary.f32(i32 24, float %6219)  ; Sqrt(value)
  br label %6231

; <label>:6221                                    ; preds = %6170
  %6222 = icmp slt i32 %6200, 0
  br i1 %6222, label %6223, label %6231

; <label>:6223                                    ; preds = %6221
  %6224 = fsub fast float %154, %6183
  %6225 = fmul fast float %6176, %6176
  %6226 = fmul fast float %6177, %6177
  %6227 = fadd fast float %6225, %6226
  %6228 = fmul fast float %6224, %6224
  %6229 = fadd fast float %6227, %6228
  %6230 = call float @dx.op.unary.f32(i32 24, float %6229)  ; Sqrt(value)
  br label %6231

; <label>:6231                                    ; preds = %6223, %6221, %6211
  %6232 = phi float [ %6220, %6211 ], [ %6230, %6223 ], [ 0.000000e+00, %6221 ]
  %6233 = fsub fast float -0.000000e+00, %6232
  %6234 = select i1 %6175, float -0.000000e+00, float %6233
  %6235 = fmul fast float %2785, 0x3FF7154760000000
  %6236 = fmul fast float %6235, %6234
  %6237 = fmul fast float %2786, 0x3FF7154760000000
  %6238 = fmul fast float %6237, %6234
  %6239 = fmul fast float %2787, 0x3FF7154760000000
  %6240 = fmul fast float %6239, %6234
  %6241 = call float @dx.op.unary.f32(i32 21, float %6236)  ; Exp(value)
  %6242 = call float @dx.op.unary.f32(i32 21, float %6238)  ; Exp(value)
  %6243 = call float @dx.op.unary.f32(i32 21, float %6240)  ; Exp(value)
  %6244 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6245 = call float @dx.op.unary.f32(i32 7, float %6242)  ; Saturate(value)
  %6246 = call float @dx.op.unary.f32(i32 7, float %6243)  ; Saturate(value)
  %6247 = fmul fast float %6171, %6244
  %6248 = fmul fast float %6172, %6245
  %6249 = fmul fast float %6173, %6246
  %6250 = fsub fast float %4877, %2984
  %6251 = fsub fast float %4878, %2983
  %6252 = fsub fast float %4879, %2982
  %6253 = call float @dx.op.dot3.f32(i32 55, float %6250, float %6251, float %6252, float %6250, float %6251, float %6252)  ; Dot3(ax,ay,az,bx,by,bz)
  %6254 = call float @dx.op.unary.f32(i32 25, float %6253)  ; Rsqrt(value)
  %6255 = fmul fast float %6254, %6250
  %6256 = fmul fast float %6254, %6251
  %6257 = fmul fast float %6254, %6252
  %6258 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %4879, float %2985, float %2986, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %6259 = call float @dx.op.dot3.f32(i32 55, float %2981, float %2980, float %2979, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %6260 = call float @dx.op.unary.f32(i32 7, float %6258)  ; Saturate(value)
  %6261 = fmul fast float %6260, %6260
  %6262 = fmul fast float %6261, %4872
  %6263 = call float @dx.op.unary.f32(i32 7, float %6262)  ; Saturate(value)
  %6264 = fmul fast float %6263, %6260
  %6265 = call float @dx.op.dot3.f32(i32 55, float %2985, float %2986, float %2987, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %6266 = fmul fast float %6265, %6265
  %6267 = call float @dx.op.unary.f32(i32 6, float %6258)  ; FAbs(value)
  %6268 = fsub fast float 1.000000e+00, %3017
  %6269 = fmul fast float %2999, %2999
  %6270 = fmul fast float %6269, %6268
  %6271 = fadd fast float %6270, %3017
  %6272 = bitcast float %6271 to i32
  %6273 = ashr i32 %6272, 1
  %6274 = add nsw i32 %6273, 532487669
  %6275 = bitcast i32 %6274 to float
  %6276 = fadd fast float %6275, %2999
  %6277 = fmul fast float %3017, %6266
  %6278 = fsub fast float 1.000000e+00, %6266
  %6279 = fadd fast float %6278, %6277
  %6280 = fmul fast float %6267, %6267
  %6281 = fmul fast float %6280, %6268
  %6282 = fadd fast float %6281, %3017
  %6283 = bitcast float %6282 to i32
  %6284 = ashr i32 %6283, 1
  %6285 = add nsw i32 %6284, 532487669
  %6286 = bitcast i32 %6285 to float
  %6287 = fadd fast float %6286, %6267
  %6288 = fmul fast float %6279, %6279
  %6289 = fmul fast float %6288, %6276
  %6290 = fmul fast float %6289, %6287
  %6291 = fdiv fast float 0x3FF0A00000000000, %6290
  %6292 = fmul fast float %6291, %3017
  %6293 = call float @dx.op.unary.f32(i32 6, float %6259)  ; FAbs(value)
  %6294 = fsub fast float 1.000000e+00, %6293
  %6295 = bitcast float %6294 to i32
  %6296 = sitofp i32 %6295 to float
  %6297 = fmul fast float %6296, 5.000000e+00
  %6298 = fadd fast float %6297, 0xC1EFBF8940000000
  %6299 = fptosi float %6298 to i32
  %6300 = bitcast i32 %6299 to float
  %6301 = fsub fast float 1.000000e+00, %2991
  %6302 = fsub fast float 1.000000e+00, %2992
  %6303 = fsub fast float 1.000000e+00, %2997
  %6304 = fmul fast float %6300, %6301
  %6305 = fmul fast float %6300, %6302
  %6306 = fmul fast float %6300, %6303
  %6307 = fadd fast float %6304, %2991
  %6308 = fadd fast float %6305, %2992
  %6309 = fadd fast float %6306, %2997
  br i1 %4295, label %6310, label %6333

; <label>:6310                                    ; preds = %6231
  %6311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %2362, float %6293, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6312 = extractvalue %dx.types.ResRet.f32 %6311, 0
  %6313 = extractvalue %dx.types.ResRet.f32 %6311, 1
  %6314 = extractvalue %dx.types.ResRet.f32 %6311, 2
  %6315 = fadd fast float %6312, -5.000000e-01
  %6316 = fadd fast float %6313, -5.000000e-01
  %6317 = fadd fast float %6314, -5.000000e-01
  %6318 = fmul fast float %2991, 4.000000e+00
  %6319 = fmul fast float %6318, %6301
  %6320 = fmul fast float %6319, %6315
  %6321 = fmul fast float %2992, 4.000000e+00
  %6322 = fmul fast float %6321, %6302
  %6323 = fmul fast float %6322, %6316
  %6324 = fmul fast float %2997, 4.000000e+00
  %6325 = fmul fast float %6324, %6303
  %6326 = fmul fast float %6325, %6317
  %6327 = fadd fast float %6320, %6307
  %6328 = fadd fast float %6323, %6308
  %6329 = fadd fast float %6326, %6309
  %6330 = call float @dx.op.unary.f32(i32 7, float %6327)  ; Saturate(value)
  %6331 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  %6332 = call float @dx.op.unary.f32(i32 7, float %6329)  ; Saturate(value)
  br label %6333

; <label>:6333                                    ; preds = %6310, %6231
  %6334 = phi float [ %6330, %6310 ], [ %6307, %6231 ]
  %6335 = phi float [ %6331, %6310 ], [ %6308, %6231 ]
  %6336 = phi float [ %6332, %6310 ], [ %6309, %6231 ]
  %6337 = fmul fast float %6258, 9.843750e-01
  %6338 = fadd fast float %6337, 7.812500e-03
  %6339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6338, float %4285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6340 = extractvalue %dx.types.ResRet.f32 %6339, 2
  %6341 = extractvalue %dx.types.ResRet.f32 %6339, 3
  %6342 = fmul fast float %6340, %2991
  %6343 = fmul fast float %6340, %2992
  %6344 = fmul fast float %6340, %2997
  %6345 = fadd fast float %6342, %6341
  %6346 = fadd fast float %6343, %6341
  %6347 = fadd fast float %6344, %6341
  br i1 %4295, label %6348, label %6371

; <label>:6348                                    ; preds = %6333
  %6349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %2362, float %6258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6350 = extractvalue %dx.types.ResRet.f32 %6349, 0
  %6351 = extractvalue %dx.types.ResRet.f32 %6349, 1
  %6352 = extractvalue %dx.types.ResRet.f32 %6349, 2
  %6353 = fadd fast float %6350, -5.000000e-01
  %6354 = fadd fast float %6351, -5.000000e-01
  %6355 = fadd fast float %6352, -5.000000e-01
  %6356 = fmul fast float %2991, 4.000000e+00
  %6357 = fmul fast float %6356, %6301
  %6358 = fmul fast float %6357, %6353
  %6359 = fmul fast float %2992, 4.000000e+00
  %6360 = fmul fast float %6359, %6302
  %6361 = fmul fast float %6360, %6354
  %6362 = fmul fast float %2997, 4.000000e+00
  %6363 = fmul fast float %6362, %6303
  %6364 = fmul fast float %6363, %6355
  %6365 = fadd fast float %6358, %6345
  %6366 = fadd fast float %6361, %6346
  %6367 = fadd fast float %6364, %6347
  %6368 = call float @dx.op.unary.f32(i32 7, float %6365)  ; Saturate(value)
  %6369 = call float @dx.op.unary.f32(i32 7, float %6366)  ; Saturate(value)
  %6370 = call float @dx.op.unary.f32(i32 7, float %6367)  ; Saturate(value)
  br label %6371

; <label>:6371                                    ; preds = %6348, %6333
  %6372 = phi float [ %6368, %6348 ], [ %6345, %6333 ]
  %6373 = phi float [ %6369, %6348 ], [ %6346, %6333 ]
  %6374 = phi float [ %6370, %6348 ], [ %6347, %6333 ]
  %6375 = call float @dx.op.binary.f32(i32 35, float %6373, float %6374)  ; FMax(a,b)
  %6376 = call float @dx.op.binary.f32(i32 35, float %6372, float %6375)  ; FMax(a,b)
  %6377 = fsub fast float 1.000000e+00, %6376
  %6378 = fmul fast float %6334, %6292
  %6379 = fmul fast float %6335, %6292
  %6380 = fmul fast float %6336, %6292
  %6381 = fsub fast float 1.000000e+00, %6259
  %6382 = bitcast float %6381 to i32
  %6383 = sitofp i32 %6382 to float
  %6384 = fmul fast float %6383, 5.000000e+00
  %6385 = fadd fast float %6384, 0xC1EFBF8940000000
  %6386 = fptosi float %6385 to i32
  %6387 = bitcast i32 %6386 to float
  %6388 = fmul fast float %6387, %2361
  %6389 = fmul fast float %6377, %6388
  %6390 = fmul fast float %6389, %4837
  %6391 = fmul fast float %6389, %4838
  %6392 = fmul fast float %6389, %4839
  %6393 = fadd fast float %6390, %6378
  %6394 = fadd fast float %6391, %6379
  %6395 = fadd fast float %6392, %6380
  %6396 = fmul fast float %6264, %6247
  %6397 = fmul fast float %6396, %6377
  %6398 = fmul fast float %6264, %6248
  %6399 = fmul fast float %6398, %6377
  %6400 = fmul fast float %6264, %6249
  %6401 = fmul fast float %6400, %6377
  %6402 = fmul fast float %6396, %6393
  %6403 = fmul fast float %6398, %6394
  %6404 = fmul fast float %6400, %6395
  %6405 = fadd fast float %6397, %4821
  %6406 = fmul fast float %6405, %2382
  %6407 = fadd fast float %6399, %4822
  %6408 = fmul fast float %6407, %2382
  %6409 = fadd fast float %6401, %4823
  %6410 = fmul fast float %6409, %2382
  %6411 = fadd fast float %6402, %4864
  %6412 = fmul fast float %6411, %2382
  %6413 = fadd fast float %6403, %4867
  %6414 = fmul fast float %6413, %2382
  %6415 = fadd fast float %6404, %4870
  %6416 = fmul fast float %6415, %2382
  br label %6417

; <label>:6417                                    ; preds = %6371, %6165, %4817
  %6418 = phi float [ %4865, %4817 ], [ %4865, %6165 ], [ %6412, %6371 ]
  %6419 = phi float [ %4868, %4817 ], [ %4868, %6165 ], [ %6414, %6371 ]
  %6420 = phi float [ %4871, %4817 ], [ %4871, %6165 ], [ %6416, %6371 ]
  %6421 = phi float [ %4860, %4817 ], [ %4860, %6165 ], [ %6406, %6371 ]
  %6422 = phi float [ %4861, %4817 ], [ %4861, %6165 ], [ %6408, %6371 ]
  %6423 = phi float [ %4862, %4817 ], [ %4862, %6165 ], [ %6410, %6371 ]
  %6424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.i32 %6424, 0
  %6426 = icmp eq i32 %6425, 0
  br i1 %6426, label %7089, label %6427

; <label>:6427                                    ; preds = %6417
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 2
  %6430 = extractvalue %dx.types.CBufRet.f32 %6428, 3
  %6431 = fmul fast float %6429, %105
  %6432 = fmul fast float %6430, %106
  %6433 = fptoui float %6431 to i32
  %6434 = fptoui float %6432 to i32
  %6435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.f32 %6435, 0
  %6437 = extractvalue %dx.types.CBufRet.f32 %6435, 2
  %6438 = extractvalue %dx.types.CBufRet.f32 %6435, 3
  %6439 = fadd fast float %93, -4.000000e+00
  %6440 = call float @dx.op.binary.f32(i32 35, float %6439, float 0.000000e+00)  ; FMax(a,b)
  %6441 = fadd fast float %6440, %6436
  %6442 = fmul fast float %6441, %6437
  %6443 = call float @dx.op.unary.f32(i32 23, float %6442)  ; Log(value)
  %6444 = fmul fast float %6443, %6438
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 2
  %6447 = fmul fast float %6444, %6446
  %6448 = call float @dx.op.unary.f32(i32 7, float %6447)  ; Saturate(value)
  %6449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.i32 %6449, 1
  %6451 = add i32 %6450, -1
  %6452 = uitofp i32 %6450 to float
  %6453 = fmul fast float %6452, %6448
  %6454 = fptoui float %6453 to i32
  %6455 = call i32 @dx.op.binary.i32(i32 40, i32 %6454, i32 %6451)  ; UMin(a,b)
  %6456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.i32 %6456, 2
  %6458 = extractvalue %dx.types.CBufRet.i32 %6456, 3
  %6459 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6434, i32 %6457, i32 %6433)  ; UMad(a,b,c)
  %6460 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6455, i32 %6458, i32 %6459)  ; UMad(a,b,c)
  %6461 = add nsw i32 %6425, -1
  %6462 = call i32 @dx.op.binary.i32(i32 37, i32 %6461, i32 0)  ; IMax(a,b)
  %6463 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %6464 = fptoui float %6463 to i32
  %6465 = lshr i32 %6464, 5
  %6466 = call i32 @dx.op.binary.i32(i32 40, i32 %6465, i32 8191)  ; UMin(a,b)
  %6467 = shl i32 %6466, 2
  %6468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6467, i32 undef)  ; BufferLoad(srv,index,wot)
  %6469 = extractvalue %dx.types.ResRet.i32 %6468, 0
  %6470 = lshr i32 %6469, 16
  %6471 = and i32 %6469, 65535
  %6472 = lshr i32 %6469, 21
  %6473 = lshr i32 %6471, 5
  %6474 = call i32 @dx.op.binary.i32(i32 40, i32 %6473, i32 %6462)  ; UMin(a,b)
  %6475 = icmp ugt i32 %6472, %6474
  br i1 %6475, label %7089, label %6476

; <label>:6476                                    ; preds = %6427
  br label %6477

; <label>:6477                                    ; preds = %7079, %6476
  %6478 = phi i32 [ %7086, %7079 ], [ %6472, %6476 ]
  %6479 = phi float [ %7080, %7079 ], [ %6418, %6476 ]
  %6480 = phi float [ %7081, %7079 ], [ %6419, %6476 ]
  %6481 = phi float [ %7082, %7079 ], [ %6420, %6476 ]
  %6482 = phi float [ %7083, %7079 ], [ %6421, %6476 ]
  %6483 = phi float [ %7084, %7079 ], [ %6422, %6476 ]
  %6484 = phi float [ %7085, %7079 ], [ %6423, %6476 ]
  %6485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.i32 %6485, 0
  %6487 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6460, i32 %6486, i32 %6478)  ; UMad(a,b,c)
  %6488 = shl i32 %6487, 2
  %6489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6488, i32 undef)  ; BufferLoad(srv,index,wot)
  %6490 = extractvalue %dx.types.ResRet.i32 %6489, 0
  %6491 = shl i32 %6478, 5
  %6492 = sub nsw i32 %6470, %6491
  %6493 = call i32 @dx.op.binary.i32(i32 37, i32 %6492, i32 0)  ; IMax(a,b)
  %6494 = call i32 @dx.op.binary.i32(i32 38, i32 %6493, i32 31)  ; IMin(a,b)
  %6495 = sub nsw i32 1, %6470
  %6496 = add nsw i32 %6495, %6471
  %6497 = call i32 @dx.op.binary.i32(i32 37, i32 %6496, i32 0)  ; IMax(a,b)
  %6498 = call i32 @dx.op.binary.i32(i32 38, i32 %6497, i32 32)  ; IMin(a,b)
  %6499 = and i32 %6498, 31
  %6500 = shl i32 -1, %6499
  %6501 = xor i32 %6500, -1
  %6502 = and i32 %6494, 31
  %6503 = shl i32 %6501, %6502
  %6504 = icmp eq i32 %6498, 32
  %6505 = select i1 %6504, i32 -1, i32 %6503
  %6506 = and i32 %6505, %6490
  %6507 = icmp eq i32 %6506, 0
  br i1 %6507, label %7079, label %6508

; <label>:6508                                    ; preds = %6477
  br label %6509

; <label>:6509                                    ; preds = %6643, %6508
  %6510 = phi i32 [ %6521, %6643 ], [ %6506, %6508 ]
  %6511 = phi float [ %6644, %6643 ], [ %6479, %6508 ]
  %6512 = phi float [ %6645, %6643 ], [ %6480, %6508 ]
  %6513 = phi float [ %6646, %6643 ], [ %6481, %6508 ]
  %6514 = phi float [ %6647, %6643 ], [ %6482, %6508 ]
  %6515 = phi float [ %6648, %6643 ], [ %6483, %6508 ]
  %6516 = phi float [ %6649, %6643 ], [ %6484, %6508 ]
  %6517 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6510)  ; FirstbitLo(value)
  %6518 = add i32 %6517, %6491
  %6519 = and i32 %6517, 31
  %6520 = shl i32 1, %6519
  %6521 = xor i32 %6520, %6510
  %6522 = mul i32 %6518, 112
  %6523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6522, i32 undef)  ; BufferLoad(srv,index,wot)
  %6524 = extractvalue %dx.types.ResRet.f32 %6523, 0
  %6525 = extractvalue %dx.types.ResRet.f32 %6523, 1
  %6526 = extractvalue %dx.types.ResRet.f32 %6523, 2
  %6527 = or i32 %6522, 12
  %6528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6527, i32 undef)  ; BufferLoad(srv,index,wot)
  %6529 = extractvalue %dx.types.ResRet.f32 %6528, 0
  %6530 = add i32 %6522, 16
  %6531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6530, i32 undef)  ; BufferLoad(srv,index,wot)
  %6532 = extractvalue %dx.types.ResRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.ResRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.ResRet.f32 %6531, 2
  %6535 = add i32 %6522, 28
  %6536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6535, i32 undef)  ; BufferLoad(srv,index,wot)
  %6537 = extractvalue %dx.types.ResRet.i32 %6536, 0
  %6538 = add i32 %6522, 44
  %6539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6538, i32 undef)  ; BufferLoad(srv,index,wot)
  %6540 = extractvalue %dx.types.ResRet.f32 %6539, 0
  %6541 = add i32 %6522, 48
  %6542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6541, i32 undef)  ; BufferLoad(srv,index,wot)
  %6543 = extractvalue %dx.types.ResRet.f32 %6542, 0
  %6544 = extractvalue %dx.types.ResRet.f32 %6542, 1
  %6545 = extractvalue %dx.types.ResRet.f32 %6542, 2
  %6546 = extractvalue %dx.types.ResRet.f32 %6542, 3
  %6547 = add i32 %6522, 64
  %6548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6547, i32 undef)  ; BufferLoad(srv,index,wot)
  %6549 = extractvalue %dx.types.ResRet.f32 %6548, 0
  %6550 = extractvalue %dx.types.ResRet.f32 %6548, 1
  %6551 = extractvalue %dx.types.ResRet.f32 %6548, 2
  %6552 = extractvalue %dx.types.ResRet.f32 %6548, 3
  %6553 = add i32 %6522, 80
  %6554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6553, i32 undef)  ; BufferLoad(srv,index,wot)
  %6555 = extractvalue %dx.types.ResRet.f32 %6554, 1
  %6556 = extractvalue %dx.types.ResRet.f32 %6554, 2
  %6557 = add i32 %6522, 92
  %6558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6557, i32 undef)  ; BufferLoad(srv,index,wot)
  %6559 = extractvalue %dx.types.ResRet.i32 %6558, 0
  %6560 = call float @dx.op.dot3.f32(i32 55, float %6524, float %6525, float %6526, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6561 = select i1 %243, float %6555, float %6524
  %6562 = select i1 %243, float %6560, float %6525
  %6563 = select i1 %243, float %6556, float %6526
  %6564 = and i32 %6559, 65535
  %6565 = uitofp i32 %6564 to float
  %6566 = lshr i32 %6559, 16
  %6567 = uitofp i32 %6566 to float
  %6568 = and i32 %6537, 65535
  %6569 = and i32 %6537, 50331648
  %6570 = icmp eq i32 %6569, 33554432
  %6571 = fsub fast float %6543, %152
  %6572 = fsub fast float %6544, %153
  %6573 = fsub fast float %6545, %154
  %6574 = call float @dx.op.dot3.f32(i32 55, float %6571, float %6572, float %6573, float %6571, float %6572, float %6573)  ; Dot3(ax,ay,az,bx,by,bz)
  %6575 = call float @dx.op.unary.f32(i32 24, float %6574)  ; Sqrt(value)
  %6576 = fdiv fast float 1.000000e+00, %6575
  %6577 = fmul fast float %6576, %6571
  %6578 = fmul fast float %6576, %6572
  %6579 = fmul fast float %6576, %6573
  %6580 = fadd fast float %6575, %6529
  %6581 = fdiv fast float 1.000000e+00, %6580
  %6582 = fmul float %6540, %6581
  %6583 = fmul float %6582, %6582
  %6584 = call float @dx.op.unary.f32(i32 7, float %6583)  ; Saturate(value)
  br i1 %6570, label %6585, label %6606

; <label>:6585                                    ; preds = %6509
  %6586 = fmul fast float %6551, %6532
  %6587 = fmul fast float %6551, %6533
  %6588 = fmul fast float %6551, %6534
  %6589 = fadd fast float %6571, %6586
  %6590 = fadd fast float %6572, %6587
  %6591 = fadd fast float %6573, %6588
  %6592 = call float @dx.op.dot3.f32(i32 55, float %6589, float %6590, float %6591, float %6589, float %6590, float %6591)  ; Dot3(ax,ay,az,bx,by,bz)
  %6593 = call float @dx.op.unary.f32(i32 25, float %6592)  ; Rsqrt(value)
  %6594 = fmul fast float %6593, %6589
  %6595 = fmul fast float %6593, %6590
  %6596 = fmul fast float %6593, %6591
  %6597 = fsub fast float %152, %6543
  %6598 = fsub fast float %153, %6544
  %6599 = fsub fast float %154, %6545
  %6600 = fsub fast float -0.000000e+00, %6597
  %6601 = fsub fast float -0.000000e+00, %6598
  %6602 = fsub fast float -0.000000e+00, %6599
  %6603 = call float @dx.op.dot3.f32(i32 55, float %6600, float %6601, float %6602, float %6532, float %6533, float %6534)  ; Dot3(ax,ay,az,bx,by,bz)
  %6604 = fcmp fast ogt float %6603, 0.000000e+00
  %6605 = uitofp i1 %6604 to float
  br label %6606

; <label>:6606                                    ; preds = %6585, %6509
  %6607 = phi float [ %6605, %6585 ], [ 1.000000e+00, %6509 ]
  %6608 = phi float [ %6594, %6585 ], [ %6577, %6509 ]
  %6609 = phi float [ %6595, %6585 ], [ %6578, %6509 ]
  %6610 = phi float [ %6596, %6585 ], [ %6579, %6509 ]
  %6611 = call float @dx.op.dot3.f32(i32 55, float %6532, float %6533, float %6534, float %6608, float %6609, float %6610)  ; Dot3(ax,ay,az,bx,by,bz)
  %6612 = fmul fast float %6611, %6611
  %6613 = call float @dx.op.unary.f32(i32 7, float %6612)  ; Saturate(value)
  %6614 = fsub fast float 1.000000e+00, %6613
  %6615 = fmul fast float %6614, 5.000000e-01
  %6616 = fcmp fast ogt float %6611, 0.000000e+00
  %6617 = fsub fast float 1.000000e+00, %6615
  %6618 = select i1 %6616, float %6615, float %6617
  %6619 = fmul fast float %6618, %6567
  %6620 = fadd fast float %6619, %6565
  %6621 = fmul fast float %6620, 0x3EF0001000000000
  %6622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %6621, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6623 = extractvalue %dx.types.ResRet.f32 %6622, 0
  %6624 = fmul fast float %6611, %6549
  %6625 = fadd fast float %6624, %6550
  %6626 = call float @dx.op.unary.f32(i32 7, float %6625)  ; Saturate(value)
  %6627 = select i1 %6570, float 1.000000e+00, float %6626
  %6628 = select i1 %6570, float %6626, float 1.000000e+00
  %6629 = fmul fast float %6575, %6546
  %6630 = fsub fast float 1.000000e+00, %6629
  %6631 = fmul fast float %6630, %6552
  %6632 = call float @dx.op.unary.f32(i32 7, float %6631)  ; Saturate(value)
  %6633 = fmul fast float %6632, %6628
  %6634 = fmul fast float %6633, 2.000000e+00
  %6635 = fsub fast float 3.000000e+00, %6634
  %6636 = fmul fast float %6623, %6607
  %6637 = fmul fast float %6633, %6633
  %6638 = fmul fast float %6637, %6636
  %6639 = fmul fast float %6638, %6635
  %6640 = call float @dx.op.binary.f32(i32 36, float %6639, float %6639)  ; FMin(a,b)
  %6641 = call float @dx.op.binary.f32(i32 36, float %6639, float %6640)  ; FMin(a,b)
  %6642 = fcmp fast ogt float %6641, 0.000000e+00
  br i1 %6642, label %6651, label %6643, !dx.controlflow.hints !144

; <label>:6643                                    ; preds = %7035, %6797, %6606
  %6644 = phi float [ %6511, %6797 ], [ %6511, %6606 ], [ %7075, %7035 ]
  %6645 = phi float [ %6512, %6797 ], [ %6512, %6606 ], [ %7076, %7035 ]
  %6646 = phi float [ %6513, %6797 ], [ %6513, %6606 ], [ %7077, %7035 ]
  %6647 = phi float [ %6514, %6797 ], [ %6514, %6606 ], [ %7069, %7035 ]
  %6648 = phi float [ %6515, %6797 ], [ %6515, %6606 ], [ %7070, %7035 ]
  %6649 = phi float [ %6516, %6797 ], [ %6516, %6606 ], [ %7071, %7035 ]
  %6650 = icmp eq i32 %6510, %6520
  br i1 %6650, label %7078, label %6509

; <label>:6651                                    ; preds = %6606
  %6652 = icmp eq i32 %6568, 255
  br i1 %6652, label %6797, label %6653, !dx.controlflow.hints !145

; <label>:6653                                    ; preds = %6651
  %6654 = mul nuw nsw i32 %6568, 176
  %6655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6654, i32 undef)  ; BufferLoad(srv,index,wot)
  %6656 = extractvalue %dx.types.ResRet.f32 %6655, 0
  %6657 = extractvalue %dx.types.ResRet.f32 %6655, 1
  %6658 = extractvalue %dx.types.ResRet.f32 %6655, 2
  %6659 = extractvalue %dx.types.ResRet.f32 %6655, 3
  %6660 = add nuw nsw i32 %6654, 16
  %6661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6660, i32 undef)  ; BufferLoad(srv,index,wot)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  %6663 = extractvalue %dx.types.ResRet.f32 %6661, 1
  %6664 = add nuw nsw i32 %6654, 32
  %6665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6664, i32 undef)  ; BufferLoad(srv,index,wot)
  %6666 = extractvalue %dx.types.ResRet.f32 %6665, 0
  %6667 = extractvalue %dx.types.ResRet.f32 %6665, 1
  %6668 = extractvalue %dx.types.ResRet.f32 %6665, 2
  %6669 = add nuw nsw i32 %6654, 48
  %6670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6669, i32 undef)  ; BufferLoad(srv,index,wot)
  %6671 = extractvalue %dx.types.ResRet.f32 %6670, 0
  %6672 = extractvalue %dx.types.ResRet.f32 %6670, 1
  %6673 = extractvalue %dx.types.ResRet.f32 %6670, 2
  %6674 = extractvalue %dx.types.ResRet.f32 %6670, 3
  %6675 = add nuw nsw i32 %6654, 64
  %6676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6675, i32 undef)  ; BufferLoad(srv,index,wot)
  %6677 = extractvalue %dx.types.ResRet.f32 %6676, 0
  %6678 = extractvalue %dx.types.ResRet.f32 %6676, 1
  %6679 = extractvalue %dx.types.ResRet.f32 %6676, 2
  %6680 = extractvalue %dx.types.ResRet.f32 %6676, 3
  %6681 = add nuw nsw i32 %6654, 80
  %6682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6681, i32 undef)  ; BufferLoad(srv,index,wot)
  %6683 = extractvalue %dx.types.ResRet.f32 %6682, 0
  %6684 = extractvalue %dx.types.ResRet.f32 %6682, 1
  %6685 = extractvalue %dx.types.ResRet.f32 %6682, 2
  %6686 = extractvalue %dx.types.ResRet.f32 %6682, 3
  %6687 = add nuw nsw i32 %6654, 96
  %6688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6687, i32 undef)  ; BufferLoad(srv,index,wot)
  %6689 = extractvalue %dx.types.ResRet.f32 %6688, 0
  %6690 = extractvalue %dx.types.ResRet.f32 %6688, 1
  %6691 = extractvalue %dx.types.ResRet.f32 %6688, 2
  %6692 = extractvalue %dx.types.ResRet.f32 %6688, 3
  %6693 = bitcast float %6663 to i32
  %6694 = fmul fast float %6668, %80
  %6695 = fmul fast float %6668, %81
  %6696 = fmul fast float %6668, %82
  %6697 = fadd fast float %6694, %152
  %6698 = fadd fast float %6695, %153
  %6699 = fadd fast float %6696, %154
  %6700 = fmul fast float %6697, %6671
  %6701 = call float @dx.op.tertiary.f32(i32 46, float %6698, float %6677, float %6700)  ; FMad(a,b,c)
  %6702 = call float @dx.op.tertiary.f32(i32 46, float %6699, float %6683, float %6701)  ; FMad(a,b,c)
  %6703 = fadd fast float %6702, %6689
  %6704 = fmul fast float %6697, %6672
  %6705 = call float @dx.op.tertiary.f32(i32 46, float %6698, float %6678, float %6704)  ; FMad(a,b,c)
  %6706 = call float @dx.op.tertiary.f32(i32 46, float %6699, float %6684, float %6705)  ; FMad(a,b,c)
  %6707 = fadd fast float %6706, %6690
  %6708 = fmul fast float %6697, %6673
  %6709 = call float @dx.op.tertiary.f32(i32 46, float %6698, float %6679, float %6708)  ; FMad(a,b,c)
  %6710 = call float @dx.op.tertiary.f32(i32 46, float %6699, float %6685, float %6709)  ; FMad(a,b,c)
  %6711 = fadd fast float %6710, %6691
  %6712 = fmul fast float %6697, %6674
  %6713 = call float @dx.op.tertiary.f32(i32 46, float %6698, float %6680, float %6712)  ; FMad(a,b,c)
  %6714 = call float @dx.op.tertiary.f32(i32 46, float %6699, float %6686, float %6713)  ; FMad(a,b,c)
  %6715 = fadd fast float %6714, %6692
  %6716 = fdiv fast float %6703, %6715
  %6717 = fdiv fast float %6707, %6715
  %6718 = fdiv fast float %6711, %6715
  %6719 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6718)  ; FMax(a,b)
  %6720 = fmul fast float %254, 0x401921FB60000000
  %6721 = call float @dx.op.unary.f32(i32 13, float %6720)  ; Sin(value)
  %6722 = call float @dx.op.unary.f32(i32 12, float %6720)  ; Cos(value)
  %6723 = fmul fast float %6722, %6667
  %6724 = call float @dx.op.tertiary.f32(i32 46, float %6721, float %6667, float 0.000000e+00)  ; FMad(a,b,c)
  %6725 = fmul fast float %6667, %6721
  %6726 = fsub fast float -0.000000e+00, %6725
  %6727 = call float @dx.op.tertiary.f32(i32 46, float %6722, float %6667, float 0.000000e+00)  ; FMad(a,b,c)
  br label %6728

; <label>:6728                                    ; preds = %6728, %6653
  %6729 = phi float [ 0.000000e+00, %6653 ], [ %6761, %6728 ]
  %6730 = phi float [ 0.000000e+00, %6653 ], [ %6763, %6728 ]
  %6731 = phi i32 [ 0, %6653 ], [ %6764, %6728 ]
  %6732 = mul i32 %6731, 2
  %6733 = add i32 0, %6732
  %6734 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6733
  %6735 = load float, float* %6734, align 4
  %6736 = mul i32 %6731, 2
  %6737 = add i32 1, %6736
  %6738 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6737
  %6739 = load float, float* %6738, align 4
  %6740 = fmul fast float %6723, %6735
  %6741 = call float @dx.op.tertiary.f32(i32 46, float %6739, float %6726, float %6740)  ; FMad(a,b,c)
  %6742 = fmul fast float %6735, %6724
  %6743 = call float @dx.op.tertiary.f32(i32 46, float %6739, float %6727, float %6742)  ; FMad(a,b,c)
  %6744 = fadd fast float %6741, %6716
  %6745 = fadd fast float %6743, %6717
  %6746 = fmul fast float %6744, %6662
  %6747 = fmul fast float %6745, %6662
  %6748 = call float @dx.op.binary.f32(i32 35, float %6746, float %6658)  ; FMax(a,b)
  %6749 = call float @dx.op.binary.f32(i32 35, float %6747, float %6658)  ; FMax(a,b)
  %6750 = call float @dx.op.binary.f32(i32 36, float %6748, float %6659)  ; FMin(a,b)
  %6751 = call float @dx.op.binary.f32(i32 36, float %6749, float %6659)  ; FMin(a,b)
  %6752 = fadd fast float %6750, %6656
  %6753 = fadd fast float %6751, %6657
  %6754 = uitofp i32 %6693 to float
  %6755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %6752, float %6753, float %6754, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6756 = extractvalue %dx.types.ResRet.f32 %6755, 0
  %6757 = fsub fast float %6756, %6719
  %6758 = fsub fast float %6757, %6666
  %6759 = fcmp fast ogt float %6758, 0.000000e+00
  %6760 = select i1 %6759, float 1.000000e+00, float 0.000000e+00
  %6761 = fadd fast float %6760, %6729
  %6762 = select i1 %6759, float %6758, float 0.000000e+00
  %6763 = fadd fast float %6762, %6730
  %6764 = add nuw nsw i32 %6731, 1
  %6765 = icmp eq i32 %6764, 8
  br i1 %6765, label %6766, label %6728

; <label>:6766                                    ; preds = %6728
  %6767 = fdiv fast float 1.000000e+00, %6761
  %6768 = fmul fast float %6767, %6763
  %6769 = fdiv fast float 1.000000e+00, %6719
  %6770 = fmul fast float %6768, %6769
  %6771 = call float @dx.op.unary.f32(i32 7, float %6770)  ; Saturate(value)
  %6772 = call float @dx.op.binary.f32(i32 35, float %6771, float 0.000000e+00)  ; FMax(a,b)
  %6773 = fmul fast float %6761, 1.250000e-01
  %6774 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6775 = fmul fast float %6774, 2.000000e+00
  %6776 = fadd fast float %6775, -1.000000e+00
  %6777 = fcmp fast ogt float %6776, 0.000000e+00
  %6778 = fcmp fast olt float %6776, 0.000000e+00
  %6779 = zext i1 %6777 to i32
  %6780 = zext i1 %6778 to i32
  %6781 = sub nsw i32 %6779, %6780
  %6782 = sitofp i32 %6781 to float
  %6783 = fmul fast float %6782, %6776
  %6784 = fsub fast float 1.000000e+00, %6783
  %6785 = fmul fast float %6784, %6784
  %6786 = fmul fast float %6785, %6784
  %6787 = fsub fast float %6784, %6786
  %6788 = fmul fast float %6787, %6772
  %6789 = fsub fast float 1.000000e+00, %6786
  %6790 = fsub fast float %6789, %6788
  %6791 = fmul fast float %6782, 5.000000e-01
  %6792 = fmul fast float %6791, %6790
  %6793 = fsub fast float -5.000000e-01, %6792
  %6794 = fmul fast float %6793, %6627
  %6795 = fadd fast float %6794, 1.000000e+00
  %6796 = fmul fast float %6795, %6639
  br label %6797

; <label>:6797                                    ; preds = %6766, %6651
  %6798 = phi float [ %6796, %6766 ], [ %6639, %6651 ]
  %6799 = call float @dx.op.binary.f32(i32 36, float %6798, float %6798)  ; FMin(a,b)
  %6800 = call float @dx.op.binary.f32(i32 36, float %6798, float %6799)  ; FMin(a,b)
  %6801 = fcmp fast ogt float %6800, 0.000000e+00
  br i1 %6801, label %6802, label %6643, !dx.controlflow.hints !146

; <label>:6802                                    ; preds = %6797
  %6803 = fmul fast float %6798, %6561
  %6804 = fmul fast float %6798, %6562
  %6805 = fmul fast float %6798, %6563
  %6806 = fsub fast float %6545, %2784
  %6807 = fcmp fast ogt float %6806, 0.000000e+00
  %6808 = fsub fast float %154, %2784
  %6809 = fcmp fast ogt float %6808, 0.000000e+00
  %6810 = xor i1 %6809, %6807
  %6811 = fsub fast float %2784, %6545
  %6812 = fmul fast float %6811, 2.000000e+00
  %6813 = fadd fast float %6812, %6545
  %6814 = select i1 %6810, float %6545, float %6813
  %6815 = fsub fast float %6814, %154
  %6816 = call float @dx.op.dot3.f32(i32 55, float %6571, float %6572, float %6815, float %6571, float %6572, float %6815)  ; Dot3(ax,ay,az,bx,by,bz)
  %6817 = call float @dx.op.unary.f32(i32 25, float %6816)  ; Rsqrt(value)
  %6818 = fmul fast float %6817, %6571
  %6819 = fmul fast float %6817, %6572
  %6820 = fmul fast float %6817, %6815
  %6821 = fsub fast float %2784, %154
  %6822 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6821)  ; Dot3(ax,ay,az,bx,by,bz)
  %6823 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6818, float %6819, float %6820)  ; Dot3(ax,ay,az,bx,by,bz)
  %6824 = fdiv fast float 1.000000e+00, %6823
  %6825 = fmul fast float %6824, %6822
  %6826 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6808, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6827 = fcmp fast ogt float %6826, 0.000000e+00
  %6828 = fcmp fast olt float %6826, 0.000000e+00
  %6829 = zext i1 %6827 to i32
  %6830 = zext i1 %6828 to i32
  %6831 = sub nsw i32 %6829, %6830
  %6832 = sitofp i32 %6831 to float
  %6833 = fsub fast float %6814, %2784
  %6834 = call float @dx.op.dot3.f32(i32 55, float %6571, float %6572, float %6833, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6835 = fcmp fast ogt float %6834, 0.000000e+00
  %6836 = fcmp fast olt float %6834, 0.000000e+00
  %6837 = zext i1 %6835 to i32
  %6838 = zext i1 %6836 to i32
  %6839 = sub nsw i32 %6837, %6838
  %6840 = sitofp i32 %6839 to float
  %6841 = fcmp fast une float %6832, %6840
  br i1 %6841, label %6842, label %6852

; <label>:6842                                    ; preds = %6802
  %6843 = fmul fast float %6825, %6820
  %6844 = fmul fast float %6825, %6819
  %6845 = fmul fast float %6825, %6818
  %6846 = fmul fast float %6845, %6845
  %6847 = fmul fast float %6844, %6844
  %6848 = fadd fast float %6846, %6847
  %6849 = fmul fast float %6843, %6843
  %6850 = fadd fast float %6848, %6849
  %6851 = call float @dx.op.unary.f32(i32 24, float %6850)  ; Sqrt(value)
  br label %6864

; <label>:6852                                    ; preds = %6802
  %6853 = icmp slt i32 %6831, 0
  br i1 %6853, label %6854, label %6864

; <label>:6854                                    ; preds = %6852
  %6855 = fsub fast float %152, %6543
  %6856 = fsub fast float %153, %6544
  %6857 = fsub fast float %154, %6814
  %6858 = fmul fast float %6855, %6855
  %6859 = fmul fast float %6856, %6856
  %6860 = fadd fast float %6858, %6859
  %6861 = fmul fast float %6857, %6857
  %6862 = fadd fast float %6860, %6861
  %6863 = call float @dx.op.unary.f32(i32 24, float %6862)  ; Sqrt(value)
  br label %6864

; <label>:6864                                    ; preds = %6854, %6852, %6842
  %6865 = phi float [ %6851, %6842 ], [ %6863, %6854 ], [ 0.000000e+00, %6852 ]
  %6866 = and i1 %6809, %6807
  %6867 = fsub fast float -0.000000e+00, %6865
  %6868 = select i1 %6866, float -0.000000e+00, float %6867
  %6869 = fmul fast float %2785, 0x3FF7154760000000
  %6870 = fmul fast float %6869, %6868
  %6871 = fmul fast float %2786, 0x3FF7154760000000
  %6872 = fmul fast float %6871, %6868
  %6873 = fmul fast float %2787, 0x3FF7154760000000
  %6874 = fmul fast float %6873, %6868
  %6875 = call float @dx.op.unary.f32(i32 21, float %6870)  ; Exp(value)
  %6876 = call float @dx.op.unary.f32(i32 21, float %6872)  ; Exp(value)
  %6877 = call float @dx.op.unary.f32(i32 21, float %6874)  ; Exp(value)
  %6878 = call float @dx.op.unary.f32(i32 7, float %6875)  ; Saturate(value)
  %6879 = call float @dx.op.unary.f32(i32 7, float %6876)  ; Saturate(value)
  %6880 = call float @dx.op.unary.f32(i32 7, float %6877)  ; Saturate(value)
  %6881 = fmul fast float %6803, %6878
  %6882 = fmul fast float %6804, %6879
  %6883 = fmul fast float %6805, %6880
  %6884 = fsub fast float %6577, %2984
  %6885 = fsub fast float %6578, %2983
  %6886 = fsub fast float %6579, %2982
  %6887 = call float @dx.op.dot3.f32(i32 55, float %6884, float %6885, float %6886, float %6884, float %6885, float %6886)  ; Dot3(ax,ay,az,bx,by,bz)
  %6888 = call float @dx.op.unary.f32(i32 25, float %6887)  ; Rsqrt(value)
  %6889 = fmul fast float %6888, %6884
  %6890 = fmul fast float %6888, %6885
  %6891 = fmul fast float %6888, %6886
  %6892 = call float @dx.op.dot3.f32(i32 55, float %6577, float %6578, float %6579, float %2985, float %2986, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %6893 = call float @dx.op.dot3.f32(i32 55, float %2981, float %2980, float %2979, float %6889, float %6890, float %6891)  ; Dot3(ax,ay,az,bx,by,bz)
  %6894 = call float @dx.op.unary.f32(i32 7, float %6892)  ; Saturate(value)
  %6895 = fmul fast float %6894, %6584
  %6896 = fmul fast float %6894, %6894
  %6897 = fmul fast float %6896, %4872
  %6898 = call float @dx.op.unary.f32(i32 7, float %6897)  ; Saturate(value)
  %6899 = fmul fast float %6895, %6898
  %6900 = bitcast float %6574 to i32
  %6901 = ashr i32 %6900, 1
  %6902 = sub nsw i32 1597463007, %6901
  %6903 = bitcast i32 %6902 to float
  %6904 = fmul fast float %6903, %6571
  %6905 = fmul fast float %6903, %6572
  %6906 = fmul fast float %6903, %6573
  %6907 = fsub fast float %6904, %2984
  %6908 = fsub fast float %6905, %2983
  %6909 = fsub fast float %6906, %2982
  %6910 = call float @dx.op.dot3.f32(i32 55, float %6907, float %6908, float %6909, float %6907, float %6908, float %6909)  ; Dot3(ax,ay,az,bx,by,bz)
  %6911 = call float @dx.op.unary.f32(i32 25, float %6910)  ; Rsqrt(value)
  %6912 = fmul fast float %6907, %6911
  %6913 = fmul fast float %6908, %6911
  %6914 = fmul fast float %6909, %6911
  %6915 = call float @dx.op.dot3.f32(i32 55, float %2985, float %2986, float %2987, float %6912, float %6913, float %6914)  ; Dot3(ax,ay,az,bx,by,bz)
  %6916 = fmul fast float %6915, %6915
  %6917 = call float @dx.op.unary.f32(i32 6, float %6892)  ; FAbs(value)
  %6918 = fsub fast float 1.000000e+00, %3017
  %6919 = fmul fast float %2999, %2999
  %6920 = fmul fast float %6919, %6918
  %6921 = fadd fast float %6920, %3017
  %6922 = bitcast float %6921 to i32
  %6923 = ashr i32 %6922, 1
  %6924 = add nsw i32 %6923, 532487669
  %6925 = bitcast i32 %6924 to float
  %6926 = fadd fast float %6925, %2999
  %6927 = fmul fast float %3017, %6916
  %6928 = fsub fast float 1.000000e+00, %6916
  %6929 = fadd fast float %6928, %6927
  %6930 = fmul fast float %6917, %6917
  %6931 = fmul fast float %6930, %6918
  %6932 = fadd fast float %6931, %3017
  %6933 = bitcast float %6932 to i32
  %6934 = ashr i32 %6933, 1
  %6935 = add nsw i32 %6934, 532487669
  %6936 = bitcast i32 %6935 to float
  %6937 = fadd fast float %6936, %6917
  %6938 = fmul fast float %6929, %6929
  %6939 = fmul fast float %6938, %6926
  %6940 = fmul fast float %6939, %6937
  %6941 = fdiv fast float 1.000000e+00, %6940
  %6942 = bitcast float %3017 to i32
  %6943 = sitofp i32 %6942 to float
  %6944 = fmul fast float %6943, 0x3FE7F73180000000
  %6945 = fadd fast float %6944, 0x41AFE27C40000000
  %6946 = fptosi float %6945 to i32
  %6947 = bitcast i32 %6946 to float
  %6948 = fmul fast float %6540, 0x3FD80E9D60000000
  %6949 = fmul fast float %6948, %6903
  %6950 = fadd fast float %6947, %6949
  %6951 = bitcast float %6950 to i32
  %6952 = sub nsw i32 2129859010, %6951
  %6953 = bitcast i32 %6952 to float
  %6954 = fmul fast float %3017, %6941
  %6955 = fmul fast float %6954, %6947
  %6956 = fmul fast float %6955, %6953
  %6957 = call float @dx.op.unary.f32(i32 6, float %6893)  ; FAbs(value)
  %6958 = fsub fast float 1.000000e+00, %6957
  %6959 = bitcast float %6958 to i32
  %6960 = sitofp i32 %6959 to float
  %6961 = fmul fast float %6960, 5.000000e+00
  %6962 = fadd fast float %6961, 0xC1EFBF8940000000
  %6963 = fptosi float %6962 to i32
  %6964 = bitcast i32 %6963 to float
  %6965 = fsub fast float 1.000000e+00, %2991
  %6966 = fsub fast float 1.000000e+00, %2992
  %6967 = fsub fast float 1.000000e+00, %2997
  %6968 = fmul fast float %6964, %6965
  %6969 = fmul fast float %6964, %6966
  %6970 = fmul fast float %6964, %6967
  %6971 = fadd fast float %6968, %2991
  %6972 = fadd fast float %6969, %2992
  %6973 = fadd fast float %6970, %2997
  br i1 %4295, label %6974, label %6997

; <label>:6974                                    ; preds = %6864
  %6975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %2362, float %6957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6976 = extractvalue %dx.types.ResRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.ResRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.ResRet.f32 %6975, 2
  %6979 = fadd fast float %6976, -5.000000e-01
  %6980 = fadd fast float %6977, -5.000000e-01
  %6981 = fadd fast float %6978, -5.000000e-01
  %6982 = fmul fast float %2991, 4.000000e+00
  %6983 = fmul fast float %6982, %6965
  %6984 = fmul fast float %6983, %6979
  %6985 = fmul fast float %2992, 4.000000e+00
  %6986 = fmul fast float %6985, %6966
  %6987 = fmul fast float %6986, %6980
  %6988 = fmul fast float %2997, 4.000000e+00
  %6989 = fmul fast float %6988, %6967
  %6990 = fmul fast float %6989, %6981
  %6991 = fadd fast float %6984, %6971
  %6992 = fadd fast float %6987, %6972
  %6993 = fadd fast float %6990, %6973
  %6994 = call float @dx.op.unary.f32(i32 7, float %6991)  ; Saturate(value)
  %6995 = call float @dx.op.unary.f32(i32 7, float %6992)  ; Saturate(value)
  %6996 = call float @dx.op.unary.f32(i32 7, float %6993)  ; Saturate(value)
  br label %6997

; <label>:6997                                    ; preds = %6974, %6864
  %6998 = phi float [ %6994, %6974 ], [ %6971, %6864 ]
  %6999 = phi float [ %6995, %6974 ], [ %6972, %6864 ]
  %7000 = phi float [ %6996, %6974 ], [ %6973, %6864 ]
  %7001 = fmul fast float %6892, 9.843750e-01
  %7002 = fadd fast float %7001, 7.812500e-03
  %7003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %7002, float %4285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7004 = extractvalue %dx.types.ResRet.f32 %7003, 2
  %7005 = extractvalue %dx.types.ResRet.f32 %7003, 3
  %7006 = fmul fast float %7004, %2991
  %7007 = fmul fast float %7004, %2992
  %7008 = fmul fast float %7004, %2997
  %7009 = fadd fast float %7006, %7005
  %7010 = fadd fast float %7007, %7005
  %7011 = fadd fast float %7008, %7005
  br i1 %4295, label %7012, label %7035

; <label>:7012                                    ; preds = %6997
  %7013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %2362, float %6892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7014 = extractvalue %dx.types.ResRet.f32 %7013, 0
  %7015 = extractvalue %dx.types.ResRet.f32 %7013, 1
  %7016 = extractvalue %dx.types.ResRet.f32 %7013, 2
  %7017 = fadd fast float %7014, -5.000000e-01
  %7018 = fadd fast float %7015, -5.000000e-01
  %7019 = fadd fast float %7016, -5.000000e-01
  %7020 = fmul fast float %2991, 4.000000e+00
  %7021 = fmul fast float %7020, %6965
  %7022 = fmul fast float %7021, %7017
  %7023 = fmul fast float %2992, 4.000000e+00
  %7024 = fmul fast float %7023, %6966
  %7025 = fmul fast float %7024, %7018
  %7026 = fmul fast float %2997, 4.000000e+00
  %7027 = fmul fast float %7026, %6967
  %7028 = fmul fast float %7027, %7019
  %7029 = fadd fast float %7022, %7009
  %7030 = fadd fast float %7025, %7010
  %7031 = fadd fast float %7028, %7011
  %7032 = call float @dx.op.unary.f32(i32 7, float %7029)  ; Saturate(value)
  %7033 = call float @dx.op.unary.f32(i32 7, float %7030)  ; Saturate(value)
  %7034 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  br label %7035

; <label>:7035                                    ; preds = %7012, %6997
  %7036 = phi float [ %7032, %7012 ], [ %7009, %6997 ]
  %7037 = phi float [ %7033, %7012 ], [ %7010, %6997 ]
  %7038 = phi float [ %7034, %7012 ], [ %7011, %6997 ]
  %7039 = call float @dx.op.binary.f32(i32 35, float %7037, float %7038)  ; FMax(a,b)
  %7040 = call float @dx.op.binary.f32(i32 35, float %7036, float %7039)  ; FMax(a,b)
  %7041 = fsub fast float 1.000000e+00, %7040
  %7042 = fmul fast float %6998, %6956
  %7043 = fmul fast float %6999, %6956
  %7044 = fmul fast float %7000, %6956
  %7045 = fsub fast float 1.000000e+00, %6893
  %7046 = bitcast float %7045 to i32
  %7047 = sitofp i32 %7046 to float
  %7048 = fmul fast float %7047, 5.000000e+00
  %7049 = fadd fast float %7048, 0xC1EFBF8940000000
  %7050 = fptosi float %7049 to i32
  %7051 = bitcast i32 %7050 to float
  %7052 = fmul fast float %7051, %2361
  %7053 = fmul fast float %7041, %7052
  %7054 = fmul fast float %7053, %4837
  %7055 = fmul fast float %7053, %4838
  %7056 = fmul fast float %7053, %4839
  %7057 = fadd fast float %7054, %7042
  %7058 = fadd fast float %7055, %7043
  %7059 = fadd fast float %7056, %7044
  %7060 = fmul fast float %6881, %2382
  %7061 = fmul fast float %7060, %6899
  %7062 = fmul fast float %7061, %7041
  %7063 = fmul fast float %6882, %2382
  %7064 = fmul fast float %7063, %6899
  %7065 = fmul fast float %7064, %7041
  %7066 = fmul fast float %6883, %2382
  %7067 = fmul fast float %7066, %6899
  %7068 = fmul fast float %7067, %7041
  %7069 = fadd fast float %7062, %6514
  %7070 = fadd fast float %7065, %6515
  %7071 = fadd fast float %7068, %6516
  %7072 = fmul fast float %7061, %7057
  %7073 = fmul fast float %7064, %7058
  %7074 = fmul fast float %7067, %7059
  %7075 = fadd fast float %7072, %6511
  %7076 = fadd fast float %7073, %6512
  %7077 = fadd fast float %7074, %6513
  br label %6643

; <label>:7078                                    ; preds = %6643
  br label %7079

; <label>:7079                                    ; preds = %7078, %6477
  %7080 = phi float [ %6479, %6477 ], [ %6644, %7078 ]
  %7081 = phi float [ %6480, %6477 ], [ %6645, %7078 ]
  %7082 = phi float [ %6481, %6477 ], [ %6646, %7078 ]
  %7083 = phi float [ %6482, %6477 ], [ %6647, %7078 ]
  %7084 = phi float [ %6483, %6477 ], [ %6648, %7078 ]
  %7085 = phi float [ %6484, %6477 ], [ %6649, %7078 ]
  %7086 = add i32 %6478, 1
  %7087 = icmp ugt i32 %7086, %6474
  br i1 %7087, label %7088, label %6477

; <label>:7088                                    ; preds = %7079
  br label %7089

; <label>:7089                                    ; preds = %7088, %6427, %6417
  %7090 = phi float [ %6418, %6417 ], [ %6418, %6427 ], [ %7080, %7088 ]
  %7091 = phi float [ %6419, %6417 ], [ %6419, %6427 ], [ %7081, %7088 ]
  %7092 = phi float [ %6420, %6417 ], [ %6420, %6427 ], [ %7082, %7088 ]
  %7093 = phi float [ %6421, %6417 ], [ %6421, %6427 ], [ %7083, %7088 ]
  %7094 = phi float [ %6422, %6417 ], [ %6422, %6427 ], [ %7084, %7088 ]
  %7095 = phi float [ %6423, %6417 ], [ %6423, %6427 ], [ %7085, %7088 ]
  %7096 = fmul fast float %2382, %2382
  %7097 = fsub fast float 1.000000e+00, %7096
  %7098 = call float @dx.op.dot3.f32(i32 55, float %7097, float %7097, float %7097, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7099 = fsub fast float 1.000000e+00, %7098
  %7100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7101 = extractvalue %dx.types.CBufRet.f32 %7100, 0
  %7102 = fmul fast float %7101, %4843
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 3
  %7105 = fsub fast float 1.000000e+00, %2360
  %7106 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  %7107 = fadd fast float %7095, %2359
  %7108 = fmul fast float %7107, %2360
  %7109 = fmul fast float %7106, %7104
  %7110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7111 = extractvalue %dx.types.CBufRet.f32 %7110, 3
  %7112 = fmul fast float %7093, %2988
  %7113 = fmul fast float %7094, %2989
  %7114 = fmul fast float %7095, %2990
  %7115 = fcmp fast ogt float %93, %203
  %7116 = and i1 %7115, %2790
  %7117 = or i1 %2796, %7116
  %7118 = icmp eq i32 %2789, 2
  %7119 = fcmp fast ole float %93, %203
  %7120 = and i1 %7119, %7118
  %7121 = or i1 %7120, %7117
  br i1 %7116, label %7122, label %7381

; <label>:7122                                    ; preds = %7089
  %7123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7124 = extractvalue %dx.types.CBufRet.f32 %7123, 2
  %7125 = extractvalue %dx.types.CBufRet.f32 %7123, 3
  %7126 = fmul fast float %7124, %105
  %7127 = fmul fast float %7125, %106
  %7128 = call float @dx.op.unary.f32(i32 7, float %7126)  ; Saturate(value)
  %7129 = call float @dx.op.unary.f32(i32 7, float %7127)  ; Saturate(value)
  %7130 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7128, float %7129, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7131 = extractvalue %dx.types.ResRet.f32 %7130, 0
  %7132 = extractvalue %dx.types.ResRet.f32 %7130, 1
  %7133 = extractvalue %dx.types.ResRet.f32 %7130, 2
  %7134 = extractvalue %dx.types.ResRet.f32 %7130, 3
  %7135 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7128, float %7129, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7136 = extractvalue %dx.types.ResRet.f32 %7135, 0
  %7137 = extractvalue %dx.types.ResRet.f32 %7135, 1
  %7138 = extractvalue %dx.types.ResRet.f32 %7135, 2
  %7139 = extractvalue %dx.types.ResRet.f32 %7135, 3
  %7140 = call float @dx.op.binary.f32(i32 35, float %7132, float %7133)  ; FMax(a,b)
  %7141 = call float @dx.op.binary.f32(i32 35, float %7131, float %7140)  ; FMax(a,b)
  %7142 = call float @dx.op.binary.f32(i32 35, float %7141, float %7134)  ; FMax(a,b)
  %7143 = call float @dx.op.binary.f32(i32 36, float %7137, float %7138)  ; FMin(a,b)
  %7144 = call float @dx.op.binary.f32(i32 36, float %7136, float %7143)  ; FMin(a,b)
  %7145 = call float @dx.op.binary.f32(i32 36, float %7144, float %7139)  ; FMin(a,b)
  %7146 = fmul fast float %7142, 2.550000e+02
  %7147 = fadd fast float %7146, 0x3F70101020000000
  %7148 = fptoui float %7147 to i32
  %7149 = fmul fast float %7145, 2.550000e+02
  %7150 = fadd fast float %7149, 0x3F70101020000000
  %7151 = fptoui float %7150 to i32
  %7152 = icmp ult i32 %7148, %7151
  br i1 %7152, label %7153, label %7321

; <label>:7153                                    ; preds = %7122
  %7154 = fcmp fast ogt float %92, 9.843750e-01
  %7155 = fadd fast float %93, -4.000000e+00
  %7156 = select i1 %7154, float -4.000000e+00, float %7155
  %7157 = call float @dx.op.binary.f32(i32 35, float %7156, float 0.000000e+00)  ; FMax(a,b)
  %7158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7159 = extractvalue %dx.types.CBufRet.f32 %7158, 0
  %7160 = fadd fast float %7159, %7157
  %7161 = extractvalue %dx.types.CBufRet.f32 %7158, 2
  %7162 = fmul fast float %7160, %7161
  %7163 = call float @dx.op.unary.f32(i32 23, float %7162)  ; Log(value)
  %7164 = extractvalue %dx.types.CBufRet.f32 %7158, 3
  %7165 = fmul fast float %7164, %7163
  %7166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7167 = extractvalue %dx.types.CBufRet.f32 %7166, 2
  %7168 = fmul fast float %7165, %7167
  %7169 = call float @dx.op.unary.f32(i32 7, float %7168)  ; Saturate(value)
  %7170 = uitofp i32 %7148 to float
  %7171 = uitofp i32 %7151 to float
  %7172 = fadd fast float %7170, 5.000000e-01
  %7173 = fadd fast float %7171, 5.000000e-01
  %7174 = fmul fast float %7167, %7172
  %7175 = fmul fast float %7167, %7173
  %7176 = fadd fast float %7174, 0x3F0FFB4800000000
  %7177 = fadd fast float %7175, 0xBF0FFB4800000000
  %7178 = call float @dx.op.binary.f32(i32 35, float %7169, float %7176)  ; FMax(a,b)
  %7179 = call float @dx.op.binary.f32(i32 36, float %7178, float %7177)  ; FMin(a,b)
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 1
  %7182 = extractvalue %dx.types.CBufRet.f32 %7180, 2
  %7183 = extractvalue %dx.types.CBufRet.f32 %7180, 0
  %7184 = fmul fast float %7181, %7179
  %7185 = fadd fast float %7183, %7184
  %7186 = fadd fast float %7183, %7182
  %7187 = fsub fast float %7181, %7182
  %7188 = fadd fast float %7187, %7183
  %7189 = call float @dx.op.binary.f32(i32 35, float %7185, float %7186)  ; FMax(a,b)
  %7190 = call float @dx.op.binary.f32(i32 36, float %7189, float %7188)  ; FMin(a,b)
  %7191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7128, float %7129, float %7190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7192 = extractvalue %dx.types.ResRet.f32 %7191, 0
  %7193 = extractvalue %dx.types.ResRet.f32 %7191, 1
  %7194 = extractvalue %dx.types.ResRet.f32 %7191, 2
  %7195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7196 = extractvalue %dx.types.CBufRet.i32 %7195, 0
  %7197 = extractvalue %dx.types.CBufRet.i32 %7195, 1
  %7198 = uitofp i32 %7196 to float
  %7199 = uitofp i32 %7197 to float
  %7200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7201 = extractvalue %dx.types.CBufRet.f32 %7200, 0
  %7202 = extractvalue %dx.types.CBufRet.f32 %7200, 1
  %7203 = fmul fast float %7198, %7128
  %7204 = fmul fast float %7199, %7129
  %7205 = fadd fast float %7203, -5.000000e-01
  %7206 = fadd fast float %7204, -5.000000e-01
  %7207 = call float @dx.op.unary.f32(i32 22, float %7205)  ; Frc(value)
  %7208 = call float @dx.op.unary.f32(i32 22, float %7206)  ; Frc(value)
  %7209 = fmul fast float %7207, %7207
  %7210 = fmul fast float %7209, %7207
  %7211 = fsub fast float 3.000000e+00, %7207
  %7212 = fmul fast float %7209, %7211
  %7213 = fmul fast float %7207, 3.000000e+00
  %7214 = fmul fast float %7210, 3.000000e+00
  %7215 = fmul fast float %7209, 6.000000e+00
  %7216 = fsub fast float %7214, %7215
  %7217 = fadd fast float %7216, 4.000000e+00
  %7218 = fmul fast float %7217, 0x3FC5555560000000
  %7219 = fmul fast float %7210, -3.000000e+00
  %7220 = fadd fast float %7209, %7207
  %7221 = fmul fast float %7220, 3.000000e+00
  %7222 = fadd fast float %7219, 1.000000e+00
  %7223 = fadd fast float %7222, %7221
  %7224 = fmul fast float %7210, 0x3FC5555560000000
  %7225 = fmul fast float %7208, %7208
  %7226 = fmul fast float %7225, %7208
  %7227 = fsub fast float 3.000000e+00, %7208
  %7228 = fmul fast float %7225, %7227
  %7229 = fmul fast float %7208, 3.000000e+00
  %7230 = fmul fast float %7226, 3.000000e+00
  %7231 = fmul fast float %7225, 6.000000e+00
  %7232 = fsub fast float %7230, %7231
  %7233 = fadd fast float %7232, 4.000000e+00
  %7234 = fmul fast float %7233, 0x3FC5555560000000
  %7235 = fmul fast float %7226, -3.000000e+00
  %7236 = fadd fast float %7225, %7208
  %7237 = fmul fast float %7236, 3.000000e+00
  %7238 = fadd fast float %7235, 1.000000e+00
  %7239 = fadd fast float %7238, %7237
  %7240 = fmul fast float %7226, 0x3FC5555560000000
  %7241 = fadd fast float %7207, 1.000000e+00
  %7242 = fsub fast float 1.000000e+00, %7213
  %7243 = fadd fast float %7242, %7212
  %7244 = fadd fast float %7243, %7217
  %7245 = fmul fast float %7244, 0x3FC5555560000000
  %7246 = fdiv fast float %7218, %7245
  %7247 = fsub fast float %7241, %7246
  %7248 = fsub fast float 1.000000e+00, %7207
  %7249 = fadd fast float %7223, %7210
  %7250 = fmul fast float %7249, 0x3FC5555560000000
  %7251 = fdiv fast float %7224, %7250
  %7252 = fadd fast float %7248, %7251
  %7253 = fadd fast float %7208, 1.000000e+00
  %7254 = fsub fast float 1.000000e+00, %7229
  %7255 = fadd fast float %7254, %7228
  %7256 = fadd fast float %7255, %7233
  %7257 = fmul fast float %7256, 0x3FC5555560000000
  %7258 = fdiv fast float %7234, %7257
  %7259 = fsub fast float %7253, %7258
  %7260 = fsub fast float 1.000000e+00, %7208
  %7261 = fadd fast float %7239, %7226
  %7262 = fmul fast float %7261, 0x3FC5555560000000
  %7263 = fdiv fast float %7240, %7262
  %7264 = fadd fast float %7263, %7260
  %7265 = fmul fast float %7247, %7201
  %7266 = fsub fast float %7128, %7265
  %7267 = fmul fast float %7252, %7201
  %7268 = fadd fast float %7267, %7128
  %7269 = fmul fast float %7264, %7202
  %7270 = fadd fast float %7269, %7129
  %7271 = fmul fast float %7259, %7202
  %7272 = fsub fast float %7129, %7271
  %7273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7266, float %7272, float %7190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7274 = extractvalue %dx.types.ResRet.f32 %7273, 0
  %7275 = extractvalue %dx.types.ResRet.f32 %7273, 1
  %7276 = extractvalue %dx.types.ResRet.f32 %7273, 2
  %7277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7268, float %7272, float %7190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7278 = extractvalue %dx.types.ResRet.f32 %7277, 0
  %7279 = extractvalue %dx.types.ResRet.f32 %7277, 1
  %7280 = extractvalue %dx.types.ResRet.f32 %7277, 2
  %7281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7266, float %7270, float %7190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7282 = extractvalue %dx.types.ResRet.f32 %7281, 0
  %7283 = extractvalue %dx.types.ResRet.f32 %7281, 1
  %7284 = extractvalue %dx.types.ResRet.f32 %7281, 2
  %7285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7268, float %7270, float %7190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7286 = extractvalue %dx.types.ResRet.f32 %7285, 0
  %7287 = extractvalue %dx.types.ResRet.f32 %7285, 1
  %7288 = extractvalue %dx.types.ResRet.f32 %7285, 2
  %7289 = fsub fast float %7282, %7274
  %7290 = fsub fast float %7283, %7275
  %7291 = fsub fast float %7284, %7276
  %7292 = fmul fast float %7289, %7262
  %7293 = fmul fast float %7290, %7262
  %7294 = fmul fast float %7291, %7262
  %7295 = fadd fast float %7292, %7274
  %7296 = fadd fast float %7293, %7275
  %7297 = fadd fast float %7294, %7276
  %7298 = fsub fast float %7286, %7278
  %7299 = fsub fast float %7287, %7279
  %7300 = fsub fast float %7288, %7280
  %7301 = fmul fast float %7298, %7262
  %7302 = fmul fast float %7299, %7262
  %7303 = fmul fast float %7300, %7262
  %7304 = fsub fast float %7278, %7295
  %7305 = fadd fast float %7304, %7301
  %7306 = fsub fast float %7279, %7296
  %7307 = fadd fast float %7306, %7302
  %7308 = fsub fast float %7280, %7297
  %7309 = fadd fast float %7308, %7303
  %7310 = fmul fast float %7305, %7250
  %7311 = fmul fast float %7307, %7250
  %7312 = fmul fast float %7309, %7250
  %7313 = fadd fast float %7310, %7295
  %7314 = fadd fast float %7311, %7296
  %7315 = fadd fast float %7312, %7297
  %7316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7317 = extractvalue %dx.types.CBufRet.f32 %7316, 1
  %7318 = fmul fast float %7313, %7317
  %7319 = fmul fast float %7314, %7317
  %7320 = fmul fast float %7315, %7317
  br label %7321

; <label>:7321                                    ; preds = %7153, %7122
  %7322 = phi float [ %7192, %7153 ], [ 1.000000e+00, %7122 ]
  %7323 = phi float [ %7193, %7153 ], [ 1.000000e+00, %7122 ]
  %7324 = phi float [ %7194, %7153 ], [ 1.000000e+00, %7122 ]
  %7325 = phi float [ %7318, %7153 ], [ 0.000000e+00, %7122 ]
  %7326 = phi float [ %7319, %7153 ], [ 0.000000e+00, %7122 ]
  %7327 = phi float [ %7320, %7153 ], [ 0.000000e+00, %7122 ]
  %7328 = fmul fast float %7325, %7099
  %7329 = fmul fast float %7326, %7099
  %7330 = fmul fast float %7327, %7099
  %7331 = call float @dx.op.dot3.f32(i32 55, float %7322, float %7323, float %7324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7332 = call float @dx.op.dot3.f32(i32 55, float %7328, float %7329, float %7330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7333 = select i1 %243, float %7331, float %7322
  %7334 = select i1 %243, float %7331, float %7323
  %7335 = select i1 %243, float 1.000000e+00, float %7324
  %7336 = select i1 %243, float %7332, float %7328
  %7337 = select i1 %243, float 0.000000e+00, float %7329
  %7338 = select i1 %243, float 0.000000e+00, float %7330
  %7339 = fmul fast float %7333, %7112
  %7340 = fmul fast float %7334, %7113
  %7341 = fmul fast float %7335, %7114
  %7342 = fadd fast float %7339, %7336
  %7343 = fadd fast float %7340, %7337
  %7344 = fadd fast float %7338, %7341
  %7345 = fmul fast float %7333, %7090
  %7346 = fmul fast float %7334, %7091
  %7347 = fmul fast float %7335, %7092
  %7348 = fmul fast float %105, 2.000000e+00
  %7349 = fmul fast float %7348, %7124
  %7350 = fmul fast float %106, 2.000000e+00
  %7351 = fmul fast float %7350, %7125
  %7352 = fsub fast float 1.000000e+00, %7349
  %7353 = fsub fast float 1.000000e+00, %7351
  %7354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7355 = extractvalue %dx.types.CBufRet.f32 %7354, 0
  %7356 = extractvalue %dx.types.CBufRet.f32 %7354, 1
  %7357 = extractvalue %dx.types.CBufRet.f32 %7354, 2
  %7358 = fmul fast float %7352, %7355
  %7359 = fmul fast float %7352, %7356
  %7360 = fmul fast float %7352, %7357
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 0
  %7363 = extractvalue %dx.types.CBufRet.f32 %7361, 1
  %7364 = extractvalue %dx.types.CBufRet.f32 %7361, 2
  %7365 = fmul fast float %7353, %7362
  %7366 = fmul fast float %7353, %7363
  %7367 = fmul fast float %7353, %7364
  %7368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7369 = extractvalue %dx.types.CBufRet.f32 %7368, 0
  %7370 = extractvalue %dx.types.CBufRet.f32 %7368, 1
  %7371 = extractvalue %dx.types.CBufRet.f32 %7368, 2
  %7372 = fadd fast float %7365, %7369
  %7373 = fadd fast float %7372, %7358
  %7374 = fadd fast float %7366, %7370
  %7375 = fadd fast float %7374, %7359
  %7376 = fadd fast float %7367, %7371
  %7377 = fadd fast float %7376, %7360
  %7378 = fmul fast float %7373, %203
  %7379 = fmul fast float %7375, %203
  %7380 = fmul fast float %7377, %203
  br label %7381

; <label>:7381                                    ; preds = %7321, %7089
  %7382 = phi float [ %7378, %7321 ], [ %152, %7089 ]
  %7383 = phi float [ %7379, %7321 ], [ %153, %7089 ]
  %7384 = phi float [ %7380, %7321 ], [ %154, %7089 ]
  %7385 = phi float [ %203, %7321 ], [ %93, %7089 ]
  %7386 = phi float [ %7342, %7321 ], [ %7112, %7089 ]
  %7387 = phi float [ %7343, %7321 ], [ %7113, %7089 ]
  %7388 = phi float [ %7344, %7321 ], [ %7114, %7089 ]
  %7389 = phi float [ %7345, %7321 ], [ %7090, %7089 ]
  %7390 = phi float [ %7346, %7321 ], [ %7091, %7089 ]
  %7391 = phi float [ %7347, %7321 ], [ %7092, %7089 ]
  %7392 = phi float [ %7322, %7321 ], [ 1.000000e+00, %7089 ]
  br i1 %7121, label %8547, label %7393

; <label>:7393                                    ; preds = %7381
  %7394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.f32 %7394, 0
  %7396 = extractvalue %dx.types.CBufRet.f32 %7394, 1
  %7397 = extractvalue %dx.types.CBufRet.f32 %7394, 2
  %7398 = extractvalue %dx.types.CBufRet.f32 %7394, 3
  %7399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7400 = extractvalue %dx.types.CBufRet.f32 %7399, 0
  %7401 = extractvalue %dx.types.CBufRet.f32 %7399, 1
  %7402 = extractvalue %dx.types.CBufRet.f32 %7399, 2
  %7403 = extractvalue %dx.types.CBufRet.f32 %7399, 3
  %7404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7405 = extractvalue %dx.types.CBufRet.f32 %7404, 0
  %7406 = extractvalue %dx.types.CBufRet.f32 %7404, 1
  %7407 = extractvalue %dx.types.CBufRet.f32 %7404, 2
  %7408 = extractvalue %dx.types.CBufRet.f32 %7404, 3
  %7409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7410 = extractvalue %dx.types.CBufRet.f32 %7409, 0
  %7411 = extractvalue %dx.types.CBufRet.f32 %7409, 1
  %7412 = extractvalue %dx.types.CBufRet.f32 %7409, 2
  %7413 = extractvalue %dx.types.CBufRet.f32 %7409, 3
  %7414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7415 = extractvalue %dx.types.CBufRet.f32 %7414, 3
  %7416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7417 = extractvalue %dx.types.CBufRet.f32 %7416, 3
  %7418 = extractvalue %dx.types.CBufRet.f32 %7416, 0
  %7419 = extractvalue %dx.types.CBufRet.f32 %7416, 1
  %7420 = extractvalue %dx.types.CBufRet.f32 %7416, 2
  %7421 = fcmp fast olt float %7420, -5.000000e-01
  %7422 = call float @dx.op.dot3.f32(i32 55, float %7382, float %7383, float %7384, float %7382, float %7383, float %7384)  ; Dot3(ax,ay,az,bx,by,bz)
  %7423 = call float @dx.op.unary.f32(i32 25, float %7422)  ; Rsqrt(value)
  %7424 = fmul fast float %7423, %7422
  %7425 = fmul fast float %7423, %7382
  %7426 = fmul fast float %7423, %7383
  %7427 = fmul fast float %7423, %7384
  %7428 = fadd fast float %7424, %7398
  %7429 = call float @dx.op.dot3.f32(i32 55, float %7425, float %7426, float %7427, float %7395, float %7396, float %7397)  ; Dot3(ax,ay,az,bx,by,bz)
  %7430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7431 = extractvalue %dx.types.CBufRet.i32 %7430, 1
  %7432 = and i32 %7431, 1
  %7433 = icmp ne i32 %7432, 0
  %7434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7435 = extractvalue %dx.types.CBufRet.f32 %7434, 2
  %7436 = fcmp fast ogt float %7435, 0.000000e+00
  %7437 = and i1 %7433, %7436
  br i1 %7437, label %7438, label %7844, !dx.controlflow.hints !147

; <label>:7438                                    ; preds = %7393
  %7439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7440 = extractvalue %dx.types.CBufRet.f32 %7439, 3
  %7441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7442 = extractvalue %dx.types.CBufRet.f32 %7441, 2
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 2
  %7445 = fsub fast float %7442, %7444
  %7446 = and i32 %7431, 2
  %7447 = extractvalue %dx.types.CBufRet.i32 %7430, 0
  %7448 = call i32 @dx.op.binary.i32(i32 40, i32 %7447, i32 3)  ; UMin(a,b)
  %7449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7450 = extractvalue %dx.types.CBufRet.f32 %7449, 0
  %7451 = extractvalue %dx.types.CBufRet.f32 %7449, 1
  %7452 = extractvalue %dx.types.CBufRet.f32 %7443, 0
  %7453 = extractvalue %dx.types.CBufRet.f32 %7443, 1
  %7454 = fsub fast float %7450, %7452
  %7455 = fsub fast float %7451, %7453
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 0
  %7458 = fcmp fast ogt float %7457, 0.000000e+00
  %7459 = fsub fast float -0.000000e+00, %7454
  %7460 = fsub fast float -0.000000e+00, %7455
  %7461 = call float @dx.op.dot2.f32(i32 54, float %7425, float %7426, float %7425, float %7426)  ; Dot2(ax,ay,bx,by)
  %7462 = call float @dx.op.dot2.f32(i32 54, float %7425, float %7426, float %7459, float %7460)  ; Dot2(ax,ay,bx,by)
  %7463 = fmul fast float %7462, 2.000000e+00
  %7464 = call float @dx.op.dot2.f32(i32 54, float %7459, float %7460, float %7459, float %7460)  ; Dot2(ax,ay,bx,by)
  %7465 = fmul fast float %7457, %7457
  %7466 = fsub fast float %7464, %7465
  %7467 = fmul fast float %7463, %7463
  %7468 = fmul fast float %7461, 4.000000e+00
  %7469 = fmul fast float %7468, %7466
  %7470 = fsub fast float %7467, %7469
  %7471 = fcmp fast ogt float %7470, 0.000000e+00
  br i1 %7471, label %7472, label %7487

; <label>:7472                                    ; preds = %7438
  %7473 = fcmp fast ogt float %7463, 0.000000e+00
  %7474 = call float @dx.op.unary.f32(i32 24, float %7470)  ; Sqrt(value)
  %7475 = fsub fast float -0.000000e+00, %7474
  %7476 = select i1 %7473, float %7474, float %7475
  %7477 = fadd fast float %7476, %7463
  %7478 = fmul float %7477, -5.000000e-01
  %7479 = fdiv fast float %7478, %7461
  %7480 = call float @dx.op.binary.f32(i32 35, float %7479, float 0.000000e+00)  ; FMax(a,b)
  %7481 = call float @dx.op.binary.f32(i32 36, float %7424, float %7480)  ; FMin(a,b)
  %7482 = fdiv fast float %7466, %7478
  %7483 = call float @dx.op.binary.f32(i32 35, float %7482, float 0.000000e+00)  ; FMax(a,b)
  %7484 = call float @dx.op.binary.f32(i32 36, float %7424, float %7483)  ; FMin(a,b)
  %7485 = call float @dx.op.binary.f32(i32 36, float %7481, float %7484)  ; FMin(a,b)
  %7486 = call float @dx.op.binary.f32(i32 35, float %7481, float %7484)  ; FMax(a,b)
  br label %7487

; <label>:7487                                    ; preds = %7472, %7438
  %7488 = phi float [ %7486, %7472 ], [ -1.000000e+00, %7438 ]
  %7489 = phi float [ %7485, %7472 ], [ -1.000000e+00, %7438 ]
  %7490 = phi i1 [ true, %7472 ], [ false, %7438 ]
  %7491 = and i1 %7458, %7490
  br i1 %7491, label %7492, label %7494

; <label>:7492                                    ; preds = %7487
  %7493 = fcmp fast oeq float %7489, %7488
  br i1 %7493, label %7797, label %7495

; <label>:7494                                    ; preds = %7487
  br i1 %7458, label %7797, label %7495

; <label>:7495                                    ; preds = %7494, %7492
  %7496 = phi float [ %7424, %7494 ], [ %7488, %7492 ]
  %7497 = phi float [ 0.000000e+00, %7494 ], [ %7489, %7492 ]
  %7498 = icmp ne i32 %7446, 0
  %7499 = fmul fast float %7496, %7427
  %7500 = fadd fast float %7499, %7440
  %7501 = fmul fast float %7500, %7496
  %7502 = select i1 %7498, float 0.000000e+00, float %7501
  %7503 = fcmp fast oeq float %7427, 0.000000e+00
  %7504 = fdiv fast float %7445, %7427
  %7505 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7504)  ; FMax(a,b)
  %7506 = select i1 %7503, float %7496, float %7505
  %7507 = call float @dx.op.binary.f32(i32 36, float %7496, float %7506)  ; FMin(a,b)
  %7508 = fcmp fast ogt float %7427, 0.000000e+00
  %7509 = fcmp fast olt float %7445, 0.000000e+00
  br i1 %7508, label %7510, label %7567

; <label>:7510                                    ; preds = %7495
  %7511 = icmp eq i32 %7446, 0
  br i1 %7509, label %7512, label %7556

; <label>:7512                                    ; preds = %7510
  %7513 = select i1 %7511, float %7496, float 0.000000e+00
  %7514 = fsub fast float -0.000000e+00, %7513
  %7515 = call float @dx.op.unary.f32(i32 6, float %7514)  ; FAbs(value)
  %7516 = fmul fast float %7513, %7427
  %7517 = fadd fast float %7516, %7440
  %7518 = fmul fast float %7515, %7517
  %7519 = fsub fast float %7502, %7518
  %7520 = fsub fast float %7496, %7515
  %7521 = select i1 %7511, float %7520, float 0.000000e+00
  %7522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7523 = extractvalue %dx.types.CBufRet.f32 %7522, 0
  %7524 = extractvalue %dx.types.CBufRet.f32 %7522, 1
  %7525 = extractvalue %dx.types.CBufRet.f32 %7522, 2
  %7526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7527 = extractvalue %dx.types.CBufRet.f32 %7526, 0
  %7528 = extractvalue %dx.types.CBufRet.f32 %7526, 1
  %7529 = extractvalue %dx.types.CBufRet.f32 %7526, 2
  %7530 = extractvalue %dx.types.CBufRet.f32 %7526, 3
  %7531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.f32 %7531, 3
  %7533 = call float @dx.op.binary.f32(i32 36, float %7519, float %7532)  ; FMin(a,b)
  %7534 = fmul fast float %7530, %7521
  %7535 = call float @dx.op.unary.f32(i32 7, float %7534)  ; Saturate(value)
  %7536 = fsub fast float %7527, %7523
  %7537 = fsub fast float %7528, %7524
  %7538 = fsub fast float %7529, %7525
  %7539 = fmul fast float %7535, %7536
  %7540 = fmul fast float %7535, %7537
  %7541 = fmul fast float %7535, %7538
  %7542 = fadd fast float %7539, %7523
  %7543 = fadd fast float %7540, %7524
  %7544 = fadd fast float %7541, %7525
  %7545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7546 = extractvalue %dx.types.CBufRet.f32 %7545, 0
  %7547 = extractvalue %dx.types.CBufRet.f32 %7545, 1
  %7548 = fadd fast float %7547, %7546
  %7549 = call float @dx.op.unary.f32(i32 7, float %7548)  ; Saturate(value)
  %7550 = extractvalue %dx.types.CBufRet.f32 %7545, 2
  %7551 = extractvalue %dx.types.CBufRet.f32 %7545, 3
  %7552 = fadd fast float %7551, %7550
  %7553 = call float @dx.op.unary.f32(i32 7, float %7552)  ; Saturate(value)
  %7554 = fmul fast float %7549, %7533
  %7555 = fmul fast float %7554, %7553
  br label %7797

; <label>:7556                                    ; preds = %7510
  br i1 %7511, label %7557, label %7578

; <label>:7557                                    ; preds = %7556
  %7558 = call float @dx.op.binary.f32(i32 36, float %7507, float %7497)  ; FMin(a,b)
  %7559 = fsub fast float %7507, %7558
  %7560 = fsub fast float %7559, %7496
  %7561 = call float @dx.op.unary.f32(i32 6, float %7560)  ; FAbs(value)
  %7562 = fadd fast float %7559, %7496
  %7563 = fmul fast float %7562, %7427
  %7564 = fadd fast float %7563, %7440
  %7565 = fmul fast float %7564, %7561
  %7566 = fsub fast float %7502, %7565
  br label %7578

; <label>:7567                                    ; preds = %7495
  br i1 %7509, label %7568, label %7578

; <label>:7568                                    ; preds = %7567
  %7569 = call float @dx.op.binary.f32(i32 35, float %7497, float %7507)  ; FMax(a,b)
  %7570 = icmp eq i32 %7446, 0
  %7571 = select i1 %7570, float %7507, float 0.000000e+00
  %7572 = fsub fast float -0.000000e+00, %7571
  %7573 = call float @dx.op.unary.f32(i32 6, float %7572)  ; FAbs(value)
  %7574 = fmul fast float %7571, %7427
  %7575 = fadd fast float %7574, %7440
  %7576 = fmul fast float %7573, %7575
  %7577 = fsub fast float %7502, %7576
  br label %7578

; <label>:7578                                    ; preds = %7568, %7567, %7557, %7556
  %7579 = phi float [ %7497, %7556 ], [ %7497, %7557 ], [ %7569, %7568 ], [ %7497, %7567 ]
  %7580 = phi float [ 0.000000e+00, %7556 ], [ %7561, %7557 ], [ %7573, %7568 ], [ 0.000000e+00, %7567 ]
  %7581 = phi float [ %7502, %7556 ], [ %7566, %7557 ], [ %7577, %7568 ], [ %7502, %7567 ]
  %7582 = phi float [ %7507, %7556 ], [ %7507, %7557 ], [ %7496, %7568 ], [ %7496, %7567 ]
  %7583 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7583, align 4, !tbaa !134, !noalias !148
  %7584 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7584, align 4, !tbaa !134, !noalias !148
  %7585 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7585, align 4, !tbaa !134, !noalias !148
  %7586 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %7586, align 4, !tbaa !134, !noalias !148
  %7587 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %7587, align 4, !tbaa !134, !noalias !148
  %7588 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %7588, align 4, !tbaa !134, !noalias !148
  %7589 = icmp sgt i32 %7448, 0
  br i1 %7589, label %7590, label %7651

; <label>:7590                                    ; preds = %7578
  br label %7591

; <label>:7591                                    ; preds = %7640, %7590
  %7592 = phi i32 [ %7641, %7640 ], [ 0, %7590 ]
  %7593 = phi i32 [ %7642, %7640 ], [ 0, %7590 ]
  %7594 = add nuw i32 %7593, 171
  %7595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %7594)  ; CBufferLoadLegacy(handle,regIndex)
  %7596 = extractvalue %dx.types.CBufRet.f32 %7595, 0
  %7597 = extractvalue %dx.types.CBufRet.f32 %7595, 1
  %7598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.f32 %7598, 0
  %7600 = extractvalue %dx.types.CBufRet.f32 %7598, 1
  %7601 = fsub fast float %7596, %7599
  %7602 = fsub fast float %7597, %7600
  %7603 = extractvalue %dx.types.CBufRet.f32 %7595, 2
  %7604 = fsub fast float -0.000000e+00, %7601
  %7605 = fsub fast float -0.000000e+00, %7602
  %7606 = call float @dx.op.dot2.f32(i32 54, float %7425, float %7426, float %7604, float %7605)  ; Dot2(ax,ay,bx,by)
  %7607 = fmul fast float %7606, 2.000000e+00
  %7608 = call float @dx.op.dot2.f32(i32 54, float %7604, float %7605, float %7604, float %7605)  ; Dot2(ax,ay,bx,by)
  %7609 = fmul fast float %7603, %7603
  %7610 = fsub fast float %7608, %7609
  %7611 = fmul fast float %7607, %7607
  %7612 = fmul fast float %7468, %7610
  %7613 = fsub fast float %7611, %7612
  %7614 = fcmp fast ogt float %7613, 0.000000e+00
  br i1 %7614, label %7615, label %7630

; <label>:7615                                    ; preds = %7591
  %7616 = fcmp fast ogt float %7607, 0.000000e+00
  %7617 = call float @dx.op.unary.f32(i32 24, float %7613)  ; Sqrt(value)
  %7618 = fsub fast float -0.000000e+00, %7617
  %7619 = select i1 %7616, float %7617, float %7618
  %7620 = fadd fast float %7619, %7607
  %7621 = fmul float %7620, -5.000000e-01
  %7622 = fdiv fast float %7621, %7461
  %7623 = call float @dx.op.binary.f32(i32 35, float %7622, float 0.000000e+00)  ; FMax(a,b)
  %7624 = call float @dx.op.binary.f32(i32 36, float %7496, float %7623)  ; FMin(a,b)
  %7625 = fdiv fast float %7610, %7621
  %7626 = call float @dx.op.binary.f32(i32 35, float %7625, float 0.000000e+00)  ; FMax(a,b)
  %7627 = call float @dx.op.binary.f32(i32 36, float %7496, float %7626)  ; FMin(a,b)
  %7628 = call float @dx.op.binary.f32(i32 36, float %7624, float %7627)  ; FMin(a,b)
  %7629 = call float @dx.op.binary.f32(i32 35, float %7624, float %7627)  ; FMax(a,b)
  br label %7630

; <label>:7630                                    ; preds = %7615, %7591
  %7631 = phi float [ %7629, %7615 ], [ -1.000000e+00, %7591 ]
  %7632 = phi float [ %7628, %7615 ], [ -1.000000e+00, %7591 ]
  %7633 = phi i1 [ true, %7615 ], [ false, %7591 ]
  br i1 %7633, label %7634, label %7640

; <label>:7634                                    ; preds = %7630
  %7635 = call float @dx.op.binary.f32(i32 35, float %7579, float %7632)  ; FMax(a,b)
  %7636 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7593
  store float %7635, float* %7636, align 4, !tbaa !134, !noalias !148
  %7637 = call float @dx.op.binary.f32(i32 35, float %7579, float %7631)  ; FMax(a,b)
  %7638 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7593
  store float %7637, float* %7638, align 4, !tbaa !134, !noalias !148
  %7639 = add nsw i32 %7592, 1
  br label %7640

; <label>:7640                                    ; preds = %7634, %7630
  %7641 = phi i32 [ %7639, %7634 ], [ %7592, %7630 ]
  %7642 = add nuw nsw i32 %7593, 1
  %7643 = icmp eq i32 %7642, %7448
  br i1 %7643, label %7644, label %7591

; <label>:7644                                    ; preds = %7640
  %7645 = load float, float* %7585, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %7646 = load float, float* %7584, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  %7647 = load float, float* %7583, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  %7648 = load float, float* %7588, align 4, !tbaa !134, !alias.scope !174, !noalias !177
  %7649 = load float, float* %7587, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  %7650 = load float, float* %7586, align 4, !tbaa !134, !alias.scope !182, !noalias !183
  br label %7651

; <label>:7651                                    ; preds = %7644, %7578
  %7652 = phi float [ -1.000000e+00, %7578 ], [ %7650, %7644 ]
  %7653 = phi float [ -1.000000e+00, %7578 ], [ %7649, %7644 ]
  %7654 = phi float [ -1.000000e+00, %7578 ], [ %7648, %7644 ]
  %7655 = phi float [ -1.000000e+00, %7578 ], [ %7647, %7644 ]
  %7656 = phi float [ -1.000000e+00, %7578 ], [ %7646, %7644 ]
  %7657 = phi float [ -1.000000e+00, %7578 ], [ %7645, %7644 ]
  %7658 = phi i32 [ 0, %7578 ], [ %7641, %7644 ]
  %7659 = call float @dx.op.binary.f32(i32 36, float %7656, float %7657)  ; FMin(a,b)
  %7660 = call float @dx.op.binary.f32(i32 36, float %7655, float %7659)  ; FMin(a,b)
  %7661 = call float @dx.op.binary.f32(i32 35, float %7655, float %7656)  ; FMax(a,b)
  %7662 = call float @dx.op.binary.f32(i32 36, float %7661, float %7657)  ; FMin(a,b)
  %7663 = call float @dx.op.binary.f32(i32 36, float %7655, float %7656)  ; FMin(a,b)
  %7664 = call float @dx.op.binary.f32(i32 35, float %7663, float %7662)  ; FMax(a,b)
  %7665 = call float @dx.op.binary.f32(i32 35, float %7656, float %7657)  ; FMax(a,b)
  %7666 = call float @dx.op.binary.f32(i32 35, float %7655, float %7665)  ; FMax(a,b)
  store float %7660, float* %7583, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  store float %7664, float* %7584, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  store float %7666, float* %7585, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %7667 = call float @dx.op.binary.f32(i32 36, float %7653, float %7654)  ; FMin(a,b)
  %7668 = call float @dx.op.binary.f32(i32 36, float %7652, float %7667)  ; FMin(a,b)
  %7669 = call float @dx.op.binary.f32(i32 35, float %7652, float %7653)  ; FMax(a,b)
  %7670 = call float @dx.op.binary.f32(i32 36, float %7669, float %7654)  ; FMin(a,b)
  %7671 = call float @dx.op.binary.f32(i32 36, float %7652, float %7653)  ; FMin(a,b)
  %7672 = call float @dx.op.binary.f32(i32 35, float %7671, float %7670)  ; FMax(a,b)
  %7673 = call float @dx.op.binary.f32(i32 35, float %7653, float %7654)  ; FMax(a,b)
  %7674 = call float @dx.op.binary.f32(i32 35, float %7652, float %7673)  ; FMax(a,b)
  store float %7668, float* %7586, align 4, !tbaa !134, !alias.scope !182, !noalias !183
  store float %7672, float* %7587, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  store float %7674, float* %7588, align 4, !tbaa !134, !alias.scope !174, !noalias !177
  %7675 = sub nsw i32 3, %7658
  %7676 = icmp sgt i32 %7675, 2
  br i1 %7676, label %7677, label %7715

; <label>:7677                                    ; preds = %7651
  %7678 = icmp eq i32 %7446, 0
  %7679 = fsub fast float %7496, %7580
  %7680 = select i1 %7678, float %7679, float %7580
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 0
  %7683 = extractvalue %dx.types.CBufRet.f32 %7681, 1
  %7684 = extractvalue %dx.types.CBufRet.f32 %7681, 2
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.CBufRet.f32 %7685, 1
  %7688 = extractvalue %dx.types.CBufRet.f32 %7685, 2
  %7689 = extractvalue %dx.types.CBufRet.f32 %7685, 3
  %7690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7691 = extractvalue %dx.types.CBufRet.f32 %7690, 3
  %7692 = call float @dx.op.binary.f32(i32 36, float %7581, float %7691)  ; FMin(a,b)
  %7693 = fmul fast float %7689, %7680
  %7694 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7695 = fsub fast float %7686, %7682
  %7696 = fsub fast float %7687, %7683
  %7697 = fsub fast float %7688, %7684
  %7698 = fmul fast float %7694, %7695
  %7699 = fmul fast float %7694, %7696
  %7700 = fmul fast float %7694, %7697
  %7701 = fadd fast float %7698, %7682
  %7702 = fadd fast float %7699, %7683
  %7703 = fadd fast float %7700, %7684
  %7704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7705 = extractvalue %dx.types.CBufRet.f32 %7704, 0
  %7706 = extractvalue %dx.types.CBufRet.f32 %7704, 1
  %7707 = fadd fast float %7706, %7705
  %7708 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  %7709 = extractvalue %dx.types.CBufRet.f32 %7704, 2
  %7710 = extractvalue %dx.types.CBufRet.f32 %7704, 3
  %7711 = fadd fast float %7710, %7709
  %7712 = call float @dx.op.unary.f32(i32 7, float %7711)  ; Saturate(value)
  %7713 = fmul fast float %7708, %7692
  %7714 = fmul fast float %7713, %7712
  br label %7797

; <label>:7715                                    ; preds = %7651
  %7716 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7675
  %7717 = load float, float* %7716, align 4, !tbaa !134, !noalias !148
  %7718 = fcmp fast olt float %7717, %7582
  %7719 = icmp sgt i32 %7658, 0
  %7720 = and i1 %7719, %7718
  br i1 %7720, label %7721, label %7758

; <label>:7721                                    ; preds = %7715
  br label %7722

; <label>:7722                                    ; preds = %7751, %7721
  %7723 = phi float [ %7752, %7751 ], [ %7580, %7721 ]
  %7724 = phi float [ %7753, %7751 ], [ %7581, %7721 ]
  %7725 = phi float [ %7733, %7751 ], [ %7717, %7721 ]
  %7726 = phi i32 [ %7730, %7751 ], [ %7675, %7721 ]
  %7727 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7726
  %7728 = load float, float* %7727, align 4, !tbaa !134, !noalias !148
  %7729 = icmp slt i32 %7726, 2
  %7730 = add nsw i32 %7726, 1
  %7731 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7730
  %7732 = load float, float* %7731, align 4, !tbaa !134, !noalias !148
  %7733 = select i1 %7729, float %7732, float %7496
  %7734 = call float @dx.op.binary.f32(i32 36, float %7733, float %7728)  ; FMin(a,b)
  %7735 = call float @dx.op.binary.f32(i32 36, float %7582, float %7734)  ; FMin(a,b)
  %7736 = icmp eq i32 %7446, 0
  %7737 = fadd fast float %7735, %7725
  %7738 = fmul fast float %7737, %7427
  %7739 = fadd fast float %7738, %7440
  br i1 %7736, label %7745, label %7740

; <label>:7740                                    ; preds = %7722
  %7741 = fsub fast float %7735, %7725
  %7742 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7741)  ; FMax(a,b)
  %7743 = fmul fast float %7742, %7739
  %7744 = fadd fast float %7743, %7724
  br label %7751

; <label>:7745                                    ; preds = %7722
  %7746 = fsub fast float %7725, %7735
  %7747 = call float @dx.op.unary.f32(i32 6, float %7746)  ; FAbs(value)
  %7748 = fadd fast float %7747, %7723
  %7749 = fmul fast float %7747, %7739
  %7750 = fsub fast float %7724, %7749
  br label %7751

; <label>:7751                                    ; preds = %7745, %7740
  %7752 = phi float [ %7742, %7740 ], [ %7748, %7745 ]
  %7753 = phi float [ %7744, %7740 ], [ %7750, %7745 ]
  %7754 = fcmp fast olt float %7733, %7582
  %7755 = icmp slt i32 %7730, 3
  %7756 = and i1 %7755, %7754
  br i1 %7756, label %7722, label %7757

; <label>:7757                                    ; preds = %7751
  br label %7758

; <label>:7758                                    ; preds = %7757, %7715
  %7759 = phi float [ %7580, %7715 ], [ %7752, %7757 ]
  %7760 = phi float [ %7581, %7715 ], [ %7753, %7757 ]
  %7761 = fsub fast float %7496, %7759
  %7762 = select i1 %7498, float %7759, float %7761
  %7763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7764 = extractvalue %dx.types.CBufRet.f32 %7763, 0
  %7765 = extractvalue %dx.types.CBufRet.f32 %7763, 1
  %7766 = extractvalue %dx.types.CBufRet.f32 %7763, 2
  %7767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.f32 %7767, 0
  %7769 = extractvalue %dx.types.CBufRet.f32 %7767, 1
  %7770 = extractvalue %dx.types.CBufRet.f32 %7767, 2
  %7771 = extractvalue %dx.types.CBufRet.f32 %7767, 3
  %7772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7773 = extractvalue %dx.types.CBufRet.f32 %7772, 3
  %7774 = call float @dx.op.binary.f32(i32 36, float %7760, float %7773)  ; FMin(a,b)
  %7775 = fmul fast float %7771, %7762
  %7776 = call float @dx.op.unary.f32(i32 7, float %7775)  ; Saturate(value)
  %7777 = fsub fast float %7768, %7764
  %7778 = fsub fast float %7769, %7765
  %7779 = fsub fast float %7770, %7766
  %7780 = fmul fast float %7776, %7777
  %7781 = fmul fast float %7776, %7778
  %7782 = fmul fast float %7776, %7779
  %7783 = fadd fast float %7780, %7764
  %7784 = fadd fast float %7781, %7765
  %7785 = fadd fast float %7782, %7766
  %7786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.f32 %7786, 0
  %7788 = extractvalue %dx.types.CBufRet.f32 %7786, 1
  %7789 = fadd fast float %7788, %7787
  %7790 = call float @dx.op.unary.f32(i32 7, float %7789)  ; Saturate(value)
  %7791 = extractvalue %dx.types.CBufRet.f32 %7786, 2
  %7792 = extractvalue %dx.types.CBufRet.f32 %7786, 3
  %7793 = fadd fast float %7792, %7791
  %7794 = call float @dx.op.unary.f32(i32 7, float %7793)  ; Saturate(value)
  %7795 = fmul fast float %7790, %7774
  %7796 = fmul fast float %7795, %7794
  br label %7797

; <label>:7797                                    ; preds = %7758, %7677, %7512, %7494, %7492
  %7798 = phi float [ %7521, %7512 ], [ %7680, %7677 ], [ %7762, %7758 ], [ 0.000000e+00, %7492 ], [ 0.000000e+00, %7494 ]
  %7799 = phi float [ %7555, %7512 ], [ %7714, %7677 ], [ %7796, %7758 ], [ 0.000000e+00, %7492 ], [ 0.000000e+00, %7494 ]
  %7800 = phi float [ %7542, %7512 ], [ %7701, %7677 ], [ %7783, %7758 ], [ 0.000000e+00, %7492 ], [ 0.000000e+00, %7494 ]
  %7801 = phi float [ %7543, %7512 ], [ %7702, %7677 ], [ %7784, %7758 ], [ 0.000000e+00, %7492 ], [ 0.000000e+00, %7494 ]
  %7802 = phi float [ %7544, %7512 ], [ %7703, %7677 ], [ %7785, %7758 ], [ 0.000000e+00, %7492 ], [ 0.000000e+00, %7494 ]
  %7803 = fmul fast float %7435, %7799
  %7804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7805 = extractvalue %dx.types.CBufRet.f32 %7804, 2
  %7806 = fsub fast float %7442, %7805
  %7807 = fcmp fast olt float %7803, -2.000000e+01
  %7808 = call float @dx.op.unary.f32(i32 21, float %7803)  ; Exp(value)
  %7809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7810 = extractvalue %dx.types.CBufRet.f32 %7809, 2
  %7811 = extractvalue %dx.types.CBufRet.f32 %7809, 3
  %7812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7813 = extractvalue %dx.types.CBufRet.f32 %7812, 2
  %7814 = fmul fast float %7811, %7806
  %7815 = call float @dx.op.unary.f32(i32 7, float %7814)  ; Saturate(value)
  %7816 = fsub fast float 1.000000e+00, %7815
  %7817 = fmul fast float %7427, 5.000000e-01
  %7818 = fadd fast float %7817, 5.000000e-01
  %7819 = call float @dx.op.unary.f32(i32 7, float %7818)  ; Saturate(value)
  %7820 = fsub fast float 1.000000e+00, %7819
  %7821 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7816)  ; FMax(a,b)
  %7822 = fdiv fast float %7820, %7821
  %7823 = fsub fast float %7806, %7384
  %7824 = call float @dx.op.unary.f32(i32 6, float %7823)  ; FAbs(value)
  %7825 = fmul fast float %7824, %7810
  %7826 = call float @dx.op.unary.f32(i32 7, float %7822)  ; Saturate(value)
  %7827 = fsub fast float 1.000000e+00, %7825
  %7828 = fmul fast float %7827, %7826
  %7829 = fadd fast float %7828, %7825
  %7830 = fmul fast float %7813, %7806
  %7831 = call float @dx.op.unary.f32(i32 7, float %7830)  ; Saturate(value)
  %7832 = fsub fast float 1.000000e+00, %7829
  %7833 = fmul fast float %7832, %7831
  %7834 = fadd fast float %7833, %7829
  %7835 = call float @dx.op.unary.f32(i32 7, float %7834)  ; Saturate(value)
  %7836 = fadd fast float %7808, -1.000000e+00
  %7837 = select i1 %7807, float -1.000000e+00, float %7836
  %7838 = fmul fast float %7835, %7837
  %7839 = fadd fast float %7838, 1.000000e+00
  %7840 = fsub fast float -0.000000e+00, %7838
  %7841 = fmul fast float %7800, %7840
  %7842 = fmul fast float %7801, %7840
  %7843 = fmul fast float %7802, %7840
  br label %7844

; <label>:7844                                    ; preds = %7797, %7393
  %7845 = phi float [ %7798, %7797 ], [ 0.000000e+00, %7393 ]
  %7846 = phi float [ %7839, %7797 ], [ 1.000000e+00, %7393 ]
  %7847 = phi float [ %7841, %7797 ], [ 0.000000e+00, %7393 ]
  %7848 = phi float [ %7842, %7797 ], [ 0.000000e+00, %7393 ]
  %7849 = phi float [ %7843, %7797 ], [ 0.000000e+00, %7393 ]
  %7850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7851 = extractvalue %dx.types.CBufRet.f32 %7850, 1
  %7852 = fsub fast float 1.000000e+00, %7846
  %7853 = fmul fast float %7852, %7428
  %7854 = fmul fast float %7853, %7851
  %7855 = fsub fast float %7428, %7854
  br i1 %7421, label %7856, label %7885, !dx.controlflow.hints !184

; <label>:7856                                    ; preds = %7844
  %7857 = fmul fast float %7429, %7418
  %7858 = fadd fast float %7857, %7419
  %7859 = call float @dx.op.unary.f32(i32 7, float %7858)  ; Saturate(value)
  %7860 = fmul fast float %7400, %7855
  %7861 = fsub fast float -0.000000e+00, %7860
  %7862 = fmul fast float %7401, %7855
  %7863 = fsub fast float -0.000000e+00, %7862
  %7864 = call float @dx.op.unary.f32(i32 21, float %7861)  ; Exp(value)
  %7865 = call float @dx.op.unary.f32(i32 21, float %7863)  ; Exp(value)
  %7866 = call float @dx.op.binary.f32(i32 35, float %7408, float %7864)  ; FMax(a,b)
  %7867 = call float @dx.op.binary.f32(i32 35, float %7408, float %7865)  ; FMax(a,b)
  %7868 = fsub fast float %7867, %7866
  %7869 = fmul fast float %7868, %7859
  %7870 = fadd fast float %7869, %7866
  %7871 = call float @dx.op.unary.f32(i32 7, float %7870)  ; Saturate(value)
  %7872 = fsub fast float %7405, %7410
  %7873 = fsub fast float %7406, %7411
  %7874 = fsub fast float %7407, %7412
  %7875 = fmul fast float %7859, %7872
  %7876 = fmul fast float %7859, %7873
  %7877 = fmul fast float %7859, %7874
  %7878 = fadd fast float %7875, %7410
  %7879 = fadd fast float %7876, %7411
  %7880 = fadd fast float %7877, %7412
  %7881 = fsub fast float 1.000000e+00, %7871
  %7882 = fmul fast float %7881, %7878
  %7883 = fmul fast float %7881, %7879
  %7884 = fmul fast float %7881, %7880
  br label %7944

; <label>:7885                                    ; preds = %7844
  %7886 = fmul fast float %7855, %7417
  %7887 = call float @dx.op.unary.f32(i32 7, float %7886)  ; Saturate(value)
  %7888 = fsub fast float 2.000000e+00, %7887
  %7889 = fmul fast float %7887, 9.921875e-01
  %7890 = fmul fast float %7889, %7888
  %7891 = fadd fast float %7890, 3.906250e-03
  %7892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7891, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7893 = extractvalue %dx.types.ResRet.f32 %7892, 0
  %7894 = fsub fast float %7887, %7893
  %7895 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7894)  ; FMax(a,b)
  %7896 = fmul fast float %7403, %7384
  %7897 = call float @dx.op.unary.f32(i32 6, float %7896)  ; FAbs(value)
  %7898 = fcmp fast ogt float %7897, 0x3EB0C6F7A0000000
  br i1 %7898, label %7899, label %7905, !dx.controlflow.hints !185

; <label>:7899                                    ; preds = %7885
  %7900 = fmul fast float %7896, 0xBFF7154760000000
  %7901 = call float @dx.op.unary.f32(i32 21, float %7900)  ; Exp(value)
  %7902 = fsub fast float 1.000000e+00, %7901
  %7903 = fdiv fast float %7902, %7896
  %7904 = fmul fast float %7903, %7413
  br label %7905

; <label>:7905                                    ; preds = %7899, %7885
  %7906 = phi float [ %7904, %7899 ], [ %7413, %7885 ]
  %7907 = fadd fast float %7906, %7415
  %7908 = fmul fast float %7907, %7895
  %7909 = fmul fast float %7400, %7908
  %7910 = fsub fast float -0.000000e+00, %7909
  %7911 = fmul fast float %7401, %7908
  %7912 = fsub fast float -0.000000e+00, %7911
  %7913 = fmul fast float %7402, %7908
  %7914 = fsub fast float -0.000000e+00, %7913
  %7915 = call float @dx.op.unary.f32(i32 21, float %7910)  ; Exp(value)
  %7916 = call float @dx.op.unary.f32(i32 21, float %7912)  ; Exp(value)
  %7917 = call float @dx.op.unary.f32(i32 21, float %7914)  ; Exp(value)
  %7918 = fmul fast float %7429, %7429
  %7919 = fadd fast float %7918, 1.000000e+00
  %7920 = fmul fast float %7919, 0x3FAE8EC8A0000000
  %7921 = fmul fast float %7920, %7410
  %7922 = fmul fast float %7920, %7411
  %7923 = fmul fast float %7920, %7412
  %7924 = fmul fast float %7429, %7408
  %7925 = fsub fast float 1.000000e+00, %7924
  %7926 = fmul fast float %7408, %7408
  %7927 = fsub fast float 1.000000e+00, %7926
  %7928 = fmul fast float %7927, 0x3FB45F3060000000
  %7929 = fmul fast float %7925, %7925
  %7930 = fdiv fast float 1.000000e+00, %7929
  %7931 = fmul fast float %7928, %7930
  %7932 = fmul fast float %7931, %7405
  %7933 = fmul fast float %7931, %7406
  %7934 = fmul fast float %7931, %7407
  %7935 = fadd fast float %7932, %7921
  %7936 = fadd fast float %7933, %7922
  %7937 = fadd fast float %7934, %7923
  %7938 = fsub fast float 1.000000e+00, %7915
  %7939 = fsub fast float 1.000000e+00, %7916
  %7940 = fsub fast float 1.000000e+00, %7917
  %7941 = fmul fast float %7935, %7938
  %7942 = fmul fast float %7936, %7939
  %7943 = fmul fast float %7937, %7940
  br label %7944

; <label>:7944                                    ; preds = %7905, %7856
  %7945 = phi float [ %7882, %7856 ], [ %7941, %7905 ]
  %7946 = phi float [ %7883, %7856 ], [ %7942, %7905 ]
  %7947 = phi float [ %7884, %7856 ], [ %7943, %7905 ]
  %7948 = phi float [ %7871, %7856 ], [ %7915, %7905 ]
  %7949 = phi float [ %7871, %7856 ], [ %7916, %7905 ]
  %7950 = phi float [ %7871, %7856 ], [ %7917, %7905 ]
  br i1 %7437, label %7951, label %8149, !dx.controlflow.hints !186

; <label>:7951                                    ; preds = %7944
  %7952 = extractvalue %dx.types.CBufRet.f32 %7850, 0
  %7953 = fmul fast float %7952, %7852
  %7954 = fsub fast float %7847, %7945
  %7955 = fsub fast float %7848, %7946
  %7956 = fsub fast float %7849, %7947
  %7957 = fmul fast float %7953, %7954
  %7958 = fmul fast float %7953, %7955
  %7959 = fmul fast float %7953, %7956
  %7960 = fadd fast float %7957, %7945
  %7961 = fadd fast float %7958, %7946
  %7962 = fadd fast float %7959, %7947
  %7963 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7948)  ; FMax(a,b)
  %7964 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7949)  ; FMax(a,b)
  %7965 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7950)  ; FMax(a,b)
  %7966 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7846)  ; FMax(a,b)
  %7967 = call float @dx.op.binary.f32(i32 35, float %7845, float %7855)  ; FMax(a,b)
  %7968 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7967)  ; FMax(a,b)
  %7969 = fdiv fast float %7845, %7968
  %7970 = call float @dx.op.unary.f32(i32 7, float %7969)  ; Saturate(value)
  %7971 = fdiv fast float %7855, %7968
  %7972 = call float @dx.op.unary.f32(i32 7, float %7971)  ; Saturate(value)
  %7973 = fcmp fast une float %7966, 1.000000e+00
  br i1 %7973, label %7974, label %7987, !dx.controlflow.hints !187

; <label>:7974                                    ; preds = %7951
  %7975 = call float @dx.op.unary.f32(i32 23, float %7966)  ; Log(value)
  %7976 = fmul fast float %7975, 0x3FE62E4300000000
  %7977 = fmul fast float %7847, %7976
  %7978 = fsub fast float -0.000000e+00, %7977
  %7979 = fmul fast float %7848, %7976
  %7980 = fsub fast float -0.000000e+00, %7979
  %7981 = fmul fast float %7849, %7976
  %7982 = fsub fast float -0.000000e+00, %7981
  %7983 = fsub fast float 1.000000e+00, %7966
  %7984 = fdiv fast float %7978, %7983
  %7985 = fdiv fast float %7980, %7983
  %7986 = fdiv fast float %7982, %7983
  br label %7987

; <label>:7987                                    ; preds = %7974, %7951
  %7988 = phi float [ %7984, %7974 ], [ %7847, %7951 ]
  %7989 = phi float [ %7985, %7974 ], [ %7848, %7951 ]
  %7990 = phi float [ %7986, %7974 ], [ %7849, %7951 ]
  %7991 = phi float [ %7976, %7974 ], [ 0.000000e+00, %7951 ]
  %7992 = fcmp fast une float %7963, 1.000000e+00
  br i1 %7992, label %7993, label %8000, !dx.controlflow.hints !188

; <label>:7993                                    ; preds = %7987
  %7994 = call float @dx.op.unary.f32(i32 23, float %7963)  ; Log(value)
  %7995 = fmul fast float %7994, 0x3FE62E4300000000
  %7996 = fmul fast float %7960, %7995
  %7997 = fsub fast float -0.000000e+00, %7996
  %7998 = fsub fast float 1.000000e+00, %7963
  %7999 = fdiv fast float %7997, %7998
  br label %8000

; <label>:8000                                    ; preds = %7993, %7987
  %8001 = phi float [ %7999, %7993 ], [ %7960, %7987 ]
  %8002 = phi float [ %7995, %7993 ], [ 0.000000e+00, %7987 ]
  %8003 = fcmp fast une float %7964, 1.000000e+00
  br i1 %8003, label %8004, label %8011, !dx.controlflow.hints !188

; <label>:8004                                    ; preds = %8000
  %8005 = call float @dx.op.unary.f32(i32 23, float %7964)  ; Log(value)
  %8006 = fmul fast float %8005, 0x3FE62E4300000000
  %8007 = fmul fast float %7961, %8006
  %8008 = fsub fast float -0.000000e+00, %8007
  %8009 = fsub fast float 1.000000e+00, %7964
  %8010 = fdiv fast float %8008, %8009
  br label %8011

; <label>:8011                                    ; preds = %8004, %8000
  %8012 = phi float [ %8010, %8004 ], [ %7961, %8000 ]
  %8013 = phi float [ %8006, %8004 ], [ 0.000000e+00, %8000 ]
  %8014 = fcmp fast une float %7965, 1.000000e+00
  br i1 %8014, label %8015, label %8022, !dx.controlflow.hints !188

; <label>:8015                                    ; preds = %8011
  %8016 = call float @dx.op.unary.f32(i32 23, float %7965)  ; Log(value)
  %8017 = fmul fast float %8016, 0x3FE62E4300000000
  %8018 = fmul fast float %7962, %8017
  %8019 = fsub fast float -0.000000e+00, %8018
  %8020 = fsub fast float 1.000000e+00, %7965
  %8021 = fdiv fast float %8019, %8020
  br label %8022

; <label>:8022                                    ; preds = %8015, %8011
  %8023 = phi float [ %8021, %8015 ], [ %7962, %8011 ]
  %8024 = phi float [ %8017, %8015 ], [ 0.000000e+00, %8011 ]
  %8025 = fmul fast float %7988, %7972
  %8026 = fmul fast float %7989, %7972
  %8027 = fmul fast float %7990, %7972
  %8028 = fmul fast float %7991, %7972
  %8029 = fmul fast float %8001, %7970
  %8030 = fmul fast float %8012, %7970
  %8031 = fmul fast float %8023, %7970
  %8032 = fmul fast float %8002, %7970
  %8033 = fmul fast float %8013, %7970
  %8034 = fmul fast float %8024, %7970
  %8035 = fadd fast float %8029, %8025
  %8036 = fadd fast float %8030, %8026
  %8037 = fadd fast float %8031, %8027
  %8038 = fadd fast float %8032, %8028
  %8039 = fadd fast float %8033, %8028
  %8040 = fadd fast float %8034, %8028
  %8041 = fcmp fast une float %8038, 0.000000e+00
  br i1 %8041, label %8042, label %8049, !dx.controlflow.hints !189

; <label>:8042                                    ; preds = %8022
  %8043 = fmul fast float %8038, 0x3FF7154760000000
  %8044 = call float @dx.op.unary.f32(i32 21, float %8043)  ; Exp(value)
  %8045 = fsub fast float 1.000000e+00, %8044
  %8046 = fmul fast float %8035, %8045
  %8047 = fsub fast float -0.000000e+00, %8046
  %8048 = fdiv fast float %8047, %8038
  br label %8049

; <label>:8049                                    ; preds = %8042, %8022
  %8050 = phi float [ %8044, %8042 ], [ 1.000000e+00, %8022 ]
  %8051 = phi float [ %8048, %8042 ], [ %8035, %8022 ]
  %8052 = fcmp fast une float %8039, 0.000000e+00
  br i1 %8052, label %8053, label %8060, !dx.controlflow.hints !189

; <label>:8053                                    ; preds = %8049
  %8054 = fmul fast float %8039, 0x3FF7154760000000
  %8055 = call float @dx.op.unary.f32(i32 21, float %8054)  ; Exp(value)
  %8056 = fsub fast float 1.000000e+00, %8055
  %8057 = fmul fast float %8036, %8056
  %8058 = fsub fast float -0.000000e+00, %8057
  %8059 = fdiv fast float %8058, %8039
  br label %8060

; <label>:8060                                    ; preds = %8053, %8049
  %8061 = phi float [ %8055, %8053 ], [ 1.000000e+00, %8049 ]
  %8062 = phi float [ %8059, %8053 ], [ %8036, %8049 ]
  %8063 = fcmp fast une float %8040, 0.000000e+00
  br i1 %8063, label %8064, label %8071, !dx.controlflow.hints !189

; <label>:8064                                    ; preds = %8060
  %8065 = fmul fast float %8040, 0x3FF7154760000000
  %8066 = call float @dx.op.unary.f32(i32 21, float %8065)  ; Exp(value)
  %8067 = fsub fast float 1.000000e+00, %8066
  %8068 = fmul fast float %8037, %8067
  %8069 = fsub fast float -0.000000e+00, %8068
  %8070 = fdiv fast float %8069, %8040
  br label %8071

; <label>:8071                                    ; preds = %8064, %8060
  %8072 = phi float [ %8066, %8064 ], [ 1.000000e+00, %8060 ]
  %8073 = phi float [ %8070, %8064 ], [ %8037, %8060 ]
  %8074 = fcmp fast ogt float %7970, %7972
  br i1 %8074, label %8075, label %8095

; <label>:8075                                    ; preds = %8071
  %8076 = fsub fast float 1.000000e+00, %7972
  %8077 = fmul fast float %7988, %8076
  %8078 = fmul fast float %7989, %8076
  %8079 = fmul fast float %7990, %8076
  %8080 = fmul fast float %7991, %8076
  %8081 = fcmp fast une float %8080, 0.000000e+00
  br i1 %8081, label %8082, label %8133, !dx.controlflow.hints !190

; <label>:8082                                    ; preds = %8075
  %8083 = fmul fast float %8080, 0x3FF7154760000000
  %8084 = call float @dx.op.unary.f32(i32 21, float %8083)  ; Exp(value)
  %8085 = fsub fast float 1.000000e+00, %8084
  %8086 = fmul fast float %8077, %8085
  %8087 = fsub fast float -0.000000e+00, %8086
  %8088 = fmul fast float %8078, %8085
  %8089 = fsub fast float -0.000000e+00, %8088
  %8090 = fmul fast float %8079, %8085
  %8091 = fsub fast float -0.000000e+00, %8090
  %8092 = fdiv fast float %8087, %8080
  %8093 = fdiv fast float %8089, %8080
  %8094 = fdiv fast float %8091, %8080
  br label %8133

; <label>:8095                                    ; preds = %8071
  %8096 = fsub fast float 1.000000e+00, %7970
  %8097 = fmul fast float %8001, %8096
  %8098 = fmul fast float %8012, %8096
  %8099 = fmul fast float %8023, %8096
  %8100 = fmul fast float %8002, %8096
  %8101 = fmul fast float %8013, %8096
  %8102 = fmul fast float %8024, %8096
  %8103 = fcmp fast une float %8100, 0.000000e+00
  br i1 %8103, label %8104, label %8111, !dx.controlflow.hints !189

; <label>:8104                                    ; preds = %8095
  %8105 = fmul fast float %8100, 0x3FF7154760000000
  %8106 = call float @dx.op.unary.f32(i32 21, float %8105)  ; Exp(value)
  %8107 = fsub fast float 1.000000e+00, %8106
  %8108 = fmul fast float %8097, %8107
  %8109 = fsub fast float -0.000000e+00, %8108
  %8110 = fdiv fast float %8109, %8100
  br label %8111

; <label>:8111                                    ; preds = %8104, %8095
  %8112 = phi float [ %8110, %8104 ], [ %8097, %8095 ]
  %8113 = phi float [ %8106, %8104 ], [ 1.000000e+00, %8095 ]
  %8114 = fcmp fast une float %8101, 0.000000e+00
  br i1 %8114, label %8115, label %8122, !dx.controlflow.hints !189

; <label>:8115                                    ; preds = %8111
  %8116 = fmul fast float %8101, 0x3FF7154760000000
  %8117 = call float @dx.op.unary.f32(i32 21, float %8116)  ; Exp(value)
  %8118 = fsub fast float 1.000000e+00, %8117
  %8119 = fmul fast float %8098, %8118
  %8120 = fsub fast float -0.000000e+00, %8119
  %8121 = fdiv fast float %8120, %8101
  br label %8122

; <label>:8122                                    ; preds = %8115, %8111
  %8123 = phi float [ %8121, %8115 ], [ %8098, %8111 ]
  %8124 = phi float [ %8117, %8115 ], [ 1.000000e+00, %8111 ]
  %8125 = fcmp fast une float %8102, 0.000000e+00
  br i1 %8125, label %8126, label %8133, !dx.controlflow.hints !189

; <label>:8126                                    ; preds = %8122
  %8127 = fmul fast float %8102, 0x3FF7154760000000
  %8128 = call float @dx.op.unary.f32(i32 21, float %8127)  ; Exp(value)
  %8129 = fsub fast float 1.000000e+00, %8128
  %8130 = fmul fast float %8099, %8129
  %8131 = fsub fast float -0.000000e+00, %8130
  %8132 = fdiv fast float %8131, %8102
  br label %8133

; <label>:8133                                    ; preds = %8126, %8122, %8082, %8075
  %8134 = phi float [ %8132, %8126 ], [ %8094, %8082 ], [ %8079, %8075 ], [ %8099, %8122 ]
  %8135 = phi float [ %8123, %8126 ], [ %8093, %8082 ], [ %8078, %8075 ], [ %8123, %8122 ]
  %8136 = phi float [ %8112, %8126 ], [ %8092, %8082 ], [ %8077, %8075 ], [ %8112, %8122 ]
  %8137 = phi float [ %8128, %8126 ], [ %8084, %8082 ], [ 1.000000e+00, %8075 ], [ 1.000000e+00, %8122 ]
  %8138 = phi float [ %8124, %8126 ], [ %8084, %8082 ], [ 1.000000e+00, %8075 ], [ %8124, %8122 ]
  %8139 = phi float [ %8113, %8126 ], [ %8084, %8082 ], [ 1.000000e+00, %8075 ], [ %8113, %8122 ]
  %8140 = fmul fast float %8139, %8051
  %8141 = fmul fast float %8138, %8062
  %8142 = fmul fast float %8137, %8073
  %8143 = fadd fast float %8140, %8136
  %8144 = fadd fast float %8141, %8135
  %8145 = fadd fast float %8142, %8134
  %8146 = fmul fast float %8139, %8050
  %8147 = fmul fast float %8138, %8061
  %8148 = fmul fast float %8137, %8072
  br label %8149

; <label>:8149                                    ; preds = %8133, %7944
  %8150 = phi float [ %8148, %8133 ], [ %7950, %7944 ]
  %8151 = phi float [ %8147, %8133 ], [ %7949, %7944 ]
  %8152 = phi float [ %8146, %8133 ], [ %7948, %7944 ]
  %8153 = phi float [ %8145, %8133 ], [ %7947, %7944 ]
  %8154 = phi float [ %8144, %8133 ], [ %7946, %7944 ]
  %8155 = phi float [ %8143, %8133 ], [ %7945, %7944 ]
  %8156 = fmul fast float %8155, %7099
  %8157 = fmul fast float %8154, %7099
  %8158 = fmul fast float %8153, %7099
  %8159 = fmul fast float %8152, %7392
  %8160 = call float @dx.op.dot3.f32(i32 55, float %8152, float %8151, float %8150, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8161 = call float @dx.op.dot3.f32(i32 55, float %8156, float %8157, float %8158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8162 = select i1 %243, float %8160, float %8152
  %8163 = select i1 %243, float %8160, float %8151
  %8164 = select i1 %243, float 1.000000e+00, float %8150
  %8165 = select i1 %243, float %8161, float %8156
  %8166 = select i1 %243, float 0.000000e+00, float %8157
  %8167 = select i1 %243, float 0.000000e+00, float %8158
  %8168 = fmul fast float %8162, %7386
  %8169 = fmul fast float %8163, %7387
  %8170 = fmul fast float %8164, %7388
  %8171 = fadd fast float %8168, %8165
  %8172 = fadd fast float %8169, %8166
  %8173 = fadd fast float %8167, %8170
  %8174 = fmul fast float %8162, %7389
  %8175 = fmul fast float %8163, %7390
  %8176 = fmul fast float %8164, %7391
  %8177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8178 = extractvalue %dx.types.CBufRet.i32 %8177, 0
  %8179 = icmp eq i32 %8178, 0
  br i1 %8179, label %8547, label %8180, !dx.controlflow.hints !191

; <label>:8180                                    ; preds = %8149
  %8181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8182 = extractvalue %dx.types.CBufRet.f32 %8181, 2
  %8183 = extractvalue %dx.types.CBufRet.f32 %8181, 3
  %8184 = fmul fast float %8182, %105
  %8185 = fmul fast float %8183, %106
  %8186 = fmul fast float %8184, 2.000000e+00
  %8187 = fmul fast float %8185, 2.000000e+00
  %8188 = fsub fast float 1.000000e+00, %8186
  %8189 = fsub fast float 1.000000e+00, %8187
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.CBufRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.CBufRet.f32 %8190, 2
  %8194 = fmul fast float %8188, %8191
  %8195 = fmul fast float %8188, %8192
  %8196 = fmul fast float %8188, %8193
  %8197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8198 = extractvalue %dx.types.CBufRet.f32 %8197, 0
  %8199 = extractvalue %dx.types.CBufRet.f32 %8197, 1
  %8200 = extractvalue %dx.types.CBufRet.f32 %8197, 2
  %8201 = fmul fast float %8189, %8198
  %8202 = fmul fast float %8189, %8199
  %8203 = fmul fast float %8189, %8200
  %8204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8205 = extractvalue %dx.types.CBufRet.f32 %8204, 0
  %8206 = extractvalue %dx.types.CBufRet.f32 %8204, 1
  %8207 = extractvalue %dx.types.CBufRet.f32 %8204, 2
  %8208 = fadd fast float %8201, %8205
  %8209 = fadd fast float %8208, %8194
  %8210 = fadd fast float %8202, %8206
  %8211 = fadd fast float %8210, %8195
  %8212 = fadd fast float %8203, %8207
  %8213 = fadd fast float %8212, %8196
  %8214 = fmul fast float %8209, %7385
  %8215 = fmul fast float %8211, %7385
  %8216 = fmul fast float %8213, %7385
  %8217 = fmul fast float %8214, %8214
  %8218 = fmul fast float %8215, %8215
  %8219 = fadd fast float %8217, %8218
  %8220 = fmul fast float %8216, %8216
  %8221 = fadd fast float %8219, %8220
  %8222 = call float @dx.op.unary.f32(i32 24, float %8221)  ; Sqrt(value)
  %8223 = extractvalue %dx.types.CBufRet.f32 %7110, 0
  %8224 = fsub fast float %8222, %8223
  %8225 = extractvalue %dx.types.CBufRet.f32 %7110, 2
  %8226 = fmul fast float %8224, %8225
  %8227 = call float @dx.op.unary.f32(i32 7, float %8226)  ; Saturate(value)
  %8228 = fadd fast float %8227, -5.000000e-01
  %8229 = fmul fast float %8228, 2.000000e+00
  %8230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8231 = extractvalue %dx.types.CBufRet.f32 %8230, 2
  %8232 = call float @dx.op.binary.f32(i32 36, float %8231, float %8229)  ; FMin(a,b)
  %8233 = fsub fast float -0.000000e+00, %8231
  %8234 = fcmp fast ogt float %8232, %8233
  br i1 %8234, label %8235, label %8547, !dx.controlflow.hints !192

; <label>:8235                                    ; preds = %8180
  %8236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8237 = extractvalue %dx.types.CBufRet.f32 %8236, 3
  %8238 = fcmp fast ogt float %8237, 0.000000e+00
  br i1 %8238, label %8239, label %8314, !dx.controlflow.hints !193

; <label>:8239                                    ; preds = %8235
  %8240 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %8241 = extractvalue %dx.types.Dimensions %8240, 0
  %8242 = sitofp i32 %8241 to float
  %8243 = extractvalue %dx.types.Dimensions %8240, 1
  %8244 = sitofp i32 %8243 to float
  %8245 = fmul fast float %8184, %8242
  %8246 = fmul fast float %8185, %8244
  %8247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8248 = extractvalue %dx.types.CBufRet.f32 %8247, 1
  %8249 = fsub fast float -0.000000e+00, %8248
  %8250 = fptoui float %8249 to i32
  %8251 = fptoui float %8245 to i32
  %8252 = fptoui float %8246 to i32
  %8253 = and i32 %8250, 31
  %8254 = lshr i32 %8251, %8253
  %8255 = lshr i32 %8252, %8253
  %8256 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %8250, i32 %8254, i32 %8255, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8257 = extractvalue %dx.types.ResRet.f32 %8256, 0
  %8258 = fcmp fast olt float %8257, -1.000000e+00
  %8259 = fcmp fast ogt float %8257, -1.000000e+00
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 1
  %8262 = select i1 %8259, float %8261, float 1.000000e+00
  %8263 = fadd fast float %8257, 1.000000e+00
  %8264 = fmul fast float %8262, %8263
  %8265 = call float @dx.op.unary.f32(i32 6, float %8264)  ; FAbs(value)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8260, 3
  %8267 = fcmp fast oge float %8265, %8266
  %8268 = select i1 %8267, float 0x4197782600000000, float %8265
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 0
  %8271 = extractvalue %dx.types.CBufRet.f32 %8269, 1
  %8272 = extractvalue %dx.types.CBufRet.f32 %8269, 2
  %8273 = select i1 %8258, float %8270, float %8191
  %8274 = select i1 %8258, float %8271, float %8192
  %8275 = select i1 %8258, float %8272, float %8193
  %8276 = fmul fast float %8273, %8188
  %8277 = fmul fast float %8274, %8188
  %8278 = fmul fast float %8275, %8188
  %8279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8280 = extractvalue %dx.types.CBufRet.f32 %8279, 0
  %8281 = extractvalue %dx.types.CBufRet.f32 %8279, 1
  %8282 = extractvalue %dx.types.CBufRet.f32 %8279, 2
  %8283 = select i1 %8258, float %8280, float %8198
  %8284 = select i1 %8258, float %8281, float %8199
  %8285 = select i1 %8258, float %8282, float %8200
  %8286 = fmul fast float %8283, %8189
  %8287 = fmul fast float %8284, %8189
  %8288 = fmul fast float %8285, %8189
  %8289 = fadd fast float %8286, %8276
  %8290 = fadd fast float %8287, %8277
  %8291 = fadd fast float %8288, %8278
  %8292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8293 = extractvalue %dx.types.CBufRet.f32 %8292, 0
  %8294 = extractvalue %dx.types.CBufRet.f32 %8292, 1
  %8295 = extractvalue %dx.types.CBufRet.f32 %8292, 2
  %8296 = select i1 %8258, float %8293, float %8205
  %8297 = select i1 %8258, float %8294, float %8206
  %8298 = select i1 %8258, float %8295, float %8207
  %8299 = fadd fast float %8289, %8296
  %8300 = fadd fast float %8290, %8297
  %8301 = fadd fast float %8291, %8298
  %8302 = fmul fast float %8299, %8268
  %8303 = fmul fast float %8300, %8268
  %8304 = fmul fast float %8301, %8268
  %8305 = fmul fast float %8302, %8302
  %8306 = fmul fast float %8303, %8303
  %8307 = fadd fast float %8305, %8306
  %8308 = fmul fast float %8304, %8304
  %8309 = fadd fast float %8307, %8308
  %8310 = call float @dx.op.unary.f32(i32 24, float %8309)  ; Sqrt(value)
  %8311 = fsub fast float %8310, %8223
  %8312 = fmul fast float %8311, %8225
  %8313 = call float @dx.op.unary.f32(i32 7, float %8312)  ; Saturate(value)
  br label %8314

; <label>:8314                                    ; preds = %8239, %8235
  %8315 = phi float [ %8313, %8239 ], [ 1.000000e+00, %8235 ]
  %8316 = fmul fast float %8232, 5.000000e-01
  %8317 = fadd fast float %8316, 5.000000e-01
  %8318 = call float @dx.op.unary.f32(i32 22, float %8317)  ; Frc(value)
  %8319 = call float @dx.op.unary.f32(i32 27, float %8318)  ; Round_ni(value)
  %8320 = call float @dx.op.unary.f32(i32 22, float %8318)  ; Frc(value)
  %8321 = fmul fast float %8320, 2.000000e+00
  %8322 = fadd fast float %8321, -1.000000e+00
  %8323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %8184, float %8185, float %8319, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8324 = extractvalue %dx.types.ResRet.f32 %8323, 0
  %8325 = extractvalue %dx.types.ResRet.f32 %8323, 1
  %8326 = extractvalue %dx.types.ResRet.f32 %8323, 2
  %8327 = extractvalue %dx.types.ResRet.f32 %8323, 3
  %8328 = fadd fast float %8324, -5.000000e-01
  %8329 = fadd fast float %8326, -5.000000e-01
  %8330 = fmul fast float %8328, 0xBFD5555560000000
  %8331 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8329, float %8330)  ; FMad(a,b,c)
  %8332 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8325, float 0.000000e+00)  ; FMad(a,b,c)
  %8333 = fadd fast float %8332, %8327
  %8334 = fmul fast float %8328, -7.500000e-01
  %8335 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8329, float %8334)  ; FMad(a,b,c)
  %8336 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8325, float 0.000000e+00)  ; FMad(a,b,c)
  %8337 = fadd fast float %8336, %8327
  %8338 = call float @dx.op.binary.f32(i32 35, float %8331, float -1.000000e+00)  ; FMax(a,b)
  %8339 = call float @dx.op.binary.f32(i32 35, float %8333, float -1.000000e+00)  ; FMax(a,b)
  %8340 = call float @dx.op.binary.f32(i32 35, float %8335, float -1.000000e+00)  ; FMax(a,b)
  %8341 = call float @dx.op.binary.f32(i32 35, float %8337, float -1.000000e+00)  ; FMax(a,b)
  %8342 = call float @dx.op.binary.f32(i32 36, float %8338, float 1.000000e+00)  ; FMin(a,b)
  %8343 = call float @dx.op.binary.f32(i32 36, float %8339, float 1.000000e+00)  ; FMin(a,b)
  %8344 = call float @dx.op.binary.f32(i32 36, float %8340, float 1.000000e+00)  ; FMin(a,b)
  %8345 = call float @dx.op.binary.f32(i32 36, float %8341, float 1.000000e+00)  ; FMin(a,b)
  %8346 = fcmp fast olt float %8342, 0x3FEFFF8020000000
  br i1 %8346, label %8347, label %8462, !dx.controlflow.hints !194

; <label>:8347                                    ; preds = %8314
  %8348 = extractvalue %dx.types.CBufRet.f32 %8230, 3
  %8349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8350 = extractvalue %dx.types.CBufRet.f32 %8349, 0
  %8351 = extractvalue %dx.types.CBufRet.f32 %8349, 1
  %8352 = extractvalue %dx.types.CBufRet.f32 %8349, 2
  %8353 = extractvalue %dx.types.CBufRet.f32 %8349, 3
  %8354 = fsub fast float %8350, %8342
  %8355 = fsub fast float %8351, %8343
  %8356 = fsub fast float %8352, %8344
  %8357 = fsub fast float %8353, %8345
  %8358 = fmul fast float %8354, %8348
  %8359 = fmul fast float %8355, %8348
  %8360 = fmul fast float %8356, %8348
  %8361 = fmul fast float %8357, %8348
  %8362 = fadd fast float %8358, %8342
  %8363 = fadd fast float %8359, %8343
  %8364 = fsub fast float -0.000000e+00, %8363
  %8365 = fadd fast float %8360, %8344
  %8366 = fadd fast float %8361, %8345
  %8367 = fmul fast float %8362, %8362
  %8368 = fsub fast float %8363, %8367
  %8369 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8368)  ; FMax(a,b)
  %8370 = fdiv fast float 1.000000e+00, %8369
  %8371 = fmul fast float %8363, %8362
  %8372 = fsub fast float %8365, %8371
  %8373 = fsub fast float %8322, %8362
  %8374 = fmul fast float %8322, %8322
  %8375 = fsub fast float %8374, %8363
  %8376 = fmul fast float %8373, %8370
  %8377 = fmul fast float %8376, %8372
  %8378 = fsub fast float %8375, %8377
  %8379 = fmul fast float %8363, %8363
  %8380 = fsub fast float %8366, %8379
  %8381 = fmul fast float %8372, %8372
  %8382 = fmul fast float %8381, %8370
  %8383 = fsub fast float %8380, %8382
  %8384 = fdiv fast float %8378, %8383
  %8385 = fmul fast float %8372, %8384
  %8386 = fsub fast float %8373, %8385
  %8387 = fmul fast float %8386, %8370
  %8388 = fmul fast float %8387, %8362
  %8389 = fsub fast float 1.000000e+00, %8388
  %8390 = fmul fast float %8363, %8384
  %8391 = fsub fast float %8389, %8390
  %8392 = fmul fast float %8387, %8387
  %8393 = fmul fast float %8384, 4.000000e+00
  %8394 = fmul fast float %8393, %8391
  %8395 = fsub fast float %8392, %8394
  %8396 = call float @dx.op.unary.f32(i32 24, float %8395)  ; Sqrt(value)
  %8397 = fcmp fast oge float %8387, 0.000000e+00
  %8398 = fsub fast float -0.000000e+00, %8396
  %8399 = select i1 %8397, float %8398, float %8396
  %8400 = fsub fast float %8399, %8387
  %8401 = fdiv fast float %8400, %8384
  %8402 = fdiv fast float %8391, %8400
  %8403 = fmul fast float %8401, 5.000000e-01
  %8404 = fmul fast float %8402, 2.000000e+00
  %8405 = select i1 %8397, float %8403, float %8404
  %8406 = select i1 %8397, float %8404, float %8403
  %8407 = call float @dx.op.binary.f32(i32 35, float %8405, float %8406)  ; FMax(a,b)
  %8408 = call float @dx.op.binary.f32(i32 36, float %8405, float %8406)  ; FMin(a,b)
  %8409 = fcmp fast ogt float %8322, %8408
  br i1 %8409, label %8410, label %8420

; <label>:8410                                    ; preds = %8347
  %8411 = fsub fast float %8322, %8408
  %8412 = fsub fast float %8407, %8408
  %8413 = fmul fast float %8411, %8412
  %8414 = fmul fast float %8407, %8322
  %8415 = fadd fast float %8407, %8322
  %8416 = fmul fast float %8415, %8362
  %8417 = fadd fast float %8414, %8363
  %8418 = fsub fast float %8417, %8416
  %8419 = fdiv fast float %8418, %8413
  br label %8420

; <label>:8420                                    ; preds = %8410, %8347
  %8421 = phi float [ %8419, %8410 ], [ 0.000000e+00, %8347 ]
  %8422 = fcmp fast ogt float %8322, %8407
  %8423 = fsub fast float %8322, %8407
  br i1 %8422, label %8424, label %8434

; <label>:8424                                    ; preds = %8420
  %8425 = fsub fast float %8407, %8408
  %8426 = fmul fast float %8425, %8423
  %8427 = fmul fast float %8408, %8322
  %8428 = fadd fast float %8408, %8322
  %8429 = fmul fast float %8428, %8362
  %8430 = fsub fast float %8364, %8427
  %8431 = fadd fast float %8430, %8429
  %8432 = fdiv fast float %8431, %8426
  %8433 = fadd fast float %8432, %8421
  br label %8434

; <label>:8434                                    ; preds = %8424, %8420
  %8435 = phi float [ %8433, %8424 ], [ %8421, %8420 ]
  %8436 = fsub fast float %8322, %8408
  %8437 = fmul fast float %8436, %8423
  %8438 = fmul fast float %8408, %8407
  %8439 = fadd fast float %8408, %8407
  %8440 = fmul fast float %8439, %8362
  %8441 = fadd fast float %8438, %8363
  %8442 = fsub fast float %8441, %8440
  %8443 = fdiv fast float %8442, %8437
  %8444 = call float @dx.op.unary.f32(i32 7, float %8435)  ; Saturate(value)
  %8445 = fcmp fast oeq float %7111, 0.000000e+00
  %8446 = extractvalue %dx.types.CBufRet.f32 %8230, 0
  %8447 = fcmp fast oeq float %8446, 0.000000e+00
  %8448 = or i1 %8445, %8447
  %8449 = fmul fast float %8446, 2.000000e+00
  %8450 = fadd fast float %8231, %8232
  %8451 = fdiv fast float %8450, %8449
  %8452 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8453 = fmul fast float %8452, 2.000000e+00
  %8454 = fsub fast float 3.000000e+00, %8453
  %8455 = fmul fast float %8452, %8452
  %8456 = fmul fast float %8455, %8454
  %8457 = select i1 %8448, float 1.000000e+00, float %8456
  %8458 = fmul fast float %8443, %7111
  %8459 = fadd fast float %8444, %8458
  %8460 = call float @dx.op.unary.f32(i32 7, float %8459)  ; Saturate(value)
  %8461 = fmul fast float %8457, %8460
  br label %8462

; <label>:8462                                    ; preds = %8434, %8314
  %8463 = phi float [ %8461, %8434 ], [ 0.000000e+00, %8314 ]
  %8464 = fsub fast float 1.000000e+00, %8463
  %8465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %8184, float %8185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8466 = extractvalue %dx.types.ResRet.f32 %8465, 0
  %8467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8468 = extractvalue %dx.types.CBufRet.i32 %8467, 2
  %8469 = icmp eq i32 %8468, 0
  br i1 %8469, label %8475, label %8470

; <label>:8470                                    ; preds = %8462
  %8471 = call float @dx.op.unary.f32(i32 7, float %8463)  ; Saturate(value)
  %8472 = fadd fast float %8466, -1.000000e+00
  %8473 = fmul fast float %8471, %8472
  %8474 = fadd fast float %8473, 1.000000e+00
  br label %8475

; <label>:8475                                    ; preds = %8470, %8462
  %8476 = phi float [ %8474, %8470 ], [ %8464, %8462 ]
  br i1 %8238, label %8477, label %8495

; <label>:8477                                    ; preds = %8475
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 1
  %8480 = fsub fast float %8315, %8479
  %8481 = call float @dx.op.unary.f32(i32 7, float %8480)  ; Saturate(value)
  %8482 = fsub fast float %8315, %8237
  %8483 = call float @dx.op.unary.f32(i32 7, float %8482)  ; Saturate(value)
  %8484 = fsub fast float %8481, %8483
  %8485 = fsub fast float %8317, %8483
  %8486 = fdiv fast float %8485, %8484
  %8487 = call float @dx.op.unary.f32(i32 7, float %8486)  ; Saturate(value)
  %8488 = fmul fast float %8487, 2.000000e+00
  %8489 = fsub fast float 3.000000e+00, %8488
  %8490 = fsub fast float %8466, %8476
  %8491 = fmul fast float %8487, %8487
  %8492 = fmul fast float %8491, %8490
  %8493 = fmul fast float %8492, %8489
  %8494 = fadd fast float %8493, %8476
  br label %8495

; <label>:8495                                    ; preds = %8477, %8475
  %8496 = phi float [ %8494, %8477 ], [ %8476, %8475 ]
  %8497 = call float @dx.op.binary.f32(i32 35, float %8466, float %8496)  ; FMax(a,b)
  %8498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8499 = extractvalue %dx.types.CBufRet.i32 %8498, 2
  %8500 = and i32 %8499, 1
  %8501 = icmp eq i32 %8500, 0
  %8502 = fcmp fast une float %8497, 1.000000e+00
  %8503 = and i1 %8502, %8501
  br i1 %8503, label %8504, label %8523

; <label>:8504                                    ; preds = %8495
  %8505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %8184, float %8185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8506 = extractvalue %dx.types.ResRet.f32 %8505, 0
  %8507 = extractvalue %dx.types.ResRet.f32 %8505, 1
  %8508 = extractvalue %dx.types.ResRet.f32 %8505, 2
  %8509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8509, 1
  %8511 = fmul fast float %8510, %8506
  %8512 = fmul fast float %8510, %8507
  %8513 = fmul fast float %8510, %8508
  %8514 = fcmp fast ogt float %8466, 0x3FEFFF2E40000000
  %8515 = fsub fast float 1.000000e+00, %8497
  %8516 = fsub fast float 1.000000e+00, %8466
  %8517 = fdiv fast float %8515, %8516
  %8518 = call float @dx.op.unary.f32(i32 7, float %8517)  ; Saturate(value)
  %8519 = select i1 %8514, float 0.000000e+00, float %8518
  %8520 = fmul fast float %8511, %8519
  %8521 = fmul fast float %8512, %8519
  %8522 = fmul fast float %8513, %8519
  br label %8523

; <label>:8523                                    ; preds = %8504, %8495
  %8524 = phi float [ 0.000000e+00, %8495 ], [ %8520, %8504 ]
  %8525 = phi float [ 0.000000e+00, %8495 ], [ %8521, %8504 ]
  %8526 = phi float [ 0.000000e+00, %8495 ], [ %8522, %8504 ]
  %8527 = fmul fast float %8524, %7099
  %8528 = fmul fast float %8525, %7099
  %8529 = fmul fast float %8526, %7099
  %8530 = fmul fast float %8497, %8159
  %8531 = call float @dx.op.dot3.f32(i32 55, float %8497, float %8497, float %8497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8532 = call float @dx.op.dot3.f32(i32 55, float %8527, float %8528, float %8529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8533 = select i1 %243, float %8531, float %8497
  %8534 = select i1 %243, float 1.000000e+00, float %8497
  %8535 = select i1 %243, float %8532, float %8527
  %8536 = select i1 %243, float 0.000000e+00, float %8528
  %8537 = select i1 %243, float 0.000000e+00, float %8529
  %8538 = fmul fast float %8533, %8171
  %8539 = fmul fast float %8533, %8172
  %8540 = fmul fast float %8534, %8173
  %8541 = fadd fast float %8538, %8535
  %8542 = fadd fast float %8539, %8536
  %8543 = fadd fast float %8537, %8540
  %8544 = fmul fast float %8533, %8174
  %8545 = fmul fast float %8533, %8175
  %8546 = fmul fast float %8534, %8176
  br label %8547

; <label>:8547                                    ; preds = %8523, %8180, %8149, %7381
  %8548 = phi float [ %7386, %7381 ], [ %8171, %8149 ], [ %8541, %8523 ], [ %8171, %8180 ]
  %8549 = phi float [ %7387, %7381 ], [ %8172, %8149 ], [ %8542, %8523 ], [ %8172, %8180 ]
  %8550 = phi float [ %7388, %7381 ], [ %8173, %8149 ], [ %8543, %8523 ], [ %8173, %8180 ]
  %8551 = phi float [ %7389, %7381 ], [ %8174, %8149 ], [ %8544, %8523 ], [ %8174, %8180 ]
  %8552 = phi float [ %7390, %7381 ], [ %8175, %8149 ], [ %8545, %8523 ], [ %8175, %8180 ]
  %8553 = phi float [ %7391, %7381 ], [ %8176, %8149 ], [ %8546, %8523 ], [ %8176, %8180 ]
  %8554 = phi float [ %7392, %7381 ], [ %8159, %8149 ], [ %8530, %8523 ], [ %8159, %8180 ]
  %8555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8556 = extractvalue %dx.types.CBufRet.f32 %8555, 2
  %8557 = extractvalue %dx.types.CBufRet.f32 %8555, 3
  %8558 = fmul fast float %8556, %105
  %8559 = fmul fast float %8557, %106
  %8560 = call float @dx.op.unary.f32(i32 7, float %8558)  ; Saturate(value)
  %8561 = call float @dx.op.unary.f32(i32 7, float %8559)  ; Saturate(value)
  %8562 = select i1 %7121, i32 2, i32 0
  %8563 = or i32 %8562, 1
  %8564 = uitofp i32 %8563 to float
  %8565 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8560, float %8561, float %8564, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8566 = extractvalue %dx.types.ResRet.f32 %8565, 0
  %8567 = extractvalue %dx.types.ResRet.f32 %8565, 1
  %8568 = extractvalue %dx.types.ResRet.f32 %8565, 2
  %8569 = extractvalue %dx.types.ResRet.f32 %8565, 3
  %8570 = add nuw nsw i32 %8562, 2
  %8571 = uitofp i32 %8570 to float
  %8572 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8560, float %8561, float %8571, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8573 = extractvalue %dx.types.ResRet.f32 %8572, 0
  %8574 = extractvalue %dx.types.ResRet.f32 %8572, 1
  %8575 = extractvalue %dx.types.ResRet.f32 %8572, 2
  %8576 = extractvalue %dx.types.ResRet.f32 %8572, 3
  %8577 = call float @dx.op.binary.f32(i32 35, float %8567, float %8568)  ; FMax(a,b)
  %8578 = call float @dx.op.binary.f32(i32 35, float %8566, float %8577)  ; FMax(a,b)
  %8579 = call float @dx.op.binary.f32(i32 35, float %8578, float %8569)  ; FMax(a,b)
  %8580 = call float @dx.op.binary.f32(i32 36, float %8574, float %8575)  ; FMin(a,b)
  %8581 = call float @dx.op.binary.f32(i32 36, float %8573, float %8580)  ; FMin(a,b)
  %8582 = call float @dx.op.binary.f32(i32 36, float %8581, float %8576)  ; FMin(a,b)
  %8583 = fmul fast float %8579, 2.550000e+02
  %8584 = fadd fast float %8583, 0x3F70101020000000
  %8585 = fptoui float %8584 to i32
  %8586 = fmul fast float %8582, 2.550000e+02
  %8587 = fadd fast float %8586, 0x3F70101020000000
  %8588 = fptoui float %8587 to i32
  %8589 = icmp ult i32 %8585, %8588
  br i1 %8589, label %8590, label %8759

; <label>:8590                                    ; preds = %8547
  %8591 = fcmp fast ogt float %92, 9.843750e-01
  %8592 = fadd fast float %7385, -4.000000e+00
  %8593 = select i1 %8591, float -4.000000e+00, float %8592
  %8594 = call float @dx.op.binary.f32(i32 35, float %8593, float 0.000000e+00)  ; FMax(a,b)
  %8595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8596 = extractvalue %dx.types.CBufRet.f32 %8595, 0
  %8597 = fadd fast float %8596, %8594
  %8598 = extractvalue %dx.types.CBufRet.f32 %8595, 2
  %8599 = fmul fast float %8597, %8598
  %8600 = call float @dx.op.unary.f32(i32 23, float %8599)  ; Log(value)
  %8601 = extractvalue %dx.types.CBufRet.f32 %8595, 3
  %8602 = fmul fast float %8601, %8600
  %8603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8604 = extractvalue %dx.types.CBufRet.f32 %8603, 2
  %8605 = fmul fast float %8602, %8604
  %8606 = call float @dx.op.unary.f32(i32 7, float %8605)  ; Saturate(value)
  %8607 = uitofp i32 %8585 to float
  %8608 = uitofp i32 %8588 to float
  %8609 = fadd fast float %8607, 5.000000e-01
  %8610 = fadd fast float %8608, 5.000000e-01
  %8611 = fmul fast float %8604, %8609
  %8612 = fmul fast float %8604, %8610
  %8613 = fadd fast float %8611, 0x3F0FFB4800000000
  %8614 = fadd fast float %8612, 0xBF0FFB4800000000
  %8615 = call float @dx.op.binary.f32(i32 35, float %8606, float %8613)  ; FMax(a,b)
  %8616 = call float @dx.op.binary.f32(i32 36, float %8615, float %8614)  ; FMin(a,b)
  %8617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.f32 %8617, 1
  %8619 = extractvalue %dx.types.CBufRet.f32 %8617, 2
  %8620 = extractvalue %dx.types.CBufRet.f32 %8617, 0
  %8621 = select i1 %7121, float %8620, float 0.000000e+00
  %8622 = fmul fast float %8618, %8616
  %8623 = fadd fast float %8621, %8622
  %8624 = fadd fast float %8621, %8619
  %8625 = fsub fast float %8618, %8619
  %8626 = fadd fast float %8625, %8621
  %8627 = call float @dx.op.binary.f32(i32 35, float %8623, float %8624)  ; FMax(a,b)
  %8628 = call float @dx.op.binary.f32(i32 36, float %8627, float %8626)  ; FMin(a,b)
  %8629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %8560, float %8561, float %8628, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8630 = extractvalue %dx.types.ResRet.f32 %8629, 0
  %8631 = extractvalue %dx.types.ResRet.f32 %8629, 1
  %8632 = extractvalue %dx.types.ResRet.f32 %8629, 2
  %8633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8634 = extractvalue %dx.types.CBufRet.i32 %8633, 0
  %8635 = extractvalue %dx.types.CBufRet.i32 %8633, 1
  %8636 = uitofp i32 %8634 to float
  %8637 = uitofp i32 %8635 to float
  %8638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.f32 %8638, 0
  %8640 = extractvalue %dx.types.CBufRet.f32 %8638, 1
  %8641 = fmul fast float %8636, %8560
  %8642 = fmul fast float %8637, %8561
  %8643 = fadd fast float %8641, -5.000000e-01
  %8644 = fadd fast float %8642, -5.000000e-01
  %8645 = call float @dx.op.unary.f32(i32 22, float %8643)  ; Frc(value)
  %8646 = call float @dx.op.unary.f32(i32 22, float %8644)  ; Frc(value)
  %8647 = fmul fast float %8645, %8645
  %8648 = fmul fast float %8647, %8645
  %8649 = fsub fast float 3.000000e+00, %8645
  %8650 = fmul fast float %8647, %8649
  %8651 = fmul fast float %8645, 3.000000e+00
  %8652 = fmul fast float %8648, 3.000000e+00
  %8653 = fmul fast float %8647, 6.000000e+00
  %8654 = fsub fast float %8652, %8653
  %8655 = fadd fast float %8654, 4.000000e+00
  %8656 = fmul fast float %8655, 0x3FC5555560000000
  %8657 = fmul fast float %8648, -3.000000e+00
  %8658 = fadd fast float %8647, %8645
  %8659 = fmul fast float %8658, 3.000000e+00
  %8660 = fadd fast float %8657, 1.000000e+00
  %8661 = fadd fast float %8660, %8659
  %8662 = fmul fast float %8648, 0x3FC5555560000000
  %8663 = fmul fast float %8646, %8646
  %8664 = fmul fast float %8663, %8646
  %8665 = fsub fast float 3.000000e+00, %8646
  %8666 = fmul fast float %8663, %8665
  %8667 = fmul fast float %8646, 3.000000e+00
  %8668 = fmul fast float %8664, 3.000000e+00
  %8669 = fmul fast float %8663, 6.000000e+00
  %8670 = fsub fast float %8668, %8669
  %8671 = fadd fast float %8670, 4.000000e+00
  %8672 = fmul fast float %8671, 0x3FC5555560000000
  %8673 = fmul fast float %8664, -3.000000e+00
  %8674 = fadd fast float %8663, %8646
  %8675 = fmul fast float %8674, 3.000000e+00
  %8676 = fadd fast float %8673, 1.000000e+00
  %8677 = fadd fast float %8676, %8675
  %8678 = fmul fast float %8664, 0x3FC5555560000000
  %8679 = fadd fast float %8645, 1.000000e+00
  %8680 = fsub fast float 1.000000e+00, %8651
  %8681 = fadd fast float %8680, %8650
  %8682 = fadd fast float %8681, %8655
  %8683 = fmul fast float %8682, 0x3FC5555560000000
  %8684 = fdiv fast float %8656, %8683
  %8685 = fsub fast float %8679, %8684
  %8686 = fsub fast float 1.000000e+00, %8645
  %8687 = fadd fast float %8661, %8648
  %8688 = fmul fast float %8687, 0x3FC5555560000000
  %8689 = fdiv fast float %8662, %8688
  %8690 = fadd fast float %8686, %8689
  %8691 = fadd fast float %8646, 1.000000e+00
  %8692 = fsub fast float 1.000000e+00, %8667
  %8693 = fadd fast float %8692, %8666
  %8694 = fadd fast float %8693, %8671
  %8695 = fmul fast float %8694, 0x3FC5555560000000
  %8696 = fdiv fast float %8672, %8695
  %8697 = fsub fast float %8691, %8696
  %8698 = fsub fast float 1.000000e+00, %8646
  %8699 = fadd fast float %8677, %8664
  %8700 = fmul fast float %8699, 0x3FC5555560000000
  %8701 = fdiv fast float %8678, %8700
  %8702 = fadd fast float %8701, %8698
  %8703 = fmul fast float %8685, %8639
  %8704 = fsub fast float %8560, %8703
  %8705 = fmul fast float %8690, %8639
  %8706 = fadd fast float %8705, %8560
  %8707 = fmul fast float %8702, %8640
  %8708 = fadd fast float %8707, %8561
  %8709 = fmul fast float %8697, %8640
  %8710 = fsub fast float %8561, %8709
  %8711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8704, float %8710, float %8628, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8712 = extractvalue %dx.types.ResRet.f32 %8711, 0
  %8713 = extractvalue %dx.types.ResRet.f32 %8711, 1
  %8714 = extractvalue %dx.types.ResRet.f32 %8711, 2
  %8715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8706, float %8710, float %8628, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8716 = extractvalue %dx.types.ResRet.f32 %8715, 0
  %8717 = extractvalue %dx.types.ResRet.f32 %8715, 1
  %8718 = extractvalue %dx.types.ResRet.f32 %8715, 2
  %8719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8704, float %8708, float %8628, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8720 = extractvalue %dx.types.ResRet.f32 %8719, 0
  %8721 = extractvalue %dx.types.ResRet.f32 %8719, 1
  %8722 = extractvalue %dx.types.ResRet.f32 %8719, 2
  %8723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8706, float %8708, float %8628, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8724 = extractvalue %dx.types.ResRet.f32 %8723, 0
  %8725 = extractvalue %dx.types.ResRet.f32 %8723, 1
  %8726 = extractvalue %dx.types.ResRet.f32 %8723, 2
  %8727 = fsub fast float %8720, %8712
  %8728 = fsub fast float %8721, %8713
  %8729 = fsub fast float %8722, %8714
  %8730 = fmul fast float %8727, %8700
  %8731 = fmul fast float %8728, %8700
  %8732 = fmul fast float %8729, %8700
  %8733 = fadd fast float %8730, %8712
  %8734 = fadd fast float %8731, %8713
  %8735 = fadd fast float %8732, %8714
  %8736 = fsub fast float %8724, %8716
  %8737 = fsub fast float %8725, %8717
  %8738 = fsub fast float %8726, %8718
  %8739 = fmul fast float %8736, %8700
  %8740 = fmul fast float %8737, %8700
  %8741 = fmul fast float %8738, %8700
  %8742 = fsub fast float %8716, %8733
  %8743 = fadd fast float %8742, %8739
  %8744 = fsub fast float %8717, %8734
  %8745 = fadd fast float %8744, %8740
  %8746 = fsub fast float %8718, %8735
  %8747 = fadd fast float %8746, %8741
  %8748 = fmul fast float %8743, %8688
  %8749 = fmul fast float %8745, %8688
  %8750 = fmul fast float %8747, %8688
  %8751 = fadd fast float %8748, %8733
  %8752 = fadd fast float %8749, %8734
  %8753 = fadd fast float %8750, %8735
  %8754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8754, 1
  %8756 = fmul fast float %8751, %8755
  %8757 = fmul fast float %8752, %8755
  %8758 = fmul fast float %8753, %8755
  br label %8759

; <label>:8759                                    ; preds = %8590, %8547
  %8760 = phi float [ %8630, %8590 ], [ 1.000000e+00, %8547 ]
  %8761 = phi float [ %8631, %8590 ], [ 1.000000e+00, %8547 ]
  %8762 = phi float [ %8632, %8590 ], [ 1.000000e+00, %8547 ]
  %8763 = phi float [ %8756, %8590 ], [ 0.000000e+00, %8547 ]
  %8764 = phi float [ %8757, %8590 ], [ 0.000000e+00, %8547 ]
  %8765 = phi float [ %8758, %8590 ], [ 0.000000e+00, %8547 ]
  %8766 = fmul fast float %8763, %7099
  %8767 = fmul fast float %8764, %7099
  %8768 = fmul fast float %8765, %7099
  %8769 = fmul fast float %8760, %8554
  %8770 = call float @dx.op.dot3.f32(i32 55, float %8760, float %8761, float %8762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8771 = call float @dx.op.dot3.f32(i32 55, float %8766, float %8767, float %8768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8772 = select i1 %243, float %8770, float %8760
  %8773 = select i1 %243, float %8770, float %8761
  %8774 = select i1 %243, float 1.000000e+00, float %8762
  %8775 = select i1 %243, float %8771, float %8766
  %8776 = select i1 %243, float 0.000000e+00, float %8767
  %8777 = select i1 %243, float 0.000000e+00, float %8768
  %8778 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8779 = extractvalue %dx.types.CBufRet.i32 %8778, 3
  %8780 = and i32 %8779, 3
  %8781 = icmp ne i32 %8780, 0
  %8782 = and i32 %8779, 4
  %8783 = icmp ne i32 %8782, 0
  %8784 = and i1 %8781, %8783
  %8785 = and i1 %243, %8784
  br i1 %8785, label %8786, label %8792

; <label>:8786                                    ; preds = %8759
  %8787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8788 = extractvalue %dx.types.CBufRet.f32 %8787, 1
  %8789 = fadd fast float %8769, -1.000000e+00
  %8790 = fmul fast float %8788, %8789
  %8791 = fadd fast float %8790, 1.000000e+00
  br label %8792

; <label>:8792                                    ; preds = %8786, %8759
  %8793 = phi float [ %8791, %8786 ], [ %8769, %8759 ]
  %8794 = fadd fast float %8551, %8548
  %8795 = fmul fast float %8772, %8794
  %8796 = fadd fast float %8795, %8775
  %8797 = fadd fast float %8552, %8549
  %8798 = fmul fast float %8773, %8797
  %8799 = fadd fast float %8798, %8776
  %8800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8801 = extractvalue %dx.types.CBufRet.f32 %8800, 0
  br i1 %243, label %8802, label %8826

; <label>:8802                                    ; preds = %8792
  %8803 = fadd fast float %8796, %8799
  %8804 = fmul fast float %8801, %8803
  %8805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8806 = extractvalue %dx.types.CBufRet.f32 %8805, 3
  %8807 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %8808 = fsub fast float %7108, %7102
  %8809 = fadd fast float %8808, %7109
  %8810 = fsub fast float %8809, %8807
  %8811 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %8812 = fmul fast float %8810, %8811
  %8813 = call float @dx.op.unary.f32(i32 7, float %8812)  ; Saturate(value)
  %8814 = fsub fast float %8813, %8806
  %8815 = fmul fast float %8814, %8793
  %8816 = fadd fast float %8815, %8806
  %8817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8818 = extractvalue %dx.types.CBufRet.f32 %8817, 0
  %8819 = fsub fast float %8816, %8818
  %8820 = fmul fast float %8819, 1.000000e+01
  %8821 = call float @dx.op.unary.f32(i32 7, float %8820)  ; Saturate(value)
  %8822 = fsub fast float %2358, %7099
  %8823 = fmul fast float %8821, %8822
  %8824 = fadd fast float %8823, %7099
  %8825 = fmul fast float %8824, %8816
  br label %8850

; <label>:8826                                    ; preds = %8792
  %8827 = fadd fast float %8553, %8550
  %8828 = fmul fast float %8774, %8827
  %8829 = fadd fast float %8828, %8777
  %8830 = fmul fast float %8801, %8796
  %8831 = fmul fast float %8801, %8799
  %8832 = fmul fast float %8801, %8829
  %8833 = call float @dx.op.binary.f32(i32 35, float %8831, float %8832)  ; FMax(a,b)
  %8834 = call float @dx.op.binary.f32(i32 35, float %8830, float %8833)  ; FMax(a,b)
  %8835 = call float @dx.op.binary.f32(i32 35, float %8834, float %7099)  ; FMax(a,b)
  %8836 = fcmp fast ugt float %8835, 0x3F10000000000000
  br i1 %8836, label %8838, label %8837

; <label>:8837                                    ; preds = %8826
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8838

; <label>:8838                                    ; preds = %8837, %8826
  %8839 = add i32 %71, 196
  %8840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %8839, i32 undef)  ; BufferLoad(srv,index,wot)
  %8841 = extractvalue %dx.types.ResRet.i32 %8840, 0
  %8842 = and i32 %8841, 32
  %8843 = icmp eq i32 %8842, 0
  br i1 %8843, label %8850, label %8844

; <label>:8844                                    ; preds = %8838
  %8845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8846 = extractvalue %dx.types.CBufRet.f32 %8845, 0
  %8847 = fmul fast float %8846, 0x3FE99999A0000000
  %8848 = fadd fast float %8846, %8830
  %8849 = fadd fast float %8847, %8832
  br label %8850

; <label>:8850                                    ; preds = %8844, %8838, %8802
  %8851 = phi float [ %8804, %8802 ], [ %8848, %8844 ], [ %8830, %8838 ]
  %8852 = phi float [ %8825, %8802 ], [ %8831, %8844 ], [ %8831, %8838 ]
  %8853 = phi float [ %8824, %8802 ], [ %8849, %8844 ], [ %8832, %8838 ]
  %8854 = phi float [ %8824, %8802 ], [ %7099, %8844 ], [ %7099, %8838 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8855 = call float @dx.op.binary.f32(i32 36, float %8851, float 3.225500e+04)  ; FMin(a,b)
  %8856 = call float @dx.op.binary.f32(i32 36, float %8852, float 3.225500e+04)  ; FMin(a,b)
  %8857 = call float @dx.op.binary.f32(i32 36, float %8853, float 3.225500e+04)  ; FMin(a,b)
  %8858 = call float @dx.op.binary.f32(i32 36, float %8854, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8855)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8856)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8857)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8858)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!84 = !{[28 x i32] [i32 26, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!85 = !{void ()* @ps_main, !"ps_main", !86, !4, !104}
!86 = !{!87, !102, null}
!87 = !{!88, !91, !92, !94, !95, !96, !98, !100, !101}
!88 = !{i32 0, !"SV_Position", i8 9, i8 3, !89, i8 4, i32 1, i8 4, i32 0, i8 0, !90}
!89 = !{i32 0}
!90 = !{i32 3, i32 15}
!91 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 1, i8 0, !90}
!92 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !89, i8 2, i32 1, i8 3, i32 2, i8 0, !93}
!93 = !{i32 3, i32 7}
!94 = !{i32 3, !"NORMAL", i8 9, i8 0, !89, i8 2, i32 1, i8 3, i32 3, i8 0, !93}
!95 = !{i32 4, !"TANGENT", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 4, i8 0, !90}
!96 = !{i32 5, !"NORMAL_TRANSFORM", i8 9, i8 0, !97, i8 2, i32 1, i8 4, i32 5, i8 0, !90}
!97 = !{i32 1}
!98 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !89, i8 1, i32 1, i8 1, i32 6, i8 0, !99}
!99 = !{i32 3, i32 1}
!100 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !89, i8 1, i32 1, i8 1, i32 6, i8 1, !99}
!101 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !89, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!102 = !{!103}
!103 = !{i32 0, !"SV_Target", i8 9, i8 16, !89, i8 0, i32 1, i8 4, i32 0, i8 0, !90}
!104 = !{i32 0, i64 16}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !114}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = !{!121, !121, i64 0}
!121 = !{!"int", !122, i64 0}
!122 = !{!"omnipotent char", !123, i64 0}
!123 = !{!"Simple C/C++ TBAA"}
!124 = !{!125, !127, !129, !131}
!125 = distinct !{!125, !126, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!126 = distinct !{!126, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!127 = distinct !{!127, !128, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!128 = distinct !{!128, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!129 = distinct !{!129, !130, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!130 = distinct !{!130, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!131 = distinct !{!131, !132, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!132 = distinct !{!132, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = !{!135, !135, i64 0}
!135 = !{!"float", !122, i64 0}
!136 = distinct !{!136, !114}
!137 = distinct !{!137, !114}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = !{!149, !151, !153, !154, !156, !157, !158, !160, !161, !162}
!149 = distinct !{!149, !150, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!150 = distinct !{!150, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!151 = distinct !{!151, !152, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!152 = distinct !{!152, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!153 = distinct !{!153, !152, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!154 = distinct !{!154, !155, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!155 = distinct !{!155, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!156 = distinct !{!156, !155, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!157 = distinct !{!157, !155, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!158 = distinct !{!158, !159, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!159 = distinct !{!159, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!160 = distinct !{!160, !159, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!161 = distinct !{!161, !159, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!162 = distinct !{!162, !163, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!163 = distinct !{!163, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"\01?sort@@YAXAIAM00@Z: %c"}
!166 = distinct !{!166, !"\01?sort@@YAXAIAM00@Z"}
!167 = !{!168, !169, !149, !151, !153, !154, !156, !157, !158, !160, !161, !162}
!168 = distinct !{!168, !166, !"\01?sort@@YAXAIAM00@Z: %a"}
!169 = distinct !{!169, !166, !"\01?sort@@YAXAIAM00@Z: %b"}
!170 = !{!169}
!171 = !{!168, !165, !149, !151, !153, !154, !156, !157, !158, !160, !161, !162}
!172 = !{!168}
!173 = !{!169, !165, !149, !151, !153, !154, !156, !157, !158, !160, !161, !162}
!174 = !{!175}
!175 = distinct !{!175, !176, !"\01?sort@@YAXAIAM00@Z: %c"}
!176 = distinct !{!176, !"\01?sort@@YAXAIAM00@Z"}
!177 = !{!178, !179, !149, !151, !153, !154, !156, !157, !158, !160, !161, !162}
!178 = distinct !{!178, !176, !"\01?sort@@YAXAIAM00@Z: %a"}
!179 = distinct !{!179, !176, !"\01?sort@@YAXAIAM00@Z: %b"}
!180 = !{!179}
!181 = !{!178, !175, !149, !151, !153, !154, !156, !157, !158, !160, !161, !162}
!182 = !{!178}
!183 = !{!179, !175, !149, !151, !153, !154, !156, !157, !158, !160, !161, !162}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 2}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 1}
!190 = distinct !{!190, !"dx.controlflow.hints", i32 1}
!191 = distinct !{!191, !"dx.controlflow.hints", i32 1}
!192 = distinct !{!192, !"dx.controlflow.hints", i32 1}
!193 = distinct !{!193, !"dx.controlflow.hints", i32 1}
!194 = distinct !{!194, !"dx.controlflow.hints", i32 1}

