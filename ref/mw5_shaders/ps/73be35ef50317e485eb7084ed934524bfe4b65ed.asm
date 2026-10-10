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
; shader hash: fa163430f4e7779c808bbdbde54a314a
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
  %297 = add i32 %71, 168
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
  %964 = add i32 %71, 160
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
  %1005 = add i32 %71, 164
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
  %1087 = add i32 %71, 120
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = bitcast i32 %1089 to float
  %1091 = fcmp fast oge float %1090, 0.000000e+00
  %1092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1093 = extractvalue %dx.types.CBufRet.f32 %1092, 0
  %1094 = select i1 %1091, float %1090, float %1093
  %1095 = call float @dx.op.dot2.f32(i32 54, float %1067, float %1068, float %1067, float %1068)  ; Dot2(ax,ay,bx,by)
  %1096 = fmul fast float %1095, 0x3FE3333340000000
  %1097 = fsub fast float 1.000000e+00, %1096
  %1098 = call float @dx.op.dot3.f32(i32 55, float %1067, float %1068, float %1097, float %1067, float %1068, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = call float @dx.op.unary.f32(i32 25, float %1098)  ; Rsqrt(value)
  %1100 = fmul fast float %1099, %1067
  %1101 = fmul fast float %1099, %1068
  %1102 = fmul fast float %1097, %1099
  %1103 = fmul fast float %1102, %76
  %1104 = fmul fast float %1102, %77
  %1105 = fmul fast float %1102, %78
  %1106 = fmul fast float %1100, %72
  %1107 = fmul fast float %1100, %73
  %1108 = fmul fast float %1100, %74
  %1109 = fadd fast float %1103, %1106
  %1110 = fadd fast float %1104, %1107
  %1111 = fadd fast float %1105, %1108
  %1112 = fmul fast float %1101, %110
  %1113 = fmul fast float %1101, %111
  %1114 = fmul fast float %1101, %112
  %1115 = fadd fast float %1109, %1112
  %1116 = fadd fast float %1110, %1113
  %1117 = fadd fast float %1111, %1114
  %1118 = call float @dx.op.dot3.f32(i32 55, float %1115, float %1116, float %1117, float %1115, float %1116, float %1117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1119 = call float @dx.op.unary.f32(i32 25, float %1118)  ; Rsqrt(value)
  %1120 = fmul fast float %1115, %1119
  %1121 = fmul fast float %1116, %1119
  %1122 = fmul fast float %1117, %1119
  %1123 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %1124 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %1125 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1126 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %1127 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %1128 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1129 = fadd fast float %1123, %146
  %1130 = fadd fast float %1124, %147
  %1131 = fadd fast float %1125, %148
  %1132 = fadd fast float %1126, %146
  %1133 = fadd fast float %1127, %147
  %1134 = fadd fast float %1128, %148
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1141 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1142 = fmul fast float %1136, %99
  %1143 = fmul fast float %1142, %1140
  %1144 = fmul fast float %1137, %100
  %1145 = fmul fast float %1144, %1141
  %1146 = fptoui float %1143 to i32
  %1147 = fptoui float %1145 to i32
  %1148 = fadd fast float %1136, -1.000000e+00
  %1149 = fadd fast float %1137, -1.000000e+00
  %1150 = fptoui float %1148 to i32
  %1151 = fptoui float %1149 to i32
  %1152 = call i32 @dx.op.binary.i32(i32 40, i32 %1146, i32 %1150)  ; UMin(a,b)
  %1153 = call i32 @dx.op.binary.i32(i32 40, i32 %1147, i32 %1151)  ; UMin(a,b)
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1156 = extractvalue %dx.types.CBufRet.f32 %1154, 3
  %1157 = fmul fast float %1155, %87
  %1158 = fsub fast float %1157, %1156
  %1159 = fadd fast float %1138, -1.000000e+00
  %1160 = call float @dx.op.binary.f32(i32 36, float %1158, float %1159)  ; FMin(a,b)
  %1161 = fptoui float %1160 to i32
  %1162 = fptoui float %1136 to i32
  %1163 = fptoui float %1137 to i32
  %1164 = mul i32 %1161, %1163
  %1165 = add i32 %1164, %1153
  %1166 = mul i32 %1165, %1162
  %1167 = add i32 %1166, %1152
  %1168 = shl i32 %1167, 2
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 1023
  %1172 = lshr i32 %1170, 10
  %1173 = icmp eq i32 %1171, 0
  br i1 %1173, label %1677, label %1174

; <label>:1174                                    ; preds = %1066
  %1175 = and i32 %1170, 1023
  br label %1176

; <label>:1176                                    ; preds = %1308, %1174
  %1177 = phi float [ %1309, %1308 ], [ 0.000000e+00, %1174 ]
  %1178 = phi float [ %1310, %1308 ], [ %1094, %1174 ]
  %1179 = phi float [ %1311, %1308 ], [ %1086, %1174 ]
  %1180 = phi float [ %1312, %1308 ], [ %1078, %1174 ]
  %1181 = phi float [ %1313, %1308 ], [ %1079, %1174 ]
  %1182 = phi float [ %1314, %1308 ], [ %1080, %1174 ]
  %1183 = phi float [ %1315, %1308 ], [ 0.000000e+00, %1174 ]
  %1184 = phi float [ %1316, %1308 ], [ 0.000000e+00, %1174 ]
  %1185 = phi float [ %1317, %1308 ], [ %1072, %1174 ]
  %1186 = phi float [ %1318, %1308 ], [ %1073, %1174 ]
  %1187 = phi float [ %1319, %1308 ], [ %1074, %1174 ]
  %1188 = phi float [ %1320, %1308 ], [ %1075, %1174 ]
  %1189 = phi float [ %1321, %1308 ], [ %1076, %1174 ]
  %1190 = phi float [ %1322, %1308 ], [ %1077, %1174 ]
  %1191 = phi float [ %1323, %1308 ], [ %1120, %1174 ]
  %1192 = phi float [ %1324, %1308 ], [ %1121, %1174 ]
  %1193 = phi float [ %1325, %1308 ], [ %1122, %1174 ]
  %1194 = phi float [ %1326, %1308 ], [ %1084, %1174 ]
  %1195 = phi float [ %1327, %1308 ], [ %1083, %1174 ]
  %1196 = phi float [ %1328, %1308 ], [ 0.000000e+00, %1174 ]
  %1197 = phi float [ %1329, %1308 ], [ %1081, %1174 ]
  %1198 = phi float [ %1330, %1308 ], [ %1069, %1174 ]
  %1199 = phi float [ %1331, %1308 ], [ %1070, %1174 ]
  %1200 = phi float [ %1332, %1308 ], [ %1071, %1174 ]
  %1201 = phi i32 [ %1258, %1308 ], [ 0, %1174 ]
  %1202 = add nuw nsw i32 %1201, %1172
  %1203 = shl i32 %1202, 2
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = shl i32 %1205, 8
  %1207 = or i32 %1206, 48
  %1208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.ResRet.f32 %1208, 1
  %1211 = extractvalue %dx.types.ResRet.f32 %1208, 2
  %1212 = extractvalue %dx.types.ResRet.f32 %1208, 3
  %1213 = or i32 %1206, 64
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.i32 %1214, 1
  %1217 = or i32 %1206, 80
  %1218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1221 = or i32 %1206, 96
  %1222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = extractvalue %dx.types.ResRet.f32 %1222, 3
  %1227 = or i32 %1206, 112
  %1228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 2
  %1230 = or i32 %1206, 128
  %1231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.ResRet.f32 %1231, 1
  %1234 = extractvalue %dx.types.ResRet.f32 %1231, 2
  %1235 = extractvalue %dx.types.ResRet.f32 %1231, 3
  %1236 = or i32 %1206, 144
  %1237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.ResRet.f32 %1237, 3
  %1242 = or i32 %1206, 160
  %1243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = extractvalue %dx.types.ResRet.f32 %1243, 1
  %1246 = extractvalue %dx.types.ResRet.f32 %1243, 2
  %1247 = extractvalue %dx.types.ResRet.f32 %1243, 3
  %1248 = or i32 %1206, 192
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = or i32 %1206, 208
  %1252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = or i32 %1206, 248
  %1255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.ResRet.f32 %1255, 1
  %1258 = add nuw nsw i32 %1201, 1
  %1259 = bitcast float %1212 to i32
  %1260 = and i32 %1259, 2560
  %1261 = icmp eq i32 %1260, 0
  %1262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = extractvalue %dx.types.ResRet.f32 %1262, 3
  %1267 = call float @dx.op.dot4.f32(i32 56, float %1263, float %1264, float %1265, float %1266, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1268 = or i32 %1206, 16
  %1269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.f32 %1269, 2
  %1273 = extractvalue %dx.types.ResRet.f32 %1269, 3
  %1274 = call float @dx.op.dot4.f32(i32 56, float %1270, float %1271, float %1272, float %1273, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1275 = or i32 %1206, 32
  %1276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = extractvalue %dx.types.ResRet.f32 %1276, 2
  %1280 = extractvalue %dx.types.ResRet.f32 %1276, 3
  %1281 = call float @dx.op.dot4.f32(i32 56, float %1277, float %1278, float %1279, float %1280, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1282 = call float @dx.op.unary.f32(i32 27, float %1267)  ; Round_ni(value)
  %1283 = call float @dx.op.unary.f32(i32 6, float %1282)  ; FAbs(value)
  %1284 = call float @dx.op.unary.f32(i32 27, float %1274)  ; Round_ni(value)
  %1285 = call float @dx.op.unary.f32(i32 6, float %1284)  ; FAbs(value)
  %1286 = call float @dx.op.unary.f32(i32 6, float %1281)  ; FAbs(value)
  %1287 = call float @dx.op.unary.f32(i32 27, float %1286)  ; Round_ni(value)
  %1288 = fadd fast float %1285, %1283
  %1289 = fadd fast float %1288, %1287
  %1290 = fcmp fast oeq float %1289, 0.000000e+00
  %1291 = call float @dx.op.dot4.f32(i32 56, float %1263, float %1264, float %1265, float %1266, float %1129, float %1130, float %1131, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1292 = call float @dx.op.dot4.f32(i32 56, float %1270, float %1271, float %1272, float %1273, float %1129, float %1130, float %1131, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1293 = call float @dx.op.dot4.f32(i32 56, float %1263, float %1264, float %1265, float %1266, float %1132, float %1133, float %1134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1294 = call float @dx.op.dot4.f32(i32 56, float %1270, float %1271, float %1272, float %1273, float %1132, float %1133, float %1134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1295 = fsub fast float %1291, %1267
  %1296 = fsub fast float %1293, %1267
  %1297 = fsub fast float %1292, %1274
  %1298 = fsub fast float %1294, %1274
  %1299 = call float @dx.op.dot3.f32(i32 55, float %1209, float %1210, float %1211, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 2
  %1302 = fadd fast float %1301, %1299
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1305 = fcmp fast ogt float %1303, %1304
  %1306 = and i1 %1290, %1305
  %1307 = and i1 %1261, %1306
  br i1 %1307, label %1334, label %1308

; <label>:1308                                    ; preds = %1663, %1415, %1334, %1176
  %1309 = phi float [ %1177, %1334 ], [ %1418, %1415 ], [ %1418, %1663 ], [ %1177, %1176 ]
  %1310 = phi float [ %1178, %1334 ], [ %1178, %1415 ], [ %1639, %1663 ], [ %1178, %1176 ]
  %1311 = phi float [ %1179, %1334 ], [ %1179, %1415 ], [ %1637, %1663 ], [ %1179, %1176 ]
  %1312 = phi float [ %1180, %1334 ], [ %1180, %1415 ], [ %1615, %1663 ], [ %1180, %1176 ]
  %1313 = phi float [ %1181, %1334 ], [ %1181, %1415 ], [ %1616, %1663 ], [ %1181, %1176 ]
  %1314 = phi float [ %1182, %1334 ], [ %1182, %1415 ], [ %1617, %1663 ], [ %1182, %1176 ]
  %1315 = phi float [ %1183, %1334 ], [ %1183, %1415 ], [ %1542, %1663 ], [ %1183, %1176 ]
  %1316 = phi float [ %1184, %1334 ], [ %1184, %1415 ], [ %1540, %1663 ], [ %1184, %1176 ]
  %1317 = phi float [ %1185, %1334 ], [ %1185, %1415 ], [ %1585, %1663 ], [ %1185, %1176 ]
  %1318 = phi float [ %1186, %1334 ], [ %1186, %1415 ], [ %1586, %1663 ], [ %1186, %1176 ]
  %1319 = phi float [ %1187, %1334 ], [ %1187, %1415 ], [ %1587, %1663 ], [ %1187, %1176 ]
  %1320 = phi float [ %1188, %1334 ], [ %1188, %1415 ], [ %1673, %1663 ], [ %1188, %1176 ]
  %1321 = phi float [ %1189, %1334 ], [ %1189, %1415 ], [ %1674, %1663 ], [ %1189, %1176 ]
  %1322 = phi float [ %1190, %1334 ], [ %1190, %1415 ], [ %1675, %1663 ], [ %1190, %1176 ]
  %1323 = phi float [ %1191, %1334 ], [ %1191, %1415 ], [ %1521, %1663 ], [ %1191, %1176 ]
  %1324 = phi float [ %1192, %1334 ], [ %1192, %1415 ], [ %1522, %1663 ], [ %1192, %1176 ]
  %1325 = phi float [ %1193, %1334 ], [ %1193, %1415 ], [ %1523, %1663 ], [ %1193, %1176 ]
  %1326 = phi float [ %1194, %1334 ], [ %1194, %1415 ], [ %1595, %1663 ], [ %1194, %1176 ]
  %1327 = phi float [ %1195, %1334 ], [ %1195, %1415 ], [ %1592, %1663 ], [ %1195, %1176 ]
  %1328 = phi float [ %1196, %1334 ], [ %1196, %1415 ], [ %1589, %1663 ], [ %1196, %1176 ]
  %1329 = phi float [ %1197, %1334 ], [ %1197, %1415 ], [ %1538, %1663 ], [ %1197, %1176 ]
  %1330 = phi float [ %1198, %1334 ], [ %1198, %1415 ], [ %1533, %1663 ], [ %1198, %1176 ]
  %1331 = phi float [ %1199, %1334 ], [ %1199, %1415 ], [ %1534, %1663 ], [ %1199, %1176 ]
  %1332 = phi float [ %1200, %1334 ], [ %1200, %1415 ], [ %1535, %1663 ], [ %1200, %1176 ]
  %1333 = icmp eq i32 %1258, %1175
  br i1 %1333, label %1676, label %1176

; <label>:1334                                    ; preds = %1176
  %1335 = extractvalue %dx.types.ResRet.f32 %1228, 3
  %1336 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1337 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1338 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1339 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1340 = extractvalue %dx.types.ResRet.i32 %1214, 3
  %1341 = extractvalue %dx.types.ResRet.i32 %1214, 2
  %1342 = add i32 %1340, 0
  %1343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1342, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1345 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1343, %dx.types.Handle %1344, float %1267, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float %1295, float %1297, float undef, float %1296, float %1298, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = fmul fast float %1346, %1339
  %1348 = fadd fast float %1347, %1338
  %1349 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1350 = fmul fast float %1267, %1223
  %1351 = call float @dx.op.tertiary.f32(i32 46, float %1224, float %1274, float %1350)  ; FMad(a,b,c)
  %1352 = fadd fast float %1351, %1337
  %1353 = fmul fast float %1267, %1225
  %1354 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %1274, float %1353)  ; FMad(a,b,c)
  %1355 = fadd fast float %1354, %1336
  %1356 = fmul fast float %1295, %1223
  %1357 = call float @dx.op.tertiary.f32(i32 46, float %1224, float %1297, float %1356)  ; FMad(a,b,c)
  %1358 = fmul fast float %1295, %1225
  %1359 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %1297, float %1358)  ; FMad(a,b,c)
  %1360 = fmul fast float %1296, %1223
  %1361 = call float @dx.op.tertiary.f32(i32 46, float %1224, float %1298, float %1360)  ; FMad(a,b,c)
  %1362 = fmul fast float %1296, %1225
  %1363 = call float @dx.op.tertiary.f32(i32 46, float %1226, float %1298, float %1362)  ; FMad(a,b,c)
  %1364 = add i32 %1341, 0
  %1365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1364, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1366 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1365, %dx.types.Handle %1344, float %1352, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float %1357, float %1359, float undef, float %1361, float %1363, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = and i32 %1259, 1024
  %1369 = icmp ne i32 %1368, 0
  %1370 = fcmp fast ogt float %1367, 0x3FE0101020000000
  %1371 = uitofp i1 %1370 to float
  %1372 = select i1 %1369, float %1371, float %1367
  %1373 = and i32 %1259, 8192
  %1374 = icmp ne i32 %1373, 0
  %1375 = select i1 %1374, float %1335, float 1.000000e+00
  %1376 = fmul fast float %1267, 2.000000e+00
  %1377 = fadd fast float %1376, -1.000000e+00
  %1378 = call float @dx.op.unary.f32(i32 6, float %1377)  ; FAbs(value)
  %1379 = fmul fast float %1378, %1256
  %1380 = fsub fast float %1379, %1256
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fmul fast float %1274, 2.000000e+00
  %1383 = fadd fast float %1382, -1.000000e+00
  %1384 = call float @dx.op.unary.f32(i32 6, float %1383)  ; FAbs(value)
  %1385 = fmul fast float %1384, %1257
  %1386 = fsub fast float %1385, %1257
  %1387 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1388 = fmul fast float %1286, %1219
  %1389 = fsub fast float %1388, %1219
  %1390 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1391 = fmul fast float %1349, %1375
  %1392 = fmul fast float %1391, %1346
  %1393 = fmul fast float %1392, %1381
  %1394 = fmul fast float %1393, %1372
  %1395 = fmul fast float %1394, %1387
  %1396 = fmul fast float %1395, %1390
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 1
  %1399 = extractvalue %dx.types.CBufRet.f32 %1397, 0
  %1400 = fsub fast float %1303, %1399
  %1401 = fmul fast float %1400, %1398
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1403 = fmul fast float %1396, %1220
  %1404 = fadd fast float %1396, %1220
  %1405 = fmul fast float %1404, %1229
  %1406 = fsub fast float %1405, %1229
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1408 = and i32 %1259, 128
  %1409 = icmp ne i32 %1408, 0
  %1410 = select i1 %1409, float %1407, float %1403
  %1411 = fmul fast float %1410, %1402
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 0
  %1414 = fcmp fast ugt float %1411, %1413
  br i1 %1414, label %1415, label %1308

; <label>:1415                                    ; preds = %1334
  %1416 = select i1 %1374, float %1411, float 0.000000e+00
  %1417 = fadd fast float %1416, %1177
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  br i1 %1374, label %1308, label %1419

; <label>:1419                                    ; preds = %1415
  %1420 = and i32 %1259, 4
  %1421 = and i32 %1259, 8
  %1422 = add i32 %1215, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1422, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1425 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1423, %dx.types.Handle %1424, float %1352, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float %1357, float %1359, float undef, float %1361, float %1363, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1426 = extractvalue %dx.types.ResRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.ResRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.ResRet.f32 %1425, 2
  %1429 = extractvalue %dx.types.ResRet.f32 %1425, 3
  %1430 = bitcast float %1241 to i32
  %1431 = and i32 %1430, 255
  %1432 = uitofp i32 %1431 to float
  %1433 = lshr i32 %1430, 8
  %1434 = and i32 %1433, 255
  %1435 = uitofp i32 %1434 to float
  %1436 = fmul fast float %1429, %1432
  %1437 = fadd fast float %1436, %1435
  %1438 = fmul fast float %1437, 0x3F70101000000000
  %1439 = add i32 %1216, 0
  %1440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1439, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1441 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1440, %dx.types.Handle %1424, float %1352, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float %1357, float %1359, float undef, float %1361, float %1363, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.ResRet.f32 %1441, 2
  %1445 = extractvalue %dx.types.ResRet.f32 %1441, 3
  %1446 = bitcast float %1235 to i32
  %1447 = and i32 %1446, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = lshr i32 %1446, 8
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = lshr i32 %1446, 16
  %1453 = and i32 %1452, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = fmul fast float %1454, 0x3F70101000000000
  %1456 = fmul fast float %1442, %1448
  %1457 = fadd fast float %1456, %1451
  %1458 = fmul fast float %1457, 0x3F70101000000000
  %1459 = fadd fast float %1443, -5.000000e-01
  %1460 = fadd fast float %1445, -5.000000e-01
  %1461 = fmul fast float %1459, %1455
  %1462 = fmul fast float %1460, %1455
  %1463 = fadd fast float %1461, 5.000000e-01
  %1464 = fadd fast float %1462, 5.000000e-01
  %1465 = fmul fast float %1426, %1244
  %1466 = fmul fast float %1427, %1245
  %1467 = fmul fast float %1428, %1246
  %1468 = fmul fast float %1463, 2.000000e+00
  %1469 = fadd fast float %1468, -1.000000e+00
  %1470 = fmul fast float %1464, 2.000000e+00
  %1471 = fadd fast float %1470, -1.000000e+00
  %1472 = fadd fast float %1469, %1471
  %1473 = fmul fast float %1472, 5.000000e-01
  %1474 = fsub fast float %1469, %1471
  %1475 = fmul fast float %1474, 5.000000e-01
  %1476 = call float @dx.op.unary.f32(i32 6, float %1473)  ; FAbs(value)
  %1477 = fsub fast float 1.000000e+00, %1476
  %1478 = call float @dx.op.unary.f32(i32 6, float %1475)  ; FAbs(value)
  %1479 = fsub fast float %1477, %1478
  %1480 = call float @dx.op.dot3.f32(i32 55, float %1473, float %1475, float %1479, float %1473, float %1475, float %1479)  ; Dot3(ax,ay,az,bx,by,bz)
  %1481 = call float @dx.op.unary.f32(i32 25, float %1480)  ; Rsqrt(value)
  %1482 = fmul fast float %1473, %1481
  %1483 = fmul fast float %1475, %1481
  %1484 = fmul fast float %1481, %1479
  %1485 = fmul fast float %1484, %1209
  %1486 = fmul fast float %1484, %1210
  %1487 = fmul fast float %1484, %1211
  %1488 = fmul fast float %1482, %1232
  %1489 = fmul fast float %1482, %1233
  %1490 = fmul fast float %1482, %1234
  %1491 = fadd fast float %1488, %1485
  %1492 = fadd fast float %1489, %1486
  %1493 = fadd fast float %1490, %1487
  %1494 = fmul fast float %1483, %1238
  %1495 = fmul fast float %1483, %1239
  %1496 = fmul fast float %1483, %1240
  %1497 = fadd fast float %1491, %1494
  %1498 = fadd fast float %1492, %1495
  %1499 = fadd fast float %1493, %1496
  %1500 = call float @dx.op.dot3.f32(i32 55, float %1497, float %1498, float %1499, float %1497, float %1498, float %1499)  ; Dot3(ax,ay,az,bx,by,bz)
  %1501 = call float @dx.op.unary.f32(i32 25, float %1500)  ; Rsqrt(value)
  %1502 = fmul fast float %1497, %1501
  %1503 = fmul fast float %1498, %1501
  %1504 = fmul fast float %1499, %1501
  %1505 = icmp ne i32 %1421, 0
  %1506 = select i1 %1505, float 1.000000e+00, float 0.000000e+00
  %1507 = fmul fast float %1411, %1506
  %1508 = and i32 %1259, 1
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1510, label %1514

; <label>:1510                                    ; preds = %1419
  %1511 = fsub fast float %1502, %1191
  %1512 = fsub fast float %1503, %1192
  %1513 = fsub fast float %1504, %1193
  br label %1514

; <label>:1514                                    ; preds = %1510, %1419
  %1515 = phi float [ %1511, %1510 ], [ %1502, %1419 ]
  %1516 = phi float [ %1512, %1510 ], [ %1503, %1419 ]
  %1517 = phi float [ %1513, %1510 ], [ %1504, %1419 ]
  %1518 = fmul float %1517, %1507
  %1519 = fmul float %1516, %1507
  %1520 = fmul float %1515, %1507
  %1521 = fadd fast float %1520, %1191
  %1522 = fadd fast float %1519, %1192
  %1523 = fadd fast float %1518, %1193
  %1524 = icmp ne i32 %1420, 0
  %1525 = select i1 %1524, float 1.000000e+00, float 0.000000e+00
  %1526 = fmul fast float %1411, %1525
  %1527 = fsub fast float %1465, %1198
  %1528 = fsub fast float %1466, %1199
  %1529 = fsub fast float %1467, %1200
  %1530 = fmul fast float %1527, %1526
  %1531 = fmul fast float %1528, %1526
  %1532 = fmul fast float %1529, %1526
  %1533 = fadd fast float %1530, %1198
  %1534 = fadd fast float %1531, %1199
  %1535 = fadd fast float %1532, %1200
  %1536 = fsub fast float %1438, %1197
  %1537 = fmul fast float %1536, %1526
  %1538 = fadd fast float %1537, %1197
  %1539 = fmul fast float %1526, %1184
  %1540 = fsub fast float %1184, %1539
  %1541 = fmul fast float %1526, %1183
  %1542 = fsub fast float %1183, %1541
  %1543 = bitcast float %1253 to i32
  %1544 = lshr i32 %1543, 16
  %1545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1544)  ; LegacyF16ToF32(value)
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 1
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1550, label %1575

; <label>:1550                                    ; preds = %1514
  %1551 = fadd fast float %1438, 0xBFB99999A0000000
  %1552 = call float @dx.op.unary.f32(i32 7, float %1551)  ; Saturate(value)
  %1553 = fmul fast float %1552, 0x3FF1C71C80000000
  %1554 = fsub fast float 1.000000e+00, %1553
  %1555 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1556 = fmul fast float %1555, %1465
  %1557 = fmul fast float %1555, %1466
  %1558 = fmul fast float %1555, %1467
  %1559 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1560 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1561 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1562 = call float @dx.op.binary.f32(i32 35, float %1560, float %1561)  ; FMax(a,b)
  %1563 = call float @dx.op.binary.f32(i32 35, float %1559, float %1562)  ; FMax(a,b)
  %1564 = fcmp fast ogt float %1563, 0.000000e+00
  %1565 = bitcast float %1563 to i32
  %1566 = sub nsw i32 2129859010, %1565
  %1567 = bitcast i32 %1566 to float
  %1568 = select i1 %1564, float %1567, float 0.000000e+00
  %1569 = fmul fast float %1559, %1545
  %1570 = fmul fast float %1560, %1545
  %1571 = fmul fast float %1561, %1545
  %1572 = fmul fast float %1569, %1568
  %1573 = fmul fast float %1570, %1568
  %1574 = fmul fast float %1571, %1568
  br label %1575

; <label>:1575                                    ; preds = %1550, %1514
  %1576 = phi float [ %1545, %1514 ], [ %1572, %1550 ]
  %1577 = phi float [ %1545, %1514 ], [ %1573, %1550 ]
  %1578 = phi float [ %1545, %1514 ], [ %1574, %1550 ]
  %1579 = fsub fast float %1576, %1185
  %1580 = fsub fast float %1577, %1186
  %1581 = fsub fast float %1578, %1187
  %1582 = fmul fast float %1579, %1526
  %1583 = fmul fast float %1580, %1526
  %1584 = fmul fast float %1581, %1526
  %1585 = fadd fast float %1582, %1185
  %1586 = fadd fast float %1583, %1186
  %1587 = fadd fast float %1584, %1187
  %1588 = fadd fast float %1411, %1196
  %1589 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1590 = fsub fast float %1458, %1195
  %1591 = fmul fast float %1590, %1507
  %1592 = fadd fast float %1591, %1195
  %1593 = fsub fast float %1444, %1194
  %1594 = fmul fast float %1593, %1507
  %1595 = fadd fast float %1594, %1194
  br i1 %1509, label %1604, label %1596

; <label>:1596                                    ; preds = %1575
  %1597 = and i32 %1259, 32768
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1614, label %1599

; <label>:1599                                    ; preds = %1596
  %1600 = fmul fast float %1507, 1.270000e+02
  %1601 = fadd fast float %1600, %1180
  %1602 = fadd fast float %1600, %1181
  %1603 = fadd fast float %1600, %1182
  br label %1614

; <label>:1604                                    ; preds = %1575
  %1605 = fsub fast float 1.270000e+02, %1180
  %1606 = fsub fast float 1.270000e+02, %1181
  %1607 = fsub fast float 1.270000e+02, %1182
  %1608 = fmul fast float %1507, %1605
  %1609 = fmul fast float %1507, %1606
  %1610 = fmul fast float %1507, %1607
  %1611 = fadd fast float %1608, %1180
  %1612 = fadd fast float %1609, %1181
  %1613 = fadd fast float %1610, %1182
  br label %1614

; <label>:1614                                    ; preds = %1604, %1599, %1596
  %1615 = phi float [ %1601, %1599 ], [ %1180, %1596 ], [ %1611, %1604 ]
  %1616 = phi float [ %1602, %1599 ], [ %1181, %1596 ], [ %1612, %1604 ]
  %1617 = phi float [ %1603, %1599 ], [ %1182, %1596 ], [ %1613, %1604 ]
  %1618 = call float @dx.op.dot3.f32(i32 55, float %1465, float %1466, float %1467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1620 = extractvalue %dx.types.CBufRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.CBufRet.f32 %1619, 1
  %1622 = fmul fast float %1621, %1618
  %1623 = fadd fast float %1622, %1620
  %1624 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  %1625 = bitcast float %1247 to i32
  %1626 = and i32 %1625, 65535
  %1627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1626)  ; LegacyF16ToF32(value)
  %1628 = lshr i32 %1625, 16
  %1629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1628)  ; LegacyF16ToF32(value)
  %1630 = fcmp fast oge float %1627, 0.000000e+00
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1633 = select i1 %1630, float %1627, float %1632
  %1634 = fadd fast float %1633, %1629
  %1635 = fsub fast float %1624, %1179
  %1636 = fmul fast float %1635, %1411
  %1637 = fadd fast float %1636, %1179
  %1638 = fmul fast float %1634, %1411
  %1639 = call float @dx.op.binary.f32(i32 35, float %1178, float %1638)  ; FMax(a,b)
  %1640 = and i32 %1259, 16
  %1641 = icmp eq i32 %1640, 0
  br i1 %1641, label %1663, label %1642

; <label>:1642                                    ; preds = %1614
  %1643 = add i32 %1250, 0
  %1644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1643, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1645 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1644, %dx.types.Handle %1424, float %1352, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float %1357, float %1359, float undef, float %1361, float %1363, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1646 = extractvalue %dx.types.ResRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.ResRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.ResRet.f32 %1645, 2
  %1649 = and i32 %1543, 65535
  %1650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1649)  ; LegacyF16ToF32(value)
  %1651 = fmul fast float %1646, %1244
  %1652 = fmul fast float %1647, %1245
  %1653 = fmul fast float %1648, %1246
  %1654 = and i32 %1259, 16384
  %1655 = icmp ne i32 %1654, 0
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 0
  %1658 = select i1 %1655, float %1657, float 1.000000e+00
  %1659 = fmul fast float %1658, %1650
  %1660 = fmul fast float %1651, %1659
  %1661 = fmul fast float %1652, %1659
  %1662 = fmul fast float %1653, %1659
  br label %1663

; <label>:1663                                    ; preds = %1642, %1614
  %1664 = phi float [ %1660, %1642 ], [ 0.000000e+00, %1614 ]
  %1665 = phi float [ %1661, %1642 ], [ 0.000000e+00, %1614 ]
  %1666 = phi float [ %1662, %1642 ], [ 0.000000e+00, %1614 ]
  %1667 = fsub fast float %1664, %1188
  %1668 = fsub fast float %1665, %1189
  %1669 = fsub fast float %1666, %1190
  %1670 = fmul fast float %1667, %1411
  %1671 = fmul fast float %1668, %1411
  %1672 = fmul fast float %1669, %1411
  %1673 = fadd fast float %1670, %1188
  %1674 = fadd fast float %1671, %1189
  %1675 = fadd fast float %1672, %1190
  br label %1308

; <label>:1676                                    ; preds = %1308
  br label %1677

; <label>:1677                                    ; preds = %1676, %1066
  %1678 = phi float [ 0.000000e+00, %1066 ], [ %1309, %1676 ]
  %1679 = phi float [ %1094, %1066 ], [ %1310, %1676 ]
  %1680 = phi float [ %1086, %1066 ], [ %1311, %1676 ]
  %1681 = phi float [ %1078, %1066 ], [ %1312, %1676 ]
  %1682 = phi float [ %1079, %1066 ], [ %1313, %1676 ]
  %1683 = phi float [ %1080, %1066 ], [ %1314, %1676 ]
  %1684 = phi float [ 0.000000e+00, %1066 ], [ %1315, %1676 ]
  %1685 = phi float [ 0.000000e+00, %1066 ], [ %1316, %1676 ]
  %1686 = phi float [ %1072, %1066 ], [ %1317, %1676 ]
  %1687 = phi float [ %1073, %1066 ], [ %1318, %1676 ]
  %1688 = phi float [ %1074, %1066 ], [ %1319, %1676 ]
  %1689 = phi float [ %1075, %1066 ], [ %1320, %1676 ]
  %1690 = phi float [ %1076, %1066 ], [ %1321, %1676 ]
  %1691 = phi float [ %1077, %1066 ], [ %1322, %1676 ]
  %1692 = phi float [ %1120, %1066 ], [ %1323, %1676 ]
  %1693 = phi float [ %1121, %1066 ], [ %1324, %1676 ]
  %1694 = phi float [ %1122, %1066 ], [ %1325, %1676 ]
  %1695 = phi float [ %1084, %1066 ], [ %1326, %1676 ]
  %1696 = phi float [ %1083, %1066 ], [ %1327, %1676 ]
  %1697 = phi float [ 0.000000e+00, %1066 ], [ %1328, %1676 ]
  %1698 = phi float [ %1081, %1066 ], [ %1329, %1676 ]
  %1699 = phi float [ %1069, %1066 ], [ %1330, %1676 ]
  %1700 = phi float [ %1070, %1066 ], [ %1331, %1676 ]
  %1701 = phi float [ %1071, %1066 ], [ %1332, %1676 ]
  %1702 = call float @dx.op.dot3.f32(i32 55, float %1692, float %1693, float %1694, float %1692, float %1693, float %1694)  ; Dot3(ax,ay,az,bx,by,bz)
  %1703 = call float @dx.op.unary.f32(i32 25, float %1702)  ; Rsqrt(value)
  %1704 = fmul fast float %1703, %1692
  %1705 = fmul fast float %1703, %1693
  %1706 = fmul fast float %1703, %1694
  %1707 = fadd fast float %1697, %1082
  %1708 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1709 = call float @dx.op.dot3.f32(i32 55, float %1704, float %1705, float %1706, float %1704, float %1705, float %1706)  ; Dot3(ax,ay,az,bx,by,bz)
  %1710 = call float @dx.op.unary.f32(i32 25, float %1709)  ; Rsqrt(value)
  %1711 = fmul fast float %1710, %1704
  %1712 = fmul fast float %1710, %1705
  %1713 = fmul fast float %1710, %1706
  %1714 = fadd fast float %1698, 0xBFB99999A0000000
  %1715 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1716 = fmul fast float %1715, 0x3FF1C71C80000000
  %1717 = call float @dx.op.binary.f32(i32 36, float %1698, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1718 = fsub fast float 1.000000e+00, %1716
  %1719 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1720 = fmul fast float %1719, %1699
  %1721 = fmul fast float %1719, %1700
  %1722 = fmul fast float %1719, %1701
  %1723 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1724 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1725 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1726 = fmul fast float %1716, %1699
  %1727 = fmul fast float %1716, %1700
  %1728 = fmul fast float %1716, %1701
  %1729 = fadd fast float %1726, %1717
  %1730 = fadd fast float %1727, %1717
  %1731 = fadd fast float %1728, %1717
  %1732 = call float @dx.op.unary.f32(i32 7, float %1729)  ; Saturate(value)
  %1733 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1734 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1735 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = and i32 %1737, 1
  %1739 = icmp eq i32 %1738, 0
  br i1 %1739, label %1754, label %1740

; <label>:1740                                    ; preds = %1677
  %1741 = call float @dx.op.binary.f32(i32 35, float %1724, float %1725)  ; FMax(a,b)
  %1742 = call float @dx.op.binary.f32(i32 35, float %1723, float %1741)  ; FMax(a,b)
  %1743 = fcmp fast ogt float %1742, 0.000000e+00
  %1744 = bitcast float %1742 to i32
  %1745 = sub nsw i32 2129859010, %1744
  %1746 = bitcast i32 %1745 to float
  %1747 = select i1 %1743, float %1746, float 0.000000e+00
  %1748 = fmul fast float %1723, %1686
  %1749 = fmul fast float %1724, %1687
  %1750 = fmul fast float %1725, %1688
  %1751 = fmul fast float %1748, %1747
  %1752 = fmul fast float %1749, %1747
  %1753 = fmul fast float %1750, %1747
  br label %1754

; <label>:1754                                    ; preds = %1740, %1677
  %1755 = phi float [ %1751, %1740 ], [ %1686, %1677 ]
  %1756 = phi float [ %1752, %1740 ], [ %1687, %1677 ]
  %1757 = phi float [ %1753, %1740 ], [ %1688, %1677 ]
  %1758 = call float @dx.op.binary.f32(i32 36, float %1681, float 1.270000e+02)  ; FMin(a,b)
  %1759 = call float @dx.op.binary.f32(i32 36, float %1682, float 1.270000e+02)  ; FMin(a,b)
  %1760 = call float @dx.op.binary.f32(i32 36, float %1683, float 1.270000e+02)  ; FMin(a,b)
  %1761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.i32 %1761, 3
  %1763 = and i32 %1762, 8
  %1764 = icmp ne i32 %1763, 0
  %1765 = call float @dx.op.binary.f32(i32 35, float %1723, float %1699)  ; FMax(a,b)
  %1766 = call float @dx.op.binary.f32(i32 35, float %1724, float %1699)  ; FMax(a,b)
  %1767 = call float @dx.op.binary.f32(i32 35, float %1725, float %1699)  ; FMax(a,b)
  %1768 = call float @dx.op.dot3.f32(i32 55, float %1723, float %1724, float %1725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1769 = select i1 %237, float %1699, float %1723
  %1770 = select i1 %237, float %1768, float %1724
  %1771 = select i1 %237, float 1.000000e+00, float %1725
  %1772 = select i1 %1764, float %1765, float %1769
  %1773 = select i1 %1764, float %1766, float %1770
  %1774 = select i1 %1764, float %1767, float %1771
  %1775 = call float @dx.op.dot3.f32(i32 55, float %1755, float %1756, float %1757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1776 = select i1 %237, float %1775, float %1755
  %1777 = select i1 %237, float %1775, float %1756
  %1778 = select i1 %237, float %1775, float %1757
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.CBufRet.f32 %1779, 1
  %1782 = extractvalue %dx.types.CBufRet.f32 %1779, 2
  %1783 = fadd fast float %1780, %146
  %1784 = fadd fast float %1781, %147
  %1785 = fadd fast float %1782, %148
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 0
  %1788 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %1789 = fsub fast float %1783, %1787
  %1790 = fsub fast float %1784, %1788
  %1791 = fmul fast float %1789, %1789
  %1792 = fmul fast float %1790, %1790
  %1793 = fadd fast float %1791, %1792
  %1794 = call float @dx.op.unary.f32(i32 24, float %1793)  ; Sqrt(value)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1796 = fcmp fast olt float %1794, %1795
  br i1 %1796, label %1797, label %1864

; <label>:1797                                    ; preds = %1754
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 0
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1805 = extractvalue %dx.types.CBufRet.f32 %1800, 1
  %1806 = extractvalue %dx.types.CBufRet.f32 %1802, 1
  %1807 = extractvalue %dx.types.CBufRet.f32 %1798, 3
  %1808 = extractvalue %dx.types.CBufRet.f32 %1800, 3
  %1809 = extractvalue %dx.types.CBufRet.f32 %1802, 3
  %1810 = fadd fast float %1807, %1783
  %1811 = fadd fast float %1808, %1784
  %1812 = fadd fast float %1809, %1785
  %1813 = fmul fast float %1810, %1799
  %1814 = call float @dx.op.tertiary.f32(i32 46, float %1811, float %1801, float %1813)  ; FMad(a,b,c)
  %1815 = call float @dx.op.tertiary.f32(i32 46, float %1812, float %1803, float %1814)  ; FMad(a,b,c)
  %1816 = fmul fast float %1810, %1804
  %1817 = call float @dx.op.tertiary.f32(i32 46, float %1811, float %1805, float %1816)  ; FMad(a,b,c)
  %1818 = call float @dx.op.tertiary.f32(i32 46, float %1812, float %1806, float %1817)  ; FMad(a,b,c)
  %1819 = fsub fast float %1815, %1807
  %1820 = fsub fast float %1818, %1808
  %1821 = fsub fast float %1819, %1787
  %1822 = fadd fast float %1821, %1795
  %1823 = fsub fast float %1820, %1788
  %1824 = fadd fast float %1823, %1795
  %1825 = extractvalue %dx.types.CBufRet.f32 %1786, 3
  %1826 = fmul fast float %1822, %1825
  %1827 = fmul fast float %1824, %1825
  %1828 = call float @dx.op.unary.f32(i32 7, float %1826)  ; Saturate(value)
  %1829 = call float @dx.op.unary.f32(i32 7, float %1827)  ; Saturate(value)
  %1830 = fsub fast float 1.000000e+00, %1828
  %1831 = fsub fast float 1.000000e+00, %1829
  %1832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 0
  %1834 = fcmp fast ugt float %1833, 0.000000e+00
  br i1 %1834, label %1835, label %2138

; <label>:1835                                    ; preds = %1797
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 2
  %1838 = fmul fast float %1837, %1833
  %1839 = extractvalue %dx.types.CBufRet.f32 %1836, 3
  %1840 = fadd fast float %1839, %1838
  %1841 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1842 = fadd fast float %1840, %1809
  %1843 = fmul fast float %1815, %1803
  %1844 = call float @dx.op.tertiary.f32(i32 46, float %1818, float %1806, float %1843)  ; FMad(a,b,c)
  %1845 = call float @dx.op.tertiary.f32(i32 46, float %1842, float %1841, float %1844)  ; FMad(a,b,c)
  %1846 = fsub fast float %1845, %1809
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1849 = fsub fast float %1846, %1848
  %1850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.ResRet.f32 %1850, 1
  %1853 = extractvalue %dx.types.ResRet.f32 %1850, 2
  %1854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1830, float %1831, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1856 = extractvalue %dx.types.ResRet.f32 %1854, 1
  %1857 = extractvalue %dx.types.ResRet.f32 %1854, 2
  %1858 = fadd fast float %1855, %1851
  %1859 = fmul fast float %1858, 0x3F847AE140000000
  %1860 = fadd fast float %1856, %1852
  %1861 = fmul fast float %1860, 0x3F847AE140000000
  %1862 = fadd fast float %1857, %1853
  %1863 = fmul fast float %1862, 0x3F847AE140000000
  br label %2138

; <label>:1864                                    ; preds = %1754
  %1865 = and i32 %213, 1
  %1866 = icmp eq i32 %1865, 0
  br i1 %1866, label %2138, label %1867

; <label>:1867                                    ; preds = %1864
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 0
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 0
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.CBufRet.f32 %1868, 1
  %1875 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1876 = extractvalue %dx.types.CBufRet.f32 %1872, 1
  %1877 = extractvalue %dx.types.CBufRet.f32 %1868, 3
  %1878 = extractvalue %dx.types.CBufRet.f32 %1870, 3
  %1879 = extractvalue %dx.types.CBufRet.f32 %1872, 3
  %1880 = fadd fast float %1877, %1783
  %1881 = fadd fast float %1878, %1784
  %1882 = fadd fast float %1879, %1785
  %1883 = fmul fast float %1880, %1869
  %1884 = call float @dx.op.tertiary.f32(i32 46, float %1881, float %1871, float %1883)  ; FMad(a,b,c)
  %1885 = call float @dx.op.tertiary.f32(i32 46, float %1882, float %1873, float %1884)  ; FMad(a,b,c)
  %1886 = fmul fast float %1880, %1874
  %1887 = call float @dx.op.tertiary.f32(i32 46, float %1881, float %1875, float %1886)  ; FMad(a,b,c)
  %1888 = call float @dx.op.tertiary.f32(i32 46, float %1882, float %1876, float %1887)  ; FMad(a,b,c)
  %1889 = fsub fast float %1885, %1877
  %1890 = fsub fast float %1888, %1878
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.CBufRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.CBufRet.f32 %1891, 2
  %1895 = extractvalue %dx.types.CBufRet.f32 %1891, 3
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 3
  %1898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.i32 %1898, 0
  %1900 = extractvalue %dx.types.CBufRet.i32 %1898, 1
  %1901 = udiv i32 %1900, %1899
  %1902 = fsub fast float %1889, %1892
  %1903 = fsub fast float %1890, %1893
  %1904 = call float @dx.op.binary.f32(i32 35, float %1902, float 0.000000e+00)  ; FMax(a,b)
  %1905 = call float @dx.op.binary.f32(i32 35, float %1903, float 0.000000e+00)  ; FMax(a,b)
  %1906 = call float @dx.op.binary.f32(i32 36, float %1904, float %1894)  ; FMin(a,b)
  %1907 = call float @dx.op.binary.f32(i32 36, float %1905, float %1895)  ; FMin(a,b)
  %1908 = add i32 %1899, -1
  %1909 = add i32 %1901, -1
  %1910 = fmul fast float %1906, %1897
  %1911 = fmul fast float %1907, %1897
  %1912 = fptoui float %1910 to i32
  %1913 = fptoui float %1911 to i32
  %1914 = call i32 @dx.op.binary.i32(i32 40, i32 %1912, i32 %1908)  ; UMin(a,b)
  %1915 = call i32 @dx.op.binary.i32(i32 40, i32 %1913, i32 %1909)  ; UMin(a,b)
  %1916 = mul i32 %1915, %1899
  %1917 = add i32 %1916, %1914
  %1918 = shl i32 %1917, 2
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = icmp eq i32 %1920, -1
  br i1 %1921, label %2138, label %1922

; <label>:1922                                    ; preds = %1867
  %1923 = mul i32 %1920, 148
  %1924 = add i32 %1923, 4
  %1925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = add i32 %1923, 8
  %1928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.f32 %1928, 0
  %1930 = add i32 %1923, 36
  %1931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.f32 %1931, 0
  %1933 = add i32 %1923, 60
  %1934 = add i32 %1923, 92
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = add i32 %1923, 116
  %1938 = fsub fast float %1889, %1926
  %1939 = fsub fast float %1890, %1929
  %1940 = fmul fast float %1897, %1938
  %1941 = fmul fast float %1897, %1939
  %1942 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1943 = call float @dx.op.unary.f32(i32 7, float %1941)  ; Saturate(value)
  %1944 = fsub fast float 1.000000e+00, %1943
  %1945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1945, 2
  %1947 = call float @dx.op.unary.f32(i32 83, float %1942)  ; DerivCoarseX(value)
  %1948 = call float @dx.op.unary.f32(i32 83, float %1944)  ; DerivCoarseX(value)
  %1949 = call float @dx.op.unary.f32(i32 84, float %1942)  ; DerivCoarseY(value)
  %1950 = call float @dx.op.unary.f32(i32 84, float %1944)  ; DerivCoarseY(value)
  %1951 = fmul fast float %1947, %1946
  %1952 = fmul fast float %1948, %1946
  %1953 = fmul fast float %1949, %1946
  %1954 = fmul fast float %1950, %1946
  %1955 = call float @dx.op.dot2.f32(i32 54, float %1953, float %1954, float %1953, float %1954)  ; Dot2(ax,ay,bx,by)
  %1956 = call float @dx.op.dot2.f32(i32 54, float %1951, float %1952, float %1951, float %1952)  ; Dot2(ax,ay,bx,by)
  %1957 = call float @dx.op.binary.f32(i32 35, float %1956, float %1955)  ; FMax(a,b)
  %1958 = call float @dx.op.unary.f32(i32 23, float %1957)  ; Log(value)
  %1959 = fmul fast float %1958, 5.000000e-01
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 1
  %1962 = fadd fast float %1961, %1959
  %1963 = call float @dx.op.binary.f32(i32 35, float %1962, float 0.000000e+00)  ; FMax(a,b)
  %1964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1965 = extractvalue %dx.types.CBufRet.f32 %1964, 3
  %1966 = fadd fast float %1965, %1963
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 3
  %1969 = fadd fast float %1966, %1968
  %1970 = add i32 %1936, 0
  %1971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1970, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1972 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1971, i32 0)  ; GetDimensions(handle,mipLevel)
  %1973 = extractvalue %dx.types.Dimensions %1972, 0
  %1974 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1973)  ; FirstbitLo(value)
  %1975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1976 = extractvalue %dx.types.CBufRet.i32 %1975, 1
  %1977 = sub nsw i32 %1976, %1974
  %1978 = sitofp i32 %1977 to float
  %1979 = fsub fast float %1969, %1978
  %1980 = call float @dx.op.binary.f32(i32 35, float %1979, float 0.000000e+00)  ; FMax(a,b)
  %1981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1971, %dx.types.Handle %62, float %1942, float %1944, float %1932, float undef, i32 0, i32 0, i32 undef, float %1980)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  %1983 = fcmp ule float %1982, 0x3FE0101020000000
  %1984 = extractvalue %dx.types.CBufRet.i32 %1975, 0
  %1985 = and i32 %1984, 128
  %1986 = icmp ne i32 %1985, 0
  %1987 = and i1 %1983, %1986
  br i1 %1987, label %2138, label %1988

; <label>:1988                                    ; preds = %1922
  %1989 = add i32 %1923, 20
  %1990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = add i32 %1923, 24
  %1993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.f32 %1993, 0
  %1995 = add i32 %1923, 40
  %1996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = add i32 %1923, 96
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 2
  %2003 = fmul fast float %2002, %1942
  %2004 = fmul fast float %2002, %1944
  %2005 = extractvalue %dx.types.CBufRet.f32 %2001, 3
  %2006 = fadd fast float %2003, %2005
  %2007 = fadd fast float %2004, %2005
  %2008 = add i32 %2000, 0
  %2009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2008, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2010 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2009, i32 0)  ; GetDimensions(handle,mipLevel)
  %2011 = extractvalue %dx.types.Dimensions %2010, 0
  %2012 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2011)  ; FirstbitLo(value)
  %2013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.i32 %2013, 1
  %2015 = sub nsw i32 %2014, %2012
  %2016 = sitofp i32 %2015 to float
  %2017 = fsub fast float %1966, %2016
  %2018 = call float @dx.op.binary.f32(i32 35, float %2017, float 0.000000e+00)  ; FMax(a,b)
  %2019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2009, %dx.types.Handle %62, float %2006, float %2007, float %1997, float undef, i32 0, i32 0, i32 undef, float %2018)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 0
  %2021 = fmul fast float %2020, %1991
  %2022 = fadd fast float %2021, %1994
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = extractvalue %dx.types.CBufRet.f32 %2023, 2
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 3
  %2029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.f32 %2029, 3
  %2031 = extractvalue %dx.types.CBufRet.f32 %2023, 3
  %2032 = fadd fast float %2028, %1889
  %2033 = fadd fast float %2030, %1890
  %2034 = fadd fast float %2022, %2031
  %2035 = fmul fast float %2032, %2024
  %2036 = call float @dx.op.tertiary.f32(i32 46, float %2033, float %2025, float %2035)  ; FMad(a,b,c)
  %2037 = call float @dx.op.tertiary.f32(i32 46, float %2034, float %2026, float %2036)  ; FMad(a,b,c)
  %2038 = fsub fast float %2037, %2031
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 2
  %2041 = fsub fast float %2038, %2040
  %2042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.i32 %2042, 0
  %2044 = call i32 @dx.op.binary.i32(i32 40, i32 %1920, i32 %2043)  ; UMin(a,b)
  %2045 = mul i32 %2044, 36
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = add i32 %2045, 4
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 0
  %2051 = fmul fast float %2050, %1942
  %2052 = fmul fast float %2050, %1944
  %2053 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2054 = fadd fast float %2051, %2053
  %2055 = fadd fast float %2052, %2053
  %2056 = icmp eq i32 %2047, 0
  br i1 %2056, label %2125, label %2057

; <label>:2057                                    ; preds = %1988
  br label %2058

; <label>:2058                                    ; preds = %2115, %2057
  %2059 = phi float [ %2116, %2115 ], [ 0.000000e+00, %2057 ]
  %2060 = phi float [ %2117, %2115 ], [ 0.000000e+00, %2057 ]
  %2061 = phi float [ %2118, %2115 ], [ 0.000000e+00, %2057 ]
  %2062 = phi float [ %2119, %2115 ], [ 0.000000e+00, %2057 ]
  %2063 = phi float [ %2120, %2115 ], [ 0.000000e+00, %2057 ]
  %2064 = phi float [ %2121, %2115 ], [ 0.000000e+00, %2057 ]
  %2065 = phi i32 [ %2122, %2115 ], [ 0, %2057 ]
  %2066 = shl i32 %2065, 2
  %2067 = add i32 %1933, %2066
  %2068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.f32 %2068, 0
  %2070 = add i32 %1937, %2066
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = add i32 %2072, 0
  %2074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2073, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2075 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2074, i32 0)  ; GetDimensions(handle,mipLevel)
  %2076 = extractvalue %dx.types.Dimensions %2075, 0
  %2077 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2076)  ; FirstbitLo(value)
  %2078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.i32 %2078, 1
  %2080 = sub nsw i32 %2079, %2077
  %2081 = sitofp i32 %2080 to float
  %2082 = fsub fast float %1966, %2081
  %2083 = call float @dx.op.binary.f32(i32 35, float %2082, float 0.000000e+00)  ; FMax(a,b)
  %2084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2074, %dx.types.Handle %62, float %2054, float %2055, float %2069, float undef, i32 0, i32 0, i32 undef, float %2083)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = fcmp fast ogt float %2085, 0.000000e+00
  br i1 %2086, label %2087, label %2115

; <label>:2087                                    ; preds = %2058
  %2088 = add i32 %2048, %2066
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = and i32 %2090, 32767
  %2092 = mul nuw nsw i32 %2091, 928
  %2093 = add nuw nsw i32 %2092, 48
  %2094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = extractvalue %dx.types.ResRet.f32 %2094, 1
  %2097 = extractvalue %dx.types.ResRet.f32 %2094, 2
  %2098 = add nuw nsw i32 %2092, 60
  %2099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = extractvalue %dx.types.ResRet.f32 %2099, 1
  %2102 = extractvalue %dx.types.ResRet.f32 %2099, 2
  %2103 = fmul fast float %2095, %2085
  %2104 = fmul fast float %2096, %2085
  %2105 = fmul fast float %2097, %2085
  %2106 = fadd fast float %2103, %2059
  %2107 = fadd fast float %2104, %2060
  %2108 = fadd fast float %2105, %2061
  %2109 = fmul fast float %2100, %2085
  %2110 = fmul fast float %2101, %2085
  %2111 = fmul fast float %2102, %2085
  %2112 = fadd fast float %2109, %2062
  %2113 = fadd fast float %2110, %2063
  %2114 = fadd fast float %2111, %2064
  br label %2115

; <label>:2115                                    ; preds = %2087, %2058
  %2116 = phi float [ %2106, %2087 ], [ %2059, %2058 ]
  %2117 = phi float [ %2107, %2087 ], [ %2060, %2058 ]
  %2118 = phi float [ %2108, %2087 ], [ %2061, %2058 ]
  %2119 = phi float [ %2112, %2087 ], [ %2062, %2058 ]
  %2120 = phi float [ %2113, %2087 ], [ %2063, %2058 ]
  %2121 = phi float [ %2114, %2087 ], [ %2064, %2058 ]
  %2122 = add nuw i32 %2065, 1
  %2123 = icmp eq i32 %2122, %2047
  br i1 %2123, label %2124, label %2058

; <label>:2124                                    ; preds = %2115
  br label %2125

; <label>:2125                                    ; preds = %2124, %1988
  %2126 = phi float [ 0.000000e+00, %1988 ], [ %2116, %2124 ]
  %2127 = phi float [ 0.000000e+00, %1988 ], [ %2117, %2124 ]
  %2128 = phi float [ 0.000000e+00, %1988 ], [ %2118, %2124 ]
  %2129 = phi float [ 0.000000e+00, %1988 ], [ %2119, %2124 ]
  %2130 = phi float [ 0.000000e+00, %1988 ], [ %2120, %2124 ]
  %2131 = phi float [ 0.000000e+00, %1988 ], [ %2121, %2124 ]
  %2132 = fadd fast float %2129, %2126
  %2133 = fmul fast float %2132, 0x3F847AE140000000
  %2134 = fadd fast float %2130, %2127
  %2135 = fmul fast float %2134, 0x3F847AE140000000
  %2136 = fadd fast float %2131, %2128
  %2137 = fmul fast float %2136, 0x3F847AE140000000
  br label %2138

; <label>:2138                                    ; preds = %2125, %1922, %1867, %1864, %1835, %1797
  %2139 = phi float [ %1849, %1835 ], [ -1.310720e+05, %1797 ], [ %2041, %2125 ], [ -1.310720e+05, %1867 ], [ -1.310720e+05, %1922 ], [ -1.310720e+05, %1864 ]
  %2140 = phi float [ %1859, %1835 ], [ 0.000000e+00, %1797 ], [ %2133, %2125 ], [ 0.000000e+00, %1867 ], [ 0.000000e+00, %1922 ], [ 0.000000e+00, %1864 ]
  %2141 = phi float [ %1861, %1835 ], [ 0.000000e+00, %1797 ], [ %2135, %2125 ], [ 0.000000e+00, %1867 ], [ 0.000000e+00, %1922 ], [ 0.000000e+00, %1864 ]
  %2142 = phi float [ %1863, %1835 ], [ 0.000000e+00, %1797 ], [ %2137, %2125 ], [ 0.000000e+00, %1867 ], [ 0.000000e+00, %1922 ], [ 0.000000e+00, %1864 ]
  %2143 = phi i1 [ true, %1835 ], [ false, %1797 ], [ true, %2125 ], [ false, %1867 ], [ false, %1922 ], [ false, %1864 ]
  %2144 = and i32 %213, 3
  %2145 = icmp eq i32 %2144, 1
  %2146 = select i1 %2145, float 1.000000e+00, float 0.000000e+00
  %2147 = fsub fast float %2139, %148
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = select i1 %2143, float %2148, float 1.000000e+00
  %2150 = fmul fast float %2149, %2146
  %2151 = icmp eq i32 %2144, 3
  %2152 = select i1 %2151, float 1.000000e+00, float %2150
  %2153 = call float @dx.op.binary.f32(i32 35, float %1678, float %2152)  ; FMax(a,b)
  %2154 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2155 = fcmp fast une float %2154, 0.000000e+00
  %2156 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %146, float %147, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %2157 = call float @dx.op.unary.f32(i32 25, float %2156)  ; Rsqrt(value)
  br i1 %2155, label %2165, label %2158

; <label>:2158                                    ; preds = %2138
  %2159 = fmul fast float %2157, %146
  %2160 = fmul fast float %2157, %147
  %2161 = fmul fast float %2157, %148
  %2162 = fsub fast float -0.000000e+00, %2159
  %2163 = fsub fast float -0.000000e+00, %2160
  %2164 = fsub fast float -0.000000e+00, %2161
  br label %2333

; <label>:2165                                    ; preds = %2138
  %2166 = fmul fast float %146, %2157
  %2167 = fsub fast float -0.000000e+00, %2166
  %2168 = fmul fast float %147, %2157
  %2169 = fsub fast float -0.000000e+00, %2168
  %2170 = fmul fast float %148, %2157
  %2171 = fsub fast float -0.000000e+00, %2170
  %2172 = call float @dx.op.dot3.f32(i32 55, float %2167, float %2169, float %2171, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %2173 = fmul fast float %2154, 2.500000e+00
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = fmul fast float %2154, 0x4013FFFFE0000000
  %2176 = fadd fast float %2175, 0xBFFFFFFFE0000000
  %2177 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2178 = fmul fast float %2154, 0x4004000020000000
  %2179 = fadd fast float %2178, 0xBFF8000040000000
  %2180 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2181 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2182 = fmul fast float %1714, 1.000000e+01
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2184 = fmul fast float %2183, 2.000000e+00
  %2185 = fsub fast float 3.000000e+00, %2184
  %2186 = fmul fast float %2183, %2183
  %2187 = fmul fast float %2186, %2185
  %2188 = fsub fast float 1.000000e+00, %2187
  %2189 = fsub fast float 0x3FE3333340000000, %1735
  %2190 = fmul fast float %2189, 0x400AAAAAA0000000
  %2191 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  %2192 = fmul fast float %2188, %2191
  %2193 = fmul fast float %1772, 0x3FEA2B8620000000
  %2194 = fmul fast float %1773, 0x3FEA2B8620000000
  %2195 = fmul fast float %1774, 0x3FEA2B8620000000
  %2196 = fadd fast float %2193, 0x3FC81DFBA0000000
  %2197 = fmul fast float %2196, %1772
  %2198 = fadd fast float %2197, 0x3F910E6020000000
  %2199 = fadd fast float %2194, 0x3FC81DFBA0000000
  %2200 = fmul fast float %2199, %1773
  %2201 = fadd fast float %2200, 0x3F910E6020000000
  %2202 = fadd fast float %2195, 0x3FC81DFBA0000000
  %2203 = fmul fast float %2202, %1774
  %2204 = fadd fast float %2203, 0x3F910E6020000000
  %2205 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2206 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  %2207 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2208 = fsub fast float %2205, %1772
  %2209 = fsub fast float %2206, %1773
  %2210 = fsub fast float %2207, %1774
  %2211 = fmul fast float %2208, %2181
  %2212 = fmul fast float %2211, %2192
  %2213 = fmul fast float %2209, %2181
  %2214 = fmul fast float %2213, %2192
  %2215 = fmul fast float %2210, %2181
  %2216 = fmul fast float %2215, %2192
  %2217 = fadd fast float %2212, %1772
  %2218 = fadd fast float %2214, %1773
  %2219 = fadd fast float %2216, %1774
  %2220 = fmul fast float %1695, %1695
  %2221 = fmul fast float %2220, %2220
  %2222 = fadd fast float %2177, 1.000000e+00
  %2223 = fsub fast float %2222, %2192
  %2224 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  %2225 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2226 = call float @dx.op.unary.f32(i32 7, float %2225)  ; Saturate(value)
  %2227 = fsub fast float 1.000000e+00, %2221
  %2228 = call float @dx.op.binary.f32(i32 36, float %2224, float %2227)  ; FMin(a,b)
  %2229 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2230 = call float @dx.op.binary.f32(i32 35, float %2228, float %2229)  ; FMax(a,b)
  %2231 = fadd fast float %2226, 0xBFE4CCCCC0000000
  %2232 = fmul fast float %2231, 0x4006DB6DA0000000
  %2233 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2234 = fmul fast float %2233, 2.000000e+00
  %2235 = fsub fast float 3.000000e+00, %2234
  %2236 = bitcast float %1732 to i32
  %2237 = ashr i32 %2236, 1
  %2238 = add nsw i32 %2237, 532487669
  %2239 = bitcast i32 %2238 to float
  %2240 = fsub fast float 1.000000e+00, %2239
  %2241 = bitcast float %2240 to i32
  %2242 = sub nsw i32 2129859010, %2241
  %2243 = bitcast i32 %2242 to float
  %2244 = fmul fast float %2243, 2.000000e+00
  %2245 = bitcast float %1733 to i32
  %2246 = ashr i32 %2245, 1
  %2247 = add nsw i32 %2246, 532487669
  %2248 = bitcast i32 %2247 to float
  %2249 = fsub fast float 1.000000e+00, %2248
  %2250 = bitcast float %2249 to i32
  %2251 = sub nsw i32 2129859010, %2250
  %2252 = bitcast i32 %2251 to float
  %2253 = fmul fast float %2252, 2.000000e+00
  %2254 = bitcast float %1734 to i32
  %2255 = ashr i32 %2254, 1
  %2256 = add nsw i32 %2255, 532487669
  %2257 = bitcast i32 %2256 to float
  %2258 = fsub fast float 1.000000e+00, %2257
  %2259 = bitcast float %2258 to i32
  %2260 = sub nsw i32 2129859010, %2259
  %2261 = bitcast i32 %2260 to float
  %2262 = fmul fast float %2261, 2.000000e+00
  %2263 = fsub fast float 0x4002A9FBE0000000, %2244
  %2264 = fadd fast float %2244, 0x3FD54FDF00000000
  %2265 = bitcast float %2264 to i32
  %2266 = sub nsw i32 2129859010, %2265
  %2267 = bitcast i32 %2266 to float
  %2268 = fmul fast float %2267, %2263
  %2269 = fmul fast float %2268, %2268
  %2270 = fsub fast float 0x4002A9FBE0000000, %2253
  %2271 = fadd fast float %2253, 0x3FD54FDF00000000
  %2272 = bitcast float %2271 to i32
  %2273 = sub nsw i32 2129859010, %2272
  %2274 = bitcast i32 %2273 to float
  %2275 = fmul fast float %2274, %2270
  %2276 = fmul fast float %2275, %2275
  %2277 = fsub fast float 0x4002A9FBE0000000, %2262
  %2278 = fadd fast float %2262, 0x3FD54FDF00000000
  %2279 = bitcast float %2278 to i32
  %2280 = sub nsw i32 2129859010, %2279
  %2281 = bitcast i32 %2280 to float
  %2282 = fmul fast float %2281, %2277
  %2283 = fmul fast float %2282, %2282
  %2284 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2269)  ; FMax(a,b)
  %2285 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2276)  ; FMax(a,b)
  %2286 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2283)  ; FMax(a,b)
  %2287 = fsub fast float 1.000000e+00, %2172
  %2288 = fadd fast float %2287, %2188
  %2289 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2290 = fsub fast float 1.000000e+00, %2152
  %2291 = fmul fast float %2230, %2290
  %2292 = fmul fast float %2233, %2233
  %2293 = fmul fast float %2292, %2291
  %2294 = fmul fast float %2293, %2235
  %2295 = fmul fast float %2290, 0xBFE99999A0000000
  %2296 = fmul fast float %2295, %2181
  %2297 = fmul fast float %2296, %2192
  %2298 = fadd fast float %2297, 1.000000e+00
  %2299 = fadd fast float %1735, -1.000000e+00
  %2300 = fmul fast float %2298, %2299
  %2301 = fadd fast float %2300, 1.000000e+00
  %2302 = fsub fast float %2284, %1732
  %2303 = fsub fast float %2285, %1733
  %2304 = fsub fast float %2286, %1734
  %2305 = fmul fast float %2294, %2302
  %2306 = fmul fast float %2294, %2303
  %2307 = fmul fast float %2294, %2304
  %2308 = fadd fast float %2305, %1732
  %2309 = fadd fast float %2306, %1733
  %2310 = fadd fast float %2307, %1734
  %2311 = fsub fast float %76, %1711
  %2312 = fsub fast float %77, %1712
  %2313 = fsub fast float %78, %1713
  %2314 = fmul fast float %2294, %2311
  %2315 = fmul fast float %2294, %2312
  %2316 = fmul fast float %2294, %2313
  %2317 = fadd fast float %2314, %1711
  %2318 = fadd fast float %2315, %1712
  %2319 = fadd fast float %2316, %1713
  %2320 = fmul fast float %2294, %2289
  %2321 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2322 = fsub fast float 1.000000e+00, %2321
  %2323 = fmul fast float %2320, %2322
  %2324 = fadd fast float %2323, %2321
  %2325 = fsub fast float 1.000000e+00, %1695
  %2326 = fmul fast float %2294, %2325
  %2327 = fadd fast float %2326, %1695
  %2328 = call float @dx.op.dot3.f32(i32 55, float %2317, float %2318, float %2319, float %2317, float %2318, float %2319)  ; Dot3(ax,ay,az,bx,by,bz)
  %2329 = call float @dx.op.unary.f32(i32 25, float %2328)  ; Rsqrt(value)
  %2330 = fmul fast float %2317, %2329
  %2331 = fmul fast float %2318, %2329
  %2332 = fmul fast float %2319, %2329
  br label %2333

; <label>:2333                                    ; preds = %2165, %2158
  %2334 = phi float [ %2164, %2158 ], [ %2171, %2165 ]
  %2335 = phi float [ %2163, %2158 ], [ %2169, %2165 ]
  %2336 = phi float [ %2162, %2158 ], [ %2167, %2165 ]
  %2337 = phi float [ %2161, %2158 ], [ %2170, %2165 ]
  %2338 = phi float [ %2160, %2158 ], [ %2168, %2165 ]
  %2339 = phi float [ %2159, %2158 ], [ %2166, %2165 ]
  %2340 = phi float [ %1772, %2158 ], [ %2217, %2165 ]
  %2341 = phi float [ %1773, %2158 ], [ %2218, %2165 ]
  %2342 = phi float [ %1774, %2158 ], [ %2219, %2165 ]
  %2343 = phi float [ %1711, %2158 ], [ %2330, %2165 ]
  %2344 = phi float [ %1712, %2158 ], [ %2331, %2165 ]
  %2345 = phi float [ %1713, %2158 ], [ %2332, %2165 ]
  %2346 = phi float [ %1732, %2158 ], [ %2308, %2165 ]
  %2347 = phi float [ %1733, %2158 ], [ %2309, %2165 ]
  %2348 = phi float [ %1734, %2158 ], [ %2310, %2165 ]
  %2349 = phi float [ %1735, %2158 ], [ %2324, %2165 ]
  %2350 = phi float [ %1695, %2158 ], [ %2327, %2165 ]
  %2351 = fsub fast float -0.000000e+00, %148
  %2352 = select i1 %237, float 0.000000e+00, float %2348
  %2353 = call float @dx.op.dot3.f32(i32 55, float %2343, float %2344, float %2345, float %2336, float %2335, float %2334)  ; Dot3(ax,ay,az,bx,by,bz)
  %2354 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  %2355 = call float @dx.op.dot3.f32(i32 55, float %2339, float %2338, float %2337, float %2343, float %2344, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %2356 = fmul fast float %2355, 2.000000e+00
  %2357 = fmul fast float %2356, %2343
  %2358 = fmul fast float %2356, %2344
  %2359 = fmul fast float %2356, %2345
  %2360 = fsub fast float %2339, %2357
  %2361 = fsub fast float %2338, %2358
  %2362 = fsub fast float %2337, %2359
  %2363 = call float @dx.op.binary.f32(i32 36, float %2350, float 1.000000e+00)  ; FMin(a,b)
  %2364 = fsub fast float 1.000000e+00, %2363
  %2365 = bitcast float %2364 to i32
  %2366 = ashr i32 %2365, 1
  %2367 = add nsw i32 %2366, 532487669
  %2368 = bitcast i32 %2367 to float
  %2369 = fsub fast float 1.000000e+00, %2349
  %2370 = call float @dx.op.binary.f32(i32 35, float %2369, float 0x3F847AE140000000)  ; FMax(a,b)
  %2371 = fmul fast float %2370, %2370
  %2372 = fmul fast float %2371, %2371
  %2373 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2368, float %2372, float %2373, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2375 = extractvalue %dx.types.ResRet.f32 %2374, 0
  %2376 = fsub fast float 1.000000e+00, %2350
  %2377 = bitcast float %2376 to i32
  %2378 = sub nsw i32 2129859010, %2377
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.CBufRet.f32 %2379, 1
  %2382 = fadd fast float %2380, %146
  %2383 = fadd fast float %2381, %147
  %2384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.i32 %2384, 0
  %2386 = icmp eq i32 %2385, 1
  br i1 %2386, label %2387, label %2422

; <label>:2387                                    ; preds = %2333
  %2388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.f32 %2388, 0
  %2390 = extractvalue %dx.types.CBufRet.f32 %2388, 1
  %2391 = fsub fast float %2382, %2389
  %2392 = fsub fast float %2383, %2390
  %2393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2394 = extractvalue %dx.types.CBufRet.f32 %2393, 0
  %2395 = extractvalue %dx.types.CBufRet.f32 %2393, 1
  %2396 = fmul fast float %2391, %2394
  %2397 = fmul fast float %2392, %2395
  %2398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2396, float %2397, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2399 = extractvalue %dx.types.ResRet.f32 %2398, 0
  %2400 = fcmp fast ogt float %2399, 0.000000e+00
  %2401 = extractvalue %dx.types.CBufRet.i32 %2384, 3
  %2402 = icmp ne i32 %2401, 0
  %2403 = and i1 %2400, %2402
  br i1 %2403, label %2404, label %2422, !dx.controlflow.hints !106

; <label>:2404                                    ; preds = %2387
  %2405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2406 = extractvalue %dx.types.CBufRet.f32 %2405, 0
  %2407 = extractvalue %dx.types.CBufRet.f32 %2405, 1
  %2408 = fsub fast float %2382, %2406
  %2409 = fsub fast float %2383, %2407
  %2410 = fmul fast float %2408, %2408
  %2411 = fmul fast float %2409, %2409
  %2412 = fadd fast float %2410, %2411
  %2413 = uitofp i32 %2401 to float
  %2414 = fmul fast float %2413, %2413
  %2415 = fcmp fast ogt float %2412, %2414
  br i1 %2415, label %2422, label %2416

; <label>:2416                                    ; preds = %2404
  %2417 = call float @dx.op.unary.f32(i32 24, float %2412)  ; Sqrt(value)
  %2418 = fsub fast float %2413, %2417
  %2419 = fmul fast float %2418, 0x3F75555560000000
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2421 = call float @dx.op.binary.f32(i32 36, float %2420, float %2399)  ; FMin(a,b)
  br label %2422

; <label>:2422                                    ; preds = %2416, %2404, %2387, %2333
  %2423 = phi float [ 1.000000e+00, %2333 ], [ %2421, %2416 ], [ %2399, %2387 ], [ 0.000000e+00, %2404 ]
  %2424 = fcmp fast ogt float %2423, 0.000000e+00
  br i1 %2424, label %2425, label %2524, !dx.controlflow.hints !107

; <label>:2425                                    ; preds = %2422
  %2426 = fadd fast float %177, 5.000000e-01
  %2427 = call float @dx.op.unary.f32(i32 27, float %2426)  ; Round_ni(value)
  %2428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %175, float %176, float %2427, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2429 = extractvalue %dx.types.ResRet.f32 %2428, 0
  %2430 = extractvalue %dx.types.ResRet.f32 %2428, 1
  %2431 = extractvalue %dx.types.ResRet.f32 %2428, 2
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 3
  %2434 = fmul fast float %2433, %2429
  %2435 = fmul fast float %2433, %2430
  %2436 = fmul fast float %2433, %2431
  %2437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %175, float %176, float %2427, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2438 = extractvalue %dx.types.ResRet.f32 %2437, 0
  %2439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %175, float %176, float %2427, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2440 = extractvalue %dx.types.ResRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.ResRet.f32 %2439, 1
  %2442 = fmul fast float %2440, 2.000000e+00
  %2443 = fmul fast float %2441, 2.000000e+00
  %2444 = fadd fast float %2442, -1.000000e+00
  %2445 = fadd fast float %2443, -1.000000e+00
  %2446 = fadd fast float %2444, %2445
  %2447 = fmul fast float %2446, 5.000000e-01
  %2448 = fsub fast float %2444, %2445
  %2449 = fmul fast float %2448, 5.000000e-01
  %2450 = call float @dx.op.unary.f32(i32 6, float %2447)  ; FAbs(value)
  %2451 = fsub fast float 1.000000e+00, %2450
  %2452 = call float @dx.op.unary.f32(i32 6, float %2449)  ; FAbs(value)
  %2453 = fsub fast float %2451, %2452
  %2454 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2453)  ; FMax(a,b)
  %2455 = call float @dx.op.dot3.f32(i32 55, float %2447, float %2449, float %2454, float %2447, float %2449, float %2454)  ; Dot3(ax,ay,az,bx,by,bz)
  %2456 = bitcast float %2455 to i32
  %2457 = ashr i32 %2456, 1
  %2458 = sub nsw i32 1597250115, %2457
  %2459 = bitcast i32 %2458 to float
  %2460 = fmul fast float %2459, %2447
  %2461 = fmul fast float %2459, %2449
  %2462 = fmul fast float %2459, %2454
  %2463 = fsub fast float 1.000000e+00, %2438
  %2464 = fdiv fast float %2463, %2462
  %2465 = fmul fast float %2462, %76
  %2466 = fmul fast float %2462, %77
  %2467 = fmul fast float %2462, %78
  %2468 = fmul fast float %2460, %72
  %2469 = fmul fast float %2460, %73
  %2470 = fmul fast float %2460, %74
  %2471 = fadd fast float %2465, %2468
  %2472 = fadd fast float %2466, %2469
  %2473 = fadd fast float %2467, %2470
  %2474 = fmul fast float %2461, %110
  %2475 = fmul fast float %2461, %111
  %2476 = fmul fast float %2461, %112
  %2477 = fadd fast float %2471, %2474
  %2478 = fadd fast float %2472, %2475
  %2479 = fadd fast float %2473, %2476
  %2480 = call float @dx.op.dot3.f32(i32 55, float %2477, float %2478, float %2479, float %2477, float %2478, float %2479)  ; Dot3(ax,ay,az,bx,by,bz)
  %2481 = call float @dx.op.unary.f32(i32 25, float %2480)  ; Rsqrt(value)
  %2482 = fmul fast float %2477, %2481
  %2483 = fmul fast float %2478, %2481
  %2484 = fmul fast float %2479, %2481
  %2485 = call float @dx.op.dot3.f32(i32 55, float %2343, float %2344, float %2345, float %2343, float %2344, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %2486 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2487 = fmul fast float %2486, 5.000000e-01
  %2488 = fadd fast float %2487, 5.000000e-01
  %2489 = fmul fast float %2488, %2438
  %2490 = call float @dx.op.dot3.f32(i32 55, float %2343, float %2344, float %2345, float %2482, float %2483, float %2484)  ; Dot3(ax,ay,az,bx,by,bz)
  %2491 = call float @dx.op.unary.f32(i32 7, float %2490)  ; Saturate(value)
  %2492 = fmul fast float %2491, %2464
  %2493 = fadd fast float %2489, %2492
  %2494 = fsub fast float 5.000000e-01, %2487
  %2495 = fmul fast float %2494, %2340
  %2496 = fmul fast float %2494, %2341
  %2497 = fmul fast float %2494, %2342
  %2498 = fadd fast float %2493, %2495
  %2499 = fmul fast float %2498, %2434
  %2500 = fadd fast float %2493, %2496
  %2501 = fmul fast float %2500, %2435
  %2502 = fadd fast float %2493, %2497
  %2503 = fmul fast float %2502, %2436
  %2504 = call float @dx.op.dot3.f32(i32 55, float %2360, float %2361, float %2362, float %2343, float %2344, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %2505 = call float @dx.op.unary.f32(i32 7, float %2504)  ; Saturate(value)
  %2506 = fmul fast float %2505, 5.000000e-01
  %2507 = fadd fast float %2506, 5.000000e-01
  %2508 = fmul fast float %2507, %2438
  %2509 = call float @dx.op.dot3.f32(i32 55, float %2360, float %2361, float %2362, float %2482, float %2483, float %2484)  ; Dot3(ax,ay,az,bx,by,bz)
  %2510 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2511 = fmul fast float %2510, %2464
  %2512 = fadd fast float %2508, %2511
  %2513 = fsub fast float 5.000000e-01, %2506
  %2514 = fmul fast float %2513, %2340
  %2515 = fmul fast float %2513, %2341
  %2516 = fmul fast float %2513, %2342
  %2517 = fadd fast float %2512, %2514
  %2518 = fmul fast float %2517, %2434
  %2519 = fadd fast float %2512, %2515
  %2520 = fmul fast float %2519, %2435
  %2521 = fadd fast float %2512, %2516
  %2522 = fmul fast float %2521, %2436
  %2523 = call float @dx.op.dot3.f32(i32 55, float %2434, float %2435, float %2436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2524

; <label>:2524                                    ; preds = %2425, %2422
  %2525 = phi float [ %2523, %2425 ], [ 0.000000e+00, %2422 ]
  %2526 = phi float [ %2518, %2425 ], [ 0.000000e+00, %2422 ]
  %2527 = phi float [ %2520, %2425 ], [ 0.000000e+00, %2422 ]
  %2528 = phi float [ %2522, %2425 ], [ 0.000000e+00, %2422 ]
  %2529 = phi float [ %2499, %2425 ], [ 0.000000e+00, %2422 ]
  %2530 = phi float [ %2501, %2425 ], [ 0.000000e+00, %2422 ]
  %2531 = phi float [ %2503, %2425 ], [ 0.000000e+00, %2422 ]
  %2532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2533 = extractvalue %dx.types.CBufRet.f32 %2532, 0
  %2534 = fcmp fast ogt float %2533, 0.000000e+00
  %2535 = and i1 %2424, %2534
  br i1 %2535, label %2536, label %2740, !dx.controlflow.hints !108

; <label>:2536                                    ; preds = %2524
  %2537 = extractvalue %dx.types.CBufRet.f32 %2379, 2
  %2538 = fadd fast float %2537, %148
  %2539 = fmul fast float %2343, 3.200000e+01
  %2540 = fmul fast float %2344, 3.200000e+01
  %2541 = fadd fast float %2382, %2539
  %2542 = fadd fast float %2383, %2540
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.CBufRet.f32 %2543, 1
  %2546 = fsub fast float %2541, %2544
  %2547 = fsub fast float %2542, %2545
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 0
  %2550 = extractvalue %dx.types.CBufRet.f32 %2548, 1
  %2551 = fmul fast float %2546, %2549
  %2552 = fmul fast float %2547, %2550
  %2553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2554 = extractvalue %dx.types.CBufRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.CBufRet.f32 %2553, 1
  %2556 = fsub fast float %2382, %2554
  %2557 = fsub fast float %2383, %2555
  %2558 = fmul fast float %2556, %2556
  %2559 = fmul fast float %2557, %2557
  %2560 = fadd fast float %2558, %2559
  %2561 = call float @dx.op.unary.f32(i32 24, float %2560)  ; Sqrt(value)
  %2562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2563 = extractvalue %dx.types.CBufRet.f32 %2562, 0
  %2564 = extractvalue %dx.types.CBufRet.f32 %2562, 1
  %2565 = fsub fast float %2561, %2563
  %2566 = fdiv fast float %2565, %2564
  %2567 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2568 = fmul fast float %2567, 2.000000e+00
  %2569 = fsub fast float 3.000000e+00, %2568
  %2570 = fmul fast float %2567, %2567
  %2571 = fmul fast float %2570, %2569
  %2572 = fcmp fast oge float %2551, 0.000000e+00
  %2573 = fcmp fast ole float %2551, 1.000000e+00
  %2574 = and i1 %2573, %2572
  %2575 = fcmp fast oge float %2552, 0.000000e+00
  %2576 = and i1 %2575, %2574
  %2577 = fcmp fast ole float %2552, 1.000000e+00
  %2578 = and i1 %2577, %2576
  %2579 = fcmp fast ogt float %2571, 0.000000e+00
  %2580 = and i1 %2579, %2578
  br i1 %2580, label %2581, label %2704, !dx.controlflow.hints !109

; <label>:2581                                    ; preds = %2536
  %2582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2583 = extractvalue %dx.types.CBufRet.f32 %2582, 2
  %2584 = extractvalue %dx.types.CBufRet.f32 %2582, 3
  %2585 = fmul fast float %2583, %2551
  %2586 = fmul fast float %2584, %2552
  %2587 = call float @dx.op.unary.f32(i32 27, float %2585)  ; Round_ni(value)
  %2588 = call float @dx.op.unary.f32(i32 27, float %2586)  ; Round_ni(value)
  %2589 = fptosi float %2587 to i32
  %2590 = fptosi float %2588 to i32
  %2591 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2589, i32 %2590, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = lshr i32 %2592, 16
  %2594 = icmp eq i32 %2593, 65535
  br i1 %2594, label %2704, label %2595

; <label>:2595                                    ; preds = %2581
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 0
  %2598 = fmul fast float %2597, %2551
  %2599 = extractvalue %dx.types.CBufRet.f32 %2596, 1
  %2600 = fadd fast float %2598, %2599
  %2601 = extractvalue %dx.types.CBufRet.f32 %2596, 2
  %2602 = fmul fast float %2601, %2552
  %2603 = extractvalue %dx.types.CBufRet.f32 %2596, 3
  %2604 = fadd fast float %2602, %2603
  %2605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2600, float %2604, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2606 = extractvalue %dx.types.ResRet.f32 %2605, 0
  %2607 = extractvalue %dx.types.ResRet.f32 %2605, 1
  %2608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2609 = extractvalue %dx.types.CBufRet.f32 %2608, 1
  %2610 = extractvalue %dx.types.CBufRet.f32 %2608, 0
  %2611 = fsub fast float %2609, %2610
  %2612 = fmul fast float %2611, %2606
  %2613 = fadd fast float %2612, %2610
  %2614 = extractvalue %dx.types.CBufRet.f32 %2608, 3
  %2615 = extractvalue %dx.types.CBufRet.f32 %2608, 2
  %2616 = fsub fast float %2614, %2615
  %2617 = fmul fast float %2616, %2607
  %2618 = fadd fast float %2617, %2615
  %2619 = fsub fast float %2538, %2613
  %2620 = fsub fast float %2618, %2613
  %2621 = fdiv fast float %2619, %2620
  %2622 = call float @dx.op.unary.f32(i32 7, float %2621)  ; Saturate(value)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2532, 1
  %2624 = extractvalue %dx.types.CBufRet.f32 %2582, 0
  %2625 = extractvalue %dx.types.CBufRet.f32 %2582, 1
  %2626 = fmul fast float %2624, %2551
  %2627 = fmul fast float %2625, %2552
  %2628 = fmul fast float %2626, 1.250000e-01
  %2629 = fmul fast float %2627, 1.250000e-01
  %2630 = call float @dx.op.unary.f32(i32 27, float %2628)  ; Round_ni(value)
  %2631 = call float @dx.op.unary.f32(i32 27, float %2629)  ; Round_ni(value)
  %2632 = fmul fast float %2630, 8.000000e+00
  %2633 = fmul fast float %2631, 8.000000e+00
  %2634 = fsub fast float %2626, %2632
  %2635 = fsub fast float %2627, %2633
  %2636 = fadd fast float %2634, 5.000000e-01
  %2637 = fadd fast float %2635, 5.000000e-01
  %2638 = and i32 %2593, 255
  %2639 = lshr i32 %2592, 24
  %2640 = mul nuw nsw i32 %2638, 9
  %2641 = uitofp i32 %2640 to float
  %2642 = mul nuw nsw i32 %2639, 9
  %2643 = uitofp i32 %2642 to float
  %2644 = fadd fast float %2636, %2641
  %2645 = fadd fast float %2637, %2643
  %2646 = fdiv fast float %2644, %2533
  %2647 = fdiv fast float %2645, %2623
  %2648 = fmul fast float %2622, 4.375000e-01
  %2649 = fadd fast float %2648, 3.125000e-02
  %2650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2646, float %2647, float %2649, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2651 = extractvalue %dx.types.ResRet.f32 %2650, 0
  %2652 = extractvalue %dx.types.ResRet.f32 %2650, 1
  %2653 = extractvalue %dx.types.ResRet.f32 %2650, 2
  %2654 = fadd fast float %2648, 5.312500e-01
  %2655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2646, float %2647, float %2654, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2656 = extractvalue %dx.types.ResRet.f32 %2655, 0
  %2657 = extractvalue %dx.types.ResRet.f32 %2655, 1
  %2658 = extractvalue %dx.types.ResRet.f32 %2655, 2
  %2659 = fmul fast float %2656, 2.000000e+00
  %2660 = fmul fast float %2657, 2.000000e+00
  %2661 = fmul fast float %2658, 2.000000e+00
  %2662 = fadd fast float %2659, -1.000000e+00
  %2663 = fadd fast float %2660, -1.000000e+00
  %2664 = fadd fast float %2661, -1.000000e+00
  %2665 = fmul fast float %2662, %2662
  %2666 = fmul fast float %2663, %2663
  %2667 = fadd fast float %2665, %2666
  %2668 = fmul fast float %2664, %2664
  %2669 = fadd fast float %2667, %2668
  %2670 = call float @dx.op.unary.f32(i32 24, float %2669)  ; Sqrt(value)
  %2671 = fcmp fast ogt float %2670, 0.000000e+00
  br i1 %2671, label %2672, label %2676

; <label>:2672                                    ; preds = %2595
  %2673 = fdiv fast float %2662, %2670
  %2674 = fdiv fast float %2663, %2670
  %2675 = fdiv fast float %2664, %2670
  br label %2676

; <label>:2676                                    ; preds = %2672, %2595
  %2677 = phi float [ %2673, %2672 ], [ 0.000000e+00, %2595 ]
  %2678 = phi float [ %2674, %2672 ], [ 0.000000e+00, %2595 ]
  %2679 = phi float [ %2675, %2672 ], [ 0.000000e+00, %2595 ]
  %2680 = call float @dx.op.dot3.f32(i32 55, float %2677, float %2678, float %2679, float %2343, float %2344, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %2681 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2680)  ; FMax(a,b)
  %2682 = fmul fast float %2681, 0x400C5BF8A0000000
  %2683 = fmul fast float %2651, %2571
  %2684 = fmul fast float %2683, %2682
  %2685 = fmul fast float %2652, %2571
  %2686 = fmul fast float %2685, %2682
  %2687 = fmul fast float %2653, %2571
  %2688 = fmul fast float %2687, %2682
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 3
  %2691 = fmul fast float %2684, %2690
  %2692 = fmul fast float %2686, %2690
  %2693 = fmul fast float %2688, %2690
  %2694 = fcmp fast ogt float %2538, %2618
  br i1 %2694, label %2695, label %2704

; <label>:2695                                    ; preds = %2676
  %2696 = fmul fast float %2620, 0x3FC24924A0000000
  %2697 = fsub fast float %2538, %2618
  %2698 = fdiv fast float %2697, %2696
  %2699 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2700 = fsub fast float 1.000000e+00, %2699
  %2701 = fmul fast float %2700, %2691
  %2702 = fmul fast float %2700, %2692
  %2703 = fmul fast float %2700, %2693
  br label %2704

; <label>:2704                                    ; preds = %2695, %2676, %2581, %2536
  %2705 = phi float [ %2703, %2695 ], [ %2693, %2676 ], [ 0.000000e+00, %2581 ], [ 0.000000e+00, %2536 ]
  %2706 = phi float [ %2702, %2695 ], [ %2692, %2676 ], [ 0.000000e+00, %2581 ], [ 0.000000e+00, %2536 ]
  %2707 = phi float [ %2701, %2695 ], [ %2691, %2676 ], [ 0.000000e+00, %2581 ], [ 0.000000e+00, %2536 ]
  %2708 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2707)  ; FMax(a,b)
  %2709 = fmul fast float %2708, 0x3FD20DD760000000
  %2710 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2360, float %2361, float %2362)  ; Dot3(ax,ay,az,bx,by,bz)
  %2711 = fmul fast float %2710, 0x3FDF454380000000
  %2712 = fmul fast float %2710, %2710
  %2713 = fmul fast float %2712, 0x3FEE471020000000
  %2714 = fadd fast float %2713, 0xBFD42F6020000000
  %2715 = call float @dx.op.dot3.f32(i32 55, float %2708, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2711, float %2714)  ; Dot3(ax,ay,az,bx,by,bz)
  %2716 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2706)  ; FMax(a,b)
  %2717 = fmul fast float %2716, 0x3FD20DD760000000
  %2718 = call float @dx.op.dot3.f32(i32 55, float %2716, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2711, float %2714)  ; Dot3(ax,ay,az,bx,by,bz)
  %2719 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2705)  ; FMax(a,b)
  %2720 = fmul fast float %2719, 0x3FD20DD760000000
  %2721 = call float @dx.op.dot3.f32(i32 55, float %2719, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2711, float %2714)  ; Dot3(ax,ay,az,bx,by,bz)
  %2722 = call float @dx.op.binary.f32(i32 35, float %2709, float 0.000000e+00)  ; FMax(a,b)
  %2723 = call float @dx.op.binary.f32(i32 35, float %2717, float 0.000000e+00)  ; FMax(a,b)
  %2724 = call float @dx.op.binary.f32(i32 35, float %2720, float 0.000000e+00)  ; FMax(a,b)
  %2725 = call float @dx.op.binary.f32(i32 35, float %2715, float 0.000000e+00)  ; FMax(a,b)
  %2726 = call float @dx.op.binary.f32(i32 35, float %2718, float 0.000000e+00)  ; FMax(a,b)
  %2727 = call float @dx.op.binary.f32(i32 35, float %2721, float 0.000000e+00)  ; FMax(a,b)
  %2728 = fmul fast float %2722, %2423
  %2729 = fmul fast float %2723, %2423
  %2730 = fmul fast float %2724, %2423
  %2731 = fadd fast float %2728, %2529
  %2732 = fadd fast float %2729, %2530
  %2733 = fadd fast float %2730, %2531
  %2734 = fmul fast float %2725, %2423
  %2735 = fmul fast float %2726, %2423
  %2736 = fmul fast float %2727, %2423
  %2737 = fadd fast float %2734, %2526
  %2738 = fadd fast float %2735, %2527
  %2739 = fadd fast float %2736, %2528
  br label %2740

; <label>:2740                                    ; preds = %2704, %2524
  %2741 = phi float [ %2737, %2704 ], [ %2526, %2524 ]
  %2742 = phi float [ %2738, %2704 ], [ %2527, %2524 ]
  %2743 = phi float [ %2739, %2704 ], [ %2528, %2524 ]
  %2744 = phi float [ %2728, %2704 ], [ 0.000000e+00, %2524 ]
  %2745 = phi float [ %2729, %2704 ], [ 0.000000e+00, %2524 ]
  %2746 = phi float [ %2730, %2704 ], [ 0.000000e+00, %2524 ]
  %2747 = phi float [ %2731, %2704 ], [ %2529, %2524 ]
  %2748 = phi float [ %2732, %2704 ], [ %2530, %2524 ]
  %2749 = phi float [ %2733, %2704 ], [ %2531, %2524 ]
  %2750 = fcmp fast olt float %2423, 1.000000e+00
  br i1 %2750, label %2751, label %3589, !dx.controlflow.hints !110

; <label>:2751                                    ; preds = %2740
  %2752 = extractvalue %dx.types.CBufRet.f32 %2379, 2
  %2753 = fadd fast float %2752, %148
  %2754 = fmul fast float %2343, 3.200000e+01
  %2755 = fmul fast float %2344, 3.200000e+01
  %2756 = fadd fast float %2382, %2754
  %2757 = fadd fast float %2383, %2755
  %2758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.CBufRet.f32 %2758, 1
  %2761 = fsub fast float %2756, %2759
  %2762 = fsub fast float %2757, %2760
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 0
  %2765 = extractvalue %dx.types.CBufRet.f32 %2763, 1
  %2766 = fmul fast float %2761, %2764
  %2767 = fmul fast float %2762, %2765
  %2768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2768, 0
  %2770 = fmul fast float %2766, %2769
  %2771 = extractvalue %dx.types.CBufRet.f32 %2768, 1
  %2772 = fadd fast float %2770, %2771
  %2773 = extractvalue %dx.types.CBufRet.f32 %2768, 2
  %2774 = fmul fast float %2773, %2767
  %2775 = extractvalue %dx.types.CBufRet.f32 %2768, 3
  %2776 = fadd fast float %2774, %2775
  %2777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2772, float %2776, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2778 = extractvalue %dx.types.ResRet.f32 %2777, 0
  %2779 = extractvalue %dx.types.ResRet.f32 %2777, 1
  %2780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2780, 1
  %2782 = extractvalue %dx.types.CBufRet.f32 %2780, 0
  %2783 = fsub fast float %2781, %2782
  %2784 = fmul fast float %2783, %2778
  %2785 = fadd fast float %2784, %2782
  %2786 = extractvalue %dx.types.CBufRet.f32 %2780, 3
  %2787 = extractvalue %dx.types.CBufRet.f32 %2780, 2
  %2788 = fsub fast float %2786, %2787
  %2789 = fmul fast float %2788, %2779
  %2790 = fadd fast float %2789, %2787
  %2791 = fsub fast float %2753, %2785
  %2792 = fsub fast float %2790, %2785
  %2793 = fdiv fast float %2791, %2792
  %2794 = call float @dx.op.unary.f32(i32 7, float %2793)  ; Saturate(value)
  %2795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2796 = extractvalue %dx.types.CBufRet.f32 %2795, 0
  %2797 = fmul fast float %2796, %2794
  %2798 = extractvalue %dx.types.CBufRet.f32 %2795, 1
  %2799 = fadd fast float %2797, %2798
  %2800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2772, float %2776, float %2799, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2801 = extractvalue %dx.types.ResRet.f32 %2800, 0
  %2802 = extractvalue %dx.types.ResRet.f32 %2800, 1
  %2803 = extractvalue %dx.types.ResRet.f32 %2800, 2
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2807 = extractvalue %dx.types.CBufRet.f32 %2804, 2
  %2808 = fmul fast float %2805, %2801
  %2809 = fmul fast float %2806, %2802
  %2810 = fmul fast float %2807, %2803
  %2811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.f32 %2811, 0
  %2813 = extractvalue %dx.types.CBufRet.f32 %2811, 1
  %2814 = extractvalue %dx.types.CBufRet.f32 %2811, 2
  %2815 = fadd fast float %2808, %2812
  %2816 = fadd fast float %2809, %2813
  %2817 = fadd fast float %2810, %2814
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 0
  %2820 = fmul fast float %2819, %2766
  %2821 = extractvalue %dx.types.CBufRet.f32 %2818, 1
  %2822 = fadd fast float %2820, %2821
  %2823 = extractvalue %dx.types.CBufRet.f32 %2818, 2
  %2824 = fmul fast float %2823, %2767
  %2825 = extractvalue %dx.types.CBufRet.f32 %2818, 3
  %2826 = fadd fast float %2824, %2825
  %2827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2828 = extractvalue %dx.types.CBufRet.f32 %2827, 0
  %2829 = extractvalue %dx.types.CBufRet.f32 %2827, 1
  %2830 = extractvalue %dx.types.CBufRet.f32 %2827, 2
  %2831 = extractvalue %dx.types.CBufRet.f32 %2827, 3
  %2832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2833 = extractvalue %dx.types.CBufRet.f32 %2832, 0
  %2834 = extractvalue %dx.types.CBufRet.f32 %2832, 1
  %2835 = extractvalue %dx.types.CBufRet.f32 %2832, 2
  %2836 = extractvalue %dx.types.CBufRet.f32 %2832, 3
  %2837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2822, float %2826, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2838 = extractvalue %dx.types.ResRet.f32 %2837, 0
  %2839 = extractvalue %dx.types.ResRet.f32 %2837, 1
  %2840 = extractvalue %dx.types.ResRet.f32 %2837, 2
  %2841 = extractvalue %dx.types.ResRet.f32 %2837, 3
  %2842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2822, float %2826, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.ResRet.f32 %2842, 1
  %2845 = extractvalue %dx.types.ResRet.f32 %2842, 2
  %2846 = extractvalue %dx.types.ResRet.f32 %2842, 3
  %2847 = fmul fast float %2838, %2815
  %2848 = fmul fast float %2843, %2815
  %2849 = fmul fast float %2845, %2815
  %2850 = fmul fast float %2841, %2815
  %2851 = fadd fast float %2847, %2828
  %2852 = fadd fast float %2848, %2829
  %2853 = fadd fast float %2849, %2830
  %2854 = fadd fast float %2850, %2831
  %2855 = fmul fast float %2839, %2815
  %2856 = fmul fast float %2844, %2815
  %2857 = fadd fast float %2855, %2833
  %2858 = fadd fast float %2856, %2834
  %2859 = fmul fast float %2840, %2815
  %2860 = fmul fast float %2846, %2815
  %2861 = fadd fast float %2859, %2835
  %2862 = fadd fast float %2860, %2836
  %2863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2822, float %2826, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2864 = extractvalue %dx.types.ResRet.f32 %2863, 0
  %2865 = extractvalue %dx.types.ResRet.f32 %2863, 1
  %2866 = extractvalue %dx.types.ResRet.f32 %2863, 2
  %2867 = extractvalue %dx.types.ResRet.f32 %2863, 3
  %2868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2822, float %2826, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2869 = extractvalue %dx.types.ResRet.f32 %2868, 0
  %2870 = extractvalue %dx.types.ResRet.f32 %2868, 1
  %2871 = extractvalue %dx.types.ResRet.f32 %2868, 2
  %2872 = extractvalue %dx.types.ResRet.f32 %2868, 3
  %2873 = fmul fast float %2864, %2816
  %2874 = fmul fast float %2869, %2816
  %2875 = fmul fast float %2871, %2816
  %2876 = fmul fast float %2867, %2816
  %2877 = fadd fast float %2851, %2873
  %2878 = fadd fast float %2852, %2874
  %2879 = fadd fast float %2853, %2875
  %2880 = fadd fast float %2854, %2876
  %2881 = fmul fast float %2865, %2816
  %2882 = fmul fast float %2870, %2816
  %2883 = fadd fast float %2857, %2881
  %2884 = fadd fast float %2858, %2882
  %2885 = fmul fast float %2866, %2816
  %2886 = fmul fast float %2872, %2816
  %2887 = fadd fast float %2861, %2885
  %2888 = fadd fast float %2862, %2886
  %2889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2822, float %2826, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2890 = extractvalue %dx.types.ResRet.f32 %2889, 0
  %2891 = extractvalue %dx.types.ResRet.f32 %2889, 1
  %2892 = extractvalue %dx.types.ResRet.f32 %2889, 2
  %2893 = extractvalue %dx.types.ResRet.f32 %2889, 3
  %2894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2822, float %2826, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2895 = extractvalue %dx.types.ResRet.f32 %2894, 0
  %2896 = extractvalue %dx.types.ResRet.f32 %2894, 1
  %2897 = extractvalue %dx.types.ResRet.f32 %2894, 2
  %2898 = extractvalue %dx.types.ResRet.f32 %2894, 3
  %2899 = fmul fast float %2890, %2817
  %2900 = fmul fast float %2895, %2817
  %2901 = fmul fast float %2897, %2817
  %2902 = fmul fast float %2893, %2817
  %2903 = fadd fast float %2877, %2899
  %2904 = fadd fast float %2878, %2900
  %2905 = fadd fast float %2879, %2901
  %2906 = fadd fast float %2880, %2902
  %2907 = fmul fast float %2891, %2817
  %2908 = fmul fast float %2896, %2817
  %2909 = fadd fast float %2883, %2907
  %2910 = fadd fast float %2884, %2908
  %2911 = fmul fast float %2892, %2817
  %2912 = fmul fast float %2898, %2817
  %2913 = fadd fast float %2887, %2911
  %2914 = fadd fast float %2888, %2912
  %2915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2916 = extractvalue %dx.types.CBufRet.f32 %2915, 0
  %2917 = fsub fast float %2382, %2916
  %2918 = fsub fast float %2759, %2382
  %2919 = call float @dx.op.binary.f32(i32 35, float %2918, float %2917)  ; FMax(a,b)
  %2920 = extractvalue %dx.types.CBufRet.f32 %2915, 1
  %2921 = fsub fast float %2383, %2920
  %2922 = fsub fast float %2760, %2383
  %2923 = call float @dx.op.binary.f32(i32 35, float %2922, float %2921)  ; FMax(a,b)
  %2924 = call float @dx.op.binary.f32(i32 35, float %2919, float %2923)  ; FMax(a,b)
  %2925 = extractvalue %dx.types.CBufRet.f32 %2763, 3
  %2926 = fmul fast float %2925, %2924
  %2927 = call float @dx.op.unary.f32(i32 7, float %2926)  ; Saturate(value)
  %2928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2929 = extractvalue %dx.types.CBufRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.CBufRet.f32 %2928, 1
  %2931 = extractvalue %dx.types.CBufRet.f32 %2928, 2
  %2932 = extractvalue %dx.types.CBufRet.f32 %2928, 3
  %2933 = fsub fast float %2929, %2903
  %2934 = fsub fast float %2930, %2904
  %2935 = fsub fast float %2931, %2905
  %2936 = fsub fast float %2932, %2906
  %2937 = fmul fast float %2933, %2927
  %2938 = fmul fast float %2934, %2927
  %2939 = fmul fast float %2935, %2927
  %2940 = fmul fast float %2936, %2927
  %2941 = fadd fast float %2937, %2903
  %2942 = fadd fast float %2938, %2904
  %2943 = fadd fast float %2939, %2905
  %2944 = fadd fast float %2940, %2906
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.CBufRet.f32 %2945, 1
  %2948 = fsub fast float %2946, %2909
  %2949 = fsub fast float %2947, %2910
  %2950 = fmul fast float %2948, %2927
  %2951 = fmul fast float %2949, %2927
  %2952 = fadd fast float %2950, %2909
  %2953 = fadd fast float %2951, %2910
  %2954 = extractvalue %dx.types.CBufRet.f32 %2945, 2
  %2955 = extractvalue %dx.types.CBufRet.f32 %2945, 3
  %2956 = fsub fast float %2954, %2913
  %2957 = fsub fast float %2955, %2914
  %2958 = fmul fast float %2956, %2927
  %2959 = fmul fast float %2957, %2927
  %2960 = fadd fast float %2958, %2913
  %2961 = fadd fast float %2959, %2914
  %2962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2963 = extractvalue %dx.types.CBufRet.f32 %2962, 0
  %2964 = fmul fast float %2963, %2941
  %2965 = fmul fast float %2963, %2942
  %2966 = fmul fast float %2963, %2943
  %2967 = fmul fast float %2963, %2944
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2970 = fmul fast float %2969, %2952
  %2971 = fmul fast float %2969, %2953
  %2972 = fadd fast float %2970, %2964
  %2973 = fadd fast float %2971, %2966
  %2974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2975 = extractvalue %dx.types.CBufRet.f32 %2974, 0
  %2976 = fmul fast float %2975, %2960
  %2977 = fmul fast float %2975, %2961
  %2978 = fadd fast float %2972, %2976
  %2979 = fadd fast float %2973, %2977
  %2980 = extractvalue %dx.types.CBufRet.f32 %2962, 1
  %2981 = fmul fast float %2980, %2941
  %2982 = fmul fast float %2980, %2942
  %2983 = fmul fast float %2980, %2943
  %2984 = fmul fast float %2980, %2944
  %2985 = extractvalue %dx.types.CBufRet.f32 %2968, 1
  %2986 = fmul fast float %2985, %2952
  %2987 = fmul fast float %2985, %2953
  %2988 = fadd fast float %2986, %2981
  %2989 = fadd fast float %2987, %2983
  %2990 = extractvalue %dx.types.CBufRet.f32 %2974, 1
  %2991 = fmul fast float %2990, %2960
  %2992 = fmul fast float %2990, %2961
  %2993 = fadd fast float %2988, %2991
  %2994 = fadd fast float %2989, %2992
  %2995 = extractvalue %dx.types.CBufRet.f32 %2962, 2
  %2996 = fmul fast float %2995, %2941
  %2997 = fmul fast float %2995, %2942
  %2998 = fmul fast float %2995, %2943
  %2999 = fmul fast float %2995, %2944
  %3000 = extractvalue %dx.types.CBufRet.f32 %2968, 2
  %3001 = fmul fast float %3000, %2952
  %3002 = fmul fast float %3000, %2953
  %3003 = fadd fast float %3001, %2996
  %3004 = fadd fast float %3002, %2998
  %3005 = extractvalue %dx.types.CBufRet.f32 %2974, 2
  %3006 = fmul fast float %3005, %2960
  %3007 = fmul fast float %3005, %2961
  %3008 = fadd fast float %3003, %3006
  %3009 = fadd fast float %3004, %3007
  %3010 = fmul fast float %2997, %2997
  %3011 = fmul fast float %3009, %3009
  %3012 = fmul fast float %2999, %2999
  %3013 = fadd fast float %3012, %3010
  %3014 = fadd fast float %3013, %3011
  %3015 = call float @dx.op.unary.f32(i32 24, float %3014)  ; Sqrt(value)
  %3016 = fcmp fast ugt float %3015, 0.000000e+00
  br i1 %3016, label %3017, label %3032

; <label>:3017                                    ; preds = %2751
  %3018 = fsub fast float -0.000000e+00, %2999
  %3019 = fdiv fast float %3018, %3015
  %3020 = fsub fast float -0.000000e+00, %2997
  %3021 = fdiv fast float %3020, %3015
  %3022 = fdiv fast float %3009, %3015
  %3023 = fmul fast float %3008, 0x3FE279A760000000
  %3024 = fmul fast float %3021, %2997
  %3025 = fmul fast float %3022, %3009
  %3026 = fmul fast float %3019, %2999
  %3027 = fadd fast float %3024, %3026
  %3028 = fsub fast float %3027, %3025
  %3029 = call float @dx.op.unary.f32(i32 6, float %3028)  ; FAbs(value)
  %3030 = fadd fast float %3029, 0x3DDB7CDFE0000000
  %3031 = fdiv fast float %3023, %3030
  br label %3032

; <label>:3032                                    ; preds = %3017, %2751
  %3033 = phi float [ %3031, %3017 ], [ 1.000000e+00, %2751 ]
  %3034 = fmul fast float %2982, %2982
  %3035 = fmul fast float %2994, %2994
  %3036 = fmul fast float %2984, %2984
  %3037 = fadd fast float %3036, %3034
  %3038 = fadd fast float %3037, %3035
  %3039 = call float @dx.op.unary.f32(i32 24, float %3038)  ; Sqrt(value)
  %3040 = fcmp fast ugt float %3039, 0.000000e+00
  br i1 %3040, label %3041, label %3056

; <label>:3041                                    ; preds = %3032
  %3042 = fsub fast float -0.000000e+00, %2984
  %3043 = fdiv fast float %3042, %3039
  %3044 = fsub fast float -0.000000e+00, %2982
  %3045 = fdiv fast float %3044, %3039
  %3046 = fdiv fast float %2994, %3039
  %3047 = fmul fast float %2993, 0x3FE279A760000000
  %3048 = fmul fast float %3045, %2982
  %3049 = fmul fast float %3046, %2994
  %3050 = fmul fast float %3043, %2984
  %3051 = fadd fast float %3048, %3050
  %3052 = fsub fast float %3051, %3049
  %3053 = call float @dx.op.unary.f32(i32 6, float %3052)  ; FAbs(value)
  %3054 = fadd fast float %3053, 0x3DDB7CDFE0000000
  %3055 = fdiv fast float %3047, %3054
  br label %3056

; <label>:3056                                    ; preds = %3041, %3032
  %3057 = phi float [ %3055, %3041 ], [ 1.000000e+00, %3032 ]
  %3058 = call float @dx.op.binary.f32(i32 36, float %3057, float %3033)  ; FMin(a,b)
  %3059 = fmul fast float %2965, %2965
  %3060 = fmul fast float %2979, %2979
  %3061 = fmul fast float %2967, %2967
  %3062 = fadd fast float %3061, %3059
  %3063 = fadd fast float %3062, %3060
  %3064 = call float @dx.op.unary.f32(i32 24, float %3063)  ; Sqrt(value)
  %3065 = fcmp fast ugt float %3064, 0.000000e+00
  br i1 %3065, label %3066, label %3081

; <label>:3066                                    ; preds = %3056
  %3067 = fsub fast float -0.000000e+00, %2967
  %3068 = fdiv fast float %3067, %3064
  %3069 = fsub fast float -0.000000e+00, %2965
  %3070 = fdiv fast float %3069, %3064
  %3071 = fdiv fast float %2979, %3064
  %3072 = fmul fast float %2978, 0x3FE279A760000000
  %3073 = fmul fast float %3070, %2965
  %3074 = fmul fast float %3071, %2979
  %3075 = fmul fast float %3068, %2967
  %3076 = fadd fast float %3073, %3075
  %3077 = fsub fast float %3076, %3074
  %3078 = call float @dx.op.unary.f32(i32 6, float %3077)  ; FAbs(value)
  %3079 = fadd fast float %3078, 0x3DDB7CDFE0000000
  %3080 = fdiv fast float %3072, %3079
  br label %3081

; <label>:3081                                    ; preds = %3066, %3056
  %3082 = phi float [ %3080, %3066 ], [ 1.000000e+00, %3056 ]
  %3083 = call float @dx.op.binary.f32(i32 36, float %3082, float %3058)  ; FMin(a,b)
  %3084 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  %3085 = fcmp fast olt float %3084, 1.000000e+00
  br i1 %3085, label %3086, label %3096

; <label>:3086                                    ; preds = %3081
  %3087 = fmul fast float %3084, %2965
  %3088 = fmul fast float %3084, %2979
  %3089 = fmul fast float %3084, %2967
  %3090 = fmul fast float %3084, %2982
  %3091 = fmul fast float %3084, %2994
  %3092 = fmul fast float %3084, %2984
  %3093 = fmul fast float %3084, %2997
  %3094 = fmul fast float %3084, %3009
  %3095 = fmul fast float %3084, %2999
  br label %3096

; <label>:3096                                    ; preds = %3086, %3081
  %3097 = phi float [ %3093, %3086 ], [ %2997, %3081 ]
  %3098 = phi float [ %3094, %3086 ], [ %3009, %3081 ]
  %3099 = phi float [ %3095, %3086 ], [ %2999, %3081 ]
  %3100 = phi float [ %3090, %3086 ], [ %2982, %3081 ]
  %3101 = phi float [ %3091, %3086 ], [ %2994, %3081 ]
  %3102 = phi float [ %3092, %3086 ], [ %2984, %3081 ]
  %3103 = phi float [ %3087, %3086 ], [ %2965, %3081 ]
  %3104 = phi float [ %3088, %3086 ], [ %2979, %3081 ]
  %3105 = phi float [ %3089, %3086 ], [ %2967, %3081 ]
  %3106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2978)  ; FMax(a,b)
  %3107 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2993)  ; FMax(a,b)
  %3108 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3008)  ; FMax(a,b)
  %3109 = fcmp fast oge float %2766, 0.000000e+00
  %3110 = and i1 %3109, %2534
  %3111 = fcmp fast ole float %2766, 1.000000e+00
  %3112 = and i1 %3111, %3110
  %3113 = fcmp fast oge float %2767, 0.000000e+00
  %3114 = and i1 %3113, %3112
  %3115 = fcmp fast ole float %2767, 1.000000e+00
  %3116 = and i1 %3115, %3114
  br i1 %3116, label %3117, label %3262, !dx.controlflow.hints !111

; <label>:3117                                    ; preds = %3096
  %3118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3119 = extractvalue %dx.types.CBufRet.f32 %3118, 2
  %3120 = extractvalue %dx.types.CBufRet.f32 %3118, 3
  %3121 = fmul fast float %3119, %2766
  %3122 = fmul fast float %3120, %2767
  %3123 = call float @dx.op.unary.f32(i32 27, float %3121)  ; Round_ni(value)
  %3124 = call float @dx.op.unary.f32(i32 27, float %3122)  ; Round_ni(value)
  %3125 = fptosi float %3123 to i32
  %3126 = fptosi float %3124 to i32
  %3127 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %3125, i32 %3126, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 65535
  %3130 = lshr i32 %3128, 16
  %3131 = icmp eq i32 %3129, 65535
  br i1 %3131, label %3168, label %3132

; <label>:3132                                    ; preds = %3117
  %3133 = extractvalue %dx.types.CBufRet.f32 %2532, 1
  %3134 = extractvalue %dx.types.CBufRet.f32 %3118, 0
  %3135 = extractvalue %dx.types.CBufRet.f32 %3118, 1
  %3136 = fmul fast float %3134, %2766
  %3137 = fmul fast float %3135, %2767
  %3138 = fmul fast float %3136, 1.250000e-01
  %3139 = fmul fast float %3137, 1.250000e-01
  %3140 = call float @dx.op.unary.f32(i32 27, float %3138)  ; Round_ni(value)
  %3141 = call float @dx.op.unary.f32(i32 27, float %3139)  ; Round_ni(value)
  %3142 = fmul fast float %3140, 8.000000e+00
  %3143 = fmul fast float %3141, 8.000000e+00
  %3144 = and i32 %3128, 255
  %3145 = lshr i32 %3128, 8
  %3146 = and i32 %3145, 255
  %3147 = mul nuw nsw i32 %3144, 9
  %3148 = uitofp i32 %3147 to float
  %3149 = mul nuw nsw i32 %3146, 9
  %3150 = uitofp i32 %3149 to float
  %3151 = fadd fast float %3148, 5.000000e-01
  %3152 = fadd fast float %3151, %3136
  %3153 = fsub fast float %3152, %3142
  %3154 = fadd fast float %3150, 5.000000e-01
  %3155 = fadd fast float %3154, %3137
  %3156 = fsub fast float %3155, %3143
  %3157 = fdiv fast float %3153, %2533
  %3158 = fdiv fast float %3156, %3133
  %3159 = fmul fast float %2794, 4.375000e-01
  %3160 = fadd fast float %3159, 3.125000e-02
  %3161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3157, float %3158, float %3160, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3162 = extractvalue %dx.types.ResRet.f32 %3161, 0
  %3163 = extractvalue %dx.types.ResRet.f32 %3161, 1
  %3164 = extractvalue %dx.types.ResRet.f32 %3161, 2
  %3165 = fadd fast float %3162, %3106
  %3166 = fadd fast float %3163, %3107
  %3167 = fadd fast float %3164, %3108
  br label %3168

; <label>:3168                                    ; preds = %3132, %3117
  %3169 = phi float [ %3167, %3132 ], [ %3108, %3117 ]
  %3170 = phi float [ %3166, %3132 ], [ %3107, %3117 ]
  %3171 = phi float [ %3165, %3132 ], [ %3106, %3117 ]
  %3172 = icmp eq i32 %3130, 65535
  br i1 %3172, label %3262, label %3173

; <label>:3173                                    ; preds = %3168
  %3174 = extractvalue %dx.types.CBufRet.f32 %2532, 1
  %3175 = extractvalue %dx.types.CBufRet.f32 %3118, 0
  %3176 = extractvalue %dx.types.CBufRet.f32 %3118, 1
  %3177 = fmul fast float %3175, %2766
  %3178 = fmul fast float %3176, %2767
  %3179 = fmul fast float %3177, 1.250000e-01
  %3180 = fmul fast float %3178, 1.250000e-01
  %3181 = call float @dx.op.unary.f32(i32 27, float %3179)  ; Round_ni(value)
  %3182 = call float @dx.op.unary.f32(i32 27, float %3180)  ; Round_ni(value)
  %3183 = fmul fast float %3181, 8.000000e+00
  %3184 = fmul fast float %3182, 8.000000e+00
  %3185 = fsub fast float %3177, %3183
  %3186 = fsub fast float %3178, %3184
  %3187 = fadd fast float %3185, 5.000000e-01
  %3188 = fadd fast float %3186, 5.000000e-01
  %3189 = and i32 %3130, 255
  %3190 = lshr i32 %3128, 24
  %3191 = mul nuw nsw i32 %3189, 9
  %3192 = uitofp i32 %3191 to float
  %3193 = mul nuw nsw i32 %3190, 9
  %3194 = uitofp i32 %3193 to float
  %3195 = fadd fast float %3187, %3192
  %3196 = fadd fast float %3188, %3194
  %3197 = fdiv fast float %3195, %2533
  %3198 = fdiv fast float %3196, %3174
  %3199 = fmul fast float %2794, 4.375000e-01
  %3200 = fadd fast float %3199, 3.125000e-02
  %3201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3197, float %3198, float %3200, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3202 = extractvalue %dx.types.ResRet.f32 %3201, 0
  %3203 = extractvalue %dx.types.ResRet.f32 %3201, 1
  %3204 = extractvalue %dx.types.ResRet.f32 %3201, 2
  %3205 = fadd fast float %3199, 5.312500e-01
  %3206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3197, float %3198, float %3205, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3207 = extractvalue %dx.types.ResRet.f32 %3206, 0
  %3208 = extractvalue %dx.types.ResRet.f32 %3206, 1
  %3209 = extractvalue %dx.types.ResRet.f32 %3206, 2
  %3210 = fmul fast float %3207, 2.000000e+00
  %3211 = fmul fast float %3208, 2.000000e+00
  %3212 = fmul fast float %3209, 2.000000e+00
  %3213 = fadd fast float %3210, -1.000000e+00
  %3214 = fadd fast float %3211, -1.000000e+00
  %3215 = fadd fast float %3212, -1.000000e+00
  %3216 = fmul fast float %3213, %3213
  %3217 = fmul fast float %3214, %3214
  %3218 = fadd fast float %3216, %3217
  %3219 = fmul fast float %3215, %3215
  %3220 = fadd fast float %3218, %3219
  %3221 = call float @dx.op.unary.f32(i32 24, float %3220)  ; Sqrt(value)
  %3222 = fcmp fast ogt float %3221, 0.000000e+00
  br i1 %3222, label %3223, label %3227

; <label>:3223                                    ; preds = %3173
  %3224 = fdiv fast float %3213, %3221
  %3225 = fdiv fast float %3214, %3221
  %3226 = fdiv fast float %3215, %3221
  br label %3227

; <label>:3227                                    ; preds = %3223, %3173
  %3228 = phi float [ %3224, %3223 ], [ 0.000000e+00, %3173 ]
  %3229 = phi float [ %3225, %3223 ], [ 0.000000e+00, %3173 ]
  %3230 = phi float [ %3226, %3223 ], [ 0.000000e+00, %3173 ]
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.CBufRet.f32 %3231, 1
  %3234 = fsub fast float %2382, %3232
  %3235 = fsub fast float %2383, %3233
  %3236 = fmul fast float %3234, %3234
  %3237 = fmul fast float %3235, %3235
  %3238 = fadd fast float %3236, %3237
  %3239 = call float @dx.op.unary.f32(i32 24, float %3238)  ; Sqrt(value)
  %3240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3241 = extractvalue %dx.types.CBufRet.f32 %3240, 0
  %3242 = extractvalue %dx.types.CBufRet.f32 %3240, 1
  %3243 = fsub fast float %3239, %3241
  %3244 = fdiv fast float %3243, %3242
  %3245 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3246 = fmul fast float %3245, 2.000000e+00
  %3247 = fsub fast float 3.000000e+00, %3246
  %3248 = fmul fast float %3245, %3245
  %3249 = fmul fast float %3248, %3247
  %3250 = call float @dx.op.dot3.f32(i32 55, float %3228, float %3229, float %3230, float %2343, float %2344, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %3251 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3250)  ; FMax(a,b)
  %3252 = fmul fast float %3251, 0x400C5BF8A0000000
  %3253 = fmul fast float %3249, %3202
  %3254 = fmul fast float %3253, %3252
  %3255 = fadd fast float %3254, %3171
  %3256 = fmul fast float %3249, %3203
  %3257 = fmul fast float %3256, %3252
  %3258 = fadd fast float %3257, %3170
  %3259 = fmul fast float %3249, %3204
  %3260 = fmul fast float %3259, %3252
  %3261 = fadd fast float %3260, %3169
  br label %3262

; <label>:3262                                    ; preds = %3227, %3168, %3096
  %3263 = phi float [ %3261, %3227 ], [ %3169, %3168 ], [ %3108, %3096 ]
  %3264 = phi float [ %3258, %3227 ], [ %3170, %3168 ], [ %3107, %3096 ]
  %3265 = phi float [ %3255, %3227 ], [ %3171, %3168 ], [ %3106, %3096 ]
  %3266 = fcmp fast ogt float %2753, %2790
  %3267 = and i1 %3109, %3266
  %3268 = and i1 %3111, %3267
  %3269 = and i1 %3113, %3268
  %3270 = and i1 %3115, %3269
  br i1 %3270, label %3271, label %3328, !dx.controlflow.hints !112

; <label>:3271                                    ; preds = %3262
  %3272 = fmul fast float %2792, 0x3FC24924A0000000
  %3273 = fsub fast float %2753, %2790
  %3274 = fdiv fast float %3273, %3272
  %3275 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 0
  %3280 = extractvalue %dx.types.CBufRet.f32 %3278, 1
  %3281 = extractvalue %dx.types.CBufRet.f32 %3278, 2
  %3282 = fsub fast float %3277, %3265
  %3283 = fsub fast float %3279, %3103
  %3284 = fsub fast float %3280, %3104
  %3285 = fsub fast float %3281, %3105
  %3286 = fmul fast float %3282, %3275
  %3287 = fmul fast float %3283, %3275
  %3288 = fmul fast float %3284, %3275
  %3289 = fmul fast float %3285, %3275
  %3290 = fadd fast float %3286, %3265
  %3291 = fadd fast float %3287, %3103
  %3292 = fadd fast float %3288, %3104
  %3293 = fadd fast float %3289, %3105
  %3294 = extractvalue %dx.types.CBufRet.f32 %3276, 1
  %3295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3296 = extractvalue %dx.types.CBufRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.CBufRet.f32 %3295, 1
  %3298 = extractvalue %dx.types.CBufRet.f32 %3295, 2
  %3299 = fsub fast float %3294, %3264
  %3300 = fsub fast float %3296, %3100
  %3301 = fsub fast float %3297, %3101
  %3302 = fsub fast float %3298, %3102
  %3303 = fmul fast float %3299, %3275
  %3304 = fmul fast float %3300, %3275
  %3305 = fmul fast float %3301, %3275
  %3306 = fmul fast float %3302, %3275
  %3307 = fadd fast float %3303, %3264
  %3308 = fadd fast float %3304, %3100
  %3309 = fadd fast float %3305, %3101
  %3310 = fadd fast float %3306, %3102
  %3311 = extractvalue %dx.types.CBufRet.f32 %3276, 2
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.CBufRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.CBufRet.f32 %3312, 2
  %3316 = fsub fast float %3311, %3263
  %3317 = fsub fast float %3313, %3097
  %3318 = fsub fast float %3314, %3098
  %3319 = fsub fast float %3315, %3099
  %3320 = fmul fast float %3316, %3275
  %3321 = fmul fast float %3317, %3275
  %3322 = fmul fast float %3318, %3275
  %3323 = fmul fast float %3319, %3275
  %3324 = fadd fast float %3320, %3263
  %3325 = fadd fast float %3321, %3097
  %3326 = fadd fast float %3322, %3098
  %3327 = fadd fast float %3323, %3099
  br label %3328

; <label>:3328                                    ; preds = %3271, %3262
  %3329 = phi float [ %3324, %3271 ], [ %3263, %3262 ]
  %3330 = phi float [ %3325, %3271 ], [ %3097, %3262 ]
  %3331 = phi float [ %3326, %3271 ], [ %3098, %3262 ]
  %3332 = phi float [ %3327, %3271 ], [ %3099, %3262 ]
  %3333 = phi float [ %3307, %3271 ], [ %3264, %3262 ]
  %3334 = phi float [ %3308, %3271 ], [ %3100, %3262 ]
  %3335 = phi float [ %3309, %3271 ], [ %3101, %3262 ]
  %3336 = phi float [ %3310, %3271 ], [ %3102, %3262 ]
  %3337 = phi float [ %3290, %3271 ], [ %3265, %3262 ]
  %3338 = phi float [ %3291, %3271 ], [ %3103, %3262 ]
  %3339 = phi float [ %3292, %3271 ], [ %3104, %3262 ]
  %3340 = phi float [ %3293, %3271 ], [ %3105, %3262 ]
  %3341 = extractvalue %dx.types.CBufRet.f32 %2915, 3
  %3342 = fmul fast float %3341, %3337
  %3343 = fmul fast float %3341, %3333
  %3344 = fmul fast float %3341, %3329
  %3345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.f32 %3345, 3
  %3347 = fmul fast float %3342, %3346
  %3348 = fmul fast float %3343, %3346
  %3349 = fmul fast float %3344, %3346
  %3350 = call float @dx.op.dot3.f32(i32 55, float %3347, float %3348, float %3349, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3351 = fmul fast float %3350, 0x3FD20DD760000000
  %3352 = fmul fast float %3338, 1.500000e+00
  %3353 = fmul fast float %3352, %3341
  %3354 = fmul fast float %3353, %3346
  %3355 = fmul fast float %3339, 1.500000e+00
  %3356 = fmul fast float %3355, %3341
  %3357 = fmul fast float %3356, %3346
  %3358 = fmul fast float %3340, 1.500000e+00
  %3359 = fmul fast float %3358, %3341
  %3360 = fmul fast float %3359, %3346
  %3361 = fmul fast float %3334, 1.500000e+00
  %3362 = fmul fast float %3361, %3341
  %3363 = fmul fast float %3362, %3346
  %3364 = fmul fast float %3335, 1.500000e+00
  %3365 = fmul fast float %3364, %3341
  %3366 = fmul fast float %3365, %3346
  %3367 = fmul fast float %3336, 1.500000e+00
  %3368 = fmul fast float %3367, %3341
  %3369 = fmul fast float %3368, %3346
  %3370 = fmul fast float %3330, 1.500000e+00
  %3371 = fmul fast float %3370, %3341
  %3372 = fmul fast float %3371, %3346
  %3373 = fmul fast float %3331, 1.500000e+00
  %3374 = fmul fast float %3373, %3341
  %3375 = fmul fast float %3374, %3346
  %3376 = fmul fast float %3332, 1.500000e+00
  %3377 = fmul fast float %3376, %3341
  %3378 = fmul fast float %3377, %3346
  %3379 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3347)  ; FMax(a,b)
  %3380 = call float @dx.op.dot3.f32(i32 55, float %3354, float %3357, float %3360, float %3354, float %3357, float %3360)  ; Dot3(ax,ay,az,bx,by,bz)
  %3381 = fcmp fast oeq float %3380, 0.000000e+00
  %3382 = fcmp fast oeq float %3379, 0.000000e+00
  %3383 = or i1 %3382, %3381
  br i1 %3383, label %3413, label %3384

; <label>:3384                                    ; preds = %3328
  %3385 = fsub fast float -0.000000e+00, %3360
  %3386 = fsub fast float -0.000000e+00, %3354
  %3387 = call float @dx.op.unary.f32(i32 24, float %3380)  ; Sqrt(value)
  %3388 = fdiv fast float %3387, %3379
  %3389 = fcmp fast ogt float %3388, 0x3FFB6F8900000000
  %3390 = select i1 %3389, float 0x3FFB6F8900000000, float %3388
  %3391 = fmul fast float %3390, 0x3FE8A23460000000
  %3392 = call float @dx.op.unary.f32(i32 7, float %3391)  ; Saturate(value)
  %3393 = call float @dx.op.binary.f32(i32 35, float %3390, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3394 = fmul fast float %3392, %3379
  %3395 = fmul fast float %3393, 0x3FF279A740000000
  %3396 = fadd fast float %3395, -1.000000e+00
  %3397 = call float @dx.op.dot3.f32(i32 55, float %3385, float %3386, float %3357, float %3385, float %3386, float %3357)  ; Dot3(ax,ay,az,bx,by,bz)
  %3398 = call float @dx.op.unary.f32(i32 25, float %3397)  ; Rsqrt(value)
  %3399 = fmul fast float %3398, %3385
  %3400 = fmul fast float %3398, %3386
  %3401 = fmul fast float %3398, %3357
  %3402 = fmul fast float %3396, %3396
  %3403 = fsub fast float 1.000000e+00, %3402
  %3404 = fmul fast float %3393, 0x40005F8BE0000000
  %3405 = fsub fast float 0x400C5BF8A0000000, %3404
  %3406 = fdiv fast float %3394, %3405
  %3407 = fmul fast float %3406, 0x3FEE31C3C0000000
  %3408 = fmul fast float %3407, %3403
  %3409 = fmul fast float %3393, 0x3FDACB7480000000
  %3410 = fadd fast float %3409, 0xBFD7347680000000
  %3411 = fmul fast float %3410, %3406
  %3412 = fmul fast float %3411, %3403
  br label %3413

; <label>:3413                                    ; preds = %3384, %3328
  %3414 = phi float [ %3399, %3384 ], [ 0.000000e+00, %3328 ]
  %3415 = phi float [ %3400, %3384 ], [ 0.000000e+00, %3328 ]
  %3416 = phi float [ %3401, %3384 ], [ 0.000000e+00, %3328 ]
  %3417 = phi float [ %3408, %3384 ], [ 0.000000e+00, %3328 ]
  %3418 = phi float [ %3412, %3384 ], [ 0.000000e+00, %3328 ]
  %3419 = call float @dx.op.dot3.f32(i32 55, float %3414, float %3415, float %3416, float %2343, float %2344, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %3420 = fmul fast float %3419, 0x3FDF454380000000
  %3421 = fmul fast float %3419, %3419
  %3422 = fmul fast float %3421, 0x3FEE471020000000
  %3423 = fadd fast float %3422, 0xBFD42F6020000000
  %3424 = fmul fast float %3379, 0x3FD20DD760000000
  %3425 = fmul fast float %3423, %3418
  %3426 = fadd fast float %3425, %3424
  %3427 = fmul fast float %3420, %3417
  %3428 = fadd fast float %3426, %3427
  %3429 = fsub fast float %3426, %3427
  %3430 = call float @dx.op.dot3.f32(i32 55, float %3414, float %3415, float %3416, float %2360, float %2361, float %2362)  ; Dot3(ax,ay,az,bx,by,bz)
  %3431 = fmul fast float %3430, 0x3FDF454380000000
  %3432 = fmul fast float %3430, %3430
  %3433 = fmul fast float %3432, 0x3FEE471020000000
  %3434 = fadd fast float %3433, 0xBFD42F6020000000
  %3435 = call float @dx.op.dot3.f32(i32 55, float %3379, float %3417, float %3418, float 0x3FD20DD760000000, float %3431, float %3434)  ; Dot3(ax,ay,az,bx,by,bz)
  %3436 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3348)  ; FMax(a,b)
  %3437 = call float @dx.op.dot3.f32(i32 55, float %3363, float %3366, float %3369, float %3363, float %3366, float %3369)  ; Dot3(ax,ay,az,bx,by,bz)
  %3438 = fcmp fast oeq float %3437, 0.000000e+00
  %3439 = fcmp fast oeq float %3436, 0.000000e+00
  %3440 = or i1 %3439, %3438
  br i1 %3440, label %3470, label %3441

; <label>:3441                                    ; preds = %3413
  %3442 = fsub fast float -0.000000e+00, %3369
  %3443 = fsub fast float -0.000000e+00, %3363
  %3444 = call float @dx.op.unary.f32(i32 24, float %3437)  ; Sqrt(value)
  %3445 = fdiv fast float %3444, %3436
  %3446 = fcmp fast ogt float %3445, 0x3FFB6F8900000000
  %3447 = select i1 %3446, float 0x3FFB6F8900000000, float %3445
  %3448 = fmul fast float %3447, 0x3FE8A23460000000
  %3449 = call float @dx.op.unary.f32(i32 7, float %3448)  ; Saturate(value)
  %3450 = call float @dx.op.binary.f32(i32 35, float %3447, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3451 = fmul fast float %3449, %3436
  %3452 = fmul fast float %3450, 0x3FF279A740000000
  %3453 = fadd fast float %3452, -1.000000e+00
  %3454 = call float @dx.op.dot3.f32(i32 55, float %3442, float %3443, float %3366, float %3442, float %3443, float %3366)  ; Dot3(ax,ay,az,bx,by,bz)
  %3455 = call float @dx.op.unary.f32(i32 25, float %3454)  ; Rsqrt(value)
  %3456 = fmul fast float %3455, %3442
  %3457 = fmul fast float %3455, %3443
  %3458 = fmul fast float %3455, %3366
  %3459 = fmul fast float %3453, %3453
  %3460 = fsub fast float 1.000000e+00, %3459
  %3461 = fmul fast float %3450, 0x40005F8BE0000000
  %3462 = fsub fast float 0x400C5BF8A0000000, %3461
  %3463 = fdiv fast float %3451, %3462
  %3464 = fmul fast float %3463, 0x3FEE31C3C0000000
  %3465 = fmul fast float %3464, %3460
  %3466 = fmul fast float %3450, 0x3FDACB7480000000
  %3467 = fadd fast float %3466, 0xBFD7347680000000
  %3468 = fmul fast float %3467, %3463
  %3469 = fmul fast float %3468, %3460
  br label %3470

; <label>:3470                                    ; preds = %3441, %3413
  %3471 = phi float [ %3456, %3441 ], [ 0.000000e+00, %3413 ]
  %3472 = phi float [ %3457, %3441 ], [ 0.000000e+00, %3413 ]
  %3473 = phi float [ %3458, %3441 ], [ 0.000000e+00, %3413 ]
  %3474 = phi float [ %3465, %3441 ], [ 0.000000e+00, %3413 ]
  %3475 = phi float [ %3469, %3441 ], [ 0.000000e+00, %3413 ]
  %3476 = call float @dx.op.dot3.f32(i32 55, float %3471, float %3472, float %3473, float %2343, float %2344, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %3477 = fmul fast float %3476, 0x3FDF454380000000
  %3478 = fmul fast float %3476, %3476
  %3479 = fmul fast float %3478, 0x3FEE471020000000
  %3480 = fadd fast float %3479, 0xBFD42F6020000000
  %3481 = fmul fast float %3436, 0x3FD20DD760000000
  %3482 = fmul fast float %3480, %3475
  %3483 = fadd fast float %3482, %3481
  %3484 = fmul fast float %3477, %3474
  %3485 = fadd fast float %3483, %3484
  %3486 = fsub fast float %3483, %3484
  %3487 = call float @dx.op.dot3.f32(i32 55, float %3471, float %3472, float %3473, float %2360, float %2361, float %2362)  ; Dot3(ax,ay,az,bx,by,bz)
  %3488 = fmul fast float %3487, 0x3FDF454380000000
  %3489 = fmul fast float %3487, %3487
  %3490 = fmul fast float %3489, 0x3FEE471020000000
  %3491 = fadd fast float %3490, 0xBFD42F6020000000
  %3492 = call float @dx.op.dot3.f32(i32 55, float %3436, float %3474, float %3475, float 0x3FD20DD760000000, float %3488, float %3491)  ; Dot3(ax,ay,az,bx,by,bz)
  %3493 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3349)  ; FMax(a,b)
  %3494 = call float @dx.op.dot3.f32(i32 55, float %3372, float %3375, float %3378, float %3372, float %3375, float %3378)  ; Dot3(ax,ay,az,bx,by,bz)
  %3495 = fcmp fast oeq float %3494, 0.000000e+00
  %3496 = fcmp fast oeq float %3493, 0.000000e+00
  %3497 = or i1 %3496, %3495
  br i1 %3497, label %3527, label %3498

; <label>:3498                                    ; preds = %3470
  %3499 = fsub fast float -0.000000e+00, %3378
  %3500 = fsub fast float -0.000000e+00, %3372
  %3501 = call float @dx.op.unary.f32(i32 24, float %3494)  ; Sqrt(value)
  %3502 = fdiv fast float %3501, %3493
  %3503 = fcmp fast ogt float %3502, 0x3FFB6F8900000000
  %3504 = select i1 %3503, float 0x3FFB6F8900000000, float %3502
  %3505 = fmul fast float %3504, 0x3FE8A23460000000
  %3506 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3507 = call float @dx.op.binary.f32(i32 35, float %3504, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3508 = fmul fast float %3506, %3493
  %3509 = fmul fast float %3507, 0x3FF279A740000000
  %3510 = fadd fast float %3509, -1.000000e+00
  %3511 = call float @dx.op.dot3.f32(i32 55, float %3499, float %3500, float %3375, float %3499, float %3500, float %3375)  ; Dot3(ax,ay,az,bx,by,bz)
  %3512 = call float @dx.op.unary.f32(i32 25, float %3511)  ; Rsqrt(value)
  %3513 = fmul fast float %3512, %3499
  %3514 = fmul fast float %3512, %3500
  %3515 = fmul fast float %3512, %3375
  %3516 = fmul fast float %3510, %3510
  %3517 = fsub fast float 1.000000e+00, %3516
  %3518 = fmul fast float %3507, 0x40005F8BE0000000
  %3519 = fsub fast float 0x400C5BF8A0000000, %3518
  %3520 = fdiv fast float %3508, %3519
  %3521 = fmul fast float %3520, 0x3FEE31C3C0000000
  %3522 = fmul fast float %3521, %3517
  %3523 = fmul fast float %3507, 0x3FDACB7480000000
  %3524 = fadd fast float %3523, 0xBFD7347680000000
  %3525 = fmul fast float %3524, %3520
  %3526 = fmul fast float %3525, %3517
  br label %3527

; <label>:3527                                    ; preds = %3498, %3470
  %3528 = phi float [ %3513, %3498 ], [ 0.000000e+00, %3470 ]
  %3529 = phi float [ %3514, %3498 ], [ 0.000000e+00, %3470 ]
  %3530 = phi float [ %3515, %3498 ], [ 0.000000e+00, %3470 ]
  %3531 = phi float [ %3522, %3498 ], [ 0.000000e+00, %3470 ]
  %3532 = phi float [ %3526, %3498 ], [ 0.000000e+00, %3470 ]
  %3533 = call float @dx.op.dot3.f32(i32 55, float %3528, float %3529, float %3530, float %2343, float %2344, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %3534 = fmul fast float %3533, 0x3FDF454380000000
  %3535 = fmul fast float %3533, %3533
  %3536 = fmul fast float %3535, 0x3FEE471020000000
  %3537 = fadd fast float %3536, 0xBFD42F6020000000
  %3538 = fmul fast float %3493, 0x3FD20DD760000000
  %3539 = fmul fast float %3537, %3532
  %3540 = fadd fast float %3539, %3538
  %3541 = fmul fast float %3534, %3531
  %3542 = fadd fast float %3540, %3541
  %3543 = fsub fast float %3540, %3541
  %3544 = call float @dx.op.dot3.f32(i32 55, float %3528, float %3529, float %3530, float %2360, float %2361, float %2362)  ; Dot3(ax,ay,az,bx,by,bz)
  %3545 = fmul fast float %3544, 0x3FDF454380000000
  %3546 = fmul fast float %3544, %3544
  %3547 = fmul fast float %3546, 0x3FEE471020000000
  %3548 = fadd fast float %3547, 0xBFD42F6020000000
  %3549 = call float @dx.op.dot3.f32(i32 55, float %3493, float %3531, float %3532, float 0x3FD20DD760000000, float %3545, float %3548)  ; Dot3(ax,ay,az,bx,by,bz)
  %3550 = call float @dx.op.binary.f32(i32 35, float %3428, float 0.000000e+00)  ; FMax(a,b)
  %3551 = call float @dx.op.binary.f32(i32 35, float %3485, float 0.000000e+00)  ; FMax(a,b)
  %3552 = call float @dx.op.binary.f32(i32 35, float %3542, float 0.000000e+00)  ; FMax(a,b)
  %3553 = call float @dx.op.binary.f32(i32 35, float %3429, float 0.000000e+00)  ; FMax(a,b)
  %3554 = call float @dx.op.binary.f32(i32 35, float %3486, float 0.000000e+00)  ; FMax(a,b)
  %3555 = call float @dx.op.binary.f32(i32 35, float %3543, float 0.000000e+00)  ; FMax(a,b)
  %3556 = call float @dx.op.binary.f32(i32 35, float %3435, float 0.000000e+00)  ; FMax(a,b)
  %3557 = call float @dx.op.binary.f32(i32 35, float %3492, float 0.000000e+00)  ; FMax(a,b)
  %3558 = call float @dx.op.binary.f32(i32 35, float %3549, float 0.000000e+00)  ; FMax(a,b)
  %3559 = fsub fast float %2747, %3550
  %3560 = fsub fast float %2748, %3551
  %3561 = fsub fast float %2749, %3552
  %3562 = fmul fast float %3559, %2423
  %3563 = fmul fast float %3560, %2423
  %3564 = fmul fast float %3561, %2423
  %3565 = fadd fast float %3562, %3550
  %3566 = fadd fast float %3563, %3551
  %3567 = fadd fast float %3564, %3552
  %3568 = fsub fast float %2744, %3553
  %3569 = fsub fast float %2745, %3554
  %3570 = fsub fast float %2746, %3555
  %3571 = fmul fast float %3568, %2423
  %3572 = fmul fast float %3569, %2423
  %3573 = fmul fast float %3570, %2423
  %3574 = fadd fast float %3571, %3553
  %3575 = fadd fast float %3572, %3554
  %3576 = fadd fast float %3573, %3555
  %3577 = fsub fast float %2741, %3556
  %3578 = fsub fast float %2742, %3557
  %3579 = fsub fast float %2743, %3558
  %3580 = fmul fast float %3577, %2423
  %3581 = fmul fast float %3578, %2423
  %3582 = fmul fast float %3579, %2423
  %3583 = fadd fast float %3580, %3556
  %3584 = fadd fast float %3581, %3557
  %3585 = fadd fast float %3582, %3558
  %3586 = fsub fast float %2525, %3351
  %3587 = fmul fast float %3586, %2423
  %3588 = fadd fast float %3587, %3351
  br label %3589

; <label>:3589                                    ; preds = %3527, %2740
  %3590 = phi float [ %3588, %3527 ], [ %2525, %2740 ]
  %3591 = phi float [ %3583, %3527 ], [ %2741, %2740 ]
  %3592 = phi float [ %3584, %3527 ], [ %2742, %2740 ]
  %3593 = phi float [ %3585, %3527 ], [ %2743, %2740 ]
  %3594 = phi float [ %3574, %3527 ], [ %2744, %2740 ]
  %3595 = phi float [ %3575, %3527 ], [ %2745, %2740 ]
  %3596 = phi float [ %3576, %3527 ], [ %2746, %2740 ]
  %3597 = phi float [ %3565, %3527 ], [ %2747, %2740 ]
  %3598 = phi float [ %3566, %3527 ], [ %2748, %2740 ]
  %3599 = phi float [ %3567, %3527 ], [ %2749, %2740 ]
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 0
  %3602 = call float @dx.op.binary.f32(i32 36, float %2340, float %3601)  ; FMin(a,b)
  %3603 = fmul fast float %3602, %2364
  %3604 = fsub fast float 1.000000e+00, %3603
  %3605 = bitcast float %3604 to i32
  %3606 = sub nsw i32 2129859010, %3605
  %3607 = bitcast i32 %3606 to float
  %3608 = call float @dx.op.binary.f32(i32 36, float %2341, float %3601)  ; FMin(a,b)
  %3609 = fmul fast float %3608, %2364
  %3610 = fsub fast float 1.000000e+00, %3609
  %3611 = bitcast float %3610 to i32
  %3612 = sub nsw i32 2129859010, %3611
  %3613 = bitcast i32 %3612 to float
  %3614 = call float @dx.op.binary.f32(i32 36, float %2342, float %3601)  ; FMin(a,b)
  %3615 = fmul fast float %3614, %2364
  %3616 = fsub fast float 1.000000e+00, %3615
  %3617 = bitcast float %3616 to i32
  %3618 = sub nsw i32 2129859010, %3617
  %3619 = bitcast i32 %3618 to float
  %3620 = fmul fast float %3597, %2363
  %3621 = fmul fast float %3620, %3607
  %3622 = fmul fast float %3598, %2363
  %3623 = fmul fast float %3622, %3613
  %3624 = fmul fast float %3599, %2363
  %3625 = fmul fast float %3624, %3619
  %3626 = call float @dx.op.binary.f32(i32 36, float %2346, float %3601)  ; FMin(a,b)
  %3627 = fmul fast float %3626, %2364
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = bitcast float %3628 to i32
  %3630 = sub nsw i32 2129859010, %3629
  %3631 = bitcast i32 %3630 to float
  %3632 = call float @dx.op.binary.f32(i32 36, float %2347, float %3601)  ; FMin(a,b)
  %3633 = fmul fast float %3632, %2364
  %3634 = fsub fast float 1.000000e+00, %3633
  %3635 = bitcast float %3634 to i32
  %3636 = sub nsw i32 2129859010, %3635
  %3637 = bitcast i32 %3636 to float
  %3638 = call float @dx.op.binary.f32(i32 36, float %2352, float %3601)  ; FMin(a,b)
  %3639 = fmul fast float %3638, %2364
  %3640 = fsub fast float 1.000000e+00, %3639
  %3641 = bitcast float %3640 to i32
  %3642 = sub nsw i32 2129859010, %3641
  %3643 = bitcast i32 %3642 to float
  %3644 = fmul fast float %3591, %2363
  %3645 = fmul fast float %3644, %3631
  %3646 = fmul fast float %3592, %2363
  %3647 = fmul fast float %3646, %3637
  %3648 = fmul fast float %3593, %2363
  %3649 = fmul fast float %3648, %3643
  %3650 = call float @dx.op.dot3.f32(i32 55, float %3621, float %3623, float %3625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3651 = select i1 %237, float 0.000000e+00, float %3621
  %3652 = select i1 %237, float %3650, float %3623
  %3653 = select i1 %237, float 0.000000e+00, float %3625
  %3654 = call float @dx.op.dot3.f32(i32 55, float %3594, float %3595, float %3596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3655 = select i1 %237, float 0.000000e+00, float %3594
  %3656 = select i1 %237, float %3654, float %3595
  %3657 = select i1 %237, float 0.000000e+00, float %3596
  %3658 = call float @dx.op.dot3.f32(i32 55, float %3645, float %3647, float %3649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3659 = select i1 %237, float 0.000000e+00, float %3645
  %3660 = select i1 %237, float %3658, float %3647
  %3661 = select i1 %237, float 0.000000e+00, float %3649
  %3662 = fmul fast float %1085, %1085
  %3663 = call float @dx.op.unary.f32(i32 7, float %3662)  ; Saturate(value)
  %3664 = fmul fast float %2354, 9.843750e-01
  %3665 = fmul fast float %2349, 9.843750e-01
  %3666 = fadd fast float %3664, 7.812500e-03
  %3667 = fadd fast float %3665, 7.812500e-03
  %3668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3666, float %3667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3670 = extractvalue %dx.types.ResRet.f32 %3668, 1
  %3671 = extractvalue %dx.types.ResRet.f32 %3668, 2
  %3672 = extractvalue %dx.types.ResRet.f32 %3668, 3
  %3673 = fsub fast float 1.000000e+00, %3663
  %3674 = fsub fast float %3671, %3669
  %3675 = fsub fast float %3672, %3670
  %3676 = fmul fast float %3674, %3673
  %3677 = fmul fast float %3675, %3673
  %3678 = fadd fast float %3676, %3669
  %3679 = fadd fast float %3677, %3670
  %3680 = fmul fast float %3678, %2346
  %3681 = fmul fast float %3678, %2347
  %3682 = fmul fast float %3678, %2352
  %3683 = fadd fast float %3680, %3679
  %3684 = fadd fast float %3681, %3679
  %3685 = fadd fast float %3682, %3679
  %3686 = fcmp fast ogt float %1685, 0.000000e+00
  br i1 %3686, label %3687, label %3713

; <label>:3687                                    ; preds = %3589
  %3688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1685, float %2354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3689 = extractvalue %dx.types.ResRet.f32 %3688, 0
  %3690 = extractvalue %dx.types.ResRet.f32 %3688, 1
  %3691 = extractvalue %dx.types.ResRet.f32 %3688, 2
  %3692 = fadd fast float %3689, -5.000000e-01
  %3693 = fadd fast float %3690, -5.000000e-01
  %3694 = fadd fast float %3691, -5.000000e-01
  %3695 = fsub fast float 1.000000e+00, %2346
  %3696 = fsub fast float 1.000000e+00, %2347
  %3697 = fsub fast float 1.000000e+00, %2352
  %3698 = fmul fast float %2346, 4.000000e+00
  %3699 = fmul fast float %3698, %3695
  %3700 = fmul fast float %3699, %3692
  %3701 = fmul fast float %2347, 4.000000e+00
  %3702 = fmul fast float %3701, %3696
  %3703 = fmul fast float %3702, %3693
  %3704 = fmul fast float %2352, 4.000000e+00
  %3705 = fmul fast float %3704, %3697
  %3706 = fmul fast float %3705, %3694
  %3707 = fadd fast float %3700, %3683
  %3708 = fadd fast float %3703, %3684
  %3709 = fadd fast float %3706, %3685
  %3710 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3711 = call float @dx.op.unary.f32(i32 7, float %3708)  ; Saturate(value)
  %3712 = call float @dx.op.unary.f32(i32 7, float %3709)  ; Saturate(value)
  br label %3713

; <label>:3713                                    ; preds = %3687, %3589
  %3714 = phi float [ %3710, %3687 ], [ %3683, %3589 ]
  %3715 = phi float [ %3711, %3687 ], [ %3684, %3589 ]
  %3716 = phi float [ %3712, %3687 ], [ %3685, %3589 ]
  %3717 = call float @dx.op.binary.f32(i32 35, float %3715, float %3716)  ; FMax(a,b)
  %3718 = call float @dx.op.binary.f32(i32 35, float %3714, float %3717)  ; FMax(a,b)
  %3719 = fsub fast float 1.000000e+00, %3718
  %3720 = fmul fast float %3718, %2349
  %3721 = fadd fast float %3720, %2349
  %3722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.f32 %3722, 2
  %3724 = extractvalue %dx.types.CBufRet.f32 %3722, 3
  %3725 = fmul fast float %3721, %3723
  %3726 = fadd fast float %3725, %3724
  %3727 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3728 = fsub fast float 1.000000e+00, %2375
  %3729 = fadd fast float %3728, %3727
  %3730 = call float @dx.op.unary.f32(i32 7, float %3729)  ; Saturate(value)
  %3731 = fcmp fast olt float %3730, 1.000000e+00
  br i1 %3731, label %3732, label %4208

; <label>:3732                                    ; preds = %3713
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 2
  %3735 = extractvalue %dx.types.CBufRet.f32 %3733, 3
  %3736 = fmul fast float %3734, %99
  %3737 = fmul fast float %3735, %100
  %3738 = fptoui float %3736 to i32
  %3739 = fptoui float %3737 to i32
  %3740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3741 = extractvalue %dx.types.CBufRet.f32 %3740, 0
  %3742 = extractvalue %dx.types.CBufRet.f32 %3740, 2
  %3743 = extractvalue %dx.types.CBufRet.f32 %3740, 3
  %3744 = fadd fast float %87, -4.000000e+00
  %3745 = call float @dx.op.binary.f32(i32 35, float %3744, float 0.000000e+00)  ; FMax(a,b)
  %3746 = fadd fast float %3745, %3741
  %3747 = fmul fast float %3746, %3742
  %3748 = call float @dx.op.unary.f32(i32 23, float %3747)  ; Log(value)
  %3749 = fmul fast float %3748, %3743
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 2
  %3752 = fmul fast float %3749, %3751
  %3753 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.i32 %3754, 1
  %3756 = add i32 %3755, -1
  %3757 = uitofp i32 %3755 to float
  %3758 = fmul fast float %3757, %3753
  %3759 = fptoui float %3758 to i32
  %3760 = call i32 @dx.op.binary.i32(i32 40, i32 %3759, i32 %3756)  ; UMin(a,b)
  %3761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.i32 %3761, 2
  %3763 = extractvalue %dx.types.CBufRet.i32 %3761, 3
  %3764 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3739, i32 %3762, i32 %3738)  ; UMad(a,b,c)
  %3765 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3760, i32 %3763, i32 %3764)  ; UMad(a,b,c)
  %3766 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %3767 = fptoui float %3766 to i32
  %3768 = lshr i32 %3767, 5
  %3769 = call i32 @dx.op.binary.i32(i32 40, i32 %3768, i32 8191)  ; UMin(a,b)
  %3770 = fsub fast float %2139, %148
  %3771 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3772 = fcmp fast ogt float %3771, 0.000000e+00
  %3773 = fcmp fast ogt float %2362, 0.000000e+00
  %3774 = and i1 %3773, %3772
  br i1 %3774, label %3775, label %3804

; <label>:3775                                    ; preds = %3732
  %3776 = call float @dx.op.dot3.f32(i32 55, float %2360, float %2361, float %2362, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3777 = call float @dx.op.binary.f32(i32 35, float %3776, float -1.000000e+00)  ; FMax(a,b)
  %3778 = call float @dx.op.binary.f32(i32 36, float %3777, float 1.000000e+00)  ; FMin(a,b)
  %3779 = fmul fast float %3778, %3778
  %3780 = fsub fast float 1.000000e+00, %3779
  %3781 = fmul fast float %3780, 0x3FFC6E2300000000
  %3782 = fsub fast float 1.000000e+00, %3781
  %3783 = fcmp fast ogt float %3782, 0.000000e+00
  %3784 = call float @dx.op.unary.f32(i32 24, float %3782)  ; Sqrt(value)
  %3785 = fsub fast float 1.000000e+00, %3784
  %3786 = call float @dx.op.unary.f32(i32 23, float %3785)  ; Log(value)
  %3787 = fmul fast float %3786, 5.000000e+00
  %3788 = call float @dx.op.unary.f32(i32 21, float %3787)  ; Exp(value)
  %3789 = fmul fast float %3788, 0x3FEF591A60000000
  %3790 = fadd fast float %3789, 0x3F94DCB540000000
  %3791 = select i1 %3783, float %3790, float 1.000000e+00
  %3792 = fcmp fast oge float %3791, 1.000000e+00
  %3793 = fmul fast float %3776, 2.000000e+00
  %3794 = fadd fast float %3793, %2362
  %3795 = select i1 %3792, float %3794, float %2362
  %3796 = fsub fast float %3795, %2362
  %3797 = fmul fast float %3796, %3771
  %3798 = fadd fast float %3797, %2362
  %3799 = call float @dx.op.dot3.f32(i32 55, float %2360, float %2361, float %3798, float %2360, float %2361, float %3798)  ; Dot3(ax,ay,az,bx,by,bz)
  %3800 = call float @dx.op.unary.f32(i32 25, float %3799)  ; Rsqrt(value)
  %3801 = fmul fast float %3800, %2360
  %3802 = fmul fast float %3800, %2361
  %3803 = fmul fast float %3798, %3800
  br label %3804

; <label>:3804                                    ; preds = %3775, %3732
  %3805 = phi float [ %3801, %3775 ], [ %2360, %3732 ]
  %3806 = phi float [ %3802, %3775 ], [ %2361, %3732 ]
  %3807 = phi float [ %3803, %3775 ], [ %2362, %3732 ]
  %3808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3809 = extractvalue %dx.types.CBufRet.i32 %3808, 2
  %3810 = add nsw i32 %3809, -1
  %3811 = call i32 @dx.op.binary.i32(i32 37, i32 %3810, i32 0)  ; IMax(a,b)
  %3812 = shl i32 %3769, 2
  %3813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.i32 %3813, 0
  %3815 = lshr i32 %3814, 16
  %3816 = and i32 %3814, 65535
  %3817 = lshr i32 %3814, 21
  %3818 = lshr i32 %3816, 5
  %3819 = call i32 @dx.op.binary.i32(i32 40, i32 %3818, i32 %3811)  ; UMin(a,b)
  %3820 = icmp ugt i32 %3817, %3819
  br i1 %3820, label %4184, label %3821

; <label>:3821                                    ; preds = %3804
  br label %3822

; <label>:3822                                    ; preds = %4176, %3821
  %3823 = phi float [ %4177, %4176 ], [ 0.000000e+00, %3821 ]
  %3824 = phi float [ %4178, %4176 ], [ 0.000000e+00, %3821 ]
  %3825 = phi float [ %4179, %4176 ], [ 0.000000e+00, %3821 ]
  %3826 = phi float [ %4180, %4176 ], [ 1.000000e+00, %3821 ]
  %3827 = phi i32 [ %4181, %4176 ], [ %3817, %3821 ]
  %3828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.i32 %3828, 2
  %3830 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3765, i32 %3829, i32 %3827)  ; UMad(a,b,c)
  %3831 = shl i32 %3830, 2
  %3832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.i32 %3832, 0
  %3834 = shl i32 %3827, 5
  %3835 = sub nsw i32 %3815, %3834
  %3836 = call i32 @dx.op.binary.i32(i32 37, i32 %3835, i32 0)  ; IMax(a,b)
  %3837 = call i32 @dx.op.binary.i32(i32 38, i32 %3836, i32 31)  ; IMin(a,b)
  %3838 = sub nsw i32 1, %3815
  %3839 = add nsw i32 %3838, %3816
  %3840 = call i32 @dx.op.binary.i32(i32 37, i32 %3839, i32 0)  ; IMax(a,b)
  %3841 = call i32 @dx.op.binary.i32(i32 38, i32 %3840, i32 32)  ; IMin(a,b)
  %3842 = and i32 %3841, 31
  %3843 = shl i32 -1, %3842
  %3844 = xor i32 %3843, -1
  %3845 = and i32 %3837, 31
  %3846 = shl i32 %3844, %3845
  %3847 = icmp eq i32 %3841, 32
  %3848 = select i1 %3847, i32 -1, i32 %3846
  %3849 = and i32 %3848, %3833
  %3850 = icmp eq i32 %3849, 0
  br i1 %3850, label %4176, label %3851

; <label>:3851                                    ; preds = %3822
  br label %3852

; <label>:3852                                    ; preds = %3959, %3851
  %3853 = phi float [ %3960, %3959 ], [ %3823, %3851 ]
  %3854 = phi float [ %3961, %3959 ], [ %3824, %3851 ]
  %3855 = phi float [ %3962, %3959 ], [ %3825, %3851 ]
  %3856 = phi float [ %3963, %3959 ], [ %3826, %3851 ]
  %3857 = phi i32 [ %3862, %3959 ], [ %3849, %3851 ]
  %3858 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3857)  ; FirstbitLo(value)
  %3859 = add i32 %3858, %3834
  %3860 = and i32 %3858, 31
  %3861 = shl i32 1, %3860
  %3862 = xor i32 %3861, %3857
  %3863 = mul i32 %3859, 72
  %3864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = extractvalue %dx.types.ResRet.f32 %3864, 2
  %3868 = add i32 %3863, 12
  %3869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.i32 %3869, 0
  %3871 = add i32 %3863, 16
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = add i32 %3863, 28
  %3877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3878 = extractvalue %dx.types.ResRet.f32 %3877, 0
  %3879 = add i32 %3863, 32
  %3880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.f32 %3880, 1
  %3883 = extractvalue %dx.types.ResRet.f32 %3880, 2
  %3884 = extractvalue %dx.types.ResRet.f32 %3880, 3
  %3885 = add i32 %3863, 48
  %3886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.ResRet.f32 %3886, 1
  %3889 = add i32 %3863, 56
  %3890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3890, 1
  %3893 = add i32 %3863, 64
  %3894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = extractvalue %dx.types.ResRet.f32 %3894, 1
  %3897 = mul i32 %3859, 60
  %3898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.f32 %3898, 0
  %3900 = extractvalue %dx.types.ResRet.f32 %3898, 1
  %3901 = extractvalue %dx.types.ResRet.f32 %3898, 2
  %3902 = add i32 %3897, 12
  %3903 = add i32 %3897, 48
  %3904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.f32 %3904, 0
  %3906 = extractvalue %dx.types.ResRet.f32 %3904, 1
  %3907 = extractvalue %dx.types.ResRet.f32 %3904, 2
  %3908 = and i32 %3870, 32767
  %3909 = bitcast float %3865 to i32
  %3910 = icmp eq i32 %3909, -1
  %3911 = bitcast float %3866 to i32
  %3912 = and i32 %3870, 32768
  %3913 = icmp ne i32 %3912, 0
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.CBufRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.CBufRet.f32 %3914, 2
  %3918 = fsub fast float %3899, %3915
  %3919 = fsub fast float %3900, %3916
  %3920 = fsub fast float %3901, %3917
  %3921 = fsub fast float %146, %3918
  %3922 = fsub fast float %147, %3919
  %3923 = fsub fast float %148, %3920
  %3924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3928 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3922, float %3923, float %3925, float %3926, float %3927)  ; Dot3(ax,ay,az,bx,by,bz)
  %3929 = add i32 %3897, 24
  %3930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.f32 %3930, 1
  %3933 = extractvalue %dx.types.ResRet.f32 %3930, 2
  %3934 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3922, float %3923, float %3931, float %3932, float %3933)  ; Dot3(ax,ay,az,bx,by,bz)
  %3935 = add i32 %3897, 36
  %3936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.ResRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3936, 2
  %3940 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3922, float %3923, float %3937, float %3938, float %3939)  ; Dot3(ax,ay,az,bx,by,bz)
  %3941 = call float @dx.op.unary.f32(i32 6, float %3928)  ; FAbs(value)
  %3942 = call float @dx.op.unary.f32(i32 6, float %3934)  ; FAbs(value)
  %3943 = call float @dx.op.unary.f32(i32 6, float %3940)  ; FAbs(value)
  %3944 = fsub fast float %3905, %3941
  %3945 = fsub fast float %3906, %3942
  %3946 = fsub fast float %3907, %3943
  %3947 = fmul fast float %3944, %3873
  %3948 = fmul fast float %3945, %3874
  %3949 = fmul fast float %3946, %3875
  %3950 = call float @dx.op.binary.f32(i32 36, float %3948, float %3949)  ; FMin(a,b)
  %3951 = call float @dx.op.binary.f32(i32 36, float %3947, float %3950)  ; FMin(a,b)
  %3952 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3953 = call float @dx.op.binary.f32(i32 36, float %3856, float %3952)  ; FMin(a,b)
  %3954 = uitofp i1 %3913 to float
  %3955 = fadd fast float %3771, 1.000000e+00
  %3956 = fsub fast float %3955, %3954
  %3957 = fmul fast float %3953, %3956
  %3958 = fcmp fast ogt float %3957, 0.000000e+00
  br i1 %3958, label %3965, label %3959

; <label>:3959                                    ; preds = %4107, %3852
  %3960 = phi float [ %4171, %4107 ], [ %3853, %3852 ]
  %3961 = phi float [ %4172, %4107 ], [ %3854, %3852 ]
  %3962 = phi float [ %4173, %4107 ], [ %3855, %3852 ]
  %3963 = phi float [ %4174, %4107 ], [ %3856, %3852 ]
  %3964 = icmp eq i32 %3857, %3861
  br i1 %3964, label %4175, label %3852

; <label>:3965                                    ; preds = %3852
  br i1 %3910, label %4023, label %3966

; <label>:3966                                    ; preds = %3965
  %3967 = fsub fast float -0.000000e+00, %3925
  %3968 = fsub fast float -0.000000e+00, %3926
  %3969 = fsub fast float -0.000000e+00, %3927
  %3970 = call float @dx.op.dot3.f32(i32 55, float %3805, float %3806, float %3807, float %3967, float %3968, float %3969)  ; Dot3(ax,ay,az,bx,by,bz)
  %3971 = fsub fast float -0.000000e+00, %3970
  %3972 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3922, float %3923, float %3967, float %3968, float %3969)  ; Dot3(ax,ay,az,bx,by,bz)
  %3973 = fadd fast float %3972, %3888
  %3974 = fadd fast float %3887, %3972
  %3975 = fsub fast float -0.000000e+00, %3974
  %3976 = fcmp ogt float %3970, -0.000000e+00
  %3977 = select i1 %3976, float %3975, float %3973
  %3978 = call float @dx.op.unary.f32(i32 6, float %3971)  ; FAbs(value)
  %3979 = fdiv fast float 1.000000e+00, %3978
  %3980 = fmul fast float %3977, %3979
  %3981 = call float @dx.op.binary.f32(i32 35, float %3980, float 0.000000e+00)  ; FMax(a,b)
  %3982 = fsub fast float -0.000000e+00, %3931
  %3983 = fsub fast float -0.000000e+00, %3932
  %3984 = fsub fast float -0.000000e+00, %3933
  %3985 = call float @dx.op.dot3.f32(i32 55, float %3805, float %3806, float %3807, float %3982, float %3983, float %3984)  ; Dot3(ax,ay,az,bx,by,bz)
  %3986 = fsub fast float -0.000000e+00, %3985
  %3987 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3922, float %3923, float %3982, float %3983, float %3984)  ; Dot3(ax,ay,az,bx,by,bz)
  %3988 = fadd fast float %3987, %3892
  %3989 = fadd fast float %3891, %3987
  %3990 = fsub fast float -0.000000e+00, %3989
  %3991 = fcmp ogt float %3985, -0.000000e+00
  %3992 = select i1 %3991, float %3990, float %3988
  %3993 = call float @dx.op.unary.f32(i32 6, float %3986)  ; FAbs(value)
  %3994 = fdiv fast float 1.000000e+00, %3993
  %3995 = fmul fast float %3992, %3994
  %3996 = call float @dx.op.binary.f32(i32 35, float %3995, float 0.000000e+00)  ; FMax(a,b)
  %3997 = fsub fast float -0.000000e+00, %3937
  %3998 = fsub fast float -0.000000e+00, %3938
  %3999 = fsub fast float -0.000000e+00, %3939
  %4000 = call float @dx.op.dot3.f32(i32 55, float %3805, float %3806, float %3807, float %3997, float %3998, float %3999)  ; Dot3(ax,ay,az,bx,by,bz)
  %4001 = fsub fast float -0.000000e+00, %4000
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3922, float %3923, float %3997, float %3998, float %3999)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = fadd fast float %4002, %3896
  %4004 = fadd fast float %3895, %4002
  %4005 = fsub fast float -0.000000e+00, %4004
  %4006 = fcmp ogt float %4000, -0.000000e+00
  %4007 = select i1 %4006, float %4005, float %4003
  %4008 = call float @dx.op.unary.f32(i32 6, float %4001)  ; FAbs(value)
  %4009 = fdiv fast float 1.000000e+00, %4008
  %4010 = fmul fast float %4007, %4009
  %4011 = call float @dx.op.binary.f32(i32 35, float %4010, float 0.000000e+00)  ; FMax(a,b)
  %4012 = call float @dx.op.binary.f32(i32 36, float %3996, float %4011)  ; FMin(a,b)
  %4013 = call float @dx.op.binary.f32(i32 36, float %3981, float %4012)  ; FMin(a,b)
  %4014 = fmul fast float %4013, %3805
  %4015 = fmul fast float %4013, %3806
  %4016 = fmul fast float %4013, %3807
  %4017 = fadd fast float %4014, %146
  %4018 = fadd fast float %4015, %147
  %4019 = fadd fast float %4016, %148
  %4020 = fsub fast float %4017, %3865
  %4021 = fsub fast float %4018, %3866
  %4022 = fsub fast float %4019, %3867
  br label %4030

; <label>:4023                                    ; preds = %3965
  %4024 = fmul fast float %3805, 8.096000e+03
  %4025 = fmul fast float %3806, 8.096000e+03
  %4026 = fmul fast float %3807, 8.096000e+03
  %4027 = fadd fast float %4024, %146
  %4028 = fadd fast float %4025, %147
  %4029 = fadd fast float %4026, %148
  br label %4030

; <label>:4030                                    ; preds = %4023, %3966
  %4031 = phi float [ %3805, %4023 ], [ %4020, %3966 ]
  %4032 = phi float [ %3806, %4023 ], [ %4021, %3966 ]
  %4033 = phi float [ %3807, %4023 ], [ %4022, %3966 ]
  %4034 = phi float [ %4027, %4023 ], [ %4017, %3966 ]
  %4035 = phi float [ %4028, %4023 ], [ %4018, %3966 ]
  %4036 = phi float [ %4029, %4023 ], [ %4019, %3966 ]
  %4037 = fcmp fast olt float %3884, 1.000000e+00
  br i1 %4037, label %4038, label %4069, !dx.controlflow.hints !113

; <label>:4038                                    ; preds = %4030
  %4039 = fmul fast float %4033, %3882
  %4040 = fmul fast float %4032, %3883
  %4041 = fsub fast float %4039, %4040
  %4042 = fmul fast float %4031, %3883
  %4043 = fmul fast float %4033, %3881
  %4044 = fsub fast float %4042, %4043
  %4045 = fmul fast float %4032, %3881
  %4046 = fmul fast float %4031, %3882
  %4047 = fsub fast float %4045, %4046
  %4048 = fmul fast float %4041, 2.000000e+00
  %4049 = fmul fast float %4044, 2.000000e+00
  %4050 = fmul fast float %4047, 2.000000e+00
  %4051 = fmul fast float %4048, %3884
  %4052 = fmul fast float %4049, %3884
  %4053 = fmul fast float %4050, %3884
  %4054 = fmul fast float %4050, %3882
  %4055 = fmul fast float %4049, %3883
  %4056 = fmul fast float %4048, %3883
  %4057 = fmul fast float %4050, %3881
  %4058 = fmul fast float %4049, %3881
  %4059 = fmul fast float %4048, %3882
  %4060 = fadd fast float %4054, %4031
  %4061 = fadd fast float %4060, %4051
  %4062 = fsub fast float %4061, %4055
  %4063 = fsub fast float %4032, %4057
  %4064 = fadd fast float %4063, %4052
  %4065 = fadd fast float %4064, %4056
  %4066 = fadd fast float %4053, %4033
  %4067 = fsub fast float %4066, %4059
  %4068 = fadd fast float %4067, %4058
  br label %4069

; <label>:4069                                    ; preds = %4038, %4030
  %4070 = phi float [ %4062, %4038 ], [ %4031, %4030 ]
  %4071 = phi float [ %4065, %4038 ], [ %4032, %4030 ]
  %4072 = phi float [ %4068, %4038 ], [ %4033, %4030 ]
  br i1 %3910, label %4104, label %4073

; <label>:4073                                    ; preds = %4069
  %4074 = fmul fast float %2349, 0x400187C840000000
  %4075 = fadd fast float %4074, 0xC00EFC2120000000
  %4076 = fmul fast float %4075, %2349
  %4077 = fadd fast float %4076, 0x3FE5D16340000000
  %4078 = fmul fast float %4077, %2349
  %4079 = fadd fast float %4078, 1.000000e+00
  %4080 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4081 = fsub fast float %4034, %146
  %4082 = fsub fast float %4035, %147
  %4083 = fsub fast float %4036, %148
  %4084 = fsub fast float %4034, %3865
  %4085 = fsub fast float %4035, %3866
  %4086 = fsub fast float %4036, %3867
  %4087 = call float @dx.op.dot3.f32(i32 55, float %4081, float %4082, float %4083, float %4081, float %4082, float %4083)  ; Dot3(ax,ay,az,bx,by,bz)
  %4088 = call float @dx.op.dot3.f32(i32 55, float %4084, float %4085, float %4086, float %4084, float %4085, float %4086)  ; Dot3(ax,ay,az,bx,by,bz)
  %4089 = fadd fast float %4088, 0x3EE4F8B580000000
  %4090 = fdiv fast float %4087, %4089
  %4091 = bitcast float %4090 to i32
  %4092 = ashr i32 %4091, 1
  %4093 = add nsw i32 %4092, 532487669
  %4094 = bitcast i32 %4093 to float
  %4095 = fmul fast float %4094, %4080
  %4096 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4097 = fmul fast float %4096, 0x4009981AE0000000
  %4098 = fsub fast float 0x40111BBD80000000, %4097
  %4099 = fmul fast float %4098, %4096
  %4100 = fadd fast float %4099, 0xC0009F6020000000
  %4101 = fmul fast float %4100, %4096
  %4102 = fadd fast float %4101, 1.000000e+00
  %4103 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  br label %4107

; <label>:4104                                    ; preds = %4069
  %4105 = icmp ne i32 %3911, -1
  %4106 = zext i1 %4105 to i32
  br label %4107

; <label>:4107                                    ; preds = %4104, %4073
  %4108 = phi float [ %2349, %4104 ], [ %4103, %4073 ]
  %4109 = phi i32 [ %4106, %4104 ], [ 0, %4073 ]
  %4110 = fmul float %4108, 5.000000e+00
  %4111 = fsub float 5.000000e+00, %4110
  %4112 = icmp ne i32 %4109, 0
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 3
  %4115 = fadd fast float %4114, %4111
  %4116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4115)  ; FMax(a,b)
  %4117 = call float @dx.op.unary.f32(i32 6, float %4070)  ; FAbs(value)
  %4118 = call float @dx.op.unary.f32(i32 6, float %4071)  ; FAbs(value)
  %4119 = fadd fast float %4118, %4117
  %4120 = call float @dx.op.unary.f32(i32 6, float %4072)  ; FAbs(value)
  %4121 = fadd fast float %4119, %4120
  %4122 = fcmp fast oeq float %4121, 0.000000e+00
  %4123 = fdiv fast float 1.000000e+00, %4121
  %4124 = select i1 %4122, float 1.000000e+00, float %4123
  %4125 = fmul fast float %4124, %4070
  %4126 = fmul fast float %4124, %4071
  %4127 = call float @dx.op.unary.f32(i32 6, float %4126)  ; FAbs(value)
  %4128 = call float @dx.op.unary.f32(i32 6, float %4125)  ; FAbs(value)
  %4129 = fsub fast float 1.000000e+00, %4127
  %4130 = fsub fast float 1.000000e+00, %4128
  %4131 = fcmp fast oge float %4125, 0.000000e+00
  %4132 = fcmp fast oge float %4126, 0.000000e+00
  %4133 = select i1 %4131, float 1.000000e+00, float -1.000000e+00
  %4134 = select i1 %4132, float 1.000000e+00, float -1.000000e+00
  %4135 = fcmp fast ole float %4072, 0.000000e+00
  %4136 = fmul fast float %4133, %4129
  %4137 = fmul fast float %4134, %4130
  %4138 = select i1 %4135, float %4136, float %4125
  %4139 = select i1 %4135, float %4137, float %4126
  %4140 = fmul fast float %4138, 5.000000e-01
  %4141 = fmul fast float %4139, 5.000000e-01
  %4142 = fadd fast float %4140, 5.000000e-01
  %4143 = fadd fast float %4141, 5.000000e-01
  %4144 = uitofp i32 %3908 to float
  %4145 = call float @dx.op.binary.f32(i32 36, float %4116, float 3.000000e+00)  ; FMin(a,b)
  %4146 = fadd fast float %4145, 2.000000e+00
  %4147 = call float @dx.op.unary.f32(i32 21, float %4146)  ; Exp(value)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4113, 1
  %4149 = fmul fast float %4148, %4147
  %4150 = fmul fast float %4149, 2.000000e+00
  %4151 = fsub fast float 1.000000e+00, %4150
  %4152 = fmul fast float %4142, %4151
  %4153 = fmul fast float %4143, %4151
  %4154 = fadd fast float %4152, %4149
  %4155 = fadd fast float %4153, %4149
  %4156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %4154, float %4155, float %4144, float undef, i32 0, i32 0, i32 undef, float %4116)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4157 = extractvalue %dx.types.ResRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.ResRet.f32 %4156, 1
  %4159 = extractvalue %dx.types.ResRet.f32 %4156, 2
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 3
  %4162 = fmul fast float %4161, %3878
  %4163 = call float @dx.op.binary.f32(i32 36, float %3590, float %4162)  ; FMin(a,b)
  %4164 = select i1 %4112, float %4163, float %4162
  %4165 = fmul fast float %4157, %3957
  %4166 = fmul fast float %4165, %4164
  %4167 = fmul fast float %4158, %3957
  %4168 = fmul fast float %4167, %4164
  %4169 = fmul fast float %4159, %3957
  %4170 = fmul fast float %4169, %4164
  %4171 = fadd fast float %4166, %3853
  %4172 = fadd fast float %4168, %3854
  %4173 = fadd fast float %4170, %3855
  %4174 = fsub fast float %3856, %3957
  br label %3959

; <label>:4175                                    ; preds = %3959
  br label %4176

; <label>:4176                                    ; preds = %4175, %3822
  %4177 = phi float [ %3823, %3822 ], [ %3960, %4175 ]
  %4178 = phi float [ %3824, %3822 ], [ %3961, %4175 ]
  %4179 = phi float [ %3825, %3822 ], [ %3962, %4175 ]
  %4180 = phi float [ %3826, %3822 ], [ %3963, %4175 ]
  %4181 = add i32 %3827, 1
  %4182 = icmp ugt i32 %4181, %3819
  br i1 %4182, label %4183, label %3822, !llvm.loop !114

; <label>:4183                                    ; preds = %4176
  br label %4184

; <label>:4184                                    ; preds = %4183, %3804
  %4185 = phi float [ 0.000000e+00, %3804 ], [ %4177, %4183 ]
  %4186 = phi float [ 0.000000e+00, %3804 ], [ %4178, %4183 ]
  %4187 = phi float [ 0.000000e+00, %3804 ], [ %4179, %4183 ]
  %4188 = call float @dx.op.dot3.f32(i32 55, float %4185, float %4186, float %4187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4189 = select i1 %237, float 0.000000e+00, float %4185
  %4190 = select i1 %237, float %4188, float %4186
  %4191 = select i1 %237, float 0.000000e+00, float %4187
  %4192 = fcmp fast olt float %3730, 0.000000e+00
  %4193 = call float @dx.op.unary.f32(i32 6, float %3730)  ; FAbs(value)
  %4194 = fmul fast float %4193, %3659
  %4195 = fmul fast float %4193, %3660
  %4196 = fmul fast float %4193, %3661
  %4197 = select i1 %4192, float %3659, float %4194
  %4198 = select i1 %4192, float %3660, float %4195
  %4199 = select i1 %4192, float %3661, float %4196
  %4200 = fsub fast float 1.000000e+00, %4193
  %4201 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  %4202 = fmul fast float %4201, %4189
  %4203 = fmul fast float %4201, %4190
  %4204 = fmul fast float %4201, %4191
  %4205 = fadd fast float %4197, %4202
  %4206 = fadd fast float %4198, %4203
  %4207 = fadd fast float %4199, %4204
  br label %4208

; <label>:4208                                    ; preds = %4184, %3713
  %4209 = phi float [ %3659, %3713 ], [ %4205, %4184 ]
  %4210 = phi float [ %3660, %3713 ], [ %4206, %4184 ]
  %4211 = phi float [ %3661, %3713 ], [ %4207, %4184 ]
  %4212 = call float @dx.op.dot3.f32(i32 55, float %2340, float %2341, float %2342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4213 = fcmp fast ogt float %4212, 0x3E7FF19E20000000
  %4214 = fdiv fast float 1.000000e+00, %4212
  %4215 = select i1 %4213, float %4214, float 0.000000e+00
  %4216 = fmul fast float %4215, %2340
  %4217 = fmul fast float %4215, %2341
  %4218 = fmul fast float %4215, %2342
  %4219 = fadd fast float %4216, -1.000000e+00
  %4220 = fadd fast float %4217, -1.000000e+00
  %4221 = fadd fast float %4218, -1.000000e+00
  %4222 = fmul fast float %4219, 5.000000e-01
  %4223 = fmul fast float %4220, 5.000000e-01
  %4224 = fmul fast float %4221, 5.000000e-01
  %4225 = fadd fast float %4222, 1.000000e+00
  %4226 = fadd fast float %4223, 1.000000e+00
  %4227 = fadd fast float %4224, 1.000000e+00
  %4228 = call float @dx.op.binary.f32(i32 35, float %2354, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4229 = fdiv fast float %1085, %4228
  %4230 = fcmp fast olt float %1758, 1.270000e+02
  %4231 = fcmp fast olt float %1759, 1.270000e+02
  %4232 = fcmp fast olt float %1760, 1.270000e+02
  %4233 = fmul fast float %1758, 0xBFF7154760000000
  %4234 = fmul fast float %4233, %4229
  %4235 = fmul fast float %1759, 0xBFF7154760000000
  %4236 = fmul fast float %4235, %4229
  %4237 = fmul fast float %1760, 0xBFF7154760000000
  %4238 = fmul fast float %4237, %4229
  %4239 = call float @dx.op.unary.f32(i32 21, float %4234)  ; Exp(value)
  %4240 = call float @dx.op.unary.f32(i32 21, float %4236)  ; Exp(value)
  %4241 = call float @dx.op.unary.f32(i32 21, float %4238)  ; Exp(value)
  %4242 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4243 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4244 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4245 = select i1 %4230, float %4242, float 0.000000e+00
  %4246 = select i1 %4231, float %4243, float 0.000000e+00
  %4247 = select i1 %4232, float %4244, float 0.000000e+00
  %4248 = fmul fast float %4245, %3719
  %4249 = fmul fast float %4246, %3719
  %4250 = fmul fast float %4247, %3719
  %4251 = fadd fast float %4248, -1.000000e+00
  %4252 = fadd fast float %4249, -1.000000e+00
  %4253 = fadd fast float %4250, -1.000000e+00
  %4254 = fmul fast float %4251, %1708
  %4255 = fmul fast float %4252, %1708
  %4256 = fmul fast float %4253, %1708
  %4257 = fmul fast float %4209, %3714
  %4258 = fmul fast float %4210, %3715
  %4259 = fmul fast float %4211, %3716
  %4260 = fsub fast float 1.000000e+00, %2354
  %4261 = bitcast float %4260 to i32
  %4262 = sitofp i32 %4261 to float
  %4263 = fmul fast float %4262, 5.000000e+00
  %4264 = fadd fast float %4263, 0xC1EFBF8940000000
  %4265 = fptosi float %4264 to i32
  %4266 = bitcast i32 %4265 to float
  %4267 = fmul fast float %4266, %1684
  %4268 = fmul fast float %3651, %4267
  %4269 = fmul fast float %4268, %3719
  %4270 = fmul fast float %4269, %4225
  %4271 = fmul fast float %3652, %4267
  %4272 = fmul fast float %4271, %3719
  %4273 = fmul fast float %4272, %4226
  %4274 = fmul fast float %3653, %4267
  %4275 = fmul fast float %4274, %3719
  %4276 = fmul fast float %4275, %4227
  %4277 = fadd fast float %4257, %1689
  %4278 = fadd fast float %4277, %4270
  %4279 = fmul fast float %4278, %1708
  %4280 = fadd fast float %4258, %1690
  %4281 = fadd fast float %4280, %4273
  %4282 = fmul fast float %4281, %1708
  %4283 = fadd fast float %4259, %1691
  %4284 = fadd fast float %4283, %4276
  %4285 = fmul fast float %4284, %1708
  %4286 = fmul fast float %2347, 0x4012D0A400000000
  %4287 = fadd fast float %4256, 1.000000e+00
  %4288 = fadd fast float %4255, 1.000000e+00
  %4289 = fadd fast float %4254, 1.000000e+00
  %4290 = fmul fast float %3719, %3653
  %4291 = fmul fast float %3719, %3652
  %4292 = fmul fast float %3719, %3651
  %4293 = fmul fast float %2369, %1708
  %4294 = fsub fast float 1.000000e+00, %4293
  %4295 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4296 = fsub fast float 1.000000e+00, %4295
  %4297 = fadd fast float %4286, 0x3FDB6377A0000000
  %4298 = fmul fast float %4296, %4297
  %4299 = call float @dx.op.dot3.f32(i32 55, float %1776, float %1777, float %1778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4300 = fadd fast float %4298, %4299
  %4301 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4302 = call float @dx.op.binary.f32(i32 35, float %4301, float 0x3F847AE140000000)  ; FMax(a,b)
  %4303 = fmul fast float %4302, %4302
  %4304 = fmul fast float %4303, %4303
  %4305 = fmul fast float %4304, 0xC00A935000000000
  %4306 = call float @dx.op.unary.f32(i32 21, float %4305)  ; Exp(value)
  %4307 = fsub fast float 1.000000e+00, %4306
  %4308 = fmul fast float %4289, %3655
  %4309 = fmul fast float %4308, %4307
  %4310 = fmul fast float %4288, %3656
  %4311 = fmul fast float %4310, %4307
  %4312 = fmul fast float %4287, %3657
  %4313 = fmul fast float %4312, %4307
  %4314 = fadd fast float %4309, %4292
  %4315 = fmul fast float %4314, %1708
  %4316 = fadd fast float %4311, %4291
  %4317 = fmul fast float %4316, %1708
  %4318 = fadd fast float %4313, %4290
  %4319 = fmul fast float %4318, %1708
  %4320 = bitcast i32 %2378 to float
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4323 = fcmp fast oeq float %4322, 0.000000e+00
  br i1 %4323, label %6001, label %4324

; <label>:4324                                    ; preds = %4208
  %4325 = extractvalue %dx.types.CBufRet.f32 %4321, 0
  %4326 = extractvalue %dx.types.CBufRet.f32 %4321, 1
  %4327 = extractvalue %dx.types.CBufRet.f32 %4321, 2
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 0
  %4330 = extractvalue %dx.types.CBufRet.f32 %4328, 1
  %4331 = extractvalue %dx.types.CBufRet.f32 %4328, 2
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4334 = extractvalue %dx.types.CBufRet.f32 %4332, 1
  %4335 = call float @dx.op.dot3.f32(i32 55, float %4329, float %4330, float %4331, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4336 = select i1 %237, float %4333, float %4329
  %4337 = select i1 %237, float %4335, float %4330
  %4338 = select i1 %237, float %4334, float %4331
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 2
  %4341 = fmul fast float %4340, %76
  %4342 = fmul fast float %4340, %77
  %4343 = fmul fast float %4340, %78
  %4344 = fadd fast float %4341, %146
  %4345 = fadd fast float %4342, %147
  %4346 = fadd fast float %4343, %148
  %4347 = fcmp fast olt float %4322, 0.000000e+00
  br i1 %4347, label %5443, label %4348

; <label>:4348                                    ; preds = %4324
  %4349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.CBufRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.CBufRet.f32 %4349, 2
  %4353 = extractvalue %dx.types.CBufRet.f32 %4349, 3
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.CBufRet.f32 %4354, 1
  %4357 = extractvalue %dx.types.CBufRet.f32 %4354, 2
  %4358 = extractvalue %dx.types.CBufRet.f32 %4354, 3
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.CBufRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.CBufRet.f32 %4359, 2
  %4363 = extractvalue %dx.types.CBufRet.f32 %4359, 3
  %4364 = fmul fast float %4350, %4344
  %4365 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %4351, float %4364)  ; FMad(a,b,c)
  %4366 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %4352, float %4365)  ; FMad(a,b,c)
  %4367 = fadd fast float %4366, %4353
  %4368 = fmul fast float %4355, %4344
  %4369 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %4356, float %4368)  ; FMad(a,b,c)
  %4370 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %4357, float %4369)  ; FMad(a,b,c)
  %4371 = fadd fast float %4370, %4358
  %4372 = fmul fast float %4360, %4344
  %4373 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %4361, float %4372)  ; FMad(a,b,c)
  %4374 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %4362, float %4373)  ; FMad(a,b,c)
  %4375 = fadd fast float %4374, %4363
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.CBufRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.CBufRet.f32 %4376, 3
  %4380 = fmul fast float %4379, %4367
  %4381 = fmul fast float %4379, %4371
  %4382 = fadd fast float %4380, %4377
  %4383 = fadd fast float %4381, %4378
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.CBufRet.f32 %4384, 1
  %4387 = extractvalue %dx.types.CBufRet.f32 %4384, 3
  %4388 = fmul fast float %4387, %4367
  %4389 = fmul fast float %4387, %4371
  %4390 = fadd fast float %4388, %4385
  %4391 = fadd fast float %4389, %4386
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 1
  %4394 = fsub fast float %4393, %4375
  %4395 = extractvalue %dx.types.CBufRet.f32 %4392, 2
  %4396 = fmul fast float %4394, %4395
  %4397 = fsub fast float 1.000000e+00, %4396
  %4398 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4384, 2
  %4400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4401 = extractvalue %dx.types.CBufRet.f32 %4400, 2
  %4402 = fadd fast float %4401, %4399
  %4403 = fcmp fast ogt float %4402, 0.000000e+00
  br i1 %4403, label %4404, label %4428

; <label>:4404                                    ; preds = %4348
  %4405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4406 = extractvalue %dx.types.CBufRet.f32 %4405, 0
  %4407 = extractvalue %dx.types.CBufRet.f32 %4405, 1
  %4408 = fsub fast float %4390, %4406
  %4409 = fsub fast float %4391, %4407
  %4410 = fcmp fast olt float %4408, 0.000000e+00
  %4411 = fcmp fast olt float %4409, 0.000000e+00
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 0
  %4414 = extractvalue %dx.types.CBufRet.f32 %4412, 1
  %4415 = extractvalue %dx.types.CBufRet.f32 %4412, 2
  %4416 = extractvalue %dx.types.CBufRet.f32 %4412, 3
  %4417 = select i1 %4410, float %4413, float %4415
  %4418 = select i1 %4411, float %4414, float %4416
  %4419 = fmul fast float %4417, %4408
  %4420 = fmul fast float %4418, %4409
  %4421 = call float @dx.op.unary.f32(i32 6, float %4419)  ; FAbs(value)
  %4422 = call float @dx.op.unary.f32(i32 6, float %4420)  ; FAbs(value)
  %4423 = extractvalue %dx.types.CBufRet.f32 %4339, 0
  %4424 = call float @dx.op.binary.f32(i32 35, float %4421, float %4422)  ; FMax(a,b)
  %4425 = fsub fast float %4423, %4424
  %4426 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4427 = fmul fast float %4426, %4398
  br label %4428

; <label>:4428                                    ; preds = %4404, %4348
  %4429 = phi float [ %4427, %4404 ], [ 0.000000e+00, %4348 ]
  %4430 = extractvalue %dx.types.CBufRet.f32 %4376, 2
  %4431 = extractvalue %dx.types.CBufRet.f32 %4400, 1
  %4432 = fadd fast float %4431, %4430
  %4433 = fcmp fast ogt float %4432, 0.000000e+00
  %4434 = extractvalue %dx.types.CBufRet.f32 %4339, 0
  br i1 %4433, label %4435, label %4458

; <label>:4435                                    ; preds = %4428
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 0
  %4438 = extractvalue %dx.types.CBufRet.f32 %4436, 1
  %4439 = fsub fast float %4382, %4437
  %4440 = fsub fast float %4383, %4438
  %4441 = fcmp fast olt float %4439, 0.000000e+00
  %4442 = fcmp fast olt float %4440, 0.000000e+00
  %4443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4443, 0
  %4445 = extractvalue %dx.types.CBufRet.f32 %4443, 1
  %4446 = extractvalue %dx.types.CBufRet.f32 %4443, 2
  %4447 = extractvalue %dx.types.CBufRet.f32 %4443, 3
  %4448 = select i1 %4441, float %4444, float %4446
  %4449 = select i1 %4442, float %4445, float %4447
  %4450 = fmul fast float %4448, %4439
  %4451 = fmul fast float %4449, %4440
  %4452 = call float @dx.op.unary.f32(i32 6, float %4450)  ; FAbs(value)
  %4453 = call float @dx.op.unary.f32(i32 6, float %4451)  ; FAbs(value)
  %4454 = call float @dx.op.binary.f32(i32 35, float %4452, float %4453)  ; FMax(a,b)
  %4455 = fsub fast float %4434, %4454
  %4456 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4457 = fmul fast float %4456, %4398
  br label %4458

; <label>:4458                                    ; preds = %4435, %4428
  %4459 = phi float [ %4457, %4435 ], [ 0.000000e+00, %4428 ]
  %4460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.f32 %4460, 1
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 0
  %4465 = extractvalue %dx.types.CBufRet.f32 %4463, 1
  %4466 = fsub fast float %4367, %4464
  %4467 = fsub fast float %4371, %4465
  %4468 = fcmp fast olt float %4466, 0.000000e+00
  %4469 = fcmp fast olt float %4467, 0.000000e+00
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 0
  %4472 = extractvalue %dx.types.CBufRet.f32 %4470, 1
  %4473 = extractvalue %dx.types.CBufRet.f32 %4470, 2
  %4474 = extractvalue %dx.types.CBufRet.f32 %4470, 3
  %4475 = select i1 %4468, float %4471, float %4473
  %4476 = select i1 %4469, float %4472, float %4474
  %4477 = fmul fast float %4475, %4466
  %4478 = fmul fast float %4476, %4467
  %4479 = call float @dx.op.unary.f32(i32 6, float %4477)  ; FAbs(value)
  %4480 = call float @dx.op.unary.f32(i32 6, float %4478)  ; FAbs(value)
  %4481 = call float @dx.op.binary.f32(i32 35, float %4479, float %4480)  ; FMax(a,b)
  %4482 = fsub fast float %4434, %4481
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = call float @dx.op.binary.f32(i32 36, float %4483, float %4462)  ; FMin(a,b)
  %4485 = fmul fast float %4484, %4398
  %4486 = fsub fast float %4459, %4485
  %4487 = fsub fast float %4429, %4459
  %4488 = fsub fast float %4487, %4485
  %4489 = call float @dx.op.binary.f32(i32 35, float %4459, float %4429)  ; FMax(a,b)
  %4490 = call float @dx.op.binary.f32(i32 35, float %4485, float %4489)  ; FMax(a,b)
  %4491 = fcmp fast olt float %4490, 1.000000e+00
  br i1 %4491, label %4492, label %4890, !dx.controlflow.hints !116

; <label>:4492                                    ; preds = %4458
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 0
  %4495 = fcmp fast une float %4494, 0.000000e+00
  br i1 %4495, label %4496, label %4890, !dx.controlflow.hints !117

; <label>:4496                                    ; preds = %4492
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.CBufRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4501 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.CBufRet.f32 %4502, 1
  %4505 = extractvalue %dx.types.CBufRet.f32 %4502, 2
  %4506 = extractvalue %dx.types.CBufRet.f32 %4502, 3
  %4507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.CBufRet.f32 %4507, 1
  %4510 = extractvalue %dx.types.CBufRet.f32 %4507, 2
  %4511 = extractvalue %dx.types.CBufRet.f32 %4507, 3
  %4512 = fmul fast float %4498, %4344
  %4513 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %4499, float %4512)  ; FMad(a,b,c)
  %4514 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %4500, float %4513)  ; FMad(a,b,c)
  %4515 = fadd fast float %4514, %4501
  %4516 = fmul fast float %4503, %4344
  %4517 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %4504, float %4516)  ; FMad(a,b,c)
  %4518 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %4505, float %4517)  ; FMad(a,b,c)
  %4519 = fadd fast float %4518, %4506
  %4520 = fmul fast float %4508, %4344
  %4521 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %4509, float %4520)  ; FMad(a,b,c)
  %4522 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %4510, float %4521)  ; FMad(a,b,c)
  %4523 = fadd fast float %4522, %4511
  %4524 = fcmp fast oge float %4515, 1.000000e+00
  %4525 = fcmp fast oge float %4519, 1.000000e+00
  %4526 = or i1 %4524, %4525
  %4527 = fcmp fast olt float %4515, 0.000000e+00
  %4528 = fcmp fast olt float %4519, 0.000000e+00
  %4529 = or i1 %4527, %4528
  %4530 = or i1 %4526, %4529
  br i1 %4530, label %4890, label %4531, !dx.controlflow.hints !118

; <label>:4531                                    ; preds = %4496
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4534 = extractvalue %dx.types.CBufRet.f32 %4532, 1
  %4535 = extractvalue %dx.types.CBufRet.f32 %4532, 2
  %4536 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.i32 %4536, 2
  %4538 = uitofp i32 %4537 to float
  %4539 = extractvalue %dx.types.CBufRet.i32 %4536, 3
  %4540 = uitofp i32 %4539 to float
  %4541 = extractvalue %dx.types.CBufRet.f32 %4532, 3
  %4542 = fmul fast float %4541, 2.000000e+00
  %4543 = fsub fast float %4515, %4533
  %4544 = fsub fast float %4519, %4534
  %4545 = fmul fast float %4542, %4543
  %4546 = fmul fast float %4542, %4544
  %4547 = fdiv fast float 1.000000e+00, %4327
  %4548 = fmul fast float %4546, %4547
  %4549 = call float @dx.op.unary.f32(i32 6, float %4548)  ; FAbs(value)
  %4550 = fmul fast float %4535, %4346
  %4551 = fmul fast float %4550, %4542
  %4552 = call float @dx.op.unary.f32(i32 6, float %4551)  ; FAbs(value)
  %4553 = call float @dx.op.unary.f32(i32 6, float %4545)  ; FAbs(value)
  %4554 = call float @dx.op.binary.f32(i32 35, float %4552, float %4549)  ; FMax(a,b)
  %4555 = call float @dx.op.binary.f32(i32 35, float %4553, float %4554)  ; FMax(a,b)
  %4556 = fmul fast float %4555, 2.000000e+00
  %4557 = call float @dx.op.unary.f32(i32 23, float %4556)  ; Log(value)
  %4558 = call float @dx.op.binary.f32(i32 35, float %4557, float %4538)  ; FMax(a,b)
  %4559 = call float @dx.op.unary.f32(i32 22, float %4558)  ; Frc(value)
  %4560 = fadd fast float %4559, 0xBFEA666660000000
  %4561 = fmul fast float %4560, 8.000000e+00
  %4562 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4563 = call float @dx.op.unary.f32(i32 27, float %4558)  ; Round_ni(value)
  %4564 = fadd fast float %4563, %4562
  %4565 = call float @dx.op.binary.f32(i32 36, float %4564, float %4540)  ; FMin(a,b)
  %4566 = call float @dx.op.unary.f32(i32 27, float %4565)  ; Round_ni(value)
  %4567 = fsub fast float -0.000000e+00, %4566
  %4568 = call float @dx.op.unary.f32(i32 21, float %4567)  ; Exp(value)
  %4569 = fmul fast float %4568, %4542
  %4570 = fmul fast float %4569, %4515
  %4571 = fmul fast float %4569, %4519
  %4572 = fmul fast float %4570, 2.500000e-01
  %4573 = fmul fast float %4571, 2.500000e-01
  %4574 = fadd fast float %4572, 5.000000e-01
  %4575 = fadd fast float %4573, 5.000000e-01
  %4576 = fsub fast float %4540, %4538
  %4577 = fptoui float %4576 to i32
  %4578 = add i32 %4577, 320
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4578)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.CBufRet.f32 %4579, 1
  %4582 = fcmp fast une float %4565, %4540
  %4583 = fsub fast float %4515, %4580
  %4584 = fsub fast float %4519, %4581
  %4585 = call float @dx.op.unary.f32(i32 6, float %4583)  ; FAbs(value)
  %4586 = call float @dx.op.unary.f32(i32 6, float %4584)  ; FAbs(value)
  %4587 = fmul fast float %4585, %4569
  %4588 = fmul fast float %4586, %4569
  %4589 = fcmp fast olt float %4587, 1.000000e+00
  %4590 = fcmp fast olt float %4588, 1.000000e+00
  %4591 = and i1 %4589, %4590
  %4592 = or i1 %4582, %4591
  br i1 %4592, label %4593, label %4890, !dx.controlflow.hints !119

; <label>:4593                                    ; preds = %4531
  %4594 = fmul fast float %4571, 5.000000e-01
  %4595 = fmul fast float %4570, 5.000000e-01
  %4596 = fadd fast float %4594, 5.000000e-01
  %4597 = fadd fast float %4595, 5.000000e-01
  %4598 = sitofp i32 %4537 to float
  %4599 = fsub fast float %4565, %4598
  %4600 = call float @dx.op.unary.f32(i32 27, float %4599)  ; Round_ni(value)
  %4601 = call float @dx.op.unary.f32(i32 22, float %4565)  ; Frc(value)
  %4602 = call float @dx.op.unary.f32(i32 22, float %4597)  ; Frc(value)
  %4603 = call float @dx.op.unary.f32(i32 22, float %4596)  ; Frc(value)
  %4604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4602, float %4603, float %4600, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.ResRet.f32 %4604, 1
  %4607 = extractvalue %dx.types.ResRet.f32 %4604, 2
  %4608 = extractvalue %dx.types.ResRet.f32 %4604, 3
  %4609 = fcmp fast ogt float %4601, 0.000000e+00
  br i1 %4609, label %4610, label %4631, !dx.controlflow.hints !120

; <label>:4610                                    ; preds = %4593
  %4611 = fadd fast float %4600, 1.000000e+00
  %4612 = call float @dx.op.unary.f32(i32 22, float %4574)  ; Frc(value)
  %4613 = call float @dx.op.unary.f32(i32 22, float %4575)  ; Frc(value)
  %4614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4612, float %4613, float %4611, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.ResRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.ResRet.f32 %4614, 2
  %4618 = extractvalue %dx.types.ResRet.f32 %4614, 3
  %4619 = fsub fast float %4615, %4605
  %4620 = fsub fast float %4616, %4606
  %4621 = fsub fast float %4617, %4607
  %4622 = fsub fast float %4618, %4608
  %4623 = fmul fast float %4619, %4601
  %4624 = fmul fast float %4620, %4601
  %4625 = fmul fast float %4621, %4601
  %4626 = fmul fast float %4622, %4601
  %4627 = fadd fast float %4623, %4605
  %4628 = fadd fast float %4624, %4606
  %4629 = fadd fast float %4625, %4607
  %4630 = fadd fast float %4626, %4608
  br label %4631

; <label>:4631                                    ; preds = %4610, %4593
  %4632 = phi float [ %4627, %4610 ], [ %4605, %4593 ]
  %4633 = phi float [ %4628, %4610 ], [ %4606, %4593 ]
  %4634 = phi float [ %4629, %4610 ], [ %4607, %4593 ]
  %4635 = phi float [ %4630, %4610 ], [ %4608, %4593 ]
  %4636 = fadd fast float %4632, -5.000000e-01
  %4637 = fadd fast float %4634, -5.000000e-01
  %4638 = fmul fast float %4636, 0xBFD5555560000000
  %4639 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4637, float %4638)  ; FMad(a,b,c)
  %4640 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4633, float 0.000000e+00)  ; FMad(a,b,c)
  %4641 = fadd fast float %4640, %4635
  %4642 = fmul fast float %4636, -7.500000e-01
  %4643 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4637, float %4642)  ; FMad(a,b,c)
  %4644 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4633, float 0.000000e+00)  ; FMad(a,b,c)
  %4645 = fadd fast float %4644, %4635
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4651 = extractvalue %dx.types.CBufRet.f32 %4648, 2
  %4652 = extractvalue %dx.types.CBufRet.f32 %4648, 3
  %4653 = fsub fast float %4649, %4639
  %4654 = fsub fast float %4650, %4641
  %4655 = fsub fast float %4651, %4643
  %4656 = fsub fast float %4652, %4645
  %4657 = fmul fast float %4653, %4647
  %4658 = fmul fast float %4654, %4647
  %4659 = fmul fast float %4655, %4647
  %4660 = fmul fast float %4656, %4647
  %4661 = fadd fast float %4657, %4639
  %4662 = fadd fast float %4658, %4641
  %4663 = fadd fast float %4659, %4643
  %4664 = fadd fast float %4660, %4645
  %4665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.i32 %4665, 0
  %4667 = and i32 %4666, 536870911
  %4668 = uitofp i32 %4667 to float
  %4669 = fmul fast float %4668, %4515
  %4670 = fmul fast float %4668, %4519
  %4671 = fptoui float %4669 to i32
  %4672 = fptoui float %4670 to i32
  %4673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4674 = extractvalue %dx.types.ResRet.i32 %4673, 0
  %4675 = and i32 %4674, 31
  %4676 = lshr i32 %4671, %4675
  %4677 = lshr i32 %4672, %4675
  %4678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4679 = extractvalue %dx.types.ResRet.i32 %4678, 0
  %4680 = and i32 %4679, 31
  %4681 = shl i32 1, %4680
  %4682 = call i32 @dx.op.binary.i32(i32 40, i32 %4681, i32 4)  ; UMin(a,b)
  %4683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4684 = extractvalue %dx.types.ResRet.i32 %4683, 0
  %4685 = extractvalue %dx.types.ResRet.i32 %4683, 1
  %4686 = icmp eq i32 %4682, 0
  br i1 %4686, label %4728, label %4687

; <label>:4687                                    ; preds = %4631
  br label %4688

; <label>:4688                                    ; preds = %4716, %4687
  %4689 = phi i32 [ %4719, %4716 ], [ 0, %4687 ]
  %4690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4691 = extractvalue %dx.types.ResRet.i32 %4690, 0
  %4692 = lshr i32 %4691, 16
  %4693 = and i32 %4692, 31
  %4694 = shl i32 %4677, %4693
  %4695 = add i32 %4694, %4676
  %4696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4697 = extractvalue %dx.types.ResRet.i32 %4696, 0
  %4698 = and i32 %4697, 31
  %4699 = shl i32 %4695, %4698
  %4700 = add i32 %4699, %4689
  %4701 = shl i32 %4700, 2
  %4702 = add i32 %4701, 32
  %4703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4702, i32 undef)  ; BufferLoad(srv,index,wot)
  %4704 = extractvalue %dx.types.ResRet.i32 %4703, 0
  %4705 = icmp slt i32 %4704, 0
  %4706 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4689
  %4707 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4689
  %4708 = bitcast float* %4706 to i32*
  %4709 = bitcast float* %4707 to i32*
  br i1 %4705, label %4710, label %4716

; <label>:4710                                    ; preds = %4688
  %4711 = and i32 %4704, 1073741823
  %4712 = add nuw nsw i32 %4711, 20
  %4713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4712, i32 undef)  ; BufferLoad(srv,index,wot)
  %4714 = extractvalue %dx.types.ResRet.i32 %4713, 0
  %4715 = extractvalue %dx.types.ResRet.i32 %4713, 1
  br label %4716

; <label>:4716                                    ; preds = %4710, %4688
  %4717 = phi i32 [ %4714, %4710 ], [ %4684, %4688 ]
  %4718 = phi i32 [ %4715, %4710 ], [ %4685, %4688 ]
  store i32 %4717, i32* %4708, align 4
  store i32 %4718, i32* %4709, align 4
  %4719 = add nuw i32 %4689, 1
  %4720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.i32 %4720, 2
  %4722 = icmp eq i32 %4721, 0
  %4723 = icmp ugt i32 %4704, -1073741825
  %4724 = and i1 %4723, %4722
  %4725 = icmp ult i32 %4719, %4682
  %4726 = and i1 %4724, %4725
  br i1 %4726, label %4688, label %4727

; <label>:4727                                    ; preds = %4716
  br label %4728

; <label>:4728                                    ; preds = %4727, %4631
  %4729 = phi i32 [ 0, %4631 ], [ %4719, %4727 ]
  %4730 = extractvalue %dx.types.CBufRet.f32 %4493, 2
  %4731 = fptoui float %4730 to i32
  %4732 = icmp eq i32 %4731, 0
  br i1 %4732, label %4784, label %4733

; <label>:4733                                    ; preds = %4728
  br label %4734

; <label>:4734                                    ; preds = %4779, %4733
  %4735 = phi i32 [ %4780, %4779 ], [ %4729, %4733 ]
  %4736 = phi i32 [ %4781, %4779 ], [ 0, %4733 ]
  %4737 = lshr i32 %4736, 2
  %4738 = and i32 %4736, 3
  %4739 = add nuw nsw i32 %4737, 83
  %4740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4739)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.i32 %4740, 0
  %4742 = extractvalue %dx.types.CBufRet.i32 %4740, 1
  %4743 = extractvalue %dx.types.CBufRet.i32 %4740, 2
  %4744 = extractvalue %dx.types.CBufRet.i32 %4740, 3
  %4745 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4741, i32* %4745, align 4
  %4746 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4742, i32* %4746, align 4
  %4747 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4743, i32* %4747, align 4
  %4748 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4744, i32* %4748, align 4
  %4749 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4738
  %4750 = load i32, i32* %4749, align 4, !tbaa !121, !noalias !125
  %4751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4752 = extractvalue %dx.types.ResRet.i32 %4751, 0
  %4753 = lshr i32 %4752, 16
  %4754 = and i32 %4753, 31
  %4755 = shl i32 %4677, %4754
  %4756 = add i32 %4755, %4676
  %4757 = shl i32 %4756, 2
  %4758 = add i32 %4757, %4750
  %4759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4758, i32 undef)  ; BufferLoad(srv,index,wot)
  %4760 = extractvalue %dx.types.ResRet.i32 %4759, 0
  %4761 = icmp eq i32 %4760, 0
  br i1 %4761, label %4779, label %4762

; <label>:4762                                    ; preds = %4734
  %4763 = icmp slt i32 %4760, 0
  %4764 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4735
  %4765 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4735
  %4766 = bitcast float* %4764 to i32*
  %4767 = bitcast float* %4765 to i32*
  br i1 %4763, label %4768, label %4775

; <label>:4768                                    ; preds = %4762
  %4769 = and i32 %4760, 1073741823
  %4770 = add i32 %4750, 20
  %4771 = add i32 %4770, %4769
  %4772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4771, i32 undef)  ; BufferLoad(srv,index,wot)
  %4773 = extractvalue %dx.types.ResRet.i32 %4772, 0
  %4774 = extractvalue %dx.types.ResRet.i32 %4772, 1
  br label %4775

; <label>:4775                                    ; preds = %4768, %4762
  %4776 = phi i32 [ %4773, %4768 ], [ %4684, %4762 ]
  %4777 = phi i32 [ %4774, %4768 ], [ %4685, %4762 ]
  store i32 %4776, i32* %4766, align 4
  store i32 %4777, i32* %4767, align 4
  %4778 = add i32 %4735, 1
  br label %4779

; <label>:4779                                    ; preds = %4775, %4734
  %4780 = phi i32 [ %4735, %4734 ], [ %4778, %4775 ]
  %4781 = add nuw i32 %4736, 1
  %4782 = icmp eq i32 %4781, %4731
  br i1 %4782, label %4783, label %4734

; <label>:4783                                    ; preds = %4779
  br label %4784

; <label>:4784                                    ; preds = %4783, %4728
  %4785 = phi i32 [ %4729, %4728 ], [ %4780, %4783 ]
  %4786 = icmp eq i32 %4785, 1
  %4787 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %4788 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %4786, label %4789, label %4792

; <label>:4789                                    ; preds = %4784
  %4790 = load float, float* %4787, align 4
  %4791 = load float, float* %4788, align 4
  br label %4819

; <label>:4792                                    ; preds = %4784
  %4793 = load float, float* %4787, align 4
  %4794 = load float, float* %4788, align 4
  %4795 = fdiv fast float 1.000000e+00, %4794
  %4796 = fsub fast float %4793, %4795
  %4797 = icmp ugt i32 %4785, 1
  br i1 %4797, label %4798, label %4814

; <label>:4798                                    ; preds = %4792
  br label %4799

; <label>:4799                                    ; preds = %4799, %4798
  %4800 = phi float [ %4809, %4799 ], [ %4796, %4798 ]
  %4801 = phi float [ %4810, %4799 ], [ %4793, %4798 ]
  %4802 = phi i32 [ %4811, %4799 ], [ 1, %4798 ]
  %4803 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4802
  %4804 = load float, float* %4803, align 4
  %4805 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4802
  %4806 = load float, float* %4805, align 4
  %4807 = fdiv fast float 1.000000e+00, %4806
  %4808 = fsub fast float %4804, %4807
  %4809 = call float @dx.op.binary.f32(i32 36, float %4800, float %4808)  ; FMin(a,b)
  %4810 = call float @dx.op.binary.f32(i32 35, float %4801, float %4804)  ; FMax(a,b)
  %4811 = add nuw i32 %4802, 1
  %4812 = icmp eq i32 %4811, %4785
  br i1 %4812, label %4813, label %4799

; <label>:4813                                    ; preds = %4799
  br label %4814

; <label>:4814                                    ; preds = %4813, %4792
  %4815 = phi float [ %4796, %4792 ], [ %4809, %4813 ]
  %4816 = phi float [ %4793, %4792 ], [ %4810, %4813 ]
  %4817 = fsub fast float %4816, %4815
  %4818 = fdiv fast float 1.000000e+00, %4817
  br label %4819

; <label>:4819                                    ; preds = %4814, %4789
  %4820 = phi float [ %4790, %4789 ], [ %4816, %4814 ]
  %4821 = phi float [ %4791, %4789 ], [ %4818, %4814 ]
  %4822 = fadd fast float %4523, %4820
  %4823 = fmul fast float %4822, %4821
  %4824 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4825 = fmul fast float %4824, 2.000000e+00
  %4826 = fsub fast float 1.000000e+00, %4825
  %4827 = fmul fast float %4661, %4661
  %4828 = fsub fast float %4662, %4827
  %4829 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4828)  ; FMax(a,b)
  %4830 = fdiv fast float 1.000000e+00, %4829
  %4831 = fmul fast float %4662, %4661
  %4832 = fsub fast float %4663, %4831
  %4833 = fsub fast float %4826, %4661
  %4834 = fmul fast float %4826, %4826
  %4835 = fsub fast float %4834, %4662
  %4836 = fmul fast float %4830, %4832
  %4837 = fmul fast float %4836, %4833
  %4838 = fsub fast float %4835, %4837
  %4839 = fmul fast float %4662, %4662
  %4840 = fsub fast float %4664, %4839
  %4841 = fmul fast float %4832, %4832
  %4842 = fmul fast float %4841, %4830
  %4843 = fsub fast float %4840, %4842
  %4844 = fdiv fast float %4838, %4843
  %4845 = fmul fast float %4844, %4832
  %4846 = fsub fast float %4833, %4845
  %4847 = fmul fast float %4846, %4830
  %4848 = fmul fast float %4847, %4661
  %4849 = fsub fast float 1.000000e+00, %4848
  %4850 = fmul fast float %4844, %4662
  %4851 = fsub fast float %4849, %4850
  %4852 = fmul fast float %4847, %4847
  %4853 = fmul fast float %4844, 4.000000e+00
  %4854 = fmul fast float %4853, %4851
  %4855 = fsub fast float %4852, %4854
  %4856 = call float @dx.op.unary.f32(i32 24, float %4855)  ; Sqrt(value)
  %4857 = fcmp fast oge float %4847, 0.000000e+00
  %4858 = fsub fast float -0.000000e+00, %4856
  %4859 = select i1 %4857, float %4858, float %4856
  %4860 = fsub fast float %4859, %4847
  %4861 = fdiv fast float %4860, %4844
  %4862 = fdiv fast float %4851, %4860
  %4863 = fmul fast float %4861, 5.000000e-01
  %4864 = fmul fast float %4862, 2.000000e+00
  %4865 = select i1 %4857, float %4863, float %4864
  %4866 = select i1 %4857, float %4864, float %4863
  %4867 = call float @dx.op.binary.f32(i32 35, float %4865, float %4866)  ; FMax(a,b)
  %4868 = call float @dx.op.binary.f32(i32 36, float %4865, float %4866)  ; FMin(a,b)
  %4869 = fcmp fast ogt float %4826, %4867
  %4870 = fsub fast float %4826, %4868
  %4871 = fsub fast float %4826, %4867
  %4872 = fsub fast float %4867, %4868
  %4873 = select i1 %4869, float %4871, float %4872
  %4874 = fmul float %4870, %4873
  %4875 = select i1 %4869, float %4868, float %4826
  %4876 = fcmp fast ogt float %4826, %4868
  %4877 = fmul fast float %4875, %4867
  %4878 = fadd fast float %4875, %4867
  %4879 = fmul fast float %4878, %4661
  %4880 = fadd fast float %4877, %4662
  %4881 = fsub fast float %4880, %4879
  %4882 = fdiv fast float %4881, %4874
  %4883 = select i1 %4876, float %4882, float 0.000000e+00
  %4884 = fsub fast float 1.000000e+00, %4883
  %4885 = select i1 %4869, float %4884, float %4883
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4646, 3
  %4888 = fmul fast float %4887, %4886
  %4889 = fsub fast float 1.000000e+00, %4888
  br label %4890

; <label>:4890                                    ; preds = %4819, %4531, %4496, %4492, %4458
  %4891 = phi float [ 1.000000e+00, %4458 ], [ %4889, %4819 ], [ 1.000000e+00, %4496 ], [ 1.000000e+00, %4531 ], [ 1.000000e+00, %4492 ]
  %4892 = fcmp fast ogt float %4488, 0.000000e+00
  br i1 %4892, label %4893, label %5055, !dx.controlflow.hints !134

; <label>:4893                                    ; preds = %4890
  %4894 = fadd fast float %4401, %4375
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4895, 2
  %4897 = extractvalue %dx.types.CBufRet.f32 %4895, 3
  %4898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4899 = extractvalue %dx.types.CBufRet.f32 %4898, 2
  %4900 = call float @dx.op.binary.f32(i32 35, float %4894, float 0.000000e+00)  ; FMax(a,b)
  %4901 = fadd fast float %4900, 0x3F10000000000000
  %4902 = fcmp fast oeq float %4899, 0.000000e+00
  br i1 %4902, label %4903, label %4970

; <label>:4903                                    ; preds = %4893
  %4904 = extractvalue %dx.types.CBufRet.f32 %4895, 1
  %4905 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %4906 = fmul fast float %4905, %4390
  %4907 = fmul fast float %4904, %4391
  %4908 = fadd fast float %4906, 5.000000e-01
  %4909 = call float @dx.op.unary.f32(i32 27, float %4908)  ; Round_ni(value)
  %4910 = fadd fast float %4907, 5.000000e-01
  %4911 = call float @dx.op.unary.f32(i32 27, float %4910)  ; Round_ni(value)
  %4912 = fsub fast float %4908, %4909
  %4913 = fsub fast float %4910, %4911
  %4914 = fadd fast float %4909, -5.000000e-01
  %4915 = fadd fast float %4911, -5.000000e-01
  %4916 = fmul fast float %4912, 2.000000e+00
  %4917 = fsub fast float 3.000000e+00, %4916
  %4918 = fadd fast float %4916, 1.000000e+00
  %4919 = fsub fast float 2.000000e+00, %4912
  %4920 = bitcast float %4917 to i32
  %4921 = sub nsw i32 2129859010, %4920
  %4922 = bitcast i32 %4921 to float
  %4923 = fmul fast float %4922, %4919
  %4924 = fadd fast float %4923, -1.000000e+00
  %4925 = bitcast float %4918 to i32
  %4926 = sub nsw i32 2129859010, %4925
  %4927 = bitcast i32 %4926 to float
  %4928 = fmul fast float %4927, %4912
  %4929 = fadd fast float %4928, 1.000000e+00
  %4930 = fmul fast float %4913, 2.000000e+00
  %4931 = fsub fast float 3.000000e+00, %4930
  %4932 = fadd fast float %4930, 1.000000e+00
  %4933 = fsub fast float 2.000000e+00, %4913
  %4934 = bitcast float %4931 to i32
  %4935 = sub nsw i32 2129859010, %4934
  %4936 = bitcast i32 %4935 to float
  %4937 = fmul fast float %4936, %4933
  %4938 = fadd fast float %4937, -1.000000e+00
  %4939 = bitcast float %4932 to i32
  %4940 = sub nsw i32 2129859010, %4939
  %4941 = bitcast i32 %4940 to float
  %4942 = fmul fast float %4941, %4913
  %4943 = fadd fast float %4942, 1.000000e+00
  %4944 = fadd fast float %4924, %4914
  %4945 = fmul fast float %4944, %4896
  %4946 = fadd fast float %4938, %4915
  %4947 = fmul fast float %4946, %4897
  %4948 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4945, float %4947, float undef, float undef, i32 0, i32 0, i32 undef, float %4901)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4949 = extractvalue %dx.types.ResRet.f32 %4948, 0
  %4950 = fmul fast float %4949, %4917
  %4951 = fadd fast float %4929, %4914
  %4952 = fmul fast float %4951, %4896
  %4953 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4952, float %4947, float undef, float undef, i32 0, i32 0, i32 undef, float %4901)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = fmul fast float %4954, %4918
  %4956 = fadd fast float %4943, %4915
  %4957 = fmul fast float %4956, %4897
  %4958 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4945, float %4957, float undef, float undef, i32 0, i32 0, i32 undef, float %4901)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4959 = extractvalue %dx.types.ResRet.f32 %4958, 0
  %4960 = fmul fast float %4959, %4917
  %4961 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4952, float %4957, float undef, float undef, i32 0, i32 0, i32 undef, float %4901)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4962 = extractvalue %dx.types.ResRet.f32 %4961, 0
  %4963 = fmul fast float %4962, %4918
  %4964 = fadd fast float %4963, %4960
  %4965 = fmul fast float %4964, %4932
  %4966 = fadd fast float %4955, %4950
  %4967 = fmul fast float %4966, %4931
  %4968 = fadd fast float %4967, %4965
  %4969 = fmul fast float %4968, 6.250000e-02
  br label %5055

; <label>:4970                                    ; preds = %4893
  %4971 = fmul fast float %248, 0x401921FB60000000
  %4972 = call float @dx.op.unary.f32(i32 13, float %4971)  ; Sin(value)
  %4973 = call float @dx.op.unary.f32(i32 12, float %4971)  ; Cos(value)
  %4974 = fsub fast float -0.000000e+00, %4972
  br label %4975

; <label>:4975                                    ; preds = %5024, %4970
  %4976 = phi float [ 0.000000e+00, %4970 ], [ %5019, %5024 ]
  %4977 = phi float [ 0.000000e+00, %4970 ], [ %5021, %5024 ]
  %4978 = phi i32 [ 0, %4970 ], [ %5025, %5024 ]
  %4979 = mul i32 %4978, 2
  %4980 = add i32 0, %4979
  %4981 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4980
  %4982 = load float, float* %4981, align 4
  %4983 = mul i32 %4978, 2
  %4984 = add i32 1, %4983
  %4985 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4984
  %4986 = load float, float* %4985, align 4
  %4987 = fmul fast float %4982, %4973
  %4988 = call float @dx.op.tertiary.f32(i32 46, float %4986, float %4974, float %4987)  ; FMad(a,b,c)
  %4989 = fmul fast float %4982, %4972
  %4990 = call float @dx.op.tertiary.f32(i32 46, float %4986, float %4973, float %4989)  ; FMad(a,b,c)
  %4991 = fmul fast float %4988, %4899
  %4992 = fmul fast float %4990, %4899
  %4993 = fadd fast float %4991, %4390
  %4994 = fadd fast float %4992, %4391
  %4995 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4993, float %4994, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.ResRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.ResRet.f32 %4995, 2
  %4999 = extractvalue %dx.types.ResRet.f32 %4995, 3
  %5000 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %4996, float* %5000, align 4
  %5001 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %4997, float* %5001, align 4
  %5002 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %4998, float* %5002, align 4
  %5003 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %4999, float* %5003, align 4
  %5004 = fsub fast float %4996, %4901
  %5005 = fcmp fast olt float %5004, 0.000000e+00
  %5006 = select i1 %5005, float 0.000000e+00, float 1.000000e+00
  %5007 = fadd fast float %5006, %4976
  %5008 = fmul fast float %5006, %5004
  %5009 = fadd fast float %5008, %4977
  br label %5010

; <label>:5010                                    ; preds = %5010, %4975
  %5011 = phi i32 [ 1, %4975 ], [ %5022, %5010 ]
  %5012 = phi float [ %5009, %4975 ], [ %5021, %5010 ]
  %5013 = phi float [ %5007, %4975 ], [ %5019, %5010 ]
  %5014 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %5011
  %5015 = load float, float* %5014, align 4, !tbaa !135, !noalias !125
  %5016 = fsub fast float %5015, %4901
  %5017 = fcmp fast olt float %5016, 0.000000e+00
  %5018 = select i1 %5017, float 0.000000e+00, float 1.000000e+00
  %5019 = fadd fast float %5018, %5013
  %5020 = fmul fast float %5018, %5016
  %5021 = fadd fast float %5020, %5012
  %5022 = add nuw nsw i32 %5011, 1
  %5023 = icmp eq i32 %5022, 4
  br i1 %5023, label %5024, label %5010, !llvm.loop !137

; <label>:5024                                    ; preds = %5010
  %5025 = add nuw nsw i32 %4978, 1
  %5026 = icmp eq i32 %5025, 8
  br i1 %5026, label %5027, label %4975, !llvm.loop !138

; <label>:5027                                    ; preds = %5024
  %5028 = fdiv fast float 1.000000e+00, %5019
  %5029 = fmul fast float %5028, %5021
  %5030 = fdiv fast float 1.000000e+00, %4901
  %5031 = fmul fast float %5029, %5030
  %5032 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5033 = call float @dx.op.binary.f32(i32 35, float %5032, float 0.000000e+00)  ; FMax(a,b)
  %5034 = fmul fast float %5019, 3.125000e-02
  %5035 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5036 = fmul fast float %5035, 2.000000e+00
  %5037 = fadd fast float %5036, -1.000000e+00
  %5038 = fcmp fast ogt float %5037, 0.000000e+00
  %5039 = fcmp fast olt float %5037, 0.000000e+00
  %5040 = zext i1 %5038 to i32
  %5041 = zext i1 %5039 to i32
  %5042 = sub nsw i32 %5040, %5041
  %5043 = sitofp i32 %5042 to float
  %5044 = fmul fast float %5043, %5037
  %5045 = fsub fast float 1.000000e+00, %5044
  %5046 = fmul fast float %5045, %5045
  %5047 = fmul fast float %5046, %5045
  %5048 = fsub fast float %5045, %5047
  %5049 = fmul fast float %5048, %5033
  %5050 = fsub fast float 1.000000e+00, %5047
  %5051 = fsub fast float %5050, %5049
  %5052 = fmul fast float %5043, 5.000000e-01
  %5053 = fmul fast float %5052, %5051
  %5054 = fsub fast float 5.000000e-01, %5053
  br label %5055

; <label>:5055                                    ; preds = %5027, %4903, %4890
  %5056 = phi float [ 1.000000e+00, %4890 ], [ %4969, %4903 ], [ %5054, %5027 ]
  %5057 = fcmp fast ogt float %4486, 0.000000e+00
  br i1 %5057, label %5058, label %5222, !dx.controlflow.hints !139

; <label>:5058                                    ; preds = %5055
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 1
  %5061 = fadd fast float %5060, %4375
  %5062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5063 = extractvalue %dx.types.CBufRet.f32 %5062, 2
  %5064 = extractvalue %dx.types.CBufRet.f32 %5062, 3
  %5065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.f32 %5065, 1
  %5067 = call float @dx.op.binary.f32(i32 35, float %5061, float 0.000000e+00)  ; FMax(a,b)
  %5068 = fadd fast float %5067, 0x3F10000000000000
  %5069 = fcmp fast oeq float %5066, 0.000000e+00
  br i1 %5069, label %5070, label %5137

; <label>:5070                                    ; preds = %5058
  %5071 = extractvalue %dx.types.CBufRet.f32 %5062, 1
  %5072 = extractvalue %dx.types.CBufRet.f32 %5062, 0
  %5073 = fmul fast float %5072, %4382
  %5074 = fmul fast float %5071, %4383
  %5075 = fadd fast float %5073, 5.000000e-01
  %5076 = call float @dx.op.unary.f32(i32 27, float %5075)  ; Round_ni(value)
  %5077 = fadd fast float %5074, 5.000000e-01
  %5078 = call float @dx.op.unary.f32(i32 27, float %5077)  ; Round_ni(value)
  %5079 = fsub fast float %5075, %5076
  %5080 = fsub fast float %5077, %5078
  %5081 = fadd fast float %5076, -5.000000e-01
  %5082 = fadd fast float %5078, -5.000000e-01
  %5083 = fmul fast float %5079, 2.000000e+00
  %5084 = fsub fast float 3.000000e+00, %5083
  %5085 = fadd fast float %5083, 1.000000e+00
  %5086 = fsub fast float 2.000000e+00, %5079
  %5087 = bitcast float %5084 to i32
  %5088 = sub nsw i32 2129859010, %5087
  %5089 = bitcast i32 %5088 to float
  %5090 = fmul fast float %5089, %5086
  %5091 = fadd fast float %5090, -1.000000e+00
  %5092 = bitcast float %5085 to i32
  %5093 = sub nsw i32 2129859010, %5092
  %5094 = bitcast i32 %5093 to float
  %5095 = fmul fast float %5094, %5079
  %5096 = fadd fast float %5095, 1.000000e+00
  %5097 = fmul fast float %5080, 2.000000e+00
  %5098 = fsub fast float 3.000000e+00, %5097
  %5099 = fadd fast float %5097, 1.000000e+00
  %5100 = fsub fast float 2.000000e+00, %5080
  %5101 = bitcast float %5098 to i32
  %5102 = sub nsw i32 2129859010, %5101
  %5103 = bitcast i32 %5102 to float
  %5104 = fmul fast float %5103, %5100
  %5105 = fadd fast float %5104, -1.000000e+00
  %5106 = bitcast float %5099 to i32
  %5107 = sub nsw i32 2129859010, %5106
  %5108 = bitcast i32 %5107 to float
  %5109 = fmul fast float %5108, %5080
  %5110 = fadd fast float %5109, 1.000000e+00
  %5111 = fadd fast float %5091, %5081
  %5112 = fmul fast float %5111, %5063
  %5113 = fadd fast float %5105, %5082
  %5114 = fmul fast float %5113, %5064
  %5115 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5112, float %5114, float undef, float undef, i32 0, i32 0, i32 undef, float %5068)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5116 = extractvalue %dx.types.ResRet.f32 %5115, 0
  %5117 = fmul fast float %5116, %5084
  %5118 = fadd fast float %5096, %5081
  %5119 = fmul fast float %5118, %5063
  %5120 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5119, float %5114, float undef, float undef, i32 0, i32 0, i32 undef, float %5068)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5121 = extractvalue %dx.types.ResRet.f32 %5120, 0
  %5122 = fmul fast float %5121, %5085
  %5123 = fadd fast float %5110, %5082
  %5124 = fmul fast float %5123, %5064
  %5125 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5112, float %5124, float undef, float undef, i32 0, i32 0, i32 undef, float %5068)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5126 = extractvalue %dx.types.ResRet.f32 %5125, 0
  %5127 = fmul fast float %5126, %5084
  %5128 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5119, float %5124, float undef, float undef, i32 0, i32 0, i32 undef, float %5068)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5129 = extractvalue %dx.types.ResRet.f32 %5128, 0
  %5130 = fmul fast float %5129, %5085
  %5131 = fadd fast float %5130, %5127
  %5132 = fmul fast float %5131, %5099
  %5133 = fadd fast float %5122, %5117
  %5134 = fmul fast float %5133, %5098
  %5135 = fadd fast float %5134, %5132
  %5136 = fmul fast float %5135, 6.250000e-02
  br label %5222

; <label>:5137                                    ; preds = %5058
  %5138 = fmul fast float %248, 0x401921FB60000000
  %5139 = call float @dx.op.unary.f32(i32 13, float %5138)  ; Sin(value)
  %5140 = call float @dx.op.unary.f32(i32 12, float %5138)  ; Cos(value)
  %5141 = fsub fast float -0.000000e+00, %5139
  br label %5142

; <label>:5142                                    ; preds = %5191, %5137
  %5143 = phi float [ 0.000000e+00, %5137 ], [ %5186, %5191 ]
  %5144 = phi float [ 0.000000e+00, %5137 ], [ %5188, %5191 ]
  %5145 = phi i32 [ 0, %5137 ], [ %5192, %5191 ]
  %5146 = mul i32 %5145, 2
  %5147 = add i32 0, %5146
  %5148 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5147
  %5149 = load float, float* %5148, align 4
  %5150 = mul i32 %5145, 2
  %5151 = add i32 1, %5150
  %5152 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5151
  %5153 = load float, float* %5152, align 4
  %5154 = fmul fast float %5149, %5140
  %5155 = call float @dx.op.tertiary.f32(i32 46, float %5153, float %5141, float %5154)  ; FMad(a,b,c)
  %5156 = fmul fast float %5149, %5139
  %5157 = call float @dx.op.tertiary.f32(i32 46, float %5153, float %5140, float %5156)  ; FMad(a,b,c)
  %5158 = fmul fast float %5155, %5066
  %5159 = fmul fast float %5157, %5066
  %5160 = fadd fast float %5158, %4382
  %5161 = fadd fast float %5159, %4383
  %5162 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %5160, float %5161, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5163 = extractvalue %dx.types.ResRet.f32 %5162, 0
  %5164 = extractvalue %dx.types.ResRet.f32 %5162, 1
  %5165 = extractvalue %dx.types.ResRet.f32 %5162, 2
  %5166 = extractvalue %dx.types.ResRet.f32 %5162, 3
  %5167 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %5163, float* %5167, align 4
  %5168 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %5164, float* %5168, align 4
  %5169 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %5165, float* %5169, align 4
  %5170 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %5166, float* %5170, align 4
  %5171 = fsub fast float %5163, %5068
  %5172 = fcmp fast olt float %5171, 0.000000e+00
  %5173 = select i1 %5172, float 0.000000e+00, float 1.000000e+00
  %5174 = fadd fast float %5173, %5143
  %5175 = fmul fast float %5173, %5171
  %5176 = fadd fast float %5175, %5144
  br label %5177

; <label>:5177                                    ; preds = %5177, %5142
  %5178 = phi i32 [ 1, %5142 ], [ %5189, %5177 ]
  %5179 = phi float [ %5176, %5142 ], [ %5188, %5177 ]
  %5180 = phi float [ %5174, %5142 ], [ %5186, %5177 ]
  %5181 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %5178
  %5182 = load float, float* %5181, align 4, !tbaa !135, !noalias !125
  %5183 = fsub fast float %5182, %5068
  %5184 = fcmp fast olt float %5183, 0.000000e+00
  %5185 = select i1 %5184, float 0.000000e+00, float 1.000000e+00
  %5186 = fadd fast float %5185, %5180
  %5187 = fmul fast float %5185, %5183
  %5188 = fadd fast float %5187, %5179
  %5189 = add nuw nsw i32 %5178, 1
  %5190 = icmp eq i32 %5189, 4
  br i1 %5190, label %5191, label %5177, !llvm.loop !137

; <label>:5191                                    ; preds = %5177
  %5192 = add nuw nsw i32 %5145, 1
  %5193 = icmp eq i32 %5192, 8
  br i1 %5193, label %5194, label %5142, !llvm.loop !138

; <label>:5194                                    ; preds = %5191
  %5195 = fdiv fast float 1.000000e+00, %5186
  %5196 = fmul fast float %5195, %5188
  %5197 = fdiv fast float 1.000000e+00, %5068
  %5198 = fmul fast float %5196, %5197
  %5199 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5200 = call float @dx.op.binary.f32(i32 35, float %5199, float 0.000000e+00)  ; FMax(a,b)
  %5201 = fmul fast float %5186, 3.125000e-02
  %5202 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5203 = fmul fast float %5202, 2.000000e+00
  %5204 = fadd fast float %5203, -1.000000e+00
  %5205 = fcmp fast ogt float %5204, 0.000000e+00
  %5206 = fcmp fast olt float %5204, 0.000000e+00
  %5207 = zext i1 %5205 to i32
  %5208 = zext i1 %5206 to i32
  %5209 = sub nsw i32 %5207, %5208
  %5210 = sitofp i32 %5209 to float
  %5211 = fmul fast float %5210, %5204
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = fmul fast float %5212, %5212
  %5214 = fmul fast float %5213, %5212
  %5215 = fsub fast float %5212, %5214
  %5216 = fmul fast float %5215, %5200
  %5217 = fsub fast float 1.000000e+00, %5214
  %5218 = fsub fast float %5217, %5216
  %5219 = fmul fast float %5210, 5.000000e-01
  %5220 = fmul fast float %5219, %5218
  %5221 = fsub fast float 5.000000e-01, %5220
  br label %5222

; <label>:5222                                    ; preds = %5194, %5070, %5055
  %5223 = phi float [ 1.000000e+00, %5055 ], [ %5136, %5070 ], [ %5221, %5194 ]
  %5224 = fcmp fast ogt float %4485, 0.000000e+00
  br i1 %5224, label %5225, label %5389, !dx.controlflow.hints !140

; <label>:5225                                    ; preds = %5222
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5228 = fadd fast float %5227, %4375
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 2
  %5231 = extractvalue %dx.types.CBufRet.f32 %5229, 3
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 0
  %5234 = call float @dx.op.binary.f32(i32 35, float %5228, float 0.000000e+00)  ; FMax(a,b)
  %5235 = fadd fast float %5234, 0x3F10000000000000
  %5236 = fcmp fast oeq float %5233, 0.000000e+00
  br i1 %5236, label %5237, label %5304

; <label>:5237                                    ; preds = %5225
  %5238 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5239 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5240 = fmul fast float %5239, %4367
  %5241 = fmul fast float %5238, %4371
  %5242 = fadd fast float %5240, 5.000000e-01
  %5243 = call float @dx.op.unary.f32(i32 27, float %5242)  ; Round_ni(value)
  %5244 = fadd fast float %5241, 5.000000e-01
  %5245 = call float @dx.op.unary.f32(i32 27, float %5244)  ; Round_ni(value)
  %5246 = fsub fast float %5242, %5243
  %5247 = fsub fast float %5244, %5245
  %5248 = fadd fast float %5243, -5.000000e-01
  %5249 = fadd fast float %5245, -5.000000e-01
  %5250 = fmul fast float %5246, 2.000000e+00
  %5251 = fsub fast float 3.000000e+00, %5250
  %5252 = fadd fast float %5250, 1.000000e+00
  %5253 = fsub fast float 2.000000e+00, %5246
  %5254 = bitcast float %5251 to i32
  %5255 = sub nsw i32 2129859010, %5254
  %5256 = bitcast i32 %5255 to float
  %5257 = fmul fast float %5256, %5253
  %5258 = fadd fast float %5257, -1.000000e+00
  %5259 = bitcast float %5252 to i32
  %5260 = sub nsw i32 2129859010, %5259
  %5261 = bitcast i32 %5260 to float
  %5262 = fmul fast float %5261, %5246
  %5263 = fadd fast float %5262, 1.000000e+00
  %5264 = fmul fast float %5247, 2.000000e+00
  %5265 = fsub fast float 3.000000e+00, %5264
  %5266 = fadd fast float %5264, 1.000000e+00
  %5267 = fsub fast float 2.000000e+00, %5247
  %5268 = bitcast float %5265 to i32
  %5269 = sub nsw i32 2129859010, %5268
  %5270 = bitcast i32 %5269 to float
  %5271 = fmul fast float %5270, %5267
  %5272 = fadd fast float %5271, -1.000000e+00
  %5273 = bitcast float %5266 to i32
  %5274 = sub nsw i32 2129859010, %5273
  %5275 = bitcast i32 %5274 to float
  %5276 = fmul fast float %5275, %5247
  %5277 = fadd fast float %5276, 1.000000e+00
  %5278 = fadd fast float %5258, %5248
  %5279 = fmul fast float %5278, %5230
  %5280 = fadd fast float %5272, %5249
  %5281 = fmul fast float %5280, %5231
  %5282 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5279, float %5281, float undef, float undef, i32 0, i32 0, i32 undef, float %5235)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5283 = extractvalue %dx.types.ResRet.f32 %5282, 0
  %5284 = fmul fast float %5283, %5251
  %5285 = fadd fast float %5263, %5248
  %5286 = fmul fast float %5285, %5230
  %5287 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5286, float %5281, float undef, float undef, i32 0, i32 0, i32 undef, float %5235)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5288 = extractvalue %dx.types.ResRet.f32 %5287, 0
  %5289 = fmul fast float %5288, %5252
  %5290 = fadd fast float %5277, %5249
  %5291 = fmul fast float %5290, %5231
  %5292 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5279, float %5291, float undef, float undef, i32 0, i32 0, i32 undef, float %5235)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = fmul fast float %5293, %5251
  %5295 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5286, float %5291, float undef, float undef, i32 0, i32 0, i32 undef, float %5235)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = fmul fast float %5296, %5252
  %5298 = fadd fast float %5297, %5294
  %5299 = fmul fast float %5298, %5266
  %5300 = fadd fast float %5289, %5284
  %5301 = fmul fast float %5300, %5265
  %5302 = fadd fast float %5301, %5299
  %5303 = fmul fast float %5302, 6.250000e-02
  br label %5389

; <label>:5304                                    ; preds = %5225
  %5305 = fmul fast float %248, 0x401921FB60000000
  %5306 = call float @dx.op.unary.f32(i32 13, float %5305)  ; Sin(value)
  %5307 = call float @dx.op.unary.f32(i32 12, float %5305)  ; Cos(value)
  %5308 = fsub fast float -0.000000e+00, %5306
  br label %5309

; <label>:5309                                    ; preds = %5358, %5304
  %5310 = phi float [ 0.000000e+00, %5304 ], [ %5353, %5358 ]
  %5311 = phi float [ 0.000000e+00, %5304 ], [ %5355, %5358 ]
  %5312 = phi i32 [ 0, %5304 ], [ %5359, %5358 ]
  %5313 = mul i32 %5312, 2
  %5314 = add i32 0, %5313
  %5315 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5314
  %5316 = load float, float* %5315, align 4
  %5317 = mul i32 %5312, 2
  %5318 = add i32 1, %5317
  %5319 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5318
  %5320 = load float, float* %5319, align 4
  %5321 = fmul fast float %5316, %5307
  %5322 = call float @dx.op.tertiary.f32(i32 46, float %5320, float %5308, float %5321)  ; FMad(a,b,c)
  %5323 = fmul fast float %5316, %5306
  %5324 = call float @dx.op.tertiary.f32(i32 46, float %5320, float %5307, float %5323)  ; FMad(a,b,c)
  %5325 = fmul fast float %5322, %5233
  %5326 = fmul fast float %5324, %5233
  %5327 = fadd fast float %5325, %4367
  %5328 = fadd fast float %5326, %4371
  %5329 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5327, float %5328, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5330 = extractvalue %dx.types.ResRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.ResRet.f32 %5329, 1
  %5332 = extractvalue %dx.types.ResRet.f32 %5329, 2
  %5333 = extractvalue %dx.types.ResRet.f32 %5329, 3
  %5334 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %5330, float* %5334, align 4
  %5335 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %5331, float* %5335, align 4
  %5336 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %5332, float* %5336, align 4
  %5337 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %5333, float* %5337, align 4
  %5338 = fsub fast float %5330, %5235
  %5339 = fcmp fast olt float %5338, 0.000000e+00
  %5340 = select i1 %5339, float 0.000000e+00, float 1.000000e+00
  %5341 = fadd fast float %5340, %5310
  %5342 = fmul fast float %5340, %5338
  %5343 = fadd fast float %5342, %5311
  br label %5344

; <label>:5344                                    ; preds = %5344, %5309
  %5345 = phi i32 [ 1, %5309 ], [ %5356, %5344 ]
  %5346 = phi float [ %5343, %5309 ], [ %5355, %5344 ]
  %5347 = phi float [ %5341, %5309 ], [ %5353, %5344 ]
  %5348 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %5345
  %5349 = load float, float* %5348, align 4, !tbaa !135, !noalias !125
  %5350 = fsub fast float %5349, %5235
  %5351 = fcmp fast olt float %5350, 0.000000e+00
  %5352 = select i1 %5351, float 0.000000e+00, float 1.000000e+00
  %5353 = fadd fast float %5352, %5347
  %5354 = fmul fast float %5352, %5350
  %5355 = fadd fast float %5354, %5346
  %5356 = add nuw nsw i32 %5345, 1
  %5357 = icmp eq i32 %5356, 4
  br i1 %5357, label %5358, label %5344, !llvm.loop !137

; <label>:5358                                    ; preds = %5344
  %5359 = add nuw nsw i32 %5312, 1
  %5360 = icmp eq i32 %5359, 8
  br i1 %5360, label %5361, label %5309, !llvm.loop !138

; <label>:5361                                    ; preds = %5358
  %5362 = fdiv fast float 1.000000e+00, %5353
  %5363 = fmul fast float %5362, %5355
  %5364 = fdiv fast float 1.000000e+00, %5235
  %5365 = fmul fast float %5363, %5364
  %5366 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5367 = call float @dx.op.binary.f32(i32 35, float %5366, float 0.000000e+00)  ; FMax(a,b)
  %5368 = fmul fast float %5353, 3.125000e-02
  %5369 = call float @dx.op.unary.f32(i32 7, float %5368)  ; Saturate(value)
  %5370 = fmul fast float %5369, 2.000000e+00
  %5371 = fadd fast float %5370, -1.000000e+00
  %5372 = fcmp fast ogt float %5371, 0.000000e+00
  %5373 = fcmp fast olt float %5371, 0.000000e+00
  %5374 = zext i1 %5372 to i32
  %5375 = zext i1 %5373 to i32
  %5376 = sub nsw i32 %5374, %5375
  %5377 = sitofp i32 %5376 to float
  %5378 = fmul fast float %5377, %5371
  %5379 = fsub fast float 1.000000e+00, %5378
  %5380 = fmul fast float %5379, %5379
  %5381 = fmul fast float %5380, %5379
  %5382 = fsub fast float %5379, %5381
  %5383 = fmul fast float %5382, %5367
  %5384 = fsub fast float 1.000000e+00, %5381
  %5385 = fsub fast float %5384, %5383
  %5386 = fmul fast float %5377, 5.000000e-01
  %5387 = fmul fast float %5386, %5385
  %5388 = fsub fast float 5.000000e-01, %5387
  br label %5389

; <label>:5389                                    ; preds = %5361, %5237, %5222
  %5390 = phi float [ 1.000000e+00, %5222 ], [ %5303, %5237 ], [ %5388, %5361 ]
  %5391 = fsub fast float %5056, %4891
  %5392 = fmul fast float %5391, %4429
  %5393 = fadd fast float %5392, %4891
  %5394 = fsub fast float %5223, %5393
  %5395 = fmul fast float %5394, %4459
  %5396 = fadd fast float %5395, %5393
  %5397 = fsub fast float %5390, %5396
  %5398 = fmul fast float %5397, %4485
  %5399 = fadd fast float %5398, %5396
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5402 = fcmp fast ogt float %5401, 0.000000e+00
  br i1 %5402, label %5403, label %5443, !dx.controlflow.hints !141

; <label>:5403                                    ; preds = %5389
  %5404 = fcmp fast ugt float %5401, 0.000000e+00
  br i1 %5404, label %5405, label %5440

; <label>:5405                                    ; preds = %5403
  %5406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.CBufRet.f32 %5406, 1
  %5409 = extractvalue %dx.types.CBufRet.f32 %5406, 2
  %5410 = extractvalue %dx.types.CBufRet.f32 %5406, 3
  %5411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.CBufRet.f32 %5411, 1
  %5414 = extractvalue %dx.types.CBufRet.f32 %5411, 2
  %5415 = extractvalue %dx.types.CBufRet.f32 %5411, 3
  %5416 = extractvalue %dx.types.CBufRet.f32 %5400, 0
  %5417 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 0
  %5420 = extractvalue %dx.types.CBufRet.f32 %5418, 1
  %5421 = extractvalue %dx.types.CBufRet.f32 %5418, 2
  %5422 = fadd fast float %5419, %4344
  %5423 = fadd fast float %5420, %4345
  %5424 = fadd fast float %5421, %4346
  %5425 = fmul fast float %5422, %5407
  %5426 = call float @dx.op.tertiary.f32(i32 46, float %5408, float %5423, float %5425)  ; FMad(a,b,c)
  %5427 = call float @dx.op.tertiary.f32(i32 46, float %5409, float %5424, float %5426)  ; FMad(a,b,c)
  %5428 = fadd fast float %5427, %5410
  %5429 = fmul fast float %5422, %5412
  %5430 = call float @dx.op.tertiary.f32(i32 46, float %5413, float %5423, float %5429)  ; FMad(a,b,c)
  %5431 = call float @dx.op.tertiary.f32(i32 46, float %5414, float %5424, float %5430)  ; FMad(a,b,c)
  %5432 = fadd fast float %5431, %5415
  %5433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5428, float %5432, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5434 = extractvalue %dx.types.ResRet.f32 %5433, 0
  %5435 = fmul fast float %5434, %5417
  %5436 = fadd fast float %5435, %5416
  %5437 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5438 = fmul fast float %5437, %5401
  %5439 = fsub fast float 1.000000e+00, %5438
  br label %5440

; <label>:5440                                    ; preds = %5405, %5403
  %5441 = phi float [ %5439, %5405 ], [ 1.000000e+00, %5403 ]
  %5442 = fmul fast float %5441, %5399
  br label %5443

; <label>:5443                                    ; preds = %5440, %5389, %4324
  %5444 = phi float [ 1.000000e+00, %4324 ], [ %5442, %5440 ], [ %5399, %5389 ]
  %5445 = call float @dx.op.binary.f32(i32 36, float %5444, float %5444)  ; FMin(a,b)
  %5446 = call float @dx.op.binary.f32(i32 36, float %5444, float %5445)  ; FMin(a,b)
  %5447 = fcmp fast ogt float %5446, 0.000000e+00
  br i1 %5447, label %5448, label %5613, !dx.controlflow.hints !142

; <label>:5448                                    ; preds = %5443
  %5449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.CBufRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.CBufRet.f32 %5449, 2
  %5453 = extractvalue %dx.types.CBufRet.f32 %5449, 3
  %5454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5455 = extractvalue %dx.types.CBufRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.CBufRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.CBufRet.f32 %5454, 2
  %5458 = extractvalue %dx.types.CBufRet.f32 %5454, 3
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.CBufRet.f32 %5459, 2
  %5463 = extractvalue %dx.types.CBufRet.f32 %5459, 3
  %5464 = fmul fast float %5450, %4344
  %5465 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %5451, float %5464)  ; FMad(a,b,c)
  %5466 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %5452, float %5465)  ; FMad(a,b,c)
  %5467 = fadd fast float %5466, %5453
  %5468 = fmul fast float %5455, %4344
  %5469 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %5456, float %5468)  ; FMad(a,b,c)
  %5470 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %5457, float %5469)  ; FMad(a,b,c)
  %5471 = fadd fast float %5470, %5458
  %5472 = fmul fast float %5460, %4344
  %5473 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %5461, float %5472)  ; FMad(a,b,c)
  %5474 = call float @dx.op.tertiary.f32(i32 46, float %4346, float %5462, float %5473)  ; FMad(a,b,c)
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.CBufRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.CBufRet.f32 %5475, 3
  %5479 = fmul fast float %5478, %5467
  %5480 = fmul fast float %5478, %5471
  %5481 = fadd fast float %5479, %5476
  %5482 = fadd fast float %5480, %5477
  %5483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.CBufRet.f32 %5483, 1
  %5486 = fsub fast float %5481, %5484
  %5487 = fsub fast float %5482, %5485
  %5488 = fcmp fast olt float %5486, 0.000000e+00
  %5489 = fcmp fast olt float %5487, 0.000000e+00
  %5490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.f32 %5490, 0
  %5492 = extractvalue %dx.types.CBufRet.f32 %5490, 1
  %5493 = extractvalue %dx.types.CBufRet.f32 %5490, 2
  %5494 = extractvalue %dx.types.CBufRet.f32 %5490, 3
  %5495 = select i1 %5488, float %5491, float %5493
  %5496 = select i1 %5489, float %5492, float %5494
  %5497 = fmul fast float %5495, %5486
  %5498 = fmul fast float %5496, %5487
  %5499 = call float @dx.op.unary.f32(i32 6, float %5497)  ; FAbs(value)
  %5500 = call float @dx.op.unary.f32(i32 6, float %5498)  ; FAbs(value)
  %5501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.f32 %5501, 0
  %5503 = call float @dx.op.binary.f32(i32 35, float %5499, float %5500)  ; FMax(a,b)
  %5504 = fsub fast float %5502, %5503
  %5505 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5506 = fcmp fast ogt float %5505, 0.000000e+00
  br i1 %5506, label %5507, label %5548, !dx.controlflow.hints !143

; <label>:5507                                    ; preds = %5448
  %5508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5481, float %5482, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5509 = extractvalue %dx.types.ResRet.f32 %5508, 1
  %5510 = fcmp fast ogt float %5509, 0.000000e+00
  br i1 %5510, label %5511, label %5543

; <label>:5511                                    ; preds = %5507
  %5512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5481, float %5482, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5513 = extractvalue %dx.types.ResRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.ResRet.f32 %5512, 1
  %5515 = extractvalue %dx.types.ResRet.f32 %5512, 2
  %5516 = extractvalue %dx.types.ResRet.f32 %5512, 3
  %5517 = fsub fast float 1.000000e+00, %5463
  %5518 = fsub fast float %5517, %5474
  %5519 = fmul fast float %5518, 0x400921FB60000000
  %5520 = fadd fast float %5519, 0x3FF921FB60000000
  %5521 = call float @dx.op.unary.f32(i32 13, float %5520)  ; Sin(value)
  %5522 = fadd fast float %5521, -1.000000e+00
  %5523 = fmul fast float %5522, 0x3FD45F3060000000
  %5524 = fmul fast float %5518, 0x401921FB60000000
  %5525 = fadd fast float %5524, 0x400921FB60000000
  %5526 = call float @dx.op.unary.f32(i32 13, float %5525)  ; Sin(value)
  %5527 = fadd fast float %5526, 0x3E7777A5C0000000
  %5528 = fmul fast float %5527, 0x3FC45F3060000000
  %5529 = fmul fast float %5518, 0x4022D97C80000000
  %5530 = fadd fast float %5529, 0x4012D97C80000000
  %5531 = call float @dx.op.unary.f32(i32 13, float %5530)  ; Sin(value)
  %5532 = fadd fast float %5531, 1.000000e+00
  %5533 = fmul fast float %5532, 0x3FBB2995E0000000
  %5534 = fmul fast float %5518, 0x402921FB60000000
  %5535 = fadd fast float %5534, 0x401921FB60000000
  %5536 = call float @dx.op.unary.f32(i32 13, float %5535)  ; Sin(value)
  %5537 = fadd fast float %5536, 0xBE8777A5C0000000
  %5538 = fmul fast float %5537, 0x3FB45F3060000000
  %5539 = call float @dx.op.dot4.f32(i32 56, float %5513, float %5514, float %5515, float %5516, float %5523, float %5528, float %5533, float %5538)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5540 = fmul fast float %5539, 0xBFF7154760000000
  %5541 = call float @dx.op.unary.f32(i32 21, float %5540)  ; Exp(value)
  %5542 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  br label %5543

; <label>:5543                                    ; preds = %5511, %5507
  %5544 = phi float [ %5542, %5511 ], [ 1.000000e+00, %5507 ]
  %5545 = fadd fast float %5544, -1.000000e+00
  %5546 = fmul fast float %5545, %5505
  %5547 = fadd fast float %5546, 1.000000e+00
  br label %5548

; <label>:5548                                    ; preds = %5543, %5448
  %5549 = phi float [ %5547, %5543 ], [ 1.000000e+00, %5448 ]
  %5550 = fmul fast float %5549, %5444
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.CBufRet.f32 %5551, 1
  %5554 = extractvalue %dx.types.CBufRet.f32 %5551, 2
  %5555 = fadd fast float %5552, %146
  %5556 = fadd fast float %5553, %147
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 1
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 0
  %5561 = extractvalue %dx.types.CBufRet.f32 %5559, 1
  %5562 = extractvalue %dx.types.CBufRet.f32 %5559, 2
  %5563 = fsub fast float -0.000000e+00, %5555
  %5564 = fsub fast float -0.000000e+00, %5556
  %5565 = fsub fast float %2351, %5554
  %5566 = fadd fast float %5565, %5558
  %5567 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5563, float %5564, float %5566)  ; Dot3(ax,ay,az,bx,by,bz)
  %5568 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5560, float %5561, float %5562)  ; Dot3(ax,ay,az,bx,by,bz)
  %5569 = fdiv fast float 1.000000e+00, %5568
  %5570 = fmul fast float %5569, %5567
  %5571 = fmul fast float %5560, %5570
  %5572 = fmul fast float %5561, %5570
  %5573 = fadd fast float %5571, %5555
  %5574 = fadd fast float %5572, %5556
  %5575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.f32 %5575, 0
  %5577 = extractvalue %dx.types.CBufRet.f32 %5575, 1
  %5578 = fsub fast float %5573, %5576
  %5579 = fsub fast float %5574, %5577
  %5580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5581 = extractvalue %dx.types.CBufRet.f32 %5580, 2
  %5582 = extractvalue %dx.types.CBufRet.f32 %5580, 3
  %5583 = fmul fast float %5578, %5581
  %5584 = fmul fast float %5579, %5582
  %5585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5586 = extractvalue %dx.types.CBufRet.i32 %5585, 3
  %5587 = icmp eq i32 %5586, 0
  br i1 %5587, label %5593, label %5588

; <label>:5588                                    ; preds = %5548
  %5589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5583, float %5584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5590 = extractvalue %dx.types.ResRet.f32 %5589, 0
  %5591 = extractvalue %dx.types.ResRet.f32 %5589, 1
  %5592 = extractvalue %dx.types.ResRet.f32 %5589, 2
  br label %5598

; <label>:5593                                    ; preds = %5548
  %5594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5583, float %5584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5595 = extractvalue %dx.types.ResRet.f32 %5594, 0
  %5596 = extractvalue %dx.types.ResRet.f32 %5594, 1
  %5597 = extractvalue %dx.types.ResRet.f32 %5594, 2
  br label %5598

; <label>:5598                                    ; preds = %5593, %5588
  %5599 = phi float [ %5590, %5588 ], [ %5595, %5593 ]
  %5600 = phi float [ %5591, %5588 ], [ %5596, %5593 ]
  %5601 = phi float [ %5592, %5588 ], [ %5597, %5593 ]
  %5602 = extractvalue %dx.types.CBufRet.f32 %5557, 2
  %5603 = fmul fast float %5602, %5599
  %5604 = extractvalue %dx.types.CBufRet.f32 %5557, 0
  %5605 = fsub fast float %5570, %5604
  %5606 = fsub fast float %5605, %5603
  %5607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5606)  ; FMax(a,b)
  %5608 = fmul fast float %5607, %5600
  %5609 = call float @dx.op.binary.f32(i32 36, float %5601, float %5608)  ; FMin(a,b)
  %5610 = fmul fast float %5609, 0xBFF7154760000000
  %5611 = call float @dx.op.unary.f32(i32 21, float %5610)  ; Exp(value)
  %5612 = fmul fast float %5550, %5611
  br label %5613

; <label>:5613                                    ; preds = %5598, %5443
  %5614 = phi float [ %5612, %5598 ], [ %5444, %5443 ]
  %5615 = call float @dx.op.binary.f32(i32 36, float %5614, float %5614)  ; FMin(a,b)
  %5616 = call float @dx.op.binary.f32(i32 36, float %5614, float %5615)  ; FMin(a,b)
  %5617 = fcmp fast ogt float %5616, 0.000000e+00
  br i1 %5617, label %5618, label %6001, !dx.controlflow.hints !144

; <label>:5618                                    ; preds = %5613
  %5619 = fmul fast float %5614, %4336
  %5620 = fmul fast float %5614, %4337
  %5621 = fmul fast float %5614, %4338
  %5622 = fsub fast float %148, %2139
  %5623 = fcmp fast ogt float %5622, 0.000000e+00
  %5624 = fmul fast float %4325, 5.120000e+02
  %5625 = fmul fast float %4326, 5.120000e+02
  %5626 = fmul fast float %4327, 5.120000e+02
  %5627 = fadd fast float %5626, %148
  %5628 = fsub fast float %2139, %5627
  %5629 = fmul fast float %5628, 2.000000e+00
  %5630 = fadd fast float %5629, %5627
  %5631 = select i1 %5623, float %5630, float %5627
  %5632 = fsub fast float %5631, %148
  %5633 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5632, float %5624, float %5625, float %5632)  ; Dot3(ax,ay,az,bx,by,bz)
  %5634 = call float @dx.op.unary.f32(i32 25, float %5633)  ; Rsqrt(value)
  %5635 = fmul fast float %5634, %5624
  %5636 = fmul fast float %5634, %5625
  %5637 = fmul fast float %5634, %5632
  %5638 = fsub fast float %2139, %148
  %5639 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5635, float %5636, float %5637)  ; Dot3(ax,ay,az,bx,by,bz)
  %5641 = fdiv fast float 1.000000e+00, %5640
  %5642 = fmul fast float %5641, %5639
  %5643 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5622, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5644 = fcmp fast ogt float %5643, 0.000000e+00
  %5645 = fcmp fast olt float %5643, 0.000000e+00
  %5646 = zext i1 %5644 to i32
  %5647 = zext i1 %5645 to i32
  %5648 = sub nsw i32 %5646, %5647
  %5649 = sitofp i32 %5648 to float
  %5650 = fsub fast float %5631, %2139
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5650, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = fcmp fast ogt float %5651, 0.000000e+00
  %5653 = fcmp fast olt float %5651, 0.000000e+00
  %5654 = zext i1 %5652 to i32
  %5655 = zext i1 %5653 to i32
  %5656 = sub nsw i32 %5654, %5655
  %5657 = sitofp i32 %5656 to float
  %5658 = fcmp fast une float %5649, %5657
  br i1 %5658, label %5659, label %5669

; <label>:5659                                    ; preds = %5618
  %5660 = fmul fast float %5642, %5637
  %5661 = fmul fast float %5642, %5636
  %5662 = fmul fast float %5642, %5635
  %5663 = fmul fast float %5662, %5662
  %5664 = fmul fast float %5661, %5661
  %5665 = fadd fast float %5663, %5664
  %5666 = fmul fast float %5660, %5660
  %5667 = fadd fast float %5665, %5666
  %5668 = call float @dx.op.unary.f32(i32 24, float %5667)  ; Sqrt(value)
  br label %5679

; <label>:5669                                    ; preds = %5618
  %5670 = icmp slt i32 %5648, 0
  br i1 %5670, label %5671, label %5679

; <label>:5671                                    ; preds = %5669
  %5672 = fsub fast float %148, %5631
  %5673 = fmul fast float %5624, %5624
  %5674 = fmul fast float %5625, %5625
  %5675 = fadd fast float %5673, %5674
  %5676 = fmul fast float %5672, %5672
  %5677 = fadd fast float %5675, %5676
  %5678 = call float @dx.op.unary.f32(i32 24, float %5677)  ; Sqrt(value)
  br label %5679

; <label>:5679                                    ; preds = %5671, %5669, %5659
  %5680 = phi float [ %5668, %5659 ], [ %5678, %5671 ], [ 0.000000e+00, %5669 ]
  %5681 = fsub fast float -0.000000e+00, %5680
  %5682 = select i1 %5623, float -0.000000e+00, float %5681
  %5683 = fmul fast float %2140, 0x3FF7154760000000
  %5684 = fmul fast float %5683, %5682
  %5685 = fmul fast float %2141, 0x3FF7154760000000
  %5686 = fmul fast float %5685, %5682
  %5687 = fmul fast float %2142, 0x3FF7154760000000
  %5688 = fmul fast float %5687, %5682
  %5689 = call float @dx.op.unary.f32(i32 21, float %5684)  ; Exp(value)
  %5690 = call float @dx.op.unary.f32(i32 21, float %5686)  ; Exp(value)
  %5691 = call float @dx.op.unary.f32(i32 21, float %5688)  ; Exp(value)
  %5692 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5693 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5694 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5695 = fmul fast float %5619, %5692
  %5696 = fmul fast float %5620, %5693
  %5697 = fmul fast float %5621, %5694
  %5698 = fsub fast float %4325, %2339
  %5699 = fsub fast float %4326, %2338
  %5700 = fsub fast float %4327, %2337
  %5701 = call float @dx.op.dot3.f32(i32 55, float %5698, float %5699, float %5700, float %5698, float %5699, float %5700)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = call float @dx.op.unary.f32(i32 25, float %5701)  ; Rsqrt(value)
  %5703 = fmul fast float %5702, %5698
  %5704 = fmul fast float %5702, %5699
  %5705 = fmul fast float %5702, %5700
  %5706 = call float @dx.op.dot3.f32(i32 55, float %4325, float %4326, float %4327, float %2343, float %2344, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = call float @dx.op.dot3.f32(i32 55, float %2336, float %2335, float %2334, float %5703, float %5704, float %5705)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5709 = fmul fast float %5708, %5708
  %5710 = fmul fast float %5709, %4320
  %5711 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5712 = fmul fast float %5711, %5708
  %5713 = call float @dx.op.dot3.f32(i32 55, float %2343, float %2344, float %2345, float %5703, float %5704, float %5705)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = fmul fast float %5713, %5713
  %5715 = call float @dx.op.unary.f32(i32 6, float %5706)  ; FAbs(value)
  %5716 = fsub fast float 1.000000e+00, %2372
  %5717 = fmul fast float %2354, %2354
  %5718 = fmul fast float %5717, %5716
  %5719 = fadd fast float %5718, %2372
  %5720 = bitcast float %5719 to i32
  %5721 = ashr i32 %5720, 1
  %5722 = add nsw i32 %5721, 532487669
  %5723 = bitcast i32 %5722 to float
  %5724 = fadd fast float %5723, %2354
  %5725 = fmul fast float %2372, %5714
  %5726 = fsub fast float 1.000000e+00, %5714
  %5727 = fadd fast float %5726, %5725
  %5728 = fmul fast float %5715, %5715
  %5729 = fmul fast float %5728, %5716
  %5730 = fadd fast float %5729, %2372
  %5731 = bitcast float %5730 to i32
  %5732 = ashr i32 %5731, 1
  %5733 = add nsw i32 %5732, 532487669
  %5734 = bitcast i32 %5733 to float
  %5735 = fadd fast float %5734, %5715
  %5736 = fmul fast float %5727, %5727
  %5737 = fmul fast float %5736, %5724
  %5738 = fmul fast float %5737, %5735
  %5739 = fdiv fast float 0x3FF0A00000000000, %5738
  %5740 = fmul fast float %5739, %2372
  %5741 = fmul fast float %3663, 0x3FF9999980000000
  %5742 = fsub fast float 5.000000e+00, %5741
  %5743 = call float @dx.op.unary.f32(i32 6, float %5707)  ; FAbs(value)
  %5744 = fsub fast float 1.000000e+00, %5743
  %5745 = fmul fast float %3663, 0x41D9660740000000
  %5746 = fadd fast float %5745, 0xC1EFBF8940000000
  %5747 = bitcast float %5744 to i32
  %5748 = sitofp i32 %5747 to float
  %5749 = fmul fast float %5748, %5742
  %5750 = fadd fast float %5746, %5749
  %5751 = fptosi float %5750 to i32
  %5752 = bitcast i32 %5751 to float
  %5753 = fsub fast float 1.000000e+00, %2346
  %5754 = fsub fast float 1.000000e+00, %2347
  %5755 = fsub fast float 1.000000e+00, %2352
  %5756 = fmul fast float %5752, %5753
  %5757 = fmul fast float %5752, %5754
  %5758 = fmul fast float %5752, %5755
  %5759 = fadd fast float %5756, %2346
  %5760 = fadd fast float %5757, %2347
  %5761 = fadd fast float %5758, %2352
  br i1 %3686, label %5762, label %5785

; <label>:5762                                    ; preds = %5679
  %5763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1685, float %5743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5764 = extractvalue %dx.types.ResRet.f32 %5763, 0
  %5765 = extractvalue %dx.types.ResRet.f32 %5763, 1
  %5766 = extractvalue %dx.types.ResRet.f32 %5763, 2
  %5767 = fadd fast float %5764, -5.000000e-01
  %5768 = fadd fast float %5765, -5.000000e-01
  %5769 = fadd fast float %5766, -5.000000e-01
  %5770 = fmul fast float %2346, 4.000000e+00
  %5771 = fmul fast float %5770, %5753
  %5772 = fmul fast float %5771, %5767
  %5773 = fmul fast float %2347, 4.000000e+00
  %5774 = fmul fast float %5773, %5754
  %5775 = fmul fast float %5774, %5768
  %5776 = fmul fast float %2352, 4.000000e+00
  %5777 = fmul fast float %5776, %5755
  %5778 = fmul fast float %5777, %5769
  %5779 = fadd fast float %5772, %5759
  %5780 = fadd fast float %5775, %5760
  %5781 = fadd fast float %5778, %5761
  %5782 = call float @dx.op.unary.f32(i32 7, float %5779)  ; Saturate(value)
  %5783 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5784 = call float @dx.op.unary.f32(i32 7, float %5781)  ; Saturate(value)
  br label %5785

; <label>:5785                                    ; preds = %5762, %5679
  %5786 = phi float [ %5782, %5762 ], [ %5759, %5679 ]
  %5787 = phi float [ %5783, %5762 ], [ %5760, %5679 ]
  %5788 = phi float [ %5784, %5762 ], [ %5761, %5679 ]
  %5789 = fmul fast float %5706, 9.843750e-01
  %5790 = fadd fast float %5789, 7.812500e-03
  %5791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5790, float %3667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5792 = extractvalue %dx.types.ResRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.ResRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.ResRet.f32 %5791, 2
  %5795 = extractvalue %dx.types.ResRet.f32 %5791, 3
  %5796 = fsub fast float %5794, %5792
  %5797 = fsub fast float %5795, %5793
  %5798 = fmul fast float %5796, %3673
  %5799 = fmul fast float %5797, %3673
  %5800 = fadd fast float %5798, %5792
  %5801 = fadd fast float %5799, %5793
  %5802 = fmul fast float %5800, %2346
  %5803 = fmul fast float %5800, %2347
  %5804 = fmul fast float %5800, %2352
  %5805 = fadd fast float %5802, %5801
  %5806 = fadd fast float %5803, %5801
  %5807 = fadd fast float %5804, %5801
  br i1 %3686, label %5808, label %5831

; <label>:5808                                    ; preds = %5785
  %5809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1685, float %5706, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5810 = extractvalue %dx.types.ResRet.f32 %5809, 0
  %5811 = extractvalue %dx.types.ResRet.f32 %5809, 1
  %5812 = extractvalue %dx.types.ResRet.f32 %5809, 2
  %5813 = fadd fast float %5810, -5.000000e-01
  %5814 = fadd fast float %5811, -5.000000e-01
  %5815 = fadd fast float %5812, -5.000000e-01
  %5816 = fmul fast float %2346, 4.000000e+00
  %5817 = fmul fast float %5816, %5753
  %5818 = fmul fast float %5817, %5813
  %5819 = fmul fast float %2347, 4.000000e+00
  %5820 = fmul fast float %5819, %5754
  %5821 = fmul fast float %5820, %5814
  %5822 = fmul fast float %2352, 4.000000e+00
  %5823 = fmul fast float %5822, %5755
  %5824 = fmul fast float %5823, %5815
  %5825 = fadd fast float %5818, %5805
  %5826 = fadd fast float %5821, %5806
  %5827 = fadd fast float %5824, %5807
  %5828 = call float @dx.op.unary.f32(i32 7, float %5825)  ; Saturate(value)
  %5829 = call float @dx.op.unary.f32(i32 7, float %5826)  ; Saturate(value)
  %5830 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  br label %5831

; <label>:5831                                    ; preds = %5808, %5785
  %5832 = phi float [ %5828, %5808 ], [ %5805, %5785 ]
  %5833 = phi float [ %5829, %5808 ], [ %5806, %5785 ]
  %5834 = phi float [ %5830, %5808 ], [ %5807, %5785 ]
  %5835 = call float @dx.op.binary.f32(i32 35, float %5833, float %5834)  ; FMax(a,b)
  %5836 = call float @dx.op.binary.f32(i32 35, float %5832, float %5835)  ; FMax(a,b)
  %5837 = fsub fast float 1.000000e+00, %5836
  %5838 = call float @dx.op.binary.f32(i32 35, float %5715, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5839 = fdiv fast float %1085, %5838
  %5840 = fmul fast float %4233, %5839
  %5841 = fmul fast float %4235, %5839
  %5842 = fmul fast float %4237, %5839
  %5843 = call float @dx.op.unary.f32(i32 21, float %5840)  ; Exp(value)
  %5844 = call float @dx.op.unary.f32(i32 21, float %5841)  ; Exp(value)
  %5845 = call float @dx.op.unary.f32(i32 21, float %5842)  ; Exp(value)
  %5846 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  %5847 = call float @dx.op.unary.f32(i32 7, float %5844)  ; Saturate(value)
  %5848 = call float @dx.op.unary.f32(i32 7, float %5845)  ; Saturate(value)
  %5849 = select i1 %4230, float %5846, float 0.000000e+00
  %5850 = select i1 %4231, float %5847, float 0.000000e+00
  %5851 = select i1 %4232, float %5848, float 0.000000e+00
  %5852 = fsub fast float -0.000000e+00, %2343
  %5853 = fsub fast float -0.000000e+00, %2344
  %5854 = fsub fast float -0.000000e+00, %2345
  %5855 = call float @dx.op.dot3.f32(i32 55, float %4325, float %4326, float %4327, float %5852, float %5853, float %5854)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = call float @dx.op.unary.f32(i32 7, float %5855)  ; Saturate(value)
  %5857 = fmul fast float %5856, 9.843750e-01
  %5858 = fadd fast float %5857, 7.812500e-03
  %5859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5858, float %3667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5860 = extractvalue %dx.types.ResRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.ResRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.ResRet.f32 %5859, 2
  %5863 = extractvalue %dx.types.ResRet.f32 %5859, 3
  %5864 = fsub fast float %5862, %5860
  %5865 = fsub fast float %5863, %5861
  %5866 = fmul fast float %5864, %3673
  %5867 = fmul fast float %5865, %3673
  %5868 = fadd fast float %5866, %5860
  %5869 = fadd fast float %5867, %5861
  %5870 = fmul fast float %5868, %2346
  %5871 = fmul fast float %5868, %2347
  %5872 = fmul fast float %5868, %2352
  %5873 = fadd fast float %5870, %5869
  %5874 = fadd fast float %5871, %5869
  %5875 = fadd fast float %5872, %5869
  br i1 %3686, label %5876, label %5899

; <label>:5876                                    ; preds = %5831
  %5877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1685, float %5856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5878 = extractvalue %dx.types.ResRet.f32 %5877, 0
  %5879 = extractvalue %dx.types.ResRet.f32 %5877, 1
  %5880 = extractvalue %dx.types.ResRet.f32 %5877, 2
  %5881 = fadd fast float %5878, -5.000000e-01
  %5882 = fadd fast float %5879, -5.000000e-01
  %5883 = fadd fast float %5880, -5.000000e-01
  %5884 = fmul fast float %2346, 4.000000e+00
  %5885 = fmul fast float %5884, %5753
  %5886 = fmul fast float %5885, %5881
  %5887 = fmul fast float %2347, 4.000000e+00
  %5888 = fmul fast float %5887, %5754
  %5889 = fmul fast float %5888, %5882
  %5890 = fmul fast float %2352, 4.000000e+00
  %5891 = fmul fast float %5890, %5755
  %5892 = fmul fast float %5891, %5883
  %5893 = fadd fast float %5886, %5873
  %5894 = fadd fast float %5889, %5874
  %5895 = fadd fast float %5892, %5875
  %5896 = call float @dx.op.unary.f32(i32 7, float %5893)  ; Saturate(value)
  %5897 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5898 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  br label %5899

; <label>:5899                                    ; preds = %5876, %5831
  %5900 = phi float [ %5896, %5876 ], [ %5873, %5831 ]
  %5901 = phi float [ %5897, %5876 ], [ %5874, %5831 ]
  %5902 = phi float [ %5898, %5876 ], [ %5875, %5831 ]
  %5903 = call float @dx.op.binary.f32(i32 35, float %5901, float %5902)  ; FMax(a,b)
  %5904 = call float @dx.op.binary.f32(i32 35, float %5900, float %5903)  ; FMax(a,b)
  %5905 = fsub fast float 1.000000e+00, %5904
  %5906 = fmul fast float %2369, %4297
  %5907 = fadd fast float %4299, %5906
  %5908 = call float @dx.op.unary.f32(i32 7, float %5907)  ; Saturate(value)
  %5909 = fsub fast float %4325, %2360
  %5910 = fsub fast float %4326, %2361
  %5911 = fsub fast float %4327, %2362
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5910, float %5911, float %5909, float %5910, float %5911)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = call float @dx.op.unary.f32(i32 25, float %5912)  ; Rsqrt(value)
  %5914 = fmul fast float %5913, %5909
  %5915 = fmul fast float %5913, %5910
  %5916 = fmul fast float %5913, %5911
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5852, float %5853, float %5854, float %5914, float %5915, float %5916)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = fmul fast float %5917, %5917
  %5919 = call float @dx.op.unary.f32(i32 6, float %5856)  ; FAbs(value)
  %5920 = call float @dx.op.binary.f32(i32 35, float %5908, float 0x3F847AE140000000)  ; FMax(a,b)
  %5921 = fmul fast float %5920, %5920
  %5922 = fmul fast float %5921, %5921
  %5923 = fsub fast float 1.000000e+00, %5922
  %5924 = fmul fast float %5717, %5923
  %5925 = fadd fast float %5924, %5922
  %5926 = bitcast float %5925 to i32
  %5927 = ashr i32 %5926, 1
  %5928 = add nsw i32 %5927, 532487669
  %5929 = bitcast i32 %5928 to float
  %5930 = fadd fast float %5929, %2354
  %5931 = fmul fast float %5922, %5918
  %5932 = fsub fast float 1.000000e+00, %5918
  %5933 = fadd fast float %5932, %5931
  %5934 = fmul fast float %5919, %5919
  %5935 = fmul fast float %5934, %5923
  %5936 = fadd fast float %5935, %5922
  %5937 = bitcast float %5936 to i32
  %5938 = ashr i32 %5937, 1
  %5939 = add nsw i32 %5938, 532487669
  %5940 = bitcast i32 %5939 to float
  %5941 = fadd fast float %5940, %5919
  %5942 = fmul fast float %5933, %5933
  %5943 = fmul fast float %5942, %5930
  %5944 = fmul fast float %5943, %5941
  %5945 = fdiv fast float 0x3FF0A00000000000, %5944
  %5946 = fmul fast float %5945, %5922
  %5947 = fmul fast float %5856, %5849
  %5948 = fmul fast float %5856, %5850
  %5949 = fmul fast float %5856, %5851
  %5950 = fmul fast float %5947, %5905
  %5951 = fmul fast float %5950, %5946
  %5952 = fmul fast float %5948, %5905
  %5953 = fmul fast float %5952, %5946
  %5954 = fmul fast float %5949, %5905
  %5955 = fmul fast float %5954, %5946
  %5956 = fmul fast float %5786, %5740
  %5957 = fmul fast float %5787, %5740
  %5958 = fmul fast float %5788, %5740
  %5959 = fsub fast float 1.000000e+00, %5707
  %5960 = bitcast float %5959 to i32
  %5961 = sitofp i32 %5960 to float
  %5962 = fmul fast float %5961, 5.000000e+00
  %5963 = fadd fast float %5962, 0xC1EFBF8940000000
  %5964 = fptosi float %5963 to i32
  %5965 = bitcast i32 %5964 to float
  %5966 = fmul fast float %5965, %1684
  %5967 = fmul fast float %5837, %5966
  %5968 = fmul fast float %5967, %4225
  %5969 = fmul fast float %5967, %4226
  %5970 = fmul fast float %5967, %4227
  %5971 = fadd fast float %5968, %5956
  %5972 = fadd fast float %5969, %5957
  %5973 = fadd fast float %5970, %5958
  %5974 = fmul fast float %5971, %5712
  %5975 = fmul fast float %5972, %5712
  %5976 = fmul fast float %5973, %5712
  %5977 = fmul fast float %5712, %5695
  %5978 = fmul fast float %5977, %5837
  %5979 = fmul fast float %5712, %5696
  %5980 = fmul fast float %5979, %5837
  %5981 = fmul fast float %5712, %5697
  %5982 = fmul fast float %5981, %5837
  %5983 = fadd fast float %5974, %5951
  %5984 = fadd fast float %5975, %5953
  %5985 = fadd fast float %5976, %5955
  %5986 = fmul fast float %5983, %5695
  %5987 = fmul fast float %5984, %5696
  %5988 = fmul fast float %5985, %5697
  %5989 = fadd fast float %5978, %4314
  %5990 = fmul fast float %5989, %1708
  %5991 = fadd fast float %5980, %4316
  %5992 = fmul fast float %5991, %1708
  %5993 = fadd fast float %5982, %4318
  %5994 = fmul fast float %5993, %1708
  %5995 = fadd fast float %5986, %4278
  %5996 = fmul fast float %5995, %1708
  %5997 = fadd fast float %5987, %4281
  %5998 = fmul fast float %5997, %1708
  %5999 = fadd fast float %5988, %4284
  %6000 = fmul fast float %5999, %1708
  br label %6001

; <label>:6001                                    ; preds = %5899, %5613, %4208
  %6002 = phi float [ %4279, %4208 ], [ %4279, %5613 ], [ %5996, %5899 ]
  %6003 = phi float [ %4282, %4208 ], [ %4282, %5613 ], [ %5998, %5899 ]
  %6004 = phi float [ %4285, %4208 ], [ %4285, %5613 ], [ %6000, %5899 ]
  %6005 = phi float [ %4315, %4208 ], [ %4315, %5613 ], [ %5990, %5899 ]
  %6006 = phi float [ %4317, %4208 ], [ %4317, %5613 ], [ %5992, %5899 ]
  %6007 = phi float [ %4319, %4208 ], [ %4319, %5613 ], [ %5994, %5899 ]
  %6008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.i32 %6008, 0
  %6010 = icmp eq i32 %6009, 0
  br i1 %6010, label %6828, label %6011

; <label>:6011                                    ; preds = %6001
  %6012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6012, 2
  %6014 = extractvalue %dx.types.CBufRet.f32 %6012, 3
  %6015 = fmul fast float %6013, %99
  %6016 = fmul fast float %6014, %100
  %6017 = fptoui float %6015 to i32
  %6018 = fptoui float %6016 to i32
  %6019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.CBufRet.f32 %6019, 2
  %6022 = extractvalue %dx.types.CBufRet.f32 %6019, 3
  %6023 = fadd fast float %87, -4.000000e+00
  %6024 = call float @dx.op.binary.f32(i32 35, float %6023, float 0.000000e+00)  ; FMax(a,b)
  %6025 = fadd fast float %6024, %6020
  %6026 = fmul fast float %6025, %6021
  %6027 = call float @dx.op.unary.f32(i32 23, float %6026)  ; Log(value)
  %6028 = fmul fast float %6027, %6022
  %6029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.f32 %6029, 2
  %6031 = fmul fast float %6028, %6030
  %6032 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  %6033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6034 = extractvalue %dx.types.CBufRet.i32 %6033, 1
  %6035 = add i32 %6034, -1
  %6036 = uitofp i32 %6034 to float
  %6037 = fmul fast float %6036, %6032
  %6038 = fptoui float %6037 to i32
  %6039 = call i32 @dx.op.binary.i32(i32 40, i32 %6038, i32 %6035)  ; UMin(a,b)
  %6040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.i32 %6040, 2
  %6042 = extractvalue %dx.types.CBufRet.i32 %6040, 3
  %6043 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6018, i32 %6041, i32 %6017)  ; UMad(a,b,c)
  %6044 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6039, i32 %6042, i32 %6043)  ; UMad(a,b,c)
  %6045 = add nsw i32 %6009, -1
  %6046 = call i32 @dx.op.binary.i32(i32 37, i32 %6045, i32 0)  ; IMax(a,b)
  %6047 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %6048 = fptoui float %6047 to i32
  %6049 = lshr i32 %6048, 5
  %6050 = call i32 @dx.op.binary.i32(i32 40, i32 %6049, i32 8191)  ; UMin(a,b)
  %6051 = shl i32 %6050, 2
  %6052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6051, i32 undef)  ; BufferLoad(srv,index,wot)
  %6053 = extractvalue %dx.types.ResRet.i32 %6052, 0
  %6054 = lshr i32 %6053, 16
  %6055 = and i32 %6053, 65535
  %6056 = lshr i32 %6053, 21
  %6057 = lshr i32 %6055, 5
  %6058 = call i32 @dx.op.binary.i32(i32 40, i32 %6057, i32 %6046)  ; UMin(a,b)
  %6059 = icmp ugt i32 %6056, %6058
  br i1 %6059, label %6828, label %6060

; <label>:6060                                    ; preds = %6011
  br label %6061

; <label>:6061                                    ; preds = %6818, %6060
  %6062 = phi i32 [ %6825, %6818 ], [ %6056, %6060 ]
  %6063 = phi float [ %6819, %6818 ], [ %6002, %6060 ]
  %6064 = phi float [ %6820, %6818 ], [ %6003, %6060 ]
  %6065 = phi float [ %6821, %6818 ], [ %6004, %6060 ]
  %6066 = phi float [ %6822, %6818 ], [ %6005, %6060 ]
  %6067 = phi float [ %6823, %6818 ], [ %6006, %6060 ]
  %6068 = phi float [ %6824, %6818 ], [ %6007, %6060 ]
  %6069 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.i32 %6069, 0
  %6071 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6044, i32 %6070, i32 %6062)  ; UMad(a,b,c)
  %6072 = shl i32 %6071, 2
  %6073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6072, i32 undef)  ; BufferLoad(srv,index,wot)
  %6074 = extractvalue %dx.types.ResRet.i32 %6073, 0
  %6075 = shl i32 %6062, 5
  %6076 = sub nsw i32 %6054, %6075
  %6077 = call i32 @dx.op.binary.i32(i32 37, i32 %6076, i32 0)  ; IMax(a,b)
  %6078 = call i32 @dx.op.binary.i32(i32 38, i32 %6077, i32 31)  ; IMin(a,b)
  %6079 = sub nsw i32 1, %6054
  %6080 = add nsw i32 %6079, %6055
  %6081 = call i32 @dx.op.binary.i32(i32 37, i32 %6080, i32 0)  ; IMax(a,b)
  %6082 = call i32 @dx.op.binary.i32(i32 38, i32 %6081, i32 32)  ; IMin(a,b)
  %6083 = and i32 %6082, 31
  %6084 = shl i32 -1, %6083
  %6085 = xor i32 %6084, -1
  %6086 = and i32 %6078, 31
  %6087 = shl i32 %6085, %6086
  %6088 = icmp eq i32 %6082, 32
  %6089 = select i1 %6088, i32 -1, i32 %6087
  %6090 = and i32 %6089, %6074
  %6091 = icmp eq i32 %6090, 0
  br i1 %6091, label %6818, label %6092

; <label>:6092                                    ; preds = %6061
  br label %6093

; <label>:6093                                    ; preds = %6228, %6092
  %6094 = phi i32 [ %6105, %6228 ], [ %6090, %6092 ]
  %6095 = phi float [ %6229, %6228 ], [ %6063, %6092 ]
  %6096 = phi float [ %6230, %6228 ], [ %6064, %6092 ]
  %6097 = phi float [ %6231, %6228 ], [ %6065, %6092 ]
  %6098 = phi float [ %6232, %6228 ], [ %6066, %6092 ]
  %6099 = phi float [ %6233, %6228 ], [ %6067, %6092 ]
  %6100 = phi float [ %6234, %6228 ], [ %6068, %6092 ]
  %6101 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6094)  ; FirstbitLo(value)
  %6102 = add i32 %6101, %6075
  %6103 = and i32 %6101, 31
  %6104 = shl i32 1, %6103
  %6105 = xor i32 %6104, %6094
  %6106 = mul i32 %6102, 112
  %6107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6106, i32 undef)  ; BufferLoad(srv,index,wot)
  %6108 = extractvalue %dx.types.ResRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.ResRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.ResRet.f32 %6107, 2
  %6111 = or i32 %6106, 12
  %6112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6111, i32 undef)  ; BufferLoad(srv,index,wot)
  %6113 = extractvalue %dx.types.ResRet.f32 %6112, 0
  %6114 = add i32 %6106, 16
  %6115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6114, i32 undef)  ; BufferLoad(srv,index,wot)
  %6116 = extractvalue %dx.types.ResRet.f32 %6115, 0
  %6117 = extractvalue %dx.types.ResRet.f32 %6115, 1
  %6118 = extractvalue %dx.types.ResRet.f32 %6115, 2
  %6119 = add i32 %6106, 28
  %6120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6119, i32 undef)  ; BufferLoad(srv,index,wot)
  %6121 = extractvalue %dx.types.ResRet.i32 %6120, 0
  %6122 = add i32 %6106, 44
  %6123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6122, i32 undef)  ; BufferLoad(srv,index,wot)
  %6124 = extractvalue %dx.types.ResRet.f32 %6123, 0
  %6125 = add i32 %6106, 48
  %6126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6125, i32 undef)  ; BufferLoad(srv,index,wot)
  %6127 = extractvalue %dx.types.ResRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.ResRet.f32 %6126, 1
  %6129 = extractvalue %dx.types.ResRet.f32 %6126, 2
  %6130 = extractvalue %dx.types.ResRet.f32 %6126, 3
  %6131 = add i32 %6106, 64
  %6132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6131, i32 undef)  ; BufferLoad(srv,index,wot)
  %6133 = extractvalue %dx.types.ResRet.f32 %6132, 0
  %6134 = extractvalue %dx.types.ResRet.f32 %6132, 1
  %6135 = extractvalue %dx.types.ResRet.f32 %6132, 2
  %6136 = extractvalue %dx.types.ResRet.f32 %6132, 3
  %6137 = add i32 %6106, 80
  %6138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6137, i32 undef)  ; BufferLoad(srv,index,wot)
  %6139 = extractvalue %dx.types.ResRet.f32 %6138, 1
  %6140 = extractvalue %dx.types.ResRet.f32 %6138, 2
  %6141 = add i32 %6106, 92
  %6142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6141, i32 undef)  ; BufferLoad(srv,index,wot)
  %6143 = extractvalue %dx.types.ResRet.i32 %6142, 0
  %6144 = call float @dx.op.dot3.f32(i32 55, float %6108, float %6109, float %6110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6145 = select i1 %237, float %6139, float %6108
  %6146 = select i1 %237, float %6144, float %6109
  %6147 = select i1 %237, float %6140, float %6110
  %6148 = and i32 %6143, 65535
  %6149 = uitofp i32 %6148 to float
  %6150 = lshr i32 %6143, 16
  %6151 = uitofp i32 %6150 to float
  %6152 = and i32 %6121, 65535
  %6153 = and i32 %6121, 50331648
  %6154 = icmp slt i32 %6121, 0
  %6155 = icmp eq i32 %6153, 33554432
  %6156 = fsub fast float %6127, %146
  %6157 = fsub fast float %6128, %147
  %6158 = fsub fast float %6129, %148
  %6159 = call float @dx.op.dot3.f32(i32 55, float %6156, float %6157, float %6158, float %6156, float %6157, float %6158)  ; Dot3(ax,ay,az,bx,by,bz)
  %6160 = call float @dx.op.unary.f32(i32 24, float %6159)  ; Sqrt(value)
  %6161 = fdiv fast float 1.000000e+00, %6160
  %6162 = fmul fast float %6161, %6156
  %6163 = fmul fast float %6161, %6157
  %6164 = fmul fast float %6161, %6158
  %6165 = fadd fast float %6160, %6113
  %6166 = fdiv fast float 1.000000e+00, %6165
  %6167 = fmul float %6124, %6166
  %6168 = fmul float %6167, %6167
  %6169 = call float @dx.op.unary.f32(i32 7, float %6168)  ; Saturate(value)
  br i1 %6155, label %6170, label %6191

; <label>:6170                                    ; preds = %6093
  %6171 = fmul fast float %6135, %6116
  %6172 = fmul fast float %6135, %6117
  %6173 = fmul fast float %6135, %6118
  %6174 = fadd fast float %6156, %6171
  %6175 = fadd fast float %6157, %6172
  %6176 = fadd fast float %6158, %6173
  %6177 = call float @dx.op.dot3.f32(i32 55, float %6174, float %6175, float %6176, float %6174, float %6175, float %6176)  ; Dot3(ax,ay,az,bx,by,bz)
  %6178 = call float @dx.op.unary.f32(i32 25, float %6177)  ; Rsqrt(value)
  %6179 = fmul fast float %6178, %6174
  %6180 = fmul fast float %6178, %6175
  %6181 = fmul fast float %6178, %6176
  %6182 = fsub fast float %146, %6127
  %6183 = fsub fast float %147, %6128
  %6184 = fsub fast float %148, %6129
  %6185 = fsub fast float -0.000000e+00, %6182
  %6186 = fsub fast float -0.000000e+00, %6183
  %6187 = fsub fast float -0.000000e+00, %6184
  %6188 = call float @dx.op.dot3.f32(i32 55, float %6185, float %6186, float %6187, float %6116, float %6117, float %6118)  ; Dot3(ax,ay,az,bx,by,bz)
  %6189 = fcmp fast ogt float %6188, 0.000000e+00
  %6190 = uitofp i1 %6189 to float
  br label %6191

; <label>:6191                                    ; preds = %6170, %6093
  %6192 = phi float [ %6190, %6170 ], [ 1.000000e+00, %6093 ]
  %6193 = phi float [ %6179, %6170 ], [ %6162, %6093 ]
  %6194 = phi float [ %6180, %6170 ], [ %6163, %6093 ]
  %6195 = phi float [ %6181, %6170 ], [ %6164, %6093 ]
  %6196 = call float @dx.op.dot3.f32(i32 55, float %6116, float %6117, float %6118, float %6193, float %6194, float %6195)  ; Dot3(ax,ay,az,bx,by,bz)
  %6197 = fmul fast float %6196, %6196
  %6198 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6199 = fsub fast float 1.000000e+00, %6198
  %6200 = fmul fast float %6199, 5.000000e-01
  %6201 = fcmp fast ogt float %6196, 0.000000e+00
  %6202 = fsub fast float 1.000000e+00, %6200
  %6203 = select i1 %6201, float %6200, float %6202
  %6204 = fmul fast float %6203, %6151
  %6205 = fadd fast float %6204, %6149
  %6206 = fmul fast float %6205, 0x3EF0001000000000
  %6207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %6206, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6208 = extractvalue %dx.types.ResRet.f32 %6207, 0
  %6209 = fmul fast float %6196, %6133
  %6210 = fadd fast float %6209, %6134
  %6211 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6212 = select i1 %6155, float 1.000000e+00, float %6211
  %6213 = select i1 %6155, float %6211, float 1.000000e+00
  %6214 = fmul fast float %6160, %6130
  %6215 = fsub fast float 1.000000e+00, %6214
  %6216 = fmul fast float %6215, %6136
  %6217 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  %6218 = fmul fast float %6217, %6213
  %6219 = fmul fast float %6218, 2.000000e+00
  %6220 = fsub fast float 3.000000e+00, %6219
  %6221 = fmul fast float %6208, %6192
  %6222 = fmul fast float %6218, %6218
  %6223 = fmul fast float %6222, %6221
  %6224 = fmul fast float %6223, %6220
  %6225 = call float @dx.op.binary.f32(i32 36, float %6224, float %6224)  ; FMin(a,b)
  %6226 = call float @dx.op.binary.f32(i32 36, float %6224, float %6225)  ; FMin(a,b)
  %6227 = fcmp fast ogt float %6226, 0.000000e+00
  br i1 %6227, label %6236, label %6228, !dx.controlflow.hints !145

; <label>:6228                                    ; preds = %6771, %6382, %6191
  %6229 = phi float [ %6095, %6382 ], [ %6095, %6191 ], [ %6814, %6771 ]
  %6230 = phi float [ %6096, %6382 ], [ %6096, %6191 ], [ %6815, %6771 ]
  %6231 = phi float [ %6097, %6382 ], [ %6097, %6191 ], [ %6816, %6771 ]
  %6232 = phi float [ %6098, %6382 ], [ %6098, %6191 ], [ %6808, %6771 ]
  %6233 = phi float [ %6099, %6382 ], [ %6099, %6191 ], [ %6809, %6771 ]
  %6234 = phi float [ %6100, %6382 ], [ %6100, %6191 ], [ %6810, %6771 ]
  %6235 = icmp eq i32 %6094, %6104
  br i1 %6235, label %6817, label %6093

; <label>:6236                                    ; preds = %6191
  %6237 = icmp eq i32 %6152, 255
  br i1 %6237, label %6382, label %6238, !dx.controlflow.hints !146

; <label>:6238                                    ; preds = %6236
  %6239 = mul nuw nsw i32 %6152, 176
  %6240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6239, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.f32 %6240, 0
  %6242 = extractvalue %dx.types.ResRet.f32 %6240, 1
  %6243 = extractvalue %dx.types.ResRet.f32 %6240, 2
  %6244 = extractvalue %dx.types.ResRet.f32 %6240, 3
  %6245 = add nuw nsw i32 %6239, 16
  %6246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6245, i32 undef)  ; BufferLoad(srv,index,wot)
  %6247 = extractvalue %dx.types.ResRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.ResRet.f32 %6246, 1
  %6249 = add nuw nsw i32 %6239, 32
  %6250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6249, i32 undef)  ; BufferLoad(srv,index,wot)
  %6251 = extractvalue %dx.types.ResRet.f32 %6250, 0
  %6252 = extractvalue %dx.types.ResRet.f32 %6250, 1
  %6253 = extractvalue %dx.types.ResRet.f32 %6250, 2
  %6254 = add nuw nsw i32 %6239, 48
  %6255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6254, i32 undef)  ; BufferLoad(srv,index,wot)
  %6256 = extractvalue %dx.types.ResRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.ResRet.f32 %6255, 1
  %6258 = extractvalue %dx.types.ResRet.f32 %6255, 2
  %6259 = extractvalue %dx.types.ResRet.f32 %6255, 3
  %6260 = add nuw nsw i32 %6239, 64
  %6261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6260, i32 undef)  ; BufferLoad(srv,index,wot)
  %6262 = extractvalue %dx.types.ResRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.ResRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.ResRet.f32 %6261, 2
  %6265 = extractvalue %dx.types.ResRet.f32 %6261, 3
  %6266 = add nuw nsw i32 %6239, 80
  %6267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6266, i32 undef)  ; BufferLoad(srv,index,wot)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.ResRet.f32 %6267, 3
  %6272 = add nuw nsw i32 %6239, 96
  %6273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6272, i32 undef)  ; BufferLoad(srv,index,wot)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.ResRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.ResRet.f32 %6273, 2
  %6277 = extractvalue %dx.types.ResRet.f32 %6273, 3
  %6278 = bitcast float %6248 to i32
  %6279 = fmul fast float %6253, %76
  %6280 = fmul fast float %6253, %77
  %6281 = fmul fast float %6253, %78
  %6282 = fadd fast float %6279, %146
  %6283 = fadd fast float %6280, %147
  %6284 = fadd fast float %6281, %148
  %6285 = fmul fast float %6282, %6256
  %6286 = call float @dx.op.tertiary.f32(i32 46, float %6283, float %6262, float %6285)  ; FMad(a,b,c)
  %6287 = call float @dx.op.tertiary.f32(i32 46, float %6284, float %6268, float %6286)  ; FMad(a,b,c)
  %6288 = fadd fast float %6287, %6274
  %6289 = fmul fast float %6282, %6257
  %6290 = call float @dx.op.tertiary.f32(i32 46, float %6283, float %6263, float %6289)  ; FMad(a,b,c)
  %6291 = call float @dx.op.tertiary.f32(i32 46, float %6284, float %6269, float %6290)  ; FMad(a,b,c)
  %6292 = fadd fast float %6291, %6275
  %6293 = fmul fast float %6282, %6258
  %6294 = call float @dx.op.tertiary.f32(i32 46, float %6283, float %6264, float %6293)  ; FMad(a,b,c)
  %6295 = call float @dx.op.tertiary.f32(i32 46, float %6284, float %6270, float %6294)  ; FMad(a,b,c)
  %6296 = fadd fast float %6295, %6276
  %6297 = fmul fast float %6282, %6259
  %6298 = call float @dx.op.tertiary.f32(i32 46, float %6283, float %6265, float %6297)  ; FMad(a,b,c)
  %6299 = call float @dx.op.tertiary.f32(i32 46, float %6284, float %6271, float %6298)  ; FMad(a,b,c)
  %6300 = fadd fast float %6299, %6277
  %6301 = fdiv fast float %6288, %6300
  %6302 = fdiv fast float %6292, %6300
  %6303 = fdiv fast float %6296, %6300
  %6304 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6303)  ; FMax(a,b)
  %6305 = fmul fast float %248, 0x401921FB60000000
  %6306 = call float @dx.op.unary.f32(i32 13, float %6305)  ; Sin(value)
  %6307 = call float @dx.op.unary.f32(i32 12, float %6305)  ; Cos(value)
  %6308 = fmul fast float %6307, %6252
  %6309 = call float @dx.op.tertiary.f32(i32 46, float %6306, float %6252, float 0.000000e+00)  ; FMad(a,b,c)
  %6310 = fmul fast float %6252, %6306
  %6311 = fsub fast float -0.000000e+00, %6310
  %6312 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6252, float 0.000000e+00)  ; FMad(a,b,c)
  br label %6313

; <label>:6313                                    ; preds = %6313, %6238
  %6314 = phi float [ 0.000000e+00, %6238 ], [ %6346, %6313 ]
  %6315 = phi float [ 0.000000e+00, %6238 ], [ %6348, %6313 ]
  %6316 = phi i32 [ 0, %6238 ], [ %6349, %6313 ]
  %6317 = mul i32 %6316, 2
  %6318 = add i32 0, %6317
  %6319 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6318
  %6320 = load float, float* %6319, align 4
  %6321 = mul i32 %6316, 2
  %6322 = add i32 1, %6321
  %6323 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6322
  %6324 = load float, float* %6323, align 4
  %6325 = fmul fast float %6308, %6320
  %6326 = call float @dx.op.tertiary.f32(i32 46, float %6324, float %6311, float %6325)  ; FMad(a,b,c)
  %6327 = fmul fast float %6320, %6309
  %6328 = call float @dx.op.tertiary.f32(i32 46, float %6324, float %6312, float %6327)  ; FMad(a,b,c)
  %6329 = fadd fast float %6326, %6301
  %6330 = fadd fast float %6328, %6302
  %6331 = fmul fast float %6329, %6247
  %6332 = fmul fast float %6330, %6247
  %6333 = call float @dx.op.binary.f32(i32 35, float %6331, float %6243)  ; FMax(a,b)
  %6334 = call float @dx.op.binary.f32(i32 35, float %6332, float %6243)  ; FMax(a,b)
  %6335 = call float @dx.op.binary.f32(i32 36, float %6333, float %6244)  ; FMin(a,b)
  %6336 = call float @dx.op.binary.f32(i32 36, float %6334, float %6244)  ; FMin(a,b)
  %6337 = fadd fast float %6335, %6241
  %6338 = fadd fast float %6336, %6242
  %6339 = uitofp i32 %6278 to float
  %6340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %6337, float %6338, float %6339, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6341 = extractvalue %dx.types.ResRet.f32 %6340, 0
  %6342 = fsub fast float %6341, %6304
  %6343 = fsub fast float %6342, %6251
  %6344 = fcmp fast ogt float %6343, 0.000000e+00
  %6345 = select i1 %6344, float 1.000000e+00, float 0.000000e+00
  %6346 = fadd fast float %6345, %6314
  %6347 = select i1 %6344, float %6343, float 0.000000e+00
  %6348 = fadd fast float %6347, %6315
  %6349 = add nuw nsw i32 %6316, 1
  %6350 = icmp eq i32 %6349, 8
  br i1 %6350, label %6351, label %6313

; <label>:6351                                    ; preds = %6313
  %6352 = fdiv fast float 1.000000e+00, %6346
  %6353 = fmul fast float %6352, %6348
  %6354 = fdiv fast float 1.000000e+00, %6304
  %6355 = fmul fast float %6353, %6354
  %6356 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6357 = call float @dx.op.binary.f32(i32 35, float %6356, float 0.000000e+00)  ; FMax(a,b)
  %6358 = fmul fast float %6346, 1.250000e-01
  %6359 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6360 = fmul fast float %6359, 2.000000e+00
  %6361 = fadd fast float %6360, -1.000000e+00
  %6362 = fcmp fast ogt float %6361, 0.000000e+00
  %6363 = fcmp fast olt float %6361, 0.000000e+00
  %6364 = zext i1 %6362 to i32
  %6365 = zext i1 %6363 to i32
  %6366 = sub nsw i32 %6364, %6365
  %6367 = sitofp i32 %6366 to float
  %6368 = fmul fast float %6367, %6361
  %6369 = fsub fast float 1.000000e+00, %6368
  %6370 = fmul fast float %6369, %6369
  %6371 = fmul fast float %6370, %6369
  %6372 = fsub fast float %6369, %6371
  %6373 = fmul fast float %6372, %6357
  %6374 = fsub fast float 1.000000e+00, %6371
  %6375 = fsub fast float %6374, %6373
  %6376 = fmul fast float %6367, 5.000000e-01
  %6377 = fmul fast float %6376, %6375
  %6378 = fsub fast float -5.000000e-01, %6377
  %6379 = fmul fast float %6378, %6212
  %6380 = fadd fast float %6379, 1.000000e+00
  %6381 = fmul fast float %6380, %6224
  br label %6382

; <label>:6382                                    ; preds = %6351, %6236
  %6383 = phi float [ %6381, %6351 ], [ %6224, %6236 ]
  %6384 = call float @dx.op.binary.f32(i32 36, float %6383, float %6383)  ; FMin(a,b)
  %6385 = call float @dx.op.binary.f32(i32 36, float %6383, float %6384)  ; FMin(a,b)
  %6386 = fcmp fast ogt float %6385, 0.000000e+00
  br i1 %6386, label %6387, label %6228, !dx.controlflow.hints !147

; <label>:6387                                    ; preds = %6382
  %6388 = fmul fast float %6383, %6145
  %6389 = fmul fast float %6383, %6146
  %6390 = fmul fast float %6383, %6147
  %6391 = fsub fast float %6129, %2139
  %6392 = fcmp fast ogt float %6391, 0.000000e+00
  %6393 = fsub fast float %148, %2139
  %6394 = fcmp fast ogt float %6393, 0.000000e+00
  %6395 = xor i1 %6394, %6392
  %6396 = fsub fast float %2139, %6129
  %6397 = fmul fast float %6396, 2.000000e+00
  %6398 = fadd fast float %6397, %6129
  %6399 = select i1 %6395, float %6129, float %6398
  %6400 = fsub fast float %6399, %148
  %6401 = call float @dx.op.dot3.f32(i32 55, float %6156, float %6157, float %6400, float %6156, float %6157, float %6400)  ; Dot3(ax,ay,az,bx,by,bz)
  %6402 = call float @dx.op.unary.f32(i32 25, float %6401)  ; Rsqrt(value)
  %6403 = fmul fast float %6402, %6156
  %6404 = fmul fast float %6402, %6157
  %6405 = fmul fast float %6402, %6400
  %6406 = fsub fast float %2139, %148
  %6407 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6406)  ; Dot3(ax,ay,az,bx,by,bz)
  %6408 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6403, float %6404, float %6405)  ; Dot3(ax,ay,az,bx,by,bz)
  %6409 = fdiv fast float 1.000000e+00, %6408
  %6410 = fmul fast float %6409, %6407
  %6411 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6393, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6412 = fcmp fast ogt float %6411, 0.000000e+00
  %6413 = fcmp fast olt float %6411, 0.000000e+00
  %6414 = zext i1 %6412 to i32
  %6415 = zext i1 %6413 to i32
  %6416 = sub nsw i32 %6414, %6415
  %6417 = sitofp i32 %6416 to float
  %6418 = fsub fast float %6399, %2139
  %6419 = call float @dx.op.dot3.f32(i32 55, float %6156, float %6157, float %6418, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6420 = fcmp fast ogt float %6419, 0.000000e+00
  %6421 = fcmp fast olt float %6419, 0.000000e+00
  %6422 = zext i1 %6420 to i32
  %6423 = zext i1 %6421 to i32
  %6424 = sub nsw i32 %6422, %6423
  %6425 = sitofp i32 %6424 to float
  %6426 = fcmp fast une float %6417, %6425
  br i1 %6426, label %6427, label %6437

; <label>:6427                                    ; preds = %6387
  %6428 = fmul fast float %6410, %6405
  %6429 = fmul fast float %6410, %6404
  %6430 = fmul fast float %6410, %6403
  %6431 = fmul fast float %6430, %6430
  %6432 = fmul fast float %6429, %6429
  %6433 = fadd fast float %6431, %6432
  %6434 = fmul fast float %6428, %6428
  %6435 = fadd fast float %6433, %6434
  %6436 = call float @dx.op.unary.f32(i32 24, float %6435)  ; Sqrt(value)
  br label %6449

; <label>:6437                                    ; preds = %6387
  %6438 = icmp slt i32 %6416, 0
  br i1 %6438, label %6439, label %6449

; <label>:6439                                    ; preds = %6437
  %6440 = fsub fast float %146, %6127
  %6441 = fsub fast float %147, %6128
  %6442 = fsub fast float %148, %6399
  %6443 = fmul fast float %6440, %6440
  %6444 = fmul fast float %6441, %6441
  %6445 = fadd fast float %6443, %6444
  %6446 = fmul fast float %6442, %6442
  %6447 = fadd fast float %6445, %6446
  %6448 = call float @dx.op.unary.f32(i32 24, float %6447)  ; Sqrt(value)
  br label %6449

; <label>:6449                                    ; preds = %6439, %6437, %6427
  %6450 = phi float [ %6436, %6427 ], [ %6448, %6439 ], [ 0.000000e+00, %6437 ]
  %6451 = and i1 %6394, %6392
  %6452 = fsub fast float -0.000000e+00, %6450
  %6453 = select i1 %6451, float -0.000000e+00, float %6452
  %6454 = fmul fast float %2140, 0x3FF7154760000000
  %6455 = fmul fast float %6454, %6453
  %6456 = fmul fast float %2141, 0x3FF7154760000000
  %6457 = fmul fast float %6456, %6453
  %6458 = fmul fast float %2142, 0x3FF7154760000000
  %6459 = fmul fast float %6458, %6453
  %6460 = call float @dx.op.unary.f32(i32 21, float %6455)  ; Exp(value)
  %6461 = call float @dx.op.unary.f32(i32 21, float %6457)  ; Exp(value)
  %6462 = call float @dx.op.unary.f32(i32 21, float %6459)  ; Exp(value)
  %6463 = call float @dx.op.unary.f32(i32 7, float %6460)  ; Saturate(value)
  %6464 = call float @dx.op.unary.f32(i32 7, float %6461)  ; Saturate(value)
  %6465 = call float @dx.op.unary.f32(i32 7, float %6462)  ; Saturate(value)
  %6466 = fmul fast float %6388, %6463
  %6467 = fmul fast float %6389, %6464
  %6468 = fmul fast float %6390, %6465
  %6469 = fsub fast float %6162, %2339
  %6470 = fsub fast float %6163, %2338
  %6471 = fsub fast float %6164, %2337
  %6472 = call float @dx.op.dot3.f32(i32 55, float %6469, float %6470, float %6471, float %6469, float %6470, float %6471)  ; Dot3(ax,ay,az,bx,by,bz)
  %6473 = call float @dx.op.unary.f32(i32 25, float %6472)  ; Rsqrt(value)
  %6474 = fmul fast float %6473, %6469
  %6475 = fmul fast float %6473, %6470
  %6476 = fmul fast float %6473, %6471
  %6477 = call float @dx.op.dot3.f32(i32 55, float %6162, float %6163, float %6164, float %2343, float %2344, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %6478 = call float @dx.op.dot3.f32(i32 55, float %2336, float %2335, float %2334, float %6474, float %6475, float %6476)  ; Dot3(ax,ay,az,bx,by,bz)
  %6479 = call float @dx.op.unary.f32(i32 7, float %6477)  ; Saturate(value)
  %6480 = fmul fast float %6479, %6169
  %6481 = fmul fast float %6479, %6479
  %6482 = fmul fast float %6481, %4320
  %6483 = call float @dx.op.unary.f32(i32 7, float %6482)  ; Saturate(value)
  %6484 = fmul fast float %6480, %6483
  %6485 = bitcast float %6159 to i32
  %6486 = ashr i32 %6485, 1
  %6487 = sub nsw i32 1597463007, %6486
  %6488 = bitcast i32 %6487 to float
  %6489 = fmul fast float %6488, %6156
  %6490 = fmul fast float %6488, %6157
  %6491 = fmul fast float %6488, %6158
  %6492 = fsub fast float %6489, %2339
  %6493 = fsub fast float %6490, %2338
  %6494 = fsub fast float %6491, %2337
  %6495 = call float @dx.op.dot3.f32(i32 55, float %6492, float %6493, float %6494, float %6492, float %6493, float %6494)  ; Dot3(ax,ay,az,bx,by,bz)
  %6496 = call float @dx.op.unary.f32(i32 25, float %6495)  ; Rsqrt(value)
  %6497 = fmul fast float %6492, %6496
  %6498 = fmul fast float %6493, %6496
  %6499 = fmul fast float %6494, %6496
  %6500 = call float @dx.op.dot3.f32(i32 55, float %2343, float %2344, float %2345, float %6497, float %6498, float %6499)  ; Dot3(ax,ay,az,bx,by,bz)
  %6501 = fmul fast float %6500, %6500
  %6502 = call float @dx.op.unary.f32(i32 6, float %6477)  ; FAbs(value)
  %6503 = fsub fast float 1.000000e+00, %2372
  %6504 = fmul fast float %2354, %2354
  %6505 = fmul fast float %6504, %6503
  %6506 = fadd fast float %6505, %2372
  %6507 = bitcast float %6506 to i32
  %6508 = ashr i32 %6507, 1
  %6509 = add nsw i32 %6508, 532487669
  %6510 = bitcast i32 %6509 to float
  %6511 = fadd fast float %6510, %2354
  %6512 = fmul fast float %2372, %6501
  %6513 = fsub fast float 1.000000e+00, %6501
  %6514 = fadd fast float %6513, %6512
  %6515 = fmul fast float %6502, %6502
  %6516 = fmul fast float %6515, %6503
  %6517 = fadd fast float %6516, %2372
  %6518 = bitcast float %6517 to i32
  %6519 = ashr i32 %6518, 1
  %6520 = add nsw i32 %6519, 532487669
  %6521 = bitcast i32 %6520 to float
  %6522 = fadd fast float %6521, %6502
  %6523 = fmul fast float %6514, %6514
  %6524 = fmul fast float %6523, %6511
  %6525 = fmul fast float %6524, %6522
  %6526 = fdiv fast float 1.000000e+00, %6525
  %6527 = bitcast float %2372 to i32
  %6528 = sitofp i32 %6527 to float
  %6529 = fmul fast float %6528, 0x3FE7F73180000000
  %6530 = fadd fast float %6529, 0x41AFE27C40000000
  %6531 = fptosi float %6530 to i32
  %6532 = bitcast i32 %6531 to float
  %6533 = fmul fast float %6124, 0x3FD80E9D60000000
  %6534 = fmul fast float %6533, %6488
  %6535 = fadd fast float %6532, %6534
  %6536 = bitcast float %6535 to i32
  %6537 = sub nsw i32 2129859010, %6536
  %6538 = bitcast i32 %6537 to float
  %6539 = fmul fast float %2372, %6526
  %6540 = fmul fast float %6539, %6532
  %6541 = fmul fast float %6540, %6538
  %6542 = fmul fast float %3663, 0x3FF9999980000000
  %6543 = fsub fast float 5.000000e+00, %6542
  %6544 = call float @dx.op.unary.f32(i32 6, float %6478)  ; FAbs(value)
  %6545 = fsub fast float 1.000000e+00, %6544
  %6546 = fmul fast float %3663, 0x41D9660740000000
  %6547 = fadd fast float %6546, 0xC1EFBF8940000000
  %6548 = bitcast float %6545 to i32
  %6549 = sitofp i32 %6548 to float
  %6550 = fmul fast float %6549, %6543
  %6551 = fadd fast float %6547, %6550
  %6552 = fptosi float %6551 to i32
  %6553 = bitcast i32 %6552 to float
  %6554 = fsub fast float 1.000000e+00, %2346
  %6555 = fsub fast float 1.000000e+00, %2347
  %6556 = fsub fast float 1.000000e+00, %2352
  %6557 = fmul fast float %6553, %6554
  %6558 = fmul fast float %6553, %6555
  %6559 = fmul fast float %6553, %6556
  %6560 = fadd fast float %6557, %2346
  %6561 = fadd fast float %6558, %2347
  %6562 = fadd fast float %6559, %2352
  br i1 %3686, label %6563, label %6586

; <label>:6563                                    ; preds = %6449
  %6564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1685, float %6544, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6565 = extractvalue %dx.types.ResRet.f32 %6564, 0
  %6566 = extractvalue %dx.types.ResRet.f32 %6564, 1
  %6567 = extractvalue %dx.types.ResRet.f32 %6564, 2
  %6568 = fadd fast float %6565, -5.000000e-01
  %6569 = fadd fast float %6566, -5.000000e-01
  %6570 = fadd fast float %6567, -5.000000e-01
  %6571 = fmul fast float %2346, 4.000000e+00
  %6572 = fmul fast float %6571, %6554
  %6573 = fmul fast float %6572, %6568
  %6574 = fmul fast float %2347, 4.000000e+00
  %6575 = fmul fast float %6574, %6555
  %6576 = fmul fast float %6575, %6569
  %6577 = fmul fast float %2352, 4.000000e+00
  %6578 = fmul fast float %6577, %6556
  %6579 = fmul fast float %6578, %6570
  %6580 = fadd fast float %6573, %6560
  %6581 = fadd fast float %6576, %6561
  %6582 = fadd fast float %6579, %6562
  %6583 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  %6584 = call float @dx.op.unary.f32(i32 7, float %6581)  ; Saturate(value)
  %6585 = call float @dx.op.unary.f32(i32 7, float %6582)  ; Saturate(value)
  br label %6586

; <label>:6586                                    ; preds = %6563, %6449
  %6587 = phi float [ %6583, %6563 ], [ %6560, %6449 ]
  %6588 = phi float [ %6584, %6563 ], [ %6561, %6449 ]
  %6589 = phi float [ %6585, %6563 ], [ %6562, %6449 ]
  %6590 = fmul fast float %6477, 9.843750e-01
  %6591 = fadd fast float %6590, 7.812500e-03
  %6592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6591, float %3667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6593 = extractvalue %dx.types.ResRet.f32 %6592, 0
  %6594 = extractvalue %dx.types.ResRet.f32 %6592, 1
  %6595 = extractvalue %dx.types.ResRet.f32 %6592, 2
  %6596 = extractvalue %dx.types.ResRet.f32 %6592, 3
  %6597 = fsub fast float %6595, %6593
  %6598 = fsub fast float %6596, %6594
  %6599 = fmul fast float %6597, %3673
  %6600 = fmul fast float %6598, %3673
  %6601 = fadd fast float %6599, %6593
  %6602 = fadd fast float %6600, %6594
  %6603 = fmul fast float %6601, %2346
  %6604 = fmul fast float %6601, %2347
  %6605 = fmul fast float %6601, %2352
  %6606 = fadd fast float %6603, %6602
  %6607 = fadd fast float %6604, %6602
  %6608 = fadd fast float %6605, %6602
  br i1 %3686, label %6609, label %6632

; <label>:6609                                    ; preds = %6586
  %6610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1685, float %6477, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6611 = extractvalue %dx.types.ResRet.f32 %6610, 0
  %6612 = extractvalue %dx.types.ResRet.f32 %6610, 1
  %6613 = extractvalue %dx.types.ResRet.f32 %6610, 2
  %6614 = fadd fast float %6611, -5.000000e-01
  %6615 = fadd fast float %6612, -5.000000e-01
  %6616 = fadd fast float %6613, -5.000000e-01
  %6617 = fmul fast float %2346, 4.000000e+00
  %6618 = fmul fast float %6617, %6554
  %6619 = fmul fast float %6618, %6614
  %6620 = fmul fast float %2347, 4.000000e+00
  %6621 = fmul fast float %6620, %6555
  %6622 = fmul fast float %6621, %6615
  %6623 = fmul fast float %2352, 4.000000e+00
  %6624 = fmul fast float %6623, %6556
  %6625 = fmul fast float %6624, %6616
  %6626 = fadd fast float %6619, %6606
  %6627 = fadd fast float %6622, %6607
  %6628 = fadd fast float %6625, %6608
  %6629 = call float @dx.op.unary.f32(i32 7, float %6626)  ; Saturate(value)
  %6630 = call float @dx.op.unary.f32(i32 7, float %6627)  ; Saturate(value)
  %6631 = call float @dx.op.unary.f32(i32 7, float %6628)  ; Saturate(value)
  br label %6632

; <label>:6632                                    ; preds = %6609, %6586
  %6633 = phi float [ %6629, %6609 ], [ %6606, %6586 ]
  %6634 = phi float [ %6630, %6609 ], [ %6607, %6586 ]
  %6635 = phi float [ %6631, %6609 ], [ %6608, %6586 ]
  %6636 = call float @dx.op.binary.f32(i32 35, float %6634, float %6635)  ; FMax(a,b)
  %6637 = call float @dx.op.binary.f32(i32 35, float %6633, float %6636)  ; FMax(a,b)
  %6638 = fsub fast float 1.000000e+00, %6637
  %6639 = call float @dx.op.binary.f32(i32 35, float %6502, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6640 = fdiv fast float %1085, %6639
  %6641 = fmul fast float %4233, %6640
  %6642 = fmul fast float %4235, %6640
  %6643 = fmul fast float %4237, %6640
  %6644 = call float @dx.op.unary.f32(i32 21, float %6641)  ; Exp(value)
  %6645 = call float @dx.op.unary.f32(i32 21, float %6642)  ; Exp(value)
  %6646 = call float @dx.op.unary.f32(i32 21, float %6643)  ; Exp(value)
  %6647 = call float @dx.op.unary.f32(i32 7, float %6644)  ; Saturate(value)
  %6648 = call float @dx.op.unary.f32(i32 7, float %6645)  ; Saturate(value)
  %6649 = call float @dx.op.unary.f32(i32 7, float %6646)  ; Saturate(value)
  %6650 = select i1 %4230, float %6647, float 0.000000e+00
  %6651 = select i1 %4231, float %6648, float 0.000000e+00
  %6652 = select i1 %4232, float %6649, float 0.000000e+00
  %6653 = fsub fast float -0.000000e+00, %2343
  %6654 = fsub fast float -0.000000e+00, %2344
  %6655 = fsub fast float -0.000000e+00, %2345
  %6656 = call float @dx.op.dot3.f32(i32 55, float %6162, float %6163, float %6164, float %6653, float %6654, float %6655)  ; Dot3(ax,ay,az,bx,by,bz)
  %6657 = call float @dx.op.unary.f32(i32 7, float %6656)  ; Saturate(value)
  %6658 = fmul fast float %6657, %6169
  %6659 = fmul fast float %6657, 9.843750e-01
  %6660 = fadd fast float %6659, 7.812500e-03
  %6661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6660, float %3667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  %6663 = extractvalue %dx.types.ResRet.f32 %6661, 1
  %6664 = extractvalue %dx.types.ResRet.f32 %6661, 2
  %6665 = extractvalue %dx.types.ResRet.f32 %6661, 3
  %6666 = fsub fast float %6664, %6662
  %6667 = fsub fast float %6665, %6663
  %6668 = fmul fast float %6666, %3673
  %6669 = fmul fast float %6667, %3673
  %6670 = fadd fast float %6668, %6662
  %6671 = fadd fast float %6669, %6663
  %6672 = fmul fast float %6670, %2346
  %6673 = fmul fast float %6670, %2347
  %6674 = fmul fast float %6670, %2352
  %6675 = fadd fast float %6672, %6671
  %6676 = fadd fast float %6673, %6671
  %6677 = fadd fast float %6674, %6671
  br i1 %3686, label %6678, label %6701

; <label>:6678                                    ; preds = %6632
  %6679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1685, float %6657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6680 = extractvalue %dx.types.ResRet.f32 %6679, 0
  %6681 = extractvalue %dx.types.ResRet.f32 %6679, 1
  %6682 = extractvalue %dx.types.ResRet.f32 %6679, 2
  %6683 = fadd fast float %6680, -5.000000e-01
  %6684 = fadd fast float %6681, -5.000000e-01
  %6685 = fadd fast float %6682, -5.000000e-01
  %6686 = fmul fast float %2346, 4.000000e+00
  %6687 = fmul fast float %6686, %6554
  %6688 = fmul fast float %6687, %6683
  %6689 = fmul fast float %2347, 4.000000e+00
  %6690 = fmul fast float %6689, %6555
  %6691 = fmul fast float %6690, %6684
  %6692 = fmul fast float %2352, 4.000000e+00
  %6693 = fmul fast float %6692, %6556
  %6694 = fmul fast float %6693, %6685
  %6695 = fadd fast float %6688, %6675
  %6696 = fadd fast float %6691, %6676
  %6697 = fadd fast float %6694, %6677
  %6698 = call float @dx.op.unary.f32(i32 7, float %6695)  ; Saturate(value)
  %6699 = call float @dx.op.unary.f32(i32 7, float %6696)  ; Saturate(value)
  %6700 = call float @dx.op.unary.f32(i32 7, float %6697)  ; Saturate(value)
  br label %6701

; <label>:6701                                    ; preds = %6678, %6632
  %6702 = phi float [ %6698, %6678 ], [ %6675, %6632 ]
  %6703 = phi float [ %6699, %6678 ], [ %6676, %6632 ]
  %6704 = phi float [ %6700, %6678 ], [ %6677, %6632 ]
  %6705 = call float @dx.op.binary.f32(i32 35, float %6703, float %6704)  ; FMax(a,b)
  %6706 = call float @dx.op.binary.f32(i32 35, float %6702, float %6705)  ; FMax(a,b)
  %6707 = fsub fast float 1.000000e+00, %6706
  %6708 = fmul fast float %2369, %4297
  %6709 = fadd fast float %4299, %6708
  %6710 = call float @dx.op.unary.f32(i32 7, float %6709)  ; Saturate(value)
  %6711 = fsub fast float %6489, %2360
  %6712 = fsub fast float %6490, %2361
  %6713 = fsub fast float %6491, %2362
  %6714 = call float @dx.op.dot3.f32(i32 55, float %6711, float %6712, float %6713, float %6711, float %6712, float %6713)  ; Dot3(ax,ay,az,bx,by,bz)
  %6715 = call float @dx.op.unary.f32(i32 25, float %6714)  ; Rsqrt(value)
  %6716 = fmul fast float %6711, %6715
  %6717 = fmul fast float %6712, %6715
  %6718 = fmul fast float %6713, %6715
  %6719 = call float @dx.op.dot3.f32(i32 55, float %6653, float %6654, float %6655, float %6716, float %6717, float %6718)  ; Dot3(ax,ay,az,bx,by,bz)
  %6720 = fmul fast float %6719, %6719
  %6721 = call float @dx.op.unary.f32(i32 6, float %6657)  ; FAbs(value)
  %6722 = call float @dx.op.binary.f32(i32 35, float %6710, float 0x3F847AE140000000)  ; FMax(a,b)
  %6723 = fmul fast float %6722, %6722
  %6724 = fmul fast float %6723, %6723
  %6725 = fsub fast float 1.000000e+00, %6724
  %6726 = fmul fast float %6504, %6725
  %6727 = fadd fast float %6726, %6724
  %6728 = bitcast float %6727 to i32
  %6729 = ashr i32 %6728, 1
  %6730 = add nsw i32 %6729, 532487669
  %6731 = bitcast i32 %6730 to float
  %6732 = fadd fast float %6731, %2354
  %6733 = fmul fast float %6724, %6720
  %6734 = fsub fast float 1.000000e+00, %6720
  %6735 = fadd fast float %6734, %6733
  %6736 = fmul fast float %6721, %6721
  %6737 = fmul fast float %6736, %6725
  %6738 = fadd fast float %6737, %6724
  %6739 = bitcast float %6738 to i32
  %6740 = ashr i32 %6739, 1
  %6741 = add nsw i32 %6740, 532487669
  %6742 = bitcast i32 %6741 to float
  %6743 = fadd fast float %6742, %6721
  %6744 = fmul fast float %6735, %6735
  %6745 = fmul fast float %6744, %6732
  %6746 = fmul fast float %6745, %6743
  %6747 = fdiv fast float 1.000000e+00, %6746
  %6748 = bitcast float %6724 to i32
  %6749 = sitofp i32 %6748 to float
  %6750 = fmul fast float %6749, 0x3FE7F73180000000
  %6751 = fadd fast float %6750, 0x41AFE27C40000000
  %6752 = fptosi float %6751 to i32
  %6753 = bitcast i32 %6752 to float
  %6754 = fadd fast float %6753, %6534
  %6755 = bitcast float %6754 to i32
  %6756 = sub nsw i32 2129859010, %6755
  %6757 = bitcast i32 %6756 to float
  %6758 = fmul fast float %6724, %6747
  %6759 = fmul fast float %6758, %6753
  %6760 = fmul fast float %6759, %6757
  br i1 %6154, label %6761, label %6771

; <label>:6761                                    ; preds = %6701
  %6762 = fmul fast float %6658, %6650
  %6763 = fmul fast float %6658, %6651
  %6764 = fmul fast float %6658, %6652
  %6765 = fmul fast float %6762, %6707
  %6766 = fmul fast float %6765, %6760
  %6767 = fmul fast float %6763, %6707
  %6768 = fmul fast float %6767, %6760
  %6769 = fmul fast float %6764, %6707
  %6770 = fmul fast float %6769, %6760
  br label %6771

; <label>:6771                                    ; preds = %6761, %6701
  %6772 = phi float [ %6766, %6761 ], [ 0.000000e+00, %6701 ]
  %6773 = phi float [ %6768, %6761 ], [ 0.000000e+00, %6701 ]
  %6774 = phi float [ %6770, %6761 ], [ 0.000000e+00, %6701 ]
  %6775 = fmul fast float %6587, %6541
  %6776 = fmul fast float %6588, %6541
  %6777 = fmul fast float %6589, %6541
  %6778 = fsub fast float 1.000000e+00, %6478
  %6779 = bitcast float %6778 to i32
  %6780 = sitofp i32 %6779 to float
  %6781 = fmul fast float %6780, 5.000000e+00
  %6782 = fadd fast float %6781, 0xC1EFBF8940000000
  %6783 = fptosi float %6782 to i32
  %6784 = bitcast i32 %6783 to float
  %6785 = fmul fast float %6784, %1684
  %6786 = fmul fast float %6638, %6785
  %6787 = fmul fast float %6786, %4225
  %6788 = fmul fast float %6786, %4226
  %6789 = fmul fast float %6786, %4227
  %6790 = fadd fast float %6787, %6775
  %6791 = fadd fast float %6788, %6776
  %6792 = fadd fast float %6789, %6777
  %6793 = fmul fast float %6790, %6484
  %6794 = fmul fast float %6791, %6484
  %6795 = fmul fast float %6792, %6484
  %6796 = fadd fast float %6793, %6772
  %6797 = fadd fast float %6794, %6773
  %6798 = fadd fast float %6795, %6774
  %6799 = fmul fast float %6466, %1708
  %6800 = fmul fast float %6799, %6484
  %6801 = fmul fast float %6800, %6638
  %6802 = fmul fast float %6467, %1708
  %6803 = fmul fast float %6802, %6484
  %6804 = fmul fast float %6803, %6638
  %6805 = fmul fast float %6468, %1708
  %6806 = fmul fast float %6805, %6484
  %6807 = fmul fast float %6806, %6638
  %6808 = fadd fast float %6801, %6098
  %6809 = fadd fast float %6804, %6099
  %6810 = fadd fast float %6807, %6100
  %6811 = fmul fast float %6799, %6796
  %6812 = fmul fast float %6802, %6797
  %6813 = fmul fast float %6805, %6798
  %6814 = fadd fast float %6811, %6095
  %6815 = fadd fast float %6812, %6096
  %6816 = fadd fast float %6813, %6097
  br label %6228

; <label>:6817                                    ; preds = %6228
  br label %6818

; <label>:6818                                    ; preds = %6817, %6061
  %6819 = phi float [ %6063, %6061 ], [ %6229, %6817 ]
  %6820 = phi float [ %6064, %6061 ], [ %6230, %6817 ]
  %6821 = phi float [ %6065, %6061 ], [ %6231, %6817 ]
  %6822 = phi float [ %6066, %6061 ], [ %6232, %6817 ]
  %6823 = phi float [ %6067, %6061 ], [ %6233, %6817 ]
  %6824 = phi float [ %6068, %6061 ], [ %6234, %6817 ]
  %6825 = add i32 %6062, 1
  %6826 = icmp ugt i32 %6825, %6058
  br i1 %6826, label %6827, label %6061

; <label>:6827                                    ; preds = %6818
  br label %6828

; <label>:6828                                    ; preds = %6827, %6011, %6001
  %6829 = phi float [ %6002, %6001 ], [ %6002, %6011 ], [ %6819, %6827 ]
  %6830 = phi float [ %6003, %6001 ], [ %6003, %6011 ], [ %6820, %6827 ]
  %6831 = phi float [ %6004, %6001 ], [ %6004, %6011 ], [ %6821, %6827 ]
  %6832 = phi float [ %6005, %6001 ], [ %6005, %6011 ], [ %6822, %6827 ]
  %6833 = phi float [ %6006, %6001 ], [ %6006, %6011 ], [ %6823, %6827 ]
  %6834 = phi float [ %6007, %6001 ], [ %6007, %6011 ], [ %6824, %6827 ]
  %6835 = fmul fast float %1708, %4254
  %6836 = fsub fast float -0.000000e+00, %6835
  %6837 = fmul fast float %1708, %4255
  %6838 = fsub fast float -0.000000e+00, %6837
  %6839 = fmul fast float %1708, %4256
  %6840 = fsub fast float -0.000000e+00, %6839
  %6841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6842 = extractvalue %dx.types.CBufRet.f32 %6841, 0
  %6843 = fmul fast float %6842, %4260
  %6844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.f32 %6844, 3
  %6846 = fsub fast float 1.000000e+00, %1680
  %6847 = call float @dx.op.unary.f32(i32 7, float %6846)  ; Saturate(value)
  %6848 = fadd fast float %6834, %1679
  %6849 = fmul fast float %6848, %1680
  %6850 = fmul fast float %6847, %6845
  %6851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6852 = extractvalue %dx.types.CBufRet.f32 %6851, 3
  %6853 = fmul fast float %6832, %2340
  %6854 = fmul fast float %6833, %2341
  %6855 = fmul fast float %6834, %2342
  %6856 = fcmp fast ogt float %87, %197
  %6857 = and i1 %6856, %2145
  %6858 = or i1 %2151, %6857
  %6859 = icmp eq i32 %2144, 2
  %6860 = fcmp fast ole float %87, %197
  %6861 = and i1 %6860, %6859
  %6862 = or i1 %6861, %6858
  br i1 %6857, label %6863, label %7122

; <label>:6863                                    ; preds = %6828
  %6864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6864, 2
  %6866 = extractvalue %dx.types.CBufRet.f32 %6864, 3
  %6867 = fmul fast float %6865, %99
  %6868 = fmul fast float %6866, %100
  %6869 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  %6870 = call float @dx.op.unary.f32(i32 7, float %6868)  ; Saturate(value)
  %6871 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6869, float %6870, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6872 = extractvalue %dx.types.ResRet.f32 %6871, 0
  %6873 = extractvalue %dx.types.ResRet.f32 %6871, 1
  %6874 = extractvalue %dx.types.ResRet.f32 %6871, 2
  %6875 = extractvalue %dx.types.ResRet.f32 %6871, 3
  %6876 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6869, float %6870, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6877 = extractvalue %dx.types.ResRet.f32 %6876, 0
  %6878 = extractvalue %dx.types.ResRet.f32 %6876, 1
  %6879 = extractvalue %dx.types.ResRet.f32 %6876, 2
  %6880 = extractvalue %dx.types.ResRet.f32 %6876, 3
  %6881 = call float @dx.op.binary.f32(i32 35, float %6873, float %6874)  ; FMax(a,b)
  %6882 = call float @dx.op.binary.f32(i32 35, float %6872, float %6881)  ; FMax(a,b)
  %6883 = call float @dx.op.binary.f32(i32 35, float %6882, float %6875)  ; FMax(a,b)
  %6884 = call float @dx.op.binary.f32(i32 36, float %6878, float %6879)  ; FMin(a,b)
  %6885 = call float @dx.op.binary.f32(i32 36, float %6877, float %6884)  ; FMin(a,b)
  %6886 = call float @dx.op.binary.f32(i32 36, float %6885, float %6880)  ; FMin(a,b)
  %6887 = fmul fast float %6883, 2.550000e+02
  %6888 = fadd fast float %6887, 0x3F70101020000000
  %6889 = fptoui float %6888 to i32
  %6890 = fmul fast float %6886, 2.550000e+02
  %6891 = fadd fast float %6890, 0x3F70101020000000
  %6892 = fptoui float %6891 to i32
  %6893 = icmp ult i32 %6889, %6892
  br i1 %6893, label %6894, label %7062

; <label>:6894                                    ; preds = %6863
  %6895 = fcmp fast ogt float %86, 9.843750e-01
  %6896 = fadd fast float %87, -4.000000e+00
  %6897 = select i1 %6895, float -4.000000e+00, float %6896
  %6898 = call float @dx.op.binary.f32(i32 35, float %6897, float 0.000000e+00)  ; FMax(a,b)
  %6899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6900 = extractvalue %dx.types.CBufRet.f32 %6899, 0
  %6901 = fadd fast float %6900, %6898
  %6902 = extractvalue %dx.types.CBufRet.f32 %6899, 2
  %6903 = fmul fast float %6901, %6902
  %6904 = call float @dx.op.unary.f32(i32 23, float %6903)  ; Log(value)
  %6905 = extractvalue %dx.types.CBufRet.f32 %6899, 3
  %6906 = fmul fast float %6905, %6904
  %6907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6908 = extractvalue %dx.types.CBufRet.f32 %6907, 2
  %6909 = fmul fast float %6906, %6908
  %6910 = call float @dx.op.unary.f32(i32 7, float %6909)  ; Saturate(value)
  %6911 = uitofp i32 %6889 to float
  %6912 = uitofp i32 %6892 to float
  %6913 = fadd fast float %6911, 5.000000e-01
  %6914 = fadd fast float %6912, 5.000000e-01
  %6915 = fmul fast float %6908, %6913
  %6916 = fmul fast float %6908, %6914
  %6917 = fadd fast float %6915, 0x3F0FFB4800000000
  %6918 = fadd fast float %6916, 0xBF0FFB4800000000
  %6919 = call float @dx.op.binary.f32(i32 35, float %6910, float %6917)  ; FMax(a,b)
  %6920 = call float @dx.op.binary.f32(i32 36, float %6919, float %6918)  ; FMin(a,b)
  %6921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6922 = extractvalue %dx.types.CBufRet.f32 %6921, 1
  %6923 = extractvalue %dx.types.CBufRet.f32 %6921, 2
  %6924 = extractvalue %dx.types.CBufRet.f32 %6921, 0
  %6925 = fmul fast float %6922, %6920
  %6926 = fadd fast float %6924, %6925
  %6927 = fadd fast float %6924, %6923
  %6928 = fsub fast float %6922, %6923
  %6929 = fadd fast float %6928, %6924
  %6930 = call float @dx.op.binary.f32(i32 35, float %6926, float %6927)  ; FMax(a,b)
  %6931 = call float @dx.op.binary.f32(i32 36, float %6930, float %6929)  ; FMin(a,b)
  %6932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6869, float %6870, float %6931, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6933 = extractvalue %dx.types.ResRet.f32 %6932, 0
  %6934 = extractvalue %dx.types.ResRet.f32 %6932, 1
  %6935 = extractvalue %dx.types.ResRet.f32 %6932, 2
  %6936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.i32 %6936, 0
  %6938 = extractvalue %dx.types.CBufRet.i32 %6936, 1
  %6939 = uitofp i32 %6937 to float
  %6940 = uitofp i32 %6938 to float
  %6941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6942 = extractvalue %dx.types.CBufRet.f32 %6941, 0
  %6943 = extractvalue %dx.types.CBufRet.f32 %6941, 1
  %6944 = fmul fast float %6939, %6869
  %6945 = fmul fast float %6940, %6870
  %6946 = fadd fast float %6944, -5.000000e-01
  %6947 = fadd fast float %6945, -5.000000e-01
  %6948 = call float @dx.op.unary.f32(i32 22, float %6946)  ; Frc(value)
  %6949 = call float @dx.op.unary.f32(i32 22, float %6947)  ; Frc(value)
  %6950 = fmul fast float %6948, %6948
  %6951 = fmul fast float %6950, %6948
  %6952 = fsub fast float 3.000000e+00, %6948
  %6953 = fmul fast float %6950, %6952
  %6954 = fmul fast float %6948, 3.000000e+00
  %6955 = fmul fast float %6951, 3.000000e+00
  %6956 = fmul fast float %6950, 6.000000e+00
  %6957 = fsub fast float %6955, %6956
  %6958 = fadd fast float %6957, 4.000000e+00
  %6959 = fmul fast float %6958, 0x3FC5555560000000
  %6960 = fmul fast float %6951, -3.000000e+00
  %6961 = fadd fast float %6950, %6948
  %6962 = fmul fast float %6961, 3.000000e+00
  %6963 = fadd fast float %6960, 1.000000e+00
  %6964 = fadd fast float %6963, %6962
  %6965 = fmul fast float %6951, 0x3FC5555560000000
  %6966 = fmul fast float %6949, %6949
  %6967 = fmul fast float %6966, %6949
  %6968 = fsub fast float 3.000000e+00, %6949
  %6969 = fmul fast float %6966, %6968
  %6970 = fmul fast float %6949, 3.000000e+00
  %6971 = fmul fast float %6967, 3.000000e+00
  %6972 = fmul fast float %6966, 6.000000e+00
  %6973 = fsub fast float %6971, %6972
  %6974 = fadd fast float %6973, 4.000000e+00
  %6975 = fmul fast float %6974, 0x3FC5555560000000
  %6976 = fmul fast float %6967, -3.000000e+00
  %6977 = fadd fast float %6966, %6949
  %6978 = fmul fast float %6977, 3.000000e+00
  %6979 = fadd fast float %6976, 1.000000e+00
  %6980 = fadd fast float %6979, %6978
  %6981 = fmul fast float %6967, 0x3FC5555560000000
  %6982 = fadd fast float %6948, 1.000000e+00
  %6983 = fsub fast float 1.000000e+00, %6954
  %6984 = fadd fast float %6983, %6953
  %6985 = fadd fast float %6984, %6958
  %6986 = fmul fast float %6985, 0x3FC5555560000000
  %6987 = fdiv fast float %6959, %6986
  %6988 = fsub fast float %6982, %6987
  %6989 = fsub fast float 1.000000e+00, %6948
  %6990 = fadd fast float %6964, %6951
  %6991 = fmul fast float %6990, 0x3FC5555560000000
  %6992 = fdiv fast float %6965, %6991
  %6993 = fadd fast float %6989, %6992
  %6994 = fadd fast float %6949, 1.000000e+00
  %6995 = fsub fast float 1.000000e+00, %6970
  %6996 = fadd fast float %6995, %6969
  %6997 = fadd fast float %6996, %6974
  %6998 = fmul fast float %6997, 0x3FC5555560000000
  %6999 = fdiv fast float %6975, %6998
  %7000 = fsub fast float %6994, %6999
  %7001 = fsub fast float 1.000000e+00, %6949
  %7002 = fadd fast float %6980, %6967
  %7003 = fmul fast float %7002, 0x3FC5555560000000
  %7004 = fdiv fast float %6981, %7003
  %7005 = fadd fast float %7004, %7001
  %7006 = fmul fast float %6988, %6942
  %7007 = fsub fast float %6869, %7006
  %7008 = fmul fast float %6993, %6942
  %7009 = fadd fast float %7008, %6869
  %7010 = fmul fast float %7005, %6943
  %7011 = fadd fast float %7010, %6870
  %7012 = fmul fast float %7000, %6943
  %7013 = fsub fast float %6870, %7012
  %7014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7007, float %7013, float %6931, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7015 = extractvalue %dx.types.ResRet.f32 %7014, 0
  %7016 = extractvalue %dx.types.ResRet.f32 %7014, 1
  %7017 = extractvalue %dx.types.ResRet.f32 %7014, 2
  %7018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7009, float %7013, float %6931, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7019 = extractvalue %dx.types.ResRet.f32 %7018, 0
  %7020 = extractvalue %dx.types.ResRet.f32 %7018, 1
  %7021 = extractvalue %dx.types.ResRet.f32 %7018, 2
  %7022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7007, float %7011, float %6931, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7023 = extractvalue %dx.types.ResRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.ResRet.f32 %7022, 1
  %7025 = extractvalue %dx.types.ResRet.f32 %7022, 2
  %7026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7009, float %7011, float %6931, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7027 = extractvalue %dx.types.ResRet.f32 %7026, 0
  %7028 = extractvalue %dx.types.ResRet.f32 %7026, 1
  %7029 = extractvalue %dx.types.ResRet.f32 %7026, 2
  %7030 = fsub fast float %7023, %7015
  %7031 = fsub fast float %7024, %7016
  %7032 = fsub fast float %7025, %7017
  %7033 = fmul fast float %7030, %7003
  %7034 = fmul fast float %7031, %7003
  %7035 = fmul fast float %7032, %7003
  %7036 = fadd fast float %7033, %7015
  %7037 = fadd fast float %7034, %7016
  %7038 = fadd fast float %7035, %7017
  %7039 = fsub fast float %7027, %7019
  %7040 = fsub fast float %7028, %7020
  %7041 = fsub fast float %7029, %7021
  %7042 = fmul fast float %7039, %7003
  %7043 = fmul fast float %7040, %7003
  %7044 = fmul fast float %7041, %7003
  %7045 = fsub fast float %7019, %7036
  %7046 = fadd fast float %7045, %7042
  %7047 = fsub fast float %7020, %7037
  %7048 = fadd fast float %7047, %7043
  %7049 = fsub fast float %7021, %7038
  %7050 = fadd fast float %7049, %7044
  %7051 = fmul fast float %7046, %6991
  %7052 = fmul fast float %7048, %6991
  %7053 = fmul fast float %7050, %6991
  %7054 = fadd fast float %7051, %7036
  %7055 = fadd fast float %7052, %7037
  %7056 = fadd fast float %7053, %7038
  %7057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7058 = extractvalue %dx.types.CBufRet.f32 %7057, 1
  %7059 = fmul fast float %7054, %7058
  %7060 = fmul fast float %7055, %7058
  %7061 = fmul fast float %7056, %7058
  br label %7062

; <label>:7062                                    ; preds = %6894, %6863
  %7063 = phi float [ %6933, %6894 ], [ 1.000000e+00, %6863 ]
  %7064 = phi float [ %6934, %6894 ], [ 1.000000e+00, %6863 ]
  %7065 = phi float [ %6935, %6894 ], [ 1.000000e+00, %6863 ]
  %7066 = phi float [ %7059, %6894 ], [ 0.000000e+00, %6863 ]
  %7067 = phi float [ %7060, %6894 ], [ 0.000000e+00, %6863 ]
  %7068 = phi float [ %7061, %6894 ], [ 0.000000e+00, %6863 ]
  %7069 = fmul fast float %7066, %6836
  %7070 = fmul fast float %7067, %6838
  %7071 = fmul fast float %7068, %6840
  %7072 = call float @dx.op.dot3.f32(i32 55, float %7063, float %7064, float %7065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7073 = call float @dx.op.dot3.f32(i32 55, float %7069, float %7070, float %7071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7074 = select i1 %237, float %7072, float %7063
  %7075 = select i1 %237, float %7072, float %7064
  %7076 = select i1 %237, float 1.000000e+00, float %7065
  %7077 = select i1 %237, float %7073, float %7069
  %7078 = select i1 %237, float 0.000000e+00, float %7070
  %7079 = select i1 %237, float 0.000000e+00, float %7071
  %7080 = fmul fast float %7074, %6853
  %7081 = fmul fast float %7075, %6854
  %7082 = fmul fast float %7076, %6855
  %7083 = fadd fast float %7080, %7077
  %7084 = fadd fast float %7081, %7078
  %7085 = fadd fast float %7079, %7082
  %7086 = fmul fast float %7074, %6829
  %7087 = fmul fast float %7075, %6830
  %7088 = fmul fast float %7076, %6831
  %7089 = fmul fast float %99, 2.000000e+00
  %7090 = fmul fast float %7089, %6865
  %7091 = fmul fast float %100, 2.000000e+00
  %7092 = fmul fast float %7091, %6866
  %7093 = fsub fast float 1.000000e+00, %7090
  %7094 = fsub fast float 1.000000e+00, %7092
  %7095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7096 = extractvalue %dx.types.CBufRet.f32 %7095, 0
  %7097 = extractvalue %dx.types.CBufRet.f32 %7095, 1
  %7098 = extractvalue %dx.types.CBufRet.f32 %7095, 2
  %7099 = fmul fast float %7093, %7096
  %7100 = fmul fast float %7093, %7097
  %7101 = fmul fast float %7093, %7098
  %7102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7103 = extractvalue %dx.types.CBufRet.f32 %7102, 0
  %7104 = extractvalue %dx.types.CBufRet.f32 %7102, 1
  %7105 = extractvalue %dx.types.CBufRet.f32 %7102, 2
  %7106 = fmul fast float %7094, %7103
  %7107 = fmul fast float %7094, %7104
  %7108 = fmul fast float %7094, %7105
  %7109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7110 = extractvalue %dx.types.CBufRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.CBufRet.f32 %7109, 1
  %7112 = extractvalue %dx.types.CBufRet.f32 %7109, 2
  %7113 = fadd fast float %7106, %7110
  %7114 = fadd fast float %7113, %7099
  %7115 = fadd fast float %7107, %7111
  %7116 = fadd fast float %7115, %7100
  %7117 = fadd fast float %7108, %7112
  %7118 = fadd fast float %7117, %7101
  %7119 = fmul fast float %7114, %197
  %7120 = fmul fast float %7116, %197
  %7121 = fmul fast float %7118, %197
  br label %7122

; <label>:7122                                    ; preds = %7062, %6828
  %7123 = phi float [ %7119, %7062 ], [ %146, %6828 ]
  %7124 = phi float [ %7120, %7062 ], [ %147, %6828 ]
  %7125 = phi float [ %7121, %7062 ], [ %148, %6828 ]
  %7126 = phi float [ %197, %7062 ], [ %87, %6828 ]
  %7127 = phi float [ %7083, %7062 ], [ %6853, %6828 ]
  %7128 = phi float [ %7084, %7062 ], [ %6854, %6828 ]
  %7129 = phi float [ %7085, %7062 ], [ %6855, %6828 ]
  %7130 = phi float [ %7086, %7062 ], [ %6829, %6828 ]
  %7131 = phi float [ %7087, %7062 ], [ %6830, %6828 ]
  %7132 = phi float [ %7088, %7062 ], [ %6831, %6828 ]
  %7133 = phi float [ %7063, %7062 ], [ 1.000000e+00, %6828 ]
  br i1 %6862, label %8288, label %7134

; <label>:7134                                    ; preds = %7122
  %7135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7136 = extractvalue %dx.types.CBufRet.f32 %7135, 0
  %7137 = extractvalue %dx.types.CBufRet.f32 %7135, 1
  %7138 = extractvalue %dx.types.CBufRet.f32 %7135, 2
  %7139 = extractvalue %dx.types.CBufRet.f32 %7135, 3
  %7140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7141 = extractvalue %dx.types.CBufRet.f32 %7140, 0
  %7142 = extractvalue %dx.types.CBufRet.f32 %7140, 1
  %7143 = extractvalue %dx.types.CBufRet.f32 %7140, 2
  %7144 = extractvalue %dx.types.CBufRet.f32 %7140, 3
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 0
  %7147 = extractvalue %dx.types.CBufRet.f32 %7145, 1
  %7148 = extractvalue %dx.types.CBufRet.f32 %7145, 2
  %7149 = extractvalue %dx.types.CBufRet.f32 %7145, 3
  %7150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7151 = extractvalue %dx.types.CBufRet.f32 %7150, 0
  %7152 = extractvalue %dx.types.CBufRet.f32 %7150, 1
  %7153 = extractvalue %dx.types.CBufRet.f32 %7150, 2
  %7154 = extractvalue %dx.types.CBufRet.f32 %7150, 3
  %7155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7156 = extractvalue %dx.types.CBufRet.f32 %7155, 3
  %7157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.f32 %7157, 3
  %7159 = extractvalue %dx.types.CBufRet.f32 %7157, 0
  %7160 = extractvalue %dx.types.CBufRet.f32 %7157, 1
  %7161 = extractvalue %dx.types.CBufRet.f32 %7157, 2
  %7162 = fcmp fast olt float %7161, -5.000000e-01
  %7163 = call float @dx.op.dot3.f32(i32 55, float %7123, float %7124, float %7125, float %7123, float %7124, float %7125)  ; Dot3(ax,ay,az,bx,by,bz)
  %7164 = call float @dx.op.unary.f32(i32 25, float %7163)  ; Rsqrt(value)
  %7165 = fmul fast float %7164, %7163
  %7166 = fmul fast float %7164, %7123
  %7167 = fmul fast float %7164, %7124
  %7168 = fmul fast float %7164, %7125
  %7169 = fadd fast float %7165, %7139
  %7170 = call float @dx.op.dot3.f32(i32 55, float %7166, float %7167, float %7168, float %7136, float %7137, float %7138)  ; Dot3(ax,ay,az,bx,by,bz)
  %7171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7172 = extractvalue %dx.types.CBufRet.i32 %7171, 1
  %7173 = and i32 %7172, 1
  %7174 = icmp ne i32 %7173, 0
  %7175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7176 = extractvalue %dx.types.CBufRet.f32 %7175, 2
  %7177 = fcmp fast ogt float %7176, 0.000000e+00
  %7178 = and i1 %7174, %7177
  br i1 %7178, label %7179, label %7585, !dx.controlflow.hints !148

; <label>:7179                                    ; preds = %7134
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 3
  %7182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7183 = extractvalue %dx.types.CBufRet.f32 %7182, 2
  %7184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7185 = extractvalue %dx.types.CBufRet.f32 %7184, 2
  %7186 = fsub fast float %7183, %7185
  %7187 = and i32 %7172, 2
  %7188 = extractvalue %dx.types.CBufRet.i32 %7171, 0
  %7189 = call i32 @dx.op.binary.i32(i32 40, i32 %7188, i32 3)  ; UMin(a,b)
  %7190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7191 = extractvalue %dx.types.CBufRet.f32 %7190, 0
  %7192 = extractvalue %dx.types.CBufRet.f32 %7190, 1
  %7193 = extractvalue %dx.types.CBufRet.f32 %7184, 0
  %7194 = extractvalue %dx.types.CBufRet.f32 %7184, 1
  %7195 = fsub fast float %7191, %7193
  %7196 = fsub fast float %7192, %7194
  %7197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7198 = extractvalue %dx.types.CBufRet.f32 %7197, 0
  %7199 = fcmp fast ogt float %7198, 0.000000e+00
  %7200 = fsub fast float -0.000000e+00, %7195
  %7201 = fsub fast float -0.000000e+00, %7196
  %7202 = call float @dx.op.dot2.f32(i32 54, float %7166, float %7167, float %7166, float %7167)  ; Dot2(ax,ay,bx,by)
  %7203 = call float @dx.op.dot2.f32(i32 54, float %7166, float %7167, float %7200, float %7201)  ; Dot2(ax,ay,bx,by)
  %7204 = fmul fast float %7203, 2.000000e+00
  %7205 = call float @dx.op.dot2.f32(i32 54, float %7200, float %7201, float %7200, float %7201)  ; Dot2(ax,ay,bx,by)
  %7206 = fmul fast float %7198, %7198
  %7207 = fsub fast float %7205, %7206
  %7208 = fmul fast float %7204, %7204
  %7209 = fmul fast float %7202, 4.000000e+00
  %7210 = fmul fast float %7209, %7207
  %7211 = fsub fast float %7208, %7210
  %7212 = fcmp fast ogt float %7211, 0.000000e+00
  br i1 %7212, label %7213, label %7228

; <label>:7213                                    ; preds = %7179
  %7214 = fcmp fast ogt float %7204, 0.000000e+00
  %7215 = call float @dx.op.unary.f32(i32 24, float %7211)  ; Sqrt(value)
  %7216 = fsub fast float -0.000000e+00, %7215
  %7217 = select i1 %7214, float %7215, float %7216
  %7218 = fadd fast float %7217, %7204
  %7219 = fmul float %7218, -5.000000e-01
  %7220 = fdiv fast float %7219, %7202
  %7221 = call float @dx.op.binary.f32(i32 35, float %7220, float 0.000000e+00)  ; FMax(a,b)
  %7222 = call float @dx.op.binary.f32(i32 36, float %7165, float %7221)  ; FMin(a,b)
  %7223 = fdiv fast float %7207, %7219
  %7224 = call float @dx.op.binary.f32(i32 35, float %7223, float 0.000000e+00)  ; FMax(a,b)
  %7225 = call float @dx.op.binary.f32(i32 36, float %7165, float %7224)  ; FMin(a,b)
  %7226 = call float @dx.op.binary.f32(i32 36, float %7222, float %7225)  ; FMin(a,b)
  %7227 = call float @dx.op.binary.f32(i32 35, float %7222, float %7225)  ; FMax(a,b)
  br label %7228

; <label>:7228                                    ; preds = %7213, %7179
  %7229 = phi float [ %7227, %7213 ], [ -1.000000e+00, %7179 ]
  %7230 = phi float [ %7226, %7213 ], [ -1.000000e+00, %7179 ]
  %7231 = phi i1 [ true, %7213 ], [ false, %7179 ]
  %7232 = and i1 %7199, %7231
  br i1 %7232, label %7233, label %7235

; <label>:7233                                    ; preds = %7228
  %7234 = fcmp fast oeq float %7230, %7229
  br i1 %7234, label %7538, label %7236

; <label>:7235                                    ; preds = %7228
  br i1 %7199, label %7538, label %7236

; <label>:7236                                    ; preds = %7235, %7233
  %7237 = phi float [ %7165, %7235 ], [ %7229, %7233 ]
  %7238 = phi float [ 0.000000e+00, %7235 ], [ %7230, %7233 ]
  %7239 = icmp ne i32 %7187, 0
  %7240 = fmul fast float %7237, %7168
  %7241 = fadd fast float %7240, %7181
  %7242 = fmul fast float %7241, %7237
  %7243 = select i1 %7239, float 0.000000e+00, float %7242
  %7244 = fcmp fast oeq float %7168, 0.000000e+00
  %7245 = fdiv fast float %7186, %7168
  %7246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7245)  ; FMax(a,b)
  %7247 = select i1 %7244, float %7237, float %7246
  %7248 = call float @dx.op.binary.f32(i32 36, float %7237, float %7247)  ; FMin(a,b)
  %7249 = fcmp fast ogt float %7168, 0.000000e+00
  %7250 = fcmp fast olt float %7186, 0.000000e+00
  br i1 %7249, label %7251, label %7308

; <label>:7251                                    ; preds = %7236
  %7252 = icmp eq i32 %7187, 0
  br i1 %7250, label %7253, label %7297

; <label>:7253                                    ; preds = %7251
  %7254 = select i1 %7252, float %7237, float 0.000000e+00
  %7255 = fsub fast float -0.000000e+00, %7254
  %7256 = call float @dx.op.unary.f32(i32 6, float %7255)  ; FAbs(value)
  %7257 = fmul fast float %7254, %7168
  %7258 = fadd fast float %7257, %7181
  %7259 = fmul fast float %7256, %7258
  %7260 = fsub fast float %7243, %7259
  %7261 = fsub fast float %7237, %7256
  %7262 = select i1 %7252, float %7261, float 0.000000e+00
  %7263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7264 = extractvalue %dx.types.CBufRet.f32 %7263, 0
  %7265 = extractvalue %dx.types.CBufRet.f32 %7263, 1
  %7266 = extractvalue %dx.types.CBufRet.f32 %7263, 2
  %7267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7268 = extractvalue %dx.types.CBufRet.f32 %7267, 0
  %7269 = extractvalue %dx.types.CBufRet.f32 %7267, 1
  %7270 = extractvalue %dx.types.CBufRet.f32 %7267, 2
  %7271 = extractvalue %dx.types.CBufRet.f32 %7267, 3
  %7272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7273 = extractvalue %dx.types.CBufRet.f32 %7272, 3
  %7274 = call float @dx.op.binary.f32(i32 36, float %7260, float %7273)  ; FMin(a,b)
  %7275 = fmul fast float %7271, %7262
  %7276 = call float @dx.op.unary.f32(i32 7, float %7275)  ; Saturate(value)
  %7277 = fsub fast float %7268, %7264
  %7278 = fsub fast float %7269, %7265
  %7279 = fsub fast float %7270, %7266
  %7280 = fmul fast float %7276, %7277
  %7281 = fmul fast float %7276, %7278
  %7282 = fmul fast float %7276, %7279
  %7283 = fadd fast float %7280, %7264
  %7284 = fadd fast float %7281, %7265
  %7285 = fadd fast float %7282, %7266
  %7286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7287 = extractvalue %dx.types.CBufRet.f32 %7286, 0
  %7288 = extractvalue %dx.types.CBufRet.f32 %7286, 1
  %7289 = fadd fast float %7288, %7287
  %7290 = call float @dx.op.unary.f32(i32 7, float %7289)  ; Saturate(value)
  %7291 = extractvalue %dx.types.CBufRet.f32 %7286, 2
  %7292 = extractvalue %dx.types.CBufRet.f32 %7286, 3
  %7293 = fadd fast float %7292, %7291
  %7294 = call float @dx.op.unary.f32(i32 7, float %7293)  ; Saturate(value)
  %7295 = fmul fast float %7290, %7274
  %7296 = fmul fast float %7295, %7294
  br label %7538

; <label>:7297                                    ; preds = %7251
  br i1 %7252, label %7298, label %7319

; <label>:7298                                    ; preds = %7297
  %7299 = call float @dx.op.binary.f32(i32 36, float %7248, float %7238)  ; FMin(a,b)
  %7300 = fsub fast float %7248, %7299
  %7301 = fsub fast float %7300, %7237
  %7302 = call float @dx.op.unary.f32(i32 6, float %7301)  ; FAbs(value)
  %7303 = fadd fast float %7300, %7237
  %7304 = fmul fast float %7303, %7168
  %7305 = fadd fast float %7304, %7181
  %7306 = fmul fast float %7305, %7302
  %7307 = fsub fast float %7243, %7306
  br label %7319

; <label>:7308                                    ; preds = %7236
  br i1 %7250, label %7309, label %7319

; <label>:7309                                    ; preds = %7308
  %7310 = call float @dx.op.binary.f32(i32 35, float %7238, float %7248)  ; FMax(a,b)
  %7311 = icmp eq i32 %7187, 0
  %7312 = select i1 %7311, float %7248, float 0.000000e+00
  %7313 = fsub fast float -0.000000e+00, %7312
  %7314 = call float @dx.op.unary.f32(i32 6, float %7313)  ; FAbs(value)
  %7315 = fmul fast float %7312, %7168
  %7316 = fadd fast float %7315, %7181
  %7317 = fmul fast float %7314, %7316
  %7318 = fsub fast float %7243, %7317
  br label %7319

; <label>:7319                                    ; preds = %7309, %7308, %7298, %7297
  %7320 = phi float [ %7238, %7297 ], [ %7238, %7298 ], [ %7310, %7309 ], [ %7238, %7308 ]
  %7321 = phi float [ 0.000000e+00, %7297 ], [ %7302, %7298 ], [ %7314, %7309 ], [ 0.000000e+00, %7308 ]
  %7322 = phi float [ %7243, %7297 ], [ %7307, %7298 ], [ %7318, %7309 ], [ %7243, %7308 ]
  %7323 = phi float [ %7248, %7297 ], [ %7248, %7298 ], [ %7237, %7309 ], [ %7237, %7308 ]
  %7324 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %7324, align 4, !tbaa !135, !noalias !149
  %7325 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %7325, align 4, !tbaa !135, !noalias !149
  %7326 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %7326, align 4, !tbaa !135, !noalias !149
  %7327 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7327, align 4, !tbaa !135, !noalias !149
  %7328 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7328, align 4, !tbaa !135, !noalias !149
  %7329 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7329, align 4, !tbaa !135, !noalias !149
  %7330 = icmp sgt i32 %7189, 0
  br i1 %7330, label %7331, label %7392

; <label>:7331                                    ; preds = %7319
  br label %7332

; <label>:7332                                    ; preds = %7381, %7331
  %7333 = phi i32 [ %7382, %7381 ], [ 0, %7331 ]
  %7334 = phi i32 [ %7383, %7381 ], [ 0, %7331 ]
  %7335 = add nuw i32 %7334, 171
  %7336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %7335)  ; CBufferLoadLegacy(handle,regIndex)
  %7337 = extractvalue %dx.types.CBufRet.f32 %7336, 0
  %7338 = extractvalue %dx.types.CBufRet.f32 %7336, 1
  %7339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7340 = extractvalue %dx.types.CBufRet.f32 %7339, 0
  %7341 = extractvalue %dx.types.CBufRet.f32 %7339, 1
  %7342 = fsub fast float %7337, %7340
  %7343 = fsub fast float %7338, %7341
  %7344 = extractvalue %dx.types.CBufRet.f32 %7336, 2
  %7345 = fsub fast float -0.000000e+00, %7342
  %7346 = fsub fast float -0.000000e+00, %7343
  %7347 = call float @dx.op.dot2.f32(i32 54, float %7166, float %7167, float %7345, float %7346)  ; Dot2(ax,ay,bx,by)
  %7348 = fmul fast float %7347, 2.000000e+00
  %7349 = call float @dx.op.dot2.f32(i32 54, float %7345, float %7346, float %7345, float %7346)  ; Dot2(ax,ay,bx,by)
  %7350 = fmul fast float %7344, %7344
  %7351 = fsub fast float %7349, %7350
  %7352 = fmul fast float %7348, %7348
  %7353 = fmul fast float %7209, %7351
  %7354 = fsub fast float %7352, %7353
  %7355 = fcmp fast ogt float %7354, 0.000000e+00
  br i1 %7355, label %7356, label %7371

; <label>:7356                                    ; preds = %7332
  %7357 = fcmp fast ogt float %7348, 0.000000e+00
  %7358 = call float @dx.op.unary.f32(i32 24, float %7354)  ; Sqrt(value)
  %7359 = fsub fast float -0.000000e+00, %7358
  %7360 = select i1 %7357, float %7358, float %7359
  %7361 = fadd fast float %7360, %7348
  %7362 = fmul float %7361, -5.000000e-01
  %7363 = fdiv fast float %7362, %7202
  %7364 = call float @dx.op.binary.f32(i32 35, float %7363, float 0.000000e+00)  ; FMax(a,b)
  %7365 = call float @dx.op.binary.f32(i32 36, float %7237, float %7364)  ; FMin(a,b)
  %7366 = fdiv fast float %7351, %7362
  %7367 = call float @dx.op.binary.f32(i32 35, float %7366, float 0.000000e+00)  ; FMax(a,b)
  %7368 = call float @dx.op.binary.f32(i32 36, float %7237, float %7367)  ; FMin(a,b)
  %7369 = call float @dx.op.binary.f32(i32 36, float %7365, float %7368)  ; FMin(a,b)
  %7370 = call float @dx.op.binary.f32(i32 35, float %7365, float %7368)  ; FMax(a,b)
  br label %7371

; <label>:7371                                    ; preds = %7356, %7332
  %7372 = phi float [ %7370, %7356 ], [ -1.000000e+00, %7332 ]
  %7373 = phi float [ %7369, %7356 ], [ -1.000000e+00, %7332 ]
  %7374 = phi i1 [ true, %7356 ], [ false, %7332 ]
  br i1 %7374, label %7375, label %7381

; <label>:7375                                    ; preds = %7371
  %7376 = call float @dx.op.binary.f32(i32 35, float %7320, float %7373)  ; FMax(a,b)
  %7377 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7334
  store float %7376, float* %7377, align 4, !tbaa !135, !noalias !149
  %7378 = call float @dx.op.binary.f32(i32 35, float %7320, float %7372)  ; FMax(a,b)
  %7379 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7334
  store float %7378, float* %7379, align 4, !tbaa !135, !noalias !149
  %7380 = add nsw i32 %7333, 1
  br label %7381

; <label>:7381                                    ; preds = %7375, %7371
  %7382 = phi i32 [ %7380, %7375 ], [ %7333, %7371 ]
  %7383 = add nuw nsw i32 %7334, 1
  %7384 = icmp eq i32 %7383, %7189
  br i1 %7384, label %7385, label %7332

; <label>:7385                                    ; preds = %7381
  %7386 = load float, float* %7326, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %7387 = load float, float* %7325, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  %7388 = load float, float* %7324, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  %7389 = load float, float* %7329, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %7390 = load float, float* %7328, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  %7391 = load float, float* %7327, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  br label %7392

; <label>:7392                                    ; preds = %7385, %7319
  %7393 = phi float [ -1.000000e+00, %7319 ], [ %7391, %7385 ]
  %7394 = phi float [ -1.000000e+00, %7319 ], [ %7390, %7385 ]
  %7395 = phi float [ -1.000000e+00, %7319 ], [ %7389, %7385 ]
  %7396 = phi float [ -1.000000e+00, %7319 ], [ %7388, %7385 ]
  %7397 = phi float [ -1.000000e+00, %7319 ], [ %7387, %7385 ]
  %7398 = phi float [ -1.000000e+00, %7319 ], [ %7386, %7385 ]
  %7399 = phi i32 [ 0, %7319 ], [ %7382, %7385 ]
  %7400 = call float @dx.op.binary.f32(i32 36, float %7397, float %7398)  ; FMin(a,b)
  %7401 = call float @dx.op.binary.f32(i32 36, float %7396, float %7400)  ; FMin(a,b)
  %7402 = call float @dx.op.binary.f32(i32 35, float %7396, float %7397)  ; FMax(a,b)
  %7403 = call float @dx.op.binary.f32(i32 36, float %7402, float %7398)  ; FMin(a,b)
  %7404 = call float @dx.op.binary.f32(i32 36, float %7396, float %7397)  ; FMin(a,b)
  %7405 = call float @dx.op.binary.f32(i32 35, float %7404, float %7403)  ; FMax(a,b)
  %7406 = call float @dx.op.binary.f32(i32 35, float %7397, float %7398)  ; FMax(a,b)
  %7407 = call float @dx.op.binary.f32(i32 35, float %7396, float %7406)  ; FMax(a,b)
  store float %7401, float* %7324, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  store float %7405, float* %7325, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  store float %7407, float* %7326, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %7408 = call float @dx.op.binary.f32(i32 36, float %7394, float %7395)  ; FMin(a,b)
  %7409 = call float @dx.op.binary.f32(i32 36, float %7393, float %7408)  ; FMin(a,b)
  %7410 = call float @dx.op.binary.f32(i32 35, float %7393, float %7394)  ; FMax(a,b)
  %7411 = call float @dx.op.binary.f32(i32 36, float %7410, float %7395)  ; FMin(a,b)
  %7412 = call float @dx.op.binary.f32(i32 36, float %7393, float %7394)  ; FMin(a,b)
  %7413 = call float @dx.op.binary.f32(i32 35, float %7412, float %7411)  ; FMax(a,b)
  %7414 = call float @dx.op.binary.f32(i32 35, float %7394, float %7395)  ; FMax(a,b)
  %7415 = call float @dx.op.binary.f32(i32 35, float %7393, float %7414)  ; FMax(a,b)
  store float %7409, float* %7327, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  store float %7413, float* %7328, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  store float %7415, float* %7329, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %7416 = sub nsw i32 3, %7399
  %7417 = icmp sgt i32 %7416, 2
  br i1 %7417, label %7418, label %7456

; <label>:7418                                    ; preds = %7392
  %7419 = icmp eq i32 %7187, 0
  %7420 = fsub fast float %7237, %7321
  %7421 = select i1 %7419, float %7420, float %7321
  %7422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7423 = extractvalue %dx.types.CBufRet.f32 %7422, 0
  %7424 = extractvalue %dx.types.CBufRet.f32 %7422, 1
  %7425 = extractvalue %dx.types.CBufRet.f32 %7422, 2
  %7426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7427 = extractvalue %dx.types.CBufRet.f32 %7426, 0
  %7428 = extractvalue %dx.types.CBufRet.f32 %7426, 1
  %7429 = extractvalue %dx.types.CBufRet.f32 %7426, 2
  %7430 = extractvalue %dx.types.CBufRet.f32 %7426, 3
  %7431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7432 = extractvalue %dx.types.CBufRet.f32 %7431, 3
  %7433 = call float @dx.op.binary.f32(i32 36, float %7322, float %7432)  ; FMin(a,b)
  %7434 = fmul fast float %7430, %7421
  %7435 = call float @dx.op.unary.f32(i32 7, float %7434)  ; Saturate(value)
  %7436 = fsub fast float %7427, %7423
  %7437 = fsub fast float %7428, %7424
  %7438 = fsub fast float %7429, %7425
  %7439 = fmul fast float %7435, %7436
  %7440 = fmul fast float %7435, %7437
  %7441 = fmul fast float %7435, %7438
  %7442 = fadd fast float %7439, %7423
  %7443 = fadd fast float %7440, %7424
  %7444 = fadd fast float %7441, %7425
  %7445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.f32 %7445, 0
  %7447 = extractvalue %dx.types.CBufRet.f32 %7445, 1
  %7448 = fadd fast float %7447, %7446
  %7449 = call float @dx.op.unary.f32(i32 7, float %7448)  ; Saturate(value)
  %7450 = extractvalue %dx.types.CBufRet.f32 %7445, 2
  %7451 = extractvalue %dx.types.CBufRet.f32 %7445, 3
  %7452 = fadd fast float %7451, %7450
  %7453 = call float @dx.op.unary.f32(i32 7, float %7452)  ; Saturate(value)
  %7454 = fmul fast float %7449, %7433
  %7455 = fmul fast float %7454, %7453
  br label %7538

; <label>:7456                                    ; preds = %7392
  %7457 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7416
  %7458 = load float, float* %7457, align 4, !tbaa !135, !noalias !149
  %7459 = fcmp fast olt float %7458, %7323
  %7460 = icmp sgt i32 %7399, 0
  %7461 = and i1 %7460, %7459
  br i1 %7461, label %7462, label %7499

; <label>:7462                                    ; preds = %7456
  br label %7463

; <label>:7463                                    ; preds = %7492, %7462
  %7464 = phi float [ %7493, %7492 ], [ %7321, %7462 ]
  %7465 = phi float [ %7494, %7492 ], [ %7322, %7462 ]
  %7466 = phi float [ %7474, %7492 ], [ %7458, %7462 ]
  %7467 = phi i32 [ %7471, %7492 ], [ %7416, %7462 ]
  %7468 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7467
  %7469 = load float, float* %7468, align 4, !tbaa !135, !noalias !149
  %7470 = icmp slt i32 %7467, 2
  %7471 = add nsw i32 %7467, 1
  %7472 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7471
  %7473 = load float, float* %7472, align 4, !tbaa !135, !noalias !149
  %7474 = select i1 %7470, float %7473, float %7237
  %7475 = call float @dx.op.binary.f32(i32 36, float %7474, float %7469)  ; FMin(a,b)
  %7476 = call float @dx.op.binary.f32(i32 36, float %7323, float %7475)  ; FMin(a,b)
  %7477 = icmp eq i32 %7187, 0
  %7478 = fadd fast float %7476, %7466
  %7479 = fmul fast float %7478, %7168
  %7480 = fadd fast float %7479, %7181
  br i1 %7477, label %7486, label %7481

; <label>:7481                                    ; preds = %7463
  %7482 = fsub fast float %7476, %7466
  %7483 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7482)  ; FMax(a,b)
  %7484 = fmul fast float %7483, %7480
  %7485 = fadd fast float %7484, %7465
  br label %7492

; <label>:7486                                    ; preds = %7463
  %7487 = fsub fast float %7466, %7476
  %7488 = call float @dx.op.unary.f32(i32 6, float %7487)  ; FAbs(value)
  %7489 = fadd fast float %7488, %7464
  %7490 = fmul fast float %7488, %7480
  %7491 = fsub fast float %7465, %7490
  br label %7492

; <label>:7492                                    ; preds = %7486, %7481
  %7493 = phi float [ %7483, %7481 ], [ %7489, %7486 ]
  %7494 = phi float [ %7485, %7481 ], [ %7491, %7486 ]
  %7495 = fcmp fast olt float %7474, %7323
  %7496 = icmp slt i32 %7471, 3
  %7497 = and i1 %7496, %7495
  br i1 %7497, label %7463, label %7498

; <label>:7498                                    ; preds = %7492
  br label %7499

; <label>:7499                                    ; preds = %7498, %7456
  %7500 = phi float [ %7321, %7456 ], [ %7493, %7498 ]
  %7501 = phi float [ %7322, %7456 ], [ %7494, %7498 ]
  %7502 = fsub fast float %7237, %7500
  %7503 = select i1 %7239, float %7500, float %7502
  %7504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7505 = extractvalue %dx.types.CBufRet.f32 %7504, 0
  %7506 = extractvalue %dx.types.CBufRet.f32 %7504, 1
  %7507 = extractvalue %dx.types.CBufRet.f32 %7504, 2
  %7508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7509 = extractvalue %dx.types.CBufRet.f32 %7508, 0
  %7510 = extractvalue %dx.types.CBufRet.f32 %7508, 1
  %7511 = extractvalue %dx.types.CBufRet.f32 %7508, 2
  %7512 = extractvalue %dx.types.CBufRet.f32 %7508, 3
  %7513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7514 = extractvalue %dx.types.CBufRet.f32 %7513, 3
  %7515 = call float @dx.op.binary.f32(i32 36, float %7501, float %7514)  ; FMin(a,b)
  %7516 = fmul fast float %7512, %7503
  %7517 = call float @dx.op.unary.f32(i32 7, float %7516)  ; Saturate(value)
  %7518 = fsub fast float %7509, %7505
  %7519 = fsub fast float %7510, %7506
  %7520 = fsub fast float %7511, %7507
  %7521 = fmul fast float %7517, %7518
  %7522 = fmul fast float %7517, %7519
  %7523 = fmul fast float %7517, %7520
  %7524 = fadd fast float %7521, %7505
  %7525 = fadd fast float %7522, %7506
  %7526 = fadd fast float %7523, %7507
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 0
  %7529 = extractvalue %dx.types.CBufRet.f32 %7527, 1
  %7530 = fadd fast float %7529, %7528
  %7531 = call float @dx.op.unary.f32(i32 7, float %7530)  ; Saturate(value)
  %7532 = extractvalue %dx.types.CBufRet.f32 %7527, 2
  %7533 = extractvalue %dx.types.CBufRet.f32 %7527, 3
  %7534 = fadd fast float %7533, %7532
  %7535 = call float @dx.op.unary.f32(i32 7, float %7534)  ; Saturate(value)
  %7536 = fmul fast float %7531, %7515
  %7537 = fmul fast float %7536, %7535
  br label %7538

; <label>:7538                                    ; preds = %7499, %7418, %7253, %7235, %7233
  %7539 = phi float [ %7262, %7253 ], [ %7421, %7418 ], [ %7503, %7499 ], [ 0.000000e+00, %7233 ], [ 0.000000e+00, %7235 ]
  %7540 = phi float [ %7296, %7253 ], [ %7455, %7418 ], [ %7537, %7499 ], [ 0.000000e+00, %7233 ], [ 0.000000e+00, %7235 ]
  %7541 = phi float [ %7283, %7253 ], [ %7442, %7418 ], [ %7524, %7499 ], [ 0.000000e+00, %7233 ], [ 0.000000e+00, %7235 ]
  %7542 = phi float [ %7284, %7253 ], [ %7443, %7418 ], [ %7525, %7499 ], [ 0.000000e+00, %7233 ], [ 0.000000e+00, %7235 ]
  %7543 = phi float [ %7285, %7253 ], [ %7444, %7418 ], [ %7526, %7499 ], [ 0.000000e+00, %7233 ], [ 0.000000e+00, %7235 ]
  %7544 = fmul fast float %7176, %7540
  %7545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7546 = extractvalue %dx.types.CBufRet.f32 %7545, 2
  %7547 = fsub fast float %7183, %7546
  %7548 = fcmp fast olt float %7544, -2.000000e+01
  %7549 = call float @dx.op.unary.f32(i32 21, float %7544)  ; Exp(value)
  %7550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7551 = extractvalue %dx.types.CBufRet.f32 %7550, 2
  %7552 = extractvalue %dx.types.CBufRet.f32 %7550, 3
  %7553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.f32 %7553, 2
  %7555 = fmul fast float %7552, %7547
  %7556 = call float @dx.op.unary.f32(i32 7, float %7555)  ; Saturate(value)
  %7557 = fsub fast float 1.000000e+00, %7556
  %7558 = fmul fast float %7168, 5.000000e-01
  %7559 = fadd fast float %7558, 5.000000e-01
  %7560 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  %7561 = fsub fast float 1.000000e+00, %7560
  %7562 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7557)  ; FMax(a,b)
  %7563 = fdiv fast float %7561, %7562
  %7564 = fsub fast float %7547, %7125
  %7565 = call float @dx.op.unary.f32(i32 6, float %7564)  ; FAbs(value)
  %7566 = fmul fast float %7565, %7551
  %7567 = call float @dx.op.unary.f32(i32 7, float %7563)  ; Saturate(value)
  %7568 = fsub fast float 1.000000e+00, %7566
  %7569 = fmul fast float %7568, %7567
  %7570 = fadd fast float %7569, %7566
  %7571 = fmul fast float %7554, %7547
  %7572 = call float @dx.op.unary.f32(i32 7, float %7571)  ; Saturate(value)
  %7573 = fsub fast float 1.000000e+00, %7570
  %7574 = fmul fast float %7573, %7572
  %7575 = fadd fast float %7574, %7570
  %7576 = call float @dx.op.unary.f32(i32 7, float %7575)  ; Saturate(value)
  %7577 = fadd fast float %7549, -1.000000e+00
  %7578 = select i1 %7548, float -1.000000e+00, float %7577
  %7579 = fmul fast float %7576, %7578
  %7580 = fadd fast float %7579, 1.000000e+00
  %7581 = fsub fast float -0.000000e+00, %7579
  %7582 = fmul fast float %7541, %7581
  %7583 = fmul fast float %7542, %7581
  %7584 = fmul fast float %7543, %7581
  br label %7585

; <label>:7585                                    ; preds = %7538, %7134
  %7586 = phi float [ %7539, %7538 ], [ 0.000000e+00, %7134 ]
  %7587 = phi float [ %7580, %7538 ], [ 1.000000e+00, %7134 ]
  %7588 = phi float [ %7582, %7538 ], [ 0.000000e+00, %7134 ]
  %7589 = phi float [ %7583, %7538 ], [ 0.000000e+00, %7134 ]
  %7590 = phi float [ %7584, %7538 ], [ 0.000000e+00, %7134 ]
  %7591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.f32 %7591, 1
  %7593 = fsub fast float 1.000000e+00, %7587
  %7594 = fmul fast float %7593, %7169
  %7595 = fmul fast float %7594, %7592
  %7596 = fsub fast float %7169, %7595
  br i1 %7162, label %7597, label %7626, !dx.controlflow.hints !185

; <label>:7597                                    ; preds = %7585
  %7598 = fmul fast float %7170, %7159
  %7599 = fadd fast float %7598, %7160
  %7600 = call float @dx.op.unary.f32(i32 7, float %7599)  ; Saturate(value)
  %7601 = fmul fast float %7141, %7596
  %7602 = fsub fast float -0.000000e+00, %7601
  %7603 = fmul fast float %7142, %7596
  %7604 = fsub fast float -0.000000e+00, %7603
  %7605 = call float @dx.op.unary.f32(i32 21, float %7602)  ; Exp(value)
  %7606 = call float @dx.op.unary.f32(i32 21, float %7604)  ; Exp(value)
  %7607 = call float @dx.op.binary.f32(i32 35, float %7149, float %7605)  ; FMax(a,b)
  %7608 = call float @dx.op.binary.f32(i32 35, float %7149, float %7606)  ; FMax(a,b)
  %7609 = fsub fast float %7608, %7607
  %7610 = fmul fast float %7609, %7600
  %7611 = fadd fast float %7610, %7607
  %7612 = call float @dx.op.unary.f32(i32 7, float %7611)  ; Saturate(value)
  %7613 = fsub fast float %7146, %7151
  %7614 = fsub fast float %7147, %7152
  %7615 = fsub fast float %7148, %7153
  %7616 = fmul fast float %7600, %7613
  %7617 = fmul fast float %7600, %7614
  %7618 = fmul fast float %7600, %7615
  %7619 = fadd fast float %7616, %7151
  %7620 = fadd fast float %7617, %7152
  %7621 = fadd fast float %7618, %7153
  %7622 = fsub fast float 1.000000e+00, %7612
  %7623 = fmul fast float %7622, %7619
  %7624 = fmul fast float %7622, %7620
  %7625 = fmul fast float %7622, %7621
  br label %7685

; <label>:7626                                    ; preds = %7585
  %7627 = fmul fast float %7596, %7158
  %7628 = call float @dx.op.unary.f32(i32 7, float %7627)  ; Saturate(value)
  %7629 = fsub fast float 2.000000e+00, %7628
  %7630 = fmul fast float %7628, 9.921875e-01
  %7631 = fmul fast float %7630, %7629
  %7632 = fadd fast float %7631, 3.906250e-03
  %7633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7632, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7634 = extractvalue %dx.types.ResRet.f32 %7633, 0
  %7635 = fsub fast float %7628, %7634
  %7636 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7635)  ; FMax(a,b)
  %7637 = fmul fast float %7144, %7125
  %7638 = call float @dx.op.unary.f32(i32 6, float %7637)  ; FAbs(value)
  %7639 = fcmp fast ogt float %7638, 0x3EB0C6F7A0000000
  br i1 %7639, label %7640, label %7646, !dx.controlflow.hints !186

; <label>:7640                                    ; preds = %7626
  %7641 = fmul fast float %7637, 0xBFF7154760000000
  %7642 = call float @dx.op.unary.f32(i32 21, float %7641)  ; Exp(value)
  %7643 = fsub fast float 1.000000e+00, %7642
  %7644 = fdiv fast float %7643, %7637
  %7645 = fmul fast float %7644, %7154
  br label %7646

; <label>:7646                                    ; preds = %7640, %7626
  %7647 = phi float [ %7645, %7640 ], [ %7154, %7626 ]
  %7648 = fadd fast float %7647, %7156
  %7649 = fmul fast float %7648, %7636
  %7650 = fmul fast float %7141, %7649
  %7651 = fsub fast float -0.000000e+00, %7650
  %7652 = fmul fast float %7142, %7649
  %7653 = fsub fast float -0.000000e+00, %7652
  %7654 = fmul fast float %7143, %7649
  %7655 = fsub fast float -0.000000e+00, %7654
  %7656 = call float @dx.op.unary.f32(i32 21, float %7651)  ; Exp(value)
  %7657 = call float @dx.op.unary.f32(i32 21, float %7653)  ; Exp(value)
  %7658 = call float @dx.op.unary.f32(i32 21, float %7655)  ; Exp(value)
  %7659 = fmul fast float %7170, %7170
  %7660 = fadd fast float %7659, 1.000000e+00
  %7661 = fmul fast float %7660, 0x3FAE8EC8A0000000
  %7662 = fmul fast float %7661, %7151
  %7663 = fmul fast float %7661, %7152
  %7664 = fmul fast float %7661, %7153
  %7665 = fmul fast float %7170, %7149
  %7666 = fsub fast float 1.000000e+00, %7665
  %7667 = fmul fast float %7149, %7149
  %7668 = fsub fast float 1.000000e+00, %7667
  %7669 = fmul fast float %7668, 0x3FB45F3060000000
  %7670 = fmul fast float %7666, %7666
  %7671 = fdiv fast float 1.000000e+00, %7670
  %7672 = fmul fast float %7669, %7671
  %7673 = fmul fast float %7672, %7146
  %7674 = fmul fast float %7672, %7147
  %7675 = fmul fast float %7672, %7148
  %7676 = fadd fast float %7673, %7662
  %7677 = fadd fast float %7674, %7663
  %7678 = fadd fast float %7675, %7664
  %7679 = fsub fast float 1.000000e+00, %7656
  %7680 = fsub fast float 1.000000e+00, %7657
  %7681 = fsub fast float 1.000000e+00, %7658
  %7682 = fmul fast float %7676, %7679
  %7683 = fmul fast float %7677, %7680
  %7684 = fmul fast float %7678, %7681
  br label %7685

; <label>:7685                                    ; preds = %7646, %7597
  %7686 = phi float [ %7623, %7597 ], [ %7682, %7646 ]
  %7687 = phi float [ %7624, %7597 ], [ %7683, %7646 ]
  %7688 = phi float [ %7625, %7597 ], [ %7684, %7646 ]
  %7689 = phi float [ %7612, %7597 ], [ %7656, %7646 ]
  %7690 = phi float [ %7612, %7597 ], [ %7657, %7646 ]
  %7691 = phi float [ %7612, %7597 ], [ %7658, %7646 ]
  br i1 %7178, label %7692, label %7890, !dx.controlflow.hints !187

; <label>:7692                                    ; preds = %7685
  %7693 = extractvalue %dx.types.CBufRet.f32 %7591, 0
  %7694 = fmul fast float %7693, %7593
  %7695 = fsub fast float %7588, %7686
  %7696 = fsub fast float %7589, %7687
  %7697 = fsub fast float %7590, %7688
  %7698 = fmul fast float %7694, %7695
  %7699 = fmul fast float %7694, %7696
  %7700 = fmul fast float %7694, %7697
  %7701 = fadd fast float %7698, %7686
  %7702 = fadd fast float %7699, %7687
  %7703 = fadd fast float %7700, %7688
  %7704 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7689)  ; FMax(a,b)
  %7705 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7690)  ; FMax(a,b)
  %7706 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7691)  ; FMax(a,b)
  %7707 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7587)  ; FMax(a,b)
  %7708 = call float @dx.op.binary.f32(i32 35, float %7586, float %7596)  ; FMax(a,b)
  %7709 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7708)  ; FMax(a,b)
  %7710 = fdiv fast float %7586, %7709
  %7711 = call float @dx.op.unary.f32(i32 7, float %7710)  ; Saturate(value)
  %7712 = fdiv fast float %7596, %7709
  %7713 = call float @dx.op.unary.f32(i32 7, float %7712)  ; Saturate(value)
  %7714 = fcmp fast une float %7707, 1.000000e+00
  br i1 %7714, label %7715, label %7728, !dx.controlflow.hints !188

; <label>:7715                                    ; preds = %7692
  %7716 = call float @dx.op.unary.f32(i32 23, float %7707)  ; Log(value)
  %7717 = fmul fast float %7716, 0x3FE62E4300000000
  %7718 = fmul fast float %7588, %7717
  %7719 = fsub fast float -0.000000e+00, %7718
  %7720 = fmul fast float %7589, %7717
  %7721 = fsub fast float -0.000000e+00, %7720
  %7722 = fmul fast float %7590, %7717
  %7723 = fsub fast float -0.000000e+00, %7722
  %7724 = fsub fast float 1.000000e+00, %7707
  %7725 = fdiv fast float %7719, %7724
  %7726 = fdiv fast float %7721, %7724
  %7727 = fdiv fast float %7723, %7724
  br label %7728

; <label>:7728                                    ; preds = %7715, %7692
  %7729 = phi float [ %7725, %7715 ], [ %7588, %7692 ]
  %7730 = phi float [ %7726, %7715 ], [ %7589, %7692 ]
  %7731 = phi float [ %7727, %7715 ], [ %7590, %7692 ]
  %7732 = phi float [ %7717, %7715 ], [ 0.000000e+00, %7692 ]
  %7733 = fcmp fast une float %7704, 1.000000e+00
  br i1 %7733, label %7734, label %7741, !dx.controlflow.hints !189

; <label>:7734                                    ; preds = %7728
  %7735 = call float @dx.op.unary.f32(i32 23, float %7704)  ; Log(value)
  %7736 = fmul fast float %7735, 0x3FE62E4300000000
  %7737 = fmul fast float %7701, %7736
  %7738 = fsub fast float -0.000000e+00, %7737
  %7739 = fsub fast float 1.000000e+00, %7704
  %7740 = fdiv fast float %7738, %7739
  br label %7741

; <label>:7741                                    ; preds = %7734, %7728
  %7742 = phi float [ %7740, %7734 ], [ %7701, %7728 ]
  %7743 = phi float [ %7736, %7734 ], [ 0.000000e+00, %7728 ]
  %7744 = fcmp fast une float %7705, 1.000000e+00
  br i1 %7744, label %7745, label %7752, !dx.controlflow.hints !189

; <label>:7745                                    ; preds = %7741
  %7746 = call float @dx.op.unary.f32(i32 23, float %7705)  ; Log(value)
  %7747 = fmul fast float %7746, 0x3FE62E4300000000
  %7748 = fmul fast float %7702, %7747
  %7749 = fsub fast float -0.000000e+00, %7748
  %7750 = fsub fast float 1.000000e+00, %7705
  %7751 = fdiv fast float %7749, %7750
  br label %7752

; <label>:7752                                    ; preds = %7745, %7741
  %7753 = phi float [ %7751, %7745 ], [ %7702, %7741 ]
  %7754 = phi float [ %7747, %7745 ], [ 0.000000e+00, %7741 ]
  %7755 = fcmp fast une float %7706, 1.000000e+00
  br i1 %7755, label %7756, label %7763, !dx.controlflow.hints !189

; <label>:7756                                    ; preds = %7752
  %7757 = call float @dx.op.unary.f32(i32 23, float %7706)  ; Log(value)
  %7758 = fmul fast float %7757, 0x3FE62E4300000000
  %7759 = fmul fast float %7703, %7758
  %7760 = fsub fast float -0.000000e+00, %7759
  %7761 = fsub fast float 1.000000e+00, %7706
  %7762 = fdiv fast float %7760, %7761
  br label %7763

; <label>:7763                                    ; preds = %7756, %7752
  %7764 = phi float [ %7762, %7756 ], [ %7703, %7752 ]
  %7765 = phi float [ %7758, %7756 ], [ 0.000000e+00, %7752 ]
  %7766 = fmul fast float %7729, %7713
  %7767 = fmul fast float %7730, %7713
  %7768 = fmul fast float %7731, %7713
  %7769 = fmul fast float %7732, %7713
  %7770 = fmul fast float %7742, %7711
  %7771 = fmul fast float %7753, %7711
  %7772 = fmul fast float %7764, %7711
  %7773 = fmul fast float %7743, %7711
  %7774 = fmul fast float %7754, %7711
  %7775 = fmul fast float %7765, %7711
  %7776 = fadd fast float %7770, %7766
  %7777 = fadd fast float %7771, %7767
  %7778 = fadd fast float %7772, %7768
  %7779 = fadd fast float %7773, %7769
  %7780 = fadd fast float %7774, %7769
  %7781 = fadd fast float %7775, %7769
  %7782 = fcmp fast une float %7779, 0.000000e+00
  br i1 %7782, label %7783, label %7790, !dx.controlflow.hints !190

; <label>:7783                                    ; preds = %7763
  %7784 = fmul fast float %7779, 0x3FF7154760000000
  %7785 = call float @dx.op.unary.f32(i32 21, float %7784)  ; Exp(value)
  %7786 = fsub fast float 1.000000e+00, %7785
  %7787 = fmul fast float %7776, %7786
  %7788 = fsub fast float -0.000000e+00, %7787
  %7789 = fdiv fast float %7788, %7779
  br label %7790

; <label>:7790                                    ; preds = %7783, %7763
  %7791 = phi float [ %7785, %7783 ], [ 1.000000e+00, %7763 ]
  %7792 = phi float [ %7789, %7783 ], [ %7776, %7763 ]
  %7793 = fcmp fast une float %7780, 0.000000e+00
  br i1 %7793, label %7794, label %7801, !dx.controlflow.hints !190

; <label>:7794                                    ; preds = %7790
  %7795 = fmul fast float %7780, 0x3FF7154760000000
  %7796 = call float @dx.op.unary.f32(i32 21, float %7795)  ; Exp(value)
  %7797 = fsub fast float 1.000000e+00, %7796
  %7798 = fmul fast float %7777, %7797
  %7799 = fsub fast float -0.000000e+00, %7798
  %7800 = fdiv fast float %7799, %7780
  br label %7801

; <label>:7801                                    ; preds = %7794, %7790
  %7802 = phi float [ %7796, %7794 ], [ 1.000000e+00, %7790 ]
  %7803 = phi float [ %7800, %7794 ], [ %7777, %7790 ]
  %7804 = fcmp fast une float %7781, 0.000000e+00
  br i1 %7804, label %7805, label %7812, !dx.controlflow.hints !190

; <label>:7805                                    ; preds = %7801
  %7806 = fmul fast float %7781, 0x3FF7154760000000
  %7807 = call float @dx.op.unary.f32(i32 21, float %7806)  ; Exp(value)
  %7808 = fsub fast float 1.000000e+00, %7807
  %7809 = fmul fast float %7778, %7808
  %7810 = fsub fast float -0.000000e+00, %7809
  %7811 = fdiv fast float %7810, %7781
  br label %7812

; <label>:7812                                    ; preds = %7805, %7801
  %7813 = phi float [ %7807, %7805 ], [ 1.000000e+00, %7801 ]
  %7814 = phi float [ %7811, %7805 ], [ %7778, %7801 ]
  %7815 = fcmp fast ogt float %7711, %7713
  br i1 %7815, label %7816, label %7836

; <label>:7816                                    ; preds = %7812
  %7817 = fsub fast float 1.000000e+00, %7713
  %7818 = fmul fast float %7729, %7817
  %7819 = fmul fast float %7730, %7817
  %7820 = fmul fast float %7731, %7817
  %7821 = fmul fast float %7732, %7817
  %7822 = fcmp fast une float %7821, 0.000000e+00
  br i1 %7822, label %7823, label %7874, !dx.controlflow.hints !191

; <label>:7823                                    ; preds = %7816
  %7824 = fmul fast float %7821, 0x3FF7154760000000
  %7825 = call float @dx.op.unary.f32(i32 21, float %7824)  ; Exp(value)
  %7826 = fsub fast float 1.000000e+00, %7825
  %7827 = fmul fast float %7818, %7826
  %7828 = fsub fast float -0.000000e+00, %7827
  %7829 = fmul fast float %7819, %7826
  %7830 = fsub fast float -0.000000e+00, %7829
  %7831 = fmul fast float %7820, %7826
  %7832 = fsub fast float -0.000000e+00, %7831
  %7833 = fdiv fast float %7828, %7821
  %7834 = fdiv fast float %7830, %7821
  %7835 = fdiv fast float %7832, %7821
  br label %7874

; <label>:7836                                    ; preds = %7812
  %7837 = fsub fast float 1.000000e+00, %7711
  %7838 = fmul fast float %7742, %7837
  %7839 = fmul fast float %7753, %7837
  %7840 = fmul fast float %7764, %7837
  %7841 = fmul fast float %7743, %7837
  %7842 = fmul fast float %7754, %7837
  %7843 = fmul fast float %7765, %7837
  %7844 = fcmp fast une float %7841, 0.000000e+00
  br i1 %7844, label %7845, label %7852, !dx.controlflow.hints !190

; <label>:7845                                    ; preds = %7836
  %7846 = fmul fast float %7841, 0x3FF7154760000000
  %7847 = call float @dx.op.unary.f32(i32 21, float %7846)  ; Exp(value)
  %7848 = fsub fast float 1.000000e+00, %7847
  %7849 = fmul fast float %7838, %7848
  %7850 = fsub fast float -0.000000e+00, %7849
  %7851 = fdiv fast float %7850, %7841
  br label %7852

; <label>:7852                                    ; preds = %7845, %7836
  %7853 = phi float [ %7851, %7845 ], [ %7838, %7836 ]
  %7854 = phi float [ %7847, %7845 ], [ 1.000000e+00, %7836 ]
  %7855 = fcmp fast une float %7842, 0.000000e+00
  br i1 %7855, label %7856, label %7863, !dx.controlflow.hints !190

; <label>:7856                                    ; preds = %7852
  %7857 = fmul fast float %7842, 0x3FF7154760000000
  %7858 = call float @dx.op.unary.f32(i32 21, float %7857)  ; Exp(value)
  %7859 = fsub fast float 1.000000e+00, %7858
  %7860 = fmul fast float %7839, %7859
  %7861 = fsub fast float -0.000000e+00, %7860
  %7862 = fdiv fast float %7861, %7842
  br label %7863

; <label>:7863                                    ; preds = %7856, %7852
  %7864 = phi float [ %7862, %7856 ], [ %7839, %7852 ]
  %7865 = phi float [ %7858, %7856 ], [ 1.000000e+00, %7852 ]
  %7866 = fcmp fast une float %7843, 0.000000e+00
  br i1 %7866, label %7867, label %7874, !dx.controlflow.hints !190

; <label>:7867                                    ; preds = %7863
  %7868 = fmul fast float %7843, 0x3FF7154760000000
  %7869 = call float @dx.op.unary.f32(i32 21, float %7868)  ; Exp(value)
  %7870 = fsub fast float 1.000000e+00, %7869
  %7871 = fmul fast float %7840, %7870
  %7872 = fsub fast float -0.000000e+00, %7871
  %7873 = fdiv fast float %7872, %7843
  br label %7874

; <label>:7874                                    ; preds = %7867, %7863, %7823, %7816
  %7875 = phi float [ %7873, %7867 ], [ %7835, %7823 ], [ %7820, %7816 ], [ %7840, %7863 ]
  %7876 = phi float [ %7864, %7867 ], [ %7834, %7823 ], [ %7819, %7816 ], [ %7864, %7863 ]
  %7877 = phi float [ %7853, %7867 ], [ %7833, %7823 ], [ %7818, %7816 ], [ %7853, %7863 ]
  %7878 = phi float [ %7869, %7867 ], [ %7825, %7823 ], [ 1.000000e+00, %7816 ], [ 1.000000e+00, %7863 ]
  %7879 = phi float [ %7865, %7867 ], [ %7825, %7823 ], [ 1.000000e+00, %7816 ], [ %7865, %7863 ]
  %7880 = phi float [ %7854, %7867 ], [ %7825, %7823 ], [ 1.000000e+00, %7816 ], [ %7854, %7863 ]
  %7881 = fmul fast float %7880, %7792
  %7882 = fmul fast float %7879, %7803
  %7883 = fmul fast float %7878, %7814
  %7884 = fadd fast float %7881, %7877
  %7885 = fadd fast float %7882, %7876
  %7886 = fadd fast float %7883, %7875
  %7887 = fmul fast float %7880, %7791
  %7888 = fmul fast float %7879, %7802
  %7889 = fmul fast float %7878, %7813
  br label %7890

; <label>:7890                                    ; preds = %7874, %7685
  %7891 = phi float [ %7889, %7874 ], [ %7691, %7685 ]
  %7892 = phi float [ %7888, %7874 ], [ %7690, %7685 ]
  %7893 = phi float [ %7887, %7874 ], [ %7689, %7685 ]
  %7894 = phi float [ %7886, %7874 ], [ %7688, %7685 ]
  %7895 = phi float [ %7885, %7874 ], [ %7687, %7685 ]
  %7896 = phi float [ %7884, %7874 ], [ %7686, %7685 ]
  %7897 = fmul fast float %7896, %6836
  %7898 = fmul fast float %7895, %6838
  %7899 = fmul fast float %7894, %6840
  %7900 = fmul fast float %7893, %7133
  %7901 = call float @dx.op.dot3.f32(i32 55, float %7893, float %7892, float %7891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7902 = call float @dx.op.dot3.f32(i32 55, float %7897, float %7898, float %7899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7903 = select i1 %237, float %7901, float %7893
  %7904 = select i1 %237, float %7901, float %7892
  %7905 = select i1 %237, float 1.000000e+00, float %7891
  %7906 = select i1 %237, float %7902, float %7897
  %7907 = select i1 %237, float 0.000000e+00, float %7898
  %7908 = select i1 %237, float 0.000000e+00, float %7899
  %7909 = fmul fast float %7903, %7127
  %7910 = fmul fast float %7904, %7128
  %7911 = fmul fast float %7905, %7129
  %7912 = fadd fast float %7909, %7906
  %7913 = fadd fast float %7910, %7907
  %7914 = fadd fast float %7908, %7911
  %7915 = fmul fast float %7903, %7130
  %7916 = fmul fast float %7904, %7131
  %7917 = fmul fast float %7905, %7132
  %7918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7919 = extractvalue %dx.types.CBufRet.i32 %7918, 0
  %7920 = icmp eq i32 %7919, 0
  br i1 %7920, label %8288, label %7921, !dx.controlflow.hints !192

; <label>:7921                                    ; preds = %7890
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 2
  %7924 = extractvalue %dx.types.CBufRet.f32 %7922, 3
  %7925 = fmul fast float %7923, %99
  %7926 = fmul fast float %7924, %100
  %7927 = fmul fast float %7925, 2.000000e+00
  %7928 = fmul fast float %7926, 2.000000e+00
  %7929 = fsub fast float 1.000000e+00, %7927
  %7930 = fsub fast float 1.000000e+00, %7928
  %7931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7932 = extractvalue %dx.types.CBufRet.f32 %7931, 0
  %7933 = extractvalue %dx.types.CBufRet.f32 %7931, 1
  %7934 = extractvalue %dx.types.CBufRet.f32 %7931, 2
  %7935 = fmul fast float %7929, %7932
  %7936 = fmul fast float %7929, %7933
  %7937 = fmul fast float %7929, %7934
  %7938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7939 = extractvalue %dx.types.CBufRet.f32 %7938, 0
  %7940 = extractvalue %dx.types.CBufRet.f32 %7938, 1
  %7941 = extractvalue %dx.types.CBufRet.f32 %7938, 2
  %7942 = fmul fast float %7930, %7939
  %7943 = fmul fast float %7930, %7940
  %7944 = fmul fast float %7930, %7941
  %7945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7946 = extractvalue %dx.types.CBufRet.f32 %7945, 0
  %7947 = extractvalue %dx.types.CBufRet.f32 %7945, 1
  %7948 = extractvalue %dx.types.CBufRet.f32 %7945, 2
  %7949 = fadd fast float %7942, %7946
  %7950 = fadd fast float %7949, %7935
  %7951 = fadd fast float %7943, %7947
  %7952 = fadd fast float %7951, %7936
  %7953 = fadd fast float %7944, %7948
  %7954 = fadd fast float %7953, %7937
  %7955 = fmul fast float %7950, %7126
  %7956 = fmul fast float %7952, %7126
  %7957 = fmul fast float %7954, %7126
  %7958 = fmul fast float %7955, %7955
  %7959 = fmul fast float %7956, %7956
  %7960 = fadd fast float %7958, %7959
  %7961 = fmul fast float %7957, %7957
  %7962 = fadd fast float %7960, %7961
  %7963 = call float @dx.op.unary.f32(i32 24, float %7962)  ; Sqrt(value)
  %7964 = extractvalue %dx.types.CBufRet.f32 %6851, 0
  %7965 = fsub fast float %7963, %7964
  %7966 = extractvalue %dx.types.CBufRet.f32 %6851, 2
  %7967 = fmul fast float %7965, %7966
  %7968 = call float @dx.op.unary.f32(i32 7, float %7967)  ; Saturate(value)
  %7969 = fadd fast float %7968, -5.000000e-01
  %7970 = fmul fast float %7969, 2.000000e+00
  %7971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.f32 %7971, 2
  %7973 = call float @dx.op.binary.f32(i32 36, float %7972, float %7970)  ; FMin(a,b)
  %7974 = fsub fast float -0.000000e+00, %7972
  %7975 = fcmp fast ogt float %7973, %7974
  br i1 %7975, label %7976, label %8288, !dx.controlflow.hints !193

; <label>:7976                                    ; preds = %7921
  %7977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7978 = extractvalue %dx.types.CBufRet.f32 %7977, 3
  %7979 = fcmp fast ogt float %7978, 0.000000e+00
  br i1 %7979, label %7980, label %8055, !dx.controlflow.hints !194

; <label>:7980                                    ; preds = %7976
  %7981 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7982 = extractvalue %dx.types.Dimensions %7981, 0
  %7983 = sitofp i32 %7982 to float
  %7984 = extractvalue %dx.types.Dimensions %7981, 1
  %7985 = sitofp i32 %7984 to float
  %7986 = fmul fast float %7925, %7983
  %7987 = fmul fast float %7926, %7985
  %7988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7989 = extractvalue %dx.types.CBufRet.f32 %7988, 1
  %7990 = fsub fast float -0.000000e+00, %7989
  %7991 = fptoui float %7990 to i32
  %7992 = fptoui float %7986 to i32
  %7993 = fptoui float %7987 to i32
  %7994 = and i32 %7991, 31
  %7995 = lshr i32 %7992, %7994
  %7996 = lshr i32 %7993, %7994
  %7997 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7991, i32 %7995, i32 %7996, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7998 = extractvalue %dx.types.ResRet.f32 %7997, 0
  %7999 = fcmp fast olt float %7998, -1.000000e+00
  %8000 = fcmp fast ogt float %7998, -1.000000e+00
  %8001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8002 = extractvalue %dx.types.CBufRet.f32 %8001, 1
  %8003 = select i1 %8000, float %8002, float 1.000000e+00
  %8004 = fadd fast float %7998, 1.000000e+00
  %8005 = fmul fast float %8003, %8004
  %8006 = call float @dx.op.unary.f32(i32 6, float %8005)  ; FAbs(value)
  %8007 = extractvalue %dx.types.CBufRet.f32 %8001, 3
  %8008 = fcmp fast oge float %8006, %8007
  %8009 = select i1 %8008, float 0x4197782600000000, float %8006
  %8010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8011 = extractvalue %dx.types.CBufRet.f32 %8010, 0
  %8012 = extractvalue %dx.types.CBufRet.f32 %8010, 1
  %8013 = extractvalue %dx.types.CBufRet.f32 %8010, 2
  %8014 = select i1 %7999, float %8011, float %7932
  %8015 = select i1 %7999, float %8012, float %7933
  %8016 = select i1 %7999, float %8013, float %7934
  %8017 = fmul fast float %8014, %7929
  %8018 = fmul fast float %8015, %7929
  %8019 = fmul fast float %8016, %7929
  %8020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8021 = extractvalue %dx.types.CBufRet.f32 %8020, 0
  %8022 = extractvalue %dx.types.CBufRet.f32 %8020, 1
  %8023 = extractvalue %dx.types.CBufRet.f32 %8020, 2
  %8024 = select i1 %7999, float %8021, float %7939
  %8025 = select i1 %7999, float %8022, float %7940
  %8026 = select i1 %7999, float %8023, float %7941
  %8027 = fmul fast float %8024, %7930
  %8028 = fmul fast float %8025, %7930
  %8029 = fmul fast float %8026, %7930
  %8030 = fadd fast float %8027, %8017
  %8031 = fadd fast float %8028, %8018
  %8032 = fadd fast float %8029, %8019
  %8033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8034 = extractvalue %dx.types.CBufRet.f32 %8033, 0
  %8035 = extractvalue %dx.types.CBufRet.f32 %8033, 1
  %8036 = extractvalue %dx.types.CBufRet.f32 %8033, 2
  %8037 = select i1 %7999, float %8034, float %7946
  %8038 = select i1 %7999, float %8035, float %7947
  %8039 = select i1 %7999, float %8036, float %7948
  %8040 = fadd fast float %8030, %8037
  %8041 = fadd fast float %8031, %8038
  %8042 = fadd fast float %8032, %8039
  %8043 = fmul fast float %8040, %8009
  %8044 = fmul fast float %8041, %8009
  %8045 = fmul fast float %8042, %8009
  %8046 = fmul fast float %8043, %8043
  %8047 = fmul fast float %8044, %8044
  %8048 = fadd fast float %8046, %8047
  %8049 = fmul fast float %8045, %8045
  %8050 = fadd fast float %8048, %8049
  %8051 = call float @dx.op.unary.f32(i32 24, float %8050)  ; Sqrt(value)
  %8052 = fsub fast float %8051, %7964
  %8053 = fmul fast float %8052, %7966
  %8054 = call float @dx.op.unary.f32(i32 7, float %8053)  ; Saturate(value)
  br label %8055

; <label>:8055                                    ; preds = %7980, %7976
  %8056 = phi float [ %8054, %7980 ], [ 1.000000e+00, %7976 ]
  %8057 = fmul fast float %7973, 5.000000e-01
  %8058 = fadd fast float %8057, 5.000000e-01
  %8059 = call float @dx.op.unary.f32(i32 22, float %8058)  ; Frc(value)
  %8060 = call float @dx.op.unary.f32(i32 27, float %8059)  ; Round_ni(value)
  %8061 = call float @dx.op.unary.f32(i32 22, float %8059)  ; Frc(value)
  %8062 = fmul fast float %8061, 2.000000e+00
  %8063 = fadd fast float %8062, -1.000000e+00
  %8064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7925, float %7926, float %8060, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8065 = extractvalue %dx.types.ResRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.ResRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.ResRet.f32 %8064, 2
  %8068 = extractvalue %dx.types.ResRet.f32 %8064, 3
  %8069 = fadd fast float %8065, -5.000000e-01
  %8070 = fadd fast float %8067, -5.000000e-01
  %8071 = fmul fast float %8069, 0xBFD5555560000000
  %8072 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8070, float %8071)  ; FMad(a,b,c)
  %8073 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8066, float 0.000000e+00)  ; FMad(a,b,c)
  %8074 = fadd fast float %8073, %8068
  %8075 = fmul fast float %8069, -7.500000e-01
  %8076 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8070, float %8075)  ; FMad(a,b,c)
  %8077 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8066, float 0.000000e+00)  ; FMad(a,b,c)
  %8078 = fadd fast float %8077, %8068
  %8079 = call float @dx.op.binary.f32(i32 35, float %8072, float -1.000000e+00)  ; FMax(a,b)
  %8080 = call float @dx.op.binary.f32(i32 35, float %8074, float -1.000000e+00)  ; FMax(a,b)
  %8081 = call float @dx.op.binary.f32(i32 35, float %8076, float -1.000000e+00)  ; FMax(a,b)
  %8082 = call float @dx.op.binary.f32(i32 35, float %8078, float -1.000000e+00)  ; FMax(a,b)
  %8083 = call float @dx.op.binary.f32(i32 36, float %8079, float 1.000000e+00)  ; FMin(a,b)
  %8084 = call float @dx.op.binary.f32(i32 36, float %8080, float 1.000000e+00)  ; FMin(a,b)
  %8085 = call float @dx.op.binary.f32(i32 36, float %8081, float 1.000000e+00)  ; FMin(a,b)
  %8086 = call float @dx.op.binary.f32(i32 36, float %8082, float 1.000000e+00)  ; FMin(a,b)
  %8087 = fcmp fast olt float %8083, 0x3FEFFF8020000000
  br i1 %8087, label %8088, label %8203, !dx.controlflow.hints !195

; <label>:8088                                    ; preds = %8055
  %8089 = extractvalue %dx.types.CBufRet.f32 %7971, 3
  %8090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8091 = extractvalue %dx.types.CBufRet.f32 %8090, 0
  %8092 = extractvalue %dx.types.CBufRet.f32 %8090, 1
  %8093 = extractvalue %dx.types.CBufRet.f32 %8090, 2
  %8094 = extractvalue %dx.types.CBufRet.f32 %8090, 3
  %8095 = fsub fast float %8091, %8083
  %8096 = fsub fast float %8092, %8084
  %8097 = fsub fast float %8093, %8085
  %8098 = fsub fast float %8094, %8086
  %8099 = fmul fast float %8095, %8089
  %8100 = fmul fast float %8096, %8089
  %8101 = fmul fast float %8097, %8089
  %8102 = fmul fast float %8098, %8089
  %8103 = fadd fast float %8099, %8083
  %8104 = fadd fast float %8100, %8084
  %8105 = fsub fast float -0.000000e+00, %8104
  %8106 = fadd fast float %8101, %8085
  %8107 = fadd fast float %8102, %8086
  %8108 = fmul fast float %8103, %8103
  %8109 = fsub fast float %8104, %8108
  %8110 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8109)  ; FMax(a,b)
  %8111 = fdiv fast float 1.000000e+00, %8110
  %8112 = fmul fast float %8104, %8103
  %8113 = fsub fast float %8106, %8112
  %8114 = fsub fast float %8063, %8103
  %8115 = fmul fast float %8063, %8063
  %8116 = fsub fast float %8115, %8104
  %8117 = fmul fast float %8114, %8111
  %8118 = fmul fast float %8117, %8113
  %8119 = fsub fast float %8116, %8118
  %8120 = fmul fast float %8104, %8104
  %8121 = fsub fast float %8107, %8120
  %8122 = fmul fast float %8113, %8113
  %8123 = fmul fast float %8122, %8111
  %8124 = fsub fast float %8121, %8123
  %8125 = fdiv fast float %8119, %8124
  %8126 = fmul fast float %8113, %8125
  %8127 = fsub fast float %8114, %8126
  %8128 = fmul fast float %8127, %8111
  %8129 = fmul fast float %8128, %8103
  %8130 = fsub fast float 1.000000e+00, %8129
  %8131 = fmul fast float %8104, %8125
  %8132 = fsub fast float %8130, %8131
  %8133 = fmul fast float %8128, %8128
  %8134 = fmul fast float %8125, 4.000000e+00
  %8135 = fmul fast float %8134, %8132
  %8136 = fsub fast float %8133, %8135
  %8137 = call float @dx.op.unary.f32(i32 24, float %8136)  ; Sqrt(value)
  %8138 = fcmp fast oge float %8128, 0.000000e+00
  %8139 = fsub fast float -0.000000e+00, %8137
  %8140 = select i1 %8138, float %8139, float %8137
  %8141 = fsub fast float %8140, %8128
  %8142 = fdiv fast float %8141, %8125
  %8143 = fdiv fast float %8132, %8141
  %8144 = fmul fast float %8142, 5.000000e-01
  %8145 = fmul fast float %8143, 2.000000e+00
  %8146 = select i1 %8138, float %8144, float %8145
  %8147 = select i1 %8138, float %8145, float %8144
  %8148 = call float @dx.op.binary.f32(i32 35, float %8146, float %8147)  ; FMax(a,b)
  %8149 = call float @dx.op.binary.f32(i32 36, float %8146, float %8147)  ; FMin(a,b)
  %8150 = fcmp fast ogt float %8063, %8149
  br i1 %8150, label %8151, label %8161

; <label>:8151                                    ; preds = %8088
  %8152 = fsub fast float %8063, %8149
  %8153 = fsub fast float %8148, %8149
  %8154 = fmul fast float %8152, %8153
  %8155 = fmul fast float %8148, %8063
  %8156 = fadd fast float %8148, %8063
  %8157 = fmul fast float %8156, %8103
  %8158 = fadd fast float %8155, %8104
  %8159 = fsub fast float %8158, %8157
  %8160 = fdiv fast float %8159, %8154
  br label %8161

; <label>:8161                                    ; preds = %8151, %8088
  %8162 = phi float [ %8160, %8151 ], [ 0.000000e+00, %8088 ]
  %8163 = fcmp fast ogt float %8063, %8148
  %8164 = fsub fast float %8063, %8148
  br i1 %8163, label %8165, label %8175

; <label>:8165                                    ; preds = %8161
  %8166 = fsub fast float %8148, %8149
  %8167 = fmul fast float %8166, %8164
  %8168 = fmul fast float %8149, %8063
  %8169 = fadd fast float %8149, %8063
  %8170 = fmul fast float %8169, %8103
  %8171 = fsub fast float %8105, %8168
  %8172 = fadd fast float %8171, %8170
  %8173 = fdiv fast float %8172, %8167
  %8174 = fadd fast float %8173, %8162
  br label %8175

; <label>:8175                                    ; preds = %8165, %8161
  %8176 = phi float [ %8174, %8165 ], [ %8162, %8161 ]
  %8177 = fsub fast float %8063, %8149
  %8178 = fmul fast float %8177, %8164
  %8179 = fmul fast float %8149, %8148
  %8180 = fadd fast float %8149, %8148
  %8181 = fmul fast float %8180, %8103
  %8182 = fadd fast float %8179, %8104
  %8183 = fsub fast float %8182, %8181
  %8184 = fdiv fast float %8183, %8178
  %8185 = call float @dx.op.unary.f32(i32 7, float %8176)  ; Saturate(value)
  %8186 = fcmp fast oeq float %6852, 0.000000e+00
  %8187 = extractvalue %dx.types.CBufRet.f32 %7971, 0
  %8188 = fcmp fast oeq float %8187, 0.000000e+00
  %8189 = or i1 %8186, %8188
  %8190 = fmul fast float %8187, 2.000000e+00
  %8191 = fadd fast float %7972, %7973
  %8192 = fdiv fast float %8191, %8190
  %8193 = call float @dx.op.unary.f32(i32 7, float %8192)  ; Saturate(value)
  %8194 = fmul fast float %8193, 2.000000e+00
  %8195 = fsub fast float 3.000000e+00, %8194
  %8196 = fmul fast float %8193, %8193
  %8197 = fmul fast float %8196, %8195
  %8198 = select i1 %8189, float 1.000000e+00, float %8197
  %8199 = fmul fast float %8184, %6852
  %8200 = fadd fast float %8185, %8199
  %8201 = call float @dx.op.unary.f32(i32 7, float %8200)  ; Saturate(value)
  %8202 = fmul fast float %8198, %8201
  br label %8203

; <label>:8203                                    ; preds = %8175, %8055
  %8204 = phi float [ %8202, %8175 ], [ 0.000000e+00, %8055 ]
  %8205 = fsub fast float 1.000000e+00, %8204
  %8206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7925, float %7926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8207 = extractvalue %dx.types.ResRet.f32 %8206, 0
  %8208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8209 = extractvalue %dx.types.CBufRet.i32 %8208, 2
  %8210 = icmp eq i32 %8209, 0
  br i1 %8210, label %8216, label %8211

; <label>:8211                                    ; preds = %8203
  %8212 = call float @dx.op.unary.f32(i32 7, float %8204)  ; Saturate(value)
  %8213 = fadd fast float %8207, -1.000000e+00
  %8214 = fmul fast float %8212, %8213
  %8215 = fadd fast float %8214, 1.000000e+00
  br label %8216

; <label>:8216                                    ; preds = %8211, %8203
  %8217 = phi float [ %8215, %8211 ], [ %8205, %8203 ]
  br i1 %7979, label %8218, label %8236

; <label>:8218                                    ; preds = %8216
  %8219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8220 = extractvalue %dx.types.CBufRet.f32 %8219, 1
  %8221 = fsub fast float %8056, %8220
  %8222 = call float @dx.op.unary.f32(i32 7, float %8221)  ; Saturate(value)
  %8223 = fsub fast float %8056, %7978
  %8224 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8225 = fsub fast float %8222, %8224
  %8226 = fsub fast float %8058, %8224
  %8227 = fdiv fast float %8226, %8225
  %8228 = call float @dx.op.unary.f32(i32 7, float %8227)  ; Saturate(value)
  %8229 = fmul fast float %8228, 2.000000e+00
  %8230 = fsub fast float 3.000000e+00, %8229
  %8231 = fsub fast float %8207, %8217
  %8232 = fmul fast float %8228, %8228
  %8233 = fmul fast float %8232, %8231
  %8234 = fmul fast float %8233, %8230
  %8235 = fadd fast float %8234, %8217
  br label %8236

; <label>:8236                                    ; preds = %8218, %8216
  %8237 = phi float [ %8235, %8218 ], [ %8217, %8216 ]
  %8238 = call float @dx.op.binary.f32(i32 35, float %8207, float %8237)  ; FMax(a,b)
  %8239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.i32 %8239, 2
  %8241 = and i32 %8240, 1
  %8242 = icmp eq i32 %8241, 0
  %8243 = fcmp fast une float %8238, 1.000000e+00
  %8244 = and i1 %8243, %8242
  br i1 %8244, label %8245, label %8264

; <label>:8245                                    ; preds = %8236
  %8246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7925, float %7926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8247 = extractvalue %dx.types.ResRet.f32 %8246, 0
  %8248 = extractvalue %dx.types.ResRet.f32 %8246, 1
  %8249 = extractvalue %dx.types.ResRet.f32 %8246, 2
  %8250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8251 = extractvalue %dx.types.CBufRet.f32 %8250, 1
  %8252 = fmul fast float %8251, %8247
  %8253 = fmul fast float %8251, %8248
  %8254 = fmul fast float %8251, %8249
  %8255 = fcmp fast ogt float %8207, 0x3FEFFF2E40000000
  %8256 = fsub fast float 1.000000e+00, %8238
  %8257 = fsub fast float 1.000000e+00, %8207
  %8258 = fdiv fast float %8256, %8257
  %8259 = call float @dx.op.unary.f32(i32 7, float %8258)  ; Saturate(value)
  %8260 = select i1 %8255, float 0.000000e+00, float %8259
  %8261 = fmul fast float %8252, %8260
  %8262 = fmul fast float %8253, %8260
  %8263 = fmul fast float %8254, %8260
  br label %8264

; <label>:8264                                    ; preds = %8245, %8236
  %8265 = phi float [ 0.000000e+00, %8236 ], [ %8261, %8245 ]
  %8266 = phi float [ 0.000000e+00, %8236 ], [ %8262, %8245 ]
  %8267 = phi float [ 0.000000e+00, %8236 ], [ %8263, %8245 ]
  %8268 = fmul fast float %8265, %6836
  %8269 = fmul fast float %8266, %6838
  %8270 = fmul fast float %8267, %6840
  %8271 = fmul fast float %8238, %7900
  %8272 = call float @dx.op.dot3.f32(i32 55, float %8238, float %8238, float %8238, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8273 = call float @dx.op.dot3.f32(i32 55, float %8268, float %8269, float %8270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8274 = select i1 %237, float %8272, float %8238
  %8275 = select i1 %237, float 1.000000e+00, float %8238
  %8276 = select i1 %237, float %8273, float %8268
  %8277 = select i1 %237, float 0.000000e+00, float %8269
  %8278 = select i1 %237, float 0.000000e+00, float %8270
  %8279 = fmul fast float %8274, %7912
  %8280 = fmul fast float %8274, %7913
  %8281 = fmul fast float %8275, %7914
  %8282 = fadd fast float %8279, %8276
  %8283 = fadd fast float %8280, %8277
  %8284 = fadd fast float %8278, %8281
  %8285 = fmul fast float %8274, %7915
  %8286 = fmul fast float %8274, %7916
  %8287 = fmul fast float %8275, %7917
  br label %8288

; <label>:8288                                    ; preds = %8264, %7921, %7890, %7122
  %8289 = phi float [ %7127, %7122 ], [ %7912, %7890 ], [ %8282, %8264 ], [ %7912, %7921 ]
  %8290 = phi float [ %7128, %7122 ], [ %7913, %7890 ], [ %8283, %8264 ], [ %7913, %7921 ]
  %8291 = phi float [ %7129, %7122 ], [ %7914, %7890 ], [ %8284, %8264 ], [ %7914, %7921 ]
  %8292 = phi float [ %7130, %7122 ], [ %7915, %7890 ], [ %8285, %8264 ], [ %7915, %7921 ]
  %8293 = phi float [ %7131, %7122 ], [ %7916, %7890 ], [ %8286, %8264 ], [ %7916, %7921 ]
  %8294 = phi float [ %7132, %7122 ], [ %7917, %7890 ], [ %8287, %8264 ], [ %7917, %7921 ]
  %8295 = phi float [ %7133, %7122 ], [ %7900, %7890 ], [ %8271, %8264 ], [ %7900, %7921 ]
  %8296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8296, 2
  %8298 = extractvalue %dx.types.CBufRet.f32 %8296, 3
  %8299 = fmul fast float %8297, %99
  %8300 = fmul fast float %8298, %100
  %8301 = call float @dx.op.unary.f32(i32 7, float %8299)  ; Saturate(value)
  %8302 = call float @dx.op.unary.f32(i32 7, float %8300)  ; Saturate(value)
  %8303 = select i1 %6862, i32 2, i32 0
  %8304 = or i32 %8303, 1
  %8305 = uitofp i32 %8304 to float
  %8306 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8301, float %8302, float %8305, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8307 = extractvalue %dx.types.ResRet.f32 %8306, 0
  %8308 = extractvalue %dx.types.ResRet.f32 %8306, 1
  %8309 = extractvalue %dx.types.ResRet.f32 %8306, 2
  %8310 = extractvalue %dx.types.ResRet.f32 %8306, 3
  %8311 = add nuw nsw i32 %8303, 2
  %8312 = uitofp i32 %8311 to float
  %8313 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8301, float %8302, float %8312, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8314 = extractvalue %dx.types.ResRet.f32 %8313, 0
  %8315 = extractvalue %dx.types.ResRet.f32 %8313, 1
  %8316 = extractvalue %dx.types.ResRet.f32 %8313, 2
  %8317 = extractvalue %dx.types.ResRet.f32 %8313, 3
  %8318 = call float @dx.op.binary.f32(i32 35, float %8308, float %8309)  ; FMax(a,b)
  %8319 = call float @dx.op.binary.f32(i32 35, float %8307, float %8318)  ; FMax(a,b)
  %8320 = call float @dx.op.binary.f32(i32 35, float %8319, float %8310)  ; FMax(a,b)
  %8321 = call float @dx.op.binary.f32(i32 36, float %8315, float %8316)  ; FMin(a,b)
  %8322 = call float @dx.op.binary.f32(i32 36, float %8314, float %8321)  ; FMin(a,b)
  %8323 = call float @dx.op.binary.f32(i32 36, float %8322, float %8317)  ; FMin(a,b)
  %8324 = fmul fast float %8320, 2.550000e+02
  %8325 = fadd fast float %8324, 0x3F70101020000000
  %8326 = fptoui float %8325 to i32
  %8327 = fmul fast float %8323, 2.550000e+02
  %8328 = fadd fast float %8327, 0x3F70101020000000
  %8329 = fptoui float %8328 to i32
  %8330 = icmp ult i32 %8326, %8329
  br i1 %8330, label %8331, label %8500

; <label>:8331                                    ; preds = %8288
  %8332 = fcmp fast ogt float %86, 9.843750e-01
  %8333 = fadd fast float %7126, -4.000000e+00
  %8334 = select i1 %8332, float -4.000000e+00, float %8333
  %8335 = call float @dx.op.binary.f32(i32 35, float %8334, float 0.000000e+00)  ; FMax(a,b)
  %8336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8337 = extractvalue %dx.types.CBufRet.f32 %8336, 0
  %8338 = fadd fast float %8337, %8335
  %8339 = extractvalue %dx.types.CBufRet.f32 %8336, 2
  %8340 = fmul fast float %8338, %8339
  %8341 = call float @dx.op.unary.f32(i32 23, float %8340)  ; Log(value)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8336, 3
  %8343 = fmul fast float %8342, %8341
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 2
  %8346 = fmul fast float %8343, %8345
  %8347 = call float @dx.op.unary.f32(i32 7, float %8346)  ; Saturate(value)
  %8348 = uitofp i32 %8326 to float
  %8349 = uitofp i32 %8329 to float
  %8350 = fadd fast float %8348, 5.000000e-01
  %8351 = fadd fast float %8349, 5.000000e-01
  %8352 = fmul fast float %8345, %8350
  %8353 = fmul fast float %8345, %8351
  %8354 = fadd fast float %8352, 0x3F0FFB4800000000
  %8355 = fadd fast float %8353, 0xBF0FFB4800000000
  %8356 = call float @dx.op.binary.f32(i32 35, float %8347, float %8354)  ; FMax(a,b)
  %8357 = call float @dx.op.binary.f32(i32 36, float %8356, float %8355)  ; FMin(a,b)
  %8358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8359 = extractvalue %dx.types.CBufRet.f32 %8358, 1
  %8360 = extractvalue %dx.types.CBufRet.f32 %8358, 2
  %8361 = extractvalue %dx.types.CBufRet.f32 %8358, 0
  %8362 = select i1 %6862, float %8361, float 0.000000e+00
  %8363 = fmul fast float %8359, %8357
  %8364 = fadd fast float %8362, %8363
  %8365 = fadd fast float %8362, %8360
  %8366 = fsub fast float %8359, %8360
  %8367 = fadd fast float %8366, %8362
  %8368 = call float @dx.op.binary.f32(i32 35, float %8364, float %8365)  ; FMax(a,b)
  %8369 = call float @dx.op.binary.f32(i32 36, float %8368, float %8367)  ; FMin(a,b)
  %8370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %8301, float %8302, float %8369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8371 = extractvalue %dx.types.ResRet.f32 %8370, 0
  %8372 = extractvalue %dx.types.ResRet.f32 %8370, 1
  %8373 = extractvalue %dx.types.ResRet.f32 %8370, 2
  %8374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.i32 %8374, 0
  %8376 = extractvalue %dx.types.CBufRet.i32 %8374, 1
  %8377 = uitofp i32 %8375 to float
  %8378 = uitofp i32 %8376 to float
  %8379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8380 = extractvalue %dx.types.CBufRet.f32 %8379, 0
  %8381 = extractvalue %dx.types.CBufRet.f32 %8379, 1
  %8382 = fmul fast float %8377, %8301
  %8383 = fmul fast float %8378, %8302
  %8384 = fadd fast float %8382, -5.000000e-01
  %8385 = fadd fast float %8383, -5.000000e-01
  %8386 = call float @dx.op.unary.f32(i32 22, float %8384)  ; Frc(value)
  %8387 = call float @dx.op.unary.f32(i32 22, float %8385)  ; Frc(value)
  %8388 = fmul fast float %8386, %8386
  %8389 = fmul fast float %8388, %8386
  %8390 = fsub fast float 3.000000e+00, %8386
  %8391 = fmul fast float %8388, %8390
  %8392 = fmul fast float %8386, 3.000000e+00
  %8393 = fmul fast float %8389, 3.000000e+00
  %8394 = fmul fast float %8388, 6.000000e+00
  %8395 = fsub fast float %8393, %8394
  %8396 = fadd fast float %8395, 4.000000e+00
  %8397 = fmul fast float %8396, 0x3FC5555560000000
  %8398 = fmul fast float %8389, -3.000000e+00
  %8399 = fadd fast float %8388, %8386
  %8400 = fmul fast float %8399, 3.000000e+00
  %8401 = fadd fast float %8398, 1.000000e+00
  %8402 = fadd fast float %8401, %8400
  %8403 = fmul fast float %8389, 0x3FC5555560000000
  %8404 = fmul fast float %8387, %8387
  %8405 = fmul fast float %8404, %8387
  %8406 = fsub fast float 3.000000e+00, %8387
  %8407 = fmul fast float %8404, %8406
  %8408 = fmul fast float %8387, 3.000000e+00
  %8409 = fmul fast float %8405, 3.000000e+00
  %8410 = fmul fast float %8404, 6.000000e+00
  %8411 = fsub fast float %8409, %8410
  %8412 = fadd fast float %8411, 4.000000e+00
  %8413 = fmul fast float %8412, 0x3FC5555560000000
  %8414 = fmul fast float %8405, -3.000000e+00
  %8415 = fadd fast float %8404, %8387
  %8416 = fmul fast float %8415, 3.000000e+00
  %8417 = fadd fast float %8414, 1.000000e+00
  %8418 = fadd fast float %8417, %8416
  %8419 = fmul fast float %8405, 0x3FC5555560000000
  %8420 = fadd fast float %8386, 1.000000e+00
  %8421 = fsub fast float 1.000000e+00, %8392
  %8422 = fadd fast float %8421, %8391
  %8423 = fadd fast float %8422, %8396
  %8424 = fmul fast float %8423, 0x3FC5555560000000
  %8425 = fdiv fast float %8397, %8424
  %8426 = fsub fast float %8420, %8425
  %8427 = fsub fast float 1.000000e+00, %8386
  %8428 = fadd fast float %8402, %8389
  %8429 = fmul fast float %8428, 0x3FC5555560000000
  %8430 = fdiv fast float %8403, %8429
  %8431 = fadd fast float %8427, %8430
  %8432 = fadd fast float %8387, 1.000000e+00
  %8433 = fsub fast float 1.000000e+00, %8408
  %8434 = fadd fast float %8433, %8407
  %8435 = fadd fast float %8434, %8412
  %8436 = fmul fast float %8435, 0x3FC5555560000000
  %8437 = fdiv fast float %8413, %8436
  %8438 = fsub fast float %8432, %8437
  %8439 = fsub fast float 1.000000e+00, %8387
  %8440 = fadd fast float %8418, %8405
  %8441 = fmul fast float %8440, 0x3FC5555560000000
  %8442 = fdiv fast float %8419, %8441
  %8443 = fadd fast float %8442, %8439
  %8444 = fmul fast float %8426, %8380
  %8445 = fsub fast float %8301, %8444
  %8446 = fmul fast float %8431, %8380
  %8447 = fadd fast float %8446, %8301
  %8448 = fmul fast float %8443, %8381
  %8449 = fadd fast float %8448, %8302
  %8450 = fmul fast float %8438, %8381
  %8451 = fsub fast float %8302, %8450
  %8452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8445, float %8451, float %8369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8453 = extractvalue %dx.types.ResRet.f32 %8452, 0
  %8454 = extractvalue %dx.types.ResRet.f32 %8452, 1
  %8455 = extractvalue %dx.types.ResRet.f32 %8452, 2
  %8456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8447, float %8451, float %8369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8457 = extractvalue %dx.types.ResRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.ResRet.f32 %8456, 1
  %8459 = extractvalue %dx.types.ResRet.f32 %8456, 2
  %8460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8445, float %8449, float %8369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8461 = extractvalue %dx.types.ResRet.f32 %8460, 0
  %8462 = extractvalue %dx.types.ResRet.f32 %8460, 1
  %8463 = extractvalue %dx.types.ResRet.f32 %8460, 2
  %8464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8447, float %8449, float %8369, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8465 = extractvalue %dx.types.ResRet.f32 %8464, 0
  %8466 = extractvalue %dx.types.ResRet.f32 %8464, 1
  %8467 = extractvalue %dx.types.ResRet.f32 %8464, 2
  %8468 = fsub fast float %8461, %8453
  %8469 = fsub fast float %8462, %8454
  %8470 = fsub fast float %8463, %8455
  %8471 = fmul fast float %8468, %8441
  %8472 = fmul fast float %8469, %8441
  %8473 = fmul fast float %8470, %8441
  %8474 = fadd fast float %8471, %8453
  %8475 = fadd fast float %8472, %8454
  %8476 = fadd fast float %8473, %8455
  %8477 = fsub fast float %8465, %8457
  %8478 = fsub fast float %8466, %8458
  %8479 = fsub fast float %8467, %8459
  %8480 = fmul fast float %8477, %8441
  %8481 = fmul fast float %8478, %8441
  %8482 = fmul fast float %8479, %8441
  %8483 = fsub fast float %8457, %8474
  %8484 = fadd fast float %8483, %8480
  %8485 = fsub fast float %8458, %8475
  %8486 = fadd fast float %8485, %8481
  %8487 = fsub fast float %8459, %8476
  %8488 = fadd fast float %8487, %8482
  %8489 = fmul fast float %8484, %8429
  %8490 = fmul fast float %8486, %8429
  %8491 = fmul fast float %8488, %8429
  %8492 = fadd fast float %8489, %8474
  %8493 = fadd fast float %8490, %8475
  %8494 = fadd fast float %8491, %8476
  %8495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8496 = extractvalue %dx.types.CBufRet.f32 %8495, 1
  %8497 = fmul fast float %8492, %8496
  %8498 = fmul fast float %8493, %8496
  %8499 = fmul fast float %8494, %8496
  br label %8500

; <label>:8500                                    ; preds = %8331, %8288
  %8501 = phi float [ %8371, %8331 ], [ 1.000000e+00, %8288 ]
  %8502 = phi float [ %8372, %8331 ], [ 1.000000e+00, %8288 ]
  %8503 = phi float [ %8373, %8331 ], [ 1.000000e+00, %8288 ]
  %8504 = phi float [ %8497, %8331 ], [ 0.000000e+00, %8288 ]
  %8505 = phi float [ %8498, %8331 ], [ 0.000000e+00, %8288 ]
  %8506 = phi float [ %8499, %8331 ], [ 0.000000e+00, %8288 ]
  %8507 = fmul fast float %8504, %6836
  %8508 = fmul fast float %8505, %6838
  %8509 = fmul fast float %8506, %6840
  %8510 = fmul fast float %8501, %8295
  %8511 = call float @dx.op.dot3.f32(i32 55, float %8501, float %8502, float %8503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8512 = call float @dx.op.dot3.f32(i32 55, float %8507, float %8508, float %8509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8513 = select i1 %237, float %8511, float %8501
  %8514 = select i1 %237, float %8511, float %8502
  %8515 = select i1 %237, float 1.000000e+00, float %8503
  %8516 = select i1 %237, float %8512, float %8507
  %8517 = select i1 %237, float 0.000000e+00, float %8508
  %8518 = select i1 %237, float 0.000000e+00, float %8509
  %8519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8520 = extractvalue %dx.types.CBufRet.i32 %8519, 3
  %8521 = and i32 %8520, 3
  %8522 = icmp ne i32 %8521, 0
  %8523 = and i32 %8520, 4
  %8524 = icmp ne i32 %8523, 0
  %8525 = and i1 %8522, %8524
  %8526 = and i1 %237, %8525
  br i1 %8526, label %8527, label %8533

; <label>:8527                                    ; preds = %8500
  %8528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8529 = extractvalue %dx.types.CBufRet.f32 %8528, 1
  %8530 = fadd fast float %8510, -1.000000e+00
  %8531 = fmul fast float %8529, %8530
  %8532 = fadd fast float %8531, 1.000000e+00
  br label %8533

; <label>:8533                                    ; preds = %8527, %8500
  %8534 = phi float [ %8532, %8527 ], [ %8510, %8500 ]
  %8535 = fadd fast float %8292, %8289
  %8536 = fmul fast float %8513, %8535
  %8537 = fadd fast float %8536, %8516
  %8538 = fadd fast float %8293, %8290
  %8539 = fmul fast float %8514, %8538
  %8540 = fadd fast float %8539, %8517
  %8541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8542 = extractvalue %dx.types.CBufRet.f32 %8541, 0
  br i1 %237, label %8543, label %8558

; <label>:8543                                    ; preds = %8533
  %8544 = fadd fast float %8537, %8540
  %8545 = fmul fast float %8542, %8544
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 3
  %8548 = extractvalue %dx.types.CBufRet.f32 %6844, 1
  %8549 = fsub fast float %6849, %6843
  %8550 = fadd fast float %8549, %6850
  %8551 = fsub fast float %8550, %8548
  %8552 = extractvalue %dx.types.CBufRet.f32 %6844, 2
  %8553 = fmul fast float %8551, %8552
  %8554 = call float @dx.op.unary.f32(i32 7, float %8553)  ; Saturate(value)
  %8555 = fsub fast float %8554, %8547
  %8556 = fmul fast float %8555, %8534
  %8557 = fadd fast float %8556, %8547
  br label %8584

; <label>:8558                                    ; preds = %8533
  %8559 = fadd fast float %8294, %8291
  %8560 = fmul fast float %8515, %8559
  %8561 = fadd fast float %8560, %8518
  %8562 = fmul fast float %8542, %8537
  %8563 = fmul fast float %8542, %8540
  %8564 = fmul fast float %8542, %8561
  %8565 = call float @dx.op.binary.f32(i32 35, float %8563, float %8564)  ; FMax(a,b)
  %8566 = call float @dx.op.binary.f32(i32 35, float %8562, float %8565)  ; FMax(a,b)
  %8567 = call float @dx.op.binary.f32(i32 35, float %6838, float %6840)  ; FMax(a,b)
  %8568 = call float @dx.op.binary.f32(i32 35, float %6836, float %8567)  ; FMax(a,b)
  %8569 = call float @dx.op.binary.f32(i32 35, float %8566, float %8568)  ; FMax(a,b)
  %8570 = fcmp fast ugt float %8569, 0x3F10000000000000
  br i1 %8570, label %8572, label %8571

; <label>:8571                                    ; preds = %8558
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8572

; <label>:8572                                    ; preds = %8571, %8558
  %8573 = add i32 %71, 116
  %8574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %8573, i32 undef)  ; BufferLoad(srv,index,wot)
  %8575 = extractvalue %dx.types.ResRet.i32 %8574, 0
  %8576 = and i32 %8575, 32
  %8577 = icmp eq i32 %8576, 0
  br i1 %8577, label %8584, label %8578

; <label>:8578                                    ; preds = %8572
  %8579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8580 = extractvalue %dx.types.CBufRet.f32 %8579, 0
  %8581 = fmul fast float %8580, 0x3FE99999A0000000
  %8582 = fadd fast float %8580, %8562
  %8583 = fadd fast float %8581, %8564
  br label %8584

; <label>:8584                                    ; preds = %8578, %8572, %8543
  %8585 = phi float [ 1.000000e+00, %8543 ], [ %6838, %8578 ], [ %6838, %8572 ]
  %8586 = phi float [ 1.000000e+00, %8543 ], [ %6840, %8578 ], [ %6840, %8572 ]
  %8587 = phi float [ %8545, %8543 ], [ %8582, %8578 ], [ %8562, %8572 ]
  %8588 = phi float [ %8557, %8543 ], [ %8563, %8578 ], [ %8563, %8572 ]
  %8589 = phi float [ 1.000000e+00, %8543 ], [ %8583, %8578 ], [ %8564, %8572 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8590 = call float @dx.op.binary.f32(i32 36, float %8587, float 3.225500e+04)  ; FMin(a,b)
  %8591 = call float @dx.op.binary.f32(i32 36, float %8588, float 3.225500e+04)  ; FMin(a,b)
  %8592 = call float @dx.op.binary.f32(i32 36, float %8589, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8590)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8591)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8592)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8593 = call float @dx.op.binary.f32(i32 36, float %6836, float 3.225500e+04)  ; FMin(a,b)
  %8594 = call float @dx.op.binary.f32(i32 36, float %8585, float 3.225500e+04)  ; FMin(a,b)
  %8595 = call float @dx.op.binary.f32(i32 36, float %8586, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8593)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8594)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8595)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

