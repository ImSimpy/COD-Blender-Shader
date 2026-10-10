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
; shader hash: 0dfb7007398ccc4f332f240ddee86113
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
  br i1 %313, label %1039, label %314

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
  br i1 %1003, label %1024, label %1004

; <label>:1004                                    ; preds = %976
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = and i32 %1006, 2048
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1024, label %1009

; <label>:1009                                    ; preds = %1004
  %1010 = add i32 %71, 164
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = add i32 %1012, 0
  %1014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1013, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1015 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1014, %dx.types.Handle %96, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 3
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = shl i32 %1018, 4
  %1020 = and i32 %1019, 32752
  %1021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1020)  ; LegacyF16ToF32(value)
  %1022 = fmul fast float %1021, %1016
  %1023 = call float @dx.op.binary.f32(i32 35, float %1022, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1024

; <label>:1024                                    ; preds = %1009, %1004, %976
  %1025 = phi float [ %1023, %1009 ], [ 0x3F70101020000000, %1004 ], [ 0x3F70101020000000, %976 ]
  %1026 = add i32 %71, 48
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = and i32 %1028, 255
  %1030 = uitofp i32 %1029 to float
  %1031 = lshr i32 %1028, 8
  %1032 = and i32 %1031, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = fmul fast float %1033, %1034
  %1036 = fadd fast float %1035, %1030
  %1037 = fmul fast float %1036, 0x3F70101020000000
  %1038 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  br label %1039

; <label>:1039                                    ; preds = %1024, %304
  %1040 = phi float [ 0.000000e+00, %304 ], [ %892, %1024 ]
  %1041 = phi float [ 0.000000e+00, %304 ], [ %893, %1024 ]
  %1042 = phi float [ 0.000000e+00, %304 ], [ %811, %1024 ]
  %1043 = phi float [ 0.000000e+00, %304 ], [ %812, %1024 ]
  %1044 = phi float [ 0.000000e+00, %304 ], [ %813, %1024 ]
  %1045 = phi float [ 0.000000e+00, %304 ], [ %939, %1024 ]
  %1046 = phi float [ 0.000000e+00, %304 ], [ %940, %1024 ]
  %1047 = phi float [ 0.000000e+00, %304 ], [ %941, %1024 ]
  %1048 = phi float [ 0.000000e+00, %304 ], [ %997, %1024 ]
  %1049 = phi float [ 0.000000e+00, %304 ], [ %998, %1024 ]
  %1050 = phi float [ 0.000000e+00, %304 ], [ %999, %1024 ]
  %1051 = phi float [ 0.000000e+00, %304 ], [ %797, %1024 ]
  %1052 = phi float [ 0.000000e+00, %304 ], [ %593, %1024 ]
  %1053 = phi float [ 0.000000e+00, %304 ], [ %891, %1024 ]
  %1054 = phi float [ 0.000000e+00, %304 ], [ %894, %1024 ]
  %1055 = phi float [ 0.000000e+00, %304 ], [ %1025, %1024 ]
  %1056 = phi float [ 0.000000e+00, %304 ], [ %1038, %1024 ]
  %1057 = add i32 %71, 120
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = bitcast i32 %1059 to float
  %1061 = fcmp fast oge float %1060, 0.000000e+00
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 0
  %1064 = select i1 %1061, float %1060, float %1063
  %1065 = call float @dx.op.dot2.f32(i32 54, float %1040, float %1041, float %1040, float %1041)  ; Dot2(ax,ay,bx,by)
  %1066 = fmul fast float %1065, 0x3FE3333340000000
  %1067 = fsub fast float 1.000000e+00, %1066
  %1068 = call float @dx.op.dot3.f32(i32 55, float %1040, float %1041, float %1067, float %1040, float %1041, float %1067)  ; Dot3(ax,ay,az,bx,by,bz)
  %1069 = call float @dx.op.unary.f32(i32 25, float %1068)  ; Rsqrt(value)
  %1070 = fmul fast float %1069, %1040
  %1071 = fmul fast float %1069, %1041
  %1072 = fmul fast float %1067, %1069
  %1073 = fmul fast float %1072, %76
  %1074 = fmul fast float %1072, %77
  %1075 = fmul fast float %1072, %78
  %1076 = fmul fast float %1070, %72
  %1077 = fmul fast float %1070, %73
  %1078 = fmul fast float %1070, %74
  %1079 = fadd fast float %1073, %1076
  %1080 = fadd fast float %1074, %1077
  %1081 = fadd fast float %1075, %1078
  %1082 = fmul fast float %1071, %110
  %1083 = fmul fast float %1071, %111
  %1084 = fmul fast float %1071, %112
  %1085 = fadd fast float %1079, %1082
  %1086 = fadd fast float %1080, %1083
  %1087 = fadd fast float %1081, %1084
  %1088 = call float @dx.op.dot3.f32(i32 55, float %1085, float %1086, float %1087, float %1085, float %1086, float %1087)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = call float @dx.op.unary.f32(i32 25, float %1088)  ; Rsqrt(value)
  %1090 = fmul fast float %1085, %1089
  %1091 = fmul fast float %1086, %1089
  %1092 = fmul fast float %1087, %1089
  %1093 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %1094 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %1095 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1096 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %1097 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %1098 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1099 = fadd fast float %1093, %146
  %1100 = fadd fast float %1094, %147
  %1101 = fadd fast float %1095, %148
  %1102 = fadd fast float %1096, %146
  %1103 = fadd fast float %1097, %147
  %1104 = fadd fast float %1098, %148
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.CBufRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.CBufRet.f32 %1105, 2
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1111 = extractvalue %dx.types.CBufRet.f32 %1109, 3
  %1112 = fmul fast float %1106, %99
  %1113 = fmul fast float %1112, %1110
  %1114 = fmul fast float %1107, %100
  %1115 = fmul fast float %1114, %1111
  %1116 = fptoui float %1113 to i32
  %1117 = fptoui float %1115 to i32
  %1118 = fadd fast float %1106, -1.000000e+00
  %1119 = fadd fast float %1107, -1.000000e+00
  %1120 = fptoui float %1118 to i32
  %1121 = fptoui float %1119 to i32
  %1122 = call i32 @dx.op.binary.i32(i32 40, i32 %1116, i32 %1120)  ; UMin(a,b)
  %1123 = call i32 @dx.op.binary.i32(i32 40, i32 %1117, i32 %1121)  ; UMin(a,b)
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1127 = fmul fast float %1125, %87
  %1128 = fsub fast float %1127, %1126
  %1129 = fadd fast float %1108, -1.000000e+00
  %1130 = call float @dx.op.binary.f32(i32 36, float %1128, float %1129)  ; FMin(a,b)
  %1131 = fptoui float %1130 to i32
  %1132 = fptoui float %1106 to i32
  %1133 = fptoui float %1107 to i32
  %1134 = mul i32 %1131, %1133
  %1135 = add i32 %1134, %1123
  %1136 = mul i32 %1135, %1132
  %1137 = add i32 %1136, %1122
  %1138 = shl i32 %1137, 2
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = and i32 %1140, 1023
  %1142 = lshr i32 %1140, 10
  %1143 = icmp eq i32 %1141, 0
  br i1 %1143, label %1597, label %1144

; <label>:1144                                    ; preds = %1039
  %1145 = and i32 %1140, 1023
  br label %1146

; <label>:1146                                    ; preds = %1275, %1144
  %1147 = phi float [ %1276, %1275 ], [ 0.000000e+00, %1144 ]
  %1148 = phi float [ %1277, %1275 ], [ %1064, %1144 ]
  %1149 = phi float [ %1278, %1275 ], [ %1056, %1144 ]
  %1150 = phi float [ %1279, %1275 ], [ %1048, %1144 ]
  %1151 = phi float [ %1280, %1275 ], [ %1049, %1144 ]
  %1152 = phi float [ %1281, %1275 ], [ %1050, %1144 ]
  %1153 = phi float [ %1282, %1275 ], [ 0.000000e+00, %1144 ]
  %1154 = phi float [ %1283, %1275 ], [ 0.000000e+00, %1144 ]
  %1155 = phi float [ %1284, %1275 ], [ %1045, %1144 ]
  %1156 = phi float [ %1285, %1275 ], [ %1046, %1144 ]
  %1157 = phi float [ %1286, %1275 ], [ %1047, %1144 ]
  %1158 = phi float [ %1287, %1275 ], [ %1090, %1144 ]
  %1159 = phi float [ %1288, %1275 ], [ %1091, %1144 ]
  %1160 = phi float [ %1289, %1275 ], [ %1092, %1144 ]
  %1161 = phi float [ %1290, %1275 ], [ %1054, %1144 ]
  %1162 = phi float [ %1291, %1275 ], [ %1053, %1144 ]
  %1163 = phi float [ %1292, %1275 ], [ 0.000000e+00, %1144 ]
  %1164 = phi float [ %1293, %1275 ], [ %1051, %1144 ]
  %1165 = phi float [ %1294, %1275 ], [ %1042, %1144 ]
  %1166 = phi float [ %1295, %1275 ], [ %1043, %1144 ]
  %1167 = phi float [ %1296, %1275 ], [ %1044, %1144 ]
  %1168 = phi i32 [ %1225, %1275 ], [ 0, %1144 ]
  %1169 = add nuw nsw i32 %1168, %1142
  %1170 = shl i32 %1169, 2
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = shl i32 %1172, 8
  %1174 = or i32 %1173, 48
  %1175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = extractvalue %dx.types.ResRet.f32 %1175, 3
  %1180 = or i32 %1173, 64
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = extractvalue %dx.types.ResRet.i32 %1181, 1
  %1184 = or i32 %1173, 80
  %1185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 2
  %1187 = extractvalue %dx.types.ResRet.f32 %1185, 3
  %1188 = or i32 %1173, 96
  %1189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.ResRet.f32 %1189, 2
  %1193 = extractvalue %dx.types.ResRet.f32 %1189, 3
  %1194 = or i32 %1173, 112
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1197 = or i32 %1173, 128
  %1198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.ResRet.f32 %1198, 2
  %1202 = extractvalue %dx.types.ResRet.f32 %1198, 3
  %1203 = or i32 %1173, 144
  %1204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.ResRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.ResRet.f32 %1204, 2
  %1208 = extractvalue %dx.types.ResRet.f32 %1204, 3
  %1209 = or i32 %1173, 160
  %1210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = extractvalue %dx.types.ResRet.f32 %1210, 3
  %1215 = or i32 %1173, 192
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = or i32 %1173, 208
  %1219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = or i32 %1173, 248
  %1222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = add nuw nsw i32 %1168, 1
  %1226 = bitcast float %1179 to i32
  %1227 = and i32 %1226, 2560
  %1228 = icmp eq i32 %1227, 0
  %1229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.ResRet.f32 %1229, 1
  %1232 = extractvalue %dx.types.ResRet.f32 %1229, 2
  %1233 = extractvalue %dx.types.ResRet.f32 %1229, 3
  %1234 = call float @dx.op.dot4.f32(i32 56, float %1230, float %1231, float %1232, float %1233, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1235 = or i32 %1173, 16
  %1236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.ResRet.f32 %1236, 2
  %1240 = extractvalue %dx.types.ResRet.f32 %1236, 3
  %1241 = call float @dx.op.dot4.f32(i32 56, float %1237, float %1238, float %1239, float %1240, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1242 = or i32 %1173, 32
  %1243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = extractvalue %dx.types.ResRet.f32 %1243, 1
  %1246 = extractvalue %dx.types.ResRet.f32 %1243, 2
  %1247 = extractvalue %dx.types.ResRet.f32 %1243, 3
  %1248 = call float @dx.op.dot4.f32(i32 56, float %1244, float %1245, float %1246, float %1247, float %146, float %147, float %148, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1249 = call float @dx.op.unary.f32(i32 27, float %1234)  ; Round_ni(value)
  %1250 = call float @dx.op.unary.f32(i32 6, float %1249)  ; FAbs(value)
  %1251 = call float @dx.op.unary.f32(i32 27, float %1241)  ; Round_ni(value)
  %1252 = call float @dx.op.unary.f32(i32 6, float %1251)  ; FAbs(value)
  %1253 = call float @dx.op.unary.f32(i32 6, float %1248)  ; FAbs(value)
  %1254 = call float @dx.op.unary.f32(i32 27, float %1253)  ; Round_ni(value)
  %1255 = fadd fast float %1252, %1250
  %1256 = fadd fast float %1255, %1254
  %1257 = fcmp fast oeq float %1256, 0.000000e+00
  %1258 = call float @dx.op.dot4.f32(i32 56, float %1230, float %1231, float %1232, float %1233, float %1099, float %1100, float %1101, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1259 = call float @dx.op.dot4.f32(i32 56, float %1237, float %1238, float %1239, float %1240, float %1099, float %1100, float %1101, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1260 = call float @dx.op.dot4.f32(i32 56, float %1230, float %1231, float %1232, float %1233, float %1102, float %1103, float %1104, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1261 = call float @dx.op.dot4.f32(i32 56, float %1237, float %1238, float %1239, float %1240, float %1102, float %1103, float %1104, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1262 = fsub fast float %1258, %1234
  %1263 = fsub fast float %1260, %1234
  %1264 = fsub fast float %1259, %1241
  %1265 = fsub fast float %1261, %1241
  %1266 = call float @dx.op.dot3.f32(i32 55, float %1176, float %1177, float %1178, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1269 = fadd fast float %1268, %1266
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1272 = fcmp fast ogt float %1270, %1271
  %1273 = and i1 %1257, %1272
  %1274 = and i1 %1228, %1273
  br i1 %1274, label %1298, label %1275

; <label>:1275                                    ; preds = %1583, %1379, %1298, %1146
  %1276 = phi float [ %1147, %1298 ], [ %1382, %1379 ], [ %1382, %1583 ], [ %1147, %1146 ]
  %1277 = phi float [ %1148, %1298 ], [ %1148, %1379 ], [ %1559, %1583 ], [ %1148, %1146 ]
  %1278 = phi float [ %1149, %1298 ], [ %1149, %1379 ], [ %1557, %1583 ], [ %1149, %1146 ]
  %1279 = phi float [ %1150, %1298 ], [ %1150, %1379 ], [ %1535, %1583 ], [ %1150, %1146 ]
  %1280 = phi float [ %1151, %1298 ], [ %1151, %1379 ], [ %1536, %1583 ], [ %1151, %1146 ]
  %1281 = phi float [ %1152, %1298 ], [ %1152, %1379 ], [ %1537, %1583 ], [ %1152, %1146 ]
  %1282 = phi float [ %1153, %1298 ], [ %1153, %1379 ], [ %1506, %1583 ], [ %1153, %1146 ]
  %1283 = phi float [ %1154, %1298 ], [ %1154, %1379 ], [ %1504, %1583 ], [ %1154, %1146 ]
  %1284 = phi float [ %1155, %1298 ], [ %1155, %1379 ], [ %1593, %1583 ], [ %1155, %1146 ]
  %1285 = phi float [ %1156, %1298 ], [ %1156, %1379 ], [ %1594, %1583 ], [ %1156, %1146 ]
  %1286 = phi float [ %1157, %1298 ], [ %1157, %1379 ], [ %1595, %1583 ], [ %1157, %1146 ]
  %1287 = phi float [ %1158, %1298 ], [ %1158, %1379 ], [ %1485, %1583 ], [ %1158, %1146 ]
  %1288 = phi float [ %1159, %1298 ], [ %1159, %1379 ], [ %1486, %1583 ], [ %1159, %1146 ]
  %1289 = phi float [ %1160, %1298 ], [ %1160, %1379 ], [ %1487, %1583 ], [ %1160, %1146 ]
  %1290 = phi float [ %1161, %1298 ], [ %1161, %1379 ], [ %1515, %1583 ], [ %1161, %1146 ]
  %1291 = phi float [ %1162, %1298 ], [ %1162, %1379 ], [ %1512, %1583 ], [ %1162, %1146 ]
  %1292 = phi float [ %1163, %1298 ], [ %1163, %1379 ], [ %1509, %1583 ], [ %1163, %1146 ]
  %1293 = phi float [ %1164, %1298 ], [ %1164, %1379 ], [ %1502, %1583 ], [ %1164, %1146 ]
  %1294 = phi float [ %1165, %1298 ], [ %1165, %1379 ], [ %1497, %1583 ], [ %1165, %1146 ]
  %1295 = phi float [ %1166, %1298 ], [ %1166, %1379 ], [ %1498, %1583 ], [ %1166, %1146 ]
  %1296 = phi float [ %1167, %1298 ], [ %1167, %1379 ], [ %1499, %1583 ], [ %1167, %1146 ]
  %1297 = icmp eq i32 %1225, %1145
  br i1 %1297, label %1596, label %1146

; <label>:1298                                    ; preds = %1146
  %1299 = extractvalue %dx.types.ResRet.f32 %1195, 3
  %1300 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1301 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1302 = extractvalue %dx.types.ResRet.f32 %1185, 1
  %1303 = extractvalue %dx.types.ResRet.f32 %1185, 0
  %1304 = extractvalue %dx.types.ResRet.i32 %1181, 3
  %1305 = extractvalue %dx.types.ResRet.i32 %1181, 2
  %1306 = add i32 %1304, 0
  %1307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1306, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1309 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1307, %dx.types.Handle %1308, float %1234, float %1241, float undef, float undef, i32 0, i32 0, i32 undef, float %1262, float %1264, float undef, float %1263, float %1265, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = fmul fast float %1310, %1303
  %1312 = fadd fast float %1311, %1302
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = fmul fast float %1234, %1190
  %1315 = call float @dx.op.tertiary.f32(i32 46, float %1191, float %1241, float %1314)  ; FMad(a,b,c)
  %1316 = fadd fast float %1315, %1301
  %1317 = fmul fast float %1234, %1192
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1193, float %1241, float %1317)  ; FMad(a,b,c)
  %1319 = fadd fast float %1318, %1300
  %1320 = fmul fast float %1262, %1190
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1191, float %1264, float %1320)  ; FMad(a,b,c)
  %1322 = fmul fast float %1262, %1192
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1193, float %1264, float %1322)  ; FMad(a,b,c)
  %1324 = fmul fast float %1263, %1190
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1191, float %1265, float %1324)  ; FMad(a,b,c)
  %1326 = fmul fast float %1263, %1192
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1193, float %1265, float %1326)  ; FMad(a,b,c)
  %1328 = add i32 %1305, 0
  %1329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1328, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1330 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1329, %dx.types.Handle %1308, float %1316, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float %1321, float %1323, float undef, float %1325, float %1327, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = and i32 %1226, 1024
  %1333 = icmp ne i32 %1332, 0
  %1334 = fcmp fast ogt float %1331, 0x3FE0101020000000
  %1335 = uitofp i1 %1334 to float
  %1336 = select i1 %1333, float %1335, float %1331
  %1337 = and i32 %1226, 8192
  %1338 = icmp ne i32 %1337, 0
  %1339 = select i1 %1338, float %1299, float 1.000000e+00
  %1340 = fmul fast float %1234, 2.000000e+00
  %1341 = fadd fast float %1340, -1.000000e+00
  %1342 = call float @dx.op.unary.f32(i32 6, float %1341)  ; FAbs(value)
  %1343 = fmul fast float %1342, %1223
  %1344 = fsub fast float %1343, %1223
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = fmul fast float %1241, 2.000000e+00
  %1347 = fadd fast float %1346, -1.000000e+00
  %1348 = call float @dx.op.unary.f32(i32 6, float %1347)  ; FAbs(value)
  %1349 = fmul fast float %1348, %1224
  %1350 = fsub fast float %1349, %1224
  %1351 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1352 = fmul fast float %1253, %1186
  %1353 = fsub fast float %1352, %1186
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1355 = fmul fast float %1313, %1339
  %1356 = fmul fast float %1355, %1310
  %1357 = fmul fast float %1356, %1345
  %1358 = fmul fast float %1357, %1336
  %1359 = fmul fast float %1358, %1351
  %1360 = fmul fast float %1359, %1354
  %1361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1361, 1
  %1363 = extractvalue %dx.types.CBufRet.f32 %1361, 0
  %1364 = fsub fast float %1270, %1363
  %1365 = fmul fast float %1364, %1362
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = fmul fast float %1360, %1187
  %1368 = fadd fast float %1360, %1187
  %1369 = fmul fast float %1368, %1196
  %1370 = fsub fast float %1369, %1196
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = and i32 %1226, 128
  %1373 = icmp ne i32 %1372, 0
  %1374 = select i1 %1373, float %1371, float %1367
  %1375 = fmul fast float %1374, %1366
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1378 = fcmp fast ugt float %1375, %1377
  br i1 %1378, label %1379, label %1275

; <label>:1379                                    ; preds = %1298
  %1380 = select i1 %1338, float %1375, float 0.000000e+00
  %1381 = fadd fast float %1380, %1147
  %1382 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  br i1 %1338, label %1275, label %1383

; <label>:1383                                    ; preds = %1379
  %1384 = and i32 %1226, 4
  %1385 = and i32 %1226, 8
  %1386 = add i32 %1182, 0
  %1387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1386, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1389 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1387, %dx.types.Handle %1388, float %1316, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float %1321, float %1323, float undef, float %1325, float %1327, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = extractvalue %dx.types.ResRet.f32 %1389, 1
  %1392 = extractvalue %dx.types.ResRet.f32 %1389, 2
  %1393 = extractvalue %dx.types.ResRet.f32 %1389, 3
  %1394 = bitcast float %1208 to i32
  %1395 = and i32 %1394, 255
  %1396 = uitofp i32 %1395 to float
  %1397 = lshr i32 %1394, 8
  %1398 = and i32 %1397, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1393, %1396
  %1401 = fadd fast float %1400, %1399
  %1402 = fmul fast float %1401, 0x3F70101000000000
  %1403 = add i32 %1183, 0
  %1404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1403, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1405 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1404, %dx.types.Handle %1388, float %1316, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float %1321, float %1323, float undef, float %1325, float %1327, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.ResRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.ResRet.f32 %1405, 2
  %1409 = extractvalue %dx.types.ResRet.f32 %1405, 3
  %1410 = bitcast float %1202 to i32
  %1411 = and i32 %1410, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = lshr i32 %1410, 8
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = lshr i32 %1410, 16
  %1417 = and i32 %1416, 255
  %1418 = uitofp i32 %1417 to float
  %1419 = fmul fast float %1418, 0x3F70101000000000
  %1420 = fmul fast float %1406, %1412
  %1421 = fadd fast float %1420, %1415
  %1422 = fmul fast float %1421, 0x3F70101000000000
  %1423 = fadd fast float %1407, -5.000000e-01
  %1424 = fadd fast float %1409, -5.000000e-01
  %1425 = fmul fast float %1423, %1419
  %1426 = fmul fast float %1424, %1419
  %1427 = fadd fast float %1425, 5.000000e-01
  %1428 = fadd fast float %1426, 5.000000e-01
  %1429 = fmul fast float %1390, %1211
  %1430 = fmul fast float %1391, %1212
  %1431 = fmul fast float %1392, %1213
  %1432 = fmul fast float %1427, 2.000000e+00
  %1433 = fadd fast float %1432, -1.000000e+00
  %1434 = fmul fast float %1428, 2.000000e+00
  %1435 = fadd fast float %1434, -1.000000e+00
  %1436 = fadd fast float %1433, %1435
  %1437 = fmul fast float %1436, 5.000000e-01
  %1438 = fsub fast float %1433, %1435
  %1439 = fmul fast float %1438, 5.000000e-01
  %1440 = call float @dx.op.unary.f32(i32 6, float %1437)  ; FAbs(value)
  %1441 = fsub fast float 1.000000e+00, %1440
  %1442 = call float @dx.op.unary.f32(i32 6, float %1439)  ; FAbs(value)
  %1443 = fsub fast float %1441, %1442
  %1444 = call float @dx.op.dot3.f32(i32 55, float %1437, float %1439, float %1443, float %1437, float %1439, float %1443)  ; Dot3(ax,ay,az,bx,by,bz)
  %1445 = call float @dx.op.unary.f32(i32 25, float %1444)  ; Rsqrt(value)
  %1446 = fmul fast float %1437, %1445
  %1447 = fmul fast float %1439, %1445
  %1448 = fmul fast float %1445, %1443
  %1449 = fmul fast float %1448, %1176
  %1450 = fmul fast float %1448, %1177
  %1451 = fmul fast float %1448, %1178
  %1452 = fmul fast float %1446, %1199
  %1453 = fmul fast float %1446, %1200
  %1454 = fmul fast float %1446, %1201
  %1455 = fadd fast float %1452, %1449
  %1456 = fadd fast float %1453, %1450
  %1457 = fadd fast float %1454, %1451
  %1458 = fmul fast float %1447, %1205
  %1459 = fmul fast float %1447, %1206
  %1460 = fmul fast float %1447, %1207
  %1461 = fadd fast float %1455, %1458
  %1462 = fadd fast float %1456, %1459
  %1463 = fadd fast float %1457, %1460
  %1464 = call float @dx.op.dot3.f32(i32 55, float %1461, float %1462, float %1463, float %1461, float %1462, float %1463)  ; Dot3(ax,ay,az,bx,by,bz)
  %1465 = call float @dx.op.unary.f32(i32 25, float %1464)  ; Rsqrt(value)
  %1466 = fmul fast float %1461, %1465
  %1467 = fmul fast float %1462, %1465
  %1468 = fmul fast float %1463, %1465
  %1469 = icmp ne i32 %1385, 0
  %1470 = select i1 %1469, float 1.000000e+00, float 0.000000e+00
  %1471 = fmul fast float %1375, %1470
  %1472 = and i32 %1226, 1
  %1473 = icmp eq i32 %1472, 0
  br i1 %1473, label %1474, label %1478

; <label>:1474                                    ; preds = %1383
  %1475 = fsub fast float %1466, %1158
  %1476 = fsub fast float %1467, %1159
  %1477 = fsub fast float %1468, %1160
  br label %1478

; <label>:1478                                    ; preds = %1474, %1383
  %1479 = phi float [ %1475, %1474 ], [ %1466, %1383 ]
  %1480 = phi float [ %1476, %1474 ], [ %1467, %1383 ]
  %1481 = phi float [ %1477, %1474 ], [ %1468, %1383 ]
  %1482 = fmul float %1481, %1471
  %1483 = fmul float %1480, %1471
  %1484 = fmul float %1479, %1471
  %1485 = fadd fast float %1484, %1158
  %1486 = fadd fast float %1483, %1159
  %1487 = fadd fast float %1482, %1160
  %1488 = icmp ne i32 %1384, 0
  %1489 = select i1 %1488, float 1.000000e+00, float 0.000000e+00
  %1490 = fmul fast float %1375, %1489
  %1491 = fsub fast float %1429, %1165
  %1492 = fsub fast float %1430, %1166
  %1493 = fsub fast float %1431, %1167
  %1494 = fmul fast float %1491, %1490
  %1495 = fmul fast float %1492, %1490
  %1496 = fmul fast float %1493, %1490
  %1497 = fadd fast float %1494, %1165
  %1498 = fadd fast float %1495, %1166
  %1499 = fadd fast float %1496, %1167
  %1500 = fsub fast float %1402, %1164
  %1501 = fmul fast float %1500, %1490
  %1502 = fadd fast float %1501, %1164
  %1503 = fmul fast float %1490, %1154
  %1504 = fsub fast float %1154, %1503
  %1505 = fmul fast float %1490, %1153
  %1506 = fsub fast float %1153, %1505
  %1507 = bitcast float %1220 to i32
  %1508 = fadd fast float %1375, %1163
  %1509 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1510 = fsub fast float %1422, %1162
  %1511 = fmul fast float %1510, %1471
  %1512 = fadd fast float %1511, %1162
  %1513 = fsub fast float %1408, %1161
  %1514 = fmul fast float %1513, %1471
  %1515 = fadd fast float %1514, %1161
  br i1 %1473, label %1524, label %1516

; <label>:1516                                    ; preds = %1478
  %1517 = and i32 %1226, 32768
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1534, label %1519

; <label>:1519                                    ; preds = %1516
  %1520 = fmul fast float %1471, 1.270000e+02
  %1521 = fadd fast float %1520, %1150
  %1522 = fadd fast float %1520, %1151
  %1523 = fadd fast float %1520, %1152
  br label %1534

; <label>:1524                                    ; preds = %1478
  %1525 = fsub fast float 1.270000e+02, %1150
  %1526 = fsub fast float 1.270000e+02, %1151
  %1527 = fsub fast float 1.270000e+02, %1152
  %1528 = fmul fast float %1471, %1525
  %1529 = fmul fast float %1471, %1526
  %1530 = fmul fast float %1471, %1527
  %1531 = fadd fast float %1528, %1150
  %1532 = fadd fast float %1529, %1151
  %1533 = fadd fast float %1530, %1152
  br label %1534

; <label>:1534                                    ; preds = %1524, %1519, %1516
  %1535 = phi float [ %1521, %1519 ], [ %1150, %1516 ], [ %1531, %1524 ]
  %1536 = phi float [ %1522, %1519 ], [ %1151, %1516 ], [ %1532, %1524 ]
  %1537 = phi float [ %1523, %1519 ], [ %1152, %1516 ], [ %1533, %1524 ]
  %1538 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1430, float %1431, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.CBufRet.f32 %1539, 1
  %1542 = fmul fast float %1541, %1538
  %1543 = fadd fast float %1542, %1540
  %1544 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1545 = bitcast float %1214 to i32
  %1546 = and i32 %1545, 65535
  %1547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1546)  ; LegacyF16ToF32(value)
  %1548 = lshr i32 %1545, 16
  %1549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1548)  ; LegacyF16ToF32(value)
  %1550 = fcmp fast oge float %1547, 0.000000e+00
  %1551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1552 = extractvalue %dx.types.CBufRet.f32 %1551, 0
  %1553 = select i1 %1550, float %1547, float %1552
  %1554 = fadd fast float %1553, %1549
  %1555 = fsub fast float %1544, %1149
  %1556 = fmul fast float %1555, %1375
  %1557 = fadd fast float %1556, %1149
  %1558 = fmul fast float %1554, %1375
  %1559 = call float @dx.op.binary.f32(i32 35, float %1148, float %1558)  ; FMax(a,b)
  %1560 = and i32 %1226, 16
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1583, label %1562

; <label>:1562                                    ; preds = %1534
  %1563 = add i32 %1217, 0
  %1564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1563, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1565 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1564, %dx.types.Handle %1388, float %1316, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float %1321, float %1323, float undef, float %1325, float %1327, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.ResRet.f32 %1565, 1
  %1568 = extractvalue %dx.types.ResRet.f32 %1565, 2
  %1569 = and i32 %1507, 65535
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = fmul fast float %1566, %1211
  %1572 = fmul fast float %1567, %1212
  %1573 = fmul fast float %1568, %1213
  %1574 = and i32 %1226, 16384
  %1575 = icmp ne i32 %1574, 0
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 0
  %1578 = select i1 %1575, float %1577, float 1.000000e+00
  %1579 = fmul fast float %1578, %1570
  %1580 = fmul fast float %1571, %1579
  %1581 = fmul fast float %1572, %1579
  %1582 = fmul fast float %1573, %1579
  br label %1583

; <label>:1583                                    ; preds = %1562, %1534
  %1584 = phi float [ %1580, %1562 ], [ 0.000000e+00, %1534 ]
  %1585 = phi float [ %1581, %1562 ], [ 0.000000e+00, %1534 ]
  %1586 = phi float [ %1582, %1562 ], [ 0.000000e+00, %1534 ]
  %1587 = fsub fast float %1584, %1155
  %1588 = fsub fast float %1585, %1156
  %1589 = fsub fast float %1586, %1157
  %1590 = fmul fast float %1587, %1375
  %1591 = fmul fast float %1588, %1375
  %1592 = fmul fast float %1589, %1375
  %1593 = fadd fast float %1590, %1155
  %1594 = fadd fast float %1591, %1156
  %1595 = fadd fast float %1592, %1157
  br label %1275

; <label>:1596                                    ; preds = %1275
  br label %1597

; <label>:1597                                    ; preds = %1596, %1039
  %1598 = phi float [ 0.000000e+00, %1039 ], [ %1276, %1596 ]
  %1599 = phi float [ %1064, %1039 ], [ %1277, %1596 ]
  %1600 = phi float [ %1056, %1039 ], [ %1278, %1596 ]
  %1601 = phi float [ %1048, %1039 ], [ %1279, %1596 ]
  %1602 = phi float [ %1049, %1039 ], [ %1280, %1596 ]
  %1603 = phi float [ %1050, %1039 ], [ %1281, %1596 ]
  %1604 = phi float [ 0.000000e+00, %1039 ], [ %1282, %1596 ]
  %1605 = phi float [ 0.000000e+00, %1039 ], [ %1283, %1596 ]
  %1606 = phi float [ %1045, %1039 ], [ %1284, %1596 ]
  %1607 = phi float [ %1046, %1039 ], [ %1285, %1596 ]
  %1608 = phi float [ %1047, %1039 ], [ %1286, %1596 ]
  %1609 = phi float [ %1090, %1039 ], [ %1287, %1596 ]
  %1610 = phi float [ %1091, %1039 ], [ %1288, %1596 ]
  %1611 = phi float [ %1092, %1039 ], [ %1289, %1596 ]
  %1612 = phi float [ %1054, %1039 ], [ %1290, %1596 ]
  %1613 = phi float [ %1053, %1039 ], [ %1291, %1596 ]
  %1614 = phi float [ 0.000000e+00, %1039 ], [ %1292, %1596 ]
  %1615 = phi float [ %1051, %1039 ], [ %1293, %1596 ]
  %1616 = phi float [ %1042, %1039 ], [ %1294, %1596 ]
  %1617 = phi float [ %1043, %1039 ], [ %1295, %1596 ]
  %1618 = phi float [ %1044, %1039 ], [ %1296, %1596 ]
  %1619 = call float @dx.op.dot3.f32(i32 55, float %1609, float %1610, float %1611, float %1609, float %1610, float %1611)  ; Dot3(ax,ay,az,bx,by,bz)
  %1620 = call float @dx.op.unary.f32(i32 25, float %1619)  ; Rsqrt(value)
  %1621 = fmul fast float %1620, %1609
  %1622 = fmul fast float %1620, %1610
  %1623 = fmul fast float %1620, %1611
  %1624 = fadd fast float %1614, %1052
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  %1626 = call float @dx.op.dot3.f32(i32 55, float %1621, float %1622, float %1623, float %1621, float %1622, float %1623)  ; Dot3(ax,ay,az,bx,by,bz)
  %1627 = call float @dx.op.unary.f32(i32 25, float %1626)  ; Rsqrt(value)
  %1628 = fmul fast float %1627, %1621
  %1629 = fmul fast float %1627, %1622
  %1630 = fmul fast float %1627, %1623
  %1631 = fadd fast float %1615, 0xBFB99999A0000000
  %1632 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  %1633 = fmul fast float %1632, 0x3FF1C71C80000000
  %1634 = call float @dx.op.binary.f32(i32 36, float %1615, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1635 = fsub fast float 1.000000e+00, %1633
  %1636 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1637 = fmul fast float %1636, %1616
  %1638 = fmul fast float %1636, %1617
  %1639 = fmul fast float %1636, %1618
  %1640 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1641 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1642 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1643 = fmul fast float %1633, %1616
  %1644 = fmul fast float %1633, %1617
  %1645 = fmul fast float %1633, %1618
  %1646 = fadd fast float %1643, %1634
  %1647 = fadd fast float %1644, %1634
  %1648 = fadd fast float %1645, %1634
  %1649 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1650 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1651 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  %1652 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1653 = call float @dx.op.binary.f32(i32 36, float %1601, float 1.270000e+02)  ; FMin(a,b)
  %1654 = call float @dx.op.binary.f32(i32 36, float %1602, float 1.270000e+02)  ; FMin(a,b)
  %1655 = call float @dx.op.binary.f32(i32 36, float %1603, float 1.270000e+02)  ; FMin(a,b)
  %1656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.i32 %1656, 3
  %1658 = and i32 %1657, 8
  %1659 = icmp ne i32 %1658, 0
  %1660 = call float @dx.op.binary.f32(i32 35, float %1640, float %1616)  ; FMax(a,b)
  %1661 = call float @dx.op.binary.f32(i32 35, float %1641, float %1616)  ; FMax(a,b)
  %1662 = call float @dx.op.binary.f32(i32 35, float %1642, float %1616)  ; FMax(a,b)
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1640, float %1641, float %1642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = select i1 %237, float %1616, float %1640
  %1665 = select i1 %237, float %1663, float %1641
  %1666 = select i1 %237, float 1.000000e+00, float %1642
  %1667 = select i1 %1659, float %1660, float %1664
  %1668 = select i1 %1659, float %1661, float %1665
  %1669 = select i1 %1659, float %1662, float %1666
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.CBufRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.CBufRet.f32 %1670, 2
  %1674 = fadd fast float %1671, %146
  %1675 = fadd fast float %1672, %147
  %1676 = fadd fast float %1673, %148
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.CBufRet.f32 %1677, 1
  %1680 = fsub fast float %1674, %1678
  %1681 = fsub fast float %1675, %1679
  %1682 = fmul fast float %1680, %1680
  %1683 = fmul fast float %1681, %1681
  %1684 = fadd fast float %1682, %1683
  %1685 = call float @dx.op.unary.f32(i32 24, float %1684)  ; Sqrt(value)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1677, 2
  %1687 = fcmp fast olt float %1685, %1686
  br i1 %1687, label %1688, label %1755

; <label>:1688                                    ; preds = %1597
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 0
  %1693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1696 = extractvalue %dx.types.CBufRet.f32 %1691, 1
  %1697 = extractvalue %dx.types.CBufRet.f32 %1693, 1
  %1698 = extractvalue %dx.types.CBufRet.f32 %1689, 3
  %1699 = extractvalue %dx.types.CBufRet.f32 %1691, 3
  %1700 = extractvalue %dx.types.CBufRet.f32 %1693, 3
  %1701 = fadd fast float %1698, %1674
  %1702 = fadd fast float %1699, %1675
  %1703 = fadd fast float %1700, %1676
  %1704 = fmul fast float %1701, %1690
  %1705 = call float @dx.op.tertiary.f32(i32 46, float %1702, float %1692, float %1704)  ; FMad(a,b,c)
  %1706 = call float @dx.op.tertiary.f32(i32 46, float %1703, float %1694, float %1705)  ; FMad(a,b,c)
  %1707 = fmul fast float %1701, %1695
  %1708 = call float @dx.op.tertiary.f32(i32 46, float %1702, float %1696, float %1707)  ; FMad(a,b,c)
  %1709 = call float @dx.op.tertiary.f32(i32 46, float %1703, float %1697, float %1708)  ; FMad(a,b,c)
  %1710 = fsub fast float %1706, %1698
  %1711 = fsub fast float %1709, %1699
  %1712 = fsub fast float %1710, %1678
  %1713 = fadd fast float %1712, %1686
  %1714 = fsub fast float %1711, %1679
  %1715 = fadd fast float %1714, %1686
  %1716 = extractvalue %dx.types.CBufRet.f32 %1677, 3
  %1717 = fmul fast float %1713, %1716
  %1718 = fmul fast float %1715, %1716
  %1719 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1720 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1721 = fsub fast float 1.000000e+00, %1719
  %1722 = fsub fast float 1.000000e+00, %1720
  %1723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1721, float %1722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = fcmp fast ugt float %1724, 0.000000e+00
  br i1 %1725, label %1726, label %2029

; <label>:1726                                    ; preds = %1688
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 2
  %1729 = fmul fast float %1728, %1724
  %1730 = extractvalue %dx.types.CBufRet.f32 %1727, 3
  %1731 = fadd fast float %1730, %1729
  %1732 = extractvalue %dx.types.CBufRet.f32 %1693, 2
  %1733 = fadd fast float %1731, %1700
  %1734 = fmul fast float %1706, %1694
  %1735 = call float @dx.op.tertiary.f32(i32 46, float %1709, float %1697, float %1734)  ; FMad(a,b,c)
  %1736 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1732, float %1735)  ; FMad(a,b,c)
  %1737 = fsub fast float %1736, %1700
  %1738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1739 = extractvalue %dx.types.CBufRet.f32 %1738, 2
  %1740 = fsub fast float %1737, %1739
  %1741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1721, float %1722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.ResRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.ResRet.f32 %1741, 2
  %1745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1721, float %1722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1746 = extractvalue %dx.types.ResRet.f32 %1745, 0
  %1747 = extractvalue %dx.types.ResRet.f32 %1745, 1
  %1748 = extractvalue %dx.types.ResRet.f32 %1745, 2
  %1749 = fadd fast float %1746, %1742
  %1750 = fmul fast float %1749, 0x3F847AE140000000
  %1751 = fadd fast float %1747, %1743
  %1752 = fmul fast float %1751, 0x3F847AE140000000
  %1753 = fadd fast float %1748, %1744
  %1754 = fmul fast float %1753, 0x3F847AE140000000
  br label %2029

; <label>:1755                                    ; preds = %1597
  %1756 = and i32 %213, 1
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %2029, label %1758

; <label>:1758                                    ; preds = %1755
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 0
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 0
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.CBufRet.f32 %1759, 1
  %1766 = extractvalue %dx.types.CBufRet.f32 %1761, 1
  %1767 = extractvalue %dx.types.CBufRet.f32 %1763, 1
  %1768 = extractvalue %dx.types.CBufRet.f32 %1759, 3
  %1769 = extractvalue %dx.types.CBufRet.f32 %1761, 3
  %1770 = extractvalue %dx.types.CBufRet.f32 %1763, 3
  %1771 = fadd fast float %1768, %1674
  %1772 = fadd fast float %1769, %1675
  %1773 = fadd fast float %1770, %1676
  %1774 = fmul fast float %1771, %1760
  %1775 = call float @dx.op.tertiary.f32(i32 46, float %1772, float %1762, float %1774)  ; FMad(a,b,c)
  %1776 = call float @dx.op.tertiary.f32(i32 46, float %1773, float %1764, float %1775)  ; FMad(a,b,c)
  %1777 = fmul fast float %1771, %1765
  %1778 = call float @dx.op.tertiary.f32(i32 46, float %1772, float %1766, float %1777)  ; FMad(a,b,c)
  %1779 = call float @dx.op.tertiary.f32(i32 46, float %1773, float %1767, float %1778)  ; FMad(a,b,c)
  %1780 = fsub fast float %1776, %1768
  %1781 = fsub fast float %1779, %1769
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.CBufRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.CBufRet.f32 %1782, 3
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.i32 %1789, 0
  %1791 = extractvalue %dx.types.CBufRet.i32 %1789, 1
  %1792 = udiv i32 %1791, %1790
  %1793 = fsub fast float %1780, %1783
  %1794 = fsub fast float %1781, %1784
  %1795 = call float @dx.op.binary.f32(i32 35, float %1793, float 0.000000e+00)  ; FMax(a,b)
  %1796 = call float @dx.op.binary.f32(i32 35, float %1794, float 0.000000e+00)  ; FMax(a,b)
  %1797 = call float @dx.op.binary.f32(i32 36, float %1795, float %1785)  ; FMin(a,b)
  %1798 = call float @dx.op.binary.f32(i32 36, float %1796, float %1786)  ; FMin(a,b)
  %1799 = add i32 %1790, -1
  %1800 = add i32 %1792, -1
  %1801 = fmul fast float %1797, %1788
  %1802 = fmul fast float %1798, %1788
  %1803 = fptoui float %1801 to i32
  %1804 = fptoui float %1802 to i32
  %1805 = call i32 @dx.op.binary.i32(i32 40, i32 %1803, i32 %1799)  ; UMin(a,b)
  %1806 = call i32 @dx.op.binary.i32(i32 40, i32 %1804, i32 %1800)  ; UMin(a,b)
  %1807 = mul i32 %1806, %1790
  %1808 = add i32 %1807, %1805
  %1809 = shl i32 %1808, 2
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = icmp eq i32 %1811, -1
  br i1 %1812, label %2029, label %1813

; <label>:1813                                    ; preds = %1758
  %1814 = mul i32 %1811, 148
  %1815 = add i32 %1814, 4
  %1816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.f32 %1816, 0
  %1818 = add i32 %1814, 8
  %1819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.f32 %1819, 0
  %1821 = add i32 %1814, 36
  %1822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.f32 %1822, 0
  %1824 = add i32 %1814, 60
  %1825 = add i32 %1814, 92
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = add i32 %1814, 116
  %1829 = fsub fast float %1780, %1817
  %1830 = fsub fast float %1781, %1820
  %1831 = fmul fast float %1788, %1829
  %1832 = fmul fast float %1788, %1830
  %1833 = call float @dx.op.unary.f32(i32 7, float %1831)  ; Saturate(value)
  %1834 = call float @dx.op.unary.f32(i32 7, float %1832)  ; Saturate(value)
  %1835 = fsub fast float 1.000000e+00, %1834
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 2
  %1838 = call float @dx.op.unary.f32(i32 83, float %1833)  ; DerivCoarseX(value)
  %1839 = call float @dx.op.unary.f32(i32 83, float %1835)  ; DerivCoarseX(value)
  %1840 = call float @dx.op.unary.f32(i32 84, float %1833)  ; DerivCoarseY(value)
  %1841 = call float @dx.op.unary.f32(i32 84, float %1835)  ; DerivCoarseY(value)
  %1842 = fmul fast float %1838, %1837
  %1843 = fmul fast float %1839, %1837
  %1844 = fmul fast float %1840, %1837
  %1845 = fmul fast float %1841, %1837
  %1846 = call float @dx.op.dot2.f32(i32 54, float %1844, float %1845, float %1844, float %1845)  ; Dot2(ax,ay,bx,by)
  %1847 = call float @dx.op.dot2.f32(i32 54, float %1842, float %1843, float %1842, float %1843)  ; Dot2(ax,ay,bx,by)
  %1848 = call float @dx.op.binary.f32(i32 35, float %1847, float %1846)  ; FMax(a,b)
  %1849 = call float @dx.op.unary.f32(i32 23, float %1848)  ; Log(value)
  %1850 = fmul fast float %1849, 5.000000e-01
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 1
  %1853 = fadd fast float %1852, %1850
  %1854 = call float @dx.op.binary.f32(i32 35, float %1853, float 0.000000e+00)  ; FMax(a,b)
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 3
  %1857 = fadd fast float %1856, %1854
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 3
  %1860 = fadd fast float %1857, %1859
  %1861 = add i32 %1827, 0
  %1862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1861, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1863 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1862, i32 0)  ; GetDimensions(handle,mipLevel)
  %1864 = extractvalue %dx.types.Dimensions %1863, 0
  %1865 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1864)  ; FirstbitLo(value)
  %1866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.i32 %1866, 1
  %1868 = sub nsw i32 %1867, %1865
  %1869 = sitofp i32 %1868 to float
  %1870 = fsub fast float %1860, %1869
  %1871 = call float @dx.op.binary.f32(i32 35, float %1870, float 0.000000e+00)  ; FMax(a,b)
  %1872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1862, %dx.types.Handle %62, float %1833, float %1835, float %1823, float undef, i32 0, i32 0, i32 undef, float %1871)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  %1874 = fcmp ule float %1873, 0x3FE0101020000000
  %1875 = extractvalue %dx.types.CBufRet.i32 %1866, 0
  %1876 = and i32 %1875, 128
  %1877 = icmp ne i32 %1876, 0
  %1878 = and i1 %1874, %1877
  br i1 %1878, label %2029, label %1879

; <label>:1879                                    ; preds = %1813
  %1880 = add i32 %1814, 20
  %1881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = add i32 %1814, 24
  %1884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  %1886 = add i32 %1814, 40
  %1887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.f32 %1887, 0
  %1889 = add i32 %1814, 96
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 2
  %1894 = fmul fast float %1893, %1833
  %1895 = fmul fast float %1893, %1835
  %1896 = extractvalue %dx.types.CBufRet.f32 %1892, 3
  %1897 = fadd fast float %1894, %1896
  %1898 = fadd fast float %1895, %1896
  %1899 = add i32 %1891, 0
  %1900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1899, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1901 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1900, i32 0)  ; GetDimensions(handle,mipLevel)
  %1902 = extractvalue %dx.types.Dimensions %1901, 0
  %1903 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1902)  ; FirstbitLo(value)
  %1904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.i32 %1904, 1
  %1906 = sub nsw i32 %1905, %1903
  %1907 = sitofp i32 %1906 to float
  %1908 = fsub fast float %1857, %1907
  %1909 = call float @dx.op.binary.f32(i32 35, float %1908, float 0.000000e+00)  ; FMax(a,b)
  %1910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1900, %dx.types.Handle %62, float %1897, float %1898, float %1888, float undef, i32 0, i32 0, i32 undef, float %1909)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = fmul fast float %1911, %1882
  %1913 = fadd fast float %1912, %1885
  %1914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.CBufRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.CBufRet.f32 %1914, 2
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 3
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 3
  %1922 = extractvalue %dx.types.CBufRet.f32 %1914, 3
  %1923 = fadd fast float %1919, %1780
  %1924 = fadd fast float %1921, %1781
  %1925 = fadd fast float %1913, %1922
  %1926 = fmul fast float %1923, %1915
  %1927 = call float @dx.op.tertiary.f32(i32 46, float %1924, float %1916, float %1926)  ; FMad(a,b,c)
  %1928 = call float @dx.op.tertiary.f32(i32 46, float %1925, float %1917, float %1927)  ; FMad(a,b,c)
  %1929 = fsub fast float %1928, %1922
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 2
  %1932 = fsub fast float %1929, %1931
  %1933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.i32 %1933, 0
  %1935 = call i32 @dx.op.binary.i32(i32 40, i32 %1811, i32 %1934)  ; UMin(a,b)
  %1936 = mul i32 %1935, 36
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = add i32 %1936, 4
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 0
  %1942 = fmul fast float %1941, %1833
  %1943 = fmul fast float %1941, %1835
  %1944 = extractvalue %dx.types.CBufRet.f32 %1940, 1
  %1945 = fadd fast float %1942, %1944
  %1946 = fadd fast float %1943, %1944
  %1947 = icmp eq i32 %1938, 0
  br i1 %1947, label %2016, label %1948

; <label>:1948                                    ; preds = %1879
  br label %1949

; <label>:1949                                    ; preds = %2006, %1948
  %1950 = phi float [ %2007, %2006 ], [ 0.000000e+00, %1948 ]
  %1951 = phi float [ %2008, %2006 ], [ 0.000000e+00, %1948 ]
  %1952 = phi float [ %2009, %2006 ], [ 0.000000e+00, %1948 ]
  %1953 = phi float [ %2010, %2006 ], [ 0.000000e+00, %1948 ]
  %1954 = phi float [ %2011, %2006 ], [ 0.000000e+00, %1948 ]
  %1955 = phi float [ %2012, %2006 ], [ 0.000000e+00, %1948 ]
  %1956 = phi i32 [ %2013, %2006 ], [ 0, %1948 ]
  %1957 = shl i32 %1956, 2
  %1958 = add i32 %1824, %1957
  %1959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.f32 %1959, 0
  %1961 = add i32 %1828, %1957
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = add i32 %1963, 0
  %1965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1964, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1966 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1965, i32 0)  ; GetDimensions(handle,mipLevel)
  %1967 = extractvalue %dx.types.Dimensions %1966, 0
  %1968 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1967)  ; FirstbitLo(value)
  %1969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.i32 %1969, 1
  %1971 = sub nsw i32 %1970, %1968
  %1972 = sitofp i32 %1971 to float
  %1973 = fsub fast float %1857, %1972
  %1974 = call float @dx.op.binary.f32(i32 35, float %1973, float 0.000000e+00)  ; FMax(a,b)
  %1975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1965, %dx.types.Handle %62, float %1945, float %1946, float %1960, float undef, i32 0, i32 0, i32 undef, float %1974)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = fcmp fast ogt float %1976, 0.000000e+00
  br i1 %1977, label %1978, label %2006

; <label>:1978                                    ; preds = %1949
  %1979 = add i32 %1939, %1957
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = and i32 %1981, 32767
  %1983 = mul nuw nsw i32 %1982, 928
  %1984 = add nuw nsw i32 %1983, 48
  %1985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = extractvalue %dx.types.ResRet.f32 %1985, 1
  %1988 = extractvalue %dx.types.ResRet.f32 %1985, 2
  %1989 = add nuw nsw i32 %1983, 60
  %1990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = extractvalue %dx.types.ResRet.f32 %1990, 1
  %1993 = extractvalue %dx.types.ResRet.f32 %1990, 2
  %1994 = fmul fast float %1986, %1976
  %1995 = fmul fast float %1987, %1976
  %1996 = fmul fast float %1988, %1976
  %1997 = fadd fast float %1994, %1950
  %1998 = fadd fast float %1995, %1951
  %1999 = fadd fast float %1996, %1952
  %2000 = fmul fast float %1991, %1976
  %2001 = fmul fast float %1992, %1976
  %2002 = fmul fast float %1993, %1976
  %2003 = fadd fast float %2000, %1953
  %2004 = fadd fast float %2001, %1954
  %2005 = fadd fast float %2002, %1955
  br label %2006

; <label>:2006                                    ; preds = %1978, %1949
  %2007 = phi float [ %1997, %1978 ], [ %1950, %1949 ]
  %2008 = phi float [ %1998, %1978 ], [ %1951, %1949 ]
  %2009 = phi float [ %1999, %1978 ], [ %1952, %1949 ]
  %2010 = phi float [ %2003, %1978 ], [ %1953, %1949 ]
  %2011 = phi float [ %2004, %1978 ], [ %1954, %1949 ]
  %2012 = phi float [ %2005, %1978 ], [ %1955, %1949 ]
  %2013 = add nuw i32 %1956, 1
  %2014 = icmp eq i32 %2013, %1938
  br i1 %2014, label %2015, label %1949

; <label>:2015                                    ; preds = %2006
  br label %2016

; <label>:2016                                    ; preds = %2015, %1879
  %2017 = phi float [ 0.000000e+00, %1879 ], [ %2007, %2015 ]
  %2018 = phi float [ 0.000000e+00, %1879 ], [ %2008, %2015 ]
  %2019 = phi float [ 0.000000e+00, %1879 ], [ %2009, %2015 ]
  %2020 = phi float [ 0.000000e+00, %1879 ], [ %2010, %2015 ]
  %2021 = phi float [ 0.000000e+00, %1879 ], [ %2011, %2015 ]
  %2022 = phi float [ 0.000000e+00, %1879 ], [ %2012, %2015 ]
  %2023 = fadd fast float %2020, %2017
  %2024 = fmul fast float %2023, 0x3F847AE140000000
  %2025 = fadd fast float %2021, %2018
  %2026 = fmul fast float %2025, 0x3F847AE140000000
  %2027 = fadd fast float %2022, %2019
  %2028 = fmul fast float %2027, 0x3F847AE140000000
  br label %2029

; <label>:2029                                    ; preds = %2016, %1813, %1758, %1755, %1726, %1688
  %2030 = phi float [ %1740, %1726 ], [ -1.310720e+05, %1688 ], [ %1932, %2016 ], [ -1.310720e+05, %1758 ], [ -1.310720e+05, %1813 ], [ -1.310720e+05, %1755 ]
  %2031 = phi float [ %1750, %1726 ], [ 0.000000e+00, %1688 ], [ %2024, %2016 ], [ 0.000000e+00, %1758 ], [ 0.000000e+00, %1813 ], [ 0.000000e+00, %1755 ]
  %2032 = phi float [ %1752, %1726 ], [ 0.000000e+00, %1688 ], [ %2026, %2016 ], [ 0.000000e+00, %1758 ], [ 0.000000e+00, %1813 ], [ 0.000000e+00, %1755 ]
  %2033 = phi float [ %1754, %1726 ], [ 0.000000e+00, %1688 ], [ %2028, %2016 ], [ 0.000000e+00, %1758 ], [ 0.000000e+00, %1813 ], [ 0.000000e+00, %1755 ]
  %2034 = phi i1 [ true, %1726 ], [ false, %1688 ], [ true, %2016 ], [ false, %1758 ], [ false, %1813 ], [ false, %1755 ]
  %2035 = and i32 %213, 3
  %2036 = icmp eq i32 %2035, 1
  %2037 = select i1 %2036, float 1.000000e+00, float 0.000000e+00
  %2038 = fsub fast float %2030, %148
  %2039 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2040 = select i1 %2034, float %2039, float 1.000000e+00
  %2041 = fmul fast float %2040, %2037
  %2042 = icmp eq i32 %2035, 3
  %2043 = select i1 %2042, float 1.000000e+00, float %2041
  %2044 = call float @dx.op.binary.f32(i32 35, float %1598, float %2043)  ; FMax(a,b)
  %2045 = call float @dx.op.unary.f32(i32 7, float %2044)  ; Saturate(value)
  %2046 = fcmp fast une float %2045, 0.000000e+00
  %2047 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %146, float %147, float %148)  ; Dot3(ax,ay,az,bx,by,bz)
  %2048 = call float @dx.op.unary.f32(i32 25, float %2047)  ; Rsqrt(value)
  br i1 %2046, label %2056, label %2049

; <label>:2049                                    ; preds = %2029
  %2050 = fmul fast float %2048, %146
  %2051 = fmul fast float %2048, %147
  %2052 = fmul fast float %2048, %148
  %2053 = fsub fast float -0.000000e+00, %2050
  %2054 = fsub fast float -0.000000e+00, %2051
  %2055 = fsub fast float -0.000000e+00, %2052
  br label %2224

; <label>:2056                                    ; preds = %2029
  %2057 = fmul fast float %146, %2048
  %2058 = fsub fast float -0.000000e+00, %2057
  %2059 = fmul fast float %147, %2048
  %2060 = fsub fast float -0.000000e+00, %2059
  %2061 = fmul fast float %148, %2048
  %2062 = fsub fast float -0.000000e+00, %2061
  %2063 = call float @dx.op.dot3.f32(i32 55, float %2058, float %2060, float %2062, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %2064 = fmul fast float %2045, 2.500000e+00
  %2065 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  %2066 = fmul fast float %2045, 0x4013FFFFE0000000
  %2067 = fadd fast float %2066, 0xBFFFFFFFE0000000
  %2068 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2069 = fmul fast float %2045, 0x4004000020000000
  %2070 = fadd fast float %2069, 0xBFF8000040000000
  %2071 = call float @dx.op.unary.f32(i32 7, float %2070)  ; Saturate(value)
  %2072 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2073 = fmul fast float %1631, 1.000000e+01
  %2074 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2075 = fmul fast float %2074, 2.000000e+00
  %2076 = fsub fast float 3.000000e+00, %2075
  %2077 = fmul fast float %2074, %2074
  %2078 = fmul fast float %2077, %2076
  %2079 = fsub fast float 1.000000e+00, %2078
  %2080 = fsub fast float 0x3FE3333340000000, %1652
  %2081 = fmul fast float %2080, 0x400AAAAAA0000000
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = fmul fast float %2079, %2082
  %2084 = fmul fast float %1667, 0x3FEA2B8620000000
  %2085 = fmul fast float %1668, 0x3FEA2B8620000000
  %2086 = fmul fast float %1669, 0x3FEA2B8620000000
  %2087 = fadd fast float %2084, 0x3FC81DFBA0000000
  %2088 = fmul fast float %2087, %1667
  %2089 = fadd fast float %2088, 0x3F910E6020000000
  %2090 = fadd fast float %2085, 0x3FC81DFBA0000000
  %2091 = fmul fast float %2090, %1668
  %2092 = fadd fast float %2091, 0x3F910E6020000000
  %2093 = fadd fast float %2086, 0x3FC81DFBA0000000
  %2094 = fmul fast float %2093, %1669
  %2095 = fadd fast float %2094, 0x3F910E6020000000
  %2096 = call float @dx.op.unary.f32(i32 7, float %2089)  ; Saturate(value)
  %2097 = call float @dx.op.unary.f32(i32 7, float %2092)  ; Saturate(value)
  %2098 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2099 = fsub fast float %2096, %1667
  %2100 = fsub fast float %2097, %1668
  %2101 = fsub fast float %2098, %1669
  %2102 = fmul fast float %2099, %2072
  %2103 = fmul fast float %2102, %2083
  %2104 = fmul fast float %2100, %2072
  %2105 = fmul fast float %2104, %2083
  %2106 = fmul fast float %2101, %2072
  %2107 = fmul fast float %2106, %2083
  %2108 = fadd fast float %2103, %1667
  %2109 = fadd fast float %2105, %1668
  %2110 = fadd fast float %2107, %1669
  %2111 = fmul fast float %1612, %1612
  %2112 = fmul fast float %2111, %2111
  %2113 = fadd fast float %2068, 1.000000e+00
  %2114 = fsub fast float %2113, %2083
  %2115 = call float @dx.op.unary.f32(i32 7, float %2114)  ; Saturate(value)
  %2116 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2117 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  %2118 = fsub fast float 1.000000e+00, %2112
  %2119 = call float @dx.op.binary.f32(i32 36, float %2115, float %2118)  ; FMin(a,b)
  %2120 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2121 = call float @dx.op.binary.f32(i32 35, float %2119, float %2120)  ; FMax(a,b)
  %2122 = fadd fast float %2117, 0xBFE4CCCCC0000000
  %2123 = fmul fast float %2122, 0x4006DB6DA0000000
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2125 = fmul fast float %2124, 2.000000e+00
  %2126 = fsub fast float 3.000000e+00, %2125
  %2127 = bitcast float %1649 to i32
  %2128 = ashr i32 %2127, 1
  %2129 = add nsw i32 %2128, 532487669
  %2130 = bitcast i32 %2129 to float
  %2131 = fsub fast float 1.000000e+00, %2130
  %2132 = bitcast float %2131 to i32
  %2133 = sub nsw i32 2129859010, %2132
  %2134 = bitcast i32 %2133 to float
  %2135 = fmul fast float %2134, 2.000000e+00
  %2136 = bitcast float %1650 to i32
  %2137 = ashr i32 %2136, 1
  %2138 = add nsw i32 %2137, 532487669
  %2139 = bitcast i32 %2138 to float
  %2140 = fsub fast float 1.000000e+00, %2139
  %2141 = bitcast float %2140 to i32
  %2142 = sub nsw i32 2129859010, %2141
  %2143 = bitcast i32 %2142 to float
  %2144 = fmul fast float %2143, 2.000000e+00
  %2145 = bitcast float %1651 to i32
  %2146 = ashr i32 %2145, 1
  %2147 = add nsw i32 %2146, 532487669
  %2148 = bitcast i32 %2147 to float
  %2149 = fsub fast float 1.000000e+00, %2148
  %2150 = bitcast float %2149 to i32
  %2151 = sub nsw i32 2129859010, %2150
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2152, 2.000000e+00
  %2154 = fsub fast float 0x4002A9FBE0000000, %2135
  %2155 = fadd fast float %2135, 0x3FD54FDF00000000
  %2156 = bitcast float %2155 to i32
  %2157 = sub nsw i32 2129859010, %2156
  %2158 = bitcast i32 %2157 to float
  %2159 = fmul fast float %2158, %2154
  %2160 = fmul fast float %2159, %2159
  %2161 = fsub fast float 0x4002A9FBE0000000, %2144
  %2162 = fadd fast float %2144, 0x3FD54FDF00000000
  %2163 = bitcast float %2162 to i32
  %2164 = sub nsw i32 2129859010, %2163
  %2165 = bitcast i32 %2164 to float
  %2166 = fmul fast float %2165, %2161
  %2167 = fmul fast float %2166, %2166
  %2168 = fsub fast float 0x4002A9FBE0000000, %2153
  %2169 = fadd fast float %2153, 0x3FD54FDF00000000
  %2170 = bitcast float %2169 to i32
  %2171 = sub nsw i32 2129859010, %2170
  %2172 = bitcast i32 %2171 to float
  %2173 = fmul fast float %2172, %2168
  %2174 = fmul fast float %2173, %2173
  %2175 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2160)  ; FMax(a,b)
  %2176 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2167)  ; FMax(a,b)
  %2177 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2174)  ; FMax(a,b)
  %2178 = fsub fast float 1.000000e+00, %2063
  %2179 = fadd fast float %2178, %2079
  %2180 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2181 = fsub fast float 1.000000e+00, %2043
  %2182 = fmul fast float %2121, %2181
  %2183 = fmul fast float %2124, %2124
  %2184 = fmul fast float %2183, %2182
  %2185 = fmul fast float %2184, %2126
  %2186 = fmul fast float %2181, 0xBFE99999A0000000
  %2187 = fmul fast float %2186, %2072
  %2188 = fmul fast float %2187, %2083
  %2189 = fadd fast float %2188, 1.000000e+00
  %2190 = fadd fast float %1652, -1.000000e+00
  %2191 = fmul fast float %2189, %2190
  %2192 = fadd fast float %2191, 1.000000e+00
  %2193 = fsub fast float %2175, %1649
  %2194 = fsub fast float %2176, %1650
  %2195 = fsub fast float %2177, %1651
  %2196 = fmul fast float %2185, %2193
  %2197 = fmul fast float %2185, %2194
  %2198 = fmul fast float %2185, %2195
  %2199 = fadd fast float %2196, %1649
  %2200 = fadd fast float %2197, %1650
  %2201 = fadd fast float %2198, %1651
  %2202 = fsub fast float %76, %1628
  %2203 = fsub fast float %77, %1629
  %2204 = fsub fast float %78, %1630
  %2205 = fmul fast float %2185, %2202
  %2206 = fmul fast float %2185, %2203
  %2207 = fmul fast float %2185, %2204
  %2208 = fadd fast float %2205, %1628
  %2209 = fadd fast float %2206, %1629
  %2210 = fadd fast float %2207, %1630
  %2211 = fmul fast float %2185, %2180
  %2212 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2213 = fsub fast float 1.000000e+00, %2212
  %2214 = fmul fast float %2211, %2213
  %2215 = fadd fast float %2214, %2212
  %2216 = fsub fast float 1.000000e+00, %1612
  %2217 = fmul fast float %2185, %2216
  %2218 = fadd fast float %2217, %1612
  %2219 = call float @dx.op.dot3.f32(i32 55, float %2208, float %2209, float %2210, float %2208, float %2209, float %2210)  ; Dot3(ax,ay,az,bx,by,bz)
  %2220 = call float @dx.op.unary.f32(i32 25, float %2219)  ; Rsqrt(value)
  %2221 = fmul fast float %2208, %2220
  %2222 = fmul fast float %2209, %2220
  %2223 = fmul fast float %2210, %2220
  br label %2224

; <label>:2224                                    ; preds = %2056, %2049
  %2225 = phi float [ %2055, %2049 ], [ %2062, %2056 ]
  %2226 = phi float [ %2054, %2049 ], [ %2060, %2056 ]
  %2227 = phi float [ %2053, %2049 ], [ %2058, %2056 ]
  %2228 = phi float [ %2052, %2049 ], [ %2061, %2056 ]
  %2229 = phi float [ %2051, %2049 ], [ %2059, %2056 ]
  %2230 = phi float [ %2050, %2049 ], [ %2057, %2056 ]
  %2231 = phi float [ %1667, %2049 ], [ %2108, %2056 ]
  %2232 = phi float [ %1668, %2049 ], [ %2109, %2056 ]
  %2233 = phi float [ %1669, %2049 ], [ %2110, %2056 ]
  %2234 = phi float [ %1628, %2049 ], [ %2221, %2056 ]
  %2235 = phi float [ %1629, %2049 ], [ %2222, %2056 ]
  %2236 = phi float [ %1630, %2049 ], [ %2223, %2056 ]
  %2237 = phi float [ %1649, %2049 ], [ %2199, %2056 ]
  %2238 = phi float [ %1650, %2049 ], [ %2200, %2056 ]
  %2239 = phi float [ %1651, %2049 ], [ %2201, %2056 ]
  %2240 = phi float [ %1652, %2049 ], [ %2215, %2056 ]
  %2241 = phi float [ %1612, %2049 ], [ %2218, %2056 ]
  %2242 = fsub fast float -0.000000e+00, %148
  %2243 = select i1 %237, float 0.000000e+00, float %2239
  %2244 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2235, float %2236, float %2227, float %2226, float %2225)  ; Dot3(ax,ay,az,bx,by,bz)
  %2245 = call float @dx.op.unary.f32(i32 7, float %2244)  ; Saturate(value)
  %2246 = call float @dx.op.dot3.f32(i32 55, float %2230, float %2229, float %2228, float %2234, float %2235, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %2247 = fmul fast float %2246, 2.000000e+00
  %2248 = fmul fast float %2247, %2234
  %2249 = fmul fast float %2247, %2235
  %2250 = fmul fast float %2247, %2236
  %2251 = fsub fast float %2230, %2248
  %2252 = fsub fast float %2229, %2249
  %2253 = fsub fast float %2228, %2250
  %2254 = call float @dx.op.binary.f32(i32 36, float %2241, float 1.000000e+00)  ; FMin(a,b)
  %2255 = fsub fast float 1.000000e+00, %2254
  %2256 = bitcast float %2255 to i32
  %2257 = ashr i32 %2256, 1
  %2258 = add nsw i32 %2257, 532487669
  %2259 = bitcast i32 %2258 to float
  %2260 = fsub fast float 1.000000e+00, %2240
  %2261 = call float @dx.op.binary.f32(i32 35, float %2260, float 0x3F847AE140000000)  ; FMax(a,b)
  %2262 = fmul fast float %2261, %2261
  %2263 = fmul fast float %2262, %2262
  %2264 = call float @dx.op.unary.f32(i32 7, float %2245)  ; Saturate(value)
  %2265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2259, float %2263, float %2264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2266 = extractvalue %dx.types.ResRet.f32 %2265, 0
  %2267 = fsub fast float 1.000000e+00, %2241
  %2268 = bitcast float %2267 to i32
  %2269 = sub nsw i32 2129859010, %2268
  %2270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2271 = extractvalue %dx.types.CBufRet.f32 %2270, 0
  %2272 = extractvalue %dx.types.CBufRet.f32 %2270, 1
  %2273 = fadd fast float %2271, %146
  %2274 = fadd fast float %2272, %147
  %2275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.i32 %2275, 0
  %2277 = icmp eq i32 %2276, 1
  br i1 %2277, label %2278, label %2313

; <label>:2278                                    ; preds = %2224
  %2279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2280 = extractvalue %dx.types.CBufRet.f32 %2279, 0
  %2281 = extractvalue %dx.types.CBufRet.f32 %2279, 1
  %2282 = fsub fast float %2273, %2280
  %2283 = fsub fast float %2274, %2281
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.CBufRet.f32 %2284, 1
  %2287 = fmul fast float %2282, %2285
  %2288 = fmul fast float %2283, %2286
  %2289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2287, float %2288, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2290 = extractvalue %dx.types.ResRet.f32 %2289, 0
  %2291 = fcmp fast ogt float %2290, 0.000000e+00
  %2292 = extractvalue %dx.types.CBufRet.i32 %2275, 3
  %2293 = icmp ne i32 %2292, 0
  %2294 = and i1 %2291, %2293
  br i1 %2294, label %2295, label %2313, !dx.controlflow.hints !104

; <label>:2295                                    ; preds = %2278
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2299 = fsub fast float %2273, %2297
  %2300 = fsub fast float %2274, %2298
  %2301 = fmul fast float %2299, %2299
  %2302 = fmul fast float %2300, %2300
  %2303 = fadd fast float %2301, %2302
  %2304 = uitofp i32 %2292 to float
  %2305 = fmul fast float %2304, %2304
  %2306 = fcmp fast ogt float %2303, %2305
  br i1 %2306, label %2313, label %2307

; <label>:2307                                    ; preds = %2295
  %2308 = call float @dx.op.unary.f32(i32 24, float %2303)  ; Sqrt(value)
  %2309 = fsub fast float %2304, %2308
  %2310 = fmul fast float %2309, 0x3F75555560000000
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = call float @dx.op.binary.f32(i32 36, float %2311, float %2290)  ; FMin(a,b)
  br label %2313

; <label>:2313                                    ; preds = %2307, %2295, %2278, %2224
  %2314 = phi float [ 1.000000e+00, %2224 ], [ %2312, %2307 ], [ %2290, %2278 ], [ 0.000000e+00, %2295 ]
  %2315 = fcmp fast ogt float %2314, 0.000000e+00
  br i1 %2315, label %2316, label %2415, !dx.controlflow.hints !105

; <label>:2316                                    ; preds = %2313
  %2317 = fadd fast float %177, 5.000000e-01
  %2318 = call float @dx.op.unary.f32(i32 27, float %2317)  ; Round_ni(value)
  %2319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %175, float %176, float %2318, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.ResRet.f32 %2319, 1
  %2322 = extractvalue %dx.types.ResRet.f32 %2319, 2
  %2323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2324 = extractvalue %dx.types.CBufRet.f32 %2323, 3
  %2325 = fmul fast float %2324, %2320
  %2326 = fmul fast float %2324, %2321
  %2327 = fmul fast float %2324, %2322
  %2328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %175, float %176, float %2318, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2329 = extractvalue %dx.types.ResRet.f32 %2328, 0
  %2330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %175, float %176, float %2318, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2331 = extractvalue %dx.types.ResRet.f32 %2330, 0
  %2332 = extractvalue %dx.types.ResRet.f32 %2330, 1
  %2333 = fmul fast float %2331, 2.000000e+00
  %2334 = fmul fast float %2332, 2.000000e+00
  %2335 = fadd fast float %2333, -1.000000e+00
  %2336 = fadd fast float %2334, -1.000000e+00
  %2337 = fadd fast float %2335, %2336
  %2338 = fmul fast float %2337, 5.000000e-01
  %2339 = fsub fast float %2335, %2336
  %2340 = fmul fast float %2339, 5.000000e-01
  %2341 = call float @dx.op.unary.f32(i32 6, float %2338)  ; FAbs(value)
  %2342 = fsub fast float 1.000000e+00, %2341
  %2343 = call float @dx.op.unary.f32(i32 6, float %2340)  ; FAbs(value)
  %2344 = fsub fast float %2342, %2343
  %2345 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2344)  ; FMax(a,b)
  %2346 = call float @dx.op.dot3.f32(i32 55, float %2338, float %2340, float %2345, float %2338, float %2340, float %2345)  ; Dot3(ax,ay,az,bx,by,bz)
  %2347 = bitcast float %2346 to i32
  %2348 = ashr i32 %2347, 1
  %2349 = sub nsw i32 1597250115, %2348
  %2350 = bitcast i32 %2349 to float
  %2351 = fmul fast float %2350, %2338
  %2352 = fmul fast float %2350, %2340
  %2353 = fmul fast float %2350, %2345
  %2354 = fsub fast float 1.000000e+00, %2329
  %2355 = fdiv fast float %2354, %2353
  %2356 = fmul fast float %2353, %76
  %2357 = fmul fast float %2353, %77
  %2358 = fmul fast float %2353, %78
  %2359 = fmul fast float %2351, %72
  %2360 = fmul fast float %2351, %73
  %2361 = fmul fast float %2351, %74
  %2362 = fadd fast float %2356, %2359
  %2363 = fadd fast float %2357, %2360
  %2364 = fadd fast float %2358, %2361
  %2365 = fmul fast float %2352, %110
  %2366 = fmul fast float %2352, %111
  %2367 = fmul fast float %2352, %112
  %2368 = fadd fast float %2362, %2365
  %2369 = fadd fast float %2363, %2366
  %2370 = fadd fast float %2364, %2367
  %2371 = call float @dx.op.dot3.f32(i32 55, float %2368, float %2369, float %2370, float %2368, float %2369, float %2370)  ; Dot3(ax,ay,az,bx,by,bz)
  %2372 = call float @dx.op.unary.f32(i32 25, float %2371)  ; Rsqrt(value)
  %2373 = fmul fast float %2368, %2372
  %2374 = fmul fast float %2369, %2372
  %2375 = fmul fast float %2370, %2372
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2235, float %2236, float %2234, float %2235, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2378 = fmul fast float %2377, 5.000000e-01
  %2379 = fadd fast float %2378, 5.000000e-01
  %2380 = fmul fast float %2379, %2329
  %2381 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2235, float %2236, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %2382 = call float @dx.op.unary.f32(i32 7, float %2381)  ; Saturate(value)
  %2383 = fmul fast float %2382, %2355
  %2384 = fadd fast float %2380, %2383
  %2385 = fsub fast float 5.000000e-01, %2378
  %2386 = fmul fast float %2385, %2231
  %2387 = fmul fast float %2385, %2232
  %2388 = fmul fast float %2385, %2233
  %2389 = fadd fast float %2384, %2386
  %2390 = fmul fast float %2389, %2325
  %2391 = fadd fast float %2384, %2387
  %2392 = fmul fast float %2391, %2326
  %2393 = fadd fast float %2384, %2388
  %2394 = fmul fast float %2393, %2327
  %2395 = call float @dx.op.dot3.f32(i32 55, float %2251, float %2252, float %2253, float %2234, float %2235, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2397 = fmul fast float %2396, 5.000000e-01
  %2398 = fadd fast float %2397, 5.000000e-01
  %2399 = fmul fast float %2398, %2329
  %2400 = call float @dx.op.dot3.f32(i32 55, float %2251, float %2252, float %2253, float %2373, float %2374, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %2401 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  %2402 = fmul fast float %2401, %2355
  %2403 = fadd fast float %2399, %2402
  %2404 = fsub fast float 5.000000e-01, %2397
  %2405 = fmul fast float %2404, %2231
  %2406 = fmul fast float %2404, %2232
  %2407 = fmul fast float %2404, %2233
  %2408 = fadd fast float %2403, %2405
  %2409 = fmul fast float %2408, %2325
  %2410 = fadd fast float %2403, %2406
  %2411 = fmul fast float %2410, %2326
  %2412 = fadd fast float %2403, %2407
  %2413 = fmul fast float %2412, %2327
  %2414 = call float @dx.op.dot3.f32(i32 55, float %2325, float %2326, float %2327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2415

; <label>:2415                                    ; preds = %2316, %2313
  %2416 = phi float [ %2414, %2316 ], [ 0.000000e+00, %2313 ]
  %2417 = phi float [ %2409, %2316 ], [ 0.000000e+00, %2313 ]
  %2418 = phi float [ %2411, %2316 ], [ 0.000000e+00, %2313 ]
  %2419 = phi float [ %2413, %2316 ], [ 0.000000e+00, %2313 ]
  %2420 = phi float [ %2390, %2316 ], [ 0.000000e+00, %2313 ]
  %2421 = phi float [ %2392, %2316 ], [ 0.000000e+00, %2313 ]
  %2422 = phi float [ %2394, %2316 ], [ 0.000000e+00, %2313 ]
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 0
  %2425 = fcmp fast ogt float %2424, 0.000000e+00
  %2426 = and i1 %2315, %2425
  br i1 %2426, label %2427, label %2631, !dx.controlflow.hints !106

; <label>:2427                                    ; preds = %2415
  %2428 = extractvalue %dx.types.CBufRet.f32 %2270, 2
  %2429 = fadd fast float %2428, %148
  %2430 = fmul fast float %2234, 3.200000e+01
  %2431 = fmul fast float %2235, 3.200000e+01
  %2432 = fadd fast float %2273, %2430
  %2433 = fadd fast float %2274, %2431
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.CBufRet.f32 %2434, 1
  %2437 = fsub fast float %2432, %2435
  %2438 = fsub fast float %2433, %2436
  %2439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.CBufRet.f32 %2439, 1
  %2442 = fmul fast float %2437, %2440
  %2443 = fmul fast float %2438, %2441
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.CBufRet.f32 %2444, 1
  %2447 = fsub fast float %2273, %2445
  %2448 = fsub fast float %2274, %2446
  %2449 = fmul fast float %2447, %2447
  %2450 = fmul fast float %2448, %2448
  %2451 = fadd fast float %2449, %2450
  %2452 = call float @dx.op.unary.f32(i32 24, float %2451)  ; Sqrt(value)
  %2453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.CBufRet.f32 %2453, 1
  %2456 = fsub fast float %2452, %2454
  %2457 = fdiv fast float %2456, %2455
  %2458 = call float @dx.op.unary.f32(i32 7, float %2457)  ; Saturate(value)
  %2459 = fmul fast float %2458, 2.000000e+00
  %2460 = fsub fast float 3.000000e+00, %2459
  %2461 = fmul fast float %2458, %2458
  %2462 = fmul fast float %2461, %2460
  %2463 = fcmp fast oge float %2442, 0.000000e+00
  %2464 = fcmp fast ole float %2442, 1.000000e+00
  %2465 = and i1 %2464, %2463
  %2466 = fcmp fast oge float %2443, 0.000000e+00
  %2467 = and i1 %2466, %2465
  %2468 = fcmp fast ole float %2443, 1.000000e+00
  %2469 = and i1 %2468, %2467
  %2470 = fcmp fast ogt float %2462, 0.000000e+00
  %2471 = and i1 %2470, %2469
  br i1 %2471, label %2472, label %2595, !dx.controlflow.hints !107

; <label>:2472                                    ; preds = %2427
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 2
  %2475 = extractvalue %dx.types.CBufRet.f32 %2473, 3
  %2476 = fmul fast float %2474, %2442
  %2477 = fmul fast float %2475, %2443
  %2478 = call float @dx.op.unary.f32(i32 27, float %2476)  ; Round_ni(value)
  %2479 = call float @dx.op.unary.f32(i32 27, float %2477)  ; Round_ni(value)
  %2480 = fptosi float %2478 to i32
  %2481 = fptosi float %2479 to i32
  %2482 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2480, i32 %2481, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = lshr i32 %2483, 16
  %2485 = icmp eq i32 %2484, 65535
  br i1 %2485, label %2595, label %2486

; <label>:2486                                    ; preds = %2472
  %2487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.f32 %2487, 0
  %2489 = fmul fast float %2488, %2442
  %2490 = extractvalue %dx.types.CBufRet.f32 %2487, 1
  %2491 = fadd fast float %2489, %2490
  %2492 = extractvalue %dx.types.CBufRet.f32 %2487, 2
  %2493 = fmul fast float %2492, %2443
  %2494 = extractvalue %dx.types.CBufRet.f32 %2487, 3
  %2495 = fadd fast float %2493, %2494
  %2496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2491, float %2495, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2497 = extractvalue %dx.types.ResRet.f32 %2496, 0
  %2498 = extractvalue %dx.types.ResRet.f32 %2496, 1
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 1
  %2501 = extractvalue %dx.types.CBufRet.f32 %2499, 0
  %2502 = fsub fast float %2500, %2501
  %2503 = fmul fast float %2502, %2497
  %2504 = fadd fast float %2503, %2501
  %2505 = extractvalue %dx.types.CBufRet.f32 %2499, 3
  %2506 = extractvalue %dx.types.CBufRet.f32 %2499, 2
  %2507 = fsub fast float %2505, %2506
  %2508 = fmul fast float %2507, %2498
  %2509 = fadd fast float %2508, %2506
  %2510 = fsub fast float %2429, %2504
  %2511 = fsub fast float %2509, %2504
  %2512 = fdiv fast float %2510, %2511
  %2513 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  %2514 = extractvalue %dx.types.CBufRet.f32 %2423, 1
  %2515 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2516 = extractvalue %dx.types.CBufRet.f32 %2473, 1
  %2517 = fmul fast float %2515, %2442
  %2518 = fmul fast float %2516, %2443
  %2519 = fmul fast float %2517, 1.250000e-01
  %2520 = fmul fast float %2518, 1.250000e-01
  %2521 = call float @dx.op.unary.f32(i32 27, float %2519)  ; Round_ni(value)
  %2522 = call float @dx.op.unary.f32(i32 27, float %2520)  ; Round_ni(value)
  %2523 = fmul fast float %2521, 8.000000e+00
  %2524 = fmul fast float %2522, 8.000000e+00
  %2525 = fsub fast float %2517, %2523
  %2526 = fsub fast float %2518, %2524
  %2527 = fadd fast float %2525, 5.000000e-01
  %2528 = fadd fast float %2526, 5.000000e-01
  %2529 = and i32 %2484, 255
  %2530 = lshr i32 %2483, 24
  %2531 = mul nuw nsw i32 %2529, 9
  %2532 = uitofp i32 %2531 to float
  %2533 = mul nuw nsw i32 %2530, 9
  %2534 = uitofp i32 %2533 to float
  %2535 = fadd fast float %2527, %2532
  %2536 = fadd fast float %2528, %2534
  %2537 = fdiv fast float %2535, %2424
  %2538 = fdiv fast float %2536, %2514
  %2539 = fmul fast float %2513, 4.375000e-01
  %2540 = fadd fast float %2539, 3.125000e-02
  %2541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2537, float %2538, float %2540, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = extractvalue %dx.types.ResRet.f32 %2541, 1
  %2544 = extractvalue %dx.types.ResRet.f32 %2541, 2
  %2545 = fadd fast float %2539, 5.312500e-01
  %2546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2537, float %2538, float %2545, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2547 = extractvalue %dx.types.ResRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.ResRet.f32 %2546, 1
  %2549 = extractvalue %dx.types.ResRet.f32 %2546, 2
  %2550 = fmul fast float %2547, 2.000000e+00
  %2551 = fmul fast float %2548, 2.000000e+00
  %2552 = fmul fast float %2549, 2.000000e+00
  %2553 = fadd fast float %2550, -1.000000e+00
  %2554 = fadd fast float %2551, -1.000000e+00
  %2555 = fadd fast float %2552, -1.000000e+00
  %2556 = fmul fast float %2553, %2553
  %2557 = fmul fast float %2554, %2554
  %2558 = fadd fast float %2556, %2557
  %2559 = fmul fast float %2555, %2555
  %2560 = fadd fast float %2558, %2559
  %2561 = call float @dx.op.unary.f32(i32 24, float %2560)  ; Sqrt(value)
  %2562 = fcmp fast ogt float %2561, 0.000000e+00
  br i1 %2562, label %2563, label %2567

; <label>:2563                                    ; preds = %2486
  %2564 = fdiv fast float %2553, %2561
  %2565 = fdiv fast float %2554, %2561
  %2566 = fdiv fast float %2555, %2561
  br label %2567

; <label>:2567                                    ; preds = %2563, %2486
  %2568 = phi float [ %2564, %2563 ], [ 0.000000e+00, %2486 ]
  %2569 = phi float [ %2565, %2563 ], [ 0.000000e+00, %2486 ]
  %2570 = phi float [ %2566, %2563 ], [ 0.000000e+00, %2486 ]
  %2571 = call float @dx.op.dot3.f32(i32 55, float %2568, float %2569, float %2570, float %2234, float %2235, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %2572 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2571)  ; FMax(a,b)
  %2573 = fmul fast float %2572, 0x400C5BF8A0000000
  %2574 = fmul fast float %2542, %2462
  %2575 = fmul fast float %2574, %2573
  %2576 = fmul fast float %2543, %2462
  %2577 = fmul fast float %2576, %2573
  %2578 = fmul fast float %2544, %2462
  %2579 = fmul fast float %2578, %2573
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 3
  %2582 = fmul fast float %2575, %2581
  %2583 = fmul fast float %2577, %2581
  %2584 = fmul fast float %2579, %2581
  %2585 = fcmp fast ogt float %2429, %2509
  br i1 %2585, label %2586, label %2595

; <label>:2586                                    ; preds = %2567
  %2587 = fmul fast float %2511, 0x3FC24924A0000000
  %2588 = fsub fast float %2429, %2509
  %2589 = fdiv fast float %2588, %2587
  %2590 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  %2591 = fsub fast float 1.000000e+00, %2590
  %2592 = fmul fast float %2591, %2582
  %2593 = fmul fast float %2591, %2583
  %2594 = fmul fast float %2591, %2584
  br label %2595

; <label>:2595                                    ; preds = %2586, %2567, %2472, %2427
  %2596 = phi float [ %2594, %2586 ], [ %2584, %2567 ], [ 0.000000e+00, %2472 ], [ 0.000000e+00, %2427 ]
  %2597 = phi float [ %2593, %2586 ], [ %2583, %2567 ], [ 0.000000e+00, %2472 ], [ 0.000000e+00, %2427 ]
  %2598 = phi float [ %2592, %2586 ], [ %2582, %2567 ], [ 0.000000e+00, %2472 ], [ 0.000000e+00, %2427 ]
  %2599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2598)  ; FMax(a,b)
  %2600 = fmul fast float %2599, 0x3FD20DD760000000
  %2601 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2251, float %2252, float %2253)  ; Dot3(ax,ay,az,bx,by,bz)
  %2602 = fmul fast float %2601, 0x3FDF454380000000
  %2603 = fmul fast float %2601, %2601
  %2604 = fmul fast float %2603, 0x3FEE471020000000
  %2605 = fadd fast float %2604, 0xBFD42F6020000000
  %2606 = call float @dx.op.dot3.f32(i32 55, float %2599, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2602, float %2605)  ; Dot3(ax,ay,az,bx,by,bz)
  %2607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2597)  ; FMax(a,b)
  %2608 = fmul fast float %2607, 0x3FD20DD760000000
  %2609 = call float @dx.op.dot3.f32(i32 55, float %2607, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2602, float %2605)  ; Dot3(ax,ay,az,bx,by,bz)
  %2610 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2596)  ; FMax(a,b)
  %2611 = fmul fast float %2610, 0x3FD20DD760000000
  %2612 = call float @dx.op.dot3.f32(i32 55, float %2610, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2602, float %2605)  ; Dot3(ax,ay,az,bx,by,bz)
  %2613 = call float @dx.op.binary.f32(i32 35, float %2600, float 0.000000e+00)  ; FMax(a,b)
  %2614 = call float @dx.op.binary.f32(i32 35, float %2608, float 0.000000e+00)  ; FMax(a,b)
  %2615 = call float @dx.op.binary.f32(i32 35, float %2611, float 0.000000e+00)  ; FMax(a,b)
  %2616 = call float @dx.op.binary.f32(i32 35, float %2606, float 0.000000e+00)  ; FMax(a,b)
  %2617 = call float @dx.op.binary.f32(i32 35, float %2609, float 0.000000e+00)  ; FMax(a,b)
  %2618 = call float @dx.op.binary.f32(i32 35, float %2612, float 0.000000e+00)  ; FMax(a,b)
  %2619 = fmul fast float %2613, %2314
  %2620 = fmul fast float %2614, %2314
  %2621 = fmul fast float %2615, %2314
  %2622 = fadd fast float %2619, %2420
  %2623 = fadd fast float %2620, %2421
  %2624 = fadd fast float %2621, %2422
  %2625 = fmul fast float %2616, %2314
  %2626 = fmul fast float %2617, %2314
  %2627 = fmul fast float %2618, %2314
  %2628 = fadd fast float %2625, %2417
  %2629 = fadd fast float %2626, %2418
  %2630 = fadd fast float %2627, %2419
  br label %2631

; <label>:2631                                    ; preds = %2595, %2415
  %2632 = phi float [ %2628, %2595 ], [ %2417, %2415 ]
  %2633 = phi float [ %2629, %2595 ], [ %2418, %2415 ]
  %2634 = phi float [ %2630, %2595 ], [ %2419, %2415 ]
  %2635 = phi float [ %2622, %2595 ], [ %2420, %2415 ]
  %2636 = phi float [ %2623, %2595 ], [ %2421, %2415 ]
  %2637 = phi float [ %2624, %2595 ], [ %2422, %2415 ]
  %2638 = fcmp fast olt float %2314, 1.000000e+00
  br i1 %2638, label %2639, label %3462, !dx.controlflow.hints !108

; <label>:2639                                    ; preds = %2631
  %2640 = extractvalue %dx.types.CBufRet.f32 %2270, 2
  %2641 = fadd fast float %2640, %148
  %2642 = fmul fast float %2234, 3.200000e+01
  %2643 = fmul fast float %2235, 3.200000e+01
  %2644 = fadd fast float %2273, %2642
  %2645 = fadd fast float %2274, %2643
  %2646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2647 = extractvalue %dx.types.CBufRet.f32 %2646, 0
  %2648 = extractvalue %dx.types.CBufRet.f32 %2646, 1
  %2649 = fsub fast float %2644, %2647
  %2650 = fsub fast float %2645, %2648
  %2651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2652 = extractvalue %dx.types.CBufRet.f32 %2651, 0
  %2653 = extractvalue %dx.types.CBufRet.f32 %2651, 1
  %2654 = fmul fast float %2649, %2652
  %2655 = fmul fast float %2650, %2653
  %2656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2656, 0
  %2658 = fmul fast float %2654, %2657
  %2659 = extractvalue %dx.types.CBufRet.f32 %2656, 1
  %2660 = fadd fast float %2658, %2659
  %2661 = extractvalue %dx.types.CBufRet.f32 %2656, 2
  %2662 = fmul fast float %2661, %2655
  %2663 = extractvalue %dx.types.CBufRet.f32 %2656, 3
  %2664 = fadd fast float %2662, %2663
  %2665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2660, float %2664, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2666 = extractvalue %dx.types.ResRet.f32 %2665, 0
  %2667 = extractvalue %dx.types.ResRet.f32 %2665, 1
  %2668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2669 = extractvalue %dx.types.CBufRet.f32 %2668, 1
  %2670 = extractvalue %dx.types.CBufRet.f32 %2668, 0
  %2671 = fsub fast float %2669, %2670
  %2672 = fmul fast float %2671, %2666
  %2673 = fadd fast float %2672, %2670
  %2674 = extractvalue %dx.types.CBufRet.f32 %2668, 3
  %2675 = extractvalue %dx.types.CBufRet.f32 %2668, 2
  %2676 = fsub fast float %2674, %2675
  %2677 = fmul fast float %2676, %2667
  %2678 = fadd fast float %2677, %2675
  %2679 = fsub fast float %2641, %2673
  %2680 = fsub fast float %2678, %2673
  %2681 = fdiv fast float %2679, %2680
  %2682 = call float @dx.op.unary.f32(i32 7, float %2681)  ; Saturate(value)
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 0
  %2685 = fmul fast float %2684, %2682
  %2686 = extractvalue %dx.types.CBufRet.f32 %2683, 1
  %2687 = fadd fast float %2685, %2686
  %2688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2660, float %2664, float %2687, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2689 = extractvalue %dx.types.ResRet.f32 %2688, 0
  %2690 = extractvalue %dx.types.ResRet.f32 %2688, 1
  %2691 = extractvalue %dx.types.ResRet.f32 %2688, 2
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 0
  %2694 = extractvalue %dx.types.CBufRet.f32 %2692, 1
  %2695 = extractvalue %dx.types.CBufRet.f32 %2692, 2
  %2696 = fmul fast float %2693, %2689
  %2697 = fmul fast float %2694, %2690
  %2698 = fmul fast float %2695, %2691
  %2699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2699, 0
  %2701 = extractvalue %dx.types.CBufRet.f32 %2699, 1
  %2702 = extractvalue %dx.types.CBufRet.f32 %2699, 2
  %2703 = fadd fast float %2696, %2700
  %2704 = fadd fast float %2697, %2701
  %2705 = fadd fast float %2698, %2702
  %2706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2707 = extractvalue %dx.types.CBufRet.f32 %2706, 0
  %2708 = fmul fast float %2707, %2654
  %2709 = extractvalue %dx.types.CBufRet.f32 %2706, 1
  %2710 = fadd fast float %2708, %2709
  %2711 = extractvalue %dx.types.CBufRet.f32 %2706, 2
  %2712 = fmul fast float %2711, %2655
  %2713 = extractvalue %dx.types.CBufRet.f32 %2706, 3
  %2714 = fadd fast float %2712, %2713
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2718 = extractvalue %dx.types.CBufRet.f32 %2715, 2
  %2719 = extractvalue %dx.types.CBufRet.f32 %2715, 3
  %2720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2721 = extractvalue %dx.types.CBufRet.f32 %2720, 0
  %2722 = extractvalue %dx.types.CBufRet.f32 %2720, 1
  %2723 = extractvalue %dx.types.CBufRet.f32 %2720, 2
  %2724 = extractvalue %dx.types.CBufRet.f32 %2720, 3
  %2725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2710, float %2714, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2726 = extractvalue %dx.types.ResRet.f32 %2725, 0
  %2727 = extractvalue %dx.types.ResRet.f32 %2725, 1
  %2728 = extractvalue %dx.types.ResRet.f32 %2725, 2
  %2729 = extractvalue %dx.types.ResRet.f32 %2725, 3
  %2730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2710, float %2714, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = extractvalue %dx.types.ResRet.f32 %2730, 1
  %2733 = extractvalue %dx.types.ResRet.f32 %2730, 2
  %2734 = extractvalue %dx.types.ResRet.f32 %2730, 3
  %2735 = fmul fast float %2726, %2703
  %2736 = fmul fast float %2731, %2703
  %2737 = fmul fast float %2733, %2703
  %2738 = fmul fast float %2729, %2703
  %2739 = fadd fast float %2735, %2716
  %2740 = fadd fast float %2736, %2717
  %2741 = fadd fast float %2737, %2718
  %2742 = fadd fast float %2738, %2719
  %2743 = fmul fast float %2727, %2703
  %2744 = fmul fast float %2732, %2703
  %2745 = fadd fast float %2743, %2721
  %2746 = fadd fast float %2744, %2722
  %2747 = fmul fast float %2728, %2703
  %2748 = fmul fast float %2734, %2703
  %2749 = fadd fast float %2747, %2723
  %2750 = fadd fast float %2748, %2724
  %2751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2710, float %2714, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2752 = extractvalue %dx.types.ResRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.ResRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.ResRet.f32 %2751, 2
  %2755 = extractvalue %dx.types.ResRet.f32 %2751, 3
  %2756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2710, float %2714, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = extractvalue %dx.types.ResRet.f32 %2756, 3
  %2761 = fmul fast float %2752, %2704
  %2762 = fmul fast float %2757, %2704
  %2763 = fmul fast float %2759, %2704
  %2764 = fmul fast float %2755, %2704
  %2765 = fadd fast float %2739, %2761
  %2766 = fadd fast float %2740, %2762
  %2767 = fadd fast float %2741, %2763
  %2768 = fadd fast float %2742, %2764
  %2769 = fmul fast float %2753, %2704
  %2770 = fmul fast float %2758, %2704
  %2771 = fadd fast float %2745, %2769
  %2772 = fadd fast float %2746, %2770
  %2773 = fmul fast float %2754, %2704
  %2774 = fmul fast float %2760, %2704
  %2775 = fadd fast float %2749, %2773
  %2776 = fadd fast float %2750, %2774
  %2777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2710, float %2714, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2778 = extractvalue %dx.types.ResRet.f32 %2777, 0
  %2779 = extractvalue %dx.types.ResRet.f32 %2777, 1
  %2780 = extractvalue %dx.types.ResRet.f32 %2777, 2
  %2781 = extractvalue %dx.types.ResRet.f32 %2777, 3
  %2782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2710, float %2714, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2783 = extractvalue %dx.types.ResRet.f32 %2782, 0
  %2784 = extractvalue %dx.types.ResRet.f32 %2782, 1
  %2785 = extractvalue %dx.types.ResRet.f32 %2782, 2
  %2786 = extractvalue %dx.types.ResRet.f32 %2782, 3
  %2787 = fmul fast float %2778, %2705
  %2788 = fmul fast float %2783, %2705
  %2789 = fmul fast float %2785, %2705
  %2790 = fmul fast float %2781, %2705
  %2791 = fadd fast float %2765, %2787
  %2792 = fadd fast float %2766, %2788
  %2793 = fadd fast float %2767, %2789
  %2794 = fadd fast float %2768, %2790
  %2795 = fmul fast float %2779, %2705
  %2796 = fmul fast float %2784, %2705
  %2797 = fadd fast float %2771, %2795
  %2798 = fadd fast float %2772, %2796
  %2799 = fmul fast float %2780, %2705
  %2800 = fmul fast float %2786, %2705
  %2801 = fadd fast float %2775, %2799
  %2802 = fadd fast float %2776, %2800
  %2803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2804 = extractvalue %dx.types.CBufRet.f32 %2803, 0
  %2805 = fsub fast float %2273, %2804
  %2806 = fsub fast float %2647, %2273
  %2807 = call float @dx.op.binary.f32(i32 35, float %2806, float %2805)  ; FMax(a,b)
  %2808 = extractvalue %dx.types.CBufRet.f32 %2803, 1
  %2809 = fsub fast float %2274, %2808
  %2810 = fsub fast float %2648, %2274
  %2811 = call float @dx.op.binary.f32(i32 35, float %2810, float %2809)  ; FMax(a,b)
  %2812 = call float @dx.op.binary.f32(i32 35, float %2807, float %2811)  ; FMax(a,b)
  %2813 = extractvalue %dx.types.CBufRet.f32 %2651, 3
  %2814 = fmul fast float %2813, %2812
  %2815 = call float @dx.op.unary.f32(i32 7, float %2814)  ; Saturate(value)
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.CBufRet.f32 %2816, 1
  %2819 = extractvalue %dx.types.CBufRet.f32 %2816, 2
  %2820 = extractvalue %dx.types.CBufRet.f32 %2816, 3
  %2821 = fsub fast float %2817, %2791
  %2822 = fsub fast float %2818, %2792
  %2823 = fsub fast float %2819, %2793
  %2824 = fsub fast float %2820, %2794
  %2825 = fmul fast float %2821, %2815
  %2826 = fmul fast float %2822, %2815
  %2827 = fmul fast float %2823, %2815
  %2828 = fmul fast float %2824, %2815
  %2829 = fadd fast float %2825, %2791
  %2830 = fadd fast float %2826, %2792
  %2831 = fadd fast float %2827, %2793
  %2832 = fadd fast float %2828, %2794
  %2833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.CBufRet.f32 %2833, 1
  %2836 = fsub fast float %2834, %2797
  %2837 = fsub fast float %2835, %2798
  %2838 = fmul fast float %2836, %2815
  %2839 = fmul fast float %2837, %2815
  %2840 = fadd fast float %2838, %2797
  %2841 = fadd fast float %2839, %2798
  %2842 = extractvalue %dx.types.CBufRet.f32 %2833, 2
  %2843 = extractvalue %dx.types.CBufRet.f32 %2833, 3
  %2844 = fsub fast float %2842, %2801
  %2845 = fsub fast float %2843, %2802
  %2846 = fmul fast float %2844, %2815
  %2847 = fmul fast float %2845, %2815
  %2848 = fadd fast float %2846, %2801
  %2849 = fadd fast float %2847, %2802
  %2850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.f32 %2850, 0
  %2852 = fmul fast float %2851, %2829
  %2853 = fmul fast float %2851, %2830
  %2854 = fmul fast float %2851, %2831
  %2855 = fmul fast float %2851, %2832
  %2856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2857 = extractvalue %dx.types.CBufRet.f32 %2856, 0
  %2858 = fmul fast float %2857, %2840
  %2859 = fmul fast float %2857, %2841
  %2860 = fadd fast float %2858, %2852
  %2861 = fadd fast float %2859, %2854
  %2862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2863 = extractvalue %dx.types.CBufRet.f32 %2862, 0
  %2864 = fmul fast float %2863, %2848
  %2865 = fmul fast float %2863, %2849
  %2866 = fadd fast float %2860, %2864
  %2867 = fadd fast float %2861, %2865
  %2868 = extractvalue %dx.types.CBufRet.f32 %2850, 1
  %2869 = fmul fast float %2868, %2829
  %2870 = fmul fast float %2868, %2830
  %2871 = fmul fast float %2868, %2831
  %2872 = fmul fast float %2868, %2832
  %2873 = extractvalue %dx.types.CBufRet.f32 %2856, 1
  %2874 = fmul fast float %2873, %2840
  %2875 = fmul fast float %2873, %2841
  %2876 = fadd fast float %2874, %2869
  %2877 = fadd fast float %2875, %2871
  %2878 = extractvalue %dx.types.CBufRet.f32 %2862, 1
  %2879 = fmul fast float %2878, %2848
  %2880 = fmul fast float %2878, %2849
  %2881 = fadd fast float %2876, %2879
  %2882 = fadd fast float %2877, %2880
  %2883 = extractvalue %dx.types.CBufRet.f32 %2850, 2
  %2884 = fmul fast float %2883, %2829
  %2885 = fmul fast float %2883, %2830
  %2886 = fmul fast float %2883, %2831
  %2887 = fmul fast float %2883, %2832
  %2888 = extractvalue %dx.types.CBufRet.f32 %2856, 2
  %2889 = fmul fast float %2888, %2840
  %2890 = fmul fast float %2888, %2841
  %2891 = fadd fast float %2889, %2884
  %2892 = fadd fast float %2890, %2886
  %2893 = extractvalue %dx.types.CBufRet.f32 %2862, 2
  %2894 = fmul fast float %2893, %2848
  %2895 = fmul fast float %2893, %2849
  %2896 = fadd fast float %2891, %2894
  %2897 = fadd fast float %2892, %2895
  %2898 = fmul fast float %2885, %2885
  %2899 = fmul fast float %2897, %2897
  %2900 = fmul fast float %2887, %2887
  %2901 = fadd fast float %2900, %2898
  %2902 = fadd fast float %2901, %2899
  %2903 = call float @dx.op.unary.f32(i32 24, float %2902)  ; Sqrt(value)
  %2904 = fcmp fast ugt float %2903, 0.000000e+00
  br i1 %2904, label %2905, label %2920

; <label>:2905                                    ; preds = %2639
  %2906 = fsub fast float -0.000000e+00, %2887
  %2907 = fdiv fast float %2906, %2903
  %2908 = fsub fast float -0.000000e+00, %2885
  %2909 = fdiv fast float %2908, %2903
  %2910 = fdiv fast float %2897, %2903
  %2911 = fmul fast float %2896, 0x3FE279A760000000
  %2912 = fmul fast float %2909, %2885
  %2913 = fmul fast float %2910, %2897
  %2914 = fmul fast float %2907, %2887
  %2915 = fadd fast float %2912, %2914
  %2916 = fsub fast float %2915, %2913
  %2917 = call float @dx.op.unary.f32(i32 6, float %2916)  ; FAbs(value)
  %2918 = fadd fast float %2917, 0x3DDB7CDFE0000000
  %2919 = fdiv fast float %2911, %2918
  br label %2920

; <label>:2920                                    ; preds = %2905, %2639
  %2921 = phi float [ %2919, %2905 ], [ 1.000000e+00, %2639 ]
  %2922 = fmul fast float %2870, %2870
  %2923 = fmul fast float %2882, %2882
  %2924 = fmul fast float %2872, %2872
  %2925 = fadd fast float %2924, %2922
  %2926 = fadd fast float %2925, %2923
  %2927 = call float @dx.op.unary.f32(i32 24, float %2926)  ; Sqrt(value)
  %2928 = fcmp fast ugt float %2927, 0.000000e+00
  br i1 %2928, label %2929, label %2944

; <label>:2929                                    ; preds = %2920
  %2930 = fsub fast float -0.000000e+00, %2872
  %2931 = fdiv fast float %2930, %2927
  %2932 = fsub fast float -0.000000e+00, %2870
  %2933 = fdiv fast float %2932, %2927
  %2934 = fdiv fast float %2882, %2927
  %2935 = fmul fast float %2881, 0x3FE279A760000000
  %2936 = fmul fast float %2933, %2870
  %2937 = fmul fast float %2934, %2882
  %2938 = fmul fast float %2931, %2872
  %2939 = fadd fast float %2936, %2938
  %2940 = fsub fast float %2939, %2937
  %2941 = call float @dx.op.unary.f32(i32 6, float %2940)  ; FAbs(value)
  %2942 = fadd fast float %2941, 0x3DDB7CDFE0000000
  %2943 = fdiv fast float %2935, %2942
  br label %2944

; <label>:2944                                    ; preds = %2929, %2920
  %2945 = phi float [ %2943, %2929 ], [ 1.000000e+00, %2920 ]
  %2946 = call float @dx.op.binary.f32(i32 36, float %2945, float %2921)  ; FMin(a,b)
  %2947 = fmul fast float %2853, %2853
  %2948 = fmul fast float %2867, %2867
  %2949 = fmul fast float %2855, %2855
  %2950 = fadd fast float %2949, %2947
  %2951 = fadd fast float %2950, %2948
  %2952 = call float @dx.op.unary.f32(i32 24, float %2951)  ; Sqrt(value)
  %2953 = fcmp fast ugt float %2952, 0.000000e+00
  br i1 %2953, label %2954, label %2969

; <label>:2954                                    ; preds = %2944
  %2955 = fsub fast float -0.000000e+00, %2855
  %2956 = fdiv fast float %2955, %2952
  %2957 = fsub fast float -0.000000e+00, %2853
  %2958 = fdiv fast float %2957, %2952
  %2959 = fdiv fast float %2867, %2952
  %2960 = fmul fast float %2866, 0x3FE279A760000000
  %2961 = fmul fast float %2958, %2853
  %2962 = fmul fast float %2959, %2867
  %2963 = fmul fast float %2956, %2855
  %2964 = fadd fast float %2961, %2963
  %2965 = fsub fast float %2964, %2962
  %2966 = call float @dx.op.unary.f32(i32 6, float %2965)  ; FAbs(value)
  %2967 = fadd fast float %2966, 0x3DDB7CDFE0000000
  %2968 = fdiv fast float %2960, %2967
  br label %2969

; <label>:2969                                    ; preds = %2954, %2944
  %2970 = phi float [ %2968, %2954 ], [ 1.000000e+00, %2944 ]
  %2971 = call float @dx.op.binary.f32(i32 36, float %2970, float %2946)  ; FMin(a,b)
  %2972 = call float @dx.op.unary.f32(i32 7, float %2971)  ; Saturate(value)
  %2973 = fcmp fast olt float %2972, 1.000000e+00
  br i1 %2973, label %2974, label %2984

; <label>:2974                                    ; preds = %2969
  %2975 = fmul fast float %2972, %2853
  %2976 = fmul fast float %2972, %2867
  %2977 = fmul fast float %2972, %2855
  %2978 = fmul fast float %2972, %2870
  %2979 = fmul fast float %2972, %2882
  %2980 = fmul fast float %2972, %2872
  %2981 = fmul fast float %2972, %2885
  %2982 = fmul fast float %2972, %2897
  %2983 = fmul fast float %2972, %2887
  br label %2984

; <label>:2984                                    ; preds = %2974, %2969
  %2985 = phi float [ %2981, %2974 ], [ %2885, %2969 ]
  %2986 = phi float [ %2982, %2974 ], [ %2897, %2969 ]
  %2987 = phi float [ %2983, %2974 ], [ %2887, %2969 ]
  %2988 = phi float [ %2978, %2974 ], [ %2870, %2969 ]
  %2989 = phi float [ %2979, %2974 ], [ %2882, %2969 ]
  %2990 = phi float [ %2980, %2974 ], [ %2872, %2969 ]
  %2991 = phi float [ %2975, %2974 ], [ %2853, %2969 ]
  %2992 = phi float [ %2976, %2974 ], [ %2867, %2969 ]
  %2993 = phi float [ %2977, %2974 ], [ %2855, %2969 ]
  %2994 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2866)  ; FMax(a,b)
  %2995 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2881)  ; FMax(a,b)
  %2996 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2896)  ; FMax(a,b)
  %2997 = fcmp fast oge float %2654, 0.000000e+00
  %2998 = and i1 %2997, %2425
  %2999 = fcmp fast ole float %2654, 1.000000e+00
  %3000 = and i1 %2999, %2998
  %3001 = fcmp fast oge float %2655, 0.000000e+00
  %3002 = and i1 %3001, %3000
  %3003 = fcmp fast ole float %2655, 1.000000e+00
  %3004 = and i1 %3003, %3002
  br i1 %3004, label %3005, label %3150, !dx.controlflow.hints !109

; <label>:3005                                    ; preds = %2984
  %3006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3007 = extractvalue %dx.types.CBufRet.f32 %3006, 2
  %3008 = extractvalue %dx.types.CBufRet.f32 %3006, 3
  %3009 = fmul fast float %3007, %2654
  %3010 = fmul fast float %3008, %2655
  %3011 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3012 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3013 = fptosi float %3011 to i32
  %3014 = fptosi float %3012 to i32
  %3015 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %3013, i32 %3014, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 65535
  %3018 = lshr i32 %3016, 16
  %3019 = icmp eq i32 %3017, 65535
  br i1 %3019, label %3056, label %3020

; <label>:3020                                    ; preds = %3005
  %3021 = extractvalue %dx.types.CBufRet.f32 %2423, 1
  %3022 = extractvalue %dx.types.CBufRet.f32 %3006, 0
  %3023 = extractvalue %dx.types.CBufRet.f32 %3006, 1
  %3024 = fmul fast float %3022, %2654
  %3025 = fmul fast float %3023, %2655
  %3026 = fmul fast float %3024, 1.250000e-01
  %3027 = fmul fast float %3025, 1.250000e-01
  %3028 = call float @dx.op.unary.f32(i32 27, float %3026)  ; Round_ni(value)
  %3029 = call float @dx.op.unary.f32(i32 27, float %3027)  ; Round_ni(value)
  %3030 = fmul fast float %3028, 8.000000e+00
  %3031 = fmul fast float %3029, 8.000000e+00
  %3032 = and i32 %3016, 255
  %3033 = lshr i32 %3016, 8
  %3034 = and i32 %3033, 255
  %3035 = mul nuw nsw i32 %3032, 9
  %3036 = uitofp i32 %3035 to float
  %3037 = mul nuw nsw i32 %3034, 9
  %3038 = uitofp i32 %3037 to float
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = fadd fast float %3039, %3024
  %3041 = fsub fast float %3040, %3030
  %3042 = fadd fast float %3038, 5.000000e-01
  %3043 = fadd fast float %3042, %3025
  %3044 = fsub fast float %3043, %3031
  %3045 = fdiv fast float %3041, %2424
  %3046 = fdiv fast float %3044, %3021
  %3047 = fmul fast float %2682, 4.375000e-01
  %3048 = fadd fast float %3047, 3.125000e-02
  %3049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3045, float %3046, float %3048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  %3051 = extractvalue %dx.types.ResRet.f32 %3049, 1
  %3052 = extractvalue %dx.types.ResRet.f32 %3049, 2
  %3053 = fadd fast float %3050, %2994
  %3054 = fadd fast float %3051, %2995
  %3055 = fadd fast float %3052, %2996
  br label %3056

; <label>:3056                                    ; preds = %3020, %3005
  %3057 = phi float [ %3055, %3020 ], [ %2996, %3005 ]
  %3058 = phi float [ %3054, %3020 ], [ %2995, %3005 ]
  %3059 = phi float [ %3053, %3020 ], [ %2994, %3005 ]
  %3060 = icmp eq i32 %3018, 65535
  br i1 %3060, label %3150, label %3061

; <label>:3061                                    ; preds = %3056
  %3062 = extractvalue %dx.types.CBufRet.f32 %2423, 1
  %3063 = extractvalue %dx.types.CBufRet.f32 %3006, 0
  %3064 = extractvalue %dx.types.CBufRet.f32 %3006, 1
  %3065 = fmul fast float %3063, %2654
  %3066 = fmul fast float %3064, %2655
  %3067 = fmul fast float %3065, 1.250000e-01
  %3068 = fmul fast float %3066, 1.250000e-01
  %3069 = call float @dx.op.unary.f32(i32 27, float %3067)  ; Round_ni(value)
  %3070 = call float @dx.op.unary.f32(i32 27, float %3068)  ; Round_ni(value)
  %3071 = fmul fast float %3069, 8.000000e+00
  %3072 = fmul fast float %3070, 8.000000e+00
  %3073 = fsub fast float %3065, %3071
  %3074 = fsub fast float %3066, %3072
  %3075 = fadd fast float %3073, 5.000000e-01
  %3076 = fadd fast float %3074, 5.000000e-01
  %3077 = and i32 %3018, 255
  %3078 = lshr i32 %3016, 24
  %3079 = mul nuw nsw i32 %3077, 9
  %3080 = uitofp i32 %3079 to float
  %3081 = mul nuw nsw i32 %3078, 9
  %3082 = uitofp i32 %3081 to float
  %3083 = fadd fast float %3075, %3080
  %3084 = fadd fast float %3076, %3082
  %3085 = fdiv fast float %3083, %2424
  %3086 = fdiv fast float %3084, %3062
  %3087 = fmul fast float %2682, 4.375000e-01
  %3088 = fadd fast float %3087, 3.125000e-02
  %3089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3085, float %3086, float %3088, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = extractvalue %dx.types.ResRet.f32 %3089, 1
  %3092 = extractvalue %dx.types.ResRet.f32 %3089, 2
  %3093 = fadd fast float %3087, 5.312500e-01
  %3094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3085, float %3086, float %3093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3095 = extractvalue %dx.types.ResRet.f32 %3094, 0
  %3096 = extractvalue %dx.types.ResRet.f32 %3094, 1
  %3097 = extractvalue %dx.types.ResRet.f32 %3094, 2
  %3098 = fmul fast float %3095, 2.000000e+00
  %3099 = fmul fast float %3096, 2.000000e+00
  %3100 = fmul fast float %3097, 2.000000e+00
  %3101 = fadd fast float %3098, -1.000000e+00
  %3102 = fadd fast float %3099, -1.000000e+00
  %3103 = fadd fast float %3100, -1.000000e+00
  %3104 = fmul fast float %3101, %3101
  %3105 = fmul fast float %3102, %3102
  %3106 = fadd fast float %3104, %3105
  %3107 = fmul fast float %3103, %3103
  %3108 = fadd fast float %3106, %3107
  %3109 = call float @dx.op.unary.f32(i32 24, float %3108)  ; Sqrt(value)
  %3110 = fcmp fast ogt float %3109, 0.000000e+00
  br i1 %3110, label %3111, label %3115

; <label>:3111                                    ; preds = %3061
  %3112 = fdiv fast float %3101, %3109
  %3113 = fdiv fast float %3102, %3109
  %3114 = fdiv fast float %3103, %3109
  br label %3115

; <label>:3115                                    ; preds = %3111, %3061
  %3116 = phi float [ %3112, %3111 ], [ 0.000000e+00, %3061 ]
  %3117 = phi float [ %3113, %3111 ], [ 0.000000e+00, %3061 ]
  %3118 = phi float [ %3114, %3111 ], [ 0.000000e+00, %3061 ]
  %3119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.f32 %3119, 0
  %3121 = extractvalue %dx.types.CBufRet.f32 %3119, 1
  %3122 = fsub fast float %2273, %3120
  %3123 = fsub fast float %2274, %3121
  %3124 = fmul fast float %3122, %3122
  %3125 = fmul fast float %3123, %3123
  %3126 = fadd fast float %3124, %3125
  %3127 = call float @dx.op.unary.f32(i32 24, float %3126)  ; Sqrt(value)
  %3128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3129 = extractvalue %dx.types.CBufRet.f32 %3128, 0
  %3130 = extractvalue %dx.types.CBufRet.f32 %3128, 1
  %3131 = fsub fast float %3127, %3129
  %3132 = fdiv fast float %3131, %3130
  %3133 = call float @dx.op.unary.f32(i32 7, float %3132)  ; Saturate(value)
  %3134 = fmul fast float %3133, 2.000000e+00
  %3135 = fsub fast float 3.000000e+00, %3134
  %3136 = fmul fast float %3133, %3133
  %3137 = fmul fast float %3136, %3135
  %3138 = call float @dx.op.dot3.f32(i32 55, float %3116, float %3117, float %3118, float %2234, float %2235, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %3139 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3138)  ; FMax(a,b)
  %3140 = fmul fast float %3139, 0x400C5BF8A0000000
  %3141 = fmul fast float %3137, %3090
  %3142 = fmul fast float %3141, %3140
  %3143 = fadd fast float %3142, %3059
  %3144 = fmul fast float %3137, %3091
  %3145 = fmul fast float %3144, %3140
  %3146 = fadd fast float %3145, %3058
  %3147 = fmul fast float %3137, %3092
  %3148 = fmul fast float %3147, %3140
  %3149 = fadd fast float %3148, %3057
  br label %3150

; <label>:3150                                    ; preds = %3115, %3056, %2984
  %3151 = phi float [ %3149, %3115 ], [ %3057, %3056 ], [ %2996, %2984 ]
  %3152 = phi float [ %3146, %3115 ], [ %3058, %3056 ], [ %2995, %2984 ]
  %3153 = phi float [ %3143, %3115 ], [ %3059, %3056 ], [ %2994, %2984 ]
  %3154 = fcmp fast ogt float %2641, %2678
  %3155 = and i1 %2997, %3154
  %3156 = and i1 %2999, %3155
  %3157 = and i1 %3001, %3156
  %3158 = and i1 %3003, %3157
  br i1 %3158, label %3159, label %3216, !dx.controlflow.hints !110

; <label>:3159                                    ; preds = %3150
  %3160 = fmul fast float %2680, 0x3FC24924A0000000
  %3161 = fsub fast float %2641, %2678
  %3162 = fdiv fast float %3161, %3160
  %3163 = call float @dx.op.unary.f32(i32 7, float %3162)  ; Saturate(value)
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 0
  %3166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3167 = extractvalue %dx.types.CBufRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.CBufRet.f32 %3166, 1
  %3169 = extractvalue %dx.types.CBufRet.f32 %3166, 2
  %3170 = fsub fast float %3165, %3153
  %3171 = fsub fast float %3167, %2991
  %3172 = fsub fast float %3168, %2992
  %3173 = fsub fast float %3169, %2993
  %3174 = fmul fast float %3170, %3163
  %3175 = fmul fast float %3171, %3163
  %3176 = fmul fast float %3172, %3163
  %3177 = fmul fast float %3173, %3163
  %3178 = fadd fast float %3174, %3153
  %3179 = fadd fast float %3175, %2991
  %3180 = fadd fast float %3176, %2992
  %3181 = fadd fast float %3177, %2993
  %3182 = extractvalue %dx.types.CBufRet.f32 %3164, 1
  %3183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3184 = extractvalue %dx.types.CBufRet.f32 %3183, 0
  %3185 = extractvalue %dx.types.CBufRet.f32 %3183, 1
  %3186 = extractvalue %dx.types.CBufRet.f32 %3183, 2
  %3187 = fsub fast float %3182, %3152
  %3188 = fsub fast float %3184, %2988
  %3189 = fsub fast float %3185, %2989
  %3190 = fsub fast float %3186, %2990
  %3191 = fmul fast float %3187, %3163
  %3192 = fmul fast float %3188, %3163
  %3193 = fmul fast float %3189, %3163
  %3194 = fmul fast float %3190, %3163
  %3195 = fadd fast float %3191, %3152
  %3196 = fadd fast float %3192, %2988
  %3197 = fadd fast float %3193, %2989
  %3198 = fadd fast float %3194, %2990
  %3199 = extractvalue %dx.types.CBufRet.f32 %3164, 2
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.CBufRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.CBufRet.f32 %3200, 2
  %3204 = fsub fast float %3199, %3151
  %3205 = fsub fast float %3201, %2985
  %3206 = fsub fast float %3202, %2986
  %3207 = fsub fast float %3203, %2987
  %3208 = fmul fast float %3204, %3163
  %3209 = fmul fast float %3205, %3163
  %3210 = fmul fast float %3206, %3163
  %3211 = fmul fast float %3207, %3163
  %3212 = fadd fast float %3208, %3151
  %3213 = fadd fast float %3209, %2985
  %3214 = fadd fast float %3210, %2986
  %3215 = fadd fast float %3211, %2987
  br label %3216

; <label>:3216                                    ; preds = %3159, %3150
  %3217 = phi float [ %3212, %3159 ], [ %3151, %3150 ]
  %3218 = phi float [ %3213, %3159 ], [ %2985, %3150 ]
  %3219 = phi float [ %3214, %3159 ], [ %2986, %3150 ]
  %3220 = phi float [ %3215, %3159 ], [ %2987, %3150 ]
  %3221 = phi float [ %3195, %3159 ], [ %3152, %3150 ]
  %3222 = phi float [ %3196, %3159 ], [ %2988, %3150 ]
  %3223 = phi float [ %3197, %3159 ], [ %2989, %3150 ]
  %3224 = phi float [ %3198, %3159 ], [ %2990, %3150 ]
  %3225 = phi float [ %3178, %3159 ], [ %3153, %3150 ]
  %3226 = phi float [ %3179, %3159 ], [ %2991, %3150 ]
  %3227 = phi float [ %3180, %3159 ], [ %2992, %3150 ]
  %3228 = phi float [ %3181, %3159 ], [ %2993, %3150 ]
  %3229 = extractvalue %dx.types.CBufRet.f32 %2803, 3
  %3230 = fmul fast float %3229, %3225
  %3231 = fmul fast float %3229, %3221
  %3232 = fmul fast float %3229, %3217
  %3233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3234 = extractvalue %dx.types.CBufRet.f32 %3233, 3
  %3235 = fmul fast float %3230, %3234
  %3236 = fmul fast float %3231, %3234
  %3237 = fmul fast float %3232, %3234
  %3238 = call float @dx.op.dot3.f32(i32 55, float %3235, float %3236, float %3237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3239 = fmul fast float %3238, 0x3FD20DD760000000
  %3240 = fmul fast float %3226, 1.500000e+00
  %3241 = fmul fast float %3240, %3229
  %3242 = fmul fast float %3241, %3234
  %3243 = fmul fast float %3227, 1.500000e+00
  %3244 = fmul fast float %3243, %3229
  %3245 = fmul fast float %3244, %3234
  %3246 = fmul fast float %3228, 1.500000e+00
  %3247 = fmul fast float %3246, %3229
  %3248 = fmul fast float %3247, %3234
  %3249 = fmul fast float %3222, 1.500000e+00
  %3250 = fmul fast float %3249, %3229
  %3251 = fmul fast float %3250, %3234
  %3252 = fmul fast float %3223, 1.500000e+00
  %3253 = fmul fast float %3252, %3229
  %3254 = fmul fast float %3253, %3234
  %3255 = fmul fast float %3224, 1.500000e+00
  %3256 = fmul fast float %3255, %3229
  %3257 = fmul fast float %3256, %3234
  %3258 = fmul fast float %3218, 1.500000e+00
  %3259 = fmul fast float %3258, %3229
  %3260 = fmul fast float %3259, %3234
  %3261 = fmul fast float %3219, 1.500000e+00
  %3262 = fmul fast float %3261, %3229
  %3263 = fmul fast float %3262, %3234
  %3264 = fmul fast float %3220, 1.500000e+00
  %3265 = fmul fast float %3264, %3229
  %3266 = fmul fast float %3265, %3234
  %3267 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3235)  ; FMax(a,b)
  %3268 = call float @dx.op.dot3.f32(i32 55, float %3242, float %3245, float %3248, float %3242, float %3245, float %3248)  ; Dot3(ax,ay,az,bx,by,bz)
  %3269 = fcmp fast oeq float %3268, 0.000000e+00
  %3270 = fcmp fast oeq float %3267, 0.000000e+00
  %3271 = or i1 %3270, %3269
  br i1 %3271, label %3301, label %3272

; <label>:3272                                    ; preds = %3216
  %3273 = fsub fast float -0.000000e+00, %3248
  %3274 = fsub fast float -0.000000e+00, %3242
  %3275 = call float @dx.op.unary.f32(i32 24, float %3268)  ; Sqrt(value)
  %3276 = fdiv fast float %3275, %3267
  %3277 = fcmp fast ogt float %3276, 0x3FFB6F8900000000
  %3278 = select i1 %3277, float 0x3FFB6F8900000000, float %3276
  %3279 = fmul fast float %3278, 0x3FE8A23460000000
  %3280 = call float @dx.op.unary.f32(i32 7, float %3279)  ; Saturate(value)
  %3281 = call float @dx.op.binary.f32(i32 35, float %3278, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3282 = fmul fast float %3280, %3267
  %3283 = fmul fast float %3281, 0x3FF279A740000000
  %3284 = fadd fast float %3283, -1.000000e+00
  %3285 = call float @dx.op.dot3.f32(i32 55, float %3273, float %3274, float %3245, float %3273, float %3274, float %3245)  ; Dot3(ax,ay,az,bx,by,bz)
  %3286 = call float @dx.op.unary.f32(i32 25, float %3285)  ; Rsqrt(value)
  %3287 = fmul fast float %3286, %3273
  %3288 = fmul fast float %3286, %3274
  %3289 = fmul fast float %3286, %3245
  %3290 = fmul fast float %3284, %3284
  %3291 = fsub fast float 1.000000e+00, %3290
  %3292 = fmul fast float %3281, 0x40005F8BE0000000
  %3293 = fsub fast float 0x400C5BF8A0000000, %3292
  %3294 = fdiv fast float %3282, %3293
  %3295 = fmul fast float %3294, 0x3FEE31C3C0000000
  %3296 = fmul fast float %3295, %3291
  %3297 = fmul fast float %3281, 0x3FDACB7480000000
  %3298 = fadd fast float %3297, 0xBFD7347680000000
  %3299 = fmul fast float %3298, %3294
  %3300 = fmul fast float %3299, %3291
  br label %3301

; <label>:3301                                    ; preds = %3272, %3216
  %3302 = phi float [ %3287, %3272 ], [ 0.000000e+00, %3216 ]
  %3303 = phi float [ %3288, %3272 ], [ 0.000000e+00, %3216 ]
  %3304 = phi float [ %3289, %3272 ], [ 0.000000e+00, %3216 ]
  %3305 = phi float [ %3296, %3272 ], [ 0.000000e+00, %3216 ]
  %3306 = phi float [ %3300, %3272 ], [ 0.000000e+00, %3216 ]
  %3307 = call float @dx.op.dot3.f32(i32 55, float %3302, float %3303, float %3304, float %2234, float %2235, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %3308 = fmul fast float %3307, %3307
  %3309 = fmul fast float %3308, 0x3FEE471020000000
  %3310 = fadd fast float %3309, 0xBFD42F6020000000
  %3311 = fmul fast float %3267, 0x3FD20DD760000000
  %3312 = fmul fast float %3310, %3306
  %3313 = fmul fast float %3305, 0x3FDF454380000000
  %3314 = fmul fast float %3313, %3307
  %3315 = fadd fast float %3314, %3311
  %3316 = fadd fast float %3315, %3312
  %3317 = call float @dx.op.dot3.f32(i32 55, float %3302, float %3303, float %3304, float %2251, float %2252, float %2253)  ; Dot3(ax,ay,az,bx,by,bz)
  %3318 = fmul fast float %3317, 0x3FDF454380000000
  %3319 = fmul fast float %3317, %3317
  %3320 = fmul fast float %3319, 0x3FEE471020000000
  %3321 = fadd fast float %3320, 0xBFD42F6020000000
  %3322 = call float @dx.op.dot3.f32(i32 55, float %3267, float %3305, float %3306, float 0x3FD20DD760000000, float %3318, float %3321)  ; Dot3(ax,ay,az,bx,by,bz)
  %3323 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3236)  ; FMax(a,b)
  %3324 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3254, float %3257, float %3251, float %3254, float %3257)  ; Dot3(ax,ay,az,bx,by,bz)
  %3325 = fcmp fast oeq float %3324, 0.000000e+00
  %3326 = fcmp fast oeq float %3323, 0.000000e+00
  %3327 = or i1 %3326, %3325
  br i1 %3327, label %3357, label %3328

; <label>:3328                                    ; preds = %3301
  %3329 = fsub fast float -0.000000e+00, %3257
  %3330 = fsub fast float -0.000000e+00, %3251
  %3331 = call float @dx.op.unary.f32(i32 24, float %3324)  ; Sqrt(value)
  %3332 = fdiv fast float %3331, %3323
  %3333 = fcmp fast ogt float %3332, 0x3FFB6F8900000000
  %3334 = select i1 %3333, float 0x3FFB6F8900000000, float %3332
  %3335 = fmul fast float %3334, 0x3FE8A23460000000
  %3336 = call float @dx.op.unary.f32(i32 7, float %3335)  ; Saturate(value)
  %3337 = call float @dx.op.binary.f32(i32 35, float %3334, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3338 = fmul fast float %3336, %3323
  %3339 = fmul fast float %3337, 0x3FF279A740000000
  %3340 = fadd fast float %3339, -1.000000e+00
  %3341 = call float @dx.op.dot3.f32(i32 55, float %3329, float %3330, float %3254, float %3329, float %3330, float %3254)  ; Dot3(ax,ay,az,bx,by,bz)
  %3342 = call float @dx.op.unary.f32(i32 25, float %3341)  ; Rsqrt(value)
  %3343 = fmul fast float %3342, %3329
  %3344 = fmul fast float %3342, %3330
  %3345 = fmul fast float %3342, %3254
  %3346 = fmul fast float %3340, %3340
  %3347 = fsub fast float 1.000000e+00, %3346
  %3348 = fmul fast float %3337, 0x40005F8BE0000000
  %3349 = fsub fast float 0x400C5BF8A0000000, %3348
  %3350 = fdiv fast float %3338, %3349
  %3351 = fmul fast float %3350, 0x3FEE31C3C0000000
  %3352 = fmul fast float %3351, %3347
  %3353 = fmul fast float %3337, 0x3FDACB7480000000
  %3354 = fadd fast float %3353, 0xBFD7347680000000
  %3355 = fmul fast float %3354, %3350
  %3356 = fmul fast float %3355, %3347
  br label %3357

; <label>:3357                                    ; preds = %3328, %3301
  %3358 = phi float [ %3343, %3328 ], [ 0.000000e+00, %3301 ]
  %3359 = phi float [ %3344, %3328 ], [ 0.000000e+00, %3301 ]
  %3360 = phi float [ %3345, %3328 ], [ 0.000000e+00, %3301 ]
  %3361 = phi float [ %3352, %3328 ], [ 0.000000e+00, %3301 ]
  %3362 = phi float [ %3356, %3328 ], [ 0.000000e+00, %3301 ]
  %3363 = call float @dx.op.dot3.f32(i32 55, float %3358, float %3359, float %3360, float %2234, float %2235, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %3364 = fmul fast float %3363, %3363
  %3365 = fmul fast float %3364, 0x3FEE471020000000
  %3366 = fadd fast float %3365, 0xBFD42F6020000000
  %3367 = fmul fast float %3323, 0x3FD20DD760000000
  %3368 = fmul fast float %3366, %3362
  %3369 = fmul fast float %3361, 0x3FDF454380000000
  %3370 = fmul fast float %3369, %3363
  %3371 = fadd fast float %3370, %3367
  %3372 = fadd fast float %3371, %3368
  %3373 = call float @dx.op.dot3.f32(i32 55, float %3358, float %3359, float %3360, float %2251, float %2252, float %2253)  ; Dot3(ax,ay,az,bx,by,bz)
  %3374 = fmul fast float %3373, 0x3FDF454380000000
  %3375 = fmul fast float %3373, %3373
  %3376 = fmul fast float %3375, 0x3FEE471020000000
  %3377 = fadd fast float %3376, 0xBFD42F6020000000
  %3378 = call float @dx.op.dot3.f32(i32 55, float %3323, float %3361, float %3362, float 0x3FD20DD760000000, float %3374, float %3377)  ; Dot3(ax,ay,az,bx,by,bz)
  %3379 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3237)  ; FMax(a,b)
  %3380 = call float @dx.op.dot3.f32(i32 55, float %3260, float %3263, float %3266, float %3260, float %3263, float %3266)  ; Dot3(ax,ay,az,bx,by,bz)
  %3381 = fcmp fast oeq float %3380, 0.000000e+00
  %3382 = fcmp fast oeq float %3379, 0.000000e+00
  %3383 = or i1 %3382, %3381
  br i1 %3383, label %3413, label %3384

; <label>:3384                                    ; preds = %3357
  %3385 = fsub fast float -0.000000e+00, %3266
  %3386 = fsub fast float -0.000000e+00, %3260
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
  %3397 = call float @dx.op.dot3.f32(i32 55, float %3385, float %3386, float %3263, float %3385, float %3386, float %3263)  ; Dot3(ax,ay,az,bx,by,bz)
  %3398 = call float @dx.op.unary.f32(i32 25, float %3397)  ; Rsqrt(value)
  %3399 = fmul fast float %3398, %3385
  %3400 = fmul fast float %3398, %3386
  %3401 = fmul fast float %3398, %3263
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

; <label>:3413                                    ; preds = %3384, %3357
  %3414 = phi float [ %3399, %3384 ], [ 0.000000e+00, %3357 ]
  %3415 = phi float [ %3400, %3384 ], [ 0.000000e+00, %3357 ]
  %3416 = phi float [ %3401, %3384 ], [ 0.000000e+00, %3357 ]
  %3417 = phi float [ %3408, %3384 ], [ 0.000000e+00, %3357 ]
  %3418 = phi float [ %3412, %3384 ], [ 0.000000e+00, %3357 ]
  %3419 = call float @dx.op.dot3.f32(i32 55, float %3414, float %3415, float %3416, float %2234, float %2235, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %3420 = fmul fast float %3419, %3419
  %3421 = fmul fast float %3420, 0x3FEE471020000000
  %3422 = fadd fast float %3421, 0xBFD42F6020000000
  %3423 = fmul fast float %3379, 0x3FD20DD760000000
  %3424 = fmul fast float %3422, %3418
  %3425 = fmul fast float %3417, 0x3FDF454380000000
  %3426 = fmul fast float %3425, %3419
  %3427 = fadd fast float %3426, %3423
  %3428 = fadd fast float %3427, %3424
  %3429 = call float @dx.op.dot3.f32(i32 55, float %3414, float %3415, float %3416, float %2251, float %2252, float %2253)  ; Dot3(ax,ay,az,bx,by,bz)
  %3430 = fmul fast float %3429, 0x3FDF454380000000
  %3431 = fmul fast float %3429, %3429
  %3432 = fmul fast float %3431, 0x3FEE471020000000
  %3433 = fadd fast float %3432, 0xBFD42F6020000000
  %3434 = call float @dx.op.dot3.f32(i32 55, float %3379, float %3417, float %3418, float 0x3FD20DD760000000, float %3430, float %3433)  ; Dot3(ax,ay,az,bx,by,bz)
  %3435 = call float @dx.op.binary.f32(i32 35, float %3316, float 0.000000e+00)  ; FMax(a,b)
  %3436 = call float @dx.op.binary.f32(i32 35, float %3372, float 0.000000e+00)  ; FMax(a,b)
  %3437 = call float @dx.op.binary.f32(i32 35, float %3428, float 0.000000e+00)  ; FMax(a,b)
  %3438 = call float @dx.op.binary.f32(i32 35, float %3322, float 0.000000e+00)  ; FMax(a,b)
  %3439 = call float @dx.op.binary.f32(i32 35, float %3378, float 0.000000e+00)  ; FMax(a,b)
  %3440 = call float @dx.op.binary.f32(i32 35, float %3434, float 0.000000e+00)  ; FMax(a,b)
  %3441 = fsub fast float %2635, %3435
  %3442 = fsub fast float %2636, %3436
  %3443 = fsub fast float %2637, %3437
  %3444 = fmul fast float %3441, %2314
  %3445 = fmul fast float %3442, %2314
  %3446 = fmul fast float %3443, %2314
  %3447 = fadd fast float %3444, %3435
  %3448 = fadd fast float %3445, %3436
  %3449 = fadd fast float %3446, %3437
  %3450 = fsub fast float %2632, %3438
  %3451 = fsub fast float %2633, %3439
  %3452 = fsub fast float %2634, %3440
  %3453 = fmul fast float %3450, %2314
  %3454 = fmul fast float %3451, %2314
  %3455 = fmul fast float %3452, %2314
  %3456 = fadd fast float %3453, %3438
  %3457 = fadd fast float %3454, %3439
  %3458 = fadd fast float %3455, %3440
  %3459 = fsub fast float %2416, %3239
  %3460 = fmul fast float %3459, %2314
  %3461 = fadd fast float %3460, %3239
  br label %3462

; <label>:3462                                    ; preds = %3413, %2631
  %3463 = phi float [ %3461, %3413 ], [ %2416, %2631 ]
  %3464 = phi float [ %3456, %3413 ], [ %2632, %2631 ]
  %3465 = phi float [ %3457, %3413 ], [ %2633, %2631 ]
  %3466 = phi float [ %3458, %3413 ], [ %2634, %2631 ]
  %3467 = phi float [ %3447, %3413 ], [ %2635, %2631 ]
  %3468 = phi float [ %3448, %3413 ], [ %2636, %2631 ]
  %3469 = phi float [ %3449, %3413 ], [ %2637, %2631 ]
  %3470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3471 = extractvalue %dx.types.CBufRet.f32 %3470, 0
  %3472 = call float @dx.op.binary.f32(i32 36, float %2231, float %3471)  ; FMin(a,b)
  %3473 = fmul fast float %3472, %2255
  %3474 = fsub fast float 1.000000e+00, %3473
  %3475 = bitcast float %3474 to i32
  %3476 = sub nsw i32 2129859010, %3475
  %3477 = bitcast i32 %3476 to float
  %3478 = call float @dx.op.binary.f32(i32 36, float %2232, float %3471)  ; FMin(a,b)
  %3479 = fmul fast float %3478, %2255
  %3480 = fsub fast float 1.000000e+00, %3479
  %3481 = bitcast float %3480 to i32
  %3482 = sub nsw i32 2129859010, %3481
  %3483 = bitcast i32 %3482 to float
  %3484 = call float @dx.op.binary.f32(i32 36, float %2233, float %3471)  ; FMin(a,b)
  %3485 = fmul fast float %3484, %2255
  %3486 = fsub fast float 1.000000e+00, %3485
  %3487 = bitcast float %3486 to i32
  %3488 = sub nsw i32 2129859010, %3487
  %3489 = bitcast i32 %3488 to float
  %3490 = fmul fast float %3467, %2254
  %3491 = fmul fast float %3490, %3477
  %3492 = fmul fast float %3468, %2254
  %3493 = fmul fast float %3492, %3483
  %3494 = fmul fast float %3469, %2254
  %3495 = fmul fast float %3494, %3489
  %3496 = call float @dx.op.binary.f32(i32 36, float %2237, float %3471)  ; FMin(a,b)
  %3497 = fmul fast float %3496, %2255
  %3498 = fsub fast float 1.000000e+00, %3497
  %3499 = bitcast float %3498 to i32
  %3500 = sub nsw i32 2129859010, %3499
  %3501 = bitcast i32 %3500 to float
  %3502 = call float @dx.op.binary.f32(i32 36, float %2238, float %3471)  ; FMin(a,b)
  %3503 = fmul fast float %3502, %2255
  %3504 = fsub fast float 1.000000e+00, %3503
  %3505 = bitcast float %3504 to i32
  %3506 = sub nsw i32 2129859010, %3505
  %3507 = bitcast i32 %3506 to float
  %3508 = call float @dx.op.binary.f32(i32 36, float %2243, float %3471)  ; FMin(a,b)
  %3509 = fmul fast float %3508, %2255
  %3510 = fsub fast float 1.000000e+00, %3509
  %3511 = bitcast float %3510 to i32
  %3512 = sub nsw i32 2129859010, %3511
  %3513 = bitcast i32 %3512 to float
  %3514 = fmul fast float %3464, %2254
  %3515 = fmul fast float %3514, %3501
  %3516 = fmul fast float %3465, %2254
  %3517 = fmul fast float %3516, %3507
  %3518 = fmul fast float %3466, %2254
  %3519 = fmul fast float %3518, %3513
  %3520 = call float @dx.op.dot3.f32(i32 55, float %3491, float %3493, float %3495, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3521 = select i1 %237, float 0.000000e+00, float %3491
  %3522 = select i1 %237, float %3520, float %3493
  %3523 = select i1 %237, float 0.000000e+00, float %3495
  %3524 = call float @dx.op.dot3.f32(i32 55, float %3515, float %3517, float %3519, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3525 = select i1 %237, float 0.000000e+00, float %3515
  %3526 = select i1 %237, float %3524, float %3517
  %3527 = select i1 %237, float 0.000000e+00, float %3519
  %3528 = fmul fast float %1055, %1055
  %3529 = call float @dx.op.unary.f32(i32 7, float %3528)  ; Saturate(value)
  %3530 = fmul fast float %2245, 9.843750e-01
  %3531 = fmul fast float %2240, 9.843750e-01
  %3532 = fadd fast float %3530, 7.812500e-03
  %3533 = fadd fast float %3531, 7.812500e-03
  %3534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3532, float %3533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3535 = extractvalue %dx.types.ResRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.ResRet.f32 %3534, 1
  %3537 = extractvalue %dx.types.ResRet.f32 %3534, 2
  %3538 = extractvalue %dx.types.ResRet.f32 %3534, 3
  %3539 = fsub fast float 1.000000e+00, %3529
  %3540 = fsub fast float %3537, %3535
  %3541 = fsub fast float %3538, %3536
  %3542 = fmul fast float %3540, %3539
  %3543 = fmul fast float %3541, %3539
  %3544 = fadd fast float %3542, %3535
  %3545 = fadd fast float %3543, %3536
  %3546 = fmul fast float %3544, %2237
  %3547 = fmul fast float %3544, %2238
  %3548 = fmul fast float %3544, %2243
  %3549 = fadd fast float %3546, %3545
  %3550 = fadd fast float %3547, %3545
  %3551 = fadd fast float %3548, %3545
  %3552 = fcmp fast ogt float %1605, 0.000000e+00
  br i1 %3552, label %3553, label %3579

; <label>:3553                                    ; preds = %3462
  %3554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1605, float %2245, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3555 = extractvalue %dx.types.ResRet.f32 %3554, 0
  %3556 = extractvalue %dx.types.ResRet.f32 %3554, 1
  %3557 = extractvalue %dx.types.ResRet.f32 %3554, 2
  %3558 = fadd fast float %3555, -5.000000e-01
  %3559 = fadd fast float %3556, -5.000000e-01
  %3560 = fadd fast float %3557, -5.000000e-01
  %3561 = fsub fast float 1.000000e+00, %2237
  %3562 = fsub fast float 1.000000e+00, %2238
  %3563 = fsub fast float 1.000000e+00, %2243
  %3564 = fmul fast float %2237, 4.000000e+00
  %3565 = fmul fast float %3564, %3561
  %3566 = fmul fast float %3565, %3558
  %3567 = fmul fast float %2238, 4.000000e+00
  %3568 = fmul fast float %3567, %3562
  %3569 = fmul fast float %3568, %3559
  %3570 = fmul fast float %2243, 4.000000e+00
  %3571 = fmul fast float %3570, %3563
  %3572 = fmul fast float %3571, %3560
  %3573 = fadd fast float %3566, %3549
  %3574 = fadd fast float %3569, %3550
  %3575 = fadd fast float %3572, %3551
  %3576 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3577 = call float @dx.op.unary.f32(i32 7, float %3574)  ; Saturate(value)
  %3578 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  br label %3579

; <label>:3579                                    ; preds = %3553, %3462
  %3580 = phi float [ %3576, %3553 ], [ %3549, %3462 ]
  %3581 = phi float [ %3577, %3553 ], [ %3550, %3462 ]
  %3582 = phi float [ %3578, %3553 ], [ %3551, %3462 ]
  %3583 = call float @dx.op.binary.f32(i32 35, float %3581, float %3582)  ; FMax(a,b)
  %3584 = call float @dx.op.binary.f32(i32 35, float %3580, float %3583)  ; FMax(a,b)
  %3585 = fsub fast float 1.000000e+00, %3584
  %3586 = fmul fast float %3584, %2240
  %3587 = fadd fast float %3586, %2240
  %3588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3588, 2
  %3590 = extractvalue %dx.types.CBufRet.f32 %3588, 3
  %3591 = fmul fast float %3587, %3589
  %3592 = fadd fast float %3591, %3590
  %3593 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3594 = fsub fast float 1.000000e+00, %2266
  %3595 = fadd fast float %3594, %3593
  %3596 = call float @dx.op.unary.f32(i32 7, float %3595)  ; Saturate(value)
  %3597 = fcmp fast olt float %3596, 1.000000e+00
  br i1 %3597, label %3598, label %4074

; <label>:3598                                    ; preds = %3579
  %3599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3600 = extractvalue %dx.types.CBufRet.f32 %3599, 2
  %3601 = extractvalue %dx.types.CBufRet.f32 %3599, 3
  %3602 = fmul fast float %3600, %99
  %3603 = fmul fast float %3601, %100
  %3604 = fptoui float %3602 to i32
  %3605 = fptoui float %3603 to i32
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.CBufRet.f32 %3606, 2
  %3609 = extractvalue %dx.types.CBufRet.f32 %3606, 3
  %3610 = fadd fast float %87, -4.000000e+00
  %3611 = call float @dx.op.binary.f32(i32 35, float %3610, float 0.000000e+00)  ; FMax(a,b)
  %3612 = fadd fast float %3611, %3607
  %3613 = fmul fast float %3612, %3608
  %3614 = call float @dx.op.unary.f32(i32 23, float %3613)  ; Log(value)
  %3615 = fmul fast float %3614, %3609
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 2
  %3618 = fmul fast float %3615, %3617
  %3619 = call float @dx.op.unary.f32(i32 7, float %3618)  ; Saturate(value)
  %3620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.i32 %3620, 1
  %3622 = add i32 %3621, -1
  %3623 = uitofp i32 %3621 to float
  %3624 = fmul fast float %3623, %3619
  %3625 = fptoui float %3624 to i32
  %3626 = call i32 @dx.op.binary.i32(i32 40, i32 %3625, i32 %3622)  ; UMin(a,b)
  %3627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3628 = extractvalue %dx.types.CBufRet.i32 %3627, 2
  %3629 = extractvalue %dx.types.CBufRet.i32 %3627, 3
  %3630 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3605, i32 %3628, i32 %3604)  ; UMad(a,b,c)
  %3631 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3626, i32 %3629, i32 %3630)  ; UMad(a,b,c)
  %3632 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %3633 = fptoui float %3632 to i32
  %3634 = lshr i32 %3633, 5
  %3635 = call i32 @dx.op.binary.i32(i32 40, i32 %3634, i32 8191)  ; UMin(a,b)
  %3636 = fsub fast float %2030, %148
  %3637 = call float @dx.op.unary.f32(i32 7, float %3636)  ; Saturate(value)
  %3638 = fcmp fast ogt float %3637, 0.000000e+00
  %3639 = fcmp fast ogt float %2253, 0.000000e+00
  %3640 = and i1 %3639, %3638
  br i1 %3640, label %3641, label %3670

; <label>:3641                                    ; preds = %3598
  %3642 = call float @dx.op.dot3.f32(i32 55, float %2251, float %2252, float %2253, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3643 = call float @dx.op.binary.f32(i32 35, float %3642, float -1.000000e+00)  ; FMax(a,b)
  %3644 = call float @dx.op.binary.f32(i32 36, float %3643, float 1.000000e+00)  ; FMin(a,b)
  %3645 = fmul fast float %3644, %3644
  %3646 = fsub fast float 1.000000e+00, %3645
  %3647 = fmul fast float %3646, 0x3FFC6E2300000000
  %3648 = fsub fast float 1.000000e+00, %3647
  %3649 = fcmp fast ogt float %3648, 0.000000e+00
  %3650 = call float @dx.op.unary.f32(i32 24, float %3648)  ; Sqrt(value)
  %3651 = fsub fast float 1.000000e+00, %3650
  %3652 = call float @dx.op.unary.f32(i32 23, float %3651)  ; Log(value)
  %3653 = fmul fast float %3652, 5.000000e+00
  %3654 = call float @dx.op.unary.f32(i32 21, float %3653)  ; Exp(value)
  %3655 = fmul fast float %3654, 0x3FEF591A60000000
  %3656 = fadd fast float %3655, 0x3F94DCB540000000
  %3657 = select i1 %3649, float %3656, float 1.000000e+00
  %3658 = fcmp fast oge float %3657, 1.000000e+00
  %3659 = fmul fast float %3642, 2.000000e+00
  %3660 = fadd fast float %3659, %2253
  %3661 = select i1 %3658, float %3660, float %2253
  %3662 = fsub fast float %3661, %2253
  %3663 = fmul fast float %3662, %3637
  %3664 = fadd fast float %3663, %2253
  %3665 = call float @dx.op.dot3.f32(i32 55, float %2251, float %2252, float %3664, float %2251, float %2252, float %3664)  ; Dot3(ax,ay,az,bx,by,bz)
  %3666 = call float @dx.op.unary.f32(i32 25, float %3665)  ; Rsqrt(value)
  %3667 = fmul fast float %3666, %2251
  %3668 = fmul fast float %3666, %2252
  %3669 = fmul fast float %3664, %3666
  br label %3670

; <label>:3670                                    ; preds = %3641, %3598
  %3671 = phi float [ %3667, %3641 ], [ %2251, %3598 ]
  %3672 = phi float [ %3668, %3641 ], [ %2252, %3598 ]
  %3673 = phi float [ %3669, %3641 ], [ %2253, %3598 ]
  %3674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.i32 %3674, 2
  %3676 = add nsw i32 %3675, -1
  %3677 = call i32 @dx.op.binary.i32(i32 37, i32 %3676, i32 0)  ; IMax(a,b)
  %3678 = shl i32 %3635, 2
  %3679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.i32 %3679, 0
  %3681 = lshr i32 %3680, 16
  %3682 = and i32 %3680, 65535
  %3683 = lshr i32 %3680, 21
  %3684 = lshr i32 %3682, 5
  %3685 = call i32 @dx.op.binary.i32(i32 40, i32 %3684, i32 %3677)  ; UMin(a,b)
  %3686 = icmp ugt i32 %3683, %3685
  br i1 %3686, label %4050, label %3687

; <label>:3687                                    ; preds = %3670
  br label %3688

; <label>:3688                                    ; preds = %4042, %3687
  %3689 = phi float [ %4043, %4042 ], [ 0.000000e+00, %3687 ]
  %3690 = phi float [ %4044, %4042 ], [ 0.000000e+00, %3687 ]
  %3691 = phi float [ %4045, %4042 ], [ 0.000000e+00, %3687 ]
  %3692 = phi float [ %4046, %4042 ], [ 1.000000e+00, %3687 ]
  %3693 = phi i32 [ %4047, %4042 ], [ %3683, %3687 ]
  %3694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3695 = extractvalue %dx.types.CBufRet.i32 %3694, 2
  %3696 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3631, i32 %3695, i32 %3693)  ; UMad(a,b,c)
  %3697 = shl i32 %3696, 2
  %3698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.i32 %3698, 0
  %3700 = shl i32 %3693, 5
  %3701 = sub nsw i32 %3681, %3700
  %3702 = call i32 @dx.op.binary.i32(i32 37, i32 %3701, i32 0)  ; IMax(a,b)
  %3703 = call i32 @dx.op.binary.i32(i32 38, i32 %3702, i32 31)  ; IMin(a,b)
  %3704 = sub nsw i32 1, %3681
  %3705 = add nsw i32 %3704, %3682
  %3706 = call i32 @dx.op.binary.i32(i32 37, i32 %3705, i32 0)  ; IMax(a,b)
  %3707 = call i32 @dx.op.binary.i32(i32 38, i32 %3706, i32 32)  ; IMin(a,b)
  %3708 = and i32 %3707, 31
  %3709 = shl i32 -1, %3708
  %3710 = xor i32 %3709, -1
  %3711 = and i32 %3703, 31
  %3712 = shl i32 %3710, %3711
  %3713 = icmp eq i32 %3707, 32
  %3714 = select i1 %3713, i32 -1, i32 %3712
  %3715 = and i32 %3714, %3699
  %3716 = icmp eq i32 %3715, 0
  br i1 %3716, label %4042, label %3717

; <label>:3717                                    ; preds = %3688
  br label %3718

; <label>:3718                                    ; preds = %3825, %3717
  %3719 = phi float [ %3826, %3825 ], [ %3689, %3717 ]
  %3720 = phi float [ %3827, %3825 ], [ %3690, %3717 ]
  %3721 = phi float [ %3828, %3825 ], [ %3691, %3717 ]
  %3722 = phi float [ %3829, %3825 ], [ %3692, %3717 ]
  %3723 = phi i32 [ %3728, %3825 ], [ %3715, %3717 ]
  %3724 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3723)  ; FirstbitLo(value)
  %3725 = add i32 %3724, %3700
  %3726 = and i32 %3724, 31
  %3727 = shl i32 1, %3726
  %3728 = xor i32 %3727, %3723
  %3729 = mul i32 %3725, 72
  %3730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.ResRet.f32 %3730, 1
  %3733 = extractvalue %dx.types.ResRet.f32 %3730, 2
  %3734 = add i32 %3729, 12
  %3735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.i32 %3735, 0
  %3737 = add i32 %3729, 16
  %3738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.ResRet.f32 %3738, 1
  %3741 = extractvalue %dx.types.ResRet.f32 %3738, 2
  %3742 = add i32 %3729, 28
  %3743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = add i32 %3729, 32
  %3746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.ResRet.f32 %3746, 1
  %3749 = extractvalue %dx.types.ResRet.f32 %3746, 2
  %3750 = extractvalue %dx.types.ResRet.f32 %3746, 3
  %3751 = add i32 %3729, 48
  %3752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.ResRet.f32 %3752, 1
  %3755 = add i32 %3729, 56
  %3756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.ResRet.f32 %3756, 1
  %3759 = add i32 %3729, 64
  %3760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.f32 %3760, 0
  %3762 = extractvalue %dx.types.ResRet.f32 %3760, 1
  %3763 = mul i32 %3725, 60
  %3764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.ResRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3764, 2
  %3768 = add i32 %3763, 12
  %3769 = add i32 %3763, 48
  %3770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3773 = extractvalue %dx.types.ResRet.f32 %3770, 2
  %3774 = and i32 %3736, 32767
  %3775 = bitcast float %3731 to i32
  %3776 = icmp eq i32 %3775, -1
  %3777 = bitcast float %3732 to i32
  %3778 = and i32 %3736, 32768
  %3779 = icmp ne i32 %3778, 0
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3782 = extractvalue %dx.types.CBufRet.f32 %3780, 1
  %3783 = extractvalue %dx.types.CBufRet.f32 %3780, 2
  %3784 = fsub fast float %3765, %3781
  %3785 = fsub fast float %3766, %3782
  %3786 = fsub fast float %3767, %3783
  %3787 = fsub fast float %146, %3784
  %3788 = fsub fast float %147, %3785
  %3789 = fsub fast float %148, %3786
  %3790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3768, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3794 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %3791, float %3792, float %3793)  ; Dot3(ax,ay,az,bx,by,bz)
  %3795 = add i32 %3763, 24
  %3796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3795, i32 undef)  ; BufferLoad(srv,index,wot)
  %3797 = extractvalue %dx.types.ResRet.f32 %3796, 0
  %3798 = extractvalue %dx.types.ResRet.f32 %3796, 1
  %3799 = extractvalue %dx.types.ResRet.f32 %3796, 2
  %3800 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %3797, float %3798, float %3799)  ; Dot3(ax,ay,az,bx,by,bz)
  %3801 = add i32 %3763, 36
  %3802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.f32 %3802, 0
  %3804 = extractvalue %dx.types.ResRet.f32 %3802, 1
  %3805 = extractvalue %dx.types.ResRet.f32 %3802, 2
  %3806 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %3803, float %3804, float %3805)  ; Dot3(ax,ay,az,bx,by,bz)
  %3807 = call float @dx.op.unary.f32(i32 6, float %3794)  ; FAbs(value)
  %3808 = call float @dx.op.unary.f32(i32 6, float %3800)  ; FAbs(value)
  %3809 = call float @dx.op.unary.f32(i32 6, float %3806)  ; FAbs(value)
  %3810 = fsub fast float %3771, %3807
  %3811 = fsub fast float %3772, %3808
  %3812 = fsub fast float %3773, %3809
  %3813 = fmul fast float %3810, %3739
  %3814 = fmul fast float %3811, %3740
  %3815 = fmul fast float %3812, %3741
  %3816 = call float @dx.op.binary.f32(i32 36, float %3814, float %3815)  ; FMin(a,b)
  %3817 = call float @dx.op.binary.f32(i32 36, float %3813, float %3816)  ; FMin(a,b)
  %3818 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3819 = call float @dx.op.binary.f32(i32 36, float %3722, float %3818)  ; FMin(a,b)
  %3820 = uitofp i1 %3779 to float
  %3821 = fadd fast float %3637, 1.000000e+00
  %3822 = fsub fast float %3821, %3820
  %3823 = fmul fast float %3819, %3822
  %3824 = fcmp fast ogt float %3823, 0.000000e+00
  br i1 %3824, label %3831, label %3825

; <label>:3825                                    ; preds = %3973, %3718
  %3826 = phi float [ %4037, %3973 ], [ %3719, %3718 ]
  %3827 = phi float [ %4038, %3973 ], [ %3720, %3718 ]
  %3828 = phi float [ %4039, %3973 ], [ %3721, %3718 ]
  %3829 = phi float [ %4040, %3973 ], [ %3722, %3718 ]
  %3830 = icmp eq i32 %3723, %3727
  br i1 %3830, label %4041, label %3718

; <label>:3831                                    ; preds = %3718
  br i1 %3776, label %3889, label %3832

; <label>:3832                                    ; preds = %3831
  %3833 = fsub fast float -0.000000e+00, %3791
  %3834 = fsub fast float -0.000000e+00, %3792
  %3835 = fsub fast float -0.000000e+00, %3793
  %3836 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3672, float %3673, float %3833, float %3834, float %3835)  ; Dot3(ax,ay,az,bx,by,bz)
  %3837 = fsub fast float -0.000000e+00, %3836
  %3838 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %3833, float %3834, float %3835)  ; Dot3(ax,ay,az,bx,by,bz)
  %3839 = fadd fast float %3838, %3754
  %3840 = fadd fast float %3753, %3838
  %3841 = fsub fast float -0.000000e+00, %3840
  %3842 = fcmp ogt float %3836, -0.000000e+00
  %3843 = select i1 %3842, float %3841, float %3839
  %3844 = call float @dx.op.unary.f32(i32 6, float %3837)  ; FAbs(value)
  %3845 = fdiv fast float 1.000000e+00, %3844
  %3846 = fmul fast float %3843, %3845
  %3847 = call float @dx.op.binary.f32(i32 35, float %3846, float 0.000000e+00)  ; FMax(a,b)
  %3848 = fsub fast float -0.000000e+00, %3797
  %3849 = fsub fast float -0.000000e+00, %3798
  %3850 = fsub fast float -0.000000e+00, %3799
  %3851 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3672, float %3673, float %3848, float %3849, float %3850)  ; Dot3(ax,ay,az,bx,by,bz)
  %3852 = fsub fast float -0.000000e+00, %3851
  %3853 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %3848, float %3849, float %3850)  ; Dot3(ax,ay,az,bx,by,bz)
  %3854 = fadd fast float %3853, %3758
  %3855 = fadd fast float %3757, %3853
  %3856 = fsub fast float -0.000000e+00, %3855
  %3857 = fcmp ogt float %3851, -0.000000e+00
  %3858 = select i1 %3857, float %3856, float %3854
  %3859 = call float @dx.op.unary.f32(i32 6, float %3852)  ; FAbs(value)
  %3860 = fdiv fast float 1.000000e+00, %3859
  %3861 = fmul fast float %3858, %3860
  %3862 = call float @dx.op.binary.f32(i32 35, float %3861, float 0.000000e+00)  ; FMax(a,b)
  %3863 = fsub fast float -0.000000e+00, %3803
  %3864 = fsub fast float -0.000000e+00, %3804
  %3865 = fsub fast float -0.000000e+00, %3805
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3672, float %3673, float %3863, float %3864, float %3865)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = fsub fast float -0.000000e+00, %3866
  %3868 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3789, float %3863, float %3864, float %3865)  ; Dot3(ax,ay,az,bx,by,bz)
  %3869 = fadd fast float %3868, %3762
  %3870 = fadd fast float %3761, %3868
  %3871 = fsub fast float -0.000000e+00, %3870
  %3872 = fcmp ogt float %3866, -0.000000e+00
  %3873 = select i1 %3872, float %3871, float %3869
  %3874 = call float @dx.op.unary.f32(i32 6, float %3867)  ; FAbs(value)
  %3875 = fdiv fast float 1.000000e+00, %3874
  %3876 = fmul fast float %3873, %3875
  %3877 = call float @dx.op.binary.f32(i32 35, float %3876, float 0.000000e+00)  ; FMax(a,b)
  %3878 = call float @dx.op.binary.f32(i32 36, float %3862, float %3877)  ; FMin(a,b)
  %3879 = call float @dx.op.binary.f32(i32 36, float %3847, float %3878)  ; FMin(a,b)
  %3880 = fmul fast float %3879, %3671
  %3881 = fmul fast float %3879, %3672
  %3882 = fmul fast float %3879, %3673
  %3883 = fadd fast float %3880, %146
  %3884 = fadd fast float %3881, %147
  %3885 = fadd fast float %3882, %148
  %3886 = fsub fast float %3883, %3731
  %3887 = fsub fast float %3884, %3732
  %3888 = fsub fast float %3885, %3733
  br label %3896

; <label>:3889                                    ; preds = %3831
  %3890 = fmul fast float %3671, 8.096000e+03
  %3891 = fmul fast float %3672, 8.096000e+03
  %3892 = fmul fast float %3673, 8.096000e+03
  %3893 = fadd fast float %3890, %146
  %3894 = fadd fast float %3891, %147
  %3895 = fadd fast float %3892, %148
  br label %3896

; <label>:3896                                    ; preds = %3889, %3832
  %3897 = phi float [ %3671, %3889 ], [ %3886, %3832 ]
  %3898 = phi float [ %3672, %3889 ], [ %3887, %3832 ]
  %3899 = phi float [ %3673, %3889 ], [ %3888, %3832 ]
  %3900 = phi float [ %3893, %3889 ], [ %3883, %3832 ]
  %3901 = phi float [ %3894, %3889 ], [ %3884, %3832 ]
  %3902 = phi float [ %3895, %3889 ], [ %3885, %3832 ]
  %3903 = fcmp fast olt float %3750, 1.000000e+00
  br i1 %3903, label %3904, label %3935, !dx.controlflow.hints !111

; <label>:3904                                    ; preds = %3896
  %3905 = fmul fast float %3899, %3748
  %3906 = fmul fast float %3898, %3749
  %3907 = fsub fast float %3905, %3906
  %3908 = fmul fast float %3897, %3749
  %3909 = fmul fast float %3899, %3747
  %3910 = fsub fast float %3908, %3909
  %3911 = fmul fast float %3898, %3747
  %3912 = fmul fast float %3897, %3748
  %3913 = fsub fast float %3911, %3912
  %3914 = fmul fast float %3907, 2.000000e+00
  %3915 = fmul fast float %3910, 2.000000e+00
  %3916 = fmul fast float %3913, 2.000000e+00
  %3917 = fmul fast float %3914, %3750
  %3918 = fmul fast float %3915, %3750
  %3919 = fmul fast float %3916, %3750
  %3920 = fmul fast float %3916, %3748
  %3921 = fmul fast float %3915, %3749
  %3922 = fmul fast float %3914, %3749
  %3923 = fmul fast float %3916, %3747
  %3924 = fmul fast float %3915, %3747
  %3925 = fmul fast float %3914, %3748
  %3926 = fadd fast float %3920, %3897
  %3927 = fadd fast float %3926, %3917
  %3928 = fsub fast float %3927, %3921
  %3929 = fsub fast float %3898, %3923
  %3930 = fadd fast float %3929, %3918
  %3931 = fadd fast float %3930, %3922
  %3932 = fadd fast float %3919, %3899
  %3933 = fsub fast float %3932, %3925
  %3934 = fadd fast float %3933, %3924
  br label %3935

; <label>:3935                                    ; preds = %3904, %3896
  %3936 = phi float [ %3928, %3904 ], [ %3897, %3896 ]
  %3937 = phi float [ %3931, %3904 ], [ %3898, %3896 ]
  %3938 = phi float [ %3934, %3904 ], [ %3899, %3896 ]
  br i1 %3776, label %3970, label %3939

; <label>:3939                                    ; preds = %3935
  %3940 = fmul fast float %2240, 0x400187C840000000
  %3941 = fadd fast float %3940, 0xC00EFC2120000000
  %3942 = fmul fast float %3941, %2240
  %3943 = fadd fast float %3942, 0x3FE5D16340000000
  %3944 = fmul fast float %3943, %2240
  %3945 = fadd fast float %3944, 1.000000e+00
  %3946 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3947 = fsub fast float %3900, %146
  %3948 = fsub fast float %3901, %147
  %3949 = fsub fast float %3902, %148
  %3950 = fsub fast float %3900, %3731
  %3951 = fsub fast float %3901, %3732
  %3952 = fsub fast float %3902, %3733
  %3953 = call float @dx.op.dot3.f32(i32 55, float %3947, float %3948, float %3949, float %3947, float %3948, float %3949)  ; Dot3(ax,ay,az,bx,by,bz)
  %3954 = call float @dx.op.dot3.f32(i32 55, float %3950, float %3951, float %3952, float %3950, float %3951, float %3952)  ; Dot3(ax,ay,az,bx,by,bz)
  %3955 = fadd fast float %3954, 0x3EE4F8B580000000
  %3956 = fdiv fast float %3953, %3955
  %3957 = bitcast float %3956 to i32
  %3958 = ashr i32 %3957, 1
  %3959 = add nsw i32 %3958, 532487669
  %3960 = bitcast i32 %3959 to float
  %3961 = fmul fast float %3960, %3946
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  %3963 = fmul fast float %3962, 0x4009981AE0000000
  %3964 = fsub fast float 0x40111BBD80000000, %3963
  %3965 = fmul fast float %3964, %3962
  %3966 = fadd fast float %3965, 0xC0009F6020000000
  %3967 = fmul fast float %3966, %3962
  %3968 = fadd fast float %3967, 1.000000e+00
  %3969 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  br label %3973

; <label>:3970                                    ; preds = %3935
  %3971 = icmp ne i32 %3777, -1
  %3972 = zext i1 %3971 to i32
  br label %3973

; <label>:3973                                    ; preds = %3970, %3939
  %3974 = phi float [ %2240, %3970 ], [ %3969, %3939 ]
  %3975 = phi i32 [ %3972, %3970 ], [ 0, %3939 ]
  %3976 = fmul float %3974, 5.000000e+00
  %3977 = fsub float 5.000000e+00, %3976
  %3978 = icmp ne i32 %3975, 0
  %3979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3979, 3
  %3981 = fadd fast float %3980, %3977
  %3982 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3981)  ; FMax(a,b)
  %3983 = call float @dx.op.unary.f32(i32 6, float %3936)  ; FAbs(value)
  %3984 = call float @dx.op.unary.f32(i32 6, float %3937)  ; FAbs(value)
  %3985 = fadd fast float %3984, %3983
  %3986 = call float @dx.op.unary.f32(i32 6, float %3938)  ; FAbs(value)
  %3987 = fadd fast float %3985, %3986
  %3988 = fcmp fast oeq float %3987, 0.000000e+00
  %3989 = fdiv fast float 1.000000e+00, %3987
  %3990 = select i1 %3988, float 1.000000e+00, float %3989
  %3991 = fmul fast float %3990, %3936
  %3992 = fmul fast float %3990, %3937
  %3993 = call float @dx.op.unary.f32(i32 6, float %3992)  ; FAbs(value)
  %3994 = call float @dx.op.unary.f32(i32 6, float %3991)  ; FAbs(value)
  %3995 = fsub fast float 1.000000e+00, %3993
  %3996 = fsub fast float 1.000000e+00, %3994
  %3997 = fcmp fast oge float %3991, 0.000000e+00
  %3998 = fcmp fast oge float %3992, 0.000000e+00
  %3999 = select i1 %3997, float 1.000000e+00, float -1.000000e+00
  %4000 = select i1 %3998, float 1.000000e+00, float -1.000000e+00
  %4001 = fcmp fast ole float %3938, 0.000000e+00
  %4002 = fmul fast float %3999, %3995
  %4003 = fmul fast float %4000, %3996
  %4004 = select i1 %4001, float %4002, float %3991
  %4005 = select i1 %4001, float %4003, float %3992
  %4006 = fmul fast float %4004, 5.000000e-01
  %4007 = fmul fast float %4005, 5.000000e-01
  %4008 = fadd fast float %4006, 5.000000e-01
  %4009 = fadd fast float %4007, 5.000000e-01
  %4010 = uitofp i32 %3774 to float
  %4011 = call float @dx.op.binary.f32(i32 36, float %3982, float 3.000000e+00)  ; FMin(a,b)
  %4012 = fadd fast float %4011, 2.000000e+00
  %4013 = call float @dx.op.unary.f32(i32 21, float %4012)  ; Exp(value)
  %4014 = extractvalue %dx.types.CBufRet.f32 %3979, 1
  %4015 = fmul fast float %4014, %4013
  %4016 = fmul fast float %4015, 2.000000e+00
  %4017 = fsub fast float 1.000000e+00, %4016
  %4018 = fmul fast float %4008, %4017
  %4019 = fmul fast float %4009, %4017
  %4020 = fadd fast float %4018, %4015
  %4021 = fadd fast float %4019, %4015
  %4022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %4020, float %4021, float %4010, float undef, i32 0, i32 0, i32 undef, float %3982)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = extractvalue %dx.types.ResRet.f32 %4022, 1
  %4025 = extractvalue %dx.types.ResRet.f32 %4022, 2
  %4026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4027 = extractvalue %dx.types.CBufRet.f32 %4026, 3
  %4028 = fmul fast float %4027, %3744
  %4029 = call float @dx.op.binary.f32(i32 36, float %3463, float %4028)  ; FMin(a,b)
  %4030 = select i1 %3978, float %4029, float %4028
  %4031 = fmul fast float %4023, %3823
  %4032 = fmul fast float %4031, %4030
  %4033 = fmul fast float %4024, %3823
  %4034 = fmul fast float %4033, %4030
  %4035 = fmul fast float %4025, %3823
  %4036 = fmul fast float %4035, %4030
  %4037 = fadd fast float %4032, %3719
  %4038 = fadd fast float %4034, %3720
  %4039 = fadd fast float %4036, %3721
  %4040 = fsub fast float %3722, %3823
  br label %3825

; <label>:4041                                    ; preds = %3825
  br label %4042

; <label>:4042                                    ; preds = %4041, %3688
  %4043 = phi float [ %3689, %3688 ], [ %3826, %4041 ]
  %4044 = phi float [ %3690, %3688 ], [ %3827, %4041 ]
  %4045 = phi float [ %3691, %3688 ], [ %3828, %4041 ]
  %4046 = phi float [ %3692, %3688 ], [ %3829, %4041 ]
  %4047 = add i32 %3693, 1
  %4048 = icmp ugt i32 %4047, %3685
  br i1 %4048, label %4049, label %3688, !llvm.loop !112

; <label>:4049                                    ; preds = %4042
  br label %4050

; <label>:4050                                    ; preds = %4049, %3670
  %4051 = phi float [ 0.000000e+00, %3670 ], [ %4043, %4049 ]
  %4052 = phi float [ 0.000000e+00, %3670 ], [ %4044, %4049 ]
  %4053 = phi float [ 0.000000e+00, %3670 ], [ %4045, %4049 ]
  %4054 = call float @dx.op.dot3.f32(i32 55, float %4051, float %4052, float %4053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4055 = select i1 %237, float 0.000000e+00, float %4051
  %4056 = select i1 %237, float %4054, float %4052
  %4057 = select i1 %237, float 0.000000e+00, float %4053
  %4058 = fcmp fast olt float %3596, 0.000000e+00
  %4059 = call float @dx.op.unary.f32(i32 6, float %3596)  ; FAbs(value)
  %4060 = fmul fast float %4059, %3525
  %4061 = fmul fast float %4059, %3526
  %4062 = fmul fast float %4059, %3527
  %4063 = select i1 %4058, float %3525, float %4060
  %4064 = select i1 %4058, float %3526, float %4061
  %4065 = select i1 %4058, float %3527, float %4062
  %4066 = fsub fast float 1.000000e+00, %4059
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = fmul fast float %4067, %4055
  %4069 = fmul fast float %4067, %4056
  %4070 = fmul fast float %4067, %4057
  %4071 = fadd fast float %4063, %4068
  %4072 = fadd fast float %4064, %4069
  %4073 = fadd fast float %4065, %4070
  br label %4074

; <label>:4074                                    ; preds = %4050, %3579
  %4075 = phi float [ %3525, %3579 ], [ %4071, %4050 ]
  %4076 = phi float [ %3526, %3579 ], [ %4072, %4050 ]
  %4077 = phi float [ %3527, %3579 ], [ %4073, %4050 ]
  %4078 = fmul fast float %3585, %3521
  %4079 = fmul fast float %3585, %3522
  %4080 = fmul fast float %3585, %3523
  %4081 = call float @dx.op.dot3.f32(i32 55, float %2231, float %2232, float %2233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = fcmp fast ogt float %4081, 0x3E7FF19E20000000
  %4083 = fdiv fast float 1.000000e+00, %4081
  %4084 = select i1 %4082, float %4083, float 0.000000e+00
  %4085 = fmul fast float %4084, %2231
  %4086 = fmul fast float %4084, %2232
  %4087 = fmul fast float %4084, %2233
  %4088 = fadd fast float %4085, -1.000000e+00
  %4089 = fadd fast float %4086, -1.000000e+00
  %4090 = fadd fast float %4087, -1.000000e+00
  %4091 = fmul fast float %4088, 5.000000e-01
  %4092 = fmul fast float %4089, 5.000000e-01
  %4093 = fmul fast float %4090, 5.000000e-01
  %4094 = fadd fast float %4091, 1.000000e+00
  %4095 = fadd fast float %4092, 1.000000e+00
  %4096 = fadd fast float %4093, 1.000000e+00
  %4097 = call float @dx.op.binary.f32(i32 35, float %2245, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4098 = fdiv fast float %1055, %4097
  %4099 = fcmp fast olt float %1653, 1.270000e+02
  %4100 = fcmp fast olt float %1654, 1.270000e+02
  %4101 = fcmp fast olt float %1655, 1.270000e+02
  %4102 = fmul fast float %1653, 0xBFF7154760000000
  %4103 = fmul fast float %4102, %4098
  %4104 = fmul fast float %1654, 0xBFF7154760000000
  %4105 = fmul fast float %4104, %4098
  %4106 = fmul fast float %1655, 0xBFF7154760000000
  %4107 = fmul fast float %4106, %4098
  %4108 = call float @dx.op.unary.f32(i32 21, float %4103)  ; Exp(value)
  %4109 = call float @dx.op.unary.f32(i32 21, float %4105)  ; Exp(value)
  %4110 = call float @dx.op.unary.f32(i32 21, float %4107)  ; Exp(value)
  %4111 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4112 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4113 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4114 = select i1 %4099, float %4111, float 0.000000e+00
  %4115 = select i1 %4100, float %4112, float 0.000000e+00
  %4116 = select i1 %4101, float %4113, float 0.000000e+00
  %4117 = fmul fast float %4114, %3585
  %4118 = fmul fast float %4115, %3585
  %4119 = fmul fast float %4116, %3585
  %4120 = fadd fast float %4117, -1.000000e+00
  %4121 = fadd fast float %4118, -1.000000e+00
  %4122 = fadd fast float %4119, -1.000000e+00
  %4123 = fmul fast float %4075, %3580
  %4124 = fmul fast float %4076, %3581
  %4125 = fmul fast float %4077, %3582
  %4126 = fsub fast float 1.000000e+00, %2245
  %4127 = bitcast float %4126 to i32
  %4128 = sitofp i32 %4127 to float
  %4129 = fmul fast float %4128, 5.000000e+00
  %4130 = fadd fast float %4129, 0xC1EFBF8940000000
  %4131 = fptosi float %4130 to i32
  %4132 = bitcast i32 %4131 to float
  %4133 = fmul fast float %4132, %1604
  %4134 = fmul fast float %3521, %4133
  %4135 = fmul fast float %4134, %3585
  %4136 = fmul fast float %4135, %4094
  %4137 = fmul fast float %3522, %4133
  %4138 = fmul fast float %4137, %3585
  %4139 = fmul fast float %4138, %4095
  %4140 = fmul fast float %3523, %4133
  %4141 = fmul fast float %4140, %3585
  %4142 = fmul fast float %4141, %4096
  %4143 = fmul fast float %4078, %1625
  %4144 = fmul fast float %4079, %1625
  %4145 = fmul fast float %4080, %1625
  %4146 = fadd fast float %4123, %1606
  %4147 = fadd fast float %4146, %4136
  %4148 = fmul fast float %4147, %1625
  %4149 = fadd fast float %4124, %1607
  %4150 = fadd fast float %4149, %4139
  %4151 = fmul fast float %4150, %1625
  %4152 = fadd fast float %4125, %1608
  %4153 = fadd fast float %4152, %4142
  %4154 = fmul fast float %4153, %1625
  %4155 = bitcast i32 %2269 to float
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4158 = fcmp fast oeq float %4157, 0.000000e+00
  br i1 %4158, label %5712, label %4159

; <label>:4159                                    ; preds = %4074
  %4160 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4161 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4162 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4166 = extractvalue %dx.types.CBufRet.f32 %4163, 2
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4170 = call float @dx.op.dot3.f32(i32 55, float %4164, float %4165, float %4166, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4171 = select i1 %237, float %4168, float %4164
  %4172 = select i1 %237, float %4170, float %4165
  %4173 = select i1 %237, float %4169, float %4166
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 2
  %4176 = fmul fast float %4175, %76
  %4177 = fmul fast float %4175, %77
  %4178 = fmul fast float %4175, %78
  %4179 = fadd fast float %4176, %146
  %4180 = fadd fast float %4177, %147
  %4181 = fadd fast float %4178, %148
  %4182 = fcmp fast olt float %4157, 0.000000e+00
  br i1 %4182, label %5278, label %4183

; <label>:4183                                    ; preds = %4159
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.CBufRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.CBufRet.f32 %4184, 2
  %4188 = extractvalue %dx.types.CBufRet.f32 %4184, 3
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 0
  %4191 = extractvalue %dx.types.CBufRet.f32 %4189, 1
  %4192 = extractvalue %dx.types.CBufRet.f32 %4189, 2
  %4193 = extractvalue %dx.types.CBufRet.f32 %4189, 3
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.CBufRet.f32 %4194, 1
  %4197 = extractvalue %dx.types.CBufRet.f32 %4194, 2
  %4198 = extractvalue %dx.types.CBufRet.f32 %4194, 3
  %4199 = fmul fast float %4185, %4179
  %4200 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4186, float %4199)  ; FMad(a,b,c)
  %4201 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4187, float %4200)  ; FMad(a,b,c)
  %4202 = fadd fast float %4201, %4188
  %4203 = fmul fast float %4190, %4179
  %4204 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4191, float %4203)  ; FMad(a,b,c)
  %4205 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4192, float %4204)  ; FMad(a,b,c)
  %4206 = fadd fast float %4205, %4193
  %4207 = fmul fast float %4195, %4179
  %4208 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4196, float %4207)  ; FMad(a,b,c)
  %4209 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4197, float %4208)  ; FMad(a,b,c)
  %4210 = fadd fast float %4209, %4198
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 0
  %4213 = extractvalue %dx.types.CBufRet.f32 %4211, 1
  %4214 = extractvalue %dx.types.CBufRet.f32 %4211, 3
  %4215 = fmul fast float %4214, %4202
  %4216 = fmul fast float %4214, %4206
  %4217 = fadd fast float %4215, %4212
  %4218 = fadd fast float %4216, %4213
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4223 = fmul fast float %4222, %4202
  %4224 = fmul fast float %4222, %4206
  %4225 = fadd fast float %4223, %4220
  %4226 = fadd fast float %4224, %4221
  %4227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.f32 %4227, 1
  %4229 = fsub fast float %4228, %4210
  %4230 = extractvalue %dx.types.CBufRet.f32 %4227, 2
  %4231 = fmul fast float %4229, %4230
  %4232 = fsub fast float 1.000000e+00, %4231
  %4233 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 2
  %4237 = fadd fast float %4236, %4234
  %4238 = fcmp fast ogt float %4237, 0.000000e+00
  br i1 %4238, label %4239, label %4263

; <label>:4239                                    ; preds = %4183
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.CBufRet.f32 %4240, 1
  %4243 = fsub fast float %4225, %4241
  %4244 = fsub fast float %4226, %4242
  %4245 = fcmp fast olt float %4243, 0.000000e+00
  %4246 = fcmp fast olt float %4244, 0.000000e+00
  %4247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.f32 %4247, 0
  %4249 = extractvalue %dx.types.CBufRet.f32 %4247, 1
  %4250 = extractvalue %dx.types.CBufRet.f32 %4247, 2
  %4251 = extractvalue %dx.types.CBufRet.f32 %4247, 3
  %4252 = select i1 %4245, float %4248, float %4250
  %4253 = select i1 %4246, float %4249, float %4251
  %4254 = fmul fast float %4252, %4243
  %4255 = fmul fast float %4253, %4244
  %4256 = call float @dx.op.unary.f32(i32 6, float %4254)  ; FAbs(value)
  %4257 = call float @dx.op.unary.f32(i32 6, float %4255)  ; FAbs(value)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4174, 0
  %4259 = call float @dx.op.binary.f32(i32 35, float %4256, float %4257)  ; FMax(a,b)
  %4260 = fsub fast float %4258, %4259
  %4261 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4262 = fmul fast float %4261, %4233
  br label %4263

; <label>:4263                                    ; preds = %4239, %4183
  %4264 = phi float [ %4262, %4239 ], [ 0.000000e+00, %4183 ]
  %4265 = extractvalue %dx.types.CBufRet.f32 %4211, 2
  %4266 = extractvalue %dx.types.CBufRet.f32 %4235, 1
  %4267 = fadd fast float %4266, %4265
  %4268 = fcmp fast ogt float %4267, 0.000000e+00
  %4269 = extractvalue %dx.types.CBufRet.f32 %4174, 0
  br i1 %4268, label %4270, label %4293

; <label>:4270                                    ; preds = %4263
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4273 = extractvalue %dx.types.CBufRet.f32 %4271, 1
  %4274 = fsub fast float %4217, %4272
  %4275 = fsub fast float %4218, %4273
  %4276 = fcmp fast olt float %4274, 0.000000e+00
  %4277 = fcmp fast olt float %4275, 0.000000e+00
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 0
  %4280 = extractvalue %dx.types.CBufRet.f32 %4278, 1
  %4281 = extractvalue %dx.types.CBufRet.f32 %4278, 2
  %4282 = extractvalue %dx.types.CBufRet.f32 %4278, 3
  %4283 = select i1 %4276, float %4279, float %4281
  %4284 = select i1 %4277, float %4280, float %4282
  %4285 = fmul fast float %4283, %4274
  %4286 = fmul fast float %4284, %4275
  %4287 = call float @dx.op.unary.f32(i32 6, float %4285)  ; FAbs(value)
  %4288 = call float @dx.op.unary.f32(i32 6, float %4286)  ; FAbs(value)
  %4289 = call float @dx.op.binary.f32(i32 35, float %4287, float %4288)  ; FMax(a,b)
  %4290 = fsub fast float %4269, %4289
  %4291 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4292 = fmul fast float %4291, %4233
  br label %4293

; <label>:4293                                    ; preds = %4270, %4263
  %4294 = phi float [ %4292, %4270 ], [ 0.000000e+00, %4263 ]
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 1
  %4297 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.CBufRet.f32 %4298, 1
  %4301 = fsub fast float %4202, %4299
  %4302 = fsub fast float %4206, %4300
  %4303 = fcmp fast olt float %4301, 0.000000e+00
  %4304 = fcmp fast olt float %4302, 0.000000e+00
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.CBufRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.CBufRet.f32 %4305, 2
  %4309 = extractvalue %dx.types.CBufRet.f32 %4305, 3
  %4310 = select i1 %4303, float %4306, float %4308
  %4311 = select i1 %4304, float %4307, float %4309
  %4312 = fmul fast float %4310, %4301
  %4313 = fmul fast float %4311, %4302
  %4314 = call float @dx.op.unary.f32(i32 6, float %4312)  ; FAbs(value)
  %4315 = call float @dx.op.unary.f32(i32 6, float %4313)  ; FAbs(value)
  %4316 = call float @dx.op.binary.f32(i32 35, float %4314, float %4315)  ; FMax(a,b)
  %4317 = fsub fast float %4269, %4316
  %4318 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4319 = call float @dx.op.binary.f32(i32 36, float %4318, float %4297)  ; FMin(a,b)
  %4320 = fmul fast float %4319, %4233
  %4321 = fsub fast float %4294, %4320
  %4322 = fsub fast float %4264, %4294
  %4323 = fsub fast float %4322, %4320
  %4324 = call float @dx.op.binary.f32(i32 35, float %4294, float %4264)  ; FMax(a,b)
  %4325 = call float @dx.op.binary.f32(i32 35, float %4320, float %4324)  ; FMax(a,b)
  %4326 = fcmp fast olt float %4325, 1.000000e+00
  br i1 %4326, label %4327, label %4725, !dx.controlflow.hints !114

; <label>:4327                                    ; preds = %4293
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 0
  %4330 = fcmp fast une float %4329, 0.000000e+00
  br i1 %4330, label %4331, label %4725, !dx.controlflow.hints !115

; <label>:4331                                    ; preds = %4327
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4334 = extractvalue %dx.types.CBufRet.f32 %4332, 1
  %4335 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4336 = extractvalue %dx.types.CBufRet.f32 %4332, 3
  %4337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.f32 %4337, 0
  %4339 = extractvalue %dx.types.CBufRet.f32 %4337, 1
  %4340 = extractvalue %dx.types.CBufRet.f32 %4337, 2
  %4341 = extractvalue %dx.types.CBufRet.f32 %4337, 3
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  %4344 = extractvalue %dx.types.CBufRet.f32 %4342, 1
  %4345 = extractvalue %dx.types.CBufRet.f32 %4342, 2
  %4346 = extractvalue %dx.types.CBufRet.f32 %4342, 3
  %4347 = fmul fast float %4333, %4179
  %4348 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4334, float %4347)  ; FMad(a,b,c)
  %4349 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4335, float %4348)  ; FMad(a,b,c)
  %4350 = fadd fast float %4349, %4336
  %4351 = fmul fast float %4338, %4179
  %4352 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4339, float %4351)  ; FMad(a,b,c)
  %4353 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4340, float %4352)  ; FMad(a,b,c)
  %4354 = fadd fast float %4353, %4341
  %4355 = fmul fast float %4343, %4179
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4344, float %4355)  ; FMad(a,b,c)
  %4357 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4345, float %4356)  ; FMad(a,b,c)
  %4358 = fadd fast float %4357, %4346
  %4359 = fcmp fast oge float %4350, 1.000000e+00
  %4360 = fcmp fast oge float %4354, 1.000000e+00
  %4361 = or i1 %4359, %4360
  %4362 = fcmp fast olt float %4350, 0.000000e+00
  %4363 = fcmp fast olt float %4354, 0.000000e+00
  %4364 = or i1 %4362, %4363
  %4365 = or i1 %4361, %4364
  br i1 %4365, label %4725, label %4366, !dx.controlflow.hints !116

; <label>:4366                                    ; preds = %4331
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 0
  %4369 = extractvalue %dx.types.CBufRet.f32 %4367, 1
  %4370 = extractvalue %dx.types.CBufRet.f32 %4367, 2
  %4371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.i32 %4371, 2
  %4373 = uitofp i32 %4372 to float
  %4374 = extractvalue %dx.types.CBufRet.i32 %4371, 3
  %4375 = uitofp i32 %4374 to float
  %4376 = extractvalue %dx.types.CBufRet.f32 %4367, 3
  %4377 = fmul fast float %4376, 2.000000e+00
  %4378 = fsub fast float %4350, %4368
  %4379 = fsub fast float %4354, %4369
  %4380 = fmul fast float %4377, %4378
  %4381 = fmul fast float %4377, %4379
  %4382 = fdiv fast float 1.000000e+00, %4162
  %4383 = fmul fast float %4381, %4382
  %4384 = call float @dx.op.unary.f32(i32 6, float %4383)  ; FAbs(value)
  %4385 = fmul fast float %4370, %4181
  %4386 = fmul fast float %4385, %4377
  %4387 = call float @dx.op.unary.f32(i32 6, float %4386)  ; FAbs(value)
  %4388 = call float @dx.op.unary.f32(i32 6, float %4380)  ; FAbs(value)
  %4389 = call float @dx.op.binary.f32(i32 35, float %4387, float %4384)  ; FMax(a,b)
  %4390 = call float @dx.op.binary.f32(i32 35, float %4388, float %4389)  ; FMax(a,b)
  %4391 = fmul fast float %4390, 2.000000e+00
  %4392 = call float @dx.op.unary.f32(i32 23, float %4391)  ; Log(value)
  %4393 = call float @dx.op.binary.f32(i32 35, float %4392, float %4373)  ; FMax(a,b)
  %4394 = call float @dx.op.unary.f32(i32 22, float %4393)  ; Frc(value)
  %4395 = fadd fast float %4394, 0xBFEA666660000000
  %4396 = fmul fast float %4395, 8.000000e+00
  %4397 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4398 = call float @dx.op.unary.f32(i32 27, float %4393)  ; Round_ni(value)
  %4399 = fadd fast float %4398, %4397
  %4400 = call float @dx.op.binary.f32(i32 36, float %4399, float %4375)  ; FMin(a,b)
  %4401 = call float @dx.op.unary.f32(i32 27, float %4400)  ; Round_ni(value)
  %4402 = fsub fast float -0.000000e+00, %4401
  %4403 = call float @dx.op.unary.f32(i32 21, float %4402)  ; Exp(value)
  %4404 = fmul fast float %4403, %4377
  %4405 = fmul fast float %4404, %4350
  %4406 = fmul fast float %4404, %4354
  %4407 = fmul fast float %4405, 2.500000e-01
  %4408 = fmul fast float %4406, 2.500000e-01
  %4409 = fadd fast float %4407, 5.000000e-01
  %4410 = fadd fast float %4408, 5.000000e-01
  %4411 = fsub fast float %4375, %4373
  %4412 = fptoui float %4411 to i32
  %4413 = add i32 %4412, 320
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4413)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.CBufRet.f32 %4414, 1
  %4417 = fcmp fast une float %4400, %4375
  %4418 = fsub fast float %4350, %4415
  %4419 = fsub fast float %4354, %4416
  %4420 = call float @dx.op.unary.f32(i32 6, float %4418)  ; FAbs(value)
  %4421 = call float @dx.op.unary.f32(i32 6, float %4419)  ; FAbs(value)
  %4422 = fmul fast float %4420, %4404
  %4423 = fmul fast float %4421, %4404
  %4424 = fcmp fast olt float %4422, 1.000000e+00
  %4425 = fcmp fast olt float %4423, 1.000000e+00
  %4426 = and i1 %4424, %4425
  %4427 = or i1 %4417, %4426
  br i1 %4427, label %4428, label %4725, !dx.controlflow.hints !117

; <label>:4428                                    ; preds = %4366
  %4429 = fmul fast float %4406, 5.000000e-01
  %4430 = fmul fast float %4405, 5.000000e-01
  %4431 = fadd fast float %4429, 5.000000e-01
  %4432 = fadd fast float %4430, 5.000000e-01
  %4433 = sitofp i32 %4372 to float
  %4434 = fsub fast float %4400, %4433
  %4435 = call float @dx.op.unary.f32(i32 27, float %4434)  ; Round_ni(value)
  %4436 = call float @dx.op.unary.f32(i32 22, float %4400)  ; Frc(value)
  %4437 = call float @dx.op.unary.f32(i32 22, float %4432)  ; Frc(value)
  %4438 = call float @dx.op.unary.f32(i32 22, float %4431)  ; Frc(value)
  %4439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4437, float %4438, float %4435, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4440 = extractvalue %dx.types.ResRet.f32 %4439, 0
  %4441 = extractvalue %dx.types.ResRet.f32 %4439, 1
  %4442 = extractvalue %dx.types.ResRet.f32 %4439, 2
  %4443 = extractvalue %dx.types.ResRet.f32 %4439, 3
  %4444 = fcmp fast ogt float %4436, 0.000000e+00
  br i1 %4444, label %4445, label %4466, !dx.controlflow.hints !118

; <label>:4445                                    ; preds = %4428
  %4446 = fadd fast float %4435, 1.000000e+00
  %4447 = call float @dx.op.unary.f32(i32 22, float %4409)  ; Frc(value)
  %4448 = call float @dx.op.unary.f32(i32 22, float %4410)  ; Frc(value)
  %4449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4447, float %4448, float %4446, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4450 = extractvalue %dx.types.ResRet.f32 %4449, 0
  %4451 = extractvalue %dx.types.ResRet.f32 %4449, 1
  %4452 = extractvalue %dx.types.ResRet.f32 %4449, 2
  %4453 = extractvalue %dx.types.ResRet.f32 %4449, 3
  %4454 = fsub fast float %4450, %4440
  %4455 = fsub fast float %4451, %4441
  %4456 = fsub fast float %4452, %4442
  %4457 = fsub fast float %4453, %4443
  %4458 = fmul fast float %4454, %4436
  %4459 = fmul fast float %4455, %4436
  %4460 = fmul fast float %4456, %4436
  %4461 = fmul fast float %4457, %4436
  %4462 = fadd fast float %4458, %4440
  %4463 = fadd fast float %4459, %4441
  %4464 = fadd fast float %4460, %4442
  %4465 = fadd fast float %4461, %4443
  br label %4466

; <label>:4466                                    ; preds = %4445, %4428
  %4467 = phi float [ %4462, %4445 ], [ %4440, %4428 ]
  %4468 = phi float [ %4463, %4445 ], [ %4441, %4428 ]
  %4469 = phi float [ %4464, %4445 ], [ %4442, %4428 ]
  %4470 = phi float [ %4465, %4445 ], [ %4443, %4428 ]
  %4471 = fadd fast float %4467, -5.000000e-01
  %4472 = fadd fast float %4469, -5.000000e-01
  %4473 = fmul fast float %4471, 0xBFD5555560000000
  %4474 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4472, float %4473)  ; FMad(a,b,c)
  %4475 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4468, float 0.000000e+00)  ; FMad(a,b,c)
  %4476 = fadd fast float %4475, %4470
  %4477 = fmul fast float %4471, -7.500000e-01
  %4478 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4472, float %4477)  ; FMad(a,b,c)
  %4479 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4468, float 0.000000e+00)  ; FMad(a,b,c)
  %4480 = fadd fast float %4479, %4470
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 0
  %4483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4484 = extractvalue %dx.types.CBufRet.f32 %4483, 0
  %4485 = extractvalue %dx.types.CBufRet.f32 %4483, 1
  %4486 = extractvalue %dx.types.CBufRet.f32 %4483, 2
  %4487 = extractvalue %dx.types.CBufRet.f32 %4483, 3
  %4488 = fsub fast float %4484, %4474
  %4489 = fsub fast float %4485, %4476
  %4490 = fsub fast float %4486, %4478
  %4491 = fsub fast float %4487, %4480
  %4492 = fmul fast float %4488, %4482
  %4493 = fmul fast float %4489, %4482
  %4494 = fmul fast float %4490, %4482
  %4495 = fmul fast float %4491, %4482
  %4496 = fadd fast float %4492, %4474
  %4497 = fadd fast float %4493, %4476
  %4498 = fadd fast float %4494, %4478
  %4499 = fadd fast float %4495, %4480
  %4500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4501 = extractvalue %dx.types.ResRet.i32 %4500, 0
  %4502 = and i32 %4501, 536870911
  %4503 = uitofp i32 %4502 to float
  %4504 = fmul fast float %4503, %4350
  %4505 = fmul fast float %4503, %4354
  %4506 = fptoui float %4504 to i32
  %4507 = fptoui float %4505 to i32
  %4508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.i32 %4508, 0
  %4510 = and i32 %4509, 31
  %4511 = lshr i32 %4506, %4510
  %4512 = lshr i32 %4507, %4510
  %4513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.i32 %4513, 0
  %4515 = and i32 %4514, 31
  %4516 = shl i32 1, %4515
  %4517 = call i32 @dx.op.binary.i32(i32 40, i32 %4516, i32 4)  ; UMin(a,b)
  %4518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4519 = extractvalue %dx.types.ResRet.i32 %4518, 0
  %4520 = extractvalue %dx.types.ResRet.i32 %4518, 1
  %4521 = icmp eq i32 %4517, 0
  br i1 %4521, label %4563, label %4522

; <label>:4522                                    ; preds = %4466
  br label %4523

; <label>:4523                                    ; preds = %4551, %4522
  %4524 = phi i32 [ %4554, %4551 ], [ 0, %4522 ]
  %4525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.i32 %4525, 0
  %4527 = lshr i32 %4526, 16
  %4528 = and i32 %4527, 31
  %4529 = shl i32 %4512, %4528
  %4530 = add i32 %4529, %4511
  %4531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4532 = extractvalue %dx.types.ResRet.i32 %4531, 0
  %4533 = and i32 %4532, 31
  %4534 = shl i32 %4530, %4533
  %4535 = add i32 %4534, %4524
  %4536 = shl i32 %4535, 2
  %4537 = add i32 %4536, 32
  %4538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4537, i32 undef)  ; BufferLoad(srv,index,wot)
  %4539 = extractvalue %dx.types.ResRet.i32 %4538, 0
  %4540 = icmp slt i32 %4539, 0
  %4541 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4524
  %4542 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4524
  %4543 = bitcast float* %4541 to i32*
  %4544 = bitcast float* %4542 to i32*
  br i1 %4540, label %4545, label %4551

; <label>:4545                                    ; preds = %4523
  %4546 = and i32 %4539, 1073741823
  %4547 = add nuw nsw i32 %4546, 20
  %4548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.i32 %4548, 0
  %4550 = extractvalue %dx.types.ResRet.i32 %4548, 1
  br label %4551

; <label>:4551                                    ; preds = %4545, %4523
  %4552 = phi i32 [ %4549, %4545 ], [ %4519, %4523 ]
  %4553 = phi i32 [ %4550, %4545 ], [ %4520, %4523 ]
  store i32 %4552, i32* %4543, align 4
  store i32 %4553, i32* %4544, align 4
  %4554 = add nuw i32 %4524, 1
  %4555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.i32 %4555, 2
  %4557 = icmp eq i32 %4556, 0
  %4558 = icmp ugt i32 %4539, -1073741825
  %4559 = and i1 %4558, %4557
  %4560 = icmp ult i32 %4554, %4517
  %4561 = and i1 %4559, %4560
  br i1 %4561, label %4523, label %4562

; <label>:4562                                    ; preds = %4551
  br label %4563

; <label>:4563                                    ; preds = %4562, %4466
  %4564 = phi i32 [ 0, %4466 ], [ %4554, %4562 ]
  %4565 = extractvalue %dx.types.CBufRet.f32 %4328, 2
  %4566 = fptoui float %4565 to i32
  %4567 = icmp eq i32 %4566, 0
  br i1 %4567, label %4619, label %4568

; <label>:4568                                    ; preds = %4563
  br label %4569

; <label>:4569                                    ; preds = %4614, %4568
  %4570 = phi i32 [ %4615, %4614 ], [ %4564, %4568 ]
  %4571 = phi i32 [ %4616, %4614 ], [ 0, %4568 ]
  %4572 = lshr i32 %4571, 2
  %4573 = and i32 %4571, 3
  %4574 = add nuw nsw i32 %4572, 83
  %4575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4574)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.i32 %4575, 0
  %4577 = extractvalue %dx.types.CBufRet.i32 %4575, 1
  %4578 = extractvalue %dx.types.CBufRet.i32 %4575, 2
  %4579 = extractvalue %dx.types.CBufRet.i32 %4575, 3
  %4580 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4576, i32* %4580, align 4
  %4581 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4577, i32* %4581, align 4
  %4582 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4578, i32* %4582, align 4
  %4583 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4579, i32* %4583, align 4
  %4584 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4573
  %4585 = load i32, i32* %4584, align 4, !tbaa !119, !noalias !123
  %4586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4587 = extractvalue %dx.types.ResRet.i32 %4586, 0
  %4588 = lshr i32 %4587, 16
  %4589 = and i32 %4588, 31
  %4590 = shl i32 %4512, %4589
  %4591 = add i32 %4590, %4511
  %4592 = shl i32 %4591, 2
  %4593 = add i32 %4592, %4585
  %4594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.i32 %4594, 0
  %4596 = icmp eq i32 %4595, 0
  br i1 %4596, label %4614, label %4597

; <label>:4597                                    ; preds = %4569
  %4598 = icmp slt i32 %4595, 0
  %4599 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4570
  %4600 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4570
  %4601 = bitcast float* %4599 to i32*
  %4602 = bitcast float* %4600 to i32*
  br i1 %4598, label %4603, label %4610

; <label>:4603                                    ; preds = %4597
  %4604 = and i32 %4595, 1073741823
  %4605 = add i32 %4585, 20
  %4606 = add i32 %4605, %4604
  %4607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4606, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.i32 %4607, 0
  %4609 = extractvalue %dx.types.ResRet.i32 %4607, 1
  br label %4610

; <label>:4610                                    ; preds = %4603, %4597
  %4611 = phi i32 [ %4608, %4603 ], [ %4519, %4597 ]
  %4612 = phi i32 [ %4609, %4603 ], [ %4520, %4597 ]
  store i32 %4611, i32* %4601, align 4
  store i32 %4612, i32* %4602, align 4
  %4613 = add i32 %4570, 1
  br label %4614

; <label>:4614                                    ; preds = %4610, %4569
  %4615 = phi i32 [ %4570, %4569 ], [ %4613, %4610 ]
  %4616 = add nuw i32 %4571, 1
  %4617 = icmp eq i32 %4616, %4566
  br i1 %4617, label %4618, label %4569

; <label>:4618                                    ; preds = %4614
  br label %4619

; <label>:4619                                    ; preds = %4618, %4563
  %4620 = phi i32 [ %4564, %4563 ], [ %4615, %4618 ]
  %4621 = icmp eq i32 %4620, 1
  %4622 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %4623 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %4621, label %4624, label %4627

; <label>:4624                                    ; preds = %4619
  %4625 = load float, float* %4622, align 4
  %4626 = load float, float* %4623, align 4
  br label %4654

; <label>:4627                                    ; preds = %4619
  %4628 = load float, float* %4622, align 4
  %4629 = load float, float* %4623, align 4
  %4630 = fdiv fast float 1.000000e+00, %4629
  %4631 = fsub fast float %4628, %4630
  %4632 = icmp ugt i32 %4620, 1
  br i1 %4632, label %4633, label %4649

; <label>:4633                                    ; preds = %4627
  br label %4634

; <label>:4634                                    ; preds = %4634, %4633
  %4635 = phi float [ %4644, %4634 ], [ %4631, %4633 ]
  %4636 = phi float [ %4645, %4634 ], [ %4628, %4633 ]
  %4637 = phi i32 [ %4646, %4634 ], [ 1, %4633 ]
  %4638 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %4637
  %4639 = load float, float* %4638, align 4
  %4640 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4637
  %4641 = load float, float* %4640, align 4
  %4642 = fdiv fast float 1.000000e+00, %4641
  %4643 = fsub fast float %4639, %4642
  %4644 = call float @dx.op.binary.f32(i32 36, float %4635, float %4643)  ; FMin(a,b)
  %4645 = call float @dx.op.binary.f32(i32 35, float %4636, float %4639)  ; FMax(a,b)
  %4646 = add nuw i32 %4637, 1
  %4647 = icmp eq i32 %4646, %4620
  br i1 %4647, label %4648, label %4634

; <label>:4648                                    ; preds = %4634
  br label %4649

; <label>:4649                                    ; preds = %4648, %4627
  %4650 = phi float [ %4631, %4627 ], [ %4644, %4648 ]
  %4651 = phi float [ %4628, %4627 ], [ %4645, %4648 ]
  %4652 = fsub fast float %4651, %4650
  %4653 = fdiv fast float 1.000000e+00, %4652
  br label %4654

; <label>:4654                                    ; preds = %4649, %4624
  %4655 = phi float [ %4625, %4624 ], [ %4651, %4649 ]
  %4656 = phi float [ %4626, %4624 ], [ %4653, %4649 ]
  %4657 = fadd fast float %4358, %4655
  %4658 = fmul fast float %4657, %4656
  %4659 = call float @dx.op.unary.f32(i32 7, float %4658)  ; Saturate(value)
  %4660 = fmul fast float %4659, 2.000000e+00
  %4661 = fsub fast float 1.000000e+00, %4660
  %4662 = fmul fast float %4496, %4496
  %4663 = fsub fast float %4497, %4662
  %4664 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4663)  ; FMax(a,b)
  %4665 = fdiv fast float 1.000000e+00, %4664
  %4666 = fmul fast float %4497, %4496
  %4667 = fsub fast float %4498, %4666
  %4668 = fsub fast float %4661, %4496
  %4669 = fmul fast float %4661, %4661
  %4670 = fsub fast float %4669, %4497
  %4671 = fmul fast float %4665, %4667
  %4672 = fmul fast float %4671, %4668
  %4673 = fsub fast float %4670, %4672
  %4674 = fmul fast float %4497, %4497
  %4675 = fsub fast float %4499, %4674
  %4676 = fmul fast float %4667, %4667
  %4677 = fmul fast float %4676, %4665
  %4678 = fsub fast float %4675, %4677
  %4679 = fdiv fast float %4673, %4678
  %4680 = fmul fast float %4679, %4667
  %4681 = fsub fast float %4668, %4680
  %4682 = fmul fast float %4681, %4665
  %4683 = fmul fast float %4682, %4496
  %4684 = fsub fast float 1.000000e+00, %4683
  %4685 = fmul fast float %4679, %4497
  %4686 = fsub fast float %4684, %4685
  %4687 = fmul fast float %4682, %4682
  %4688 = fmul fast float %4679, 4.000000e+00
  %4689 = fmul fast float %4688, %4686
  %4690 = fsub fast float %4687, %4689
  %4691 = call float @dx.op.unary.f32(i32 24, float %4690)  ; Sqrt(value)
  %4692 = fcmp fast oge float %4682, 0.000000e+00
  %4693 = fsub fast float -0.000000e+00, %4691
  %4694 = select i1 %4692, float %4693, float %4691
  %4695 = fsub fast float %4694, %4682
  %4696 = fdiv fast float %4695, %4679
  %4697 = fdiv fast float %4686, %4695
  %4698 = fmul fast float %4696, 5.000000e-01
  %4699 = fmul fast float %4697, 2.000000e+00
  %4700 = select i1 %4692, float %4698, float %4699
  %4701 = select i1 %4692, float %4699, float %4698
  %4702 = call float @dx.op.binary.f32(i32 35, float %4700, float %4701)  ; FMax(a,b)
  %4703 = call float @dx.op.binary.f32(i32 36, float %4700, float %4701)  ; FMin(a,b)
  %4704 = fcmp fast ogt float %4661, %4702
  %4705 = fsub fast float %4661, %4703
  %4706 = fsub fast float %4661, %4702
  %4707 = fsub fast float %4702, %4703
  %4708 = select i1 %4704, float %4706, float %4707
  %4709 = fmul float %4705, %4708
  %4710 = select i1 %4704, float %4703, float %4661
  %4711 = fcmp fast ogt float %4661, %4703
  %4712 = fmul fast float %4710, %4702
  %4713 = fadd fast float %4710, %4702
  %4714 = fmul fast float %4713, %4496
  %4715 = fadd fast float %4712, %4497
  %4716 = fsub fast float %4715, %4714
  %4717 = fdiv fast float %4716, %4709
  %4718 = select i1 %4711, float %4717, float 0.000000e+00
  %4719 = fsub fast float 1.000000e+00, %4718
  %4720 = select i1 %4704, float %4719, float %4718
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4481, 3
  %4723 = fmul fast float %4722, %4721
  %4724 = fsub fast float 1.000000e+00, %4723
  br label %4725

; <label>:4725                                    ; preds = %4654, %4366, %4331, %4327, %4293
  %4726 = phi float [ 1.000000e+00, %4293 ], [ %4724, %4654 ], [ 1.000000e+00, %4331 ], [ 1.000000e+00, %4366 ], [ 1.000000e+00, %4327 ]
  %4727 = fcmp fast ogt float %4323, 0.000000e+00
  br i1 %4727, label %4728, label %4890, !dx.controlflow.hints !132

; <label>:4728                                    ; preds = %4725
  %4729 = fadd fast float %4236, %4210
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 2
  %4732 = extractvalue %dx.types.CBufRet.f32 %4730, 3
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 2
  %4735 = call float @dx.op.binary.f32(i32 35, float %4729, float 0.000000e+00)  ; FMax(a,b)
  %4736 = fadd fast float %4735, 0x3F10000000000000
  %4737 = fcmp fast oeq float %4734, 0.000000e+00
  br i1 %4737, label %4738, label %4805

; <label>:4738                                    ; preds = %4728
  %4739 = extractvalue %dx.types.CBufRet.f32 %4730, 1
  %4740 = extractvalue %dx.types.CBufRet.f32 %4730, 0
  %4741 = fmul fast float %4740, %4225
  %4742 = fmul fast float %4739, %4226
  %4743 = fadd fast float %4741, 5.000000e-01
  %4744 = call float @dx.op.unary.f32(i32 27, float %4743)  ; Round_ni(value)
  %4745 = fadd fast float %4742, 5.000000e-01
  %4746 = call float @dx.op.unary.f32(i32 27, float %4745)  ; Round_ni(value)
  %4747 = fsub fast float %4743, %4744
  %4748 = fsub fast float %4745, %4746
  %4749 = fadd fast float %4744, -5.000000e-01
  %4750 = fadd fast float %4746, -5.000000e-01
  %4751 = fmul fast float %4747, 2.000000e+00
  %4752 = fsub fast float 3.000000e+00, %4751
  %4753 = fadd fast float %4751, 1.000000e+00
  %4754 = fsub fast float 2.000000e+00, %4747
  %4755 = bitcast float %4752 to i32
  %4756 = sub nsw i32 2129859010, %4755
  %4757 = bitcast i32 %4756 to float
  %4758 = fmul fast float %4757, %4754
  %4759 = fadd fast float %4758, -1.000000e+00
  %4760 = bitcast float %4753 to i32
  %4761 = sub nsw i32 2129859010, %4760
  %4762 = bitcast i32 %4761 to float
  %4763 = fmul fast float %4762, %4747
  %4764 = fadd fast float %4763, 1.000000e+00
  %4765 = fmul fast float %4748, 2.000000e+00
  %4766 = fsub fast float 3.000000e+00, %4765
  %4767 = fadd fast float %4765, 1.000000e+00
  %4768 = fsub fast float 2.000000e+00, %4748
  %4769 = bitcast float %4766 to i32
  %4770 = sub nsw i32 2129859010, %4769
  %4771 = bitcast i32 %4770 to float
  %4772 = fmul fast float %4771, %4768
  %4773 = fadd fast float %4772, -1.000000e+00
  %4774 = bitcast float %4767 to i32
  %4775 = sub nsw i32 2129859010, %4774
  %4776 = bitcast i32 %4775 to float
  %4777 = fmul fast float %4776, %4748
  %4778 = fadd fast float %4777, 1.000000e+00
  %4779 = fadd fast float %4759, %4749
  %4780 = fmul fast float %4779, %4731
  %4781 = fadd fast float %4773, %4750
  %4782 = fmul fast float %4781, %4732
  %4783 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4780, float %4782, float undef, float undef, i32 0, i32 0, i32 undef, float %4736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4784 = extractvalue %dx.types.ResRet.f32 %4783, 0
  %4785 = fmul fast float %4784, %4752
  %4786 = fadd fast float %4764, %4749
  %4787 = fmul fast float %4786, %4731
  %4788 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4787, float %4782, float undef, float undef, i32 0, i32 0, i32 undef, float %4736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = fmul fast float %4789, %4753
  %4791 = fadd fast float %4778, %4750
  %4792 = fmul fast float %4791, %4732
  %4793 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4780, float %4792, float undef, float undef, i32 0, i32 0, i32 undef, float %4736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4794 = extractvalue %dx.types.ResRet.f32 %4793, 0
  %4795 = fmul fast float %4794, %4752
  %4796 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4787, float %4792, float undef, float undef, i32 0, i32 0, i32 undef, float %4736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4797 = extractvalue %dx.types.ResRet.f32 %4796, 0
  %4798 = fmul fast float %4797, %4753
  %4799 = fadd fast float %4798, %4795
  %4800 = fmul fast float %4799, %4767
  %4801 = fadd fast float %4790, %4785
  %4802 = fmul fast float %4801, %4766
  %4803 = fadd fast float %4802, %4800
  %4804 = fmul fast float %4803, 6.250000e-02
  br label %4890

; <label>:4805                                    ; preds = %4728
  %4806 = fmul fast float %248, 0x401921FB60000000
  %4807 = call float @dx.op.unary.f32(i32 13, float %4806)  ; Sin(value)
  %4808 = call float @dx.op.unary.f32(i32 12, float %4806)  ; Cos(value)
  %4809 = fsub fast float -0.000000e+00, %4807
  br label %4810

; <label>:4810                                    ; preds = %4859, %4805
  %4811 = phi float [ 0.000000e+00, %4805 ], [ %4854, %4859 ]
  %4812 = phi float [ 0.000000e+00, %4805 ], [ %4856, %4859 ]
  %4813 = phi i32 [ 0, %4805 ], [ %4860, %4859 ]
  %4814 = mul i32 %4813, 2
  %4815 = add i32 0, %4814
  %4816 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4815
  %4817 = load float, float* %4816, align 4
  %4818 = mul i32 %4813, 2
  %4819 = add i32 1, %4818
  %4820 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4819
  %4821 = load float, float* %4820, align 4
  %4822 = fmul fast float %4817, %4808
  %4823 = call float @dx.op.tertiary.f32(i32 46, float %4821, float %4809, float %4822)  ; FMad(a,b,c)
  %4824 = fmul fast float %4817, %4807
  %4825 = call float @dx.op.tertiary.f32(i32 46, float %4821, float %4808, float %4824)  ; FMad(a,b,c)
  %4826 = fmul fast float %4823, %4734
  %4827 = fmul fast float %4825, %4734
  %4828 = fadd fast float %4826, %4225
  %4829 = fadd fast float %4827, %4226
  %4830 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4828, float %4829, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.ResRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.ResRet.f32 %4830, 2
  %4834 = extractvalue %dx.types.ResRet.f32 %4830, 3
  %4835 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %4831, float* %4835, align 4
  %4836 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %4832, float* %4836, align 4
  %4837 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %4833, float* %4837, align 4
  %4838 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %4834, float* %4838, align 4
  %4839 = fsub fast float %4831, %4736
  %4840 = fcmp fast olt float %4839, 0.000000e+00
  %4841 = select i1 %4840, float 0.000000e+00, float 1.000000e+00
  %4842 = fadd fast float %4841, %4811
  %4843 = fmul fast float %4841, %4839
  %4844 = fadd fast float %4843, %4812
  br label %4845

; <label>:4845                                    ; preds = %4845, %4810
  %4846 = phi i32 [ 1, %4810 ], [ %4857, %4845 ]
  %4847 = phi float [ %4844, %4810 ], [ %4856, %4845 ]
  %4848 = phi float [ %4842, %4810 ], [ %4854, %4845 ]
  %4849 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %4846
  %4850 = load float, float* %4849, align 4, !tbaa !133, !noalias !123
  %4851 = fsub fast float %4850, %4736
  %4852 = fcmp fast olt float %4851, 0.000000e+00
  %4853 = select i1 %4852, float 0.000000e+00, float 1.000000e+00
  %4854 = fadd fast float %4853, %4848
  %4855 = fmul fast float %4853, %4851
  %4856 = fadd fast float %4855, %4847
  %4857 = add nuw nsw i32 %4846, 1
  %4858 = icmp eq i32 %4857, 4
  br i1 %4858, label %4859, label %4845, !llvm.loop !135

; <label>:4859                                    ; preds = %4845
  %4860 = add nuw nsw i32 %4813, 1
  %4861 = icmp eq i32 %4860, 8
  br i1 %4861, label %4862, label %4810, !llvm.loop !136

; <label>:4862                                    ; preds = %4859
  %4863 = fdiv fast float 1.000000e+00, %4854
  %4864 = fmul fast float %4863, %4856
  %4865 = fdiv fast float 1.000000e+00, %4736
  %4866 = fmul fast float %4864, %4865
  %4867 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4868 = call float @dx.op.binary.f32(i32 35, float %4867, float 0.000000e+00)  ; FMax(a,b)
  %4869 = fmul fast float %4854, 3.125000e-02
  %4870 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4871 = fmul fast float %4870, 2.000000e+00
  %4872 = fadd fast float %4871, -1.000000e+00
  %4873 = fcmp fast ogt float %4872, 0.000000e+00
  %4874 = fcmp fast olt float %4872, 0.000000e+00
  %4875 = zext i1 %4873 to i32
  %4876 = zext i1 %4874 to i32
  %4877 = sub nsw i32 %4875, %4876
  %4878 = sitofp i32 %4877 to float
  %4879 = fmul fast float %4878, %4872
  %4880 = fsub fast float 1.000000e+00, %4879
  %4881 = fmul fast float %4880, %4880
  %4882 = fmul fast float %4881, %4880
  %4883 = fsub fast float %4880, %4882
  %4884 = fmul fast float %4883, %4868
  %4885 = fsub fast float 1.000000e+00, %4882
  %4886 = fsub fast float %4885, %4884
  %4887 = fmul fast float %4878, 5.000000e-01
  %4888 = fmul fast float %4887, %4886
  %4889 = fsub fast float 5.000000e-01, %4888
  br label %4890

; <label>:4890                                    ; preds = %4862, %4738, %4725
  %4891 = phi float [ 1.000000e+00, %4725 ], [ %4804, %4738 ], [ %4889, %4862 ]
  %4892 = fcmp fast ogt float %4321, 0.000000e+00
  br i1 %4892, label %4893, label %5057, !dx.controlflow.hints !137

; <label>:4893                                    ; preds = %4890
  %4894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.f32 %4894, 1
  %4896 = fadd fast float %4895, %4210
  %4897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4898 = extractvalue %dx.types.CBufRet.f32 %4897, 2
  %4899 = extractvalue %dx.types.CBufRet.f32 %4897, 3
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 1
  %4902 = call float @dx.op.binary.f32(i32 35, float %4896, float 0.000000e+00)  ; FMax(a,b)
  %4903 = fadd fast float %4902, 0x3F10000000000000
  %4904 = fcmp fast oeq float %4901, 0.000000e+00
  br i1 %4904, label %4905, label %4972

; <label>:4905                                    ; preds = %4893
  %4906 = extractvalue %dx.types.CBufRet.f32 %4897, 1
  %4907 = extractvalue %dx.types.CBufRet.f32 %4897, 0
  %4908 = fmul fast float %4907, %4217
  %4909 = fmul fast float %4906, %4218
  %4910 = fadd fast float %4908, 5.000000e-01
  %4911 = call float @dx.op.unary.f32(i32 27, float %4910)  ; Round_ni(value)
  %4912 = fadd fast float %4909, 5.000000e-01
  %4913 = call float @dx.op.unary.f32(i32 27, float %4912)  ; Round_ni(value)
  %4914 = fsub fast float %4910, %4911
  %4915 = fsub fast float %4912, %4913
  %4916 = fadd fast float %4911, -5.000000e-01
  %4917 = fadd fast float %4913, -5.000000e-01
  %4918 = fmul fast float %4914, 2.000000e+00
  %4919 = fsub fast float 3.000000e+00, %4918
  %4920 = fadd fast float %4918, 1.000000e+00
  %4921 = fsub fast float 2.000000e+00, %4914
  %4922 = bitcast float %4919 to i32
  %4923 = sub nsw i32 2129859010, %4922
  %4924 = bitcast i32 %4923 to float
  %4925 = fmul fast float %4924, %4921
  %4926 = fadd fast float %4925, -1.000000e+00
  %4927 = bitcast float %4920 to i32
  %4928 = sub nsw i32 2129859010, %4927
  %4929 = bitcast i32 %4928 to float
  %4930 = fmul fast float %4929, %4914
  %4931 = fadd fast float %4930, 1.000000e+00
  %4932 = fmul fast float %4915, 2.000000e+00
  %4933 = fsub fast float 3.000000e+00, %4932
  %4934 = fadd fast float %4932, 1.000000e+00
  %4935 = fsub fast float 2.000000e+00, %4915
  %4936 = bitcast float %4933 to i32
  %4937 = sub nsw i32 2129859010, %4936
  %4938 = bitcast i32 %4937 to float
  %4939 = fmul fast float %4938, %4935
  %4940 = fadd fast float %4939, -1.000000e+00
  %4941 = bitcast float %4934 to i32
  %4942 = sub nsw i32 2129859010, %4941
  %4943 = bitcast i32 %4942 to float
  %4944 = fmul fast float %4943, %4915
  %4945 = fadd fast float %4944, 1.000000e+00
  %4946 = fadd fast float %4926, %4916
  %4947 = fmul fast float %4946, %4898
  %4948 = fadd fast float %4940, %4917
  %4949 = fmul fast float %4948, %4899
  %4950 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4947, float %4949, float undef, float undef, i32 0, i32 0, i32 undef, float %4903)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4951 = extractvalue %dx.types.ResRet.f32 %4950, 0
  %4952 = fmul fast float %4951, %4919
  %4953 = fadd fast float %4931, %4916
  %4954 = fmul fast float %4953, %4898
  %4955 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4954, float %4949, float undef, float undef, i32 0, i32 0, i32 undef, float %4903)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4956 = extractvalue %dx.types.ResRet.f32 %4955, 0
  %4957 = fmul fast float %4956, %4920
  %4958 = fadd fast float %4945, %4917
  %4959 = fmul fast float %4958, %4899
  %4960 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4947, float %4959, float undef, float undef, i32 0, i32 0, i32 undef, float %4903)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4961 = extractvalue %dx.types.ResRet.f32 %4960, 0
  %4962 = fmul fast float %4961, %4919
  %4963 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4954, float %4959, float undef, float undef, i32 0, i32 0, i32 undef, float %4903)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4964 = extractvalue %dx.types.ResRet.f32 %4963, 0
  %4965 = fmul fast float %4964, %4920
  %4966 = fadd fast float %4965, %4962
  %4967 = fmul fast float %4966, %4934
  %4968 = fadd fast float %4957, %4952
  %4969 = fmul fast float %4968, %4933
  %4970 = fadd fast float %4969, %4967
  %4971 = fmul fast float %4970, 6.250000e-02
  br label %5057

; <label>:4972                                    ; preds = %4893
  %4973 = fmul fast float %248, 0x401921FB60000000
  %4974 = call float @dx.op.unary.f32(i32 13, float %4973)  ; Sin(value)
  %4975 = call float @dx.op.unary.f32(i32 12, float %4973)  ; Cos(value)
  %4976 = fsub fast float -0.000000e+00, %4974
  br label %4977

; <label>:4977                                    ; preds = %5026, %4972
  %4978 = phi float [ 0.000000e+00, %4972 ], [ %5021, %5026 ]
  %4979 = phi float [ 0.000000e+00, %4972 ], [ %5023, %5026 ]
  %4980 = phi i32 [ 0, %4972 ], [ %5027, %5026 ]
  %4981 = mul i32 %4980, 2
  %4982 = add i32 0, %4981
  %4983 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4982
  %4984 = load float, float* %4983, align 4
  %4985 = mul i32 %4980, 2
  %4986 = add i32 1, %4985
  %4987 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4986
  %4988 = load float, float* %4987, align 4
  %4989 = fmul fast float %4984, %4975
  %4990 = call float @dx.op.tertiary.f32(i32 46, float %4988, float %4976, float %4989)  ; FMad(a,b,c)
  %4991 = fmul fast float %4984, %4974
  %4992 = call float @dx.op.tertiary.f32(i32 46, float %4988, float %4975, float %4991)  ; FMad(a,b,c)
  %4993 = fmul fast float %4990, %4901
  %4994 = fmul fast float %4992, %4901
  %4995 = fadd fast float %4993, %4217
  %4996 = fadd fast float %4994, %4218
  %4997 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %4995, float %4996, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4998 = extractvalue %dx.types.ResRet.f32 %4997, 0
  %4999 = extractvalue %dx.types.ResRet.f32 %4997, 1
  %5000 = extractvalue %dx.types.ResRet.f32 %4997, 2
  %5001 = extractvalue %dx.types.ResRet.f32 %4997, 3
  %5002 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %4998, float* %5002, align 4
  %5003 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %4999, float* %5003, align 4
  %5004 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %5000, float* %5004, align 4
  %5005 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %5001, float* %5005, align 4
  %5006 = fsub fast float %4998, %4903
  %5007 = fcmp fast olt float %5006, 0.000000e+00
  %5008 = select i1 %5007, float 0.000000e+00, float 1.000000e+00
  %5009 = fadd fast float %5008, %4978
  %5010 = fmul fast float %5008, %5006
  %5011 = fadd fast float %5010, %4979
  br label %5012

; <label>:5012                                    ; preds = %5012, %4977
  %5013 = phi i32 [ 1, %4977 ], [ %5024, %5012 ]
  %5014 = phi float [ %5011, %4977 ], [ %5023, %5012 ]
  %5015 = phi float [ %5009, %4977 ], [ %5021, %5012 ]
  %5016 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %5013
  %5017 = load float, float* %5016, align 4, !tbaa !133, !noalias !123
  %5018 = fsub fast float %5017, %4903
  %5019 = fcmp fast olt float %5018, 0.000000e+00
  %5020 = select i1 %5019, float 0.000000e+00, float 1.000000e+00
  %5021 = fadd fast float %5020, %5015
  %5022 = fmul fast float %5020, %5018
  %5023 = fadd fast float %5022, %5014
  %5024 = add nuw nsw i32 %5013, 1
  %5025 = icmp eq i32 %5024, 4
  br i1 %5025, label %5026, label %5012, !llvm.loop !135

; <label>:5026                                    ; preds = %5012
  %5027 = add nuw nsw i32 %4980, 1
  %5028 = icmp eq i32 %5027, 8
  br i1 %5028, label %5029, label %4977, !llvm.loop !136

; <label>:5029                                    ; preds = %5026
  %5030 = fdiv fast float 1.000000e+00, %5021
  %5031 = fmul fast float %5030, %5023
  %5032 = fdiv fast float 1.000000e+00, %4903
  %5033 = fmul fast float %5031, %5032
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = call float @dx.op.binary.f32(i32 35, float %5034, float 0.000000e+00)  ; FMax(a,b)
  %5036 = fmul fast float %5021, 3.125000e-02
  %5037 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5038 = fmul fast float %5037, 2.000000e+00
  %5039 = fadd fast float %5038, -1.000000e+00
  %5040 = fcmp fast ogt float %5039, 0.000000e+00
  %5041 = fcmp fast olt float %5039, 0.000000e+00
  %5042 = zext i1 %5040 to i32
  %5043 = zext i1 %5041 to i32
  %5044 = sub nsw i32 %5042, %5043
  %5045 = sitofp i32 %5044 to float
  %5046 = fmul fast float %5045, %5039
  %5047 = fsub fast float 1.000000e+00, %5046
  %5048 = fmul fast float %5047, %5047
  %5049 = fmul fast float %5048, %5047
  %5050 = fsub fast float %5047, %5049
  %5051 = fmul fast float %5050, %5035
  %5052 = fsub fast float 1.000000e+00, %5049
  %5053 = fsub fast float %5052, %5051
  %5054 = fmul fast float %5045, 5.000000e-01
  %5055 = fmul fast float %5054, %5053
  %5056 = fsub fast float 5.000000e-01, %5055
  br label %5057

; <label>:5057                                    ; preds = %5029, %4905, %4890
  %5058 = phi float [ 1.000000e+00, %4890 ], [ %4971, %4905 ], [ %5056, %5029 ]
  %5059 = fcmp fast ogt float %4320, 0.000000e+00
  br i1 %5059, label %5060, label %5224, !dx.controlflow.hints !138

; <label>:5060                                    ; preds = %5057
  %5061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5062 = extractvalue %dx.types.CBufRet.f32 %5061, 0
  %5063 = fadd fast float %5062, %4210
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 3
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 0
  %5069 = call float @dx.op.binary.f32(i32 35, float %5063, float 0.000000e+00)  ; FMax(a,b)
  %5070 = fadd fast float %5069, 0x3F10000000000000
  %5071 = fcmp fast oeq float %5068, 0.000000e+00
  br i1 %5071, label %5072, label %5139

; <label>:5072                                    ; preds = %5060
  %5073 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5074 = extractvalue %dx.types.CBufRet.f32 %5064, 0
  %5075 = fmul fast float %5074, %4202
  %5076 = fmul fast float %5073, %4206
  %5077 = fadd fast float %5075, 5.000000e-01
  %5078 = call float @dx.op.unary.f32(i32 27, float %5077)  ; Round_ni(value)
  %5079 = fadd fast float %5076, 5.000000e-01
  %5080 = call float @dx.op.unary.f32(i32 27, float %5079)  ; Round_ni(value)
  %5081 = fsub fast float %5077, %5078
  %5082 = fsub fast float %5079, %5080
  %5083 = fadd fast float %5078, -5.000000e-01
  %5084 = fadd fast float %5080, -5.000000e-01
  %5085 = fmul fast float %5081, 2.000000e+00
  %5086 = fsub fast float 3.000000e+00, %5085
  %5087 = fadd fast float %5085, 1.000000e+00
  %5088 = fsub fast float 2.000000e+00, %5081
  %5089 = bitcast float %5086 to i32
  %5090 = sub nsw i32 2129859010, %5089
  %5091 = bitcast i32 %5090 to float
  %5092 = fmul fast float %5091, %5088
  %5093 = fadd fast float %5092, -1.000000e+00
  %5094 = bitcast float %5087 to i32
  %5095 = sub nsw i32 2129859010, %5094
  %5096 = bitcast i32 %5095 to float
  %5097 = fmul fast float %5096, %5081
  %5098 = fadd fast float %5097, 1.000000e+00
  %5099 = fmul fast float %5082, 2.000000e+00
  %5100 = fsub fast float 3.000000e+00, %5099
  %5101 = fadd fast float %5099, 1.000000e+00
  %5102 = fsub fast float 2.000000e+00, %5082
  %5103 = bitcast float %5100 to i32
  %5104 = sub nsw i32 2129859010, %5103
  %5105 = bitcast i32 %5104 to float
  %5106 = fmul fast float %5105, %5102
  %5107 = fadd fast float %5106, -1.000000e+00
  %5108 = bitcast float %5101 to i32
  %5109 = sub nsw i32 2129859010, %5108
  %5110 = bitcast i32 %5109 to float
  %5111 = fmul fast float %5110, %5082
  %5112 = fadd fast float %5111, 1.000000e+00
  %5113 = fadd fast float %5093, %5083
  %5114 = fmul fast float %5113, %5065
  %5115 = fadd fast float %5107, %5084
  %5116 = fmul fast float %5115, %5066
  %5117 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5114, float %5116, float undef, float undef, i32 0, i32 0, i32 undef, float %5070)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5118 = extractvalue %dx.types.ResRet.f32 %5117, 0
  %5119 = fmul fast float %5118, %5086
  %5120 = fadd fast float %5098, %5083
  %5121 = fmul fast float %5120, %5065
  %5122 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5121, float %5116, float undef, float undef, i32 0, i32 0, i32 undef, float %5070)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5123 = extractvalue %dx.types.ResRet.f32 %5122, 0
  %5124 = fmul fast float %5123, %5087
  %5125 = fadd fast float %5112, %5084
  %5126 = fmul fast float %5125, %5066
  %5127 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5114, float %5126, float undef, float undef, i32 0, i32 0, i32 undef, float %5070)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5128 = extractvalue %dx.types.ResRet.f32 %5127, 0
  %5129 = fmul fast float %5128, %5086
  %5130 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5121, float %5126, float undef, float undef, i32 0, i32 0, i32 undef, float %5070)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5131 = extractvalue %dx.types.ResRet.f32 %5130, 0
  %5132 = fmul fast float %5131, %5087
  %5133 = fadd fast float %5132, %5129
  %5134 = fmul fast float %5133, %5101
  %5135 = fadd fast float %5124, %5119
  %5136 = fmul fast float %5135, %5100
  %5137 = fadd fast float %5136, %5134
  %5138 = fmul fast float %5137, 6.250000e-02
  br label %5224

; <label>:5139                                    ; preds = %5060
  %5140 = fmul fast float %248, 0x401921FB60000000
  %5141 = call float @dx.op.unary.f32(i32 13, float %5140)  ; Sin(value)
  %5142 = call float @dx.op.unary.f32(i32 12, float %5140)  ; Cos(value)
  %5143 = fsub fast float -0.000000e+00, %5141
  br label %5144

; <label>:5144                                    ; preds = %5193, %5139
  %5145 = phi float [ 0.000000e+00, %5139 ], [ %5188, %5193 ]
  %5146 = phi float [ 0.000000e+00, %5139 ], [ %5190, %5193 ]
  %5147 = phi i32 [ 0, %5139 ], [ %5194, %5193 ]
  %5148 = mul i32 %5147, 2
  %5149 = add i32 0, %5148
  %5150 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5149
  %5151 = load float, float* %5150, align 4
  %5152 = mul i32 %5147, 2
  %5153 = add i32 1, %5152
  %5154 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5153
  %5155 = load float, float* %5154, align 4
  %5156 = fmul fast float %5151, %5142
  %5157 = call float @dx.op.tertiary.f32(i32 46, float %5155, float %5143, float %5156)  ; FMad(a,b,c)
  %5158 = fmul fast float %5151, %5141
  %5159 = call float @dx.op.tertiary.f32(i32 46, float %5155, float %5142, float %5158)  ; FMad(a,b,c)
  %5160 = fmul fast float %5157, %5068
  %5161 = fmul fast float %5159, %5068
  %5162 = fadd fast float %5160, %4202
  %5163 = fadd fast float %5161, %4206
  %5164 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5162, float %5163, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5165 = extractvalue %dx.types.ResRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.ResRet.f32 %5164, 1
  %5167 = extractvalue %dx.types.ResRet.f32 %5164, 2
  %5168 = extractvalue %dx.types.ResRet.f32 %5164, 3
  %5169 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %5165, float* %5169, align 4
  %5170 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %5166, float* %5170, align 4
  %5171 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %5167, float* %5171, align 4
  %5172 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %5168, float* %5172, align 4
  %5173 = fsub fast float %5165, %5070
  %5174 = fcmp fast olt float %5173, 0.000000e+00
  %5175 = select i1 %5174, float 0.000000e+00, float 1.000000e+00
  %5176 = fadd fast float %5175, %5145
  %5177 = fmul fast float %5175, %5173
  %5178 = fadd fast float %5177, %5146
  br label %5179

; <label>:5179                                    ; preds = %5179, %5144
  %5180 = phi i32 [ 1, %5144 ], [ %5191, %5179 ]
  %5181 = phi float [ %5178, %5144 ], [ %5190, %5179 ]
  %5182 = phi float [ %5176, %5144 ], [ %5188, %5179 ]
  %5183 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %5180
  %5184 = load float, float* %5183, align 4, !tbaa !133, !noalias !123
  %5185 = fsub fast float %5184, %5070
  %5186 = fcmp fast olt float %5185, 0.000000e+00
  %5187 = select i1 %5186, float 0.000000e+00, float 1.000000e+00
  %5188 = fadd fast float %5187, %5182
  %5189 = fmul fast float %5187, %5185
  %5190 = fadd fast float %5189, %5181
  %5191 = add nuw nsw i32 %5180, 1
  %5192 = icmp eq i32 %5191, 4
  br i1 %5192, label %5193, label %5179, !llvm.loop !135

; <label>:5193                                    ; preds = %5179
  %5194 = add nuw nsw i32 %5147, 1
  %5195 = icmp eq i32 %5194, 8
  br i1 %5195, label %5196, label %5144, !llvm.loop !136

; <label>:5196                                    ; preds = %5193
  %5197 = fdiv fast float 1.000000e+00, %5188
  %5198 = fmul fast float %5197, %5190
  %5199 = fdiv fast float 1.000000e+00, %5070
  %5200 = fmul fast float %5198, %5199
  %5201 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5202 = call float @dx.op.binary.f32(i32 35, float %5201, float 0.000000e+00)  ; FMax(a,b)
  %5203 = fmul fast float %5188, 3.125000e-02
  %5204 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5205 = fmul fast float %5204, 2.000000e+00
  %5206 = fadd fast float %5205, -1.000000e+00
  %5207 = fcmp fast ogt float %5206, 0.000000e+00
  %5208 = fcmp fast olt float %5206, 0.000000e+00
  %5209 = zext i1 %5207 to i32
  %5210 = zext i1 %5208 to i32
  %5211 = sub nsw i32 %5209, %5210
  %5212 = sitofp i32 %5211 to float
  %5213 = fmul fast float %5212, %5206
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = fmul fast float %5214, %5214
  %5216 = fmul fast float %5215, %5214
  %5217 = fsub fast float %5214, %5216
  %5218 = fmul fast float %5217, %5202
  %5219 = fsub fast float 1.000000e+00, %5216
  %5220 = fsub fast float %5219, %5218
  %5221 = fmul fast float %5212, 5.000000e-01
  %5222 = fmul fast float %5221, %5220
  %5223 = fsub fast float 5.000000e-01, %5222
  br label %5224

; <label>:5224                                    ; preds = %5196, %5072, %5057
  %5225 = phi float [ 1.000000e+00, %5057 ], [ %5138, %5072 ], [ %5223, %5196 ]
  %5226 = fsub fast float %4891, %4726
  %5227 = fmul fast float %5226, %4264
  %5228 = fadd fast float %5227, %4726
  %5229 = fsub fast float %5058, %5228
  %5230 = fmul fast float %5229, %4294
  %5231 = fadd fast float %5230, %5228
  %5232 = fsub fast float %5225, %5231
  %5233 = fmul fast float %5232, %4320
  %5234 = fadd fast float %5233, %5231
  %5235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.f32 %5235, 2
  %5237 = fcmp fast ogt float %5236, 0.000000e+00
  br i1 %5237, label %5238, label %5278, !dx.controlflow.hints !139

; <label>:5238                                    ; preds = %5224
  %5239 = fcmp fast ugt float %5236, 0.000000e+00
  br i1 %5239, label %5240, label %5275

; <label>:5240                                    ; preds = %5238
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.CBufRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.CBufRet.f32 %5241, 2
  %5245 = extractvalue %dx.types.CBufRet.f32 %5241, 3
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 0
  %5248 = extractvalue %dx.types.CBufRet.f32 %5246, 1
  %5249 = extractvalue %dx.types.CBufRet.f32 %5246, 2
  %5250 = extractvalue %dx.types.CBufRet.f32 %5246, 3
  %5251 = extractvalue %dx.types.CBufRet.f32 %5235, 0
  %5252 = extractvalue %dx.types.CBufRet.f32 %5235, 1
  %5253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.f32 %5253, 0
  %5255 = extractvalue %dx.types.CBufRet.f32 %5253, 1
  %5256 = extractvalue %dx.types.CBufRet.f32 %5253, 2
  %5257 = fadd fast float %5254, %4179
  %5258 = fadd fast float %5255, %4180
  %5259 = fadd fast float %5256, %4181
  %5260 = fmul fast float %5257, %5242
  %5261 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5258, float %5260)  ; FMad(a,b,c)
  %5262 = call float @dx.op.tertiary.f32(i32 46, float %5244, float %5259, float %5261)  ; FMad(a,b,c)
  %5263 = fadd fast float %5262, %5245
  %5264 = fmul fast float %5257, %5247
  %5265 = call float @dx.op.tertiary.f32(i32 46, float %5248, float %5258, float %5264)  ; FMad(a,b,c)
  %5266 = call float @dx.op.tertiary.f32(i32 46, float %5249, float %5259, float %5265)  ; FMad(a,b,c)
  %5267 = fadd fast float %5266, %5250
  %5268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5263, float %5267, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 0
  %5270 = fmul fast float %5269, %5252
  %5271 = fadd fast float %5270, %5251
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %5272, %5236
  %5274 = fsub fast float 1.000000e+00, %5273
  br label %5275

; <label>:5275                                    ; preds = %5240, %5238
  %5276 = phi float [ %5274, %5240 ], [ 1.000000e+00, %5238 ]
  %5277 = fmul fast float %5276, %5234
  br label %5278

; <label>:5278                                    ; preds = %5275, %5224, %4159
  %5279 = phi float [ 1.000000e+00, %4159 ], [ %5277, %5275 ], [ %5234, %5224 ]
  %5280 = call float @dx.op.binary.f32(i32 36, float %5279, float %5279)  ; FMin(a,b)
  %5281 = call float @dx.op.binary.f32(i32 36, float %5279, float %5280)  ; FMin(a,b)
  %5282 = fcmp fast ogt float %5281, 0.000000e+00
  br i1 %5282, label %5283, label %5448, !dx.controlflow.hints !140

; <label>:5283                                    ; preds = %5278
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.CBufRet.f32 %5284, 1
  %5287 = extractvalue %dx.types.CBufRet.f32 %5284, 2
  %5288 = extractvalue %dx.types.CBufRet.f32 %5284, 3
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.CBufRet.f32 %5289, 1
  %5292 = extractvalue %dx.types.CBufRet.f32 %5289, 2
  %5293 = extractvalue %dx.types.CBufRet.f32 %5289, 3
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5297 = extractvalue %dx.types.CBufRet.f32 %5294, 2
  %5298 = extractvalue %dx.types.CBufRet.f32 %5294, 3
  %5299 = fmul fast float %5285, %4179
  %5300 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %5286, float %5299)  ; FMad(a,b,c)
  %5301 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %5287, float %5300)  ; FMad(a,b,c)
  %5302 = fadd fast float %5301, %5288
  %5303 = fmul fast float %5290, %4179
  %5304 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %5291, float %5303)  ; FMad(a,b,c)
  %5305 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %5292, float %5304)  ; FMad(a,b,c)
  %5306 = fadd fast float %5305, %5293
  %5307 = fmul fast float %5295, %4179
  %5308 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %5296, float %5307)  ; FMad(a,b,c)
  %5309 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %5297, float %5308)  ; FMad(a,b,c)
  %5310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5311 = extractvalue %dx.types.CBufRet.f32 %5310, 0
  %5312 = extractvalue %dx.types.CBufRet.f32 %5310, 1
  %5313 = extractvalue %dx.types.CBufRet.f32 %5310, 3
  %5314 = fmul fast float %5313, %5302
  %5315 = fmul fast float %5313, %5306
  %5316 = fadd fast float %5314, %5311
  %5317 = fadd fast float %5315, %5312
  %5318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5319 = extractvalue %dx.types.CBufRet.f32 %5318, 0
  %5320 = extractvalue %dx.types.CBufRet.f32 %5318, 1
  %5321 = fsub fast float %5316, %5319
  %5322 = fsub fast float %5317, %5320
  %5323 = fcmp fast olt float %5321, 0.000000e+00
  %5324 = fcmp fast olt float %5322, 0.000000e+00
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.CBufRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.CBufRet.f32 %5325, 2
  %5329 = extractvalue %dx.types.CBufRet.f32 %5325, 3
  %5330 = select i1 %5323, float %5326, float %5328
  %5331 = select i1 %5324, float %5327, float %5329
  %5332 = fmul fast float %5330, %5321
  %5333 = fmul fast float %5331, %5322
  %5334 = call float @dx.op.unary.f32(i32 6, float %5332)  ; FAbs(value)
  %5335 = call float @dx.op.unary.f32(i32 6, float %5333)  ; FAbs(value)
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 0
  %5338 = call float @dx.op.binary.f32(i32 35, float %5334, float %5335)  ; FMax(a,b)
  %5339 = fsub fast float %5337, %5338
  %5340 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5341 = fcmp fast ogt float %5340, 0.000000e+00
  br i1 %5341, label %5342, label %5383, !dx.controlflow.hints !141

; <label>:5342                                    ; preds = %5283
  %5343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5316, float %5317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5344 = extractvalue %dx.types.ResRet.f32 %5343, 1
  %5345 = fcmp fast ogt float %5344, 0.000000e+00
  br i1 %5345, label %5346, label %5378

; <label>:5346                                    ; preds = %5342
  %5347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5316, float %5317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5348 = extractvalue %dx.types.ResRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.ResRet.f32 %5347, 1
  %5350 = extractvalue %dx.types.ResRet.f32 %5347, 2
  %5351 = extractvalue %dx.types.ResRet.f32 %5347, 3
  %5352 = fsub fast float 1.000000e+00, %5298
  %5353 = fsub fast float %5352, %5309
  %5354 = fmul fast float %5353, 0x400921FB60000000
  %5355 = fadd fast float %5354, 0x3FF921FB60000000
  %5356 = call float @dx.op.unary.f32(i32 13, float %5355)  ; Sin(value)
  %5357 = fadd fast float %5356, -1.000000e+00
  %5358 = fmul fast float %5357, 0x3FD45F3060000000
  %5359 = fmul fast float %5353, 0x401921FB60000000
  %5360 = fadd fast float %5359, 0x400921FB60000000
  %5361 = call float @dx.op.unary.f32(i32 13, float %5360)  ; Sin(value)
  %5362 = fadd fast float %5361, 0x3E7777A5C0000000
  %5363 = fmul fast float %5362, 0x3FC45F3060000000
  %5364 = fmul fast float %5353, 0x4022D97C80000000
  %5365 = fadd fast float %5364, 0x4012D97C80000000
  %5366 = call float @dx.op.unary.f32(i32 13, float %5365)  ; Sin(value)
  %5367 = fadd fast float %5366, 1.000000e+00
  %5368 = fmul fast float %5367, 0x3FBB2995E0000000
  %5369 = fmul fast float %5353, 0x402921FB60000000
  %5370 = fadd fast float %5369, 0x401921FB60000000
  %5371 = call float @dx.op.unary.f32(i32 13, float %5370)  ; Sin(value)
  %5372 = fadd fast float %5371, 0xBE8777A5C0000000
  %5373 = fmul fast float %5372, 0x3FB45F3060000000
  %5374 = call float @dx.op.dot4.f32(i32 56, float %5348, float %5349, float %5350, float %5351, float %5358, float %5363, float %5368, float %5373)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5375 = fmul fast float %5374, 0xBFF7154760000000
  %5376 = call float @dx.op.unary.f32(i32 21, float %5375)  ; Exp(value)
  %5377 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  br label %5378

; <label>:5378                                    ; preds = %5346, %5342
  %5379 = phi float [ %5377, %5346 ], [ 1.000000e+00, %5342 ]
  %5380 = fadd fast float %5379, -1.000000e+00
  %5381 = fmul fast float %5380, %5340
  %5382 = fadd fast float %5381, 1.000000e+00
  br label %5383

; <label>:5383                                    ; preds = %5378, %5283
  %5384 = phi float [ %5382, %5378 ], [ 1.000000e+00, %5283 ]
  %5385 = fmul fast float %5384, %5279
  %5386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.f32 %5386, 0
  %5388 = extractvalue %dx.types.CBufRet.f32 %5386, 1
  %5389 = extractvalue %dx.types.CBufRet.f32 %5386, 2
  %5390 = fadd fast float %5387, %146
  %5391 = fadd fast float %5388, %147
  %5392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5393 = extractvalue %dx.types.CBufRet.f32 %5392, 1
  %5394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.f32 %5394, 0
  %5396 = extractvalue %dx.types.CBufRet.f32 %5394, 1
  %5397 = extractvalue %dx.types.CBufRet.f32 %5394, 2
  %5398 = fsub fast float -0.000000e+00, %5390
  %5399 = fsub fast float -0.000000e+00, %5391
  %5400 = fsub fast float %2242, %5389
  %5401 = fadd fast float %5400, %5393
  %5402 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5398, float %5399, float %5401)  ; Dot3(ax,ay,az,bx,by,bz)
  %5403 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5395, float %5396, float %5397)  ; Dot3(ax,ay,az,bx,by,bz)
  %5404 = fdiv fast float 1.000000e+00, %5403
  %5405 = fmul fast float %5404, %5402
  %5406 = fmul fast float %5395, %5405
  %5407 = fmul fast float %5396, %5405
  %5408 = fadd fast float %5406, %5390
  %5409 = fadd fast float %5407, %5391
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.CBufRet.f32 %5410, 1
  %5413 = fsub fast float %5408, %5411
  %5414 = fsub fast float %5409, %5412
  %5415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.f32 %5415, 2
  %5417 = extractvalue %dx.types.CBufRet.f32 %5415, 3
  %5418 = fmul fast float %5413, %5416
  %5419 = fmul fast float %5414, %5417
  %5420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.i32 %5420, 3
  %5422 = icmp eq i32 %5421, 0
  br i1 %5422, label %5428, label %5423

; <label>:5423                                    ; preds = %5383
  %5424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5418, float %5419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5425 = extractvalue %dx.types.ResRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.ResRet.f32 %5424, 1
  %5427 = extractvalue %dx.types.ResRet.f32 %5424, 2
  br label %5433

; <label>:5428                                    ; preds = %5383
  %5429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5418, float %5419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.ResRet.f32 %5429, 1
  %5432 = extractvalue %dx.types.ResRet.f32 %5429, 2
  br label %5433

; <label>:5433                                    ; preds = %5428, %5423
  %5434 = phi float [ %5425, %5423 ], [ %5430, %5428 ]
  %5435 = phi float [ %5426, %5423 ], [ %5431, %5428 ]
  %5436 = phi float [ %5427, %5423 ], [ %5432, %5428 ]
  %5437 = extractvalue %dx.types.CBufRet.f32 %5392, 2
  %5438 = fmul fast float %5437, %5434
  %5439 = extractvalue %dx.types.CBufRet.f32 %5392, 0
  %5440 = fsub fast float %5405, %5439
  %5441 = fsub fast float %5440, %5438
  %5442 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5441)  ; FMax(a,b)
  %5443 = fmul fast float %5442, %5435
  %5444 = call float @dx.op.binary.f32(i32 36, float %5436, float %5443)  ; FMin(a,b)
  %5445 = fmul fast float %5444, 0xBFF7154760000000
  %5446 = call float @dx.op.unary.f32(i32 21, float %5445)  ; Exp(value)
  %5447 = fmul fast float %5385, %5446
  br label %5448

; <label>:5448                                    ; preds = %5433, %5278
  %5449 = phi float [ %5447, %5433 ], [ %5279, %5278 ]
  %5450 = call float @dx.op.binary.f32(i32 36, float %5449, float %5449)  ; FMin(a,b)
  %5451 = call float @dx.op.binary.f32(i32 36, float %5449, float %5450)  ; FMin(a,b)
  %5452 = fcmp fast ogt float %5451, 0.000000e+00
  br i1 %5452, label %5453, label %5712, !dx.controlflow.hints !142

; <label>:5453                                    ; preds = %5448
  %5454 = fmul fast float %5449, %4171
  %5455 = fmul fast float %5449, %4172
  %5456 = fmul fast float %5449, %4173
  %5457 = fsub fast float %148, %2030
  %5458 = fcmp fast ogt float %5457, 0.000000e+00
  %5459 = fmul fast float %4160, 5.120000e+02
  %5460 = fmul fast float %4161, 5.120000e+02
  %5461 = fmul fast float %4162, 5.120000e+02
  %5462 = fadd fast float %5461, %148
  %5463 = fsub fast float %2030, %5462
  %5464 = fmul fast float %5463, 2.000000e+00
  %5465 = fadd fast float %5464, %5462
  %5466 = select i1 %5458, float %5465, float %5462
  %5467 = fsub fast float %5466, %148
  %5468 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5467, float %5459, float %5460, float %5467)  ; Dot3(ax,ay,az,bx,by,bz)
  %5469 = call float @dx.op.unary.f32(i32 25, float %5468)  ; Rsqrt(value)
  %5470 = fmul fast float %5469, %5459
  %5471 = fmul fast float %5469, %5460
  %5472 = fmul fast float %5469, %5467
  %5473 = fsub fast float %2030, %148
  %5474 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5473)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5470, float %5471, float %5472)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = fdiv fast float 1.000000e+00, %5475
  %5477 = fmul fast float %5476, %5474
  %5478 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5457, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = fcmp fast ogt float %5478, 0.000000e+00
  %5480 = fcmp fast olt float %5478, 0.000000e+00
  %5481 = zext i1 %5479 to i32
  %5482 = zext i1 %5480 to i32
  %5483 = sub nsw i32 %5481, %5482
  %5484 = sitofp i32 %5483 to float
  %5485 = fsub fast float %5466, %2030
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5485, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = fcmp fast ogt float %5486, 0.000000e+00
  %5488 = fcmp fast olt float %5486, 0.000000e+00
  %5489 = zext i1 %5487 to i32
  %5490 = zext i1 %5488 to i32
  %5491 = sub nsw i32 %5489, %5490
  %5492 = sitofp i32 %5491 to float
  %5493 = fcmp fast une float %5484, %5492
  br i1 %5493, label %5494, label %5504

; <label>:5494                                    ; preds = %5453
  %5495 = fmul fast float %5477, %5472
  %5496 = fmul fast float %5477, %5471
  %5497 = fmul fast float %5477, %5470
  %5498 = fmul fast float %5497, %5497
  %5499 = fmul fast float %5496, %5496
  %5500 = fadd fast float %5498, %5499
  %5501 = fmul fast float %5495, %5495
  %5502 = fadd fast float %5500, %5501
  %5503 = call float @dx.op.unary.f32(i32 24, float %5502)  ; Sqrt(value)
  br label %5514

; <label>:5504                                    ; preds = %5453
  %5505 = icmp slt i32 %5483, 0
  br i1 %5505, label %5506, label %5514

; <label>:5506                                    ; preds = %5504
  %5507 = fsub fast float %148, %5466
  %5508 = fmul fast float %5459, %5459
  %5509 = fmul fast float %5460, %5460
  %5510 = fadd fast float %5508, %5509
  %5511 = fmul fast float %5507, %5507
  %5512 = fadd fast float %5510, %5511
  %5513 = call float @dx.op.unary.f32(i32 24, float %5512)  ; Sqrt(value)
  br label %5514

; <label>:5514                                    ; preds = %5506, %5504, %5494
  %5515 = phi float [ %5503, %5494 ], [ %5513, %5506 ], [ 0.000000e+00, %5504 ]
  %5516 = fsub fast float -0.000000e+00, %5515
  %5517 = select i1 %5458, float -0.000000e+00, float %5516
  %5518 = fmul fast float %2031, 0x3FF7154760000000
  %5519 = fmul fast float %5518, %5517
  %5520 = fmul fast float %2032, 0x3FF7154760000000
  %5521 = fmul fast float %5520, %5517
  %5522 = fmul fast float %2033, 0x3FF7154760000000
  %5523 = fmul fast float %5522, %5517
  %5524 = call float @dx.op.unary.f32(i32 21, float %5519)  ; Exp(value)
  %5525 = call float @dx.op.unary.f32(i32 21, float %5521)  ; Exp(value)
  %5526 = call float @dx.op.unary.f32(i32 21, float %5523)  ; Exp(value)
  %5527 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5528 = call float @dx.op.unary.f32(i32 7, float %5525)  ; Saturate(value)
  %5529 = call float @dx.op.unary.f32(i32 7, float %5526)  ; Saturate(value)
  %5530 = fmul fast float %5454, %5527
  %5531 = fmul fast float %5455, %5528
  %5532 = fmul fast float %5456, %5529
  %5533 = fsub fast float %4160, %2230
  %5534 = fsub fast float %4161, %2229
  %5535 = fsub fast float %4162, %2228
  %5536 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5534, float %5535, float %5533, float %5534, float %5535)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = call float @dx.op.unary.f32(i32 25, float %5536)  ; Rsqrt(value)
  %5538 = fmul fast float %5537, %5533
  %5539 = fmul fast float %5537, %5534
  %5540 = fmul fast float %5537, %5535
  %5541 = call float @dx.op.dot3.f32(i32 55, float %4160, float %4161, float %4162, float %2234, float %2235, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = call float @dx.op.dot3.f32(i32 55, float %2227, float %2226, float %2225, float %5538, float %5539, float %5540)  ; Dot3(ax,ay,az,bx,by,bz)
  %5543 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5544 = fmul fast float %5543, %5543
  %5545 = fmul fast float %5544, %4155
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = fmul fast float %5546, %5543
  %5548 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2235, float %2236, float %5538, float %5539, float %5540)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = fmul fast float %5548, %5548
  %5550 = call float @dx.op.unary.f32(i32 6, float %5541)  ; FAbs(value)
  %5551 = fsub fast float 1.000000e+00, %2263
  %5552 = fmul fast float %2245, %2245
  %5553 = fmul fast float %5552, %5551
  %5554 = fadd fast float %5553, %2263
  %5555 = bitcast float %5554 to i32
  %5556 = ashr i32 %5555, 1
  %5557 = add nsw i32 %5556, 532487669
  %5558 = bitcast i32 %5557 to float
  %5559 = fadd fast float %5558, %2245
  %5560 = fmul fast float %2263, %5549
  %5561 = fsub fast float 1.000000e+00, %5549
  %5562 = fadd fast float %5561, %5560
  %5563 = fmul fast float %5550, %5550
  %5564 = fmul fast float %5563, %5551
  %5565 = fadd fast float %5564, %2263
  %5566 = bitcast float %5565 to i32
  %5567 = ashr i32 %5566, 1
  %5568 = add nsw i32 %5567, 532487669
  %5569 = bitcast i32 %5568 to float
  %5570 = fadd fast float %5569, %5550
  %5571 = fmul fast float %5562, %5562
  %5572 = fmul fast float %5571, %5559
  %5573 = fmul fast float %5572, %5570
  %5574 = fdiv fast float 0x3FF0A00000000000, %5573
  %5575 = fmul fast float %5574, %2263
  %5576 = fmul fast float %3529, 0x3FF9999980000000
  %5577 = fsub fast float 5.000000e+00, %5576
  %5578 = call float @dx.op.unary.f32(i32 6, float %5542)  ; FAbs(value)
  %5579 = fsub fast float 1.000000e+00, %5578
  %5580 = fmul fast float %3529, 0x41D9660740000000
  %5581 = fadd fast float %5580, 0xC1EFBF8940000000
  %5582 = bitcast float %5579 to i32
  %5583 = sitofp i32 %5582 to float
  %5584 = fmul fast float %5583, %5577
  %5585 = fadd fast float %5581, %5584
  %5586 = fptosi float %5585 to i32
  %5587 = bitcast i32 %5586 to float
  %5588 = fsub fast float 1.000000e+00, %2237
  %5589 = fsub fast float 1.000000e+00, %2238
  %5590 = fsub fast float 1.000000e+00, %2243
  %5591 = fmul fast float %5587, %5588
  %5592 = fmul fast float %5587, %5589
  %5593 = fmul fast float %5587, %5590
  %5594 = fadd fast float %5591, %2237
  %5595 = fadd fast float %5592, %2238
  %5596 = fadd fast float %5593, %2243
  br i1 %3552, label %5597, label %5620

; <label>:5597                                    ; preds = %5514
  %5598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1605, float %5578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5599 = extractvalue %dx.types.ResRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.ResRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.ResRet.f32 %5598, 2
  %5602 = fadd fast float %5599, -5.000000e-01
  %5603 = fadd fast float %5600, -5.000000e-01
  %5604 = fadd fast float %5601, -5.000000e-01
  %5605 = fmul fast float %2237, 4.000000e+00
  %5606 = fmul fast float %5605, %5588
  %5607 = fmul fast float %5606, %5602
  %5608 = fmul fast float %2238, 4.000000e+00
  %5609 = fmul fast float %5608, %5589
  %5610 = fmul fast float %5609, %5603
  %5611 = fmul fast float %2243, 4.000000e+00
  %5612 = fmul fast float %5611, %5590
  %5613 = fmul fast float %5612, %5604
  %5614 = fadd fast float %5607, %5594
  %5615 = fadd fast float %5610, %5595
  %5616 = fadd fast float %5613, %5596
  %5617 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5618 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5619 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  br label %5620

; <label>:5620                                    ; preds = %5597, %5514
  %5621 = phi float [ %5617, %5597 ], [ %5594, %5514 ]
  %5622 = phi float [ %5618, %5597 ], [ %5595, %5514 ]
  %5623 = phi float [ %5619, %5597 ], [ %5596, %5514 ]
  %5624 = fmul fast float %5541, 9.843750e-01
  %5625 = fadd fast float %5624, 7.812500e-03
  %5626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5625, float %3533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5627 = extractvalue %dx.types.ResRet.f32 %5626, 0
  %5628 = extractvalue %dx.types.ResRet.f32 %5626, 1
  %5629 = extractvalue %dx.types.ResRet.f32 %5626, 2
  %5630 = extractvalue %dx.types.ResRet.f32 %5626, 3
  %5631 = fsub fast float %5629, %5627
  %5632 = fsub fast float %5630, %5628
  %5633 = fmul fast float %5631, %3539
  %5634 = fmul fast float %5632, %3539
  %5635 = fadd fast float %5633, %5627
  %5636 = fadd fast float %5634, %5628
  %5637 = fmul fast float %5635, %2237
  %5638 = fmul fast float %5635, %2238
  %5639 = fmul fast float %5635, %2243
  %5640 = fadd fast float %5637, %5636
  %5641 = fadd fast float %5638, %5636
  %5642 = fadd fast float %5639, %5636
  br i1 %3552, label %5643, label %5666

; <label>:5643                                    ; preds = %5620
  %5644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1605, float %5541, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5645 = extractvalue %dx.types.ResRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.ResRet.f32 %5644, 1
  %5647 = extractvalue %dx.types.ResRet.f32 %5644, 2
  %5648 = fadd fast float %5645, -5.000000e-01
  %5649 = fadd fast float %5646, -5.000000e-01
  %5650 = fadd fast float %5647, -5.000000e-01
  %5651 = fmul fast float %2237, 4.000000e+00
  %5652 = fmul fast float %5651, %5588
  %5653 = fmul fast float %5652, %5648
  %5654 = fmul fast float %2238, 4.000000e+00
  %5655 = fmul fast float %5654, %5589
  %5656 = fmul fast float %5655, %5649
  %5657 = fmul fast float %2243, 4.000000e+00
  %5658 = fmul fast float %5657, %5590
  %5659 = fmul fast float %5658, %5650
  %5660 = fadd fast float %5653, %5640
  %5661 = fadd fast float %5656, %5641
  %5662 = fadd fast float %5659, %5642
  %5663 = call float @dx.op.unary.f32(i32 7, float %5660)  ; Saturate(value)
  %5664 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5665 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  br label %5666

; <label>:5666                                    ; preds = %5643, %5620
  %5667 = phi float [ %5663, %5643 ], [ %5640, %5620 ]
  %5668 = phi float [ %5664, %5643 ], [ %5641, %5620 ]
  %5669 = phi float [ %5665, %5643 ], [ %5642, %5620 ]
  %5670 = call float @dx.op.binary.f32(i32 35, float %5668, float %5669)  ; FMax(a,b)
  %5671 = call float @dx.op.binary.f32(i32 35, float %5667, float %5670)  ; FMax(a,b)
  %5672 = fsub fast float 1.000000e+00, %5671
  %5673 = fmul fast float %5621, %5575
  %5674 = fmul fast float %5622, %5575
  %5675 = fmul fast float %5623, %5575
  %5676 = fsub fast float 1.000000e+00, %5542
  %5677 = bitcast float %5676 to i32
  %5678 = sitofp i32 %5677 to float
  %5679 = fmul fast float %5678, 5.000000e+00
  %5680 = fadd fast float %5679, 0xC1EFBF8940000000
  %5681 = fptosi float %5680 to i32
  %5682 = bitcast i32 %5681 to float
  %5683 = fmul fast float %5682, %1604
  %5684 = fmul fast float %5672, %5683
  %5685 = fmul fast float %5684, %4094
  %5686 = fmul fast float %5684, %4095
  %5687 = fmul fast float %5684, %4096
  %5688 = fadd fast float %5685, %5673
  %5689 = fadd fast float %5686, %5674
  %5690 = fadd fast float %5687, %5675
  %5691 = fmul fast float %5547, %5530
  %5692 = fmul fast float %5691, %5672
  %5693 = fmul fast float %5547, %5531
  %5694 = fmul fast float %5693, %5672
  %5695 = fmul fast float %5547, %5532
  %5696 = fmul fast float %5695, %5672
  %5697 = fmul fast float %5691, %5688
  %5698 = fmul fast float %5693, %5689
  %5699 = fmul fast float %5695, %5690
  %5700 = fadd fast float %5692, %4078
  %5701 = fmul fast float %5700, %1625
  %5702 = fadd fast float %5694, %4079
  %5703 = fmul fast float %5702, %1625
  %5704 = fadd fast float %5696, %4080
  %5705 = fmul fast float %5704, %1625
  %5706 = fadd fast float %5697, %4147
  %5707 = fmul fast float %5706, %1625
  %5708 = fadd fast float %5698, %4150
  %5709 = fmul fast float %5708, %1625
  %5710 = fadd fast float %5699, %4153
  %5711 = fmul fast float %5710, %1625
  br label %5712

; <label>:5712                                    ; preds = %5666, %5448, %4074
  %5713 = phi float [ %4148, %4074 ], [ %4148, %5448 ], [ %5707, %5666 ]
  %5714 = phi float [ %4151, %4074 ], [ %4151, %5448 ], [ %5709, %5666 ]
  %5715 = phi float [ %4154, %4074 ], [ %4154, %5448 ], [ %5711, %5666 ]
  %5716 = phi float [ %4143, %4074 ], [ %4143, %5448 ], [ %5701, %5666 ]
  %5717 = phi float [ %4144, %4074 ], [ %4144, %5448 ], [ %5703, %5666 ]
  %5718 = phi float [ %4145, %4074 ], [ %4145, %5448 ], [ %5705, %5666 ]
  %5719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.i32 %5719, 0
  %5721 = icmp eq i32 %5720, 0
  br i1 %5721, label %6396, label %5722

; <label>:5722                                    ; preds = %5712
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 2
  %5725 = extractvalue %dx.types.CBufRet.f32 %5723, 3
  %5726 = fmul fast float %5724, %99
  %5727 = fmul fast float %5725, %100
  %5728 = fptoui float %5726 to i32
  %5729 = fptoui float %5727 to i32
  %5730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5731 = extractvalue %dx.types.CBufRet.f32 %5730, 0
  %5732 = extractvalue %dx.types.CBufRet.f32 %5730, 2
  %5733 = extractvalue %dx.types.CBufRet.f32 %5730, 3
  %5734 = fadd fast float %87, -4.000000e+00
  %5735 = call float @dx.op.binary.f32(i32 35, float %5734, float 0.000000e+00)  ; FMax(a,b)
  %5736 = fadd fast float %5735, %5731
  %5737 = fmul fast float %5736, %5732
  %5738 = call float @dx.op.unary.f32(i32 23, float %5737)  ; Log(value)
  %5739 = fmul fast float %5738, %5733
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 2
  %5742 = fmul fast float %5739, %5741
  %5743 = call float @dx.op.unary.f32(i32 7, float %5742)  ; Saturate(value)
  %5744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5745 = extractvalue %dx.types.CBufRet.i32 %5744, 1
  %5746 = add i32 %5745, -1
  %5747 = uitofp i32 %5745 to float
  %5748 = fmul fast float %5747, %5743
  %5749 = fptoui float %5748 to i32
  %5750 = call i32 @dx.op.binary.i32(i32 40, i32 %5749, i32 %5746)  ; UMin(a,b)
  %5751 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.i32 %5751, 2
  %5753 = extractvalue %dx.types.CBufRet.i32 %5751, 3
  %5754 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5729, i32 %5752, i32 %5728)  ; UMad(a,b,c)
  %5755 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5750, i32 %5753, i32 %5754)  ; UMad(a,b,c)
  %5756 = add nsw i32 %5720, -1
  %5757 = call i32 @dx.op.binary.i32(i32 37, i32 %5756, i32 0)  ; IMax(a,b)
  %5758 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %5759 = fptoui float %5758 to i32
  %5760 = lshr i32 %5759, 5
  %5761 = call i32 @dx.op.binary.i32(i32 40, i32 %5760, i32 8191)  ; UMin(a,b)
  %5762 = shl i32 %5761, 2
  %5763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5762, i32 undef)  ; BufferLoad(srv,index,wot)
  %5764 = extractvalue %dx.types.ResRet.i32 %5763, 0
  %5765 = lshr i32 %5764, 16
  %5766 = and i32 %5764, 65535
  %5767 = lshr i32 %5764, 21
  %5768 = lshr i32 %5766, 5
  %5769 = call i32 @dx.op.binary.i32(i32 40, i32 %5768, i32 %5757)  ; UMin(a,b)
  %5770 = icmp ugt i32 %5767, %5769
  br i1 %5770, label %6396, label %5771

; <label>:5771                                    ; preds = %5722
  br label %5772

; <label>:5772                                    ; preds = %6386, %5771
  %5773 = phi i32 [ %6393, %6386 ], [ %5767, %5771 ]
  %5774 = phi float [ %6387, %6386 ], [ %5713, %5771 ]
  %5775 = phi float [ %6388, %6386 ], [ %5714, %5771 ]
  %5776 = phi float [ %6389, %6386 ], [ %5715, %5771 ]
  %5777 = phi float [ %6390, %6386 ], [ %5716, %5771 ]
  %5778 = phi float [ %6391, %6386 ], [ %5717, %5771 ]
  %5779 = phi float [ %6392, %6386 ], [ %5718, %5771 ]
  %5780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.i32 %5780, 0
  %5782 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5755, i32 %5781, i32 %5773)  ; UMad(a,b,c)
  %5783 = shl i32 %5782, 2
  %5784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5783, i32 undef)  ; BufferLoad(srv,index,wot)
  %5785 = extractvalue %dx.types.ResRet.i32 %5784, 0
  %5786 = shl i32 %5773, 5
  %5787 = sub nsw i32 %5765, %5786
  %5788 = call i32 @dx.op.binary.i32(i32 37, i32 %5787, i32 0)  ; IMax(a,b)
  %5789 = call i32 @dx.op.binary.i32(i32 38, i32 %5788, i32 31)  ; IMin(a,b)
  %5790 = sub nsw i32 1, %5765
  %5791 = add nsw i32 %5790, %5766
  %5792 = call i32 @dx.op.binary.i32(i32 37, i32 %5791, i32 0)  ; IMax(a,b)
  %5793 = call i32 @dx.op.binary.i32(i32 38, i32 %5792, i32 32)  ; IMin(a,b)
  %5794 = and i32 %5793, 31
  %5795 = shl i32 -1, %5794
  %5796 = xor i32 %5795, -1
  %5797 = and i32 %5789, 31
  %5798 = shl i32 %5796, %5797
  %5799 = icmp eq i32 %5793, 32
  %5800 = select i1 %5799, i32 -1, i32 %5798
  %5801 = and i32 %5800, %5785
  %5802 = icmp eq i32 %5801, 0
  br i1 %5802, label %6386, label %5803

; <label>:5803                                    ; preds = %5772
  br label %5804

; <label>:5804                                    ; preds = %5938, %5803
  %5805 = phi i32 [ %5816, %5938 ], [ %5801, %5803 ]
  %5806 = phi float [ %5939, %5938 ], [ %5774, %5803 ]
  %5807 = phi float [ %5940, %5938 ], [ %5775, %5803 ]
  %5808 = phi float [ %5941, %5938 ], [ %5776, %5803 ]
  %5809 = phi float [ %5942, %5938 ], [ %5777, %5803 ]
  %5810 = phi float [ %5943, %5938 ], [ %5778, %5803 ]
  %5811 = phi float [ %5944, %5938 ], [ %5779, %5803 ]
  %5812 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5805)  ; FirstbitLo(value)
  %5813 = add i32 %5812, %5786
  %5814 = and i32 %5812, 31
  %5815 = shl i32 1, %5814
  %5816 = xor i32 %5815, %5805
  %5817 = mul i32 %5813, 112
  %5818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5817, i32 undef)  ; BufferLoad(srv,index,wot)
  %5819 = extractvalue %dx.types.ResRet.f32 %5818, 0
  %5820 = extractvalue %dx.types.ResRet.f32 %5818, 1
  %5821 = extractvalue %dx.types.ResRet.f32 %5818, 2
  %5822 = or i32 %5817, 12
  %5823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5822, i32 undef)  ; BufferLoad(srv,index,wot)
  %5824 = extractvalue %dx.types.ResRet.f32 %5823, 0
  %5825 = add i32 %5817, 16
  %5826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.ResRet.f32 %5826, 1
  %5829 = extractvalue %dx.types.ResRet.f32 %5826, 2
  %5830 = add i32 %5817, 28
  %5831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5830, i32 undef)  ; BufferLoad(srv,index,wot)
  %5832 = extractvalue %dx.types.ResRet.i32 %5831, 0
  %5833 = add i32 %5817, 44
  %5834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.f32 %5834, 0
  %5836 = add i32 %5817, 48
  %5837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5836, i32 undef)  ; BufferLoad(srv,index,wot)
  %5838 = extractvalue %dx.types.ResRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.ResRet.f32 %5837, 1
  %5840 = extractvalue %dx.types.ResRet.f32 %5837, 2
  %5841 = extractvalue %dx.types.ResRet.f32 %5837, 3
  %5842 = add i32 %5817, 64
  %5843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5842, i32 undef)  ; BufferLoad(srv,index,wot)
  %5844 = extractvalue %dx.types.ResRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.ResRet.f32 %5843, 1
  %5846 = extractvalue %dx.types.ResRet.f32 %5843, 2
  %5847 = extractvalue %dx.types.ResRet.f32 %5843, 3
  %5848 = add i32 %5817, 80
  %5849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5848, i32 undef)  ; BufferLoad(srv,index,wot)
  %5850 = extractvalue %dx.types.ResRet.f32 %5849, 1
  %5851 = extractvalue %dx.types.ResRet.f32 %5849, 2
  %5852 = add i32 %5817, 92
  %5853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5852, i32 undef)  ; BufferLoad(srv,index,wot)
  %5854 = extractvalue %dx.types.ResRet.i32 %5853, 0
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5819, float %5820, float %5821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = select i1 %237, float %5850, float %5819
  %5857 = select i1 %237, float %5855, float %5820
  %5858 = select i1 %237, float %5851, float %5821
  %5859 = and i32 %5854, 65535
  %5860 = uitofp i32 %5859 to float
  %5861 = lshr i32 %5854, 16
  %5862 = uitofp i32 %5861 to float
  %5863 = and i32 %5832, 65535
  %5864 = and i32 %5832, 50331648
  %5865 = icmp eq i32 %5864, 33554432
  %5866 = fsub fast float %5838, %146
  %5867 = fsub fast float %5839, %147
  %5868 = fsub fast float %5840, %148
  %5869 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5867, float %5868, float %5866, float %5867, float %5868)  ; Dot3(ax,ay,az,bx,by,bz)
  %5870 = call float @dx.op.unary.f32(i32 24, float %5869)  ; Sqrt(value)
  %5871 = fdiv fast float 1.000000e+00, %5870
  %5872 = fmul fast float %5871, %5866
  %5873 = fmul fast float %5871, %5867
  %5874 = fmul fast float %5871, %5868
  %5875 = fadd fast float %5870, %5824
  %5876 = fdiv fast float 1.000000e+00, %5875
  %5877 = fmul float %5835, %5876
  %5878 = fmul float %5877, %5877
  %5879 = call float @dx.op.unary.f32(i32 7, float %5878)  ; Saturate(value)
  br i1 %5865, label %5880, label %5901

; <label>:5880                                    ; preds = %5804
  %5881 = fmul fast float %5846, %5827
  %5882 = fmul fast float %5846, %5828
  %5883 = fmul fast float %5846, %5829
  %5884 = fadd fast float %5866, %5881
  %5885 = fadd fast float %5867, %5882
  %5886 = fadd fast float %5868, %5883
  %5887 = call float @dx.op.dot3.f32(i32 55, float %5884, float %5885, float %5886, float %5884, float %5885, float %5886)  ; Dot3(ax,ay,az,bx,by,bz)
  %5888 = call float @dx.op.unary.f32(i32 25, float %5887)  ; Rsqrt(value)
  %5889 = fmul fast float %5888, %5884
  %5890 = fmul fast float %5888, %5885
  %5891 = fmul fast float %5888, %5886
  %5892 = fsub fast float %146, %5838
  %5893 = fsub fast float %147, %5839
  %5894 = fsub fast float %148, %5840
  %5895 = fsub fast float -0.000000e+00, %5892
  %5896 = fsub fast float -0.000000e+00, %5893
  %5897 = fsub fast float -0.000000e+00, %5894
  %5898 = call float @dx.op.dot3.f32(i32 55, float %5895, float %5896, float %5897, float %5827, float %5828, float %5829)  ; Dot3(ax,ay,az,bx,by,bz)
  %5899 = fcmp fast ogt float %5898, 0.000000e+00
  %5900 = uitofp i1 %5899 to float
  br label %5901

; <label>:5901                                    ; preds = %5880, %5804
  %5902 = phi float [ %5900, %5880 ], [ 1.000000e+00, %5804 ]
  %5903 = phi float [ %5889, %5880 ], [ %5872, %5804 ]
  %5904 = phi float [ %5890, %5880 ], [ %5873, %5804 ]
  %5905 = phi float [ %5891, %5880 ], [ %5874, %5804 ]
  %5906 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %5903, float %5904, float %5905)  ; Dot3(ax,ay,az,bx,by,bz)
  %5907 = fmul fast float %5906, %5906
  %5908 = call float @dx.op.unary.f32(i32 7, float %5907)  ; Saturate(value)
  %5909 = fsub fast float 1.000000e+00, %5908
  %5910 = fmul fast float %5909, 5.000000e-01
  %5911 = fcmp fast ogt float %5906, 0.000000e+00
  %5912 = fsub fast float 1.000000e+00, %5910
  %5913 = select i1 %5911, float %5910, float %5912
  %5914 = fmul fast float %5913, %5862
  %5915 = fadd fast float %5914, %5860
  %5916 = fmul fast float %5915, 0x3EF0001000000000
  %5917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %5916, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5918 = extractvalue %dx.types.ResRet.f32 %5917, 0
  %5919 = fmul fast float %5906, %5844
  %5920 = fadd fast float %5919, %5845
  %5921 = call float @dx.op.unary.f32(i32 7, float %5920)  ; Saturate(value)
  %5922 = select i1 %5865, float 1.000000e+00, float %5921
  %5923 = select i1 %5865, float %5921, float 1.000000e+00
  %5924 = fmul fast float %5870, %5841
  %5925 = fsub fast float 1.000000e+00, %5924
  %5926 = fmul fast float %5925, %5847
  %5927 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5928 = fmul fast float %5927, %5923
  %5929 = fmul fast float %5928, 2.000000e+00
  %5930 = fsub fast float 3.000000e+00, %5929
  %5931 = fmul fast float %5918, %5902
  %5932 = fmul fast float %5928, %5928
  %5933 = fmul fast float %5932, %5931
  %5934 = fmul fast float %5933, %5930
  %5935 = call float @dx.op.binary.f32(i32 36, float %5934, float %5934)  ; FMin(a,b)
  %5936 = call float @dx.op.binary.f32(i32 36, float %5934, float %5935)  ; FMin(a,b)
  %5937 = fcmp fast ogt float %5936, 0.000000e+00
  br i1 %5937, label %5946, label %5938, !dx.controlflow.hints !143

; <label>:5938                                    ; preds = %6342, %6092, %5901
  %5939 = phi float [ %5806, %6092 ], [ %5806, %5901 ], [ %6382, %6342 ]
  %5940 = phi float [ %5807, %6092 ], [ %5807, %5901 ], [ %6383, %6342 ]
  %5941 = phi float [ %5808, %6092 ], [ %5808, %5901 ], [ %6384, %6342 ]
  %5942 = phi float [ %5809, %6092 ], [ %5809, %5901 ], [ %6376, %6342 ]
  %5943 = phi float [ %5810, %6092 ], [ %5810, %5901 ], [ %6377, %6342 ]
  %5944 = phi float [ %5811, %6092 ], [ %5811, %5901 ], [ %6378, %6342 ]
  %5945 = icmp eq i32 %5805, %5815
  br i1 %5945, label %6385, label %5804

; <label>:5946                                    ; preds = %5901
  %5947 = icmp eq i32 %5863, 255
  br i1 %5947, label %6092, label %5948, !dx.controlflow.hints !144

; <label>:5948                                    ; preds = %5946
  %5949 = mul nuw nsw i32 %5863, 176
  %5950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5949, i32 undef)  ; BufferLoad(srv,index,wot)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.ResRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.ResRet.f32 %5950, 2
  %5954 = extractvalue %dx.types.ResRet.f32 %5950, 3
  %5955 = add nuw nsw i32 %5949, 16
  %5956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5955, i32 undef)  ; BufferLoad(srv,index,wot)
  %5957 = extractvalue %dx.types.ResRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.ResRet.f32 %5956, 1
  %5959 = add nuw nsw i32 %5949, 32
  %5960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5959, i32 undef)  ; BufferLoad(srv,index,wot)
  %5961 = extractvalue %dx.types.ResRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.ResRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.ResRet.f32 %5960, 2
  %5964 = add nuw nsw i32 %5949, 48
  %5965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5964, i32 undef)  ; BufferLoad(srv,index,wot)
  %5966 = extractvalue %dx.types.ResRet.f32 %5965, 0
  %5967 = extractvalue %dx.types.ResRet.f32 %5965, 1
  %5968 = extractvalue %dx.types.ResRet.f32 %5965, 2
  %5969 = extractvalue %dx.types.ResRet.f32 %5965, 3
  %5970 = add nuw nsw i32 %5949, 64
  %5971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5970, i32 undef)  ; BufferLoad(srv,index,wot)
  %5972 = extractvalue %dx.types.ResRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.ResRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.ResRet.f32 %5971, 2
  %5975 = extractvalue %dx.types.ResRet.f32 %5971, 3
  %5976 = add nuw nsw i32 %5949, 80
  %5977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5976, i32 undef)  ; BufferLoad(srv,index,wot)
  %5978 = extractvalue %dx.types.ResRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.ResRet.f32 %5977, 1
  %5980 = extractvalue %dx.types.ResRet.f32 %5977, 2
  %5981 = extractvalue %dx.types.ResRet.f32 %5977, 3
  %5982 = add nuw nsw i32 %5949, 96
  %5983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5982, i32 undef)  ; BufferLoad(srv,index,wot)
  %5984 = extractvalue %dx.types.ResRet.f32 %5983, 0
  %5985 = extractvalue %dx.types.ResRet.f32 %5983, 1
  %5986 = extractvalue %dx.types.ResRet.f32 %5983, 2
  %5987 = extractvalue %dx.types.ResRet.f32 %5983, 3
  %5988 = bitcast float %5958 to i32
  %5989 = fmul fast float %5963, %76
  %5990 = fmul fast float %5963, %77
  %5991 = fmul fast float %5963, %78
  %5992 = fadd fast float %5989, %146
  %5993 = fadd fast float %5990, %147
  %5994 = fadd fast float %5991, %148
  %5995 = fmul fast float %5992, %5966
  %5996 = call float @dx.op.tertiary.f32(i32 46, float %5993, float %5972, float %5995)  ; FMad(a,b,c)
  %5997 = call float @dx.op.tertiary.f32(i32 46, float %5994, float %5978, float %5996)  ; FMad(a,b,c)
  %5998 = fadd fast float %5997, %5984
  %5999 = fmul fast float %5992, %5967
  %6000 = call float @dx.op.tertiary.f32(i32 46, float %5993, float %5973, float %5999)  ; FMad(a,b,c)
  %6001 = call float @dx.op.tertiary.f32(i32 46, float %5994, float %5979, float %6000)  ; FMad(a,b,c)
  %6002 = fadd fast float %6001, %5985
  %6003 = fmul fast float %5992, %5968
  %6004 = call float @dx.op.tertiary.f32(i32 46, float %5993, float %5974, float %6003)  ; FMad(a,b,c)
  %6005 = call float @dx.op.tertiary.f32(i32 46, float %5994, float %5980, float %6004)  ; FMad(a,b,c)
  %6006 = fadd fast float %6005, %5986
  %6007 = fmul fast float %5992, %5969
  %6008 = call float @dx.op.tertiary.f32(i32 46, float %5993, float %5975, float %6007)  ; FMad(a,b,c)
  %6009 = call float @dx.op.tertiary.f32(i32 46, float %5994, float %5981, float %6008)  ; FMad(a,b,c)
  %6010 = fadd fast float %6009, %5987
  %6011 = fdiv fast float %5998, %6010
  %6012 = fdiv fast float %6002, %6010
  %6013 = fdiv fast float %6006, %6010
  %6014 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6013)  ; FMax(a,b)
  %6015 = fmul fast float %248, 0x401921FB60000000
  %6016 = call float @dx.op.unary.f32(i32 13, float %6015)  ; Sin(value)
  %6017 = call float @dx.op.unary.f32(i32 12, float %6015)  ; Cos(value)
  %6018 = fmul fast float %6017, %5962
  %6019 = call float @dx.op.tertiary.f32(i32 46, float %6016, float %5962, float 0.000000e+00)  ; FMad(a,b,c)
  %6020 = fmul fast float %5962, %6016
  %6021 = fsub fast float -0.000000e+00, %6020
  %6022 = call float @dx.op.tertiary.f32(i32 46, float %6017, float %5962, float 0.000000e+00)  ; FMad(a,b,c)
  br label %6023

; <label>:6023                                    ; preds = %6023, %5948
  %6024 = phi float [ 0.000000e+00, %5948 ], [ %6056, %6023 ]
  %6025 = phi float [ 0.000000e+00, %5948 ], [ %6058, %6023 ]
  %6026 = phi i32 [ 0, %5948 ], [ %6059, %6023 ]
  %6027 = mul i32 %6026, 2
  %6028 = add i32 0, %6027
  %6029 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6028
  %6030 = load float, float* %6029, align 4
  %6031 = mul i32 %6026, 2
  %6032 = add i32 1, %6031
  %6033 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6032
  %6034 = load float, float* %6033, align 4
  %6035 = fmul fast float %6018, %6030
  %6036 = call float @dx.op.tertiary.f32(i32 46, float %6034, float %6021, float %6035)  ; FMad(a,b,c)
  %6037 = fmul fast float %6030, %6019
  %6038 = call float @dx.op.tertiary.f32(i32 46, float %6034, float %6022, float %6037)  ; FMad(a,b,c)
  %6039 = fadd fast float %6036, %6011
  %6040 = fadd fast float %6038, %6012
  %6041 = fmul fast float %6039, %5957
  %6042 = fmul fast float %6040, %5957
  %6043 = call float @dx.op.binary.f32(i32 35, float %6041, float %5953)  ; FMax(a,b)
  %6044 = call float @dx.op.binary.f32(i32 35, float %6042, float %5953)  ; FMax(a,b)
  %6045 = call float @dx.op.binary.f32(i32 36, float %6043, float %5954)  ; FMin(a,b)
  %6046 = call float @dx.op.binary.f32(i32 36, float %6044, float %5954)  ; FMin(a,b)
  %6047 = fadd fast float %6045, %5951
  %6048 = fadd fast float %6046, %5952
  %6049 = uitofp i32 %5988 to float
  %6050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %6047, float %6048, float %6049, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6051 = extractvalue %dx.types.ResRet.f32 %6050, 0
  %6052 = fsub fast float %6051, %6014
  %6053 = fsub fast float %6052, %5961
  %6054 = fcmp fast ogt float %6053, 0.000000e+00
  %6055 = select i1 %6054, float 1.000000e+00, float 0.000000e+00
  %6056 = fadd fast float %6055, %6024
  %6057 = select i1 %6054, float %6053, float 0.000000e+00
  %6058 = fadd fast float %6057, %6025
  %6059 = add nuw nsw i32 %6026, 1
  %6060 = icmp eq i32 %6059, 8
  br i1 %6060, label %6061, label %6023

; <label>:6061                                    ; preds = %6023
  %6062 = fdiv fast float 1.000000e+00, %6056
  %6063 = fmul fast float %6062, %6058
  %6064 = fdiv fast float 1.000000e+00, %6014
  %6065 = fmul fast float %6063, %6064
  %6066 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  %6067 = call float @dx.op.binary.f32(i32 35, float %6066, float 0.000000e+00)  ; FMax(a,b)
  %6068 = fmul fast float %6056, 1.250000e-01
  %6069 = call float @dx.op.unary.f32(i32 7, float %6068)  ; Saturate(value)
  %6070 = fmul fast float %6069, 2.000000e+00
  %6071 = fadd fast float %6070, -1.000000e+00
  %6072 = fcmp fast ogt float %6071, 0.000000e+00
  %6073 = fcmp fast olt float %6071, 0.000000e+00
  %6074 = zext i1 %6072 to i32
  %6075 = zext i1 %6073 to i32
  %6076 = sub nsw i32 %6074, %6075
  %6077 = sitofp i32 %6076 to float
  %6078 = fmul fast float %6077, %6071
  %6079 = fsub fast float 1.000000e+00, %6078
  %6080 = fmul fast float %6079, %6079
  %6081 = fmul fast float %6080, %6079
  %6082 = fsub fast float %6079, %6081
  %6083 = fmul fast float %6082, %6067
  %6084 = fsub fast float 1.000000e+00, %6081
  %6085 = fsub fast float %6084, %6083
  %6086 = fmul fast float %6077, 5.000000e-01
  %6087 = fmul fast float %6086, %6085
  %6088 = fsub fast float -5.000000e-01, %6087
  %6089 = fmul fast float %6088, %5922
  %6090 = fadd fast float %6089, 1.000000e+00
  %6091 = fmul fast float %6090, %5934
  br label %6092

; <label>:6092                                    ; preds = %6061, %5946
  %6093 = phi float [ %6091, %6061 ], [ %5934, %5946 ]
  %6094 = call float @dx.op.binary.f32(i32 36, float %6093, float %6093)  ; FMin(a,b)
  %6095 = call float @dx.op.binary.f32(i32 36, float %6093, float %6094)  ; FMin(a,b)
  %6096 = fcmp fast ogt float %6095, 0.000000e+00
  br i1 %6096, label %6097, label %5938, !dx.controlflow.hints !145

; <label>:6097                                    ; preds = %6092
  %6098 = fmul fast float %6093, %5856
  %6099 = fmul fast float %6093, %5857
  %6100 = fmul fast float %6093, %5858
  %6101 = fsub fast float %5840, %2030
  %6102 = fcmp fast ogt float %6101, 0.000000e+00
  %6103 = fsub fast float %148, %2030
  %6104 = fcmp fast ogt float %6103, 0.000000e+00
  %6105 = xor i1 %6104, %6102
  %6106 = fsub fast float %2030, %5840
  %6107 = fmul fast float %6106, 2.000000e+00
  %6108 = fadd fast float %6107, %5840
  %6109 = select i1 %6105, float %5840, float %6108
  %6110 = fsub fast float %6109, %148
  %6111 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5867, float %6110, float %5866, float %5867, float %6110)  ; Dot3(ax,ay,az,bx,by,bz)
  %6112 = call float @dx.op.unary.f32(i32 25, float %6111)  ; Rsqrt(value)
  %6113 = fmul fast float %6112, %5866
  %6114 = fmul fast float %6112, %5867
  %6115 = fmul fast float %6112, %6110
  %6116 = fsub fast float %2030, %148
  %6117 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6116)  ; Dot3(ax,ay,az,bx,by,bz)
  %6118 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6113, float %6114, float %6115)  ; Dot3(ax,ay,az,bx,by,bz)
  %6119 = fdiv fast float 1.000000e+00, %6118
  %6120 = fmul fast float %6119, %6117
  %6121 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6103, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6122 = fcmp fast ogt float %6121, 0.000000e+00
  %6123 = fcmp fast olt float %6121, 0.000000e+00
  %6124 = zext i1 %6122 to i32
  %6125 = zext i1 %6123 to i32
  %6126 = sub nsw i32 %6124, %6125
  %6127 = sitofp i32 %6126 to float
  %6128 = fsub fast float %6109, %2030
  %6129 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5867, float %6128, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6130 = fcmp fast ogt float %6129, 0.000000e+00
  %6131 = fcmp fast olt float %6129, 0.000000e+00
  %6132 = zext i1 %6130 to i32
  %6133 = zext i1 %6131 to i32
  %6134 = sub nsw i32 %6132, %6133
  %6135 = sitofp i32 %6134 to float
  %6136 = fcmp fast une float %6127, %6135
  br i1 %6136, label %6137, label %6147

; <label>:6137                                    ; preds = %6097
  %6138 = fmul fast float %6120, %6115
  %6139 = fmul fast float %6120, %6114
  %6140 = fmul fast float %6120, %6113
  %6141 = fmul fast float %6140, %6140
  %6142 = fmul fast float %6139, %6139
  %6143 = fadd fast float %6141, %6142
  %6144 = fmul fast float %6138, %6138
  %6145 = fadd fast float %6143, %6144
  %6146 = call float @dx.op.unary.f32(i32 24, float %6145)  ; Sqrt(value)
  br label %6159

; <label>:6147                                    ; preds = %6097
  %6148 = icmp slt i32 %6126, 0
  br i1 %6148, label %6149, label %6159

; <label>:6149                                    ; preds = %6147
  %6150 = fsub fast float %146, %5838
  %6151 = fsub fast float %147, %5839
  %6152 = fsub fast float %148, %6109
  %6153 = fmul fast float %6150, %6150
  %6154 = fmul fast float %6151, %6151
  %6155 = fadd fast float %6153, %6154
  %6156 = fmul fast float %6152, %6152
  %6157 = fadd fast float %6155, %6156
  %6158 = call float @dx.op.unary.f32(i32 24, float %6157)  ; Sqrt(value)
  br label %6159

; <label>:6159                                    ; preds = %6149, %6147, %6137
  %6160 = phi float [ %6146, %6137 ], [ %6158, %6149 ], [ 0.000000e+00, %6147 ]
  %6161 = and i1 %6104, %6102
  %6162 = fsub fast float -0.000000e+00, %6160
  %6163 = select i1 %6161, float -0.000000e+00, float %6162
  %6164 = fmul fast float %2031, 0x3FF7154760000000
  %6165 = fmul fast float %6164, %6163
  %6166 = fmul fast float %2032, 0x3FF7154760000000
  %6167 = fmul fast float %6166, %6163
  %6168 = fmul fast float %2033, 0x3FF7154760000000
  %6169 = fmul fast float %6168, %6163
  %6170 = call float @dx.op.unary.f32(i32 21, float %6165)  ; Exp(value)
  %6171 = call float @dx.op.unary.f32(i32 21, float %6167)  ; Exp(value)
  %6172 = call float @dx.op.unary.f32(i32 21, float %6169)  ; Exp(value)
  %6173 = call float @dx.op.unary.f32(i32 7, float %6170)  ; Saturate(value)
  %6174 = call float @dx.op.unary.f32(i32 7, float %6171)  ; Saturate(value)
  %6175 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6176 = fmul fast float %6098, %6173
  %6177 = fmul fast float %6099, %6174
  %6178 = fmul fast float %6100, %6175
  %6179 = fsub fast float %5872, %2230
  %6180 = fsub fast float %5873, %2229
  %6181 = fsub fast float %5874, %2228
  %6182 = call float @dx.op.dot3.f32(i32 55, float %6179, float %6180, float %6181, float %6179, float %6180, float %6181)  ; Dot3(ax,ay,az,bx,by,bz)
  %6183 = call float @dx.op.unary.f32(i32 25, float %6182)  ; Rsqrt(value)
  %6184 = fmul fast float %6183, %6179
  %6185 = fmul fast float %6183, %6180
  %6186 = fmul fast float %6183, %6181
  %6187 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %2234, float %2235, float %2236)  ; Dot3(ax,ay,az,bx,by,bz)
  %6188 = call float @dx.op.dot3.f32(i32 55, float %2227, float %2226, float %2225, float %6184, float %6185, float %6186)  ; Dot3(ax,ay,az,bx,by,bz)
  %6189 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  %6190 = fmul fast float %6189, %5879
  %6191 = fmul fast float %6189, %6189
  %6192 = fmul fast float %6191, %4155
  %6193 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6194 = fmul fast float %6190, %6193
  %6195 = bitcast float %5869 to i32
  %6196 = ashr i32 %6195, 1
  %6197 = sub nsw i32 1597463007, %6196
  %6198 = bitcast i32 %6197 to float
  %6199 = fmul fast float %6198, %5866
  %6200 = fmul fast float %6198, %5867
  %6201 = fmul fast float %6198, %5868
  %6202 = fsub fast float %6199, %2230
  %6203 = fsub fast float %6200, %2229
  %6204 = fsub fast float %6201, %2228
  %6205 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float %6202, float %6203, float %6204)  ; Dot3(ax,ay,az,bx,by,bz)
  %6206 = call float @dx.op.unary.f32(i32 25, float %6205)  ; Rsqrt(value)
  %6207 = fmul fast float %6202, %6206
  %6208 = fmul fast float %6203, %6206
  %6209 = fmul fast float %6204, %6206
  %6210 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2235, float %2236, float %6207, float %6208, float %6209)  ; Dot3(ax,ay,az,bx,by,bz)
  %6211 = fmul fast float %6210, %6210
  %6212 = call float @dx.op.unary.f32(i32 6, float %6187)  ; FAbs(value)
  %6213 = fsub fast float 1.000000e+00, %2263
  %6214 = fmul fast float %2245, %2245
  %6215 = fmul fast float %6214, %6213
  %6216 = fadd fast float %6215, %2263
  %6217 = bitcast float %6216 to i32
  %6218 = ashr i32 %6217, 1
  %6219 = add nsw i32 %6218, 532487669
  %6220 = bitcast i32 %6219 to float
  %6221 = fadd fast float %6220, %2245
  %6222 = fmul fast float %2263, %6211
  %6223 = fsub fast float 1.000000e+00, %6211
  %6224 = fadd fast float %6223, %6222
  %6225 = fmul fast float %6212, %6212
  %6226 = fmul fast float %6225, %6213
  %6227 = fadd fast float %6226, %2263
  %6228 = bitcast float %6227 to i32
  %6229 = ashr i32 %6228, 1
  %6230 = add nsw i32 %6229, 532487669
  %6231 = bitcast i32 %6230 to float
  %6232 = fadd fast float %6231, %6212
  %6233 = fmul fast float %6224, %6224
  %6234 = fmul fast float %6233, %6221
  %6235 = fmul fast float %6234, %6232
  %6236 = fdiv fast float 1.000000e+00, %6235
  %6237 = bitcast float %2263 to i32
  %6238 = sitofp i32 %6237 to float
  %6239 = fmul fast float %6238, 0x3FE7F73180000000
  %6240 = fadd fast float %6239, 0x41AFE27C40000000
  %6241 = fptosi float %6240 to i32
  %6242 = bitcast i32 %6241 to float
  %6243 = fmul fast float %5835, 0x3FD80E9D60000000
  %6244 = fmul fast float %6243, %6198
  %6245 = fadd fast float %6242, %6244
  %6246 = bitcast float %6245 to i32
  %6247 = sub nsw i32 2129859010, %6246
  %6248 = bitcast i32 %6247 to float
  %6249 = fmul fast float %2263, %6236
  %6250 = fmul fast float %6249, %6242
  %6251 = fmul fast float %6250, %6248
  %6252 = fmul fast float %3529, 0x3FF9999980000000
  %6253 = fsub fast float 5.000000e+00, %6252
  %6254 = call float @dx.op.unary.f32(i32 6, float %6188)  ; FAbs(value)
  %6255 = fsub fast float 1.000000e+00, %6254
  %6256 = fmul fast float %3529, 0x41D9660740000000
  %6257 = fadd fast float %6256, 0xC1EFBF8940000000
  %6258 = bitcast float %6255 to i32
  %6259 = sitofp i32 %6258 to float
  %6260 = fmul fast float %6259, %6253
  %6261 = fadd fast float %6257, %6260
  %6262 = fptosi float %6261 to i32
  %6263 = bitcast i32 %6262 to float
  %6264 = fsub fast float 1.000000e+00, %2237
  %6265 = fsub fast float 1.000000e+00, %2238
  %6266 = fsub fast float 1.000000e+00, %2243
  %6267 = fmul fast float %6263, %6264
  %6268 = fmul fast float %6263, %6265
  %6269 = fmul fast float %6263, %6266
  %6270 = fadd fast float %6267, %2237
  %6271 = fadd fast float %6268, %2238
  %6272 = fadd fast float %6269, %2243
  br i1 %3552, label %6273, label %6296

; <label>:6273                                    ; preds = %6159
  %6274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1605, float %6254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6275 = extractvalue %dx.types.ResRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.ResRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.ResRet.f32 %6274, 2
  %6278 = fadd fast float %6275, -5.000000e-01
  %6279 = fadd fast float %6276, -5.000000e-01
  %6280 = fadd fast float %6277, -5.000000e-01
  %6281 = fmul fast float %2237, 4.000000e+00
  %6282 = fmul fast float %6281, %6264
  %6283 = fmul fast float %6282, %6278
  %6284 = fmul fast float %2238, 4.000000e+00
  %6285 = fmul fast float %6284, %6265
  %6286 = fmul fast float %6285, %6279
  %6287 = fmul fast float %2243, 4.000000e+00
  %6288 = fmul fast float %6287, %6266
  %6289 = fmul fast float %6288, %6280
  %6290 = fadd fast float %6283, %6270
  %6291 = fadd fast float %6286, %6271
  %6292 = fadd fast float %6289, %6272
  %6293 = call float @dx.op.unary.f32(i32 7, float %6290)  ; Saturate(value)
  %6294 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  %6295 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  br label %6296

; <label>:6296                                    ; preds = %6273, %6159
  %6297 = phi float [ %6293, %6273 ], [ %6270, %6159 ]
  %6298 = phi float [ %6294, %6273 ], [ %6271, %6159 ]
  %6299 = phi float [ %6295, %6273 ], [ %6272, %6159 ]
  %6300 = fmul fast float %6187, 9.843750e-01
  %6301 = fadd fast float %6300, 7.812500e-03
  %6302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6301, float %3533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6303 = extractvalue %dx.types.ResRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.ResRet.f32 %6302, 1
  %6305 = extractvalue %dx.types.ResRet.f32 %6302, 2
  %6306 = extractvalue %dx.types.ResRet.f32 %6302, 3
  %6307 = fsub fast float %6305, %6303
  %6308 = fsub fast float %6306, %6304
  %6309 = fmul fast float %6307, %3539
  %6310 = fmul fast float %6308, %3539
  %6311 = fadd fast float %6309, %6303
  %6312 = fadd fast float %6310, %6304
  %6313 = fmul fast float %6311, %2237
  %6314 = fmul fast float %6311, %2238
  %6315 = fmul fast float %6311, %2243
  %6316 = fadd fast float %6313, %6312
  %6317 = fadd fast float %6314, %6312
  %6318 = fadd fast float %6315, %6312
  br i1 %3552, label %6319, label %6342

; <label>:6319                                    ; preds = %6296
  %6320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1605, float %6187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6321 = extractvalue %dx.types.ResRet.f32 %6320, 0
  %6322 = extractvalue %dx.types.ResRet.f32 %6320, 1
  %6323 = extractvalue %dx.types.ResRet.f32 %6320, 2
  %6324 = fadd fast float %6321, -5.000000e-01
  %6325 = fadd fast float %6322, -5.000000e-01
  %6326 = fadd fast float %6323, -5.000000e-01
  %6327 = fmul fast float %2237, 4.000000e+00
  %6328 = fmul fast float %6327, %6264
  %6329 = fmul fast float %6328, %6324
  %6330 = fmul fast float %2238, 4.000000e+00
  %6331 = fmul fast float %6330, %6265
  %6332 = fmul fast float %6331, %6325
  %6333 = fmul fast float %2243, 4.000000e+00
  %6334 = fmul fast float %6333, %6266
  %6335 = fmul fast float %6334, %6326
  %6336 = fadd fast float %6329, %6316
  %6337 = fadd fast float %6332, %6317
  %6338 = fadd fast float %6335, %6318
  %6339 = call float @dx.op.unary.f32(i32 7, float %6336)  ; Saturate(value)
  %6340 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  %6341 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  br label %6342

; <label>:6342                                    ; preds = %6319, %6296
  %6343 = phi float [ %6339, %6319 ], [ %6316, %6296 ]
  %6344 = phi float [ %6340, %6319 ], [ %6317, %6296 ]
  %6345 = phi float [ %6341, %6319 ], [ %6318, %6296 ]
  %6346 = call float @dx.op.binary.f32(i32 35, float %6344, float %6345)  ; FMax(a,b)
  %6347 = call float @dx.op.binary.f32(i32 35, float %6343, float %6346)  ; FMax(a,b)
  %6348 = fsub fast float 1.000000e+00, %6347
  %6349 = fmul fast float %6297, %6251
  %6350 = fmul fast float %6298, %6251
  %6351 = fmul fast float %6299, %6251
  %6352 = fsub fast float 1.000000e+00, %6188
  %6353 = bitcast float %6352 to i32
  %6354 = sitofp i32 %6353 to float
  %6355 = fmul fast float %6354, 5.000000e+00
  %6356 = fadd fast float %6355, 0xC1EFBF8940000000
  %6357 = fptosi float %6356 to i32
  %6358 = bitcast i32 %6357 to float
  %6359 = fmul fast float %6358, %1604
  %6360 = fmul fast float %6348, %6359
  %6361 = fmul fast float %6360, %4094
  %6362 = fmul fast float %6360, %4095
  %6363 = fmul fast float %6360, %4096
  %6364 = fadd fast float %6361, %6349
  %6365 = fadd fast float %6362, %6350
  %6366 = fadd fast float %6363, %6351
  %6367 = fmul fast float %6176, %1625
  %6368 = fmul fast float %6367, %6194
  %6369 = fmul fast float %6368, %6348
  %6370 = fmul fast float %6177, %1625
  %6371 = fmul fast float %6370, %6194
  %6372 = fmul fast float %6371, %6348
  %6373 = fmul fast float %6178, %1625
  %6374 = fmul fast float %6373, %6194
  %6375 = fmul fast float %6374, %6348
  %6376 = fadd fast float %6369, %5809
  %6377 = fadd fast float %6372, %5810
  %6378 = fadd fast float %6375, %5811
  %6379 = fmul fast float %6368, %6364
  %6380 = fmul fast float %6371, %6365
  %6381 = fmul fast float %6374, %6366
  %6382 = fadd fast float %6379, %5806
  %6383 = fadd fast float %6380, %5807
  %6384 = fadd fast float %6381, %5808
  br label %5938

; <label>:6385                                    ; preds = %5938
  br label %6386

; <label>:6386                                    ; preds = %6385, %5772
  %6387 = phi float [ %5774, %5772 ], [ %5939, %6385 ]
  %6388 = phi float [ %5775, %5772 ], [ %5940, %6385 ]
  %6389 = phi float [ %5776, %5772 ], [ %5941, %6385 ]
  %6390 = phi float [ %5777, %5772 ], [ %5942, %6385 ]
  %6391 = phi float [ %5778, %5772 ], [ %5943, %6385 ]
  %6392 = phi float [ %5779, %5772 ], [ %5944, %6385 ]
  %6393 = add i32 %5773, 1
  %6394 = icmp ugt i32 %6393, %5769
  br i1 %6394, label %6395, label %5772

; <label>:6395                                    ; preds = %6386
  br label %6396

; <label>:6396                                    ; preds = %6395, %5722, %5712
  %6397 = phi float [ %5713, %5712 ], [ %5713, %5722 ], [ %6387, %6395 ]
  %6398 = phi float [ %5714, %5712 ], [ %5714, %5722 ], [ %6388, %6395 ]
  %6399 = phi float [ %5715, %5712 ], [ %5715, %5722 ], [ %6389, %6395 ]
  %6400 = phi float [ %5716, %5712 ], [ %5716, %5722 ], [ %6390, %6395 ]
  %6401 = phi float [ %5717, %5712 ], [ %5717, %5722 ], [ %6391, %6395 ]
  %6402 = phi float [ %5718, %5712 ], [ %5718, %5722 ], [ %6392, %6395 ]
  %6403 = fmul fast float %1625, %1625
  %6404 = fmul fast float %6403, %4120
  %6405 = fmul fast float %6403, %4121
  %6406 = fmul fast float %6403, %4122
  %6407 = fadd fast float %6404, 1.000000e+00
  %6408 = fadd fast float %6405, 1.000000e+00
  %6409 = fadd fast float %6406, 1.000000e+00
  %6410 = call float @dx.op.dot3.f32(i32 55, float %6407, float %6408, float %6409, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6411 = fsub fast float 1.000000e+00, %6410
  %6412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6413 = extractvalue %dx.types.CBufRet.f32 %6412, 0
  %6414 = fmul fast float %6413, %4126
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 3
  %6417 = fsub fast float 1.000000e+00, %1600
  %6418 = call float @dx.op.unary.f32(i32 7, float %6417)  ; Saturate(value)
  %6419 = fadd fast float %6402, %1599
  %6420 = fmul fast float %6419, %1600
  %6421 = fmul fast float %6418, %6416
  %6422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6423 = extractvalue %dx.types.CBufRet.f32 %6422, 3
  %6424 = fmul fast float %6400, %2231
  %6425 = fmul fast float %6401, %2232
  %6426 = fmul fast float %6402, %2233
  %6427 = fcmp fast ogt float %87, %197
  %6428 = and i1 %6427, %2036
  %6429 = or i1 %2042, %6428
  %6430 = icmp eq i32 %2035, 2
  %6431 = fcmp fast ole float %87, %197
  %6432 = and i1 %6431, %6430
  %6433 = or i1 %6432, %6429
  br i1 %6428, label %6434, label %6693

; <label>:6434                                    ; preds = %6396
  %6435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.f32 %6435, 2
  %6437 = extractvalue %dx.types.CBufRet.f32 %6435, 3
  %6438 = fmul fast float %6436, %99
  %6439 = fmul fast float %6437, %100
  %6440 = call float @dx.op.unary.f32(i32 7, float %6438)  ; Saturate(value)
  %6441 = call float @dx.op.unary.f32(i32 7, float %6439)  ; Saturate(value)
  %6442 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6440, float %6441, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6443 = extractvalue %dx.types.ResRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.ResRet.f32 %6442, 1
  %6445 = extractvalue %dx.types.ResRet.f32 %6442, 2
  %6446 = extractvalue %dx.types.ResRet.f32 %6442, 3
  %6447 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6440, float %6441, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.ResRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.ResRet.f32 %6447, 2
  %6451 = extractvalue %dx.types.ResRet.f32 %6447, 3
  %6452 = call float @dx.op.binary.f32(i32 35, float %6444, float %6445)  ; FMax(a,b)
  %6453 = call float @dx.op.binary.f32(i32 35, float %6443, float %6452)  ; FMax(a,b)
  %6454 = call float @dx.op.binary.f32(i32 35, float %6453, float %6446)  ; FMax(a,b)
  %6455 = call float @dx.op.binary.f32(i32 36, float %6449, float %6450)  ; FMin(a,b)
  %6456 = call float @dx.op.binary.f32(i32 36, float %6448, float %6455)  ; FMin(a,b)
  %6457 = call float @dx.op.binary.f32(i32 36, float %6456, float %6451)  ; FMin(a,b)
  %6458 = fmul fast float %6454, 2.550000e+02
  %6459 = fadd fast float %6458, 0x3F70101020000000
  %6460 = fptoui float %6459 to i32
  %6461 = fmul fast float %6457, 2.550000e+02
  %6462 = fadd fast float %6461, 0x3F70101020000000
  %6463 = fptoui float %6462 to i32
  %6464 = icmp ult i32 %6460, %6463
  br i1 %6464, label %6465, label %6633

; <label>:6465                                    ; preds = %6434
  %6466 = fcmp fast ogt float %86, 9.843750e-01
  %6467 = fadd fast float %87, -4.000000e+00
  %6468 = select i1 %6466, float -4.000000e+00, float %6467
  %6469 = call float @dx.op.binary.f32(i32 35, float %6468, float 0.000000e+00)  ; FMax(a,b)
  %6470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6470, 0
  %6472 = fadd fast float %6471, %6469
  %6473 = extractvalue %dx.types.CBufRet.f32 %6470, 2
  %6474 = fmul fast float %6472, %6473
  %6475 = call float @dx.op.unary.f32(i32 23, float %6474)  ; Log(value)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6470, 3
  %6477 = fmul fast float %6476, %6475
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 2
  %6480 = fmul fast float %6477, %6479
  %6481 = call float @dx.op.unary.f32(i32 7, float %6480)  ; Saturate(value)
  %6482 = uitofp i32 %6460 to float
  %6483 = uitofp i32 %6463 to float
  %6484 = fadd fast float %6482, 5.000000e-01
  %6485 = fadd fast float %6483, 5.000000e-01
  %6486 = fmul fast float %6479, %6484
  %6487 = fmul fast float %6479, %6485
  %6488 = fadd fast float %6486, 0x3F0FFB4800000000
  %6489 = fadd fast float %6487, 0xBF0FFB4800000000
  %6490 = call float @dx.op.binary.f32(i32 35, float %6481, float %6488)  ; FMax(a,b)
  %6491 = call float @dx.op.binary.f32(i32 36, float %6490, float %6489)  ; FMin(a,b)
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 1
  %6494 = extractvalue %dx.types.CBufRet.f32 %6492, 2
  %6495 = extractvalue %dx.types.CBufRet.f32 %6492, 0
  %6496 = fmul fast float %6493, %6491
  %6497 = fadd fast float %6495, %6496
  %6498 = fadd fast float %6495, %6494
  %6499 = fsub fast float %6493, %6494
  %6500 = fadd fast float %6499, %6495
  %6501 = call float @dx.op.binary.f32(i32 35, float %6497, float %6498)  ; FMax(a,b)
  %6502 = call float @dx.op.binary.f32(i32 36, float %6501, float %6500)  ; FMin(a,b)
  %6503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6440, float %6441, float %6502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6504 = extractvalue %dx.types.ResRet.f32 %6503, 0
  %6505 = extractvalue %dx.types.ResRet.f32 %6503, 1
  %6506 = extractvalue %dx.types.ResRet.f32 %6503, 2
  %6507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.i32 %6507, 0
  %6509 = extractvalue %dx.types.CBufRet.i32 %6507, 1
  %6510 = uitofp i32 %6508 to float
  %6511 = uitofp i32 %6509 to float
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6515 = fmul fast float %6510, %6440
  %6516 = fmul fast float %6511, %6441
  %6517 = fadd fast float %6515, -5.000000e-01
  %6518 = fadd fast float %6516, -5.000000e-01
  %6519 = call float @dx.op.unary.f32(i32 22, float %6517)  ; Frc(value)
  %6520 = call float @dx.op.unary.f32(i32 22, float %6518)  ; Frc(value)
  %6521 = fmul fast float %6519, %6519
  %6522 = fmul fast float %6521, %6519
  %6523 = fsub fast float 3.000000e+00, %6519
  %6524 = fmul fast float %6521, %6523
  %6525 = fmul fast float %6519, 3.000000e+00
  %6526 = fmul fast float %6522, 3.000000e+00
  %6527 = fmul fast float %6521, 6.000000e+00
  %6528 = fsub fast float %6526, %6527
  %6529 = fadd fast float %6528, 4.000000e+00
  %6530 = fmul fast float %6529, 0x3FC5555560000000
  %6531 = fmul fast float %6522, -3.000000e+00
  %6532 = fadd fast float %6521, %6519
  %6533 = fmul fast float %6532, 3.000000e+00
  %6534 = fadd fast float %6531, 1.000000e+00
  %6535 = fadd fast float %6534, %6533
  %6536 = fmul fast float %6522, 0x3FC5555560000000
  %6537 = fmul fast float %6520, %6520
  %6538 = fmul fast float %6537, %6520
  %6539 = fsub fast float 3.000000e+00, %6520
  %6540 = fmul fast float %6537, %6539
  %6541 = fmul fast float %6520, 3.000000e+00
  %6542 = fmul fast float %6538, 3.000000e+00
  %6543 = fmul fast float %6537, 6.000000e+00
  %6544 = fsub fast float %6542, %6543
  %6545 = fadd fast float %6544, 4.000000e+00
  %6546 = fmul fast float %6545, 0x3FC5555560000000
  %6547 = fmul fast float %6538, -3.000000e+00
  %6548 = fadd fast float %6537, %6520
  %6549 = fmul fast float %6548, 3.000000e+00
  %6550 = fadd fast float %6547, 1.000000e+00
  %6551 = fadd fast float %6550, %6549
  %6552 = fmul fast float %6538, 0x3FC5555560000000
  %6553 = fadd fast float %6519, 1.000000e+00
  %6554 = fsub fast float 1.000000e+00, %6525
  %6555 = fadd fast float %6554, %6524
  %6556 = fadd fast float %6555, %6529
  %6557 = fmul fast float %6556, 0x3FC5555560000000
  %6558 = fdiv fast float %6530, %6557
  %6559 = fsub fast float %6553, %6558
  %6560 = fsub fast float 1.000000e+00, %6519
  %6561 = fadd fast float %6535, %6522
  %6562 = fmul fast float %6561, 0x3FC5555560000000
  %6563 = fdiv fast float %6536, %6562
  %6564 = fadd fast float %6560, %6563
  %6565 = fadd fast float %6520, 1.000000e+00
  %6566 = fsub fast float 1.000000e+00, %6541
  %6567 = fadd fast float %6566, %6540
  %6568 = fadd fast float %6567, %6545
  %6569 = fmul fast float %6568, 0x3FC5555560000000
  %6570 = fdiv fast float %6546, %6569
  %6571 = fsub fast float %6565, %6570
  %6572 = fsub fast float 1.000000e+00, %6520
  %6573 = fadd fast float %6551, %6538
  %6574 = fmul fast float %6573, 0x3FC5555560000000
  %6575 = fdiv fast float %6552, %6574
  %6576 = fadd fast float %6575, %6572
  %6577 = fmul fast float %6559, %6513
  %6578 = fsub fast float %6440, %6577
  %6579 = fmul fast float %6564, %6513
  %6580 = fadd fast float %6579, %6440
  %6581 = fmul fast float %6576, %6514
  %6582 = fadd fast float %6581, %6441
  %6583 = fmul fast float %6571, %6514
  %6584 = fsub fast float %6441, %6583
  %6585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6578, float %6584, float %6502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6586 = extractvalue %dx.types.ResRet.f32 %6585, 0
  %6587 = extractvalue %dx.types.ResRet.f32 %6585, 1
  %6588 = extractvalue %dx.types.ResRet.f32 %6585, 2
  %6589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6580, float %6584, float %6502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6590 = extractvalue %dx.types.ResRet.f32 %6589, 0
  %6591 = extractvalue %dx.types.ResRet.f32 %6589, 1
  %6592 = extractvalue %dx.types.ResRet.f32 %6589, 2
  %6593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6578, float %6582, float %6502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6594 = extractvalue %dx.types.ResRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.ResRet.f32 %6593, 1
  %6596 = extractvalue %dx.types.ResRet.f32 %6593, 2
  %6597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6580, float %6582, float %6502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6598 = extractvalue %dx.types.ResRet.f32 %6597, 0
  %6599 = extractvalue %dx.types.ResRet.f32 %6597, 1
  %6600 = extractvalue %dx.types.ResRet.f32 %6597, 2
  %6601 = fsub fast float %6594, %6586
  %6602 = fsub fast float %6595, %6587
  %6603 = fsub fast float %6596, %6588
  %6604 = fmul fast float %6601, %6574
  %6605 = fmul fast float %6602, %6574
  %6606 = fmul fast float %6603, %6574
  %6607 = fadd fast float %6604, %6586
  %6608 = fadd fast float %6605, %6587
  %6609 = fadd fast float %6606, %6588
  %6610 = fsub fast float %6598, %6590
  %6611 = fsub fast float %6599, %6591
  %6612 = fsub fast float %6600, %6592
  %6613 = fmul fast float %6610, %6574
  %6614 = fmul fast float %6611, %6574
  %6615 = fmul fast float %6612, %6574
  %6616 = fsub fast float %6590, %6607
  %6617 = fadd fast float %6616, %6613
  %6618 = fsub fast float %6591, %6608
  %6619 = fadd fast float %6618, %6614
  %6620 = fsub fast float %6592, %6609
  %6621 = fadd fast float %6620, %6615
  %6622 = fmul fast float %6617, %6562
  %6623 = fmul fast float %6619, %6562
  %6624 = fmul fast float %6621, %6562
  %6625 = fadd fast float %6622, %6607
  %6626 = fadd fast float %6623, %6608
  %6627 = fadd fast float %6624, %6609
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6630 = fmul fast float %6625, %6629
  %6631 = fmul fast float %6626, %6629
  %6632 = fmul fast float %6627, %6629
  br label %6633

; <label>:6633                                    ; preds = %6465, %6434
  %6634 = phi float [ %6504, %6465 ], [ 1.000000e+00, %6434 ]
  %6635 = phi float [ %6505, %6465 ], [ 1.000000e+00, %6434 ]
  %6636 = phi float [ %6506, %6465 ], [ 1.000000e+00, %6434 ]
  %6637 = phi float [ %6630, %6465 ], [ 0.000000e+00, %6434 ]
  %6638 = phi float [ %6631, %6465 ], [ 0.000000e+00, %6434 ]
  %6639 = phi float [ %6632, %6465 ], [ 0.000000e+00, %6434 ]
  %6640 = fmul fast float %6637, %6411
  %6641 = fmul fast float %6638, %6411
  %6642 = fmul fast float %6639, %6411
  %6643 = call float @dx.op.dot3.f32(i32 55, float %6634, float %6635, float %6636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6644 = call float @dx.op.dot3.f32(i32 55, float %6640, float %6641, float %6642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6645 = select i1 %237, float %6643, float %6634
  %6646 = select i1 %237, float %6643, float %6635
  %6647 = select i1 %237, float 1.000000e+00, float %6636
  %6648 = select i1 %237, float %6644, float %6640
  %6649 = select i1 %237, float 0.000000e+00, float %6641
  %6650 = select i1 %237, float 0.000000e+00, float %6642
  %6651 = fmul fast float %6645, %6424
  %6652 = fmul fast float %6646, %6425
  %6653 = fmul fast float %6647, %6426
  %6654 = fadd fast float %6651, %6648
  %6655 = fadd fast float %6652, %6649
  %6656 = fadd fast float %6650, %6653
  %6657 = fmul fast float %6645, %6397
  %6658 = fmul fast float %6646, %6398
  %6659 = fmul fast float %6647, %6399
  %6660 = fmul fast float %99, 2.000000e+00
  %6661 = fmul fast float %6660, %6436
  %6662 = fmul fast float %100, 2.000000e+00
  %6663 = fmul fast float %6662, %6437
  %6664 = fsub fast float 1.000000e+00, %6661
  %6665 = fsub fast float 1.000000e+00, %6663
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 0
  %6668 = extractvalue %dx.types.CBufRet.f32 %6666, 1
  %6669 = extractvalue %dx.types.CBufRet.f32 %6666, 2
  %6670 = fmul fast float %6664, %6667
  %6671 = fmul fast float %6664, %6668
  %6672 = fmul fast float %6664, %6669
  %6673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6673, 0
  %6675 = extractvalue %dx.types.CBufRet.f32 %6673, 1
  %6676 = extractvalue %dx.types.CBufRet.f32 %6673, 2
  %6677 = fmul fast float %6665, %6674
  %6678 = fmul fast float %6665, %6675
  %6679 = fmul fast float %6665, %6676
  %6680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6681 = extractvalue %dx.types.CBufRet.f32 %6680, 0
  %6682 = extractvalue %dx.types.CBufRet.f32 %6680, 1
  %6683 = extractvalue %dx.types.CBufRet.f32 %6680, 2
  %6684 = fadd fast float %6677, %6681
  %6685 = fadd fast float %6684, %6670
  %6686 = fadd fast float %6678, %6682
  %6687 = fadd fast float %6686, %6671
  %6688 = fadd fast float %6679, %6683
  %6689 = fadd fast float %6688, %6672
  %6690 = fmul fast float %6685, %197
  %6691 = fmul fast float %6687, %197
  %6692 = fmul fast float %6689, %197
  br label %6693

; <label>:6693                                    ; preds = %6633, %6396
  %6694 = phi float [ %6690, %6633 ], [ %146, %6396 ]
  %6695 = phi float [ %6691, %6633 ], [ %147, %6396 ]
  %6696 = phi float [ %6692, %6633 ], [ %148, %6396 ]
  %6697 = phi float [ %197, %6633 ], [ %87, %6396 ]
  %6698 = phi float [ %6654, %6633 ], [ %6424, %6396 ]
  %6699 = phi float [ %6655, %6633 ], [ %6425, %6396 ]
  %6700 = phi float [ %6656, %6633 ], [ %6426, %6396 ]
  %6701 = phi float [ %6657, %6633 ], [ %6397, %6396 ]
  %6702 = phi float [ %6658, %6633 ], [ %6398, %6396 ]
  %6703 = phi float [ %6659, %6633 ], [ %6399, %6396 ]
  %6704 = phi float [ %6634, %6633 ], [ 1.000000e+00, %6396 ]
  br i1 %6433, label %7859, label %6705

; <label>:6705                                    ; preds = %6693
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.CBufRet.f32 %6706, 1
  %6709 = extractvalue %dx.types.CBufRet.f32 %6706, 2
  %6710 = extractvalue %dx.types.CBufRet.f32 %6706, 3
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 0
  %6713 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6714 = extractvalue %dx.types.CBufRet.f32 %6711, 2
  %6715 = extractvalue %dx.types.CBufRet.f32 %6711, 3
  %6716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.f32 %6716, 0
  %6718 = extractvalue %dx.types.CBufRet.f32 %6716, 1
  %6719 = extractvalue %dx.types.CBufRet.f32 %6716, 2
  %6720 = extractvalue %dx.types.CBufRet.f32 %6716, 3
  %6721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.f32 %6721, 0
  %6723 = extractvalue %dx.types.CBufRet.f32 %6721, 1
  %6724 = extractvalue %dx.types.CBufRet.f32 %6721, 2
  %6725 = extractvalue %dx.types.CBufRet.f32 %6721, 3
  %6726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6727 = extractvalue %dx.types.CBufRet.f32 %6726, 3
  %6728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6729 = extractvalue %dx.types.CBufRet.f32 %6728, 3
  %6730 = extractvalue %dx.types.CBufRet.f32 %6728, 0
  %6731 = extractvalue %dx.types.CBufRet.f32 %6728, 1
  %6732 = extractvalue %dx.types.CBufRet.f32 %6728, 2
  %6733 = fcmp fast olt float %6732, -5.000000e-01
  %6734 = call float @dx.op.dot3.f32(i32 55, float %6694, float %6695, float %6696, float %6694, float %6695, float %6696)  ; Dot3(ax,ay,az,bx,by,bz)
  %6735 = call float @dx.op.unary.f32(i32 25, float %6734)  ; Rsqrt(value)
  %6736 = fmul fast float %6735, %6734
  %6737 = fmul fast float %6735, %6694
  %6738 = fmul fast float %6735, %6695
  %6739 = fmul fast float %6735, %6696
  %6740 = fadd fast float %6736, %6710
  %6741 = call float @dx.op.dot3.f32(i32 55, float %6737, float %6738, float %6739, float %6707, float %6708, float %6709)  ; Dot3(ax,ay,az,bx,by,bz)
  %6742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6743 = extractvalue %dx.types.CBufRet.i32 %6742, 1
  %6744 = and i32 %6743, 1
  %6745 = icmp ne i32 %6744, 0
  %6746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6747 = extractvalue %dx.types.CBufRet.f32 %6746, 2
  %6748 = fcmp fast ogt float %6747, 0.000000e+00
  %6749 = and i1 %6745, %6748
  br i1 %6749, label %6750, label %7156, !dx.controlflow.hints !146

; <label>:6750                                    ; preds = %6705
  %6751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6751, 3
  %6753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6754 = extractvalue %dx.types.CBufRet.f32 %6753, 2
  %6755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6756 = extractvalue %dx.types.CBufRet.f32 %6755, 2
  %6757 = fsub fast float %6754, %6756
  %6758 = and i32 %6743, 2
  %6759 = extractvalue %dx.types.CBufRet.i32 %6742, 0
  %6760 = call i32 @dx.op.binary.i32(i32 40, i32 %6759, i32 3)  ; UMin(a,b)
  %6761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6762 = extractvalue %dx.types.CBufRet.f32 %6761, 0
  %6763 = extractvalue %dx.types.CBufRet.f32 %6761, 1
  %6764 = extractvalue %dx.types.CBufRet.f32 %6755, 0
  %6765 = extractvalue %dx.types.CBufRet.f32 %6755, 1
  %6766 = fsub fast float %6762, %6764
  %6767 = fsub fast float %6763, %6765
  %6768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6769 = extractvalue %dx.types.CBufRet.f32 %6768, 0
  %6770 = fcmp fast ogt float %6769, 0.000000e+00
  %6771 = fsub fast float -0.000000e+00, %6766
  %6772 = fsub fast float -0.000000e+00, %6767
  %6773 = call float @dx.op.dot2.f32(i32 54, float %6737, float %6738, float %6737, float %6738)  ; Dot2(ax,ay,bx,by)
  %6774 = call float @dx.op.dot2.f32(i32 54, float %6737, float %6738, float %6771, float %6772)  ; Dot2(ax,ay,bx,by)
  %6775 = fmul fast float %6774, 2.000000e+00
  %6776 = call float @dx.op.dot2.f32(i32 54, float %6771, float %6772, float %6771, float %6772)  ; Dot2(ax,ay,bx,by)
  %6777 = fmul fast float %6769, %6769
  %6778 = fsub fast float %6776, %6777
  %6779 = fmul fast float %6775, %6775
  %6780 = fmul fast float %6773, 4.000000e+00
  %6781 = fmul fast float %6780, %6778
  %6782 = fsub fast float %6779, %6781
  %6783 = fcmp fast ogt float %6782, 0.000000e+00
  br i1 %6783, label %6784, label %6799

; <label>:6784                                    ; preds = %6750
  %6785 = fcmp fast ogt float %6775, 0.000000e+00
  %6786 = call float @dx.op.unary.f32(i32 24, float %6782)  ; Sqrt(value)
  %6787 = fsub fast float -0.000000e+00, %6786
  %6788 = select i1 %6785, float %6786, float %6787
  %6789 = fadd fast float %6788, %6775
  %6790 = fmul float %6789, -5.000000e-01
  %6791 = fdiv fast float %6790, %6773
  %6792 = call float @dx.op.binary.f32(i32 35, float %6791, float 0.000000e+00)  ; FMax(a,b)
  %6793 = call float @dx.op.binary.f32(i32 36, float %6736, float %6792)  ; FMin(a,b)
  %6794 = fdiv fast float %6778, %6790
  %6795 = call float @dx.op.binary.f32(i32 35, float %6794, float 0.000000e+00)  ; FMax(a,b)
  %6796 = call float @dx.op.binary.f32(i32 36, float %6736, float %6795)  ; FMin(a,b)
  %6797 = call float @dx.op.binary.f32(i32 36, float %6793, float %6796)  ; FMin(a,b)
  %6798 = call float @dx.op.binary.f32(i32 35, float %6793, float %6796)  ; FMax(a,b)
  br label %6799

; <label>:6799                                    ; preds = %6784, %6750
  %6800 = phi float [ %6798, %6784 ], [ -1.000000e+00, %6750 ]
  %6801 = phi float [ %6797, %6784 ], [ -1.000000e+00, %6750 ]
  %6802 = phi i1 [ true, %6784 ], [ false, %6750 ]
  %6803 = and i1 %6770, %6802
  br i1 %6803, label %6804, label %6806

; <label>:6804                                    ; preds = %6799
  %6805 = fcmp fast oeq float %6801, %6800
  br i1 %6805, label %7109, label %6807

; <label>:6806                                    ; preds = %6799
  br i1 %6770, label %7109, label %6807

; <label>:6807                                    ; preds = %6806, %6804
  %6808 = phi float [ %6736, %6806 ], [ %6800, %6804 ]
  %6809 = phi float [ 0.000000e+00, %6806 ], [ %6801, %6804 ]
  %6810 = icmp ne i32 %6758, 0
  %6811 = fmul fast float %6808, %6739
  %6812 = fadd fast float %6811, %6752
  %6813 = fmul fast float %6812, %6808
  %6814 = select i1 %6810, float 0.000000e+00, float %6813
  %6815 = fcmp fast oeq float %6739, 0.000000e+00
  %6816 = fdiv fast float %6757, %6739
  %6817 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6816)  ; FMax(a,b)
  %6818 = select i1 %6815, float %6808, float %6817
  %6819 = call float @dx.op.binary.f32(i32 36, float %6808, float %6818)  ; FMin(a,b)
  %6820 = fcmp fast ogt float %6739, 0.000000e+00
  %6821 = fcmp fast olt float %6757, 0.000000e+00
  br i1 %6820, label %6822, label %6879

; <label>:6822                                    ; preds = %6807
  %6823 = icmp eq i32 %6758, 0
  br i1 %6821, label %6824, label %6868

; <label>:6824                                    ; preds = %6822
  %6825 = select i1 %6823, float %6808, float 0.000000e+00
  %6826 = fsub fast float -0.000000e+00, %6825
  %6827 = call float @dx.op.unary.f32(i32 6, float %6826)  ; FAbs(value)
  %6828 = fmul fast float %6825, %6739
  %6829 = fadd fast float %6828, %6752
  %6830 = fmul fast float %6827, %6829
  %6831 = fsub fast float %6814, %6830
  %6832 = fsub fast float %6808, %6827
  %6833 = select i1 %6823, float %6832, float 0.000000e+00
  %6834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6835 = extractvalue %dx.types.CBufRet.f32 %6834, 0
  %6836 = extractvalue %dx.types.CBufRet.f32 %6834, 1
  %6837 = extractvalue %dx.types.CBufRet.f32 %6834, 2
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %6841 = extractvalue %dx.types.CBufRet.f32 %6838, 2
  %6842 = extractvalue %dx.types.CBufRet.f32 %6838, 3
  %6843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6844 = extractvalue %dx.types.CBufRet.f32 %6843, 3
  %6845 = call float @dx.op.binary.f32(i32 36, float %6831, float %6844)  ; FMin(a,b)
  %6846 = fmul fast float %6842, %6833
  %6847 = call float @dx.op.unary.f32(i32 7, float %6846)  ; Saturate(value)
  %6848 = fsub fast float %6839, %6835
  %6849 = fsub fast float %6840, %6836
  %6850 = fsub fast float %6841, %6837
  %6851 = fmul fast float %6847, %6848
  %6852 = fmul fast float %6847, %6849
  %6853 = fmul fast float %6847, %6850
  %6854 = fadd fast float %6851, %6835
  %6855 = fadd fast float %6852, %6836
  %6856 = fadd fast float %6853, %6837
  %6857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.f32 %6857, 0
  %6859 = extractvalue %dx.types.CBufRet.f32 %6857, 1
  %6860 = fadd fast float %6859, %6858
  %6861 = call float @dx.op.unary.f32(i32 7, float %6860)  ; Saturate(value)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6857, 2
  %6863 = extractvalue %dx.types.CBufRet.f32 %6857, 3
  %6864 = fadd fast float %6863, %6862
  %6865 = call float @dx.op.unary.f32(i32 7, float %6864)  ; Saturate(value)
  %6866 = fmul fast float %6861, %6845
  %6867 = fmul fast float %6866, %6865
  br label %7109

; <label>:6868                                    ; preds = %6822
  br i1 %6823, label %6869, label %6890

; <label>:6869                                    ; preds = %6868
  %6870 = call float @dx.op.binary.f32(i32 36, float %6819, float %6809)  ; FMin(a,b)
  %6871 = fsub fast float %6819, %6870
  %6872 = fsub fast float %6871, %6808
  %6873 = call float @dx.op.unary.f32(i32 6, float %6872)  ; FAbs(value)
  %6874 = fadd fast float %6871, %6808
  %6875 = fmul fast float %6874, %6739
  %6876 = fadd fast float %6875, %6752
  %6877 = fmul fast float %6876, %6873
  %6878 = fsub fast float %6814, %6877
  br label %6890

; <label>:6879                                    ; preds = %6807
  br i1 %6821, label %6880, label %6890

; <label>:6880                                    ; preds = %6879
  %6881 = call float @dx.op.binary.f32(i32 35, float %6809, float %6819)  ; FMax(a,b)
  %6882 = icmp eq i32 %6758, 0
  %6883 = select i1 %6882, float %6819, float 0.000000e+00
  %6884 = fsub fast float -0.000000e+00, %6883
  %6885 = call float @dx.op.unary.f32(i32 6, float %6884)  ; FAbs(value)
  %6886 = fmul fast float %6883, %6739
  %6887 = fadd fast float %6886, %6752
  %6888 = fmul fast float %6885, %6887
  %6889 = fsub fast float %6814, %6888
  br label %6890

; <label>:6890                                    ; preds = %6880, %6879, %6869, %6868
  %6891 = phi float [ %6809, %6868 ], [ %6809, %6869 ], [ %6881, %6880 ], [ %6809, %6879 ]
  %6892 = phi float [ 0.000000e+00, %6868 ], [ %6873, %6869 ], [ %6885, %6880 ], [ 0.000000e+00, %6879 ]
  %6893 = phi float [ %6814, %6868 ], [ %6878, %6869 ], [ %6889, %6880 ], [ %6814, %6879 ]
  %6894 = phi float [ %6819, %6868 ], [ %6819, %6869 ], [ %6808, %6880 ], [ %6808, %6879 ]
  %6895 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %6895, align 4, !tbaa !133, !noalias !147
  %6896 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %6896, align 4, !tbaa !133, !noalias !147
  %6897 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %6897, align 4, !tbaa !133, !noalias !147
  %6898 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %6898, align 4, !tbaa !133, !noalias !147
  %6899 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %6899, align 4, !tbaa !133, !noalias !147
  %6900 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %6900, align 4, !tbaa !133, !noalias !147
  %6901 = icmp sgt i32 %6760, 0
  br i1 %6901, label %6902, label %6963

; <label>:6902                                    ; preds = %6890
  br label %6903

; <label>:6903                                    ; preds = %6952, %6902
  %6904 = phi i32 [ %6953, %6952 ], [ 0, %6902 ]
  %6905 = phi i32 [ %6954, %6952 ], [ 0, %6902 ]
  %6906 = add nuw i32 %6905, 171
  %6907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %6906)  ; CBufferLoadLegacy(handle,regIndex)
  %6908 = extractvalue %dx.types.CBufRet.f32 %6907, 0
  %6909 = extractvalue %dx.types.CBufRet.f32 %6907, 1
  %6910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.CBufRet.f32 %6910, 1
  %6913 = fsub fast float %6908, %6911
  %6914 = fsub fast float %6909, %6912
  %6915 = extractvalue %dx.types.CBufRet.f32 %6907, 2
  %6916 = fsub fast float -0.000000e+00, %6913
  %6917 = fsub fast float -0.000000e+00, %6914
  %6918 = call float @dx.op.dot2.f32(i32 54, float %6737, float %6738, float %6916, float %6917)  ; Dot2(ax,ay,bx,by)
  %6919 = fmul fast float %6918, 2.000000e+00
  %6920 = call float @dx.op.dot2.f32(i32 54, float %6916, float %6917, float %6916, float %6917)  ; Dot2(ax,ay,bx,by)
  %6921 = fmul fast float %6915, %6915
  %6922 = fsub fast float %6920, %6921
  %6923 = fmul fast float %6919, %6919
  %6924 = fmul fast float %6780, %6922
  %6925 = fsub fast float %6923, %6924
  %6926 = fcmp fast ogt float %6925, 0.000000e+00
  br i1 %6926, label %6927, label %6942

; <label>:6927                                    ; preds = %6903
  %6928 = fcmp fast ogt float %6919, 0.000000e+00
  %6929 = call float @dx.op.unary.f32(i32 24, float %6925)  ; Sqrt(value)
  %6930 = fsub fast float -0.000000e+00, %6929
  %6931 = select i1 %6928, float %6929, float %6930
  %6932 = fadd fast float %6931, %6919
  %6933 = fmul float %6932, -5.000000e-01
  %6934 = fdiv fast float %6933, %6773
  %6935 = call float @dx.op.binary.f32(i32 35, float %6934, float 0.000000e+00)  ; FMax(a,b)
  %6936 = call float @dx.op.binary.f32(i32 36, float %6808, float %6935)  ; FMin(a,b)
  %6937 = fdiv fast float %6922, %6933
  %6938 = call float @dx.op.binary.f32(i32 35, float %6937, float 0.000000e+00)  ; FMax(a,b)
  %6939 = call float @dx.op.binary.f32(i32 36, float %6808, float %6938)  ; FMin(a,b)
  %6940 = call float @dx.op.binary.f32(i32 36, float %6936, float %6939)  ; FMin(a,b)
  %6941 = call float @dx.op.binary.f32(i32 35, float %6936, float %6939)  ; FMax(a,b)
  br label %6942

; <label>:6942                                    ; preds = %6927, %6903
  %6943 = phi float [ %6941, %6927 ], [ -1.000000e+00, %6903 ]
  %6944 = phi float [ %6940, %6927 ], [ -1.000000e+00, %6903 ]
  %6945 = phi i1 [ true, %6927 ], [ false, %6903 ]
  br i1 %6945, label %6946, label %6952

; <label>:6946                                    ; preds = %6942
  %6947 = call float @dx.op.binary.f32(i32 35, float %6891, float %6944)  ; FMax(a,b)
  %6948 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6905
  store float %6947, float* %6948, align 4, !tbaa !133, !noalias !147
  %6949 = call float @dx.op.binary.f32(i32 35, float %6891, float %6943)  ; FMax(a,b)
  %6950 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6905
  store float %6949, float* %6950, align 4, !tbaa !133, !noalias !147
  %6951 = add nsw i32 %6904, 1
  br label %6952

; <label>:6952                                    ; preds = %6946, %6942
  %6953 = phi i32 [ %6951, %6946 ], [ %6904, %6942 ]
  %6954 = add nuw nsw i32 %6905, 1
  %6955 = icmp eq i32 %6954, %6760
  br i1 %6955, label %6956, label %6903

; <label>:6956                                    ; preds = %6952
  %6957 = load float, float* %6897, align 4, !tbaa !133, !alias.scope !163, !noalias !166
  %6958 = load float, float* %6896, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  %6959 = load float, float* %6895, align 4, !tbaa !133, !alias.scope !171, !noalias !172
  %6960 = load float, float* %6900, align 4, !tbaa !133, !alias.scope !173, !noalias !176
  %6961 = load float, float* %6899, align 4, !tbaa !133, !alias.scope !179, !noalias !180
  %6962 = load float, float* %6898, align 4, !tbaa !133, !alias.scope !181, !noalias !182
  br label %6963

; <label>:6963                                    ; preds = %6956, %6890
  %6964 = phi float [ -1.000000e+00, %6890 ], [ %6962, %6956 ]
  %6965 = phi float [ -1.000000e+00, %6890 ], [ %6961, %6956 ]
  %6966 = phi float [ -1.000000e+00, %6890 ], [ %6960, %6956 ]
  %6967 = phi float [ -1.000000e+00, %6890 ], [ %6959, %6956 ]
  %6968 = phi float [ -1.000000e+00, %6890 ], [ %6958, %6956 ]
  %6969 = phi float [ -1.000000e+00, %6890 ], [ %6957, %6956 ]
  %6970 = phi i32 [ 0, %6890 ], [ %6953, %6956 ]
  %6971 = call float @dx.op.binary.f32(i32 36, float %6968, float %6969)  ; FMin(a,b)
  %6972 = call float @dx.op.binary.f32(i32 36, float %6967, float %6971)  ; FMin(a,b)
  %6973 = call float @dx.op.binary.f32(i32 35, float %6967, float %6968)  ; FMax(a,b)
  %6974 = call float @dx.op.binary.f32(i32 36, float %6973, float %6969)  ; FMin(a,b)
  %6975 = call float @dx.op.binary.f32(i32 36, float %6967, float %6968)  ; FMin(a,b)
  %6976 = call float @dx.op.binary.f32(i32 35, float %6975, float %6974)  ; FMax(a,b)
  %6977 = call float @dx.op.binary.f32(i32 35, float %6968, float %6969)  ; FMax(a,b)
  %6978 = call float @dx.op.binary.f32(i32 35, float %6967, float %6977)  ; FMax(a,b)
  store float %6972, float* %6895, align 4, !tbaa !133, !alias.scope !171, !noalias !172
  store float %6976, float* %6896, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  store float %6978, float* %6897, align 4, !tbaa !133, !alias.scope !163, !noalias !166
  %6979 = call float @dx.op.binary.f32(i32 36, float %6965, float %6966)  ; FMin(a,b)
  %6980 = call float @dx.op.binary.f32(i32 36, float %6964, float %6979)  ; FMin(a,b)
  %6981 = call float @dx.op.binary.f32(i32 35, float %6964, float %6965)  ; FMax(a,b)
  %6982 = call float @dx.op.binary.f32(i32 36, float %6981, float %6966)  ; FMin(a,b)
  %6983 = call float @dx.op.binary.f32(i32 36, float %6964, float %6965)  ; FMin(a,b)
  %6984 = call float @dx.op.binary.f32(i32 35, float %6983, float %6982)  ; FMax(a,b)
  %6985 = call float @dx.op.binary.f32(i32 35, float %6965, float %6966)  ; FMax(a,b)
  %6986 = call float @dx.op.binary.f32(i32 35, float %6964, float %6985)  ; FMax(a,b)
  store float %6980, float* %6898, align 4, !tbaa !133, !alias.scope !181, !noalias !182
  store float %6984, float* %6899, align 4, !tbaa !133, !alias.scope !179, !noalias !180
  store float %6986, float* %6900, align 4, !tbaa !133, !alias.scope !173, !noalias !176
  %6987 = sub nsw i32 3, %6970
  %6988 = icmp sgt i32 %6987, 2
  br i1 %6988, label %6989, label %7027

; <label>:6989                                    ; preds = %6963
  %6990 = icmp eq i32 %6758, 0
  %6991 = fsub fast float %6808, %6892
  %6992 = select i1 %6990, float %6991, float %6892
  %6993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6994 = extractvalue %dx.types.CBufRet.f32 %6993, 0
  %6995 = extractvalue %dx.types.CBufRet.f32 %6993, 1
  %6996 = extractvalue %dx.types.CBufRet.f32 %6993, 2
  %6997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6998 = extractvalue %dx.types.CBufRet.f32 %6997, 0
  %6999 = extractvalue %dx.types.CBufRet.f32 %6997, 1
  %7000 = extractvalue %dx.types.CBufRet.f32 %6997, 2
  %7001 = extractvalue %dx.types.CBufRet.f32 %6997, 3
  %7002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7003 = extractvalue %dx.types.CBufRet.f32 %7002, 3
  %7004 = call float @dx.op.binary.f32(i32 36, float %6893, float %7003)  ; FMin(a,b)
  %7005 = fmul fast float %7001, %6992
  %7006 = call float @dx.op.unary.f32(i32 7, float %7005)  ; Saturate(value)
  %7007 = fsub fast float %6998, %6994
  %7008 = fsub fast float %6999, %6995
  %7009 = fsub fast float %7000, %6996
  %7010 = fmul fast float %7006, %7007
  %7011 = fmul fast float %7006, %7008
  %7012 = fmul fast float %7006, %7009
  %7013 = fadd fast float %7010, %6994
  %7014 = fadd fast float %7011, %6995
  %7015 = fadd fast float %7012, %6996
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7019 = fadd fast float %7018, %7017
  %7020 = call float @dx.op.unary.f32(i32 7, float %7019)  ; Saturate(value)
  %7021 = extractvalue %dx.types.CBufRet.f32 %7016, 2
  %7022 = extractvalue %dx.types.CBufRet.f32 %7016, 3
  %7023 = fadd fast float %7022, %7021
  %7024 = call float @dx.op.unary.f32(i32 7, float %7023)  ; Saturate(value)
  %7025 = fmul fast float %7020, %7004
  %7026 = fmul fast float %7025, %7024
  br label %7109

; <label>:7027                                    ; preds = %6963
  %7028 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6987
  %7029 = load float, float* %7028, align 4, !tbaa !133, !noalias !147
  %7030 = fcmp fast olt float %7029, %6894
  %7031 = icmp sgt i32 %6970, 0
  %7032 = and i1 %7031, %7030
  br i1 %7032, label %7033, label %7070

; <label>:7033                                    ; preds = %7027
  br label %7034

; <label>:7034                                    ; preds = %7063, %7033
  %7035 = phi float [ %7064, %7063 ], [ %6892, %7033 ]
  %7036 = phi float [ %7065, %7063 ], [ %6893, %7033 ]
  %7037 = phi float [ %7045, %7063 ], [ %7029, %7033 ]
  %7038 = phi i32 [ %7042, %7063 ], [ %6987, %7033 ]
  %7039 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7038
  %7040 = load float, float* %7039, align 4, !tbaa !133, !noalias !147
  %7041 = icmp slt i32 %7038, 2
  %7042 = add nsw i32 %7038, 1
  %7043 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %7042
  %7044 = load float, float* %7043, align 4, !tbaa !133, !noalias !147
  %7045 = select i1 %7041, float %7044, float %6808
  %7046 = call float @dx.op.binary.f32(i32 36, float %7045, float %7040)  ; FMin(a,b)
  %7047 = call float @dx.op.binary.f32(i32 36, float %6894, float %7046)  ; FMin(a,b)
  %7048 = icmp eq i32 %6758, 0
  %7049 = fadd fast float %7047, %7037
  %7050 = fmul fast float %7049, %6739
  %7051 = fadd fast float %7050, %6752
  br i1 %7048, label %7057, label %7052

; <label>:7052                                    ; preds = %7034
  %7053 = fsub fast float %7047, %7037
  %7054 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7053)  ; FMax(a,b)
  %7055 = fmul fast float %7054, %7051
  %7056 = fadd fast float %7055, %7036
  br label %7063

; <label>:7057                                    ; preds = %7034
  %7058 = fsub fast float %7037, %7047
  %7059 = call float @dx.op.unary.f32(i32 6, float %7058)  ; FAbs(value)
  %7060 = fadd fast float %7059, %7035
  %7061 = fmul fast float %7059, %7051
  %7062 = fsub fast float %7036, %7061
  br label %7063

; <label>:7063                                    ; preds = %7057, %7052
  %7064 = phi float [ %7054, %7052 ], [ %7060, %7057 ]
  %7065 = phi float [ %7056, %7052 ], [ %7062, %7057 ]
  %7066 = fcmp fast olt float %7045, %6894
  %7067 = icmp slt i32 %7042, 3
  %7068 = and i1 %7067, %7066
  br i1 %7068, label %7034, label %7069

; <label>:7069                                    ; preds = %7063
  br label %7070

; <label>:7070                                    ; preds = %7069, %7027
  %7071 = phi float [ %6892, %7027 ], [ %7064, %7069 ]
  %7072 = phi float [ %6893, %7027 ], [ %7065, %7069 ]
  %7073 = fsub fast float %6808, %7071
  %7074 = select i1 %6810, float %7071, float %7073
  %7075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7076 = extractvalue %dx.types.CBufRet.f32 %7075, 0
  %7077 = extractvalue %dx.types.CBufRet.f32 %7075, 1
  %7078 = extractvalue %dx.types.CBufRet.f32 %7075, 2
  %7079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7080 = extractvalue %dx.types.CBufRet.f32 %7079, 0
  %7081 = extractvalue %dx.types.CBufRet.f32 %7079, 1
  %7082 = extractvalue %dx.types.CBufRet.f32 %7079, 2
  %7083 = extractvalue %dx.types.CBufRet.f32 %7079, 3
  %7084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.f32 %7084, 3
  %7086 = call float @dx.op.binary.f32(i32 36, float %7072, float %7085)  ; FMin(a,b)
  %7087 = fmul fast float %7083, %7074
  %7088 = call float @dx.op.unary.f32(i32 7, float %7087)  ; Saturate(value)
  %7089 = fsub fast float %7080, %7076
  %7090 = fsub fast float %7081, %7077
  %7091 = fsub fast float %7082, %7078
  %7092 = fmul fast float %7088, %7089
  %7093 = fmul fast float %7088, %7090
  %7094 = fmul fast float %7088, %7091
  %7095 = fadd fast float %7092, %7076
  %7096 = fadd fast float %7093, %7077
  %7097 = fadd fast float %7094, %7078
  %7098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.f32 %7098, 0
  %7100 = extractvalue %dx.types.CBufRet.f32 %7098, 1
  %7101 = fadd fast float %7100, %7099
  %7102 = call float @dx.op.unary.f32(i32 7, float %7101)  ; Saturate(value)
  %7103 = extractvalue %dx.types.CBufRet.f32 %7098, 2
  %7104 = extractvalue %dx.types.CBufRet.f32 %7098, 3
  %7105 = fadd fast float %7104, %7103
  %7106 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  %7107 = fmul fast float %7102, %7086
  %7108 = fmul fast float %7107, %7106
  br label %7109

; <label>:7109                                    ; preds = %7070, %6989, %6824, %6806, %6804
  %7110 = phi float [ %6833, %6824 ], [ %6992, %6989 ], [ %7074, %7070 ], [ 0.000000e+00, %6804 ], [ 0.000000e+00, %6806 ]
  %7111 = phi float [ %6867, %6824 ], [ %7026, %6989 ], [ %7108, %7070 ], [ 0.000000e+00, %6804 ], [ 0.000000e+00, %6806 ]
  %7112 = phi float [ %6854, %6824 ], [ %7013, %6989 ], [ %7095, %7070 ], [ 0.000000e+00, %6804 ], [ 0.000000e+00, %6806 ]
  %7113 = phi float [ %6855, %6824 ], [ %7014, %6989 ], [ %7096, %7070 ], [ 0.000000e+00, %6804 ], [ 0.000000e+00, %6806 ]
  %7114 = phi float [ %6856, %6824 ], [ %7015, %6989 ], [ %7097, %7070 ], [ 0.000000e+00, %6804 ], [ 0.000000e+00, %6806 ]
  %7115 = fmul fast float %6747, %7111
  %7116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7117 = extractvalue %dx.types.CBufRet.f32 %7116, 2
  %7118 = fsub fast float %6754, %7117
  %7119 = fcmp fast olt float %7115, -2.000000e+01
  %7120 = call float @dx.op.unary.f32(i32 21, float %7115)  ; Exp(value)
  %7121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.f32 %7121, 2
  %7123 = extractvalue %dx.types.CBufRet.f32 %7121, 3
  %7124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7125 = extractvalue %dx.types.CBufRet.f32 %7124, 2
  %7126 = fmul fast float %7123, %7118
  %7127 = call float @dx.op.unary.f32(i32 7, float %7126)  ; Saturate(value)
  %7128 = fsub fast float 1.000000e+00, %7127
  %7129 = fmul fast float %6739, 5.000000e-01
  %7130 = fadd fast float %7129, 5.000000e-01
  %7131 = call float @dx.op.unary.f32(i32 7, float %7130)  ; Saturate(value)
  %7132 = fsub fast float 1.000000e+00, %7131
  %7133 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7128)  ; FMax(a,b)
  %7134 = fdiv fast float %7132, %7133
  %7135 = fsub fast float %7118, %6696
  %7136 = call float @dx.op.unary.f32(i32 6, float %7135)  ; FAbs(value)
  %7137 = fmul fast float %7136, %7122
  %7138 = call float @dx.op.unary.f32(i32 7, float %7134)  ; Saturate(value)
  %7139 = fsub fast float 1.000000e+00, %7137
  %7140 = fmul fast float %7139, %7138
  %7141 = fadd fast float %7140, %7137
  %7142 = fmul fast float %7125, %7118
  %7143 = call float @dx.op.unary.f32(i32 7, float %7142)  ; Saturate(value)
  %7144 = fsub fast float 1.000000e+00, %7141
  %7145 = fmul fast float %7144, %7143
  %7146 = fadd fast float %7145, %7141
  %7147 = call float @dx.op.unary.f32(i32 7, float %7146)  ; Saturate(value)
  %7148 = fadd fast float %7120, -1.000000e+00
  %7149 = select i1 %7119, float -1.000000e+00, float %7148
  %7150 = fmul fast float %7147, %7149
  %7151 = fadd fast float %7150, 1.000000e+00
  %7152 = fsub fast float -0.000000e+00, %7150
  %7153 = fmul fast float %7112, %7152
  %7154 = fmul fast float %7113, %7152
  %7155 = fmul fast float %7114, %7152
  br label %7156

; <label>:7156                                    ; preds = %7109, %6705
  %7157 = phi float [ %7110, %7109 ], [ 0.000000e+00, %6705 ]
  %7158 = phi float [ %7151, %7109 ], [ 1.000000e+00, %6705 ]
  %7159 = phi float [ %7153, %7109 ], [ 0.000000e+00, %6705 ]
  %7160 = phi float [ %7154, %7109 ], [ 0.000000e+00, %6705 ]
  %7161 = phi float [ %7155, %7109 ], [ 0.000000e+00, %6705 ]
  %7162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7163 = extractvalue %dx.types.CBufRet.f32 %7162, 1
  %7164 = fsub fast float 1.000000e+00, %7158
  %7165 = fmul fast float %7164, %6740
  %7166 = fmul fast float %7165, %7163
  %7167 = fsub fast float %6740, %7166
  br i1 %6733, label %7168, label %7197, !dx.controlflow.hints !183

; <label>:7168                                    ; preds = %7156
  %7169 = fmul fast float %6741, %6730
  %7170 = fadd fast float %7169, %6731
  %7171 = call float @dx.op.unary.f32(i32 7, float %7170)  ; Saturate(value)
  %7172 = fmul fast float %6712, %7167
  %7173 = fsub fast float -0.000000e+00, %7172
  %7174 = fmul fast float %6713, %7167
  %7175 = fsub fast float -0.000000e+00, %7174
  %7176 = call float @dx.op.unary.f32(i32 21, float %7173)  ; Exp(value)
  %7177 = call float @dx.op.unary.f32(i32 21, float %7175)  ; Exp(value)
  %7178 = call float @dx.op.binary.f32(i32 35, float %6720, float %7176)  ; FMax(a,b)
  %7179 = call float @dx.op.binary.f32(i32 35, float %6720, float %7177)  ; FMax(a,b)
  %7180 = fsub fast float %7179, %7178
  %7181 = fmul fast float %7180, %7171
  %7182 = fadd fast float %7181, %7178
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7184 = fsub fast float %6717, %6722
  %7185 = fsub fast float %6718, %6723
  %7186 = fsub fast float %6719, %6724
  %7187 = fmul fast float %7171, %7184
  %7188 = fmul fast float %7171, %7185
  %7189 = fmul fast float %7171, %7186
  %7190 = fadd fast float %7187, %6722
  %7191 = fadd fast float %7188, %6723
  %7192 = fadd fast float %7189, %6724
  %7193 = fsub fast float 1.000000e+00, %7183
  %7194 = fmul fast float %7193, %7190
  %7195 = fmul fast float %7193, %7191
  %7196 = fmul fast float %7193, %7192
  br label %7256

; <label>:7197                                    ; preds = %7156
  %7198 = fmul fast float %7167, %6729
  %7199 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7200 = fsub fast float 2.000000e+00, %7199
  %7201 = fmul fast float %7199, 9.921875e-01
  %7202 = fmul fast float %7201, %7200
  %7203 = fadd fast float %7202, 3.906250e-03
  %7204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7203, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7205 = extractvalue %dx.types.ResRet.f32 %7204, 0
  %7206 = fsub fast float %7199, %7205
  %7207 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7206)  ; FMax(a,b)
  %7208 = fmul fast float %6715, %6696
  %7209 = call float @dx.op.unary.f32(i32 6, float %7208)  ; FAbs(value)
  %7210 = fcmp fast ogt float %7209, 0x3EB0C6F7A0000000
  br i1 %7210, label %7211, label %7217, !dx.controlflow.hints !184

; <label>:7211                                    ; preds = %7197
  %7212 = fmul fast float %7208, 0xBFF7154760000000
  %7213 = call float @dx.op.unary.f32(i32 21, float %7212)  ; Exp(value)
  %7214 = fsub fast float 1.000000e+00, %7213
  %7215 = fdiv fast float %7214, %7208
  %7216 = fmul fast float %7215, %6725
  br label %7217

; <label>:7217                                    ; preds = %7211, %7197
  %7218 = phi float [ %7216, %7211 ], [ %6725, %7197 ]
  %7219 = fadd fast float %7218, %6727
  %7220 = fmul fast float %7219, %7207
  %7221 = fmul fast float %6712, %7220
  %7222 = fsub fast float -0.000000e+00, %7221
  %7223 = fmul fast float %6713, %7220
  %7224 = fsub fast float -0.000000e+00, %7223
  %7225 = fmul fast float %6714, %7220
  %7226 = fsub fast float -0.000000e+00, %7225
  %7227 = call float @dx.op.unary.f32(i32 21, float %7222)  ; Exp(value)
  %7228 = call float @dx.op.unary.f32(i32 21, float %7224)  ; Exp(value)
  %7229 = call float @dx.op.unary.f32(i32 21, float %7226)  ; Exp(value)
  %7230 = fmul fast float %6741, %6741
  %7231 = fadd fast float %7230, 1.000000e+00
  %7232 = fmul fast float %7231, 0x3FAE8EC8A0000000
  %7233 = fmul fast float %7232, %6722
  %7234 = fmul fast float %7232, %6723
  %7235 = fmul fast float %7232, %6724
  %7236 = fmul fast float %6741, %6720
  %7237 = fsub fast float 1.000000e+00, %7236
  %7238 = fmul fast float %6720, %6720
  %7239 = fsub fast float 1.000000e+00, %7238
  %7240 = fmul fast float %7239, 0x3FB45F3060000000
  %7241 = fmul fast float %7237, %7237
  %7242 = fdiv fast float 1.000000e+00, %7241
  %7243 = fmul fast float %7240, %7242
  %7244 = fmul fast float %7243, %6717
  %7245 = fmul fast float %7243, %6718
  %7246 = fmul fast float %7243, %6719
  %7247 = fadd fast float %7244, %7233
  %7248 = fadd fast float %7245, %7234
  %7249 = fadd fast float %7246, %7235
  %7250 = fsub fast float 1.000000e+00, %7227
  %7251 = fsub fast float 1.000000e+00, %7228
  %7252 = fsub fast float 1.000000e+00, %7229
  %7253 = fmul fast float %7247, %7250
  %7254 = fmul fast float %7248, %7251
  %7255 = fmul fast float %7249, %7252
  br label %7256

; <label>:7256                                    ; preds = %7217, %7168
  %7257 = phi float [ %7194, %7168 ], [ %7253, %7217 ]
  %7258 = phi float [ %7195, %7168 ], [ %7254, %7217 ]
  %7259 = phi float [ %7196, %7168 ], [ %7255, %7217 ]
  %7260 = phi float [ %7183, %7168 ], [ %7227, %7217 ]
  %7261 = phi float [ %7183, %7168 ], [ %7228, %7217 ]
  %7262 = phi float [ %7183, %7168 ], [ %7229, %7217 ]
  br i1 %6749, label %7263, label %7461, !dx.controlflow.hints !185

; <label>:7263                                    ; preds = %7256
  %7264 = extractvalue %dx.types.CBufRet.f32 %7162, 0
  %7265 = fmul fast float %7264, %7164
  %7266 = fsub fast float %7159, %7257
  %7267 = fsub fast float %7160, %7258
  %7268 = fsub fast float %7161, %7259
  %7269 = fmul fast float %7265, %7266
  %7270 = fmul fast float %7265, %7267
  %7271 = fmul fast float %7265, %7268
  %7272 = fadd fast float %7269, %7257
  %7273 = fadd fast float %7270, %7258
  %7274 = fadd fast float %7271, %7259
  %7275 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7260)  ; FMax(a,b)
  %7276 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7261)  ; FMax(a,b)
  %7277 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7262)  ; FMax(a,b)
  %7278 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7158)  ; FMax(a,b)
  %7279 = call float @dx.op.binary.f32(i32 35, float %7157, float %7167)  ; FMax(a,b)
  %7280 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7279)  ; FMax(a,b)
  %7281 = fdiv fast float %7157, %7280
  %7282 = call float @dx.op.unary.f32(i32 7, float %7281)  ; Saturate(value)
  %7283 = fdiv fast float %7167, %7280
  %7284 = call float @dx.op.unary.f32(i32 7, float %7283)  ; Saturate(value)
  %7285 = fcmp fast une float %7278, 1.000000e+00
  br i1 %7285, label %7286, label %7299, !dx.controlflow.hints !186

; <label>:7286                                    ; preds = %7263
  %7287 = call float @dx.op.unary.f32(i32 23, float %7278)  ; Log(value)
  %7288 = fmul fast float %7287, 0x3FE62E4300000000
  %7289 = fmul fast float %7159, %7288
  %7290 = fsub fast float -0.000000e+00, %7289
  %7291 = fmul fast float %7160, %7288
  %7292 = fsub fast float -0.000000e+00, %7291
  %7293 = fmul fast float %7161, %7288
  %7294 = fsub fast float -0.000000e+00, %7293
  %7295 = fsub fast float 1.000000e+00, %7278
  %7296 = fdiv fast float %7290, %7295
  %7297 = fdiv fast float %7292, %7295
  %7298 = fdiv fast float %7294, %7295
  br label %7299

; <label>:7299                                    ; preds = %7286, %7263
  %7300 = phi float [ %7296, %7286 ], [ %7159, %7263 ]
  %7301 = phi float [ %7297, %7286 ], [ %7160, %7263 ]
  %7302 = phi float [ %7298, %7286 ], [ %7161, %7263 ]
  %7303 = phi float [ %7288, %7286 ], [ 0.000000e+00, %7263 ]
  %7304 = fcmp fast une float %7275, 1.000000e+00
  br i1 %7304, label %7305, label %7312, !dx.controlflow.hints !187

; <label>:7305                                    ; preds = %7299
  %7306 = call float @dx.op.unary.f32(i32 23, float %7275)  ; Log(value)
  %7307 = fmul fast float %7306, 0x3FE62E4300000000
  %7308 = fmul fast float %7272, %7307
  %7309 = fsub fast float -0.000000e+00, %7308
  %7310 = fsub fast float 1.000000e+00, %7275
  %7311 = fdiv fast float %7309, %7310
  br label %7312

; <label>:7312                                    ; preds = %7305, %7299
  %7313 = phi float [ %7311, %7305 ], [ %7272, %7299 ]
  %7314 = phi float [ %7307, %7305 ], [ 0.000000e+00, %7299 ]
  %7315 = fcmp fast une float %7276, 1.000000e+00
  br i1 %7315, label %7316, label %7323, !dx.controlflow.hints !187

; <label>:7316                                    ; preds = %7312
  %7317 = call float @dx.op.unary.f32(i32 23, float %7276)  ; Log(value)
  %7318 = fmul fast float %7317, 0x3FE62E4300000000
  %7319 = fmul fast float %7273, %7318
  %7320 = fsub fast float -0.000000e+00, %7319
  %7321 = fsub fast float 1.000000e+00, %7276
  %7322 = fdiv fast float %7320, %7321
  br label %7323

; <label>:7323                                    ; preds = %7316, %7312
  %7324 = phi float [ %7322, %7316 ], [ %7273, %7312 ]
  %7325 = phi float [ %7318, %7316 ], [ 0.000000e+00, %7312 ]
  %7326 = fcmp fast une float %7277, 1.000000e+00
  br i1 %7326, label %7327, label %7334, !dx.controlflow.hints !187

; <label>:7327                                    ; preds = %7323
  %7328 = call float @dx.op.unary.f32(i32 23, float %7277)  ; Log(value)
  %7329 = fmul fast float %7328, 0x3FE62E4300000000
  %7330 = fmul fast float %7274, %7329
  %7331 = fsub fast float -0.000000e+00, %7330
  %7332 = fsub fast float 1.000000e+00, %7277
  %7333 = fdiv fast float %7331, %7332
  br label %7334

; <label>:7334                                    ; preds = %7327, %7323
  %7335 = phi float [ %7333, %7327 ], [ %7274, %7323 ]
  %7336 = phi float [ %7329, %7327 ], [ 0.000000e+00, %7323 ]
  %7337 = fmul fast float %7300, %7284
  %7338 = fmul fast float %7301, %7284
  %7339 = fmul fast float %7302, %7284
  %7340 = fmul fast float %7303, %7284
  %7341 = fmul fast float %7313, %7282
  %7342 = fmul fast float %7324, %7282
  %7343 = fmul fast float %7335, %7282
  %7344 = fmul fast float %7314, %7282
  %7345 = fmul fast float %7325, %7282
  %7346 = fmul fast float %7336, %7282
  %7347 = fadd fast float %7341, %7337
  %7348 = fadd fast float %7342, %7338
  %7349 = fadd fast float %7343, %7339
  %7350 = fadd fast float %7344, %7340
  %7351 = fadd fast float %7345, %7340
  %7352 = fadd fast float %7346, %7340
  %7353 = fcmp fast une float %7350, 0.000000e+00
  br i1 %7353, label %7354, label %7361, !dx.controlflow.hints !188

; <label>:7354                                    ; preds = %7334
  %7355 = fmul fast float %7350, 0x3FF7154760000000
  %7356 = call float @dx.op.unary.f32(i32 21, float %7355)  ; Exp(value)
  %7357 = fsub fast float 1.000000e+00, %7356
  %7358 = fmul fast float %7347, %7357
  %7359 = fsub fast float -0.000000e+00, %7358
  %7360 = fdiv fast float %7359, %7350
  br label %7361

; <label>:7361                                    ; preds = %7354, %7334
  %7362 = phi float [ %7356, %7354 ], [ 1.000000e+00, %7334 ]
  %7363 = phi float [ %7360, %7354 ], [ %7347, %7334 ]
  %7364 = fcmp fast une float %7351, 0.000000e+00
  br i1 %7364, label %7365, label %7372, !dx.controlflow.hints !188

; <label>:7365                                    ; preds = %7361
  %7366 = fmul fast float %7351, 0x3FF7154760000000
  %7367 = call float @dx.op.unary.f32(i32 21, float %7366)  ; Exp(value)
  %7368 = fsub fast float 1.000000e+00, %7367
  %7369 = fmul fast float %7348, %7368
  %7370 = fsub fast float -0.000000e+00, %7369
  %7371 = fdiv fast float %7370, %7351
  br label %7372

; <label>:7372                                    ; preds = %7365, %7361
  %7373 = phi float [ %7367, %7365 ], [ 1.000000e+00, %7361 ]
  %7374 = phi float [ %7371, %7365 ], [ %7348, %7361 ]
  %7375 = fcmp fast une float %7352, 0.000000e+00
  br i1 %7375, label %7376, label %7383, !dx.controlflow.hints !188

; <label>:7376                                    ; preds = %7372
  %7377 = fmul fast float %7352, 0x3FF7154760000000
  %7378 = call float @dx.op.unary.f32(i32 21, float %7377)  ; Exp(value)
  %7379 = fsub fast float 1.000000e+00, %7378
  %7380 = fmul fast float %7349, %7379
  %7381 = fsub fast float -0.000000e+00, %7380
  %7382 = fdiv fast float %7381, %7352
  br label %7383

; <label>:7383                                    ; preds = %7376, %7372
  %7384 = phi float [ %7378, %7376 ], [ 1.000000e+00, %7372 ]
  %7385 = phi float [ %7382, %7376 ], [ %7349, %7372 ]
  %7386 = fcmp fast ogt float %7282, %7284
  br i1 %7386, label %7387, label %7407

; <label>:7387                                    ; preds = %7383
  %7388 = fsub fast float 1.000000e+00, %7284
  %7389 = fmul fast float %7300, %7388
  %7390 = fmul fast float %7301, %7388
  %7391 = fmul fast float %7302, %7388
  %7392 = fmul fast float %7303, %7388
  %7393 = fcmp fast une float %7392, 0.000000e+00
  br i1 %7393, label %7394, label %7445, !dx.controlflow.hints !189

; <label>:7394                                    ; preds = %7387
  %7395 = fmul fast float %7392, 0x3FF7154760000000
  %7396 = call float @dx.op.unary.f32(i32 21, float %7395)  ; Exp(value)
  %7397 = fsub fast float 1.000000e+00, %7396
  %7398 = fmul fast float %7389, %7397
  %7399 = fsub fast float -0.000000e+00, %7398
  %7400 = fmul fast float %7390, %7397
  %7401 = fsub fast float -0.000000e+00, %7400
  %7402 = fmul fast float %7391, %7397
  %7403 = fsub fast float -0.000000e+00, %7402
  %7404 = fdiv fast float %7399, %7392
  %7405 = fdiv fast float %7401, %7392
  %7406 = fdiv fast float %7403, %7392
  br label %7445

; <label>:7407                                    ; preds = %7383
  %7408 = fsub fast float 1.000000e+00, %7282
  %7409 = fmul fast float %7313, %7408
  %7410 = fmul fast float %7324, %7408
  %7411 = fmul fast float %7335, %7408
  %7412 = fmul fast float %7314, %7408
  %7413 = fmul fast float %7325, %7408
  %7414 = fmul fast float %7336, %7408
  %7415 = fcmp fast une float %7412, 0.000000e+00
  br i1 %7415, label %7416, label %7423, !dx.controlflow.hints !188

; <label>:7416                                    ; preds = %7407
  %7417 = fmul fast float %7412, 0x3FF7154760000000
  %7418 = call float @dx.op.unary.f32(i32 21, float %7417)  ; Exp(value)
  %7419 = fsub fast float 1.000000e+00, %7418
  %7420 = fmul fast float %7409, %7419
  %7421 = fsub fast float -0.000000e+00, %7420
  %7422 = fdiv fast float %7421, %7412
  br label %7423

; <label>:7423                                    ; preds = %7416, %7407
  %7424 = phi float [ %7422, %7416 ], [ %7409, %7407 ]
  %7425 = phi float [ %7418, %7416 ], [ 1.000000e+00, %7407 ]
  %7426 = fcmp fast une float %7413, 0.000000e+00
  br i1 %7426, label %7427, label %7434, !dx.controlflow.hints !188

; <label>:7427                                    ; preds = %7423
  %7428 = fmul fast float %7413, 0x3FF7154760000000
  %7429 = call float @dx.op.unary.f32(i32 21, float %7428)  ; Exp(value)
  %7430 = fsub fast float 1.000000e+00, %7429
  %7431 = fmul fast float %7410, %7430
  %7432 = fsub fast float -0.000000e+00, %7431
  %7433 = fdiv fast float %7432, %7413
  br label %7434

; <label>:7434                                    ; preds = %7427, %7423
  %7435 = phi float [ %7433, %7427 ], [ %7410, %7423 ]
  %7436 = phi float [ %7429, %7427 ], [ 1.000000e+00, %7423 ]
  %7437 = fcmp fast une float %7414, 0.000000e+00
  br i1 %7437, label %7438, label %7445, !dx.controlflow.hints !188

; <label>:7438                                    ; preds = %7434
  %7439 = fmul fast float %7414, 0x3FF7154760000000
  %7440 = call float @dx.op.unary.f32(i32 21, float %7439)  ; Exp(value)
  %7441 = fsub fast float 1.000000e+00, %7440
  %7442 = fmul fast float %7411, %7441
  %7443 = fsub fast float -0.000000e+00, %7442
  %7444 = fdiv fast float %7443, %7414
  br label %7445

; <label>:7445                                    ; preds = %7438, %7434, %7394, %7387
  %7446 = phi float [ %7444, %7438 ], [ %7406, %7394 ], [ %7391, %7387 ], [ %7411, %7434 ]
  %7447 = phi float [ %7435, %7438 ], [ %7405, %7394 ], [ %7390, %7387 ], [ %7435, %7434 ]
  %7448 = phi float [ %7424, %7438 ], [ %7404, %7394 ], [ %7389, %7387 ], [ %7424, %7434 ]
  %7449 = phi float [ %7440, %7438 ], [ %7396, %7394 ], [ 1.000000e+00, %7387 ], [ 1.000000e+00, %7434 ]
  %7450 = phi float [ %7436, %7438 ], [ %7396, %7394 ], [ 1.000000e+00, %7387 ], [ %7436, %7434 ]
  %7451 = phi float [ %7425, %7438 ], [ %7396, %7394 ], [ 1.000000e+00, %7387 ], [ %7425, %7434 ]
  %7452 = fmul fast float %7451, %7363
  %7453 = fmul fast float %7450, %7374
  %7454 = fmul fast float %7449, %7385
  %7455 = fadd fast float %7452, %7448
  %7456 = fadd fast float %7453, %7447
  %7457 = fadd fast float %7454, %7446
  %7458 = fmul fast float %7451, %7362
  %7459 = fmul fast float %7450, %7373
  %7460 = fmul fast float %7449, %7384
  br label %7461

; <label>:7461                                    ; preds = %7445, %7256
  %7462 = phi float [ %7460, %7445 ], [ %7262, %7256 ]
  %7463 = phi float [ %7459, %7445 ], [ %7261, %7256 ]
  %7464 = phi float [ %7458, %7445 ], [ %7260, %7256 ]
  %7465 = phi float [ %7457, %7445 ], [ %7259, %7256 ]
  %7466 = phi float [ %7456, %7445 ], [ %7258, %7256 ]
  %7467 = phi float [ %7455, %7445 ], [ %7257, %7256 ]
  %7468 = fmul fast float %7467, %6411
  %7469 = fmul fast float %7466, %6411
  %7470 = fmul fast float %7465, %6411
  %7471 = fmul fast float %7464, %6704
  %7472 = call float @dx.op.dot3.f32(i32 55, float %7464, float %7463, float %7462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7473 = call float @dx.op.dot3.f32(i32 55, float %7468, float %7469, float %7470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7474 = select i1 %237, float %7472, float %7464
  %7475 = select i1 %237, float %7472, float %7463
  %7476 = select i1 %237, float 1.000000e+00, float %7462
  %7477 = select i1 %237, float %7473, float %7468
  %7478 = select i1 %237, float 0.000000e+00, float %7469
  %7479 = select i1 %237, float 0.000000e+00, float %7470
  %7480 = fmul fast float %7474, %6698
  %7481 = fmul fast float %7475, %6699
  %7482 = fmul fast float %7476, %6700
  %7483 = fadd fast float %7480, %7477
  %7484 = fadd fast float %7481, %7478
  %7485 = fadd fast float %7479, %7482
  %7486 = fmul fast float %7474, %6701
  %7487 = fmul fast float %7475, %6702
  %7488 = fmul fast float %7476, %6703
  %7489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7490 = extractvalue %dx.types.CBufRet.i32 %7489, 0
  %7491 = icmp eq i32 %7490, 0
  br i1 %7491, label %7859, label %7492, !dx.controlflow.hints !190

; <label>:7492                                    ; preds = %7461
  %7493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.f32 %7493, 2
  %7495 = extractvalue %dx.types.CBufRet.f32 %7493, 3
  %7496 = fmul fast float %7494, %99
  %7497 = fmul fast float %7495, %100
  %7498 = fmul fast float %7496, 2.000000e+00
  %7499 = fmul fast float %7497, 2.000000e+00
  %7500 = fsub fast float 1.000000e+00, %7498
  %7501 = fsub fast float 1.000000e+00, %7499
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 0
  %7504 = extractvalue %dx.types.CBufRet.f32 %7502, 1
  %7505 = extractvalue %dx.types.CBufRet.f32 %7502, 2
  %7506 = fmul fast float %7500, %7503
  %7507 = fmul fast float %7500, %7504
  %7508 = fmul fast float %7500, %7505
  %7509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.f32 %7509, 0
  %7511 = extractvalue %dx.types.CBufRet.f32 %7509, 1
  %7512 = extractvalue %dx.types.CBufRet.f32 %7509, 2
  %7513 = fmul fast float %7501, %7510
  %7514 = fmul fast float %7501, %7511
  %7515 = fmul fast float %7501, %7512
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 0
  %7518 = extractvalue %dx.types.CBufRet.f32 %7516, 1
  %7519 = extractvalue %dx.types.CBufRet.f32 %7516, 2
  %7520 = fadd fast float %7513, %7517
  %7521 = fadd fast float %7520, %7506
  %7522 = fadd fast float %7514, %7518
  %7523 = fadd fast float %7522, %7507
  %7524 = fadd fast float %7515, %7519
  %7525 = fadd fast float %7524, %7508
  %7526 = fmul fast float %7521, %6697
  %7527 = fmul fast float %7523, %6697
  %7528 = fmul fast float %7525, %6697
  %7529 = fmul fast float %7526, %7526
  %7530 = fmul fast float %7527, %7527
  %7531 = fadd fast float %7529, %7530
  %7532 = fmul fast float %7528, %7528
  %7533 = fadd fast float %7531, %7532
  %7534 = call float @dx.op.unary.f32(i32 24, float %7533)  ; Sqrt(value)
  %7535 = extractvalue %dx.types.CBufRet.f32 %6422, 0
  %7536 = fsub fast float %7534, %7535
  %7537 = extractvalue %dx.types.CBufRet.f32 %6422, 2
  %7538 = fmul fast float %7536, %7537
  %7539 = call float @dx.op.unary.f32(i32 7, float %7538)  ; Saturate(value)
  %7540 = fadd fast float %7539, -5.000000e-01
  %7541 = fmul fast float %7540, 2.000000e+00
  %7542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.f32 %7542, 2
  %7544 = call float @dx.op.binary.f32(i32 36, float %7543, float %7541)  ; FMin(a,b)
  %7545 = fsub fast float -0.000000e+00, %7543
  %7546 = fcmp fast ogt float %7544, %7545
  br i1 %7546, label %7547, label %7859, !dx.controlflow.hints !191

; <label>:7547                                    ; preds = %7492
  %7548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7549 = extractvalue %dx.types.CBufRet.f32 %7548, 3
  %7550 = fcmp fast ogt float %7549, 0.000000e+00
  br i1 %7550, label %7551, label %7626, !dx.controlflow.hints !192

; <label>:7551                                    ; preds = %7547
  %7552 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7553 = extractvalue %dx.types.Dimensions %7552, 0
  %7554 = sitofp i32 %7553 to float
  %7555 = extractvalue %dx.types.Dimensions %7552, 1
  %7556 = sitofp i32 %7555 to float
  %7557 = fmul fast float %7496, %7554
  %7558 = fmul fast float %7497, %7556
  %7559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7560 = extractvalue %dx.types.CBufRet.f32 %7559, 1
  %7561 = fsub fast float -0.000000e+00, %7560
  %7562 = fptoui float %7561 to i32
  %7563 = fptoui float %7557 to i32
  %7564 = fptoui float %7558 to i32
  %7565 = and i32 %7562, 31
  %7566 = lshr i32 %7563, %7565
  %7567 = lshr i32 %7564, %7565
  %7568 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7562, i32 %7566, i32 %7567, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7569 = extractvalue %dx.types.ResRet.f32 %7568, 0
  %7570 = fcmp fast olt float %7569, -1.000000e+00
  %7571 = fcmp fast ogt float %7569, -1.000000e+00
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 1
  %7574 = select i1 %7571, float %7573, float 1.000000e+00
  %7575 = fadd fast float %7569, 1.000000e+00
  %7576 = fmul fast float %7574, %7575
  %7577 = call float @dx.op.unary.f32(i32 6, float %7576)  ; FAbs(value)
  %7578 = extractvalue %dx.types.CBufRet.f32 %7572, 3
  %7579 = fcmp fast oge float %7577, %7578
  %7580 = select i1 %7579, float 0x4197782600000000, float %7577
  %7581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7582 = extractvalue %dx.types.CBufRet.f32 %7581, 0
  %7583 = extractvalue %dx.types.CBufRet.f32 %7581, 1
  %7584 = extractvalue %dx.types.CBufRet.f32 %7581, 2
  %7585 = select i1 %7570, float %7582, float %7503
  %7586 = select i1 %7570, float %7583, float %7504
  %7587 = select i1 %7570, float %7584, float %7505
  %7588 = fmul fast float %7585, %7500
  %7589 = fmul fast float %7586, %7500
  %7590 = fmul fast float %7587, %7500
  %7591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.f32 %7591, 0
  %7593 = extractvalue %dx.types.CBufRet.f32 %7591, 1
  %7594 = extractvalue %dx.types.CBufRet.f32 %7591, 2
  %7595 = select i1 %7570, float %7592, float %7510
  %7596 = select i1 %7570, float %7593, float %7511
  %7597 = select i1 %7570, float %7594, float %7512
  %7598 = fmul fast float %7595, %7501
  %7599 = fmul fast float %7596, %7501
  %7600 = fmul fast float %7597, %7501
  %7601 = fadd fast float %7598, %7588
  %7602 = fadd fast float %7599, %7589
  %7603 = fadd fast float %7600, %7590
  %7604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7605 = extractvalue %dx.types.CBufRet.f32 %7604, 0
  %7606 = extractvalue %dx.types.CBufRet.f32 %7604, 1
  %7607 = extractvalue %dx.types.CBufRet.f32 %7604, 2
  %7608 = select i1 %7570, float %7605, float %7517
  %7609 = select i1 %7570, float %7606, float %7518
  %7610 = select i1 %7570, float %7607, float %7519
  %7611 = fadd fast float %7601, %7608
  %7612 = fadd fast float %7602, %7609
  %7613 = fadd fast float %7603, %7610
  %7614 = fmul fast float %7611, %7580
  %7615 = fmul fast float %7612, %7580
  %7616 = fmul fast float %7613, %7580
  %7617 = fmul fast float %7614, %7614
  %7618 = fmul fast float %7615, %7615
  %7619 = fadd fast float %7617, %7618
  %7620 = fmul fast float %7616, %7616
  %7621 = fadd fast float %7619, %7620
  %7622 = call float @dx.op.unary.f32(i32 24, float %7621)  ; Sqrt(value)
  %7623 = fsub fast float %7622, %7535
  %7624 = fmul fast float %7623, %7537
  %7625 = call float @dx.op.unary.f32(i32 7, float %7624)  ; Saturate(value)
  br label %7626

; <label>:7626                                    ; preds = %7551, %7547
  %7627 = phi float [ %7625, %7551 ], [ 1.000000e+00, %7547 ]
  %7628 = fmul fast float %7544, 5.000000e-01
  %7629 = fadd fast float %7628, 5.000000e-01
  %7630 = call float @dx.op.unary.f32(i32 22, float %7629)  ; Frc(value)
  %7631 = call float @dx.op.unary.f32(i32 27, float %7630)  ; Round_ni(value)
  %7632 = call float @dx.op.unary.f32(i32 22, float %7630)  ; Frc(value)
  %7633 = fmul fast float %7632, 2.000000e+00
  %7634 = fadd fast float %7633, -1.000000e+00
  %7635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7496, float %7497, float %7631, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7636 = extractvalue %dx.types.ResRet.f32 %7635, 0
  %7637 = extractvalue %dx.types.ResRet.f32 %7635, 1
  %7638 = extractvalue %dx.types.ResRet.f32 %7635, 2
  %7639 = extractvalue %dx.types.ResRet.f32 %7635, 3
  %7640 = fadd fast float %7636, -5.000000e-01
  %7641 = fadd fast float %7638, -5.000000e-01
  %7642 = fmul fast float %7640, 0xBFD5555560000000
  %7643 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7641, float %7642)  ; FMad(a,b,c)
  %7644 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7637, float 0.000000e+00)  ; FMad(a,b,c)
  %7645 = fadd fast float %7644, %7639
  %7646 = fmul fast float %7640, -7.500000e-01
  %7647 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7641, float %7646)  ; FMad(a,b,c)
  %7648 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7637, float 0.000000e+00)  ; FMad(a,b,c)
  %7649 = fadd fast float %7648, %7639
  %7650 = call float @dx.op.binary.f32(i32 35, float %7643, float -1.000000e+00)  ; FMax(a,b)
  %7651 = call float @dx.op.binary.f32(i32 35, float %7645, float -1.000000e+00)  ; FMax(a,b)
  %7652 = call float @dx.op.binary.f32(i32 35, float %7647, float -1.000000e+00)  ; FMax(a,b)
  %7653 = call float @dx.op.binary.f32(i32 35, float %7649, float -1.000000e+00)  ; FMax(a,b)
  %7654 = call float @dx.op.binary.f32(i32 36, float %7650, float 1.000000e+00)  ; FMin(a,b)
  %7655 = call float @dx.op.binary.f32(i32 36, float %7651, float 1.000000e+00)  ; FMin(a,b)
  %7656 = call float @dx.op.binary.f32(i32 36, float %7652, float 1.000000e+00)  ; FMin(a,b)
  %7657 = call float @dx.op.binary.f32(i32 36, float %7653, float 1.000000e+00)  ; FMin(a,b)
  %7658 = fcmp fast olt float %7654, 0x3FEFFF8020000000
  br i1 %7658, label %7659, label %7774, !dx.controlflow.hints !193

; <label>:7659                                    ; preds = %7626
  %7660 = extractvalue %dx.types.CBufRet.f32 %7542, 3
  %7661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7662 = extractvalue %dx.types.CBufRet.f32 %7661, 0
  %7663 = extractvalue %dx.types.CBufRet.f32 %7661, 1
  %7664 = extractvalue %dx.types.CBufRet.f32 %7661, 2
  %7665 = extractvalue %dx.types.CBufRet.f32 %7661, 3
  %7666 = fsub fast float %7662, %7654
  %7667 = fsub fast float %7663, %7655
  %7668 = fsub fast float %7664, %7656
  %7669 = fsub fast float %7665, %7657
  %7670 = fmul fast float %7666, %7660
  %7671 = fmul fast float %7667, %7660
  %7672 = fmul fast float %7668, %7660
  %7673 = fmul fast float %7669, %7660
  %7674 = fadd fast float %7670, %7654
  %7675 = fadd fast float %7671, %7655
  %7676 = fsub fast float -0.000000e+00, %7675
  %7677 = fadd fast float %7672, %7656
  %7678 = fadd fast float %7673, %7657
  %7679 = fmul fast float %7674, %7674
  %7680 = fsub fast float %7675, %7679
  %7681 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7680)  ; FMax(a,b)
  %7682 = fdiv fast float 1.000000e+00, %7681
  %7683 = fmul fast float %7675, %7674
  %7684 = fsub fast float %7677, %7683
  %7685 = fsub fast float %7634, %7674
  %7686 = fmul fast float %7634, %7634
  %7687 = fsub fast float %7686, %7675
  %7688 = fmul fast float %7685, %7682
  %7689 = fmul fast float %7688, %7684
  %7690 = fsub fast float %7687, %7689
  %7691 = fmul fast float %7675, %7675
  %7692 = fsub fast float %7678, %7691
  %7693 = fmul fast float %7684, %7684
  %7694 = fmul fast float %7693, %7682
  %7695 = fsub fast float %7692, %7694
  %7696 = fdiv fast float %7690, %7695
  %7697 = fmul fast float %7684, %7696
  %7698 = fsub fast float %7685, %7697
  %7699 = fmul fast float %7698, %7682
  %7700 = fmul fast float %7699, %7674
  %7701 = fsub fast float 1.000000e+00, %7700
  %7702 = fmul fast float %7675, %7696
  %7703 = fsub fast float %7701, %7702
  %7704 = fmul fast float %7699, %7699
  %7705 = fmul fast float %7696, 4.000000e+00
  %7706 = fmul fast float %7705, %7703
  %7707 = fsub fast float %7704, %7706
  %7708 = call float @dx.op.unary.f32(i32 24, float %7707)  ; Sqrt(value)
  %7709 = fcmp fast oge float %7699, 0.000000e+00
  %7710 = fsub fast float -0.000000e+00, %7708
  %7711 = select i1 %7709, float %7710, float %7708
  %7712 = fsub fast float %7711, %7699
  %7713 = fdiv fast float %7712, %7696
  %7714 = fdiv fast float %7703, %7712
  %7715 = fmul fast float %7713, 5.000000e-01
  %7716 = fmul fast float %7714, 2.000000e+00
  %7717 = select i1 %7709, float %7715, float %7716
  %7718 = select i1 %7709, float %7716, float %7715
  %7719 = call float @dx.op.binary.f32(i32 35, float %7717, float %7718)  ; FMax(a,b)
  %7720 = call float @dx.op.binary.f32(i32 36, float %7717, float %7718)  ; FMin(a,b)
  %7721 = fcmp fast ogt float %7634, %7720
  br i1 %7721, label %7722, label %7732

; <label>:7722                                    ; preds = %7659
  %7723 = fsub fast float %7634, %7720
  %7724 = fsub fast float %7719, %7720
  %7725 = fmul fast float %7723, %7724
  %7726 = fmul fast float %7719, %7634
  %7727 = fadd fast float %7719, %7634
  %7728 = fmul fast float %7727, %7674
  %7729 = fadd fast float %7726, %7675
  %7730 = fsub fast float %7729, %7728
  %7731 = fdiv fast float %7730, %7725
  br label %7732

; <label>:7732                                    ; preds = %7722, %7659
  %7733 = phi float [ %7731, %7722 ], [ 0.000000e+00, %7659 ]
  %7734 = fcmp fast ogt float %7634, %7719
  %7735 = fsub fast float %7634, %7719
  br i1 %7734, label %7736, label %7746

; <label>:7736                                    ; preds = %7732
  %7737 = fsub fast float %7719, %7720
  %7738 = fmul fast float %7737, %7735
  %7739 = fmul fast float %7720, %7634
  %7740 = fadd fast float %7720, %7634
  %7741 = fmul fast float %7740, %7674
  %7742 = fsub fast float %7676, %7739
  %7743 = fadd fast float %7742, %7741
  %7744 = fdiv fast float %7743, %7738
  %7745 = fadd fast float %7744, %7733
  br label %7746

; <label>:7746                                    ; preds = %7736, %7732
  %7747 = phi float [ %7745, %7736 ], [ %7733, %7732 ]
  %7748 = fsub fast float %7634, %7720
  %7749 = fmul fast float %7748, %7735
  %7750 = fmul fast float %7720, %7719
  %7751 = fadd fast float %7720, %7719
  %7752 = fmul fast float %7751, %7674
  %7753 = fadd fast float %7750, %7675
  %7754 = fsub fast float %7753, %7752
  %7755 = fdiv fast float %7754, %7749
  %7756 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  %7757 = fcmp fast oeq float %6423, 0.000000e+00
  %7758 = extractvalue %dx.types.CBufRet.f32 %7542, 0
  %7759 = fcmp fast oeq float %7758, 0.000000e+00
  %7760 = or i1 %7757, %7759
  %7761 = fmul fast float %7758, 2.000000e+00
  %7762 = fadd fast float %7543, %7544
  %7763 = fdiv fast float %7762, %7761
  %7764 = call float @dx.op.unary.f32(i32 7, float %7763)  ; Saturate(value)
  %7765 = fmul fast float %7764, 2.000000e+00
  %7766 = fsub fast float 3.000000e+00, %7765
  %7767 = fmul fast float %7764, %7764
  %7768 = fmul fast float %7767, %7766
  %7769 = select i1 %7760, float 1.000000e+00, float %7768
  %7770 = fmul fast float %7755, %6423
  %7771 = fadd fast float %7756, %7770
  %7772 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  %7773 = fmul fast float %7769, %7772
  br label %7774

; <label>:7774                                    ; preds = %7746, %7626
  %7775 = phi float [ %7773, %7746 ], [ 0.000000e+00, %7626 ]
  %7776 = fsub fast float 1.000000e+00, %7775
  %7777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7496, float %7497, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7778 = extractvalue %dx.types.ResRet.f32 %7777, 0
  %7779 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.i32 %7779, 2
  %7781 = icmp eq i32 %7780, 0
  br i1 %7781, label %7787, label %7782

; <label>:7782                                    ; preds = %7774
  %7783 = call float @dx.op.unary.f32(i32 7, float %7775)  ; Saturate(value)
  %7784 = fadd fast float %7778, -1.000000e+00
  %7785 = fmul fast float %7783, %7784
  %7786 = fadd fast float %7785, 1.000000e+00
  br label %7787

; <label>:7787                                    ; preds = %7782, %7774
  %7788 = phi float [ %7786, %7782 ], [ %7776, %7774 ]
  br i1 %7550, label %7789, label %7807

; <label>:7789                                    ; preds = %7787
  %7790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7791 = extractvalue %dx.types.CBufRet.f32 %7790, 1
  %7792 = fsub fast float %7627, %7791
  %7793 = call float @dx.op.unary.f32(i32 7, float %7792)  ; Saturate(value)
  %7794 = fsub fast float %7627, %7549
  %7795 = call float @dx.op.unary.f32(i32 7, float %7794)  ; Saturate(value)
  %7796 = fsub fast float %7793, %7795
  %7797 = fsub fast float %7629, %7795
  %7798 = fdiv fast float %7797, %7796
  %7799 = call float @dx.op.unary.f32(i32 7, float %7798)  ; Saturate(value)
  %7800 = fmul fast float %7799, 2.000000e+00
  %7801 = fsub fast float 3.000000e+00, %7800
  %7802 = fsub fast float %7778, %7788
  %7803 = fmul fast float %7799, %7799
  %7804 = fmul fast float %7803, %7802
  %7805 = fmul fast float %7804, %7801
  %7806 = fadd fast float %7805, %7788
  br label %7807

; <label>:7807                                    ; preds = %7789, %7787
  %7808 = phi float [ %7806, %7789 ], [ %7788, %7787 ]
  %7809 = call float @dx.op.binary.f32(i32 35, float %7778, float %7808)  ; FMax(a,b)
  %7810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7811 = extractvalue %dx.types.CBufRet.i32 %7810, 2
  %7812 = and i32 %7811, 1
  %7813 = icmp eq i32 %7812, 0
  %7814 = fcmp fast une float %7809, 1.000000e+00
  %7815 = and i1 %7814, %7813
  br i1 %7815, label %7816, label %7835

; <label>:7816                                    ; preds = %7807
  %7817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7496, float %7497, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7818 = extractvalue %dx.types.ResRet.f32 %7817, 0
  %7819 = extractvalue %dx.types.ResRet.f32 %7817, 1
  %7820 = extractvalue %dx.types.ResRet.f32 %7817, 2
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 1
  %7823 = fmul fast float %7822, %7818
  %7824 = fmul fast float %7822, %7819
  %7825 = fmul fast float %7822, %7820
  %7826 = fcmp fast ogt float %7778, 0x3FEFFF2E40000000
  %7827 = fsub fast float 1.000000e+00, %7809
  %7828 = fsub fast float 1.000000e+00, %7778
  %7829 = fdiv fast float %7827, %7828
  %7830 = call float @dx.op.unary.f32(i32 7, float %7829)  ; Saturate(value)
  %7831 = select i1 %7826, float 0.000000e+00, float %7830
  %7832 = fmul fast float %7823, %7831
  %7833 = fmul fast float %7824, %7831
  %7834 = fmul fast float %7825, %7831
  br label %7835

; <label>:7835                                    ; preds = %7816, %7807
  %7836 = phi float [ 0.000000e+00, %7807 ], [ %7832, %7816 ]
  %7837 = phi float [ 0.000000e+00, %7807 ], [ %7833, %7816 ]
  %7838 = phi float [ 0.000000e+00, %7807 ], [ %7834, %7816 ]
  %7839 = fmul fast float %7836, %6411
  %7840 = fmul fast float %7837, %6411
  %7841 = fmul fast float %7838, %6411
  %7842 = fmul fast float %7809, %7471
  %7843 = call float @dx.op.dot3.f32(i32 55, float %7809, float %7809, float %7809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7844 = call float @dx.op.dot3.f32(i32 55, float %7839, float %7840, float %7841, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7845 = select i1 %237, float %7843, float %7809
  %7846 = select i1 %237, float 1.000000e+00, float %7809
  %7847 = select i1 %237, float %7844, float %7839
  %7848 = select i1 %237, float 0.000000e+00, float %7840
  %7849 = select i1 %237, float 0.000000e+00, float %7841
  %7850 = fmul fast float %7845, %7483
  %7851 = fmul fast float %7845, %7484
  %7852 = fmul fast float %7846, %7485
  %7853 = fadd fast float %7850, %7847
  %7854 = fadd fast float %7851, %7848
  %7855 = fadd fast float %7849, %7852
  %7856 = fmul fast float %7845, %7486
  %7857 = fmul fast float %7845, %7487
  %7858 = fmul fast float %7846, %7488
  br label %7859

; <label>:7859                                    ; preds = %7835, %7492, %7461, %6693
  %7860 = phi float [ %6698, %6693 ], [ %7483, %7461 ], [ %7853, %7835 ], [ %7483, %7492 ]
  %7861 = phi float [ %6699, %6693 ], [ %7484, %7461 ], [ %7854, %7835 ], [ %7484, %7492 ]
  %7862 = phi float [ %6700, %6693 ], [ %7485, %7461 ], [ %7855, %7835 ], [ %7485, %7492 ]
  %7863 = phi float [ %6701, %6693 ], [ %7486, %7461 ], [ %7856, %7835 ], [ %7486, %7492 ]
  %7864 = phi float [ %6702, %6693 ], [ %7487, %7461 ], [ %7857, %7835 ], [ %7487, %7492 ]
  %7865 = phi float [ %6703, %6693 ], [ %7488, %7461 ], [ %7858, %7835 ], [ %7488, %7492 ]
  %7866 = phi float [ %6704, %6693 ], [ %7471, %7461 ], [ %7842, %7835 ], [ %7471, %7492 ]
  %7867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7868 = extractvalue %dx.types.CBufRet.f32 %7867, 2
  %7869 = extractvalue %dx.types.CBufRet.f32 %7867, 3
  %7870 = fmul fast float %7868, %99
  %7871 = fmul fast float %7869, %100
  %7872 = call float @dx.op.unary.f32(i32 7, float %7870)  ; Saturate(value)
  %7873 = call float @dx.op.unary.f32(i32 7, float %7871)  ; Saturate(value)
  %7874 = select i1 %6433, i32 2, i32 0
  %7875 = or i32 %7874, 1
  %7876 = uitofp i32 %7875 to float
  %7877 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7872, float %7873, float %7876, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7878 = extractvalue %dx.types.ResRet.f32 %7877, 0
  %7879 = extractvalue %dx.types.ResRet.f32 %7877, 1
  %7880 = extractvalue %dx.types.ResRet.f32 %7877, 2
  %7881 = extractvalue %dx.types.ResRet.f32 %7877, 3
  %7882 = add nuw nsw i32 %7874, 2
  %7883 = uitofp i32 %7882 to float
  %7884 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7872, float %7873, float %7883, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7885 = extractvalue %dx.types.ResRet.f32 %7884, 0
  %7886 = extractvalue %dx.types.ResRet.f32 %7884, 1
  %7887 = extractvalue %dx.types.ResRet.f32 %7884, 2
  %7888 = extractvalue %dx.types.ResRet.f32 %7884, 3
  %7889 = call float @dx.op.binary.f32(i32 35, float %7879, float %7880)  ; FMax(a,b)
  %7890 = call float @dx.op.binary.f32(i32 35, float %7878, float %7889)  ; FMax(a,b)
  %7891 = call float @dx.op.binary.f32(i32 35, float %7890, float %7881)  ; FMax(a,b)
  %7892 = call float @dx.op.binary.f32(i32 36, float %7886, float %7887)  ; FMin(a,b)
  %7893 = call float @dx.op.binary.f32(i32 36, float %7885, float %7892)  ; FMin(a,b)
  %7894 = call float @dx.op.binary.f32(i32 36, float %7893, float %7888)  ; FMin(a,b)
  %7895 = fmul fast float %7891, 2.550000e+02
  %7896 = fadd fast float %7895, 0x3F70101020000000
  %7897 = fptoui float %7896 to i32
  %7898 = fmul fast float %7894, 2.550000e+02
  %7899 = fadd fast float %7898, 0x3F70101020000000
  %7900 = fptoui float %7899 to i32
  %7901 = icmp ult i32 %7897, %7900
  br i1 %7901, label %7902, label %8071

; <label>:7902                                    ; preds = %7859
  %7903 = fcmp fast ogt float %86, 9.843750e-01
  %7904 = fadd fast float %6697, -4.000000e+00
  %7905 = select i1 %7903, float -4.000000e+00, float %7904
  %7906 = call float @dx.op.binary.f32(i32 35, float %7905, float 0.000000e+00)  ; FMax(a,b)
  %7907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7908 = extractvalue %dx.types.CBufRet.f32 %7907, 0
  %7909 = fadd fast float %7908, %7906
  %7910 = extractvalue %dx.types.CBufRet.f32 %7907, 2
  %7911 = fmul fast float %7909, %7910
  %7912 = call float @dx.op.unary.f32(i32 23, float %7911)  ; Log(value)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7907, 3
  %7914 = fmul fast float %7913, %7912
  %7915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7916 = extractvalue %dx.types.CBufRet.f32 %7915, 2
  %7917 = fmul fast float %7914, %7916
  %7918 = call float @dx.op.unary.f32(i32 7, float %7917)  ; Saturate(value)
  %7919 = uitofp i32 %7897 to float
  %7920 = uitofp i32 %7900 to float
  %7921 = fadd fast float %7919, 5.000000e-01
  %7922 = fadd fast float %7920, 5.000000e-01
  %7923 = fmul fast float %7916, %7921
  %7924 = fmul fast float %7916, %7922
  %7925 = fadd fast float %7923, 0x3F0FFB4800000000
  %7926 = fadd fast float %7924, 0xBF0FFB4800000000
  %7927 = call float @dx.op.binary.f32(i32 35, float %7918, float %7925)  ; FMax(a,b)
  %7928 = call float @dx.op.binary.f32(i32 36, float %7927, float %7926)  ; FMin(a,b)
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 1
  %7931 = extractvalue %dx.types.CBufRet.f32 %7929, 2
  %7932 = extractvalue %dx.types.CBufRet.f32 %7929, 0
  %7933 = select i1 %6433, float %7932, float 0.000000e+00
  %7934 = fmul fast float %7930, %7928
  %7935 = fadd fast float %7933, %7934
  %7936 = fadd fast float %7933, %7931
  %7937 = fsub fast float %7930, %7931
  %7938 = fadd fast float %7937, %7933
  %7939 = call float @dx.op.binary.f32(i32 35, float %7935, float %7936)  ; FMax(a,b)
  %7940 = call float @dx.op.binary.f32(i32 36, float %7939, float %7938)  ; FMin(a,b)
  %7941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7872, float %7873, float %7940, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7942 = extractvalue %dx.types.ResRet.f32 %7941, 0
  %7943 = extractvalue %dx.types.ResRet.f32 %7941, 1
  %7944 = extractvalue %dx.types.ResRet.f32 %7941, 2
  %7945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7946 = extractvalue %dx.types.CBufRet.i32 %7945, 0
  %7947 = extractvalue %dx.types.CBufRet.i32 %7945, 1
  %7948 = uitofp i32 %7946 to float
  %7949 = uitofp i32 %7947 to float
  %7950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7951 = extractvalue %dx.types.CBufRet.f32 %7950, 0
  %7952 = extractvalue %dx.types.CBufRet.f32 %7950, 1
  %7953 = fmul fast float %7948, %7872
  %7954 = fmul fast float %7949, %7873
  %7955 = fadd fast float %7953, -5.000000e-01
  %7956 = fadd fast float %7954, -5.000000e-01
  %7957 = call float @dx.op.unary.f32(i32 22, float %7955)  ; Frc(value)
  %7958 = call float @dx.op.unary.f32(i32 22, float %7956)  ; Frc(value)
  %7959 = fmul fast float %7957, %7957
  %7960 = fmul fast float %7959, %7957
  %7961 = fsub fast float 3.000000e+00, %7957
  %7962 = fmul fast float %7959, %7961
  %7963 = fmul fast float %7957, 3.000000e+00
  %7964 = fmul fast float %7960, 3.000000e+00
  %7965 = fmul fast float %7959, 6.000000e+00
  %7966 = fsub fast float %7964, %7965
  %7967 = fadd fast float %7966, 4.000000e+00
  %7968 = fmul fast float %7967, 0x3FC5555560000000
  %7969 = fmul fast float %7960, -3.000000e+00
  %7970 = fadd fast float %7959, %7957
  %7971 = fmul fast float %7970, 3.000000e+00
  %7972 = fadd fast float %7969, 1.000000e+00
  %7973 = fadd fast float %7972, %7971
  %7974 = fmul fast float %7960, 0x3FC5555560000000
  %7975 = fmul fast float %7958, %7958
  %7976 = fmul fast float %7975, %7958
  %7977 = fsub fast float 3.000000e+00, %7958
  %7978 = fmul fast float %7975, %7977
  %7979 = fmul fast float %7958, 3.000000e+00
  %7980 = fmul fast float %7976, 3.000000e+00
  %7981 = fmul fast float %7975, 6.000000e+00
  %7982 = fsub fast float %7980, %7981
  %7983 = fadd fast float %7982, 4.000000e+00
  %7984 = fmul fast float %7983, 0x3FC5555560000000
  %7985 = fmul fast float %7976, -3.000000e+00
  %7986 = fadd fast float %7975, %7958
  %7987 = fmul fast float %7986, 3.000000e+00
  %7988 = fadd fast float %7985, 1.000000e+00
  %7989 = fadd fast float %7988, %7987
  %7990 = fmul fast float %7976, 0x3FC5555560000000
  %7991 = fadd fast float %7957, 1.000000e+00
  %7992 = fsub fast float 1.000000e+00, %7963
  %7993 = fadd fast float %7992, %7962
  %7994 = fadd fast float %7993, %7967
  %7995 = fmul fast float %7994, 0x3FC5555560000000
  %7996 = fdiv fast float %7968, %7995
  %7997 = fsub fast float %7991, %7996
  %7998 = fsub fast float 1.000000e+00, %7957
  %7999 = fadd fast float %7973, %7960
  %8000 = fmul fast float %7999, 0x3FC5555560000000
  %8001 = fdiv fast float %7974, %8000
  %8002 = fadd fast float %7998, %8001
  %8003 = fadd fast float %7958, 1.000000e+00
  %8004 = fsub fast float 1.000000e+00, %7979
  %8005 = fadd fast float %8004, %7978
  %8006 = fadd fast float %8005, %7983
  %8007 = fmul fast float %8006, 0x3FC5555560000000
  %8008 = fdiv fast float %7984, %8007
  %8009 = fsub fast float %8003, %8008
  %8010 = fsub fast float 1.000000e+00, %7958
  %8011 = fadd fast float %7989, %7976
  %8012 = fmul fast float %8011, 0x3FC5555560000000
  %8013 = fdiv fast float %7990, %8012
  %8014 = fadd fast float %8013, %8010
  %8015 = fmul fast float %7997, %7951
  %8016 = fsub fast float %7872, %8015
  %8017 = fmul fast float %8002, %7951
  %8018 = fadd fast float %8017, %7872
  %8019 = fmul fast float %8014, %7952
  %8020 = fadd fast float %8019, %7873
  %8021 = fmul fast float %8009, %7952
  %8022 = fsub fast float %7873, %8021
  %8023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8016, float %8022, float %7940, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8024 = extractvalue %dx.types.ResRet.f32 %8023, 0
  %8025 = extractvalue %dx.types.ResRet.f32 %8023, 1
  %8026 = extractvalue %dx.types.ResRet.f32 %8023, 2
  %8027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8018, float %8022, float %7940, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8028 = extractvalue %dx.types.ResRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.ResRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.ResRet.f32 %8027, 2
  %8031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8016, float %8020, float %7940, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8032 = extractvalue %dx.types.ResRet.f32 %8031, 0
  %8033 = extractvalue %dx.types.ResRet.f32 %8031, 1
  %8034 = extractvalue %dx.types.ResRet.f32 %8031, 2
  %8035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8018, float %8020, float %7940, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8036 = extractvalue %dx.types.ResRet.f32 %8035, 0
  %8037 = extractvalue %dx.types.ResRet.f32 %8035, 1
  %8038 = extractvalue %dx.types.ResRet.f32 %8035, 2
  %8039 = fsub fast float %8032, %8024
  %8040 = fsub fast float %8033, %8025
  %8041 = fsub fast float %8034, %8026
  %8042 = fmul fast float %8039, %8012
  %8043 = fmul fast float %8040, %8012
  %8044 = fmul fast float %8041, %8012
  %8045 = fadd fast float %8042, %8024
  %8046 = fadd fast float %8043, %8025
  %8047 = fadd fast float %8044, %8026
  %8048 = fsub fast float %8036, %8028
  %8049 = fsub fast float %8037, %8029
  %8050 = fsub fast float %8038, %8030
  %8051 = fmul fast float %8048, %8012
  %8052 = fmul fast float %8049, %8012
  %8053 = fmul fast float %8050, %8012
  %8054 = fsub fast float %8028, %8045
  %8055 = fadd fast float %8054, %8051
  %8056 = fsub fast float %8029, %8046
  %8057 = fadd fast float %8056, %8052
  %8058 = fsub fast float %8030, %8047
  %8059 = fadd fast float %8058, %8053
  %8060 = fmul fast float %8055, %8000
  %8061 = fmul fast float %8057, %8000
  %8062 = fmul fast float %8059, %8000
  %8063 = fadd fast float %8060, %8045
  %8064 = fadd fast float %8061, %8046
  %8065 = fadd fast float %8062, %8047
  %8066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8067 = extractvalue %dx.types.CBufRet.f32 %8066, 1
  %8068 = fmul fast float %8063, %8067
  %8069 = fmul fast float %8064, %8067
  %8070 = fmul fast float %8065, %8067
  br label %8071

; <label>:8071                                    ; preds = %7902, %7859
  %8072 = phi float [ %7942, %7902 ], [ 1.000000e+00, %7859 ]
  %8073 = phi float [ %7943, %7902 ], [ 1.000000e+00, %7859 ]
  %8074 = phi float [ %7944, %7902 ], [ 1.000000e+00, %7859 ]
  %8075 = phi float [ %8068, %7902 ], [ 0.000000e+00, %7859 ]
  %8076 = phi float [ %8069, %7902 ], [ 0.000000e+00, %7859 ]
  %8077 = phi float [ %8070, %7902 ], [ 0.000000e+00, %7859 ]
  %8078 = fmul fast float %8075, %6411
  %8079 = fmul fast float %8076, %6411
  %8080 = fmul fast float %8077, %6411
  %8081 = fmul fast float %8072, %7866
  %8082 = call float @dx.op.dot3.f32(i32 55, float %8072, float %8073, float %8074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8083 = call float @dx.op.dot3.f32(i32 55, float %8078, float %8079, float %8080, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8084 = select i1 %237, float %8082, float %8072
  %8085 = select i1 %237, float %8082, float %8073
  %8086 = select i1 %237, float 1.000000e+00, float %8074
  %8087 = select i1 %237, float %8083, float %8078
  %8088 = select i1 %237, float 0.000000e+00, float %8079
  %8089 = select i1 %237, float 0.000000e+00, float %8080
  %8090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8091 = extractvalue %dx.types.CBufRet.i32 %8090, 3
  %8092 = and i32 %8091, 3
  %8093 = icmp ne i32 %8092, 0
  %8094 = and i32 %8091, 4
  %8095 = icmp ne i32 %8094, 0
  %8096 = and i1 %8093, %8095
  %8097 = and i1 %237, %8096
  br i1 %8097, label %8098, label %8104

; <label>:8098                                    ; preds = %8071
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 1
  %8101 = fadd fast float %8081, -1.000000e+00
  %8102 = fmul fast float %8100, %8101
  %8103 = fadd fast float %8102, 1.000000e+00
  br label %8104

; <label>:8104                                    ; preds = %8098, %8071
  %8105 = phi float [ %8103, %8098 ], [ %8081, %8071 ]
  %8106 = fadd fast float %7863, %7860
  %8107 = fmul fast float %8084, %8106
  %8108 = fadd fast float %8107, %8087
  %8109 = fadd fast float %7864, %7861
  %8110 = fmul fast float %8085, %8109
  %8111 = fadd fast float %8110, %8088
  %8112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8112, 0
  br i1 %237, label %8114, label %8137

; <label>:8114                                    ; preds = %8104
  %8115 = fadd fast float %8108, %8111
  %8116 = fmul fast float %8113, %8115
  %8117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8118 = extractvalue %dx.types.CBufRet.f32 %8117, 3
  %8119 = extractvalue %dx.types.CBufRet.f32 %6415, 1
  %8120 = fsub fast float %6420, %6414
  %8121 = fadd fast float %8120, %6421
  %8122 = fsub fast float %8121, %8119
  %8123 = extractvalue %dx.types.CBufRet.f32 %6415, 2
  %8124 = fmul fast float %8122, %8123
  %8125 = call float @dx.op.unary.f32(i32 7, float %8124)  ; Saturate(value)
  %8126 = fsub fast float %8125, %8118
  %8127 = fmul fast float %8126, %8105
  %8128 = fadd fast float %8127, %8118
  %8129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8129, 0
  %8131 = fsub fast float %8128, %8130
  %8132 = fmul fast float %8131, 1.000000e+01
  %8133 = call float @dx.op.unary.f32(i32 7, float %8132)  ; Saturate(value)
  %8134 = fmul fast float %8133, %6410
  %8135 = fadd fast float %8134, %6411
  %8136 = fmul fast float %8135, %8128
  br label %8161

; <label>:8137                                    ; preds = %8104
  %8138 = fadd fast float %7865, %7862
  %8139 = fmul fast float %8086, %8138
  %8140 = fadd fast float %8139, %8089
  %8141 = fmul fast float %8113, %8108
  %8142 = fmul fast float %8113, %8111
  %8143 = fmul fast float %8113, %8140
  %8144 = call float @dx.op.binary.f32(i32 35, float %8142, float %8143)  ; FMax(a,b)
  %8145 = call float @dx.op.binary.f32(i32 35, float %8141, float %8144)  ; FMax(a,b)
  %8146 = call float @dx.op.binary.f32(i32 35, float %8145, float %6411)  ; FMax(a,b)
  %8147 = fcmp fast ugt float %8146, 0x3F10000000000000
  br i1 %8147, label %8149, label %8148

; <label>:8148                                    ; preds = %8137
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8149

; <label>:8149                                    ; preds = %8148, %8137
  %8150 = add i32 %71, 116
  %8151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %8150, i32 undef)  ; BufferLoad(srv,index,wot)
  %8152 = extractvalue %dx.types.ResRet.i32 %8151, 0
  %8153 = and i32 %8152, 32
  %8154 = icmp eq i32 %8153, 0
  br i1 %8154, label %8161, label %8155

; <label>:8155                                    ; preds = %8149
  %8156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8157 = extractvalue %dx.types.CBufRet.f32 %8156, 0
  %8158 = fmul fast float %8157, 0x3FE99999A0000000
  %8159 = fadd fast float %8157, %8141
  %8160 = fadd fast float %8158, %8143
  br label %8161

; <label>:8161                                    ; preds = %8155, %8149, %8114
  %8162 = phi float [ %8116, %8114 ], [ %8159, %8155 ], [ %8141, %8149 ]
  %8163 = phi float [ %8136, %8114 ], [ %8142, %8155 ], [ %8142, %8149 ]
  %8164 = phi float [ %8135, %8114 ], [ %8160, %8155 ], [ %8143, %8149 ]
  %8165 = phi float [ %8135, %8114 ], [ %6411, %8155 ], [ %6411, %8149 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8166 = call float @dx.op.binary.f32(i32 36, float %8162, float 3.225500e+04)  ; FMin(a,b)
  %8167 = call float @dx.op.binary.f32(i32 36, float %8163, float 3.225500e+04)  ; FMin(a,b)
  %8168 = call float @dx.op.binary.f32(i32 36, float %8164, float 3.225500e+04)  ; FMin(a,b)
  %8169 = call float @dx.op.binary.f32(i32 36, float %8165, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8166)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8167)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8168)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8169)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

