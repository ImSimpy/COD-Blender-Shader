;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   x   
; TEXCOORDS                0   xy          2     NONE   float   xy  
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
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
; shader hash: 5a265f01cbb745c95a8a97e7d41f4653
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
; COLOR                    0                 linear       
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
; Number of inputs: 26, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
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
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = alloca [12 x float], align 4
  %90 = alloca [12 x float], align 4
  %91 = alloca [4 x float], align 4
  %92 = alloca [4 x float], align 4
  %93 = alloca [4 x float], align 4
  %94 = alloca [3 x float], align 4
  %95 = alloca [3 x float], align 4
  %96 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %97 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fmul fast float %99, %85
  %101 = fmul fast float %99, %86
  %102 = fmul fast float %77, %74
  %103 = fmul fast float %78, %73
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %78, %72
  %106 = fmul fast float %76, %74
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %76, %73
  %109 = fmul fast float %77, %72
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %104, %75
  %112 = fmul fast float %107, %75
  %113 = fmul fast float %110, %75
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %117 = fmul fast float %115, 2.000000e+00
  %118 = fmul fast float %117, %100
  %119 = fmul fast float %116, 2.000000e+00
  %120 = fmul fast float %119, %101
  %121 = fsub fast float 1.000000e+00, %118
  %122 = fsub fast float 1.000000e+00, %120
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %121, %124
  %128 = fmul fast float %121, %125
  %129 = fmul fast float %121, %126
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %122, %131
  %135 = fmul fast float %122, %132
  %136 = fmul fast float %122, %133
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fadd fast float %134, %138
  %142 = fadd fast float %141, %127
  %143 = fadd fast float %135, %139
  %144 = fadd fast float %143, %128
  %145 = fadd fast float %136, %140
  %146 = fadd fast float %145, %129
  %147 = fmul fast float %142, %88
  %148 = fmul fast float %144, %88
  %149 = fmul fast float %146, %88
  %150 = fadd fast float %81, 5.000000e-01
  %151 = fptoui float %150 to i32
  %152 = shl i32 %151, 3
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = or i32 %152, 4
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  %158 = and i32 %154, 8191
  %159 = lshr i32 %154, 13
  %160 = and i32 %159, 8191
  %161 = lshr i32 %154, 26
  %162 = and i32 %157, 65535
  %163 = lshr i32 %157, 16
  %164 = uitofp i32 %162 to float
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %167 = uitofp i32 %163 to float
  %168 = uitofp i32 %158 to float
  %169 = fmul fast float %166, %168
  %170 = uitofp i32 %160 to float
  %171 = fmul fast float %166, %170
  %172 = fmul fast float %166, %79
  %173 = fmul fast float %172, %164
  %174 = fmul fast float %166, %80
  %175 = fmul fast float %174, %167
  %176 = fadd fast float %173, %169
  %177 = fadd fast float %171, %175
  %178 = uitofp i32 %161 to float
  %179 = fmul fast float %100, 5.000000e-01
  %180 = fmul fast float %101, 5.000000e-01
  %181 = fptosi float %179 to i32
  %182 = fptosi float %180 to i32
  %183 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %181, i32 %182, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = lshr i32 %184, 18
  %186 = uitofp i32 %185 to float
  %187 = fmul fast float %186, 0x3F4C00EBA0000000
  %188 = call float @dx.op.unary.f32(i32 21, float %187)  ; Exp(value)
  %189 = fadd fast float %188, -1.000000e+00
  %190 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %191 = extractvalue %dx.types.Dimensions %190, 0
  %192 = sitofp i32 %191 to float
  %193 = extractvalue %dx.types.Dimensions %190, 1
  %194 = sitofp i32 %193 to float
  %195 = fcmp fast oge float %179, %192
  %196 = fcmp fast oge float %180, %194
  %197 = or i1 %195, %196
  %198 = select i1 %197, float 0x4197782600000000, float %189
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %201 = extractvalue %dx.types.CBufRet.f32 %199, 3
  %202 = fmul fast float %200, %100
  %203 = fmul fast float %201, %101
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = and i32 %205, 114688
  %207 = icmp ne i32 %206, 0
  %208 = select i1 %207, float %202, float 0.000000e+00
  %209 = select i1 %207, float %203, float 0.000000e+00
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %65, float %208, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fmul fast float %211, 2.550000e+02
  %213 = fptoui float %212 to i32
  %214 = select i1 %207, i32 %213, i32 0
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.i32 %216, 3
  %218 = and i32 %217, 3
  %219 = icmp ne i32 %218, 0
  %220 = and i32 %217, 4
  %221 = icmp ne i32 %220, 0
  %222 = and i1 %219, %221
  br i1 %222, label %223, label %234

; <label>:223                                     ; preds = %0
  %224 = extractvalue %dx.types.CBufRet.f32 %215, 3
  %225 = fmul fast float %224, %101
  %226 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %227 = fmul fast float %226, %100
  %228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %64, float %227, float %225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fsub fast float 1.000000e+00, %229
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = fcmp fast olt float %230, %232
  br label %237

; <label>:234                                     ; preds = %0
  %235 = icmp eq i32 %220, 0
  %236 = and i1 %219, %235
  br label %237

; <label>:237                                     ; preds = %234, %223
  %238 = phi i1 [ %233, %223 ], [ %236, %234 ]
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = fmul fast float %240, 0x3FE3C6EF40000000
  %242 = frem fast float %100, 2.560000e+02
  %243 = frem fast float %101, 2.560000e+02
  %244 = fptoui float %242 to i32
  %245 = fptoui float %243 to i32
  %246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %244, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = fadd fast float %247, %241
  %249 = call float @dx.op.unary.f32(i32 22, float %248)  ; Frc(value)
  %250 = add i32 %71, 60
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = shl i32 %252, 4
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %252, 7
  %257 = and i32 %256, 32752
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %252, 22
  %260 = shl nuw nsw i32 %259, 5
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %71, 72
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = lshr i32 %264, 8
  %269 = and i32 %268, 255
  %270 = uitofp i32 %269 to float
  %271 = fmul fast float %270, 0x3F70101020000000
  %272 = lshr i32 %264, 16
  %273 = and i32 %272, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F70101020000000
  %276 = add i32 %71, 36
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %71, 96
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %285, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = fmul fast float %287, 0x3F50624DE0000000
  %291 = fmul fast float %289, 0x3F50624DE0000000
  %292 = add i32 %71, 124
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 2
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %306, label %297

; <label>:297                                     ; preds = %237
  %298 = add i32 %71, 196
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = add i32 %300, 0
  %302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %301, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %302, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 3
  %305 = fmul fast float %304, %84
  br label %306

; <label>:306                                     ; preds = %297, %237
  %307 = phi float [ %84, %237 ], [ %305, %297 ]
  %308 = add i32 %71, 24
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = add i32 %71, 28
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = or i32 %313, %310
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %1025, label %316

; <label>:316                                     ; preds = %306
  %317 = add i32 %71, 92
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = lshr i32 %319, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fmul fast float %321, 0x3F50624DE0000000
  %323 = add i32 %71, 40
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = lshr i32 %325, 16
  %327 = and i32 %326, 255
  %328 = lshr i32 %325, 24
  %329 = add i32 %71, 100
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 65535
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %331, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %71, 32
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = lshr i32 %338, 22
  %340 = shl nuw nsw i32 %339, 5
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = shl i32 %338, 4
  %343 = and i32 %342, 32752
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %338, 7
  %346 = and i32 %345, 32752
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 3
  %350 = fmul fast float %349, 1.000000e+03
  %351 = fmul fast float %290, %350
  %352 = call float @dx.op.unary.f32(i32 22, float %351)  ; Frc(value)
  %353 = fadd fast float %352, %280
  %354 = fmul fast float %291, %350
  %355 = call float @dx.op.unary.f32(i32 22, float %354)  ; Frc(value)
  %356 = fadd fast float %355, %282
  %357 = fmul fast float %322, %350
  %358 = call float @dx.op.unary.f32(i32 22, float %357)  ; Frc(value)
  %359 = fmul fast float %358, 0x401921FB60000000
  %360 = fadd fast float %359, %341
  %361 = call float @dx.op.unary.f32(i32 13, float %360)  ; Sin(value)
  %362 = call float @dx.op.unary.f32(i32 12, float %360)  ; Cos(value)
  %363 = fsub fast float -0.000000e+00, %361
  %364 = fadd fast float %82, -5.000000e-01
  %365 = fadd fast float %83, -5.000000e-01
  %366 = fmul fast float %333, %364
  %367 = fmul fast float %335, %365
  %368 = fadd fast float %366, 5.000000e-01
  %369 = fadd fast float %367, 5.000000e-01
  %370 = fmul fast float %344, %368
  %371 = fmul fast float %347, %369
  %372 = fmul fast float %362, %370
  %373 = call float @dx.op.tertiary.f32(i32 46, float %363, float %371, float %372)  ; FMad(a,b,c)
  %374 = fmul fast float %361, %370
  %375 = call float @dx.op.tertiary.f32(i32 46, float %362, float %371, float %374)  ; FMad(a,b,c)
  %376 = fadd fast float %353, %373
  %377 = fadd fast float %356, %375
  %378 = icmp ugt i32 %327, 1
  %379 = icmp ugt i32 %325, 33554431
  %380 = or i1 %379, %378
  br i1 %380, label %381, label %406

; <label>:381                                     ; preds = %316
  %382 = add i32 %71, 84
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = lshr i32 %384, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = fmul fast float %349, %386
  %388 = call float @dx.op.unary.f32(i32 22, float %387)  ; Frc(value)
  %389 = mul nuw nsw i32 %327, %328
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %388, %390
  %392 = call float @dx.op.unary.f32(i32 27, float %391)  ; Round_ni(value)
  %393 = fptoui float %392 to i32
  %394 = urem i32 %393, %327
  %395 = udiv i32 %393, %328
  %396 = call float @dx.op.unary.f32(i32 22, float %376)  ; Frc(value)
  %397 = call float @dx.op.unary.f32(i32 22, float %377)  ; Frc(value)
  %398 = uitofp i32 %394 to float
  %399 = uitofp i32 %395 to float
  %400 = fadd fast float %396, %398
  %401 = fadd fast float %397, %399
  %402 = uitofp i32 %327 to float
  %403 = uitofp i32 %328 to float
  %404 = fdiv fast float %400, %402
  %405 = fdiv fast float %401, %403
  br label %406

; <label>:406                                     ; preds = %381, %316
  %407 = phi float [ %404, %381 ], [ %376, %316 ]
  %408 = phi float [ %405, %381 ], [ %377, %316 ]
  %409 = and i32 %310, 16777216
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %520, label %411

; <label>:411                                     ; preds = %406
  %412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %413 = extractvalue %dx.types.CBufRet.f32 %412, 0
  %414 = extractvalue %dx.types.CBufRet.f32 %412, 1
  %415 = extractvalue %dx.types.CBufRet.f32 %412, 2
  %416 = fadd fast float %413, %147
  %417 = fadd fast float %414, %148
  %418 = fadd fast float %415, %149
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = icmp eq i32 %70, 65535
  br i1 %422, label %517, label %423

; <label>:423                                     ; preds = %411
  %424 = lshr i32 %70, 1
  %425 = shl i32 %424, 2
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %70, 1
  %429 = icmp ne i32 %428, 0
  %430 = lshr i32 %427, 16
  %431 = and i32 %427, 65535
  %432 = select i1 %429, i32 %430, i32 %431
  %433 = icmp eq i32 %432, 65535
  br i1 %433, label %513, label %434

; <label>:434                                     ; preds = %423
  %435 = mul nuw nsw i32 %432, 40
  %436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = extractvalue %dx.types.ResRet.f32 %436, 1
  %439 = extractvalue %dx.types.ResRet.f32 %436, 2
  %440 = add nuw nsw i32 %435, 12
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = add nuw nsw i32 %435, 24
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = add nuw nsw i32 %435, 36
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = fsub fast float %416, %437
  %454 = fsub fast float %417, %438
  %455 = fsub fast float %418, %439
  %456 = fmul fast float %452, %453
  %457 = fmul fast float %452, %454
  %458 = fmul fast float %452, %455
  %459 = call float @dx.op.unary.f32(i32 27, float %456)  ; Round_ni(value)
  %460 = call float @dx.op.unary.f32(i32 27, float %457)  ; Round_ni(value)
  %461 = call float @dx.op.unary.f32(i32 27, float %458)  ; Round_ni(value)
  %462 = fadd fast float %459, 5.000000e-01
  %463 = fadd fast float %460, 5.000000e-01
  %464 = fadd fast float %461, 5.000000e-01
  %465 = fmul fast float %462, %442
  %466 = fmul fast float %463, %443
  %467 = fmul fast float %464, %444
  %468 = shl i32 %70, 2
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = add i32 %470, 0
  %472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %473 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %474 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %475 = call float @dx.op.unary.f32(i32 22, float %467)  ; Frc(value)
  %476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %472, %dx.types.Handle %65, float %473, float %474, float %475, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 0
  %478 = extractvalue %dx.types.ResRet.f32 %476, 1
  %479 = extractvalue %dx.types.ResRet.f32 %476, 2
  %480 = fmul fast float %477, 1.023000e+03
  %481 = fmul fast float %478, 1.023000e+03
  %482 = fmul fast float %479, 1.023000e+03
  %483 = fadd fast float %480, 5.000000e-01
  %484 = fadd fast float %481, 5.000000e-01
  %485 = fadd fast float %482, 5.000000e-01
  %486 = call float @dx.op.unary.f32(i32 27, float %483)  ; Round_ni(value)
  %487 = call float @dx.op.unary.f32(i32 27, float %484)  ; Round_ni(value)
  %488 = call float @dx.op.unary.f32(i32 27, float %485)  ; Round_ni(value)
  %489 = fsub fast float %456, %459
  %490 = fsub fast float %457, %460
  %491 = fsub fast float %458, %461
  %492 = fmul fast float %489, 7.500000e-01
  %493 = fmul fast float %490, 7.500000e-01
  %494 = fmul fast float %491, 7.500000e-01
  %495 = fadd fast float %459, 1.250000e-01
  %496 = fadd fast float %495, %492
  %497 = fadd fast float %496, %486
  %498 = fadd fast float %460, 1.250000e-01
  %499 = fadd fast float %498, %493
  %500 = fadd fast float %499, %487
  %501 = fadd fast float %461, 1.250000e-01
  %502 = fadd fast float %501, %494
  %503 = fadd fast float %502, %488
  %504 = fmul fast float %497, %447
  %505 = fmul fast float %500, %448
  %506 = fmul fast float %503, %449
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = add i32 %508, 0
  %510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %510, %dx.types.Handle %63, float %504, float %505, float %506, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  br label %513

; <label>:513                                     ; preds = %434, %423
  %514 = phi float [ %512, %434 ], [ -1.000000e+00, %423 ]
  %515 = fadd fast float %514, %421
  %516 = call float @dx.op.unary.f32(i32 7, float %515)  ; Saturate(value)
  br label %517

; <label>:517                                     ; preds = %513, %411
  %518 = phi float [ %516, %513 ], [ %421, %411 ]
  %519 = fmul fast float %518, %307
  br label %520

; <label>:520                                     ; preds = %517, %406
  %521 = phi float [ %519, %517 ], [ %307, %406 ]
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = and i32 %523, 256
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %572, label %526

; <label>:526                                     ; preds = %520
  %527 = add i32 %71, 184
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = add i32 %529, 0
  %531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %97, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = add i32 %71, 52
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = shl i32 %536, 4
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %536, 7
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = fsub fast float 1.000000e+00, %521
  %544 = call float @dx.op.binary.f32(i32 35, float %543, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %545 = bitcast float %521 to i32
  %546 = sitofp i32 %545 to float
  %547 = fadd fast float %546, 0xC1CFBF8940000000
  %548 = fmul fast float %542, %547
  %549 = fadd fast float %548, 0x41CFBF8940000000
  %550 = fptosi float %549 to i32
  %551 = bitcast i32 %550 to float
  %552 = bitcast float %544 to i32
  %553 = sitofp i32 %552 to float
  %554 = fadd fast float %553, 0xC1CFBF8940000000
  %555 = fmul fast float %554, %542
  %556 = fadd fast float %555, 0x41CFBF8940000000
  %557 = fptosi float %556 to i32
  %558 = bitcast i32 %557 to float
  %559 = fmul fast float %551, %539
  %560 = fmul fast float %558, %539
  %561 = fsub fast float %544, %559
  %562 = fadd fast float %560, %544
  %563 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %564 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %565 = fsub fast float %533, %563
  %566 = fsub fast float %564, %563
  %567 = bitcast float %566 to i32
  %568 = sub nsw i32 2129859010, %567
  %569 = bitcast i32 %568 to float
  %570 = fmul fast float %569, %565
  %571 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  br label %572

; <label>:572                                     ; preds = %526, %520
  %573 = phi float [ %571, %526 ], [ %521, %520 ]
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 128
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %594, label %578

; <label>:578                                     ; preds = %572
  %579 = add i32 %71, 180
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = add i32 %581, 0
  %583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %583, %dx.types.Handle %97, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 524288
  %589 = icmp ne i32 %588, 0
  %590 = fcmp fast ogt float %585, 0x3FE0101020000000
  %591 = select i1 %590, float 1.000000e+00, float 0.000000e+00
  %592 = select i1 %589, float %591, float %585
  %593 = fmul fast float %592, %573
  br label %594

; <label>:594                                     ; preds = %578, %572
  %595 = phi float [ %593, %578 ], [ %573, %572 ]
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %597, 16
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %798, label %600

; <label>:600                                     ; preds = %594
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = add i32 %71, 168
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = add i32 %605, 0
  %607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %608 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %607, %dx.types.Handle %96, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = extractvalue %dx.types.ResRet.f32 %608, 2
  %612 = extractvalue %dx.types.ResRet.f32 %608, 3
  %613 = and i32 %602, 255
  %614 = uitofp i32 %613 to float
  %615 = lshr i32 %602, 8
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %612, %614
  %619 = fadd fast float %618, %617
  %620 = fmul fast float %619, 0x3F70101000000000
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = and i32 %622, 512
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %633, label %625

; <label>:625                                     ; preds = %600
  %626 = add i32 %71, 188
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = add i32 %628, 0
  %630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %629, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %631 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %630, %dx.types.Handle %97, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  br label %633

; <label>:633                                     ; preds = %625, %600
  %634 = phi float [ %632, %625 ], [ 1.000000e+00, %600 ]
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 33554432
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %745, label %639

; <label>:639                                     ; preds = %633
  %640 = add i32 %71, 80
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = and i32 %642, 65535
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = lshr i32 %642, 16
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = add i32 %71, 84
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 65535
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = lshr i32 %653, 24
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, 0x3F70101020000000
  %657 = and i32 %653, 255
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %658, 0x3F70101020000000
  %660 = lshr i32 %653, 8
  %661 = and i32 %660, 255
  %662 = uitofp i32 %661 to float
  %663 = fmul fast float %662, 0x3F70101020000000
  %664 = lshr i32 %653, 16
  %665 = and i32 %664, 255
  %666 = uitofp i32 %665 to float
  %667 = fmul fast float %666, 0x3F70101020000000
  %668 = add i32 %71, 76
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %685 = bitcast float %609 to i32
  %686 = ashr i32 %685, 1
  %687 = sub nsw i32 1597463174, %686
  %688 = bitcast i32 %687 to float
  %689 = fmul fast float %609, 5.000000e-01
  %690 = fmul fast float %688, %688
  %691 = fmul fast float %690, %689
  %692 = fsub fast float 1.500000e+00, %691
  %693 = fmul fast float %688, %609
  %694 = fmul fast float %693, %692
  %695 = bitcast float %610 to i32
  %696 = ashr i32 %695, 1
  %697 = sub nsw i32 1597463174, %696
  %698 = bitcast i32 %697 to float
  %699 = fmul fast float %610, 5.000000e-01
  %700 = fmul fast float %698, %698
  %701 = fmul fast float %700, %699
  %702 = fsub fast float 1.500000e+00, %701
  %703 = fmul fast float %698, %610
  %704 = fmul fast float %703, %702
  %705 = bitcast float %611 to i32
  %706 = ashr i32 %705, 1
  %707 = sub nsw i32 1597463174, %706
  %708 = bitcast i32 %707 to float
  %709 = fmul fast float %611, 5.000000e-01
  %710 = fmul fast float %708, %708
  %711 = fmul fast float %710, %709
  %712 = fsub fast float 1.500000e+00, %711
  %713 = fmul fast float %708, %611
  %714 = fmul fast float %713, %712
  %715 = fsub fast float %694, %676
  %716 = fsub fast float %704, %680
  %717 = fsub fast float %714, %684
  %718 = fmul fast float %715, %644
  %719 = fmul fast float %716, %646
  %720 = fmul fast float %717, %651
  %721 = fadd fast float %718, %659
  %722 = fadd fast float %719, %663
  %723 = fadd fast float %720, %667
  %724 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %725 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %726 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %727 = fmul fast float %724, %724
  %728 = fmul fast float %725, %725
  %729 = fmul fast float %726, %726
  %730 = fsub fast float %727, %609
  %731 = fsub fast float %728, %610
  %732 = fsub fast float %729, %611
  %733 = fmul fast float %730, %634
  %734 = fmul fast float %731, %634
  %735 = fmul fast float %732, %634
  %736 = fadd fast float %733, %609
  %737 = fadd fast float %734, %610
  %738 = fadd fast float %735, %611
  %739 = fadd fast float %656, %620
  %740 = fsub fast float %739, %673
  %741 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  %742 = fsub fast float %741, %620
  %743 = fmul fast float %742, %634
  %744 = fadd fast float %743, %620
  br label %798

; <label>:745                                     ; preds = %633
  %746 = and i32 %636, 134217728
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %782, label %748

; <label>:748                                     ; preds = %745
  %749 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %750 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %751 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %752 = fadd fast float %749, -5.000000e-01
  %753 = fadd fast float %750, -5.000000e-01
  %754 = fadd fast float %751, -5.000000e-01
  %755 = fmul fast float %752, %634
  %756 = fmul fast float %753, %634
  %757 = fmul fast float %754, %634
  %758 = fadd fast float %755, 5.000000e-01
  %759 = fadd fast float %756, 5.000000e-01
  %760 = fadd fast float %757, 5.000000e-01
  %761 = call float @dx.op.unary.f32(i32 24, float %609)  ; Sqrt(value)
  %762 = call float @dx.op.unary.f32(i32 24, float %610)  ; Sqrt(value)
  %763 = call float @dx.op.unary.f32(i32 24, float %611)  ; Sqrt(value)
  %764 = fmul fast float %758, 2.000000e+00
  %765 = fsub fast float 1.000000e+00, %764
  %766 = fmul fast float %765, %761
  %767 = fadd fast float %766, %764
  %768 = fmul fast float %767, %761
  %769 = fmul fast float %759, 2.000000e+00
  %770 = fsub fast float 1.000000e+00, %769
  %771 = fmul fast float %770, %762
  %772 = fadd fast float %771, %769
  %773 = fmul fast float %772, %762
  %774 = fmul fast float %760, 2.000000e+00
  %775 = fsub fast float 1.000000e+00, %774
  %776 = fmul fast float %775, %763
  %777 = fadd fast float %776, %774
  %778 = fmul fast float %777, %763
  %779 = fmul fast float %768, %768
  %780 = fmul fast float %773, %773
  %781 = fmul fast float %778, %778
  br label %798

; <label>:782                                     ; preds = %745
  %783 = fmul fast float %267, %267
  %784 = fmul fast float %271, %271
  %785 = fmul fast float %275, %275
  %786 = fadd fast float %783, -1.000000e+00
  %787 = fadd fast float %784, -1.000000e+00
  %788 = fadd fast float %785, -1.000000e+00
  %789 = fmul fast float %634, %786
  %790 = fmul fast float %634, %787
  %791 = fmul fast float %634, %788
  %792 = fadd fast float %789, 1.000000e+00
  %793 = fadd fast float %790, 1.000000e+00
  %794 = fadd fast float %791, 1.000000e+00
  %795 = fmul fast float %792, %609
  %796 = fmul fast float %793, %610
  %797 = fmul fast float %794, %611
  br label %798

; <label>:798                                     ; preds = %782, %748, %639, %594
  %799 = phi float [ %744, %639 ], [ %620, %748 ], [ %620, %782 ], [ 0x3FA23C0BE0000000, %594 ]
  %800 = phi float [ %736, %639 ], [ %779, %748 ], [ %795, %782 ], [ 1.000000e+00, %594 ]
  %801 = phi float [ %737, %639 ], [ %780, %748 ], [ %796, %782 ], [ 1.000000e+00, %594 ]
  %802 = phi float [ %738, %639 ], [ %781, %748 ], [ %797, %782 ], [ 1.000000e+00, %594 ]
  %803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.i32 %803, 1
  %805 = and i32 %804, 1
  %806 = icmp ne i32 %805, 0
  %807 = add i32 %71, 132
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 32
  %811 = icmp ne i32 %810, 0
  %812 = and i1 %806, %811
  %813 = select i1 %812, float 1.000000e+00, float %800
  %814 = select i1 %812, float 0x3FD3333340000000, float %801
  %815 = select i1 %812, float 0x3FD3333340000000, float %802
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 32
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %960, label %820

; <label>:820                                     ; preds = %798
  %821 = add i32 %71, 44
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = add i32 %71, 172
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = add i32 %826, 0
  %828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %827, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %829 = add i32 %71, 136
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = extractvalue %dx.types.ResRet.i32 %830, 1
  %833 = extractvalue %dx.types.ResRet.i32 %830, 2
  %834 = extractvalue %dx.types.ResRet.i32 %830, 3
  %835 = bitcast i32 %832 to float
  %836 = bitcast i32 %833 to float
  %837 = bitcast i32 %834 to float
  %838 = add i32 %71, 152
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = extractvalue %dx.types.ResRet.i32 %839, 1
  %842 = extractvalue %dx.types.ResRet.i32 %839, 2
  %843 = extractvalue %dx.types.ResRet.i32 %839, 3
  %844 = bitcast i32 %841 to float
  %845 = bitcast i32 %842 to float
  %846 = bitcast i32 %843 to float
  %847 = fmul fast float %835, %407
  %848 = fmul fast float %835, %408
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 3
  %851 = fmul fast float %850, %836
  %852 = fmul fast float %850, %837
  %853 = fadd fast float %851, %847
  %854 = fadd fast float %852, %848
  %855 = fmul fast float %844, %407
  %856 = fmul fast float %844, %408
  %857 = fmul fast float %850, %845
  %858 = fmul fast float %850, %846
  %859 = fadd fast float %857, %855
  %860 = fadd fast float %858, %856
  %861 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %828, i32 0)  ; GetDimensions(handle,mipLevel)
  %862 = extractvalue %dx.types.Dimensions %861, 3
  %863 = sitofp i32 %862 to float
  %864 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %828, %dx.types.Handle %96, float %853, float %854, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %865 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %828, %dx.types.Handle %96, float %859, float %860, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %866 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %828, %dx.types.Handle %96, float %853, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = extractvalue %dx.types.ResRet.f32 %866, 2
  %870 = extractvalue %dx.types.ResRet.f32 %866, 3
  %871 = and i32 %823, 255
  %872 = uitofp i32 %871 to float
  %873 = lshr i32 %823, 8
  %874 = and i32 %873, 255
  %875 = uitofp i32 %874 to float
  %876 = lshr i32 %823, 16
  %877 = and i32 %876, 255
  %878 = uitofp i32 %877 to float
  %879 = fmul fast float %878, 0x3F70101000000000
  %880 = fmul fast float %867, %872
  %881 = fadd fast float %880, %875
  %882 = fadd fast float %868, -5.000000e-01
  %883 = fadd fast float %870, -5.000000e-01
  %884 = fmul fast float %882, %879
  %885 = fmul fast float %883, %879
  %886 = fadd fast float %884, 5.000000e-01
  %887 = fadd fast float %885, 5.000000e-01
  %888 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %828, %dx.types.Handle %96, float %859, float %860, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = extractvalue %dx.types.ResRet.f32 %888, 1
  %891 = extractvalue %dx.types.ResRet.f32 %888, 2
  %892 = extractvalue %dx.types.ResRet.f32 %888, 3
  %893 = fmul fast float %889, %872
  %894 = fadd fast float %893, %875
  %895 = fadd fast float %890, -5.000000e-01
  %896 = fadd fast float %892, -5.000000e-01
  %897 = fmul fast float %895, %879
  %898 = fmul fast float %896, %879
  %899 = fadd fast float %897, 5.000000e-01
  %900 = fadd fast float %898, 5.000000e-01
  %901 = fmul fast float %886, 2.000000e+00
  %902 = fadd fast float %901, -1.000000e+00
  %903 = fmul fast float %887, 2.000000e+00
  %904 = fadd fast float %903, -1.000000e+00
  %905 = fadd fast float %902, %904
  %906 = fmul fast float %905, 5.000000e-01
  %907 = fsub fast float %902, %904
  %908 = fmul fast float %907, 5.000000e-01
  %909 = call float @dx.op.unary.f32(i32 6, float %906)  ; FAbs(value)
  %910 = fsub fast float 1.000000e+00, %909
  %911 = call float @dx.op.unary.f32(i32 6, float %908)  ; FAbs(value)
  %912 = fsub fast float %910, %911
  %913 = call float @dx.op.dot3.f32(i32 55, float %906, float %908, float %912, float %906, float %908, float %912)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = call float @dx.op.unary.f32(i32 25, float %913)  ; Rsqrt(value)
  %915 = fmul fast float %899, 2.000000e+00
  %916 = fadd fast float %915, -1.000000e+00
  %917 = fmul fast float %900, 2.000000e+00
  %918 = fadd fast float %917, -1.000000e+00
  %919 = fadd fast float %916, %918
  %920 = fmul fast float %919, 5.000000e-01
  %921 = fsub fast float %916, %918
  %922 = fmul fast float %921, 5.000000e-01
  %923 = call float @dx.op.unary.f32(i32 6, float %920)  ; FAbs(value)
  %924 = fsub fast float 1.000000e+00, %923
  %925 = call float @dx.op.unary.f32(i32 6, float %922)  ; FAbs(value)
  %926 = fsub fast float %924, %925
  %927 = call float @dx.op.dot3.f32(i32 55, float %920, float %922, float %926, float %920, float %922, float %926)  ; Dot3(ax,ay,az,bx,by,bz)
  %928 = call float @dx.op.unary.f32(i32 25, float %927)  ; Rsqrt(value)
  %929 = fadd fast float %863, -1.000000e+00
  %930 = fsub fast float %929, %864
  %931 = fmul fast float %930, 5.000000e-01
  %932 = call float @dx.op.unary.f32(i32 7, float %931)  ; Saturate(value)
  %933 = fsub fast float %929, %865
  %934 = fmul fast float %933, 5.000000e-01
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %936 = bitcast i32 %831 to float
  %937 = bitcast i32 %840 to float
  %938 = fmul fast float %906, %936
  %939 = fmul fast float %938, %914
  %940 = fmul fast float %939, %932
  %941 = fmul fast float %908, %936
  %942 = fmul fast float %941, %914
  %943 = fmul fast float %942, %932
  %944 = fmul fast float %928, %937
  %945 = fmul fast float %944, %920
  %946 = fmul fast float %945, %935
  %947 = fmul fast float %944, %922
  %948 = fmul fast float %947, %935
  %949 = fadd fast float %946, %940
  %950 = fadd fast float %948, %943
  %951 = fmul fast float %869, %936
  %952 = fmul fast float %891, %937
  %953 = fadd fast float %952, %951
  %954 = fmul fast float %881, %936
  %955 = fmul fast float %894, %937
  %956 = fadd fast float %955, %954
  %957 = fmul fast float %956, 0x3F70101000000000
  %958 = call float @dx.op.dot2.f32(i32 54, float %949, float %950, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %959 = call float @dx.op.dot2.f32(i32 54, float %949, float %950, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %960

; <label>:960                                     ; preds = %820, %798
  %961 = phi float [ %957, %820 ], [ 0x3FD6666660000000, %798 ]
  %962 = phi float [ %958, %820 ], [ 0.000000e+00, %798 ]
  %963 = phi float [ %959, %820 ], [ 0.000000e+00, %798 ]
  %964 = phi float [ %953, %820 ], [ 1.000000e+00, %798 ]
  %965 = add i32 %71, 64
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = lshr i32 %967, 22
  %969 = shl nuw nsw i32 %968, 5
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 64
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %1008, label %975

; <label>:975                                     ; preds = %960
  %976 = add i32 %71, 176
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = add i32 %978, 0
  %980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 131072
  %984 = icmp eq i32 %983, 0
  %985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %980, %dx.types.Handle %96, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = extractvalue %dx.types.ResRet.f32 %985, 2
  %989 = fmul fast float %986, %255
  %990 = fmul fast float %987, %258
  %991 = fmul fast float %988, %261
  br i1 %984, label %998, label %992

; <label>:992                                     ; preds = %975
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %995 = fmul fast float %994, %989
  %996 = fmul fast float %994, %990
  %997 = fmul fast float %994, %991
  br label %998

; <label>:998                                     ; preds = %992, %975
  %999 = phi float [ %995, %992 ], [ %989, %975 ]
  %1000 = phi float [ %996, %992 ], [ %990, %975 ]
  %1001 = phi float [ %997, %992 ], [ %991, %975 ]
  %1002 = fmul fast float %999, %970
  %1003 = select i1 %238, float %1002, float %999
  %1004 = call float @dx.op.dot3.f32(i32 55, float %1003, float %1000, float %1001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1005 = select i1 %238, float 0.000000e+00, float %999
  %1006 = select i1 %238, float %1004, float %1000
  %1007 = select i1 %238, float 0.000000e+00, float %1001
  br label %1008

; <label>:1008                                    ; preds = %998, %960
  %1009 = phi float [ %1005, %998 ], [ 0.000000e+00, %960 ]
  %1010 = phi float [ %1006, %998 ], [ 0.000000e+00, %960 ]
  %1011 = phi float [ %1007, %998 ], [ 0.000000e+00, %960 ]
  %1012 = add i32 %71, 48
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 255
  %1016 = uitofp i32 %1015 to float
  %1017 = lshr i32 %1014, 8
  %1018 = and i32 %1017, 255
  %1019 = uitofp i32 %1018 to float
  %1020 = call float @dx.op.dot3.f32(i32 55, float %813, float %814, float %815, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = fmul fast float %1019, %1020
  %1022 = fadd fast float %1021, %1016
  %1023 = fmul fast float %1022, 0x3F70101020000000
  %1024 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  br label %1025

; <label>:1025                                    ; preds = %1008, %306
  %1026 = phi float [ 0.000000e+00, %306 ], [ %962, %1008 ]
  %1027 = phi float [ 0.000000e+00, %306 ], [ %963, %1008 ]
  %1028 = phi float [ 0.000000e+00, %306 ], [ %813, %1008 ]
  %1029 = phi float [ 0.000000e+00, %306 ], [ %814, %1008 ]
  %1030 = phi float [ 0.000000e+00, %306 ], [ %815, %1008 ]
  %1031 = phi float [ 0.000000e+00, %306 ], [ %1009, %1008 ]
  %1032 = phi float [ 0.000000e+00, %306 ], [ %1010, %1008 ]
  %1033 = phi float [ 0.000000e+00, %306 ], [ %1011, %1008 ]
  %1034 = phi float [ 0.000000e+00, %306 ], [ %799, %1008 ]
  %1035 = phi float [ 0.000000e+00, %306 ], [ %595, %1008 ]
  %1036 = phi float [ 0.000000e+00, %306 ], [ %961, %1008 ]
  %1037 = phi float [ 0.000000e+00, %306 ], [ %964, %1008 ]
  %1038 = phi float [ 0.000000e+00, %306 ], [ %1024, %1008 ]
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = call float @dx.op.dot2.f32(i32 54, float %1026, float %1027, float %1026, float %1027)  ; Dot2(ax,ay,bx,by)
  %1042 = fmul fast float %1041, 0x3FE3333340000000
  %1043 = fsub fast float 1.000000e+00, %1042
  %1044 = call float @dx.op.dot3.f32(i32 55, float %1026, float %1027, float %1043, float %1026, float %1027, float %1043)  ; Dot3(ax,ay,az,bx,by,bz)
  %1045 = call float @dx.op.unary.f32(i32 25, float %1044)  ; Rsqrt(value)
  %1046 = fmul fast float %1045, %1026
  %1047 = fmul fast float %1045, %1027
  %1048 = fmul fast float %1043, %1045
  %1049 = fmul fast float %1048, %76
  %1050 = fmul fast float %1048, %77
  %1051 = fmul fast float %1048, %78
  %1052 = fmul fast float %1046, %72
  %1053 = fmul fast float %1046, %73
  %1054 = fmul fast float %1046, %74
  %1055 = fadd fast float %1049, %1052
  %1056 = fadd fast float %1050, %1053
  %1057 = fadd fast float %1051, %1054
  %1058 = fmul fast float %1047, %111
  %1059 = fmul fast float %1047, %112
  %1060 = fmul fast float %1047, %113
  %1061 = fadd fast float %1055, %1058
  %1062 = fadd fast float %1056, %1059
  %1063 = fadd fast float %1057, %1060
  %1064 = call float @dx.op.dot3.f32(i32 55, float %1061, float %1062, float %1063, float %1061, float %1062, float %1063)  ; Dot3(ax,ay,az,bx,by,bz)
  %1065 = call float @dx.op.unary.f32(i32 25, float %1064)  ; Rsqrt(value)
  %1066 = fmul fast float %1061, %1065
  %1067 = fmul fast float %1062, %1065
  %1068 = fmul fast float %1063, %1065
  %1069 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %1070 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1071 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %1072 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %1073 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1074 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %1075 = fadd fast float %1069, %147
  %1076 = fadd fast float %1070, %148
  %1077 = fadd fast float %1071, %149
  %1078 = fadd fast float %1072, %147
  %1079 = fadd fast float %1073, %148
  %1080 = fadd fast float %1074, %149
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.CBufRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.CBufRet.f32 %1081, 2
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 2
  %1087 = extractvalue %dx.types.CBufRet.f32 %1085, 3
  %1088 = fmul fast float %1082, %100
  %1089 = fmul fast float %1088, %1086
  %1090 = fmul fast float %1083, %101
  %1091 = fmul fast float %1090, %1087
  %1092 = fptoui float %1089 to i32
  %1093 = fptoui float %1091 to i32
  %1094 = fadd fast float %1082, -1.000000e+00
  %1095 = fadd fast float %1083, -1.000000e+00
  %1096 = fptoui float %1094 to i32
  %1097 = fptoui float %1095 to i32
  %1098 = call i32 @dx.op.binary.i32(i32 40, i32 %1092, i32 %1096)  ; UMin(a,b)
  %1099 = call i32 @dx.op.binary.i32(i32 40, i32 %1093, i32 %1097)  ; UMin(a,b)
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 2
  %1102 = extractvalue %dx.types.CBufRet.f32 %1100, 3
  %1103 = fmul fast float %1101, %88
  %1104 = fsub fast float %1103, %1102
  %1105 = fadd fast float %1084, -1.000000e+00
  %1106 = call float @dx.op.binary.f32(i32 36, float %1104, float %1105)  ; FMin(a,b)
  %1107 = fptoui float %1106 to i32
  %1108 = fptoui float %1082 to i32
  %1109 = fptoui float %1083 to i32
  %1110 = mul i32 %1107, %1109
  %1111 = add i32 %1110, %1099
  %1112 = mul i32 %1111, %1108
  %1113 = add i32 %1112, %1098
  %1114 = shl i32 %1113, 2
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 1023
  %1118 = lshr i32 %1116, 10
  %1119 = icmp eq i32 %1117, 0
  br i1 %1119, label %1545, label %1120

; <label>:1120                                    ; preds = %1025
  %1121 = and i32 %1116, 1023
  br label %1122

; <label>:1122                                    ; preds = %1248, %1120
  %1123 = phi float [ %1249, %1248 ], [ 0.000000e+00, %1120 ]
  %1124 = phi float [ %1250, %1248 ], [ %1040, %1120 ]
  %1125 = phi float [ %1251, %1248 ], [ %1038, %1120 ]
  %1126 = phi float [ %1252, %1248 ], [ 0.000000e+00, %1120 ]
  %1127 = phi float [ %1253, %1248 ], [ 0.000000e+00, %1120 ]
  %1128 = phi float [ %1254, %1248 ], [ %1031, %1120 ]
  %1129 = phi float [ %1255, %1248 ], [ %1032, %1120 ]
  %1130 = phi float [ %1256, %1248 ], [ %1033, %1120 ]
  %1131 = phi float [ %1257, %1248 ], [ %1066, %1120 ]
  %1132 = phi float [ %1258, %1248 ], [ %1067, %1120 ]
  %1133 = phi float [ %1259, %1248 ], [ %1068, %1120 ]
  %1134 = phi float [ %1260, %1248 ], [ %1037, %1120 ]
  %1135 = phi float [ %1261, %1248 ], [ %1036, %1120 ]
  %1136 = phi float [ %1262, %1248 ], [ 0.000000e+00, %1120 ]
  %1137 = phi float [ %1263, %1248 ], [ %1034, %1120 ]
  %1138 = phi float [ %1264, %1248 ], [ %1028, %1120 ]
  %1139 = phi float [ %1265, %1248 ], [ %1029, %1120 ]
  %1140 = phi float [ %1266, %1248 ], [ %1030, %1120 ]
  %1141 = phi i32 [ %1198, %1248 ], [ 0, %1120 ]
  %1142 = add nuw nsw i32 %1141, %1118
  %1143 = shl i32 %1142, 2
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = shl i32 %1145, 8
  %1147 = or i32 %1146, 48
  %1148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = extractvalue %dx.types.ResRet.f32 %1148, 1
  %1151 = extractvalue %dx.types.ResRet.f32 %1148, 2
  %1152 = extractvalue %dx.types.ResRet.f32 %1148, 3
  %1153 = or i32 %1146, 64
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.i32 %1154, 1
  %1157 = or i32 %1146, 80
  %1158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 2
  %1160 = extractvalue %dx.types.ResRet.f32 %1158, 3
  %1161 = or i32 %1146, 96
  %1162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.ResRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.ResRet.f32 %1162, 2
  %1166 = extractvalue %dx.types.ResRet.f32 %1162, 3
  %1167 = or i32 %1146, 112
  %1168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 2
  %1170 = or i32 %1146, 128
  %1171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.ResRet.f32 %1171, 1
  %1174 = extractvalue %dx.types.ResRet.f32 %1171, 2
  %1175 = extractvalue %dx.types.ResRet.f32 %1171, 3
  %1176 = or i32 %1146, 144
  %1177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = extractvalue %dx.types.ResRet.f32 %1177, 1
  %1180 = extractvalue %dx.types.ResRet.f32 %1177, 2
  %1181 = extractvalue %dx.types.ResRet.f32 %1177, 3
  %1182 = or i32 %1146, 160
  %1183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.ResRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.ResRet.f32 %1183, 2
  %1187 = extractvalue %dx.types.ResRet.f32 %1183, 3
  %1188 = or i32 %1146, 192
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = or i32 %1146, 208
  %1192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = or i32 %1146, 248
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = add nuw nsw i32 %1141, 1
  %1199 = bitcast float %1152 to i32
  %1200 = and i32 %1199, 2560
  %1201 = icmp eq i32 %1200, 0
  %1202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.ResRet.f32 %1202, 3
  %1207 = call float @dx.op.dot4.f32(i32 56, float %1203, float %1204, float %1205, float %1206, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1208 = or i32 %1146, 16
  %1209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = extractvalue %dx.types.ResRet.f32 %1209, 3
  %1214 = call float @dx.op.dot4.f32(i32 56, float %1210, float %1211, float %1212, float %1213, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1215 = or i32 %1146, 32
  %1216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = extractvalue %dx.types.ResRet.f32 %1216, 3
  %1221 = call float @dx.op.dot4.f32(i32 56, float %1217, float %1218, float %1219, float %1220, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1222 = call float @dx.op.unary.f32(i32 27, float %1207)  ; Round_ni(value)
  %1223 = call float @dx.op.unary.f32(i32 6, float %1222)  ; FAbs(value)
  %1224 = call float @dx.op.unary.f32(i32 27, float %1214)  ; Round_ni(value)
  %1225 = call float @dx.op.unary.f32(i32 6, float %1224)  ; FAbs(value)
  %1226 = call float @dx.op.unary.f32(i32 6, float %1221)  ; FAbs(value)
  %1227 = call float @dx.op.unary.f32(i32 27, float %1226)  ; Round_ni(value)
  %1228 = fadd fast float %1225, %1223
  %1229 = fadd fast float %1228, %1227
  %1230 = fcmp fast oeq float %1229, 0.000000e+00
  %1231 = call float @dx.op.dot4.f32(i32 56, float %1203, float %1204, float %1205, float %1206, float %1075, float %1076, float %1077, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1232 = call float @dx.op.dot4.f32(i32 56, float %1210, float %1211, float %1212, float %1213, float %1075, float %1076, float %1077, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1233 = call float @dx.op.dot4.f32(i32 56, float %1203, float %1204, float %1205, float %1206, float %1078, float %1079, float %1080, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1234 = call float @dx.op.dot4.f32(i32 56, float %1210, float %1211, float %1212, float %1213, float %1078, float %1079, float %1080, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1235 = fsub fast float %1231, %1207
  %1236 = fsub fast float %1233, %1207
  %1237 = fsub fast float %1232, %1214
  %1238 = fsub fast float %1234, %1214
  %1239 = call float @dx.op.dot3.f32(i32 55, float %1149, float %1150, float %1151, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1242 = fadd fast float %1241, %1239
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1240, 0
  %1245 = fcmp fast ogt float %1243, %1244
  %1246 = and i1 %1230, %1245
  %1247 = and i1 %1201, %1246
  br i1 %1247, label %1268, label %1248

; <label>:1248                                    ; preds = %1531, %1349, %1268, %1122
  %1249 = phi float [ %1123, %1268 ], [ %1352, %1349 ], [ %1352, %1531 ], [ %1123, %1122 ]
  %1250 = phi float [ %1124, %1268 ], [ %1124, %1349 ], [ %1506, %1531 ], [ %1124, %1122 ]
  %1251 = phi float [ %1125, %1268 ], [ %1125, %1349 ], [ %1504, %1531 ], [ %1125, %1122 ]
  %1252 = phi float [ %1126, %1268 ], [ %1126, %1349 ], [ %1476, %1531 ], [ %1126, %1122 ]
  %1253 = phi float [ %1127, %1268 ], [ %1127, %1349 ], [ %1474, %1531 ], [ %1127, %1122 ]
  %1254 = phi float [ %1128, %1268 ], [ %1128, %1349 ], [ %1541, %1531 ], [ %1128, %1122 ]
  %1255 = phi float [ %1129, %1268 ], [ %1129, %1349 ], [ %1542, %1531 ], [ %1129, %1122 ]
  %1256 = phi float [ %1130, %1268 ], [ %1130, %1349 ], [ %1543, %1531 ], [ %1130, %1122 ]
  %1257 = phi float [ %1131, %1268 ], [ %1131, %1349 ], [ %1455, %1531 ], [ %1131, %1122 ]
  %1258 = phi float [ %1132, %1268 ], [ %1132, %1349 ], [ %1456, %1531 ], [ %1132, %1122 ]
  %1259 = phi float [ %1133, %1268 ], [ %1133, %1349 ], [ %1457, %1531 ], [ %1133, %1122 ]
  %1260 = phi float [ %1134, %1268 ], [ %1134, %1349 ], [ %1484, %1531 ], [ %1134, %1122 ]
  %1261 = phi float [ %1135, %1268 ], [ %1135, %1349 ], [ %1481, %1531 ], [ %1135, %1122 ]
  %1262 = phi float [ %1136, %1268 ], [ %1136, %1349 ], [ %1478, %1531 ], [ %1136, %1122 ]
  %1263 = phi float [ %1137, %1268 ], [ %1137, %1349 ], [ %1472, %1531 ], [ %1137, %1122 ]
  %1264 = phi float [ %1138, %1268 ], [ %1138, %1349 ], [ %1467, %1531 ], [ %1138, %1122 ]
  %1265 = phi float [ %1139, %1268 ], [ %1139, %1349 ], [ %1468, %1531 ], [ %1139, %1122 ]
  %1266 = phi float [ %1140, %1268 ], [ %1140, %1349 ], [ %1469, %1531 ], [ %1140, %1122 ]
  %1267 = icmp eq i32 %1198, %1121
  br i1 %1267, label %1544, label %1122

; <label>:1268                                    ; preds = %1122
  %1269 = extractvalue %dx.types.ResRet.f32 %1168, 3
  %1270 = extractvalue %dx.types.ResRet.f32 %1168, 1
  %1271 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1272 = extractvalue %dx.types.ResRet.f32 %1158, 1
  %1273 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1274 = extractvalue %dx.types.ResRet.i32 %1154, 3
  %1275 = extractvalue %dx.types.ResRet.i32 %1154, 2
  %1276 = add i32 %1274, 0
  %1277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1276, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1279 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1277, %dx.types.Handle %1278, float %1207, float %1214, float undef, float undef, i32 0, i32 0, i32 undef, float %1235, float %1237, float undef, float %1236, float %1238, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = fmul fast float %1280, %1273
  %1282 = fadd fast float %1281, %1272
  %1283 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1284 = fmul fast float %1207, %1163
  %1285 = call float @dx.op.tertiary.f32(i32 46, float %1164, float %1214, float %1284)  ; FMad(a,b,c)
  %1286 = fadd fast float %1285, %1271
  %1287 = fmul fast float %1207, %1165
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %1214, float %1287)  ; FMad(a,b,c)
  %1289 = fadd fast float %1288, %1270
  %1290 = fmul fast float %1235, %1163
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1164, float %1237, float %1290)  ; FMad(a,b,c)
  %1292 = fmul fast float %1235, %1165
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %1237, float %1292)  ; FMad(a,b,c)
  %1294 = fmul fast float %1236, %1163
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1164, float %1238, float %1294)  ; FMad(a,b,c)
  %1296 = fmul fast float %1236, %1165
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1166, float %1238, float %1296)  ; FMad(a,b,c)
  %1298 = add i32 %1275, 0
  %1299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1298, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1300 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1299, %dx.types.Handle %1278, float %1286, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float %1291, float %1293, float undef, float %1295, float %1297, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  %1302 = and i32 %1199, 1024
  %1303 = icmp ne i32 %1302, 0
  %1304 = fcmp fast ogt float %1301, 0x3FE0101020000000
  %1305 = uitofp i1 %1304 to float
  %1306 = select i1 %1303, float %1305, float %1301
  %1307 = and i32 %1199, 8192
  %1308 = icmp ne i32 %1307, 0
  %1309 = select i1 %1308, float %1269, float 1.000000e+00
  %1310 = fmul fast float %1207, 2.000000e+00
  %1311 = fadd fast float %1310, -1.000000e+00
  %1312 = call float @dx.op.unary.f32(i32 6, float %1311)  ; FAbs(value)
  %1313 = fmul fast float %1312, %1196
  %1314 = fsub fast float %1313, %1196
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = fmul fast float %1214, 2.000000e+00
  %1317 = fadd fast float %1316, -1.000000e+00
  %1318 = call float @dx.op.unary.f32(i32 6, float %1317)  ; FAbs(value)
  %1319 = fmul fast float %1318, %1197
  %1320 = fsub fast float %1319, %1197
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1322 = fmul fast float %1226, %1159
  %1323 = fsub fast float %1322, %1159
  %1324 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1325 = fmul fast float %1283, %1309
  %1326 = fmul fast float %1325, %1280
  %1327 = fmul fast float %1326, %1315
  %1328 = fmul fast float %1327, %1306
  %1329 = fmul fast float %1328, %1321
  %1330 = fmul fast float %1329, %1324
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 1
  %1333 = extractvalue %dx.types.CBufRet.f32 %1331, 0
  %1334 = fsub fast float %1243, %1333
  %1335 = fmul fast float %1334, %1332
  %1336 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1337 = fmul fast float %1330, %1160
  %1338 = fadd fast float %1330, %1160
  %1339 = fmul fast float %1338, %1169
  %1340 = fsub fast float %1339, %1169
  %1341 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1342 = and i32 %1199, 128
  %1343 = icmp ne i32 %1342, 0
  %1344 = select i1 %1343, float %1341, float %1337
  %1345 = fmul fast float %1344, %1336
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 0
  %1348 = fcmp fast ugt float %1345, %1347
  br i1 %1348, label %1349, label %1248

; <label>:1349                                    ; preds = %1268
  %1350 = select i1 %1308, float %1345, float 0.000000e+00
  %1351 = fadd fast float %1350, %1123
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  br i1 %1308, label %1248, label %1353

; <label>:1353                                    ; preds = %1349
  %1354 = and i32 %1199, 4
  %1355 = and i32 %1199, 8
  %1356 = add i32 %1155, 0
  %1357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1356, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1359 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1357, %dx.types.Handle %1358, float %1286, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float %1291, float %1293, float undef, float %1295, float %1297, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1360 = extractvalue %dx.types.ResRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.ResRet.f32 %1359, 1
  %1362 = extractvalue %dx.types.ResRet.f32 %1359, 2
  %1363 = extractvalue %dx.types.ResRet.f32 %1359, 3
  %1364 = bitcast float %1181 to i32
  %1365 = and i32 %1364, 255
  %1366 = uitofp i32 %1365 to float
  %1367 = lshr i32 %1364, 8
  %1368 = and i32 %1367, 255
  %1369 = uitofp i32 %1368 to float
  %1370 = fmul fast float %1363, %1366
  %1371 = fadd fast float %1370, %1369
  %1372 = fmul fast float %1371, 0x3F70101000000000
  %1373 = add i32 %1156, 0
  %1374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1373, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1375 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1374, %dx.types.Handle %1358, float %1286, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float %1291, float %1293, float undef, float %1295, float %1297, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  %1377 = extractvalue %dx.types.ResRet.f32 %1375, 1
  %1378 = extractvalue %dx.types.ResRet.f32 %1375, 2
  %1379 = extractvalue %dx.types.ResRet.f32 %1375, 3
  %1380 = bitcast float %1175 to i32
  %1381 = and i32 %1380, 255
  %1382 = uitofp i32 %1381 to float
  %1383 = lshr i32 %1380, 8
  %1384 = and i32 %1383, 255
  %1385 = uitofp i32 %1384 to float
  %1386 = lshr i32 %1380, 16
  %1387 = and i32 %1386, 255
  %1388 = uitofp i32 %1387 to float
  %1389 = fmul fast float %1388, 0x3F70101000000000
  %1390 = fmul fast float %1376, %1382
  %1391 = fadd fast float %1390, %1385
  %1392 = fmul fast float %1391, 0x3F70101000000000
  %1393 = fadd fast float %1377, -5.000000e-01
  %1394 = fadd fast float %1379, -5.000000e-01
  %1395 = fmul fast float %1393, %1389
  %1396 = fmul fast float %1394, %1389
  %1397 = fadd fast float %1395, 5.000000e-01
  %1398 = fadd fast float %1396, 5.000000e-01
  %1399 = fmul fast float %1360, %1184
  %1400 = fmul fast float %1361, %1185
  %1401 = fmul fast float %1362, %1186
  %1402 = fmul fast float %1397, 2.000000e+00
  %1403 = fadd fast float %1402, -1.000000e+00
  %1404 = fmul fast float %1398, 2.000000e+00
  %1405 = fadd fast float %1404, -1.000000e+00
  %1406 = fadd fast float %1403, %1405
  %1407 = fmul fast float %1406, 5.000000e-01
  %1408 = fsub fast float %1403, %1405
  %1409 = fmul fast float %1408, 5.000000e-01
  %1410 = call float @dx.op.unary.f32(i32 6, float %1407)  ; FAbs(value)
  %1411 = fsub fast float 1.000000e+00, %1410
  %1412 = call float @dx.op.unary.f32(i32 6, float %1409)  ; FAbs(value)
  %1413 = fsub fast float %1411, %1412
  %1414 = call float @dx.op.dot3.f32(i32 55, float %1407, float %1409, float %1413, float %1407, float %1409, float %1413)  ; Dot3(ax,ay,az,bx,by,bz)
  %1415 = call float @dx.op.unary.f32(i32 25, float %1414)  ; Rsqrt(value)
  %1416 = fmul fast float %1407, %1415
  %1417 = fmul fast float %1409, %1415
  %1418 = fmul fast float %1415, %1413
  %1419 = fmul fast float %1418, %1149
  %1420 = fmul fast float %1418, %1150
  %1421 = fmul fast float %1418, %1151
  %1422 = fmul fast float %1416, %1172
  %1423 = fmul fast float %1416, %1173
  %1424 = fmul fast float %1416, %1174
  %1425 = fadd fast float %1422, %1419
  %1426 = fadd fast float %1423, %1420
  %1427 = fadd fast float %1424, %1421
  %1428 = fmul fast float %1417, %1178
  %1429 = fmul fast float %1417, %1179
  %1430 = fmul fast float %1417, %1180
  %1431 = fadd fast float %1425, %1428
  %1432 = fadd fast float %1426, %1429
  %1433 = fadd fast float %1427, %1430
  %1434 = call float @dx.op.dot3.f32(i32 55, float %1431, float %1432, float %1433, float %1431, float %1432, float %1433)  ; Dot3(ax,ay,az,bx,by,bz)
  %1435 = call float @dx.op.unary.f32(i32 25, float %1434)  ; Rsqrt(value)
  %1436 = fmul fast float %1431, %1435
  %1437 = fmul fast float %1432, %1435
  %1438 = fmul fast float %1433, %1435
  %1439 = icmp ne i32 %1355, 0
  %1440 = select i1 %1439, float 1.000000e+00, float 0.000000e+00
  %1441 = fmul fast float %1345, %1440
  %1442 = and i32 %1199, 1
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1444, label %1448

; <label>:1444                                    ; preds = %1353
  %1445 = fsub fast float %1436, %1131
  %1446 = fsub fast float %1437, %1132
  %1447 = fsub fast float %1438, %1133
  br label %1448

; <label>:1448                                    ; preds = %1444, %1353
  %1449 = phi float [ %1445, %1444 ], [ %1436, %1353 ]
  %1450 = phi float [ %1446, %1444 ], [ %1437, %1353 ]
  %1451 = phi float [ %1447, %1444 ], [ %1438, %1353 ]
  %1452 = fmul float %1451, %1441
  %1453 = fmul float %1450, %1441
  %1454 = fmul float %1449, %1441
  %1455 = fadd fast float %1454, %1131
  %1456 = fadd fast float %1453, %1132
  %1457 = fadd fast float %1452, %1133
  %1458 = icmp ne i32 %1354, 0
  %1459 = select i1 %1458, float 1.000000e+00, float 0.000000e+00
  %1460 = fmul fast float %1345, %1459
  %1461 = fsub fast float %1399, %1138
  %1462 = fsub fast float %1400, %1139
  %1463 = fsub fast float %1401, %1140
  %1464 = fmul fast float %1461, %1460
  %1465 = fmul fast float %1462, %1460
  %1466 = fmul fast float %1463, %1460
  %1467 = fadd fast float %1464, %1138
  %1468 = fadd fast float %1465, %1139
  %1469 = fadd fast float %1466, %1140
  %1470 = fsub fast float %1372, %1137
  %1471 = fmul fast float %1470, %1460
  %1472 = fadd fast float %1471, %1137
  %1473 = fmul fast float %1460, %1127
  %1474 = fsub fast float %1127, %1473
  %1475 = fmul fast float %1460, %1126
  %1476 = fsub fast float %1126, %1475
  %1477 = fadd fast float %1345, %1136
  %1478 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1479 = fsub fast float %1392, %1135
  %1480 = fmul fast float %1479, %1441
  %1481 = fadd fast float %1480, %1135
  %1482 = fsub fast float %1378, %1134
  %1483 = fmul fast float %1482, %1441
  %1484 = fadd fast float %1483, %1134
  %1485 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 0
  %1488 = extractvalue %dx.types.CBufRet.f32 %1486, 1
  %1489 = fmul fast float %1488, %1485
  %1490 = fadd fast float %1489, %1487
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1492 = bitcast float %1187 to i32
  %1493 = and i32 %1492, 65535
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = lshr i32 %1492, 16
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = fcmp fast oge float %1494, 0.000000e+00
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 0
  %1500 = select i1 %1497, float %1494, float %1499
  %1501 = fadd fast float %1500, %1496
  %1502 = fsub fast float %1491, %1125
  %1503 = fmul fast float %1502, %1345
  %1504 = fadd fast float %1503, %1125
  %1505 = fmul fast float %1501, %1345
  %1506 = call float @dx.op.binary.f32(i32 35, float %1124, float %1505)  ; FMax(a,b)
  %1507 = and i32 %1199, 16
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1531, label %1509

; <label>:1509                                    ; preds = %1448
  %1510 = bitcast float %1193 to i32
  %1511 = add i32 %1190, 0
  %1512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1511, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1513 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1512, %dx.types.Handle %1358, float %1286, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float %1291, float %1293, float undef, float %1295, float %1297, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.ResRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.ResRet.f32 %1513, 2
  %1517 = and i32 %1510, 65535
  %1518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1517)  ; LegacyF16ToF32(value)
  %1519 = fmul fast float %1514, %1184
  %1520 = fmul fast float %1515, %1185
  %1521 = fmul fast float %1516, %1186
  %1522 = and i32 %1199, 16384
  %1523 = icmp ne i32 %1522, 0
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1526 = select i1 %1523, float %1525, float 1.000000e+00
  %1527 = fmul fast float %1526, %1518
  %1528 = fmul fast float %1519, %1527
  %1529 = fmul fast float %1520, %1527
  %1530 = fmul fast float %1521, %1527
  br label %1531

; <label>:1531                                    ; preds = %1509, %1448
  %1532 = phi float [ %1528, %1509 ], [ 0.000000e+00, %1448 ]
  %1533 = phi float [ %1529, %1509 ], [ 0.000000e+00, %1448 ]
  %1534 = phi float [ %1530, %1509 ], [ 0.000000e+00, %1448 ]
  %1535 = fsub fast float %1532, %1128
  %1536 = fsub fast float %1533, %1129
  %1537 = fsub fast float %1534, %1130
  %1538 = fmul fast float %1535, %1345
  %1539 = fmul fast float %1536, %1345
  %1540 = fmul fast float %1537, %1345
  %1541 = fadd fast float %1538, %1128
  %1542 = fadd fast float %1539, %1129
  %1543 = fadd fast float %1540, %1130
  br label %1248

; <label>:1544                                    ; preds = %1248
  br label %1545

; <label>:1545                                    ; preds = %1544, %1025
  %1546 = phi float [ 0.000000e+00, %1025 ], [ %1249, %1544 ]
  %1547 = phi float [ %1040, %1025 ], [ %1250, %1544 ]
  %1548 = phi float [ %1038, %1025 ], [ %1251, %1544 ]
  %1549 = phi float [ 0.000000e+00, %1025 ], [ %1252, %1544 ]
  %1550 = phi float [ 0.000000e+00, %1025 ], [ %1253, %1544 ]
  %1551 = phi float [ %1031, %1025 ], [ %1254, %1544 ]
  %1552 = phi float [ %1032, %1025 ], [ %1255, %1544 ]
  %1553 = phi float [ %1033, %1025 ], [ %1256, %1544 ]
  %1554 = phi float [ %1066, %1025 ], [ %1257, %1544 ]
  %1555 = phi float [ %1067, %1025 ], [ %1258, %1544 ]
  %1556 = phi float [ %1068, %1025 ], [ %1259, %1544 ]
  %1557 = phi float [ %1037, %1025 ], [ %1260, %1544 ]
  %1558 = phi float [ %1036, %1025 ], [ %1261, %1544 ]
  %1559 = phi float [ 0.000000e+00, %1025 ], [ %1262, %1544 ]
  %1560 = phi float [ %1034, %1025 ], [ %1263, %1544 ]
  %1561 = phi float [ %1028, %1025 ], [ %1264, %1544 ]
  %1562 = phi float [ %1029, %1025 ], [ %1265, %1544 ]
  %1563 = phi float [ %1030, %1025 ], [ %1266, %1544 ]
  %1564 = call float @dx.op.dot3.f32(i32 55, float %1554, float %1555, float %1556, float %1554, float %1555, float %1556)  ; Dot3(ax,ay,az,bx,by,bz)
  %1565 = call float @dx.op.unary.f32(i32 25, float %1564)  ; Rsqrt(value)
  %1566 = fmul fast float %1565, %1554
  %1567 = fmul fast float %1565, %1555
  %1568 = fmul fast float %1565, %1556
  %1569 = fadd fast float %1559, %1035
  %1570 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1571 = call float @dx.op.dot3.f32(i32 55, float %1566, float %1567, float %1568, float %1566, float %1567, float %1568)  ; Dot3(ax,ay,az,bx,by,bz)
  %1572 = call float @dx.op.unary.f32(i32 25, float %1571)  ; Rsqrt(value)
  %1573 = fmul fast float %1572, %1566
  %1574 = fmul fast float %1572, %1567
  %1575 = fmul fast float %1572, %1568
  %1576 = fadd fast float %1560, 0xBFB99999A0000000
  %1577 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1578 = fmul fast float %1577, 0x3FF1C71C80000000
  %1579 = call float @dx.op.binary.f32(i32 36, float %1560, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1580 = fsub fast float 1.000000e+00, %1578
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1582 = fmul fast float %1581, %1561
  %1583 = fmul fast float %1581, %1562
  %1584 = fmul fast float %1581, %1563
  %1585 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1586 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1587 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1588 = fmul fast float %1578, %1561
  %1589 = fmul fast float %1578, %1562
  %1590 = fmul fast float %1578, %1563
  %1591 = fadd fast float %1588, %1579
  %1592 = fadd fast float %1589, %1579
  %1593 = fadd fast float %1590, %1579
  %1594 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  %1595 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1596 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1597 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1599 = extractvalue %dx.types.CBufRet.i32 %1598, 3
  %1600 = and i32 %1599, 8
  %1601 = icmp ne i32 %1600, 0
  %1602 = call float @dx.op.binary.f32(i32 35, float %1585, float %1561)  ; FMax(a,b)
  %1603 = call float @dx.op.binary.f32(i32 35, float %1586, float %1561)  ; FMax(a,b)
  %1604 = call float @dx.op.binary.f32(i32 35, float %1587, float %1561)  ; FMax(a,b)
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1585, float %1586, float %1587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = select i1 %238, float %1561, float %1585
  %1607 = select i1 %238, float %1605, float %1586
  %1608 = select i1 %238, float 1.000000e+00, float %1587
  %1609 = select i1 %1601, float %1602, float %1606
  %1610 = select i1 %1601, float %1603, float %1607
  %1611 = select i1 %1601, float %1604, float %1608
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1615 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1616 = fadd fast float %1613, %147
  %1617 = fadd fast float %1614, %148
  %1618 = fadd fast float %1615, %149
  %1619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1620 = extractvalue %dx.types.CBufRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.CBufRet.f32 %1619, 1
  %1622 = fsub fast float %1616, %1620
  %1623 = fsub fast float %1617, %1621
  %1624 = fmul fast float %1622, %1622
  %1625 = fmul fast float %1623, %1623
  %1626 = fadd fast float %1624, %1625
  %1627 = call float @dx.op.unary.f32(i32 24, float %1626)  ; Sqrt(value)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1619, 2
  %1629 = fcmp fast olt float %1627, %1628
  br i1 %1629, label %1630, label %1697

; <label>:1630                                    ; preds = %1545
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
  %1643 = fadd fast float %1640, %1616
  %1644 = fadd fast float %1641, %1617
  %1645 = fadd fast float %1642, %1618
  %1646 = fmul fast float %1643, %1632
  %1647 = call float @dx.op.tertiary.f32(i32 46, float %1644, float %1634, float %1646)  ; FMad(a,b,c)
  %1648 = call float @dx.op.tertiary.f32(i32 46, float %1645, float %1636, float %1647)  ; FMad(a,b,c)
  %1649 = fmul fast float %1643, %1637
  %1650 = call float @dx.op.tertiary.f32(i32 46, float %1644, float %1638, float %1649)  ; FMad(a,b,c)
  %1651 = call float @dx.op.tertiary.f32(i32 46, float %1645, float %1639, float %1650)  ; FMad(a,b,c)
  %1652 = fsub fast float %1648, %1640
  %1653 = fsub fast float %1651, %1641
  %1654 = fsub fast float %1652, %1620
  %1655 = fadd fast float %1654, %1628
  %1656 = fsub fast float %1653, %1621
  %1657 = fadd fast float %1656, %1628
  %1658 = extractvalue %dx.types.CBufRet.f32 %1619, 3
  %1659 = fmul fast float %1655, %1658
  %1660 = fmul fast float %1657, %1658
  %1661 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1662 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1663 = fsub fast float 1.000000e+00, %1661
  %1664 = fsub fast float 1.000000e+00, %1662
  %1665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1663, float %1664, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1666 = extractvalue %dx.types.ResRet.f32 %1665, 0
  %1667 = fcmp fast ugt float %1666, 0.000000e+00
  br i1 %1667, label %1668, label %1971

; <label>:1668                                    ; preds = %1630
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 2
  %1671 = fmul fast float %1670, %1666
  %1672 = extractvalue %dx.types.CBufRet.f32 %1669, 3
  %1673 = fadd fast float %1672, %1671
  %1674 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1675 = fadd fast float %1673, %1642
  %1676 = fmul fast float %1648, %1636
  %1677 = call float @dx.op.tertiary.f32(i32 46, float %1651, float %1639, float %1676)  ; FMad(a,b,c)
  %1678 = call float @dx.op.tertiary.f32(i32 46, float %1675, float %1674, float %1677)  ; FMad(a,b,c)
  %1679 = fsub fast float %1678, %1642
  %1680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1681 = extractvalue %dx.types.CBufRet.f32 %1680, 2
  %1682 = fsub fast float %1679, %1681
  %1683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1663, float %1664, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1684 = extractvalue %dx.types.ResRet.f32 %1683, 0
  %1685 = extractvalue %dx.types.ResRet.f32 %1683, 1
  %1686 = extractvalue %dx.types.ResRet.f32 %1683, 2
  %1687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1663, float %1664, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.ResRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.ResRet.f32 %1687, 2
  %1691 = fadd fast float %1688, %1684
  %1692 = fmul fast float %1691, 0x3F847AE140000000
  %1693 = fadd fast float %1689, %1685
  %1694 = fmul fast float %1693, 0x3F847AE140000000
  %1695 = fadd fast float %1690, %1686
  %1696 = fmul fast float %1695, 0x3F847AE140000000
  br label %1971

; <label>:1697                                    ; preds = %1545
  %1698 = and i32 %214, 1
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1971, label %1700

; <label>:1700                                    ; preds = %1697
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 0
  %1703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1703, 0
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.CBufRet.f32 %1701, 1
  %1708 = extractvalue %dx.types.CBufRet.f32 %1703, 1
  %1709 = extractvalue %dx.types.CBufRet.f32 %1705, 1
  %1710 = extractvalue %dx.types.CBufRet.f32 %1701, 3
  %1711 = extractvalue %dx.types.CBufRet.f32 %1703, 3
  %1712 = extractvalue %dx.types.CBufRet.f32 %1705, 3
  %1713 = fadd fast float %1710, %1616
  %1714 = fadd fast float %1711, %1617
  %1715 = fadd fast float %1712, %1618
  %1716 = fmul fast float %1713, %1702
  %1717 = call float @dx.op.tertiary.f32(i32 46, float %1714, float %1704, float %1716)  ; FMad(a,b,c)
  %1718 = call float @dx.op.tertiary.f32(i32 46, float %1715, float %1706, float %1717)  ; FMad(a,b,c)
  %1719 = fmul fast float %1713, %1707
  %1720 = call float @dx.op.tertiary.f32(i32 46, float %1714, float %1708, float %1719)  ; FMad(a,b,c)
  %1721 = call float @dx.op.tertiary.f32(i32 46, float %1715, float %1709, float %1720)  ; FMad(a,b,c)
  %1722 = fsub fast float %1718, %1710
  %1723 = fsub fast float %1721, %1711
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1728 = extractvalue %dx.types.CBufRet.f32 %1724, 3
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 3
  %1731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.i32 %1731, 0
  %1733 = extractvalue %dx.types.CBufRet.i32 %1731, 1
  %1734 = udiv i32 %1733, %1732
  %1735 = fsub fast float %1722, %1725
  %1736 = fsub fast float %1723, %1726
  %1737 = call float @dx.op.binary.f32(i32 35, float %1735, float 0.000000e+00)  ; FMax(a,b)
  %1738 = call float @dx.op.binary.f32(i32 35, float %1736, float 0.000000e+00)  ; FMax(a,b)
  %1739 = call float @dx.op.binary.f32(i32 36, float %1737, float %1727)  ; FMin(a,b)
  %1740 = call float @dx.op.binary.f32(i32 36, float %1738, float %1728)  ; FMin(a,b)
  %1741 = add i32 %1732, -1
  %1742 = add i32 %1734, -1
  %1743 = fmul fast float %1739, %1730
  %1744 = fmul fast float %1740, %1730
  %1745 = fptoui float %1743 to i32
  %1746 = fptoui float %1744 to i32
  %1747 = call i32 @dx.op.binary.i32(i32 40, i32 %1745, i32 %1741)  ; UMin(a,b)
  %1748 = call i32 @dx.op.binary.i32(i32 40, i32 %1746, i32 %1742)  ; UMin(a,b)
  %1749 = mul i32 %1748, %1732
  %1750 = add i32 %1749, %1747
  %1751 = shl i32 %1750, 2
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = icmp eq i32 %1753, -1
  br i1 %1754, label %1971, label %1755

; <label>:1755                                    ; preds = %1700
  %1756 = mul i32 %1753, 148
  %1757 = add i32 %1756, 4
  %1758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.f32 %1758, 0
  %1760 = add i32 %1756, 8
  %1761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = add i32 %1756, 36
  %1764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.f32 %1764, 0
  %1766 = add i32 %1756, 60
  %1767 = add i32 %1756, 92
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = add i32 %1756, 116
  %1771 = fsub fast float %1722, %1759
  %1772 = fsub fast float %1723, %1762
  %1773 = fmul fast float %1730, %1771
  %1774 = fmul fast float %1730, %1772
  %1775 = call float @dx.op.unary.f32(i32 7, float %1773)  ; Saturate(value)
  %1776 = call float @dx.op.unary.f32(i32 7, float %1774)  ; Saturate(value)
  %1777 = fsub fast float 1.000000e+00, %1776
  %1778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1778, 2
  %1780 = call float @dx.op.unary.f32(i32 83, float %1775)  ; DerivCoarseX(value)
  %1781 = call float @dx.op.unary.f32(i32 83, float %1777)  ; DerivCoarseX(value)
  %1782 = call float @dx.op.unary.f32(i32 84, float %1775)  ; DerivCoarseY(value)
  %1783 = call float @dx.op.unary.f32(i32 84, float %1777)  ; DerivCoarseY(value)
  %1784 = fmul fast float %1780, %1779
  %1785 = fmul fast float %1781, %1779
  %1786 = fmul fast float %1782, %1779
  %1787 = fmul fast float %1783, %1779
  %1788 = call float @dx.op.dot2.f32(i32 54, float %1786, float %1787, float %1786, float %1787)  ; Dot2(ax,ay,bx,by)
  %1789 = call float @dx.op.dot2.f32(i32 54, float %1784, float %1785, float %1784, float %1785)  ; Dot2(ax,ay,bx,by)
  %1790 = call float @dx.op.binary.f32(i32 35, float %1789, float %1788)  ; FMax(a,b)
  %1791 = call float @dx.op.unary.f32(i32 23, float %1790)  ; Log(value)
  %1792 = fmul fast float %1791, 5.000000e-01
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 1
  %1795 = fadd fast float %1794, %1792
  %1796 = call float @dx.op.binary.f32(i32 35, float %1795, float 0.000000e+00)  ; FMax(a,b)
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  %1799 = fadd fast float %1798, %1796
  %1800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.f32 %1800, 3
  %1802 = fadd fast float %1799, %1801
  %1803 = add i32 %1769, 0
  %1804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1803, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1805 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1804, i32 0)  ; GetDimensions(handle,mipLevel)
  %1806 = extractvalue %dx.types.Dimensions %1805, 0
  %1807 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1806)  ; FirstbitLo(value)
  %1808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.i32 %1808, 1
  %1810 = sub nsw i32 %1809, %1807
  %1811 = sitofp i32 %1810 to float
  %1812 = fsub fast float %1802, %1811
  %1813 = call float @dx.op.binary.f32(i32 35, float %1812, float 0.000000e+00)  ; FMax(a,b)
  %1814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1804, %dx.types.Handle %62, float %1775, float %1777, float %1765, float undef, i32 0, i32 0, i32 undef, float %1813)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 0
  %1816 = fcmp ule float %1815, 0x3FE0101020000000
  %1817 = extractvalue %dx.types.CBufRet.i32 %1808, 0
  %1818 = and i32 %1817, 128
  %1819 = icmp ne i32 %1818, 0
  %1820 = and i1 %1816, %1819
  br i1 %1820, label %1971, label %1821

; <label>:1821                                    ; preds = %1755
  %1822 = add i32 %1756, 20
  %1823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.f32 %1823, 0
  %1825 = add i32 %1756, 24
  %1826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = add i32 %1756, 40
  %1829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.f32 %1829, 0
  %1831 = add i32 %1756, 96
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 2
  %1836 = fmul fast float %1835, %1775
  %1837 = fmul fast float %1835, %1777
  %1838 = extractvalue %dx.types.CBufRet.f32 %1834, 3
  %1839 = fadd fast float %1836, %1838
  %1840 = fadd fast float %1837, %1838
  %1841 = add i32 %1833, 0
  %1842 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1841, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1843 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1842, i32 0)  ; GetDimensions(handle,mipLevel)
  %1844 = extractvalue %dx.types.Dimensions %1843, 0
  %1845 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1844)  ; FirstbitLo(value)
  %1846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.i32 %1846, 1
  %1848 = sub nsw i32 %1847, %1845
  %1849 = sitofp i32 %1848 to float
  %1850 = fsub fast float %1799, %1849
  %1851 = call float @dx.op.binary.f32(i32 35, float %1850, float 0.000000e+00)  ; FMax(a,b)
  %1852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1842, %dx.types.Handle %62, float %1839, float %1840, float %1830, float undef, i32 0, i32 0, i32 undef, float %1851)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1853 = extractvalue %dx.types.ResRet.f32 %1852, 0
  %1854 = fmul fast float %1853, %1824
  %1855 = fadd fast float %1854, %1827
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 0
  %1858 = extractvalue %dx.types.CBufRet.f32 %1856, 1
  %1859 = extractvalue %dx.types.CBufRet.f32 %1856, 2
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 3
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.f32 %1862, 3
  %1864 = extractvalue %dx.types.CBufRet.f32 %1856, 3
  %1865 = fadd fast float %1861, %1722
  %1866 = fadd fast float %1863, %1723
  %1867 = fadd fast float %1855, %1864
  %1868 = fmul fast float %1865, %1857
  %1869 = call float @dx.op.tertiary.f32(i32 46, float %1866, float %1858, float %1868)  ; FMad(a,b,c)
  %1870 = call float @dx.op.tertiary.f32(i32 46, float %1867, float %1859, float %1869)  ; FMad(a,b,c)
  %1871 = fsub fast float %1870, %1864
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 2
  %1874 = fsub fast float %1871, %1873
  %1875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.i32 %1875, 0
  %1877 = call i32 @dx.op.binary.i32(i32 40, i32 %1753, i32 %1876)  ; UMin(a,b)
  %1878 = mul i32 %1877, 36
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = add i32 %1878, 4
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = fmul fast float %1883, %1775
  %1885 = fmul fast float %1883, %1777
  %1886 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1887 = fadd fast float %1884, %1886
  %1888 = fadd fast float %1885, %1886
  %1889 = icmp eq i32 %1880, 0
  br i1 %1889, label %1958, label %1890

; <label>:1890                                    ; preds = %1821
  br label %1891

; <label>:1891                                    ; preds = %1948, %1890
  %1892 = phi float [ %1949, %1948 ], [ 0.000000e+00, %1890 ]
  %1893 = phi float [ %1950, %1948 ], [ 0.000000e+00, %1890 ]
  %1894 = phi float [ %1951, %1948 ], [ 0.000000e+00, %1890 ]
  %1895 = phi float [ %1952, %1948 ], [ 0.000000e+00, %1890 ]
  %1896 = phi float [ %1953, %1948 ], [ 0.000000e+00, %1890 ]
  %1897 = phi float [ %1954, %1948 ], [ 0.000000e+00, %1890 ]
  %1898 = phi i32 [ %1955, %1948 ], [ 0, %1890 ]
  %1899 = shl i32 %1898, 2
  %1900 = add i32 %1766, %1899
  %1901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = add i32 %1770, %1899
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = add i32 %1905, 0
  %1907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1906, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1908 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1907, i32 0)  ; GetDimensions(handle,mipLevel)
  %1909 = extractvalue %dx.types.Dimensions %1908, 0
  %1910 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1909)  ; FirstbitLo(value)
  %1911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.i32 %1911, 1
  %1913 = sub nsw i32 %1912, %1910
  %1914 = sitofp i32 %1913 to float
  %1915 = fsub fast float %1799, %1914
  %1916 = call float @dx.op.binary.f32(i32 35, float %1915, float 0.000000e+00)  ; FMax(a,b)
  %1917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1907, %dx.types.Handle %62, float %1887, float %1888, float %1902, float undef, i32 0, i32 0, i32 undef, float %1916)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = fcmp fast ogt float %1918, 0.000000e+00
  br i1 %1919, label %1920, label %1948

; <label>:1920                                    ; preds = %1891
  %1921 = add i32 %1881, %1899
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = and i32 %1923, 32767
  %1925 = mul nuw nsw i32 %1924, 928
  %1926 = add nuw nsw i32 %1925, 48
  %1927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 0
  %1929 = extractvalue %dx.types.ResRet.f32 %1927, 1
  %1930 = extractvalue %dx.types.ResRet.f32 %1927, 2
  %1931 = add nuw nsw i32 %1925, 60
  %1932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.ResRet.f32 %1932, 1
  %1935 = extractvalue %dx.types.ResRet.f32 %1932, 2
  %1936 = fmul fast float %1928, %1918
  %1937 = fmul fast float %1929, %1918
  %1938 = fmul fast float %1930, %1918
  %1939 = fadd fast float %1936, %1892
  %1940 = fadd fast float %1937, %1893
  %1941 = fadd fast float %1938, %1894
  %1942 = fmul fast float %1933, %1918
  %1943 = fmul fast float %1934, %1918
  %1944 = fmul fast float %1935, %1918
  %1945 = fadd fast float %1942, %1895
  %1946 = fadd fast float %1943, %1896
  %1947 = fadd fast float %1944, %1897
  br label %1948

; <label>:1948                                    ; preds = %1920, %1891
  %1949 = phi float [ %1939, %1920 ], [ %1892, %1891 ]
  %1950 = phi float [ %1940, %1920 ], [ %1893, %1891 ]
  %1951 = phi float [ %1941, %1920 ], [ %1894, %1891 ]
  %1952 = phi float [ %1945, %1920 ], [ %1895, %1891 ]
  %1953 = phi float [ %1946, %1920 ], [ %1896, %1891 ]
  %1954 = phi float [ %1947, %1920 ], [ %1897, %1891 ]
  %1955 = add nuw i32 %1898, 1
  %1956 = icmp eq i32 %1955, %1880
  br i1 %1956, label %1957, label %1891

; <label>:1957                                    ; preds = %1948
  br label %1958

; <label>:1958                                    ; preds = %1957, %1821
  %1959 = phi float [ 0.000000e+00, %1821 ], [ %1949, %1957 ]
  %1960 = phi float [ 0.000000e+00, %1821 ], [ %1950, %1957 ]
  %1961 = phi float [ 0.000000e+00, %1821 ], [ %1951, %1957 ]
  %1962 = phi float [ 0.000000e+00, %1821 ], [ %1952, %1957 ]
  %1963 = phi float [ 0.000000e+00, %1821 ], [ %1953, %1957 ]
  %1964 = phi float [ 0.000000e+00, %1821 ], [ %1954, %1957 ]
  %1965 = fadd fast float %1962, %1959
  %1966 = fmul fast float %1965, 0x3F847AE140000000
  %1967 = fadd fast float %1963, %1960
  %1968 = fmul fast float %1967, 0x3F847AE140000000
  %1969 = fadd fast float %1964, %1961
  %1970 = fmul fast float %1969, 0x3F847AE140000000
  br label %1971

; <label>:1971                                    ; preds = %1958, %1755, %1700, %1697, %1668, %1630
  %1972 = phi float [ %1682, %1668 ], [ -1.310720e+05, %1630 ], [ %1874, %1958 ], [ -1.310720e+05, %1700 ], [ -1.310720e+05, %1755 ], [ -1.310720e+05, %1697 ]
  %1973 = phi float [ %1692, %1668 ], [ 0.000000e+00, %1630 ], [ %1966, %1958 ], [ 0.000000e+00, %1700 ], [ 0.000000e+00, %1755 ], [ 0.000000e+00, %1697 ]
  %1974 = phi float [ %1694, %1668 ], [ 0.000000e+00, %1630 ], [ %1968, %1958 ], [ 0.000000e+00, %1700 ], [ 0.000000e+00, %1755 ], [ 0.000000e+00, %1697 ]
  %1975 = phi float [ %1696, %1668 ], [ 0.000000e+00, %1630 ], [ %1970, %1958 ], [ 0.000000e+00, %1700 ], [ 0.000000e+00, %1755 ], [ 0.000000e+00, %1697 ]
  %1976 = phi i1 [ true, %1668 ], [ false, %1630 ], [ true, %1958 ], [ false, %1700 ], [ false, %1755 ], [ false, %1697 ]
  %1977 = and i32 %214, 3
  %1978 = icmp eq i32 %1977, 1
  %1979 = select i1 %1978, float 1.000000e+00, float 0.000000e+00
  %1980 = fsub fast float %1972, %149
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1982 = select i1 %1976, float %1981, float 1.000000e+00
  %1983 = fmul fast float %1982, %1979
  %1984 = icmp eq i32 %1977, 3
  %1985 = select i1 %1984, float 1.000000e+00, float %1983
  %1986 = call float @dx.op.binary.f32(i32 35, float %1546, float %1985)  ; FMax(a,b)
  %1987 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1988 = fcmp fast une float %1987, 0.000000e+00
  %1989 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %1990 = call float @dx.op.unary.f32(i32 25, float %1989)  ; Rsqrt(value)
  br i1 %1988, label %1998, label %1991

; <label>:1991                                    ; preds = %1971
  %1992 = fmul fast float %1990, %147
  %1993 = fmul fast float %1990, %148
  %1994 = fmul fast float %1990, %149
  %1995 = fsub fast float -0.000000e+00, %1992
  %1996 = fsub fast float -0.000000e+00, %1993
  %1997 = fsub fast float -0.000000e+00, %1994
  br label %2166

; <label>:1998                                    ; preds = %1971
  %1999 = fmul fast float %147, %1990
  %2000 = fsub fast float -0.000000e+00, %1999
  %2001 = fmul fast float %148, %1990
  %2002 = fsub fast float -0.000000e+00, %2001
  %2003 = fmul fast float %149, %1990
  %2004 = fsub fast float -0.000000e+00, %2003
  %2005 = call float @dx.op.dot3.f32(i32 55, float %2000, float %2002, float %2004, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %2006 = fmul fast float %1987, 2.500000e+00
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2008 = fmul fast float %1987, 0x4013FFFFE0000000
  %2009 = fadd fast float %2008, 0xBFFFFFFFE0000000
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2011 = fmul fast float %1987, 0x4004000020000000
  %2012 = fadd fast float %2011, 0xBFF8000040000000
  %2013 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2014 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2015 = fmul fast float %1576, 1.000000e+01
  %2016 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2017 = fmul fast float %2016, 2.000000e+00
  %2018 = fsub fast float 3.000000e+00, %2017
  %2019 = fmul fast float %2016, %2016
  %2020 = fmul fast float %2019, %2018
  %2021 = fsub fast float 1.000000e+00, %2020
  %2022 = fsub fast float 0x3FE3333340000000, %1597
  %2023 = fmul fast float %2022, 0x400AAAAAA0000000
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2025 = fmul fast float %2021, %2024
  %2026 = fmul fast float %1609, 0x3FEA2B8620000000
  %2027 = fmul fast float %1610, 0x3FEA2B8620000000
  %2028 = fmul fast float %1611, 0x3FEA2B8620000000
  %2029 = fadd fast float %2026, 0x3FC81DFBA0000000
  %2030 = fmul fast float %2029, %1609
  %2031 = fadd fast float %2030, 0x3F910E6020000000
  %2032 = fadd fast float %2027, 0x3FC81DFBA0000000
  %2033 = fmul fast float %2032, %1610
  %2034 = fadd fast float %2033, 0x3F910E6020000000
  %2035 = fadd fast float %2028, 0x3FC81DFBA0000000
  %2036 = fmul fast float %2035, %1611
  %2037 = fadd fast float %2036, 0x3F910E6020000000
  %2038 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2039 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2040 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2041 = fsub fast float %2038, %1609
  %2042 = fsub fast float %2039, %1610
  %2043 = fsub fast float %2040, %1611
  %2044 = fmul fast float %2041, %2014
  %2045 = fmul fast float %2044, %2025
  %2046 = fmul fast float %2042, %2014
  %2047 = fmul fast float %2046, %2025
  %2048 = fmul fast float %2043, %2014
  %2049 = fmul fast float %2048, %2025
  %2050 = fadd fast float %2045, %1609
  %2051 = fadd fast float %2047, %1610
  %2052 = fadd fast float %2049, %1611
  %2053 = fmul fast float %1557, %1557
  %2054 = fmul fast float %2053, %2053
  %2055 = fadd fast float %2010, 1.000000e+00
  %2056 = fsub fast float %2055, %2025
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2059 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2060 = fsub fast float 1.000000e+00, %2054
  %2061 = call float @dx.op.binary.f32(i32 36, float %2057, float %2060)  ; FMin(a,b)
  %2062 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2063 = call float @dx.op.binary.f32(i32 35, float %2061, float %2062)  ; FMax(a,b)
  %2064 = fadd fast float %2059, 0xBFE4CCCCC0000000
  %2065 = fmul fast float %2064, 0x4006DB6DA0000000
  %2066 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2067 = fmul fast float %2066, 2.000000e+00
  %2068 = fsub fast float 3.000000e+00, %2067
  %2069 = bitcast float %1594 to i32
  %2070 = ashr i32 %2069, 1
  %2071 = add nsw i32 %2070, 532487669
  %2072 = bitcast i32 %2071 to float
  %2073 = fsub fast float 1.000000e+00, %2072
  %2074 = bitcast float %2073 to i32
  %2075 = sub nsw i32 2129859010, %2074
  %2076 = bitcast i32 %2075 to float
  %2077 = fmul fast float %2076, 2.000000e+00
  %2078 = bitcast float %1595 to i32
  %2079 = ashr i32 %2078, 1
  %2080 = add nsw i32 %2079, 532487669
  %2081 = bitcast i32 %2080 to float
  %2082 = fsub fast float 1.000000e+00, %2081
  %2083 = bitcast float %2082 to i32
  %2084 = sub nsw i32 2129859010, %2083
  %2085 = bitcast i32 %2084 to float
  %2086 = fmul fast float %2085, 2.000000e+00
  %2087 = bitcast float %1596 to i32
  %2088 = ashr i32 %2087, 1
  %2089 = add nsw i32 %2088, 532487669
  %2090 = bitcast i32 %2089 to float
  %2091 = fsub fast float 1.000000e+00, %2090
  %2092 = bitcast float %2091 to i32
  %2093 = sub nsw i32 2129859010, %2092
  %2094 = bitcast i32 %2093 to float
  %2095 = fmul fast float %2094, 2.000000e+00
  %2096 = fsub fast float 0x4002A9FBE0000000, %2077
  %2097 = fadd fast float %2077, 0x3FD54FDF00000000
  %2098 = bitcast float %2097 to i32
  %2099 = sub nsw i32 2129859010, %2098
  %2100 = bitcast i32 %2099 to float
  %2101 = fmul fast float %2100, %2096
  %2102 = fmul fast float %2101, %2101
  %2103 = fsub fast float 0x4002A9FBE0000000, %2086
  %2104 = fadd fast float %2086, 0x3FD54FDF00000000
  %2105 = bitcast float %2104 to i32
  %2106 = sub nsw i32 2129859010, %2105
  %2107 = bitcast i32 %2106 to float
  %2108 = fmul fast float %2107, %2103
  %2109 = fmul fast float %2108, %2108
  %2110 = fsub fast float 0x4002A9FBE0000000, %2095
  %2111 = fadd fast float %2095, 0x3FD54FDF00000000
  %2112 = bitcast float %2111 to i32
  %2113 = sub nsw i32 2129859010, %2112
  %2114 = bitcast i32 %2113 to float
  %2115 = fmul fast float %2114, %2110
  %2116 = fmul fast float %2115, %2115
  %2117 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2102)  ; FMax(a,b)
  %2118 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2109)  ; FMax(a,b)
  %2119 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2116)  ; FMax(a,b)
  %2120 = fsub fast float 1.000000e+00, %2005
  %2121 = fadd fast float %2120, %2021
  %2122 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2123 = fsub fast float 1.000000e+00, %1985
  %2124 = fmul fast float %2063, %2123
  %2125 = fmul fast float %2066, %2066
  %2126 = fmul fast float %2125, %2124
  %2127 = fmul fast float %2126, %2068
  %2128 = fmul fast float %2123, 0xBFE99999A0000000
  %2129 = fmul fast float %2128, %2014
  %2130 = fmul fast float %2129, %2025
  %2131 = fadd fast float %2130, 1.000000e+00
  %2132 = fadd fast float %1597, -1.000000e+00
  %2133 = fmul fast float %2131, %2132
  %2134 = fadd fast float %2133, 1.000000e+00
  %2135 = fsub fast float %2117, %1594
  %2136 = fsub fast float %2118, %1595
  %2137 = fsub fast float %2119, %1596
  %2138 = fmul fast float %2127, %2135
  %2139 = fmul fast float %2127, %2136
  %2140 = fmul fast float %2127, %2137
  %2141 = fadd fast float %2138, %1594
  %2142 = fadd fast float %2139, %1595
  %2143 = fadd fast float %2140, %1596
  %2144 = fsub fast float %76, %1573
  %2145 = fsub fast float %77, %1574
  %2146 = fsub fast float %78, %1575
  %2147 = fmul fast float %2127, %2144
  %2148 = fmul fast float %2127, %2145
  %2149 = fmul fast float %2127, %2146
  %2150 = fadd fast float %2147, %1573
  %2151 = fadd fast float %2148, %1574
  %2152 = fadd fast float %2149, %1575
  %2153 = fmul fast float %2127, %2122
  %2154 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2155 = fsub fast float 1.000000e+00, %2154
  %2156 = fmul fast float %2153, %2155
  %2157 = fadd fast float %2156, %2154
  %2158 = fsub fast float 1.000000e+00, %1557
  %2159 = fmul fast float %2127, %2158
  %2160 = fadd fast float %2159, %1557
  %2161 = call float @dx.op.dot3.f32(i32 55, float %2150, float %2151, float %2152, float %2150, float %2151, float %2152)  ; Dot3(ax,ay,az,bx,by,bz)
  %2162 = call float @dx.op.unary.f32(i32 25, float %2161)  ; Rsqrt(value)
  %2163 = fmul fast float %2150, %2162
  %2164 = fmul fast float %2151, %2162
  %2165 = fmul fast float %2152, %2162
  br label %2166

; <label>:2166                                    ; preds = %1998, %1991
  %2167 = phi float [ %1997, %1991 ], [ %2004, %1998 ]
  %2168 = phi float [ %1996, %1991 ], [ %2002, %1998 ]
  %2169 = phi float [ %1995, %1991 ], [ %2000, %1998 ]
  %2170 = phi float [ %1994, %1991 ], [ %2003, %1998 ]
  %2171 = phi float [ %1993, %1991 ], [ %2001, %1998 ]
  %2172 = phi float [ %1992, %1991 ], [ %1999, %1998 ]
  %2173 = phi float [ %1609, %1991 ], [ %2050, %1998 ]
  %2174 = phi float [ %1610, %1991 ], [ %2051, %1998 ]
  %2175 = phi float [ %1611, %1991 ], [ %2052, %1998 ]
  %2176 = phi float [ %1573, %1991 ], [ %2163, %1998 ]
  %2177 = phi float [ %1574, %1991 ], [ %2164, %1998 ]
  %2178 = phi float [ %1575, %1991 ], [ %2165, %1998 ]
  %2179 = phi float [ %1594, %1991 ], [ %2141, %1998 ]
  %2180 = phi float [ %1595, %1991 ], [ %2142, %1998 ]
  %2181 = phi float [ %1596, %1991 ], [ %2143, %1998 ]
  %2182 = phi float [ %1597, %1991 ], [ %2157, %1998 ]
  %2183 = phi float [ %1557, %1991 ], [ %2160, %1998 ]
  %2184 = fsub fast float -0.000000e+00, %149
  %2185 = select i1 %238, float 0.000000e+00, float %2181
  %2186 = call float @dx.op.dot3.f32(i32 55, float %2176, float %2177, float %2178, float %2169, float %2168, float %2167)  ; Dot3(ax,ay,az,bx,by,bz)
  %2187 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2188 = call float @dx.op.dot3.f32(i32 55, float %2172, float %2171, float %2170, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %2189 = fmul fast float %2188, 2.000000e+00
  %2190 = fmul fast float %2189, %2176
  %2191 = fmul fast float %2189, %2177
  %2192 = fmul fast float %2189, %2178
  %2193 = fsub fast float %2172, %2190
  %2194 = fsub fast float %2171, %2191
  %2195 = fsub fast float %2170, %2192
  %2196 = call float @dx.op.binary.f32(i32 36, float %2183, float 1.000000e+00)  ; FMin(a,b)
  %2197 = fsub fast float 1.000000e+00, %2196
  %2198 = bitcast float %2197 to i32
  %2199 = ashr i32 %2198, 1
  %2200 = add nsw i32 %2199, 532487669
  %2201 = bitcast i32 %2200 to float
  %2202 = fsub fast float 1.000000e+00, %2182
  %2203 = call float @dx.op.binary.f32(i32 35, float %2202, float 0x3F847AE140000000)  ; FMax(a,b)
  %2204 = fmul fast float %2203, %2203
  %2205 = fmul fast float %2204, %2204
  %2206 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2201, float %2205, float %2206, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2208 = extractvalue %dx.types.ResRet.f32 %2207, 0
  %2209 = fsub fast float 1.000000e+00, %2183
  %2210 = bitcast float %2209 to i32
  %2211 = sub nsw i32 2129859010, %2210
  %2212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2213 = extractvalue %dx.types.CBufRet.f32 %2212, 0
  %2214 = extractvalue %dx.types.CBufRet.f32 %2212, 1
  %2215 = fadd fast float %2213, %147
  %2216 = fadd fast float %2214, %148
  %2217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.i32 %2217, 0
  %2219 = icmp eq i32 %2218, 1
  br i1 %2219, label %2220, label %2255

; <label>:2220                                    ; preds = %2166
  %2221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2222 = extractvalue %dx.types.CBufRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.CBufRet.f32 %2221, 1
  %2224 = fsub fast float %2215, %2222
  %2225 = fsub fast float %2216, %2223
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 0
  %2228 = extractvalue %dx.types.CBufRet.f32 %2226, 1
  %2229 = fmul fast float %2224, %2227
  %2230 = fmul fast float %2225, %2228
  %2231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2229, float %2230, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2232 = extractvalue %dx.types.ResRet.f32 %2231, 0
  %2233 = fcmp fast ogt float %2232, 0.000000e+00
  %2234 = extractvalue %dx.types.CBufRet.i32 %2217, 3
  %2235 = icmp ne i32 %2234, 0
  %2236 = and i1 %2233, %2235
  br i1 %2236, label %2237, label %2255, !dx.controlflow.hints !105

; <label>:2237                                    ; preds = %2220
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 0
  %2240 = extractvalue %dx.types.CBufRet.f32 %2238, 1
  %2241 = fsub fast float %2215, %2239
  %2242 = fsub fast float %2216, %2240
  %2243 = fmul fast float %2241, %2241
  %2244 = fmul fast float %2242, %2242
  %2245 = fadd fast float %2243, %2244
  %2246 = uitofp i32 %2234 to float
  %2247 = fmul fast float %2246, %2246
  %2248 = fcmp fast ogt float %2245, %2247
  br i1 %2248, label %2255, label %2249

; <label>:2249                                    ; preds = %2237
  %2250 = call float @dx.op.unary.f32(i32 24, float %2245)  ; Sqrt(value)
  %2251 = fsub fast float %2246, %2250
  %2252 = fmul fast float %2251, 0x3F75555560000000
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = call float @dx.op.binary.f32(i32 36, float %2253, float %2232)  ; FMin(a,b)
  br label %2255

; <label>:2255                                    ; preds = %2249, %2237, %2220, %2166
  %2256 = phi float [ 1.000000e+00, %2166 ], [ %2254, %2249 ], [ %2232, %2220 ], [ 0.000000e+00, %2237 ]
  %2257 = fcmp fast ogt float %2256, 0.000000e+00
  br i1 %2257, label %2258, label %2357, !dx.controlflow.hints !106

; <label>:2258                                    ; preds = %2255
  %2259 = fadd fast float %178, 5.000000e-01
  %2260 = call float @dx.op.unary.f32(i32 27, float %2259)  ; Round_ni(value)
  %2261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %176, float %177, float %2260, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2262 = extractvalue %dx.types.ResRet.f32 %2261, 0
  %2263 = extractvalue %dx.types.ResRet.f32 %2261, 1
  %2264 = extractvalue %dx.types.ResRet.f32 %2261, 2
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 3
  %2267 = fmul fast float %2266, %2262
  %2268 = fmul fast float %2266, %2263
  %2269 = fmul fast float %2266, %2264
  %2270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %176, float %177, float %2260, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  %2272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %176, float %177, float %2260, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2273 = extractvalue %dx.types.ResRet.f32 %2272, 0
  %2274 = extractvalue %dx.types.ResRet.f32 %2272, 1
  %2275 = fmul fast float %2273, 2.000000e+00
  %2276 = fmul fast float %2274, 2.000000e+00
  %2277 = fadd fast float %2275, -1.000000e+00
  %2278 = fadd fast float %2276, -1.000000e+00
  %2279 = fadd fast float %2277, %2278
  %2280 = fmul fast float %2279, 5.000000e-01
  %2281 = fsub fast float %2277, %2278
  %2282 = fmul fast float %2281, 5.000000e-01
  %2283 = call float @dx.op.unary.f32(i32 6, float %2280)  ; FAbs(value)
  %2284 = fsub fast float 1.000000e+00, %2283
  %2285 = call float @dx.op.unary.f32(i32 6, float %2282)  ; FAbs(value)
  %2286 = fsub fast float %2284, %2285
  %2287 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2286)  ; FMax(a,b)
  %2288 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2282, float %2287, float %2280, float %2282, float %2287)  ; Dot3(ax,ay,az,bx,by,bz)
  %2289 = bitcast float %2288 to i32
  %2290 = ashr i32 %2289, 1
  %2291 = sub nsw i32 1597250115, %2290
  %2292 = bitcast i32 %2291 to float
  %2293 = fmul fast float %2292, %2280
  %2294 = fmul fast float %2292, %2282
  %2295 = fmul fast float %2292, %2287
  %2296 = fsub fast float 1.000000e+00, %2271
  %2297 = fdiv fast float %2296, %2295
  %2298 = fmul fast float %2295, %76
  %2299 = fmul fast float %2295, %77
  %2300 = fmul fast float %2295, %78
  %2301 = fmul fast float %2293, %72
  %2302 = fmul fast float %2293, %73
  %2303 = fmul fast float %2293, %74
  %2304 = fadd fast float %2298, %2301
  %2305 = fadd fast float %2299, %2302
  %2306 = fadd fast float %2300, %2303
  %2307 = fmul fast float %2294, %111
  %2308 = fmul fast float %2294, %112
  %2309 = fmul fast float %2294, %113
  %2310 = fadd fast float %2304, %2307
  %2311 = fadd fast float %2305, %2308
  %2312 = fadd fast float %2306, %2309
  %2313 = call float @dx.op.dot3.f32(i32 55, float %2310, float %2311, float %2312, float %2310, float %2311, float %2312)  ; Dot3(ax,ay,az,bx,by,bz)
  %2314 = call float @dx.op.unary.f32(i32 25, float %2313)  ; Rsqrt(value)
  %2315 = fmul fast float %2310, %2314
  %2316 = fmul fast float %2311, %2314
  %2317 = fmul fast float %2312, %2314
  %2318 = call float @dx.op.dot3.f32(i32 55, float %2176, float %2177, float %2178, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %2319 = call float @dx.op.unary.f32(i32 7, float %2318)  ; Saturate(value)
  %2320 = fmul fast float %2319, 5.000000e-01
  %2321 = fadd fast float %2320, 5.000000e-01
  %2322 = fmul fast float %2321, %2271
  %2323 = call float @dx.op.dot3.f32(i32 55, float %2176, float %2177, float %2178, float %2315, float %2316, float %2317)  ; Dot3(ax,ay,az,bx,by,bz)
  %2324 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  %2325 = fmul fast float %2324, %2297
  %2326 = fadd fast float %2322, %2325
  %2327 = fsub fast float 5.000000e-01, %2320
  %2328 = fmul fast float %2327, %2173
  %2329 = fmul fast float %2327, %2174
  %2330 = fmul fast float %2327, %2175
  %2331 = fadd fast float %2326, %2328
  %2332 = fmul fast float %2331, %2267
  %2333 = fadd fast float %2326, %2329
  %2334 = fmul fast float %2333, %2268
  %2335 = fadd fast float %2326, %2330
  %2336 = fmul fast float %2335, %2269
  %2337 = call float @dx.op.dot3.f32(i32 55, float %2193, float %2194, float %2195, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %2338 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2339 = fmul fast float %2338, 5.000000e-01
  %2340 = fadd fast float %2339, 5.000000e-01
  %2341 = fmul fast float %2340, %2271
  %2342 = call float @dx.op.dot3.f32(i32 55, float %2193, float %2194, float %2195, float %2315, float %2316, float %2317)  ; Dot3(ax,ay,az,bx,by,bz)
  %2343 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  %2344 = fmul fast float %2343, %2297
  %2345 = fadd fast float %2341, %2344
  %2346 = fsub fast float 5.000000e-01, %2339
  %2347 = fmul fast float %2346, %2173
  %2348 = fmul fast float %2346, %2174
  %2349 = fmul fast float %2346, %2175
  %2350 = fadd fast float %2345, %2347
  %2351 = fmul fast float %2350, %2267
  %2352 = fadd fast float %2345, %2348
  %2353 = fmul fast float %2352, %2268
  %2354 = fadd fast float %2345, %2349
  %2355 = fmul fast float %2354, %2269
  %2356 = call float @dx.op.dot3.f32(i32 55, float %2267, float %2268, float %2269, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2357

; <label>:2357                                    ; preds = %2258, %2255
  %2358 = phi float [ %2356, %2258 ], [ 0.000000e+00, %2255 ]
  %2359 = phi float [ %2351, %2258 ], [ 0.000000e+00, %2255 ]
  %2360 = phi float [ %2353, %2258 ], [ 0.000000e+00, %2255 ]
  %2361 = phi float [ %2355, %2258 ], [ 0.000000e+00, %2255 ]
  %2362 = phi float [ %2332, %2258 ], [ 0.000000e+00, %2255 ]
  %2363 = phi float [ %2334, %2258 ], [ 0.000000e+00, %2255 ]
  %2364 = phi float [ %2336, %2258 ], [ 0.000000e+00, %2255 ]
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 0
  %2367 = fcmp fast ogt float %2366, 0.000000e+00
  %2368 = and i1 %2257, %2367
  br i1 %2368, label %2369, label %2573, !dx.controlflow.hints !107

; <label>:2369                                    ; preds = %2357
  %2370 = extractvalue %dx.types.CBufRet.f32 %2212, 2
  %2371 = fadd fast float %2370, %149
  %2372 = fmul fast float %2176, 3.200000e+01
  %2373 = fmul fast float %2177, 3.200000e+01
  %2374 = fadd fast float %2215, %2372
  %2375 = fadd fast float %2216, %2373
  %2376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2377 = extractvalue %dx.types.CBufRet.f32 %2376, 0
  %2378 = extractvalue %dx.types.CBufRet.f32 %2376, 1
  %2379 = fsub fast float %2374, %2377
  %2380 = fsub fast float %2375, %2378
  %2381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2382 = extractvalue %dx.types.CBufRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.CBufRet.f32 %2381, 1
  %2384 = fmul fast float %2379, %2382
  %2385 = fmul fast float %2380, %2383
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 0
  %2388 = extractvalue %dx.types.CBufRet.f32 %2386, 1
  %2389 = fsub fast float %2215, %2387
  %2390 = fsub fast float %2216, %2388
  %2391 = fmul fast float %2389, %2389
  %2392 = fmul fast float %2390, %2390
  %2393 = fadd fast float %2391, %2392
  %2394 = call float @dx.op.unary.f32(i32 24, float %2393)  ; Sqrt(value)
  %2395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2396 = extractvalue %dx.types.CBufRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.CBufRet.f32 %2395, 1
  %2398 = fsub fast float %2394, %2396
  %2399 = fdiv fast float %2398, %2397
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  %2401 = fmul fast float %2400, 2.000000e+00
  %2402 = fsub fast float 3.000000e+00, %2401
  %2403 = fmul fast float %2400, %2400
  %2404 = fmul fast float %2403, %2402
  %2405 = fcmp fast oge float %2384, 0.000000e+00
  %2406 = fcmp fast ole float %2384, 1.000000e+00
  %2407 = and i1 %2406, %2405
  %2408 = fcmp fast oge float %2385, 0.000000e+00
  %2409 = and i1 %2408, %2407
  %2410 = fcmp fast ole float %2385, 1.000000e+00
  %2411 = and i1 %2410, %2409
  %2412 = fcmp fast ogt float %2404, 0.000000e+00
  %2413 = and i1 %2412, %2411
  br i1 %2413, label %2414, label %2537, !dx.controlflow.hints !108

; <label>:2414                                    ; preds = %2369
  %2415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2416 = extractvalue %dx.types.CBufRet.f32 %2415, 2
  %2417 = extractvalue %dx.types.CBufRet.f32 %2415, 3
  %2418 = fmul fast float %2416, %2384
  %2419 = fmul fast float %2417, %2385
  %2420 = call float @dx.op.unary.f32(i32 27, float %2418)  ; Round_ni(value)
  %2421 = call float @dx.op.unary.f32(i32 27, float %2419)  ; Round_ni(value)
  %2422 = fptosi float %2420 to i32
  %2423 = fptosi float %2421 to i32
  %2424 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2422, i32 %2423, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = lshr i32 %2425, 16
  %2427 = icmp eq i32 %2426, 65535
  br i1 %2427, label %2537, label %2428

; <label>:2428                                    ; preds = %2414
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 0
  %2431 = fmul fast float %2430, %2384
  %2432 = extractvalue %dx.types.CBufRet.f32 %2429, 1
  %2433 = fadd fast float %2431, %2432
  %2434 = extractvalue %dx.types.CBufRet.f32 %2429, 2
  %2435 = fmul fast float %2434, %2385
  %2436 = extractvalue %dx.types.CBufRet.f32 %2429, 3
  %2437 = fadd fast float %2435, %2436
  %2438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2433, float %2437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2439 = extractvalue %dx.types.ResRet.f32 %2438, 0
  %2440 = extractvalue %dx.types.ResRet.f32 %2438, 1
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 1
  %2443 = extractvalue %dx.types.CBufRet.f32 %2441, 0
  %2444 = fsub fast float %2442, %2443
  %2445 = fmul fast float %2444, %2439
  %2446 = fadd fast float %2445, %2443
  %2447 = extractvalue %dx.types.CBufRet.f32 %2441, 3
  %2448 = extractvalue %dx.types.CBufRet.f32 %2441, 2
  %2449 = fsub fast float %2447, %2448
  %2450 = fmul fast float %2449, %2440
  %2451 = fadd fast float %2450, %2448
  %2452 = fsub fast float %2371, %2446
  %2453 = fsub fast float %2451, %2446
  %2454 = fdiv fast float %2452, %2453
  %2455 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  %2456 = extractvalue %dx.types.CBufRet.f32 %2365, 1
  %2457 = extractvalue %dx.types.CBufRet.f32 %2415, 0
  %2458 = extractvalue %dx.types.CBufRet.f32 %2415, 1
  %2459 = fmul fast float %2457, %2384
  %2460 = fmul fast float %2458, %2385
  %2461 = fmul fast float %2459, 1.250000e-01
  %2462 = fmul fast float %2460, 1.250000e-01
  %2463 = call float @dx.op.unary.f32(i32 27, float %2461)  ; Round_ni(value)
  %2464 = call float @dx.op.unary.f32(i32 27, float %2462)  ; Round_ni(value)
  %2465 = fmul fast float %2463, 8.000000e+00
  %2466 = fmul fast float %2464, 8.000000e+00
  %2467 = fsub fast float %2459, %2465
  %2468 = fsub fast float %2460, %2466
  %2469 = fadd fast float %2467, 5.000000e-01
  %2470 = fadd fast float %2468, 5.000000e-01
  %2471 = and i32 %2426, 255
  %2472 = lshr i32 %2425, 24
  %2473 = mul nuw nsw i32 %2471, 9
  %2474 = uitofp i32 %2473 to float
  %2475 = mul nuw nsw i32 %2472, 9
  %2476 = uitofp i32 %2475 to float
  %2477 = fadd fast float %2469, %2474
  %2478 = fadd fast float %2470, %2476
  %2479 = fdiv fast float %2477, %2366
  %2480 = fdiv fast float %2478, %2456
  %2481 = fmul fast float %2455, 4.375000e-01
  %2482 = fadd fast float %2481, 3.125000e-02
  %2483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2479, float %2480, float %2482, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.ResRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.ResRet.f32 %2483, 2
  %2487 = fadd fast float %2481, 5.312500e-01
  %2488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2479, float %2480, float %2487, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2489 = extractvalue %dx.types.ResRet.f32 %2488, 0
  %2490 = extractvalue %dx.types.ResRet.f32 %2488, 1
  %2491 = extractvalue %dx.types.ResRet.f32 %2488, 2
  %2492 = fmul fast float %2489, 2.000000e+00
  %2493 = fmul fast float %2490, 2.000000e+00
  %2494 = fmul fast float %2491, 2.000000e+00
  %2495 = fadd fast float %2492, -1.000000e+00
  %2496 = fadd fast float %2493, -1.000000e+00
  %2497 = fadd fast float %2494, -1.000000e+00
  %2498 = fmul fast float %2495, %2495
  %2499 = fmul fast float %2496, %2496
  %2500 = fadd fast float %2498, %2499
  %2501 = fmul fast float %2497, %2497
  %2502 = fadd fast float %2500, %2501
  %2503 = call float @dx.op.unary.f32(i32 24, float %2502)  ; Sqrt(value)
  %2504 = fcmp fast ogt float %2503, 0.000000e+00
  br i1 %2504, label %2505, label %2509

; <label>:2505                                    ; preds = %2428
  %2506 = fdiv fast float %2495, %2503
  %2507 = fdiv fast float %2496, %2503
  %2508 = fdiv fast float %2497, %2503
  br label %2509

; <label>:2509                                    ; preds = %2505, %2428
  %2510 = phi float [ %2506, %2505 ], [ 0.000000e+00, %2428 ]
  %2511 = phi float [ %2507, %2505 ], [ 0.000000e+00, %2428 ]
  %2512 = phi float [ %2508, %2505 ], [ 0.000000e+00, %2428 ]
  %2513 = call float @dx.op.dot3.f32(i32 55, float %2510, float %2511, float %2512, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %2514 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2513)  ; FMax(a,b)
  %2515 = fmul fast float %2514, 0x400C5BF8A0000000
  %2516 = fmul fast float %2484, %2404
  %2517 = fmul fast float %2516, %2515
  %2518 = fmul fast float %2485, %2404
  %2519 = fmul fast float %2518, %2515
  %2520 = fmul fast float %2486, %2404
  %2521 = fmul fast float %2520, %2515
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 3
  %2524 = fmul fast float %2517, %2523
  %2525 = fmul fast float %2519, %2523
  %2526 = fmul fast float %2521, %2523
  %2527 = fcmp fast ogt float %2371, %2451
  br i1 %2527, label %2528, label %2537

; <label>:2528                                    ; preds = %2509
  %2529 = fmul fast float %2453, 0x3FC24924A0000000
  %2530 = fsub fast float %2371, %2451
  %2531 = fdiv fast float %2530, %2529
  %2532 = call float @dx.op.unary.f32(i32 7, float %2531)  ; Saturate(value)
  %2533 = fsub fast float 1.000000e+00, %2532
  %2534 = fmul fast float %2533, %2524
  %2535 = fmul fast float %2533, %2525
  %2536 = fmul fast float %2533, %2526
  br label %2537

; <label>:2537                                    ; preds = %2528, %2509, %2414, %2369
  %2538 = phi float [ %2536, %2528 ], [ %2526, %2509 ], [ 0.000000e+00, %2414 ], [ 0.000000e+00, %2369 ]
  %2539 = phi float [ %2535, %2528 ], [ %2525, %2509 ], [ 0.000000e+00, %2414 ], [ 0.000000e+00, %2369 ]
  %2540 = phi float [ %2534, %2528 ], [ %2524, %2509 ], [ 0.000000e+00, %2414 ], [ 0.000000e+00, %2369 ]
  %2541 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2540)  ; FMax(a,b)
  %2542 = fmul fast float %2541, 0x3FD20DD760000000
  %2543 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2193, float %2194, float %2195)  ; Dot3(ax,ay,az,bx,by,bz)
  %2544 = fmul fast float %2543, 0x3FDF454380000000
  %2545 = fmul fast float %2543, %2543
  %2546 = fmul fast float %2545, 0x3FEE471020000000
  %2547 = fadd fast float %2546, 0xBFD42F6020000000
  %2548 = call float @dx.op.dot3.f32(i32 55, float %2541, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2544, float %2547)  ; Dot3(ax,ay,az,bx,by,bz)
  %2549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2539)  ; FMax(a,b)
  %2550 = fmul fast float %2549, 0x3FD20DD760000000
  %2551 = call float @dx.op.dot3.f32(i32 55, float %2549, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2544, float %2547)  ; Dot3(ax,ay,az,bx,by,bz)
  %2552 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2538)  ; FMax(a,b)
  %2553 = fmul fast float %2552, 0x3FD20DD760000000
  %2554 = call float @dx.op.dot3.f32(i32 55, float %2552, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2544, float %2547)  ; Dot3(ax,ay,az,bx,by,bz)
  %2555 = call float @dx.op.binary.f32(i32 35, float %2542, float 0.000000e+00)  ; FMax(a,b)
  %2556 = call float @dx.op.binary.f32(i32 35, float %2550, float 0.000000e+00)  ; FMax(a,b)
  %2557 = call float @dx.op.binary.f32(i32 35, float %2553, float 0.000000e+00)  ; FMax(a,b)
  %2558 = call float @dx.op.binary.f32(i32 35, float %2548, float 0.000000e+00)  ; FMax(a,b)
  %2559 = call float @dx.op.binary.f32(i32 35, float %2551, float 0.000000e+00)  ; FMax(a,b)
  %2560 = call float @dx.op.binary.f32(i32 35, float %2554, float 0.000000e+00)  ; FMax(a,b)
  %2561 = fmul fast float %2555, %2256
  %2562 = fmul fast float %2556, %2256
  %2563 = fmul fast float %2557, %2256
  %2564 = fadd fast float %2561, %2362
  %2565 = fadd fast float %2562, %2363
  %2566 = fadd fast float %2563, %2364
  %2567 = fmul fast float %2558, %2256
  %2568 = fmul fast float %2559, %2256
  %2569 = fmul fast float %2560, %2256
  %2570 = fadd fast float %2567, %2359
  %2571 = fadd fast float %2568, %2360
  %2572 = fadd fast float %2569, %2361
  br label %2573

; <label>:2573                                    ; preds = %2537, %2357
  %2574 = phi float [ %2570, %2537 ], [ %2359, %2357 ]
  %2575 = phi float [ %2571, %2537 ], [ %2360, %2357 ]
  %2576 = phi float [ %2572, %2537 ], [ %2361, %2357 ]
  %2577 = phi float [ %2564, %2537 ], [ %2362, %2357 ]
  %2578 = phi float [ %2565, %2537 ], [ %2363, %2357 ]
  %2579 = phi float [ %2566, %2537 ], [ %2364, %2357 ]
  %2580 = fcmp fast olt float %2256, 1.000000e+00
  br i1 %2580, label %2581, label %3404, !dx.controlflow.hints !109

; <label>:2581                                    ; preds = %2573
  %2582 = extractvalue %dx.types.CBufRet.f32 %2212, 2
  %2583 = fadd fast float %2582, %149
  %2584 = fmul fast float %2176, 3.200000e+01
  %2585 = fmul fast float %2177, 3.200000e+01
  %2586 = fadd fast float %2215, %2584
  %2587 = fadd fast float %2216, %2585
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 0
  %2590 = extractvalue %dx.types.CBufRet.f32 %2588, 1
  %2591 = fsub fast float %2586, %2589
  %2592 = fsub fast float %2587, %2590
  %2593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2594 = extractvalue %dx.types.CBufRet.f32 %2593, 0
  %2595 = extractvalue %dx.types.CBufRet.f32 %2593, 1
  %2596 = fmul fast float %2591, %2594
  %2597 = fmul fast float %2592, %2595
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 0
  %2600 = fmul fast float %2596, %2599
  %2601 = extractvalue %dx.types.CBufRet.f32 %2598, 1
  %2602 = fadd fast float %2600, %2601
  %2603 = extractvalue %dx.types.CBufRet.f32 %2598, 2
  %2604 = fmul fast float %2603, %2597
  %2605 = extractvalue %dx.types.CBufRet.f32 %2598, 3
  %2606 = fadd fast float %2604, %2605
  %2607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2602, float %2606, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2608 = extractvalue %dx.types.ResRet.f32 %2607, 0
  %2609 = extractvalue %dx.types.ResRet.f32 %2607, 1
  %2610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2611 = extractvalue %dx.types.CBufRet.f32 %2610, 1
  %2612 = extractvalue %dx.types.CBufRet.f32 %2610, 0
  %2613 = fsub fast float %2611, %2612
  %2614 = fmul fast float %2613, %2608
  %2615 = fadd fast float %2614, %2612
  %2616 = extractvalue %dx.types.CBufRet.f32 %2610, 3
  %2617 = extractvalue %dx.types.CBufRet.f32 %2610, 2
  %2618 = fsub fast float %2616, %2617
  %2619 = fmul fast float %2618, %2609
  %2620 = fadd fast float %2619, %2617
  %2621 = fsub fast float %2583, %2615
  %2622 = fsub fast float %2620, %2615
  %2623 = fdiv fast float %2621, %2622
  %2624 = call float @dx.op.unary.f32(i32 7, float %2623)  ; Saturate(value)
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 0
  %2627 = fmul fast float %2626, %2624
  %2628 = extractvalue %dx.types.CBufRet.f32 %2625, 1
  %2629 = fadd fast float %2627, %2628
  %2630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2602, float %2606, float %2629, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2631 = extractvalue %dx.types.ResRet.f32 %2630, 0
  %2632 = extractvalue %dx.types.ResRet.f32 %2630, 1
  %2633 = extractvalue %dx.types.ResRet.f32 %2630, 2
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.CBufRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.CBufRet.f32 %2634, 2
  %2638 = fmul fast float %2635, %2631
  %2639 = fmul fast float %2636, %2632
  %2640 = fmul fast float %2637, %2633
  %2641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2642 = extractvalue %dx.types.CBufRet.f32 %2641, 0
  %2643 = extractvalue %dx.types.CBufRet.f32 %2641, 1
  %2644 = extractvalue %dx.types.CBufRet.f32 %2641, 2
  %2645 = fadd fast float %2638, %2642
  %2646 = fadd fast float %2639, %2643
  %2647 = fadd fast float %2640, %2644
  %2648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2649 = extractvalue %dx.types.CBufRet.f32 %2648, 0
  %2650 = fmul fast float %2649, %2596
  %2651 = extractvalue %dx.types.CBufRet.f32 %2648, 1
  %2652 = fadd fast float %2650, %2651
  %2653 = extractvalue %dx.types.CBufRet.f32 %2648, 2
  %2654 = fmul fast float %2653, %2597
  %2655 = extractvalue %dx.types.CBufRet.f32 %2648, 3
  %2656 = fadd fast float %2654, %2655
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.CBufRet.f32 %2657, 1
  %2660 = extractvalue %dx.types.CBufRet.f32 %2657, 2
  %2661 = extractvalue %dx.types.CBufRet.f32 %2657, 3
  %2662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2662, 0
  %2664 = extractvalue %dx.types.CBufRet.f32 %2662, 1
  %2665 = extractvalue %dx.types.CBufRet.f32 %2662, 2
  %2666 = extractvalue %dx.types.CBufRet.f32 %2662, 3
  %2667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2652, float %2656, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2668 = extractvalue %dx.types.ResRet.f32 %2667, 0
  %2669 = extractvalue %dx.types.ResRet.f32 %2667, 1
  %2670 = extractvalue %dx.types.ResRet.f32 %2667, 2
  %2671 = extractvalue %dx.types.ResRet.f32 %2667, 3
  %2672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2652, float %2656, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2673 = extractvalue %dx.types.ResRet.f32 %2672, 0
  %2674 = extractvalue %dx.types.ResRet.f32 %2672, 1
  %2675 = extractvalue %dx.types.ResRet.f32 %2672, 2
  %2676 = extractvalue %dx.types.ResRet.f32 %2672, 3
  %2677 = fmul fast float %2668, %2645
  %2678 = fmul fast float %2673, %2645
  %2679 = fmul fast float %2675, %2645
  %2680 = fmul fast float %2671, %2645
  %2681 = fadd fast float %2677, %2658
  %2682 = fadd fast float %2678, %2659
  %2683 = fadd fast float %2679, %2660
  %2684 = fadd fast float %2680, %2661
  %2685 = fmul fast float %2669, %2645
  %2686 = fmul fast float %2674, %2645
  %2687 = fadd fast float %2685, %2663
  %2688 = fadd fast float %2686, %2664
  %2689 = fmul fast float %2670, %2645
  %2690 = fmul fast float %2676, %2645
  %2691 = fadd fast float %2689, %2665
  %2692 = fadd fast float %2690, %2666
  %2693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2652, float %2656, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2694 = extractvalue %dx.types.ResRet.f32 %2693, 0
  %2695 = extractvalue %dx.types.ResRet.f32 %2693, 1
  %2696 = extractvalue %dx.types.ResRet.f32 %2693, 2
  %2697 = extractvalue %dx.types.ResRet.f32 %2693, 3
  %2698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2652, float %2656, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.ResRet.f32 %2698, 1
  %2701 = extractvalue %dx.types.ResRet.f32 %2698, 2
  %2702 = extractvalue %dx.types.ResRet.f32 %2698, 3
  %2703 = fmul fast float %2694, %2646
  %2704 = fmul fast float %2699, %2646
  %2705 = fmul fast float %2701, %2646
  %2706 = fmul fast float %2697, %2646
  %2707 = fadd fast float %2681, %2703
  %2708 = fadd fast float %2682, %2704
  %2709 = fadd fast float %2683, %2705
  %2710 = fadd fast float %2684, %2706
  %2711 = fmul fast float %2695, %2646
  %2712 = fmul fast float %2700, %2646
  %2713 = fadd fast float %2687, %2711
  %2714 = fadd fast float %2688, %2712
  %2715 = fmul fast float %2696, %2646
  %2716 = fmul fast float %2702, %2646
  %2717 = fadd fast float %2691, %2715
  %2718 = fadd fast float %2692, %2716
  %2719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2652, float %2656, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2720 = extractvalue %dx.types.ResRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.ResRet.f32 %2719, 1
  %2722 = extractvalue %dx.types.ResRet.f32 %2719, 2
  %2723 = extractvalue %dx.types.ResRet.f32 %2719, 3
  %2724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2652, float %2656, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 1
  %2727 = extractvalue %dx.types.ResRet.f32 %2724, 2
  %2728 = extractvalue %dx.types.ResRet.f32 %2724, 3
  %2729 = fmul fast float %2720, %2647
  %2730 = fmul fast float %2725, %2647
  %2731 = fmul fast float %2727, %2647
  %2732 = fmul fast float %2723, %2647
  %2733 = fadd fast float %2707, %2729
  %2734 = fadd fast float %2708, %2730
  %2735 = fadd fast float %2709, %2731
  %2736 = fadd fast float %2710, %2732
  %2737 = fmul fast float %2721, %2647
  %2738 = fmul fast float %2726, %2647
  %2739 = fadd fast float %2713, %2737
  %2740 = fadd fast float %2714, %2738
  %2741 = fmul fast float %2722, %2647
  %2742 = fmul fast float %2728, %2647
  %2743 = fadd fast float %2717, %2741
  %2744 = fadd fast float %2718, %2742
  %2745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2746 = extractvalue %dx.types.CBufRet.f32 %2745, 0
  %2747 = fsub fast float %2215, %2746
  %2748 = fsub fast float %2589, %2215
  %2749 = call float @dx.op.binary.f32(i32 35, float %2748, float %2747)  ; FMax(a,b)
  %2750 = extractvalue %dx.types.CBufRet.f32 %2745, 1
  %2751 = fsub fast float %2216, %2750
  %2752 = fsub fast float %2590, %2216
  %2753 = call float @dx.op.binary.f32(i32 35, float %2752, float %2751)  ; FMax(a,b)
  %2754 = call float @dx.op.binary.f32(i32 35, float %2749, float %2753)  ; FMax(a,b)
  %2755 = extractvalue %dx.types.CBufRet.f32 %2593, 3
  %2756 = fmul fast float %2755, %2754
  %2757 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  %2758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.CBufRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.CBufRet.f32 %2758, 2
  %2762 = extractvalue %dx.types.CBufRet.f32 %2758, 3
  %2763 = fsub fast float %2759, %2733
  %2764 = fsub fast float %2760, %2734
  %2765 = fsub fast float %2761, %2735
  %2766 = fsub fast float %2762, %2736
  %2767 = fmul fast float %2763, %2757
  %2768 = fmul fast float %2764, %2757
  %2769 = fmul fast float %2765, %2757
  %2770 = fmul fast float %2766, %2757
  %2771 = fadd fast float %2767, %2733
  %2772 = fadd fast float %2768, %2734
  %2773 = fadd fast float %2769, %2735
  %2774 = fadd fast float %2770, %2736
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2778 = fsub fast float %2776, %2739
  %2779 = fsub fast float %2777, %2740
  %2780 = fmul fast float %2778, %2757
  %2781 = fmul fast float %2779, %2757
  %2782 = fadd fast float %2780, %2739
  %2783 = fadd fast float %2781, %2740
  %2784 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2785 = extractvalue %dx.types.CBufRet.f32 %2775, 3
  %2786 = fsub fast float %2784, %2743
  %2787 = fsub fast float %2785, %2744
  %2788 = fmul fast float %2786, %2757
  %2789 = fmul fast float %2787, %2757
  %2790 = fadd fast float %2788, %2743
  %2791 = fadd fast float %2789, %2744
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = fmul fast float %2793, %2771
  %2795 = fmul fast float %2793, %2772
  %2796 = fmul fast float %2793, %2773
  %2797 = fmul fast float %2793, %2774
  %2798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2799 = extractvalue %dx.types.CBufRet.f32 %2798, 0
  %2800 = fmul fast float %2799, %2782
  %2801 = fmul fast float %2799, %2783
  %2802 = fadd fast float %2800, %2794
  %2803 = fadd fast float %2801, %2796
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = fmul fast float %2805, %2790
  %2807 = fmul fast float %2805, %2791
  %2808 = fadd fast float %2802, %2806
  %2809 = fadd fast float %2803, %2807
  %2810 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2811 = fmul fast float %2810, %2771
  %2812 = fmul fast float %2810, %2772
  %2813 = fmul fast float %2810, %2773
  %2814 = fmul fast float %2810, %2774
  %2815 = extractvalue %dx.types.CBufRet.f32 %2798, 1
  %2816 = fmul fast float %2815, %2782
  %2817 = fmul fast float %2815, %2783
  %2818 = fadd fast float %2816, %2811
  %2819 = fadd fast float %2817, %2813
  %2820 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2821 = fmul fast float %2820, %2790
  %2822 = fmul fast float %2820, %2791
  %2823 = fadd fast float %2818, %2821
  %2824 = fadd fast float %2819, %2822
  %2825 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2826 = fmul fast float %2825, %2771
  %2827 = fmul fast float %2825, %2772
  %2828 = fmul fast float %2825, %2773
  %2829 = fmul fast float %2825, %2774
  %2830 = extractvalue %dx.types.CBufRet.f32 %2798, 2
  %2831 = fmul fast float %2830, %2782
  %2832 = fmul fast float %2830, %2783
  %2833 = fadd fast float %2831, %2826
  %2834 = fadd fast float %2832, %2828
  %2835 = extractvalue %dx.types.CBufRet.f32 %2804, 2
  %2836 = fmul fast float %2835, %2790
  %2837 = fmul fast float %2835, %2791
  %2838 = fadd fast float %2833, %2836
  %2839 = fadd fast float %2834, %2837
  %2840 = fmul fast float %2827, %2827
  %2841 = fmul fast float %2839, %2839
  %2842 = fmul fast float %2829, %2829
  %2843 = fadd fast float %2842, %2840
  %2844 = fadd fast float %2843, %2841
  %2845 = call float @dx.op.unary.f32(i32 24, float %2844)  ; Sqrt(value)
  %2846 = fcmp fast ugt float %2845, 0.000000e+00
  br i1 %2846, label %2847, label %2862

; <label>:2847                                    ; preds = %2581
  %2848 = fsub fast float -0.000000e+00, %2829
  %2849 = fdiv fast float %2848, %2845
  %2850 = fsub fast float -0.000000e+00, %2827
  %2851 = fdiv fast float %2850, %2845
  %2852 = fdiv fast float %2839, %2845
  %2853 = fmul fast float %2838, 0x3FE279A760000000
  %2854 = fmul fast float %2851, %2827
  %2855 = fmul fast float %2852, %2839
  %2856 = fmul fast float %2849, %2829
  %2857 = fadd fast float %2854, %2856
  %2858 = fsub fast float %2857, %2855
  %2859 = call float @dx.op.unary.f32(i32 6, float %2858)  ; FAbs(value)
  %2860 = fadd fast float %2859, 0x3DDB7CDFE0000000
  %2861 = fdiv fast float %2853, %2860
  br label %2862

; <label>:2862                                    ; preds = %2847, %2581
  %2863 = phi float [ %2861, %2847 ], [ 1.000000e+00, %2581 ]
  %2864 = fmul fast float %2812, %2812
  %2865 = fmul fast float %2824, %2824
  %2866 = fmul fast float %2814, %2814
  %2867 = fadd fast float %2866, %2864
  %2868 = fadd fast float %2867, %2865
  %2869 = call float @dx.op.unary.f32(i32 24, float %2868)  ; Sqrt(value)
  %2870 = fcmp fast ugt float %2869, 0.000000e+00
  br i1 %2870, label %2871, label %2886

; <label>:2871                                    ; preds = %2862
  %2872 = fsub fast float -0.000000e+00, %2814
  %2873 = fdiv fast float %2872, %2869
  %2874 = fsub fast float -0.000000e+00, %2812
  %2875 = fdiv fast float %2874, %2869
  %2876 = fdiv fast float %2824, %2869
  %2877 = fmul fast float %2823, 0x3FE279A760000000
  %2878 = fmul fast float %2875, %2812
  %2879 = fmul fast float %2876, %2824
  %2880 = fmul fast float %2873, %2814
  %2881 = fadd fast float %2878, %2880
  %2882 = fsub fast float %2881, %2879
  %2883 = call float @dx.op.unary.f32(i32 6, float %2882)  ; FAbs(value)
  %2884 = fadd fast float %2883, 0x3DDB7CDFE0000000
  %2885 = fdiv fast float %2877, %2884
  br label %2886

; <label>:2886                                    ; preds = %2871, %2862
  %2887 = phi float [ %2885, %2871 ], [ 1.000000e+00, %2862 ]
  %2888 = call float @dx.op.binary.f32(i32 36, float %2887, float %2863)  ; FMin(a,b)
  %2889 = fmul fast float %2795, %2795
  %2890 = fmul fast float %2809, %2809
  %2891 = fmul fast float %2797, %2797
  %2892 = fadd fast float %2891, %2889
  %2893 = fadd fast float %2892, %2890
  %2894 = call float @dx.op.unary.f32(i32 24, float %2893)  ; Sqrt(value)
  %2895 = fcmp fast ugt float %2894, 0.000000e+00
  br i1 %2895, label %2896, label %2911

; <label>:2896                                    ; preds = %2886
  %2897 = fsub fast float -0.000000e+00, %2797
  %2898 = fdiv fast float %2897, %2894
  %2899 = fsub fast float -0.000000e+00, %2795
  %2900 = fdiv fast float %2899, %2894
  %2901 = fdiv fast float %2809, %2894
  %2902 = fmul fast float %2808, 0x3FE279A760000000
  %2903 = fmul fast float %2900, %2795
  %2904 = fmul fast float %2901, %2809
  %2905 = fmul fast float %2898, %2797
  %2906 = fadd fast float %2903, %2905
  %2907 = fsub fast float %2906, %2904
  %2908 = call float @dx.op.unary.f32(i32 6, float %2907)  ; FAbs(value)
  %2909 = fadd fast float %2908, 0x3DDB7CDFE0000000
  %2910 = fdiv fast float %2902, %2909
  br label %2911

; <label>:2911                                    ; preds = %2896, %2886
  %2912 = phi float [ %2910, %2896 ], [ 1.000000e+00, %2886 ]
  %2913 = call float @dx.op.binary.f32(i32 36, float %2912, float %2888)  ; FMin(a,b)
  %2914 = call float @dx.op.unary.f32(i32 7, float %2913)  ; Saturate(value)
  %2915 = fcmp fast olt float %2914, 1.000000e+00
  br i1 %2915, label %2916, label %2926

; <label>:2916                                    ; preds = %2911
  %2917 = fmul fast float %2914, %2795
  %2918 = fmul fast float %2914, %2809
  %2919 = fmul fast float %2914, %2797
  %2920 = fmul fast float %2914, %2812
  %2921 = fmul fast float %2914, %2824
  %2922 = fmul fast float %2914, %2814
  %2923 = fmul fast float %2914, %2827
  %2924 = fmul fast float %2914, %2839
  %2925 = fmul fast float %2914, %2829
  br label %2926

; <label>:2926                                    ; preds = %2916, %2911
  %2927 = phi float [ %2923, %2916 ], [ %2827, %2911 ]
  %2928 = phi float [ %2924, %2916 ], [ %2839, %2911 ]
  %2929 = phi float [ %2925, %2916 ], [ %2829, %2911 ]
  %2930 = phi float [ %2920, %2916 ], [ %2812, %2911 ]
  %2931 = phi float [ %2921, %2916 ], [ %2824, %2911 ]
  %2932 = phi float [ %2922, %2916 ], [ %2814, %2911 ]
  %2933 = phi float [ %2917, %2916 ], [ %2795, %2911 ]
  %2934 = phi float [ %2918, %2916 ], [ %2809, %2911 ]
  %2935 = phi float [ %2919, %2916 ], [ %2797, %2911 ]
  %2936 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2808)  ; FMax(a,b)
  %2937 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2823)  ; FMax(a,b)
  %2938 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2838)  ; FMax(a,b)
  %2939 = fcmp fast oge float %2596, 0.000000e+00
  %2940 = and i1 %2939, %2367
  %2941 = fcmp fast ole float %2596, 1.000000e+00
  %2942 = and i1 %2941, %2940
  %2943 = fcmp fast oge float %2597, 0.000000e+00
  %2944 = and i1 %2943, %2942
  %2945 = fcmp fast ole float %2597, 1.000000e+00
  %2946 = and i1 %2945, %2944
  br i1 %2946, label %2947, label %3092, !dx.controlflow.hints !110

; <label>:2947                                    ; preds = %2926
  %2948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2949 = extractvalue %dx.types.CBufRet.f32 %2948, 2
  %2950 = extractvalue %dx.types.CBufRet.f32 %2948, 3
  %2951 = fmul fast float %2949, %2596
  %2952 = fmul fast float %2950, %2597
  %2953 = call float @dx.op.unary.f32(i32 27, float %2951)  ; Round_ni(value)
  %2954 = call float @dx.op.unary.f32(i32 27, float %2952)  ; Round_ni(value)
  %2955 = fptosi float %2953 to i32
  %2956 = fptosi float %2954 to i32
  %2957 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2955, i32 %2956, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 65535
  %2960 = lshr i32 %2958, 16
  %2961 = icmp eq i32 %2959, 65535
  br i1 %2961, label %2998, label %2962

; <label>:2962                                    ; preds = %2947
  %2963 = extractvalue %dx.types.CBufRet.f32 %2365, 1
  %2964 = extractvalue %dx.types.CBufRet.f32 %2948, 0
  %2965 = extractvalue %dx.types.CBufRet.f32 %2948, 1
  %2966 = fmul fast float %2964, %2596
  %2967 = fmul fast float %2965, %2597
  %2968 = fmul fast float %2966, 1.250000e-01
  %2969 = fmul fast float %2967, 1.250000e-01
  %2970 = call float @dx.op.unary.f32(i32 27, float %2968)  ; Round_ni(value)
  %2971 = call float @dx.op.unary.f32(i32 27, float %2969)  ; Round_ni(value)
  %2972 = fmul fast float %2970, 8.000000e+00
  %2973 = fmul fast float %2971, 8.000000e+00
  %2974 = and i32 %2958, 255
  %2975 = lshr i32 %2958, 8
  %2976 = and i32 %2975, 255
  %2977 = mul nuw nsw i32 %2974, 9
  %2978 = uitofp i32 %2977 to float
  %2979 = mul nuw nsw i32 %2976, 9
  %2980 = uitofp i32 %2979 to float
  %2981 = fadd fast float %2978, 5.000000e-01
  %2982 = fadd fast float %2981, %2966
  %2983 = fsub fast float %2982, %2972
  %2984 = fadd fast float %2980, 5.000000e-01
  %2985 = fadd fast float %2984, %2967
  %2986 = fsub fast float %2985, %2973
  %2987 = fdiv fast float %2983, %2366
  %2988 = fdiv fast float %2986, %2963
  %2989 = fmul fast float %2624, 4.375000e-01
  %2990 = fadd fast float %2989, 3.125000e-02
  %2991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2987, float %2988, float %2990, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = extractvalue %dx.types.ResRet.f32 %2991, 1
  %2994 = extractvalue %dx.types.ResRet.f32 %2991, 2
  %2995 = fadd fast float %2992, %2936
  %2996 = fadd fast float %2993, %2937
  %2997 = fadd fast float %2994, %2938
  br label %2998

; <label>:2998                                    ; preds = %2962, %2947
  %2999 = phi float [ %2997, %2962 ], [ %2938, %2947 ]
  %3000 = phi float [ %2996, %2962 ], [ %2937, %2947 ]
  %3001 = phi float [ %2995, %2962 ], [ %2936, %2947 ]
  %3002 = icmp eq i32 %2960, 65535
  br i1 %3002, label %3092, label %3003

; <label>:3003                                    ; preds = %2998
  %3004 = extractvalue %dx.types.CBufRet.f32 %2365, 1
  %3005 = extractvalue %dx.types.CBufRet.f32 %2948, 0
  %3006 = extractvalue %dx.types.CBufRet.f32 %2948, 1
  %3007 = fmul fast float %3005, %2596
  %3008 = fmul fast float %3006, %2597
  %3009 = fmul fast float %3007, 1.250000e-01
  %3010 = fmul fast float %3008, 1.250000e-01
  %3011 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3012 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3013 = fmul fast float %3011, 8.000000e+00
  %3014 = fmul fast float %3012, 8.000000e+00
  %3015 = fsub fast float %3007, %3013
  %3016 = fsub fast float %3008, %3014
  %3017 = fadd fast float %3015, 5.000000e-01
  %3018 = fadd fast float %3016, 5.000000e-01
  %3019 = and i32 %2960, 255
  %3020 = lshr i32 %2958, 24
  %3021 = mul nuw nsw i32 %3019, 9
  %3022 = uitofp i32 %3021 to float
  %3023 = mul nuw nsw i32 %3020, 9
  %3024 = uitofp i32 %3023 to float
  %3025 = fadd fast float %3017, %3022
  %3026 = fadd fast float %3018, %3024
  %3027 = fdiv fast float %3025, %2366
  %3028 = fdiv fast float %3026, %3004
  %3029 = fmul fast float %2624, 4.375000e-01
  %3030 = fadd fast float %3029, 3.125000e-02
  %3031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3027, float %3028, float %3030, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.ResRet.f32 %3031, 1
  %3034 = extractvalue %dx.types.ResRet.f32 %3031, 2
  %3035 = fadd fast float %3029, 5.312500e-01
  %3036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3027, float %3028, float %3035, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = extractvalue %dx.types.ResRet.f32 %3036, 1
  %3039 = extractvalue %dx.types.ResRet.f32 %3036, 2
  %3040 = fmul fast float %3037, 2.000000e+00
  %3041 = fmul fast float %3038, 2.000000e+00
  %3042 = fmul fast float %3039, 2.000000e+00
  %3043 = fadd fast float %3040, -1.000000e+00
  %3044 = fadd fast float %3041, -1.000000e+00
  %3045 = fadd fast float %3042, -1.000000e+00
  %3046 = fmul fast float %3043, %3043
  %3047 = fmul fast float %3044, %3044
  %3048 = fadd fast float %3046, %3047
  %3049 = fmul fast float %3045, %3045
  %3050 = fadd fast float %3048, %3049
  %3051 = call float @dx.op.unary.f32(i32 24, float %3050)  ; Sqrt(value)
  %3052 = fcmp fast ogt float %3051, 0.000000e+00
  br i1 %3052, label %3053, label %3057

; <label>:3053                                    ; preds = %3003
  %3054 = fdiv fast float %3043, %3051
  %3055 = fdiv fast float %3044, %3051
  %3056 = fdiv fast float %3045, %3051
  br label %3057

; <label>:3057                                    ; preds = %3053, %3003
  %3058 = phi float [ %3054, %3053 ], [ 0.000000e+00, %3003 ]
  %3059 = phi float [ %3055, %3053 ], [ 0.000000e+00, %3003 ]
  %3060 = phi float [ %3056, %3053 ], [ 0.000000e+00, %3003 ]
  %3061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3062 = extractvalue %dx.types.CBufRet.f32 %3061, 0
  %3063 = extractvalue %dx.types.CBufRet.f32 %3061, 1
  %3064 = fsub fast float %2215, %3062
  %3065 = fsub fast float %2216, %3063
  %3066 = fmul fast float %3064, %3064
  %3067 = fmul fast float %3065, %3065
  %3068 = fadd fast float %3066, %3067
  %3069 = call float @dx.op.unary.f32(i32 24, float %3068)  ; Sqrt(value)
  %3070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3071 = extractvalue %dx.types.CBufRet.f32 %3070, 0
  %3072 = extractvalue %dx.types.CBufRet.f32 %3070, 1
  %3073 = fsub fast float %3069, %3071
  %3074 = fdiv fast float %3073, %3072
  %3075 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3076 = fmul fast float %3075, 2.000000e+00
  %3077 = fsub fast float 3.000000e+00, %3076
  %3078 = fmul fast float %3075, %3075
  %3079 = fmul fast float %3078, %3077
  %3080 = call float @dx.op.dot3.f32(i32 55, float %3058, float %3059, float %3060, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %3081 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3080)  ; FMax(a,b)
  %3082 = fmul fast float %3081, 0x400C5BF8A0000000
  %3083 = fmul fast float %3079, %3032
  %3084 = fmul fast float %3083, %3082
  %3085 = fadd fast float %3084, %3001
  %3086 = fmul fast float %3079, %3033
  %3087 = fmul fast float %3086, %3082
  %3088 = fadd fast float %3087, %3000
  %3089 = fmul fast float %3079, %3034
  %3090 = fmul fast float %3089, %3082
  %3091 = fadd fast float %3090, %2999
  br label %3092

; <label>:3092                                    ; preds = %3057, %2998, %2926
  %3093 = phi float [ %3091, %3057 ], [ %2999, %2998 ], [ %2938, %2926 ]
  %3094 = phi float [ %3088, %3057 ], [ %3000, %2998 ], [ %2937, %2926 ]
  %3095 = phi float [ %3085, %3057 ], [ %3001, %2998 ], [ %2936, %2926 ]
  %3096 = fcmp fast ogt float %2583, %2620
  %3097 = and i1 %2939, %3096
  %3098 = and i1 %2941, %3097
  %3099 = and i1 %2943, %3098
  %3100 = and i1 %2945, %3099
  br i1 %3100, label %3101, label %3158, !dx.controlflow.hints !111

; <label>:3101                                    ; preds = %3092
  %3102 = fmul fast float %2622, 0x3FC24924A0000000
  %3103 = fsub fast float %2583, %2620
  %3104 = fdiv fast float %3103, %3102
  %3105 = call float @dx.op.unary.f32(i32 7, float %3104)  ; Saturate(value)
  %3106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3107 = extractvalue %dx.types.CBufRet.f32 %3106, 0
  %3108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.f32 %3108, 0
  %3110 = extractvalue %dx.types.CBufRet.f32 %3108, 1
  %3111 = extractvalue %dx.types.CBufRet.f32 %3108, 2
  %3112 = fsub fast float %3107, %3095
  %3113 = fsub fast float %3109, %2933
  %3114 = fsub fast float %3110, %2934
  %3115 = fsub fast float %3111, %2935
  %3116 = fmul fast float %3112, %3105
  %3117 = fmul fast float %3113, %3105
  %3118 = fmul fast float %3114, %3105
  %3119 = fmul fast float %3115, %3105
  %3120 = fadd fast float %3116, %3095
  %3121 = fadd fast float %3117, %2933
  %3122 = fadd fast float %3118, %2934
  %3123 = fadd fast float %3119, %2935
  %3124 = extractvalue %dx.types.CBufRet.f32 %3106, 1
  %3125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3126 = extractvalue %dx.types.CBufRet.f32 %3125, 0
  %3127 = extractvalue %dx.types.CBufRet.f32 %3125, 1
  %3128 = extractvalue %dx.types.CBufRet.f32 %3125, 2
  %3129 = fsub fast float %3124, %3094
  %3130 = fsub fast float %3126, %2930
  %3131 = fsub fast float %3127, %2931
  %3132 = fsub fast float %3128, %2932
  %3133 = fmul fast float %3129, %3105
  %3134 = fmul fast float %3130, %3105
  %3135 = fmul fast float %3131, %3105
  %3136 = fmul fast float %3132, %3105
  %3137 = fadd fast float %3133, %3094
  %3138 = fadd fast float %3134, %2930
  %3139 = fadd fast float %3135, %2931
  %3140 = fadd fast float %3136, %2932
  %3141 = extractvalue %dx.types.CBufRet.f32 %3106, 2
  %3142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3143 = extractvalue %dx.types.CBufRet.f32 %3142, 0
  %3144 = extractvalue %dx.types.CBufRet.f32 %3142, 1
  %3145 = extractvalue %dx.types.CBufRet.f32 %3142, 2
  %3146 = fsub fast float %3141, %3093
  %3147 = fsub fast float %3143, %2927
  %3148 = fsub fast float %3144, %2928
  %3149 = fsub fast float %3145, %2929
  %3150 = fmul fast float %3146, %3105
  %3151 = fmul fast float %3147, %3105
  %3152 = fmul fast float %3148, %3105
  %3153 = fmul fast float %3149, %3105
  %3154 = fadd fast float %3150, %3093
  %3155 = fadd fast float %3151, %2927
  %3156 = fadd fast float %3152, %2928
  %3157 = fadd fast float %3153, %2929
  br label %3158

; <label>:3158                                    ; preds = %3101, %3092
  %3159 = phi float [ %3154, %3101 ], [ %3093, %3092 ]
  %3160 = phi float [ %3155, %3101 ], [ %2927, %3092 ]
  %3161 = phi float [ %3156, %3101 ], [ %2928, %3092 ]
  %3162 = phi float [ %3157, %3101 ], [ %2929, %3092 ]
  %3163 = phi float [ %3137, %3101 ], [ %3094, %3092 ]
  %3164 = phi float [ %3138, %3101 ], [ %2930, %3092 ]
  %3165 = phi float [ %3139, %3101 ], [ %2931, %3092 ]
  %3166 = phi float [ %3140, %3101 ], [ %2932, %3092 ]
  %3167 = phi float [ %3120, %3101 ], [ %3095, %3092 ]
  %3168 = phi float [ %3121, %3101 ], [ %2933, %3092 ]
  %3169 = phi float [ %3122, %3101 ], [ %2934, %3092 ]
  %3170 = phi float [ %3123, %3101 ], [ %2935, %3092 ]
  %3171 = extractvalue %dx.types.CBufRet.f32 %2745, 3
  %3172 = fmul fast float %3171, %3167
  %3173 = fmul fast float %3171, %3163
  %3174 = fmul fast float %3171, %3159
  %3175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3176 = extractvalue %dx.types.CBufRet.f32 %3175, 3
  %3177 = fmul fast float %3172, %3176
  %3178 = fmul fast float %3173, %3176
  %3179 = fmul fast float %3174, %3176
  %3180 = call float @dx.op.dot3.f32(i32 55, float %3177, float %3178, float %3179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3181 = fmul fast float %3180, 0x3FD20DD760000000
  %3182 = fmul fast float %3168, 1.500000e+00
  %3183 = fmul fast float %3182, %3171
  %3184 = fmul fast float %3183, %3176
  %3185 = fmul fast float %3169, 1.500000e+00
  %3186 = fmul fast float %3185, %3171
  %3187 = fmul fast float %3186, %3176
  %3188 = fmul fast float %3170, 1.500000e+00
  %3189 = fmul fast float %3188, %3171
  %3190 = fmul fast float %3189, %3176
  %3191 = fmul fast float %3164, 1.500000e+00
  %3192 = fmul fast float %3191, %3171
  %3193 = fmul fast float %3192, %3176
  %3194 = fmul fast float %3165, 1.500000e+00
  %3195 = fmul fast float %3194, %3171
  %3196 = fmul fast float %3195, %3176
  %3197 = fmul fast float %3166, 1.500000e+00
  %3198 = fmul fast float %3197, %3171
  %3199 = fmul fast float %3198, %3176
  %3200 = fmul fast float %3160, 1.500000e+00
  %3201 = fmul fast float %3200, %3171
  %3202 = fmul fast float %3201, %3176
  %3203 = fmul fast float %3161, 1.500000e+00
  %3204 = fmul fast float %3203, %3171
  %3205 = fmul fast float %3204, %3176
  %3206 = fmul fast float %3162, 1.500000e+00
  %3207 = fmul fast float %3206, %3171
  %3208 = fmul fast float %3207, %3176
  %3209 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3177)  ; FMax(a,b)
  %3210 = call float @dx.op.dot3.f32(i32 55, float %3184, float %3187, float %3190, float %3184, float %3187, float %3190)  ; Dot3(ax,ay,az,bx,by,bz)
  %3211 = fcmp fast oeq float %3210, 0.000000e+00
  %3212 = fcmp fast oeq float %3209, 0.000000e+00
  %3213 = or i1 %3212, %3211
  br i1 %3213, label %3243, label %3214

; <label>:3214                                    ; preds = %3158
  %3215 = fsub fast float -0.000000e+00, %3190
  %3216 = fsub fast float -0.000000e+00, %3184
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
  %3227 = call float @dx.op.dot3.f32(i32 55, float %3215, float %3216, float %3187, float %3215, float %3216, float %3187)  ; Dot3(ax,ay,az,bx,by,bz)
  %3228 = call float @dx.op.unary.f32(i32 25, float %3227)  ; Rsqrt(value)
  %3229 = fmul fast float %3228, %3215
  %3230 = fmul fast float %3228, %3216
  %3231 = fmul fast float %3228, %3187
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

; <label>:3243                                    ; preds = %3214, %3158
  %3244 = phi float [ %3229, %3214 ], [ 0.000000e+00, %3158 ]
  %3245 = phi float [ %3230, %3214 ], [ 0.000000e+00, %3158 ]
  %3246 = phi float [ %3231, %3214 ], [ 0.000000e+00, %3158 ]
  %3247 = phi float [ %3238, %3214 ], [ 0.000000e+00, %3158 ]
  %3248 = phi float [ %3242, %3214 ], [ 0.000000e+00, %3158 ]
  %3249 = call float @dx.op.dot3.f32(i32 55, float %3244, float %3245, float %3246, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %3250 = fmul fast float %3249, %3249
  %3251 = fmul fast float %3250, 0x3FEE471020000000
  %3252 = fadd fast float %3251, 0xBFD42F6020000000
  %3253 = fmul fast float %3209, 0x3FD20DD760000000
  %3254 = fmul fast float %3252, %3248
  %3255 = fmul fast float %3247, 0x3FDF454380000000
  %3256 = fmul fast float %3255, %3249
  %3257 = fadd fast float %3256, %3253
  %3258 = fadd fast float %3257, %3254
  %3259 = call float @dx.op.dot3.f32(i32 55, float %3244, float %3245, float %3246, float %2193, float %2194, float %2195)  ; Dot3(ax,ay,az,bx,by,bz)
  %3260 = fmul fast float %3259, 0x3FDF454380000000
  %3261 = fmul fast float %3259, %3259
  %3262 = fmul fast float %3261, 0x3FEE471020000000
  %3263 = fadd fast float %3262, 0xBFD42F6020000000
  %3264 = call float @dx.op.dot3.f32(i32 55, float %3209, float %3247, float %3248, float 0x3FD20DD760000000, float %3260, float %3263)  ; Dot3(ax,ay,az,bx,by,bz)
  %3265 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3178)  ; FMax(a,b)
  %3266 = call float @dx.op.dot3.f32(i32 55, float %3193, float %3196, float %3199, float %3193, float %3196, float %3199)  ; Dot3(ax,ay,az,bx,by,bz)
  %3267 = fcmp fast oeq float %3266, 0.000000e+00
  %3268 = fcmp fast oeq float %3265, 0.000000e+00
  %3269 = or i1 %3268, %3267
  br i1 %3269, label %3299, label %3270

; <label>:3270                                    ; preds = %3243
  %3271 = fsub fast float -0.000000e+00, %3199
  %3272 = fsub fast float -0.000000e+00, %3193
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
  %3283 = call float @dx.op.dot3.f32(i32 55, float %3271, float %3272, float %3196, float %3271, float %3272, float %3196)  ; Dot3(ax,ay,az,bx,by,bz)
  %3284 = call float @dx.op.unary.f32(i32 25, float %3283)  ; Rsqrt(value)
  %3285 = fmul fast float %3284, %3271
  %3286 = fmul fast float %3284, %3272
  %3287 = fmul fast float %3284, %3196
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
  %3305 = call float @dx.op.dot3.f32(i32 55, float %3300, float %3301, float %3302, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %3306 = fmul fast float %3305, %3305
  %3307 = fmul fast float %3306, 0x3FEE471020000000
  %3308 = fadd fast float %3307, 0xBFD42F6020000000
  %3309 = fmul fast float %3265, 0x3FD20DD760000000
  %3310 = fmul fast float %3308, %3304
  %3311 = fmul fast float %3303, 0x3FDF454380000000
  %3312 = fmul fast float %3311, %3305
  %3313 = fadd fast float %3312, %3309
  %3314 = fadd fast float %3313, %3310
  %3315 = call float @dx.op.dot3.f32(i32 55, float %3300, float %3301, float %3302, float %2193, float %2194, float %2195)  ; Dot3(ax,ay,az,bx,by,bz)
  %3316 = fmul fast float %3315, 0x3FDF454380000000
  %3317 = fmul fast float %3315, %3315
  %3318 = fmul fast float %3317, 0x3FEE471020000000
  %3319 = fadd fast float %3318, 0xBFD42F6020000000
  %3320 = call float @dx.op.dot3.f32(i32 55, float %3265, float %3303, float %3304, float 0x3FD20DD760000000, float %3316, float %3319)  ; Dot3(ax,ay,az,bx,by,bz)
  %3321 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3179)  ; FMax(a,b)
  %3322 = call float @dx.op.dot3.f32(i32 55, float %3202, float %3205, float %3208, float %3202, float %3205, float %3208)  ; Dot3(ax,ay,az,bx,by,bz)
  %3323 = fcmp fast oeq float %3322, 0.000000e+00
  %3324 = fcmp fast oeq float %3321, 0.000000e+00
  %3325 = or i1 %3324, %3323
  br i1 %3325, label %3355, label %3326

; <label>:3326                                    ; preds = %3299
  %3327 = fsub fast float -0.000000e+00, %3208
  %3328 = fsub fast float -0.000000e+00, %3202
  %3329 = call float @dx.op.unary.f32(i32 24, float %3322)  ; Sqrt(value)
  %3330 = fdiv fast float %3329, %3321
  %3331 = fcmp fast ogt float %3330, 0x3FFB6F8900000000
  %3332 = select i1 %3331, float 0x3FFB6F8900000000, float %3330
  %3333 = fmul fast float %3332, 0x3FE8A23460000000
  %3334 = call float @dx.op.unary.f32(i32 7, float %3333)  ; Saturate(value)
  %3335 = call float @dx.op.binary.f32(i32 35, float %3332, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3336 = fmul fast float %3334, %3321
  %3337 = fmul fast float %3335, 0x3FF279A740000000
  %3338 = fadd fast float %3337, -1.000000e+00
  %3339 = call float @dx.op.dot3.f32(i32 55, float %3327, float %3328, float %3205, float %3327, float %3328, float %3205)  ; Dot3(ax,ay,az,bx,by,bz)
  %3340 = call float @dx.op.unary.f32(i32 25, float %3339)  ; Rsqrt(value)
  %3341 = fmul fast float %3340, %3327
  %3342 = fmul fast float %3340, %3328
  %3343 = fmul fast float %3340, %3205
  %3344 = fmul fast float %3338, %3338
  %3345 = fsub fast float 1.000000e+00, %3344
  %3346 = fmul fast float %3335, 0x40005F8BE0000000
  %3347 = fsub fast float 0x400C5BF8A0000000, %3346
  %3348 = fdiv fast float %3336, %3347
  %3349 = fmul fast float %3348, 0x3FEE31C3C0000000
  %3350 = fmul fast float %3349, %3345
  %3351 = fmul fast float %3335, 0x3FDACB7480000000
  %3352 = fadd fast float %3351, 0xBFD7347680000000
  %3353 = fmul fast float %3352, %3348
  %3354 = fmul fast float %3353, %3345
  br label %3355

; <label>:3355                                    ; preds = %3326, %3299
  %3356 = phi float [ %3341, %3326 ], [ 0.000000e+00, %3299 ]
  %3357 = phi float [ %3342, %3326 ], [ 0.000000e+00, %3299 ]
  %3358 = phi float [ %3343, %3326 ], [ 0.000000e+00, %3299 ]
  %3359 = phi float [ %3350, %3326 ], [ 0.000000e+00, %3299 ]
  %3360 = phi float [ %3354, %3326 ], [ 0.000000e+00, %3299 ]
  %3361 = call float @dx.op.dot3.f32(i32 55, float %3356, float %3357, float %3358, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %3362 = fmul fast float %3361, %3361
  %3363 = fmul fast float %3362, 0x3FEE471020000000
  %3364 = fadd fast float %3363, 0xBFD42F6020000000
  %3365 = fmul fast float %3321, 0x3FD20DD760000000
  %3366 = fmul fast float %3364, %3360
  %3367 = fmul fast float %3359, 0x3FDF454380000000
  %3368 = fmul fast float %3367, %3361
  %3369 = fadd fast float %3368, %3365
  %3370 = fadd fast float %3369, %3366
  %3371 = call float @dx.op.dot3.f32(i32 55, float %3356, float %3357, float %3358, float %2193, float %2194, float %2195)  ; Dot3(ax,ay,az,bx,by,bz)
  %3372 = fmul fast float %3371, 0x3FDF454380000000
  %3373 = fmul fast float %3371, %3371
  %3374 = fmul fast float %3373, 0x3FEE471020000000
  %3375 = fadd fast float %3374, 0xBFD42F6020000000
  %3376 = call float @dx.op.dot3.f32(i32 55, float %3321, float %3359, float %3360, float 0x3FD20DD760000000, float %3372, float %3375)  ; Dot3(ax,ay,az,bx,by,bz)
  %3377 = call float @dx.op.binary.f32(i32 35, float %3258, float 0.000000e+00)  ; FMax(a,b)
  %3378 = call float @dx.op.binary.f32(i32 35, float %3314, float 0.000000e+00)  ; FMax(a,b)
  %3379 = call float @dx.op.binary.f32(i32 35, float %3370, float 0.000000e+00)  ; FMax(a,b)
  %3380 = call float @dx.op.binary.f32(i32 35, float %3264, float 0.000000e+00)  ; FMax(a,b)
  %3381 = call float @dx.op.binary.f32(i32 35, float %3320, float 0.000000e+00)  ; FMax(a,b)
  %3382 = call float @dx.op.binary.f32(i32 35, float %3376, float 0.000000e+00)  ; FMax(a,b)
  %3383 = fsub fast float %2577, %3377
  %3384 = fsub fast float %2578, %3378
  %3385 = fsub fast float %2579, %3379
  %3386 = fmul fast float %3383, %2256
  %3387 = fmul fast float %3384, %2256
  %3388 = fmul fast float %3385, %2256
  %3389 = fadd fast float %3386, %3377
  %3390 = fadd fast float %3387, %3378
  %3391 = fadd fast float %3388, %3379
  %3392 = fsub fast float %2574, %3380
  %3393 = fsub fast float %2575, %3381
  %3394 = fsub fast float %2576, %3382
  %3395 = fmul fast float %3392, %2256
  %3396 = fmul fast float %3393, %2256
  %3397 = fmul fast float %3394, %2256
  %3398 = fadd fast float %3395, %3380
  %3399 = fadd fast float %3396, %3381
  %3400 = fadd fast float %3397, %3382
  %3401 = fsub fast float %2358, %3181
  %3402 = fmul fast float %3401, %2256
  %3403 = fadd fast float %3402, %3181
  br label %3404

; <label>:3404                                    ; preds = %3355, %2573
  %3405 = phi float [ %3403, %3355 ], [ %2358, %2573 ]
  %3406 = phi float [ %3398, %3355 ], [ %2574, %2573 ]
  %3407 = phi float [ %3399, %3355 ], [ %2575, %2573 ]
  %3408 = phi float [ %3400, %3355 ], [ %2576, %2573 ]
  %3409 = phi float [ %3389, %3355 ], [ %2577, %2573 ]
  %3410 = phi float [ %3390, %3355 ], [ %2578, %2573 ]
  %3411 = phi float [ %3391, %3355 ], [ %2579, %2573 ]
  %3412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3413 = extractvalue %dx.types.CBufRet.f32 %3412, 0
  %3414 = call float @dx.op.binary.f32(i32 36, float %2173, float %3413)  ; FMin(a,b)
  %3415 = fmul fast float %3414, %2197
  %3416 = fsub fast float 1.000000e+00, %3415
  %3417 = bitcast float %3416 to i32
  %3418 = sub nsw i32 2129859010, %3417
  %3419 = bitcast i32 %3418 to float
  %3420 = call float @dx.op.binary.f32(i32 36, float %2174, float %3413)  ; FMin(a,b)
  %3421 = fmul fast float %3420, %2197
  %3422 = fsub fast float 1.000000e+00, %3421
  %3423 = bitcast float %3422 to i32
  %3424 = sub nsw i32 2129859010, %3423
  %3425 = bitcast i32 %3424 to float
  %3426 = call float @dx.op.binary.f32(i32 36, float %2175, float %3413)  ; FMin(a,b)
  %3427 = fmul fast float %3426, %2197
  %3428 = fsub fast float 1.000000e+00, %3427
  %3429 = bitcast float %3428 to i32
  %3430 = sub nsw i32 2129859010, %3429
  %3431 = bitcast i32 %3430 to float
  %3432 = fmul fast float %3409, %2196
  %3433 = fmul fast float %3432, %3419
  %3434 = fmul fast float %3410, %2196
  %3435 = fmul fast float %3434, %3425
  %3436 = fmul fast float %3411, %2196
  %3437 = fmul fast float %3436, %3431
  %3438 = call float @dx.op.binary.f32(i32 36, float %2179, float %3413)  ; FMin(a,b)
  %3439 = fmul fast float %3438, %2197
  %3440 = fsub fast float 1.000000e+00, %3439
  %3441 = bitcast float %3440 to i32
  %3442 = sub nsw i32 2129859010, %3441
  %3443 = bitcast i32 %3442 to float
  %3444 = call float @dx.op.binary.f32(i32 36, float %2180, float %3413)  ; FMin(a,b)
  %3445 = fmul fast float %3444, %2197
  %3446 = fsub fast float 1.000000e+00, %3445
  %3447 = bitcast float %3446 to i32
  %3448 = sub nsw i32 2129859010, %3447
  %3449 = bitcast i32 %3448 to float
  %3450 = call float @dx.op.binary.f32(i32 36, float %2185, float %3413)  ; FMin(a,b)
  %3451 = fmul fast float %3450, %2197
  %3452 = fsub fast float 1.000000e+00, %3451
  %3453 = bitcast float %3452 to i32
  %3454 = sub nsw i32 2129859010, %3453
  %3455 = bitcast i32 %3454 to float
  %3456 = fmul fast float %3406, %2196
  %3457 = fmul fast float %3456, %3443
  %3458 = fmul fast float %3407, %2196
  %3459 = fmul fast float %3458, %3449
  %3460 = fmul fast float %3408, %2196
  %3461 = fmul fast float %3460, %3455
  %3462 = call float @dx.op.dot3.f32(i32 55, float %3433, float %3435, float %3437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3463 = select i1 %238, float 0.000000e+00, float %3433
  %3464 = select i1 %238, float %3462, float %3435
  %3465 = select i1 %238, float 0.000000e+00, float %3437
  %3466 = call float @dx.op.dot3.f32(i32 55, float %3457, float %3459, float %3461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = select i1 %238, float 0.000000e+00, float %3457
  %3468 = select i1 %238, float %3466, float %3459
  %3469 = select i1 %238, float 0.000000e+00, float %3461
  %3470 = fmul fast float %2187, 9.843750e-01
  %3471 = fmul fast float %2182, 9.843750e-01
  %3472 = fadd fast float %3470, 7.812500e-03
  %3473 = fadd fast float %3471, 7.812500e-03
  %3474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 2
  %3476 = extractvalue %dx.types.ResRet.f32 %3474, 3
  %3477 = fmul fast float %3475, %2179
  %3478 = fmul fast float %3475, %2180
  %3479 = fmul fast float %3475, %2185
  %3480 = fadd fast float %3477, %3476
  %3481 = fadd fast float %3478, %3476
  %3482 = fadd fast float %3479, %3476
  %3483 = fcmp fast ogt float %1550, 0.000000e+00
  br i1 %3483, label %3484, label %3510

; <label>:3484                                    ; preds = %3404
  %3485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1550, float %2187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3489 = fadd fast float %3486, -5.000000e-01
  %3490 = fadd fast float %3487, -5.000000e-01
  %3491 = fadd fast float %3488, -5.000000e-01
  %3492 = fsub fast float 1.000000e+00, %2179
  %3493 = fsub fast float 1.000000e+00, %2180
  %3494 = fsub fast float 1.000000e+00, %2185
  %3495 = fmul fast float %2179, 4.000000e+00
  %3496 = fmul fast float %3495, %3492
  %3497 = fmul fast float %3496, %3489
  %3498 = fmul fast float %2180, 4.000000e+00
  %3499 = fmul fast float %3498, %3493
  %3500 = fmul fast float %3499, %3490
  %3501 = fmul fast float %2185, 4.000000e+00
  %3502 = fmul fast float %3501, %3494
  %3503 = fmul fast float %3502, %3491
  %3504 = fadd fast float %3497, %3480
  %3505 = fadd fast float %3500, %3481
  %3506 = fadd fast float %3503, %3482
  %3507 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  %3508 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3509 = call float @dx.op.unary.f32(i32 7, float %3506)  ; Saturate(value)
  br label %3510

; <label>:3510                                    ; preds = %3484, %3404
  %3511 = phi float [ %3507, %3484 ], [ %3480, %3404 ]
  %3512 = phi float [ %3508, %3484 ], [ %3481, %3404 ]
  %3513 = phi float [ %3509, %3484 ], [ %3482, %3404 ]
  %3514 = call float @dx.op.binary.f32(i32 35, float %3512, float %3513)  ; FMax(a,b)
  %3515 = call float @dx.op.binary.f32(i32 35, float %3511, float %3514)  ; FMax(a,b)
  %3516 = fsub fast float 1.000000e+00, %3515
  %3517 = fmul fast float %3515, %2182
  %3518 = fadd fast float %3517, %2182
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 2
  %3521 = extractvalue %dx.types.CBufRet.f32 %3519, 3
  %3522 = fmul fast float %3518, %3520
  %3523 = fadd fast float %3522, %3521
  %3524 = call float @dx.op.unary.f32(i32 7, float %3523)  ; Saturate(value)
  %3525 = fsub fast float 1.000000e+00, %2208
  %3526 = fadd fast float %3525, %3524
  %3527 = call float @dx.op.unary.f32(i32 7, float %3526)  ; Saturate(value)
  %3528 = fcmp fast olt float %3527, 1.000000e+00
  br i1 %3528, label %3529, label %4005

; <label>:3529                                    ; preds = %3510
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 2
  %3532 = extractvalue %dx.types.CBufRet.f32 %3530, 3
  %3533 = fmul fast float %3531, %100
  %3534 = fmul fast float %3532, %101
  %3535 = fptoui float %3533 to i32
  %3536 = fptoui float %3534 to i32
  %3537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3538 = extractvalue %dx.types.CBufRet.f32 %3537, 0
  %3539 = extractvalue %dx.types.CBufRet.f32 %3537, 2
  %3540 = extractvalue %dx.types.CBufRet.f32 %3537, 3
  %3541 = fadd fast float %88, -4.000000e+00
  %3542 = call float @dx.op.binary.f32(i32 35, float %3541, float 0.000000e+00)  ; FMax(a,b)
  %3543 = fadd fast float %3542, %3538
  %3544 = fmul fast float %3543, %3539
  %3545 = call float @dx.op.unary.f32(i32 23, float %3544)  ; Log(value)
  %3546 = fmul fast float %3545, %3540
  %3547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3548 = extractvalue %dx.types.CBufRet.f32 %3547, 2
  %3549 = fmul fast float %3546, %3548
  %3550 = call float @dx.op.unary.f32(i32 7, float %3549)  ; Saturate(value)
  %3551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3552 = extractvalue %dx.types.CBufRet.i32 %3551, 1
  %3553 = add i32 %3552, -1
  %3554 = uitofp i32 %3552 to float
  %3555 = fmul fast float %3554, %3550
  %3556 = fptoui float %3555 to i32
  %3557 = call i32 @dx.op.binary.i32(i32 40, i32 %3556, i32 %3553)  ; UMin(a,b)
  %3558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3559 = extractvalue %dx.types.CBufRet.i32 %3558, 2
  %3560 = extractvalue %dx.types.CBufRet.i32 %3558, 3
  %3561 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3536, i32 %3559, i32 %3535)  ; UMad(a,b,c)
  %3562 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3557, i32 %3560, i32 %3561)  ; UMad(a,b,c)
  %3563 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %3564 = fptoui float %3563 to i32
  %3565 = lshr i32 %3564, 5
  %3566 = call i32 @dx.op.binary.i32(i32 40, i32 %3565, i32 8191)  ; UMin(a,b)
  %3567 = fsub fast float %1972, %149
  %3568 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  %3569 = fcmp fast ogt float %3568, 0.000000e+00
  %3570 = fcmp fast ogt float %2195, 0.000000e+00
  %3571 = and i1 %3570, %3569
  br i1 %3571, label %3572, label %3601

; <label>:3572                                    ; preds = %3529
  %3573 = call float @dx.op.dot3.f32(i32 55, float %2193, float %2194, float %2195, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3574 = call float @dx.op.binary.f32(i32 35, float %3573, float -1.000000e+00)  ; FMax(a,b)
  %3575 = call float @dx.op.binary.f32(i32 36, float %3574, float 1.000000e+00)  ; FMin(a,b)
  %3576 = fmul fast float %3575, %3575
  %3577 = fsub fast float 1.000000e+00, %3576
  %3578 = fmul fast float %3577, 0x3FFC6E2300000000
  %3579 = fsub fast float 1.000000e+00, %3578
  %3580 = fcmp fast ogt float %3579, 0.000000e+00
  %3581 = call float @dx.op.unary.f32(i32 24, float %3579)  ; Sqrt(value)
  %3582 = fsub fast float 1.000000e+00, %3581
  %3583 = call float @dx.op.unary.f32(i32 23, float %3582)  ; Log(value)
  %3584 = fmul fast float %3583, 5.000000e+00
  %3585 = call float @dx.op.unary.f32(i32 21, float %3584)  ; Exp(value)
  %3586 = fmul fast float %3585, 0x3FEF591A60000000
  %3587 = fadd fast float %3586, 0x3F94DCB540000000
  %3588 = select i1 %3580, float %3587, float 1.000000e+00
  %3589 = fcmp fast oge float %3588, 1.000000e+00
  %3590 = fmul fast float %3573, 2.000000e+00
  %3591 = fadd fast float %3590, %2195
  %3592 = select i1 %3589, float %3591, float %2195
  %3593 = fsub fast float %3592, %2195
  %3594 = fmul fast float %3593, %3568
  %3595 = fadd fast float %3594, %2195
  %3596 = call float @dx.op.dot3.f32(i32 55, float %2193, float %2194, float %3595, float %2193, float %2194, float %3595)  ; Dot3(ax,ay,az,bx,by,bz)
  %3597 = call float @dx.op.unary.f32(i32 25, float %3596)  ; Rsqrt(value)
  %3598 = fmul fast float %3597, %2193
  %3599 = fmul fast float %3597, %2194
  %3600 = fmul fast float %3595, %3597
  br label %3601

; <label>:3601                                    ; preds = %3572, %3529
  %3602 = phi float [ %3598, %3572 ], [ %2193, %3529 ]
  %3603 = phi float [ %3599, %3572 ], [ %2194, %3529 ]
  %3604 = phi float [ %3600, %3572 ], [ %2195, %3529 ]
  %3605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3606 = extractvalue %dx.types.CBufRet.i32 %3605, 2
  %3607 = add nsw i32 %3606, -1
  %3608 = call i32 @dx.op.binary.i32(i32 37, i32 %3607, i32 0)  ; IMax(a,b)
  %3609 = shl i32 %3566, 2
  %3610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.i32 %3610, 0
  %3612 = lshr i32 %3611, 16
  %3613 = and i32 %3611, 65535
  %3614 = lshr i32 %3611, 21
  %3615 = lshr i32 %3613, 5
  %3616 = call i32 @dx.op.binary.i32(i32 40, i32 %3615, i32 %3608)  ; UMin(a,b)
  %3617 = icmp ugt i32 %3614, %3616
  br i1 %3617, label %3981, label %3618

; <label>:3618                                    ; preds = %3601
  br label %3619

; <label>:3619                                    ; preds = %3973, %3618
  %3620 = phi float [ %3974, %3973 ], [ 0.000000e+00, %3618 ]
  %3621 = phi float [ %3975, %3973 ], [ 0.000000e+00, %3618 ]
  %3622 = phi float [ %3976, %3973 ], [ 0.000000e+00, %3618 ]
  %3623 = phi float [ %3977, %3973 ], [ 1.000000e+00, %3618 ]
  %3624 = phi i32 [ %3978, %3973 ], [ %3614, %3618 ]
  %3625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.i32 %3625, 2
  %3627 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3562, i32 %3626, i32 %3624)  ; UMad(a,b,c)
  %3628 = shl i32 %3627, 2
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = shl i32 %3624, 5
  %3632 = sub nsw i32 %3612, %3631
  %3633 = call i32 @dx.op.binary.i32(i32 37, i32 %3632, i32 0)  ; IMax(a,b)
  %3634 = call i32 @dx.op.binary.i32(i32 38, i32 %3633, i32 31)  ; IMin(a,b)
  %3635 = sub nsw i32 1, %3612
  %3636 = add nsw i32 %3635, %3613
  %3637 = call i32 @dx.op.binary.i32(i32 37, i32 %3636, i32 0)  ; IMax(a,b)
  %3638 = call i32 @dx.op.binary.i32(i32 38, i32 %3637, i32 32)  ; IMin(a,b)
  %3639 = and i32 %3638, 31
  %3640 = shl i32 -1, %3639
  %3641 = xor i32 %3640, -1
  %3642 = and i32 %3634, 31
  %3643 = shl i32 %3641, %3642
  %3644 = icmp eq i32 %3638, 32
  %3645 = select i1 %3644, i32 -1, i32 %3643
  %3646 = and i32 %3645, %3630
  %3647 = icmp eq i32 %3646, 0
  br i1 %3647, label %3973, label %3648

; <label>:3648                                    ; preds = %3619
  br label %3649

; <label>:3649                                    ; preds = %3756, %3648
  %3650 = phi float [ %3757, %3756 ], [ %3620, %3648 ]
  %3651 = phi float [ %3758, %3756 ], [ %3621, %3648 ]
  %3652 = phi float [ %3759, %3756 ], [ %3622, %3648 ]
  %3653 = phi float [ %3760, %3756 ], [ %3623, %3648 ]
  %3654 = phi i32 [ %3659, %3756 ], [ %3646, %3648 ]
  %3655 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3654)  ; FirstbitLo(value)
  %3656 = add i32 %3655, %3631
  %3657 = and i32 %3655, 31
  %3658 = shl i32 1, %3657
  %3659 = xor i32 %3658, %3654
  %3660 = mul i32 %3656, 72
  %3661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.ResRet.f32 %3661, 1
  %3664 = extractvalue %dx.types.ResRet.f32 %3661, 2
  %3665 = add i32 %3660, 12
  %3666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.i32 %3666, 0
  %3668 = add i32 %3660, 16
  %3669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3673 = add i32 %3660, 28
  %3674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3673, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3676 = add i32 %3660, 32
  %3677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.ResRet.f32 %3677, 1
  %3680 = extractvalue %dx.types.ResRet.f32 %3677, 2
  %3681 = extractvalue %dx.types.ResRet.f32 %3677, 3
  %3682 = add i32 %3660, 48
  %3683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3682, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.ResRet.f32 %3683, 1
  %3686 = add i32 %3660, 56
  %3687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.f32 %3687, 0
  %3689 = extractvalue %dx.types.ResRet.f32 %3687, 1
  %3690 = add i32 %3660, 64
  %3691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.ResRet.f32 %3691, 1
  %3694 = mul i32 %3656, 60
  %3695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.f32 %3695, 0
  %3697 = extractvalue %dx.types.ResRet.f32 %3695, 1
  %3698 = extractvalue %dx.types.ResRet.f32 %3695, 2
  %3699 = add i32 %3694, 12
  %3700 = add i32 %3694, 48
  %3701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.f32 %3701, 0
  %3703 = extractvalue %dx.types.ResRet.f32 %3701, 1
  %3704 = extractvalue %dx.types.ResRet.f32 %3701, 2
  %3705 = and i32 %3667, 32767
  %3706 = bitcast float %3662 to i32
  %3707 = icmp eq i32 %3706, -1
  %3708 = bitcast float %3663 to i32
  %3709 = and i32 %3667, 32768
  %3710 = icmp ne i32 %3709, 0
  %3711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3712 = extractvalue %dx.types.CBufRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.CBufRet.f32 %3711, 1
  %3714 = extractvalue %dx.types.CBufRet.f32 %3711, 2
  %3715 = fsub fast float %3696, %3712
  %3716 = fsub fast float %3697, %3713
  %3717 = fsub fast float %3698, %3714
  %3718 = fsub fast float %147, %3715
  %3719 = fsub fast float %148, %3716
  %3720 = fsub fast float %149, %3717
  %3721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3699, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.f32 %3721, 0
  %3723 = extractvalue %dx.types.ResRet.f32 %3721, 1
  %3724 = extractvalue %dx.types.ResRet.f32 %3721, 2
  %3725 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float %3722, float %3723, float %3724)  ; Dot3(ax,ay,az,bx,by,bz)
  %3726 = add i32 %3694, 24
  %3727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.ResRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.ResRet.f32 %3727, 2
  %3731 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float %3728, float %3729, float %3730)  ; Dot3(ax,ay,az,bx,by,bz)
  %3732 = add i32 %3694, 36
  %3733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3732, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.f32 %3733, 0
  %3735 = extractvalue %dx.types.ResRet.f32 %3733, 1
  %3736 = extractvalue %dx.types.ResRet.f32 %3733, 2
  %3737 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float %3734, float %3735, float %3736)  ; Dot3(ax,ay,az,bx,by,bz)
  %3738 = call float @dx.op.unary.f32(i32 6, float %3725)  ; FAbs(value)
  %3739 = call float @dx.op.unary.f32(i32 6, float %3731)  ; FAbs(value)
  %3740 = call float @dx.op.unary.f32(i32 6, float %3737)  ; FAbs(value)
  %3741 = fsub fast float %3702, %3738
  %3742 = fsub fast float %3703, %3739
  %3743 = fsub fast float %3704, %3740
  %3744 = fmul fast float %3741, %3670
  %3745 = fmul fast float %3742, %3671
  %3746 = fmul fast float %3743, %3672
  %3747 = call float @dx.op.binary.f32(i32 36, float %3745, float %3746)  ; FMin(a,b)
  %3748 = call float @dx.op.binary.f32(i32 36, float %3744, float %3747)  ; FMin(a,b)
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = call float @dx.op.binary.f32(i32 36, float %3653, float %3749)  ; FMin(a,b)
  %3751 = uitofp i1 %3710 to float
  %3752 = fadd fast float %3568, 1.000000e+00
  %3753 = fsub fast float %3752, %3751
  %3754 = fmul fast float %3750, %3753
  %3755 = fcmp fast ogt float %3754, 0.000000e+00
  br i1 %3755, label %3762, label %3756

; <label>:3756                                    ; preds = %3904, %3649
  %3757 = phi float [ %3968, %3904 ], [ %3650, %3649 ]
  %3758 = phi float [ %3969, %3904 ], [ %3651, %3649 ]
  %3759 = phi float [ %3970, %3904 ], [ %3652, %3649 ]
  %3760 = phi float [ %3971, %3904 ], [ %3653, %3649 ]
  %3761 = icmp eq i32 %3654, %3658
  br i1 %3761, label %3972, label %3649

; <label>:3762                                    ; preds = %3649
  br i1 %3707, label %3820, label %3763

; <label>:3763                                    ; preds = %3762
  %3764 = fsub fast float -0.000000e+00, %3722
  %3765 = fsub fast float -0.000000e+00, %3723
  %3766 = fsub fast float -0.000000e+00, %3724
  %3767 = call float @dx.op.dot3.f32(i32 55, float %3602, float %3603, float %3604, float %3764, float %3765, float %3766)  ; Dot3(ax,ay,az,bx,by,bz)
  %3768 = fsub fast float -0.000000e+00, %3767
  %3769 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float %3764, float %3765, float %3766)  ; Dot3(ax,ay,az,bx,by,bz)
  %3770 = fadd fast float %3769, %3685
  %3771 = fadd fast float %3684, %3769
  %3772 = fsub fast float -0.000000e+00, %3771
  %3773 = fcmp ogt float %3767, -0.000000e+00
  %3774 = select i1 %3773, float %3772, float %3770
  %3775 = call float @dx.op.unary.f32(i32 6, float %3768)  ; FAbs(value)
  %3776 = fdiv fast float 1.000000e+00, %3775
  %3777 = fmul fast float %3774, %3776
  %3778 = call float @dx.op.binary.f32(i32 35, float %3777, float 0.000000e+00)  ; FMax(a,b)
  %3779 = fsub fast float -0.000000e+00, %3728
  %3780 = fsub fast float -0.000000e+00, %3729
  %3781 = fsub fast float -0.000000e+00, %3730
  %3782 = call float @dx.op.dot3.f32(i32 55, float %3602, float %3603, float %3604, float %3779, float %3780, float %3781)  ; Dot3(ax,ay,az,bx,by,bz)
  %3783 = fsub fast float -0.000000e+00, %3782
  %3784 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float %3779, float %3780, float %3781)  ; Dot3(ax,ay,az,bx,by,bz)
  %3785 = fadd fast float %3784, %3689
  %3786 = fadd fast float %3688, %3784
  %3787 = fsub fast float -0.000000e+00, %3786
  %3788 = fcmp ogt float %3782, -0.000000e+00
  %3789 = select i1 %3788, float %3787, float %3785
  %3790 = call float @dx.op.unary.f32(i32 6, float %3783)  ; FAbs(value)
  %3791 = fdiv fast float 1.000000e+00, %3790
  %3792 = fmul fast float %3789, %3791
  %3793 = call float @dx.op.binary.f32(i32 35, float %3792, float 0.000000e+00)  ; FMax(a,b)
  %3794 = fsub fast float -0.000000e+00, %3734
  %3795 = fsub fast float -0.000000e+00, %3735
  %3796 = fsub fast float -0.000000e+00, %3736
  %3797 = call float @dx.op.dot3.f32(i32 55, float %3602, float %3603, float %3604, float %3794, float %3795, float %3796)  ; Dot3(ax,ay,az,bx,by,bz)
  %3798 = fsub fast float -0.000000e+00, %3797
  %3799 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float %3794, float %3795, float %3796)  ; Dot3(ax,ay,az,bx,by,bz)
  %3800 = fadd fast float %3799, %3693
  %3801 = fadd fast float %3692, %3799
  %3802 = fsub fast float -0.000000e+00, %3801
  %3803 = fcmp ogt float %3797, -0.000000e+00
  %3804 = select i1 %3803, float %3802, float %3800
  %3805 = call float @dx.op.unary.f32(i32 6, float %3798)  ; FAbs(value)
  %3806 = fdiv fast float 1.000000e+00, %3805
  %3807 = fmul fast float %3804, %3806
  %3808 = call float @dx.op.binary.f32(i32 35, float %3807, float 0.000000e+00)  ; FMax(a,b)
  %3809 = call float @dx.op.binary.f32(i32 36, float %3793, float %3808)  ; FMin(a,b)
  %3810 = call float @dx.op.binary.f32(i32 36, float %3778, float %3809)  ; FMin(a,b)
  %3811 = fmul fast float %3810, %3602
  %3812 = fmul fast float %3810, %3603
  %3813 = fmul fast float %3810, %3604
  %3814 = fadd fast float %3811, %147
  %3815 = fadd fast float %3812, %148
  %3816 = fadd fast float %3813, %149
  %3817 = fsub fast float %3814, %3662
  %3818 = fsub fast float %3815, %3663
  %3819 = fsub fast float %3816, %3664
  br label %3827

; <label>:3820                                    ; preds = %3762
  %3821 = fmul fast float %3602, 8.096000e+03
  %3822 = fmul fast float %3603, 8.096000e+03
  %3823 = fmul fast float %3604, 8.096000e+03
  %3824 = fadd fast float %3821, %147
  %3825 = fadd fast float %3822, %148
  %3826 = fadd fast float %3823, %149
  br label %3827

; <label>:3827                                    ; preds = %3820, %3763
  %3828 = phi float [ %3602, %3820 ], [ %3817, %3763 ]
  %3829 = phi float [ %3603, %3820 ], [ %3818, %3763 ]
  %3830 = phi float [ %3604, %3820 ], [ %3819, %3763 ]
  %3831 = phi float [ %3824, %3820 ], [ %3814, %3763 ]
  %3832 = phi float [ %3825, %3820 ], [ %3815, %3763 ]
  %3833 = phi float [ %3826, %3820 ], [ %3816, %3763 ]
  %3834 = fcmp fast olt float %3681, 1.000000e+00
  br i1 %3834, label %3835, label %3866, !dx.controlflow.hints !112

; <label>:3835                                    ; preds = %3827
  %3836 = fmul fast float %3830, %3679
  %3837 = fmul fast float %3829, %3680
  %3838 = fsub fast float %3836, %3837
  %3839 = fmul fast float %3828, %3680
  %3840 = fmul fast float %3830, %3678
  %3841 = fsub fast float %3839, %3840
  %3842 = fmul fast float %3829, %3678
  %3843 = fmul fast float %3828, %3679
  %3844 = fsub fast float %3842, %3843
  %3845 = fmul fast float %3838, 2.000000e+00
  %3846 = fmul fast float %3841, 2.000000e+00
  %3847 = fmul fast float %3844, 2.000000e+00
  %3848 = fmul fast float %3845, %3681
  %3849 = fmul fast float %3846, %3681
  %3850 = fmul fast float %3847, %3681
  %3851 = fmul fast float %3847, %3679
  %3852 = fmul fast float %3846, %3680
  %3853 = fmul fast float %3845, %3680
  %3854 = fmul fast float %3847, %3678
  %3855 = fmul fast float %3846, %3678
  %3856 = fmul fast float %3845, %3679
  %3857 = fadd fast float %3851, %3828
  %3858 = fadd fast float %3857, %3848
  %3859 = fsub fast float %3858, %3852
  %3860 = fsub fast float %3829, %3854
  %3861 = fadd fast float %3860, %3849
  %3862 = fadd fast float %3861, %3853
  %3863 = fadd fast float %3850, %3830
  %3864 = fsub fast float %3863, %3856
  %3865 = fadd fast float %3864, %3855
  br label %3866

; <label>:3866                                    ; preds = %3835, %3827
  %3867 = phi float [ %3859, %3835 ], [ %3828, %3827 ]
  %3868 = phi float [ %3862, %3835 ], [ %3829, %3827 ]
  %3869 = phi float [ %3865, %3835 ], [ %3830, %3827 ]
  br i1 %3707, label %3901, label %3870

; <label>:3870                                    ; preds = %3866
  %3871 = fmul fast float %2182, 0x400187C840000000
  %3872 = fadd fast float %3871, 0xC00EFC2120000000
  %3873 = fmul fast float %3872, %2182
  %3874 = fadd fast float %3873, 0x3FE5D16340000000
  %3875 = fmul fast float %3874, %2182
  %3876 = fadd fast float %3875, 1.000000e+00
  %3877 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3878 = fsub fast float %3831, %147
  %3879 = fsub fast float %3832, %148
  %3880 = fsub fast float %3833, %149
  %3881 = fsub fast float %3831, %3662
  %3882 = fsub fast float %3832, %3663
  %3883 = fsub fast float %3833, %3664
  %3884 = call float @dx.op.dot3.f32(i32 55, float %3878, float %3879, float %3880, float %3878, float %3879, float %3880)  ; Dot3(ax,ay,az,bx,by,bz)
  %3885 = call float @dx.op.dot3.f32(i32 55, float %3881, float %3882, float %3883, float %3881, float %3882, float %3883)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = fadd fast float %3885, 0x3EE4F8B580000000
  %3887 = fdiv fast float %3884, %3886
  %3888 = bitcast float %3887 to i32
  %3889 = ashr i32 %3888, 1
  %3890 = add nsw i32 %3889, 532487669
  %3891 = bitcast i32 %3890 to float
  %3892 = fmul fast float %3891, %3877
  %3893 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3894 = fmul fast float %3893, 0x4009981AE0000000
  %3895 = fsub fast float 0x40111BBD80000000, %3894
  %3896 = fmul fast float %3895, %3893
  %3897 = fadd fast float %3896, 0xC0009F6020000000
  %3898 = fmul fast float %3897, %3893
  %3899 = fadd fast float %3898, 1.000000e+00
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  br label %3904

; <label>:3901                                    ; preds = %3866
  %3902 = icmp ne i32 %3708, -1
  %3903 = zext i1 %3902 to i32
  br label %3904

; <label>:3904                                    ; preds = %3901, %3870
  %3905 = phi float [ %2182, %3901 ], [ %3900, %3870 ]
  %3906 = phi i32 [ %3903, %3901 ], [ 0, %3870 ]
  %3907 = fmul float %3905, 5.000000e+00
  %3908 = fsub float 5.000000e+00, %3907
  %3909 = icmp ne i32 %3906, 0
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 3
  %3912 = fadd fast float %3911, %3908
  %3913 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3912)  ; FMax(a,b)
  %3914 = call float @dx.op.unary.f32(i32 6, float %3867)  ; FAbs(value)
  %3915 = call float @dx.op.unary.f32(i32 6, float %3868)  ; FAbs(value)
  %3916 = fadd fast float %3915, %3914
  %3917 = call float @dx.op.unary.f32(i32 6, float %3869)  ; FAbs(value)
  %3918 = fadd fast float %3916, %3917
  %3919 = fcmp fast oeq float %3918, 0.000000e+00
  %3920 = fdiv fast float 1.000000e+00, %3918
  %3921 = select i1 %3919, float 1.000000e+00, float %3920
  %3922 = fmul fast float %3921, %3867
  %3923 = fmul fast float %3921, %3868
  %3924 = call float @dx.op.unary.f32(i32 6, float %3923)  ; FAbs(value)
  %3925 = call float @dx.op.unary.f32(i32 6, float %3922)  ; FAbs(value)
  %3926 = fsub fast float 1.000000e+00, %3924
  %3927 = fsub fast float 1.000000e+00, %3925
  %3928 = fcmp fast oge float %3922, 0.000000e+00
  %3929 = fcmp fast oge float %3923, 0.000000e+00
  %3930 = select i1 %3928, float 1.000000e+00, float -1.000000e+00
  %3931 = select i1 %3929, float 1.000000e+00, float -1.000000e+00
  %3932 = fcmp fast ole float %3869, 0.000000e+00
  %3933 = fmul fast float %3930, %3926
  %3934 = fmul fast float %3931, %3927
  %3935 = select i1 %3932, float %3933, float %3922
  %3936 = select i1 %3932, float %3934, float %3923
  %3937 = fmul fast float %3935, 5.000000e-01
  %3938 = fmul fast float %3936, 5.000000e-01
  %3939 = fadd fast float %3937, 5.000000e-01
  %3940 = fadd fast float %3938, 5.000000e-01
  %3941 = uitofp i32 %3705 to float
  %3942 = call float @dx.op.binary.f32(i32 36, float %3913, float 3.000000e+00)  ; FMin(a,b)
  %3943 = fadd fast float %3942, 2.000000e+00
  %3944 = call float @dx.op.unary.f32(i32 21, float %3943)  ; Exp(value)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3910, 1
  %3946 = fmul fast float %3945, %3944
  %3947 = fmul fast float %3946, 2.000000e+00
  %3948 = fsub fast float 1.000000e+00, %3947
  %3949 = fmul fast float %3939, %3948
  %3950 = fmul fast float %3940, %3948
  %3951 = fadd fast float %3949, %3946
  %3952 = fadd fast float %3950, %3946
  %3953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %3951, float %3952, float %3941, float undef, i32 0, i32 0, i32 undef, float %3913)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.ResRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3953, 2
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 3
  %3959 = fmul fast float %3958, %3675
  %3960 = call float @dx.op.binary.f32(i32 36, float %3405, float %3959)  ; FMin(a,b)
  %3961 = select i1 %3909, float %3960, float %3959
  %3962 = fmul fast float %3954, %3754
  %3963 = fmul fast float %3962, %3961
  %3964 = fmul fast float %3955, %3754
  %3965 = fmul fast float %3964, %3961
  %3966 = fmul fast float %3956, %3754
  %3967 = fmul fast float %3966, %3961
  %3968 = fadd fast float %3963, %3650
  %3969 = fadd fast float %3965, %3651
  %3970 = fadd fast float %3967, %3652
  %3971 = fsub fast float %3653, %3754
  br label %3756

; <label>:3972                                    ; preds = %3756
  br label %3973

; <label>:3973                                    ; preds = %3972, %3619
  %3974 = phi float [ %3620, %3619 ], [ %3757, %3972 ]
  %3975 = phi float [ %3621, %3619 ], [ %3758, %3972 ]
  %3976 = phi float [ %3622, %3619 ], [ %3759, %3972 ]
  %3977 = phi float [ %3623, %3619 ], [ %3760, %3972 ]
  %3978 = add i32 %3624, 1
  %3979 = icmp ugt i32 %3978, %3616
  br i1 %3979, label %3980, label %3619, !llvm.loop !113

; <label>:3980                                    ; preds = %3973
  br label %3981

; <label>:3981                                    ; preds = %3980, %3601
  %3982 = phi float [ 0.000000e+00, %3601 ], [ %3974, %3980 ]
  %3983 = phi float [ 0.000000e+00, %3601 ], [ %3975, %3980 ]
  %3984 = phi float [ 0.000000e+00, %3601 ], [ %3976, %3980 ]
  %3985 = call float @dx.op.dot3.f32(i32 55, float %3982, float %3983, float %3984, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3986 = select i1 %238, float 0.000000e+00, float %3982
  %3987 = select i1 %238, float %3985, float %3983
  %3988 = select i1 %238, float 0.000000e+00, float %3984
  %3989 = fcmp fast olt float %3527, 0.000000e+00
  %3990 = call float @dx.op.unary.f32(i32 6, float %3527)  ; FAbs(value)
  %3991 = fmul fast float %3990, %3467
  %3992 = fmul fast float %3990, %3468
  %3993 = fmul fast float %3990, %3469
  %3994 = select i1 %3989, float %3467, float %3991
  %3995 = select i1 %3989, float %3468, float %3992
  %3996 = select i1 %3989, float %3469, float %3993
  %3997 = fsub fast float 1.000000e+00, %3990
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = fmul fast float %3998, %3986
  %4000 = fmul fast float %3998, %3987
  %4001 = fmul fast float %3998, %3988
  %4002 = fadd fast float %3994, %3999
  %4003 = fadd fast float %3995, %4000
  %4004 = fadd fast float %3996, %4001
  br label %4005

; <label>:4005                                    ; preds = %3981, %3510
  %4006 = phi float [ %3467, %3510 ], [ %4002, %3981 ]
  %4007 = phi float [ %3468, %3510 ], [ %4003, %3981 ]
  %4008 = phi float [ %3469, %3510 ], [ %4004, %3981 ]
  %4009 = fmul fast float %3516, %3463
  %4010 = fmul fast float %3516, %3464
  %4011 = fmul fast float %3516, %3465
  %4012 = call float @dx.op.dot3.f32(i32 55, float %2173, float %2174, float %2175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4013 = fcmp fast ogt float %4012, 0x3E7FF19E20000000
  %4014 = fdiv fast float 1.000000e+00, %4012
  %4015 = select i1 %4013, float %4014, float 0.000000e+00
  %4016 = fmul fast float %4015, %2173
  %4017 = fmul fast float %4015, %2174
  %4018 = fmul fast float %4015, %2175
  %4019 = fadd fast float %4016, -1.000000e+00
  %4020 = fadd fast float %4017, -1.000000e+00
  %4021 = fadd fast float %4018, -1.000000e+00
  %4022 = fmul fast float %4019, 5.000000e-01
  %4023 = fmul fast float %4020, 5.000000e-01
  %4024 = fmul fast float %4021, 5.000000e-01
  %4025 = fadd fast float %4022, 1.000000e+00
  %4026 = fadd fast float %4023, 1.000000e+00
  %4027 = fadd fast float %4024, 1.000000e+00
  %4028 = fmul fast float %4006, %3511
  %4029 = fmul fast float %4007, %3512
  %4030 = fmul fast float %4008, %3513
  %4031 = fsub fast float 1.000000e+00, %2187
  %4032 = bitcast float %4031 to i32
  %4033 = sitofp i32 %4032 to float
  %4034 = fmul fast float %4033, 5.000000e+00
  %4035 = fadd fast float %4034, 0xC1EFBF8940000000
  %4036 = fptosi float %4035 to i32
  %4037 = bitcast i32 %4036 to float
  %4038 = fmul fast float %4037, %1549
  %4039 = fmul fast float %3463, %4038
  %4040 = fmul fast float %4039, %3516
  %4041 = fmul fast float %4040, %4025
  %4042 = fmul fast float %3464, %4038
  %4043 = fmul fast float %4042, %3516
  %4044 = fmul fast float %4043, %4026
  %4045 = fmul fast float %3465, %4038
  %4046 = fmul fast float %4045, %3516
  %4047 = fmul fast float %4046, %4027
  %4048 = fmul fast float %4009, %1570
  %4049 = fmul fast float %4010, %1570
  %4050 = fmul fast float %4011, %1570
  %4051 = fadd fast float %4028, %1551
  %4052 = fadd fast float %4051, %4041
  %4053 = fmul fast float %4052, %1570
  %4054 = fadd fast float %4029, %1552
  %4055 = fadd fast float %4054, %4044
  %4056 = fmul fast float %4055, %1570
  %4057 = fadd fast float %4030, %1553
  %4058 = fadd fast float %4057, %4047
  %4059 = fmul fast float %4058, %1570
  %4060 = bitcast i32 %2211 to float
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4063 = fcmp fast oeq float %4062, 0.000000e+00
  br i1 %4063, label %5605, label %4064

; <label>:4064                                    ; preds = %4005
  %4065 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4066 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4067 = extractvalue %dx.types.CBufRet.f32 %4061, 2
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4071 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4075 = call float @dx.op.dot3.f32(i32 55, float %4069, float %4070, float %4071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = select i1 %238, float %4073, float %4069
  %4077 = select i1 %238, float %4075, float %4070
  %4078 = select i1 %238, float %4074, float %4071
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 2
  %4081 = fmul fast float %4080, %76
  %4082 = fmul fast float %4080, %77
  %4083 = fmul fast float %4080, %78
  %4084 = fadd fast float %4081, %147
  %4085 = fadd fast float %4082, %148
  %4086 = fadd fast float %4083, %149
  %4087 = fcmp fast olt float %4062, 0.000000e+00
  br i1 %4087, label %5183, label %4088

; <label>:4088                                    ; preds = %4064
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4092 = extractvalue %dx.types.CBufRet.f32 %4089, 2
  %4093 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 0
  %4096 = extractvalue %dx.types.CBufRet.f32 %4094, 1
  %4097 = extractvalue %dx.types.CBufRet.f32 %4094, 2
  %4098 = extractvalue %dx.types.CBufRet.f32 %4094, 3
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 0
  %4101 = extractvalue %dx.types.CBufRet.f32 %4099, 1
  %4102 = extractvalue %dx.types.CBufRet.f32 %4099, 2
  %4103 = extractvalue %dx.types.CBufRet.f32 %4099, 3
  %4104 = fmul fast float %4090, %4084
  %4105 = call float @dx.op.tertiary.f32(i32 46, float %4085, float %4091, float %4104)  ; FMad(a,b,c)
  %4106 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4092, float %4105)  ; FMad(a,b,c)
  %4107 = fadd fast float %4106, %4093
  %4108 = fmul fast float %4095, %4084
  %4109 = call float @dx.op.tertiary.f32(i32 46, float %4085, float %4096, float %4108)  ; FMad(a,b,c)
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4097, float %4109)  ; FMad(a,b,c)
  %4111 = fadd fast float %4110, %4098
  %4112 = fmul fast float %4100, %4084
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4085, float %4101, float %4112)  ; FMad(a,b,c)
  %4114 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4102, float %4113)  ; FMad(a,b,c)
  %4115 = fadd fast float %4114, %4103
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.CBufRet.f32 %4116, 1
  %4119 = extractvalue %dx.types.CBufRet.f32 %4116, 3
  %4120 = fmul fast float %4119, %4107
  %4121 = fmul fast float %4119, %4111
  %4122 = fadd fast float %4120, %4117
  %4123 = fadd fast float %4121, %4118
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 0
  %4126 = extractvalue %dx.types.CBufRet.f32 %4124, 1
  %4127 = extractvalue %dx.types.CBufRet.f32 %4124, 3
  %4128 = fmul fast float %4127, %4107
  %4129 = fmul fast float %4127, %4111
  %4130 = fadd fast float %4128, %4125
  %4131 = fadd fast float %4129, %4126
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 1
  %4134 = fsub fast float %4133, %4115
  %4135 = extractvalue %dx.types.CBufRet.f32 %4132, 2
  %4136 = fmul fast float %4134, %4135
  %4137 = fsub fast float 1.000000e+00, %4136
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4124, 2
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 2
  %4142 = fadd fast float %4141, %4139
  %4143 = fcmp fast ogt float %4142, 0.000000e+00
  br i1 %4143, label %4144, label %4168

; <label>:4144                                    ; preds = %4088
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4148 = fsub fast float %4130, %4146
  %4149 = fsub fast float %4131, %4147
  %4150 = fcmp fast olt float %4148, 0.000000e+00
  %4151 = fcmp fast olt float %4149, 0.000000e+00
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.CBufRet.f32 %4152, 2
  %4156 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4157 = select i1 %4150, float %4153, float %4155
  %4158 = select i1 %4151, float %4154, float %4156
  %4159 = fmul fast float %4157, %4148
  %4160 = fmul fast float %4158, %4149
  %4161 = call float @dx.op.unary.f32(i32 6, float %4159)  ; FAbs(value)
  %4162 = call float @dx.op.unary.f32(i32 6, float %4160)  ; FAbs(value)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4164 = call float @dx.op.binary.f32(i32 35, float %4161, float %4162)  ; FMax(a,b)
  %4165 = fsub fast float %4163, %4164
  %4166 = call float @dx.op.unary.f32(i32 7, float %4165)  ; Saturate(value)
  %4167 = fmul fast float %4166, %4138
  br label %4168

; <label>:4168                                    ; preds = %4144, %4088
  %4169 = phi float [ %4167, %4144 ], [ 0.000000e+00, %4088 ]
  %4170 = extractvalue %dx.types.CBufRet.f32 %4116, 2
  %4171 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4172 = fadd fast float %4171, %4170
  %4173 = fcmp fast ogt float %4172, 0.000000e+00
  %4174 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  br i1 %4173, label %4175, label %4198

; <label>:4175                                    ; preds = %4168
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4179 = fsub fast float %4122, %4177
  %4180 = fsub fast float %4123, %4178
  %4181 = fcmp fast olt float %4179, 0.000000e+00
  %4182 = fcmp fast olt float %4180, 0.000000e+00
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.CBufRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.CBufRet.f32 %4183, 2
  %4187 = extractvalue %dx.types.CBufRet.f32 %4183, 3
  %4188 = select i1 %4181, float %4184, float %4186
  %4189 = select i1 %4182, float %4185, float %4187
  %4190 = fmul fast float %4188, %4179
  %4191 = fmul fast float %4189, %4180
  %4192 = call float @dx.op.unary.f32(i32 6, float %4190)  ; FAbs(value)
  %4193 = call float @dx.op.unary.f32(i32 6, float %4191)  ; FAbs(value)
  %4194 = call float @dx.op.binary.f32(i32 35, float %4192, float %4193)  ; FMax(a,b)
  %4195 = fsub fast float %4174, %4194
  %4196 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4197 = fmul fast float %4196, %4138
  br label %4198

; <label>:4198                                    ; preds = %4175, %4168
  %4199 = phi float [ %4197, %4175 ], [ 0.000000e+00, %4168 ]
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 1
  %4202 = call float @dx.op.unary.f32(i32 7, float %4201)  ; Saturate(value)
  %4203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4204 = extractvalue %dx.types.CBufRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.CBufRet.f32 %4203, 1
  %4206 = fsub fast float %4107, %4204
  %4207 = fsub fast float %4111, %4205
  %4208 = fcmp fast olt float %4206, 0.000000e+00
  %4209 = fcmp fast olt float %4207, 0.000000e+00
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4213 = extractvalue %dx.types.CBufRet.f32 %4210, 2
  %4214 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4215 = select i1 %4208, float %4211, float %4213
  %4216 = select i1 %4209, float %4212, float %4214
  %4217 = fmul fast float %4215, %4206
  %4218 = fmul fast float %4216, %4207
  %4219 = call float @dx.op.unary.f32(i32 6, float %4217)  ; FAbs(value)
  %4220 = call float @dx.op.unary.f32(i32 6, float %4218)  ; FAbs(value)
  %4221 = call float @dx.op.binary.f32(i32 35, float %4219, float %4220)  ; FMax(a,b)
  %4222 = fsub fast float %4174, %4221
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4224 = call float @dx.op.binary.f32(i32 36, float %4223, float %4202)  ; FMin(a,b)
  %4225 = fmul fast float %4224, %4138
  %4226 = fsub fast float %4199, %4225
  %4227 = fsub fast float %4169, %4199
  %4228 = fsub fast float %4227, %4225
  %4229 = call float @dx.op.binary.f32(i32 35, float %4199, float %4169)  ; FMax(a,b)
  %4230 = call float @dx.op.binary.f32(i32 35, float %4225, float %4229)  ; FMax(a,b)
  %4231 = fcmp fast olt float %4230, 1.000000e+00
  br i1 %4231, label %4232, label %4630, !dx.controlflow.hints !115

; <label>:4232                                    ; preds = %4198
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 0
  %4235 = fcmp fast une float %4234, 0.000000e+00
  br i1 %4235, label %4236, label %4630, !dx.controlflow.hints !116

; <label>:4236                                    ; preds = %4232
  %4237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4237, 0
  %4239 = extractvalue %dx.types.CBufRet.f32 %4237, 1
  %4240 = extractvalue %dx.types.CBufRet.f32 %4237, 2
  %4241 = extractvalue %dx.types.CBufRet.f32 %4237, 3
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4245 = extractvalue %dx.types.CBufRet.f32 %4242, 2
  %4246 = extractvalue %dx.types.CBufRet.f32 %4242, 3
  %4247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.f32 %4247, 0
  %4249 = extractvalue %dx.types.CBufRet.f32 %4247, 1
  %4250 = extractvalue %dx.types.CBufRet.f32 %4247, 2
  %4251 = extractvalue %dx.types.CBufRet.f32 %4247, 3
  %4252 = fmul fast float %4238, %4084
  %4253 = call float @dx.op.tertiary.f32(i32 46, float %4085, float %4239, float %4252)  ; FMad(a,b,c)
  %4254 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4240, float %4253)  ; FMad(a,b,c)
  %4255 = fadd fast float %4254, %4241
  %4256 = fmul fast float %4243, %4084
  %4257 = call float @dx.op.tertiary.f32(i32 46, float %4085, float %4244, float %4256)  ; FMad(a,b,c)
  %4258 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4245, float %4257)  ; FMad(a,b,c)
  %4259 = fadd fast float %4258, %4246
  %4260 = fmul fast float %4248, %4084
  %4261 = call float @dx.op.tertiary.f32(i32 46, float %4085, float %4249, float %4260)  ; FMad(a,b,c)
  %4262 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4250, float %4261)  ; FMad(a,b,c)
  %4263 = fadd fast float %4262, %4251
  %4264 = fcmp fast oge float %4255, 1.000000e+00
  %4265 = fcmp fast oge float %4259, 1.000000e+00
  %4266 = or i1 %4264, %4265
  %4267 = fcmp fast olt float %4255, 0.000000e+00
  %4268 = fcmp fast olt float %4259, 0.000000e+00
  %4269 = or i1 %4267, %4268
  %4270 = or i1 %4266, %4269
  br i1 %4270, label %4630, label %4271, !dx.controlflow.hints !117

; <label>:4271                                    ; preds = %4236
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4274 = extractvalue %dx.types.CBufRet.f32 %4272, 1
  %4275 = extractvalue %dx.types.CBufRet.f32 %4272, 2
  %4276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.i32 %4276, 2
  %4278 = uitofp i32 %4277 to float
  %4279 = extractvalue %dx.types.CBufRet.i32 %4276, 3
  %4280 = uitofp i32 %4279 to float
  %4281 = extractvalue %dx.types.CBufRet.f32 %4272, 3
  %4282 = fmul fast float %4281, 2.000000e+00
  %4283 = fsub fast float %4255, %4273
  %4284 = fsub fast float %4259, %4274
  %4285 = fmul fast float %4282, %4283
  %4286 = fmul fast float %4282, %4284
  %4287 = fdiv fast float 1.000000e+00, %4067
  %4288 = fmul fast float %4286, %4287
  %4289 = call float @dx.op.unary.f32(i32 6, float %4288)  ; FAbs(value)
  %4290 = fmul fast float %4275, %4086
  %4291 = fmul fast float %4290, %4282
  %4292 = call float @dx.op.unary.f32(i32 6, float %4291)  ; FAbs(value)
  %4293 = call float @dx.op.unary.f32(i32 6, float %4285)  ; FAbs(value)
  %4294 = call float @dx.op.binary.f32(i32 35, float %4292, float %4289)  ; FMax(a,b)
  %4295 = call float @dx.op.binary.f32(i32 35, float %4293, float %4294)  ; FMax(a,b)
  %4296 = fmul fast float %4295, 2.000000e+00
  %4297 = call float @dx.op.unary.f32(i32 23, float %4296)  ; Log(value)
  %4298 = call float @dx.op.binary.f32(i32 35, float %4297, float %4278)  ; FMax(a,b)
  %4299 = call float @dx.op.unary.f32(i32 22, float %4298)  ; Frc(value)
  %4300 = fadd fast float %4299, 0xBFEA666660000000
  %4301 = fmul fast float %4300, 8.000000e+00
  %4302 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4303 = call float @dx.op.unary.f32(i32 27, float %4298)  ; Round_ni(value)
  %4304 = fadd fast float %4303, %4302
  %4305 = call float @dx.op.binary.f32(i32 36, float %4304, float %4280)  ; FMin(a,b)
  %4306 = call float @dx.op.unary.f32(i32 27, float %4305)  ; Round_ni(value)
  %4307 = fsub fast float -0.000000e+00, %4306
  %4308 = call float @dx.op.unary.f32(i32 21, float %4307)  ; Exp(value)
  %4309 = fmul fast float %4308, %4282
  %4310 = fmul fast float %4309, %4255
  %4311 = fmul fast float %4309, %4259
  %4312 = fmul fast float %4310, 2.500000e-01
  %4313 = fmul fast float %4311, 2.500000e-01
  %4314 = fadd fast float %4312, 5.000000e-01
  %4315 = fadd fast float %4313, 5.000000e-01
  %4316 = fsub fast float %4280, %4278
  %4317 = fptoui float %4316 to i32
  %4318 = add i32 %4317, 320
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4318)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4322 = fcmp fast une float %4305, %4280
  %4323 = fsub fast float %4255, %4320
  %4324 = fsub fast float %4259, %4321
  %4325 = call float @dx.op.unary.f32(i32 6, float %4323)  ; FAbs(value)
  %4326 = call float @dx.op.unary.f32(i32 6, float %4324)  ; FAbs(value)
  %4327 = fmul fast float %4325, %4309
  %4328 = fmul fast float %4326, %4309
  %4329 = fcmp fast olt float %4327, 1.000000e+00
  %4330 = fcmp fast olt float %4328, 1.000000e+00
  %4331 = and i1 %4329, %4330
  %4332 = or i1 %4322, %4331
  br i1 %4332, label %4333, label %4630, !dx.controlflow.hints !118

; <label>:4333                                    ; preds = %4271
  %4334 = fmul fast float %4311, 5.000000e-01
  %4335 = fmul fast float %4310, 5.000000e-01
  %4336 = fadd fast float %4334, 5.000000e-01
  %4337 = fadd fast float %4335, 5.000000e-01
  %4338 = sitofp i32 %4277 to float
  %4339 = fsub fast float %4305, %4338
  %4340 = call float @dx.op.unary.f32(i32 27, float %4339)  ; Round_ni(value)
  %4341 = call float @dx.op.unary.f32(i32 22, float %4305)  ; Frc(value)
  %4342 = call float @dx.op.unary.f32(i32 22, float %4337)  ; Frc(value)
  %4343 = call float @dx.op.unary.f32(i32 22, float %4336)  ; Frc(value)
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4342, float %4343, float %4340, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = extractvalue %dx.types.ResRet.f32 %4344, 1
  %4347 = extractvalue %dx.types.ResRet.f32 %4344, 2
  %4348 = extractvalue %dx.types.ResRet.f32 %4344, 3
  %4349 = fcmp fast ogt float %4341, 0.000000e+00
  br i1 %4349, label %4350, label %4371, !dx.controlflow.hints !119

; <label>:4350                                    ; preds = %4333
  %4351 = fadd fast float %4340, 1.000000e+00
  %4352 = call float @dx.op.unary.f32(i32 22, float %4314)  ; Frc(value)
  %4353 = call float @dx.op.unary.f32(i32 22, float %4315)  ; Frc(value)
  %4354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4352, float %4353, float %4351, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.ResRet.f32 %4354, 1
  %4357 = extractvalue %dx.types.ResRet.f32 %4354, 2
  %4358 = extractvalue %dx.types.ResRet.f32 %4354, 3
  %4359 = fsub fast float %4355, %4345
  %4360 = fsub fast float %4356, %4346
  %4361 = fsub fast float %4357, %4347
  %4362 = fsub fast float %4358, %4348
  %4363 = fmul fast float %4359, %4341
  %4364 = fmul fast float %4360, %4341
  %4365 = fmul fast float %4361, %4341
  %4366 = fmul fast float %4362, %4341
  %4367 = fadd fast float %4363, %4345
  %4368 = fadd fast float %4364, %4346
  %4369 = fadd fast float %4365, %4347
  %4370 = fadd fast float %4366, %4348
  br label %4371

; <label>:4371                                    ; preds = %4350, %4333
  %4372 = phi float [ %4367, %4350 ], [ %4345, %4333 ]
  %4373 = phi float [ %4368, %4350 ], [ %4346, %4333 ]
  %4374 = phi float [ %4369, %4350 ], [ %4347, %4333 ]
  %4375 = phi float [ %4370, %4350 ], [ %4348, %4333 ]
  %4376 = fadd fast float %4372, -5.000000e-01
  %4377 = fadd fast float %4374, -5.000000e-01
  %4378 = fmul fast float %4376, 0xBFD5555560000000
  %4379 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4377, float %4378)  ; FMad(a,b,c)
  %4380 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4373, float 0.000000e+00)  ; FMad(a,b,c)
  %4381 = fadd fast float %4380, %4375
  %4382 = fmul fast float %4376, -7.500000e-01
  %4383 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4377, float %4382)  ; FMad(a,b,c)
  %4384 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4373, float 0.000000e+00)  ; FMad(a,b,c)
  %4385 = fadd fast float %4384, %4375
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 0
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.CBufRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.CBufRet.f32 %4388, 2
  %4392 = extractvalue %dx.types.CBufRet.f32 %4388, 3
  %4393 = fsub fast float %4389, %4379
  %4394 = fsub fast float %4390, %4381
  %4395 = fsub fast float %4391, %4383
  %4396 = fsub fast float %4392, %4385
  %4397 = fmul fast float %4393, %4387
  %4398 = fmul fast float %4394, %4387
  %4399 = fmul fast float %4395, %4387
  %4400 = fmul fast float %4396, %4387
  %4401 = fadd fast float %4397, %4379
  %4402 = fadd fast float %4398, %4381
  %4403 = fadd fast float %4399, %4383
  %4404 = fadd fast float %4400, %4385
  %4405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4406 = extractvalue %dx.types.ResRet.i32 %4405, 0
  %4407 = and i32 %4406, 536870911
  %4408 = uitofp i32 %4407 to float
  %4409 = fmul fast float %4408, %4255
  %4410 = fmul fast float %4408, %4259
  %4411 = fptoui float %4409 to i32
  %4412 = fptoui float %4410 to i32
  %4413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.i32 %4413, 0
  %4415 = and i32 %4414, 31
  %4416 = lshr i32 %4411, %4415
  %4417 = lshr i32 %4412, %4415
  %4418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.i32 %4418, 0
  %4420 = and i32 %4419, 31
  %4421 = shl i32 1, %4420
  %4422 = call i32 @dx.op.binary.i32(i32 40, i32 %4421, i32 4)  ; UMin(a,b)
  %4423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.i32 %4423, 0
  %4425 = extractvalue %dx.types.ResRet.i32 %4423, 1
  %4426 = icmp eq i32 %4422, 0
  br i1 %4426, label %4468, label %4427

; <label>:4427                                    ; preds = %4371
  br label %4428

; <label>:4428                                    ; preds = %4456, %4427
  %4429 = phi i32 [ %4459, %4456 ], [ 0, %4427 ]
  %4430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.i32 %4430, 0
  %4432 = lshr i32 %4431, 16
  %4433 = and i32 %4432, 31
  %4434 = shl i32 %4417, %4433
  %4435 = add i32 %4434, %4416
  %4436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.i32 %4436, 0
  %4438 = and i32 %4437, 31
  %4439 = shl i32 %4435, %4438
  %4440 = add i32 %4439, %4429
  %4441 = shl i32 %4440, 2
  %4442 = add i32 %4441, 32
  %4443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.i32 %4443, 0
  %4445 = icmp slt i32 %4444, 0
  %4446 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4429
  %4447 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4429
  %4448 = bitcast float* %4446 to i32*
  %4449 = bitcast float* %4447 to i32*
  br i1 %4445, label %4450, label %4456

; <label>:4450                                    ; preds = %4428
  %4451 = and i32 %4444, 1073741823
  %4452 = add nuw nsw i32 %4451, 20
  %4453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.i32 %4453, 0
  %4455 = extractvalue %dx.types.ResRet.i32 %4453, 1
  br label %4456

; <label>:4456                                    ; preds = %4450, %4428
  %4457 = phi i32 [ %4454, %4450 ], [ %4424, %4428 ]
  %4458 = phi i32 [ %4455, %4450 ], [ %4425, %4428 ]
  store i32 %4457, i32* %4448, align 4
  store i32 %4458, i32* %4449, align 4
  %4459 = add nuw i32 %4429, 1
  %4460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.i32 %4460, 2
  %4462 = icmp eq i32 %4461, 0
  %4463 = icmp ugt i32 %4444, -1073741825
  %4464 = and i1 %4463, %4462
  %4465 = icmp ult i32 %4459, %4422
  %4466 = and i1 %4464, %4465
  br i1 %4466, label %4428, label %4467

; <label>:4467                                    ; preds = %4456
  br label %4468

; <label>:4468                                    ; preds = %4467, %4371
  %4469 = phi i32 [ 0, %4371 ], [ %4459, %4467 ]
  %4470 = extractvalue %dx.types.CBufRet.f32 %4233, 2
  %4471 = fptoui float %4470 to i32
  %4472 = icmp eq i32 %4471, 0
  br i1 %4472, label %4524, label %4473

; <label>:4473                                    ; preds = %4468
  br label %4474

; <label>:4474                                    ; preds = %4519, %4473
  %4475 = phi i32 [ %4520, %4519 ], [ %4469, %4473 ]
  %4476 = phi i32 [ %4521, %4519 ], [ 0, %4473 ]
  %4477 = lshr i32 %4476, 2
  %4478 = and i32 %4476, 3
  %4479 = add nuw nsw i32 %4477, 83
  %4480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4479)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.i32 %4480, 0
  %4482 = extractvalue %dx.types.CBufRet.i32 %4480, 1
  %4483 = extractvalue %dx.types.CBufRet.i32 %4480, 2
  %4484 = extractvalue %dx.types.CBufRet.i32 %4480, 3
  %4485 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4481, i32* %4485, align 4
  %4486 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4482, i32* %4486, align 4
  %4487 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4483, i32* %4487, align 4
  %4488 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4484, i32* %4488, align 4
  %4489 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4478
  %4490 = load i32, i32* %4489, align 4, !tbaa !120, !noalias !124
  %4491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4492 = extractvalue %dx.types.ResRet.i32 %4491, 0
  %4493 = lshr i32 %4492, 16
  %4494 = and i32 %4493, 31
  %4495 = shl i32 %4417, %4494
  %4496 = add i32 %4495, %4416
  %4497 = shl i32 %4496, 2
  %4498 = add i32 %4497, %4490
  %4499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.i32 %4499, 0
  %4501 = icmp eq i32 %4500, 0
  br i1 %4501, label %4519, label %4502

; <label>:4502                                    ; preds = %4474
  %4503 = icmp slt i32 %4500, 0
  %4504 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4475
  %4505 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4475
  %4506 = bitcast float* %4504 to i32*
  %4507 = bitcast float* %4505 to i32*
  br i1 %4503, label %4508, label %4515

; <label>:4508                                    ; preds = %4502
  %4509 = and i32 %4500, 1073741823
  %4510 = add i32 %4490, 20
  %4511 = add i32 %4510, %4509
  %4512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4511, i32 undef)  ; BufferLoad(srv,index,wot)
  %4513 = extractvalue %dx.types.ResRet.i32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.i32 %4512, 1
  br label %4515

; <label>:4515                                    ; preds = %4508, %4502
  %4516 = phi i32 [ %4513, %4508 ], [ %4424, %4502 ]
  %4517 = phi i32 [ %4514, %4508 ], [ %4425, %4502 ]
  store i32 %4516, i32* %4506, align 4
  store i32 %4517, i32* %4507, align 4
  %4518 = add i32 %4475, 1
  br label %4519

; <label>:4519                                    ; preds = %4515, %4474
  %4520 = phi i32 [ %4475, %4474 ], [ %4518, %4515 ]
  %4521 = add nuw i32 %4476, 1
  %4522 = icmp eq i32 %4521, %4471
  br i1 %4522, label %4523, label %4474

; <label>:4523                                    ; preds = %4519
  br label %4524

; <label>:4524                                    ; preds = %4523, %4468
  %4525 = phi i32 [ %4469, %4468 ], [ %4520, %4523 ]
  %4526 = icmp eq i32 %4525, 1
  %4527 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %4528 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %4526, label %4529, label %4532

; <label>:4529                                    ; preds = %4524
  %4530 = load float, float* %4527, align 4
  %4531 = load float, float* %4528, align 4
  br label %4559

; <label>:4532                                    ; preds = %4524
  %4533 = load float, float* %4527, align 4
  %4534 = load float, float* %4528, align 4
  %4535 = fdiv fast float 1.000000e+00, %4534
  %4536 = fsub fast float %4533, %4535
  %4537 = icmp ugt i32 %4525, 1
  br i1 %4537, label %4538, label %4554

; <label>:4538                                    ; preds = %4532
  br label %4539

; <label>:4539                                    ; preds = %4539, %4538
  %4540 = phi float [ %4549, %4539 ], [ %4536, %4538 ]
  %4541 = phi float [ %4550, %4539 ], [ %4533, %4538 ]
  %4542 = phi i32 [ %4551, %4539 ], [ 1, %4538 ]
  %4543 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4542
  %4544 = load float, float* %4543, align 4
  %4545 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4542
  %4546 = load float, float* %4545, align 4
  %4547 = fdiv fast float 1.000000e+00, %4546
  %4548 = fsub fast float %4544, %4547
  %4549 = call float @dx.op.binary.f32(i32 36, float %4540, float %4548)  ; FMin(a,b)
  %4550 = call float @dx.op.binary.f32(i32 35, float %4541, float %4544)  ; FMax(a,b)
  %4551 = add nuw i32 %4542, 1
  %4552 = icmp eq i32 %4551, %4525
  br i1 %4552, label %4553, label %4539

; <label>:4553                                    ; preds = %4539
  br label %4554

; <label>:4554                                    ; preds = %4553, %4532
  %4555 = phi float [ %4536, %4532 ], [ %4549, %4553 ]
  %4556 = phi float [ %4533, %4532 ], [ %4550, %4553 ]
  %4557 = fsub fast float %4556, %4555
  %4558 = fdiv fast float 1.000000e+00, %4557
  br label %4559

; <label>:4559                                    ; preds = %4554, %4529
  %4560 = phi float [ %4530, %4529 ], [ %4556, %4554 ]
  %4561 = phi float [ %4531, %4529 ], [ %4558, %4554 ]
  %4562 = fadd fast float %4263, %4560
  %4563 = fmul fast float %4562, %4561
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = fmul fast float %4564, 2.000000e+00
  %4566 = fsub fast float 1.000000e+00, %4565
  %4567 = fmul fast float %4401, %4401
  %4568 = fsub fast float %4402, %4567
  %4569 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4568)  ; FMax(a,b)
  %4570 = fdiv fast float 1.000000e+00, %4569
  %4571 = fmul fast float %4402, %4401
  %4572 = fsub fast float %4403, %4571
  %4573 = fsub fast float %4566, %4401
  %4574 = fmul fast float %4566, %4566
  %4575 = fsub fast float %4574, %4402
  %4576 = fmul fast float %4570, %4572
  %4577 = fmul fast float %4576, %4573
  %4578 = fsub fast float %4575, %4577
  %4579 = fmul fast float %4402, %4402
  %4580 = fsub fast float %4404, %4579
  %4581 = fmul fast float %4572, %4572
  %4582 = fmul fast float %4581, %4570
  %4583 = fsub fast float %4580, %4582
  %4584 = fdiv fast float %4578, %4583
  %4585 = fmul fast float %4584, %4572
  %4586 = fsub fast float %4573, %4585
  %4587 = fmul fast float %4586, %4570
  %4588 = fmul fast float %4587, %4401
  %4589 = fsub fast float 1.000000e+00, %4588
  %4590 = fmul fast float %4584, %4402
  %4591 = fsub fast float %4589, %4590
  %4592 = fmul fast float %4587, %4587
  %4593 = fmul fast float %4584, 4.000000e+00
  %4594 = fmul fast float %4593, %4591
  %4595 = fsub fast float %4592, %4594
  %4596 = call float @dx.op.unary.f32(i32 24, float %4595)  ; Sqrt(value)
  %4597 = fcmp fast oge float %4587, 0.000000e+00
  %4598 = fsub fast float -0.000000e+00, %4596
  %4599 = select i1 %4597, float %4598, float %4596
  %4600 = fsub fast float %4599, %4587
  %4601 = fdiv fast float %4600, %4584
  %4602 = fdiv fast float %4591, %4600
  %4603 = fmul fast float %4601, 5.000000e-01
  %4604 = fmul fast float %4602, 2.000000e+00
  %4605 = select i1 %4597, float %4603, float %4604
  %4606 = select i1 %4597, float %4604, float %4603
  %4607 = call float @dx.op.binary.f32(i32 35, float %4605, float %4606)  ; FMax(a,b)
  %4608 = call float @dx.op.binary.f32(i32 36, float %4605, float %4606)  ; FMin(a,b)
  %4609 = fcmp fast ogt float %4566, %4607
  %4610 = fsub fast float %4566, %4608
  %4611 = fsub fast float %4566, %4607
  %4612 = fsub fast float %4607, %4608
  %4613 = select i1 %4609, float %4611, float %4612
  %4614 = fmul float %4610, %4613
  %4615 = select i1 %4609, float %4608, float %4566
  %4616 = fcmp fast ogt float %4566, %4608
  %4617 = fmul fast float %4615, %4607
  %4618 = fadd fast float %4615, %4607
  %4619 = fmul fast float %4618, %4401
  %4620 = fadd fast float %4617, %4402
  %4621 = fsub fast float %4620, %4619
  %4622 = fdiv fast float %4621, %4614
  %4623 = select i1 %4616, float %4622, float 0.000000e+00
  %4624 = fsub fast float 1.000000e+00, %4623
  %4625 = select i1 %4609, float %4624, float %4623
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4386, 3
  %4628 = fmul fast float %4627, %4626
  %4629 = fsub fast float 1.000000e+00, %4628
  br label %4630

; <label>:4630                                    ; preds = %4559, %4271, %4236, %4232, %4198
  %4631 = phi float [ 1.000000e+00, %4198 ], [ %4629, %4559 ], [ 1.000000e+00, %4236 ], [ 1.000000e+00, %4271 ], [ 1.000000e+00, %4232 ]
  %4632 = fcmp fast ogt float %4228, 0.000000e+00
  br i1 %4632, label %4633, label %4795, !dx.controlflow.hints !133

; <label>:4633                                    ; preds = %4630
  %4634 = fadd fast float %4141, %4115
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4637 = extractvalue %dx.types.CBufRet.f32 %4635, 3
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 2
  %4640 = call float @dx.op.binary.f32(i32 35, float %4634, float 0.000000e+00)  ; FMax(a,b)
  %4641 = fadd fast float %4640, 0x3F10000000000000
  %4642 = fcmp fast oeq float %4639, 0.000000e+00
  br i1 %4642, label %4643, label %4710

; <label>:4643                                    ; preds = %4633
  %4644 = extractvalue %dx.types.CBufRet.f32 %4635, 1
  %4645 = extractvalue %dx.types.CBufRet.f32 %4635, 0
  %4646 = fmul fast float %4645, %4130
  %4647 = fmul fast float %4644, %4131
  %4648 = fadd fast float %4646, 5.000000e-01
  %4649 = call float @dx.op.unary.f32(i32 27, float %4648)  ; Round_ni(value)
  %4650 = fadd fast float %4647, 5.000000e-01
  %4651 = call float @dx.op.unary.f32(i32 27, float %4650)  ; Round_ni(value)
  %4652 = fsub fast float %4648, %4649
  %4653 = fsub fast float %4650, %4651
  %4654 = fadd fast float %4649, -5.000000e-01
  %4655 = fadd fast float %4651, -5.000000e-01
  %4656 = fmul fast float %4652, 2.000000e+00
  %4657 = fsub fast float 3.000000e+00, %4656
  %4658 = fadd fast float %4656, 1.000000e+00
  %4659 = fsub fast float 2.000000e+00, %4652
  %4660 = bitcast float %4657 to i32
  %4661 = sub nsw i32 2129859010, %4660
  %4662 = bitcast i32 %4661 to float
  %4663 = fmul fast float %4662, %4659
  %4664 = fadd fast float %4663, -1.000000e+00
  %4665 = bitcast float %4658 to i32
  %4666 = sub nsw i32 2129859010, %4665
  %4667 = bitcast i32 %4666 to float
  %4668 = fmul fast float %4667, %4652
  %4669 = fadd fast float %4668, 1.000000e+00
  %4670 = fmul fast float %4653, 2.000000e+00
  %4671 = fsub fast float 3.000000e+00, %4670
  %4672 = fadd fast float %4670, 1.000000e+00
  %4673 = fsub fast float 2.000000e+00, %4653
  %4674 = bitcast float %4671 to i32
  %4675 = sub nsw i32 2129859010, %4674
  %4676 = bitcast i32 %4675 to float
  %4677 = fmul fast float %4676, %4673
  %4678 = fadd fast float %4677, -1.000000e+00
  %4679 = bitcast float %4672 to i32
  %4680 = sub nsw i32 2129859010, %4679
  %4681 = bitcast i32 %4680 to float
  %4682 = fmul fast float %4681, %4653
  %4683 = fadd fast float %4682, 1.000000e+00
  %4684 = fadd fast float %4664, %4654
  %4685 = fmul fast float %4684, %4636
  %4686 = fadd fast float %4678, %4655
  %4687 = fmul fast float %4686, %4637
  %4688 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4685, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float %4641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = fmul fast float %4689, %4657
  %4691 = fadd fast float %4669, %4654
  %4692 = fmul fast float %4691, %4636
  %4693 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4692, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float %4641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4694 = extractvalue %dx.types.ResRet.f32 %4693, 0
  %4695 = fmul fast float %4694, %4658
  %4696 = fadd fast float %4683, %4655
  %4697 = fmul fast float %4696, %4637
  %4698 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4685, float %4697, float undef, float undef, i32 0, i32 0, i32 undef, float %4641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = fmul fast float %4699, %4657
  %4701 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4692, float %4697, float undef, float undef, i32 0, i32 0, i32 undef, float %4641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = fmul fast float %4702, %4658
  %4704 = fadd fast float %4703, %4700
  %4705 = fmul fast float %4704, %4672
  %4706 = fadd fast float %4695, %4690
  %4707 = fmul fast float %4706, %4671
  %4708 = fadd fast float %4707, %4705
  %4709 = fmul fast float %4708, 6.250000e-02
  br label %4795

; <label>:4710                                    ; preds = %4633
  %4711 = fmul fast float %249, 0x401921FB60000000
  %4712 = call float @dx.op.unary.f32(i32 13, float %4711)  ; Sin(value)
  %4713 = call float @dx.op.unary.f32(i32 12, float %4711)  ; Cos(value)
  %4714 = fsub fast float -0.000000e+00, %4712
  br label %4715

; <label>:4715                                    ; preds = %4764, %4710
  %4716 = phi float [ 0.000000e+00, %4710 ], [ %4759, %4764 ]
  %4717 = phi float [ 0.000000e+00, %4710 ], [ %4761, %4764 ]
  %4718 = phi i32 [ 0, %4710 ], [ %4765, %4764 ]
  %4719 = mul i32 %4718, 2
  %4720 = add i32 0, %4719
  %4721 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4720
  %4722 = load float, float* %4721, align 4
  %4723 = mul i32 %4718, 2
  %4724 = add i32 1, %4723
  %4725 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4724
  %4726 = load float, float* %4725, align 4
  %4727 = fmul fast float %4722, %4713
  %4728 = call float @dx.op.tertiary.f32(i32 46, float %4726, float %4714, float %4727)  ; FMad(a,b,c)
  %4729 = fmul fast float %4722, %4712
  %4730 = call float @dx.op.tertiary.f32(i32 46, float %4726, float %4713, float %4729)  ; FMad(a,b,c)
  %4731 = fmul fast float %4728, %4639
  %4732 = fmul fast float %4730, %4639
  %4733 = fadd fast float %4731, %4130
  %4734 = fadd fast float %4732, %4131
  %4735 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4733, float %4734, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4736 = extractvalue %dx.types.ResRet.f32 %4735, 0
  %4737 = extractvalue %dx.types.ResRet.f32 %4735, 1
  %4738 = extractvalue %dx.types.ResRet.f32 %4735, 2
  %4739 = extractvalue %dx.types.ResRet.f32 %4735, 3
  %4740 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %4736, float* %4740, align 4
  %4741 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %4737, float* %4741, align 4
  %4742 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %4738, float* %4742, align 4
  %4743 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %4739, float* %4743, align 4
  %4744 = fsub fast float %4736, %4641
  %4745 = fcmp fast olt float %4744, 0.000000e+00
  %4746 = select i1 %4745, float 0.000000e+00, float 1.000000e+00
  %4747 = fadd fast float %4746, %4716
  %4748 = fmul fast float %4746, %4744
  %4749 = fadd fast float %4748, %4717
  br label %4750

; <label>:4750                                    ; preds = %4750, %4715
  %4751 = phi i32 [ 1, %4715 ], [ %4762, %4750 ]
  %4752 = phi float [ %4749, %4715 ], [ %4761, %4750 ]
  %4753 = phi float [ %4747, %4715 ], [ %4759, %4750 ]
  %4754 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %4751
  %4755 = load float, float* %4754, align 4, !tbaa !134, !noalias !124
  %4756 = fsub fast float %4755, %4641
  %4757 = fcmp fast olt float %4756, 0.000000e+00
  %4758 = select i1 %4757, float 0.000000e+00, float 1.000000e+00
  %4759 = fadd fast float %4758, %4753
  %4760 = fmul fast float %4758, %4756
  %4761 = fadd fast float %4760, %4752
  %4762 = add nuw nsw i32 %4751, 1
  %4763 = icmp eq i32 %4762, 4
  br i1 %4763, label %4764, label %4750, !llvm.loop !136

; <label>:4764                                    ; preds = %4750
  %4765 = add nuw nsw i32 %4718, 1
  %4766 = icmp eq i32 %4765, 8
  br i1 %4766, label %4767, label %4715, !llvm.loop !137

; <label>:4767                                    ; preds = %4764
  %4768 = fdiv fast float 1.000000e+00, %4759
  %4769 = fmul fast float %4768, %4761
  %4770 = fdiv fast float 1.000000e+00, %4641
  %4771 = fmul fast float %4769, %4770
  %4772 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4773 = call float @dx.op.binary.f32(i32 35, float %4772, float 0.000000e+00)  ; FMax(a,b)
  %4774 = fmul fast float %4759, 3.125000e-02
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = fmul fast float %4775, 2.000000e+00
  %4777 = fadd fast float %4776, -1.000000e+00
  %4778 = fcmp fast ogt float %4777, 0.000000e+00
  %4779 = fcmp fast olt float %4777, 0.000000e+00
  %4780 = zext i1 %4778 to i32
  %4781 = zext i1 %4779 to i32
  %4782 = sub nsw i32 %4780, %4781
  %4783 = sitofp i32 %4782 to float
  %4784 = fmul fast float %4783, %4777
  %4785 = fsub fast float 1.000000e+00, %4784
  %4786 = fmul fast float %4785, %4785
  %4787 = fmul fast float %4786, %4785
  %4788 = fsub fast float %4785, %4787
  %4789 = fmul fast float %4788, %4773
  %4790 = fsub fast float 1.000000e+00, %4787
  %4791 = fsub fast float %4790, %4789
  %4792 = fmul fast float %4783, 5.000000e-01
  %4793 = fmul fast float %4792, %4791
  %4794 = fsub fast float 5.000000e-01, %4793
  br label %4795

; <label>:4795                                    ; preds = %4767, %4643, %4630
  %4796 = phi float [ 1.000000e+00, %4630 ], [ %4709, %4643 ], [ %4794, %4767 ]
  %4797 = fcmp fast ogt float %4226, 0.000000e+00
  br i1 %4797, label %4798, label %4962, !dx.controlflow.hints !138

; <label>:4798                                    ; preds = %4795
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.f32 %4799, 1
  %4801 = fadd fast float %4800, %4115
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 2
  %4804 = extractvalue %dx.types.CBufRet.f32 %4802, 3
  %4805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.f32 %4805, 1
  %4807 = call float @dx.op.binary.f32(i32 35, float %4801, float 0.000000e+00)  ; FMax(a,b)
  %4808 = fadd fast float %4807, 0x3F10000000000000
  %4809 = fcmp fast oeq float %4806, 0.000000e+00
  br i1 %4809, label %4810, label %4877

; <label>:4810                                    ; preds = %4798
  %4811 = extractvalue %dx.types.CBufRet.f32 %4802, 1
  %4812 = extractvalue %dx.types.CBufRet.f32 %4802, 0
  %4813 = fmul fast float %4812, %4122
  %4814 = fmul fast float %4811, %4123
  %4815 = fadd fast float %4813, 5.000000e-01
  %4816 = call float @dx.op.unary.f32(i32 27, float %4815)  ; Round_ni(value)
  %4817 = fadd fast float %4814, 5.000000e-01
  %4818 = call float @dx.op.unary.f32(i32 27, float %4817)  ; Round_ni(value)
  %4819 = fsub fast float %4815, %4816
  %4820 = fsub fast float %4817, %4818
  %4821 = fadd fast float %4816, -5.000000e-01
  %4822 = fadd fast float %4818, -5.000000e-01
  %4823 = fmul fast float %4819, 2.000000e+00
  %4824 = fsub fast float 3.000000e+00, %4823
  %4825 = fadd fast float %4823, 1.000000e+00
  %4826 = fsub fast float 2.000000e+00, %4819
  %4827 = bitcast float %4824 to i32
  %4828 = sub nsw i32 2129859010, %4827
  %4829 = bitcast i32 %4828 to float
  %4830 = fmul fast float %4829, %4826
  %4831 = fadd fast float %4830, -1.000000e+00
  %4832 = bitcast float %4825 to i32
  %4833 = sub nsw i32 2129859010, %4832
  %4834 = bitcast i32 %4833 to float
  %4835 = fmul fast float %4834, %4819
  %4836 = fadd fast float %4835, 1.000000e+00
  %4837 = fmul fast float %4820, 2.000000e+00
  %4838 = fsub fast float 3.000000e+00, %4837
  %4839 = fadd fast float %4837, 1.000000e+00
  %4840 = fsub fast float 2.000000e+00, %4820
  %4841 = bitcast float %4838 to i32
  %4842 = sub nsw i32 2129859010, %4841
  %4843 = bitcast i32 %4842 to float
  %4844 = fmul fast float %4843, %4840
  %4845 = fadd fast float %4844, -1.000000e+00
  %4846 = bitcast float %4839 to i32
  %4847 = sub nsw i32 2129859010, %4846
  %4848 = bitcast i32 %4847 to float
  %4849 = fmul fast float %4848, %4820
  %4850 = fadd fast float %4849, 1.000000e+00
  %4851 = fadd fast float %4831, %4821
  %4852 = fmul fast float %4851, %4803
  %4853 = fadd fast float %4845, %4822
  %4854 = fmul fast float %4853, %4804
  %4855 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4852, float %4854, float undef, float undef, i32 0, i32 0, i32 undef, float %4808)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4856 = extractvalue %dx.types.ResRet.f32 %4855, 0
  %4857 = fmul fast float %4856, %4824
  %4858 = fadd fast float %4836, %4821
  %4859 = fmul fast float %4858, %4803
  %4860 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4859, float %4854, float undef, float undef, i32 0, i32 0, i32 undef, float %4808)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4861 = extractvalue %dx.types.ResRet.f32 %4860, 0
  %4862 = fmul fast float %4861, %4825
  %4863 = fadd fast float %4850, %4822
  %4864 = fmul fast float %4863, %4804
  %4865 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4852, float %4864, float undef, float undef, i32 0, i32 0, i32 undef, float %4808)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4866 = extractvalue %dx.types.ResRet.f32 %4865, 0
  %4867 = fmul fast float %4866, %4824
  %4868 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4859, float %4864, float undef, float undef, i32 0, i32 0, i32 undef, float %4808)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4869 = extractvalue %dx.types.ResRet.f32 %4868, 0
  %4870 = fmul fast float %4869, %4825
  %4871 = fadd fast float %4870, %4867
  %4872 = fmul fast float %4871, %4839
  %4873 = fadd fast float %4862, %4857
  %4874 = fmul fast float %4873, %4838
  %4875 = fadd fast float %4874, %4872
  %4876 = fmul fast float %4875, 6.250000e-02
  br label %4962

; <label>:4877                                    ; preds = %4798
  %4878 = fmul fast float %249, 0x401921FB60000000
  %4879 = call float @dx.op.unary.f32(i32 13, float %4878)  ; Sin(value)
  %4880 = call float @dx.op.unary.f32(i32 12, float %4878)  ; Cos(value)
  %4881 = fsub fast float -0.000000e+00, %4879
  br label %4882

; <label>:4882                                    ; preds = %4931, %4877
  %4883 = phi float [ 0.000000e+00, %4877 ], [ %4926, %4931 ]
  %4884 = phi float [ 0.000000e+00, %4877 ], [ %4928, %4931 ]
  %4885 = phi i32 [ 0, %4877 ], [ %4932, %4931 ]
  %4886 = mul i32 %4885, 2
  %4887 = add i32 0, %4886
  %4888 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4887
  %4889 = load float, float* %4888, align 4
  %4890 = mul i32 %4885, 2
  %4891 = add i32 1, %4890
  %4892 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4891
  %4893 = load float, float* %4892, align 4
  %4894 = fmul fast float %4889, %4880
  %4895 = call float @dx.op.tertiary.f32(i32 46, float %4893, float %4881, float %4894)  ; FMad(a,b,c)
  %4896 = fmul fast float %4889, %4879
  %4897 = call float @dx.op.tertiary.f32(i32 46, float %4893, float %4880, float %4896)  ; FMad(a,b,c)
  %4898 = fmul fast float %4895, %4806
  %4899 = fmul fast float %4897, %4806
  %4900 = fadd fast float %4898, %4122
  %4901 = fadd fast float %4899, %4123
  %4902 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %4900, float %4901, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4903 = extractvalue %dx.types.ResRet.f32 %4902, 0
  %4904 = extractvalue %dx.types.ResRet.f32 %4902, 1
  %4905 = extractvalue %dx.types.ResRet.f32 %4902, 2
  %4906 = extractvalue %dx.types.ResRet.f32 %4902, 3
  %4907 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %4903, float* %4907, align 4
  %4908 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %4904, float* %4908, align 4
  %4909 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %4905, float* %4909, align 4
  %4910 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %4906, float* %4910, align 4
  %4911 = fsub fast float %4903, %4808
  %4912 = fcmp fast olt float %4911, 0.000000e+00
  %4913 = select i1 %4912, float 0.000000e+00, float 1.000000e+00
  %4914 = fadd fast float %4913, %4883
  %4915 = fmul fast float %4913, %4911
  %4916 = fadd fast float %4915, %4884
  br label %4917

; <label>:4917                                    ; preds = %4917, %4882
  %4918 = phi i32 [ 1, %4882 ], [ %4929, %4917 ]
  %4919 = phi float [ %4916, %4882 ], [ %4928, %4917 ]
  %4920 = phi float [ %4914, %4882 ], [ %4926, %4917 ]
  %4921 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %4918
  %4922 = load float, float* %4921, align 4, !tbaa !134, !noalias !124
  %4923 = fsub fast float %4922, %4808
  %4924 = fcmp fast olt float %4923, 0.000000e+00
  %4925 = select i1 %4924, float 0.000000e+00, float 1.000000e+00
  %4926 = fadd fast float %4925, %4920
  %4927 = fmul fast float %4925, %4923
  %4928 = fadd fast float %4927, %4919
  %4929 = add nuw nsw i32 %4918, 1
  %4930 = icmp eq i32 %4929, 4
  br i1 %4930, label %4931, label %4917, !llvm.loop !136

; <label>:4931                                    ; preds = %4917
  %4932 = add nuw nsw i32 %4885, 1
  %4933 = icmp eq i32 %4932, 8
  br i1 %4933, label %4934, label %4882, !llvm.loop !137

; <label>:4934                                    ; preds = %4931
  %4935 = fdiv fast float 1.000000e+00, %4926
  %4936 = fmul fast float %4935, %4928
  %4937 = fdiv fast float 1.000000e+00, %4808
  %4938 = fmul fast float %4936, %4937
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = call float @dx.op.binary.f32(i32 35, float %4939, float 0.000000e+00)  ; FMax(a,b)
  %4941 = fmul fast float %4926, 3.125000e-02
  %4942 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4943 = fmul fast float %4942, 2.000000e+00
  %4944 = fadd fast float %4943, -1.000000e+00
  %4945 = fcmp fast ogt float %4944, 0.000000e+00
  %4946 = fcmp fast olt float %4944, 0.000000e+00
  %4947 = zext i1 %4945 to i32
  %4948 = zext i1 %4946 to i32
  %4949 = sub nsw i32 %4947, %4948
  %4950 = sitofp i32 %4949 to float
  %4951 = fmul fast float %4950, %4944
  %4952 = fsub fast float 1.000000e+00, %4951
  %4953 = fmul fast float %4952, %4952
  %4954 = fmul fast float %4953, %4952
  %4955 = fsub fast float %4952, %4954
  %4956 = fmul fast float %4955, %4940
  %4957 = fsub fast float 1.000000e+00, %4954
  %4958 = fsub fast float %4957, %4956
  %4959 = fmul fast float %4950, 5.000000e-01
  %4960 = fmul fast float %4959, %4958
  %4961 = fsub fast float 5.000000e-01, %4960
  br label %4962

; <label>:4962                                    ; preds = %4934, %4810, %4795
  %4963 = phi float [ 1.000000e+00, %4795 ], [ %4876, %4810 ], [ %4961, %4934 ]
  %4964 = fcmp fast ogt float %4225, 0.000000e+00
  br i1 %4964, label %4965, label %5129, !dx.controlflow.hints !139

; <label>:4965                                    ; preds = %4962
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 0
  %4968 = fadd fast float %4967, %4115
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 2
  %4971 = extractvalue %dx.types.CBufRet.f32 %4969, 3
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = call float @dx.op.binary.f32(i32 35, float %4968, float 0.000000e+00)  ; FMax(a,b)
  %4975 = fadd fast float %4974, 0x3F10000000000000
  %4976 = fcmp fast oeq float %4973, 0.000000e+00
  br i1 %4976, label %4977, label %5044

; <label>:4977                                    ; preds = %4965
  %4978 = extractvalue %dx.types.CBufRet.f32 %4969, 1
  %4979 = extractvalue %dx.types.CBufRet.f32 %4969, 0
  %4980 = fmul fast float %4979, %4107
  %4981 = fmul fast float %4978, %4111
  %4982 = fadd fast float %4980, 5.000000e-01
  %4983 = call float @dx.op.unary.f32(i32 27, float %4982)  ; Round_ni(value)
  %4984 = fadd fast float %4981, 5.000000e-01
  %4985 = call float @dx.op.unary.f32(i32 27, float %4984)  ; Round_ni(value)
  %4986 = fsub fast float %4982, %4983
  %4987 = fsub fast float %4984, %4985
  %4988 = fadd fast float %4983, -5.000000e-01
  %4989 = fadd fast float %4985, -5.000000e-01
  %4990 = fmul fast float %4986, 2.000000e+00
  %4991 = fsub fast float 3.000000e+00, %4990
  %4992 = fadd fast float %4990, 1.000000e+00
  %4993 = fsub fast float 2.000000e+00, %4986
  %4994 = bitcast float %4991 to i32
  %4995 = sub nsw i32 2129859010, %4994
  %4996 = bitcast i32 %4995 to float
  %4997 = fmul fast float %4996, %4993
  %4998 = fadd fast float %4997, -1.000000e+00
  %4999 = bitcast float %4992 to i32
  %5000 = sub nsw i32 2129859010, %4999
  %5001 = bitcast i32 %5000 to float
  %5002 = fmul fast float %5001, %4986
  %5003 = fadd fast float %5002, 1.000000e+00
  %5004 = fmul fast float %4987, 2.000000e+00
  %5005 = fsub fast float 3.000000e+00, %5004
  %5006 = fadd fast float %5004, 1.000000e+00
  %5007 = fsub fast float 2.000000e+00, %4987
  %5008 = bitcast float %5005 to i32
  %5009 = sub nsw i32 2129859010, %5008
  %5010 = bitcast i32 %5009 to float
  %5011 = fmul fast float %5010, %5007
  %5012 = fadd fast float %5011, -1.000000e+00
  %5013 = bitcast float %5006 to i32
  %5014 = sub nsw i32 2129859010, %5013
  %5015 = bitcast i32 %5014 to float
  %5016 = fmul fast float %5015, %4987
  %5017 = fadd fast float %5016, 1.000000e+00
  %5018 = fadd fast float %4998, %4988
  %5019 = fmul fast float %5018, %4970
  %5020 = fadd fast float %5012, %4989
  %5021 = fmul fast float %5020, %4971
  %5022 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5019, float %5021, float undef, float undef, i32 0, i32 0, i32 undef, float %4975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5023 = extractvalue %dx.types.ResRet.f32 %5022, 0
  %5024 = fmul fast float %5023, %4991
  %5025 = fadd fast float %5003, %4988
  %5026 = fmul fast float %5025, %4970
  %5027 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5026, float %5021, float undef, float undef, i32 0, i32 0, i32 undef, float %4975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5028 = extractvalue %dx.types.ResRet.f32 %5027, 0
  %5029 = fmul fast float %5028, %4992
  %5030 = fadd fast float %5017, %4989
  %5031 = fmul fast float %5030, %4971
  %5032 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5019, float %5031, float undef, float undef, i32 0, i32 0, i32 undef, float %4975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5033 = extractvalue %dx.types.ResRet.f32 %5032, 0
  %5034 = fmul fast float %5033, %4991
  %5035 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5026, float %5031, float undef, float undef, i32 0, i32 0, i32 undef, float %4975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5036 = extractvalue %dx.types.ResRet.f32 %5035, 0
  %5037 = fmul fast float %5036, %4992
  %5038 = fadd fast float %5037, %5034
  %5039 = fmul fast float %5038, %5006
  %5040 = fadd fast float %5029, %5024
  %5041 = fmul fast float %5040, %5005
  %5042 = fadd fast float %5041, %5039
  %5043 = fmul fast float %5042, 6.250000e-02
  br label %5129

; <label>:5044                                    ; preds = %4965
  %5045 = fmul fast float %249, 0x401921FB60000000
  %5046 = call float @dx.op.unary.f32(i32 13, float %5045)  ; Sin(value)
  %5047 = call float @dx.op.unary.f32(i32 12, float %5045)  ; Cos(value)
  %5048 = fsub fast float -0.000000e+00, %5046
  br label %5049

; <label>:5049                                    ; preds = %5098, %5044
  %5050 = phi float [ 0.000000e+00, %5044 ], [ %5093, %5098 ]
  %5051 = phi float [ 0.000000e+00, %5044 ], [ %5095, %5098 ]
  %5052 = phi i32 [ 0, %5044 ], [ %5099, %5098 ]
  %5053 = mul i32 %5052, 2
  %5054 = add i32 0, %5053
  %5055 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5054
  %5056 = load float, float* %5055, align 4
  %5057 = mul i32 %5052, 2
  %5058 = add i32 1, %5057
  %5059 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5058
  %5060 = load float, float* %5059, align 4
  %5061 = fmul fast float %5056, %5047
  %5062 = call float @dx.op.tertiary.f32(i32 46, float %5060, float %5048, float %5061)  ; FMad(a,b,c)
  %5063 = fmul fast float %5056, %5046
  %5064 = call float @dx.op.tertiary.f32(i32 46, float %5060, float %5047, float %5063)  ; FMad(a,b,c)
  %5065 = fmul fast float %5062, %4973
  %5066 = fmul fast float %5064, %4973
  %5067 = fadd fast float %5065, %4107
  %5068 = fadd fast float %5066, %4111
  %5069 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5067, float %5068, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.ResRet.f32 %5069, 1
  %5072 = extractvalue %dx.types.ResRet.f32 %5069, 2
  %5073 = extractvalue %dx.types.ResRet.f32 %5069, 3
  %5074 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %5070, float* %5074, align 4
  %5075 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %5071, float* %5075, align 4
  %5076 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %5072, float* %5076, align 4
  %5077 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %5073, float* %5077, align 4
  %5078 = fsub fast float %5070, %4975
  %5079 = fcmp fast olt float %5078, 0.000000e+00
  %5080 = select i1 %5079, float 0.000000e+00, float 1.000000e+00
  %5081 = fadd fast float %5080, %5050
  %5082 = fmul fast float %5080, %5078
  %5083 = fadd fast float %5082, %5051
  br label %5084

; <label>:5084                                    ; preds = %5084, %5049
  %5085 = phi i32 [ 1, %5049 ], [ %5096, %5084 ]
  %5086 = phi float [ %5083, %5049 ], [ %5095, %5084 ]
  %5087 = phi float [ %5081, %5049 ], [ %5093, %5084 ]
  %5088 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %5085
  %5089 = load float, float* %5088, align 4, !tbaa !134, !noalias !124
  %5090 = fsub fast float %5089, %4975
  %5091 = fcmp fast olt float %5090, 0.000000e+00
  %5092 = select i1 %5091, float 0.000000e+00, float 1.000000e+00
  %5093 = fadd fast float %5092, %5087
  %5094 = fmul fast float %5092, %5090
  %5095 = fadd fast float %5094, %5086
  %5096 = add nuw nsw i32 %5085, 1
  %5097 = icmp eq i32 %5096, 4
  br i1 %5097, label %5098, label %5084, !llvm.loop !136

; <label>:5098                                    ; preds = %5084
  %5099 = add nuw nsw i32 %5052, 1
  %5100 = icmp eq i32 %5099, 8
  br i1 %5100, label %5101, label %5049, !llvm.loop !137

; <label>:5101                                    ; preds = %5098
  %5102 = fdiv fast float 1.000000e+00, %5093
  %5103 = fmul fast float %5102, %5095
  %5104 = fdiv fast float 1.000000e+00, %4975
  %5105 = fmul fast float %5103, %5104
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = call float @dx.op.binary.f32(i32 35, float %5106, float 0.000000e+00)  ; FMax(a,b)
  %5108 = fmul fast float %5093, 3.125000e-02
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = fmul fast float %5109, 2.000000e+00
  %5111 = fadd fast float %5110, -1.000000e+00
  %5112 = fcmp fast ogt float %5111, 0.000000e+00
  %5113 = fcmp fast olt float %5111, 0.000000e+00
  %5114 = zext i1 %5112 to i32
  %5115 = zext i1 %5113 to i32
  %5116 = sub nsw i32 %5114, %5115
  %5117 = sitofp i32 %5116 to float
  %5118 = fmul fast float %5117, %5111
  %5119 = fsub fast float 1.000000e+00, %5118
  %5120 = fmul fast float %5119, %5119
  %5121 = fmul fast float %5120, %5119
  %5122 = fsub fast float %5119, %5121
  %5123 = fmul fast float %5122, %5107
  %5124 = fsub fast float 1.000000e+00, %5121
  %5125 = fsub fast float %5124, %5123
  %5126 = fmul fast float %5117, 5.000000e-01
  %5127 = fmul fast float %5126, %5125
  %5128 = fsub fast float 5.000000e-01, %5127
  br label %5129

; <label>:5129                                    ; preds = %5101, %4977, %4962
  %5130 = phi float [ 1.000000e+00, %4962 ], [ %5043, %4977 ], [ %5128, %5101 ]
  %5131 = fsub fast float %4796, %4631
  %5132 = fmul fast float %5131, %4169
  %5133 = fadd fast float %5132, %4631
  %5134 = fsub fast float %4963, %5133
  %5135 = fmul fast float %5134, %4199
  %5136 = fadd fast float %5135, %5133
  %5137 = fsub fast float %5130, %5136
  %5138 = fmul fast float %5137, %4225
  %5139 = fadd fast float %5138, %5136
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5142 = fcmp fast ogt float %5141, 0.000000e+00
  br i1 %5142, label %5143, label %5183, !dx.controlflow.hints !140

; <label>:5143                                    ; preds = %5129
  %5144 = fcmp fast ugt float %5141, 0.000000e+00
  br i1 %5144, label %5145, label %5180

; <label>:5145                                    ; preds = %5143
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 0
  %5148 = extractvalue %dx.types.CBufRet.f32 %5146, 1
  %5149 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5150 = extractvalue %dx.types.CBufRet.f32 %5146, 3
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5155 = extractvalue %dx.types.CBufRet.f32 %5151, 3
  %5156 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5157 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.CBufRet.f32 %5158, 2
  %5162 = fadd fast float %5159, %4084
  %5163 = fadd fast float %5160, %4085
  %5164 = fadd fast float %5161, %4086
  %5165 = fmul fast float %5162, %5147
  %5166 = call float @dx.op.tertiary.f32(i32 46, float %5148, float %5163, float %5165)  ; FMad(a,b,c)
  %5167 = call float @dx.op.tertiary.f32(i32 46, float %5149, float %5164, float %5166)  ; FMad(a,b,c)
  %5168 = fadd fast float %5167, %5150
  %5169 = fmul fast float %5162, %5152
  %5170 = call float @dx.op.tertiary.f32(i32 46, float %5153, float %5163, float %5169)  ; FMad(a,b,c)
  %5171 = call float @dx.op.tertiary.f32(i32 46, float %5154, float %5164, float %5170)  ; FMad(a,b,c)
  %5172 = fadd fast float %5171, %5155
  %5173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5168, float %5172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5174 = extractvalue %dx.types.ResRet.f32 %5173, 0
  %5175 = fmul fast float %5174, %5157
  %5176 = fadd fast float %5175, %5156
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = fmul fast float %5177, %5141
  %5179 = fsub fast float 1.000000e+00, %5178
  br label %5180

; <label>:5180                                    ; preds = %5145, %5143
  %5181 = phi float [ %5179, %5145 ], [ 1.000000e+00, %5143 ]
  %5182 = fmul fast float %5181, %5139
  br label %5183

; <label>:5183                                    ; preds = %5180, %5129, %4064
  %5184 = phi float [ 1.000000e+00, %4064 ], [ %5182, %5180 ], [ %5139, %5129 ]
  %5185 = call float @dx.op.binary.f32(i32 36, float %5184, float %5184)  ; FMin(a,b)
  %5186 = call float @dx.op.binary.f32(i32 36, float %5184, float %5185)  ; FMin(a,b)
  %5187 = fcmp fast ogt float %5186, 0.000000e+00
  br i1 %5187, label %5188, label %5353, !dx.controlflow.hints !141

; <label>:5188                                    ; preds = %5183
  %5189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5189, 0
  %5191 = extractvalue %dx.types.CBufRet.f32 %5189, 1
  %5192 = extractvalue %dx.types.CBufRet.f32 %5189, 2
  %5193 = extractvalue %dx.types.CBufRet.f32 %5189, 3
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %5196 = extractvalue %dx.types.CBufRet.f32 %5194, 1
  %5197 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5198 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 0
  %5201 = extractvalue %dx.types.CBufRet.f32 %5199, 1
  %5202 = extractvalue %dx.types.CBufRet.f32 %5199, 2
  %5203 = extractvalue %dx.types.CBufRet.f32 %5199, 3
  %5204 = fmul fast float %5190, %4084
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %4085, float %5191, float %5204)  ; FMad(a,b,c)
  %5206 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %5192, float %5205)  ; FMad(a,b,c)
  %5207 = fadd fast float %5206, %5193
  %5208 = fmul fast float %5195, %4084
  %5209 = call float @dx.op.tertiary.f32(i32 46, float %4085, float %5196, float %5208)  ; FMad(a,b,c)
  %5210 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %5197, float %5209)  ; FMad(a,b,c)
  %5211 = fadd fast float %5210, %5198
  %5212 = fmul fast float %5200, %4084
  %5213 = call float @dx.op.tertiary.f32(i32 46, float %4085, float %5201, float %5212)  ; FMad(a,b,c)
  %5214 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %5202, float %5213)  ; FMad(a,b,c)
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.CBufRet.f32 %5215, 1
  %5218 = extractvalue %dx.types.CBufRet.f32 %5215, 3
  %5219 = fmul fast float %5218, %5207
  %5220 = fmul fast float %5218, %5211
  %5221 = fadd fast float %5219, %5216
  %5222 = fadd fast float %5220, %5217
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5225 = extractvalue %dx.types.CBufRet.f32 %5223, 1
  %5226 = fsub fast float %5221, %5224
  %5227 = fsub fast float %5222, %5225
  %5228 = fcmp fast olt float %5226, 0.000000e+00
  %5229 = fcmp fast olt float %5227, 0.000000e+00
  %5230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5230, 0
  %5232 = extractvalue %dx.types.CBufRet.f32 %5230, 1
  %5233 = extractvalue %dx.types.CBufRet.f32 %5230, 2
  %5234 = extractvalue %dx.types.CBufRet.f32 %5230, 3
  %5235 = select i1 %5228, float %5231, float %5233
  %5236 = select i1 %5229, float %5232, float %5234
  %5237 = fmul fast float %5235, %5226
  %5238 = fmul fast float %5236, %5227
  %5239 = call float @dx.op.unary.f32(i32 6, float %5237)  ; FAbs(value)
  %5240 = call float @dx.op.unary.f32(i32 6, float %5238)  ; FAbs(value)
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 0
  %5243 = call float @dx.op.binary.f32(i32 35, float %5239, float %5240)  ; FMax(a,b)
  %5244 = fsub fast float %5242, %5243
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = fcmp fast ogt float %5245, 0.000000e+00
  br i1 %5246, label %5247, label %5288, !dx.controlflow.hints !142

; <label>:5247                                    ; preds = %5188
  %5248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5221, float %5222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5249 = extractvalue %dx.types.ResRet.f32 %5248, 1
  %5250 = fcmp fast ogt float %5249, 0.000000e+00
  br i1 %5250, label %5251, label %5283

; <label>:5251                                    ; preds = %5247
  %5252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5221, float %5222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.ResRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.ResRet.f32 %5252, 2
  %5256 = extractvalue %dx.types.ResRet.f32 %5252, 3
  %5257 = fsub fast float 1.000000e+00, %5203
  %5258 = fsub fast float %5257, %5214
  %5259 = fmul fast float %5258, 0x400921FB60000000
  %5260 = fadd fast float %5259, 0x3FF921FB60000000
  %5261 = call float @dx.op.unary.f32(i32 13, float %5260)  ; Sin(value)
  %5262 = fadd fast float %5261, -1.000000e+00
  %5263 = fmul fast float %5262, 0x3FD45F3060000000
  %5264 = fmul fast float %5258, 0x401921FB60000000
  %5265 = fadd fast float %5264, 0x400921FB60000000
  %5266 = call float @dx.op.unary.f32(i32 13, float %5265)  ; Sin(value)
  %5267 = fadd fast float %5266, 0x3E7777A5C0000000
  %5268 = fmul fast float %5267, 0x3FC45F3060000000
  %5269 = fmul fast float %5258, 0x4022D97C80000000
  %5270 = fadd fast float %5269, 0x4012D97C80000000
  %5271 = call float @dx.op.unary.f32(i32 13, float %5270)  ; Sin(value)
  %5272 = fadd fast float %5271, 1.000000e+00
  %5273 = fmul fast float %5272, 0x3FBB2995E0000000
  %5274 = fmul fast float %5258, 0x402921FB60000000
  %5275 = fadd fast float %5274, 0x401921FB60000000
  %5276 = call float @dx.op.unary.f32(i32 13, float %5275)  ; Sin(value)
  %5277 = fadd fast float %5276, 0xBE8777A5C0000000
  %5278 = fmul fast float %5277, 0x3FB45F3060000000
  %5279 = call float @dx.op.dot4.f32(i32 56, float %5253, float %5254, float %5255, float %5256, float %5263, float %5268, float %5273, float %5278)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5280 = fmul fast float %5279, 0xBFF7154760000000
  %5281 = call float @dx.op.unary.f32(i32 21, float %5280)  ; Exp(value)
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  br label %5283

; <label>:5283                                    ; preds = %5251, %5247
  %5284 = phi float [ %5282, %5251 ], [ 1.000000e+00, %5247 ]
  %5285 = fadd fast float %5284, -1.000000e+00
  %5286 = fmul fast float %5285, %5245
  %5287 = fadd fast float %5286, 1.000000e+00
  br label %5288

; <label>:5288                                    ; preds = %5283, %5188
  %5289 = phi float [ %5287, %5283 ], [ 1.000000e+00, %5188 ]
  %5290 = fmul fast float %5289, %5184
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.CBufRet.f32 %5291, 1
  %5294 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5295 = fadd fast float %5292, %147
  %5296 = fadd fast float %5293, %148
  %5297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5298 = extractvalue %dx.types.CBufRet.f32 %5297, 1
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.CBufRet.f32 %5299, 1
  %5302 = extractvalue %dx.types.CBufRet.f32 %5299, 2
  %5303 = fsub fast float -0.000000e+00, %5295
  %5304 = fsub fast float -0.000000e+00, %5296
  %5305 = fsub fast float %2184, %5294
  %5306 = fadd fast float %5305, %5298
  %5307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5303, float %5304, float %5306)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5300, float %5301, float %5302)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = fdiv fast float 1.000000e+00, %5308
  %5310 = fmul fast float %5309, %5307
  %5311 = fmul fast float %5300, %5310
  %5312 = fmul fast float %5301, %5310
  %5313 = fadd fast float %5311, %5295
  %5314 = fadd fast float %5312, %5296
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.CBufRet.f32 %5315, 1
  %5318 = fsub fast float %5313, %5316
  %5319 = fsub fast float %5314, %5317
  %5320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.f32 %5320, 2
  %5322 = extractvalue %dx.types.CBufRet.f32 %5320, 3
  %5323 = fmul fast float %5318, %5321
  %5324 = fmul fast float %5319, %5322
  %5325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.i32 %5325, 3
  %5327 = icmp eq i32 %5326, 0
  br i1 %5327, label %5333, label %5328

; <label>:5328                                    ; preds = %5288
  %5329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5323, float %5324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5330 = extractvalue %dx.types.ResRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.ResRet.f32 %5329, 1
  %5332 = extractvalue %dx.types.ResRet.f32 %5329, 2
  br label %5338

; <label>:5333                                    ; preds = %5288
  %5334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5323, float %5324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5335 = extractvalue %dx.types.ResRet.f32 %5334, 0
  %5336 = extractvalue %dx.types.ResRet.f32 %5334, 1
  %5337 = extractvalue %dx.types.ResRet.f32 %5334, 2
  br label %5338

; <label>:5338                                    ; preds = %5333, %5328
  %5339 = phi float [ %5330, %5328 ], [ %5335, %5333 ]
  %5340 = phi float [ %5331, %5328 ], [ %5336, %5333 ]
  %5341 = phi float [ %5332, %5328 ], [ %5337, %5333 ]
  %5342 = extractvalue %dx.types.CBufRet.f32 %5297, 2
  %5343 = fmul fast float %5342, %5339
  %5344 = extractvalue %dx.types.CBufRet.f32 %5297, 0
  %5345 = fsub fast float %5310, %5344
  %5346 = fsub fast float %5345, %5343
  %5347 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5346)  ; FMax(a,b)
  %5348 = fmul fast float %5347, %5340
  %5349 = call float @dx.op.binary.f32(i32 36, float %5341, float %5348)  ; FMin(a,b)
  %5350 = fmul fast float %5349, 0xBFF7154760000000
  %5351 = call float @dx.op.unary.f32(i32 21, float %5350)  ; Exp(value)
  %5352 = fmul fast float %5290, %5351
  br label %5353

; <label>:5353                                    ; preds = %5338, %5183
  %5354 = phi float [ %5352, %5338 ], [ %5184, %5183 ]
  %5355 = call float @dx.op.binary.f32(i32 36, float %5354, float %5354)  ; FMin(a,b)
  %5356 = call float @dx.op.binary.f32(i32 36, float %5354, float %5355)  ; FMin(a,b)
  %5357 = fcmp fast ogt float %5356, 0.000000e+00
  br i1 %5357, label %5358, label %5605, !dx.controlflow.hints !143

; <label>:5358                                    ; preds = %5353
  %5359 = fmul fast float %5354, %4076
  %5360 = fmul fast float %5354, %4077
  %5361 = fmul fast float %5354, %4078
  %5362 = fsub fast float %149, %1972
  %5363 = fcmp fast ogt float %5362, 0.000000e+00
  %5364 = fmul fast float %4065, 5.120000e+02
  %5365 = fmul fast float %4066, 5.120000e+02
  %5366 = fmul fast float %4067, 5.120000e+02
  %5367 = fadd fast float %5366, %149
  %5368 = fsub fast float %1972, %5367
  %5369 = fmul fast float %5368, 2.000000e+00
  %5370 = fadd fast float %5369, %5367
  %5371 = select i1 %5363, float %5370, float %5367
  %5372 = fsub fast float %5371, %149
  %5373 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5372, float %5364, float %5365, float %5372)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = call float @dx.op.unary.f32(i32 25, float %5373)  ; Rsqrt(value)
  %5375 = fmul fast float %5374, %5364
  %5376 = fmul fast float %5374, %5365
  %5377 = fmul fast float %5374, %5372
  %5378 = fsub fast float %1972, %149
  %5379 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5378)  ; Dot3(ax,ay,az,bx,by,bz)
  %5380 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5375, float %5376, float %5377)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = fdiv fast float 1.000000e+00, %5380
  %5382 = fmul fast float %5381, %5379
  %5383 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5362, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5384 = fcmp fast ogt float %5383, 0.000000e+00
  %5385 = fcmp fast olt float %5383, 0.000000e+00
  %5386 = zext i1 %5384 to i32
  %5387 = zext i1 %5385 to i32
  %5388 = sub nsw i32 %5386, %5387
  %5389 = sitofp i32 %5388 to float
  %5390 = fsub fast float %5371, %1972
  %5391 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5390, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5392 = fcmp fast ogt float %5391, 0.000000e+00
  %5393 = fcmp fast olt float %5391, 0.000000e+00
  %5394 = zext i1 %5392 to i32
  %5395 = zext i1 %5393 to i32
  %5396 = sub nsw i32 %5394, %5395
  %5397 = sitofp i32 %5396 to float
  %5398 = fcmp fast une float %5389, %5397
  br i1 %5398, label %5399, label %5409

; <label>:5399                                    ; preds = %5358
  %5400 = fmul fast float %5382, %5377
  %5401 = fmul fast float %5382, %5376
  %5402 = fmul fast float %5382, %5375
  %5403 = fmul fast float %5402, %5402
  %5404 = fmul fast float %5401, %5401
  %5405 = fadd fast float %5403, %5404
  %5406 = fmul fast float %5400, %5400
  %5407 = fadd fast float %5405, %5406
  %5408 = call float @dx.op.unary.f32(i32 24, float %5407)  ; Sqrt(value)
  br label %5419

; <label>:5409                                    ; preds = %5358
  %5410 = icmp slt i32 %5388, 0
  br i1 %5410, label %5411, label %5419

; <label>:5411                                    ; preds = %5409
  %5412 = fsub fast float %149, %5371
  %5413 = fmul fast float %5364, %5364
  %5414 = fmul fast float %5365, %5365
  %5415 = fadd fast float %5413, %5414
  %5416 = fmul fast float %5412, %5412
  %5417 = fadd fast float %5415, %5416
  %5418 = call float @dx.op.unary.f32(i32 24, float %5417)  ; Sqrt(value)
  br label %5419

; <label>:5419                                    ; preds = %5411, %5409, %5399
  %5420 = phi float [ %5408, %5399 ], [ %5418, %5411 ], [ 0.000000e+00, %5409 ]
  %5421 = fsub fast float -0.000000e+00, %5420
  %5422 = select i1 %5363, float -0.000000e+00, float %5421
  %5423 = fmul fast float %1973, 0x3FF7154760000000
  %5424 = fmul fast float %5423, %5422
  %5425 = fmul fast float %1974, 0x3FF7154760000000
  %5426 = fmul fast float %5425, %5422
  %5427 = fmul fast float %1975, 0x3FF7154760000000
  %5428 = fmul fast float %5427, %5422
  %5429 = call float @dx.op.unary.f32(i32 21, float %5424)  ; Exp(value)
  %5430 = call float @dx.op.unary.f32(i32 21, float %5426)  ; Exp(value)
  %5431 = call float @dx.op.unary.f32(i32 21, float %5428)  ; Exp(value)
  %5432 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5433 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5434 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5435 = fmul fast float %5359, %5432
  %5436 = fmul fast float %5360, %5433
  %5437 = fmul fast float %5361, %5434
  %5438 = fsub fast float %4065, %2172
  %5439 = fsub fast float %4066, %2171
  %5440 = fsub fast float %4067, %2170
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = call float @dx.op.unary.f32(i32 25, float %5441)  ; Rsqrt(value)
  %5443 = fmul fast float %5442, %5438
  %5444 = fmul fast float %5442, %5439
  %5445 = fmul fast float %5442, %5440
  %5446 = call float @dx.op.dot3.f32(i32 55, float %4065, float %4066, float %4067, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = call float @dx.op.dot3.f32(i32 55, float %2169, float %2168, float %2167, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5448 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5449 = fmul fast float %5448, %5448
  %5450 = fmul fast float %5449, %4060
  %5451 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5452 = fmul fast float %5451, %5448
  %5453 = call float @dx.op.dot3.f32(i32 55, float %2176, float %2177, float %2178, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = fmul fast float %5453, %5453
  %5455 = call float @dx.op.unary.f32(i32 6, float %5446)  ; FAbs(value)
  %5456 = fsub fast float 1.000000e+00, %2205
  %5457 = fmul fast float %2187, %2187
  %5458 = fmul fast float %5457, %5456
  %5459 = fadd fast float %5458, %2205
  %5460 = bitcast float %5459 to i32
  %5461 = ashr i32 %5460, 1
  %5462 = add nsw i32 %5461, 532487669
  %5463 = bitcast i32 %5462 to float
  %5464 = fadd fast float %5463, %2187
  %5465 = fmul fast float %2205, %5454
  %5466 = fsub fast float 1.000000e+00, %5454
  %5467 = fadd fast float %5466, %5465
  %5468 = fmul fast float %5455, %5455
  %5469 = fmul fast float %5468, %5456
  %5470 = fadd fast float %5469, %2205
  %5471 = bitcast float %5470 to i32
  %5472 = ashr i32 %5471, 1
  %5473 = add nsw i32 %5472, 532487669
  %5474 = bitcast i32 %5473 to float
  %5475 = fadd fast float %5474, %5455
  %5476 = fmul fast float %5467, %5467
  %5477 = fmul fast float %5476, %5464
  %5478 = fmul fast float %5477, %5475
  %5479 = fdiv fast float 0x3FF0A00000000000, %5478
  %5480 = fmul fast float %5479, %2205
  %5481 = call float @dx.op.unary.f32(i32 6, float %5447)  ; FAbs(value)
  %5482 = fsub fast float 1.000000e+00, %5481
  %5483 = bitcast float %5482 to i32
  %5484 = sitofp i32 %5483 to float
  %5485 = fmul fast float %5484, 5.000000e+00
  %5486 = fadd fast float %5485, 0xC1EFBF8940000000
  %5487 = fptosi float %5486 to i32
  %5488 = bitcast i32 %5487 to float
  %5489 = fsub fast float 1.000000e+00, %2179
  %5490 = fsub fast float 1.000000e+00, %2180
  %5491 = fsub fast float 1.000000e+00, %2185
  %5492 = fmul fast float %5488, %5489
  %5493 = fmul fast float %5488, %5490
  %5494 = fmul fast float %5488, %5491
  %5495 = fadd fast float %5492, %2179
  %5496 = fadd fast float %5493, %2180
  %5497 = fadd fast float %5494, %2185
  br i1 %3483, label %5498, label %5521

; <label>:5498                                    ; preds = %5419
  %5499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1550, float %5481, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5500 = extractvalue %dx.types.ResRet.f32 %5499, 0
  %5501 = extractvalue %dx.types.ResRet.f32 %5499, 1
  %5502 = extractvalue %dx.types.ResRet.f32 %5499, 2
  %5503 = fadd fast float %5500, -5.000000e-01
  %5504 = fadd fast float %5501, -5.000000e-01
  %5505 = fadd fast float %5502, -5.000000e-01
  %5506 = fmul fast float %2179, 4.000000e+00
  %5507 = fmul fast float %5506, %5489
  %5508 = fmul fast float %5507, %5503
  %5509 = fmul fast float %2180, 4.000000e+00
  %5510 = fmul fast float %5509, %5490
  %5511 = fmul fast float %5510, %5504
  %5512 = fmul fast float %2185, 4.000000e+00
  %5513 = fmul fast float %5512, %5491
  %5514 = fmul fast float %5513, %5505
  %5515 = fadd fast float %5508, %5495
  %5516 = fadd fast float %5511, %5496
  %5517 = fadd fast float %5514, %5497
  %5518 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5519 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5520 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  br label %5521

; <label>:5521                                    ; preds = %5498, %5419
  %5522 = phi float [ %5518, %5498 ], [ %5495, %5419 ]
  %5523 = phi float [ %5519, %5498 ], [ %5496, %5419 ]
  %5524 = phi float [ %5520, %5498 ], [ %5497, %5419 ]
  %5525 = fmul fast float %5446, 9.843750e-01
  %5526 = fadd fast float %5525, 7.812500e-03
  %5527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5526, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5528 = extractvalue %dx.types.ResRet.f32 %5527, 2
  %5529 = extractvalue %dx.types.ResRet.f32 %5527, 3
  %5530 = fmul fast float %5528, %2179
  %5531 = fmul fast float %5528, %2180
  %5532 = fmul fast float %5528, %2185
  %5533 = fadd fast float %5530, %5529
  %5534 = fadd fast float %5531, %5529
  %5535 = fadd fast float %5532, %5529
  br i1 %3483, label %5536, label %5559

; <label>:5536                                    ; preds = %5521
  %5537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1550, float %5446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5538 = extractvalue %dx.types.ResRet.f32 %5537, 0
  %5539 = extractvalue %dx.types.ResRet.f32 %5537, 1
  %5540 = extractvalue %dx.types.ResRet.f32 %5537, 2
  %5541 = fadd fast float %5538, -5.000000e-01
  %5542 = fadd fast float %5539, -5.000000e-01
  %5543 = fadd fast float %5540, -5.000000e-01
  %5544 = fmul fast float %2179, 4.000000e+00
  %5545 = fmul fast float %5544, %5489
  %5546 = fmul fast float %5545, %5541
  %5547 = fmul fast float %2180, 4.000000e+00
  %5548 = fmul fast float %5547, %5490
  %5549 = fmul fast float %5548, %5542
  %5550 = fmul fast float %2185, 4.000000e+00
  %5551 = fmul fast float %5550, %5491
  %5552 = fmul fast float %5551, %5543
  %5553 = fadd fast float %5546, %5533
  %5554 = fadd fast float %5549, %5534
  %5555 = fadd fast float %5552, %5535
  %5556 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5557 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5558 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  br label %5559

; <label>:5559                                    ; preds = %5536, %5521
  %5560 = phi float [ %5556, %5536 ], [ %5533, %5521 ]
  %5561 = phi float [ %5557, %5536 ], [ %5534, %5521 ]
  %5562 = phi float [ %5558, %5536 ], [ %5535, %5521 ]
  %5563 = call float @dx.op.binary.f32(i32 35, float %5561, float %5562)  ; FMax(a,b)
  %5564 = call float @dx.op.binary.f32(i32 35, float %5560, float %5563)  ; FMax(a,b)
  %5565 = fsub fast float 1.000000e+00, %5564
  %5566 = fmul fast float %5522, %5480
  %5567 = fmul fast float %5523, %5480
  %5568 = fmul fast float %5524, %5480
  %5569 = fsub fast float 1.000000e+00, %5447
  %5570 = bitcast float %5569 to i32
  %5571 = sitofp i32 %5570 to float
  %5572 = fmul fast float %5571, 5.000000e+00
  %5573 = fadd fast float %5572, 0xC1EFBF8940000000
  %5574 = fptosi float %5573 to i32
  %5575 = bitcast i32 %5574 to float
  %5576 = fmul fast float %5575, %1549
  %5577 = fmul fast float %5565, %5576
  %5578 = fmul fast float %5577, %4025
  %5579 = fmul fast float %5577, %4026
  %5580 = fmul fast float %5577, %4027
  %5581 = fadd fast float %5578, %5566
  %5582 = fadd fast float %5579, %5567
  %5583 = fadd fast float %5580, %5568
  %5584 = fmul fast float %5452, %5435
  %5585 = fmul fast float %5584, %5565
  %5586 = fmul fast float %5452, %5436
  %5587 = fmul fast float %5586, %5565
  %5588 = fmul fast float %5452, %5437
  %5589 = fmul fast float %5588, %5565
  %5590 = fmul fast float %5584, %5581
  %5591 = fmul fast float %5586, %5582
  %5592 = fmul fast float %5588, %5583
  %5593 = fadd fast float %5585, %4009
  %5594 = fmul fast float %5593, %1570
  %5595 = fadd fast float %5587, %4010
  %5596 = fmul fast float %5595, %1570
  %5597 = fadd fast float %5589, %4011
  %5598 = fmul fast float %5597, %1570
  %5599 = fadd fast float %5590, %4052
  %5600 = fmul fast float %5599, %1570
  %5601 = fadd fast float %5591, %4055
  %5602 = fmul fast float %5601, %1570
  %5603 = fadd fast float %5592, %4058
  %5604 = fmul fast float %5603, %1570
  br label %5605

; <label>:5605                                    ; preds = %5559, %5353, %4005
  %5606 = phi float [ %4053, %4005 ], [ %4053, %5353 ], [ %5600, %5559 ]
  %5607 = phi float [ %4056, %4005 ], [ %4056, %5353 ], [ %5602, %5559 ]
  %5608 = phi float [ %4059, %4005 ], [ %4059, %5353 ], [ %5604, %5559 ]
  %5609 = phi float [ %4048, %4005 ], [ %4048, %5353 ], [ %5594, %5559 ]
  %5610 = phi float [ %4049, %4005 ], [ %4049, %5353 ], [ %5596, %5559 ]
  %5611 = phi float [ %4050, %4005 ], [ %4050, %5353 ], [ %5598, %5559 ]
  %5612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.i32 %5612, 0
  %5614 = icmp eq i32 %5613, 0
  br i1 %5614, label %6277, label %5615

; <label>:5615                                    ; preds = %5605
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 2
  %5618 = extractvalue %dx.types.CBufRet.f32 %5616, 3
  %5619 = fmul fast float %5617, %100
  %5620 = fmul fast float %5618, %101
  %5621 = fptoui float %5619 to i32
  %5622 = fptoui float %5620 to i32
  %5623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5624 = extractvalue %dx.types.CBufRet.f32 %5623, 0
  %5625 = extractvalue %dx.types.CBufRet.f32 %5623, 2
  %5626 = extractvalue %dx.types.CBufRet.f32 %5623, 3
  %5627 = fadd fast float %88, -4.000000e+00
  %5628 = call float @dx.op.binary.f32(i32 35, float %5627, float 0.000000e+00)  ; FMax(a,b)
  %5629 = fadd fast float %5628, %5624
  %5630 = fmul fast float %5629, %5625
  %5631 = call float @dx.op.unary.f32(i32 23, float %5630)  ; Log(value)
  %5632 = fmul fast float %5631, %5626
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5635 = fmul fast float %5632, %5634
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.i32 %5637, 1
  %5639 = add i32 %5638, -1
  %5640 = uitofp i32 %5638 to float
  %5641 = fmul fast float %5640, %5636
  %5642 = fptoui float %5641 to i32
  %5643 = call i32 @dx.op.binary.i32(i32 40, i32 %5642, i32 %5639)  ; UMin(a,b)
  %5644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.i32 %5644, 2
  %5646 = extractvalue %dx.types.CBufRet.i32 %5644, 3
  %5647 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5622, i32 %5645, i32 %5621)  ; UMad(a,b,c)
  %5648 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5643, i32 %5646, i32 %5647)  ; UMad(a,b,c)
  %5649 = add nsw i32 %5613, -1
  %5650 = call i32 @dx.op.binary.i32(i32 37, i32 %5649, i32 0)  ; IMax(a,b)
  %5651 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %5652 = fptoui float %5651 to i32
  %5653 = lshr i32 %5652, 5
  %5654 = call i32 @dx.op.binary.i32(i32 40, i32 %5653, i32 8191)  ; UMin(a,b)
  %5655 = shl i32 %5654, 2
  %5656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5655, i32 undef)  ; BufferLoad(srv,index,wot)
  %5657 = extractvalue %dx.types.ResRet.i32 %5656, 0
  %5658 = lshr i32 %5657, 16
  %5659 = and i32 %5657, 65535
  %5660 = lshr i32 %5657, 21
  %5661 = lshr i32 %5659, 5
  %5662 = call i32 @dx.op.binary.i32(i32 40, i32 %5661, i32 %5650)  ; UMin(a,b)
  %5663 = icmp ugt i32 %5660, %5662
  br i1 %5663, label %6277, label %5664

; <label>:5664                                    ; preds = %5615
  br label %5665

; <label>:5665                                    ; preds = %6267, %5664
  %5666 = phi i32 [ %6274, %6267 ], [ %5660, %5664 ]
  %5667 = phi float [ %6268, %6267 ], [ %5606, %5664 ]
  %5668 = phi float [ %6269, %6267 ], [ %5607, %5664 ]
  %5669 = phi float [ %6270, %6267 ], [ %5608, %5664 ]
  %5670 = phi float [ %6271, %6267 ], [ %5609, %5664 ]
  %5671 = phi float [ %6272, %6267 ], [ %5610, %5664 ]
  %5672 = phi float [ %6273, %6267 ], [ %5611, %5664 ]
  %5673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.i32 %5673, 0
  %5675 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5648, i32 %5674, i32 %5666)  ; UMad(a,b,c)
  %5676 = shl i32 %5675, 2
  %5677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5676, i32 undef)  ; BufferLoad(srv,index,wot)
  %5678 = extractvalue %dx.types.ResRet.i32 %5677, 0
  %5679 = shl i32 %5666, 5
  %5680 = sub nsw i32 %5658, %5679
  %5681 = call i32 @dx.op.binary.i32(i32 37, i32 %5680, i32 0)  ; IMax(a,b)
  %5682 = call i32 @dx.op.binary.i32(i32 38, i32 %5681, i32 31)  ; IMin(a,b)
  %5683 = sub nsw i32 1, %5658
  %5684 = add nsw i32 %5683, %5659
  %5685 = call i32 @dx.op.binary.i32(i32 37, i32 %5684, i32 0)  ; IMax(a,b)
  %5686 = call i32 @dx.op.binary.i32(i32 38, i32 %5685, i32 32)  ; IMin(a,b)
  %5687 = and i32 %5686, 31
  %5688 = shl i32 -1, %5687
  %5689 = xor i32 %5688, -1
  %5690 = and i32 %5682, 31
  %5691 = shl i32 %5689, %5690
  %5692 = icmp eq i32 %5686, 32
  %5693 = select i1 %5692, i32 -1, i32 %5691
  %5694 = and i32 %5693, %5678
  %5695 = icmp eq i32 %5694, 0
  br i1 %5695, label %6267, label %5696

; <label>:5696                                    ; preds = %5665
  br label %5697

; <label>:5697                                    ; preds = %5831, %5696
  %5698 = phi i32 [ %5709, %5831 ], [ %5694, %5696 ]
  %5699 = phi float [ %5832, %5831 ], [ %5667, %5696 ]
  %5700 = phi float [ %5833, %5831 ], [ %5668, %5696 ]
  %5701 = phi float [ %5834, %5831 ], [ %5669, %5696 ]
  %5702 = phi float [ %5835, %5831 ], [ %5670, %5696 ]
  %5703 = phi float [ %5836, %5831 ], [ %5671, %5696 ]
  %5704 = phi float [ %5837, %5831 ], [ %5672, %5696 ]
  %5705 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5698)  ; FirstbitLo(value)
  %5706 = add i32 %5705, %5679
  %5707 = and i32 %5705, 31
  %5708 = shl i32 1, %5707
  %5709 = xor i32 %5708, %5698
  %5710 = mul i32 %5706, 112
  %5711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5710, i32 undef)  ; BufferLoad(srv,index,wot)
  %5712 = extractvalue %dx.types.ResRet.f32 %5711, 0
  %5713 = extractvalue %dx.types.ResRet.f32 %5711, 1
  %5714 = extractvalue %dx.types.ResRet.f32 %5711, 2
  %5715 = or i32 %5710, 12
  %5716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5715, i32 undef)  ; BufferLoad(srv,index,wot)
  %5717 = extractvalue %dx.types.ResRet.f32 %5716, 0
  %5718 = add i32 %5710, 16
  %5719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5718, i32 undef)  ; BufferLoad(srv,index,wot)
  %5720 = extractvalue %dx.types.ResRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.ResRet.f32 %5719, 1
  %5722 = extractvalue %dx.types.ResRet.f32 %5719, 2
  %5723 = add i32 %5710, 28
  %5724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5723, i32 undef)  ; BufferLoad(srv,index,wot)
  %5725 = extractvalue %dx.types.ResRet.i32 %5724, 0
  %5726 = add i32 %5710, 44
  %5727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5726, i32 undef)  ; BufferLoad(srv,index,wot)
  %5728 = extractvalue %dx.types.ResRet.f32 %5727, 0
  %5729 = add i32 %5710, 48
  %5730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5729, i32 undef)  ; BufferLoad(srv,index,wot)
  %5731 = extractvalue %dx.types.ResRet.f32 %5730, 0
  %5732 = extractvalue %dx.types.ResRet.f32 %5730, 1
  %5733 = extractvalue %dx.types.ResRet.f32 %5730, 2
  %5734 = extractvalue %dx.types.ResRet.f32 %5730, 3
  %5735 = add i32 %5710, 64
  %5736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5735, i32 undef)  ; BufferLoad(srv,index,wot)
  %5737 = extractvalue %dx.types.ResRet.f32 %5736, 0
  %5738 = extractvalue %dx.types.ResRet.f32 %5736, 1
  %5739 = extractvalue %dx.types.ResRet.f32 %5736, 2
  %5740 = extractvalue %dx.types.ResRet.f32 %5736, 3
  %5741 = add i32 %5710, 80
  %5742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5741, i32 undef)  ; BufferLoad(srv,index,wot)
  %5743 = extractvalue %dx.types.ResRet.f32 %5742, 1
  %5744 = extractvalue %dx.types.ResRet.f32 %5742, 2
  %5745 = add i32 %5710, 92
  %5746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5745, i32 undef)  ; BufferLoad(srv,index,wot)
  %5747 = extractvalue %dx.types.ResRet.i32 %5746, 0
  %5748 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %5714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5749 = select i1 %238, float %5743, float %5712
  %5750 = select i1 %238, float %5748, float %5713
  %5751 = select i1 %238, float %5744, float %5714
  %5752 = and i32 %5747, 65535
  %5753 = uitofp i32 %5752 to float
  %5754 = lshr i32 %5747, 16
  %5755 = uitofp i32 %5754 to float
  %5756 = and i32 %5725, 65535
  %5757 = and i32 %5725, 50331648
  %5758 = icmp eq i32 %5757, 33554432
  %5759 = fsub fast float %5731, %147
  %5760 = fsub fast float %5732, %148
  %5761 = fsub fast float %5733, %149
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float %5759, float %5760, float %5761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.unary.f32(i32 24, float %5762)  ; Sqrt(value)
  %5764 = fdiv fast float 1.000000e+00, %5763
  %5765 = fmul fast float %5764, %5759
  %5766 = fmul fast float %5764, %5760
  %5767 = fmul fast float %5764, %5761
  %5768 = fadd fast float %5763, %5717
  %5769 = fdiv fast float 1.000000e+00, %5768
  %5770 = fmul float %5728, %5769
  %5771 = fmul float %5770, %5770
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  br i1 %5758, label %5773, label %5794

; <label>:5773                                    ; preds = %5697
  %5774 = fmul fast float %5739, %5720
  %5775 = fmul fast float %5739, %5721
  %5776 = fmul fast float %5739, %5722
  %5777 = fadd fast float %5759, %5774
  %5778 = fadd fast float %5760, %5775
  %5779 = fadd fast float %5761, %5776
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %5779, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = call float @dx.op.unary.f32(i32 25, float %5780)  ; Rsqrt(value)
  %5782 = fmul fast float %5781, %5777
  %5783 = fmul fast float %5781, %5778
  %5784 = fmul fast float %5781, %5779
  %5785 = fsub fast float %147, %5731
  %5786 = fsub fast float %148, %5732
  %5787 = fsub fast float %149, %5733
  %5788 = fsub fast float -0.000000e+00, %5785
  %5789 = fsub fast float -0.000000e+00, %5786
  %5790 = fsub fast float -0.000000e+00, %5787
  %5791 = call float @dx.op.dot3.f32(i32 55, float %5788, float %5789, float %5790, float %5720, float %5721, float %5722)  ; Dot3(ax,ay,az,bx,by,bz)
  %5792 = fcmp fast ogt float %5791, 0.000000e+00
  %5793 = uitofp i1 %5792 to float
  br label %5794

; <label>:5794                                    ; preds = %5773, %5697
  %5795 = phi float [ %5793, %5773 ], [ 1.000000e+00, %5697 ]
  %5796 = phi float [ %5782, %5773 ], [ %5765, %5697 ]
  %5797 = phi float [ %5783, %5773 ], [ %5766, %5697 ]
  %5798 = phi float [ %5784, %5773 ], [ %5767, %5697 ]
  %5799 = call float @dx.op.dot3.f32(i32 55, float %5720, float %5721, float %5722, float %5796, float %5797, float %5798)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = fmul fast float %5799, %5799
  %5801 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  %5802 = fsub fast float 1.000000e+00, %5801
  %5803 = fmul fast float %5802, 5.000000e-01
  %5804 = fcmp fast ogt float %5799, 0.000000e+00
  %5805 = fsub fast float 1.000000e+00, %5803
  %5806 = select i1 %5804, float %5803, float %5805
  %5807 = fmul fast float %5806, %5755
  %5808 = fadd fast float %5807, %5753
  %5809 = fmul fast float %5808, 0x3EF0001000000000
  %5810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %5809, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5811 = extractvalue %dx.types.ResRet.f32 %5810, 0
  %5812 = fmul fast float %5799, %5737
  %5813 = fadd fast float %5812, %5738
  %5814 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5815 = select i1 %5758, float 1.000000e+00, float %5814
  %5816 = select i1 %5758, float %5814, float 1.000000e+00
  %5817 = fmul fast float %5763, %5734
  %5818 = fsub fast float 1.000000e+00, %5817
  %5819 = fmul fast float %5818, %5740
  %5820 = call float @dx.op.unary.f32(i32 7, float %5819)  ; Saturate(value)
  %5821 = fmul fast float %5820, %5816
  %5822 = fmul fast float %5821, 2.000000e+00
  %5823 = fsub fast float 3.000000e+00, %5822
  %5824 = fmul fast float %5811, %5795
  %5825 = fmul fast float %5821, %5821
  %5826 = fmul fast float %5825, %5824
  %5827 = fmul fast float %5826, %5823
  %5828 = call float @dx.op.binary.f32(i32 36, float %5827, float %5827)  ; FMin(a,b)
  %5829 = call float @dx.op.binary.f32(i32 36, float %5827, float %5828)  ; FMin(a,b)
  %5830 = fcmp fast ogt float %5829, 0.000000e+00
  br i1 %5830, label %5839, label %5831, !dx.controlflow.hints !144

; <label>:5831                                    ; preds = %6223, %5985, %5794
  %5832 = phi float [ %5699, %5985 ], [ %5699, %5794 ], [ %6263, %6223 ]
  %5833 = phi float [ %5700, %5985 ], [ %5700, %5794 ], [ %6264, %6223 ]
  %5834 = phi float [ %5701, %5985 ], [ %5701, %5794 ], [ %6265, %6223 ]
  %5835 = phi float [ %5702, %5985 ], [ %5702, %5794 ], [ %6257, %6223 ]
  %5836 = phi float [ %5703, %5985 ], [ %5703, %5794 ], [ %6258, %6223 ]
  %5837 = phi float [ %5704, %5985 ], [ %5704, %5794 ], [ %6259, %6223 ]
  %5838 = icmp eq i32 %5698, %5708
  br i1 %5838, label %6266, label %5697

; <label>:5839                                    ; preds = %5794
  %5840 = icmp eq i32 %5756, 255
  br i1 %5840, label %5985, label %5841, !dx.controlflow.hints !145

; <label>:5841                                    ; preds = %5839
  %5842 = mul nuw nsw i32 %5756, 176
  %5843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5842, i32 undef)  ; BufferLoad(srv,index,wot)
  %5844 = extractvalue %dx.types.ResRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.ResRet.f32 %5843, 1
  %5846 = extractvalue %dx.types.ResRet.f32 %5843, 2
  %5847 = extractvalue %dx.types.ResRet.f32 %5843, 3
  %5848 = add nuw nsw i32 %5842, 16
  %5849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5848, i32 undef)  ; BufferLoad(srv,index,wot)
  %5850 = extractvalue %dx.types.ResRet.f32 %5849, 0
  %5851 = extractvalue %dx.types.ResRet.f32 %5849, 1
  %5852 = add nuw nsw i32 %5842, 32
  %5853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5852, i32 undef)  ; BufferLoad(srv,index,wot)
  %5854 = extractvalue %dx.types.ResRet.f32 %5853, 0
  %5855 = extractvalue %dx.types.ResRet.f32 %5853, 1
  %5856 = extractvalue %dx.types.ResRet.f32 %5853, 2
  %5857 = add nuw nsw i32 %5842, 48
  %5858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5857, i32 undef)  ; BufferLoad(srv,index,wot)
  %5859 = extractvalue %dx.types.ResRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.ResRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.ResRet.f32 %5858, 2
  %5862 = extractvalue %dx.types.ResRet.f32 %5858, 3
  %5863 = add nuw nsw i32 %5842, 64
  %5864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5863, i32 undef)  ; BufferLoad(srv,index,wot)
  %5865 = extractvalue %dx.types.ResRet.f32 %5864, 0
  %5866 = extractvalue %dx.types.ResRet.f32 %5864, 1
  %5867 = extractvalue %dx.types.ResRet.f32 %5864, 2
  %5868 = extractvalue %dx.types.ResRet.f32 %5864, 3
  %5869 = add nuw nsw i32 %5842, 80
  %5870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5869, i32 undef)  ; BufferLoad(srv,index,wot)
  %5871 = extractvalue %dx.types.ResRet.f32 %5870, 0
  %5872 = extractvalue %dx.types.ResRet.f32 %5870, 1
  %5873 = extractvalue %dx.types.ResRet.f32 %5870, 2
  %5874 = extractvalue %dx.types.ResRet.f32 %5870, 3
  %5875 = add nuw nsw i32 %5842, 96
  %5876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5875, i32 undef)  ; BufferLoad(srv,index,wot)
  %5877 = extractvalue %dx.types.ResRet.f32 %5876, 0
  %5878 = extractvalue %dx.types.ResRet.f32 %5876, 1
  %5879 = extractvalue %dx.types.ResRet.f32 %5876, 2
  %5880 = extractvalue %dx.types.ResRet.f32 %5876, 3
  %5881 = bitcast float %5851 to i32
  %5882 = fmul fast float %5856, %76
  %5883 = fmul fast float %5856, %77
  %5884 = fmul fast float %5856, %78
  %5885 = fadd fast float %5882, %147
  %5886 = fadd fast float %5883, %148
  %5887 = fadd fast float %5884, %149
  %5888 = fmul fast float %5885, %5859
  %5889 = call float @dx.op.tertiary.f32(i32 46, float %5886, float %5865, float %5888)  ; FMad(a,b,c)
  %5890 = call float @dx.op.tertiary.f32(i32 46, float %5887, float %5871, float %5889)  ; FMad(a,b,c)
  %5891 = fadd fast float %5890, %5877
  %5892 = fmul fast float %5885, %5860
  %5893 = call float @dx.op.tertiary.f32(i32 46, float %5886, float %5866, float %5892)  ; FMad(a,b,c)
  %5894 = call float @dx.op.tertiary.f32(i32 46, float %5887, float %5872, float %5893)  ; FMad(a,b,c)
  %5895 = fadd fast float %5894, %5878
  %5896 = fmul fast float %5885, %5861
  %5897 = call float @dx.op.tertiary.f32(i32 46, float %5886, float %5867, float %5896)  ; FMad(a,b,c)
  %5898 = call float @dx.op.tertiary.f32(i32 46, float %5887, float %5873, float %5897)  ; FMad(a,b,c)
  %5899 = fadd fast float %5898, %5879
  %5900 = fmul fast float %5885, %5862
  %5901 = call float @dx.op.tertiary.f32(i32 46, float %5886, float %5868, float %5900)  ; FMad(a,b,c)
  %5902 = call float @dx.op.tertiary.f32(i32 46, float %5887, float %5874, float %5901)  ; FMad(a,b,c)
  %5903 = fadd fast float %5902, %5880
  %5904 = fdiv fast float %5891, %5903
  %5905 = fdiv fast float %5895, %5903
  %5906 = fdiv fast float %5899, %5903
  %5907 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5906)  ; FMax(a,b)
  %5908 = fmul fast float %249, 0x401921FB60000000
  %5909 = call float @dx.op.unary.f32(i32 13, float %5908)  ; Sin(value)
  %5910 = call float @dx.op.unary.f32(i32 12, float %5908)  ; Cos(value)
  %5911 = fmul fast float %5910, %5855
  %5912 = call float @dx.op.tertiary.f32(i32 46, float %5909, float %5855, float 0.000000e+00)  ; FMad(a,b,c)
  %5913 = fmul fast float %5855, %5909
  %5914 = fsub fast float -0.000000e+00, %5913
  %5915 = call float @dx.op.tertiary.f32(i32 46, float %5910, float %5855, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5916

; <label>:5916                                    ; preds = %5916, %5841
  %5917 = phi float [ 0.000000e+00, %5841 ], [ %5949, %5916 ]
  %5918 = phi float [ 0.000000e+00, %5841 ], [ %5951, %5916 ]
  %5919 = phi i32 [ 0, %5841 ], [ %5952, %5916 ]
  %5920 = mul i32 %5919, 2
  %5921 = add i32 0, %5920
  %5922 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5921
  %5923 = load float, float* %5922, align 4
  %5924 = mul i32 %5919, 2
  %5925 = add i32 1, %5924
  %5926 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5925
  %5927 = load float, float* %5926, align 4
  %5928 = fmul fast float %5911, %5923
  %5929 = call float @dx.op.tertiary.f32(i32 46, float %5927, float %5914, float %5928)  ; FMad(a,b,c)
  %5930 = fmul fast float %5923, %5912
  %5931 = call float @dx.op.tertiary.f32(i32 46, float %5927, float %5915, float %5930)  ; FMad(a,b,c)
  %5932 = fadd fast float %5929, %5904
  %5933 = fadd fast float %5931, %5905
  %5934 = fmul fast float %5932, %5850
  %5935 = fmul fast float %5933, %5850
  %5936 = call float @dx.op.binary.f32(i32 35, float %5934, float %5846)  ; FMax(a,b)
  %5937 = call float @dx.op.binary.f32(i32 35, float %5935, float %5846)  ; FMax(a,b)
  %5938 = call float @dx.op.binary.f32(i32 36, float %5936, float %5847)  ; FMin(a,b)
  %5939 = call float @dx.op.binary.f32(i32 36, float %5937, float %5847)  ; FMin(a,b)
  %5940 = fadd fast float %5938, %5844
  %5941 = fadd fast float %5939, %5845
  %5942 = uitofp i32 %5881 to float
  %5943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %5940, float %5941, float %5942, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5944 = extractvalue %dx.types.ResRet.f32 %5943, 0
  %5945 = fsub fast float %5944, %5907
  %5946 = fsub fast float %5945, %5854
  %5947 = fcmp fast ogt float %5946, 0.000000e+00
  %5948 = select i1 %5947, float 1.000000e+00, float 0.000000e+00
  %5949 = fadd fast float %5948, %5917
  %5950 = select i1 %5947, float %5946, float 0.000000e+00
  %5951 = fadd fast float %5950, %5918
  %5952 = add nuw nsw i32 %5919, 1
  %5953 = icmp eq i32 %5952, 8
  br i1 %5953, label %5954, label %5916

; <label>:5954                                    ; preds = %5916
  %5955 = fdiv fast float 1.000000e+00, %5949
  %5956 = fmul fast float %5955, %5951
  %5957 = fdiv fast float 1.000000e+00, %5907
  %5958 = fmul fast float %5956, %5957
  %5959 = call float @dx.op.unary.f32(i32 7, float %5958)  ; Saturate(value)
  %5960 = call float @dx.op.binary.f32(i32 35, float %5959, float 0.000000e+00)  ; FMax(a,b)
  %5961 = fmul fast float %5949, 1.250000e-01
  %5962 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5963 = fmul fast float %5962, 2.000000e+00
  %5964 = fadd fast float %5963, -1.000000e+00
  %5965 = fcmp fast ogt float %5964, 0.000000e+00
  %5966 = fcmp fast olt float %5964, 0.000000e+00
  %5967 = zext i1 %5965 to i32
  %5968 = zext i1 %5966 to i32
  %5969 = sub nsw i32 %5967, %5968
  %5970 = sitofp i32 %5969 to float
  %5971 = fmul fast float %5970, %5964
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = fmul fast float %5972, %5972
  %5974 = fmul fast float %5973, %5972
  %5975 = fsub fast float %5972, %5974
  %5976 = fmul fast float %5975, %5960
  %5977 = fsub fast float 1.000000e+00, %5974
  %5978 = fsub fast float %5977, %5976
  %5979 = fmul fast float %5970, 5.000000e-01
  %5980 = fmul fast float %5979, %5978
  %5981 = fsub fast float -5.000000e-01, %5980
  %5982 = fmul fast float %5981, %5815
  %5983 = fadd fast float %5982, 1.000000e+00
  %5984 = fmul fast float %5983, %5827
  br label %5985

; <label>:5985                                    ; preds = %5954, %5839
  %5986 = phi float [ %5984, %5954 ], [ %5827, %5839 ]
  %5987 = call float @dx.op.binary.f32(i32 36, float %5986, float %5986)  ; FMin(a,b)
  %5988 = call float @dx.op.binary.f32(i32 36, float %5986, float %5987)  ; FMin(a,b)
  %5989 = fcmp fast ogt float %5988, 0.000000e+00
  br i1 %5989, label %5990, label %5831, !dx.controlflow.hints !146

; <label>:5990                                    ; preds = %5985
  %5991 = fmul fast float %5986, %5749
  %5992 = fmul fast float %5986, %5750
  %5993 = fmul fast float %5986, %5751
  %5994 = fsub fast float %5733, %1972
  %5995 = fcmp fast ogt float %5994, 0.000000e+00
  %5996 = fsub fast float %149, %1972
  %5997 = fcmp fast ogt float %5996, 0.000000e+00
  %5998 = xor i1 %5997, %5995
  %5999 = fsub fast float %1972, %5733
  %6000 = fmul fast float %5999, 2.000000e+00
  %6001 = fadd fast float %6000, %5733
  %6002 = select i1 %5998, float %5733, float %6001
  %6003 = fsub fast float %6002, %149
  %6004 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %6003, float %5759, float %5760, float %6003)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = call float @dx.op.unary.f32(i32 25, float %6004)  ; Rsqrt(value)
  %6006 = fmul fast float %6005, %5759
  %6007 = fmul fast float %6005, %5760
  %6008 = fmul fast float %6005, %6003
  %6009 = fsub fast float %1972, %149
  %6010 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6009)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6006, float %6007, float %6008)  ; Dot3(ax,ay,az,bx,by,bz)
  %6012 = fdiv fast float 1.000000e+00, %6011
  %6013 = fmul fast float %6012, %6010
  %6014 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5996, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6015 = fcmp fast ogt float %6014, 0.000000e+00
  %6016 = fcmp fast olt float %6014, 0.000000e+00
  %6017 = zext i1 %6015 to i32
  %6018 = zext i1 %6016 to i32
  %6019 = sub nsw i32 %6017, %6018
  %6020 = sitofp i32 %6019 to float
  %6021 = fsub fast float %6002, %1972
  %6022 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %6021, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = fcmp fast ogt float %6022, 0.000000e+00
  %6024 = fcmp fast olt float %6022, 0.000000e+00
  %6025 = zext i1 %6023 to i32
  %6026 = zext i1 %6024 to i32
  %6027 = sub nsw i32 %6025, %6026
  %6028 = sitofp i32 %6027 to float
  %6029 = fcmp fast une float %6020, %6028
  br i1 %6029, label %6030, label %6040

; <label>:6030                                    ; preds = %5990
  %6031 = fmul fast float %6013, %6008
  %6032 = fmul fast float %6013, %6007
  %6033 = fmul fast float %6013, %6006
  %6034 = fmul fast float %6033, %6033
  %6035 = fmul fast float %6032, %6032
  %6036 = fadd fast float %6034, %6035
  %6037 = fmul fast float %6031, %6031
  %6038 = fadd fast float %6036, %6037
  %6039 = call float @dx.op.unary.f32(i32 24, float %6038)  ; Sqrt(value)
  br label %6052

; <label>:6040                                    ; preds = %5990
  %6041 = icmp slt i32 %6019, 0
  br i1 %6041, label %6042, label %6052

; <label>:6042                                    ; preds = %6040
  %6043 = fsub fast float %147, %5731
  %6044 = fsub fast float %148, %5732
  %6045 = fsub fast float %149, %6002
  %6046 = fmul fast float %6043, %6043
  %6047 = fmul fast float %6044, %6044
  %6048 = fadd fast float %6046, %6047
  %6049 = fmul fast float %6045, %6045
  %6050 = fadd fast float %6048, %6049
  %6051 = call float @dx.op.unary.f32(i32 24, float %6050)  ; Sqrt(value)
  br label %6052

; <label>:6052                                    ; preds = %6042, %6040, %6030
  %6053 = phi float [ %6039, %6030 ], [ %6051, %6042 ], [ 0.000000e+00, %6040 ]
  %6054 = and i1 %5997, %5995
  %6055 = fsub fast float -0.000000e+00, %6053
  %6056 = select i1 %6054, float -0.000000e+00, float %6055
  %6057 = fmul fast float %1973, 0x3FF7154760000000
  %6058 = fmul fast float %6057, %6056
  %6059 = fmul fast float %1974, 0x3FF7154760000000
  %6060 = fmul fast float %6059, %6056
  %6061 = fmul fast float %1975, 0x3FF7154760000000
  %6062 = fmul fast float %6061, %6056
  %6063 = call float @dx.op.unary.f32(i32 21, float %6058)  ; Exp(value)
  %6064 = call float @dx.op.unary.f32(i32 21, float %6060)  ; Exp(value)
  %6065 = call float @dx.op.unary.f32(i32 21, float %6062)  ; Exp(value)
  %6066 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6067 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  %6068 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  %6069 = fmul fast float %5991, %6066
  %6070 = fmul fast float %5992, %6067
  %6071 = fmul fast float %5993, %6068
  %6072 = fsub fast float %5765, %2172
  %6073 = fsub fast float %5766, %2171
  %6074 = fsub fast float %5767, %2170
  %6075 = call float @dx.op.dot3.f32(i32 55, float %6072, float %6073, float %6074, float %6072, float %6073, float %6074)  ; Dot3(ax,ay,az,bx,by,bz)
  %6076 = call float @dx.op.unary.f32(i32 25, float %6075)  ; Rsqrt(value)
  %6077 = fmul fast float %6076, %6072
  %6078 = fmul fast float %6076, %6073
  %6079 = fmul fast float %6076, %6074
  %6080 = call float @dx.op.dot3.f32(i32 55, float %5765, float %5766, float %5767, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %6081 = call float @dx.op.dot3.f32(i32 55, float %2169, float %2168, float %2167, float %6077, float %6078, float %6079)  ; Dot3(ax,ay,az,bx,by,bz)
  %6082 = call float @dx.op.unary.f32(i32 7, float %6080)  ; Saturate(value)
  %6083 = fmul fast float %6082, %5772
  %6084 = fmul fast float %6082, %6082
  %6085 = fmul fast float %6084, %4060
  %6086 = call float @dx.op.unary.f32(i32 7, float %6085)  ; Saturate(value)
  %6087 = fmul fast float %6083, %6086
  %6088 = bitcast float %5762 to i32
  %6089 = ashr i32 %6088, 1
  %6090 = sub nsw i32 1597463007, %6089
  %6091 = bitcast i32 %6090 to float
  %6092 = fmul fast float %6091, %5759
  %6093 = fmul fast float %6091, %5760
  %6094 = fmul fast float %6091, %5761
  %6095 = fsub fast float %6092, %2172
  %6096 = fsub fast float %6093, %2171
  %6097 = fsub fast float %6094, %2170
  %6098 = call float @dx.op.dot3.f32(i32 55, float %6095, float %6096, float %6097, float %6095, float %6096, float %6097)  ; Dot3(ax,ay,az,bx,by,bz)
  %6099 = call float @dx.op.unary.f32(i32 25, float %6098)  ; Rsqrt(value)
  %6100 = fmul fast float %6095, %6099
  %6101 = fmul fast float %6096, %6099
  %6102 = fmul fast float %6097, %6099
  %6103 = call float @dx.op.dot3.f32(i32 55, float %2176, float %2177, float %2178, float %6100, float %6101, float %6102)  ; Dot3(ax,ay,az,bx,by,bz)
  %6104 = fmul fast float %6103, %6103
  %6105 = call float @dx.op.unary.f32(i32 6, float %6080)  ; FAbs(value)
  %6106 = fsub fast float 1.000000e+00, %2205
  %6107 = fmul fast float %2187, %2187
  %6108 = fmul fast float %6107, %6106
  %6109 = fadd fast float %6108, %2205
  %6110 = bitcast float %6109 to i32
  %6111 = ashr i32 %6110, 1
  %6112 = add nsw i32 %6111, 532487669
  %6113 = bitcast i32 %6112 to float
  %6114 = fadd fast float %6113, %2187
  %6115 = fmul fast float %2205, %6104
  %6116 = fsub fast float 1.000000e+00, %6104
  %6117 = fadd fast float %6116, %6115
  %6118 = fmul fast float %6105, %6105
  %6119 = fmul fast float %6118, %6106
  %6120 = fadd fast float %6119, %2205
  %6121 = bitcast float %6120 to i32
  %6122 = ashr i32 %6121, 1
  %6123 = add nsw i32 %6122, 532487669
  %6124 = bitcast i32 %6123 to float
  %6125 = fadd fast float %6124, %6105
  %6126 = fmul fast float %6117, %6117
  %6127 = fmul fast float %6126, %6114
  %6128 = fmul fast float %6127, %6125
  %6129 = fdiv fast float 1.000000e+00, %6128
  %6130 = bitcast float %2205 to i32
  %6131 = sitofp i32 %6130 to float
  %6132 = fmul fast float %6131, 0x3FE7F73180000000
  %6133 = fadd fast float %6132, 0x41AFE27C40000000
  %6134 = fptosi float %6133 to i32
  %6135 = bitcast i32 %6134 to float
  %6136 = fmul fast float %5728, 0x3FD80E9D60000000
  %6137 = fmul fast float %6136, %6091
  %6138 = fadd fast float %6135, %6137
  %6139 = bitcast float %6138 to i32
  %6140 = sub nsw i32 2129859010, %6139
  %6141 = bitcast i32 %6140 to float
  %6142 = fmul fast float %2205, %6129
  %6143 = fmul fast float %6142, %6135
  %6144 = fmul fast float %6143, %6141
  %6145 = call float @dx.op.unary.f32(i32 6, float %6081)  ; FAbs(value)
  %6146 = fsub fast float 1.000000e+00, %6145
  %6147 = bitcast float %6146 to i32
  %6148 = sitofp i32 %6147 to float
  %6149 = fmul fast float %6148, 5.000000e+00
  %6150 = fadd fast float %6149, 0xC1EFBF8940000000
  %6151 = fptosi float %6150 to i32
  %6152 = bitcast i32 %6151 to float
  %6153 = fsub fast float 1.000000e+00, %2179
  %6154 = fsub fast float 1.000000e+00, %2180
  %6155 = fsub fast float 1.000000e+00, %2185
  %6156 = fmul fast float %6152, %6153
  %6157 = fmul fast float %6152, %6154
  %6158 = fmul fast float %6152, %6155
  %6159 = fadd fast float %6156, %2179
  %6160 = fadd fast float %6157, %2180
  %6161 = fadd fast float %6158, %2185
  br i1 %3483, label %6162, label %6185

; <label>:6162                                    ; preds = %6052
  %6163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1550, float %6145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6164 = extractvalue %dx.types.ResRet.f32 %6163, 0
  %6165 = extractvalue %dx.types.ResRet.f32 %6163, 1
  %6166 = extractvalue %dx.types.ResRet.f32 %6163, 2
  %6167 = fadd fast float %6164, -5.000000e-01
  %6168 = fadd fast float %6165, -5.000000e-01
  %6169 = fadd fast float %6166, -5.000000e-01
  %6170 = fmul fast float %2179, 4.000000e+00
  %6171 = fmul fast float %6170, %6153
  %6172 = fmul fast float %6171, %6167
  %6173 = fmul fast float %2180, 4.000000e+00
  %6174 = fmul fast float %6173, %6154
  %6175 = fmul fast float %6174, %6168
  %6176 = fmul fast float %2185, 4.000000e+00
  %6177 = fmul fast float %6176, %6155
  %6178 = fmul fast float %6177, %6169
  %6179 = fadd fast float %6172, %6159
  %6180 = fadd fast float %6175, %6160
  %6181 = fadd fast float %6178, %6161
  %6182 = call float @dx.op.unary.f32(i32 7, float %6179)  ; Saturate(value)
  %6183 = call float @dx.op.unary.f32(i32 7, float %6180)  ; Saturate(value)
  %6184 = call float @dx.op.unary.f32(i32 7, float %6181)  ; Saturate(value)
  br label %6185

; <label>:6185                                    ; preds = %6162, %6052
  %6186 = phi float [ %6182, %6162 ], [ %6159, %6052 ]
  %6187 = phi float [ %6183, %6162 ], [ %6160, %6052 ]
  %6188 = phi float [ %6184, %6162 ], [ %6161, %6052 ]
  %6189 = fmul fast float %6080, 9.843750e-01
  %6190 = fadd fast float %6189, 7.812500e-03
  %6191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6190, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6192 = extractvalue %dx.types.ResRet.f32 %6191, 2
  %6193 = extractvalue %dx.types.ResRet.f32 %6191, 3
  %6194 = fmul fast float %6192, %2179
  %6195 = fmul fast float %6192, %2180
  %6196 = fmul fast float %6192, %2185
  %6197 = fadd fast float %6194, %6193
  %6198 = fadd fast float %6195, %6193
  %6199 = fadd fast float %6196, %6193
  br i1 %3483, label %6200, label %6223

; <label>:6200                                    ; preds = %6185
  %6201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1550, float %6080, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.ResRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.ResRet.f32 %6201, 2
  %6205 = fadd fast float %6202, -5.000000e-01
  %6206 = fadd fast float %6203, -5.000000e-01
  %6207 = fadd fast float %6204, -5.000000e-01
  %6208 = fmul fast float %2179, 4.000000e+00
  %6209 = fmul fast float %6208, %6153
  %6210 = fmul fast float %6209, %6205
  %6211 = fmul fast float %2180, 4.000000e+00
  %6212 = fmul fast float %6211, %6154
  %6213 = fmul fast float %6212, %6206
  %6214 = fmul fast float %2185, 4.000000e+00
  %6215 = fmul fast float %6214, %6155
  %6216 = fmul fast float %6215, %6207
  %6217 = fadd fast float %6210, %6197
  %6218 = fadd fast float %6213, %6198
  %6219 = fadd fast float %6216, %6199
  %6220 = call float @dx.op.unary.f32(i32 7, float %6217)  ; Saturate(value)
  %6221 = call float @dx.op.unary.f32(i32 7, float %6218)  ; Saturate(value)
  %6222 = call float @dx.op.unary.f32(i32 7, float %6219)  ; Saturate(value)
  br label %6223

; <label>:6223                                    ; preds = %6200, %6185
  %6224 = phi float [ %6220, %6200 ], [ %6197, %6185 ]
  %6225 = phi float [ %6221, %6200 ], [ %6198, %6185 ]
  %6226 = phi float [ %6222, %6200 ], [ %6199, %6185 ]
  %6227 = call float @dx.op.binary.f32(i32 35, float %6225, float %6226)  ; FMax(a,b)
  %6228 = call float @dx.op.binary.f32(i32 35, float %6224, float %6227)  ; FMax(a,b)
  %6229 = fsub fast float 1.000000e+00, %6228
  %6230 = fmul fast float %6186, %6144
  %6231 = fmul fast float %6187, %6144
  %6232 = fmul fast float %6188, %6144
  %6233 = fsub fast float 1.000000e+00, %6081
  %6234 = bitcast float %6233 to i32
  %6235 = sitofp i32 %6234 to float
  %6236 = fmul fast float %6235, 5.000000e+00
  %6237 = fadd fast float %6236, 0xC1EFBF8940000000
  %6238 = fptosi float %6237 to i32
  %6239 = bitcast i32 %6238 to float
  %6240 = fmul fast float %6239, %1549
  %6241 = fmul fast float %6229, %6240
  %6242 = fmul fast float %6241, %4025
  %6243 = fmul fast float %6241, %4026
  %6244 = fmul fast float %6241, %4027
  %6245 = fadd fast float %6242, %6230
  %6246 = fadd fast float %6243, %6231
  %6247 = fadd fast float %6244, %6232
  %6248 = fmul fast float %6069, %1570
  %6249 = fmul fast float %6248, %6087
  %6250 = fmul fast float %6249, %6229
  %6251 = fmul fast float %6070, %1570
  %6252 = fmul fast float %6251, %6087
  %6253 = fmul fast float %6252, %6229
  %6254 = fmul fast float %6071, %1570
  %6255 = fmul fast float %6254, %6087
  %6256 = fmul fast float %6255, %6229
  %6257 = fadd fast float %6250, %5702
  %6258 = fadd fast float %6253, %5703
  %6259 = fadd fast float %6256, %5704
  %6260 = fmul fast float %6249, %6245
  %6261 = fmul fast float %6252, %6246
  %6262 = fmul fast float %6255, %6247
  %6263 = fadd fast float %6260, %5699
  %6264 = fadd fast float %6261, %5700
  %6265 = fadd fast float %6262, %5701
  br label %5831

; <label>:6266                                    ; preds = %5831
  br label %6267

; <label>:6267                                    ; preds = %6266, %5665
  %6268 = phi float [ %5667, %5665 ], [ %5832, %6266 ]
  %6269 = phi float [ %5668, %5665 ], [ %5833, %6266 ]
  %6270 = phi float [ %5669, %5665 ], [ %5834, %6266 ]
  %6271 = phi float [ %5670, %5665 ], [ %5835, %6266 ]
  %6272 = phi float [ %5671, %5665 ], [ %5836, %6266 ]
  %6273 = phi float [ %5672, %5665 ], [ %5837, %6266 ]
  %6274 = add i32 %5666, 1
  %6275 = icmp ugt i32 %6274, %5662
  br i1 %6275, label %6276, label %5665

; <label>:6276                                    ; preds = %6267
  br label %6277

; <label>:6277                                    ; preds = %6276, %5615, %5605
  %6278 = phi float [ %5606, %5605 ], [ %5606, %5615 ], [ %6268, %6276 ]
  %6279 = phi float [ %5607, %5605 ], [ %5607, %5615 ], [ %6269, %6276 ]
  %6280 = phi float [ %5608, %5605 ], [ %5608, %5615 ], [ %6270, %6276 ]
  %6281 = phi float [ %5609, %5605 ], [ %5609, %5615 ], [ %6271, %6276 ]
  %6282 = phi float [ %5610, %5605 ], [ %5610, %5615 ], [ %6272, %6276 ]
  %6283 = phi float [ %5611, %5605 ], [ %5611, %5615 ], [ %6273, %6276 ]
  %6284 = fmul fast float %1570, %1570
  %6285 = fsub fast float 1.000000e+00, %6284
  %6286 = call float @dx.op.dot3.f32(i32 55, float %6285, float %6285, float %6285, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6287 = fsub fast float 1.000000e+00, %6286
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 0
  %6290 = fmul fast float %6289, %4031
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 3
  %6293 = fsub fast float 1.000000e+00, %1548
  %6294 = call float @dx.op.unary.f32(i32 7, float %6293)  ; Saturate(value)
  %6295 = fadd fast float %6283, %1547
  %6296 = fmul fast float %6295, %1548
  %6297 = fmul fast float %6294, %6292
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 3
  %6300 = fmul fast float %6281, %2173
  %6301 = fmul fast float %6282, %2174
  %6302 = fmul fast float %6283, %2175
  %6303 = fcmp fast ogt float %88, %198
  %6304 = and i1 %6303, %1978
  %6305 = or i1 %1984, %6304
  %6306 = icmp eq i32 %1977, 2
  %6307 = fcmp fast ole float %88, %198
  %6308 = and i1 %6307, %6306
  %6309 = or i1 %6308, %6305
  br i1 %6304, label %6310, label %6569

; <label>:6310                                    ; preds = %6277
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 2
  %6313 = extractvalue %dx.types.CBufRet.f32 %6311, 3
  %6314 = fmul fast float %6312, %100
  %6315 = fmul fast float %6313, %101
  %6316 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  %6317 = call float @dx.op.unary.f32(i32 7, float %6315)  ; Saturate(value)
  %6318 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6316, float %6317, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6319 = extractvalue %dx.types.ResRet.f32 %6318, 0
  %6320 = extractvalue %dx.types.ResRet.f32 %6318, 1
  %6321 = extractvalue %dx.types.ResRet.f32 %6318, 2
  %6322 = extractvalue %dx.types.ResRet.f32 %6318, 3
  %6323 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6316, float %6317, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6324 = extractvalue %dx.types.ResRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.ResRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.ResRet.f32 %6323, 2
  %6327 = extractvalue %dx.types.ResRet.f32 %6323, 3
  %6328 = call float @dx.op.binary.f32(i32 35, float %6320, float %6321)  ; FMax(a,b)
  %6329 = call float @dx.op.binary.f32(i32 35, float %6319, float %6328)  ; FMax(a,b)
  %6330 = call float @dx.op.binary.f32(i32 35, float %6329, float %6322)  ; FMax(a,b)
  %6331 = call float @dx.op.binary.f32(i32 36, float %6325, float %6326)  ; FMin(a,b)
  %6332 = call float @dx.op.binary.f32(i32 36, float %6324, float %6331)  ; FMin(a,b)
  %6333 = call float @dx.op.binary.f32(i32 36, float %6332, float %6327)  ; FMin(a,b)
  %6334 = fmul fast float %6330, 2.550000e+02
  %6335 = fadd fast float %6334, 0x3F70101020000000
  %6336 = fptoui float %6335 to i32
  %6337 = fmul fast float %6333, 2.550000e+02
  %6338 = fadd fast float %6337, 0x3F70101020000000
  %6339 = fptoui float %6338 to i32
  %6340 = icmp ult i32 %6336, %6339
  br i1 %6340, label %6341, label %6509

; <label>:6341                                    ; preds = %6310
  %6342 = fcmp fast ogt float %87, 9.843750e-01
  %6343 = fadd fast float %88, -4.000000e+00
  %6344 = select i1 %6342, float -4.000000e+00, float %6343
  %6345 = call float @dx.op.binary.f32(i32 35, float %6344, float 0.000000e+00)  ; FMax(a,b)
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = fadd fast float %6347, %6345
  %6349 = extractvalue %dx.types.CBufRet.f32 %6346, 2
  %6350 = fmul fast float %6348, %6349
  %6351 = call float @dx.op.unary.f32(i32 23, float %6350)  ; Log(value)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6346, 3
  %6353 = fmul fast float %6352, %6351
  %6354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.f32 %6354, 2
  %6356 = fmul fast float %6353, %6355
  %6357 = call float @dx.op.unary.f32(i32 7, float %6356)  ; Saturate(value)
  %6358 = uitofp i32 %6336 to float
  %6359 = uitofp i32 %6339 to float
  %6360 = fadd fast float %6358, 5.000000e-01
  %6361 = fadd fast float %6359, 5.000000e-01
  %6362 = fmul fast float %6355, %6360
  %6363 = fmul fast float %6355, %6361
  %6364 = fadd fast float %6362, 0x3F0FFB4800000000
  %6365 = fadd fast float %6363, 0xBF0FFB4800000000
  %6366 = call float @dx.op.binary.f32(i32 35, float %6357, float %6364)  ; FMax(a,b)
  %6367 = call float @dx.op.binary.f32(i32 36, float %6366, float %6365)  ; FMin(a,b)
  %6368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6369 = extractvalue %dx.types.CBufRet.f32 %6368, 1
  %6370 = extractvalue %dx.types.CBufRet.f32 %6368, 2
  %6371 = extractvalue %dx.types.CBufRet.f32 %6368, 0
  %6372 = fmul fast float %6369, %6367
  %6373 = fadd fast float %6371, %6372
  %6374 = fadd fast float %6371, %6370
  %6375 = fsub fast float %6369, %6370
  %6376 = fadd fast float %6375, %6371
  %6377 = call float @dx.op.binary.f32(i32 35, float %6373, float %6374)  ; FMax(a,b)
  %6378 = call float @dx.op.binary.f32(i32 36, float %6377, float %6376)  ; FMin(a,b)
  %6379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6316, float %6317, float %6378, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6380 = extractvalue %dx.types.ResRet.f32 %6379, 0
  %6381 = extractvalue %dx.types.ResRet.f32 %6379, 1
  %6382 = extractvalue %dx.types.ResRet.f32 %6379, 2
  %6383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.i32 %6383, 0
  %6385 = extractvalue %dx.types.CBufRet.i32 %6383, 1
  %6386 = uitofp i32 %6384 to float
  %6387 = uitofp i32 %6385 to float
  %6388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6390 = extractvalue %dx.types.CBufRet.f32 %6388, 1
  %6391 = fmul fast float %6386, %6316
  %6392 = fmul fast float %6387, %6317
  %6393 = fadd fast float %6391, -5.000000e-01
  %6394 = fadd fast float %6392, -5.000000e-01
  %6395 = call float @dx.op.unary.f32(i32 22, float %6393)  ; Frc(value)
  %6396 = call float @dx.op.unary.f32(i32 22, float %6394)  ; Frc(value)
  %6397 = fmul fast float %6395, %6395
  %6398 = fmul fast float %6397, %6395
  %6399 = fsub fast float 3.000000e+00, %6395
  %6400 = fmul fast float %6397, %6399
  %6401 = fmul fast float %6395, 3.000000e+00
  %6402 = fmul fast float %6398, 3.000000e+00
  %6403 = fmul fast float %6397, 6.000000e+00
  %6404 = fsub fast float %6402, %6403
  %6405 = fadd fast float %6404, 4.000000e+00
  %6406 = fmul fast float %6405, 0x3FC5555560000000
  %6407 = fmul fast float %6398, -3.000000e+00
  %6408 = fadd fast float %6397, %6395
  %6409 = fmul fast float %6408, 3.000000e+00
  %6410 = fadd fast float %6407, 1.000000e+00
  %6411 = fadd fast float %6410, %6409
  %6412 = fmul fast float %6398, 0x3FC5555560000000
  %6413 = fmul fast float %6396, %6396
  %6414 = fmul fast float %6413, %6396
  %6415 = fsub fast float 3.000000e+00, %6396
  %6416 = fmul fast float %6413, %6415
  %6417 = fmul fast float %6396, 3.000000e+00
  %6418 = fmul fast float %6414, 3.000000e+00
  %6419 = fmul fast float %6413, 6.000000e+00
  %6420 = fsub fast float %6418, %6419
  %6421 = fadd fast float %6420, 4.000000e+00
  %6422 = fmul fast float %6421, 0x3FC5555560000000
  %6423 = fmul fast float %6414, -3.000000e+00
  %6424 = fadd fast float %6413, %6396
  %6425 = fmul fast float %6424, 3.000000e+00
  %6426 = fadd fast float %6423, 1.000000e+00
  %6427 = fadd fast float %6426, %6425
  %6428 = fmul fast float %6414, 0x3FC5555560000000
  %6429 = fadd fast float %6395, 1.000000e+00
  %6430 = fsub fast float 1.000000e+00, %6401
  %6431 = fadd fast float %6430, %6400
  %6432 = fadd fast float %6431, %6405
  %6433 = fmul fast float %6432, 0x3FC5555560000000
  %6434 = fdiv fast float %6406, %6433
  %6435 = fsub fast float %6429, %6434
  %6436 = fsub fast float 1.000000e+00, %6395
  %6437 = fadd fast float %6411, %6398
  %6438 = fmul fast float %6437, 0x3FC5555560000000
  %6439 = fdiv fast float %6412, %6438
  %6440 = fadd fast float %6436, %6439
  %6441 = fadd fast float %6396, 1.000000e+00
  %6442 = fsub fast float 1.000000e+00, %6417
  %6443 = fadd fast float %6442, %6416
  %6444 = fadd fast float %6443, %6421
  %6445 = fmul fast float %6444, 0x3FC5555560000000
  %6446 = fdiv fast float %6422, %6445
  %6447 = fsub fast float %6441, %6446
  %6448 = fsub fast float 1.000000e+00, %6396
  %6449 = fadd fast float %6427, %6414
  %6450 = fmul fast float %6449, 0x3FC5555560000000
  %6451 = fdiv fast float %6428, %6450
  %6452 = fadd fast float %6451, %6448
  %6453 = fmul fast float %6435, %6389
  %6454 = fsub fast float %6316, %6453
  %6455 = fmul fast float %6440, %6389
  %6456 = fadd fast float %6455, %6316
  %6457 = fmul fast float %6452, %6390
  %6458 = fadd fast float %6457, %6317
  %6459 = fmul fast float %6447, %6390
  %6460 = fsub fast float %6317, %6459
  %6461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6454, float %6460, float %6378, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6462 = extractvalue %dx.types.ResRet.f32 %6461, 0
  %6463 = extractvalue %dx.types.ResRet.f32 %6461, 1
  %6464 = extractvalue %dx.types.ResRet.f32 %6461, 2
  %6465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6456, float %6460, float %6378, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6466 = extractvalue %dx.types.ResRet.f32 %6465, 0
  %6467 = extractvalue %dx.types.ResRet.f32 %6465, 1
  %6468 = extractvalue %dx.types.ResRet.f32 %6465, 2
  %6469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6454, float %6458, float %6378, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6470 = extractvalue %dx.types.ResRet.f32 %6469, 0
  %6471 = extractvalue %dx.types.ResRet.f32 %6469, 1
  %6472 = extractvalue %dx.types.ResRet.f32 %6469, 2
  %6473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6456, float %6458, float %6378, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6474 = extractvalue %dx.types.ResRet.f32 %6473, 0
  %6475 = extractvalue %dx.types.ResRet.f32 %6473, 1
  %6476 = extractvalue %dx.types.ResRet.f32 %6473, 2
  %6477 = fsub fast float %6470, %6462
  %6478 = fsub fast float %6471, %6463
  %6479 = fsub fast float %6472, %6464
  %6480 = fmul fast float %6477, %6450
  %6481 = fmul fast float %6478, %6450
  %6482 = fmul fast float %6479, %6450
  %6483 = fadd fast float %6480, %6462
  %6484 = fadd fast float %6481, %6463
  %6485 = fadd fast float %6482, %6464
  %6486 = fsub fast float %6474, %6466
  %6487 = fsub fast float %6475, %6467
  %6488 = fsub fast float %6476, %6468
  %6489 = fmul fast float %6486, %6450
  %6490 = fmul fast float %6487, %6450
  %6491 = fmul fast float %6488, %6450
  %6492 = fsub fast float %6466, %6483
  %6493 = fadd fast float %6492, %6489
  %6494 = fsub fast float %6467, %6484
  %6495 = fadd fast float %6494, %6490
  %6496 = fsub fast float %6468, %6485
  %6497 = fadd fast float %6496, %6491
  %6498 = fmul fast float %6493, %6438
  %6499 = fmul fast float %6495, %6438
  %6500 = fmul fast float %6497, %6438
  %6501 = fadd fast float %6498, %6483
  %6502 = fadd fast float %6499, %6484
  %6503 = fadd fast float %6500, %6485
  %6504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.f32 %6504, 1
  %6506 = fmul fast float %6501, %6505
  %6507 = fmul fast float %6502, %6505
  %6508 = fmul fast float %6503, %6505
  br label %6509

; <label>:6509                                    ; preds = %6341, %6310
  %6510 = phi float [ %6380, %6341 ], [ 1.000000e+00, %6310 ]
  %6511 = phi float [ %6381, %6341 ], [ 1.000000e+00, %6310 ]
  %6512 = phi float [ %6382, %6341 ], [ 1.000000e+00, %6310 ]
  %6513 = phi float [ %6506, %6341 ], [ 0.000000e+00, %6310 ]
  %6514 = phi float [ %6507, %6341 ], [ 0.000000e+00, %6310 ]
  %6515 = phi float [ %6508, %6341 ], [ 0.000000e+00, %6310 ]
  %6516 = fmul fast float %6513, %6287
  %6517 = fmul fast float %6514, %6287
  %6518 = fmul fast float %6515, %6287
  %6519 = call float @dx.op.dot3.f32(i32 55, float %6510, float %6511, float %6512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6520 = call float @dx.op.dot3.f32(i32 55, float %6516, float %6517, float %6518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6521 = select i1 %238, float %6519, float %6510
  %6522 = select i1 %238, float %6519, float %6511
  %6523 = select i1 %238, float 1.000000e+00, float %6512
  %6524 = select i1 %238, float %6520, float %6516
  %6525 = select i1 %238, float 0.000000e+00, float %6517
  %6526 = select i1 %238, float 0.000000e+00, float %6518
  %6527 = fmul fast float %6521, %6300
  %6528 = fmul fast float %6522, %6301
  %6529 = fmul fast float %6523, %6302
  %6530 = fadd fast float %6527, %6524
  %6531 = fadd fast float %6528, %6525
  %6532 = fadd fast float %6526, %6529
  %6533 = fmul fast float %6521, %6278
  %6534 = fmul fast float %6522, %6279
  %6535 = fmul fast float %6523, %6280
  %6536 = fmul fast float %100, 2.000000e+00
  %6537 = fmul fast float %6536, %6312
  %6538 = fmul fast float %101, 2.000000e+00
  %6539 = fmul fast float %6538, %6313
  %6540 = fsub fast float 1.000000e+00, %6537
  %6541 = fsub fast float 1.000000e+00, %6539
  %6542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  %6544 = extractvalue %dx.types.CBufRet.f32 %6542, 1
  %6545 = extractvalue %dx.types.CBufRet.f32 %6542, 2
  %6546 = fmul fast float %6540, %6543
  %6547 = fmul fast float %6540, %6544
  %6548 = fmul fast float %6540, %6545
  %6549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6549, 0
  %6551 = extractvalue %dx.types.CBufRet.f32 %6549, 1
  %6552 = extractvalue %dx.types.CBufRet.f32 %6549, 2
  %6553 = fmul fast float %6541, %6550
  %6554 = fmul fast float %6541, %6551
  %6555 = fmul fast float %6541, %6552
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.CBufRet.f32 %6556, 1
  %6559 = extractvalue %dx.types.CBufRet.f32 %6556, 2
  %6560 = fadd fast float %6553, %6557
  %6561 = fadd fast float %6560, %6546
  %6562 = fadd fast float %6554, %6558
  %6563 = fadd fast float %6562, %6547
  %6564 = fadd fast float %6555, %6559
  %6565 = fadd fast float %6564, %6548
  %6566 = fmul fast float %6561, %198
  %6567 = fmul fast float %6563, %198
  %6568 = fmul fast float %6565, %198
  br label %6569

; <label>:6569                                    ; preds = %6509, %6277
  %6570 = phi float [ %6566, %6509 ], [ %147, %6277 ]
  %6571 = phi float [ %6567, %6509 ], [ %148, %6277 ]
  %6572 = phi float [ %6568, %6509 ], [ %149, %6277 ]
  %6573 = phi float [ %198, %6509 ], [ %88, %6277 ]
  %6574 = phi float [ %6530, %6509 ], [ %6300, %6277 ]
  %6575 = phi float [ %6531, %6509 ], [ %6301, %6277 ]
  %6576 = phi float [ %6532, %6509 ], [ %6302, %6277 ]
  %6577 = phi float [ %6533, %6509 ], [ %6278, %6277 ]
  %6578 = phi float [ %6534, %6509 ], [ %6279, %6277 ]
  %6579 = phi float [ %6535, %6509 ], [ %6280, %6277 ]
  %6580 = phi float [ %6510, %6509 ], [ 1.000000e+00, %6277 ]
  br i1 %6309, label %7735, label %6581

; <label>:6581                                    ; preds = %6569
  %6582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6583 = extractvalue %dx.types.CBufRet.f32 %6582, 0
  %6584 = extractvalue %dx.types.CBufRet.f32 %6582, 1
  %6585 = extractvalue %dx.types.CBufRet.f32 %6582, 2
  %6586 = extractvalue %dx.types.CBufRet.f32 %6582, 3
  %6587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6588 = extractvalue %dx.types.CBufRet.f32 %6587, 0
  %6589 = extractvalue %dx.types.CBufRet.f32 %6587, 1
  %6590 = extractvalue %dx.types.CBufRet.f32 %6587, 2
  %6591 = extractvalue %dx.types.CBufRet.f32 %6587, 3
  %6592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6593 = extractvalue %dx.types.CBufRet.f32 %6592, 0
  %6594 = extractvalue %dx.types.CBufRet.f32 %6592, 1
  %6595 = extractvalue %dx.types.CBufRet.f32 %6592, 2
  %6596 = extractvalue %dx.types.CBufRet.f32 %6592, 3
  %6597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6598 = extractvalue %dx.types.CBufRet.f32 %6597, 0
  %6599 = extractvalue %dx.types.CBufRet.f32 %6597, 1
  %6600 = extractvalue %dx.types.CBufRet.f32 %6597, 2
  %6601 = extractvalue %dx.types.CBufRet.f32 %6597, 3
  %6602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6603 = extractvalue %dx.types.CBufRet.f32 %6602, 3
  %6604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6605 = extractvalue %dx.types.CBufRet.f32 %6604, 3
  %6606 = extractvalue %dx.types.CBufRet.f32 %6604, 0
  %6607 = extractvalue %dx.types.CBufRet.f32 %6604, 1
  %6608 = extractvalue %dx.types.CBufRet.f32 %6604, 2
  %6609 = fcmp fast olt float %6608, -5.000000e-01
  %6610 = call float @dx.op.dot3.f32(i32 55, float %6570, float %6571, float %6572, float %6570, float %6571, float %6572)  ; Dot3(ax,ay,az,bx,by,bz)
  %6611 = call float @dx.op.unary.f32(i32 25, float %6610)  ; Rsqrt(value)
  %6612 = fmul fast float %6611, %6610
  %6613 = fmul fast float %6611, %6570
  %6614 = fmul fast float %6611, %6571
  %6615 = fmul fast float %6611, %6572
  %6616 = fadd fast float %6612, %6586
  %6617 = call float @dx.op.dot3.f32(i32 55, float %6613, float %6614, float %6615, float %6583, float %6584, float %6585)  ; Dot3(ax,ay,az,bx,by,bz)
  %6618 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6619 = extractvalue %dx.types.CBufRet.i32 %6618, 1
  %6620 = and i32 %6619, 1
  %6621 = icmp ne i32 %6620, 0
  %6622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.f32 %6622, 2
  %6624 = fcmp fast ogt float %6623, 0.000000e+00
  %6625 = and i1 %6621, %6624
  br i1 %6625, label %6626, label %7032, !dx.controlflow.hints !147

; <label>:6626                                    ; preds = %6581
  %6627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.f32 %6627, 3
  %6629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6630 = extractvalue %dx.types.CBufRet.f32 %6629, 2
  %6631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6632 = extractvalue %dx.types.CBufRet.f32 %6631, 2
  %6633 = fsub fast float %6630, %6632
  %6634 = and i32 %6619, 2
  %6635 = extractvalue %dx.types.CBufRet.i32 %6618, 0
  %6636 = call i32 @dx.op.binary.i32(i32 40, i32 %6635, i32 3)  ; UMin(a,b)
  %6637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6638 = extractvalue %dx.types.CBufRet.f32 %6637, 0
  %6639 = extractvalue %dx.types.CBufRet.f32 %6637, 1
  %6640 = extractvalue %dx.types.CBufRet.f32 %6631, 0
  %6641 = extractvalue %dx.types.CBufRet.f32 %6631, 1
  %6642 = fsub fast float %6638, %6640
  %6643 = fsub fast float %6639, %6641
  %6644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.f32 %6644, 0
  %6646 = fcmp fast ogt float %6645, 0.000000e+00
  %6647 = fsub fast float -0.000000e+00, %6642
  %6648 = fsub fast float -0.000000e+00, %6643
  %6649 = call float @dx.op.dot2.f32(i32 54, float %6613, float %6614, float %6613, float %6614)  ; Dot2(ax,ay,bx,by)
  %6650 = call float @dx.op.dot2.f32(i32 54, float %6613, float %6614, float %6647, float %6648)  ; Dot2(ax,ay,bx,by)
  %6651 = fmul fast float %6650, 2.000000e+00
  %6652 = call float @dx.op.dot2.f32(i32 54, float %6647, float %6648, float %6647, float %6648)  ; Dot2(ax,ay,bx,by)
  %6653 = fmul fast float %6645, %6645
  %6654 = fsub fast float %6652, %6653
  %6655 = fmul fast float %6651, %6651
  %6656 = fmul fast float %6649, 4.000000e+00
  %6657 = fmul fast float %6656, %6654
  %6658 = fsub fast float %6655, %6657
  %6659 = fcmp fast ogt float %6658, 0.000000e+00
  br i1 %6659, label %6660, label %6675

; <label>:6660                                    ; preds = %6626
  %6661 = fcmp fast ogt float %6651, 0.000000e+00
  %6662 = call float @dx.op.unary.f32(i32 24, float %6658)  ; Sqrt(value)
  %6663 = fsub fast float -0.000000e+00, %6662
  %6664 = select i1 %6661, float %6662, float %6663
  %6665 = fadd fast float %6664, %6651
  %6666 = fmul float %6665, -5.000000e-01
  %6667 = fdiv fast float %6666, %6649
  %6668 = call float @dx.op.binary.f32(i32 35, float %6667, float 0.000000e+00)  ; FMax(a,b)
  %6669 = call float @dx.op.binary.f32(i32 36, float %6612, float %6668)  ; FMin(a,b)
  %6670 = fdiv fast float %6654, %6666
  %6671 = call float @dx.op.binary.f32(i32 35, float %6670, float 0.000000e+00)  ; FMax(a,b)
  %6672 = call float @dx.op.binary.f32(i32 36, float %6612, float %6671)  ; FMin(a,b)
  %6673 = call float @dx.op.binary.f32(i32 36, float %6669, float %6672)  ; FMin(a,b)
  %6674 = call float @dx.op.binary.f32(i32 35, float %6669, float %6672)  ; FMax(a,b)
  br label %6675

; <label>:6675                                    ; preds = %6660, %6626
  %6676 = phi float [ %6674, %6660 ], [ -1.000000e+00, %6626 ]
  %6677 = phi float [ %6673, %6660 ], [ -1.000000e+00, %6626 ]
  %6678 = phi i1 [ true, %6660 ], [ false, %6626 ]
  %6679 = and i1 %6646, %6678
  br i1 %6679, label %6680, label %6682

; <label>:6680                                    ; preds = %6675
  %6681 = fcmp fast oeq float %6677, %6676
  br i1 %6681, label %6985, label %6683

; <label>:6682                                    ; preds = %6675
  br i1 %6646, label %6985, label %6683

; <label>:6683                                    ; preds = %6682, %6680
  %6684 = phi float [ %6612, %6682 ], [ %6676, %6680 ]
  %6685 = phi float [ 0.000000e+00, %6682 ], [ %6677, %6680 ]
  %6686 = icmp ne i32 %6634, 0
  %6687 = fmul fast float %6684, %6615
  %6688 = fadd fast float %6687, %6628
  %6689 = fmul fast float %6688, %6684
  %6690 = select i1 %6686, float 0.000000e+00, float %6689
  %6691 = fcmp fast oeq float %6615, 0.000000e+00
  %6692 = fdiv fast float %6633, %6615
  %6693 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6692)  ; FMax(a,b)
  %6694 = select i1 %6691, float %6684, float %6693
  %6695 = call float @dx.op.binary.f32(i32 36, float %6684, float %6694)  ; FMin(a,b)
  %6696 = fcmp fast ogt float %6615, 0.000000e+00
  %6697 = fcmp fast olt float %6633, 0.000000e+00
  br i1 %6696, label %6698, label %6755

; <label>:6698                                    ; preds = %6683
  %6699 = icmp eq i32 %6634, 0
  br i1 %6697, label %6700, label %6744

; <label>:6700                                    ; preds = %6698
  %6701 = select i1 %6699, float %6684, float 0.000000e+00
  %6702 = fsub fast float -0.000000e+00, %6701
  %6703 = call float @dx.op.unary.f32(i32 6, float %6702)  ; FAbs(value)
  %6704 = fmul fast float %6701, %6615
  %6705 = fadd fast float %6704, %6628
  %6706 = fmul fast float %6703, %6705
  %6707 = fsub fast float %6690, %6706
  %6708 = fsub fast float %6684, %6703
  %6709 = select i1 %6699, float %6708, float 0.000000e+00
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = extractvalue %dx.types.CBufRet.f32 %6710, 1
  %6713 = extractvalue %dx.types.CBufRet.f32 %6710, 2
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6716 = extractvalue %dx.types.CBufRet.f32 %6714, 1
  %6717 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6718 = extractvalue %dx.types.CBufRet.f32 %6714, 3
  %6719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6720 = extractvalue %dx.types.CBufRet.f32 %6719, 3
  %6721 = call float @dx.op.binary.f32(i32 36, float %6707, float %6720)  ; FMin(a,b)
  %6722 = fmul fast float %6718, %6709
  %6723 = call float @dx.op.unary.f32(i32 7, float %6722)  ; Saturate(value)
  %6724 = fsub fast float %6715, %6711
  %6725 = fsub fast float %6716, %6712
  %6726 = fsub fast float %6717, %6713
  %6727 = fmul fast float %6723, %6724
  %6728 = fmul fast float %6723, %6725
  %6729 = fmul fast float %6723, %6726
  %6730 = fadd fast float %6727, %6711
  %6731 = fadd fast float %6728, %6712
  %6732 = fadd fast float %6729, %6713
  %6733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6734 = extractvalue %dx.types.CBufRet.f32 %6733, 0
  %6735 = extractvalue %dx.types.CBufRet.f32 %6733, 1
  %6736 = fadd fast float %6735, %6734
  %6737 = call float @dx.op.unary.f32(i32 7, float %6736)  ; Saturate(value)
  %6738 = extractvalue %dx.types.CBufRet.f32 %6733, 2
  %6739 = extractvalue %dx.types.CBufRet.f32 %6733, 3
  %6740 = fadd fast float %6739, %6738
  %6741 = call float @dx.op.unary.f32(i32 7, float %6740)  ; Saturate(value)
  %6742 = fmul fast float %6737, %6721
  %6743 = fmul fast float %6742, %6741
  br label %6985

; <label>:6744                                    ; preds = %6698
  br i1 %6699, label %6745, label %6766

; <label>:6745                                    ; preds = %6744
  %6746 = call float @dx.op.binary.f32(i32 36, float %6695, float %6685)  ; FMin(a,b)
  %6747 = fsub fast float %6695, %6746
  %6748 = fsub fast float %6747, %6684
  %6749 = call float @dx.op.unary.f32(i32 6, float %6748)  ; FAbs(value)
  %6750 = fadd fast float %6747, %6684
  %6751 = fmul fast float %6750, %6615
  %6752 = fadd fast float %6751, %6628
  %6753 = fmul fast float %6752, %6749
  %6754 = fsub fast float %6690, %6753
  br label %6766

; <label>:6755                                    ; preds = %6683
  br i1 %6697, label %6756, label %6766

; <label>:6756                                    ; preds = %6755
  %6757 = call float @dx.op.binary.f32(i32 35, float %6685, float %6695)  ; FMax(a,b)
  %6758 = icmp eq i32 %6634, 0
  %6759 = select i1 %6758, float %6695, float 0.000000e+00
  %6760 = fsub fast float -0.000000e+00, %6759
  %6761 = call float @dx.op.unary.f32(i32 6, float %6760)  ; FAbs(value)
  %6762 = fmul fast float %6759, %6615
  %6763 = fadd fast float %6762, %6628
  %6764 = fmul fast float %6761, %6763
  %6765 = fsub fast float %6690, %6764
  br label %6766

; <label>:6766                                    ; preds = %6756, %6755, %6745, %6744
  %6767 = phi float [ %6685, %6744 ], [ %6685, %6745 ], [ %6757, %6756 ], [ %6685, %6755 ]
  %6768 = phi float [ 0.000000e+00, %6744 ], [ %6749, %6745 ], [ %6761, %6756 ], [ 0.000000e+00, %6755 ]
  %6769 = phi float [ %6690, %6744 ], [ %6754, %6745 ], [ %6765, %6756 ], [ %6690, %6755 ]
  %6770 = phi float [ %6695, %6744 ], [ %6695, %6745 ], [ %6684, %6756 ], [ %6684, %6755 ]
  %6771 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %6771, align 4, !tbaa !134, !noalias !148
  %6772 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %6772, align 4, !tbaa !134, !noalias !148
  %6773 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %6773, align 4, !tbaa !134, !noalias !148
  %6774 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %6774, align 4, !tbaa !134, !noalias !148
  %6775 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %6775, align 4, !tbaa !134, !noalias !148
  %6776 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %6776, align 4, !tbaa !134, !noalias !148
  %6777 = icmp sgt i32 %6636, 0
  br i1 %6777, label %6778, label %6839

; <label>:6778                                    ; preds = %6766
  br label %6779

; <label>:6779                                    ; preds = %6828, %6778
  %6780 = phi i32 [ %6829, %6828 ], [ 0, %6778 ]
  %6781 = phi i32 [ %6830, %6828 ], [ 0, %6778 ]
  %6782 = add nuw i32 %6781, 171
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %6782)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 0
  %6785 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6787 = extractvalue %dx.types.CBufRet.f32 %6786, 0
  %6788 = extractvalue %dx.types.CBufRet.f32 %6786, 1
  %6789 = fsub fast float %6784, %6787
  %6790 = fsub fast float %6785, %6788
  %6791 = extractvalue %dx.types.CBufRet.f32 %6783, 2
  %6792 = fsub fast float -0.000000e+00, %6789
  %6793 = fsub fast float -0.000000e+00, %6790
  %6794 = call float @dx.op.dot2.f32(i32 54, float %6613, float %6614, float %6792, float %6793)  ; Dot2(ax,ay,bx,by)
  %6795 = fmul fast float %6794, 2.000000e+00
  %6796 = call float @dx.op.dot2.f32(i32 54, float %6792, float %6793, float %6792, float %6793)  ; Dot2(ax,ay,bx,by)
  %6797 = fmul fast float %6791, %6791
  %6798 = fsub fast float %6796, %6797
  %6799 = fmul fast float %6795, %6795
  %6800 = fmul fast float %6656, %6798
  %6801 = fsub fast float %6799, %6800
  %6802 = fcmp fast ogt float %6801, 0.000000e+00
  br i1 %6802, label %6803, label %6818

; <label>:6803                                    ; preds = %6779
  %6804 = fcmp fast ogt float %6795, 0.000000e+00
  %6805 = call float @dx.op.unary.f32(i32 24, float %6801)  ; Sqrt(value)
  %6806 = fsub fast float -0.000000e+00, %6805
  %6807 = select i1 %6804, float %6805, float %6806
  %6808 = fadd fast float %6807, %6795
  %6809 = fmul float %6808, -5.000000e-01
  %6810 = fdiv fast float %6809, %6649
  %6811 = call float @dx.op.binary.f32(i32 35, float %6810, float 0.000000e+00)  ; FMax(a,b)
  %6812 = call float @dx.op.binary.f32(i32 36, float %6684, float %6811)  ; FMin(a,b)
  %6813 = fdiv fast float %6798, %6809
  %6814 = call float @dx.op.binary.f32(i32 35, float %6813, float 0.000000e+00)  ; FMax(a,b)
  %6815 = call float @dx.op.binary.f32(i32 36, float %6684, float %6814)  ; FMin(a,b)
  %6816 = call float @dx.op.binary.f32(i32 36, float %6812, float %6815)  ; FMin(a,b)
  %6817 = call float @dx.op.binary.f32(i32 35, float %6812, float %6815)  ; FMax(a,b)
  br label %6818

; <label>:6818                                    ; preds = %6803, %6779
  %6819 = phi float [ %6817, %6803 ], [ -1.000000e+00, %6779 ]
  %6820 = phi float [ %6816, %6803 ], [ -1.000000e+00, %6779 ]
  %6821 = phi i1 [ true, %6803 ], [ false, %6779 ]
  br i1 %6821, label %6822, label %6828

; <label>:6822                                    ; preds = %6818
  %6823 = call float @dx.op.binary.f32(i32 35, float %6767, float %6820)  ; FMax(a,b)
  %6824 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6781
  store float %6823, float* %6824, align 4, !tbaa !134, !noalias !148
  %6825 = call float @dx.op.binary.f32(i32 35, float %6767, float %6819)  ; FMax(a,b)
  %6826 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6781
  store float %6825, float* %6826, align 4, !tbaa !134, !noalias !148
  %6827 = add nsw i32 %6780, 1
  br label %6828

; <label>:6828                                    ; preds = %6822, %6818
  %6829 = phi i32 [ %6827, %6822 ], [ %6780, %6818 ]
  %6830 = add nuw nsw i32 %6781, 1
  %6831 = icmp eq i32 %6830, %6636
  br i1 %6831, label %6832, label %6779

; <label>:6832                                    ; preds = %6828
  %6833 = load float, float* %6773, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %6834 = load float, float* %6772, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  %6835 = load float, float* %6771, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  %6836 = load float, float* %6776, align 4, !tbaa !134, !alias.scope !174, !noalias !177
  %6837 = load float, float* %6775, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  %6838 = load float, float* %6774, align 4, !tbaa !134, !alias.scope !182, !noalias !183
  br label %6839

; <label>:6839                                    ; preds = %6832, %6766
  %6840 = phi float [ -1.000000e+00, %6766 ], [ %6838, %6832 ]
  %6841 = phi float [ -1.000000e+00, %6766 ], [ %6837, %6832 ]
  %6842 = phi float [ -1.000000e+00, %6766 ], [ %6836, %6832 ]
  %6843 = phi float [ -1.000000e+00, %6766 ], [ %6835, %6832 ]
  %6844 = phi float [ -1.000000e+00, %6766 ], [ %6834, %6832 ]
  %6845 = phi float [ -1.000000e+00, %6766 ], [ %6833, %6832 ]
  %6846 = phi i32 [ 0, %6766 ], [ %6829, %6832 ]
  %6847 = call float @dx.op.binary.f32(i32 36, float %6844, float %6845)  ; FMin(a,b)
  %6848 = call float @dx.op.binary.f32(i32 36, float %6843, float %6847)  ; FMin(a,b)
  %6849 = call float @dx.op.binary.f32(i32 35, float %6843, float %6844)  ; FMax(a,b)
  %6850 = call float @dx.op.binary.f32(i32 36, float %6849, float %6845)  ; FMin(a,b)
  %6851 = call float @dx.op.binary.f32(i32 36, float %6843, float %6844)  ; FMin(a,b)
  %6852 = call float @dx.op.binary.f32(i32 35, float %6851, float %6850)  ; FMax(a,b)
  %6853 = call float @dx.op.binary.f32(i32 35, float %6844, float %6845)  ; FMax(a,b)
  %6854 = call float @dx.op.binary.f32(i32 35, float %6843, float %6853)  ; FMax(a,b)
  store float %6848, float* %6771, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  store float %6852, float* %6772, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  store float %6854, float* %6773, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %6855 = call float @dx.op.binary.f32(i32 36, float %6841, float %6842)  ; FMin(a,b)
  %6856 = call float @dx.op.binary.f32(i32 36, float %6840, float %6855)  ; FMin(a,b)
  %6857 = call float @dx.op.binary.f32(i32 35, float %6840, float %6841)  ; FMax(a,b)
  %6858 = call float @dx.op.binary.f32(i32 36, float %6857, float %6842)  ; FMin(a,b)
  %6859 = call float @dx.op.binary.f32(i32 36, float %6840, float %6841)  ; FMin(a,b)
  %6860 = call float @dx.op.binary.f32(i32 35, float %6859, float %6858)  ; FMax(a,b)
  %6861 = call float @dx.op.binary.f32(i32 35, float %6841, float %6842)  ; FMax(a,b)
  %6862 = call float @dx.op.binary.f32(i32 35, float %6840, float %6861)  ; FMax(a,b)
  store float %6856, float* %6774, align 4, !tbaa !134, !alias.scope !182, !noalias !183
  store float %6860, float* %6775, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  store float %6862, float* %6776, align 4, !tbaa !134, !alias.scope !174, !noalias !177
  %6863 = sub nsw i32 3, %6846
  %6864 = icmp sgt i32 %6863, 2
  br i1 %6864, label %6865, label %6903

; <label>:6865                                    ; preds = %6839
  %6866 = icmp eq i32 %6634, 0
  %6867 = fsub fast float %6684, %6768
  %6868 = select i1 %6866, float %6867, float %6768
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 0
  %6871 = extractvalue %dx.types.CBufRet.f32 %6869, 1
  %6872 = extractvalue %dx.types.CBufRet.f32 %6869, 2
  %6873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.f32 %6873, 0
  %6875 = extractvalue %dx.types.CBufRet.f32 %6873, 1
  %6876 = extractvalue %dx.types.CBufRet.f32 %6873, 2
  %6877 = extractvalue %dx.types.CBufRet.f32 %6873, 3
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 3
  %6880 = call float @dx.op.binary.f32(i32 36, float %6769, float %6879)  ; FMin(a,b)
  %6881 = fmul fast float %6877, %6868
  %6882 = call float @dx.op.unary.f32(i32 7, float %6881)  ; Saturate(value)
  %6883 = fsub fast float %6874, %6870
  %6884 = fsub fast float %6875, %6871
  %6885 = fsub fast float %6876, %6872
  %6886 = fmul fast float %6882, %6883
  %6887 = fmul fast float %6882, %6884
  %6888 = fmul fast float %6882, %6885
  %6889 = fadd fast float %6886, %6870
  %6890 = fadd fast float %6887, %6871
  %6891 = fadd fast float %6888, %6872
  %6892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6893 = extractvalue %dx.types.CBufRet.f32 %6892, 0
  %6894 = extractvalue %dx.types.CBufRet.f32 %6892, 1
  %6895 = fadd fast float %6894, %6893
  %6896 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6892, 2
  %6898 = extractvalue %dx.types.CBufRet.f32 %6892, 3
  %6899 = fadd fast float %6898, %6897
  %6900 = call float @dx.op.unary.f32(i32 7, float %6899)  ; Saturate(value)
  %6901 = fmul fast float %6896, %6880
  %6902 = fmul fast float %6901, %6900
  br label %6985

; <label>:6903                                    ; preds = %6839
  %6904 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6863
  %6905 = load float, float* %6904, align 4, !tbaa !134, !noalias !148
  %6906 = fcmp fast olt float %6905, %6770
  %6907 = icmp sgt i32 %6846, 0
  %6908 = and i1 %6907, %6906
  br i1 %6908, label %6909, label %6946

; <label>:6909                                    ; preds = %6903
  br label %6910

; <label>:6910                                    ; preds = %6939, %6909
  %6911 = phi float [ %6940, %6939 ], [ %6768, %6909 ]
  %6912 = phi float [ %6941, %6939 ], [ %6769, %6909 ]
  %6913 = phi float [ %6921, %6939 ], [ %6905, %6909 ]
  %6914 = phi i32 [ %6918, %6939 ], [ %6863, %6909 ]
  %6915 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6914
  %6916 = load float, float* %6915, align 4, !tbaa !134, !noalias !148
  %6917 = icmp slt i32 %6914, 2
  %6918 = add nsw i32 %6914, 1
  %6919 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6918
  %6920 = load float, float* %6919, align 4, !tbaa !134, !noalias !148
  %6921 = select i1 %6917, float %6920, float %6684
  %6922 = call float @dx.op.binary.f32(i32 36, float %6921, float %6916)  ; FMin(a,b)
  %6923 = call float @dx.op.binary.f32(i32 36, float %6770, float %6922)  ; FMin(a,b)
  %6924 = icmp eq i32 %6634, 0
  %6925 = fadd fast float %6923, %6913
  %6926 = fmul fast float %6925, %6615
  %6927 = fadd fast float %6926, %6628
  br i1 %6924, label %6933, label %6928

; <label>:6928                                    ; preds = %6910
  %6929 = fsub fast float %6923, %6913
  %6930 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6929)  ; FMax(a,b)
  %6931 = fmul fast float %6930, %6927
  %6932 = fadd fast float %6931, %6912
  br label %6939

; <label>:6933                                    ; preds = %6910
  %6934 = fsub fast float %6913, %6923
  %6935 = call float @dx.op.unary.f32(i32 6, float %6934)  ; FAbs(value)
  %6936 = fadd fast float %6935, %6911
  %6937 = fmul fast float %6935, %6927
  %6938 = fsub fast float %6912, %6937
  br label %6939

; <label>:6939                                    ; preds = %6933, %6928
  %6940 = phi float [ %6930, %6928 ], [ %6936, %6933 ]
  %6941 = phi float [ %6932, %6928 ], [ %6938, %6933 ]
  %6942 = fcmp fast olt float %6921, %6770
  %6943 = icmp slt i32 %6918, 3
  %6944 = and i1 %6943, %6942
  br i1 %6944, label %6910, label %6945

; <label>:6945                                    ; preds = %6939
  br label %6946

; <label>:6946                                    ; preds = %6945, %6903
  %6947 = phi float [ %6768, %6903 ], [ %6940, %6945 ]
  %6948 = phi float [ %6769, %6903 ], [ %6941, %6945 ]
  %6949 = fsub fast float %6684, %6947
  %6950 = select i1 %6686, float %6947, float %6949
  %6951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6952 = extractvalue %dx.types.CBufRet.f32 %6951, 0
  %6953 = extractvalue %dx.types.CBufRet.f32 %6951, 1
  %6954 = extractvalue %dx.types.CBufRet.f32 %6951, 2
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 0
  %6957 = extractvalue %dx.types.CBufRet.f32 %6955, 1
  %6958 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6959 = extractvalue %dx.types.CBufRet.f32 %6955, 3
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 3
  %6962 = call float @dx.op.binary.f32(i32 36, float %6948, float %6961)  ; FMin(a,b)
  %6963 = fmul fast float %6959, %6950
  %6964 = call float @dx.op.unary.f32(i32 7, float %6963)  ; Saturate(value)
  %6965 = fsub fast float %6956, %6952
  %6966 = fsub fast float %6957, %6953
  %6967 = fsub fast float %6958, %6954
  %6968 = fmul fast float %6964, %6965
  %6969 = fmul fast float %6964, %6966
  %6970 = fmul fast float %6964, %6967
  %6971 = fadd fast float %6968, %6952
  %6972 = fadd fast float %6969, %6953
  %6973 = fadd fast float %6970, %6954
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 0
  %6976 = extractvalue %dx.types.CBufRet.f32 %6974, 1
  %6977 = fadd fast float %6976, %6975
  %6978 = call float @dx.op.unary.f32(i32 7, float %6977)  ; Saturate(value)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6974, 2
  %6980 = extractvalue %dx.types.CBufRet.f32 %6974, 3
  %6981 = fadd fast float %6980, %6979
  %6982 = call float @dx.op.unary.f32(i32 7, float %6981)  ; Saturate(value)
  %6983 = fmul fast float %6978, %6962
  %6984 = fmul fast float %6983, %6982
  br label %6985

; <label>:6985                                    ; preds = %6946, %6865, %6700, %6682, %6680
  %6986 = phi float [ %6709, %6700 ], [ %6868, %6865 ], [ %6950, %6946 ], [ 0.000000e+00, %6680 ], [ 0.000000e+00, %6682 ]
  %6987 = phi float [ %6743, %6700 ], [ %6902, %6865 ], [ %6984, %6946 ], [ 0.000000e+00, %6680 ], [ 0.000000e+00, %6682 ]
  %6988 = phi float [ %6730, %6700 ], [ %6889, %6865 ], [ %6971, %6946 ], [ 0.000000e+00, %6680 ], [ 0.000000e+00, %6682 ]
  %6989 = phi float [ %6731, %6700 ], [ %6890, %6865 ], [ %6972, %6946 ], [ 0.000000e+00, %6680 ], [ 0.000000e+00, %6682 ]
  %6990 = phi float [ %6732, %6700 ], [ %6891, %6865 ], [ %6973, %6946 ], [ 0.000000e+00, %6680 ], [ 0.000000e+00, %6682 ]
  %6991 = fmul fast float %6623, %6987
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 2
  %6994 = fsub fast float %6630, %6993
  %6995 = fcmp fast olt float %6991, -2.000000e+01
  %6996 = call float @dx.op.unary.f32(i32 21, float %6991)  ; Exp(value)
  %6997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6998 = extractvalue %dx.types.CBufRet.f32 %6997, 2
  %6999 = extractvalue %dx.types.CBufRet.f32 %6997, 3
  %7000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7001 = extractvalue %dx.types.CBufRet.f32 %7000, 2
  %7002 = fmul fast float %6999, %6994
  %7003 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7004 = fsub fast float 1.000000e+00, %7003
  %7005 = fmul fast float %6615, 5.000000e-01
  %7006 = fadd fast float %7005, 5.000000e-01
  %7007 = call float @dx.op.unary.f32(i32 7, float %7006)  ; Saturate(value)
  %7008 = fsub fast float 1.000000e+00, %7007
  %7009 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7004)  ; FMax(a,b)
  %7010 = fdiv fast float %7008, %7009
  %7011 = fsub fast float %6994, %6572
  %7012 = call float @dx.op.unary.f32(i32 6, float %7011)  ; FAbs(value)
  %7013 = fmul fast float %7012, %6998
  %7014 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  %7015 = fsub fast float 1.000000e+00, %7013
  %7016 = fmul fast float %7015, %7014
  %7017 = fadd fast float %7016, %7013
  %7018 = fmul fast float %7001, %6994
  %7019 = call float @dx.op.unary.f32(i32 7, float %7018)  ; Saturate(value)
  %7020 = fsub fast float 1.000000e+00, %7017
  %7021 = fmul fast float %7020, %7019
  %7022 = fadd fast float %7021, %7017
  %7023 = call float @dx.op.unary.f32(i32 7, float %7022)  ; Saturate(value)
  %7024 = fadd fast float %6996, -1.000000e+00
  %7025 = select i1 %6995, float -1.000000e+00, float %7024
  %7026 = fmul fast float %7023, %7025
  %7027 = fadd fast float %7026, 1.000000e+00
  %7028 = fsub fast float -0.000000e+00, %7026
  %7029 = fmul fast float %6988, %7028
  %7030 = fmul fast float %6989, %7028
  %7031 = fmul fast float %6990, %7028
  br label %7032

; <label>:7032                                    ; preds = %6985, %6581
  %7033 = phi float [ %6986, %6985 ], [ 0.000000e+00, %6581 ]
  %7034 = phi float [ %7027, %6985 ], [ 1.000000e+00, %6581 ]
  %7035 = phi float [ %7029, %6985 ], [ 0.000000e+00, %6581 ]
  %7036 = phi float [ %7030, %6985 ], [ 0.000000e+00, %6581 ]
  %7037 = phi float [ %7031, %6985 ], [ 0.000000e+00, %6581 ]
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 1
  %7040 = fsub fast float 1.000000e+00, %7034
  %7041 = fmul fast float %7040, %6616
  %7042 = fmul fast float %7041, %7039
  %7043 = fsub fast float %6616, %7042
  br i1 %6609, label %7044, label %7073, !dx.controlflow.hints !184

; <label>:7044                                    ; preds = %7032
  %7045 = fmul fast float %6617, %6606
  %7046 = fadd fast float %7045, %6607
  %7047 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7048 = fmul fast float %6588, %7043
  %7049 = fsub fast float -0.000000e+00, %7048
  %7050 = fmul fast float %6589, %7043
  %7051 = fsub fast float -0.000000e+00, %7050
  %7052 = call float @dx.op.unary.f32(i32 21, float %7049)  ; Exp(value)
  %7053 = call float @dx.op.unary.f32(i32 21, float %7051)  ; Exp(value)
  %7054 = call float @dx.op.binary.f32(i32 35, float %6596, float %7052)  ; FMax(a,b)
  %7055 = call float @dx.op.binary.f32(i32 35, float %6596, float %7053)  ; FMax(a,b)
  %7056 = fsub fast float %7055, %7054
  %7057 = fmul fast float %7056, %7047
  %7058 = fadd fast float %7057, %7054
  %7059 = call float @dx.op.unary.f32(i32 7, float %7058)  ; Saturate(value)
  %7060 = fsub fast float %6593, %6598
  %7061 = fsub fast float %6594, %6599
  %7062 = fsub fast float %6595, %6600
  %7063 = fmul fast float %7047, %7060
  %7064 = fmul fast float %7047, %7061
  %7065 = fmul fast float %7047, %7062
  %7066 = fadd fast float %7063, %6598
  %7067 = fadd fast float %7064, %6599
  %7068 = fadd fast float %7065, %6600
  %7069 = fsub fast float 1.000000e+00, %7059
  %7070 = fmul fast float %7069, %7066
  %7071 = fmul fast float %7069, %7067
  %7072 = fmul fast float %7069, %7068
  br label %7132

; <label>:7073                                    ; preds = %7032
  %7074 = fmul fast float %7043, %6605
  %7075 = call float @dx.op.unary.f32(i32 7, float %7074)  ; Saturate(value)
  %7076 = fsub fast float 2.000000e+00, %7075
  %7077 = fmul fast float %7075, 9.921875e-01
  %7078 = fmul fast float %7077, %7076
  %7079 = fadd fast float %7078, 3.906250e-03
  %7080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7079, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7081 = extractvalue %dx.types.ResRet.f32 %7080, 0
  %7082 = fsub fast float %7075, %7081
  %7083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7082)  ; FMax(a,b)
  %7084 = fmul fast float %6591, %6572
  %7085 = call float @dx.op.unary.f32(i32 6, float %7084)  ; FAbs(value)
  %7086 = fcmp fast ogt float %7085, 0x3EB0C6F7A0000000
  br i1 %7086, label %7087, label %7093, !dx.controlflow.hints !185

; <label>:7087                                    ; preds = %7073
  %7088 = fmul fast float %7084, 0xBFF7154760000000
  %7089 = call float @dx.op.unary.f32(i32 21, float %7088)  ; Exp(value)
  %7090 = fsub fast float 1.000000e+00, %7089
  %7091 = fdiv fast float %7090, %7084
  %7092 = fmul fast float %7091, %6601
  br label %7093

; <label>:7093                                    ; preds = %7087, %7073
  %7094 = phi float [ %7092, %7087 ], [ %6601, %7073 ]
  %7095 = fadd fast float %7094, %6603
  %7096 = fmul fast float %7095, %7083
  %7097 = fmul fast float %6588, %7096
  %7098 = fsub fast float -0.000000e+00, %7097
  %7099 = fmul fast float %6589, %7096
  %7100 = fsub fast float -0.000000e+00, %7099
  %7101 = fmul fast float %6590, %7096
  %7102 = fsub fast float -0.000000e+00, %7101
  %7103 = call float @dx.op.unary.f32(i32 21, float %7098)  ; Exp(value)
  %7104 = call float @dx.op.unary.f32(i32 21, float %7100)  ; Exp(value)
  %7105 = call float @dx.op.unary.f32(i32 21, float %7102)  ; Exp(value)
  %7106 = fmul fast float %6617, %6617
  %7107 = fadd fast float %7106, 1.000000e+00
  %7108 = fmul fast float %7107, 0x3FAE8EC8A0000000
  %7109 = fmul fast float %7108, %6598
  %7110 = fmul fast float %7108, %6599
  %7111 = fmul fast float %7108, %6600
  %7112 = fmul fast float %6617, %6596
  %7113 = fsub fast float 1.000000e+00, %7112
  %7114 = fmul fast float %6596, %6596
  %7115 = fsub fast float 1.000000e+00, %7114
  %7116 = fmul fast float %7115, 0x3FB45F3060000000
  %7117 = fmul fast float %7113, %7113
  %7118 = fdiv fast float 1.000000e+00, %7117
  %7119 = fmul fast float %7116, %7118
  %7120 = fmul fast float %7119, %6593
  %7121 = fmul fast float %7119, %6594
  %7122 = fmul fast float %7119, %6595
  %7123 = fadd fast float %7120, %7109
  %7124 = fadd fast float %7121, %7110
  %7125 = fadd fast float %7122, %7111
  %7126 = fsub fast float 1.000000e+00, %7103
  %7127 = fsub fast float 1.000000e+00, %7104
  %7128 = fsub fast float 1.000000e+00, %7105
  %7129 = fmul fast float %7123, %7126
  %7130 = fmul fast float %7124, %7127
  %7131 = fmul fast float %7125, %7128
  br label %7132

; <label>:7132                                    ; preds = %7093, %7044
  %7133 = phi float [ %7070, %7044 ], [ %7129, %7093 ]
  %7134 = phi float [ %7071, %7044 ], [ %7130, %7093 ]
  %7135 = phi float [ %7072, %7044 ], [ %7131, %7093 ]
  %7136 = phi float [ %7059, %7044 ], [ %7103, %7093 ]
  %7137 = phi float [ %7059, %7044 ], [ %7104, %7093 ]
  %7138 = phi float [ %7059, %7044 ], [ %7105, %7093 ]
  br i1 %6625, label %7139, label %7337, !dx.controlflow.hints !186

; <label>:7139                                    ; preds = %7132
  %7140 = extractvalue %dx.types.CBufRet.f32 %7038, 0
  %7141 = fmul fast float %7140, %7040
  %7142 = fsub fast float %7035, %7133
  %7143 = fsub fast float %7036, %7134
  %7144 = fsub fast float %7037, %7135
  %7145 = fmul fast float %7141, %7142
  %7146 = fmul fast float %7141, %7143
  %7147 = fmul fast float %7141, %7144
  %7148 = fadd fast float %7145, %7133
  %7149 = fadd fast float %7146, %7134
  %7150 = fadd fast float %7147, %7135
  %7151 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7136)  ; FMax(a,b)
  %7152 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7137)  ; FMax(a,b)
  %7153 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7138)  ; FMax(a,b)
  %7154 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7034)  ; FMax(a,b)
  %7155 = call float @dx.op.binary.f32(i32 35, float %7033, float %7043)  ; FMax(a,b)
  %7156 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7155)  ; FMax(a,b)
  %7157 = fdiv fast float %7033, %7156
  %7158 = call float @dx.op.unary.f32(i32 7, float %7157)  ; Saturate(value)
  %7159 = fdiv fast float %7043, %7156
  %7160 = call float @dx.op.unary.f32(i32 7, float %7159)  ; Saturate(value)
  %7161 = fcmp fast une float %7154, 1.000000e+00
  br i1 %7161, label %7162, label %7175, !dx.controlflow.hints !187

; <label>:7162                                    ; preds = %7139
  %7163 = call float @dx.op.unary.f32(i32 23, float %7154)  ; Log(value)
  %7164 = fmul fast float %7163, 0x3FE62E4300000000
  %7165 = fmul fast float %7035, %7164
  %7166 = fsub fast float -0.000000e+00, %7165
  %7167 = fmul fast float %7036, %7164
  %7168 = fsub fast float -0.000000e+00, %7167
  %7169 = fmul fast float %7037, %7164
  %7170 = fsub fast float -0.000000e+00, %7169
  %7171 = fsub fast float 1.000000e+00, %7154
  %7172 = fdiv fast float %7166, %7171
  %7173 = fdiv fast float %7168, %7171
  %7174 = fdiv fast float %7170, %7171
  br label %7175

; <label>:7175                                    ; preds = %7162, %7139
  %7176 = phi float [ %7172, %7162 ], [ %7035, %7139 ]
  %7177 = phi float [ %7173, %7162 ], [ %7036, %7139 ]
  %7178 = phi float [ %7174, %7162 ], [ %7037, %7139 ]
  %7179 = phi float [ %7164, %7162 ], [ 0.000000e+00, %7139 ]
  %7180 = fcmp fast une float %7151, 1.000000e+00
  br i1 %7180, label %7181, label %7188, !dx.controlflow.hints !188

; <label>:7181                                    ; preds = %7175
  %7182 = call float @dx.op.unary.f32(i32 23, float %7151)  ; Log(value)
  %7183 = fmul fast float %7182, 0x3FE62E4300000000
  %7184 = fmul fast float %7148, %7183
  %7185 = fsub fast float -0.000000e+00, %7184
  %7186 = fsub fast float 1.000000e+00, %7151
  %7187 = fdiv fast float %7185, %7186
  br label %7188

; <label>:7188                                    ; preds = %7181, %7175
  %7189 = phi float [ %7187, %7181 ], [ %7148, %7175 ]
  %7190 = phi float [ %7183, %7181 ], [ 0.000000e+00, %7175 ]
  %7191 = fcmp fast une float %7152, 1.000000e+00
  br i1 %7191, label %7192, label %7199, !dx.controlflow.hints !188

; <label>:7192                                    ; preds = %7188
  %7193 = call float @dx.op.unary.f32(i32 23, float %7152)  ; Log(value)
  %7194 = fmul fast float %7193, 0x3FE62E4300000000
  %7195 = fmul fast float %7149, %7194
  %7196 = fsub fast float -0.000000e+00, %7195
  %7197 = fsub fast float 1.000000e+00, %7152
  %7198 = fdiv fast float %7196, %7197
  br label %7199

; <label>:7199                                    ; preds = %7192, %7188
  %7200 = phi float [ %7198, %7192 ], [ %7149, %7188 ]
  %7201 = phi float [ %7194, %7192 ], [ 0.000000e+00, %7188 ]
  %7202 = fcmp fast une float %7153, 1.000000e+00
  br i1 %7202, label %7203, label %7210, !dx.controlflow.hints !188

; <label>:7203                                    ; preds = %7199
  %7204 = call float @dx.op.unary.f32(i32 23, float %7153)  ; Log(value)
  %7205 = fmul fast float %7204, 0x3FE62E4300000000
  %7206 = fmul fast float %7150, %7205
  %7207 = fsub fast float -0.000000e+00, %7206
  %7208 = fsub fast float 1.000000e+00, %7153
  %7209 = fdiv fast float %7207, %7208
  br label %7210

; <label>:7210                                    ; preds = %7203, %7199
  %7211 = phi float [ %7209, %7203 ], [ %7150, %7199 ]
  %7212 = phi float [ %7205, %7203 ], [ 0.000000e+00, %7199 ]
  %7213 = fmul fast float %7176, %7160
  %7214 = fmul fast float %7177, %7160
  %7215 = fmul fast float %7178, %7160
  %7216 = fmul fast float %7179, %7160
  %7217 = fmul fast float %7189, %7158
  %7218 = fmul fast float %7200, %7158
  %7219 = fmul fast float %7211, %7158
  %7220 = fmul fast float %7190, %7158
  %7221 = fmul fast float %7201, %7158
  %7222 = fmul fast float %7212, %7158
  %7223 = fadd fast float %7217, %7213
  %7224 = fadd fast float %7218, %7214
  %7225 = fadd fast float %7219, %7215
  %7226 = fadd fast float %7220, %7216
  %7227 = fadd fast float %7221, %7216
  %7228 = fadd fast float %7222, %7216
  %7229 = fcmp fast une float %7226, 0.000000e+00
  br i1 %7229, label %7230, label %7237, !dx.controlflow.hints !189

; <label>:7230                                    ; preds = %7210
  %7231 = fmul fast float %7226, 0x3FF7154760000000
  %7232 = call float @dx.op.unary.f32(i32 21, float %7231)  ; Exp(value)
  %7233 = fsub fast float 1.000000e+00, %7232
  %7234 = fmul fast float %7223, %7233
  %7235 = fsub fast float -0.000000e+00, %7234
  %7236 = fdiv fast float %7235, %7226
  br label %7237

; <label>:7237                                    ; preds = %7230, %7210
  %7238 = phi float [ %7232, %7230 ], [ 1.000000e+00, %7210 ]
  %7239 = phi float [ %7236, %7230 ], [ %7223, %7210 ]
  %7240 = fcmp fast une float %7227, 0.000000e+00
  br i1 %7240, label %7241, label %7248, !dx.controlflow.hints !189

; <label>:7241                                    ; preds = %7237
  %7242 = fmul fast float %7227, 0x3FF7154760000000
  %7243 = call float @dx.op.unary.f32(i32 21, float %7242)  ; Exp(value)
  %7244 = fsub fast float 1.000000e+00, %7243
  %7245 = fmul fast float %7224, %7244
  %7246 = fsub fast float -0.000000e+00, %7245
  %7247 = fdiv fast float %7246, %7227
  br label %7248

; <label>:7248                                    ; preds = %7241, %7237
  %7249 = phi float [ %7243, %7241 ], [ 1.000000e+00, %7237 ]
  %7250 = phi float [ %7247, %7241 ], [ %7224, %7237 ]
  %7251 = fcmp fast une float %7228, 0.000000e+00
  br i1 %7251, label %7252, label %7259, !dx.controlflow.hints !189

; <label>:7252                                    ; preds = %7248
  %7253 = fmul fast float %7228, 0x3FF7154760000000
  %7254 = call float @dx.op.unary.f32(i32 21, float %7253)  ; Exp(value)
  %7255 = fsub fast float 1.000000e+00, %7254
  %7256 = fmul fast float %7225, %7255
  %7257 = fsub fast float -0.000000e+00, %7256
  %7258 = fdiv fast float %7257, %7228
  br label %7259

; <label>:7259                                    ; preds = %7252, %7248
  %7260 = phi float [ %7254, %7252 ], [ 1.000000e+00, %7248 ]
  %7261 = phi float [ %7258, %7252 ], [ %7225, %7248 ]
  %7262 = fcmp fast ogt float %7158, %7160
  br i1 %7262, label %7263, label %7283

; <label>:7263                                    ; preds = %7259
  %7264 = fsub fast float 1.000000e+00, %7160
  %7265 = fmul fast float %7176, %7264
  %7266 = fmul fast float %7177, %7264
  %7267 = fmul fast float %7178, %7264
  %7268 = fmul fast float %7179, %7264
  %7269 = fcmp fast une float %7268, 0.000000e+00
  br i1 %7269, label %7270, label %7321, !dx.controlflow.hints !190

; <label>:7270                                    ; preds = %7263
  %7271 = fmul fast float %7268, 0x3FF7154760000000
  %7272 = call float @dx.op.unary.f32(i32 21, float %7271)  ; Exp(value)
  %7273 = fsub fast float 1.000000e+00, %7272
  %7274 = fmul fast float %7265, %7273
  %7275 = fsub fast float -0.000000e+00, %7274
  %7276 = fmul fast float %7266, %7273
  %7277 = fsub fast float -0.000000e+00, %7276
  %7278 = fmul fast float %7267, %7273
  %7279 = fsub fast float -0.000000e+00, %7278
  %7280 = fdiv fast float %7275, %7268
  %7281 = fdiv fast float %7277, %7268
  %7282 = fdiv fast float %7279, %7268
  br label %7321

; <label>:7283                                    ; preds = %7259
  %7284 = fsub fast float 1.000000e+00, %7158
  %7285 = fmul fast float %7189, %7284
  %7286 = fmul fast float %7200, %7284
  %7287 = fmul fast float %7211, %7284
  %7288 = fmul fast float %7190, %7284
  %7289 = fmul fast float %7201, %7284
  %7290 = fmul fast float %7212, %7284
  %7291 = fcmp fast une float %7288, 0.000000e+00
  br i1 %7291, label %7292, label %7299, !dx.controlflow.hints !189

; <label>:7292                                    ; preds = %7283
  %7293 = fmul fast float %7288, 0x3FF7154760000000
  %7294 = call float @dx.op.unary.f32(i32 21, float %7293)  ; Exp(value)
  %7295 = fsub fast float 1.000000e+00, %7294
  %7296 = fmul fast float %7285, %7295
  %7297 = fsub fast float -0.000000e+00, %7296
  %7298 = fdiv fast float %7297, %7288
  br label %7299

; <label>:7299                                    ; preds = %7292, %7283
  %7300 = phi float [ %7298, %7292 ], [ %7285, %7283 ]
  %7301 = phi float [ %7294, %7292 ], [ 1.000000e+00, %7283 ]
  %7302 = fcmp fast une float %7289, 0.000000e+00
  br i1 %7302, label %7303, label %7310, !dx.controlflow.hints !189

; <label>:7303                                    ; preds = %7299
  %7304 = fmul fast float %7289, 0x3FF7154760000000
  %7305 = call float @dx.op.unary.f32(i32 21, float %7304)  ; Exp(value)
  %7306 = fsub fast float 1.000000e+00, %7305
  %7307 = fmul fast float %7286, %7306
  %7308 = fsub fast float -0.000000e+00, %7307
  %7309 = fdiv fast float %7308, %7289
  br label %7310

; <label>:7310                                    ; preds = %7303, %7299
  %7311 = phi float [ %7309, %7303 ], [ %7286, %7299 ]
  %7312 = phi float [ %7305, %7303 ], [ 1.000000e+00, %7299 ]
  %7313 = fcmp fast une float %7290, 0.000000e+00
  br i1 %7313, label %7314, label %7321, !dx.controlflow.hints !189

; <label>:7314                                    ; preds = %7310
  %7315 = fmul fast float %7290, 0x3FF7154760000000
  %7316 = call float @dx.op.unary.f32(i32 21, float %7315)  ; Exp(value)
  %7317 = fsub fast float 1.000000e+00, %7316
  %7318 = fmul fast float %7287, %7317
  %7319 = fsub fast float -0.000000e+00, %7318
  %7320 = fdiv fast float %7319, %7290
  br label %7321

; <label>:7321                                    ; preds = %7314, %7310, %7270, %7263
  %7322 = phi float [ %7320, %7314 ], [ %7282, %7270 ], [ %7267, %7263 ], [ %7287, %7310 ]
  %7323 = phi float [ %7311, %7314 ], [ %7281, %7270 ], [ %7266, %7263 ], [ %7311, %7310 ]
  %7324 = phi float [ %7300, %7314 ], [ %7280, %7270 ], [ %7265, %7263 ], [ %7300, %7310 ]
  %7325 = phi float [ %7316, %7314 ], [ %7272, %7270 ], [ 1.000000e+00, %7263 ], [ 1.000000e+00, %7310 ]
  %7326 = phi float [ %7312, %7314 ], [ %7272, %7270 ], [ 1.000000e+00, %7263 ], [ %7312, %7310 ]
  %7327 = phi float [ %7301, %7314 ], [ %7272, %7270 ], [ 1.000000e+00, %7263 ], [ %7301, %7310 ]
  %7328 = fmul fast float %7327, %7239
  %7329 = fmul fast float %7326, %7250
  %7330 = fmul fast float %7325, %7261
  %7331 = fadd fast float %7328, %7324
  %7332 = fadd fast float %7329, %7323
  %7333 = fadd fast float %7330, %7322
  %7334 = fmul fast float %7327, %7238
  %7335 = fmul fast float %7326, %7249
  %7336 = fmul fast float %7325, %7260
  br label %7337

; <label>:7337                                    ; preds = %7321, %7132
  %7338 = phi float [ %7336, %7321 ], [ %7138, %7132 ]
  %7339 = phi float [ %7335, %7321 ], [ %7137, %7132 ]
  %7340 = phi float [ %7334, %7321 ], [ %7136, %7132 ]
  %7341 = phi float [ %7333, %7321 ], [ %7135, %7132 ]
  %7342 = phi float [ %7332, %7321 ], [ %7134, %7132 ]
  %7343 = phi float [ %7331, %7321 ], [ %7133, %7132 ]
  %7344 = fmul fast float %7343, %6287
  %7345 = fmul fast float %7342, %6287
  %7346 = fmul fast float %7341, %6287
  %7347 = fmul fast float %7340, %6580
  %7348 = call float @dx.op.dot3.f32(i32 55, float %7340, float %7339, float %7338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7349 = call float @dx.op.dot3.f32(i32 55, float %7344, float %7345, float %7346, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7350 = select i1 %238, float %7348, float %7340
  %7351 = select i1 %238, float %7348, float %7339
  %7352 = select i1 %238, float 1.000000e+00, float %7338
  %7353 = select i1 %238, float %7349, float %7344
  %7354 = select i1 %238, float 0.000000e+00, float %7345
  %7355 = select i1 %238, float 0.000000e+00, float %7346
  %7356 = fmul fast float %7350, %6574
  %7357 = fmul fast float %7351, %6575
  %7358 = fmul fast float %7352, %6576
  %7359 = fadd fast float %7356, %7353
  %7360 = fadd fast float %7357, %7354
  %7361 = fadd fast float %7355, %7358
  %7362 = fmul fast float %7350, %6577
  %7363 = fmul fast float %7351, %6578
  %7364 = fmul fast float %7352, %6579
  %7365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.i32 %7365, 0
  %7367 = icmp eq i32 %7366, 0
  br i1 %7367, label %7735, label %7368, !dx.controlflow.hints !191

; <label>:7368                                    ; preds = %7337
  %7369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.f32 %7369, 2
  %7371 = extractvalue %dx.types.CBufRet.f32 %7369, 3
  %7372 = fmul fast float %7370, %100
  %7373 = fmul fast float %7371, %101
  %7374 = fmul fast float %7372, 2.000000e+00
  %7375 = fmul fast float %7373, 2.000000e+00
  %7376 = fsub fast float 1.000000e+00, %7374
  %7377 = fsub fast float 1.000000e+00, %7375
  %7378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7379 = extractvalue %dx.types.CBufRet.f32 %7378, 0
  %7380 = extractvalue %dx.types.CBufRet.f32 %7378, 1
  %7381 = extractvalue %dx.types.CBufRet.f32 %7378, 2
  %7382 = fmul fast float %7376, %7379
  %7383 = fmul fast float %7376, %7380
  %7384 = fmul fast float %7376, %7381
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 0
  %7387 = extractvalue %dx.types.CBufRet.f32 %7385, 1
  %7388 = extractvalue %dx.types.CBufRet.f32 %7385, 2
  %7389 = fmul fast float %7377, %7386
  %7390 = fmul fast float %7377, %7387
  %7391 = fmul fast float %7377, %7388
  %7392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7393 = extractvalue %dx.types.CBufRet.f32 %7392, 0
  %7394 = extractvalue %dx.types.CBufRet.f32 %7392, 1
  %7395 = extractvalue %dx.types.CBufRet.f32 %7392, 2
  %7396 = fadd fast float %7389, %7393
  %7397 = fadd fast float %7396, %7382
  %7398 = fadd fast float %7390, %7394
  %7399 = fadd fast float %7398, %7383
  %7400 = fadd fast float %7391, %7395
  %7401 = fadd fast float %7400, %7384
  %7402 = fmul fast float %7397, %6573
  %7403 = fmul fast float %7399, %6573
  %7404 = fmul fast float %7401, %6573
  %7405 = fmul fast float %7402, %7402
  %7406 = fmul fast float %7403, %7403
  %7407 = fadd fast float %7405, %7406
  %7408 = fmul fast float %7404, %7404
  %7409 = fadd fast float %7407, %7408
  %7410 = call float @dx.op.unary.f32(i32 24, float %7409)  ; Sqrt(value)
  %7411 = extractvalue %dx.types.CBufRet.f32 %6298, 0
  %7412 = fsub fast float %7410, %7411
  %7413 = extractvalue %dx.types.CBufRet.f32 %6298, 2
  %7414 = fmul fast float %7412, %7413
  %7415 = call float @dx.op.unary.f32(i32 7, float %7414)  ; Saturate(value)
  %7416 = fadd fast float %7415, -5.000000e-01
  %7417 = fmul fast float %7416, 2.000000e+00
  %7418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7419 = extractvalue %dx.types.CBufRet.f32 %7418, 2
  %7420 = call float @dx.op.binary.f32(i32 36, float %7419, float %7417)  ; FMin(a,b)
  %7421 = fsub fast float -0.000000e+00, %7419
  %7422 = fcmp fast ogt float %7420, %7421
  br i1 %7422, label %7423, label %7735, !dx.controlflow.hints !192

; <label>:7423                                    ; preds = %7368
  %7424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7425 = extractvalue %dx.types.CBufRet.f32 %7424, 3
  %7426 = fcmp fast ogt float %7425, 0.000000e+00
  br i1 %7426, label %7427, label %7502, !dx.controlflow.hints !193

; <label>:7427                                    ; preds = %7423
  %7428 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7429 = extractvalue %dx.types.Dimensions %7428, 0
  %7430 = sitofp i32 %7429 to float
  %7431 = extractvalue %dx.types.Dimensions %7428, 1
  %7432 = sitofp i32 %7431 to float
  %7433 = fmul fast float %7372, %7430
  %7434 = fmul fast float %7373, %7432
  %7435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7436 = extractvalue %dx.types.CBufRet.f32 %7435, 1
  %7437 = fsub fast float -0.000000e+00, %7436
  %7438 = fptoui float %7437 to i32
  %7439 = fptoui float %7433 to i32
  %7440 = fptoui float %7434 to i32
  %7441 = and i32 %7438, 31
  %7442 = lshr i32 %7439, %7441
  %7443 = lshr i32 %7440, %7441
  %7444 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7438, i32 %7442, i32 %7443, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7445 = extractvalue %dx.types.ResRet.f32 %7444, 0
  %7446 = fcmp fast olt float %7445, -1.000000e+00
  %7447 = fcmp fast ogt float %7445, -1.000000e+00
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 1
  %7450 = select i1 %7447, float %7449, float 1.000000e+00
  %7451 = fadd fast float %7445, 1.000000e+00
  %7452 = fmul fast float %7450, %7451
  %7453 = call float @dx.op.unary.f32(i32 6, float %7452)  ; FAbs(value)
  %7454 = extractvalue %dx.types.CBufRet.f32 %7448, 3
  %7455 = fcmp fast oge float %7453, %7454
  %7456 = select i1 %7455, float 0x4197782600000000, float %7453
  %7457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7458 = extractvalue %dx.types.CBufRet.f32 %7457, 0
  %7459 = extractvalue %dx.types.CBufRet.f32 %7457, 1
  %7460 = extractvalue %dx.types.CBufRet.f32 %7457, 2
  %7461 = select i1 %7446, float %7458, float %7379
  %7462 = select i1 %7446, float %7459, float %7380
  %7463 = select i1 %7446, float %7460, float %7381
  %7464 = fmul fast float %7461, %7376
  %7465 = fmul fast float %7462, %7376
  %7466 = fmul fast float %7463, %7376
  %7467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7468 = extractvalue %dx.types.CBufRet.f32 %7467, 0
  %7469 = extractvalue %dx.types.CBufRet.f32 %7467, 1
  %7470 = extractvalue %dx.types.CBufRet.f32 %7467, 2
  %7471 = select i1 %7446, float %7468, float %7386
  %7472 = select i1 %7446, float %7469, float %7387
  %7473 = select i1 %7446, float %7470, float %7388
  %7474 = fmul fast float %7471, %7377
  %7475 = fmul fast float %7472, %7377
  %7476 = fmul fast float %7473, %7377
  %7477 = fadd fast float %7474, %7464
  %7478 = fadd fast float %7475, %7465
  %7479 = fadd fast float %7476, %7466
  %7480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7481 = extractvalue %dx.types.CBufRet.f32 %7480, 0
  %7482 = extractvalue %dx.types.CBufRet.f32 %7480, 1
  %7483 = extractvalue %dx.types.CBufRet.f32 %7480, 2
  %7484 = select i1 %7446, float %7481, float %7393
  %7485 = select i1 %7446, float %7482, float %7394
  %7486 = select i1 %7446, float %7483, float %7395
  %7487 = fadd fast float %7477, %7484
  %7488 = fadd fast float %7478, %7485
  %7489 = fadd fast float %7479, %7486
  %7490 = fmul fast float %7487, %7456
  %7491 = fmul fast float %7488, %7456
  %7492 = fmul fast float %7489, %7456
  %7493 = fmul fast float %7490, %7490
  %7494 = fmul fast float %7491, %7491
  %7495 = fadd fast float %7493, %7494
  %7496 = fmul fast float %7492, %7492
  %7497 = fadd fast float %7495, %7496
  %7498 = call float @dx.op.unary.f32(i32 24, float %7497)  ; Sqrt(value)
  %7499 = fsub fast float %7498, %7411
  %7500 = fmul fast float %7499, %7413
  %7501 = call float @dx.op.unary.f32(i32 7, float %7500)  ; Saturate(value)
  br label %7502

; <label>:7502                                    ; preds = %7427, %7423
  %7503 = phi float [ %7501, %7427 ], [ 1.000000e+00, %7423 ]
  %7504 = fmul fast float %7420, 5.000000e-01
  %7505 = fadd fast float %7504, 5.000000e-01
  %7506 = call float @dx.op.unary.f32(i32 22, float %7505)  ; Frc(value)
  %7507 = call float @dx.op.unary.f32(i32 27, float %7506)  ; Round_ni(value)
  %7508 = call float @dx.op.unary.f32(i32 22, float %7506)  ; Frc(value)
  %7509 = fmul fast float %7508, 2.000000e+00
  %7510 = fadd fast float %7509, -1.000000e+00
  %7511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7372, float %7373, float %7507, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7512 = extractvalue %dx.types.ResRet.f32 %7511, 0
  %7513 = extractvalue %dx.types.ResRet.f32 %7511, 1
  %7514 = extractvalue %dx.types.ResRet.f32 %7511, 2
  %7515 = extractvalue %dx.types.ResRet.f32 %7511, 3
  %7516 = fadd fast float %7512, -5.000000e-01
  %7517 = fadd fast float %7514, -5.000000e-01
  %7518 = fmul fast float %7516, 0xBFD5555560000000
  %7519 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7517, float %7518)  ; FMad(a,b,c)
  %7520 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7513, float 0.000000e+00)  ; FMad(a,b,c)
  %7521 = fadd fast float %7520, %7515
  %7522 = fmul fast float %7516, -7.500000e-01
  %7523 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7517, float %7522)  ; FMad(a,b,c)
  %7524 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7513, float 0.000000e+00)  ; FMad(a,b,c)
  %7525 = fadd fast float %7524, %7515
  %7526 = call float @dx.op.binary.f32(i32 35, float %7519, float -1.000000e+00)  ; FMax(a,b)
  %7527 = call float @dx.op.binary.f32(i32 35, float %7521, float -1.000000e+00)  ; FMax(a,b)
  %7528 = call float @dx.op.binary.f32(i32 35, float %7523, float -1.000000e+00)  ; FMax(a,b)
  %7529 = call float @dx.op.binary.f32(i32 35, float %7525, float -1.000000e+00)  ; FMax(a,b)
  %7530 = call float @dx.op.binary.f32(i32 36, float %7526, float 1.000000e+00)  ; FMin(a,b)
  %7531 = call float @dx.op.binary.f32(i32 36, float %7527, float 1.000000e+00)  ; FMin(a,b)
  %7532 = call float @dx.op.binary.f32(i32 36, float %7528, float 1.000000e+00)  ; FMin(a,b)
  %7533 = call float @dx.op.binary.f32(i32 36, float %7529, float 1.000000e+00)  ; FMin(a,b)
  %7534 = fcmp fast olt float %7530, 0x3FEFFF8020000000
  br i1 %7534, label %7535, label %7650, !dx.controlflow.hints !194

; <label>:7535                                    ; preds = %7502
  %7536 = extractvalue %dx.types.CBufRet.f32 %7418, 3
  %7537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7538 = extractvalue %dx.types.CBufRet.f32 %7537, 0
  %7539 = extractvalue %dx.types.CBufRet.f32 %7537, 1
  %7540 = extractvalue %dx.types.CBufRet.f32 %7537, 2
  %7541 = extractvalue %dx.types.CBufRet.f32 %7537, 3
  %7542 = fsub fast float %7538, %7530
  %7543 = fsub fast float %7539, %7531
  %7544 = fsub fast float %7540, %7532
  %7545 = fsub fast float %7541, %7533
  %7546 = fmul fast float %7542, %7536
  %7547 = fmul fast float %7543, %7536
  %7548 = fmul fast float %7544, %7536
  %7549 = fmul fast float %7545, %7536
  %7550 = fadd fast float %7546, %7530
  %7551 = fadd fast float %7547, %7531
  %7552 = fsub fast float -0.000000e+00, %7551
  %7553 = fadd fast float %7548, %7532
  %7554 = fadd fast float %7549, %7533
  %7555 = fmul fast float %7550, %7550
  %7556 = fsub fast float %7551, %7555
  %7557 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7556)  ; FMax(a,b)
  %7558 = fdiv fast float 1.000000e+00, %7557
  %7559 = fmul fast float %7551, %7550
  %7560 = fsub fast float %7553, %7559
  %7561 = fsub fast float %7510, %7550
  %7562 = fmul fast float %7510, %7510
  %7563 = fsub fast float %7562, %7551
  %7564 = fmul fast float %7561, %7558
  %7565 = fmul fast float %7564, %7560
  %7566 = fsub fast float %7563, %7565
  %7567 = fmul fast float %7551, %7551
  %7568 = fsub fast float %7554, %7567
  %7569 = fmul fast float %7560, %7560
  %7570 = fmul fast float %7569, %7558
  %7571 = fsub fast float %7568, %7570
  %7572 = fdiv fast float %7566, %7571
  %7573 = fmul fast float %7560, %7572
  %7574 = fsub fast float %7561, %7573
  %7575 = fmul fast float %7574, %7558
  %7576 = fmul fast float %7575, %7550
  %7577 = fsub fast float 1.000000e+00, %7576
  %7578 = fmul fast float %7551, %7572
  %7579 = fsub fast float %7577, %7578
  %7580 = fmul fast float %7575, %7575
  %7581 = fmul fast float %7572, 4.000000e+00
  %7582 = fmul fast float %7581, %7579
  %7583 = fsub fast float %7580, %7582
  %7584 = call float @dx.op.unary.f32(i32 24, float %7583)  ; Sqrt(value)
  %7585 = fcmp fast oge float %7575, 0.000000e+00
  %7586 = fsub fast float -0.000000e+00, %7584
  %7587 = select i1 %7585, float %7586, float %7584
  %7588 = fsub fast float %7587, %7575
  %7589 = fdiv fast float %7588, %7572
  %7590 = fdiv fast float %7579, %7588
  %7591 = fmul fast float %7589, 5.000000e-01
  %7592 = fmul fast float %7590, 2.000000e+00
  %7593 = select i1 %7585, float %7591, float %7592
  %7594 = select i1 %7585, float %7592, float %7591
  %7595 = call float @dx.op.binary.f32(i32 35, float %7593, float %7594)  ; FMax(a,b)
  %7596 = call float @dx.op.binary.f32(i32 36, float %7593, float %7594)  ; FMin(a,b)
  %7597 = fcmp fast ogt float %7510, %7596
  br i1 %7597, label %7598, label %7608

; <label>:7598                                    ; preds = %7535
  %7599 = fsub fast float %7510, %7596
  %7600 = fsub fast float %7595, %7596
  %7601 = fmul fast float %7599, %7600
  %7602 = fmul fast float %7595, %7510
  %7603 = fadd fast float %7595, %7510
  %7604 = fmul fast float %7603, %7550
  %7605 = fadd fast float %7602, %7551
  %7606 = fsub fast float %7605, %7604
  %7607 = fdiv fast float %7606, %7601
  br label %7608

; <label>:7608                                    ; preds = %7598, %7535
  %7609 = phi float [ %7607, %7598 ], [ 0.000000e+00, %7535 ]
  %7610 = fcmp fast ogt float %7510, %7595
  %7611 = fsub fast float %7510, %7595
  br i1 %7610, label %7612, label %7622

; <label>:7612                                    ; preds = %7608
  %7613 = fsub fast float %7595, %7596
  %7614 = fmul fast float %7613, %7611
  %7615 = fmul fast float %7596, %7510
  %7616 = fadd fast float %7596, %7510
  %7617 = fmul fast float %7616, %7550
  %7618 = fsub fast float %7552, %7615
  %7619 = fadd fast float %7618, %7617
  %7620 = fdiv fast float %7619, %7614
  %7621 = fadd fast float %7620, %7609
  br label %7622

; <label>:7622                                    ; preds = %7612, %7608
  %7623 = phi float [ %7621, %7612 ], [ %7609, %7608 ]
  %7624 = fsub fast float %7510, %7596
  %7625 = fmul fast float %7624, %7611
  %7626 = fmul fast float %7596, %7595
  %7627 = fadd fast float %7596, %7595
  %7628 = fmul fast float %7627, %7550
  %7629 = fadd fast float %7626, %7551
  %7630 = fsub fast float %7629, %7628
  %7631 = fdiv fast float %7630, %7625
  %7632 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  %7633 = fcmp fast oeq float %6299, 0.000000e+00
  %7634 = extractvalue %dx.types.CBufRet.f32 %7418, 0
  %7635 = fcmp fast oeq float %7634, 0.000000e+00
  %7636 = or i1 %7633, %7635
  %7637 = fmul fast float %7634, 2.000000e+00
  %7638 = fadd fast float %7419, %7420
  %7639 = fdiv fast float %7638, %7637
  %7640 = call float @dx.op.unary.f32(i32 7, float %7639)  ; Saturate(value)
  %7641 = fmul fast float %7640, 2.000000e+00
  %7642 = fsub fast float 3.000000e+00, %7641
  %7643 = fmul fast float %7640, %7640
  %7644 = fmul fast float %7643, %7642
  %7645 = select i1 %7636, float 1.000000e+00, float %7644
  %7646 = fmul fast float %7631, %6299
  %7647 = fadd fast float %7632, %7646
  %7648 = call float @dx.op.unary.f32(i32 7, float %7647)  ; Saturate(value)
  %7649 = fmul fast float %7645, %7648
  br label %7650

; <label>:7650                                    ; preds = %7622, %7502
  %7651 = phi float [ %7649, %7622 ], [ 0.000000e+00, %7502 ]
  %7652 = fsub fast float 1.000000e+00, %7651
  %7653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7372, float %7373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7654 = extractvalue %dx.types.ResRet.f32 %7653, 0
  %7655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7656 = extractvalue %dx.types.CBufRet.i32 %7655, 2
  %7657 = icmp eq i32 %7656, 0
  br i1 %7657, label %7663, label %7658

; <label>:7658                                    ; preds = %7650
  %7659 = call float @dx.op.unary.f32(i32 7, float %7651)  ; Saturate(value)
  %7660 = fadd fast float %7654, -1.000000e+00
  %7661 = fmul fast float %7659, %7660
  %7662 = fadd fast float %7661, 1.000000e+00
  br label %7663

; <label>:7663                                    ; preds = %7658, %7650
  %7664 = phi float [ %7662, %7658 ], [ %7652, %7650 ]
  br i1 %7426, label %7665, label %7683

; <label>:7665                                    ; preds = %7663
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 1
  %7668 = fsub fast float %7503, %7667
  %7669 = call float @dx.op.unary.f32(i32 7, float %7668)  ; Saturate(value)
  %7670 = fsub fast float %7503, %7425
  %7671 = call float @dx.op.unary.f32(i32 7, float %7670)  ; Saturate(value)
  %7672 = fsub fast float %7669, %7671
  %7673 = fsub fast float %7505, %7671
  %7674 = fdiv fast float %7673, %7672
  %7675 = call float @dx.op.unary.f32(i32 7, float %7674)  ; Saturate(value)
  %7676 = fmul fast float %7675, 2.000000e+00
  %7677 = fsub fast float 3.000000e+00, %7676
  %7678 = fsub fast float %7654, %7664
  %7679 = fmul fast float %7675, %7675
  %7680 = fmul fast float %7679, %7678
  %7681 = fmul fast float %7680, %7677
  %7682 = fadd fast float %7681, %7664
  br label %7683

; <label>:7683                                    ; preds = %7665, %7663
  %7684 = phi float [ %7682, %7665 ], [ %7664, %7663 ]
  %7685 = call float @dx.op.binary.f32(i32 35, float %7654, float %7684)  ; FMax(a,b)
  %7686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7687 = extractvalue %dx.types.CBufRet.i32 %7686, 2
  %7688 = and i32 %7687, 1
  %7689 = icmp eq i32 %7688, 0
  %7690 = fcmp fast une float %7685, 1.000000e+00
  %7691 = and i1 %7690, %7689
  br i1 %7691, label %7692, label %7711

; <label>:7692                                    ; preds = %7683
  %7693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7372, float %7373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7694 = extractvalue %dx.types.ResRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.ResRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.ResRet.f32 %7693, 2
  %7697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7698 = extractvalue %dx.types.CBufRet.f32 %7697, 1
  %7699 = fmul fast float %7698, %7694
  %7700 = fmul fast float %7698, %7695
  %7701 = fmul fast float %7698, %7696
  %7702 = fcmp fast ogt float %7654, 0x3FEFFF2E40000000
  %7703 = fsub fast float 1.000000e+00, %7685
  %7704 = fsub fast float 1.000000e+00, %7654
  %7705 = fdiv fast float %7703, %7704
  %7706 = call float @dx.op.unary.f32(i32 7, float %7705)  ; Saturate(value)
  %7707 = select i1 %7702, float 0.000000e+00, float %7706
  %7708 = fmul fast float %7699, %7707
  %7709 = fmul fast float %7700, %7707
  %7710 = fmul fast float %7701, %7707
  br label %7711

; <label>:7711                                    ; preds = %7692, %7683
  %7712 = phi float [ 0.000000e+00, %7683 ], [ %7708, %7692 ]
  %7713 = phi float [ 0.000000e+00, %7683 ], [ %7709, %7692 ]
  %7714 = phi float [ 0.000000e+00, %7683 ], [ %7710, %7692 ]
  %7715 = fmul fast float %7712, %6287
  %7716 = fmul fast float %7713, %6287
  %7717 = fmul fast float %7714, %6287
  %7718 = fmul fast float %7685, %7347
  %7719 = call float @dx.op.dot3.f32(i32 55, float %7685, float %7685, float %7685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7720 = call float @dx.op.dot3.f32(i32 55, float %7715, float %7716, float %7717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7721 = select i1 %238, float %7719, float %7685
  %7722 = select i1 %238, float 1.000000e+00, float %7685
  %7723 = select i1 %238, float %7720, float %7715
  %7724 = select i1 %238, float 0.000000e+00, float %7716
  %7725 = select i1 %238, float 0.000000e+00, float %7717
  %7726 = fmul fast float %7721, %7359
  %7727 = fmul fast float %7721, %7360
  %7728 = fmul fast float %7722, %7361
  %7729 = fadd fast float %7726, %7723
  %7730 = fadd fast float %7727, %7724
  %7731 = fadd fast float %7725, %7728
  %7732 = fmul fast float %7721, %7362
  %7733 = fmul fast float %7721, %7363
  %7734 = fmul fast float %7722, %7364
  br label %7735

; <label>:7735                                    ; preds = %7711, %7368, %7337, %6569
  %7736 = phi float [ %6574, %6569 ], [ %7359, %7337 ], [ %7729, %7711 ], [ %7359, %7368 ]
  %7737 = phi float [ %6575, %6569 ], [ %7360, %7337 ], [ %7730, %7711 ], [ %7360, %7368 ]
  %7738 = phi float [ %6576, %6569 ], [ %7361, %7337 ], [ %7731, %7711 ], [ %7361, %7368 ]
  %7739 = phi float [ %6577, %6569 ], [ %7362, %7337 ], [ %7732, %7711 ], [ %7362, %7368 ]
  %7740 = phi float [ %6578, %6569 ], [ %7363, %7337 ], [ %7733, %7711 ], [ %7363, %7368 ]
  %7741 = phi float [ %6579, %6569 ], [ %7364, %7337 ], [ %7734, %7711 ], [ %7364, %7368 ]
  %7742 = phi float [ %6580, %6569 ], [ %7347, %7337 ], [ %7718, %7711 ], [ %7347, %7368 ]
  %7743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7744 = extractvalue %dx.types.CBufRet.f32 %7743, 2
  %7745 = extractvalue %dx.types.CBufRet.f32 %7743, 3
  %7746 = fmul fast float %7744, %100
  %7747 = fmul fast float %7745, %101
  %7748 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7749 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  %7750 = select i1 %6309, i32 2, i32 0
  %7751 = or i32 %7750, 1
  %7752 = uitofp i32 %7751 to float
  %7753 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7748, float %7749, float %7752, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7754 = extractvalue %dx.types.ResRet.f32 %7753, 0
  %7755 = extractvalue %dx.types.ResRet.f32 %7753, 1
  %7756 = extractvalue %dx.types.ResRet.f32 %7753, 2
  %7757 = extractvalue %dx.types.ResRet.f32 %7753, 3
  %7758 = add nuw nsw i32 %7750, 2
  %7759 = uitofp i32 %7758 to float
  %7760 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7748, float %7749, float %7759, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7761 = extractvalue %dx.types.ResRet.f32 %7760, 0
  %7762 = extractvalue %dx.types.ResRet.f32 %7760, 1
  %7763 = extractvalue %dx.types.ResRet.f32 %7760, 2
  %7764 = extractvalue %dx.types.ResRet.f32 %7760, 3
  %7765 = call float @dx.op.binary.f32(i32 35, float %7755, float %7756)  ; FMax(a,b)
  %7766 = call float @dx.op.binary.f32(i32 35, float %7754, float %7765)  ; FMax(a,b)
  %7767 = call float @dx.op.binary.f32(i32 35, float %7766, float %7757)  ; FMax(a,b)
  %7768 = call float @dx.op.binary.f32(i32 36, float %7762, float %7763)  ; FMin(a,b)
  %7769 = call float @dx.op.binary.f32(i32 36, float %7761, float %7768)  ; FMin(a,b)
  %7770 = call float @dx.op.binary.f32(i32 36, float %7769, float %7764)  ; FMin(a,b)
  %7771 = fmul fast float %7767, 2.550000e+02
  %7772 = fadd fast float %7771, 0x3F70101020000000
  %7773 = fptoui float %7772 to i32
  %7774 = fmul fast float %7770, 2.550000e+02
  %7775 = fadd fast float %7774, 0x3F70101020000000
  %7776 = fptoui float %7775 to i32
  %7777 = icmp ult i32 %7773, %7776
  br i1 %7777, label %7778, label %7947

; <label>:7778                                    ; preds = %7735
  %7779 = fcmp fast ogt float %87, 9.843750e-01
  %7780 = fadd fast float %6573, -4.000000e+00
  %7781 = select i1 %7779, float -4.000000e+00, float %7780
  %7782 = call float @dx.op.binary.f32(i32 35, float %7781, float 0.000000e+00)  ; FMax(a,b)
  %7783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7784 = extractvalue %dx.types.CBufRet.f32 %7783, 0
  %7785 = fadd fast float %7784, %7782
  %7786 = extractvalue %dx.types.CBufRet.f32 %7783, 2
  %7787 = fmul fast float %7785, %7786
  %7788 = call float @dx.op.unary.f32(i32 23, float %7787)  ; Log(value)
  %7789 = extractvalue %dx.types.CBufRet.f32 %7783, 3
  %7790 = fmul fast float %7789, %7788
  %7791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.f32 %7791, 2
  %7793 = fmul fast float %7790, %7792
  %7794 = call float @dx.op.unary.f32(i32 7, float %7793)  ; Saturate(value)
  %7795 = uitofp i32 %7773 to float
  %7796 = uitofp i32 %7776 to float
  %7797 = fadd fast float %7795, 5.000000e-01
  %7798 = fadd fast float %7796, 5.000000e-01
  %7799 = fmul fast float %7792, %7797
  %7800 = fmul fast float %7792, %7798
  %7801 = fadd fast float %7799, 0x3F0FFB4800000000
  %7802 = fadd fast float %7800, 0xBF0FFB4800000000
  %7803 = call float @dx.op.binary.f32(i32 35, float %7794, float %7801)  ; FMax(a,b)
  %7804 = call float @dx.op.binary.f32(i32 36, float %7803, float %7802)  ; FMin(a,b)
  %7805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7806 = extractvalue %dx.types.CBufRet.f32 %7805, 1
  %7807 = extractvalue %dx.types.CBufRet.f32 %7805, 2
  %7808 = extractvalue %dx.types.CBufRet.f32 %7805, 0
  %7809 = select i1 %6309, float %7808, float 0.000000e+00
  %7810 = fmul fast float %7806, %7804
  %7811 = fadd fast float %7809, %7810
  %7812 = fadd fast float %7809, %7807
  %7813 = fsub fast float %7806, %7807
  %7814 = fadd fast float %7813, %7809
  %7815 = call float @dx.op.binary.f32(i32 35, float %7811, float %7812)  ; FMax(a,b)
  %7816 = call float @dx.op.binary.f32(i32 36, float %7815, float %7814)  ; FMin(a,b)
  %7817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7748, float %7749, float %7816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7818 = extractvalue %dx.types.ResRet.f32 %7817, 0
  %7819 = extractvalue %dx.types.ResRet.f32 %7817, 1
  %7820 = extractvalue %dx.types.ResRet.f32 %7817, 2
  %7821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.i32 %7821, 0
  %7823 = extractvalue %dx.types.CBufRet.i32 %7821, 1
  %7824 = uitofp i32 %7822 to float
  %7825 = uitofp i32 %7823 to float
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 0
  %7828 = extractvalue %dx.types.CBufRet.f32 %7826, 1
  %7829 = fmul fast float %7824, %7748
  %7830 = fmul fast float %7825, %7749
  %7831 = fadd fast float %7829, -5.000000e-01
  %7832 = fadd fast float %7830, -5.000000e-01
  %7833 = call float @dx.op.unary.f32(i32 22, float %7831)  ; Frc(value)
  %7834 = call float @dx.op.unary.f32(i32 22, float %7832)  ; Frc(value)
  %7835 = fmul fast float %7833, %7833
  %7836 = fmul fast float %7835, %7833
  %7837 = fsub fast float 3.000000e+00, %7833
  %7838 = fmul fast float %7835, %7837
  %7839 = fmul fast float %7833, 3.000000e+00
  %7840 = fmul fast float %7836, 3.000000e+00
  %7841 = fmul fast float %7835, 6.000000e+00
  %7842 = fsub fast float %7840, %7841
  %7843 = fadd fast float %7842, 4.000000e+00
  %7844 = fmul fast float %7843, 0x3FC5555560000000
  %7845 = fmul fast float %7836, -3.000000e+00
  %7846 = fadd fast float %7835, %7833
  %7847 = fmul fast float %7846, 3.000000e+00
  %7848 = fadd fast float %7845, 1.000000e+00
  %7849 = fadd fast float %7848, %7847
  %7850 = fmul fast float %7836, 0x3FC5555560000000
  %7851 = fmul fast float %7834, %7834
  %7852 = fmul fast float %7851, %7834
  %7853 = fsub fast float 3.000000e+00, %7834
  %7854 = fmul fast float %7851, %7853
  %7855 = fmul fast float %7834, 3.000000e+00
  %7856 = fmul fast float %7852, 3.000000e+00
  %7857 = fmul fast float %7851, 6.000000e+00
  %7858 = fsub fast float %7856, %7857
  %7859 = fadd fast float %7858, 4.000000e+00
  %7860 = fmul fast float %7859, 0x3FC5555560000000
  %7861 = fmul fast float %7852, -3.000000e+00
  %7862 = fadd fast float %7851, %7834
  %7863 = fmul fast float %7862, 3.000000e+00
  %7864 = fadd fast float %7861, 1.000000e+00
  %7865 = fadd fast float %7864, %7863
  %7866 = fmul fast float %7852, 0x3FC5555560000000
  %7867 = fadd fast float %7833, 1.000000e+00
  %7868 = fsub fast float 1.000000e+00, %7839
  %7869 = fadd fast float %7868, %7838
  %7870 = fadd fast float %7869, %7843
  %7871 = fmul fast float %7870, 0x3FC5555560000000
  %7872 = fdiv fast float %7844, %7871
  %7873 = fsub fast float %7867, %7872
  %7874 = fsub fast float 1.000000e+00, %7833
  %7875 = fadd fast float %7849, %7836
  %7876 = fmul fast float %7875, 0x3FC5555560000000
  %7877 = fdiv fast float %7850, %7876
  %7878 = fadd fast float %7874, %7877
  %7879 = fadd fast float %7834, 1.000000e+00
  %7880 = fsub fast float 1.000000e+00, %7855
  %7881 = fadd fast float %7880, %7854
  %7882 = fadd fast float %7881, %7859
  %7883 = fmul fast float %7882, 0x3FC5555560000000
  %7884 = fdiv fast float %7860, %7883
  %7885 = fsub fast float %7879, %7884
  %7886 = fsub fast float 1.000000e+00, %7834
  %7887 = fadd fast float %7865, %7852
  %7888 = fmul fast float %7887, 0x3FC5555560000000
  %7889 = fdiv fast float %7866, %7888
  %7890 = fadd fast float %7889, %7886
  %7891 = fmul fast float %7873, %7827
  %7892 = fsub fast float %7748, %7891
  %7893 = fmul fast float %7878, %7827
  %7894 = fadd fast float %7893, %7748
  %7895 = fmul fast float %7890, %7828
  %7896 = fadd fast float %7895, %7749
  %7897 = fmul fast float %7885, %7828
  %7898 = fsub fast float %7749, %7897
  %7899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7892, float %7898, float %7816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7900 = extractvalue %dx.types.ResRet.f32 %7899, 0
  %7901 = extractvalue %dx.types.ResRet.f32 %7899, 1
  %7902 = extractvalue %dx.types.ResRet.f32 %7899, 2
  %7903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7894, float %7898, float %7816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7904 = extractvalue %dx.types.ResRet.f32 %7903, 0
  %7905 = extractvalue %dx.types.ResRet.f32 %7903, 1
  %7906 = extractvalue %dx.types.ResRet.f32 %7903, 2
  %7907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7892, float %7896, float %7816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7908 = extractvalue %dx.types.ResRet.f32 %7907, 0
  %7909 = extractvalue %dx.types.ResRet.f32 %7907, 1
  %7910 = extractvalue %dx.types.ResRet.f32 %7907, 2
  %7911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7894, float %7896, float %7816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7912 = extractvalue %dx.types.ResRet.f32 %7911, 0
  %7913 = extractvalue %dx.types.ResRet.f32 %7911, 1
  %7914 = extractvalue %dx.types.ResRet.f32 %7911, 2
  %7915 = fsub fast float %7908, %7900
  %7916 = fsub fast float %7909, %7901
  %7917 = fsub fast float %7910, %7902
  %7918 = fmul fast float %7915, %7888
  %7919 = fmul fast float %7916, %7888
  %7920 = fmul fast float %7917, %7888
  %7921 = fadd fast float %7918, %7900
  %7922 = fadd fast float %7919, %7901
  %7923 = fadd fast float %7920, %7902
  %7924 = fsub fast float %7912, %7904
  %7925 = fsub fast float %7913, %7905
  %7926 = fsub fast float %7914, %7906
  %7927 = fmul fast float %7924, %7888
  %7928 = fmul fast float %7925, %7888
  %7929 = fmul fast float %7926, %7888
  %7930 = fsub fast float %7904, %7921
  %7931 = fadd fast float %7930, %7927
  %7932 = fsub fast float %7905, %7922
  %7933 = fadd fast float %7932, %7928
  %7934 = fsub fast float %7906, %7923
  %7935 = fadd fast float %7934, %7929
  %7936 = fmul fast float %7931, %7876
  %7937 = fmul fast float %7933, %7876
  %7938 = fmul fast float %7935, %7876
  %7939 = fadd fast float %7936, %7921
  %7940 = fadd fast float %7937, %7922
  %7941 = fadd fast float %7938, %7923
  %7942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7943 = extractvalue %dx.types.CBufRet.f32 %7942, 1
  %7944 = fmul fast float %7939, %7943
  %7945 = fmul fast float %7940, %7943
  %7946 = fmul fast float %7941, %7943
  br label %7947

; <label>:7947                                    ; preds = %7778, %7735
  %7948 = phi float [ %7818, %7778 ], [ 1.000000e+00, %7735 ]
  %7949 = phi float [ %7819, %7778 ], [ 1.000000e+00, %7735 ]
  %7950 = phi float [ %7820, %7778 ], [ 1.000000e+00, %7735 ]
  %7951 = phi float [ %7944, %7778 ], [ 0.000000e+00, %7735 ]
  %7952 = phi float [ %7945, %7778 ], [ 0.000000e+00, %7735 ]
  %7953 = phi float [ %7946, %7778 ], [ 0.000000e+00, %7735 ]
  %7954 = fmul fast float %7951, %6287
  %7955 = fmul fast float %7952, %6287
  %7956 = fmul fast float %7953, %6287
  %7957 = fmul fast float %7948, %7742
  %7958 = call float @dx.op.dot3.f32(i32 55, float %7948, float %7949, float %7950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7959 = call float @dx.op.dot3.f32(i32 55, float %7954, float %7955, float %7956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7960 = select i1 %238, float %7958, float %7948
  %7961 = select i1 %238, float %7958, float %7949
  %7962 = select i1 %238, float 1.000000e+00, float %7950
  %7963 = select i1 %238, float %7959, float %7954
  %7964 = select i1 %238, float 0.000000e+00, float %7955
  %7965 = select i1 %238, float 0.000000e+00, float %7956
  %7966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7967 = extractvalue %dx.types.CBufRet.i32 %7966, 3
  %7968 = and i32 %7967, 3
  %7969 = icmp ne i32 %7968, 0
  %7970 = and i32 %7967, 4
  %7971 = icmp ne i32 %7970, 0
  %7972 = and i1 %7969, %7971
  %7973 = and i1 %238, %7972
  br i1 %7973, label %7974, label %7980

; <label>:7974                                    ; preds = %7947
  %7975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7976 = extractvalue %dx.types.CBufRet.f32 %7975, 1
  %7977 = fadd fast float %7957, -1.000000e+00
  %7978 = fmul fast float %7976, %7977
  %7979 = fadd fast float %7978, 1.000000e+00
  br label %7980

; <label>:7980                                    ; preds = %7974, %7947
  %7981 = phi float [ %7979, %7974 ], [ %7957, %7947 ]
  %7982 = fadd fast float %7739, %7736
  %7983 = fmul fast float %7960, %7982
  %7984 = fadd fast float %7983, %7963
  %7985 = fadd fast float %7740, %7737
  %7986 = fmul fast float %7961, %7985
  %7987 = fadd fast float %7986, %7964
  %7988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7989 = extractvalue %dx.types.CBufRet.f32 %7988, 0
  br i1 %238, label %7990, label %8013

; <label>:7990                                    ; preds = %7980
  %7991 = fadd fast float %7984, %7987
  %7992 = fmul fast float %7989, %7991
  %7993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7994 = extractvalue %dx.types.CBufRet.f32 %7993, 3
  %7995 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %7996 = fsub fast float %6296, %6290
  %7997 = fadd fast float %7996, %6297
  %7998 = fsub fast float %7997, %7995
  %7999 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %8000 = fmul fast float %7998, %7999
  %8001 = call float @dx.op.unary.f32(i32 7, float %8000)  ; Saturate(value)
  %8002 = fsub fast float %8001, %7994
  %8003 = fmul fast float %8002, %7981
  %8004 = fadd fast float %8003, %7994
  %8005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8006 = extractvalue %dx.types.CBufRet.f32 %8005, 0
  %8007 = fsub fast float %8004, %8006
  %8008 = fmul fast float %8007, 1.000000e+01
  %8009 = call float @dx.op.unary.f32(i32 7, float %8008)  ; Saturate(value)
  %8010 = fmul fast float %8009, %6286
  %8011 = fadd fast float %8010, %6287
  %8012 = fmul fast float %8011, %8004
  br label %8037

; <label>:8013                                    ; preds = %7980
  %8014 = fadd fast float %7741, %7738
  %8015 = fmul fast float %7962, %8014
  %8016 = fadd fast float %8015, %7965
  %8017 = fmul fast float %7989, %7984
  %8018 = fmul fast float %7989, %7987
  %8019 = fmul fast float %7989, %8016
  %8020 = call float @dx.op.binary.f32(i32 35, float %8018, float %8019)  ; FMax(a,b)
  %8021 = call float @dx.op.binary.f32(i32 35, float %8017, float %8020)  ; FMax(a,b)
  %8022 = call float @dx.op.binary.f32(i32 35, float %8021, float %6287)  ; FMax(a,b)
  %8023 = fcmp fast ugt float %8022, 0x3F10000000000000
  br i1 %8023, label %8025, label %8024

; <label>:8024                                    ; preds = %8013
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8025

; <label>:8025                                    ; preds = %8024, %8013
  %8026 = add i32 %71, 132
  %8027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %8026, i32 undef)  ; BufferLoad(srv,index,wot)
  %8028 = extractvalue %dx.types.ResRet.i32 %8027, 0
  %8029 = and i32 %8028, 32
  %8030 = icmp eq i32 %8029, 0
  br i1 %8030, label %8037, label %8031

; <label>:8031                                    ; preds = %8025
  %8032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.f32 %8032, 0
  %8034 = fmul fast float %8033, 0x3FE99999A0000000
  %8035 = fadd fast float %8033, %8017
  %8036 = fadd fast float %8034, %8019
  br label %8037

; <label>:8037                                    ; preds = %8031, %8025, %7990
  %8038 = phi float [ %7992, %7990 ], [ %8035, %8031 ], [ %8017, %8025 ]
  %8039 = phi float [ %8012, %7990 ], [ %8018, %8031 ], [ %8018, %8025 ]
  %8040 = phi float [ %8011, %7990 ], [ %8036, %8031 ], [ %8019, %8025 ]
  %8041 = phi float [ %8011, %7990 ], [ %6287, %8031 ], [ %6287, %8025 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8042 = call float @dx.op.binary.f32(i32 36, float %8038, float 3.225500e+04)  ; FMin(a,b)
  %8043 = call float @dx.op.binary.f32(i32 36, float %8039, float 3.225500e+04)  ; FMin(a,b)
  %8044 = call float @dx.op.binary.f32(i32 36, float %8040, float 3.225500e+04)  ; FMin(a,b)
  %8045 = call float @dx.op.binary.f32(i32 36, float %8041, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8042)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8043)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8044)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8045)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

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
!84 = !{[28 x i32] [i32 26, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!85 = !{void ()* @ps_main, !"ps_main", !86, !4, !104}
!86 = !{!87, !102, null}
!87 = !{!88, !91, !93, !95, !97, !98, !99, !100, !101}
!88 = !{i32 0, !"SV_Position", i8 9, i8 3, !89, i8 4, i32 1, i8 4, i32 0, i8 0, !90}
!89 = !{i32 0}
!90 = !{i32 3, i32 15}
!91 = !{i32 1, !"COLOR", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 1, i8 0, !92}
!92 = !{i32 3, i32 1}
!93 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !89, i8 2, i32 1, i8 2, i32 2, i8 0, !94}
!94 = !{i32 3, i32 3}
!95 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !89, i8 2, i32 1, i8 3, i32 3, i8 0, !96}
!96 = !{i32 3, i32 7}
!97 = !{i32 4, !"NORMAL", i8 9, i8 0, !89, i8 2, i32 1, i8 3, i32 4, i8 0, !96}
!98 = !{i32 5, !"TANGENT", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 5, i8 0, !90}
!99 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !89, i8 1, i32 1, i8 1, i32 6, i8 0, !92}
!100 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !89, i8 1, i32 1, i8 1, i32 6, i8 1, !92}
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

