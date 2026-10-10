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
; SV_IsFrontFace           0     z         5    FFACE    uint     z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 4677b083777154f2838d502923c3bfba
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
; Number of inputs: 23, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22 }
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
  %71 = icmp ne i32 %70, 0
  %72 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = alloca [12 x float], align 4
  %91 = alloca [12 x float], align 4
  %92 = alloca [4 x float], align 4
  %93 = alloca [4 x float], align 4
  %94 = alloca [4 x float], align 4
  %95 = alloca [3 x float], align 4
  %96 = alloca [3 x float], align 4
  %97 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %98 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = fmul fast float %100, %86
  %102 = fmul fast float %100, %87
  %103 = select i1 %71, float 1.000000e+00, float -1.000000e+00
  %104 = fmul fast float %78, %103
  %105 = fmul fast float %79, %103
  %106 = fmul fast float %80, %103
  %107 = fmul fast float %74, %103
  %108 = fmul fast float %75, %103
  %109 = fmul fast float %76, %103
  %110 = fmul fast float %79, %76
  %111 = fmul fast float %80, %75
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %80, %74
  %114 = fmul fast float %78, %76
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %78, %75
  %117 = fmul fast float %79, %74
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %77, %103
  %120 = fmul fast float %119, %112
  %121 = fmul fast float %119, %115
  %122 = fmul fast float %119, %118
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 3
  %126 = fmul fast float %124, 2.000000e+00
  %127 = fmul fast float %126, %101
  %128 = fmul fast float %125, 2.000000e+00
  %129 = fmul fast float %128, %102
  %130 = fsub fast float 1.000000e+00, %127
  %131 = fsub fast float 1.000000e+00, %129
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = fmul fast float %130, %133
  %137 = fmul fast float %130, %134
  %138 = fmul fast float %130, %135
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %143 = fmul fast float %131, %140
  %144 = fmul fast float %131, %141
  %145 = fmul fast float %131, %142
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fadd fast float %143, %147
  %151 = fadd fast float %150, %136
  %152 = fadd fast float %144, %148
  %153 = fadd fast float %152, %137
  %154 = fadd fast float %145, %149
  %155 = fadd fast float %154, %138
  %156 = fmul fast float %151, %89
  %157 = fmul fast float %153, %89
  %158 = fmul fast float %155, %89
  %159 = fadd fast float %83, 5.000000e-01
  %160 = fptoui float %159 to i32
  %161 = shl i32 %160, 3
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = or i32 %161, 4
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = and i32 %163, 8191
  %168 = lshr i32 %163, 13
  %169 = and i32 %168, 8191
  %170 = lshr i32 %163, 26
  %171 = and i32 %166, 65535
  %172 = lshr i32 %166, 16
  %173 = uitofp i32 %171 to float
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %176 = uitofp i32 %172 to float
  %177 = uitofp i32 %167 to float
  %178 = fmul fast float %175, %177
  %179 = uitofp i32 %169 to float
  %180 = fmul fast float %175, %179
  %181 = fmul fast float %175, %81
  %182 = fmul fast float %181, %173
  %183 = fmul fast float %175, %82
  %184 = fmul fast float %183, %176
  %185 = fadd fast float %182, %178
  %186 = fadd fast float %180, %184
  %187 = uitofp i32 %170 to float
  %188 = fmul fast float %101, 5.000000e-01
  %189 = fmul fast float %102, 5.000000e-01
  %190 = fptosi float %188 to i32
  %191 = fptosi float %189 to i32
  %192 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %190, i32 %191, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = lshr i32 %193, 18
  %195 = uitofp i32 %194 to float
  %196 = fmul fast float %195, 0x3F4C00EBA0000000
  %197 = call float @dx.op.unary.f32(i32 21, float %196)  ; Exp(value)
  %198 = fadd fast float %197, -1.000000e+00
  %199 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %200 = extractvalue %dx.types.Dimensions %199, 0
  %201 = sitofp i32 %200 to float
  %202 = extractvalue %dx.types.Dimensions %199, 1
  %203 = sitofp i32 %202 to float
  %204 = fcmp fast oge float %188, %201
  %205 = fcmp fast oge float %189, %203
  %206 = or i1 %204, %205
  %207 = select i1 %206, float 0x4197782600000000, float %198
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %210 = extractvalue %dx.types.CBufRet.f32 %208, 3
  %211 = fmul fast float %209, %101
  %212 = fmul fast float %210, %102
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = and i32 %214, 114688
  %216 = icmp ne i32 %215, 0
  %217 = select i1 %216, float %211, float 0.000000e+00
  %218 = select i1 %216, float %212, float 0.000000e+00
  %219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %65, float %217, float %218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = fmul fast float %220, 2.550000e+02
  %222 = fptoui float %221 to i32
  %223 = select i1 %216, i32 %222, i32 0
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 3
  %227 = and i32 %226, 3
  %228 = icmp ne i32 %227, 0
  %229 = and i32 %226, 4
  %230 = icmp ne i32 %229, 0
  %231 = and i1 %228, %230
  br i1 %231, label %232, label %243

; <label>:232                                     ; preds = %0
  %233 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %234 = fmul fast float %233, %102
  %235 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %236 = fmul fast float %235, %101
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %64, float %236, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fsub fast float 1.000000e+00, %238
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = fcmp fast olt float %239, %241
  br label %246

; <label>:243                                     ; preds = %0
  %244 = icmp eq i32 %229, 0
  %245 = and i1 %228, %244
  br label %246

; <label>:246                                     ; preds = %243, %232
  %247 = phi i1 [ %242, %232 ], [ %245, %243 ]
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %250 = fmul fast float %249, 0x3FE3C6EF40000000
  %251 = frem fast float %101, 2.560000e+02
  %252 = frem fast float %102, 2.560000e+02
  %253 = fptoui float %251 to i32
  %254 = fptoui float %252 to i32
  %255 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %253, i32 %254, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fadd fast float %256, %250
  %258 = call float @dx.op.unary.f32(i32 22, float %257)  ; Frc(value)
  %259 = add i32 %73, 60
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = shl i32 %261, 4
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %261, 7
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %261, 22
  %269 = shl nuw nsw i32 %268, 5
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = add i32 %73, 72
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = lshr i32 %273, 8
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = lshr i32 %273, 16
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = add i32 %73, 36
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %73, 96
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = fmul fast float %296, 0x3F50624DE0000000
  %300 = fmul fast float %298, 0x3F50624DE0000000
  %301 = add i32 %73, 108
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 2
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %314, label %306

; <label>:306                                     ; preds = %246
  %307 = add i32 %73, 148
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = add i32 %309, 0
  %311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %311, %dx.types.Handle %98, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %313 = extractvalue %dx.types.ResRet.f32 %312, 3
  br label %314

; <label>:314                                     ; preds = %306, %246
  %315 = phi float [ 1.000000e+00, %246 ], [ %313, %306 ]
  %316 = add i32 %73, 24
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = add i32 %73, 28
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = or i32 %321, %318
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %965, label %324

; <label>:324                                     ; preds = %314
  %325 = add i32 %73, 92
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = lshr i32 %327, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = fmul fast float %329, 0x3F50624DE0000000
  %331 = add i32 %73, 40
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = lshr i32 %333, 16
  %335 = and i32 %334, 255
  %336 = lshr i32 %333, 24
  %337 = add i32 %73, 100
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %73, 32
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = lshr i32 %346, 22
  %348 = shl nuw nsw i32 %347, 5
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = shl i32 %346, 4
  %351 = and i32 %350, 32752
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %346, 7
  %354 = and i32 %353, 32752
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 3
  %358 = fmul fast float %357, 1.000000e+03
  %359 = fmul fast float %299, %358
  %360 = call float @dx.op.unary.f32(i32 22, float %359)  ; Frc(value)
  %361 = fadd fast float %360, %289
  %362 = fmul fast float %300, %358
  %363 = call float @dx.op.unary.f32(i32 22, float %362)  ; Frc(value)
  %364 = fadd fast float %363, %291
  %365 = fmul fast float %330, %358
  %366 = call float @dx.op.unary.f32(i32 22, float %365)  ; Frc(value)
  %367 = fmul fast float %366, 0x401921FB60000000
  %368 = fadd fast float %367, %349
  %369 = call float @dx.op.unary.f32(i32 13, float %368)  ; Sin(value)
  %370 = call float @dx.op.unary.f32(i32 12, float %368)  ; Cos(value)
  %371 = fsub fast float -0.000000e+00, %369
  %372 = fadd fast float %84, -5.000000e-01
  %373 = fadd fast float %85, -5.000000e-01
  %374 = fmul fast float %341, %372
  %375 = fmul fast float %343, %373
  %376 = fadd fast float %374, 5.000000e-01
  %377 = fadd fast float %375, 5.000000e-01
  %378 = fmul fast float %352, %376
  %379 = fmul fast float %355, %377
  %380 = fmul fast float %370, %378
  %381 = call float @dx.op.tertiary.f32(i32 46, float %371, float %379, float %380)  ; FMad(a,b,c)
  %382 = fmul fast float %369, %378
  %383 = call float @dx.op.tertiary.f32(i32 46, float %370, float %379, float %382)  ; FMad(a,b,c)
  %384 = fadd fast float %361, %381
  %385 = fadd fast float %364, %383
  %386 = icmp ugt i32 %335, 1
  %387 = icmp ugt i32 %333, 33554431
  %388 = or i1 %387, %386
  br i1 %388, label %389, label %414

; <label>:389                                     ; preds = %324
  %390 = add i32 %73, 84
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = lshr i32 %392, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %357, %394
  %396 = call float @dx.op.unary.f32(i32 22, float %395)  ; Frc(value)
  %397 = mul nuw nsw i32 %335, %336
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %396, %398
  %400 = call float @dx.op.unary.f32(i32 27, float %399)  ; Round_ni(value)
  %401 = fptoui float %400 to i32
  %402 = urem i32 %401, %335
  %403 = udiv i32 %401, %336
  %404 = call float @dx.op.unary.f32(i32 22, float %384)  ; Frc(value)
  %405 = call float @dx.op.unary.f32(i32 22, float %385)  ; Frc(value)
  %406 = uitofp i32 %402 to float
  %407 = uitofp i32 %403 to float
  %408 = fadd fast float %404, %406
  %409 = fadd fast float %405, %407
  %410 = uitofp i32 %335 to float
  %411 = uitofp i32 %336 to float
  %412 = fdiv fast float %408, %410
  %413 = fdiv fast float %409, %411
  br label %414

; <label>:414                                     ; preds = %389, %324
  %415 = phi float [ %412, %389 ], [ %384, %324 ]
  %416 = phi float [ %413, %389 ], [ %385, %324 ]
  %417 = and i32 %318, 16777216
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %528, label %419

; <label>:419                                     ; preds = %414
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 0
  %422 = extractvalue %dx.types.CBufRet.f32 %420, 1
  %423 = extractvalue %dx.types.CBufRet.f32 %420, 2
  %424 = fadd fast float %421, %156
  %425 = fadd fast float %422, %157
  %426 = fadd fast float %423, %158
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = icmp eq i32 %72, 65535
  br i1 %430, label %525, label %431

; <label>:431                                     ; preds = %419
  %432 = lshr i32 %72, 1
  %433 = shl i32 %432, 2
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %72, 1
  %437 = icmp ne i32 %436, 0
  %438 = lshr i32 %435, 16
  %439 = and i32 %435, 65535
  %440 = select i1 %437, i32 %438, i32 %439
  %441 = icmp eq i32 %440, 65535
  br i1 %441, label %521, label %442

; <label>:442                                     ; preds = %431
  %443 = mul nuw nsw i32 %440, 40
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = add nuw nsw i32 %443, 12
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = add nuw nsw i32 %443, 24
  %454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.f32 %454, 0
  %456 = extractvalue %dx.types.ResRet.f32 %454, 1
  %457 = extractvalue %dx.types.ResRet.f32 %454, 2
  %458 = add nuw nsw i32 %443, 36
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = fsub fast float %424, %445
  %462 = fsub fast float %425, %446
  %463 = fsub fast float %426, %447
  %464 = fmul fast float %460, %461
  %465 = fmul fast float %460, %462
  %466 = fmul fast float %460, %463
  %467 = call float @dx.op.unary.f32(i32 27, float %464)  ; Round_ni(value)
  %468 = call float @dx.op.unary.f32(i32 27, float %465)  ; Round_ni(value)
  %469 = call float @dx.op.unary.f32(i32 27, float %466)  ; Round_ni(value)
  %470 = fadd fast float %467, 5.000000e-01
  %471 = fadd fast float %468, 5.000000e-01
  %472 = fadd fast float %469, 5.000000e-01
  %473 = fmul fast float %470, %450
  %474 = fmul fast float %471, %451
  %475 = fmul fast float %472, %452
  %476 = shl i32 %72, 2
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = add i32 %478, 0
  %480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %481 = call float @dx.op.unary.f32(i32 22, float %473)  ; Frc(value)
  %482 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %483 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %480, %dx.types.Handle %65, float %481, float %482, float %483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = fmul fast float %485, 1.023000e+03
  %489 = fmul fast float %486, 1.023000e+03
  %490 = fmul fast float %487, 1.023000e+03
  %491 = fadd fast float %488, 5.000000e-01
  %492 = fadd fast float %489, 5.000000e-01
  %493 = fadd fast float %490, 5.000000e-01
  %494 = call float @dx.op.unary.f32(i32 27, float %491)  ; Round_ni(value)
  %495 = call float @dx.op.unary.f32(i32 27, float %492)  ; Round_ni(value)
  %496 = call float @dx.op.unary.f32(i32 27, float %493)  ; Round_ni(value)
  %497 = fsub fast float %464, %467
  %498 = fsub fast float %465, %468
  %499 = fsub fast float %466, %469
  %500 = fmul fast float %497, 7.500000e-01
  %501 = fmul fast float %498, 7.500000e-01
  %502 = fmul fast float %499, 7.500000e-01
  %503 = fadd fast float %467, 1.250000e-01
  %504 = fadd fast float %503, %500
  %505 = fadd fast float %504, %494
  %506 = fadd fast float %468, 1.250000e-01
  %507 = fadd fast float %506, %501
  %508 = fadd fast float %507, %495
  %509 = fadd fast float %469, 1.250000e-01
  %510 = fadd fast float %509, %502
  %511 = fadd fast float %510, %496
  %512 = fmul fast float %505, %455
  %513 = fmul fast float %508, %456
  %514 = fmul fast float %511, %457
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = add i32 %516, 0
  %518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %518, %dx.types.Handle %63, float %512, float %513, float %514, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  br label %521

; <label>:521                                     ; preds = %442, %431
  %522 = phi float [ %520, %442 ], [ -1.000000e+00, %431 ]
  %523 = fadd fast float %522, %429
  %524 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  br label %525

; <label>:525                                     ; preds = %521, %419
  %526 = phi float [ %524, %521 ], [ %429, %419 ]
  %527 = fmul fast float %526, %315
  br label %528

; <label>:528                                     ; preds = %525, %414
  %529 = phi float [ %527, %525 ], [ %315, %414 ]
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = and i32 %531, 256
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %580, label %534

; <label>:534                                     ; preds = %528
  %535 = add i32 %73, 136
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = add i32 %537, 0
  %539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %539, %dx.types.Handle %98, float %415, float %416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = add i32 %73, 52
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = shl i32 %544, 4
  %546 = and i32 %545, 32752
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %544, 7
  %549 = and i32 %548, 32752
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = fsub fast float 1.000000e+00, %529
  %552 = call float @dx.op.binary.f32(i32 35, float %551, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %553 = bitcast float %529 to i32
  %554 = sitofp i32 %553 to float
  %555 = fadd fast float %554, 0xC1CFBF8940000000
  %556 = fmul fast float %550, %555
  %557 = fadd fast float %556, 0x41CFBF8940000000
  %558 = fptosi float %557 to i32
  %559 = bitcast i32 %558 to float
  %560 = bitcast float %552 to i32
  %561 = sitofp i32 %560 to float
  %562 = fadd fast float %561, 0xC1CFBF8940000000
  %563 = fmul fast float %562, %550
  %564 = fadd fast float %563, 0x41CFBF8940000000
  %565 = fptosi float %564 to i32
  %566 = bitcast i32 %565 to float
  %567 = fmul fast float %559, %547
  %568 = fmul fast float %566, %547
  %569 = fsub fast float %552, %567
  %570 = fadd fast float %568, %552
  %571 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %572 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  %573 = fsub fast float %541, %571
  %574 = fsub fast float %572, %571
  %575 = bitcast float %574 to i32
  %576 = sub nsw i32 2129859010, %575
  %577 = bitcast i32 %576 to float
  %578 = fmul fast float %577, %573
  %579 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  br label %580

; <label>:580                                     ; preds = %534, %528
  %581 = phi float [ %579, %534 ], [ %529, %528 ]
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = and i32 %583, 128
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %602, label %586

; <label>:586                                     ; preds = %580
  %587 = add i32 %73, 132
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = add i32 %589, 0
  %591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %591, %dx.types.Handle %98, float %415, float %416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = and i32 %595, 524288
  %597 = icmp ne i32 %596, 0
  %598 = fcmp fast ogt float %593, 0x3FE0101020000000
  %599 = select i1 %598, float 1.000000e+00, float 0.000000e+00
  %600 = select i1 %597, float %599, float %593
  %601 = fmul fast float %600, %581
  br label %602

; <label>:602                                     ; preds = %586, %580
  %603 = phi float [ %601, %586 ], [ %581, %580 ]
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = and i32 %605, 16
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %806, label %608

; <label>:608                                     ; preds = %602
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = add i32 %73, 120
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = add i32 %613, 0
  %615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %616 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %615, %dx.types.Handle %97, float %415, float %416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = extractvalue %dx.types.ResRet.f32 %616, 3
  %621 = and i32 %610, 255
  %622 = uitofp i32 %621 to float
  %623 = lshr i32 %610, 8
  %624 = and i32 %623, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %620, %622
  %627 = fadd fast float %626, %625
  %628 = fmul fast float %627, 0x3F70101000000000
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = and i32 %630, 512
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %641, label %633

; <label>:633                                     ; preds = %608
  %634 = add i32 %73, 140
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = add i32 %636, 0
  %638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %637, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %639 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %638, %dx.types.Handle %98, float %415, float %416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  br label %641

; <label>:641                                     ; preds = %633, %608
  %642 = phi float [ %640, %633 ], [ 1.000000e+00, %608 ]
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = and i32 %644, 33554432
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %753, label %647

; <label>:647                                     ; preds = %641
  %648 = add i32 %73, 80
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 65535
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = lshr i32 %650, 16
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = add i32 %73, 84
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 65535
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = lshr i32 %661, 24
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = and i32 %661, 255
  %666 = uitofp i32 %665 to float
  %667 = fmul fast float %666, 0x3F70101020000000
  %668 = lshr i32 %661, 8
  %669 = and i32 %668, 255
  %670 = uitofp i32 %669 to float
  %671 = fmul fast float %670, 0x3F70101020000000
  %672 = lshr i32 %661, 16
  %673 = and i32 %672, 255
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F70101020000000
  %676 = add i32 %73, 76
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = lshr i32 %678, 24
  %680 = uitofp i32 %679 to float
  %681 = fmul fast float %680, 0x3F70101020000000
  %682 = and i32 %678, 255
  %683 = uitofp i32 %682 to float
  %684 = fmul fast float %683, 0x3F70101020000000
  %685 = lshr i32 %678, 8
  %686 = and i32 %685, 255
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %687, 0x3F70101020000000
  %689 = lshr i32 %678, 16
  %690 = and i32 %689, 255
  %691 = uitofp i32 %690 to float
  %692 = fmul fast float %691, 0x3F70101020000000
  %693 = bitcast float %617 to i32
  %694 = ashr i32 %693, 1
  %695 = sub nsw i32 1597463174, %694
  %696 = bitcast i32 %695 to float
  %697 = fmul fast float %617, 5.000000e-01
  %698 = fmul fast float %696, %696
  %699 = fmul fast float %698, %697
  %700 = fsub fast float 1.500000e+00, %699
  %701 = fmul fast float %696, %617
  %702 = fmul fast float %701, %700
  %703 = bitcast float %618 to i32
  %704 = ashr i32 %703, 1
  %705 = sub nsw i32 1597463174, %704
  %706 = bitcast i32 %705 to float
  %707 = fmul fast float %618, 5.000000e-01
  %708 = fmul fast float %706, %706
  %709 = fmul fast float %708, %707
  %710 = fsub fast float 1.500000e+00, %709
  %711 = fmul fast float %706, %618
  %712 = fmul fast float %711, %710
  %713 = bitcast float %619 to i32
  %714 = ashr i32 %713, 1
  %715 = sub nsw i32 1597463174, %714
  %716 = bitcast i32 %715 to float
  %717 = fmul fast float %619, 5.000000e-01
  %718 = fmul fast float %716, %716
  %719 = fmul fast float %718, %717
  %720 = fsub fast float 1.500000e+00, %719
  %721 = fmul fast float %716, %619
  %722 = fmul fast float %721, %720
  %723 = fsub fast float %702, %684
  %724 = fsub fast float %712, %688
  %725 = fsub fast float %722, %692
  %726 = fmul fast float %723, %652
  %727 = fmul fast float %724, %654
  %728 = fmul fast float %725, %659
  %729 = fadd fast float %726, %667
  %730 = fadd fast float %727, %671
  %731 = fadd fast float %728, %675
  %732 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %733 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %734 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %735 = fmul fast float %732, %732
  %736 = fmul fast float %733, %733
  %737 = fmul fast float %734, %734
  %738 = fsub fast float %735, %617
  %739 = fsub fast float %736, %618
  %740 = fsub fast float %737, %619
  %741 = fmul fast float %738, %642
  %742 = fmul fast float %739, %642
  %743 = fmul fast float %740, %642
  %744 = fadd fast float %741, %617
  %745 = fadd fast float %742, %618
  %746 = fadd fast float %743, %619
  %747 = fadd fast float %664, %628
  %748 = fsub fast float %747, %681
  %749 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  %750 = fsub fast float %749, %628
  %751 = fmul fast float %750, %642
  %752 = fadd fast float %751, %628
  br label %806

; <label>:753                                     ; preds = %641
  %754 = and i32 %644, 134217728
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %790, label %756

; <label>:756                                     ; preds = %753
  %757 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %758 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %759 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %760 = fadd fast float %757, -5.000000e-01
  %761 = fadd fast float %758, -5.000000e-01
  %762 = fadd fast float %759, -5.000000e-01
  %763 = fmul fast float %760, %642
  %764 = fmul fast float %761, %642
  %765 = fmul fast float %762, %642
  %766 = fadd fast float %763, 5.000000e-01
  %767 = fadd fast float %764, 5.000000e-01
  %768 = fadd fast float %765, 5.000000e-01
  %769 = call float @dx.op.unary.f32(i32 24, float %617)  ; Sqrt(value)
  %770 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %771 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %772 = fmul fast float %766, 2.000000e+00
  %773 = fsub fast float 1.000000e+00, %772
  %774 = fmul fast float %773, %769
  %775 = fadd fast float %774, %772
  %776 = fmul fast float %775, %769
  %777 = fmul fast float %767, 2.000000e+00
  %778 = fsub fast float 1.000000e+00, %777
  %779 = fmul fast float %778, %770
  %780 = fadd fast float %779, %777
  %781 = fmul fast float %780, %770
  %782 = fmul fast float %768, 2.000000e+00
  %783 = fsub fast float 1.000000e+00, %782
  %784 = fmul fast float %783, %771
  %785 = fadd fast float %784, %782
  %786 = fmul fast float %785, %771
  %787 = fmul fast float %776, %776
  %788 = fmul fast float %781, %781
  %789 = fmul fast float %786, %786
  br label %806

; <label>:790                                     ; preds = %753
  %791 = fmul fast float %276, %276
  %792 = fmul fast float %280, %280
  %793 = fmul fast float %284, %284
  %794 = fadd fast float %791, -1.000000e+00
  %795 = fadd fast float %792, -1.000000e+00
  %796 = fadd fast float %793, -1.000000e+00
  %797 = fmul fast float %642, %794
  %798 = fmul fast float %642, %795
  %799 = fmul fast float %642, %796
  %800 = fadd fast float %797, 1.000000e+00
  %801 = fadd fast float %798, 1.000000e+00
  %802 = fadd fast float %799, 1.000000e+00
  %803 = fmul fast float %800, %617
  %804 = fmul fast float %801, %618
  %805 = fmul fast float %802, %619
  br label %806

; <label>:806                                     ; preds = %790, %756, %647, %602
  %807 = phi float [ %752, %647 ], [ %628, %756 ], [ %628, %790 ], [ 0x3FA23C0BE0000000, %602 ]
  %808 = phi float [ %744, %647 ], [ %787, %756 ], [ %803, %790 ], [ 1.000000e+00, %602 ]
  %809 = phi float [ %745, %647 ], [ %788, %756 ], [ %804, %790 ], [ 1.000000e+00, %602 ]
  %810 = phi float [ %746, %647 ], [ %789, %756 ], [ %805, %790 ], [ 1.000000e+00, %602 ]
  %811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.i32 %811, 1
  %813 = and i32 %812, 1
  %814 = icmp ne i32 %813, 0
  %815 = add i32 %73, 116
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 32
  %819 = icmp ne i32 %818, 0
  %820 = and i1 %814, %819
  %821 = select i1 %820, float 1.000000e+00, float %808
  %822 = select i1 %820, float 0x3FD3333340000000, float %809
  %823 = select i1 %820, float 0x3FD3333340000000, float %810
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 32
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %900, label %828

; <label>:828                                     ; preds = %806
  %829 = add i32 %73, 44
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = add i32 %73, 124
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = add i32 %834, 0
  %836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %835, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %837 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %836, %dx.types.Handle %97, float %415, float %416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = extractvalue %dx.types.ResRet.f32 %837, 1
  %840 = extractvalue %dx.types.ResRet.f32 %837, 2
  %841 = extractvalue %dx.types.ResRet.f32 %837, 3
  %842 = and i32 %831, 255
  %843 = uitofp i32 %842 to float
  %844 = lshr i32 %831, 8
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = lshr i32 %831, 16
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F70101000000000
  %851 = fmul fast float %838, %843
  %852 = fadd fast float %851, %846
  %853 = fmul fast float %852, 0x3F70101000000000
  %854 = fadd fast float %839, -5.000000e-01
  %855 = fadd fast float %841, -5.000000e-01
  %856 = fmul fast float %854, %850
  %857 = fmul fast float %855, %850
  %858 = fadd fast float %856, 5.000000e-01
  %859 = fadd fast float %857, 5.000000e-01
  %860 = fmul fast float %858, 2.000000e+00
  %861 = fadd fast float %860, -1.000000e+00
  %862 = fmul fast float %859, 2.000000e+00
  %863 = fadd fast float %862, -1.000000e+00
  %864 = fadd fast float %861, %863
  %865 = fmul fast float %864, 5.000000e-01
  %866 = fsub fast float %861, %863
  %867 = fmul fast float %866, 5.000000e-01
  %868 = call float @dx.op.unary.f32(i32 6, float %865)  ; FAbs(value)
  %869 = fsub fast float 1.000000e+00, %868
  %870 = call float @dx.op.unary.f32(i32 6, float %867)  ; FAbs(value)
  %871 = fsub fast float %869, %870
  %872 = call float @dx.op.dot3.f32(i32 55, float %865, float %867, float %871, float %865, float %867, float %871)  ; Dot3(ax,ay,az,bx,by,bz)
  %873 = call float @dx.op.unary.f32(i32 25, float %872)  ; Rsqrt(value)
  %874 = fmul fast float %865, %873
  %875 = fmul fast float %867, %873
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = and i32 %877, 67108864
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %896, label %880

; <label>:880                                     ; preds = %828
  %881 = add i32 %73, 88
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 65535
  %885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %884)  ; LegacyF16ToF32(value)
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = and i32 %887, 65535
  %889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %888)  ; LegacyF16ToF32(value)
  %890 = lshr i32 %883, 16
  %891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %890)  ; LegacyF16ToF32(value)
  %892 = fsub fast float %853, %891
  %893 = fmul fast float %892, %885
  %894 = fadd fast float %893, %889
  %895 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  br label %896

; <label>:896                                     ; preds = %880, %828
  %897 = phi float [ %895, %880 ], [ %853, %828 ]
  %898 = call float @dx.op.dot2.f32(i32 54, float %874, float %875, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %899 = call float @dx.op.dot2.f32(i32 54, float %874, float %875, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %900

; <label>:900                                     ; preds = %896, %806
  %901 = phi float [ %897, %896 ], [ 0x3FD6666660000000, %806 ]
  %902 = phi float [ %898, %896 ], [ 0.000000e+00, %806 ]
  %903 = phi float [ %899, %896 ], [ 0.000000e+00, %806 ]
  %904 = phi float [ %840, %896 ], [ 1.000000e+00, %806 ]
  %905 = add i32 %73, 64
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = lshr i32 %907, 22
  %909 = shl nuw nsw i32 %908, 5
  %910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %909)  ; LegacyF16ToF32(value)
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 64
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %948, label %915

; <label>:915                                     ; preds = %900
  %916 = add i32 %73, 128
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = add i32 %918, 0
  %920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %919, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = and i32 %922, 131072
  %924 = icmp eq i32 %923, 0
  %925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %920, %dx.types.Handle %97, float %415, float %416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  %927 = extractvalue %dx.types.ResRet.f32 %925, 1
  %928 = extractvalue %dx.types.ResRet.f32 %925, 2
  %929 = fmul fast float %926, %264
  %930 = fmul fast float %927, %267
  %931 = fmul fast float %928, %270
  br i1 %924, label %938, label %932

; <label>:932                                     ; preds = %915
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 0
  %935 = fmul fast float %934, %929
  %936 = fmul fast float %934, %930
  %937 = fmul fast float %934, %931
  br label %938

; <label>:938                                     ; preds = %932, %915
  %939 = phi float [ %935, %932 ], [ %929, %915 ]
  %940 = phi float [ %936, %932 ], [ %930, %915 ]
  %941 = phi float [ %937, %932 ], [ %931, %915 ]
  %942 = fmul fast float %939, %910
  %943 = select i1 %247, float %942, float %939
  %944 = call float @dx.op.dot3.f32(i32 55, float %943, float %940, float %941, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %945 = select i1 %247, float 0.000000e+00, float %939
  %946 = select i1 %247, float %944, float %940
  %947 = select i1 %247, float 0.000000e+00, float %941
  br label %948

; <label>:948                                     ; preds = %938, %900
  %949 = phi float [ %945, %938 ], [ 0.000000e+00, %900 ]
  %950 = phi float [ %946, %938 ], [ 0.000000e+00, %900 ]
  %951 = phi float [ %947, %938 ], [ 0.000000e+00, %900 ]
  %952 = add i32 %73, 48
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = and i32 %954, 255
  %956 = uitofp i32 %955 to float
  %957 = lshr i32 %954, 8
  %958 = and i32 %957, 255
  %959 = uitofp i32 %958 to float
  %960 = call float @dx.op.dot3.f32(i32 55, float %821, float %822, float %823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = fmul fast float %959, %960
  %962 = fadd fast float %961, %956
  %963 = fmul fast float %962, 0x3F70101020000000
  %964 = call float @dx.op.unary.f32(i32 7, float %963)  ; Saturate(value)
  br label %965

; <label>:965                                     ; preds = %948, %314
  %966 = phi float [ 0.000000e+00, %314 ], [ %902, %948 ]
  %967 = phi float [ 0.000000e+00, %314 ], [ %903, %948 ]
  %968 = phi float [ 0.000000e+00, %314 ], [ %821, %948 ]
  %969 = phi float [ 0.000000e+00, %314 ], [ %822, %948 ]
  %970 = phi float [ 0.000000e+00, %314 ], [ %823, %948 ]
  %971 = phi float [ 0.000000e+00, %314 ], [ %949, %948 ]
  %972 = phi float [ 0.000000e+00, %314 ], [ %950, %948 ]
  %973 = phi float [ 0.000000e+00, %314 ], [ %951, %948 ]
  %974 = phi float [ 0.000000e+00, %314 ], [ %807, %948 ]
  %975 = phi float [ 0.000000e+00, %314 ], [ %603, %948 ]
  %976 = phi float [ 0.000000e+00, %314 ], [ %901, %948 ]
  %977 = phi float [ 0.000000e+00, %314 ], [ %904, %948 ]
  %978 = phi float [ 0.000000e+00, %314 ], [ %964, %948 ]
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 0
  %981 = call float @dx.op.dot2.f32(i32 54, float %966, float %967, float %966, float %967)  ; Dot2(ax,ay,bx,by)
  %982 = fmul fast float %981, 0x3FE3333340000000
  %983 = fsub fast float 1.000000e+00, %982
  %984 = call float @dx.op.dot3.f32(i32 55, float %966, float %967, float %983, float %966, float %967, float %983)  ; Dot3(ax,ay,az,bx,by,bz)
  %985 = call float @dx.op.unary.f32(i32 25, float %984)  ; Rsqrt(value)
  %986 = fmul fast float %985, %966
  %987 = fmul fast float %985, %967
  %988 = fmul fast float %983, %985
  %989 = fmul fast float %988, %104
  %990 = fmul fast float %988, %105
  %991 = fmul fast float %988, %106
  %992 = fmul fast float %986, %107
  %993 = fmul fast float %986, %108
  %994 = fmul fast float %986, %109
  %995 = fadd fast float %989, %992
  %996 = fadd fast float %990, %993
  %997 = fadd fast float %991, %994
  %998 = fmul fast float %987, %120
  %999 = fmul fast float %987, %121
  %1000 = fmul fast float %987, %122
  %1001 = fadd fast float %995, %998
  %1002 = fadd fast float %996, %999
  %1003 = fadd fast float %997, %1000
  %1004 = call float @dx.op.dot3.f32(i32 55, float %1001, float %1002, float %1003, float %1001, float %1002, float %1003)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = call float @dx.op.unary.f32(i32 25, float %1004)  ; Rsqrt(value)
  %1006 = fmul fast float %1001, %1005
  %1007 = fmul fast float %1002, %1005
  %1008 = fmul fast float %1003, %1005
  %1009 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %1010 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %1011 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %1012 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %1013 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %1014 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %1015 = fadd fast float %1009, %156
  %1016 = fadd fast float %1010, %157
  %1017 = fadd fast float %1011, %158
  %1018 = fadd fast float %1012, %156
  %1019 = fadd fast float %1013, %157
  %1020 = fadd fast float %1014, %158
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.CBufRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 2
  %1027 = extractvalue %dx.types.CBufRet.f32 %1025, 3
  %1028 = fmul fast float %1022, %101
  %1029 = fmul fast float %1028, %1026
  %1030 = fmul fast float %1023, %102
  %1031 = fmul fast float %1030, %1027
  %1032 = fptoui float %1029 to i32
  %1033 = fptoui float %1031 to i32
  %1034 = fadd fast float %1022, -1.000000e+00
  %1035 = fadd fast float %1023, -1.000000e+00
  %1036 = fptoui float %1034 to i32
  %1037 = fptoui float %1035 to i32
  %1038 = call i32 @dx.op.binary.i32(i32 40, i32 %1032, i32 %1036)  ; UMin(a,b)
  %1039 = call i32 @dx.op.binary.i32(i32 40, i32 %1033, i32 %1037)  ; UMin(a,b)
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1042 = extractvalue %dx.types.CBufRet.f32 %1040, 3
  %1043 = fmul fast float %1041, %89
  %1044 = fsub fast float %1043, %1042
  %1045 = fadd fast float %1024, -1.000000e+00
  %1046 = call float @dx.op.binary.f32(i32 36, float %1044, float %1045)  ; FMin(a,b)
  %1047 = fptoui float %1046 to i32
  %1048 = fptoui float %1022 to i32
  %1049 = fptoui float %1023 to i32
  %1050 = mul i32 %1047, %1049
  %1051 = add i32 %1050, %1039
  %1052 = mul i32 %1051, %1048
  %1053 = add i32 %1052, %1038
  %1054 = shl i32 %1053, 2
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = and i32 %1056, 1023
  %1058 = lshr i32 %1056, 10
  %1059 = icmp eq i32 %1057, 0
  br i1 %1059, label %1488, label %1060

; <label>:1060                                    ; preds = %965
  %1061 = and i32 %1056, 1023
  br label %1062

; <label>:1062                                    ; preds = %1189, %1060
  %1063 = phi float [ %1190, %1189 ], [ 0.000000e+00, %1060 ]
  %1064 = phi float [ %1191, %1189 ], [ %975, %1060 ]
  %1065 = phi float [ %1192, %1189 ], [ %980, %1060 ]
  %1066 = phi float [ %1193, %1189 ], [ %978, %1060 ]
  %1067 = phi float [ %1194, %1189 ], [ 0.000000e+00, %1060 ]
  %1068 = phi float [ %1195, %1189 ], [ 0.000000e+00, %1060 ]
  %1069 = phi float [ %1196, %1189 ], [ %971, %1060 ]
  %1070 = phi float [ %1197, %1189 ], [ %972, %1060 ]
  %1071 = phi float [ %1198, %1189 ], [ %973, %1060 ]
  %1072 = phi float [ %1199, %1189 ], [ %1006, %1060 ]
  %1073 = phi float [ %1200, %1189 ], [ %1007, %1060 ]
  %1074 = phi float [ %1201, %1189 ], [ %1008, %1060 ]
  %1075 = phi float [ %1202, %1189 ], [ %977, %1060 ]
  %1076 = phi float [ %1203, %1189 ], [ %976, %1060 ]
  %1077 = phi float [ %1204, %1189 ], [ 0.000000e+00, %1060 ]
  %1078 = phi float [ %1205, %1189 ], [ %974, %1060 ]
  %1079 = phi float [ %1206, %1189 ], [ %968, %1060 ]
  %1080 = phi float [ %1207, %1189 ], [ %969, %1060 ]
  %1081 = phi float [ %1208, %1189 ], [ %970, %1060 ]
  %1082 = phi i32 [ %1139, %1189 ], [ 0, %1060 ]
  %1083 = add nuw nsw i32 %1082, %1058
  %1084 = shl i32 %1083, 2
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = shl i32 %1086, 8
  %1088 = or i32 %1087, 48
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = extractvalue %dx.types.ResRet.f32 %1089, 3
  %1094 = or i32 %1087, 64
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = extractvalue %dx.types.ResRet.i32 %1095, 1
  %1098 = or i32 %1087, 80
  %1099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 2
  %1101 = extractvalue %dx.types.ResRet.f32 %1099, 3
  %1102 = or i32 %1087, 96
  %1103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.ResRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.ResRet.f32 %1103, 2
  %1107 = extractvalue %dx.types.ResRet.f32 %1103, 3
  %1108 = or i32 %1087, 112
  %1109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 2
  %1111 = or i32 %1087, 128
  %1112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = extractvalue %dx.types.ResRet.f32 %1112, 3
  %1117 = or i32 %1087, 144
  %1118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.ResRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.ResRet.f32 %1118, 2
  %1122 = extractvalue %dx.types.ResRet.f32 %1118, 3
  %1123 = or i32 %1087, 160
  %1124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.ResRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.ResRet.f32 %1124, 2
  %1128 = extractvalue %dx.types.ResRet.f32 %1124, 3
  %1129 = or i32 %1087, 192
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = or i32 %1087, 208
  %1133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = or i32 %1087, 248
  %1136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1139 = add nuw nsw i32 %1082, 1
  %1140 = bitcast float %1093 to i32
  %1141 = and i32 %1140, 2560
  %1142 = icmp eq i32 %1141, 0
  %1143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1143, 2
  %1147 = extractvalue %dx.types.ResRet.f32 %1143, 3
  %1148 = call float @dx.op.dot4.f32(i32 56, float %1144, float %1145, float %1146, float %1147, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1149 = or i32 %1087, 16
  %1150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.ResRet.f32 %1150, 1
  %1153 = extractvalue %dx.types.ResRet.f32 %1150, 2
  %1154 = extractvalue %dx.types.ResRet.f32 %1150, 3
  %1155 = call float @dx.op.dot4.f32(i32 56, float %1151, float %1152, float %1153, float %1154, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1156 = or i32 %1087, 32
  %1157 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = extractvalue %dx.types.ResRet.f32 %1157, 1
  %1160 = extractvalue %dx.types.ResRet.f32 %1157, 2
  %1161 = extractvalue %dx.types.ResRet.f32 %1157, 3
  %1162 = call float @dx.op.dot4.f32(i32 56, float %1158, float %1159, float %1160, float %1161, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1163 = call float @dx.op.unary.f32(i32 27, float %1148)  ; Round_ni(value)
  %1164 = call float @dx.op.unary.f32(i32 6, float %1163)  ; FAbs(value)
  %1165 = call float @dx.op.unary.f32(i32 27, float %1155)  ; Round_ni(value)
  %1166 = call float @dx.op.unary.f32(i32 6, float %1165)  ; FAbs(value)
  %1167 = call float @dx.op.unary.f32(i32 6, float %1162)  ; FAbs(value)
  %1168 = call float @dx.op.unary.f32(i32 27, float %1167)  ; Round_ni(value)
  %1169 = fadd fast float %1166, %1164
  %1170 = fadd fast float %1169, %1168
  %1171 = fcmp fast oeq float %1170, 0.000000e+00
  %1172 = call float @dx.op.dot4.f32(i32 56, float %1144, float %1145, float %1146, float %1147, float %1015, float %1016, float %1017, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1173 = call float @dx.op.dot4.f32(i32 56, float %1151, float %1152, float %1153, float %1154, float %1015, float %1016, float %1017, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1174 = call float @dx.op.dot4.f32(i32 56, float %1144, float %1145, float %1146, float %1147, float %1018, float %1019, float %1020, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1175 = call float @dx.op.dot4.f32(i32 56, float %1151, float %1152, float %1153, float %1154, float %1018, float %1019, float %1020, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1176 = fsub fast float %1172, %1148
  %1177 = fsub fast float %1174, %1148
  %1178 = fsub fast float %1173, %1155
  %1179 = fsub fast float %1175, %1155
  %1180 = call float @dx.op.dot3.f32(i32 55, float %1090, float %1091, float %1092, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 2
  %1183 = fadd fast float %1182, %1180
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1186 = fcmp fast ogt float %1184, %1185
  %1187 = and i1 %1171, %1186
  %1188 = and i1 %1142, %1187
  br i1 %1188, label %1210, label %1189

; <label>:1189                                    ; preds = %1474, %1291, %1210, %1062
  %1190 = phi float [ %1063, %1210 ], [ %1294, %1291 ], [ %1294, %1474 ], [ %1063, %1062 ]
  %1191 = phi float [ %1064, %1210 ], [ %1064, %1291 ], [ %1449, %1474 ], [ %1064, %1062 ]
  %1192 = phi float [ %1065, %1210 ], [ %1065, %1291 ], [ %1448, %1474 ], [ %1065, %1062 ]
  %1193 = phi float [ %1066, %1210 ], [ %1066, %1291 ], [ %1446, %1474 ], [ %1066, %1062 ]
  %1194 = phi float [ %1067, %1210 ], [ %1067, %1291 ], [ %1418, %1474 ], [ %1067, %1062 ]
  %1195 = phi float [ %1068, %1210 ], [ %1068, %1291 ], [ %1416, %1474 ], [ %1068, %1062 ]
  %1196 = phi float [ %1069, %1210 ], [ %1069, %1291 ], [ %1484, %1474 ], [ %1069, %1062 ]
  %1197 = phi float [ %1070, %1210 ], [ %1070, %1291 ], [ %1485, %1474 ], [ %1070, %1062 ]
  %1198 = phi float [ %1071, %1210 ], [ %1071, %1291 ], [ %1486, %1474 ], [ %1071, %1062 ]
  %1199 = phi float [ %1072, %1210 ], [ %1072, %1291 ], [ %1397, %1474 ], [ %1072, %1062 ]
  %1200 = phi float [ %1073, %1210 ], [ %1073, %1291 ], [ %1398, %1474 ], [ %1073, %1062 ]
  %1201 = phi float [ %1074, %1210 ], [ %1074, %1291 ], [ %1399, %1474 ], [ %1074, %1062 ]
  %1202 = phi float [ %1075, %1210 ], [ %1075, %1291 ], [ %1426, %1474 ], [ %1075, %1062 ]
  %1203 = phi float [ %1076, %1210 ], [ %1076, %1291 ], [ %1423, %1474 ], [ %1076, %1062 ]
  %1204 = phi float [ %1077, %1210 ], [ %1077, %1291 ], [ %1420, %1474 ], [ %1077, %1062 ]
  %1205 = phi float [ %1078, %1210 ], [ %1078, %1291 ], [ %1414, %1474 ], [ %1078, %1062 ]
  %1206 = phi float [ %1079, %1210 ], [ %1079, %1291 ], [ %1409, %1474 ], [ %1079, %1062 ]
  %1207 = phi float [ %1080, %1210 ], [ %1080, %1291 ], [ %1410, %1474 ], [ %1080, %1062 ]
  %1208 = phi float [ %1081, %1210 ], [ %1081, %1291 ], [ %1411, %1474 ], [ %1081, %1062 ]
  %1209 = icmp eq i32 %1139, %1061
  br i1 %1209, label %1487, label %1062

; <label>:1210                                    ; preds = %1062
  %1211 = extractvalue %dx.types.ResRet.f32 %1109, 3
  %1212 = extractvalue %dx.types.ResRet.f32 %1109, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1214 = extractvalue %dx.types.ResRet.f32 %1099, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1216 = extractvalue %dx.types.ResRet.i32 %1095, 3
  %1217 = extractvalue %dx.types.ResRet.i32 %1095, 2
  %1218 = add i32 %1216, 0
  %1219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1218, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1221 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1219, %dx.types.Handle %1220, float %1148, float %1155, float undef, float undef, i32 0, i32 0, i32 undef, float %1176, float %1178, float undef, float %1177, float %1179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = fmul fast float %1222, %1215
  %1224 = fadd fast float %1223, %1214
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = fmul fast float %1148, %1104
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %1155, float %1226)  ; FMad(a,b,c)
  %1228 = fadd fast float %1227, %1213
  %1229 = fmul fast float %1148, %1106
  %1230 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %1155, float %1229)  ; FMad(a,b,c)
  %1231 = fadd fast float %1230, %1212
  %1232 = fmul fast float %1176, %1104
  %1233 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %1178, float %1232)  ; FMad(a,b,c)
  %1234 = fmul fast float %1176, %1106
  %1235 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %1178, float %1234)  ; FMad(a,b,c)
  %1236 = fmul fast float %1177, %1104
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %1179, float %1236)  ; FMad(a,b,c)
  %1238 = fmul fast float %1177, %1106
  %1239 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %1179, float %1238)  ; FMad(a,b,c)
  %1240 = add i32 %1217, 0
  %1241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1240, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1242 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1241, %dx.types.Handle %1220, float %1228, float %1231, float undef, float undef, i32 0, i32 0, i32 undef, float %1233, float %1235, float undef, float %1237, float %1239, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = and i32 %1140, 1024
  %1245 = icmp ne i32 %1244, 0
  %1246 = fcmp fast ogt float %1243, 0x3FE0101020000000
  %1247 = uitofp i1 %1246 to float
  %1248 = select i1 %1245, float %1247, float %1243
  %1249 = and i32 %1140, 8192
  %1250 = icmp ne i32 %1249, 0
  %1251 = select i1 %1250, float %1211, float 1.000000e+00
  %1252 = fmul fast float %1148, 2.000000e+00
  %1253 = fadd fast float %1252, -1.000000e+00
  %1254 = call float @dx.op.unary.f32(i32 6, float %1253)  ; FAbs(value)
  %1255 = fmul fast float %1254, %1137
  %1256 = fsub fast float %1255, %1137
  %1257 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1258 = fmul fast float %1155, 2.000000e+00
  %1259 = fadd fast float %1258, -1.000000e+00
  %1260 = call float @dx.op.unary.f32(i32 6, float %1259)  ; FAbs(value)
  %1261 = fmul fast float %1260, %1138
  %1262 = fsub fast float %1261, %1138
  %1263 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1264 = fmul fast float %1167, %1100
  %1265 = fsub fast float %1264, %1100
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1267 = fmul fast float %1225, %1251
  %1268 = fmul fast float %1267, %1222
  %1269 = fmul fast float %1268, %1257
  %1270 = fmul fast float %1269, %1248
  %1271 = fmul fast float %1270, %1263
  %1272 = fmul fast float %1271, %1266
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 1
  %1275 = extractvalue %dx.types.CBufRet.f32 %1273, 0
  %1276 = fsub fast float %1184, %1275
  %1277 = fmul fast float %1276, %1274
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = fmul fast float %1272, %1101
  %1280 = fadd fast float %1272, %1101
  %1281 = fmul fast float %1280, %1110
  %1282 = fsub fast float %1281, %1110
  %1283 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1284 = and i32 %1140, 128
  %1285 = icmp ne i32 %1284, 0
  %1286 = select i1 %1285, float %1283, float %1279
  %1287 = fmul fast float %1286, %1278
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = fcmp fast ugt float %1287, %1289
  br i1 %1290, label %1291, label %1189

; <label>:1291                                    ; preds = %1210
  %1292 = select i1 %1250, float %1287, float 0.000000e+00
  %1293 = fadd fast float %1292, %1063
  %1294 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  br i1 %1250, label %1189, label %1295

; <label>:1295                                    ; preds = %1291
  %1296 = and i32 %1140, 4
  %1297 = and i32 %1140, 8
  %1298 = add i32 %1096, 0
  %1299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1298, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1301 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1299, %dx.types.Handle %1300, float %1228, float %1231, float undef, float undef, i32 0, i32 0, i32 undef, float %1233, float %1235, float undef, float %1237, float %1239, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.ResRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.ResRet.f32 %1301, 2
  %1305 = extractvalue %dx.types.ResRet.f32 %1301, 3
  %1306 = bitcast float %1122 to i32
  %1307 = and i32 %1306, 255
  %1308 = uitofp i32 %1307 to float
  %1309 = lshr i32 %1306, 8
  %1310 = and i32 %1309, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = fmul fast float %1305, %1308
  %1313 = fadd fast float %1312, %1311
  %1314 = fmul fast float %1313, 0x3F70101000000000
  %1315 = add i32 %1097, 0
  %1316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1315, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1317 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1316, %dx.types.Handle %1300, float %1228, float %1231, float undef, float undef, i32 0, i32 0, i32 undef, float %1233, float %1235, float undef, float %1237, float %1239, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1318 = extractvalue %dx.types.ResRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.ResRet.f32 %1317, 1
  %1320 = extractvalue %dx.types.ResRet.f32 %1317, 2
  %1321 = extractvalue %dx.types.ResRet.f32 %1317, 3
  %1322 = bitcast float %1116 to i32
  %1323 = and i32 %1322, 255
  %1324 = uitofp i32 %1323 to float
  %1325 = lshr i32 %1322, 8
  %1326 = and i32 %1325, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = lshr i32 %1322, 16
  %1329 = and i32 %1328, 255
  %1330 = uitofp i32 %1329 to float
  %1331 = fmul fast float %1330, 0x3F70101000000000
  %1332 = fmul fast float %1318, %1324
  %1333 = fadd fast float %1332, %1327
  %1334 = fmul fast float %1333, 0x3F70101000000000
  %1335 = fadd fast float %1319, -5.000000e-01
  %1336 = fadd fast float %1321, -5.000000e-01
  %1337 = fmul fast float %1335, %1331
  %1338 = fmul fast float %1336, %1331
  %1339 = fadd fast float %1337, 5.000000e-01
  %1340 = fadd fast float %1338, 5.000000e-01
  %1341 = fmul fast float %1302, %1125
  %1342 = fmul fast float %1303, %1126
  %1343 = fmul fast float %1304, %1127
  %1344 = fmul fast float %1339, 2.000000e+00
  %1345 = fadd fast float %1344, -1.000000e+00
  %1346 = fmul fast float %1340, 2.000000e+00
  %1347 = fadd fast float %1346, -1.000000e+00
  %1348 = fadd fast float %1345, %1347
  %1349 = fmul fast float %1348, 5.000000e-01
  %1350 = fsub fast float %1345, %1347
  %1351 = fmul fast float %1350, 5.000000e-01
  %1352 = call float @dx.op.unary.f32(i32 6, float %1349)  ; FAbs(value)
  %1353 = fsub fast float 1.000000e+00, %1352
  %1354 = call float @dx.op.unary.f32(i32 6, float %1351)  ; FAbs(value)
  %1355 = fsub fast float %1353, %1354
  %1356 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1351, float %1355, float %1349, float %1351, float %1355)  ; Dot3(ax,ay,az,bx,by,bz)
  %1357 = call float @dx.op.unary.f32(i32 25, float %1356)  ; Rsqrt(value)
  %1358 = fmul fast float %1349, %1357
  %1359 = fmul fast float %1351, %1357
  %1360 = fmul fast float %1357, %1355
  %1361 = fmul fast float %1360, %1090
  %1362 = fmul fast float %1360, %1091
  %1363 = fmul fast float %1360, %1092
  %1364 = fmul fast float %1358, %1113
  %1365 = fmul fast float %1358, %1114
  %1366 = fmul fast float %1358, %1115
  %1367 = fadd fast float %1364, %1361
  %1368 = fadd fast float %1365, %1362
  %1369 = fadd fast float %1366, %1363
  %1370 = fmul fast float %1359, %1119
  %1371 = fmul fast float %1359, %1120
  %1372 = fmul fast float %1359, %1121
  %1373 = fadd fast float %1367, %1370
  %1374 = fadd fast float %1368, %1371
  %1375 = fadd fast float %1369, %1372
  %1376 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1373, float %1374, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1377 = call float @dx.op.unary.f32(i32 25, float %1376)  ; Rsqrt(value)
  %1378 = fmul fast float %1373, %1377
  %1379 = fmul fast float %1374, %1377
  %1380 = fmul fast float %1375, %1377
  %1381 = icmp ne i32 %1297, 0
  %1382 = select i1 %1381, float 1.000000e+00, float 0.000000e+00
  %1383 = fmul fast float %1287, %1382
  %1384 = and i32 %1140, 1
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1386, label %1390

; <label>:1386                                    ; preds = %1295
  %1387 = fsub fast float %1378, %1072
  %1388 = fsub fast float %1379, %1073
  %1389 = fsub fast float %1380, %1074
  br label %1390

; <label>:1390                                    ; preds = %1386, %1295
  %1391 = phi float [ %1387, %1386 ], [ %1378, %1295 ]
  %1392 = phi float [ %1388, %1386 ], [ %1379, %1295 ]
  %1393 = phi float [ %1389, %1386 ], [ %1380, %1295 ]
  %1394 = fmul float %1393, %1383
  %1395 = fmul float %1392, %1383
  %1396 = fmul float %1391, %1383
  %1397 = fadd fast float %1396, %1072
  %1398 = fadd fast float %1395, %1073
  %1399 = fadd fast float %1394, %1074
  %1400 = icmp ne i32 %1296, 0
  %1401 = select i1 %1400, float 1.000000e+00, float 0.000000e+00
  %1402 = fmul fast float %1287, %1401
  %1403 = fsub fast float %1341, %1079
  %1404 = fsub fast float %1342, %1080
  %1405 = fsub fast float %1343, %1081
  %1406 = fmul fast float %1403, %1402
  %1407 = fmul fast float %1404, %1402
  %1408 = fmul fast float %1405, %1402
  %1409 = fadd fast float %1406, %1079
  %1410 = fadd fast float %1407, %1080
  %1411 = fadd fast float %1408, %1081
  %1412 = fsub fast float %1314, %1078
  %1413 = fmul fast float %1412, %1402
  %1414 = fadd fast float %1413, %1078
  %1415 = fmul fast float %1402, %1068
  %1416 = fsub fast float %1068, %1415
  %1417 = fmul fast float %1402, %1067
  %1418 = fsub fast float %1067, %1417
  %1419 = fadd fast float %1287, %1077
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1421 = fsub fast float %1334, %1076
  %1422 = fmul fast float %1421, %1383
  %1423 = fadd fast float %1422, %1076
  %1424 = fsub fast float %1320, %1075
  %1425 = fmul fast float %1424, %1383
  %1426 = fadd fast float %1425, %1075
  %1427 = call float @dx.op.dot3.f32(i32 55, float %1341, float %1342, float %1343, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.CBufRet.f32 %1428, 1
  %1431 = fmul fast float %1430, %1427
  %1432 = fadd fast float %1431, %1429
  %1433 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1434 = bitcast float %1128 to i32
  %1435 = and i32 %1434, 65535
  %1436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1435)  ; LegacyF16ToF32(value)
  %1437 = lshr i32 %1434, 16
  %1438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1437)  ; LegacyF16ToF32(value)
  %1439 = fcmp fast oge float %1436, 0.000000e+00
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 0
  %1442 = select i1 %1439, float %1436, float %1441
  %1443 = fadd fast float %1442, %1438
  %1444 = fsub fast float %1433, %1066
  %1445 = fmul fast float %1444, %1287
  %1446 = fadd fast float %1445, %1066
  %1447 = fmul fast float %1443, %1287
  %1448 = call float @dx.op.binary.f32(i32 35, float %1065, float %1447)  ; FMax(a,b)
  %1449 = call float @dx.op.binary.f32(i32 35, float %1064, float %1287)  ; FMax(a,b)
  %1450 = and i32 %1140, 16
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1474, label %1452

; <label>:1452                                    ; preds = %1390
  %1453 = bitcast float %1134 to i32
  %1454 = add i32 %1131, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1454, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1455, %dx.types.Handle %1300, float %1228, float %1231, float undef, float undef, i32 0, i32 0, i32 undef, float %1233, float %1235, float undef, float %1237, float %1239, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.ResRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.ResRet.f32 %1456, 2
  %1460 = and i32 %1453, 65535
  %1461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1460)  ; LegacyF16ToF32(value)
  %1462 = fmul fast float %1457, %1125
  %1463 = fmul fast float %1458, %1126
  %1464 = fmul fast float %1459, %1127
  %1465 = and i32 %1140, 16384
  %1466 = icmp ne i32 %1465, 0
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1469 = select i1 %1466, float %1468, float 1.000000e+00
  %1470 = fmul fast float %1469, %1461
  %1471 = fmul fast float %1462, %1470
  %1472 = fmul fast float %1463, %1470
  %1473 = fmul fast float %1464, %1470
  br label %1474

; <label>:1474                                    ; preds = %1452, %1390
  %1475 = phi float [ %1471, %1452 ], [ 0.000000e+00, %1390 ]
  %1476 = phi float [ %1472, %1452 ], [ 0.000000e+00, %1390 ]
  %1477 = phi float [ %1473, %1452 ], [ 0.000000e+00, %1390 ]
  %1478 = fsub fast float %1475, %1069
  %1479 = fsub fast float %1476, %1070
  %1480 = fsub fast float %1477, %1071
  %1481 = fmul fast float %1478, %1287
  %1482 = fmul fast float %1479, %1287
  %1483 = fmul fast float %1480, %1287
  %1484 = fadd fast float %1481, %1069
  %1485 = fadd fast float %1482, %1070
  %1486 = fadd fast float %1483, %1071
  br label %1189

; <label>:1487                                    ; preds = %1189
  br label %1488

; <label>:1488                                    ; preds = %1487, %965
  %1489 = phi float [ 0.000000e+00, %965 ], [ %1190, %1487 ]
  %1490 = phi float [ %975, %965 ], [ %1191, %1487 ]
  %1491 = phi float [ %980, %965 ], [ %1192, %1487 ]
  %1492 = phi float [ %978, %965 ], [ %1193, %1487 ]
  %1493 = phi float [ 0.000000e+00, %965 ], [ %1194, %1487 ]
  %1494 = phi float [ 0.000000e+00, %965 ], [ %1195, %1487 ]
  %1495 = phi float [ %971, %965 ], [ %1196, %1487 ]
  %1496 = phi float [ %972, %965 ], [ %1197, %1487 ]
  %1497 = phi float [ %973, %965 ], [ %1198, %1487 ]
  %1498 = phi float [ %1006, %965 ], [ %1199, %1487 ]
  %1499 = phi float [ %1007, %965 ], [ %1200, %1487 ]
  %1500 = phi float [ %1008, %965 ], [ %1201, %1487 ]
  %1501 = phi float [ %977, %965 ], [ %1202, %1487 ]
  %1502 = phi float [ %976, %965 ], [ %1203, %1487 ]
  %1503 = phi float [ 0.000000e+00, %965 ], [ %1204, %1487 ]
  %1504 = phi float [ %974, %965 ], [ %1205, %1487 ]
  %1505 = phi float [ %968, %965 ], [ %1206, %1487 ]
  %1506 = phi float [ %969, %965 ], [ %1207, %1487 ]
  %1507 = phi float [ %970, %965 ], [ %1208, %1487 ]
  %1508 = call float @dx.op.dot3.f32(i32 55, float %1498, float %1499, float %1500, float %1498, float %1499, float %1500)  ; Dot3(ax,ay,az,bx,by,bz)
  %1509 = call float @dx.op.unary.f32(i32 25, float %1508)  ; Rsqrt(value)
  %1510 = fmul fast float %1509, %1498
  %1511 = fmul fast float %1509, %1499
  %1512 = fmul fast float %1509, %1500
  %1513 = fadd fast float %1503, %975
  %1514 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1515 = call float @dx.op.dot3.f32(i32 55, float %1510, float %1511, float %1512, float %1510, float %1511, float %1512)  ; Dot3(ax,ay,az,bx,by,bz)
  %1516 = call float @dx.op.unary.f32(i32 25, float %1515)  ; Rsqrt(value)
  %1517 = fmul fast float %1516, %1510
  %1518 = fmul fast float %1516, %1511
  %1519 = fmul fast float %1516, %1512
  %1520 = fadd fast float %1504, 0xBFB99999A0000000
  %1521 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1522 = fmul fast float %1521, 0x3FF1C71C80000000
  %1523 = call float @dx.op.binary.f32(i32 36, float %1504, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1524 = fsub fast float 1.000000e+00, %1522
  %1525 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  %1526 = fmul fast float %1525, %1505
  %1527 = fmul fast float %1525, %1506
  %1528 = fmul fast float %1525, %1507
  %1529 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1530 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1531 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1532 = fmul fast float %1522, %1505
  %1533 = fmul fast float %1522, %1506
  %1534 = fmul fast float %1522, %1507
  %1535 = fadd fast float %1532, %1523
  %1536 = fadd fast float %1533, %1523
  %1537 = fadd fast float %1534, %1523
  %1538 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  %1539 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1540 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  %1541 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.i32 %1542, 3
  %1544 = and i32 %1543, 8
  %1545 = icmp ne i32 %1544, 0
  %1546 = call float @dx.op.binary.f32(i32 35, float %1529, float %1505)  ; FMax(a,b)
  %1547 = call float @dx.op.binary.f32(i32 35, float %1530, float %1505)  ; FMax(a,b)
  %1548 = call float @dx.op.binary.f32(i32 35, float %1531, float %1505)  ; FMax(a,b)
  %1549 = call float @dx.op.dot3.f32(i32 55, float %1529, float %1530, float %1531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1550 = select i1 %247, float %1505, float %1529
  %1551 = select i1 %247, float %1549, float %1530
  %1552 = select i1 %247, float 1.000000e+00, float %1531
  %1553 = select i1 %1545, float %1546, float %1550
  %1554 = select i1 %1545, float %1547, float %1551
  %1555 = select i1 %1545, float %1548, float %1552
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1559 = extractvalue %dx.types.CBufRet.f32 %1556, 2
  %1560 = fadd fast float %1557, %156
  %1561 = fadd fast float %1558, %157
  %1562 = fadd fast float %1559, %158
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 0
  %1565 = extractvalue %dx.types.CBufRet.f32 %1563, 1
  %1566 = fsub fast float %1560, %1564
  %1567 = fsub fast float %1561, %1565
  %1568 = fmul fast float %1566, %1566
  %1569 = fmul fast float %1567, %1567
  %1570 = fadd fast float %1568, %1569
  %1571 = call float @dx.op.unary.f32(i32 24, float %1570)  ; Sqrt(value)
  %1572 = extractvalue %dx.types.CBufRet.f32 %1563, 2
  %1573 = fcmp fast olt float %1571, %1572
  br i1 %1573, label %1574, label %1641

; <label>:1574                                    ; preds = %1488
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 0
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1581 = extractvalue %dx.types.CBufRet.f32 %1575, 1
  %1582 = extractvalue %dx.types.CBufRet.f32 %1577, 1
  %1583 = extractvalue %dx.types.CBufRet.f32 %1579, 1
  %1584 = extractvalue %dx.types.CBufRet.f32 %1575, 3
  %1585 = extractvalue %dx.types.CBufRet.f32 %1577, 3
  %1586 = extractvalue %dx.types.CBufRet.f32 %1579, 3
  %1587 = fadd fast float %1584, %1560
  %1588 = fadd fast float %1585, %1561
  %1589 = fadd fast float %1586, %1562
  %1590 = fmul fast float %1587, %1576
  %1591 = call float @dx.op.tertiary.f32(i32 46, float %1588, float %1578, float %1590)  ; FMad(a,b,c)
  %1592 = call float @dx.op.tertiary.f32(i32 46, float %1589, float %1580, float %1591)  ; FMad(a,b,c)
  %1593 = fmul fast float %1587, %1581
  %1594 = call float @dx.op.tertiary.f32(i32 46, float %1588, float %1582, float %1593)  ; FMad(a,b,c)
  %1595 = call float @dx.op.tertiary.f32(i32 46, float %1589, float %1583, float %1594)  ; FMad(a,b,c)
  %1596 = fsub fast float %1592, %1584
  %1597 = fsub fast float %1595, %1585
  %1598 = fsub fast float %1596, %1564
  %1599 = fadd fast float %1598, %1572
  %1600 = fsub fast float %1597, %1565
  %1601 = fadd fast float %1600, %1572
  %1602 = extractvalue %dx.types.CBufRet.f32 %1563, 3
  %1603 = fmul fast float %1599, %1602
  %1604 = fmul fast float %1601, %1602
  %1605 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  %1606 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1607 = fsub fast float 1.000000e+00, %1605
  %1608 = fsub fast float 1.000000e+00, %1606
  %1609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1607, float %1608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1610 = extractvalue %dx.types.ResRet.f32 %1609, 0
  %1611 = fcmp fast ugt float %1610, 0.000000e+00
  br i1 %1611, label %1612, label %1915

; <label>:1612                                    ; preds = %1574
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 2
  %1615 = fmul fast float %1614, %1610
  %1616 = extractvalue %dx.types.CBufRet.f32 %1613, 3
  %1617 = fadd fast float %1616, %1615
  %1618 = extractvalue %dx.types.CBufRet.f32 %1579, 2
  %1619 = fadd fast float %1617, %1586
  %1620 = fmul fast float %1592, %1580
  %1621 = call float @dx.op.tertiary.f32(i32 46, float %1595, float %1583, float %1620)  ; FMad(a,b,c)
  %1622 = call float @dx.op.tertiary.f32(i32 46, float %1619, float %1618, float %1621)  ; FMad(a,b,c)
  %1623 = fsub fast float %1622, %1586
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1626 = fsub fast float %1623, %1625
  %1627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1607, float %1608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1628 = extractvalue %dx.types.ResRet.f32 %1627, 0
  %1629 = extractvalue %dx.types.ResRet.f32 %1627, 1
  %1630 = extractvalue %dx.types.ResRet.f32 %1627, 2
  %1631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1607, float %1608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1632 = extractvalue %dx.types.ResRet.f32 %1631, 0
  %1633 = extractvalue %dx.types.ResRet.f32 %1631, 1
  %1634 = extractvalue %dx.types.ResRet.f32 %1631, 2
  %1635 = fadd fast float %1632, %1628
  %1636 = fmul fast float %1635, 0x3F847AE140000000
  %1637 = fadd fast float %1633, %1629
  %1638 = fmul fast float %1637, 0x3F847AE140000000
  %1639 = fadd fast float %1634, %1630
  %1640 = fmul fast float %1639, 0x3F847AE140000000
  br label %1915

; <label>:1641                                    ; preds = %1488
  %1642 = and i32 %223, 1
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1915, label %1644

; <label>:1644                                    ; preds = %1641
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 0
  %1651 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1652 = extractvalue %dx.types.CBufRet.f32 %1647, 1
  %1653 = extractvalue %dx.types.CBufRet.f32 %1649, 1
  %1654 = extractvalue %dx.types.CBufRet.f32 %1645, 3
  %1655 = extractvalue %dx.types.CBufRet.f32 %1647, 3
  %1656 = extractvalue %dx.types.CBufRet.f32 %1649, 3
  %1657 = fadd fast float %1654, %1560
  %1658 = fadd fast float %1655, %1561
  %1659 = fadd fast float %1656, %1562
  %1660 = fmul fast float %1657, %1646
  %1661 = call float @dx.op.tertiary.f32(i32 46, float %1658, float %1648, float %1660)  ; FMad(a,b,c)
  %1662 = call float @dx.op.tertiary.f32(i32 46, float %1659, float %1650, float %1661)  ; FMad(a,b,c)
  %1663 = fmul fast float %1657, %1651
  %1664 = call float @dx.op.tertiary.f32(i32 46, float %1658, float %1652, float %1663)  ; FMad(a,b,c)
  %1665 = call float @dx.op.tertiary.f32(i32 46, float %1659, float %1653, float %1664)  ; FMad(a,b,c)
  %1666 = fsub fast float %1662, %1654
  %1667 = fsub fast float %1665, %1655
  %1668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.f32 %1668, 0
  %1670 = extractvalue %dx.types.CBufRet.f32 %1668, 1
  %1671 = extractvalue %dx.types.CBufRet.f32 %1668, 2
  %1672 = extractvalue %dx.types.CBufRet.f32 %1668, 3
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 3
  %1675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.i32 %1675, 0
  %1677 = extractvalue %dx.types.CBufRet.i32 %1675, 1
  %1678 = udiv i32 %1677, %1676
  %1679 = fsub fast float %1666, %1669
  %1680 = fsub fast float %1667, %1670
  %1681 = call float @dx.op.binary.f32(i32 35, float %1679, float 0.000000e+00)  ; FMax(a,b)
  %1682 = call float @dx.op.binary.f32(i32 35, float %1680, float 0.000000e+00)  ; FMax(a,b)
  %1683 = call float @dx.op.binary.f32(i32 36, float %1681, float %1671)  ; FMin(a,b)
  %1684 = call float @dx.op.binary.f32(i32 36, float %1682, float %1672)  ; FMin(a,b)
  %1685 = add i32 %1676, -1
  %1686 = add i32 %1678, -1
  %1687 = fmul fast float %1683, %1674
  %1688 = fmul fast float %1684, %1674
  %1689 = fptoui float %1687 to i32
  %1690 = fptoui float %1688 to i32
  %1691 = call i32 @dx.op.binary.i32(i32 40, i32 %1689, i32 %1685)  ; UMin(a,b)
  %1692 = call i32 @dx.op.binary.i32(i32 40, i32 %1690, i32 %1686)  ; UMin(a,b)
  %1693 = mul i32 %1692, %1676
  %1694 = add i32 %1693, %1691
  %1695 = shl i32 %1694, 2
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = icmp eq i32 %1697, -1
  br i1 %1698, label %1915, label %1699

; <label>:1699                                    ; preds = %1644
  %1700 = mul i32 %1697, 148
  %1701 = add i32 %1700, 4
  %1702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1701, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.f32 %1702, 0
  %1704 = add i32 %1700, 8
  %1705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.f32 %1705, 0
  %1707 = add i32 %1700, 36
  %1708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = add i32 %1700, 60
  %1711 = add i32 %1700, 92
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = add i32 %1700, 116
  %1715 = fsub fast float %1666, %1703
  %1716 = fsub fast float %1667, %1706
  %1717 = fmul fast float %1674, %1715
  %1718 = fmul fast float %1674, %1716
  %1719 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1720 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1721 = fsub fast float 1.000000e+00, %1720
  %1722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.f32 %1722, 2
  %1724 = call float @dx.op.unary.f32(i32 83, float %1719)  ; DerivCoarseX(value)
  %1725 = call float @dx.op.unary.f32(i32 83, float %1721)  ; DerivCoarseX(value)
  %1726 = call float @dx.op.unary.f32(i32 84, float %1719)  ; DerivCoarseY(value)
  %1727 = call float @dx.op.unary.f32(i32 84, float %1721)  ; DerivCoarseY(value)
  %1728 = fmul fast float %1724, %1723
  %1729 = fmul fast float %1725, %1723
  %1730 = fmul fast float %1726, %1723
  %1731 = fmul fast float %1727, %1723
  %1732 = call float @dx.op.dot2.f32(i32 54, float %1730, float %1731, float %1730, float %1731)  ; Dot2(ax,ay,bx,by)
  %1733 = call float @dx.op.dot2.f32(i32 54, float %1728, float %1729, float %1728, float %1729)  ; Dot2(ax,ay,bx,by)
  %1734 = call float @dx.op.binary.f32(i32 35, float %1733, float %1732)  ; FMax(a,b)
  %1735 = call float @dx.op.unary.f32(i32 23, float %1734)  ; Log(value)
  %1736 = fmul fast float %1735, 5.000000e-01
  %1737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1738 = extractvalue %dx.types.CBufRet.f32 %1737, 1
  %1739 = fadd fast float %1738, %1736
  %1740 = call float @dx.op.binary.f32(i32 35, float %1739, float 0.000000e+00)  ; FMax(a,b)
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 3
  %1743 = fadd fast float %1742, %1740
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1746 = fadd fast float %1743, %1745
  %1747 = add i32 %1713, 0
  %1748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1747, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1749 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1748, i32 0)  ; GetDimensions(handle,mipLevel)
  %1750 = extractvalue %dx.types.Dimensions %1749, 0
  %1751 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1750)  ; FirstbitLo(value)
  %1752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.i32 %1752, 1
  %1754 = sub nsw i32 %1753, %1751
  %1755 = sitofp i32 %1754 to float
  %1756 = fsub fast float %1746, %1755
  %1757 = call float @dx.op.binary.f32(i32 35, float %1756, float 0.000000e+00)  ; FMax(a,b)
  %1758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1748, %dx.types.Handle %62, float %1719, float %1721, float %1709, float undef, i32 0, i32 0, i32 undef, float %1757)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1759 = extractvalue %dx.types.ResRet.f32 %1758, 0
  %1760 = fcmp ule float %1759, 0x3FE0101020000000
  %1761 = extractvalue %dx.types.CBufRet.i32 %1752, 0
  %1762 = and i32 %1761, 128
  %1763 = icmp ne i32 %1762, 0
  %1764 = and i1 %1760, %1763
  br i1 %1764, label %1915, label %1765

; <label>:1765                                    ; preds = %1699
  %1766 = add i32 %1700, 20
  %1767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.f32 %1767, 0
  %1769 = add i32 %1700, 24
  %1770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = add i32 %1700, 40
  %1773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.f32 %1773, 0
  %1775 = add i32 %1700, 96
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 2
  %1780 = fmul fast float %1779, %1719
  %1781 = fmul fast float %1779, %1721
  %1782 = extractvalue %dx.types.CBufRet.f32 %1778, 3
  %1783 = fadd fast float %1780, %1782
  %1784 = fadd fast float %1781, %1782
  %1785 = add i32 %1777, 0
  %1786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1785, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1787 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1786, i32 0)  ; GetDimensions(handle,mipLevel)
  %1788 = extractvalue %dx.types.Dimensions %1787, 0
  %1789 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1788)  ; FirstbitLo(value)
  %1790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.i32 %1790, 1
  %1792 = sub nsw i32 %1791, %1789
  %1793 = sitofp i32 %1792 to float
  %1794 = fsub fast float %1743, %1793
  %1795 = call float @dx.op.binary.f32(i32 35, float %1794, float 0.000000e+00)  ; FMax(a,b)
  %1796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1786, %dx.types.Handle %62, float %1783, float %1784, float %1774, float undef, i32 0, i32 0, i32 undef, float %1795)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = fmul fast float %1797, %1768
  %1799 = fadd fast float %1798, %1771
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 0
  %1802 = extractvalue %dx.types.CBufRet.f32 %1800, 1
  %1803 = extractvalue %dx.types.CBufRet.f32 %1800, 2
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 3
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 3
  %1808 = extractvalue %dx.types.CBufRet.f32 %1800, 3
  %1809 = fadd fast float %1805, %1666
  %1810 = fadd fast float %1807, %1667
  %1811 = fadd fast float %1799, %1808
  %1812 = fmul fast float %1809, %1801
  %1813 = call float @dx.op.tertiary.f32(i32 46, float %1810, float %1802, float %1812)  ; FMad(a,b,c)
  %1814 = call float @dx.op.tertiary.f32(i32 46, float %1811, float %1803, float %1813)  ; FMad(a,b,c)
  %1815 = fsub fast float %1814, %1808
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 2
  %1818 = fsub fast float %1815, %1817
  %1819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.i32 %1819, 0
  %1821 = call i32 @dx.op.binary.i32(i32 40, i32 %1697, i32 %1820)  ; UMin(a,b)
  %1822 = mul i32 %1821, 36
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = add i32 %1822, 4
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1828 = fmul fast float %1827, %1719
  %1829 = fmul fast float %1827, %1721
  %1830 = extractvalue %dx.types.CBufRet.f32 %1826, 1
  %1831 = fadd fast float %1828, %1830
  %1832 = fadd fast float %1829, %1830
  %1833 = icmp eq i32 %1824, 0
  br i1 %1833, label %1902, label %1834

; <label>:1834                                    ; preds = %1765
  br label %1835

; <label>:1835                                    ; preds = %1892, %1834
  %1836 = phi float [ %1893, %1892 ], [ 0.000000e+00, %1834 ]
  %1837 = phi float [ %1894, %1892 ], [ 0.000000e+00, %1834 ]
  %1838 = phi float [ %1895, %1892 ], [ 0.000000e+00, %1834 ]
  %1839 = phi float [ %1896, %1892 ], [ 0.000000e+00, %1834 ]
  %1840 = phi float [ %1897, %1892 ], [ 0.000000e+00, %1834 ]
  %1841 = phi float [ %1898, %1892 ], [ 0.000000e+00, %1834 ]
  %1842 = phi i32 [ %1899, %1892 ], [ 0, %1834 ]
  %1843 = shl i32 %1842, 2
  %1844 = add i32 %1710, %1843
  %1845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = add i32 %1714, %1843
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = add i32 %1849, 0
  %1851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1850, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1852 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1851, i32 0)  ; GetDimensions(handle,mipLevel)
  %1853 = extractvalue %dx.types.Dimensions %1852, 0
  %1854 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1853)  ; FirstbitLo(value)
  %1855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.i32 %1855, 1
  %1857 = sub nsw i32 %1856, %1854
  %1858 = sitofp i32 %1857 to float
  %1859 = fsub fast float %1743, %1858
  %1860 = call float @dx.op.binary.f32(i32 35, float %1859, float 0.000000e+00)  ; FMax(a,b)
  %1861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1851, %dx.types.Handle %62, float %1831, float %1832, float %1846, float undef, i32 0, i32 0, i32 undef, float %1860)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1862 = extractvalue %dx.types.ResRet.f32 %1861, 0
  %1863 = fcmp fast ogt float %1862, 0.000000e+00
  br i1 %1863, label %1864, label %1892

; <label>:1864                                    ; preds = %1835
  %1865 = add i32 %1825, %1843
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = and i32 %1867, 32767
  %1869 = mul nuw nsw i32 %1868, 928
  %1870 = add nuw nsw i32 %1869, 48
  %1871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = add nuw nsw i32 %1869, 60
  %1876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = fmul fast float %1872, %1862
  %1881 = fmul fast float %1873, %1862
  %1882 = fmul fast float %1874, %1862
  %1883 = fadd fast float %1880, %1836
  %1884 = fadd fast float %1881, %1837
  %1885 = fadd fast float %1882, %1838
  %1886 = fmul fast float %1877, %1862
  %1887 = fmul fast float %1878, %1862
  %1888 = fmul fast float %1879, %1862
  %1889 = fadd fast float %1886, %1839
  %1890 = fadd fast float %1887, %1840
  %1891 = fadd fast float %1888, %1841
  br label %1892

; <label>:1892                                    ; preds = %1864, %1835
  %1893 = phi float [ %1883, %1864 ], [ %1836, %1835 ]
  %1894 = phi float [ %1884, %1864 ], [ %1837, %1835 ]
  %1895 = phi float [ %1885, %1864 ], [ %1838, %1835 ]
  %1896 = phi float [ %1889, %1864 ], [ %1839, %1835 ]
  %1897 = phi float [ %1890, %1864 ], [ %1840, %1835 ]
  %1898 = phi float [ %1891, %1864 ], [ %1841, %1835 ]
  %1899 = add nuw i32 %1842, 1
  %1900 = icmp eq i32 %1899, %1824
  br i1 %1900, label %1901, label %1835

; <label>:1901                                    ; preds = %1892
  br label %1902

; <label>:1902                                    ; preds = %1901, %1765
  %1903 = phi float [ 0.000000e+00, %1765 ], [ %1893, %1901 ]
  %1904 = phi float [ 0.000000e+00, %1765 ], [ %1894, %1901 ]
  %1905 = phi float [ 0.000000e+00, %1765 ], [ %1895, %1901 ]
  %1906 = phi float [ 0.000000e+00, %1765 ], [ %1896, %1901 ]
  %1907 = phi float [ 0.000000e+00, %1765 ], [ %1897, %1901 ]
  %1908 = phi float [ 0.000000e+00, %1765 ], [ %1898, %1901 ]
  %1909 = fadd fast float %1906, %1903
  %1910 = fmul fast float %1909, 0x3F847AE140000000
  %1911 = fadd fast float %1907, %1904
  %1912 = fmul fast float %1911, 0x3F847AE140000000
  %1913 = fadd fast float %1908, %1905
  %1914 = fmul fast float %1913, 0x3F847AE140000000
  br label %1915

; <label>:1915                                    ; preds = %1902, %1699, %1644, %1641, %1612, %1574
  %1916 = phi float [ %1626, %1612 ], [ -1.310720e+05, %1574 ], [ %1818, %1902 ], [ -1.310720e+05, %1644 ], [ -1.310720e+05, %1699 ], [ -1.310720e+05, %1641 ]
  %1917 = phi float [ %1636, %1612 ], [ 0.000000e+00, %1574 ], [ %1910, %1902 ], [ 0.000000e+00, %1644 ], [ 0.000000e+00, %1699 ], [ 0.000000e+00, %1641 ]
  %1918 = phi float [ %1638, %1612 ], [ 0.000000e+00, %1574 ], [ %1912, %1902 ], [ 0.000000e+00, %1644 ], [ 0.000000e+00, %1699 ], [ 0.000000e+00, %1641 ]
  %1919 = phi float [ %1640, %1612 ], [ 0.000000e+00, %1574 ], [ %1914, %1902 ], [ 0.000000e+00, %1644 ], [ 0.000000e+00, %1699 ], [ 0.000000e+00, %1641 ]
  %1920 = phi i1 [ true, %1612 ], [ false, %1574 ], [ true, %1902 ], [ false, %1644 ], [ false, %1699 ], [ false, %1641 ]
  %1921 = and i32 %223, 3
  %1922 = icmp eq i32 %1921, 1
  %1923 = select i1 %1922, float 1.000000e+00, float 0.000000e+00
  %1924 = fsub fast float %1916, %158
  %1925 = call float @dx.op.unary.f32(i32 7, float %1924)  ; Saturate(value)
  %1926 = select i1 %1920, float %1925, float 1.000000e+00
  %1927 = fmul fast float %1926, %1923
  %1928 = icmp eq i32 %1921, 3
  %1929 = select i1 %1928, float 1.000000e+00, float %1927
  %1930 = call float @dx.op.binary.f32(i32 35, float %1489, float %1929)  ; FMax(a,b)
  %1931 = call float @dx.op.unary.f32(i32 7, float %1930)  ; Saturate(value)
  %1932 = fcmp fast une float %1931, 0.000000e+00
  %1933 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %1934 = call float @dx.op.unary.f32(i32 25, float %1933)  ; Rsqrt(value)
  br i1 %1932, label %1942, label %1935

; <label>:1935                                    ; preds = %1915
  %1936 = fmul fast float %1934, %156
  %1937 = fmul fast float %1934, %157
  %1938 = fmul fast float %1934, %158
  %1939 = fsub fast float -0.000000e+00, %1936
  %1940 = fsub fast float -0.000000e+00, %1937
  %1941 = fsub fast float -0.000000e+00, %1938
  br label %2110

; <label>:1942                                    ; preds = %1915
  %1943 = fmul fast float %156, %1934
  %1944 = fsub fast float -0.000000e+00, %1943
  %1945 = fmul fast float %157, %1934
  %1946 = fsub fast float -0.000000e+00, %1945
  %1947 = fmul fast float %158, %1934
  %1948 = fsub fast float -0.000000e+00, %1947
  %1949 = call float @dx.op.dot3.f32(i32 55, float %1944, float %1946, float %1948, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %1950 = fmul fast float %1931, 2.500000e+00
  %1951 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1952 = fmul fast float %1931, 0x4013FFFFE0000000
  %1953 = fadd fast float %1952, 0xBFFFFFFFE0000000
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1955 = fmul fast float %1931, 0x4004000020000000
  %1956 = fadd fast float %1955, 0xBFF8000040000000
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  %1959 = fmul fast float %1520, 1.000000e+01
  %1960 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1961 = fmul fast float %1960, 2.000000e+00
  %1962 = fsub fast float 3.000000e+00, %1961
  %1963 = fmul fast float %1960, %1960
  %1964 = fmul fast float %1963, %1962
  %1965 = fsub fast float 1.000000e+00, %1964
  %1966 = fsub fast float 0x3FE3333340000000, %1541
  %1967 = fmul fast float %1966, 0x400AAAAAA0000000
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fmul fast float %1965, %1968
  %1970 = fmul fast float %1553, 0x3FEA2B8620000000
  %1971 = fmul fast float %1554, 0x3FEA2B8620000000
  %1972 = fmul fast float %1555, 0x3FEA2B8620000000
  %1973 = fadd fast float %1970, 0x3FC81DFBA0000000
  %1974 = fmul fast float %1973, %1553
  %1975 = fadd fast float %1974, 0x3F910E6020000000
  %1976 = fadd fast float %1971, 0x3FC81DFBA0000000
  %1977 = fmul fast float %1976, %1554
  %1978 = fadd fast float %1977, 0x3F910E6020000000
  %1979 = fadd fast float %1972, 0x3FC81DFBA0000000
  %1980 = fmul fast float %1979, %1555
  %1981 = fadd fast float %1980, 0x3F910E6020000000
  %1982 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1983 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1984 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1985 = fsub fast float %1982, %1553
  %1986 = fsub fast float %1983, %1554
  %1987 = fsub fast float %1984, %1555
  %1988 = fmul fast float %1985, %1958
  %1989 = fmul fast float %1988, %1969
  %1990 = fmul fast float %1986, %1958
  %1991 = fmul fast float %1990, %1969
  %1992 = fmul fast float %1987, %1958
  %1993 = fmul fast float %1992, %1969
  %1994 = fadd fast float %1989, %1553
  %1995 = fadd fast float %1991, %1554
  %1996 = fadd fast float %1993, %1555
  %1997 = fmul fast float %1501, %1501
  %1998 = fmul fast float %1997, %1997
  %1999 = fadd fast float %1954, 1.000000e+00
  %2000 = fsub fast float %1999, %1969
  %2001 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2002 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2004 = fsub fast float 1.000000e+00, %1998
  %2005 = call float @dx.op.binary.f32(i32 36, float %2001, float %2004)  ; FMin(a,b)
  %2006 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %2007 = call float @dx.op.binary.f32(i32 35, float %2005, float %2006)  ; FMax(a,b)
  %2008 = fadd fast float %2003, 0xBFE4CCCCC0000000
  %2009 = fmul fast float %2008, 0x4006DB6DA0000000
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2011 = fmul fast float %2010, 2.000000e+00
  %2012 = fsub fast float 3.000000e+00, %2011
  %2013 = bitcast float %1538 to i32
  %2014 = ashr i32 %2013, 1
  %2015 = add nsw i32 %2014, 532487669
  %2016 = bitcast i32 %2015 to float
  %2017 = fsub fast float 1.000000e+00, %2016
  %2018 = bitcast float %2017 to i32
  %2019 = sub nsw i32 2129859010, %2018
  %2020 = bitcast i32 %2019 to float
  %2021 = fmul fast float %2020, 2.000000e+00
  %2022 = bitcast float %1539 to i32
  %2023 = ashr i32 %2022, 1
  %2024 = add nsw i32 %2023, 532487669
  %2025 = bitcast i32 %2024 to float
  %2026 = fsub fast float 1.000000e+00, %2025
  %2027 = bitcast float %2026 to i32
  %2028 = sub nsw i32 2129859010, %2027
  %2029 = bitcast i32 %2028 to float
  %2030 = fmul fast float %2029, 2.000000e+00
  %2031 = bitcast float %1540 to i32
  %2032 = ashr i32 %2031, 1
  %2033 = add nsw i32 %2032, 532487669
  %2034 = bitcast i32 %2033 to float
  %2035 = fsub fast float 1.000000e+00, %2034
  %2036 = bitcast float %2035 to i32
  %2037 = sub nsw i32 2129859010, %2036
  %2038 = bitcast i32 %2037 to float
  %2039 = fmul fast float %2038, 2.000000e+00
  %2040 = fsub fast float 0x4002A9FBE0000000, %2021
  %2041 = fadd fast float %2021, 0x3FD54FDF00000000
  %2042 = bitcast float %2041 to i32
  %2043 = sub nsw i32 2129859010, %2042
  %2044 = bitcast i32 %2043 to float
  %2045 = fmul fast float %2044, %2040
  %2046 = fmul fast float %2045, %2045
  %2047 = fsub fast float 0x4002A9FBE0000000, %2030
  %2048 = fadd fast float %2030, 0x3FD54FDF00000000
  %2049 = bitcast float %2048 to i32
  %2050 = sub nsw i32 2129859010, %2049
  %2051 = bitcast i32 %2050 to float
  %2052 = fmul fast float %2051, %2047
  %2053 = fmul fast float %2052, %2052
  %2054 = fsub fast float 0x4002A9FBE0000000, %2039
  %2055 = fadd fast float %2039, 0x3FD54FDF00000000
  %2056 = bitcast float %2055 to i32
  %2057 = sub nsw i32 2129859010, %2056
  %2058 = bitcast i32 %2057 to float
  %2059 = fmul fast float %2058, %2054
  %2060 = fmul fast float %2059, %2059
  %2061 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2046)  ; FMax(a,b)
  %2062 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2053)  ; FMax(a,b)
  %2063 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2060)  ; FMax(a,b)
  %2064 = fsub fast float 1.000000e+00, %1949
  %2065 = fadd fast float %2064, %1965
  %2066 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2067 = fsub fast float 1.000000e+00, %1929
  %2068 = fmul fast float %2007, %2067
  %2069 = fmul fast float %2010, %2010
  %2070 = fmul fast float %2069, %2068
  %2071 = fmul fast float %2070, %2012
  %2072 = fmul fast float %2067, 0xBFE99999A0000000
  %2073 = fmul fast float %2072, %1958
  %2074 = fmul fast float %2073, %1969
  %2075 = fadd fast float %2074, 1.000000e+00
  %2076 = fadd fast float %1541, -1.000000e+00
  %2077 = fmul fast float %2075, %2076
  %2078 = fadd fast float %2077, 1.000000e+00
  %2079 = fsub fast float %2061, %1538
  %2080 = fsub fast float %2062, %1539
  %2081 = fsub fast float %2063, %1540
  %2082 = fmul fast float %2071, %2079
  %2083 = fmul fast float %2071, %2080
  %2084 = fmul fast float %2071, %2081
  %2085 = fadd fast float %2082, %1538
  %2086 = fadd fast float %2083, %1539
  %2087 = fadd fast float %2084, %1540
  %2088 = fsub fast float %104, %1517
  %2089 = fsub fast float %105, %1518
  %2090 = fsub fast float %106, %1519
  %2091 = fmul fast float %2071, %2088
  %2092 = fmul fast float %2071, %2089
  %2093 = fmul fast float %2071, %2090
  %2094 = fadd fast float %2091, %1517
  %2095 = fadd fast float %2092, %1518
  %2096 = fadd fast float %2093, %1519
  %2097 = fmul fast float %2071, %2066
  %2098 = call float @dx.op.unary.f32(i32 7, float %2078)  ; Saturate(value)
  %2099 = fsub fast float 1.000000e+00, %2098
  %2100 = fmul fast float %2097, %2099
  %2101 = fadd fast float %2100, %2098
  %2102 = fsub fast float 1.000000e+00, %1501
  %2103 = fmul fast float %2071, %2102
  %2104 = fadd fast float %2103, %1501
  %2105 = call float @dx.op.dot3.f32(i32 55, float %2094, float %2095, float %2096, float %2094, float %2095, float %2096)  ; Dot3(ax,ay,az,bx,by,bz)
  %2106 = call float @dx.op.unary.f32(i32 25, float %2105)  ; Rsqrt(value)
  %2107 = fmul fast float %2094, %2106
  %2108 = fmul fast float %2095, %2106
  %2109 = fmul fast float %2096, %2106
  br label %2110

; <label>:2110                                    ; preds = %1942, %1935
  %2111 = phi float [ %1941, %1935 ], [ %1948, %1942 ]
  %2112 = phi float [ %1940, %1935 ], [ %1946, %1942 ]
  %2113 = phi float [ %1939, %1935 ], [ %1944, %1942 ]
  %2114 = phi float [ %1938, %1935 ], [ %1947, %1942 ]
  %2115 = phi float [ %1937, %1935 ], [ %1945, %1942 ]
  %2116 = phi float [ %1936, %1935 ], [ %1943, %1942 ]
  %2117 = phi float [ %1538, %1935 ], [ %2085, %1942 ]
  %2118 = phi float [ %1539, %1935 ], [ %2086, %1942 ]
  %2119 = phi float [ %1540, %1935 ], [ %2087, %1942 ]
  %2120 = phi float [ %1517, %1935 ], [ %2107, %1942 ]
  %2121 = phi float [ %1518, %1935 ], [ %2108, %1942 ]
  %2122 = phi float [ %1519, %1935 ], [ %2109, %1942 ]
  %2123 = phi float [ %1553, %1935 ], [ %1994, %1942 ]
  %2124 = phi float [ %1554, %1935 ], [ %1995, %1942 ]
  %2125 = phi float [ %1555, %1935 ], [ %1996, %1942 ]
  %2126 = phi float [ %1541, %1935 ], [ %2101, %1942 ]
  %2127 = phi float [ %1501, %1935 ], [ %2104, %1942 ]
  %2128 = fsub fast float -0.000000e+00, %158
  %2129 = select i1 %247, float 0.000000e+00, float %2119
  %2130 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2121, float %2122, float %2113, float %2112, float %2111)  ; Dot3(ax,ay,az,bx,by,bz)
  %2131 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2132 = call float @dx.op.dot3.f32(i32 55, float %2116, float %2115, float %2114, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2133 = fmul fast float %2132, 2.000000e+00
  %2134 = fmul fast float %2133, %2120
  %2135 = fmul fast float %2133, %2121
  %2136 = fmul fast float %2133, %2122
  %2137 = fsub fast float %2116, %2134
  %2138 = fsub fast float %2115, %2135
  %2139 = fsub fast float %2114, %2136
  %2140 = call float @dx.op.binary.f32(i32 36, float %2127, float 1.000000e+00)  ; FMin(a,b)
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = bitcast float %2141 to i32
  %2143 = ashr i32 %2142, 1
  %2144 = add nsw i32 %2143, 532487669
  %2145 = bitcast i32 %2144 to float
  %2146 = fsub fast float 1.000000e+00, %2126
  %2147 = call float @dx.op.binary.f32(i32 35, float %2146, float 0x3F847AE140000000)  ; FMax(a,b)
  %2148 = fmul fast float %2147, %2147
  %2149 = fmul fast float %2148, %2148
  %2150 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2145, float %2149, float %2150, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2152 = extractvalue %dx.types.ResRet.f32 %2151, 0
  %2153 = fsub fast float 1.000000e+00, %2127
  %2154 = bitcast float %2153 to i32
  %2155 = sub nsw i32 2129859010, %2154
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 0
  %2158 = extractvalue %dx.types.CBufRet.f32 %2156, 1
  %2159 = fadd fast float %2157, %156
  %2160 = fadd fast float %2158, %157
  %2161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2162 = extractvalue %dx.types.CBufRet.i32 %2161, 0
  %2163 = icmp eq i32 %2162, 1
  br i1 %2163, label %2164, label %2199

; <label>:2164                                    ; preds = %2110
  %2165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2166 = extractvalue %dx.types.CBufRet.f32 %2165, 0
  %2167 = extractvalue %dx.types.CBufRet.f32 %2165, 1
  %2168 = fsub fast float %2159, %2166
  %2169 = fsub fast float %2160, %2167
  %2170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2171 = extractvalue %dx.types.CBufRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.CBufRet.f32 %2170, 1
  %2173 = fmul fast float %2168, %2171
  %2174 = fmul fast float %2169, %2172
  %2175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2173, float %2174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 0
  %2177 = fcmp fast ogt float %2176, 0.000000e+00
  %2178 = extractvalue %dx.types.CBufRet.i32 %2161, 3
  %2179 = icmp ne i32 %2178, 0
  %2180 = and i1 %2177, %2179
  br i1 %2180, label %2181, label %2199, !dx.controlflow.hints !105

; <label>:2181                                    ; preds = %2164
  %2182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2182, 0
  %2184 = extractvalue %dx.types.CBufRet.f32 %2182, 1
  %2185 = fsub fast float %2159, %2183
  %2186 = fsub fast float %2160, %2184
  %2187 = fmul fast float %2185, %2185
  %2188 = fmul fast float %2186, %2186
  %2189 = fadd fast float %2187, %2188
  %2190 = uitofp i32 %2178 to float
  %2191 = fmul fast float %2190, %2190
  %2192 = fcmp fast ogt float %2189, %2191
  br i1 %2192, label %2199, label %2193

; <label>:2193                                    ; preds = %2181
  %2194 = call float @dx.op.unary.f32(i32 24, float %2189)  ; Sqrt(value)
  %2195 = fsub fast float %2190, %2194
  %2196 = fmul fast float %2195, 0x3F75555560000000
  %2197 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2198 = call float @dx.op.binary.f32(i32 36, float %2197, float %2176)  ; FMin(a,b)
  br label %2199

; <label>:2199                                    ; preds = %2193, %2181, %2164, %2110
  %2200 = phi float [ 1.000000e+00, %2110 ], [ %2198, %2193 ], [ %2176, %2164 ], [ 0.000000e+00, %2181 ]
  %2201 = fcmp fast ogt float %2200, 0.000000e+00
  br i1 %2201, label %2202, label %2301, !dx.controlflow.hints !106

; <label>:2202                                    ; preds = %2199
  %2203 = fadd fast float %187, 5.000000e-01
  %2204 = call float @dx.op.unary.f32(i32 27, float %2203)  ; Round_ni(value)
  %2205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %185, float %186, float %2204, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2206 = extractvalue %dx.types.ResRet.f32 %2205, 0
  %2207 = extractvalue %dx.types.ResRet.f32 %2205, 1
  %2208 = extractvalue %dx.types.ResRet.f32 %2205, 2
  %2209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2210 = extractvalue %dx.types.CBufRet.f32 %2209, 3
  %2211 = fmul fast float %2210, %2206
  %2212 = fmul fast float %2210, %2207
  %2213 = fmul fast float %2210, %2208
  %2214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %185, float %186, float %2204, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2215 = extractvalue %dx.types.ResRet.f32 %2214, 0
  %2216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %185, float %186, float %2204, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2217 = extractvalue %dx.types.ResRet.f32 %2216, 0
  %2218 = extractvalue %dx.types.ResRet.f32 %2216, 1
  %2219 = fmul fast float %2217, 2.000000e+00
  %2220 = fmul fast float %2218, 2.000000e+00
  %2221 = fadd fast float %2219, -1.000000e+00
  %2222 = fadd fast float %2220, -1.000000e+00
  %2223 = fadd fast float %2221, %2222
  %2224 = fmul fast float %2223, 5.000000e-01
  %2225 = fsub fast float %2221, %2222
  %2226 = fmul fast float %2225, 5.000000e-01
  %2227 = call float @dx.op.unary.f32(i32 6, float %2224)  ; FAbs(value)
  %2228 = fsub fast float 1.000000e+00, %2227
  %2229 = call float @dx.op.unary.f32(i32 6, float %2226)  ; FAbs(value)
  %2230 = fsub fast float %2228, %2229
  %2231 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2230)  ; FMax(a,b)
  %2232 = call float @dx.op.dot3.f32(i32 55, float %2224, float %2226, float %2231, float %2224, float %2226, float %2231)  ; Dot3(ax,ay,az,bx,by,bz)
  %2233 = bitcast float %2232 to i32
  %2234 = ashr i32 %2233, 1
  %2235 = sub nsw i32 1597250115, %2234
  %2236 = bitcast i32 %2235 to float
  %2237 = fmul fast float %2236, %2224
  %2238 = fmul fast float %2236, %2226
  %2239 = fmul fast float %2236, %2231
  %2240 = fsub fast float 1.000000e+00, %2215
  %2241 = fdiv fast float %2240, %2239
  %2242 = fmul fast float %2239, %104
  %2243 = fmul fast float %2239, %105
  %2244 = fmul fast float %2239, %106
  %2245 = fmul fast float %2237, %107
  %2246 = fmul fast float %2237, %108
  %2247 = fmul fast float %2237, %109
  %2248 = fadd fast float %2242, %2245
  %2249 = fadd fast float %2243, %2246
  %2250 = fadd fast float %2244, %2247
  %2251 = fmul fast float %2238, %120
  %2252 = fmul fast float %2238, %121
  %2253 = fmul fast float %2238, %122
  %2254 = fadd fast float %2248, %2251
  %2255 = fadd fast float %2249, %2252
  %2256 = fadd fast float %2250, %2253
  %2257 = call float @dx.op.dot3.f32(i32 55, float %2254, float %2255, float %2256, float %2254, float %2255, float %2256)  ; Dot3(ax,ay,az,bx,by,bz)
  %2258 = call float @dx.op.unary.f32(i32 25, float %2257)  ; Rsqrt(value)
  %2259 = fmul fast float %2254, %2258
  %2260 = fmul fast float %2255, %2258
  %2261 = fmul fast float %2256, %2258
  %2262 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2121, float %2122, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2263 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2264 = fmul fast float %2263, 5.000000e-01
  %2265 = fadd fast float %2264, 5.000000e-01
  %2266 = fmul fast float %2265, %2215
  %2267 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2121, float %2122, float %2259, float %2260, float %2261)  ; Dot3(ax,ay,az,bx,by,bz)
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2269 = fmul fast float %2268, %2241
  %2270 = fadd fast float %2266, %2269
  %2271 = fsub fast float 5.000000e-01, %2264
  %2272 = fmul fast float %2271, %2123
  %2273 = fmul fast float %2271, %2124
  %2274 = fmul fast float %2271, %2125
  %2275 = fadd fast float %2270, %2272
  %2276 = fmul fast float %2275, %2211
  %2277 = fadd fast float %2270, %2273
  %2278 = fmul fast float %2277, %2212
  %2279 = fadd fast float %2270, %2274
  %2280 = fmul fast float %2279, %2213
  %2281 = call float @dx.op.dot3.f32(i32 55, float %2137, float %2138, float %2139, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2282 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2283 = fmul fast float %2282, 5.000000e-01
  %2284 = fadd fast float %2283, 5.000000e-01
  %2285 = fmul fast float %2284, %2215
  %2286 = call float @dx.op.dot3.f32(i32 55, float %2137, float %2138, float %2139, float %2259, float %2260, float %2261)  ; Dot3(ax,ay,az,bx,by,bz)
  %2287 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  %2288 = fmul fast float %2287, %2241
  %2289 = fadd fast float %2285, %2288
  %2290 = fsub fast float 5.000000e-01, %2283
  %2291 = fmul fast float %2290, %2123
  %2292 = fmul fast float %2290, %2124
  %2293 = fmul fast float %2290, %2125
  %2294 = fadd fast float %2289, %2291
  %2295 = fmul fast float %2294, %2211
  %2296 = fadd fast float %2289, %2292
  %2297 = fmul fast float %2296, %2212
  %2298 = fadd fast float %2289, %2293
  %2299 = fmul fast float %2298, %2213
  %2300 = call float @dx.op.dot3.f32(i32 55, float %2211, float %2212, float %2213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2301

; <label>:2301                                    ; preds = %2202, %2199
  %2302 = phi float [ %2300, %2202 ], [ 0.000000e+00, %2199 ]
  %2303 = phi float [ %2295, %2202 ], [ 0.000000e+00, %2199 ]
  %2304 = phi float [ %2297, %2202 ], [ 0.000000e+00, %2199 ]
  %2305 = phi float [ %2299, %2202 ], [ 0.000000e+00, %2199 ]
  %2306 = phi float [ %2276, %2202 ], [ 0.000000e+00, %2199 ]
  %2307 = phi float [ %2278, %2202 ], [ 0.000000e+00, %2199 ]
  %2308 = phi float [ %2280, %2202 ], [ 0.000000e+00, %2199 ]
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = fcmp fast ogt float %2310, 0.000000e+00
  %2312 = and i1 %2201, %2311
  br i1 %2312, label %2313, label %2517, !dx.controlflow.hints !107

; <label>:2313                                    ; preds = %2301
  %2314 = extractvalue %dx.types.CBufRet.f32 %2156, 2
  %2315 = fadd fast float %2314, %158
  %2316 = fmul fast float %2120, 3.200000e+01
  %2317 = fmul fast float %2121, 3.200000e+01
  %2318 = fadd fast float %2159, %2316
  %2319 = fadd fast float %2160, %2317
  %2320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.f32 %2320, 0
  %2322 = extractvalue %dx.types.CBufRet.f32 %2320, 1
  %2323 = fsub fast float %2318, %2321
  %2324 = fsub fast float %2319, %2322
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.CBufRet.f32 %2325, 1
  %2328 = fmul fast float %2323, %2326
  %2329 = fmul fast float %2324, %2327
  %2330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2331 = extractvalue %dx.types.CBufRet.f32 %2330, 0
  %2332 = extractvalue %dx.types.CBufRet.f32 %2330, 1
  %2333 = fsub fast float %2159, %2331
  %2334 = fsub fast float %2160, %2332
  %2335 = fmul fast float %2333, %2333
  %2336 = fmul fast float %2334, %2334
  %2337 = fadd fast float %2335, %2336
  %2338 = call float @dx.op.unary.f32(i32 24, float %2337)  ; Sqrt(value)
  %2339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.CBufRet.f32 %2339, 1
  %2342 = fsub fast float %2338, %2340
  %2343 = fdiv fast float %2342, %2341
  %2344 = call float @dx.op.unary.f32(i32 7, float %2343)  ; Saturate(value)
  %2345 = fmul fast float %2344, 2.000000e+00
  %2346 = fsub fast float 3.000000e+00, %2345
  %2347 = fmul fast float %2344, %2344
  %2348 = fmul fast float %2347, %2346
  %2349 = fcmp fast oge float %2328, 0.000000e+00
  %2350 = fcmp fast ole float %2328, 1.000000e+00
  %2351 = and i1 %2350, %2349
  %2352 = fcmp fast oge float %2329, 0.000000e+00
  %2353 = and i1 %2352, %2351
  %2354 = fcmp fast ole float %2329, 1.000000e+00
  %2355 = and i1 %2354, %2353
  %2356 = fcmp fast ogt float %2348, 0.000000e+00
  %2357 = and i1 %2356, %2355
  br i1 %2357, label %2358, label %2481, !dx.controlflow.hints !108

; <label>:2358                                    ; preds = %2313
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 2
  %2361 = extractvalue %dx.types.CBufRet.f32 %2359, 3
  %2362 = fmul fast float %2360, %2328
  %2363 = fmul fast float %2361, %2329
  %2364 = call float @dx.op.unary.f32(i32 27, float %2362)  ; Round_ni(value)
  %2365 = call float @dx.op.unary.f32(i32 27, float %2363)  ; Round_ni(value)
  %2366 = fptosi float %2364 to i32
  %2367 = fptosi float %2365 to i32
  %2368 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2366, i32 %2367, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = lshr i32 %2369, 16
  %2371 = icmp eq i32 %2370, 65535
  br i1 %2371, label %2481, label %2372

; <label>:2372                                    ; preds = %2358
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 0
  %2375 = fmul fast float %2374, %2328
  %2376 = extractvalue %dx.types.CBufRet.f32 %2373, 1
  %2377 = fadd fast float %2375, %2376
  %2378 = extractvalue %dx.types.CBufRet.f32 %2373, 2
  %2379 = fmul fast float %2378, %2329
  %2380 = extractvalue %dx.types.CBufRet.f32 %2373, 3
  %2381 = fadd fast float %2379, %2380
  %2382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2377, float %2381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2383 = extractvalue %dx.types.ResRet.f32 %2382, 0
  %2384 = extractvalue %dx.types.ResRet.f32 %2382, 1
  %2385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2386 = extractvalue %dx.types.CBufRet.f32 %2385, 1
  %2387 = extractvalue %dx.types.CBufRet.f32 %2385, 0
  %2388 = fsub fast float %2386, %2387
  %2389 = fmul fast float %2388, %2383
  %2390 = fadd fast float %2389, %2387
  %2391 = extractvalue %dx.types.CBufRet.f32 %2385, 3
  %2392 = extractvalue %dx.types.CBufRet.f32 %2385, 2
  %2393 = fsub fast float %2391, %2392
  %2394 = fmul fast float %2393, %2384
  %2395 = fadd fast float %2394, %2392
  %2396 = fsub fast float %2315, %2390
  %2397 = fsub fast float %2395, %2390
  %2398 = fdiv fast float %2396, %2397
  %2399 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  %2400 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2401 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2402 = extractvalue %dx.types.CBufRet.f32 %2359, 1
  %2403 = fmul fast float %2401, %2328
  %2404 = fmul fast float %2402, %2329
  %2405 = fmul fast float %2403, 1.250000e-01
  %2406 = fmul fast float %2404, 1.250000e-01
  %2407 = call float @dx.op.unary.f32(i32 27, float %2405)  ; Round_ni(value)
  %2408 = call float @dx.op.unary.f32(i32 27, float %2406)  ; Round_ni(value)
  %2409 = fmul fast float %2407, 8.000000e+00
  %2410 = fmul fast float %2408, 8.000000e+00
  %2411 = fsub fast float %2403, %2409
  %2412 = fsub fast float %2404, %2410
  %2413 = fadd fast float %2411, 5.000000e-01
  %2414 = fadd fast float %2412, 5.000000e-01
  %2415 = and i32 %2370, 255
  %2416 = lshr i32 %2369, 24
  %2417 = mul nuw nsw i32 %2415, 9
  %2418 = uitofp i32 %2417 to float
  %2419 = mul nuw nsw i32 %2416, 9
  %2420 = uitofp i32 %2419 to float
  %2421 = fadd fast float %2413, %2418
  %2422 = fadd fast float %2414, %2420
  %2423 = fdiv fast float %2421, %2310
  %2424 = fdiv fast float %2422, %2400
  %2425 = fmul fast float %2399, 4.375000e-01
  %2426 = fadd fast float %2425, 3.125000e-02
  %2427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2423, float %2424, float %2426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2428 = extractvalue %dx.types.ResRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.ResRet.f32 %2427, 1
  %2430 = extractvalue %dx.types.ResRet.f32 %2427, 2
  %2431 = fadd fast float %2425, 5.312500e-01
  %2432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2423, float %2424, float %2431, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2433 = extractvalue %dx.types.ResRet.f32 %2432, 0
  %2434 = extractvalue %dx.types.ResRet.f32 %2432, 1
  %2435 = extractvalue %dx.types.ResRet.f32 %2432, 2
  %2436 = fmul fast float %2433, 2.000000e+00
  %2437 = fmul fast float %2434, 2.000000e+00
  %2438 = fmul fast float %2435, 2.000000e+00
  %2439 = fadd fast float %2436, -1.000000e+00
  %2440 = fadd fast float %2437, -1.000000e+00
  %2441 = fadd fast float %2438, -1.000000e+00
  %2442 = fmul fast float %2439, %2439
  %2443 = fmul fast float %2440, %2440
  %2444 = fadd fast float %2442, %2443
  %2445 = fmul fast float %2441, %2441
  %2446 = fadd fast float %2444, %2445
  %2447 = call float @dx.op.unary.f32(i32 24, float %2446)  ; Sqrt(value)
  %2448 = fcmp fast ogt float %2447, 0.000000e+00
  br i1 %2448, label %2449, label %2453

; <label>:2449                                    ; preds = %2372
  %2450 = fdiv fast float %2439, %2447
  %2451 = fdiv fast float %2440, %2447
  %2452 = fdiv fast float %2441, %2447
  br label %2453

; <label>:2453                                    ; preds = %2449, %2372
  %2454 = phi float [ %2450, %2449 ], [ 0.000000e+00, %2372 ]
  %2455 = phi float [ %2451, %2449 ], [ 0.000000e+00, %2372 ]
  %2456 = phi float [ %2452, %2449 ], [ 0.000000e+00, %2372 ]
  %2457 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2455, float %2456, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2458 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2457)  ; FMax(a,b)
  %2459 = fmul fast float %2458, 0x400C5BF8A0000000
  %2460 = fmul fast float %2428, %2348
  %2461 = fmul fast float %2460, %2459
  %2462 = fmul fast float %2429, %2348
  %2463 = fmul fast float %2462, %2459
  %2464 = fmul fast float %2430, %2348
  %2465 = fmul fast float %2464, %2459
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 3
  %2468 = fmul fast float %2461, %2467
  %2469 = fmul fast float %2463, %2467
  %2470 = fmul fast float %2465, %2467
  %2471 = fcmp fast ogt float %2315, %2395
  br i1 %2471, label %2472, label %2481

; <label>:2472                                    ; preds = %2453
  %2473 = fmul fast float %2397, 0x3FC24924A0000000
  %2474 = fsub fast float %2315, %2395
  %2475 = fdiv fast float %2474, %2473
  %2476 = call float @dx.op.unary.f32(i32 7, float %2475)  ; Saturate(value)
  %2477 = fsub fast float 1.000000e+00, %2476
  %2478 = fmul fast float %2477, %2468
  %2479 = fmul fast float %2477, %2469
  %2480 = fmul fast float %2477, %2470
  br label %2481

; <label>:2481                                    ; preds = %2472, %2453, %2358, %2313
  %2482 = phi float [ %2480, %2472 ], [ %2470, %2453 ], [ 0.000000e+00, %2358 ], [ 0.000000e+00, %2313 ]
  %2483 = phi float [ %2479, %2472 ], [ %2469, %2453 ], [ 0.000000e+00, %2358 ], [ 0.000000e+00, %2313 ]
  %2484 = phi float [ %2478, %2472 ], [ %2468, %2453 ], [ 0.000000e+00, %2358 ], [ 0.000000e+00, %2313 ]
  %2485 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2484)  ; FMax(a,b)
  %2486 = fmul fast float %2485, 0x3FD20DD760000000
  %2487 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2137, float %2138, float %2139)  ; Dot3(ax,ay,az,bx,by,bz)
  %2488 = fmul fast float %2487, 0x3FDF454380000000
  %2489 = fmul fast float %2487, %2487
  %2490 = fmul fast float %2489, 0x3FEE471020000000
  %2491 = fadd fast float %2490, 0xBFD42F6020000000
  %2492 = call float @dx.op.dot3.f32(i32 55, float %2485, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2488, float %2491)  ; Dot3(ax,ay,az,bx,by,bz)
  %2493 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2483)  ; FMax(a,b)
  %2494 = fmul fast float %2493, 0x3FD20DD760000000
  %2495 = call float @dx.op.dot3.f32(i32 55, float %2493, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2488, float %2491)  ; Dot3(ax,ay,az,bx,by,bz)
  %2496 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2482)  ; FMax(a,b)
  %2497 = fmul fast float %2496, 0x3FD20DD760000000
  %2498 = call float @dx.op.dot3.f32(i32 55, float %2496, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2488, float %2491)  ; Dot3(ax,ay,az,bx,by,bz)
  %2499 = call float @dx.op.binary.f32(i32 35, float %2486, float 0.000000e+00)  ; FMax(a,b)
  %2500 = call float @dx.op.binary.f32(i32 35, float %2494, float 0.000000e+00)  ; FMax(a,b)
  %2501 = call float @dx.op.binary.f32(i32 35, float %2497, float 0.000000e+00)  ; FMax(a,b)
  %2502 = call float @dx.op.binary.f32(i32 35, float %2492, float 0.000000e+00)  ; FMax(a,b)
  %2503 = call float @dx.op.binary.f32(i32 35, float %2495, float 0.000000e+00)  ; FMax(a,b)
  %2504 = call float @dx.op.binary.f32(i32 35, float %2498, float 0.000000e+00)  ; FMax(a,b)
  %2505 = fmul fast float %2499, %2200
  %2506 = fmul fast float %2500, %2200
  %2507 = fmul fast float %2501, %2200
  %2508 = fadd fast float %2505, %2306
  %2509 = fadd fast float %2506, %2307
  %2510 = fadd fast float %2507, %2308
  %2511 = fmul fast float %2502, %2200
  %2512 = fmul fast float %2503, %2200
  %2513 = fmul fast float %2504, %2200
  %2514 = fadd fast float %2511, %2303
  %2515 = fadd fast float %2512, %2304
  %2516 = fadd fast float %2513, %2305
  br label %2517

; <label>:2517                                    ; preds = %2481, %2301
  %2518 = phi float [ %2514, %2481 ], [ %2303, %2301 ]
  %2519 = phi float [ %2515, %2481 ], [ %2304, %2301 ]
  %2520 = phi float [ %2516, %2481 ], [ %2305, %2301 ]
  %2521 = phi float [ %2508, %2481 ], [ %2306, %2301 ]
  %2522 = phi float [ %2509, %2481 ], [ %2307, %2301 ]
  %2523 = phi float [ %2510, %2481 ], [ %2308, %2301 ]
  %2524 = fcmp fast olt float %2200, 1.000000e+00
  br i1 %2524, label %2525, label %3348, !dx.controlflow.hints !109

; <label>:2525                                    ; preds = %2517
  %2526 = extractvalue %dx.types.CBufRet.f32 %2156, 2
  %2527 = fadd fast float %2526, %158
  %2528 = fmul fast float %2120, 3.200000e+01
  %2529 = fmul fast float %2121, 3.200000e+01
  %2530 = fadd fast float %2159, %2528
  %2531 = fadd fast float %2160, %2529
  %2532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2533 = extractvalue %dx.types.CBufRet.f32 %2532, 0
  %2534 = extractvalue %dx.types.CBufRet.f32 %2532, 1
  %2535 = fsub fast float %2530, %2533
  %2536 = fsub fast float %2531, %2534
  %2537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2537, 0
  %2539 = extractvalue %dx.types.CBufRet.f32 %2537, 1
  %2540 = fmul fast float %2535, %2538
  %2541 = fmul fast float %2536, %2539
  %2542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2543 = extractvalue %dx.types.CBufRet.f32 %2542, 0
  %2544 = fmul fast float %2540, %2543
  %2545 = extractvalue %dx.types.CBufRet.f32 %2542, 1
  %2546 = fadd fast float %2544, %2545
  %2547 = extractvalue %dx.types.CBufRet.f32 %2542, 2
  %2548 = fmul fast float %2547, %2541
  %2549 = extractvalue %dx.types.CBufRet.f32 %2542, 3
  %2550 = fadd fast float %2548, %2549
  %2551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2546, float %2550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2552 = extractvalue %dx.types.ResRet.f32 %2551, 0
  %2553 = extractvalue %dx.types.ResRet.f32 %2551, 1
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 1
  %2556 = extractvalue %dx.types.CBufRet.f32 %2554, 0
  %2557 = fsub fast float %2555, %2556
  %2558 = fmul fast float %2557, %2552
  %2559 = fadd fast float %2558, %2556
  %2560 = extractvalue %dx.types.CBufRet.f32 %2554, 3
  %2561 = extractvalue %dx.types.CBufRet.f32 %2554, 2
  %2562 = fsub fast float %2560, %2561
  %2563 = fmul fast float %2562, %2553
  %2564 = fadd fast float %2563, %2561
  %2565 = fsub fast float %2527, %2559
  %2566 = fsub fast float %2564, %2559
  %2567 = fdiv fast float %2565, %2566
  %2568 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 0
  %2571 = fmul fast float %2570, %2568
  %2572 = extractvalue %dx.types.CBufRet.f32 %2569, 1
  %2573 = fadd fast float %2571, %2572
  %2574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2546, float %2550, float %2573, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2575 = extractvalue %dx.types.ResRet.f32 %2574, 0
  %2576 = extractvalue %dx.types.ResRet.f32 %2574, 1
  %2577 = extractvalue %dx.types.ResRet.f32 %2574, 2
  %2578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2579 = extractvalue %dx.types.CBufRet.f32 %2578, 0
  %2580 = extractvalue %dx.types.CBufRet.f32 %2578, 1
  %2581 = extractvalue %dx.types.CBufRet.f32 %2578, 2
  %2582 = fmul fast float %2579, %2575
  %2583 = fmul fast float %2580, %2576
  %2584 = fmul fast float %2581, %2577
  %2585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2586 = extractvalue %dx.types.CBufRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.CBufRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.CBufRet.f32 %2585, 2
  %2589 = fadd fast float %2582, %2586
  %2590 = fadd fast float %2583, %2587
  %2591 = fadd fast float %2584, %2588
  %2592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2592, 0
  %2594 = fmul fast float %2593, %2540
  %2595 = extractvalue %dx.types.CBufRet.f32 %2592, 1
  %2596 = fadd fast float %2594, %2595
  %2597 = extractvalue %dx.types.CBufRet.f32 %2592, 2
  %2598 = fmul fast float %2597, %2541
  %2599 = extractvalue %dx.types.CBufRet.f32 %2592, 3
  %2600 = fadd fast float %2598, %2599
  %2601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.f32 %2601, 0
  %2603 = extractvalue %dx.types.CBufRet.f32 %2601, 1
  %2604 = extractvalue %dx.types.CBufRet.f32 %2601, 2
  %2605 = extractvalue %dx.types.CBufRet.f32 %2601, 3
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 0
  %2608 = extractvalue %dx.types.CBufRet.f32 %2606, 1
  %2609 = extractvalue %dx.types.CBufRet.f32 %2606, 2
  %2610 = extractvalue %dx.types.CBufRet.f32 %2606, 3
  %2611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2596, float %2600, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2612 = extractvalue %dx.types.ResRet.f32 %2611, 0
  %2613 = extractvalue %dx.types.ResRet.f32 %2611, 1
  %2614 = extractvalue %dx.types.ResRet.f32 %2611, 2
  %2615 = extractvalue %dx.types.ResRet.f32 %2611, 3
  %2616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2596, float %2600, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2617 = extractvalue %dx.types.ResRet.f32 %2616, 0
  %2618 = extractvalue %dx.types.ResRet.f32 %2616, 1
  %2619 = extractvalue %dx.types.ResRet.f32 %2616, 2
  %2620 = extractvalue %dx.types.ResRet.f32 %2616, 3
  %2621 = fmul fast float %2612, %2589
  %2622 = fmul fast float %2617, %2589
  %2623 = fmul fast float %2619, %2589
  %2624 = fmul fast float %2615, %2589
  %2625 = fadd fast float %2621, %2602
  %2626 = fadd fast float %2622, %2603
  %2627 = fadd fast float %2623, %2604
  %2628 = fadd fast float %2624, %2605
  %2629 = fmul fast float %2613, %2589
  %2630 = fmul fast float %2618, %2589
  %2631 = fadd fast float %2629, %2607
  %2632 = fadd fast float %2630, %2608
  %2633 = fmul fast float %2614, %2589
  %2634 = fmul fast float %2620, %2589
  %2635 = fadd fast float %2633, %2609
  %2636 = fadd fast float %2634, %2610
  %2637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2596, float %2600, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2638 = extractvalue %dx.types.ResRet.f32 %2637, 0
  %2639 = extractvalue %dx.types.ResRet.f32 %2637, 1
  %2640 = extractvalue %dx.types.ResRet.f32 %2637, 2
  %2641 = extractvalue %dx.types.ResRet.f32 %2637, 3
  %2642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2596, float %2600, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2643 = extractvalue %dx.types.ResRet.f32 %2642, 0
  %2644 = extractvalue %dx.types.ResRet.f32 %2642, 1
  %2645 = extractvalue %dx.types.ResRet.f32 %2642, 2
  %2646 = extractvalue %dx.types.ResRet.f32 %2642, 3
  %2647 = fmul fast float %2638, %2590
  %2648 = fmul fast float %2643, %2590
  %2649 = fmul fast float %2645, %2590
  %2650 = fmul fast float %2641, %2590
  %2651 = fadd fast float %2625, %2647
  %2652 = fadd fast float %2626, %2648
  %2653 = fadd fast float %2627, %2649
  %2654 = fadd fast float %2628, %2650
  %2655 = fmul fast float %2639, %2590
  %2656 = fmul fast float %2644, %2590
  %2657 = fadd fast float %2631, %2655
  %2658 = fadd fast float %2632, %2656
  %2659 = fmul fast float %2640, %2590
  %2660 = fmul fast float %2646, %2590
  %2661 = fadd fast float %2635, %2659
  %2662 = fadd fast float %2636, %2660
  %2663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2596, float %2600, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2664 = extractvalue %dx.types.ResRet.f32 %2663, 0
  %2665 = extractvalue %dx.types.ResRet.f32 %2663, 1
  %2666 = extractvalue %dx.types.ResRet.f32 %2663, 2
  %2667 = extractvalue %dx.types.ResRet.f32 %2663, 3
  %2668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2596, float %2600, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2669 = extractvalue %dx.types.ResRet.f32 %2668, 0
  %2670 = extractvalue %dx.types.ResRet.f32 %2668, 1
  %2671 = extractvalue %dx.types.ResRet.f32 %2668, 2
  %2672 = extractvalue %dx.types.ResRet.f32 %2668, 3
  %2673 = fmul fast float %2664, %2591
  %2674 = fmul fast float %2669, %2591
  %2675 = fmul fast float %2671, %2591
  %2676 = fmul fast float %2667, %2591
  %2677 = fadd fast float %2651, %2673
  %2678 = fadd fast float %2652, %2674
  %2679 = fadd fast float %2653, %2675
  %2680 = fadd fast float %2654, %2676
  %2681 = fmul fast float %2665, %2591
  %2682 = fmul fast float %2670, %2591
  %2683 = fadd fast float %2657, %2681
  %2684 = fadd fast float %2658, %2682
  %2685 = fmul fast float %2666, %2591
  %2686 = fmul fast float %2672, %2591
  %2687 = fadd fast float %2661, %2685
  %2688 = fadd fast float %2662, %2686
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2691 = fsub fast float %2159, %2690
  %2692 = fsub fast float %2533, %2159
  %2693 = call float @dx.op.binary.f32(i32 35, float %2692, float %2691)  ; FMax(a,b)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2689, 1
  %2695 = fsub fast float %2160, %2694
  %2696 = fsub fast float %2534, %2160
  %2697 = call float @dx.op.binary.f32(i32 35, float %2696, float %2695)  ; FMax(a,b)
  %2698 = call float @dx.op.binary.f32(i32 35, float %2693, float %2697)  ; FMax(a,b)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2537, 3
  %2700 = fmul fast float %2699, %2698
  %2701 = call float @dx.op.unary.f32(i32 7, float %2700)  ; Saturate(value)
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.CBufRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.CBufRet.f32 %2702, 2
  %2706 = extractvalue %dx.types.CBufRet.f32 %2702, 3
  %2707 = fsub fast float %2703, %2677
  %2708 = fsub fast float %2704, %2678
  %2709 = fsub fast float %2705, %2679
  %2710 = fsub fast float %2706, %2680
  %2711 = fmul fast float %2707, %2701
  %2712 = fmul fast float %2708, %2701
  %2713 = fmul fast float %2709, %2701
  %2714 = fmul fast float %2710, %2701
  %2715 = fadd fast float %2711, %2677
  %2716 = fadd fast float %2712, %2678
  %2717 = fadd fast float %2713, %2679
  %2718 = fadd fast float %2714, %2680
  %2719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2720 = extractvalue %dx.types.CBufRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.CBufRet.f32 %2719, 1
  %2722 = fsub fast float %2720, %2683
  %2723 = fsub fast float %2721, %2684
  %2724 = fmul fast float %2722, %2701
  %2725 = fmul fast float %2723, %2701
  %2726 = fadd fast float %2724, %2683
  %2727 = fadd fast float %2725, %2684
  %2728 = extractvalue %dx.types.CBufRet.f32 %2719, 2
  %2729 = extractvalue %dx.types.CBufRet.f32 %2719, 3
  %2730 = fsub fast float %2728, %2687
  %2731 = fsub fast float %2729, %2688
  %2732 = fmul fast float %2730, %2701
  %2733 = fmul fast float %2731, %2701
  %2734 = fadd fast float %2732, %2687
  %2735 = fadd fast float %2733, %2688
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2738 = fmul fast float %2737, %2715
  %2739 = fmul fast float %2737, %2716
  %2740 = fmul fast float %2737, %2717
  %2741 = fmul fast float %2737, %2718
  %2742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2742, 0
  %2744 = fmul fast float %2743, %2726
  %2745 = fmul fast float %2743, %2727
  %2746 = fadd fast float %2744, %2738
  %2747 = fadd fast float %2745, %2740
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 0
  %2750 = fmul fast float %2749, %2734
  %2751 = fmul fast float %2749, %2735
  %2752 = fadd fast float %2746, %2750
  %2753 = fadd fast float %2747, %2751
  %2754 = extractvalue %dx.types.CBufRet.f32 %2736, 1
  %2755 = fmul fast float %2754, %2715
  %2756 = fmul fast float %2754, %2716
  %2757 = fmul fast float %2754, %2717
  %2758 = fmul fast float %2754, %2718
  %2759 = extractvalue %dx.types.CBufRet.f32 %2742, 1
  %2760 = fmul fast float %2759, %2726
  %2761 = fmul fast float %2759, %2727
  %2762 = fadd fast float %2760, %2755
  %2763 = fadd fast float %2761, %2757
  %2764 = extractvalue %dx.types.CBufRet.f32 %2748, 1
  %2765 = fmul fast float %2764, %2734
  %2766 = fmul fast float %2764, %2735
  %2767 = fadd fast float %2762, %2765
  %2768 = fadd fast float %2763, %2766
  %2769 = extractvalue %dx.types.CBufRet.f32 %2736, 2
  %2770 = fmul fast float %2769, %2715
  %2771 = fmul fast float %2769, %2716
  %2772 = fmul fast float %2769, %2717
  %2773 = fmul fast float %2769, %2718
  %2774 = extractvalue %dx.types.CBufRet.f32 %2742, 2
  %2775 = fmul fast float %2774, %2726
  %2776 = fmul fast float %2774, %2727
  %2777 = fadd fast float %2775, %2770
  %2778 = fadd fast float %2776, %2772
  %2779 = extractvalue %dx.types.CBufRet.f32 %2748, 2
  %2780 = fmul fast float %2779, %2734
  %2781 = fmul fast float %2779, %2735
  %2782 = fadd fast float %2777, %2780
  %2783 = fadd fast float %2778, %2781
  %2784 = fmul fast float %2771, %2771
  %2785 = fmul fast float %2783, %2783
  %2786 = fmul fast float %2773, %2773
  %2787 = fadd fast float %2786, %2784
  %2788 = fadd fast float %2787, %2785
  %2789 = call float @dx.op.unary.f32(i32 24, float %2788)  ; Sqrt(value)
  %2790 = fcmp fast ugt float %2789, 0.000000e+00
  br i1 %2790, label %2791, label %2806

; <label>:2791                                    ; preds = %2525
  %2792 = fsub fast float -0.000000e+00, %2773
  %2793 = fdiv fast float %2792, %2789
  %2794 = fsub fast float -0.000000e+00, %2771
  %2795 = fdiv fast float %2794, %2789
  %2796 = fdiv fast float %2783, %2789
  %2797 = fmul fast float %2782, 0x3FE279A760000000
  %2798 = fmul fast float %2795, %2771
  %2799 = fmul fast float %2796, %2783
  %2800 = fmul fast float %2793, %2773
  %2801 = fadd fast float %2798, %2800
  %2802 = fsub fast float %2801, %2799
  %2803 = call float @dx.op.unary.f32(i32 6, float %2802)  ; FAbs(value)
  %2804 = fadd fast float %2803, 0x3DDB7CDFE0000000
  %2805 = fdiv fast float %2797, %2804
  br label %2806

; <label>:2806                                    ; preds = %2791, %2525
  %2807 = phi float [ %2805, %2791 ], [ 1.000000e+00, %2525 ]
  %2808 = fmul fast float %2756, %2756
  %2809 = fmul fast float %2768, %2768
  %2810 = fmul fast float %2758, %2758
  %2811 = fadd fast float %2810, %2808
  %2812 = fadd fast float %2811, %2809
  %2813 = call float @dx.op.unary.f32(i32 24, float %2812)  ; Sqrt(value)
  %2814 = fcmp fast ugt float %2813, 0.000000e+00
  br i1 %2814, label %2815, label %2830

; <label>:2815                                    ; preds = %2806
  %2816 = fsub fast float -0.000000e+00, %2758
  %2817 = fdiv fast float %2816, %2813
  %2818 = fsub fast float -0.000000e+00, %2756
  %2819 = fdiv fast float %2818, %2813
  %2820 = fdiv fast float %2768, %2813
  %2821 = fmul fast float %2767, 0x3FE279A760000000
  %2822 = fmul fast float %2819, %2756
  %2823 = fmul fast float %2820, %2768
  %2824 = fmul fast float %2817, %2758
  %2825 = fadd fast float %2822, %2824
  %2826 = fsub fast float %2825, %2823
  %2827 = call float @dx.op.unary.f32(i32 6, float %2826)  ; FAbs(value)
  %2828 = fadd fast float %2827, 0x3DDB7CDFE0000000
  %2829 = fdiv fast float %2821, %2828
  br label %2830

; <label>:2830                                    ; preds = %2815, %2806
  %2831 = phi float [ %2829, %2815 ], [ 1.000000e+00, %2806 ]
  %2832 = call float @dx.op.binary.f32(i32 36, float %2831, float %2807)  ; FMin(a,b)
  %2833 = fmul fast float %2739, %2739
  %2834 = fmul fast float %2753, %2753
  %2835 = fmul fast float %2741, %2741
  %2836 = fadd fast float %2835, %2833
  %2837 = fadd fast float %2836, %2834
  %2838 = call float @dx.op.unary.f32(i32 24, float %2837)  ; Sqrt(value)
  %2839 = fcmp fast ugt float %2838, 0.000000e+00
  br i1 %2839, label %2840, label %2855

; <label>:2840                                    ; preds = %2830
  %2841 = fsub fast float -0.000000e+00, %2741
  %2842 = fdiv fast float %2841, %2838
  %2843 = fsub fast float -0.000000e+00, %2739
  %2844 = fdiv fast float %2843, %2838
  %2845 = fdiv fast float %2753, %2838
  %2846 = fmul fast float %2752, 0x3FE279A760000000
  %2847 = fmul fast float %2844, %2739
  %2848 = fmul fast float %2845, %2753
  %2849 = fmul fast float %2842, %2741
  %2850 = fadd fast float %2847, %2849
  %2851 = fsub fast float %2850, %2848
  %2852 = call float @dx.op.unary.f32(i32 6, float %2851)  ; FAbs(value)
  %2853 = fadd fast float %2852, 0x3DDB7CDFE0000000
  %2854 = fdiv fast float %2846, %2853
  br label %2855

; <label>:2855                                    ; preds = %2840, %2830
  %2856 = phi float [ %2854, %2840 ], [ 1.000000e+00, %2830 ]
  %2857 = call float @dx.op.binary.f32(i32 36, float %2856, float %2832)  ; FMin(a,b)
  %2858 = call float @dx.op.unary.f32(i32 7, float %2857)  ; Saturate(value)
  %2859 = fcmp fast olt float %2858, 1.000000e+00
  br i1 %2859, label %2860, label %2870

; <label>:2860                                    ; preds = %2855
  %2861 = fmul fast float %2858, %2739
  %2862 = fmul fast float %2858, %2753
  %2863 = fmul fast float %2858, %2741
  %2864 = fmul fast float %2858, %2756
  %2865 = fmul fast float %2858, %2768
  %2866 = fmul fast float %2858, %2758
  %2867 = fmul fast float %2858, %2771
  %2868 = fmul fast float %2858, %2783
  %2869 = fmul fast float %2858, %2773
  br label %2870

; <label>:2870                                    ; preds = %2860, %2855
  %2871 = phi float [ %2867, %2860 ], [ %2771, %2855 ]
  %2872 = phi float [ %2868, %2860 ], [ %2783, %2855 ]
  %2873 = phi float [ %2869, %2860 ], [ %2773, %2855 ]
  %2874 = phi float [ %2864, %2860 ], [ %2756, %2855 ]
  %2875 = phi float [ %2865, %2860 ], [ %2768, %2855 ]
  %2876 = phi float [ %2866, %2860 ], [ %2758, %2855 ]
  %2877 = phi float [ %2861, %2860 ], [ %2739, %2855 ]
  %2878 = phi float [ %2862, %2860 ], [ %2753, %2855 ]
  %2879 = phi float [ %2863, %2860 ], [ %2741, %2855 ]
  %2880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2752)  ; FMax(a,b)
  %2881 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2767)  ; FMax(a,b)
  %2882 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2782)  ; FMax(a,b)
  %2883 = fcmp fast oge float %2540, 0.000000e+00
  %2884 = and i1 %2883, %2311
  %2885 = fcmp fast ole float %2540, 1.000000e+00
  %2886 = and i1 %2885, %2884
  %2887 = fcmp fast oge float %2541, 0.000000e+00
  %2888 = and i1 %2887, %2886
  %2889 = fcmp fast ole float %2541, 1.000000e+00
  %2890 = and i1 %2889, %2888
  br i1 %2890, label %2891, label %3036, !dx.controlflow.hints !110

; <label>:2891                                    ; preds = %2870
  %2892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2893 = extractvalue %dx.types.CBufRet.f32 %2892, 2
  %2894 = extractvalue %dx.types.CBufRet.f32 %2892, 3
  %2895 = fmul fast float %2893, %2540
  %2896 = fmul fast float %2894, %2541
  %2897 = call float @dx.op.unary.f32(i32 27, float %2895)  ; Round_ni(value)
  %2898 = call float @dx.op.unary.f32(i32 27, float %2896)  ; Round_ni(value)
  %2899 = fptosi float %2897 to i32
  %2900 = fptosi float %2898 to i32
  %2901 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2899, i32 %2900, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = and i32 %2902, 65535
  %2904 = lshr i32 %2902, 16
  %2905 = icmp eq i32 %2903, 65535
  br i1 %2905, label %2942, label %2906

; <label>:2906                                    ; preds = %2891
  %2907 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2908 = extractvalue %dx.types.CBufRet.f32 %2892, 0
  %2909 = extractvalue %dx.types.CBufRet.f32 %2892, 1
  %2910 = fmul fast float %2908, %2540
  %2911 = fmul fast float %2909, %2541
  %2912 = fmul fast float %2910, 1.250000e-01
  %2913 = fmul fast float %2911, 1.250000e-01
  %2914 = call float @dx.op.unary.f32(i32 27, float %2912)  ; Round_ni(value)
  %2915 = call float @dx.op.unary.f32(i32 27, float %2913)  ; Round_ni(value)
  %2916 = fmul fast float %2914, 8.000000e+00
  %2917 = fmul fast float %2915, 8.000000e+00
  %2918 = and i32 %2902, 255
  %2919 = lshr i32 %2902, 8
  %2920 = and i32 %2919, 255
  %2921 = mul nuw nsw i32 %2918, 9
  %2922 = uitofp i32 %2921 to float
  %2923 = mul nuw nsw i32 %2920, 9
  %2924 = uitofp i32 %2923 to float
  %2925 = fadd fast float %2922, 5.000000e-01
  %2926 = fadd fast float %2925, %2910
  %2927 = fsub fast float %2926, %2916
  %2928 = fadd fast float %2924, 5.000000e-01
  %2929 = fadd fast float %2928, %2911
  %2930 = fsub fast float %2929, %2917
  %2931 = fdiv fast float %2927, %2310
  %2932 = fdiv fast float %2930, %2907
  %2933 = fmul fast float %2568, 4.375000e-01
  %2934 = fadd fast float %2933, 3.125000e-02
  %2935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2931, float %2932, float %2934, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = extractvalue %dx.types.ResRet.f32 %2935, 1
  %2938 = extractvalue %dx.types.ResRet.f32 %2935, 2
  %2939 = fadd fast float %2936, %2880
  %2940 = fadd fast float %2937, %2881
  %2941 = fadd fast float %2938, %2882
  br label %2942

; <label>:2942                                    ; preds = %2906, %2891
  %2943 = phi float [ %2941, %2906 ], [ %2882, %2891 ]
  %2944 = phi float [ %2940, %2906 ], [ %2881, %2891 ]
  %2945 = phi float [ %2939, %2906 ], [ %2880, %2891 ]
  %2946 = icmp eq i32 %2904, 65535
  br i1 %2946, label %3036, label %2947

; <label>:2947                                    ; preds = %2942
  %2948 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2949 = extractvalue %dx.types.CBufRet.f32 %2892, 0
  %2950 = extractvalue %dx.types.CBufRet.f32 %2892, 1
  %2951 = fmul fast float %2949, %2540
  %2952 = fmul fast float %2950, %2541
  %2953 = fmul fast float %2951, 1.250000e-01
  %2954 = fmul fast float %2952, 1.250000e-01
  %2955 = call float @dx.op.unary.f32(i32 27, float %2953)  ; Round_ni(value)
  %2956 = call float @dx.op.unary.f32(i32 27, float %2954)  ; Round_ni(value)
  %2957 = fmul fast float %2955, 8.000000e+00
  %2958 = fmul fast float %2956, 8.000000e+00
  %2959 = fsub fast float %2951, %2957
  %2960 = fsub fast float %2952, %2958
  %2961 = fadd fast float %2959, 5.000000e-01
  %2962 = fadd fast float %2960, 5.000000e-01
  %2963 = and i32 %2904, 255
  %2964 = lshr i32 %2902, 24
  %2965 = mul nuw nsw i32 %2963, 9
  %2966 = uitofp i32 %2965 to float
  %2967 = mul nuw nsw i32 %2964, 9
  %2968 = uitofp i32 %2967 to float
  %2969 = fadd fast float %2961, %2966
  %2970 = fadd fast float %2962, %2968
  %2971 = fdiv fast float %2969, %2310
  %2972 = fdiv fast float %2970, %2948
  %2973 = fmul fast float %2568, 4.375000e-01
  %2974 = fadd fast float %2973, 3.125000e-02
  %2975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2971, float %2972, float %2974, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2976 = extractvalue %dx.types.ResRet.f32 %2975, 0
  %2977 = extractvalue %dx.types.ResRet.f32 %2975, 1
  %2978 = extractvalue %dx.types.ResRet.f32 %2975, 2
  %2979 = fadd fast float %2973, 5.312500e-01
  %2980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2971, float %2972, float %2979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = extractvalue %dx.types.ResRet.f32 %2980, 1
  %2983 = extractvalue %dx.types.ResRet.f32 %2980, 2
  %2984 = fmul fast float %2981, 2.000000e+00
  %2985 = fmul fast float %2982, 2.000000e+00
  %2986 = fmul fast float %2983, 2.000000e+00
  %2987 = fadd fast float %2984, -1.000000e+00
  %2988 = fadd fast float %2985, -1.000000e+00
  %2989 = fadd fast float %2986, -1.000000e+00
  %2990 = fmul fast float %2987, %2987
  %2991 = fmul fast float %2988, %2988
  %2992 = fadd fast float %2990, %2991
  %2993 = fmul fast float %2989, %2989
  %2994 = fadd fast float %2992, %2993
  %2995 = call float @dx.op.unary.f32(i32 24, float %2994)  ; Sqrt(value)
  %2996 = fcmp fast ogt float %2995, 0.000000e+00
  br i1 %2996, label %2997, label %3001

; <label>:2997                                    ; preds = %2947
  %2998 = fdiv fast float %2987, %2995
  %2999 = fdiv fast float %2988, %2995
  %3000 = fdiv fast float %2989, %2995
  br label %3001

; <label>:3001                                    ; preds = %2997, %2947
  %3002 = phi float [ %2998, %2997 ], [ 0.000000e+00, %2947 ]
  %3003 = phi float [ %2999, %2997 ], [ 0.000000e+00, %2947 ]
  %3004 = phi float [ %3000, %2997 ], [ 0.000000e+00, %2947 ]
  %3005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3006 = extractvalue %dx.types.CBufRet.f32 %3005, 0
  %3007 = extractvalue %dx.types.CBufRet.f32 %3005, 1
  %3008 = fsub fast float %2159, %3006
  %3009 = fsub fast float %2160, %3007
  %3010 = fmul fast float %3008, %3008
  %3011 = fmul fast float %3009, %3009
  %3012 = fadd fast float %3010, %3011
  %3013 = call float @dx.op.unary.f32(i32 24, float %3012)  ; Sqrt(value)
  %3014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3015 = extractvalue %dx.types.CBufRet.f32 %3014, 0
  %3016 = extractvalue %dx.types.CBufRet.f32 %3014, 1
  %3017 = fsub fast float %3013, %3015
  %3018 = fdiv fast float %3017, %3016
  %3019 = call float @dx.op.unary.f32(i32 7, float %3018)  ; Saturate(value)
  %3020 = fmul fast float %3019, 2.000000e+00
  %3021 = fsub fast float 3.000000e+00, %3020
  %3022 = fmul fast float %3019, %3019
  %3023 = fmul fast float %3022, %3021
  %3024 = call float @dx.op.dot3.f32(i32 55, float %3002, float %3003, float %3004, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %3025 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3024)  ; FMax(a,b)
  %3026 = fmul fast float %3025, 0x400C5BF8A0000000
  %3027 = fmul fast float %3023, %2976
  %3028 = fmul fast float %3027, %3026
  %3029 = fadd fast float %3028, %2945
  %3030 = fmul fast float %3023, %2977
  %3031 = fmul fast float %3030, %3026
  %3032 = fadd fast float %3031, %2944
  %3033 = fmul fast float %3023, %2978
  %3034 = fmul fast float %3033, %3026
  %3035 = fadd fast float %3034, %2943
  br label %3036

; <label>:3036                                    ; preds = %3001, %2942, %2870
  %3037 = phi float [ %3035, %3001 ], [ %2943, %2942 ], [ %2882, %2870 ]
  %3038 = phi float [ %3032, %3001 ], [ %2944, %2942 ], [ %2881, %2870 ]
  %3039 = phi float [ %3029, %3001 ], [ %2945, %2942 ], [ %2880, %2870 ]
  %3040 = fcmp fast ogt float %2527, %2564
  %3041 = and i1 %2883, %3040
  %3042 = and i1 %2885, %3041
  %3043 = and i1 %2887, %3042
  %3044 = and i1 %2889, %3043
  br i1 %3044, label %3045, label %3102, !dx.controlflow.hints !111

; <label>:3045                                    ; preds = %3036
  %3046 = fmul fast float %2566, 0x3FC24924A0000000
  %3047 = fsub fast float %2527, %2564
  %3048 = fdiv fast float %3047, %3046
  %3049 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  %3050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3051 = extractvalue %dx.types.CBufRet.f32 %3050, 0
  %3052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3053 = extractvalue %dx.types.CBufRet.f32 %3052, 0
  %3054 = extractvalue %dx.types.CBufRet.f32 %3052, 1
  %3055 = extractvalue %dx.types.CBufRet.f32 %3052, 2
  %3056 = fsub fast float %3051, %3039
  %3057 = fsub fast float %3053, %2877
  %3058 = fsub fast float %3054, %2878
  %3059 = fsub fast float %3055, %2879
  %3060 = fmul fast float %3056, %3049
  %3061 = fmul fast float %3057, %3049
  %3062 = fmul fast float %3058, %3049
  %3063 = fmul fast float %3059, %3049
  %3064 = fadd fast float %3060, %3039
  %3065 = fadd fast float %3061, %2877
  %3066 = fadd fast float %3062, %2878
  %3067 = fadd fast float %3063, %2879
  %3068 = extractvalue %dx.types.CBufRet.f32 %3050, 1
  %3069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3070 = extractvalue %dx.types.CBufRet.f32 %3069, 0
  %3071 = extractvalue %dx.types.CBufRet.f32 %3069, 1
  %3072 = extractvalue %dx.types.CBufRet.f32 %3069, 2
  %3073 = fsub fast float %3068, %3038
  %3074 = fsub fast float %3070, %2874
  %3075 = fsub fast float %3071, %2875
  %3076 = fsub fast float %3072, %2876
  %3077 = fmul fast float %3073, %3049
  %3078 = fmul fast float %3074, %3049
  %3079 = fmul fast float %3075, %3049
  %3080 = fmul fast float %3076, %3049
  %3081 = fadd fast float %3077, %3038
  %3082 = fadd fast float %3078, %2874
  %3083 = fadd fast float %3079, %2875
  %3084 = fadd fast float %3080, %2876
  %3085 = extractvalue %dx.types.CBufRet.f32 %3050, 2
  %3086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3087 = extractvalue %dx.types.CBufRet.f32 %3086, 0
  %3088 = extractvalue %dx.types.CBufRet.f32 %3086, 1
  %3089 = extractvalue %dx.types.CBufRet.f32 %3086, 2
  %3090 = fsub fast float %3085, %3037
  %3091 = fsub fast float %3087, %2871
  %3092 = fsub fast float %3088, %2872
  %3093 = fsub fast float %3089, %2873
  %3094 = fmul fast float %3090, %3049
  %3095 = fmul fast float %3091, %3049
  %3096 = fmul fast float %3092, %3049
  %3097 = fmul fast float %3093, %3049
  %3098 = fadd fast float %3094, %3037
  %3099 = fadd fast float %3095, %2871
  %3100 = fadd fast float %3096, %2872
  %3101 = fadd fast float %3097, %2873
  br label %3102

; <label>:3102                                    ; preds = %3045, %3036
  %3103 = phi float [ %3098, %3045 ], [ %3037, %3036 ]
  %3104 = phi float [ %3099, %3045 ], [ %2871, %3036 ]
  %3105 = phi float [ %3100, %3045 ], [ %2872, %3036 ]
  %3106 = phi float [ %3101, %3045 ], [ %2873, %3036 ]
  %3107 = phi float [ %3081, %3045 ], [ %3038, %3036 ]
  %3108 = phi float [ %3082, %3045 ], [ %2874, %3036 ]
  %3109 = phi float [ %3083, %3045 ], [ %2875, %3036 ]
  %3110 = phi float [ %3084, %3045 ], [ %2876, %3036 ]
  %3111 = phi float [ %3064, %3045 ], [ %3039, %3036 ]
  %3112 = phi float [ %3065, %3045 ], [ %2877, %3036 ]
  %3113 = phi float [ %3066, %3045 ], [ %2878, %3036 ]
  %3114 = phi float [ %3067, %3045 ], [ %2879, %3036 ]
  %3115 = extractvalue %dx.types.CBufRet.f32 %2689, 3
  %3116 = fmul fast float %3115, %3111
  %3117 = fmul fast float %3115, %3107
  %3118 = fmul fast float %3115, %3103
  %3119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.f32 %3119, 3
  %3121 = fmul fast float %3116, %3120
  %3122 = fmul fast float %3117, %3120
  %3123 = fmul fast float %3118, %3120
  %3124 = call float @dx.op.dot3.f32(i32 55, float %3121, float %3122, float %3123, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3125 = fmul fast float %3124, 0x3FD20DD760000000
  %3126 = fmul fast float %3112, 1.500000e+00
  %3127 = fmul fast float %3126, %3115
  %3128 = fmul fast float %3127, %3120
  %3129 = fmul fast float %3113, 1.500000e+00
  %3130 = fmul fast float %3129, %3115
  %3131 = fmul fast float %3130, %3120
  %3132 = fmul fast float %3114, 1.500000e+00
  %3133 = fmul fast float %3132, %3115
  %3134 = fmul fast float %3133, %3120
  %3135 = fmul fast float %3108, 1.500000e+00
  %3136 = fmul fast float %3135, %3115
  %3137 = fmul fast float %3136, %3120
  %3138 = fmul fast float %3109, 1.500000e+00
  %3139 = fmul fast float %3138, %3115
  %3140 = fmul fast float %3139, %3120
  %3141 = fmul fast float %3110, 1.500000e+00
  %3142 = fmul fast float %3141, %3115
  %3143 = fmul fast float %3142, %3120
  %3144 = fmul fast float %3104, 1.500000e+00
  %3145 = fmul fast float %3144, %3115
  %3146 = fmul fast float %3145, %3120
  %3147 = fmul fast float %3105, 1.500000e+00
  %3148 = fmul fast float %3147, %3115
  %3149 = fmul fast float %3148, %3120
  %3150 = fmul fast float %3106, 1.500000e+00
  %3151 = fmul fast float %3150, %3115
  %3152 = fmul fast float %3151, %3120
  %3153 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3121)  ; FMax(a,b)
  %3154 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3131, float %3134, float %3128, float %3131, float %3134)  ; Dot3(ax,ay,az,bx,by,bz)
  %3155 = fcmp fast oeq float %3154, 0.000000e+00
  %3156 = fcmp fast oeq float %3153, 0.000000e+00
  %3157 = or i1 %3156, %3155
  br i1 %3157, label %3187, label %3158

; <label>:3158                                    ; preds = %3102
  %3159 = fsub fast float -0.000000e+00, %3134
  %3160 = fsub fast float -0.000000e+00, %3128
  %3161 = call float @dx.op.unary.f32(i32 24, float %3154)  ; Sqrt(value)
  %3162 = fdiv fast float %3161, %3153
  %3163 = fcmp fast ogt float %3162, 0x3FFB6F8900000000
  %3164 = select i1 %3163, float 0x3FFB6F8900000000, float %3162
  %3165 = fmul fast float %3164, 0x3FE8A23460000000
  %3166 = call float @dx.op.unary.f32(i32 7, float %3165)  ; Saturate(value)
  %3167 = call float @dx.op.binary.f32(i32 35, float %3164, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3168 = fmul fast float %3166, %3153
  %3169 = fmul fast float %3167, 0x3FF279A740000000
  %3170 = fadd fast float %3169, -1.000000e+00
  %3171 = call float @dx.op.dot3.f32(i32 55, float %3159, float %3160, float %3131, float %3159, float %3160, float %3131)  ; Dot3(ax,ay,az,bx,by,bz)
  %3172 = call float @dx.op.unary.f32(i32 25, float %3171)  ; Rsqrt(value)
  %3173 = fmul fast float %3172, %3159
  %3174 = fmul fast float %3172, %3160
  %3175 = fmul fast float %3172, %3131
  %3176 = fmul fast float %3170, %3170
  %3177 = fsub fast float 1.000000e+00, %3176
  %3178 = fmul fast float %3167, 0x40005F8BE0000000
  %3179 = fsub fast float 0x400C5BF8A0000000, %3178
  %3180 = fdiv fast float %3168, %3179
  %3181 = fmul fast float %3180, 0x3FEE31C3C0000000
  %3182 = fmul fast float %3181, %3177
  %3183 = fmul fast float %3167, 0x3FDACB7480000000
  %3184 = fadd fast float %3183, 0xBFD7347680000000
  %3185 = fmul fast float %3184, %3180
  %3186 = fmul fast float %3185, %3177
  br label %3187

; <label>:3187                                    ; preds = %3158, %3102
  %3188 = phi float [ %3173, %3158 ], [ 0.000000e+00, %3102 ]
  %3189 = phi float [ %3174, %3158 ], [ 0.000000e+00, %3102 ]
  %3190 = phi float [ %3175, %3158 ], [ 0.000000e+00, %3102 ]
  %3191 = phi float [ %3182, %3158 ], [ 0.000000e+00, %3102 ]
  %3192 = phi float [ %3186, %3158 ], [ 0.000000e+00, %3102 ]
  %3193 = call float @dx.op.dot3.f32(i32 55, float %3188, float %3189, float %3190, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %3194 = fmul fast float %3193, %3193
  %3195 = fmul fast float %3194, 0x3FEE471020000000
  %3196 = fadd fast float %3195, 0xBFD42F6020000000
  %3197 = fmul fast float %3153, 0x3FD20DD760000000
  %3198 = fmul fast float %3196, %3192
  %3199 = fmul fast float %3191, 0x3FDF454380000000
  %3200 = fmul fast float %3199, %3193
  %3201 = fadd fast float %3200, %3197
  %3202 = fadd fast float %3201, %3198
  %3203 = call float @dx.op.dot3.f32(i32 55, float %3188, float %3189, float %3190, float %2137, float %2138, float %2139)  ; Dot3(ax,ay,az,bx,by,bz)
  %3204 = fmul fast float %3203, 0x3FDF454380000000
  %3205 = fmul fast float %3203, %3203
  %3206 = fmul fast float %3205, 0x3FEE471020000000
  %3207 = fadd fast float %3206, 0xBFD42F6020000000
  %3208 = call float @dx.op.dot3.f32(i32 55, float %3153, float %3191, float %3192, float 0x3FD20DD760000000, float %3204, float %3207)  ; Dot3(ax,ay,az,bx,by,bz)
  %3209 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3122)  ; FMax(a,b)
  %3210 = call float @dx.op.dot3.f32(i32 55, float %3137, float %3140, float %3143, float %3137, float %3140, float %3143)  ; Dot3(ax,ay,az,bx,by,bz)
  %3211 = fcmp fast oeq float %3210, 0.000000e+00
  %3212 = fcmp fast oeq float %3209, 0.000000e+00
  %3213 = or i1 %3212, %3211
  br i1 %3213, label %3243, label %3214

; <label>:3214                                    ; preds = %3187
  %3215 = fsub fast float -0.000000e+00, %3143
  %3216 = fsub fast float -0.000000e+00, %3137
  %3217 = call float @dx.op.unary.f32(i32 24, float %3210)  ; Sqrt(value)
  %3218 = fdiv fast float %3217, %3209
  %3219 = fcmp fast ogt float %3218, 0x3FFB6F8900000000
  %3220 = select i1 %3219, float 0x3FFB6F8900000000, float %3218
  %3221 = fmul fast float %3220, 0x3FE8A23460000000
  %3222 = call float @dx.op.unary.f32(i32 7, float %3221)  ; Saturate(value)
  %3223 = call float @dx.op.binary.f32(i32 35, float %3220, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3224 = fmul fast float %3222, %3209
  %3225 = fmul fast float %3223, 0x3FF279A740000000
  %3226 = fadd fast float %3225, -1.000000e+00
  %3227 = call float @dx.op.dot3.f32(i32 55, float %3215, float %3216, float %3140, float %3215, float %3216, float %3140)  ; Dot3(ax,ay,az,bx,by,bz)
  %3228 = call float @dx.op.unary.f32(i32 25, float %3227)  ; Rsqrt(value)
  %3229 = fmul fast float %3228, %3215
  %3230 = fmul fast float %3228, %3216
  %3231 = fmul fast float %3228, %3140
  %3232 = fmul fast float %3226, %3226
  %3233 = fsub fast float 1.000000e+00, %3232
  %3234 = fmul fast float %3223, 0x40005F8BE0000000
  %3235 = fsub fast float 0x400C5BF8A0000000, %3234
  %3236 = fdiv fast float %3224, %3235
  %3237 = fmul fast float %3236, 0x3FEE31C3C0000000
  %3238 = fmul fast float %3237, %3233
  %3239 = fmul fast float %3223, 0x3FDACB7480000000
  %3240 = fadd fast float %3239, 0xBFD7347680000000
  %3241 = fmul fast float %3240, %3236
  %3242 = fmul fast float %3241, %3233
  br label %3243

; <label>:3243                                    ; preds = %3214, %3187
  %3244 = phi float [ %3229, %3214 ], [ 0.000000e+00, %3187 ]
  %3245 = phi float [ %3230, %3214 ], [ 0.000000e+00, %3187 ]
  %3246 = phi float [ %3231, %3214 ], [ 0.000000e+00, %3187 ]
  %3247 = phi float [ %3238, %3214 ], [ 0.000000e+00, %3187 ]
  %3248 = phi float [ %3242, %3214 ], [ 0.000000e+00, %3187 ]
  %3249 = call float @dx.op.dot3.f32(i32 55, float %3244, float %3245, float %3246, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %3250 = fmul fast float %3249, %3249
  %3251 = fmul fast float %3250, 0x3FEE471020000000
  %3252 = fadd fast float %3251, 0xBFD42F6020000000
  %3253 = fmul fast float %3209, 0x3FD20DD760000000
  %3254 = fmul fast float %3252, %3248
  %3255 = fmul fast float %3247, 0x3FDF454380000000
  %3256 = fmul fast float %3255, %3249
  %3257 = fadd fast float %3256, %3253
  %3258 = fadd fast float %3257, %3254
  %3259 = call float @dx.op.dot3.f32(i32 55, float %3244, float %3245, float %3246, float %2137, float %2138, float %2139)  ; Dot3(ax,ay,az,bx,by,bz)
  %3260 = fmul fast float %3259, 0x3FDF454380000000
  %3261 = fmul fast float %3259, %3259
  %3262 = fmul fast float %3261, 0x3FEE471020000000
  %3263 = fadd fast float %3262, 0xBFD42F6020000000
  %3264 = call float @dx.op.dot3.f32(i32 55, float %3209, float %3247, float %3248, float 0x3FD20DD760000000, float %3260, float %3263)  ; Dot3(ax,ay,az,bx,by,bz)
  %3265 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3123)  ; FMax(a,b)
  %3266 = call float @dx.op.dot3.f32(i32 55, float %3146, float %3149, float %3152, float %3146, float %3149, float %3152)  ; Dot3(ax,ay,az,bx,by,bz)
  %3267 = fcmp fast oeq float %3266, 0.000000e+00
  %3268 = fcmp fast oeq float %3265, 0.000000e+00
  %3269 = or i1 %3268, %3267
  br i1 %3269, label %3299, label %3270

; <label>:3270                                    ; preds = %3243
  %3271 = fsub fast float -0.000000e+00, %3152
  %3272 = fsub fast float -0.000000e+00, %3146
  %3273 = call float @dx.op.unary.f32(i32 24, float %3266)  ; Sqrt(value)
  %3274 = fdiv fast float %3273, %3265
  %3275 = fcmp fast ogt float %3274, 0x3FFB6F8900000000
  %3276 = select i1 %3275, float 0x3FFB6F8900000000, float %3274
  %3277 = fmul fast float %3276, 0x3FE8A23460000000
  %3278 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3279 = call float @dx.op.binary.f32(i32 35, float %3276, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3280 = fmul fast float %3278, %3265
  %3281 = fmul fast float %3279, 0x3FF279A740000000
  %3282 = fadd fast float %3281, -1.000000e+00
  %3283 = call float @dx.op.dot3.f32(i32 55, float %3271, float %3272, float %3149, float %3271, float %3272, float %3149)  ; Dot3(ax,ay,az,bx,by,bz)
  %3284 = call float @dx.op.unary.f32(i32 25, float %3283)  ; Rsqrt(value)
  %3285 = fmul fast float %3284, %3271
  %3286 = fmul fast float %3284, %3272
  %3287 = fmul fast float %3284, %3149
  %3288 = fmul fast float %3282, %3282
  %3289 = fsub fast float 1.000000e+00, %3288
  %3290 = fmul fast float %3279, 0x40005F8BE0000000
  %3291 = fsub fast float 0x400C5BF8A0000000, %3290
  %3292 = fdiv fast float %3280, %3291
  %3293 = fmul fast float %3292, 0x3FEE31C3C0000000
  %3294 = fmul fast float %3293, %3289
  %3295 = fmul fast float %3279, 0x3FDACB7480000000
  %3296 = fadd fast float %3295, 0xBFD7347680000000
  %3297 = fmul fast float %3296, %3292
  %3298 = fmul fast float %3297, %3289
  br label %3299

; <label>:3299                                    ; preds = %3270, %3243
  %3300 = phi float [ %3285, %3270 ], [ 0.000000e+00, %3243 ]
  %3301 = phi float [ %3286, %3270 ], [ 0.000000e+00, %3243 ]
  %3302 = phi float [ %3287, %3270 ], [ 0.000000e+00, %3243 ]
  %3303 = phi float [ %3294, %3270 ], [ 0.000000e+00, %3243 ]
  %3304 = phi float [ %3298, %3270 ], [ 0.000000e+00, %3243 ]
  %3305 = call float @dx.op.dot3.f32(i32 55, float %3300, float %3301, float %3302, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %3306 = fmul fast float %3305, %3305
  %3307 = fmul fast float %3306, 0x3FEE471020000000
  %3308 = fadd fast float %3307, 0xBFD42F6020000000
  %3309 = fmul fast float %3265, 0x3FD20DD760000000
  %3310 = fmul fast float %3308, %3304
  %3311 = fmul fast float %3303, 0x3FDF454380000000
  %3312 = fmul fast float %3311, %3305
  %3313 = fadd fast float %3312, %3309
  %3314 = fadd fast float %3313, %3310
  %3315 = call float @dx.op.dot3.f32(i32 55, float %3300, float %3301, float %3302, float %2137, float %2138, float %2139)  ; Dot3(ax,ay,az,bx,by,bz)
  %3316 = fmul fast float %3315, 0x3FDF454380000000
  %3317 = fmul fast float %3315, %3315
  %3318 = fmul fast float %3317, 0x3FEE471020000000
  %3319 = fadd fast float %3318, 0xBFD42F6020000000
  %3320 = call float @dx.op.dot3.f32(i32 55, float %3265, float %3303, float %3304, float 0x3FD20DD760000000, float %3316, float %3319)  ; Dot3(ax,ay,az,bx,by,bz)
  %3321 = call float @dx.op.binary.f32(i32 35, float %3202, float 0.000000e+00)  ; FMax(a,b)
  %3322 = call float @dx.op.binary.f32(i32 35, float %3258, float 0.000000e+00)  ; FMax(a,b)
  %3323 = call float @dx.op.binary.f32(i32 35, float %3314, float 0.000000e+00)  ; FMax(a,b)
  %3324 = call float @dx.op.binary.f32(i32 35, float %3208, float 0.000000e+00)  ; FMax(a,b)
  %3325 = call float @dx.op.binary.f32(i32 35, float %3264, float 0.000000e+00)  ; FMax(a,b)
  %3326 = call float @dx.op.binary.f32(i32 35, float %3320, float 0.000000e+00)  ; FMax(a,b)
  %3327 = fsub fast float %2521, %3321
  %3328 = fsub fast float %2522, %3322
  %3329 = fsub fast float %2523, %3323
  %3330 = fmul fast float %3327, %2200
  %3331 = fmul fast float %3328, %2200
  %3332 = fmul fast float %3329, %2200
  %3333 = fadd fast float %3330, %3321
  %3334 = fadd fast float %3331, %3322
  %3335 = fadd fast float %3332, %3323
  %3336 = fsub fast float %2518, %3324
  %3337 = fsub fast float %2519, %3325
  %3338 = fsub fast float %2520, %3326
  %3339 = fmul fast float %3336, %2200
  %3340 = fmul fast float %3337, %2200
  %3341 = fmul fast float %3338, %2200
  %3342 = fadd fast float %3339, %3324
  %3343 = fadd fast float %3340, %3325
  %3344 = fadd fast float %3341, %3326
  %3345 = fsub fast float %2302, %3125
  %3346 = fmul fast float %3345, %2200
  %3347 = fadd fast float %3346, %3125
  br label %3348

; <label>:3348                                    ; preds = %3299, %2517
  %3349 = phi float [ %3347, %3299 ], [ %2302, %2517 ]
  %3350 = phi float [ %3342, %3299 ], [ %2518, %2517 ]
  %3351 = phi float [ %3343, %3299 ], [ %2519, %2517 ]
  %3352 = phi float [ %3344, %3299 ], [ %2520, %2517 ]
  %3353 = phi float [ %3333, %3299 ], [ %2521, %2517 ]
  %3354 = phi float [ %3334, %3299 ], [ %2522, %2517 ]
  %3355 = phi float [ %3335, %3299 ], [ %2523, %2517 ]
  %3356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3357 = extractvalue %dx.types.CBufRet.f32 %3356, 0
  %3358 = call float @dx.op.binary.f32(i32 36, float %2123, float %3357)  ; FMin(a,b)
  %3359 = fmul fast float %3358, %2141
  %3360 = fsub fast float 1.000000e+00, %3359
  %3361 = bitcast float %3360 to i32
  %3362 = sub nsw i32 2129859010, %3361
  %3363 = bitcast i32 %3362 to float
  %3364 = call float @dx.op.binary.f32(i32 36, float %2124, float %3357)  ; FMin(a,b)
  %3365 = fmul fast float %3364, %2141
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = bitcast float %3366 to i32
  %3368 = sub nsw i32 2129859010, %3367
  %3369 = bitcast i32 %3368 to float
  %3370 = call float @dx.op.binary.f32(i32 36, float %2125, float %3357)  ; FMin(a,b)
  %3371 = fmul fast float %3370, %2141
  %3372 = fsub fast float 1.000000e+00, %3371
  %3373 = bitcast float %3372 to i32
  %3374 = sub nsw i32 2129859010, %3373
  %3375 = bitcast i32 %3374 to float
  %3376 = fmul fast float %3353, %2140
  %3377 = fmul fast float %3376, %3363
  %3378 = fmul fast float %3354, %2140
  %3379 = fmul fast float %3378, %3369
  %3380 = fmul fast float %3355, %2140
  %3381 = fmul fast float %3380, %3375
  %3382 = call float @dx.op.binary.f32(i32 36, float %2117, float %3357)  ; FMin(a,b)
  %3383 = fmul fast float %3382, %2141
  %3384 = fsub fast float 1.000000e+00, %3383
  %3385 = bitcast float %3384 to i32
  %3386 = sub nsw i32 2129859010, %3385
  %3387 = bitcast i32 %3386 to float
  %3388 = call float @dx.op.binary.f32(i32 36, float %2118, float %3357)  ; FMin(a,b)
  %3389 = fmul fast float %3388, %2141
  %3390 = fsub fast float 1.000000e+00, %3389
  %3391 = bitcast float %3390 to i32
  %3392 = sub nsw i32 2129859010, %3391
  %3393 = bitcast i32 %3392 to float
  %3394 = call float @dx.op.binary.f32(i32 36, float %2129, float %3357)  ; FMin(a,b)
  %3395 = fmul fast float %3394, %2141
  %3396 = fsub fast float 1.000000e+00, %3395
  %3397 = bitcast float %3396 to i32
  %3398 = sub nsw i32 2129859010, %3397
  %3399 = bitcast i32 %3398 to float
  %3400 = fmul fast float %3350, %2140
  %3401 = fmul fast float %3400, %3387
  %3402 = fmul fast float %3351, %2140
  %3403 = fmul fast float %3402, %3393
  %3404 = fmul fast float %3352, %2140
  %3405 = fmul fast float %3404, %3399
  %3406 = call float @dx.op.dot3.f32(i32 55, float %3377, float %3379, float %3381, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3407 = select i1 %247, float 0.000000e+00, float %3377
  %3408 = select i1 %247, float %3406, float %3379
  %3409 = select i1 %247, float 0.000000e+00, float %3381
  %3410 = call float @dx.op.dot3.f32(i32 55, float %3401, float %3403, float %3405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3411 = select i1 %247, float 0.000000e+00, float %3401
  %3412 = select i1 %247, float %3410, float %3403
  %3413 = select i1 %247, float 0.000000e+00, float %3405
  %3414 = fmul fast float %2131, 9.843750e-01
  %3415 = fmul fast float %2126, 9.843750e-01
  %3416 = fadd fast float %3414, 7.812500e-03
  %3417 = fadd fast float %3415, 7.812500e-03
  %3418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3416, float %3417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 2
  %3420 = extractvalue %dx.types.ResRet.f32 %3418, 3
  %3421 = fmul fast float %3419, %2117
  %3422 = fmul fast float %3419, %2118
  %3423 = fmul fast float %3419, %2129
  %3424 = fadd fast float %3421, %3420
  %3425 = fadd fast float %3422, %3420
  %3426 = fadd fast float %3423, %3420
  %3427 = fcmp fast ogt float %1494, 0.000000e+00
  br i1 %3427, label %3428, label %3454

; <label>:3428                                    ; preds = %3348
  %3429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1494, float %2131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3431 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3432 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3433 = fadd fast float %3430, -5.000000e-01
  %3434 = fadd fast float %3431, -5.000000e-01
  %3435 = fadd fast float %3432, -5.000000e-01
  %3436 = fsub fast float 1.000000e+00, %2117
  %3437 = fsub fast float 1.000000e+00, %2118
  %3438 = fsub fast float 1.000000e+00, %2129
  %3439 = fmul fast float %2117, 4.000000e+00
  %3440 = fmul fast float %3439, %3436
  %3441 = fmul fast float %3440, %3433
  %3442 = fmul fast float %2118, 4.000000e+00
  %3443 = fmul fast float %3442, %3437
  %3444 = fmul fast float %3443, %3434
  %3445 = fmul fast float %2129, 4.000000e+00
  %3446 = fmul fast float %3445, %3438
  %3447 = fmul fast float %3446, %3435
  %3448 = fadd fast float %3441, %3424
  %3449 = fadd fast float %3444, %3425
  %3450 = fadd fast float %3447, %3426
  %3451 = call float @dx.op.unary.f32(i32 7, float %3448)  ; Saturate(value)
  %3452 = call float @dx.op.unary.f32(i32 7, float %3449)  ; Saturate(value)
  %3453 = call float @dx.op.unary.f32(i32 7, float %3450)  ; Saturate(value)
  br label %3454

; <label>:3454                                    ; preds = %3428, %3348
  %3455 = phi float [ %3451, %3428 ], [ %3424, %3348 ]
  %3456 = phi float [ %3452, %3428 ], [ %3425, %3348 ]
  %3457 = phi float [ %3453, %3428 ], [ %3426, %3348 ]
  %3458 = call float @dx.op.binary.f32(i32 35, float %3456, float %3457)  ; FMax(a,b)
  %3459 = call float @dx.op.binary.f32(i32 35, float %3455, float %3458)  ; FMax(a,b)
  %3460 = fsub fast float 1.000000e+00, %3459
  %3461 = fmul fast float %3459, %2126
  %3462 = fadd fast float %3461, %2126
  %3463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3464 = extractvalue %dx.types.CBufRet.f32 %3463, 2
  %3465 = extractvalue %dx.types.CBufRet.f32 %3463, 3
  %3466 = fmul fast float %3462, %3464
  %3467 = fadd fast float %3466, %3465
  %3468 = call float @dx.op.unary.f32(i32 7, float %3467)  ; Saturate(value)
  %3469 = fsub fast float 1.000000e+00, %2152
  %3470 = fadd fast float %3469, %3468
  %3471 = call float @dx.op.unary.f32(i32 7, float %3470)  ; Saturate(value)
  %3472 = fcmp fast olt float %3471, 1.000000e+00
  br i1 %3472, label %3473, label %3949

; <label>:3473                                    ; preds = %3454
  %3474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.f32 %3474, 2
  %3476 = extractvalue %dx.types.CBufRet.f32 %3474, 3
  %3477 = fmul fast float %3475, %101
  %3478 = fmul fast float %3476, %102
  %3479 = fptoui float %3477 to i32
  %3480 = fptoui float %3478 to i32
  %3481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3482 = extractvalue %dx.types.CBufRet.f32 %3481, 0
  %3483 = extractvalue %dx.types.CBufRet.f32 %3481, 2
  %3484 = extractvalue %dx.types.CBufRet.f32 %3481, 3
  %3485 = fadd fast float %89, -4.000000e+00
  %3486 = call float @dx.op.binary.f32(i32 35, float %3485, float 0.000000e+00)  ; FMax(a,b)
  %3487 = fadd fast float %3486, %3482
  %3488 = fmul fast float %3487, %3483
  %3489 = call float @dx.op.unary.f32(i32 23, float %3488)  ; Log(value)
  %3490 = fmul fast float %3489, %3484
  %3491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3492 = extractvalue %dx.types.CBufRet.f32 %3491, 2
  %3493 = fmul fast float %3490, %3492
  %3494 = call float @dx.op.unary.f32(i32 7, float %3493)  ; Saturate(value)
  %3495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.i32 %3495, 1
  %3497 = add i32 %3496, -1
  %3498 = uitofp i32 %3496 to float
  %3499 = fmul fast float %3498, %3494
  %3500 = fptoui float %3499 to i32
  %3501 = call i32 @dx.op.binary.i32(i32 40, i32 %3500, i32 %3497)  ; UMin(a,b)
  %3502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3503 = extractvalue %dx.types.CBufRet.i32 %3502, 2
  %3504 = extractvalue %dx.types.CBufRet.i32 %3502, 3
  %3505 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3480, i32 %3503, i32 %3479)  ; UMad(a,b,c)
  %3506 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3501, i32 %3504, i32 %3505)  ; UMad(a,b,c)
  %3507 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %3508 = fptoui float %3507 to i32
  %3509 = lshr i32 %3508, 5
  %3510 = call i32 @dx.op.binary.i32(i32 40, i32 %3509, i32 8191)  ; UMin(a,b)
  %3511 = fsub fast float %1916, %158
  %3512 = call float @dx.op.unary.f32(i32 7, float %3511)  ; Saturate(value)
  %3513 = fcmp fast ogt float %3512, 0.000000e+00
  %3514 = fcmp fast ogt float %2139, 0.000000e+00
  %3515 = and i1 %3514, %3513
  br i1 %3515, label %3516, label %3545

; <label>:3516                                    ; preds = %3473
  %3517 = call float @dx.op.dot3.f32(i32 55, float %2137, float %2138, float %2139, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3518 = call float @dx.op.binary.f32(i32 35, float %3517, float -1.000000e+00)  ; FMax(a,b)
  %3519 = call float @dx.op.binary.f32(i32 36, float %3518, float 1.000000e+00)  ; FMin(a,b)
  %3520 = fmul fast float %3519, %3519
  %3521 = fsub fast float 1.000000e+00, %3520
  %3522 = fmul fast float %3521, 0x3FFC6E2300000000
  %3523 = fsub fast float 1.000000e+00, %3522
  %3524 = fcmp fast ogt float %3523, 0.000000e+00
  %3525 = call float @dx.op.unary.f32(i32 24, float %3523)  ; Sqrt(value)
  %3526 = fsub fast float 1.000000e+00, %3525
  %3527 = call float @dx.op.unary.f32(i32 23, float %3526)  ; Log(value)
  %3528 = fmul fast float %3527, 5.000000e+00
  %3529 = call float @dx.op.unary.f32(i32 21, float %3528)  ; Exp(value)
  %3530 = fmul fast float %3529, 0x3FEF591A60000000
  %3531 = fadd fast float %3530, 0x3F94DCB540000000
  %3532 = select i1 %3524, float %3531, float 1.000000e+00
  %3533 = fcmp fast oge float %3532, 1.000000e+00
  %3534 = fmul fast float %3517, 2.000000e+00
  %3535 = fadd fast float %3534, %2139
  %3536 = select i1 %3533, float %3535, float %2139
  %3537 = fsub fast float %3536, %2139
  %3538 = fmul fast float %3537, %3512
  %3539 = fadd fast float %3538, %2139
  %3540 = call float @dx.op.dot3.f32(i32 55, float %2137, float %2138, float %3539, float %2137, float %2138, float %3539)  ; Dot3(ax,ay,az,bx,by,bz)
  %3541 = call float @dx.op.unary.f32(i32 25, float %3540)  ; Rsqrt(value)
  %3542 = fmul fast float %3541, %2137
  %3543 = fmul fast float %3541, %2138
  %3544 = fmul fast float %3539, %3541
  br label %3545

; <label>:3545                                    ; preds = %3516, %3473
  %3546 = phi float [ %3542, %3516 ], [ %2137, %3473 ]
  %3547 = phi float [ %3543, %3516 ], [ %2138, %3473 ]
  %3548 = phi float [ %3544, %3516 ], [ %2139, %3473 ]
  %3549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3550 = extractvalue %dx.types.CBufRet.i32 %3549, 2
  %3551 = add nsw i32 %3550, -1
  %3552 = call i32 @dx.op.binary.i32(i32 37, i32 %3551, i32 0)  ; IMax(a,b)
  %3553 = shl i32 %3510, 2
  %3554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3553, i32 undef)  ; BufferLoad(srv,index,wot)
  %3555 = extractvalue %dx.types.ResRet.i32 %3554, 0
  %3556 = lshr i32 %3555, 16
  %3557 = and i32 %3555, 65535
  %3558 = lshr i32 %3555, 21
  %3559 = lshr i32 %3557, 5
  %3560 = call i32 @dx.op.binary.i32(i32 40, i32 %3559, i32 %3552)  ; UMin(a,b)
  %3561 = icmp ugt i32 %3558, %3560
  br i1 %3561, label %3925, label %3562

; <label>:3562                                    ; preds = %3545
  br label %3563

; <label>:3563                                    ; preds = %3917, %3562
  %3564 = phi float [ %3918, %3917 ], [ 0.000000e+00, %3562 ]
  %3565 = phi float [ %3919, %3917 ], [ 0.000000e+00, %3562 ]
  %3566 = phi float [ %3920, %3917 ], [ 0.000000e+00, %3562 ]
  %3567 = phi float [ %3921, %3917 ], [ 1.000000e+00, %3562 ]
  %3568 = phi i32 [ %3922, %3917 ], [ %3558, %3562 ]
  %3569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3570 = extractvalue %dx.types.CBufRet.i32 %3569, 2
  %3571 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3506, i32 %3570, i32 %3568)  ; UMad(a,b,c)
  %3572 = shl i32 %3571, 2
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3572, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = shl i32 %3568, 5
  %3576 = sub nsw i32 %3556, %3575
  %3577 = call i32 @dx.op.binary.i32(i32 37, i32 %3576, i32 0)  ; IMax(a,b)
  %3578 = call i32 @dx.op.binary.i32(i32 38, i32 %3577, i32 31)  ; IMin(a,b)
  %3579 = sub nsw i32 1, %3556
  %3580 = add nsw i32 %3579, %3557
  %3581 = call i32 @dx.op.binary.i32(i32 37, i32 %3580, i32 0)  ; IMax(a,b)
  %3582 = call i32 @dx.op.binary.i32(i32 38, i32 %3581, i32 32)  ; IMin(a,b)
  %3583 = and i32 %3582, 31
  %3584 = shl i32 -1, %3583
  %3585 = xor i32 %3584, -1
  %3586 = and i32 %3578, 31
  %3587 = shl i32 %3585, %3586
  %3588 = icmp eq i32 %3582, 32
  %3589 = select i1 %3588, i32 -1, i32 %3587
  %3590 = and i32 %3589, %3574
  %3591 = icmp eq i32 %3590, 0
  br i1 %3591, label %3917, label %3592

; <label>:3592                                    ; preds = %3563
  br label %3593

; <label>:3593                                    ; preds = %3700, %3592
  %3594 = phi float [ %3701, %3700 ], [ %3564, %3592 ]
  %3595 = phi float [ %3702, %3700 ], [ %3565, %3592 ]
  %3596 = phi float [ %3703, %3700 ], [ %3566, %3592 ]
  %3597 = phi float [ %3704, %3700 ], [ %3567, %3592 ]
  %3598 = phi i32 [ %3603, %3700 ], [ %3590, %3592 ]
  %3599 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3598)  ; FirstbitLo(value)
  %3600 = add i32 %3599, %3575
  %3601 = and i32 %3599, 31
  %3602 = shl i32 1, %3601
  %3603 = xor i32 %3602, %3598
  %3604 = mul i32 %3600, 72
  %3605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.ResRet.f32 %3605, 1
  %3608 = extractvalue %dx.types.ResRet.f32 %3605, 2
  %3609 = add i32 %3604, 12
  %3610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.i32 %3610, 0
  %3612 = add i32 %3604, 16
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = add i32 %3604, 28
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = add i32 %3604, 32
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = extractvalue %dx.types.ResRet.f32 %3621, 3
  %3626 = add i32 %3604, 48
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = add i32 %3604, 56
  %3631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.f32 %3631, 0
  %3633 = extractvalue %dx.types.ResRet.f32 %3631, 1
  %3634 = add i32 %3604, 64
  %3635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.ResRet.f32 %3635, 1
  %3638 = mul i32 %3600, 60
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = add i32 %3638, 12
  %3644 = add i32 %3638, 48
  %3645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.ResRet.f32 %3645, 2
  %3649 = and i32 %3611, 32767
  %3650 = bitcast float %3606 to i32
  %3651 = icmp eq i32 %3650, -1
  %3652 = bitcast float %3607 to i32
  %3653 = and i32 %3611, 32768
  %3654 = icmp ne i32 %3653, 0
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.CBufRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %3659 = fsub fast float %3640, %3656
  %3660 = fsub fast float %3641, %3657
  %3661 = fsub fast float %3642, %3658
  %3662 = fsub fast float %156, %3659
  %3663 = fsub fast float %157, %3660
  %3664 = fsub fast float %158, %3661
  %3665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.f32 %3665, 0
  %3667 = extractvalue %dx.types.ResRet.f32 %3665, 1
  %3668 = extractvalue %dx.types.ResRet.f32 %3665, 2
  %3669 = call float @dx.op.dot3.f32(i32 55, float %3662, float %3663, float %3664, float %3666, float %3667, float %3668)  ; Dot3(ax,ay,az,bx,by,bz)
  %3670 = add i32 %3638, 24
  %3671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.f32 %3671, 0
  %3673 = extractvalue %dx.types.ResRet.f32 %3671, 1
  %3674 = extractvalue %dx.types.ResRet.f32 %3671, 2
  %3675 = call float @dx.op.dot3.f32(i32 55, float %3662, float %3663, float %3664, float %3672, float %3673, float %3674)  ; Dot3(ax,ay,az,bx,by,bz)
  %3676 = add i32 %3638, 36
  %3677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.ResRet.f32 %3677, 1
  %3680 = extractvalue %dx.types.ResRet.f32 %3677, 2
  %3681 = call float @dx.op.dot3.f32(i32 55, float %3662, float %3663, float %3664, float %3678, float %3679, float %3680)  ; Dot3(ax,ay,az,bx,by,bz)
  %3682 = call float @dx.op.unary.f32(i32 6, float %3669)  ; FAbs(value)
  %3683 = call float @dx.op.unary.f32(i32 6, float %3675)  ; FAbs(value)
  %3684 = call float @dx.op.unary.f32(i32 6, float %3681)  ; FAbs(value)
  %3685 = fsub fast float %3646, %3682
  %3686 = fsub fast float %3647, %3683
  %3687 = fsub fast float %3648, %3684
  %3688 = fmul fast float %3685, %3614
  %3689 = fmul fast float %3686, %3615
  %3690 = fmul fast float %3687, %3616
  %3691 = call float @dx.op.binary.f32(i32 36, float %3689, float %3690)  ; FMin(a,b)
  %3692 = call float @dx.op.binary.f32(i32 36, float %3688, float %3691)  ; FMin(a,b)
  %3693 = call float @dx.op.unary.f32(i32 7, float %3692)  ; Saturate(value)
  %3694 = call float @dx.op.binary.f32(i32 36, float %3597, float %3693)  ; FMin(a,b)
  %3695 = uitofp i1 %3654 to float
  %3696 = fadd fast float %3512, 1.000000e+00
  %3697 = fsub fast float %3696, %3695
  %3698 = fmul fast float %3694, %3697
  %3699 = fcmp fast ogt float %3698, 0.000000e+00
  br i1 %3699, label %3706, label %3700

; <label>:3700                                    ; preds = %3848, %3593
  %3701 = phi float [ %3912, %3848 ], [ %3594, %3593 ]
  %3702 = phi float [ %3913, %3848 ], [ %3595, %3593 ]
  %3703 = phi float [ %3914, %3848 ], [ %3596, %3593 ]
  %3704 = phi float [ %3915, %3848 ], [ %3597, %3593 ]
  %3705 = icmp eq i32 %3598, %3602
  br i1 %3705, label %3916, label %3593

; <label>:3706                                    ; preds = %3593
  br i1 %3651, label %3764, label %3707

; <label>:3707                                    ; preds = %3706
  %3708 = fsub fast float -0.000000e+00, %3666
  %3709 = fsub fast float -0.000000e+00, %3667
  %3710 = fsub fast float -0.000000e+00, %3668
  %3711 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %3708, float %3709, float %3710)  ; Dot3(ax,ay,az,bx,by,bz)
  %3712 = fsub fast float -0.000000e+00, %3711
  %3713 = call float @dx.op.dot3.f32(i32 55, float %3662, float %3663, float %3664, float %3708, float %3709, float %3710)  ; Dot3(ax,ay,az,bx,by,bz)
  %3714 = fadd fast float %3713, %3629
  %3715 = fadd fast float %3628, %3713
  %3716 = fsub fast float -0.000000e+00, %3715
  %3717 = fcmp ogt float %3711, -0.000000e+00
  %3718 = select i1 %3717, float %3716, float %3714
  %3719 = call float @dx.op.unary.f32(i32 6, float %3712)  ; FAbs(value)
  %3720 = fdiv fast float 1.000000e+00, %3719
  %3721 = fmul fast float %3718, %3720
  %3722 = call float @dx.op.binary.f32(i32 35, float %3721, float 0.000000e+00)  ; FMax(a,b)
  %3723 = fsub fast float -0.000000e+00, %3672
  %3724 = fsub fast float -0.000000e+00, %3673
  %3725 = fsub fast float -0.000000e+00, %3674
  %3726 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %3723, float %3724, float %3725)  ; Dot3(ax,ay,az,bx,by,bz)
  %3727 = fsub fast float -0.000000e+00, %3726
  %3728 = call float @dx.op.dot3.f32(i32 55, float %3662, float %3663, float %3664, float %3723, float %3724, float %3725)  ; Dot3(ax,ay,az,bx,by,bz)
  %3729 = fadd fast float %3728, %3633
  %3730 = fadd fast float %3632, %3728
  %3731 = fsub fast float -0.000000e+00, %3730
  %3732 = fcmp ogt float %3726, -0.000000e+00
  %3733 = select i1 %3732, float %3731, float %3729
  %3734 = call float @dx.op.unary.f32(i32 6, float %3727)  ; FAbs(value)
  %3735 = fdiv fast float 1.000000e+00, %3734
  %3736 = fmul fast float %3733, %3735
  %3737 = call float @dx.op.binary.f32(i32 35, float %3736, float 0.000000e+00)  ; FMax(a,b)
  %3738 = fsub fast float -0.000000e+00, %3678
  %3739 = fsub fast float -0.000000e+00, %3679
  %3740 = fsub fast float -0.000000e+00, %3680
  %3741 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %3738, float %3739, float %3740)  ; Dot3(ax,ay,az,bx,by,bz)
  %3742 = fsub fast float -0.000000e+00, %3741
  %3743 = call float @dx.op.dot3.f32(i32 55, float %3662, float %3663, float %3664, float %3738, float %3739, float %3740)  ; Dot3(ax,ay,az,bx,by,bz)
  %3744 = fadd fast float %3743, %3637
  %3745 = fadd fast float %3636, %3743
  %3746 = fsub fast float -0.000000e+00, %3745
  %3747 = fcmp ogt float %3741, -0.000000e+00
  %3748 = select i1 %3747, float %3746, float %3744
  %3749 = call float @dx.op.unary.f32(i32 6, float %3742)  ; FAbs(value)
  %3750 = fdiv fast float 1.000000e+00, %3749
  %3751 = fmul fast float %3748, %3750
  %3752 = call float @dx.op.binary.f32(i32 35, float %3751, float 0.000000e+00)  ; FMax(a,b)
  %3753 = call float @dx.op.binary.f32(i32 36, float %3737, float %3752)  ; FMin(a,b)
  %3754 = call float @dx.op.binary.f32(i32 36, float %3722, float %3753)  ; FMin(a,b)
  %3755 = fmul fast float %3754, %3546
  %3756 = fmul fast float %3754, %3547
  %3757 = fmul fast float %3754, %3548
  %3758 = fadd fast float %3755, %156
  %3759 = fadd fast float %3756, %157
  %3760 = fadd fast float %3757, %158
  %3761 = fsub fast float %3758, %3606
  %3762 = fsub fast float %3759, %3607
  %3763 = fsub fast float %3760, %3608
  br label %3771

; <label>:3764                                    ; preds = %3706
  %3765 = fmul fast float %3546, 8.096000e+03
  %3766 = fmul fast float %3547, 8.096000e+03
  %3767 = fmul fast float %3548, 8.096000e+03
  %3768 = fadd fast float %3765, %156
  %3769 = fadd fast float %3766, %157
  %3770 = fadd fast float %3767, %158
  br label %3771

; <label>:3771                                    ; preds = %3764, %3707
  %3772 = phi float [ %3546, %3764 ], [ %3761, %3707 ]
  %3773 = phi float [ %3547, %3764 ], [ %3762, %3707 ]
  %3774 = phi float [ %3548, %3764 ], [ %3763, %3707 ]
  %3775 = phi float [ %3768, %3764 ], [ %3758, %3707 ]
  %3776 = phi float [ %3769, %3764 ], [ %3759, %3707 ]
  %3777 = phi float [ %3770, %3764 ], [ %3760, %3707 ]
  %3778 = fcmp fast olt float %3625, 1.000000e+00
  br i1 %3778, label %3779, label %3810, !dx.controlflow.hints !112

; <label>:3779                                    ; preds = %3771
  %3780 = fmul fast float %3774, %3623
  %3781 = fmul fast float %3773, %3624
  %3782 = fsub fast float %3780, %3781
  %3783 = fmul fast float %3772, %3624
  %3784 = fmul fast float %3774, %3622
  %3785 = fsub fast float %3783, %3784
  %3786 = fmul fast float %3773, %3622
  %3787 = fmul fast float %3772, %3623
  %3788 = fsub fast float %3786, %3787
  %3789 = fmul fast float %3782, 2.000000e+00
  %3790 = fmul fast float %3785, 2.000000e+00
  %3791 = fmul fast float %3788, 2.000000e+00
  %3792 = fmul fast float %3789, %3625
  %3793 = fmul fast float %3790, %3625
  %3794 = fmul fast float %3791, %3625
  %3795 = fmul fast float %3791, %3623
  %3796 = fmul fast float %3790, %3624
  %3797 = fmul fast float %3789, %3624
  %3798 = fmul fast float %3791, %3622
  %3799 = fmul fast float %3790, %3622
  %3800 = fmul fast float %3789, %3623
  %3801 = fadd fast float %3795, %3772
  %3802 = fadd fast float %3801, %3792
  %3803 = fsub fast float %3802, %3796
  %3804 = fsub fast float %3773, %3798
  %3805 = fadd fast float %3804, %3793
  %3806 = fadd fast float %3805, %3797
  %3807 = fadd fast float %3794, %3774
  %3808 = fsub fast float %3807, %3800
  %3809 = fadd fast float %3808, %3799
  br label %3810

; <label>:3810                                    ; preds = %3779, %3771
  %3811 = phi float [ %3803, %3779 ], [ %3772, %3771 ]
  %3812 = phi float [ %3806, %3779 ], [ %3773, %3771 ]
  %3813 = phi float [ %3809, %3779 ], [ %3774, %3771 ]
  br i1 %3651, label %3845, label %3814

; <label>:3814                                    ; preds = %3810
  %3815 = fmul fast float %2126, 0x400187C840000000
  %3816 = fadd fast float %3815, 0xC00EFC2120000000
  %3817 = fmul fast float %3816, %2126
  %3818 = fadd fast float %3817, 0x3FE5D16340000000
  %3819 = fmul fast float %3818, %2126
  %3820 = fadd fast float %3819, 1.000000e+00
  %3821 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3822 = fsub fast float %3775, %156
  %3823 = fsub fast float %3776, %157
  %3824 = fsub fast float %3777, %158
  %3825 = fsub fast float %3775, %3606
  %3826 = fsub fast float %3776, %3607
  %3827 = fsub fast float %3777, %3608
  %3828 = call float @dx.op.dot3.f32(i32 55, float %3822, float %3823, float %3824, float %3822, float %3823, float %3824)  ; Dot3(ax,ay,az,bx,by,bz)
  %3829 = call float @dx.op.dot3.f32(i32 55, float %3825, float %3826, float %3827, float %3825, float %3826, float %3827)  ; Dot3(ax,ay,az,bx,by,bz)
  %3830 = fadd fast float %3829, 0x3EE4F8B580000000
  %3831 = fdiv fast float %3828, %3830
  %3832 = bitcast float %3831 to i32
  %3833 = ashr i32 %3832, 1
  %3834 = add nsw i32 %3833, 532487669
  %3835 = bitcast i32 %3834 to float
  %3836 = fmul fast float %3835, %3821
  %3837 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3838 = fmul fast float %3837, 0x4009981AE0000000
  %3839 = fsub fast float 0x40111BBD80000000, %3838
  %3840 = fmul fast float %3839, %3837
  %3841 = fadd fast float %3840, 0xC0009F6020000000
  %3842 = fmul fast float %3841, %3837
  %3843 = fadd fast float %3842, 1.000000e+00
  %3844 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  br label %3848

; <label>:3845                                    ; preds = %3810
  %3846 = icmp ne i32 %3652, -1
  %3847 = zext i1 %3846 to i32
  br label %3848

; <label>:3848                                    ; preds = %3845, %3814
  %3849 = phi float [ %2126, %3845 ], [ %3844, %3814 ]
  %3850 = phi i32 [ %3847, %3845 ], [ 0, %3814 ]
  %3851 = fmul float %3849, 5.000000e+00
  %3852 = fsub float 5.000000e+00, %3851
  %3853 = icmp ne i32 %3850, 0
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 3
  %3856 = fadd fast float %3855, %3852
  %3857 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3856)  ; FMax(a,b)
  %3858 = call float @dx.op.unary.f32(i32 6, float %3811)  ; FAbs(value)
  %3859 = call float @dx.op.unary.f32(i32 6, float %3812)  ; FAbs(value)
  %3860 = fadd fast float %3859, %3858
  %3861 = call float @dx.op.unary.f32(i32 6, float %3813)  ; FAbs(value)
  %3862 = fadd fast float %3860, %3861
  %3863 = fcmp fast oeq float %3862, 0.000000e+00
  %3864 = fdiv fast float 1.000000e+00, %3862
  %3865 = select i1 %3863, float 1.000000e+00, float %3864
  %3866 = fmul fast float %3865, %3811
  %3867 = fmul fast float %3865, %3812
  %3868 = call float @dx.op.unary.f32(i32 6, float %3867)  ; FAbs(value)
  %3869 = call float @dx.op.unary.f32(i32 6, float %3866)  ; FAbs(value)
  %3870 = fsub fast float 1.000000e+00, %3868
  %3871 = fsub fast float 1.000000e+00, %3869
  %3872 = fcmp fast oge float %3866, 0.000000e+00
  %3873 = fcmp fast oge float %3867, 0.000000e+00
  %3874 = select i1 %3872, float 1.000000e+00, float -1.000000e+00
  %3875 = select i1 %3873, float 1.000000e+00, float -1.000000e+00
  %3876 = fcmp fast ole float %3813, 0.000000e+00
  %3877 = fmul fast float %3874, %3870
  %3878 = fmul fast float %3875, %3871
  %3879 = select i1 %3876, float %3877, float %3866
  %3880 = select i1 %3876, float %3878, float %3867
  %3881 = fmul fast float %3879, 5.000000e-01
  %3882 = fmul fast float %3880, 5.000000e-01
  %3883 = fadd fast float %3881, 5.000000e-01
  %3884 = fadd fast float %3882, 5.000000e-01
  %3885 = uitofp i32 %3649 to float
  %3886 = call float @dx.op.binary.f32(i32 36, float %3857, float 3.000000e+00)  ; FMin(a,b)
  %3887 = fadd fast float %3886, 2.000000e+00
  %3888 = call float @dx.op.unary.f32(i32 21, float %3887)  ; Exp(value)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3854, 1
  %3890 = fmul fast float %3889, %3888
  %3891 = fmul fast float %3890, 2.000000e+00
  %3892 = fsub fast float 1.000000e+00, %3891
  %3893 = fmul fast float %3883, %3892
  %3894 = fmul fast float %3884, %3892
  %3895 = fadd fast float %3893, %3890
  %3896 = fadd fast float %3894, %3890
  %3897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %3895, float %3896, float %3885, float undef, i32 0, i32 0, i32 undef, float %3857)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3897, 2
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 3
  %3903 = fmul fast float %3902, %3619
  %3904 = call float @dx.op.binary.f32(i32 36, float %3349, float %3903)  ; FMin(a,b)
  %3905 = select i1 %3853, float %3904, float %3903
  %3906 = fmul fast float %3898, %3698
  %3907 = fmul fast float %3906, %3905
  %3908 = fmul fast float %3899, %3698
  %3909 = fmul fast float %3908, %3905
  %3910 = fmul fast float %3900, %3698
  %3911 = fmul fast float %3910, %3905
  %3912 = fadd fast float %3907, %3594
  %3913 = fadd fast float %3909, %3595
  %3914 = fadd fast float %3911, %3596
  %3915 = fsub fast float %3597, %3698
  br label %3700

; <label>:3916                                    ; preds = %3700
  br label %3917

; <label>:3917                                    ; preds = %3916, %3563
  %3918 = phi float [ %3564, %3563 ], [ %3701, %3916 ]
  %3919 = phi float [ %3565, %3563 ], [ %3702, %3916 ]
  %3920 = phi float [ %3566, %3563 ], [ %3703, %3916 ]
  %3921 = phi float [ %3567, %3563 ], [ %3704, %3916 ]
  %3922 = add i32 %3568, 1
  %3923 = icmp ugt i32 %3922, %3560
  br i1 %3923, label %3924, label %3563, !llvm.loop !113

; <label>:3924                                    ; preds = %3917
  br label %3925

; <label>:3925                                    ; preds = %3924, %3545
  %3926 = phi float [ 0.000000e+00, %3545 ], [ %3918, %3924 ]
  %3927 = phi float [ 0.000000e+00, %3545 ], [ %3919, %3924 ]
  %3928 = phi float [ 0.000000e+00, %3545 ], [ %3920, %3924 ]
  %3929 = call float @dx.op.dot3.f32(i32 55, float %3926, float %3927, float %3928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3930 = select i1 %247, float 0.000000e+00, float %3926
  %3931 = select i1 %247, float %3929, float %3927
  %3932 = select i1 %247, float 0.000000e+00, float %3928
  %3933 = fcmp fast olt float %3471, 0.000000e+00
  %3934 = call float @dx.op.unary.f32(i32 6, float %3471)  ; FAbs(value)
  %3935 = fmul fast float %3934, %3411
  %3936 = fmul fast float %3934, %3412
  %3937 = fmul fast float %3934, %3413
  %3938 = select i1 %3933, float %3411, float %3935
  %3939 = select i1 %3933, float %3412, float %3936
  %3940 = select i1 %3933, float %3413, float %3937
  %3941 = fsub fast float 1.000000e+00, %3934
  %3942 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3943 = fmul fast float %3942, %3930
  %3944 = fmul fast float %3942, %3931
  %3945 = fmul fast float %3942, %3932
  %3946 = fadd fast float %3938, %3943
  %3947 = fadd fast float %3939, %3944
  %3948 = fadd fast float %3940, %3945
  br label %3949

; <label>:3949                                    ; preds = %3925, %3454
  %3950 = phi float [ %3411, %3454 ], [ %3946, %3925 ]
  %3951 = phi float [ %3412, %3454 ], [ %3947, %3925 ]
  %3952 = phi float [ %3413, %3454 ], [ %3948, %3925 ]
  %3953 = fmul fast float %3460, %3407
  %3954 = fmul fast float %3460, %3408
  %3955 = fmul fast float %3460, %3409
  %3956 = call float @dx.op.dot3.f32(i32 55, float %2123, float %2124, float %2125, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3957 = fcmp fast ogt float %3956, 0x3E7FF19E20000000
  %3958 = fdiv fast float 1.000000e+00, %3956
  %3959 = select i1 %3957, float %3958, float 0.000000e+00
  %3960 = fmul fast float %3959, %2123
  %3961 = fmul fast float %3959, %2124
  %3962 = fmul fast float %3959, %2125
  %3963 = fadd fast float %3960, -1.000000e+00
  %3964 = fadd fast float %3961, -1.000000e+00
  %3965 = fadd fast float %3962, -1.000000e+00
  %3966 = fmul fast float %3963, 5.000000e-01
  %3967 = fmul fast float %3964, 5.000000e-01
  %3968 = fmul fast float %3965, 5.000000e-01
  %3969 = fadd fast float %3966, 1.000000e+00
  %3970 = fadd fast float %3967, 1.000000e+00
  %3971 = fadd fast float %3968, 1.000000e+00
  %3972 = fmul fast float %3950, %3455
  %3973 = fmul fast float %3951, %3456
  %3974 = fmul fast float %3952, %3457
  %3975 = fsub fast float 1.000000e+00, %2131
  %3976 = bitcast float %3975 to i32
  %3977 = sitofp i32 %3976 to float
  %3978 = fmul fast float %3977, 5.000000e+00
  %3979 = fadd fast float %3978, 0xC1EFBF8940000000
  %3980 = fptosi float %3979 to i32
  %3981 = bitcast i32 %3980 to float
  %3982 = fmul fast float %3981, %1493
  %3983 = fmul fast float %3407, %3982
  %3984 = fmul fast float %3983, %3460
  %3985 = fmul fast float %3984, %3969
  %3986 = fmul fast float %3408, %3982
  %3987 = fmul fast float %3986, %3460
  %3988 = fmul fast float %3987, %3970
  %3989 = fmul fast float %3409, %3982
  %3990 = fmul fast float %3989, %3460
  %3991 = fmul fast float %3990, %3971
  %3992 = fmul fast float %3953, %1514
  %3993 = fmul fast float %3954, %1514
  %3994 = fmul fast float %3955, %1514
  %3995 = fadd fast float %3972, %1495
  %3996 = fadd fast float %3995, %3985
  %3997 = fmul fast float %3996, %1514
  %3998 = fadd fast float %3973, %1496
  %3999 = fadd fast float %3998, %3988
  %4000 = fmul fast float %3999, %1514
  %4001 = fadd fast float %3974, %1497
  %4002 = fadd fast float %4001, %3991
  %4003 = fmul fast float %4002, %1514
  %4004 = bitcast i32 %2155 to float
  %4005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4005, 3
  %4007 = fcmp fast oeq float %4006, 0.000000e+00
  br i1 %4007, label %5549, label %4008

; <label>:4008                                    ; preds = %3949
  %4009 = extractvalue %dx.types.CBufRet.f32 %4005, 0
  %4010 = extractvalue %dx.types.CBufRet.f32 %4005, 1
  %4011 = extractvalue %dx.types.CBufRet.f32 %4005, 2
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4014 = extractvalue %dx.types.CBufRet.f32 %4012, 1
  %4015 = extractvalue %dx.types.CBufRet.f32 %4012, 2
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.CBufRet.f32 %4016, 1
  %4019 = call float @dx.op.dot3.f32(i32 55, float %4013, float %4014, float %4015, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4020 = select i1 %247, float %4017, float %4013
  %4021 = select i1 %247, float %4019, float %4014
  %4022 = select i1 %247, float %4018, float %4015
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 2
  %4025 = fmul fast float %4024, %104
  %4026 = fmul fast float %4024, %105
  %4027 = fmul fast float %4024, %106
  %4028 = fadd fast float %4025, %156
  %4029 = fadd fast float %4026, %157
  %4030 = fadd fast float %4027, %158
  %4031 = fcmp fast olt float %4006, 0.000000e+00
  br i1 %4031, label %5127, label %4032

; <label>:4032                                    ; preds = %4008
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 0
  %4035 = extractvalue %dx.types.CBufRet.f32 %4033, 1
  %4036 = extractvalue %dx.types.CBufRet.f32 %4033, 2
  %4037 = extractvalue %dx.types.CBufRet.f32 %4033, 3
  %4038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.f32 %4038, 0
  %4040 = extractvalue %dx.types.CBufRet.f32 %4038, 1
  %4041 = extractvalue %dx.types.CBufRet.f32 %4038, 2
  %4042 = extractvalue %dx.types.CBufRet.f32 %4038, 3
  %4043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.f32 %4043, 0
  %4045 = extractvalue %dx.types.CBufRet.f32 %4043, 1
  %4046 = extractvalue %dx.types.CBufRet.f32 %4043, 2
  %4047 = extractvalue %dx.types.CBufRet.f32 %4043, 3
  %4048 = fmul fast float %4034, %4028
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4035, float %4048)  ; FMad(a,b,c)
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4036, float %4049)  ; FMad(a,b,c)
  %4051 = fadd fast float %4050, %4037
  %4052 = fmul fast float %4039, %4028
  %4053 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4040, float %4052)  ; FMad(a,b,c)
  %4054 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4041, float %4053)  ; FMad(a,b,c)
  %4055 = fadd fast float %4054, %4042
  %4056 = fmul fast float %4044, %4028
  %4057 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4045, float %4056)  ; FMad(a,b,c)
  %4058 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4046, float %4057)  ; FMad(a,b,c)
  %4059 = fadd fast float %4058, %4047
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.CBufRet.f32 %4060, 3
  %4064 = fmul fast float %4063, %4051
  %4065 = fmul fast float %4063, %4055
  %4066 = fadd fast float %4064, %4061
  %4067 = fadd fast float %4065, %4062
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4071 = extractvalue %dx.types.CBufRet.f32 %4068, 3
  %4072 = fmul fast float %4071, %4051
  %4073 = fmul fast float %4071, %4055
  %4074 = fadd fast float %4072, %4069
  %4075 = fadd fast float %4073, %4070
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4078 = fsub fast float %4077, %4059
  %4079 = extractvalue %dx.types.CBufRet.f32 %4076, 2
  %4080 = fmul fast float %4078, %4079
  %4081 = fsub fast float 1.000000e+00, %4080
  %4082 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 2
  %4086 = fadd fast float %4085, %4083
  %4087 = fcmp fast ogt float %4086, 0.000000e+00
  br i1 %4087, label %4088, label %4112

; <label>:4088                                    ; preds = %4032
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4092 = fsub fast float %4074, %4090
  %4093 = fsub fast float %4075, %4091
  %4094 = fcmp fast olt float %4092, 0.000000e+00
  %4095 = fcmp fast olt float %4093, 0.000000e+00
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.CBufRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4096, 2
  %4100 = extractvalue %dx.types.CBufRet.f32 %4096, 3
  %4101 = select i1 %4094, float %4097, float %4099
  %4102 = select i1 %4095, float %4098, float %4100
  %4103 = fmul fast float %4101, %4092
  %4104 = fmul fast float %4102, %4093
  %4105 = call float @dx.op.unary.f32(i32 6, float %4103)  ; FAbs(value)
  %4106 = call float @dx.op.unary.f32(i32 6, float %4104)  ; FAbs(value)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4108 = call float @dx.op.binary.f32(i32 35, float %4105, float %4106)  ; FMax(a,b)
  %4109 = fsub fast float %4107, %4108
  %4110 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4111 = fmul fast float %4110, %4082
  br label %4112

; <label>:4112                                    ; preds = %4088, %4032
  %4113 = phi float [ %4111, %4088 ], [ 0.000000e+00, %4032 ]
  %4114 = extractvalue %dx.types.CBufRet.f32 %4060, 2
  %4115 = extractvalue %dx.types.CBufRet.f32 %4084, 1
  %4116 = fadd fast float %4115, %4114
  %4117 = fcmp fast ogt float %4116, 0.000000e+00
  %4118 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  br i1 %4117, label %4119, label %4142

; <label>:4119                                    ; preds = %4112
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.CBufRet.f32 %4120, 1
  %4123 = fsub fast float %4066, %4121
  %4124 = fsub fast float %4067, %4122
  %4125 = fcmp fast olt float %4123, 0.000000e+00
  %4126 = fcmp fast olt float %4124, 0.000000e+00
  %4127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.f32 %4127, 0
  %4129 = extractvalue %dx.types.CBufRet.f32 %4127, 1
  %4130 = extractvalue %dx.types.CBufRet.f32 %4127, 2
  %4131 = extractvalue %dx.types.CBufRet.f32 %4127, 3
  %4132 = select i1 %4125, float %4128, float %4130
  %4133 = select i1 %4126, float %4129, float %4131
  %4134 = fmul fast float %4132, %4123
  %4135 = fmul fast float %4133, %4124
  %4136 = call float @dx.op.unary.f32(i32 6, float %4134)  ; FAbs(value)
  %4137 = call float @dx.op.unary.f32(i32 6, float %4135)  ; FAbs(value)
  %4138 = call float @dx.op.binary.f32(i32 35, float %4136, float %4137)  ; FMax(a,b)
  %4139 = fsub fast float %4118, %4138
  %4140 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4141 = fmul fast float %4140, %4082
  br label %4142

; <label>:4142                                    ; preds = %4119, %4112
  %4143 = phi float [ %4141, %4119 ], [ 0.000000e+00, %4112 ]
  %4144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4144, 1
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.CBufRet.f32 %4147, 1
  %4150 = fsub fast float %4051, %4148
  %4151 = fsub fast float %4055, %4149
  %4152 = fcmp fast olt float %4150, 0.000000e+00
  %4153 = fcmp fast olt float %4151, 0.000000e+00
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4154, 2
  %4158 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4159 = select i1 %4152, float %4155, float %4157
  %4160 = select i1 %4153, float %4156, float %4158
  %4161 = fmul fast float %4159, %4150
  %4162 = fmul fast float %4160, %4151
  %4163 = call float @dx.op.unary.f32(i32 6, float %4161)  ; FAbs(value)
  %4164 = call float @dx.op.unary.f32(i32 6, float %4162)  ; FAbs(value)
  %4165 = call float @dx.op.binary.f32(i32 35, float %4163, float %4164)  ; FMax(a,b)
  %4166 = fsub fast float %4118, %4165
  %4167 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4168 = call float @dx.op.binary.f32(i32 36, float %4167, float %4146)  ; FMin(a,b)
  %4169 = fmul fast float %4168, %4082
  %4170 = fsub fast float %4143, %4169
  %4171 = fsub fast float %4113, %4143
  %4172 = fsub fast float %4171, %4169
  %4173 = call float @dx.op.binary.f32(i32 35, float %4143, float %4113)  ; FMax(a,b)
  %4174 = call float @dx.op.binary.f32(i32 35, float %4169, float %4173)  ; FMax(a,b)
  %4175 = fcmp fast olt float %4174, 1.000000e+00
  br i1 %4175, label %4176, label %4574, !dx.controlflow.hints !115

; <label>:4176                                    ; preds = %4142
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4179 = fcmp fast une float %4178, 0.000000e+00
  br i1 %4179, label %4180, label %4574, !dx.controlflow.hints !116

; <label>:4180                                    ; preds = %4176
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.CBufRet.f32 %4181, 1
  %4184 = extractvalue %dx.types.CBufRet.f32 %4181, 2
  %4185 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.CBufRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4190 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.CBufRet.f32 %4191, 1
  %4194 = extractvalue %dx.types.CBufRet.f32 %4191, 2
  %4195 = extractvalue %dx.types.CBufRet.f32 %4191, 3
  %4196 = fmul fast float %4182, %4028
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4183, float %4196)  ; FMad(a,b,c)
  %4198 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4184, float %4197)  ; FMad(a,b,c)
  %4199 = fadd fast float %4198, %4185
  %4200 = fmul fast float %4187, %4028
  %4201 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4188, float %4200)  ; FMad(a,b,c)
  %4202 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4189, float %4201)  ; FMad(a,b,c)
  %4203 = fadd fast float %4202, %4190
  %4204 = fmul fast float %4192, %4028
  %4205 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4193, float %4204)  ; FMad(a,b,c)
  %4206 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4194, float %4205)  ; FMad(a,b,c)
  %4207 = fadd fast float %4206, %4195
  %4208 = fcmp fast oge float %4199, 1.000000e+00
  %4209 = fcmp fast oge float %4203, 1.000000e+00
  %4210 = or i1 %4208, %4209
  %4211 = fcmp fast olt float %4199, 0.000000e+00
  %4212 = fcmp fast olt float %4203, 0.000000e+00
  %4213 = or i1 %4211, %4212
  %4214 = or i1 %4210, %4213
  br i1 %4214, label %4574, label %4215, !dx.controlflow.hints !117

; <label>:4215                                    ; preds = %4180
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.CBufRet.f32 %4216, 1
  %4219 = extractvalue %dx.types.CBufRet.f32 %4216, 2
  %4220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.i32 %4220, 2
  %4222 = uitofp i32 %4221 to float
  %4223 = extractvalue %dx.types.CBufRet.i32 %4220, 3
  %4224 = uitofp i32 %4223 to float
  %4225 = extractvalue %dx.types.CBufRet.f32 %4216, 3
  %4226 = fmul fast float %4225, 2.000000e+00
  %4227 = fsub fast float %4199, %4217
  %4228 = fsub fast float %4203, %4218
  %4229 = fmul fast float %4226, %4227
  %4230 = fmul fast float %4226, %4228
  %4231 = fdiv fast float 1.000000e+00, %4011
  %4232 = fmul fast float %4230, %4231
  %4233 = call float @dx.op.unary.f32(i32 6, float %4232)  ; FAbs(value)
  %4234 = fmul fast float %4219, %4030
  %4235 = fmul fast float %4234, %4226
  %4236 = call float @dx.op.unary.f32(i32 6, float %4235)  ; FAbs(value)
  %4237 = call float @dx.op.unary.f32(i32 6, float %4229)  ; FAbs(value)
  %4238 = call float @dx.op.binary.f32(i32 35, float %4236, float %4233)  ; FMax(a,b)
  %4239 = call float @dx.op.binary.f32(i32 35, float %4237, float %4238)  ; FMax(a,b)
  %4240 = fmul fast float %4239, 2.000000e+00
  %4241 = call float @dx.op.unary.f32(i32 23, float %4240)  ; Log(value)
  %4242 = call float @dx.op.binary.f32(i32 35, float %4241, float %4222)  ; FMax(a,b)
  %4243 = call float @dx.op.unary.f32(i32 22, float %4242)  ; Frc(value)
  %4244 = fadd fast float %4243, 0xBFEA666660000000
  %4245 = fmul fast float %4244, 8.000000e+00
  %4246 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4247 = call float @dx.op.unary.f32(i32 27, float %4242)  ; Round_ni(value)
  %4248 = fadd fast float %4247, %4246
  %4249 = call float @dx.op.binary.f32(i32 36, float %4248, float %4224)  ; FMin(a,b)
  %4250 = call float @dx.op.unary.f32(i32 27, float %4249)  ; Round_ni(value)
  %4251 = fsub fast float -0.000000e+00, %4250
  %4252 = call float @dx.op.unary.f32(i32 21, float %4251)  ; Exp(value)
  %4253 = fmul fast float %4252, %4226
  %4254 = fmul fast float %4253, %4199
  %4255 = fmul fast float %4253, %4203
  %4256 = fmul fast float %4254, 2.500000e-01
  %4257 = fmul fast float %4255, 2.500000e-01
  %4258 = fadd fast float %4256, 5.000000e-01
  %4259 = fadd fast float %4257, 5.000000e-01
  %4260 = fsub fast float %4224, %4222
  %4261 = fptoui float %4260 to i32
  %4262 = add i32 %4261, 320
  %4263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4262)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.f32 %4263, 0
  %4265 = extractvalue %dx.types.CBufRet.f32 %4263, 1
  %4266 = fcmp fast une float %4249, %4224
  %4267 = fsub fast float %4199, %4264
  %4268 = fsub fast float %4203, %4265
  %4269 = call float @dx.op.unary.f32(i32 6, float %4267)  ; FAbs(value)
  %4270 = call float @dx.op.unary.f32(i32 6, float %4268)  ; FAbs(value)
  %4271 = fmul fast float %4269, %4253
  %4272 = fmul fast float %4270, %4253
  %4273 = fcmp fast olt float %4271, 1.000000e+00
  %4274 = fcmp fast olt float %4272, 1.000000e+00
  %4275 = and i1 %4273, %4274
  %4276 = or i1 %4266, %4275
  br i1 %4276, label %4277, label %4574, !dx.controlflow.hints !118

; <label>:4277                                    ; preds = %4215
  %4278 = fmul fast float %4255, 5.000000e-01
  %4279 = fmul fast float %4254, 5.000000e-01
  %4280 = fadd fast float %4278, 5.000000e-01
  %4281 = fadd fast float %4279, 5.000000e-01
  %4282 = sitofp i32 %4221 to float
  %4283 = fsub fast float %4249, %4282
  %4284 = call float @dx.op.unary.f32(i32 27, float %4283)  ; Round_ni(value)
  %4285 = call float @dx.op.unary.f32(i32 22, float %4249)  ; Frc(value)
  %4286 = call float @dx.op.unary.f32(i32 22, float %4281)  ; Frc(value)
  %4287 = call float @dx.op.unary.f32(i32 22, float %4280)  ; Frc(value)
  %4288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4286, float %4287, float %4284, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = extractvalue %dx.types.ResRet.f32 %4288, 1
  %4291 = extractvalue %dx.types.ResRet.f32 %4288, 2
  %4292 = extractvalue %dx.types.ResRet.f32 %4288, 3
  %4293 = fcmp fast ogt float %4285, 0.000000e+00
  br i1 %4293, label %4294, label %4315, !dx.controlflow.hints !119

; <label>:4294                                    ; preds = %4277
  %4295 = fadd fast float %4284, 1.000000e+00
  %4296 = call float @dx.op.unary.f32(i32 22, float %4258)  ; Frc(value)
  %4297 = call float @dx.op.unary.f32(i32 22, float %4259)  ; Frc(value)
  %4298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4296, float %4297, float %4295, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4299 = extractvalue %dx.types.ResRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.ResRet.f32 %4298, 1
  %4301 = extractvalue %dx.types.ResRet.f32 %4298, 2
  %4302 = extractvalue %dx.types.ResRet.f32 %4298, 3
  %4303 = fsub fast float %4299, %4289
  %4304 = fsub fast float %4300, %4290
  %4305 = fsub fast float %4301, %4291
  %4306 = fsub fast float %4302, %4292
  %4307 = fmul fast float %4303, %4285
  %4308 = fmul fast float %4304, %4285
  %4309 = fmul fast float %4305, %4285
  %4310 = fmul fast float %4306, %4285
  %4311 = fadd fast float %4307, %4289
  %4312 = fadd fast float %4308, %4290
  %4313 = fadd fast float %4309, %4291
  %4314 = fadd fast float %4310, %4292
  br label %4315

; <label>:4315                                    ; preds = %4294, %4277
  %4316 = phi float [ %4311, %4294 ], [ %4289, %4277 ]
  %4317 = phi float [ %4312, %4294 ], [ %4290, %4277 ]
  %4318 = phi float [ %4313, %4294 ], [ %4291, %4277 ]
  %4319 = phi float [ %4314, %4294 ], [ %4292, %4277 ]
  %4320 = fadd fast float %4316, -5.000000e-01
  %4321 = fadd fast float %4318, -5.000000e-01
  %4322 = fmul fast float %4320, 0xBFD5555560000000
  %4323 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4321, float %4322)  ; FMad(a,b,c)
  %4324 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4317, float 0.000000e+00)  ; FMad(a,b,c)
  %4325 = fadd fast float %4324, %4319
  %4326 = fmul fast float %4320, -7.500000e-01
  %4327 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4321, float %4326)  ; FMad(a,b,c)
  %4328 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4317, float 0.000000e+00)  ; FMad(a,b,c)
  %4329 = fadd fast float %4328, %4319
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 0
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4334 = extractvalue %dx.types.CBufRet.f32 %4332, 1
  %4335 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4336 = extractvalue %dx.types.CBufRet.f32 %4332, 3
  %4337 = fsub fast float %4333, %4323
  %4338 = fsub fast float %4334, %4325
  %4339 = fsub fast float %4335, %4327
  %4340 = fsub fast float %4336, %4329
  %4341 = fmul fast float %4337, %4331
  %4342 = fmul fast float %4338, %4331
  %4343 = fmul fast float %4339, %4331
  %4344 = fmul fast float %4340, %4331
  %4345 = fadd fast float %4341, %4323
  %4346 = fadd fast float %4342, %4325
  %4347 = fadd fast float %4343, %4327
  %4348 = fadd fast float %4344, %4329
  %4349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.i32 %4349, 0
  %4351 = and i32 %4350, 536870911
  %4352 = uitofp i32 %4351 to float
  %4353 = fmul fast float %4352, %4199
  %4354 = fmul fast float %4352, %4203
  %4355 = fptoui float %4353 to i32
  %4356 = fptoui float %4354 to i32
  %4357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4358 = extractvalue %dx.types.ResRet.i32 %4357, 0
  %4359 = and i32 %4358, 31
  %4360 = lshr i32 %4355, %4359
  %4361 = lshr i32 %4356, %4359
  %4362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.i32 %4362, 0
  %4364 = and i32 %4363, 31
  %4365 = shl i32 1, %4364
  %4366 = call i32 @dx.op.binary.i32(i32 40, i32 %4365, i32 4)  ; UMin(a,b)
  %4367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4368 = extractvalue %dx.types.ResRet.i32 %4367, 0
  %4369 = extractvalue %dx.types.ResRet.i32 %4367, 1
  %4370 = icmp eq i32 %4366, 0
  br i1 %4370, label %4412, label %4371

; <label>:4371                                    ; preds = %4315
  br label %4372

; <label>:4372                                    ; preds = %4400, %4371
  %4373 = phi i32 [ %4403, %4400 ], [ 0, %4371 ]
  %4374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.i32 %4374, 0
  %4376 = lshr i32 %4375, 16
  %4377 = and i32 %4376, 31
  %4378 = shl i32 %4361, %4377
  %4379 = add i32 %4378, %4360
  %4380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4381 = extractvalue %dx.types.ResRet.i32 %4380, 0
  %4382 = and i32 %4381, 31
  %4383 = shl i32 %4379, %4382
  %4384 = add i32 %4383, %4373
  %4385 = shl i32 %4384, 2
  %4386 = add i32 %4385, 32
  %4387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.i32 %4387, 0
  %4389 = icmp slt i32 %4388, 0
  %4390 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4373
  %4391 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4373
  %4392 = bitcast float* %4390 to i32*
  %4393 = bitcast float* %4391 to i32*
  br i1 %4389, label %4394, label %4400

; <label>:4394                                    ; preds = %4372
  %4395 = and i32 %4388, 1073741823
  %4396 = add nuw nsw i32 %4395, 20
  %4397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4396, i32 undef)  ; BufferLoad(srv,index,wot)
  %4398 = extractvalue %dx.types.ResRet.i32 %4397, 0
  %4399 = extractvalue %dx.types.ResRet.i32 %4397, 1
  br label %4400

; <label>:4400                                    ; preds = %4394, %4372
  %4401 = phi i32 [ %4398, %4394 ], [ %4368, %4372 ]
  %4402 = phi i32 [ %4399, %4394 ], [ %4369, %4372 ]
  store i32 %4401, i32* %4392, align 4
  store i32 %4402, i32* %4393, align 4
  %4403 = add nuw i32 %4373, 1
  %4404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.i32 %4404, 2
  %4406 = icmp eq i32 %4405, 0
  %4407 = icmp ugt i32 %4388, -1073741825
  %4408 = and i1 %4407, %4406
  %4409 = icmp ult i32 %4403, %4366
  %4410 = and i1 %4408, %4409
  br i1 %4410, label %4372, label %4411

; <label>:4411                                    ; preds = %4400
  br label %4412

; <label>:4412                                    ; preds = %4411, %4315
  %4413 = phi i32 [ 0, %4315 ], [ %4403, %4411 ]
  %4414 = extractvalue %dx.types.CBufRet.f32 %4177, 2
  %4415 = fptoui float %4414 to i32
  %4416 = icmp eq i32 %4415, 0
  br i1 %4416, label %4468, label %4417

; <label>:4417                                    ; preds = %4412
  br label %4418

; <label>:4418                                    ; preds = %4463, %4417
  %4419 = phi i32 [ %4464, %4463 ], [ %4413, %4417 ]
  %4420 = phi i32 [ %4465, %4463 ], [ 0, %4417 ]
  %4421 = lshr i32 %4420, 2
  %4422 = and i32 %4420, 3
  %4423 = add nuw nsw i32 %4421, 83
  %4424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4423)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.i32 %4424, 0
  %4426 = extractvalue %dx.types.CBufRet.i32 %4424, 1
  %4427 = extractvalue %dx.types.CBufRet.i32 %4424, 2
  %4428 = extractvalue %dx.types.CBufRet.i32 %4424, 3
  %4429 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4425, i32* %4429, align 4
  %4430 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4426, i32* %4430, align 4
  %4431 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4427, i32* %4431, align 4
  %4432 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4428, i32* %4432, align 4
  %4433 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4422
  %4434 = load i32, i32* %4433, align 4, !tbaa !120, !noalias !124
  %4435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4436 = extractvalue %dx.types.ResRet.i32 %4435, 0
  %4437 = lshr i32 %4436, 16
  %4438 = and i32 %4437, 31
  %4439 = shl i32 %4361, %4438
  %4440 = add i32 %4439, %4360
  %4441 = shl i32 %4440, 2
  %4442 = add i32 %4441, %4434
  %4443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.i32 %4443, 0
  %4445 = icmp eq i32 %4444, 0
  br i1 %4445, label %4463, label %4446

; <label>:4446                                    ; preds = %4418
  %4447 = icmp slt i32 %4444, 0
  %4448 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4419
  %4449 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4419
  %4450 = bitcast float* %4448 to i32*
  %4451 = bitcast float* %4449 to i32*
  br i1 %4447, label %4452, label %4459

; <label>:4452                                    ; preds = %4446
  %4453 = and i32 %4444, 1073741823
  %4454 = add i32 %4434, 20
  %4455 = add i32 %4454, %4453
  %4456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4455, i32 undef)  ; BufferLoad(srv,index,wot)
  %4457 = extractvalue %dx.types.ResRet.i32 %4456, 0
  %4458 = extractvalue %dx.types.ResRet.i32 %4456, 1
  br label %4459

; <label>:4459                                    ; preds = %4452, %4446
  %4460 = phi i32 [ %4457, %4452 ], [ %4368, %4446 ]
  %4461 = phi i32 [ %4458, %4452 ], [ %4369, %4446 ]
  store i32 %4460, i32* %4450, align 4
  store i32 %4461, i32* %4451, align 4
  %4462 = add i32 %4419, 1
  br label %4463

; <label>:4463                                    ; preds = %4459, %4418
  %4464 = phi i32 [ %4419, %4418 ], [ %4462, %4459 ]
  %4465 = add nuw i32 %4420, 1
  %4466 = icmp eq i32 %4465, %4415
  br i1 %4466, label %4467, label %4418

; <label>:4467                                    ; preds = %4463
  br label %4468

; <label>:4468                                    ; preds = %4467, %4412
  %4469 = phi i32 [ %4413, %4412 ], [ %4464, %4467 ]
  %4470 = icmp eq i32 %4469, 1
  %4471 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  %4472 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  br i1 %4470, label %4473, label %4476

; <label>:4473                                    ; preds = %4468
  %4474 = load float, float* %4471, align 4
  %4475 = load float, float* %4472, align 4
  br label %4503

; <label>:4476                                    ; preds = %4468
  %4477 = load float, float* %4471, align 4
  %4478 = load float, float* %4472, align 4
  %4479 = fdiv fast float 1.000000e+00, %4478
  %4480 = fsub fast float %4477, %4479
  %4481 = icmp ugt i32 %4469, 1
  br i1 %4481, label %4482, label %4498

; <label>:4482                                    ; preds = %4476
  br label %4483

; <label>:4483                                    ; preds = %4483, %4482
  %4484 = phi float [ %4493, %4483 ], [ %4480, %4482 ]
  %4485 = phi float [ %4494, %4483 ], [ %4477, %4482 ]
  %4486 = phi i32 [ %4495, %4483 ], [ 1, %4482 ]
  %4487 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4486
  %4488 = load float, float* %4487, align 4
  %4489 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4486
  %4490 = load float, float* %4489, align 4
  %4491 = fdiv fast float 1.000000e+00, %4490
  %4492 = fsub fast float %4488, %4491
  %4493 = call float @dx.op.binary.f32(i32 36, float %4484, float %4492)  ; FMin(a,b)
  %4494 = call float @dx.op.binary.f32(i32 35, float %4485, float %4488)  ; FMax(a,b)
  %4495 = add nuw i32 %4486, 1
  %4496 = icmp eq i32 %4495, %4469
  br i1 %4496, label %4497, label %4483

; <label>:4497                                    ; preds = %4483
  br label %4498

; <label>:4498                                    ; preds = %4497, %4476
  %4499 = phi float [ %4480, %4476 ], [ %4493, %4497 ]
  %4500 = phi float [ %4477, %4476 ], [ %4494, %4497 ]
  %4501 = fsub fast float %4500, %4499
  %4502 = fdiv fast float 1.000000e+00, %4501
  br label %4503

; <label>:4503                                    ; preds = %4498, %4473
  %4504 = phi float [ %4474, %4473 ], [ %4500, %4498 ]
  %4505 = phi float [ %4475, %4473 ], [ %4502, %4498 ]
  %4506 = fadd fast float %4207, %4504
  %4507 = fmul fast float %4506, %4505
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = fmul fast float %4508, 2.000000e+00
  %4510 = fsub fast float 1.000000e+00, %4509
  %4511 = fmul fast float %4345, %4345
  %4512 = fsub fast float %4346, %4511
  %4513 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4512)  ; FMax(a,b)
  %4514 = fdiv fast float 1.000000e+00, %4513
  %4515 = fmul fast float %4346, %4345
  %4516 = fsub fast float %4347, %4515
  %4517 = fsub fast float %4510, %4345
  %4518 = fmul fast float %4510, %4510
  %4519 = fsub fast float %4518, %4346
  %4520 = fmul fast float %4514, %4516
  %4521 = fmul fast float %4520, %4517
  %4522 = fsub fast float %4519, %4521
  %4523 = fmul fast float %4346, %4346
  %4524 = fsub fast float %4348, %4523
  %4525 = fmul fast float %4516, %4516
  %4526 = fmul fast float %4525, %4514
  %4527 = fsub fast float %4524, %4526
  %4528 = fdiv fast float %4522, %4527
  %4529 = fmul fast float %4528, %4516
  %4530 = fsub fast float %4517, %4529
  %4531 = fmul fast float %4530, %4514
  %4532 = fmul fast float %4531, %4345
  %4533 = fsub fast float 1.000000e+00, %4532
  %4534 = fmul fast float %4528, %4346
  %4535 = fsub fast float %4533, %4534
  %4536 = fmul fast float %4531, %4531
  %4537 = fmul fast float %4528, 4.000000e+00
  %4538 = fmul fast float %4537, %4535
  %4539 = fsub fast float %4536, %4538
  %4540 = call float @dx.op.unary.f32(i32 24, float %4539)  ; Sqrt(value)
  %4541 = fcmp fast oge float %4531, 0.000000e+00
  %4542 = fsub fast float -0.000000e+00, %4540
  %4543 = select i1 %4541, float %4542, float %4540
  %4544 = fsub fast float %4543, %4531
  %4545 = fdiv fast float %4544, %4528
  %4546 = fdiv fast float %4535, %4544
  %4547 = fmul fast float %4545, 5.000000e-01
  %4548 = fmul fast float %4546, 2.000000e+00
  %4549 = select i1 %4541, float %4547, float %4548
  %4550 = select i1 %4541, float %4548, float %4547
  %4551 = call float @dx.op.binary.f32(i32 35, float %4549, float %4550)  ; FMax(a,b)
  %4552 = call float @dx.op.binary.f32(i32 36, float %4549, float %4550)  ; FMin(a,b)
  %4553 = fcmp fast ogt float %4510, %4551
  %4554 = fsub fast float %4510, %4552
  %4555 = fsub fast float %4510, %4551
  %4556 = fsub fast float %4551, %4552
  %4557 = select i1 %4553, float %4555, float %4556
  %4558 = fmul float %4554, %4557
  %4559 = select i1 %4553, float %4552, float %4510
  %4560 = fcmp fast ogt float %4510, %4552
  %4561 = fmul fast float %4559, %4551
  %4562 = fadd fast float %4559, %4551
  %4563 = fmul fast float %4562, %4345
  %4564 = fadd fast float %4561, %4346
  %4565 = fsub fast float %4564, %4563
  %4566 = fdiv fast float %4565, %4558
  %4567 = select i1 %4560, float %4566, float 0.000000e+00
  %4568 = fsub fast float 1.000000e+00, %4567
  %4569 = select i1 %4553, float %4568, float %4567
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = extractvalue %dx.types.CBufRet.f32 %4330, 3
  %4572 = fmul fast float %4571, %4570
  %4573 = fsub fast float 1.000000e+00, %4572
  br label %4574

; <label>:4574                                    ; preds = %4503, %4215, %4180, %4176, %4142
  %4575 = phi float [ 1.000000e+00, %4142 ], [ %4573, %4503 ], [ 1.000000e+00, %4180 ], [ 1.000000e+00, %4215 ], [ 1.000000e+00, %4176 ]
  %4576 = fcmp fast ogt float %4172, 0.000000e+00
  br i1 %4576, label %4577, label %4739, !dx.controlflow.hints !133

; <label>:4577                                    ; preds = %4574
  %4578 = fadd fast float %4085, %4059
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 2
  %4581 = extractvalue %dx.types.CBufRet.f32 %4579, 3
  %4582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.f32 %4582, 2
  %4584 = call float @dx.op.binary.f32(i32 35, float %4578, float 0.000000e+00)  ; FMax(a,b)
  %4585 = fadd fast float %4584, 0x3F10000000000000
  %4586 = fcmp fast oeq float %4583, 0.000000e+00
  br i1 %4586, label %4587, label %4654

; <label>:4587                                    ; preds = %4577
  %4588 = extractvalue %dx.types.CBufRet.f32 %4579, 1
  %4589 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4590 = fmul fast float %4589, %4074
  %4591 = fmul fast float %4588, %4075
  %4592 = fadd fast float %4590, 5.000000e-01
  %4593 = call float @dx.op.unary.f32(i32 27, float %4592)  ; Round_ni(value)
  %4594 = fadd fast float %4591, 5.000000e-01
  %4595 = call float @dx.op.unary.f32(i32 27, float %4594)  ; Round_ni(value)
  %4596 = fsub fast float %4592, %4593
  %4597 = fsub fast float %4594, %4595
  %4598 = fadd fast float %4593, -5.000000e-01
  %4599 = fadd fast float %4595, -5.000000e-01
  %4600 = fmul fast float %4596, 2.000000e+00
  %4601 = fsub fast float 3.000000e+00, %4600
  %4602 = fadd fast float %4600, 1.000000e+00
  %4603 = fsub fast float 2.000000e+00, %4596
  %4604 = bitcast float %4601 to i32
  %4605 = sub nsw i32 2129859010, %4604
  %4606 = bitcast i32 %4605 to float
  %4607 = fmul fast float %4606, %4603
  %4608 = fadd fast float %4607, -1.000000e+00
  %4609 = bitcast float %4602 to i32
  %4610 = sub nsw i32 2129859010, %4609
  %4611 = bitcast i32 %4610 to float
  %4612 = fmul fast float %4611, %4596
  %4613 = fadd fast float %4612, 1.000000e+00
  %4614 = fmul fast float %4597, 2.000000e+00
  %4615 = fsub fast float 3.000000e+00, %4614
  %4616 = fadd fast float %4614, 1.000000e+00
  %4617 = fsub fast float 2.000000e+00, %4597
  %4618 = bitcast float %4615 to i32
  %4619 = sub nsw i32 2129859010, %4618
  %4620 = bitcast i32 %4619 to float
  %4621 = fmul fast float %4620, %4617
  %4622 = fadd fast float %4621, -1.000000e+00
  %4623 = bitcast float %4616 to i32
  %4624 = sub nsw i32 2129859010, %4623
  %4625 = bitcast i32 %4624 to float
  %4626 = fmul fast float %4625, %4597
  %4627 = fadd fast float %4626, 1.000000e+00
  %4628 = fadd fast float %4608, %4598
  %4629 = fmul fast float %4628, %4580
  %4630 = fadd fast float %4622, %4599
  %4631 = fmul fast float %4630, %4581
  %4632 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4629, float %4631, float undef, float undef, i32 0, i32 0, i32 undef, float %4585)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = fmul fast float %4633, %4601
  %4635 = fadd fast float %4613, %4598
  %4636 = fmul fast float %4635, %4580
  %4637 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4636, float %4631, float undef, float undef, i32 0, i32 0, i32 undef, float %4585)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = fmul fast float %4638, %4602
  %4640 = fadd fast float %4627, %4599
  %4641 = fmul fast float %4640, %4581
  %4642 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4629, float %4641, float undef, float undef, i32 0, i32 0, i32 undef, float %4585)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4643 = extractvalue %dx.types.ResRet.f32 %4642, 0
  %4644 = fmul fast float %4643, %4601
  %4645 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4636, float %4641, float undef, float undef, i32 0, i32 0, i32 undef, float %4585)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = fmul fast float %4646, %4602
  %4648 = fadd fast float %4647, %4644
  %4649 = fmul fast float %4648, %4616
  %4650 = fadd fast float %4639, %4634
  %4651 = fmul fast float %4650, %4615
  %4652 = fadd fast float %4651, %4649
  %4653 = fmul fast float %4652, 6.250000e-02
  br label %4739

; <label>:4654                                    ; preds = %4577
  %4655 = fmul fast float %258, 0x401921FB60000000
  %4656 = call float @dx.op.unary.f32(i32 13, float %4655)  ; Sin(value)
  %4657 = call float @dx.op.unary.f32(i32 12, float %4655)  ; Cos(value)
  %4658 = fsub fast float -0.000000e+00, %4656
  br label %4659

; <label>:4659                                    ; preds = %4708, %4654
  %4660 = phi float [ 0.000000e+00, %4654 ], [ %4703, %4708 ]
  %4661 = phi float [ 0.000000e+00, %4654 ], [ %4705, %4708 ]
  %4662 = phi i32 [ 0, %4654 ], [ %4709, %4708 ]
  %4663 = mul i32 %4662, 2
  %4664 = add i32 0, %4663
  %4665 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4664
  %4666 = load float, float* %4665, align 4
  %4667 = mul i32 %4662, 2
  %4668 = add i32 1, %4667
  %4669 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4668
  %4670 = load float, float* %4669, align 4
  %4671 = fmul fast float %4666, %4657
  %4672 = call float @dx.op.tertiary.f32(i32 46, float %4670, float %4658, float %4671)  ; FMad(a,b,c)
  %4673 = fmul fast float %4666, %4656
  %4674 = call float @dx.op.tertiary.f32(i32 46, float %4670, float %4657, float %4673)  ; FMad(a,b,c)
  %4675 = fmul fast float %4672, %4583
  %4676 = fmul fast float %4674, %4583
  %4677 = fadd fast float %4675, %4074
  %4678 = fadd fast float %4676, %4075
  %4679 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4677, float %4678, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4680 = extractvalue %dx.types.ResRet.f32 %4679, 0
  %4681 = extractvalue %dx.types.ResRet.f32 %4679, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4679, 2
  %4683 = extractvalue %dx.types.ResRet.f32 %4679, 3
  %4684 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %4680, float* %4684, align 4
  %4685 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %4681, float* %4685, align 4
  %4686 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %4682, float* %4686, align 4
  %4687 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %4683, float* %4687, align 4
  %4688 = fsub fast float %4680, %4585
  %4689 = fcmp fast olt float %4688, 0.000000e+00
  %4690 = select i1 %4689, float 0.000000e+00, float 1.000000e+00
  %4691 = fadd fast float %4690, %4660
  %4692 = fmul fast float %4690, %4688
  %4693 = fadd fast float %4692, %4661
  br label %4694

; <label>:4694                                    ; preds = %4694, %4659
  %4695 = phi i32 [ 1, %4659 ], [ %4706, %4694 ]
  %4696 = phi float [ %4693, %4659 ], [ %4705, %4694 ]
  %4697 = phi float [ %4691, %4659 ], [ %4703, %4694 ]
  %4698 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %4695
  %4699 = load float, float* %4698, align 4, !tbaa !134, !noalias !124
  %4700 = fsub fast float %4699, %4585
  %4701 = fcmp fast olt float %4700, 0.000000e+00
  %4702 = select i1 %4701, float 0.000000e+00, float 1.000000e+00
  %4703 = fadd fast float %4702, %4697
  %4704 = fmul fast float %4702, %4700
  %4705 = fadd fast float %4704, %4696
  %4706 = add nuw nsw i32 %4695, 1
  %4707 = icmp eq i32 %4706, 4
  br i1 %4707, label %4708, label %4694, !llvm.loop !136

; <label>:4708                                    ; preds = %4694
  %4709 = add nuw nsw i32 %4662, 1
  %4710 = icmp eq i32 %4709, 8
  br i1 %4710, label %4711, label %4659, !llvm.loop !137

; <label>:4711                                    ; preds = %4708
  %4712 = fdiv fast float 1.000000e+00, %4703
  %4713 = fmul fast float %4712, %4705
  %4714 = fdiv fast float 1.000000e+00, %4585
  %4715 = fmul fast float %4713, %4714
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = call float @dx.op.binary.f32(i32 35, float %4716, float 0.000000e+00)  ; FMax(a,b)
  %4718 = fmul fast float %4703, 3.125000e-02
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = fmul fast float %4719, 2.000000e+00
  %4721 = fadd fast float %4720, -1.000000e+00
  %4722 = fcmp fast ogt float %4721, 0.000000e+00
  %4723 = fcmp fast olt float %4721, 0.000000e+00
  %4724 = zext i1 %4722 to i32
  %4725 = zext i1 %4723 to i32
  %4726 = sub nsw i32 %4724, %4725
  %4727 = sitofp i32 %4726 to float
  %4728 = fmul fast float %4727, %4721
  %4729 = fsub fast float 1.000000e+00, %4728
  %4730 = fmul fast float %4729, %4729
  %4731 = fmul fast float %4730, %4729
  %4732 = fsub fast float %4729, %4731
  %4733 = fmul fast float %4732, %4717
  %4734 = fsub fast float 1.000000e+00, %4731
  %4735 = fsub fast float %4734, %4733
  %4736 = fmul fast float %4727, 5.000000e-01
  %4737 = fmul fast float %4736, %4735
  %4738 = fsub fast float 5.000000e-01, %4737
  br label %4739

; <label>:4739                                    ; preds = %4711, %4587, %4574
  %4740 = phi float [ 1.000000e+00, %4574 ], [ %4653, %4587 ], [ %4738, %4711 ]
  %4741 = fcmp fast ogt float %4170, 0.000000e+00
  br i1 %4741, label %4742, label %4906, !dx.controlflow.hints !138

; <label>:4742                                    ; preds = %4739
  %4743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4744 = extractvalue %dx.types.CBufRet.f32 %4743, 1
  %4745 = fadd fast float %4744, %4059
  %4746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.f32 %4746, 2
  %4748 = extractvalue %dx.types.CBufRet.f32 %4746, 3
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 1
  %4751 = call float @dx.op.binary.f32(i32 35, float %4745, float 0.000000e+00)  ; FMax(a,b)
  %4752 = fadd fast float %4751, 0x3F10000000000000
  %4753 = fcmp fast oeq float %4750, 0.000000e+00
  br i1 %4753, label %4754, label %4821

; <label>:4754                                    ; preds = %4742
  %4755 = extractvalue %dx.types.CBufRet.f32 %4746, 1
  %4756 = extractvalue %dx.types.CBufRet.f32 %4746, 0
  %4757 = fmul fast float %4756, %4066
  %4758 = fmul fast float %4755, %4067
  %4759 = fadd fast float %4757, 5.000000e-01
  %4760 = call float @dx.op.unary.f32(i32 27, float %4759)  ; Round_ni(value)
  %4761 = fadd fast float %4758, 5.000000e-01
  %4762 = call float @dx.op.unary.f32(i32 27, float %4761)  ; Round_ni(value)
  %4763 = fsub fast float %4759, %4760
  %4764 = fsub fast float %4761, %4762
  %4765 = fadd fast float %4760, -5.000000e-01
  %4766 = fadd fast float %4762, -5.000000e-01
  %4767 = fmul fast float %4763, 2.000000e+00
  %4768 = fsub fast float 3.000000e+00, %4767
  %4769 = fadd fast float %4767, 1.000000e+00
  %4770 = fsub fast float 2.000000e+00, %4763
  %4771 = bitcast float %4768 to i32
  %4772 = sub nsw i32 2129859010, %4771
  %4773 = bitcast i32 %4772 to float
  %4774 = fmul fast float %4773, %4770
  %4775 = fadd fast float %4774, -1.000000e+00
  %4776 = bitcast float %4769 to i32
  %4777 = sub nsw i32 2129859010, %4776
  %4778 = bitcast i32 %4777 to float
  %4779 = fmul fast float %4778, %4763
  %4780 = fadd fast float %4779, 1.000000e+00
  %4781 = fmul fast float %4764, 2.000000e+00
  %4782 = fsub fast float 3.000000e+00, %4781
  %4783 = fadd fast float %4781, 1.000000e+00
  %4784 = fsub fast float 2.000000e+00, %4764
  %4785 = bitcast float %4782 to i32
  %4786 = sub nsw i32 2129859010, %4785
  %4787 = bitcast i32 %4786 to float
  %4788 = fmul fast float %4787, %4784
  %4789 = fadd fast float %4788, -1.000000e+00
  %4790 = bitcast float %4783 to i32
  %4791 = sub nsw i32 2129859010, %4790
  %4792 = bitcast i32 %4791 to float
  %4793 = fmul fast float %4792, %4764
  %4794 = fadd fast float %4793, 1.000000e+00
  %4795 = fadd fast float %4775, %4765
  %4796 = fmul fast float %4795, %4747
  %4797 = fadd fast float %4789, %4766
  %4798 = fmul fast float %4797, %4748
  %4799 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4796, float %4798, float undef, float undef, i32 0, i32 0, i32 undef, float %4752)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4800 = extractvalue %dx.types.ResRet.f32 %4799, 0
  %4801 = fmul fast float %4800, %4768
  %4802 = fadd fast float %4780, %4765
  %4803 = fmul fast float %4802, %4747
  %4804 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4803, float %4798, float undef, float undef, i32 0, i32 0, i32 undef, float %4752)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4805 = extractvalue %dx.types.ResRet.f32 %4804, 0
  %4806 = fmul fast float %4805, %4769
  %4807 = fadd fast float %4794, %4766
  %4808 = fmul fast float %4807, %4748
  %4809 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4796, float %4808, float undef, float undef, i32 0, i32 0, i32 undef, float %4752)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 0
  %4811 = fmul fast float %4810, %4768
  %4812 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4803, float %4808, float undef, float undef, i32 0, i32 0, i32 undef, float %4752)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = fmul fast float %4813, %4769
  %4815 = fadd fast float %4814, %4811
  %4816 = fmul fast float %4815, %4783
  %4817 = fadd fast float %4806, %4801
  %4818 = fmul fast float %4817, %4782
  %4819 = fadd fast float %4818, %4816
  %4820 = fmul fast float %4819, 6.250000e-02
  br label %4906

; <label>:4821                                    ; preds = %4742
  %4822 = fmul fast float %258, 0x401921FB60000000
  %4823 = call float @dx.op.unary.f32(i32 13, float %4822)  ; Sin(value)
  %4824 = call float @dx.op.unary.f32(i32 12, float %4822)  ; Cos(value)
  %4825 = fsub fast float -0.000000e+00, %4823
  br label %4826

; <label>:4826                                    ; preds = %4875, %4821
  %4827 = phi float [ 0.000000e+00, %4821 ], [ %4870, %4875 ]
  %4828 = phi float [ 0.000000e+00, %4821 ], [ %4872, %4875 ]
  %4829 = phi i32 [ 0, %4821 ], [ %4876, %4875 ]
  %4830 = mul i32 %4829, 2
  %4831 = add i32 0, %4830
  %4832 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4831
  %4833 = load float, float* %4832, align 4
  %4834 = mul i32 %4829, 2
  %4835 = add i32 1, %4834
  %4836 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4835
  %4837 = load float, float* %4836, align 4
  %4838 = fmul fast float %4833, %4824
  %4839 = call float @dx.op.tertiary.f32(i32 46, float %4837, float %4825, float %4838)  ; FMad(a,b,c)
  %4840 = fmul fast float %4833, %4823
  %4841 = call float @dx.op.tertiary.f32(i32 46, float %4837, float %4824, float %4840)  ; FMad(a,b,c)
  %4842 = fmul fast float %4839, %4750
  %4843 = fmul fast float %4841, %4750
  %4844 = fadd fast float %4842, %4066
  %4845 = fadd fast float %4843, %4067
  %4846 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %4844, float %4845, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4847 = extractvalue %dx.types.ResRet.f32 %4846, 0
  %4848 = extractvalue %dx.types.ResRet.f32 %4846, 1
  %4849 = extractvalue %dx.types.ResRet.f32 %4846, 2
  %4850 = extractvalue %dx.types.ResRet.f32 %4846, 3
  %4851 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %4847, float* %4851, align 4
  %4852 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %4848, float* %4852, align 4
  %4853 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %4849, float* %4853, align 4
  %4854 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %4850, float* %4854, align 4
  %4855 = fsub fast float %4847, %4752
  %4856 = fcmp fast olt float %4855, 0.000000e+00
  %4857 = select i1 %4856, float 0.000000e+00, float 1.000000e+00
  %4858 = fadd fast float %4857, %4827
  %4859 = fmul fast float %4857, %4855
  %4860 = fadd fast float %4859, %4828
  br label %4861

; <label>:4861                                    ; preds = %4861, %4826
  %4862 = phi i32 [ 1, %4826 ], [ %4873, %4861 ]
  %4863 = phi float [ %4860, %4826 ], [ %4872, %4861 ]
  %4864 = phi float [ %4858, %4826 ], [ %4870, %4861 ]
  %4865 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %4862
  %4866 = load float, float* %4865, align 4, !tbaa !134, !noalias !124
  %4867 = fsub fast float %4866, %4752
  %4868 = fcmp fast olt float %4867, 0.000000e+00
  %4869 = select i1 %4868, float 0.000000e+00, float 1.000000e+00
  %4870 = fadd fast float %4869, %4864
  %4871 = fmul fast float %4869, %4867
  %4872 = fadd fast float %4871, %4863
  %4873 = add nuw nsw i32 %4862, 1
  %4874 = icmp eq i32 %4873, 4
  br i1 %4874, label %4875, label %4861, !llvm.loop !136

; <label>:4875                                    ; preds = %4861
  %4876 = add nuw nsw i32 %4829, 1
  %4877 = icmp eq i32 %4876, 8
  br i1 %4877, label %4878, label %4826, !llvm.loop !137

; <label>:4878                                    ; preds = %4875
  %4879 = fdiv fast float 1.000000e+00, %4870
  %4880 = fmul fast float %4879, %4872
  %4881 = fdiv fast float 1.000000e+00, %4752
  %4882 = fmul fast float %4880, %4881
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = call float @dx.op.binary.f32(i32 35, float %4883, float 0.000000e+00)  ; FMax(a,b)
  %4885 = fmul fast float %4870, 3.125000e-02
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = fmul fast float %4886, 2.000000e+00
  %4888 = fadd fast float %4887, -1.000000e+00
  %4889 = fcmp fast ogt float %4888, 0.000000e+00
  %4890 = fcmp fast olt float %4888, 0.000000e+00
  %4891 = zext i1 %4889 to i32
  %4892 = zext i1 %4890 to i32
  %4893 = sub nsw i32 %4891, %4892
  %4894 = sitofp i32 %4893 to float
  %4895 = fmul fast float %4894, %4888
  %4896 = fsub fast float 1.000000e+00, %4895
  %4897 = fmul fast float %4896, %4896
  %4898 = fmul fast float %4897, %4896
  %4899 = fsub fast float %4896, %4898
  %4900 = fmul fast float %4899, %4884
  %4901 = fsub fast float 1.000000e+00, %4898
  %4902 = fsub fast float %4901, %4900
  %4903 = fmul fast float %4894, 5.000000e-01
  %4904 = fmul fast float %4903, %4902
  %4905 = fsub fast float 5.000000e-01, %4904
  br label %4906

; <label>:4906                                    ; preds = %4878, %4754, %4739
  %4907 = phi float [ 1.000000e+00, %4739 ], [ %4820, %4754 ], [ %4905, %4878 ]
  %4908 = fcmp fast ogt float %4169, 0.000000e+00
  br i1 %4908, label %4909, label %5073, !dx.controlflow.hints !139

; <label>:4909                                    ; preds = %4906
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 0
  %4912 = fadd fast float %4911, %4059
  %4913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4914 = extractvalue %dx.types.CBufRet.f32 %4913, 2
  %4915 = extractvalue %dx.types.CBufRet.f32 %4913, 3
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %4918 = call float @dx.op.binary.f32(i32 35, float %4912, float 0.000000e+00)  ; FMax(a,b)
  %4919 = fadd fast float %4918, 0x3F10000000000000
  %4920 = fcmp fast oeq float %4917, 0.000000e+00
  br i1 %4920, label %4921, label %4988

; <label>:4921                                    ; preds = %4909
  %4922 = extractvalue %dx.types.CBufRet.f32 %4913, 1
  %4923 = extractvalue %dx.types.CBufRet.f32 %4913, 0
  %4924 = fmul fast float %4923, %4051
  %4925 = fmul fast float %4922, %4055
  %4926 = fadd fast float %4924, 5.000000e-01
  %4927 = call float @dx.op.unary.f32(i32 27, float %4926)  ; Round_ni(value)
  %4928 = fadd fast float %4925, 5.000000e-01
  %4929 = call float @dx.op.unary.f32(i32 27, float %4928)  ; Round_ni(value)
  %4930 = fsub fast float %4926, %4927
  %4931 = fsub fast float %4928, %4929
  %4932 = fadd fast float %4927, -5.000000e-01
  %4933 = fadd fast float %4929, -5.000000e-01
  %4934 = fmul fast float %4930, 2.000000e+00
  %4935 = fsub fast float 3.000000e+00, %4934
  %4936 = fadd fast float %4934, 1.000000e+00
  %4937 = fsub fast float 2.000000e+00, %4930
  %4938 = bitcast float %4935 to i32
  %4939 = sub nsw i32 2129859010, %4938
  %4940 = bitcast i32 %4939 to float
  %4941 = fmul fast float %4940, %4937
  %4942 = fadd fast float %4941, -1.000000e+00
  %4943 = bitcast float %4936 to i32
  %4944 = sub nsw i32 2129859010, %4943
  %4945 = bitcast i32 %4944 to float
  %4946 = fmul fast float %4945, %4930
  %4947 = fadd fast float %4946, 1.000000e+00
  %4948 = fmul fast float %4931, 2.000000e+00
  %4949 = fsub fast float 3.000000e+00, %4948
  %4950 = fadd fast float %4948, 1.000000e+00
  %4951 = fsub fast float 2.000000e+00, %4931
  %4952 = bitcast float %4949 to i32
  %4953 = sub nsw i32 2129859010, %4952
  %4954 = bitcast i32 %4953 to float
  %4955 = fmul fast float %4954, %4951
  %4956 = fadd fast float %4955, -1.000000e+00
  %4957 = bitcast float %4950 to i32
  %4958 = sub nsw i32 2129859010, %4957
  %4959 = bitcast i32 %4958 to float
  %4960 = fmul fast float %4959, %4931
  %4961 = fadd fast float %4960, 1.000000e+00
  %4962 = fadd fast float %4942, %4932
  %4963 = fmul fast float %4962, %4914
  %4964 = fadd fast float %4956, %4933
  %4965 = fmul fast float %4964, %4915
  %4966 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4963, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float %4919)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4967 = extractvalue %dx.types.ResRet.f32 %4966, 0
  %4968 = fmul fast float %4967, %4935
  %4969 = fadd fast float %4947, %4932
  %4970 = fmul fast float %4969, %4914
  %4971 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4970, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float %4919)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4972 = extractvalue %dx.types.ResRet.f32 %4971, 0
  %4973 = fmul fast float %4972, %4936
  %4974 = fadd fast float %4961, %4933
  %4975 = fmul fast float %4974, %4915
  %4976 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4963, float %4975, float undef, float undef, i32 0, i32 0, i32 undef, float %4919)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4977 = extractvalue %dx.types.ResRet.f32 %4976, 0
  %4978 = fmul fast float %4977, %4935
  %4979 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4970, float %4975, float undef, float undef, i32 0, i32 0, i32 undef, float %4919)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4980 = extractvalue %dx.types.ResRet.f32 %4979, 0
  %4981 = fmul fast float %4980, %4936
  %4982 = fadd fast float %4981, %4978
  %4983 = fmul fast float %4982, %4950
  %4984 = fadd fast float %4973, %4968
  %4985 = fmul fast float %4984, %4949
  %4986 = fadd fast float %4985, %4983
  %4987 = fmul fast float %4986, 6.250000e-02
  br label %5073

; <label>:4988                                    ; preds = %4909
  %4989 = fmul fast float %258, 0x401921FB60000000
  %4990 = call float @dx.op.unary.f32(i32 13, float %4989)  ; Sin(value)
  %4991 = call float @dx.op.unary.f32(i32 12, float %4989)  ; Cos(value)
  %4992 = fsub fast float -0.000000e+00, %4990
  br label %4993

; <label>:4993                                    ; preds = %5042, %4988
  %4994 = phi float [ 0.000000e+00, %4988 ], [ %5037, %5042 ]
  %4995 = phi float [ 0.000000e+00, %4988 ], [ %5039, %5042 ]
  %4996 = phi i32 [ 0, %4988 ], [ %5043, %5042 ]
  %4997 = mul i32 %4996, 2
  %4998 = add i32 0, %4997
  %4999 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4998
  %5000 = load float, float* %4999, align 4
  %5001 = mul i32 %4996, 2
  %5002 = add i32 1, %5001
  %5003 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5002
  %5004 = load float, float* %5003, align 4
  %5005 = fmul fast float %5000, %4991
  %5006 = call float @dx.op.tertiary.f32(i32 46, float %5004, float %4992, float %5005)  ; FMad(a,b,c)
  %5007 = fmul fast float %5000, %4990
  %5008 = call float @dx.op.tertiary.f32(i32 46, float %5004, float %4991, float %5007)  ; FMad(a,b,c)
  %5009 = fmul fast float %5006, %4917
  %5010 = fmul fast float %5008, %4917
  %5011 = fadd fast float %5009, %4051
  %5012 = fadd fast float %5010, %4055
  %5013 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5011, float %5012, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5014 = extractvalue %dx.types.ResRet.f32 %5013, 0
  %5015 = extractvalue %dx.types.ResRet.f32 %5013, 1
  %5016 = extractvalue %dx.types.ResRet.f32 %5013, 2
  %5017 = extractvalue %dx.types.ResRet.f32 %5013, 3
  %5018 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %5014, float* %5018, align 4
  %5019 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %5015, float* %5019, align 4
  %5020 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %5016, float* %5020, align 4
  %5021 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %5017, float* %5021, align 4
  %5022 = fsub fast float %5014, %4919
  %5023 = fcmp fast olt float %5022, 0.000000e+00
  %5024 = select i1 %5023, float 0.000000e+00, float 1.000000e+00
  %5025 = fadd fast float %5024, %4994
  %5026 = fmul fast float %5024, %5022
  %5027 = fadd fast float %5026, %4995
  br label %5028

; <label>:5028                                    ; preds = %5028, %4993
  %5029 = phi i32 [ 1, %4993 ], [ %5040, %5028 ]
  %5030 = phi float [ %5027, %4993 ], [ %5039, %5028 ]
  %5031 = phi float [ %5025, %4993 ], [ %5037, %5028 ]
  %5032 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %5029
  %5033 = load float, float* %5032, align 4, !tbaa !134, !noalias !124
  %5034 = fsub fast float %5033, %4919
  %5035 = fcmp fast olt float %5034, 0.000000e+00
  %5036 = select i1 %5035, float 0.000000e+00, float 1.000000e+00
  %5037 = fadd fast float %5036, %5031
  %5038 = fmul fast float %5036, %5034
  %5039 = fadd fast float %5038, %5030
  %5040 = add nuw nsw i32 %5029, 1
  %5041 = icmp eq i32 %5040, 4
  br i1 %5041, label %5042, label %5028, !llvm.loop !136

; <label>:5042                                    ; preds = %5028
  %5043 = add nuw nsw i32 %4996, 1
  %5044 = icmp eq i32 %5043, 8
  br i1 %5044, label %5045, label %4993, !llvm.loop !137

; <label>:5045                                    ; preds = %5042
  %5046 = fdiv fast float 1.000000e+00, %5037
  %5047 = fmul fast float %5046, %5039
  %5048 = fdiv fast float 1.000000e+00, %4919
  %5049 = fmul fast float %5047, %5048
  %5050 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5051 = call float @dx.op.binary.f32(i32 35, float %5050, float 0.000000e+00)  ; FMax(a,b)
  %5052 = fmul fast float %5037, 3.125000e-02
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fmul fast float %5053, 2.000000e+00
  %5055 = fadd fast float %5054, -1.000000e+00
  %5056 = fcmp fast ogt float %5055, 0.000000e+00
  %5057 = fcmp fast olt float %5055, 0.000000e+00
  %5058 = zext i1 %5056 to i32
  %5059 = zext i1 %5057 to i32
  %5060 = sub nsw i32 %5058, %5059
  %5061 = sitofp i32 %5060 to float
  %5062 = fmul fast float %5061, %5055
  %5063 = fsub fast float 1.000000e+00, %5062
  %5064 = fmul fast float %5063, %5063
  %5065 = fmul fast float %5064, %5063
  %5066 = fsub fast float %5063, %5065
  %5067 = fmul fast float %5066, %5051
  %5068 = fsub fast float 1.000000e+00, %5065
  %5069 = fsub fast float %5068, %5067
  %5070 = fmul fast float %5061, 5.000000e-01
  %5071 = fmul fast float %5070, %5069
  %5072 = fsub fast float 5.000000e-01, %5071
  br label %5073

; <label>:5073                                    ; preds = %5045, %4921, %4906
  %5074 = phi float [ 1.000000e+00, %4906 ], [ %4987, %4921 ], [ %5072, %5045 ]
  %5075 = fsub fast float %4740, %4575
  %5076 = fmul fast float %5075, %4113
  %5077 = fadd fast float %5076, %4575
  %5078 = fsub fast float %4907, %5077
  %5079 = fmul fast float %5078, %4143
  %5080 = fadd fast float %5079, %5077
  %5081 = fsub fast float %5074, %5080
  %5082 = fmul fast float %5081, %4169
  %5083 = fadd fast float %5082, %5080
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %5086 = fcmp fast ogt float %5085, 0.000000e+00
  br i1 %5086, label %5087, label %5127, !dx.controlflow.hints !140

; <label>:5087                                    ; preds = %5073
  %5088 = fcmp fast ugt float %5085, 0.000000e+00
  br i1 %5088, label %5089, label %5124

; <label>:5089                                    ; preds = %5087
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 0
  %5092 = extractvalue %dx.types.CBufRet.f32 %5090, 1
  %5093 = extractvalue %dx.types.CBufRet.f32 %5090, 2
  %5094 = extractvalue %dx.types.CBufRet.f32 %5090, 3
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 0
  %5097 = extractvalue %dx.types.CBufRet.f32 %5095, 1
  %5098 = extractvalue %dx.types.CBufRet.f32 %5095, 2
  %5099 = extractvalue %dx.types.CBufRet.f32 %5095, 3
  %5100 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5101 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %5102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5103 = extractvalue %dx.types.CBufRet.f32 %5102, 0
  %5104 = extractvalue %dx.types.CBufRet.f32 %5102, 1
  %5105 = extractvalue %dx.types.CBufRet.f32 %5102, 2
  %5106 = fadd fast float %5103, %4028
  %5107 = fadd fast float %5104, %4029
  %5108 = fadd fast float %5105, %4030
  %5109 = fmul fast float %5106, %5091
  %5110 = call float @dx.op.tertiary.f32(i32 46, float %5092, float %5107, float %5109)  ; FMad(a,b,c)
  %5111 = call float @dx.op.tertiary.f32(i32 46, float %5093, float %5108, float %5110)  ; FMad(a,b,c)
  %5112 = fadd fast float %5111, %5094
  %5113 = fmul fast float %5106, %5096
  %5114 = call float @dx.op.tertiary.f32(i32 46, float %5097, float %5107, float %5113)  ; FMad(a,b,c)
  %5115 = call float @dx.op.tertiary.f32(i32 46, float %5098, float %5108, float %5114)  ; FMad(a,b,c)
  %5116 = fadd fast float %5115, %5099
  %5117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5112, float %5116, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5118 = extractvalue %dx.types.ResRet.f32 %5117, 0
  %5119 = fmul fast float %5118, %5101
  %5120 = fadd fast float %5119, %5100
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = fmul fast float %5121, %5085
  %5123 = fsub fast float 1.000000e+00, %5122
  br label %5124

; <label>:5124                                    ; preds = %5089, %5087
  %5125 = phi float [ %5123, %5089 ], [ 1.000000e+00, %5087 ]
  %5126 = fmul fast float %5125, %5083
  br label %5127

; <label>:5127                                    ; preds = %5124, %5073, %4008
  %5128 = phi float [ 1.000000e+00, %4008 ], [ %5126, %5124 ], [ %5083, %5073 ]
  %5129 = call float @dx.op.binary.f32(i32 36, float %5128, float %5128)  ; FMin(a,b)
  %5130 = call float @dx.op.binary.f32(i32 36, float %5128, float %5129)  ; FMin(a,b)
  %5131 = fcmp fast ogt float %5130, 0.000000e+00
  br i1 %5131, label %5132, label %5297, !dx.controlflow.hints !141

; <label>:5132                                    ; preds = %5127
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 0
  %5135 = extractvalue %dx.types.CBufRet.f32 %5133, 1
  %5136 = extractvalue %dx.types.CBufRet.f32 %5133, 2
  %5137 = extractvalue %dx.types.CBufRet.f32 %5133, 3
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 0
  %5140 = extractvalue %dx.types.CBufRet.f32 %5138, 1
  %5141 = extractvalue %dx.types.CBufRet.f32 %5138, 2
  %5142 = extractvalue %dx.types.CBufRet.f32 %5138, 3
  %5143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5144 = extractvalue %dx.types.CBufRet.f32 %5143, 0
  %5145 = extractvalue %dx.types.CBufRet.f32 %5143, 1
  %5146 = extractvalue %dx.types.CBufRet.f32 %5143, 2
  %5147 = extractvalue %dx.types.CBufRet.f32 %5143, 3
  %5148 = fmul fast float %5134, %4028
  %5149 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %5135, float %5148)  ; FMad(a,b,c)
  %5150 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %5136, float %5149)  ; FMad(a,b,c)
  %5151 = fadd fast float %5150, %5137
  %5152 = fmul fast float %5139, %4028
  %5153 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %5140, float %5152)  ; FMad(a,b,c)
  %5154 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %5141, float %5153)  ; FMad(a,b,c)
  %5155 = fadd fast float %5154, %5142
  %5156 = fmul fast float %5144, %4028
  %5157 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %5145, float %5156)  ; FMad(a,b,c)
  %5158 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %5146, float %5157)  ; FMad(a,b,c)
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  %5161 = extractvalue %dx.types.CBufRet.f32 %5159, 1
  %5162 = extractvalue %dx.types.CBufRet.f32 %5159, 3
  %5163 = fmul fast float %5162, %5151
  %5164 = fmul fast float %5162, %5155
  %5165 = fadd fast float %5163, %5160
  %5166 = fadd fast float %5164, %5161
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = extractvalue %dx.types.CBufRet.f32 %5167, 1
  %5170 = fsub fast float %5165, %5168
  %5171 = fsub fast float %5166, %5169
  %5172 = fcmp fast olt float %5170, 0.000000e+00
  %5173 = fcmp fast olt float %5171, 0.000000e+00
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.CBufRet.f32 %5174, 1
  %5177 = extractvalue %dx.types.CBufRet.f32 %5174, 2
  %5178 = extractvalue %dx.types.CBufRet.f32 %5174, 3
  %5179 = select i1 %5172, float %5175, float %5177
  %5180 = select i1 %5173, float %5176, float %5178
  %5181 = fmul fast float %5179, %5170
  %5182 = fmul fast float %5180, %5171
  %5183 = call float @dx.op.unary.f32(i32 6, float %5181)  ; FAbs(value)
  %5184 = call float @dx.op.unary.f32(i32 6, float %5182)  ; FAbs(value)
  %5185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.f32 %5185, 0
  %5187 = call float @dx.op.binary.f32(i32 35, float %5183, float %5184)  ; FMax(a,b)
  %5188 = fsub fast float %5186, %5187
  %5189 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5190 = fcmp fast ogt float %5189, 0.000000e+00
  br i1 %5190, label %5191, label %5232, !dx.controlflow.hints !142

; <label>:5191                                    ; preds = %5132
  %5192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5165, float %5166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 1
  %5194 = fcmp fast ogt float %5193, 0.000000e+00
  br i1 %5194, label %5195, label %5227

; <label>:5195                                    ; preds = %5191
  %5196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5165, float %5166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5197 = extractvalue %dx.types.ResRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.ResRet.f32 %5196, 1
  %5199 = extractvalue %dx.types.ResRet.f32 %5196, 2
  %5200 = extractvalue %dx.types.ResRet.f32 %5196, 3
  %5201 = fsub fast float 1.000000e+00, %5147
  %5202 = fsub fast float %5201, %5158
  %5203 = fmul fast float %5202, 0x400921FB60000000
  %5204 = fadd fast float %5203, 0x3FF921FB60000000
  %5205 = call float @dx.op.unary.f32(i32 13, float %5204)  ; Sin(value)
  %5206 = fadd fast float %5205, -1.000000e+00
  %5207 = fmul fast float %5206, 0x3FD45F3060000000
  %5208 = fmul fast float %5202, 0x401921FB60000000
  %5209 = fadd fast float %5208, 0x400921FB60000000
  %5210 = call float @dx.op.unary.f32(i32 13, float %5209)  ; Sin(value)
  %5211 = fadd fast float %5210, 0x3E7777A5C0000000
  %5212 = fmul fast float %5211, 0x3FC45F3060000000
  %5213 = fmul fast float %5202, 0x4022D97C80000000
  %5214 = fadd fast float %5213, 0x4012D97C80000000
  %5215 = call float @dx.op.unary.f32(i32 13, float %5214)  ; Sin(value)
  %5216 = fadd fast float %5215, 1.000000e+00
  %5217 = fmul fast float %5216, 0x3FBB2995E0000000
  %5218 = fmul fast float %5202, 0x402921FB60000000
  %5219 = fadd fast float %5218, 0x401921FB60000000
  %5220 = call float @dx.op.unary.f32(i32 13, float %5219)  ; Sin(value)
  %5221 = fadd fast float %5220, 0xBE8777A5C0000000
  %5222 = fmul fast float %5221, 0x3FB45F3060000000
  %5223 = call float @dx.op.dot4.f32(i32 56, float %5197, float %5198, float %5199, float %5200, float %5207, float %5212, float %5217, float %5222)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5224 = fmul fast float %5223, 0xBFF7154760000000
  %5225 = call float @dx.op.unary.f32(i32 21, float %5224)  ; Exp(value)
  %5226 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  br label %5227

; <label>:5227                                    ; preds = %5195, %5191
  %5228 = phi float [ %5226, %5195 ], [ 1.000000e+00, %5191 ]
  %5229 = fadd fast float %5228, -1.000000e+00
  %5230 = fmul fast float %5229, %5189
  %5231 = fadd fast float %5230, 1.000000e+00
  br label %5232

; <label>:5232                                    ; preds = %5227, %5132
  %5233 = phi float [ %5231, %5227 ], [ 1.000000e+00, %5132 ]
  %5234 = fmul fast float %5233, %5128
  %5235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.CBufRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.CBufRet.f32 %5235, 2
  %5239 = fadd fast float %5236, %156
  %5240 = fadd fast float %5237, %157
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 1
  %5243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.f32 %5243, 0
  %5245 = extractvalue %dx.types.CBufRet.f32 %5243, 1
  %5246 = extractvalue %dx.types.CBufRet.f32 %5243, 2
  %5247 = fsub fast float -0.000000e+00, %5239
  %5248 = fsub fast float -0.000000e+00, %5240
  %5249 = fsub fast float %2128, %5238
  %5250 = fadd fast float %5249, %5242
  %5251 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5247, float %5248, float %5250)  ; Dot3(ax,ay,az,bx,by,bz)
  %5252 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5244, float %5245, float %5246)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = fdiv fast float 1.000000e+00, %5252
  %5254 = fmul fast float %5253, %5251
  %5255 = fmul fast float %5244, %5254
  %5256 = fmul fast float %5245, %5254
  %5257 = fadd fast float %5255, %5239
  %5258 = fadd fast float %5256, %5240
  %5259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.CBufRet.f32 %5259, 1
  %5262 = fsub fast float %5257, %5260
  %5263 = fsub fast float %5258, %5261
  %5264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.f32 %5264, 2
  %5266 = extractvalue %dx.types.CBufRet.f32 %5264, 3
  %5267 = fmul fast float %5262, %5265
  %5268 = fmul fast float %5263, %5266
  %5269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.i32 %5269, 3
  %5271 = icmp eq i32 %5270, 0
  br i1 %5271, label %5277, label %5272

; <label>:5272                                    ; preds = %5232
  %5273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5267, float %5268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.ResRet.f32 %5273, 1
  %5276 = extractvalue %dx.types.ResRet.f32 %5273, 2
  br label %5282

; <label>:5277                                    ; preds = %5232
  %5278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5267, float %5268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.ResRet.f32 %5278, 2
  br label %5282

; <label>:5282                                    ; preds = %5277, %5272
  %5283 = phi float [ %5274, %5272 ], [ %5279, %5277 ]
  %5284 = phi float [ %5275, %5272 ], [ %5280, %5277 ]
  %5285 = phi float [ %5276, %5272 ], [ %5281, %5277 ]
  %5286 = extractvalue %dx.types.CBufRet.f32 %5241, 2
  %5287 = fmul fast float %5286, %5283
  %5288 = extractvalue %dx.types.CBufRet.f32 %5241, 0
  %5289 = fsub fast float %5254, %5288
  %5290 = fsub fast float %5289, %5287
  %5291 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5290)  ; FMax(a,b)
  %5292 = fmul fast float %5291, %5284
  %5293 = call float @dx.op.binary.f32(i32 36, float %5285, float %5292)  ; FMin(a,b)
  %5294 = fmul fast float %5293, 0xBFF7154760000000
  %5295 = call float @dx.op.unary.f32(i32 21, float %5294)  ; Exp(value)
  %5296 = fmul fast float %5234, %5295
  br label %5297

; <label>:5297                                    ; preds = %5282, %5127
  %5298 = phi float [ %5296, %5282 ], [ %5128, %5127 ]
  %5299 = call float @dx.op.binary.f32(i32 36, float %5298, float %5298)  ; FMin(a,b)
  %5300 = call float @dx.op.binary.f32(i32 36, float %5298, float %5299)  ; FMin(a,b)
  %5301 = fcmp fast ogt float %5300, 0.000000e+00
  br i1 %5301, label %5302, label %5549, !dx.controlflow.hints !143

; <label>:5302                                    ; preds = %5297
  %5303 = fmul fast float %5298, %4020
  %5304 = fmul fast float %5298, %4021
  %5305 = fmul fast float %5298, %4022
  %5306 = fsub fast float %158, %1916
  %5307 = fcmp fast ogt float %5306, 0.000000e+00
  %5308 = fmul fast float %4009, 5.120000e+02
  %5309 = fmul fast float %4010, 5.120000e+02
  %5310 = fmul fast float %4011, 5.120000e+02
  %5311 = fadd fast float %5310, %158
  %5312 = fsub fast float %1916, %5311
  %5313 = fmul fast float %5312, 2.000000e+00
  %5314 = fadd fast float %5313, %5311
  %5315 = select i1 %5307, float %5314, float %5311
  %5316 = fsub fast float %5315, %158
  %5317 = call float @dx.op.dot3.f32(i32 55, float %5308, float %5309, float %5316, float %5308, float %5309, float %5316)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = call float @dx.op.unary.f32(i32 25, float %5317)  ; Rsqrt(value)
  %5319 = fmul fast float %5318, %5308
  %5320 = fmul fast float %5318, %5309
  %5321 = fmul fast float %5318, %5316
  %5322 = fsub fast float %1916, %158
  %5323 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5322)  ; Dot3(ax,ay,az,bx,by,bz)
  %5324 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5319, float %5320, float %5321)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = fdiv fast float 1.000000e+00, %5324
  %5326 = fmul fast float %5325, %5323
  %5327 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5306, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = fcmp fast ogt float %5327, 0.000000e+00
  %5329 = fcmp fast olt float %5327, 0.000000e+00
  %5330 = zext i1 %5328 to i32
  %5331 = zext i1 %5329 to i32
  %5332 = sub nsw i32 %5330, %5331
  %5333 = sitofp i32 %5332 to float
  %5334 = fsub fast float %5315, %1916
  %5335 = call float @dx.op.dot3.f32(i32 55, float %5308, float %5309, float %5334, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = fcmp fast ogt float %5335, 0.000000e+00
  %5337 = fcmp fast olt float %5335, 0.000000e+00
  %5338 = zext i1 %5336 to i32
  %5339 = zext i1 %5337 to i32
  %5340 = sub nsw i32 %5338, %5339
  %5341 = sitofp i32 %5340 to float
  %5342 = fcmp fast une float %5333, %5341
  br i1 %5342, label %5343, label %5353

; <label>:5343                                    ; preds = %5302
  %5344 = fmul fast float %5326, %5321
  %5345 = fmul fast float %5326, %5320
  %5346 = fmul fast float %5326, %5319
  %5347 = fmul fast float %5346, %5346
  %5348 = fmul fast float %5345, %5345
  %5349 = fadd fast float %5347, %5348
  %5350 = fmul fast float %5344, %5344
  %5351 = fadd fast float %5349, %5350
  %5352 = call float @dx.op.unary.f32(i32 24, float %5351)  ; Sqrt(value)
  br label %5363

; <label>:5353                                    ; preds = %5302
  %5354 = icmp slt i32 %5332, 0
  br i1 %5354, label %5355, label %5363

; <label>:5355                                    ; preds = %5353
  %5356 = fsub fast float %158, %5315
  %5357 = fmul fast float %5308, %5308
  %5358 = fmul fast float %5309, %5309
  %5359 = fadd fast float %5357, %5358
  %5360 = fmul fast float %5356, %5356
  %5361 = fadd fast float %5359, %5360
  %5362 = call float @dx.op.unary.f32(i32 24, float %5361)  ; Sqrt(value)
  br label %5363

; <label>:5363                                    ; preds = %5355, %5353, %5343
  %5364 = phi float [ %5352, %5343 ], [ %5362, %5355 ], [ 0.000000e+00, %5353 ]
  %5365 = fsub fast float -0.000000e+00, %5364
  %5366 = select i1 %5307, float -0.000000e+00, float %5365
  %5367 = fmul fast float %1917, 0x3FF7154760000000
  %5368 = fmul fast float %5367, %5366
  %5369 = fmul fast float %1918, 0x3FF7154760000000
  %5370 = fmul fast float %5369, %5366
  %5371 = fmul fast float %1919, 0x3FF7154760000000
  %5372 = fmul fast float %5371, %5366
  %5373 = call float @dx.op.unary.f32(i32 21, float %5368)  ; Exp(value)
  %5374 = call float @dx.op.unary.f32(i32 21, float %5370)  ; Exp(value)
  %5375 = call float @dx.op.unary.f32(i32 21, float %5372)  ; Exp(value)
  %5376 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5377 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5378 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5379 = fmul fast float %5303, %5376
  %5380 = fmul fast float %5304, %5377
  %5381 = fmul fast float %5305, %5378
  %5382 = fsub fast float %4009, %2116
  %5383 = fsub fast float %4010, %2115
  %5384 = fsub fast float %4011, %2114
  %5385 = call float @dx.op.dot3.f32(i32 55, float %5382, float %5383, float %5384, float %5382, float %5383, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = call float @dx.op.unary.f32(i32 25, float %5385)  ; Rsqrt(value)
  %5387 = fmul fast float %5386, %5382
  %5388 = fmul fast float %5386, %5383
  %5389 = fmul fast float %5386, %5384
  %5390 = call float @dx.op.dot3.f32(i32 55, float %4009, float %4010, float %4011, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = call float @dx.op.dot3.f32(i32 55, float %2113, float %2112, float %2111, float %5387, float %5388, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5392 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5393 = fmul fast float %5392, %5392
  %5394 = fmul fast float %5393, %4004
  %5395 = call float @dx.op.unary.f32(i32 7, float %5394)  ; Saturate(value)
  %5396 = fmul fast float %5395, %5392
  %5397 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2121, float %2122, float %5387, float %5388, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = fmul fast float %5397, %5397
  %5399 = call float @dx.op.unary.f32(i32 6, float %5390)  ; FAbs(value)
  %5400 = fsub fast float 1.000000e+00, %2149
  %5401 = fmul fast float %2131, %2131
  %5402 = fmul fast float %5401, %5400
  %5403 = fadd fast float %5402, %2149
  %5404 = bitcast float %5403 to i32
  %5405 = ashr i32 %5404, 1
  %5406 = add nsw i32 %5405, 532487669
  %5407 = bitcast i32 %5406 to float
  %5408 = fadd fast float %5407, %2131
  %5409 = fmul fast float %2149, %5398
  %5410 = fsub fast float 1.000000e+00, %5398
  %5411 = fadd fast float %5410, %5409
  %5412 = fmul fast float %5399, %5399
  %5413 = fmul fast float %5412, %5400
  %5414 = fadd fast float %5413, %2149
  %5415 = bitcast float %5414 to i32
  %5416 = ashr i32 %5415, 1
  %5417 = add nsw i32 %5416, 532487669
  %5418 = bitcast i32 %5417 to float
  %5419 = fadd fast float %5418, %5399
  %5420 = fmul fast float %5411, %5411
  %5421 = fmul fast float %5420, %5408
  %5422 = fmul fast float %5421, %5419
  %5423 = fdiv fast float 0x3FF0A00000000000, %5422
  %5424 = fmul fast float %5423, %2149
  %5425 = call float @dx.op.unary.f32(i32 6, float %5391)  ; FAbs(value)
  %5426 = fsub fast float 1.000000e+00, %5425
  %5427 = bitcast float %5426 to i32
  %5428 = sitofp i32 %5427 to float
  %5429 = fmul fast float %5428, 5.000000e+00
  %5430 = fadd fast float %5429, 0xC1EFBF8940000000
  %5431 = fptosi float %5430 to i32
  %5432 = bitcast i32 %5431 to float
  %5433 = fsub fast float 1.000000e+00, %2117
  %5434 = fsub fast float 1.000000e+00, %2118
  %5435 = fsub fast float 1.000000e+00, %2129
  %5436 = fmul fast float %5432, %5433
  %5437 = fmul fast float %5432, %5434
  %5438 = fmul fast float %5432, %5435
  %5439 = fadd fast float %5436, %2117
  %5440 = fadd fast float %5437, %2118
  %5441 = fadd fast float %5438, %2129
  br i1 %3427, label %5442, label %5465

; <label>:5442                                    ; preds = %5363
  %5443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1494, float %5425, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5444 = extractvalue %dx.types.ResRet.f32 %5443, 0
  %5445 = extractvalue %dx.types.ResRet.f32 %5443, 1
  %5446 = extractvalue %dx.types.ResRet.f32 %5443, 2
  %5447 = fadd fast float %5444, -5.000000e-01
  %5448 = fadd fast float %5445, -5.000000e-01
  %5449 = fadd fast float %5446, -5.000000e-01
  %5450 = fmul fast float %2117, 4.000000e+00
  %5451 = fmul fast float %5450, %5433
  %5452 = fmul fast float %5451, %5447
  %5453 = fmul fast float %2118, 4.000000e+00
  %5454 = fmul fast float %5453, %5434
  %5455 = fmul fast float %5454, %5448
  %5456 = fmul fast float %2129, 4.000000e+00
  %5457 = fmul fast float %5456, %5435
  %5458 = fmul fast float %5457, %5449
  %5459 = fadd fast float %5452, %5439
  %5460 = fadd fast float %5455, %5440
  %5461 = fadd fast float %5458, %5441
  %5462 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5463 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5464 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  br label %5465

; <label>:5465                                    ; preds = %5442, %5363
  %5466 = phi float [ %5462, %5442 ], [ %5439, %5363 ]
  %5467 = phi float [ %5463, %5442 ], [ %5440, %5363 ]
  %5468 = phi float [ %5464, %5442 ], [ %5441, %5363 ]
  %5469 = fmul fast float %5390, 9.843750e-01
  %5470 = fadd fast float %5469, 7.812500e-03
  %5471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5470, float %3417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5472 = extractvalue %dx.types.ResRet.f32 %5471, 2
  %5473 = extractvalue %dx.types.ResRet.f32 %5471, 3
  %5474 = fmul fast float %5472, %2117
  %5475 = fmul fast float %5472, %2118
  %5476 = fmul fast float %5472, %2129
  %5477 = fadd fast float %5474, %5473
  %5478 = fadd fast float %5475, %5473
  %5479 = fadd fast float %5476, %5473
  br i1 %3427, label %5480, label %5503

; <label>:5480                                    ; preds = %5465
  %5481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1494, float %5390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.ResRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.ResRet.f32 %5481, 2
  %5485 = fadd fast float %5482, -5.000000e-01
  %5486 = fadd fast float %5483, -5.000000e-01
  %5487 = fadd fast float %5484, -5.000000e-01
  %5488 = fmul fast float %2117, 4.000000e+00
  %5489 = fmul fast float %5488, %5433
  %5490 = fmul fast float %5489, %5485
  %5491 = fmul fast float %2118, 4.000000e+00
  %5492 = fmul fast float %5491, %5434
  %5493 = fmul fast float %5492, %5486
  %5494 = fmul fast float %2129, 4.000000e+00
  %5495 = fmul fast float %5494, %5435
  %5496 = fmul fast float %5495, %5487
  %5497 = fadd fast float %5490, %5477
  %5498 = fadd fast float %5493, %5478
  %5499 = fadd fast float %5496, %5479
  %5500 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5501 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5502 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  br label %5503

; <label>:5503                                    ; preds = %5480, %5465
  %5504 = phi float [ %5500, %5480 ], [ %5477, %5465 ]
  %5505 = phi float [ %5501, %5480 ], [ %5478, %5465 ]
  %5506 = phi float [ %5502, %5480 ], [ %5479, %5465 ]
  %5507 = call float @dx.op.binary.f32(i32 35, float %5505, float %5506)  ; FMax(a,b)
  %5508 = call float @dx.op.binary.f32(i32 35, float %5504, float %5507)  ; FMax(a,b)
  %5509 = fsub fast float 1.000000e+00, %5508
  %5510 = fmul fast float %5466, %5424
  %5511 = fmul fast float %5467, %5424
  %5512 = fmul fast float %5468, %5424
  %5513 = fsub fast float 1.000000e+00, %5391
  %5514 = bitcast float %5513 to i32
  %5515 = sitofp i32 %5514 to float
  %5516 = fmul fast float %5515, 5.000000e+00
  %5517 = fadd fast float %5516, 0xC1EFBF8940000000
  %5518 = fptosi float %5517 to i32
  %5519 = bitcast i32 %5518 to float
  %5520 = fmul fast float %5519, %1493
  %5521 = fmul fast float %5509, %5520
  %5522 = fmul fast float %5521, %3969
  %5523 = fmul fast float %5521, %3970
  %5524 = fmul fast float %5521, %3971
  %5525 = fadd fast float %5522, %5510
  %5526 = fadd fast float %5523, %5511
  %5527 = fadd fast float %5524, %5512
  %5528 = fmul fast float %5396, %5379
  %5529 = fmul fast float %5528, %5509
  %5530 = fmul fast float %5396, %5380
  %5531 = fmul fast float %5530, %5509
  %5532 = fmul fast float %5396, %5381
  %5533 = fmul fast float %5532, %5509
  %5534 = fmul fast float %5528, %5525
  %5535 = fmul fast float %5530, %5526
  %5536 = fmul fast float %5532, %5527
  %5537 = fadd fast float %5529, %3953
  %5538 = fmul fast float %5537, %1514
  %5539 = fadd fast float %5531, %3954
  %5540 = fmul fast float %5539, %1514
  %5541 = fadd fast float %5533, %3955
  %5542 = fmul fast float %5541, %1514
  %5543 = fadd fast float %5534, %3996
  %5544 = fmul fast float %5543, %1514
  %5545 = fadd fast float %5535, %3999
  %5546 = fmul fast float %5545, %1514
  %5547 = fadd fast float %5536, %4002
  %5548 = fmul fast float %5547, %1514
  br label %5549

; <label>:5549                                    ; preds = %5503, %5297, %3949
  %5550 = phi float [ %3997, %3949 ], [ %3997, %5297 ], [ %5544, %5503 ]
  %5551 = phi float [ %4000, %3949 ], [ %4000, %5297 ], [ %5546, %5503 ]
  %5552 = phi float [ %4003, %3949 ], [ %4003, %5297 ], [ %5548, %5503 ]
  %5553 = phi float [ %3992, %3949 ], [ %3992, %5297 ], [ %5538, %5503 ]
  %5554 = phi float [ %3993, %3949 ], [ %3993, %5297 ], [ %5540, %5503 ]
  %5555 = phi float [ %3994, %3949 ], [ %3994, %5297 ], [ %5542, %5503 ]
  %5556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.i32 %5556, 0
  %5558 = icmp eq i32 %5557, 0
  br i1 %5558, label %6221, label %5559

; <label>:5559                                    ; preds = %5549
  %5560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5561 = extractvalue %dx.types.CBufRet.f32 %5560, 2
  %5562 = extractvalue %dx.types.CBufRet.f32 %5560, 3
  %5563 = fmul fast float %5561, %101
  %5564 = fmul fast float %5562, %102
  %5565 = fptoui float %5563 to i32
  %5566 = fptoui float %5564 to i32
  %5567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5568 = extractvalue %dx.types.CBufRet.f32 %5567, 0
  %5569 = extractvalue %dx.types.CBufRet.f32 %5567, 2
  %5570 = extractvalue %dx.types.CBufRet.f32 %5567, 3
  %5571 = fadd fast float %89, -4.000000e+00
  %5572 = call float @dx.op.binary.f32(i32 35, float %5571, float 0.000000e+00)  ; FMax(a,b)
  %5573 = fadd fast float %5572, %5568
  %5574 = fmul fast float %5573, %5569
  %5575 = call float @dx.op.unary.f32(i32 23, float %5574)  ; Log(value)
  %5576 = fmul fast float %5575, %5570
  %5577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = extractvalue %dx.types.CBufRet.f32 %5577, 2
  %5579 = fmul fast float %5576, %5578
  %5580 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5582 = extractvalue %dx.types.CBufRet.i32 %5581, 1
  %5583 = add i32 %5582, -1
  %5584 = uitofp i32 %5582 to float
  %5585 = fmul fast float %5584, %5580
  %5586 = fptoui float %5585 to i32
  %5587 = call i32 @dx.op.binary.i32(i32 40, i32 %5586, i32 %5583)  ; UMin(a,b)
  %5588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.i32 %5588, 2
  %5590 = extractvalue %dx.types.CBufRet.i32 %5588, 3
  %5591 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5566, i32 %5589, i32 %5565)  ; UMad(a,b,c)
  %5592 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5587, i32 %5590, i32 %5591)  ; UMad(a,b,c)
  %5593 = add nsw i32 %5557, -1
  %5594 = call i32 @dx.op.binary.i32(i32 37, i32 %5593, i32 0)  ; IMax(a,b)
  %5595 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %5596 = fptoui float %5595 to i32
  %5597 = lshr i32 %5596, 5
  %5598 = call i32 @dx.op.binary.i32(i32 40, i32 %5597, i32 8191)  ; UMin(a,b)
  %5599 = shl i32 %5598, 2
  %5600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5599, i32 undef)  ; BufferLoad(srv,index,wot)
  %5601 = extractvalue %dx.types.ResRet.i32 %5600, 0
  %5602 = lshr i32 %5601, 16
  %5603 = and i32 %5601, 65535
  %5604 = lshr i32 %5601, 21
  %5605 = lshr i32 %5603, 5
  %5606 = call i32 @dx.op.binary.i32(i32 40, i32 %5605, i32 %5594)  ; UMin(a,b)
  %5607 = icmp ugt i32 %5604, %5606
  br i1 %5607, label %6221, label %5608

; <label>:5608                                    ; preds = %5559
  br label %5609

; <label>:5609                                    ; preds = %6211, %5608
  %5610 = phi i32 [ %6218, %6211 ], [ %5604, %5608 ]
  %5611 = phi float [ %6212, %6211 ], [ %5550, %5608 ]
  %5612 = phi float [ %6213, %6211 ], [ %5551, %5608 ]
  %5613 = phi float [ %6214, %6211 ], [ %5552, %5608 ]
  %5614 = phi float [ %6215, %6211 ], [ %5553, %5608 ]
  %5615 = phi float [ %6216, %6211 ], [ %5554, %5608 ]
  %5616 = phi float [ %6217, %6211 ], [ %5555, %5608 ]
  %5617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.i32 %5617, 0
  %5619 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5592, i32 %5618, i32 %5610)  ; UMad(a,b,c)
  %5620 = shl i32 %5619, 2
  %5621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5620, i32 undef)  ; BufferLoad(srv,index,wot)
  %5622 = extractvalue %dx.types.ResRet.i32 %5621, 0
  %5623 = shl i32 %5610, 5
  %5624 = sub nsw i32 %5602, %5623
  %5625 = call i32 @dx.op.binary.i32(i32 37, i32 %5624, i32 0)  ; IMax(a,b)
  %5626 = call i32 @dx.op.binary.i32(i32 38, i32 %5625, i32 31)  ; IMin(a,b)
  %5627 = sub nsw i32 1, %5602
  %5628 = add nsw i32 %5627, %5603
  %5629 = call i32 @dx.op.binary.i32(i32 37, i32 %5628, i32 0)  ; IMax(a,b)
  %5630 = call i32 @dx.op.binary.i32(i32 38, i32 %5629, i32 32)  ; IMin(a,b)
  %5631 = and i32 %5630, 31
  %5632 = shl i32 -1, %5631
  %5633 = xor i32 %5632, -1
  %5634 = and i32 %5626, 31
  %5635 = shl i32 %5633, %5634
  %5636 = icmp eq i32 %5630, 32
  %5637 = select i1 %5636, i32 -1, i32 %5635
  %5638 = and i32 %5637, %5622
  %5639 = icmp eq i32 %5638, 0
  br i1 %5639, label %6211, label %5640

; <label>:5640                                    ; preds = %5609
  br label %5641

; <label>:5641                                    ; preds = %5775, %5640
  %5642 = phi i32 [ %5653, %5775 ], [ %5638, %5640 ]
  %5643 = phi float [ %5776, %5775 ], [ %5611, %5640 ]
  %5644 = phi float [ %5777, %5775 ], [ %5612, %5640 ]
  %5645 = phi float [ %5778, %5775 ], [ %5613, %5640 ]
  %5646 = phi float [ %5779, %5775 ], [ %5614, %5640 ]
  %5647 = phi float [ %5780, %5775 ], [ %5615, %5640 ]
  %5648 = phi float [ %5781, %5775 ], [ %5616, %5640 ]
  %5649 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5642)  ; FirstbitLo(value)
  %5650 = add i32 %5649, %5623
  %5651 = and i32 %5649, 31
  %5652 = shl i32 1, %5651
  %5653 = xor i32 %5652, %5642
  %5654 = mul i32 %5650, 112
  %5655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5654, i32 undef)  ; BufferLoad(srv,index,wot)
  %5656 = extractvalue %dx.types.ResRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.ResRet.f32 %5655, 1
  %5658 = extractvalue %dx.types.ResRet.f32 %5655, 2
  %5659 = or i32 %5654, 12
  %5660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5659, i32 undef)  ; BufferLoad(srv,index,wot)
  %5661 = extractvalue %dx.types.ResRet.f32 %5660, 0
  %5662 = add i32 %5654, 16
  %5663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5662, i32 undef)  ; BufferLoad(srv,index,wot)
  %5664 = extractvalue %dx.types.ResRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.ResRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.ResRet.f32 %5663, 2
  %5667 = add i32 %5654, 28
  %5668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5667, i32 undef)  ; BufferLoad(srv,index,wot)
  %5669 = extractvalue %dx.types.ResRet.i32 %5668, 0
  %5670 = add i32 %5654, 44
  %5671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5670, i32 undef)  ; BufferLoad(srv,index,wot)
  %5672 = extractvalue %dx.types.ResRet.f32 %5671, 0
  %5673 = add i32 %5654, 48
  %5674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5673, i32 undef)  ; BufferLoad(srv,index,wot)
  %5675 = extractvalue %dx.types.ResRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.ResRet.f32 %5674, 1
  %5677 = extractvalue %dx.types.ResRet.f32 %5674, 2
  %5678 = extractvalue %dx.types.ResRet.f32 %5674, 3
  %5679 = add i32 %5654, 64
  %5680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5679, i32 undef)  ; BufferLoad(srv,index,wot)
  %5681 = extractvalue %dx.types.ResRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.ResRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.ResRet.f32 %5680, 2
  %5684 = extractvalue %dx.types.ResRet.f32 %5680, 3
  %5685 = add i32 %5654, 80
  %5686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5685, i32 undef)  ; BufferLoad(srv,index,wot)
  %5687 = extractvalue %dx.types.ResRet.f32 %5686, 1
  %5688 = extractvalue %dx.types.ResRet.f32 %5686, 2
  %5689 = add i32 %5654, 92
  %5690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5689, i32 undef)  ; BufferLoad(srv,index,wot)
  %5691 = extractvalue %dx.types.ResRet.i32 %5690, 0
  %5692 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5657, float %5658, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5693 = select i1 %247, float %5687, float %5656
  %5694 = select i1 %247, float %5692, float %5657
  %5695 = select i1 %247, float %5688, float %5658
  %5696 = and i32 %5691, 65535
  %5697 = uitofp i32 %5696 to float
  %5698 = lshr i32 %5691, 16
  %5699 = uitofp i32 %5698 to float
  %5700 = and i32 %5669, 65535
  %5701 = and i32 %5669, 50331648
  %5702 = icmp eq i32 %5701, 33554432
  %5703 = fsub fast float %5675, %156
  %5704 = fsub fast float %5676, %157
  %5705 = fsub fast float %5677, %158
  %5706 = call float @dx.op.dot3.f32(i32 55, float %5703, float %5704, float %5705, float %5703, float %5704, float %5705)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = call float @dx.op.unary.f32(i32 24, float %5706)  ; Sqrt(value)
  %5708 = fdiv fast float 1.000000e+00, %5707
  %5709 = fmul fast float %5708, %5703
  %5710 = fmul fast float %5708, %5704
  %5711 = fmul fast float %5708, %5705
  %5712 = fadd fast float %5707, %5661
  %5713 = fdiv fast float 1.000000e+00, %5712
  %5714 = fmul float %5672, %5713
  %5715 = fmul float %5714, %5714
  %5716 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  br i1 %5702, label %5717, label %5738

; <label>:5717                                    ; preds = %5641
  %5718 = fmul fast float %5683, %5664
  %5719 = fmul fast float %5683, %5665
  %5720 = fmul fast float %5683, %5666
  %5721 = fadd fast float %5703, %5718
  %5722 = fadd fast float %5704, %5719
  %5723 = fadd fast float %5705, %5720
  %5724 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5722, float %5723, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5725 = call float @dx.op.unary.f32(i32 25, float %5724)  ; Rsqrt(value)
  %5726 = fmul fast float %5725, %5721
  %5727 = fmul fast float %5725, %5722
  %5728 = fmul fast float %5725, %5723
  %5729 = fsub fast float %156, %5675
  %5730 = fsub fast float %157, %5676
  %5731 = fsub fast float %158, %5677
  %5732 = fsub fast float -0.000000e+00, %5729
  %5733 = fsub fast float -0.000000e+00, %5730
  %5734 = fsub fast float -0.000000e+00, %5731
  %5735 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %5734, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5736 = fcmp fast ogt float %5735, 0.000000e+00
  %5737 = uitofp i1 %5736 to float
  br label %5738

; <label>:5738                                    ; preds = %5717, %5641
  %5739 = phi float [ %5737, %5717 ], [ 1.000000e+00, %5641 ]
  %5740 = phi float [ %5726, %5717 ], [ %5709, %5641 ]
  %5741 = phi float [ %5727, %5717 ], [ %5710, %5641 ]
  %5742 = phi float [ %5728, %5717 ], [ %5711, %5641 ]
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %5740, float %5741, float %5742)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = fmul fast float %5743, %5743
  %5745 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5746 = fsub fast float 1.000000e+00, %5745
  %5747 = fmul fast float %5746, 5.000000e-01
  %5748 = fcmp fast ogt float %5743, 0.000000e+00
  %5749 = fsub fast float 1.000000e+00, %5747
  %5750 = select i1 %5748, float %5747, float %5749
  %5751 = fmul fast float %5750, %5699
  %5752 = fadd fast float %5751, %5697
  %5753 = fmul fast float %5752, 0x3EF0001000000000
  %5754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %5753, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5755 = extractvalue %dx.types.ResRet.f32 %5754, 0
  %5756 = fmul fast float %5743, %5681
  %5757 = fadd fast float %5756, %5682
  %5758 = call float @dx.op.unary.f32(i32 7, float %5757)  ; Saturate(value)
  %5759 = select i1 %5702, float 1.000000e+00, float %5758
  %5760 = select i1 %5702, float %5758, float 1.000000e+00
  %5761 = fmul fast float %5707, %5678
  %5762 = fsub fast float 1.000000e+00, %5761
  %5763 = fmul fast float %5762, %5684
  %5764 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5765 = fmul fast float %5764, %5760
  %5766 = fmul fast float %5765, 2.000000e+00
  %5767 = fsub fast float 3.000000e+00, %5766
  %5768 = fmul fast float %5755, %5739
  %5769 = fmul fast float %5765, %5765
  %5770 = fmul fast float %5769, %5768
  %5771 = fmul fast float %5770, %5767
  %5772 = call float @dx.op.binary.f32(i32 36, float %5771, float %5771)  ; FMin(a,b)
  %5773 = call float @dx.op.binary.f32(i32 36, float %5771, float %5772)  ; FMin(a,b)
  %5774 = fcmp fast ogt float %5773, 0.000000e+00
  br i1 %5774, label %5783, label %5775, !dx.controlflow.hints !144

; <label>:5775                                    ; preds = %6167, %5929, %5738
  %5776 = phi float [ %5643, %5929 ], [ %5643, %5738 ], [ %6207, %6167 ]
  %5777 = phi float [ %5644, %5929 ], [ %5644, %5738 ], [ %6208, %6167 ]
  %5778 = phi float [ %5645, %5929 ], [ %5645, %5738 ], [ %6209, %6167 ]
  %5779 = phi float [ %5646, %5929 ], [ %5646, %5738 ], [ %6201, %6167 ]
  %5780 = phi float [ %5647, %5929 ], [ %5647, %5738 ], [ %6202, %6167 ]
  %5781 = phi float [ %5648, %5929 ], [ %5648, %5738 ], [ %6203, %6167 ]
  %5782 = icmp eq i32 %5642, %5652
  br i1 %5782, label %6210, label %5641

; <label>:5783                                    ; preds = %5738
  %5784 = icmp eq i32 %5700, 255
  br i1 %5784, label %5929, label %5785, !dx.controlflow.hints !145

; <label>:5785                                    ; preds = %5783
  %5786 = mul nuw nsw i32 %5700, 176
  %5787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5786, i32 undef)  ; BufferLoad(srv,index,wot)
  %5788 = extractvalue %dx.types.ResRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.ResRet.f32 %5787, 1
  %5790 = extractvalue %dx.types.ResRet.f32 %5787, 2
  %5791 = extractvalue %dx.types.ResRet.f32 %5787, 3
  %5792 = add nuw nsw i32 %5786, 16
  %5793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5792, i32 undef)  ; BufferLoad(srv,index,wot)
  %5794 = extractvalue %dx.types.ResRet.f32 %5793, 0
  %5795 = extractvalue %dx.types.ResRet.f32 %5793, 1
  %5796 = add nuw nsw i32 %5786, 32
  %5797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5796, i32 undef)  ; BufferLoad(srv,index,wot)
  %5798 = extractvalue %dx.types.ResRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.ResRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.ResRet.f32 %5797, 2
  %5801 = add nuw nsw i32 %5786, 48
  %5802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5801, i32 undef)  ; BufferLoad(srv,index,wot)
  %5803 = extractvalue %dx.types.ResRet.f32 %5802, 0
  %5804 = extractvalue %dx.types.ResRet.f32 %5802, 1
  %5805 = extractvalue %dx.types.ResRet.f32 %5802, 2
  %5806 = extractvalue %dx.types.ResRet.f32 %5802, 3
  %5807 = add nuw nsw i32 %5786, 64
  %5808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5807, i32 undef)  ; BufferLoad(srv,index,wot)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.ResRet.f32 %5808, 1
  %5811 = extractvalue %dx.types.ResRet.f32 %5808, 2
  %5812 = extractvalue %dx.types.ResRet.f32 %5808, 3
  %5813 = add nuw nsw i32 %5786, 80
  %5814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5813, i32 undef)  ; BufferLoad(srv,index,wot)
  %5815 = extractvalue %dx.types.ResRet.f32 %5814, 0
  %5816 = extractvalue %dx.types.ResRet.f32 %5814, 1
  %5817 = extractvalue %dx.types.ResRet.f32 %5814, 2
  %5818 = extractvalue %dx.types.ResRet.f32 %5814, 3
  %5819 = add nuw nsw i32 %5786, 96
  %5820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5819, i32 undef)  ; BufferLoad(srv,index,wot)
  %5821 = extractvalue %dx.types.ResRet.f32 %5820, 0
  %5822 = extractvalue %dx.types.ResRet.f32 %5820, 1
  %5823 = extractvalue %dx.types.ResRet.f32 %5820, 2
  %5824 = extractvalue %dx.types.ResRet.f32 %5820, 3
  %5825 = bitcast float %5795 to i32
  %5826 = fmul fast float %5800, %104
  %5827 = fmul fast float %5800, %105
  %5828 = fmul fast float %5800, %106
  %5829 = fadd fast float %5826, %156
  %5830 = fadd fast float %5827, %157
  %5831 = fadd fast float %5828, %158
  %5832 = fmul fast float %5829, %5803
  %5833 = call float @dx.op.tertiary.f32(i32 46, float %5830, float %5809, float %5832)  ; FMad(a,b,c)
  %5834 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %5815, float %5833)  ; FMad(a,b,c)
  %5835 = fadd fast float %5834, %5821
  %5836 = fmul fast float %5829, %5804
  %5837 = call float @dx.op.tertiary.f32(i32 46, float %5830, float %5810, float %5836)  ; FMad(a,b,c)
  %5838 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %5816, float %5837)  ; FMad(a,b,c)
  %5839 = fadd fast float %5838, %5822
  %5840 = fmul fast float %5829, %5805
  %5841 = call float @dx.op.tertiary.f32(i32 46, float %5830, float %5811, float %5840)  ; FMad(a,b,c)
  %5842 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %5817, float %5841)  ; FMad(a,b,c)
  %5843 = fadd fast float %5842, %5823
  %5844 = fmul fast float %5829, %5806
  %5845 = call float @dx.op.tertiary.f32(i32 46, float %5830, float %5812, float %5844)  ; FMad(a,b,c)
  %5846 = call float @dx.op.tertiary.f32(i32 46, float %5831, float %5818, float %5845)  ; FMad(a,b,c)
  %5847 = fadd fast float %5846, %5824
  %5848 = fdiv fast float %5835, %5847
  %5849 = fdiv fast float %5839, %5847
  %5850 = fdiv fast float %5843, %5847
  %5851 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5850)  ; FMax(a,b)
  %5852 = fmul fast float %258, 0x401921FB60000000
  %5853 = call float @dx.op.unary.f32(i32 13, float %5852)  ; Sin(value)
  %5854 = call float @dx.op.unary.f32(i32 12, float %5852)  ; Cos(value)
  %5855 = fmul fast float %5854, %5799
  %5856 = call float @dx.op.tertiary.f32(i32 46, float %5853, float %5799, float 0.000000e+00)  ; FMad(a,b,c)
  %5857 = fmul fast float %5799, %5853
  %5858 = fsub fast float -0.000000e+00, %5857
  %5859 = call float @dx.op.tertiary.f32(i32 46, float %5854, float %5799, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5860

; <label>:5860                                    ; preds = %5860, %5785
  %5861 = phi float [ 0.000000e+00, %5785 ], [ %5893, %5860 ]
  %5862 = phi float [ 0.000000e+00, %5785 ], [ %5895, %5860 ]
  %5863 = phi i32 [ 0, %5785 ], [ %5896, %5860 ]
  %5864 = mul i32 %5863, 2
  %5865 = add i32 0, %5864
  %5866 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5865
  %5867 = load float, float* %5866, align 4
  %5868 = mul i32 %5863, 2
  %5869 = add i32 1, %5868
  %5870 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5869
  %5871 = load float, float* %5870, align 4
  %5872 = fmul fast float %5855, %5867
  %5873 = call float @dx.op.tertiary.f32(i32 46, float %5871, float %5858, float %5872)  ; FMad(a,b,c)
  %5874 = fmul fast float %5867, %5856
  %5875 = call float @dx.op.tertiary.f32(i32 46, float %5871, float %5859, float %5874)  ; FMad(a,b,c)
  %5876 = fadd fast float %5873, %5848
  %5877 = fadd fast float %5875, %5849
  %5878 = fmul fast float %5876, %5794
  %5879 = fmul fast float %5877, %5794
  %5880 = call float @dx.op.binary.f32(i32 35, float %5878, float %5790)  ; FMax(a,b)
  %5881 = call float @dx.op.binary.f32(i32 35, float %5879, float %5790)  ; FMax(a,b)
  %5882 = call float @dx.op.binary.f32(i32 36, float %5880, float %5791)  ; FMin(a,b)
  %5883 = call float @dx.op.binary.f32(i32 36, float %5881, float %5791)  ; FMin(a,b)
  %5884 = fadd fast float %5882, %5788
  %5885 = fadd fast float %5883, %5789
  %5886 = uitofp i32 %5825 to float
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %5884, float %5885, float %5886, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = fsub fast float %5888, %5851
  %5890 = fsub fast float %5889, %5798
  %5891 = fcmp fast ogt float %5890, 0.000000e+00
  %5892 = select i1 %5891, float 1.000000e+00, float 0.000000e+00
  %5893 = fadd fast float %5892, %5861
  %5894 = select i1 %5891, float %5890, float 0.000000e+00
  %5895 = fadd fast float %5894, %5862
  %5896 = add nuw nsw i32 %5863, 1
  %5897 = icmp eq i32 %5896, 8
  br i1 %5897, label %5898, label %5860

; <label>:5898                                    ; preds = %5860
  %5899 = fdiv fast float 1.000000e+00, %5893
  %5900 = fmul fast float %5899, %5895
  %5901 = fdiv fast float 1.000000e+00, %5851
  %5902 = fmul fast float %5900, %5901
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = call float @dx.op.binary.f32(i32 35, float %5903, float 0.000000e+00)  ; FMax(a,b)
  %5905 = fmul fast float %5893, 1.250000e-01
  %5906 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  %5907 = fmul fast float %5906, 2.000000e+00
  %5908 = fadd fast float %5907, -1.000000e+00
  %5909 = fcmp fast ogt float %5908, 0.000000e+00
  %5910 = fcmp fast olt float %5908, 0.000000e+00
  %5911 = zext i1 %5909 to i32
  %5912 = zext i1 %5910 to i32
  %5913 = sub nsw i32 %5911, %5912
  %5914 = sitofp i32 %5913 to float
  %5915 = fmul fast float %5914, %5908
  %5916 = fsub fast float 1.000000e+00, %5915
  %5917 = fmul fast float %5916, %5916
  %5918 = fmul fast float %5917, %5916
  %5919 = fsub fast float %5916, %5918
  %5920 = fmul fast float %5919, %5904
  %5921 = fsub fast float 1.000000e+00, %5918
  %5922 = fsub fast float %5921, %5920
  %5923 = fmul fast float %5914, 5.000000e-01
  %5924 = fmul fast float %5923, %5922
  %5925 = fsub fast float -5.000000e-01, %5924
  %5926 = fmul fast float %5925, %5759
  %5927 = fadd fast float %5926, 1.000000e+00
  %5928 = fmul fast float %5927, %5771
  br label %5929

; <label>:5929                                    ; preds = %5898, %5783
  %5930 = phi float [ %5928, %5898 ], [ %5771, %5783 ]
  %5931 = call float @dx.op.binary.f32(i32 36, float %5930, float %5930)  ; FMin(a,b)
  %5932 = call float @dx.op.binary.f32(i32 36, float %5930, float %5931)  ; FMin(a,b)
  %5933 = fcmp fast ogt float %5932, 0.000000e+00
  br i1 %5933, label %5934, label %5775, !dx.controlflow.hints !146

; <label>:5934                                    ; preds = %5929
  %5935 = fmul fast float %5930, %5693
  %5936 = fmul fast float %5930, %5694
  %5937 = fmul fast float %5930, %5695
  %5938 = fsub fast float %5677, %1916
  %5939 = fcmp fast ogt float %5938, 0.000000e+00
  %5940 = fsub fast float %158, %1916
  %5941 = fcmp fast ogt float %5940, 0.000000e+00
  %5942 = xor i1 %5941, %5939
  %5943 = fsub fast float %1916, %5677
  %5944 = fmul fast float %5943, 2.000000e+00
  %5945 = fadd fast float %5944, %5677
  %5946 = select i1 %5942, float %5677, float %5945
  %5947 = fsub fast float %5946, %158
  %5948 = call float @dx.op.dot3.f32(i32 55, float %5703, float %5704, float %5947, float %5703, float %5704, float %5947)  ; Dot3(ax,ay,az,bx,by,bz)
  %5949 = call float @dx.op.unary.f32(i32 25, float %5948)  ; Rsqrt(value)
  %5950 = fmul fast float %5949, %5703
  %5951 = fmul fast float %5949, %5704
  %5952 = fmul fast float %5949, %5947
  %5953 = fsub fast float %1916, %158
  %5954 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5953)  ; Dot3(ax,ay,az,bx,by,bz)
  %5955 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5950, float %5951, float %5952)  ; Dot3(ax,ay,az,bx,by,bz)
  %5956 = fdiv fast float 1.000000e+00, %5955
  %5957 = fmul fast float %5956, %5954
  %5958 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5940, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5959 = fcmp fast ogt float %5958, 0.000000e+00
  %5960 = fcmp fast olt float %5958, 0.000000e+00
  %5961 = zext i1 %5959 to i32
  %5962 = zext i1 %5960 to i32
  %5963 = sub nsw i32 %5961, %5962
  %5964 = sitofp i32 %5963 to float
  %5965 = fsub fast float %5946, %1916
  %5966 = call float @dx.op.dot3.f32(i32 55, float %5703, float %5704, float %5965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5967 = fcmp fast ogt float %5966, 0.000000e+00
  %5968 = fcmp fast olt float %5966, 0.000000e+00
  %5969 = zext i1 %5967 to i32
  %5970 = zext i1 %5968 to i32
  %5971 = sub nsw i32 %5969, %5970
  %5972 = sitofp i32 %5971 to float
  %5973 = fcmp fast une float %5964, %5972
  br i1 %5973, label %5974, label %5984

; <label>:5974                                    ; preds = %5934
  %5975 = fmul fast float %5957, %5952
  %5976 = fmul fast float %5957, %5951
  %5977 = fmul fast float %5957, %5950
  %5978 = fmul fast float %5977, %5977
  %5979 = fmul fast float %5976, %5976
  %5980 = fadd fast float %5978, %5979
  %5981 = fmul fast float %5975, %5975
  %5982 = fadd fast float %5980, %5981
  %5983 = call float @dx.op.unary.f32(i32 24, float %5982)  ; Sqrt(value)
  br label %5996

; <label>:5984                                    ; preds = %5934
  %5985 = icmp slt i32 %5963, 0
  br i1 %5985, label %5986, label %5996

; <label>:5986                                    ; preds = %5984
  %5987 = fsub fast float %156, %5675
  %5988 = fsub fast float %157, %5676
  %5989 = fsub fast float %158, %5946
  %5990 = fmul fast float %5987, %5987
  %5991 = fmul fast float %5988, %5988
  %5992 = fadd fast float %5990, %5991
  %5993 = fmul fast float %5989, %5989
  %5994 = fadd fast float %5992, %5993
  %5995 = call float @dx.op.unary.f32(i32 24, float %5994)  ; Sqrt(value)
  br label %5996

; <label>:5996                                    ; preds = %5986, %5984, %5974
  %5997 = phi float [ %5983, %5974 ], [ %5995, %5986 ], [ 0.000000e+00, %5984 ]
  %5998 = and i1 %5941, %5939
  %5999 = fsub fast float -0.000000e+00, %5997
  %6000 = select i1 %5998, float -0.000000e+00, float %5999
  %6001 = fmul fast float %1917, 0x3FF7154760000000
  %6002 = fmul fast float %6001, %6000
  %6003 = fmul fast float %1918, 0x3FF7154760000000
  %6004 = fmul fast float %6003, %6000
  %6005 = fmul fast float %1919, 0x3FF7154760000000
  %6006 = fmul fast float %6005, %6000
  %6007 = call float @dx.op.unary.f32(i32 21, float %6002)  ; Exp(value)
  %6008 = call float @dx.op.unary.f32(i32 21, float %6004)  ; Exp(value)
  %6009 = call float @dx.op.unary.f32(i32 21, float %6006)  ; Exp(value)
  %6010 = call float @dx.op.unary.f32(i32 7, float %6007)  ; Saturate(value)
  %6011 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  %6012 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6013 = fmul fast float %5935, %6010
  %6014 = fmul fast float %5936, %6011
  %6015 = fmul fast float %5937, %6012
  %6016 = fsub fast float %5709, %2116
  %6017 = fsub fast float %5710, %2115
  %6018 = fsub fast float %5711, %2114
  %6019 = call float @dx.op.dot3.f32(i32 55, float %6016, float %6017, float %6018, float %6016, float %6017, float %6018)  ; Dot3(ax,ay,az,bx,by,bz)
  %6020 = call float @dx.op.unary.f32(i32 25, float %6019)  ; Rsqrt(value)
  %6021 = fmul fast float %6020, %6016
  %6022 = fmul fast float %6020, %6017
  %6023 = fmul fast float %6020, %6018
  %6024 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5710, float %5711, float %2120, float %2121, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %6025 = call float @dx.op.dot3.f32(i32 55, float %2113, float %2112, float %2111, float %6021, float %6022, float %6023)  ; Dot3(ax,ay,az,bx,by,bz)
  %6026 = call float @dx.op.unary.f32(i32 7, float %6024)  ; Saturate(value)
  %6027 = fmul fast float %6026, %5716
  %6028 = fmul fast float %6026, %6026
  %6029 = fmul fast float %6028, %4004
  %6030 = call float @dx.op.unary.f32(i32 7, float %6029)  ; Saturate(value)
  %6031 = fmul fast float %6027, %6030
  %6032 = bitcast float %5706 to i32
  %6033 = ashr i32 %6032, 1
  %6034 = sub nsw i32 1597463007, %6033
  %6035 = bitcast i32 %6034 to float
  %6036 = fmul fast float %6035, %5703
  %6037 = fmul fast float %6035, %5704
  %6038 = fmul fast float %6035, %5705
  %6039 = fsub fast float %6036, %2116
  %6040 = fsub fast float %6037, %2115
  %6041 = fsub fast float %6038, %2114
  %6042 = call float @dx.op.dot3.f32(i32 55, float %6039, float %6040, float %6041, float %6039, float %6040, float %6041)  ; Dot3(ax,ay,az,bx,by,bz)
  %6043 = call float @dx.op.unary.f32(i32 25, float %6042)  ; Rsqrt(value)
  %6044 = fmul fast float %6039, %6043
  %6045 = fmul fast float %6040, %6043
  %6046 = fmul fast float %6041, %6043
  %6047 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2121, float %2122, float %6044, float %6045, float %6046)  ; Dot3(ax,ay,az,bx,by,bz)
  %6048 = fmul fast float %6047, %6047
  %6049 = call float @dx.op.unary.f32(i32 6, float %6024)  ; FAbs(value)
  %6050 = fsub fast float 1.000000e+00, %2149
  %6051 = fmul fast float %2131, %2131
  %6052 = fmul fast float %6051, %6050
  %6053 = fadd fast float %6052, %2149
  %6054 = bitcast float %6053 to i32
  %6055 = ashr i32 %6054, 1
  %6056 = add nsw i32 %6055, 532487669
  %6057 = bitcast i32 %6056 to float
  %6058 = fadd fast float %6057, %2131
  %6059 = fmul fast float %2149, %6048
  %6060 = fsub fast float 1.000000e+00, %6048
  %6061 = fadd fast float %6060, %6059
  %6062 = fmul fast float %6049, %6049
  %6063 = fmul fast float %6062, %6050
  %6064 = fadd fast float %6063, %2149
  %6065 = bitcast float %6064 to i32
  %6066 = ashr i32 %6065, 1
  %6067 = add nsw i32 %6066, 532487669
  %6068 = bitcast i32 %6067 to float
  %6069 = fadd fast float %6068, %6049
  %6070 = fmul fast float %6061, %6061
  %6071 = fmul fast float %6070, %6058
  %6072 = fmul fast float %6071, %6069
  %6073 = fdiv fast float 1.000000e+00, %6072
  %6074 = bitcast float %2149 to i32
  %6075 = sitofp i32 %6074 to float
  %6076 = fmul fast float %6075, 0x3FE7F73180000000
  %6077 = fadd fast float %6076, 0x41AFE27C40000000
  %6078 = fptosi float %6077 to i32
  %6079 = bitcast i32 %6078 to float
  %6080 = fmul fast float %5672, 0x3FD80E9D60000000
  %6081 = fmul fast float %6080, %6035
  %6082 = fadd fast float %6079, %6081
  %6083 = bitcast float %6082 to i32
  %6084 = sub nsw i32 2129859010, %6083
  %6085 = bitcast i32 %6084 to float
  %6086 = fmul fast float %2149, %6073
  %6087 = fmul fast float %6086, %6079
  %6088 = fmul fast float %6087, %6085
  %6089 = call float @dx.op.unary.f32(i32 6, float %6025)  ; FAbs(value)
  %6090 = fsub fast float 1.000000e+00, %6089
  %6091 = bitcast float %6090 to i32
  %6092 = sitofp i32 %6091 to float
  %6093 = fmul fast float %6092, 5.000000e+00
  %6094 = fadd fast float %6093, 0xC1EFBF8940000000
  %6095 = fptosi float %6094 to i32
  %6096 = bitcast i32 %6095 to float
  %6097 = fsub fast float 1.000000e+00, %2117
  %6098 = fsub fast float 1.000000e+00, %2118
  %6099 = fsub fast float 1.000000e+00, %2129
  %6100 = fmul fast float %6096, %6097
  %6101 = fmul fast float %6096, %6098
  %6102 = fmul fast float %6096, %6099
  %6103 = fadd fast float %6100, %2117
  %6104 = fadd fast float %6101, %2118
  %6105 = fadd fast float %6102, %2129
  br i1 %3427, label %6106, label %6129

; <label>:6106                                    ; preds = %5996
  %6107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1494, float %6089, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6108 = extractvalue %dx.types.ResRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.ResRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.ResRet.f32 %6107, 2
  %6111 = fadd fast float %6108, -5.000000e-01
  %6112 = fadd fast float %6109, -5.000000e-01
  %6113 = fadd fast float %6110, -5.000000e-01
  %6114 = fmul fast float %2117, 4.000000e+00
  %6115 = fmul fast float %6114, %6097
  %6116 = fmul fast float %6115, %6111
  %6117 = fmul fast float %2118, 4.000000e+00
  %6118 = fmul fast float %6117, %6098
  %6119 = fmul fast float %6118, %6112
  %6120 = fmul fast float %2129, 4.000000e+00
  %6121 = fmul fast float %6120, %6099
  %6122 = fmul fast float %6121, %6113
  %6123 = fadd fast float %6116, %6103
  %6124 = fadd fast float %6119, %6104
  %6125 = fadd fast float %6122, %6105
  %6126 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6127 = call float @dx.op.unary.f32(i32 7, float %6124)  ; Saturate(value)
  %6128 = call float @dx.op.unary.f32(i32 7, float %6125)  ; Saturate(value)
  br label %6129

; <label>:6129                                    ; preds = %6106, %5996
  %6130 = phi float [ %6126, %6106 ], [ %6103, %5996 ]
  %6131 = phi float [ %6127, %6106 ], [ %6104, %5996 ]
  %6132 = phi float [ %6128, %6106 ], [ %6105, %5996 ]
  %6133 = fmul fast float %6024, 9.843750e-01
  %6134 = fadd fast float %6133, 7.812500e-03
  %6135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6134, float %3417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6136 = extractvalue %dx.types.ResRet.f32 %6135, 2
  %6137 = extractvalue %dx.types.ResRet.f32 %6135, 3
  %6138 = fmul fast float %6136, %2117
  %6139 = fmul fast float %6136, %2118
  %6140 = fmul fast float %6136, %2129
  %6141 = fadd fast float %6138, %6137
  %6142 = fadd fast float %6139, %6137
  %6143 = fadd fast float %6140, %6137
  br i1 %3427, label %6144, label %6167

; <label>:6144                                    ; preds = %6129
  %6145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1494, float %6024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6146 = extractvalue %dx.types.ResRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.ResRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.ResRet.f32 %6145, 2
  %6149 = fadd fast float %6146, -5.000000e-01
  %6150 = fadd fast float %6147, -5.000000e-01
  %6151 = fadd fast float %6148, -5.000000e-01
  %6152 = fmul fast float %2117, 4.000000e+00
  %6153 = fmul fast float %6152, %6097
  %6154 = fmul fast float %6153, %6149
  %6155 = fmul fast float %2118, 4.000000e+00
  %6156 = fmul fast float %6155, %6098
  %6157 = fmul fast float %6156, %6150
  %6158 = fmul fast float %2129, 4.000000e+00
  %6159 = fmul fast float %6158, %6099
  %6160 = fmul fast float %6159, %6151
  %6161 = fadd fast float %6154, %6141
  %6162 = fadd fast float %6157, %6142
  %6163 = fadd fast float %6160, %6143
  %6164 = call float @dx.op.unary.f32(i32 7, float %6161)  ; Saturate(value)
  %6165 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  %6166 = call float @dx.op.unary.f32(i32 7, float %6163)  ; Saturate(value)
  br label %6167

; <label>:6167                                    ; preds = %6144, %6129
  %6168 = phi float [ %6164, %6144 ], [ %6141, %6129 ]
  %6169 = phi float [ %6165, %6144 ], [ %6142, %6129 ]
  %6170 = phi float [ %6166, %6144 ], [ %6143, %6129 ]
  %6171 = call float @dx.op.binary.f32(i32 35, float %6169, float %6170)  ; FMax(a,b)
  %6172 = call float @dx.op.binary.f32(i32 35, float %6168, float %6171)  ; FMax(a,b)
  %6173 = fsub fast float 1.000000e+00, %6172
  %6174 = fmul fast float %6130, %6088
  %6175 = fmul fast float %6131, %6088
  %6176 = fmul fast float %6132, %6088
  %6177 = fsub fast float 1.000000e+00, %6025
  %6178 = bitcast float %6177 to i32
  %6179 = sitofp i32 %6178 to float
  %6180 = fmul fast float %6179, 5.000000e+00
  %6181 = fadd fast float %6180, 0xC1EFBF8940000000
  %6182 = fptosi float %6181 to i32
  %6183 = bitcast i32 %6182 to float
  %6184 = fmul fast float %6183, %1493
  %6185 = fmul fast float %6173, %6184
  %6186 = fmul fast float %6185, %3969
  %6187 = fmul fast float %6185, %3970
  %6188 = fmul fast float %6185, %3971
  %6189 = fadd fast float %6186, %6174
  %6190 = fadd fast float %6187, %6175
  %6191 = fadd fast float %6188, %6176
  %6192 = fmul fast float %6013, %1514
  %6193 = fmul fast float %6192, %6031
  %6194 = fmul fast float %6193, %6173
  %6195 = fmul fast float %6014, %1514
  %6196 = fmul fast float %6195, %6031
  %6197 = fmul fast float %6196, %6173
  %6198 = fmul fast float %6015, %1514
  %6199 = fmul fast float %6198, %6031
  %6200 = fmul fast float %6199, %6173
  %6201 = fadd fast float %6194, %5646
  %6202 = fadd fast float %6197, %5647
  %6203 = fadd fast float %6200, %5648
  %6204 = fmul fast float %6193, %6189
  %6205 = fmul fast float %6196, %6190
  %6206 = fmul fast float %6199, %6191
  %6207 = fadd fast float %6204, %5643
  %6208 = fadd fast float %6205, %5644
  %6209 = fadd fast float %6206, %5645
  br label %5775

; <label>:6210                                    ; preds = %5775
  br label %6211

; <label>:6211                                    ; preds = %6210, %5609
  %6212 = phi float [ %5611, %5609 ], [ %5776, %6210 ]
  %6213 = phi float [ %5612, %5609 ], [ %5777, %6210 ]
  %6214 = phi float [ %5613, %5609 ], [ %5778, %6210 ]
  %6215 = phi float [ %5614, %5609 ], [ %5779, %6210 ]
  %6216 = phi float [ %5615, %5609 ], [ %5780, %6210 ]
  %6217 = phi float [ %5616, %5609 ], [ %5781, %6210 ]
  %6218 = add i32 %5610, 1
  %6219 = icmp ugt i32 %6218, %5606
  br i1 %6219, label %6220, label %5609

; <label>:6220                                    ; preds = %6211
  br label %6221

; <label>:6221                                    ; preds = %6220, %5559, %5549
  %6222 = phi float [ %5550, %5549 ], [ %5550, %5559 ], [ %6212, %6220 ]
  %6223 = phi float [ %5551, %5549 ], [ %5551, %5559 ], [ %6213, %6220 ]
  %6224 = phi float [ %5552, %5549 ], [ %5552, %5559 ], [ %6214, %6220 ]
  %6225 = phi float [ %5553, %5549 ], [ %5553, %5559 ], [ %6215, %6220 ]
  %6226 = phi float [ %5554, %5549 ], [ %5554, %5559 ], [ %6216, %6220 ]
  %6227 = phi float [ %5555, %5549 ], [ %5555, %5559 ], [ %6217, %6220 ]
  %6228 = fmul fast float %1514, %1514
  %6229 = fsub fast float 1.000000e+00, %6228
  %6230 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6229, float %6229, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6231 = fsub fast float 1.000000e+00, %6230
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 0
  %6234 = fmul fast float %6233, %3975
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 3
  %6237 = fsub fast float 1.000000e+00, %1492
  %6238 = call float @dx.op.unary.f32(i32 7, float %6237)  ; Saturate(value)
  %6239 = fadd fast float %6227, %1491
  %6240 = fmul fast float %6239, %1492
  %6241 = fmul fast float %6238, %6236
  %6242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6242, 3
  %6244 = fmul fast float %6225, %2123
  %6245 = fmul fast float %6226, %2124
  %6246 = fmul fast float %6227, %2125
  %6247 = fcmp fast ogt float %89, %207
  %6248 = and i1 %6247, %1922
  %6249 = or i1 %1928, %6248
  %6250 = icmp eq i32 %1921, 2
  %6251 = fcmp fast ole float %89, %207
  %6252 = and i1 %6251, %6250
  %6253 = or i1 %6252, %6249
  br i1 %6248, label %6254, label %6513

; <label>:6254                                    ; preds = %6221
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 2
  %6257 = extractvalue %dx.types.CBufRet.f32 %6255, 3
  %6258 = fmul fast float %6256, %101
  %6259 = fmul fast float %6257, %102
  %6260 = call float @dx.op.unary.f32(i32 7, float %6258)  ; Saturate(value)
  %6261 = call float @dx.op.unary.f32(i32 7, float %6259)  ; Saturate(value)
  %6262 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6260, float %6261, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6263 = extractvalue %dx.types.ResRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.ResRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.ResRet.f32 %6262, 2
  %6266 = extractvalue %dx.types.ResRet.f32 %6262, 3
  %6267 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6260, float %6261, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.ResRet.f32 %6267, 3
  %6272 = call float @dx.op.binary.f32(i32 35, float %6264, float %6265)  ; FMax(a,b)
  %6273 = call float @dx.op.binary.f32(i32 35, float %6263, float %6272)  ; FMax(a,b)
  %6274 = call float @dx.op.binary.f32(i32 35, float %6273, float %6266)  ; FMax(a,b)
  %6275 = call float @dx.op.binary.f32(i32 36, float %6269, float %6270)  ; FMin(a,b)
  %6276 = call float @dx.op.binary.f32(i32 36, float %6268, float %6275)  ; FMin(a,b)
  %6277 = call float @dx.op.binary.f32(i32 36, float %6276, float %6271)  ; FMin(a,b)
  %6278 = fmul fast float %6274, 2.550000e+02
  %6279 = fadd fast float %6278, 0x3F70101020000000
  %6280 = fptoui float %6279 to i32
  %6281 = fmul fast float %6277, 2.550000e+02
  %6282 = fadd fast float %6281, 0x3F70101020000000
  %6283 = fptoui float %6282 to i32
  %6284 = icmp ult i32 %6280, %6283
  br i1 %6284, label %6285, label %6453

; <label>:6285                                    ; preds = %6254
  %6286 = fcmp fast ogt float %88, 9.843750e-01
  %6287 = fadd fast float %89, -4.000000e+00
  %6288 = select i1 %6286, float -4.000000e+00, float %6287
  %6289 = call float @dx.op.binary.f32(i32 35, float %6288, float 0.000000e+00)  ; FMax(a,b)
  %6290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6290, 0
  %6292 = fadd fast float %6291, %6289
  %6293 = extractvalue %dx.types.CBufRet.f32 %6290, 2
  %6294 = fmul fast float %6292, %6293
  %6295 = call float @dx.op.unary.f32(i32 23, float %6294)  ; Log(value)
  %6296 = extractvalue %dx.types.CBufRet.f32 %6290, 3
  %6297 = fmul fast float %6296, %6295
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 2
  %6300 = fmul fast float %6297, %6299
  %6301 = call float @dx.op.unary.f32(i32 7, float %6300)  ; Saturate(value)
  %6302 = uitofp i32 %6280 to float
  %6303 = uitofp i32 %6283 to float
  %6304 = fadd fast float %6302, 5.000000e-01
  %6305 = fadd fast float %6303, 5.000000e-01
  %6306 = fmul fast float %6299, %6304
  %6307 = fmul fast float %6299, %6305
  %6308 = fadd fast float %6306, 0x3F0FFB4800000000
  %6309 = fadd fast float %6307, 0xBF0FFB4800000000
  %6310 = call float @dx.op.binary.f32(i32 35, float %6301, float %6308)  ; FMax(a,b)
  %6311 = call float @dx.op.binary.f32(i32 36, float %6310, float %6309)  ; FMin(a,b)
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6314 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6315 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6316 = fmul fast float %6313, %6311
  %6317 = fadd fast float %6315, %6316
  %6318 = fadd fast float %6315, %6314
  %6319 = fsub fast float %6313, %6314
  %6320 = fadd fast float %6319, %6315
  %6321 = call float @dx.op.binary.f32(i32 35, float %6317, float %6318)  ; FMax(a,b)
  %6322 = call float @dx.op.binary.f32(i32 36, float %6321, float %6320)  ; FMin(a,b)
  %6323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6260, float %6261, float %6322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6324 = extractvalue %dx.types.ResRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.ResRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.ResRet.f32 %6323, 2
  %6327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6328 = extractvalue %dx.types.CBufRet.i32 %6327, 0
  %6329 = extractvalue %dx.types.CBufRet.i32 %6327, 1
  %6330 = uitofp i32 %6328 to float
  %6331 = uitofp i32 %6329 to float
  %6332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6333 = extractvalue %dx.types.CBufRet.f32 %6332, 0
  %6334 = extractvalue %dx.types.CBufRet.f32 %6332, 1
  %6335 = fmul fast float %6330, %6260
  %6336 = fmul fast float %6331, %6261
  %6337 = fadd fast float %6335, -5.000000e-01
  %6338 = fadd fast float %6336, -5.000000e-01
  %6339 = call float @dx.op.unary.f32(i32 22, float %6337)  ; Frc(value)
  %6340 = call float @dx.op.unary.f32(i32 22, float %6338)  ; Frc(value)
  %6341 = fmul fast float %6339, %6339
  %6342 = fmul fast float %6341, %6339
  %6343 = fsub fast float 3.000000e+00, %6339
  %6344 = fmul fast float %6341, %6343
  %6345 = fmul fast float %6339, 3.000000e+00
  %6346 = fmul fast float %6342, 3.000000e+00
  %6347 = fmul fast float %6341, 6.000000e+00
  %6348 = fsub fast float %6346, %6347
  %6349 = fadd fast float %6348, 4.000000e+00
  %6350 = fmul fast float %6349, 0x3FC5555560000000
  %6351 = fmul fast float %6342, -3.000000e+00
  %6352 = fadd fast float %6341, %6339
  %6353 = fmul fast float %6352, 3.000000e+00
  %6354 = fadd fast float %6351, 1.000000e+00
  %6355 = fadd fast float %6354, %6353
  %6356 = fmul fast float %6342, 0x3FC5555560000000
  %6357 = fmul fast float %6340, %6340
  %6358 = fmul fast float %6357, %6340
  %6359 = fsub fast float 3.000000e+00, %6340
  %6360 = fmul fast float %6357, %6359
  %6361 = fmul fast float %6340, 3.000000e+00
  %6362 = fmul fast float %6358, 3.000000e+00
  %6363 = fmul fast float %6357, 6.000000e+00
  %6364 = fsub fast float %6362, %6363
  %6365 = fadd fast float %6364, 4.000000e+00
  %6366 = fmul fast float %6365, 0x3FC5555560000000
  %6367 = fmul fast float %6358, -3.000000e+00
  %6368 = fadd fast float %6357, %6340
  %6369 = fmul fast float %6368, 3.000000e+00
  %6370 = fadd fast float %6367, 1.000000e+00
  %6371 = fadd fast float %6370, %6369
  %6372 = fmul fast float %6358, 0x3FC5555560000000
  %6373 = fadd fast float %6339, 1.000000e+00
  %6374 = fsub fast float 1.000000e+00, %6345
  %6375 = fadd fast float %6374, %6344
  %6376 = fadd fast float %6375, %6349
  %6377 = fmul fast float %6376, 0x3FC5555560000000
  %6378 = fdiv fast float %6350, %6377
  %6379 = fsub fast float %6373, %6378
  %6380 = fsub fast float 1.000000e+00, %6339
  %6381 = fadd fast float %6355, %6342
  %6382 = fmul fast float %6381, 0x3FC5555560000000
  %6383 = fdiv fast float %6356, %6382
  %6384 = fadd fast float %6380, %6383
  %6385 = fadd fast float %6340, 1.000000e+00
  %6386 = fsub fast float 1.000000e+00, %6361
  %6387 = fadd fast float %6386, %6360
  %6388 = fadd fast float %6387, %6365
  %6389 = fmul fast float %6388, 0x3FC5555560000000
  %6390 = fdiv fast float %6366, %6389
  %6391 = fsub fast float %6385, %6390
  %6392 = fsub fast float 1.000000e+00, %6340
  %6393 = fadd fast float %6371, %6358
  %6394 = fmul fast float %6393, 0x3FC5555560000000
  %6395 = fdiv fast float %6372, %6394
  %6396 = fadd fast float %6395, %6392
  %6397 = fmul fast float %6379, %6333
  %6398 = fsub fast float %6260, %6397
  %6399 = fmul fast float %6384, %6333
  %6400 = fadd fast float %6399, %6260
  %6401 = fmul fast float %6396, %6334
  %6402 = fadd fast float %6401, %6261
  %6403 = fmul fast float %6391, %6334
  %6404 = fsub fast float %6261, %6403
  %6405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6398, float %6404, float %6322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.ResRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.ResRet.f32 %6405, 2
  %6409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6400, float %6404, float %6322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6410 = extractvalue %dx.types.ResRet.f32 %6409, 0
  %6411 = extractvalue %dx.types.ResRet.f32 %6409, 1
  %6412 = extractvalue %dx.types.ResRet.f32 %6409, 2
  %6413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6398, float %6402, float %6322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6414 = extractvalue %dx.types.ResRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.ResRet.f32 %6413, 1
  %6416 = extractvalue %dx.types.ResRet.f32 %6413, 2
  %6417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6400, float %6402, float %6322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6418 = extractvalue %dx.types.ResRet.f32 %6417, 0
  %6419 = extractvalue %dx.types.ResRet.f32 %6417, 1
  %6420 = extractvalue %dx.types.ResRet.f32 %6417, 2
  %6421 = fsub fast float %6414, %6406
  %6422 = fsub fast float %6415, %6407
  %6423 = fsub fast float %6416, %6408
  %6424 = fmul fast float %6421, %6394
  %6425 = fmul fast float %6422, %6394
  %6426 = fmul fast float %6423, %6394
  %6427 = fadd fast float %6424, %6406
  %6428 = fadd fast float %6425, %6407
  %6429 = fadd fast float %6426, %6408
  %6430 = fsub fast float %6418, %6410
  %6431 = fsub fast float %6419, %6411
  %6432 = fsub fast float %6420, %6412
  %6433 = fmul fast float %6430, %6394
  %6434 = fmul fast float %6431, %6394
  %6435 = fmul fast float %6432, %6394
  %6436 = fsub fast float %6410, %6427
  %6437 = fadd fast float %6436, %6433
  %6438 = fsub fast float %6411, %6428
  %6439 = fadd fast float %6438, %6434
  %6440 = fsub fast float %6412, %6429
  %6441 = fadd fast float %6440, %6435
  %6442 = fmul fast float %6437, %6382
  %6443 = fmul fast float %6439, %6382
  %6444 = fmul fast float %6441, %6382
  %6445 = fadd fast float %6442, %6427
  %6446 = fadd fast float %6443, %6428
  %6447 = fadd fast float %6444, %6429
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 1
  %6450 = fmul fast float %6445, %6449
  %6451 = fmul fast float %6446, %6449
  %6452 = fmul fast float %6447, %6449
  br label %6453

; <label>:6453                                    ; preds = %6285, %6254
  %6454 = phi float [ %6324, %6285 ], [ 1.000000e+00, %6254 ]
  %6455 = phi float [ %6325, %6285 ], [ 1.000000e+00, %6254 ]
  %6456 = phi float [ %6326, %6285 ], [ 1.000000e+00, %6254 ]
  %6457 = phi float [ %6450, %6285 ], [ 0.000000e+00, %6254 ]
  %6458 = phi float [ %6451, %6285 ], [ 0.000000e+00, %6254 ]
  %6459 = phi float [ %6452, %6285 ], [ 0.000000e+00, %6254 ]
  %6460 = fmul fast float %6457, %6231
  %6461 = fmul fast float %6458, %6231
  %6462 = fmul fast float %6459, %6231
  %6463 = call float @dx.op.dot3.f32(i32 55, float %6454, float %6455, float %6456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6464 = call float @dx.op.dot3.f32(i32 55, float %6460, float %6461, float %6462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6465 = select i1 %247, float %6463, float %6454
  %6466 = select i1 %247, float %6463, float %6455
  %6467 = select i1 %247, float 1.000000e+00, float %6456
  %6468 = select i1 %247, float %6464, float %6460
  %6469 = select i1 %247, float 0.000000e+00, float %6461
  %6470 = select i1 %247, float 0.000000e+00, float %6462
  %6471 = fmul fast float %6465, %6244
  %6472 = fmul fast float %6466, %6245
  %6473 = fmul fast float %6467, %6246
  %6474 = fadd fast float %6471, %6468
  %6475 = fadd fast float %6472, %6469
  %6476 = fadd fast float %6470, %6473
  %6477 = fmul fast float %6465, %6222
  %6478 = fmul fast float %6466, %6223
  %6479 = fmul fast float %6467, %6224
  %6480 = fmul fast float %101, 2.000000e+00
  %6481 = fmul fast float %6480, %6256
  %6482 = fmul fast float %102, 2.000000e+00
  %6483 = fmul fast float %6482, %6257
  %6484 = fsub fast float 1.000000e+00, %6481
  %6485 = fsub fast float 1.000000e+00, %6483
  %6486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6487 = extractvalue %dx.types.CBufRet.f32 %6486, 0
  %6488 = extractvalue %dx.types.CBufRet.f32 %6486, 1
  %6489 = extractvalue %dx.types.CBufRet.f32 %6486, 2
  %6490 = fmul fast float %6484, %6487
  %6491 = fmul fast float %6484, %6488
  %6492 = fmul fast float %6484, %6489
  %6493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6493, 0
  %6495 = extractvalue %dx.types.CBufRet.f32 %6493, 1
  %6496 = extractvalue %dx.types.CBufRet.f32 %6493, 2
  %6497 = fmul fast float %6485, %6494
  %6498 = fmul fast float %6485, %6495
  %6499 = fmul fast float %6485, %6496
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  %6502 = extractvalue %dx.types.CBufRet.f32 %6500, 1
  %6503 = extractvalue %dx.types.CBufRet.f32 %6500, 2
  %6504 = fadd fast float %6497, %6501
  %6505 = fadd fast float %6504, %6490
  %6506 = fadd fast float %6498, %6502
  %6507 = fadd fast float %6506, %6491
  %6508 = fadd fast float %6499, %6503
  %6509 = fadd fast float %6508, %6492
  %6510 = fmul fast float %6505, %207
  %6511 = fmul fast float %6507, %207
  %6512 = fmul fast float %6509, %207
  br label %6513

; <label>:6513                                    ; preds = %6453, %6221
  %6514 = phi float [ %6510, %6453 ], [ %156, %6221 ]
  %6515 = phi float [ %6511, %6453 ], [ %157, %6221 ]
  %6516 = phi float [ %6512, %6453 ], [ %158, %6221 ]
  %6517 = phi float [ %207, %6453 ], [ %89, %6221 ]
  %6518 = phi float [ %6474, %6453 ], [ %6244, %6221 ]
  %6519 = phi float [ %6475, %6453 ], [ %6245, %6221 ]
  %6520 = phi float [ %6476, %6453 ], [ %6246, %6221 ]
  %6521 = phi float [ %6477, %6453 ], [ %6222, %6221 ]
  %6522 = phi float [ %6478, %6453 ], [ %6223, %6221 ]
  %6523 = phi float [ %6479, %6453 ], [ %6224, %6221 ]
  %6524 = phi float [ %6454, %6453 ], [ 1.000000e+00, %6221 ]
  br i1 %6253, label %7679, label %6525

; <label>:6525                                    ; preds = %6513
  %6526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6527 = extractvalue %dx.types.CBufRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.CBufRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.CBufRet.f32 %6526, 2
  %6530 = extractvalue %dx.types.CBufRet.f32 %6526, 3
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.CBufRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.CBufRet.f32 %6531, 2
  %6535 = extractvalue %dx.types.CBufRet.f32 %6531, 3
  %6536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6536, 0
  %6538 = extractvalue %dx.types.CBufRet.f32 %6536, 1
  %6539 = extractvalue %dx.types.CBufRet.f32 %6536, 2
  %6540 = extractvalue %dx.types.CBufRet.f32 %6536, 3
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.CBufRet.f32 %6541, 1
  %6544 = extractvalue %dx.types.CBufRet.f32 %6541, 2
  %6545 = extractvalue %dx.types.CBufRet.f32 %6541, 3
  %6546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6547 = extractvalue %dx.types.CBufRet.f32 %6546, 3
  %6548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6549 = extractvalue %dx.types.CBufRet.f32 %6548, 3
  %6550 = extractvalue %dx.types.CBufRet.f32 %6548, 0
  %6551 = extractvalue %dx.types.CBufRet.f32 %6548, 1
  %6552 = extractvalue %dx.types.CBufRet.f32 %6548, 2
  %6553 = fcmp fast olt float %6552, -5.000000e-01
  %6554 = call float @dx.op.dot3.f32(i32 55, float %6514, float %6515, float %6516, float %6514, float %6515, float %6516)  ; Dot3(ax,ay,az,bx,by,bz)
  %6555 = call float @dx.op.unary.f32(i32 25, float %6554)  ; Rsqrt(value)
  %6556 = fmul fast float %6555, %6554
  %6557 = fmul fast float %6555, %6514
  %6558 = fmul fast float %6555, %6515
  %6559 = fmul fast float %6555, %6516
  %6560 = fadd fast float %6556, %6530
  %6561 = call float @dx.op.dot3.f32(i32 55, float %6557, float %6558, float %6559, float %6527, float %6528, float %6529)  ; Dot3(ax,ay,az,bx,by,bz)
  %6562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.i32 %6562, 1
  %6564 = and i32 %6563, 1
  %6565 = icmp ne i32 %6564, 0
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 2
  %6568 = fcmp fast ogt float %6567, 0.000000e+00
  %6569 = and i1 %6565, %6568
  br i1 %6569, label %6570, label %6976, !dx.controlflow.hints !147

; <label>:6570                                    ; preds = %6525
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 3
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 2
  %6575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6575, 2
  %6577 = fsub fast float %6574, %6576
  %6578 = and i32 %6563, 2
  %6579 = extractvalue %dx.types.CBufRet.i32 %6562, 0
  %6580 = call i32 @dx.op.binary.i32(i32 40, i32 %6579, i32 3)  ; UMin(a,b)
  %6581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6582 = extractvalue %dx.types.CBufRet.f32 %6581, 0
  %6583 = extractvalue %dx.types.CBufRet.f32 %6581, 1
  %6584 = extractvalue %dx.types.CBufRet.f32 %6575, 0
  %6585 = extractvalue %dx.types.CBufRet.f32 %6575, 1
  %6586 = fsub fast float %6582, %6584
  %6587 = fsub fast float %6583, %6585
  %6588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6588, 0
  %6590 = fcmp fast ogt float %6589, 0.000000e+00
  %6591 = fsub fast float -0.000000e+00, %6586
  %6592 = fsub fast float -0.000000e+00, %6587
  %6593 = call float @dx.op.dot2.f32(i32 54, float %6557, float %6558, float %6557, float %6558)  ; Dot2(ax,ay,bx,by)
  %6594 = call float @dx.op.dot2.f32(i32 54, float %6557, float %6558, float %6591, float %6592)  ; Dot2(ax,ay,bx,by)
  %6595 = fmul fast float %6594, 2.000000e+00
  %6596 = call float @dx.op.dot2.f32(i32 54, float %6591, float %6592, float %6591, float %6592)  ; Dot2(ax,ay,bx,by)
  %6597 = fmul fast float %6589, %6589
  %6598 = fsub fast float %6596, %6597
  %6599 = fmul fast float %6595, %6595
  %6600 = fmul fast float %6593, 4.000000e+00
  %6601 = fmul fast float %6600, %6598
  %6602 = fsub fast float %6599, %6601
  %6603 = fcmp fast ogt float %6602, 0.000000e+00
  br i1 %6603, label %6604, label %6619

; <label>:6604                                    ; preds = %6570
  %6605 = fcmp fast ogt float %6595, 0.000000e+00
  %6606 = call float @dx.op.unary.f32(i32 24, float %6602)  ; Sqrt(value)
  %6607 = fsub fast float -0.000000e+00, %6606
  %6608 = select i1 %6605, float %6606, float %6607
  %6609 = fadd fast float %6608, %6595
  %6610 = fmul float %6609, -5.000000e-01
  %6611 = fdiv fast float %6610, %6593
  %6612 = call float @dx.op.binary.f32(i32 35, float %6611, float 0.000000e+00)  ; FMax(a,b)
  %6613 = call float @dx.op.binary.f32(i32 36, float %6556, float %6612)  ; FMin(a,b)
  %6614 = fdiv fast float %6598, %6610
  %6615 = call float @dx.op.binary.f32(i32 35, float %6614, float 0.000000e+00)  ; FMax(a,b)
  %6616 = call float @dx.op.binary.f32(i32 36, float %6556, float %6615)  ; FMin(a,b)
  %6617 = call float @dx.op.binary.f32(i32 36, float %6613, float %6616)  ; FMin(a,b)
  %6618 = call float @dx.op.binary.f32(i32 35, float %6613, float %6616)  ; FMax(a,b)
  br label %6619

; <label>:6619                                    ; preds = %6604, %6570
  %6620 = phi float [ %6618, %6604 ], [ -1.000000e+00, %6570 ]
  %6621 = phi float [ %6617, %6604 ], [ -1.000000e+00, %6570 ]
  %6622 = phi i1 [ true, %6604 ], [ false, %6570 ]
  %6623 = and i1 %6590, %6622
  br i1 %6623, label %6624, label %6626

; <label>:6624                                    ; preds = %6619
  %6625 = fcmp fast oeq float %6621, %6620
  br i1 %6625, label %6929, label %6627

; <label>:6626                                    ; preds = %6619
  br i1 %6590, label %6929, label %6627

; <label>:6627                                    ; preds = %6626, %6624
  %6628 = phi float [ %6556, %6626 ], [ %6620, %6624 ]
  %6629 = phi float [ 0.000000e+00, %6626 ], [ %6621, %6624 ]
  %6630 = icmp ne i32 %6578, 0
  %6631 = fmul fast float %6628, %6559
  %6632 = fadd fast float %6631, %6572
  %6633 = fmul fast float %6632, %6628
  %6634 = select i1 %6630, float 0.000000e+00, float %6633
  %6635 = fcmp fast oeq float %6559, 0.000000e+00
  %6636 = fdiv fast float %6577, %6559
  %6637 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6636)  ; FMax(a,b)
  %6638 = select i1 %6635, float %6628, float %6637
  %6639 = call float @dx.op.binary.f32(i32 36, float %6628, float %6638)  ; FMin(a,b)
  %6640 = fcmp fast ogt float %6559, 0.000000e+00
  %6641 = fcmp fast olt float %6577, 0.000000e+00
  br i1 %6640, label %6642, label %6699

; <label>:6642                                    ; preds = %6627
  %6643 = icmp eq i32 %6578, 0
  br i1 %6641, label %6644, label %6688

; <label>:6644                                    ; preds = %6642
  %6645 = select i1 %6643, float %6628, float 0.000000e+00
  %6646 = fsub fast float -0.000000e+00, %6645
  %6647 = call float @dx.op.unary.f32(i32 6, float %6646)  ; FAbs(value)
  %6648 = fmul fast float %6645, %6559
  %6649 = fadd fast float %6648, %6572
  %6650 = fmul fast float %6647, %6649
  %6651 = fsub fast float %6634, %6650
  %6652 = fsub fast float %6628, %6647
  %6653 = select i1 %6643, float %6652, float 0.000000e+00
  %6654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6655 = extractvalue %dx.types.CBufRet.f32 %6654, 0
  %6656 = extractvalue %dx.types.CBufRet.f32 %6654, 1
  %6657 = extractvalue %dx.types.CBufRet.f32 %6654, 2
  %6658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6659 = extractvalue %dx.types.CBufRet.f32 %6658, 0
  %6660 = extractvalue %dx.types.CBufRet.f32 %6658, 1
  %6661 = extractvalue %dx.types.CBufRet.f32 %6658, 2
  %6662 = extractvalue %dx.types.CBufRet.f32 %6658, 3
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 3
  %6665 = call float @dx.op.binary.f32(i32 36, float %6651, float %6664)  ; FMin(a,b)
  %6666 = fmul fast float %6662, %6653
  %6667 = call float @dx.op.unary.f32(i32 7, float %6666)  ; Saturate(value)
  %6668 = fsub fast float %6659, %6655
  %6669 = fsub fast float %6660, %6656
  %6670 = fsub fast float %6661, %6657
  %6671 = fmul fast float %6667, %6668
  %6672 = fmul fast float %6667, %6669
  %6673 = fmul fast float %6667, %6670
  %6674 = fadd fast float %6671, %6655
  %6675 = fadd fast float %6672, %6656
  %6676 = fadd fast float %6673, %6657
  %6677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6678 = extractvalue %dx.types.CBufRet.f32 %6677, 0
  %6679 = extractvalue %dx.types.CBufRet.f32 %6677, 1
  %6680 = fadd fast float %6679, %6678
  %6681 = call float @dx.op.unary.f32(i32 7, float %6680)  ; Saturate(value)
  %6682 = extractvalue %dx.types.CBufRet.f32 %6677, 2
  %6683 = extractvalue %dx.types.CBufRet.f32 %6677, 3
  %6684 = fadd fast float %6683, %6682
  %6685 = call float @dx.op.unary.f32(i32 7, float %6684)  ; Saturate(value)
  %6686 = fmul fast float %6681, %6665
  %6687 = fmul fast float %6686, %6685
  br label %6929

; <label>:6688                                    ; preds = %6642
  br i1 %6643, label %6689, label %6710

; <label>:6689                                    ; preds = %6688
  %6690 = call float @dx.op.binary.f32(i32 36, float %6639, float %6629)  ; FMin(a,b)
  %6691 = fsub fast float %6639, %6690
  %6692 = fsub fast float %6691, %6628
  %6693 = call float @dx.op.unary.f32(i32 6, float %6692)  ; FAbs(value)
  %6694 = fadd fast float %6691, %6628
  %6695 = fmul fast float %6694, %6559
  %6696 = fadd fast float %6695, %6572
  %6697 = fmul fast float %6696, %6693
  %6698 = fsub fast float %6634, %6697
  br label %6710

; <label>:6699                                    ; preds = %6627
  br i1 %6641, label %6700, label %6710

; <label>:6700                                    ; preds = %6699
  %6701 = call float @dx.op.binary.f32(i32 35, float %6629, float %6639)  ; FMax(a,b)
  %6702 = icmp eq i32 %6578, 0
  %6703 = select i1 %6702, float %6639, float 0.000000e+00
  %6704 = fsub fast float -0.000000e+00, %6703
  %6705 = call float @dx.op.unary.f32(i32 6, float %6704)  ; FAbs(value)
  %6706 = fmul fast float %6703, %6559
  %6707 = fadd fast float %6706, %6572
  %6708 = fmul fast float %6705, %6707
  %6709 = fsub fast float %6634, %6708
  br label %6710

; <label>:6710                                    ; preds = %6700, %6699, %6689, %6688
  %6711 = phi float [ %6629, %6688 ], [ %6629, %6689 ], [ %6701, %6700 ], [ %6629, %6699 ]
  %6712 = phi float [ 0.000000e+00, %6688 ], [ %6693, %6689 ], [ %6705, %6700 ], [ 0.000000e+00, %6699 ]
  %6713 = phi float [ %6634, %6688 ], [ %6698, %6689 ], [ %6709, %6700 ], [ %6634, %6699 ]
  %6714 = phi float [ %6639, %6688 ], [ %6639, %6689 ], [ %6628, %6700 ], [ %6628, %6699 ]
  %6715 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %6715, align 4, !tbaa !134, !noalias !148
  %6716 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %6716, align 4, !tbaa !134, !noalias !148
  %6717 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %6717, align 4, !tbaa !134, !noalias !148
  %6718 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %6718, align 4, !tbaa !134, !noalias !148
  %6719 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %6719, align 4, !tbaa !134, !noalias !148
  %6720 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %6720, align 4, !tbaa !134, !noalias !148
  %6721 = icmp sgt i32 %6580, 0
  br i1 %6721, label %6722, label %6783

; <label>:6722                                    ; preds = %6710
  br label %6723

; <label>:6723                                    ; preds = %6772, %6722
  %6724 = phi i32 [ %6773, %6772 ], [ 0, %6722 ]
  %6725 = phi i32 [ %6774, %6772 ], [ 0, %6722 ]
  %6726 = add nuw i32 %6725, 171
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %6726)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 0
  %6729 = extractvalue %dx.types.CBufRet.f32 %6727, 1
  %6730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6731 = extractvalue %dx.types.CBufRet.f32 %6730, 0
  %6732 = extractvalue %dx.types.CBufRet.f32 %6730, 1
  %6733 = fsub fast float %6728, %6731
  %6734 = fsub fast float %6729, %6732
  %6735 = extractvalue %dx.types.CBufRet.f32 %6727, 2
  %6736 = fsub fast float -0.000000e+00, %6733
  %6737 = fsub fast float -0.000000e+00, %6734
  %6738 = call float @dx.op.dot2.f32(i32 54, float %6557, float %6558, float %6736, float %6737)  ; Dot2(ax,ay,bx,by)
  %6739 = fmul fast float %6738, 2.000000e+00
  %6740 = call float @dx.op.dot2.f32(i32 54, float %6736, float %6737, float %6736, float %6737)  ; Dot2(ax,ay,bx,by)
  %6741 = fmul fast float %6735, %6735
  %6742 = fsub fast float %6740, %6741
  %6743 = fmul fast float %6739, %6739
  %6744 = fmul fast float %6600, %6742
  %6745 = fsub fast float %6743, %6744
  %6746 = fcmp fast ogt float %6745, 0.000000e+00
  br i1 %6746, label %6747, label %6762

; <label>:6747                                    ; preds = %6723
  %6748 = fcmp fast ogt float %6739, 0.000000e+00
  %6749 = call float @dx.op.unary.f32(i32 24, float %6745)  ; Sqrt(value)
  %6750 = fsub fast float -0.000000e+00, %6749
  %6751 = select i1 %6748, float %6749, float %6750
  %6752 = fadd fast float %6751, %6739
  %6753 = fmul float %6752, -5.000000e-01
  %6754 = fdiv fast float %6753, %6593
  %6755 = call float @dx.op.binary.f32(i32 35, float %6754, float 0.000000e+00)  ; FMax(a,b)
  %6756 = call float @dx.op.binary.f32(i32 36, float %6628, float %6755)  ; FMin(a,b)
  %6757 = fdiv fast float %6742, %6753
  %6758 = call float @dx.op.binary.f32(i32 35, float %6757, float 0.000000e+00)  ; FMax(a,b)
  %6759 = call float @dx.op.binary.f32(i32 36, float %6628, float %6758)  ; FMin(a,b)
  %6760 = call float @dx.op.binary.f32(i32 36, float %6756, float %6759)  ; FMin(a,b)
  %6761 = call float @dx.op.binary.f32(i32 35, float %6756, float %6759)  ; FMax(a,b)
  br label %6762

; <label>:6762                                    ; preds = %6747, %6723
  %6763 = phi float [ %6761, %6747 ], [ -1.000000e+00, %6723 ]
  %6764 = phi float [ %6760, %6747 ], [ -1.000000e+00, %6723 ]
  %6765 = phi i1 [ true, %6747 ], [ false, %6723 ]
  br i1 %6765, label %6766, label %6772

; <label>:6766                                    ; preds = %6762
  %6767 = call float @dx.op.binary.f32(i32 35, float %6711, float %6764)  ; FMax(a,b)
  %6768 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6725
  store float %6767, float* %6768, align 4, !tbaa !134, !noalias !148
  %6769 = call float @dx.op.binary.f32(i32 35, float %6711, float %6763)  ; FMax(a,b)
  %6770 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %6725
  store float %6769, float* %6770, align 4, !tbaa !134, !noalias !148
  %6771 = add nsw i32 %6724, 1
  br label %6772

; <label>:6772                                    ; preds = %6766, %6762
  %6773 = phi i32 [ %6771, %6766 ], [ %6724, %6762 ]
  %6774 = add nuw nsw i32 %6725, 1
  %6775 = icmp eq i32 %6774, %6580
  br i1 %6775, label %6776, label %6723

; <label>:6776                                    ; preds = %6772
  %6777 = load float, float* %6717, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %6778 = load float, float* %6716, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  %6779 = load float, float* %6715, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  %6780 = load float, float* %6720, align 4, !tbaa !134, !alias.scope !174, !noalias !177
  %6781 = load float, float* %6719, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  %6782 = load float, float* %6718, align 4, !tbaa !134, !alias.scope !182, !noalias !183
  br label %6783

; <label>:6783                                    ; preds = %6776, %6710
  %6784 = phi float [ -1.000000e+00, %6710 ], [ %6782, %6776 ]
  %6785 = phi float [ -1.000000e+00, %6710 ], [ %6781, %6776 ]
  %6786 = phi float [ -1.000000e+00, %6710 ], [ %6780, %6776 ]
  %6787 = phi float [ -1.000000e+00, %6710 ], [ %6779, %6776 ]
  %6788 = phi float [ -1.000000e+00, %6710 ], [ %6778, %6776 ]
  %6789 = phi float [ -1.000000e+00, %6710 ], [ %6777, %6776 ]
  %6790 = phi i32 [ 0, %6710 ], [ %6773, %6776 ]
  %6791 = call float @dx.op.binary.f32(i32 36, float %6788, float %6789)  ; FMin(a,b)
  %6792 = call float @dx.op.binary.f32(i32 36, float %6787, float %6791)  ; FMin(a,b)
  %6793 = call float @dx.op.binary.f32(i32 35, float %6787, float %6788)  ; FMax(a,b)
  %6794 = call float @dx.op.binary.f32(i32 36, float %6793, float %6789)  ; FMin(a,b)
  %6795 = call float @dx.op.binary.f32(i32 36, float %6787, float %6788)  ; FMin(a,b)
  %6796 = call float @dx.op.binary.f32(i32 35, float %6795, float %6794)  ; FMax(a,b)
  %6797 = call float @dx.op.binary.f32(i32 35, float %6788, float %6789)  ; FMax(a,b)
  %6798 = call float @dx.op.binary.f32(i32 35, float %6787, float %6797)  ; FMax(a,b)
  store float %6792, float* %6715, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  store float %6796, float* %6716, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  store float %6798, float* %6717, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %6799 = call float @dx.op.binary.f32(i32 36, float %6785, float %6786)  ; FMin(a,b)
  %6800 = call float @dx.op.binary.f32(i32 36, float %6784, float %6799)  ; FMin(a,b)
  %6801 = call float @dx.op.binary.f32(i32 35, float %6784, float %6785)  ; FMax(a,b)
  %6802 = call float @dx.op.binary.f32(i32 36, float %6801, float %6786)  ; FMin(a,b)
  %6803 = call float @dx.op.binary.f32(i32 36, float %6784, float %6785)  ; FMin(a,b)
  %6804 = call float @dx.op.binary.f32(i32 35, float %6803, float %6802)  ; FMax(a,b)
  %6805 = call float @dx.op.binary.f32(i32 35, float %6785, float %6786)  ; FMax(a,b)
  %6806 = call float @dx.op.binary.f32(i32 35, float %6784, float %6805)  ; FMax(a,b)
  store float %6800, float* %6718, align 4, !tbaa !134, !alias.scope !182, !noalias !183
  store float %6804, float* %6719, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  store float %6806, float* %6720, align 4, !tbaa !134, !alias.scope !174, !noalias !177
  %6807 = sub nsw i32 3, %6790
  %6808 = icmp sgt i32 %6807, 2
  br i1 %6808, label %6809, label %6847

; <label>:6809                                    ; preds = %6783
  %6810 = icmp eq i32 %6578, 0
  %6811 = fsub fast float %6628, %6712
  %6812 = select i1 %6810, float %6811, float %6712
  %6813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.f32 %6813, 0
  %6815 = extractvalue %dx.types.CBufRet.f32 %6813, 1
  %6816 = extractvalue %dx.types.CBufRet.f32 %6813, 2
  %6817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6818 = extractvalue %dx.types.CBufRet.f32 %6817, 0
  %6819 = extractvalue %dx.types.CBufRet.f32 %6817, 1
  %6820 = extractvalue %dx.types.CBufRet.f32 %6817, 2
  %6821 = extractvalue %dx.types.CBufRet.f32 %6817, 3
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 3
  %6824 = call float @dx.op.binary.f32(i32 36, float %6713, float %6823)  ; FMin(a,b)
  %6825 = fmul fast float %6821, %6812
  %6826 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  %6827 = fsub fast float %6818, %6814
  %6828 = fsub fast float %6819, %6815
  %6829 = fsub fast float %6820, %6816
  %6830 = fmul fast float %6826, %6827
  %6831 = fmul fast float %6826, %6828
  %6832 = fmul fast float %6826, %6829
  %6833 = fadd fast float %6830, %6814
  %6834 = fadd fast float %6831, %6815
  %6835 = fadd fast float %6832, %6816
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = fadd fast float %6838, %6837
  %6840 = call float @dx.op.unary.f32(i32 7, float %6839)  ; Saturate(value)
  %6841 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6842 = extractvalue %dx.types.CBufRet.f32 %6836, 3
  %6843 = fadd fast float %6842, %6841
  %6844 = call float @dx.op.unary.f32(i32 7, float %6843)  ; Saturate(value)
  %6845 = fmul fast float %6840, %6824
  %6846 = fmul fast float %6845, %6844
  br label %6929

; <label>:6847                                    ; preds = %6783
  %6848 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6807
  %6849 = load float, float* %6848, align 4, !tbaa !134, !noalias !148
  %6850 = fcmp fast olt float %6849, %6714
  %6851 = icmp sgt i32 %6790, 0
  %6852 = and i1 %6851, %6850
  br i1 %6852, label %6853, label %6890

; <label>:6853                                    ; preds = %6847
  br label %6854

; <label>:6854                                    ; preds = %6883, %6853
  %6855 = phi float [ %6884, %6883 ], [ %6712, %6853 ]
  %6856 = phi float [ %6885, %6883 ], [ %6713, %6853 ]
  %6857 = phi float [ %6865, %6883 ], [ %6849, %6853 ]
  %6858 = phi i32 [ %6862, %6883 ], [ %6807, %6853 ]
  %6859 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %6858
  %6860 = load float, float* %6859, align 4, !tbaa !134, !noalias !148
  %6861 = icmp slt i32 %6858, 2
  %6862 = add nsw i32 %6858, 1
  %6863 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6862
  %6864 = load float, float* %6863, align 4, !tbaa !134, !noalias !148
  %6865 = select i1 %6861, float %6864, float %6628
  %6866 = call float @dx.op.binary.f32(i32 36, float %6865, float %6860)  ; FMin(a,b)
  %6867 = call float @dx.op.binary.f32(i32 36, float %6714, float %6866)  ; FMin(a,b)
  %6868 = icmp eq i32 %6578, 0
  %6869 = fadd fast float %6867, %6857
  %6870 = fmul fast float %6869, %6559
  %6871 = fadd fast float %6870, %6572
  br i1 %6868, label %6877, label %6872

; <label>:6872                                    ; preds = %6854
  %6873 = fsub fast float %6867, %6857
  %6874 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6873)  ; FMax(a,b)
  %6875 = fmul fast float %6874, %6871
  %6876 = fadd fast float %6875, %6856
  br label %6883

; <label>:6877                                    ; preds = %6854
  %6878 = fsub fast float %6857, %6867
  %6879 = call float @dx.op.unary.f32(i32 6, float %6878)  ; FAbs(value)
  %6880 = fadd fast float %6879, %6855
  %6881 = fmul fast float %6879, %6871
  %6882 = fsub fast float %6856, %6881
  br label %6883

; <label>:6883                                    ; preds = %6877, %6872
  %6884 = phi float [ %6874, %6872 ], [ %6880, %6877 ]
  %6885 = phi float [ %6876, %6872 ], [ %6882, %6877 ]
  %6886 = fcmp fast olt float %6865, %6714
  %6887 = icmp slt i32 %6862, 3
  %6888 = and i1 %6887, %6886
  br i1 %6888, label %6854, label %6889

; <label>:6889                                    ; preds = %6883
  br label %6890

; <label>:6890                                    ; preds = %6889, %6847
  %6891 = phi float [ %6712, %6847 ], [ %6884, %6889 ]
  %6892 = phi float [ %6713, %6847 ], [ %6885, %6889 ]
  %6893 = fsub fast float %6628, %6891
  %6894 = select i1 %6630, float %6891, float %6893
  %6895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6896 = extractvalue %dx.types.CBufRet.f32 %6895, 0
  %6897 = extractvalue %dx.types.CBufRet.f32 %6895, 1
  %6898 = extractvalue %dx.types.CBufRet.f32 %6895, 2
  %6899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6900 = extractvalue %dx.types.CBufRet.f32 %6899, 0
  %6901 = extractvalue %dx.types.CBufRet.f32 %6899, 1
  %6902 = extractvalue %dx.types.CBufRet.f32 %6899, 2
  %6903 = extractvalue %dx.types.CBufRet.f32 %6899, 3
  %6904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.f32 %6904, 3
  %6906 = call float @dx.op.binary.f32(i32 36, float %6892, float %6905)  ; FMin(a,b)
  %6907 = fmul fast float %6903, %6894
  %6908 = call float @dx.op.unary.f32(i32 7, float %6907)  ; Saturate(value)
  %6909 = fsub fast float %6900, %6896
  %6910 = fsub fast float %6901, %6897
  %6911 = fsub fast float %6902, %6898
  %6912 = fmul fast float %6908, %6909
  %6913 = fmul fast float %6908, %6910
  %6914 = fmul fast float %6908, %6911
  %6915 = fadd fast float %6912, %6896
  %6916 = fadd fast float %6913, %6897
  %6917 = fadd fast float %6914, %6898
  %6918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6919 = extractvalue %dx.types.CBufRet.f32 %6918, 0
  %6920 = extractvalue %dx.types.CBufRet.f32 %6918, 1
  %6921 = fadd fast float %6920, %6919
  %6922 = call float @dx.op.unary.f32(i32 7, float %6921)  ; Saturate(value)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6918, 2
  %6924 = extractvalue %dx.types.CBufRet.f32 %6918, 3
  %6925 = fadd fast float %6924, %6923
  %6926 = call float @dx.op.unary.f32(i32 7, float %6925)  ; Saturate(value)
  %6927 = fmul fast float %6922, %6906
  %6928 = fmul fast float %6927, %6926
  br label %6929

; <label>:6929                                    ; preds = %6890, %6809, %6644, %6626, %6624
  %6930 = phi float [ %6653, %6644 ], [ %6812, %6809 ], [ %6894, %6890 ], [ 0.000000e+00, %6624 ], [ 0.000000e+00, %6626 ]
  %6931 = phi float [ %6687, %6644 ], [ %6846, %6809 ], [ %6928, %6890 ], [ 0.000000e+00, %6624 ], [ 0.000000e+00, %6626 ]
  %6932 = phi float [ %6674, %6644 ], [ %6833, %6809 ], [ %6915, %6890 ], [ 0.000000e+00, %6624 ], [ 0.000000e+00, %6626 ]
  %6933 = phi float [ %6675, %6644 ], [ %6834, %6809 ], [ %6916, %6890 ], [ 0.000000e+00, %6624 ], [ 0.000000e+00, %6626 ]
  %6934 = phi float [ %6676, %6644 ], [ %6835, %6809 ], [ %6917, %6890 ], [ 0.000000e+00, %6624 ], [ 0.000000e+00, %6626 ]
  %6935 = fmul fast float %6567, %6931
  %6936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6936, 2
  %6938 = fsub fast float %6574, %6937
  %6939 = fcmp fast olt float %6935, -2.000000e+01
  %6940 = call float @dx.op.unary.f32(i32 21, float %6935)  ; Exp(value)
  %6941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6942 = extractvalue %dx.types.CBufRet.f32 %6941, 2
  %6943 = extractvalue %dx.types.CBufRet.f32 %6941, 3
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6946 = fmul fast float %6943, %6938
  %6947 = call float @dx.op.unary.f32(i32 7, float %6946)  ; Saturate(value)
  %6948 = fsub fast float 1.000000e+00, %6947
  %6949 = fmul fast float %6559, 5.000000e-01
  %6950 = fadd fast float %6949, 5.000000e-01
  %6951 = call float @dx.op.unary.f32(i32 7, float %6950)  ; Saturate(value)
  %6952 = fsub fast float 1.000000e+00, %6951
  %6953 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6948)  ; FMax(a,b)
  %6954 = fdiv fast float %6952, %6953
  %6955 = fsub fast float %6938, %6516
  %6956 = call float @dx.op.unary.f32(i32 6, float %6955)  ; FAbs(value)
  %6957 = fmul fast float %6956, %6942
  %6958 = call float @dx.op.unary.f32(i32 7, float %6954)  ; Saturate(value)
  %6959 = fsub fast float 1.000000e+00, %6957
  %6960 = fmul fast float %6959, %6958
  %6961 = fadd fast float %6960, %6957
  %6962 = fmul fast float %6945, %6938
  %6963 = call float @dx.op.unary.f32(i32 7, float %6962)  ; Saturate(value)
  %6964 = fsub fast float 1.000000e+00, %6961
  %6965 = fmul fast float %6964, %6963
  %6966 = fadd fast float %6965, %6961
  %6967 = call float @dx.op.unary.f32(i32 7, float %6966)  ; Saturate(value)
  %6968 = fadd fast float %6940, -1.000000e+00
  %6969 = select i1 %6939, float -1.000000e+00, float %6968
  %6970 = fmul fast float %6967, %6969
  %6971 = fadd fast float %6970, 1.000000e+00
  %6972 = fsub fast float -0.000000e+00, %6970
  %6973 = fmul fast float %6932, %6972
  %6974 = fmul fast float %6933, %6972
  %6975 = fmul fast float %6934, %6972
  br label %6976

; <label>:6976                                    ; preds = %6929, %6525
  %6977 = phi float [ %6930, %6929 ], [ 0.000000e+00, %6525 ]
  %6978 = phi float [ %6971, %6929 ], [ 1.000000e+00, %6525 ]
  %6979 = phi float [ %6973, %6929 ], [ 0.000000e+00, %6525 ]
  %6980 = phi float [ %6974, %6929 ], [ 0.000000e+00, %6525 ]
  %6981 = phi float [ %6975, %6929 ], [ 0.000000e+00, %6525 ]
  %6982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6983 = extractvalue %dx.types.CBufRet.f32 %6982, 1
  %6984 = fsub fast float 1.000000e+00, %6978
  %6985 = fmul fast float %6984, %6560
  %6986 = fmul fast float %6985, %6983
  %6987 = fsub fast float %6560, %6986
  br i1 %6553, label %6988, label %7017, !dx.controlflow.hints !184

; <label>:6988                                    ; preds = %6976
  %6989 = fmul fast float %6561, %6550
  %6990 = fadd fast float %6989, %6551
  %6991 = call float @dx.op.unary.f32(i32 7, float %6990)  ; Saturate(value)
  %6992 = fmul fast float %6532, %6987
  %6993 = fsub fast float -0.000000e+00, %6992
  %6994 = fmul fast float %6533, %6987
  %6995 = fsub fast float -0.000000e+00, %6994
  %6996 = call float @dx.op.unary.f32(i32 21, float %6993)  ; Exp(value)
  %6997 = call float @dx.op.unary.f32(i32 21, float %6995)  ; Exp(value)
  %6998 = call float @dx.op.binary.f32(i32 35, float %6540, float %6996)  ; FMax(a,b)
  %6999 = call float @dx.op.binary.f32(i32 35, float %6540, float %6997)  ; FMax(a,b)
  %7000 = fsub fast float %6999, %6998
  %7001 = fmul fast float %7000, %6991
  %7002 = fadd fast float %7001, %6998
  %7003 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7004 = fsub fast float %6537, %6542
  %7005 = fsub fast float %6538, %6543
  %7006 = fsub fast float %6539, %6544
  %7007 = fmul fast float %6991, %7004
  %7008 = fmul fast float %6991, %7005
  %7009 = fmul fast float %6991, %7006
  %7010 = fadd fast float %7007, %6542
  %7011 = fadd fast float %7008, %6543
  %7012 = fadd fast float %7009, %6544
  %7013 = fsub fast float 1.000000e+00, %7003
  %7014 = fmul fast float %7013, %7010
  %7015 = fmul fast float %7013, %7011
  %7016 = fmul fast float %7013, %7012
  br label %7076

; <label>:7017                                    ; preds = %6976
  %7018 = fmul fast float %6987, %6549
  %7019 = call float @dx.op.unary.f32(i32 7, float %7018)  ; Saturate(value)
  %7020 = fsub fast float 2.000000e+00, %7019
  %7021 = fmul fast float %7019, 9.921875e-01
  %7022 = fmul fast float %7021, %7020
  %7023 = fadd fast float %7022, 3.906250e-03
  %7024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7023, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7025 = extractvalue %dx.types.ResRet.f32 %7024, 0
  %7026 = fsub fast float %7019, %7025
  %7027 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7026)  ; FMax(a,b)
  %7028 = fmul fast float %6535, %6516
  %7029 = call float @dx.op.unary.f32(i32 6, float %7028)  ; FAbs(value)
  %7030 = fcmp fast ogt float %7029, 0x3EB0C6F7A0000000
  br i1 %7030, label %7031, label %7037, !dx.controlflow.hints !185

; <label>:7031                                    ; preds = %7017
  %7032 = fmul fast float %7028, 0xBFF7154760000000
  %7033 = call float @dx.op.unary.f32(i32 21, float %7032)  ; Exp(value)
  %7034 = fsub fast float 1.000000e+00, %7033
  %7035 = fdiv fast float %7034, %7028
  %7036 = fmul fast float %7035, %6545
  br label %7037

; <label>:7037                                    ; preds = %7031, %7017
  %7038 = phi float [ %7036, %7031 ], [ %6545, %7017 ]
  %7039 = fadd fast float %7038, %6547
  %7040 = fmul fast float %7039, %7027
  %7041 = fmul fast float %6532, %7040
  %7042 = fsub fast float -0.000000e+00, %7041
  %7043 = fmul fast float %6533, %7040
  %7044 = fsub fast float -0.000000e+00, %7043
  %7045 = fmul fast float %6534, %7040
  %7046 = fsub fast float -0.000000e+00, %7045
  %7047 = call float @dx.op.unary.f32(i32 21, float %7042)  ; Exp(value)
  %7048 = call float @dx.op.unary.f32(i32 21, float %7044)  ; Exp(value)
  %7049 = call float @dx.op.unary.f32(i32 21, float %7046)  ; Exp(value)
  %7050 = fmul fast float %6561, %6561
  %7051 = fadd fast float %7050, 1.000000e+00
  %7052 = fmul fast float %7051, 0x3FAE8EC8A0000000
  %7053 = fmul fast float %7052, %6542
  %7054 = fmul fast float %7052, %6543
  %7055 = fmul fast float %7052, %6544
  %7056 = fmul fast float %6561, %6540
  %7057 = fsub fast float 1.000000e+00, %7056
  %7058 = fmul fast float %6540, %6540
  %7059 = fsub fast float 1.000000e+00, %7058
  %7060 = fmul fast float %7059, 0x3FB45F3060000000
  %7061 = fmul fast float %7057, %7057
  %7062 = fdiv fast float 1.000000e+00, %7061
  %7063 = fmul fast float %7060, %7062
  %7064 = fmul fast float %7063, %6537
  %7065 = fmul fast float %7063, %6538
  %7066 = fmul fast float %7063, %6539
  %7067 = fadd fast float %7064, %7053
  %7068 = fadd fast float %7065, %7054
  %7069 = fadd fast float %7066, %7055
  %7070 = fsub fast float 1.000000e+00, %7047
  %7071 = fsub fast float 1.000000e+00, %7048
  %7072 = fsub fast float 1.000000e+00, %7049
  %7073 = fmul fast float %7067, %7070
  %7074 = fmul fast float %7068, %7071
  %7075 = fmul fast float %7069, %7072
  br label %7076

; <label>:7076                                    ; preds = %7037, %6988
  %7077 = phi float [ %7014, %6988 ], [ %7073, %7037 ]
  %7078 = phi float [ %7015, %6988 ], [ %7074, %7037 ]
  %7079 = phi float [ %7016, %6988 ], [ %7075, %7037 ]
  %7080 = phi float [ %7003, %6988 ], [ %7047, %7037 ]
  %7081 = phi float [ %7003, %6988 ], [ %7048, %7037 ]
  %7082 = phi float [ %7003, %6988 ], [ %7049, %7037 ]
  br i1 %6569, label %7083, label %7281, !dx.controlflow.hints !186

; <label>:7083                                    ; preds = %7076
  %7084 = extractvalue %dx.types.CBufRet.f32 %6982, 0
  %7085 = fmul fast float %7084, %6984
  %7086 = fsub fast float %6979, %7077
  %7087 = fsub fast float %6980, %7078
  %7088 = fsub fast float %6981, %7079
  %7089 = fmul fast float %7085, %7086
  %7090 = fmul fast float %7085, %7087
  %7091 = fmul fast float %7085, %7088
  %7092 = fadd fast float %7089, %7077
  %7093 = fadd fast float %7090, %7078
  %7094 = fadd fast float %7091, %7079
  %7095 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7080)  ; FMax(a,b)
  %7096 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7081)  ; FMax(a,b)
  %7097 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7082)  ; FMax(a,b)
  %7098 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6978)  ; FMax(a,b)
  %7099 = call float @dx.op.binary.f32(i32 35, float %6977, float %6987)  ; FMax(a,b)
  %7100 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7099)  ; FMax(a,b)
  %7101 = fdiv fast float %6977, %7100
  %7102 = call float @dx.op.unary.f32(i32 7, float %7101)  ; Saturate(value)
  %7103 = fdiv fast float %6987, %7100
  %7104 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7105 = fcmp fast une float %7098, 1.000000e+00
  br i1 %7105, label %7106, label %7119, !dx.controlflow.hints !187

; <label>:7106                                    ; preds = %7083
  %7107 = call float @dx.op.unary.f32(i32 23, float %7098)  ; Log(value)
  %7108 = fmul fast float %7107, 0x3FE62E4300000000
  %7109 = fmul fast float %6979, %7108
  %7110 = fsub fast float -0.000000e+00, %7109
  %7111 = fmul fast float %6980, %7108
  %7112 = fsub fast float -0.000000e+00, %7111
  %7113 = fmul fast float %6981, %7108
  %7114 = fsub fast float -0.000000e+00, %7113
  %7115 = fsub fast float 1.000000e+00, %7098
  %7116 = fdiv fast float %7110, %7115
  %7117 = fdiv fast float %7112, %7115
  %7118 = fdiv fast float %7114, %7115
  br label %7119

; <label>:7119                                    ; preds = %7106, %7083
  %7120 = phi float [ %7116, %7106 ], [ %6979, %7083 ]
  %7121 = phi float [ %7117, %7106 ], [ %6980, %7083 ]
  %7122 = phi float [ %7118, %7106 ], [ %6981, %7083 ]
  %7123 = phi float [ %7108, %7106 ], [ 0.000000e+00, %7083 ]
  %7124 = fcmp fast une float %7095, 1.000000e+00
  br i1 %7124, label %7125, label %7132, !dx.controlflow.hints !188

; <label>:7125                                    ; preds = %7119
  %7126 = call float @dx.op.unary.f32(i32 23, float %7095)  ; Log(value)
  %7127 = fmul fast float %7126, 0x3FE62E4300000000
  %7128 = fmul fast float %7092, %7127
  %7129 = fsub fast float -0.000000e+00, %7128
  %7130 = fsub fast float 1.000000e+00, %7095
  %7131 = fdiv fast float %7129, %7130
  br label %7132

; <label>:7132                                    ; preds = %7125, %7119
  %7133 = phi float [ %7131, %7125 ], [ %7092, %7119 ]
  %7134 = phi float [ %7127, %7125 ], [ 0.000000e+00, %7119 ]
  %7135 = fcmp fast une float %7096, 1.000000e+00
  br i1 %7135, label %7136, label %7143, !dx.controlflow.hints !188

; <label>:7136                                    ; preds = %7132
  %7137 = call float @dx.op.unary.f32(i32 23, float %7096)  ; Log(value)
  %7138 = fmul fast float %7137, 0x3FE62E4300000000
  %7139 = fmul fast float %7093, %7138
  %7140 = fsub fast float -0.000000e+00, %7139
  %7141 = fsub fast float 1.000000e+00, %7096
  %7142 = fdiv fast float %7140, %7141
  br label %7143

; <label>:7143                                    ; preds = %7136, %7132
  %7144 = phi float [ %7142, %7136 ], [ %7093, %7132 ]
  %7145 = phi float [ %7138, %7136 ], [ 0.000000e+00, %7132 ]
  %7146 = fcmp fast une float %7097, 1.000000e+00
  br i1 %7146, label %7147, label %7154, !dx.controlflow.hints !188

; <label>:7147                                    ; preds = %7143
  %7148 = call float @dx.op.unary.f32(i32 23, float %7097)  ; Log(value)
  %7149 = fmul fast float %7148, 0x3FE62E4300000000
  %7150 = fmul fast float %7094, %7149
  %7151 = fsub fast float -0.000000e+00, %7150
  %7152 = fsub fast float 1.000000e+00, %7097
  %7153 = fdiv fast float %7151, %7152
  br label %7154

; <label>:7154                                    ; preds = %7147, %7143
  %7155 = phi float [ %7153, %7147 ], [ %7094, %7143 ]
  %7156 = phi float [ %7149, %7147 ], [ 0.000000e+00, %7143 ]
  %7157 = fmul fast float %7120, %7104
  %7158 = fmul fast float %7121, %7104
  %7159 = fmul fast float %7122, %7104
  %7160 = fmul fast float %7123, %7104
  %7161 = fmul fast float %7133, %7102
  %7162 = fmul fast float %7144, %7102
  %7163 = fmul fast float %7155, %7102
  %7164 = fmul fast float %7134, %7102
  %7165 = fmul fast float %7145, %7102
  %7166 = fmul fast float %7156, %7102
  %7167 = fadd fast float %7161, %7157
  %7168 = fadd fast float %7162, %7158
  %7169 = fadd fast float %7163, %7159
  %7170 = fadd fast float %7164, %7160
  %7171 = fadd fast float %7165, %7160
  %7172 = fadd fast float %7166, %7160
  %7173 = fcmp fast une float %7170, 0.000000e+00
  br i1 %7173, label %7174, label %7181, !dx.controlflow.hints !189

; <label>:7174                                    ; preds = %7154
  %7175 = fmul fast float %7170, 0x3FF7154760000000
  %7176 = call float @dx.op.unary.f32(i32 21, float %7175)  ; Exp(value)
  %7177 = fsub fast float 1.000000e+00, %7176
  %7178 = fmul fast float %7167, %7177
  %7179 = fsub fast float -0.000000e+00, %7178
  %7180 = fdiv fast float %7179, %7170
  br label %7181

; <label>:7181                                    ; preds = %7174, %7154
  %7182 = phi float [ %7176, %7174 ], [ 1.000000e+00, %7154 ]
  %7183 = phi float [ %7180, %7174 ], [ %7167, %7154 ]
  %7184 = fcmp fast une float %7171, 0.000000e+00
  br i1 %7184, label %7185, label %7192, !dx.controlflow.hints !189

; <label>:7185                                    ; preds = %7181
  %7186 = fmul fast float %7171, 0x3FF7154760000000
  %7187 = call float @dx.op.unary.f32(i32 21, float %7186)  ; Exp(value)
  %7188 = fsub fast float 1.000000e+00, %7187
  %7189 = fmul fast float %7168, %7188
  %7190 = fsub fast float -0.000000e+00, %7189
  %7191 = fdiv fast float %7190, %7171
  br label %7192

; <label>:7192                                    ; preds = %7185, %7181
  %7193 = phi float [ %7187, %7185 ], [ 1.000000e+00, %7181 ]
  %7194 = phi float [ %7191, %7185 ], [ %7168, %7181 ]
  %7195 = fcmp fast une float %7172, 0.000000e+00
  br i1 %7195, label %7196, label %7203, !dx.controlflow.hints !189

; <label>:7196                                    ; preds = %7192
  %7197 = fmul fast float %7172, 0x3FF7154760000000
  %7198 = call float @dx.op.unary.f32(i32 21, float %7197)  ; Exp(value)
  %7199 = fsub fast float 1.000000e+00, %7198
  %7200 = fmul fast float %7169, %7199
  %7201 = fsub fast float -0.000000e+00, %7200
  %7202 = fdiv fast float %7201, %7172
  br label %7203

; <label>:7203                                    ; preds = %7196, %7192
  %7204 = phi float [ %7198, %7196 ], [ 1.000000e+00, %7192 ]
  %7205 = phi float [ %7202, %7196 ], [ %7169, %7192 ]
  %7206 = fcmp fast ogt float %7102, %7104
  br i1 %7206, label %7207, label %7227

; <label>:7207                                    ; preds = %7203
  %7208 = fsub fast float 1.000000e+00, %7104
  %7209 = fmul fast float %7120, %7208
  %7210 = fmul fast float %7121, %7208
  %7211 = fmul fast float %7122, %7208
  %7212 = fmul fast float %7123, %7208
  %7213 = fcmp fast une float %7212, 0.000000e+00
  br i1 %7213, label %7214, label %7265, !dx.controlflow.hints !190

; <label>:7214                                    ; preds = %7207
  %7215 = fmul fast float %7212, 0x3FF7154760000000
  %7216 = call float @dx.op.unary.f32(i32 21, float %7215)  ; Exp(value)
  %7217 = fsub fast float 1.000000e+00, %7216
  %7218 = fmul fast float %7209, %7217
  %7219 = fsub fast float -0.000000e+00, %7218
  %7220 = fmul fast float %7210, %7217
  %7221 = fsub fast float -0.000000e+00, %7220
  %7222 = fmul fast float %7211, %7217
  %7223 = fsub fast float -0.000000e+00, %7222
  %7224 = fdiv fast float %7219, %7212
  %7225 = fdiv fast float %7221, %7212
  %7226 = fdiv fast float %7223, %7212
  br label %7265

; <label>:7227                                    ; preds = %7203
  %7228 = fsub fast float 1.000000e+00, %7102
  %7229 = fmul fast float %7133, %7228
  %7230 = fmul fast float %7144, %7228
  %7231 = fmul fast float %7155, %7228
  %7232 = fmul fast float %7134, %7228
  %7233 = fmul fast float %7145, %7228
  %7234 = fmul fast float %7156, %7228
  %7235 = fcmp fast une float %7232, 0.000000e+00
  br i1 %7235, label %7236, label %7243, !dx.controlflow.hints !189

; <label>:7236                                    ; preds = %7227
  %7237 = fmul fast float %7232, 0x3FF7154760000000
  %7238 = call float @dx.op.unary.f32(i32 21, float %7237)  ; Exp(value)
  %7239 = fsub fast float 1.000000e+00, %7238
  %7240 = fmul fast float %7229, %7239
  %7241 = fsub fast float -0.000000e+00, %7240
  %7242 = fdiv fast float %7241, %7232
  br label %7243

; <label>:7243                                    ; preds = %7236, %7227
  %7244 = phi float [ %7242, %7236 ], [ %7229, %7227 ]
  %7245 = phi float [ %7238, %7236 ], [ 1.000000e+00, %7227 ]
  %7246 = fcmp fast une float %7233, 0.000000e+00
  br i1 %7246, label %7247, label %7254, !dx.controlflow.hints !189

; <label>:7247                                    ; preds = %7243
  %7248 = fmul fast float %7233, 0x3FF7154760000000
  %7249 = call float @dx.op.unary.f32(i32 21, float %7248)  ; Exp(value)
  %7250 = fsub fast float 1.000000e+00, %7249
  %7251 = fmul fast float %7230, %7250
  %7252 = fsub fast float -0.000000e+00, %7251
  %7253 = fdiv fast float %7252, %7233
  br label %7254

; <label>:7254                                    ; preds = %7247, %7243
  %7255 = phi float [ %7253, %7247 ], [ %7230, %7243 ]
  %7256 = phi float [ %7249, %7247 ], [ 1.000000e+00, %7243 ]
  %7257 = fcmp fast une float %7234, 0.000000e+00
  br i1 %7257, label %7258, label %7265, !dx.controlflow.hints !189

; <label>:7258                                    ; preds = %7254
  %7259 = fmul fast float %7234, 0x3FF7154760000000
  %7260 = call float @dx.op.unary.f32(i32 21, float %7259)  ; Exp(value)
  %7261 = fsub fast float 1.000000e+00, %7260
  %7262 = fmul fast float %7231, %7261
  %7263 = fsub fast float -0.000000e+00, %7262
  %7264 = fdiv fast float %7263, %7234
  br label %7265

; <label>:7265                                    ; preds = %7258, %7254, %7214, %7207
  %7266 = phi float [ %7264, %7258 ], [ %7226, %7214 ], [ %7211, %7207 ], [ %7231, %7254 ]
  %7267 = phi float [ %7255, %7258 ], [ %7225, %7214 ], [ %7210, %7207 ], [ %7255, %7254 ]
  %7268 = phi float [ %7244, %7258 ], [ %7224, %7214 ], [ %7209, %7207 ], [ %7244, %7254 ]
  %7269 = phi float [ %7260, %7258 ], [ %7216, %7214 ], [ 1.000000e+00, %7207 ], [ 1.000000e+00, %7254 ]
  %7270 = phi float [ %7256, %7258 ], [ %7216, %7214 ], [ 1.000000e+00, %7207 ], [ %7256, %7254 ]
  %7271 = phi float [ %7245, %7258 ], [ %7216, %7214 ], [ 1.000000e+00, %7207 ], [ %7245, %7254 ]
  %7272 = fmul fast float %7271, %7183
  %7273 = fmul fast float %7270, %7194
  %7274 = fmul fast float %7269, %7205
  %7275 = fadd fast float %7272, %7268
  %7276 = fadd fast float %7273, %7267
  %7277 = fadd fast float %7274, %7266
  %7278 = fmul fast float %7271, %7182
  %7279 = fmul fast float %7270, %7193
  %7280 = fmul fast float %7269, %7204
  br label %7281

; <label>:7281                                    ; preds = %7265, %7076
  %7282 = phi float [ %7280, %7265 ], [ %7082, %7076 ]
  %7283 = phi float [ %7279, %7265 ], [ %7081, %7076 ]
  %7284 = phi float [ %7278, %7265 ], [ %7080, %7076 ]
  %7285 = phi float [ %7277, %7265 ], [ %7079, %7076 ]
  %7286 = phi float [ %7276, %7265 ], [ %7078, %7076 ]
  %7287 = phi float [ %7275, %7265 ], [ %7077, %7076 ]
  %7288 = fmul fast float %7287, %6231
  %7289 = fmul fast float %7286, %6231
  %7290 = fmul fast float %7285, %6231
  %7291 = fmul fast float %7284, %6524
  %7292 = call float @dx.op.dot3.f32(i32 55, float %7284, float %7283, float %7282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7293 = call float @dx.op.dot3.f32(i32 55, float %7288, float %7289, float %7290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7294 = select i1 %247, float %7292, float %7284
  %7295 = select i1 %247, float %7292, float %7283
  %7296 = select i1 %247, float 1.000000e+00, float %7282
  %7297 = select i1 %247, float %7293, float %7288
  %7298 = select i1 %247, float 0.000000e+00, float %7289
  %7299 = select i1 %247, float 0.000000e+00, float %7290
  %7300 = fmul fast float %7294, %6518
  %7301 = fmul fast float %7295, %6519
  %7302 = fmul fast float %7296, %6520
  %7303 = fadd fast float %7300, %7297
  %7304 = fadd fast float %7301, %7298
  %7305 = fadd fast float %7299, %7302
  %7306 = fmul fast float %7294, %6521
  %7307 = fmul fast float %7295, %6522
  %7308 = fmul fast float %7296, %6523
  %7309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7310 = extractvalue %dx.types.CBufRet.i32 %7309, 0
  %7311 = icmp eq i32 %7310, 0
  br i1 %7311, label %7679, label %7312, !dx.controlflow.hints !191

; <label>:7312                                    ; preds = %7281
  %7313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7314 = extractvalue %dx.types.CBufRet.f32 %7313, 2
  %7315 = extractvalue %dx.types.CBufRet.f32 %7313, 3
  %7316 = fmul fast float %7314, %101
  %7317 = fmul fast float %7315, %102
  %7318 = fmul fast float %7316, 2.000000e+00
  %7319 = fmul fast float %7317, 2.000000e+00
  %7320 = fsub fast float 1.000000e+00, %7318
  %7321 = fsub fast float 1.000000e+00, %7319
  %7322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.f32 %7322, 0
  %7324 = extractvalue %dx.types.CBufRet.f32 %7322, 1
  %7325 = extractvalue %dx.types.CBufRet.f32 %7322, 2
  %7326 = fmul fast float %7320, %7323
  %7327 = fmul fast float %7320, %7324
  %7328 = fmul fast float %7320, %7325
  %7329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.f32 %7329, 0
  %7331 = extractvalue %dx.types.CBufRet.f32 %7329, 1
  %7332 = extractvalue %dx.types.CBufRet.f32 %7329, 2
  %7333 = fmul fast float %7321, %7330
  %7334 = fmul fast float %7321, %7331
  %7335 = fmul fast float %7321, %7332
  %7336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7337 = extractvalue %dx.types.CBufRet.f32 %7336, 0
  %7338 = extractvalue %dx.types.CBufRet.f32 %7336, 1
  %7339 = extractvalue %dx.types.CBufRet.f32 %7336, 2
  %7340 = fadd fast float %7333, %7337
  %7341 = fadd fast float %7340, %7326
  %7342 = fadd fast float %7334, %7338
  %7343 = fadd fast float %7342, %7327
  %7344 = fadd fast float %7335, %7339
  %7345 = fadd fast float %7344, %7328
  %7346 = fmul fast float %7341, %6517
  %7347 = fmul fast float %7343, %6517
  %7348 = fmul fast float %7345, %6517
  %7349 = fmul fast float %7346, %7346
  %7350 = fmul fast float %7347, %7347
  %7351 = fadd fast float %7349, %7350
  %7352 = fmul fast float %7348, %7348
  %7353 = fadd fast float %7351, %7352
  %7354 = call float @dx.op.unary.f32(i32 24, float %7353)  ; Sqrt(value)
  %7355 = extractvalue %dx.types.CBufRet.f32 %6242, 0
  %7356 = fsub fast float %7354, %7355
  %7357 = extractvalue %dx.types.CBufRet.f32 %6242, 2
  %7358 = fmul fast float %7356, %7357
  %7359 = call float @dx.op.unary.f32(i32 7, float %7358)  ; Saturate(value)
  %7360 = fadd fast float %7359, -5.000000e-01
  %7361 = fmul fast float %7360, 2.000000e+00
  %7362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7363 = extractvalue %dx.types.CBufRet.f32 %7362, 2
  %7364 = call float @dx.op.binary.f32(i32 36, float %7363, float %7361)  ; FMin(a,b)
  %7365 = fsub fast float -0.000000e+00, %7363
  %7366 = fcmp fast ogt float %7364, %7365
  br i1 %7366, label %7367, label %7679, !dx.controlflow.hints !192

; <label>:7367                                    ; preds = %7312
  %7368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7369 = extractvalue %dx.types.CBufRet.f32 %7368, 3
  %7370 = fcmp fast ogt float %7369, 0.000000e+00
  br i1 %7370, label %7371, label %7446, !dx.controlflow.hints !193

; <label>:7371                                    ; preds = %7367
  %7372 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7373 = extractvalue %dx.types.Dimensions %7372, 0
  %7374 = sitofp i32 %7373 to float
  %7375 = extractvalue %dx.types.Dimensions %7372, 1
  %7376 = sitofp i32 %7375 to float
  %7377 = fmul fast float %7316, %7374
  %7378 = fmul fast float %7317, %7376
  %7379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7380 = extractvalue %dx.types.CBufRet.f32 %7379, 1
  %7381 = fsub fast float -0.000000e+00, %7380
  %7382 = fptoui float %7381 to i32
  %7383 = fptoui float %7377 to i32
  %7384 = fptoui float %7378 to i32
  %7385 = and i32 %7382, 31
  %7386 = lshr i32 %7383, %7385
  %7387 = lshr i32 %7384, %7385
  %7388 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7382, i32 %7386, i32 %7387, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7389 = extractvalue %dx.types.ResRet.f32 %7388, 0
  %7390 = fcmp fast olt float %7389, -1.000000e+00
  %7391 = fcmp fast ogt float %7389, -1.000000e+00
  %7392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7393 = extractvalue %dx.types.CBufRet.f32 %7392, 1
  %7394 = select i1 %7391, float %7393, float 1.000000e+00
  %7395 = fadd fast float %7389, 1.000000e+00
  %7396 = fmul fast float %7394, %7395
  %7397 = call float @dx.op.unary.f32(i32 6, float %7396)  ; FAbs(value)
  %7398 = extractvalue %dx.types.CBufRet.f32 %7392, 3
  %7399 = fcmp fast oge float %7397, %7398
  %7400 = select i1 %7399, float 0x4197782600000000, float %7397
  %7401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7402 = extractvalue %dx.types.CBufRet.f32 %7401, 0
  %7403 = extractvalue %dx.types.CBufRet.f32 %7401, 1
  %7404 = extractvalue %dx.types.CBufRet.f32 %7401, 2
  %7405 = select i1 %7390, float %7402, float %7323
  %7406 = select i1 %7390, float %7403, float %7324
  %7407 = select i1 %7390, float %7404, float %7325
  %7408 = fmul fast float %7405, %7320
  %7409 = fmul fast float %7406, %7320
  %7410 = fmul fast float %7407, %7320
  %7411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7412 = extractvalue %dx.types.CBufRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.CBufRet.f32 %7411, 1
  %7414 = extractvalue %dx.types.CBufRet.f32 %7411, 2
  %7415 = select i1 %7390, float %7412, float %7330
  %7416 = select i1 %7390, float %7413, float %7331
  %7417 = select i1 %7390, float %7414, float %7332
  %7418 = fmul fast float %7415, %7321
  %7419 = fmul fast float %7416, %7321
  %7420 = fmul fast float %7417, %7321
  %7421 = fadd fast float %7418, %7408
  %7422 = fadd fast float %7419, %7409
  %7423 = fadd fast float %7420, %7410
  %7424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7425 = extractvalue %dx.types.CBufRet.f32 %7424, 0
  %7426 = extractvalue %dx.types.CBufRet.f32 %7424, 1
  %7427 = extractvalue %dx.types.CBufRet.f32 %7424, 2
  %7428 = select i1 %7390, float %7425, float %7337
  %7429 = select i1 %7390, float %7426, float %7338
  %7430 = select i1 %7390, float %7427, float %7339
  %7431 = fadd fast float %7421, %7428
  %7432 = fadd fast float %7422, %7429
  %7433 = fadd fast float %7423, %7430
  %7434 = fmul fast float %7431, %7400
  %7435 = fmul fast float %7432, %7400
  %7436 = fmul fast float %7433, %7400
  %7437 = fmul fast float %7434, %7434
  %7438 = fmul fast float %7435, %7435
  %7439 = fadd fast float %7437, %7438
  %7440 = fmul fast float %7436, %7436
  %7441 = fadd fast float %7439, %7440
  %7442 = call float @dx.op.unary.f32(i32 24, float %7441)  ; Sqrt(value)
  %7443 = fsub fast float %7442, %7355
  %7444 = fmul fast float %7443, %7357
  %7445 = call float @dx.op.unary.f32(i32 7, float %7444)  ; Saturate(value)
  br label %7446

; <label>:7446                                    ; preds = %7371, %7367
  %7447 = phi float [ %7445, %7371 ], [ 1.000000e+00, %7367 ]
  %7448 = fmul fast float %7364, 5.000000e-01
  %7449 = fadd fast float %7448, 5.000000e-01
  %7450 = call float @dx.op.unary.f32(i32 22, float %7449)  ; Frc(value)
  %7451 = call float @dx.op.unary.f32(i32 27, float %7450)  ; Round_ni(value)
  %7452 = call float @dx.op.unary.f32(i32 22, float %7450)  ; Frc(value)
  %7453 = fmul fast float %7452, 2.000000e+00
  %7454 = fadd fast float %7453, -1.000000e+00
  %7455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7316, float %7317, float %7451, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7456 = extractvalue %dx.types.ResRet.f32 %7455, 0
  %7457 = extractvalue %dx.types.ResRet.f32 %7455, 1
  %7458 = extractvalue %dx.types.ResRet.f32 %7455, 2
  %7459 = extractvalue %dx.types.ResRet.f32 %7455, 3
  %7460 = fadd fast float %7456, -5.000000e-01
  %7461 = fadd fast float %7458, -5.000000e-01
  %7462 = fmul fast float %7460, 0xBFD5555560000000
  %7463 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7461, float %7462)  ; FMad(a,b,c)
  %7464 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7457, float 0.000000e+00)  ; FMad(a,b,c)
  %7465 = fadd fast float %7464, %7459
  %7466 = fmul fast float %7460, -7.500000e-01
  %7467 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7461, float %7466)  ; FMad(a,b,c)
  %7468 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7457, float 0.000000e+00)  ; FMad(a,b,c)
  %7469 = fadd fast float %7468, %7459
  %7470 = call float @dx.op.binary.f32(i32 35, float %7463, float -1.000000e+00)  ; FMax(a,b)
  %7471 = call float @dx.op.binary.f32(i32 35, float %7465, float -1.000000e+00)  ; FMax(a,b)
  %7472 = call float @dx.op.binary.f32(i32 35, float %7467, float -1.000000e+00)  ; FMax(a,b)
  %7473 = call float @dx.op.binary.f32(i32 35, float %7469, float -1.000000e+00)  ; FMax(a,b)
  %7474 = call float @dx.op.binary.f32(i32 36, float %7470, float 1.000000e+00)  ; FMin(a,b)
  %7475 = call float @dx.op.binary.f32(i32 36, float %7471, float 1.000000e+00)  ; FMin(a,b)
  %7476 = call float @dx.op.binary.f32(i32 36, float %7472, float 1.000000e+00)  ; FMin(a,b)
  %7477 = call float @dx.op.binary.f32(i32 36, float %7473, float 1.000000e+00)  ; FMin(a,b)
  %7478 = fcmp fast olt float %7474, 0x3FEFFF8020000000
  br i1 %7478, label %7479, label %7594, !dx.controlflow.hints !194

; <label>:7479                                    ; preds = %7446
  %7480 = extractvalue %dx.types.CBufRet.f32 %7362, 3
  %7481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7482 = extractvalue %dx.types.CBufRet.f32 %7481, 0
  %7483 = extractvalue %dx.types.CBufRet.f32 %7481, 1
  %7484 = extractvalue %dx.types.CBufRet.f32 %7481, 2
  %7485 = extractvalue %dx.types.CBufRet.f32 %7481, 3
  %7486 = fsub fast float %7482, %7474
  %7487 = fsub fast float %7483, %7475
  %7488 = fsub fast float %7484, %7476
  %7489 = fsub fast float %7485, %7477
  %7490 = fmul fast float %7486, %7480
  %7491 = fmul fast float %7487, %7480
  %7492 = fmul fast float %7488, %7480
  %7493 = fmul fast float %7489, %7480
  %7494 = fadd fast float %7490, %7474
  %7495 = fadd fast float %7491, %7475
  %7496 = fsub fast float -0.000000e+00, %7495
  %7497 = fadd fast float %7492, %7476
  %7498 = fadd fast float %7493, %7477
  %7499 = fmul fast float %7494, %7494
  %7500 = fsub fast float %7495, %7499
  %7501 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7500)  ; FMax(a,b)
  %7502 = fdiv fast float 1.000000e+00, %7501
  %7503 = fmul fast float %7495, %7494
  %7504 = fsub fast float %7497, %7503
  %7505 = fsub fast float %7454, %7494
  %7506 = fmul fast float %7454, %7454
  %7507 = fsub fast float %7506, %7495
  %7508 = fmul fast float %7505, %7502
  %7509 = fmul fast float %7508, %7504
  %7510 = fsub fast float %7507, %7509
  %7511 = fmul fast float %7495, %7495
  %7512 = fsub fast float %7498, %7511
  %7513 = fmul fast float %7504, %7504
  %7514 = fmul fast float %7513, %7502
  %7515 = fsub fast float %7512, %7514
  %7516 = fdiv fast float %7510, %7515
  %7517 = fmul fast float %7504, %7516
  %7518 = fsub fast float %7505, %7517
  %7519 = fmul fast float %7518, %7502
  %7520 = fmul fast float %7519, %7494
  %7521 = fsub fast float 1.000000e+00, %7520
  %7522 = fmul fast float %7495, %7516
  %7523 = fsub fast float %7521, %7522
  %7524 = fmul fast float %7519, %7519
  %7525 = fmul fast float %7516, 4.000000e+00
  %7526 = fmul fast float %7525, %7523
  %7527 = fsub fast float %7524, %7526
  %7528 = call float @dx.op.unary.f32(i32 24, float %7527)  ; Sqrt(value)
  %7529 = fcmp fast oge float %7519, 0.000000e+00
  %7530 = fsub fast float -0.000000e+00, %7528
  %7531 = select i1 %7529, float %7530, float %7528
  %7532 = fsub fast float %7531, %7519
  %7533 = fdiv fast float %7532, %7516
  %7534 = fdiv fast float %7523, %7532
  %7535 = fmul fast float %7533, 5.000000e-01
  %7536 = fmul fast float %7534, 2.000000e+00
  %7537 = select i1 %7529, float %7535, float %7536
  %7538 = select i1 %7529, float %7536, float %7535
  %7539 = call float @dx.op.binary.f32(i32 35, float %7537, float %7538)  ; FMax(a,b)
  %7540 = call float @dx.op.binary.f32(i32 36, float %7537, float %7538)  ; FMin(a,b)
  %7541 = fcmp fast ogt float %7454, %7540
  br i1 %7541, label %7542, label %7552

; <label>:7542                                    ; preds = %7479
  %7543 = fsub fast float %7454, %7540
  %7544 = fsub fast float %7539, %7540
  %7545 = fmul fast float %7543, %7544
  %7546 = fmul fast float %7539, %7454
  %7547 = fadd fast float %7539, %7454
  %7548 = fmul fast float %7547, %7494
  %7549 = fadd fast float %7546, %7495
  %7550 = fsub fast float %7549, %7548
  %7551 = fdiv fast float %7550, %7545
  br label %7552

; <label>:7552                                    ; preds = %7542, %7479
  %7553 = phi float [ %7551, %7542 ], [ 0.000000e+00, %7479 ]
  %7554 = fcmp fast ogt float %7454, %7539
  %7555 = fsub fast float %7454, %7539
  br i1 %7554, label %7556, label %7566

; <label>:7556                                    ; preds = %7552
  %7557 = fsub fast float %7539, %7540
  %7558 = fmul fast float %7557, %7555
  %7559 = fmul fast float %7540, %7454
  %7560 = fadd fast float %7540, %7454
  %7561 = fmul fast float %7560, %7494
  %7562 = fsub fast float %7496, %7559
  %7563 = fadd fast float %7562, %7561
  %7564 = fdiv fast float %7563, %7558
  %7565 = fadd fast float %7564, %7553
  br label %7566

; <label>:7566                                    ; preds = %7556, %7552
  %7567 = phi float [ %7565, %7556 ], [ %7553, %7552 ]
  %7568 = fsub fast float %7454, %7540
  %7569 = fmul fast float %7568, %7555
  %7570 = fmul fast float %7540, %7539
  %7571 = fadd fast float %7540, %7539
  %7572 = fmul fast float %7571, %7494
  %7573 = fadd fast float %7570, %7495
  %7574 = fsub fast float %7573, %7572
  %7575 = fdiv fast float %7574, %7569
  %7576 = call float @dx.op.unary.f32(i32 7, float %7567)  ; Saturate(value)
  %7577 = fcmp fast oeq float %6243, 0.000000e+00
  %7578 = extractvalue %dx.types.CBufRet.f32 %7362, 0
  %7579 = fcmp fast oeq float %7578, 0.000000e+00
  %7580 = or i1 %7577, %7579
  %7581 = fmul fast float %7578, 2.000000e+00
  %7582 = fadd fast float %7363, %7364
  %7583 = fdiv fast float %7582, %7581
  %7584 = call float @dx.op.unary.f32(i32 7, float %7583)  ; Saturate(value)
  %7585 = fmul fast float %7584, 2.000000e+00
  %7586 = fsub fast float 3.000000e+00, %7585
  %7587 = fmul fast float %7584, %7584
  %7588 = fmul fast float %7587, %7586
  %7589 = select i1 %7580, float 1.000000e+00, float %7588
  %7590 = fmul fast float %7575, %6243
  %7591 = fadd fast float %7576, %7590
  %7592 = call float @dx.op.unary.f32(i32 7, float %7591)  ; Saturate(value)
  %7593 = fmul fast float %7589, %7592
  br label %7594

; <label>:7594                                    ; preds = %7566, %7446
  %7595 = phi float [ %7593, %7566 ], [ 0.000000e+00, %7446 ]
  %7596 = fsub fast float 1.000000e+00, %7595
  %7597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7316, float %7317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7598 = extractvalue %dx.types.ResRet.f32 %7597, 0
  %7599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7600 = extractvalue %dx.types.CBufRet.i32 %7599, 2
  %7601 = icmp eq i32 %7600, 0
  br i1 %7601, label %7607, label %7602

; <label>:7602                                    ; preds = %7594
  %7603 = call float @dx.op.unary.f32(i32 7, float %7595)  ; Saturate(value)
  %7604 = fadd fast float %7598, -1.000000e+00
  %7605 = fmul fast float %7603, %7604
  %7606 = fadd fast float %7605, 1.000000e+00
  br label %7607

; <label>:7607                                    ; preds = %7602, %7594
  %7608 = phi float [ %7606, %7602 ], [ %7596, %7594 ]
  br i1 %7370, label %7609, label %7627

; <label>:7609                                    ; preds = %7607
  %7610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7611 = extractvalue %dx.types.CBufRet.f32 %7610, 1
  %7612 = fsub fast float %7447, %7611
  %7613 = call float @dx.op.unary.f32(i32 7, float %7612)  ; Saturate(value)
  %7614 = fsub fast float %7447, %7369
  %7615 = call float @dx.op.unary.f32(i32 7, float %7614)  ; Saturate(value)
  %7616 = fsub fast float %7613, %7615
  %7617 = fsub fast float %7449, %7615
  %7618 = fdiv fast float %7617, %7616
  %7619 = call float @dx.op.unary.f32(i32 7, float %7618)  ; Saturate(value)
  %7620 = fmul fast float %7619, 2.000000e+00
  %7621 = fsub fast float 3.000000e+00, %7620
  %7622 = fsub fast float %7598, %7608
  %7623 = fmul fast float %7619, %7619
  %7624 = fmul fast float %7623, %7622
  %7625 = fmul fast float %7624, %7621
  %7626 = fadd fast float %7625, %7608
  br label %7627

; <label>:7627                                    ; preds = %7609, %7607
  %7628 = phi float [ %7626, %7609 ], [ %7608, %7607 ]
  %7629 = call float @dx.op.binary.f32(i32 35, float %7598, float %7628)  ; FMax(a,b)
  %7630 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7631 = extractvalue %dx.types.CBufRet.i32 %7630, 2
  %7632 = and i32 %7631, 1
  %7633 = icmp eq i32 %7632, 0
  %7634 = fcmp fast une float %7629, 1.000000e+00
  %7635 = and i1 %7634, %7633
  br i1 %7635, label %7636, label %7655

; <label>:7636                                    ; preds = %7627
  %7637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7316, float %7317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7638 = extractvalue %dx.types.ResRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.ResRet.f32 %7637, 1
  %7640 = extractvalue %dx.types.ResRet.f32 %7637, 2
  %7641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7641, 1
  %7643 = fmul fast float %7642, %7638
  %7644 = fmul fast float %7642, %7639
  %7645 = fmul fast float %7642, %7640
  %7646 = fcmp fast ogt float %7598, 0x3FEFFF2E40000000
  %7647 = fsub fast float 1.000000e+00, %7629
  %7648 = fsub fast float 1.000000e+00, %7598
  %7649 = fdiv fast float %7647, %7648
  %7650 = call float @dx.op.unary.f32(i32 7, float %7649)  ; Saturate(value)
  %7651 = select i1 %7646, float 0.000000e+00, float %7650
  %7652 = fmul fast float %7643, %7651
  %7653 = fmul fast float %7644, %7651
  %7654 = fmul fast float %7645, %7651
  br label %7655

; <label>:7655                                    ; preds = %7636, %7627
  %7656 = phi float [ 0.000000e+00, %7627 ], [ %7652, %7636 ]
  %7657 = phi float [ 0.000000e+00, %7627 ], [ %7653, %7636 ]
  %7658 = phi float [ 0.000000e+00, %7627 ], [ %7654, %7636 ]
  %7659 = fmul fast float %7656, %6231
  %7660 = fmul fast float %7657, %6231
  %7661 = fmul fast float %7658, %6231
  %7662 = fmul fast float %7629, %7291
  %7663 = call float @dx.op.dot3.f32(i32 55, float %7629, float %7629, float %7629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7664 = call float @dx.op.dot3.f32(i32 55, float %7659, float %7660, float %7661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7665 = select i1 %247, float %7663, float %7629
  %7666 = select i1 %247, float 1.000000e+00, float %7629
  %7667 = select i1 %247, float %7664, float %7659
  %7668 = select i1 %247, float 0.000000e+00, float %7660
  %7669 = select i1 %247, float 0.000000e+00, float %7661
  %7670 = fmul fast float %7665, %7303
  %7671 = fmul fast float %7665, %7304
  %7672 = fmul fast float %7666, %7305
  %7673 = fadd fast float %7670, %7667
  %7674 = fadd fast float %7671, %7668
  %7675 = fadd fast float %7669, %7672
  %7676 = fmul fast float %7665, %7306
  %7677 = fmul fast float %7665, %7307
  %7678 = fmul fast float %7666, %7308
  br label %7679

; <label>:7679                                    ; preds = %7655, %7312, %7281, %6513
  %7680 = phi float [ %6518, %6513 ], [ %7303, %7281 ], [ %7673, %7655 ], [ %7303, %7312 ]
  %7681 = phi float [ %6519, %6513 ], [ %7304, %7281 ], [ %7674, %7655 ], [ %7304, %7312 ]
  %7682 = phi float [ %6520, %6513 ], [ %7305, %7281 ], [ %7675, %7655 ], [ %7305, %7312 ]
  %7683 = phi float [ %6521, %6513 ], [ %7306, %7281 ], [ %7676, %7655 ], [ %7306, %7312 ]
  %7684 = phi float [ %6522, %6513 ], [ %7307, %7281 ], [ %7677, %7655 ], [ %7307, %7312 ]
  %7685 = phi float [ %6523, %6513 ], [ %7308, %7281 ], [ %7678, %7655 ], [ %7308, %7312 ]
  %7686 = phi float [ %6524, %6513 ], [ %7291, %7281 ], [ %7662, %7655 ], [ %7291, %7312 ]
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 2
  %7689 = extractvalue %dx.types.CBufRet.f32 %7687, 3
  %7690 = fmul fast float %7688, %101
  %7691 = fmul fast float %7689, %102
  %7692 = call float @dx.op.unary.f32(i32 7, float %7690)  ; Saturate(value)
  %7693 = call float @dx.op.unary.f32(i32 7, float %7691)  ; Saturate(value)
  %7694 = select i1 %6253, i32 2, i32 0
  %7695 = or i32 %7694, 1
  %7696 = uitofp i32 %7695 to float
  %7697 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7692, float %7693, float %7696, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7698 = extractvalue %dx.types.ResRet.f32 %7697, 0
  %7699 = extractvalue %dx.types.ResRet.f32 %7697, 1
  %7700 = extractvalue %dx.types.ResRet.f32 %7697, 2
  %7701 = extractvalue %dx.types.ResRet.f32 %7697, 3
  %7702 = add nuw nsw i32 %7694, 2
  %7703 = uitofp i32 %7702 to float
  %7704 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7692, float %7693, float %7703, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7705 = extractvalue %dx.types.ResRet.f32 %7704, 0
  %7706 = extractvalue %dx.types.ResRet.f32 %7704, 1
  %7707 = extractvalue %dx.types.ResRet.f32 %7704, 2
  %7708 = extractvalue %dx.types.ResRet.f32 %7704, 3
  %7709 = call float @dx.op.binary.f32(i32 35, float %7699, float %7700)  ; FMax(a,b)
  %7710 = call float @dx.op.binary.f32(i32 35, float %7698, float %7709)  ; FMax(a,b)
  %7711 = call float @dx.op.binary.f32(i32 35, float %7710, float %7701)  ; FMax(a,b)
  %7712 = call float @dx.op.binary.f32(i32 36, float %7706, float %7707)  ; FMin(a,b)
  %7713 = call float @dx.op.binary.f32(i32 36, float %7705, float %7712)  ; FMin(a,b)
  %7714 = call float @dx.op.binary.f32(i32 36, float %7713, float %7708)  ; FMin(a,b)
  %7715 = fmul fast float %7711, 2.550000e+02
  %7716 = fadd fast float %7715, 0x3F70101020000000
  %7717 = fptoui float %7716 to i32
  %7718 = fmul fast float %7714, 2.550000e+02
  %7719 = fadd fast float %7718, 0x3F70101020000000
  %7720 = fptoui float %7719 to i32
  %7721 = icmp ult i32 %7717, %7720
  br i1 %7721, label %7722, label %7891

; <label>:7722                                    ; preds = %7679
  %7723 = fcmp fast ogt float %88, 9.843750e-01
  %7724 = fadd fast float %6517, -4.000000e+00
  %7725 = select i1 %7723, float -4.000000e+00, float %7724
  %7726 = call float @dx.op.binary.f32(i32 35, float %7725, float 0.000000e+00)  ; FMax(a,b)
  %7727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7728 = extractvalue %dx.types.CBufRet.f32 %7727, 0
  %7729 = fadd fast float %7728, %7726
  %7730 = extractvalue %dx.types.CBufRet.f32 %7727, 2
  %7731 = fmul fast float %7729, %7730
  %7732 = call float @dx.op.unary.f32(i32 23, float %7731)  ; Log(value)
  %7733 = extractvalue %dx.types.CBufRet.f32 %7727, 3
  %7734 = fmul fast float %7733, %7732
  %7735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7736 = extractvalue %dx.types.CBufRet.f32 %7735, 2
  %7737 = fmul fast float %7734, %7736
  %7738 = call float @dx.op.unary.f32(i32 7, float %7737)  ; Saturate(value)
  %7739 = uitofp i32 %7717 to float
  %7740 = uitofp i32 %7720 to float
  %7741 = fadd fast float %7739, 5.000000e-01
  %7742 = fadd fast float %7740, 5.000000e-01
  %7743 = fmul fast float %7736, %7741
  %7744 = fmul fast float %7736, %7742
  %7745 = fadd fast float %7743, 0x3F0FFB4800000000
  %7746 = fadd fast float %7744, 0xBF0FFB4800000000
  %7747 = call float @dx.op.binary.f32(i32 35, float %7738, float %7745)  ; FMax(a,b)
  %7748 = call float @dx.op.binary.f32(i32 36, float %7747, float %7746)  ; FMin(a,b)
  %7749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7750 = extractvalue %dx.types.CBufRet.f32 %7749, 1
  %7751 = extractvalue %dx.types.CBufRet.f32 %7749, 2
  %7752 = extractvalue %dx.types.CBufRet.f32 %7749, 0
  %7753 = select i1 %6253, float %7752, float 0.000000e+00
  %7754 = fmul fast float %7750, %7748
  %7755 = fadd fast float %7753, %7754
  %7756 = fadd fast float %7753, %7751
  %7757 = fsub fast float %7750, %7751
  %7758 = fadd fast float %7757, %7753
  %7759 = call float @dx.op.binary.f32(i32 35, float %7755, float %7756)  ; FMax(a,b)
  %7760 = call float @dx.op.binary.f32(i32 36, float %7759, float %7758)  ; FMin(a,b)
  %7761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7692, float %7693, float %7760, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7762 = extractvalue %dx.types.ResRet.f32 %7761, 0
  %7763 = extractvalue %dx.types.ResRet.f32 %7761, 1
  %7764 = extractvalue %dx.types.ResRet.f32 %7761, 2
  %7765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.i32 %7765, 0
  %7767 = extractvalue %dx.types.CBufRet.i32 %7765, 1
  %7768 = uitofp i32 %7766 to float
  %7769 = uitofp i32 %7767 to float
  %7770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7771 = extractvalue %dx.types.CBufRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.CBufRet.f32 %7770, 1
  %7773 = fmul fast float %7768, %7692
  %7774 = fmul fast float %7769, %7693
  %7775 = fadd fast float %7773, -5.000000e-01
  %7776 = fadd fast float %7774, -5.000000e-01
  %7777 = call float @dx.op.unary.f32(i32 22, float %7775)  ; Frc(value)
  %7778 = call float @dx.op.unary.f32(i32 22, float %7776)  ; Frc(value)
  %7779 = fmul fast float %7777, %7777
  %7780 = fmul fast float %7779, %7777
  %7781 = fsub fast float 3.000000e+00, %7777
  %7782 = fmul fast float %7779, %7781
  %7783 = fmul fast float %7777, 3.000000e+00
  %7784 = fmul fast float %7780, 3.000000e+00
  %7785 = fmul fast float %7779, 6.000000e+00
  %7786 = fsub fast float %7784, %7785
  %7787 = fadd fast float %7786, 4.000000e+00
  %7788 = fmul fast float %7787, 0x3FC5555560000000
  %7789 = fmul fast float %7780, -3.000000e+00
  %7790 = fadd fast float %7779, %7777
  %7791 = fmul fast float %7790, 3.000000e+00
  %7792 = fadd fast float %7789, 1.000000e+00
  %7793 = fadd fast float %7792, %7791
  %7794 = fmul fast float %7780, 0x3FC5555560000000
  %7795 = fmul fast float %7778, %7778
  %7796 = fmul fast float %7795, %7778
  %7797 = fsub fast float 3.000000e+00, %7778
  %7798 = fmul fast float %7795, %7797
  %7799 = fmul fast float %7778, 3.000000e+00
  %7800 = fmul fast float %7796, 3.000000e+00
  %7801 = fmul fast float %7795, 6.000000e+00
  %7802 = fsub fast float %7800, %7801
  %7803 = fadd fast float %7802, 4.000000e+00
  %7804 = fmul fast float %7803, 0x3FC5555560000000
  %7805 = fmul fast float %7796, -3.000000e+00
  %7806 = fadd fast float %7795, %7778
  %7807 = fmul fast float %7806, 3.000000e+00
  %7808 = fadd fast float %7805, 1.000000e+00
  %7809 = fadd fast float %7808, %7807
  %7810 = fmul fast float %7796, 0x3FC5555560000000
  %7811 = fadd fast float %7777, 1.000000e+00
  %7812 = fsub fast float 1.000000e+00, %7783
  %7813 = fadd fast float %7812, %7782
  %7814 = fadd fast float %7813, %7787
  %7815 = fmul fast float %7814, 0x3FC5555560000000
  %7816 = fdiv fast float %7788, %7815
  %7817 = fsub fast float %7811, %7816
  %7818 = fsub fast float 1.000000e+00, %7777
  %7819 = fadd fast float %7793, %7780
  %7820 = fmul fast float %7819, 0x3FC5555560000000
  %7821 = fdiv fast float %7794, %7820
  %7822 = fadd fast float %7818, %7821
  %7823 = fadd fast float %7778, 1.000000e+00
  %7824 = fsub fast float 1.000000e+00, %7799
  %7825 = fadd fast float %7824, %7798
  %7826 = fadd fast float %7825, %7803
  %7827 = fmul fast float %7826, 0x3FC5555560000000
  %7828 = fdiv fast float %7804, %7827
  %7829 = fsub fast float %7823, %7828
  %7830 = fsub fast float 1.000000e+00, %7778
  %7831 = fadd fast float %7809, %7796
  %7832 = fmul fast float %7831, 0x3FC5555560000000
  %7833 = fdiv fast float %7810, %7832
  %7834 = fadd fast float %7833, %7830
  %7835 = fmul fast float %7817, %7771
  %7836 = fsub fast float %7692, %7835
  %7837 = fmul fast float %7822, %7771
  %7838 = fadd fast float %7837, %7692
  %7839 = fmul fast float %7834, %7772
  %7840 = fadd fast float %7839, %7693
  %7841 = fmul fast float %7829, %7772
  %7842 = fsub fast float %7693, %7841
  %7843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7836, float %7842, float %7760, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7844 = extractvalue %dx.types.ResRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.ResRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.ResRet.f32 %7843, 2
  %7847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7838, float %7842, float %7760, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7848 = extractvalue %dx.types.ResRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.ResRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.ResRet.f32 %7847, 2
  %7851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7836, float %7840, float %7760, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7852 = extractvalue %dx.types.ResRet.f32 %7851, 0
  %7853 = extractvalue %dx.types.ResRet.f32 %7851, 1
  %7854 = extractvalue %dx.types.ResRet.f32 %7851, 2
  %7855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7838, float %7840, float %7760, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7856 = extractvalue %dx.types.ResRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.ResRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.ResRet.f32 %7855, 2
  %7859 = fsub fast float %7852, %7844
  %7860 = fsub fast float %7853, %7845
  %7861 = fsub fast float %7854, %7846
  %7862 = fmul fast float %7859, %7832
  %7863 = fmul fast float %7860, %7832
  %7864 = fmul fast float %7861, %7832
  %7865 = fadd fast float %7862, %7844
  %7866 = fadd fast float %7863, %7845
  %7867 = fadd fast float %7864, %7846
  %7868 = fsub fast float %7856, %7848
  %7869 = fsub fast float %7857, %7849
  %7870 = fsub fast float %7858, %7850
  %7871 = fmul fast float %7868, %7832
  %7872 = fmul fast float %7869, %7832
  %7873 = fmul fast float %7870, %7832
  %7874 = fsub fast float %7848, %7865
  %7875 = fadd fast float %7874, %7871
  %7876 = fsub fast float %7849, %7866
  %7877 = fadd fast float %7876, %7872
  %7878 = fsub fast float %7850, %7867
  %7879 = fadd fast float %7878, %7873
  %7880 = fmul fast float %7875, %7820
  %7881 = fmul fast float %7877, %7820
  %7882 = fmul fast float %7879, %7820
  %7883 = fadd fast float %7880, %7865
  %7884 = fadd fast float %7881, %7866
  %7885 = fadd fast float %7882, %7867
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 1
  %7888 = fmul fast float %7883, %7887
  %7889 = fmul fast float %7884, %7887
  %7890 = fmul fast float %7885, %7887
  br label %7891

; <label>:7891                                    ; preds = %7722, %7679
  %7892 = phi float [ %7762, %7722 ], [ 1.000000e+00, %7679 ]
  %7893 = phi float [ %7763, %7722 ], [ 1.000000e+00, %7679 ]
  %7894 = phi float [ %7764, %7722 ], [ 1.000000e+00, %7679 ]
  %7895 = phi float [ %7888, %7722 ], [ 0.000000e+00, %7679 ]
  %7896 = phi float [ %7889, %7722 ], [ 0.000000e+00, %7679 ]
  %7897 = phi float [ %7890, %7722 ], [ 0.000000e+00, %7679 ]
  %7898 = fmul fast float %7895, %6231
  %7899 = fmul fast float %7896, %6231
  %7900 = fmul fast float %7897, %6231
  %7901 = fmul fast float %7892, %7686
  %7902 = call float @dx.op.dot3.f32(i32 55, float %7892, float %7893, float %7894, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7903 = call float @dx.op.dot3.f32(i32 55, float %7898, float %7899, float %7900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7904 = select i1 %247, float %7902, float %7892
  %7905 = select i1 %247, float %7902, float %7893
  %7906 = select i1 %247, float 1.000000e+00, float %7894
  %7907 = select i1 %247, float %7903, float %7898
  %7908 = select i1 %247, float 0.000000e+00, float %7899
  %7909 = select i1 %247, float 0.000000e+00, float %7900
  %7910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7911 = extractvalue %dx.types.CBufRet.i32 %7910, 3
  %7912 = and i32 %7911, 3
  %7913 = icmp ne i32 %7912, 0
  %7914 = and i32 %7911, 4
  %7915 = icmp ne i32 %7914, 0
  %7916 = and i1 %7913, %7915
  %7917 = and i1 %247, %7916
  br i1 %7917, label %7918, label %7924

; <label>:7918                                    ; preds = %7891
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 1
  %7921 = fadd fast float %7901, -1.000000e+00
  %7922 = fmul fast float %7920, %7921
  %7923 = fadd fast float %7922, 1.000000e+00
  br label %7924

; <label>:7924                                    ; preds = %7918, %7891
  %7925 = phi float [ %7923, %7918 ], [ %7901, %7891 ]
  %7926 = fadd fast float %7683, %7680
  %7927 = fmul fast float %7904, %7926
  %7928 = fadd fast float %7927, %7907
  %7929 = fadd fast float %7684, %7681
  %7930 = fmul fast float %7905, %7929
  %7931 = fadd fast float %7930, %7908
  %7932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7932, 0
  br i1 %247, label %7934, label %7958

; <label>:7934                                    ; preds = %7924
  %7935 = fadd fast float %7928, %7931
  %7936 = fmul fast float %7933, %7935
  %7937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7938 = extractvalue %dx.types.CBufRet.f32 %7937, 3
  %7939 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %7940 = fsub fast float %6240, %6234
  %7941 = fadd fast float %7940, %6241
  %7942 = fsub fast float %7941, %7939
  %7943 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %7944 = fmul fast float %7942, %7943
  %7945 = call float @dx.op.unary.f32(i32 7, float %7944)  ; Saturate(value)
  %7946 = fsub fast float %7945, %7938
  %7947 = fmul fast float %7946, %7925
  %7948 = fadd fast float %7947, %7938
  %7949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7950 = extractvalue %dx.types.CBufRet.f32 %7949, 0
  %7951 = fsub fast float %7948, %7950
  %7952 = fmul fast float %7951, 1.000000e+01
  %7953 = call float @dx.op.unary.f32(i32 7, float %7952)  ; Saturate(value)
  %7954 = fsub fast float %1490, %6231
  %7955 = fmul fast float %7953, %7954
  %7956 = fadd fast float %7955, %6231
  %7957 = fmul fast float %7956, %7948
  br label %7982

; <label>:7958                                    ; preds = %7924
  %7959 = fadd fast float %7685, %7682
  %7960 = fmul fast float %7906, %7959
  %7961 = fadd fast float %7960, %7909
  %7962 = fmul fast float %7933, %7928
  %7963 = fmul fast float %7933, %7931
  %7964 = fmul fast float %7933, %7961
  %7965 = call float @dx.op.binary.f32(i32 35, float %7963, float %7964)  ; FMax(a,b)
  %7966 = call float @dx.op.binary.f32(i32 35, float %7962, float %7965)  ; FMax(a,b)
  %7967 = call float @dx.op.binary.f32(i32 35, float %7966, float %6231)  ; FMax(a,b)
  %7968 = fcmp fast ugt float %7967, 0x3F10000000000000
  br i1 %7968, label %7970, label %7969

; <label>:7969                                    ; preds = %7958
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7970

; <label>:7970                                    ; preds = %7969, %7958
  %7971 = add i32 %73, 116
  %7972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %7971, i32 undef)  ; BufferLoad(srv,index,wot)
  %7973 = extractvalue %dx.types.ResRet.i32 %7972, 0
  %7974 = and i32 %7973, 32
  %7975 = icmp eq i32 %7974, 0
  br i1 %7975, label %7982, label %7976

; <label>:7976                                    ; preds = %7970
  %7977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7978 = extractvalue %dx.types.CBufRet.f32 %7977, 0
  %7979 = fmul fast float %7978, 0x3FE99999A0000000
  %7980 = fadd fast float %7978, %7962
  %7981 = fadd fast float %7979, %7964
  br label %7982

; <label>:7982                                    ; preds = %7976, %7970, %7934
  %7983 = phi float [ %7936, %7934 ], [ %7980, %7976 ], [ %7962, %7970 ]
  %7984 = phi float [ %7957, %7934 ], [ %7963, %7976 ], [ %7963, %7970 ]
  %7985 = phi float [ %7956, %7934 ], [ %7981, %7976 ], [ %7964, %7970 ]
  %7986 = phi float [ %7956, %7934 ], [ %6231, %7976 ], [ %6231, %7970 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7987 = call float @dx.op.binary.f32(i32 36, float %7983, float 3.225500e+04)  ; FMin(a,b)
  %7988 = call float @dx.op.binary.f32(i32 36, float %7984, float 3.225500e+04)  ; FMin(a,b)
  %7989 = call float @dx.op.binary.f32(i32 36, float %7985, float 3.225500e+04)  ; FMin(a,b)
  %7990 = call float @dx.op.binary.f32(i32 36, float %7986, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7987)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7988)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7989)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7990)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!84 = !{[25 x i32] [i32 23, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!85 = !{void ()* @ps_main, !"ps_main", !86, !4, !104}
!86 = !{!87, !102, null}
!87 = !{!88, !91, !93, !95, !96, !97, !99, !100, !101}
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
!100 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !89, i8 1, i32 1, i8 1, i32 5, i8 2, !98}
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

