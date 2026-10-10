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
; shader hash: 613bb9e12b28a089f00c3f476d1b1409
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
  br i1 %1049, label %1478, label %1050

; <label>:1050                                    ; preds = %955
  %1051 = and i32 %1046, 1023
  br label %1052

; <label>:1052                                    ; preds = %1179, %1050
  %1053 = phi float [ %1180, %1179 ], [ 0.000000e+00, %1050 ]
  %1054 = phi float [ %1181, %1179 ], [ %965, %1050 ]
  %1055 = phi float [ %1182, %1179 ], [ %970, %1050 ]
  %1056 = phi float [ %1183, %1179 ], [ %968, %1050 ]
  %1057 = phi float [ %1184, %1179 ], [ 0.000000e+00, %1050 ]
  %1058 = phi float [ %1185, %1179 ], [ 0.000000e+00, %1050 ]
  %1059 = phi float [ %1186, %1179 ], [ %961, %1050 ]
  %1060 = phi float [ %1187, %1179 ], [ %962, %1050 ]
  %1061 = phi float [ %1188, %1179 ], [ %963, %1050 ]
  %1062 = phi float [ %1189, %1179 ], [ %996, %1050 ]
  %1063 = phi float [ %1190, %1179 ], [ %997, %1050 ]
  %1064 = phi float [ %1191, %1179 ], [ %998, %1050 ]
  %1065 = phi float [ %1192, %1179 ], [ %967, %1050 ]
  %1066 = phi float [ %1193, %1179 ], [ %966, %1050 ]
  %1067 = phi float [ %1194, %1179 ], [ 0.000000e+00, %1050 ]
  %1068 = phi float [ %1195, %1179 ], [ %964, %1050 ]
  %1069 = phi float [ %1196, %1179 ], [ %958, %1050 ]
  %1070 = phi float [ %1197, %1179 ], [ %959, %1050 ]
  %1071 = phi float [ %1198, %1179 ], [ %960, %1050 ]
  %1072 = phi i32 [ %1129, %1179 ], [ 0, %1050 ]
  %1073 = add nuw nsw i32 %1072, %1048
  %1074 = shl i32 %1073, 2
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = shl i32 %1076, 8
  %1078 = or i32 %1077, 48
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = extractvalue %dx.types.ResRet.f32 %1079, 3
  %1084 = or i32 %1077, 64
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.i32 %1085, 1
  %1088 = or i32 %1077, 80
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 3
  %1092 = or i32 %1077, 96
  %1093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = extractvalue %dx.types.ResRet.f32 %1093, 3
  %1098 = or i32 %1077, 112
  %1099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 2
  %1101 = or i32 %1077, 128
  %1102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = extractvalue %dx.types.ResRet.f32 %1102, 3
  %1107 = or i32 %1077, 144
  %1108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = extractvalue %dx.types.ResRet.f32 %1108, 3
  %1113 = or i32 %1077, 160
  %1114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = extractvalue %dx.types.ResRet.f32 %1114, 3
  %1119 = or i32 %1077, 192
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = or i32 %1077, 208
  %1123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = or i32 %1077, 248
  %1126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = add nuw nsw i32 %1072, 1
  %1130 = bitcast float %1083 to i32
  %1131 = and i32 %1130, 2560
  %1132 = icmp eq i32 %1131, 0
  %1133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = extractvalue %dx.types.ResRet.f32 %1133, 3
  %1138 = call float @dx.op.dot4.f32(i32 56, float %1134, float %1135, float %1136, float %1137, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1139 = or i32 %1077, 16
  %1140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = extractvalue %dx.types.ResRet.f32 %1140, 3
  %1145 = call float @dx.op.dot4.f32(i32 56, float %1141, float %1142, float %1143, float %1144, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1146 = or i32 %1077, 32
  %1147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 0
  %1149 = extractvalue %dx.types.ResRet.f32 %1147, 1
  %1150 = extractvalue %dx.types.ResRet.f32 %1147, 2
  %1151 = extractvalue %dx.types.ResRet.f32 %1147, 3
  %1152 = call float @dx.op.dot4.f32(i32 56, float %1148, float %1149, float %1150, float %1151, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1153 = call float @dx.op.unary.f32(i32 27, float %1138)  ; Round_ni(value)
  %1154 = call float @dx.op.unary.f32(i32 6, float %1153)  ; FAbs(value)
  %1155 = call float @dx.op.unary.f32(i32 27, float %1145)  ; Round_ni(value)
  %1156 = call float @dx.op.unary.f32(i32 6, float %1155)  ; FAbs(value)
  %1157 = call float @dx.op.unary.f32(i32 6, float %1152)  ; FAbs(value)
  %1158 = call float @dx.op.unary.f32(i32 27, float %1157)  ; Round_ni(value)
  %1159 = fadd fast float %1156, %1154
  %1160 = fadd fast float %1159, %1158
  %1161 = fcmp fast oeq float %1160, 0.000000e+00
  %1162 = call float @dx.op.dot4.f32(i32 56, float %1134, float %1135, float %1136, float %1137, float %1005, float %1006, float %1007, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1163 = call float @dx.op.dot4.f32(i32 56, float %1141, float %1142, float %1143, float %1144, float %1005, float %1006, float %1007, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1164 = call float @dx.op.dot4.f32(i32 56, float %1134, float %1135, float %1136, float %1137, float %1008, float %1009, float %1010, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1165 = call float @dx.op.dot4.f32(i32 56, float %1141, float %1142, float %1143, float %1144, float %1008, float %1009, float %1010, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1166 = fsub fast float %1162, %1138
  %1167 = fsub fast float %1164, %1138
  %1168 = fsub fast float %1163, %1145
  %1169 = fsub fast float %1165, %1145
  %1170 = call float @dx.op.dot3.f32(i32 55, float %1080, float %1081, float %1082, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 2
  %1173 = fadd fast float %1172, %1170
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1176 = fcmp fast ogt float %1174, %1175
  %1177 = and i1 %1161, %1176
  %1178 = and i1 %1132, %1177
  br i1 %1178, label %1200, label %1179

; <label>:1179                                    ; preds = %1464, %1281, %1200, %1052
  %1180 = phi float [ %1053, %1200 ], [ %1284, %1281 ], [ %1284, %1464 ], [ %1053, %1052 ]
  %1181 = phi float [ %1054, %1200 ], [ %1054, %1281 ], [ %1439, %1464 ], [ %1054, %1052 ]
  %1182 = phi float [ %1055, %1200 ], [ %1055, %1281 ], [ %1438, %1464 ], [ %1055, %1052 ]
  %1183 = phi float [ %1056, %1200 ], [ %1056, %1281 ], [ %1436, %1464 ], [ %1056, %1052 ]
  %1184 = phi float [ %1057, %1200 ], [ %1057, %1281 ], [ %1408, %1464 ], [ %1057, %1052 ]
  %1185 = phi float [ %1058, %1200 ], [ %1058, %1281 ], [ %1406, %1464 ], [ %1058, %1052 ]
  %1186 = phi float [ %1059, %1200 ], [ %1059, %1281 ], [ %1474, %1464 ], [ %1059, %1052 ]
  %1187 = phi float [ %1060, %1200 ], [ %1060, %1281 ], [ %1475, %1464 ], [ %1060, %1052 ]
  %1188 = phi float [ %1061, %1200 ], [ %1061, %1281 ], [ %1476, %1464 ], [ %1061, %1052 ]
  %1189 = phi float [ %1062, %1200 ], [ %1062, %1281 ], [ %1387, %1464 ], [ %1062, %1052 ]
  %1190 = phi float [ %1063, %1200 ], [ %1063, %1281 ], [ %1388, %1464 ], [ %1063, %1052 ]
  %1191 = phi float [ %1064, %1200 ], [ %1064, %1281 ], [ %1389, %1464 ], [ %1064, %1052 ]
  %1192 = phi float [ %1065, %1200 ], [ %1065, %1281 ], [ %1416, %1464 ], [ %1065, %1052 ]
  %1193 = phi float [ %1066, %1200 ], [ %1066, %1281 ], [ %1413, %1464 ], [ %1066, %1052 ]
  %1194 = phi float [ %1067, %1200 ], [ %1067, %1281 ], [ %1410, %1464 ], [ %1067, %1052 ]
  %1195 = phi float [ %1068, %1200 ], [ %1068, %1281 ], [ %1404, %1464 ], [ %1068, %1052 ]
  %1196 = phi float [ %1069, %1200 ], [ %1069, %1281 ], [ %1399, %1464 ], [ %1069, %1052 ]
  %1197 = phi float [ %1070, %1200 ], [ %1070, %1281 ], [ %1400, %1464 ], [ %1070, %1052 ]
  %1198 = phi float [ %1071, %1200 ], [ %1071, %1281 ], [ %1401, %1464 ], [ %1071, %1052 ]
  %1199 = icmp eq i32 %1129, %1051
  br i1 %1199, label %1477, label %1052

; <label>:1200                                    ; preds = %1052
  %1201 = extractvalue %dx.types.ResRet.f32 %1099, 3
  %1202 = extractvalue %dx.types.ResRet.f32 %1099, 1
  %1203 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1206 = extractvalue %dx.types.ResRet.i32 %1085, 3
  %1207 = extractvalue %dx.types.ResRet.i32 %1085, 2
  %1208 = add i32 %1206, 0
  %1209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1208, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1211 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1209, %dx.types.Handle %1210, float %1138, float %1145, float undef, float undef, i32 0, i32 0, i32 undef, float %1166, float %1168, float undef, float %1167, float %1169, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = fmul fast float %1212, %1205
  %1214 = fadd fast float %1213, %1204
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1216 = fmul fast float %1138, %1094
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %1145, float %1216)  ; FMad(a,b,c)
  %1218 = fadd fast float %1217, %1203
  %1219 = fmul fast float %1138, %1096
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1145, float %1219)  ; FMad(a,b,c)
  %1221 = fadd fast float %1220, %1202
  %1222 = fmul fast float %1166, %1094
  %1223 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %1168, float %1222)  ; FMad(a,b,c)
  %1224 = fmul fast float %1166, %1096
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1168, float %1224)  ; FMad(a,b,c)
  %1226 = fmul fast float %1167, %1094
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1095, float %1169, float %1226)  ; FMad(a,b,c)
  %1228 = fmul fast float %1167, %1096
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1169, float %1228)  ; FMad(a,b,c)
  %1230 = add i32 %1207, 0
  %1231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1230, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1231, %dx.types.Handle %1210, float %1218, float %1221, float undef, float undef, i32 0, i32 0, i32 undef, float %1223, float %1225, float undef, float %1227, float %1229, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = and i32 %1130, 1024
  %1235 = icmp ne i32 %1234, 0
  %1236 = fcmp fast ogt float %1233, 0x3FE0101020000000
  %1237 = uitofp i1 %1236 to float
  %1238 = select i1 %1235, float %1237, float %1233
  %1239 = and i32 %1130, 8192
  %1240 = icmp ne i32 %1239, 0
  %1241 = select i1 %1240, float %1201, float 1.000000e+00
  %1242 = fmul fast float %1138, 2.000000e+00
  %1243 = fadd fast float %1242, -1.000000e+00
  %1244 = call float @dx.op.unary.f32(i32 6, float %1243)  ; FAbs(value)
  %1245 = fmul fast float %1244, %1127
  %1246 = fsub fast float %1245, %1127
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fmul fast float %1145, 2.000000e+00
  %1249 = fadd fast float %1248, -1.000000e+00
  %1250 = call float @dx.op.unary.f32(i32 6, float %1249)  ; FAbs(value)
  %1251 = fmul fast float %1250, %1128
  %1252 = fsub fast float %1251, %1128
  %1253 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  %1254 = fmul fast float %1157, %1090
  %1255 = fsub fast float %1254, %1090
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1257 = fmul fast float %1215, %1241
  %1258 = fmul fast float %1257, %1212
  %1259 = fmul fast float %1258, %1247
  %1260 = fmul fast float %1259, %1238
  %1261 = fmul fast float %1260, %1253
  %1262 = fmul fast float %1261, %1256
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 1
  %1265 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %1266 = fsub fast float %1174, %1265
  %1267 = fmul fast float %1266, %1264
  %1268 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1269 = fmul fast float %1262, %1091
  %1270 = fadd fast float %1262, %1091
  %1271 = fmul fast float %1270, %1100
  %1272 = fsub fast float %1271, %1100
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  %1274 = and i32 %1130, 128
  %1275 = icmp ne i32 %1274, 0
  %1276 = select i1 %1275, float %1273, float %1269
  %1277 = fmul fast float %1276, %1268
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = fcmp fast ugt float %1277, %1279
  br i1 %1280, label %1281, label %1179

; <label>:1281                                    ; preds = %1200
  %1282 = select i1 %1240, float %1277, float 0.000000e+00
  %1283 = fadd fast float %1282, %1053
  %1284 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  br i1 %1240, label %1179, label %1285

; <label>:1285                                    ; preds = %1281
  %1286 = and i32 %1130, 4
  %1287 = and i32 %1130, 8
  %1288 = add i32 %1086, 0
  %1289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1288, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1291 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1289, %dx.types.Handle %1290, float %1218, float %1221, float undef, float undef, i32 0, i32 0, i32 undef, float %1223, float %1225, float undef, float %1227, float %1229, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  %1295 = extractvalue %dx.types.ResRet.f32 %1291, 3
  %1296 = bitcast float %1112 to i32
  %1297 = and i32 %1296, 255
  %1298 = uitofp i32 %1297 to float
  %1299 = lshr i32 %1296, 8
  %1300 = and i32 %1299, 255
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1295, %1298
  %1303 = fadd fast float %1302, %1301
  %1304 = fmul fast float %1303, 0x3F70101000000000
  %1305 = add i32 %1087, 0
  %1306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1305, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1307 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1306, %dx.types.Handle %1290, float %1218, float %1221, float undef, float undef, i32 0, i32 0, i32 undef, float %1223, float %1225, float undef, float %1227, float %1229, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1308 = extractvalue %dx.types.ResRet.f32 %1307, 0
  %1309 = extractvalue %dx.types.ResRet.f32 %1307, 1
  %1310 = extractvalue %dx.types.ResRet.f32 %1307, 2
  %1311 = extractvalue %dx.types.ResRet.f32 %1307, 3
  %1312 = bitcast float %1106 to i32
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = lshr i32 %1312, 8
  %1316 = and i32 %1315, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = lshr i32 %1312, 16
  %1319 = and i32 %1318, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101000000000
  %1322 = fmul fast float %1308, %1314
  %1323 = fadd fast float %1322, %1317
  %1324 = fmul fast float %1323, 0x3F70101000000000
  %1325 = fadd fast float %1309, -5.000000e-01
  %1326 = fadd fast float %1311, -5.000000e-01
  %1327 = fmul fast float %1325, %1321
  %1328 = fmul fast float %1326, %1321
  %1329 = fadd fast float %1327, 5.000000e-01
  %1330 = fadd fast float %1328, 5.000000e-01
  %1331 = fmul fast float %1292, %1115
  %1332 = fmul fast float %1293, %1116
  %1333 = fmul fast float %1294, %1117
  %1334 = fmul fast float %1329, 2.000000e+00
  %1335 = fadd fast float %1334, -1.000000e+00
  %1336 = fmul fast float %1330, 2.000000e+00
  %1337 = fadd fast float %1336, -1.000000e+00
  %1338 = fadd fast float %1335, %1337
  %1339 = fmul fast float %1338, 5.000000e-01
  %1340 = fsub fast float %1335, %1337
  %1341 = fmul fast float %1340, 5.000000e-01
  %1342 = call float @dx.op.unary.f32(i32 6, float %1339)  ; FAbs(value)
  %1343 = fsub fast float 1.000000e+00, %1342
  %1344 = call float @dx.op.unary.f32(i32 6, float %1341)  ; FAbs(value)
  %1345 = fsub fast float %1343, %1344
  %1346 = call float @dx.op.dot3.f32(i32 55, float %1339, float %1341, float %1345, float %1339, float %1341, float %1345)  ; Dot3(ax,ay,az,bx,by,bz)
  %1347 = call float @dx.op.unary.f32(i32 25, float %1346)  ; Rsqrt(value)
  %1348 = fmul fast float %1339, %1347
  %1349 = fmul fast float %1341, %1347
  %1350 = fmul fast float %1347, %1345
  %1351 = fmul fast float %1350, %1080
  %1352 = fmul fast float %1350, %1081
  %1353 = fmul fast float %1350, %1082
  %1354 = fmul fast float %1348, %1103
  %1355 = fmul fast float %1348, %1104
  %1356 = fmul fast float %1348, %1105
  %1357 = fadd fast float %1354, %1351
  %1358 = fadd fast float %1355, %1352
  %1359 = fadd fast float %1356, %1353
  %1360 = fmul fast float %1349, %1109
  %1361 = fmul fast float %1349, %1110
  %1362 = fmul fast float %1349, %1111
  %1363 = fadd fast float %1357, %1360
  %1364 = fadd fast float %1358, %1361
  %1365 = fadd fast float %1359, %1362
  %1366 = call float @dx.op.dot3.f32(i32 55, float %1363, float %1364, float %1365, float %1363, float %1364, float %1365)  ; Dot3(ax,ay,az,bx,by,bz)
  %1367 = call float @dx.op.unary.f32(i32 25, float %1366)  ; Rsqrt(value)
  %1368 = fmul fast float %1363, %1367
  %1369 = fmul fast float %1364, %1367
  %1370 = fmul fast float %1365, %1367
  %1371 = icmp ne i32 %1287, 0
  %1372 = select i1 %1371, float 1.000000e+00, float 0.000000e+00
  %1373 = fmul fast float %1277, %1372
  %1374 = and i32 %1130, 1
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1376, label %1380

; <label>:1376                                    ; preds = %1285
  %1377 = fsub fast float %1368, %1062
  %1378 = fsub fast float %1369, %1063
  %1379 = fsub fast float %1370, %1064
  br label %1380

; <label>:1380                                    ; preds = %1376, %1285
  %1381 = phi float [ %1377, %1376 ], [ %1368, %1285 ]
  %1382 = phi float [ %1378, %1376 ], [ %1369, %1285 ]
  %1383 = phi float [ %1379, %1376 ], [ %1370, %1285 ]
  %1384 = fmul float %1383, %1373
  %1385 = fmul float %1382, %1373
  %1386 = fmul float %1381, %1373
  %1387 = fadd fast float %1386, %1062
  %1388 = fadd fast float %1385, %1063
  %1389 = fadd fast float %1384, %1064
  %1390 = icmp ne i32 %1286, 0
  %1391 = select i1 %1390, float 1.000000e+00, float 0.000000e+00
  %1392 = fmul fast float %1277, %1391
  %1393 = fsub fast float %1331, %1069
  %1394 = fsub fast float %1332, %1070
  %1395 = fsub fast float %1333, %1071
  %1396 = fmul fast float %1393, %1392
  %1397 = fmul fast float %1394, %1392
  %1398 = fmul fast float %1395, %1392
  %1399 = fadd fast float %1396, %1069
  %1400 = fadd fast float %1397, %1070
  %1401 = fadd fast float %1398, %1071
  %1402 = fsub fast float %1304, %1068
  %1403 = fmul fast float %1402, %1392
  %1404 = fadd fast float %1403, %1068
  %1405 = fmul fast float %1392, %1058
  %1406 = fsub fast float %1058, %1405
  %1407 = fmul fast float %1392, %1057
  %1408 = fsub fast float %1057, %1407
  %1409 = fadd fast float %1277, %1067
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1411 = fsub fast float %1324, %1066
  %1412 = fmul fast float %1411, %1373
  %1413 = fadd fast float %1412, %1066
  %1414 = fsub fast float %1310, %1065
  %1415 = fmul fast float %1414, %1373
  %1416 = fadd fast float %1415, %1065
  %1417 = call float @dx.op.dot3.f32(i32 55, float %1331, float %1332, float %1333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.CBufRet.f32 %1418, 1
  %1421 = fmul fast float %1420, %1417
  %1422 = fadd fast float %1421, %1419
  %1423 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1424 = bitcast float %1118 to i32
  %1425 = and i32 %1424, 65535
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = lshr i32 %1424, 16
  %1428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1427)  ; LegacyF16ToF32(value)
  %1429 = fcmp fast oge float %1426, 0.000000e+00
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = select i1 %1429, float %1426, float %1431
  %1433 = fadd fast float %1432, %1428
  %1434 = fsub fast float %1423, %1056
  %1435 = fmul fast float %1434, %1277
  %1436 = fadd fast float %1435, %1056
  %1437 = fmul fast float %1433, %1277
  %1438 = call float @dx.op.binary.f32(i32 35, float %1055, float %1437)  ; FMax(a,b)
  %1439 = call float @dx.op.binary.f32(i32 35, float %1054, float %1277)  ; FMax(a,b)
  %1440 = and i32 %1130, 16
  %1441 = icmp eq i32 %1440, 0
  br i1 %1441, label %1464, label %1442

; <label>:1442                                    ; preds = %1380
  %1443 = bitcast float %1124 to i32
  %1444 = add i32 %1121, 0
  %1445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1444, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1446 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1445, %dx.types.Handle %1290, float %1218, float %1221, float undef, float undef, i32 0, i32 0, i32 undef, float %1223, float %1225, float undef, float %1227, float %1229, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.ResRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.ResRet.f32 %1446, 2
  %1450 = and i32 %1443, 65535
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = fmul fast float %1447, %1115
  %1453 = fmul fast float %1448, %1116
  %1454 = fmul fast float %1449, %1117
  %1455 = and i32 %1130, 16384
  %1456 = icmp ne i32 %1455, 0
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = select i1 %1456, float %1458, float 1.000000e+00
  %1460 = fmul fast float %1459, %1451
  %1461 = fmul fast float %1452, %1460
  %1462 = fmul fast float %1453, %1460
  %1463 = fmul fast float %1454, %1460
  br label %1464

; <label>:1464                                    ; preds = %1442, %1380
  %1465 = phi float [ %1461, %1442 ], [ 0.000000e+00, %1380 ]
  %1466 = phi float [ %1462, %1442 ], [ 0.000000e+00, %1380 ]
  %1467 = phi float [ %1463, %1442 ], [ 0.000000e+00, %1380 ]
  %1468 = fsub fast float %1465, %1059
  %1469 = fsub fast float %1466, %1060
  %1470 = fsub fast float %1467, %1061
  %1471 = fmul fast float %1468, %1277
  %1472 = fmul fast float %1469, %1277
  %1473 = fmul fast float %1470, %1277
  %1474 = fadd fast float %1471, %1059
  %1475 = fadd fast float %1472, %1060
  %1476 = fadd fast float %1473, %1061
  br label %1179

; <label>:1477                                    ; preds = %1179
  br label %1478

; <label>:1478                                    ; preds = %1477, %955
  %1479 = phi float [ 0.000000e+00, %955 ], [ %1180, %1477 ]
  %1480 = phi float [ %965, %955 ], [ %1181, %1477 ]
  %1481 = phi float [ %970, %955 ], [ %1182, %1477 ]
  %1482 = phi float [ %968, %955 ], [ %1183, %1477 ]
  %1483 = phi float [ 0.000000e+00, %955 ], [ %1184, %1477 ]
  %1484 = phi float [ 0.000000e+00, %955 ], [ %1185, %1477 ]
  %1485 = phi float [ %961, %955 ], [ %1186, %1477 ]
  %1486 = phi float [ %962, %955 ], [ %1187, %1477 ]
  %1487 = phi float [ %963, %955 ], [ %1188, %1477 ]
  %1488 = phi float [ %996, %955 ], [ %1189, %1477 ]
  %1489 = phi float [ %997, %955 ], [ %1190, %1477 ]
  %1490 = phi float [ %998, %955 ], [ %1191, %1477 ]
  %1491 = phi float [ %967, %955 ], [ %1192, %1477 ]
  %1492 = phi float [ %966, %955 ], [ %1193, %1477 ]
  %1493 = phi float [ 0.000000e+00, %955 ], [ %1194, %1477 ]
  %1494 = phi float [ %964, %955 ], [ %1195, %1477 ]
  %1495 = phi float [ %958, %955 ], [ %1196, %1477 ]
  %1496 = phi float [ %959, %955 ], [ %1197, %1477 ]
  %1497 = phi float [ %960, %955 ], [ %1198, %1477 ]
  %1498 = call float @dx.op.dot3.f32(i32 55, float %1488, float %1489, float %1490, float %1488, float %1489, float %1490)  ; Dot3(ax,ay,az,bx,by,bz)
  %1499 = call float @dx.op.unary.f32(i32 25, float %1498)  ; Rsqrt(value)
  %1500 = fmul fast float %1499, %1488
  %1501 = fmul fast float %1499, %1489
  %1502 = fmul fast float %1499, %1490
  %1503 = fadd fast float %1493, %965
  %1504 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  %1505 = call float @dx.op.dot3.f32(i32 55, float %1500, float %1501, float %1502, float %1500, float %1501, float %1502)  ; Dot3(ax,ay,az,bx,by,bz)
  %1506 = call float @dx.op.unary.f32(i32 25, float %1505)  ; Rsqrt(value)
  %1507 = fmul fast float %1506, %1500
  %1508 = fmul fast float %1506, %1501
  %1509 = fmul fast float %1506, %1502
  %1510 = fadd fast float %1494, 0xBFB99999A0000000
  %1511 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1512 = fmul fast float %1511, 0x3FF1C71C80000000
  %1513 = call float @dx.op.binary.f32(i32 36, float %1494, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1514 = fsub fast float 1.000000e+00, %1512
  %1515 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1516 = fmul fast float %1515, %1495
  %1517 = fmul fast float %1515, %1496
  %1518 = fmul fast float %1515, %1497
  %1519 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1522 = fmul fast float %1512, %1495
  %1523 = fmul fast float %1512, %1496
  %1524 = fmul fast float %1512, %1497
  %1525 = fadd fast float %1522, %1513
  %1526 = fadd fast float %1523, %1513
  %1527 = fadd fast float %1524, %1513
  %1528 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1529 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1530 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1531 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  %1532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.i32 %1532, 3
  %1534 = and i32 %1533, 8
  %1535 = icmp ne i32 %1534, 0
  %1536 = call float @dx.op.binary.f32(i32 35, float %1519, float %1495)  ; FMax(a,b)
  %1537 = call float @dx.op.binary.f32(i32 35, float %1520, float %1495)  ; FMax(a,b)
  %1538 = call float @dx.op.binary.f32(i32 35, float %1521, float %1495)  ; FMax(a,b)
  %1539 = call float @dx.op.dot3.f32(i32 55, float %1519, float %1520, float %1521, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1540 = select i1 %237, float %1495, float %1519
  %1541 = select i1 %237, float %1539, float %1520
  %1542 = select i1 %237, float 1.000000e+00, float %1521
  %1543 = select i1 %1535, float %1536, float %1540
  %1544 = select i1 %1535, float %1537, float %1541
  %1545 = select i1 %1535, float %1538, float %1542
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 0
  %1548 = extractvalue %dx.types.CBufRet.f32 %1546, 1
  %1549 = extractvalue %dx.types.CBufRet.f32 %1546, 2
  %1550 = fadd fast float %1547, %146
  %1551 = fadd fast float %1548, %147
  %1552 = fadd fast float %1549, %148
  %1553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1553, 0
  %1555 = extractvalue %dx.types.CBufRet.f32 %1553, 1
  %1556 = fsub fast float %1550, %1554
  %1557 = fsub fast float %1551, %1555
  %1558 = fmul fast float %1556, %1556
  %1559 = fmul fast float %1557, %1557
  %1560 = fadd fast float %1558, %1559
  %1561 = call float @dx.op.unary.f32(i32 24, float %1560)  ; Sqrt(value)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1553, 2
  %1563 = fcmp fast olt float %1561, %1562
  br i1 %1563, label %1564, label %1631

; <label>:1564                                    ; preds = %1478
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 0
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 0
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1571 = extractvalue %dx.types.CBufRet.f32 %1565, 1
  %1572 = extractvalue %dx.types.CBufRet.f32 %1567, 1
  %1573 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1574 = extractvalue %dx.types.CBufRet.f32 %1565, 3
  %1575 = extractvalue %dx.types.CBufRet.f32 %1567, 3
  %1576 = extractvalue %dx.types.CBufRet.f32 %1569, 3
  %1577 = fadd fast float %1574, %1550
  %1578 = fadd fast float %1575, %1551
  %1579 = fadd fast float %1576, %1552
  %1580 = fmul fast float %1577, %1566
  %1581 = call float @dx.op.tertiary.f32(i32 46, float %1578, float %1568, float %1580)  ; FMad(a,b,c)
  %1582 = call float @dx.op.tertiary.f32(i32 46, float %1579, float %1570, float %1581)  ; FMad(a,b,c)
  %1583 = fmul fast float %1577, %1571
  %1584 = call float @dx.op.tertiary.f32(i32 46, float %1578, float %1572, float %1583)  ; FMad(a,b,c)
  %1585 = call float @dx.op.tertiary.f32(i32 46, float %1579, float %1573, float %1584)  ; FMad(a,b,c)
  %1586 = fsub fast float %1582, %1574
  %1587 = fsub fast float %1585, %1575
  %1588 = fsub fast float %1586, %1554
  %1589 = fadd fast float %1588, %1562
  %1590 = fsub fast float %1587, %1555
  %1591 = fadd fast float %1590, %1562
  %1592 = extractvalue %dx.types.CBufRet.f32 %1553, 3
  %1593 = fmul fast float %1589, %1592
  %1594 = fmul fast float %1591, %1592
  %1595 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1596 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1597 = fsub fast float 1.000000e+00, %1595
  %1598 = fsub fast float 1.000000e+00, %1596
  %1599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1597, float %1598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1600 = extractvalue %dx.types.ResRet.f32 %1599, 0
  %1601 = fcmp fast ugt float %1600, 0.000000e+00
  br i1 %1601, label %1602, label %1905

; <label>:1602                                    ; preds = %1564
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1605 = fmul fast float %1604, %1600
  %1606 = extractvalue %dx.types.CBufRet.f32 %1603, 3
  %1607 = fadd fast float %1606, %1605
  %1608 = extractvalue %dx.types.CBufRet.f32 %1569, 2
  %1609 = fadd fast float %1607, %1576
  %1610 = fmul fast float %1582, %1570
  %1611 = call float @dx.op.tertiary.f32(i32 46, float %1585, float %1573, float %1610)  ; FMad(a,b,c)
  %1612 = call float @dx.op.tertiary.f32(i32 46, float %1609, float %1608, float %1611)  ; FMad(a,b,c)
  %1613 = fsub fast float %1612, %1576
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 2
  %1616 = fsub fast float %1613, %1615
  %1617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1597, float %1598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1618 = extractvalue %dx.types.ResRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.ResRet.f32 %1617, 1
  %1620 = extractvalue %dx.types.ResRet.f32 %1617, 2
  %1621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1597, float %1598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1622 = extractvalue %dx.types.ResRet.f32 %1621, 0
  %1623 = extractvalue %dx.types.ResRet.f32 %1621, 1
  %1624 = extractvalue %dx.types.ResRet.f32 %1621, 2
  %1625 = fadd fast float %1622, %1618
  %1626 = fmul fast float %1625, 0x3F847AE140000000
  %1627 = fadd fast float %1623, %1619
  %1628 = fmul fast float %1627, 0x3F847AE140000000
  %1629 = fadd fast float %1624, %1620
  %1630 = fmul fast float %1629, 0x3F847AE140000000
  br label %1905

; <label>:1631                                    ; preds = %1478
  %1632 = and i32 %213, 1
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1905, label %1634

; <label>:1634                                    ; preds = %1631
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 0
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1642 = extractvalue %dx.types.CBufRet.f32 %1637, 1
  %1643 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1635, 3
  %1645 = extractvalue %dx.types.CBufRet.f32 %1637, 3
  %1646 = extractvalue %dx.types.CBufRet.f32 %1639, 3
  %1647 = fadd fast float %1644, %1550
  %1648 = fadd fast float %1645, %1551
  %1649 = fadd fast float %1646, %1552
  %1650 = fmul fast float %1647, %1636
  %1651 = call float @dx.op.tertiary.f32(i32 46, float %1648, float %1638, float %1650)  ; FMad(a,b,c)
  %1652 = call float @dx.op.tertiary.f32(i32 46, float %1649, float %1640, float %1651)  ; FMad(a,b,c)
  %1653 = fmul fast float %1647, %1641
  %1654 = call float @dx.op.tertiary.f32(i32 46, float %1648, float %1642, float %1653)  ; FMad(a,b,c)
  %1655 = call float @dx.op.tertiary.f32(i32 46, float %1649, float %1643, float %1654)  ; FMad(a,b,c)
  %1656 = fsub fast float %1652, %1644
  %1657 = fsub fast float %1655, %1645
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.CBufRet.f32 %1658, 1
  %1661 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1662 = extractvalue %dx.types.CBufRet.f32 %1658, 3
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 3
  %1665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.i32 %1665, 0
  %1667 = extractvalue %dx.types.CBufRet.i32 %1665, 1
  %1668 = udiv i32 %1667, %1666
  %1669 = fsub fast float %1656, %1659
  %1670 = fsub fast float %1657, %1660
  %1671 = call float @dx.op.binary.f32(i32 35, float %1669, float 0.000000e+00)  ; FMax(a,b)
  %1672 = call float @dx.op.binary.f32(i32 35, float %1670, float 0.000000e+00)  ; FMax(a,b)
  %1673 = call float @dx.op.binary.f32(i32 36, float %1671, float %1661)  ; FMin(a,b)
  %1674 = call float @dx.op.binary.f32(i32 36, float %1672, float %1662)  ; FMin(a,b)
  %1675 = add i32 %1666, -1
  %1676 = add i32 %1668, -1
  %1677 = fmul fast float %1673, %1664
  %1678 = fmul fast float %1674, %1664
  %1679 = fptoui float %1677 to i32
  %1680 = fptoui float %1678 to i32
  %1681 = call i32 @dx.op.binary.i32(i32 40, i32 %1679, i32 %1675)  ; UMin(a,b)
  %1682 = call i32 @dx.op.binary.i32(i32 40, i32 %1680, i32 %1676)  ; UMin(a,b)
  %1683 = mul i32 %1682, %1666
  %1684 = add i32 %1683, %1681
  %1685 = shl i32 %1684, 2
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1685, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = icmp eq i32 %1687, -1
  br i1 %1688, label %1905, label %1689

; <label>:1689                                    ; preds = %1634
  %1690 = mul i32 %1687, 148
  %1691 = add i32 %1690, 4
  %1692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.f32 %1692, 0
  %1694 = add i32 %1690, 8
  %1695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1694, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1697 = add i32 %1690, 36
  %1698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.f32 %1698, 0
  %1700 = add i32 %1690, 60
  %1701 = add i32 %1690, 92
  %1702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.i32 %1702, 0
  %1704 = add i32 %1690, 116
  %1705 = fsub fast float %1656, %1693
  %1706 = fsub fast float %1657, %1696
  %1707 = fmul fast float %1664, %1705
  %1708 = fmul fast float %1664, %1706
  %1709 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1710 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1711 = fsub fast float 1.000000e+00, %1710
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 2
  %1714 = call float @dx.op.unary.f32(i32 83, float %1709)  ; DerivCoarseX(value)
  %1715 = call float @dx.op.unary.f32(i32 83, float %1711)  ; DerivCoarseX(value)
  %1716 = call float @dx.op.unary.f32(i32 84, float %1709)  ; DerivCoarseY(value)
  %1717 = call float @dx.op.unary.f32(i32 84, float %1711)  ; DerivCoarseY(value)
  %1718 = fmul fast float %1714, %1713
  %1719 = fmul fast float %1715, %1713
  %1720 = fmul fast float %1716, %1713
  %1721 = fmul fast float %1717, %1713
  %1722 = call float @dx.op.dot2.f32(i32 54, float %1720, float %1721, float %1720, float %1721)  ; Dot2(ax,ay,bx,by)
  %1723 = call float @dx.op.dot2.f32(i32 54, float %1718, float %1719, float %1718, float %1719)  ; Dot2(ax,ay,bx,by)
  %1724 = call float @dx.op.binary.f32(i32 35, float %1723, float %1722)  ; FMax(a,b)
  %1725 = call float @dx.op.unary.f32(i32 23, float %1724)  ; Log(value)
  %1726 = fmul fast float %1725, 5.000000e-01
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 1
  %1729 = fadd fast float %1728, %1726
  %1730 = call float @dx.op.binary.f32(i32 35, float %1729, float 0.000000e+00)  ; FMax(a,b)
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 3
  %1733 = fadd fast float %1732, %1730
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 3
  %1736 = fadd fast float %1733, %1735
  %1737 = add i32 %1703, 0
  %1738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1737, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1739 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1738, i32 0)  ; GetDimensions(handle,mipLevel)
  %1740 = extractvalue %dx.types.Dimensions %1739, 0
  %1741 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1740)  ; FirstbitLo(value)
  %1742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.i32 %1742, 1
  %1744 = sub nsw i32 %1743, %1741
  %1745 = sitofp i32 %1744 to float
  %1746 = fsub fast float %1736, %1745
  %1747 = call float @dx.op.binary.f32(i32 35, float %1746, float 0.000000e+00)  ; FMax(a,b)
  %1748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1738, %dx.types.Handle %62, float %1709, float %1711, float %1699, float undef, i32 0, i32 0, i32 undef, float %1747)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = fcmp ule float %1749, 0x3FE0101020000000
  %1751 = extractvalue %dx.types.CBufRet.i32 %1742, 0
  %1752 = and i32 %1751, 128
  %1753 = icmp ne i32 %1752, 0
  %1754 = and i1 %1750, %1753
  br i1 %1754, label %1905, label %1755

; <label>:1755                                    ; preds = %1689
  %1756 = add i32 %1690, 20
  %1757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.f32 %1757, 0
  %1759 = add i32 %1690, 24
  %1760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.f32 %1760, 0
  %1762 = add i32 %1690, 40
  %1763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = add i32 %1690, 96
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 2
  %1770 = fmul fast float %1769, %1709
  %1771 = fmul fast float %1769, %1711
  %1772 = extractvalue %dx.types.CBufRet.f32 %1768, 3
  %1773 = fadd fast float %1770, %1772
  %1774 = fadd fast float %1771, %1772
  %1775 = add i32 %1767, 0
  %1776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1775, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1777 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1776, i32 0)  ; GetDimensions(handle,mipLevel)
  %1778 = extractvalue %dx.types.Dimensions %1777, 0
  %1779 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1778)  ; FirstbitLo(value)
  %1780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.i32 %1780, 1
  %1782 = sub nsw i32 %1781, %1779
  %1783 = sitofp i32 %1782 to float
  %1784 = fsub fast float %1733, %1783
  %1785 = call float @dx.op.binary.f32(i32 35, float %1784, float 0.000000e+00)  ; FMax(a,b)
  %1786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1776, %dx.types.Handle %62, float %1773, float %1774, float %1764, float undef, i32 0, i32 0, i32 undef, float %1785)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1787 = extractvalue %dx.types.ResRet.f32 %1786, 0
  %1788 = fmul fast float %1787, %1758
  %1789 = fadd fast float %1788, %1761
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1792 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1793 = extractvalue %dx.types.CBufRet.f32 %1790, 2
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 3
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 3
  %1798 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1799 = fadd fast float %1795, %1656
  %1800 = fadd fast float %1797, %1657
  %1801 = fadd fast float %1789, %1798
  %1802 = fmul fast float %1799, %1791
  %1803 = call float @dx.op.tertiary.f32(i32 46, float %1800, float %1792, float %1802)  ; FMad(a,b,c)
  %1804 = call float @dx.op.tertiary.f32(i32 46, float %1801, float %1793, float %1803)  ; FMad(a,b,c)
  %1805 = fsub fast float %1804, %1798
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 2
  %1808 = fsub fast float %1805, %1807
  %1809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.i32 %1809, 0
  %1811 = call i32 @dx.op.binary.i32(i32 40, i32 %1687, i32 %1810)  ; UMin(a,b)
  %1812 = mul i32 %1811, 36
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = add i32 %1812, 4
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1818 = fmul fast float %1817, %1709
  %1819 = fmul fast float %1817, %1711
  %1820 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1821 = fadd fast float %1818, %1820
  %1822 = fadd fast float %1819, %1820
  %1823 = icmp eq i32 %1814, 0
  br i1 %1823, label %1892, label %1824

; <label>:1824                                    ; preds = %1755
  br label %1825

; <label>:1825                                    ; preds = %1882, %1824
  %1826 = phi float [ %1883, %1882 ], [ 0.000000e+00, %1824 ]
  %1827 = phi float [ %1884, %1882 ], [ 0.000000e+00, %1824 ]
  %1828 = phi float [ %1885, %1882 ], [ 0.000000e+00, %1824 ]
  %1829 = phi float [ %1886, %1882 ], [ 0.000000e+00, %1824 ]
  %1830 = phi float [ %1887, %1882 ], [ 0.000000e+00, %1824 ]
  %1831 = phi float [ %1888, %1882 ], [ 0.000000e+00, %1824 ]
  %1832 = phi i32 [ %1889, %1882 ], [ 0, %1824 ]
  %1833 = shl i32 %1832, 2
  %1834 = add i32 %1700, %1833
  %1835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = add i32 %1704, %1833
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = add i32 %1839, 0
  %1841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1840, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1842 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1841, i32 0)  ; GetDimensions(handle,mipLevel)
  %1843 = extractvalue %dx.types.Dimensions %1842, 0
  %1844 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1843)  ; FirstbitLo(value)
  %1845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.i32 %1845, 1
  %1847 = sub nsw i32 %1846, %1844
  %1848 = sitofp i32 %1847 to float
  %1849 = fsub fast float %1733, %1848
  %1850 = call float @dx.op.binary.f32(i32 35, float %1849, float 0.000000e+00)  ; FMax(a,b)
  %1851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1841, %dx.types.Handle %62, float %1821, float %1822, float %1836, float undef, i32 0, i32 0, i32 undef, float %1850)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1852 = extractvalue %dx.types.ResRet.f32 %1851, 0
  %1853 = fcmp fast ogt float %1852, 0.000000e+00
  br i1 %1853, label %1854, label %1882

; <label>:1854                                    ; preds = %1825
  %1855 = add i32 %1815, %1833
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = and i32 %1857, 32767
  %1859 = mul nuw nsw i32 %1858, 928
  %1860 = add nuw nsw i32 %1859, 48
  %1861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.f32 %1861, 0
  %1863 = extractvalue %dx.types.ResRet.f32 %1861, 1
  %1864 = extractvalue %dx.types.ResRet.f32 %1861, 2
  %1865 = add nuw nsw i32 %1859, 60
  %1866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.ResRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.ResRet.f32 %1866, 2
  %1870 = fmul fast float %1862, %1852
  %1871 = fmul fast float %1863, %1852
  %1872 = fmul fast float %1864, %1852
  %1873 = fadd fast float %1870, %1826
  %1874 = fadd fast float %1871, %1827
  %1875 = fadd fast float %1872, %1828
  %1876 = fmul fast float %1867, %1852
  %1877 = fmul fast float %1868, %1852
  %1878 = fmul fast float %1869, %1852
  %1879 = fadd fast float %1876, %1829
  %1880 = fadd fast float %1877, %1830
  %1881 = fadd fast float %1878, %1831
  br label %1882

; <label>:1882                                    ; preds = %1854, %1825
  %1883 = phi float [ %1873, %1854 ], [ %1826, %1825 ]
  %1884 = phi float [ %1874, %1854 ], [ %1827, %1825 ]
  %1885 = phi float [ %1875, %1854 ], [ %1828, %1825 ]
  %1886 = phi float [ %1879, %1854 ], [ %1829, %1825 ]
  %1887 = phi float [ %1880, %1854 ], [ %1830, %1825 ]
  %1888 = phi float [ %1881, %1854 ], [ %1831, %1825 ]
  %1889 = add nuw i32 %1832, 1
  %1890 = icmp eq i32 %1889, %1814
  br i1 %1890, label %1891, label %1825

; <label>:1891                                    ; preds = %1882
  br label %1892

; <label>:1892                                    ; preds = %1891, %1755
  %1893 = phi float [ 0.000000e+00, %1755 ], [ %1883, %1891 ]
  %1894 = phi float [ 0.000000e+00, %1755 ], [ %1884, %1891 ]
  %1895 = phi float [ 0.000000e+00, %1755 ], [ %1885, %1891 ]
  %1896 = phi float [ 0.000000e+00, %1755 ], [ %1886, %1891 ]
  %1897 = phi float [ 0.000000e+00, %1755 ], [ %1887, %1891 ]
  %1898 = phi float [ 0.000000e+00, %1755 ], [ %1888, %1891 ]
  %1899 = fadd fast float %1896, %1893
  %1900 = fmul fast float %1899, 0x3F847AE140000000
  %1901 = fadd fast float %1897, %1894
  %1902 = fmul fast float %1901, 0x3F847AE140000000
  %1903 = fadd fast float %1898, %1895
  %1904 = fmul fast float %1903, 0x3F847AE140000000
  br label %1905

; <label>:1905                                    ; preds = %1892, %1689, %1634, %1631, %1602, %1564
  %1906 = phi float [ %1616, %1602 ], [ -1.310720e+05, %1564 ], [ %1808, %1892 ], [ -1.310720e+05, %1634 ], [ -1.310720e+05, %1689 ], [ -1.310720e+05, %1631 ]
  %1907 = phi float [ %1626, %1602 ], [ 0.000000e+00, %1564 ], [ %1900, %1892 ], [ 0.000000e+00, %1634 ], [ 0.000000e+00, %1689 ], [ 0.000000e+00, %1631 ]
  %1908 = phi float [ %1628, %1602 ], [ 0.000000e+00, %1564 ], [ %1902, %1892 ], [ 0.000000e+00, %1634 ], [ 0.000000e+00, %1689 ], [ 0.000000e+00, %1631 ]
  %1909 = phi float [ %1630, %1602 ], [ 0.000000e+00, %1564 ], [ %1904, %1892 ], [ 0.000000e+00, %1634 ], [ 0.000000e+00, %1689 ], [ 0.000000e+00, %1631 ]
  %1910 = phi i1 [ true, %1602 ], [ false, %1564 ], [ true, %1892 ], [ false, %1634 ], [ false, %1689 ], [ false, %1631 ]
  %1911 = and i32 %213, 3
  %1912 = icmp eq i32 %1911, 1
  %1913 = select i1 %1912, float 1.000000e+00, float 0.000000e+00
  %1914 = fsub fast float %1906, %148
  %1915 = call float @dx.op.unary.f32(i32 7, float %1914)  ; Saturate(value)
  %1916 = select i1 %1910, float %1915, float 1.000000e+00
  %1917 = fmul fast float %1916, %1913
  %1918 = icmp eq i32 %1911, 3
  %1919 = select i1 %1918, float 1.000000e+00, float %1917
  %1920 = call float @dx.op.binary.f32(i32 35, float %1479, float %1919)  ; FMax(a,b)
  %1921 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1922 = fcmp fast une float %1921, 0.000000e+00
  %1923 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %146, float %147, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %1924 = call float @dx.op.unary.f32(i32 25, float %1923)  ; Rsqrt(value)
  br i1 %1922, label %1932, label %1925

; <label>:1925                                    ; preds = %1905
  %1926 = fmul fast float %1924, %146
  %1927 = fmul fast float %1924, %147
  %1928 = fmul fast float %1924, %148
  %1929 = fsub fast float -0.000000e+00, %1926
  %1930 = fsub fast float -0.000000e+00, %1927
  %1931 = fsub fast float -0.000000e+00, %1928
  br label %2100

; <label>:1932                                    ; preds = %1905
  %1933 = fmul fast float %146, %1924
  %1934 = fsub fast float -0.000000e+00, %1933
  %1935 = fmul fast float %147, %1924
  %1936 = fsub fast float -0.000000e+00, %1935
  %1937 = fmul fast float %148, %1924
  %1938 = fsub fast float -0.000000e+00, %1937
  %1939 = call float @dx.op.dot3.f32(i32 55, float %1934, float %1936, float %1938, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1940 = fmul fast float %1921, 2.500000e+00
  %1941 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1942 = fmul fast float %1921, 0x4013FFFFE0000000
  %1943 = fadd fast float %1942, 0xBFFFFFFFE0000000
  %1944 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1945 = fmul fast float %1921, 0x4004000020000000
  %1946 = fadd fast float %1945, 0xBFF8000040000000
  %1947 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1948 = call float @dx.op.unary.f32(i32 7, float %1941)  ; Saturate(value)
  %1949 = fmul fast float %1510, 1.000000e+01
  %1950 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1951 = fmul fast float %1950, 2.000000e+00
  %1952 = fsub fast float 3.000000e+00, %1951
  %1953 = fmul fast float %1950, %1950
  %1954 = fmul fast float %1953, %1952
  %1955 = fsub fast float 1.000000e+00, %1954
  %1956 = fsub fast float 0x3FE3333340000000, %1531
  %1957 = fmul fast float %1956, 0x400AAAAAA0000000
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = fmul fast float %1955, %1958
  %1960 = fmul fast float %1543, 0x3FEA2B8620000000
  %1961 = fmul fast float %1544, 0x3FEA2B8620000000
  %1962 = fmul fast float %1545, 0x3FEA2B8620000000
  %1963 = fadd fast float %1960, 0x3FC81DFBA0000000
  %1964 = fmul fast float %1963, %1543
  %1965 = fadd fast float %1964, 0x3F910E6020000000
  %1966 = fadd fast float %1961, 0x3FC81DFBA0000000
  %1967 = fmul fast float %1966, %1544
  %1968 = fadd fast float %1967, 0x3F910E6020000000
  %1969 = fadd fast float %1962, 0x3FC81DFBA0000000
  %1970 = fmul fast float %1969, %1545
  %1971 = fadd fast float %1970, 0x3F910E6020000000
  %1972 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1973 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1974 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1975 = fsub fast float %1972, %1543
  %1976 = fsub fast float %1973, %1544
  %1977 = fsub fast float %1974, %1545
  %1978 = fmul fast float %1975, %1948
  %1979 = fmul fast float %1978, %1959
  %1980 = fmul fast float %1976, %1948
  %1981 = fmul fast float %1980, %1959
  %1982 = fmul fast float %1977, %1948
  %1983 = fmul fast float %1982, %1959
  %1984 = fadd fast float %1979, %1543
  %1985 = fadd fast float %1981, %1544
  %1986 = fadd fast float %1983, %1545
  %1987 = fmul fast float %1491, %1491
  %1988 = fmul fast float %1987, %1987
  %1989 = fadd fast float %1944, 1.000000e+00
  %1990 = fsub fast float %1989, %1959
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = fsub fast float 1.000000e+00, %1988
  %1995 = call float @dx.op.binary.f32(i32 36, float %1991, float %1994)  ; FMin(a,b)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1947)  ; Saturate(value)
  %1997 = call float @dx.op.binary.f32(i32 35, float %1995, float %1996)  ; FMax(a,b)
  %1998 = fadd fast float %1993, 0xBFE4CCCCC0000000
  %1999 = fmul fast float %1998, 0x4006DB6DA0000000
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2001 = fmul fast float %2000, 2.000000e+00
  %2002 = fsub fast float 3.000000e+00, %2001
  %2003 = bitcast float %1528 to i32
  %2004 = ashr i32 %2003, 1
  %2005 = add nsw i32 %2004, 532487669
  %2006 = bitcast i32 %2005 to float
  %2007 = fsub fast float 1.000000e+00, %2006
  %2008 = bitcast float %2007 to i32
  %2009 = sub nsw i32 2129859010, %2008
  %2010 = bitcast i32 %2009 to float
  %2011 = fmul fast float %2010, 2.000000e+00
  %2012 = bitcast float %1529 to i32
  %2013 = ashr i32 %2012, 1
  %2014 = add nsw i32 %2013, 532487669
  %2015 = bitcast i32 %2014 to float
  %2016 = fsub fast float 1.000000e+00, %2015
  %2017 = bitcast float %2016 to i32
  %2018 = sub nsw i32 2129859010, %2017
  %2019 = bitcast i32 %2018 to float
  %2020 = fmul fast float %2019, 2.000000e+00
  %2021 = bitcast float %1530 to i32
  %2022 = ashr i32 %2021, 1
  %2023 = add nsw i32 %2022, 532487669
  %2024 = bitcast i32 %2023 to float
  %2025 = fsub fast float 1.000000e+00, %2024
  %2026 = bitcast float %2025 to i32
  %2027 = sub nsw i32 2129859010, %2026
  %2028 = bitcast i32 %2027 to float
  %2029 = fmul fast float %2028, 2.000000e+00
  %2030 = fsub fast float 0x4002A9FBE0000000, %2011
  %2031 = fadd fast float %2011, 0x3FD54FDF00000000
  %2032 = bitcast float %2031 to i32
  %2033 = sub nsw i32 2129859010, %2032
  %2034 = bitcast i32 %2033 to float
  %2035 = fmul fast float %2034, %2030
  %2036 = fmul fast float %2035, %2035
  %2037 = fsub fast float 0x4002A9FBE0000000, %2020
  %2038 = fadd fast float %2020, 0x3FD54FDF00000000
  %2039 = bitcast float %2038 to i32
  %2040 = sub nsw i32 2129859010, %2039
  %2041 = bitcast i32 %2040 to float
  %2042 = fmul fast float %2041, %2037
  %2043 = fmul fast float %2042, %2042
  %2044 = fsub fast float 0x4002A9FBE0000000, %2029
  %2045 = fadd fast float %2029, 0x3FD54FDF00000000
  %2046 = bitcast float %2045 to i32
  %2047 = sub nsw i32 2129859010, %2046
  %2048 = bitcast i32 %2047 to float
  %2049 = fmul fast float %2048, %2044
  %2050 = fmul fast float %2049, %2049
  %2051 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2036)  ; FMax(a,b)
  %2052 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2043)  ; FMax(a,b)
  %2053 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2050)  ; FMax(a,b)
  %2054 = fsub fast float 1.000000e+00, %1939
  %2055 = fadd fast float %2054, %1955
  %2056 = call float @dx.op.unary.f32(i32 7, float %2055)  ; Saturate(value)
  %2057 = fsub fast float 1.000000e+00, %1919
  %2058 = fmul fast float %1997, %2057
  %2059 = fmul fast float %2000, %2000
  %2060 = fmul fast float %2059, %2058
  %2061 = fmul fast float %2060, %2002
  %2062 = fmul fast float %2057, 0xBFE99999A0000000
  %2063 = fmul fast float %2062, %1948
  %2064 = fmul fast float %2063, %1959
  %2065 = fadd fast float %2064, 1.000000e+00
  %2066 = fadd fast float %1531, -1.000000e+00
  %2067 = fmul fast float %2065, %2066
  %2068 = fadd fast float %2067, 1.000000e+00
  %2069 = fsub fast float %2051, %1528
  %2070 = fsub fast float %2052, %1529
  %2071 = fsub fast float %2053, %1530
  %2072 = fmul fast float %2061, %2069
  %2073 = fmul fast float %2061, %2070
  %2074 = fmul fast float %2061, %2071
  %2075 = fadd fast float %2072, %1528
  %2076 = fadd fast float %2073, %1529
  %2077 = fadd fast float %2074, %1530
  %2078 = fsub fast float %76, %1507
  %2079 = fsub fast float %77, %1508
  %2080 = fsub fast float %78, %1509
  %2081 = fmul fast float %2061, %2078
  %2082 = fmul fast float %2061, %2079
  %2083 = fmul fast float %2061, %2080
  %2084 = fadd fast float %2081, %1507
  %2085 = fadd fast float %2082, %1508
  %2086 = fadd fast float %2083, %1509
  %2087 = fmul fast float %2061, %2056
  %2088 = call float @dx.op.unary.f32(i32 7, float %2068)  ; Saturate(value)
  %2089 = fsub fast float 1.000000e+00, %2088
  %2090 = fmul fast float %2087, %2089
  %2091 = fadd fast float %2090, %2088
  %2092 = fsub fast float 1.000000e+00, %1491
  %2093 = fmul fast float %2061, %2092
  %2094 = fadd fast float %2093, %1491
  %2095 = call float @dx.op.dot3.f32(i32 55, float %2084, float %2085, float %2086, float %2084, float %2085, float %2086)  ; Dot3(ax,ay,az,bx,by,bz)
  %2096 = call float @dx.op.unary.f32(i32 25, float %2095)  ; Rsqrt(value)
  %2097 = fmul fast float %2084, %2096
  %2098 = fmul fast float %2085, %2096
  %2099 = fmul fast float %2086, %2096
  br label %2100

; <label>:2100                                    ; preds = %1932, %1925
  %2101 = phi float [ %1931, %1925 ], [ %1938, %1932 ]
  %2102 = phi float [ %1930, %1925 ], [ %1936, %1932 ]
  %2103 = phi float [ %1929, %1925 ], [ %1934, %1932 ]
  %2104 = phi float [ %1928, %1925 ], [ %1937, %1932 ]
  %2105 = phi float [ %1927, %1925 ], [ %1935, %1932 ]
  %2106 = phi float [ %1926, %1925 ], [ %1933, %1932 ]
  %2107 = phi float [ %1543, %1925 ], [ %1984, %1932 ]
  %2108 = phi float [ %1544, %1925 ], [ %1985, %1932 ]
  %2109 = phi float [ %1545, %1925 ], [ %1986, %1932 ]
  %2110 = phi float [ %1507, %1925 ], [ %2097, %1932 ]
  %2111 = phi float [ %1508, %1925 ], [ %2098, %1932 ]
  %2112 = phi float [ %1509, %1925 ], [ %2099, %1932 ]
  %2113 = phi float [ %1528, %1925 ], [ %2075, %1932 ]
  %2114 = phi float [ %1529, %1925 ], [ %2076, %1932 ]
  %2115 = phi float [ %1530, %1925 ], [ %2077, %1932 ]
  %2116 = phi float [ %1531, %1925 ], [ %2091, %1932 ]
  %2117 = phi float [ %1491, %1925 ], [ %2094, %1932 ]
  %2118 = fsub fast float -0.000000e+00, %148
  %2119 = select i1 %237, float 0.000000e+00, float %2115
  %2120 = call float @dx.op.dot3.f32(i32 55, float %2110, float %2111, float %2112, float %2103, float %2102, float %2101)  ; Dot3(ax,ay,az,bx,by,bz)
  %2121 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  %2122 = call float @dx.op.dot3.f32(i32 55, float %2106, float %2105, float %2104, float %2110, float %2111, float %2112)  ; Dot3(ax,ay,az,bx,by,bz)
  %2123 = fmul fast float %2122, 2.000000e+00
  %2124 = fmul fast float %2123, %2110
  %2125 = fmul fast float %2123, %2111
  %2126 = fmul fast float %2123, %2112
  %2127 = fsub fast float %2106, %2124
  %2128 = fsub fast float %2105, %2125
  %2129 = fsub fast float %2104, %2126
  %2130 = call float @dx.op.binary.f32(i32 36, float %2117, float 1.000000e+00)  ; FMin(a,b)
  %2131 = fsub fast float 1.000000e+00, %2130
  %2132 = bitcast float %2131 to i32
  %2133 = ashr i32 %2132, 1
  %2134 = add nsw i32 %2133, 532487669
  %2135 = bitcast i32 %2134 to float
  %2136 = fsub fast float 1.000000e+00, %2116
  %2137 = call float @dx.op.binary.f32(i32 35, float %2136, float 0x3F847AE140000000)  ; FMax(a,b)
  %2138 = fmul fast float %2137, %2137
  %2139 = fmul fast float %2138, %2138
  %2140 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2135, float %2139, float %2140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = fsub fast float 1.000000e+00, %2117
  %2144 = bitcast float %2143 to i32
  %2145 = sub nsw i32 2129859010, %2144
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.CBufRet.f32 %2146, 1
  %2149 = fadd fast float %2147, %146
  %2150 = fadd fast float %2148, %147
  %2151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.i32 %2151, 0
  %2153 = icmp eq i32 %2152, 1
  br i1 %2153, label %2154, label %2189

; <label>:2154                                    ; preds = %2100
  %2155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.f32 %2155, 0
  %2157 = extractvalue %dx.types.CBufRet.f32 %2155, 1
  %2158 = fsub fast float %2149, %2156
  %2159 = fsub fast float %2150, %2157
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.CBufRet.f32 %2160, 1
  %2163 = fmul fast float %2158, %2161
  %2164 = fmul fast float %2159, %2162
  %2165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2163, float %2164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = fcmp fast ogt float %2166, 0.000000e+00
  %2168 = extractvalue %dx.types.CBufRet.i32 %2151, 3
  %2169 = icmp ne i32 %2168, 0
  %2170 = and i1 %2167, %2169
  br i1 %2170, label %2171, label %2189, !dx.controlflow.hints !104

; <label>:2171                                    ; preds = %2154
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 0
  %2174 = extractvalue %dx.types.CBufRet.f32 %2172, 1
  %2175 = fsub fast float %2149, %2173
  %2176 = fsub fast float %2150, %2174
  %2177 = fmul fast float %2175, %2175
  %2178 = fmul fast float %2176, %2176
  %2179 = fadd fast float %2177, %2178
  %2180 = uitofp i32 %2168 to float
  %2181 = fmul fast float %2180, %2180
  %2182 = fcmp fast ogt float %2179, %2181
  br i1 %2182, label %2189, label %2183

; <label>:2183                                    ; preds = %2171
  %2184 = call float @dx.op.unary.f32(i32 24, float %2179)  ; Sqrt(value)
  %2185 = fsub fast float %2180, %2184
  %2186 = fmul fast float %2185, 0x3F75555560000000
  %2187 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2188 = call float @dx.op.binary.f32(i32 36, float %2187, float %2166)  ; FMin(a,b)
  br label %2189

; <label>:2189                                    ; preds = %2183, %2171, %2154, %2100
  %2190 = phi float [ 1.000000e+00, %2100 ], [ %2188, %2183 ], [ %2166, %2154 ], [ 0.000000e+00, %2171 ]
  %2191 = fcmp fast ogt float %2190, 0.000000e+00
  br i1 %2191, label %2192, label %2291, !dx.controlflow.hints !105

; <label>:2192                                    ; preds = %2189
  %2193 = fadd fast float %177, 5.000000e-01
  %2194 = call float @dx.op.unary.f32(i32 27, float %2193)  ; Round_ni(value)
  %2195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %175, float %176, float %2194, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2196 = extractvalue %dx.types.ResRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.ResRet.f32 %2195, 1
  %2198 = extractvalue %dx.types.ResRet.f32 %2195, 2
  %2199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2200 = extractvalue %dx.types.CBufRet.f32 %2199, 3
  %2201 = fmul fast float %2200, %2196
  %2202 = fmul fast float %2200, %2197
  %2203 = fmul fast float %2200, %2198
  %2204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %175, float %176, float %2194, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2205 = extractvalue %dx.types.ResRet.f32 %2204, 0
  %2206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %175, float %176, float %2194, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.ResRet.f32 %2206, 1
  %2209 = fmul fast float %2207, 2.000000e+00
  %2210 = fmul fast float %2208, 2.000000e+00
  %2211 = fadd fast float %2209, -1.000000e+00
  %2212 = fadd fast float %2210, -1.000000e+00
  %2213 = fadd fast float %2211, %2212
  %2214 = fmul fast float %2213, 5.000000e-01
  %2215 = fsub fast float %2211, %2212
  %2216 = fmul fast float %2215, 5.000000e-01
  %2217 = call float @dx.op.unary.f32(i32 6, float %2214)  ; FAbs(value)
  %2218 = fsub fast float 1.000000e+00, %2217
  %2219 = call float @dx.op.unary.f32(i32 6, float %2216)  ; FAbs(value)
  %2220 = fsub fast float %2218, %2219
  %2221 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2220)  ; FMax(a,b)
  %2222 = call float @dx.op.dot3.f32(i32 55, float %2214, float %2216, float %2221, float %2214, float %2216, float %2221)  ; Dot3(ax,ay,az,bx,by,bz)
  %2223 = bitcast float %2222 to i32
  %2224 = ashr i32 %2223, 1
  %2225 = sub nsw i32 1597250115, %2224
  %2226 = bitcast i32 %2225 to float
  %2227 = fmul fast float %2226, %2214
  %2228 = fmul fast float %2226, %2216
  %2229 = fmul fast float %2226, %2221
  %2230 = fsub fast float 1.000000e+00, %2205
  %2231 = fdiv fast float %2230, %2229
  %2232 = fmul fast float %2229, %76
  %2233 = fmul fast float %2229, %77
  %2234 = fmul fast float %2229, %78
  %2235 = fmul fast float %2227, %72
  %2236 = fmul fast float %2227, %73
  %2237 = fmul fast float %2227, %74
  %2238 = fadd fast float %2232, %2235
  %2239 = fadd fast float %2233, %2236
  %2240 = fadd fast float %2234, %2237
  %2241 = fmul fast float %2228, %110
  %2242 = fmul fast float %2228, %111
  %2243 = fmul fast float %2228, %112
  %2244 = fadd fast float %2238, %2241
  %2245 = fadd fast float %2239, %2242
  %2246 = fadd fast float %2240, %2243
  %2247 = call float @dx.op.dot3.f32(i32 55, float %2244, float %2245, float %2246, float %2244, float %2245, float %2246)  ; Dot3(ax,ay,az,bx,by,bz)
  %2248 = call float @dx.op.unary.f32(i32 25, float %2247)  ; Rsqrt(value)
  %2249 = fmul fast float %2244, %2248
  %2250 = fmul fast float %2245, %2248
  %2251 = fmul fast float %2246, %2248
  %2252 = call float @dx.op.dot3.f32(i32 55, float %2110, float %2111, float %2112, float %2110, float %2111, float %2112)  ; Dot3(ax,ay,az,bx,by,bz)
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = fmul fast float %2253, 5.000000e-01
  %2255 = fadd fast float %2254, 5.000000e-01
  %2256 = fmul fast float %2255, %2205
  %2257 = call float @dx.op.dot3.f32(i32 55, float %2110, float %2111, float %2112, float %2249, float %2250, float %2251)  ; Dot3(ax,ay,az,bx,by,bz)
  %2258 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2259 = fmul fast float %2258, %2231
  %2260 = fadd fast float %2256, %2259
  %2261 = fsub fast float 5.000000e-01, %2254
  %2262 = fmul fast float %2261, %2107
  %2263 = fmul fast float %2261, %2108
  %2264 = fmul fast float %2261, %2109
  %2265 = fadd fast float %2260, %2262
  %2266 = fmul fast float %2265, %2201
  %2267 = fadd fast float %2260, %2263
  %2268 = fmul fast float %2267, %2202
  %2269 = fadd fast float %2260, %2264
  %2270 = fmul fast float %2269, %2203
  %2271 = call float @dx.op.dot3.f32(i32 55, float %2127, float %2128, float %2129, float %2110, float %2111, float %2112)  ; Dot3(ax,ay,az,bx,by,bz)
  %2272 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  %2273 = fmul fast float %2272, 5.000000e-01
  %2274 = fadd fast float %2273, 5.000000e-01
  %2275 = fmul fast float %2274, %2205
  %2276 = call float @dx.op.dot3.f32(i32 55, float %2127, float %2128, float %2129, float %2249, float %2250, float %2251)  ; Dot3(ax,ay,az,bx,by,bz)
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = fmul fast float %2277, %2231
  %2279 = fadd fast float %2275, %2278
  %2280 = fsub fast float 5.000000e-01, %2273
  %2281 = fmul fast float %2280, %2107
  %2282 = fmul fast float %2280, %2108
  %2283 = fmul fast float %2280, %2109
  %2284 = fadd fast float %2279, %2281
  %2285 = fmul fast float %2284, %2201
  %2286 = fadd fast float %2279, %2282
  %2287 = fmul fast float %2286, %2202
  %2288 = fadd fast float %2279, %2283
  %2289 = fmul fast float %2288, %2203
  %2290 = call float @dx.op.dot3.f32(i32 55, float %2201, float %2202, float %2203, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2291

; <label>:2291                                    ; preds = %2192, %2189
  %2292 = phi float [ %2290, %2192 ], [ 0.000000e+00, %2189 ]
  %2293 = phi float [ %2285, %2192 ], [ 0.000000e+00, %2189 ]
  %2294 = phi float [ %2287, %2192 ], [ 0.000000e+00, %2189 ]
  %2295 = phi float [ %2289, %2192 ], [ 0.000000e+00, %2189 ]
  %2296 = phi float [ %2266, %2192 ], [ 0.000000e+00, %2189 ]
  %2297 = phi float [ %2268, %2192 ], [ 0.000000e+00, %2189 ]
  %2298 = phi float [ %2270, %2192 ], [ 0.000000e+00, %2189 ]
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = fcmp fast ogt float %2300, 0.000000e+00
  %2302 = and i1 %2191, %2301
  br i1 %2302, label %2303, label %2507, !dx.controlflow.hints !106

; <label>:2303                                    ; preds = %2291
  %2304 = extractvalue %dx.types.CBufRet.f32 %2146, 2
  %2305 = fadd fast float %2304, %148
  %2306 = fmul fast float %2110, 3.200000e+01
  %2307 = fmul fast float %2111, 3.200000e+01
  %2308 = fadd fast float %2149, %2306
  %2309 = fadd fast float %2150, %2307
  %2310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2311 = extractvalue %dx.types.CBufRet.f32 %2310, 0
  %2312 = extractvalue %dx.types.CBufRet.f32 %2310, 1
  %2313 = fsub fast float %2308, %2311
  %2314 = fsub fast float %2309, %2312
  %2315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.f32 %2315, 0
  %2317 = extractvalue %dx.types.CBufRet.f32 %2315, 1
  %2318 = fmul fast float %2313, %2316
  %2319 = fmul fast float %2314, %2317
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = extractvalue %dx.types.CBufRet.f32 %2320, 1
  %2323 = fsub fast float %2149, %2321
  %2324 = fsub fast float %2150, %2322
  %2325 = fmul fast float %2323, %2323
  %2326 = fmul fast float %2324, %2324
  %2327 = fadd fast float %2325, %2326
  %2328 = call float @dx.op.unary.f32(i32 24, float %2327)  ; Sqrt(value)
  %2329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2330 = extractvalue %dx.types.CBufRet.f32 %2329, 0
  %2331 = extractvalue %dx.types.CBufRet.f32 %2329, 1
  %2332 = fsub fast float %2328, %2330
  %2333 = fdiv fast float %2332, %2331
  %2334 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2335 = fmul fast float %2334, 2.000000e+00
  %2336 = fsub fast float 3.000000e+00, %2335
  %2337 = fmul fast float %2334, %2334
  %2338 = fmul fast float %2337, %2336
  %2339 = fcmp fast oge float %2318, 0.000000e+00
  %2340 = fcmp fast ole float %2318, 1.000000e+00
  %2341 = and i1 %2340, %2339
  %2342 = fcmp fast oge float %2319, 0.000000e+00
  %2343 = and i1 %2342, %2341
  %2344 = fcmp fast ole float %2319, 1.000000e+00
  %2345 = and i1 %2344, %2343
  %2346 = fcmp fast ogt float %2338, 0.000000e+00
  %2347 = and i1 %2346, %2345
  br i1 %2347, label %2348, label %2471, !dx.controlflow.hints !107

; <label>:2348                                    ; preds = %2303
  %2349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2350 = extractvalue %dx.types.CBufRet.f32 %2349, 2
  %2351 = extractvalue %dx.types.CBufRet.f32 %2349, 3
  %2352 = fmul fast float %2350, %2318
  %2353 = fmul fast float %2351, %2319
  %2354 = call float @dx.op.unary.f32(i32 27, float %2352)  ; Round_ni(value)
  %2355 = call float @dx.op.unary.f32(i32 27, float %2353)  ; Round_ni(value)
  %2356 = fptosi float %2354 to i32
  %2357 = fptosi float %2355 to i32
  %2358 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2356, i32 %2357, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = lshr i32 %2359, 16
  %2361 = icmp eq i32 %2360, 65535
  br i1 %2361, label %2471, label %2362

; <label>:2362                                    ; preds = %2348
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = fmul fast float %2364, %2318
  %2366 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2367 = fadd fast float %2365, %2366
  %2368 = extractvalue %dx.types.CBufRet.f32 %2363, 2
  %2369 = fmul fast float %2368, %2319
  %2370 = extractvalue %dx.types.CBufRet.f32 %2363, 3
  %2371 = fadd fast float %2369, %2370
  %2372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2367, float %2371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.ResRet.f32 %2372, 1
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 1
  %2377 = extractvalue %dx.types.CBufRet.f32 %2375, 0
  %2378 = fsub fast float %2376, %2377
  %2379 = fmul fast float %2378, %2373
  %2380 = fadd fast float %2379, %2377
  %2381 = extractvalue %dx.types.CBufRet.f32 %2375, 3
  %2382 = extractvalue %dx.types.CBufRet.f32 %2375, 2
  %2383 = fsub fast float %2381, %2382
  %2384 = fmul fast float %2383, %2374
  %2385 = fadd fast float %2384, %2382
  %2386 = fsub fast float %2305, %2380
  %2387 = fsub fast float %2385, %2380
  %2388 = fdiv fast float %2386, %2387
  %2389 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2391 = extractvalue %dx.types.CBufRet.f32 %2349, 0
  %2392 = extractvalue %dx.types.CBufRet.f32 %2349, 1
  %2393 = fmul fast float %2391, %2318
  %2394 = fmul fast float %2392, %2319
  %2395 = fmul fast float %2393, 1.250000e-01
  %2396 = fmul fast float %2394, 1.250000e-01
  %2397 = call float @dx.op.unary.f32(i32 27, float %2395)  ; Round_ni(value)
  %2398 = call float @dx.op.unary.f32(i32 27, float %2396)  ; Round_ni(value)
  %2399 = fmul fast float %2397, 8.000000e+00
  %2400 = fmul fast float %2398, 8.000000e+00
  %2401 = fsub fast float %2393, %2399
  %2402 = fsub fast float %2394, %2400
  %2403 = fadd fast float %2401, 5.000000e-01
  %2404 = fadd fast float %2402, 5.000000e-01
  %2405 = and i32 %2360, 255
  %2406 = lshr i32 %2359, 24
  %2407 = mul nuw nsw i32 %2405, 9
  %2408 = uitofp i32 %2407 to float
  %2409 = mul nuw nsw i32 %2406, 9
  %2410 = uitofp i32 %2409 to float
  %2411 = fadd fast float %2403, %2408
  %2412 = fadd fast float %2404, %2410
  %2413 = fdiv fast float %2411, %2300
  %2414 = fdiv fast float %2412, %2390
  %2415 = fmul fast float %2389, 4.375000e-01
  %2416 = fadd fast float %2415, 3.125000e-02
  %2417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2413, float %2414, float %2416, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2418 = extractvalue %dx.types.ResRet.f32 %2417, 0
  %2419 = extractvalue %dx.types.ResRet.f32 %2417, 1
  %2420 = extractvalue %dx.types.ResRet.f32 %2417, 2
  %2421 = fadd fast float %2415, 5.312500e-01
  %2422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2413, float %2414, float %2421, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2423 = extractvalue %dx.types.ResRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.ResRet.f32 %2422, 1
  %2425 = extractvalue %dx.types.ResRet.f32 %2422, 2
  %2426 = fmul fast float %2423, 2.000000e+00
  %2427 = fmul fast float %2424, 2.000000e+00
  %2428 = fmul fast float %2425, 2.000000e+00
  %2429 = fadd fast float %2426, -1.000000e+00
  %2430 = fadd fast float %2427, -1.000000e+00
  %2431 = fadd fast float %2428, -1.000000e+00
  %2432 = fmul fast float %2429, %2429
  %2433 = fmul fast float %2430, %2430
  %2434 = fadd fast float %2432, %2433
  %2435 = fmul fast float %2431, %2431
  %2436 = fadd fast float %2434, %2435
  %2437 = call float @dx.op.unary.f32(i32 24, float %2436)  ; Sqrt(value)
  %2438 = fcmp fast ogt float %2437, 0.000000e+00
  br i1 %2438, label %2439, label %2443

; <label>:2439                                    ; preds = %2362
  %2440 = fdiv fast float %2429, %2437
  %2441 = fdiv fast float %2430, %2437
  %2442 = fdiv fast float %2431, %2437
  br label %2443

; <label>:2443                                    ; preds = %2439, %2362
  %2444 = phi float [ %2440, %2439 ], [ 0.000000e+00, %2362 ]
  %2445 = phi float [ %2441, %2439 ], [ 0.000000e+00, %2362 ]
  %2446 = phi float [ %2442, %2439 ], [ 0.000000e+00, %2362 ]
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2444, float %2445, float %2446, float %2110, float %2111, float %2112)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2447)  ; FMax(a,b)
  %2449 = fmul fast float %2448, 0x400C5BF8A0000000
  %2450 = fmul fast float %2418, %2338
  %2451 = fmul fast float %2450, %2449
  %2452 = fmul fast float %2419, %2338
  %2453 = fmul fast float %2452, %2449
  %2454 = fmul fast float %2420, %2338
  %2455 = fmul fast float %2454, %2449
  %2456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2457 = extractvalue %dx.types.CBufRet.f32 %2456, 3
  %2458 = fmul fast float %2451, %2457
  %2459 = fmul fast float %2453, %2457
  %2460 = fmul fast float %2455, %2457
  %2461 = fcmp fast ogt float %2305, %2385
  br i1 %2461, label %2462, label %2471

; <label>:2462                                    ; preds = %2443
  %2463 = fmul fast float %2387, 0x3FC24924A0000000
  %2464 = fsub fast float %2305, %2385
  %2465 = fdiv fast float %2464, %2463
  %2466 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = fmul fast float %2467, %2458
  %2469 = fmul fast float %2467, %2459
  %2470 = fmul fast float %2467, %2460
  br label %2471

; <label>:2471                                    ; preds = %2462, %2443, %2348, %2303
  %2472 = phi float [ %2470, %2462 ], [ %2460, %2443 ], [ 0.000000e+00, %2348 ], [ 0.000000e+00, %2303 ]
  %2473 = phi float [ %2469, %2462 ], [ %2459, %2443 ], [ 0.000000e+00, %2348 ], [ 0.000000e+00, %2303 ]
  %2474 = phi float [ %2468, %2462 ], [ %2458, %2443 ], [ 0.000000e+00, %2348 ], [ 0.000000e+00, %2303 ]
  %2475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2474)  ; FMax(a,b)
  %2476 = fmul fast float %2475, 0x3FD20DD760000000
  %2477 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2127, float %2128, float %2129)  ; Dot3(ax,ay,az,bx,by,bz)
  %2478 = fmul fast float %2477, 0x3FDF454380000000
  %2479 = fmul fast float %2477, %2477
  %2480 = fmul fast float %2479, 0x3FEE471020000000
  %2481 = fadd fast float %2480, 0xBFD42F6020000000
  %2482 = call float @dx.op.dot3.f32(i32 55, float %2475, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2478, float %2481)  ; Dot3(ax,ay,az,bx,by,bz)
  %2483 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2473)  ; FMax(a,b)
  %2484 = fmul fast float %2483, 0x3FD20DD760000000
  %2485 = call float @dx.op.dot3.f32(i32 55, float %2483, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2478, float %2481)  ; Dot3(ax,ay,az,bx,by,bz)
  %2486 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2472)  ; FMax(a,b)
  %2487 = fmul fast float %2486, 0x3FD20DD760000000
  %2488 = call float @dx.op.dot3.f32(i32 55, float %2486, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2478, float %2481)  ; Dot3(ax,ay,az,bx,by,bz)
  %2489 = call float @dx.op.binary.f32(i32 35, float %2476, float 0.000000e+00)  ; FMax(a,b)
  %2490 = call float @dx.op.binary.f32(i32 35, float %2484, float 0.000000e+00)  ; FMax(a,b)
  %2491 = call float @dx.op.binary.f32(i32 35, float %2487, float 0.000000e+00)  ; FMax(a,b)
  %2492 = call float @dx.op.binary.f32(i32 35, float %2482, float 0.000000e+00)  ; FMax(a,b)
  %2493 = call float @dx.op.binary.f32(i32 35, float %2485, float 0.000000e+00)  ; FMax(a,b)
  %2494 = call float @dx.op.binary.f32(i32 35, float %2488, float 0.000000e+00)  ; FMax(a,b)
  %2495 = fmul fast float %2489, %2190
  %2496 = fmul fast float %2490, %2190
  %2497 = fmul fast float %2491, %2190
  %2498 = fadd fast float %2495, %2296
  %2499 = fadd fast float %2496, %2297
  %2500 = fadd fast float %2497, %2298
  %2501 = fmul fast float %2492, %2190
  %2502 = fmul fast float %2493, %2190
  %2503 = fmul fast float %2494, %2190
  %2504 = fadd fast float %2501, %2293
  %2505 = fadd fast float %2502, %2294
  %2506 = fadd fast float %2503, %2295
  br label %2507

; <label>:2507                                    ; preds = %2471, %2291
  %2508 = phi float [ %2504, %2471 ], [ %2293, %2291 ]
  %2509 = phi float [ %2505, %2471 ], [ %2294, %2291 ]
  %2510 = phi float [ %2506, %2471 ], [ %2295, %2291 ]
  %2511 = phi float [ %2498, %2471 ], [ %2296, %2291 ]
  %2512 = phi float [ %2499, %2471 ], [ %2297, %2291 ]
  %2513 = phi float [ %2500, %2471 ], [ %2298, %2291 ]
  %2514 = fcmp fast olt float %2190, 1.000000e+00
  br i1 %2514, label %2515, label %3338, !dx.controlflow.hints !108

; <label>:2515                                    ; preds = %2507
  %2516 = extractvalue %dx.types.CBufRet.f32 %2146, 2
  %2517 = fadd fast float %2516, %148
  %2518 = fmul fast float %2110, 3.200000e+01
  %2519 = fmul fast float %2111, 3.200000e+01
  %2520 = fadd fast float %2149, %2518
  %2521 = fadd fast float %2150, %2519
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 0
  %2524 = extractvalue %dx.types.CBufRet.f32 %2522, 1
  %2525 = fsub fast float %2520, %2523
  %2526 = fsub fast float %2521, %2524
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 0
  %2529 = extractvalue %dx.types.CBufRet.f32 %2527, 1
  %2530 = fmul fast float %2525, %2528
  %2531 = fmul fast float %2526, %2529
  %2532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2533 = extractvalue %dx.types.CBufRet.f32 %2532, 0
  %2534 = fmul fast float %2530, %2533
  %2535 = extractvalue %dx.types.CBufRet.f32 %2532, 1
  %2536 = fadd fast float %2534, %2535
  %2537 = extractvalue %dx.types.CBufRet.f32 %2532, 2
  %2538 = fmul fast float %2537, %2531
  %2539 = extractvalue %dx.types.CBufRet.f32 %2532, 3
  %2540 = fadd fast float %2538, %2539
  %2541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2536, float %2540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = extractvalue %dx.types.ResRet.f32 %2541, 1
  %2544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2545 = extractvalue %dx.types.CBufRet.f32 %2544, 1
  %2546 = extractvalue %dx.types.CBufRet.f32 %2544, 0
  %2547 = fsub fast float %2545, %2546
  %2548 = fmul fast float %2547, %2542
  %2549 = fadd fast float %2548, %2546
  %2550 = extractvalue %dx.types.CBufRet.f32 %2544, 3
  %2551 = extractvalue %dx.types.CBufRet.f32 %2544, 2
  %2552 = fsub fast float %2550, %2551
  %2553 = fmul fast float %2552, %2543
  %2554 = fadd fast float %2553, %2551
  %2555 = fsub fast float %2517, %2549
  %2556 = fsub fast float %2554, %2549
  %2557 = fdiv fast float %2555, %2556
  %2558 = call float @dx.op.unary.f32(i32 7, float %2557)  ; Saturate(value)
  %2559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2560 = extractvalue %dx.types.CBufRet.f32 %2559, 0
  %2561 = fmul fast float %2560, %2558
  %2562 = extractvalue %dx.types.CBufRet.f32 %2559, 1
  %2563 = fadd fast float %2561, %2562
  %2564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2536, float %2540, float %2563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2565 = extractvalue %dx.types.ResRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.ResRet.f32 %2564, 1
  %2567 = extractvalue %dx.types.ResRet.f32 %2564, 2
  %2568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2569 = extractvalue %dx.types.CBufRet.f32 %2568, 0
  %2570 = extractvalue %dx.types.CBufRet.f32 %2568, 1
  %2571 = extractvalue %dx.types.CBufRet.f32 %2568, 2
  %2572 = fmul fast float %2569, %2565
  %2573 = fmul fast float %2570, %2566
  %2574 = fmul fast float %2571, %2567
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 0
  %2577 = extractvalue %dx.types.CBufRet.f32 %2575, 1
  %2578 = extractvalue %dx.types.CBufRet.f32 %2575, 2
  %2579 = fadd fast float %2572, %2576
  %2580 = fadd fast float %2573, %2577
  %2581 = fadd fast float %2574, %2578
  %2582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2583 = extractvalue %dx.types.CBufRet.f32 %2582, 0
  %2584 = fmul fast float %2583, %2530
  %2585 = extractvalue %dx.types.CBufRet.f32 %2582, 1
  %2586 = fadd fast float %2584, %2585
  %2587 = extractvalue %dx.types.CBufRet.f32 %2582, 2
  %2588 = fmul fast float %2587, %2531
  %2589 = extractvalue %dx.types.CBufRet.f32 %2582, 3
  %2590 = fadd fast float %2588, %2589
  %2591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2591, 0
  %2593 = extractvalue %dx.types.CBufRet.f32 %2591, 1
  %2594 = extractvalue %dx.types.CBufRet.f32 %2591, 2
  %2595 = extractvalue %dx.types.CBufRet.f32 %2591, 3
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 0
  %2598 = extractvalue %dx.types.CBufRet.f32 %2596, 1
  %2599 = extractvalue %dx.types.CBufRet.f32 %2596, 2
  %2600 = extractvalue %dx.types.CBufRet.f32 %2596, 3
  %2601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2586, float %2590, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2602 = extractvalue %dx.types.ResRet.f32 %2601, 0
  %2603 = extractvalue %dx.types.ResRet.f32 %2601, 1
  %2604 = extractvalue %dx.types.ResRet.f32 %2601, 2
  %2605 = extractvalue %dx.types.ResRet.f32 %2601, 3
  %2606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2586, float %2590, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2607 = extractvalue %dx.types.ResRet.f32 %2606, 0
  %2608 = extractvalue %dx.types.ResRet.f32 %2606, 1
  %2609 = extractvalue %dx.types.ResRet.f32 %2606, 2
  %2610 = extractvalue %dx.types.ResRet.f32 %2606, 3
  %2611 = fmul fast float %2602, %2579
  %2612 = fmul fast float %2607, %2579
  %2613 = fmul fast float %2609, %2579
  %2614 = fmul fast float %2605, %2579
  %2615 = fadd fast float %2611, %2592
  %2616 = fadd fast float %2612, %2593
  %2617 = fadd fast float %2613, %2594
  %2618 = fadd fast float %2614, %2595
  %2619 = fmul fast float %2603, %2579
  %2620 = fmul fast float %2608, %2579
  %2621 = fadd fast float %2619, %2597
  %2622 = fadd fast float %2620, %2598
  %2623 = fmul fast float %2604, %2579
  %2624 = fmul fast float %2610, %2579
  %2625 = fadd fast float %2623, %2599
  %2626 = fadd fast float %2624, %2600
  %2627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2586, float %2590, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2628 = extractvalue %dx.types.ResRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.ResRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.ResRet.f32 %2627, 2
  %2631 = extractvalue %dx.types.ResRet.f32 %2627, 3
  %2632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2586, float %2590, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.ResRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.ResRet.f32 %2632, 2
  %2636 = extractvalue %dx.types.ResRet.f32 %2632, 3
  %2637 = fmul fast float %2628, %2580
  %2638 = fmul fast float %2633, %2580
  %2639 = fmul fast float %2635, %2580
  %2640 = fmul fast float %2631, %2580
  %2641 = fadd fast float %2615, %2637
  %2642 = fadd fast float %2616, %2638
  %2643 = fadd fast float %2617, %2639
  %2644 = fadd fast float %2618, %2640
  %2645 = fmul fast float %2629, %2580
  %2646 = fmul fast float %2634, %2580
  %2647 = fadd fast float %2621, %2645
  %2648 = fadd fast float %2622, %2646
  %2649 = fmul fast float %2630, %2580
  %2650 = fmul fast float %2636, %2580
  %2651 = fadd fast float %2625, %2649
  %2652 = fadd fast float %2626, %2650
  %2653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2586, float %2590, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2654 = extractvalue %dx.types.ResRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.ResRet.f32 %2653, 1
  %2656 = extractvalue %dx.types.ResRet.f32 %2653, 2
  %2657 = extractvalue %dx.types.ResRet.f32 %2653, 3
  %2658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2586, float %2590, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2659 = extractvalue %dx.types.ResRet.f32 %2658, 0
  %2660 = extractvalue %dx.types.ResRet.f32 %2658, 1
  %2661 = extractvalue %dx.types.ResRet.f32 %2658, 2
  %2662 = extractvalue %dx.types.ResRet.f32 %2658, 3
  %2663 = fmul fast float %2654, %2581
  %2664 = fmul fast float %2659, %2581
  %2665 = fmul fast float %2661, %2581
  %2666 = fmul fast float %2657, %2581
  %2667 = fadd fast float %2641, %2663
  %2668 = fadd fast float %2642, %2664
  %2669 = fadd fast float %2643, %2665
  %2670 = fadd fast float %2644, %2666
  %2671 = fmul fast float %2655, %2581
  %2672 = fmul fast float %2660, %2581
  %2673 = fadd fast float %2647, %2671
  %2674 = fadd fast float %2648, %2672
  %2675 = fmul fast float %2656, %2581
  %2676 = fmul fast float %2662, %2581
  %2677 = fadd fast float %2651, %2675
  %2678 = fadd fast float %2652, %2676
  %2679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2680 = extractvalue %dx.types.CBufRet.f32 %2679, 0
  %2681 = fsub fast float %2149, %2680
  %2682 = fsub fast float %2523, %2149
  %2683 = call float @dx.op.binary.f32(i32 35, float %2682, float %2681)  ; FMax(a,b)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2679, 1
  %2685 = fsub fast float %2150, %2684
  %2686 = fsub fast float %2524, %2150
  %2687 = call float @dx.op.binary.f32(i32 35, float %2686, float %2685)  ; FMax(a,b)
  %2688 = call float @dx.op.binary.f32(i32 35, float %2683, float %2687)  ; FMax(a,b)
  %2689 = extractvalue %dx.types.CBufRet.f32 %2527, 3
  %2690 = fmul fast float %2689, %2688
  %2691 = call float @dx.op.unary.f32(i32 7, float %2690)  ; Saturate(value)
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 0
  %2694 = extractvalue %dx.types.CBufRet.f32 %2692, 1
  %2695 = extractvalue %dx.types.CBufRet.f32 %2692, 2
  %2696 = extractvalue %dx.types.CBufRet.f32 %2692, 3
  %2697 = fsub fast float %2693, %2667
  %2698 = fsub fast float %2694, %2668
  %2699 = fsub fast float %2695, %2669
  %2700 = fsub fast float %2696, %2670
  %2701 = fmul fast float %2697, %2691
  %2702 = fmul fast float %2698, %2691
  %2703 = fmul fast float %2699, %2691
  %2704 = fmul fast float %2700, %2691
  %2705 = fadd fast float %2701, %2667
  %2706 = fadd fast float %2702, %2668
  %2707 = fadd fast float %2703, %2669
  %2708 = fadd fast float %2704, %2670
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2712 = fsub fast float %2710, %2673
  %2713 = fsub fast float %2711, %2674
  %2714 = fmul fast float %2712, %2691
  %2715 = fmul fast float %2713, %2691
  %2716 = fadd fast float %2714, %2673
  %2717 = fadd fast float %2715, %2674
  %2718 = extractvalue %dx.types.CBufRet.f32 %2709, 2
  %2719 = extractvalue %dx.types.CBufRet.f32 %2709, 3
  %2720 = fsub fast float %2718, %2677
  %2721 = fsub fast float %2719, %2678
  %2722 = fmul fast float %2720, %2691
  %2723 = fmul fast float %2721, %2691
  %2724 = fadd fast float %2722, %2677
  %2725 = fadd fast float %2723, %2678
  %2726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2726, 0
  %2728 = fmul fast float %2727, %2705
  %2729 = fmul fast float %2727, %2706
  %2730 = fmul fast float %2727, %2707
  %2731 = fmul fast float %2727, %2708
  %2732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2732, 0
  %2734 = fmul fast float %2733, %2716
  %2735 = fmul fast float %2733, %2717
  %2736 = fadd fast float %2734, %2728
  %2737 = fadd fast float %2735, %2730
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = fmul fast float %2739, %2724
  %2741 = fmul fast float %2739, %2725
  %2742 = fadd fast float %2736, %2740
  %2743 = fadd fast float %2737, %2741
  %2744 = extractvalue %dx.types.CBufRet.f32 %2726, 1
  %2745 = fmul fast float %2744, %2705
  %2746 = fmul fast float %2744, %2706
  %2747 = fmul fast float %2744, %2707
  %2748 = fmul fast float %2744, %2708
  %2749 = extractvalue %dx.types.CBufRet.f32 %2732, 1
  %2750 = fmul fast float %2749, %2716
  %2751 = fmul fast float %2749, %2717
  %2752 = fadd fast float %2750, %2745
  %2753 = fadd fast float %2751, %2747
  %2754 = extractvalue %dx.types.CBufRet.f32 %2738, 1
  %2755 = fmul fast float %2754, %2724
  %2756 = fmul fast float %2754, %2725
  %2757 = fadd fast float %2752, %2755
  %2758 = fadd fast float %2753, %2756
  %2759 = extractvalue %dx.types.CBufRet.f32 %2726, 2
  %2760 = fmul fast float %2759, %2705
  %2761 = fmul fast float %2759, %2706
  %2762 = fmul fast float %2759, %2707
  %2763 = fmul fast float %2759, %2708
  %2764 = extractvalue %dx.types.CBufRet.f32 %2732, 2
  %2765 = fmul fast float %2764, %2716
  %2766 = fmul fast float %2764, %2717
  %2767 = fadd fast float %2765, %2760
  %2768 = fadd fast float %2766, %2762
  %2769 = extractvalue %dx.types.CBufRet.f32 %2738, 2
  %2770 = fmul fast float %2769, %2724
  %2771 = fmul fast float %2769, %2725
  %2772 = fadd fast float %2767, %2770
  %2773 = fadd fast float %2768, %2771
  %2774 = fmul fast float %2761, %2761
  %2775 = fmul fast float %2773, %2773
  %2776 = fmul fast float %2763, %2763
  %2777 = fadd fast float %2776, %2774
  %2778 = fadd fast float %2777, %2775
  %2779 = call float @dx.op.unary.f32(i32 24, float %2778)  ; Sqrt(value)
  %2780 = fcmp fast ugt float %2779, 0.000000e+00
  br i1 %2780, label %2781, label %2796

; <label>:2781                                    ; preds = %2515
  %2782 = fsub fast float -0.000000e+00, %2763
  %2783 = fdiv fast float %2782, %2779
  %2784 = fsub fast float -0.000000e+00, %2761
  %2785 = fdiv fast float %2784, %2779
  %2786 = fdiv fast float %2773, %2779
  %2787 = fmul fast float %2772, 0x3FE279A760000000
  %2788 = fmul fast float %2785, %2761
  %2789 = fmul fast float %2786, %2773
  %2790 = fmul fast float %2783, %2763
  %2791 = fadd fast float %2788, %2790
  %2792 = fsub fast float %2791, %2789
  %2793 = call float @dx.op.unary.f32(i32 6, float %2792)  ; FAbs(value)
  %2794 = fadd fast float %2793, 0x3DDB7CDFE0000000
  %2795 = fdiv fast float %2787, %2794
  br label %2796

; <label>:2796                                    ; preds = %2781, %2515
  %2797 = phi float [ %2795, %2781 ], [ 1.000000e+00, %2515 ]
  %2798 = fmul fast float %2746, %2746
  %2799 = fmul fast float %2758, %2758
  %2800 = fmul fast float %2748, %2748
  %2801 = fadd fast float %2800, %2798
  %2802 = fadd fast float %2801, %2799
  %2803 = call float @dx.op.unary.f32(i32 24, float %2802)  ; Sqrt(value)
  %2804 = fcmp fast ugt float %2803, 0.000000e+00
  br i1 %2804, label %2805, label %2820

; <label>:2805                                    ; preds = %2796
  %2806 = fsub fast float -0.000000e+00, %2748
  %2807 = fdiv fast float %2806, %2803
  %2808 = fsub fast float -0.000000e+00, %2746
  %2809 = fdiv fast float %2808, %2803
  %2810 = fdiv fast float %2758, %2803
  %2811 = fmul fast float %2757, 0x3FE279A760000000
  %2812 = fmul fast float %2809, %2746
  %2813 = fmul fast float %2810, %2758
  %2814 = fmul fast float %2807, %2748
  %2815 = fadd fast float %2812, %2814
  %2816 = fsub fast float %2815, %2813
  %2817 = call float @dx.op.unary.f32(i32 6, float %2816)  ; FAbs(value)
  %2818 = fadd fast float %2817, 0x3DDB7CDFE0000000
  %2819 = fdiv fast float %2811, %2818
  br label %2820

; <label>:2820                                    ; preds = %2805, %2796
  %2821 = phi float [ %2819, %2805 ], [ 1.000000e+00, %2796 ]
  %2822 = call float @dx.op.binary.f32(i32 36, float %2821, float %2797)  ; FMin(a,b)
  %2823 = fmul fast float %2729, %2729
  %2824 = fmul fast float %2743, %2743
  %2825 = fmul fast float %2731, %2731
  %2826 = fadd fast float %2825, %2823
  %2827 = fadd fast float %2826, %2824
  %2828 = call float @dx.op.unary.f32(i32 24, float %2827)  ; Sqrt(value)
  %2829 = fcmp fast ugt float %2828, 0.000000e+00
  br i1 %2829, label %2830, label %2845

; <label>:2830                                    ; preds = %2820
  %2831 = fsub fast float -0.000000e+00, %2731
  %2832 = fdiv fast float %2831, %2828
  %2833 = fsub fast float -0.000000e+00, %2729
  %2834 = fdiv fast float %2833, %2828
  %2835 = fdiv fast float %2743, %2828
  %2836 = fmul fast float %2742, 0x3FE279A760000000
  %2837 = fmul fast float %2834, %2729
  %2838 = fmul fast float %2835, %2743
  %2839 = fmul fast float %2832, %2731
  %2840 = fadd fast float %2837, %2839
  %2841 = fsub fast float %2840, %2838
  %2842 = call float @dx.op.unary.f32(i32 6, float %2841)  ; FAbs(value)
  %2843 = fadd fast float %2842, 0x3DDB7CDFE0000000
  %2844 = fdiv fast float %2836, %2843
  br label %2845

; <label>:2845                                    ; preds = %2830, %2820
  %2846 = phi float [ %2844, %2830 ], [ 1.000000e+00, %2820 ]
  %2847 = call float @dx.op.binary.f32(i32 36, float %2846, float %2822)  ; FMin(a,b)
  %2848 = call float @dx.op.unary.f32(i32 7, float %2847)  ; Saturate(value)
  %2849 = fcmp fast olt float %2848, 1.000000e+00
  br i1 %2849, label %2850, label %2860

; <label>:2850                                    ; preds = %2845
  %2851 = fmul fast float %2848, %2729
  %2852 = fmul fast float %2848, %2743
  %2853 = fmul fast float %2848, %2731
  %2854 = fmul fast float %2848, %2746
  %2855 = fmul fast float %2848, %2758
  %2856 = fmul fast float %2848, %2748
  %2857 = fmul fast float %2848, %2761
  %2858 = fmul fast float %2848, %2773
  %2859 = fmul fast float %2848, %2763
  br label %2860

; <label>:2860                                    ; preds = %2850, %2845
  %2861 = phi float [ %2857, %2850 ], [ %2761, %2845 ]
  %2862 = phi float [ %2858, %2850 ], [ %2773, %2845 ]
  %2863 = phi float [ %2859, %2850 ], [ %2763, %2845 ]
  %2864 = phi float [ %2854, %2850 ], [ %2746, %2845 ]
  %2865 = phi float [ %2855, %2850 ], [ %2758, %2845 ]
  %2866 = phi float [ %2856, %2850 ], [ %2748, %2845 ]
  %2867 = phi float [ %2851, %2850 ], [ %2729, %2845 ]
  %2868 = phi float [ %2852, %2850 ], [ %2743, %2845 ]
  %2869 = phi float [ %2853, %2850 ], [ %2731, %2845 ]
  %2870 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2742)  ; FMax(a,b)
  %2871 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2757)  ; FMax(a,b)
  %2872 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2772)  ; FMax(a,b)
  %2873 = fcmp fast oge float %2530, 0.000000e+00
  %2874 = and i1 %2873, %2301
  %2875 = fcmp fast ole float %2530, 1.000000e+00
  %2876 = and i1 %2875, %2874
  %2877 = fcmp fast oge float %2531, 0.000000e+00
  %2878 = and i1 %2877, %2876
  %2879 = fcmp fast ole float %2531, 1.000000e+00
  %2880 = and i1 %2879, %2878
  br i1 %2880, label %2881, label %3026, !dx.controlflow.hints !109

; <label>:2881                                    ; preds = %2860
  %2882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2883 = extractvalue %dx.types.CBufRet.f32 %2882, 2
  %2884 = extractvalue %dx.types.CBufRet.f32 %2882, 3
  %2885 = fmul fast float %2883, %2530
  %2886 = fmul fast float %2884, %2531
  %2887 = call float @dx.op.unary.f32(i32 27, float %2885)  ; Round_ni(value)
  %2888 = call float @dx.op.unary.f32(i32 27, float %2886)  ; Round_ni(value)
  %2889 = fptosi float %2887 to i32
  %2890 = fptosi float %2888 to i32
  %2891 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2889, i32 %2890, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = and i32 %2892, 65535
  %2894 = lshr i32 %2892, 16
  %2895 = icmp eq i32 %2893, 65535
  br i1 %2895, label %2932, label %2896

; <label>:2896                                    ; preds = %2881
  %2897 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2898 = extractvalue %dx.types.CBufRet.f32 %2882, 0
  %2899 = extractvalue %dx.types.CBufRet.f32 %2882, 1
  %2900 = fmul fast float %2898, %2530
  %2901 = fmul fast float %2899, %2531
  %2902 = fmul fast float %2900, 1.250000e-01
  %2903 = fmul fast float %2901, 1.250000e-01
  %2904 = call float @dx.op.unary.f32(i32 27, float %2902)  ; Round_ni(value)
  %2905 = call float @dx.op.unary.f32(i32 27, float %2903)  ; Round_ni(value)
  %2906 = fmul fast float %2904, 8.000000e+00
  %2907 = fmul fast float %2905, 8.000000e+00
  %2908 = and i32 %2892, 255
  %2909 = lshr i32 %2892, 8
  %2910 = and i32 %2909, 255
  %2911 = mul nuw nsw i32 %2908, 9
  %2912 = uitofp i32 %2911 to float
  %2913 = mul nuw nsw i32 %2910, 9
  %2914 = uitofp i32 %2913 to float
  %2915 = fadd fast float %2912, 5.000000e-01
  %2916 = fadd fast float %2915, %2900
  %2917 = fsub fast float %2916, %2906
  %2918 = fadd fast float %2914, 5.000000e-01
  %2919 = fadd fast float %2918, %2901
  %2920 = fsub fast float %2919, %2907
  %2921 = fdiv fast float %2917, %2300
  %2922 = fdiv fast float %2920, %2897
  %2923 = fmul fast float %2558, 4.375000e-01
  %2924 = fadd fast float %2923, 3.125000e-02
  %2925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2921, float %2922, float %2924, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2926 = extractvalue %dx.types.ResRet.f32 %2925, 0
  %2927 = extractvalue %dx.types.ResRet.f32 %2925, 1
  %2928 = extractvalue %dx.types.ResRet.f32 %2925, 2
  %2929 = fadd fast float %2926, %2870
  %2930 = fadd fast float %2927, %2871
  %2931 = fadd fast float %2928, %2872
  br label %2932

; <label>:2932                                    ; preds = %2896, %2881
  %2933 = phi float [ %2931, %2896 ], [ %2872, %2881 ]
  %2934 = phi float [ %2930, %2896 ], [ %2871, %2881 ]
  %2935 = phi float [ %2929, %2896 ], [ %2870, %2881 ]
  %2936 = icmp eq i32 %2894, 65535
  br i1 %2936, label %3026, label %2937

; <label>:2937                                    ; preds = %2932
  %2938 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2939 = extractvalue %dx.types.CBufRet.f32 %2882, 0
  %2940 = extractvalue %dx.types.CBufRet.f32 %2882, 1
  %2941 = fmul fast float %2939, %2530
  %2942 = fmul fast float %2940, %2531
  %2943 = fmul fast float %2941, 1.250000e-01
  %2944 = fmul fast float %2942, 1.250000e-01
  %2945 = call float @dx.op.unary.f32(i32 27, float %2943)  ; Round_ni(value)
  %2946 = call float @dx.op.unary.f32(i32 27, float %2944)  ; Round_ni(value)
  %2947 = fmul fast float %2945, 8.000000e+00
  %2948 = fmul fast float %2946, 8.000000e+00
  %2949 = fsub fast float %2941, %2947
  %2950 = fsub fast float %2942, %2948
  %2951 = fadd fast float %2949, 5.000000e-01
  %2952 = fadd fast float %2950, 5.000000e-01
  %2953 = and i32 %2894, 255
  %2954 = lshr i32 %2892, 24
  %2955 = mul nuw nsw i32 %2953, 9
  %2956 = uitofp i32 %2955 to float
  %2957 = mul nuw nsw i32 %2954, 9
  %2958 = uitofp i32 %2957 to float
  %2959 = fadd fast float %2951, %2956
  %2960 = fadd fast float %2952, %2958
  %2961 = fdiv fast float %2959, %2300
  %2962 = fdiv fast float %2960, %2938
  %2963 = fmul fast float %2558, 4.375000e-01
  %2964 = fadd fast float %2963, 3.125000e-02
  %2965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2961, float %2962, float %2964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.ResRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.ResRet.f32 %2965, 2
  %2969 = fadd fast float %2963, 5.312500e-01
  %2970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2961, float %2962, float %2969, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 0
  %2972 = extractvalue %dx.types.ResRet.f32 %2970, 1
  %2973 = extractvalue %dx.types.ResRet.f32 %2970, 2
  %2974 = fmul fast float %2971, 2.000000e+00
  %2975 = fmul fast float %2972, 2.000000e+00
  %2976 = fmul fast float %2973, 2.000000e+00
  %2977 = fadd fast float %2974, -1.000000e+00
  %2978 = fadd fast float %2975, -1.000000e+00
  %2979 = fadd fast float %2976, -1.000000e+00
  %2980 = fmul fast float %2977, %2977
  %2981 = fmul fast float %2978, %2978
  %2982 = fadd fast float %2980, %2981
  %2983 = fmul fast float %2979, %2979
  %2984 = fadd fast float %2982, %2983
  %2985 = call float @dx.op.unary.f32(i32 24, float %2984)  ; Sqrt(value)
  %2986 = fcmp fast ogt float %2985, 0.000000e+00
  br i1 %2986, label %2987, label %2991

; <label>:2987                                    ; preds = %2937
  %2988 = fdiv fast float %2977, %2985
  %2989 = fdiv fast float %2978, %2985
  %2990 = fdiv fast float %2979, %2985
  br label %2991

; <label>:2991                                    ; preds = %2987, %2937
  %2992 = phi float [ %2988, %2987 ], [ 0.000000e+00, %2937 ]
  %2993 = phi float [ %2989, %2987 ], [ 0.000000e+00, %2937 ]
  %2994 = phi float [ %2990, %2987 ], [ 0.000000e+00, %2937 ]
  %2995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2996 = extractvalue %dx.types.CBufRet.f32 %2995, 0
  %2997 = extractvalue %dx.types.CBufRet.f32 %2995, 1
  %2998 = fsub fast float %2149, %2996
  %2999 = fsub fast float %2150, %2997
  %3000 = fmul fast float %2998, %2998
  %3001 = fmul fast float %2999, %2999
  %3002 = fadd fast float %3000, %3001
  %3003 = call float @dx.op.unary.f32(i32 24, float %3002)  ; Sqrt(value)
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.CBufRet.f32 %3004, 1
  %3007 = fsub fast float %3003, %3005
  %3008 = fdiv fast float %3007, %3006
  %3009 = call float @dx.op.unary.f32(i32 7, float %3008)  ; Saturate(value)
  %3010 = fmul fast float %3009, 2.000000e+00
  %3011 = fsub fast float 3.000000e+00, %3010
  %3012 = fmul fast float %3009, %3009
  %3013 = fmul fast float %3012, %3011
  %3014 = call float @dx.op.dot3.f32(i32 55, float %2992, float %2993, float %2994, float %2110, float %2111, float %2112)  ; Dot3(ax,ay,az,bx,by,bz)
  %3015 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3014)  ; FMax(a,b)
  %3016 = fmul fast float %3015, 0x400C5BF8A0000000
  %3017 = fmul fast float %3013, %2966
  %3018 = fmul fast float %3017, %3016
  %3019 = fadd fast float %3018, %2935
  %3020 = fmul fast float %3013, %2967
  %3021 = fmul fast float %3020, %3016
  %3022 = fadd fast float %3021, %2934
  %3023 = fmul fast float %3013, %2968
  %3024 = fmul fast float %3023, %3016
  %3025 = fadd fast float %3024, %2933
  br label %3026

; <label>:3026                                    ; preds = %2991, %2932, %2860
  %3027 = phi float [ %3025, %2991 ], [ %2933, %2932 ], [ %2872, %2860 ]
  %3028 = phi float [ %3022, %2991 ], [ %2934, %2932 ], [ %2871, %2860 ]
  %3029 = phi float [ %3019, %2991 ], [ %2935, %2932 ], [ %2870, %2860 ]
  %3030 = fcmp fast ogt float %2517, %2554
  %3031 = and i1 %2873, %3030
  %3032 = and i1 %2875, %3031
  %3033 = and i1 %2877, %3032
  %3034 = and i1 %2879, %3033
  br i1 %3034, label %3035, label %3092, !dx.controlflow.hints !110

; <label>:3035                                    ; preds = %3026
  %3036 = fmul fast float %2556, 0x3FC24924A0000000
  %3037 = fsub fast float %2517, %2554
  %3038 = fdiv fast float %3037, %3036
  %3039 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.f32 %3040, 0
  %3042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3043 = extractvalue %dx.types.CBufRet.f32 %3042, 0
  %3044 = extractvalue %dx.types.CBufRet.f32 %3042, 1
  %3045 = extractvalue %dx.types.CBufRet.f32 %3042, 2
  %3046 = fsub fast float %3041, %3029
  %3047 = fsub fast float %3043, %2867
  %3048 = fsub fast float %3044, %2868
  %3049 = fsub fast float %3045, %2869
  %3050 = fmul fast float %3046, %3039
  %3051 = fmul fast float %3047, %3039
  %3052 = fmul fast float %3048, %3039
  %3053 = fmul fast float %3049, %3039
  %3054 = fadd fast float %3050, %3029
  %3055 = fadd fast float %3051, %2867
  %3056 = fadd fast float %3052, %2868
  %3057 = fadd fast float %3053, %2869
  %3058 = extractvalue %dx.types.CBufRet.f32 %3040, 1
  %3059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3060 = extractvalue %dx.types.CBufRet.f32 %3059, 0
  %3061 = extractvalue %dx.types.CBufRet.f32 %3059, 1
  %3062 = extractvalue %dx.types.CBufRet.f32 %3059, 2
  %3063 = fsub fast float %3058, %3028
  %3064 = fsub fast float %3060, %2864
  %3065 = fsub fast float %3061, %2865
  %3066 = fsub fast float %3062, %2866
  %3067 = fmul fast float %3063, %3039
  %3068 = fmul fast float %3064, %3039
  %3069 = fmul fast float %3065, %3039
  %3070 = fmul fast float %3066, %3039
  %3071 = fadd fast float %3067, %3028
  %3072 = fadd fast float %3068, %2864
  %3073 = fadd fast float %3069, %2865
  %3074 = fadd fast float %3070, %2866
  %3075 = extractvalue %dx.types.CBufRet.f32 %3040, 2
  %3076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3077 = extractvalue %dx.types.CBufRet.f32 %3076, 0
  %3078 = extractvalue %dx.types.CBufRet.f32 %3076, 1
  %3079 = extractvalue %dx.types.CBufRet.f32 %3076, 2
  %3080 = fsub fast float %3075, %3027
  %3081 = fsub fast float %3077, %2861
  %3082 = fsub fast float %3078, %2862
  %3083 = fsub fast float %3079, %2863
  %3084 = fmul fast float %3080, %3039
  %3085 = fmul fast float %3081, %3039
  %3086 = fmul fast float %3082, %3039
  %3087 = fmul fast float %3083, %3039
  %3088 = fadd fast float %3084, %3027
  %3089 = fadd fast float %3085, %2861
  %3090 = fadd fast float %3086, %2862
  %3091 = fadd fast float %3087, %2863
  br label %3092

; <label>:3092                                    ; preds = %3035, %3026
  %3093 = phi float [ %3088, %3035 ], [ %3027, %3026 ]
  %3094 = phi float [ %3089, %3035 ], [ %2861, %3026 ]
  %3095 = phi float [ %3090, %3035 ], [ %2862, %3026 ]
  %3096 = phi float [ %3091, %3035 ], [ %2863, %3026 ]
  %3097 = phi float [ %3071, %3035 ], [ %3028, %3026 ]
  %3098 = phi float [ %3072, %3035 ], [ %2864, %3026 ]
  %3099 = phi float [ %3073, %3035 ], [ %2865, %3026 ]
  %3100 = phi float [ %3074, %3035 ], [ %2866, %3026 ]
  %3101 = phi float [ %3054, %3035 ], [ %3029, %3026 ]
  %3102 = phi float [ %3055, %3035 ], [ %2867, %3026 ]
  %3103 = phi float [ %3056, %3035 ], [ %2868, %3026 ]
  %3104 = phi float [ %3057, %3035 ], [ %2869, %3026 ]
  %3105 = extractvalue %dx.types.CBufRet.f32 %2679, 3
  %3106 = fmul fast float %3105, %3101
  %3107 = fmul fast float %3105, %3097
  %3108 = fmul fast float %3105, %3093
  %3109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3110 = extractvalue %dx.types.CBufRet.f32 %3109, 3
  %3111 = fmul fast float %3106, %3110
  %3112 = fmul fast float %3107, %3110
  %3113 = fmul fast float %3108, %3110
  %3114 = call float @dx.op.dot3.f32(i32 55, float %3111, float %3112, float %3113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3115 = fmul fast float %3114, 0x3FD20DD760000000
  %3116 = fmul fast float %3102, 1.500000e+00
  %3117 = fmul fast float %3116, %3105
  %3118 = fmul fast float %3117, %3110
  %3119 = fmul fast float %3103, 1.500000e+00
  %3120 = fmul fast float %3119, %3105
  %3121 = fmul fast float %3120, %3110
  %3122 = fmul fast float %3104, 1.500000e+00
  %3123 = fmul fast float %3122, %3105
  %3124 = fmul fast float %3123, %3110
  %3125 = fmul fast float %3098, 1.500000e+00
  %3126 = fmul fast float %3125, %3105
  %3127 = fmul fast float %3126, %3110
  %3128 = fmul fast float %3099, 1.500000e+00
  %3129 = fmul fast float %3128, %3105
  %3130 = fmul fast float %3129, %3110
  %3131 = fmul fast float %3100, 1.500000e+00
  %3132 = fmul fast float %3131, %3105
  %3133 = fmul fast float %3132, %3110
  %3134 = fmul fast float %3094, 1.500000e+00
  %3135 = fmul fast float %3134, %3105
  %3136 = fmul fast float %3135, %3110
  %3137 = fmul fast float %3095, 1.500000e+00
  %3138 = fmul fast float %3137, %3105
  %3139 = fmul fast float %3138, %3110
  %3140 = fmul fast float %3096, 1.500000e+00
  %3141 = fmul fast float %3140, %3105
  %3142 = fmul fast float %3141, %3110
  %3143 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3111)  ; FMax(a,b)
  %3144 = call float @dx.op.dot3.f32(i32 55, float %3118, float %3121, float %3124, float %3118, float %3121, float %3124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3145 = fcmp fast oeq float %3144, 0.000000e+00
  %3146 = fcmp fast oeq float %3143, 0.000000e+00
  %3147 = or i1 %3146, %3145
  br i1 %3147, label %3177, label %3148

; <label>:3148                                    ; preds = %3092
  %3149 = fsub fast float -0.000000e+00, %3124
  %3150 = fsub fast float -0.000000e+00, %3118
  %3151 = call float @dx.op.unary.f32(i32 24, float %3144)  ; Sqrt(value)
  %3152 = fdiv fast float %3151, %3143
  %3153 = fcmp fast ogt float %3152, 0x3FFB6F8900000000
  %3154 = select i1 %3153, float 0x3FFB6F8900000000, float %3152
  %3155 = fmul fast float %3154, 0x3FE8A23460000000
  %3156 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  %3157 = call float @dx.op.binary.f32(i32 35, float %3154, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3158 = fmul fast float %3156, %3143
  %3159 = fmul fast float %3157, 0x3FF279A740000000
  %3160 = fadd fast float %3159, -1.000000e+00
  %3161 = call float @dx.op.dot3.f32(i32 55, float %3149, float %3150, float %3121, float %3149, float %3150, float %3121)  ; Dot3(ax,ay,az,bx,by,bz)
  %3162 = call float @dx.op.unary.f32(i32 25, float %3161)  ; Rsqrt(value)
  %3163 = fmul fast float %3162, %3149
  %3164 = fmul fast float %3162, %3150
  %3165 = fmul fast float %3162, %3121
  %3166 = fmul fast float %3160, %3160
  %3167 = fsub fast float 1.000000e+00, %3166
  %3168 = fmul fast float %3157, 0x40005F8BE0000000
  %3169 = fsub fast float 0x400C5BF8A0000000, %3168
  %3170 = fdiv fast float %3158, %3169
  %3171 = fmul fast float %3170, 0x3FEE31C3C0000000
  %3172 = fmul fast float %3171, %3167
  %3173 = fmul fast float %3157, 0x3FDACB7480000000
  %3174 = fadd fast float %3173, 0xBFD7347680000000
  %3175 = fmul fast float %3174, %3170
  %3176 = fmul fast float %3175, %3167
  br label %3177

; <label>:3177                                    ; preds = %3148, %3092
  %3178 = phi float [ %3163, %3148 ], [ 0.000000e+00, %3092 ]
  %3179 = phi float [ %3164, %3148 ], [ 0.000000e+00, %3092 ]
  %3180 = phi float [ %3165, %3148 ], [ 0.000000e+00, %3092 ]
  %3181 = phi float [ %3172, %3148 ], [ 0.000000e+00, %3092 ]
  %3182 = phi float [ %3176, %3148 ], [ 0.000000e+00, %3092 ]
  %3183 = call float @dx.op.dot3.f32(i32 55, float %3178, float %3179, float %3180, float %2110, float %2111, float %2112)  ; Dot3(ax,ay,az,bx,by,bz)
  %3184 = fmul fast float %3183, %3183
  %3185 = fmul fast float %3184, 0x3FEE471020000000
  %3186 = fadd fast float %3185, 0xBFD42F6020000000
  %3187 = fmul fast float %3143, 0x3FD20DD760000000
  %3188 = fmul fast float %3186, %3182
  %3189 = fmul fast float %3181, 0x3FDF454380000000
  %3190 = fmul fast float %3189, %3183
  %3191 = fadd fast float %3190, %3187
  %3192 = fadd fast float %3191, %3188
  %3193 = call float @dx.op.dot3.f32(i32 55, float %3178, float %3179, float %3180, float %2127, float %2128, float %2129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3194 = fmul fast float %3193, 0x3FDF454380000000
  %3195 = fmul fast float %3193, %3193
  %3196 = fmul fast float %3195, 0x3FEE471020000000
  %3197 = fadd fast float %3196, 0xBFD42F6020000000
  %3198 = call float @dx.op.dot3.f32(i32 55, float %3143, float %3181, float %3182, float 0x3FD20DD760000000, float %3194, float %3197)  ; Dot3(ax,ay,az,bx,by,bz)
  %3199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3112)  ; FMax(a,b)
  %3200 = call float @dx.op.dot3.f32(i32 55, float %3127, float %3130, float %3133, float %3127, float %3130, float %3133)  ; Dot3(ax,ay,az,bx,by,bz)
  %3201 = fcmp fast oeq float %3200, 0.000000e+00
  %3202 = fcmp fast oeq float %3199, 0.000000e+00
  %3203 = or i1 %3202, %3201
  br i1 %3203, label %3233, label %3204

; <label>:3204                                    ; preds = %3177
  %3205 = fsub fast float -0.000000e+00, %3133
  %3206 = fsub fast float -0.000000e+00, %3127
  %3207 = call float @dx.op.unary.f32(i32 24, float %3200)  ; Sqrt(value)
  %3208 = fdiv fast float %3207, %3199
  %3209 = fcmp fast ogt float %3208, 0x3FFB6F8900000000
  %3210 = select i1 %3209, float 0x3FFB6F8900000000, float %3208
  %3211 = fmul fast float %3210, 0x3FE8A23460000000
  %3212 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3213 = call float @dx.op.binary.f32(i32 35, float %3210, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3214 = fmul fast float %3212, %3199
  %3215 = fmul fast float %3213, 0x3FF279A740000000
  %3216 = fadd fast float %3215, -1.000000e+00
  %3217 = call float @dx.op.dot3.f32(i32 55, float %3205, float %3206, float %3130, float %3205, float %3206, float %3130)  ; Dot3(ax,ay,az,bx,by,bz)
  %3218 = call float @dx.op.unary.f32(i32 25, float %3217)  ; Rsqrt(value)
  %3219 = fmul fast float %3218, %3205
  %3220 = fmul fast float %3218, %3206
  %3221 = fmul fast float %3218, %3130
  %3222 = fmul fast float %3216, %3216
  %3223 = fsub fast float 1.000000e+00, %3222
  %3224 = fmul fast float %3213, 0x40005F8BE0000000
  %3225 = fsub fast float 0x400C5BF8A0000000, %3224
  %3226 = fdiv fast float %3214, %3225
  %3227 = fmul fast float %3226, 0x3FEE31C3C0000000
  %3228 = fmul fast float %3227, %3223
  %3229 = fmul fast float %3213, 0x3FDACB7480000000
  %3230 = fadd fast float %3229, 0xBFD7347680000000
  %3231 = fmul fast float %3230, %3226
  %3232 = fmul fast float %3231, %3223
  br label %3233

; <label>:3233                                    ; preds = %3204, %3177
  %3234 = phi float [ %3219, %3204 ], [ 0.000000e+00, %3177 ]
  %3235 = phi float [ %3220, %3204 ], [ 0.000000e+00, %3177 ]
  %3236 = phi float [ %3221, %3204 ], [ 0.000000e+00, %3177 ]
  %3237 = phi float [ %3228, %3204 ], [ 0.000000e+00, %3177 ]
  %3238 = phi float [ %3232, %3204 ], [ 0.000000e+00, %3177 ]
  %3239 = call float @dx.op.dot3.f32(i32 55, float %3234, float %3235, float %3236, float %2110, float %2111, float %2112)  ; Dot3(ax,ay,az,bx,by,bz)
  %3240 = fmul fast float %3239, %3239
  %3241 = fmul fast float %3240, 0x3FEE471020000000
  %3242 = fadd fast float %3241, 0xBFD42F6020000000
  %3243 = fmul fast float %3199, 0x3FD20DD760000000
  %3244 = fmul fast float %3242, %3238
  %3245 = fmul fast float %3237, 0x3FDF454380000000
  %3246 = fmul fast float %3245, %3239
  %3247 = fadd fast float %3246, %3243
  %3248 = fadd fast float %3247, %3244
  %3249 = call float @dx.op.dot3.f32(i32 55, float %3234, float %3235, float %3236, float %2127, float %2128, float %2129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3250 = fmul fast float %3249, 0x3FDF454380000000
  %3251 = fmul fast float %3249, %3249
  %3252 = fmul fast float %3251, 0x3FEE471020000000
  %3253 = fadd fast float %3252, 0xBFD42F6020000000
  %3254 = call float @dx.op.dot3.f32(i32 55, float %3199, float %3237, float %3238, float 0x3FD20DD760000000, float %3250, float %3253)  ; Dot3(ax,ay,az,bx,by,bz)
  %3255 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3113)  ; FMax(a,b)
  %3256 = call float @dx.op.dot3.f32(i32 55, float %3136, float %3139, float %3142, float %3136, float %3139, float %3142)  ; Dot3(ax,ay,az,bx,by,bz)
  %3257 = fcmp fast oeq float %3256, 0.000000e+00
  %3258 = fcmp fast oeq float %3255, 0.000000e+00
  %3259 = or i1 %3258, %3257
  br i1 %3259, label %3289, label %3260

; <label>:3260                                    ; preds = %3233
  %3261 = fsub fast float -0.000000e+00, %3142
  %3262 = fsub fast float -0.000000e+00, %3136
  %3263 = call float @dx.op.unary.f32(i32 24, float %3256)  ; Sqrt(value)
  %3264 = fdiv fast float %3263, %3255
  %3265 = fcmp fast ogt float %3264, 0x3FFB6F8900000000
  %3266 = select i1 %3265, float 0x3FFB6F8900000000, float %3264
  %3267 = fmul fast float %3266, 0x3FE8A23460000000
  %3268 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3269 = call float @dx.op.binary.f32(i32 35, float %3266, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3270 = fmul fast float %3268, %3255
  %3271 = fmul fast float %3269, 0x3FF279A740000000
  %3272 = fadd fast float %3271, -1.000000e+00
  %3273 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3262, float %3139, float %3261, float %3262, float %3139)  ; Dot3(ax,ay,az,bx,by,bz)
  %3274 = call float @dx.op.unary.f32(i32 25, float %3273)  ; Rsqrt(value)
  %3275 = fmul fast float %3274, %3261
  %3276 = fmul fast float %3274, %3262
  %3277 = fmul fast float %3274, %3139
  %3278 = fmul fast float %3272, %3272
  %3279 = fsub fast float 1.000000e+00, %3278
  %3280 = fmul fast float %3269, 0x40005F8BE0000000
  %3281 = fsub fast float 0x400C5BF8A0000000, %3280
  %3282 = fdiv fast float %3270, %3281
  %3283 = fmul fast float %3282, 0x3FEE31C3C0000000
  %3284 = fmul fast float %3283, %3279
  %3285 = fmul fast float %3269, 0x3FDACB7480000000
  %3286 = fadd fast float %3285, 0xBFD7347680000000
  %3287 = fmul fast float %3286, %3282
  %3288 = fmul fast float %3287, %3279
  br label %3289

; <label>:3289                                    ; preds = %3260, %3233
  %3290 = phi float [ %3275, %3260 ], [ 0.000000e+00, %3233 ]
  %3291 = phi float [ %3276, %3260 ], [ 0.000000e+00, %3233 ]
  %3292 = phi float [ %3277, %3260 ], [ 0.000000e+00, %3233 ]
  %3293 = phi float [ %3284, %3260 ], [ 0.000000e+00, %3233 ]
  %3294 = phi float [ %3288, %3260 ], [ 0.000000e+00, %3233 ]
  %3295 = call float @dx.op.dot3.f32(i32 55, float %3290, float %3291, float %3292, float %2110, float %2111, float %2112)  ; Dot3(ax,ay,az,bx,by,bz)
  %3296 = fmul fast float %3295, %3295
  %3297 = fmul fast float %3296, 0x3FEE471020000000
  %3298 = fadd fast float %3297, 0xBFD42F6020000000
  %3299 = fmul fast float %3255, 0x3FD20DD760000000
  %3300 = fmul fast float %3298, %3294
  %3301 = fmul fast float %3293, 0x3FDF454380000000
  %3302 = fmul fast float %3301, %3295
  %3303 = fadd fast float %3302, %3299
  %3304 = fadd fast float %3303, %3300
  %3305 = call float @dx.op.dot3.f32(i32 55, float %3290, float %3291, float %3292, float %2127, float %2128, float %2129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3306 = fmul fast float %3305, 0x3FDF454380000000
  %3307 = fmul fast float %3305, %3305
  %3308 = fmul fast float %3307, 0x3FEE471020000000
  %3309 = fadd fast float %3308, 0xBFD42F6020000000
  %3310 = call float @dx.op.dot3.f32(i32 55, float %3255, float %3293, float %3294, float 0x3FD20DD760000000, float %3306, float %3309)  ; Dot3(ax,ay,az,bx,by,bz)
  %3311 = call float @dx.op.binary.f32(i32 35, float %3192, float 0.000000e+00)  ; FMax(a,b)
  %3312 = call float @dx.op.binary.f32(i32 35, float %3248, float 0.000000e+00)  ; FMax(a,b)
  %3313 = call float @dx.op.binary.f32(i32 35, float %3304, float 0.000000e+00)  ; FMax(a,b)
  %3314 = call float @dx.op.binary.f32(i32 35, float %3198, float 0.000000e+00)  ; FMax(a,b)
  %3315 = call float @dx.op.binary.f32(i32 35, float %3254, float 0.000000e+00)  ; FMax(a,b)
  %3316 = call float @dx.op.binary.f32(i32 35, float %3310, float 0.000000e+00)  ; FMax(a,b)
  %3317 = fsub fast float %2511, %3311
  %3318 = fsub fast float %2512, %3312
  %3319 = fsub fast float %2513, %3313
  %3320 = fmul fast float %3317, %2190
  %3321 = fmul fast float %3318, %2190
  %3322 = fmul fast float %3319, %2190
  %3323 = fadd fast float %3320, %3311
  %3324 = fadd fast float %3321, %3312
  %3325 = fadd fast float %3322, %3313
  %3326 = fsub fast float %2508, %3314
  %3327 = fsub fast float %2509, %3315
  %3328 = fsub fast float %2510, %3316
  %3329 = fmul fast float %3326, %2190
  %3330 = fmul fast float %3327, %2190
  %3331 = fmul fast float %3328, %2190
  %3332 = fadd fast float %3329, %3314
  %3333 = fadd fast float %3330, %3315
  %3334 = fadd fast float %3331, %3316
  %3335 = fsub fast float %2292, %3115
  %3336 = fmul fast float %3335, %2190
  %3337 = fadd fast float %3336, %3115
  br label %3338

; <label>:3338                                    ; preds = %3289, %2507
  %3339 = phi float [ %3337, %3289 ], [ %2292, %2507 ]
  %3340 = phi float [ %3332, %3289 ], [ %2508, %2507 ]
  %3341 = phi float [ %3333, %3289 ], [ %2509, %2507 ]
  %3342 = phi float [ %3334, %3289 ], [ %2510, %2507 ]
  %3343 = phi float [ %3323, %3289 ], [ %2511, %2507 ]
  %3344 = phi float [ %3324, %3289 ], [ %2512, %2507 ]
  %3345 = phi float [ %3325, %3289 ], [ %2513, %2507 ]
  %3346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3347 = extractvalue %dx.types.CBufRet.f32 %3346, 0
  %3348 = call float @dx.op.binary.f32(i32 36, float %2107, float %3347)  ; FMin(a,b)
  %3349 = fmul fast float %3348, %2131
  %3350 = fsub fast float 1.000000e+00, %3349
  %3351 = bitcast float %3350 to i32
  %3352 = sub nsw i32 2129859010, %3351
  %3353 = bitcast i32 %3352 to float
  %3354 = call float @dx.op.binary.f32(i32 36, float %2108, float %3347)  ; FMin(a,b)
  %3355 = fmul fast float %3354, %2131
  %3356 = fsub fast float 1.000000e+00, %3355
  %3357 = bitcast float %3356 to i32
  %3358 = sub nsw i32 2129859010, %3357
  %3359 = bitcast i32 %3358 to float
  %3360 = call float @dx.op.binary.f32(i32 36, float %2109, float %3347)  ; FMin(a,b)
  %3361 = fmul fast float %3360, %2131
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = bitcast float %3362 to i32
  %3364 = sub nsw i32 2129859010, %3363
  %3365 = bitcast i32 %3364 to float
  %3366 = fmul fast float %3343, %2130
  %3367 = fmul fast float %3366, %3353
  %3368 = fmul fast float %3344, %2130
  %3369 = fmul fast float %3368, %3359
  %3370 = fmul fast float %3345, %2130
  %3371 = fmul fast float %3370, %3365
  %3372 = call float @dx.op.binary.f32(i32 36, float %2113, float %3347)  ; FMin(a,b)
  %3373 = fmul fast float %3372, %2131
  %3374 = fsub fast float 1.000000e+00, %3373
  %3375 = bitcast float %3374 to i32
  %3376 = sub nsw i32 2129859010, %3375
  %3377 = bitcast i32 %3376 to float
  %3378 = call float @dx.op.binary.f32(i32 36, float %2114, float %3347)  ; FMin(a,b)
  %3379 = fmul fast float %3378, %2131
  %3380 = fsub fast float 1.000000e+00, %3379
  %3381 = bitcast float %3380 to i32
  %3382 = sub nsw i32 2129859010, %3381
  %3383 = bitcast i32 %3382 to float
  %3384 = call float @dx.op.binary.f32(i32 36, float %2119, float %3347)  ; FMin(a,b)
  %3385 = fmul fast float %3384, %2131
  %3386 = fsub fast float 1.000000e+00, %3385
  %3387 = bitcast float %3386 to i32
  %3388 = sub nsw i32 2129859010, %3387
  %3389 = bitcast i32 %3388 to float
  %3390 = fmul fast float %3340, %2130
  %3391 = fmul fast float %3390, %3377
  %3392 = fmul fast float %3341, %2130
  %3393 = fmul fast float %3392, %3383
  %3394 = fmul fast float %3342, %2130
  %3395 = fmul fast float %3394, %3389
  %3396 = call float @dx.op.dot3.f32(i32 55, float %3367, float %3369, float %3371, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3397 = select i1 %237, float 0.000000e+00, float %3367
  %3398 = select i1 %237, float %3396, float %3369
  %3399 = select i1 %237, float 0.000000e+00, float %3371
  %3400 = call float @dx.op.dot3.f32(i32 55, float %3391, float %3393, float %3395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3401 = select i1 %237, float 0.000000e+00, float %3391
  %3402 = select i1 %237, float %3400, float %3393
  %3403 = select i1 %237, float 0.000000e+00, float %3395
  %3404 = fmul fast float %2121, 9.843750e-01
  %3405 = fmul fast float %2116, 9.843750e-01
  %3406 = fadd fast float %3404, 7.812500e-03
  %3407 = fadd fast float %3405, 7.812500e-03
  %3408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3406, float %3407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3409 = extractvalue %dx.types.ResRet.f32 %3408, 2
  %3410 = extractvalue %dx.types.ResRet.f32 %3408, 3
  %3411 = fmul fast float %3409, %2113
  %3412 = fmul fast float %3409, %2114
  %3413 = fmul fast float %3409, %2119
  %3414 = fadd fast float %3411, %3410
  %3415 = fadd fast float %3412, %3410
  %3416 = fadd fast float %3413, %3410
  %3417 = fcmp fast ogt float %1484, 0.000000e+00
  br i1 %3417, label %3418, label %3444

; <label>:3418                                    ; preds = %3338
  %3419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1484, float %2121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3422 = extractvalue %dx.types.ResRet.f32 %3419, 2
  %3423 = fadd fast float %3420, -5.000000e-01
  %3424 = fadd fast float %3421, -5.000000e-01
  %3425 = fadd fast float %3422, -5.000000e-01
  %3426 = fsub fast float 1.000000e+00, %2113
  %3427 = fsub fast float 1.000000e+00, %2114
  %3428 = fsub fast float 1.000000e+00, %2119
  %3429 = fmul fast float %2113, 4.000000e+00
  %3430 = fmul fast float %3429, %3426
  %3431 = fmul fast float %3430, %3423
  %3432 = fmul fast float %2114, 4.000000e+00
  %3433 = fmul fast float %3432, %3427
  %3434 = fmul fast float %3433, %3424
  %3435 = fmul fast float %2119, 4.000000e+00
  %3436 = fmul fast float %3435, %3428
  %3437 = fmul fast float %3436, %3425
  %3438 = fadd fast float %3431, %3414
  %3439 = fadd fast float %3434, %3415
  %3440 = fadd fast float %3437, %3416
  %3441 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  %3442 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3443 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  br label %3444

; <label>:3444                                    ; preds = %3418, %3338
  %3445 = phi float [ %3441, %3418 ], [ %3414, %3338 ]
  %3446 = phi float [ %3442, %3418 ], [ %3415, %3338 ]
  %3447 = phi float [ %3443, %3418 ], [ %3416, %3338 ]
  %3448 = call float @dx.op.binary.f32(i32 35, float %3446, float %3447)  ; FMax(a,b)
  %3449 = call float @dx.op.binary.f32(i32 35, float %3445, float %3448)  ; FMax(a,b)
  %3450 = fsub fast float 1.000000e+00, %3449
  %3451 = fmul fast float %3449, %2116
  %3452 = fadd fast float %3451, %2116
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 2
  %3455 = extractvalue %dx.types.CBufRet.f32 %3453, 3
  %3456 = fmul fast float %3452, %3454
  %3457 = fadd fast float %3456, %3455
  %3458 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  %3459 = fsub fast float 1.000000e+00, %2142
  %3460 = fadd fast float %3459, %3458
  %3461 = call float @dx.op.unary.f32(i32 7, float %3460)  ; Saturate(value)
  %3462 = fcmp fast olt float %3461, 1.000000e+00
  br i1 %3462, label %3463, label %3939

; <label>:3463                                    ; preds = %3444
  %3464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3465 = extractvalue %dx.types.CBufRet.f32 %3464, 2
  %3466 = extractvalue %dx.types.CBufRet.f32 %3464, 3
  %3467 = fmul fast float %3465, %99
  %3468 = fmul fast float %3466, %100
  %3469 = fptoui float %3467 to i32
  %3470 = fptoui float %3468 to i32
  %3471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3472 = extractvalue %dx.types.CBufRet.f32 %3471, 0
  %3473 = extractvalue %dx.types.CBufRet.f32 %3471, 2
  %3474 = extractvalue %dx.types.CBufRet.f32 %3471, 3
  %3475 = fadd fast float %87, -4.000000e+00
  %3476 = call float @dx.op.binary.f32(i32 35, float %3475, float 0.000000e+00)  ; FMax(a,b)
  %3477 = fadd fast float %3476, %3472
  %3478 = fmul fast float %3477, %3473
  %3479 = call float @dx.op.unary.f32(i32 23, float %3478)  ; Log(value)
  %3480 = fmul fast float %3479, %3474
  %3481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3482 = extractvalue %dx.types.CBufRet.f32 %3481, 2
  %3483 = fmul fast float %3480, %3482
  %3484 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.i32 %3485, 1
  %3487 = add i32 %3486, -1
  %3488 = uitofp i32 %3486 to float
  %3489 = fmul fast float %3488, %3484
  %3490 = fptoui float %3489 to i32
  %3491 = call i32 @dx.op.binary.i32(i32 40, i32 %3490, i32 %3487)  ; UMin(a,b)
  %3492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.i32 %3492, 2
  %3494 = extractvalue %dx.types.CBufRet.i32 %3492, 3
  %3495 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3470, i32 %3493, i32 %3469)  ; UMad(a,b,c)
  %3496 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3491, i32 %3494, i32 %3495)  ; UMad(a,b,c)
  %3497 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %3498 = fptoui float %3497 to i32
  %3499 = lshr i32 %3498, 5
  %3500 = call i32 @dx.op.binary.i32(i32 40, i32 %3499, i32 8191)  ; UMin(a,b)
  %3501 = fsub fast float %1906, %148
  %3502 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  %3503 = fcmp fast ogt float %3502, 0.000000e+00
  %3504 = fcmp fast ogt float %2129, 0.000000e+00
  %3505 = and i1 %3504, %3503
  br i1 %3505, label %3506, label %3535

; <label>:3506                                    ; preds = %3463
  %3507 = call float @dx.op.dot3.f32(i32 55, float %2127, float %2128, float %2129, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3508 = call float @dx.op.binary.f32(i32 35, float %3507, float -1.000000e+00)  ; FMax(a,b)
  %3509 = call float @dx.op.binary.f32(i32 36, float %3508, float 1.000000e+00)  ; FMin(a,b)
  %3510 = fmul fast float %3509, %3509
  %3511 = fsub fast float 1.000000e+00, %3510
  %3512 = fmul fast float %3511, 0x3FFC6E2300000000
  %3513 = fsub fast float 1.000000e+00, %3512
  %3514 = fcmp fast ogt float %3513, 0.000000e+00
  %3515 = call float @dx.op.unary.f32(i32 24, float %3513)  ; Sqrt(value)
  %3516 = fsub fast float 1.000000e+00, %3515
  %3517 = call float @dx.op.unary.f32(i32 23, float %3516)  ; Log(value)
  %3518 = fmul fast float %3517, 5.000000e+00
  %3519 = call float @dx.op.unary.f32(i32 21, float %3518)  ; Exp(value)
  %3520 = fmul fast float %3519, 0x3FEF591A60000000
  %3521 = fadd fast float %3520, 0x3F94DCB540000000
  %3522 = select i1 %3514, float %3521, float 1.000000e+00
  %3523 = fcmp fast oge float %3522, 1.000000e+00
  %3524 = fmul fast float %3507, 2.000000e+00
  %3525 = fadd fast float %3524, %2129
  %3526 = select i1 %3523, float %3525, float %2129
  %3527 = fsub fast float %3526, %2129
  %3528 = fmul fast float %3527, %3502
  %3529 = fadd fast float %3528, %2129
  %3530 = call float @dx.op.dot3.f32(i32 55, float %2127, float %2128, float %3529, float %2127, float %2128, float %3529)  ; Dot3(ax,ay,az,bx,by,bz)
  %3531 = call float @dx.op.unary.f32(i32 25, float %3530)  ; Rsqrt(value)
  %3532 = fmul fast float %3531, %2127
  %3533 = fmul fast float %3531, %2128
  %3534 = fmul fast float %3529, %3531
  br label %3535

; <label>:3535                                    ; preds = %3506, %3463
  %3536 = phi float [ %3532, %3506 ], [ %2127, %3463 ]
  %3537 = phi float [ %3533, %3506 ], [ %2128, %3463 ]
  %3538 = phi float [ %3534, %3506 ], [ %2129, %3463 ]
  %3539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3540 = extractvalue %dx.types.CBufRet.i32 %3539, 2
  %3541 = add nsw i32 %3540, -1
  %3542 = call i32 @dx.op.binary.i32(i32 37, i32 %3541, i32 0)  ; IMax(a,b)
  %3543 = shl i32 %3500, 2
  %3544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.i32 %3544, 0
  %3546 = lshr i32 %3545, 16
  %3547 = and i32 %3545, 65535
  %3548 = lshr i32 %3545, 21
  %3549 = lshr i32 %3547, 5
  %3550 = call i32 @dx.op.binary.i32(i32 40, i32 %3549, i32 %3542)  ; UMin(a,b)
  %3551 = icmp ugt i32 %3548, %3550
  br i1 %3551, label %3915, label %3552

; <label>:3552                                    ; preds = %3535
  br label %3553

; <label>:3553                                    ; preds = %3907, %3552
  %3554 = phi float [ %3908, %3907 ], [ 0.000000e+00, %3552 ]
  %3555 = phi float [ %3909, %3907 ], [ 0.000000e+00, %3552 ]
  %3556 = phi float [ %3910, %3907 ], [ 0.000000e+00, %3552 ]
  %3557 = phi float [ %3911, %3907 ], [ 1.000000e+00, %3552 ]
  %3558 = phi i32 [ %3912, %3907 ], [ %3548, %3552 ]
  %3559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3560 = extractvalue %dx.types.CBufRet.i32 %3559, 2
  %3561 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3496, i32 %3560, i32 %3558)  ; UMad(a,b,c)
  %3562 = shl i32 %3561, 2
  %3563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3562, i32 undef)  ; BufferLoad(srv,index,wot)
  %3564 = extractvalue %dx.types.ResRet.i32 %3563, 0
  %3565 = shl i32 %3558, 5
  %3566 = sub nsw i32 %3546, %3565
  %3567 = call i32 @dx.op.binary.i32(i32 37, i32 %3566, i32 0)  ; IMax(a,b)
  %3568 = call i32 @dx.op.binary.i32(i32 38, i32 %3567, i32 31)  ; IMin(a,b)
  %3569 = sub nsw i32 1, %3546
  %3570 = add nsw i32 %3569, %3547
  %3571 = call i32 @dx.op.binary.i32(i32 37, i32 %3570, i32 0)  ; IMax(a,b)
  %3572 = call i32 @dx.op.binary.i32(i32 38, i32 %3571, i32 32)  ; IMin(a,b)
  %3573 = and i32 %3572, 31
  %3574 = shl i32 -1, %3573
  %3575 = xor i32 %3574, -1
  %3576 = and i32 %3568, 31
  %3577 = shl i32 %3575, %3576
  %3578 = icmp eq i32 %3572, 32
  %3579 = select i1 %3578, i32 -1, i32 %3577
  %3580 = and i32 %3579, %3564
  %3581 = icmp eq i32 %3580, 0
  br i1 %3581, label %3907, label %3582

; <label>:3582                                    ; preds = %3553
  br label %3583

; <label>:3583                                    ; preds = %3690, %3582
  %3584 = phi float [ %3691, %3690 ], [ %3554, %3582 ]
  %3585 = phi float [ %3692, %3690 ], [ %3555, %3582 ]
  %3586 = phi float [ %3693, %3690 ], [ %3556, %3582 ]
  %3587 = phi float [ %3694, %3690 ], [ %3557, %3582 ]
  %3588 = phi i32 [ %3593, %3690 ], [ %3580, %3582 ]
  %3589 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3588)  ; FirstbitLo(value)
  %3590 = add i32 %3589, %3565
  %3591 = and i32 %3589, 31
  %3592 = shl i32 1, %3591
  %3593 = xor i32 %3592, %3588
  %3594 = mul i32 %3590, 72
  %3595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3597 = extractvalue %dx.types.ResRet.f32 %3595, 1
  %3598 = extractvalue %dx.types.ResRet.f32 %3595, 2
  %3599 = add i32 %3594, 12
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = add i32 %3594, 16
  %3603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3606 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3607 = add i32 %3594, 28
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = add i32 %3594, 32
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.ResRet.f32 %3611, 2
  %3615 = extractvalue %dx.types.ResRet.f32 %3611, 3
  %3616 = add i32 %3594, 48
  %3617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  %3619 = extractvalue %dx.types.ResRet.f32 %3617, 1
  %3620 = add i32 %3594, 56
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = add i32 %3594, 64
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = mul i32 %3590, 60
  %3629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.ResRet.f32 %3629, 1
  %3632 = extractvalue %dx.types.ResRet.f32 %3629, 2
  %3633 = add i32 %3628, 12
  %3634 = add i32 %3628, 48
  %3635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.ResRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.ResRet.f32 %3635, 2
  %3639 = and i32 %3601, 32767
  %3640 = bitcast float %3596 to i32
  %3641 = icmp eq i32 %3640, -1
  %3642 = bitcast float %3597 to i32
  %3643 = and i32 %3601, 32768
  %3644 = icmp ne i32 %3643, 0
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.CBufRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.CBufRet.f32 %3645, 2
  %3649 = fsub fast float %3630, %3646
  %3650 = fsub fast float %3631, %3647
  %3651 = fsub fast float %3632, %3648
  %3652 = fsub fast float %146, %3649
  %3653 = fsub fast float %147, %3650
  %3654 = fsub fast float %148, %3651
  %3655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.ResRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.ResRet.f32 %3655, 2
  %3659 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3653, float %3654, float %3656, float %3657, float %3658)  ; Dot3(ax,ay,az,bx,by,bz)
  %3660 = add i32 %3628, 24
  %3661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.ResRet.f32 %3661, 1
  %3664 = extractvalue %dx.types.ResRet.f32 %3661, 2
  %3665 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3653, float %3654, float %3662, float %3663, float %3664)  ; Dot3(ax,ay,az,bx,by,bz)
  %3666 = add i32 %3628, 36
  %3667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3669 = extractvalue %dx.types.ResRet.f32 %3667, 1
  %3670 = extractvalue %dx.types.ResRet.f32 %3667, 2
  %3671 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3653, float %3654, float %3668, float %3669, float %3670)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = call float @dx.op.unary.f32(i32 6, float %3659)  ; FAbs(value)
  %3673 = call float @dx.op.unary.f32(i32 6, float %3665)  ; FAbs(value)
  %3674 = call float @dx.op.unary.f32(i32 6, float %3671)  ; FAbs(value)
  %3675 = fsub fast float %3636, %3672
  %3676 = fsub fast float %3637, %3673
  %3677 = fsub fast float %3638, %3674
  %3678 = fmul fast float %3675, %3604
  %3679 = fmul fast float %3676, %3605
  %3680 = fmul fast float %3677, %3606
  %3681 = call float @dx.op.binary.f32(i32 36, float %3679, float %3680)  ; FMin(a,b)
  %3682 = call float @dx.op.binary.f32(i32 36, float %3678, float %3681)  ; FMin(a,b)
  %3683 = call float @dx.op.unary.f32(i32 7, float %3682)  ; Saturate(value)
  %3684 = call float @dx.op.binary.f32(i32 36, float %3587, float %3683)  ; FMin(a,b)
  %3685 = uitofp i1 %3644 to float
  %3686 = fadd fast float %3502, 1.000000e+00
  %3687 = fsub fast float %3686, %3685
  %3688 = fmul fast float %3684, %3687
  %3689 = fcmp fast ogt float %3688, 0.000000e+00
  br i1 %3689, label %3696, label %3690

; <label>:3690                                    ; preds = %3838, %3583
  %3691 = phi float [ %3902, %3838 ], [ %3584, %3583 ]
  %3692 = phi float [ %3903, %3838 ], [ %3585, %3583 ]
  %3693 = phi float [ %3904, %3838 ], [ %3586, %3583 ]
  %3694 = phi float [ %3905, %3838 ], [ %3587, %3583 ]
  %3695 = icmp eq i32 %3588, %3592
  br i1 %3695, label %3906, label %3583

; <label>:3696                                    ; preds = %3583
  br i1 %3641, label %3754, label %3697

; <label>:3697                                    ; preds = %3696
  %3698 = fsub fast float -0.000000e+00, %3656
  %3699 = fsub fast float -0.000000e+00, %3657
  %3700 = fsub fast float -0.000000e+00, %3658
  %3701 = call float @dx.op.dot3.f32(i32 55, float %3536, float %3537, float %3538, float %3698, float %3699, float %3700)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = fsub fast float -0.000000e+00, %3701
  %3703 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3653, float %3654, float %3698, float %3699, float %3700)  ; Dot3(ax,ay,az,bx,by,bz)
  %3704 = fadd fast float %3703, %3619
  %3705 = fadd fast float %3618, %3703
  %3706 = fsub fast float -0.000000e+00, %3705
  %3707 = fcmp ogt float %3701, -0.000000e+00
  %3708 = select i1 %3707, float %3706, float %3704
  %3709 = call float @dx.op.unary.f32(i32 6, float %3702)  ; FAbs(value)
  %3710 = fdiv fast float 1.000000e+00, %3709
  %3711 = fmul fast float %3708, %3710
  %3712 = call float @dx.op.binary.f32(i32 35, float %3711, float 0.000000e+00)  ; FMax(a,b)
  %3713 = fsub fast float -0.000000e+00, %3662
  %3714 = fsub fast float -0.000000e+00, %3663
  %3715 = fsub fast float -0.000000e+00, %3664
  %3716 = call float @dx.op.dot3.f32(i32 55, float %3536, float %3537, float %3538, float %3713, float %3714, float %3715)  ; Dot3(ax,ay,az,bx,by,bz)
  %3717 = fsub fast float -0.000000e+00, %3716
  %3718 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3653, float %3654, float %3713, float %3714, float %3715)  ; Dot3(ax,ay,az,bx,by,bz)
  %3719 = fadd fast float %3718, %3623
  %3720 = fadd fast float %3622, %3718
  %3721 = fsub fast float -0.000000e+00, %3720
  %3722 = fcmp ogt float %3716, -0.000000e+00
  %3723 = select i1 %3722, float %3721, float %3719
  %3724 = call float @dx.op.unary.f32(i32 6, float %3717)  ; FAbs(value)
  %3725 = fdiv fast float 1.000000e+00, %3724
  %3726 = fmul fast float %3723, %3725
  %3727 = call float @dx.op.binary.f32(i32 35, float %3726, float 0.000000e+00)  ; FMax(a,b)
  %3728 = fsub fast float -0.000000e+00, %3668
  %3729 = fsub fast float -0.000000e+00, %3669
  %3730 = fsub fast float -0.000000e+00, %3670
  %3731 = call float @dx.op.dot3.f32(i32 55, float %3536, float %3537, float %3538, float %3728, float %3729, float %3730)  ; Dot3(ax,ay,az,bx,by,bz)
  %3732 = fsub fast float -0.000000e+00, %3731
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3653, float %3654, float %3728, float %3729, float %3730)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = fadd fast float %3733, %3627
  %3735 = fadd fast float %3626, %3733
  %3736 = fsub fast float -0.000000e+00, %3735
  %3737 = fcmp ogt float %3731, -0.000000e+00
  %3738 = select i1 %3737, float %3736, float %3734
  %3739 = call float @dx.op.unary.f32(i32 6, float %3732)  ; FAbs(value)
  %3740 = fdiv fast float 1.000000e+00, %3739
  %3741 = fmul fast float %3738, %3740
  %3742 = call float @dx.op.binary.f32(i32 35, float %3741, float 0.000000e+00)  ; FMax(a,b)
  %3743 = call float @dx.op.binary.f32(i32 36, float %3727, float %3742)  ; FMin(a,b)
  %3744 = call float @dx.op.binary.f32(i32 36, float %3712, float %3743)  ; FMin(a,b)
  %3745 = fmul fast float %3744, %3536
  %3746 = fmul fast float %3744, %3537
  %3747 = fmul fast float %3744, %3538
  %3748 = fadd fast float %3745, %146
  %3749 = fadd fast float %3746, %147
  %3750 = fadd fast float %3747, %148
  %3751 = fsub fast float %3748, %3596
  %3752 = fsub fast float %3749, %3597
  %3753 = fsub fast float %3750, %3598
  br label %3761

; <label>:3754                                    ; preds = %3696
  %3755 = fmul fast float %3536, 8.096000e+03
  %3756 = fmul fast float %3537, 8.096000e+03
  %3757 = fmul fast float %3538, 8.096000e+03
  %3758 = fadd fast float %3755, %146
  %3759 = fadd fast float %3756, %147
  %3760 = fadd fast float %3757, %148
  br label %3761

; <label>:3761                                    ; preds = %3754, %3697
  %3762 = phi float [ %3536, %3754 ], [ %3751, %3697 ]
  %3763 = phi float [ %3537, %3754 ], [ %3752, %3697 ]
  %3764 = phi float [ %3538, %3754 ], [ %3753, %3697 ]
  %3765 = phi float [ %3758, %3754 ], [ %3748, %3697 ]
  %3766 = phi float [ %3759, %3754 ], [ %3749, %3697 ]
  %3767 = phi float [ %3760, %3754 ], [ %3750, %3697 ]
  %3768 = fcmp fast olt float %3615, 1.000000e+00
  br i1 %3768, label %3769, label %3800, !dx.controlflow.hints !111

; <label>:3769                                    ; preds = %3761
  %3770 = fmul fast float %3764, %3613
  %3771 = fmul fast float %3763, %3614
  %3772 = fsub fast float %3770, %3771
  %3773 = fmul fast float %3762, %3614
  %3774 = fmul fast float %3764, %3612
  %3775 = fsub fast float %3773, %3774
  %3776 = fmul fast float %3763, %3612
  %3777 = fmul fast float %3762, %3613
  %3778 = fsub fast float %3776, %3777
  %3779 = fmul fast float %3772, 2.000000e+00
  %3780 = fmul fast float %3775, 2.000000e+00
  %3781 = fmul fast float %3778, 2.000000e+00
  %3782 = fmul fast float %3779, %3615
  %3783 = fmul fast float %3780, %3615
  %3784 = fmul fast float %3781, %3615
  %3785 = fmul fast float %3781, %3613
  %3786 = fmul fast float %3780, %3614
  %3787 = fmul fast float %3779, %3614
  %3788 = fmul fast float %3781, %3612
  %3789 = fmul fast float %3780, %3612
  %3790 = fmul fast float %3779, %3613
  %3791 = fadd fast float %3785, %3762
  %3792 = fadd fast float %3791, %3782
  %3793 = fsub fast float %3792, %3786
  %3794 = fsub fast float %3763, %3788
  %3795 = fadd fast float %3794, %3783
  %3796 = fadd fast float %3795, %3787
  %3797 = fadd fast float %3784, %3764
  %3798 = fsub fast float %3797, %3790
  %3799 = fadd fast float %3798, %3789
  br label %3800

; <label>:3800                                    ; preds = %3769, %3761
  %3801 = phi float [ %3793, %3769 ], [ %3762, %3761 ]
  %3802 = phi float [ %3796, %3769 ], [ %3763, %3761 ]
  %3803 = phi float [ %3799, %3769 ], [ %3764, %3761 ]
  br i1 %3641, label %3835, label %3804

; <label>:3804                                    ; preds = %3800
  %3805 = fmul fast float %2116, 0x400187C840000000
  %3806 = fadd fast float %3805, 0xC00EFC2120000000
  %3807 = fmul fast float %3806, %2116
  %3808 = fadd fast float %3807, 0x3FE5D16340000000
  %3809 = fmul fast float %3808, %2116
  %3810 = fadd fast float %3809, 1.000000e+00
  %3811 = call float @dx.op.unary.f32(i32 7, float %3810)  ; Saturate(value)
  %3812 = fsub fast float %3765, %146
  %3813 = fsub fast float %3766, %147
  %3814 = fsub fast float %3767, %148
  %3815 = fsub fast float %3765, %3596
  %3816 = fsub fast float %3766, %3597
  %3817 = fsub fast float %3767, %3598
  %3818 = call float @dx.op.dot3.f32(i32 55, float %3812, float %3813, float %3814, float %3812, float %3813, float %3814)  ; Dot3(ax,ay,az,bx,by,bz)
  %3819 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3817, float %3815, float %3816, float %3817)  ; Dot3(ax,ay,az,bx,by,bz)
  %3820 = fadd fast float %3819, 0x3EE4F8B580000000
  %3821 = fdiv fast float %3818, %3820
  %3822 = bitcast float %3821 to i32
  %3823 = ashr i32 %3822, 1
  %3824 = add nsw i32 %3823, 532487669
  %3825 = bitcast i32 %3824 to float
  %3826 = fmul fast float %3825, %3811
  %3827 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3828 = fmul fast float %3827, 0x4009981AE0000000
  %3829 = fsub fast float 0x40111BBD80000000, %3828
  %3830 = fmul fast float %3829, %3827
  %3831 = fadd fast float %3830, 0xC0009F6020000000
  %3832 = fmul fast float %3831, %3827
  %3833 = fadd fast float %3832, 1.000000e+00
  %3834 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  br label %3838

; <label>:3835                                    ; preds = %3800
  %3836 = icmp ne i32 %3642, -1
  %3837 = zext i1 %3836 to i32
  br label %3838

; <label>:3838                                    ; preds = %3835, %3804
  %3839 = phi float [ %2116, %3835 ], [ %3834, %3804 ]
  %3840 = phi i32 [ %3837, %3835 ], [ 0, %3804 ]
  %3841 = fmul float %3839, 5.000000e+00
  %3842 = fsub float 5.000000e+00, %3841
  %3843 = icmp ne i32 %3840, 0
  %3844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3845 = extractvalue %dx.types.CBufRet.f32 %3844, 3
  %3846 = fadd fast float %3845, %3842
  %3847 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3846)  ; FMax(a,b)
  %3848 = call float @dx.op.unary.f32(i32 6, float %3801)  ; FAbs(value)
  %3849 = call float @dx.op.unary.f32(i32 6, float %3802)  ; FAbs(value)
  %3850 = fadd fast float %3849, %3848
  %3851 = call float @dx.op.unary.f32(i32 6, float %3803)  ; FAbs(value)
  %3852 = fadd fast float %3850, %3851
  %3853 = fcmp fast oeq float %3852, 0.000000e+00
  %3854 = fdiv fast float 1.000000e+00, %3852
  %3855 = select i1 %3853, float 1.000000e+00, float %3854
  %3856 = fmul fast float %3855, %3801
  %3857 = fmul fast float %3855, %3802
  %3858 = call float @dx.op.unary.f32(i32 6, float %3857)  ; FAbs(value)
  %3859 = call float @dx.op.unary.f32(i32 6, float %3856)  ; FAbs(value)
  %3860 = fsub fast float 1.000000e+00, %3858
  %3861 = fsub fast float 1.000000e+00, %3859
  %3862 = fcmp fast oge float %3856, 0.000000e+00
  %3863 = fcmp fast oge float %3857, 0.000000e+00
  %3864 = select i1 %3862, float 1.000000e+00, float -1.000000e+00
  %3865 = select i1 %3863, float 1.000000e+00, float -1.000000e+00
  %3866 = fcmp fast ole float %3803, 0.000000e+00
  %3867 = fmul fast float %3864, %3860
  %3868 = fmul fast float %3865, %3861
  %3869 = select i1 %3866, float %3867, float %3856
  %3870 = select i1 %3866, float %3868, float %3857
  %3871 = fmul fast float %3869, 5.000000e-01
  %3872 = fmul fast float %3870, 5.000000e-01
  %3873 = fadd fast float %3871, 5.000000e-01
  %3874 = fadd fast float %3872, 5.000000e-01
  %3875 = uitofp i32 %3639 to float
  %3876 = call float @dx.op.binary.f32(i32 36, float %3847, float 3.000000e+00)  ; FMin(a,b)
  %3877 = fadd fast float %3876, 2.000000e+00
  %3878 = call float @dx.op.unary.f32(i32 21, float %3877)  ; Exp(value)
  %3879 = extractvalue %dx.types.CBufRet.f32 %3844, 1
  %3880 = fmul fast float %3879, %3878
  %3881 = fmul fast float %3880, 2.000000e+00
  %3882 = fsub fast float 1.000000e+00, %3881
  %3883 = fmul fast float %3873, %3882
  %3884 = fmul fast float %3874, %3882
  %3885 = fadd fast float %3883, %3880
  %3886 = fadd fast float %3884, %3880
  %3887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %3885, float %3886, float %3875, float undef, i32 0, i32 0, i32 undef, float %3847)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.ResRet.f32 %3887, 1
  %3890 = extractvalue %dx.types.ResRet.f32 %3887, 2
  %3891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3891, 3
  %3893 = fmul fast float %3892, %3609
  %3894 = call float @dx.op.binary.f32(i32 36, float %3339, float %3893)  ; FMin(a,b)
  %3895 = select i1 %3843, float %3894, float %3893
  %3896 = fmul fast float %3888, %3688
  %3897 = fmul fast float %3896, %3895
  %3898 = fmul fast float %3889, %3688
  %3899 = fmul fast float %3898, %3895
  %3900 = fmul fast float %3890, %3688
  %3901 = fmul fast float %3900, %3895
  %3902 = fadd fast float %3897, %3584
  %3903 = fadd fast float %3899, %3585
  %3904 = fadd fast float %3901, %3586
  %3905 = fsub fast float %3587, %3688
  br label %3690

; <label>:3906                                    ; preds = %3690
  br label %3907

; <label>:3907                                    ; preds = %3906, %3553
  %3908 = phi float [ %3554, %3553 ], [ %3691, %3906 ]
  %3909 = phi float [ %3555, %3553 ], [ %3692, %3906 ]
  %3910 = phi float [ %3556, %3553 ], [ %3693, %3906 ]
  %3911 = phi float [ %3557, %3553 ], [ %3694, %3906 ]
  %3912 = add i32 %3558, 1
  %3913 = icmp ugt i32 %3912, %3550
  br i1 %3913, label %3914, label %3553, !llvm.loop !112

; <label>:3914                                    ; preds = %3907
  br label %3915

; <label>:3915                                    ; preds = %3914, %3535
  %3916 = phi float [ 0.000000e+00, %3535 ], [ %3908, %3914 ]
  %3917 = phi float [ 0.000000e+00, %3535 ], [ %3909, %3914 ]
  %3918 = phi float [ 0.000000e+00, %3535 ], [ %3910, %3914 ]
  %3919 = call float @dx.op.dot3.f32(i32 55, float %3916, float %3917, float %3918, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3920 = select i1 %237, float 0.000000e+00, float %3916
  %3921 = select i1 %237, float %3919, float %3917
  %3922 = select i1 %237, float 0.000000e+00, float %3918
  %3923 = fcmp fast olt float %3461, 0.000000e+00
  %3924 = call float @dx.op.unary.f32(i32 6, float %3461)  ; FAbs(value)
  %3925 = fmul fast float %3924, %3401
  %3926 = fmul fast float %3924, %3402
  %3927 = fmul fast float %3924, %3403
  %3928 = select i1 %3923, float %3401, float %3925
  %3929 = select i1 %3923, float %3402, float %3926
  %3930 = select i1 %3923, float %3403, float %3927
  %3931 = fsub fast float 1.000000e+00, %3924
  %3932 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3933 = fmul fast float %3932, %3920
  %3934 = fmul fast float %3932, %3921
  %3935 = fmul fast float %3932, %3922
  %3936 = fadd fast float %3928, %3933
  %3937 = fadd fast float %3929, %3934
  %3938 = fadd fast float %3930, %3935
  br label %3939

; <label>:3939                                    ; preds = %3915, %3444
  %3940 = phi float [ %3401, %3444 ], [ %3936, %3915 ]
  %3941 = phi float [ %3402, %3444 ], [ %3937, %3915 ]
  %3942 = phi float [ %3403, %3444 ], [ %3938, %3915 ]
  %3943 = fmul fast float %3450, %3397
  %3944 = fmul fast float %3450, %3398
  %3945 = fmul fast float %3450, %3399
  %3946 = call float @dx.op.dot3.f32(i32 55, float %2107, float %2108, float %2109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3947 = fcmp fast ogt float %3946, 0x3E7FF19E20000000
  %3948 = fdiv fast float 1.000000e+00, %3946
  %3949 = select i1 %3947, float %3948, float 0.000000e+00
  %3950 = fmul fast float %3949, %2107
  %3951 = fmul fast float %3949, %2108
  %3952 = fmul fast float %3949, %2109
  %3953 = fadd fast float %3950, -1.000000e+00
  %3954 = fadd fast float %3951, -1.000000e+00
  %3955 = fadd fast float %3952, -1.000000e+00
  %3956 = fmul fast float %3953, 5.000000e-01
  %3957 = fmul fast float %3954, 5.000000e-01
  %3958 = fmul fast float %3955, 5.000000e-01
  %3959 = fadd fast float %3956, 1.000000e+00
  %3960 = fadd fast float %3957, 1.000000e+00
  %3961 = fadd fast float %3958, 1.000000e+00
  %3962 = fmul fast float %3940, %3445
  %3963 = fmul fast float %3941, %3446
  %3964 = fmul fast float %3942, %3447
  %3965 = fsub fast float 1.000000e+00, %2121
  %3966 = bitcast float %3965 to i32
  %3967 = sitofp i32 %3966 to float
  %3968 = fmul fast float %3967, 5.000000e+00
  %3969 = fadd fast float %3968, 0xC1EFBF8940000000
  %3970 = fptosi float %3969 to i32
  %3971 = bitcast i32 %3970 to float
  %3972 = fmul fast float %3971, %1483
  %3973 = fmul fast float %3397, %3972
  %3974 = fmul fast float %3973, %3450
  %3975 = fmul fast float %3974, %3959
  %3976 = fmul fast float %3398, %3972
  %3977 = fmul fast float %3976, %3450
  %3978 = fmul fast float %3977, %3960
  %3979 = fmul fast float %3399, %3972
  %3980 = fmul fast float %3979, %3450
  %3981 = fmul fast float %3980, %3961
  %3982 = fmul fast float %3943, %1504
  %3983 = fmul fast float %3944, %1504
  %3984 = fmul fast float %3945, %1504
  %3985 = fadd fast float %3962, %1485
  %3986 = fadd fast float %3985, %3975
  %3987 = fmul fast float %3986, %1504
  %3988 = fadd fast float %3963, %1486
  %3989 = fadd fast float %3988, %3978
  %3990 = fmul fast float %3989, %1504
  %3991 = fadd fast float %3964, %1487
  %3992 = fadd fast float %3991, %3981
  %3993 = fmul fast float %3992, %1504
  %3994 = bitcast i32 %2145 to float
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %3997 = fcmp fast oeq float %3996, 0.000000e+00
  br i1 %3997, label %5539, label %3998

; <label>:3998                                    ; preds = %3939
  %3999 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %4000 = extractvalue %dx.types.CBufRet.f32 %3995, 1
  %4001 = extractvalue %dx.types.CBufRet.f32 %3995, 2
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4004 = extractvalue %dx.types.CBufRet.f32 %4002, 1
  %4005 = extractvalue %dx.types.CBufRet.f32 %4002, 2
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.CBufRet.f32 %4006, 1
  %4009 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %4005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4010 = select i1 %237, float %4007, float %4003
  %4011 = select i1 %237, float %4009, float %4004
  %4012 = select i1 %237, float %4008, float %4005
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 2
  %4015 = fmul fast float %4014, %76
  %4016 = fmul fast float %4014, %77
  %4017 = fmul fast float %4014, %78
  %4018 = fadd fast float %4015, %146
  %4019 = fadd fast float %4016, %147
  %4020 = fadd fast float %4017, %148
  %4021 = fcmp fast olt float %3996, 0.000000e+00
  br i1 %4021, label %5117, label %4022

; <label>:4022                                    ; preds = %3998
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.CBufRet.f32 %4023, 1
  %4026 = extractvalue %dx.types.CBufRet.f32 %4023, 2
  %4027 = extractvalue %dx.types.CBufRet.f32 %4023, 3
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 0
  %4030 = extractvalue %dx.types.CBufRet.f32 %4028, 1
  %4031 = extractvalue %dx.types.CBufRet.f32 %4028, 2
  %4032 = extractvalue %dx.types.CBufRet.f32 %4028, 3
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 0
  %4035 = extractvalue %dx.types.CBufRet.f32 %4033, 1
  %4036 = extractvalue %dx.types.CBufRet.f32 %4033, 2
  %4037 = extractvalue %dx.types.CBufRet.f32 %4033, 3
  %4038 = fmul fast float %4024, %4018
  %4039 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4025, float %4038)  ; FMad(a,b,c)
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %4020, float %4026, float %4039)  ; FMad(a,b,c)
  %4041 = fadd fast float %4040, %4027
  %4042 = fmul fast float %4029, %4018
  %4043 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4030, float %4042)  ; FMad(a,b,c)
  %4044 = call float @dx.op.tertiary.f32(i32 46, float %4020, float %4031, float %4043)  ; FMad(a,b,c)
  %4045 = fadd fast float %4044, %4032
  %4046 = fmul fast float %4034, %4018
  %4047 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4035, float %4046)  ; FMad(a,b,c)
  %4048 = call float @dx.op.tertiary.f32(i32 46, float %4020, float %4036, float %4047)  ; FMad(a,b,c)
  %4049 = fadd fast float %4048, %4037
  %4050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.f32 %4050, 0
  %4052 = extractvalue %dx.types.CBufRet.f32 %4050, 1
  %4053 = extractvalue %dx.types.CBufRet.f32 %4050, 3
  %4054 = fmul fast float %4053, %4041
  %4055 = fmul fast float %4053, %4045
  %4056 = fadd fast float %4054, %4051
  %4057 = fadd fast float %4055, %4052
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4060 = extractvalue %dx.types.CBufRet.f32 %4058, 1
  %4061 = extractvalue %dx.types.CBufRet.f32 %4058, 3
  %4062 = fmul fast float %4061, %4041
  %4063 = fmul fast float %4061, %4045
  %4064 = fadd fast float %4062, %4059
  %4065 = fadd fast float %4063, %4060
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 1
  %4068 = fsub fast float %4067, %4049
  %4069 = extractvalue %dx.types.CBufRet.f32 %4066, 2
  %4070 = fmul fast float %4068, %4069
  %4071 = fsub fast float 1.000000e+00, %4070
  %4072 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4058, 2
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4076 = fadd fast float %4075, %4073
  %4077 = fcmp fast ogt float %4076, 0.000000e+00
  br i1 %4077, label %4078, label %4102

; <label>:4078                                    ; preds = %4022
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4082 = fsub fast float %4064, %4080
  %4083 = fsub fast float %4065, %4081
  %4084 = fcmp fast olt float %4082, 0.000000e+00
  %4085 = fcmp fast olt float %4083, 0.000000e+00
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = extractvalue %dx.types.CBufRet.f32 %4086, 1
  %4089 = extractvalue %dx.types.CBufRet.f32 %4086, 2
  %4090 = extractvalue %dx.types.CBufRet.f32 %4086, 3
  %4091 = select i1 %4084, float %4087, float %4089
  %4092 = select i1 %4085, float %4088, float %4090
  %4093 = fmul fast float %4091, %4082
  %4094 = fmul fast float %4092, %4083
  %4095 = call float @dx.op.unary.f32(i32 6, float %4093)  ; FAbs(value)
  %4096 = call float @dx.op.unary.f32(i32 6, float %4094)  ; FAbs(value)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  %4098 = call float @dx.op.binary.f32(i32 35, float %4095, float %4096)  ; FMax(a,b)
  %4099 = fsub fast float %4097, %4098
  %4100 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4101 = fmul fast float %4100, %4072
  br label %4102

; <label>:4102                                    ; preds = %4078, %4022
  %4103 = phi float [ %4101, %4078 ], [ 0.000000e+00, %4022 ]
  %4104 = extractvalue %dx.types.CBufRet.f32 %4050, 2
  %4105 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4106 = fadd fast float %4105, %4104
  %4107 = fcmp fast ogt float %4106, 0.000000e+00
  %4108 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  br i1 %4107, label %4109, label %4132

; <label>:4109                                    ; preds = %4102
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.CBufRet.f32 %4110, 1
  %4113 = fsub fast float %4056, %4111
  %4114 = fsub fast float %4057, %4112
  %4115 = fcmp fast olt float %4113, 0.000000e+00
  %4116 = fcmp fast olt float %4114, 0.000000e+00
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 0
  %4119 = extractvalue %dx.types.CBufRet.f32 %4117, 1
  %4120 = extractvalue %dx.types.CBufRet.f32 %4117, 2
  %4121 = extractvalue %dx.types.CBufRet.f32 %4117, 3
  %4122 = select i1 %4115, float %4118, float %4120
  %4123 = select i1 %4116, float %4119, float %4121
  %4124 = fmul fast float %4122, %4113
  %4125 = fmul fast float %4123, %4114
  %4126 = call float @dx.op.unary.f32(i32 6, float %4124)  ; FAbs(value)
  %4127 = call float @dx.op.unary.f32(i32 6, float %4125)  ; FAbs(value)
  %4128 = call float @dx.op.binary.f32(i32 35, float %4126, float %4127)  ; FMax(a,b)
  %4129 = fsub fast float %4108, %4128
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4131 = fmul fast float %4130, %4072
  br label %4132

; <label>:4132                                    ; preds = %4109, %4102
  %4133 = phi float [ %4131, %4109 ], [ 0.000000e+00, %4102 ]
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 1
  %4136 = call float @dx.op.unary.f32(i32 7, float %4135)  ; Saturate(value)
  %4137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.f32 %4137, 0
  %4139 = extractvalue %dx.types.CBufRet.f32 %4137, 1
  %4140 = fsub fast float %4041, %4138
  %4141 = fsub fast float %4045, %4139
  %4142 = fcmp fast olt float %4140, 0.000000e+00
  %4143 = fcmp fast olt float %4141, 0.000000e+00
  %4144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4144, 0
  %4146 = extractvalue %dx.types.CBufRet.f32 %4144, 1
  %4147 = extractvalue %dx.types.CBufRet.f32 %4144, 2
  %4148 = extractvalue %dx.types.CBufRet.f32 %4144, 3
  %4149 = select i1 %4142, float %4145, float %4147
  %4150 = select i1 %4143, float %4146, float %4148
  %4151 = fmul fast float %4149, %4140
  %4152 = fmul fast float %4150, %4141
  %4153 = call float @dx.op.unary.f32(i32 6, float %4151)  ; FAbs(value)
  %4154 = call float @dx.op.unary.f32(i32 6, float %4152)  ; FAbs(value)
  %4155 = call float @dx.op.binary.f32(i32 35, float %4153, float %4154)  ; FMax(a,b)
  %4156 = fsub fast float %4108, %4155
  %4157 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4158 = call float @dx.op.binary.f32(i32 36, float %4157, float %4136)  ; FMin(a,b)
  %4159 = fmul fast float %4158, %4072
  %4160 = fsub fast float %4133, %4159
  %4161 = fsub fast float %4103, %4133
  %4162 = fsub fast float %4161, %4159
  %4163 = call float @dx.op.binary.f32(i32 35, float %4133, float %4103)  ; FMax(a,b)
  %4164 = call float @dx.op.binary.f32(i32 35, float %4159, float %4163)  ; FMax(a,b)
  %4165 = fcmp fast olt float %4164, 1.000000e+00
  br i1 %4165, label %4166, label %4564, !dx.controlflow.hints !114

; <label>:4166                                    ; preds = %4132
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = fcmp fast une float %4168, 0.000000e+00
  br i1 %4169, label %4170, label %4564, !dx.controlflow.hints !115

; <label>:4170                                    ; preds = %4166
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4173 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4174 = extractvalue %dx.types.CBufRet.f32 %4171, 2
  %4175 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4179 = extractvalue %dx.types.CBufRet.f32 %4176, 2
  %4180 = extractvalue %dx.types.CBufRet.f32 %4176, 3
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.CBufRet.f32 %4181, 1
  %4184 = extractvalue %dx.types.CBufRet.f32 %4181, 2
  %4185 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4186 = fmul fast float %4172, %4018
  %4187 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4173, float %4186)  ; FMad(a,b,c)
  %4188 = call float @dx.op.tertiary.f32(i32 46, float %4020, float %4174, float %4187)  ; FMad(a,b,c)
  %4189 = fadd fast float %4188, %4175
  %4190 = fmul fast float %4177, %4018
  %4191 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4178, float %4190)  ; FMad(a,b,c)
  %4192 = call float @dx.op.tertiary.f32(i32 46, float %4020, float %4179, float %4191)  ; FMad(a,b,c)
  %4193 = fadd fast float %4192, %4180
  %4194 = fmul fast float %4182, %4018
  %4195 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %4183, float %4194)  ; FMad(a,b,c)
  %4196 = call float @dx.op.tertiary.f32(i32 46, float %4020, float %4184, float %4195)  ; FMad(a,b,c)
  %4197 = fadd fast float %4196, %4185
  %4198 = fcmp fast oge float %4189, 1.000000e+00
  %4199 = fcmp fast oge float %4193, 1.000000e+00
  %4200 = or i1 %4198, %4199
  %4201 = fcmp fast olt float %4189, 0.000000e+00
  %4202 = fcmp fast olt float %4193, 0.000000e+00
  %4203 = or i1 %4201, %4202
  %4204 = or i1 %4200, %4203
  br i1 %4204, label %4564, label %4205, !dx.controlflow.hints !116

; <label>:4205                                    ; preds = %4170
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.CBufRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.CBufRet.f32 %4206, 2
  %4210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.i32 %4210, 2
  %4212 = uitofp i32 %4211 to float
  %4213 = extractvalue %dx.types.CBufRet.i32 %4210, 3
  %4214 = uitofp i32 %4213 to float
  %4215 = extractvalue %dx.types.CBufRet.f32 %4206, 3
  %4216 = fmul fast float %4215, 2.000000e+00
  %4217 = fsub fast float %4189, %4207
  %4218 = fsub fast float %4193, %4208
  %4219 = fmul fast float %4216, %4217
  %4220 = fmul fast float %4216, %4218
  %4221 = fdiv fast float 1.000000e+00, %4001
  %4222 = fmul fast float %4220, %4221
  %4223 = call float @dx.op.unary.f32(i32 6, float %4222)  ; FAbs(value)
  %4224 = fmul fast float %4209, %4020
  %4225 = fmul fast float %4224, %4216
  %4226 = call float @dx.op.unary.f32(i32 6, float %4225)  ; FAbs(value)
  %4227 = call float @dx.op.unary.f32(i32 6, float %4219)  ; FAbs(value)
  %4228 = call float @dx.op.binary.f32(i32 35, float %4226, float %4223)  ; FMax(a,b)
  %4229 = call float @dx.op.binary.f32(i32 35, float %4227, float %4228)  ; FMax(a,b)
  %4230 = fmul fast float %4229, 2.000000e+00
  %4231 = call float @dx.op.unary.f32(i32 23, float %4230)  ; Log(value)
  %4232 = call float @dx.op.binary.f32(i32 35, float %4231, float %4212)  ; FMax(a,b)
  %4233 = call float @dx.op.unary.f32(i32 22, float %4232)  ; Frc(value)
  %4234 = fadd fast float %4233, 0xBFEA666660000000
  %4235 = fmul fast float %4234, 8.000000e+00
  %4236 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4237 = call float @dx.op.unary.f32(i32 27, float %4232)  ; Round_ni(value)
  %4238 = fadd fast float %4237, %4236
  %4239 = call float @dx.op.binary.f32(i32 36, float %4238, float %4214)  ; FMin(a,b)
  %4240 = call float @dx.op.unary.f32(i32 27, float %4239)  ; Round_ni(value)
  %4241 = fsub fast float -0.000000e+00, %4240
  %4242 = call float @dx.op.unary.f32(i32 21, float %4241)  ; Exp(value)
  %4243 = fmul fast float %4242, %4216
  %4244 = fmul fast float %4243, %4189
  %4245 = fmul fast float %4243, %4193
  %4246 = fmul fast float %4244, 2.500000e-01
  %4247 = fmul fast float %4245, 2.500000e-01
  %4248 = fadd fast float %4246, 5.000000e-01
  %4249 = fadd fast float %4247, 5.000000e-01
  %4250 = fsub fast float %4214, %4212
  %4251 = fptoui float %4250 to i32
  %4252 = add i32 %4251, 320
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4252)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 0
  %4255 = extractvalue %dx.types.CBufRet.f32 %4253, 1
  %4256 = fcmp fast une float %4239, %4214
  %4257 = fsub fast float %4189, %4254
  %4258 = fsub fast float %4193, %4255
  %4259 = call float @dx.op.unary.f32(i32 6, float %4257)  ; FAbs(value)
  %4260 = call float @dx.op.unary.f32(i32 6, float %4258)  ; FAbs(value)
  %4261 = fmul fast float %4259, %4243
  %4262 = fmul fast float %4260, %4243
  %4263 = fcmp fast olt float %4261, 1.000000e+00
  %4264 = fcmp fast olt float %4262, 1.000000e+00
  %4265 = and i1 %4263, %4264
  %4266 = or i1 %4256, %4265
  br i1 %4266, label %4267, label %4564, !dx.controlflow.hints !117

; <label>:4267                                    ; preds = %4205
  %4268 = fmul fast float %4245, 5.000000e-01
  %4269 = fmul fast float %4244, 5.000000e-01
  %4270 = fadd fast float %4268, 5.000000e-01
  %4271 = fadd fast float %4269, 5.000000e-01
  %4272 = sitofp i32 %4211 to float
  %4273 = fsub fast float %4239, %4272
  %4274 = call float @dx.op.unary.f32(i32 27, float %4273)  ; Round_ni(value)
  %4275 = call float @dx.op.unary.f32(i32 22, float %4239)  ; Frc(value)
  %4276 = call float @dx.op.unary.f32(i32 22, float %4271)  ; Frc(value)
  %4277 = call float @dx.op.unary.f32(i32 22, float %4270)  ; Frc(value)
  %4278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4276, float %4277, float %4274, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = extractvalue %dx.types.ResRet.f32 %4278, 1
  %4281 = extractvalue %dx.types.ResRet.f32 %4278, 2
  %4282 = extractvalue %dx.types.ResRet.f32 %4278, 3
  %4283 = fcmp fast ogt float %4275, 0.000000e+00
  br i1 %4283, label %4284, label %4305, !dx.controlflow.hints !118

; <label>:4284                                    ; preds = %4267
  %4285 = fadd fast float %4274, 1.000000e+00
  %4286 = call float @dx.op.unary.f32(i32 22, float %4248)  ; Frc(value)
  %4287 = call float @dx.op.unary.f32(i32 22, float %4249)  ; Frc(value)
  %4288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4286, float %4287, float %4285, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = extractvalue %dx.types.ResRet.f32 %4288, 1
  %4291 = extractvalue %dx.types.ResRet.f32 %4288, 2
  %4292 = extractvalue %dx.types.ResRet.f32 %4288, 3
  %4293 = fsub fast float %4289, %4279
  %4294 = fsub fast float %4290, %4280
  %4295 = fsub fast float %4291, %4281
  %4296 = fsub fast float %4292, %4282
  %4297 = fmul fast float %4293, %4275
  %4298 = fmul fast float %4294, %4275
  %4299 = fmul fast float %4295, %4275
  %4300 = fmul fast float %4296, %4275
  %4301 = fadd fast float %4297, %4279
  %4302 = fadd fast float %4298, %4280
  %4303 = fadd fast float %4299, %4281
  %4304 = fadd fast float %4300, %4282
  br label %4305

; <label>:4305                                    ; preds = %4284, %4267
  %4306 = phi float [ %4301, %4284 ], [ %4279, %4267 ]
  %4307 = phi float [ %4302, %4284 ], [ %4280, %4267 ]
  %4308 = phi float [ %4303, %4284 ], [ %4281, %4267 ]
  %4309 = phi float [ %4304, %4284 ], [ %4282, %4267 ]
  %4310 = fadd fast float %4306, -5.000000e-01
  %4311 = fadd fast float %4308, -5.000000e-01
  %4312 = fmul fast float %4310, 0xBFD5555560000000
  %4313 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4311, float %4312)  ; FMad(a,b,c)
  %4314 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4307, float 0.000000e+00)  ; FMad(a,b,c)
  %4315 = fadd fast float %4314, %4309
  %4316 = fmul fast float %4310, -7.500000e-01
  %4317 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4311, float %4316)  ; FMad(a,b,c)
  %4318 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4307, float 0.000000e+00)  ; FMad(a,b,c)
  %4319 = fadd fast float %4318, %4309
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 0
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 0
  %4324 = extractvalue %dx.types.CBufRet.f32 %4322, 1
  %4325 = extractvalue %dx.types.CBufRet.f32 %4322, 2
  %4326 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4327 = fsub fast float %4323, %4313
  %4328 = fsub fast float %4324, %4315
  %4329 = fsub fast float %4325, %4317
  %4330 = fsub fast float %4326, %4319
  %4331 = fmul fast float %4327, %4321
  %4332 = fmul fast float %4328, %4321
  %4333 = fmul fast float %4329, %4321
  %4334 = fmul fast float %4330, %4321
  %4335 = fadd fast float %4331, %4313
  %4336 = fadd fast float %4332, %4315
  %4337 = fadd fast float %4333, %4317
  %4338 = fadd fast float %4334, %4319
  %4339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4340 = extractvalue %dx.types.ResRet.i32 %4339, 0
  %4341 = and i32 %4340, 536870911
  %4342 = uitofp i32 %4341 to float
  %4343 = fmul fast float %4342, %4189
  %4344 = fmul fast float %4342, %4193
  %4345 = fptoui float %4343 to i32
  %4346 = fptoui float %4344 to i32
  %4347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4348 = extractvalue %dx.types.ResRet.i32 %4347, 0
  %4349 = and i32 %4348, 31
  %4350 = lshr i32 %4345, %4349
  %4351 = lshr i32 %4346, %4349
  %4352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.i32 %4352, 0
  %4354 = and i32 %4353, 31
  %4355 = shl i32 1, %4354
  %4356 = call i32 @dx.op.binary.i32(i32 40, i32 %4355, i32 4)  ; UMin(a,b)
  %4357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4358 = extractvalue %dx.types.ResRet.i32 %4357, 0
  %4359 = extractvalue %dx.types.ResRet.i32 %4357, 1
  %4360 = icmp eq i32 %4356, 0
  br i1 %4360, label %4402, label %4361

; <label>:4361                                    ; preds = %4305
  br label %4362

; <label>:4362                                    ; preds = %4390, %4361
  %4363 = phi i32 [ %4393, %4390 ], [ 0, %4361 ]
  %4364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.i32 %4364, 0
  %4366 = lshr i32 %4365, 16
  %4367 = and i32 %4366, 31
  %4368 = shl i32 %4351, %4367
  %4369 = add i32 %4368, %4350
  %4370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4371 = extractvalue %dx.types.ResRet.i32 %4370, 0
  %4372 = and i32 %4371, 31
  %4373 = shl i32 %4369, %4372
  %4374 = add i32 %4373, %4363
  %4375 = shl i32 %4374, 2
  %4376 = add i32 %4375, 32
  %4377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4378 = extractvalue %dx.types.ResRet.i32 %4377, 0
  %4379 = icmp slt i32 %4378, 0
  %4380 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4363
  %4381 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4363
  %4382 = bitcast float* %4380 to i32*
  %4383 = bitcast float* %4381 to i32*
  br i1 %4379, label %4384, label %4390

; <label>:4384                                    ; preds = %4362
  %4385 = and i32 %4378, 1073741823
  %4386 = add nuw nsw i32 %4385, 20
  %4387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.i32 %4387, 0
  %4389 = extractvalue %dx.types.ResRet.i32 %4387, 1
  br label %4390

; <label>:4390                                    ; preds = %4384, %4362
  %4391 = phi i32 [ %4388, %4384 ], [ %4358, %4362 ]
  %4392 = phi i32 [ %4389, %4384 ], [ %4359, %4362 ]
  store i32 %4391, i32* %4382, align 4
  store i32 %4392, i32* %4383, align 4
  %4393 = add nuw i32 %4363, 1
  %4394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.i32 %4394, 2
  %4396 = icmp eq i32 %4395, 0
  %4397 = icmp ugt i32 %4378, -1073741825
  %4398 = and i1 %4397, %4396
  %4399 = icmp ult i32 %4393, %4356
  %4400 = and i1 %4398, %4399
  br i1 %4400, label %4362, label %4401

; <label>:4401                                    ; preds = %4390
  br label %4402

; <label>:4402                                    ; preds = %4401, %4305
  %4403 = phi i32 [ 0, %4305 ], [ %4393, %4401 ]
  %4404 = extractvalue %dx.types.CBufRet.f32 %4167, 2
  %4405 = fptoui float %4404 to i32
  %4406 = icmp eq i32 %4405, 0
  br i1 %4406, label %4458, label %4407

; <label>:4407                                    ; preds = %4402
  br label %4408

; <label>:4408                                    ; preds = %4453, %4407
  %4409 = phi i32 [ %4454, %4453 ], [ %4403, %4407 ]
  %4410 = phi i32 [ %4455, %4453 ], [ 0, %4407 ]
  %4411 = lshr i32 %4410, 2
  %4412 = and i32 %4410, 3
  %4413 = add nuw nsw i32 %4411, 83
  %4414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4413)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.i32 %4414, 0
  %4416 = extractvalue %dx.types.CBufRet.i32 %4414, 1
  %4417 = extractvalue %dx.types.CBufRet.i32 %4414, 2
  %4418 = extractvalue %dx.types.CBufRet.i32 %4414, 3
  %4419 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4415, i32* %4419, align 4
  %4420 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4416, i32* %4420, align 4
  %4421 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4417, i32* %4421, align 4
  %4422 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4418, i32* %4422, align 4
  %4423 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4412
  %4424 = load i32, i32* %4423, align 4, !tbaa !119, !noalias !123
  %4425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4426 = extractvalue %dx.types.ResRet.i32 %4425, 0
  %4427 = lshr i32 %4426, 16
  %4428 = and i32 %4427, 31
  %4429 = shl i32 %4351, %4428
  %4430 = add i32 %4429, %4350
  %4431 = shl i32 %4430, 2
  %4432 = add i32 %4431, %4424
  %4433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.i32 %4433, 0
  %4435 = icmp eq i32 %4434, 0
  br i1 %4435, label %4453, label %4436

; <label>:4436                                    ; preds = %4408
  %4437 = icmp slt i32 %4434, 0
  %4438 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4409
  %4439 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4409
  %4440 = bitcast float* %4438 to i32*
  %4441 = bitcast float* %4439 to i32*
  br i1 %4437, label %4442, label %4449

; <label>:4442                                    ; preds = %4436
  %4443 = and i32 %4434, 1073741823
  %4444 = add i32 %4424, 20
  %4445 = add i32 %4444, %4443
  %4446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.i32 %4446, 0
  %4448 = extractvalue %dx.types.ResRet.i32 %4446, 1
  br label %4449

; <label>:4449                                    ; preds = %4442, %4436
  %4450 = phi i32 [ %4447, %4442 ], [ %4358, %4436 ]
  %4451 = phi i32 [ %4448, %4442 ], [ %4359, %4436 ]
  store i32 %4450, i32* %4440, align 4
  store i32 %4451, i32* %4441, align 4
  %4452 = add i32 %4409, 1
  br label %4453

; <label>:4453                                    ; preds = %4449, %4408
  %4454 = phi i32 [ %4409, %4408 ], [ %4452, %4449 ]
  %4455 = add nuw i32 %4410, 1
  %4456 = icmp eq i32 %4455, %4405
  br i1 %4456, label %4457, label %4408

; <label>:4457                                    ; preds = %4453
  br label %4458

; <label>:4458                                    ; preds = %4457, %4402
  %4459 = phi i32 [ %4403, %4402 ], [ %4454, %4457 ]
  %4460 = icmp eq i32 %4459, 1
  %4461 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %4462 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %4460, label %4463, label %4466

; <label>:4463                                    ; preds = %4458
  %4464 = load float, float* %4461, align 4
  %4465 = load float, float* %4462, align 4
  br label %4493

; <label>:4466                                    ; preds = %4458
  %4467 = load float, float* %4461, align 4
  %4468 = load float, float* %4462, align 4
  %4469 = fdiv fast float 1.000000e+00, %4468
  %4470 = fsub fast float %4467, %4469
  %4471 = icmp ugt i32 %4459, 1
  br i1 %4471, label %4472, label %4488

; <label>:4472                                    ; preds = %4466
  br label %4473

; <label>:4473                                    ; preds = %4473, %4472
  %4474 = phi float [ %4483, %4473 ], [ %4470, %4472 ]
  %4475 = phi float [ %4484, %4473 ], [ %4467, %4472 ]
  %4476 = phi i32 [ %4485, %4473 ], [ 1, %4472 ]
  %4477 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4476
  %4478 = load float, float* %4477, align 4
  %4479 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4476
  %4480 = load float, float* %4479, align 4
  %4481 = fdiv fast float 1.000000e+00, %4480
  %4482 = fsub fast float %4478, %4481
  %4483 = call float @dx.op.binary.f32(i32 36, float %4474, float %4482)  ; FMin(a,b)
  %4484 = call float @dx.op.binary.f32(i32 35, float %4475, float %4478)  ; FMax(a,b)
  %4485 = add nuw i32 %4476, 1
  %4486 = icmp eq i32 %4485, %4459
  br i1 %4486, label %4487, label %4473

; <label>:4487                                    ; preds = %4473
  br label %4488

; <label>:4488                                    ; preds = %4487, %4466
  %4489 = phi float [ %4470, %4466 ], [ %4483, %4487 ]
  %4490 = phi float [ %4467, %4466 ], [ %4484, %4487 ]
  %4491 = fsub fast float %4490, %4489
  %4492 = fdiv fast float 1.000000e+00, %4491
  br label %4493

; <label>:4493                                    ; preds = %4488, %4463
  %4494 = phi float [ %4464, %4463 ], [ %4490, %4488 ]
  %4495 = phi float [ %4465, %4463 ], [ %4492, %4488 ]
  %4496 = fadd fast float %4197, %4494
  %4497 = fmul fast float %4496, %4495
  %4498 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4499 = fmul fast float %4498, 2.000000e+00
  %4500 = fsub fast float 1.000000e+00, %4499
  %4501 = fmul fast float %4335, %4335
  %4502 = fsub fast float %4336, %4501
  %4503 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4502)  ; FMax(a,b)
  %4504 = fdiv fast float 1.000000e+00, %4503
  %4505 = fmul fast float %4336, %4335
  %4506 = fsub fast float %4337, %4505
  %4507 = fsub fast float %4500, %4335
  %4508 = fmul fast float %4500, %4500
  %4509 = fsub fast float %4508, %4336
  %4510 = fmul fast float %4504, %4506
  %4511 = fmul fast float %4510, %4507
  %4512 = fsub fast float %4509, %4511
  %4513 = fmul fast float %4336, %4336
  %4514 = fsub fast float %4338, %4513
  %4515 = fmul fast float %4506, %4506
  %4516 = fmul fast float %4515, %4504
  %4517 = fsub fast float %4514, %4516
  %4518 = fdiv fast float %4512, %4517
  %4519 = fmul fast float %4518, %4506
  %4520 = fsub fast float %4507, %4519
  %4521 = fmul fast float %4520, %4504
  %4522 = fmul fast float %4521, %4335
  %4523 = fsub fast float 1.000000e+00, %4522
  %4524 = fmul fast float %4518, %4336
  %4525 = fsub fast float %4523, %4524
  %4526 = fmul fast float %4521, %4521
  %4527 = fmul fast float %4518, 4.000000e+00
  %4528 = fmul fast float %4527, %4525
  %4529 = fsub fast float %4526, %4528
  %4530 = call float @dx.op.unary.f32(i32 24, float %4529)  ; Sqrt(value)
  %4531 = fcmp fast oge float %4521, 0.000000e+00
  %4532 = fsub fast float -0.000000e+00, %4530
  %4533 = select i1 %4531, float %4532, float %4530
  %4534 = fsub fast float %4533, %4521
  %4535 = fdiv fast float %4534, %4518
  %4536 = fdiv fast float %4525, %4534
  %4537 = fmul fast float %4535, 5.000000e-01
  %4538 = fmul fast float %4536, 2.000000e+00
  %4539 = select i1 %4531, float %4537, float %4538
  %4540 = select i1 %4531, float %4538, float %4537
  %4541 = call float @dx.op.binary.f32(i32 35, float %4539, float %4540)  ; FMax(a,b)
  %4542 = call float @dx.op.binary.f32(i32 36, float %4539, float %4540)  ; FMin(a,b)
  %4543 = fcmp fast ogt float %4500, %4541
  %4544 = fsub fast float %4500, %4542
  %4545 = fsub fast float %4500, %4541
  %4546 = fsub fast float %4541, %4542
  %4547 = select i1 %4543, float %4545, float %4546
  %4548 = fmul float %4544, %4547
  %4549 = select i1 %4543, float %4542, float %4500
  %4550 = fcmp fast ogt float %4500, %4542
  %4551 = fmul fast float %4549, %4541
  %4552 = fadd fast float %4549, %4541
  %4553 = fmul fast float %4552, %4335
  %4554 = fadd fast float %4551, %4336
  %4555 = fsub fast float %4554, %4553
  %4556 = fdiv fast float %4555, %4548
  %4557 = select i1 %4550, float %4556, float 0.000000e+00
  %4558 = fsub fast float 1.000000e+00, %4557
  %4559 = select i1 %4543, float %4558, float %4557
  %4560 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4562 = fmul fast float %4561, %4560
  %4563 = fsub fast float 1.000000e+00, %4562
  br label %4564

; <label>:4564                                    ; preds = %4493, %4205, %4170, %4166, %4132
  %4565 = phi float [ 1.000000e+00, %4132 ], [ %4563, %4493 ], [ 1.000000e+00, %4170 ], [ 1.000000e+00, %4205 ], [ 1.000000e+00, %4166 ]
  %4566 = fcmp fast ogt float %4162, 0.000000e+00
  br i1 %4566, label %4567, label %4729, !dx.controlflow.hints !132

; <label>:4567                                    ; preds = %4564
  %4568 = fadd fast float %4075, %4049
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 2
  %4571 = extractvalue %dx.types.CBufRet.f32 %4569, 3
  %4572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.f32 %4572, 2
  %4574 = call float @dx.op.binary.f32(i32 35, float %4568, float 0.000000e+00)  ; FMax(a,b)
  %4575 = fadd fast float %4574, 0x3F10000000000000
  %4576 = fcmp fast oeq float %4573, 0.000000e+00
  br i1 %4576, label %4577, label %4644

; <label>:4577                                    ; preds = %4567
  %4578 = extractvalue %dx.types.CBufRet.f32 %4569, 1
  %4579 = extractvalue %dx.types.CBufRet.f32 %4569, 0
  %4580 = fmul fast float %4579, %4064
  %4581 = fmul fast float %4578, %4065
  %4582 = fadd fast float %4580, 5.000000e-01
  %4583 = call float @dx.op.unary.f32(i32 27, float %4582)  ; Round_ni(value)
  %4584 = fadd fast float %4581, 5.000000e-01
  %4585 = call float @dx.op.unary.f32(i32 27, float %4584)  ; Round_ni(value)
  %4586 = fsub fast float %4582, %4583
  %4587 = fsub fast float %4584, %4585
  %4588 = fadd fast float %4583, -5.000000e-01
  %4589 = fadd fast float %4585, -5.000000e-01
  %4590 = fmul fast float %4586, 2.000000e+00
  %4591 = fsub fast float 3.000000e+00, %4590
  %4592 = fadd fast float %4590, 1.000000e+00
  %4593 = fsub fast float 2.000000e+00, %4586
  %4594 = bitcast float %4591 to i32
  %4595 = sub nsw i32 2129859010, %4594
  %4596 = bitcast i32 %4595 to float
  %4597 = fmul fast float %4596, %4593
  %4598 = fadd fast float %4597, -1.000000e+00
  %4599 = bitcast float %4592 to i32
  %4600 = sub nsw i32 2129859010, %4599
  %4601 = bitcast i32 %4600 to float
  %4602 = fmul fast float %4601, %4586
  %4603 = fadd fast float %4602, 1.000000e+00
  %4604 = fmul fast float %4587, 2.000000e+00
  %4605 = fsub fast float 3.000000e+00, %4604
  %4606 = fadd fast float %4604, 1.000000e+00
  %4607 = fsub fast float 2.000000e+00, %4587
  %4608 = bitcast float %4605 to i32
  %4609 = sub nsw i32 2129859010, %4608
  %4610 = bitcast i32 %4609 to float
  %4611 = fmul fast float %4610, %4607
  %4612 = fadd fast float %4611, -1.000000e+00
  %4613 = bitcast float %4606 to i32
  %4614 = sub nsw i32 2129859010, %4613
  %4615 = bitcast i32 %4614 to float
  %4616 = fmul fast float %4615, %4587
  %4617 = fadd fast float %4616, 1.000000e+00
  %4618 = fadd fast float %4598, %4588
  %4619 = fmul fast float %4618, %4570
  %4620 = fadd fast float %4612, %4589
  %4621 = fmul fast float %4620, %4571
  %4622 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4619, float %4621, float undef, float undef, i32 0, i32 0, i32 undef, float %4575)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4623 = extractvalue %dx.types.ResRet.f32 %4622, 0
  %4624 = fmul fast float %4623, %4591
  %4625 = fadd fast float %4603, %4588
  %4626 = fmul fast float %4625, %4570
  %4627 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4626, float %4621, float undef, float undef, i32 0, i32 0, i32 undef, float %4575)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = fmul fast float %4628, %4592
  %4630 = fadd fast float %4617, %4589
  %4631 = fmul fast float %4630, %4571
  %4632 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4619, float %4631, float undef, float undef, i32 0, i32 0, i32 undef, float %4575)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = fmul fast float %4633, %4591
  %4635 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4626, float %4631, float undef, float undef, i32 0, i32 0, i32 undef, float %4575)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4636 = extractvalue %dx.types.ResRet.f32 %4635, 0
  %4637 = fmul fast float %4636, %4592
  %4638 = fadd fast float %4637, %4634
  %4639 = fmul fast float %4638, %4606
  %4640 = fadd fast float %4629, %4624
  %4641 = fmul fast float %4640, %4605
  %4642 = fadd fast float %4641, %4639
  %4643 = fmul fast float %4642, 6.250000e-02
  br label %4729

; <label>:4644                                    ; preds = %4567
  %4645 = fmul fast float %248, 0x401921FB60000000
  %4646 = call float @dx.op.unary.f32(i32 13, float %4645)  ; Sin(value)
  %4647 = call float @dx.op.unary.f32(i32 12, float %4645)  ; Cos(value)
  %4648 = fsub fast float -0.000000e+00, %4646
  br label %4649

; <label>:4649                                    ; preds = %4698, %4644
  %4650 = phi float [ 0.000000e+00, %4644 ], [ %4693, %4698 ]
  %4651 = phi float [ 0.000000e+00, %4644 ], [ %4695, %4698 ]
  %4652 = phi i32 [ 0, %4644 ], [ %4699, %4698 ]
  %4653 = mul i32 %4652, 2
  %4654 = add i32 0, %4653
  %4655 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4654
  %4656 = load float, float* %4655, align 4
  %4657 = mul i32 %4652, 2
  %4658 = add i32 1, %4657
  %4659 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4658
  %4660 = load float, float* %4659, align 4
  %4661 = fmul fast float %4656, %4647
  %4662 = call float @dx.op.tertiary.f32(i32 46, float %4660, float %4648, float %4661)  ; FMad(a,b,c)
  %4663 = fmul fast float %4656, %4646
  %4664 = call float @dx.op.tertiary.f32(i32 46, float %4660, float %4647, float %4663)  ; FMad(a,b,c)
  %4665 = fmul fast float %4662, %4573
  %4666 = fmul fast float %4664, %4573
  %4667 = fadd fast float %4665, %4064
  %4668 = fadd fast float %4666, %4065
  %4669 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4667, float %4668, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4670 = extractvalue %dx.types.ResRet.f32 %4669, 0
  %4671 = extractvalue %dx.types.ResRet.f32 %4669, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4669, 2
  %4673 = extractvalue %dx.types.ResRet.f32 %4669, 3
  %4674 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %4670, float* %4674, align 4
  %4675 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %4671, float* %4675, align 4
  %4676 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %4672, float* %4676, align 4
  %4677 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %4673, float* %4677, align 4
  %4678 = fsub fast float %4670, %4575
  %4679 = fcmp fast olt float %4678, 0.000000e+00
  %4680 = select i1 %4679, float 0.000000e+00, float 1.000000e+00
  %4681 = fadd fast float %4680, %4650
  %4682 = fmul fast float %4680, %4678
  %4683 = fadd fast float %4682, %4651
  br label %4684

; <label>:4684                                    ; preds = %4684, %4649
  %4685 = phi i32 [ 1, %4649 ], [ %4696, %4684 ]
  %4686 = phi float [ %4683, %4649 ], [ %4695, %4684 ]
  %4687 = phi float [ %4681, %4649 ], [ %4693, %4684 ]
  %4688 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %4685
  %4689 = load float, float* %4688, align 4, !tbaa !133, !noalias !123
  %4690 = fsub fast float %4689, %4575
  %4691 = fcmp fast olt float %4690, 0.000000e+00
  %4692 = select i1 %4691, float 0.000000e+00, float 1.000000e+00
  %4693 = fadd fast float %4692, %4687
  %4694 = fmul fast float %4692, %4690
  %4695 = fadd fast float %4694, %4686
  %4696 = add nuw nsw i32 %4685, 1
  %4697 = icmp eq i32 %4696, 4
  br i1 %4697, label %4698, label %4684, !llvm.loop !135

; <label>:4698                                    ; preds = %4684
  %4699 = add nuw nsw i32 %4652, 1
  %4700 = icmp eq i32 %4699, 8
  br i1 %4700, label %4701, label %4649, !llvm.loop !136

; <label>:4701                                    ; preds = %4698
  %4702 = fdiv fast float 1.000000e+00, %4693
  %4703 = fmul fast float %4702, %4695
  %4704 = fdiv fast float 1.000000e+00, %4575
  %4705 = fmul fast float %4703, %4704
  %4706 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4707 = call float @dx.op.binary.f32(i32 35, float %4706, float 0.000000e+00)  ; FMax(a,b)
  %4708 = fmul fast float %4693, 3.125000e-02
  %4709 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4710 = fmul fast float %4709, 2.000000e+00
  %4711 = fadd fast float %4710, -1.000000e+00
  %4712 = fcmp fast ogt float %4711, 0.000000e+00
  %4713 = fcmp fast olt float %4711, 0.000000e+00
  %4714 = zext i1 %4712 to i32
  %4715 = zext i1 %4713 to i32
  %4716 = sub nsw i32 %4714, %4715
  %4717 = sitofp i32 %4716 to float
  %4718 = fmul fast float %4717, %4711
  %4719 = fsub fast float 1.000000e+00, %4718
  %4720 = fmul fast float %4719, %4719
  %4721 = fmul fast float %4720, %4719
  %4722 = fsub fast float %4719, %4721
  %4723 = fmul fast float %4722, %4707
  %4724 = fsub fast float 1.000000e+00, %4721
  %4725 = fsub fast float %4724, %4723
  %4726 = fmul fast float %4717, 5.000000e-01
  %4727 = fmul fast float %4726, %4725
  %4728 = fsub fast float 5.000000e-01, %4727
  br label %4729

; <label>:4729                                    ; preds = %4701, %4577, %4564
  %4730 = phi float [ 1.000000e+00, %4564 ], [ %4643, %4577 ], [ %4728, %4701 ]
  %4731 = fcmp fast ogt float %4160, 0.000000e+00
  br i1 %4731, label %4732, label %4896, !dx.controlflow.hints !137

; <label>:4732                                    ; preds = %4729
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 1
  %4735 = fadd fast float %4734, %4049
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 2
  %4738 = extractvalue %dx.types.CBufRet.f32 %4736, 3
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 1
  %4741 = call float @dx.op.binary.f32(i32 35, float %4735, float 0.000000e+00)  ; FMax(a,b)
  %4742 = fadd fast float %4741, 0x3F10000000000000
  %4743 = fcmp fast oeq float %4740, 0.000000e+00
  br i1 %4743, label %4744, label %4811

; <label>:4744                                    ; preds = %4732
  %4745 = extractvalue %dx.types.CBufRet.f32 %4736, 1
  %4746 = extractvalue %dx.types.CBufRet.f32 %4736, 0
  %4747 = fmul fast float %4746, %4056
  %4748 = fmul fast float %4745, %4057
  %4749 = fadd fast float %4747, 5.000000e-01
  %4750 = call float @dx.op.unary.f32(i32 27, float %4749)  ; Round_ni(value)
  %4751 = fadd fast float %4748, 5.000000e-01
  %4752 = call float @dx.op.unary.f32(i32 27, float %4751)  ; Round_ni(value)
  %4753 = fsub fast float %4749, %4750
  %4754 = fsub fast float %4751, %4752
  %4755 = fadd fast float %4750, -5.000000e-01
  %4756 = fadd fast float %4752, -5.000000e-01
  %4757 = fmul fast float %4753, 2.000000e+00
  %4758 = fsub fast float 3.000000e+00, %4757
  %4759 = fadd fast float %4757, 1.000000e+00
  %4760 = fsub fast float 2.000000e+00, %4753
  %4761 = bitcast float %4758 to i32
  %4762 = sub nsw i32 2129859010, %4761
  %4763 = bitcast i32 %4762 to float
  %4764 = fmul fast float %4763, %4760
  %4765 = fadd fast float %4764, -1.000000e+00
  %4766 = bitcast float %4759 to i32
  %4767 = sub nsw i32 2129859010, %4766
  %4768 = bitcast i32 %4767 to float
  %4769 = fmul fast float %4768, %4753
  %4770 = fadd fast float %4769, 1.000000e+00
  %4771 = fmul fast float %4754, 2.000000e+00
  %4772 = fsub fast float 3.000000e+00, %4771
  %4773 = fadd fast float %4771, 1.000000e+00
  %4774 = fsub fast float 2.000000e+00, %4754
  %4775 = bitcast float %4772 to i32
  %4776 = sub nsw i32 2129859010, %4775
  %4777 = bitcast i32 %4776 to float
  %4778 = fmul fast float %4777, %4774
  %4779 = fadd fast float %4778, -1.000000e+00
  %4780 = bitcast float %4773 to i32
  %4781 = sub nsw i32 2129859010, %4780
  %4782 = bitcast i32 %4781 to float
  %4783 = fmul fast float %4782, %4754
  %4784 = fadd fast float %4783, 1.000000e+00
  %4785 = fadd fast float %4765, %4755
  %4786 = fmul fast float %4785, %4737
  %4787 = fadd fast float %4779, %4756
  %4788 = fmul fast float %4787, %4738
  %4789 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4786, float %4788, float undef, float undef, i32 0, i32 0, i32 undef, float %4742)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4790 = extractvalue %dx.types.ResRet.f32 %4789, 0
  %4791 = fmul fast float %4790, %4758
  %4792 = fadd fast float %4770, %4755
  %4793 = fmul fast float %4792, %4737
  %4794 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4793, float %4788, float undef, float undef, i32 0, i32 0, i32 undef, float %4742)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4795 = extractvalue %dx.types.ResRet.f32 %4794, 0
  %4796 = fmul fast float %4795, %4759
  %4797 = fadd fast float %4784, %4756
  %4798 = fmul fast float %4797, %4738
  %4799 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4786, float %4798, float undef, float undef, i32 0, i32 0, i32 undef, float %4742)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4800 = extractvalue %dx.types.ResRet.f32 %4799, 0
  %4801 = fmul fast float %4800, %4758
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4793, float %4798, float undef, float undef, i32 0, i32 0, i32 undef, float %4742)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = fmul fast float %4803, %4759
  %4805 = fadd fast float %4804, %4801
  %4806 = fmul fast float %4805, %4773
  %4807 = fadd fast float %4796, %4791
  %4808 = fmul fast float %4807, %4772
  %4809 = fadd fast float %4808, %4806
  %4810 = fmul fast float %4809, 6.250000e-02
  br label %4896

; <label>:4811                                    ; preds = %4732
  %4812 = fmul fast float %248, 0x401921FB60000000
  %4813 = call float @dx.op.unary.f32(i32 13, float %4812)  ; Sin(value)
  %4814 = call float @dx.op.unary.f32(i32 12, float %4812)  ; Cos(value)
  %4815 = fsub fast float -0.000000e+00, %4813
  br label %4816

; <label>:4816                                    ; preds = %4865, %4811
  %4817 = phi float [ 0.000000e+00, %4811 ], [ %4860, %4865 ]
  %4818 = phi float [ 0.000000e+00, %4811 ], [ %4862, %4865 ]
  %4819 = phi i32 [ 0, %4811 ], [ %4866, %4865 ]
  %4820 = mul i32 %4819, 2
  %4821 = add i32 0, %4820
  %4822 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4821
  %4823 = load float, float* %4822, align 4
  %4824 = mul i32 %4819, 2
  %4825 = add i32 1, %4824
  %4826 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4825
  %4827 = load float, float* %4826, align 4
  %4828 = fmul fast float %4823, %4814
  %4829 = call float @dx.op.tertiary.f32(i32 46, float %4827, float %4815, float %4828)  ; FMad(a,b,c)
  %4830 = fmul fast float %4823, %4813
  %4831 = call float @dx.op.tertiary.f32(i32 46, float %4827, float %4814, float %4830)  ; FMad(a,b,c)
  %4832 = fmul fast float %4829, %4740
  %4833 = fmul fast float %4831, %4740
  %4834 = fadd fast float %4832, %4056
  %4835 = fadd fast float %4833, %4057
  %4836 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %4834, float %4835, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4837 = extractvalue %dx.types.ResRet.f32 %4836, 0
  %4838 = extractvalue %dx.types.ResRet.f32 %4836, 1
  %4839 = extractvalue %dx.types.ResRet.f32 %4836, 2
  %4840 = extractvalue %dx.types.ResRet.f32 %4836, 3
  %4841 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %4837, float* %4841, align 4
  %4842 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %4838, float* %4842, align 4
  %4843 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %4839, float* %4843, align 4
  %4844 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %4840, float* %4844, align 4
  %4845 = fsub fast float %4837, %4742
  %4846 = fcmp fast olt float %4845, 0.000000e+00
  %4847 = select i1 %4846, float 0.000000e+00, float 1.000000e+00
  %4848 = fadd fast float %4847, %4817
  %4849 = fmul fast float %4847, %4845
  %4850 = fadd fast float %4849, %4818
  br label %4851

; <label>:4851                                    ; preds = %4851, %4816
  %4852 = phi i32 [ 1, %4816 ], [ %4863, %4851 ]
  %4853 = phi float [ %4850, %4816 ], [ %4862, %4851 ]
  %4854 = phi float [ %4848, %4816 ], [ %4860, %4851 ]
  %4855 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %4852
  %4856 = load float, float* %4855, align 4, !tbaa !133, !noalias !123
  %4857 = fsub fast float %4856, %4742
  %4858 = fcmp fast olt float %4857, 0.000000e+00
  %4859 = select i1 %4858, float 0.000000e+00, float 1.000000e+00
  %4860 = fadd fast float %4859, %4854
  %4861 = fmul fast float %4859, %4857
  %4862 = fadd fast float %4861, %4853
  %4863 = add nuw nsw i32 %4852, 1
  %4864 = icmp eq i32 %4863, 4
  br i1 %4864, label %4865, label %4851, !llvm.loop !135

; <label>:4865                                    ; preds = %4851
  %4866 = add nuw nsw i32 %4819, 1
  %4867 = icmp eq i32 %4866, 8
  br i1 %4867, label %4868, label %4816, !llvm.loop !136

; <label>:4868                                    ; preds = %4865
  %4869 = fdiv fast float 1.000000e+00, %4860
  %4870 = fmul fast float %4869, %4862
  %4871 = fdiv fast float 1.000000e+00, %4742
  %4872 = fmul fast float %4870, %4871
  %4873 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4874 = call float @dx.op.binary.f32(i32 35, float %4873, float 0.000000e+00)  ; FMax(a,b)
  %4875 = fmul fast float %4860, 3.125000e-02
  %4876 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4877 = fmul fast float %4876, 2.000000e+00
  %4878 = fadd fast float %4877, -1.000000e+00
  %4879 = fcmp fast ogt float %4878, 0.000000e+00
  %4880 = fcmp fast olt float %4878, 0.000000e+00
  %4881 = zext i1 %4879 to i32
  %4882 = zext i1 %4880 to i32
  %4883 = sub nsw i32 %4881, %4882
  %4884 = sitofp i32 %4883 to float
  %4885 = fmul fast float %4884, %4878
  %4886 = fsub fast float 1.000000e+00, %4885
  %4887 = fmul fast float %4886, %4886
  %4888 = fmul fast float %4887, %4886
  %4889 = fsub fast float %4886, %4888
  %4890 = fmul fast float %4889, %4874
  %4891 = fsub fast float 1.000000e+00, %4888
  %4892 = fsub fast float %4891, %4890
  %4893 = fmul fast float %4884, 5.000000e-01
  %4894 = fmul fast float %4893, %4892
  %4895 = fsub fast float 5.000000e-01, %4894
  br label %4896

; <label>:4896                                    ; preds = %4868, %4744, %4729
  %4897 = phi float [ 1.000000e+00, %4729 ], [ %4810, %4744 ], [ %4895, %4868 ]
  %4898 = fcmp fast ogt float %4159, 0.000000e+00
  br i1 %4898, label %4899, label %5063, !dx.controlflow.hints !138

; <label>:4899                                    ; preds = %4896
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 0
  %4902 = fadd fast float %4901, %4049
  %4903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4904 = extractvalue %dx.types.CBufRet.f32 %4903, 2
  %4905 = extractvalue %dx.types.CBufRet.f32 %4903, 3
  %4906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.f32 %4906, 0
  %4908 = call float @dx.op.binary.f32(i32 35, float %4902, float 0.000000e+00)  ; FMax(a,b)
  %4909 = fadd fast float %4908, 0x3F10000000000000
  %4910 = fcmp fast oeq float %4907, 0.000000e+00
  br i1 %4910, label %4911, label %4978

; <label>:4911                                    ; preds = %4899
  %4912 = extractvalue %dx.types.CBufRet.f32 %4903, 1
  %4913 = extractvalue %dx.types.CBufRet.f32 %4903, 0
  %4914 = fmul fast float %4913, %4041
  %4915 = fmul fast float %4912, %4045
  %4916 = fadd fast float %4914, 5.000000e-01
  %4917 = call float @dx.op.unary.f32(i32 27, float %4916)  ; Round_ni(value)
  %4918 = fadd fast float %4915, 5.000000e-01
  %4919 = call float @dx.op.unary.f32(i32 27, float %4918)  ; Round_ni(value)
  %4920 = fsub fast float %4916, %4917
  %4921 = fsub fast float %4918, %4919
  %4922 = fadd fast float %4917, -5.000000e-01
  %4923 = fadd fast float %4919, -5.000000e-01
  %4924 = fmul fast float %4920, 2.000000e+00
  %4925 = fsub fast float 3.000000e+00, %4924
  %4926 = fadd fast float %4924, 1.000000e+00
  %4927 = fsub fast float 2.000000e+00, %4920
  %4928 = bitcast float %4925 to i32
  %4929 = sub nsw i32 2129859010, %4928
  %4930 = bitcast i32 %4929 to float
  %4931 = fmul fast float %4930, %4927
  %4932 = fadd fast float %4931, -1.000000e+00
  %4933 = bitcast float %4926 to i32
  %4934 = sub nsw i32 2129859010, %4933
  %4935 = bitcast i32 %4934 to float
  %4936 = fmul fast float %4935, %4920
  %4937 = fadd fast float %4936, 1.000000e+00
  %4938 = fmul fast float %4921, 2.000000e+00
  %4939 = fsub fast float 3.000000e+00, %4938
  %4940 = fadd fast float %4938, 1.000000e+00
  %4941 = fsub fast float 2.000000e+00, %4921
  %4942 = bitcast float %4939 to i32
  %4943 = sub nsw i32 2129859010, %4942
  %4944 = bitcast i32 %4943 to float
  %4945 = fmul fast float %4944, %4941
  %4946 = fadd fast float %4945, -1.000000e+00
  %4947 = bitcast float %4940 to i32
  %4948 = sub nsw i32 2129859010, %4947
  %4949 = bitcast i32 %4948 to float
  %4950 = fmul fast float %4949, %4921
  %4951 = fadd fast float %4950, 1.000000e+00
  %4952 = fadd fast float %4932, %4922
  %4953 = fmul fast float %4952, %4904
  %4954 = fadd fast float %4946, %4923
  %4955 = fmul fast float %4954, %4905
  %4956 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4953, float %4955, float undef, float undef, i32 0, i32 0, i32 undef, float %4909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4957 = extractvalue %dx.types.ResRet.f32 %4956, 0
  %4958 = fmul fast float %4957, %4925
  %4959 = fadd fast float %4937, %4922
  %4960 = fmul fast float %4959, %4904
  %4961 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4960, float %4955, float undef, float undef, i32 0, i32 0, i32 undef, float %4909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4962 = extractvalue %dx.types.ResRet.f32 %4961, 0
  %4963 = fmul fast float %4962, %4926
  %4964 = fadd fast float %4951, %4923
  %4965 = fmul fast float %4964, %4905
  %4966 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4953, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float %4909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4967 = extractvalue %dx.types.ResRet.f32 %4966, 0
  %4968 = fmul fast float %4967, %4925
  %4969 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4960, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float %4909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4970 = extractvalue %dx.types.ResRet.f32 %4969, 0
  %4971 = fmul fast float %4970, %4926
  %4972 = fadd fast float %4971, %4968
  %4973 = fmul fast float %4972, %4940
  %4974 = fadd fast float %4963, %4958
  %4975 = fmul fast float %4974, %4939
  %4976 = fadd fast float %4975, %4973
  %4977 = fmul fast float %4976, 6.250000e-02
  br label %5063

; <label>:4978                                    ; preds = %4899
  %4979 = fmul fast float %248, 0x401921FB60000000
  %4980 = call float @dx.op.unary.f32(i32 13, float %4979)  ; Sin(value)
  %4981 = call float @dx.op.unary.f32(i32 12, float %4979)  ; Cos(value)
  %4982 = fsub fast float -0.000000e+00, %4980
  br label %4983

; <label>:4983                                    ; preds = %5032, %4978
  %4984 = phi float [ 0.000000e+00, %4978 ], [ %5027, %5032 ]
  %4985 = phi float [ 0.000000e+00, %4978 ], [ %5029, %5032 ]
  %4986 = phi i32 [ 0, %4978 ], [ %5033, %5032 ]
  %4987 = mul i32 %4986, 2
  %4988 = add i32 0, %4987
  %4989 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4988
  %4990 = load float, float* %4989, align 4
  %4991 = mul i32 %4986, 2
  %4992 = add i32 1, %4991
  %4993 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4992
  %4994 = load float, float* %4993, align 4
  %4995 = fmul fast float %4990, %4981
  %4996 = call float @dx.op.tertiary.f32(i32 46, float %4994, float %4982, float %4995)  ; FMad(a,b,c)
  %4997 = fmul fast float %4990, %4980
  %4998 = call float @dx.op.tertiary.f32(i32 46, float %4994, float %4981, float %4997)  ; FMad(a,b,c)
  %4999 = fmul fast float %4996, %4907
  %5000 = fmul fast float %4998, %4907
  %5001 = fadd fast float %4999, %4041
  %5002 = fadd fast float %5000, %4045
  %5003 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5001, float %5002, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5004 = extractvalue %dx.types.ResRet.f32 %5003, 0
  %5005 = extractvalue %dx.types.ResRet.f32 %5003, 1
  %5006 = extractvalue %dx.types.ResRet.f32 %5003, 2
  %5007 = extractvalue %dx.types.ResRet.f32 %5003, 3
  %5008 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %5004, float* %5008, align 4
  %5009 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %5005, float* %5009, align 4
  %5010 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %5006, float* %5010, align 4
  %5011 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %5007, float* %5011, align 4
  %5012 = fsub fast float %5004, %4909
  %5013 = fcmp fast olt float %5012, 0.000000e+00
  %5014 = select i1 %5013, float 0.000000e+00, float 1.000000e+00
  %5015 = fadd fast float %5014, %4984
  %5016 = fmul fast float %5014, %5012
  %5017 = fadd fast float %5016, %4985
  br label %5018

; <label>:5018                                    ; preds = %5018, %4983
  %5019 = phi i32 [ 1, %4983 ], [ %5030, %5018 ]
  %5020 = phi float [ %5017, %4983 ], [ %5029, %5018 ]
  %5021 = phi float [ %5015, %4983 ], [ %5027, %5018 ]
  %5022 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %5019
  %5023 = load float, float* %5022, align 4, !tbaa !133, !noalias !123
  %5024 = fsub fast float %5023, %4909
  %5025 = fcmp fast olt float %5024, 0.000000e+00
  %5026 = select i1 %5025, float 0.000000e+00, float 1.000000e+00
  %5027 = fadd fast float %5026, %5021
  %5028 = fmul fast float %5026, %5024
  %5029 = fadd fast float %5028, %5020
  %5030 = add nuw nsw i32 %5019, 1
  %5031 = icmp eq i32 %5030, 4
  br i1 %5031, label %5032, label %5018, !llvm.loop !135

; <label>:5032                                    ; preds = %5018
  %5033 = add nuw nsw i32 %4986, 1
  %5034 = icmp eq i32 %5033, 8
  br i1 %5034, label %5035, label %4983, !llvm.loop !136

; <label>:5035                                    ; preds = %5032
  %5036 = fdiv fast float 1.000000e+00, %5027
  %5037 = fmul fast float %5036, %5029
  %5038 = fdiv fast float 1.000000e+00, %4909
  %5039 = fmul fast float %5037, %5038
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = call float @dx.op.binary.f32(i32 35, float %5040, float 0.000000e+00)  ; FMax(a,b)
  %5042 = fmul fast float %5027, 3.125000e-02
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fmul fast float %5043, 2.000000e+00
  %5045 = fadd fast float %5044, -1.000000e+00
  %5046 = fcmp fast ogt float %5045, 0.000000e+00
  %5047 = fcmp fast olt float %5045, 0.000000e+00
  %5048 = zext i1 %5046 to i32
  %5049 = zext i1 %5047 to i32
  %5050 = sub nsw i32 %5048, %5049
  %5051 = sitofp i32 %5050 to float
  %5052 = fmul fast float %5051, %5045
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = fmul fast float %5053, %5053
  %5055 = fmul fast float %5054, %5053
  %5056 = fsub fast float %5053, %5055
  %5057 = fmul fast float %5056, %5041
  %5058 = fsub fast float 1.000000e+00, %5055
  %5059 = fsub fast float %5058, %5057
  %5060 = fmul fast float %5051, 5.000000e-01
  %5061 = fmul fast float %5060, %5059
  %5062 = fsub fast float 5.000000e-01, %5061
  br label %5063

; <label>:5063                                    ; preds = %5035, %4911, %4896
  %5064 = phi float [ 1.000000e+00, %4896 ], [ %4977, %4911 ], [ %5062, %5035 ]
  %5065 = fsub fast float %4730, %4565
  %5066 = fmul fast float %5065, %4103
  %5067 = fadd fast float %5066, %4565
  %5068 = fsub fast float %4897, %5067
  %5069 = fmul fast float %5068, %4133
  %5070 = fadd fast float %5069, %5067
  %5071 = fsub fast float %5064, %5070
  %5072 = fmul fast float %5071, %4159
  %5073 = fadd fast float %5072, %5070
  %5074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.f32 %5074, 2
  %5076 = fcmp fast ogt float %5075, 0.000000e+00
  br i1 %5076, label %5077, label %5117, !dx.controlflow.hints !139

; <label>:5077                                    ; preds = %5063
  %5078 = fcmp fast ugt float %5075, 0.000000e+00
  br i1 %5078, label %5079, label %5114

; <label>:5079                                    ; preds = %5077
  %5080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5081 = extractvalue %dx.types.CBufRet.f32 %5080, 0
  %5082 = extractvalue %dx.types.CBufRet.f32 %5080, 1
  %5083 = extractvalue %dx.types.CBufRet.f32 %5080, 2
  %5084 = extractvalue %dx.types.CBufRet.f32 %5080, 3
  %5085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.CBufRet.f32 %5085, 1
  %5088 = extractvalue %dx.types.CBufRet.f32 %5085, 2
  %5089 = extractvalue %dx.types.CBufRet.f32 %5085, 3
  %5090 = extractvalue %dx.types.CBufRet.f32 %5074, 0
  %5091 = extractvalue %dx.types.CBufRet.f32 %5074, 1
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.CBufRet.f32 %5092, 1
  %5095 = extractvalue %dx.types.CBufRet.f32 %5092, 2
  %5096 = fadd fast float %5093, %4018
  %5097 = fadd fast float %5094, %4019
  %5098 = fadd fast float %5095, %4020
  %5099 = fmul fast float %5096, %5081
  %5100 = call float @dx.op.tertiary.f32(i32 46, float %5082, float %5097, float %5099)  ; FMad(a,b,c)
  %5101 = call float @dx.op.tertiary.f32(i32 46, float %5083, float %5098, float %5100)  ; FMad(a,b,c)
  %5102 = fadd fast float %5101, %5084
  %5103 = fmul fast float %5096, %5086
  %5104 = call float @dx.op.tertiary.f32(i32 46, float %5087, float %5097, float %5103)  ; FMad(a,b,c)
  %5105 = call float @dx.op.tertiary.f32(i32 46, float %5088, float %5098, float %5104)  ; FMad(a,b,c)
  %5106 = fadd fast float %5105, %5089
  %5107 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5102, float %5106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5108 = extractvalue %dx.types.ResRet.f32 %5107, 0
  %5109 = fmul fast float %5108, %5091
  %5110 = fadd fast float %5109, %5090
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = fmul fast float %5111, %5075
  %5113 = fsub fast float 1.000000e+00, %5112
  br label %5114

; <label>:5114                                    ; preds = %5079, %5077
  %5115 = phi float [ %5113, %5079 ], [ 1.000000e+00, %5077 ]
  %5116 = fmul fast float %5115, %5073
  br label %5117

; <label>:5117                                    ; preds = %5114, %5063, %3998
  %5118 = phi float [ 1.000000e+00, %3998 ], [ %5116, %5114 ], [ %5073, %5063 ]
  %5119 = call float @dx.op.binary.f32(i32 36, float %5118, float %5118)  ; FMin(a,b)
  %5120 = call float @dx.op.binary.f32(i32 36, float %5118, float %5119)  ; FMin(a,b)
  %5121 = fcmp fast ogt float %5120, 0.000000e+00
  br i1 %5121, label %5122, label %5287, !dx.controlflow.hints !140

; <label>:5122                                    ; preds = %5117
  %5123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5124 = extractvalue %dx.types.CBufRet.f32 %5123, 0
  %5125 = extractvalue %dx.types.CBufRet.f32 %5123, 1
  %5126 = extractvalue %dx.types.CBufRet.f32 %5123, 2
  %5127 = extractvalue %dx.types.CBufRet.f32 %5123, 3
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 0
  %5130 = extractvalue %dx.types.CBufRet.f32 %5128, 1
  %5131 = extractvalue %dx.types.CBufRet.f32 %5128, 2
  %5132 = extractvalue %dx.types.CBufRet.f32 %5128, 3
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 0
  %5135 = extractvalue %dx.types.CBufRet.f32 %5133, 1
  %5136 = extractvalue %dx.types.CBufRet.f32 %5133, 2
  %5137 = extractvalue %dx.types.CBufRet.f32 %5133, 3
  %5138 = fmul fast float %5124, %4018
  %5139 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %5125, float %5138)  ; FMad(a,b,c)
  %5140 = call float @dx.op.tertiary.f32(i32 46, float %4020, float %5126, float %5139)  ; FMad(a,b,c)
  %5141 = fadd fast float %5140, %5127
  %5142 = fmul fast float %5129, %4018
  %5143 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %5130, float %5142)  ; FMad(a,b,c)
  %5144 = call float @dx.op.tertiary.f32(i32 46, float %4020, float %5131, float %5143)  ; FMad(a,b,c)
  %5145 = fadd fast float %5144, %5132
  %5146 = fmul fast float %5134, %4018
  %5147 = call float @dx.op.tertiary.f32(i32 46, float %4019, float %5135, float %5146)  ; FMad(a,b,c)
  %5148 = call float @dx.op.tertiary.f32(i32 46, float %4020, float %5136, float %5147)  ; FMad(a,b,c)
  %5149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.f32 %5149, 0
  %5151 = extractvalue %dx.types.CBufRet.f32 %5149, 1
  %5152 = extractvalue %dx.types.CBufRet.f32 %5149, 3
  %5153 = fmul fast float %5152, %5141
  %5154 = fmul fast float %5152, %5145
  %5155 = fadd fast float %5153, %5150
  %5156 = fadd fast float %5154, %5151
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 0
  %5159 = extractvalue %dx.types.CBufRet.f32 %5157, 1
  %5160 = fsub fast float %5155, %5158
  %5161 = fsub fast float %5156, %5159
  %5162 = fcmp fast olt float %5160, 0.000000e+00
  %5163 = fcmp fast olt float %5161, 0.000000e+00
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.CBufRet.f32 %5164, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5164, 2
  %5168 = extractvalue %dx.types.CBufRet.f32 %5164, 3
  %5169 = select i1 %5162, float %5165, float %5167
  %5170 = select i1 %5163, float %5166, float %5168
  %5171 = fmul fast float %5169, %5160
  %5172 = fmul fast float %5170, %5161
  %5173 = call float @dx.op.unary.f32(i32 6, float %5171)  ; FAbs(value)
  %5174 = call float @dx.op.unary.f32(i32 6, float %5172)  ; FAbs(value)
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 0
  %5177 = call float @dx.op.binary.f32(i32 35, float %5173, float %5174)  ; FMax(a,b)
  %5178 = fsub fast float %5176, %5177
  %5179 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5180 = fcmp fast ogt float %5179, 0.000000e+00
  br i1 %5180, label %5181, label %5222, !dx.controlflow.hints !141

; <label>:5181                                    ; preds = %5122
  %5182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5155, float %5156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5183 = extractvalue %dx.types.ResRet.f32 %5182, 1
  %5184 = fcmp fast ogt float %5183, 0.000000e+00
  br i1 %5184, label %5185, label %5217

; <label>:5185                                    ; preds = %5181
  %5186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5155, float %5156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5187 = extractvalue %dx.types.ResRet.f32 %5186, 0
  %5188 = extractvalue %dx.types.ResRet.f32 %5186, 1
  %5189 = extractvalue %dx.types.ResRet.f32 %5186, 2
  %5190 = extractvalue %dx.types.ResRet.f32 %5186, 3
  %5191 = fsub fast float 1.000000e+00, %5137
  %5192 = fsub fast float %5191, %5148
  %5193 = fmul fast float %5192, 0x400921FB60000000
  %5194 = fadd fast float %5193, 0x3FF921FB60000000
  %5195 = call float @dx.op.unary.f32(i32 13, float %5194)  ; Sin(value)
  %5196 = fadd fast float %5195, -1.000000e+00
  %5197 = fmul fast float %5196, 0x3FD45F3060000000
  %5198 = fmul fast float %5192, 0x401921FB60000000
  %5199 = fadd fast float %5198, 0x400921FB60000000
  %5200 = call float @dx.op.unary.f32(i32 13, float %5199)  ; Sin(value)
  %5201 = fadd fast float %5200, 0x3E7777A5C0000000
  %5202 = fmul fast float %5201, 0x3FC45F3060000000
  %5203 = fmul fast float %5192, 0x4022D97C80000000
  %5204 = fadd fast float %5203, 0x4012D97C80000000
  %5205 = call float @dx.op.unary.f32(i32 13, float %5204)  ; Sin(value)
  %5206 = fadd fast float %5205, 1.000000e+00
  %5207 = fmul fast float %5206, 0x3FBB2995E0000000
  %5208 = fmul fast float %5192, 0x402921FB60000000
  %5209 = fadd fast float %5208, 0x401921FB60000000
  %5210 = call float @dx.op.unary.f32(i32 13, float %5209)  ; Sin(value)
  %5211 = fadd fast float %5210, 0xBE8777A5C0000000
  %5212 = fmul fast float %5211, 0x3FB45F3060000000
  %5213 = call float @dx.op.dot4.f32(i32 56, float %5187, float %5188, float %5189, float %5190, float %5197, float %5202, float %5207, float %5212)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5214 = fmul fast float %5213, 0xBFF7154760000000
  %5215 = call float @dx.op.unary.f32(i32 21, float %5214)  ; Exp(value)
  %5216 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  br label %5217

; <label>:5217                                    ; preds = %5185, %5181
  %5218 = phi float [ %5216, %5185 ], [ 1.000000e+00, %5181 ]
  %5219 = fadd fast float %5218, -1.000000e+00
  %5220 = fmul fast float %5219, %5179
  %5221 = fadd fast float %5220, 1.000000e+00
  br label %5222

; <label>:5222                                    ; preds = %5217, %5122
  %5223 = phi float [ %5221, %5217 ], [ 1.000000e+00, %5122 ]
  %5224 = fmul fast float %5223, %5118
  %5225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5226 = extractvalue %dx.types.CBufRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.CBufRet.f32 %5225, 1
  %5228 = extractvalue %dx.types.CBufRet.f32 %5225, 2
  %5229 = fadd fast float %5226, %146
  %5230 = fadd fast float %5227, %147
  %5231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5232 = extractvalue %dx.types.CBufRet.f32 %5231, 1
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 0
  %5235 = extractvalue %dx.types.CBufRet.f32 %5233, 1
  %5236 = extractvalue %dx.types.CBufRet.f32 %5233, 2
  %5237 = fsub fast float -0.000000e+00, %5229
  %5238 = fsub fast float -0.000000e+00, %5230
  %5239 = fsub fast float %2118, %5228
  %5240 = fadd fast float %5239, %5232
  %5241 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5237, float %5238, float %5240)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5234, float %5235, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5243 = fdiv fast float 1.000000e+00, %5242
  %5244 = fmul fast float %5243, %5241
  %5245 = fmul fast float %5234, %5244
  %5246 = fmul fast float %5235, %5244
  %5247 = fadd fast float %5245, %5229
  %5248 = fadd fast float %5246, %5230
  %5249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.f32 %5249, 0
  %5251 = extractvalue %dx.types.CBufRet.f32 %5249, 1
  %5252 = fsub fast float %5247, %5250
  %5253 = fsub fast float %5248, %5251
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 3
  %5257 = fmul fast float %5252, %5255
  %5258 = fmul fast float %5253, %5256
  %5259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.i32 %5259, 3
  %5261 = icmp eq i32 %5260, 0
  br i1 %5261, label %5267, label %5262

; <label>:5262                                    ; preds = %5222
  %5263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5257, float %5258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.ResRet.f32 %5263, 1
  %5266 = extractvalue %dx.types.ResRet.f32 %5263, 2
  br label %5272

; <label>:5267                                    ; preds = %5222
  %5268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5257, float %5258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 0
  %5270 = extractvalue %dx.types.ResRet.f32 %5268, 1
  %5271 = extractvalue %dx.types.ResRet.f32 %5268, 2
  br label %5272

; <label>:5272                                    ; preds = %5267, %5262
  %5273 = phi float [ %5264, %5262 ], [ %5269, %5267 ]
  %5274 = phi float [ %5265, %5262 ], [ %5270, %5267 ]
  %5275 = phi float [ %5266, %5262 ], [ %5271, %5267 ]
  %5276 = extractvalue %dx.types.CBufRet.f32 %5231, 2
  %5277 = fmul fast float %5276, %5273
  %5278 = extractvalue %dx.types.CBufRet.f32 %5231, 0
  %5279 = fsub fast float %5244, %5278
  %5280 = fsub fast float %5279, %5277
  %5281 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5280)  ; FMax(a,b)
  %5282 = fmul fast float %5281, %5274
  %5283 = call float @dx.op.binary.f32(i32 36, float %5275, float %5282)  ; FMin(a,b)
  %5284 = fmul fast float %5283, 0xBFF7154760000000
  %5285 = call float @dx.op.unary.f32(i32 21, float %5284)  ; Exp(value)
  %5286 = fmul fast float %5224, %5285
  br label %5287

; <label>:5287                                    ; preds = %5272, %5117
  %5288 = phi float [ %5286, %5272 ], [ %5118, %5117 ]
  %5289 = call float @dx.op.binary.f32(i32 36, float %5288, float %5288)  ; FMin(a,b)
  %5290 = call float @dx.op.binary.f32(i32 36, float %5288, float %5289)  ; FMin(a,b)
  %5291 = fcmp fast ogt float %5290, 0.000000e+00
  br i1 %5291, label %5292, label %5539, !dx.controlflow.hints !142

; <label>:5292                                    ; preds = %5287
  %5293 = fmul fast float %5288, %4010
  %5294 = fmul fast float %5288, %4011
  %5295 = fmul fast float %5288, %4012
  %5296 = fsub fast float %148, %1906
  %5297 = fcmp fast ogt float %5296, 0.000000e+00
  %5298 = fmul fast float %3999, 5.120000e+02
  %5299 = fmul fast float %4000, 5.120000e+02
  %5300 = fmul fast float %4001, 5.120000e+02
  %5301 = fadd fast float %5300, %148
  %5302 = fsub fast float %1906, %5301
  %5303 = fmul fast float %5302, 2.000000e+00
  %5304 = fadd fast float %5303, %5301
  %5305 = select i1 %5297, float %5304, float %5301
  %5306 = fsub fast float %5305, %148
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5306, float %5298, float %5299, float %5306)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = call float @dx.op.unary.f32(i32 25, float %5307)  ; Rsqrt(value)
  %5309 = fmul fast float %5308, %5298
  %5310 = fmul fast float %5308, %5299
  %5311 = fmul fast float %5308, %5306
  %5312 = fsub fast float %1906, %148
  %5313 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5312)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5309, float %5310, float %5311)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = fdiv fast float 1.000000e+00, %5314
  %5316 = fmul fast float %5315, %5313
  %5317 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5296, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = fcmp fast ogt float %5317, 0.000000e+00
  %5319 = fcmp fast olt float %5317, 0.000000e+00
  %5320 = zext i1 %5318 to i32
  %5321 = zext i1 %5319 to i32
  %5322 = sub nsw i32 %5320, %5321
  %5323 = sitofp i32 %5322 to float
  %5324 = fsub fast float %5305, %1906
  %5325 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5324, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5326 = fcmp fast ogt float %5325, 0.000000e+00
  %5327 = fcmp fast olt float %5325, 0.000000e+00
  %5328 = zext i1 %5326 to i32
  %5329 = zext i1 %5327 to i32
  %5330 = sub nsw i32 %5328, %5329
  %5331 = sitofp i32 %5330 to float
  %5332 = fcmp fast une float %5323, %5331
  br i1 %5332, label %5333, label %5343

; <label>:5333                                    ; preds = %5292
  %5334 = fmul fast float %5316, %5311
  %5335 = fmul fast float %5316, %5310
  %5336 = fmul fast float %5316, %5309
  %5337 = fmul fast float %5336, %5336
  %5338 = fmul fast float %5335, %5335
  %5339 = fadd fast float %5337, %5338
  %5340 = fmul fast float %5334, %5334
  %5341 = fadd fast float %5339, %5340
  %5342 = call float @dx.op.unary.f32(i32 24, float %5341)  ; Sqrt(value)
  br label %5353

; <label>:5343                                    ; preds = %5292
  %5344 = icmp slt i32 %5322, 0
  br i1 %5344, label %5345, label %5353

; <label>:5345                                    ; preds = %5343
  %5346 = fsub fast float %148, %5305
  %5347 = fmul fast float %5298, %5298
  %5348 = fmul fast float %5299, %5299
  %5349 = fadd fast float %5347, %5348
  %5350 = fmul fast float %5346, %5346
  %5351 = fadd fast float %5349, %5350
  %5352 = call float @dx.op.unary.f32(i32 24, float %5351)  ; Sqrt(value)
  br label %5353

; <label>:5353                                    ; preds = %5345, %5343, %5333
  %5354 = phi float [ %5342, %5333 ], [ %5352, %5345 ], [ 0.000000e+00, %5343 ]
  %5355 = fsub fast float -0.000000e+00, %5354
  %5356 = select i1 %5297, float -0.000000e+00, float %5355
  %5357 = fmul fast float %1907, 0x3FF7154760000000
  %5358 = fmul fast float %5357, %5356
  %5359 = fmul fast float %1908, 0x3FF7154760000000
  %5360 = fmul fast float %5359, %5356
  %5361 = fmul fast float %1909, 0x3FF7154760000000
  %5362 = fmul fast float %5361, %5356
  %5363 = call float @dx.op.unary.f32(i32 21, float %5358)  ; Exp(value)
  %5364 = call float @dx.op.unary.f32(i32 21, float %5360)  ; Exp(value)
  %5365 = call float @dx.op.unary.f32(i32 21, float %5362)  ; Exp(value)
  %5366 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5368 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5369 = fmul fast float %5293, %5366
  %5370 = fmul fast float %5294, %5367
  %5371 = fmul fast float %5295, %5368
  %5372 = fsub fast float %3999, %2106
  %5373 = fsub fast float %4000, %2105
  %5374 = fsub fast float %4001, %2104
  %5375 = call float @dx.op.dot3.f32(i32 55, float %5372, float %5373, float %5374, float %5372, float %5373, float %5374)  ; Dot3(ax,ay,az,bx,by,bz)
  %5376 = call float @dx.op.unary.f32(i32 25, float %5375)  ; Rsqrt(value)
  %5377 = fmul fast float %5376, %5372
  %5378 = fmul fast float %5376, %5373
  %5379 = fmul fast float %5376, %5374
  %5380 = call float @dx.op.dot3.f32(i32 55, float %3999, float %4000, float %4001, float %2110, float %2111, float %2112)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = call float @dx.op.dot3.f32(i32 55, float %2103, float %2102, float %2101, float %5377, float %5378, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5382 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5383 = fmul fast float %5382, %5382
  %5384 = fmul fast float %5383, %3994
  %5385 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5386 = fmul fast float %5385, %5382
  %5387 = call float @dx.op.dot3.f32(i32 55, float %2110, float %2111, float %2112, float %5377, float %5378, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = fmul fast float %5387, %5387
  %5389 = call float @dx.op.unary.f32(i32 6, float %5380)  ; FAbs(value)
  %5390 = fsub fast float 1.000000e+00, %2139
  %5391 = fmul fast float %2121, %2121
  %5392 = fmul fast float %5391, %5390
  %5393 = fadd fast float %5392, %2139
  %5394 = bitcast float %5393 to i32
  %5395 = ashr i32 %5394, 1
  %5396 = add nsw i32 %5395, 532487669
  %5397 = bitcast i32 %5396 to float
  %5398 = fadd fast float %5397, %2121
  %5399 = fmul fast float %2139, %5388
  %5400 = fsub fast float 1.000000e+00, %5388
  %5401 = fadd fast float %5400, %5399
  %5402 = fmul fast float %5389, %5389
  %5403 = fmul fast float %5402, %5390
  %5404 = fadd fast float %5403, %2139
  %5405 = bitcast float %5404 to i32
  %5406 = ashr i32 %5405, 1
  %5407 = add nsw i32 %5406, 532487669
  %5408 = bitcast i32 %5407 to float
  %5409 = fadd fast float %5408, %5389
  %5410 = fmul fast float %5401, %5401
  %5411 = fmul fast float %5410, %5398
  %5412 = fmul fast float %5411, %5409
  %5413 = fdiv fast float 0x3FF0A00000000000, %5412
  %5414 = fmul fast float %5413, %2139
  %5415 = call float @dx.op.unary.f32(i32 6, float %5381)  ; FAbs(value)
  %5416 = fsub fast float 1.000000e+00, %5415
  %5417 = bitcast float %5416 to i32
  %5418 = sitofp i32 %5417 to float
  %5419 = fmul fast float %5418, 5.000000e+00
  %5420 = fadd fast float %5419, 0xC1EFBF8940000000
  %5421 = fptosi float %5420 to i32
  %5422 = bitcast i32 %5421 to float
  %5423 = fsub fast float 1.000000e+00, %2113
  %5424 = fsub fast float 1.000000e+00, %2114
  %5425 = fsub fast float 1.000000e+00, %2119
  %5426 = fmul fast float %5422, %5423
  %5427 = fmul fast float %5422, %5424
  %5428 = fmul fast float %5422, %5425
  %5429 = fadd fast float %5426, %2113
  %5430 = fadd fast float %5427, %2114
  %5431 = fadd fast float %5428, %2119
  br i1 %3417, label %5432, label %5455

; <label>:5432                                    ; preds = %5353
  %5433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1484, float %5415, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5434 = extractvalue %dx.types.ResRet.f32 %5433, 0
  %5435 = extractvalue %dx.types.ResRet.f32 %5433, 1
  %5436 = extractvalue %dx.types.ResRet.f32 %5433, 2
  %5437 = fadd fast float %5434, -5.000000e-01
  %5438 = fadd fast float %5435, -5.000000e-01
  %5439 = fadd fast float %5436, -5.000000e-01
  %5440 = fmul fast float %2113, 4.000000e+00
  %5441 = fmul fast float %5440, %5423
  %5442 = fmul fast float %5441, %5437
  %5443 = fmul fast float %2114, 4.000000e+00
  %5444 = fmul fast float %5443, %5424
  %5445 = fmul fast float %5444, %5438
  %5446 = fmul fast float %2119, 4.000000e+00
  %5447 = fmul fast float %5446, %5425
  %5448 = fmul fast float %5447, %5439
  %5449 = fadd fast float %5442, %5429
  %5450 = fadd fast float %5445, %5430
  %5451 = fadd fast float %5448, %5431
  %5452 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5453 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5454 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  br label %5455

; <label>:5455                                    ; preds = %5432, %5353
  %5456 = phi float [ %5452, %5432 ], [ %5429, %5353 ]
  %5457 = phi float [ %5453, %5432 ], [ %5430, %5353 ]
  %5458 = phi float [ %5454, %5432 ], [ %5431, %5353 ]
  %5459 = fmul fast float %5380, 9.843750e-01
  %5460 = fadd fast float %5459, 7.812500e-03
  %5461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5460, float %3407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5462 = extractvalue %dx.types.ResRet.f32 %5461, 2
  %5463 = extractvalue %dx.types.ResRet.f32 %5461, 3
  %5464 = fmul fast float %5462, %2113
  %5465 = fmul fast float %5462, %2114
  %5466 = fmul fast float %5462, %2119
  %5467 = fadd fast float %5464, %5463
  %5468 = fadd fast float %5465, %5463
  %5469 = fadd fast float %5466, %5463
  br i1 %3417, label %5470, label %5493

; <label>:5470                                    ; preds = %5455
  %5471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1484, float %5380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5472 = extractvalue %dx.types.ResRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.ResRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.ResRet.f32 %5471, 2
  %5475 = fadd fast float %5472, -5.000000e-01
  %5476 = fadd fast float %5473, -5.000000e-01
  %5477 = fadd fast float %5474, -5.000000e-01
  %5478 = fmul fast float %2113, 4.000000e+00
  %5479 = fmul fast float %5478, %5423
  %5480 = fmul fast float %5479, %5475
  %5481 = fmul fast float %2114, 4.000000e+00
  %5482 = fmul fast float %5481, %5424
  %5483 = fmul fast float %5482, %5476
  %5484 = fmul fast float %2119, 4.000000e+00
  %5485 = fmul fast float %5484, %5425
  %5486 = fmul fast float %5485, %5477
  %5487 = fadd fast float %5480, %5467
  %5488 = fadd fast float %5483, %5468
  %5489 = fadd fast float %5486, %5469
  %5490 = call float @dx.op.unary.f32(i32 7, float %5487)  ; Saturate(value)
  %5491 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  %5492 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  br label %5493

; <label>:5493                                    ; preds = %5470, %5455
  %5494 = phi float [ %5490, %5470 ], [ %5467, %5455 ]
  %5495 = phi float [ %5491, %5470 ], [ %5468, %5455 ]
  %5496 = phi float [ %5492, %5470 ], [ %5469, %5455 ]
  %5497 = call float @dx.op.binary.f32(i32 35, float %5495, float %5496)  ; FMax(a,b)
  %5498 = call float @dx.op.binary.f32(i32 35, float %5494, float %5497)  ; FMax(a,b)
  %5499 = fsub fast float 1.000000e+00, %5498
  %5500 = fmul fast float %5456, %5414
  %5501 = fmul fast float %5457, %5414
  %5502 = fmul fast float %5458, %5414
  %5503 = fsub fast float 1.000000e+00, %5381
  %5504 = bitcast float %5503 to i32
  %5505 = sitofp i32 %5504 to float
  %5506 = fmul fast float %5505, 5.000000e+00
  %5507 = fadd fast float %5506, 0xC1EFBF8940000000
  %5508 = fptosi float %5507 to i32
  %5509 = bitcast i32 %5508 to float
  %5510 = fmul fast float %5509, %1483
  %5511 = fmul fast float %5499, %5510
  %5512 = fmul fast float %5511, %3959
  %5513 = fmul fast float %5511, %3960
  %5514 = fmul fast float %5511, %3961
  %5515 = fadd fast float %5512, %5500
  %5516 = fadd fast float %5513, %5501
  %5517 = fadd fast float %5514, %5502
  %5518 = fmul fast float %5386, %5369
  %5519 = fmul fast float %5518, %5499
  %5520 = fmul fast float %5386, %5370
  %5521 = fmul fast float %5520, %5499
  %5522 = fmul fast float %5386, %5371
  %5523 = fmul fast float %5522, %5499
  %5524 = fmul fast float %5518, %5515
  %5525 = fmul fast float %5520, %5516
  %5526 = fmul fast float %5522, %5517
  %5527 = fadd fast float %5519, %3943
  %5528 = fmul fast float %5527, %1504
  %5529 = fadd fast float %5521, %3944
  %5530 = fmul fast float %5529, %1504
  %5531 = fadd fast float %5523, %3945
  %5532 = fmul fast float %5531, %1504
  %5533 = fadd fast float %5524, %3986
  %5534 = fmul fast float %5533, %1504
  %5535 = fadd fast float %5525, %3989
  %5536 = fmul fast float %5535, %1504
  %5537 = fadd fast float %5526, %3992
  %5538 = fmul fast float %5537, %1504
  br label %5539

; <label>:5539                                    ; preds = %5493, %5287, %3939
  %5540 = phi float [ %3987, %3939 ], [ %3987, %5287 ], [ %5534, %5493 ]
  %5541 = phi float [ %3990, %3939 ], [ %3990, %5287 ], [ %5536, %5493 ]
  %5542 = phi float [ %3993, %3939 ], [ %3993, %5287 ], [ %5538, %5493 ]
  %5543 = phi float [ %3982, %3939 ], [ %3982, %5287 ], [ %5528, %5493 ]
  %5544 = phi float [ %3983, %3939 ], [ %3983, %5287 ], [ %5530, %5493 ]
  %5545 = phi float [ %3984, %3939 ], [ %3984, %5287 ], [ %5532, %5493 ]
  %5546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.i32 %5546, 0
  %5548 = icmp eq i32 %5547, 0
  br i1 %5548, label %6211, label %5549

; <label>:5549                                    ; preds = %5539
  %5550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5551 = extractvalue %dx.types.CBufRet.f32 %5550, 2
  %5552 = extractvalue %dx.types.CBufRet.f32 %5550, 3
  %5553 = fmul fast float %5551, %99
  %5554 = fmul fast float %5552, %100
  %5555 = fptoui float %5553 to i32
  %5556 = fptoui float %5554 to i32
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.CBufRet.f32 %5557, 2
  %5560 = extractvalue %dx.types.CBufRet.f32 %5557, 3
  %5561 = fadd fast float %87, -4.000000e+00
  %5562 = call float @dx.op.binary.f32(i32 35, float %5561, float 0.000000e+00)  ; FMax(a,b)
  %5563 = fadd fast float %5562, %5558
  %5564 = fmul fast float %5563, %5559
  %5565 = call float @dx.op.unary.f32(i32 23, float %5564)  ; Log(value)
  %5566 = fmul fast float %5565, %5560
  %5567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5568 = extractvalue %dx.types.CBufRet.f32 %5567, 2
  %5569 = fmul fast float %5566, %5568
  %5570 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  %5571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5572 = extractvalue %dx.types.CBufRet.i32 %5571, 1
  %5573 = add i32 %5572, -1
  %5574 = uitofp i32 %5572 to float
  %5575 = fmul fast float %5574, %5570
  %5576 = fptoui float %5575 to i32
  %5577 = call i32 @dx.op.binary.i32(i32 40, i32 %5576, i32 %5573)  ; UMin(a,b)
  %5578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.i32 %5578, 2
  %5580 = extractvalue %dx.types.CBufRet.i32 %5578, 3
  %5581 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5556, i32 %5579, i32 %5555)  ; UMad(a,b,c)
  %5582 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5577, i32 %5580, i32 %5581)  ; UMad(a,b,c)
  %5583 = add nsw i32 %5547, -1
  %5584 = call i32 @dx.op.binary.i32(i32 37, i32 %5583, i32 0)  ; IMax(a,b)
  %5585 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %5586 = fptoui float %5585 to i32
  %5587 = lshr i32 %5586, 5
  %5588 = call i32 @dx.op.binary.i32(i32 40, i32 %5587, i32 8191)  ; UMin(a,b)
  %5589 = shl i32 %5588, 2
  %5590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5589, i32 undef)  ; BufferLoad(srv,index,wot)
  %5591 = extractvalue %dx.types.ResRet.i32 %5590, 0
  %5592 = lshr i32 %5591, 16
  %5593 = and i32 %5591, 65535
  %5594 = lshr i32 %5591, 21
  %5595 = lshr i32 %5593, 5
  %5596 = call i32 @dx.op.binary.i32(i32 40, i32 %5595, i32 %5584)  ; UMin(a,b)
  %5597 = icmp ugt i32 %5594, %5596
  br i1 %5597, label %6211, label %5598

; <label>:5598                                    ; preds = %5549
  br label %5599

; <label>:5599                                    ; preds = %6201, %5598
  %5600 = phi i32 [ %6208, %6201 ], [ %5594, %5598 ]
  %5601 = phi float [ %6202, %6201 ], [ %5540, %5598 ]
  %5602 = phi float [ %6203, %6201 ], [ %5541, %5598 ]
  %5603 = phi float [ %6204, %6201 ], [ %5542, %5598 ]
  %5604 = phi float [ %6205, %6201 ], [ %5543, %5598 ]
  %5605 = phi float [ %6206, %6201 ], [ %5544, %5598 ]
  %5606 = phi float [ %6207, %6201 ], [ %5545, %5598 ]
  %5607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.i32 %5607, 0
  %5609 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5582, i32 %5608, i32 %5600)  ; UMad(a,b,c)
  %5610 = shl i32 %5609, 2
  %5611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5610, i32 undef)  ; BufferLoad(srv,index,wot)
  %5612 = extractvalue %dx.types.ResRet.i32 %5611, 0
  %5613 = shl i32 %5600, 5
  %5614 = sub nsw i32 %5592, %5613
  %5615 = call i32 @dx.op.binary.i32(i32 37, i32 %5614, i32 0)  ; IMax(a,b)
  %5616 = call i32 @dx.op.binary.i32(i32 38, i32 %5615, i32 31)  ; IMin(a,b)
  %5617 = sub nsw i32 1, %5592
  %5618 = add nsw i32 %5617, %5593
  %5619 = call i32 @dx.op.binary.i32(i32 37, i32 %5618, i32 0)  ; IMax(a,b)
  %5620 = call i32 @dx.op.binary.i32(i32 38, i32 %5619, i32 32)  ; IMin(a,b)
  %5621 = and i32 %5620, 31
  %5622 = shl i32 -1, %5621
  %5623 = xor i32 %5622, -1
  %5624 = and i32 %5616, 31
  %5625 = shl i32 %5623, %5624
  %5626 = icmp eq i32 %5620, 32
  %5627 = select i1 %5626, i32 -1, i32 %5625
  %5628 = and i32 %5627, %5612
  %5629 = icmp eq i32 %5628, 0
  br i1 %5629, label %6201, label %5630

; <label>:5630                                    ; preds = %5599
  br label %5631

; <label>:5631                                    ; preds = %5765, %5630
  %5632 = phi i32 [ %5643, %5765 ], [ %5628, %5630 ]
  %5633 = phi float [ %5766, %5765 ], [ %5601, %5630 ]
  %5634 = phi float [ %5767, %5765 ], [ %5602, %5630 ]
  %5635 = phi float [ %5768, %5765 ], [ %5603, %5630 ]
  %5636 = phi float [ %5769, %5765 ], [ %5604, %5630 ]
  %5637 = phi float [ %5770, %5765 ], [ %5605, %5630 ]
  %5638 = phi float [ %5771, %5765 ], [ %5606, %5630 ]
  %5639 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5632)  ; FirstbitLo(value)
  %5640 = add i32 %5639, %5613
  %5641 = and i32 %5639, 31
  %5642 = shl i32 1, %5641
  %5643 = xor i32 %5642, %5632
  %5644 = mul i32 %5640, 112
  %5645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5644, i32 undef)  ; BufferLoad(srv,index,wot)
  %5646 = extractvalue %dx.types.ResRet.f32 %5645, 0
  %5647 = extractvalue %dx.types.ResRet.f32 %5645, 1
  %5648 = extractvalue %dx.types.ResRet.f32 %5645, 2
  %5649 = or i32 %5644, 12
  %5650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5649, i32 undef)  ; BufferLoad(srv,index,wot)
  %5651 = extractvalue %dx.types.ResRet.f32 %5650, 0
  %5652 = add i32 %5644, 16
  %5653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5652, i32 undef)  ; BufferLoad(srv,index,wot)
  %5654 = extractvalue %dx.types.ResRet.f32 %5653, 0
  %5655 = extractvalue %dx.types.ResRet.f32 %5653, 1
  %5656 = extractvalue %dx.types.ResRet.f32 %5653, 2
  %5657 = add i32 %5644, 28
  %5658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5657, i32 undef)  ; BufferLoad(srv,index,wot)
  %5659 = extractvalue %dx.types.ResRet.i32 %5658, 0
  %5660 = add i32 %5644, 44
  %5661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5660, i32 undef)  ; BufferLoad(srv,index,wot)
  %5662 = extractvalue %dx.types.ResRet.f32 %5661, 0
  %5663 = add i32 %5644, 48
  %5664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5663, i32 undef)  ; BufferLoad(srv,index,wot)
  %5665 = extractvalue %dx.types.ResRet.f32 %5664, 0
  %5666 = extractvalue %dx.types.ResRet.f32 %5664, 1
  %5667 = extractvalue %dx.types.ResRet.f32 %5664, 2
  %5668 = extractvalue %dx.types.ResRet.f32 %5664, 3
  %5669 = add i32 %5644, 64
  %5670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5669, i32 undef)  ; BufferLoad(srv,index,wot)
  %5671 = extractvalue %dx.types.ResRet.f32 %5670, 0
  %5672 = extractvalue %dx.types.ResRet.f32 %5670, 1
  %5673 = extractvalue %dx.types.ResRet.f32 %5670, 2
  %5674 = extractvalue %dx.types.ResRet.f32 %5670, 3
  %5675 = add i32 %5644, 80
  %5676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5675, i32 undef)  ; BufferLoad(srv,index,wot)
  %5677 = extractvalue %dx.types.ResRet.f32 %5676, 1
  %5678 = extractvalue %dx.types.ResRet.f32 %5676, 2
  %5679 = add i32 %5644, 92
  %5680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5679, i32 undef)  ; BufferLoad(srv,index,wot)
  %5681 = extractvalue %dx.types.ResRet.i32 %5680, 0
  %5682 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = select i1 %237, float %5677, float %5646
  %5684 = select i1 %237, float %5682, float %5647
  %5685 = select i1 %237, float %5678, float %5648
  %5686 = and i32 %5681, 65535
  %5687 = uitofp i32 %5686 to float
  %5688 = lshr i32 %5681, 16
  %5689 = uitofp i32 %5688 to float
  %5690 = and i32 %5659, 65535
  %5691 = and i32 %5659, 50331648
  %5692 = icmp eq i32 %5691, 33554432
  %5693 = fsub fast float %5665, %146
  %5694 = fsub fast float %5666, %147
  %5695 = fsub fast float %5667, %148
  %5696 = call float @dx.op.dot3.f32(i32 55, float %5693, float %5694, float %5695, float %5693, float %5694, float %5695)  ; Dot3(ax,ay,az,bx,by,bz)
  %5697 = call float @dx.op.unary.f32(i32 24, float %5696)  ; Sqrt(value)
  %5698 = fdiv fast float 1.000000e+00, %5697
  %5699 = fmul fast float %5698, %5693
  %5700 = fmul fast float %5698, %5694
  %5701 = fmul fast float %5698, %5695
  %5702 = fadd fast float %5697, %5651
  %5703 = fdiv fast float 1.000000e+00, %5702
  %5704 = fmul float %5662, %5703
  %5705 = fmul float %5704, %5704
  %5706 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  br i1 %5692, label %5707, label %5728

; <label>:5707                                    ; preds = %5631
  %5708 = fmul fast float %5673, %5654
  %5709 = fmul fast float %5673, %5655
  %5710 = fmul fast float %5673, %5656
  %5711 = fadd fast float %5693, %5708
  %5712 = fadd fast float %5694, %5709
  %5713 = fadd fast float %5695, %5710
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5711, float %5712, float %5713, float %5711, float %5712, float %5713)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = call float @dx.op.unary.f32(i32 25, float %5714)  ; Rsqrt(value)
  %5716 = fmul fast float %5715, %5711
  %5717 = fmul fast float %5715, %5712
  %5718 = fmul fast float %5715, %5713
  %5719 = fsub fast float %146, %5665
  %5720 = fsub fast float %147, %5666
  %5721 = fsub fast float %148, %5667
  %5722 = fsub fast float -0.000000e+00, %5719
  %5723 = fsub fast float -0.000000e+00, %5720
  %5724 = fsub fast float -0.000000e+00, %5721
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5722, float %5723, float %5724, float %5654, float %5655, float %5656)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = fcmp fast ogt float %5725, 0.000000e+00
  %5727 = uitofp i1 %5726 to float
  br label %5728

; <label>:5728                                    ; preds = %5707, %5631
  %5729 = phi float [ %5727, %5707 ], [ 1.000000e+00, %5631 ]
  %5730 = phi float [ %5716, %5707 ], [ %5699, %5631 ]
  %5731 = phi float [ %5717, %5707 ], [ %5700, %5631 ]
  %5732 = phi float [ %5718, %5707 ], [ %5701, %5631 ]
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5654, float %5655, float %5656, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = fmul fast float %5733, %5733
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = fsub fast float 1.000000e+00, %5735
  %5737 = fmul fast float %5736, 5.000000e-01
  %5738 = fcmp fast ogt float %5733, 0.000000e+00
  %5739 = fsub fast float 1.000000e+00, %5737
  %5740 = select i1 %5738, float %5737, float %5739
  %5741 = fmul fast float %5740, %5689
  %5742 = fadd fast float %5741, %5687
  %5743 = fmul fast float %5742, 0x3EF0001000000000
  %5744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %5743, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = fmul fast float %5733, %5671
  %5747 = fadd fast float %5746, %5672
  %5748 = call float @dx.op.unary.f32(i32 7, float %5747)  ; Saturate(value)
  %5749 = select i1 %5692, float 1.000000e+00, float %5748
  %5750 = select i1 %5692, float %5748, float 1.000000e+00
  %5751 = fmul fast float %5697, %5668
  %5752 = fsub fast float 1.000000e+00, %5751
  %5753 = fmul fast float %5752, %5674
  %5754 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5755 = fmul fast float %5754, %5750
  %5756 = fmul fast float %5755, 2.000000e+00
  %5757 = fsub fast float 3.000000e+00, %5756
  %5758 = fmul fast float %5745, %5729
  %5759 = fmul fast float %5755, %5755
  %5760 = fmul fast float %5759, %5758
  %5761 = fmul fast float %5760, %5757
  %5762 = call float @dx.op.binary.f32(i32 36, float %5761, float %5761)  ; FMin(a,b)
  %5763 = call float @dx.op.binary.f32(i32 36, float %5761, float %5762)  ; FMin(a,b)
  %5764 = fcmp fast ogt float %5763, 0.000000e+00
  br i1 %5764, label %5773, label %5765, !dx.controlflow.hints !143

; <label>:5765                                    ; preds = %6157, %5919, %5728
  %5766 = phi float [ %5633, %5919 ], [ %5633, %5728 ], [ %6197, %6157 ]
  %5767 = phi float [ %5634, %5919 ], [ %5634, %5728 ], [ %6198, %6157 ]
  %5768 = phi float [ %5635, %5919 ], [ %5635, %5728 ], [ %6199, %6157 ]
  %5769 = phi float [ %5636, %5919 ], [ %5636, %5728 ], [ %6191, %6157 ]
  %5770 = phi float [ %5637, %5919 ], [ %5637, %5728 ], [ %6192, %6157 ]
  %5771 = phi float [ %5638, %5919 ], [ %5638, %5728 ], [ %6193, %6157 ]
  %5772 = icmp eq i32 %5632, %5642
  br i1 %5772, label %6200, label %5631

; <label>:5773                                    ; preds = %5728
  %5774 = icmp eq i32 %5690, 255
  br i1 %5774, label %5919, label %5775, !dx.controlflow.hints !144

; <label>:5775                                    ; preds = %5773
  %5776 = mul nuw nsw i32 %5690, 176
  %5777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5776, i32 undef)  ; BufferLoad(srv,index,wot)
  %5778 = extractvalue %dx.types.ResRet.f32 %5777, 0
  %5779 = extractvalue %dx.types.ResRet.f32 %5777, 1
  %5780 = extractvalue %dx.types.ResRet.f32 %5777, 2
  %5781 = extractvalue %dx.types.ResRet.f32 %5777, 3
  %5782 = add nuw nsw i32 %5776, 16
  %5783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5782, i32 undef)  ; BufferLoad(srv,index,wot)
  %5784 = extractvalue %dx.types.ResRet.f32 %5783, 0
  %5785 = extractvalue %dx.types.ResRet.f32 %5783, 1
  %5786 = add nuw nsw i32 %5776, 32
  %5787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5786, i32 undef)  ; BufferLoad(srv,index,wot)
  %5788 = extractvalue %dx.types.ResRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.ResRet.f32 %5787, 1
  %5790 = extractvalue %dx.types.ResRet.f32 %5787, 2
  %5791 = add nuw nsw i32 %5776, 48
  %5792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5791, i32 undef)  ; BufferLoad(srv,index,wot)
  %5793 = extractvalue %dx.types.ResRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.ResRet.f32 %5792, 1
  %5795 = extractvalue %dx.types.ResRet.f32 %5792, 2
  %5796 = extractvalue %dx.types.ResRet.f32 %5792, 3
  %5797 = add nuw nsw i32 %5776, 64
  %5798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5797, i32 undef)  ; BufferLoad(srv,index,wot)
  %5799 = extractvalue %dx.types.ResRet.f32 %5798, 0
  %5800 = extractvalue %dx.types.ResRet.f32 %5798, 1
  %5801 = extractvalue %dx.types.ResRet.f32 %5798, 2
  %5802 = extractvalue %dx.types.ResRet.f32 %5798, 3
  %5803 = add nuw nsw i32 %5776, 80
  %5804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5803, i32 undef)  ; BufferLoad(srv,index,wot)
  %5805 = extractvalue %dx.types.ResRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.ResRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.ResRet.f32 %5804, 2
  %5808 = extractvalue %dx.types.ResRet.f32 %5804, 3
  %5809 = add nuw nsw i32 %5776, 96
  %5810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5809, i32 undef)  ; BufferLoad(srv,index,wot)
  %5811 = extractvalue %dx.types.ResRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.ResRet.f32 %5810, 1
  %5813 = extractvalue %dx.types.ResRet.f32 %5810, 2
  %5814 = extractvalue %dx.types.ResRet.f32 %5810, 3
  %5815 = bitcast float %5785 to i32
  %5816 = fmul fast float %5790, %76
  %5817 = fmul fast float %5790, %77
  %5818 = fmul fast float %5790, %78
  %5819 = fadd fast float %5816, %146
  %5820 = fadd fast float %5817, %147
  %5821 = fadd fast float %5818, %148
  %5822 = fmul fast float %5819, %5793
  %5823 = call float @dx.op.tertiary.f32(i32 46, float %5820, float %5799, float %5822)  ; FMad(a,b,c)
  %5824 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5805, float %5823)  ; FMad(a,b,c)
  %5825 = fadd fast float %5824, %5811
  %5826 = fmul fast float %5819, %5794
  %5827 = call float @dx.op.tertiary.f32(i32 46, float %5820, float %5800, float %5826)  ; FMad(a,b,c)
  %5828 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5806, float %5827)  ; FMad(a,b,c)
  %5829 = fadd fast float %5828, %5812
  %5830 = fmul fast float %5819, %5795
  %5831 = call float @dx.op.tertiary.f32(i32 46, float %5820, float %5801, float %5830)  ; FMad(a,b,c)
  %5832 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5807, float %5831)  ; FMad(a,b,c)
  %5833 = fadd fast float %5832, %5813
  %5834 = fmul fast float %5819, %5796
  %5835 = call float @dx.op.tertiary.f32(i32 46, float %5820, float %5802, float %5834)  ; FMad(a,b,c)
  %5836 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5808, float %5835)  ; FMad(a,b,c)
  %5837 = fadd fast float %5836, %5814
  %5838 = fdiv fast float %5825, %5837
  %5839 = fdiv fast float %5829, %5837
  %5840 = fdiv fast float %5833, %5837
  %5841 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5840)  ; FMax(a,b)
  %5842 = fmul fast float %248, 0x401921FB60000000
  %5843 = call float @dx.op.unary.f32(i32 13, float %5842)  ; Sin(value)
  %5844 = call float @dx.op.unary.f32(i32 12, float %5842)  ; Cos(value)
  %5845 = fmul fast float %5844, %5789
  %5846 = call float @dx.op.tertiary.f32(i32 46, float %5843, float %5789, float 0.000000e+00)  ; FMad(a,b,c)
  %5847 = fmul fast float %5789, %5843
  %5848 = fsub fast float -0.000000e+00, %5847
  %5849 = call float @dx.op.tertiary.f32(i32 46, float %5844, float %5789, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5850

; <label>:5850                                    ; preds = %5850, %5775
  %5851 = phi float [ 0.000000e+00, %5775 ], [ %5883, %5850 ]
  %5852 = phi float [ 0.000000e+00, %5775 ], [ %5885, %5850 ]
  %5853 = phi i32 [ 0, %5775 ], [ %5886, %5850 ]
  %5854 = mul i32 %5853, 2
  %5855 = add i32 0, %5854
  %5856 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5855
  %5857 = load float, float* %5856, align 4
  %5858 = mul i32 %5853, 2
  %5859 = add i32 1, %5858
  %5860 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5859
  %5861 = load float, float* %5860, align 4
  %5862 = fmul fast float %5845, %5857
  %5863 = call float @dx.op.tertiary.f32(i32 46, float %5861, float %5848, float %5862)  ; FMad(a,b,c)
  %5864 = fmul fast float %5857, %5846
  %5865 = call float @dx.op.tertiary.f32(i32 46, float %5861, float %5849, float %5864)  ; FMad(a,b,c)
  %5866 = fadd fast float %5863, %5838
  %5867 = fadd fast float %5865, %5839
  %5868 = fmul fast float %5866, %5784
  %5869 = fmul fast float %5867, %5784
  %5870 = call float @dx.op.binary.f32(i32 35, float %5868, float %5780)  ; FMax(a,b)
  %5871 = call float @dx.op.binary.f32(i32 35, float %5869, float %5780)  ; FMax(a,b)
  %5872 = call float @dx.op.binary.f32(i32 36, float %5870, float %5781)  ; FMin(a,b)
  %5873 = call float @dx.op.binary.f32(i32 36, float %5871, float %5781)  ; FMin(a,b)
  %5874 = fadd fast float %5872, %5778
  %5875 = fadd fast float %5873, %5779
  %5876 = uitofp i32 %5815 to float
  %5877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %5874, float %5875, float %5876, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5878 = extractvalue %dx.types.ResRet.f32 %5877, 0
  %5879 = fsub fast float %5878, %5841
  %5880 = fsub fast float %5879, %5788
  %5881 = fcmp fast ogt float %5880, 0.000000e+00
  %5882 = select i1 %5881, float 1.000000e+00, float 0.000000e+00
  %5883 = fadd fast float %5882, %5851
  %5884 = select i1 %5881, float %5880, float 0.000000e+00
  %5885 = fadd fast float %5884, %5852
  %5886 = add nuw nsw i32 %5853, 1
  %5887 = icmp eq i32 %5886, 8
  br i1 %5887, label %5888, label %5850

; <label>:5888                                    ; preds = %5850
  %5889 = fdiv fast float 1.000000e+00, %5883
  %5890 = fmul fast float %5889, %5885
  %5891 = fdiv fast float 1.000000e+00, %5841
  %5892 = fmul fast float %5890, %5891
  %5893 = call float @dx.op.unary.f32(i32 7, float %5892)  ; Saturate(value)
  %5894 = call float @dx.op.binary.f32(i32 35, float %5893, float 0.000000e+00)  ; FMax(a,b)
  %5895 = fmul fast float %5883, 1.250000e-01
  %5896 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5897 = fmul fast float %5896, 2.000000e+00
  %5898 = fadd fast float %5897, -1.000000e+00
  %5899 = fcmp fast ogt float %5898, 0.000000e+00
  %5900 = fcmp fast olt float %5898, 0.000000e+00
  %5901 = zext i1 %5899 to i32
  %5902 = zext i1 %5900 to i32
  %5903 = sub nsw i32 %5901, %5902
  %5904 = sitofp i32 %5903 to float
  %5905 = fmul fast float %5904, %5898
  %5906 = fsub fast float 1.000000e+00, %5905
  %5907 = fmul fast float %5906, %5906
  %5908 = fmul fast float %5907, %5906
  %5909 = fsub fast float %5906, %5908
  %5910 = fmul fast float %5909, %5894
  %5911 = fsub fast float 1.000000e+00, %5908
  %5912 = fsub fast float %5911, %5910
  %5913 = fmul fast float %5904, 5.000000e-01
  %5914 = fmul fast float %5913, %5912
  %5915 = fsub fast float -5.000000e-01, %5914
  %5916 = fmul fast float %5915, %5749
  %5917 = fadd fast float %5916, 1.000000e+00
  %5918 = fmul fast float %5917, %5761
  br label %5919

; <label>:5919                                    ; preds = %5888, %5773
  %5920 = phi float [ %5918, %5888 ], [ %5761, %5773 ]
  %5921 = call float @dx.op.binary.f32(i32 36, float %5920, float %5920)  ; FMin(a,b)
  %5922 = call float @dx.op.binary.f32(i32 36, float %5920, float %5921)  ; FMin(a,b)
  %5923 = fcmp fast ogt float %5922, 0.000000e+00
  br i1 %5923, label %5924, label %5765, !dx.controlflow.hints !145

; <label>:5924                                    ; preds = %5919
  %5925 = fmul fast float %5920, %5683
  %5926 = fmul fast float %5920, %5684
  %5927 = fmul fast float %5920, %5685
  %5928 = fsub fast float %5667, %1906
  %5929 = fcmp fast ogt float %5928, 0.000000e+00
  %5930 = fsub fast float %148, %1906
  %5931 = fcmp fast ogt float %5930, 0.000000e+00
  %5932 = xor i1 %5931, %5929
  %5933 = fsub fast float %1906, %5667
  %5934 = fmul fast float %5933, 2.000000e+00
  %5935 = fadd fast float %5934, %5667
  %5936 = select i1 %5932, float %5667, float %5935
  %5937 = fsub fast float %5936, %148
  %5938 = call float @dx.op.dot3.f32(i32 55, float %5693, float %5694, float %5937, float %5693, float %5694, float %5937)  ; Dot3(ax,ay,az,bx,by,bz)
  %5939 = call float @dx.op.unary.f32(i32 25, float %5938)  ; Rsqrt(value)
  %5940 = fmul fast float %5939, %5693
  %5941 = fmul fast float %5939, %5694
  %5942 = fmul fast float %5939, %5937
  %5943 = fsub fast float %1906, %148
  %5944 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5940, float %5941, float %5942)  ; Dot3(ax,ay,az,bx,by,bz)
  %5946 = fdiv fast float 1.000000e+00, %5945
  %5947 = fmul fast float %5946, %5944
  %5948 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5930, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5949 = fcmp fast ogt float %5948, 0.000000e+00
  %5950 = fcmp fast olt float %5948, 0.000000e+00
  %5951 = zext i1 %5949 to i32
  %5952 = zext i1 %5950 to i32
  %5953 = sub nsw i32 %5951, %5952
  %5954 = sitofp i32 %5953 to float
  %5955 = fsub fast float %5936, %1906
  %5956 = call float @dx.op.dot3.f32(i32 55, float %5693, float %5694, float %5955, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5957 = fcmp fast ogt float %5956, 0.000000e+00
  %5958 = fcmp fast olt float %5956, 0.000000e+00
  %5959 = zext i1 %5957 to i32
  %5960 = zext i1 %5958 to i32
  %5961 = sub nsw i32 %5959, %5960
  %5962 = sitofp i32 %5961 to float
  %5963 = fcmp fast une float %5954, %5962
  br i1 %5963, label %5964, label %5974

; <label>:5964                                    ; preds = %5924
  %5965 = fmul fast float %5947, %5942
  %5966 = fmul fast float %5947, %5941
  %5967 = fmul fast float %5947, %5940
  %5968 = fmul fast float %5967, %5967
  %5969 = fmul fast float %5966, %5966
  %5970 = fadd fast float %5968, %5969
  %5971 = fmul fast float %5965, %5965
  %5972 = fadd fast float %5970, %5971
  %5973 = call float @dx.op.unary.f32(i32 24, float %5972)  ; Sqrt(value)
  br label %5986

; <label>:5974                                    ; preds = %5924
  %5975 = icmp slt i32 %5953, 0
  br i1 %5975, label %5976, label %5986

; <label>:5976                                    ; preds = %5974
  %5977 = fsub fast float %146, %5665
  %5978 = fsub fast float %147, %5666
  %5979 = fsub fast float %148, %5936
  %5980 = fmul fast float %5977, %5977
  %5981 = fmul fast float %5978, %5978
  %5982 = fadd fast float %5980, %5981
  %5983 = fmul fast float %5979, %5979
  %5984 = fadd fast float %5982, %5983
  %5985 = call float @dx.op.unary.f32(i32 24, float %5984)  ; Sqrt(value)
  br label %5986

; <label>:5986                                    ; preds = %5976, %5974, %5964
  %5987 = phi float [ %5973, %5964 ], [ %5985, %5976 ], [ 0.000000e+00, %5974 ]
  %5988 = and i1 %5931, %5929
  %5989 = fsub fast float -0.000000e+00, %5987
  %5990 = select i1 %5988, float -0.000000e+00, float %5989
  %5991 = fmul fast float %1907, 0x3FF7154760000000
  %5992 = fmul fast float %5991, %5990
  %5993 = fmul fast float %1908, 0x3FF7154760000000
  %5994 = fmul fast float %5993, %5990
  %5995 = fmul fast float %1909, 0x3FF7154760000000
  %5996 = fmul fast float %5995, %5990
  %5997 = call float @dx.op.unary.f32(i32 21, float %5992)  ; Exp(value)
  %5998 = call float @dx.op.unary.f32(i32 21, float %5994)  ; Exp(value)
  %5999 = call float @dx.op.unary.f32(i32 21, float %5996)  ; Exp(value)
  %6000 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  %6001 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6002 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  %6003 = fmul fast float %5925, %6000
  %6004 = fmul fast float %5926, %6001
  %6005 = fmul fast float %5927, %6002
  %6006 = fsub fast float %5699, %2106
  %6007 = fsub fast float %5700, %2105
  %6008 = fsub fast float %5701, %2104
  %6009 = call float @dx.op.dot3.f32(i32 55, float %6006, float %6007, float %6008, float %6006, float %6007, float %6008)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = call float @dx.op.unary.f32(i32 25, float %6009)  ; Rsqrt(value)
  %6011 = fmul fast float %6010, %6006
  %6012 = fmul fast float %6010, %6007
  %6013 = fmul fast float %6010, %6008
  %6014 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5700, float %5701, float %2110, float %2111, float %2112)  ; Dot3(ax,ay,az,bx,by,bz)
  %6015 = call float @dx.op.dot3.f32(i32 55, float %2103, float %2102, float %2101, float %6011, float %6012, float %6013)  ; Dot3(ax,ay,az,bx,by,bz)
  %6016 = call float @dx.op.unary.f32(i32 7, float %6014)  ; Saturate(value)
  %6017 = fmul fast float %6016, %5706
  %6018 = fmul fast float %6016, %6016
  %6019 = fmul fast float %6018, %3994
  %6020 = call float @dx.op.unary.f32(i32 7, float %6019)  ; Saturate(value)
  %6021 = fmul fast float %6017, %6020
  %6022 = bitcast float %5696 to i32
  %6023 = ashr i32 %6022, 1
  %6024 = sub nsw i32 1597463007, %6023
  %6025 = bitcast i32 %6024 to float
  %6026 = fmul fast float %6025, %5693
  %6027 = fmul fast float %6025, %5694
  %6028 = fmul fast float %6025, %5695
  %6029 = fsub fast float %6026, %2106
  %6030 = fsub fast float %6027, %2105
  %6031 = fsub fast float %6028, %2104
  %6032 = call float @dx.op.dot3.f32(i32 55, float %6029, float %6030, float %6031, float %6029, float %6030, float %6031)  ; Dot3(ax,ay,az,bx,by,bz)
  %6033 = call float @dx.op.unary.f32(i32 25, float %6032)  ; Rsqrt(value)
  %6034 = fmul fast float %6029, %6033
  %6035 = fmul fast float %6030, %6033
  %6036 = fmul fast float %6031, %6033
  %6037 = call float @dx.op.dot3.f32(i32 55, float %2110, float %2111, float %2112, float %6034, float %6035, float %6036)  ; Dot3(ax,ay,az,bx,by,bz)
  %6038 = fmul fast float %6037, %6037
  %6039 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6040 = fsub fast float 1.000000e+00, %2139
  %6041 = fmul fast float %2121, %2121
  %6042 = fmul fast float %6041, %6040
  %6043 = fadd fast float %6042, %2139
  %6044 = bitcast float %6043 to i32
  %6045 = ashr i32 %6044, 1
  %6046 = add nsw i32 %6045, 532487669
  %6047 = bitcast i32 %6046 to float
  %6048 = fadd fast float %6047, %2121
  %6049 = fmul fast float %2139, %6038
  %6050 = fsub fast float 1.000000e+00, %6038
  %6051 = fadd fast float %6050, %6049
  %6052 = fmul fast float %6039, %6039
  %6053 = fmul fast float %6052, %6040
  %6054 = fadd fast float %6053, %2139
  %6055 = bitcast float %6054 to i32
  %6056 = ashr i32 %6055, 1
  %6057 = add nsw i32 %6056, 532487669
  %6058 = bitcast i32 %6057 to float
  %6059 = fadd fast float %6058, %6039
  %6060 = fmul fast float %6051, %6051
  %6061 = fmul fast float %6060, %6048
  %6062 = fmul fast float %6061, %6059
  %6063 = fdiv fast float 1.000000e+00, %6062
  %6064 = bitcast float %2139 to i32
  %6065 = sitofp i32 %6064 to float
  %6066 = fmul fast float %6065, 0x3FE7F73180000000
  %6067 = fadd fast float %6066, 0x41AFE27C40000000
  %6068 = fptosi float %6067 to i32
  %6069 = bitcast i32 %6068 to float
  %6070 = fmul fast float %5662, 0x3FD80E9D60000000
  %6071 = fmul fast float %6070, %6025
  %6072 = fadd fast float %6069, %6071
  %6073 = bitcast float %6072 to i32
  %6074 = sub nsw i32 2129859010, %6073
  %6075 = bitcast i32 %6074 to float
  %6076 = fmul fast float %2139, %6063
  %6077 = fmul fast float %6076, %6069
  %6078 = fmul fast float %6077, %6075
  %6079 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6080 = fsub fast float 1.000000e+00, %6079
  %6081 = bitcast float %6080 to i32
  %6082 = sitofp i32 %6081 to float
  %6083 = fmul fast float %6082, 5.000000e+00
  %6084 = fadd fast float %6083, 0xC1EFBF8940000000
  %6085 = fptosi float %6084 to i32
  %6086 = bitcast i32 %6085 to float
  %6087 = fsub fast float 1.000000e+00, %2113
  %6088 = fsub fast float 1.000000e+00, %2114
  %6089 = fsub fast float 1.000000e+00, %2119
  %6090 = fmul fast float %6086, %6087
  %6091 = fmul fast float %6086, %6088
  %6092 = fmul fast float %6086, %6089
  %6093 = fadd fast float %6090, %2113
  %6094 = fadd fast float %6091, %2114
  %6095 = fadd fast float %6092, %2119
  br i1 %3417, label %6096, label %6119

; <label>:6096                                    ; preds = %5986
  %6097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1484, float %6079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6098 = extractvalue %dx.types.ResRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.ResRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.ResRet.f32 %6097, 2
  %6101 = fadd fast float %6098, -5.000000e-01
  %6102 = fadd fast float %6099, -5.000000e-01
  %6103 = fadd fast float %6100, -5.000000e-01
  %6104 = fmul fast float %2113, 4.000000e+00
  %6105 = fmul fast float %6104, %6087
  %6106 = fmul fast float %6105, %6101
  %6107 = fmul fast float %2114, 4.000000e+00
  %6108 = fmul fast float %6107, %6088
  %6109 = fmul fast float %6108, %6102
  %6110 = fmul fast float %2119, 4.000000e+00
  %6111 = fmul fast float %6110, %6089
  %6112 = fmul fast float %6111, %6103
  %6113 = fadd fast float %6106, %6093
  %6114 = fadd fast float %6109, %6094
  %6115 = fadd fast float %6112, %6095
  %6116 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6117 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  %6118 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  br label %6119

; <label>:6119                                    ; preds = %6096, %5986
  %6120 = phi float [ %6116, %6096 ], [ %6093, %5986 ]
  %6121 = phi float [ %6117, %6096 ], [ %6094, %5986 ]
  %6122 = phi float [ %6118, %6096 ], [ %6095, %5986 ]
  %6123 = fmul fast float %6014, 9.843750e-01
  %6124 = fadd fast float %6123, 7.812500e-03
  %6125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6124, float %3407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6126 = extractvalue %dx.types.ResRet.f32 %6125, 2
  %6127 = extractvalue %dx.types.ResRet.f32 %6125, 3
  %6128 = fmul fast float %6126, %2113
  %6129 = fmul fast float %6126, %2114
  %6130 = fmul fast float %6126, %2119
  %6131 = fadd fast float %6128, %6127
  %6132 = fadd fast float %6129, %6127
  %6133 = fadd fast float %6130, %6127
  br i1 %3417, label %6134, label %6157

; <label>:6134                                    ; preds = %6119
  %6135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1484, float %6014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6136 = extractvalue %dx.types.ResRet.f32 %6135, 0
  %6137 = extractvalue %dx.types.ResRet.f32 %6135, 1
  %6138 = extractvalue %dx.types.ResRet.f32 %6135, 2
  %6139 = fadd fast float %6136, -5.000000e-01
  %6140 = fadd fast float %6137, -5.000000e-01
  %6141 = fadd fast float %6138, -5.000000e-01
  %6142 = fmul fast float %2113, 4.000000e+00
  %6143 = fmul fast float %6142, %6087
  %6144 = fmul fast float %6143, %6139
  %6145 = fmul fast float %2114, 4.000000e+00
  %6146 = fmul fast float %6145, %6088
  %6147 = fmul fast float %6146, %6140
  %6148 = fmul fast float %2119, 4.000000e+00
  %6149 = fmul fast float %6148, %6089
  %6150 = fmul fast float %6149, %6141
  %6151 = fadd fast float %6144, %6131
  %6152 = fadd fast float %6147, %6132
  %6153 = fadd fast float %6150, %6133
  %6154 = call float @dx.op.unary.f32(i32 7, float %6151)  ; Saturate(value)
  %6155 = call float @dx.op.unary.f32(i32 7, float %6152)  ; Saturate(value)
  %6156 = call float @dx.op.unary.f32(i32 7, float %6153)  ; Saturate(value)
  br label %6157

; <label>:6157                                    ; preds = %6134, %6119
  %6158 = phi float [ %6154, %6134 ], [ %6131, %6119 ]
  %6159 = phi float [ %6155, %6134 ], [ %6132, %6119 ]
  %6160 = phi float [ %6156, %6134 ], [ %6133, %6119 ]
  %6161 = call float @dx.op.binary.f32(i32 35, float %6159, float %6160)  ; FMax(a,b)
  %6162 = call float @dx.op.binary.f32(i32 35, float %6158, float %6161)  ; FMax(a,b)
  %6163 = fsub fast float 1.000000e+00, %6162
  %6164 = fmul fast float %6120, %6078
  %6165 = fmul fast float %6121, %6078
  %6166 = fmul fast float %6122, %6078
  %6167 = fsub fast float 1.000000e+00, %6015
  %6168 = bitcast float %6167 to i32
  %6169 = sitofp i32 %6168 to float
  %6170 = fmul fast float %6169, 5.000000e+00
  %6171 = fadd fast float %6170, 0xC1EFBF8940000000
  %6172 = fptosi float %6171 to i32
  %6173 = bitcast i32 %6172 to float
  %6174 = fmul fast float %6173, %1483
  %6175 = fmul fast float %6163, %6174
  %6176 = fmul fast float %6175, %3959
  %6177 = fmul fast float %6175, %3960
  %6178 = fmul fast float %6175, %3961
  %6179 = fadd fast float %6176, %6164
  %6180 = fadd fast float %6177, %6165
  %6181 = fadd fast float %6178, %6166
  %6182 = fmul fast float %6003, %1504
  %6183 = fmul fast float %6182, %6021
  %6184 = fmul fast float %6183, %6163
  %6185 = fmul fast float %6004, %1504
  %6186 = fmul fast float %6185, %6021
  %6187 = fmul fast float %6186, %6163
  %6188 = fmul fast float %6005, %1504
  %6189 = fmul fast float %6188, %6021
  %6190 = fmul fast float %6189, %6163
  %6191 = fadd fast float %6184, %5636
  %6192 = fadd fast float %6187, %5637
  %6193 = fadd fast float %6190, %5638
  %6194 = fmul fast float %6183, %6179
  %6195 = fmul fast float %6186, %6180
  %6196 = fmul fast float %6189, %6181
  %6197 = fadd fast float %6194, %5633
  %6198 = fadd fast float %6195, %5634
  %6199 = fadd fast float %6196, %5635
  br label %5765

; <label>:6200                                    ; preds = %5765
  br label %6201

; <label>:6201                                    ; preds = %6200, %5599
  %6202 = phi float [ %5601, %5599 ], [ %5766, %6200 ]
  %6203 = phi float [ %5602, %5599 ], [ %5767, %6200 ]
  %6204 = phi float [ %5603, %5599 ], [ %5768, %6200 ]
  %6205 = phi float [ %5604, %5599 ], [ %5769, %6200 ]
  %6206 = phi float [ %5605, %5599 ], [ %5770, %6200 ]
  %6207 = phi float [ %5606, %5599 ], [ %5771, %6200 ]
  %6208 = add i32 %5600, 1
  %6209 = icmp ugt i32 %6208, %5596
  br i1 %6209, label %6210, label %5599

; <label>:6210                                    ; preds = %6201
  br label %6211

; <label>:6211                                    ; preds = %6210, %5549, %5539
  %6212 = phi float [ %5540, %5539 ], [ %5540, %5549 ], [ %6202, %6210 ]
  %6213 = phi float [ %5541, %5539 ], [ %5541, %5549 ], [ %6203, %6210 ]
  %6214 = phi float [ %5542, %5539 ], [ %5542, %5549 ], [ %6204, %6210 ]
  %6215 = phi float [ %5543, %5539 ], [ %5543, %5549 ], [ %6205, %6210 ]
  %6216 = phi float [ %5544, %5539 ], [ %5544, %5549 ], [ %6206, %6210 ]
  %6217 = phi float [ %5545, %5539 ], [ %5545, %5549 ], [ %6207, %6210 ]
  %6218 = fmul fast float %1504, %1504
  %6219 = fsub fast float 1.000000e+00, %6218
  %6220 = call float @dx.op.dot3.f32(i32 55, float %6219, float %6219, float %6219, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6221 = fsub fast float 1.000000e+00, %6220
  %6222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.f32 %6222, 0
  %6224 = fmul fast float %6223, %3965
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 3
  %6227 = fsub fast float 1.000000e+00, %1482
  %6228 = call float @dx.op.unary.f32(i32 7, float %6227)  ; Saturate(value)
  %6229 = fadd fast float %6217, %1481
  %6230 = fmul fast float %6229, %1482
  %6231 = fmul fast float %6228, %6226
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 3
  %6234 = fmul fast float %6215, %2107
  %6235 = fmul fast float %6216, %2108
  %6236 = fmul fast float %6217, %2109
  %6237 = fcmp fast ogt float %87, %197
  %6238 = and i1 %6237, %1912
  %6239 = or i1 %1918, %6238
  %6240 = icmp eq i32 %1911, 2
  %6241 = fcmp fast ole float %87, %197
  %6242 = and i1 %6241, %6240
  %6243 = or i1 %6242, %6239
  br i1 %6238, label %6244, label %6503

; <label>:6244                                    ; preds = %6211
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 3
  %6248 = fmul fast float %6246, %99
  %6249 = fmul fast float %6247, %100
  %6250 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6251 = call float @dx.op.unary.f32(i32 7, float %6249)  ; Saturate(value)
  %6252 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6250, float %6251, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6253 = extractvalue %dx.types.ResRet.f32 %6252, 0
  %6254 = extractvalue %dx.types.ResRet.f32 %6252, 1
  %6255 = extractvalue %dx.types.ResRet.f32 %6252, 2
  %6256 = extractvalue %dx.types.ResRet.f32 %6252, 3
  %6257 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6250, float %6251, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6258 = extractvalue %dx.types.ResRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.ResRet.f32 %6257, 1
  %6260 = extractvalue %dx.types.ResRet.f32 %6257, 2
  %6261 = extractvalue %dx.types.ResRet.f32 %6257, 3
  %6262 = call float @dx.op.binary.f32(i32 35, float %6254, float %6255)  ; FMax(a,b)
  %6263 = call float @dx.op.binary.f32(i32 35, float %6253, float %6262)  ; FMax(a,b)
  %6264 = call float @dx.op.binary.f32(i32 35, float %6263, float %6256)  ; FMax(a,b)
  %6265 = call float @dx.op.binary.f32(i32 36, float %6259, float %6260)  ; FMin(a,b)
  %6266 = call float @dx.op.binary.f32(i32 36, float %6258, float %6265)  ; FMin(a,b)
  %6267 = call float @dx.op.binary.f32(i32 36, float %6266, float %6261)  ; FMin(a,b)
  %6268 = fmul fast float %6264, 2.550000e+02
  %6269 = fadd fast float %6268, 0x3F70101020000000
  %6270 = fptoui float %6269 to i32
  %6271 = fmul fast float %6267, 2.550000e+02
  %6272 = fadd fast float %6271, 0x3F70101020000000
  %6273 = fptoui float %6272 to i32
  %6274 = icmp ult i32 %6270, %6273
  br i1 %6274, label %6275, label %6443

; <label>:6275                                    ; preds = %6244
  %6276 = fcmp fast ogt float %86, 9.843750e-01
  %6277 = fadd fast float %87, -4.000000e+00
  %6278 = select i1 %6276, float -4.000000e+00, float %6277
  %6279 = call float @dx.op.binary.f32(i32 35, float %6278, float 0.000000e+00)  ; FMax(a,b)
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 0
  %6282 = fadd fast float %6281, %6279
  %6283 = extractvalue %dx.types.CBufRet.f32 %6280, 2
  %6284 = fmul fast float %6282, %6283
  %6285 = call float @dx.op.unary.f32(i32 23, float %6284)  ; Log(value)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6280, 3
  %6287 = fmul fast float %6286, %6285
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 2
  %6290 = fmul fast float %6287, %6289
  %6291 = call float @dx.op.unary.f32(i32 7, float %6290)  ; Saturate(value)
  %6292 = uitofp i32 %6270 to float
  %6293 = uitofp i32 %6273 to float
  %6294 = fadd fast float %6292, 5.000000e-01
  %6295 = fadd fast float %6293, 5.000000e-01
  %6296 = fmul fast float %6289, %6294
  %6297 = fmul fast float %6289, %6295
  %6298 = fadd fast float %6296, 0x3F0FFB4800000000
  %6299 = fadd fast float %6297, 0xBF0FFB4800000000
  %6300 = call float @dx.op.binary.f32(i32 35, float %6291, float %6298)  ; FMax(a,b)
  %6301 = call float @dx.op.binary.f32(i32 36, float %6300, float %6299)  ; FMin(a,b)
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 1
  %6304 = extractvalue %dx.types.CBufRet.f32 %6302, 2
  %6305 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6306 = fmul fast float %6303, %6301
  %6307 = fadd fast float %6305, %6306
  %6308 = fadd fast float %6305, %6304
  %6309 = fsub fast float %6303, %6304
  %6310 = fadd fast float %6309, %6305
  %6311 = call float @dx.op.binary.f32(i32 35, float %6307, float %6308)  ; FMax(a,b)
  %6312 = call float @dx.op.binary.f32(i32 36, float %6311, float %6310)  ; FMin(a,b)
  %6313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6250, float %6251, float %6312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6314 = extractvalue %dx.types.ResRet.f32 %6313, 0
  %6315 = extractvalue %dx.types.ResRet.f32 %6313, 1
  %6316 = extractvalue %dx.types.ResRet.f32 %6313, 2
  %6317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.i32 %6317, 0
  %6319 = extractvalue %dx.types.CBufRet.i32 %6317, 1
  %6320 = uitofp i32 %6318 to float
  %6321 = uitofp i32 %6319 to float
  %6322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.f32 %6322, 0
  %6324 = extractvalue %dx.types.CBufRet.f32 %6322, 1
  %6325 = fmul fast float %6320, %6250
  %6326 = fmul fast float %6321, %6251
  %6327 = fadd fast float %6325, -5.000000e-01
  %6328 = fadd fast float %6326, -5.000000e-01
  %6329 = call float @dx.op.unary.f32(i32 22, float %6327)  ; Frc(value)
  %6330 = call float @dx.op.unary.f32(i32 22, float %6328)  ; Frc(value)
  %6331 = fmul fast float %6329, %6329
  %6332 = fmul fast float %6331, %6329
  %6333 = fsub fast float 3.000000e+00, %6329
  %6334 = fmul fast float %6331, %6333
  %6335 = fmul fast float %6329, 3.000000e+00
  %6336 = fmul fast float %6332, 3.000000e+00
  %6337 = fmul fast float %6331, 6.000000e+00
  %6338 = fsub fast float %6336, %6337
  %6339 = fadd fast float %6338, 4.000000e+00
  %6340 = fmul fast float %6339, 0x3FC5555560000000
  %6341 = fmul fast float %6332, -3.000000e+00
  %6342 = fadd fast float %6331, %6329
  %6343 = fmul fast float %6342, 3.000000e+00
  %6344 = fadd fast float %6341, 1.000000e+00
  %6345 = fadd fast float %6344, %6343
  %6346 = fmul fast float %6332, 0x3FC5555560000000
  %6347 = fmul fast float %6330, %6330
  %6348 = fmul fast float %6347, %6330
  %6349 = fsub fast float 3.000000e+00, %6330
  %6350 = fmul fast float %6347, %6349
  %6351 = fmul fast float %6330, 3.000000e+00
  %6352 = fmul fast float %6348, 3.000000e+00
  %6353 = fmul fast float %6347, 6.000000e+00
  %6354 = fsub fast float %6352, %6353
  %6355 = fadd fast float %6354, 4.000000e+00
  %6356 = fmul fast float %6355, 0x3FC5555560000000
  %6357 = fmul fast float %6348, -3.000000e+00
  %6358 = fadd fast float %6347, %6330
  %6359 = fmul fast float %6358, 3.000000e+00
  %6360 = fadd fast float %6357, 1.000000e+00
  %6361 = fadd fast float %6360, %6359
  %6362 = fmul fast float %6348, 0x3FC5555560000000
  %6363 = fadd fast float %6329, 1.000000e+00
  %6364 = fsub fast float 1.000000e+00, %6335
  %6365 = fadd fast float %6364, %6334
  %6366 = fadd fast float %6365, %6339
  %6367 = fmul fast float %6366, 0x3FC5555560000000
  %6368 = fdiv fast float %6340, %6367
  %6369 = fsub fast float %6363, %6368
  %6370 = fsub fast float 1.000000e+00, %6329
  %6371 = fadd fast float %6345, %6332
  %6372 = fmul fast float %6371, 0x3FC5555560000000
  %6373 = fdiv fast float %6346, %6372
  %6374 = fadd fast float %6370, %6373
  %6375 = fadd fast float %6330, 1.000000e+00
  %6376 = fsub fast float 1.000000e+00, %6351
  %6377 = fadd fast float %6376, %6350
  %6378 = fadd fast float %6377, %6355
  %6379 = fmul fast float %6378, 0x3FC5555560000000
  %6380 = fdiv fast float %6356, %6379
  %6381 = fsub fast float %6375, %6380
  %6382 = fsub fast float 1.000000e+00, %6330
  %6383 = fadd fast float %6361, %6348
  %6384 = fmul fast float %6383, 0x3FC5555560000000
  %6385 = fdiv fast float %6362, %6384
  %6386 = fadd fast float %6385, %6382
  %6387 = fmul fast float %6369, %6323
  %6388 = fsub fast float %6250, %6387
  %6389 = fmul fast float %6374, %6323
  %6390 = fadd fast float %6389, %6250
  %6391 = fmul fast float %6386, %6324
  %6392 = fadd fast float %6391, %6251
  %6393 = fmul fast float %6381, %6324
  %6394 = fsub fast float %6251, %6393
  %6395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6388, float %6394, float %6312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6396 = extractvalue %dx.types.ResRet.f32 %6395, 0
  %6397 = extractvalue %dx.types.ResRet.f32 %6395, 1
  %6398 = extractvalue %dx.types.ResRet.f32 %6395, 2
  %6399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6390, float %6394, float %6312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6400 = extractvalue %dx.types.ResRet.f32 %6399, 0
  %6401 = extractvalue %dx.types.ResRet.f32 %6399, 1
  %6402 = extractvalue %dx.types.ResRet.f32 %6399, 2
  %6403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6388, float %6392, float %6312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6404 = extractvalue %dx.types.ResRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.ResRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.ResRet.f32 %6403, 2
  %6407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6390, float %6392, float %6312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.ResRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.ResRet.f32 %6407, 2
  %6411 = fsub fast float %6404, %6396
  %6412 = fsub fast float %6405, %6397
  %6413 = fsub fast float %6406, %6398
  %6414 = fmul fast float %6411, %6384
  %6415 = fmul fast float %6412, %6384
  %6416 = fmul fast float %6413, %6384
  %6417 = fadd fast float %6414, %6396
  %6418 = fadd fast float %6415, %6397
  %6419 = fadd fast float %6416, %6398
  %6420 = fsub fast float %6408, %6400
  %6421 = fsub fast float %6409, %6401
  %6422 = fsub fast float %6410, %6402
  %6423 = fmul fast float %6420, %6384
  %6424 = fmul fast float %6421, %6384
  %6425 = fmul fast float %6422, %6384
  %6426 = fsub fast float %6400, %6417
  %6427 = fadd fast float %6426, %6423
  %6428 = fsub fast float %6401, %6418
  %6429 = fadd fast float %6428, %6424
  %6430 = fsub fast float %6402, %6419
  %6431 = fadd fast float %6430, %6425
  %6432 = fmul fast float %6427, %6372
  %6433 = fmul fast float %6429, %6372
  %6434 = fmul fast float %6431, %6372
  %6435 = fadd fast float %6432, %6417
  %6436 = fadd fast float %6433, %6418
  %6437 = fadd fast float %6434, %6419
  %6438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6439 = extractvalue %dx.types.CBufRet.f32 %6438, 1
  %6440 = fmul fast float %6435, %6439
  %6441 = fmul fast float %6436, %6439
  %6442 = fmul fast float %6437, %6439
  br label %6443

; <label>:6443                                    ; preds = %6275, %6244
  %6444 = phi float [ %6314, %6275 ], [ 1.000000e+00, %6244 ]
  %6445 = phi float [ %6315, %6275 ], [ 1.000000e+00, %6244 ]
  %6446 = phi float [ %6316, %6275 ], [ 1.000000e+00, %6244 ]
  %6447 = phi float [ %6440, %6275 ], [ 0.000000e+00, %6244 ]
  %6448 = phi float [ %6441, %6275 ], [ 0.000000e+00, %6244 ]
  %6449 = phi float [ %6442, %6275 ], [ 0.000000e+00, %6244 ]
  %6450 = fmul fast float %6447, %6221
  %6451 = fmul fast float %6448, %6221
  %6452 = fmul fast float %6449, %6221
  %6453 = call float @dx.op.dot3.f32(i32 55, float %6444, float %6445, float %6446, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6454 = call float @dx.op.dot3.f32(i32 55, float %6450, float %6451, float %6452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6455 = select i1 %237, float %6453, float %6444
  %6456 = select i1 %237, float %6453, float %6445
  %6457 = select i1 %237, float 1.000000e+00, float %6446
  %6458 = select i1 %237, float %6454, float %6450
  %6459 = select i1 %237, float 0.000000e+00, float %6451
  %6460 = select i1 %237, float 0.000000e+00, float %6452
  %6461 = fmul fast float %6455, %6234
  %6462 = fmul fast float %6456, %6235
  %6463 = fmul fast float %6457, %6236
  %6464 = fadd fast float %6461, %6458
  %6465 = fadd fast float %6462, %6459
  %6466 = fadd fast float %6460, %6463
  %6467 = fmul fast float %6455, %6212
  %6468 = fmul fast float %6456, %6213
  %6469 = fmul fast float %6457, %6214
  %6470 = fmul fast float %99, 2.000000e+00
  %6471 = fmul fast float %6470, %6246
  %6472 = fmul fast float %100, 2.000000e+00
  %6473 = fmul fast float %6472, %6247
  %6474 = fsub fast float 1.000000e+00, %6471
  %6475 = fsub fast float 1.000000e+00, %6473
  %6476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6477 = extractvalue %dx.types.CBufRet.f32 %6476, 0
  %6478 = extractvalue %dx.types.CBufRet.f32 %6476, 1
  %6479 = extractvalue %dx.types.CBufRet.f32 %6476, 2
  %6480 = fmul fast float %6474, %6477
  %6481 = fmul fast float %6474, %6478
  %6482 = fmul fast float %6474, %6479
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.CBufRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.CBufRet.f32 %6483, 2
  %6487 = fmul fast float %6475, %6484
  %6488 = fmul fast float %6475, %6485
  %6489 = fmul fast float %6475, %6486
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.CBufRet.f32 %6490, 1
  %6493 = extractvalue %dx.types.CBufRet.f32 %6490, 2
  %6494 = fadd fast float %6487, %6491
  %6495 = fadd fast float %6494, %6480
  %6496 = fadd fast float %6488, %6492
  %6497 = fadd fast float %6496, %6481
  %6498 = fadd fast float %6489, %6493
  %6499 = fadd fast float %6498, %6482
  %6500 = fmul fast float %6495, %197
  %6501 = fmul fast float %6497, %197
  %6502 = fmul fast float %6499, %197
  br label %6503

; <label>:6503                                    ; preds = %6443, %6211
  %6504 = phi float [ %6500, %6443 ], [ %146, %6211 ]
  %6505 = phi float [ %6501, %6443 ], [ %147, %6211 ]
  %6506 = phi float [ %6502, %6443 ], [ %148, %6211 ]
  %6507 = phi float [ %197, %6443 ], [ %87, %6211 ]
  %6508 = phi float [ %6464, %6443 ], [ %6234, %6211 ]
  %6509 = phi float [ %6465, %6443 ], [ %6235, %6211 ]
  %6510 = phi float [ %6466, %6443 ], [ %6236, %6211 ]
  %6511 = phi float [ %6467, %6443 ], [ %6212, %6211 ]
  %6512 = phi float [ %6468, %6443 ], [ %6213, %6211 ]
  %6513 = phi float [ %6469, %6443 ], [ %6214, %6211 ]
  %6514 = phi float [ %6444, %6443 ], [ 1.000000e+00, %6211 ]
  br i1 %6243, label %7669, label %6515

; <label>:6515                                    ; preds = %6503
  %6516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6517 = extractvalue %dx.types.CBufRet.f32 %6516, 0
  %6518 = extractvalue %dx.types.CBufRet.f32 %6516, 1
  %6519 = extractvalue %dx.types.CBufRet.f32 %6516, 2
  %6520 = extractvalue %dx.types.CBufRet.f32 %6516, 3
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 0
  %6523 = extractvalue %dx.types.CBufRet.f32 %6521, 1
  %6524 = extractvalue %dx.types.CBufRet.f32 %6521, 2
  %6525 = extractvalue %dx.types.CBufRet.f32 %6521, 3
  %6526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6527 = extractvalue %dx.types.CBufRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.CBufRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.CBufRet.f32 %6526, 2
  %6530 = extractvalue %dx.types.CBufRet.f32 %6526, 3
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.CBufRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.CBufRet.f32 %6531, 2
  %6535 = extractvalue %dx.types.CBufRet.f32 %6531, 3
  %6536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6536, 3
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 3
  %6540 = extractvalue %dx.types.CBufRet.f32 %6538, 0
  %6541 = extractvalue %dx.types.CBufRet.f32 %6538, 1
  %6542 = extractvalue %dx.types.CBufRet.f32 %6538, 2
  %6543 = fcmp fast olt float %6542, -5.000000e-01
  %6544 = call float @dx.op.dot3.f32(i32 55, float %6504, float %6505, float %6506, float %6504, float %6505, float %6506)  ; Dot3(ax,ay,az,bx,by,bz)
  %6545 = call float @dx.op.unary.f32(i32 25, float %6544)  ; Rsqrt(value)
  %6546 = fmul fast float %6545, %6544
  %6547 = fmul fast float %6545, %6504
  %6548 = fmul fast float %6545, %6505
  %6549 = fmul fast float %6545, %6506
  %6550 = fadd fast float %6546, %6520
  %6551 = call float @dx.op.dot3.f32(i32 55, float %6547, float %6548, float %6549, float %6517, float %6518, float %6519)  ; Dot3(ax,ay,az,bx,by,bz)
  %6552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.i32 %6552, 1
  %6554 = and i32 %6553, 1
  %6555 = icmp ne i32 %6554, 0
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 2
  %6558 = fcmp fast ogt float %6557, 0.000000e+00
  %6559 = and i1 %6555, %6558
  br i1 %6559, label %6560, label %6966, !dx.controlflow.hints !146

; <label>:6560                                    ; preds = %6515
  %6561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.f32 %6561, 3
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 2
  %6565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6566 = extractvalue %dx.types.CBufRet.f32 %6565, 2
  %6567 = fsub fast float %6564, %6566
  %6568 = and i32 %6553, 2
  %6569 = extractvalue %dx.types.CBufRet.i32 %6552, 0
  %6570 = call i32 @dx.op.binary.i32(i32 40, i32 %6569, i32 3)  ; UMin(a,b)
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 0
  %6573 = extractvalue %dx.types.CBufRet.f32 %6571, 1
  %6574 = extractvalue %dx.types.CBufRet.f32 %6565, 0
  %6575 = extractvalue %dx.types.CBufRet.f32 %6565, 1
  %6576 = fsub fast float %6572, %6574
  %6577 = fsub fast float %6573, %6575
  %6578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6579 = extractvalue %dx.types.CBufRet.f32 %6578, 0
  %6580 = fcmp fast ogt float %6579, 0.000000e+00
  %6581 = fsub fast float -0.000000e+00, %6576
  %6582 = fsub fast float -0.000000e+00, %6577
  %6583 = call float @dx.op.dot2.f32(i32 54, float %6547, float %6548, float %6547, float %6548)  ; Dot2(ax,ay,bx,by)
  %6584 = call float @dx.op.dot2.f32(i32 54, float %6547, float %6548, float %6581, float %6582)  ; Dot2(ax,ay,bx,by)
  %6585 = fmul fast float %6584, 2.000000e+00
  %6586 = call float @dx.op.dot2.f32(i32 54, float %6581, float %6582, float %6581, float %6582)  ; Dot2(ax,ay,bx,by)
  %6587 = fmul fast float %6579, %6579
  %6588 = fsub fast float %6586, %6587
  %6589 = fmul fast float %6585, %6585
  %6590 = fmul fast float %6583, 4.000000e+00
  %6591 = fmul fast float %6590, %6588
  %6592 = fsub fast float %6589, %6591
  %6593 = fcmp fast ogt float %6592, 0.000000e+00
  br i1 %6593, label %6594, label %6609

; <label>:6594                                    ; preds = %6560
  %6595 = fcmp fast ogt float %6585, 0.000000e+00
  %6596 = call float @dx.op.unary.f32(i32 24, float %6592)  ; Sqrt(value)
  %6597 = fsub fast float -0.000000e+00, %6596
  %6598 = select i1 %6595, float %6596, float %6597
  %6599 = fadd fast float %6598, %6585
  %6600 = fmul float %6599, -5.000000e-01
  %6601 = fdiv fast float %6600, %6583
  %6602 = call float @dx.op.binary.f32(i32 35, float %6601, float 0.000000e+00)  ; FMax(a,b)
  %6603 = call float @dx.op.binary.f32(i32 36, float %6546, float %6602)  ; FMin(a,b)
  %6604 = fdiv fast float %6588, %6600
  %6605 = call float @dx.op.binary.f32(i32 35, float %6604, float 0.000000e+00)  ; FMax(a,b)
  %6606 = call float @dx.op.binary.f32(i32 36, float %6546, float %6605)  ; FMin(a,b)
  %6607 = call float @dx.op.binary.f32(i32 36, float %6603, float %6606)  ; FMin(a,b)
  %6608 = call float @dx.op.binary.f32(i32 35, float %6603, float %6606)  ; FMax(a,b)
  br label %6609

; <label>:6609                                    ; preds = %6594, %6560
  %6610 = phi float [ %6608, %6594 ], [ -1.000000e+00, %6560 ]
  %6611 = phi float [ %6607, %6594 ], [ -1.000000e+00, %6560 ]
  %6612 = phi i1 [ true, %6594 ], [ false, %6560 ]
  %6613 = and i1 %6580, %6612
  br i1 %6613, label %6614, label %6616

; <label>:6614                                    ; preds = %6609
  %6615 = fcmp fast oeq float %6611, %6610
  br i1 %6615, label %6919, label %6617

; <label>:6616                                    ; preds = %6609
  br i1 %6580, label %6919, label %6617

; <label>:6617                                    ; preds = %6616, %6614
  %6618 = phi float [ %6546, %6616 ], [ %6610, %6614 ]
  %6619 = phi float [ 0.000000e+00, %6616 ], [ %6611, %6614 ]
  %6620 = icmp ne i32 %6568, 0
  %6621 = fmul fast float %6618, %6549
  %6622 = fadd fast float %6621, %6562
  %6623 = fmul fast float %6622, %6618
  %6624 = select i1 %6620, float 0.000000e+00, float %6623
  %6625 = fcmp fast oeq float %6549, 0.000000e+00
  %6626 = fdiv fast float %6567, %6549
  %6627 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6626)  ; FMax(a,b)
  %6628 = select i1 %6625, float %6618, float %6627
  %6629 = call float @dx.op.binary.f32(i32 36, float %6618, float %6628)  ; FMin(a,b)
  %6630 = fcmp fast ogt float %6549, 0.000000e+00
  %6631 = fcmp fast olt float %6567, 0.000000e+00
  br i1 %6630, label %6632, label %6689

; <label>:6632                                    ; preds = %6617
  %6633 = icmp eq i32 %6568, 0
  br i1 %6631, label %6634, label %6678

; <label>:6634                                    ; preds = %6632
  %6635 = select i1 %6633, float %6618, float 0.000000e+00
  %6636 = fsub fast float -0.000000e+00, %6635
  %6637 = call float @dx.op.unary.f32(i32 6, float %6636)  ; FAbs(value)
  %6638 = fmul fast float %6635, %6549
  %6639 = fadd fast float %6638, %6562
  %6640 = fmul fast float %6637, %6639
  %6641 = fsub fast float %6624, %6640
  %6642 = fsub fast float %6618, %6637
  %6643 = select i1 %6633, float %6642, float 0.000000e+00
  %6644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.f32 %6644, 0
  %6646 = extractvalue %dx.types.CBufRet.f32 %6644, 1
  %6647 = extractvalue %dx.types.CBufRet.f32 %6644, 2
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.CBufRet.f32 %6648, 1
  %6651 = extractvalue %dx.types.CBufRet.f32 %6648, 2
  %6652 = extractvalue %dx.types.CBufRet.f32 %6648, 3
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 3
  %6655 = call float @dx.op.binary.f32(i32 36, float %6641, float %6654)  ; FMin(a,b)
  %6656 = fmul fast float %6652, %6643
  %6657 = call float @dx.op.unary.f32(i32 7, float %6656)  ; Saturate(value)
  %6658 = fsub fast float %6649, %6645
  %6659 = fsub fast float %6650, %6646
  %6660 = fsub fast float %6651, %6647
  %6661 = fmul fast float %6657, %6658
  %6662 = fmul fast float %6657, %6659
  %6663 = fmul fast float %6657, %6660
  %6664 = fadd fast float %6661, %6645
  %6665 = fadd fast float %6662, %6646
  %6666 = fadd fast float %6663, %6647
  %6667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6668 = extractvalue %dx.types.CBufRet.f32 %6667, 0
  %6669 = extractvalue %dx.types.CBufRet.f32 %6667, 1
  %6670 = fadd fast float %6669, %6668
  %6671 = call float @dx.op.unary.f32(i32 7, float %6670)  ; Saturate(value)
  %6672 = extractvalue %dx.types.CBufRet.f32 %6667, 2
  %6673 = extractvalue %dx.types.CBufRet.f32 %6667, 3
  %6674 = fadd fast float %6673, %6672
  %6675 = call float @dx.op.unary.f32(i32 7, float %6674)  ; Saturate(value)
  %6676 = fmul fast float %6671, %6655
  %6677 = fmul fast float %6676, %6675
  br label %6919

; <label>:6678                                    ; preds = %6632
  br i1 %6633, label %6679, label %6700

; <label>:6679                                    ; preds = %6678
  %6680 = call float @dx.op.binary.f32(i32 36, float %6629, float %6619)  ; FMin(a,b)
  %6681 = fsub fast float %6629, %6680
  %6682 = fsub fast float %6681, %6618
  %6683 = call float @dx.op.unary.f32(i32 6, float %6682)  ; FAbs(value)
  %6684 = fadd fast float %6681, %6618
  %6685 = fmul fast float %6684, %6549
  %6686 = fadd fast float %6685, %6562
  %6687 = fmul fast float %6686, %6683
  %6688 = fsub fast float %6624, %6687
  br label %6700

; <label>:6689                                    ; preds = %6617
  br i1 %6631, label %6690, label %6700

; <label>:6690                                    ; preds = %6689
  %6691 = call float @dx.op.binary.f32(i32 35, float %6619, float %6629)  ; FMax(a,b)
  %6692 = icmp eq i32 %6568, 0
  %6693 = select i1 %6692, float %6629, float 0.000000e+00
  %6694 = fsub fast float -0.000000e+00, %6693
  %6695 = call float @dx.op.unary.f32(i32 6, float %6694)  ; FAbs(value)
  %6696 = fmul fast float %6693, %6549
  %6697 = fadd fast float %6696, %6562
  %6698 = fmul fast float %6695, %6697
  %6699 = fsub fast float %6624, %6698
  br label %6700

; <label>:6700                                    ; preds = %6690, %6689, %6679, %6678
  %6701 = phi float [ %6619, %6678 ], [ %6619, %6679 ], [ %6691, %6690 ], [ %6619, %6689 ]
  %6702 = phi float [ 0.000000e+00, %6678 ], [ %6683, %6679 ], [ %6695, %6690 ], [ 0.000000e+00, %6689 ]
  %6703 = phi float [ %6624, %6678 ], [ %6688, %6679 ], [ %6699, %6690 ], [ %6624, %6689 ]
  %6704 = phi float [ %6629, %6678 ], [ %6629, %6679 ], [ %6618, %6690 ], [ %6618, %6689 ]
  %6705 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %6705, align 4, !tbaa !133, !noalias !147
  %6706 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %6706, align 4, !tbaa !133, !noalias !147
  %6707 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %6707, align 4, !tbaa !133, !noalias !147
  %6708 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %6708, align 4, !tbaa !133, !noalias !147
  %6709 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %6709, align 4, !tbaa !133, !noalias !147
  %6710 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %6710, align 4, !tbaa !133, !noalias !147
  %6711 = icmp sgt i32 %6570, 0
  br i1 %6711, label %6712, label %6773

; <label>:6712                                    ; preds = %6700
  br label %6713

; <label>:6713                                    ; preds = %6762, %6712
  %6714 = phi i32 [ %6763, %6762 ], [ 0, %6712 ]
  %6715 = phi i32 [ %6764, %6762 ], [ 0, %6712 ]
  %6716 = add nuw i32 %6715, 171
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %6716)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 0
  %6719 = extractvalue %dx.types.CBufRet.f32 %6717, 1
  %6720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.f32 %6720, 0
  %6722 = extractvalue %dx.types.CBufRet.f32 %6720, 1
  %6723 = fsub fast float %6718, %6721
  %6724 = fsub fast float %6719, %6722
  %6725 = extractvalue %dx.types.CBufRet.f32 %6717, 2
  %6726 = fsub fast float -0.000000e+00, %6723
  %6727 = fsub fast float -0.000000e+00, %6724
  %6728 = call float @dx.op.dot2.f32(i32 54, float %6547, float %6548, float %6726, float %6727)  ; Dot2(ax,ay,bx,by)
  %6729 = fmul fast float %6728, 2.000000e+00
  %6730 = call float @dx.op.dot2.f32(i32 54, float %6726, float %6727, float %6726, float %6727)  ; Dot2(ax,ay,bx,by)
  %6731 = fmul fast float %6725, %6725
  %6732 = fsub fast float %6730, %6731
  %6733 = fmul fast float %6729, %6729
  %6734 = fmul fast float %6590, %6732
  %6735 = fsub fast float %6733, %6734
  %6736 = fcmp fast ogt float %6735, 0.000000e+00
  br i1 %6736, label %6737, label %6752

; <label>:6737                                    ; preds = %6713
  %6738 = fcmp fast ogt float %6729, 0.000000e+00
  %6739 = call float @dx.op.unary.f32(i32 24, float %6735)  ; Sqrt(value)
  %6740 = fsub fast float -0.000000e+00, %6739
  %6741 = select i1 %6738, float %6739, float %6740
  %6742 = fadd fast float %6741, %6729
  %6743 = fmul float %6742, -5.000000e-01
  %6744 = fdiv fast float %6743, %6583
  %6745 = call float @dx.op.binary.f32(i32 35, float %6744, float 0.000000e+00)  ; FMax(a,b)
  %6746 = call float @dx.op.binary.f32(i32 36, float %6618, float %6745)  ; FMin(a,b)
  %6747 = fdiv fast float %6732, %6743
  %6748 = call float @dx.op.binary.f32(i32 35, float %6747, float 0.000000e+00)  ; FMax(a,b)
  %6749 = call float @dx.op.binary.f32(i32 36, float %6618, float %6748)  ; FMin(a,b)
  %6750 = call float @dx.op.binary.f32(i32 36, float %6746, float %6749)  ; FMin(a,b)
  %6751 = call float @dx.op.binary.f32(i32 35, float %6746, float %6749)  ; FMax(a,b)
  br label %6752

; <label>:6752                                    ; preds = %6737, %6713
  %6753 = phi float [ %6751, %6737 ], [ -1.000000e+00, %6713 ]
  %6754 = phi float [ %6750, %6737 ], [ -1.000000e+00, %6713 ]
  %6755 = phi i1 [ true, %6737 ], [ false, %6713 ]
  br i1 %6755, label %6756, label %6762

; <label>:6756                                    ; preds = %6752
  %6757 = call float @dx.op.binary.f32(i32 35, float %6701, float %6754)  ; FMax(a,b)
  %6758 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6715
  store float %6757, float* %6758, align 4, !tbaa !133, !noalias !147
  %6759 = call float @dx.op.binary.f32(i32 35, float %6701, float %6753)  ; FMax(a,b)
  %6760 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6715
  store float %6759, float* %6760, align 4, !tbaa !133, !noalias !147
  %6761 = add nsw i32 %6714, 1
  br label %6762

; <label>:6762                                    ; preds = %6756, %6752
  %6763 = phi i32 [ %6761, %6756 ], [ %6714, %6752 ]
  %6764 = add nuw nsw i32 %6715, 1
  %6765 = icmp eq i32 %6764, %6570
  br i1 %6765, label %6766, label %6713

; <label>:6766                                    ; preds = %6762
  %6767 = load float, float* %6707, align 4, !tbaa !133, !alias.scope !163, !noalias !166
  %6768 = load float, float* %6706, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  %6769 = load float, float* %6705, align 4, !tbaa !133, !alias.scope !171, !noalias !172
  %6770 = load float, float* %6710, align 4, !tbaa !133, !alias.scope !173, !noalias !176
  %6771 = load float, float* %6709, align 4, !tbaa !133, !alias.scope !179, !noalias !180
  %6772 = load float, float* %6708, align 4, !tbaa !133, !alias.scope !181, !noalias !182
  br label %6773

; <label>:6773                                    ; preds = %6766, %6700
  %6774 = phi float [ -1.000000e+00, %6700 ], [ %6772, %6766 ]
  %6775 = phi float [ -1.000000e+00, %6700 ], [ %6771, %6766 ]
  %6776 = phi float [ -1.000000e+00, %6700 ], [ %6770, %6766 ]
  %6777 = phi float [ -1.000000e+00, %6700 ], [ %6769, %6766 ]
  %6778 = phi float [ -1.000000e+00, %6700 ], [ %6768, %6766 ]
  %6779 = phi float [ -1.000000e+00, %6700 ], [ %6767, %6766 ]
  %6780 = phi i32 [ 0, %6700 ], [ %6763, %6766 ]
  %6781 = call float @dx.op.binary.f32(i32 36, float %6778, float %6779)  ; FMin(a,b)
  %6782 = call float @dx.op.binary.f32(i32 36, float %6777, float %6781)  ; FMin(a,b)
  %6783 = call float @dx.op.binary.f32(i32 35, float %6777, float %6778)  ; FMax(a,b)
  %6784 = call float @dx.op.binary.f32(i32 36, float %6783, float %6779)  ; FMin(a,b)
  %6785 = call float @dx.op.binary.f32(i32 36, float %6777, float %6778)  ; FMin(a,b)
  %6786 = call float @dx.op.binary.f32(i32 35, float %6785, float %6784)  ; FMax(a,b)
  %6787 = call float @dx.op.binary.f32(i32 35, float %6778, float %6779)  ; FMax(a,b)
  %6788 = call float @dx.op.binary.f32(i32 35, float %6777, float %6787)  ; FMax(a,b)
  store float %6782, float* %6705, align 4, !tbaa !133, !alias.scope !171, !noalias !172
  store float %6786, float* %6706, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  store float %6788, float* %6707, align 4, !tbaa !133, !alias.scope !163, !noalias !166
  %6789 = call float @dx.op.binary.f32(i32 36, float %6775, float %6776)  ; FMin(a,b)
  %6790 = call float @dx.op.binary.f32(i32 36, float %6774, float %6789)  ; FMin(a,b)
  %6791 = call float @dx.op.binary.f32(i32 35, float %6774, float %6775)  ; FMax(a,b)
  %6792 = call float @dx.op.binary.f32(i32 36, float %6791, float %6776)  ; FMin(a,b)
  %6793 = call float @dx.op.binary.f32(i32 36, float %6774, float %6775)  ; FMin(a,b)
  %6794 = call float @dx.op.binary.f32(i32 35, float %6793, float %6792)  ; FMax(a,b)
  %6795 = call float @dx.op.binary.f32(i32 35, float %6775, float %6776)  ; FMax(a,b)
  %6796 = call float @dx.op.binary.f32(i32 35, float %6774, float %6795)  ; FMax(a,b)
  store float %6790, float* %6708, align 4, !tbaa !133, !alias.scope !181, !noalias !182
  store float %6794, float* %6709, align 4, !tbaa !133, !alias.scope !179, !noalias !180
  store float %6796, float* %6710, align 4, !tbaa !133, !alias.scope !173, !noalias !176
  %6797 = sub nsw i32 3, %6780
  %6798 = icmp sgt i32 %6797, 2
  br i1 %6798, label %6799, label %6837

; <label>:6799                                    ; preds = %6773
  %6800 = icmp eq i32 %6568, 0
  %6801 = fsub fast float %6618, %6702
  %6802 = select i1 %6800, float %6801, float %6702
  %6803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.CBufRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.CBufRet.f32 %6803, 2
  %6807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6808 = extractvalue %dx.types.CBufRet.f32 %6807, 0
  %6809 = extractvalue %dx.types.CBufRet.f32 %6807, 1
  %6810 = extractvalue %dx.types.CBufRet.f32 %6807, 2
  %6811 = extractvalue %dx.types.CBufRet.f32 %6807, 3
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 3
  %6814 = call float @dx.op.binary.f32(i32 36, float %6703, float %6813)  ; FMin(a,b)
  %6815 = fmul fast float %6811, %6802
  %6816 = call float @dx.op.unary.f32(i32 7, float %6815)  ; Saturate(value)
  %6817 = fsub fast float %6808, %6804
  %6818 = fsub fast float %6809, %6805
  %6819 = fsub fast float %6810, %6806
  %6820 = fmul fast float %6816, %6817
  %6821 = fmul fast float %6816, %6818
  %6822 = fmul fast float %6816, %6819
  %6823 = fadd fast float %6820, %6804
  %6824 = fadd fast float %6821, %6805
  %6825 = fadd fast float %6822, %6806
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = fadd fast float %6828, %6827
  %6830 = call float @dx.op.unary.f32(i32 7, float %6829)  ; Saturate(value)
  %6831 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6832 = extractvalue %dx.types.CBufRet.f32 %6826, 3
  %6833 = fadd fast float %6832, %6831
  %6834 = call float @dx.op.unary.f32(i32 7, float %6833)  ; Saturate(value)
  %6835 = fmul fast float %6830, %6814
  %6836 = fmul fast float %6835, %6834
  br label %6919

; <label>:6837                                    ; preds = %6773
  %6838 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6797
  %6839 = load float, float* %6838, align 4, !tbaa !133, !noalias !147
  %6840 = fcmp fast olt float %6839, %6704
  %6841 = icmp sgt i32 %6780, 0
  %6842 = and i1 %6841, %6840
  br i1 %6842, label %6843, label %6880

; <label>:6843                                    ; preds = %6837
  br label %6844

; <label>:6844                                    ; preds = %6873, %6843
  %6845 = phi float [ %6874, %6873 ], [ %6702, %6843 ]
  %6846 = phi float [ %6875, %6873 ], [ %6703, %6843 ]
  %6847 = phi float [ %6855, %6873 ], [ %6839, %6843 ]
  %6848 = phi i32 [ %6852, %6873 ], [ %6797, %6843 ]
  %6849 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6848
  %6850 = load float, float* %6849, align 4, !tbaa !133, !noalias !147
  %6851 = icmp slt i32 %6848, 2
  %6852 = add nsw i32 %6848, 1
  %6853 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6852
  %6854 = load float, float* %6853, align 4, !tbaa !133, !noalias !147
  %6855 = select i1 %6851, float %6854, float %6618
  %6856 = call float @dx.op.binary.f32(i32 36, float %6855, float %6850)  ; FMin(a,b)
  %6857 = call float @dx.op.binary.f32(i32 36, float %6704, float %6856)  ; FMin(a,b)
  %6858 = icmp eq i32 %6568, 0
  %6859 = fadd fast float %6857, %6847
  %6860 = fmul fast float %6859, %6549
  %6861 = fadd fast float %6860, %6562
  br i1 %6858, label %6867, label %6862

; <label>:6862                                    ; preds = %6844
  %6863 = fsub fast float %6857, %6847
  %6864 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6863)  ; FMax(a,b)
  %6865 = fmul fast float %6864, %6861
  %6866 = fadd fast float %6865, %6846
  br label %6873

; <label>:6867                                    ; preds = %6844
  %6868 = fsub fast float %6847, %6857
  %6869 = call float @dx.op.unary.f32(i32 6, float %6868)  ; FAbs(value)
  %6870 = fadd fast float %6869, %6845
  %6871 = fmul fast float %6869, %6861
  %6872 = fsub fast float %6846, %6871
  br label %6873

; <label>:6873                                    ; preds = %6867, %6862
  %6874 = phi float [ %6864, %6862 ], [ %6870, %6867 ]
  %6875 = phi float [ %6866, %6862 ], [ %6872, %6867 ]
  %6876 = fcmp fast olt float %6855, %6704
  %6877 = icmp slt i32 %6852, 3
  %6878 = and i1 %6877, %6876
  br i1 %6878, label %6844, label %6879

; <label>:6879                                    ; preds = %6873
  br label %6880

; <label>:6880                                    ; preds = %6879, %6837
  %6881 = phi float [ %6702, %6837 ], [ %6874, %6879 ]
  %6882 = phi float [ %6703, %6837 ], [ %6875, %6879 ]
  %6883 = fsub fast float %6618, %6881
  %6884 = select i1 %6620, float %6881, float %6883
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.CBufRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.CBufRet.f32 %6889, 1
  %6892 = extractvalue %dx.types.CBufRet.f32 %6889, 2
  %6893 = extractvalue %dx.types.CBufRet.f32 %6889, 3
  %6894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6894, 3
  %6896 = call float @dx.op.binary.f32(i32 36, float %6882, float %6895)  ; FMin(a,b)
  %6897 = fmul fast float %6893, %6884
  %6898 = call float @dx.op.unary.f32(i32 7, float %6897)  ; Saturate(value)
  %6899 = fsub fast float %6890, %6886
  %6900 = fsub fast float %6891, %6887
  %6901 = fsub fast float %6892, %6888
  %6902 = fmul fast float %6898, %6899
  %6903 = fmul fast float %6898, %6900
  %6904 = fmul fast float %6898, %6901
  %6905 = fadd fast float %6902, %6886
  %6906 = fadd fast float %6903, %6887
  %6907 = fadd fast float %6904, %6888
  %6908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6909 = extractvalue %dx.types.CBufRet.f32 %6908, 0
  %6910 = extractvalue %dx.types.CBufRet.f32 %6908, 1
  %6911 = fadd fast float %6910, %6909
  %6912 = call float @dx.op.unary.f32(i32 7, float %6911)  ; Saturate(value)
  %6913 = extractvalue %dx.types.CBufRet.f32 %6908, 2
  %6914 = extractvalue %dx.types.CBufRet.f32 %6908, 3
  %6915 = fadd fast float %6914, %6913
  %6916 = call float @dx.op.unary.f32(i32 7, float %6915)  ; Saturate(value)
  %6917 = fmul fast float %6912, %6896
  %6918 = fmul fast float %6917, %6916
  br label %6919

; <label>:6919                                    ; preds = %6880, %6799, %6634, %6616, %6614
  %6920 = phi float [ %6643, %6634 ], [ %6802, %6799 ], [ %6884, %6880 ], [ 0.000000e+00, %6614 ], [ 0.000000e+00, %6616 ]
  %6921 = phi float [ %6677, %6634 ], [ %6836, %6799 ], [ %6918, %6880 ], [ 0.000000e+00, %6614 ], [ 0.000000e+00, %6616 ]
  %6922 = phi float [ %6664, %6634 ], [ %6823, %6799 ], [ %6905, %6880 ], [ 0.000000e+00, %6614 ], [ 0.000000e+00, %6616 ]
  %6923 = phi float [ %6665, %6634 ], [ %6824, %6799 ], [ %6906, %6880 ], [ 0.000000e+00, %6614 ], [ 0.000000e+00, %6616 ]
  %6924 = phi float [ %6666, %6634 ], [ %6825, %6799 ], [ %6907, %6880 ], [ 0.000000e+00, %6614 ], [ 0.000000e+00, %6616 ]
  %6925 = fmul fast float %6557, %6921
  %6926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6927 = extractvalue %dx.types.CBufRet.f32 %6926, 2
  %6928 = fsub fast float %6564, %6927
  %6929 = fcmp fast olt float %6925, -2.000000e+01
  %6930 = call float @dx.op.unary.f32(i32 21, float %6925)  ; Exp(value)
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 2
  %6933 = extractvalue %dx.types.CBufRet.f32 %6931, 3
  %6934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6935 = extractvalue %dx.types.CBufRet.f32 %6934, 2
  %6936 = fmul fast float %6933, %6928
  %6937 = call float @dx.op.unary.f32(i32 7, float %6936)  ; Saturate(value)
  %6938 = fsub fast float 1.000000e+00, %6937
  %6939 = fmul fast float %6549, 5.000000e-01
  %6940 = fadd fast float %6939, 5.000000e-01
  %6941 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  %6942 = fsub fast float 1.000000e+00, %6941
  %6943 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6938)  ; FMax(a,b)
  %6944 = fdiv fast float %6942, %6943
  %6945 = fsub fast float %6928, %6506
  %6946 = call float @dx.op.unary.f32(i32 6, float %6945)  ; FAbs(value)
  %6947 = fmul fast float %6946, %6932
  %6948 = call float @dx.op.unary.f32(i32 7, float %6944)  ; Saturate(value)
  %6949 = fsub fast float 1.000000e+00, %6947
  %6950 = fmul fast float %6949, %6948
  %6951 = fadd fast float %6950, %6947
  %6952 = fmul fast float %6935, %6928
  %6953 = call float @dx.op.unary.f32(i32 7, float %6952)  ; Saturate(value)
  %6954 = fsub fast float 1.000000e+00, %6951
  %6955 = fmul fast float %6954, %6953
  %6956 = fadd fast float %6955, %6951
  %6957 = call float @dx.op.unary.f32(i32 7, float %6956)  ; Saturate(value)
  %6958 = fadd fast float %6930, -1.000000e+00
  %6959 = select i1 %6929, float -1.000000e+00, float %6958
  %6960 = fmul fast float %6957, %6959
  %6961 = fadd fast float %6960, 1.000000e+00
  %6962 = fsub fast float -0.000000e+00, %6960
  %6963 = fmul fast float %6922, %6962
  %6964 = fmul fast float %6923, %6962
  %6965 = fmul fast float %6924, %6962
  br label %6966

; <label>:6966                                    ; preds = %6919, %6515
  %6967 = phi float [ %6920, %6919 ], [ 0.000000e+00, %6515 ]
  %6968 = phi float [ %6961, %6919 ], [ 1.000000e+00, %6515 ]
  %6969 = phi float [ %6963, %6919 ], [ 0.000000e+00, %6515 ]
  %6970 = phi float [ %6964, %6919 ], [ 0.000000e+00, %6515 ]
  %6971 = phi float [ %6965, %6919 ], [ 0.000000e+00, %6515 ]
  %6972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.f32 %6972, 1
  %6974 = fsub fast float 1.000000e+00, %6968
  %6975 = fmul fast float %6974, %6550
  %6976 = fmul fast float %6975, %6973
  %6977 = fsub fast float %6550, %6976
  br i1 %6543, label %6978, label %7007, !dx.controlflow.hints !183

; <label>:6978                                    ; preds = %6966
  %6979 = fmul fast float %6551, %6540
  %6980 = fadd fast float %6979, %6541
  %6981 = call float @dx.op.unary.f32(i32 7, float %6980)  ; Saturate(value)
  %6982 = fmul fast float %6522, %6977
  %6983 = fsub fast float -0.000000e+00, %6982
  %6984 = fmul fast float %6523, %6977
  %6985 = fsub fast float -0.000000e+00, %6984
  %6986 = call float @dx.op.unary.f32(i32 21, float %6983)  ; Exp(value)
  %6987 = call float @dx.op.unary.f32(i32 21, float %6985)  ; Exp(value)
  %6988 = call float @dx.op.binary.f32(i32 35, float %6530, float %6986)  ; FMax(a,b)
  %6989 = call float @dx.op.binary.f32(i32 35, float %6530, float %6987)  ; FMax(a,b)
  %6990 = fsub fast float %6989, %6988
  %6991 = fmul fast float %6990, %6981
  %6992 = fadd fast float %6991, %6988
  %6993 = call float @dx.op.unary.f32(i32 7, float %6992)  ; Saturate(value)
  %6994 = fsub fast float %6527, %6532
  %6995 = fsub fast float %6528, %6533
  %6996 = fsub fast float %6529, %6534
  %6997 = fmul fast float %6981, %6994
  %6998 = fmul fast float %6981, %6995
  %6999 = fmul fast float %6981, %6996
  %7000 = fadd fast float %6997, %6532
  %7001 = fadd fast float %6998, %6533
  %7002 = fadd fast float %6999, %6534
  %7003 = fsub fast float 1.000000e+00, %6993
  %7004 = fmul fast float %7003, %7000
  %7005 = fmul fast float %7003, %7001
  %7006 = fmul fast float %7003, %7002
  br label %7066

; <label>:7007                                    ; preds = %6966
  %7008 = fmul fast float %6977, %6539
  %7009 = call float @dx.op.unary.f32(i32 7, float %7008)  ; Saturate(value)
  %7010 = fsub fast float 2.000000e+00, %7009
  %7011 = fmul fast float %7009, 9.921875e-01
  %7012 = fmul fast float %7011, %7010
  %7013 = fadd fast float %7012, 3.906250e-03
  %7014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7013, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7015 = extractvalue %dx.types.ResRet.f32 %7014, 0
  %7016 = fsub fast float %7009, %7015
  %7017 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7016)  ; FMax(a,b)
  %7018 = fmul fast float %6525, %6506
  %7019 = call float @dx.op.unary.f32(i32 6, float %7018)  ; FAbs(value)
  %7020 = fcmp fast ogt float %7019, 0x3EB0C6F7A0000000
  br i1 %7020, label %7021, label %7027, !dx.controlflow.hints !184

; <label>:7021                                    ; preds = %7007
  %7022 = fmul fast float %7018, 0xBFF7154760000000
  %7023 = call float @dx.op.unary.f32(i32 21, float %7022)  ; Exp(value)
  %7024 = fsub fast float 1.000000e+00, %7023
  %7025 = fdiv fast float %7024, %7018
  %7026 = fmul fast float %7025, %6535
  br label %7027

; <label>:7027                                    ; preds = %7021, %7007
  %7028 = phi float [ %7026, %7021 ], [ %6535, %7007 ]
  %7029 = fadd fast float %7028, %6537
  %7030 = fmul fast float %7029, %7017
  %7031 = fmul fast float %6522, %7030
  %7032 = fsub fast float -0.000000e+00, %7031
  %7033 = fmul fast float %6523, %7030
  %7034 = fsub fast float -0.000000e+00, %7033
  %7035 = fmul fast float %6524, %7030
  %7036 = fsub fast float -0.000000e+00, %7035
  %7037 = call float @dx.op.unary.f32(i32 21, float %7032)  ; Exp(value)
  %7038 = call float @dx.op.unary.f32(i32 21, float %7034)  ; Exp(value)
  %7039 = call float @dx.op.unary.f32(i32 21, float %7036)  ; Exp(value)
  %7040 = fmul fast float %6551, %6551
  %7041 = fadd fast float %7040, 1.000000e+00
  %7042 = fmul fast float %7041, 0x3FAE8EC8A0000000
  %7043 = fmul fast float %7042, %6532
  %7044 = fmul fast float %7042, %6533
  %7045 = fmul fast float %7042, %6534
  %7046 = fmul fast float %6551, %6530
  %7047 = fsub fast float 1.000000e+00, %7046
  %7048 = fmul fast float %6530, %6530
  %7049 = fsub fast float 1.000000e+00, %7048
  %7050 = fmul fast float %7049, 0x3FB45F3060000000
  %7051 = fmul fast float %7047, %7047
  %7052 = fdiv fast float 1.000000e+00, %7051
  %7053 = fmul fast float %7050, %7052
  %7054 = fmul fast float %7053, %6527
  %7055 = fmul fast float %7053, %6528
  %7056 = fmul fast float %7053, %6529
  %7057 = fadd fast float %7054, %7043
  %7058 = fadd fast float %7055, %7044
  %7059 = fadd fast float %7056, %7045
  %7060 = fsub fast float 1.000000e+00, %7037
  %7061 = fsub fast float 1.000000e+00, %7038
  %7062 = fsub fast float 1.000000e+00, %7039
  %7063 = fmul fast float %7057, %7060
  %7064 = fmul fast float %7058, %7061
  %7065 = fmul fast float %7059, %7062
  br label %7066

; <label>:7066                                    ; preds = %7027, %6978
  %7067 = phi float [ %7004, %6978 ], [ %7063, %7027 ]
  %7068 = phi float [ %7005, %6978 ], [ %7064, %7027 ]
  %7069 = phi float [ %7006, %6978 ], [ %7065, %7027 ]
  %7070 = phi float [ %6993, %6978 ], [ %7037, %7027 ]
  %7071 = phi float [ %6993, %6978 ], [ %7038, %7027 ]
  %7072 = phi float [ %6993, %6978 ], [ %7039, %7027 ]
  br i1 %6559, label %7073, label %7271, !dx.controlflow.hints !185

; <label>:7073                                    ; preds = %7066
  %7074 = extractvalue %dx.types.CBufRet.f32 %6972, 0
  %7075 = fmul fast float %7074, %6974
  %7076 = fsub fast float %6969, %7067
  %7077 = fsub fast float %6970, %7068
  %7078 = fsub fast float %6971, %7069
  %7079 = fmul fast float %7075, %7076
  %7080 = fmul fast float %7075, %7077
  %7081 = fmul fast float %7075, %7078
  %7082 = fadd fast float %7079, %7067
  %7083 = fadd fast float %7080, %7068
  %7084 = fadd fast float %7081, %7069
  %7085 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7070)  ; FMax(a,b)
  %7086 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7071)  ; FMax(a,b)
  %7087 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7072)  ; FMax(a,b)
  %7088 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6968)  ; FMax(a,b)
  %7089 = call float @dx.op.binary.f32(i32 35, float %6967, float %6977)  ; FMax(a,b)
  %7090 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7089)  ; FMax(a,b)
  %7091 = fdiv fast float %6967, %7090
  %7092 = call float @dx.op.unary.f32(i32 7, float %7091)  ; Saturate(value)
  %7093 = fdiv fast float %6977, %7090
  %7094 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7095 = fcmp fast une float %7088, 1.000000e+00
  br i1 %7095, label %7096, label %7109, !dx.controlflow.hints !186

; <label>:7096                                    ; preds = %7073
  %7097 = call float @dx.op.unary.f32(i32 23, float %7088)  ; Log(value)
  %7098 = fmul fast float %7097, 0x3FE62E4300000000
  %7099 = fmul fast float %6969, %7098
  %7100 = fsub fast float -0.000000e+00, %7099
  %7101 = fmul fast float %6970, %7098
  %7102 = fsub fast float -0.000000e+00, %7101
  %7103 = fmul fast float %6971, %7098
  %7104 = fsub fast float -0.000000e+00, %7103
  %7105 = fsub fast float 1.000000e+00, %7088
  %7106 = fdiv fast float %7100, %7105
  %7107 = fdiv fast float %7102, %7105
  %7108 = fdiv fast float %7104, %7105
  br label %7109

; <label>:7109                                    ; preds = %7096, %7073
  %7110 = phi float [ %7106, %7096 ], [ %6969, %7073 ]
  %7111 = phi float [ %7107, %7096 ], [ %6970, %7073 ]
  %7112 = phi float [ %7108, %7096 ], [ %6971, %7073 ]
  %7113 = phi float [ %7098, %7096 ], [ 0.000000e+00, %7073 ]
  %7114 = fcmp fast une float %7085, 1.000000e+00
  br i1 %7114, label %7115, label %7122, !dx.controlflow.hints !187

; <label>:7115                                    ; preds = %7109
  %7116 = call float @dx.op.unary.f32(i32 23, float %7085)  ; Log(value)
  %7117 = fmul fast float %7116, 0x3FE62E4300000000
  %7118 = fmul fast float %7082, %7117
  %7119 = fsub fast float -0.000000e+00, %7118
  %7120 = fsub fast float 1.000000e+00, %7085
  %7121 = fdiv fast float %7119, %7120
  br label %7122

; <label>:7122                                    ; preds = %7115, %7109
  %7123 = phi float [ %7121, %7115 ], [ %7082, %7109 ]
  %7124 = phi float [ %7117, %7115 ], [ 0.000000e+00, %7109 ]
  %7125 = fcmp fast une float %7086, 1.000000e+00
  br i1 %7125, label %7126, label %7133, !dx.controlflow.hints !187

; <label>:7126                                    ; preds = %7122
  %7127 = call float @dx.op.unary.f32(i32 23, float %7086)  ; Log(value)
  %7128 = fmul fast float %7127, 0x3FE62E4300000000
  %7129 = fmul fast float %7083, %7128
  %7130 = fsub fast float -0.000000e+00, %7129
  %7131 = fsub fast float 1.000000e+00, %7086
  %7132 = fdiv fast float %7130, %7131
  br label %7133

; <label>:7133                                    ; preds = %7126, %7122
  %7134 = phi float [ %7132, %7126 ], [ %7083, %7122 ]
  %7135 = phi float [ %7128, %7126 ], [ 0.000000e+00, %7122 ]
  %7136 = fcmp fast une float %7087, 1.000000e+00
  br i1 %7136, label %7137, label %7144, !dx.controlflow.hints !187

; <label>:7137                                    ; preds = %7133
  %7138 = call float @dx.op.unary.f32(i32 23, float %7087)  ; Log(value)
  %7139 = fmul fast float %7138, 0x3FE62E4300000000
  %7140 = fmul fast float %7084, %7139
  %7141 = fsub fast float -0.000000e+00, %7140
  %7142 = fsub fast float 1.000000e+00, %7087
  %7143 = fdiv fast float %7141, %7142
  br label %7144

; <label>:7144                                    ; preds = %7137, %7133
  %7145 = phi float [ %7143, %7137 ], [ %7084, %7133 ]
  %7146 = phi float [ %7139, %7137 ], [ 0.000000e+00, %7133 ]
  %7147 = fmul fast float %7110, %7094
  %7148 = fmul fast float %7111, %7094
  %7149 = fmul fast float %7112, %7094
  %7150 = fmul fast float %7113, %7094
  %7151 = fmul fast float %7123, %7092
  %7152 = fmul fast float %7134, %7092
  %7153 = fmul fast float %7145, %7092
  %7154 = fmul fast float %7124, %7092
  %7155 = fmul fast float %7135, %7092
  %7156 = fmul fast float %7146, %7092
  %7157 = fadd fast float %7151, %7147
  %7158 = fadd fast float %7152, %7148
  %7159 = fadd fast float %7153, %7149
  %7160 = fadd fast float %7154, %7150
  %7161 = fadd fast float %7155, %7150
  %7162 = fadd fast float %7156, %7150
  %7163 = fcmp fast une float %7160, 0.000000e+00
  br i1 %7163, label %7164, label %7171, !dx.controlflow.hints !188

; <label>:7164                                    ; preds = %7144
  %7165 = fmul fast float %7160, 0x3FF7154760000000
  %7166 = call float @dx.op.unary.f32(i32 21, float %7165)  ; Exp(value)
  %7167 = fsub fast float 1.000000e+00, %7166
  %7168 = fmul fast float %7157, %7167
  %7169 = fsub fast float -0.000000e+00, %7168
  %7170 = fdiv fast float %7169, %7160
  br label %7171

; <label>:7171                                    ; preds = %7164, %7144
  %7172 = phi float [ %7166, %7164 ], [ 1.000000e+00, %7144 ]
  %7173 = phi float [ %7170, %7164 ], [ %7157, %7144 ]
  %7174 = fcmp fast une float %7161, 0.000000e+00
  br i1 %7174, label %7175, label %7182, !dx.controlflow.hints !188

; <label>:7175                                    ; preds = %7171
  %7176 = fmul fast float %7161, 0x3FF7154760000000
  %7177 = call float @dx.op.unary.f32(i32 21, float %7176)  ; Exp(value)
  %7178 = fsub fast float 1.000000e+00, %7177
  %7179 = fmul fast float %7158, %7178
  %7180 = fsub fast float -0.000000e+00, %7179
  %7181 = fdiv fast float %7180, %7161
  br label %7182

; <label>:7182                                    ; preds = %7175, %7171
  %7183 = phi float [ %7177, %7175 ], [ 1.000000e+00, %7171 ]
  %7184 = phi float [ %7181, %7175 ], [ %7158, %7171 ]
  %7185 = fcmp fast une float %7162, 0.000000e+00
  br i1 %7185, label %7186, label %7193, !dx.controlflow.hints !188

; <label>:7186                                    ; preds = %7182
  %7187 = fmul fast float %7162, 0x3FF7154760000000
  %7188 = call float @dx.op.unary.f32(i32 21, float %7187)  ; Exp(value)
  %7189 = fsub fast float 1.000000e+00, %7188
  %7190 = fmul fast float %7159, %7189
  %7191 = fsub fast float -0.000000e+00, %7190
  %7192 = fdiv fast float %7191, %7162
  br label %7193

; <label>:7193                                    ; preds = %7186, %7182
  %7194 = phi float [ %7188, %7186 ], [ 1.000000e+00, %7182 ]
  %7195 = phi float [ %7192, %7186 ], [ %7159, %7182 ]
  %7196 = fcmp fast ogt float %7092, %7094
  br i1 %7196, label %7197, label %7217

; <label>:7197                                    ; preds = %7193
  %7198 = fsub fast float 1.000000e+00, %7094
  %7199 = fmul fast float %7110, %7198
  %7200 = fmul fast float %7111, %7198
  %7201 = fmul fast float %7112, %7198
  %7202 = fmul fast float %7113, %7198
  %7203 = fcmp fast une float %7202, 0.000000e+00
  br i1 %7203, label %7204, label %7255, !dx.controlflow.hints !189

; <label>:7204                                    ; preds = %7197
  %7205 = fmul fast float %7202, 0x3FF7154760000000
  %7206 = call float @dx.op.unary.f32(i32 21, float %7205)  ; Exp(value)
  %7207 = fsub fast float 1.000000e+00, %7206
  %7208 = fmul fast float %7199, %7207
  %7209 = fsub fast float -0.000000e+00, %7208
  %7210 = fmul fast float %7200, %7207
  %7211 = fsub fast float -0.000000e+00, %7210
  %7212 = fmul fast float %7201, %7207
  %7213 = fsub fast float -0.000000e+00, %7212
  %7214 = fdiv fast float %7209, %7202
  %7215 = fdiv fast float %7211, %7202
  %7216 = fdiv fast float %7213, %7202
  br label %7255

; <label>:7217                                    ; preds = %7193
  %7218 = fsub fast float 1.000000e+00, %7092
  %7219 = fmul fast float %7123, %7218
  %7220 = fmul fast float %7134, %7218
  %7221 = fmul fast float %7145, %7218
  %7222 = fmul fast float %7124, %7218
  %7223 = fmul fast float %7135, %7218
  %7224 = fmul fast float %7146, %7218
  %7225 = fcmp fast une float %7222, 0.000000e+00
  br i1 %7225, label %7226, label %7233, !dx.controlflow.hints !188

; <label>:7226                                    ; preds = %7217
  %7227 = fmul fast float %7222, 0x3FF7154760000000
  %7228 = call float @dx.op.unary.f32(i32 21, float %7227)  ; Exp(value)
  %7229 = fsub fast float 1.000000e+00, %7228
  %7230 = fmul fast float %7219, %7229
  %7231 = fsub fast float -0.000000e+00, %7230
  %7232 = fdiv fast float %7231, %7222
  br label %7233

; <label>:7233                                    ; preds = %7226, %7217
  %7234 = phi float [ %7232, %7226 ], [ %7219, %7217 ]
  %7235 = phi float [ %7228, %7226 ], [ 1.000000e+00, %7217 ]
  %7236 = fcmp fast une float %7223, 0.000000e+00
  br i1 %7236, label %7237, label %7244, !dx.controlflow.hints !188

; <label>:7237                                    ; preds = %7233
  %7238 = fmul fast float %7223, 0x3FF7154760000000
  %7239 = call float @dx.op.unary.f32(i32 21, float %7238)  ; Exp(value)
  %7240 = fsub fast float 1.000000e+00, %7239
  %7241 = fmul fast float %7220, %7240
  %7242 = fsub fast float -0.000000e+00, %7241
  %7243 = fdiv fast float %7242, %7223
  br label %7244

; <label>:7244                                    ; preds = %7237, %7233
  %7245 = phi float [ %7243, %7237 ], [ %7220, %7233 ]
  %7246 = phi float [ %7239, %7237 ], [ 1.000000e+00, %7233 ]
  %7247 = fcmp fast une float %7224, 0.000000e+00
  br i1 %7247, label %7248, label %7255, !dx.controlflow.hints !188

; <label>:7248                                    ; preds = %7244
  %7249 = fmul fast float %7224, 0x3FF7154760000000
  %7250 = call float @dx.op.unary.f32(i32 21, float %7249)  ; Exp(value)
  %7251 = fsub fast float 1.000000e+00, %7250
  %7252 = fmul fast float %7221, %7251
  %7253 = fsub fast float -0.000000e+00, %7252
  %7254 = fdiv fast float %7253, %7224
  br label %7255

; <label>:7255                                    ; preds = %7248, %7244, %7204, %7197
  %7256 = phi float [ %7254, %7248 ], [ %7216, %7204 ], [ %7201, %7197 ], [ %7221, %7244 ]
  %7257 = phi float [ %7245, %7248 ], [ %7215, %7204 ], [ %7200, %7197 ], [ %7245, %7244 ]
  %7258 = phi float [ %7234, %7248 ], [ %7214, %7204 ], [ %7199, %7197 ], [ %7234, %7244 ]
  %7259 = phi float [ %7250, %7248 ], [ %7206, %7204 ], [ 1.000000e+00, %7197 ], [ 1.000000e+00, %7244 ]
  %7260 = phi float [ %7246, %7248 ], [ %7206, %7204 ], [ 1.000000e+00, %7197 ], [ %7246, %7244 ]
  %7261 = phi float [ %7235, %7248 ], [ %7206, %7204 ], [ 1.000000e+00, %7197 ], [ %7235, %7244 ]
  %7262 = fmul fast float %7261, %7173
  %7263 = fmul fast float %7260, %7184
  %7264 = fmul fast float %7259, %7195
  %7265 = fadd fast float %7262, %7258
  %7266 = fadd fast float %7263, %7257
  %7267 = fadd fast float %7264, %7256
  %7268 = fmul fast float %7261, %7172
  %7269 = fmul fast float %7260, %7183
  %7270 = fmul fast float %7259, %7194
  br label %7271

; <label>:7271                                    ; preds = %7255, %7066
  %7272 = phi float [ %7270, %7255 ], [ %7072, %7066 ]
  %7273 = phi float [ %7269, %7255 ], [ %7071, %7066 ]
  %7274 = phi float [ %7268, %7255 ], [ %7070, %7066 ]
  %7275 = phi float [ %7267, %7255 ], [ %7069, %7066 ]
  %7276 = phi float [ %7266, %7255 ], [ %7068, %7066 ]
  %7277 = phi float [ %7265, %7255 ], [ %7067, %7066 ]
  %7278 = fmul fast float %7277, %6221
  %7279 = fmul fast float %7276, %6221
  %7280 = fmul fast float %7275, %6221
  %7281 = fmul fast float %7274, %6514
  %7282 = call float @dx.op.dot3.f32(i32 55, float %7274, float %7273, float %7272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7283 = call float @dx.op.dot3.f32(i32 55, float %7278, float %7279, float %7280, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7284 = select i1 %237, float %7282, float %7274
  %7285 = select i1 %237, float %7282, float %7273
  %7286 = select i1 %237, float 1.000000e+00, float %7272
  %7287 = select i1 %237, float %7283, float %7278
  %7288 = select i1 %237, float 0.000000e+00, float %7279
  %7289 = select i1 %237, float 0.000000e+00, float %7280
  %7290 = fmul fast float %7284, %6508
  %7291 = fmul fast float %7285, %6509
  %7292 = fmul fast float %7286, %6510
  %7293 = fadd fast float %7290, %7287
  %7294 = fadd fast float %7291, %7288
  %7295 = fadd fast float %7289, %7292
  %7296 = fmul fast float %7284, %6511
  %7297 = fmul fast float %7285, %6512
  %7298 = fmul fast float %7286, %6513
  %7299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7300 = extractvalue %dx.types.CBufRet.i32 %7299, 0
  %7301 = icmp eq i32 %7300, 0
  br i1 %7301, label %7669, label %7302, !dx.controlflow.hints !190

; <label>:7302                                    ; preds = %7271
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 2
  %7305 = extractvalue %dx.types.CBufRet.f32 %7303, 3
  %7306 = fmul fast float %7304, %99
  %7307 = fmul fast float %7305, %100
  %7308 = fmul fast float %7306, 2.000000e+00
  %7309 = fmul fast float %7307, 2.000000e+00
  %7310 = fsub fast float 1.000000e+00, %7308
  %7311 = fsub fast float 1.000000e+00, %7309
  %7312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7312, 0
  %7314 = extractvalue %dx.types.CBufRet.f32 %7312, 1
  %7315 = extractvalue %dx.types.CBufRet.f32 %7312, 2
  %7316 = fmul fast float %7310, %7313
  %7317 = fmul fast float %7310, %7314
  %7318 = fmul fast float %7310, %7315
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 0
  %7321 = extractvalue %dx.types.CBufRet.f32 %7319, 1
  %7322 = extractvalue %dx.types.CBufRet.f32 %7319, 2
  %7323 = fmul fast float %7311, %7320
  %7324 = fmul fast float %7311, %7321
  %7325 = fmul fast float %7311, %7322
  %7326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.f32 %7326, 0
  %7328 = extractvalue %dx.types.CBufRet.f32 %7326, 1
  %7329 = extractvalue %dx.types.CBufRet.f32 %7326, 2
  %7330 = fadd fast float %7323, %7327
  %7331 = fadd fast float %7330, %7316
  %7332 = fadd fast float %7324, %7328
  %7333 = fadd fast float %7332, %7317
  %7334 = fadd fast float %7325, %7329
  %7335 = fadd fast float %7334, %7318
  %7336 = fmul fast float %7331, %6507
  %7337 = fmul fast float %7333, %6507
  %7338 = fmul fast float %7335, %6507
  %7339 = fmul fast float %7336, %7336
  %7340 = fmul fast float %7337, %7337
  %7341 = fadd fast float %7339, %7340
  %7342 = fmul fast float %7338, %7338
  %7343 = fadd fast float %7341, %7342
  %7344 = call float @dx.op.unary.f32(i32 24, float %7343)  ; Sqrt(value)
  %7345 = extractvalue %dx.types.CBufRet.f32 %6232, 0
  %7346 = fsub fast float %7344, %7345
  %7347 = extractvalue %dx.types.CBufRet.f32 %6232, 2
  %7348 = fmul fast float %7346, %7347
  %7349 = call float @dx.op.unary.f32(i32 7, float %7348)  ; Saturate(value)
  %7350 = fadd fast float %7349, -5.000000e-01
  %7351 = fmul fast float %7350, 2.000000e+00
  %7352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.f32 %7352, 2
  %7354 = call float @dx.op.binary.f32(i32 36, float %7353, float %7351)  ; FMin(a,b)
  %7355 = fsub fast float -0.000000e+00, %7353
  %7356 = fcmp fast ogt float %7354, %7355
  br i1 %7356, label %7357, label %7669, !dx.controlflow.hints !191

; <label>:7357                                    ; preds = %7302
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 3
  %7360 = fcmp fast ogt float %7359, 0.000000e+00
  br i1 %7360, label %7361, label %7436, !dx.controlflow.hints !192

; <label>:7361                                    ; preds = %7357
  %7362 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7363 = extractvalue %dx.types.Dimensions %7362, 0
  %7364 = sitofp i32 %7363 to float
  %7365 = extractvalue %dx.types.Dimensions %7362, 1
  %7366 = sitofp i32 %7365 to float
  %7367 = fmul fast float %7306, %7364
  %7368 = fmul fast float %7307, %7366
  %7369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.f32 %7369, 1
  %7371 = fsub fast float -0.000000e+00, %7370
  %7372 = fptoui float %7371 to i32
  %7373 = fptoui float %7367 to i32
  %7374 = fptoui float %7368 to i32
  %7375 = and i32 %7372, 31
  %7376 = lshr i32 %7373, %7375
  %7377 = lshr i32 %7374, %7375
  %7378 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7372, i32 %7376, i32 %7377, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7379 = extractvalue %dx.types.ResRet.f32 %7378, 0
  %7380 = fcmp fast olt float %7379, -1.000000e+00
  %7381 = fcmp fast ogt float %7379, -1.000000e+00
  %7382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7383 = extractvalue %dx.types.CBufRet.f32 %7382, 1
  %7384 = select i1 %7381, float %7383, float 1.000000e+00
  %7385 = fadd fast float %7379, 1.000000e+00
  %7386 = fmul fast float %7384, %7385
  %7387 = call float @dx.op.unary.f32(i32 6, float %7386)  ; FAbs(value)
  %7388 = extractvalue %dx.types.CBufRet.f32 %7382, 3
  %7389 = fcmp fast oge float %7387, %7388
  %7390 = select i1 %7389, float 0x4197782600000000, float %7387
  %7391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7392 = extractvalue %dx.types.CBufRet.f32 %7391, 0
  %7393 = extractvalue %dx.types.CBufRet.f32 %7391, 1
  %7394 = extractvalue %dx.types.CBufRet.f32 %7391, 2
  %7395 = select i1 %7380, float %7392, float %7313
  %7396 = select i1 %7380, float %7393, float %7314
  %7397 = select i1 %7380, float %7394, float %7315
  %7398 = fmul fast float %7395, %7310
  %7399 = fmul fast float %7396, %7310
  %7400 = fmul fast float %7397, %7310
  %7401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7402 = extractvalue %dx.types.CBufRet.f32 %7401, 0
  %7403 = extractvalue %dx.types.CBufRet.f32 %7401, 1
  %7404 = extractvalue %dx.types.CBufRet.f32 %7401, 2
  %7405 = select i1 %7380, float %7402, float %7320
  %7406 = select i1 %7380, float %7403, float %7321
  %7407 = select i1 %7380, float %7404, float %7322
  %7408 = fmul fast float %7405, %7311
  %7409 = fmul fast float %7406, %7311
  %7410 = fmul fast float %7407, %7311
  %7411 = fadd fast float %7408, %7398
  %7412 = fadd fast float %7409, %7399
  %7413 = fadd fast float %7410, %7400
  %7414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7415 = extractvalue %dx.types.CBufRet.f32 %7414, 0
  %7416 = extractvalue %dx.types.CBufRet.f32 %7414, 1
  %7417 = extractvalue %dx.types.CBufRet.f32 %7414, 2
  %7418 = select i1 %7380, float %7415, float %7327
  %7419 = select i1 %7380, float %7416, float %7328
  %7420 = select i1 %7380, float %7417, float %7329
  %7421 = fadd fast float %7411, %7418
  %7422 = fadd fast float %7412, %7419
  %7423 = fadd fast float %7413, %7420
  %7424 = fmul fast float %7421, %7390
  %7425 = fmul fast float %7422, %7390
  %7426 = fmul fast float %7423, %7390
  %7427 = fmul fast float %7424, %7424
  %7428 = fmul fast float %7425, %7425
  %7429 = fadd fast float %7427, %7428
  %7430 = fmul fast float %7426, %7426
  %7431 = fadd fast float %7429, %7430
  %7432 = call float @dx.op.unary.f32(i32 24, float %7431)  ; Sqrt(value)
  %7433 = fsub fast float %7432, %7345
  %7434 = fmul fast float %7433, %7347
  %7435 = call float @dx.op.unary.f32(i32 7, float %7434)  ; Saturate(value)
  br label %7436

; <label>:7436                                    ; preds = %7361, %7357
  %7437 = phi float [ %7435, %7361 ], [ 1.000000e+00, %7357 ]
  %7438 = fmul fast float %7354, 5.000000e-01
  %7439 = fadd fast float %7438, 5.000000e-01
  %7440 = call float @dx.op.unary.f32(i32 22, float %7439)  ; Frc(value)
  %7441 = call float @dx.op.unary.f32(i32 27, float %7440)  ; Round_ni(value)
  %7442 = call float @dx.op.unary.f32(i32 22, float %7440)  ; Frc(value)
  %7443 = fmul fast float %7442, 2.000000e+00
  %7444 = fadd fast float %7443, -1.000000e+00
  %7445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7306, float %7307, float %7441, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7446 = extractvalue %dx.types.ResRet.f32 %7445, 0
  %7447 = extractvalue %dx.types.ResRet.f32 %7445, 1
  %7448 = extractvalue %dx.types.ResRet.f32 %7445, 2
  %7449 = extractvalue %dx.types.ResRet.f32 %7445, 3
  %7450 = fadd fast float %7446, -5.000000e-01
  %7451 = fadd fast float %7448, -5.000000e-01
  %7452 = fmul fast float %7450, 0xBFD5555560000000
  %7453 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7451, float %7452)  ; FMad(a,b,c)
  %7454 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7447, float 0.000000e+00)  ; FMad(a,b,c)
  %7455 = fadd fast float %7454, %7449
  %7456 = fmul fast float %7450, -7.500000e-01
  %7457 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7451, float %7456)  ; FMad(a,b,c)
  %7458 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7447, float 0.000000e+00)  ; FMad(a,b,c)
  %7459 = fadd fast float %7458, %7449
  %7460 = call float @dx.op.binary.f32(i32 35, float %7453, float -1.000000e+00)  ; FMax(a,b)
  %7461 = call float @dx.op.binary.f32(i32 35, float %7455, float -1.000000e+00)  ; FMax(a,b)
  %7462 = call float @dx.op.binary.f32(i32 35, float %7457, float -1.000000e+00)  ; FMax(a,b)
  %7463 = call float @dx.op.binary.f32(i32 35, float %7459, float -1.000000e+00)  ; FMax(a,b)
  %7464 = call float @dx.op.binary.f32(i32 36, float %7460, float 1.000000e+00)  ; FMin(a,b)
  %7465 = call float @dx.op.binary.f32(i32 36, float %7461, float 1.000000e+00)  ; FMin(a,b)
  %7466 = call float @dx.op.binary.f32(i32 36, float %7462, float 1.000000e+00)  ; FMin(a,b)
  %7467 = call float @dx.op.binary.f32(i32 36, float %7463, float 1.000000e+00)  ; FMin(a,b)
  %7468 = fcmp fast olt float %7464, 0x3FEFFF8020000000
  br i1 %7468, label %7469, label %7584, !dx.controlflow.hints !193

; <label>:7469                                    ; preds = %7436
  %7470 = extractvalue %dx.types.CBufRet.f32 %7352, 3
  %7471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7472 = extractvalue %dx.types.CBufRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.CBufRet.f32 %7471, 1
  %7474 = extractvalue %dx.types.CBufRet.f32 %7471, 2
  %7475 = extractvalue %dx.types.CBufRet.f32 %7471, 3
  %7476 = fsub fast float %7472, %7464
  %7477 = fsub fast float %7473, %7465
  %7478 = fsub fast float %7474, %7466
  %7479 = fsub fast float %7475, %7467
  %7480 = fmul fast float %7476, %7470
  %7481 = fmul fast float %7477, %7470
  %7482 = fmul fast float %7478, %7470
  %7483 = fmul fast float %7479, %7470
  %7484 = fadd fast float %7480, %7464
  %7485 = fadd fast float %7481, %7465
  %7486 = fsub fast float -0.000000e+00, %7485
  %7487 = fadd fast float %7482, %7466
  %7488 = fadd fast float %7483, %7467
  %7489 = fmul fast float %7484, %7484
  %7490 = fsub fast float %7485, %7489
  %7491 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7490)  ; FMax(a,b)
  %7492 = fdiv fast float 1.000000e+00, %7491
  %7493 = fmul fast float %7485, %7484
  %7494 = fsub fast float %7487, %7493
  %7495 = fsub fast float %7444, %7484
  %7496 = fmul fast float %7444, %7444
  %7497 = fsub fast float %7496, %7485
  %7498 = fmul fast float %7495, %7492
  %7499 = fmul fast float %7498, %7494
  %7500 = fsub fast float %7497, %7499
  %7501 = fmul fast float %7485, %7485
  %7502 = fsub fast float %7488, %7501
  %7503 = fmul fast float %7494, %7494
  %7504 = fmul fast float %7503, %7492
  %7505 = fsub fast float %7502, %7504
  %7506 = fdiv fast float %7500, %7505
  %7507 = fmul fast float %7494, %7506
  %7508 = fsub fast float %7495, %7507
  %7509 = fmul fast float %7508, %7492
  %7510 = fmul fast float %7509, %7484
  %7511 = fsub fast float 1.000000e+00, %7510
  %7512 = fmul fast float %7485, %7506
  %7513 = fsub fast float %7511, %7512
  %7514 = fmul fast float %7509, %7509
  %7515 = fmul fast float %7506, 4.000000e+00
  %7516 = fmul fast float %7515, %7513
  %7517 = fsub fast float %7514, %7516
  %7518 = call float @dx.op.unary.f32(i32 24, float %7517)  ; Sqrt(value)
  %7519 = fcmp fast oge float %7509, 0.000000e+00
  %7520 = fsub fast float -0.000000e+00, %7518
  %7521 = select i1 %7519, float %7520, float %7518
  %7522 = fsub fast float %7521, %7509
  %7523 = fdiv fast float %7522, %7506
  %7524 = fdiv fast float %7513, %7522
  %7525 = fmul fast float %7523, 5.000000e-01
  %7526 = fmul fast float %7524, 2.000000e+00
  %7527 = select i1 %7519, float %7525, float %7526
  %7528 = select i1 %7519, float %7526, float %7525
  %7529 = call float @dx.op.binary.f32(i32 35, float %7527, float %7528)  ; FMax(a,b)
  %7530 = call float @dx.op.binary.f32(i32 36, float %7527, float %7528)  ; FMin(a,b)
  %7531 = fcmp fast ogt float %7444, %7530
  br i1 %7531, label %7532, label %7542

; <label>:7532                                    ; preds = %7469
  %7533 = fsub fast float %7444, %7530
  %7534 = fsub fast float %7529, %7530
  %7535 = fmul fast float %7533, %7534
  %7536 = fmul fast float %7529, %7444
  %7537 = fadd fast float %7529, %7444
  %7538 = fmul fast float %7537, %7484
  %7539 = fadd fast float %7536, %7485
  %7540 = fsub fast float %7539, %7538
  %7541 = fdiv fast float %7540, %7535
  br label %7542

; <label>:7542                                    ; preds = %7532, %7469
  %7543 = phi float [ %7541, %7532 ], [ 0.000000e+00, %7469 ]
  %7544 = fcmp fast ogt float %7444, %7529
  %7545 = fsub fast float %7444, %7529
  br i1 %7544, label %7546, label %7556

; <label>:7546                                    ; preds = %7542
  %7547 = fsub fast float %7529, %7530
  %7548 = fmul fast float %7547, %7545
  %7549 = fmul fast float %7530, %7444
  %7550 = fadd fast float %7530, %7444
  %7551 = fmul fast float %7550, %7484
  %7552 = fsub fast float %7486, %7549
  %7553 = fadd fast float %7552, %7551
  %7554 = fdiv fast float %7553, %7548
  %7555 = fadd fast float %7554, %7543
  br label %7556

; <label>:7556                                    ; preds = %7546, %7542
  %7557 = phi float [ %7555, %7546 ], [ %7543, %7542 ]
  %7558 = fsub fast float %7444, %7530
  %7559 = fmul fast float %7558, %7545
  %7560 = fmul fast float %7530, %7529
  %7561 = fadd fast float %7530, %7529
  %7562 = fmul fast float %7561, %7484
  %7563 = fadd fast float %7560, %7485
  %7564 = fsub fast float %7563, %7562
  %7565 = fdiv fast float %7564, %7559
  %7566 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  %7567 = fcmp fast oeq float %6233, 0.000000e+00
  %7568 = extractvalue %dx.types.CBufRet.f32 %7352, 0
  %7569 = fcmp fast oeq float %7568, 0.000000e+00
  %7570 = or i1 %7567, %7569
  %7571 = fmul fast float %7568, 2.000000e+00
  %7572 = fadd fast float %7353, %7354
  %7573 = fdiv fast float %7572, %7571
  %7574 = call float @dx.op.unary.f32(i32 7, float %7573)  ; Saturate(value)
  %7575 = fmul fast float %7574, 2.000000e+00
  %7576 = fsub fast float 3.000000e+00, %7575
  %7577 = fmul fast float %7574, %7574
  %7578 = fmul fast float %7577, %7576
  %7579 = select i1 %7570, float 1.000000e+00, float %7578
  %7580 = fmul fast float %7565, %6233
  %7581 = fadd fast float %7566, %7580
  %7582 = call float @dx.op.unary.f32(i32 7, float %7581)  ; Saturate(value)
  %7583 = fmul fast float %7579, %7582
  br label %7584

; <label>:7584                                    ; preds = %7556, %7436
  %7585 = phi float [ %7583, %7556 ], [ 0.000000e+00, %7436 ]
  %7586 = fsub fast float 1.000000e+00, %7585
  %7587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7306, float %7307, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7588 = extractvalue %dx.types.ResRet.f32 %7587, 0
  %7589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7590 = extractvalue %dx.types.CBufRet.i32 %7589, 2
  %7591 = icmp eq i32 %7590, 0
  br i1 %7591, label %7597, label %7592

; <label>:7592                                    ; preds = %7584
  %7593 = call float @dx.op.unary.f32(i32 7, float %7585)  ; Saturate(value)
  %7594 = fadd fast float %7588, -1.000000e+00
  %7595 = fmul fast float %7593, %7594
  %7596 = fadd fast float %7595, 1.000000e+00
  br label %7597

; <label>:7597                                    ; preds = %7592, %7584
  %7598 = phi float [ %7596, %7592 ], [ %7586, %7584 ]
  br i1 %7360, label %7599, label %7617

; <label>:7599                                    ; preds = %7597
  %7600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7601 = extractvalue %dx.types.CBufRet.f32 %7600, 1
  %7602 = fsub fast float %7437, %7601
  %7603 = call float @dx.op.unary.f32(i32 7, float %7602)  ; Saturate(value)
  %7604 = fsub fast float %7437, %7359
  %7605 = call float @dx.op.unary.f32(i32 7, float %7604)  ; Saturate(value)
  %7606 = fsub fast float %7603, %7605
  %7607 = fsub fast float %7439, %7605
  %7608 = fdiv fast float %7607, %7606
  %7609 = call float @dx.op.unary.f32(i32 7, float %7608)  ; Saturate(value)
  %7610 = fmul fast float %7609, 2.000000e+00
  %7611 = fsub fast float 3.000000e+00, %7610
  %7612 = fsub fast float %7588, %7598
  %7613 = fmul fast float %7609, %7609
  %7614 = fmul fast float %7613, %7612
  %7615 = fmul fast float %7614, %7611
  %7616 = fadd fast float %7615, %7598
  br label %7617

; <label>:7617                                    ; preds = %7599, %7597
  %7618 = phi float [ %7616, %7599 ], [ %7598, %7597 ]
  %7619 = call float @dx.op.binary.f32(i32 35, float %7588, float %7618)  ; FMax(a,b)
  %7620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.i32 %7620, 2
  %7622 = and i32 %7621, 1
  %7623 = icmp eq i32 %7622, 0
  %7624 = fcmp fast une float %7619, 1.000000e+00
  %7625 = and i1 %7624, %7623
  br i1 %7625, label %7626, label %7645

; <label>:7626                                    ; preds = %7617
  %7627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7306, float %7307, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7628 = extractvalue %dx.types.ResRet.f32 %7627, 0
  %7629 = extractvalue %dx.types.ResRet.f32 %7627, 1
  %7630 = extractvalue %dx.types.ResRet.f32 %7627, 2
  %7631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7632 = extractvalue %dx.types.CBufRet.f32 %7631, 1
  %7633 = fmul fast float %7632, %7628
  %7634 = fmul fast float %7632, %7629
  %7635 = fmul fast float %7632, %7630
  %7636 = fcmp fast ogt float %7588, 0x3FEFFF2E40000000
  %7637 = fsub fast float 1.000000e+00, %7619
  %7638 = fsub fast float 1.000000e+00, %7588
  %7639 = fdiv fast float %7637, %7638
  %7640 = call float @dx.op.unary.f32(i32 7, float %7639)  ; Saturate(value)
  %7641 = select i1 %7636, float 0.000000e+00, float %7640
  %7642 = fmul fast float %7633, %7641
  %7643 = fmul fast float %7634, %7641
  %7644 = fmul fast float %7635, %7641
  br label %7645

; <label>:7645                                    ; preds = %7626, %7617
  %7646 = phi float [ 0.000000e+00, %7617 ], [ %7642, %7626 ]
  %7647 = phi float [ 0.000000e+00, %7617 ], [ %7643, %7626 ]
  %7648 = phi float [ 0.000000e+00, %7617 ], [ %7644, %7626 ]
  %7649 = fmul fast float %7646, %6221
  %7650 = fmul fast float %7647, %6221
  %7651 = fmul fast float %7648, %6221
  %7652 = fmul fast float %7619, %7281
  %7653 = call float @dx.op.dot3.f32(i32 55, float %7619, float %7619, float %7619, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7654 = call float @dx.op.dot3.f32(i32 55, float %7649, float %7650, float %7651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7655 = select i1 %237, float %7653, float %7619
  %7656 = select i1 %237, float 1.000000e+00, float %7619
  %7657 = select i1 %237, float %7654, float %7649
  %7658 = select i1 %237, float 0.000000e+00, float %7650
  %7659 = select i1 %237, float 0.000000e+00, float %7651
  %7660 = fmul fast float %7655, %7293
  %7661 = fmul fast float %7655, %7294
  %7662 = fmul fast float %7656, %7295
  %7663 = fadd fast float %7660, %7657
  %7664 = fadd fast float %7661, %7658
  %7665 = fadd fast float %7659, %7662
  %7666 = fmul fast float %7655, %7296
  %7667 = fmul fast float %7655, %7297
  %7668 = fmul fast float %7656, %7298
  br label %7669

; <label>:7669                                    ; preds = %7645, %7302, %7271, %6503
  %7670 = phi float [ %6508, %6503 ], [ %7293, %7271 ], [ %7663, %7645 ], [ %7293, %7302 ]
  %7671 = phi float [ %6509, %6503 ], [ %7294, %7271 ], [ %7664, %7645 ], [ %7294, %7302 ]
  %7672 = phi float [ %6510, %6503 ], [ %7295, %7271 ], [ %7665, %7645 ], [ %7295, %7302 ]
  %7673 = phi float [ %6511, %6503 ], [ %7296, %7271 ], [ %7666, %7645 ], [ %7296, %7302 ]
  %7674 = phi float [ %6512, %6503 ], [ %7297, %7271 ], [ %7667, %7645 ], [ %7297, %7302 ]
  %7675 = phi float [ %6513, %6503 ], [ %7298, %7271 ], [ %7668, %7645 ], [ %7298, %7302 ]
  %7676 = phi float [ %6514, %6503 ], [ %7281, %7271 ], [ %7652, %7645 ], [ %7281, %7302 ]
  %7677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7678 = extractvalue %dx.types.CBufRet.f32 %7677, 2
  %7679 = extractvalue %dx.types.CBufRet.f32 %7677, 3
  %7680 = fmul fast float %7678, %99
  %7681 = fmul fast float %7679, %100
  %7682 = call float @dx.op.unary.f32(i32 7, float %7680)  ; Saturate(value)
  %7683 = call float @dx.op.unary.f32(i32 7, float %7681)  ; Saturate(value)
  %7684 = select i1 %6243, i32 2, i32 0
  %7685 = or i32 %7684, 1
  %7686 = uitofp i32 %7685 to float
  %7687 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7682, float %7683, float %7686, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7688 = extractvalue %dx.types.ResRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.ResRet.f32 %7687, 1
  %7690 = extractvalue %dx.types.ResRet.f32 %7687, 2
  %7691 = extractvalue %dx.types.ResRet.f32 %7687, 3
  %7692 = add nuw nsw i32 %7684, 2
  %7693 = uitofp i32 %7692 to float
  %7694 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7682, float %7683, float %7693, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7695 = extractvalue %dx.types.ResRet.f32 %7694, 0
  %7696 = extractvalue %dx.types.ResRet.f32 %7694, 1
  %7697 = extractvalue %dx.types.ResRet.f32 %7694, 2
  %7698 = extractvalue %dx.types.ResRet.f32 %7694, 3
  %7699 = call float @dx.op.binary.f32(i32 35, float %7689, float %7690)  ; FMax(a,b)
  %7700 = call float @dx.op.binary.f32(i32 35, float %7688, float %7699)  ; FMax(a,b)
  %7701 = call float @dx.op.binary.f32(i32 35, float %7700, float %7691)  ; FMax(a,b)
  %7702 = call float @dx.op.binary.f32(i32 36, float %7696, float %7697)  ; FMin(a,b)
  %7703 = call float @dx.op.binary.f32(i32 36, float %7695, float %7702)  ; FMin(a,b)
  %7704 = call float @dx.op.binary.f32(i32 36, float %7703, float %7698)  ; FMin(a,b)
  %7705 = fmul fast float %7701, 2.550000e+02
  %7706 = fadd fast float %7705, 0x3F70101020000000
  %7707 = fptoui float %7706 to i32
  %7708 = fmul fast float %7704, 2.550000e+02
  %7709 = fadd fast float %7708, 0x3F70101020000000
  %7710 = fptoui float %7709 to i32
  %7711 = icmp ult i32 %7707, %7710
  br i1 %7711, label %7712, label %7881

; <label>:7712                                    ; preds = %7669
  %7713 = fcmp fast ogt float %86, 9.843750e-01
  %7714 = fadd fast float %6507, -4.000000e+00
  %7715 = select i1 %7713, float -4.000000e+00, float %7714
  %7716 = call float @dx.op.binary.f32(i32 35, float %7715, float 0.000000e+00)  ; FMax(a,b)
  %7717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7718 = extractvalue %dx.types.CBufRet.f32 %7717, 0
  %7719 = fadd fast float %7718, %7716
  %7720 = extractvalue %dx.types.CBufRet.f32 %7717, 2
  %7721 = fmul fast float %7719, %7720
  %7722 = call float @dx.op.unary.f32(i32 23, float %7721)  ; Log(value)
  %7723 = extractvalue %dx.types.CBufRet.f32 %7717, 3
  %7724 = fmul fast float %7723, %7722
  %7725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7725, 2
  %7727 = fmul fast float %7724, %7726
  %7728 = call float @dx.op.unary.f32(i32 7, float %7727)  ; Saturate(value)
  %7729 = uitofp i32 %7707 to float
  %7730 = uitofp i32 %7710 to float
  %7731 = fadd fast float %7729, 5.000000e-01
  %7732 = fadd fast float %7730, 5.000000e-01
  %7733 = fmul fast float %7726, %7731
  %7734 = fmul fast float %7726, %7732
  %7735 = fadd fast float %7733, 0x3F0FFB4800000000
  %7736 = fadd fast float %7734, 0xBF0FFB4800000000
  %7737 = call float @dx.op.binary.f32(i32 35, float %7728, float %7735)  ; FMax(a,b)
  %7738 = call float @dx.op.binary.f32(i32 36, float %7737, float %7736)  ; FMin(a,b)
  %7739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7740 = extractvalue %dx.types.CBufRet.f32 %7739, 1
  %7741 = extractvalue %dx.types.CBufRet.f32 %7739, 2
  %7742 = extractvalue %dx.types.CBufRet.f32 %7739, 0
  %7743 = select i1 %6243, float %7742, float 0.000000e+00
  %7744 = fmul fast float %7740, %7738
  %7745 = fadd fast float %7743, %7744
  %7746 = fadd fast float %7743, %7741
  %7747 = fsub fast float %7740, %7741
  %7748 = fadd fast float %7747, %7743
  %7749 = call float @dx.op.binary.f32(i32 35, float %7745, float %7746)  ; FMax(a,b)
  %7750 = call float @dx.op.binary.f32(i32 36, float %7749, float %7748)  ; FMin(a,b)
  %7751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7682, float %7683, float %7750, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7752 = extractvalue %dx.types.ResRet.f32 %7751, 0
  %7753 = extractvalue %dx.types.ResRet.f32 %7751, 1
  %7754 = extractvalue %dx.types.ResRet.f32 %7751, 2
  %7755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7756 = extractvalue %dx.types.CBufRet.i32 %7755, 0
  %7757 = extractvalue %dx.types.CBufRet.i32 %7755, 1
  %7758 = uitofp i32 %7756 to float
  %7759 = uitofp i32 %7757 to float
  %7760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7761 = extractvalue %dx.types.CBufRet.f32 %7760, 0
  %7762 = extractvalue %dx.types.CBufRet.f32 %7760, 1
  %7763 = fmul fast float %7758, %7682
  %7764 = fmul fast float %7759, %7683
  %7765 = fadd fast float %7763, -5.000000e-01
  %7766 = fadd fast float %7764, -5.000000e-01
  %7767 = call float @dx.op.unary.f32(i32 22, float %7765)  ; Frc(value)
  %7768 = call float @dx.op.unary.f32(i32 22, float %7766)  ; Frc(value)
  %7769 = fmul fast float %7767, %7767
  %7770 = fmul fast float %7769, %7767
  %7771 = fsub fast float 3.000000e+00, %7767
  %7772 = fmul fast float %7769, %7771
  %7773 = fmul fast float %7767, 3.000000e+00
  %7774 = fmul fast float %7770, 3.000000e+00
  %7775 = fmul fast float %7769, 6.000000e+00
  %7776 = fsub fast float %7774, %7775
  %7777 = fadd fast float %7776, 4.000000e+00
  %7778 = fmul fast float %7777, 0x3FC5555560000000
  %7779 = fmul fast float %7770, -3.000000e+00
  %7780 = fadd fast float %7769, %7767
  %7781 = fmul fast float %7780, 3.000000e+00
  %7782 = fadd fast float %7779, 1.000000e+00
  %7783 = fadd fast float %7782, %7781
  %7784 = fmul fast float %7770, 0x3FC5555560000000
  %7785 = fmul fast float %7768, %7768
  %7786 = fmul fast float %7785, %7768
  %7787 = fsub fast float 3.000000e+00, %7768
  %7788 = fmul fast float %7785, %7787
  %7789 = fmul fast float %7768, 3.000000e+00
  %7790 = fmul fast float %7786, 3.000000e+00
  %7791 = fmul fast float %7785, 6.000000e+00
  %7792 = fsub fast float %7790, %7791
  %7793 = fadd fast float %7792, 4.000000e+00
  %7794 = fmul fast float %7793, 0x3FC5555560000000
  %7795 = fmul fast float %7786, -3.000000e+00
  %7796 = fadd fast float %7785, %7768
  %7797 = fmul fast float %7796, 3.000000e+00
  %7798 = fadd fast float %7795, 1.000000e+00
  %7799 = fadd fast float %7798, %7797
  %7800 = fmul fast float %7786, 0x3FC5555560000000
  %7801 = fadd fast float %7767, 1.000000e+00
  %7802 = fsub fast float 1.000000e+00, %7773
  %7803 = fadd fast float %7802, %7772
  %7804 = fadd fast float %7803, %7777
  %7805 = fmul fast float %7804, 0x3FC5555560000000
  %7806 = fdiv fast float %7778, %7805
  %7807 = fsub fast float %7801, %7806
  %7808 = fsub fast float 1.000000e+00, %7767
  %7809 = fadd fast float %7783, %7770
  %7810 = fmul fast float %7809, 0x3FC5555560000000
  %7811 = fdiv fast float %7784, %7810
  %7812 = fadd fast float %7808, %7811
  %7813 = fadd fast float %7768, 1.000000e+00
  %7814 = fsub fast float 1.000000e+00, %7789
  %7815 = fadd fast float %7814, %7788
  %7816 = fadd fast float %7815, %7793
  %7817 = fmul fast float %7816, 0x3FC5555560000000
  %7818 = fdiv fast float %7794, %7817
  %7819 = fsub fast float %7813, %7818
  %7820 = fsub fast float 1.000000e+00, %7768
  %7821 = fadd fast float %7799, %7786
  %7822 = fmul fast float %7821, 0x3FC5555560000000
  %7823 = fdiv fast float %7800, %7822
  %7824 = fadd fast float %7823, %7820
  %7825 = fmul fast float %7807, %7761
  %7826 = fsub fast float %7682, %7825
  %7827 = fmul fast float %7812, %7761
  %7828 = fadd fast float %7827, %7682
  %7829 = fmul fast float %7824, %7762
  %7830 = fadd fast float %7829, %7683
  %7831 = fmul fast float %7819, %7762
  %7832 = fsub fast float %7683, %7831
  %7833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7826, float %7832, float %7750, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7834 = extractvalue %dx.types.ResRet.f32 %7833, 0
  %7835 = extractvalue %dx.types.ResRet.f32 %7833, 1
  %7836 = extractvalue %dx.types.ResRet.f32 %7833, 2
  %7837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7828, float %7832, float %7750, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7838 = extractvalue %dx.types.ResRet.f32 %7837, 0
  %7839 = extractvalue %dx.types.ResRet.f32 %7837, 1
  %7840 = extractvalue %dx.types.ResRet.f32 %7837, 2
  %7841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7826, float %7830, float %7750, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7842 = extractvalue %dx.types.ResRet.f32 %7841, 0
  %7843 = extractvalue %dx.types.ResRet.f32 %7841, 1
  %7844 = extractvalue %dx.types.ResRet.f32 %7841, 2
  %7845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7828, float %7830, float %7750, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7846 = extractvalue %dx.types.ResRet.f32 %7845, 0
  %7847 = extractvalue %dx.types.ResRet.f32 %7845, 1
  %7848 = extractvalue %dx.types.ResRet.f32 %7845, 2
  %7849 = fsub fast float %7842, %7834
  %7850 = fsub fast float %7843, %7835
  %7851 = fsub fast float %7844, %7836
  %7852 = fmul fast float %7849, %7822
  %7853 = fmul fast float %7850, %7822
  %7854 = fmul fast float %7851, %7822
  %7855 = fadd fast float %7852, %7834
  %7856 = fadd fast float %7853, %7835
  %7857 = fadd fast float %7854, %7836
  %7858 = fsub fast float %7846, %7838
  %7859 = fsub fast float %7847, %7839
  %7860 = fsub fast float %7848, %7840
  %7861 = fmul fast float %7858, %7822
  %7862 = fmul fast float %7859, %7822
  %7863 = fmul fast float %7860, %7822
  %7864 = fsub fast float %7838, %7855
  %7865 = fadd fast float %7864, %7861
  %7866 = fsub fast float %7839, %7856
  %7867 = fadd fast float %7866, %7862
  %7868 = fsub fast float %7840, %7857
  %7869 = fadd fast float %7868, %7863
  %7870 = fmul fast float %7865, %7810
  %7871 = fmul fast float %7867, %7810
  %7872 = fmul fast float %7869, %7810
  %7873 = fadd fast float %7870, %7855
  %7874 = fadd fast float %7871, %7856
  %7875 = fadd fast float %7872, %7857
  %7876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7877 = extractvalue %dx.types.CBufRet.f32 %7876, 1
  %7878 = fmul fast float %7873, %7877
  %7879 = fmul fast float %7874, %7877
  %7880 = fmul fast float %7875, %7877
  br label %7881

; <label>:7881                                    ; preds = %7712, %7669
  %7882 = phi float [ %7752, %7712 ], [ 1.000000e+00, %7669 ]
  %7883 = phi float [ %7753, %7712 ], [ 1.000000e+00, %7669 ]
  %7884 = phi float [ %7754, %7712 ], [ 1.000000e+00, %7669 ]
  %7885 = phi float [ %7878, %7712 ], [ 0.000000e+00, %7669 ]
  %7886 = phi float [ %7879, %7712 ], [ 0.000000e+00, %7669 ]
  %7887 = phi float [ %7880, %7712 ], [ 0.000000e+00, %7669 ]
  %7888 = fmul fast float %7885, %6221
  %7889 = fmul fast float %7886, %6221
  %7890 = fmul fast float %7887, %6221
  %7891 = fmul fast float %7882, %7676
  %7892 = call float @dx.op.dot3.f32(i32 55, float %7882, float %7883, float %7884, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7893 = call float @dx.op.dot3.f32(i32 55, float %7888, float %7889, float %7890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7894 = select i1 %237, float %7892, float %7882
  %7895 = select i1 %237, float %7892, float %7883
  %7896 = select i1 %237, float 1.000000e+00, float %7884
  %7897 = select i1 %237, float %7893, float %7888
  %7898 = select i1 %237, float 0.000000e+00, float %7889
  %7899 = select i1 %237, float 0.000000e+00, float %7890
  %7900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7901 = extractvalue %dx.types.CBufRet.i32 %7900, 3
  %7902 = and i32 %7901, 3
  %7903 = icmp ne i32 %7902, 0
  %7904 = and i32 %7901, 4
  %7905 = icmp ne i32 %7904, 0
  %7906 = and i1 %7903, %7905
  %7907 = and i1 %237, %7906
  br i1 %7907, label %7908, label %7914

; <label>:7908                                    ; preds = %7881
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 1
  %7911 = fadd fast float %7891, -1.000000e+00
  %7912 = fmul fast float %7910, %7911
  %7913 = fadd fast float %7912, 1.000000e+00
  br label %7914

; <label>:7914                                    ; preds = %7908, %7881
  %7915 = phi float [ %7913, %7908 ], [ %7891, %7881 ]
  %7916 = fadd fast float %7673, %7670
  %7917 = fmul fast float %7894, %7916
  %7918 = fadd fast float %7917, %7897
  %7919 = fadd fast float %7674, %7671
  %7920 = fmul fast float %7895, %7919
  %7921 = fadd fast float %7920, %7898
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 0
  br i1 %237, label %7924, label %7948

; <label>:7924                                    ; preds = %7914
  %7925 = fadd fast float %7918, %7921
  %7926 = fmul fast float %7923, %7925
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 3
  %7929 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %7930 = fsub fast float %6230, %6224
  %7931 = fadd fast float %7930, %6231
  %7932 = fsub fast float %7931, %7929
  %7933 = extractvalue %dx.types.CBufRet.f32 %6225, 2
  %7934 = fmul fast float %7932, %7933
  %7935 = call float @dx.op.unary.f32(i32 7, float %7934)  ; Saturate(value)
  %7936 = fsub fast float %7935, %7928
  %7937 = fmul fast float %7936, %7915
  %7938 = fadd fast float %7937, %7928
  %7939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7939, 0
  %7941 = fsub fast float %7938, %7940
  %7942 = fmul fast float %7941, 1.000000e+01
  %7943 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  %7944 = fsub fast float %1480, %6221
  %7945 = fmul fast float %7943, %7944
  %7946 = fadd fast float %7945, %6221
  %7947 = fmul fast float %7946, %7938
  br label %7972

; <label>:7948                                    ; preds = %7914
  %7949 = fadd fast float %7675, %7672
  %7950 = fmul fast float %7896, %7949
  %7951 = fadd fast float %7950, %7899
  %7952 = fmul fast float %7923, %7918
  %7953 = fmul fast float %7923, %7921
  %7954 = fmul fast float %7923, %7951
  %7955 = call float @dx.op.binary.f32(i32 35, float %7953, float %7954)  ; FMax(a,b)
  %7956 = call float @dx.op.binary.f32(i32 35, float %7952, float %7955)  ; FMax(a,b)
  %7957 = call float @dx.op.binary.f32(i32 35, float %7956, float %6221)  ; FMax(a,b)
  %7958 = fcmp fast ugt float %7957, 0x3F10000000000000
  br i1 %7958, label %7960, label %7959

; <label>:7959                                    ; preds = %7948
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7960

; <label>:7960                                    ; preds = %7959, %7948
  %7961 = add i32 %71, 132
  %7962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %7961, i32 undef)  ; BufferLoad(srv,index,wot)
  %7963 = extractvalue %dx.types.ResRet.i32 %7962, 0
  %7964 = and i32 %7963, 32
  %7965 = icmp eq i32 %7964, 0
  br i1 %7965, label %7972, label %7966

; <label>:7966                                    ; preds = %7960
  %7967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7968 = extractvalue %dx.types.CBufRet.f32 %7967, 0
  %7969 = fmul fast float %7968, 0x3FE99999A0000000
  %7970 = fadd fast float %7968, %7952
  %7971 = fadd fast float %7969, %7954
  br label %7972

; <label>:7972                                    ; preds = %7966, %7960, %7924
  %7973 = phi float [ %7926, %7924 ], [ %7970, %7966 ], [ %7952, %7960 ]
  %7974 = phi float [ %7947, %7924 ], [ %7953, %7966 ], [ %7953, %7960 ]
  %7975 = phi float [ %7946, %7924 ], [ %7971, %7966 ], [ %7954, %7960 ]
  %7976 = phi float [ %7946, %7924 ], [ %6221, %7966 ], [ %6221, %7960 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7977 = call float @dx.op.binary.f32(i32 36, float %7973, float 3.225500e+04)  ; FMin(a,b)
  %7978 = call float @dx.op.binary.f32(i32 36, float %7974, float 3.225500e+04)  ; FMin(a,b)
  %7979 = call float @dx.op.binary.f32(i32 36, float %7975, float 3.225500e+04)  ; FMin(a,b)
  %7980 = call float @dx.op.binary.f32(i32 36, float %7976, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7977)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7978)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7979)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7980)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

