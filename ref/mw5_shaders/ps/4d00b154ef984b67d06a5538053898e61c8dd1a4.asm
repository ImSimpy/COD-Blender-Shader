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
; shader hash: 2045da552fef3e730ce2fef46fabf6cb
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
  %178 = add i32 %71, 120
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = extractvalue %dx.types.ResRet.i32 %179, 1
  %182 = extractvalue %dx.types.ResRet.i32 %179, 2
  %183 = extractvalue %dx.types.ResRet.i32 %179, 3
  %184 = bitcast i32 %180 to float
  %185 = bitcast i32 %181 to float
  %186 = bitcast i32 %182 to float
  %187 = bitcast i32 %183 to float
  %188 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %189 = call float @dx.op.unary.f32(i32 25, float %188)  ; Rsqrt(value)
  %190 = fmul fast float %189, %76
  %191 = fmul fast float %189, %77
  %192 = fmul fast float %189, %78
  %193 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %146, float %147, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %194 = call float @dx.op.unary.f32(i32 25, float %193)  ; Rsqrt(value)
  %195 = fmul fast float %194, %146
  %196 = fmul fast float %194, %147
  %197 = fmul fast float %194, %148
  %198 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %199 = fmul fast float %198, %198
  %200 = fmul fast float %199, %186
  %201 = fadd fast float %200, %187
  %202 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 3
  %205 = fmul fast float %204, %193
  %206 = fsub fast float %184, %205
  %207 = fmul fast float %206, %185
  %208 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %209 = fmul fast float %208, %202
  %210 = fmul fast float %99, 5.000000e-01
  %211 = fmul fast float %100, 5.000000e-01
  %212 = fptosi float %210 to i32
  %213 = fptosi float %211 to i32
  %214 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = lshr i32 %215, 18
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F4C00EBA0000000
  %219 = call float @dx.op.unary.f32(i32 21, float %218)  ; Exp(value)
  %220 = fadd fast float %219, -1.000000e+00
  %221 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %222 = extractvalue %dx.types.Dimensions %221, 0
  %223 = sitofp i32 %222 to float
  %224 = extractvalue %dx.types.Dimensions %221, 1
  %225 = sitofp i32 %224 to float
  %226 = fcmp fast oge float %210, %223
  %227 = fcmp fast oge float %211, %225
  %228 = or i1 %226, %227
  %229 = select i1 %228, float 0x4197782600000000, float %220
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = extractvalue %dx.types.CBufRet.f32 %230, 3
  %233 = fmul fast float %231, %99
  %234 = fmul fast float %232, %100
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 114688
  %238 = icmp ne i32 %237, 0
  %239 = select i1 %238, float %233, float 0.000000e+00
  %240 = select i1 %238, float %234, float 0.000000e+00
  %241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %65, float %239, float %240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = fmul fast float %242, 2.550000e+02
  %244 = fptoui float %243 to i32
  %245 = select i1 %238, i32 %244, i32 0
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 3
  %249 = and i32 %248, 3
  %250 = icmp ne i32 %249, 0
  %251 = and i32 %248, 4
  %252 = icmp ne i32 %251, 0
  %253 = and i1 %250, %252
  br i1 %253, label %254, label %265

; <label>:254                                     ; preds = %0
  %255 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %256 = fmul fast float %255, %100
  %257 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %258 = fmul fast float %257, %99
  %259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %64, float %258, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = fsub fast float 1.000000e+00, %260
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = fcmp fast olt float %261, %263
  br label %268

; <label>:265                                     ; preds = %0
  %266 = icmp eq i32 %251, 0
  %267 = and i1 %250, %266
  br label %268

; <label>:268                                     ; preds = %265, %254
  %269 = phi i1 [ %264, %254 ], [ %267, %265 ]
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %272 = fmul fast float %271, 0x3FE3C6EF40000000
  %273 = frem fast float %99, 2.560000e+02
  %274 = frem fast float %100, 2.560000e+02
  %275 = fptoui float %273 to i32
  %276 = fptoui float %274 to i32
  %277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %275, i32 %276, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fadd fast float %278, %272
  %280 = call float @dx.op.unary.f32(i32 22, float %279)  ; Frc(value)
  %281 = add i32 %71, 60
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = shl i32 %283, 4
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %283, 7
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %283, 22
  %291 = shl nuw nsw i32 %290, 5
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %71, 72
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %295, 8
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %295, 16
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = add i32 %71, 36
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %71, 96
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %318, 0x3F50624DE0000000
  %322 = fmul fast float %320, 0x3F50624DE0000000
  %323 = add i32 %71, 108
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 2
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %336, label %328

; <label>:328                                     ; preds = %268
  %329 = add i32 %71, 216
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = add i32 %331, 0
  %333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %333, %dx.types.Handle %96, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 3
  br label %336

; <label>:336                                     ; preds = %328, %268
  %337 = phi float [ 1.000000e+00, %268 ], [ %335, %328 ]
  %338 = add i32 %71, 24
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = add i32 %71, 28
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = or i32 %343, %340
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %1098, label %346

; <label>:346                                     ; preds = %336
  %347 = add i32 %71, 92
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = lshr i32 %349, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = fmul fast float %351, 0x3F50624DE0000000
  %353 = add i32 %71, 40
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = lshr i32 %355, 16
  %357 = and i32 %356, 255
  %358 = lshr i32 %355, 24
  %359 = add i32 %71, 100
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = add i32 %71, 32
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = lshr i32 %368, 22
  %370 = shl nuw nsw i32 %369, 5
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = shl i32 %368, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %368, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %380 = fmul fast float %379, 1.000000e+03
  %381 = fmul fast float %321, %380
  %382 = call float @dx.op.unary.f32(i32 22, float %381)  ; Frc(value)
  %383 = fadd fast float %382, %311
  %384 = fmul fast float %322, %380
  %385 = call float @dx.op.unary.f32(i32 22, float %384)  ; Frc(value)
  %386 = fadd fast float %385, %313
  %387 = fmul fast float %352, %380
  %388 = call float @dx.op.unary.f32(i32 22, float %387)  ; Frc(value)
  %389 = fmul fast float %388, 0x401921FB60000000
  %390 = fadd fast float %389, %371
  %391 = call float @dx.op.unary.f32(i32 13, float %390)  ; Sin(value)
  %392 = call float @dx.op.unary.f32(i32 12, float %390)  ; Cos(value)
  %393 = fsub fast float -0.000000e+00, %391
  %394 = fadd fast float %82, -5.000000e-01
  %395 = fadd fast float %83, -5.000000e-01
  %396 = fmul fast float %363, %394
  %397 = fmul fast float %365, %395
  %398 = fadd fast float %396, 5.000000e-01
  %399 = fadd fast float %397, 5.000000e-01
  %400 = fmul fast float %374, %398
  %401 = fmul fast float %377, %399
  %402 = fmul fast float %392, %400
  %403 = call float @dx.op.tertiary.f32(i32 46, float %393, float %401, float %402)  ; FMad(a,b,c)
  %404 = fmul fast float %391, %400
  %405 = call float @dx.op.tertiary.f32(i32 46, float %392, float %401, float %404)  ; FMad(a,b,c)
  %406 = fadd fast float %383, %403
  %407 = fadd fast float %386, %405
  %408 = icmp ugt i32 %357, 1
  %409 = icmp ugt i32 %355, 33554431
  %410 = or i1 %409, %408
  br i1 %410, label %411, label %436

; <label>:411                                     ; preds = %346
  %412 = add i32 %71, 84
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = lshr i32 %414, 16
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = fmul fast float %379, %416
  %418 = call float @dx.op.unary.f32(i32 22, float %417)  ; Frc(value)
  %419 = mul nuw nsw i32 %357, %358
  %420 = uitofp i32 %419 to float
  %421 = fmul fast float %418, %420
  %422 = call float @dx.op.unary.f32(i32 27, float %421)  ; Round_ni(value)
  %423 = fptoui float %422 to i32
  %424 = urem i32 %423, %357
  %425 = udiv i32 %423, %358
  %426 = call float @dx.op.unary.f32(i32 22, float %406)  ; Frc(value)
  %427 = call float @dx.op.unary.f32(i32 22, float %407)  ; Frc(value)
  %428 = uitofp i32 %424 to float
  %429 = uitofp i32 %425 to float
  %430 = fadd fast float %426, %428
  %431 = fadd fast float %427, %429
  %432 = uitofp i32 %357 to float
  %433 = uitofp i32 %358 to float
  %434 = fdiv fast float %430, %432
  %435 = fdiv fast float %431, %433
  br label %436

; <label>:436                                     ; preds = %411, %346
  %437 = phi float [ %434, %411 ], [ %406, %346 ]
  %438 = phi float [ %435, %411 ], [ %407, %346 ]
  %439 = and i32 %340, 16777216
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %550, label %441

; <label>:441                                     ; preds = %436
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %444 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %445 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %446 = fadd fast float %443, %146
  %447 = fadd fast float %444, %147
  %448 = fadd fast float %445, %148
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = call float @dx.op.unary.f32(i32 7, float %450)  ; Saturate(value)
  %452 = icmp eq i32 %70, 65535
  br i1 %452, label %547, label %453

; <label>:453                                     ; preds = %441
  %454 = lshr i32 %70, 1
  %455 = shl i32 %454, 2
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %70, 1
  %459 = icmp ne i32 %458, 0
  %460 = lshr i32 %457, 16
  %461 = and i32 %457, 65535
  %462 = select i1 %459, i32 %460, i32 %461
  %463 = icmp eq i32 %462, 65535
  br i1 %463, label %543, label %464

; <label>:464                                     ; preds = %453
  %465 = mul nuw nsw i32 %462, 40
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = add nuw nsw i32 %465, 12
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = add nuw nsw i32 %465, 24
  %476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 0
  %478 = extractvalue %dx.types.ResRet.f32 %476, 1
  %479 = extractvalue %dx.types.ResRet.f32 %476, 2
  %480 = add nuw nsw i32 %465, 36
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = fsub fast float %446, %467
  %484 = fsub fast float %447, %468
  %485 = fsub fast float %448, %469
  %486 = fmul fast float %482, %483
  %487 = fmul fast float %482, %484
  %488 = fmul fast float %482, %485
  %489 = call float @dx.op.unary.f32(i32 27, float %486)  ; Round_ni(value)
  %490 = call float @dx.op.unary.f32(i32 27, float %487)  ; Round_ni(value)
  %491 = call float @dx.op.unary.f32(i32 27, float %488)  ; Round_ni(value)
  %492 = fadd fast float %489, 5.000000e-01
  %493 = fadd fast float %490, 5.000000e-01
  %494 = fadd fast float %491, 5.000000e-01
  %495 = fmul fast float %492, %472
  %496 = fmul fast float %493, %473
  %497 = fmul fast float %494, %474
  %498 = shl i32 %70, 2
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = add i32 %500, 0
  %502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %503 = call float @dx.op.unary.f32(i32 22, float %495)  ; Frc(value)
  %504 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %505 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %502, %dx.types.Handle %65, float %503, float %504, float %505, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = fmul fast float %507, 1.023000e+03
  %511 = fmul fast float %508, 1.023000e+03
  %512 = fmul fast float %509, 1.023000e+03
  %513 = fadd fast float %510, 5.000000e-01
  %514 = fadd fast float %511, 5.000000e-01
  %515 = fadd fast float %512, 5.000000e-01
  %516 = call float @dx.op.unary.f32(i32 27, float %513)  ; Round_ni(value)
  %517 = call float @dx.op.unary.f32(i32 27, float %514)  ; Round_ni(value)
  %518 = call float @dx.op.unary.f32(i32 27, float %515)  ; Round_ni(value)
  %519 = fsub fast float %486, %489
  %520 = fsub fast float %487, %490
  %521 = fsub fast float %488, %491
  %522 = fmul fast float %519, 7.500000e-01
  %523 = fmul fast float %520, 7.500000e-01
  %524 = fmul fast float %521, 7.500000e-01
  %525 = fadd fast float %489, 1.250000e-01
  %526 = fadd fast float %525, %522
  %527 = fadd fast float %526, %516
  %528 = fadd fast float %490, 1.250000e-01
  %529 = fadd fast float %528, %523
  %530 = fadd fast float %529, %517
  %531 = fadd fast float %491, 1.250000e-01
  %532 = fadd fast float %531, %524
  %533 = fadd fast float %532, %518
  %534 = fmul fast float %527, %477
  %535 = fmul fast float %530, %478
  %536 = fmul fast float %533, %479
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = add i32 %538, 0
  %540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %540, %dx.types.Handle %63, float %534, float %535, float %536, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  br label %543

; <label>:543                                     ; preds = %464, %453
  %544 = phi float [ %542, %464 ], [ -1.000000e+00, %453 ]
  %545 = fadd fast float %544, %451
  %546 = call float @dx.op.unary.f32(i32 7, float %545)  ; Saturate(value)
  br label %547

; <label>:547                                     ; preds = %543, %441
  %548 = phi float [ %546, %543 ], [ %451, %441 ]
  %549 = fmul fast float %548, %337
  br label %550

; <label>:550                                     ; preds = %547, %436
  %551 = phi float [ %549, %547 ], [ %337, %436 ]
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = and i32 %553, 256
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %602, label %556

; <label>:556                                     ; preds = %550
  %557 = add i32 %71, 200
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = add i32 %559, 0
  %561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %561, %dx.types.Handle %96, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = add i32 %71, 52
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = shl i32 %566, 4
  %568 = and i32 %567, 32752
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = lshr i32 %566, 7
  %571 = and i32 %570, 32752
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = fsub fast float 1.000000e+00, %551
  %574 = call float @dx.op.binary.f32(i32 35, float %573, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %575 = bitcast float %551 to i32
  %576 = sitofp i32 %575 to float
  %577 = fadd fast float %576, 0xC1CFBF8940000000
  %578 = fmul fast float %572, %577
  %579 = fadd fast float %578, 0x41CFBF8940000000
  %580 = fptosi float %579 to i32
  %581 = bitcast i32 %580 to float
  %582 = bitcast float %574 to i32
  %583 = sitofp i32 %582 to float
  %584 = fadd fast float %583, 0xC1CFBF8940000000
  %585 = fmul fast float %584, %572
  %586 = fadd fast float %585, 0x41CFBF8940000000
  %587 = fptosi float %586 to i32
  %588 = bitcast i32 %587 to float
  %589 = fmul fast float %581, %569
  %590 = fmul fast float %588, %569
  %591 = fsub fast float %574, %589
  %592 = fadd fast float %590, %574
  %593 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %594 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %595 = fsub fast float %563, %593
  %596 = fsub fast float %594, %593
  %597 = bitcast float %596 to i32
  %598 = sub nsw i32 2129859010, %597
  %599 = bitcast i32 %598 to float
  %600 = fmul fast float %599, %595
  %601 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  br label %602

; <label>:602                                     ; preds = %556, %550
  %603 = phi float [ %601, %556 ], [ %551, %550 ]
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = and i32 %605, 128
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %624, label %608

; <label>:608                                     ; preds = %602
  %609 = add i32 %71, 196
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = add i32 %611, 0
  %613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %613, %dx.types.Handle %96, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = and i32 %617, 524288
  %619 = icmp ne i32 %618, 0
  %620 = fcmp fast ogt float %615, 0x3FE0101020000000
  %621 = select i1 %620, float 1.000000e+00, float 0.000000e+00
  %622 = select i1 %619, float %621, float %615
  %623 = fmul fast float %622, %603
  br label %624

; <label>:624                                     ; preds = %608, %602
  %625 = phi float [ %623, %608 ], [ %603, %602 ]
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 16
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %828, label %630

; <label>:630                                     ; preds = %624
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = add i32 %71, 184
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = add i32 %635, 0
  %637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %637, %dx.types.Handle %95, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = extractvalue %dx.types.ResRet.f32 %638, 3
  %643 = and i32 %632, 255
  %644 = uitofp i32 %643 to float
  %645 = lshr i32 %632, 8
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %642, %644
  %649 = fadd fast float %648, %647
  %650 = fmul fast float %649, 0x3F70101000000000
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = and i32 %652, 512
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %663, label %655

; <label>:655                                     ; preds = %630
  %656 = add i32 %71, 204
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = add i32 %658, 0
  %660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %659, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %660, %dx.types.Handle %96, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  br label %663

; <label>:663                                     ; preds = %655, %630
  %664 = phi float [ %662, %655 ], [ 1.000000e+00, %630 ]
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 33554432
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %775, label %669

; <label>:669                                     ; preds = %663
  %670 = add i32 %71, 80
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 65535
  %674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %673)  ; LegacyF16ToF32(value)
  %675 = lshr i32 %672, 16
  %676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %675)  ; LegacyF16ToF32(value)
  %677 = add i32 %71, 84
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %677, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 65535
  %681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %680)  ; LegacyF16ToF32(value)
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = lshr i32 %683, 24
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3F70101020000000
  %687 = and i32 %683, 255
  %688 = uitofp i32 %687 to float
  %689 = fmul fast float %688, 0x3F70101020000000
  %690 = lshr i32 %683, 8
  %691 = and i32 %690, 255
  %692 = uitofp i32 %691 to float
  %693 = fmul fast float %692, 0x3F70101020000000
  %694 = lshr i32 %683, 16
  %695 = and i32 %694, 255
  %696 = uitofp i32 %695 to float
  %697 = fmul fast float %696, 0x3F70101020000000
  %698 = add i32 %71, 76
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = lshr i32 %700, 24
  %702 = uitofp i32 %701 to float
  %703 = fmul fast float %702, 0x3F70101020000000
  %704 = and i32 %700, 255
  %705 = uitofp i32 %704 to float
  %706 = fmul fast float %705, 0x3F70101020000000
  %707 = lshr i32 %700, 8
  %708 = and i32 %707, 255
  %709 = uitofp i32 %708 to float
  %710 = fmul fast float %709, 0x3F70101020000000
  %711 = lshr i32 %700, 16
  %712 = and i32 %711, 255
  %713 = uitofp i32 %712 to float
  %714 = fmul fast float %713, 0x3F70101020000000
  %715 = bitcast float %639 to i32
  %716 = ashr i32 %715, 1
  %717 = sub nsw i32 1597463174, %716
  %718 = bitcast i32 %717 to float
  %719 = fmul fast float %639, 5.000000e-01
  %720 = fmul fast float %718, %718
  %721 = fmul fast float %720, %719
  %722 = fsub fast float 1.500000e+00, %721
  %723 = fmul fast float %718, %639
  %724 = fmul fast float %723, %722
  %725 = bitcast float %640 to i32
  %726 = ashr i32 %725, 1
  %727 = sub nsw i32 1597463174, %726
  %728 = bitcast i32 %727 to float
  %729 = fmul fast float %640, 5.000000e-01
  %730 = fmul fast float %728, %728
  %731 = fmul fast float %730, %729
  %732 = fsub fast float 1.500000e+00, %731
  %733 = fmul fast float %728, %640
  %734 = fmul fast float %733, %732
  %735 = bitcast float %641 to i32
  %736 = ashr i32 %735, 1
  %737 = sub nsw i32 1597463174, %736
  %738 = bitcast i32 %737 to float
  %739 = fmul fast float %641, 5.000000e-01
  %740 = fmul fast float %738, %738
  %741 = fmul fast float %740, %739
  %742 = fsub fast float 1.500000e+00, %741
  %743 = fmul fast float %738, %641
  %744 = fmul fast float %743, %742
  %745 = fsub fast float %724, %706
  %746 = fsub fast float %734, %710
  %747 = fsub fast float %744, %714
  %748 = fmul fast float %745, %674
  %749 = fmul fast float %746, %676
  %750 = fmul fast float %747, %681
  %751 = fadd fast float %748, %689
  %752 = fadd fast float %749, %693
  %753 = fadd fast float %750, %697
  %754 = call float @dx.op.unary.f32(i32 7, float %751)  ; Saturate(value)
  %755 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  %756 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %757 = fmul fast float %754, %754
  %758 = fmul fast float %755, %755
  %759 = fmul fast float %756, %756
  %760 = fsub fast float %757, %639
  %761 = fsub fast float %758, %640
  %762 = fsub fast float %759, %641
  %763 = fmul fast float %760, %664
  %764 = fmul fast float %761, %664
  %765 = fmul fast float %762, %664
  %766 = fadd fast float %763, %639
  %767 = fadd fast float %764, %640
  %768 = fadd fast float %765, %641
  %769 = fadd fast float %686, %650
  %770 = fsub fast float %769, %703
  %771 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %772 = fsub fast float %771, %650
  %773 = fmul fast float %772, %664
  %774 = fadd fast float %773, %650
  br label %828

; <label>:775                                     ; preds = %663
  %776 = and i32 %666, 134217728
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %812, label %778

; <label>:778                                     ; preds = %775
  %779 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %780 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %781 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %782 = fadd fast float %779, -5.000000e-01
  %783 = fadd fast float %780, -5.000000e-01
  %784 = fadd fast float %781, -5.000000e-01
  %785 = fmul fast float %782, %664
  %786 = fmul fast float %783, %664
  %787 = fmul fast float %784, %664
  %788 = fadd fast float %785, 5.000000e-01
  %789 = fadd fast float %786, 5.000000e-01
  %790 = fadd fast float %787, 5.000000e-01
  %791 = call float @dx.op.unary.f32(i32 24, float %639)  ; Sqrt(value)
  %792 = call float @dx.op.unary.f32(i32 24, float %640)  ; Sqrt(value)
  %793 = call float @dx.op.unary.f32(i32 24, float %641)  ; Sqrt(value)
  %794 = fmul fast float %788, 2.000000e+00
  %795 = fsub fast float 1.000000e+00, %794
  %796 = fmul fast float %795, %791
  %797 = fadd fast float %796, %794
  %798 = fmul fast float %797, %791
  %799 = fmul fast float %789, 2.000000e+00
  %800 = fsub fast float 1.000000e+00, %799
  %801 = fmul fast float %800, %792
  %802 = fadd fast float %801, %799
  %803 = fmul fast float %802, %792
  %804 = fmul fast float %790, 2.000000e+00
  %805 = fsub fast float 1.000000e+00, %804
  %806 = fmul fast float %805, %793
  %807 = fadd fast float %806, %804
  %808 = fmul fast float %807, %793
  %809 = fmul fast float %798, %798
  %810 = fmul fast float %803, %803
  %811 = fmul fast float %808, %808
  br label %828

; <label>:812                                     ; preds = %775
  %813 = fmul fast float %298, %298
  %814 = fmul fast float %302, %302
  %815 = fmul fast float %306, %306
  %816 = fadd fast float %813, -1.000000e+00
  %817 = fadd fast float %814, -1.000000e+00
  %818 = fadd fast float %815, -1.000000e+00
  %819 = fmul fast float %664, %816
  %820 = fmul fast float %664, %817
  %821 = fmul fast float %664, %818
  %822 = fadd fast float %819, 1.000000e+00
  %823 = fadd fast float %820, 1.000000e+00
  %824 = fadd fast float %821, 1.000000e+00
  %825 = fmul fast float %822, %639
  %826 = fmul fast float %823, %640
  %827 = fmul fast float %824, %641
  br label %828

; <label>:828                                     ; preds = %812, %778, %669, %624
  %829 = phi float [ %774, %669 ], [ %650, %778 ], [ %650, %812 ], [ 0x3FA23C0BE0000000, %624 ]
  %830 = phi float [ %766, %669 ], [ %809, %778 ], [ %825, %812 ], [ 1.000000e+00, %624 ]
  %831 = phi float [ %767, %669 ], [ %810, %778 ], [ %826, %812 ], [ 1.000000e+00, %624 ]
  %832 = phi float [ %768, %669 ], [ %811, %778 ], [ %827, %812 ], [ 1.000000e+00, %624 ]
  %833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.i32 %833, 1
  %835 = and i32 %834, 1
  %836 = icmp ne i32 %835, 0
  %837 = add i32 %71, 116
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 32
  %841 = icmp ne i32 %840, 0
  %842 = and i1 %836, %841
  %843 = select i1 %842, float 1.000000e+00, float %830
  %844 = select i1 %842, float 0x3FD3333340000000, float %831
  %845 = select i1 %842, float 0x3FD3333340000000, float %832
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 32
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %922, label %850

; <label>:850                                     ; preds = %828
  %851 = add i32 %71, 44
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = add i32 %71, 188
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = add i32 %856, 0
  %858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %858, %dx.types.Handle %95, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = extractvalue %dx.types.ResRet.f32 %859, 1
  %862 = extractvalue %dx.types.ResRet.f32 %859, 2
  %863 = extractvalue %dx.types.ResRet.f32 %859, 3
  %864 = and i32 %853, 255
  %865 = uitofp i32 %864 to float
  %866 = lshr i32 %853, 8
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = lshr i32 %853, 16
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = fmul fast float %871, 0x3F70101000000000
  %873 = fmul fast float %860, %865
  %874 = fadd fast float %873, %868
  %875 = fmul fast float %874, 0x3F70101000000000
  %876 = fadd fast float %861, -5.000000e-01
  %877 = fadd fast float %863, -5.000000e-01
  %878 = fmul fast float %876, %872
  %879 = fmul fast float %877, %872
  %880 = fadd fast float %878, 5.000000e-01
  %881 = fadd fast float %879, 5.000000e-01
  %882 = fmul fast float %880, 2.000000e+00
  %883 = fadd fast float %882, -1.000000e+00
  %884 = fmul fast float %881, 2.000000e+00
  %885 = fadd fast float %884, -1.000000e+00
  %886 = fadd fast float %883, %885
  %887 = fmul fast float %886, 5.000000e-01
  %888 = fsub fast float %883, %885
  %889 = fmul fast float %888, 5.000000e-01
  %890 = call float @dx.op.unary.f32(i32 6, float %887)  ; FAbs(value)
  %891 = fsub fast float 1.000000e+00, %890
  %892 = call float @dx.op.unary.f32(i32 6, float %889)  ; FAbs(value)
  %893 = fsub fast float %891, %892
  %894 = call float @dx.op.dot3.f32(i32 55, float %887, float %889, float %893, float %887, float %889, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = call float @dx.op.unary.f32(i32 25, float %894)  ; Rsqrt(value)
  %896 = fmul fast float %887, %895
  %897 = fmul fast float %889, %895
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = and i32 %899, 67108864
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %918, label %902

; <label>:902                                     ; preds = %850
  %903 = add i32 %71, 88
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 65535
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = and i32 %909, 65535
  %911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %910)  ; LegacyF16ToF32(value)
  %912 = lshr i32 %905, 16
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = fsub fast float %875, %913
  %915 = fmul fast float %914, %907
  %916 = fadd fast float %915, %911
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  br label %918

; <label>:918                                     ; preds = %902, %850
  %919 = phi float [ %917, %902 ], [ %875, %850 ]
  %920 = call float @dx.op.dot2.f32(i32 54, float %896, float %897, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %921 = call float @dx.op.dot2.f32(i32 54, float %896, float %897, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %922

; <label>:922                                     ; preds = %918, %828
  %923 = phi float [ %919, %918 ], [ 0x3FD6666660000000, %828 ]
  %924 = phi float [ %920, %918 ], [ 0.000000e+00, %828 ]
  %925 = phi float [ %921, %918 ], [ 0.000000e+00, %828 ]
  %926 = phi float [ %862, %918 ], [ 1.000000e+00, %828 ]
  %927 = add i32 %71, 64
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = lshr i32 %929, 22
  %931 = shl nuw nsw i32 %930, 5
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = and i32 %934, 64
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %970, label %937

; <label>:937                                     ; preds = %922
  %938 = add i32 %71, 192
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = add i32 %940, 0
  %942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 131072
  %946 = icmp eq i32 %945, 0
  %947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %942, %dx.types.Handle %95, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = extractvalue %dx.types.ResRet.f32 %947, 1
  %950 = extractvalue %dx.types.ResRet.f32 %947, 2
  %951 = fmul fast float %948, %286
  %952 = fmul fast float %949, %289
  %953 = fmul fast float %950, %292
  br i1 %946, label %960, label %954

; <label>:954                                     ; preds = %937
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %957 = fmul fast float %956, %951
  %958 = fmul fast float %956, %952
  %959 = fmul fast float %956, %953
  br label %960

; <label>:960                                     ; preds = %954, %937
  %961 = phi float [ %957, %954 ], [ %951, %937 ]
  %962 = phi float [ %958, %954 ], [ %952, %937 ]
  %963 = phi float [ %959, %954 ], [ %953, %937 ]
  %964 = fmul fast float %961, %932
  %965 = select i1 %269, float %964, float %961
  %966 = call float @dx.op.dot3.f32(i32 55, float %965, float %962, float %963, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %967 = select i1 %269, float 0.000000e+00, float %961
  %968 = select i1 %269, float %966, float %962
  %969 = select i1 %269, float 0.000000e+00, float %963
  br label %970

; <label>:970                                     ; preds = %960, %922
  %971 = phi float [ %967, %960 ], [ 0.000000e+00, %922 ]
  %972 = phi float [ %968, %960 ], [ 0.000000e+00, %922 ]
  %973 = phi float [ %969, %960 ], [ 0.000000e+00, %922 ]
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 1024
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %1008, label %978

; <label>:978                                     ; preds = %970
  %979 = add i32 %71, 56
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 255
  %983 = uitofp i32 %982 to float
  %984 = fmul fast float %983, 0x3F70101020000000
  %985 = lshr i32 %981, 8
  %986 = and i32 %985, 255
  %987 = uitofp i32 %986 to float
  %988 = fmul fast float %987, 0x3F70101020000000
  %989 = lshr i32 %981, 16
  %990 = and i32 %989, 255
  %991 = uitofp i32 %990 to float
  %992 = fmul fast float %991, 0x3F70101020000000
  %993 = fmul fast float %984, %984
  %994 = fmul fast float %988, %988
  %995 = fmul fast float %992, %992
  %996 = add i32 %71, 208
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = add i32 %998, 0
  %1000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1001 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1000, %dx.types.Handle %96, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1003 = extractvalue %dx.types.ResRet.f32 %1001, 1
  %1004 = extractvalue %dx.types.ResRet.f32 %1001, 2
  %1005 = fmul fast float %993, %1002
  %1006 = fmul fast float %994, %1003
  %1007 = fmul fast float %995, %1004
  br label %1008

; <label>:1008                                    ; preds = %978, %970
  %1009 = phi float [ %1005, %978 ], [ 0.000000e+00, %970 ]
  %1010 = phi float [ %1006, %978 ], [ 0.000000e+00, %970 ]
  %1011 = phi float [ %1007, %978 ], [ 0.000000e+00, %970 ]
  %1012 = fcmp fast ogt float %1009, 0.000000e+00
  %1013 = fcmp fast ogt float %1010, 0.000000e+00
  %1014 = fcmp fast ogt float %1011, 0.000000e+00
  %1015 = call float @dx.op.unary.f32(i32 23, float %1009)  ; Log(value)
  %1016 = call float @dx.op.unary.f32(i32 23, float %1010)  ; Log(value)
  %1017 = call float @dx.op.unary.f32(i32 23, float %1011)  ; Log(value)
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = lshr i32 %1019, 7
  %1021 = and i32 %1020, 32752
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = fmul fast float %1015, 0xBFE62E4300000000
  %1024 = fmul fast float %1023, %1022
  %1025 = fmul fast float %1016, 0xBFE62E4300000000
  %1026 = fmul fast float %1025, %1022
  %1027 = fmul fast float %1017, 0xBFE62E4300000000
  %1028 = fmul fast float %1027, %1022
  %1029 = select i1 %1012, float %1024, float 1.270000e+02
  %1030 = select i1 %1013, float %1026, float 1.270000e+02
  %1031 = select i1 %1014, float %1028, float 1.270000e+02
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %1033, 10240
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1080, label %1036

; <label>:1036                                    ; preds = %1008
  %1037 = add i32 %71, 212
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = add i32 %1039, 0
  %1041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1041, %dx.types.Handle %96, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 3
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %1046, 1048576
  %1048 = icmp ne i32 %1047, 0
  %1049 = and i32 %1046, 8192
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1066, label %1051

; <label>:1051                                    ; preds = %1036
  %1052 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1053 = select i1 %1048, float %1052, float %1043
  %1054 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1055 = select i1 %1048, float %1054, float %1043
  %1056 = add i32 %71, 48
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = lshr i32 %1058, 16
  %1060 = and i32 %1059, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = fmul fast float %1061, 0x3F80101020000000
  %1063 = fmul fast float %1062, %1055
  %1064 = fmul fast float %1062, %1043
  %1065 = fmul fast float %1062, %1053
  br label %1066

; <label>:1066                                    ; preds = %1051, %1036
  %1067 = phi float [ %1063, %1051 ], [ 0.000000e+00, %1036 ]
  %1068 = phi float [ %1064, %1051 ], [ 0.000000e+00, %1036 ]
  %1069 = phi float [ %1065, %1051 ], [ 0.000000e+00, %1036 ]
  %1070 = and i32 %1046, 2048
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1080, label %1072

; <label>:1072                                    ; preds = %1066
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = shl i32 %1074, 4
  %1076 = and i32 %1075, 32752
  %1077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1076)  ; LegacyF16ToF32(value)
  %1078 = fmul fast float %1077, %1044
  %1079 = call float @dx.op.binary.f32(i32 35, float %1078, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1080

; <label>:1080                                    ; preds = %1072, %1066, %1008
  %1081 = phi float [ %1067, %1072 ], [ %1067, %1066 ], [ 0.000000e+00, %1008 ]
  %1082 = phi float [ %1068, %1072 ], [ %1068, %1066 ], [ 0.000000e+00, %1008 ]
  %1083 = phi float [ %1069, %1072 ], [ %1069, %1066 ], [ 0.000000e+00, %1008 ]
  %1084 = phi float [ %1079, %1072 ], [ 0x3F70101020000000, %1066 ], [ 0x3F70101020000000, %1008 ]
  %1085 = add i32 %71, 48
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 255
  %1089 = uitofp i32 %1088 to float
  %1090 = lshr i32 %1087, 8
  %1091 = and i32 %1090, 255
  %1092 = uitofp i32 %1091 to float
  %1093 = call float @dx.op.dot3.f32(i32 55, float %843, float %844, float %845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = fmul fast float %1092, %1093
  %1095 = fadd fast float %1094, %1089
  %1096 = fmul fast float %1095, 0x3F70101020000000
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  br label %1098

; <label>:1098                                    ; preds = %1080, %336
  %1099 = phi float [ 0.000000e+00, %336 ], [ %924, %1080 ]
  %1100 = phi float [ 0.000000e+00, %336 ], [ %925, %1080 ]
  %1101 = phi float [ 0.000000e+00, %336 ], [ %843, %1080 ]
  %1102 = phi float [ 0.000000e+00, %336 ], [ %844, %1080 ]
  %1103 = phi float [ 0.000000e+00, %336 ], [ %845, %1080 ]
  %1104 = phi float [ 0.000000e+00, %336 ], [ %971, %1080 ]
  %1105 = phi float [ 0.000000e+00, %336 ], [ %972, %1080 ]
  %1106 = phi float [ 0.000000e+00, %336 ], [ %973, %1080 ]
  %1107 = phi float [ 0.000000e+00, %336 ], [ %1081, %1080 ]
  %1108 = phi float [ 0.000000e+00, %336 ], [ %1082, %1080 ]
  %1109 = phi float [ 0.000000e+00, %336 ], [ %1083, %1080 ]
  %1110 = phi float [ 0.000000e+00, %336 ], [ %1029, %1080 ]
  %1111 = phi float [ 0.000000e+00, %336 ], [ %1030, %1080 ]
  %1112 = phi float [ 0.000000e+00, %336 ], [ %1031, %1080 ]
  %1113 = phi float [ 0.000000e+00, %336 ], [ %829, %1080 ]
  %1114 = phi float [ 0.000000e+00, %336 ], [ %625, %1080 ]
  %1115 = phi float [ 0.000000e+00, %336 ], [ %923, %1080 ]
  %1116 = phi float [ 0.000000e+00, %336 ], [ %926, %1080 ]
  %1117 = phi float [ 0.000000e+00, %336 ], [ %1084, %1080 ]
  %1118 = phi float [ 0.000000e+00, %336 ], [ %1097, %1080 ]
  %1119 = add i32 %71, 168
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = bitcast i32 %1121 to float
  %1123 = fcmp fast oge float %1122, 0.000000e+00
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = select i1 %1123, float %1122, float %1125
  %1127 = call float @dx.op.dot2.f32(i32 54, float %1099, float %1100, float %1099, float %1100)  ; Dot2(ax,ay,bx,by)
  %1128 = fmul fast float %1127, 0x3FE3333340000000
  %1129 = fsub fast float 1.000000e+00, %1128
  %1130 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1100, float %1129, float %1099, float %1100, float %1129)  ; Dot3(ax,ay,az,bx,by,bz)
  %1131 = call float @dx.op.unary.f32(i32 25, float %1130)  ; Rsqrt(value)
  %1132 = fmul fast float %1131, %1099
  %1133 = fmul fast float %1131, %1100
  %1134 = fmul fast float %1129, %1131
  %1135 = fmul fast float %1134, %76
  %1136 = fmul fast float %1134, %77
  %1137 = fmul fast float %1134, %78
  %1138 = fmul fast float %1132, %72
  %1139 = fmul fast float %1132, %73
  %1140 = fmul fast float %1132, %74
  %1141 = fadd fast float %1135, %1138
  %1142 = fadd fast float %1136, %1139
  %1143 = fadd fast float %1137, %1140
  %1144 = fmul fast float %1133, %110
  %1145 = fmul fast float %1133, %111
  %1146 = fmul fast float %1133, %112
  %1147 = fadd fast float %1141, %1144
  %1148 = fadd fast float %1142, %1145
  %1149 = fadd fast float %1143, %1146
  %1150 = call float @dx.op.dot3.f32(i32 55, float %1147, float %1148, float %1149, float %1147, float %1148, float %1149)  ; Dot3(ax,ay,az,bx,by,bz)
  %1151 = call float @dx.op.unary.f32(i32 25, float %1150)  ; Rsqrt(value)
  %1152 = fmul fast float %1147, %1151
  %1153 = fmul fast float %1148, %1151
  %1154 = fmul fast float %1149, %1151
  %1155 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %1156 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %1157 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1158 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %1159 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %1160 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1161 = fadd fast float %1155, %146
  %1162 = fadd fast float %1156, %147
  %1163 = fadd fast float %1157, %148
  %1164 = fadd fast float %1158, %146
  %1165 = fadd fast float %1159, %147
  %1166 = fadd fast float %1160, %148
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.CBufRet.f32 %1167, 1
  %1170 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 2
  %1173 = extractvalue %dx.types.CBufRet.f32 %1171, 3
  %1174 = fmul fast float %1168, %99
  %1175 = fmul fast float %1174, %1172
  %1176 = fmul fast float %1169, %100
  %1177 = fmul fast float %1176, %1173
  %1178 = fptoui float %1175 to i32
  %1179 = fptoui float %1177 to i32
  %1180 = fadd fast float %1168, -1.000000e+00
  %1181 = fadd fast float %1169, -1.000000e+00
  %1182 = fptoui float %1180 to i32
  %1183 = fptoui float %1181 to i32
  %1184 = call i32 @dx.op.binary.i32(i32 40, i32 %1178, i32 %1182)  ; UMin(a,b)
  %1185 = call i32 @dx.op.binary.i32(i32 40, i32 %1179, i32 %1183)  ; UMin(a,b)
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 2
  %1188 = extractvalue %dx.types.CBufRet.f32 %1186, 3
  %1189 = fmul fast float %1187, %87
  %1190 = fsub fast float %1189, %1188
  %1191 = fadd fast float %1170, -1.000000e+00
  %1192 = call float @dx.op.binary.f32(i32 36, float %1190, float %1191)  ; FMin(a,b)
  %1193 = fptoui float %1192 to i32
  %1194 = fptoui float %1168 to i32
  %1195 = fptoui float %1169 to i32
  %1196 = mul i32 %1193, %1195
  %1197 = add i32 %1196, %1185
  %1198 = mul i32 %1197, %1194
  %1199 = add i32 %1198, %1184
  %1200 = shl i32 %1199, 2
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = and i32 %1202, 1023
  %1204 = lshr i32 %1202, 10
  %1205 = icmp eq i32 %1203, 0
  br i1 %1205, label %1709, label %1206

; <label>:1206                                    ; preds = %1098
  %1207 = and i32 %1202, 1023
  br label %1208

; <label>:1208                                    ; preds = %1340, %1206
  %1209 = phi float [ %1341, %1340 ], [ 0.000000e+00, %1206 ]
  %1210 = phi float [ %1342, %1340 ], [ %1126, %1206 ]
  %1211 = phi float [ %1343, %1340 ], [ %1118, %1206 ]
  %1212 = phi float [ %1344, %1340 ], [ %1110, %1206 ]
  %1213 = phi float [ %1345, %1340 ], [ %1111, %1206 ]
  %1214 = phi float [ %1346, %1340 ], [ %1112, %1206 ]
  %1215 = phi float [ %1347, %1340 ], [ 0.000000e+00, %1206 ]
  %1216 = phi float [ %1348, %1340 ], [ 0.000000e+00, %1206 ]
  %1217 = phi float [ %1349, %1340 ], [ %1107, %1206 ]
  %1218 = phi float [ %1350, %1340 ], [ %1108, %1206 ]
  %1219 = phi float [ %1351, %1340 ], [ %1109, %1206 ]
  %1220 = phi float [ %1352, %1340 ], [ %1104, %1206 ]
  %1221 = phi float [ %1353, %1340 ], [ %1105, %1206 ]
  %1222 = phi float [ %1354, %1340 ], [ %1106, %1206 ]
  %1223 = phi float [ %1355, %1340 ], [ %1152, %1206 ]
  %1224 = phi float [ %1356, %1340 ], [ %1153, %1206 ]
  %1225 = phi float [ %1357, %1340 ], [ %1154, %1206 ]
  %1226 = phi float [ %1358, %1340 ], [ %1116, %1206 ]
  %1227 = phi float [ %1359, %1340 ], [ %1115, %1206 ]
  %1228 = phi float [ %1360, %1340 ], [ 0.000000e+00, %1206 ]
  %1229 = phi float [ %1361, %1340 ], [ %1113, %1206 ]
  %1230 = phi float [ %1362, %1340 ], [ %1101, %1206 ]
  %1231 = phi float [ %1363, %1340 ], [ %1102, %1206 ]
  %1232 = phi float [ %1364, %1340 ], [ %1103, %1206 ]
  %1233 = phi i32 [ %1290, %1340 ], [ 0, %1206 ]
  %1234 = add nuw nsw i32 %1233, %1204
  %1235 = shl i32 %1234, 2
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = shl i32 %1237, 8
  %1239 = or i32 %1238, 48
  %1240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.ResRet.f32 %1240, 1
  %1243 = extractvalue %dx.types.ResRet.f32 %1240, 2
  %1244 = extractvalue %dx.types.ResRet.f32 %1240, 3
  %1245 = or i32 %1238, 64
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.i32 %1246, 1
  %1249 = or i32 %1238, 80
  %1250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1253 = or i32 %1238, 96
  %1254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = extractvalue %dx.types.ResRet.f32 %1254, 3
  %1259 = or i32 %1238, 112
  %1260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 2
  %1262 = or i32 %1238, 128
  %1263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = or i32 %1238, 144
  %1269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.f32 %1269, 2
  %1273 = extractvalue %dx.types.ResRet.f32 %1269, 3
  %1274 = or i32 %1238, 160
  %1275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.ResRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.ResRet.f32 %1275, 2
  %1279 = extractvalue %dx.types.ResRet.f32 %1275, 3
  %1280 = or i32 %1238, 192
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = or i32 %1238, 208
  %1284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = or i32 %1238, 248
  %1287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.ResRet.f32 %1287, 1
  %1290 = add nuw nsw i32 %1233, 1
  %1291 = bitcast float %1244 to i32
  %1292 = and i32 %1291, 2560
  %1293 = icmp eq i32 %1292, 0
  %1294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.ResRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.ResRet.f32 %1294, 2
  %1298 = extractvalue %dx.types.ResRet.f32 %1294, 3
  %1299 = call float @dx.op.dot4.f32(i32 56, float %1295, float %1296, float %1297, float %1298, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1300 = or i32 %1238, 16
  %1301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.ResRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.ResRet.f32 %1301, 2
  %1305 = extractvalue %dx.types.ResRet.f32 %1301, 3
  %1306 = call float @dx.op.dot4.f32(i32 56, float %1302, float %1303, float %1304, float %1305, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1307 = or i32 %1238, 32
  %1308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = extractvalue %dx.types.ResRet.f32 %1308, 1
  %1311 = extractvalue %dx.types.ResRet.f32 %1308, 2
  %1312 = extractvalue %dx.types.ResRet.f32 %1308, 3
  %1313 = call float @dx.op.dot4.f32(i32 56, float %1309, float %1310, float %1311, float %1312, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1314 = call float @dx.op.unary.f32(i32 27, float %1299)  ; Round_ni(value)
  %1315 = call float @dx.op.unary.f32(i32 6, float %1314)  ; FAbs(value)
  %1316 = call float @dx.op.unary.f32(i32 27, float %1306)  ; Round_ni(value)
  %1317 = call float @dx.op.unary.f32(i32 6, float %1316)  ; FAbs(value)
  %1318 = call float @dx.op.unary.f32(i32 6, float %1313)  ; FAbs(value)
  %1319 = call float @dx.op.unary.f32(i32 27, float %1318)  ; Round_ni(value)
  %1320 = fadd fast float %1317, %1315
  %1321 = fadd fast float %1320, %1319
  %1322 = fcmp fast oeq float %1321, 0.000000e+00
  %1323 = call float @dx.op.dot4.f32(i32 56, float %1295, float %1296, float %1297, float %1298, float %1161, float %1162, float %1163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1324 = call float @dx.op.dot4.f32(i32 56, float %1302, float %1303, float %1304, float %1305, float %1161, float %1162, float %1163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1325 = call float @dx.op.dot4.f32(i32 56, float %1295, float %1296, float %1297, float %1298, float %1164, float %1165, float %1166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1326 = call float @dx.op.dot4.f32(i32 56, float %1302, float %1303, float %1304, float %1305, float %1164, float %1165, float %1166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1327 = fsub fast float %1323, %1299
  %1328 = fsub fast float %1325, %1299
  %1329 = fsub fast float %1324, %1306
  %1330 = fsub fast float %1326, %1306
  %1331 = call float @dx.op.dot3.f32(i32 55, float %1241, float %1242, float %1243, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1334 = fadd fast float %1333, %1331
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1332, 0
  %1337 = fcmp fast ogt float %1335, %1336
  %1338 = and i1 %1322, %1337
  %1339 = and i1 %1293, %1338
  br i1 %1339, label %1366, label %1340

; <label>:1340                                    ; preds = %1695, %1447, %1366, %1208
  %1341 = phi float [ %1209, %1366 ], [ %1450, %1447 ], [ %1450, %1695 ], [ %1209, %1208 ]
  %1342 = phi float [ %1210, %1366 ], [ %1210, %1447 ], [ %1671, %1695 ], [ %1210, %1208 ]
  %1343 = phi float [ %1211, %1366 ], [ %1211, %1447 ], [ %1669, %1695 ], [ %1211, %1208 ]
  %1344 = phi float [ %1212, %1366 ], [ %1212, %1447 ], [ %1647, %1695 ], [ %1212, %1208 ]
  %1345 = phi float [ %1213, %1366 ], [ %1213, %1447 ], [ %1648, %1695 ], [ %1213, %1208 ]
  %1346 = phi float [ %1214, %1366 ], [ %1214, %1447 ], [ %1649, %1695 ], [ %1214, %1208 ]
  %1347 = phi float [ %1215, %1366 ], [ %1215, %1447 ], [ %1574, %1695 ], [ %1215, %1208 ]
  %1348 = phi float [ %1216, %1366 ], [ %1216, %1447 ], [ %1572, %1695 ], [ %1216, %1208 ]
  %1349 = phi float [ %1217, %1366 ], [ %1217, %1447 ], [ %1617, %1695 ], [ %1217, %1208 ]
  %1350 = phi float [ %1218, %1366 ], [ %1218, %1447 ], [ %1618, %1695 ], [ %1218, %1208 ]
  %1351 = phi float [ %1219, %1366 ], [ %1219, %1447 ], [ %1619, %1695 ], [ %1219, %1208 ]
  %1352 = phi float [ %1220, %1366 ], [ %1220, %1447 ], [ %1705, %1695 ], [ %1220, %1208 ]
  %1353 = phi float [ %1221, %1366 ], [ %1221, %1447 ], [ %1706, %1695 ], [ %1221, %1208 ]
  %1354 = phi float [ %1222, %1366 ], [ %1222, %1447 ], [ %1707, %1695 ], [ %1222, %1208 ]
  %1355 = phi float [ %1223, %1366 ], [ %1223, %1447 ], [ %1553, %1695 ], [ %1223, %1208 ]
  %1356 = phi float [ %1224, %1366 ], [ %1224, %1447 ], [ %1554, %1695 ], [ %1224, %1208 ]
  %1357 = phi float [ %1225, %1366 ], [ %1225, %1447 ], [ %1555, %1695 ], [ %1225, %1208 ]
  %1358 = phi float [ %1226, %1366 ], [ %1226, %1447 ], [ %1627, %1695 ], [ %1226, %1208 ]
  %1359 = phi float [ %1227, %1366 ], [ %1227, %1447 ], [ %1624, %1695 ], [ %1227, %1208 ]
  %1360 = phi float [ %1228, %1366 ], [ %1228, %1447 ], [ %1621, %1695 ], [ %1228, %1208 ]
  %1361 = phi float [ %1229, %1366 ], [ %1229, %1447 ], [ %1570, %1695 ], [ %1229, %1208 ]
  %1362 = phi float [ %1230, %1366 ], [ %1230, %1447 ], [ %1565, %1695 ], [ %1230, %1208 ]
  %1363 = phi float [ %1231, %1366 ], [ %1231, %1447 ], [ %1566, %1695 ], [ %1231, %1208 ]
  %1364 = phi float [ %1232, %1366 ], [ %1232, %1447 ], [ %1567, %1695 ], [ %1232, %1208 ]
  %1365 = icmp eq i32 %1290, %1207
  br i1 %1365, label %1708, label %1208

; <label>:1366                                    ; preds = %1208
  %1367 = extractvalue %dx.types.ResRet.f32 %1260, 3
  %1368 = extractvalue %dx.types.ResRet.f32 %1260, 1
  %1369 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1372 = extractvalue %dx.types.ResRet.i32 %1246, 3
  %1373 = extractvalue %dx.types.ResRet.i32 %1246, 2
  %1374 = add i32 %1372, 0
  %1375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1374, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1377 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1375, %dx.types.Handle %1376, float %1299, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float %1327, float %1329, float undef, float %1328, float %1330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = fmul fast float %1378, %1371
  %1380 = fadd fast float %1379, %1370
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fmul fast float %1299, %1255
  %1383 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1306, float %1382)  ; FMad(a,b,c)
  %1384 = fadd fast float %1383, %1369
  %1385 = fmul fast float %1299, %1257
  %1386 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1306, float %1385)  ; FMad(a,b,c)
  %1387 = fadd fast float %1386, %1368
  %1388 = fmul fast float %1327, %1255
  %1389 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1329, float %1388)  ; FMad(a,b,c)
  %1390 = fmul fast float %1327, %1257
  %1391 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1329, float %1390)  ; FMad(a,b,c)
  %1392 = fmul fast float %1328, %1255
  %1393 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1330, float %1392)  ; FMad(a,b,c)
  %1394 = fmul fast float %1328, %1257
  %1395 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1330, float %1394)  ; FMad(a,b,c)
  %1396 = add i32 %1373, 0
  %1397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1396, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1398 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1397, %dx.types.Handle %1376, float %1384, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float %1389, float %1391, float undef, float %1393, float %1395, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = and i32 %1291, 1024
  %1401 = icmp ne i32 %1400, 0
  %1402 = fcmp fast ogt float %1399, 0x3FE0101020000000
  %1403 = uitofp i1 %1402 to float
  %1404 = select i1 %1401, float %1403, float %1399
  %1405 = and i32 %1291, 8192
  %1406 = icmp ne i32 %1405, 0
  %1407 = select i1 %1406, float %1367, float 1.000000e+00
  %1408 = fmul fast float %1299, 2.000000e+00
  %1409 = fadd fast float %1408, -1.000000e+00
  %1410 = call float @dx.op.unary.f32(i32 6, float %1409)  ; FAbs(value)
  %1411 = fmul fast float %1410, %1288
  %1412 = fsub fast float %1411, %1288
  %1413 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  %1414 = fmul fast float %1306, 2.000000e+00
  %1415 = fadd fast float %1414, -1.000000e+00
  %1416 = call float @dx.op.unary.f32(i32 6, float %1415)  ; FAbs(value)
  %1417 = fmul fast float %1416, %1289
  %1418 = fsub fast float %1417, %1289
  %1419 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1420 = fmul fast float %1318, %1251
  %1421 = fsub fast float %1420, %1251
  %1422 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1423 = fmul fast float %1381, %1407
  %1424 = fmul fast float %1423, %1378
  %1425 = fmul fast float %1424, %1413
  %1426 = fmul fast float %1425, %1404
  %1427 = fmul fast float %1426, %1419
  %1428 = fmul fast float %1427, %1422
  %1429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1430 = extractvalue %dx.types.CBufRet.f32 %1429, 1
  %1431 = extractvalue %dx.types.CBufRet.f32 %1429, 0
  %1432 = fsub fast float %1335, %1431
  %1433 = fmul fast float %1432, %1430
  %1434 = call float @dx.op.unary.f32(i32 7, float %1433)  ; Saturate(value)
  %1435 = fmul fast float %1428, %1252
  %1436 = fadd fast float %1428, %1252
  %1437 = fmul fast float %1436, %1261
  %1438 = fsub fast float %1437, %1261
  %1439 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1440 = and i32 %1291, 128
  %1441 = icmp ne i32 %1440, 0
  %1442 = select i1 %1441, float %1439, float %1435
  %1443 = fmul fast float %1442, %1434
  %1444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1444, 0
  %1446 = fcmp fast ugt float %1443, %1445
  br i1 %1446, label %1447, label %1340

; <label>:1447                                    ; preds = %1366
  %1448 = select i1 %1406, float %1443, float 0.000000e+00
  %1449 = fadd fast float %1448, %1209
  %1450 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  br i1 %1406, label %1340, label %1451

; <label>:1451                                    ; preds = %1447
  %1452 = and i32 %1291, 4
  %1453 = and i32 %1291, 8
  %1454 = add i32 %1247, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1454, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1457 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1455, %dx.types.Handle %1456, float %1384, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float %1389, float %1391, float undef, float %1393, float %1395, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.ResRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.ResRet.f32 %1457, 2
  %1461 = extractvalue %dx.types.ResRet.f32 %1457, 3
  %1462 = bitcast float %1273 to i32
  %1463 = and i32 %1462, 255
  %1464 = uitofp i32 %1463 to float
  %1465 = lshr i32 %1462, 8
  %1466 = and i32 %1465, 255
  %1467 = uitofp i32 %1466 to float
  %1468 = fmul fast float %1461, %1464
  %1469 = fadd fast float %1468, %1467
  %1470 = fmul fast float %1469, 0x3F70101000000000
  %1471 = add i32 %1248, 0
  %1472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1471, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1473 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1472, %dx.types.Handle %1456, float %1384, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float %1389, float %1391, float undef, float %1393, float %1395, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.ResRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.ResRet.f32 %1473, 2
  %1477 = extractvalue %dx.types.ResRet.f32 %1473, 3
  %1478 = bitcast float %1267 to i32
  %1479 = and i32 %1478, 255
  %1480 = uitofp i32 %1479 to float
  %1481 = lshr i32 %1478, 8
  %1482 = and i32 %1481, 255
  %1483 = uitofp i32 %1482 to float
  %1484 = lshr i32 %1478, 16
  %1485 = and i32 %1484, 255
  %1486 = uitofp i32 %1485 to float
  %1487 = fmul fast float %1486, 0x3F70101000000000
  %1488 = fmul fast float %1474, %1480
  %1489 = fadd fast float %1488, %1483
  %1490 = fmul fast float %1489, 0x3F70101000000000
  %1491 = fadd fast float %1475, -5.000000e-01
  %1492 = fadd fast float %1477, -5.000000e-01
  %1493 = fmul fast float %1491, %1487
  %1494 = fmul fast float %1492, %1487
  %1495 = fadd fast float %1493, 5.000000e-01
  %1496 = fadd fast float %1494, 5.000000e-01
  %1497 = fmul fast float %1458, %1276
  %1498 = fmul fast float %1459, %1277
  %1499 = fmul fast float %1460, %1278
  %1500 = fmul fast float %1495, 2.000000e+00
  %1501 = fadd fast float %1500, -1.000000e+00
  %1502 = fmul fast float %1496, 2.000000e+00
  %1503 = fadd fast float %1502, -1.000000e+00
  %1504 = fadd fast float %1501, %1503
  %1505 = fmul fast float %1504, 5.000000e-01
  %1506 = fsub fast float %1501, %1503
  %1507 = fmul fast float %1506, 5.000000e-01
  %1508 = call float @dx.op.unary.f32(i32 6, float %1505)  ; FAbs(value)
  %1509 = fsub fast float 1.000000e+00, %1508
  %1510 = call float @dx.op.unary.f32(i32 6, float %1507)  ; FAbs(value)
  %1511 = fsub fast float %1509, %1510
  %1512 = call float @dx.op.dot3.f32(i32 55, float %1505, float %1507, float %1511, float %1505, float %1507, float %1511)  ; Dot3(ax,ay,az,bx,by,bz)
  %1513 = call float @dx.op.unary.f32(i32 25, float %1512)  ; Rsqrt(value)
  %1514 = fmul fast float %1505, %1513
  %1515 = fmul fast float %1507, %1513
  %1516 = fmul fast float %1513, %1511
  %1517 = fmul fast float %1516, %1241
  %1518 = fmul fast float %1516, %1242
  %1519 = fmul fast float %1516, %1243
  %1520 = fmul fast float %1514, %1264
  %1521 = fmul fast float %1514, %1265
  %1522 = fmul fast float %1514, %1266
  %1523 = fadd fast float %1520, %1517
  %1524 = fadd fast float %1521, %1518
  %1525 = fadd fast float %1522, %1519
  %1526 = fmul fast float %1515, %1270
  %1527 = fmul fast float %1515, %1271
  %1528 = fmul fast float %1515, %1272
  %1529 = fadd fast float %1523, %1526
  %1530 = fadd fast float %1524, %1527
  %1531 = fadd fast float %1525, %1528
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1529, float %1530, float %1531, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = call float @dx.op.unary.f32(i32 25, float %1532)  ; Rsqrt(value)
  %1534 = fmul fast float %1529, %1533
  %1535 = fmul fast float %1530, %1533
  %1536 = fmul fast float %1531, %1533
  %1537 = icmp ne i32 %1453, 0
  %1538 = select i1 %1537, float 1.000000e+00, float 0.000000e+00
  %1539 = fmul fast float %1443, %1538
  %1540 = and i32 %1291, 1
  %1541 = icmp eq i32 %1540, 0
  br i1 %1541, label %1542, label %1546

; <label>:1542                                    ; preds = %1451
  %1543 = fsub fast float %1534, %1223
  %1544 = fsub fast float %1535, %1224
  %1545 = fsub fast float %1536, %1225
  br label %1546

; <label>:1546                                    ; preds = %1542, %1451
  %1547 = phi float [ %1543, %1542 ], [ %1534, %1451 ]
  %1548 = phi float [ %1544, %1542 ], [ %1535, %1451 ]
  %1549 = phi float [ %1545, %1542 ], [ %1536, %1451 ]
  %1550 = fmul float %1549, %1539
  %1551 = fmul float %1548, %1539
  %1552 = fmul float %1547, %1539
  %1553 = fadd fast float %1552, %1223
  %1554 = fadd fast float %1551, %1224
  %1555 = fadd fast float %1550, %1225
  %1556 = icmp ne i32 %1452, 0
  %1557 = select i1 %1556, float 1.000000e+00, float 0.000000e+00
  %1558 = fmul fast float %1443, %1557
  %1559 = fsub fast float %1497, %1230
  %1560 = fsub fast float %1498, %1231
  %1561 = fsub fast float %1499, %1232
  %1562 = fmul fast float %1559, %1558
  %1563 = fmul fast float %1560, %1558
  %1564 = fmul fast float %1561, %1558
  %1565 = fadd fast float %1562, %1230
  %1566 = fadd fast float %1563, %1231
  %1567 = fadd fast float %1564, %1232
  %1568 = fsub fast float %1470, %1229
  %1569 = fmul fast float %1568, %1558
  %1570 = fadd fast float %1569, %1229
  %1571 = fmul fast float %1558, %1216
  %1572 = fsub fast float %1216, %1571
  %1573 = fmul fast float %1558, %1215
  %1574 = fsub fast float %1215, %1573
  %1575 = bitcast float %1285 to i32
  %1576 = lshr i32 %1575, 16
  %1577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1576)  ; LegacyF16ToF32(value)
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = and i32 %1579, 1
  %1581 = icmp eq i32 %1580, 0
  br i1 %1581, label %1582, label %1607

; <label>:1582                                    ; preds = %1546
  %1583 = fadd fast float %1470, 0xBFB99999A0000000
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1585 = fmul fast float %1584, 0x3FF1C71C80000000
  %1586 = fsub fast float 1.000000e+00, %1585
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1588 = fmul fast float %1587, %1497
  %1589 = fmul fast float %1587, %1498
  %1590 = fmul fast float %1587, %1499
  %1591 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1592 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1593 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1594 = call float @dx.op.binary.f32(i32 35, float %1592, float %1593)  ; FMax(a,b)
  %1595 = call float @dx.op.binary.f32(i32 35, float %1591, float %1594)  ; FMax(a,b)
  %1596 = fcmp fast ogt float %1595, 0.000000e+00
  %1597 = bitcast float %1595 to i32
  %1598 = sub nsw i32 2129859010, %1597
  %1599 = bitcast i32 %1598 to float
  %1600 = select i1 %1596, float %1599, float 0.000000e+00
  %1601 = fmul fast float %1591, %1577
  %1602 = fmul fast float %1592, %1577
  %1603 = fmul fast float %1593, %1577
  %1604 = fmul fast float %1601, %1600
  %1605 = fmul fast float %1602, %1600
  %1606 = fmul fast float %1603, %1600
  br label %1607

; <label>:1607                                    ; preds = %1582, %1546
  %1608 = phi float [ %1577, %1546 ], [ %1604, %1582 ]
  %1609 = phi float [ %1577, %1546 ], [ %1605, %1582 ]
  %1610 = phi float [ %1577, %1546 ], [ %1606, %1582 ]
  %1611 = fsub fast float %1608, %1217
  %1612 = fsub fast float %1609, %1218
  %1613 = fsub fast float %1610, %1219
  %1614 = fmul fast float %1611, %1558
  %1615 = fmul fast float %1612, %1558
  %1616 = fmul fast float %1613, %1558
  %1617 = fadd fast float %1614, %1217
  %1618 = fadd fast float %1615, %1218
  %1619 = fadd fast float %1616, %1219
  %1620 = fadd fast float %1443, %1228
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = fsub fast float %1490, %1227
  %1623 = fmul fast float %1622, %1539
  %1624 = fadd fast float %1623, %1227
  %1625 = fsub fast float %1476, %1226
  %1626 = fmul fast float %1625, %1539
  %1627 = fadd fast float %1626, %1226
  br i1 %1541, label %1636, label %1628

; <label>:1628                                    ; preds = %1607
  %1629 = and i32 %1291, 32768
  %1630 = icmp eq i32 %1629, 0
  br i1 %1630, label %1646, label %1631

; <label>:1631                                    ; preds = %1628
  %1632 = fmul fast float %1539, 1.270000e+02
  %1633 = fadd fast float %1632, %1212
  %1634 = fadd fast float %1632, %1213
  %1635 = fadd fast float %1632, %1214
  br label %1646

; <label>:1636                                    ; preds = %1607
  %1637 = fsub fast float 1.270000e+02, %1212
  %1638 = fsub fast float 1.270000e+02, %1213
  %1639 = fsub fast float 1.270000e+02, %1214
  %1640 = fmul fast float %1539, %1637
  %1641 = fmul fast float %1539, %1638
  %1642 = fmul fast float %1539, %1639
  %1643 = fadd fast float %1640, %1212
  %1644 = fadd fast float %1641, %1213
  %1645 = fadd fast float %1642, %1214
  br label %1646

; <label>:1646                                    ; preds = %1636, %1631, %1628
  %1647 = phi float [ %1633, %1631 ], [ %1212, %1628 ], [ %1643, %1636 ]
  %1648 = phi float [ %1634, %1631 ], [ %1213, %1628 ], [ %1644, %1636 ]
  %1649 = phi float [ %1635, %1631 ], [ %1214, %1628 ], [ %1645, %1636 ]
  %1650 = call float @dx.op.dot3.f32(i32 55, float %1497, float %1498, float %1499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 0
  %1653 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1654 = fmul fast float %1653, %1650
  %1655 = fadd fast float %1654, %1652
  %1656 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1657 = bitcast float %1279 to i32
  %1658 = and i32 %1657, 65535
  %1659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1658)  ; LegacyF16ToF32(value)
  %1660 = lshr i32 %1657, 16
  %1661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1660)  ; LegacyF16ToF32(value)
  %1662 = fcmp fast oge float %1659, 0.000000e+00
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1665 = select i1 %1662, float %1659, float %1664
  %1666 = fadd fast float %1665, %1661
  %1667 = fsub fast float %1656, %1211
  %1668 = fmul fast float %1667, %1443
  %1669 = fadd fast float %1668, %1211
  %1670 = fmul fast float %1666, %1443
  %1671 = call float @dx.op.binary.f32(i32 35, float %1210, float %1670)  ; FMax(a,b)
  %1672 = and i32 %1291, 16
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1695, label %1674

; <label>:1674                                    ; preds = %1646
  %1675 = add i32 %1282, 0
  %1676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1675, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1677 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1676, %dx.types.Handle %1456, float %1384, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float %1389, float %1391, float undef, float %1393, float %1395, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1678 = extractvalue %dx.types.ResRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.ResRet.f32 %1677, 1
  %1680 = extractvalue %dx.types.ResRet.f32 %1677, 2
  %1681 = and i32 %1575, 65535
  %1682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1681)  ; LegacyF16ToF32(value)
  %1683 = fmul fast float %1678, %1276
  %1684 = fmul fast float %1679, %1277
  %1685 = fmul fast float %1680, %1278
  %1686 = and i32 %1291, 16384
  %1687 = icmp ne i32 %1686, 0
  %1688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1689 = extractvalue %dx.types.CBufRet.f32 %1688, 0
  %1690 = select i1 %1687, float %1689, float 1.000000e+00
  %1691 = fmul fast float %1690, %1682
  %1692 = fmul fast float %1683, %1691
  %1693 = fmul fast float %1684, %1691
  %1694 = fmul fast float %1685, %1691
  br label %1695

; <label>:1695                                    ; preds = %1674, %1646
  %1696 = phi float [ %1692, %1674 ], [ 0.000000e+00, %1646 ]
  %1697 = phi float [ %1693, %1674 ], [ 0.000000e+00, %1646 ]
  %1698 = phi float [ %1694, %1674 ], [ 0.000000e+00, %1646 ]
  %1699 = fsub fast float %1696, %1220
  %1700 = fsub fast float %1697, %1221
  %1701 = fsub fast float %1698, %1222
  %1702 = fmul fast float %1699, %1443
  %1703 = fmul fast float %1700, %1443
  %1704 = fmul fast float %1701, %1443
  %1705 = fadd fast float %1702, %1220
  %1706 = fadd fast float %1703, %1221
  %1707 = fadd fast float %1704, %1222
  br label %1340

; <label>:1708                                    ; preds = %1340
  br label %1709

; <label>:1709                                    ; preds = %1708, %1098
  %1710 = phi float [ 0.000000e+00, %1098 ], [ %1341, %1708 ]
  %1711 = phi float [ %1126, %1098 ], [ %1342, %1708 ]
  %1712 = phi float [ %1118, %1098 ], [ %1343, %1708 ]
  %1713 = phi float [ %1110, %1098 ], [ %1344, %1708 ]
  %1714 = phi float [ %1111, %1098 ], [ %1345, %1708 ]
  %1715 = phi float [ %1112, %1098 ], [ %1346, %1708 ]
  %1716 = phi float [ 0.000000e+00, %1098 ], [ %1347, %1708 ]
  %1717 = phi float [ 0.000000e+00, %1098 ], [ %1348, %1708 ]
  %1718 = phi float [ %1107, %1098 ], [ %1349, %1708 ]
  %1719 = phi float [ %1108, %1098 ], [ %1350, %1708 ]
  %1720 = phi float [ %1109, %1098 ], [ %1351, %1708 ]
  %1721 = phi float [ %1104, %1098 ], [ %1352, %1708 ]
  %1722 = phi float [ %1105, %1098 ], [ %1353, %1708 ]
  %1723 = phi float [ %1106, %1098 ], [ %1354, %1708 ]
  %1724 = phi float [ %1152, %1098 ], [ %1355, %1708 ]
  %1725 = phi float [ %1153, %1098 ], [ %1356, %1708 ]
  %1726 = phi float [ %1154, %1098 ], [ %1357, %1708 ]
  %1727 = phi float [ %1116, %1098 ], [ %1358, %1708 ]
  %1728 = phi float [ %1115, %1098 ], [ %1359, %1708 ]
  %1729 = phi float [ 0.000000e+00, %1098 ], [ %1360, %1708 ]
  %1730 = phi float [ %1113, %1098 ], [ %1361, %1708 ]
  %1731 = phi float [ %1101, %1098 ], [ %1362, %1708 ]
  %1732 = phi float [ %1102, %1098 ], [ %1363, %1708 ]
  %1733 = phi float [ %1103, %1098 ], [ %1364, %1708 ]
  %1734 = call float @dx.op.dot3.f32(i32 55, float %1724, float %1725, float %1726, float %1724, float %1725, float %1726)  ; Dot3(ax,ay,az,bx,by,bz)
  %1735 = call float @dx.op.unary.f32(i32 25, float %1734)  ; Rsqrt(value)
  %1736 = fmul fast float %1735, %1724
  %1737 = fmul fast float %1735, %1725
  %1738 = fmul fast float %1735, %1726
  %1739 = fadd fast float %1729, %1114
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1741 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1737, float %1738, float %1736, float %1737, float %1738)  ; Dot3(ax,ay,az,bx,by,bz)
  %1742 = call float @dx.op.unary.f32(i32 25, float %1741)  ; Rsqrt(value)
  %1743 = fmul fast float %1742, %1736
  %1744 = fmul fast float %1742, %1737
  %1745 = fmul fast float %1742, %1738
  %1746 = add i32 %71, 152
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = extractvalue %dx.types.ResRet.i32 %1747, 1
  %1750 = extractvalue %dx.types.ResRet.i32 %1747, 2
  %1751 = extractvalue %dx.types.ResRet.i32 %1747, 3
  %1752 = bitcast i32 %1748 to float
  %1753 = bitcast i32 %1749 to float
  %1754 = bitcast i32 %1750 to float
  %1755 = bitcast i32 %1751 to float
  %1756 = fsub fast float %1731, %1752
  %1757 = fsub fast float %1732, %1753
  %1758 = fsub fast float %1733, %1754
  %1759 = fmul fast float %1756, %209
  %1760 = fmul fast float %1757, %209
  %1761 = fmul fast float %1758, %209
  %1762 = fadd fast float %1759, %1752
  %1763 = fadd fast float %1760, %1753
  %1764 = fadd fast float %1761, %1754
  %1765 = fsub fast float %1740, %1755
  %1766 = fmul fast float %1765, %209
  %1767 = fadd fast float %1766, %1755
  %1768 = fadd fast float %1730, 0xBFB99999A0000000
  %1769 = call float @dx.op.unary.f32(i32 7, float %1768)  ; Saturate(value)
  %1770 = fmul fast float %1769, 0x3FF1C71C80000000
  %1771 = call float @dx.op.binary.f32(i32 36, float %1730, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1772 = fsub fast float 1.000000e+00, %1770
  %1773 = call float @dx.op.unary.f32(i32 7, float %1772)  ; Saturate(value)
  %1774 = fmul fast float %1762, %1773
  %1775 = fmul fast float %1763, %1773
  %1776 = fmul fast float %1764, %1773
  %1777 = call float @dx.op.unary.f32(i32 7, float %1774)  ; Saturate(value)
  %1778 = call float @dx.op.unary.f32(i32 7, float %1775)  ; Saturate(value)
  %1779 = call float @dx.op.unary.f32(i32 7, float %1776)  ; Saturate(value)
  %1780 = fmul fast float %1762, %1770
  %1781 = fmul fast float %1763, %1770
  %1782 = fmul fast float %1764, %1770
  %1783 = fadd fast float %1780, %1771
  %1784 = fadd fast float %1781, %1771
  %1785 = fadd fast float %1782, %1771
  %1786 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  %1787 = call float @dx.op.unary.f32(i32 7, float %1784)  ; Saturate(value)
  %1788 = call float @dx.op.unary.f32(i32 7, float %1785)  ; Saturate(value)
  %1789 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = and i32 %1791, 1
  %1793 = icmp eq i32 %1792, 0
  br i1 %1793, label %1808, label %1794

; <label>:1794                                    ; preds = %1709
  %1795 = call float @dx.op.binary.f32(i32 35, float %1778, float %1779)  ; FMax(a,b)
  %1796 = call float @dx.op.binary.f32(i32 35, float %1777, float %1795)  ; FMax(a,b)
  %1797 = fcmp fast ogt float %1796, 0.000000e+00
  %1798 = bitcast float %1796 to i32
  %1799 = sub nsw i32 2129859010, %1798
  %1800 = bitcast i32 %1799 to float
  %1801 = select i1 %1797, float %1800, float 0.000000e+00
  %1802 = fmul fast float %1777, %1718
  %1803 = fmul fast float %1778, %1719
  %1804 = fmul fast float %1779, %1720
  %1805 = fmul fast float %1802, %1801
  %1806 = fmul fast float %1803, %1801
  %1807 = fmul fast float %1804, %1801
  br label %1808

; <label>:1808                                    ; preds = %1794, %1709
  %1809 = phi float [ %1805, %1794 ], [ %1718, %1709 ]
  %1810 = phi float [ %1806, %1794 ], [ %1719, %1709 ]
  %1811 = phi float [ %1807, %1794 ], [ %1720, %1709 ]
  %1812 = call float @dx.op.binary.f32(i32 36, float %1713, float 1.270000e+02)  ; FMin(a,b)
  %1813 = call float @dx.op.binary.f32(i32 36, float %1714, float 1.270000e+02)  ; FMin(a,b)
  %1814 = call float @dx.op.binary.f32(i32 36, float %1715, float 1.270000e+02)  ; FMin(a,b)
  %1815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.i32 %1815, 3
  %1817 = and i32 %1816, 8
  %1818 = icmp ne i32 %1817, 0
  %1819 = call float @dx.op.binary.f32(i32 35, float %1777, float %1762)  ; FMax(a,b)
  %1820 = call float @dx.op.binary.f32(i32 35, float %1778, float %1762)  ; FMax(a,b)
  %1821 = call float @dx.op.binary.f32(i32 35, float %1779, float %1762)  ; FMax(a,b)
  %1822 = call float @dx.op.dot3.f32(i32 55, float %1777, float %1778, float %1779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1823 = select i1 %269, float %1762, float %1777
  %1824 = select i1 %269, float %1822, float %1778
  %1825 = select i1 %269, float 1.000000e+00, float %1779
  %1826 = select i1 %1818, float %1819, float %1823
  %1827 = select i1 %1818, float %1820, float %1824
  %1828 = select i1 %1818, float %1821, float %1825
  %1829 = call float @dx.op.dot3.f32(i32 55, float %1809, float %1810, float %1811, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1830 = select i1 %269, float %1829, float %1809
  %1831 = select i1 %269, float %1829, float %1810
  %1832 = select i1 %269, float %1829, float %1811
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.CBufRet.f32 %1833, 2
  %1837 = fadd fast float %1834, %146
  %1838 = fadd fast float %1835, %147
  %1839 = fadd fast float %1836, %148
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1843 = fsub fast float %1837, %1841
  %1844 = fsub fast float %1838, %1842
  %1845 = fmul fast float %1843, %1843
  %1846 = fmul fast float %1844, %1844
  %1847 = fadd fast float %1845, %1846
  %1848 = call float @dx.op.unary.f32(i32 24, float %1847)  ; Sqrt(value)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1850 = fcmp fast olt float %1848, %1849
  br i1 %1850, label %1851, label %1918

; <label>:1851                                    ; preds = %1808
  %1852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1853 = extractvalue %dx.types.CBufRet.f32 %1852, 0
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 0
  %1858 = extractvalue %dx.types.CBufRet.f32 %1852, 1
  %1859 = extractvalue %dx.types.CBufRet.f32 %1854, 1
  %1860 = extractvalue %dx.types.CBufRet.f32 %1856, 1
  %1861 = extractvalue %dx.types.CBufRet.f32 %1852, 3
  %1862 = extractvalue %dx.types.CBufRet.f32 %1854, 3
  %1863 = extractvalue %dx.types.CBufRet.f32 %1856, 3
  %1864 = fadd fast float %1861, %1837
  %1865 = fadd fast float %1862, %1838
  %1866 = fadd fast float %1863, %1839
  %1867 = fmul fast float %1864, %1853
  %1868 = call float @dx.op.tertiary.f32(i32 46, float %1865, float %1855, float %1867)  ; FMad(a,b,c)
  %1869 = call float @dx.op.tertiary.f32(i32 46, float %1866, float %1857, float %1868)  ; FMad(a,b,c)
  %1870 = fmul fast float %1864, %1858
  %1871 = call float @dx.op.tertiary.f32(i32 46, float %1865, float %1859, float %1870)  ; FMad(a,b,c)
  %1872 = call float @dx.op.tertiary.f32(i32 46, float %1866, float %1860, float %1871)  ; FMad(a,b,c)
  %1873 = fsub fast float %1869, %1861
  %1874 = fsub fast float %1872, %1862
  %1875 = fsub fast float %1873, %1841
  %1876 = fadd fast float %1875, %1849
  %1877 = fsub fast float %1874, %1842
  %1878 = fadd fast float %1877, %1849
  %1879 = extractvalue %dx.types.CBufRet.f32 %1840, 3
  %1880 = fmul fast float %1876, %1879
  %1881 = fmul fast float %1878, %1879
  %1882 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1883 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1884 = fsub fast float 1.000000e+00, %1882
  %1885 = fsub fast float 1.000000e+00, %1883
  %1886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1884, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = fcmp fast ugt float %1887, 0.000000e+00
  br i1 %1888, label %1889, label %2192

; <label>:1889                                    ; preds = %1851
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1892 = fmul fast float %1891, %1887
  %1893 = extractvalue %dx.types.CBufRet.f32 %1890, 3
  %1894 = fadd fast float %1893, %1892
  %1895 = extractvalue %dx.types.CBufRet.f32 %1856, 2
  %1896 = fadd fast float %1894, %1863
  %1897 = fmul fast float %1869, %1857
  %1898 = call float @dx.op.tertiary.f32(i32 46, float %1872, float %1860, float %1897)  ; FMad(a,b,c)
  %1899 = call float @dx.op.tertiary.f32(i32 46, float %1896, float %1895, float %1898)  ; FMad(a,b,c)
  %1900 = fsub fast float %1899, %1863
  %1901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1902 = extractvalue %dx.types.CBufRet.f32 %1901, 2
  %1903 = fsub fast float %1900, %1902
  %1904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1884, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1905 = extractvalue %dx.types.ResRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.ResRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.ResRet.f32 %1904, 2
  %1908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1884, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.ResRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1908, 2
  %1912 = fadd fast float %1909, %1905
  %1913 = fmul fast float %1912, 0x3F847AE140000000
  %1914 = fadd fast float %1910, %1906
  %1915 = fmul fast float %1914, 0x3F847AE140000000
  %1916 = fadd fast float %1911, %1907
  %1917 = fmul fast float %1916, 0x3F847AE140000000
  br label %2192

; <label>:1918                                    ; preds = %1808
  %1919 = and i32 %245, 1
  %1920 = icmp eq i32 %1919, 0
  br i1 %1920, label %2192, label %1921

; <label>:1921                                    ; preds = %1918
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 0
  %1924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1925 = extractvalue %dx.types.CBufRet.f32 %1924, 0
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 0
  %1928 = extractvalue %dx.types.CBufRet.f32 %1922, 1
  %1929 = extractvalue %dx.types.CBufRet.f32 %1924, 1
  %1930 = extractvalue %dx.types.CBufRet.f32 %1926, 1
  %1931 = extractvalue %dx.types.CBufRet.f32 %1922, 3
  %1932 = extractvalue %dx.types.CBufRet.f32 %1924, 3
  %1933 = extractvalue %dx.types.CBufRet.f32 %1926, 3
  %1934 = fadd fast float %1931, %1837
  %1935 = fadd fast float %1932, %1838
  %1936 = fadd fast float %1933, %1839
  %1937 = fmul fast float %1934, %1923
  %1938 = call float @dx.op.tertiary.f32(i32 46, float %1935, float %1925, float %1937)  ; FMad(a,b,c)
  %1939 = call float @dx.op.tertiary.f32(i32 46, float %1936, float %1927, float %1938)  ; FMad(a,b,c)
  %1940 = fmul fast float %1934, %1928
  %1941 = call float @dx.op.tertiary.f32(i32 46, float %1935, float %1929, float %1940)  ; FMad(a,b,c)
  %1942 = call float @dx.op.tertiary.f32(i32 46, float %1936, float %1930, float %1941)  ; FMad(a,b,c)
  %1943 = fsub fast float %1939, %1931
  %1944 = fsub fast float %1942, %1932
  %1945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1945, 0
  %1947 = extractvalue %dx.types.CBufRet.f32 %1945, 1
  %1948 = extractvalue %dx.types.CBufRet.f32 %1945, 2
  %1949 = extractvalue %dx.types.CBufRet.f32 %1945, 3
  %1950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1951 = extractvalue %dx.types.CBufRet.f32 %1950, 3
  %1952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.i32 %1952, 0
  %1954 = extractvalue %dx.types.CBufRet.i32 %1952, 1
  %1955 = udiv i32 %1954, %1953
  %1956 = fsub fast float %1943, %1946
  %1957 = fsub fast float %1944, %1947
  %1958 = call float @dx.op.binary.f32(i32 35, float %1956, float 0.000000e+00)  ; FMax(a,b)
  %1959 = call float @dx.op.binary.f32(i32 35, float %1957, float 0.000000e+00)  ; FMax(a,b)
  %1960 = call float @dx.op.binary.f32(i32 36, float %1958, float %1948)  ; FMin(a,b)
  %1961 = call float @dx.op.binary.f32(i32 36, float %1959, float %1949)  ; FMin(a,b)
  %1962 = add i32 %1953, -1
  %1963 = add i32 %1955, -1
  %1964 = fmul fast float %1960, %1951
  %1965 = fmul fast float %1961, %1951
  %1966 = fptoui float %1964 to i32
  %1967 = fptoui float %1965 to i32
  %1968 = call i32 @dx.op.binary.i32(i32 40, i32 %1966, i32 %1962)  ; UMin(a,b)
  %1969 = call i32 @dx.op.binary.i32(i32 40, i32 %1967, i32 %1963)  ; UMin(a,b)
  %1970 = mul i32 %1969, %1953
  %1971 = add i32 %1970, %1968
  %1972 = shl i32 %1971, 2
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = icmp eq i32 %1974, -1
  br i1 %1975, label %2192, label %1976

; <label>:1976                                    ; preds = %1921
  %1977 = mul i32 %1974, 148
  %1978 = add i32 %1977, 4
  %1979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.f32 %1979, 0
  %1981 = add i32 %1977, 8
  %1982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = add i32 %1977, 36
  %1985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = add i32 %1977, 60
  %1988 = add i32 %1977, 92
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = add i32 %1977, 116
  %1992 = fsub fast float %1943, %1980
  %1993 = fsub fast float %1944, %1983
  %1994 = fmul fast float %1951, %1992
  %1995 = fmul fast float %1951, %1993
  %1996 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1997 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1998 = fsub fast float 1.000000e+00, %1997
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 2
  %2001 = call float @dx.op.unary.f32(i32 83, float %1996)  ; DerivCoarseX(value)
  %2002 = call float @dx.op.unary.f32(i32 83, float %1998)  ; DerivCoarseX(value)
  %2003 = call float @dx.op.unary.f32(i32 84, float %1996)  ; DerivCoarseY(value)
  %2004 = call float @dx.op.unary.f32(i32 84, float %1998)  ; DerivCoarseY(value)
  %2005 = fmul fast float %2001, %2000
  %2006 = fmul fast float %2002, %2000
  %2007 = fmul fast float %2003, %2000
  %2008 = fmul fast float %2004, %2000
  %2009 = call float @dx.op.dot2.f32(i32 54, float %2007, float %2008, float %2007, float %2008)  ; Dot2(ax,ay,bx,by)
  %2010 = call float @dx.op.dot2.f32(i32 54, float %2005, float %2006, float %2005, float %2006)  ; Dot2(ax,ay,bx,by)
  %2011 = call float @dx.op.binary.f32(i32 35, float %2010, float %2009)  ; FMax(a,b)
  %2012 = call float @dx.op.unary.f32(i32 23, float %2011)  ; Log(value)
  %2013 = fmul fast float %2012, 5.000000e-01
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 1
  %2016 = fadd fast float %2015, %2013
  %2017 = call float @dx.op.binary.f32(i32 35, float %2016, float 0.000000e+00)  ; FMax(a,b)
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 3
  %2020 = fadd fast float %2019, %2017
  %2021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2022 = extractvalue %dx.types.CBufRet.f32 %2021, 3
  %2023 = fadd fast float %2020, %2022
  %2024 = add i32 %1990, 0
  %2025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2024, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2026 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2025, i32 0)  ; GetDimensions(handle,mipLevel)
  %2027 = extractvalue %dx.types.Dimensions %2026, 0
  %2028 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2027)  ; FirstbitLo(value)
  %2029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.i32 %2029, 1
  %2031 = sub nsw i32 %2030, %2028
  %2032 = sitofp i32 %2031 to float
  %2033 = fsub fast float %2023, %2032
  %2034 = call float @dx.op.binary.f32(i32 35, float %2033, float 0.000000e+00)  ; FMax(a,b)
  %2035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2025, %dx.types.Handle %62, float %1996, float %1998, float %1986, float undef, i32 0, i32 0, i32 undef, float %2034)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  %2037 = fcmp ule float %2036, 0x3FE0101020000000
  %2038 = extractvalue %dx.types.CBufRet.i32 %2029, 0
  %2039 = and i32 %2038, 128
  %2040 = icmp ne i32 %2039, 0
  %2041 = and i1 %2037, %2040
  br i1 %2041, label %2192, label %2042

; <label>:2042                                    ; preds = %1976
  %2043 = add i32 %1977, 20
  %2044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.f32 %2044, 0
  %2046 = add i32 %1977, 24
  %2047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2046, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.f32 %2047, 0
  %2049 = add i32 %1977, 40
  %2050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.f32 %2050, 0
  %2052 = add i32 %1977, 96
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2057 = fmul fast float %2056, %1996
  %2058 = fmul fast float %2056, %1998
  %2059 = extractvalue %dx.types.CBufRet.f32 %2055, 3
  %2060 = fadd fast float %2057, %2059
  %2061 = fadd fast float %2058, %2059
  %2062 = add i32 %2054, 0
  %2063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2062, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2064 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2063, i32 0)  ; GetDimensions(handle,mipLevel)
  %2065 = extractvalue %dx.types.Dimensions %2064, 0
  %2066 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2065)  ; FirstbitLo(value)
  %2067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2068 = extractvalue %dx.types.CBufRet.i32 %2067, 1
  %2069 = sub nsw i32 %2068, %2066
  %2070 = sitofp i32 %2069 to float
  %2071 = fsub fast float %2020, %2070
  %2072 = call float @dx.op.binary.f32(i32 35, float %2071, float 0.000000e+00)  ; FMax(a,b)
  %2073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2063, %dx.types.Handle %62, float %2060, float %2061, float %2051, float undef, i32 0, i32 0, i32 undef, float %2072)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = fmul fast float %2074, %2045
  %2076 = fadd fast float %2075, %2048
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 0
  %2079 = extractvalue %dx.types.CBufRet.f32 %2077, 1
  %2080 = extractvalue %dx.types.CBufRet.f32 %2077, 2
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 3
  %2083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2084 = extractvalue %dx.types.CBufRet.f32 %2083, 3
  %2085 = extractvalue %dx.types.CBufRet.f32 %2077, 3
  %2086 = fadd fast float %2082, %1943
  %2087 = fadd fast float %2084, %1944
  %2088 = fadd fast float %2076, %2085
  %2089 = fmul fast float %2086, %2078
  %2090 = call float @dx.op.tertiary.f32(i32 46, float %2087, float %2079, float %2089)  ; FMad(a,b,c)
  %2091 = call float @dx.op.tertiary.f32(i32 46, float %2088, float %2080, float %2090)  ; FMad(a,b,c)
  %2092 = fsub fast float %2091, %2085
  %2093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2094 = extractvalue %dx.types.CBufRet.f32 %2093, 2
  %2095 = fsub fast float %2092, %2094
  %2096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2097 = extractvalue %dx.types.CBufRet.i32 %2096, 0
  %2098 = call i32 @dx.op.binary.i32(i32 40, i32 %1974, i32 %2097)  ; UMin(a,b)
  %2099 = mul i32 %2098, 36
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = add i32 %2099, 4
  %2103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2104 = extractvalue %dx.types.CBufRet.f32 %2103, 0
  %2105 = fmul fast float %2104, %1996
  %2106 = fmul fast float %2104, %1998
  %2107 = extractvalue %dx.types.CBufRet.f32 %2103, 1
  %2108 = fadd fast float %2105, %2107
  %2109 = fadd fast float %2106, %2107
  %2110 = icmp eq i32 %2101, 0
  br i1 %2110, label %2179, label %2111

; <label>:2111                                    ; preds = %2042
  br label %2112

; <label>:2112                                    ; preds = %2169, %2111
  %2113 = phi float [ %2170, %2169 ], [ 0.000000e+00, %2111 ]
  %2114 = phi float [ %2171, %2169 ], [ 0.000000e+00, %2111 ]
  %2115 = phi float [ %2172, %2169 ], [ 0.000000e+00, %2111 ]
  %2116 = phi float [ %2173, %2169 ], [ 0.000000e+00, %2111 ]
  %2117 = phi float [ %2174, %2169 ], [ 0.000000e+00, %2111 ]
  %2118 = phi float [ %2175, %2169 ], [ 0.000000e+00, %2111 ]
  %2119 = phi i32 [ %2176, %2169 ], [ 0, %2111 ]
  %2120 = shl i32 %2119, 2
  %2121 = add i32 %1987, %2120
  %2122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.f32 %2122, 0
  %2124 = add i32 %1991, %2120
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2124, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = add i32 %2126, 0
  %2128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2127, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2129 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2128, i32 0)  ; GetDimensions(handle,mipLevel)
  %2130 = extractvalue %dx.types.Dimensions %2129, 0
  %2131 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2130)  ; FirstbitLo(value)
  %2132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.i32 %2132, 1
  %2134 = sub nsw i32 %2133, %2131
  %2135 = sitofp i32 %2134 to float
  %2136 = fsub fast float %2020, %2135
  %2137 = call float @dx.op.binary.f32(i32 35, float %2136, float 0.000000e+00)  ; FMax(a,b)
  %2138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2128, %dx.types.Handle %62, float %2108, float %2109, float %2123, float undef, i32 0, i32 0, i32 undef, float %2137)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2139 = extractvalue %dx.types.ResRet.f32 %2138, 0
  %2140 = fcmp fast ogt float %2139, 0.000000e+00
  br i1 %2140, label %2141, label %2169

; <label>:2141                                    ; preds = %2112
  %2142 = add i32 %2102, %2120
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = and i32 %2144, 32767
  %2146 = mul nuw nsw i32 %2145, 928
  %2147 = add nuw nsw i32 %2146, 48
  %2148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.f32 %2148, 0
  %2150 = extractvalue %dx.types.ResRet.f32 %2148, 1
  %2151 = extractvalue %dx.types.ResRet.f32 %2148, 2
  %2152 = add nuw nsw i32 %2146, 60
  %2153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.f32 %2153, 0
  %2155 = extractvalue %dx.types.ResRet.f32 %2153, 1
  %2156 = extractvalue %dx.types.ResRet.f32 %2153, 2
  %2157 = fmul fast float %2149, %2139
  %2158 = fmul fast float %2150, %2139
  %2159 = fmul fast float %2151, %2139
  %2160 = fadd fast float %2157, %2113
  %2161 = fadd fast float %2158, %2114
  %2162 = fadd fast float %2159, %2115
  %2163 = fmul fast float %2154, %2139
  %2164 = fmul fast float %2155, %2139
  %2165 = fmul fast float %2156, %2139
  %2166 = fadd fast float %2163, %2116
  %2167 = fadd fast float %2164, %2117
  %2168 = fadd fast float %2165, %2118
  br label %2169

; <label>:2169                                    ; preds = %2141, %2112
  %2170 = phi float [ %2160, %2141 ], [ %2113, %2112 ]
  %2171 = phi float [ %2161, %2141 ], [ %2114, %2112 ]
  %2172 = phi float [ %2162, %2141 ], [ %2115, %2112 ]
  %2173 = phi float [ %2166, %2141 ], [ %2116, %2112 ]
  %2174 = phi float [ %2167, %2141 ], [ %2117, %2112 ]
  %2175 = phi float [ %2168, %2141 ], [ %2118, %2112 ]
  %2176 = add nuw i32 %2119, 1
  %2177 = icmp eq i32 %2176, %2101
  br i1 %2177, label %2178, label %2112

; <label>:2178                                    ; preds = %2169
  br label %2179

; <label>:2179                                    ; preds = %2178, %2042
  %2180 = phi float [ 0.000000e+00, %2042 ], [ %2170, %2178 ]
  %2181 = phi float [ 0.000000e+00, %2042 ], [ %2171, %2178 ]
  %2182 = phi float [ 0.000000e+00, %2042 ], [ %2172, %2178 ]
  %2183 = phi float [ 0.000000e+00, %2042 ], [ %2173, %2178 ]
  %2184 = phi float [ 0.000000e+00, %2042 ], [ %2174, %2178 ]
  %2185 = phi float [ 0.000000e+00, %2042 ], [ %2175, %2178 ]
  %2186 = fadd fast float %2183, %2180
  %2187 = fmul fast float %2186, 0x3F847AE140000000
  %2188 = fadd fast float %2184, %2181
  %2189 = fmul fast float %2188, 0x3F847AE140000000
  %2190 = fadd fast float %2185, %2182
  %2191 = fmul fast float %2190, 0x3F847AE140000000
  br label %2192

; <label>:2192                                    ; preds = %2179, %1976, %1921, %1918, %1889, %1851
  %2193 = phi float [ %1903, %1889 ], [ -1.310720e+05, %1851 ], [ %2095, %2179 ], [ -1.310720e+05, %1921 ], [ -1.310720e+05, %1976 ], [ -1.310720e+05, %1918 ]
  %2194 = phi float [ %1913, %1889 ], [ 0.000000e+00, %1851 ], [ %2187, %2179 ], [ 0.000000e+00, %1921 ], [ 0.000000e+00, %1976 ], [ 0.000000e+00, %1918 ]
  %2195 = phi float [ %1915, %1889 ], [ 0.000000e+00, %1851 ], [ %2189, %2179 ], [ 0.000000e+00, %1921 ], [ 0.000000e+00, %1976 ], [ 0.000000e+00, %1918 ]
  %2196 = phi float [ %1917, %1889 ], [ 0.000000e+00, %1851 ], [ %2191, %2179 ], [ 0.000000e+00, %1921 ], [ 0.000000e+00, %1976 ], [ 0.000000e+00, %1918 ]
  %2197 = phi i1 [ true, %1889 ], [ false, %1851 ], [ true, %2179 ], [ false, %1921 ], [ false, %1976 ], [ false, %1918 ]
  %2198 = and i32 %245, 3
  %2199 = icmp eq i32 %2198, 1
  %2200 = select i1 %2199, float 1.000000e+00, float 0.000000e+00
  %2201 = fsub fast float %2193, %148
  %2202 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  %2203 = select i1 %2197, float %2202, float 1.000000e+00
  %2204 = fmul fast float %2203, %2200
  %2205 = icmp eq i32 %2198, 3
  %2206 = select i1 %2205, float 1.000000e+00, float %2204
  %2207 = call float @dx.op.binary.f32(i32 35, float %1710, float %2206)  ; FMax(a,b)
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fcmp fast une float %2208, 0.000000e+00
  %2210 = fsub fast float -0.000000e+00, %195
  %2211 = fsub fast float -0.000000e+00, %196
  %2212 = fsub fast float -0.000000e+00, %197
  br i1 %2209, label %2213, label %2375

; <label>:2213                                    ; preds = %2192
  %2214 = call float @dx.op.dot3.f32(i32 55, float %2210, float %2211, float %2212, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %2215 = fmul fast float %2208, 2.500000e+00
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2217 = fmul fast float %2208, 0x4013FFFFE0000000
  %2218 = fadd fast float %2217, 0xBFFFFFFFE0000000
  %2219 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2220 = fmul fast float %2208, 0x4004000020000000
  %2221 = fadd fast float %2220, 0xBFF8000040000000
  %2222 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2223 = call float @dx.op.unary.f32(i32 7, float %2216)  ; Saturate(value)
  %2224 = fmul fast float %1768, 1.000000e+01
  %2225 = call float @dx.op.unary.f32(i32 7, float %2224)  ; Saturate(value)
  %2226 = fmul fast float %2225, 2.000000e+00
  %2227 = fsub fast float 3.000000e+00, %2226
  %2228 = fmul fast float %2225, %2225
  %2229 = fmul fast float %2228, %2227
  %2230 = fsub fast float 1.000000e+00, %2229
  %2231 = fsub fast float 0x3FE3333340000000, %1789
  %2232 = fmul fast float %2231, 0x400AAAAAA0000000
  %2233 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2234 = fmul fast float %2230, %2233
  %2235 = fmul fast float %1826, 0x3FEA2B8620000000
  %2236 = fmul fast float %1827, 0x3FEA2B8620000000
  %2237 = fmul fast float %1828, 0x3FEA2B8620000000
  %2238 = fadd fast float %2235, 0x3FC81DFBA0000000
  %2239 = fmul fast float %2238, %1826
  %2240 = fadd fast float %2239, 0x3F910E6020000000
  %2241 = fadd fast float %2236, 0x3FC81DFBA0000000
  %2242 = fmul fast float %2241, %1827
  %2243 = fadd fast float %2242, 0x3F910E6020000000
  %2244 = fadd fast float %2237, 0x3FC81DFBA0000000
  %2245 = fmul fast float %2244, %1828
  %2246 = fadd fast float %2245, 0x3F910E6020000000
  %2247 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2248 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  %2249 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2250 = fsub fast float %2247, %1826
  %2251 = fsub fast float %2248, %1827
  %2252 = fsub fast float %2249, %1828
  %2253 = fmul fast float %2250, %2223
  %2254 = fmul fast float %2253, %2234
  %2255 = fmul fast float %2251, %2223
  %2256 = fmul fast float %2255, %2234
  %2257 = fmul fast float %2252, %2223
  %2258 = fmul fast float %2257, %2234
  %2259 = fadd fast float %2254, %1826
  %2260 = fadd fast float %2256, %1827
  %2261 = fadd fast float %2258, %1828
  %2262 = fmul fast float %1727, %1727
  %2263 = fmul fast float %2262, %2262
  %2264 = fadd fast float %2219, 1.000000e+00
  %2265 = fsub fast float %2264, %2234
  %2266 = call float @dx.op.unary.f32(i32 7, float %2265)  ; Saturate(value)
  %2267 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2269 = fsub fast float 1.000000e+00, %2263
  %2270 = call float @dx.op.binary.f32(i32 36, float %2266, float %2269)  ; FMin(a,b)
  %2271 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  %2272 = call float @dx.op.binary.f32(i32 35, float %2270, float %2271)  ; FMax(a,b)
  %2273 = fadd fast float %2268, 0xBFE4CCCCC0000000
  %2274 = fmul fast float %2273, 0x4006DB6DA0000000
  %2275 = call float @dx.op.unary.f32(i32 7, float %2274)  ; Saturate(value)
  %2276 = fmul fast float %2275, 2.000000e+00
  %2277 = fsub fast float 3.000000e+00, %2276
  %2278 = bitcast float %1786 to i32
  %2279 = ashr i32 %2278, 1
  %2280 = add nsw i32 %2279, 532487669
  %2281 = bitcast i32 %2280 to float
  %2282 = fsub fast float 1.000000e+00, %2281
  %2283 = bitcast float %2282 to i32
  %2284 = sub nsw i32 2129859010, %2283
  %2285 = bitcast i32 %2284 to float
  %2286 = fmul fast float %2285, 2.000000e+00
  %2287 = bitcast float %1787 to i32
  %2288 = ashr i32 %2287, 1
  %2289 = add nsw i32 %2288, 532487669
  %2290 = bitcast i32 %2289 to float
  %2291 = fsub fast float 1.000000e+00, %2290
  %2292 = bitcast float %2291 to i32
  %2293 = sub nsw i32 2129859010, %2292
  %2294 = bitcast i32 %2293 to float
  %2295 = fmul fast float %2294, 2.000000e+00
  %2296 = bitcast float %1788 to i32
  %2297 = ashr i32 %2296, 1
  %2298 = add nsw i32 %2297, 532487669
  %2299 = bitcast i32 %2298 to float
  %2300 = fsub fast float 1.000000e+00, %2299
  %2301 = bitcast float %2300 to i32
  %2302 = sub nsw i32 2129859010, %2301
  %2303 = bitcast i32 %2302 to float
  %2304 = fmul fast float %2303, 2.000000e+00
  %2305 = fsub fast float 0x4002A9FBE0000000, %2286
  %2306 = fadd fast float %2286, 0x3FD54FDF00000000
  %2307 = bitcast float %2306 to i32
  %2308 = sub nsw i32 2129859010, %2307
  %2309 = bitcast i32 %2308 to float
  %2310 = fmul fast float %2309, %2305
  %2311 = fmul fast float %2310, %2310
  %2312 = fsub fast float 0x4002A9FBE0000000, %2295
  %2313 = fadd fast float %2295, 0x3FD54FDF00000000
  %2314 = bitcast float %2313 to i32
  %2315 = sub nsw i32 2129859010, %2314
  %2316 = bitcast i32 %2315 to float
  %2317 = fmul fast float %2316, %2312
  %2318 = fmul fast float %2317, %2317
  %2319 = fsub fast float 0x4002A9FBE0000000, %2304
  %2320 = fadd fast float %2304, 0x3FD54FDF00000000
  %2321 = bitcast float %2320 to i32
  %2322 = sub nsw i32 2129859010, %2321
  %2323 = bitcast i32 %2322 to float
  %2324 = fmul fast float %2323, %2319
  %2325 = fmul fast float %2324, %2324
  %2326 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2311)  ; FMax(a,b)
  %2327 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2318)  ; FMax(a,b)
  %2328 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2325)  ; FMax(a,b)
  %2329 = fsub fast float 1.000000e+00, %2214
  %2330 = fadd fast float %2329, %2230
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2332 = fsub fast float 1.000000e+00, %2206
  %2333 = fmul fast float %2272, %2332
  %2334 = fmul fast float %2275, %2275
  %2335 = fmul fast float %2334, %2333
  %2336 = fmul fast float %2335, %2277
  %2337 = fmul fast float %2332, 0xBFE99999A0000000
  %2338 = fmul fast float %2337, %2223
  %2339 = fmul fast float %2338, %2234
  %2340 = fadd fast float %2339, 1.000000e+00
  %2341 = fadd fast float %1789, -1.000000e+00
  %2342 = fmul fast float %2340, %2341
  %2343 = fadd fast float %2342, 1.000000e+00
  %2344 = fsub fast float %2326, %1786
  %2345 = fsub fast float %2327, %1787
  %2346 = fsub fast float %2328, %1788
  %2347 = fmul fast float %2336, %2344
  %2348 = fmul fast float %2336, %2345
  %2349 = fmul fast float %2336, %2346
  %2350 = fadd fast float %2347, %1786
  %2351 = fadd fast float %2348, %1787
  %2352 = fadd fast float %2349, %1788
  %2353 = fsub fast float %76, %1743
  %2354 = fsub fast float %77, %1744
  %2355 = fsub fast float %78, %1745
  %2356 = fmul fast float %2336, %2353
  %2357 = fmul fast float %2336, %2354
  %2358 = fmul fast float %2336, %2355
  %2359 = fadd fast float %2356, %1743
  %2360 = fadd fast float %2357, %1744
  %2361 = fadd fast float %2358, %1745
  %2362 = fmul fast float %2336, %2331
  %2363 = call float @dx.op.unary.f32(i32 7, float %2343)  ; Saturate(value)
  %2364 = fsub fast float 1.000000e+00, %2363
  %2365 = fmul fast float %2362, %2364
  %2366 = fadd fast float %2365, %2363
  %2367 = fsub fast float 1.000000e+00, %1727
  %2368 = fmul fast float %2336, %2367
  %2369 = fadd fast float %2368, %1727
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2359, float %2360, float %2361, float %2359, float %2360, float %2361)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = call float @dx.op.unary.f32(i32 25, float %2370)  ; Rsqrt(value)
  %2372 = fmul fast float %2359, %2371
  %2373 = fmul fast float %2360, %2371
  %2374 = fmul fast float %2361, %2371
  br label %2375

; <label>:2375                                    ; preds = %2213, %2192
  %2376 = phi float [ %2350, %2213 ], [ %1786, %2192 ]
  %2377 = phi float [ %2351, %2213 ], [ %1787, %2192 ]
  %2378 = phi float [ %2352, %2213 ], [ %1788, %2192 ]
  %2379 = phi float [ %2259, %2213 ], [ %1826, %2192 ]
  %2380 = phi float [ %2260, %2213 ], [ %1827, %2192 ]
  %2381 = phi float [ %2261, %2213 ], [ %1828, %2192 ]
  %2382 = phi float [ %2372, %2213 ], [ %1743, %2192 ]
  %2383 = phi float [ %2373, %2213 ], [ %1744, %2192 ]
  %2384 = phi float [ %2374, %2213 ], [ %1745, %2192 ]
  %2385 = phi float [ %2366, %2213 ], [ %1789, %2192 ]
  %2386 = phi float [ %2369, %2213 ], [ %1727, %2192 ]
  %2387 = fsub fast float -0.000000e+00, %148
  %2388 = select i1 %269, float 0.000000e+00, float %2378
  %2389 = call float @dx.op.dot3.f32(i32 55, float %2382, float %2383, float %2384, float %2210, float %2211, float %2212)  ; Dot3(ax,ay,az,bx,by,bz)
  %2390 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2391 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %2382, float %2383, float %2384)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = fmul fast float %2391, 2.000000e+00
  %2393 = fmul fast float %2392, %2382
  %2394 = fmul fast float %2392, %2383
  %2395 = fmul fast float %2392, %2384
  %2396 = fsub fast float %195, %2393
  %2397 = fsub fast float %196, %2394
  %2398 = fsub fast float %197, %2395
  %2399 = call float @dx.op.binary.f32(i32 36, float %2386, float 1.000000e+00)  ; FMin(a,b)
  %2400 = fsub fast float 1.000000e+00, %2399
  %2401 = bitcast float %2400 to i32
  %2402 = ashr i32 %2401, 1
  %2403 = add nsw i32 %2402, 532487669
  %2404 = bitcast i32 %2403 to float
  %2405 = fsub fast float 1.000000e+00, %2385
  %2406 = call float @dx.op.binary.f32(i32 35, float %2405, float 0x3F847AE140000000)  ; FMax(a,b)
  %2407 = fmul fast float %2406, %2406
  %2408 = fmul fast float %2407, %2407
  %2409 = call float @dx.op.unary.f32(i32 7, float %2390)  ; Saturate(value)
  %2410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2404, float %2408, float %2409, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2411 = extractvalue %dx.types.ResRet.f32 %2410, 0
  %2412 = fsub fast float 1.000000e+00, %2386
  %2413 = bitcast float %2412 to i32
  %2414 = sub nsw i32 2129859010, %2413
  %2415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2416 = extractvalue %dx.types.CBufRet.f32 %2415, 0
  %2417 = extractvalue %dx.types.CBufRet.f32 %2415, 1
  %2418 = fadd fast float %2416, %146
  %2419 = fadd fast float %2417, %147
  %2420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2421 = extractvalue %dx.types.CBufRet.i32 %2420, 0
  %2422 = icmp eq i32 %2421, 1
  br i1 %2422, label %2423, label %2458

; <label>:2423                                    ; preds = %2375
  %2424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.f32 %2424, 0
  %2426 = extractvalue %dx.types.CBufRet.f32 %2424, 1
  %2427 = fsub fast float %2418, %2425
  %2428 = fsub fast float %2419, %2426
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.CBufRet.f32 %2429, 1
  %2432 = fmul fast float %2427, %2430
  %2433 = fmul fast float %2428, %2431
  %2434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2432, float %2433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = fcmp fast ogt float %2435, 0.000000e+00
  %2437 = extractvalue %dx.types.CBufRet.i32 %2420, 3
  %2438 = icmp ne i32 %2437, 0
  %2439 = and i1 %2436, %2438
  br i1 %2439, label %2440, label %2458, !dx.controlflow.hints !106

; <label>:2440                                    ; preds = %2423
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.CBufRet.f32 %2441, 1
  %2444 = fsub fast float %2418, %2442
  %2445 = fsub fast float %2419, %2443
  %2446 = fmul fast float %2444, %2444
  %2447 = fmul fast float %2445, %2445
  %2448 = fadd fast float %2446, %2447
  %2449 = uitofp i32 %2437 to float
  %2450 = fmul fast float %2449, %2449
  %2451 = fcmp fast ogt float %2448, %2450
  br i1 %2451, label %2458, label %2452

; <label>:2452                                    ; preds = %2440
  %2453 = call float @dx.op.unary.f32(i32 24, float %2448)  ; Sqrt(value)
  %2454 = fsub fast float %2449, %2453
  %2455 = fmul fast float %2454, 0x3F75555560000000
  %2456 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  %2457 = call float @dx.op.binary.f32(i32 36, float %2456, float %2435)  ; FMin(a,b)
  br label %2458

; <label>:2458                                    ; preds = %2452, %2440, %2423, %2375
  %2459 = phi float [ 1.000000e+00, %2375 ], [ %2457, %2452 ], [ %2435, %2423 ], [ 0.000000e+00, %2440 ]
  %2460 = fcmp fast ogt float %2459, 0.000000e+00
  br i1 %2460, label %2461, label %2560, !dx.controlflow.hints !107

; <label>:2461                                    ; preds = %2458
  %2462 = fadd fast float %177, 5.000000e-01
  %2463 = call float @dx.op.unary.f32(i32 27, float %2462)  ; Round_ni(value)
  %2464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %175, float %176, float %2463, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2465 = extractvalue %dx.types.ResRet.f32 %2464, 0
  %2466 = extractvalue %dx.types.ResRet.f32 %2464, 1
  %2467 = extractvalue %dx.types.ResRet.f32 %2464, 2
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 3
  %2470 = fmul fast float %2469, %2465
  %2471 = fmul fast float %2469, %2466
  %2472 = fmul fast float %2469, %2467
  %2473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %175, float %176, float %2463, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2474 = extractvalue %dx.types.ResRet.f32 %2473, 0
  %2475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %175, float %176, float %2463, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2476 = extractvalue %dx.types.ResRet.f32 %2475, 0
  %2477 = extractvalue %dx.types.ResRet.f32 %2475, 1
  %2478 = fmul fast float %2476, 2.000000e+00
  %2479 = fmul fast float %2477, 2.000000e+00
  %2480 = fadd fast float %2478, -1.000000e+00
  %2481 = fadd fast float %2479, -1.000000e+00
  %2482 = fadd fast float %2480, %2481
  %2483 = fmul fast float %2482, 5.000000e-01
  %2484 = fsub fast float %2480, %2481
  %2485 = fmul fast float %2484, 5.000000e-01
  %2486 = call float @dx.op.unary.f32(i32 6, float %2483)  ; FAbs(value)
  %2487 = fsub fast float 1.000000e+00, %2486
  %2488 = call float @dx.op.unary.f32(i32 6, float %2485)  ; FAbs(value)
  %2489 = fsub fast float %2487, %2488
  %2490 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2489)  ; FMax(a,b)
  %2491 = call float @dx.op.dot3.f32(i32 55, float %2483, float %2485, float %2490, float %2483, float %2485, float %2490)  ; Dot3(ax,ay,az,bx,by,bz)
  %2492 = bitcast float %2491 to i32
  %2493 = ashr i32 %2492, 1
  %2494 = sub nsw i32 1597250115, %2493
  %2495 = bitcast i32 %2494 to float
  %2496 = fmul fast float %2495, %2483
  %2497 = fmul fast float %2495, %2485
  %2498 = fmul fast float %2495, %2490
  %2499 = fsub fast float 1.000000e+00, %2474
  %2500 = fdiv fast float %2499, %2498
  %2501 = fmul fast float %2498, %76
  %2502 = fmul fast float %2498, %77
  %2503 = fmul fast float %2498, %78
  %2504 = fmul fast float %2496, %72
  %2505 = fmul fast float %2496, %73
  %2506 = fmul fast float %2496, %74
  %2507 = fadd fast float %2501, %2504
  %2508 = fadd fast float %2502, %2505
  %2509 = fadd fast float %2503, %2506
  %2510 = fmul fast float %2497, %110
  %2511 = fmul fast float %2497, %111
  %2512 = fmul fast float %2497, %112
  %2513 = fadd fast float %2507, %2510
  %2514 = fadd fast float %2508, %2511
  %2515 = fadd fast float %2509, %2512
  %2516 = call float @dx.op.dot3.f32(i32 55, float %2513, float %2514, float %2515, float %2513, float %2514, float %2515)  ; Dot3(ax,ay,az,bx,by,bz)
  %2517 = call float @dx.op.unary.f32(i32 25, float %2516)  ; Rsqrt(value)
  %2518 = fmul fast float %2513, %2517
  %2519 = fmul fast float %2514, %2517
  %2520 = fmul fast float %2515, %2517
  %2521 = call float @dx.op.dot3.f32(i32 55, float %2382, float %2383, float %2384, float %2382, float %2383, float %2384)  ; Dot3(ax,ay,az,bx,by,bz)
  %2522 = call float @dx.op.unary.f32(i32 7, float %2521)  ; Saturate(value)
  %2523 = fmul fast float %2522, 5.000000e-01
  %2524 = fadd fast float %2523, 5.000000e-01
  %2525 = fmul fast float %2524, %2474
  %2526 = call float @dx.op.dot3.f32(i32 55, float %2382, float %2383, float %2384, float %2518, float %2519, float %2520)  ; Dot3(ax,ay,az,bx,by,bz)
  %2527 = call float @dx.op.unary.f32(i32 7, float %2526)  ; Saturate(value)
  %2528 = fmul fast float %2527, %2500
  %2529 = fadd fast float %2525, %2528
  %2530 = fsub fast float 5.000000e-01, %2523
  %2531 = fmul fast float %2530, %2379
  %2532 = fmul fast float %2530, %2380
  %2533 = fmul fast float %2530, %2381
  %2534 = fadd fast float %2529, %2531
  %2535 = fmul fast float %2534, %2470
  %2536 = fadd fast float %2529, %2532
  %2537 = fmul fast float %2536, %2471
  %2538 = fadd fast float %2529, %2533
  %2539 = fmul fast float %2538, %2472
  %2540 = call float @dx.op.dot3.f32(i32 55, float %2396, float %2397, float %2398, float %2382, float %2383, float %2384)  ; Dot3(ax,ay,az,bx,by,bz)
  %2541 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  %2542 = fmul fast float %2541, 5.000000e-01
  %2543 = fadd fast float %2542, 5.000000e-01
  %2544 = fmul fast float %2543, %2474
  %2545 = call float @dx.op.dot3.f32(i32 55, float %2396, float %2397, float %2398, float %2518, float %2519, float %2520)  ; Dot3(ax,ay,az,bx,by,bz)
  %2546 = call float @dx.op.unary.f32(i32 7, float %2545)  ; Saturate(value)
  %2547 = fmul fast float %2546, %2500
  %2548 = fadd fast float %2544, %2547
  %2549 = fsub fast float 5.000000e-01, %2542
  %2550 = fmul fast float %2549, %2379
  %2551 = fmul fast float %2549, %2380
  %2552 = fmul fast float %2549, %2381
  %2553 = fadd fast float %2548, %2550
  %2554 = fmul fast float %2553, %2470
  %2555 = fadd fast float %2548, %2551
  %2556 = fmul fast float %2555, %2471
  %2557 = fadd fast float %2548, %2552
  %2558 = fmul fast float %2557, %2472
  %2559 = call float @dx.op.dot3.f32(i32 55, float %2470, float %2471, float %2472, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2560

; <label>:2560                                    ; preds = %2461, %2458
  %2561 = phi float [ %2559, %2461 ], [ 0.000000e+00, %2458 ]
  %2562 = phi float [ %2554, %2461 ], [ 0.000000e+00, %2458 ]
  %2563 = phi float [ %2556, %2461 ], [ 0.000000e+00, %2458 ]
  %2564 = phi float [ %2558, %2461 ], [ 0.000000e+00, %2458 ]
  %2565 = phi float [ %2535, %2461 ], [ 0.000000e+00, %2458 ]
  %2566 = phi float [ %2537, %2461 ], [ 0.000000e+00, %2458 ]
  %2567 = phi float [ %2539, %2461 ], [ 0.000000e+00, %2458 ]
  %2568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2569 = extractvalue %dx.types.CBufRet.f32 %2568, 0
  %2570 = fcmp fast ogt float %2569, 0.000000e+00
  %2571 = and i1 %2460, %2570
  br i1 %2571, label %2572, label %2776, !dx.controlflow.hints !108

; <label>:2572                                    ; preds = %2560
  %2573 = extractvalue %dx.types.CBufRet.f32 %2415, 2
  %2574 = fadd fast float %2573, %148
  %2575 = fmul fast float %2382, 3.200000e+01
  %2576 = fmul fast float %2383, 3.200000e+01
  %2577 = fadd fast float %2418, %2575
  %2578 = fadd fast float %2419, %2576
  %2579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2580 = extractvalue %dx.types.CBufRet.f32 %2579, 0
  %2581 = extractvalue %dx.types.CBufRet.f32 %2579, 1
  %2582 = fsub fast float %2577, %2580
  %2583 = fsub fast float %2578, %2581
  %2584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2585 = extractvalue %dx.types.CBufRet.f32 %2584, 0
  %2586 = extractvalue %dx.types.CBufRet.f32 %2584, 1
  %2587 = fmul fast float %2582, %2585
  %2588 = fmul fast float %2583, %2586
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 0
  %2591 = extractvalue %dx.types.CBufRet.f32 %2589, 1
  %2592 = fsub fast float %2418, %2590
  %2593 = fsub fast float %2419, %2591
  %2594 = fmul fast float %2592, %2592
  %2595 = fmul fast float %2593, %2593
  %2596 = fadd fast float %2594, %2595
  %2597 = call float @dx.op.unary.f32(i32 24, float %2596)  ; Sqrt(value)
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 0
  %2600 = extractvalue %dx.types.CBufRet.f32 %2598, 1
  %2601 = fsub fast float %2597, %2599
  %2602 = fdiv fast float %2601, %2600
  %2603 = call float @dx.op.unary.f32(i32 7, float %2602)  ; Saturate(value)
  %2604 = fmul fast float %2603, 2.000000e+00
  %2605 = fsub fast float 3.000000e+00, %2604
  %2606 = fmul fast float %2603, %2603
  %2607 = fmul fast float %2606, %2605
  %2608 = fcmp fast oge float %2587, 0.000000e+00
  %2609 = fcmp fast ole float %2587, 1.000000e+00
  %2610 = and i1 %2609, %2608
  %2611 = fcmp fast oge float %2588, 0.000000e+00
  %2612 = and i1 %2611, %2610
  %2613 = fcmp fast ole float %2588, 1.000000e+00
  %2614 = and i1 %2613, %2612
  %2615 = fcmp fast ogt float %2607, 0.000000e+00
  %2616 = and i1 %2615, %2614
  br i1 %2616, label %2617, label %2740, !dx.controlflow.hints !109

; <label>:2617                                    ; preds = %2572
  %2618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2618, 2
  %2620 = extractvalue %dx.types.CBufRet.f32 %2618, 3
  %2621 = fmul fast float %2619, %2587
  %2622 = fmul fast float %2620, %2588
  %2623 = call float @dx.op.unary.f32(i32 27, float %2621)  ; Round_ni(value)
  %2624 = call float @dx.op.unary.f32(i32 27, float %2622)  ; Round_ni(value)
  %2625 = fptosi float %2623 to i32
  %2626 = fptosi float %2624 to i32
  %2627 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2625, i32 %2626, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = lshr i32 %2628, 16
  %2630 = icmp eq i32 %2629, 65535
  br i1 %2630, label %2740, label %2631

; <label>:2631                                    ; preds = %2617
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2634 = fmul fast float %2633, %2587
  %2635 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2636 = fadd fast float %2634, %2635
  %2637 = extractvalue %dx.types.CBufRet.f32 %2632, 2
  %2638 = fmul fast float %2637, %2588
  %2639 = extractvalue %dx.types.CBufRet.f32 %2632, 3
  %2640 = fadd fast float %2638, %2639
  %2641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2636, float %2640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 0
  %2643 = extractvalue %dx.types.ResRet.f32 %2641, 1
  %2644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2645 = extractvalue %dx.types.CBufRet.f32 %2644, 1
  %2646 = extractvalue %dx.types.CBufRet.f32 %2644, 0
  %2647 = fsub fast float %2645, %2646
  %2648 = fmul fast float %2647, %2642
  %2649 = fadd fast float %2648, %2646
  %2650 = extractvalue %dx.types.CBufRet.f32 %2644, 3
  %2651 = extractvalue %dx.types.CBufRet.f32 %2644, 2
  %2652 = fsub fast float %2650, %2651
  %2653 = fmul fast float %2652, %2643
  %2654 = fadd fast float %2653, %2651
  %2655 = fsub fast float %2574, %2649
  %2656 = fsub fast float %2654, %2649
  %2657 = fdiv fast float %2655, %2656
  %2658 = call float @dx.op.unary.f32(i32 7, float %2657)  ; Saturate(value)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2568, 1
  %2660 = extractvalue %dx.types.CBufRet.f32 %2618, 0
  %2661 = extractvalue %dx.types.CBufRet.f32 %2618, 1
  %2662 = fmul fast float %2660, %2587
  %2663 = fmul fast float %2661, %2588
  %2664 = fmul fast float %2662, 1.250000e-01
  %2665 = fmul fast float %2663, 1.250000e-01
  %2666 = call float @dx.op.unary.f32(i32 27, float %2664)  ; Round_ni(value)
  %2667 = call float @dx.op.unary.f32(i32 27, float %2665)  ; Round_ni(value)
  %2668 = fmul fast float %2666, 8.000000e+00
  %2669 = fmul fast float %2667, 8.000000e+00
  %2670 = fsub fast float %2662, %2668
  %2671 = fsub fast float %2663, %2669
  %2672 = fadd fast float %2670, 5.000000e-01
  %2673 = fadd fast float %2671, 5.000000e-01
  %2674 = and i32 %2629, 255
  %2675 = lshr i32 %2628, 24
  %2676 = mul nuw nsw i32 %2674, 9
  %2677 = uitofp i32 %2676 to float
  %2678 = mul nuw nsw i32 %2675, 9
  %2679 = uitofp i32 %2678 to float
  %2680 = fadd fast float %2672, %2677
  %2681 = fadd fast float %2673, %2679
  %2682 = fdiv fast float %2680, %2569
  %2683 = fdiv fast float %2681, %2659
  %2684 = fmul fast float %2658, 4.375000e-01
  %2685 = fadd fast float %2684, 3.125000e-02
  %2686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2682, float %2683, float %2685, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2687 = extractvalue %dx.types.ResRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.ResRet.f32 %2686, 1
  %2689 = extractvalue %dx.types.ResRet.f32 %2686, 2
  %2690 = fadd fast float %2684, 5.312500e-01
  %2691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2682, float %2683, float %2690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2692 = extractvalue %dx.types.ResRet.f32 %2691, 0
  %2693 = extractvalue %dx.types.ResRet.f32 %2691, 1
  %2694 = extractvalue %dx.types.ResRet.f32 %2691, 2
  %2695 = fmul fast float %2692, 2.000000e+00
  %2696 = fmul fast float %2693, 2.000000e+00
  %2697 = fmul fast float %2694, 2.000000e+00
  %2698 = fadd fast float %2695, -1.000000e+00
  %2699 = fadd fast float %2696, -1.000000e+00
  %2700 = fadd fast float %2697, -1.000000e+00
  %2701 = fmul fast float %2698, %2698
  %2702 = fmul fast float %2699, %2699
  %2703 = fadd fast float %2701, %2702
  %2704 = fmul fast float %2700, %2700
  %2705 = fadd fast float %2703, %2704
  %2706 = call float @dx.op.unary.f32(i32 24, float %2705)  ; Sqrt(value)
  %2707 = fcmp fast ogt float %2706, 0.000000e+00
  br i1 %2707, label %2708, label %2712

; <label>:2708                                    ; preds = %2631
  %2709 = fdiv fast float %2698, %2706
  %2710 = fdiv fast float %2699, %2706
  %2711 = fdiv fast float %2700, %2706
  br label %2712

; <label>:2712                                    ; preds = %2708, %2631
  %2713 = phi float [ %2709, %2708 ], [ 0.000000e+00, %2631 ]
  %2714 = phi float [ %2710, %2708 ], [ 0.000000e+00, %2631 ]
  %2715 = phi float [ %2711, %2708 ], [ 0.000000e+00, %2631 ]
  %2716 = call float @dx.op.dot3.f32(i32 55, float %2713, float %2714, float %2715, float %2382, float %2383, float %2384)  ; Dot3(ax,ay,az,bx,by,bz)
  %2717 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2716)  ; FMax(a,b)
  %2718 = fmul fast float %2717, 0x400C5BF8A0000000
  %2719 = fmul fast float %2687, %2607
  %2720 = fmul fast float %2719, %2718
  %2721 = fmul fast float %2688, %2607
  %2722 = fmul fast float %2721, %2718
  %2723 = fmul fast float %2689, %2607
  %2724 = fmul fast float %2723, %2718
  %2725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2726 = extractvalue %dx.types.CBufRet.f32 %2725, 3
  %2727 = fmul fast float %2720, %2726
  %2728 = fmul fast float %2722, %2726
  %2729 = fmul fast float %2724, %2726
  %2730 = fcmp fast ogt float %2574, %2654
  br i1 %2730, label %2731, label %2740

; <label>:2731                                    ; preds = %2712
  %2732 = fmul fast float %2656, 0x3FC24924A0000000
  %2733 = fsub fast float %2574, %2654
  %2734 = fdiv fast float %2733, %2732
  %2735 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  %2736 = fsub fast float 1.000000e+00, %2735
  %2737 = fmul fast float %2736, %2727
  %2738 = fmul fast float %2736, %2728
  %2739 = fmul fast float %2736, %2729
  br label %2740

; <label>:2740                                    ; preds = %2731, %2712, %2617, %2572
  %2741 = phi float [ %2739, %2731 ], [ %2729, %2712 ], [ 0.000000e+00, %2617 ], [ 0.000000e+00, %2572 ]
  %2742 = phi float [ %2738, %2731 ], [ %2728, %2712 ], [ 0.000000e+00, %2617 ], [ 0.000000e+00, %2572 ]
  %2743 = phi float [ %2737, %2731 ], [ %2727, %2712 ], [ 0.000000e+00, %2617 ], [ 0.000000e+00, %2572 ]
  %2744 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2743)  ; FMax(a,b)
  %2745 = fmul fast float %2744, 0x3FD20DD760000000
  %2746 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2396, float %2397, float %2398)  ; Dot3(ax,ay,az,bx,by,bz)
  %2747 = fmul fast float %2746, 0x3FDF454380000000
  %2748 = fmul fast float %2746, %2746
  %2749 = fmul fast float %2748, 0x3FEE471020000000
  %2750 = fadd fast float %2749, 0xBFD42F6020000000
  %2751 = call float @dx.op.dot3.f32(i32 55, float %2744, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2747, float %2750)  ; Dot3(ax,ay,az,bx,by,bz)
  %2752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2742)  ; FMax(a,b)
  %2753 = fmul fast float %2752, 0x3FD20DD760000000
  %2754 = call float @dx.op.dot3.f32(i32 55, float %2752, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2747, float %2750)  ; Dot3(ax,ay,az,bx,by,bz)
  %2755 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2741)  ; FMax(a,b)
  %2756 = fmul fast float %2755, 0x3FD20DD760000000
  %2757 = call float @dx.op.dot3.f32(i32 55, float %2755, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2747, float %2750)  ; Dot3(ax,ay,az,bx,by,bz)
  %2758 = call float @dx.op.binary.f32(i32 35, float %2745, float 0.000000e+00)  ; FMax(a,b)
  %2759 = call float @dx.op.binary.f32(i32 35, float %2753, float 0.000000e+00)  ; FMax(a,b)
  %2760 = call float @dx.op.binary.f32(i32 35, float %2756, float 0.000000e+00)  ; FMax(a,b)
  %2761 = call float @dx.op.binary.f32(i32 35, float %2751, float 0.000000e+00)  ; FMax(a,b)
  %2762 = call float @dx.op.binary.f32(i32 35, float %2754, float 0.000000e+00)  ; FMax(a,b)
  %2763 = call float @dx.op.binary.f32(i32 35, float %2757, float 0.000000e+00)  ; FMax(a,b)
  %2764 = fmul fast float %2758, %2459
  %2765 = fmul fast float %2759, %2459
  %2766 = fmul fast float %2760, %2459
  %2767 = fadd fast float %2764, %2565
  %2768 = fadd fast float %2765, %2566
  %2769 = fadd fast float %2766, %2567
  %2770 = fmul fast float %2761, %2459
  %2771 = fmul fast float %2762, %2459
  %2772 = fmul fast float %2763, %2459
  %2773 = fadd fast float %2770, %2562
  %2774 = fadd fast float %2771, %2563
  %2775 = fadd fast float %2772, %2564
  br label %2776

; <label>:2776                                    ; preds = %2740, %2560
  %2777 = phi float [ %2773, %2740 ], [ %2562, %2560 ]
  %2778 = phi float [ %2774, %2740 ], [ %2563, %2560 ]
  %2779 = phi float [ %2775, %2740 ], [ %2564, %2560 ]
  %2780 = phi float [ %2764, %2740 ], [ 0.000000e+00, %2560 ]
  %2781 = phi float [ %2765, %2740 ], [ 0.000000e+00, %2560 ]
  %2782 = phi float [ %2766, %2740 ], [ 0.000000e+00, %2560 ]
  %2783 = phi float [ %2767, %2740 ], [ %2565, %2560 ]
  %2784 = phi float [ %2768, %2740 ], [ %2566, %2560 ]
  %2785 = phi float [ %2769, %2740 ], [ %2567, %2560 ]
  %2786 = fcmp fast olt float %2459, 1.000000e+00
  br i1 %2786, label %2787, label %3625, !dx.controlflow.hints !110

; <label>:2787                                    ; preds = %2776
  %2788 = extractvalue %dx.types.CBufRet.f32 %2415, 2
  %2789 = fadd fast float %2788, %148
  %2790 = fmul fast float %2382, 3.200000e+01
  %2791 = fmul fast float %2383, 3.200000e+01
  %2792 = fadd fast float %2418, %2790
  %2793 = fadd fast float %2419, %2791
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = fsub fast float %2792, %2795
  %2798 = fsub fast float %2793, %2796
  %2799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.f32 %2799, 0
  %2801 = extractvalue %dx.types.CBufRet.f32 %2799, 1
  %2802 = fmul fast float %2797, %2800
  %2803 = fmul fast float %2798, %2801
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = fmul fast float %2802, %2805
  %2807 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2808 = fadd fast float %2806, %2807
  %2809 = extractvalue %dx.types.CBufRet.f32 %2804, 2
  %2810 = fmul fast float %2809, %2803
  %2811 = extractvalue %dx.types.CBufRet.f32 %2804, 3
  %2812 = fadd fast float %2810, %2811
  %2813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2808, float %2812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2814 = extractvalue %dx.types.ResRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.ResRet.f32 %2813, 1
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 1
  %2818 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2819 = fsub fast float %2817, %2818
  %2820 = fmul fast float %2819, %2814
  %2821 = fadd fast float %2820, %2818
  %2822 = extractvalue %dx.types.CBufRet.f32 %2816, 3
  %2823 = extractvalue %dx.types.CBufRet.f32 %2816, 2
  %2824 = fsub fast float %2822, %2823
  %2825 = fmul fast float %2824, %2815
  %2826 = fadd fast float %2825, %2823
  %2827 = fsub fast float %2789, %2821
  %2828 = fsub fast float %2826, %2821
  %2829 = fdiv fast float %2827, %2828
  %2830 = call float @dx.op.unary.f32(i32 7, float %2829)  ; Saturate(value)
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2833 = fmul fast float %2832, %2830
  %2834 = extractvalue %dx.types.CBufRet.f32 %2831, 1
  %2835 = fadd fast float %2833, %2834
  %2836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2808, float %2812, float %2835, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.ResRet.f32 %2836, 2
  %2840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.CBufRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.CBufRet.f32 %2840, 2
  %2844 = fmul fast float %2841, %2837
  %2845 = fmul fast float %2842, %2838
  %2846 = fmul fast float %2843, %2839
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 0
  %2849 = extractvalue %dx.types.CBufRet.f32 %2847, 1
  %2850 = extractvalue %dx.types.CBufRet.f32 %2847, 2
  %2851 = fadd fast float %2844, %2848
  %2852 = fadd fast float %2845, %2849
  %2853 = fadd fast float %2846, %2850
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = fmul fast float %2855, %2802
  %2857 = extractvalue %dx.types.CBufRet.f32 %2854, 1
  %2858 = fadd fast float %2856, %2857
  %2859 = extractvalue %dx.types.CBufRet.f32 %2854, 2
  %2860 = fmul fast float %2859, %2803
  %2861 = extractvalue %dx.types.CBufRet.f32 %2854, 3
  %2862 = fadd fast float %2860, %2861
  %2863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2864 = extractvalue %dx.types.CBufRet.f32 %2863, 0
  %2865 = extractvalue %dx.types.CBufRet.f32 %2863, 1
  %2866 = extractvalue %dx.types.CBufRet.f32 %2863, 2
  %2867 = extractvalue %dx.types.CBufRet.f32 %2863, 3
  %2868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2869 = extractvalue %dx.types.CBufRet.f32 %2868, 0
  %2870 = extractvalue %dx.types.CBufRet.f32 %2868, 1
  %2871 = extractvalue %dx.types.CBufRet.f32 %2868, 2
  %2872 = extractvalue %dx.types.CBufRet.f32 %2868, 3
  %2873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2858, float %2862, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2874 = extractvalue %dx.types.ResRet.f32 %2873, 0
  %2875 = extractvalue %dx.types.ResRet.f32 %2873, 1
  %2876 = extractvalue %dx.types.ResRet.f32 %2873, 2
  %2877 = extractvalue %dx.types.ResRet.f32 %2873, 3
  %2878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2858, float %2862, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  %2880 = extractvalue %dx.types.ResRet.f32 %2878, 1
  %2881 = extractvalue %dx.types.ResRet.f32 %2878, 2
  %2882 = extractvalue %dx.types.ResRet.f32 %2878, 3
  %2883 = fmul fast float %2874, %2851
  %2884 = fmul fast float %2879, %2851
  %2885 = fmul fast float %2881, %2851
  %2886 = fmul fast float %2877, %2851
  %2887 = fadd fast float %2883, %2864
  %2888 = fadd fast float %2884, %2865
  %2889 = fadd fast float %2885, %2866
  %2890 = fadd fast float %2886, %2867
  %2891 = fmul fast float %2875, %2851
  %2892 = fmul fast float %2880, %2851
  %2893 = fadd fast float %2891, %2869
  %2894 = fadd fast float %2892, %2870
  %2895 = fmul fast float %2876, %2851
  %2896 = fmul fast float %2882, %2851
  %2897 = fadd fast float %2895, %2871
  %2898 = fadd fast float %2896, %2872
  %2899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2858, float %2862, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2900 = extractvalue %dx.types.ResRet.f32 %2899, 0
  %2901 = extractvalue %dx.types.ResRet.f32 %2899, 1
  %2902 = extractvalue %dx.types.ResRet.f32 %2899, 2
  %2903 = extractvalue %dx.types.ResRet.f32 %2899, 3
  %2904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2858, float %2862, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.ResRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.ResRet.f32 %2904, 2
  %2908 = extractvalue %dx.types.ResRet.f32 %2904, 3
  %2909 = fmul fast float %2900, %2852
  %2910 = fmul fast float %2905, %2852
  %2911 = fmul fast float %2907, %2852
  %2912 = fmul fast float %2903, %2852
  %2913 = fadd fast float %2887, %2909
  %2914 = fadd fast float %2888, %2910
  %2915 = fadd fast float %2889, %2911
  %2916 = fadd fast float %2890, %2912
  %2917 = fmul fast float %2901, %2852
  %2918 = fmul fast float %2906, %2852
  %2919 = fadd fast float %2893, %2917
  %2920 = fadd fast float %2894, %2918
  %2921 = fmul fast float %2902, %2852
  %2922 = fmul fast float %2908, %2852
  %2923 = fadd fast float %2897, %2921
  %2924 = fadd fast float %2898, %2922
  %2925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2858, float %2862, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2926 = extractvalue %dx.types.ResRet.f32 %2925, 0
  %2927 = extractvalue %dx.types.ResRet.f32 %2925, 1
  %2928 = extractvalue %dx.types.ResRet.f32 %2925, 2
  %2929 = extractvalue %dx.types.ResRet.f32 %2925, 3
  %2930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2858, float %2862, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2931 = extractvalue %dx.types.ResRet.f32 %2930, 0
  %2932 = extractvalue %dx.types.ResRet.f32 %2930, 1
  %2933 = extractvalue %dx.types.ResRet.f32 %2930, 2
  %2934 = extractvalue %dx.types.ResRet.f32 %2930, 3
  %2935 = fmul fast float %2926, %2853
  %2936 = fmul fast float %2931, %2853
  %2937 = fmul fast float %2933, %2853
  %2938 = fmul fast float %2929, %2853
  %2939 = fadd fast float %2913, %2935
  %2940 = fadd fast float %2914, %2936
  %2941 = fadd fast float %2915, %2937
  %2942 = fadd fast float %2916, %2938
  %2943 = fmul fast float %2927, %2853
  %2944 = fmul fast float %2932, %2853
  %2945 = fadd fast float %2919, %2943
  %2946 = fadd fast float %2920, %2944
  %2947 = fmul fast float %2928, %2853
  %2948 = fmul fast float %2934, %2853
  %2949 = fadd fast float %2923, %2947
  %2950 = fadd fast float %2924, %2948
  %2951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2952 = extractvalue %dx.types.CBufRet.f32 %2951, 0
  %2953 = fsub fast float %2418, %2952
  %2954 = fsub fast float %2795, %2418
  %2955 = call float @dx.op.binary.f32(i32 35, float %2954, float %2953)  ; FMax(a,b)
  %2956 = extractvalue %dx.types.CBufRet.f32 %2951, 1
  %2957 = fsub fast float %2419, %2956
  %2958 = fsub fast float %2796, %2419
  %2959 = call float @dx.op.binary.f32(i32 35, float %2958, float %2957)  ; FMax(a,b)
  %2960 = call float @dx.op.binary.f32(i32 35, float %2955, float %2959)  ; FMax(a,b)
  %2961 = extractvalue %dx.types.CBufRet.f32 %2799, 3
  %2962 = fmul fast float %2961, %2960
  %2963 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  %2964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2965 = extractvalue %dx.types.CBufRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.CBufRet.f32 %2964, 1
  %2967 = extractvalue %dx.types.CBufRet.f32 %2964, 2
  %2968 = extractvalue %dx.types.CBufRet.f32 %2964, 3
  %2969 = fsub fast float %2965, %2939
  %2970 = fsub fast float %2966, %2940
  %2971 = fsub fast float %2967, %2941
  %2972 = fsub fast float %2968, %2942
  %2973 = fmul fast float %2969, %2963
  %2974 = fmul fast float %2970, %2963
  %2975 = fmul fast float %2971, %2963
  %2976 = fmul fast float %2972, %2963
  %2977 = fadd fast float %2973, %2939
  %2978 = fadd fast float %2974, %2940
  %2979 = fadd fast float %2975, %2941
  %2980 = fadd fast float %2976, %2942
  %2981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2982 = extractvalue %dx.types.CBufRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.CBufRet.f32 %2981, 1
  %2984 = fsub fast float %2982, %2945
  %2985 = fsub fast float %2983, %2946
  %2986 = fmul fast float %2984, %2963
  %2987 = fmul fast float %2985, %2963
  %2988 = fadd fast float %2986, %2945
  %2989 = fadd fast float %2987, %2946
  %2990 = extractvalue %dx.types.CBufRet.f32 %2981, 2
  %2991 = extractvalue %dx.types.CBufRet.f32 %2981, 3
  %2992 = fsub fast float %2990, %2949
  %2993 = fsub fast float %2991, %2950
  %2994 = fmul fast float %2992, %2963
  %2995 = fmul fast float %2993, %2963
  %2996 = fadd fast float %2994, %2949
  %2997 = fadd fast float %2995, %2950
  %2998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2999 = extractvalue %dx.types.CBufRet.f32 %2998, 0
  %3000 = fmul fast float %2999, %2977
  %3001 = fmul fast float %2999, %2978
  %3002 = fmul fast float %2999, %2979
  %3003 = fmul fast float %2999, %2980
  %3004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3005 = extractvalue %dx.types.CBufRet.f32 %3004, 0
  %3006 = fmul fast float %3005, %2988
  %3007 = fmul fast float %3005, %2989
  %3008 = fadd fast float %3006, %3000
  %3009 = fadd fast float %3007, %3002
  %3010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3011 = extractvalue %dx.types.CBufRet.f32 %3010, 0
  %3012 = fmul fast float %3011, %2996
  %3013 = fmul fast float %3011, %2997
  %3014 = fadd fast float %3008, %3012
  %3015 = fadd fast float %3009, %3013
  %3016 = extractvalue %dx.types.CBufRet.f32 %2998, 1
  %3017 = fmul fast float %3016, %2977
  %3018 = fmul fast float %3016, %2978
  %3019 = fmul fast float %3016, %2979
  %3020 = fmul fast float %3016, %2980
  %3021 = extractvalue %dx.types.CBufRet.f32 %3004, 1
  %3022 = fmul fast float %3021, %2988
  %3023 = fmul fast float %3021, %2989
  %3024 = fadd fast float %3022, %3017
  %3025 = fadd fast float %3023, %3019
  %3026 = extractvalue %dx.types.CBufRet.f32 %3010, 1
  %3027 = fmul fast float %3026, %2996
  %3028 = fmul fast float %3026, %2997
  %3029 = fadd fast float %3024, %3027
  %3030 = fadd fast float %3025, %3028
  %3031 = extractvalue %dx.types.CBufRet.f32 %2998, 2
  %3032 = fmul fast float %3031, %2977
  %3033 = fmul fast float %3031, %2978
  %3034 = fmul fast float %3031, %2979
  %3035 = fmul fast float %3031, %2980
  %3036 = extractvalue %dx.types.CBufRet.f32 %3004, 2
  %3037 = fmul fast float %3036, %2988
  %3038 = fmul fast float %3036, %2989
  %3039 = fadd fast float %3037, %3032
  %3040 = fadd fast float %3038, %3034
  %3041 = extractvalue %dx.types.CBufRet.f32 %3010, 2
  %3042 = fmul fast float %3041, %2996
  %3043 = fmul fast float %3041, %2997
  %3044 = fadd fast float %3039, %3042
  %3045 = fadd fast float %3040, %3043
  %3046 = fmul fast float %3033, %3033
  %3047 = fmul fast float %3045, %3045
  %3048 = fmul fast float %3035, %3035
  %3049 = fadd fast float %3048, %3046
  %3050 = fadd fast float %3049, %3047
  %3051 = call float @dx.op.unary.f32(i32 24, float %3050)  ; Sqrt(value)
  %3052 = fcmp fast ugt float %3051, 0.000000e+00
  br i1 %3052, label %3053, label %3068

; <label>:3053                                    ; preds = %2787
  %3054 = fsub fast float -0.000000e+00, %3035
  %3055 = fdiv fast float %3054, %3051
  %3056 = fsub fast float -0.000000e+00, %3033
  %3057 = fdiv fast float %3056, %3051
  %3058 = fdiv fast float %3045, %3051
  %3059 = fmul fast float %3044, 0x3FE279A760000000
  %3060 = fmul fast float %3057, %3033
  %3061 = fmul fast float %3058, %3045
  %3062 = fmul fast float %3055, %3035
  %3063 = fadd fast float %3060, %3062
  %3064 = fsub fast float %3063, %3061
  %3065 = call float @dx.op.unary.f32(i32 6, float %3064)  ; FAbs(value)
  %3066 = fadd fast float %3065, 0x3DDB7CDFE0000000
  %3067 = fdiv fast float %3059, %3066
  br label %3068

; <label>:3068                                    ; preds = %3053, %2787
  %3069 = phi float [ %3067, %3053 ], [ 1.000000e+00, %2787 ]
  %3070 = fmul fast float %3018, %3018
  %3071 = fmul fast float %3030, %3030
  %3072 = fmul fast float %3020, %3020
  %3073 = fadd fast float %3072, %3070
  %3074 = fadd fast float %3073, %3071
  %3075 = call float @dx.op.unary.f32(i32 24, float %3074)  ; Sqrt(value)
  %3076 = fcmp fast ugt float %3075, 0.000000e+00
  br i1 %3076, label %3077, label %3092

; <label>:3077                                    ; preds = %3068
  %3078 = fsub fast float -0.000000e+00, %3020
  %3079 = fdiv fast float %3078, %3075
  %3080 = fsub fast float -0.000000e+00, %3018
  %3081 = fdiv fast float %3080, %3075
  %3082 = fdiv fast float %3030, %3075
  %3083 = fmul fast float %3029, 0x3FE279A760000000
  %3084 = fmul fast float %3081, %3018
  %3085 = fmul fast float %3082, %3030
  %3086 = fmul fast float %3079, %3020
  %3087 = fadd fast float %3084, %3086
  %3088 = fsub fast float %3087, %3085
  %3089 = call float @dx.op.unary.f32(i32 6, float %3088)  ; FAbs(value)
  %3090 = fadd fast float %3089, 0x3DDB7CDFE0000000
  %3091 = fdiv fast float %3083, %3090
  br label %3092

; <label>:3092                                    ; preds = %3077, %3068
  %3093 = phi float [ %3091, %3077 ], [ 1.000000e+00, %3068 ]
  %3094 = call float @dx.op.binary.f32(i32 36, float %3093, float %3069)  ; FMin(a,b)
  %3095 = fmul fast float %3001, %3001
  %3096 = fmul fast float %3015, %3015
  %3097 = fmul fast float %3003, %3003
  %3098 = fadd fast float %3097, %3095
  %3099 = fadd fast float %3098, %3096
  %3100 = call float @dx.op.unary.f32(i32 24, float %3099)  ; Sqrt(value)
  %3101 = fcmp fast ugt float %3100, 0.000000e+00
  br i1 %3101, label %3102, label %3117

; <label>:3102                                    ; preds = %3092
  %3103 = fsub fast float -0.000000e+00, %3003
  %3104 = fdiv fast float %3103, %3100
  %3105 = fsub fast float -0.000000e+00, %3001
  %3106 = fdiv fast float %3105, %3100
  %3107 = fdiv fast float %3015, %3100
  %3108 = fmul fast float %3014, 0x3FE279A760000000
  %3109 = fmul fast float %3106, %3001
  %3110 = fmul fast float %3107, %3015
  %3111 = fmul fast float %3104, %3003
  %3112 = fadd fast float %3109, %3111
  %3113 = fsub fast float %3112, %3110
  %3114 = call float @dx.op.unary.f32(i32 6, float %3113)  ; FAbs(value)
  %3115 = fadd fast float %3114, 0x3DDB7CDFE0000000
  %3116 = fdiv fast float %3108, %3115
  br label %3117

; <label>:3117                                    ; preds = %3102, %3092
  %3118 = phi float [ %3116, %3102 ], [ 1.000000e+00, %3092 ]
  %3119 = call float @dx.op.binary.f32(i32 36, float %3118, float %3094)  ; FMin(a,b)
  %3120 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3121 = fcmp fast olt float %3120, 1.000000e+00
  br i1 %3121, label %3122, label %3132

; <label>:3122                                    ; preds = %3117
  %3123 = fmul fast float %3120, %3001
  %3124 = fmul fast float %3120, %3015
  %3125 = fmul fast float %3120, %3003
  %3126 = fmul fast float %3120, %3018
  %3127 = fmul fast float %3120, %3030
  %3128 = fmul fast float %3120, %3020
  %3129 = fmul fast float %3120, %3033
  %3130 = fmul fast float %3120, %3045
  %3131 = fmul fast float %3120, %3035
  br label %3132

; <label>:3132                                    ; preds = %3122, %3117
  %3133 = phi float [ %3129, %3122 ], [ %3033, %3117 ]
  %3134 = phi float [ %3130, %3122 ], [ %3045, %3117 ]
  %3135 = phi float [ %3131, %3122 ], [ %3035, %3117 ]
  %3136 = phi float [ %3126, %3122 ], [ %3018, %3117 ]
  %3137 = phi float [ %3127, %3122 ], [ %3030, %3117 ]
  %3138 = phi float [ %3128, %3122 ], [ %3020, %3117 ]
  %3139 = phi float [ %3123, %3122 ], [ %3001, %3117 ]
  %3140 = phi float [ %3124, %3122 ], [ %3015, %3117 ]
  %3141 = phi float [ %3125, %3122 ], [ %3003, %3117 ]
  %3142 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3014)  ; FMax(a,b)
  %3143 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3029)  ; FMax(a,b)
  %3144 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3044)  ; FMax(a,b)
  %3145 = fcmp fast oge float %2802, 0.000000e+00
  %3146 = and i1 %3145, %2570
  %3147 = fcmp fast ole float %2802, 1.000000e+00
  %3148 = and i1 %3147, %3146
  %3149 = fcmp fast oge float %2803, 0.000000e+00
  %3150 = and i1 %3149, %3148
  %3151 = fcmp fast ole float %2803, 1.000000e+00
  %3152 = and i1 %3151, %3150
  br i1 %3152, label %3153, label %3298, !dx.controlflow.hints !111

; <label>:3153                                    ; preds = %3132
  %3154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3155 = extractvalue %dx.types.CBufRet.f32 %3154, 2
  %3156 = extractvalue %dx.types.CBufRet.f32 %3154, 3
  %3157 = fmul fast float %3155, %2802
  %3158 = fmul fast float %3156, %2803
  %3159 = call float @dx.op.unary.f32(i32 27, float %3157)  ; Round_ni(value)
  %3160 = call float @dx.op.unary.f32(i32 27, float %3158)  ; Round_ni(value)
  %3161 = fptosi float %3159 to i32
  %3162 = fptosi float %3160 to i32
  %3163 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %3161, i32 %3162, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = and i32 %3164, 65535
  %3166 = lshr i32 %3164, 16
  %3167 = icmp eq i32 %3165, 65535
  br i1 %3167, label %3204, label %3168

; <label>:3168                                    ; preds = %3153
  %3169 = extractvalue %dx.types.CBufRet.f32 %2568, 1
  %3170 = extractvalue %dx.types.CBufRet.f32 %3154, 0
  %3171 = extractvalue %dx.types.CBufRet.f32 %3154, 1
  %3172 = fmul fast float %3170, %2802
  %3173 = fmul fast float %3171, %2803
  %3174 = fmul fast float %3172, 1.250000e-01
  %3175 = fmul fast float %3173, 1.250000e-01
  %3176 = call float @dx.op.unary.f32(i32 27, float %3174)  ; Round_ni(value)
  %3177 = call float @dx.op.unary.f32(i32 27, float %3175)  ; Round_ni(value)
  %3178 = fmul fast float %3176, 8.000000e+00
  %3179 = fmul fast float %3177, 8.000000e+00
  %3180 = and i32 %3164, 255
  %3181 = lshr i32 %3164, 8
  %3182 = and i32 %3181, 255
  %3183 = mul nuw nsw i32 %3180, 9
  %3184 = uitofp i32 %3183 to float
  %3185 = mul nuw nsw i32 %3182, 9
  %3186 = uitofp i32 %3185 to float
  %3187 = fadd fast float %3184, 5.000000e-01
  %3188 = fadd fast float %3187, %3172
  %3189 = fsub fast float %3188, %3178
  %3190 = fadd fast float %3186, 5.000000e-01
  %3191 = fadd fast float %3190, %3173
  %3192 = fsub fast float %3191, %3179
  %3193 = fdiv fast float %3189, %2569
  %3194 = fdiv fast float %3192, %3169
  %3195 = fmul fast float %2830, 4.375000e-01
  %3196 = fadd fast float %3195, 3.125000e-02
  %3197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3193, float %3194, float %3196, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3198 = extractvalue %dx.types.ResRet.f32 %3197, 0
  %3199 = extractvalue %dx.types.ResRet.f32 %3197, 1
  %3200 = extractvalue %dx.types.ResRet.f32 %3197, 2
  %3201 = fadd fast float %3198, %3142
  %3202 = fadd fast float %3199, %3143
  %3203 = fadd fast float %3200, %3144
  br label %3204

; <label>:3204                                    ; preds = %3168, %3153
  %3205 = phi float [ %3203, %3168 ], [ %3144, %3153 ]
  %3206 = phi float [ %3202, %3168 ], [ %3143, %3153 ]
  %3207 = phi float [ %3201, %3168 ], [ %3142, %3153 ]
  %3208 = icmp eq i32 %3166, 65535
  br i1 %3208, label %3298, label %3209

; <label>:3209                                    ; preds = %3204
  %3210 = extractvalue %dx.types.CBufRet.f32 %2568, 1
  %3211 = extractvalue %dx.types.CBufRet.f32 %3154, 0
  %3212 = extractvalue %dx.types.CBufRet.f32 %3154, 1
  %3213 = fmul fast float %3211, %2802
  %3214 = fmul fast float %3212, %2803
  %3215 = fmul fast float %3213, 1.250000e-01
  %3216 = fmul fast float %3214, 1.250000e-01
  %3217 = call float @dx.op.unary.f32(i32 27, float %3215)  ; Round_ni(value)
  %3218 = call float @dx.op.unary.f32(i32 27, float %3216)  ; Round_ni(value)
  %3219 = fmul fast float %3217, 8.000000e+00
  %3220 = fmul fast float %3218, 8.000000e+00
  %3221 = fsub fast float %3213, %3219
  %3222 = fsub fast float %3214, %3220
  %3223 = fadd fast float %3221, 5.000000e-01
  %3224 = fadd fast float %3222, 5.000000e-01
  %3225 = and i32 %3166, 255
  %3226 = lshr i32 %3164, 24
  %3227 = mul nuw nsw i32 %3225, 9
  %3228 = uitofp i32 %3227 to float
  %3229 = mul nuw nsw i32 %3226, 9
  %3230 = uitofp i32 %3229 to float
  %3231 = fadd fast float %3223, %3228
  %3232 = fadd fast float %3224, %3230
  %3233 = fdiv fast float %3231, %2569
  %3234 = fdiv fast float %3232, %3210
  %3235 = fmul fast float %2830, 4.375000e-01
  %3236 = fadd fast float %3235, 3.125000e-02
  %3237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3233, float %3234, float %3236, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3238 = extractvalue %dx.types.ResRet.f32 %3237, 0
  %3239 = extractvalue %dx.types.ResRet.f32 %3237, 1
  %3240 = extractvalue %dx.types.ResRet.f32 %3237, 2
  %3241 = fadd fast float %3235, 5.312500e-01
  %3242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3233, float %3234, float %3241, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3243 = extractvalue %dx.types.ResRet.f32 %3242, 0
  %3244 = extractvalue %dx.types.ResRet.f32 %3242, 1
  %3245 = extractvalue %dx.types.ResRet.f32 %3242, 2
  %3246 = fmul fast float %3243, 2.000000e+00
  %3247 = fmul fast float %3244, 2.000000e+00
  %3248 = fmul fast float %3245, 2.000000e+00
  %3249 = fadd fast float %3246, -1.000000e+00
  %3250 = fadd fast float %3247, -1.000000e+00
  %3251 = fadd fast float %3248, -1.000000e+00
  %3252 = fmul fast float %3249, %3249
  %3253 = fmul fast float %3250, %3250
  %3254 = fadd fast float %3252, %3253
  %3255 = fmul fast float %3251, %3251
  %3256 = fadd fast float %3254, %3255
  %3257 = call float @dx.op.unary.f32(i32 24, float %3256)  ; Sqrt(value)
  %3258 = fcmp fast ogt float %3257, 0.000000e+00
  br i1 %3258, label %3259, label %3263

; <label>:3259                                    ; preds = %3209
  %3260 = fdiv fast float %3249, %3257
  %3261 = fdiv fast float %3250, %3257
  %3262 = fdiv fast float %3251, %3257
  br label %3263

; <label>:3263                                    ; preds = %3259, %3209
  %3264 = phi float [ %3260, %3259 ], [ 0.000000e+00, %3209 ]
  %3265 = phi float [ %3261, %3259 ], [ 0.000000e+00, %3209 ]
  %3266 = phi float [ %3262, %3259 ], [ 0.000000e+00, %3209 ]
  %3267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3268 = extractvalue %dx.types.CBufRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.CBufRet.f32 %3267, 1
  %3270 = fsub fast float %2418, %3268
  %3271 = fsub fast float %2419, %3269
  %3272 = fmul fast float %3270, %3270
  %3273 = fmul fast float %3271, %3271
  %3274 = fadd fast float %3272, %3273
  %3275 = call float @dx.op.unary.f32(i32 24, float %3274)  ; Sqrt(value)
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = extractvalue %dx.types.CBufRet.f32 %3276, 1
  %3279 = fsub fast float %3275, %3277
  %3280 = fdiv fast float %3279, %3278
  %3281 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  %3282 = fmul fast float %3281, 2.000000e+00
  %3283 = fsub fast float 3.000000e+00, %3282
  %3284 = fmul fast float %3281, %3281
  %3285 = fmul fast float %3284, %3283
  %3286 = call float @dx.op.dot3.f32(i32 55, float %3264, float %3265, float %3266, float %2382, float %2383, float %2384)  ; Dot3(ax,ay,az,bx,by,bz)
  %3287 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3286)  ; FMax(a,b)
  %3288 = fmul fast float %3287, 0x400C5BF8A0000000
  %3289 = fmul fast float %3285, %3238
  %3290 = fmul fast float %3289, %3288
  %3291 = fadd fast float %3290, %3207
  %3292 = fmul fast float %3285, %3239
  %3293 = fmul fast float %3292, %3288
  %3294 = fadd fast float %3293, %3206
  %3295 = fmul fast float %3285, %3240
  %3296 = fmul fast float %3295, %3288
  %3297 = fadd fast float %3296, %3205
  br label %3298

; <label>:3298                                    ; preds = %3263, %3204, %3132
  %3299 = phi float [ %3297, %3263 ], [ %3205, %3204 ], [ %3144, %3132 ]
  %3300 = phi float [ %3294, %3263 ], [ %3206, %3204 ], [ %3143, %3132 ]
  %3301 = phi float [ %3291, %3263 ], [ %3207, %3204 ], [ %3142, %3132 ]
  %3302 = fcmp fast ogt float %2789, %2826
  %3303 = and i1 %3145, %3302
  %3304 = and i1 %3147, %3303
  %3305 = and i1 %3149, %3304
  %3306 = and i1 %3151, %3305
  br i1 %3306, label %3307, label %3364, !dx.controlflow.hints !112

; <label>:3307                                    ; preds = %3298
  %3308 = fmul fast float %2828, 0x3FC24924A0000000
  %3309 = fsub fast float %2789, %2826
  %3310 = fdiv fast float %3309, %3308
  %3311 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  %3312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.f32 %3312, 0
  %3314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3315 = extractvalue %dx.types.CBufRet.f32 %3314, 0
  %3316 = extractvalue %dx.types.CBufRet.f32 %3314, 1
  %3317 = extractvalue %dx.types.CBufRet.f32 %3314, 2
  %3318 = fsub fast float %3313, %3301
  %3319 = fsub fast float %3315, %3139
  %3320 = fsub fast float %3316, %3140
  %3321 = fsub fast float %3317, %3141
  %3322 = fmul fast float %3318, %3311
  %3323 = fmul fast float %3319, %3311
  %3324 = fmul fast float %3320, %3311
  %3325 = fmul fast float %3321, %3311
  %3326 = fadd fast float %3322, %3301
  %3327 = fadd fast float %3323, %3139
  %3328 = fadd fast float %3324, %3140
  %3329 = fadd fast float %3325, %3141
  %3330 = extractvalue %dx.types.CBufRet.f32 %3312, 1
  %3331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3332 = extractvalue %dx.types.CBufRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.CBufRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.CBufRet.f32 %3331, 2
  %3335 = fsub fast float %3330, %3300
  %3336 = fsub fast float %3332, %3136
  %3337 = fsub fast float %3333, %3137
  %3338 = fsub fast float %3334, %3138
  %3339 = fmul fast float %3335, %3311
  %3340 = fmul fast float %3336, %3311
  %3341 = fmul fast float %3337, %3311
  %3342 = fmul fast float %3338, %3311
  %3343 = fadd fast float %3339, %3300
  %3344 = fadd fast float %3340, %3136
  %3345 = fadd fast float %3341, %3137
  %3346 = fadd fast float %3342, %3138
  %3347 = extractvalue %dx.types.CBufRet.f32 %3312, 2
  %3348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3349 = extractvalue %dx.types.CBufRet.f32 %3348, 0
  %3350 = extractvalue %dx.types.CBufRet.f32 %3348, 1
  %3351 = extractvalue %dx.types.CBufRet.f32 %3348, 2
  %3352 = fsub fast float %3347, %3299
  %3353 = fsub fast float %3349, %3133
  %3354 = fsub fast float %3350, %3134
  %3355 = fsub fast float %3351, %3135
  %3356 = fmul fast float %3352, %3311
  %3357 = fmul fast float %3353, %3311
  %3358 = fmul fast float %3354, %3311
  %3359 = fmul fast float %3355, %3311
  %3360 = fadd fast float %3356, %3299
  %3361 = fadd fast float %3357, %3133
  %3362 = fadd fast float %3358, %3134
  %3363 = fadd fast float %3359, %3135
  br label %3364

; <label>:3364                                    ; preds = %3307, %3298
  %3365 = phi float [ %3360, %3307 ], [ %3299, %3298 ]
  %3366 = phi float [ %3361, %3307 ], [ %3133, %3298 ]
  %3367 = phi float [ %3362, %3307 ], [ %3134, %3298 ]
  %3368 = phi float [ %3363, %3307 ], [ %3135, %3298 ]
  %3369 = phi float [ %3343, %3307 ], [ %3300, %3298 ]
  %3370 = phi float [ %3344, %3307 ], [ %3136, %3298 ]
  %3371 = phi float [ %3345, %3307 ], [ %3137, %3298 ]
  %3372 = phi float [ %3346, %3307 ], [ %3138, %3298 ]
  %3373 = phi float [ %3326, %3307 ], [ %3301, %3298 ]
  %3374 = phi float [ %3327, %3307 ], [ %3139, %3298 ]
  %3375 = phi float [ %3328, %3307 ], [ %3140, %3298 ]
  %3376 = phi float [ %3329, %3307 ], [ %3141, %3298 ]
  %3377 = extractvalue %dx.types.CBufRet.f32 %2951, 3
  %3378 = fmul fast float %3377, %3373
  %3379 = fmul fast float %3377, %3369
  %3380 = fmul fast float %3377, %3365
  %3381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3382 = extractvalue %dx.types.CBufRet.f32 %3381, 3
  %3383 = fmul fast float %3378, %3382
  %3384 = fmul fast float %3379, %3382
  %3385 = fmul fast float %3380, %3382
  %3386 = call float @dx.op.dot3.f32(i32 55, float %3383, float %3384, float %3385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3387 = fmul fast float %3386, 0x3FD20DD760000000
  %3388 = fmul fast float %3374, 1.500000e+00
  %3389 = fmul fast float %3388, %3377
  %3390 = fmul fast float %3389, %3382
  %3391 = fmul fast float %3375, 1.500000e+00
  %3392 = fmul fast float %3391, %3377
  %3393 = fmul fast float %3392, %3382
  %3394 = fmul fast float %3376, 1.500000e+00
  %3395 = fmul fast float %3394, %3377
  %3396 = fmul fast float %3395, %3382
  %3397 = fmul fast float %3370, 1.500000e+00
  %3398 = fmul fast float %3397, %3377
  %3399 = fmul fast float %3398, %3382
  %3400 = fmul fast float %3371, 1.500000e+00
  %3401 = fmul fast float %3400, %3377
  %3402 = fmul fast float %3401, %3382
  %3403 = fmul fast float %3372, 1.500000e+00
  %3404 = fmul fast float %3403, %3377
  %3405 = fmul fast float %3404, %3382
  %3406 = fmul fast float %3366, 1.500000e+00
  %3407 = fmul fast float %3406, %3377
  %3408 = fmul fast float %3407, %3382
  %3409 = fmul fast float %3367, 1.500000e+00
  %3410 = fmul fast float %3409, %3377
  %3411 = fmul fast float %3410, %3382
  %3412 = fmul fast float %3368, 1.500000e+00
  %3413 = fmul fast float %3412, %3377
  %3414 = fmul fast float %3413, %3382
  %3415 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3383)  ; FMax(a,b)
  %3416 = call float @dx.op.dot3.f32(i32 55, float %3390, float %3393, float %3396, float %3390, float %3393, float %3396)  ; Dot3(ax,ay,az,bx,by,bz)
  %3417 = fcmp fast oeq float %3416, 0.000000e+00
  %3418 = fcmp fast oeq float %3415, 0.000000e+00
  %3419 = or i1 %3418, %3417
  br i1 %3419, label %3449, label %3420

; <label>:3420                                    ; preds = %3364
  %3421 = fsub fast float -0.000000e+00, %3396
  %3422 = fsub fast float -0.000000e+00, %3390
  %3423 = call float @dx.op.unary.f32(i32 24, float %3416)  ; Sqrt(value)
  %3424 = fdiv fast float %3423, %3415
  %3425 = fcmp fast ogt float %3424, 0x3FFB6F8900000000
  %3426 = select i1 %3425, float 0x3FFB6F8900000000, float %3424
  %3427 = fmul fast float %3426, 0x3FE8A23460000000
  %3428 = call float @dx.op.unary.f32(i32 7, float %3427)  ; Saturate(value)
  %3429 = call float @dx.op.binary.f32(i32 35, float %3426, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3430 = fmul fast float %3428, %3415
  %3431 = fmul fast float %3429, 0x3FF279A740000000
  %3432 = fadd fast float %3431, -1.000000e+00
  %3433 = call float @dx.op.dot3.f32(i32 55, float %3421, float %3422, float %3393, float %3421, float %3422, float %3393)  ; Dot3(ax,ay,az,bx,by,bz)
  %3434 = call float @dx.op.unary.f32(i32 25, float %3433)  ; Rsqrt(value)
  %3435 = fmul fast float %3434, %3421
  %3436 = fmul fast float %3434, %3422
  %3437 = fmul fast float %3434, %3393
  %3438 = fmul fast float %3432, %3432
  %3439 = fsub fast float 1.000000e+00, %3438
  %3440 = fmul fast float %3429, 0x40005F8BE0000000
  %3441 = fsub fast float 0x400C5BF8A0000000, %3440
  %3442 = fdiv fast float %3430, %3441
  %3443 = fmul fast float %3442, 0x3FEE31C3C0000000
  %3444 = fmul fast float %3443, %3439
  %3445 = fmul fast float %3429, 0x3FDACB7480000000
  %3446 = fadd fast float %3445, 0xBFD7347680000000
  %3447 = fmul fast float %3446, %3442
  %3448 = fmul fast float %3447, %3439
  br label %3449

; <label>:3449                                    ; preds = %3420, %3364
  %3450 = phi float [ %3435, %3420 ], [ 0.000000e+00, %3364 ]
  %3451 = phi float [ %3436, %3420 ], [ 0.000000e+00, %3364 ]
  %3452 = phi float [ %3437, %3420 ], [ 0.000000e+00, %3364 ]
  %3453 = phi float [ %3444, %3420 ], [ 0.000000e+00, %3364 ]
  %3454 = phi float [ %3448, %3420 ], [ 0.000000e+00, %3364 ]
  %3455 = call float @dx.op.dot3.f32(i32 55, float %3450, float %3451, float %3452, float %2382, float %2383, float %2384)  ; Dot3(ax,ay,az,bx,by,bz)
  %3456 = fmul fast float %3455, 0x3FDF454380000000
  %3457 = fmul fast float %3455, %3455
  %3458 = fmul fast float %3457, 0x3FEE471020000000
  %3459 = fadd fast float %3458, 0xBFD42F6020000000
  %3460 = fmul fast float %3415, 0x3FD20DD760000000
  %3461 = fmul fast float %3459, %3454
  %3462 = fadd fast float %3461, %3460
  %3463 = fmul fast float %3456, %3453
  %3464 = fadd fast float %3462, %3463
  %3465 = fsub fast float %3462, %3463
  %3466 = call float @dx.op.dot3.f32(i32 55, float %3450, float %3451, float %3452, float %2396, float %2397, float %2398)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = fmul fast float %3466, 0x3FDF454380000000
  %3468 = fmul fast float %3466, %3466
  %3469 = fmul fast float %3468, 0x3FEE471020000000
  %3470 = fadd fast float %3469, 0xBFD42F6020000000
  %3471 = call float @dx.op.dot3.f32(i32 55, float %3415, float %3453, float %3454, float 0x3FD20DD760000000, float %3467, float %3470)  ; Dot3(ax,ay,az,bx,by,bz)
  %3472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3384)  ; FMax(a,b)
  %3473 = call float @dx.op.dot3.f32(i32 55, float %3399, float %3402, float %3405, float %3399, float %3402, float %3405)  ; Dot3(ax,ay,az,bx,by,bz)
  %3474 = fcmp fast oeq float %3473, 0.000000e+00
  %3475 = fcmp fast oeq float %3472, 0.000000e+00
  %3476 = or i1 %3475, %3474
  br i1 %3476, label %3506, label %3477

; <label>:3477                                    ; preds = %3449
  %3478 = fsub fast float -0.000000e+00, %3405
  %3479 = fsub fast float -0.000000e+00, %3399
  %3480 = call float @dx.op.unary.f32(i32 24, float %3473)  ; Sqrt(value)
  %3481 = fdiv fast float %3480, %3472
  %3482 = fcmp fast ogt float %3481, 0x3FFB6F8900000000
  %3483 = select i1 %3482, float 0x3FFB6F8900000000, float %3481
  %3484 = fmul fast float %3483, 0x3FE8A23460000000
  %3485 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3486 = call float @dx.op.binary.f32(i32 35, float %3483, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3487 = fmul fast float %3485, %3472
  %3488 = fmul fast float %3486, 0x3FF279A740000000
  %3489 = fadd fast float %3488, -1.000000e+00
  %3490 = call float @dx.op.dot3.f32(i32 55, float %3478, float %3479, float %3402, float %3478, float %3479, float %3402)  ; Dot3(ax,ay,az,bx,by,bz)
  %3491 = call float @dx.op.unary.f32(i32 25, float %3490)  ; Rsqrt(value)
  %3492 = fmul fast float %3491, %3478
  %3493 = fmul fast float %3491, %3479
  %3494 = fmul fast float %3491, %3402
  %3495 = fmul fast float %3489, %3489
  %3496 = fsub fast float 1.000000e+00, %3495
  %3497 = fmul fast float %3486, 0x40005F8BE0000000
  %3498 = fsub fast float 0x400C5BF8A0000000, %3497
  %3499 = fdiv fast float %3487, %3498
  %3500 = fmul fast float %3499, 0x3FEE31C3C0000000
  %3501 = fmul fast float %3500, %3496
  %3502 = fmul fast float %3486, 0x3FDACB7480000000
  %3503 = fadd fast float %3502, 0xBFD7347680000000
  %3504 = fmul fast float %3503, %3499
  %3505 = fmul fast float %3504, %3496
  br label %3506

; <label>:3506                                    ; preds = %3477, %3449
  %3507 = phi float [ %3492, %3477 ], [ 0.000000e+00, %3449 ]
  %3508 = phi float [ %3493, %3477 ], [ 0.000000e+00, %3449 ]
  %3509 = phi float [ %3494, %3477 ], [ 0.000000e+00, %3449 ]
  %3510 = phi float [ %3501, %3477 ], [ 0.000000e+00, %3449 ]
  %3511 = phi float [ %3505, %3477 ], [ 0.000000e+00, %3449 ]
  %3512 = call float @dx.op.dot3.f32(i32 55, float %3507, float %3508, float %3509, float %2382, float %2383, float %2384)  ; Dot3(ax,ay,az,bx,by,bz)
  %3513 = fmul fast float %3512, 0x3FDF454380000000
  %3514 = fmul fast float %3512, %3512
  %3515 = fmul fast float %3514, 0x3FEE471020000000
  %3516 = fadd fast float %3515, 0xBFD42F6020000000
  %3517 = fmul fast float %3472, 0x3FD20DD760000000
  %3518 = fmul fast float %3516, %3511
  %3519 = fadd fast float %3518, %3517
  %3520 = fmul fast float %3513, %3510
  %3521 = fadd fast float %3519, %3520
  %3522 = fsub fast float %3519, %3520
  %3523 = call float @dx.op.dot3.f32(i32 55, float %3507, float %3508, float %3509, float %2396, float %2397, float %2398)  ; Dot3(ax,ay,az,bx,by,bz)
  %3524 = fmul fast float %3523, 0x3FDF454380000000
  %3525 = fmul fast float %3523, %3523
  %3526 = fmul fast float %3525, 0x3FEE471020000000
  %3527 = fadd fast float %3526, 0xBFD42F6020000000
  %3528 = call float @dx.op.dot3.f32(i32 55, float %3472, float %3510, float %3511, float 0x3FD20DD760000000, float %3524, float %3527)  ; Dot3(ax,ay,az,bx,by,bz)
  %3529 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3385)  ; FMax(a,b)
  %3530 = call float @dx.op.dot3.f32(i32 55, float %3408, float %3411, float %3414, float %3408, float %3411, float %3414)  ; Dot3(ax,ay,az,bx,by,bz)
  %3531 = fcmp fast oeq float %3530, 0.000000e+00
  %3532 = fcmp fast oeq float %3529, 0.000000e+00
  %3533 = or i1 %3532, %3531
  br i1 %3533, label %3563, label %3534

; <label>:3534                                    ; preds = %3506
  %3535 = fsub fast float -0.000000e+00, %3414
  %3536 = fsub fast float -0.000000e+00, %3408
  %3537 = call float @dx.op.unary.f32(i32 24, float %3530)  ; Sqrt(value)
  %3538 = fdiv fast float %3537, %3529
  %3539 = fcmp fast ogt float %3538, 0x3FFB6F8900000000
  %3540 = select i1 %3539, float 0x3FFB6F8900000000, float %3538
  %3541 = fmul fast float %3540, 0x3FE8A23460000000
  %3542 = call float @dx.op.unary.f32(i32 7, float %3541)  ; Saturate(value)
  %3543 = call float @dx.op.binary.f32(i32 35, float %3540, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3544 = fmul fast float %3542, %3529
  %3545 = fmul fast float %3543, 0x3FF279A740000000
  %3546 = fadd fast float %3545, -1.000000e+00
  %3547 = call float @dx.op.dot3.f32(i32 55, float %3535, float %3536, float %3411, float %3535, float %3536, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %3548 = call float @dx.op.unary.f32(i32 25, float %3547)  ; Rsqrt(value)
  %3549 = fmul fast float %3548, %3535
  %3550 = fmul fast float %3548, %3536
  %3551 = fmul fast float %3548, %3411
  %3552 = fmul fast float %3546, %3546
  %3553 = fsub fast float 1.000000e+00, %3552
  %3554 = fmul fast float %3543, 0x40005F8BE0000000
  %3555 = fsub fast float 0x400C5BF8A0000000, %3554
  %3556 = fdiv fast float %3544, %3555
  %3557 = fmul fast float %3556, 0x3FEE31C3C0000000
  %3558 = fmul fast float %3557, %3553
  %3559 = fmul fast float %3543, 0x3FDACB7480000000
  %3560 = fadd fast float %3559, 0xBFD7347680000000
  %3561 = fmul fast float %3560, %3556
  %3562 = fmul fast float %3561, %3553
  br label %3563

; <label>:3563                                    ; preds = %3534, %3506
  %3564 = phi float [ %3549, %3534 ], [ 0.000000e+00, %3506 ]
  %3565 = phi float [ %3550, %3534 ], [ 0.000000e+00, %3506 ]
  %3566 = phi float [ %3551, %3534 ], [ 0.000000e+00, %3506 ]
  %3567 = phi float [ %3558, %3534 ], [ 0.000000e+00, %3506 ]
  %3568 = phi float [ %3562, %3534 ], [ 0.000000e+00, %3506 ]
  %3569 = call float @dx.op.dot3.f32(i32 55, float %3564, float %3565, float %3566, float %2382, float %2383, float %2384)  ; Dot3(ax,ay,az,bx,by,bz)
  %3570 = fmul fast float %3569, 0x3FDF454380000000
  %3571 = fmul fast float %3569, %3569
  %3572 = fmul fast float %3571, 0x3FEE471020000000
  %3573 = fadd fast float %3572, 0xBFD42F6020000000
  %3574 = fmul fast float %3529, 0x3FD20DD760000000
  %3575 = fmul fast float %3573, %3568
  %3576 = fadd fast float %3575, %3574
  %3577 = fmul fast float %3570, %3567
  %3578 = fadd fast float %3576, %3577
  %3579 = fsub fast float %3576, %3577
  %3580 = call float @dx.op.dot3.f32(i32 55, float %3564, float %3565, float %3566, float %2396, float %2397, float %2398)  ; Dot3(ax,ay,az,bx,by,bz)
  %3581 = fmul fast float %3580, 0x3FDF454380000000
  %3582 = fmul fast float %3580, %3580
  %3583 = fmul fast float %3582, 0x3FEE471020000000
  %3584 = fadd fast float %3583, 0xBFD42F6020000000
  %3585 = call float @dx.op.dot3.f32(i32 55, float %3529, float %3567, float %3568, float 0x3FD20DD760000000, float %3581, float %3584)  ; Dot3(ax,ay,az,bx,by,bz)
  %3586 = call float @dx.op.binary.f32(i32 35, float %3464, float 0.000000e+00)  ; FMax(a,b)
  %3587 = call float @dx.op.binary.f32(i32 35, float %3521, float 0.000000e+00)  ; FMax(a,b)
  %3588 = call float @dx.op.binary.f32(i32 35, float %3578, float 0.000000e+00)  ; FMax(a,b)
  %3589 = call float @dx.op.binary.f32(i32 35, float %3465, float 0.000000e+00)  ; FMax(a,b)
  %3590 = call float @dx.op.binary.f32(i32 35, float %3522, float 0.000000e+00)  ; FMax(a,b)
  %3591 = call float @dx.op.binary.f32(i32 35, float %3579, float 0.000000e+00)  ; FMax(a,b)
  %3592 = call float @dx.op.binary.f32(i32 35, float %3471, float 0.000000e+00)  ; FMax(a,b)
  %3593 = call float @dx.op.binary.f32(i32 35, float %3528, float 0.000000e+00)  ; FMax(a,b)
  %3594 = call float @dx.op.binary.f32(i32 35, float %3585, float 0.000000e+00)  ; FMax(a,b)
  %3595 = fsub fast float %2783, %3586
  %3596 = fsub fast float %2784, %3587
  %3597 = fsub fast float %2785, %3588
  %3598 = fmul fast float %3595, %2459
  %3599 = fmul fast float %3596, %2459
  %3600 = fmul fast float %3597, %2459
  %3601 = fadd fast float %3598, %3586
  %3602 = fadd fast float %3599, %3587
  %3603 = fadd fast float %3600, %3588
  %3604 = fsub fast float %2780, %3589
  %3605 = fsub fast float %2781, %3590
  %3606 = fsub fast float %2782, %3591
  %3607 = fmul fast float %3604, %2459
  %3608 = fmul fast float %3605, %2459
  %3609 = fmul fast float %3606, %2459
  %3610 = fadd fast float %3607, %3589
  %3611 = fadd fast float %3608, %3590
  %3612 = fadd fast float %3609, %3591
  %3613 = fsub fast float %2777, %3592
  %3614 = fsub fast float %2778, %3593
  %3615 = fsub fast float %2779, %3594
  %3616 = fmul fast float %3613, %2459
  %3617 = fmul fast float %3614, %2459
  %3618 = fmul fast float %3615, %2459
  %3619 = fadd fast float %3616, %3592
  %3620 = fadd fast float %3617, %3593
  %3621 = fadd fast float %3618, %3594
  %3622 = fsub fast float %2561, %3387
  %3623 = fmul fast float %3622, %2459
  %3624 = fadd fast float %3623, %3387
  br label %3625

; <label>:3625                                    ; preds = %3563, %2776
  %3626 = phi float [ %3624, %3563 ], [ %2561, %2776 ]
  %3627 = phi float [ %3619, %3563 ], [ %2777, %2776 ]
  %3628 = phi float [ %3620, %3563 ], [ %2778, %2776 ]
  %3629 = phi float [ %3621, %3563 ], [ %2779, %2776 ]
  %3630 = phi float [ %3610, %3563 ], [ %2780, %2776 ]
  %3631 = phi float [ %3611, %3563 ], [ %2781, %2776 ]
  %3632 = phi float [ %3612, %3563 ], [ %2782, %2776 ]
  %3633 = phi float [ %3601, %3563 ], [ %2783, %2776 ]
  %3634 = phi float [ %3602, %3563 ], [ %2784, %2776 ]
  %3635 = phi float [ %3603, %3563 ], [ %2785, %2776 ]
  %3636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3637 = extractvalue %dx.types.CBufRet.f32 %3636, 0
  %3638 = call float @dx.op.binary.f32(i32 36, float %2379, float %3637)  ; FMin(a,b)
  %3639 = fmul fast float %3638, %2400
  %3640 = fsub fast float 1.000000e+00, %3639
  %3641 = bitcast float %3640 to i32
  %3642 = sub nsw i32 2129859010, %3641
  %3643 = bitcast i32 %3642 to float
  %3644 = call float @dx.op.binary.f32(i32 36, float %2380, float %3637)  ; FMin(a,b)
  %3645 = fmul fast float %3644, %2400
  %3646 = fsub fast float 1.000000e+00, %3645
  %3647 = bitcast float %3646 to i32
  %3648 = sub nsw i32 2129859010, %3647
  %3649 = bitcast i32 %3648 to float
  %3650 = call float @dx.op.binary.f32(i32 36, float %2381, float %3637)  ; FMin(a,b)
  %3651 = fmul fast float %3650, %2400
  %3652 = fsub fast float 1.000000e+00, %3651
  %3653 = bitcast float %3652 to i32
  %3654 = sub nsw i32 2129859010, %3653
  %3655 = bitcast i32 %3654 to float
  %3656 = fmul fast float %3633, %2399
  %3657 = fmul fast float %3656, %3643
  %3658 = fmul fast float %3634, %2399
  %3659 = fmul fast float %3658, %3649
  %3660 = fmul fast float %3635, %2399
  %3661 = fmul fast float %3660, %3655
  %3662 = call float @dx.op.binary.f32(i32 36, float %2376, float %3637)  ; FMin(a,b)
  %3663 = fmul fast float %3662, %2400
  %3664 = fsub fast float 1.000000e+00, %3663
  %3665 = bitcast float %3664 to i32
  %3666 = sub nsw i32 2129859010, %3665
  %3667 = bitcast i32 %3666 to float
  %3668 = call float @dx.op.binary.f32(i32 36, float %2377, float %3637)  ; FMin(a,b)
  %3669 = fmul fast float %3668, %2400
  %3670 = fsub fast float 1.000000e+00, %3669
  %3671 = bitcast float %3670 to i32
  %3672 = sub nsw i32 2129859010, %3671
  %3673 = bitcast i32 %3672 to float
  %3674 = call float @dx.op.binary.f32(i32 36, float %2388, float %3637)  ; FMin(a,b)
  %3675 = fmul fast float %3674, %2400
  %3676 = fsub fast float 1.000000e+00, %3675
  %3677 = bitcast float %3676 to i32
  %3678 = sub nsw i32 2129859010, %3677
  %3679 = bitcast i32 %3678 to float
  %3680 = fmul fast float %3627, %2399
  %3681 = fmul fast float %3680, %3667
  %3682 = fmul fast float %3628, %2399
  %3683 = fmul fast float %3682, %3673
  %3684 = fmul fast float %3629, %2399
  %3685 = fmul fast float %3684, %3679
  %3686 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3659, float %3661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3687 = select i1 %269, float 0.000000e+00, float %3657
  %3688 = select i1 %269, float %3686, float %3659
  %3689 = select i1 %269, float 0.000000e+00, float %3661
  %3690 = call float @dx.op.dot3.f32(i32 55, float %3630, float %3631, float %3632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3691 = select i1 %269, float 0.000000e+00, float %3630
  %3692 = select i1 %269, float %3690, float %3631
  %3693 = select i1 %269, float 0.000000e+00, float %3632
  %3694 = call float @dx.op.dot3.f32(i32 55, float %3681, float %3683, float %3685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3695 = select i1 %269, float 0.000000e+00, float %3681
  %3696 = select i1 %269, float %3694, float %3683
  %3697 = select i1 %269, float 0.000000e+00, float %3685
  %3698 = fmul fast float %1117, %1117
  %3699 = call float @dx.op.unary.f32(i32 7, float %3698)  ; Saturate(value)
  %3700 = fmul fast float %2390, 9.843750e-01
  %3701 = fmul fast float %2385, 9.843750e-01
  %3702 = fadd fast float %3700, 7.812500e-03
  %3703 = fadd fast float %3701, 7.812500e-03
  %3704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3702, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3704, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3704, 2
  %3708 = extractvalue %dx.types.ResRet.f32 %3704, 3
  %3709 = fsub fast float 1.000000e+00, %3699
  %3710 = fsub fast float %3707, %3705
  %3711 = fsub fast float %3708, %3706
  %3712 = fmul fast float %3710, %3709
  %3713 = fmul fast float %3711, %3709
  %3714 = fadd fast float %3712, %3705
  %3715 = fadd fast float %3713, %3706
  %3716 = fmul fast float %3714, %2376
  %3717 = fmul fast float %3714, %2377
  %3718 = fmul fast float %3714, %2388
  %3719 = fadd fast float %3716, %3715
  %3720 = fadd fast float %3717, %3715
  %3721 = fadd fast float %3718, %3715
  %3722 = fcmp fast ogt float %1717, 0.000000e+00
  br i1 %3722, label %3723, label %3749

; <label>:3723                                    ; preds = %3625
  %3724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1717, float %2390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3725 = extractvalue %dx.types.ResRet.f32 %3724, 0
  %3726 = extractvalue %dx.types.ResRet.f32 %3724, 1
  %3727 = extractvalue %dx.types.ResRet.f32 %3724, 2
  %3728 = fadd fast float %3725, -5.000000e-01
  %3729 = fadd fast float %3726, -5.000000e-01
  %3730 = fadd fast float %3727, -5.000000e-01
  %3731 = fsub fast float 1.000000e+00, %2376
  %3732 = fsub fast float 1.000000e+00, %2377
  %3733 = fsub fast float 1.000000e+00, %2388
  %3734 = fmul fast float %2376, 4.000000e+00
  %3735 = fmul fast float %3734, %3731
  %3736 = fmul fast float %3735, %3728
  %3737 = fmul fast float %2377, 4.000000e+00
  %3738 = fmul fast float %3737, %3732
  %3739 = fmul fast float %3738, %3729
  %3740 = fmul fast float %2388, 4.000000e+00
  %3741 = fmul fast float %3740, %3733
  %3742 = fmul fast float %3741, %3730
  %3743 = fadd fast float %3736, %3719
  %3744 = fadd fast float %3739, %3720
  %3745 = fadd fast float %3742, %3721
  %3746 = call float @dx.op.unary.f32(i32 7, float %3743)  ; Saturate(value)
  %3747 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3748 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  br label %3749

; <label>:3749                                    ; preds = %3723, %3625
  %3750 = phi float [ %3746, %3723 ], [ %3719, %3625 ]
  %3751 = phi float [ %3747, %3723 ], [ %3720, %3625 ]
  %3752 = phi float [ %3748, %3723 ], [ %3721, %3625 ]
  %3753 = call float @dx.op.binary.f32(i32 35, float %3751, float %3752)  ; FMax(a,b)
  %3754 = call float @dx.op.binary.f32(i32 35, float %3750, float %3753)  ; FMax(a,b)
  %3755 = fsub fast float 1.000000e+00, %3754
  %3756 = fmul fast float %3754, %2385
  %3757 = fadd fast float %3756, %2385
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 2
  %3760 = extractvalue %dx.types.CBufRet.f32 %3758, 3
  %3761 = fmul fast float %3757, %3759
  %3762 = fadd fast float %3761, %3760
  %3763 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3764 = fsub fast float 1.000000e+00, %2411
  %3765 = fadd fast float %3764, %3763
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3767 = fcmp fast olt float %3766, 1.000000e+00
  br i1 %3767, label %3768, label %4244

; <label>:3768                                    ; preds = %3749
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 2
  %3771 = extractvalue %dx.types.CBufRet.f32 %3769, 3
  %3772 = fmul fast float %3770, %99
  %3773 = fmul fast float %3771, %100
  %3774 = fptoui float %3772 to i32
  %3775 = fptoui float %3773 to i32
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 0
  %3778 = extractvalue %dx.types.CBufRet.f32 %3776, 2
  %3779 = extractvalue %dx.types.CBufRet.f32 %3776, 3
  %3780 = fadd fast float %87, -4.000000e+00
  %3781 = call float @dx.op.binary.f32(i32 35, float %3780, float 0.000000e+00)  ; FMax(a,b)
  %3782 = fadd fast float %3781, %3777
  %3783 = fmul fast float %3782, %3778
  %3784 = call float @dx.op.unary.f32(i32 23, float %3783)  ; Log(value)
  %3785 = fmul fast float %3784, %3779
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 2
  %3788 = fmul fast float %3785, %3787
  %3789 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  %3790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3791 = extractvalue %dx.types.CBufRet.i32 %3790, 1
  %3792 = add i32 %3791, -1
  %3793 = uitofp i32 %3791 to float
  %3794 = fmul fast float %3793, %3789
  %3795 = fptoui float %3794 to i32
  %3796 = call i32 @dx.op.binary.i32(i32 40, i32 %3795, i32 %3792)  ; UMin(a,b)
  %3797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.i32 %3797, 2
  %3799 = extractvalue %dx.types.CBufRet.i32 %3797, 3
  %3800 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3775, i32 %3798, i32 %3774)  ; UMad(a,b,c)
  %3801 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3796, i32 %3799, i32 %3800)  ; UMad(a,b,c)
  %3802 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %3803 = fptoui float %3802 to i32
  %3804 = lshr i32 %3803, 5
  %3805 = call i32 @dx.op.binary.i32(i32 40, i32 %3804, i32 8191)  ; UMin(a,b)
  %3806 = fsub fast float %2193, %148
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = fcmp fast ogt float %3807, 0.000000e+00
  %3809 = fcmp fast ogt float %2398, 0.000000e+00
  %3810 = and i1 %3809, %3808
  br i1 %3810, label %3811, label %3840

; <label>:3811                                    ; preds = %3768
  %3812 = call float @dx.op.dot3.f32(i32 55, float %2396, float %2397, float %2398, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3813 = call float @dx.op.binary.f32(i32 35, float %3812, float -1.000000e+00)  ; FMax(a,b)
  %3814 = call float @dx.op.binary.f32(i32 36, float %3813, float 1.000000e+00)  ; FMin(a,b)
  %3815 = fmul fast float %3814, %3814
  %3816 = fsub fast float 1.000000e+00, %3815
  %3817 = fmul fast float %3816, 0x3FFC6E2300000000
  %3818 = fsub fast float 1.000000e+00, %3817
  %3819 = fcmp fast ogt float %3818, 0.000000e+00
  %3820 = call float @dx.op.unary.f32(i32 24, float %3818)  ; Sqrt(value)
  %3821 = fsub fast float 1.000000e+00, %3820
  %3822 = call float @dx.op.unary.f32(i32 23, float %3821)  ; Log(value)
  %3823 = fmul fast float %3822, 5.000000e+00
  %3824 = call float @dx.op.unary.f32(i32 21, float %3823)  ; Exp(value)
  %3825 = fmul fast float %3824, 0x3FEF591A60000000
  %3826 = fadd fast float %3825, 0x3F94DCB540000000
  %3827 = select i1 %3819, float %3826, float 1.000000e+00
  %3828 = fcmp fast oge float %3827, 1.000000e+00
  %3829 = fmul fast float %3812, 2.000000e+00
  %3830 = fadd fast float %3829, %2398
  %3831 = select i1 %3828, float %3830, float %2398
  %3832 = fsub fast float %3831, %2398
  %3833 = fmul fast float %3832, %3807
  %3834 = fadd fast float %3833, %2398
  %3835 = call float @dx.op.dot3.f32(i32 55, float %2396, float %2397, float %3834, float %2396, float %2397, float %3834)  ; Dot3(ax,ay,az,bx,by,bz)
  %3836 = call float @dx.op.unary.f32(i32 25, float %3835)  ; Rsqrt(value)
  %3837 = fmul fast float %3836, %2396
  %3838 = fmul fast float %3836, %2397
  %3839 = fmul fast float %3834, %3836
  br label %3840

; <label>:3840                                    ; preds = %3811, %3768
  %3841 = phi float [ %3837, %3811 ], [ %2396, %3768 ]
  %3842 = phi float [ %3838, %3811 ], [ %2397, %3768 ]
  %3843 = phi float [ %3839, %3811 ], [ %2398, %3768 ]
  %3844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3845 = extractvalue %dx.types.CBufRet.i32 %3844, 2
  %3846 = add nsw i32 %3845, -1
  %3847 = call i32 @dx.op.binary.i32(i32 37, i32 %3846, i32 0)  ; IMax(a,b)
  %3848 = shl i32 %3805, 2
  %3849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.i32 %3849, 0
  %3851 = lshr i32 %3850, 16
  %3852 = and i32 %3850, 65535
  %3853 = lshr i32 %3850, 21
  %3854 = lshr i32 %3852, 5
  %3855 = call i32 @dx.op.binary.i32(i32 40, i32 %3854, i32 %3847)  ; UMin(a,b)
  %3856 = icmp ugt i32 %3853, %3855
  br i1 %3856, label %4220, label %3857

; <label>:3857                                    ; preds = %3840
  br label %3858

; <label>:3858                                    ; preds = %4212, %3857
  %3859 = phi float [ %4213, %4212 ], [ 0.000000e+00, %3857 ]
  %3860 = phi float [ %4214, %4212 ], [ 0.000000e+00, %3857 ]
  %3861 = phi float [ %4215, %4212 ], [ 0.000000e+00, %3857 ]
  %3862 = phi float [ %4216, %4212 ], [ 1.000000e+00, %3857 ]
  %3863 = phi i32 [ %4217, %4212 ], [ %3853, %3857 ]
  %3864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.i32 %3864, 2
  %3866 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3801, i32 %3865, i32 %3863)  ; UMad(a,b,c)
  %3867 = shl i32 %3866, 2
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = shl i32 %3863, 5
  %3871 = sub nsw i32 %3851, %3870
  %3872 = call i32 @dx.op.binary.i32(i32 37, i32 %3871, i32 0)  ; IMax(a,b)
  %3873 = call i32 @dx.op.binary.i32(i32 38, i32 %3872, i32 31)  ; IMin(a,b)
  %3874 = sub nsw i32 1, %3851
  %3875 = add nsw i32 %3874, %3852
  %3876 = call i32 @dx.op.binary.i32(i32 37, i32 %3875, i32 0)  ; IMax(a,b)
  %3877 = call i32 @dx.op.binary.i32(i32 38, i32 %3876, i32 32)  ; IMin(a,b)
  %3878 = and i32 %3877, 31
  %3879 = shl i32 -1, %3878
  %3880 = xor i32 %3879, -1
  %3881 = and i32 %3873, 31
  %3882 = shl i32 %3880, %3881
  %3883 = icmp eq i32 %3877, 32
  %3884 = select i1 %3883, i32 -1, i32 %3882
  %3885 = and i32 %3884, %3869
  %3886 = icmp eq i32 %3885, 0
  br i1 %3886, label %4212, label %3887

; <label>:3887                                    ; preds = %3858
  br label %3888

; <label>:3888                                    ; preds = %3995, %3887
  %3889 = phi float [ %3996, %3995 ], [ %3859, %3887 ]
  %3890 = phi float [ %3997, %3995 ], [ %3860, %3887 ]
  %3891 = phi float [ %3998, %3995 ], [ %3861, %3887 ]
  %3892 = phi float [ %3999, %3995 ], [ %3862, %3887 ]
  %3893 = phi i32 [ %3898, %3995 ], [ %3885, %3887 ]
  %3894 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3893)  ; FirstbitLo(value)
  %3895 = add i32 %3894, %3870
  %3896 = and i32 %3894, 31
  %3897 = shl i32 1, %3896
  %3898 = xor i32 %3897, %3893
  %3899 = mul i32 %3895, 72
  %3900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.ResRet.f32 %3900, 1
  %3903 = extractvalue %dx.types.ResRet.f32 %3900, 2
  %3904 = add i32 %3899, 12
  %3905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3904, i32 undef)  ; BufferLoad(srv,index,wot)
  %3906 = extractvalue %dx.types.ResRet.i32 %3905, 0
  %3907 = add i32 %3899, 16
  %3908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3912 = add i32 %3899, 28
  %3913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %3915 = add i32 %3899, 32
  %3916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.ResRet.f32 %3916, 1
  %3919 = extractvalue %dx.types.ResRet.f32 %3916, 2
  %3920 = extractvalue %dx.types.ResRet.f32 %3916, 3
  %3921 = add i32 %3899, 48
  %3922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3921, i32 undef)  ; BufferLoad(srv,index,wot)
  %3923 = extractvalue %dx.types.ResRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.ResRet.f32 %3922, 1
  %3925 = add i32 %3899, 56
  %3926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3926, 1
  %3929 = add i32 %3899, 64
  %3930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.f32 %3930, 1
  %3933 = mul i32 %3895, 60
  %3934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %3936 = extractvalue %dx.types.ResRet.f32 %3934, 1
  %3937 = extractvalue %dx.types.ResRet.f32 %3934, 2
  %3938 = add i32 %3933, 12
  %3939 = add i32 %3933, 48
  %3940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.ResRet.f32 %3940, 1
  %3943 = extractvalue %dx.types.ResRet.f32 %3940, 2
  %3944 = and i32 %3906, 32767
  %3945 = bitcast float %3901 to i32
  %3946 = icmp eq i32 %3945, -1
  %3947 = bitcast float %3902 to i32
  %3948 = and i32 %3906, 32768
  %3949 = icmp ne i32 %3948, 0
  %3950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.f32 %3950, 0
  %3952 = extractvalue %dx.types.CBufRet.f32 %3950, 1
  %3953 = extractvalue %dx.types.CBufRet.f32 %3950, 2
  %3954 = fsub fast float %3935, %3951
  %3955 = fsub fast float %3936, %3952
  %3956 = fsub fast float %3937, %3953
  %3957 = fsub fast float %146, %3954
  %3958 = fsub fast float %147, %3955
  %3959 = fsub fast float %148, %3956
  %3960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = extractvalue %dx.types.ResRet.f32 %3960, 1
  %3963 = extractvalue %dx.types.ResRet.f32 %3960, 2
  %3964 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3958, float %3959, float %3961, float %3962, float %3963)  ; Dot3(ax,ay,az,bx,by,bz)
  %3965 = add i32 %3933, 24
  %3966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3967 = extractvalue %dx.types.ResRet.f32 %3966, 0
  %3968 = extractvalue %dx.types.ResRet.f32 %3966, 1
  %3969 = extractvalue %dx.types.ResRet.f32 %3966, 2
  %3970 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3958, float %3959, float %3967, float %3968, float %3969)  ; Dot3(ax,ay,az,bx,by,bz)
  %3971 = add i32 %3933, 36
  %3972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.f32 %3972, 0
  %3974 = extractvalue %dx.types.ResRet.f32 %3972, 1
  %3975 = extractvalue %dx.types.ResRet.f32 %3972, 2
  %3976 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3958, float %3959, float %3973, float %3974, float %3975)  ; Dot3(ax,ay,az,bx,by,bz)
  %3977 = call float @dx.op.unary.f32(i32 6, float %3964)  ; FAbs(value)
  %3978 = call float @dx.op.unary.f32(i32 6, float %3970)  ; FAbs(value)
  %3979 = call float @dx.op.unary.f32(i32 6, float %3976)  ; FAbs(value)
  %3980 = fsub fast float %3941, %3977
  %3981 = fsub fast float %3942, %3978
  %3982 = fsub fast float %3943, %3979
  %3983 = fmul fast float %3980, %3909
  %3984 = fmul fast float %3981, %3910
  %3985 = fmul fast float %3982, %3911
  %3986 = call float @dx.op.binary.f32(i32 36, float %3984, float %3985)  ; FMin(a,b)
  %3987 = call float @dx.op.binary.f32(i32 36, float %3983, float %3986)  ; FMin(a,b)
  %3988 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3989 = call float @dx.op.binary.f32(i32 36, float %3892, float %3988)  ; FMin(a,b)
  %3990 = uitofp i1 %3949 to float
  %3991 = fadd fast float %3807, 1.000000e+00
  %3992 = fsub fast float %3991, %3990
  %3993 = fmul fast float %3989, %3992
  %3994 = fcmp fast ogt float %3993, 0.000000e+00
  br i1 %3994, label %4001, label %3995

; <label>:3995                                    ; preds = %4143, %3888
  %3996 = phi float [ %4207, %4143 ], [ %3889, %3888 ]
  %3997 = phi float [ %4208, %4143 ], [ %3890, %3888 ]
  %3998 = phi float [ %4209, %4143 ], [ %3891, %3888 ]
  %3999 = phi float [ %4210, %4143 ], [ %3892, %3888 ]
  %4000 = icmp eq i32 %3893, %3897
  br i1 %4000, label %4211, label %3888

; <label>:4001                                    ; preds = %3888
  br i1 %3946, label %4059, label %4002

; <label>:4002                                    ; preds = %4001
  %4003 = fsub fast float -0.000000e+00, %3961
  %4004 = fsub fast float -0.000000e+00, %3962
  %4005 = fsub fast float -0.000000e+00, %3963
  %4006 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float %4003, float %4004, float %4005)  ; Dot3(ax,ay,az,bx,by,bz)
  %4007 = fsub fast float -0.000000e+00, %4006
  %4008 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3958, float %3959, float %4003, float %4004, float %4005)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = fadd fast float %4008, %3924
  %4010 = fadd fast float %3923, %4008
  %4011 = fsub fast float -0.000000e+00, %4010
  %4012 = fcmp ogt float %4006, -0.000000e+00
  %4013 = select i1 %4012, float %4011, float %4009
  %4014 = call float @dx.op.unary.f32(i32 6, float %4007)  ; FAbs(value)
  %4015 = fdiv fast float 1.000000e+00, %4014
  %4016 = fmul fast float %4013, %4015
  %4017 = call float @dx.op.binary.f32(i32 35, float %4016, float 0.000000e+00)  ; FMax(a,b)
  %4018 = fsub fast float -0.000000e+00, %3967
  %4019 = fsub fast float -0.000000e+00, %3968
  %4020 = fsub fast float -0.000000e+00, %3969
  %4021 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float %4018, float %4019, float %4020)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = fsub fast float -0.000000e+00, %4021
  %4023 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3958, float %3959, float %4018, float %4019, float %4020)  ; Dot3(ax,ay,az,bx,by,bz)
  %4024 = fadd fast float %4023, %3928
  %4025 = fadd fast float %3927, %4023
  %4026 = fsub fast float -0.000000e+00, %4025
  %4027 = fcmp ogt float %4021, -0.000000e+00
  %4028 = select i1 %4027, float %4026, float %4024
  %4029 = call float @dx.op.unary.f32(i32 6, float %4022)  ; FAbs(value)
  %4030 = fdiv fast float 1.000000e+00, %4029
  %4031 = fmul fast float %4028, %4030
  %4032 = call float @dx.op.binary.f32(i32 35, float %4031, float 0.000000e+00)  ; FMax(a,b)
  %4033 = fsub fast float -0.000000e+00, %3973
  %4034 = fsub fast float -0.000000e+00, %3974
  %4035 = fsub fast float -0.000000e+00, %3975
  %4036 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float %4033, float %4034, float %4035)  ; Dot3(ax,ay,az,bx,by,bz)
  %4037 = fsub fast float -0.000000e+00, %4036
  %4038 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3958, float %3959, float %4033, float %4034, float %4035)  ; Dot3(ax,ay,az,bx,by,bz)
  %4039 = fadd fast float %4038, %3932
  %4040 = fadd fast float %3931, %4038
  %4041 = fsub fast float -0.000000e+00, %4040
  %4042 = fcmp ogt float %4036, -0.000000e+00
  %4043 = select i1 %4042, float %4041, float %4039
  %4044 = call float @dx.op.unary.f32(i32 6, float %4037)  ; FAbs(value)
  %4045 = fdiv fast float 1.000000e+00, %4044
  %4046 = fmul fast float %4043, %4045
  %4047 = call float @dx.op.binary.f32(i32 35, float %4046, float 0.000000e+00)  ; FMax(a,b)
  %4048 = call float @dx.op.binary.f32(i32 36, float %4032, float %4047)  ; FMin(a,b)
  %4049 = call float @dx.op.binary.f32(i32 36, float %4017, float %4048)  ; FMin(a,b)
  %4050 = fmul fast float %4049, %3841
  %4051 = fmul fast float %4049, %3842
  %4052 = fmul fast float %4049, %3843
  %4053 = fadd fast float %4050, %146
  %4054 = fadd fast float %4051, %147
  %4055 = fadd fast float %4052, %148
  %4056 = fsub fast float %4053, %3901
  %4057 = fsub fast float %4054, %3902
  %4058 = fsub fast float %4055, %3903
  br label %4066

; <label>:4059                                    ; preds = %4001
  %4060 = fmul fast float %3841, 8.096000e+03
  %4061 = fmul fast float %3842, 8.096000e+03
  %4062 = fmul fast float %3843, 8.096000e+03
  %4063 = fadd fast float %4060, %146
  %4064 = fadd fast float %4061, %147
  %4065 = fadd fast float %4062, %148
  br label %4066

; <label>:4066                                    ; preds = %4059, %4002
  %4067 = phi float [ %3841, %4059 ], [ %4056, %4002 ]
  %4068 = phi float [ %3842, %4059 ], [ %4057, %4002 ]
  %4069 = phi float [ %3843, %4059 ], [ %4058, %4002 ]
  %4070 = phi float [ %4063, %4059 ], [ %4053, %4002 ]
  %4071 = phi float [ %4064, %4059 ], [ %4054, %4002 ]
  %4072 = phi float [ %4065, %4059 ], [ %4055, %4002 ]
  %4073 = fcmp fast olt float %3920, 1.000000e+00
  br i1 %4073, label %4074, label %4105, !dx.controlflow.hints !113

; <label>:4074                                    ; preds = %4066
  %4075 = fmul fast float %4069, %3918
  %4076 = fmul fast float %4068, %3919
  %4077 = fsub fast float %4075, %4076
  %4078 = fmul fast float %4067, %3919
  %4079 = fmul fast float %4069, %3917
  %4080 = fsub fast float %4078, %4079
  %4081 = fmul fast float %4068, %3917
  %4082 = fmul fast float %4067, %3918
  %4083 = fsub fast float %4081, %4082
  %4084 = fmul fast float %4077, 2.000000e+00
  %4085 = fmul fast float %4080, 2.000000e+00
  %4086 = fmul fast float %4083, 2.000000e+00
  %4087 = fmul fast float %4084, %3920
  %4088 = fmul fast float %4085, %3920
  %4089 = fmul fast float %4086, %3920
  %4090 = fmul fast float %4086, %3918
  %4091 = fmul fast float %4085, %3919
  %4092 = fmul fast float %4084, %3919
  %4093 = fmul fast float %4086, %3917
  %4094 = fmul fast float %4085, %3917
  %4095 = fmul fast float %4084, %3918
  %4096 = fadd fast float %4090, %4067
  %4097 = fadd fast float %4096, %4087
  %4098 = fsub fast float %4097, %4091
  %4099 = fsub fast float %4068, %4093
  %4100 = fadd fast float %4099, %4088
  %4101 = fadd fast float %4100, %4092
  %4102 = fadd fast float %4089, %4069
  %4103 = fsub fast float %4102, %4095
  %4104 = fadd fast float %4103, %4094
  br label %4105

; <label>:4105                                    ; preds = %4074, %4066
  %4106 = phi float [ %4098, %4074 ], [ %4067, %4066 ]
  %4107 = phi float [ %4101, %4074 ], [ %4068, %4066 ]
  %4108 = phi float [ %4104, %4074 ], [ %4069, %4066 ]
  br i1 %3946, label %4140, label %4109

; <label>:4109                                    ; preds = %4105
  %4110 = fmul fast float %2385, 0x400187C840000000
  %4111 = fadd fast float %4110, 0xC00EFC2120000000
  %4112 = fmul fast float %4111, %2385
  %4113 = fadd fast float %4112, 0x3FE5D16340000000
  %4114 = fmul fast float %4113, %2385
  %4115 = fadd fast float %4114, 1.000000e+00
  %4116 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4117 = fsub fast float %4070, %146
  %4118 = fsub fast float %4071, %147
  %4119 = fsub fast float %4072, %148
  %4120 = fsub fast float %4070, %3901
  %4121 = fsub fast float %4071, %3902
  %4122 = fsub fast float %4072, %3903
  %4123 = call float @dx.op.dot3.f32(i32 55, float %4117, float %4118, float %4119, float %4117, float %4118, float %4119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4124 = call float @dx.op.dot3.f32(i32 55, float %4120, float %4121, float %4122, float %4120, float %4121, float %4122)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = fadd fast float %4124, 0x3EE4F8B580000000
  %4126 = fdiv fast float %4123, %4125
  %4127 = bitcast float %4126 to i32
  %4128 = ashr i32 %4127, 1
  %4129 = add nsw i32 %4128, 532487669
  %4130 = bitcast i32 %4129 to float
  %4131 = fmul fast float %4130, %4116
  %4132 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4133 = fmul fast float %4132, 0x4009981AE0000000
  %4134 = fsub fast float 0x40111BBD80000000, %4133
  %4135 = fmul fast float %4134, %4132
  %4136 = fadd fast float %4135, 0xC0009F6020000000
  %4137 = fmul fast float %4136, %4132
  %4138 = fadd fast float %4137, 1.000000e+00
  %4139 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  br label %4143

; <label>:4140                                    ; preds = %4105
  %4141 = icmp ne i32 %3947, -1
  %4142 = zext i1 %4141 to i32
  br label %4143

; <label>:4143                                    ; preds = %4140, %4109
  %4144 = phi float [ %2385, %4140 ], [ %4139, %4109 ]
  %4145 = phi i32 [ %4142, %4140 ], [ 0, %4109 ]
  %4146 = fmul float %4144, 5.000000e+00
  %4147 = fsub float 5.000000e+00, %4146
  %4148 = icmp ne i32 %4145, 0
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 3
  %4151 = fadd fast float %4150, %4147
  %4152 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4151)  ; FMax(a,b)
  %4153 = call float @dx.op.unary.f32(i32 6, float %4106)  ; FAbs(value)
  %4154 = call float @dx.op.unary.f32(i32 6, float %4107)  ; FAbs(value)
  %4155 = fadd fast float %4154, %4153
  %4156 = call float @dx.op.unary.f32(i32 6, float %4108)  ; FAbs(value)
  %4157 = fadd fast float %4155, %4156
  %4158 = fcmp fast oeq float %4157, 0.000000e+00
  %4159 = fdiv fast float 1.000000e+00, %4157
  %4160 = select i1 %4158, float 1.000000e+00, float %4159
  %4161 = fmul fast float %4160, %4106
  %4162 = fmul fast float %4160, %4107
  %4163 = call float @dx.op.unary.f32(i32 6, float %4162)  ; FAbs(value)
  %4164 = call float @dx.op.unary.f32(i32 6, float %4161)  ; FAbs(value)
  %4165 = fsub fast float 1.000000e+00, %4163
  %4166 = fsub fast float 1.000000e+00, %4164
  %4167 = fcmp fast oge float %4161, 0.000000e+00
  %4168 = fcmp fast oge float %4162, 0.000000e+00
  %4169 = select i1 %4167, float 1.000000e+00, float -1.000000e+00
  %4170 = select i1 %4168, float 1.000000e+00, float -1.000000e+00
  %4171 = fcmp fast ole float %4108, 0.000000e+00
  %4172 = fmul fast float %4169, %4165
  %4173 = fmul fast float %4170, %4166
  %4174 = select i1 %4171, float %4172, float %4161
  %4175 = select i1 %4171, float %4173, float %4162
  %4176 = fmul fast float %4174, 5.000000e-01
  %4177 = fmul fast float %4175, 5.000000e-01
  %4178 = fadd fast float %4176, 5.000000e-01
  %4179 = fadd fast float %4177, 5.000000e-01
  %4180 = uitofp i32 %3944 to float
  %4181 = call float @dx.op.binary.f32(i32 36, float %4152, float 3.000000e+00)  ; FMin(a,b)
  %4182 = fadd fast float %4181, 2.000000e+00
  %4183 = call float @dx.op.unary.f32(i32 21, float %4182)  ; Exp(value)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4149, 1
  %4185 = fmul fast float %4184, %4183
  %4186 = fmul fast float %4185, 2.000000e+00
  %4187 = fsub fast float 1.000000e+00, %4186
  %4188 = fmul fast float %4178, %4187
  %4189 = fmul fast float %4179, %4187
  %4190 = fadd fast float %4188, %4185
  %4191 = fadd fast float %4189, %4185
  %4192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %4190, float %4191, float %4180, float undef, i32 0, i32 0, i32 undef, float %4152)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4193 = extractvalue %dx.types.ResRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.ResRet.f32 %4192, 1
  %4195 = extractvalue %dx.types.ResRet.f32 %4192, 2
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 3
  %4198 = fmul fast float %4197, %3914
  %4199 = call float @dx.op.binary.f32(i32 36, float %3626, float %4198)  ; FMin(a,b)
  %4200 = select i1 %4148, float %4199, float %4198
  %4201 = fmul fast float %4193, %3993
  %4202 = fmul fast float %4201, %4200
  %4203 = fmul fast float %4194, %3993
  %4204 = fmul fast float %4203, %4200
  %4205 = fmul fast float %4195, %3993
  %4206 = fmul fast float %4205, %4200
  %4207 = fadd fast float %4202, %3889
  %4208 = fadd fast float %4204, %3890
  %4209 = fadd fast float %4206, %3891
  %4210 = fsub fast float %3892, %3993
  br label %3995

; <label>:4211                                    ; preds = %3995
  br label %4212

; <label>:4212                                    ; preds = %4211, %3858
  %4213 = phi float [ %3859, %3858 ], [ %3996, %4211 ]
  %4214 = phi float [ %3860, %3858 ], [ %3997, %4211 ]
  %4215 = phi float [ %3861, %3858 ], [ %3998, %4211 ]
  %4216 = phi float [ %3862, %3858 ], [ %3999, %4211 ]
  %4217 = add i32 %3863, 1
  %4218 = icmp ugt i32 %4217, %3855
  br i1 %4218, label %4219, label %3858, !llvm.loop !114

; <label>:4219                                    ; preds = %4212
  br label %4220

; <label>:4220                                    ; preds = %4219, %3840
  %4221 = phi float [ 0.000000e+00, %3840 ], [ %4213, %4219 ]
  %4222 = phi float [ 0.000000e+00, %3840 ], [ %4214, %4219 ]
  %4223 = phi float [ 0.000000e+00, %3840 ], [ %4215, %4219 ]
  %4224 = call float @dx.op.dot3.f32(i32 55, float %4221, float %4222, float %4223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4225 = select i1 %269, float 0.000000e+00, float %4221
  %4226 = select i1 %269, float %4224, float %4222
  %4227 = select i1 %269, float 0.000000e+00, float %4223
  %4228 = fcmp fast olt float %3766, 0.000000e+00
  %4229 = call float @dx.op.unary.f32(i32 6, float %3766)  ; FAbs(value)
  %4230 = fmul fast float %4229, %3695
  %4231 = fmul fast float %4229, %3696
  %4232 = fmul fast float %4229, %3697
  %4233 = select i1 %4228, float %3695, float %4230
  %4234 = select i1 %4228, float %3696, float %4231
  %4235 = select i1 %4228, float %3697, float %4232
  %4236 = fsub fast float 1.000000e+00, %4229
  %4237 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4238 = fmul fast float %4237, %4225
  %4239 = fmul fast float %4237, %4226
  %4240 = fmul fast float %4237, %4227
  %4241 = fadd fast float %4233, %4238
  %4242 = fadd fast float %4234, %4239
  %4243 = fadd fast float %4235, %4240
  br label %4244

; <label>:4244                                    ; preds = %4220, %3749
  %4245 = phi float [ %3695, %3749 ], [ %4241, %4220 ]
  %4246 = phi float [ %3696, %3749 ], [ %4242, %4220 ]
  %4247 = phi float [ %3697, %3749 ], [ %4243, %4220 ]
  %4248 = call float @dx.op.dot3.f32(i32 55, float %2379, float %2380, float %2381, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4249 = fcmp fast ogt float %4248, 0x3E7FF19E20000000
  %4250 = fdiv fast float 1.000000e+00, %4248
  %4251 = select i1 %4249, float %4250, float 0.000000e+00
  %4252 = fmul fast float %4251, %2379
  %4253 = fmul fast float %4251, %2380
  %4254 = fmul fast float %4251, %2381
  %4255 = fadd fast float %4252, -1.000000e+00
  %4256 = fadd fast float %4253, -1.000000e+00
  %4257 = fadd fast float %4254, -1.000000e+00
  %4258 = fmul fast float %4255, 5.000000e-01
  %4259 = fmul fast float %4256, 5.000000e-01
  %4260 = fmul fast float %4257, 5.000000e-01
  %4261 = fadd fast float %4258, 1.000000e+00
  %4262 = fadd fast float %4259, 1.000000e+00
  %4263 = fadd fast float %4260, 1.000000e+00
  %4264 = call float @dx.op.binary.f32(i32 35, float %2390, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4265 = fdiv fast float %1117, %4264
  %4266 = fcmp fast olt float %1812, 1.270000e+02
  %4267 = fcmp fast olt float %1813, 1.270000e+02
  %4268 = fcmp fast olt float %1814, 1.270000e+02
  %4269 = fmul fast float %1812, 0xBFF7154760000000
  %4270 = fmul fast float %4269, %4265
  %4271 = fmul fast float %1813, 0xBFF7154760000000
  %4272 = fmul fast float %4271, %4265
  %4273 = fmul fast float %1814, 0xBFF7154760000000
  %4274 = fmul fast float %4273, %4265
  %4275 = call float @dx.op.unary.f32(i32 21, float %4270)  ; Exp(value)
  %4276 = call float @dx.op.unary.f32(i32 21, float %4272)  ; Exp(value)
  %4277 = call float @dx.op.unary.f32(i32 21, float %4274)  ; Exp(value)
  %4278 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4281 = select i1 %4266, float %4278, float 0.000000e+00
  %4282 = select i1 %4267, float %4279, float 0.000000e+00
  %4283 = select i1 %4268, float %4280, float 0.000000e+00
  %4284 = fmul fast float %4281, %3755
  %4285 = fmul fast float %4282, %3755
  %4286 = fmul fast float %4283, %3755
  %4287 = fadd fast float %4284, -1.000000e+00
  %4288 = fadd fast float %4285, -1.000000e+00
  %4289 = fadd fast float %4286, -1.000000e+00
  %4290 = fmul fast float %4287, %1767
  %4291 = fmul fast float %4288, %1767
  %4292 = fmul fast float %4289, %1767
  %4293 = fmul fast float %4245, %3750
  %4294 = fmul fast float %4246, %3751
  %4295 = fmul fast float %4247, %3752
  %4296 = fsub fast float 1.000000e+00, %2390
  %4297 = bitcast float %4296 to i32
  %4298 = sitofp i32 %4297 to float
  %4299 = fmul fast float %4298, 5.000000e+00
  %4300 = fadd fast float %4299, 0xC1EFBF8940000000
  %4301 = fptosi float %4300 to i32
  %4302 = bitcast i32 %4301 to float
  %4303 = fmul fast float %4302, %1716
  %4304 = fmul fast float %3687, %4303
  %4305 = fmul fast float %4304, %3755
  %4306 = fmul fast float %4305, %4261
  %4307 = fmul fast float %3688, %4303
  %4308 = fmul fast float %4307, %3755
  %4309 = fmul fast float %4308, %4262
  %4310 = fmul fast float %3689, %4303
  %4311 = fmul fast float %4310, %3755
  %4312 = fmul fast float %4311, %4263
  %4313 = fadd fast float %4293, %1721
  %4314 = fadd fast float %4313, %4306
  %4315 = fmul fast float %4314, %1767
  %4316 = fadd fast float %4294, %1722
  %4317 = fadd fast float %4316, %4309
  %4318 = fmul fast float %4317, %1767
  %4319 = fadd fast float %4295, %1723
  %4320 = fadd fast float %4319, %4312
  %4321 = fmul fast float %4320, %1767
  %4322 = fmul fast float %2377, 0x4012D0A400000000
  %4323 = fadd fast float %4292, 1.000000e+00
  %4324 = fadd fast float %4291, 1.000000e+00
  %4325 = fadd fast float %4290, 1.000000e+00
  %4326 = fmul fast float %3755, %3689
  %4327 = fmul fast float %3755, %3688
  %4328 = fmul fast float %3755, %3687
  %4329 = fmul fast float %2405, %1767
  %4330 = fsub fast float 1.000000e+00, %4329
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = fsub fast float 1.000000e+00, %4331
  %4333 = fadd fast float %4322, 0x3FDB6377A0000000
  %4334 = fmul fast float %4332, %4333
  %4335 = call float @dx.op.dot3.f32(i32 55, float %1830, float %1831, float %1832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4336 = fadd fast float %4334, %4335
  %4337 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4338 = call float @dx.op.binary.f32(i32 35, float %4337, float 0x3F847AE140000000)  ; FMax(a,b)
  %4339 = fmul fast float %4338, %4338
  %4340 = fmul fast float %4339, %4339
  %4341 = fmul fast float %4340, 0xC00A935000000000
  %4342 = call float @dx.op.unary.f32(i32 21, float %4341)  ; Exp(value)
  %4343 = fsub fast float 1.000000e+00, %4342
  %4344 = fmul fast float %4325, %3691
  %4345 = fmul fast float %4344, %4343
  %4346 = fmul fast float %4324, %3692
  %4347 = fmul fast float %4346, %4343
  %4348 = fmul fast float %4323, %3693
  %4349 = fmul fast float %4348, %4343
  %4350 = fadd fast float %4345, %4328
  %4351 = fmul fast float %4350, %1767
  %4352 = fadd fast float %4347, %4327
  %4353 = fmul fast float %4352, %1767
  %4354 = fadd fast float %4349, %4326
  %4355 = fmul fast float %4354, %1767
  %4356 = bitcast i32 %2414 to float
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 3
  %4359 = fcmp fast oeq float %4358, 0.000000e+00
  br i1 %4359, label %6037, label %4360

; <label>:4360                                    ; preds = %4244
  %4361 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4362 = extractvalue %dx.types.CBufRet.f32 %4357, 1
  %4363 = extractvalue %dx.types.CBufRet.f32 %4357, 2
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.CBufRet.f32 %4364, 1
  %4367 = extractvalue %dx.types.CBufRet.f32 %4364, 2
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.CBufRet.f32 %4368, 1
  %4371 = call float @dx.op.dot3.f32(i32 55, float %4365, float %4366, float %4367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4372 = select i1 %269, float %4369, float %4365
  %4373 = select i1 %269, float %4371, float %4366
  %4374 = select i1 %269, float %4370, float %4367
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 2
  %4377 = fmul fast float %4376, %76
  %4378 = fmul fast float %4376, %77
  %4379 = fmul fast float %4376, %78
  %4380 = fadd fast float %4377, %146
  %4381 = fadd fast float %4378, %147
  %4382 = fadd fast float %4379, %148
  %4383 = fcmp fast olt float %4358, 0.000000e+00
  br i1 %4383, label %5479, label %4384

; <label>:4384                                    ; preds = %4360
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  %4387 = extractvalue %dx.types.CBufRet.f32 %4385, 1
  %4388 = extractvalue %dx.types.CBufRet.f32 %4385, 2
  %4389 = extractvalue %dx.types.CBufRet.f32 %4385, 3
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.CBufRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.CBufRet.f32 %4390, 2
  %4394 = extractvalue %dx.types.CBufRet.f32 %4390, 3
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.CBufRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.CBufRet.f32 %4395, 2
  %4399 = extractvalue %dx.types.CBufRet.f32 %4395, 3
  %4400 = fmul fast float %4386, %4380
  %4401 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4387, float %4400)  ; FMad(a,b,c)
  %4402 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4388, float %4401)  ; FMad(a,b,c)
  %4403 = fadd fast float %4402, %4389
  %4404 = fmul fast float %4391, %4380
  %4405 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4392, float %4404)  ; FMad(a,b,c)
  %4406 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4393, float %4405)  ; FMad(a,b,c)
  %4407 = fadd fast float %4406, %4394
  %4408 = fmul fast float %4396, %4380
  %4409 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4397, float %4408)  ; FMad(a,b,c)
  %4410 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4398, float %4409)  ; FMad(a,b,c)
  %4411 = fadd fast float %4410, %4399
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 0
  %4414 = extractvalue %dx.types.CBufRet.f32 %4412, 1
  %4415 = extractvalue %dx.types.CBufRet.f32 %4412, 3
  %4416 = fmul fast float %4415, %4403
  %4417 = fmul fast float %4415, %4407
  %4418 = fadd fast float %4416, %4413
  %4419 = fadd fast float %4417, %4414
  %4420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.f32 %4420, 0
  %4422 = extractvalue %dx.types.CBufRet.f32 %4420, 1
  %4423 = extractvalue %dx.types.CBufRet.f32 %4420, 3
  %4424 = fmul fast float %4423, %4403
  %4425 = fmul fast float %4423, %4407
  %4426 = fadd fast float %4424, %4421
  %4427 = fadd fast float %4425, %4422
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 1
  %4430 = fsub fast float %4429, %4411
  %4431 = extractvalue %dx.types.CBufRet.f32 %4428, 2
  %4432 = fmul fast float %4430, %4431
  %4433 = fsub fast float 1.000000e+00, %4432
  %4434 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4420, 2
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 2
  %4438 = fadd fast float %4437, %4435
  %4439 = fcmp fast ogt float %4438, 0.000000e+00
  br i1 %4439, label %4440, label %4464

; <label>:4440                                    ; preds = %4384
  %4441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.f32 %4441, 0
  %4443 = extractvalue %dx.types.CBufRet.f32 %4441, 1
  %4444 = fsub fast float %4426, %4442
  %4445 = fsub fast float %4427, %4443
  %4446 = fcmp fast olt float %4444, 0.000000e+00
  %4447 = fcmp fast olt float %4445, 0.000000e+00
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.CBufRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.CBufRet.f32 %4448, 2
  %4452 = extractvalue %dx.types.CBufRet.f32 %4448, 3
  %4453 = select i1 %4446, float %4449, float %4451
  %4454 = select i1 %4447, float %4450, float %4452
  %4455 = fmul fast float %4453, %4444
  %4456 = fmul fast float %4454, %4445
  %4457 = call float @dx.op.unary.f32(i32 6, float %4455)  ; FAbs(value)
  %4458 = call float @dx.op.unary.f32(i32 6, float %4456)  ; FAbs(value)
  %4459 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4460 = call float @dx.op.binary.f32(i32 35, float %4457, float %4458)  ; FMax(a,b)
  %4461 = fsub fast float %4459, %4460
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = fmul fast float %4462, %4434
  br label %4464

; <label>:4464                                    ; preds = %4440, %4384
  %4465 = phi float [ %4463, %4440 ], [ 0.000000e+00, %4384 ]
  %4466 = extractvalue %dx.types.CBufRet.f32 %4412, 2
  %4467 = extractvalue %dx.types.CBufRet.f32 %4436, 1
  %4468 = fadd fast float %4467, %4466
  %4469 = fcmp fast ogt float %4468, 0.000000e+00
  %4470 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  br i1 %4469, label %4471, label %4494

; <label>:4471                                    ; preds = %4464
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 0
  %4474 = extractvalue %dx.types.CBufRet.f32 %4472, 1
  %4475 = fsub fast float %4418, %4473
  %4476 = fsub fast float %4419, %4474
  %4477 = fcmp fast olt float %4475, 0.000000e+00
  %4478 = fcmp fast olt float %4476, 0.000000e+00
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 0
  %4481 = extractvalue %dx.types.CBufRet.f32 %4479, 1
  %4482 = extractvalue %dx.types.CBufRet.f32 %4479, 2
  %4483 = extractvalue %dx.types.CBufRet.f32 %4479, 3
  %4484 = select i1 %4477, float %4480, float %4482
  %4485 = select i1 %4478, float %4481, float %4483
  %4486 = fmul fast float %4484, %4475
  %4487 = fmul fast float %4485, %4476
  %4488 = call float @dx.op.unary.f32(i32 6, float %4486)  ; FAbs(value)
  %4489 = call float @dx.op.unary.f32(i32 6, float %4487)  ; FAbs(value)
  %4490 = call float @dx.op.binary.f32(i32 35, float %4488, float %4489)  ; FMax(a,b)
  %4491 = fsub fast float %4470, %4490
  %4492 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4493 = fmul fast float %4492, %4434
  br label %4494

; <label>:4494                                    ; preds = %4471, %4464
  %4495 = phi float [ %4493, %4471 ], [ 0.000000e+00, %4464 ]
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 1
  %4498 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 0
  %4501 = extractvalue %dx.types.CBufRet.f32 %4499, 1
  %4502 = fsub fast float %4403, %4500
  %4503 = fsub fast float %4407, %4501
  %4504 = fcmp fast olt float %4502, 0.000000e+00
  %4505 = fcmp fast olt float %4503, 0.000000e+00
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 0
  %4508 = extractvalue %dx.types.CBufRet.f32 %4506, 1
  %4509 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4510 = extractvalue %dx.types.CBufRet.f32 %4506, 3
  %4511 = select i1 %4504, float %4507, float %4509
  %4512 = select i1 %4505, float %4508, float %4510
  %4513 = fmul fast float %4511, %4502
  %4514 = fmul fast float %4512, %4503
  %4515 = call float @dx.op.unary.f32(i32 6, float %4513)  ; FAbs(value)
  %4516 = call float @dx.op.unary.f32(i32 6, float %4514)  ; FAbs(value)
  %4517 = call float @dx.op.binary.f32(i32 35, float %4515, float %4516)  ; FMax(a,b)
  %4518 = fsub fast float %4470, %4517
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = call float @dx.op.binary.f32(i32 36, float %4519, float %4498)  ; FMin(a,b)
  %4521 = fmul fast float %4520, %4434
  %4522 = fsub fast float %4495, %4521
  %4523 = fsub fast float %4465, %4495
  %4524 = fsub fast float %4523, %4521
  %4525 = call float @dx.op.binary.f32(i32 35, float %4495, float %4465)  ; FMax(a,b)
  %4526 = call float @dx.op.binary.f32(i32 35, float %4521, float %4525)  ; FMax(a,b)
  %4527 = fcmp fast olt float %4526, 1.000000e+00
  br i1 %4527, label %4528, label %4926, !dx.controlflow.hints !116

; <label>:4528                                    ; preds = %4494
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = fcmp fast une float %4530, 0.000000e+00
  br i1 %4531, label %4532, label %4926, !dx.controlflow.hints !117

; <label>:4532                                    ; preds = %4528
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.CBufRet.f32 %4533, 1
  %4536 = extractvalue %dx.types.CBufRet.f32 %4533, 2
  %4537 = extractvalue %dx.types.CBufRet.f32 %4533, 3
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 0
  %4540 = extractvalue %dx.types.CBufRet.f32 %4538, 1
  %4541 = extractvalue %dx.types.CBufRet.f32 %4538, 2
  %4542 = extractvalue %dx.types.CBufRet.f32 %4538, 3
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.CBufRet.f32 %4543, 2
  %4547 = extractvalue %dx.types.CBufRet.f32 %4543, 3
  %4548 = fmul fast float %4534, %4380
  %4549 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4535, float %4548)  ; FMad(a,b,c)
  %4550 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4536, float %4549)  ; FMad(a,b,c)
  %4551 = fadd fast float %4550, %4537
  %4552 = fmul fast float %4539, %4380
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4540, float %4552)  ; FMad(a,b,c)
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4541, float %4553)  ; FMad(a,b,c)
  %4555 = fadd fast float %4554, %4542
  %4556 = fmul fast float %4544, %4380
  %4557 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4545, float %4556)  ; FMad(a,b,c)
  %4558 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4546, float %4557)  ; FMad(a,b,c)
  %4559 = fadd fast float %4558, %4547
  %4560 = fcmp fast oge float %4551, 1.000000e+00
  %4561 = fcmp fast oge float %4555, 1.000000e+00
  %4562 = or i1 %4560, %4561
  %4563 = fcmp fast olt float %4551, 0.000000e+00
  %4564 = fcmp fast olt float %4555, 0.000000e+00
  %4565 = or i1 %4563, %4564
  %4566 = or i1 %4562, %4565
  br i1 %4566, label %4926, label %4567, !dx.controlflow.hints !118

; <label>:4567                                    ; preds = %4532
  %4568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4568, 0
  %4570 = extractvalue %dx.types.CBufRet.f32 %4568, 1
  %4571 = extractvalue %dx.types.CBufRet.f32 %4568, 2
  %4572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.i32 %4572, 2
  %4574 = uitofp i32 %4573 to float
  %4575 = extractvalue %dx.types.CBufRet.i32 %4572, 3
  %4576 = uitofp i32 %4575 to float
  %4577 = extractvalue %dx.types.CBufRet.f32 %4568, 3
  %4578 = fmul fast float %4577, 2.000000e+00
  %4579 = fsub fast float %4551, %4569
  %4580 = fsub fast float %4555, %4570
  %4581 = fmul fast float %4578, %4579
  %4582 = fmul fast float %4578, %4580
  %4583 = fdiv fast float 1.000000e+00, %4363
  %4584 = fmul fast float %4582, %4583
  %4585 = call float @dx.op.unary.f32(i32 6, float %4584)  ; FAbs(value)
  %4586 = fmul fast float %4571, %4382
  %4587 = fmul fast float %4586, %4578
  %4588 = call float @dx.op.unary.f32(i32 6, float %4587)  ; FAbs(value)
  %4589 = call float @dx.op.unary.f32(i32 6, float %4581)  ; FAbs(value)
  %4590 = call float @dx.op.binary.f32(i32 35, float %4588, float %4585)  ; FMax(a,b)
  %4591 = call float @dx.op.binary.f32(i32 35, float %4589, float %4590)  ; FMax(a,b)
  %4592 = fmul fast float %4591, 2.000000e+00
  %4593 = call float @dx.op.unary.f32(i32 23, float %4592)  ; Log(value)
  %4594 = call float @dx.op.binary.f32(i32 35, float %4593, float %4574)  ; FMax(a,b)
  %4595 = call float @dx.op.unary.f32(i32 22, float %4594)  ; Frc(value)
  %4596 = fadd fast float %4595, 0xBFEA666660000000
  %4597 = fmul fast float %4596, 8.000000e+00
  %4598 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4599 = call float @dx.op.unary.f32(i32 27, float %4594)  ; Round_ni(value)
  %4600 = fadd fast float %4599, %4598
  %4601 = call float @dx.op.binary.f32(i32 36, float %4600, float %4576)  ; FMin(a,b)
  %4602 = call float @dx.op.unary.f32(i32 27, float %4601)  ; Round_ni(value)
  %4603 = fsub fast float -0.000000e+00, %4602
  %4604 = call float @dx.op.unary.f32(i32 21, float %4603)  ; Exp(value)
  %4605 = fmul fast float %4604, %4578
  %4606 = fmul fast float %4605, %4551
  %4607 = fmul fast float %4605, %4555
  %4608 = fmul fast float %4606, 2.500000e-01
  %4609 = fmul fast float %4607, 2.500000e-01
  %4610 = fadd fast float %4608, 5.000000e-01
  %4611 = fadd fast float %4609, 5.000000e-01
  %4612 = fsub fast float %4576, %4574
  %4613 = fptoui float %4612 to i32
  %4614 = add i32 %4613, 320
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4614)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.CBufRet.f32 %4615, 1
  %4618 = fcmp fast une float %4601, %4576
  %4619 = fsub fast float %4551, %4616
  %4620 = fsub fast float %4555, %4617
  %4621 = call float @dx.op.unary.f32(i32 6, float %4619)  ; FAbs(value)
  %4622 = call float @dx.op.unary.f32(i32 6, float %4620)  ; FAbs(value)
  %4623 = fmul fast float %4621, %4605
  %4624 = fmul fast float %4622, %4605
  %4625 = fcmp fast olt float %4623, 1.000000e+00
  %4626 = fcmp fast olt float %4624, 1.000000e+00
  %4627 = and i1 %4625, %4626
  %4628 = or i1 %4618, %4627
  br i1 %4628, label %4629, label %4926, !dx.controlflow.hints !119

; <label>:4629                                    ; preds = %4567
  %4630 = fmul fast float %4607, 5.000000e-01
  %4631 = fmul fast float %4606, 5.000000e-01
  %4632 = fadd fast float %4630, 5.000000e-01
  %4633 = fadd fast float %4631, 5.000000e-01
  %4634 = sitofp i32 %4573 to float
  %4635 = fsub fast float %4601, %4634
  %4636 = call float @dx.op.unary.f32(i32 27, float %4635)  ; Round_ni(value)
  %4637 = call float @dx.op.unary.f32(i32 22, float %4601)  ; Frc(value)
  %4638 = call float @dx.op.unary.f32(i32 22, float %4633)  ; Frc(value)
  %4639 = call float @dx.op.unary.f32(i32 22, float %4632)  ; Frc(value)
  %4640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4638, float %4639, float %4636, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.ResRet.f32 %4640, 1
  %4643 = extractvalue %dx.types.ResRet.f32 %4640, 2
  %4644 = extractvalue %dx.types.ResRet.f32 %4640, 3
  %4645 = fcmp fast ogt float %4637, 0.000000e+00
  br i1 %4645, label %4646, label %4667, !dx.controlflow.hints !120

; <label>:4646                                    ; preds = %4629
  %4647 = fadd fast float %4636, 1.000000e+00
  %4648 = call float @dx.op.unary.f32(i32 22, float %4610)  ; Frc(value)
  %4649 = call float @dx.op.unary.f32(i32 22, float %4611)  ; Frc(value)
  %4650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4648, float %4649, float %4647, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = extractvalue %dx.types.ResRet.f32 %4650, 1
  %4653 = extractvalue %dx.types.ResRet.f32 %4650, 2
  %4654 = extractvalue %dx.types.ResRet.f32 %4650, 3
  %4655 = fsub fast float %4651, %4641
  %4656 = fsub fast float %4652, %4642
  %4657 = fsub fast float %4653, %4643
  %4658 = fsub fast float %4654, %4644
  %4659 = fmul fast float %4655, %4637
  %4660 = fmul fast float %4656, %4637
  %4661 = fmul fast float %4657, %4637
  %4662 = fmul fast float %4658, %4637
  %4663 = fadd fast float %4659, %4641
  %4664 = fadd fast float %4660, %4642
  %4665 = fadd fast float %4661, %4643
  %4666 = fadd fast float %4662, %4644
  br label %4667

; <label>:4667                                    ; preds = %4646, %4629
  %4668 = phi float [ %4663, %4646 ], [ %4641, %4629 ]
  %4669 = phi float [ %4664, %4646 ], [ %4642, %4629 ]
  %4670 = phi float [ %4665, %4646 ], [ %4643, %4629 ]
  %4671 = phi float [ %4666, %4646 ], [ %4644, %4629 ]
  %4672 = fadd fast float %4668, -5.000000e-01
  %4673 = fadd fast float %4670, -5.000000e-01
  %4674 = fmul fast float %4672, 0xBFD5555560000000
  %4675 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4673, float %4674)  ; FMad(a,b,c)
  %4676 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4669, float 0.000000e+00)  ; FMad(a,b,c)
  %4677 = fadd fast float %4676, %4671
  %4678 = fmul fast float %4672, -7.500000e-01
  %4679 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4673, float %4678)  ; FMad(a,b,c)
  %4680 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4669, float 0.000000e+00)  ; FMad(a,b,c)
  %4681 = fadd fast float %4680, %4671
  %4682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.f32 %4682, 0
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 0
  %4686 = extractvalue %dx.types.CBufRet.f32 %4684, 1
  %4687 = extractvalue %dx.types.CBufRet.f32 %4684, 2
  %4688 = extractvalue %dx.types.CBufRet.f32 %4684, 3
  %4689 = fsub fast float %4685, %4675
  %4690 = fsub fast float %4686, %4677
  %4691 = fsub fast float %4687, %4679
  %4692 = fsub fast float %4688, %4681
  %4693 = fmul fast float %4689, %4683
  %4694 = fmul fast float %4690, %4683
  %4695 = fmul fast float %4691, %4683
  %4696 = fmul fast float %4692, %4683
  %4697 = fadd fast float %4693, %4675
  %4698 = fadd fast float %4694, %4677
  %4699 = fadd fast float %4695, %4679
  %4700 = fadd fast float %4696, %4681
  %4701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4702 = extractvalue %dx.types.ResRet.i32 %4701, 0
  %4703 = and i32 %4702, 536870911
  %4704 = uitofp i32 %4703 to float
  %4705 = fmul fast float %4704, %4551
  %4706 = fmul fast float %4704, %4555
  %4707 = fptoui float %4705 to i32
  %4708 = fptoui float %4706 to i32
  %4709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4710 = extractvalue %dx.types.ResRet.i32 %4709, 0
  %4711 = and i32 %4710, 31
  %4712 = lshr i32 %4707, %4711
  %4713 = lshr i32 %4708, %4711
  %4714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4715 = extractvalue %dx.types.ResRet.i32 %4714, 0
  %4716 = and i32 %4715, 31
  %4717 = shl i32 1, %4716
  %4718 = call i32 @dx.op.binary.i32(i32 40, i32 %4717, i32 4)  ; UMin(a,b)
  %4719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4720 = extractvalue %dx.types.ResRet.i32 %4719, 0
  %4721 = extractvalue %dx.types.ResRet.i32 %4719, 1
  %4722 = icmp eq i32 %4718, 0
  br i1 %4722, label %4764, label %4723

; <label>:4723                                    ; preds = %4667
  br label %4724

; <label>:4724                                    ; preds = %4752, %4723
  %4725 = phi i32 [ %4755, %4752 ], [ 0, %4723 ]
  %4726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4727 = extractvalue %dx.types.ResRet.i32 %4726, 0
  %4728 = lshr i32 %4727, 16
  %4729 = and i32 %4728, 31
  %4730 = shl i32 %4713, %4729
  %4731 = add i32 %4730, %4712
  %4732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4733 = extractvalue %dx.types.ResRet.i32 %4732, 0
  %4734 = and i32 %4733, 31
  %4735 = shl i32 %4731, %4734
  %4736 = add i32 %4735, %4725
  %4737 = shl i32 %4736, 2
  %4738 = add i32 %4737, 32
  %4739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4738, i32 undef)  ; BufferLoad(srv,index,wot)
  %4740 = extractvalue %dx.types.ResRet.i32 %4739, 0
  %4741 = icmp slt i32 %4740, 0
  %4742 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4725
  %4743 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4725
  %4744 = bitcast float* %4742 to i32*
  %4745 = bitcast float* %4743 to i32*
  br i1 %4741, label %4746, label %4752

; <label>:4746                                    ; preds = %4724
  %4747 = and i32 %4740, 1073741823
  %4748 = add nuw nsw i32 %4747, 20
  %4749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4748, i32 undef)  ; BufferLoad(srv,index,wot)
  %4750 = extractvalue %dx.types.ResRet.i32 %4749, 0
  %4751 = extractvalue %dx.types.ResRet.i32 %4749, 1
  br label %4752

; <label>:4752                                    ; preds = %4746, %4724
  %4753 = phi i32 [ %4750, %4746 ], [ %4720, %4724 ]
  %4754 = phi i32 [ %4751, %4746 ], [ %4721, %4724 ]
  store i32 %4753, i32* %4744, align 4
  store i32 %4754, i32* %4745, align 4
  %4755 = add nuw i32 %4725, 1
  %4756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.i32 %4756, 2
  %4758 = icmp eq i32 %4757, 0
  %4759 = icmp ugt i32 %4740, -1073741825
  %4760 = and i1 %4759, %4758
  %4761 = icmp ult i32 %4755, %4718
  %4762 = and i1 %4760, %4761
  br i1 %4762, label %4724, label %4763

; <label>:4763                                    ; preds = %4752
  br label %4764

; <label>:4764                                    ; preds = %4763, %4667
  %4765 = phi i32 [ 0, %4667 ], [ %4755, %4763 ]
  %4766 = extractvalue %dx.types.CBufRet.f32 %4529, 2
  %4767 = fptoui float %4766 to i32
  %4768 = icmp eq i32 %4767, 0
  br i1 %4768, label %4820, label %4769

; <label>:4769                                    ; preds = %4764
  br label %4770

; <label>:4770                                    ; preds = %4815, %4769
  %4771 = phi i32 [ %4816, %4815 ], [ %4765, %4769 ]
  %4772 = phi i32 [ %4817, %4815 ], [ 0, %4769 ]
  %4773 = lshr i32 %4772, 2
  %4774 = and i32 %4772, 3
  %4775 = add nuw nsw i32 %4773, 83
  %4776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4775)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.i32 %4776, 0
  %4778 = extractvalue %dx.types.CBufRet.i32 %4776, 1
  %4779 = extractvalue %dx.types.CBufRet.i32 %4776, 2
  %4780 = extractvalue %dx.types.CBufRet.i32 %4776, 3
  %4781 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4777, i32* %4781, align 4
  %4782 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4778, i32* %4782, align 4
  %4783 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4779, i32* %4783, align 4
  %4784 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4780, i32* %4784, align 4
  %4785 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4774
  %4786 = load i32, i32* %4785, align 4, !tbaa !121, !noalias !125
  %4787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4788 = extractvalue %dx.types.ResRet.i32 %4787, 0
  %4789 = lshr i32 %4788, 16
  %4790 = and i32 %4789, 31
  %4791 = shl i32 %4713, %4790
  %4792 = add i32 %4791, %4712
  %4793 = shl i32 %4792, 2
  %4794 = add i32 %4793, %4786
  %4795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4794, i32 undef)  ; BufferLoad(srv,index,wot)
  %4796 = extractvalue %dx.types.ResRet.i32 %4795, 0
  %4797 = icmp eq i32 %4796, 0
  br i1 %4797, label %4815, label %4798

; <label>:4798                                    ; preds = %4770
  %4799 = icmp slt i32 %4796, 0
  %4800 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4771
  %4801 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4771
  %4802 = bitcast float* %4800 to i32*
  %4803 = bitcast float* %4801 to i32*
  br i1 %4799, label %4804, label %4811

; <label>:4804                                    ; preds = %4798
  %4805 = and i32 %4796, 1073741823
  %4806 = add i32 %4786, 20
  %4807 = add i32 %4806, %4805
  %4808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4807, i32 undef)  ; BufferLoad(srv,index,wot)
  %4809 = extractvalue %dx.types.ResRet.i32 %4808, 0
  %4810 = extractvalue %dx.types.ResRet.i32 %4808, 1
  br label %4811

; <label>:4811                                    ; preds = %4804, %4798
  %4812 = phi i32 [ %4809, %4804 ], [ %4720, %4798 ]
  %4813 = phi i32 [ %4810, %4804 ], [ %4721, %4798 ]
  store i32 %4812, i32* %4802, align 4
  store i32 %4813, i32* %4803, align 4
  %4814 = add i32 %4771, 1
  br label %4815

; <label>:4815                                    ; preds = %4811, %4770
  %4816 = phi i32 [ %4771, %4770 ], [ %4814, %4811 ]
  %4817 = add nuw i32 %4772, 1
  %4818 = icmp eq i32 %4817, %4767
  br i1 %4818, label %4819, label %4770

; <label>:4819                                    ; preds = %4815
  br label %4820

; <label>:4820                                    ; preds = %4819, %4764
  %4821 = phi i32 [ %4765, %4764 ], [ %4816, %4819 ]
  %4822 = icmp eq i32 %4821, 1
  %4823 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %4824 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %4822, label %4825, label %4828

; <label>:4825                                    ; preds = %4820
  %4826 = load float, float* %4823, align 4
  %4827 = load float, float* %4824, align 4
  br label %4855

; <label>:4828                                    ; preds = %4820
  %4829 = load float, float* %4823, align 4
  %4830 = load float, float* %4824, align 4
  %4831 = fdiv fast float 1.000000e+00, %4830
  %4832 = fsub fast float %4829, %4831
  %4833 = icmp ugt i32 %4821, 1
  br i1 %4833, label %4834, label %4850

; <label>:4834                                    ; preds = %4828
  br label %4835

; <label>:4835                                    ; preds = %4835, %4834
  %4836 = phi float [ %4845, %4835 ], [ %4832, %4834 ]
  %4837 = phi float [ %4846, %4835 ], [ %4829, %4834 ]
  %4838 = phi i32 [ %4847, %4835 ], [ 1, %4834 ]
  %4839 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4838
  %4840 = load float, float* %4839, align 4
  %4841 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4838
  %4842 = load float, float* %4841, align 4
  %4843 = fdiv fast float 1.000000e+00, %4842
  %4844 = fsub fast float %4840, %4843
  %4845 = call float @dx.op.binary.f32(i32 36, float %4836, float %4844)  ; FMin(a,b)
  %4846 = call float @dx.op.binary.f32(i32 35, float %4837, float %4840)  ; FMax(a,b)
  %4847 = add nuw i32 %4838, 1
  %4848 = icmp eq i32 %4847, %4821
  br i1 %4848, label %4849, label %4835

; <label>:4849                                    ; preds = %4835
  br label %4850

; <label>:4850                                    ; preds = %4849, %4828
  %4851 = phi float [ %4832, %4828 ], [ %4845, %4849 ]
  %4852 = phi float [ %4829, %4828 ], [ %4846, %4849 ]
  %4853 = fsub fast float %4852, %4851
  %4854 = fdiv fast float 1.000000e+00, %4853
  br label %4855

; <label>:4855                                    ; preds = %4850, %4825
  %4856 = phi float [ %4826, %4825 ], [ %4852, %4850 ]
  %4857 = phi float [ %4827, %4825 ], [ %4854, %4850 ]
  %4858 = fadd fast float %4559, %4856
  %4859 = fmul fast float %4858, %4857
  %4860 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4861 = fmul fast float %4860, 2.000000e+00
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = fmul fast float %4697, %4697
  %4864 = fsub fast float %4698, %4863
  %4865 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4864)  ; FMax(a,b)
  %4866 = fdiv fast float 1.000000e+00, %4865
  %4867 = fmul fast float %4698, %4697
  %4868 = fsub fast float %4699, %4867
  %4869 = fsub fast float %4862, %4697
  %4870 = fmul fast float %4862, %4862
  %4871 = fsub fast float %4870, %4698
  %4872 = fmul fast float %4866, %4868
  %4873 = fmul fast float %4872, %4869
  %4874 = fsub fast float %4871, %4873
  %4875 = fmul fast float %4698, %4698
  %4876 = fsub fast float %4700, %4875
  %4877 = fmul fast float %4868, %4868
  %4878 = fmul fast float %4877, %4866
  %4879 = fsub fast float %4876, %4878
  %4880 = fdiv fast float %4874, %4879
  %4881 = fmul fast float %4880, %4868
  %4882 = fsub fast float %4869, %4881
  %4883 = fmul fast float %4882, %4866
  %4884 = fmul fast float %4883, %4697
  %4885 = fsub fast float 1.000000e+00, %4884
  %4886 = fmul fast float %4880, %4698
  %4887 = fsub fast float %4885, %4886
  %4888 = fmul fast float %4883, %4883
  %4889 = fmul fast float %4880, 4.000000e+00
  %4890 = fmul fast float %4889, %4887
  %4891 = fsub fast float %4888, %4890
  %4892 = call float @dx.op.unary.f32(i32 24, float %4891)  ; Sqrt(value)
  %4893 = fcmp fast oge float %4883, 0.000000e+00
  %4894 = fsub fast float -0.000000e+00, %4892
  %4895 = select i1 %4893, float %4894, float %4892
  %4896 = fsub fast float %4895, %4883
  %4897 = fdiv fast float %4896, %4880
  %4898 = fdiv fast float %4887, %4896
  %4899 = fmul fast float %4897, 5.000000e-01
  %4900 = fmul fast float %4898, 2.000000e+00
  %4901 = select i1 %4893, float %4899, float %4900
  %4902 = select i1 %4893, float %4900, float %4899
  %4903 = call float @dx.op.binary.f32(i32 35, float %4901, float %4902)  ; FMax(a,b)
  %4904 = call float @dx.op.binary.f32(i32 36, float %4901, float %4902)  ; FMin(a,b)
  %4905 = fcmp fast ogt float %4862, %4903
  %4906 = fsub fast float %4862, %4904
  %4907 = fsub fast float %4862, %4903
  %4908 = fsub fast float %4903, %4904
  %4909 = select i1 %4905, float %4907, float %4908
  %4910 = fmul float %4906, %4909
  %4911 = select i1 %4905, float %4904, float %4862
  %4912 = fcmp fast ogt float %4862, %4904
  %4913 = fmul fast float %4911, %4903
  %4914 = fadd fast float %4911, %4903
  %4915 = fmul fast float %4914, %4697
  %4916 = fadd fast float %4913, %4698
  %4917 = fsub fast float %4916, %4915
  %4918 = fdiv fast float %4917, %4910
  %4919 = select i1 %4912, float %4918, float 0.000000e+00
  %4920 = fsub fast float 1.000000e+00, %4919
  %4921 = select i1 %4905, float %4920, float %4919
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = extractvalue %dx.types.CBufRet.f32 %4682, 3
  %4924 = fmul fast float %4923, %4922
  %4925 = fsub fast float 1.000000e+00, %4924
  br label %4926

; <label>:4926                                    ; preds = %4855, %4567, %4532, %4528, %4494
  %4927 = phi float [ 1.000000e+00, %4494 ], [ %4925, %4855 ], [ 1.000000e+00, %4532 ], [ 1.000000e+00, %4567 ], [ 1.000000e+00, %4528 ]
  %4928 = fcmp fast ogt float %4524, 0.000000e+00
  br i1 %4928, label %4929, label %5091, !dx.controlflow.hints !134

; <label>:4929                                    ; preds = %4926
  %4930 = fadd fast float %4437, %4411
  %4931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4932 = extractvalue %dx.types.CBufRet.f32 %4931, 2
  %4933 = extractvalue %dx.types.CBufRet.f32 %4931, 3
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 2
  %4936 = call float @dx.op.binary.f32(i32 35, float %4930, float 0.000000e+00)  ; FMax(a,b)
  %4937 = fadd fast float %4936, 0x3F10000000000000
  %4938 = fcmp fast oeq float %4935, 0.000000e+00
  br i1 %4938, label %4939, label %5006

; <label>:4939                                    ; preds = %4929
  %4940 = extractvalue %dx.types.CBufRet.f32 %4931, 1
  %4941 = extractvalue %dx.types.CBufRet.f32 %4931, 0
  %4942 = fmul fast float %4941, %4426
  %4943 = fmul fast float %4940, %4427
  %4944 = fadd fast float %4942, 5.000000e-01
  %4945 = call float @dx.op.unary.f32(i32 27, float %4944)  ; Round_ni(value)
  %4946 = fadd fast float %4943, 5.000000e-01
  %4947 = call float @dx.op.unary.f32(i32 27, float %4946)  ; Round_ni(value)
  %4948 = fsub fast float %4944, %4945
  %4949 = fsub fast float %4946, %4947
  %4950 = fadd fast float %4945, -5.000000e-01
  %4951 = fadd fast float %4947, -5.000000e-01
  %4952 = fmul fast float %4948, 2.000000e+00
  %4953 = fsub fast float 3.000000e+00, %4952
  %4954 = fadd fast float %4952, 1.000000e+00
  %4955 = fsub fast float 2.000000e+00, %4948
  %4956 = bitcast float %4953 to i32
  %4957 = sub nsw i32 2129859010, %4956
  %4958 = bitcast i32 %4957 to float
  %4959 = fmul fast float %4958, %4955
  %4960 = fadd fast float %4959, -1.000000e+00
  %4961 = bitcast float %4954 to i32
  %4962 = sub nsw i32 2129859010, %4961
  %4963 = bitcast i32 %4962 to float
  %4964 = fmul fast float %4963, %4948
  %4965 = fadd fast float %4964, 1.000000e+00
  %4966 = fmul fast float %4949, 2.000000e+00
  %4967 = fsub fast float 3.000000e+00, %4966
  %4968 = fadd fast float %4966, 1.000000e+00
  %4969 = fsub fast float 2.000000e+00, %4949
  %4970 = bitcast float %4967 to i32
  %4971 = sub nsw i32 2129859010, %4970
  %4972 = bitcast i32 %4971 to float
  %4973 = fmul fast float %4972, %4969
  %4974 = fadd fast float %4973, -1.000000e+00
  %4975 = bitcast float %4968 to i32
  %4976 = sub nsw i32 2129859010, %4975
  %4977 = bitcast i32 %4976 to float
  %4978 = fmul fast float %4977, %4949
  %4979 = fadd fast float %4978, 1.000000e+00
  %4980 = fadd fast float %4960, %4950
  %4981 = fmul fast float %4980, %4932
  %4982 = fadd fast float %4974, %4951
  %4983 = fmul fast float %4982, %4933
  %4984 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4981, float %4983, float undef, float undef, i32 0, i32 0, i32 undef, float %4937)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4985 = extractvalue %dx.types.ResRet.f32 %4984, 0
  %4986 = fmul fast float %4985, %4953
  %4987 = fadd fast float %4965, %4950
  %4988 = fmul fast float %4987, %4932
  %4989 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4988, float %4983, float undef, float undef, i32 0, i32 0, i32 undef, float %4937)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4990 = extractvalue %dx.types.ResRet.f32 %4989, 0
  %4991 = fmul fast float %4990, %4954
  %4992 = fadd fast float %4979, %4951
  %4993 = fmul fast float %4992, %4933
  %4994 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4981, float %4993, float undef, float undef, i32 0, i32 0, i32 undef, float %4937)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4995 = extractvalue %dx.types.ResRet.f32 %4994, 0
  %4996 = fmul fast float %4995, %4953
  %4997 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4988, float %4993, float undef, float undef, i32 0, i32 0, i32 undef, float %4937)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4998 = extractvalue %dx.types.ResRet.f32 %4997, 0
  %4999 = fmul fast float %4998, %4954
  %5000 = fadd fast float %4999, %4996
  %5001 = fmul fast float %5000, %4968
  %5002 = fadd fast float %4991, %4986
  %5003 = fmul fast float %5002, %4967
  %5004 = fadd fast float %5003, %5001
  %5005 = fmul fast float %5004, 6.250000e-02
  br label %5091

; <label>:5006                                    ; preds = %4929
  %5007 = fmul fast float %280, 0x401921FB60000000
  %5008 = call float @dx.op.unary.f32(i32 13, float %5007)  ; Sin(value)
  %5009 = call float @dx.op.unary.f32(i32 12, float %5007)  ; Cos(value)
  %5010 = fsub fast float -0.000000e+00, %5008
  br label %5011

; <label>:5011                                    ; preds = %5060, %5006
  %5012 = phi float [ 0.000000e+00, %5006 ], [ %5055, %5060 ]
  %5013 = phi float [ 0.000000e+00, %5006 ], [ %5057, %5060 ]
  %5014 = phi i32 [ 0, %5006 ], [ %5061, %5060 ]
  %5015 = mul i32 %5014, 2
  %5016 = add i32 0, %5015
  %5017 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5016
  %5018 = load float, float* %5017, align 4
  %5019 = mul i32 %5014, 2
  %5020 = add i32 1, %5019
  %5021 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5020
  %5022 = load float, float* %5021, align 4
  %5023 = fmul fast float %5018, %5009
  %5024 = call float @dx.op.tertiary.f32(i32 46, float %5022, float %5010, float %5023)  ; FMad(a,b,c)
  %5025 = fmul fast float %5018, %5008
  %5026 = call float @dx.op.tertiary.f32(i32 46, float %5022, float %5009, float %5025)  ; FMad(a,b,c)
  %5027 = fmul fast float %5024, %4935
  %5028 = fmul fast float %5026, %4935
  %5029 = fadd fast float %5027, %4426
  %5030 = fadd fast float %5028, %4427
  %5031 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %5029, float %5030, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.ResRet.f32 %5031, 1
  %5034 = extractvalue %dx.types.ResRet.f32 %5031, 2
  %5035 = extractvalue %dx.types.ResRet.f32 %5031, 3
  %5036 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %5032, float* %5036, align 4
  %5037 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %5033, float* %5037, align 4
  %5038 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %5034, float* %5038, align 4
  %5039 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %5035, float* %5039, align 4
  %5040 = fsub fast float %5032, %4937
  %5041 = fcmp fast olt float %5040, 0.000000e+00
  %5042 = select i1 %5041, float 0.000000e+00, float 1.000000e+00
  %5043 = fadd fast float %5042, %5012
  %5044 = fmul fast float %5042, %5040
  %5045 = fadd fast float %5044, %5013
  br label %5046

; <label>:5046                                    ; preds = %5046, %5011
  %5047 = phi i32 [ 1, %5011 ], [ %5058, %5046 ]
  %5048 = phi float [ %5045, %5011 ], [ %5057, %5046 ]
  %5049 = phi float [ %5043, %5011 ], [ %5055, %5046 ]
  %5050 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %5047
  %5051 = load float, float* %5050, align 4, !tbaa !135, !noalias !125
  %5052 = fsub fast float %5051, %4937
  %5053 = fcmp fast olt float %5052, 0.000000e+00
  %5054 = select i1 %5053, float 0.000000e+00, float 1.000000e+00
  %5055 = fadd fast float %5054, %5049
  %5056 = fmul fast float %5054, %5052
  %5057 = fadd fast float %5056, %5048
  %5058 = add nuw nsw i32 %5047, 1
  %5059 = icmp eq i32 %5058, 4
  br i1 %5059, label %5060, label %5046, !llvm.loop !137

; <label>:5060                                    ; preds = %5046
  %5061 = add nuw nsw i32 %5014, 1
  %5062 = icmp eq i32 %5061, 8
  br i1 %5062, label %5063, label %5011, !llvm.loop !138

; <label>:5063                                    ; preds = %5060
  %5064 = fdiv fast float 1.000000e+00, %5055
  %5065 = fmul fast float %5064, %5057
  %5066 = fdiv fast float 1.000000e+00, %4937
  %5067 = fmul fast float %5065, %5066
  %5068 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5069 = call float @dx.op.binary.f32(i32 35, float %5068, float 0.000000e+00)  ; FMax(a,b)
  %5070 = fmul fast float %5055, 3.125000e-02
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = fmul fast float %5071, 2.000000e+00
  %5073 = fadd fast float %5072, -1.000000e+00
  %5074 = fcmp fast ogt float %5073, 0.000000e+00
  %5075 = fcmp fast olt float %5073, 0.000000e+00
  %5076 = zext i1 %5074 to i32
  %5077 = zext i1 %5075 to i32
  %5078 = sub nsw i32 %5076, %5077
  %5079 = sitofp i32 %5078 to float
  %5080 = fmul fast float %5079, %5073
  %5081 = fsub fast float 1.000000e+00, %5080
  %5082 = fmul fast float %5081, %5081
  %5083 = fmul fast float %5082, %5081
  %5084 = fsub fast float %5081, %5083
  %5085 = fmul fast float %5084, %5069
  %5086 = fsub fast float 1.000000e+00, %5083
  %5087 = fsub fast float %5086, %5085
  %5088 = fmul fast float %5079, 5.000000e-01
  %5089 = fmul fast float %5088, %5087
  %5090 = fsub fast float 5.000000e-01, %5089
  br label %5091

; <label>:5091                                    ; preds = %5063, %4939, %4926
  %5092 = phi float [ 1.000000e+00, %4926 ], [ %5005, %4939 ], [ %5090, %5063 ]
  %5093 = fcmp fast ogt float %4522, 0.000000e+00
  br i1 %5093, label %5094, label %5258, !dx.controlflow.hints !139

; <label>:5094                                    ; preds = %5091
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 1
  %5097 = fadd fast float %5096, %4411
  %5098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5098, 2
  %5100 = extractvalue %dx.types.CBufRet.f32 %5098, 3
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 1
  %5103 = call float @dx.op.binary.f32(i32 35, float %5097, float 0.000000e+00)  ; FMax(a,b)
  %5104 = fadd fast float %5103, 0x3F10000000000000
  %5105 = fcmp fast oeq float %5102, 0.000000e+00
  br i1 %5105, label %5106, label %5173

; <label>:5106                                    ; preds = %5094
  %5107 = extractvalue %dx.types.CBufRet.f32 %5098, 1
  %5108 = extractvalue %dx.types.CBufRet.f32 %5098, 0
  %5109 = fmul fast float %5108, %4418
  %5110 = fmul fast float %5107, %4419
  %5111 = fadd fast float %5109, 5.000000e-01
  %5112 = call float @dx.op.unary.f32(i32 27, float %5111)  ; Round_ni(value)
  %5113 = fadd fast float %5110, 5.000000e-01
  %5114 = call float @dx.op.unary.f32(i32 27, float %5113)  ; Round_ni(value)
  %5115 = fsub fast float %5111, %5112
  %5116 = fsub fast float %5113, %5114
  %5117 = fadd fast float %5112, -5.000000e-01
  %5118 = fadd fast float %5114, -5.000000e-01
  %5119 = fmul fast float %5115, 2.000000e+00
  %5120 = fsub fast float 3.000000e+00, %5119
  %5121 = fadd fast float %5119, 1.000000e+00
  %5122 = fsub fast float 2.000000e+00, %5115
  %5123 = bitcast float %5120 to i32
  %5124 = sub nsw i32 2129859010, %5123
  %5125 = bitcast i32 %5124 to float
  %5126 = fmul fast float %5125, %5122
  %5127 = fadd fast float %5126, -1.000000e+00
  %5128 = bitcast float %5121 to i32
  %5129 = sub nsw i32 2129859010, %5128
  %5130 = bitcast i32 %5129 to float
  %5131 = fmul fast float %5130, %5115
  %5132 = fadd fast float %5131, 1.000000e+00
  %5133 = fmul fast float %5116, 2.000000e+00
  %5134 = fsub fast float 3.000000e+00, %5133
  %5135 = fadd fast float %5133, 1.000000e+00
  %5136 = fsub fast float 2.000000e+00, %5116
  %5137 = bitcast float %5134 to i32
  %5138 = sub nsw i32 2129859010, %5137
  %5139 = bitcast i32 %5138 to float
  %5140 = fmul fast float %5139, %5136
  %5141 = fadd fast float %5140, -1.000000e+00
  %5142 = bitcast float %5135 to i32
  %5143 = sub nsw i32 2129859010, %5142
  %5144 = bitcast i32 %5143 to float
  %5145 = fmul fast float %5144, %5116
  %5146 = fadd fast float %5145, 1.000000e+00
  %5147 = fadd fast float %5127, %5117
  %5148 = fmul fast float %5147, %5099
  %5149 = fadd fast float %5141, %5118
  %5150 = fmul fast float %5149, %5100
  %5151 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5148, float %5150, float undef, float undef, i32 0, i32 0, i32 undef, float %5104)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5152 = extractvalue %dx.types.ResRet.f32 %5151, 0
  %5153 = fmul fast float %5152, %5120
  %5154 = fadd fast float %5132, %5117
  %5155 = fmul fast float %5154, %5099
  %5156 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5155, float %5150, float undef, float undef, i32 0, i32 0, i32 undef, float %5104)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5157 = extractvalue %dx.types.ResRet.f32 %5156, 0
  %5158 = fmul fast float %5157, %5121
  %5159 = fadd fast float %5146, %5118
  %5160 = fmul fast float %5159, %5100
  %5161 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5148, float %5160, float undef, float undef, i32 0, i32 0, i32 undef, float %5104)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5162 = extractvalue %dx.types.ResRet.f32 %5161, 0
  %5163 = fmul fast float %5162, %5120
  %5164 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5155, float %5160, float undef, float undef, i32 0, i32 0, i32 undef, float %5104)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5165 = extractvalue %dx.types.ResRet.f32 %5164, 0
  %5166 = fmul fast float %5165, %5121
  %5167 = fadd fast float %5166, %5163
  %5168 = fmul fast float %5167, %5135
  %5169 = fadd fast float %5158, %5153
  %5170 = fmul fast float %5169, %5134
  %5171 = fadd fast float %5170, %5168
  %5172 = fmul fast float %5171, 6.250000e-02
  br label %5258

; <label>:5173                                    ; preds = %5094
  %5174 = fmul fast float %280, 0x401921FB60000000
  %5175 = call float @dx.op.unary.f32(i32 13, float %5174)  ; Sin(value)
  %5176 = call float @dx.op.unary.f32(i32 12, float %5174)  ; Cos(value)
  %5177 = fsub fast float -0.000000e+00, %5175
  br label %5178

; <label>:5178                                    ; preds = %5227, %5173
  %5179 = phi float [ 0.000000e+00, %5173 ], [ %5222, %5227 ]
  %5180 = phi float [ 0.000000e+00, %5173 ], [ %5224, %5227 ]
  %5181 = phi i32 [ 0, %5173 ], [ %5228, %5227 ]
  %5182 = mul i32 %5181, 2
  %5183 = add i32 0, %5182
  %5184 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5183
  %5185 = load float, float* %5184, align 4
  %5186 = mul i32 %5181, 2
  %5187 = add i32 1, %5186
  %5188 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5187
  %5189 = load float, float* %5188, align 4
  %5190 = fmul fast float %5185, %5176
  %5191 = call float @dx.op.tertiary.f32(i32 46, float %5189, float %5177, float %5190)  ; FMad(a,b,c)
  %5192 = fmul fast float %5185, %5175
  %5193 = call float @dx.op.tertiary.f32(i32 46, float %5189, float %5176, float %5192)  ; FMad(a,b,c)
  %5194 = fmul fast float %5191, %5102
  %5195 = fmul fast float %5193, %5102
  %5196 = fadd fast float %5194, %4418
  %5197 = fadd fast float %5195, %4419
  %5198 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %5196, float %5197, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5199 = extractvalue %dx.types.ResRet.f32 %5198, 0
  %5200 = extractvalue %dx.types.ResRet.f32 %5198, 1
  %5201 = extractvalue %dx.types.ResRet.f32 %5198, 2
  %5202 = extractvalue %dx.types.ResRet.f32 %5198, 3
  %5203 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %5199, float* %5203, align 4
  %5204 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %5200, float* %5204, align 4
  %5205 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %5201, float* %5205, align 4
  %5206 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %5202, float* %5206, align 4
  %5207 = fsub fast float %5199, %5104
  %5208 = fcmp fast olt float %5207, 0.000000e+00
  %5209 = select i1 %5208, float 0.000000e+00, float 1.000000e+00
  %5210 = fadd fast float %5209, %5179
  %5211 = fmul fast float %5209, %5207
  %5212 = fadd fast float %5211, %5180
  br label %5213

; <label>:5213                                    ; preds = %5213, %5178
  %5214 = phi i32 [ 1, %5178 ], [ %5225, %5213 ]
  %5215 = phi float [ %5212, %5178 ], [ %5224, %5213 ]
  %5216 = phi float [ %5210, %5178 ], [ %5222, %5213 ]
  %5217 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %5214
  %5218 = load float, float* %5217, align 4, !tbaa !135, !noalias !125
  %5219 = fsub fast float %5218, %5104
  %5220 = fcmp fast olt float %5219, 0.000000e+00
  %5221 = select i1 %5220, float 0.000000e+00, float 1.000000e+00
  %5222 = fadd fast float %5221, %5216
  %5223 = fmul fast float %5221, %5219
  %5224 = fadd fast float %5223, %5215
  %5225 = add nuw nsw i32 %5214, 1
  %5226 = icmp eq i32 %5225, 4
  br i1 %5226, label %5227, label %5213, !llvm.loop !137

; <label>:5227                                    ; preds = %5213
  %5228 = add nuw nsw i32 %5181, 1
  %5229 = icmp eq i32 %5228, 8
  br i1 %5229, label %5230, label %5178, !llvm.loop !138

; <label>:5230                                    ; preds = %5227
  %5231 = fdiv fast float 1.000000e+00, %5222
  %5232 = fmul fast float %5231, %5224
  %5233 = fdiv fast float 1.000000e+00, %5104
  %5234 = fmul fast float %5232, %5233
  %5235 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5236 = call float @dx.op.binary.f32(i32 35, float %5235, float 0.000000e+00)  ; FMax(a,b)
  %5237 = fmul fast float %5222, 3.125000e-02
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = fmul fast float %5238, 2.000000e+00
  %5240 = fadd fast float %5239, -1.000000e+00
  %5241 = fcmp fast ogt float %5240, 0.000000e+00
  %5242 = fcmp fast olt float %5240, 0.000000e+00
  %5243 = zext i1 %5241 to i32
  %5244 = zext i1 %5242 to i32
  %5245 = sub nsw i32 %5243, %5244
  %5246 = sitofp i32 %5245 to float
  %5247 = fmul fast float %5246, %5240
  %5248 = fsub fast float 1.000000e+00, %5247
  %5249 = fmul fast float %5248, %5248
  %5250 = fmul fast float %5249, %5248
  %5251 = fsub fast float %5248, %5250
  %5252 = fmul fast float %5251, %5236
  %5253 = fsub fast float 1.000000e+00, %5250
  %5254 = fsub fast float %5253, %5252
  %5255 = fmul fast float %5246, 5.000000e-01
  %5256 = fmul fast float %5255, %5254
  %5257 = fsub fast float 5.000000e-01, %5256
  br label %5258

; <label>:5258                                    ; preds = %5230, %5106, %5091
  %5259 = phi float [ 1.000000e+00, %5091 ], [ %5172, %5106 ], [ %5257, %5230 ]
  %5260 = fcmp fast ogt float %4521, 0.000000e+00
  br i1 %5260, label %5261, label %5425, !dx.controlflow.hints !140

; <label>:5261                                    ; preds = %5258
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 0
  %5264 = fadd fast float %5263, %4411
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 2
  %5267 = extractvalue %dx.types.CBufRet.f32 %5265, 3
  %5268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.f32 %5268, 0
  %5270 = call float @dx.op.binary.f32(i32 35, float %5264, float 0.000000e+00)  ; FMax(a,b)
  %5271 = fadd fast float %5270, 0x3F10000000000000
  %5272 = fcmp fast oeq float %5269, 0.000000e+00
  br i1 %5272, label %5273, label %5340

; <label>:5273                                    ; preds = %5261
  %5274 = extractvalue %dx.types.CBufRet.f32 %5265, 1
  %5275 = extractvalue %dx.types.CBufRet.f32 %5265, 0
  %5276 = fmul fast float %5275, %4403
  %5277 = fmul fast float %5274, %4407
  %5278 = fadd fast float %5276, 5.000000e-01
  %5279 = call float @dx.op.unary.f32(i32 27, float %5278)  ; Round_ni(value)
  %5280 = fadd fast float %5277, 5.000000e-01
  %5281 = call float @dx.op.unary.f32(i32 27, float %5280)  ; Round_ni(value)
  %5282 = fsub fast float %5278, %5279
  %5283 = fsub fast float %5280, %5281
  %5284 = fadd fast float %5279, -5.000000e-01
  %5285 = fadd fast float %5281, -5.000000e-01
  %5286 = fmul fast float %5282, 2.000000e+00
  %5287 = fsub fast float 3.000000e+00, %5286
  %5288 = fadd fast float %5286, 1.000000e+00
  %5289 = fsub fast float 2.000000e+00, %5282
  %5290 = bitcast float %5287 to i32
  %5291 = sub nsw i32 2129859010, %5290
  %5292 = bitcast i32 %5291 to float
  %5293 = fmul fast float %5292, %5289
  %5294 = fadd fast float %5293, -1.000000e+00
  %5295 = bitcast float %5288 to i32
  %5296 = sub nsw i32 2129859010, %5295
  %5297 = bitcast i32 %5296 to float
  %5298 = fmul fast float %5297, %5282
  %5299 = fadd fast float %5298, 1.000000e+00
  %5300 = fmul fast float %5283, 2.000000e+00
  %5301 = fsub fast float 3.000000e+00, %5300
  %5302 = fadd fast float %5300, 1.000000e+00
  %5303 = fsub fast float 2.000000e+00, %5283
  %5304 = bitcast float %5301 to i32
  %5305 = sub nsw i32 2129859010, %5304
  %5306 = bitcast i32 %5305 to float
  %5307 = fmul fast float %5306, %5303
  %5308 = fadd fast float %5307, -1.000000e+00
  %5309 = bitcast float %5302 to i32
  %5310 = sub nsw i32 2129859010, %5309
  %5311 = bitcast i32 %5310 to float
  %5312 = fmul fast float %5311, %5283
  %5313 = fadd fast float %5312, 1.000000e+00
  %5314 = fadd fast float %5294, %5284
  %5315 = fmul fast float %5314, %5266
  %5316 = fadd fast float %5308, %5285
  %5317 = fmul fast float %5316, %5267
  %5318 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5315, float %5317, float undef, float undef, i32 0, i32 0, i32 undef, float %5271)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5319 = extractvalue %dx.types.ResRet.f32 %5318, 0
  %5320 = fmul fast float %5319, %5287
  %5321 = fadd fast float %5299, %5284
  %5322 = fmul fast float %5321, %5266
  %5323 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5322, float %5317, float undef, float undef, i32 0, i32 0, i32 undef, float %5271)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5324 = extractvalue %dx.types.ResRet.f32 %5323, 0
  %5325 = fmul fast float %5324, %5288
  %5326 = fadd fast float %5313, %5285
  %5327 = fmul fast float %5326, %5267
  %5328 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5315, float %5327, float undef, float undef, i32 0, i32 0, i32 undef, float %5271)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = fmul fast float %5329, %5287
  %5331 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5322, float %5327, float undef, float undef, i32 0, i32 0, i32 undef, float %5271)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5332 = extractvalue %dx.types.ResRet.f32 %5331, 0
  %5333 = fmul fast float %5332, %5288
  %5334 = fadd fast float %5333, %5330
  %5335 = fmul fast float %5334, %5302
  %5336 = fadd fast float %5325, %5320
  %5337 = fmul fast float %5336, %5301
  %5338 = fadd fast float %5337, %5335
  %5339 = fmul fast float %5338, 6.250000e-02
  br label %5425

; <label>:5340                                    ; preds = %5261
  %5341 = fmul fast float %280, 0x401921FB60000000
  %5342 = call float @dx.op.unary.f32(i32 13, float %5341)  ; Sin(value)
  %5343 = call float @dx.op.unary.f32(i32 12, float %5341)  ; Cos(value)
  %5344 = fsub fast float -0.000000e+00, %5342
  br label %5345

; <label>:5345                                    ; preds = %5394, %5340
  %5346 = phi float [ 0.000000e+00, %5340 ], [ %5389, %5394 ]
  %5347 = phi float [ 0.000000e+00, %5340 ], [ %5391, %5394 ]
  %5348 = phi i32 [ 0, %5340 ], [ %5395, %5394 ]
  %5349 = mul i32 %5348, 2
  %5350 = add i32 0, %5349
  %5351 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5350
  %5352 = load float, float* %5351, align 4
  %5353 = mul i32 %5348, 2
  %5354 = add i32 1, %5353
  %5355 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5354
  %5356 = load float, float* %5355, align 4
  %5357 = fmul fast float %5352, %5343
  %5358 = call float @dx.op.tertiary.f32(i32 46, float %5356, float %5344, float %5357)  ; FMad(a,b,c)
  %5359 = fmul fast float %5352, %5342
  %5360 = call float @dx.op.tertiary.f32(i32 46, float %5356, float %5343, float %5359)  ; FMad(a,b,c)
  %5361 = fmul fast float %5358, %5269
  %5362 = fmul fast float %5360, %5269
  %5363 = fadd fast float %5361, %4403
  %5364 = fadd fast float %5362, %4407
  %5365 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5363, float %5364, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5366 = extractvalue %dx.types.ResRet.f32 %5365, 0
  %5367 = extractvalue %dx.types.ResRet.f32 %5365, 1
  %5368 = extractvalue %dx.types.ResRet.f32 %5365, 2
  %5369 = extractvalue %dx.types.ResRet.f32 %5365, 3
  %5370 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %5366, float* %5370, align 4
  %5371 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %5367, float* %5371, align 4
  %5372 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %5368, float* %5372, align 4
  %5373 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %5369, float* %5373, align 4
  %5374 = fsub fast float %5366, %5271
  %5375 = fcmp fast olt float %5374, 0.000000e+00
  %5376 = select i1 %5375, float 0.000000e+00, float 1.000000e+00
  %5377 = fadd fast float %5376, %5346
  %5378 = fmul fast float %5376, %5374
  %5379 = fadd fast float %5378, %5347
  br label %5380

; <label>:5380                                    ; preds = %5380, %5345
  %5381 = phi i32 [ 1, %5345 ], [ %5392, %5380 ]
  %5382 = phi float [ %5379, %5345 ], [ %5391, %5380 ]
  %5383 = phi float [ %5377, %5345 ], [ %5389, %5380 ]
  %5384 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %5381
  %5385 = load float, float* %5384, align 4, !tbaa !135, !noalias !125
  %5386 = fsub fast float %5385, %5271
  %5387 = fcmp fast olt float %5386, 0.000000e+00
  %5388 = select i1 %5387, float 0.000000e+00, float 1.000000e+00
  %5389 = fadd fast float %5388, %5383
  %5390 = fmul fast float %5388, %5386
  %5391 = fadd fast float %5390, %5382
  %5392 = add nuw nsw i32 %5381, 1
  %5393 = icmp eq i32 %5392, 4
  br i1 %5393, label %5394, label %5380, !llvm.loop !137

; <label>:5394                                    ; preds = %5380
  %5395 = add nuw nsw i32 %5348, 1
  %5396 = icmp eq i32 %5395, 8
  br i1 %5396, label %5397, label %5345, !llvm.loop !138

; <label>:5397                                    ; preds = %5394
  %5398 = fdiv fast float 1.000000e+00, %5389
  %5399 = fmul fast float %5398, %5391
  %5400 = fdiv fast float 1.000000e+00, %5271
  %5401 = fmul fast float %5399, %5400
  %5402 = call float @dx.op.unary.f32(i32 7, float %5401)  ; Saturate(value)
  %5403 = call float @dx.op.binary.f32(i32 35, float %5402, float 0.000000e+00)  ; FMax(a,b)
  %5404 = fmul fast float %5389, 3.125000e-02
  %5405 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  %5406 = fmul fast float %5405, 2.000000e+00
  %5407 = fadd fast float %5406, -1.000000e+00
  %5408 = fcmp fast ogt float %5407, 0.000000e+00
  %5409 = fcmp fast olt float %5407, 0.000000e+00
  %5410 = zext i1 %5408 to i32
  %5411 = zext i1 %5409 to i32
  %5412 = sub nsw i32 %5410, %5411
  %5413 = sitofp i32 %5412 to float
  %5414 = fmul fast float %5413, %5407
  %5415 = fsub fast float 1.000000e+00, %5414
  %5416 = fmul fast float %5415, %5415
  %5417 = fmul fast float %5416, %5415
  %5418 = fsub fast float %5415, %5417
  %5419 = fmul fast float %5418, %5403
  %5420 = fsub fast float 1.000000e+00, %5417
  %5421 = fsub fast float %5420, %5419
  %5422 = fmul fast float %5413, 5.000000e-01
  %5423 = fmul fast float %5422, %5421
  %5424 = fsub fast float 5.000000e-01, %5423
  br label %5425

; <label>:5425                                    ; preds = %5397, %5273, %5258
  %5426 = phi float [ 1.000000e+00, %5258 ], [ %5339, %5273 ], [ %5424, %5397 ]
  %5427 = fsub fast float %5092, %4927
  %5428 = fmul fast float %5427, %4465
  %5429 = fadd fast float %5428, %4927
  %5430 = fsub fast float %5259, %5429
  %5431 = fmul fast float %5430, %4495
  %5432 = fadd fast float %5431, %5429
  %5433 = fsub fast float %5426, %5432
  %5434 = fmul fast float %5433, %4521
  %5435 = fadd fast float %5434, %5432
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 2
  %5438 = fcmp fast ogt float %5437, 0.000000e+00
  br i1 %5438, label %5439, label %5479, !dx.controlflow.hints !141

; <label>:5439                                    ; preds = %5425
  %5440 = fcmp fast ugt float %5437, 0.000000e+00
  br i1 %5440, label %5441, label %5476

; <label>:5441                                    ; preds = %5439
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %5446 = extractvalue %dx.types.CBufRet.f32 %5442, 3
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5451 = extractvalue %dx.types.CBufRet.f32 %5447, 3
  %5452 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5453 = extractvalue %dx.types.CBufRet.f32 %5436, 1
  %5454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5455 = extractvalue %dx.types.CBufRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.CBufRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.CBufRet.f32 %5454, 2
  %5458 = fadd fast float %5455, %4380
  %5459 = fadd fast float %5456, %4381
  %5460 = fadd fast float %5457, %4382
  %5461 = fmul fast float %5458, %5443
  %5462 = call float @dx.op.tertiary.f32(i32 46, float %5444, float %5459, float %5461)  ; FMad(a,b,c)
  %5463 = call float @dx.op.tertiary.f32(i32 46, float %5445, float %5460, float %5462)  ; FMad(a,b,c)
  %5464 = fadd fast float %5463, %5446
  %5465 = fmul fast float %5458, %5448
  %5466 = call float @dx.op.tertiary.f32(i32 46, float %5449, float %5459, float %5465)  ; FMad(a,b,c)
  %5467 = call float @dx.op.tertiary.f32(i32 46, float %5450, float %5460, float %5466)  ; FMad(a,b,c)
  %5468 = fadd fast float %5467, %5451
  %5469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5464, float %5468, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5470 = extractvalue %dx.types.ResRet.f32 %5469, 0
  %5471 = fmul fast float %5470, %5453
  %5472 = fadd fast float %5471, %5452
  %5473 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5474 = fmul fast float %5473, %5437
  %5475 = fsub fast float 1.000000e+00, %5474
  br label %5476

; <label>:5476                                    ; preds = %5441, %5439
  %5477 = phi float [ %5475, %5441 ], [ 1.000000e+00, %5439 ]
  %5478 = fmul fast float %5477, %5435
  br label %5479

; <label>:5479                                    ; preds = %5476, %5425, %4360
  %5480 = phi float [ 1.000000e+00, %4360 ], [ %5478, %5476 ], [ %5435, %5425 ]
  %5481 = call float @dx.op.binary.f32(i32 36, float %5480, float %5480)  ; FMin(a,b)
  %5482 = call float @dx.op.binary.f32(i32 36, float %5480, float %5481)  ; FMin(a,b)
  %5483 = fcmp fast ogt float %5482, 0.000000e+00
  br i1 %5483, label %5484, label %5649, !dx.controlflow.hints !142

; <label>:5484                                    ; preds = %5479
  %5485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5486 = extractvalue %dx.types.CBufRet.f32 %5485, 0
  %5487 = extractvalue %dx.types.CBufRet.f32 %5485, 1
  %5488 = extractvalue %dx.types.CBufRet.f32 %5485, 2
  %5489 = extractvalue %dx.types.CBufRet.f32 %5485, 3
  %5490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.f32 %5490, 0
  %5492 = extractvalue %dx.types.CBufRet.f32 %5490, 1
  %5493 = extractvalue %dx.types.CBufRet.f32 %5490, 2
  %5494 = extractvalue %dx.types.CBufRet.f32 %5490, 3
  %5495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.f32 %5495, 0
  %5497 = extractvalue %dx.types.CBufRet.f32 %5495, 1
  %5498 = extractvalue %dx.types.CBufRet.f32 %5495, 2
  %5499 = extractvalue %dx.types.CBufRet.f32 %5495, 3
  %5500 = fmul fast float %5486, %4380
  %5501 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %5487, float %5500)  ; FMad(a,b,c)
  %5502 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %5488, float %5501)  ; FMad(a,b,c)
  %5503 = fadd fast float %5502, %5489
  %5504 = fmul fast float %5491, %4380
  %5505 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %5492, float %5504)  ; FMad(a,b,c)
  %5506 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %5493, float %5505)  ; FMad(a,b,c)
  %5507 = fadd fast float %5506, %5494
  %5508 = fmul fast float %5496, %4380
  %5509 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %5497, float %5508)  ; FMad(a,b,c)
  %5510 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %5498, float %5509)  ; FMad(a,b,c)
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 0
  %5513 = extractvalue %dx.types.CBufRet.f32 %5511, 1
  %5514 = extractvalue %dx.types.CBufRet.f32 %5511, 3
  %5515 = fmul fast float %5514, %5503
  %5516 = fmul fast float %5514, %5507
  %5517 = fadd fast float %5515, %5512
  %5518 = fadd fast float %5516, %5513
  %5519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5520 = extractvalue %dx.types.CBufRet.f32 %5519, 0
  %5521 = extractvalue %dx.types.CBufRet.f32 %5519, 1
  %5522 = fsub fast float %5517, %5520
  %5523 = fsub fast float %5518, %5521
  %5524 = fcmp fast olt float %5522, 0.000000e+00
  %5525 = fcmp fast olt float %5523, 0.000000e+00
  %5526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5527 = extractvalue %dx.types.CBufRet.f32 %5526, 0
  %5528 = extractvalue %dx.types.CBufRet.f32 %5526, 1
  %5529 = extractvalue %dx.types.CBufRet.f32 %5526, 2
  %5530 = extractvalue %dx.types.CBufRet.f32 %5526, 3
  %5531 = select i1 %5524, float %5527, float %5529
  %5532 = select i1 %5525, float %5528, float %5530
  %5533 = fmul fast float %5531, %5522
  %5534 = fmul fast float %5532, %5523
  %5535 = call float @dx.op.unary.f32(i32 6, float %5533)  ; FAbs(value)
  %5536 = call float @dx.op.unary.f32(i32 6, float %5534)  ; FAbs(value)
  %5537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5538 = extractvalue %dx.types.CBufRet.f32 %5537, 0
  %5539 = call float @dx.op.binary.f32(i32 35, float %5535, float %5536)  ; FMax(a,b)
  %5540 = fsub fast float %5538, %5539
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5542 = fcmp fast ogt float %5541, 0.000000e+00
  br i1 %5542, label %5543, label %5584, !dx.controlflow.hints !143

; <label>:5543                                    ; preds = %5484
  %5544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5517, float %5518, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5545 = extractvalue %dx.types.ResRet.f32 %5544, 1
  %5546 = fcmp fast ogt float %5545, 0.000000e+00
  br i1 %5546, label %5547, label %5579

; <label>:5547                                    ; preds = %5543
  %5548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5517, float %5518, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5549 = extractvalue %dx.types.ResRet.f32 %5548, 0
  %5550 = extractvalue %dx.types.ResRet.f32 %5548, 1
  %5551 = extractvalue %dx.types.ResRet.f32 %5548, 2
  %5552 = extractvalue %dx.types.ResRet.f32 %5548, 3
  %5553 = fsub fast float 1.000000e+00, %5499
  %5554 = fsub fast float %5553, %5510
  %5555 = fmul fast float %5554, 0x400921FB60000000
  %5556 = fadd fast float %5555, 0x3FF921FB60000000
  %5557 = call float @dx.op.unary.f32(i32 13, float %5556)  ; Sin(value)
  %5558 = fadd fast float %5557, -1.000000e+00
  %5559 = fmul fast float %5558, 0x3FD45F3060000000
  %5560 = fmul fast float %5554, 0x401921FB60000000
  %5561 = fadd fast float %5560, 0x400921FB60000000
  %5562 = call float @dx.op.unary.f32(i32 13, float %5561)  ; Sin(value)
  %5563 = fadd fast float %5562, 0x3E7777A5C0000000
  %5564 = fmul fast float %5563, 0x3FC45F3060000000
  %5565 = fmul fast float %5554, 0x4022D97C80000000
  %5566 = fadd fast float %5565, 0x4012D97C80000000
  %5567 = call float @dx.op.unary.f32(i32 13, float %5566)  ; Sin(value)
  %5568 = fadd fast float %5567, 1.000000e+00
  %5569 = fmul fast float %5568, 0x3FBB2995E0000000
  %5570 = fmul fast float %5554, 0x402921FB60000000
  %5571 = fadd fast float %5570, 0x401921FB60000000
  %5572 = call float @dx.op.unary.f32(i32 13, float %5571)  ; Sin(value)
  %5573 = fadd fast float %5572, 0xBE8777A5C0000000
  %5574 = fmul fast float %5573, 0x3FB45F3060000000
  %5575 = call float @dx.op.dot4.f32(i32 56, float %5549, float %5550, float %5551, float %5552, float %5559, float %5564, float %5569, float %5574)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5576 = fmul fast float %5575, 0xBFF7154760000000
  %5577 = call float @dx.op.unary.f32(i32 21, float %5576)  ; Exp(value)
  %5578 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  br label %5579

; <label>:5579                                    ; preds = %5547, %5543
  %5580 = phi float [ %5578, %5547 ], [ 1.000000e+00, %5543 ]
  %5581 = fadd fast float %5580, -1.000000e+00
  %5582 = fmul fast float %5581, %5541
  %5583 = fadd fast float %5582, 1.000000e+00
  br label %5584

; <label>:5584                                    ; preds = %5579, %5484
  %5585 = phi float [ %5583, %5579 ], [ 1.000000e+00, %5484 ]
  %5586 = fmul fast float %5585, %5480
  %5587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5588 = extractvalue %dx.types.CBufRet.f32 %5587, 0
  %5589 = extractvalue %dx.types.CBufRet.f32 %5587, 1
  %5590 = extractvalue %dx.types.CBufRet.f32 %5587, 2
  %5591 = fadd fast float %5588, %146
  %5592 = fadd fast float %5589, %147
  %5593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5594 = extractvalue %dx.types.CBufRet.f32 %5593, 1
  %5595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5596 = extractvalue %dx.types.CBufRet.f32 %5595, 0
  %5597 = extractvalue %dx.types.CBufRet.f32 %5595, 1
  %5598 = extractvalue %dx.types.CBufRet.f32 %5595, 2
  %5599 = fsub fast float -0.000000e+00, %5591
  %5600 = fsub fast float -0.000000e+00, %5592
  %5601 = fsub fast float %2387, %5590
  %5602 = fadd fast float %5601, %5594
  %5603 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5599, float %5600, float %5602)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5596, float %5597, float %5598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = fdiv fast float 1.000000e+00, %5604
  %5606 = fmul fast float %5605, %5603
  %5607 = fmul fast float %5596, %5606
  %5608 = fmul fast float %5597, %5606
  %5609 = fadd fast float %5607, %5591
  %5610 = fadd fast float %5608, %5592
  %5611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5612 = extractvalue %dx.types.CBufRet.f32 %5611, 0
  %5613 = extractvalue %dx.types.CBufRet.f32 %5611, 1
  %5614 = fsub fast float %5609, %5612
  %5615 = fsub fast float %5610, %5613
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 2
  %5618 = extractvalue %dx.types.CBufRet.f32 %5616, 3
  %5619 = fmul fast float %5614, %5617
  %5620 = fmul fast float %5615, %5618
  %5621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5622 = extractvalue %dx.types.CBufRet.i32 %5621, 3
  %5623 = icmp eq i32 %5622, 0
  br i1 %5623, label %5629, label %5624

; <label>:5624                                    ; preds = %5584
  %5625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5619, float %5620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5626 = extractvalue %dx.types.ResRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.ResRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.ResRet.f32 %5625, 2
  br label %5634

; <label>:5629                                    ; preds = %5584
  %5630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5619, float %5620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5631 = extractvalue %dx.types.ResRet.f32 %5630, 0
  %5632 = extractvalue %dx.types.ResRet.f32 %5630, 1
  %5633 = extractvalue %dx.types.ResRet.f32 %5630, 2
  br label %5634

; <label>:5634                                    ; preds = %5629, %5624
  %5635 = phi float [ %5626, %5624 ], [ %5631, %5629 ]
  %5636 = phi float [ %5627, %5624 ], [ %5632, %5629 ]
  %5637 = phi float [ %5628, %5624 ], [ %5633, %5629 ]
  %5638 = extractvalue %dx.types.CBufRet.f32 %5593, 2
  %5639 = fmul fast float %5638, %5635
  %5640 = extractvalue %dx.types.CBufRet.f32 %5593, 0
  %5641 = fsub fast float %5606, %5640
  %5642 = fsub fast float %5641, %5639
  %5643 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5642)  ; FMax(a,b)
  %5644 = fmul fast float %5643, %5636
  %5645 = call float @dx.op.binary.f32(i32 36, float %5637, float %5644)  ; FMin(a,b)
  %5646 = fmul fast float %5645, 0xBFF7154760000000
  %5647 = call float @dx.op.unary.f32(i32 21, float %5646)  ; Exp(value)
  %5648 = fmul fast float %5586, %5647
  br label %5649

; <label>:5649                                    ; preds = %5634, %5479
  %5650 = phi float [ %5648, %5634 ], [ %5480, %5479 ]
  %5651 = call float @dx.op.binary.f32(i32 36, float %5650, float %5650)  ; FMin(a,b)
  %5652 = call float @dx.op.binary.f32(i32 36, float %5650, float %5651)  ; FMin(a,b)
  %5653 = fcmp fast ogt float %5652, 0.000000e+00
  br i1 %5653, label %5654, label %6037, !dx.controlflow.hints !144

; <label>:5654                                    ; preds = %5649
  %5655 = fmul fast float %5650, %4372
  %5656 = fmul fast float %5650, %4373
  %5657 = fmul fast float %5650, %4374
  %5658 = fsub fast float %148, %2193
  %5659 = fcmp fast ogt float %5658, 0.000000e+00
  %5660 = fmul fast float %4361, 5.120000e+02
  %5661 = fmul fast float %4362, 5.120000e+02
  %5662 = fmul fast float %4363, 5.120000e+02
  %5663 = fadd fast float %5662, %148
  %5664 = fsub fast float %2193, %5663
  %5665 = fmul fast float %5664, 2.000000e+00
  %5666 = fadd fast float %5665, %5663
  %5667 = select i1 %5659, float %5666, float %5663
  %5668 = fsub fast float %5667, %148
  %5669 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %5668, float %5660, float %5661, float %5668)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = call float @dx.op.unary.f32(i32 25, float %5669)  ; Rsqrt(value)
  %5671 = fmul fast float %5670, %5660
  %5672 = fmul fast float %5670, %5661
  %5673 = fmul fast float %5670, %5668
  %5674 = fsub fast float %2193, %148
  %5675 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5671, float %5672, float %5673)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = fdiv fast float 1.000000e+00, %5676
  %5678 = fmul fast float %5677, %5675
  %5679 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5658, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5680 = fcmp fast ogt float %5679, 0.000000e+00
  %5681 = fcmp fast olt float %5679, 0.000000e+00
  %5682 = zext i1 %5680 to i32
  %5683 = zext i1 %5681 to i32
  %5684 = sub nsw i32 %5682, %5683
  %5685 = sitofp i32 %5684 to float
  %5686 = fsub fast float %5667, %2193
  %5687 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %5686, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5688 = fcmp fast ogt float %5687, 0.000000e+00
  %5689 = fcmp fast olt float %5687, 0.000000e+00
  %5690 = zext i1 %5688 to i32
  %5691 = zext i1 %5689 to i32
  %5692 = sub nsw i32 %5690, %5691
  %5693 = sitofp i32 %5692 to float
  %5694 = fcmp fast une float %5685, %5693
  br i1 %5694, label %5695, label %5705

; <label>:5695                                    ; preds = %5654
  %5696 = fmul fast float %5678, %5673
  %5697 = fmul fast float %5678, %5672
  %5698 = fmul fast float %5678, %5671
  %5699 = fmul fast float %5698, %5698
  %5700 = fmul fast float %5697, %5697
  %5701 = fadd fast float %5699, %5700
  %5702 = fmul fast float %5696, %5696
  %5703 = fadd fast float %5701, %5702
  %5704 = call float @dx.op.unary.f32(i32 24, float %5703)  ; Sqrt(value)
  br label %5715

; <label>:5705                                    ; preds = %5654
  %5706 = icmp slt i32 %5684, 0
  br i1 %5706, label %5707, label %5715

; <label>:5707                                    ; preds = %5705
  %5708 = fsub fast float %148, %5667
  %5709 = fmul fast float %5660, %5660
  %5710 = fmul fast float %5661, %5661
  %5711 = fadd fast float %5709, %5710
  %5712 = fmul fast float %5708, %5708
  %5713 = fadd fast float %5711, %5712
  %5714 = call float @dx.op.unary.f32(i32 24, float %5713)  ; Sqrt(value)
  br label %5715

; <label>:5715                                    ; preds = %5707, %5705, %5695
  %5716 = phi float [ %5704, %5695 ], [ %5714, %5707 ], [ 0.000000e+00, %5705 ]
  %5717 = fsub fast float -0.000000e+00, %5716
  %5718 = select i1 %5659, float -0.000000e+00, float %5717
  %5719 = fmul fast float %2194, 0x3FF7154760000000
  %5720 = fmul fast float %5719, %5718
  %5721 = fmul fast float %2195, 0x3FF7154760000000
  %5722 = fmul fast float %5721, %5718
  %5723 = fmul fast float %2196, 0x3FF7154760000000
  %5724 = fmul fast float %5723, %5718
  %5725 = call float @dx.op.unary.f32(i32 21, float %5720)  ; Exp(value)
  %5726 = call float @dx.op.unary.f32(i32 21, float %5722)  ; Exp(value)
  %5727 = call float @dx.op.unary.f32(i32 21, float %5724)  ; Exp(value)
  %5728 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5729 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5730 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5731 = fmul fast float %5655, %5728
  %5732 = fmul fast float %5656, %5729
  %5733 = fmul fast float %5657, %5730
  %5734 = fsub fast float %4361, %195
  %5735 = fsub fast float %4362, %196
  %5736 = fsub fast float %4363, %197
  %5737 = call float @dx.op.dot3.f32(i32 55, float %5734, float %5735, float %5736, float %5734, float %5735, float %5736)  ; Dot3(ax,ay,az,bx,by,bz)
  %5738 = call float @dx.op.unary.f32(i32 25, float %5737)  ; Rsqrt(value)
  %5739 = fmul fast float %5738, %5734
  %5740 = fmul fast float %5738, %5735
  %5741 = fmul fast float %5738, %5736
  %5742 = call float @dx.op.dot3.f32(i32 55, float %4361, float %4362, float %4363, float %2382, float %2383, float %2384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5743 = call float @dx.op.dot3.f32(i32 55, float %2210, float %2211, float %2212, float %5739, float %5740, float %5741)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = call float @dx.op.unary.f32(i32 7, float %5742)  ; Saturate(value)
  %5745 = fmul fast float %5744, %5744
  %5746 = fmul fast float %5745, %4356
  %5747 = call float @dx.op.unary.f32(i32 7, float %5746)  ; Saturate(value)
  %5748 = fmul fast float %5747, %5744
  %5749 = call float @dx.op.dot3.f32(i32 55, float %2382, float %2383, float %2384, float %5739, float %5740, float %5741)  ; Dot3(ax,ay,az,bx,by,bz)
  %5750 = fmul fast float %5749, %5749
  %5751 = call float @dx.op.unary.f32(i32 6, float %5742)  ; FAbs(value)
  %5752 = fsub fast float 1.000000e+00, %2408
  %5753 = fmul fast float %2390, %2390
  %5754 = fmul fast float %5753, %5752
  %5755 = fadd fast float %5754, %2408
  %5756 = bitcast float %5755 to i32
  %5757 = ashr i32 %5756, 1
  %5758 = add nsw i32 %5757, 532487669
  %5759 = bitcast i32 %5758 to float
  %5760 = fadd fast float %5759, %2390
  %5761 = fmul fast float %2408, %5750
  %5762 = fsub fast float 1.000000e+00, %5750
  %5763 = fadd fast float %5762, %5761
  %5764 = fmul fast float %5751, %5751
  %5765 = fmul fast float %5764, %5752
  %5766 = fadd fast float %5765, %2408
  %5767 = bitcast float %5766 to i32
  %5768 = ashr i32 %5767, 1
  %5769 = add nsw i32 %5768, 532487669
  %5770 = bitcast i32 %5769 to float
  %5771 = fadd fast float %5770, %5751
  %5772 = fmul fast float %5763, %5763
  %5773 = fmul fast float %5772, %5760
  %5774 = fmul fast float %5773, %5771
  %5775 = fdiv fast float 0x3FF0A00000000000, %5774
  %5776 = fmul fast float %5775, %2408
  %5777 = fmul fast float %3699, 0x3FF9999980000000
  %5778 = fsub fast float 5.000000e+00, %5777
  %5779 = call float @dx.op.unary.f32(i32 6, float %5743)  ; FAbs(value)
  %5780 = fsub fast float 1.000000e+00, %5779
  %5781 = fmul fast float %3699, 0x41D9660740000000
  %5782 = fadd fast float %5781, 0xC1EFBF8940000000
  %5783 = bitcast float %5780 to i32
  %5784 = sitofp i32 %5783 to float
  %5785 = fmul fast float %5784, %5778
  %5786 = fadd fast float %5782, %5785
  %5787 = fptosi float %5786 to i32
  %5788 = bitcast i32 %5787 to float
  %5789 = fsub fast float 1.000000e+00, %2376
  %5790 = fsub fast float 1.000000e+00, %2377
  %5791 = fsub fast float 1.000000e+00, %2388
  %5792 = fmul fast float %5788, %5789
  %5793 = fmul fast float %5788, %5790
  %5794 = fmul fast float %5788, %5791
  %5795 = fadd fast float %5792, %2376
  %5796 = fadd fast float %5793, %2377
  %5797 = fadd fast float %5794, %2388
  br i1 %3722, label %5798, label %5821

; <label>:5798                                    ; preds = %5715
  %5799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1717, float %5779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5800 = extractvalue %dx.types.ResRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.ResRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.ResRet.f32 %5799, 2
  %5803 = fadd fast float %5800, -5.000000e-01
  %5804 = fadd fast float %5801, -5.000000e-01
  %5805 = fadd fast float %5802, -5.000000e-01
  %5806 = fmul fast float %2376, 4.000000e+00
  %5807 = fmul fast float %5806, %5789
  %5808 = fmul fast float %5807, %5803
  %5809 = fmul fast float %2377, 4.000000e+00
  %5810 = fmul fast float %5809, %5790
  %5811 = fmul fast float %5810, %5804
  %5812 = fmul fast float %2388, 4.000000e+00
  %5813 = fmul fast float %5812, %5791
  %5814 = fmul fast float %5813, %5805
  %5815 = fadd fast float %5808, %5795
  %5816 = fadd fast float %5811, %5796
  %5817 = fadd fast float %5814, %5797
  %5818 = call float @dx.op.unary.f32(i32 7, float %5815)  ; Saturate(value)
  %5819 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5820 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  br label %5821

; <label>:5821                                    ; preds = %5798, %5715
  %5822 = phi float [ %5818, %5798 ], [ %5795, %5715 ]
  %5823 = phi float [ %5819, %5798 ], [ %5796, %5715 ]
  %5824 = phi float [ %5820, %5798 ], [ %5797, %5715 ]
  %5825 = fmul fast float %5742, 9.843750e-01
  %5826 = fadd fast float %5825, 7.812500e-03
  %5827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5826, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5828 = extractvalue %dx.types.ResRet.f32 %5827, 0
  %5829 = extractvalue %dx.types.ResRet.f32 %5827, 1
  %5830 = extractvalue %dx.types.ResRet.f32 %5827, 2
  %5831 = extractvalue %dx.types.ResRet.f32 %5827, 3
  %5832 = fsub fast float %5830, %5828
  %5833 = fsub fast float %5831, %5829
  %5834 = fmul fast float %5832, %3709
  %5835 = fmul fast float %5833, %3709
  %5836 = fadd fast float %5834, %5828
  %5837 = fadd fast float %5835, %5829
  %5838 = fmul fast float %5836, %2376
  %5839 = fmul fast float %5836, %2377
  %5840 = fmul fast float %5836, %2388
  %5841 = fadd fast float %5838, %5837
  %5842 = fadd fast float %5839, %5837
  %5843 = fadd fast float %5840, %5837
  br i1 %3722, label %5844, label %5867

; <label>:5844                                    ; preds = %5821
  %5845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1717, float %5742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5846 = extractvalue %dx.types.ResRet.f32 %5845, 0
  %5847 = extractvalue %dx.types.ResRet.f32 %5845, 1
  %5848 = extractvalue %dx.types.ResRet.f32 %5845, 2
  %5849 = fadd fast float %5846, -5.000000e-01
  %5850 = fadd fast float %5847, -5.000000e-01
  %5851 = fadd fast float %5848, -5.000000e-01
  %5852 = fmul fast float %2376, 4.000000e+00
  %5853 = fmul fast float %5852, %5789
  %5854 = fmul fast float %5853, %5849
  %5855 = fmul fast float %2377, 4.000000e+00
  %5856 = fmul fast float %5855, %5790
  %5857 = fmul fast float %5856, %5850
  %5858 = fmul fast float %2388, 4.000000e+00
  %5859 = fmul fast float %5858, %5791
  %5860 = fmul fast float %5859, %5851
  %5861 = fadd fast float %5854, %5841
  %5862 = fadd fast float %5857, %5842
  %5863 = fadd fast float %5860, %5843
  %5864 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5865 = call float @dx.op.unary.f32(i32 7, float %5862)  ; Saturate(value)
  %5866 = call float @dx.op.unary.f32(i32 7, float %5863)  ; Saturate(value)
  br label %5867

; <label>:5867                                    ; preds = %5844, %5821
  %5868 = phi float [ %5864, %5844 ], [ %5841, %5821 ]
  %5869 = phi float [ %5865, %5844 ], [ %5842, %5821 ]
  %5870 = phi float [ %5866, %5844 ], [ %5843, %5821 ]
  %5871 = call float @dx.op.binary.f32(i32 35, float %5869, float %5870)  ; FMax(a,b)
  %5872 = call float @dx.op.binary.f32(i32 35, float %5868, float %5871)  ; FMax(a,b)
  %5873 = fsub fast float 1.000000e+00, %5872
  %5874 = call float @dx.op.binary.f32(i32 35, float %5751, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5875 = fdiv fast float %1117, %5874
  %5876 = fmul fast float %4269, %5875
  %5877 = fmul fast float %4271, %5875
  %5878 = fmul fast float %4273, %5875
  %5879 = call float @dx.op.unary.f32(i32 21, float %5876)  ; Exp(value)
  %5880 = call float @dx.op.unary.f32(i32 21, float %5877)  ; Exp(value)
  %5881 = call float @dx.op.unary.f32(i32 21, float %5878)  ; Exp(value)
  %5882 = call float @dx.op.unary.f32(i32 7, float %5879)  ; Saturate(value)
  %5883 = call float @dx.op.unary.f32(i32 7, float %5880)  ; Saturate(value)
  %5884 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5885 = select i1 %4266, float %5882, float 0.000000e+00
  %5886 = select i1 %4267, float %5883, float 0.000000e+00
  %5887 = select i1 %4268, float %5884, float 0.000000e+00
  %5888 = fsub fast float -0.000000e+00, %2382
  %5889 = fsub fast float -0.000000e+00, %2383
  %5890 = fsub fast float -0.000000e+00, %2384
  %5891 = call float @dx.op.dot3.f32(i32 55, float %4361, float %4362, float %4363, float %5888, float %5889, float %5890)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = call float @dx.op.unary.f32(i32 7, float %5891)  ; Saturate(value)
  %5893 = fmul fast float %5892, 9.843750e-01
  %5894 = fadd fast float %5893, 7.812500e-03
  %5895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5894, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5896 = extractvalue %dx.types.ResRet.f32 %5895, 0
  %5897 = extractvalue %dx.types.ResRet.f32 %5895, 1
  %5898 = extractvalue %dx.types.ResRet.f32 %5895, 2
  %5899 = extractvalue %dx.types.ResRet.f32 %5895, 3
  %5900 = fsub fast float %5898, %5896
  %5901 = fsub fast float %5899, %5897
  %5902 = fmul fast float %5900, %3709
  %5903 = fmul fast float %5901, %3709
  %5904 = fadd fast float %5902, %5896
  %5905 = fadd fast float %5903, %5897
  %5906 = fmul fast float %5904, %2376
  %5907 = fmul fast float %5904, %2377
  %5908 = fmul fast float %5904, %2388
  %5909 = fadd fast float %5906, %5905
  %5910 = fadd fast float %5907, %5905
  %5911 = fadd fast float %5908, %5905
  br i1 %3722, label %5912, label %5935

; <label>:5912                                    ; preds = %5867
  %5913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1717, float %5892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5914 = extractvalue %dx.types.ResRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.ResRet.f32 %5913, 1
  %5916 = extractvalue %dx.types.ResRet.f32 %5913, 2
  %5917 = fadd fast float %5914, -5.000000e-01
  %5918 = fadd fast float %5915, -5.000000e-01
  %5919 = fadd fast float %5916, -5.000000e-01
  %5920 = fmul fast float %2376, 4.000000e+00
  %5921 = fmul fast float %5920, %5789
  %5922 = fmul fast float %5921, %5917
  %5923 = fmul fast float %2377, 4.000000e+00
  %5924 = fmul fast float %5923, %5790
  %5925 = fmul fast float %5924, %5918
  %5926 = fmul fast float %2388, 4.000000e+00
  %5927 = fmul fast float %5926, %5791
  %5928 = fmul fast float %5927, %5919
  %5929 = fadd fast float %5922, %5909
  %5930 = fadd fast float %5925, %5910
  %5931 = fadd fast float %5928, %5911
  %5932 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5933 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5934 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  br label %5935

; <label>:5935                                    ; preds = %5912, %5867
  %5936 = phi float [ %5932, %5912 ], [ %5909, %5867 ]
  %5937 = phi float [ %5933, %5912 ], [ %5910, %5867 ]
  %5938 = phi float [ %5934, %5912 ], [ %5911, %5867 ]
  %5939 = call float @dx.op.binary.f32(i32 35, float %5937, float %5938)  ; FMax(a,b)
  %5940 = call float @dx.op.binary.f32(i32 35, float %5936, float %5939)  ; FMax(a,b)
  %5941 = fsub fast float 1.000000e+00, %5940
  %5942 = fmul fast float %2405, %4333
  %5943 = fadd fast float %4335, %5942
  %5944 = call float @dx.op.unary.f32(i32 7, float %5943)  ; Saturate(value)
  %5945 = fsub fast float %4361, %2396
  %5946 = fsub fast float %4362, %2397
  %5947 = fsub fast float %4363, %2398
  %5948 = call float @dx.op.dot3.f32(i32 55, float %5945, float %5946, float %5947, float %5945, float %5946, float %5947)  ; Dot3(ax,ay,az,bx,by,bz)
  %5949 = call float @dx.op.unary.f32(i32 25, float %5948)  ; Rsqrt(value)
  %5950 = fmul fast float %5949, %5945
  %5951 = fmul fast float %5949, %5946
  %5952 = fmul fast float %5949, %5947
  %5953 = call float @dx.op.dot3.f32(i32 55, float %5888, float %5889, float %5890, float %5950, float %5951, float %5952)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = fmul fast float %5953, %5953
  %5955 = call float @dx.op.unary.f32(i32 6, float %5892)  ; FAbs(value)
  %5956 = call float @dx.op.binary.f32(i32 35, float %5944, float 0x3F847AE140000000)  ; FMax(a,b)
  %5957 = fmul fast float %5956, %5956
  %5958 = fmul fast float %5957, %5957
  %5959 = fsub fast float 1.000000e+00, %5958
  %5960 = fmul fast float %5753, %5959
  %5961 = fadd fast float %5960, %5958
  %5962 = bitcast float %5961 to i32
  %5963 = ashr i32 %5962, 1
  %5964 = add nsw i32 %5963, 532487669
  %5965 = bitcast i32 %5964 to float
  %5966 = fadd fast float %5965, %2390
  %5967 = fmul fast float %5958, %5954
  %5968 = fsub fast float 1.000000e+00, %5954
  %5969 = fadd fast float %5968, %5967
  %5970 = fmul fast float %5955, %5955
  %5971 = fmul fast float %5970, %5959
  %5972 = fadd fast float %5971, %5958
  %5973 = bitcast float %5972 to i32
  %5974 = ashr i32 %5973, 1
  %5975 = add nsw i32 %5974, 532487669
  %5976 = bitcast i32 %5975 to float
  %5977 = fadd fast float %5976, %5955
  %5978 = fmul fast float %5969, %5969
  %5979 = fmul fast float %5978, %5966
  %5980 = fmul fast float %5979, %5977
  %5981 = fdiv fast float 0x3FF0A00000000000, %5980
  %5982 = fmul fast float %5981, %5958
  %5983 = fmul fast float %5892, %5885
  %5984 = fmul fast float %5892, %5886
  %5985 = fmul fast float %5892, %5887
  %5986 = fmul fast float %5983, %5941
  %5987 = fmul fast float %5986, %5982
  %5988 = fmul fast float %5984, %5941
  %5989 = fmul fast float %5988, %5982
  %5990 = fmul fast float %5985, %5941
  %5991 = fmul fast float %5990, %5982
  %5992 = fmul fast float %5822, %5776
  %5993 = fmul fast float %5823, %5776
  %5994 = fmul fast float %5824, %5776
  %5995 = fsub fast float 1.000000e+00, %5743
  %5996 = bitcast float %5995 to i32
  %5997 = sitofp i32 %5996 to float
  %5998 = fmul fast float %5997, 5.000000e+00
  %5999 = fadd fast float %5998, 0xC1EFBF8940000000
  %6000 = fptosi float %5999 to i32
  %6001 = bitcast i32 %6000 to float
  %6002 = fmul fast float %6001, %1716
  %6003 = fmul fast float %5873, %6002
  %6004 = fmul fast float %6003, %4261
  %6005 = fmul fast float %6003, %4262
  %6006 = fmul fast float %6003, %4263
  %6007 = fadd fast float %6004, %5992
  %6008 = fadd fast float %6005, %5993
  %6009 = fadd fast float %6006, %5994
  %6010 = fmul fast float %6007, %5748
  %6011 = fmul fast float %6008, %5748
  %6012 = fmul fast float %6009, %5748
  %6013 = fmul fast float %5748, %5731
  %6014 = fmul fast float %6013, %5873
  %6015 = fmul fast float %5748, %5732
  %6016 = fmul fast float %6015, %5873
  %6017 = fmul fast float %5748, %5733
  %6018 = fmul fast float %6017, %5873
  %6019 = fadd fast float %6010, %5987
  %6020 = fadd fast float %6011, %5989
  %6021 = fadd fast float %6012, %5991
  %6022 = fmul fast float %6019, %5731
  %6023 = fmul fast float %6020, %5732
  %6024 = fmul fast float %6021, %5733
  %6025 = fadd fast float %6014, %4350
  %6026 = fmul fast float %6025, %1767
  %6027 = fadd fast float %6016, %4352
  %6028 = fmul fast float %6027, %1767
  %6029 = fadd fast float %6018, %4354
  %6030 = fmul fast float %6029, %1767
  %6031 = fadd fast float %6022, %4314
  %6032 = fmul fast float %6031, %1767
  %6033 = fadd fast float %6023, %4317
  %6034 = fmul fast float %6033, %1767
  %6035 = fadd fast float %6024, %4320
  %6036 = fmul fast float %6035, %1767
  br label %6037

; <label>:6037                                    ; preds = %5935, %5649, %4244
  %6038 = phi float [ %4315, %4244 ], [ %4315, %5649 ], [ %6032, %5935 ]
  %6039 = phi float [ %4318, %4244 ], [ %4318, %5649 ], [ %6034, %5935 ]
  %6040 = phi float [ %4321, %4244 ], [ %4321, %5649 ], [ %6036, %5935 ]
  %6041 = phi float [ %4351, %4244 ], [ %4351, %5649 ], [ %6026, %5935 ]
  %6042 = phi float [ %4353, %4244 ], [ %4353, %5649 ], [ %6028, %5935 ]
  %6043 = phi float [ %4355, %4244 ], [ %4355, %5649 ], [ %6030, %5935 ]
  %6044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.i32 %6044, 0
  %6046 = icmp eq i32 %6045, 0
  br i1 %6046, label %6864, label %6047

; <label>:6047                                    ; preds = %6037
  %6048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6049 = extractvalue %dx.types.CBufRet.f32 %6048, 2
  %6050 = extractvalue %dx.types.CBufRet.f32 %6048, 3
  %6051 = fmul fast float %6049, %99
  %6052 = fmul fast float %6050, %100
  %6053 = fptoui float %6051 to i32
  %6054 = fptoui float %6052 to i32
  %6055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.CBufRet.f32 %6055, 2
  %6058 = extractvalue %dx.types.CBufRet.f32 %6055, 3
  %6059 = fadd fast float %87, -4.000000e+00
  %6060 = call float @dx.op.binary.f32(i32 35, float %6059, float 0.000000e+00)  ; FMax(a,b)
  %6061 = fadd fast float %6060, %6056
  %6062 = fmul fast float %6061, %6057
  %6063 = call float @dx.op.unary.f32(i32 23, float %6062)  ; Log(value)
  %6064 = fmul fast float %6063, %6058
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 2
  %6067 = fmul fast float %6064, %6066
  %6068 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6069 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.i32 %6069, 1
  %6071 = add i32 %6070, -1
  %6072 = uitofp i32 %6070 to float
  %6073 = fmul fast float %6072, %6068
  %6074 = fptoui float %6073 to i32
  %6075 = call i32 @dx.op.binary.i32(i32 40, i32 %6074, i32 %6071)  ; UMin(a,b)
  %6076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.i32 %6076, 2
  %6078 = extractvalue %dx.types.CBufRet.i32 %6076, 3
  %6079 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6054, i32 %6077, i32 %6053)  ; UMad(a,b,c)
  %6080 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6075, i32 %6078, i32 %6079)  ; UMad(a,b,c)
  %6081 = add nsw i32 %6045, -1
  %6082 = call i32 @dx.op.binary.i32(i32 37, i32 %6081, i32 0)  ; IMax(a,b)
  %6083 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %6084 = fptoui float %6083 to i32
  %6085 = lshr i32 %6084, 5
  %6086 = call i32 @dx.op.binary.i32(i32 40, i32 %6085, i32 8191)  ; UMin(a,b)
  %6087 = shl i32 %6086, 2
  %6088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6087, i32 undef)  ; BufferLoad(srv,index,wot)
  %6089 = extractvalue %dx.types.ResRet.i32 %6088, 0
  %6090 = lshr i32 %6089, 16
  %6091 = and i32 %6089, 65535
  %6092 = lshr i32 %6089, 21
  %6093 = lshr i32 %6091, 5
  %6094 = call i32 @dx.op.binary.i32(i32 40, i32 %6093, i32 %6082)  ; UMin(a,b)
  %6095 = icmp ugt i32 %6092, %6094
  br i1 %6095, label %6864, label %6096

; <label>:6096                                    ; preds = %6047
  br label %6097

; <label>:6097                                    ; preds = %6854, %6096
  %6098 = phi i32 [ %6861, %6854 ], [ %6092, %6096 ]
  %6099 = phi float [ %6855, %6854 ], [ %6038, %6096 ]
  %6100 = phi float [ %6856, %6854 ], [ %6039, %6096 ]
  %6101 = phi float [ %6857, %6854 ], [ %6040, %6096 ]
  %6102 = phi float [ %6858, %6854 ], [ %6041, %6096 ]
  %6103 = phi float [ %6859, %6854 ], [ %6042, %6096 ]
  %6104 = phi float [ %6860, %6854 ], [ %6043, %6096 ]
  %6105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.i32 %6105, 0
  %6107 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6080, i32 %6106, i32 %6098)  ; UMad(a,b,c)
  %6108 = shl i32 %6107, 2
  %6109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6108, i32 undef)  ; BufferLoad(srv,index,wot)
  %6110 = extractvalue %dx.types.ResRet.i32 %6109, 0
  %6111 = shl i32 %6098, 5
  %6112 = sub nsw i32 %6090, %6111
  %6113 = call i32 @dx.op.binary.i32(i32 37, i32 %6112, i32 0)  ; IMax(a,b)
  %6114 = call i32 @dx.op.binary.i32(i32 38, i32 %6113, i32 31)  ; IMin(a,b)
  %6115 = sub nsw i32 1, %6090
  %6116 = add nsw i32 %6115, %6091
  %6117 = call i32 @dx.op.binary.i32(i32 37, i32 %6116, i32 0)  ; IMax(a,b)
  %6118 = call i32 @dx.op.binary.i32(i32 38, i32 %6117, i32 32)  ; IMin(a,b)
  %6119 = and i32 %6118, 31
  %6120 = shl i32 -1, %6119
  %6121 = xor i32 %6120, -1
  %6122 = and i32 %6114, 31
  %6123 = shl i32 %6121, %6122
  %6124 = icmp eq i32 %6118, 32
  %6125 = select i1 %6124, i32 -1, i32 %6123
  %6126 = and i32 %6125, %6110
  %6127 = icmp eq i32 %6126, 0
  br i1 %6127, label %6854, label %6128

; <label>:6128                                    ; preds = %6097
  br label %6129

; <label>:6129                                    ; preds = %6264, %6128
  %6130 = phi i32 [ %6141, %6264 ], [ %6126, %6128 ]
  %6131 = phi float [ %6265, %6264 ], [ %6099, %6128 ]
  %6132 = phi float [ %6266, %6264 ], [ %6100, %6128 ]
  %6133 = phi float [ %6267, %6264 ], [ %6101, %6128 ]
  %6134 = phi float [ %6268, %6264 ], [ %6102, %6128 ]
  %6135 = phi float [ %6269, %6264 ], [ %6103, %6128 ]
  %6136 = phi float [ %6270, %6264 ], [ %6104, %6128 ]
  %6137 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6130)  ; FirstbitLo(value)
  %6138 = add i32 %6137, %6111
  %6139 = and i32 %6137, 31
  %6140 = shl i32 1, %6139
  %6141 = xor i32 %6140, %6130
  %6142 = mul i32 %6138, 112
  %6143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6142, i32 undef)  ; BufferLoad(srv,index,wot)
  %6144 = extractvalue %dx.types.ResRet.f32 %6143, 0
  %6145 = extractvalue %dx.types.ResRet.f32 %6143, 1
  %6146 = extractvalue %dx.types.ResRet.f32 %6143, 2
  %6147 = or i32 %6142, 12
  %6148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6147, i32 undef)  ; BufferLoad(srv,index,wot)
  %6149 = extractvalue %dx.types.ResRet.f32 %6148, 0
  %6150 = add i32 %6142, 16
  %6151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6150, i32 undef)  ; BufferLoad(srv,index,wot)
  %6152 = extractvalue %dx.types.ResRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.ResRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.ResRet.f32 %6151, 2
  %6155 = add i32 %6142, 28
  %6156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6155, i32 undef)  ; BufferLoad(srv,index,wot)
  %6157 = extractvalue %dx.types.ResRet.i32 %6156, 0
  %6158 = add i32 %6142, 44
  %6159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6158, i32 undef)  ; BufferLoad(srv,index,wot)
  %6160 = extractvalue %dx.types.ResRet.f32 %6159, 0
  %6161 = add i32 %6142, 48
  %6162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6161, i32 undef)  ; BufferLoad(srv,index,wot)
  %6163 = extractvalue %dx.types.ResRet.f32 %6162, 0
  %6164 = extractvalue %dx.types.ResRet.f32 %6162, 1
  %6165 = extractvalue %dx.types.ResRet.f32 %6162, 2
  %6166 = extractvalue %dx.types.ResRet.f32 %6162, 3
  %6167 = add i32 %6142, 64
  %6168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6167, i32 undef)  ; BufferLoad(srv,index,wot)
  %6169 = extractvalue %dx.types.ResRet.f32 %6168, 0
  %6170 = extractvalue %dx.types.ResRet.f32 %6168, 1
  %6171 = extractvalue %dx.types.ResRet.f32 %6168, 2
  %6172 = extractvalue %dx.types.ResRet.f32 %6168, 3
  %6173 = add i32 %6142, 80
  %6174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6173, i32 undef)  ; BufferLoad(srv,index,wot)
  %6175 = extractvalue %dx.types.ResRet.f32 %6174, 1
  %6176 = extractvalue %dx.types.ResRet.f32 %6174, 2
  %6177 = add i32 %6142, 92
  %6178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6177, i32 undef)  ; BufferLoad(srv,index,wot)
  %6179 = extractvalue %dx.types.ResRet.i32 %6178, 0
  %6180 = call float @dx.op.dot3.f32(i32 55, float %6144, float %6145, float %6146, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6181 = select i1 %269, float %6175, float %6144
  %6182 = select i1 %269, float %6180, float %6145
  %6183 = select i1 %269, float %6176, float %6146
  %6184 = and i32 %6179, 65535
  %6185 = uitofp i32 %6184 to float
  %6186 = lshr i32 %6179, 16
  %6187 = uitofp i32 %6186 to float
  %6188 = and i32 %6157, 65535
  %6189 = and i32 %6157, 50331648
  %6190 = icmp slt i32 %6157, 0
  %6191 = icmp eq i32 %6189, 33554432
  %6192 = fsub fast float %6163, %146
  %6193 = fsub fast float %6164, %147
  %6194 = fsub fast float %6165, %148
  %6195 = call float @dx.op.dot3.f32(i32 55, float %6192, float %6193, float %6194, float %6192, float %6193, float %6194)  ; Dot3(ax,ay,az,bx,by,bz)
  %6196 = call float @dx.op.unary.f32(i32 24, float %6195)  ; Sqrt(value)
  %6197 = fdiv fast float 1.000000e+00, %6196
  %6198 = fmul fast float %6197, %6192
  %6199 = fmul fast float %6197, %6193
  %6200 = fmul fast float %6197, %6194
  %6201 = fadd fast float %6196, %6149
  %6202 = fdiv fast float 1.000000e+00, %6201
  %6203 = fmul float %6160, %6202
  %6204 = fmul float %6203, %6203
  %6205 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  br i1 %6191, label %6206, label %6227

; <label>:6206                                    ; preds = %6129
  %6207 = fmul fast float %6171, %6152
  %6208 = fmul fast float %6171, %6153
  %6209 = fmul fast float %6171, %6154
  %6210 = fadd fast float %6192, %6207
  %6211 = fadd fast float %6193, %6208
  %6212 = fadd fast float %6194, %6209
  %6213 = call float @dx.op.dot3.f32(i32 55, float %6210, float %6211, float %6212, float %6210, float %6211, float %6212)  ; Dot3(ax,ay,az,bx,by,bz)
  %6214 = call float @dx.op.unary.f32(i32 25, float %6213)  ; Rsqrt(value)
  %6215 = fmul fast float %6214, %6210
  %6216 = fmul fast float %6214, %6211
  %6217 = fmul fast float %6214, %6212
  %6218 = fsub fast float %146, %6163
  %6219 = fsub fast float %147, %6164
  %6220 = fsub fast float %148, %6165
  %6221 = fsub fast float -0.000000e+00, %6218
  %6222 = fsub fast float -0.000000e+00, %6219
  %6223 = fsub fast float -0.000000e+00, %6220
  %6224 = call float @dx.op.dot3.f32(i32 55, float %6221, float %6222, float %6223, float %6152, float %6153, float %6154)  ; Dot3(ax,ay,az,bx,by,bz)
  %6225 = fcmp fast ogt float %6224, 0.000000e+00
  %6226 = uitofp i1 %6225 to float
  br label %6227

; <label>:6227                                    ; preds = %6206, %6129
  %6228 = phi float [ %6226, %6206 ], [ 1.000000e+00, %6129 ]
  %6229 = phi float [ %6215, %6206 ], [ %6198, %6129 ]
  %6230 = phi float [ %6216, %6206 ], [ %6199, %6129 ]
  %6231 = phi float [ %6217, %6206 ], [ %6200, %6129 ]
  %6232 = call float @dx.op.dot3.f32(i32 55, float %6152, float %6153, float %6154, float %6229, float %6230, float %6231)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = fmul fast float %6232, %6232
  %6234 = call float @dx.op.unary.f32(i32 7, float %6233)  ; Saturate(value)
  %6235 = fsub fast float 1.000000e+00, %6234
  %6236 = fmul fast float %6235, 5.000000e-01
  %6237 = fcmp fast ogt float %6232, 0.000000e+00
  %6238 = fsub fast float 1.000000e+00, %6236
  %6239 = select i1 %6237, float %6236, float %6238
  %6240 = fmul fast float %6239, %6187
  %6241 = fadd fast float %6240, %6185
  %6242 = fmul fast float %6241, 0x3EF0001000000000
  %6243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %6242, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6244 = extractvalue %dx.types.ResRet.f32 %6243, 0
  %6245 = fmul fast float %6232, %6169
  %6246 = fadd fast float %6245, %6170
  %6247 = call float @dx.op.unary.f32(i32 7, float %6246)  ; Saturate(value)
  %6248 = select i1 %6191, float 1.000000e+00, float %6247
  %6249 = select i1 %6191, float %6247, float 1.000000e+00
  %6250 = fmul fast float %6196, %6166
  %6251 = fsub fast float 1.000000e+00, %6250
  %6252 = fmul fast float %6251, %6172
  %6253 = call float @dx.op.unary.f32(i32 7, float %6252)  ; Saturate(value)
  %6254 = fmul fast float %6253, %6249
  %6255 = fmul fast float %6254, 2.000000e+00
  %6256 = fsub fast float 3.000000e+00, %6255
  %6257 = fmul fast float %6244, %6228
  %6258 = fmul fast float %6254, %6254
  %6259 = fmul fast float %6258, %6257
  %6260 = fmul fast float %6259, %6256
  %6261 = call float @dx.op.binary.f32(i32 36, float %6260, float %6260)  ; FMin(a,b)
  %6262 = call float @dx.op.binary.f32(i32 36, float %6260, float %6261)  ; FMin(a,b)
  %6263 = fcmp fast ogt float %6262, 0.000000e+00
  br i1 %6263, label %6272, label %6264, !dx.controlflow.hints !145

; <label>:6264                                    ; preds = %6807, %6418, %6227
  %6265 = phi float [ %6131, %6418 ], [ %6131, %6227 ], [ %6850, %6807 ]
  %6266 = phi float [ %6132, %6418 ], [ %6132, %6227 ], [ %6851, %6807 ]
  %6267 = phi float [ %6133, %6418 ], [ %6133, %6227 ], [ %6852, %6807 ]
  %6268 = phi float [ %6134, %6418 ], [ %6134, %6227 ], [ %6844, %6807 ]
  %6269 = phi float [ %6135, %6418 ], [ %6135, %6227 ], [ %6845, %6807 ]
  %6270 = phi float [ %6136, %6418 ], [ %6136, %6227 ], [ %6846, %6807 ]
  %6271 = icmp eq i32 %6130, %6140
  br i1 %6271, label %6853, label %6129

; <label>:6272                                    ; preds = %6227
  %6273 = icmp eq i32 %6188, 255
  br i1 %6273, label %6418, label %6274, !dx.controlflow.hints !146

; <label>:6274                                    ; preds = %6272
  %6275 = mul nuw nsw i32 %6188, 176
  %6276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6275, i32 undef)  ; BufferLoad(srv,index,wot)
  %6277 = extractvalue %dx.types.ResRet.f32 %6276, 0
  %6278 = extractvalue %dx.types.ResRet.f32 %6276, 1
  %6279 = extractvalue %dx.types.ResRet.f32 %6276, 2
  %6280 = extractvalue %dx.types.ResRet.f32 %6276, 3
  %6281 = add nuw nsw i32 %6275, 16
  %6282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6281, i32 undef)  ; BufferLoad(srv,index,wot)
  %6283 = extractvalue %dx.types.ResRet.f32 %6282, 0
  %6284 = extractvalue %dx.types.ResRet.f32 %6282, 1
  %6285 = add nuw nsw i32 %6275, 32
  %6286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6285, i32 undef)  ; BufferLoad(srv,index,wot)
  %6287 = extractvalue %dx.types.ResRet.f32 %6286, 0
  %6288 = extractvalue %dx.types.ResRet.f32 %6286, 1
  %6289 = extractvalue %dx.types.ResRet.f32 %6286, 2
  %6290 = add nuw nsw i32 %6275, 48
  %6291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6290, i32 undef)  ; BufferLoad(srv,index,wot)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.ResRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.ResRet.f32 %6291, 2
  %6295 = extractvalue %dx.types.ResRet.f32 %6291, 3
  %6296 = add nuw nsw i32 %6275, 64
  %6297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6296, i32 undef)  ; BufferLoad(srv,index,wot)
  %6298 = extractvalue %dx.types.ResRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.ResRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.ResRet.f32 %6297, 2
  %6301 = extractvalue %dx.types.ResRet.f32 %6297, 3
  %6302 = add nuw nsw i32 %6275, 80
  %6303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6302, i32 undef)  ; BufferLoad(srv,index,wot)
  %6304 = extractvalue %dx.types.ResRet.f32 %6303, 0
  %6305 = extractvalue %dx.types.ResRet.f32 %6303, 1
  %6306 = extractvalue %dx.types.ResRet.f32 %6303, 2
  %6307 = extractvalue %dx.types.ResRet.f32 %6303, 3
  %6308 = add nuw nsw i32 %6275, 96
  %6309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6308, i32 undef)  ; BufferLoad(srv,index,wot)
  %6310 = extractvalue %dx.types.ResRet.f32 %6309, 0
  %6311 = extractvalue %dx.types.ResRet.f32 %6309, 1
  %6312 = extractvalue %dx.types.ResRet.f32 %6309, 2
  %6313 = extractvalue %dx.types.ResRet.f32 %6309, 3
  %6314 = bitcast float %6284 to i32
  %6315 = fmul fast float %6289, %76
  %6316 = fmul fast float %6289, %77
  %6317 = fmul fast float %6289, %78
  %6318 = fadd fast float %6315, %146
  %6319 = fadd fast float %6316, %147
  %6320 = fadd fast float %6317, %148
  %6321 = fmul fast float %6318, %6292
  %6322 = call float @dx.op.tertiary.f32(i32 46, float %6319, float %6298, float %6321)  ; FMad(a,b,c)
  %6323 = call float @dx.op.tertiary.f32(i32 46, float %6320, float %6304, float %6322)  ; FMad(a,b,c)
  %6324 = fadd fast float %6323, %6310
  %6325 = fmul fast float %6318, %6293
  %6326 = call float @dx.op.tertiary.f32(i32 46, float %6319, float %6299, float %6325)  ; FMad(a,b,c)
  %6327 = call float @dx.op.tertiary.f32(i32 46, float %6320, float %6305, float %6326)  ; FMad(a,b,c)
  %6328 = fadd fast float %6327, %6311
  %6329 = fmul fast float %6318, %6294
  %6330 = call float @dx.op.tertiary.f32(i32 46, float %6319, float %6300, float %6329)  ; FMad(a,b,c)
  %6331 = call float @dx.op.tertiary.f32(i32 46, float %6320, float %6306, float %6330)  ; FMad(a,b,c)
  %6332 = fadd fast float %6331, %6312
  %6333 = fmul fast float %6318, %6295
  %6334 = call float @dx.op.tertiary.f32(i32 46, float %6319, float %6301, float %6333)  ; FMad(a,b,c)
  %6335 = call float @dx.op.tertiary.f32(i32 46, float %6320, float %6307, float %6334)  ; FMad(a,b,c)
  %6336 = fadd fast float %6335, %6313
  %6337 = fdiv fast float %6324, %6336
  %6338 = fdiv fast float %6328, %6336
  %6339 = fdiv fast float %6332, %6336
  %6340 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6339)  ; FMax(a,b)
  %6341 = fmul fast float %280, 0x401921FB60000000
  %6342 = call float @dx.op.unary.f32(i32 13, float %6341)  ; Sin(value)
  %6343 = call float @dx.op.unary.f32(i32 12, float %6341)  ; Cos(value)
  %6344 = fmul fast float %6343, %6288
  %6345 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6288, float 0.000000e+00)  ; FMad(a,b,c)
  %6346 = fmul fast float %6288, %6342
  %6347 = fsub fast float -0.000000e+00, %6346
  %6348 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %6288, float 0.000000e+00)  ; FMad(a,b,c)
  br label %6349

; <label>:6349                                    ; preds = %6349, %6274
  %6350 = phi float [ 0.000000e+00, %6274 ], [ %6382, %6349 ]
  %6351 = phi float [ 0.000000e+00, %6274 ], [ %6384, %6349 ]
  %6352 = phi i32 [ 0, %6274 ], [ %6385, %6349 ]
  %6353 = mul i32 %6352, 2
  %6354 = add i32 0, %6353
  %6355 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6354
  %6356 = load float, float* %6355, align 4
  %6357 = mul i32 %6352, 2
  %6358 = add i32 1, %6357
  %6359 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6358
  %6360 = load float, float* %6359, align 4
  %6361 = fmul fast float %6344, %6356
  %6362 = call float @dx.op.tertiary.f32(i32 46, float %6360, float %6347, float %6361)  ; FMad(a,b,c)
  %6363 = fmul fast float %6356, %6345
  %6364 = call float @dx.op.tertiary.f32(i32 46, float %6360, float %6348, float %6363)  ; FMad(a,b,c)
  %6365 = fadd fast float %6362, %6337
  %6366 = fadd fast float %6364, %6338
  %6367 = fmul fast float %6365, %6283
  %6368 = fmul fast float %6366, %6283
  %6369 = call float @dx.op.binary.f32(i32 35, float %6367, float %6279)  ; FMax(a,b)
  %6370 = call float @dx.op.binary.f32(i32 35, float %6368, float %6279)  ; FMax(a,b)
  %6371 = call float @dx.op.binary.f32(i32 36, float %6369, float %6280)  ; FMin(a,b)
  %6372 = call float @dx.op.binary.f32(i32 36, float %6370, float %6280)  ; FMin(a,b)
  %6373 = fadd fast float %6371, %6277
  %6374 = fadd fast float %6372, %6278
  %6375 = uitofp i32 %6314 to float
  %6376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %6373, float %6374, float %6375, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6377 = extractvalue %dx.types.ResRet.f32 %6376, 0
  %6378 = fsub fast float %6377, %6340
  %6379 = fsub fast float %6378, %6287
  %6380 = fcmp fast ogt float %6379, 0.000000e+00
  %6381 = select i1 %6380, float 1.000000e+00, float 0.000000e+00
  %6382 = fadd fast float %6381, %6350
  %6383 = select i1 %6380, float %6379, float 0.000000e+00
  %6384 = fadd fast float %6383, %6351
  %6385 = add nuw nsw i32 %6352, 1
  %6386 = icmp eq i32 %6385, 8
  br i1 %6386, label %6387, label %6349

; <label>:6387                                    ; preds = %6349
  %6388 = fdiv fast float 1.000000e+00, %6382
  %6389 = fmul fast float %6388, %6384
  %6390 = fdiv fast float 1.000000e+00, %6340
  %6391 = fmul fast float %6389, %6390
  %6392 = call float @dx.op.unary.f32(i32 7, float %6391)  ; Saturate(value)
  %6393 = call float @dx.op.binary.f32(i32 35, float %6392, float 0.000000e+00)  ; FMax(a,b)
  %6394 = fmul fast float %6382, 1.250000e-01
  %6395 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6396 = fmul fast float %6395, 2.000000e+00
  %6397 = fadd fast float %6396, -1.000000e+00
  %6398 = fcmp fast ogt float %6397, 0.000000e+00
  %6399 = fcmp fast olt float %6397, 0.000000e+00
  %6400 = zext i1 %6398 to i32
  %6401 = zext i1 %6399 to i32
  %6402 = sub nsw i32 %6400, %6401
  %6403 = sitofp i32 %6402 to float
  %6404 = fmul fast float %6403, %6397
  %6405 = fsub fast float 1.000000e+00, %6404
  %6406 = fmul fast float %6405, %6405
  %6407 = fmul fast float %6406, %6405
  %6408 = fsub fast float %6405, %6407
  %6409 = fmul fast float %6408, %6393
  %6410 = fsub fast float 1.000000e+00, %6407
  %6411 = fsub fast float %6410, %6409
  %6412 = fmul fast float %6403, 5.000000e-01
  %6413 = fmul fast float %6412, %6411
  %6414 = fsub fast float -5.000000e-01, %6413
  %6415 = fmul fast float %6414, %6248
  %6416 = fadd fast float %6415, 1.000000e+00
  %6417 = fmul fast float %6416, %6260
  br label %6418

; <label>:6418                                    ; preds = %6387, %6272
  %6419 = phi float [ %6417, %6387 ], [ %6260, %6272 ]
  %6420 = call float @dx.op.binary.f32(i32 36, float %6419, float %6419)  ; FMin(a,b)
  %6421 = call float @dx.op.binary.f32(i32 36, float %6419, float %6420)  ; FMin(a,b)
  %6422 = fcmp fast ogt float %6421, 0.000000e+00
  br i1 %6422, label %6423, label %6264, !dx.controlflow.hints !147

; <label>:6423                                    ; preds = %6418
  %6424 = fmul fast float %6419, %6181
  %6425 = fmul fast float %6419, %6182
  %6426 = fmul fast float %6419, %6183
  %6427 = fsub fast float %6165, %2193
  %6428 = fcmp fast ogt float %6427, 0.000000e+00
  %6429 = fsub fast float %148, %2193
  %6430 = fcmp fast ogt float %6429, 0.000000e+00
  %6431 = xor i1 %6430, %6428
  %6432 = fsub fast float %2193, %6165
  %6433 = fmul fast float %6432, 2.000000e+00
  %6434 = fadd fast float %6433, %6165
  %6435 = select i1 %6431, float %6165, float %6434
  %6436 = fsub fast float %6435, %148
  %6437 = call float @dx.op.dot3.f32(i32 55, float %6192, float %6193, float %6436, float %6192, float %6193, float %6436)  ; Dot3(ax,ay,az,bx,by,bz)
  %6438 = call float @dx.op.unary.f32(i32 25, float %6437)  ; Rsqrt(value)
  %6439 = fmul fast float %6438, %6192
  %6440 = fmul fast float %6438, %6193
  %6441 = fmul fast float %6438, %6436
  %6442 = fsub fast float %2193, %148
  %6443 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6442)  ; Dot3(ax,ay,az,bx,by,bz)
  %6444 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6439, float %6440, float %6441)  ; Dot3(ax,ay,az,bx,by,bz)
  %6445 = fdiv fast float 1.000000e+00, %6444
  %6446 = fmul fast float %6445, %6443
  %6447 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6429, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6448 = fcmp fast ogt float %6447, 0.000000e+00
  %6449 = fcmp fast olt float %6447, 0.000000e+00
  %6450 = zext i1 %6448 to i32
  %6451 = zext i1 %6449 to i32
  %6452 = sub nsw i32 %6450, %6451
  %6453 = sitofp i32 %6452 to float
  %6454 = fsub fast float %6435, %2193
  %6455 = call float @dx.op.dot3.f32(i32 55, float %6192, float %6193, float %6454, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6456 = fcmp fast ogt float %6455, 0.000000e+00
  %6457 = fcmp fast olt float %6455, 0.000000e+00
  %6458 = zext i1 %6456 to i32
  %6459 = zext i1 %6457 to i32
  %6460 = sub nsw i32 %6458, %6459
  %6461 = sitofp i32 %6460 to float
  %6462 = fcmp fast une float %6453, %6461
  br i1 %6462, label %6463, label %6473

; <label>:6463                                    ; preds = %6423
  %6464 = fmul fast float %6446, %6441
  %6465 = fmul fast float %6446, %6440
  %6466 = fmul fast float %6446, %6439
  %6467 = fmul fast float %6466, %6466
  %6468 = fmul fast float %6465, %6465
  %6469 = fadd fast float %6467, %6468
  %6470 = fmul fast float %6464, %6464
  %6471 = fadd fast float %6469, %6470
  %6472 = call float @dx.op.unary.f32(i32 24, float %6471)  ; Sqrt(value)
  br label %6485

; <label>:6473                                    ; preds = %6423
  %6474 = icmp slt i32 %6452, 0
  br i1 %6474, label %6475, label %6485

; <label>:6475                                    ; preds = %6473
  %6476 = fsub fast float %146, %6163
  %6477 = fsub fast float %147, %6164
  %6478 = fsub fast float %148, %6435
  %6479 = fmul fast float %6476, %6476
  %6480 = fmul fast float %6477, %6477
  %6481 = fadd fast float %6479, %6480
  %6482 = fmul fast float %6478, %6478
  %6483 = fadd fast float %6481, %6482
  %6484 = call float @dx.op.unary.f32(i32 24, float %6483)  ; Sqrt(value)
  br label %6485

; <label>:6485                                    ; preds = %6475, %6473, %6463
  %6486 = phi float [ %6472, %6463 ], [ %6484, %6475 ], [ 0.000000e+00, %6473 ]
  %6487 = and i1 %6430, %6428
  %6488 = fsub fast float -0.000000e+00, %6486
  %6489 = select i1 %6487, float -0.000000e+00, float %6488
  %6490 = fmul fast float %2194, 0x3FF7154760000000
  %6491 = fmul fast float %6490, %6489
  %6492 = fmul fast float %2195, 0x3FF7154760000000
  %6493 = fmul fast float %6492, %6489
  %6494 = fmul fast float %2196, 0x3FF7154760000000
  %6495 = fmul fast float %6494, %6489
  %6496 = call float @dx.op.unary.f32(i32 21, float %6491)  ; Exp(value)
  %6497 = call float @dx.op.unary.f32(i32 21, float %6493)  ; Exp(value)
  %6498 = call float @dx.op.unary.f32(i32 21, float %6495)  ; Exp(value)
  %6499 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6500 = call float @dx.op.unary.f32(i32 7, float %6497)  ; Saturate(value)
  %6501 = call float @dx.op.unary.f32(i32 7, float %6498)  ; Saturate(value)
  %6502 = fmul fast float %6424, %6499
  %6503 = fmul fast float %6425, %6500
  %6504 = fmul fast float %6426, %6501
  %6505 = fsub fast float %6198, %195
  %6506 = fsub fast float %6199, %196
  %6507 = fsub fast float %6200, %197
  %6508 = call float @dx.op.dot3.f32(i32 55, float %6505, float %6506, float %6507, float %6505, float %6506, float %6507)  ; Dot3(ax,ay,az,bx,by,bz)
  %6509 = call float @dx.op.unary.f32(i32 25, float %6508)  ; Rsqrt(value)
  %6510 = fmul fast float %6509, %6505
  %6511 = fmul fast float %6509, %6506
  %6512 = fmul fast float %6509, %6507
  %6513 = call float @dx.op.dot3.f32(i32 55, float %6198, float %6199, float %6200, float %2382, float %2383, float %2384)  ; Dot3(ax,ay,az,bx,by,bz)
  %6514 = call float @dx.op.dot3.f32(i32 55, float %2210, float %2211, float %2212, float %6510, float %6511, float %6512)  ; Dot3(ax,ay,az,bx,by,bz)
  %6515 = call float @dx.op.unary.f32(i32 7, float %6513)  ; Saturate(value)
  %6516 = fmul fast float %6515, %6205
  %6517 = fmul fast float %6515, %6515
  %6518 = fmul fast float %6517, %4356
  %6519 = call float @dx.op.unary.f32(i32 7, float %6518)  ; Saturate(value)
  %6520 = fmul fast float %6516, %6519
  %6521 = bitcast float %6195 to i32
  %6522 = ashr i32 %6521, 1
  %6523 = sub nsw i32 1597463007, %6522
  %6524 = bitcast i32 %6523 to float
  %6525 = fmul fast float %6524, %6192
  %6526 = fmul fast float %6524, %6193
  %6527 = fmul fast float %6524, %6194
  %6528 = fsub fast float %6525, %195
  %6529 = fsub fast float %6526, %196
  %6530 = fsub fast float %6527, %197
  %6531 = call float @dx.op.dot3.f32(i32 55, float %6528, float %6529, float %6530, float %6528, float %6529, float %6530)  ; Dot3(ax,ay,az,bx,by,bz)
  %6532 = call float @dx.op.unary.f32(i32 25, float %6531)  ; Rsqrt(value)
  %6533 = fmul fast float %6528, %6532
  %6534 = fmul fast float %6529, %6532
  %6535 = fmul fast float %6530, %6532
  %6536 = call float @dx.op.dot3.f32(i32 55, float %2382, float %2383, float %2384, float %6533, float %6534, float %6535)  ; Dot3(ax,ay,az,bx,by,bz)
  %6537 = fmul fast float %6536, %6536
  %6538 = call float @dx.op.unary.f32(i32 6, float %6513)  ; FAbs(value)
  %6539 = fsub fast float 1.000000e+00, %2408
  %6540 = fmul fast float %2390, %2390
  %6541 = fmul fast float %6540, %6539
  %6542 = fadd fast float %6541, %2408
  %6543 = bitcast float %6542 to i32
  %6544 = ashr i32 %6543, 1
  %6545 = add nsw i32 %6544, 532487669
  %6546 = bitcast i32 %6545 to float
  %6547 = fadd fast float %6546, %2390
  %6548 = fmul fast float %2408, %6537
  %6549 = fsub fast float 1.000000e+00, %6537
  %6550 = fadd fast float %6549, %6548
  %6551 = fmul fast float %6538, %6538
  %6552 = fmul fast float %6551, %6539
  %6553 = fadd fast float %6552, %2408
  %6554 = bitcast float %6553 to i32
  %6555 = ashr i32 %6554, 1
  %6556 = add nsw i32 %6555, 532487669
  %6557 = bitcast i32 %6556 to float
  %6558 = fadd fast float %6557, %6538
  %6559 = fmul fast float %6550, %6550
  %6560 = fmul fast float %6559, %6547
  %6561 = fmul fast float %6560, %6558
  %6562 = fdiv fast float 1.000000e+00, %6561
  %6563 = bitcast float %2408 to i32
  %6564 = sitofp i32 %6563 to float
  %6565 = fmul fast float %6564, 0x3FE7F73180000000
  %6566 = fadd fast float %6565, 0x41AFE27C40000000
  %6567 = fptosi float %6566 to i32
  %6568 = bitcast i32 %6567 to float
  %6569 = fmul fast float %6160, 0x3FD80E9D60000000
  %6570 = fmul fast float %6569, %6524
  %6571 = fadd fast float %6568, %6570
  %6572 = bitcast float %6571 to i32
  %6573 = sub nsw i32 2129859010, %6572
  %6574 = bitcast i32 %6573 to float
  %6575 = fmul fast float %2408, %6562
  %6576 = fmul fast float %6575, %6568
  %6577 = fmul fast float %6576, %6574
  %6578 = fmul fast float %3699, 0x3FF9999980000000
  %6579 = fsub fast float 5.000000e+00, %6578
  %6580 = call float @dx.op.unary.f32(i32 6, float %6514)  ; FAbs(value)
  %6581 = fsub fast float 1.000000e+00, %6580
  %6582 = fmul fast float %3699, 0x41D9660740000000
  %6583 = fadd fast float %6582, 0xC1EFBF8940000000
  %6584 = bitcast float %6581 to i32
  %6585 = sitofp i32 %6584 to float
  %6586 = fmul fast float %6585, %6579
  %6587 = fadd fast float %6583, %6586
  %6588 = fptosi float %6587 to i32
  %6589 = bitcast i32 %6588 to float
  %6590 = fsub fast float 1.000000e+00, %2376
  %6591 = fsub fast float 1.000000e+00, %2377
  %6592 = fsub fast float 1.000000e+00, %2388
  %6593 = fmul fast float %6589, %6590
  %6594 = fmul fast float %6589, %6591
  %6595 = fmul fast float %6589, %6592
  %6596 = fadd fast float %6593, %2376
  %6597 = fadd fast float %6594, %2377
  %6598 = fadd fast float %6595, %2388
  br i1 %3722, label %6599, label %6622

; <label>:6599                                    ; preds = %6485
  %6600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1717, float %6580, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6601 = extractvalue %dx.types.ResRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.ResRet.f32 %6600, 1
  %6603 = extractvalue %dx.types.ResRet.f32 %6600, 2
  %6604 = fadd fast float %6601, -5.000000e-01
  %6605 = fadd fast float %6602, -5.000000e-01
  %6606 = fadd fast float %6603, -5.000000e-01
  %6607 = fmul fast float %2376, 4.000000e+00
  %6608 = fmul fast float %6607, %6590
  %6609 = fmul fast float %6608, %6604
  %6610 = fmul fast float %2377, 4.000000e+00
  %6611 = fmul fast float %6610, %6591
  %6612 = fmul fast float %6611, %6605
  %6613 = fmul fast float %2388, 4.000000e+00
  %6614 = fmul fast float %6613, %6592
  %6615 = fmul fast float %6614, %6606
  %6616 = fadd fast float %6609, %6596
  %6617 = fadd fast float %6612, %6597
  %6618 = fadd fast float %6615, %6598
  %6619 = call float @dx.op.unary.f32(i32 7, float %6616)  ; Saturate(value)
  %6620 = call float @dx.op.unary.f32(i32 7, float %6617)  ; Saturate(value)
  %6621 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  br label %6622

; <label>:6622                                    ; preds = %6599, %6485
  %6623 = phi float [ %6619, %6599 ], [ %6596, %6485 ]
  %6624 = phi float [ %6620, %6599 ], [ %6597, %6485 ]
  %6625 = phi float [ %6621, %6599 ], [ %6598, %6485 ]
  %6626 = fmul fast float %6513, 9.843750e-01
  %6627 = fadd fast float %6626, 7.812500e-03
  %6628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6627, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6629 = extractvalue %dx.types.ResRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.ResRet.f32 %6628, 1
  %6631 = extractvalue %dx.types.ResRet.f32 %6628, 2
  %6632 = extractvalue %dx.types.ResRet.f32 %6628, 3
  %6633 = fsub fast float %6631, %6629
  %6634 = fsub fast float %6632, %6630
  %6635 = fmul fast float %6633, %3709
  %6636 = fmul fast float %6634, %3709
  %6637 = fadd fast float %6635, %6629
  %6638 = fadd fast float %6636, %6630
  %6639 = fmul fast float %6637, %2376
  %6640 = fmul fast float %6637, %2377
  %6641 = fmul fast float %6637, %2388
  %6642 = fadd fast float %6639, %6638
  %6643 = fadd fast float %6640, %6638
  %6644 = fadd fast float %6641, %6638
  br i1 %3722, label %6645, label %6668

; <label>:6645                                    ; preds = %6622
  %6646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1717, float %6513, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6647 = extractvalue %dx.types.ResRet.f32 %6646, 0
  %6648 = extractvalue %dx.types.ResRet.f32 %6646, 1
  %6649 = extractvalue %dx.types.ResRet.f32 %6646, 2
  %6650 = fadd fast float %6647, -5.000000e-01
  %6651 = fadd fast float %6648, -5.000000e-01
  %6652 = fadd fast float %6649, -5.000000e-01
  %6653 = fmul fast float %2376, 4.000000e+00
  %6654 = fmul fast float %6653, %6590
  %6655 = fmul fast float %6654, %6650
  %6656 = fmul fast float %2377, 4.000000e+00
  %6657 = fmul fast float %6656, %6591
  %6658 = fmul fast float %6657, %6651
  %6659 = fmul fast float %2388, 4.000000e+00
  %6660 = fmul fast float %6659, %6592
  %6661 = fmul fast float %6660, %6652
  %6662 = fadd fast float %6655, %6642
  %6663 = fadd fast float %6658, %6643
  %6664 = fadd fast float %6661, %6644
  %6665 = call float @dx.op.unary.f32(i32 7, float %6662)  ; Saturate(value)
  %6666 = call float @dx.op.unary.f32(i32 7, float %6663)  ; Saturate(value)
  %6667 = call float @dx.op.unary.f32(i32 7, float %6664)  ; Saturate(value)
  br label %6668

; <label>:6668                                    ; preds = %6645, %6622
  %6669 = phi float [ %6665, %6645 ], [ %6642, %6622 ]
  %6670 = phi float [ %6666, %6645 ], [ %6643, %6622 ]
  %6671 = phi float [ %6667, %6645 ], [ %6644, %6622 ]
  %6672 = call float @dx.op.binary.f32(i32 35, float %6670, float %6671)  ; FMax(a,b)
  %6673 = call float @dx.op.binary.f32(i32 35, float %6669, float %6672)  ; FMax(a,b)
  %6674 = fsub fast float 1.000000e+00, %6673
  %6675 = call float @dx.op.binary.f32(i32 35, float %6538, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6676 = fdiv fast float %1117, %6675
  %6677 = fmul fast float %4269, %6676
  %6678 = fmul fast float %4271, %6676
  %6679 = fmul fast float %4273, %6676
  %6680 = call float @dx.op.unary.f32(i32 21, float %6677)  ; Exp(value)
  %6681 = call float @dx.op.unary.f32(i32 21, float %6678)  ; Exp(value)
  %6682 = call float @dx.op.unary.f32(i32 21, float %6679)  ; Exp(value)
  %6683 = call float @dx.op.unary.f32(i32 7, float %6680)  ; Saturate(value)
  %6684 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6685 = call float @dx.op.unary.f32(i32 7, float %6682)  ; Saturate(value)
  %6686 = select i1 %4266, float %6683, float 0.000000e+00
  %6687 = select i1 %4267, float %6684, float 0.000000e+00
  %6688 = select i1 %4268, float %6685, float 0.000000e+00
  %6689 = fsub fast float -0.000000e+00, %2382
  %6690 = fsub fast float -0.000000e+00, %2383
  %6691 = fsub fast float -0.000000e+00, %2384
  %6692 = call float @dx.op.dot3.f32(i32 55, float %6198, float %6199, float %6200, float %6689, float %6690, float %6691)  ; Dot3(ax,ay,az,bx,by,bz)
  %6693 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  %6694 = fmul fast float %6693, %6205
  %6695 = fmul fast float %6693, 9.843750e-01
  %6696 = fadd fast float %6695, 7.812500e-03
  %6697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6696, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6698 = extractvalue %dx.types.ResRet.f32 %6697, 0
  %6699 = extractvalue %dx.types.ResRet.f32 %6697, 1
  %6700 = extractvalue %dx.types.ResRet.f32 %6697, 2
  %6701 = extractvalue %dx.types.ResRet.f32 %6697, 3
  %6702 = fsub fast float %6700, %6698
  %6703 = fsub fast float %6701, %6699
  %6704 = fmul fast float %6702, %3709
  %6705 = fmul fast float %6703, %3709
  %6706 = fadd fast float %6704, %6698
  %6707 = fadd fast float %6705, %6699
  %6708 = fmul fast float %6706, %2376
  %6709 = fmul fast float %6706, %2377
  %6710 = fmul fast float %6706, %2388
  %6711 = fadd fast float %6708, %6707
  %6712 = fadd fast float %6709, %6707
  %6713 = fadd fast float %6710, %6707
  br i1 %3722, label %6714, label %6737

; <label>:6714                                    ; preds = %6668
  %6715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1717, float %6693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6716 = extractvalue %dx.types.ResRet.f32 %6715, 0
  %6717 = extractvalue %dx.types.ResRet.f32 %6715, 1
  %6718 = extractvalue %dx.types.ResRet.f32 %6715, 2
  %6719 = fadd fast float %6716, -5.000000e-01
  %6720 = fadd fast float %6717, -5.000000e-01
  %6721 = fadd fast float %6718, -5.000000e-01
  %6722 = fmul fast float %2376, 4.000000e+00
  %6723 = fmul fast float %6722, %6590
  %6724 = fmul fast float %6723, %6719
  %6725 = fmul fast float %2377, 4.000000e+00
  %6726 = fmul fast float %6725, %6591
  %6727 = fmul fast float %6726, %6720
  %6728 = fmul fast float %2388, 4.000000e+00
  %6729 = fmul fast float %6728, %6592
  %6730 = fmul fast float %6729, %6721
  %6731 = fadd fast float %6724, %6711
  %6732 = fadd fast float %6727, %6712
  %6733 = fadd fast float %6730, %6713
  %6734 = call float @dx.op.unary.f32(i32 7, float %6731)  ; Saturate(value)
  %6735 = call float @dx.op.unary.f32(i32 7, float %6732)  ; Saturate(value)
  %6736 = call float @dx.op.unary.f32(i32 7, float %6733)  ; Saturate(value)
  br label %6737

; <label>:6737                                    ; preds = %6714, %6668
  %6738 = phi float [ %6734, %6714 ], [ %6711, %6668 ]
  %6739 = phi float [ %6735, %6714 ], [ %6712, %6668 ]
  %6740 = phi float [ %6736, %6714 ], [ %6713, %6668 ]
  %6741 = call float @dx.op.binary.f32(i32 35, float %6739, float %6740)  ; FMax(a,b)
  %6742 = call float @dx.op.binary.f32(i32 35, float %6738, float %6741)  ; FMax(a,b)
  %6743 = fsub fast float 1.000000e+00, %6742
  %6744 = fmul fast float %2405, %4333
  %6745 = fadd fast float %4335, %6744
  %6746 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6747 = fsub fast float %6525, %2396
  %6748 = fsub fast float %6526, %2397
  %6749 = fsub fast float %6527, %2398
  %6750 = call float @dx.op.dot3.f32(i32 55, float %6747, float %6748, float %6749, float %6747, float %6748, float %6749)  ; Dot3(ax,ay,az,bx,by,bz)
  %6751 = call float @dx.op.unary.f32(i32 25, float %6750)  ; Rsqrt(value)
  %6752 = fmul fast float %6747, %6751
  %6753 = fmul fast float %6748, %6751
  %6754 = fmul fast float %6749, %6751
  %6755 = call float @dx.op.dot3.f32(i32 55, float %6689, float %6690, float %6691, float %6752, float %6753, float %6754)  ; Dot3(ax,ay,az,bx,by,bz)
  %6756 = fmul fast float %6755, %6755
  %6757 = call float @dx.op.unary.f32(i32 6, float %6693)  ; FAbs(value)
  %6758 = call float @dx.op.binary.f32(i32 35, float %6746, float 0x3F847AE140000000)  ; FMax(a,b)
  %6759 = fmul fast float %6758, %6758
  %6760 = fmul fast float %6759, %6759
  %6761 = fsub fast float 1.000000e+00, %6760
  %6762 = fmul fast float %6540, %6761
  %6763 = fadd fast float %6762, %6760
  %6764 = bitcast float %6763 to i32
  %6765 = ashr i32 %6764, 1
  %6766 = add nsw i32 %6765, 532487669
  %6767 = bitcast i32 %6766 to float
  %6768 = fadd fast float %6767, %2390
  %6769 = fmul fast float %6760, %6756
  %6770 = fsub fast float 1.000000e+00, %6756
  %6771 = fadd fast float %6770, %6769
  %6772 = fmul fast float %6757, %6757
  %6773 = fmul fast float %6772, %6761
  %6774 = fadd fast float %6773, %6760
  %6775 = bitcast float %6774 to i32
  %6776 = ashr i32 %6775, 1
  %6777 = add nsw i32 %6776, 532487669
  %6778 = bitcast i32 %6777 to float
  %6779 = fadd fast float %6778, %6757
  %6780 = fmul fast float %6771, %6771
  %6781 = fmul fast float %6780, %6768
  %6782 = fmul fast float %6781, %6779
  %6783 = fdiv fast float 1.000000e+00, %6782
  %6784 = bitcast float %6760 to i32
  %6785 = sitofp i32 %6784 to float
  %6786 = fmul fast float %6785, 0x3FE7F73180000000
  %6787 = fadd fast float %6786, 0x41AFE27C40000000
  %6788 = fptosi float %6787 to i32
  %6789 = bitcast i32 %6788 to float
  %6790 = fadd fast float %6789, %6570
  %6791 = bitcast float %6790 to i32
  %6792 = sub nsw i32 2129859010, %6791
  %6793 = bitcast i32 %6792 to float
  %6794 = fmul fast float %6760, %6783
  %6795 = fmul fast float %6794, %6789
  %6796 = fmul fast float %6795, %6793
  br i1 %6190, label %6797, label %6807

; <label>:6797                                    ; preds = %6737
  %6798 = fmul fast float %6694, %6686
  %6799 = fmul fast float %6694, %6687
  %6800 = fmul fast float %6694, %6688
  %6801 = fmul fast float %6798, %6743
  %6802 = fmul fast float %6801, %6796
  %6803 = fmul fast float %6799, %6743
  %6804 = fmul fast float %6803, %6796
  %6805 = fmul fast float %6800, %6743
  %6806 = fmul fast float %6805, %6796
  br label %6807

; <label>:6807                                    ; preds = %6797, %6737
  %6808 = phi float [ %6802, %6797 ], [ 0.000000e+00, %6737 ]
  %6809 = phi float [ %6804, %6797 ], [ 0.000000e+00, %6737 ]
  %6810 = phi float [ %6806, %6797 ], [ 0.000000e+00, %6737 ]
  %6811 = fmul fast float %6623, %6577
  %6812 = fmul fast float %6624, %6577
  %6813 = fmul fast float %6625, %6577
  %6814 = fsub fast float 1.000000e+00, %6514
  %6815 = bitcast float %6814 to i32
  %6816 = sitofp i32 %6815 to float
  %6817 = fmul fast float %6816, 5.000000e+00
  %6818 = fadd fast float %6817, 0xC1EFBF8940000000
  %6819 = fptosi float %6818 to i32
  %6820 = bitcast i32 %6819 to float
  %6821 = fmul fast float %6820, %1716
  %6822 = fmul fast float %6674, %6821
  %6823 = fmul fast float %6822, %4261
  %6824 = fmul fast float %6822, %4262
  %6825 = fmul fast float %6822, %4263
  %6826 = fadd fast float %6823, %6811
  %6827 = fadd fast float %6824, %6812
  %6828 = fadd fast float %6825, %6813
  %6829 = fmul fast float %6826, %6520
  %6830 = fmul fast float %6827, %6520
  %6831 = fmul fast float %6828, %6520
  %6832 = fadd fast float %6829, %6808
  %6833 = fadd fast float %6830, %6809
  %6834 = fadd fast float %6831, %6810
  %6835 = fmul fast float %6502, %1767
  %6836 = fmul fast float %6835, %6520
  %6837 = fmul fast float %6836, %6674
  %6838 = fmul fast float %6503, %1767
  %6839 = fmul fast float %6838, %6520
  %6840 = fmul fast float %6839, %6674
  %6841 = fmul fast float %6504, %1767
  %6842 = fmul fast float %6841, %6520
  %6843 = fmul fast float %6842, %6674
  %6844 = fadd fast float %6837, %6134
  %6845 = fadd fast float %6840, %6135
  %6846 = fadd fast float %6843, %6136
  %6847 = fmul fast float %6835, %6832
  %6848 = fmul fast float %6838, %6833
  %6849 = fmul fast float %6841, %6834
  %6850 = fadd fast float %6847, %6131
  %6851 = fadd fast float %6848, %6132
  %6852 = fadd fast float %6849, %6133
  br label %6264

; <label>:6853                                    ; preds = %6264
  br label %6854

; <label>:6854                                    ; preds = %6853, %6097
  %6855 = phi float [ %6099, %6097 ], [ %6265, %6853 ]
  %6856 = phi float [ %6100, %6097 ], [ %6266, %6853 ]
  %6857 = phi float [ %6101, %6097 ], [ %6267, %6853 ]
  %6858 = phi float [ %6102, %6097 ], [ %6268, %6853 ]
  %6859 = phi float [ %6103, %6097 ], [ %6269, %6853 ]
  %6860 = phi float [ %6104, %6097 ], [ %6270, %6853 ]
  %6861 = add i32 %6098, 1
  %6862 = icmp ugt i32 %6861, %6094
  br i1 %6862, label %6863, label %6097

; <label>:6863                                    ; preds = %6854
  br label %6864

; <label>:6864                                    ; preds = %6863, %6047, %6037
  %6865 = phi float [ %6038, %6037 ], [ %6038, %6047 ], [ %6855, %6863 ]
  %6866 = phi float [ %6039, %6037 ], [ %6039, %6047 ], [ %6856, %6863 ]
  %6867 = phi float [ %6040, %6037 ], [ %6040, %6047 ], [ %6857, %6863 ]
  %6868 = phi float [ %6041, %6037 ], [ %6041, %6047 ], [ %6858, %6863 ]
  %6869 = phi float [ %6042, %6037 ], [ %6042, %6047 ], [ %6859, %6863 ]
  %6870 = phi float [ %6043, %6037 ], [ %6043, %6047 ], [ %6860, %6863 ]
  %6871 = fmul fast float %1767, %4290
  %6872 = fsub fast float -0.000000e+00, %6871
  %6873 = fmul fast float %1767, %4291
  %6874 = fsub fast float -0.000000e+00, %6873
  %6875 = fmul fast float %1767, %4292
  %6876 = fsub fast float -0.000000e+00, %6875
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 0
  %6879 = fmul fast float %6878, %4296
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 3
  %6882 = fsub fast float 1.000000e+00, %1712
  %6883 = call float @dx.op.unary.f32(i32 7, float %6882)  ; Saturate(value)
  %6884 = fadd fast float %6870, %1711
  %6885 = fmul fast float %6884, %1712
  %6886 = fmul fast float %6883, %6881
  %6887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %6888 = extractvalue %dx.types.ResRet.i32 %6887, 3
  %6889 = bitcast i32 %6888 to float
  %6890 = fsub fast float %6872, %6889
  %6891 = fsub fast float %6874, %6889
  %6892 = fsub fast float %6876, %6889
  %6893 = fmul fast float %6890, %209
  %6894 = fmul fast float %6891, %209
  %6895 = fmul fast float %6892, %209
  %6896 = fadd fast float %6893, %6889
  %6897 = fadd fast float %6894, %6889
  %6898 = fadd fast float %6895, %6889
  %6899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6900 = extractvalue %dx.types.CBufRet.f32 %6899, 3
  %6901 = fmul fast float %6868, %2379
  %6902 = fmul fast float %6869, %2380
  %6903 = fmul fast float %6870, %2381
  %6904 = fcmp fast ogt float %87, %229
  %6905 = and i1 %6904, %2199
  %6906 = or i1 %2205, %6905
  %6907 = icmp eq i32 %2198, 2
  %6908 = fcmp fast ole float %87, %229
  %6909 = and i1 %6908, %6907
  %6910 = or i1 %6909, %6906
  br i1 %6905, label %6911, label %7170

; <label>:6911                                    ; preds = %6864
  %6912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6913 = extractvalue %dx.types.CBufRet.f32 %6912, 2
  %6914 = extractvalue %dx.types.CBufRet.f32 %6912, 3
  %6915 = fmul fast float %6913, %99
  %6916 = fmul fast float %6914, %100
  %6917 = call float @dx.op.unary.f32(i32 7, float %6915)  ; Saturate(value)
  %6918 = call float @dx.op.unary.f32(i32 7, float %6916)  ; Saturate(value)
  %6919 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6917, float %6918, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6920 = extractvalue %dx.types.ResRet.f32 %6919, 0
  %6921 = extractvalue %dx.types.ResRet.f32 %6919, 1
  %6922 = extractvalue %dx.types.ResRet.f32 %6919, 2
  %6923 = extractvalue %dx.types.ResRet.f32 %6919, 3
  %6924 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6917, float %6918, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6925 = extractvalue %dx.types.ResRet.f32 %6924, 0
  %6926 = extractvalue %dx.types.ResRet.f32 %6924, 1
  %6927 = extractvalue %dx.types.ResRet.f32 %6924, 2
  %6928 = extractvalue %dx.types.ResRet.f32 %6924, 3
  %6929 = call float @dx.op.binary.f32(i32 35, float %6921, float %6922)  ; FMax(a,b)
  %6930 = call float @dx.op.binary.f32(i32 35, float %6920, float %6929)  ; FMax(a,b)
  %6931 = call float @dx.op.binary.f32(i32 35, float %6930, float %6923)  ; FMax(a,b)
  %6932 = call float @dx.op.binary.f32(i32 36, float %6926, float %6927)  ; FMin(a,b)
  %6933 = call float @dx.op.binary.f32(i32 36, float %6925, float %6932)  ; FMin(a,b)
  %6934 = call float @dx.op.binary.f32(i32 36, float %6933, float %6928)  ; FMin(a,b)
  %6935 = fmul fast float %6931, 2.550000e+02
  %6936 = fadd fast float %6935, 0x3F70101020000000
  %6937 = fptoui float %6936 to i32
  %6938 = fmul fast float %6934, 2.550000e+02
  %6939 = fadd fast float %6938, 0x3F70101020000000
  %6940 = fptoui float %6939 to i32
  %6941 = icmp ult i32 %6937, %6940
  br i1 %6941, label %6942, label %7110

; <label>:6942                                    ; preds = %6911
  %6943 = fcmp fast ogt float %86, 9.843750e-01
  %6944 = fadd fast float %87, -4.000000e+00
  %6945 = select i1 %6943, float -4.000000e+00, float %6944
  %6946 = call float @dx.op.binary.f32(i32 35, float %6945, float 0.000000e+00)  ; FMax(a,b)
  %6947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6948 = extractvalue %dx.types.CBufRet.f32 %6947, 0
  %6949 = fadd fast float %6948, %6946
  %6950 = extractvalue %dx.types.CBufRet.f32 %6947, 2
  %6951 = fmul fast float %6949, %6950
  %6952 = call float @dx.op.unary.f32(i32 23, float %6951)  ; Log(value)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6947, 3
  %6954 = fmul fast float %6953, %6952
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6957 = fmul fast float %6954, %6956
  %6958 = call float @dx.op.unary.f32(i32 7, float %6957)  ; Saturate(value)
  %6959 = uitofp i32 %6937 to float
  %6960 = uitofp i32 %6940 to float
  %6961 = fadd fast float %6959, 5.000000e-01
  %6962 = fadd fast float %6960, 5.000000e-01
  %6963 = fmul fast float %6956, %6961
  %6964 = fmul fast float %6956, %6962
  %6965 = fadd fast float %6963, 0x3F0FFB4800000000
  %6966 = fadd fast float %6964, 0xBF0FFB4800000000
  %6967 = call float @dx.op.binary.f32(i32 35, float %6958, float %6965)  ; FMax(a,b)
  %6968 = call float @dx.op.binary.f32(i32 36, float %6967, float %6966)  ; FMin(a,b)
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 1
  %6971 = extractvalue %dx.types.CBufRet.f32 %6969, 2
  %6972 = extractvalue %dx.types.CBufRet.f32 %6969, 0
  %6973 = fmul fast float %6970, %6968
  %6974 = fadd fast float %6972, %6973
  %6975 = fadd fast float %6972, %6971
  %6976 = fsub fast float %6970, %6971
  %6977 = fadd fast float %6976, %6972
  %6978 = call float @dx.op.binary.f32(i32 35, float %6974, float %6975)  ; FMax(a,b)
  %6979 = call float @dx.op.binary.f32(i32 36, float %6978, float %6977)  ; FMin(a,b)
  %6980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6917, float %6918, float %6979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6981 = extractvalue %dx.types.ResRet.f32 %6980, 0
  %6982 = extractvalue %dx.types.ResRet.f32 %6980, 1
  %6983 = extractvalue %dx.types.ResRet.f32 %6980, 2
  %6984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6985 = extractvalue %dx.types.CBufRet.i32 %6984, 0
  %6986 = extractvalue %dx.types.CBufRet.i32 %6984, 1
  %6987 = uitofp i32 %6985 to float
  %6988 = uitofp i32 %6986 to float
  %6989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6990 = extractvalue %dx.types.CBufRet.f32 %6989, 0
  %6991 = extractvalue %dx.types.CBufRet.f32 %6989, 1
  %6992 = fmul fast float %6987, %6917
  %6993 = fmul fast float %6988, %6918
  %6994 = fadd fast float %6992, -5.000000e-01
  %6995 = fadd fast float %6993, -5.000000e-01
  %6996 = call float @dx.op.unary.f32(i32 22, float %6994)  ; Frc(value)
  %6997 = call float @dx.op.unary.f32(i32 22, float %6995)  ; Frc(value)
  %6998 = fmul fast float %6996, %6996
  %6999 = fmul fast float %6998, %6996
  %7000 = fsub fast float 3.000000e+00, %6996
  %7001 = fmul fast float %6998, %7000
  %7002 = fmul fast float %6996, 3.000000e+00
  %7003 = fmul fast float %6999, 3.000000e+00
  %7004 = fmul fast float %6998, 6.000000e+00
  %7005 = fsub fast float %7003, %7004
  %7006 = fadd fast float %7005, 4.000000e+00
  %7007 = fmul fast float %7006, 0x3FC5555560000000
  %7008 = fmul fast float %6999, -3.000000e+00
  %7009 = fadd fast float %6998, %6996
  %7010 = fmul fast float %7009, 3.000000e+00
  %7011 = fadd fast float %7008, 1.000000e+00
  %7012 = fadd fast float %7011, %7010
  %7013 = fmul fast float %6999, 0x3FC5555560000000
  %7014 = fmul fast float %6997, %6997
  %7015 = fmul fast float %7014, %6997
  %7016 = fsub fast float 3.000000e+00, %6997
  %7017 = fmul fast float %7014, %7016
  %7018 = fmul fast float %6997, 3.000000e+00
  %7019 = fmul fast float %7015, 3.000000e+00
  %7020 = fmul fast float %7014, 6.000000e+00
  %7021 = fsub fast float %7019, %7020
  %7022 = fadd fast float %7021, 4.000000e+00
  %7023 = fmul fast float %7022, 0x3FC5555560000000
  %7024 = fmul fast float %7015, -3.000000e+00
  %7025 = fadd fast float %7014, %6997
  %7026 = fmul fast float %7025, 3.000000e+00
  %7027 = fadd fast float %7024, 1.000000e+00
  %7028 = fadd fast float %7027, %7026
  %7029 = fmul fast float %7015, 0x3FC5555560000000
  %7030 = fadd fast float %6996, 1.000000e+00
  %7031 = fsub fast float 1.000000e+00, %7002
  %7032 = fadd fast float %7031, %7001
  %7033 = fadd fast float %7032, %7006
  %7034 = fmul fast float %7033, 0x3FC5555560000000
  %7035 = fdiv fast float %7007, %7034
  %7036 = fsub fast float %7030, %7035
  %7037 = fsub fast float 1.000000e+00, %6996
  %7038 = fadd fast float %7012, %6999
  %7039 = fmul fast float %7038, 0x3FC5555560000000
  %7040 = fdiv fast float %7013, %7039
  %7041 = fadd fast float %7037, %7040
  %7042 = fadd fast float %6997, 1.000000e+00
  %7043 = fsub fast float 1.000000e+00, %7018
  %7044 = fadd fast float %7043, %7017
  %7045 = fadd fast float %7044, %7022
  %7046 = fmul fast float %7045, 0x3FC5555560000000
  %7047 = fdiv fast float %7023, %7046
  %7048 = fsub fast float %7042, %7047
  %7049 = fsub fast float 1.000000e+00, %6997
  %7050 = fadd fast float %7028, %7015
  %7051 = fmul fast float %7050, 0x3FC5555560000000
  %7052 = fdiv fast float %7029, %7051
  %7053 = fadd fast float %7052, %7049
  %7054 = fmul fast float %7036, %6990
  %7055 = fsub fast float %6917, %7054
  %7056 = fmul fast float %7041, %6990
  %7057 = fadd fast float %7056, %6917
  %7058 = fmul fast float %7053, %6991
  %7059 = fadd fast float %7058, %6918
  %7060 = fmul fast float %7048, %6991
  %7061 = fsub fast float %6918, %7060
  %7062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7055, float %7061, float %6979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7063 = extractvalue %dx.types.ResRet.f32 %7062, 0
  %7064 = extractvalue %dx.types.ResRet.f32 %7062, 1
  %7065 = extractvalue %dx.types.ResRet.f32 %7062, 2
  %7066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7057, float %7061, float %6979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7067 = extractvalue %dx.types.ResRet.f32 %7066, 0
  %7068 = extractvalue %dx.types.ResRet.f32 %7066, 1
  %7069 = extractvalue %dx.types.ResRet.f32 %7066, 2
  %7070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7055, float %7059, float %6979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7071 = extractvalue %dx.types.ResRet.f32 %7070, 0
  %7072 = extractvalue %dx.types.ResRet.f32 %7070, 1
  %7073 = extractvalue %dx.types.ResRet.f32 %7070, 2
  %7074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7057, float %7059, float %6979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7075 = extractvalue %dx.types.ResRet.f32 %7074, 0
  %7076 = extractvalue %dx.types.ResRet.f32 %7074, 1
  %7077 = extractvalue %dx.types.ResRet.f32 %7074, 2
  %7078 = fsub fast float %7071, %7063
  %7079 = fsub fast float %7072, %7064
  %7080 = fsub fast float %7073, %7065
  %7081 = fmul fast float %7078, %7051
  %7082 = fmul fast float %7079, %7051
  %7083 = fmul fast float %7080, %7051
  %7084 = fadd fast float %7081, %7063
  %7085 = fadd fast float %7082, %7064
  %7086 = fadd fast float %7083, %7065
  %7087 = fsub fast float %7075, %7067
  %7088 = fsub fast float %7076, %7068
  %7089 = fsub fast float %7077, %7069
  %7090 = fmul fast float %7087, %7051
  %7091 = fmul fast float %7088, %7051
  %7092 = fmul fast float %7089, %7051
  %7093 = fsub fast float %7067, %7084
  %7094 = fadd fast float %7093, %7090
  %7095 = fsub fast float %7068, %7085
  %7096 = fadd fast float %7095, %7091
  %7097 = fsub fast float %7069, %7086
  %7098 = fadd fast float %7097, %7092
  %7099 = fmul fast float %7094, %7039
  %7100 = fmul fast float %7096, %7039
  %7101 = fmul fast float %7098, %7039
  %7102 = fadd fast float %7099, %7084
  %7103 = fadd fast float %7100, %7085
  %7104 = fadd fast float %7101, %7086
  %7105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7106 = extractvalue %dx.types.CBufRet.f32 %7105, 1
  %7107 = fmul fast float %7102, %7106
  %7108 = fmul fast float %7103, %7106
  %7109 = fmul fast float %7104, %7106
  br label %7110

; <label>:7110                                    ; preds = %6942, %6911
  %7111 = phi float [ %6981, %6942 ], [ 1.000000e+00, %6911 ]
  %7112 = phi float [ %6982, %6942 ], [ 1.000000e+00, %6911 ]
  %7113 = phi float [ %6983, %6942 ], [ 1.000000e+00, %6911 ]
  %7114 = phi float [ %7107, %6942 ], [ 0.000000e+00, %6911 ]
  %7115 = phi float [ %7108, %6942 ], [ 0.000000e+00, %6911 ]
  %7116 = phi float [ %7109, %6942 ], [ 0.000000e+00, %6911 ]
  %7117 = fmul fast float %7114, %6896
  %7118 = fmul fast float %7115, %6897
  %7119 = fmul fast float %7116, %6898
  %7120 = call float @dx.op.dot3.f32(i32 55, float %7111, float %7112, float %7113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7121 = call float @dx.op.dot3.f32(i32 55, float %7117, float %7118, float %7119, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7122 = select i1 %269, float %7120, float %7111
  %7123 = select i1 %269, float %7120, float %7112
  %7124 = select i1 %269, float 1.000000e+00, float %7113
  %7125 = select i1 %269, float %7121, float %7117
  %7126 = select i1 %269, float 0.000000e+00, float %7118
  %7127 = select i1 %269, float 0.000000e+00, float %7119
  %7128 = fmul fast float %7122, %6901
  %7129 = fmul fast float %7123, %6902
  %7130 = fmul fast float %7124, %6903
  %7131 = fadd fast float %7128, %7125
  %7132 = fadd fast float %7129, %7126
  %7133 = fadd fast float %7127, %7130
  %7134 = fmul fast float %7122, %6865
  %7135 = fmul fast float %7123, %6866
  %7136 = fmul fast float %7124, %6867
  %7137 = fmul fast float %99, 2.000000e+00
  %7138 = fmul fast float %7137, %6913
  %7139 = fmul fast float %100, 2.000000e+00
  %7140 = fmul fast float %7139, %6914
  %7141 = fsub fast float 1.000000e+00, %7138
  %7142 = fsub fast float 1.000000e+00, %7140
  %7143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7144 = extractvalue %dx.types.CBufRet.f32 %7143, 0
  %7145 = extractvalue %dx.types.CBufRet.f32 %7143, 1
  %7146 = extractvalue %dx.types.CBufRet.f32 %7143, 2
  %7147 = fmul fast float %7141, %7144
  %7148 = fmul fast float %7141, %7145
  %7149 = fmul fast float %7141, %7146
  %7150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7151 = extractvalue %dx.types.CBufRet.f32 %7150, 0
  %7152 = extractvalue %dx.types.CBufRet.f32 %7150, 1
  %7153 = extractvalue %dx.types.CBufRet.f32 %7150, 2
  %7154 = fmul fast float %7142, %7151
  %7155 = fmul fast float %7142, %7152
  %7156 = fmul fast float %7142, %7153
  %7157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.f32 %7157, 0
  %7159 = extractvalue %dx.types.CBufRet.f32 %7157, 1
  %7160 = extractvalue %dx.types.CBufRet.f32 %7157, 2
  %7161 = fadd fast float %7154, %7158
  %7162 = fadd fast float %7161, %7147
  %7163 = fadd fast float %7155, %7159
  %7164 = fadd fast float %7163, %7148
  %7165 = fadd fast float %7156, %7160
  %7166 = fadd fast float %7165, %7149
  %7167 = fmul fast float %7162, %229
  %7168 = fmul fast float %7164, %229
  %7169 = fmul fast float %7166, %229
  br label %7170

; <label>:7170                                    ; preds = %7110, %6864
  %7171 = phi float [ %7167, %7110 ], [ %146, %6864 ]
  %7172 = phi float [ %7168, %7110 ], [ %147, %6864 ]
  %7173 = phi float [ %7169, %7110 ], [ %148, %6864 ]
  %7174 = phi float [ %229, %7110 ], [ %87, %6864 ]
  %7175 = phi float [ %7131, %7110 ], [ %6901, %6864 ]
  %7176 = phi float [ %7132, %7110 ], [ %6902, %6864 ]
  %7177 = phi float [ %7133, %7110 ], [ %6903, %6864 ]
  %7178 = phi float [ %7134, %7110 ], [ %6865, %6864 ]
  %7179 = phi float [ %7135, %7110 ], [ %6866, %6864 ]
  %7180 = phi float [ %7136, %7110 ], [ %6867, %6864 ]
  %7181 = phi float [ %7111, %7110 ], [ 1.000000e+00, %6864 ]
  br i1 %6910, label %8336, label %7182

; <label>:7182                                    ; preds = %7170
  %7183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7184 = extractvalue %dx.types.CBufRet.f32 %7183, 0
  %7185 = extractvalue %dx.types.CBufRet.f32 %7183, 1
  %7186 = extractvalue %dx.types.CBufRet.f32 %7183, 2
  %7187 = extractvalue %dx.types.CBufRet.f32 %7183, 3
  %7188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7189 = extractvalue %dx.types.CBufRet.f32 %7188, 0
  %7190 = extractvalue %dx.types.CBufRet.f32 %7188, 1
  %7191 = extractvalue %dx.types.CBufRet.f32 %7188, 2
  %7192 = extractvalue %dx.types.CBufRet.f32 %7188, 3
  %7193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.f32 %7193, 0
  %7195 = extractvalue %dx.types.CBufRet.f32 %7193, 1
  %7196 = extractvalue %dx.types.CBufRet.f32 %7193, 2
  %7197 = extractvalue %dx.types.CBufRet.f32 %7193, 3
  %7198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7199 = extractvalue %dx.types.CBufRet.f32 %7198, 0
  %7200 = extractvalue %dx.types.CBufRet.f32 %7198, 1
  %7201 = extractvalue %dx.types.CBufRet.f32 %7198, 2
  %7202 = extractvalue %dx.types.CBufRet.f32 %7198, 3
  %7203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7204 = extractvalue %dx.types.CBufRet.f32 %7203, 3
  %7205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7206 = extractvalue %dx.types.CBufRet.f32 %7205, 3
  %7207 = extractvalue %dx.types.CBufRet.f32 %7205, 0
  %7208 = extractvalue %dx.types.CBufRet.f32 %7205, 1
  %7209 = extractvalue %dx.types.CBufRet.f32 %7205, 2
  %7210 = fcmp fast olt float %7209, -5.000000e-01
  %7211 = call float @dx.op.dot3.f32(i32 55, float %7171, float %7172, float %7173, float %7171, float %7172, float %7173)  ; Dot3(ax,ay,az,bx,by,bz)
  %7212 = call float @dx.op.unary.f32(i32 25, float %7211)  ; Rsqrt(value)
  %7213 = fmul fast float %7212, %7211
  %7214 = fmul fast float %7212, %7171
  %7215 = fmul fast float %7212, %7172
  %7216 = fmul fast float %7212, %7173
  %7217 = fadd fast float %7213, %7187
  %7218 = call float @dx.op.dot3.f32(i32 55, float %7214, float %7215, float %7216, float %7184, float %7185, float %7186)  ; Dot3(ax,ay,az,bx,by,bz)
  %7219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7220 = extractvalue %dx.types.CBufRet.i32 %7219, 1
  %7221 = and i32 %7220, 1
  %7222 = icmp ne i32 %7221, 0
  %7223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.f32 %7223, 2
  %7225 = fcmp fast ogt float %7224, 0.000000e+00
  %7226 = and i1 %7222, %7225
  br i1 %7226, label %7227, label %7633, !dx.controlflow.hints !148

; <label>:7227                                    ; preds = %7182
  %7228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7229 = extractvalue %dx.types.CBufRet.f32 %7228, 3
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 2
  %7232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7233 = extractvalue %dx.types.CBufRet.f32 %7232, 2
  %7234 = fsub fast float %7231, %7233
  %7235 = and i32 %7220, 2
  %7236 = extractvalue %dx.types.CBufRet.i32 %7219, 0
  %7237 = call i32 @dx.op.binary.i32(i32 40, i32 %7236, i32 3)  ; UMin(a,b)
  %7238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7239 = extractvalue %dx.types.CBufRet.f32 %7238, 0
  %7240 = extractvalue %dx.types.CBufRet.f32 %7238, 1
  %7241 = extractvalue %dx.types.CBufRet.f32 %7232, 0
  %7242 = extractvalue %dx.types.CBufRet.f32 %7232, 1
  %7243 = fsub fast float %7239, %7241
  %7244 = fsub fast float %7240, %7242
  %7245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7246 = extractvalue %dx.types.CBufRet.f32 %7245, 0
  %7247 = fcmp fast ogt float %7246, 0.000000e+00
  %7248 = fsub fast float -0.000000e+00, %7243
  %7249 = fsub fast float -0.000000e+00, %7244
  %7250 = call float @dx.op.dot2.f32(i32 54, float %7214, float %7215, float %7214, float %7215)  ; Dot2(ax,ay,bx,by)
  %7251 = call float @dx.op.dot2.f32(i32 54, float %7214, float %7215, float %7248, float %7249)  ; Dot2(ax,ay,bx,by)
  %7252 = fmul fast float %7251, 2.000000e+00
  %7253 = call float @dx.op.dot2.f32(i32 54, float %7248, float %7249, float %7248, float %7249)  ; Dot2(ax,ay,bx,by)
  %7254 = fmul fast float %7246, %7246
  %7255 = fsub fast float %7253, %7254
  %7256 = fmul fast float %7252, %7252
  %7257 = fmul fast float %7250, 4.000000e+00
  %7258 = fmul fast float %7257, %7255
  %7259 = fsub fast float %7256, %7258
  %7260 = fcmp fast ogt float %7259, 0.000000e+00
  br i1 %7260, label %7261, label %7276

; <label>:7261                                    ; preds = %7227
  %7262 = fcmp fast ogt float %7252, 0.000000e+00
  %7263 = call float @dx.op.unary.f32(i32 24, float %7259)  ; Sqrt(value)
  %7264 = fsub fast float -0.000000e+00, %7263
  %7265 = select i1 %7262, float %7263, float %7264
  %7266 = fadd fast float %7265, %7252
  %7267 = fmul float %7266, -5.000000e-01
  %7268 = fdiv fast float %7267, %7250
  %7269 = call float @dx.op.binary.f32(i32 35, float %7268, float 0.000000e+00)  ; FMax(a,b)
  %7270 = call float @dx.op.binary.f32(i32 36, float %7213, float %7269)  ; FMin(a,b)
  %7271 = fdiv fast float %7255, %7267
  %7272 = call float @dx.op.binary.f32(i32 35, float %7271, float 0.000000e+00)  ; FMax(a,b)
  %7273 = call float @dx.op.binary.f32(i32 36, float %7213, float %7272)  ; FMin(a,b)
  %7274 = call float @dx.op.binary.f32(i32 36, float %7270, float %7273)  ; FMin(a,b)
  %7275 = call float @dx.op.binary.f32(i32 35, float %7270, float %7273)  ; FMax(a,b)
  br label %7276

; <label>:7276                                    ; preds = %7261, %7227
  %7277 = phi float [ %7275, %7261 ], [ -1.000000e+00, %7227 ]
  %7278 = phi float [ %7274, %7261 ], [ -1.000000e+00, %7227 ]
  %7279 = phi i1 [ true, %7261 ], [ false, %7227 ]
  %7280 = and i1 %7247, %7279
  br i1 %7280, label %7281, label %7283

; <label>:7281                                    ; preds = %7276
  %7282 = fcmp fast oeq float %7278, %7277
  br i1 %7282, label %7586, label %7284

; <label>:7283                                    ; preds = %7276
  br i1 %7247, label %7586, label %7284

; <label>:7284                                    ; preds = %7283, %7281
  %7285 = phi float [ %7213, %7283 ], [ %7277, %7281 ]
  %7286 = phi float [ 0.000000e+00, %7283 ], [ %7278, %7281 ]
  %7287 = icmp ne i32 %7235, 0
  %7288 = fmul fast float %7285, %7216
  %7289 = fadd fast float %7288, %7229
  %7290 = fmul fast float %7289, %7285
  %7291 = select i1 %7287, float 0.000000e+00, float %7290
  %7292 = fcmp fast oeq float %7216, 0.000000e+00
  %7293 = fdiv fast float %7234, %7216
  %7294 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7293)  ; FMax(a,b)
  %7295 = select i1 %7292, float %7285, float %7294
  %7296 = call float @dx.op.binary.f32(i32 36, float %7285, float %7295)  ; FMin(a,b)
  %7297 = fcmp fast ogt float %7216, 0.000000e+00
  %7298 = fcmp fast olt float %7234, 0.000000e+00
  br i1 %7297, label %7299, label %7356

; <label>:7299                                    ; preds = %7284
  %7300 = icmp eq i32 %7235, 0
  br i1 %7298, label %7301, label %7345

; <label>:7301                                    ; preds = %7299
  %7302 = select i1 %7300, float %7285, float 0.000000e+00
  %7303 = fsub fast float -0.000000e+00, %7302
  %7304 = call float @dx.op.unary.f32(i32 6, float %7303)  ; FAbs(value)
  %7305 = fmul fast float %7302, %7216
  %7306 = fadd fast float %7305, %7229
  %7307 = fmul fast float %7304, %7306
  %7308 = fsub fast float %7291, %7307
  %7309 = fsub fast float %7285, %7304
  %7310 = select i1 %7300, float %7309, float 0.000000e+00
  %7311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7312 = extractvalue %dx.types.CBufRet.f32 %7311, 0
  %7313 = extractvalue %dx.types.CBufRet.f32 %7311, 1
  %7314 = extractvalue %dx.types.CBufRet.f32 %7311, 2
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 0
  %7317 = extractvalue %dx.types.CBufRet.f32 %7315, 1
  %7318 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7319 = extractvalue %dx.types.CBufRet.f32 %7315, 3
  %7320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7321 = extractvalue %dx.types.CBufRet.f32 %7320, 3
  %7322 = call float @dx.op.binary.f32(i32 36, float %7308, float %7321)  ; FMin(a,b)
  %7323 = fmul fast float %7319, %7310
  %7324 = call float @dx.op.unary.f32(i32 7, float %7323)  ; Saturate(value)
  %7325 = fsub fast float %7316, %7312
  %7326 = fsub fast float %7317, %7313
  %7327 = fsub fast float %7318, %7314
  %7328 = fmul fast float %7324, %7325
  %7329 = fmul fast float %7324, %7326
  %7330 = fmul fast float %7324, %7327
  %7331 = fadd fast float %7328, %7312
  %7332 = fadd fast float %7329, %7313
  %7333 = fadd fast float %7330, %7314
  %7334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7335 = extractvalue %dx.types.CBufRet.f32 %7334, 0
  %7336 = extractvalue %dx.types.CBufRet.f32 %7334, 1
  %7337 = fadd fast float %7336, %7335
  %7338 = call float @dx.op.unary.f32(i32 7, float %7337)  ; Saturate(value)
  %7339 = extractvalue %dx.types.CBufRet.f32 %7334, 2
  %7340 = extractvalue %dx.types.CBufRet.f32 %7334, 3
  %7341 = fadd fast float %7340, %7339
  %7342 = call float @dx.op.unary.f32(i32 7, float %7341)  ; Saturate(value)
  %7343 = fmul fast float %7338, %7322
  %7344 = fmul fast float %7343, %7342
  br label %7586

; <label>:7345                                    ; preds = %7299
  br i1 %7300, label %7346, label %7367

; <label>:7346                                    ; preds = %7345
  %7347 = call float @dx.op.binary.f32(i32 36, float %7296, float %7286)  ; FMin(a,b)
  %7348 = fsub fast float %7296, %7347
  %7349 = fsub fast float %7348, %7285
  %7350 = call float @dx.op.unary.f32(i32 6, float %7349)  ; FAbs(value)
  %7351 = fadd fast float %7348, %7285
  %7352 = fmul fast float %7351, %7216
  %7353 = fadd fast float %7352, %7229
  %7354 = fmul fast float %7353, %7350
  %7355 = fsub fast float %7291, %7354
  br label %7367

; <label>:7356                                    ; preds = %7284
  br i1 %7298, label %7357, label %7367

; <label>:7357                                    ; preds = %7356
  %7358 = call float @dx.op.binary.f32(i32 35, float %7286, float %7296)  ; FMax(a,b)
  %7359 = icmp eq i32 %7235, 0
  %7360 = select i1 %7359, float %7296, float 0.000000e+00
  %7361 = fsub fast float -0.000000e+00, %7360
  %7362 = call float @dx.op.unary.f32(i32 6, float %7361)  ; FAbs(value)
  %7363 = fmul fast float %7360, %7216
  %7364 = fadd fast float %7363, %7229
  %7365 = fmul fast float %7362, %7364
  %7366 = fsub fast float %7291, %7365
  br label %7367

; <label>:7367                                    ; preds = %7357, %7356, %7346, %7345
  %7368 = phi float [ %7286, %7345 ], [ %7286, %7346 ], [ %7358, %7357 ], [ %7286, %7356 ]
  %7369 = phi float [ 0.000000e+00, %7345 ], [ %7350, %7346 ], [ %7362, %7357 ], [ 0.000000e+00, %7356 ]
  %7370 = phi float [ %7291, %7345 ], [ %7355, %7346 ], [ %7366, %7357 ], [ %7291, %7356 ]
  %7371 = phi float [ %7296, %7345 ], [ %7296, %7346 ], [ %7285, %7357 ], [ %7285, %7356 ]
  %7372 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %7372, align 4, !tbaa !135, !noalias !149
  %7373 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %7373, align 4, !tbaa !135, !noalias !149
  %7374 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %7374, align 4, !tbaa !135, !noalias !149
  %7375 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7375, align 4, !tbaa !135, !noalias !149
  %7376 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7376, align 4, !tbaa !135, !noalias !149
  %7377 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7377, align 4, !tbaa !135, !noalias !149
  %7378 = icmp sgt i32 %7237, 0
  br i1 %7378, label %7379, label %7440

; <label>:7379                                    ; preds = %7367
  br label %7380

; <label>:7380                                    ; preds = %7429, %7379
  %7381 = phi i32 [ %7430, %7429 ], [ 0, %7379 ]
  %7382 = phi i32 [ %7431, %7429 ], [ 0, %7379 ]
  %7383 = add nuw i32 %7382, 171
  %7384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %7383)  ; CBufferLoadLegacy(handle,regIndex)
  %7385 = extractvalue %dx.types.CBufRet.f32 %7384, 0
  %7386 = extractvalue %dx.types.CBufRet.f32 %7384, 1
  %7387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7388 = extractvalue %dx.types.CBufRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.CBufRet.f32 %7387, 1
  %7390 = fsub fast float %7385, %7388
  %7391 = fsub fast float %7386, %7389
  %7392 = extractvalue %dx.types.CBufRet.f32 %7384, 2
  %7393 = fsub fast float -0.000000e+00, %7390
  %7394 = fsub fast float -0.000000e+00, %7391
  %7395 = call float @dx.op.dot2.f32(i32 54, float %7214, float %7215, float %7393, float %7394)  ; Dot2(ax,ay,bx,by)
  %7396 = fmul fast float %7395, 2.000000e+00
  %7397 = call float @dx.op.dot2.f32(i32 54, float %7393, float %7394, float %7393, float %7394)  ; Dot2(ax,ay,bx,by)
  %7398 = fmul fast float %7392, %7392
  %7399 = fsub fast float %7397, %7398
  %7400 = fmul fast float %7396, %7396
  %7401 = fmul fast float %7257, %7399
  %7402 = fsub fast float %7400, %7401
  %7403 = fcmp fast ogt float %7402, 0.000000e+00
  br i1 %7403, label %7404, label %7419

; <label>:7404                                    ; preds = %7380
  %7405 = fcmp fast ogt float %7396, 0.000000e+00
  %7406 = call float @dx.op.unary.f32(i32 24, float %7402)  ; Sqrt(value)
  %7407 = fsub fast float -0.000000e+00, %7406
  %7408 = select i1 %7405, float %7406, float %7407
  %7409 = fadd fast float %7408, %7396
  %7410 = fmul float %7409, -5.000000e-01
  %7411 = fdiv fast float %7410, %7250
  %7412 = call float @dx.op.binary.f32(i32 35, float %7411, float 0.000000e+00)  ; FMax(a,b)
  %7413 = call float @dx.op.binary.f32(i32 36, float %7285, float %7412)  ; FMin(a,b)
  %7414 = fdiv fast float %7399, %7410
  %7415 = call float @dx.op.binary.f32(i32 35, float %7414, float 0.000000e+00)  ; FMax(a,b)
  %7416 = call float @dx.op.binary.f32(i32 36, float %7285, float %7415)  ; FMin(a,b)
  %7417 = call float @dx.op.binary.f32(i32 36, float %7413, float %7416)  ; FMin(a,b)
  %7418 = call float @dx.op.binary.f32(i32 35, float %7413, float %7416)  ; FMax(a,b)
  br label %7419

; <label>:7419                                    ; preds = %7404, %7380
  %7420 = phi float [ %7418, %7404 ], [ -1.000000e+00, %7380 ]
  %7421 = phi float [ %7417, %7404 ], [ -1.000000e+00, %7380 ]
  %7422 = phi i1 [ true, %7404 ], [ false, %7380 ]
  br i1 %7422, label %7423, label %7429

; <label>:7423                                    ; preds = %7419
  %7424 = call float @dx.op.binary.f32(i32 35, float %7368, float %7421)  ; FMax(a,b)
  %7425 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7382
  store float %7424, float* %7425, align 4, !tbaa !135, !noalias !149
  %7426 = call float @dx.op.binary.f32(i32 35, float %7368, float %7420)  ; FMax(a,b)
  %7427 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7382
  store float %7426, float* %7427, align 4, !tbaa !135, !noalias !149
  %7428 = add nsw i32 %7381, 1
  br label %7429

; <label>:7429                                    ; preds = %7423, %7419
  %7430 = phi i32 [ %7428, %7423 ], [ %7381, %7419 ]
  %7431 = add nuw nsw i32 %7382, 1
  %7432 = icmp eq i32 %7431, %7237
  br i1 %7432, label %7433, label %7380

; <label>:7433                                    ; preds = %7429
  %7434 = load float, float* %7374, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %7435 = load float, float* %7373, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  %7436 = load float, float* %7372, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  %7437 = load float, float* %7377, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %7438 = load float, float* %7376, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  %7439 = load float, float* %7375, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  br label %7440

; <label>:7440                                    ; preds = %7433, %7367
  %7441 = phi float [ -1.000000e+00, %7367 ], [ %7439, %7433 ]
  %7442 = phi float [ -1.000000e+00, %7367 ], [ %7438, %7433 ]
  %7443 = phi float [ -1.000000e+00, %7367 ], [ %7437, %7433 ]
  %7444 = phi float [ -1.000000e+00, %7367 ], [ %7436, %7433 ]
  %7445 = phi float [ -1.000000e+00, %7367 ], [ %7435, %7433 ]
  %7446 = phi float [ -1.000000e+00, %7367 ], [ %7434, %7433 ]
  %7447 = phi i32 [ 0, %7367 ], [ %7430, %7433 ]
  %7448 = call float @dx.op.binary.f32(i32 36, float %7445, float %7446)  ; FMin(a,b)
  %7449 = call float @dx.op.binary.f32(i32 36, float %7444, float %7448)  ; FMin(a,b)
  %7450 = call float @dx.op.binary.f32(i32 35, float %7444, float %7445)  ; FMax(a,b)
  %7451 = call float @dx.op.binary.f32(i32 36, float %7450, float %7446)  ; FMin(a,b)
  %7452 = call float @dx.op.binary.f32(i32 36, float %7444, float %7445)  ; FMin(a,b)
  %7453 = call float @dx.op.binary.f32(i32 35, float %7452, float %7451)  ; FMax(a,b)
  %7454 = call float @dx.op.binary.f32(i32 35, float %7445, float %7446)  ; FMax(a,b)
  %7455 = call float @dx.op.binary.f32(i32 35, float %7444, float %7454)  ; FMax(a,b)
  store float %7449, float* %7372, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  store float %7453, float* %7373, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  store float %7455, float* %7374, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %7456 = call float @dx.op.binary.f32(i32 36, float %7442, float %7443)  ; FMin(a,b)
  %7457 = call float @dx.op.binary.f32(i32 36, float %7441, float %7456)  ; FMin(a,b)
  %7458 = call float @dx.op.binary.f32(i32 35, float %7441, float %7442)  ; FMax(a,b)
  %7459 = call float @dx.op.binary.f32(i32 36, float %7458, float %7443)  ; FMin(a,b)
  %7460 = call float @dx.op.binary.f32(i32 36, float %7441, float %7442)  ; FMin(a,b)
  %7461 = call float @dx.op.binary.f32(i32 35, float %7460, float %7459)  ; FMax(a,b)
  %7462 = call float @dx.op.binary.f32(i32 35, float %7442, float %7443)  ; FMax(a,b)
  %7463 = call float @dx.op.binary.f32(i32 35, float %7441, float %7462)  ; FMax(a,b)
  store float %7457, float* %7375, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  store float %7461, float* %7376, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  store float %7463, float* %7377, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %7464 = sub nsw i32 3, %7447
  %7465 = icmp sgt i32 %7464, 2
  br i1 %7465, label %7466, label %7504

; <label>:7466                                    ; preds = %7440
  %7467 = icmp eq i32 %7235, 0
  %7468 = fsub fast float %7285, %7369
  %7469 = select i1 %7467, float %7468, float %7369
  %7470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7471 = extractvalue %dx.types.CBufRet.f32 %7470, 0
  %7472 = extractvalue %dx.types.CBufRet.f32 %7470, 1
  %7473 = extractvalue %dx.types.CBufRet.f32 %7470, 2
  %7474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.f32 %7474, 0
  %7476 = extractvalue %dx.types.CBufRet.f32 %7474, 1
  %7477 = extractvalue %dx.types.CBufRet.f32 %7474, 2
  %7478 = extractvalue %dx.types.CBufRet.f32 %7474, 3
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7480 = extractvalue %dx.types.CBufRet.f32 %7479, 3
  %7481 = call float @dx.op.binary.f32(i32 36, float %7370, float %7480)  ; FMin(a,b)
  %7482 = fmul fast float %7478, %7469
  %7483 = call float @dx.op.unary.f32(i32 7, float %7482)  ; Saturate(value)
  %7484 = fsub fast float %7475, %7471
  %7485 = fsub fast float %7476, %7472
  %7486 = fsub fast float %7477, %7473
  %7487 = fmul fast float %7483, %7484
  %7488 = fmul fast float %7483, %7485
  %7489 = fmul fast float %7483, %7486
  %7490 = fadd fast float %7487, %7471
  %7491 = fadd fast float %7488, %7472
  %7492 = fadd fast float %7489, %7473
  %7493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.f32 %7493, 0
  %7495 = extractvalue %dx.types.CBufRet.f32 %7493, 1
  %7496 = fadd fast float %7495, %7494
  %7497 = call float @dx.op.unary.f32(i32 7, float %7496)  ; Saturate(value)
  %7498 = extractvalue %dx.types.CBufRet.f32 %7493, 2
  %7499 = extractvalue %dx.types.CBufRet.f32 %7493, 3
  %7500 = fadd fast float %7499, %7498
  %7501 = call float @dx.op.unary.f32(i32 7, float %7500)  ; Saturate(value)
  %7502 = fmul fast float %7497, %7481
  %7503 = fmul fast float %7502, %7501
  br label %7586

; <label>:7504                                    ; preds = %7440
  %7505 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7464
  %7506 = load float, float* %7505, align 4, !tbaa !135, !noalias !149
  %7507 = fcmp fast olt float %7506, %7371
  %7508 = icmp sgt i32 %7447, 0
  %7509 = and i1 %7508, %7507
  br i1 %7509, label %7510, label %7547

; <label>:7510                                    ; preds = %7504
  br label %7511

; <label>:7511                                    ; preds = %7540, %7510
  %7512 = phi float [ %7541, %7540 ], [ %7369, %7510 ]
  %7513 = phi float [ %7542, %7540 ], [ %7370, %7510 ]
  %7514 = phi float [ %7522, %7540 ], [ %7506, %7510 ]
  %7515 = phi i32 [ %7519, %7540 ], [ %7464, %7510 ]
  %7516 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7515
  %7517 = load float, float* %7516, align 4, !tbaa !135, !noalias !149
  %7518 = icmp slt i32 %7515, 2
  %7519 = add nsw i32 %7515, 1
  %7520 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7519
  %7521 = load float, float* %7520, align 4, !tbaa !135, !noalias !149
  %7522 = select i1 %7518, float %7521, float %7285
  %7523 = call float @dx.op.binary.f32(i32 36, float %7522, float %7517)  ; FMin(a,b)
  %7524 = call float @dx.op.binary.f32(i32 36, float %7371, float %7523)  ; FMin(a,b)
  %7525 = icmp eq i32 %7235, 0
  %7526 = fadd fast float %7524, %7514
  %7527 = fmul fast float %7526, %7216
  %7528 = fadd fast float %7527, %7229
  br i1 %7525, label %7534, label %7529

; <label>:7529                                    ; preds = %7511
  %7530 = fsub fast float %7524, %7514
  %7531 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7530)  ; FMax(a,b)
  %7532 = fmul fast float %7531, %7528
  %7533 = fadd fast float %7532, %7513
  br label %7540

; <label>:7534                                    ; preds = %7511
  %7535 = fsub fast float %7514, %7524
  %7536 = call float @dx.op.unary.f32(i32 6, float %7535)  ; FAbs(value)
  %7537 = fadd fast float %7536, %7512
  %7538 = fmul fast float %7536, %7528
  %7539 = fsub fast float %7513, %7538
  br label %7540

; <label>:7540                                    ; preds = %7534, %7529
  %7541 = phi float [ %7531, %7529 ], [ %7537, %7534 ]
  %7542 = phi float [ %7533, %7529 ], [ %7539, %7534 ]
  %7543 = fcmp fast olt float %7522, %7371
  %7544 = icmp slt i32 %7519, 3
  %7545 = and i1 %7544, %7543
  br i1 %7545, label %7511, label %7546

; <label>:7546                                    ; preds = %7540
  br label %7547

; <label>:7547                                    ; preds = %7546, %7504
  %7548 = phi float [ %7369, %7504 ], [ %7541, %7546 ]
  %7549 = phi float [ %7370, %7504 ], [ %7542, %7546 ]
  %7550 = fsub fast float %7285, %7548
  %7551 = select i1 %7287, float %7548, float %7550
  %7552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7553 = extractvalue %dx.types.CBufRet.f32 %7552, 0
  %7554 = extractvalue %dx.types.CBufRet.f32 %7552, 1
  %7555 = extractvalue %dx.types.CBufRet.f32 %7552, 2
  %7556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7557 = extractvalue %dx.types.CBufRet.f32 %7556, 0
  %7558 = extractvalue %dx.types.CBufRet.f32 %7556, 1
  %7559 = extractvalue %dx.types.CBufRet.f32 %7556, 2
  %7560 = extractvalue %dx.types.CBufRet.f32 %7556, 3
  %7561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7562 = extractvalue %dx.types.CBufRet.f32 %7561, 3
  %7563 = call float @dx.op.binary.f32(i32 36, float %7549, float %7562)  ; FMin(a,b)
  %7564 = fmul fast float %7560, %7551
  %7565 = call float @dx.op.unary.f32(i32 7, float %7564)  ; Saturate(value)
  %7566 = fsub fast float %7557, %7553
  %7567 = fsub fast float %7558, %7554
  %7568 = fsub fast float %7559, %7555
  %7569 = fmul fast float %7565, %7566
  %7570 = fmul fast float %7565, %7567
  %7571 = fmul fast float %7565, %7568
  %7572 = fadd fast float %7569, %7553
  %7573 = fadd fast float %7570, %7554
  %7574 = fadd fast float %7571, %7555
  %7575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7576 = extractvalue %dx.types.CBufRet.f32 %7575, 0
  %7577 = extractvalue %dx.types.CBufRet.f32 %7575, 1
  %7578 = fadd fast float %7577, %7576
  %7579 = call float @dx.op.unary.f32(i32 7, float %7578)  ; Saturate(value)
  %7580 = extractvalue %dx.types.CBufRet.f32 %7575, 2
  %7581 = extractvalue %dx.types.CBufRet.f32 %7575, 3
  %7582 = fadd fast float %7581, %7580
  %7583 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7584 = fmul fast float %7579, %7563
  %7585 = fmul fast float %7584, %7583
  br label %7586

; <label>:7586                                    ; preds = %7547, %7466, %7301, %7283, %7281
  %7587 = phi float [ %7310, %7301 ], [ %7469, %7466 ], [ %7551, %7547 ], [ 0.000000e+00, %7281 ], [ 0.000000e+00, %7283 ]
  %7588 = phi float [ %7344, %7301 ], [ %7503, %7466 ], [ %7585, %7547 ], [ 0.000000e+00, %7281 ], [ 0.000000e+00, %7283 ]
  %7589 = phi float [ %7331, %7301 ], [ %7490, %7466 ], [ %7572, %7547 ], [ 0.000000e+00, %7281 ], [ 0.000000e+00, %7283 ]
  %7590 = phi float [ %7332, %7301 ], [ %7491, %7466 ], [ %7573, %7547 ], [ 0.000000e+00, %7281 ], [ 0.000000e+00, %7283 ]
  %7591 = phi float [ %7333, %7301 ], [ %7492, %7466 ], [ %7574, %7547 ], [ 0.000000e+00, %7281 ], [ 0.000000e+00, %7283 ]
  %7592 = fmul fast float %7224, %7588
  %7593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7594 = extractvalue %dx.types.CBufRet.f32 %7593, 2
  %7595 = fsub fast float %7231, %7594
  %7596 = fcmp fast olt float %7592, -2.000000e+01
  %7597 = call float @dx.op.unary.f32(i32 21, float %7592)  ; Exp(value)
  %7598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7599 = extractvalue %dx.types.CBufRet.f32 %7598, 2
  %7600 = extractvalue %dx.types.CBufRet.f32 %7598, 3
  %7601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7602 = extractvalue %dx.types.CBufRet.f32 %7601, 2
  %7603 = fmul fast float %7600, %7595
  %7604 = call float @dx.op.unary.f32(i32 7, float %7603)  ; Saturate(value)
  %7605 = fsub fast float 1.000000e+00, %7604
  %7606 = fmul fast float %7216, 5.000000e-01
  %7607 = fadd fast float %7606, 5.000000e-01
  %7608 = call float @dx.op.unary.f32(i32 7, float %7607)  ; Saturate(value)
  %7609 = fsub fast float 1.000000e+00, %7608
  %7610 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7605)  ; FMax(a,b)
  %7611 = fdiv fast float %7609, %7610
  %7612 = fsub fast float %7595, %7173
  %7613 = call float @dx.op.unary.f32(i32 6, float %7612)  ; FAbs(value)
  %7614 = fmul fast float %7613, %7599
  %7615 = call float @dx.op.unary.f32(i32 7, float %7611)  ; Saturate(value)
  %7616 = fsub fast float 1.000000e+00, %7614
  %7617 = fmul fast float %7616, %7615
  %7618 = fadd fast float %7617, %7614
  %7619 = fmul fast float %7602, %7595
  %7620 = call float @dx.op.unary.f32(i32 7, float %7619)  ; Saturate(value)
  %7621 = fsub fast float 1.000000e+00, %7618
  %7622 = fmul fast float %7621, %7620
  %7623 = fadd fast float %7622, %7618
  %7624 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  %7625 = fadd fast float %7597, -1.000000e+00
  %7626 = select i1 %7596, float -1.000000e+00, float %7625
  %7627 = fmul fast float %7624, %7626
  %7628 = fadd fast float %7627, 1.000000e+00
  %7629 = fsub fast float -0.000000e+00, %7627
  %7630 = fmul fast float %7589, %7629
  %7631 = fmul fast float %7590, %7629
  %7632 = fmul fast float %7591, %7629
  br label %7633

; <label>:7633                                    ; preds = %7586, %7182
  %7634 = phi float [ %7587, %7586 ], [ 0.000000e+00, %7182 ]
  %7635 = phi float [ %7628, %7586 ], [ 1.000000e+00, %7182 ]
  %7636 = phi float [ %7630, %7586 ], [ 0.000000e+00, %7182 ]
  %7637 = phi float [ %7631, %7586 ], [ 0.000000e+00, %7182 ]
  %7638 = phi float [ %7632, %7586 ], [ 0.000000e+00, %7182 ]
  %7639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.f32 %7639, 1
  %7641 = fsub fast float 1.000000e+00, %7635
  %7642 = fmul fast float %7641, %7217
  %7643 = fmul fast float %7642, %7640
  %7644 = fsub fast float %7217, %7643
  br i1 %7210, label %7645, label %7674, !dx.controlflow.hints !185

; <label>:7645                                    ; preds = %7633
  %7646 = fmul fast float %7218, %7207
  %7647 = fadd fast float %7646, %7208
  %7648 = call float @dx.op.unary.f32(i32 7, float %7647)  ; Saturate(value)
  %7649 = fmul fast float %7189, %7644
  %7650 = fsub fast float -0.000000e+00, %7649
  %7651 = fmul fast float %7190, %7644
  %7652 = fsub fast float -0.000000e+00, %7651
  %7653 = call float @dx.op.unary.f32(i32 21, float %7650)  ; Exp(value)
  %7654 = call float @dx.op.unary.f32(i32 21, float %7652)  ; Exp(value)
  %7655 = call float @dx.op.binary.f32(i32 35, float %7197, float %7653)  ; FMax(a,b)
  %7656 = call float @dx.op.binary.f32(i32 35, float %7197, float %7654)  ; FMax(a,b)
  %7657 = fsub fast float %7656, %7655
  %7658 = fmul fast float %7657, %7648
  %7659 = fadd fast float %7658, %7655
  %7660 = call float @dx.op.unary.f32(i32 7, float %7659)  ; Saturate(value)
  %7661 = fsub fast float %7194, %7199
  %7662 = fsub fast float %7195, %7200
  %7663 = fsub fast float %7196, %7201
  %7664 = fmul fast float %7648, %7661
  %7665 = fmul fast float %7648, %7662
  %7666 = fmul fast float %7648, %7663
  %7667 = fadd fast float %7664, %7199
  %7668 = fadd fast float %7665, %7200
  %7669 = fadd fast float %7666, %7201
  %7670 = fsub fast float 1.000000e+00, %7660
  %7671 = fmul fast float %7670, %7667
  %7672 = fmul fast float %7670, %7668
  %7673 = fmul fast float %7670, %7669
  br label %7733

; <label>:7674                                    ; preds = %7633
  %7675 = fmul fast float %7644, %7206
  %7676 = call float @dx.op.unary.f32(i32 7, float %7675)  ; Saturate(value)
  %7677 = fsub fast float 2.000000e+00, %7676
  %7678 = fmul fast float %7676, 9.921875e-01
  %7679 = fmul fast float %7678, %7677
  %7680 = fadd fast float %7679, 3.906250e-03
  %7681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7680, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7682 = extractvalue %dx.types.ResRet.f32 %7681, 0
  %7683 = fsub fast float %7676, %7682
  %7684 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7683)  ; FMax(a,b)
  %7685 = fmul fast float %7192, %7173
  %7686 = call float @dx.op.unary.f32(i32 6, float %7685)  ; FAbs(value)
  %7687 = fcmp fast ogt float %7686, 0x3EB0C6F7A0000000
  br i1 %7687, label %7688, label %7694, !dx.controlflow.hints !186

; <label>:7688                                    ; preds = %7674
  %7689 = fmul fast float %7685, 0xBFF7154760000000
  %7690 = call float @dx.op.unary.f32(i32 21, float %7689)  ; Exp(value)
  %7691 = fsub fast float 1.000000e+00, %7690
  %7692 = fdiv fast float %7691, %7685
  %7693 = fmul fast float %7692, %7202
  br label %7694

; <label>:7694                                    ; preds = %7688, %7674
  %7695 = phi float [ %7693, %7688 ], [ %7202, %7674 ]
  %7696 = fadd fast float %7695, %7204
  %7697 = fmul fast float %7696, %7684
  %7698 = fmul fast float %7189, %7697
  %7699 = fsub fast float -0.000000e+00, %7698
  %7700 = fmul fast float %7190, %7697
  %7701 = fsub fast float -0.000000e+00, %7700
  %7702 = fmul fast float %7191, %7697
  %7703 = fsub fast float -0.000000e+00, %7702
  %7704 = call float @dx.op.unary.f32(i32 21, float %7699)  ; Exp(value)
  %7705 = call float @dx.op.unary.f32(i32 21, float %7701)  ; Exp(value)
  %7706 = call float @dx.op.unary.f32(i32 21, float %7703)  ; Exp(value)
  %7707 = fmul fast float %7218, %7218
  %7708 = fadd fast float %7707, 1.000000e+00
  %7709 = fmul fast float %7708, 0x3FAE8EC8A0000000
  %7710 = fmul fast float %7709, %7199
  %7711 = fmul fast float %7709, %7200
  %7712 = fmul fast float %7709, %7201
  %7713 = fmul fast float %7218, %7197
  %7714 = fsub fast float 1.000000e+00, %7713
  %7715 = fmul fast float %7197, %7197
  %7716 = fsub fast float 1.000000e+00, %7715
  %7717 = fmul fast float %7716, 0x3FB45F3060000000
  %7718 = fmul fast float %7714, %7714
  %7719 = fdiv fast float 1.000000e+00, %7718
  %7720 = fmul fast float %7717, %7719
  %7721 = fmul fast float %7720, %7194
  %7722 = fmul fast float %7720, %7195
  %7723 = fmul fast float %7720, %7196
  %7724 = fadd fast float %7721, %7710
  %7725 = fadd fast float %7722, %7711
  %7726 = fadd fast float %7723, %7712
  %7727 = fsub fast float 1.000000e+00, %7704
  %7728 = fsub fast float 1.000000e+00, %7705
  %7729 = fsub fast float 1.000000e+00, %7706
  %7730 = fmul fast float %7724, %7727
  %7731 = fmul fast float %7725, %7728
  %7732 = fmul fast float %7726, %7729
  br label %7733

; <label>:7733                                    ; preds = %7694, %7645
  %7734 = phi float [ %7671, %7645 ], [ %7730, %7694 ]
  %7735 = phi float [ %7672, %7645 ], [ %7731, %7694 ]
  %7736 = phi float [ %7673, %7645 ], [ %7732, %7694 ]
  %7737 = phi float [ %7660, %7645 ], [ %7704, %7694 ]
  %7738 = phi float [ %7660, %7645 ], [ %7705, %7694 ]
  %7739 = phi float [ %7660, %7645 ], [ %7706, %7694 ]
  br i1 %7226, label %7740, label %7938, !dx.controlflow.hints !187

; <label>:7740                                    ; preds = %7733
  %7741 = extractvalue %dx.types.CBufRet.f32 %7639, 0
  %7742 = fmul fast float %7741, %7641
  %7743 = fsub fast float %7636, %7734
  %7744 = fsub fast float %7637, %7735
  %7745 = fsub fast float %7638, %7736
  %7746 = fmul fast float %7742, %7743
  %7747 = fmul fast float %7742, %7744
  %7748 = fmul fast float %7742, %7745
  %7749 = fadd fast float %7746, %7734
  %7750 = fadd fast float %7747, %7735
  %7751 = fadd fast float %7748, %7736
  %7752 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7737)  ; FMax(a,b)
  %7753 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7738)  ; FMax(a,b)
  %7754 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7739)  ; FMax(a,b)
  %7755 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7635)  ; FMax(a,b)
  %7756 = call float @dx.op.binary.f32(i32 35, float %7634, float %7644)  ; FMax(a,b)
  %7757 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7756)  ; FMax(a,b)
  %7758 = fdiv fast float %7634, %7757
  %7759 = call float @dx.op.unary.f32(i32 7, float %7758)  ; Saturate(value)
  %7760 = fdiv fast float %7644, %7757
  %7761 = call float @dx.op.unary.f32(i32 7, float %7760)  ; Saturate(value)
  %7762 = fcmp fast une float %7755, 1.000000e+00
  br i1 %7762, label %7763, label %7776, !dx.controlflow.hints !188

; <label>:7763                                    ; preds = %7740
  %7764 = call float @dx.op.unary.f32(i32 23, float %7755)  ; Log(value)
  %7765 = fmul fast float %7764, 0x3FE62E4300000000
  %7766 = fmul fast float %7636, %7765
  %7767 = fsub fast float -0.000000e+00, %7766
  %7768 = fmul fast float %7637, %7765
  %7769 = fsub fast float -0.000000e+00, %7768
  %7770 = fmul fast float %7638, %7765
  %7771 = fsub fast float -0.000000e+00, %7770
  %7772 = fsub fast float 1.000000e+00, %7755
  %7773 = fdiv fast float %7767, %7772
  %7774 = fdiv fast float %7769, %7772
  %7775 = fdiv fast float %7771, %7772
  br label %7776

; <label>:7776                                    ; preds = %7763, %7740
  %7777 = phi float [ %7773, %7763 ], [ %7636, %7740 ]
  %7778 = phi float [ %7774, %7763 ], [ %7637, %7740 ]
  %7779 = phi float [ %7775, %7763 ], [ %7638, %7740 ]
  %7780 = phi float [ %7765, %7763 ], [ 0.000000e+00, %7740 ]
  %7781 = fcmp fast une float %7752, 1.000000e+00
  br i1 %7781, label %7782, label %7789, !dx.controlflow.hints !189

; <label>:7782                                    ; preds = %7776
  %7783 = call float @dx.op.unary.f32(i32 23, float %7752)  ; Log(value)
  %7784 = fmul fast float %7783, 0x3FE62E4300000000
  %7785 = fmul fast float %7749, %7784
  %7786 = fsub fast float -0.000000e+00, %7785
  %7787 = fsub fast float 1.000000e+00, %7752
  %7788 = fdiv fast float %7786, %7787
  br label %7789

; <label>:7789                                    ; preds = %7782, %7776
  %7790 = phi float [ %7788, %7782 ], [ %7749, %7776 ]
  %7791 = phi float [ %7784, %7782 ], [ 0.000000e+00, %7776 ]
  %7792 = fcmp fast une float %7753, 1.000000e+00
  br i1 %7792, label %7793, label %7800, !dx.controlflow.hints !189

; <label>:7793                                    ; preds = %7789
  %7794 = call float @dx.op.unary.f32(i32 23, float %7753)  ; Log(value)
  %7795 = fmul fast float %7794, 0x3FE62E4300000000
  %7796 = fmul fast float %7750, %7795
  %7797 = fsub fast float -0.000000e+00, %7796
  %7798 = fsub fast float 1.000000e+00, %7753
  %7799 = fdiv fast float %7797, %7798
  br label %7800

; <label>:7800                                    ; preds = %7793, %7789
  %7801 = phi float [ %7799, %7793 ], [ %7750, %7789 ]
  %7802 = phi float [ %7795, %7793 ], [ 0.000000e+00, %7789 ]
  %7803 = fcmp fast une float %7754, 1.000000e+00
  br i1 %7803, label %7804, label %7811, !dx.controlflow.hints !189

; <label>:7804                                    ; preds = %7800
  %7805 = call float @dx.op.unary.f32(i32 23, float %7754)  ; Log(value)
  %7806 = fmul fast float %7805, 0x3FE62E4300000000
  %7807 = fmul fast float %7751, %7806
  %7808 = fsub fast float -0.000000e+00, %7807
  %7809 = fsub fast float 1.000000e+00, %7754
  %7810 = fdiv fast float %7808, %7809
  br label %7811

; <label>:7811                                    ; preds = %7804, %7800
  %7812 = phi float [ %7810, %7804 ], [ %7751, %7800 ]
  %7813 = phi float [ %7806, %7804 ], [ 0.000000e+00, %7800 ]
  %7814 = fmul fast float %7777, %7761
  %7815 = fmul fast float %7778, %7761
  %7816 = fmul fast float %7779, %7761
  %7817 = fmul fast float %7780, %7761
  %7818 = fmul fast float %7790, %7759
  %7819 = fmul fast float %7801, %7759
  %7820 = fmul fast float %7812, %7759
  %7821 = fmul fast float %7791, %7759
  %7822 = fmul fast float %7802, %7759
  %7823 = fmul fast float %7813, %7759
  %7824 = fadd fast float %7818, %7814
  %7825 = fadd fast float %7819, %7815
  %7826 = fadd fast float %7820, %7816
  %7827 = fadd fast float %7821, %7817
  %7828 = fadd fast float %7822, %7817
  %7829 = fadd fast float %7823, %7817
  %7830 = fcmp fast une float %7827, 0.000000e+00
  br i1 %7830, label %7831, label %7838, !dx.controlflow.hints !190

; <label>:7831                                    ; preds = %7811
  %7832 = fmul fast float %7827, 0x3FF7154760000000
  %7833 = call float @dx.op.unary.f32(i32 21, float %7832)  ; Exp(value)
  %7834 = fsub fast float 1.000000e+00, %7833
  %7835 = fmul fast float %7824, %7834
  %7836 = fsub fast float -0.000000e+00, %7835
  %7837 = fdiv fast float %7836, %7827
  br label %7838

; <label>:7838                                    ; preds = %7831, %7811
  %7839 = phi float [ %7833, %7831 ], [ 1.000000e+00, %7811 ]
  %7840 = phi float [ %7837, %7831 ], [ %7824, %7811 ]
  %7841 = fcmp fast une float %7828, 0.000000e+00
  br i1 %7841, label %7842, label %7849, !dx.controlflow.hints !190

; <label>:7842                                    ; preds = %7838
  %7843 = fmul fast float %7828, 0x3FF7154760000000
  %7844 = call float @dx.op.unary.f32(i32 21, float %7843)  ; Exp(value)
  %7845 = fsub fast float 1.000000e+00, %7844
  %7846 = fmul fast float %7825, %7845
  %7847 = fsub fast float -0.000000e+00, %7846
  %7848 = fdiv fast float %7847, %7828
  br label %7849

; <label>:7849                                    ; preds = %7842, %7838
  %7850 = phi float [ %7844, %7842 ], [ 1.000000e+00, %7838 ]
  %7851 = phi float [ %7848, %7842 ], [ %7825, %7838 ]
  %7852 = fcmp fast une float %7829, 0.000000e+00
  br i1 %7852, label %7853, label %7860, !dx.controlflow.hints !190

; <label>:7853                                    ; preds = %7849
  %7854 = fmul fast float %7829, 0x3FF7154760000000
  %7855 = call float @dx.op.unary.f32(i32 21, float %7854)  ; Exp(value)
  %7856 = fsub fast float 1.000000e+00, %7855
  %7857 = fmul fast float %7826, %7856
  %7858 = fsub fast float -0.000000e+00, %7857
  %7859 = fdiv fast float %7858, %7829
  br label %7860

; <label>:7860                                    ; preds = %7853, %7849
  %7861 = phi float [ %7855, %7853 ], [ 1.000000e+00, %7849 ]
  %7862 = phi float [ %7859, %7853 ], [ %7826, %7849 ]
  %7863 = fcmp fast ogt float %7759, %7761
  br i1 %7863, label %7864, label %7884

; <label>:7864                                    ; preds = %7860
  %7865 = fsub fast float 1.000000e+00, %7761
  %7866 = fmul fast float %7777, %7865
  %7867 = fmul fast float %7778, %7865
  %7868 = fmul fast float %7779, %7865
  %7869 = fmul fast float %7780, %7865
  %7870 = fcmp fast une float %7869, 0.000000e+00
  br i1 %7870, label %7871, label %7922, !dx.controlflow.hints !191

; <label>:7871                                    ; preds = %7864
  %7872 = fmul fast float %7869, 0x3FF7154760000000
  %7873 = call float @dx.op.unary.f32(i32 21, float %7872)  ; Exp(value)
  %7874 = fsub fast float 1.000000e+00, %7873
  %7875 = fmul fast float %7866, %7874
  %7876 = fsub fast float -0.000000e+00, %7875
  %7877 = fmul fast float %7867, %7874
  %7878 = fsub fast float -0.000000e+00, %7877
  %7879 = fmul fast float %7868, %7874
  %7880 = fsub fast float -0.000000e+00, %7879
  %7881 = fdiv fast float %7876, %7869
  %7882 = fdiv fast float %7878, %7869
  %7883 = fdiv fast float %7880, %7869
  br label %7922

; <label>:7884                                    ; preds = %7860
  %7885 = fsub fast float 1.000000e+00, %7759
  %7886 = fmul fast float %7790, %7885
  %7887 = fmul fast float %7801, %7885
  %7888 = fmul fast float %7812, %7885
  %7889 = fmul fast float %7791, %7885
  %7890 = fmul fast float %7802, %7885
  %7891 = fmul fast float %7813, %7885
  %7892 = fcmp fast une float %7889, 0.000000e+00
  br i1 %7892, label %7893, label %7900, !dx.controlflow.hints !190

; <label>:7893                                    ; preds = %7884
  %7894 = fmul fast float %7889, 0x3FF7154760000000
  %7895 = call float @dx.op.unary.f32(i32 21, float %7894)  ; Exp(value)
  %7896 = fsub fast float 1.000000e+00, %7895
  %7897 = fmul fast float %7886, %7896
  %7898 = fsub fast float -0.000000e+00, %7897
  %7899 = fdiv fast float %7898, %7889
  br label %7900

; <label>:7900                                    ; preds = %7893, %7884
  %7901 = phi float [ %7899, %7893 ], [ %7886, %7884 ]
  %7902 = phi float [ %7895, %7893 ], [ 1.000000e+00, %7884 ]
  %7903 = fcmp fast une float %7890, 0.000000e+00
  br i1 %7903, label %7904, label %7911, !dx.controlflow.hints !190

; <label>:7904                                    ; preds = %7900
  %7905 = fmul fast float %7890, 0x3FF7154760000000
  %7906 = call float @dx.op.unary.f32(i32 21, float %7905)  ; Exp(value)
  %7907 = fsub fast float 1.000000e+00, %7906
  %7908 = fmul fast float %7887, %7907
  %7909 = fsub fast float -0.000000e+00, %7908
  %7910 = fdiv fast float %7909, %7890
  br label %7911

; <label>:7911                                    ; preds = %7904, %7900
  %7912 = phi float [ %7910, %7904 ], [ %7887, %7900 ]
  %7913 = phi float [ %7906, %7904 ], [ 1.000000e+00, %7900 ]
  %7914 = fcmp fast une float %7891, 0.000000e+00
  br i1 %7914, label %7915, label %7922, !dx.controlflow.hints !190

; <label>:7915                                    ; preds = %7911
  %7916 = fmul fast float %7891, 0x3FF7154760000000
  %7917 = call float @dx.op.unary.f32(i32 21, float %7916)  ; Exp(value)
  %7918 = fsub fast float 1.000000e+00, %7917
  %7919 = fmul fast float %7888, %7918
  %7920 = fsub fast float -0.000000e+00, %7919
  %7921 = fdiv fast float %7920, %7891
  br label %7922

; <label>:7922                                    ; preds = %7915, %7911, %7871, %7864
  %7923 = phi float [ %7921, %7915 ], [ %7883, %7871 ], [ %7868, %7864 ], [ %7888, %7911 ]
  %7924 = phi float [ %7912, %7915 ], [ %7882, %7871 ], [ %7867, %7864 ], [ %7912, %7911 ]
  %7925 = phi float [ %7901, %7915 ], [ %7881, %7871 ], [ %7866, %7864 ], [ %7901, %7911 ]
  %7926 = phi float [ %7917, %7915 ], [ %7873, %7871 ], [ 1.000000e+00, %7864 ], [ 1.000000e+00, %7911 ]
  %7927 = phi float [ %7913, %7915 ], [ %7873, %7871 ], [ 1.000000e+00, %7864 ], [ %7913, %7911 ]
  %7928 = phi float [ %7902, %7915 ], [ %7873, %7871 ], [ 1.000000e+00, %7864 ], [ %7902, %7911 ]
  %7929 = fmul fast float %7928, %7840
  %7930 = fmul fast float %7927, %7851
  %7931 = fmul fast float %7926, %7862
  %7932 = fadd fast float %7929, %7925
  %7933 = fadd fast float %7930, %7924
  %7934 = fadd fast float %7931, %7923
  %7935 = fmul fast float %7928, %7839
  %7936 = fmul fast float %7927, %7850
  %7937 = fmul fast float %7926, %7861
  br label %7938

; <label>:7938                                    ; preds = %7922, %7733
  %7939 = phi float [ %7937, %7922 ], [ %7739, %7733 ]
  %7940 = phi float [ %7936, %7922 ], [ %7738, %7733 ]
  %7941 = phi float [ %7935, %7922 ], [ %7737, %7733 ]
  %7942 = phi float [ %7934, %7922 ], [ %7736, %7733 ]
  %7943 = phi float [ %7933, %7922 ], [ %7735, %7733 ]
  %7944 = phi float [ %7932, %7922 ], [ %7734, %7733 ]
  %7945 = fmul fast float %7944, %6896
  %7946 = fmul fast float %7943, %6897
  %7947 = fmul fast float %7942, %6898
  %7948 = fmul fast float %7941, %7181
  %7949 = call float @dx.op.dot3.f32(i32 55, float %7941, float %7940, float %7939, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7950 = call float @dx.op.dot3.f32(i32 55, float %7945, float %7946, float %7947, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7951 = select i1 %269, float %7949, float %7941
  %7952 = select i1 %269, float %7949, float %7940
  %7953 = select i1 %269, float 1.000000e+00, float %7939
  %7954 = select i1 %269, float %7950, float %7945
  %7955 = select i1 %269, float 0.000000e+00, float %7946
  %7956 = select i1 %269, float 0.000000e+00, float %7947
  %7957 = fmul fast float %7951, %7175
  %7958 = fmul fast float %7952, %7176
  %7959 = fmul fast float %7953, %7177
  %7960 = fadd fast float %7957, %7954
  %7961 = fadd fast float %7958, %7955
  %7962 = fadd fast float %7956, %7959
  %7963 = fmul fast float %7951, %7178
  %7964 = fmul fast float %7952, %7179
  %7965 = fmul fast float %7953, %7180
  %7966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7967 = extractvalue %dx.types.CBufRet.i32 %7966, 0
  %7968 = icmp eq i32 %7967, 0
  br i1 %7968, label %8336, label %7969, !dx.controlflow.hints !192

; <label>:7969                                    ; preds = %7938
  %7970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7971 = extractvalue %dx.types.CBufRet.f32 %7970, 2
  %7972 = extractvalue %dx.types.CBufRet.f32 %7970, 3
  %7973 = fmul fast float %7971, %99
  %7974 = fmul fast float %7972, %100
  %7975 = fmul fast float %7973, 2.000000e+00
  %7976 = fmul fast float %7974, 2.000000e+00
  %7977 = fsub fast float 1.000000e+00, %7975
  %7978 = fsub fast float 1.000000e+00, %7976
  %7979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7980 = extractvalue %dx.types.CBufRet.f32 %7979, 0
  %7981 = extractvalue %dx.types.CBufRet.f32 %7979, 1
  %7982 = extractvalue %dx.types.CBufRet.f32 %7979, 2
  %7983 = fmul fast float %7977, %7980
  %7984 = fmul fast float %7977, %7981
  %7985 = fmul fast float %7977, %7982
  %7986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7987 = extractvalue %dx.types.CBufRet.f32 %7986, 0
  %7988 = extractvalue %dx.types.CBufRet.f32 %7986, 1
  %7989 = extractvalue %dx.types.CBufRet.f32 %7986, 2
  %7990 = fmul fast float %7978, %7987
  %7991 = fmul fast float %7978, %7988
  %7992 = fmul fast float %7978, %7989
  %7993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7994 = extractvalue %dx.types.CBufRet.f32 %7993, 0
  %7995 = extractvalue %dx.types.CBufRet.f32 %7993, 1
  %7996 = extractvalue %dx.types.CBufRet.f32 %7993, 2
  %7997 = fadd fast float %7990, %7994
  %7998 = fadd fast float %7997, %7983
  %7999 = fadd fast float %7991, %7995
  %8000 = fadd fast float %7999, %7984
  %8001 = fadd fast float %7992, %7996
  %8002 = fadd fast float %8001, %7985
  %8003 = fmul fast float %7998, %7174
  %8004 = fmul fast float %8000, %7174
  %8005 = fmul fast float %8002, %7174
  %8006 = fmul fast float %8003, %8003
  %8007 = fmul fast float %8004, %8004
  %8008 = fadd fast float %8006, %8007
  %8009 = fmul fast float %8005, %8005
  %8010 = fadd fast float %8008, %8009
  %8011 = call float @dx.op.unary.f32(i32 24, float %8010)  ; Sqrt(value)
  %8012 = extractvalue %dx.types.CBufRet.f32 %6899, 0
  %8013 = fsub fast float %8011, %8012
  %8014 = extractvalue %dx.types.CBufRet.f32 %6899, 2
  %8015 = fmul fast float %8013, %8014
  %8016 = call float @dx.op.unary.f32(i32 7, float %8015)  ; Saturate(value)
  %8017 = fadd fast float %8016, -5.000000e-01
  %8018 = fmul fast float %8017, 2.000000e+00
  %8019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8020 = extractvalue %dx.types.CBufRet.f32 %8019, 2
  %8021 = call float @dx.op.binary.f32(i32 36, float %8020, float %8018)  ; FMin(a,b)
  %8022 = fsub fast float -0.000000e+00, %8020
  %8023 = fcmp fast ogt float %8021, %8022
  br i1 %8023, label %8024, label %8336, !dx.controlflow.hints !193

; <label>:8024                                    ; preds = %7969
  %8025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8026 = extractvalue %dx.types.CBufRet.f32 %8025, 3
  %8027 = fcmp fast ogt float %8026, 0.000000e+00
  br i1 %8027, label %8028, label %8103, !dx.controlflow.hints !194

; <label>:8028                                    ; preds = %8024
  %8029 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %8030 = extractvalue %dx.types.Dimensions %8029, 0
  %8031 = sitofp i32 %8030 to float
  %8032 = extractvalue %dx.types.Dimensions %8029, 1
  %8033 = sitofp i32 %8032 to float
  %8034 = fmul fast float %7973, %8031
  %8035 = fmul fast float %7974, %8033
  %8036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8037 = extractvalue %dx.types.CBufRet.f32 %8036, 1
  %8038 = fsub fast float -0.000000e+00, %8037
  %8039 = fptoui float %8038 to i32
  %8040 = fptoui float %8034 to i32
  %8041 = fptoui float %8035 to i32
  %8042 = and i32 %8039, 31
  %8043 = lshr i32 %8040, %8042
  %8044 = lshr i32 %8041, %8042
  %8045 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %8039, i32 %8043, i32 %8044, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8046 = extractvalue %dx.types.ResRet.f32 %8045, 0
  %8047 = fcmp fast olt float %8046, -1.000000e+00
  %8048 = fcmp fast ogt float %8046, -1.000000e+00
  %8049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8050 = extractvalue %dx.types.CBufRet.f32 %8049, 1
  %8051 = select i1 %8048, float %8050, float 1.000000e+00
  %8052 = fadd fast float %8046, 1.000000e+00
  %8053 = fmul fast float %8051, %8052
  %8054 = call float @dx.op.unary.f32(i32 6, float %8053)  ; FAbs(value)
  %8055 = extractvalue %dx.types.CBufRet.f32 %8049, 3
  %8056 = fcmp fast oge float %8054, %8055
  %8057 = select i1 %8056, float 0x4197782600000000, float %8054
  %8058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.CBufRet.f32 %8058, 1
  %8061 = extractvalue %dx.types.CBufRet.f32 %8058, 2
  %8062 = select i1 %8047, float %8059, float %7980
  %8063 = select i1 %8047, float %8060, float %7981
  %8064 = select i1 %8047, float %8061, float %7982
  %8065 = fmul fast float %8062, %7977
  %8066 = fmul fast float %8063, %7977
  %8067 = fmul fast float %8064, %7977
  %8068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8069 = extractvalue %dx.types.CBufRet.f32 %8068, 0
  %8070 = extractvalue %dx.types.CBufRet.f32 %8068, 1
  %8071 = extractvalue %dx.types.CBufRet.f32 %8068, 2
  %8072 = select i1 %8047, float %8069, float %7987
  %8073 = select i1 %8047, float %8070, float %7988
  %8074 = select i1 %8047, float %8071, float %7989
  %8075 = fmul fast float %8072, %7978
  %8076 = fmul fast float %8073, %7978
  %8077 = fmul fast float %8074, %7978
  %8078 = fadd fast float %8075, %8065
  %8079 = fadd fast float %8076, %8066
  %8080 = fadd fast float %8077, %8067
  %8081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8082 = extractvalue %dx.types.CBufRet.f32 %8081, 0
  %8083 = extractvalue %dx.types.CBufRet.f32 %8081, 1
  %8084 = extractvalue %dx.types.CBufRet.f32 %8081, 2
  %8085 = select i1 %8047, float %8082, float %7994
  %8086 = select i1 %8047, float %8083, float %7995
  %8087 = select i1 %8047, float %8084, float %7996
  %8088 = fadd fast float %8078, %8085
  %8089 = fadd fast float %8079, %8086
  %8090 = fadd fast float %8080, %8087
  %8091 = fmul fast float %8088, %8057
  %8092 = fmul fast float %8089, %8057
  %8093 = fmul fast float %8090, %8057
  %8094 = fmul fast float %8091, %8091
  %8095 = fmul fast float %8092, %8092
  %8096 = fadd fast float %8094, %8095
  %8097 = fmul fast float %8093, %8093
  %8098 = fadd fast float %8096, %8097
  %8099 = call float @dx.op.unary.f32(i32 24, float %8098)  ; Sqrt(value)
  %8100 = fsub fast float %8099, %8012
  %8101 = fmul fast float %8100, %8014
  %8102 = call float @dx.op.unary.f32(i32 7, float %8101)  ; Saturate(value)
  br label %8103

; <label>:8103                                    ; preds = %8028, %8024
  %8104 = phi float [ %8102, %8028 ], [ 1.000000e+00, %8024 ]
  %8105 = fmul fast float %8021, 5.000000e-01
  %8106 = fadd fast float %8105, 5.000000e-01
  %8107 = call float @dx.op.unary.f32(i32 22, float %8106)  ; Frc(value)
  %8108 = call float @dx.op.unary.f32(i32 27, float %8107)  ; Round_ni(value)
  %8109 = call float @dx.op.unary.f32(i32 22, float %8107)  ; Frc(value)
  %8110 = fmul fast float %8109, 2.000000e+00
  %8111 = fadd fast float %8110, -1.000000e+00
  %8112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7973, float %7974, float %8108, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8113 = extractvalue %dx.types.ResRet.f32 %8112, 0
  %8114 = extractvalue %dx.types.ResRet.f32 %8112, 1
  %8115 = extractvalue %dx.types.ResRet.f32 %8112, 2
  %8116 = extractvalue %dx.types.ResRet.f32 %8112, 3
  %8117 = fadd fast float %8113, -5.000000e-01
  %8118 = fadd fast float %8115, -5.000000e-01
  %8119 = fmul fast float %8117, 0xBFD5555560000000
  %8120 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8118, float %8119)  ; FMad(a,b,c)
  %8121 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8114, float 0.000000e+00)  ; FMad(a,b,c)
  %8122 = fadd fast float %8121, %8116
  %8123 = fmul fast float %8117, -7.500000e-01
  %8124 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8118, float %8123)  ; FMad(a,b,c)
  %8125 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8114, float 0.000000e+00)  ; FMad(a,b,c)
  %8126 = fadd fast float %8125, %8116
  %8127 = call float @dx.op.binary.f32(i32 35, float %8120, float -1.000000e+00)  ; FMax(a,b)
  %8128 = call float @dx.op.binary.f32(i32 35, float %8122, float -1.000000e+00)  ; FMax(a,b)
  %8129 = call float @dx.op.binary.f32(i32 35, float %8124, float -1.000000e+00)  ; FMax(a,b)
  %8130 = call float @dx.op.binary.f32(i32 35, float %8126, float -1.000000e+00)  ; FMax(a,b)
  %8131 = call float @dx.op.binary.f32(i32 36, float %8127, float 1.000000e+00)  ; FMin(a,b)
  %8132 = call float @dx.op.binary.f32(i32 36, float %8128, float 1.000000e+00)  ; FMin(a,b)
  %8133 = call float @dx.op.binary.f32(i32 36, float %8129, float 1.000000e+00)  ; FMin(a,b)
  %8134 = call float @dx.op.binary.f32(i32 36, float %8130, float 1.000000e+00)  ; FMin(a,b)
  %8135 = fcmp fast olt float %8131, 0x3FEFFF8020000000
  br i1 %8135, label %8136, label %8251, !dx.controlflow.hints !195

; <label>:8136                                    ; preds = %8103
  %8137 = extractvalue %dx.types.CBufRet.f32 %8019, 3
  %8138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8139 = extractvalue %dx.types.CBufRet.f32 %8138, 0
  %8140 = extractvalue %dx.types.CBufRet.f32 %8138, 1
  %8141 = extractvalue %dx.types.CBufRet.f32 %8138, 2
  %8142 = extractvalue %dx.types.CBufRet.f32 %8138, 3
  %8143 = fsub fast float %8139, %8131
  %8144 = fsub fast float %8140, %8132
  %8145 = fsub fast float %8141, %8133
  %8146 = fsub fast float %8142, %8134
  %8147 = fmul fast float %8143, %8137
  %8148 = fmul fast float %8144, %8137
  %8149 = fmul fast float %8145, %8137
  %8150 = fmul fast float %8146, %8137
  %8151 = fadd fast float %8147, %8131
  %8152 = fadd fast float %8148, %8132
  %8153 = fsub fast float -0.000000e+00, %8152
  %8154 = fadd fast float %8149, %8133
  %8155 = fadd fast float %8150, %8134
  %8156 = fmul fast float %8151, %8151
  %8157 = fsub fast float %8152, %8156
  %8158 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8157)  ; FMax(a,b)
  %8159 = fdiv fast float 1.000000e+00, %8158
  %8160 = fmul fast float %8152, %8151
  %8161 = fsub fast float %8154, %8160
  %8162 = fsub fast float %8111, %8151
  %8163 = fmul fast float %8111, %8111
  %8164 = fsub fast float %8163, %8152
  %8165 = fmul fast float %8162, %8159
  %8166 = fmul fast float %8165, %8161
  %8167 = fsub fast float %8164, %8166
  %8168 = fmul fast float %8152, %8152
  %8169 = fsub fast float %8155, %8168
  %8170 = fmul fast float %8161, %8161
  %8171 = fmul fast float %8170, %8159
  %8172 = fsub fast float %8169, %8171
  %8173 = fdiv fast float %8167, %8172
  %8174 = fmul fast float %8161, %8173
  %8175 = fsub fast float %8162, %8174
  %8176 = fmul fast float %8175, %8159
  %8177 = fmul fast float %8176, %8151
  %8178 = fsub fast float 1.000000e+00, %8177
  %8179 = fmul fast float %8152, %8173
  %8180 = fsub fast float %8178, %8179
  %8181 = fmul fast float %8176, %8176
  %8182 = fmul fast float %8173, 4.000000e+00
  %8183 = fmul fast float %8182, %8180
  %8184 = fsub fast float %8181, %8183
  %8185 = call float @dx.op.unary.f32(i32 24, float %8184)  ; Sqrt(value)
  %8186 = fcmp fast oge float %8176, 0.000000e+00
  %8187 = fsub fast float -0.000000e+00, %8185
  %8188 = select i1 %8186, float %8187, float %8185
  %8189 = fsub fast float %8188, %8176
  %8190 = fdiv fast float %8189, %8173
  %8191 = fdiv fast float %8180, %8189
  %8192 = fmul fast float %8190, 5.000000e-01
  %8193 = fmul fast float %8191, 2.000000e+00
  %8194 = select i1 %8186, float %8192, float %8193
  %8195 = select i1 %8186, float %8193, float %8192
  %8196 = call float @dx.op.binary.f32(i32 35, float %8194, float %8195)  ; FMax(a,b)
  %8197 = call float @dx.op.binary.f32(i32 36, float %8194, float %8195)  ; FMin(a,b)
  %8198 = fcmp fast ogt float %8111, %8197
  br i1 %8198, label %8199, label %8209

; <label>:8199                                    ; preds = %8136
  %8200 = fsub fast float %8111, %8197
  %8201 = fsub fast float %8196, %8197
  %8202 = fmul fast float %8200, %8201
  %8203 = fmul fast float %8196, %8111
  %8204 = fadd fast float %8196, %8111
  %8205 = fmul fast float %8204, %8151
  %8206 = fadd fast float %8203, %8152
  %8207 = fsub fast float %8206, %8205
  %8208 = fdiv fast float %8207, %8202
  br label %8209

; <label>:8209                                    ; preds = %8199, %8136
  %8210 = phi float [ %8208, %8199 ], [ 0.000000e+00, %8136 ]
  %8211 = fcmp fast ogt float %8111, %8196
  %8212 = fsub fast float %8111, %8196
  br i1 %8211, label %8213, label %8223

; <label>:8213                                    ; preds = %8209
  %8214 = fsub fast float %8196, %8197
  %8215 = fmul fast float %8214, %8212
  %8216 = fmul fast float %8197, %8111
  %8217 = fadd fast float %8197, %8111
  %8218 = fmul fast float %8217, %8151
  %8219 = fsub fast float %8153, %8216
  %8220 = fadd fast float %8219, %8218
  %8221 = fdiv fast float %8220, %8215
  %8222 = fadd fast float %8221, %8210
  br label %8223

; <label>:8223                                    ; preds = %8213, %8209
  %8224 = phi float [ %8222, %8213 ], [ %8210, %8209 ]
  %8225 = fsub fast float %8111, %8197
  %8226 = fmul fast float %8225, %8212
  %8227 = fmul fast float %8197, %8196
  %8228 = fadd fast float %8197, %8196
  %8229 = fmul fast float %8228, %8151
  %8230 = fadd fast float %8227, %8152
  %8231 = fsub fast float %8230, %8229
  %8232 = fdiv fast float %8231, %8226
  %8233 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8234 = fcmp fast oeq float %6900, 0.000000e+00
  %8235 = extractvalue %dx.types.CBufRet.f32 %8019, 0
  %8236 = fcmp fast oeq float %8235, 0.000000e+00
  %8237 = or i1 %8234, %8236
  %8238 = fmul fast float %8235, 2.000000e+00
  %8239 = fadd fast float %8020, %8021
  %8240 = fdiv fast float %8239, %8238
  %8241 = call float @dx.op.unary.f32(i32 7, float %8240)  ; Saturate(value)
  %8242 = fmul fast float %8241, 2.000000e+00
  %8243 = fsub fast float 3.000000e+00, %8242
  %8244 = fmul fast float %8241, %8241
  %8245 = fmul fast float %8244, %8243
  %8246 = select i1 %8237, float 1.000000e+00, float %8245
  %8247 = fmul fast float %8232, %6900
  %8248 = fadd fast float %8233, %8247
  %8249 = call float @dx.op.unary.f32(i32 7, float %8248)  ; Saturate(value)
  %8250 = fmul fast float %8246, %8249
  br label %8251

; <label>:8251                                    ; preds = %8223, %8103
  %8252 = phi float [ %8250, %8223 ], [ 0.000000e+00, %8103 ]
  %8253 = fsub fast float 1.000000e+00, %8252
  %8254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7973, float %7974, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8255 = extractvalue %dx.types.ResRet.f32 %8254, 0
  %8256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.i32 %8256, 2
  %8258 = icmp eq i32 %8257, 0
  br i1 %8258, label %8264, label %8259

; <label>:8259                                    ; preds = %8251
  %8260 = call float @dx.op.unary.f32(i32 7, float %8252)  ; Saturate(value)
  %8261 = fadd fast float %8255, -1.000000e+00
  %8262 = fmul fast float %8260, %8261
  %8263 = fadd fast float %8262, 1.000000e+00
  br label %8264

; <label>:8264                                    ; preds = %8259, %8251
  %8265 = phi float [ %8263, %8259 ], [ %8253, %8251 ]
  br i1 %8027, label %8266, label %8284

; <label>:8266                                    ; preds = %8264
  %8267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8267, 1
  %8269 = fsub fast float %8104, %8268
  %8270 = call float @dx.op.unary.f32(i32 7, float %8269)  ; Saturate(value)
  %8271 = fsub fast float %8104, %8026
  %8272 = call float @dx.op.unary.f32(i32 7, float %8271)  ; Saturate(value)
  %8273 = fsub fast float %8270, %8272
  %8274 = fsub fast float %8106, %8272
  %8275 = fdiv fast float %8274, %8273
  %8276 = call float @dx.op.unary.f32(i32 7, float %8275)  ; Saturate(value)
  %8277 = fmul fast float %8276, 2.000000e+00
  %8278 = fsub fast float 3.000000e+00, %8277
  %8279 = fsub fast float %8255, %8265
  %8280 = fmul fast float %8276, %8276
  %8281 = fmul fast float %8280, %8279
  %8282 = fmul fast float %8281, %8278
  %8283 = fadd fast float %8282, %8265
  br label %8284

; <label>:8284                                    ; preds = %8266, %8264
  %8285 = phi float [ %8283, %8266 ], [ %8265, %8264 ]
  %8286 = call float @dx.op.binary.f32(i32 35, float %8255, float %8285)  ; FMax(a,b)
  %8287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.i32 %8287, 2
  %8289 = and i32 %8288, 1
  %8290 = icmp eq i32 %8289, 0
  %8291 = fcmp fast une float %8286, 1.000000e+00
  %8292 = and i1 %8291, %8290
  br i1 %8292, label %8293, label %8312

; <label>:8293                                    ; preds = %8284
  %8294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7973, float %7974, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8295 = extractvalue %dx.types.ResRet.f32 %8294, 0
  %8296 = extractvalue %dx.types.ResRet.f32 %8294, 1
  %8297 = extractvalue %dx.types.ResRet.f32 %8294, 2
  %8298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8299 = extractvalue %dx.types.CBufRet.f32 %8298, 1
  %8300 = fmul fast float %8299, %8295
  %8301 = fmul fast float %8299, %8296
  %8302 = fmul fast float %8299, %8297
  %8303 = fcmp fast ogt float %8255, 0x3FEFFF2E40000000
  %8304 = fsub fast float 1.000000e+00, %8286
  %8305 = fsub fast float 1.000000e+00, %8255
  %8306 = fdiv fast float %8304, %8305
  %8307 = call float @dx.op.unary.f32(i32 7, float %8306)  ; Saturate(value)
  %8308 = select i1 %8303, float 0.000000e+00, float %8307
  %8309 = fmul fast float %8300, %8308
  %8310 = fmul fast float %8301, %8308
  %8311 = fmul fast float %8302, %8308
  br label %8312

; <label>:8312                                    ; preds = %8293, %8284
  %8313 = phi float [ 0.000000e+00, %8284 ], [ %8309, %8293 ]
  %8314 = phi float [ 0.000000e+00, %8284 ], [ %8310, %8293 ]
  %8315 = phi float [ 0.000000e+00, %8284 ], [ %8311, %8293 ]
  %8316 = fmul fast float %8313, %6896
  %8317 = fmul fast float %8314, %6897
  %8318 = fmul fast float %8315, %6898
  %8319 = fmul fast float %8286, %7948
  %8320 = call float @dx.op.dot3.f32(i32 55, float %8286, float %8286, float %8286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8321 = call float @dx.op.dot3.f32(i32 55, float %8316, float %8317, float %8318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8322 = select i1 %269, float %8320, float %8286
  %8323 = select i1 %269, float 1.000000e+00, float %8286
  %8324 = select i1 %269, float %8321, float %8316
  %8325 = select i1 %269, float 0.000000e+00, float %8317
  %8326 = select i1 %269, float 0.000000e+00, float %8318
  %8327 = fmul fast float %8322, %7960
  %8328 = fmul fast float %8322, %7961
  %8329 = fmul fast float %8323, %7962
  %8330 = fadd fast float %8327, %8324
  %8331 = fadd fast float %8328, %8325
  %8332 = fadd fast float %8326, %8329
  %8333 = fmul fast float %8322, %7963
  %8334 = fmul fast float %8322, %7964
  %8335 = fmul fast float %8323, %7965
  br label %8336

; <label>:8336                                    ; preds = %8312, %7969, %7938, %7170
  %8337 = phi float [ %7175, %7170 ], [ %7960, %7938 ], [ %8330, %8312 ], [ %7960, %7969 ]
  %8338 = phi float [ %7176, %7170 ], [ %7961, %7938 ], [ %8331, %8312 ], [ %7961, %7969 ]
  %8339 = phi float [ %7177, %7170 ], [ %7962, %7938 ], [ %8332, %8312 ], [ %7962, %7969 ]
  %8340 = phi float [ %7178, %7170 ], [ %7963, %7938 ], [ %8333, %8312 ], [ %7963, %7969 ]
  %8341 = phi float [ %7179, %7170 ], [ %7964, %7938 ], [ %8334, %8312 ], [ %7964, %7969 ]
  %8342 = phi float [ %7180, %7170 ], [ %7965, %7938 ], [ %8335, %8312 ], [ %7965, %7969 ]
  %8343 = phi float [ %7181, %7170 ], [ %7948, %7938 ], [ %8319, %8312 ], [ %7948, %7969 ]
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 2
  %8346 = extractvalue %dx.types.CBufRet.f32 %8344, 3
  %8347 = fmul fast float %8345, %99
  %8348 = fmul fast float %8346, %100
  %8349 = call float @dx.op.unary.f32(i32 7, float %8347)  ; Saturate(value)
  %8350 = call float @dx.op.unary.f32(i32 7, float %8348)  ; Saturate(value)
  %8351 = select i1 %6910, i32 2, i32 0
  %8352 = or i32 %8351, 1
  %8353 = uitofp i32 %8352 to float
  %8354 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8349, float %8350, float %8353, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8355 = extractvalue %dx.types.ResRet.f32 %8354, 0
  %8356 = extractvalue %dx.types.ResRet.f32 %8354, 1
  %8357 = extractvalue %dx.types.ResRet.f32 %8354, 2
  %8358 = extractvalue %dx.types.ResRet.f32 %8354, 3
  %8359 = add nuw nsw i32 %8351, 2
  %8360 = uitofp i32 %8359 to float
  %8361 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8349, float %8350, float %8360, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8362 = extractvalue %dx.types.ResRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.ResRet.f32 %8361, 1
  %8364 = extractvalue %dx.types.ResRet.f32 %8361, 2
  %8365 = extractvalue %dx.types.ResRet.f32 %8361, 3
  %8366 = call float @dx.op.binary.f32(i32 35, float %8356, float %8357)  ; FMax(a,b)
  %8367 = call float @dx.op.binary.f32(i32 35, float %8355, float %8366)  ; FMax(a,b)
  %8368 = call float @dx.op.binary.f32(i32 35, float %8367, float %8358)  ; FMax(a,b)
  %8369 = call float @dx.op.binary.f32(i32 36, float %8363, float %8364)  ; FMin(a,b)
  %8370 = call float @dx.op.binary.f32(i32 36, float %8362, float %8369)  ; FMin(a,b)
  %8371 = call float @dx.op.binary.f32(i32 36, float %8370, float %8365)  ; FMin(a,b)
  %8372 = fmul fast float %8368, 2.550000e+02
  %8373 = fadd fast float %8372, 0x3F70101020000000
  %8374 = fptoui float %8373 to i32
  %8375 = fmul fast float %8371, 2.550000e+02
  %8376 = fadd fast float %8375, 0x3F70101020000000
  %8377 = fptoui float %8376 to i32
  %8378 = icmp ult i32 %8374, %8377
  br i1 %8378, label %8379, label %8548

; <label>:8379                                    ; preds = %8336
  %8380 = fcmp fast ogt float %86, 9.843750e-01
  %8381 = fadd fast float %7174, -4.000000e+00
  %8382 = select i1 %8380, float -4.000000e+00, float %8381
  %8383 = call float @dx.op.binary.f32(i32 35, float %8382, float 0.000000e+00)  ; FMax(a,b)
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 0
  %8386 = fadd fast float %8385, %8383
  %8387 = extractvalue %dx.types.CBufRet.f32 %8384, 2
  %8388 = fmul fast float %8386, %8387
  %8389 = call float @dx.op.unary.f32(i32 23, float %8388)  ; Log(value)
  %8390 = extractvalue %dx.types.CBufRet.f32 %8384, 3
  %8391 = fmul fast float %8390, %8389
  %8392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8393 = extractvalue %dx.types.CBufRet.f32 %8392, 2
  %8394 = fmul fast float %8391, %8393
  %8395 = call float @dx.op.unary.f32(i32 7, float %8394)  ; Saturate(value)
  %8396 = uitofp i32 %8374 to float
  %8397 = uitofp i32 %8377 to float
  %8398 = fadd fast float %8396, 5.000000e-01
  %8399 = fadd fast float %8397, 5.000000e-01
  %8400 = fmul fast float %8393, %8398
  %8401 = fmul fast float %8393, %8399
  %8402 = fadd fast float %8400, 0x3F0FFB4800000000
  %8403 = fadd fast float %8401, 0xBF0FFB4800000000
  %8404 = call float @dx.op.binary.f32(i32 35, float %8395, float %8402)  ; FMax(a,b)
  %8405 = call float @dx.op.binary.f32(i32 36, float %8404, float %8403)  ; FMin(a,b)
  %8406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8406, 1
  %8408 = extractvalue %dx.types.CBufRet.f32 %8406, 2
  %8409 = extractvalue %dx.types.CBufRet.f32 %8406, 0
  %8410 = select i1 %6910, float %8409, float 0.000000e+00
  %8411 = fmul fast float %8407, %8405
  %8412 = fadd fast float %8410, %8411
  %8413 = fadd fast float %8410, %8408
  %8414 = fsub fast float %8407, %8408
  %8415 = fadd fast float %8414, %8410
  %8416 = call float @dx.op.binary.f32(i32 35, float %8412, float %8413)  ; FMax(a,b)
  %8417 = call float @dx.op.binary.f32(i32 36, float %8416, float %8415)  ; FMin(a,b)
  %8418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %8349, float %8350, float %8417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8419 = extractvalue %dx.types.ResRet.f32 %8418, 0
  %8420 = extractvalue %dx.types.ResRet.f32 %8418, 1
  %8421 = extractvalue %dx.types.ResRet.f32 %8418, 2
  %8422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.i32 %8422, 0
  %8424 = extractvalue %dx.types.CBufRet.i32 %8422, 1
  %8425 = uitofp i32 %8423 to float
  %8426 = uitofp i32 %8424 to float
  %8427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8428 = extractvalue %dx.types.CBufRet.f32 %8427, 0
  %8429 = extractvalue %dx.types.CBufRet.f32 %8427, 1
  %8430 = fmul fast float %8425, %8349
  %8431 = fmul fast float %8426, %8350
  %8432 = fadd fast float %8430, -5.000000e-01
  %8433 = fadd fast float %8431, -5.000000e-01
  %8434 = call float @dx.op.unary.f32(i32 22, float %8432)  ; Frc(value)
  %8435 = call float @dx.op.unary.f32(i32 22, float %8433)  ; Frc(value)
  %8436 = fmul fast float %8434, %8434
  %8437 = fmul fast float %8436, %8434
  %8438 = fsub fast float 3.000000e+00, %8434
  %8439 = fmul fast float %8436, %8438
  %8440 = fmul fast float %8434, 3.000000e+00
  %8441 = fmul fast float %8437, 3.000000e+00
  %8442 = fmul fast float %8436, 6.000000e+00
  %8443 = fsub fast float %8441, %8442
  %8444 = fadd fast float %8443, 4.000000e+00
  %8445 = fmul fast float %8444, 0x3FC5555560000000
  %8446 = fmul fast float %8437, -3.000000e+00
  %8447 = fadd fast float %8436, %8434
  %8448 = fmul fast float %8447, 3.000000e+00
  %8449 = fadd fast float %8446, 1.000000e+00
  %8450 = fadd fast float %8449, %8448
  %8451 = fmul fast float %8437, 0x3FC5555560000000
  %8452 = fmul fast float %8435, %8435
  %8453 = fmul fast float %8452, %8435
  %8454 = fsub fast float 3.000000e+00, %8435
  %8455 = fmul fast float %8452, %8454
  %8456 = fmul fast float %8435, 3.000000e+00
  %8457 = fmul fast float %8453, 3.000000e+00
  %8458 = fmul fast float %8452, 6.000000e+00
  %8459 = fsub fast float %8457, %8458
  %8460 = fadd fast float %8459, 4.000000e+00
  %8461 = fmul fast float %8460, 0x3FC5555560000000
  %8462 = fmul fast float %8453, -3.000000e+00
  %8463 = fadd fast float %8452, %8435
  %8464 = fmul fast float %8463, 3.000000e+00
  %8465 = fadd fast float %8462, 1.000000e+00
  %8466 = fadd fast float %8465, %8464
  %8467 = fmul fast float %8453, 0x3FC5555560000000
  %8468 = fadd fast float %8434, 1.000000e+00
  %8469 = fsub fast float 1.000000e+00, %8440
  %8470 = fadd fast float %8469, %8439
  %8471 = fadd fast float %8470, %8444
  %8472 = fmul fast float %8471, 0x3FC5555560000000
  %8473 = fdiv fast float %8445, %8472
  %8474 = fsub fast float %8468, %8473
  %8475 = fsub fast float 1.000000e+00, %8434
  %8476 = fadd fast float %8450, %8437
  %8477 = fmul fast float %8476, 0x3FC5555560000000
  %8478 = fdiv fast float %8451, %8477
  %8479 = fadd fast float %8475, %8478
  %8480 = fadd fast float %8435, 1.000000e+00
  %8481 = fsub fast float 1.000000e+00, %8456
  %8482 = fadd fast float %8481, %8455
  %8483 = fadd fast float %8482, %8460
  %8484 = fmul fast float %8483, 0x3FC5555560000000
  %8485 = fdiv fast float %8461, %8484
  %8486 = fsub fast float %8480, %8485
  %8487 = fsub fast float 1.000000e+00, %8435
  %8488 = fadd fast float %8466, %8453
  %8489 = fmul fast float %8488, 0x3FC5555560000000
  %8490 = fdiv fast float %8467, %8489
  %8491 = fadd fast float %8490, %8487
  %8492 = fmul fast float %8474, %8428
  %8493 = fsub fast float %8349, %8492
  %8494 = fmul fast float %8479, %8428
  %8495 = fadd fast float %8494, %8349
  %8496 = fmul fast float %8491, %8429
  %8497 = fadd fast float %8496, %8350
  %8498 = fmul fast float %8486, %8429
  %8499 = fsub fast float %8350, %8498
  %8500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8493, float %8499, float %8417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8501 = extractvalue %dx.types.ResRet.f32 %8500, 0
  %8502 = extractvalue %dx.types.ResRet.f32 %8500, 1
  %8503 = extractvalue %dx.types.ResRet.f32 %8500, 2
  %8504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8495, float %8499, float %8417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8505 = extractvalue %dx.types.ResRet.f32 %8504, 0
  %8506 = extractvalue %dx.types.ResRet.f32 %8504, 1
  %8507 = extractvalue %dx.types.ResRet.f32 %8504, 2
  %8508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8493, float %8497, float %8417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8509 = extractvalue %dx.types.ResRet.f32 %8508, 0
  %8510 = extractvalue %dx.types.ResRet.f32 %8508, 1
  %8511 = extractvalue %dx.types.ResRet.f32 %8508, 2
  %8512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8495, float %8497, float %8417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8513 = extractvalue %dx.types.ResRet.f32 %8512, 0
  %8514 = extractvalue %dx.types.ResRet.f32 %8512, 1
  %8515 = extractvalue %dx.types.ResRet.f32 %8512, 2
  %8516 = fsub fast float %8509, %8501
  %8517 = fsub fast float %8510, %8502
  %8518 = fsub fast float %8511, %8503
  %8519 = fmul fast float %8516, %8489
  %8520 = fmul fast float %8517, %8489
  %8521 = fmul fast float %8518, %8489
  %8522 = fadd fast float %8519, %8501
  %8523 = fadd fast float %8520, %8502
  %8524 = fadd fast float %8521, %8503
  %8525 = fsub fast float %8513, %8505
  %8526 = fsub fast float %8514, %8506
  %8527 = fsub fast float %8515, %8507
  %8528 = fmul fast float %8525, %8489
  %8529 = fmul fast float %8526, %8489
  %8530 = fmul fast float %8527, %8489
  %8531 = fsub fast float %8505, %8522
  %8532 = fadd fast float %8531, %8528
  %8533 = fsub fast float %8506, %8523
  %8534 = fadd fast float %8533, %8529
  %8535 = fsub fast float %8507, %8524
  %8536 = fadd fast float %8535, %8530
  %8537 = fmul fast float %8532, %8477
  %8538 = fmul fast float %8534, %8477
  %8539 = fmul fast float %8536, %8477
  %8540 = fadd fast float %8537, %8522
  %8541 = fadd fast float %8538, %8523
  %8542 = fadd fast float %8539, %8524
  %8543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8544 = extractvalue %dx.types.CBufRet.f32 %8543, 1
  %8545 = fmul fast float %8540, %8544
  %8546 = fmul fast float %8541, %8544
  %8547 = fmul fast float %8542, %8544
  br label %8548

; <label>:8548                                    ; preds = %8379, %8336
  %8549 = phi float [ %8419, %8379 ], [ 1.000000e+00, %8336 ]
  %8550 = phi float [ %8420, %8379 ], [ 1.000000e+00, %8336 ]
  %8551 = phi float [ %8421, %8379 ], [ 1.000000e+00, %8336 ]
  %8552 = phi float [ %8545, %8379 ], [ 0.000000e+00, %8336 ]
  %8553 = phi float [ %8546, %8379 ], [ 0.000000e+00, %8336 ]
  %8554 = phi float [ %8547, %8379 ], [ 0.000000e+00, %8336 ]
  %8555 = fmul fast float %8552, %6896
  %8556 = fmul fast float %8553, %6897
  %8557 = fmul fast float %8554, %6898
  %8558 = fmul fast float %8549, %8343
  %8559 = call float @dx.op.dot3.f32(i32 55, float %8549, float %8550, float %8551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8560 = call float @dx.op.dot3.f32(i32 55, float %8555, float %8556, float %8557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8561 = select i1 %269, float %8559, float %8549
  %8562 = select i1 %269, float %8559, float %8550
  %8563 = select i1 %269, float 1.000000e+00, float %8551
  %8564 = select i1 %269, float %8560, float %8555
  %8565 = select i1 %269, float 0.000000e+00, float %8556
  %8566 = select i1 %269, float 0.000000e+00, float %8557
  %8567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8568 = extractvalue %dx.types.CBufRet.i32 %8567, 3
  %8569 = and i32 %8568, 3
  %8570 = icmp ne i32 %8569, 0
  %8571 = and i32 %8568, 4
  %8572 = icmp ne i32 %8571, 0
  %8573 = and i1 %8570, %8572
  %8574 = and i1 %269, %8573
  br i1 %8574, label %8575, label %8581

; <label>:8575                                    ; preds = %8548
  %8576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8577 = extractvalue %dx.types.CBufRet.f32 %8576, 1
  %8578 = fadd fast float %8558, -1.000000e+00
  %8579 = fmul fast float %8577, %8578
  %8580 = fadd fast float %8579, 1.000000e+00
  br label %8581

; <label>:8581                                    ; preds = %8575, %8548
  %8582 = phi float [ %8580, %8575 ], [ %8558, %8548 ]
  %8583 = fadd fast float %8340, %8337
  %8584 = fmul fast float %8561, %8583
  %8585 = fadd fast float %8584, %8564
  %8586 = fadd fast float %8341, %8338
  %8587 = fmul fast float %8562, %8586
  %8588 = fadd fast float %8587, %8565
  %8589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8590 = extractvalue %dx.types.CBufRet.f32 %8589, 0
  br i1 %269, label %8591, label %8606

; <label>:8591                                    ; preds = %8581
  %8592 = fadd fast float %8585, %8588
  %8593 = fmul fast float %8590, %8592
  %8594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8595 = extractvalue %dx.types.CBufRet.f32 %8594, 3
  %8596 = extractvalue %dx.types.CBufRet.f32 %6880, 1
  %8597 = fsub fast float %6885, %6879
  %8598 = fadd fast float %8597, %6886
  %8599 = fsub fast float %8598, %8596
  %8600 = extractvalue %dx.types.CBufRet.f32 %6880, 2
  %8601 = fmul fast float %8599, %8600
  %8602 = call float @dx.op.unary.f32(i32 7, float %8601)  ; Saturate(value)
  %8603 = fsub fast float %8602, %8595
  %8604 = fmul fast float %8603, %8582
  %8605 = fadd fast float %8604, %8595
  br label %8632

; <label>:8606                                    ; preds = %8581
  %8607 = fadd fast float %8342, %8339
  %8608 = fmul fast float %8563, %8607
  %8609 = fadd fast float %8608, %8566
  %8610 = fmul fast float %8590, %8585
  %8611 = fmul fast float %8590, %8588
  %8612 = fmul fast float %8590, %8609
  %8613 = call float @dx.op.binary.f32(i32 35, float %8611, float %8612)  ; FMax(a,b)
  %8614 = call float @dx.op.binary.f32(i32 35, float %8610, float %8613)  ; FMax(a,b)
  %8615 = call float @dx.op.binary.f32(i32 35, float %6897, float %6898)  ; FMax(a,b)
  %8616 = call float @dx.op.binary.f32(i32 35, float %6896, float %8615)  ; FMax(a,b)
  %8617 = call float @dx.op.binary.f32(i32 35, float %8614, float %8616)  ; FMax(a,b)
  %8618 = fcmp fast ugt float %8617, 0x3F10000000000000
  br i1 %8618, label %8620, label %8619

; <label>:8619                                    ; preds = %8606
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8620

; <label>:8620                                    ; preds = %8619, %8606
  %8621 = add i32 %71, 116
  %8622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %8621, i32 undef)  ; BufferLoad(srv,index,wot)
  %8623 = extractvalue %dx.types.ResRet.i32 %8622, 0
  %8624 = and i32 %8623, 32
  %8625 = icmp eq i32 %8624, 0
  br i1 %8625, label %8632, label %8626

; <label>:8626                                    ; preds = %8620
  %8627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8628 = extractvalue %dx.types.CBufRet.f32 %8627, 0
  %8629 = fmul fast float %8628, 0x3FE99999A0000000
  %8630 = fadd fast float %8628, %8610
  %8631 = fadd fast float %8629, %8612
  br label %8632

; <label>:8632                                    ; preds = %8626, %8620, %8591
  %8633 = phi float [ 1.000000e+00, %8591 ], [ %6897, %8626 ], [ %6897, %8620 ]
  %8634 = phi float [ 1.000000e+00, %8591 ], [ %6898, %8626 ], [ %6898, %8620 ]
  %8635 = phi float [ %8593, %8591 ], [ %8630, %8626 ], [ %8610, %8620 ]
  %8636 = phi float [ %8605, %8591 ], [ %8611, %8626 ], [ %8611, %8620 ]
  %8637 = phi float [ 1.000000e+00, %8591 ], [ %8631, %8626 ], [ %8612, %8620 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8638 = call float @dx.op.binary.f32(i32 36, float %8635, float 3.225500e+04)  ; FMin(a,b)
  %8639 = call float @dx.op.binary.f32(i32 36, float %8636, float 3.225500e+04)  ; FMin(a,b)
  %8640 = call float @dx.op.binary.f32(i32 36, float %8637, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8638)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8640)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8641 = call float @dx.op.binary.f32(i32 36, float %6896, float 3.225500e+04)  ; FMin(a,b)
  %8642 = call float @dx.op.binary.f32(i32 36, float %8633, float 3.225500e+04)  ; FMin(a,b)
  %8643 = call float @dx.op.binary.f32(i32 36, float %8634, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8641)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8643)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

