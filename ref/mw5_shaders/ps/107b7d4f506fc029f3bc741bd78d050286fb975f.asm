;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xy  
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        6     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           7     NONE    uint   x   
; TRANSIENT_INDEX          0    y          7     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: ca6efa9e45b4e478d3f4c653ef07bf19
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
; Number of inputs: 30, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
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
  %70 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = alloca [12 x float], align 4
  %97 = alloca [12 x float], align 4
  %98 = alloca [4 x float], align 4
  %99 = alloca [4 x float], align 4
  %100 = alloca [4 x float], align 4
  %101 = alloca [3 x float], align 4
  %102 = alloca [3 x float], align 4
  %103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = fmul fast float %106, %92
  %108 = fmul fast float %106, %93
  %109 = fmul fast float %81, %78
  %110 = fmul fast float %82, %77
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %82, %76
  %113 = fmul fast float %80, %78
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %80, %77
  %116 = fmul fast float %81, %76
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %111, %79
  %119 = fmul fast float %114, %79
  %120 = fmul fast float %117, %79
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %124 = fmul fast float %122, 2.000000e+00
  %125 = fmul fast float %124, %107
  %126 = fmul fast float %123, 2.000000e+00
  %127 = fmul fast float %126, %108
  %128 = fsub fast float 1.000000e+00, %125
  %129 = fsub fast float 1.000000e+00, %127
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %128, %131
  %135 = fmul fast float %128, %132
  %136 = fmul fast float %128, %133
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fmul fast float %129, %138
  %142 = fmul fast float %129, %139
  %143 = fmul fast float %129, %140
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fadd fast float %141, %145
  %149 = fadd fast float %148, %134
  %150 = fadd fast float %142, %146
  %151 = fadd fast float %150, %135
  %152 = fadd fast float %143, %147
  %153 = fadd fast float %152, %136
  %154 = fmul fast float %149, %95
  %155 = fmul fast float %151, %95
  %156 = fmul fast float %153, %95
  %157 = fadd fast float %85, 5.000000e-01
  %158 = fptoui float %157 to i32
  %159 = shl i32 %158, 3
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %159, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = or i32 %159, 4
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = and i32 %161, 8191
  %166 = lshr i32 %161, 13
  %167 = and i32 %166, 8191
  %168 = lshr i32 %161, 26
  %169 = and i32 %164, 65535
  %170 = lshr i32 %164, 16
  %171 = uitofp i32 %169 to float
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %174 = uitofp i32 %170 to float
  %175 = uitofp i32 %165 to float
  %176 = fmul fast float %173, %175
  %177 = uitofp i32 %167 to float
  %178 = fmul fast float %173, %177
  %179 = fmul fast float %173, %83
  %180 = fmul fast float %179, %171
  %181 = fmul fast float %173, %84
  %182 = fmul fast float %181, %174
  %183 = fadd fast float %180, %176
  %184 = fadd fast float %178, %182
  %185 = uitofp i32 %168 to float
  %186 = fmul fast float %107, 5.000000e-01
  %187 = fmul fast float %108, 5.000000e-01
  %188 = fptosi float %186 to i32
  %189 = fptosi float %187 to i32
  %190 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %188, i32 %189, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = lshr i32 %191, 18
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F4C00EBA0000000
  %195 = call float @dx.op.unary.f32(i32 21, float %194)  ; Exp(value)
  %196 = fadd fast float %195, -1.000000e+00
  %197 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %198 = extractvalue %dx.types.Dimensions %197, 0
  %199 = sitofp i32 %198 to float
  %200 = extractvalue %dx.types.Dimensions %197, 1
  %201 = sitofp i32 %200 to float
  %202 = fcmp fast oge float %186, %199
  %203 = fcmp fast oge float %187, %201
  %204 = or i1 %202, %203
  %205 = select i1 %204, float 0x4197782600000000, float %196
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %208 = extractvalue %dx.types.CBufRet.f32 %206, 3
  %209 = fmul fast float %207, %107
  %210 = fmul fast float %208, %108
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = and i32 %212, 114688
  %214 = icmp ne i32 %213, 0
  %215 = select i1 %214, float %209, float 0.000000e+00
  %216 = select i1 %214, float %210, float 0.000000e+00
  %217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %65, float %215, float %216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = fmul fast float %218, 2.550000e+02
  %220 = fptoui float %219 to i32
  %221 = select i1 %214, i32 %220, i32 0
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.i32 %223, 3
  %225 = and i32 %224, 3
  %226 = icmp ne i32 %225, 0
  %227 = and i32 %224, 4
  %228 = icmp ne i32 %227, 0
  %229 = and i1 %226, %228
  br i1 %229, label %230, label %241

; <label>:230                                     ; preds = %0
  %231 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %232 = fmul fast float %231, %108
  %233 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %234 = fmul fast float %233, %107
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %64, float %234, float %232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fsub fast float 1.000000e+00, %236
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = fcmp fast olt float %237, %239
  br label %244

; <label>:241                                     ; preds = %0
  %242 = icmp eq i32 %227, 0
  %243 = and i1 %226, %242
  br label %244

; <label>:244                                     ; preds = %241, %230
  %245 = phi i1 [ %240, %230 ], [ %243, %241 ]
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %248 = fmul fast float %247, 0x3FE3C6EF40000000
  %249 = frem fast float %107, 2.560000e+02
  %250 = frem fast float %108, 2.560000e+02
  %251 = fptoui float %249 to i32
  %252 = fptoui float %250 to i32
  %253 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %251, i32 %252, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fadd fast float %254, %248
  %256 = call float @dx.op.unary.f32(i32 22, float %255)  ; Frc(value)
  %257 = add i32 %71, 92
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = shl i32 %259, 4
  %261 = and i32 %260, 32752
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %259, 7
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %259, 22
  %267 = shl nuw nsw i32 %266, 5
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = add i32 %71, 120
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = lshr i32 %271, 8
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %271, 16
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = add i32 %71, 36
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = add i32 %71, 160
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = add i32 %71, 108
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = shl i32 %291, 4
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %291, 7
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %291, 22
  %299 = shl nuw nsw i32 %298, 5
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = add i32 %71, 136
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %303, 8
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = lshr i32 %303, 16
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = add i32 %71, 52
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = add i32 %71, 176
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 65535
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %324, 16
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = fmul fast float %326, 0x3F50624DE0000000
  %330 = fmul fast float %328, 0x3F50624DE0000000
  %331 = add i32 %71, 188
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = lshr i32 %333, 20
  %335 = and i32 %334, 3
  %336 = add nuw nsw i32 %335, 1
  %337 = add i32 %71, 24
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = add i32 %71, 28
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = or i32 %342, %339
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %996, label %345

; <label>:345                                     ; preds = %244
  %346 = lshr i32 %288, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = fmul fast float %347, 0x3F50624DE0000000
  %349 = and i32 %288, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = fmul fast float %350, 0x3F50624DE0000000
  %352 = lshr i32 %285, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = and i32 %285, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = add i32 %71, 156
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = lshr i32 %358, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = fmul fast float %360, 0x3F50624DE0000000
  %362 = add i32 %71, 56
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = lshr i32 %364, 16
  %366 = and i32 %365, 255
  %367 = lshr i32 %364, 24
  %368 = add i32 %71, 164
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 65535
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %370, 16
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = add i32 %71, 32
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = lshr i32 %377, 22
  %379 = shl nuw nsw i32 %378, 5
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = shl i32 %377, 4
  %382 = and i32 %381, 32752
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %377, 7
  %385 = and i32 %384, 32752
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 3
  %389 = fmul fast float %388, 1.000000e+03
  %390 = fmul fast float %351, %389
  %391 = call float @dx.op.unary.f32(i32 22, float %390)  ; Frc(value)
  %392 = fadd fast float %391, %355
  %393 = fmul fast float %348, %389
  %394 = call float @dx.op.unary.f32(i32 22, float %393)  ; Frc(value)
  %395 = fadd fast float %394, %353
  %396 = fmul fast float %361, %389
  %397 = call float @dx.op.unary.f32(i32 22, float %396)  ; Frc(value)
  %398 = fmul fast float %397, 0x401921FB60000000
  %399 = fadd fast float %398, %380
  %400 = call float @dx.op.unary.f32(i32 13, float %399)  ; Sin(value)
  %401 = call float @dx.op.unary.f32(i32 12, float %399)  ; Cos(value)
  %402 = fsub fast float -0.000000e+00, %400
  %403 = fadd fast float %86, -5.000000e-01
  %404 = fadd fast float %87, -5.000000e-01
  %405 = fmul fast float %372, %403
  %406 = fmul fast float %374, %404
  %407 = fadd fast float %405, 5.000000e-01
  %408 = fadd fast float %406, 5.000000e-01
  %409 = fmul fast float %383, %407
  %410 = fmul fast float %386, %408
  %411 = fmul fast float %401, %409
  %412 = call float @dx.op.tertiary.f32(i32 46, float %402, float %410, float %411)  ; FMad(a,b,c)
  %413 = fmul fast float %400, %409
  %414 = call float @dx.op.tertiary.f32(i32 46, float %401, float %410, float %413)  ; FMad(a,b,c)
  %415 = fadd fast float %392, %412
  %416 = fadd fast float %395, %414
  %417 = icmp ugt i32 %366, 1
  %418 = icmp ugt i32 %364, 33554431
  %419 = or i1 %418, %417
  br i1 %419, label %420, label %445

; <label>:420                                     ; preds = %345
  %421 = add i32 %71, 132
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = lshr i32 %423, 16
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = fmul fast float %388, %425
  %427 = call float @dx.op.unary.f32(i32 22, float %426)  ; Frc(value)
  %428 = mul nuw nsw i32 %366, %367
  %429 = uitofp i32 %428 to float
  %430 = fmul fast float %427, %429
  %431 = call float @dx.op.unary.f32(i32 27, float %430)  ; Round_ni(value)
  %432 = fptoui float %431 to i32
  %433 = urem i32 %432, %366
  %434 = udiv i32 %432, %367
  %435 = call float @dx.op.unary.f32(i32 22, float %415)  ; Frc(value)
  %436 = call float @dx.op.unary.f32(i32 22, float %416)  ; Frc(value)
  %437 = uitofp i32 %433 to float
  %438 = uitofp i32 %434 to float
  %439 = fadd fast float %435, %437
  %440 = fadd fast float %436, %438
  %441 = uitofp i32 %366 to float
  %442 = uitofp i32 %367 to float
  %443 = fdiv fast float %439, %441
  %444 = fdiv fast float %440, %442
  br label %445

; <label>:445                                     ; preds = %420, %345
  %446 = phi float [ %443, %420 ], [ %415, %345 ]
  %447 = phi float [ %444, %420 ], [ %416, %345 ]
  %448 = and i32 %339, 16777216
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %559, label %450

; <label>:450                                     ; preds = %445
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %453 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %454 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %455 = fadd fast float %452, %154
  %456 = fadd fast float %453, %155
  %457 = fadd fast float %454, %156
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %461 = icmp eq i32 %70, 65535
  br i1 %461, label %556, label %462

; <label>:462                                     ; preds = %450
  %463 = lshr i32 %70, 1
  %464 = shl i32 %463, 2
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %70, 1
  %468 = icmp ne i32 %467, 0
  %469 = lshr i32 %466, 16
  %470 = and i32 %466, 65535
  %471 = select i1 %468, i32 %469, i32 %470
  %472 = icmp eq i32 %471, 65535
  br i1 %472, label %552, label %473

; <label>:473                                     ; preds = %462
  %474 = mul nuw nsw i32 %471, 40
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 2
  %479 = add nuw nsw i32 %474, 12
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = extractvalue %dx.types.ResRet.f32 %480, 1
  %483 = extractvalue %dx.types.ResRet.f32 %480, 2
  %484 = add nuw nsw i32 %474, 24
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = extractvalue %dx.types.ResRet.f32 %485, 1
  %488 = extractvalue %dx.types.ResRet.f32 %485, 2
  %489 = add nuw nsw i32 %474, 36
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = fsub fast float %455, %476
  %493 = fsub fast float %456, %477
  %494 = fsub fast float %457, %478
  %495 = fmul fast float %491, %492
  %496 = fmul fast float %491, %493
  %497 = fmul fast float %491, %494
  %498 = call float @dx.op.unary.f32(i32 27, float %495)  ; Round_ni(value)
  %499 = call float @dx.op.unary.f32(i32 27, float %496)  ; Round_ni(value)
  %500 = call float @dx.op.unary.f32(i32 27, float %497)  ; Round_ni(value)
  %501 = fadd fast float %498, 5.000000e-01
  %502 = fadd fast float %499, 5.000000e-01
  %503 = fadd fast float %500, 5.000000e-01
  %504 = fmul fast float %501, %481
  %505 = fmul fast float %502, %482
  %506 = fmul fast float %503, %483
  %507 = shl i32 %70, 2
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = add i32 %509, 0
  %511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %510, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %512 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %513 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %514 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %511, %dx.types.Handle %65, float %512, float %513, float %514, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = fmul fast float %516, 1.023000e+03
  %520 = fmul fast float %517, 1.023000e+03
  %521 = fmul fast float %518, 1.023000e+03
  %522 = fadd fast float %519, 5.000000e-01
  %523 = fadd fast float %520, 5.000000e-01
  %524 = fadd fast float %521, 5.000000e-01
  %525 = call float @dx.op.unary.f32(i32 27, float %522)  ; Round_ni(value)
  %526 = call float @dx.op.unary.f32(i32 27, float %523)  ; Round_ni(value)
  %527 = call float @dx.op.unary.f32(i32 27, float %524)  ; Round_ni(value)
  %528 = fsub fast float %495, %498
  %529 = fsub fast float %496, %499
  %530 = fsub fast float %497, %500
  %531 = fmul fast float %528, 7.500000e-01
  %532 = fmul fast float %529, 7.500000e-01
  %533 = fmul fast float %530, 7.500000e-01
  %534 = fadd fast float %498, 1.250000e-01
  %535 = fadd fast float %534, %531
  %536 = fadd fast float %535, %525
  %537 = fadd fast float %499, 1.250000e-01
  %538 = fadd fast float %537, %532
  %539 = fadd fast float %538, %526
  %540 = fadd fast float %500, 1.250000e-01
  %541 = fadd fast float %540, %533
  %542 = fadd fast float %541, %527
  %543 = fmul fast float %536, %486
  %544 = fmul fast float %539, %487
  %545 = fmul fast float %542, %488
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = add i32 %547, 0
  %549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %548, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %549, %dx.types.Handle %63, float %543, float %544, float %545, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  br label %552

; <label>:552                                     ; preds = %473, %462
  %553 = phi float [ %551, %473 ], [ -1.000000e+00, %462 ]
  %554 = fadd fast float %553, %460
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  br label %556

; <label>:556                                     ; preds = %552, %450
  %557 = phi float [ %555, %552 ], [ %460, %450 ]
  %558 = fmul fast float %557, %90
  br label %559

; <label>:559                                     ; preds = %556, %445
  %560 = phi float [ %558, %556 ], [ %90, %445 ]
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 256
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %611, label %565

; <label>:565                                     ; preds = %559
  %566 = add i32 %71, 232
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = add i32 %568, 0
  %570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %570, %dx.types.Handle %104, float %446, float %447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = add i32 %71, 68
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = shl i32 %575, 4
  %577 = and i32 %576, 32752
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = lshr i32 %575, 7
  %580 = and i32 %579, 32752
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = fsub fast float 1.000000e+00, %560
  %583 = call float @dx.op.binary.f32(i32 35, float %582, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %584 = bitcast float %560 to i32
  %585 = sitofp i32 %584 to float
  %586 = fadd fast float %585, 0xC1CFBF8940000000
  %587 = fmul fast float %581, %586
  %588 = fadd fast float %587, 0x41CFBF8940000000
  %589 = fptosi float %588 to i32
  %590 = bitcast i32 %589 to float
  %591 = bitcast float %583 to i32
  %592 = sitofp i32 %591 to float
  %593 = fadd fast float %592, 0xC1CFBF8940000000
  %594 = fmul fast float %593, %581
  %595 = fadd fast float %594, 0x41CFBF8940000000
  %596 = fptosi float %595 to i32
  %597 = bitcast i32 %596 to float
  %598 = fmul fast float %590, %578
  %599 = fmul fast float %597, %578
  %600 = fsub fast float %583, %598
  %601 = fadd fast float %599, %583
  %602 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  %603 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %604 = fsub fast float %572, %602
  %605 = fsub fast float %603, %602
  %606 = bitcast float %605 to i32
  %607 = sub nsw i32 2129859010, %606
  %608 = bitcast i32 %607 to float
  %609 = fmul fast float %608, %604
  %610 = call float @dx.op.unary.f32(i32 7, float %609)  ; Saturate(value)
  br label %611

; <label>:611                                     ; preds = %565, %559
  %612 = phi float [ %610, %565 ], [ %560, %559 ]
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 128
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %633, label %617

; <label>:617                                     ; preds = %611
  %618 = add i32 %71, 224
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = add i32 %620, 0
  %622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %622, %dx.types.Handle %104, float %446, float %447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %624 = extractvalue %dx.types.ResRet.f32 %623, 0
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = and i32 %626, 524288
  %628 = icmp ne i32 %627, 0
  %629 = fcmp fast ogt float %624, 0x3FE0101020000000
  %630 = select i1 %629, float 1.000000e+00, float 0.000000e+00
  %631 = select i1 %628, float %630, float %624
  %632 = fmul fast float %631, %612
  br label %633

; <label>:633                                     ; preds = %617, %611
  %634 = phi float [ %632, %617 ], [ %612, %611 ]
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 16
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %837, label %639

; <label>:639                                     ; preds = %633
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = add i32 %71, 200
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %646, %dx.types.Handle %103, float %446, float %447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = extractvalue %dx.types.ResRet.f32 %647, 3
  %652 = and i32 %641, 255
  %653 = uitofp i32 %652 to float
  %654 = lshr i32 %641, 8
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %651, %653
  %658 = fadd fast float %657, %656
  %659 = fmul fast float %658, 0x3F70101000000000
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = and i32 %661, 512
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %672, label %664

; <label>:664                                     ; preds = %639
  %665 = add i32 %71, 240
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = add i32 %667, 0
  %669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %670 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %669, %dx.types.Handle %104, float %446, float %447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  br label %672

; <label>:672                                     ; preds = %664, %639
  %673 = phi float [ %671, %664 ], [ 1.000000e+00, %639 ]
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 33554432
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %784, label %678

; <label>:678                                     ; preds = %672
  %679 = add i32 %71, 128
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = and i32 %681, 65535
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = lshr i32 %681, 16
  %685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %684)  ; LegacyF16ToF32(value)
  %686 = add i32 %71, 132
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 65535
  %690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %689)  ; LegacyF16ToF32(value)
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = lshr i32 %692, 24
  %694 = uitofp i32 %693 to float
  %695 = fmul fast float %694, 0x3F70101020000000
  %696 = and i32 %692, 255
  %697 = uitofp i32 %696 to float
  %698 = fmul fast float %697, 0x3F70101020000000
  %699 = lshr i32 %692, 8
  %700 = and i32 %699, 255
  %701 = uitofp i32 %700 to float
  %702 = fmul fast float %701, 0x3F70101020000000
  %703 = lshr i32 %692, 16
  %704 = and i32 %703, 255
  %705 = uitofp i32 %704 to float
  %706 = fmul fast float %705, 0x3F70101020000000
  %707 = add i32 %71, 124
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = lshr i32 %709, 24
  %711 = uitofp i32 %710 to float
  %712 = fmul fast float %711, 0x3F70101020000000
  %713 = and i32 %709, 255
  %714 = uitofp i32 %713 to float
  %715 = fmul fast float %714, 0x3F70101020000000
  %716 = lshr i32 %709, 8
  %717 = and i32 %716, 255
  %718 = uitofp i32 %717 to float
  %719 = fmul fast float %718, 0x3F70101020000000
  %720 = lshr i32 %709, 16
  %721 = and i32 %720, 255
  %722 = uitofp i32 %721 to float
  %723 = fmul fast float %722, 0x3F70101020000000
  %724 = bitcast float %648 to i32
  %725 = ashr i32 %724, 1
  %726 = sub nsw i32 1597463174, %725
  %727 = bitcast i32 %726 to float
  %728 = fmul fast float %648, 5.000000e-01
  %729 = fmul fast float %727, %727
  %730 = fmul fast float %729, %728
  %731 = fsub fast float 1.500000e+00, %730
  %732 = fmul fast float %727, %648
  %733 = fmul fast float %732, %731
  %734 = bitcast float %649 to i32
  %735 = ashr i32 %734, 1
  %736 = sub nsw i32 1597463174, %735
  %737 = bitcast i32 %736 to float
  %738 = fmul fast float %649, 5.000000e-01
  %739 = fmul fast float %737, %737
  %740 = fmul fast float %739, %738
  %741 = fsub fast float 1.500000e+00, %740
  %742 = fmul fast float %737, %649
  %743 = fmul fast float %742, %741
  %744 = bitcast float %650 to i32
  %745 = ashr i32 %744, 1
  %746 = sub nsw i32 1597463174, %745
  %747 = bitcast i32 %746 to float
  %748 = fmul fast float %650, 5.000000e-01
  %749 = fmul fast float %747, %747
  %750 = fmul fast float %749, %748
  %751 = fsub fast float 1.500000e+00, %750
  %752 = fmul fast float %747, %650
  %753 = fmul fast float %752, %751
  %754 = fsub fast float %733, %715
  %755 = fsub fast float %743, %719
  %756 = fsub fast float %753, %723
  %757 = fmul fast float %754, %683
  %758 = fmul fast float %755, %685
  %759 = fmul fast float %756, %690
  %760 = fadd fast float %757, %698
  %761 = fadd fast float %758, %702
  %762 = fadd fast float %759, %706
  %763 = call float @dx.op.unary.f32(i32 7, float %760)  ; Saturate(value)
  %764 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %765 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %766 = fmul fast float %763, %763
  %767 = fmul fast float %764, %764
  %768 = fmul fast float %765, %765
  %769 = fsub fast float %766, %648
  %770 = fsub fast float %767, %649
  %771 = fsub fast float %768, %650
  %772 = fmul fast float %769, %673
  %773 = fmul fast float %770, %673
  %774 = fmul fast float %771, %673
  %775 = fadd fast float %772, %648
  %776 = fadd fast float %773, %649
  %777 = fadd fast float %774, %650
  %778 = fadd fast float %695, %659
  %779 = fsub fast float %778, %712
  %780 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %781 = fsub fast float %780, %659
  %782 = fmul fast float %781, %673
  %783 = fadd fast float %782, %659
  br label %837

; <label>:784                                     ; preds = %672
  %785 = and i32 %675, 134217728
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %821, label %787

; <label>:787                                     ; preds = %784
  %788 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %789 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %790 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %791 = fadd fast float %788, -5.000000e-01
  %792 = fadd fast float %789, -5.000000e-01
  %793 = fadd fast float %790, -5.000000e-01
  %794 = fmul fast float %791, %673
  %795 = fmul fast float %792, %673
  %796 = fmul fast float %793, %673
  %797 = fadd fast float %794, 5.000000e-01
  %798 = fadd fast float %795, 5.000000e-01
  %799 = fadd fast float %796, 5.000000e-01
  %800 = call float @dx.op.unary.f32(i32 24, float %648)  ; Sqrt(value)
  %801 = call float @dx.op.unary.f32(i32 24, float %649)  ; Sqrt(value)
  %802 = call float @dx.op.unary.f32(i32 24, float %650)  ; Sqrt(value)
  %803 = fmul fast float %797, 2.000000e+00
  %804 = fsub fast float 1.000000e+00, %803
  %805 = fmul fast float %804, %800
  %806 = fadd fast float %805, %803
  %807 = fmul fast float %806, %800
  %808 = fmul fast float %798, 2.000000e+00
  %809 = fsub fast float 1.000000e+00, %808
  %810 = fmul fast float %809, %801
  %811 = fadd fast float %810, %808
  %812 = fmul fast float %811, %801
  %813 = fmul fast float %799, 2.000000e+00
  %814 = fsub fast float 1.000000e+00, %813
  %815 = fmul fast float %814, %802
  %816 = fadd fast float %815, %813
  %817 = fmul fast float %816, %802
  %818 = fmul fast float %807, %807
  %819 = fmul fast float %812, %812
  %820 = fmul fast float %817, %817
  br label %837

; <label>:821                                     ; preds = %784
  %822 = fmul fast float %274, %274
  %823 = fmul fast float %278, %278
  %824 = fmul fast float %282, %282
  %825 = fadd fast float %822, -1.000000e+00
  %826 = fadd fast float %823, -1.000000e+00
  %827 = fadd fast float %824, -1.000000e+00
  %828 = fmul fast float %673, %825
  %829 = fmul fast float %673, %826
  %830 = fmul fast float %673, %827
  %831 = fadd fast float %828, 1.000000e+00
  %832 = fadd fast float %829, 1.000000e+00
  %833 = fadd fast float %830, 1.000000e+00
  %834 = fmul fast float %831, %648
  %835 = fmul fast float %832, %649
  %836 = fmul fast float %833, %650
  br label %837

; <label>:837                                     ; preds = %821, %787, %678, %633
  %838 = phi float [ %783, %678 ], [ %659, %787 ], [ %659, %821 ], [ 0x3FA23C0BE0000000, %633 ]
  %839 = phi float [ %775, %678 ], [ %818, %787 ], [ %834, %821 ], [ 1.000000e+00, %633 ]
  %840 = phi float [ %776, %678 ], [ %819, %787 ], [ %835, %821 ], [ 1.000000e+00, %633 ]
  %841 = phi float [ %777, %678 ], [ %820, %787 ], [ %836, %821 ], [ 1.000000e+00, %633 ]
  %842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.i32 %842, 1
  %844 = and i32 %843, 1
  %845 = icmp ne i32 %844, 0
  %846 = add i32 %71, 196
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = and i32 %848, 32
  %850 = icmp ne i32 %849, 0
  %851 = and i1 %845, %850
  %852 = select i1 %851, float 1.000000e+00, float %839
  %853 = select i1 %851, float 0x3FD3333340000000, float %840
  %854 = select i1 %851, float 0x3FD3333340000000, float %841
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = and i32 %856, 32
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %931, label %859

; <label>:859                                     ; preds = %837
  %860 = add i32 %71, 60
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = add i32 %71, 208
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = add i32 %865, 0
  %867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %866, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %868 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %867, %dx.types.Handle %103, float %446, float %447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = extractvalue %dx.types.ResRet.f32 %868, 2
  %872 = extractvalue %dx.types.ResRet.f32 %868, 3
  %873 = and i32 %862, 255
  %874 = uitofp i32 %873 to float
  %875 = lshr i32 %862, 8
  %876 = and i32 %875, 255
  %877 = uitofp i32 %876 to float
  %878 = lshr i32 %862, 16
  %879 = and i32 %878, 255
  %880 = uitofp i32 %879 to float
  %881 = fmul fast float %880, 0x3F70101000000000
  %882 = fmul fast float %869, %874
  %883 = fadd fast float %882, %877
  %884 = fmul fast float %883, 0x3F70101000000000
  %885 = fadd fast float %870, -5.000000e-01
  %886 = fadd fast float %872, -5.000000e-01
  %887 = fmul fast float %885, %881
  %888 = fmul fast float %886, %881
  %889 = fadd fast float %887, 5.000000e-01
  %890 = fadd fast float %888, 5.000000e-01
  %891 = fmul fast float %889, 2.000000e+00
  %892 = fadd fast float %891, -1.000000e+00
  %893 = fmul fast float %890, 2.000000e+00
  %894 = fadd fast float %893, -1.000000e+00
  %895 = fadd fast float %892, %894
  %896 = fmul fast float %895, 5.000000e-01
  %897 = fsub fast float %892, %894
  %898 = fmul fast float %897, 5.000000e-01
  %899 = call float @dx.op.unary.f32(i32 6, float %896)  ; FAbs(value)
  %900 = fsub fast float 1.000000e+00, %899
  %901 = call float @dx.op.unary.f32(i32 6, float %898)  ; FAbs(value)
  %902 = fsub fast float %900, %901
  %903 = call float @dx.op.dot3.f32(i32 55, float %896, float %898, float %902, float %896, float %898, float %902)  ; Dot3(ax,ay,az,bx,by,bz)
  %904 = call float @dx.op.unary.f32(i32 25, float %903)  ; Rsqrt(value)
  %905 = fmul fast float %896, %904
  %906 = fmul fast float %898, %904
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = and i32 %908, 67108864
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %927, label %911

; <label>:911                                     ; preds = %859
  %912 = add i32 %71, 152
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = and i32 %914, 65535
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = and i32 %918, 65535
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = lshr i32 %914, 16
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = fsub fast float %884, %922
  %924 = fmul fast float %923, %916
  %925 = fadd fast float %924, %920
  %926 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  br label %927

; <label>:927                                     ; preds = %911, %859
  %928 = phi float [ %926, %911 ], [ %884, %859 ]
  %929 = call float @dx.op.dot2.f32(i32 54, float %905, float %906, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %930 = call float @dx.op.dot2.f32(i32 54, float %905, float %906, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %931

; <label>:931                                     ; preds = %927, %837
  %932 = phi float [ %928, %927 ], [ 0x3FD6666660000000, %837 ]
  %933 = phi float [ %929, %927 ], [ 0.000000e+00, %837 ]
  %934 = phi float [ %930, %927 ], [ 0.000000e+00, %837 ]
  %935 = phi float [ %871, %927 ], [ 1.000000e+00, %837 ]
  %936 = add i32 %71, 96
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = lshr i32 %938, 22
  %940 = shl nuw nsw i32 %939, 5
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = and i32 %943, 64
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %979, label %946

; <label>:946                                     ; preds = %931
  %947 = add i32 %71, 216
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = add i32 %949, 0
  %951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %950, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = and i32 %953, 131072
  %955 = icmp eq i32 %954, 0
  %956 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %951, %dx.types.Handle %103, float %446, float %447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = fmul fast float %957, %262
  %961 = fmul fast float %958, %265
  %962 = fmul fast float %959, %268
  br i1 %955, label %969, label %963

; <label>:963                                     ; preds = %946
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %966 = fmul fast float %965, %960
  %967 = fmul fast float %965, %961
  %968 = fmul fast float %965, %962
  br label %969

; <label>:969                                     ; preds = %963, %946
  %970 = phi float [ %966, %963 ], [ %960, %946 ]
  %971 = phi float [ %967, %963 ], [ %961, %946 ]
  %972 = phi float [ %968, %963 ], [ %962, %946 ]
  %973 = fmul fast float %970, %941
  %974 = select i1 %245, float %973, float %970
  %975 = call float @dx.op.dot3.f32(i32 55, float %974, float %971, float %972, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %976 = select i1 %245, float 0.000000e+00, float %970
  %977 = select i1 %245, float %975, float %971
  %978 = select i1 %245, float 0.000000e+00, float %972
  br label %979

; <label>:979                                     ; preds = %969, %931
  %980 = phi float [ %976, %969 ], [ 0.000000e+00, %931 ]
  %981 = phi float [ %977, %969 ], [ 0.000000e+00, %931 ]
  %982 = phi float [ %978, %969 ], [ 0.000000e+00, %931 ]
  %983 = add i32 %71, 64
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 255
  %987 = uitofp i32 %986 to float
  %988 = lshr i32 %985, 8
  %989 = and i32 %988, 255
  %990 = uitofp i32 %989 to float
  %991 = call float @dx.op.dot3.f32(i32 55, float %852, float %853, float %854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %992 = fmul fast float %990, %991
  %993 = fadd fast float %992, %987
  %994 = fmul fast float %993, 0x3F70101020000000
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  br label %996

; <label>:996                                     ; preds = %979, %244
  %997 = phi float [ %933, %979 ], [ 0.000000e+00, %244 ]
  %998 = phi float [ %934, %979 ], [ 0.000000e+00, %244 ]
  %999 = phi float [ %852, %979 ], [ 0.000000e+00, %244 ]
  %1000 = phi float [ %853, %979 ], [ 0.000000e+00, %244 ]
  %1001 = phi float [ %854, %979 ], [ 0.000000e+00, %244 ]
  %1002 = phi float [ %980, %979 ], [ 0.000000e+00, %244 ]
  %1003 = phi float [ %981, %979 ], [ 0.000000e+00, %244 ]
  %1004 = phi float [ %982, %979 ], [ 0.000000e+00, %244 ]
  %1005 = phi float [ %838, %979 ], [ 0.000000e+00, %244 ]
  %1006 = phi float [ %634, %979 ], [ 0.000000e+00, %244 ]
  %1007 = phi float [ %932, %979 ], [ 0.000000e+00, %244 ]
  %1008 = phi float [ %935, %979 ], [ 0.000000e+00, %244 ]
  %1009 = phi float [ %995, %979 ], [ 0.000000e+00, %244 ]
  %1010 = icmp ult i32 %336, 2
  %1011 = add i32 %71, 40
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = add i32 %71, 44
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = or i32 %1016, %1013
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1842, label %1019

; <label>:1019                                    ; preds = %996
  %1020 = add i32 %71, 172
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = lshr i32 %1022, 16
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = fmul fast float %1024, 0x3F50624DE0000000
  %1026 = add i32 %71, 72
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = lshr i32 %1028, 16
  %1030 = and i32 %1029, 255
  %1031 = lshr i32 %1028, 24
  %1032 = add i32 %71, 180
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 65535
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = lshr i32 %1034, 16
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = add i32 %71, 48
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = lshr i32 %1041, 22
  %1043 = shl nuw nsw i32 %1042, 5
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = shl i32 %1041, 4
  %1046 = and i32 %1045, 32752
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = lshr i32 %1041, 7
  %1049 = and i32 %1048, 32752
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 3
  %1053 = fmul fast float %1052, 1.000000e+03
  %1054 = fmul fast float %329, %1053
  %1055 = call float @dx.op.unary.f32(i32 22, float %1054)  ; Frc(value)
  %1056 = fadd fast float %1055, %319
  %1057 = fmul fast float %330, %1053
  %1058 = call float @dx.op.unary.f32(i32 22, float %1057)  ; Frc(value)
  %1059 = fadd fast float %1058, %321
  %1060 = fmul fast float %1025, %1053
  %1061 = call float @dx.op.unary.f32(i32 22, float %1060)  ; Frc(value)
  %1062 = fmul fast float %1061, 0x401921FB60000000
  %1063 = fadd fast float %1062, %1044
  %1064 = call float @dx.op.unary.f32(i32 13, float %1063)  ; Sin(value)
  %1065 = call float @dx.op.unary.f32(i32 12, float %1063)  ; Cos(value)
  %1066 = fsub fast float -0.000000e+00, %1064
  %1067 = fadd fast float %88, -5.000000e-01
  %1068 = fadd fast float %89, -5.000000e-01
  %1069 = fmul fast float %1036, %1067
  %1070 = fmul fast float %1038, %1068
  %1071 = fadd fast float %1069, 5.000000e-01
  %1072 = fadd fast float %1070, 5.000000e-01
  %1073 = fmul fast float %1047, %1071
  %1074 = fmul fast float %1050, %1072
  %1075 = fmul fast float %1065, %1073
  %1076 = call float @dx.op.tertiary.f32(i32 46, float %1066, float %1074, float %1075)  ; FMad(a,b,c)
  %1077 = fmul fast float %1064, %1073
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %1065, float %1074, float %1077)  ; FMad(a,b,c)
  %1079 = fadd fast float %1056, %1076
  %1080 = fadd fast float %1059, %1078
  %1081 = icmp ugt i32 %1030, 1
  %1082 = icmp ugt i32 %1028, 33554431
  %1083 = or i1 %1082, %1081
  br i1 %1083, label %1084, label %1109

; <label>:1084                                    ; preds = %1019
  %1085 = add i32 %71, 148
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = lshr i32 %1087, 16
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = fmul fast float %1052, %1089
  %1091 = call float @dx.op.unary.f32(i32 22, float %1090)  ; Frc(value)
  %1092 = mul nuw nsw i32 %1030, %1031
  %1093 = uitofp i32 %1092 to float
  %1094 = fmul fast float %1091, %1093
  %1095 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1096 = fptoui float %1095 to i32
  %1097 = urem i32 %1096, %1030
  %1098 = udiv i32 %1096, %1031
  %1099 = call float @dx.op.unary.f32(i32 22, float %1079)  ; Frc(value)
  %1100 = call float @dx.op.unary.f32(i32 22, float %1080)  ; Frc(value)
  %1101 = uitofp i32 %1097 to float
  %1102 = uitofp i32 %1098 to float
  %1103 = fadd fast float %1099, %1101
  %1104 = fadd fast float %1100, %1102
  %1105 = uitofp i32 %1030 to float
  %1106 = uitofp i32 %1031 to float
  %1107 = fdiv fast float %1103, %1105
  %1108 = fdiv fast float %1104, %1106
  br label %1109

; <label>:1109                                    ; preds = %1084, %1019
  %1110 = phi float [ %1107, %1084 ], [ %1079, %1019 ]
  %1111 = phi float [ %1108, %1084 ], [ %1080, %1019 ]
  %1112 = and i32 %1013, 16777216
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1223, label %1114

; <label>:1114                                    ; preds = %1109
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1119 = fadd fast float %1116, %154
  %1120 = fadd fast float %1117, %155
  %1121 = fadd fast float %1118, %156
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = call float @dx.op.unary.f32(i32 7, float %1123)  ; Saturate(value)
  %1125 = icmp eq i32 %70, 65535
  br i1 %1125, label %1220, label %1126

; <label>:1126                                    ; preds = %1114
  %1127 = lshr i32 %70, 1
  %1128 = shl i32 %1127, 2
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = and i32 %70, 1
  %1132 = icmp ne i32 %1131, 0
  %1133 = lshr i32 %1130, 16
  %1134 = and i32 %1130, 65535
  %1135 = select i1 %1132, i32 %1133, i32 %1134
  %1136 = icmp eq i32 %1135, 65535
  br i1 %1136, label %1216, label %1137

; <label>:1137                                    ; preds = %1126
  %1138 = mul nuw nsw i32 %1135, 40
  %1139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = add nuw nsw i32 %1138, 12
  %1144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1144, 2
  %1148 = add nuw nsw i32 %1138, 24
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = add nuw nsw i32 %1138, 36
  %1154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = fsub fast float %1119, %1140
  %1157 = fsub fast float %1120, %1141
  %1158 = fsub fast float %1121, %1142
  %1159 = fmul fast float %1155, %1156
  %1160 = fmul fast float %1155, %1157
  %1161 = fmul fast float %1155, %1158
  %1162 = call float @dx.op.unary.f32(i32 27, float %1159)  ; Round_ni(value)
  %1163 = call float @dx.op.unary.f32(i32 27, float %1160)  ; Round_ni(value)
  %1164 = call float @dx.op.unary.f32(i32 27, float %1161)  ; Round_ni(value)
  %1165 = fadd fast float %1162, 5.000000e-01
  %1166 = fadd fast float %1163, 5.000000e-01
  %1167 = fadd fast float %1164, 5.000000e-01
  %1168 = fmul fast float %1165, %1145
  %1169 = fmul fast float %1166, %1146
  %1170 = fmul fast float %1167, %1147
  %1171 = shl i32 %70, 2
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = add i32 %1173, 0
  %1175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1176 = call float @dx.op.unary.f32(i32 22, float %1168)  ; Frc(value)
  %1177 = call float @dx.op.unary.f32(i32 22, float %1169)  ; Frc(value)
  %1178 = call float @dx.op.unary.f32(i32 22, float %1170)  ; Frc(value)
  %1179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1175, %dx.types.Handle %65, float %1176, float %1177, float %1178, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1183 = fmul fast float %1180, 1.023000e+03
  %1184 = fmul fast float %1181, 1.023000e+03
  %1185 = fmul fast float %1182, 1.023000e+03
  %1186 = fadd fast float %1183, 5.000000e-01
  %1187 = fadd fast float %1184, 5.000000e-01
  %1188 = fadd fast float %1185, 5.000000e-01
  %1189 = call float @dx.op.unary.f32(i32 27, float %1186)  ; Round_ni(value)
  %1190 = call float @dx.op.unary.f32(i32 27, float %1187)  ; Round_ni(value)
  %1191 = call float @dx.op.unary.f32(i32 27, float %1188)  ; Round_ni(value)
  %1192 = fsub fast float %1159, %1162
  %1193 = fsub fast float %1160, %1163
  %1194 = fsub fast float %1161, %1164
  %1195 = fmul fast float %1192, 7.500000e-01
  %1196 = fmul fast float %1193, 7.500000e-01
  %1197 = fmul fast float %1194, 7.500000e-01
  %1198 = fadd fast float %1162, 1.250000e-01
  %1199 = fadd fast float %1198, %1195
  %1200 = fadd fast float %1199, %1189
  %1201 = fadd fast float %1163, 1.250000e-01
  %1202 = fadd fast float %1201, %1196
  %1203 = fadd fast float %1202, %1190
  %1204 = fadd fast float %1164, 1.250000e-01
  %1205 = fadd fast float %1204, %1197
  %1206 = fadd fast float %1205, %1191
  %1207 = fmul fast float %1200, %1150
  %1208 = fmul fast float %1203, %1151
  %1209 = fmul fast float %1206, %1152
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = add i32 %1211, 0
  %1213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1213, %dx.types.Handle %63, float %1207, float %1208, float %1209, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  br label %1216

; <label>:1216                                    ; preds = %1137, %1126
  %1217 = phi float [ %1215, %1137 ], [ -1.000000e+00, %1126 ]
  %1218 = fadd fast float %1217, %1124
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  br label %1220

; <label>:1220                                    ; preds = %1216, %1114
  %1221 = phi float [ %1219, %1216 ], [ %1124, %1114 ]
  %1222 = fmul fast float %1221, %91
  br label %1223

; <label>:1223                                    ; preds = %1220, %1109
  %1224 = phi float [ %1222, %1220 ], [ %91, %1109 ]
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 256
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1275, label %1229

; <label>:1229                                    ; preds = %1223
  %1230 = add i32 %71, 236
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = add i32 %1232, 0
  %1234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1234, %dx.types.Handle %104, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = add i32 %71, 84
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = shl i32 %1239, 4
  %1241 = and i32 %1240, 32752
  %1242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1241)  ; LegacyF16ToF32(value)
  %1243 = lshr i32 %1239, 7
  %1244 = and i32 %1243, 32752
  %1245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1244)  ; LegacyF16ToF32(value)
  %1246 = fsub fast float 1.000000e+00, %1224
  %1247 = call float @dx.op.binary.f32(i32 35, float %1246, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1248 = bitcast float %1224 to i32
  %1249 = sitofp i32 %1248 to float
  %1250 = fadd fast float %1249, 0xC1CFBF8940000000
  %1251 = fmul fast float %1245, %1250
  %1252 = fadd fast float %1251, 0x41CFBF8940000000
  %1253 = fptosi float %1252 to i32
  %1254 = bitcast i32 %1253 to float
  %1255 = bitcast float %1247 to i32
  %1256 = sitofp i32 %1255 to float
  %1257 = fadd fast float %1256, 0xC1CFBF8940000000
  %1258 = fmul fast float %1257, %1245
  %1259 = fadd fast float %1258, 0x41CFBF8940000000
  %1260 = fptosi float %1259 to i32
  %1261 = bitcast i32 %1260 to float
  %1262 = fmul fast float %1254, %1242
  %1263 = fmul fast float %1261, %1242
  %1264 = fsub fast float %1247, %1262
  %1265 = fadd fast float %1263, %1247
  %1266 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1267 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1268 = fsub fast float %1236, %1266
  %1269 = fsub fast float %1267, %1266
  %1270 = bitcast float %1269 to i32
  %1271 = sub nsw i32 2129859010, %1270
  %1272 = bitcast i32 %1271 to float
  %1273 = fmul fast float %1272, %1268
  %1274 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  br label %1275

; <label>:1275                                    ; preds = %1229, %1223
  %1276 = phi float [ %1274, %1229 ], [ %1224, %1223 ]
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 128
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1297, label %1281

; <label>:1281                                    ; preds = %1275
  %1282 = add i32 %71, 228
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = add i32 %1284, 0
  %1286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1286, %dx.types.Handle %104, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 524288
  %1292 = icmp ne i32 %1291, 0
  %1293 = fcmp fast ogt float %1288, 0x3FE0101020000000
  %1294 = select i1 %1293, float 1.000000e+00, float 0.000000e+00
  %1295 = select i1 %1292, float %1294, float %1288
  %1296 = fmul fast float %1295, %1276
  br label %1297

; <label>:1297                                    ; preds = %1281, %1275
  %1298 = phi float [ %1296, %1281 ], [ %1276, %1275 ]
  %1299 = fcmp fast ult float %1298, 0x3F70101020000000
  br i1 %1299, label %1842, label %1300

; <label>:1300                                    ; preds = %1297
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 16
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1503, label %1305

; <label>:1305                                    ; preds = %1300
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = add i32 %71, 204
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = add i32 %1310, 0
  %1312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1312, %dx.types.Handle %103, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.ResRet.f32 %1313, 1
  %1316 = extractvalue %dx.types.ResRet.f32 %1313, 2
  %1317 = extractvalue %dx.types.ResRet.f32 %1313, 3
  %1318 = and i32 %1307, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = lshr i32 %1307, 8
  %1321 = and i32 %1320, 255
  %1322 = uitofp i32 %1321 to float
  %1323 = fmul fast float %1317, %1319
  %1324 = fadd fast float %1323, %1322
  %1325 = fmul fast float %1324, 0x3F70101000000000
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 512
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1338, label %1330

; <label>:1330                                    ; preds = %1305
  %1331 = add i32 %71, 244
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = add i32 %1333, 0
  %1335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1335, %dx.types.Handle %104, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  br label %1338

; <label>:1338                                    ; preds = %1330, %1305
  %1339 = phi float [ %1337, %1330 ], [ 1.000000e+00, %1305 ]
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 33554432
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1450, label %1344

; <label>:1344                                    ; preds = %1338
  %1345 = add i32 %71, 144
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = and i32 %1347, 65535
  %1349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1348)  ; LegacyF16ToF32(value)
  %1350 = lshr i32 %1347, 16
  %1351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1350)  ; LegacyF16ToF32(value)
  %1352 = add i32 %71, 148
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %1354, 65535
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = lshr i32 %1358, 24
  %1360 = uitofp i32 %1359 to float
  %1361 = fmul fast float %1360, 0x3F70101020000000
  %1362 = and i32 %1358, 255
  %1363 = uitofp i32 %1362 to float
  %1364 = fmul fast float %1363, 0x3F70101020000000
  %1365 = lshr i32 %1358, 8
  %1366 = and i32 %1365, 255
  %1367 = uitofp i32 %1366 to float
  %1368 = fmul fast float %1367, 0x3F70101020000000
  %1369 = lshr i32 %1358, 16
  %1370 = and i32 %1369, 255
  %1371 = uitofp i32 %1370 to float
  %1372 = fmul fast float %1371, 0x3F70101020000000
  %1373 = add i32 %71, 140
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = lshr i32 %1375, 24
  %1377 = uitofp i32 %1376 to float
  %1378 = fmul fast float %1377, 0x3F70101020000000
  %1379 = and i32 %1375, 255
  %1380 = uitofp i32 %1379 to float
  %1381 = fmul fast float %1380, 0x3F70101020000000
  %1382 = lshr i32 %1375, 8
  %1383 = and i32 %1382, 255
  %1384 = uitofp i32 %1383 to float
  %1385 = fmul fast float %1384, 0x3F70101020000000
  %1386 = lshr i32 %1375, 16
  %1387 = and i32 %1386, 255
  %1388 = uitofp i32 %1387 to float
  %1389 = fmul fast float %1388, 0x3F70101020000000
  %1390 = bitcast float %1314 to i32
  %1391 = ashr i32 %1390, 1
  %1392 = sub nsw i32 1597463174, %1391
  %1393 = bitcast i32 %1392 to float
  %1394 = fmul fast float %1314, 5.000000e-01
  %1395 = fmul fast float %1393, %1393
  %1396 = fmul fast float %1395, %1394
  %1397 = fsub fast float 1.500000e+00, %1396
  %1398 = fmul fast float %1393, %1314
  %1399 = fmul fast float %1398, %1397
  %1400 = bitcast float %1315 to i32
  %1401 = ashr i32 %1400, 1
  %1402 = sub nsw i32 1597463174, %1401
  %1403 = bitcast i32 %1402 to float
  %1404 = fmul fast float %1315, 5.000000e-01
  %1405 = fmul fast float %1403, %1403
  %1406 = fmul fast float %1405, %1404
  %1407 = fsub fast float 1.500000e+00, %1406
  %1408 = fmul fast float %1403, %1315
  %1409 = fmul fast float %1408, %1407
  %1410 = bitcast float %1316 to i32
  %1411 = ashr i32 %1410, 1
  %1412 = sub nsw i32 1597463174, %1411
  %1413 = bitcast i32 %1412 to float
  %1414 = fmul fast float %1316, 5.000000e-01
  %1415 = fmul fast float %1413, %1413
  %1416 = fmul fast float %1415, %1414
  %1417 = fsub fast float 1.500000e+00, %1416
  %1418 = fmul fast float %1413, %1316
  %1419 = fmul fast float %1418, %1417
  %1420 = fsub fast float %1399, %1381
  %1421 = fsub fast float %1409, %1385
  %1422 = fsub fast float %1419, %1389
  %1423 = fmul fast float %1420, %1349
  %1424 = fmul fast float %1421, %1351
  %1425 = fmul fast float %1422, %1356
  %1426 = fadd fast float %1423, %1364
  %1427 = fadd fast float %1424, %1368
  %1428 = fadd fast float %1425, %1372
  %1429 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  %1430 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1431 = call float @dx.op.unary.f32(i32 7, float %1428)  ; Saturate(value)
  %1432 = fmul fast float %1429, %1429
  %1433 = fmul fast float %1430, %1430
  %1434 = fmul fast float %1431, %1431
  %1435 = fsub fast float %1432, %1314
  %1436 = fsub fast float %1433, %1315
  %1437 = fsub fast float %1434, %1316
  %1438 = fmul fast float %1435, %1339
  %1439 = fmul fast float %1436, %1339
  %1440 = fmul fast float %1437, %1339
  %1441 = fadd fast float %1438, %1314
  %1442 = fadd fast float %1439, %1315
  %1443 = fadd fast float %1440, %1316
  %1444 = fadd fast float %1361, %1325
  %1445 = fsub fast float %1444, %1378
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1447 = fsub fast float %1446, %1325
  %1448 = fmul fast float %1447, %1339
  %1449 = fadd fast float %1448, %1325
  br label %1503

; <label>:1450                                    ; preds = %1338
  %1451 = and i32 %1341, 134217728
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1487, label %1453

; <label>:1453                                    ; preds = %1450
  %1454 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1455 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %1456 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %1457 = fadd fast float %1454, -5.000000e-01
  %1458 = fadd fast float %1455, -5.000000e-01
  %1459 = fadd fast float %1456, -5.000000e-01
  %1460 = fmul fast float %1457, %1339
  %1461 = fmul fast float %1458, %1339
  %1462 = fmul fast float %1459, %1339
  %1463 = fadd fast float %1460, 5.000000e-01
  %1464 = fadd fast float %1461, 5.000000e-01
  %1465 = fadd fast float %1462, 5.000000e-01
  %1466 = call float @dx.op.unary.f32(i32 24, float %1314)  ; Sqrt(value)
  %1467 = call float @dx.op.unary.f32(i32 24, float %1315)  ; Sqrt(value)
  %1468 = call float @dx.op.unary.f32(i32 24, float %1316)  ; Sqrt(value)
  %1469 = fmul fast float %1463, 2.000000e+00
  %1470 = fsub fast float 1.000000e+00, %1469
  %1471 = fmul fast float %1470, %1466
  %1472 = fadd fast float %1471, %1469
  %1473 = fmul fast float %1472, %1466
  %1474 = fmul fast float %1464, 2.000000e+00
  %1475 = fsub fast float 1.000000e+00, %1474
  %1476 = fmul fast float %1475, %1467
  %1477 = fadd fast float %1476, %1474
  %1478 = fmul fast float %1477, %1467
  %1479 = fmul fast float %1465, 2.000000e+00
  %1480 = fsub fast float 1.000000e+00, %1479
  %1481 = fmul fast float %1480, %1468
  %1482 = fadd fast float %1481, %1479
  %1483 = fmul fast float %1482, %1468
  %1484 = fmul fast float %1473, %1473
  %1485 = fmul fast float %1478, %1478
  %1486 = fmul fast float %1483, %1483
  br label %1503

; <label>:1487                                    ; preds = %1450
  %1488 = fmul fast float %306, %306
  %1489 = fmul fast float %310, %310
  %1490 = fmul fast float %314, %314
  %1491 = fadd fast float %1488, -1.000000e+00
  %1492 = fadd fast float %1489, -1.000000e+00
  %1493 = fadd fast float %1490, -1.000000e+00
  %1494 = fmul fast float %1339, %1491
  %1495 = fmul fast float %1339, %1492
  %1496 = fmul fast float %1339, %1493
  %1497 = fadd fast float %1494, 1.000000e+00
  %1498 = fadd fast float %1495, 1.000000e+00
  %1499 = fadd fast float %1496, 1.000000e+00
  %1500 = fmul fast float %1497, %1314
  %1501 = fmul fast float %1498, %1315
  %1502 = fmul fast float %1499, %1316
  br label %1503

; <label>:1503                                    ; preds = %1487, %1453, %1344, %1300
  %1504 = phi float [ %1449, %1344 ], [ %1325, %1453 ], [ %1325, %1487 ], [ 0x3FA23C0BE0000000, %1300 ]
  %1505 = phi float [ %1441, %1344 ], [ %1484, %1453 ], [ %1500, %1487 ], [ 1.000000e+00, %1300 ]
  %1506 = phi float [ %1442, %1344 ], [ %1485, %1453 ], [ %1501, %1487 ], [ 1.000000e+00, %1300 ]
  %1507 = phi float [ %1443, %1344 ], [ %1486, %1453 ], [ %1502, %1487 ], [ 1.000000e+00, %1300 ]
  %1508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.i32 %1508, 1
  %1510 = and i32 %1509, 1
  %1511 = icmp ne i32 %1510, 0
  %1512 = add i32 %71, 196
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 32
  %1516 = icmp ne i32 %1515, 0
  %1517 = and i1 %1511, %1516
  %1518 = select i1 %1517, float 1.000000e+00, float %1505
  %1519 = select i1 %1517, float 0x3FD3333340000000, float %1506
  %1520 = select i1 %1517, float 0x3FD3333340000000, float %1507
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 32
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1597, label %1525

; <label>:1525                                    ; preds = %1503
  %1526 = add i32 %71, 76
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %71, 212
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %103, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.ResRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.ResRet.f32 %1534, 2
  %1538 = extractvalue %dx.types.ResRet.f32 %1534, 3
  %1539 = and i32 %1528, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = lshr i32 %1528, 8
  %1542 = and i32 %1541, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = lshr i32 %1528, 16
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = fmul fast float %1546, 0x3F70101000000000
  %1548 = fmul fast float %1535, %1540
  %1549 = fadd fast float %1548, %1543
  %1550 = fmul fast float %1549, 0x3F70101000000000
  %1551 = fadd fast float %1536, -5.000000e-01
  %1552 = fadd fast float %1538, -5.000000e-01
  %1553 = fmul fast float %1551, %1547
  %1554 = fmul fast float %1552, %1547
  %1555 = fadd fast float %1553, 5.000000e-01
  %1556 = fadd fast float %1554, 5.000000e-01
  %1557 = fmul fast float %1555, 2.000000e+00
  %1558 = fadd fast float %1557, -1.000000e+00
  %1559 = fmul fast float %1556, 2.000000e+00
  %1560 = fadd fast float %1559, -1.000000e+00
  %1561 = fadd fast float %1558, %1560
  %1562 = fmul fast float %1561, 5.000000e-01
  %1563 = fsub fast float %1558, %1560
  %1564 = fmul fast float %1563, 5.000000e-01
  %1565 = call float @dx.op.unary.f32(i32 6, float %1562)  ; FAbs(value)
  %1566 = fsub fast float 1.000000e+00, %1565
  %1567 = call float @dx.op.unary.f32(i32 6, float %1564)  ; FAbs(value)
  %1568 = fsub fast float %1566, %1567
  %1569 = call float @dx.op.dot3.f32(i32 55, float %1562, float %1564, float %1568, float %1562, float %1564, float %1568)  ; Dot3(ax,ay,az,bx,by,bz)
  %1570 = call float @dx.op.unary.f32(i32 25, float %1569)  ; Rsqrt(value)
  %1571 = fmul fast float %1562, %1570
  %1572 = fmul fast float %1564, %1570
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 67108864
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1593, label %1577

; <label>:1577                                    ; preds = %1525
  %1578 = add i32 %71, 168
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 65535
  %1582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1581)  ; LegacyF16ToF32(value)
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 65535
  %1586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1585)  ; LegacyF16ToF32(value)
  %1587 = lshr i32 %1580, 16
  %1588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1587)  ; LegacyF16ToF32(value)
  %1589 = fsub fast float %1550, %1588
  %1590 = fmul fast float %1589, %1582
  %1591 = fadd fast float %1590, %1586
  %1592 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  br label %1593

; <label>:1593                                    ; preds = %1577, %1525
  %1594 = phi float [ %1592, %1577 ], [ %1550, %1525 ]
  %1595 = call float @dx.op.dot2.f32(i32 54, float %1571, float %1572, float %72, float %73)  ; Dot2(ax,ay,bx,by)
  %1596 = call float @dx.op.dot2.f32(i32 54, float %1571, float %1572, float %74, float %75)  ; Dot2(ax,ay,bx,by)
  br label %1597

; <label>:1597                                    ; preds = %1593, %1503
  %1598 = phi float [ %1594, %1593 ], [ 0x3FD6666660000000, %1503 ]
  %1599 = phi float [ %1595, %1593 ], [ 0.000000e+00, %1503 ]
  %1600 = phi float [ %1596, %1593 ], [ 0.000000e+00, %1503 ]
  %1601 = phi float [ %1537, %1593 ], [ 1.000000e+00, %1503 ]
  %1602 = add i32 %71, 112
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = lshr i32 %1604, 22
  %1606 = shl nuw nsw i32 %1605, 5
  %1607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1606)  ; LegacyF16ToF32(value)
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 64
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1645, label %1612

; <label>:1612                                    ; preds = %1597
  %1613 = add i32 %71, 220
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = add i32 %1615, 0
  %1617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 131072
  %1621 = icmp eq i32 %1620, 0
  %1622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1617, %dx.types.Handle %103, float %1110, float %1111, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.ResRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1622, 2
  %1626 = fmul fast float %1623, %294
  %1627 = fmul fast float %1624, %297
  %1628 = fmul fast float %1625, %300
  br i1 %1621, label %1635, label %1629

; <label>:1629                                    ; preds = %1612
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = fmul fast float %1631, %1626
  %1633 = fmul fast float %1631, %1627
  %1634 = fmul fast float %1631, %1628
  br label %1635

; <label>:1635                                    ; preds = %1629, %1612
  %1636 = phi float [ %1632, %1629 ], [ %1626, %1612 ]
  %1637 = phi float [ %1633, %1629 ], [ %1627, %1612 ]
  %1638 = phi float [ %1634, %1629 ], [ %1628, %1612 ]
  %1639 = fmul fast float %1636, %1607
  %1640 = select i1 %245, float %1639, float %1636
  %1641 = call float @dx.op.dot3.f32(i32 55, float %1640, float %1637, float %1638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1642 = select i1 %245, float 0.000000e+00, float %1636
  %1643 = select i1 %245, float %1641, float %1637
  %1644 = select i1 %245, float 0.000000e+00, float %1638
  br label %1645

; <label>:1645                                    ; preds = %1635, %1597
  %1646 = phi float [ %1642, %1635 ], [ 0.000000e+00, %1597 ]
  %1647 = phi float [ %1643, %1635 ], [ 0.000000e+00, %1597 ]
  %1648 = phi float [ %1644, %1635 ], [ 0.000000e+00, %1597 ]
  %1649 = add i32 %71, 80
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = and i32 %1651, 255
  %1653 = uitofp i32 %1652 to float
  %1654 = lshr i32 %1651, 8
  %1655 = and i32 %1654, 255
  %1656 = uitofp i32 %1655 to float
  %1657 = call float @dx.op.dot3.f32(i32 55, float %1518, float %1519, float %1520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1658 = fmul fast float %1656, %1657
  %1659 = fadd fast float %1658, %1653
  %1660 = fmul fast float %1659, 0x3F70101020000000
  %1661 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  br i1 %1010, label %1662, label %1670

; <label>:1662                                    ; preds = %1645
  %1663 = fsub fast float 1.000000e+00, %1298
  %1664 = fmul fast float %1663, %999
  %1665 = fmul fast float %1663, %1000
  %1666 = fmul fast float %1663, %1001
  %1667 = fmul fast float %1663, %1002
  %1668 = fmul fast float %1663, %1003
  %1669 = fmul fast float %1663, %1004
  br label %1670

; <label>:1670                                    ; preds = %1662, %1645
  %1671 = phi float [ %1664, %1662 ], [ %999, %1645 ]
  %1672 = phi float [ %1665, %1662 ], [ %1000, %1645 ]
  %1673 = phi float [ %1666, %1662 ], [ %1001, %1645 ]
  %1674 = phi float [ %1667, %1662 ], [ %1002, %1645 ]
  %1675 = phi float [ %1668, %1662 ], [ %1003, %1645 ]
  %1676 = phi float [ %1669, %1662 ], [ %1004, %1645 ]
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = and i32 %1678, 3
  %1680 = icmp eq i32 %1679, 3
  br i1 %1680, label %1759, label %1681

; <label>:1681                                    ; preds = %1670
  %1682 = and i32 %1678, 16
  %1683 = icmp ne i32 %1682, 0
  %1684 = select i1 %1683, float %1298, float 0.000000e+00
  %1685 = icmp eq i32 %1679, 0
  br i1 %1685, label %1686, label %1714

; <label>:1686                                    ; preds = %1681
  %1687 = and i32 %1678, 64
  %1688 = icmp ne i32 %1687, 0
  %1689 = select i1 %1688, float %1298, float 0.000000e+00
  %1690 = fsub fast float %1518, %1671
  %1691 = fsub fast float %1519, %1672
  %1692 = fsub fast float %1520, %1673
  %1693 = fmul fast float %1684, %1690
  %1694 = fmul fast float %1684, %1691
  %1695 = fmul fast float %1684, %1692
  %1696 = fadd fast float %1693, %1671
  %1697 = fadd fast float %1694, %1672
  %1698 = fadd fast float %1695, %1673
  %1699 = fsub fast float %1504, %1005
  %1700 = fmul fast float %1684, %1699
  %1701 = fadd fast float %1700, %1005
  %1702 = fsub fast float %1646, %1674
  %1703 = fsub fast float %1647, %1675
  %1704 = fsub fast float %1648, %1676
  %1705 = fmul fast float %1689, %1702
  %1706 = fmul fast float %1689, %1703
  %1707 = fmul fast float %1689, %1704
  %1708 = fadd fast float %1705, %1674
  %1709 = fadd fast float %1706, %1675
  %1710 = fadd fast float %1707, %1676
  %1711 = fsub fast float %1661, %1009
  %1712 = fmul fast float %1684, %1711
  %1713 = fadd fast float %1712, %1009
  br label %1759

; <label>:1714                                    ; preds = %1681
  %1715 = icmp eq i32 %1679, 1
  br i1 %1715, label %1716, label %1729

; <label>:1716                                    ; preds = %1714
  %1717 = fadd fast float %1518, -1.000000e+00
  %1718 = fadd fast float %1519, -1.000000e+00
  %1719 = fadd fast float %1520, -1.000000e+00
  %1720 = fmul fast float %1684, %1717
  %1721 = fmul fast float %1684, %1718
  %1722 = fmul fast float %1684, %1719
  %1723 = fadd fast float %1720, 1.000000e+00
  %1724 = fadd fast float %1721, 1.000000e+00
  %1725 = fadd fast float %1722, 1.000000e+00
  %1726 = fmul fast float %1723, %1671
  %1727 = fmul fast float %1724, %1672
  %1728 = fmul fast float %1725, %1673
  br label %1759

; <label>:1729                                    ; preds = %1714
  %1730 = icmp eq i32 %1679, 2
  br i1 %1730, label %1731, label %1759

; <label>:1731                                    ; preds = %1729
  %1732 = call float @dx.op.unary.f32(i32 24, float %1518)  ; Sqrt(value)
  %1733 = call float @dx.op.unary.f32(i32 24, float %1519)  ; Sqrt(value)
  %1734 = call float @dx.op.unary.f32(i32 24, float %1520)  ; Sqrt(value)
  %1735 = fadd fast float %1732, -5.000000e-01
  %1736 = fadd fast float %1733, -5.000000e-01
  %1737 = fadd fast float %1734, -5.000000e-01
  %1738 = fmul fast float %1735, %1684
  %1739 = fmul fast float %1736, %1684
  %1740 = fmul fast float %1737, %1684
  %1741 = fadd fast float %1738, 5.000000e-01
  %1742 = fadd fast float %1739, 5.000000e-01
  %1743 = fadd fast float %1740, 5.000000e-01
  %1744 = fmul fast float %1741, 2.000000e+00
  %1745 = fsub fast float 1.000000e+00, %1744
  %1746 = fmul fast float %1745, %1671
  %1747 = fadd fast float %1746, %1744
  %1748 = fmul fast float %1747, %1671
  %1749 = fmul fast float %1742, 2.000000e+00
  %1750 = fsub fast float 1.000000e+00, %1749
  %1751 = fmul fast float %1750, %1672
  %1752 = fadd fast float %1751, %1749
  %1753 = fmul fast float %1752, %1672
  %1754 = fmul fast float %1743, 2.000000e+00
  %1755 = fsub fast float 1.000000e+00, %1754
  %1756 = fmul fast float %1755, %1673
  %1757 = fadd fast float %1756, %1754
  %1758 = fmul fast float %1757, %1673
  br label %1759

; <label>:1759                                    ; preds = %1731, %1729, %1716, %1686, %1670
  %1760 = phi float [ %1671, %1670 ], [ %1748, %1731 ], [ %1671, %1729 ], [ %1726, %1716 ], [ %1696, %1686 ]
  %1761 = phi float [ %1672, %1670 ], [ %1753, %1731 ], [ %1672, %1729 ], [ %1727, %1716 ], [ %1697, %1686 ]
  %1762 = phi float [ %1673, %1670 ], [ %1758, %1731 ], [ %1673, %1729 ], [ %1728, %1716 ], [ %1698, %1686 ]
  %1763 = phi float [ %1674, %1670 ], [ %1674, %1731 ], [ %1674, %1729 ], [ %1674, %1716 ], [ %1708, %1686 ]
  %1764 = phi float [ %1675, %1670 ], [ %1675, %1731 ], [ %1675, %1729 ], [ %1675, %1716 ], [ %1709, %1686 ]
  %1765 = phi float [ %1676, %1670 ], [ %1676, %1731 ], [ %1676, %1729 ], [ %1676, %1716 ], [ %1710, %1686 ]
  %1766 = phi float [ %1005, %1670 ], [ %1005, %1731 ], [ %1005, %1729 ], [ %1005, %1716 ], [ %1701, %1686 ]
  %1767 = phi float [ %1009, %1670 ], [ %1009, %1731 ], [ %1009, %1729 ], [ %1009, %1716 ], [ %1713, %1686 ]
  %1768 = and i32 %1678, 12
  %1769 = icmp eq i32 %1768, 12
  br i1 %1769, label %1842, label %1770

; <label>:1770                                    ; preds = %1759
  %1771 = and i32 %1678, 2097184
  %1772 = icmp eq i32 %1771, 2097184
  %1773 = select i1 %1772, float %1298, float 0.000000e+00
  %1774 = and i32 %1678, 4194336
  %1775 = icmp eq i32 %1774, 4194336
  %1776 = select i1 %1775, float %1298, float 0.000000e+00
  %1777 = and i32 %1678, 8388640
  %1778 = icmp eq i32 %1777, 8388640
  %1779 = select i1 %1778, float %1298, float 0.000000e+00
  %1780 = icmp eq i32 %1768, 0
  br i1 %1780, label %1781, label %1794

; <label>:1781                                    ; preds = %1770
  %1782 = fsub fast float %1599, %997
  %1783 = fsub fast float %1600, %998
  %1784 = fmul fast float %1773, %1782
  %1785 = fmul fast float %1773, %1783
  %1786 = fadd fast float %1784, %997
  %1787 = fadd fast float %1785, %998
  %1788 = fsub fast float %1601, %1008
  %1789 = fmul fast float %1776, %1788
  %1790 = fadd fast float %1789, %1008
  %1791 = fsub fast float %1598, %1007
  %1792 = fmul fast float %1779, %1791
  %1793 = fadd fast float %1792, %1007
  br label %1842

; <label>:1794                                    ; preds = %1770
  %1795 = icmp eq i32 %1768, 4
  br i1 %1795, label %1796, label %1828

; <label>:1796                                    ; preds = %1794
  %1797 = fmul fast float %1773, %1599
  %1798 = fmul fast float %1773, %1600
  %1799 = fadd fast float %1797, %997
  %1800 = fadd fast float %1798, %998
  %1801 = call float @dx.op.binary.f32(i32 36, float %1008, float %1601)  ; FMin(a,b)
  %1802 = fsub fast float %1801, %1008
  %1803 = fmul fast float %1802, %1776
  %1804 = fadd fast float %1803, %1008
  %1805 = fadd fast float %1598, %1007
  %1806 = fmul fast float %1805, 0x3FF337FAE0000000
  %1807 = fmul fast float %1007, %1007
  %1808 = fmul fast float %1598, %1598
  %1809 = fadd fast float %1808, %1807
  %1810 = fmul fast float %1809, 0x3FE5152B00000000
  %1811 = fmul fast float %1007, 0xBFCC1F85E0000000
  %1812 = fmul fast float %1811, %1598
  %1813 = fadd fast float %1812, 0xBFE1363700000000
  %1814 = fadd fast float %1813, %1806
  %1815 = fsub fast float %1814, %1810
  %1816 = fmul fast float %1805, 0x3FBA6F0D00000000
  %1817 = fmul fast float %1809, 0x3FD0432880000000
  %1818 = fmul fast float %1007, 0xBFEF110800000000
  %1819 = fmul fast float %1818, %1598
  %1820 = fadd fast float %1819, 1.000000e+00
  %1821 = fsub fast float %1820, %1816
  %1822 = fadd fast float %1821, %1817
  %1823 = fdiv fast float %1815, %1822
  %1824 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1825 = fsub fast float %1824, %1007
  %1826 = fmul fast float %1825, %1779
  %1827 = fadd fast float %1826, %1007
  br label %1842

; <label>:1828                                    ; preds = %1794
  %1829 = icmp eq i32 %1768, 8
  br i1 %1829, label %1830, label %1842

; <label>:1830                                    ; preds = %1828
  %1831 = fmul fast float %1773, %1599
  %1832 = fmul fast float %1773, %1600
  %1833 = fadd fast float %1831, %997
  %1834 = fadd fast float %1832, %998
  %1835 = call float @dx.op.binary.f32(i32 36, float %1008, float %1601)  ; FMin(a,b)
  %1836 = fsub fast float %1835, %1008
  %1837 = fmul fast float %1836, %1776
  %1838 = fadd fast float %1837, %1008
  %1839 = fsub fast float %1598, %1007
  %1840 = fmul fast float %1779, %1839
  %1841 = fadd fast float %1840, %1007
  br label %1842

; <label>:1842                                    ; preds = %1830, %1828, %1796, %1781, %1759, %1297, %996
  %1843 = phi float [ %997, %1759 ], [ %997, %1297 ], [ %997, %996 ], [ %1786, %1781 ], [ %1799, %1796 ], [ %997, %1828 ], [ %1833, %1830 ]
  %1844 = phi float [ %998, %1759 ], [ %998, %1297 ], [ %998, %996 ], [ %1787, %1781 ], [ %1800, %1796 ], [ %998, %1828 ], [ %1834, %1830 ]
  %1845 = phi float [ %1760, %1759 ], [ %999, %1297 ], [ %999, %996 ], [ %1760, %1781 ], [ %1760, %1796 ], [ %1760, %1828 ], [ %1760, %1830 ]
  %1846 = phi float [ %1761, %1759 ], [ %1000, %1297 ], [ %1000, %996 ], [ %1761, %1781 ], [ %1761, %1796 ], [ %1761, %1828 ], [ %1761, %1830 ]
  %1847 = phi float [ %1762, %1759 ], [ %1001, %1297 ], [ %1001, %996 ], [ %1762, %1781 ], [ %1762, %1796 ], [ %1762, %1828 ], [ %1762, %1830 ]
  %1848 = phi float [ %1763, %1759 ], [ %1002, %1297 ], [ %1002, %996 ], [ %1763, %1781 ], [ %1763, %1796 ], [ %1763, %1828 ], [ %1763, %1830 ]
  %1849 = phi float [ %1764, %1759 ], [ %1003, %1297 ], [ %1003, %996 ], [ %1764, %1781 ], [ %1764, %1796 ], [ %1764, %1828 ], [ %1764, %1830 ]
  %1850 = phi float [ %1765, %1759 ], [ %1004, %1297 ], [ %1004, %996 ], [ %1765, %1781 ], [ %1765, %1796 ], [ %1765, %1828 ], [ %1765, %1830 ]
  %1851 = phi float [ %1766, %1759 ], [ %1005, %1297 ], [ %1005, %996 ], [ %1766, %1781 ], [ %1766, %1796 ], [ %1766, %1828 ], [ %1766, %1830 ]
  %1852 = phi float [ %1007, %1759 ], [ %1007, %1297 ], [ %1007, %996 ], [ %1793, %1781 ], [ %1827, %1796 ], [ %1007, %1828 ], [ %1841, %1830 ]
  %1853 = phi float [ %1008, %1759 ], [ %1008, %1297 ], [ %1008, %996 ], [ %1790, %1781 ], [ %1804, %1796 ], [ %1008, %1828 ], [ %1838, %1830 ]
  %1854 = phi float [ %1767, %1759 ], [ %1009, %1297 ], [ %1009, %996 ], [ %1767, %1781 ], [ %1767, %1796 ], [ %1767, %1828 ], [ %1767, %1830 ]
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 0
  %1857 = call float @dx.op.dot2.f32(i32 54, float %1843, float %1844, float %1843, float %1844)  ; Dot2(ax,ay,bx,by)
  %1858 = fmul fast float %1857, 0x3FE3333340000000
  %1859 = fsub fast float 1.000000e+00, %1858
  %1860 = call float @dx.op.dot3.f32(i32 55, float %1843, float %1844, float %1859, float %1843, float %1844, float %1859)  ; Dot3(ax,ay,az,bx,by,bz)
  %1861 = call float @dx.op.unary.f32(i32 25, float %1860)  ; Rsqrt(value)
  %1862 = fmul fast float %1861, %1843
  %1863 = fmul fast float %1861, %1844
  %1864 = fmul fast float %1859, %1861
  %1865 = fmul fast float %1864, %80
  %1866 = fmul fast float %1864, %81
  %1867 = fmul fast float %1864, %82
  %1868 = fmul fast float %1862, %76
  %1869 = fmul fast float %1862, %77
  %1870 = fmul fast float %1862, %78
  %1871 = fadd fast float %1865, %1868
  %1872 = fadd fast float %1866, %1869
  %1873 = fadd fast float %1867, %1870
  %1874 = fmul fast float %1863, %118
  %1875 = fmul fast float %1863, %119
  %1876 = fmul fast float %1863, %120
  %1877 = fadd fast float %1871, %1874
  %1878 = fadd fast float %1872, %1875
  %1879 = fadd fast float %1873, %1876
  %1880 = call float @dx.op.dot3.f32(i32 55, float %1877, float %1878, float %1879, float %1877, float %1878, float %1879)  ; Dot3(ax,ay,az,bx,by,bz)
  %1881 = call float @dx.op.unary.f32(i32 25, float %1880)  ; Rsqrt(value)
  %1882 = fmul fast float %1877, %1881
  %1883 = fmul fast float %1878, %1881
  %1884 = fmul fast float %1879, %1881
  %1885 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %1886 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %1887 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %1888 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %1889 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %1890 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %1891 = fadd fast float %1885, %154
  %1892 = fadd fast float %1886, %155
  %1893 = fadd fast float %1887, %156
  %1894 = fadd fast float %1888, %154
  %1895 = fadd fast float %1889, %155
  %1896 = fadd fast float %1890, %156
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.CBufRet.f32 %1897, 1
  %1900 = extractvalue %dx.types.CBufRet.f32 %1897, 2
  %1901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1902 = extractvalue %dx.types.CBufRet.f32 %1901, 2
  %1903 = extractvalue %dx.types.CBufRet.f32 %1901, 3
  %1904 = fmul fast float %1898, %107
  %1905 = fmul fast float %1904, %1902
  %1906 = fmul fast float %1899, %108
  %1907 = fmul fast float %1906, %1903
  %1908 = fptoui float %1905 to i32
  %1909 = fptoui float %1907 to i32
  %1910 = fadd fast float %1898, -1.000000e+00
  %1911 = fadd fast float %1899, -1.000000e+00
  %1912 = fptoui float %1910 to i32
  %1913 = fptoui float %1911 to i32
  %1914 = call i32 @dx.op.binary.i32(i32 40, i32 %1908, i32 %1912)  ; UMin(a,b)
  %1915 = call i32 @dx.op.binary.i32(i32 40, i32 %1909, i32 %1913)  ; UMin(a,b)
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 2
  %1918 = extractvalue %dx.types.CBufRet.f32 %1916, 3
  %1919 = fmul fast float %1917, %95
  %1920 = fsub fast float %1919, %1918
  %1921 = fadd fast float %1900, -1.000000e+00
  %1922 = call float @dx.op.binary.f32(i32 36, float %1920, float %1921)  ; FMin(a,b)
  %1923 = fptoui float %1922 to i32
  %1924 = fptoui float %1898 to i32
  %1925 = fptoui float %1899 to i32
  %1926 = mul i32 %1923, %1925
  %1927 = add i32 %1926, %1915
  %1928 = mul i32 %1927, %1924
  %1929 = add i32 %1928, %1914
  %1930 = shl i32 %1929, 2
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = and i32 %1932, 1023
  %1934 = lshr i32 %1932, 10
  %1935 = icmp eq i32 %1933, 0
  br i1 %1935, label %2364, label %1936

; <label>:1936                                    ; preds = %1842
  %1937 = and i32 %1932, 1023
  br label %1938

; <label>:1938                                    ; preds = %2065, %1936
  %1939 = phi float [ %2066, %2065 ], [ 0.000000e+00, %1936 ]
  %1940 = phi float [ %2067, %2065 ], [ %1006, %1936 ]
  %1941 = phi float [ %2068, %2065 ], [ %1856, %1936 ]
  %1942 = phi float [ %2069, %2065 ], [ %1854, %1936 ]
  %1943 = phi float [ %2070, %2065 ], [ 0.000000e+00, %1936 ]
  %1944 = phi float [ %2071, %2065 ], [ 0.000000e+00, %1936 ]
  %1945 = phi float [ %2072, %2065 ], [ %1848, %1936 ]
  %1946 = phi float [ %2073, %2065 ], [ %1849, %1936 ]
  %1947 = phi float [ %2074, %2065 ], [ %1850, %1936 ]
  %1948 = phi float [ %2075, %2065 ], [ %1882, %1936 ]
  %1949 = phi float [ %2076, %2065 ], [ %1883, %1936 ]
  %1950 = phi float [ %2077, %2065 ], [ %1884, %1936 ]
  %1951 = phi float [ %2078, %2065 ], [ %1853, %1936 ]
  %1952 = phi float [ %2079, %2065 ], [ %1852, %1936 ]
  %1953 = phi float [ %2080, %2065 ], [ 0.000000e+00, %1936 ]
  %1954 = phi float [ %2081, %2065 ], [ %1851, %1936 ]
  %1955 = phi float [ %2082, %2065 ], [ %1845, %1936 ]
  %1956 = phi float [ %2083, %2065 ], [ %1846, %1936 ]
  %1957 = phi float [ %2084, %2065 ], [ %1847, %1936 ]
  %1958 = phi i32 [ %2015, %2065 ], [ 0, %1936 ]
  %1959 = add nuw nsw i32 %1958, %1934
  %1960 = shl i32 %1959, 2
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = shl i32 %1962, 8
  %1964 = or i32 %1963, 48
  %1965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1967 = extractvalue %dx.types.ResRet.f32 %1965, 1
  %1968 = extractvalue %dx.types.ResRet.f32 %1965, 2
  %1969 = extractvalue %dx.types.ResRet.f32 %1965, 3
  %1970 = or i32 %1963, 64
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = extractvalue %dx.types.ResRet.i32 %1971, 1
  %1974 = or i32 %1963, 80
  %1975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 2
  %1977 = extractvalue %dx.types.ResRet.f32 %1975, 3
  %1978 = or i32 %1963, 96
  %1979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.f32 %1979, 0
  %1981 = extractvalue %dx.types.ResRet.f32 %1979, 1
  %1982 = extractvalue %dx.types.ResRet.f32 %1979, 2
  %1983 = extractvalue %dx.types.ResRet.f32 %1979, 3
  %1984 = or i32 %1963, 112
  %1985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 2
  %1987 = or i32 %1963, 128
  %1988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.ResRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.ResRet.f32 %1988, 2
  %1992 = extractvalue %dx.types.ResRet.f32 %1988, 3
  %1993 = or i32 %1963, 144
  %1994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 0
  %1996 = extractvalue %dx.types.ResRet.f32 %1994, 1
  %1997 = extractvalue %dx.types.ResRet.f32 %1994, 2
  %1998 = extractvalue %dx.types.ResRet.f32 %1994, 3
  %1999 = or i32 %1963, 160
  %2000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.ResRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.ResRet.f32 %2000, 2
  %2004 = extractvalue %dx.types.ResRet.f32 %2000, 3
  %2005 = or i32 %1963, 192
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = or i32 %1963, 208
  %2009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.f32 %2009, 0
  %2011 = or i32 %1963, 248
  %2012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = extractvalue %dx.types.ResRet.f32 %2012, 1
  %2015 = add nuw nsw i32 %1958, 1
  %2016 = bitcast float %1969 to i32
  %2017 = and i32 %2016, 2560
  %2018 = icmp eq i32 %2017, 0
  %2019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.ResRet.f32 %2019, 1
  %2022 = extractvalue %dx.types.ResRet.f32 %2019, 2
  %2023 = extractvalue %dx.types.ResRet.f32 %2019, 3
  %2024 = call float @dx.op.dot4.f32(i32 56, float %2020, float %2021, float %2022, float %2023, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2025 = or i32 %1963, 16
  %2026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = extractvalue %dx.types.ResRet.f32 %2026, 1
  %2029 = extractvalue %dx.types.ResRet.f32 %2026, 2
  %2030 = extractvalue %dx.types.ResRet.f32 %2026, 3
  %2031 = call float @dx.op.dot4.f32(i32 56, float %2027, float %2028, float %2029, float %2030, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2032 = or i32 %1963, 32
  %2033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.f32 %2033, 0
  %2035 = extractvalue %dx.types.ResRet.f32 %2033, 1
  %2036 = extractvalue %dx.types.ResRet.f32 %2033, 2
  %2037 = extractvalue %dx.types.ResRet.f32 %2033, 3
  %2038 = call float @dx.op.dot4.f32(i32 56, float %2034, float %2035, float %2036, float %2037, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2039 = call float @dx.op.unary.f32(i32 27, float %2024)  ; Round_ni(value)
  %2040 = call float @dx.op.unary.f32(i32 6, float %2039)  ; FAbs(value)
  %2041 = call float @dx.op.unary.f32(i32 27, float %2031)  ; Round_ni(value)
  %2042 = call float @dx.op.unary.f32(i32 6, float %2041)  ; FAbs(value)
  %2043 = call float @dx.op.unary.f32(i32 6, float %2038)  ; FAbs(value)
  %2044 = call float @dx.op.unary.f32(i32 27, float %2043)  ; Round_ni(value)
  %2045 = fadd fast float %2042, %2040
  %2046 = fadd fast float %2045, %2044
  %2047 = fcmp fast oeq float %2046, 0.000000e+00
  %2048 = call float @dx.op.dot4.f32(i32 56, float %2020, float %2021, float %2022, float %2023, float %1891, float %1892, float %1893, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2049 = call float @dx.op.dot4.f32(i32 56, float %2027, float %2028, float %2029, float %2030, float %1891, float %1892, float %1893, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2050 = call float @dx.op.dot4.f32(i32 56, float %2020, float %2021, float %2022, float %2023, float %1894, float %1895, float %1896, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2051 = call float @dx.op.dot4.f32(i32 56, float %2027, float %2028, float %2029, float %2030, float %1894, float %1895, float %1896, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2052 = fsub fast float %2048, %2024
  %2053 = fsub fast float %2050, %2024
  %2054 = fsub fast float %2049, %2031
  %2055 = fsub fast float %2051, %2031
  %2056 = call float @dx.op.dot3.f32(i32 55, float %1966, float %1967, float %1968, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 2
  %2059 = fadd fast float %2058, %2056
  %2060 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  %2061 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2062 = fcmp fast ogt float %2060, %2061
  %2063 = and i1 %2047, %2062
  %2064 = and i1 %2018, %2063
  br i1 %2064, label %2086, label %2065

; <label>:2065                                    ; preds = %2350, %2167, %2086, %1938
  %2066 = phi float [ %1939, %2086 ], [ %2170, %2167 ], [ %2170, %2350 ], [ %1939, %1938 ]
  %2067 = phi float [ %1940, %2086 ], [ %1940, %2167 ], [ %2325, %2350 ], [ %1940, %1938 ]
  %2068 = phi float [ %1941, %2086 ], [ %1941, %2167 ], [ %2324, %2350 ], [ %1941, %1938 ]
  %2069 = phi float [ %1942, %2086 ], [ %1942, %2167 ], [ %2322, %2350 ], [ %1942, %1938 ]
  %2070 = phi float [ %1943, %2086 ], [ %1943, %2167 ], [ %2294, %2350 ], [ %1943, %1938 ]
  %2071 = phi float [ %1944, %2086 ], [ %1944, %2167 ], [ %2292, %2350 ], [ %1944, %1938 ]
  %2072 = phi float [ %1945, %2086 ], [ %1945, %2167 ], [ %2360, %2350 ], [ %1945, %1938 ]
  %2073 = phi float [ %1946, %2086 ], [ %1946, %2167 ], [ %2361, %2350 ], [ %1946, %1938 ]
  %2074 = phi float [ %1947, %2086 ], [ %1947, %2167 ], [ %2362, %2350 ], [ %1947, %1938 ]
  %2075 = phi float [ %1948, %2086 ], [ %1948, %2167 ], [ %2273, %2350 ], [ %1948, %1938 ]
  %2076 = phi float [ %1949, %2086 ], [ %1949, %2167 ], [ %2274, %2350 ], [ %1949, %1938 ]
  %2077 = phi float [ %1950, %2086 ], [ %1950, %2167 ], [ %2275, %2350 ], [ %1950, %1938 ]
  %2078 = phi float [ %1951, %2086 ], [ %1951, %2167 ], [ %2302, %2350 ], [ %1951, %1938 ]
  %2079 = phi float [ %1952, %2086 ], [ %1952, %2167 ], [ %2299, %2350 ], [ %1952, %1938 ]
  %2080 = phi float [ %1953, %2086 ], [ %1953, %2167 ], [ %2296, %2350 ], [ %1953, %1938 ]
  %2081 = phi float [ %1954, %2086 ], [ %1954, %2167 ], [ %2290, %2350 ], [ %1954, %1938 ]
  %2082 = phi float [ %1955, %2086 ], [ %1955, %2167 ], [ %2285, %2350 ], [ %1955, %1938 ]
  %2083 = phi float [ %1956, %2086 ], [ %1956, %2167 ], [ %2286, %2350 ], [ %1956, %1938 ]
  %2084 = phi float [ %1957, %2086 ], [ %1957, %2167 ], [ %2287, %2350 ], [ %1957, %1938 ]
  %2085 = icmp eq i32 %2015, %1937
  br i1 %2085, label %2363, label %1938

; <label>:2086                                    ; preds = %1938
  %2087 = extractvalue %dx.types.ResRet.f32 %1985, 3
  %2088 = extractvalue %dx.types.ResRet.f32 %1985, 1
  %2089 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %2090 = extractvalue %dx.types.ResRet.f32 %1975, 1
  %2091 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %2092 = extractvalue %dx.types.ResRet.i32 %1971, 3
  %2093 = extractvalue %dx.types.ResRet.i32 %1971, 2
  %2094 = add i32 %2092, 0
  %2095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2094, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2097 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2095, %dx.types.Handle %2096, float %2024, float %2031, float undef, float undef, i32 0, i32 0, i32 undef, float %2052, float %2054, float undef, float %2053, float %2055, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  %2099 = fmul fast float %2098, %2091
  %2100 = fadd fast float %2099, %2090
  %2101 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2102 = fmul fast float %2024, %1980
  %2103 = call float @dx.op.tertiary.f32(i32 46, float %1981, float %2031, float %2102)  ; FMad(a,b,c)
  %2104 = fadd fast float %2103, %2089
  %2105 = fmul fast float %2024, %1982
  %2106 = call float @dx.op.tertiary.f32(i32 46, float %1983, float %2031, float %2105)  ; FMad(a,b,c)
  %2107 = fadd fast float %2106, %2088
  %2108 = fmul fast float %2052, %1980
  %2109 = call float @dx.op.tertiary.f32(i32 46, float %1981, float %2054, float %2108)  ; FMad(a,b,c)
  %2110 = fmul fast float %2052, %1982
  %2111 = call float @dx.op.tertiary.f32(i32 46, float %1983, float %2054, float %2110)  ; FMad(a,b,c)
  %2112 = fmul fast float %2053, %1980
  %2113 = call float @dx.op.tertiary.f32(i32 46, float %1981, float %2055, float %2112)  ; FMad(a,b,c)
  %2114 = fmul fast float %2053, %1982
  %2115 = call float @dx.op.tertiary.f32(i32 46, float %1983, float %2055, float %2114)  ; FMad(a,b,c)
  %2116 = add i32 %2093, 0
  %2117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2116, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2118 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2117, %dx.types.Handle %2096, float %2104, float %2107, float undef, float undef, i32 0, i32 0, i32 undef, float %2109, float %2111, float undef, float %2113, float %2115, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = and i32 %2016, 1024
  %2121 = icmp ne i32 %2120, 0
  %2122 = fcmp fast ogt float %2119, 0x3FE0101020000000
  %2123 = uitofp i1 %2122 to float
  %2124 = select i1 %2121, float %2123, float %2119
  %2125 = and i32 %2016, 8192
  %2126 = icmp ne i32 %2125, 0
  %2127 = select i1 %2126, float %2087, float 1.000000e+00
  %2128 = fmul fast float %2024, 2.000000e+00
  %2129 = fadd fast float %2128, -1.000000e+00
  %2130 = call float @dx.op.unary.f32(i32 6, float %2129)  ; FAbs(value)
  %2131 = fmul fast float %2130, %2013
  %2132 = fsub fast float %2131, %2013
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2134 = fmul fast float %2031, 2.000000e+00
  %2135 = fadd fast float %2134, -1.000000e+00
  %2136 = call float @dx.op.unary.f32(i32 6, float %2135)  ; FAbs(value)
  %2137 = fmul fast float %2136, %2014
  %2138 = fsub fast float %2137, %2014
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = fmul fast float %2043, %1976
  %2141 = fsub fast float %2140, %1976
  %2142 = call float @dx.op.unary.f32(i32 7, float %2141)  ; Saturate(value)
  %2143 = fmul fast float %2101, %2127
  %2144 = fmul fast float %2143, %2098
  %2145 = fmul fast float %2144, %2133
  %2146 = fmul fast float %2145, %2124
  %2147 = fmul fast float %2146, %2139
  %2148 = fmul fast float %2147, %2142
  %2149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2150 = extractvalue %dx.types.CBufRet.f32 %2149, 1
  %2151 = extractvalue %dx.types.CBufRet.f32 %2149, 0
  %2152 = fsub fast float %2060, %2151
  %2153 = fmul fast float %2152, %2150
  %2154 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2155 = fmul fast float %2148, %1977
  %2156 = fadd fast float %2148, %1977
  %2157 = fmul fast float %2156, %1986
  %2158 = fsub fast float %2157, %1986
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2160 = and i32 %2016, 128
  %2161 = icmp ne i32 %2160, 0
  %2162 = select i1 %2161, float %2159, float %2155
  %2163 = fmul fast float %2162, %2154
  %2164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2164, 0
  %2166 = fcmp fast ugt float %2163, %2165
  br i1 %2166, label %2167, label %2065

; <label>:2167                                    ; preds = %2086
  %2168 = select i1 %2126, float %2163, float 0.000000e+00
  %2169 = fadd fast float %2168, %1939
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  br i1 %2126, label %2065, label %2171

; <label>:2171                                    ; preds = %2167
  %2172 = and i32 %2016, 4
  %2173 = and i32 %2016, 8
  %2174 = add i32 %1972, 0
  %2175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2174, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2177 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2175, %dx.types.Handle %2176, float %2104, float %2107, float undef, float undef, i32 0, i32 0, i32 undef, float %2109, float %2111, float undef, float %2113, float %2115, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2178 = extractvalue %dx.types.ResRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.ResRet.f32 %2177, 1
  %2180 = extractvalue %dx.types.ResRet.f32 %2177, 2
  %2181 = extractvalue %dx.types.ResRet.f32 %2177, 3
  %2182 = bitcast float %1998 to i32
  %2183 = and i32 %2182, 255
  %2184 = uitofp i32 %2183 to float
  %2185 = lshr i32 %2182, 8
  %2186 = and i32 %2185, 255
  %2187 = uitofp i32 %2186 to float
  %2188 = fmul fast float %2181, %2184
  %2189 = fadd fast float %2188, %2187
  %2190 = fmul fast float %2189, 0x3F70101000000000
  %2191 = add i32 %1973, 0
  %2192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2191, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2193 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2192, %dx.types.Handle %2176, float %2104, float %2107, float undef, float undef, i32 0, i32 0, i32 undef, float %2109, float %2111, float undef, float %2113, float %2115, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2194 = extractvalue %dx.types.ResRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.ResRet.f32 %2193, 1
  %2196 = extractvalue %dx.types.ResRet.f32 %2193, 2
  %2197 = extractvalue %dx.types.ResRet.f32 %2193, 3
  %2198 = bitcast float %1992 to i32
  %2199 = and i32 %2198, 255
  %2200 = uitofp i32 %2199 to float
  %2201 = lshr i32 %2198, 8
  %2202 = and i32 %2201, 255
  %2203 = uitofp i32 %2202 to float
  %2204 = lshr i32 %2198, 16
  %2205 = and i32 %2204, 255
  %2206 = uitofp i32 %2205 to float
  %2207 = fmul fast float %2206, 0x3F70101000000000
  %2208 = fmul fast float %2194, %2200
  %2209 = fadd fast float %2208, %2203
  %2210 = fmul fast float %2209, 0x3F70101000000000
  %2211 = fadd fast float %2195, -5.000000e-01
  %2212 = fadd fast float %2197, -5.000000e-01
  %2213 = fmul fast float %2211, %2207
  %2214 = fmul fast float %2212, %2207
  %2215 = fadd fast float %2213, 5.000000e-01
  %2216 = fadd fast float %2214, 5.000000e-01
  %2217 = fmul fast float %2178, %2001
  %2218 = fmul fast float %2179, %2002
  %2219 = fmul fast float %2180, %2003
  %2220 = fmul fast float %2215, 2.000000e+00
  %2221 = fadd fast float %2220, -1.000000e+00
  %2222 = fmul fast float %2216, 2.000000e+00
  %2223 = fadd fast float %2222, -1.000000e+00
  %2224 = fadd fast float %2221, %2223
  %2225 = fmul fast float %2224, 5.000000e-01
  %2226 = fsub fast float %2221, %2223
  %2227 = fmul fast float %2226, 5.000000e-01
  %2228 = call float @dx.op.unary.f32(i32 6, float %2225)  ; FAbs(value)
  %2229 = fsub fast float 1.000000e+00, %2228
  %2230 = call float @dx.op.unary.f32(i32 6, float %2227)  ; FAbs(value)
  %2231 = fsub fast float %2229, %2230
  %2232 = call float @dx.op.dot3.f32(i32 55, float %2225, float %2227, float %2231, float %2225, float %2227, float %2231)  ; Dot3(ax,ay,az,bx,by,bz)
  %2233 = call float @dx.op.unary.f32(i32 25, float %2232)  ; Rsqrt(value)
  %2234 = fmul fast float %2225, %2233
  %2235 = fmul fast float %2227, %2233
  %2236 = fmul fast float %2233, %2231
  %2237 = fmul fast float %2236, %1966
  %2238 = fmul fast float %2236, %1967
  %2239 = fmul fast float %2236, %1968
  %2240 = fmul fast float %2234, %1989
  %2241 = fmul fast float %2234, %1990
  %2242 = fmul fast float %2234, %1991
  %2243 = fadd fast float %2240, %2237
  %2244 = fadd fast float %2241, %2238
  %2245 = fadd fast float %2242, %2239
  %2246 = fmul fast float %2235, %1995
  %2247 = fmul fast float %2235, %1996
  %2248 = fmul fast float %2235, %1997
  %2249 = fadd fast float %2243, %2246
  %2250 = fadd fast float %2244, %2247
  %2251 = fadd fast float %2245, %2248
  %2252 = call float @dx.op.dot3.f32(i32 55, float %2249, float %2250, float %2251, float %2249, float %2250, float %2251)  ; Dot3(ax,ay,az,bx,by,bz)
  %2253 = call float @dx.op.unary.f32(i32 25, float %2252)  ; Rsqrt(value)
  %2254 = fmul fast float %2249, %2253
  %2255 = fmul fast float %2250, %2253
  %2256 = fmul fast float %2251, %2253
  %2257 = icmp ne i32 %2173, 0
  %2258 = select i1 %2257, float 1.000000e+00, float 0.000000e+00
  %2259 = fmul fast float %2163, %2258
  %2260 = and i32 %2016, 1
  %2261 = icmp eq i32 %2260, 0
  br i1 %2261, label %2262, label %2266

; <label>:2262                                    ; preds = %2171
  %2263 = fsub fast float %2254, %1948
  %2264 = fsub fast float %2255, %1949
  %2265 = fsub fast float %2256, %1950
  br label %2266

; <label>:2266                                    ; preds = %2262, %2171
  %2267 = phi float [ %2263, %2262 ], [ %2254, %2171 ]
  %2268 = phi float [ %2264, %2262 ], [ %2255, %2171 ]
  %2269 = phi float [ %2265, %2262 ], [ %2256, %2171 ]
  %2270 = fmul float %2269, %2259
  %2271 = fmul float %2268, %2259
  %2272 = fmul float %2267, %2259
  %2273 = fadd fast float %2272, %1948
  %2274 = fadd fast float %2271, %1949
  %2275 = fadd fast float %2270, %1950
  %2276 = icmp ne i32 %2172, 0
  %2277 = select i1 %2276, float 1.000000e+00, float 0.000000e+00
  %2278 = fmul fast float %2163, %2277
  %2279 = fsub fast float %2217, %1955
  %2280 = fsub fast float %2218, %1956
  %2281 = fsub fast float %2219, %1957
  %2282 = fmul fast float %2279, %2278
  %2283 = fmul fast float %2280, %2278
  %2284 = fmul fast float %2281, %2278
  %2285 = fadd fast float %2282, %1955
  %2286 = fadd fast float %2283, %1956
  %2287 = fadd fast float %2284, %1957
  %2288 = fsub fast float %2190, %1954
  %2289 = fmul fast float %2288, %2278
  %2290 = fadd fast float %2289, %1954
  %2291 = fmul fast float %2278, %1944
  %2292 = fsub fast float %1944, %2291
  %2293 = fmul fast float %2278, %1943
  %2294 = fsub fast float %1943, %2293
  %2295 = fadd fast float %2163, %1953
  %2296 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  %2297 = fsub fast float %2210, %1952
  %2298 = fmul fast float %2297, %2259
  %2299 = fadd fast float %2298, %1952
  %2300 = fsub fast float %2196, %1951
  %2301 = fmul fast float %2300, %2259
  %2302 = fadd fast float %2301, %1951
  %2303 = call float @dx.op.dot3.f32(i32 55, float %2217, float %2218, float %2219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.CBufRet.f32 %2304, 1
  %2307 = fmul fast float %2306, %2303
  %2308 = fadd fast float %2307, %2305
  %2309 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2310 = bitcast float %2004 to i32
  %2311 = and i32 %2310, 65535
  %2312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2311)  ; LegacyF16ToF32(value)
  %2313 = lshr i32 %2310, 16
  %2314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2313)  ; LegacyF16ToF32(value)
  %2315 = fcmp fast oge float %2312, 0.000000e+00
  %2316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.f32 %2316, 0
  %2318 = select i1 %2315, float %2312, float %2317
  %2319 = fadd fast float %2318, %2314
  %2320 = fsub fast float %2309, %1942
  %2321 = fmul fast float %2320, %2163
  %2322 = fadd fast float %2321, %1942
  %2323 = fmul fast float %2319, %2163
  %2324 = call float @dx.op.binary.f32(i32 35, float %1941, float %2323)  ; FMax(a,b)
  %2325 = call float @dx.op.binary.f32(i32 35, float %1940, float %2163)  ; FMax(a,b)
  %2326 = and i32 %2016, 16
  %2327 = icmp eq i32 %2326, 0
  br i1 %2327, label %2350, label %2328

; <label>:2328                                    ; preds = %2266
  %2329 = bitcast float %2010 to i32
  %2330 = add i32 %2007, 0
  %2331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2330, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2332 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2331, %dx.types.Handle %2176, float %2104, float %2107, float undef, float undef, i32 0, i32 0, i32 undef, float %2109, float %2111, float undef, float %2113, float %2115, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 0
  %2334 = extractvalue %dx.types.ResRet.f32 %2332, 1
  %2335 = extractvalue %dx.types.ResRet.f32 %2332, 2
  %2336 = and i32 %2329, 65535
  %2337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2336)  ; LegacyF16ToF32(value)
  %2338 = fmul fast float %2333, %2001
  %2339 = fmul fast float %2334, %2002
  %2340 = fmul fast float %2335, %2003
  %2341 = and i32 %2016, 16384
  %2342 = icmp ne i32 %2341, 0
  %2343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2344 = extractvalue %dx.types.CBufRet.f32 %2343, 0
  %2345 = select i1 %2342, float %2344, float 1.000000e+00
  %2346 = fmul fast float %2345, %2337
  %2347 = fmul fast float %2338, %2346
  %2348 = fmul fast float %2339, %2346
  %2349 = fmul fast float %2340, %2346
  br label %2350

; <label>:2350                                    ; preds = %2328, %2266
  %2351 = phi float [ %2347, %2328 ], [ 0.000000e+00, %2266 ]
  %2352 = phi float [ %2348, %2328 ], [ 0.000000e+00, %2266 ]
  %2353 = phi float [ %2349, %2328 ], [ 0.000000e+00, %2266 ]
  %2354 = fsub fast float %2351, %1945
  %2355 = fsub fast float %2352, %1946
  %2356 = fsub fast float %2353, %1947
  %2357 = fmul fast float %2354, %2163
  %2358 = fmul fast float %2355, %2163
  %2359 = fmul fast float %2356, %2163
  %2360 = fadd fast float %2357, %1945
  %2361 = fadd fast float %2358, %1946
  %2362 = fadd fast float %2359, %1947
  br label %2065

; <label>:2363                                    ; preds = %2065
  br label %2364

; <label>:2364                                    ; preds = %2363, %1842
  %2365 = phi float [ 0.000000e+00, %1842 ], [ %2066, %2363 ]
  %2366 = phi float [ %1006, %1842 ], [ %2067, %2363 ]
  %2367 = phi float [ %1856, %1842 ], [ %2068, %2363 ]
  %2368 = phi float [ %1854, %1842 ], [ %2069, %2363 ]
  %2369 = phi float [ 0.000000e+00, %1842 ], [ %2070, %2363 ]
  %2370 = phi float [ 0.000000e+00, %1842 ], [ %2071, %2363 ]
  %2371 = phi float [ %1848, %1842 ], [ %2072, %2363 ]
  %2372 = phi float [ %1849, %1842 ], [ %2073, %2363 ]
  %2373 = phi float [ %1850, %1842 ], [ %2074, %2363 ]
  %2374 = phi float [ %1882, %1842 ], [ %2075, %2363 ]
  %2375 = phi float [ %1883, %1842 ], [ %2076, %2363 ]
  %2376 = phi float [ %1884, %1842 ], [ %2077, %2363 ]
  %2377 = phi float [ %1853, %1842 ], [ %2078, %2363 ]
  %2378 = phi float [ %1852, %1842 ], [ %2079, %2363 ]
  %2379 = phi float [ 0.000000e+00, %1842 ], [ %2080, %2363 ]
  %2380 = phi float [ %1851, %1842 ], [ %2081, %2363 ]
  %2381 = phi float [ %1845, %1842 ], [ %2082, %2363 ]
  %2382 = phi float [ %1846, %1842 ], [ %2083, %2363 ]
  %2383 = phi float [ %1847, %1842 ], [ %2084, %2363 ]
  %2384 = call float @dx.op.dot3.f32(i32 55, float %2374, float %2375, float %2376, float %2374, float %2375, float %2376)  ; Dot3(ax,ay,az,bx,by,bz)
  %2385 = call float @dx.op.unary.f32(i32 25, float %2384)  ; Rsqrt(value)
  %2386 = fmul fast float %2385, %2374
  %2387 = fmul fast float %2385, %2375
  %2388 = fmul fast float %2385, %2376
  %2389 = fadd fast float %2379, %1006
  %2390 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2391 = call float @dx.op.dot3.f32(i32 55, float %2386, float %2387, float %2388, float %2386, float %2387, float %2388)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = call float @dx.op.unary.f32(i32 25, float %2391)  ; Rsqrt(value)
  %2393 = fmul fast float %2392, %2386
  %2394 = fmul fast float %2392, %2387
  %2395 = fmul fast float %2392, %2388
  %2396 = fadd fast float %2380, 0xBFB99999A0000000
  %2397 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  %2398 = fmul fast float %2397, 0x3FF1C71C80000000
  %2399 = call float @dx.op.binary.f32(i32 36, float %2380, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2400 = fsub fast float 1.000000e+00, %2398
  %2401 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  %2402 = fmul fast float %2401, %2381
  %2403 = fmul fast float %2401, %2382
  %2404 = fmul fast float %2401, %2383
  %2405 = call float @dx.op.unary.f32(i32 7, float %2402)  ; Saturate(value)
  %2406 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  %2407 = call float @dx.op.unary.f32(i32 7, float %2404)  ; Saturate(value)
  %2408 = fmul fast float %2398, %2381
  %2409 = fmul fast float %2398, %2382
  %2410 = fmul fast float %2398, %2383
  %2411 = fadd fast float %2408, %2399
  %2412 = fadd fast float %2409, %2399
  %2413 = fadd fast float %2410, %2399
  %2414 = call float @dx.op.unary.f32(i32 7, float %2411)  ; Saturate(value)
  %2415 = call float @dx.op.unary.f32(i32 7, float %2412)  ; Saturate(value)
  %2416 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  %2417 = call float @dx.op.unary.f32(i32 7, float %2378)  ; Saturate(value)
  %2418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.i32 %2418, 3
  %2420 = and i32 %2419, 8
  %2421 = icmp ne i32 %2420, 0
  %2422 = call float @dx.op.binary.f32(i32 35, float %2405, float %2381)  ; FMax(a,b)
  %2423 = call float @dx.op.binary.f32(i32 35, float %2406, float %2381)  ; FMax(a,b)
  %2424 = call float @dx.op.binary.f32(i32 35, float %2407, float %2381)  ; FMax(a,b)
  %2425 = call float @dx.op.dot3.f32(i32 55, float %2405, float %2406, float %2407, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2426 = select i1 %245, float %2381, float %2405
  %2427 = select i1 %245, float %2425, float %2406
  %2428 = select i1 %245, float 1.000000e+00, float %2407
  %2429 = select i1 %2421, float %2422, float %2426
  %2430 = select i1 %2421, float %2423, float %2427
  %2431 = select i1 %2421, float %2424, float %2428
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 0
  %2434 = extractvalue %dx.types.CBufRet.f32 %2432, 1
  %2435 = extractvalue %dx.types.CBufRet.f32 %2432, 2
  %2436 = fadd fast float %2433, %154
  %2437 = fadd fast float %2434, %155
  %2438 = fadd fast float %2435, %156
  %2439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2439, 0
  %2441 = extractvalue %dx.types.CBufRet.f32 %2439, 1
  %2442 = fsub fast float %2436, %2440
  %2443 = fsub fast float %2437, %2441
  %2444 = fmul fast float %2442, %2442
  %2445 = fmul fast float %2443, %2443
  %2446 = fadd fast float %2444, %2445
  %2447 = call float @dx.op.unary.f32(i32 24, float %2446)  ; Sqrt(value)
  %2448 = extractvalue %dx.types.CBufRet.f32 %2439, 2
  %2449 = fcmp fast olt float %2447, %2448
  br i1 %2449, label %2450, label %2517

; <label>:2450                                    ; preds = %2364
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 0
  %2453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2453, 0
  %2455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2456 = extractvalue %dx.types.CBufRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.CBufRet.f32 %2451, 1
  %2458 = extractvalue %dx.types.CBufRet.f32 %2453, 1
  %2459 = extractvalue %dx.types.CBufRet.f32 %2455, 1
  %2460 = extractvalue %dx.types.CBufRet.f32 %2451, 3
  %2461 = extractvalue %dx.types.CBufRet.f32 %2453, 3
  %2462 = extractvalue %dx.types.CBufRet.f32 %2455, 3
  %2463 = fadd fast float %2460, %2436
  %2464 = fadd fast float %2461, %2437
  %2465 = fadd fast float %2462, %2438
  %2466 = fmul fast float %2463, %2452
  %2467 = call float @dx.op.tertiary.f32(i32 46, float %2464, float %2454, float %2466)  ; FMad(a,b,c)
  %2468 = call float @dx.op.tertiary.f32(i32 46, float %2465, float %2456, float %2467)  ; FMad(a,b,c)
  %2469 = fmul fast float %2463, %2457
  %2470 = call float @dx.op.tertiary.f32(i32 46, float %2464, float %2458, float %2469)  ; FMad(a,b,c)
  %2471 = call float @dx.op.tertiary.f32(i32 46, float %2465, float %2459, float %2470)  ; FMad(a,b,c)
  %2472 = fsub fast float %2468, %2460
  %2473 = fsub fast float %2471, %2461
  %2474 = fsub fast float %2472, %2440
  %2475 = fadd fast float %2474, %2448
  %2476 = fsub fast float %2473, %2441
  %2477 = fadd fast float %2476, %2448
  %2478 = extractvalue %dx.types.CBufRet.f32 %2439, 3
  %2479 = fmul fast float %2475, %2478
  %2480 = fmul fast float %2477, %2478
  %2481 = call float @dx.op.unary.f32(i32 7, float %2479)  ; Saturate(value)
  %2482 = call float @dx.op.unary.f32(i32 7, float %2480)  ; Saturate(value)
  %2483 = fsub fast float 1.000000e+00, %2481
  %2484 = fsub fast float 1.000000e+00, %2482
  %2485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %2483, float %2484, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2486 = extractvalue %dx.types.ResRet.f32 %2485, 0
  %2487 = fcmp fast ugt float %2486, 0.000000e+00
  br i1 %2487, label %2488, label %2791

; <label>:2488                                    ; preds = %2450
  %2489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2490 = extractvalue %dx.types.CBufRet.f32 %2489, 2
  %2491 = fmul fast float %2490, %2486
  %2492 = extractvalue %dx.types.CBufRet.f32 %2489, 3
  %2493 = fadd fast float %2492, %2491
  %2494 = extractvalue %dx.types.CBufRet.f32 %2455, 2
  %2495 = fadd fast float %2493, %2462
  %2496 = fmul fast float %2468, %2456
  %2497 = call float @dx.op.tertiary.f32(i32 46, float %2471, float %2459, float %2496)  ; FMad(a,b,c)
  %2498 = call float @dx.op.tertiary.f32(i32 46, float %2495, float %2494, float %2497)  ; FMad(a,b,c)
  %2499 = fsub fast float %2498, %2462
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 2
  %2502 = fsub fast float %2499, %2501
  %2503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %2483, float %2484, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2504 = extractvalue %dx.types.ResRet.f32 %2503, 0
  %2505 = extractvalue %dx.types.ResRet.f32 %2503, 1
  %2506 = extractvalue %dx.types.ResRet.f32 %2503, 2
  %2507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %2483, float %2484, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2508 = extractvalue %dx.types.ResRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.ResRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.ResRet.f32 %2507, 2
  %2511 = fadd fast float %2508, %2504
  %2512 = fmul fast float %2511, 0x3F847AE140000000
  %2513 = fadd fast float %2509, %2505
  %2514 = fmul fast float %2513, 0x3F847AE140000000
  %2515 = fadd fast float %2510, %2506
  %2516 = fmul fast float %2515, 0x3F847AE140000000
  br label %2791

; <label>:2517                                    ; preds = %2364
  %2518 = and i32 %221, 1
  %2519 = icmp eq i32 %2518, 0
  br i1 %2519, label %2791, label %2520

; <label>:2520                                    ; preds = %2517
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2524 = extractvalue %dx.types.CBufRet.f32 %2523, 0
  %2525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2526 = extractvalue %dx.types.CBufRet.f32 %2525, 0
  %2527 = extractvalue %dx.types.CBufRet.f32 %2521, 1
  %2528 = extractvalue %dx.types.CBufRet.f32 %2523, 1
  %2529 = extractvalue %dx.types.CBufRet.f32 %2525, 1
  %2530 = extractvalue %dx.types.CBufRet.f32 %2521, 3
  %2531 = extractvalue %dx.types.CBufRet.f32 %2523, 3
  %2532 = extractvalue %dx.types.CBufRet.f32 %2525, 3
  %2533 = fadd fast float %2530, %2436
  %2534 = fadd fast float %2531, %2437
  %2535 = fadd fast float %2532, %2438
  %2536 = fmul fast float %2533, %2522
  %2537 = call float @dx.op.tertiary.f32(i32 46, float %2534, float %2524, float %2536)  ; FMad(a,b,c)
  %2538 = call float @dx.op.tertiary.f32(i32 46, float %2535, float %2526, float %2537)  ; FMad(a,b,c)
  %2539 = fmul fast float %2533, %2527
  %2540 = call float @dx.op.tertiary.f32(i32 46, float %2534, float %2528, float %2539)  ; FMad(a,b,c)
  %2541 = call float @dx.op.tertiary.f32(i32 46, float %2535, float %2529, float %2540)  ; FMad(a,b,c)
  %2542 = fsub fast float %2538, %2530
  %2543 = fsub fast float %2541, %2531
  %2544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2545 = extractvalue %dx.types.CBufRet.f32 %2544, 0
  %2546 = extractvalue %dx.types.CBufRet.f32 %2544, 1
  %2547 = extractvalue %dx.types.CBufRet.f32 %2544, 2
  %2548 = extractvalue %dx.types.CBufRet.f32 %2544, 3
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 3
  %2551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2552 = extractvalue %dx.types.CBufRet.i32 %2551, 0
  %2553 = extractvalue %dx.types.CBufRet.i32 %2551, 1
  %2554 = udiv i32 %2553, %2552
  %2555 = fsub fast float %2542, %2545
  %2556 = fsub fast float %2543, %2546
  %2557 = call float @dx.op.binary.f32(i32 35, float %2555, float 0.000000e+00)  ; FMax(a,b)
  %2558 = call float @dx.op.binary.f32(i32 35, float %2556, float 0.000000e+00)  ; FMax(a,b)
  %2559 = call float @dx.op.binary.f32(i32 36, float %2557, float %2547)  ; FMin(a,b)
  %2560 = call float @dx.op.binary.f32(i32 36, float %2558, float %2548)  ; FMin(a,b)
  %2561 = add i32 %2552, -1
  %2562 = add i32 %2554, -1
  %2563 = fmul fast float %2559, %2550
  %2564 = fmul fast float %2560, %2550
  %2565 = fptoui float %2563 to i32
  %2566 = fptoui float %2564 to i32
  %2567 = call i32 @dx.op.binary.i32(i32 40, i32 %2565, i32 %2561)  ; UMin(a,b)
  %2568 = call i32 @dx.op.binary.i32(i32 40, i32 %2566, i32 %2562)  ; UMin(a,b)
  %2569 = mul i32 %2568, %2552
  %2570 = add i32 %2569, %2567
  %2571 = shl i32 %2570, 2
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = icmp eq i32 %2573, -1
  br i1 %2574, label %2791, label %2575

; <label>:2575                                    ; preds = %2520
  %2576 = mul i32 %2573, 148
  %2577 = add i32 %2576, 4
  %2578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.f32 %2578, 0
  %2580 = add i32 %2576, 8
  %2581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.f32 %2581, 0
  %2583 = add i32 %2576, 36
  %2584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.f32 %2584, 0
  %2586 = add i32 %2576, 60
  %2587 = add i32 %2576, 92
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = add i32 %2576, 116
  %2591 = fsub fast float %2542, %2579
  %2592 = fsub fast float %2543, %2582
  %2593 = fmul fast float %2550, %2591
  %2594 = fmul fast float %2550, %2592
  %2595 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  %2596 = call float @dx.op.unary.f32(i32 7, float %2594)  ; Saturate(value)
  %2597 = fsub fast float 1.000000e+00, %2596
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 2
  %2600 = call float @dx.op.unary.f32(i32 83, float %2595)  ; DerivCoarseX(value)
  %2601 = call float @dx.op.unary.f32(i32 83, float %2597)  ; DerivCoarseX(value)
  %2602 = call float @dx.op.unary.f32(i32 84, float %2595)  ; DerivCoarseY(value)
  %2603 = call float @dx.op.unary.f32(i32 84, float %2597)  ; DerivCoarseY(value)
  %2604 = fmul fast float %2600, %2599
  %2605 = fmul fast float %2601, %2599
  %2606 = fmul fast float %2602, %2599
  %2607 = fmul fast float %2603, %2599
  %2608 = call float @dx.op.dot2.f32(i32 54, float %2606, float %2607, float %2606, float %2607)  ; Dot2(ax,ay,bx,by)
  %2609 = call float @dx.op.dot2.f32(i32 54, float %2604, float %2605, float %2604, float %2605)  ; Dot2(ax,ay,bx,by)
  %2610 = call float @dx.op.binary.f32(i32 35, float %2609, float %2608)  ; FMax(a,b)
  %2611 = call float @dx.op.unary.f32(i32 23, float %2610)  ; Log(value)
  %2612 = fmul fast float %2611, 5.000000e-01
  %2613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2613, 1
  %2615 = fadd fast float %2614, %2612
  %2616 = call float @dx.op.binary.f32(i32 35, float %2615, float 0.000000e+00)  ; FMax(a,b)
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 3
  %2619 = fadd fast float %2618, %2616
  %2620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2621 = extractvalue %dx.types.CBufRet.f32 %2620, 3
  %2622 = fadd fast float %2619, %2621
  %2623 = add i32 %2589, 0
  %2624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2623, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2625 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2624, i32 0)  ; GetDimensions(handle,mipLevel)
  %2626 = extractvalue %dx.types.Dimensions %2625, 0
  %2627 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2626)  ; FirstbitLo(value)
  %2628 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2629 = extractvalue %dx.types.CBufRet.i32 %2628, 1
  %2630 = sub nsw i32 %2629, %2627
  %2631 = sitofp i32 %2630 to float
  %2632 = fsub fast float %2622, %2631
  %2633 = call float @dx.op.binary.f32(i32 35, float %2632, float 0.000000e+00)  ; FMax(a,b)
  %2634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2624, %dx.types.Handle %62, float %2595, float %2597, float %2585, float undef, i32 0, i32 0, i32 undef, float %2633)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2635 = extractvalue %dx.types.ResRet.f32 %2634, 0
  %2636 = fcmp ule float %2635, 0x3FE0101020000000
  %2637 = extractvalue %dx.types.CBufRet.i32 %2628, 0
  %2638 = and i32 %2637, 128
  %2639 = icmp ne i32 %2638, 0
  %2640 = and i1 %2636, %2639
  br i1 %2640, label %2791, label %2641

; <label>:2641                                    ; preds = %2575
  %2642 = add i32 %2576, 20
  %2643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.f32 %2643, 0
  %2645 = add i32 %2576, 24
  %2646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = add i32 %2576, 40
  %2649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = add i32 %2576, 96
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2655 = extractvalue %dx.types.CBufRet.f32 %2654, 2
  %2656 = fmul fast float %2655, %2595
  %2657 = fmul fast float %2655, %2597
  %2658 = extractvalue %dx.types.CBufRet.f32 %2654, 3
  %2659 = fadd fast float %2656, %2658
  %2660 = fadd fast float %2657, %2658
  %2661 = add i32 %2653, 0
  %2662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2661, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2663 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2662, i32 0)  ; GetDimensions(handle,mipLevel)
  %2664 = extractvalue %dx.types.Dimensions %2663, 0
  %2665 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2664)  ; FirstbitLo(value)
  %2666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.i32 %2666, 1
  %2668 = sub nsw i32 %2667, %2665
  %2669 = sitofp i32 %2668 to float
  %2670 = fsub fast float %2619, %2669
  %2671 = call float @dx.op.binary.f32(i32 35, float %2670, float 0.000000e+00)  ; FMax(a,b)
  %2672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2662, %dx.types.Handle %62, float %2659, float %2660, float %2650, float undef, i32 0, i32 0, i32 undef, float %2671)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2673 = extractvalue %dx.types.ResRet.f32 %2672, 0
  %2674 = fmul fast float %2673, %2644
  %2675 = fadd fast float %2674, %2647
  %2676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2677 = extractvalue %dx.types.CBufRet.f32 %2676, 0
  %2678 = extractvalue %dx.types.CBufRet.f32 %2676, 1
  %2679 = extractvalue %dx.types.CBufRet.f32 %2676, 2
  %2680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2681 = extractvalue %dx.types.CBufRet.f32 %2680, 3
  %2682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2683 = extractvalue %dx.types.CBufRet.f32 %2682, 3
  %2684 = extractvalue %dx.types.CBufRet.f32 %2676, 3
  %2685 = fadd fast float %2681, %2542
  %2686 = fadd fast float %2683, %2543
  %2687 = fadd fast float %2675, %2684
  %2688 = fmul fast float %2685, %2677
  %2689 = call float @dx.op.tertiary.f32(i32 46, float %2686, float %2678, float %2688)  ; FMad(a,b,c)
  %2690 = call float @dx.op.tertiary.f32(i32 46, float %2687, float %2679, float %2689)  ; FMad(a,b,c)
  %2691 = fsub fast float %2690, %2684
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 2
  %2694 = fsub fast float %2691, %2693
  %2695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2696 = extractvalue %dx.types.CBufRet.i32 %2695, 0
  %2697 = call i32 @dx.op.binary.i32(i32 40, i32 %2573, i32 %2696)  ; UMin(a,b)
  %2698 = mul i32 %2697, 36
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2698, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = add i32 %2698, 4
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 0
  %2704 = fmul fast float %2703, %2595
  %2705 = fmul fast float %2703, %2597
  %2706 = extractvalue %dx.types.CBufRet.f32 %2702, 1
  %2707 = fadd fast float %2704, %2706
  %2708 = fadd fast float %2705, %2706
  %2709 = icmp eq i32 %2700, 0
  br i1 %2709, label %2778, label %2710

; <label>:2710                                    ; preds = %2641
  br label %2711

; <label>:2711                                    ; preds = %2768, %2710
  %2712 = phi float [ %2769, %2768 ], [ 0.000000e+00, %2710 ]
  %2713 = phi float [ %2770, %2768 ], [ 0.000000e+00, %2710 ]
  %2714 = phi float [ %2771, %2768 ], [ 0.000000e+00, %2710 ]
  %2715 = phi float [ %2772, %2768 ], [ 0.000000e+00, %2710 ]
  %2716 = phi float [ %2773, %2768 ], [ 0.000000e+00, %2710 ]
  %2717 = phi float [ %2774, %2768 ], [ 0.000000e+00, %2710 ]
  %2718 = phi i32 [ %2775, %2768 ], [ 0, %2710 ]
  %2719 = shl i32 %2718, 2
  %2720 = add i32 %2586, %2719
  %2721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.f32 %2721, 0
  %2723 = add i32 %2590, %2719
  %2724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 0
  %2726 = add i32 %2725, 0
  %2727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2726, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2728 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2727, i32 0)  ; GetDimensions(handle,mipLevel)
  %2729 = extractvalue %dx.types.Dimensions %2728, 0
  %2730 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2729)  ; FirstbitLo(value)
  %2731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.i32 %2731, 1
  %2733 = sub nsw i32 %2732, %2730
  %2734 = sitofp i32 %2733 to float
  %2735 = fsub fast float %2619, %2734
  %2736 = call float @dx.op.binary.f32(i32 35, float %2735, float 0.000000e+00)  ; FMax(a,b)
  %2737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2727, %dx.types.Handle %62, float %2707, float %2708, float %2722, float undef, i32 0, i32 0, i32 undef, float %2736)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2738 = extractvalue %dx.types.ResRet.f32 %2737, 0
  %2739 = fcmp fast ogt float %2738, 0.000000e+00
  br i1 %2739, label %2740, label %2768

; <label>:2740                                    ; preds = %2711
  %2741 = add i32 %2701, %2719
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 32767
  %2745 = mul nuw nsw i32 %2744, 928
  %2746 = add nuw nsw i32 %2745, 48
  %2747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.ResRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.ResRet.f32 %2747, 2
  %2751 = add nuw nsw i32 %2745, 60
  %2752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.ResRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.ResRet.f32 %2752, 2
  %2756 = fmul fast float %2748, %2738
  %2757 = fmul fast float %2749, %2738
  %2758 = fmul fast float %2750, %2738
  %2759 = fadd fast float %2756, %2712
  %2760 = fadd fast float %2757, %2713
  %2761 = fadd fast float %2758, %2714
  %2762 = fmul fast float %2753, %2738
  %2763 = fmul fast float %2754, %2738
  %2764 = fmul fast float %2755, %2738
  %2765 = fadd fast float %2762, %2715
  %2766 = fadd fast float %2763, %2716
  %2767 = fadd fast float %2764, %2717
  br label %2768

; <label>:2768                                    ; preds = %2740, %2711
  %2769 = phi float [ %2759, %2740 ], [ %2712, %2711 ]
  %2770 = phi float [ %2760, %2740 ], [ %2713, %2711 ]
  %2771 = phi float [ %2761, %2740 ], [ %2714, %2711 ]
  %2772 = phi float [ %2765, %2740 ], [ %2715, %2711 ]
  %2773 = phi float [ %2766, %2740 ], [ %2716, %2711 ]
  %2774 = phi float [ %2767, %2740 ], [ %2717, %2711 ]
  %2775 = add nuw i32 %2718, 1
  %2776 = icmp eq i32 %2775, %2700
  br i1 %2776, label %2777, label %2711

; <label>:2777                                    ; preds = %2768
  br label %2778

; <label>:2778                                    ; preds = %2777, %2641
  %2779 = phi float [ 0.000000e+00, %2641 ], [ %2769, %2777 ]
  %2780 = phi float [ 0.000000e+00, %2641 ], [ %2770, %2777 ]
  %2781 = phi float [ 0.000000e+00, %2641 ], [ %2771, %2777 ]
  %2782 = phi float [ 0.000000e+00, %2641 ], [ %2772, %2777 ]
  %2783 = phi float [ 0.000000e+00, %2641 ], [ %2773, %2777 ]
  %2784 = phi float [ 0.000000e+00, %2641 ], [ %2774, %2777 ]
  %2785 = fadd fast float %2782, %2779
  %2786 = fmul fast float %2785, 0x3F847AE140000000
  %2787 = fadd fast float %2783, %2780
  %2788 = fmul fast float %2787, 0x3F847AE140000000
  %2789 = fadd fast float %2784, %2781
  %2790 = fmul fast float %2789, 0x3F847AE140000000
  br label %2791

; <label>:2791                                    ; preds = %2778, %2575, %2520, %2517, %2488, %2450
  %2792 = phi float [ %2502, %2488 ], [ -1.310720e+05, %2450 ], [ %2694, %2778 ], [ -1.310720e+05, %2520 ], [ -1.310720e+05, %2575 ], [ -1.310720e+05, %2517 ]
  %2793 = phi float [ %2512, %2488 ], [ 0.000000e+00, %2450 ], [ %2786, %2778 ], [ 0.000000e+00, %2520 ], [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2517 ]
  %2794 = phi float [ %2514, %2488 ], [ 0.000000e+00, %2450 ], [ %2788, %2778 ], [ 0.000000e+00, %2520 ], [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2517 ]
  %2795 = phi float [ %2516, %2488 ], [ 0.000000e+00, %2450 ], [ %2790, %2778 ], [ 0.000000e+00, %2520 ], [ 0.000000e+00, %2575 ], [ 0.000000e+00, %2517 ]
  %2796 = phi i1 [ true, %2488 ], [ false, %2450 ], [ true, %2778 ], [ false, %2520 ], [ false, %2575 ], [ false, %2517 ]
  %2797 = and i32 %221, 3
  %2798 = icmp eq i32 %2797, 1
  %2799 = select i1 %2798, float 1.000000e+00, float 0.000000e+00
  %2800 = fsub fast float %2792, %156
  %2801 = call float @dx.op.unary.f32(i32 7, float %2800)  ; Saturate(value)
  %2802 = select i1 %2796, float %2801, float 1.000000e+00
  %2803 = fmul fast float %2802, %2799
  %2804 = icmp eq i32 %2797, 3
  %2805 = select i1 %2804, float 1.000000e+00, float %2803
  %2806 = call float @dx.op.binary.f32(i32 35, float %2365, float %2805)  ; FMax(a,b)
  %2807 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  %2808 = fcmp fast une float %2807, 0.000000e+00
  %2809 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %2810 = call float @dx.op.unary.f32(i32 25, float %2809)  ; Rsqrt(value)
  br i1 %2808, label %2818, label %2811

; <label>:2811                                    ; preds = %2791
  %2812 = fmul fast float %2810, %154
  %2813 = fmul fast float %2810, %155
  %2814 = fmul fast float %2810, %156
  %2815 = fsub fast float -0.000000e+00, %2812
  %2816 = fsub fast float -0.000000e+00, %2813
  %2817 = fsub fast float -0.000000e+00, %2814
  br label %2986

; <label>:2818                                    ; preds = %2791
  %2819 = fmul fast float %154, %2810
  %2820 = fsub fast float -0.000000e+00, %2819
  %2821 = fmul fast float %155, %2810
  %2822 = fsub fast float -0.000000e+00, %2821
  %2823 = fmul fast float %156, %2810
  %2824 = fsub fast float -0.000000e+00, %2823
  %2825 = call float @dx.op.dot3.f32(i32 55, float %2820, float %2822, float %2824, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %2826 = fmul fast float %2807, 2.500000e+00
  %2827 = call float @dx.op.unary.f32(i32 7, float %2826)  ; Saturate(value)
  %2828 = fmul fast float %2807, 0x4013FFFFE0000000
  %2829 = fadd fast float %2828, 0xBFFFFFFFE0000000
  %2830 = call float @dx.op.unary.f32(i32 7, float %2829)  ; Saturate(value)
  %2831 = fmul fast float %2807, 0x4004000020000000
  %2832 = fadd fast float %2831, 0xBFF8000040000000
  %2833 = call float @dx.op.unary.f32(i32 7, float %2832)  ; Saturate(value)
  %2834 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2835 = fmul fast float %2396, 1.000000e+01
  %2836 = call float @dx.op.unary.f32(i32 7, float %2835)  ; Saturate(value)
  %2837 = fmul fast float %2836, 2.000000e+00
  %2838 = fsub fast float 3.000000e+00, %2837
  %2839 = fmul fast float %2836, %2836
  %2840 = fmul fast float %2839, %2838
  %2841 = fsub fast float 1.000000e+00, %2840
  %2842 = fsub fast float 0x3FE3333340000000, %2417
  %2843 = fmul fast float %2842, 0x400AAAAAA0000000
  %2844 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2845 = fmul fast float %2841, %2844
  %2846 = fmul fast float %2429, 0x3FEA2B8620000000
  %2847 = fmul fast float %2430, 0x3FEA2B8620000000
  %2848 = fmul fast float %2431, 0x3FEA2B8620000000
  %2849 = fadd fast float %2846, 0x3FC81DFBA0000000
  %2850 = fmul fast float %2849, %2429
  %2851 = fadd fast float %2850, 0x3F910E6020000000
  %2852 = fadd fast float %2847, 0x3FC81DFBA0000000
  %2853 = fmul fast float %2852, %2430
  %2854 = fadd fast float %2853, 0x3F910E6020000000
  %2855 = fadd fast float %2848, 0x3FC81DFBA0000000
  %2856 = fmul fast float %2855, %2431
  %2857 = fadd fast float %2856, 0x3F910E6020000000
  %2858 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2859 = call float @dx.op.unary.f32(i32 7, float %2854)  ; Saturate(value)
  %2860 = call float @dx.op.unary.f32(i32 7, float %2857)  ; Saturate(value)
  %2861 = fsub fast float %2858, %2429
  %2862 = fsub fast float %2859, %2430
  %2863 = fsub fast float %2860, %2431
  %2864 = fmul fast float %2861, %2834
  %2865 = fmul fast float %2864, %2845
  %2866 = fmul fast float %2862, %2834
  %2867 = fmul fast float %2866, %2845
  %2868 = fmul fast float %2863, %2834
  %2869 = fmul fast float %2868, %2845
  %2870 = fadd fast float %2865, %2429
  %2871 = fadd fast float %2867, %2430
  %2872 = fadd fast float %2869, %2431
  %2873 = fmul fast float %2377, %2377
  %2874 = fmul fast float %2873, %2873
  %2875 = fadd fast float %2830, 1.000000e+00
  %2876 = fsub fast float %2875, %2845
  %2877 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2878 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2879 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2880 = fsub fast float 1.000000e+00, %2874
  %2881 = call float @dx.op.binary.f32(i32 36, float %2877, float %2880)  ; FMin(a,b)
  %2882 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2883 = call float @dx.op.binary.f32(i32 35, float %2881, float %2882)  ; FMax(a,b)
  %2884 = fadd fast float %2879, 0xBFE4CCCCC0000000
  %2885 = fmul fast float %2884, 0x4006DB6DA0000000
  %2886 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  %2887 = fmul fast float %2886, 2.000000e+00
  %2888 = fsub fast float 3.000000e+00, %2887
  %2889 = bitcast float %2414 to i32
  %2890 = ashr i32 %2889, 1
  %2891 = add nsw i32 %2890, 532487669
  %2892 = bitcast i32 %2891 to float
  %2893 = fsub fast float 1.000000e+00, %2892
  %2894 = bitcast float %2893 to i32
  %2895 = sub nsw i32 2129859010, %2894
  %2896 = bitcast i32 %2895 to float
  %2897 = fmul fast float %2896, 2.000000e+00
  %2898 = bitcast float %2415 to i32
  %2899 = ashr i32 %2898, 1
  %2900 = add nsw i32 %2899, 532487669
  %2901 = bitcast i32 %2900 to float
  %2902 = fsub fast float 1.000000e+00, %2901
  %2903 = bitcast float %2902 to i32
  %2904 = sub nsw i32 2129859010, %2903
  %2905 = bitcast i32 %2904 to float
  %2906 = fmul fast float %2905, 2.000000e+00
  %2907 = bitcast float %2416 to i32
  %2908 = ashr i32 %2907, 1
  %2909 = add nsw i32 %2908, 532487669
  %2910 = bitcast i32 %2909 to float
  %2911 = fsub fast float 1.000000e+00, %2910
  %2912 = bitcast float %2911 to i32
  %2913 = sub nsw i32 2129859010, %2912
  %2914 = bitcast i32 %2913 to float
  %2915 = fmul fast float %2914, 2.000000e+00
  %2916 = fsub fast float 0x4002A9FBE0000000, %2897
  %2917 = fadd fast float %2897, 0x3FD54FDF00000000
  %2918 = bitcast float %2917 to i32
  %2919 = sub nsw i32 2129859010, %2918
  %2920 = bitcast i32 %2919 to float
  %2921 = fmul fast float %2920, %2916
  %2922 = fmul fast float %2921, %2921
  %2923 = fsub fast float 0x4002A9FBE0000000, %2906
  %2924 = fadd fast float %2906, 0x3FD54FDF00000000
  %2925 = bitcast float %2924 to i32
  %2926 = sub nsw i32 2129859010, %2925
  %2927 = bitcast i32 %2926 to float
  %2928 = fmul fast float %2927, %2923
  %2929 = fmul fast float %2928, %2928
  %2930 = fsub fast float 0x4002A9FBE0000000, %2915
  %2931 = fadd fast float %2915, 0x3FD54FDF00000000
  %2932 = bitcast float %2931 to i32
  %2933 = sub nsw i32 2129859010, %2932
  %2934 = bitcast i32 %2933 to float
  %2935 = fmul fast float %2934, %2930
  %2936 = fmul fast float %2935, %2935
  %2937 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2922)  ; FMax(a,b)
  %2938 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2929)  ; FMax(a,b)
  %2939 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2936)  ; FMax(a,b)
  %2940 = fsub fast float 1.000000e+00, %2825
  %2941 = fadd fast float %2940, %2841
  %2942 = call float @dx.op.unary.f32(i32 7, float %2941)  ; Saturate(value)
  %2943 = fsub fast float 1.000000e+00, %2805
  %2944 = fmul fast float %2883, %2943
  %2945 = fmul fast float %2886, %2886
  %2946 = fmul fast float %2945, %2944
  %2947 = fmul fast float %2946, %2888
  %2948 = fmul fast float %2943, 0xBFE99999A0000000
  %2949 = fmul fast float %2948, %2834
  %2950 = fmul fast float %2949, %2845
  %2951 = fadd fast float %2950, 1.000000e+00
  %2952 = fadd fast float %2417, -1.000000e+00
  %2953 = fmul fast float %2951, %2952
  %2954 = fadd fast float %2953, 1.000000e+00
  %2955 = fsub fast float %2937, %2414
  %2956 = fsub fast float %2938, %2415
  %2957 = fsub fast float %2939, %2416
  %2958 = fmul fast float %2947, %2955
  %2959 = fmul fast float %2947, %2956
  %2960 = fmul fast float %2947, %2957
  %2961 = fadd fast float %2958, %2414
  %2962 = fadd fast float %2959, %2415
  %2963 = fadd fast float %2960, %2416
  %2964 = fsub fast float %80, %2393
  %2965 = fsub fast float %81, %2394
  %2966 = fsub fast float %82, %2395
  %2967 = fmul fast float %2947, %2964
  %2968 = fmul fast float %2947, %2965
  %2969 = fmul fast float %2947, %2966
  %2970 = fadd fast float %2967, %2393
  %2971 = fadd fast float %2968, %2394
  %2972 = fadd fast float %2969, %2395
  %2973 = fmul fast float %2947, %2942
  %2974 = call float @dx.op.unary.f32(i32 7, float %2954)  ; Saturate(value)
  %2975 = fsub fast float 1.000000e+00, %2974
  %2976 = fmul fast float %2973, %2975
  %2977 = fadd fast float %2976, %2974
  %2978 = fsub fast float 1.000000e+00, %2377
  %2979 = fmul fast float %2947, %2978
  %2980 = fadd fast float %2979, %2377
  %2981 = call float @dx.op.dot3.f32(i32 55, float %2970, float %2971, float %2972, float %2970, float %2971, float %2972)  ; Dot3(ax,ay,az,bx,by,bz)
  %2982 = call float @dx.op.unary.f32(i32 25, float %2981)  ; Rsqrt(value)
  %2983 = fmul fast float %2970, %2982
  %2984 = fmul fast float %2971, %2982
  %2985 = fmul fast float %2972, %2982
  br label %2986

; <label>:2986                                    ; preds = %2818, %2811
  %2987 = phi float [ %2817, %2811 ], [ %2824, %2818 ]
  %2988 = phi float [ %2816, %2811 ], [ %2822, %2818 ]
  %2989 = phi float [ %2815, %2811 ], [ %2820, %2818 ]
  %2990 = phi float [ %2814, %2811 ], [ %2823, %2818 ]
  %2991 = phi float [ %2813, %2811 ], [ %2821, %2818 ]
  %2992 = phi float [ %2812, %2811 ], [ %2819, %2818 ]
  %2993 = phi float [ %2429, %2811 ], [ %2870, %2818 ]
  %2994 = phi float [ %2430, %2811 ], [ %2871, %2818 ]
  %2995 = phi float [ %2431, %2811 ], [ %2872, %2818 ]
  %2996 = phi float [ %2414, %2811 ], [ %2961, %2818 ]
  %2997 = phi float [ %2415, %2811 ], [ %2962, %2818 ]
  %2998 = phi float [ %2416, %2811 ], [ %2963, %2818 ]
  %2999 = phi float [ %2393, %2811 ], [ %2983, %2818 ]
  %3000 = phi float [ %2394, %2811 ], [ %2984, %2818 ]
  %3001 = phi float [ %2395, %2811 ], [ %2985, %2818 ]
  %3002 = phi float [ %2417, %2811 ], [ %2977, %2818 ]
  %3003 = phi float [ %2377, %2811 ], [ %2980, %2818 ]
  %3004 = fsub fast float -0.000000e+00, %156
  %3005 = select i1 %245, float 0.000000e+00, float %2998
  %3006 = call float @dx.op.dot3.f32(i32 55, float %2999, float %3000, float %3001, float %2989, float %2988, float %2987)  ; Dot3(ax,ay,az,bx,by,bz)
  %3007 = call float @dx.op.unary.f32(i32 7, float %3006)  ; Saturate(value)
  %3008 = call float @dx.op.dot3.f32(i32 55, float %2992, float %2991, float %2990, float %2999, float %3000, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %3009 = fmul fast float %3008, 2.000000e+00
  %3010 = fmul fast float %3009, %2999
  %3011 = fmul fast float %3009, %3000
  %3012 = fmul fast float %3009, %3001
  %3013 = fsub fast float %2992, %3010
  %3014 = fsub fast float %2991, %3011
  %3015 = fsub fast float %2990, %3012
  %3016 = call float @dx.op.binary.f32(i32 36, float %3003, float 1.000000e+00)  ; FMin(a,b)
  %3017 = fsub fast float 1.000000e+00, %3016
  %3018 = bitcast float %3017 to i32
  %3019 = ashr i32 %3018, 1
  %3020 = add nsw i32 %3019, 532487669
  %3021 = bitcast i32 %3020 to float
  %3022 = fsub fast float 1.000000e+00, %3002
  %3023 = call float @dx.op.binary.f32(i32 35, float %3022, float 0x3F847AE140000000)  ; FMax(a,b)
  %3024 = fmul fast float %3023, %3023
  %3025 = fmul fast float %3024, %3024
  %3026 = call float @dx.op.unary.f32(i32 7, float %3007)  ; Saturate(value)
  %3027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %3021, float %3025, float %3026, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 0
  %3029 = fsub fast float 1.000000e+00, %3003
  %3030 = bitcast float %3029 to i32
  %3031 = sub nsw i32 2129859010, %3030
  %3032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3033 = extractvalue %dx.types.CBufRet.f32 %3032, 0
  %3034 = extractvalue %dx.types.CBufRet.f32 %3032, 1
  %3035 = fadd fast float %3033, %154
  %3036 = fadd fast float %3034, %155
  %3037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3038 = extractvalue %dx.types.CBufRet.i32 %3037, 0
  %3039 = icmp eq i32 %3038, 1
  br i1 %3039, label %3040, label %3075

; <label>:3040                                    ; preds = %2986
  %3041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3042 = extractvalue %dx.types.CBufRet.f32 %3041, 0
  %3043 = extractvalue %dx.types.CBufRet.f32 %3041, 1
  %3044 = fsub fast float %3035, %3042
  %3045 = fsub fast float %3036, %3043
  %3046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3047 = extractvalue %dx.types.CBufRet.f32 %3046, 0
  %3048 = extractvalue %dx.types.CBufRet.f32 %3046, 1
  %3049 = fmul fast float %3044, %3047
  %3050 = fmul fast float %3045, %3048
  %3051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %3049, float %3050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  %3053 = fcmp fast ogt float %3052, 0.000000e+00
  %3054 = extractvalue %dx.types.CBufRet.i32 %3037, 3
  %3055 = icmp ne i32 %3054, 0
  %3056 = and i1 %3053, %3055
  br i1 %3056, label %3057, label %3075, !dx.controlflow.hints !107

; <label>:3057                                    ; preds = %3040
  %3058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3059 = extractvalue %dx.types.CBufRet.f32 %3058, 0
  %3060 = extractvalue %dx.types.CBufRet.f32 %3058, 1
  %3061 = fsub fast float %3035, %3059
  %3062 = fsub fast float %3036, %3060
  %3063 = fmul fast float %3061, %3061
  %3064 = fmul fast float %3062, %3062
  %3065 = fadd fast float %3063, %3064
  %3066 = uitofp i32 %3054 to float
  %3067 = fmul fast float %3066, %3066
  %3068 = fcmp fast ogt float %3065, %3067
  br i1 %3068, label %3075, label %3069

; <label>:3069                                    ; preds = %3057
  %3070 = call float @dx.op.unary.f32(i32 24, float %3065)  ; Sqrt(value)
  %3071 = fsub fast float %3066, %3070
  %3072 = fmul fast float %3071, 0x3F75555560000000
  %3073 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  %3074 = call float @dx.op.binary.f32(i32 36, float %3073, float %3052)  ; FMin(a,b)
  br label %3075

; <label>:3075                                    ; preds = %3069, %3057, %3040, %2986
  %3076 = phi float [ 1.000000e+00, %2986 ], [ %3074, %3069 ], [ %3052, %3040 ], [ 0.000000e+00, %3057 ]
  %3077 = fcmp fast ogt float %3076, 0.000000e+00
  br i1 %3077, label %3078, label %3177, !dx.controlflow.hints !108

; <label>:3078                                    ; preds = %3075
  %3079 = fadd fast float %185, 5.000000e-01
  %3080 = call float @dx.op.unary.f32(i32 27, float %3079)  ; Round_ni(value)
  %3081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %183, float %184, float %3080, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3082 = extractvalue %dx.types.ResRet.f32 %3081, 0
  %3083 = extractvalue %dx.types.ResRet.f32 %3081, 1
  %3084 = extractvalue %dx.types.ResRet.f32 %3081, 2
  %3085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3086 = extractvalue %dx.types.CBufRet.f32 %3085, 3
  %3087 = fmul fast float %3086, %3082
  %3088 = fmul fast float %3086, %3083
  %3089 = fmul fast float %3086, %3084
  %3090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %183, float %184, float %3080, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3091 = extractvalue %dx.types.ResRet.f32 %3090, 0
  %3092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %183, float %184, float %3080, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3093 = extractvalue %dx.types.ResRet.f32 %3092, 0
  %3094 = extractvalue %dx.types.ResRet.f32 %3092, 1
  %3095 = fmul fast float %3093, 2.000000e+00
  %3096 = fmul fast float %3094, 2.000000e+00
  %3097 = fadd fast float %3095, -1.000000e+00
  %3098 = fadd fast float %3096, -1.000000e+00
  %3099 = fadd fast float %3097, %3098
  %3100 = fmul fast float %3099, 5.000000e-01
  %3101 = fsub fast float %3097, %3098
  %3102 = fmul fast float %3101, 5.000000e-01
  %3103 = call float @dx.op.unary.f32(i32 6, float %3100)  ; FAbs(value)
  %3104 = fsub fast float 1.000000e+00, %3103
  %3105 = call float @dx.op.unary.f32(i32 6, float %3102)  ; FAbs(value)
  %3106 = fsub fast float %3104, %3105
  %3107 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3106)  ; FMax(a,b)
  %3108 = call float @dx.op.dot3.f32(i32 55, float %3100, float %3102, float %3107, float %3100, float %3102, float %3107)  ; Dot3(ax,ay,az,bx,by,bz)
  %3109 = bitcast float %3108 to i32
  %3110 = ashr i32 %3109, 1
  %3111 = sub nsw i32 1597250115, %3110
  %3112 = bitcast i32 %3111 to float
  %3113 = fmul fast float %3112, %3100
  %3114 = fmul fast float %3112, %3102
  %3115 = fmul fast float %3112, %3107
  %3116 = fsub fast float 1.000000e+00, %3091
  %3117 = fdiv fast float %3116, %3115
  %3118 = fmul fast float %3115, %80
  %3119 = fmul fast float %3115, %81
  %3120 = fmul fast float %3115, %82
  %3121 = fmul fast float %3113, %76
  %3122 = fmul fast float %3113, %77
  %3123 = fmul fast float %3113, %78
  %3124 = fadd fast float %3118, %3121
  %3125 = fadd fast float %3119, %3122
  %3126 = fadd fast float %3120, %3123
  %3127 = fmul fast float %3114, %118
  %3128 = fmul fast float %3114, %119
  %3129 = fmul fast float %3114, %120
  %3130 = fadd fast float %3124, %3127
  %3131 = fadd fast float %3125, %3128
  %3132 = fadd fast float %3126, %3129
  %3133 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3131, float %3132, float %3130, float %3131, float %3132)  ; Dot3(ax,ay,az,bx,by,bz)
  %3134 = call float @dx.op.unary.f32(i32 25, float %3133)  ; Rsqrt(value)
  %3135 = fmul fast float %3130, %3134
  %3136 = fmul fast float %3131, %3134
  %3137 = fmul fast float %3132, %3134
  %3138 = call float @dx.op.dot3.f32(i32 55, float %2999, float %3000, float %3001, float %2999, float %3000, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %3139 = call float @dx.op.unary.f32(i32 7, float %3138)  ; Saturate(value)
  %3140 = fmul fast float %3139, 5.000000e-01
  %3141 = fadd fast float %3140, 5.000000e-01
  %3142 = fmul fast float %3141, %3091
  %3143 = call float @dx.op.dot3.f32(i32 55, float %2999, float %3000, float %3001, float %3135, float %3136, float %3137)  ; Dot3(ax,ay,az,bx,by,bz)
  %3144 = call float @dx.op.unary.f32(i32 7, float %3143)  ; Saturate(value)
  %3145 = fmul fast float %3144, %3117
  %3146 = fadd fast float %3142, %3145
  %3147 = fsub fast float 5.000000e-01, %3140
  %3148 = fmul fast float %3147, %2993
  %3149 = fmul fast float %3147, %2994
  %3150 = fmul fast float %3147, %2995
  %3151 = fadd fast float %3146, %3148
  %3152 = fmul fast float %3151, %3087
  %3153 = fadd fast float %3146, %3149
  %3154 = fmul fast float %3153, %3088
  %3155 = fadd fast float %3146, %3150
  %3156 = fmul fast float %3155, %3089
  %3157 = call float @dx.op.dot3.f32(i32 55, float %3013, float %3014, float %3015, float %2999, float %3000, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %3158 = call float @dx.op.unary.f32(i32 7, float %3157)  ; Saturate(value)
  %3159 = fmul fast float %3158, 5.000000e-01
  %3160 = fadd fast float %3159, 5.000000e-01
  %3161 = fmul fast float %3160, %3091
  %3162 = call float @dx.op.dot3.f32(i32 55, float %3013, float %3014, float %3015, float %3135, float %3136, float %3137)  ; Dot3(ax,ay,az,bx,by,bz)
  %3163 = call float @dx.op.unary.f32(i32 7, float %3162)  ; Saturate(value)
  %3164 = fmul fast float %3163, %3117
  %3165 = fadd fast float %3161, %3164
  %3166 = fsub fast float 5.000000e-01, %3159
  %3167 = fmul fast float %3166, %2993
  %3168 = fmul fast float %3166, %2994
  %3169 = fmul fast float %3166, %2995
  %3170 = fadd fast float %3165, %3167
  %3171 = fmul fast float %3170, %3087
  %3172 = fadd fast float %3165, %3168
  %3173 = fmul fast float %3172, %3088
  %3174 = fadd fast float %3165, %3169
  %3175 = fmul fast float %3174, %3089
  %3176 = call float @dx.op.dot3.f32(i32 55, float %3087, float %3088, float %3089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %3177

; <label>:3177                                    ; preds = %3078, %3075
  %3178 = phi float [ %3176, %3078 ], [ 0.000000e+00, %3075 ]
  %3179 = phi float [ %3171, %3078 ], [ 0.000000e+00, %3075 ]
  %3180 = phi float [ %3173, %3078 ], [ 0.000000e+00, %3075 ]
  %3181 = phi float [ %3175, %3078 ], [ 0.000000e+00, %3075 ]
  %3182 = phi float [ %3152, %3078 ], [ 0.000000e+00, %3075 ]
  %3183 = phi float [ %3154, %3078 ], [ 0.000000e+00, %3075 ]
  %3184 = phi float [ %3156, %3078 ], [ 0.000000e+00, %3075 ]
  %3185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3186 = extractvalue %dx.types.CBufRet.f32 %3185, 0
  %3187 = fcmp fast ogt float %3186, 0.000000e+00
  %3188 = and i1 %3077, %3187
  br i1 %3188, label %3189, label %3393, !dx.controlflow.hints !109

; <label>:3189                                    ; preds = %3177
  %3190 = extractvalue %dx.types.CBufRet.f32 %3032, 2
  %3191 = fadd fast float %3190, %156
  %3192 = fmul fast float %2999, 3.200000e+01
  %3193 = fmul fast float %3000, 3.200000e+01
  %3194 = fadd fast float %3035, %3192
  %3195 = fadd fast float %3036, %3193
  %3196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3197 = extractvalue %dx.types.CBufRet.f32 %3196, 0
  %3198 = extractvalue %dx.types.CBufRet.f32 %3196, 1
  %3199 = fsub fast float %3194, %3197
  %3200 = fsub fast float %3195, %3198
  %3201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3202 = extractvalue %dx.types.CBufRet.f32 %3201, 0
  %3203 = extractvalue %dx.types.CBufRet.f32 %3201, 1
  %3204 = fmul fast float %3199, %3202
  %3205 = fmul fast float %3200, %3203
  %3206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.f32 %3206, 0
  %3208 = extractvalue %dx.types.CBufRet.f32 %3206, 1
  %3209 = fsub fast float %3035, %3207
  %3210 = fsub fast float %3036, %3208
  %3211 = fmul fast float %3209, %3209
  %3212 = fmul fast float %3210, %3210
  %3213 = fadd fast float %3211, %3212
  %3214 = call float @dx.op.unary.f32(i32 24, float %3213)  ; Sqrt(value)
  %3215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3216 = extractvalue %dx.types.CBufRet.f32 %3215, 0
  %3217 = extractvalue %dx.types.CBufRet.f32 %3215, 1
  %3218 = fsub fast float %3214, %3216
  %3219 = fdiv fast float %3218, %3217
  %3220 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  %3221 = fmul fast float %3220, 2.000000e+00
  %3222 = fsub fast float 3.000000e+00, %3221
  %3223 = fmul fast float %3220, %3220
  %3224 = fmul fast float %3223, %3222
  %3225 = fcmp fast oge float %3204, 0.000000e+00
  %3226 = fcmp fast ole float %3204, 1.000000e+00
  %3227 = and i1 %3226, %3225
  %3228 = fcmp fast oge float %3205, 0.000000e+00
  %3229 = and i1 %3228, %3227
  %3230 = fcmp fast ole float %3205, 1.000000e+00
  %3231 = and i1 %3230, %3229
  %3232 = fcmp fast ogt float %3224, 0.000000e+00
  %3233 = and i1 %3232, %3231
  br i1 %3233, label %3234, label %3357, !dx.controlflow.hints !110

; <label>:3234                                    ; preds = %3189
  %3235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3236 = extractvalue %dx.types.CBufRet.f32 %3235, 2
  %3237 = extractvalue %dx.types.CBufRet.f32 %3235, 3
  %3238 = fmul fast float %3236, %3204
  %3239 = fmul fast float %3237, %3205
  %3240 = call float @dx.op.unary.f32(i32 27, float %3238)  ; Round_ni(value)
  %3241 = call float @dx.op.unary.f32(i32 27, float %3239)  ; Round_ni(value)
  %3242 = fptosi float %3240 to i32
  %3243 = fptosi float %3241 to i32
  %3244 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %3242, i32 %3243, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3245 = extractvalue %dx.types.ResRet.i32 %3244, 0
  %3246 = lshr i32 %3245, 16
  %3247 = icmp eq i32 %3246, 65535
  br i1 %3247, label %3357, label %3248

; <label>:3248                                    ; preds = %3234
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 0
  %3251 = fmul fast float %3250, %3204
  %3252 = extractvalue %dx.types.CBufRet.f32 %3249, 1
  %3253 = fadd fast float %3251, %3252
  %3254 = extractvalue %dx.types.CBufRet.f32 %3249, 2
  %3255 = fmul fast float %3254, %3205
  %3256 = extractvalue %dx.types.CBufRet.f32 %3249, 3
  %3257 = fadd fast float %3255, %3256
  %3258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %3253, float %3257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3259 = extractvalue %dx.types.ResRet.f32 %3258, 0
  %3260 = extractvalue %dx.types.ResRet.f32 %3258, 1
  %3261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3262 = extractvalue %dx.types.CBufRet.f32 %3261, 1
  %3263 = extractvalue %dx.types.CBufRet.f32 %3261, 0
  %3264 = fsub fast float %3262, %3263
  %3265 = fmul fast float %3264, %3259
  %3266 = fadd fast float %3265, %3263
  %3267 = extractvalue %dx.types.CBufRet.f32 %3261, 3
  %3268 = extractvalue %dx.types.CBufRet.f32 %3261, 2
  %3269 = fsub fast float %3267, %3268
  %3270 = fmul fast float %3269, %3260
  %3271 = fadd fast float %3270, %3268
  %3272 = fsub fast float %3191, %3266
  %3273 = fsub fast float %3271, %3266
  %3274 = fdiv fast float %3272, %3273
  %3275 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3185, 1
  %3277 = extractvalue %dx.types.CBufRet.f32 %3235, 0
  %3278 = extractvalue %dx.types.CBufRet.f32 %3235, 1
  %3279 = fmul fast float %3277, %3204
  %3280 = fmul fast float %3278, %3205
  %3281 = fmul fast float %3279, 1.250000e-01
  %3282 = fmul fast float %3280, 1.250000e-01
  %3283 = call float @dx.op.unary.f32(i32 27, float %3281)  ; Round_ni(value)
  %3284 = call float @dx.op.unary.f32(i32 27, float %3282)  ; Round_ni(value)
  %3285 = fmul fast float %3283, 8.000000e+00
  %3286 = fmul fast float %3284, 8.000000e+00
  %3287 = fsub fast float %3279, %3285
  %3288 = fsub fast float %3280, %3286
  %3289 = fadd fast float %3287, 5.000000e-01
  %3290 = fadd fast float %3288, 5.000000e-01
  %3291 = and i32 %3246, 255
  %3292 = lshr i32 %3245, 24
  %3293 = mul nuw nsw i32 %3291, 9
  %3294 = uitofp i32 %3293 to float
  %3295 = mul nuw nsw i32 %3292, 9
  %3296 = uitofp i32 %3295 to float
  %3297 = fadd fast float %3289, %3294
  %3298 = fadd fast float %3290, %3296
  %3299 = fdiv fast float %3297, %3186
  %3300 = fdiv fast float %3298, %3276
  %3301 = fmul fast float %3275, 4.375000e-01
  %3302 = fadd fast float %3301, 3.125000e-02
  %3303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3299, float %3300, float %3302, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3304 = extractvalue %dx.types.ResRet.f32 %3303, 0
  %3305 = extractvalue %dx.types.ResRet.f32 %3303, 1
  %3306 = extractvalue %dx.types.ResRet.f32 %3303, 2
  %3307 = fadd fast float %3301, 5.312500e-01
  %3308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3299, float %3300, float %3307, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3309 = extractvalue %dx.types.ResRet.f32 %3308, 0
  %3310 = extractvalue %dx.types.ResRet.f32 %3308, 1
  %3311 = extractvalue %dx.types.ResRet.f32 %3308, 2
  %3312 = fmul fast float %3309, 2.000000e+00
  %3313 = fmul fast float %3310, 2.000000e+00
  %3314 = fmul fast float %3311, 2.000000e+00
  %3315 = fadd fast float %3312, -1.000000e+00
  %3316 = fadd fast float %3313, -1.000000e+00
  %3317 = fadd fast float %3314, -1.000000e+00
  %3318 = fmul fast float %3315, %3315
  %3319 = fmul fast float %3316, %3316
  %3320 = fadd fast float %3318, %3319
  %3321 = fmul fast float %3317, %3317
  %3322 = fadd fast float %3320, %3321
  %3323 = call float @dx.op.unary.f32(i32 24, float %3322)  ; Sqrt(value)
  %3324 = fcmp fast ogt float %3323, 0.000000e+00
  br i1 %3324, label %3325, label %3329

; <label>:3325                                    ; preds = %3248
  %3326 = fdiv fast float %3315, %3323
  %3327 = fdiv fast float %3316, %3323
  %3328 = fdiv fast float %3317, %3323
  br label %3329

; <label>:3329                                    ; preds = %3325, %3248
  %3330 = phi float [ %3326, %3325 ], [ 0.000000e+00, %3248 ]
  %3331 = phi float [ %3327, %3325 ], [ 0.000000e+00, %3248 ]
  %3332 = phi float [ %3328, %3325 ], [ 0.000000e+00, %3248 ]
  %3333 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3331, float %3332, float %2999, float %3000, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %3334 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3333)  ; FMax(a,b)
  %3335 = fmul fast float %3334, 0x400C5BF8A0000000
  %3336 = fmul fast float %3304, %3224
  %3337 = fmul fast float %3336, %3335
  %3338 = fmul fast float %3305, %3224
  %3339 = fmul fast float %3338, %3335
  %3340 = fmul fast float %3306, %3224
  %3341 = fmul fast float %3340, %3335
  %3342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3343 = extractvalue %dx.types.CBufRet.f32 %3342, 3
  %3344 = fmul fast float %3337, %3343
  %3345 = fmul fast float %3339, %3343
  %3346 = fmul fast float %3341, %3343
  %3347 = fcmp fast ogt float %3191, %3271
  br i1 %3347, label %3348, label %3357

; <label>:3348                                    ; preds = %3329
  %3349 = fmul fast float %3273, 0x3FC24924A0000000
  %3350 = fsub fast float %3191, %3271
  %3351 = fdiv fast float %3350, %3349
  %3352 = call float @dx.op.unary.f32(i32 7, float %3351)  ; Saturate(value)
  %3353 = fsub fast float 1.000000e+00, %3352
  %3354 = fmul fast float %3353, %3344
  %3355 = fmul fast float %3353, %3345
  %3356 = fmul fast float %3353, %3346
  br label %3357

; <label>:3357                                    ; preds = %3348, %3329, %3234, %3189
  %3358 = phi float [ %3356, %3348 ], [ %3346, %3329 ], [ 0.000000e+00, %3234 ], [ 0.000000e+00, %3189 ]
  %3359 = phi float [ %3355, %3348 ], [ %3345, %3329 ], [ 0.000000e+00, %3234 ], [ 0.000000e+00, %3189 ]
  %3360 = phi float [ %3354, %3348 ], [ %3344, %3329 ], [ 0.000000e+00, %3234 ], [ 0.000000e+00, %3189 ]
  %3361 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3360)  ; FMax(a,b)
  %3362 = fmul fast float %3361, 0x3FD20DD760000000
  %3363 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3013, float %3014, float %3015)  ; Dot3(ax,ay,az,bx,by,bz)
  %3364 = fmul fast float %3363, 0x3FDF454380000000
  %3365 = fmul fast float %3363, %3363
  %3366 = fmul fast float %3365, 0x3FEE471020000000
  %3367 = fadd fast float %3366, 0xBFD42F6020000000
  %3368 = call float @dx.op.dot3.f32(i32 55, float %3361, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3364, float %3367)  ; Dot3(ax,ay,az,bx,by,bz)
  %3369 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3359)  ; FMax(a,b)
  %3370 = fmul fast float %3369, 0x3FD20DD760000000
  %3371 = call float @dx.op.dot3.f32(i32 55, float %3369, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3364, float %3367)  ; Dot3(ax,ay,az,bx,by,bz)
  %3372 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3358)  ; FMax(a,b)
  %3373 = fmul fast float %3372, 0x3FD20DD760000000
  %3374 = call float @dx.op.dot3.f32(i32 55, float %3372, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3364, float %3367)  ; Dot3(ax,ay,az,bx,by,bz)
  %3375 = call float @dx.op.binary.f32(i32 35, float %3362, float 0.000000e+00)  ; FMax(a,b)
  %3376 = call float @dx.op.binary.f32(i32 35, float %3370, float 0.000000e+00)  ; FMax(a,b)
  %3377 = call float @dx.op.binary.f32(i32 35, float %3373, float 0.000000e+00)  ; FMax(a,b)
  %3378 = call float @dx.op.binary.f32(i32 35, float %3368, float 0.000000e+00)  ; FMax(a,b)
  %3379 = call float @dx.op.binary.f32(i32 35, float %3371, float 0.000000e+00)  ; FMax(a,b)
  %3380 = call float @dx.op.binary.f32(i32 35, float %3374, float 0.000000e+00)  ; FMax(a,b)
  %3381 = fmul fast float %3375, %3076
  %3382 = fmul fast float %3376, %3076
  %3383 = fmul fast float %3377, %3076
  %3384 = fadd fast float %3381, %3182
  %3385 = fadd fast float %3382, %3183
  %3386 = fadd fast float %3383, %3184
  %3387 = fmul fast float %3378, %3076
  %3388 = fmul fast float %3379, %3076
  %3389 = fmul fast float %3380, %3076
  %3390 = fadd fast float %3387, %3179
  %3391 = fadd fast float %3388, %3180
  %3392 = fadd fast float %3389, %3181
  br label %3393

; <label>:3393                                    ; preds = %3357, %3177
  %3394 = phi float [ %3390, %3357 ], [ %3179, %3177 ]
  %3395 = phi float [ %3391, %3357 ], [ %3180, %3177 ]
  %3396 = phi float [ %3392, %3357 ], [ %3181, %3177 ]
  %3397 = phi float [ %3384, %3357 ], [ %3182, %3177 ]
  %3398 = phi float [ %3385, %3357 ], [ %3183, %3177 ]
  %3399 = phi float [ %3386, %3357 ], [ %3184, %3177 ]
  %3400 = fcmp fast olt float %3076, 1.000000e+00
  br i1 %3400, label %3401, label %4224, !dx.controlflow.hints !111

; <label>:3401                                    ; preds = %3393
  %3402 = extractvalue %dx.types.CBufRet.f32 %3032, 2
  %3403 = fadd fast float %3402, %156
  %3404 = fmul fast float %2999, 3.200000e+01
  %3405 = fmul fast float %3000, 3.200000e+01
  %3406 = fadd fast float %3035, %3404
  %3407 = fadd fast float %3036, %3405
  %3408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3409 = extractvalue %dx.types.CBufRet.f32 %3408, 0
  %3410 = extractvalue %dx.types.CBufRet.f32 %3408, 1
  %3411 = fsub fast float %3406, %3409
  %3412 = fsub fast float %3407, %3410
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 0
  %3415 = extractvalue %dx.types.CBufRet.f32 %3413, 1
  %3416 = fmul fast float %3411, %3414
  %3417 = fmul fast float %3412, %3415
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3418, 0
  %3420 = fmul fast float %3416, %3419
  %3421 = extractvalue %dx.types.CBufRet.f32 %3418, 1
  %3422 = fadd fast float %3420, %3421
  %3423 = extractvalue %dx.types.CBufRet.f32 %3418, 2
  %3424 = fmul fast float %3423, %3417
  %3425 = extractvalue %dx.types.CBufRet.f32 %3418, 3
  %3426 = fadd fast float %3424, %3425
  %3427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %3422, float %3426, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3428 = extractvalue %dx.types.ResRet.f32 %3427, 0
  %3429 = extractvalue %dx.types.ResRet.f32 %3427, 1
  %3430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3431 = extractvalue %dx.types.CBufRet.f32 %3430, 1
  %3432 = extractvalue %dx.types.CBufRet.f32 %3430, 0
  %3433 = fsub fast float %3431, %3432
  %3434 = fmul fast float %3433, %3428
  %3435 = fadd fast float %3434, %3432
  %3436 = extractvalue %dx.types.CBufRet.f32 %3430, 3
  %3437 = extractvalue %dx.types.CBufRet.f32 %3430, 2
  %3438 = fsub fast float %3436, %3437
  %3439 = fmul fast float %3438, %3429
  %3440 = fadd fast float %3439, %3437
  %3441 = fsub fast float %3403, %3435
  %3442 = fsub fast float %3440, %3435
  %3443 = fdiv fast float %3441, %3442
  %3444 = call float @dx.op.unary.f32(i32 7, float %3443)  ; Saturate(value)
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 0
  %3447 = fmul fast float %3446, %3444
  %3448 = extractvalue %dx.types.CBufRet.f32 %3445, 1
  %3449 = fadd fast float %3447, %3448
  %3450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %3422, float %3426, float %3449, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3451 = extractvalue %dx.types.ResRet.f32 %3450, 0
  %3452 = extractvalue %dx.types.ResRet.f32 %3450, 1
  %3453 = extractvalue %dx.types.ResRet.f32 %3450, 2
  %3454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3455 = extractvalue %dx.types.CBufRet.f32 %3454, 0
  %3456 = extractvalue %dx.types.CBufRet.f32 %3454, 1
  %3457 = extractvalue %dx.types.CBufRet.f32 %3454, 2
  %3458 = fmul fast float %3455, %3451
  %3459 = fmul fast float %3456, %3452
  %3460 = fmul fast float %3457, %3453
  %3461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3462 = extractvalue %dx.types.CBufRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.CBufRet.f32 %3461, 1
  %3464 = extractvalue %dx.types.CBufRet.f32 %3461, 2
  %3465 = fadd fast float %3458, %3462
  %3466 = fadd fast float %3459, %3463
  %3467 = fadd fast float %3460, %3464
  %3468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3469 = extractvalue %dx.types.CBufRet.f32 %3468, 0
  %3470 = fmul fast float %3469, %3416
  %3471 = extractvalue %dx.types.CBufRet.f32 %3468, 1
  %3472 = fadd fast float %3470, %3471
  %3473 = extractvalue %dx.types.CBufRet.f32 %3468, 2
  %3474 = fmul fast float %3473, %3417
  %3475 = extractvalue %dx.types.CBufRet.f32 %3468, 3
  %3476 = fadd fast float %3474, %3475
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 0
  %3479 = extractvalue %dx.types.CBufRet.f32 %3477, 1
  %3480 = extractvalue %dx.types.CBufRet.f32 %3477, 2
  %3481 = extractvalue %dx.types.CBufRet.f32 %3477, 3
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.CBufRet.f32 %3482, 1
  %3485 = extractvalue %dx.types.CBufRet.f32 %3482, 2
  %3486 = extractvalue %dx.types.CBufRet.f32 %3482, 3
  %3487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3472, float %3476, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3488 = extractvalue %dx.types.ResRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.ResRet.f32 %3487, 1
  %3490 = extractvalue %dx.types.ResRet.f32 %3487, 2
  %3491 = extractvalue %dx.types.ResRet.f32 %3487, 3
  %3492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3472, float %3476, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3493 = extractvalue %dx.types.ResRet.f32 %3492, 0
  %3494 = extractvalue %dx.types.ResRet.f32 %3492, 1
  %3495 = extractvalue %dx.types.ResRet.f32 %3492, 2
  %3496 = extractvalue %dx.types.ResRet.f32 %3492, 3
  %3497 = fmul fast float %3488, %3465
  %3498 = fmul fast float %3493, %3465
  %3499 = fmul fast float %3495, %3465
  %3500 = fmul fast float %3491, %3465
  %3501 = fadd fast float %3497, %3478
  %3502 = fadd fast float %3498, %3479
  %3503 = fadd fast float %3499, %3480
  %3504 = fadd fast float %3500, %3481
  %3505 = fmul fast float %3489, %3465
  %3506 = fmul fast float %3494, %3465
  %3507 = fadd fast float %3505, %3483
  %3508 = fadd fast float %3506, %3484
  %3509 = fmul fast float %3490, %3465
  %3510 = fmul fast float %3496, %3465
  %3511 = fadd fast float %3509, %3485
  %3512 = fadd fast float %3510, %3486
  %3513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3472, float %3476, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3515 = extractvalue %dx.types.ResRet.f32 %3513, 1
  %3516 = extractvalue %dx.types.ResRet.f32 %3513, 2
  %3517 = extractvalue %dx.types.ResRet.f32 %3513, 3
  %3518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3472, float %3476, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3519 = extractvalue %dx.types.ResRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.ResRet.f32 %3518, 1
  %3521 = extractvalue %dx.types.ResRet.f32 %3518, 2
  %3522 = extractvalue %dx.types.ResRet.f32 %3518, 3
  %3523 = fmul fast float %3514, %3466
  %3524 = fmul fast float %3519, %3466
  %3525 = fmul fast float %3521, %3466
  %3526 = fmul fast float %3517, %3466
  %3527 = fadd fast float %3501, %3523
  %3528 = fadd fast float %3502, %3524
  %3529 = fadd fast float %3503, %3525
  %3530 = fadd fast float %3504, %3526
  %3531 = fmul fast float %3515, %3466
  %3532 = fmul fast float %3520, %3466
  %3533 = fadd fast float %3507, %3531
  %3534 = fadd fast float %3508, %3532
  %3535 = fmul fast float %3516, %3466
  %3536 = fmul fast float %3522, %3466
  %3537 = fadd fast float %3511, %3535
  %3538 = fadd fast float %3512, %3536
  %3539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3472, float %3476, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3540 = extractvalue %dx.types.ResRet.f32 %3539, 0
  %3541 = extractvalue %dx.types.ResRet.f32 %3539, 1
  %3542 = extractvalue %dx.types.ResRet.f32 %3539, 2
  %3543 = extractvalue %dx.types.ResRet.f32 %3539, 3
  %3544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %3472, float %3476, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 0
  %3546 = extractvalue %dx.types.ResRet.f32 %3544, 1
  %3547 = extractvalue %dx.types.ResRet.f32 %3544, 2
  %3548 = extractvalue %dx.types.ResRet.f32 %3544, 3
  %3549 = fmul fast float %3540, %3467
  %3550 = fmul fast float %3545, %3467
  %3551 = fmul fast float %3547, %3467
  %3552 = fmul fast float %3543, %3467
  %3553 = fadd fast float %3527, %3549
  %3554 = fadd fast float %3528, %3550
  %3555 = fadd fast float %3529, %3551
  %3556 = fadd fast float %3530, %3552
  %3557 = fmul fast float %3541, %3467
  %3558 = fmul fast float %3546, %3467
  %3559 = fadd fast float %3533, %3557
  %3560 = fadd fast float %3534, %3558
  %3561 = fmul fast float %3542, %3467
  %3562 = fmul fast float %3548, %3467
  %3563 = fadd fast float %3537, %3561
  %3564 = fadd fast float %3538, %3562
  %3565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3566 = extractvalue %dx.types.CBufRet.f32 %3565, 0
  %3567 = fsub fast float %3035, %3566
  %3568 = fsub fast float %3409, %3035
  %3569 = call float @dx.op.binary.f32(i32 35, float %3568, float %3567)  ; FMax(a,b)
  %3570 = extractvalue %dx.types.CBufRet.f32 %3565, 1
  %3571 = fsub fast float %3036, %3570
  %3572 = fsub fast float %3410, %3036
  %3573 = call float @dx.op.binary.f32(i32 35, float %3572, float %3571)  ; FMax(a,b)
  %3574 = call float @dx.op.binary.f32(i32 35, float %3569, float %3573)  ; FMax(a,b)
  %3575 = extractvalue %dx.types.CBufRet.f32 %3413, 3
  %3576 = fmul fast float %3575, %3574
  %3577 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  %3578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3579 = extractvalue %dx.types.CBufRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.CBufRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.CBufRet.f32 %3578, 2
  %3582 = extractvalue %dx.types.CBufRet.f32 %3578, 3
  %3583 = fsub fast float %3579, %3553
  %3584 = fsub fast float %3580, %3554
  %3585 = fsub fast float %3581, %3555
  %3586 = fsub fast float %3582, %3556
  %3587 = fmul fast float %3583, %3577
  %3588 = fmul fast float %3584, %3577
  %3589 = fmul fast float %3585, %3577
  %3590 = fmul fast float %3586, %3577
  %3591 = fadd fast float %3587, %3553
  %3592 = fadd fast float %3588, %3554
  %3593 = fadd fast float %3589, %3555
  %3594 = fadd fast float %3590, %3556
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3597 = extractvalue %dx.types.CBufRet.f32 %3595, 1
  %3598 = fsub fast float %3596, %3559
  %3599 = fsub fast float %3597, %3560
  %3600 = fmul fast float %3598, %3577
  %3601 = fmul fast float %3599, %3577
  %3602 = fadd fast float %3600, %3559
  %3603 = fadd fast float %3601, %3560
  %3604 = extractvalue %dx.types.CBufRet.f32 %3595, 2
  %3605 = extractvalue %dx.types.CBufRet.f32 %3595, 3
  %3606 = fsub fast float %3604, %3563
  %3607 = fsub fast float %3605, %3564
  %3608 = fmul fast float %3606, %3577
  %3609 = fmul fast float %3607, %3577
  %3610 = fadd fast float %3608, %3563
  %3611 = fadd fast float %3609, %3564
  %3612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3613 = extractvalue %dx.types.CBufRet.f32 %3612, 0
  %3614 = fmul fast float %3613, %3591
  %3615 = fmul fast float %3613, %3592
  %3616 = fmul fast float %3613, %3593
  %3617 = fmul fast float %3613, %3594
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 0
  %3620 = fmul fast float %3619, %3602
  %3621 = fmul fast float %3619, %3603
  %3622 = fadd fast float %3620, %3614
  %3623 = fadd fast float %3621, %3616
  %3624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.f32 %3624, 0
  %3626 = fmul fast float %3625, %3610
  %3627 = fmul fast float %3625, %3611
  %3628 = fadd fast float %3622, %3626
  %3629 = fadd fast float %3623, %3627
  %3630 = extractvalue %dx.types.CBufRet.f32 %3612, 1
  %3631 = fmul fast float %3630, %3591
  %3632 = fmul fast float %3630, %3592
  %3633 = fmul fast float %3630, %3593
  %3634 = fmul fast float %3630, %3594
  %3635 = extractvalue %dx.types.CBufRet.f32 %3618, 1
  %3636 = fmul fast float %3635, %3602
  %3637 = fmul fast float %3635, %3603
  %3638 = fadd fast float %3636, %3631
  %3639 = fadd fast float %3637, %3633
  %3640 = extractvalue %dx.types.CBufRet.f32 %3624, 1
  %3641 = fmul fast float %3640, %3610
  %3642 = fmul fast float %3640, %3611
  %3643 = fadd fast float %3638, %3641
  %3644 = fadd fast float %3639, %3642
  %3645 = extractvalue %dx.types.CBufRet.f32 %3612, 2
  %3646 = fmul fast float %3645, %3591
  %3647 = fmul fast float %3645, %3592
  %3648 = fmul fast float %3645, %3593
  %3649 = fmul fast float %3645, %3594
  %3650 = extractvalue %dx.types.CBufRet.f32 %3618, 2
  %3651 = fmul fast float %3650, %3602
  %3652 = fmul fast float %3650, %3603
  %3653 = fadd fast float %3651, %3646
  %3654 = fadd fast float %3652, %3648
  %3655 = extractvalue %dx.types.CBufRet.f32 %3624, 2
  %3656 = fmul fast float %3655, %3610
  %3657 = fmul fast float %3655, %3611
  %3658 = fadd fast float %3653, %3656
  %3659 = fadd fast float %3654, %3657
  %3660 = fmul fast float %3647, %3647
  %3661 = fmul fast float %3659, %3659
  %3662 = fmul fast float %3649, %3649
  %3663 = fadd fast float %3662, %3660
  %3664 = fadd fast float %3663, %3661
  %3665 = call float @dx.op.unary.f32(i32 24, float %3664)  ; Sqrt(value)
  %3666 = fcmp fast ugt float %3665, 0.000000e+00
  br i1 %3666, label %3667, label %3682

; <label>:3667                                    ; preds = %3401
  %3668 = fsub fast float -0.000000e+00, %3649
  %3669 = fdiv fast float %3668, %3665
  %3670 = fsub fast float -0.000000e+00, %3647
  %3671 = fdiv fast float %3670, %3665
  %3672 = fdiv fast float %3659, %3665
  %3673 = fmul fast float %3658, 0x3FE279A760000000
  %3674 = fmul fast float %3671, %3647
  %3675 = fmul fast float %3672, %3659
  %3676 = fmul fast float %3669, %3649
  %3677 = fadd fast float %3674, %3676
  %3678 = fsub fast float %3677, %3675
  %3679 = call float @dx.op.unary.f32(i32 6, float %3678)  ; FAbs(value)
  %3680 = fadd fast float %3679, 0x3DDB7CDFE0000000
  %3681 = fdiv fast float %3673, %3680
  br label %3682

; <label>:3682                                    ; preds = %3667, %3401
  %3683 = phi float [ %3681, %3667 ], [ 1.000000e+00, %3401 ]
  %3684 = fmul fast float %3632, %3632
  %3685 = fmul fast float %3644, %3644
  %3686 = fmul fast float %3634, %3634
  %3687 = fadd fast float %3686, %3684
  %3688 = fadd fast float %3687, %3685
  %3689 = call float @dx.op.unary.f32(i32 24, float %3688)  ; Sqrt(value)
  %3690 = fcmp fast ugt float %3689, 0.000000e+00
  br i1 %3690, label %3691, label %3706

; <label>:3691                                    ; preds = %3682
  %3692 = fsub fast float -0.000000e+00, %3634
  %3693 = fdiv fast float %3692, %3689
  %3694 = fsub fast float -0.000000e+00, %3632
  %3695 = fdiv fast float %3694, %3689
  %3696 = fdiv fast float %3644, %3689
  %3697 = fmul fast float %3643, 0x3FE279A760000000
  %3698 = fmul fast float %3695, %3632
  %3699 = fmul fast float %3696, %3644
  %3700 = fmul fast float %3693, %3634
  %3701 = fadd fast float %3698, %3700
  %3702 = fsub fast float %3701, %3699
  %3703 = call float @dx.op.unary.f32(i32 6, float %3702)  ; FAbs(value)
  %3704 = fadd fast float %3703, 0x3DDB7CDFE0000000
  %3705 = fdiv fast float %3697, %3704
  br label %3706

; <label>:3706                                    ; preds = %3691, %3682
  %3707 = phi float [ %3705, %3691 ], [ 1.000000e+00, %3682 ]
  %3708 = call float @dx.op.binary.f32(i32 36, float %3707, float %3683)  ; FMin(a,b)
  %3709 = fmul fast float %3615, %3615
  %3710 = fmul fast float %3629, %3629
  %3711 = fmul fast float %3617, %3617
  %3712 = fadd fast float %3711, %3709
  %3713 = fadd fast float %3712, %3710
  %3714 = call float @dx.op.unary.f32(i32 24, float %3713)  ; Sqrt(value)
  %3715 = fcmp fast ugt float %3714, 0.000000e+00
  br i1 %3715, label %3716, label %3731

; <label>:3716                                    ; preds = %3706
  %3717 = fsub fast float -0.000000e+00, %3617
  %3718 = fdiv fast float %3717, %3714
  %3719 = fsub fast float -0.000000e+00, %3615
  %3720 = fdiv fast float %3719, %3714
  %3721 = fdiv fast float %3629, %3714
  %3722 = fmul fast float %3628, 0x3FE279A760000000
  %3723 = fmul fast float %3720, %3615
  %3724 = fmul fast float %3721, %3629
  %3725 = fmul fast float %3718, %3617
  %3726 = fadd fast float %3723, %3725
  %3727 = fsub fast float %3726, %3724
  %3728 = call float @dx.op.unary.f32(i32 6, float %3727)  ; FAbs(value)
  %3729 = fadd fast float %3728, 0x3DDB7CDFE0000000
  %3730 = fdiv fast float %3722, %3729
  br label %3731

; <label>:3731                                    ; preds = %3716, %3706
  %3732 = phi float [ %3730, %3716 ], [ 1.000000e+00, %3706 ]
  %3733 = call float @dx.op.binary.f32(i32 36, float %3732, float %3708)  ; FMin(a,b)
  %3734 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3735 = fcmp fast olt float %3734, 1.000000e+00
  br i1 %3735, label %3736, label %3746

; <label>:3736                                    ; preds = %3731
  %3737 = fmul fast float %3734, %3615
  %3738 = fmul fast float %3734, %3629
  %3739 = fmul fast float %3734, %3617
  %3740 = fmul fast float %3734, %3632
  %3741 = fmul fast float %3734, %3644
  %3742 = fmul fast float %3734, %3634
  %3743 = fmul fast float %3734, %3647
  %3744 = fmul fast float %3734, %3659
  %3745 = fmul fast float %3734, %3649
  br label %3746

; <label>:3746                                    ; preds = %3736, %3731
  %3747 = phi float [ %3743, %3736 ], [ %3647, %3731 ]
  %3748 = phi float [ %3744, %3736 ], [ %3659, %3731 ]
  %3749 = phi float [ %3745, %3736 ], [ %3649, %3731 ]
  %3750 = phi float [ %3740, %3736 ], [ %3632, %3731 ]
  %3751 = phi float [ %3741, %3736 ], [ %3644, %3731 ]
  %3752 = phi float [ %3742, %3736 ], [ %3634, %3731 ]
  %3753 = phi float [ %3737, %3736 ], [ %3615, %3731 ]
  %3754 = phi float [ %3738, %3736 ], [ %3629, %3731 ]
  %3755 = phi float [ %3739, %3736 ], [ %3617, %3731 ]
  %3756 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3628)  ; FMax(a,b)
  %3757 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3643)  ; FMax(a,b)
  %3758 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3658)  ; FMax(a,b)
  %3759 = fcmp fast oge float %3416, 0.000000e+00
  %3760 = and i1 %3759, %3187
  %3761 = fcmp fast ole float %3416, 1.000000e+00
  %3762 = and i1 %3761, %3760
  %3763 = fcmp fast oge float %3417, 0.000000e+00
  %3764 = and i1 %3763, %3762
  %3765 = fcmp fast ole float %3417, 1.000000e+00
  %3766 = and i1 %3765, %3764
  br i1 %3766, label %3767, label %3912, !dx.controlflow.hints !112

; <label>:3767                                    ; preds = %3746
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 3
  %3771 = fmul fast float %3769, %3416
  %3772 = fmul fast float %3770, %3417
  %3773 = call float @dx.op.unary.f32(i32 27, float %3771)  ; Round_ni(value)
  %3774 = call float @dx.op.unary.f32(i32 27, float %3772)  ; Round_ni(value)
  %3775 = fptosi float %3773 to i32
  %3776 = fptosi float %3774 to i32
  %3777 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %3775, i32 %3776, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3778 = extractvalue %dx.types.ResRet.i32 %3777, 0
  %3779 = and i32 %3778, 65535
  %3780 = lshr i32 %3778, 16
  %3781 = icmp eq i32 %3779, 65535
  br i1 %3781, label %3818, label %3782

; <label>:3782                                    ; preds = %3767
  %3783 = extractvalue %dx.types.CBufRet.f32 %3185, 1
  %3784 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3785 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3786 = fmul fast float %3784, %3416
  %3787 = fmul fast float %3785, %3417
  %3788 = fmul fast float %3786, 1.250000e-01
  %3789 = fmul fast float %3787, 1.250000e-01
  %3790 = call float @dx.op.unary.f32(i32 27, float %3788)  ; Round_ni(value)
  %3791 = call float @dx.op.unary.f32(i32 27, float %3789)  ; Round_ni(value)
  %3792 = fmul fast float %3790, 8.000000e+00
  %3793 = fmul fast float %3791, 8.000000e+00
  %3794 = and i32 %3778, 255
  %3795 = lshr i32 %3778, 8
  %3796 = and i32 %3795, 255
  %3797 = mul nuw nsw i32 %3794, 9
  %3798 = uitofp i32 %3797 to float
  %3799 = mul nuw nsw i32 %3796, 9
  %3800 = uitofp i32 %3799 to float
  %3801 = fadd fast float %3798, 5.000000e-01
  %3802 = fadd fast float %3801, %3786
  %3803 = fsub fast float %3802, %3792
  %3804 = fadd fast float %3800, 5.000000e-01
  %3805 = fadd fast float %3804, %3787
  %3806 = fsub fast float %3805, %3793
  %3807 = fdiv fast float %3803, %3186
  %3808 = fdiv fast float %3806, %3783
  %3809 = fmul fast float %3444, 4.375000e-01
  %3810 = fadd fast float %3809, 3.125000e-02
  %3811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3807, float %3808, float %3810, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.f32 %3811, 1
  %3814 = extractvalue %dx.types.ResRet.f32 %3811, 2
  %3815 = fadd fast float %3812, %3756
  %3816 = fadd fast float %3813, %3757
  %3817 = fadd fast float %3814, %3758
  br label %3818

; <label>:3818                                    ; preds = %3782, %3767
  %3819 = phi float [ %3817, %3782 ], [ %3758, %3767 ]
  %3820 = phi float [ %3816, %3782 ], [ %3757, %3767 ]
  %3821 = phi float [ %3815, %3782 ], [ %3756, %3767 ]
  %3822 = icmp eq i32 %3780, 65535
  br i1 %3822, label %3912, label %3823

; <label>:3823                                    ; preds = %3818
  %3824 = extractvalue %dx.types.CBufRet.f32 %3185, 1
  %3825 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3826 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3827 = fmul fast float %3825, %3416
  %3828 = fmul fast float %3826, %3417
  %3829 = fmul fast float %3827, 1.250000e-01
  %3830 = fmul fast float %3828, 1.250000e-01
  %3831 = call float @dx.op.unary.f32(i32 27, float %3829)  ; Round_ni(value)
  %3832 = call float @dx.op.unary.f32(i32 27, float %3830)  ; Round_ni(value)
  %3833 = fmul fast float %3831, 8.000000e+00
  %3834 = fmul fast float %3832, 8.000000e+00
  %3835 = fsub fast float %3827, %3833
  %3836 = fsub fast float %3828, %3834
  %3837 = fadd fast float %3835, 5.000000e-01
  %3838 = fadd fast float %3836, 5.000000e-01
  %3839 = and i32 %3780, 255
  %3840 = lshr i32 %3778, 24
  %3841 = mul nuw nsw i32 %3839, 9
  %3842 = uitofp i32 %3841 to float
  %3843 = mul nuw nsw i32 %3840, 9
  %3844 = uitofp i32 %3843 to float
  %3845 = fadd fast float %3837, %3842
  %3846 = fadd fast float %3838, %3844
  %3847 = fdiv fast float %3845, %3186
  %3848 = fdiv fast float %3846, %3824
  %3849 = fmul fast float %3444, 4.375000e-01
  %3850 = fadd fast float %3849, 3.125000e-02
  %3851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3847, float %3848, float %3850, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3855 = fadd fast float %3849, 5.312500e-01
  %3856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3847, float %3848, float %3855, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = fmul fast float %3857, 2.000000e+00
  %3861 = fmul fast float %3858, 2.000000e+00
  %3862 = fmul fast float %3859, 2.000000e+00
  %3863 = fadd fast float %3860, -1.000000e+00
  %3864 = fadd fast float %3861, -1.000000e+00
  %3865 = fadd fast float %3862, -1.000000e+00
  %3866 = fmul fast float %3863, %3863
  %3867 = fmul fast float %3864, %3864
  %3868 = fadd fast float %3866, %3867
  %3869 = fmul fast float %3865, %3865
  %3870 = fadd fast float %3868, %3869
  %3871 = call float @dx.op.unary.f32(i32 24, float %3870)  ; Sqrt(value)
  %3872 = fcmp fast ogt float %3871, 0.000000e+00
  br i1 %3872, label %3873, label %3877

; <label>:3873                                    ; preds = %3823
  %3874 = fdiv fast float %3863, %3871
  %3875 = fdiv fast float %3864, %3871
  %3876 = fdiv fast float %3865, %3871
  br label %3877

; <label>:3877                                    ; preds = %3873, %3823
  %3878 = phi float [ %3874, %3873 ], [ 0.000000e+00, %3823 ]
  %3879 = phi float [ %3875, %3873 ], [ 0.000000e+00, %3823 ]
  %3880 = phi float [ %3876, %3873 ], [ 0.000000e+00, %3823 ]
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3884 = fsub fast float %3035, %3882
  %3885 = fsub fast float %3036, %3883
  %3886 = fmul fast float %3884, %3884
  %3887 = fmul fast float %3885, %3885
  %3888 = fadd fast float %3886, %3887
  %3889 = call float @dx.op.unary.f32(i32 24, float %3888)  ; Sqrt(value)
  %3890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.CBufRet.f32 %3890, 1
  %3893 = fsub fast float %3889, %3891
  %3894 = fdiv fast float %3893, %3892
  %3895 = call float @dx.op.unary.f32(i32 7, float %3894)  ; Saturate(value)
  %3896 = fmul fast float %3895, 2.000000e+00
  %3897 = fsub fast float 3.000000e+00, %3896
  %3898 = fmul fast float %3895, %3895
  %3899 = fmul fast float %3898, %3897
  %3900 = call float @dx.op.dot3.f32(i32 55, float %3878, float %3879, float %3880, float %2999, float %3000, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %3901 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3900)  ; FMax(a,b)
  %3902 = fmul fast float %3901, 0x400C5BF8A0000000
  %3903 = fmul fast float %3899, %3852
  %3904 = fmul fast float %3903, %3902
  %3905 = fadd fast float %3904, %3821
  %3906 = fmul fast float %3899, %3853
  %3907 = fmul fast float %3906, %3902
  %3908 = fadd fast float %3907, %3820
  %3909 = fmul fast float %3899, %3854
  %3910 = fmul fast float %3909, %3902
  %3911 = fadd fast float %3910, %3819
  br label %3912

; <label>:3912                                    ; preds = %3877, %3818, %3746
  %3913 = phi float [ %3911, %3877 ], [ %3819, %3818 ], [ %3758, %3746 ]
  %3914 = phi float [ %3908, %3877 ], [ %3820, %3818 ], [ %3757, %3746 ]
  %3915 = phi float [ %3905, %3877 ], [ %3821, %3818 ], [ %3756, %3746 ]
  %3916 = fcmp fast ogt float %3403, %3440
  %3917 = and i1 %3759, %3916
  %3918 = and i1 %3761, %3917
  %3919 = and i1 %3763, %3918
  %3920 = and i1 %3765, %3919
  br i1 %3920, label %3921, label %3978, !dx.controlflow.hints !113

; <label>:3921                                    ; preds = %3912
  %3922 = fmul fast float %3442, 0x3FC24924A0000000
  %3923 = fsub fast float %3403, %3440
  %3924 = fdiv fast float %3923, %3922
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 0
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = extractvalue %dx.types.CBufRet.f32 %3928, 1
  %3931 = extractvalue %dx.types.CBufRet.f32 %3928, 2
  %3932 = fsub fast float %3927, %3915
  %3933 = fsub fast float %3929, %3753
  %3934 = fsub fast float %3930, %3754
  %3935 = fsub fast float %3931, %3755
  %3936 = fmul fast float %3932, %3925
  %3937 = fmul fast float %3933, %3925
  %3938 = fmul fast float %3934, %3925
  %3939 = fmul fast float %3935, %3925
  %3940 = fadd fast float %3936, %3915
  %3941 = fadd fast float %3937, %3753
  %3942 = fadd fast float %3938, %3754
  %3943 = fadd fast float %3939, %3755
  %3944 = extractvalue %dx.types.CBufRet.f32 %3926, 1
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.CBufRet.f32 %3945, 1
  %3948 = extractvalue %dx.types.CBufRet.f32 %3945, 2
  %3949 = fsub fast float %3944, %3914
  %3950 = fsub fast float %3946, %3750
  %3951 = fsub fast float %3947, %3751
  %3952 = fsub fast float %3948, %3752
  %3953 = fmul fast float %3949, %3925
  %3954 = fmul fast float %3950, %3925
  %3955 = fmul fast float %3951, %3925
  %3956 = fmul fast float %3952, %3925
  %3957 = fadd fast float %3953, %3914
  %3958 = fadd fast float %3954, %3750
  %3959 = fadd fast float %3955, %3751
  %3960 = fadd fast float %3956, %3752
  %3961 = extractvalue %dx.types.CBufRet.f32 %3926, 2
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.CBufRet.f32 %3962, 1
  %3965 = extractvalue %dx.types.CBufRet.f32 %3962, 2
  %3966 = fsub fast float %3961, %3913
  %3967 = fsub fast float %3963, %3747
  %3968 = fsub fast float %3964, %3748
  %3969 = fsub fast float %3965, %3749
  %3970 = fmul fast float %3966, %3925
  %3971 = fmul fast float %3967, %3925
  %3972 = fmul fast float %3968, %3925
  %3973 = fmul fast float %3969, %3925
  %3974 = fadd fast float %3970, %3913
  %3975 = fadd fast float %3971, %3747
  %3976 = fadd fast float %3972, %3748
  %3977 = fadd fast float %3973, %3749
  br label %3978

; <label>:3978                                    ; preds = %3921, %3912
  %3979 = phi float [ %3974, %3921 ], [ %3913, %3912 ]
  %3980 = phi float [ %3975, %3921 ], [ %3747, %3912 ]
  %3981 = phi float [ %3976, %3921 ], [ %3748, %3912 ]
  %3982 = phi float [ %3977, %3921 ], [ %3749, %3912 ]
  %3983 = phi float [ %3957, %3921 ], [ %3914, %3912 ]
  %3984 = phi float [ %3958, %3921 ], [ %3750, %3912 ]
  %3985 = phi float [ %3959, %3921 ], [ %3751, %3912 ]
  %3986 = phi float [ %3960, %3921 ], [ %3752, %3912 ]
  %3987 = phi float [ %3940, %3921 ], [ %3915, %3912 ]
  %3988 = phi float [ %3941, %3921 ], [ %3753, %3912 ]
  %3989 = phi float [ %3942, %3921 ], [ %3754, %3912 ]
  %3990 = phi float [ %3943, %3921 ], [ %3755, %3912 ]
  %3991 = extractvalue %dx.types.CBufRet.f32 %3565, 3
  %3992 = fmul fast float %3991, %3987
  %3993 = fmul fast float %3991, %3983
  %3994 = fmul fast float %3991, %3979
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %3997 = fmul fast float %3992, %3996
  %3998 = fmul fast float %3993, %3996
  %3999 = fmul fast float %3994, %3996
  %4000 = call float @dx.op.dot3.f32(i32 55, float %3997, float %3998, float %3999, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4001 = fmul fast float %4000, 0x3FD20DD760000000
  %4002 = fmul fast float %3988, 1.500000e+00
  %4003 = fmul fast float %4002, %3991
  %4004 = fmul fast float %4003, %3996
  %4005 = fmul fast float %3989, 1.500000e+00
  %4006 = fmul fast float %4005, %3991
  %4007 = fmul fast float %4006, %3996
  %4008 = fmul fast float %3990, 1.500000e+00
  %4009 = fmul fast float %4008, %3991
  %4010 = fmul fast float %4009, %3996
  %4011 = fmul fast float %3984, 1.500000e+00
  %4012 = fmul fast float %4011, %3991
  %4013 = fmul fast float %4012, %3996
  %4014 = fmul fast float %3985, 1.500000e+00
  %4015 = fmul fast float %4014, %3991
  %4016 = fmul fast float %4015, %3996
  %4017 = fmul fast float %3986, 1.500000e+00
  %4018 = fmul fast float %4017, %3991
  %4019 = fmul fast float %4018, %3996
  %4020 = fmul fast float %3980, 1.500000e+00
  %4021 = fmul fast float %4020, %3991
  %4022 = fmul fast float %4021, %3996
  %4023 = fmul fast float %3981, 1.500000e+00
  %4024 = fmul fast float %4023, %3991
  %4025 = fmul fast float %4024, %3996
  %4026 = fmul fast float %3982, 1.500000e+00
  %4027 = fmul fast float %4026, %3991
  %4028 = fmul fast float %4027, %3996
  %4029 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3997)  ; FMax(a,b)
  %4030 = call float @dx.op.dot3.f32(i32 55, float %4004, float %4007, float %4010, float %4004, float %4007, float %4010)  ; Dot3(ax,ay,az,bx,by,bz)
  %4031 = fcmp fast oeq float %4030, 0.000000e+00
  %4032 = fcmp fast oeq float %4029, 0.000000e+00
  %4033 = or i1 %4032, %4031
  br i1 %4033, label %4063, label %4034

; <label>:4034                                    ; preds = %3978
  %4035 = fsub fast float -0.000000e+00, %4010
  %4036 = fsub fast float -0.000000e+00, %4004
  %4037 = call float @dx.op.unary.f32(i32 24, float %4030)  ; Sqrt(value)
  %4038 = fdiv fast float %4037, %4029
  %4039 = fcmp fast ogt float %4038, 0x3FFB6F8900000000
  %4040 = select i1 %4039, float 0x3FFB6F8900000000, float %4038
  %4041 = fmul fast float %4040, 0x3FE8A23460000000
  %4042 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4043 = call float @dx.op.binary.f32(i32 35, float %4040, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4044 = fmul fast float %4042, %4029
  %4045 = fmul fast float %4043, 0x3FF279A740000000
  %4046 = fadd fast float %4045, -1.000000e+00
  %4047 = call float @dx.op.dot3.f32(i32 55, float %4035, float %4036, float %4007, float %4035, float %4036, float %4007)  ; Dot3(ax,ay,az,bx,by,bz)
  %4048 = call float @dx.op.unary.f32(i32 25, float %4047)  ; Rsqrt(value)
  %4049 = fmul fast float %4048, %4035
  %4050 = fmul fast float %4048, %4036
  %4051 = fmul fast float %4048, %4007
  %4052 = fmul fast float %4046, %4046
  %4053 = fsub fast float 1.000000e+00, %4052
  %4054 = fmul fast float %4043, 0x40005F8BE0000000
  %4055 = fsub fast float 0x400C5BF8A0000000, %4054
  %4056 = fdiv fast float %4044, %4055
  %4057 = fmul fast float %4056, 0x3FEE31C3C0000000
  %4058 = fmul fast float %4057, %4053
  %4059 = fmul fast float %4043, 0x3FDACB7480000000
  %4060 = fadd fast float %4059, 0xBFD7347680000000
  %4061 = fmul fast float %4060, %4056
  %4062 = fmul fast float %4061, %4053
  br label %4063

; <label>:4063                                    ; preds = %4034, %3978
  %4064 = phi float [ %4049, %4034 ], [ 0.000000e+00, %3978 ]
  %4065 = phi float [ %4050, %4034 ], [ 0.000000e+00, %3978 ]
  %4066 = phi float [ %4051, %4034 ], [ 0.000000e+00, %3978 ]
  %4067 = phi float [ %4058, %4034 ], [ 0.000000e+00, %3978 ]
  %4068 = phi float [ %4062, %4034 ], [ 0.000000e+00, %3978 ]
  %4069 = call float @dx.op.dot3.f32(i32 55, float %4064, float %4065, float %4066, float %2999, float %3000, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4070 = fmul fast float %4069, %4069
  %4071 = fmul fast float %4070, 0x3FEE471020000000
  %4072 = fadd fast float %4071, 0xBFD42F6020000000
  %4073 = fmul fast float %4029, 0x3FD20DD760000000
  %4074 = fmul fast float %4072, %4068
  %4075 = fmul fast float %4067, 0x3FDF454380000000
  %4076 = fmul fast float %4075, %4069
  %4077 = fadd fast float %4076, %4073
  %4078 = fadd fast float %4077, %4074
  %4079 = call float @dx.op.dot3.f32(i32 55, float %4064, float %4065, float %4066, float %3013, float %3014, float %3015)  ; Dot3(ax,ay,az,bx,by,bz)
  %4080 = fmul fast float %4079, 0x3FDF454380000000
  %4081 = fmul fast float %4079, %4079
  %4082 = fmul fast float %4081, 0x3FEE471020000000
  %4083 = fadd fast float %4082, 0xBFD42F6020000000
  %4084 = call float @dx.op.dot3.f32(i32 55, float %4029, float %4067, float %4068, float 0x3FD20DD760000000, float %4080, float %4083)  ; Dot3(ax,ay,az,bx,by,bz)
  %4085 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3998)  ; FMax(a,b)
  %4086 = call float @dx.op.dot3.f32(i32 55, float %4013, float %4016, float %4019, float %4013, float %4016, float %4019)  ; Dot3(ax,ay,az,bx,by,bz)
  %4087 = fcmp fast oeq float %4086, 0.000000e+00
  %4088 = fcmp fast oeq float %4085, 0.000000e+00
  %4089 = or i1 %4088, %4087
  br i1 %4089, label %4119, label %4090

; <label>:4090                                    ; preds = %4063
  %4091 = fsub fast float -0.000000e+00, %4019
  %4092 = fsub fast float -0.000000e+00, %4013
  %4093 = call float @dx.op.unary.f32(i32 24, float %4086)  ; Sqrt(value)
  %4094 = fdiv fast float %4093, %4085
  %4095 = fcmp fast ogt float %4094, 0x3FFB6F8900000000
  %4096 = select i1 %4095, float 0x3FFB6F8900000000, float %4094
  %4097 = fmul fast float %4096, 0x3FE8A23460000000
  %4098 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4099 = call float @dx.op.binary.f32(i32 35, float %4096, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4100 = fmul fast float %4098, %4085
  %4101 = fmul fast float %4099, 0x3FF279A740000000
  %4102 = fadd fast float %4101, -1.000000e+00
  %4103 = call float @dx.op.dot3.f32(i32 55, float %4091, float %4092, float %4016, float %4091, float %4092, float %4016)  ; Dot3(ax,ay,az,bx,by,bz)
  %4104 = call float @dx.op.unary.f32(i32 25, float %4103)  ; Rsqrt(value)
  %4105 = fmul fast float %4104, %4091
  %4106 = fmul fast float %4104, %4092
  %4107 = fmul fast float %4104, %4016
  %4108 = fmul fast float %4102, %4102
  %4109 = fsub fast float 1.000000e+00, %4108
  %4110 = fmul fast float %4099, 0x40005F8BE0000000
  %4111 = fsub fast float 0x400C5BF8A0000000, %4110
  %4112 = fdiv fast float %4100, %4111
  %4113 = fmul fast float %4112, 0x3FEE31C3C0000000
  %4114 = fmul fast float %4113, %4109
  %4115 = fmul fast float %4099, 0x3FDACB7480000000
  %4116 = fadd fast float %4115, 0xBFD7347680000000
  %4117 = fmul fast float %4116, %4112
  %4118 = fmul fast float %4117, %4109
  br label %4119

; <label>:4119                                    ; preds = %4090, %4063
  %4120 = phi float [ %4105, %4090 ], [ 0.000000e+00, %4063 ]
  %4121 = phi float [ %4106, %4090 ], [ 0.000000e+00, %4063 ]
  %4122 = phi float [ %4107, %4090 ], [ 0.000000e+00, %4063 ]
  %4123 = phi float [ %4114, %4090 ], [ 0.000000e+00, %4063 ]
  %4124 = phi float [ %4118, %4090 ], [ 0.000000e+00, %4063 ]
  %4125 = call float @dx.op.dot3.f32(i32 55, float %4120, float %4121, float %4122, float %2999, float %3000, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4126 = fmul fast float %4125, %4125
  %4127 = fmul fast float %4126, 0x3FEE471020000000
  %4128 = fadd fast float %4127, 0xBFD42F6020000000
  %4129 = fmul fast float %4085, 0x3FD20DD760000000
  %4130 = fmul fast float %4128, %4124
  %4131 = fmul fast float %4123, 0x3FDF454380000000
  %4132 = fmul fast float %4131, %4125
  %4133 = fadd fast float %4132, %4129
  %4134 = fadd fast float %4133, %4130
  %4135 = call float @dx.op.dot3.f32(i32 55, float %4120, float %4121, float %4122, float %3013, float %3014, float %3015)  ; Dot3(ax,ay,az,bx,by,bz)
  %4136 = fmul fast float %4135, 0x3FDF454380000000
  %4137 = fmul fast float %4135, %4135
  %4138 = fmul fast float %4137, 0x3FEE471020000000
  %4139 = fadd fast float %4138, 0xBFD42F6020000000
  %4140 = call float @dx.op.dot3.f32(i32 55, float %4085, float %4123, float %4124, float 0x3FD20DD760000000, float %4136, float %4139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4141 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3999)  ; FMax(a,b)
  %4142 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4025, float %4028, float %4022, float %4025, float %4028)  ; Dot3(ax,ay,az,bx,by,bz)
  %4143 = fcmp fast oeq float %4142, 0.000000e+00
  %4144 = fcmp fast oeq float %4141, 0.000000e+00
  %4145 = or i1 %4144, %4143
  br i1 %4145, label %4175, label %4146

; <label>:4146                                    ; preds = %4119
  %4147 = fsub fast float -0.000000e+00, %4028
  %4148 = fsub fast float -0.000000e+00, %4022
  %4149 = call float @dx.op.unary.f32(i32 24, float %4142)  ; Sqrt(value)
  %4150 = fdiv fast float %4149, %4141
  %4151 = fcmp fast ogt float %4150, 0x3FFB6F8900000000
  %4152 = select i1 %4151, float 0x3FFB6F8900000000, float %4150
  %4153 = fmul fast float %4152, 0x3FE8A23460000000
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = call float @dx.op.binary.f32(i32 35, float %4152, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4156 = fmul fast float %4154, %4141
  %4157 = fmul fast float %4155, 0x3FF279A740000000
  %4158 = fadd fast float %4157, -1.000000e+00
  %4159 = call float @dx.op.dot3.f32(i32 55, float %4147, float %4148, float %4025, float %4147, float %4148, float %4025)  ; Dot3(ax,ay,az,bx,by,bz)
  %4160 = call float @dx.op.unary.f32(i32 25, float %4159)  ; Rsqrt(value)
  %4161 = fmul fast float %4160, %4147
  %4162 = fmul fast float %4160, %4148
  %4163 = fmul fast float %4160, %4025
  %4164 = fmul fast float %4158, %4158
  %4165 = fsub fast float 1.000000e+00, %4164
  %4166 = fmul fast float %4155, 0x40005F8BE0000000
  %4167 = fsub fast float 0x400C5BF8A0000000, %4166
  %4168 = fdiv fast float %4156, %4167
  %4169 = fmul fast float %4168, 0x3FEE31C3C0000000
  %4170 = fmul fast float %4169, %4165
  %4171 = fmul fast float %4155, 0x3FDACB7480000000
  %4172 = fadd fast float %4171, 0xBFD7347680000000
  %4173 = fmul fast float %4172, %4168
  %4174 = fmul fast float %4173, %4165
  br label %4175

; <label>:4175                                    ; preds = %4146, %4119
  %4176 = phi float [ %4161, %4146 ], [ 0.000000e+00, %4119 ]
  %4177 = phi float [ %4162, %4146 ], [ 0.000000e+00, %4119 ]
  %4178 = phi float [ %4163, %4146 ], [ 0.000000e+00, %4119 ]
  %4179 = phi float [ %4170, %4146 ], [ 0.000000e+00, %4119 ]
  %4180 = phi float [ %4174, %4146 ], [ 0.000000e+00, %4119 ]
  %4181 = call float @dx.op.dot3.f32(i32 55, float %4176, float %4177, float %4178, float %2999, float %3000, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4182 = fmul fast float %4181, %4181
  %4183 = fmul fast float %4182, 0x3FEE471020000000
  %4184 = fadd fast float %4183, 0xBFD42F6020000000
  %4185 = fmul fast float %4141, 0x3FD20DD760000000
  %4186 = fmul fast float %4184, %4180
  %4187 = fmul fast float %4179, 0x3FDF454380000000
  %4188 = fmul fast float %4187, %4181
  %4189 = fadd fast float %4188, %4185
  %4190 = fadd fast float %4189, %4186
  %4191 = call float @dx.op.dot3.f32(i32 55, float %4176, float %4177, float %4178, float %3013, float %3014, float %3015)  ; Dot3(ax,ay,az,bx,by,bz)
  %4192 = fmul fast float %4191, 0x3FDF454380000000
  %4193 = fmul fast float %4191, %4191
  %4194 = fmul fast float %4193, 0x3FEE471020000000
  %4195 = fadd fast float %4194, 0xBFD42F6020000000
  %4196 = call float @dx.op.dot3.f32(i32 55, float %4141, float %4179, float %4180, float 0x3FD20DD760000000, float %4192, float %4195)  ; Dot3(ax,ay,az,bx,by,bz)
  %4197 = call float @dx.op.binary.f32(i32 35, float %4078, float 0.000000e+00)  ; FMax(a,b)
  %4198 = call float @dx.op.binary.f32(i32 35, float %4134, float 0.000000e+00)  ; FMax(a,b)
  %4199 = call float @dx.op.binary.f32(i32 35, float %4190, float 0.000000e+00)  ; FMax(a,b)
  %4200 = call float @dx.op.binary.f32(i32 35, float %4084, float 0.000000e+00)  ; FMax(a,b)
  %4201 = call float @dx.op.binary.f32(i32 35, float %4140, float 0.000000e+00)  ; FMax(a,b)
  %4202 = call float @dx.op.binary.f32(i32 35, float %4196, float 0.000000e+00)  ; FMax(a,b)
  %4203 = fsub fast float %3397, %4197
  %4204 = fsub fast float %3398, %4198
  %4205 = fsub fast float %3399, %4199
  %4206 = fmul fast float %4203, %3076
  %4207 = fmul fast float %4204, %3076
  %4208 = fmul fast float %4205, %3076
  %4209 = fadd fast float %4206, %4197
  %4210 = fadd fast float %4207, %4198
  %4211 = fadd fast float %4208, %4199
  %4212 = fsub fast float %3394, %4200
  %4213 = fsub fast float %3395, %4201
  %4214 = fsub fast float %3396, %4202
  %4215 = fmul fast float %4212, %3076
  %4216 = fmul fast float %4213, %3076
  %4217 = fmul fast float %4214, %3076
  %4218 = fadd fast float %4215, %4200
  %4219 = fadd fast float %4216, %4201
  %4220 = fadd fast float %4217, %4202
  %4221 = fsub fast float %3178, %4001
  %4222 = fmul fast float %4221, %3076
  %4223 = fadd fast float %4222, %4001
  br label %4224

; <label>:4224                                    ; preds = %4175, %3393
  %4225 = phi float [ %4223, %4175 ], [ %3178, %3393 ]
  %4226 = phi float [ %4218, %4175 ], [ %3394, %3393 ]
  %4227 = phi float [ %4219, %4175 ], [ %3395, %3393 ]
  %4228 = phi float [ %4220, %4175 ], [ %3396, %3393 ]
  %4229 = phi float [ %4209, %4175 ], [ %3397, %3393 ]
  %4230 = phi float [ %4210, %4175 ], [ %3398, %3393 ]
  %4231 = phi float [ %4211, %4175 ], [ %3399, %3393 ]
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 0
  %4234 = call float @dx.op.binary.f32(i32 36, float %2993, float %4233)  ; FMin(a,b)
  %4235 = fmul fast float %4234, %3017
  %4236 = fsub fast float 1.000000e+00, %4235
  %4237 = bitcast float %4236 to i32
  %4238 = sub nsw i32 2129859010, %4237
  %4239 = bitcast i32 %4238 to float
  %4240 = call float @dx.op.binary.f32(i32 36, float %2994, float %4233)  ; FMin(a,b)
  %4241 = fmul fast float %4240, %3017
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = bitcast float %4242 to i32
  %4244 = sub nsw i32 2129859010, %4243
  %4245 = bitcast i32 %4244 to float
  %4246 = call float @dx.op.binary.f32(i32 36, float %2995, float %4233)  ; FMin(a,b)
  %4247 = fmul fast float %4246, %3017
  %4248 = fsub fast float 1.000000e+00, %4247
  %4249 = bitcast float %4248 to i32
  %4250 = sub nsw i32 2129859010, %4249
  %4251 = bitcast i32 %4250 to float
  %4252 = fmul fast float %4229, %3016
  %4253 = fmul fast float %4252, %4239
  %4254 = fmul fast float %4230, %3016
  %4255 = fmul fast float %4254, %4245
  %4256 = fmul fast float %4231, %3016
  %4257 = fmul fast float %4256, %4251
  %4258 = call float @dx.op.binary.f32(i32 36, float %2996, float %4233)  ; FMin(a,b)
  %4259 = fmul fast float %4258, %3017
  %4260 = fsub fast float 1.000000e+00, %4259
  %4261 = bitcast float %4260 to i32
  %4262 = sub nsw i32 2129859010, %4261
  %4263 = bitcast i32 %4262 to float
  %4264 = call float @dx.op.binary.f32(i32 36, float %2997, float %4233)  ; FMin(a,b)
  %4265 = fmul fast float %4264, %3017
  %4266 = fsub fast float 1.000000e+00, %4265
  %4267 = bitcast float %4266 to i32
  %4268 = sub nsw i32 2129859010, %4267
  %4269 = bitcast i32 %4268 to float
  %4270 = call float @dx.op.binary.f32(i32 36, float %3005, float %4233)  ; FMin(a,b)
  %4271 = fmul fast float %4270, %3017
  %4272 = fsub fast float 1.000000e+00, %4271
  %4273 = bitcast float %4272 to i32
  %4274 = sub nsw i32 2129859010, %4273
  %4275 = bitcast i32 %4274 to float
  %4276 = fmul fast float %4226, %3016
  %4277 = fmul fast float %4276, %4263
  %4278 = fmul fast float %4227, %3016
  %4279 = fmul fast float %4278, %4269
  %4280 = fmul fast float %4228, %3016
  %4281 = fmul fast float %4280, %4275
  %4282 = call float @dx.op.dot3.f32(i32 55, float %4253, float %4255, float %4257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4283 = select i1 %245, float 0.000000e+00, float %4253
  %4284 = select i1 %245, float %4282, float %4255
  %4285 = select i1 %245, float 0.000000e+00, float %4257
  %4286 = call float @dx.op.dot3.f32(i32 55, float %4277, float %4279, float %4281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4287 = select i1 %245, float 0.000000e+00, float %4277
  %4288 = select i1 %245, float %4286, float %4279
  %4289 = select i1 %245, float 0.000000e+00, float %4281
  %4290 = fmul fast float %3007, 9.843750e-01
  %4291 = fmul fast float %3002, 9.843750e-01
  %4292 = fadd fast float %4290, 7.812500e-03
  %4293 = fadd fast float %4291, 7.812500e-03
  %4294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %4292, float %4293, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 2
  %4296 = extractvalue %dx.types.ResRet.f32 %4294, 3
  %4297 = fmul fast float %4295, %2996
  %4298 = fmul fast float %4295, %2997
  %4299 = fmul fast float %4295, %3005
  %4300 = fadd fast float %4297, %4296
  %4301 = fadd fast float %4298, %4296
  %4302 = fadd fast float %4299, %4296
  %4303 = fcmp fast ogt float %2370, 0.000000e+00
  br i1 %4303, label %4304, label %4330

; <label>:4304                                    ; preds = %4224
  %4305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %2370, float %3007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.ResRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4305, 2
  %4309 = fadd fast float %4306, -5.000000e-01
  %4310 = fadd fast float %4307, -5.000000e-01
  %4311 = fadd fast float %4308, -5.000000e-01
  %4312 = fsub fast float 1.000000e+00, %2996
  %4313 = fsub fast float 1.000000e+00, %2997
  %4314 = fsub fast float 1.000000e+00, %3005
  %4315 = fmul fast float %2996, 4.000000e+00
  %4316 = fmul fast float %4315, %4312
  %4317 = fmul fast float %4316, %4309
  %4318 = fmul fast float %2997, 4.000000e+00
  %4319 = fmul fast float %4318, %4313
  %4320 = fmul fast float %4319, %4310
  %4321 = fmul fast float %3005, 4.000000e+00
  %4322 = fmul fast float %4321, %4314
  %4323 = fmul fast float %4322, %4311
  %4324 = fadd fast float %4317, %4300
  %4325 = fadd fast float %4320, %4301
  %4326 = fadd fast float %4323, %4302
  %4327 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  br label %4330

; <label>:4330                                    ; preds = %4304, %4224
  %4331 = phi float [ %4327, %4304 ], [ %4300, %4224 ]
  %4332 = phi float [ %4328, %4304 ], [ %4301, %4224 ]
  %4333 = phi float [ %4329, %4304 ], [ %4302, %4224 ]
  %4334 = call float @dx.op.binary.f32(i32 35, float %4332, float %4333)  ; FMax(a,b)
  %4335 = call float @dx.op.binary.f32(i32 35, float %4331, float %4334)  ; FMax(a,b)
  %4336 = fsub fast float 1.000000e+00, %4335
  %4337 = fmul fast float %4335, %3002
  %4338 = fadd fast float %4337, %3002
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 2
  %4341 = extractvalue %dx.types.CBufRet.f32 %4339, 3
  %4342 = fmul fast float %4338, %4340
  %4343 = fadd fast float %4342, %4341
  %4344 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4345 = fsub fast float 1.000000e+00, %3028
  %4346 = fadd fast float %4345, %4344
  %4347 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4348 = fcmp fast olt float %4347, 1.000000e+00
  br i1 %4348, label %4349, label %4825

; <label>:4349                                    ; preds = %4330
  %4350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.f32 %4350, 2
  %4352 = extractvalue %dx.types.CBufRet.f32 %4350, 3
  %4353 = fmul fast float %4351, %107
  %4354 = fmul fast float %4352, %108
  %4355 = fptoui float %4353 to i32
  %4356 = fptoui float %4354 to i32
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4359 = extractvalue %dx.types.CBufRet.f32 %4357, 2
  %4360 = extractvalue %dx.types.CBufRet.f32 %4357, 3
  %4361 = fadd fast float %95, -4.000000e+00
  %4362 = call float @dx.op.binary.f32(i32 35, float %4361, float 0.000000e+00)  ; FMax(a,b)
  %4363 = fadd fast float %4362, %4358
  %4364 = fmul fast float %4363, %4359
  %4365 = call float @dx.op.unary.f32(i32 23, float %4364)  ; Log(value)
  %4366 = fmul fast float %4365, %4360
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 2
  %4369 = fmul fast float %4366, %4368
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.i32 %4371, 1
  %4373 = add i32 %4372, -1
  %4374 = uitofp i32 %4372 to float
  %4375 = fmul fast float %4374, %4370
  %4376 = fptoui float %4375 to i32
  %4377 = call i32 @dx.op.binary.i32(i32 40, i32 %4376, i32 %4373)  ; UMin(a,b)
  %4378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.i32 %4378, 2
  %4380 = extractvalue %dx.types.CBufRet.i32 %4378, 3
  %4381 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4356, i32 %4379, i32 %4355)  ; UMad(a,b,c)
  %4382 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4377, i32 %4380, i32 %4381)  ; UMad(a,b,c)
  %4383 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %4384 = fptoui float %4383 to i32
  %4385 = lshr i32 %4384, 5
  %4386 = call i32 @dx.op.binary.i32(i32 40, i32 %4385, i32 8191)  ; UMin(a,b)
  %4387 = fsub fast float %2792, %156
  %4388 = call float @dx.op.unary.f32(i32 7, float %4387)  ; Saturate(value)
  %4389 = fcmp fast ogt float %4388, 0.000000e+00
  %4390 = fcmp fast ogt float %3015, 0.000000e+00
  %4391 = and i1 %4390, %4389
  br i1 %4391, label %4392, label %4421

; <label>:4392                                    ; preds = %4349
  %4393 = call float @dx.op.dot3.f32(i32 55, float %3013, float %3014, float %3015, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4394 = call float @dx.op.binary.f32(i32 35, float %4393, float -1.000000e+00)  ; FMax(a,b)
  %4395 = call float @dx.op.binary.f32(i32 36, float %4394, float 1.000000e+00)  ; FMin(a,b)
  %4396 = fmul fast float %4395, %4395
  %4397 = fsub fast float 1.000000e+00, %4396
  %4398 = fmul fast float %4397, 0x3FFC6E2300000000
  %4399 = fsub fast float 1.000000e+00, %4398
  %4400 = fcmp fast ogt float %4399, 0.000000e+00
  %4401 = call float @dx.op.unary.f32(i32 24, float %4399)  ; Sqrt(value)
  %4402 = fsub fast float 1.000000e+00, %4401
  %4403 = call float @dx.op.unary.f32(i32 23, float %4402)  ; Log(value)
  %4404 = fmul fast float %4403, 5.000000e+00
  %4405 = call float @dx.op.unary.f32(i32 21, float %4404)  ; Exp(value)
  %4406 = fmul fast float %4405, 0x3FEF591A60000000
  %4407 = fadd fast float %4406, 0x3F94DCB540000000
  %4408 = select i1 %4400, float %4407, float 1.000000e+00
  %4409 = fcmp fast oge float %4408, 1.000000e+00
  %4410 = fmul fast float %4393, 2.000000e+00
  %4411 = fadd fast float %4410, %3015
  %4412 = select i1 %4409, float %4411, float %3015
  %4413 = fsub fast float %4412, %3015
  %4414 = fmul fast float %4413, %4388
  %4415 = fadd fast float %4414, %3015
  %4416 = call float @dx.op.dot3.f32(i32 55, float %3013, float %3014, float %4415, float %3013, float %3014, float %4415)  ; Dot3(ax,ay,az,bx,by,bz)
  %4417 = call float @dx.op.unary.f32(i32 25, float %4416)  ; Rsqrt(value)
  %4418 = fmul fast float %4417, %3013
  %4419 = fmul fast float %4417, %3014
  %4420 = fmul fast float %4415, %4417
  br label %4421

; <label>:4421                                    ; preds = %4392, %4349
  %4422 = phi float [ %4418, %4392 ], [ %3013, %4349 ]
  %4423 = phi float [ %4419, %4392 ], [ %3014, %4349 ]
  %4424 = phi float [ %4420, %4392 ], [ %3015, %4349 ]
  %4425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.i32 %4425, 2
  %4427 = add nsw i32 %4426, -1
  %4428 = call i32 @dx.op.binary.i32(i32 37, i32 %4427, i32 0)  ; IMax(a,b)
  %4429 = shl i32 %4386, 2
  %4430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.i32 %4430, 0
  %4432 = lshr i32 %4431, 16
  %4433 = and i32 %4431, 65535
  %4434 = lshr i32 %4431, 21
  %4435 = lshr i32 %4433, 5
  %4436 = call i32 @dx.op.binary.i32(i32 40, i32 %4435, i32 %4428)  ; UMin(a,b)
  %4437 = icmp ugt i32 %4434, %4436
  br i1 %4437, label %4801, label %4438

; <label>:4438                                    ; preds = %4421
  br label %4439

; <label>:4439                                    ; preds = %4793, %4438
  %4440 = phi float [ %4794, %4793 ], [ 0.000000e+00, %4438 ]
  %4441 = phi float [ %4795, %4793 ], [ 0.000000e+00, %4438 ]
  %4442 = phi float [ %4796, %4793 ], [ 0.000000e+00, %4438 ]
  %4443 = phi float [ %4797, %4793 ], [ 1.000000e+00, %4438 ]
  %4444 = phi i32 [ %4798, %4793 ], [ %4434, %4438 ]
  %4445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.i32 %4445, 2
  %4447 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4382, i32 %4446, i32 %4444)  ; UMad(a,b,c)
  %4448 = shl i32 %4447, 2
  %4449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4448, i32 undef)  ; BufferLoad(srv,index,wot)
  %4450 = extractvalue %dx.types.ResRet.i32 %4449, 0
  %4451 = shl i32 %4444, 5
  %4452 = sub nsw i32 %4432, %4451
  %4453 = call i32 @dx.op.binary.i32(i32 37, i32 %4452, i32 0)  ; IMax(a,b)
  %4454 = call i32 @dx.op.binary.i32(i32 38, i32 %4453, i32 31)  ; IMin(a,b)
  %4455 = sub nsw i32 1, %4432
  %4456 = add nsw i32 %4455, %4433
  %4457 = call i32 @dx.op.binary.i32(i32 37, i32 %4456, i32 0)  ; IMax(a,b)
  %4458 = call i32 @dx.op.binary.i32(i32 38, i32 %4457, i32 32)  ; IMin(a,b)
  %4459 = and i32 %4458, 31
  %4460 = shl i32 -1, %4459
  %4461 = xor i32 %4460, -1
  %4462 = and i32 %4454, 31
  %4463 = shl i32 %4461, %4462
  %4464 = icmp eq i32 %4458, 32
  %4465 = select i1 %4464, i32 -1, i32 %4463
  %4466 = and i32 %4465, %4450
  %4467 = icmp eq i32 %4466, 0
  br i1 %4467, label %4793, label %4468

; <label>:4468                                    ; preds = %4439
  br label %4469

; <label>:4469                                    ; preds = %4576, %4468
  %4470 = phi float [ %4577, %4576 ], [ %4440, %4468 ]
  %4471 = phi float [ %4578, %4576 ], [ %4441, %4468 ]
  %4472 = phi float [ %4579, %4576 ], [ %4442, %4468 ]
  %4473 = phi float [ %4580, %4576 ], [ %4443, %4468 ]
  %4474 = phi i32 [ %4479, %4576 ], [ %4466, %4468 ]
  %4475 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4474)  ; FirstbitLo(value)
  %4476 = add i32 %4475, %4451
  %4477 = and i32 %4475, 31
  %4478 = shl i32 1, %4477
  %4479 = xor i32 %4478, %4474
  %4480 = mul i32 %4476, 72
  %4481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4480, i32 undef)  ; BufferLoad(srv,index,wot)
  %4482 = extractvalue %dx.types.ResRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.ResRet.f32 %4481, 1
  %4484 = extractvalue %dx.types.ResRet.f32 %4481, 2
  %4485 = add i32 %4480, 12
  %4486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4485, i32 undef)  ; BufferLoad(srv,index,wot)
  %4487 = extractvalue %dx.types.ResRet.i32 %4486, 0
  %4488 = add i32 %4480, 16
  %4489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4488, i32 undef)  ; BufferLoad(srv,index,wot)
  %4490 = extractvalue %dx.types.ResRet.f32 %4489, 0
  %4491 = extractvalue %dx.types.ResRet.f32 %4489, 1
  %4492 = extractvalue %dx.types.ResRet.f32 %4489, 2
  %4493 = add i32 %4480, 28
  %4494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4493, i32 undef)  ; BufferLoad(srv,index,wot)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  %4496 = add i32 %4480, 32
  %4497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4496, i32 undef)  ; BufferLoad(srv,index,wot)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.ResRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.ResRet.f32 %4497, 2
  %4501 = extractvalue %dx.types.ResRet.f32 %4497, 3
  %4502 = add i32 %4480, 48
  %4503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4502, i32 undef)  ; BufferLoad(srv,index,wot)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.ResRet.f32 %4503, 1
  %4506 = add i32 %4480, 56
  %4507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4506, i32 undef)  ; BufferLoad(srv,index,wot)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.ResRet.f32 %4507, 1
  %4510 = add i32 %4480, 64
  %4511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.ResRet.f32 %4511, 1
  %4514 = mul i32 %4476, 60
  %4515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4514, i32 undef)  ; BufferLoad(srv,index,wot)
  %4516 = extractvalue %dx.types.ResRet.f32 %4515, 0
  %4517 = extractvalue %dx.types.ResRet.f32 %4515, 1
  %4518 = extractvalue %dx.types.ResRet.f32 %4515, 2
  %4519 = add i32 %4514, 12
  %4520 = add i32 %4514, 48
  %4521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4520, i32 undef)  ; BufferLoad(srv,index,wot)
  %4522 = extractvalue %dx.types.ResRet.f32 %4521, 0
  %4523 = extractvalue %dx.types.ResRet.f32 %4521, 1
  %4524 = extractvalue %dx.types.ResRet.f32 %4521, 2
  %4525 = and i32 %4487, 32767
  %4526 = bitcast float %4482 to i32
  %4527 = icmp eq i32 %4526, -1
  %4528 = bitcast float %4483 to i32
  %4529 = and i32 %4487, 32768
  %4530 = icmp ne i32 %4529, 0
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 0
  %4533 = extractvalue %dx.types.CBufRet.f32 %4531, 1
  %4534 = extractvalue %dx.types.CBufRet.f32 %4531, 2
  %4535 = fsub fast float %4516, %4532
  %4536 = fsub fast float %4517, %4533
  %4537 = fsub fast float %4518, %4534
  %4538 = fsub fast float %154, %4535
  %4539 = fsub fast float %155, %4536
  %4540 = fsub fast float %156, %4537
  %4541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4519, i32 undef)  ; BufferLoad(srv,index,wot)
  %4542 = extractvalue %dx.types.ResRet.f32 %4541, 0
  %4543 = extractvalue %dx.types.ResRet.f32 %4541, 1
  %4544 = extractvalue %dx.types.ResRet.f32 %4541, 2
  %4545 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4539, float %4540, float %4542, float %4543, float %4544)  ; Dot3(ax,ay,az,bx,by,bz)
  %4546 = add i32 %4514, 24
  %4547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4546, i32 undef)  ; BufferLoad(srv,index,wot)
  %4548 = extractvalue %dx.types.ResRet.f32 %4547, 0
  %4549 = extractvalue %dx.types.ResRet.f32 %4547, 1
  %4550 = extractvalue %dx.types.ResRet.f32 %4547, 2
  %4551 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4539, float %4540, float %4548, float %4549, float %4550)  ; Dot3(ax,ay,az,bx,by,bz)
  %4552 = add i32 %4514, 36
  %4553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4555 = extractvalue %dx.types.ResRet.f32 %4553, 1
  %4556 = extractvalue %dx.types.ResRet.f32 %4553, 2
  %4557 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4539, float %4540, float %4554, float %4555, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %4558 = call float @dx.op.unary.f32(i32 6, float %4545)  ; FAbs(value)
  %4559 = call float @dx.op.unary.f32(i32 6, float %4551)  ; FAbs(value)
  %4560 = call float @dx.op.unary.f32(i32 6, float %4557)  ; FAbs(value)
  %4561 = fsub fast float %4522, %4558
  %4562 = fsub fast float %4523, %4559
  %4563 = fsub fast float %4524, %4560
  %4564 = fmul fast float %4561, %4490
  %4565 = fmul fast float %4562, %4491
  %4566 = fmul fast float %4563, %4492
  %4567 = call float @dx.op.binary.f32(i32 36, float %4565, float %4566)  ; FMin(a,b)
  %4568 = call float @dx.op.binary.f32(i32 36, float %4564, float %4567)  ; FMin(a,b)
  %4569 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4570 = call float @dx.op.binary.f32(i32 36, float %4473, float %4569)  ; FMin(a,b)
  %4571 = uitofp i1 %4530 to float
  %4572 = fadd fast float %4388, 1.000000e+00
  %4573 = fsub fast float %4572, %4571
  %4574 = fmul fast float %4570, %4573
  %4575 = fcmp fast ogt float %4574, 0.000000e+00
  br i1 %4575, label %4582, label %4576

; <label>:4576                                    ; preds = %4724, %4469
  %4577 = phi float [ %4788, %4724 ], [ %4470, %4469 ]
  %4578 = phi float [ %4789, %4724 ], [ %4471, %4469 ]
  %4579 = phi float [ %4790, %4724 ], [ %4472, %4469 ]
  %4580 = phi float [ %4791, %4724 ], [ %4473, %4469 ]
  %4581 = icmp eq i32 %4474, %4478
  br i1 %4581, label %4792, label %4469

; <label>:4582                                    ; preds = %4469
  br i1 %4527, label %4640, label %4583

; <label>:4583                                    ; preds = %4582
  %4584 = fsub fast float -0.000000e+00, %4542
  %4585 = fsub fast float -0.000000e+00, %4543
  %4586 = fsub fast float -0.000000e+00, %4544
  %4587 = call float @dx.op.dot3.f32(i32 55, float %4422, float %4423, float %4424, float %4584, float %4585, float %4586)  ; Dot3(ax,ay,az,bx,by,bz)
  %4588 = fsub fast float -0.000000e+00, %4587
  %4589 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4539, float %4540, float %4584, float %4585, float %4586)  ; Dot3(ax,ay,az,bx,by,bz)
  %4590 = fadd fast float %4589, %4505
  %4591 = fadd fast float %4504, %4589
  %4592 = fsub fast float -0.000000e+00, %4591
  %4593 = fcmp ogt float %4587, -0.000000e+00
  %4594 = select i1 %4593, float %4592, float %4590
  %4595 = call float @dx.op.unary.f32(i32 6, float %4588)  ; FAbs(value)
  %4596 = fdiv fast float 1.000000e+00, %4595
  %4597 = fmul fast float %4594, %4596
  %4598 = call float @dx.op.binary.f32(i32 35, float %4597, float 0.000000e+00)  ; FMax(a,b)
  %4599 = fsub fast float -0.000000e+00, %4548
  %4600 = fsub fast float -0.000000e+00, %4549
  %4601 = fsub fast float -0.000000e+00, %4550
  %4602 = call float @dx.op.dot3.f32(i32 55, float %4422, float %4423, float %4424, float %4599, float %4600, float %4601)  ; Dot3(ax,ay,az,bx,by,bz)
  %4603 = fsub fast float -0.000000e+00, %4602
  %4604 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4539, float %4540, float %4599, float %4600, float %4601)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = fadd fast float %4604, %4509
  %4606 = fadd fast float %4508, %4604
  %4607 = fsub fast float -0.000000e+00, %4606
  %4608 = fcmp ogt float %4602, -0.000000e+00
  %4609 = select i1 %4608, float %4607, float %4605
  %4610 = call float @dx.op.unary.f32(i32 6, float %4603)  ; FAbs(value)
  %4611 = fdiv fast float 1.000000e+00, %4610
  %4612 = fmul fast float %4609, %4611
  %4613 = call float @dx.op.binary.f32(i32 35, float %4612, float 0.000000e+00)  ; FMax(a,b)
  %4614 = fsub fast float -0.000000e+00, %4554
  %4615 = fsub fast float -0.000000e+00, %4555
  %4616 = fsub fast float -0.000000e+00, %4556
  %4617 = call float @dx.op.dot3.f32(i32 55, float %4422, float %4423, float %4424, float %4614, float %4615, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4618 = fsub fast float -0.000000e+00, %4617
  %4619 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4539, float %4540, float %4614, float %4615, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4620 = fadd fast float %4619, %4513
  %4621 = fadd fast float %4512, %4619
  %4622 = fsub fast float -0.000000e+00, %4621
  %4623 = fcmp ogt float %4617, -0.000000e+00
  %4624 = select i1 %4623, float %4622, float %4620
  %4625 = call float @dx.op.unary.f32(i32 6, float %4618)  ; FAbs(value)
  %4626 = fdiv fast float 1.000000e+00, %4625
  %4627 = fmul fast float %4624, %4626
  %4628 = call float @dx.op.binary.f32(i32 35, float %4627, float 0.000000e+00)  ; FMax(a,b)
  %4629 = call float @dx.op.binary.f32(i32 36, float %4613, float %4628)  ; FMin(a,b)
  %4630 = call float @dx.op.binary.f32(i32 36, float %4598, float %4629)  ; FMin(a,b)
  %4631 = fmul fast float %4630, %4422
  %4632 = fmul fast float %4630, %4423
  %4633 = fmul fast float %4630, %4424
  %4634 = fadd fast float %4631, %154
  %4635 = fadd fast float %4632, %155
  %4636 = fadd fast float %4633, %156
  %4637 = fsub fast float %4634, %4482
  %4638 = fsub fast float %4635, %4483
  %4639 = fsub fast float %4636, %4484
  br label %4647

; <label>:4640                                    ; preds = %4582
  %4641 = fmul fast float %4422, 8.096000e+03
  %4642 = fmul fast float %4423, 8.096000e+03
  %4643 = fmul fast float %4424, 8.096000e+03
  %4644 = fadd fast float %4641, %154
  %4645 = fadd fast float %4642, %155
  %4646 = fadd fast float %4643, %156
  br label %4647

; <label>:4647                                    ; preds = %4640, %4583
  %4648 = phi float [ %4422, %4640 ], [ %4637, %4583 ]
  %4649 = phi float [ %4423, %4640 ], [ %4638, %4583 ]
  %4650 = phi float [ %4424, %4640 ], [ %4639, %4583 ]
  %4651 = phi float [ %4644, %4640 ], [ %4634, %4583 ]
  %4652 = phi float [ %4645, %4640 ], [ %4635, %4583 ]
  %4653 = phi float [ %4646, %4640 ], [ %4636, %4583 ]
  %4654 = fcmp fast olt float %4501, 1.000000e+00
  br i1 %4654, label %4655, label %4686, !dx.controlflow.hints !114

; <label>:4655                                    ; preds = %4647
  %4656 = fmul fast float %4650, %4499
  %4657 = fmul fast float %4649, %4500
  %4658 = fsub fast float %4656, %4657
  %4659 = fmul fast float %4648, %4500
  %4660 = fmul fast float %4650, %4498
  %4661 = fsub fast float %4659, %4660
  %4662 = fmul fast float %4649, %4498
  %4663 = fmul fast float %4648, %4499
  %4664 = fsub fast float %4662, %4663
  %4665 = fmul fast float %4658, 2.000000e+00
  %4666 = fmul fast float %4661, 2.000000e+00
  %4667 = fmul fast float %4664, 2.000000e+00
  %4668 = fmul fast float %4665, %4501
  %4669 = fmul fast float %4666, %4501
  %4670 = fmul fast float %4667, %4501
  %4671 = fmul fast float %4667, %4499
  %4672 = fmul fast float %4666, %4500
  %4673 = fmul fast float %4665, %4500
  %4674 = fmul fast float %4667, %4498
  %4675 = fmul fast float %4666, %4498
  %4676 = fmul fast float %4665, %4499
  %4677 = fadd fast float %4671, %4648
  %4678 = fadd fast float %4677, %4668
  %4679 = fsub fast float %4678, %4672
  %4680 = fsub fast float %4649, %4674
  %4681 = fadd fast float %4680, %4669
  %4682 = fadd fast float %4681, %4673
  %4683 = fadd fast float %4670, %4650
  %4684 = fsub fast float %4683, %4676
  %4685 = fadd fast float %4684, %4675
  br label %4686

; <label>:4686                                    ; preds = %4655, %4647
  %4687 = phi float [ %4679, %4655 ], [ %4648, %4647 ]
  %4688 = phi float [ %4682, %4655 ], [ %4649, %4647 ]
  %4689 = phi float [ %4685, %4655 ], [ %4650, %4647 ]
  br i1 %4527, label %4721, label %4690

; <label>:4690                                    ; preds = %4686
  %4691 = fmul fast float %3002, 0x400187C840000000
  %4692 = fadd fast float %4691, 0xC00EFC2120000000
  %4693 = fmul fast float %4692, %3002
  %4694 = fadd fast float %4693, 0x3FE5D16340000000
  %4695 = fmul fast float %4694, %3002
  %4696 = fadd fast float %4695, 1.000000e+00
  %4697 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4698 = fsub fast float %4651, %154
  %4699 = fsub fast float %4652, %155
  %4700 = fsub fast float %4653, %156
  %4701 = fsub fast float %4651, %4482
  %4702 = fsub fast float %4652, %4483
  %4703 = fsub fast float %4653, %4484
  %4704 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4699, float %4700, float %4698, float %4699, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %4705 = call float @dx.op.dot3.f32(i32 55, float %4701, float %4702, float %4703, float %4701, float %4702, float %4703)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = fadd fast float %4705, 0x3EE4F8B580000000
  %4707 = fdiv fast float %4704, %4706
  %4708 = bitcast float %4707 to i32
  %4709 = ashr i32 %4708, 1
  %4710 = add nsw i32 %4709, 532487669
  %4711 = bitcast i32 %4710 to float
  %4712 = fmul fast float %4711, %4697
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4714 = fmul fast float %4713, 0x4009981AE0000000
  %4715 = fsub fast float 0x40111BBD80000000, %4714
  %4716 = fmul fast float %4715, %4713
  %4717 = fadd fast float %4716, 0xC0009F6020000000
  %4718 = fmul fast float %4717, %4713
  %4719 = fadd fast float %4718, 1.000000e+00
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  br label %4724

; <label>:4721                                    ; preds = %4686
  %4722 = icmp ne i32 %4528, -1
  %4723 = zext i1 %4722 to i32
  br label %4724

; <label>:4724                                    ; preds = %4721, %4690
  %4725 = phi float [ %3002, %4721 ], [ %4720, %4690 ]
  %4726 = phi i32 [ %4723, %4721 ], [ 0, %4690 ]
  %4727 = fmul float %4725, 5.000000e+00
  %4728 = fsub float 5.000000e+00, %4727
  %4729 = icmp ne i32 %4726, 0
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 3
  %4732 = fadd fast float %4731, %4728
  %4733 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4732)  ; FMax(a,b)
  %4734 = call float @dx.op.unary.f32(i32 6, float %4687)  ; FAbs(value)
  %4735 = call float @dx.op.unary.f32(i32 6, float %4688)  ; FAbs(value)
  %4736 = fadd fast float %4735, %4734
  %4737 = call float @dx.op.unary.f32(i32 6, float %4689)  ; FAbs(value)
  %4738 = fadd fast float %4736, %4737
  %4739 = fcmp fast oeq float %4738, 0.000000e+00
  %4740 = fdiv fast float 1.000000e+00, %4738
  %4741 = select i1 %4739, float 1.000000e+00, float %4740
  %4742 = fmul fast float %4741, %4687
  %4743 = fmul fast float %4741, %4688
  %4744 = call float @dx.op.unary.f32(i32 6, float %4743)  ; FAbs(value)
  %4745 = call float @dx.op.unary.f32(i32 6, float %4742)  ; FAbs(value)
  %4746 = fsub fast float 1.000000e+00, %4744
  %4747 = fsub fast float 1.000000e+00, %4745
  %4748 = fcmp fast oge float %4742, 0.000000e+00
  %4749 = fcmp fast oge float %4743, 0.000000e+00
  %4750 = select i1 %4748, float 1.000000e+00, float -1.000000e+00
  %4751 = select i1 %4749, float 1.000000e+00, float -1.000000e+00
  %4752 = fcmp fast ole float %4689, 0.000000e+00
  %4753 = fmul fast float %4750, %4746
  %4754 = fmul fast float %4751, %4747
  %4755 = select i1 %4752, float %4753, float %4742
  %4756 = select i1 %4752, float %4754, float %4743
  %4757 = fmul fast float %4755, 5.000000e-01
  %4758 = fmul fast float %4756, 5.000000e-01
  %4759 = fadd fast float %4757, 5.000000e-01
  %4760 = fadd fast float %4758, 5.000000e-01
  %4761 = uitofp i32 %4525 to float
  %4762 = call float @dx.op.binary.f32(i32 36, float %4733, float 3.000000e+00)  ; FMin(a,b)
  %4763 = fadd fast float %4762, 2.000000e+00
  %4764 = call float @dx.op.unary.f32(i32 21, float %4763)  ; Exp(value)
  %4765 = extractvalue %dx.types.CBufRet.f32 %4730, 1
  %4766 = fmul fast float %4765, %4764
  %4767 = fmul fast float %4766, 2.000000e+00
  %4768 = fsub fast float 1.000000e+00, %4767
  %4769 = fmul fast float %4759, %4768
  %4770 = fmul fast float %4760, %4768
  %4771 = fadd fast float %4769, %4766
  %4772 = fadd fast float %4770, %4766
  %4773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %4771, float %4772, float %4761, float undef, i32 0, i32 0, i32 undef, float %4733)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.ResRet.f32 %4773, 1
  %4776 = extractvalue %dx.types.ResRet.f32 %4773, 2
  %4777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4778 = extractvalue %dx.types.CBufRet.f32 %4777, 3
  %4779 = fmul fast float %4778, %4495
  %4780 = call float @dx.op.binary.f32(i32 36, float %4225, float %4779)  ; FMin(a,b)
  %4781 = select i1 %4729, float %4780, float %4779
  %4782 = fmul fast float %4774, %4574
  %4783 = fmul fast float %4782, %4781
  %4784 = fmul fast float %4775, %4574
  %4785 = fmul fast float %4784, %4781
  %4786 = fmul fast float %4776, %4574
  %4787 = fmul fast float %4786, %4781
  %4788 = fadd fast float %4783, %4470
  %4789 = fadd fast float %4785, %4471
  %4790 = fadd fast float %4787, %4472
  %4791 = fsub fast float %4473, %4574
  br label %4576

; <label>:4792                                    ; preds = %4576
  br label %4793

; <label>:4793                                    ; preds = %4792, %4439
  %4794 = phi float [ %4440, %4439 ], [ %4577, %4792 ]
  %4795 = phi float [ %4441, %4439 ], [ %4578, %4792 ]
  %4796 = phi float [ %4442, %4439 ], [ %4579, %4792 ]
  %4797 = phi float [ %4443, %4439 ], [ %4580, %4792 ]
  %4798 = add i32 %4444, 1
  %4799 = icmp ugt i32 %4798, %4436
  br i1 %4799, label %4800, label %4439, !llvm.loop !115

; <label>:4800                                    ; preds = %4793
  br label %4801

; <label>:4801                                    ; preds = %4800, %4421
  %4802 = phi float [ 0.000000e+00, %4421 ], [ %4794, %4800 ]
  %4803 = phi float [ 0.000000e+00, %4421 ], [ %4795, %4800 ]
  %4804 = phi float [ 0.000000e+00, %4421 ], [ %4796, %4800 ]
  %4805 = call float @dx.op.dot3.f32(i32 55, float %4802, float %4803, float %4804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4806 = select i1 %245, float 0.000000e+00, float %4802
  %4807 = select i1 %245, float %4805, float %4803
  %4808 = select i1 %245, float 0.000000e+00, float %4804
  %4809 = fcmp fast olt float %4347, 0.000000e+00
  %4810 = call float @dx.op.unary.f32(i32 6, float %4347)  ; FAbs(value)
  %4811 = fmul fast float %4810, %4287
  %4812 = fmul fast float %4810, %4288
  %4813 = fmul fast float %4810, %4289
  %4814 = select i1 %4809, float %4287, float %4811
  %4815 = select i1 %4809, float %4288, float %4812
  %4816 = select i1 %4809, float %4289, float %4813
  %4817 = fsub fast float 1.000000e+00, %4810
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = fmul fast float %4818, %4806
  %4820 = fmul fast float %4818, %4807
  %4821 = fmul fast float %4818, %4808
  %4822 = fadd fast float %4814, %4819
  %4823 = fadd fast float %4815, %4820
  %4824 = fadd fast float %4816, %4821
  br label %4825

; <label>:4825                                    ; preds = %4801, %4330
  %4826 = phi float [ %4287, %4330 ], [ %4822, %4801 ]
  %4827 = phi float [ %4288, %4330 ], [ %4823, %4801 ]
  %4828 = phi float [ %4289, %4330 ], [ %4824, %4801 ]
  %4829 = fmul fast float %4336, %4283
  %4830 = fmul fast float %4336, %4284
  %4831 = fmul fast float %4336, %4285
  %4832 = call float @dx.op.dot3.f32(i32 55, float %2993, float %2994, float %2995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4833 = fcmp fast ogt float %4832, 0x3E7FF19E20000000
  %4834 = fdiv fast float 1.000000e+00, %4832
  %4835 = select i1 %4833, float %4834, float 0.000000e+00
  %4836 = fmul fast float %4835, %2993
  %4837 = fmul fast float %4835, %2994
  %4838 = fmul fast float %4835, %2995
  %4839 = fadd fast float %4836, -1.000000e+00
  %4840 = fadd fast float %4837, -1.000000e+00
  %4841 = fadd fast float %4838, -1.000000e+00
  %4842 = fmul fast float %4839, 5.000000e-01
  %4843 = fmul fast float %4840, 5.000000e-01
  %4844 = fmul fast float %4841, 5.000000e-01
  %4845 = fadd fast float %4842, 1.000000e+00
  %4846 = fadd fast float %4843, 1.000000e+00
  %4847 = fadd fast float %4844, 1.000000e+00
  %4848 = fmul fast float %4826, %4331
  %4849 = fmul fast float %4827, %4332
  %4850 = fmul fast float %4828, %4333
  %4851 = fsub fast float 1.000000e+00, %3007
  %4852 = bitcast float %4851 to i32
  %4853 = sitofp i32 %4852 to float
  %4854 = fmul fast float %4853, 5.000000e+00
  %4855 = fadd fast float %4854, 0xC1EFBF8940000000
  %4856 = fptosi float %4855 to i32
  %4857 = bitcast i32 %4856 to float
  %4858 = fmul fast float %4857, %2369
  %4859 = fmul fast float %4283, %4858
  %4860 = fmul fast float %4859, %4336
  %4861 = fmul fast float %4860, %4845
  %4862 = fmul fast float %4284, %4858
  %4863 = fmul fast float %4862, %4336
  %4864 = fmul fast float %4863, %4846
  %4865 = fmul fast float %4285, %4858
  %4866 = fmul fast float %4865, %4336
  %4867 = fmul fast float %4866, %4847
  %4868 = fmul fast float %4829, %2390
  %4869 = fmul fast float %4830, %2390
  %4870 = fmul fast float %4831, %2390
  %4871 = fadd fast float %4848, %2371
  %4872 = fadd fast float %4871, %4861
  %4873 = fmul fast float %4872, %2390
  %4874 = fadd fast float %4849, %2372
  %4875 = fadd fast float %4874, %4864
  %4876 = fmul fast float %4875, %2390
  %4877 = fadd fast float %4850, %2373
  %4878 = fadd fast float %4877, %4867
  %4879 = fmul fast float %4878, %2390
  %4880 = bitcast i32 %3031 to float
  %4881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4882 = extractvalue %dx.types.CBufRet.f32 %4881, 3
  %4883 = fcmp fast oeq float %4882, 0.000000e+00
  br i1 %4883, label %6425, label %4884

; <label>:4884                                    ; preds = %4825
  %4885 = extractvalue %dx.types.CBufRet.f32 %4881, 0
  %4886 = extractvalue %dx.types.CBufRet.f32 %4881, 1
  %4887 = extractvalue %dx.types.CBufRet.f32 %4881, 2
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.CBufRet.f32 %4888, 2
  %4892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4893 = extractvalue %dx.types.CBufRet.f32 %4892, 0
  %4894 = extractvalue %dx.types.CBufRet.f32 %4892, 1
  %4895 = call float @dx.op.dot3.f32(i32 55, float %4889, float %4890, float %4891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = select i1 %245, float %4893, float %4889
  %4897 = select i1 %245, float %4895, float %4890
  %4898 = select i1 %245, float %4894, float %4891
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 2
  %4901 = fmul fast float %4900, %80
  %4902 = fmul fast float %4900, %81
  %4903 = fmul fast float %4900, %82
  %4904 = fadd fast float %4901, %154
  %4905 = fadd fast float %4902, %155
  %4906 = fadd fast float %4903, %156
  %4907 = fcmp fast olt float %4882, 0.000000e+00
  br i1 %4907, label %6003, label %4908

; <label>:4908                                    ; preds = %4884
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 0
  %4911 = extractvalue %dx.types.CBufRet.f32 %4909, 1
  %4912 = extractvalue %dx.types.CBufRet.f32 %4909, 2
  %4913 = extractvalue %dx.types.CBufRet.f32 %4909, 3
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 0
  %4916 = extractvalue %dx.types.CBufRet.f32 %4914, 1
  %4917 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4918 = extractvalue %dx.types.CBufRet.f32 %4914, 3
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 0
  %4921 = extractvalue %dx.types.CBufRet.f32 %4919, 1
  %4922 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4923 = extractvalue %dx.types.CBufRet.f32 %4919, 3
  %4924 = fmul fast float %4910, %4904
  %4925 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %4911, float %4924)  ; FMad(a,b,c)
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %4912, float %4925)  ; FMad(a,b,c)
  %4927 = fadd fast float %4926, %4913
  %4928 = fmul fast float %4915, %4904
  %4929 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %4916, float %4928)  ; FMad(a,b,c)
  %4930 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %4917, float %4929)  ; FMad(a,b,c)
  %4931 = fadd fast float %4930, %4918
  %4932 = fmul fast float %4920, %4904
  %4933 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %4921, float %4932)  ; FMad(a,b,c)
  %4934 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %4922, float %4933)  ; FMad(a,b,c)
  %4935 = fadd fast float %4934, %4923
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 0
  %4938 = extractvalue %dx.types.CBufRet.f32 %4936, 1
  %4939 = extractvalue %dx.types.CBufRet.f32 %4936, 3
  %4940 = fmul fast float %4939, %4927
  %4941 = fmul fast float %4939, %4931
  %4942 = fadd fast float %4940, %4937
  %4943 = fadd fast float %4941, %4938
  %4944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4945 = extractvalue %dx.types.CBufRet.f32 %4944, 0
  %4946 = extractvalue %dx.types.CBufRet.f32 %4944, 1
  %4947 = extractvalue %dx.types.CBufRet.f32 %4944, 3
  %4948 = fmul fast float %4947, %4927
  %4949 = fmul fast float %4947, %4931
  %4950 = fadd fast float %4948, %4945
  %4951 = fadd fast float %4949, %4946
  %4952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.f32 %4952, 1
  %4954 = fsub fast float %4953, %4935
  %4955 = extractvalue %dx.types.CBufRet.f32 %4952, 2
  %4956 = fmul fast float %4954, %4955
  %4957 = fsub fast float 1.000000e+00, %4956
  %4958 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4944, 2
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 2
  %4962 = fadd fast float %4961, %4959
  %4963 = fcmp fast ogt float %4962, 0.000000e+00
  br i1 %4963, label %4964, label %4988

; <label>:4964                                    ; preds = %4908
  %4965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4965, 0
  %4967 = extractvalue %dx.types.CBufRet.f32 %4965, 1
  %4968 = fsub fast float %4950, %4966
  %4969 = fsub fast float %4951, %4967
  %4970 = fcmp fast olt float %4968, 0.000000e+00
  %4971 = fcmp fast olt float %4969, 0.000000e+00
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = extractvalue %dx.types.CBufRet.f32 %4972, 1
  %4975 = extractvalue %dx.types.CBufRet.f32 %4972, 2
  %4976 = extractvalue %dx.types.CBufRet.f32 %4972, 3
  %4977 = select i1 %4970, float %4973, float %4975
  %4978 = select i1 %4971, float %4974, float %4976
  %4979 = fmul fast float %4977, %4968
  %4980 = fmul fast float %4978, %4969
  %4981 = call float @dx.op.unary.f32(i32 6, float %4979)  ; FAbs(value)
  %4982 = call float @dx.op.unary.f32(i32 6, float %4980)  ; FAbs(value)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4984 = call float @dx.op.binary.f32(i32 35, float %4981, float %4982)  ; FMax(a,b)
  %4985 = fsub fast float %4983, %4984
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = fmul fast float %4986, %4958
  br label %4988

; <label>:4988                                    ; preds = %4964, %4908
  %4989 = phi float [ %4987, %4964 ], [ 0.000000e+00, %4908 ]
  %4990 = extractvalue %dx.types.CBufRet.f32 %4936, 2
  %4991 = extractvalue %dx.types.CBufRet.f32 %4960, 1
  %4992 = fadd fast float %4991, %4990
  %4993 = fcmp fast ogt float %4992, 0.000000e+00
  %4994 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  br i1 %4993, label %4995, label %5018

; <label>:4995                                    ; preds = %4988
  %4996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.f32 %4996, 0
  %4998 = extractvalue %dx.types.CBufRet.f32 %4996, 1
  %4999 = fsub fast float %4942, %4997
  %5000 = fsub fast float %4943, %4998
  %5001 = fcmp fast olt float %4999, 0.000000e+00
  %5002 = fcmp fast olt float %5000, 0.000000e+00
  %5003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.f32 %5003, 0
  %5005 = extractvalue %dx.types.CBufRet.f32 %5003, 1
  %5006 = extractvalue %dx.types.CBufRet.f32 %5003, 2
  %5007 = extractvalue %dx.types.CBufRet.f32 %5003, 3
  %5008 = select i1 %5001, float %5004, float %5006
  %5009 = select i1 %5002, float %5005, float %5007
  %5010 = fmul fast float %5008, %4999
  %5011 = fmul fast float %5009, %5000
  %5012 = call float @dx.op.unary.f32(i32 6, float %5010)  ; FAbs(value)
  %5013 = call float @dx.op.unary.f32(i32 6, float %5011)  ; FAbs(value)
  %5014 = call float @dx.op.binary.f32(i32 35, float %5012, float %5013)  ; FMax(a,b)
  %5015 = fsub fast float %4994, %5014
  %5016 = call float @dx.op.unary.f32(i32 7, float %5015)  ; Saturate(value)
  %5017 = fmul fast float %5016, %4958
  br label %5018

; <label>:5018                                    ; preds = %4995, %4988
  %5019 = phi float [ %5017, %4995 ], [ 0.000000e+00, %4988 ]
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 1
  %5022 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.f32 %5023, 0
  %5025 = extractvalue %dx.types.CBufRet.f32 %5023, 1
  %5026 = fsub fast float %4927, %5024
  %5027 = fsub fast float %4931, %5025
  %5028 = fcmp fast olt float %5026, 0.000000e+00
  %5029 = fcmp fast olt float %5027, 0.000000e+00
  %5030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5031 = extractvalue %dx.types.CBufRet.f32 %5030, 0
  %5032 = extractvalue %dx.types.CBufRet.f32 %5030, 1
  %5033 = extractvalue %dx.types.CBufRet.f32 %5030, 2
  %5034 = extractvalue %dx.types.CBufRet.f32 %5030, 3
  %5035 = select i1 %5028, float %5031, float %5033
  %5036 = select i1 %5029, float %5032, float %5034
  %5037 = fmul fast float %5035, %5026
  %5038 = fmul fast float %5036, %5027
  %5039 = call float @dx.op.unary.f32(i32 6, float %5037)  ; FAbs(value)
  %5040 = call float @dx.op.unary.f32(i32 6, float %5038)  ; FAbs(value)
  %5041 = call float @dx.op.binary.f32(i32 35, float %5039, float %5040)  ; FMax(a,b)
  %5042 = fsub fast float %4994, %5041
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = call float @dx.op.binary.f32(i32 36, float %5043, float %5022)  ; FMin(a,b)
  %5045 = fmul fast float %5044, %4958
  %5046 = fsub fast float %5019, %5045
  %5047 = fsub fast float %4989, %5019
  %5048 = fsub fast float %5047, %5045
  %5049 = call float @dx.op.binary.f32(i32 35, float %5019, float %4989)  ; FMax(a,b)
  %5050 = call float @dx.op.binary.f32(i32 35, float %5045, float %5049)  ; FMax(a,b)
  %5051 = fcmp fast olt float %5050, 1.000000e+00
  br i1 %5051, label %5052, label %5450, !dx.controlflow.hints !117

; <label>:5052                                    ; preds = %5018
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 0
  %5055 = fcmp fast une float %5054, 0.000000e+00
  br i1 %5055, label %5056, label %5450, !dx.controlflow.hints !118

; <label>:5056                                    ; preds = %5052
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.CBufRet.f32 %5057, 1
  %5060 = extractvalue %dx.types.CBufRet.f32 %5057, 2
  %5061 = extractvalue %dx.types.CBufRet.f32 %5057, 3
  %5062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5063 = extractvalue %dx.types.CBufRet.f32 %5062, 0
  %5064 = extractvalue %dx.types.CBufRet.f32 %5062, 1
  %5065 = extractvalue %dx.types.CBufRet.f32 %5062, 2
  %5066 = extractvalue %dx.types.CBufRet.f32 %5062, 3
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 0
  %5069 = extractvalue %dx.types.CBufRet.f32 %5067, 1
  %5070 = extractvalue %dx.types.CBufRet.f32 %5067, 2
  %5071 = extractvalue %dx.types.CBufRet.f32 %5067, 3
  %5072 = fmul fast float %5058, %4904
  %5073 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %5059, float %5072)  ; FMad(a,b,c)
  %5074 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %5060, float %5073)  ; FMad(a,b,c)
  %5075 = fadd fast float %5074, %5061
  %5076 = fmul fast float %5063, %4904
  %5077 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %5064, float %5076)  ; FMad(a,b,c)
  %5078 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %5065, float %5077)  ; FMad(a,b,c)
  %5079 = fadd fast float %5078, %5066
  %5080 = fmul fast float %5068, %4904
  %5081 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %5069, float %5080)  ; FMad(a,b,c)
  %5082 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %5070, float %5081)  ; FMad(a,b,c)
  %5083 = fadd fast float %5082, %5071
  %5084 = fcmp fast oge float %5075, 1.000000e+00
  %5085 = fcmp fast oge float %5079, 1.000000e+00
  %5086 = or i1 %5084, %5085
  %5087 = fcmp fast olt float %5075, 0.000000e+00
  %5088 = fcmp fast olt float %5079, 0.000000e+00
  %5089 = or i1 %5087, %5088
  %5090 = or i1 %5086, %5089
  br i1 %5090, label %5450, label %5091, !dx.controlflow.hints !119

; <label>:5091                                    ; preds = %5056
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.CBufRet.f32 %5092, 1
  %5095 = extractvalue %dx.types.CBufRet.f32 %5092, 2
  %5096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.i32 %5096, 2
  %5098 = uitofp i32 %5097 to float
  %5099 = extractvalue %dx.types.CBufRet.i32 %5096, 3
  %5100 = uitofp i32 %5099 to float
  %5101 = extractvalue %dx.types.CBufRet.f32 %5092, 3
  %5102 = fmul fast float %5101, 2.000000e+00
  %5103 = fsub fast float %5075, %5093
  %5104 = fsub fast float %5079, %5094
  %5105 = fmul fast float %5102, %5103
  %5106 = fmul fast float %5102, %5104
  %5107 = fdiv fast float 1.000000e+00, %4887
  %5108 = fmul fast float %5106, %5107
  %5109 = call float @dx.op.unary.f32(i32 6, float %5108)  ; FAbs(value)
  %5110 = fmul fast float %5095, %4906
  %5111 = fmul fast float %5110, %5102
  %5112 = call float @dx.op.unary.f32(i32 6, float %5111)  ; FAbs(value)
  %5113 = call float @dx.op.unary.f32(i32 6, float %5105)  ; FAbs(value)
  %5114 = call float @dx.op.binary.f32(i32 35, float %5112, float %5109)  ; FMax(a,b)
  %5115 = call float @dx.op.binary.f32(i32 35, float %5113, float %5114)  ; FMax(a,b)
  %5116 = fmul fast float %5115, 2.000000e+00
  %5117 = call float @dx.op.unary.f32(i32 23, float %5116)  ; Log(value)
  %5118 = call float @dx.op.binary.f32(i32 35, float %5117, float %5098)  ; FMax(a,b)
  %5119 = call float @dx.op.unary.f32(i32 22, float %5118)  ; Frc(value)
  %5120 = fadd fast float %5119, 0xBFEA666660000000
  %5121 = fmul fast float %5120, 8.000000e+00
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = call float @dx.op.unary.f32(i32 27, float %5118)  ; Round_ni(value)
  %5124 = fadd fast float %5123, %5122
  %5125 = call float @dx.op.binary.f32(i32 36, float %5124, float %5100)  ; FMin(a,b)
  %5126 = call float @dx.op.unary.f32(i32 27, float %5125)  ; Round_ni(value)
  %5127 = fsub fast float -0.000000e+00, %5126
  %5128 = call float @dx.op.unary.f32(i32 21, float %5127)  ; Exp(value)
  %5129 = fmul fast float %5128, %5102
  %5130 = fmul fast float %5129, %5075
  %5131 = fmul fast float %5129, %5079
  %5132 = fmul fast float %5130, 2.500000e-01
  %5133 = fmul fast float %5131, 2.500000e-01
  %5134 = fadd fast float %5132, 5.000000e-01
  %5135 = fadd fast float %5133, 5.000000e-01
  %5136 = fsub fast float %5100, %5098
  %5137 = fptoui float %5136 to i32
  %5138 = add i32 %5137, 320
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %5138)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 0
  %5141 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5142 = fcmp fast une float %5125, %5100
  %5143 = fsub fast float %5075, %5140
  %5144 = fsub fast float %5079, %5141
  %5145 = call float @dx.op.unary.f32(i32 6, float %5143)  ; FAbs(value)
  %5146 = call float @dx.op.unary.f32(i32 6, float %5144)  ; FAbs(value)
  %5147 = fmul fast float %5145, %5129
  %5148 = fmul fast float %5146, %5129
  %5149 = fcmp fast olt float %5147, 1.000000e+00
  %5150 = fcmp fast olt float %5148, 1.000000e+00
  %5151 = and i1 %5149, %5150
  %5152 = or i1 %5142, %5151
  br i1 %5152, label %5153, label %5450, !dx.controlflow.hints !120

; <label>:5153                                    ; preds = %5091
  %5154 = fmul fast float %5131, 5.000000e-01
  %5155 = fmul fast float %5130, 5.000000e-01
  %5156 = fadd fast float %5154, 5.000000e-01
  %5157 = fadd fast float %5155, 5.000000e-01
  %5158 = sitofp i32 %5097 to float
  %5159 = fsub fast float %5125, %5158
  %5160 = call float @dx.op.unary.f32(i32 27, float %5159)  ; Round_ni(value)
  %5161 = call float @dx.op.unary.f32(i32 22, float %5125)  ; Frc(value)
  %5162 = call float @dx.op.unary.f32(i32 22, float %5157)  ; Frc(value)
  %5163 = call float @dx.op.unary.f32(i32 22, float %5156)  ; Frc(value)
  %5164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %5162, float %5163, float %5160, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5165 = extractvalue %dx.types.ResRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.ResRet.f32 %5164, 1
  %5167 = extractvalue %dx.types.ResRet.f32 %5164, 2
  %5168 = extractvalue %dx.types.ResRet.f32 %5164, 3
  %5169 = fcmp fast ogt float %5161, 0.000000e+00
  br i1 %5169, label %5170, label %5191, !dx.controlflow.hints !121

; <label>:5170                                    ; preds = %5153
  %5171 = fadd fast float %5160, 1.000000e+00
  %5172 = call float @dx.op.unary.f32(i32 22, float %5134)  ; Frc(value)
  %5173 = call float @dx.op.unary.f32(i32 22, float %5135)  ; Frc(value)
  %5174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %5172, float %5173, float %5171, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5175 = extractvalue %dx.types.ResRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.ResRet.f32 %5174, 1
  %5177 = extractvalue %dx.types.ResRet.f32 %5174, 2
  %5178 = extractvalue %dx.types.ResRet.f32 %5174, 3
  %5179 = fsub fast float %5175, %5165
  %5180 = fsub fast float %5176, %5166
  %5181 = fsub fast float %5177, %5167
  %5182 = fsub fast float %5178, %5168
  %5183 = fmul fast float %5179, %5161
  %5184 = fmul fast float %5180, %5161
  %5185 = fmul fast float %5181, %5161
  %5186 = fmul fast float %5182, %5161
  %5187 = fadd fast float %5183, %5165
  %5188 = fadd fast float %5184, %5166
  %5189 = fadd fast float %5185, %5167
  %5190 = fadd fast float %5186, %5168
  br label %5191

; <label>:5191                                    ; preds = %5170, %5153
  %5192 = phi float [ %5187, %5170 ], [ %5165, %5153 ]
  %5193 = phi float [ %5188, %5170 ], [ %5166, %5153 ]
  %5194 = phi float [ %5189, %5170 ], [ %5167, %5153 ]
  %5195 = phi float [ %5190, %5170 ], [ %5168, %5153 ]
  %5196 = fadd fast float %5192, -5.000000e-01
  %5197 = fadd fast float %5194, -5.000000e-01
  %5198 = fmul fast float %5196, 0xBFD5555560000000
  %5199 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5197, float %5198)  ; FMad(a,b,c)
  %5200 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5193, float 0.000000e+00)  ; FMad(a,b,c)
  %5201 = fadd fast float %5200, %5195
  %5202 = fmul fast float %5196, -7.500000e-01
  %5203 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5197, float %5202)  ; FMad(a,b,c)
  %5204 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5193, float 0.000000e+00)  ; FMad(a,b,c)
  %5205 = fadd fast float %5204, %5195
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 0
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.CBufRet.f32 %5208, 1
  %5211 = extractvalue %dx.types.CBufRet.f32 %5208, 2
  %5212 = extractvalue %dx.types.CBufRet.f32 %5208, 3
  %5213 = fsub fast float %5209, %5199
  %5214 = fsub fast float %5210, %5201
  %5215 = fsub fast float %5211, %5203
  %5216 = fsub fast float %5212, %5205
  %5217 = fmul fast float %5213, %5207
  %5218 = fmul fast float %5214, %5207
  %5219 = fmul fast float %5215, %5207
  %5220 = fmul fast float %5216, %5207
  %5221 = fadd fast float %5217, %5199
  %5222 = fadd fast float %5218, %5201
  %5223 = fadd fast float %5219, %5203
  %5224 = fadd fast float %5220, %5205
  %5225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5226 = extractvalue %dx.types.ResRet.i32 %5225, 0
  %5227 = and i32 %5226, 536870911
  %5228 = uitofp i32 %5227 to float
  %5229 = fmul fast float %5228, %5075
  %5230 = fmul fast float %5228, %5079
  %5231 = fptoui float %5229 to i32
  %5232 = fptoui float %5230 to i32
  %5233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5234 = extractvalue %dx.types.ResRet.i32 %5233, 0
  %5235 = and i32 %5234, 31
  %5236 = lshr i32 %5231, %5235
  %5237 = lshr i32 %5232, %5235
  %5238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5239 = extractvalue %dx.types.ResRet.i32 %5238, 0
  %5240 = and i32 %5239, 31
  %5241 = shl i32 1, %5240
  %5242 = call i32 @dx.op.binary.i32(i32 40, i32 %5241, i32 4)  ; UMin(a,b)
  %5243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5244 = extractvalue %dx.types.ResRet.i32 %5243, 0
  %5245 = extractvalue %dx.types.ResRet.i32 %5243, 1
  %5246 = icmp eq i32 %5242, 0
  br i1 %5246, label %5288, label %5247

; <label>:5247                                    ; preds = %5191
  br label %5248

; <label>:5248                                    ; preds = %5276, %5247
  %5249 = phi i32 [ %5279, %5276 ], [ 0, %5247 ]
  %5250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5251 = extractvalue %dx.types.ResRet.i32 %5250, 0
  %5252 = lshr i32 %5251, 16
  %5253 = and i32 %5252, 31
  %5254 = shl i32 %5237, %5253
  %5255 = add i32 %5254, %5236
  %5256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5257 = extractvalue %dx.types.ResRet.i32 %5256, 0
  %5258 = and i32 %5257, 31
  %5259 = shl i32 %5255, %5258
  %5260 = add i32 %5259, %5249
  %5261 = shl i32 %5260, 2
  %5262 = add i32 %5261, 32
  %5263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5262, i32 undef)  ; BufferLoad(srv,index,wot)
  %5264 = extractvalue %dx.types.ResRet.i32 %5263, 0
  %5265 = icmp slt i32 %5264, 0
  %5266 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5249
  %5267 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5249
  %5268 = bitcast float* %5266 to i32*
  %5269 = bitcast float* %5267 to i32*
  br i1 %5265, label %5270, label %5276

; <label>:5270                                    ; preds = %5248
  %5271 = and i32 %5264, 1073741823
  %5272 = add nuw nsw i32 %5271, 20
  %5273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5272, i32 undef)  ; BufferLoad(srv,index,wot)
  %5274 = extractvalue %dx.types.ResRet.i32 %5273, 0
  %5275 = extractvalue %dx.types.ResRet.i32 %5273, 1
  br label %5276

; <label>:5276                                    ; preds = %5270, %5248
  %5277 = phi i32 [ %5274, %5270 ], [ %5244, %5248 ]
  %5278 = phi i32 [ %5275, %5270 ], [ %5245, %5248 ]
  store i32 %5277, i32* %5268, align 4
  store i32 %5278, i32* %5269, align 4
  %5279 = add nuw i32 %5249, 1
  %5280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.i32 %5280, 2
  %5282 = icmp eq i32 %5281, 0
  %5283 = icmp ugt i32 %5264, -1073741825
  %5284 = and i1 %5283, %5282
  %5285 = icmp ult i32 %5279, %5242
  %5286 = and i1 %5284, %5285
  br i1 %5286, label %5248, label %5287

; <label>:5287                                    ; preds = %5276
  br label %5288

; <label>:5288                                    ; preds = %5287, %5191
  %5289 = phi i32 [ 0, %5191 ], [ %5279, %5287 ]
  %5290 = extractvalue %dx.types.CBufRet.f32 %5053, 2
  %5291 = fptoui float %5290 to i32
  %5292 = icmp eq i32 %5291, 0
  br i1 %5292, label %5344, label %5293

; <label>:5293                                    ; preds = %5288
  br label %5294

; <label>:5294                                    ; preds = %5339, %5293
  %5295 = phi i32 [ %5340, %5339 ], [ %5289, %5293 ]
  %5296 = phi i32 [ %5341, %5339 ], [ 0, %5293 ]
  %5297 = lshr i32 %5296, 2
  %5298 = and i32 %5296, 3
  %5299 = add nuw nsw i32 %5297, 83
  %5300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %5299)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.i32 %5300, 0
  %5302 = extractvalue %dx.types.CBufRet.i32 %5300, 1
  %5303 = extractvalue %dx.types.CBufRet.i32 %5300, 2
  %5304 = extractvalue %dx.types.CBufRet.i32 %5300, 3
  %5305 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %5301, i32* %5305, align 4
  %5306 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %5302, i32* %5306, align 4
  %5307 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %5303, i32* %5307, align 4
  %5308 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %5304, i32* %5308, align 4
  %5309 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %5298
  %5310 = load i32, i32* %5309, align 4, !tbaa !122, !noalias !126
  %5311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.i32 %5311, 0
  %5313 = lshr i32 %5312, 16
  %5314 = and i32 %5313, 31
  %5315 = shl i32 %5237, %5314
  %5316 = add i32 %5315, %5236
  %5317 = shl i32 %5316, 2
  %5318 = add i32 %5317, %5310
  %5319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5318, i32 undef)  ; BufferLoad(srv,index,wot)
  %5320 = extractvalue %dx.types.ResRet.i32 %5319, 0
  %5321 = icmp eq i32 %5320, 0
  br i1 %5321, label %5339, label %5322

; <label>:5322                                    ; preds = %5294
  %5323 = icmp slt i32 %5320, 0
  %5324 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5295
  %5325 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5295
  %5326 = bitcast float* %5324 to i32*
  %5327 = bitcast float* %5325 to i32*
  br i1 %5323, label %5328, label %5335

; <label>:5328                                    ; preds = %5322
  %5329 = and i32 %5320, 1073741823
  %5330 = add i32 %5310, 20
  %5331 = add i32 %5330, %5329
  %5332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5331, i32 undef)  ; BufferLoad(srv,index,wot)
  %5333 = extractvalue %dx.types.ResRet.i32 %5332, 0
  %5334 = extractvalue %dx.types.ResRet.i32 %5332, 1
  br label %5335

; <label>:5335                                    ; preds = %5328, %5322
  %5336 = phi i32 [ %5333, %5328 ], [ %5244, %5322 ]
  %5337 = phi i32 [ %5334, %5328 ], [ %5245, %5322 ]
  store i32 %5336, i32* %5326, align 4
  store i32 %5337, i32* %5327, align 4
  %5338 = add i32 %5295, 1
  br label %5339

; <label>:5339                                    ; preds = %5335, %5294
  %5340 = phi i32 [ %5295, %5294 ], [ %5338, %5335 ]
  %5341 = add nuw i32 %5296, 1
  %5342 = icmp eq i32 %5341, %5291
  br i1 %5342, label %5343, label %5294

; <label>:5343                                    ; preds = %5339
  br label %5344

; <label>:5344                                    ; preds = %5343, %5288
  %5345 = phi i32 [ %5289, %5288 ], [ %5340, %5343 ]
  %5346 = icmp eq i32 %5345, 1
  %5347 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %5348 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %5346, label %5349, label %5352

; <label>:5349                                    ; preds = %5344
  %5350 = load float, float* %5347, align 4
  %5351 = load float, float* %5348, align 4
  br label %5379

; <label>:5352                                    ; preds = %5344
  %5353 = load float, float* %5347, align 4
  %5354 = load float, float* %5348, align 4
  %5355 = fdiv fast float 1.000000e+00, %5354
  %5356 = fsub fast float %5353, %5355
  %5357 = icmp ugt i32 %5345, 1
  br i1 %5357, label %5358, label %5374

; <label>:5358                                    ; preds = %5352
  br label %5359

; <label>:5359                                    ; preds = %5359, %5358
  %5360 = phi float [ %5369, %5359 ], [ %5356, %5358 ]
  %5361 = phi float [ %5370, %5359 ], [ %5353, %5358 ]
  %5362 = phi i32 [ %5371, %5359 ], [ 1, %5358 ]
  %5363 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5362
  %5364 = load float, float* %5363, align 4
  %5365 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5362
  %5366 = load float, float* %5365, align 4
  %5367 = fdiv fast float 1.000000e+00, %5366
  %5368 = fsub fast float %5364, %5367
  %5369 = call float @dx.op.binary.f32(i32 36, float %5360, float %5368)  ; FMin(a,b)
  %5370 = call float @dx.op.binary.f32(i32 35, float %5361, float %5364)  ; FMax(a,b)
  %5371 = add nuw i32 %5362, 1
  %5372 = icmp eq i32 %5371, %5345
  br i1 %5372, label %5373, label %5359

; <label>:5373                                    ; preds = %5359
  br label %5374

; <label>:5374                                    ; preds = %5373, %5352
  %5375 = phi float [ %5356, %5352 ], [ %5369, %5373 ]
  %5376 = phi float [ %5353, %5352 ], [ %5370, %5373 ]
  %5377 = fsub fast float %5376, %5375
  %5378 = fdiv fast float 1.000000e+00, %5377
  br label %5379

; <label>:5379                                    ; preds = %5374, %5349
  %5380 = phi float [ %5350, %5349 ], [ %5376, %5374 ]
  %5381 = phi float [ %5351, %5349 ], [ %5378, %5374 ]
  %5382 = fadd fast float %5083, %5380
  %5383 = fmul fast float %5382, %5381
  %5384 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5385 = fmul fast float %5384, 2.000000e+00
  %5386 = fsub fast float 1.000000e+00, %5385
  %5387 = fmul fast float %5221, %5221
  %5388 = fsub fast float %5222, %5387
  %5389 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5388)  ; FMax(a,b)
  %5390 = fdiv fast float 1.000000e+00, %5389
  %5391 = fmul fast float %5222, %5221
  %5392 = fsub fast float %5223, %5391
  %5393 = fsub fast float %5386, %5221
  %5394 = fmul fast float %5386, %5386
  %5395 = fsub fast float %5394, %5222
  %5396 = fmul fast float %5390, %5392
  %5397 = fmul fast float %5396, %5393
  %5398 = fsub fast float %5395, %5397
  %5399 = fmul fast float %5222, %5222
  %5400 = fsub fast float %5224, %5399
  %5401 = fmul fast float %5392, %5392
  %5402 = fmul fast float %5401, %5390
  %5403 = fsub fast float %5400, %5402
  %5404 = fdiv fast float %5398, %5403
  %5405 = fmul fast float %5404, %5392
  %5406 = fsub fast float %5393, %5405
  %5407 = fmul fast float %5406, %5390
  %5408 = fmul fast float %5407, %5221
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = fmul fast float %5404, %5222
  %5411 = fsub fast float %5409, %5410
  %5412 = fmul fast float %5407, %5407
  %5413 = fmul fast float %5404, 4.000000e+00
  %5414 = fmul fast float %5413, %5411
  %5415 = fsub fast float %5412, %5414
  %5416 = call float @dx.op.unary.f32(i32 24, float %5415)  ; Sqrt(value)
  %5417 = fcmp fast oge float %5407, 0.000000e+00
  %5418 = fsub fast float -0.000000e+00, %5416
  %5419 = select i1 %5417, float %5418, float %5416
  %5420 = fsub fast float %5419, %5407
  %5421 = fdiv fast float %5420, %5404
  %5422 = fdiv fast float %5411, %5420
  %5423 = fmul fast float %5421, 5.000000e-01
  %5424 = fmul fast float %5422, 2.000000e+00
  %5425 = select i1 %5417, float %5423, float %5424
  %5426 = select i1 %5417, float %5424, float %5423
  %5427 = call float @dx.op.binary.f32(i32 35, float %5425, float %5426)  ; FMax(a,b)
  %5428 = call float @dx.op.binary.f32(i32 36, float %5425, float %5426)  ; FMin(a,b)
  %5429 = fcmp fast ogt float %5386, %5427
  %5430 = fsub fast float %5386, %5428
  %5431 = fsub fast float %5386, %5427
  %5432 = fsub fast float %5427, %5428
  %5433 = select i1 %5429, float %5431, float %5432
  %5434 = fmul float %5430, %5433
  %5435 = select i1 %5429, float %5428, float %5386
  %5436 = fcmp fast ogt float %5386, %5428
  %5437 = fmul fast float %5435, %5427
  %5438 = fadd fast float %5435, %5427
  %5439 = fmul fast float %5438, %5221
  %5440 = fadd fast float %5437, %5222
  %5441 = fsub fast float %5440, %5439
  %5442 = fdiv fast float %5441, %5434
  %5443 = select i1 %5436, float %5442, float 0.000000e+00
  %5444 = fsub fast float 1.000000e+00, %5443
  %5445 = select i1 %5429, float %5444, float %5443
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5206, 3
  %5448 = fmul fast float %5447, %5446
  %5449 = fsub fast float 1.000000e+00, %5448
  br label %5450

; <label>:5450                                    ; preds = %5379, %5091, %5056, %5052, %5018
  %5451 = phi float [ 1.000000e+00, %5018 ], [ %5449, %5379 ], [ 1.000000e+00, %5056 ], [ 1.000000e+00, %5091 ], [ 1.000000e+00, %5052 ]
  %5452 = fcmp fast ogt float %5048, 0.000000e+00
  br i1 %5452, label %5453, label %5615, !dx.controlflow.hints !135

; <label>:5453                                    ; preds = %5450
  %5454 = fadd fast float %4961, %4935
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 2
  %5457 = extractvalue %dx.types.CBufRet.f32 %5455, 3
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 2
  %5460 = call float @dx.op.binary.f32(i32 35, float %5454, float 0.000000e+00)  ; FMax(a,b)
  %5461 = fadd fast float %5460, 0x3F10000000000000
  %5462 = fcmp fast oeq float %5459, 0.000000e+00
  br i1 %5462, label %5463, label %5530

; <label>:5463                                    ; preds = %5453
  %5464 = extractvalue %dx.types.CBufRet.f32 %5455, 1
  %5465 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5466 = fmul fast float %5465, %4950
  %5467 = fmul fast float %5464, %4951
  %5468 = fadd fast float %5466, 5.000000e-01
  %5469 = call float @dx.op.unary.f32(i32 27, float %5468)  ; Round_ni(value)
  %5470 = fadd fast float %5467, 5.000000e-01
  %5471 = call float @dx.op.unary.f32(i32 27, float %5470)  ; Round_ni(value)
  %5472 = fsub fast float %5468, %5469
  %5473 = fsub fast float %5470, %5471
  %5474 = fadd fast float %5469, -5.000000e-01
  %5475 = fadd fast float %5471, -5.000000e-01
  %5476 = fmul fast float %5472, 2.000000e+00
  %5477 = fsub fast float 3.000000e+00, %5476
  %5478 = fadd fast float %5476, 1.000000e+00
  %5479 = fsub fast float 2.000000e+00, %5472
  %5480 = bitcast float %5477 to i32
  %5481 = sub nsw i32 2129859010, %5480
  %5482 = bitcast i32 %5481 to float
  %5483 = fmul fast float %5482, %5479
  %5484 = fadd fast float %5483, -1.000000e+00
  %5485 = bitcast float %5478 to i32
  %5486 = sub nsw i32 2129859010, %5485
  %5487 = bitcast i32 %5486 to float
  %5488 = fmul fast float %5487, %5472
  %5489 = fadd fast float %5488, 1.000000e+00
  %5490 = fmul fast float %5473, 2.000000e+00
  %5491 = fsub fast float 3.000000e+00, %5490
  %5492 = fadd fast float %5490, 1.000000e+00
  %5493 = fsub fast float 2.000000e+00, %5473
  %5494 = bitcast float %5491 to i32
  %5495 = sub nsw i32 2129859010, %5494
  %5496 = bitcast i32 %5495 to float
  %5497 = fmul fast float %5496, %5493
  %5498 = fadd fast float %5497, -1.000000e+00
  %5499 = bitcast float %5492 to i32
  %5500 = sub nsw i32 2129859010, %5499
  %5501 = bitcast i32 %5500 to float
  %5502 = fmul fast float %5501, %5473
  %5503 = fadd fast float %5502, 1.000000e+00
  %5504 = fadd fast float %5484, %5474
  %5505 = fmul fast float %5504, %5456
  %5506 = fadd fast float %5498, %5475
  %5507 = fmul fast float %5506, %5457
  %5508 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %5505, float %5507, float undef, float undef, i32 0, i32 0, i32 undef, float %5461)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5509 = extractvalue %dx.types.ResRet.f32 %5508, 0
  %5510 = fmul fast float %5509, %5477
  %5511 = fadd fast float %5489, %5474
  %5512 = fmul fast float %5511, %5456
  %5513 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %5512, float %5507, float undef, float undef, i32 0, i32 0, i32 undef, float %5461)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5514 = extractvalue %dx.types.ResRet.f32 %5513, 0
  %5515 = fmul fast float %5514, %5478
  %5516 = fadd fast float %5503, %5475
  %5517 = fmul fast float %5516, %5457
  %5518 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %5505, float %5517, float undef, float undef, i32 0, i32 0, i32 undef, float %5461)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5519 = extractvalue %dx.types.ResRet.f32 %5518, 0
  %5520 = fmul fast float %5519, %5477
  %5521 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %5512, float %5517, float undef, float undef, i32 0, i32 0, i32 undef, float %5461)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5522 = extractvalue %dx.types.ResRet.f32 %5521, 0
  %5523 = fmul fast float %5522, %5478
  %5524 = fadd fast float %5523, %5520
  %5525 = fmul fast float %5524, %5492
  %5526 = fadd fast float %5515, %5510
  %5527 = fmul fast float %5526, %5491
  %5528 = fadd fast float %5527, %5525
  %5529 = fmul fast float %5528, 6.250000e-02
  br label %5615

; <label>:5530                                    ; preds = %5453
  %5531 = fmul fast float %256, 0x401921FB60000000
  %5532 = call float @dx.op.unary.f32(i32 13, float %5531)  ; Sin(value)
  %5533 = call float @dx.op.unary.f32(i32 12, float %5531)  ; Cos(value)
  %5534 = fsub fast float -0.000000e+00, %5532
  br label %5535

; <label>:5535                                    ; preds = %5584, %5530
  %5536 = phi float [ 0.000000e+00, %5530 ], [ %5579, %5584 ]
  %5537 = phi float [ 0.000000e+00, %5530 ], [ %5581, %5584 ]
  %5538 = phi i32 [ 0, %5530 ], [ %5585, %5584 ]
  %5539 = mul i32 %5538, 2
  %5540 = add i32 0, %5539
  %5541 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5540
  %5542 = load float, float* %5541, align 4
  %5543 = mul i32 %5538, 2
  %5544 = add i32 1, %5543
  %5545 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5544
  %5546 = load float, float* %5545, align 4
  %5547 = fmul fast float %5542, %5533
  %5548 = call float @dx.op.tertiary.f32(i32 46, float %5546, float %5534, float %5547)  ; FMad(a,b,c)
  %5549 = fmul fast float %5542, %5532
  %5550 = call float @dx.op.tertiary.f32(i32 46, float %5546, float %5533, float %5549)  ; FMad(a,b,c)
  %5551 = fmul fast float %5548, %5459
  %5552 = fmul fast float %5550, %5459
  %5553 = fadd fast float %5551, %4950
  %5554 = fadd fast float %5552, %4951
  %5555 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %5553, float %5554, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5556 = extractvalue %dx.types.ResRet.f32 %5555, 0
  %5557 = extractvalue %dx.types.ResRet.f32 %5555, 1
  %5558 = extractvalue %dx.types.ResRet.f32 %5555, 2
  %5559 = extractvalue %dx.types.ResRet.f32 %5555, 3
  %5560 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %5556, float* %5560, align 4
  %5561 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %5557, float* %5561, align 4
  %5562 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %5558, float* %5562, align 4
  %5563 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %5559, float* %5563, align 4
  %5564 = fsub fast float %5556, %5461
  %5565 = fcmp fast olt float %5564, 0.000000e+00
  %5566 = select i1 %5565, float 0.000000e+00, float 1.000000e+00
  %5567 = fadd fast float %5566, %5536
  %5568 = fmul fast float %5566, %5564
  %5569 = fadd fast float %5568, %5537
  br label %5570

; <label>:5570                                    ; preds = %5570, %5535
  %5571 = phi i32 [ 1, %5535 ], [ %5582, %5570 ]
  %5572 = phi float [ %5569, %5535 ], [ %5581, %5570 ]
  %5573 = phi float [ %5567, %5535 ], [ %5579, %5570 ]
  %5574 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %5571
  %5575 = load float, float* %5574, align 4, !tbaa !136, !noalias !126
  %5576 = fsub fast float %5575, %5461
  %5577 = fcmp fast olt float %5576, 0.000000e+00
  %5578 = select i1 %5577, float 0.000000e+00, float 1.000000e+00
  %5579 = fadd fast float %5578, %5573
  %5580 = fmul fast float %5578, %5576
  %5581 = fadd fast float %5580, %5572
  %5582 = add nuw nsw i32 %5571, 1
  %5583 = icmp eq i32 %5582, 4
  br i1 %5583, label %5584, label %5570, !llvm.loop !138

; <label>:5584                                    ; preds = %5570
  %5585 = add nuw nsw i32 %5538, 1
  %5586 = icmp eq i32 %5585, 8
  br i1 %5586, label %5587, label %5535, !llvm.loop !139

; <label>:5587                                    ; preds = %5584
  %5588 = fdiv fast float 1.000000e+00, %5579
  %5589 = fmul fast float %5588, %5581
  %5590 = fdiv fast float 1.000000e+00, %5461
  %5591 = fmul fast float %5589, %5590
  %5592 = call float @dx.op.unary.f32(i32 7, float %5591)  ; Saturate(value)
  %5593 = call float @dx.op.binary.f32(i32 35, float %5592, float 0.000000e+00)  ; FMax(a,b)
  %5594 = fmul fast float %5579, 3.125000e-02
  %5595 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5596 = fmul fast float %5595, 2.000000e+00
  %5597 = fadd fast float %5596, -1.000000e+00
  %5598 = fcmp fast ogt float %5597, 0.000000e+00
  %5599 = fcmp fast olt float %5597, 0.000000e+00
  %5600 = zext i1 %5598 to i32
  %5601 = zext i1 %5599 to i32
  %5602 = sub nsw i32 %5600, %5601
  %5603 = sitofp i32 %5602 to float
  %5604 = fmul fast float %5603, %5597
  %5605 = fsub fast float 1.000000e+00, %5604
  %5606 = fmul fast float %5605, %5605
  %5607 = fmul fast float %5606, %5605
  %5608 = fsub fast float %5605, %5607
  %5609 = fmul fast float %5608, %5593
  %5610 = fsub fast float 1.000000e+00, %5607
  %5611 = fsub fast float %5610, %5609
  %5612 = fmul fast float %5603, 5.000000e-01
  %5613 = fmul fast float %5612, %5611
  %5614 = fsub fast float 5.000000e-01, %5613
  br label %5615

; <label>:5615                                    ; preds = %5587, %5463, %5450
  %5616 = phi float [ 1.000000e+00, %5450 ], [ %5529, %5463 ], [ %5614, %5587 ]
  %5617 = fcmp fast ogt float %5046, 0.000000e+00
  br i1 %5617, label %5618, label %5782, !dx.controlflow.hints !140

; <label>:5618                                    ; preds = %5615
  %5619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5620 = extractvalue %dx.types.CBufRet.f32 %5619, 1
  %5621 = fadd fast float %5620, %4935
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 2
  %5624 = extractvalue %dx.types.CBufRet.f32 %5622, 3
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5627 = call float @dx.op.binary.f32(i32 35, float %5621, float 0.000000e+00)  ; FMax(a,b)
  %5628 = fadd fast float %5627, 0x3F10000000000000
  %5629 = fcmp fast oeq float %5626, 0.000000e+00
  br i1 %5629, label %5630, label %5697

; <label>:5630                                    ; preds = %5618
  %5631 = extractvalue %dx.types.CBufRet.f32 %5622, 1
  %5632 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5633 = fmul fast float %5632, %4942
  %5634 = fmul fast float %5631, %4943
  %5635 = fadd fast float %5633, 5.000000e-01
  %5636 = call float @dx.op.unary.f32(i32 27, float %5635)  ; Round_ni(value)
  %5637 = fadd fast float %5634, 5.000000e-01
  %5638 = call float @dx.op.unary.f32(i32 27, float %5637)  ; Round_ni(value)
  %5639 = fsub fast float %5635, %5636
  %5640 = fsub fast float %5637, %5638
  %5641 = fadd fast float %5636, -5.000000e-01
  %5642 = fadd fast float %5638, -5.000000e-01
  %5643 = fmul fast float %5639, 2.000000e+00
  %5644 = fsub fast float 3.000000e+00, %5643
  %5645 = fadd fast float %5643, 1.000000e+00
  %5646 = fsub fast float 2.000000e+00, %5639
  %5647 = bitcast float %5644 to i32
  %5648 = sub nsw i32 2129859010, %5647
  %5649 = bitcast i32 %5648 to float
  %5650 = fmul fast float %5649, %5646
  %5651 = fadd fast float %5650, -1.000000e+00
  %5652 = bitcast float %5645 to i32
  %5653 = sub nsw i32 2129859010, %5652
  %5654 = bitcast i32 %5653 to float
  %5655 = fmul fast float %5654, %5639
  %5656 = fadd fast float %5655, 1.000000e+00
  %5657 = fmul fast float %5640, 2.000000e+00
  %5658 = fsub fast float 3.000000e+00, %5657
  %5659 = fadd fast float %5657, 1.000000e+00
  %5660 = fsub fast float 2.000000e+00, %5640
  %5661 = bitcast float %5658 to i32
  %5662 = sub nsw i32 2129859010, %5661
  %5663 = bitcast i32 %5662 to float
  %5664 = fmul fast float %5663, %5660
  %5665 = fadd fast float %5664, -1.000000e+00
  %5666 = bitcast float %5659 to i32
  %5667 = sub nsw i32 2129859010, %5666
  %5668 = bitcast i32 %5667 to float
  %5669 = fmul fast float %5668, %5640
  %5670 = fadd fast float %5669, 1.000000e+00
  %5671 = fadd fast float %5651, %5641
  %5672 = fmul fast float %5671, %5623
  %5673 = fadd fast float %5665, %5642
  %5674 = fmul fast float %5673, %5624
  %5675 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5672, float %5674, float undef, float undef, i32 0, i32 0, i32 undef, float %5628)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5676 = extractvalue %dx.types.ResRet.f32 %5675, 0
  %5677 = fmul fast float %5676, %5644
  %5678 = fadd fast float %5656, %5641
  %5679 = fmul fast float %5678, %5623
  %5680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5679, float %5674, float undef, float undef, i32 0, i32 0, i32 undef, float %5628)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5681 = extractvalue %dx.types.ResRet.f32 %5680, 0
  %5682 = fmul fast float %5681, %5645
  %5683 = fadd fast float %5670, %5642
  %5684 = fmul fast float %5683, %5624
  %5685 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5672, float %5684, float undef, float undef, i32 0, i32 0, i32 undef, float %5628)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5686 = extractvalue %dx.types.ResRet.f32 %5685, 0
  %5687 = fmul fast float %5686, %5644
  %5688 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5679, float %5684, float undef, float undef, i32 0, i32 0, i32 undef, float %5628)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  %5690 = fmul fast float %5689, %5645
  %5691 = fadd fast float %5690, %5687
  %5692 = fmul fast float %5691, %5659
  %5693 = fadd fast float %5682, %5677
  %5694 = fmul fast float %5693, %5658
  %5695 = fadd fast float %5694, %5692
  %5696 = fmul fast float %5695, 6.250000e-02
  br label %5782

; <label>:5697                                    ; preds = %5618
  %5698 = fmul fast float %256, 0x401921FB60000000
  %5699 = call float @dx.op.unary.f32(i32 13, float %5698)  ; Sin(value)
  %5700 = call float @dx.op.unary.f32(i32 12, float %5698)  ; Cos(value)
  %5701 = fsub fast float -0.000000e+00, %5699
  br label %5702

; <label>:5702                                    ; preds = %5751, %5697
  %5703 = phi float [ 0.000000e+00, %5697 ], [ %5746, %5751 ]
  %5704 = phi float [ 0.000000e+00, %5697 ], [ %5748, %5751 ]
  %5705 = phi i32 [ 0, %5697 ], [ %5752, %5751 ]
  %5706 = mul i32 %5705, 2
  %5707 = add i32 0, %5706
  %5708 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5707
  %5709 = load float, float* %5708, align 4
  %5710 = mul i32 %5705, 2
  %5711 = add i32 1, %5710
  %5712 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5711
  %5713 = load float, float* %5712, align 4
  %5714 = fmul fast float %5709, %5700
  %5715 = call float @dx.op.tertiary.f32(i32 46, float %5713, float %5701, float %5714)  ; FMad(a,b,c)
  %5716 = fmul fast float %5709, %5699
  %5717 = call float @dx.op.tertiary.f32(i32 46, float %5713, float %5700, float %5716)  ; FMad(a,b,c)
  %5718 = fmul fast float %5715, %5626
  %5719 = fmul fast float %5717, %5626
  %5720 = fadd fast float %5718, %4942
  %5721 = fadd fast float %5719, %4943
  %5722 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %5720, float %5721, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5723 = extractvalue %dx.types.ResRet.f32 %5722, 0
  %5724 = extractvalue %dx.types.ResRet.f32 %5722, 1
  %5725 = extractvalue %dx.types.ResRet.f32 %5722, 2
  %5726 = extractvalue %dx.types.ResRet.f32 %5722, 3
  %5727 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %5723, float* %5727, align 4
  %5728 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %5724, float* %5728, align 4
  %5729 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %5725, float* %5729, align 4
  %5730 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %5726, float* %5730, align 4
  %5731 = fsub fast float %5723, %5628
  %5732 = fcmp fast olt float %5731, 0.000000e+00
  %5733 = select i1 %5732, float 0.000000e+00, float 1.000000e+00
  %5734 = fadd fast float %5733, %5703
  %5735 = fmul fast float %5733, %5731
  %5736 = fadd fast float %5735, %5704
  br label %5737

; <label>:5737                                    ; preds = %5737, %5702
  %5738 = phi i32 [ 1, %5702 ], [ %5749, %5737 ]
  %5739 = phi float [ %5736, %5702 ], [ %5748, %5737 ]
  %5740 = phi float [ %5734, %5702 ], [ %5746, %5737 ]
  %5741 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %5738
  %5742 = load float, float* %5741, align 4, !tbaa !136, !noalias !126
  %5743 = fsub fast float %5742, %5628
  %5744 = fcmp fast olt float %5743, 0.000000e+00
  %5745 = select i1 %5744, float 0.000000e+00, float 1.000000e+00
  %5746 = fadd fast float %5745, %5740
  %5747 = fmul fast float %5745, %5743
  %5748 = fadd fast float %5747, %5739
  %5749 = add nuw nsw i32 %5738, 1
  %5750 = icmp eq i32 %5749, 4
  br i1 %5750, label %5751, label %5737, !llvm.loop !138

; <label>:5751                                    ; preds = %5737
  %5752 = add nuw nsw i32 %5705, 1
  %5753 = icmp eq i32 %5752, 8
  br i1 %5753, label %5754, label %5702, !llvm.loop !139

; <label>:5754                                    ; preds = %5751
  %5755 = fdiv fast float 1.000000e+00, %5746
  %5756 = fmul fast float %5755, %5748
  %5757 = fdiv fast float 1.000000e+00, %5628
  %5758 = fmul fast float %5756, %5757
  %5759 = call float @dx.op.unary.f32(i32 7, float %5758)  ; Saturate(value)
  %5760 = call float @dx.op.binary.f32(i32 35, float %5759, float 0.000000e+00)  ; FMax(a,b)
  %5761 = fmul fast float %5746, 3.125000e-02
  %5762 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  %5763 = fmul fast float %5762, 2.000000e+00
  %5764 = fadd fast float %5763, -1.000000e+00
  %5765 = fcmp fast ogt float %5764, 0.000000e+00
  %5766 = fcmp fast olt float %5764, 0.000000e+00
  %5767 = zext i1 %5765 to i32
  %5768 = zext i1 %5766 to i32
  %5769 = sub nsw i32 %5767, %5768
  %5770 = sitofp i32 %5769 to float
  %5771 = fmul fast float %5770, %5764
  %5772 = fsub fast float 1.000000e+00, %5771
  %5773 = fmul fast float %5772, %5772
  %5774 = fmul fast float %5773, %5772
  %5775 = fsub fast float %5772, %5774
  %5776 = fmul fast float %5775, %5760
  %5777 = fsub fast float 1.000000e+00, %5774
  %5778 = fsub fast float %5777, %5776
  %5779 = fmul fast float %5770, 5.000000e-01
  %5780 = fmul fast float %5779, %5778
  %5781 = fsub fast float 5.000000e-01, %5780
  br label %5782

; <label>:5782                                    ; preds = %5754, %5630, %5615
  %5783 = phi float [ 1.000000e+00, %5615 ], [ %5696, %5630 ], [ %5781, %5754 ]
  %5784 = fcmp fast ogt float %5045, 0.000000e+00
  br i1 %5784, label %5785, label %5949, !dx.controlflow.hints !141

; <label>:5785                                    ; preds = %5782
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = fadd fast float %5787, %4935
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 2
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 3
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = call float @dx.op.binary.f32(i32 35, float %5788, float 0.000000e+00)  ; FMax(a,b)
  %5795 = fadd fast float %5794, 0x3F10000000000000
  %5796 = fcmp fast oeq float %5793, 0.000000e+00
  br i1 %5796, label %5797, label %5864

; <label>:5797                                    ; preds = %5785
  %5798 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5799 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5800 = fmul fast float %5799, %4927
  %5801 = fmul fast float %5798, %4931
  %5802 = fadd fast float %5800, 5.000000e-01
  %5803 = call float @dx.op.unary.f32(i32 27, float %5802)  ; Round_ni(value)
  %5804 = fadd fast float %5801, 5.000000e-01
  %5805 = call float @dx.op.unary.f32(i32 27, float %5804)  ; Round_ni(value)
  %5806 = fsub fast float %5802, %5803
  %5807 = fsub fast float %5804, %5805
  %5808 = fadd fast float %5803, -5.000000e-01
  %5809 = fadd fast float %5805, -5.000000e-01
  %5810 = fmul fast float %5806, 2.000000e+00
  %5811 = fsub fast float 3.000000e+00, %5810
  %5812 = fadd fast float %5810, 1.000000e+00
  %5813 = fsub fast float 2.000000e+00, %5806
  %5814 = bitcast float %5811 to i32
  %5815 = sub nsw i32 2129859010, %5814
  %5816 = bitcast i32 %5815 to float
  %5817 = fmul fast float %5816, %5813
  %5818 = fadd fast float %5817, -1.000000e+00
  %5819 = bitcast float %5812 to i32
  %5820 = sub nsw i32 2129859010, %5819
  %5821 = bitcast i32 %5820 to float
  %5822 = fmul fast float %5821, %5806
  %5823 = fadd fast float %5822, 1.000000e+00
  %5824 = fmul fast float %5807, 2.000000e+00
  %5825 = fsub fast float 3.000000e+00, %5824
  %5826 = fadd fast float %5824, 1.000000e+00
  %5827 = fsub fast float 2.000000e+00, %5807
  %5828 = bitcast float %5825 to i32
  %5829 = sub nsw i32 2129859010, %5828
  %5830 = bitcast i32 %5829 to float
  %5831 = fmul fast float %5830, %5827
  %5832 = fadd fast float %5831, -1.000000e+00
  %5833 = bitcast float %5826 to i32
  %5834 = sub nsw i32 2129859010, %5833
  %5835 = bitcast i32 %5834 to float
  %5836 = fmul fast float %5835, %5807
  %5837 = fadd fast float %5836, 1.000000e+00
  %5838 = fadd fast float %5818, %5808
  %5839 = fmul fast float %5838, %5790
  %5840 = fadd fast float %5832, %5809
  %5841 = fmul fast float %5840, %5791
  %5842 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5839, float %5841, float undef, float undef, i32 0, i32 0, i32 undef, float %5795)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5843 = extractvalue %dx.types.ResRet.f32 %5842, 0
  %5844 = fmul fast float %5843, %5811
  %5845 = fadd fast float %5823, %5808
  %5846 = fmul fast float %5845, %5790
  %5847 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5846, float %5841, float undef, float undef, i32 0, i32 0, i32 undef, float %5795)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5848 = extractvalue %dx.types.ResRet.f32 %5847, 0
  %5849 = fmul fast float %5848, %5812
  %5850 = fadd fast float %5837, %5809
  %5851 = fmul fast float %5850, %5791
  %5852 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5839, float %5851, float undef, float undef, i32 0, i32 0, i32 undef, float %5795)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5853 = extractvalue %dx.types.ResRet.f32 %5852, 0
  %5854 = fmul fast float %5853, %5811
  %5855 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5846, float %5851, float undef, float undef, i32 0, i32 0, i32 undef, float %5795)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5856 = extractvalue %dx.types.ResRet.f32 %5855, 0
  %5857 = fmul fast float %5856, %5812
  %5858 = fadd fast float %5857, %5854
  %5859 = fmul fast float %5858, %5826
  %5860 = fadd fast float %5849, %5844
  %5861 = fmul fast float %5860, %5825
  %5862 = fadd fast float %5861, %5859
  %5863 = fmul fast float %5862, 6.250000e-02
  br label %5949

; <label>:5864                                    ; preds = %5785
  %5865 = fmul fast float %256, 0x401921FB60000000
  %5866 = call float @dx.op.unary.f32(i32 13, float %5865)  ; Sin(value)
  %5867 = call float @dx.op.unary.f32(i32 12, float %5865)  ; Cos(value)
  %5868 = fsub fast float -0.000000e+00, %5866
  br label %5869

; <label>:5869                                    ; preds = %5918, %5864
  %5870 = phi float [ 0.000000e+00, %5864 ], [ %5913, %5918 ]
  %5871 = phi float [ 0.000000e+00, %5864 ], [ %5915, %5918 ]
  %5872 = phi i32 [ 0, %5864 ], [ %5919, %5918 ]
  %5873 = mul i32 %5872, 2
  %5874 = add i32 0, %5873
  %5875 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5874
  %5876 = load float, float* %5875, align 4
  %5877 = mul i32 %5872, 2
  %5878 = add i32 1, %5877
  %5879 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5878
  %5880 = load float, float* %5879, align 4
  %5881 = fmul fast float %5876, %5867
  %5882 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %5868, float %5881)  ; FMad(a,b,c)
  %5883 = fmul fast float %5876, %5866
  %5884 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %5867, float %5883)  ; FMad(a,b,c)
  %5885 = fmul fast float %5882, %5793
  %5886 = fmul fast float %5884, %5793
  %5887 = fadd fast float %5885, %4927
  %5888 = fadd fast float %5886, %4931
  %5889 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5887, float %5888, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5890 = extractvalue %dx.types.ResRet.f32 %5889, 0
  %5891 = extractvalue %dx.types.ResRet.f32 %5889, 1
  %5892 = extractvalue %dx.types.ResRet.f32 %5889, 2
  %5893 = extractvalue %dx.types.ResRet.f32 %5889, 3
  %5894 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 0
  store float %5890, float* %5894, align 4
  %5895 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 1
  store float %5891, float* %5895, align 4
  %5896 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 2
  store float %5892, float* %5896, align 4
  %5897 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 3
  store float %5893, float* %5897, align 4
  %5898 = fsub fast float %5890, %5795
  %5899 = fcmp fast olt float %5898, 0.000000e+00
  %5900 = select i1 %5899, float 0.000000e+00, float 1.000000e+00
  %5901 = fadd fast float %5900, %5870
  %5902 = fmul fast float %5900, %5898
  %5903 = fadd fast float %5902, %5871
  br label %5904

; <label>:5904                                    ; preds = %5904, %5869
  %5905 = phi i32 [ 1, %5869 ], [ %5916, %5904 ]
  %5906 = phi float [ %5903, %5869 ], [ %5915, %5904 ]
  %5907 = phi float [ %5901, %5869 ], [ %5913, %5904 ]
  %5908 = getelementptr [4 x float], [4 x float]* %98, i32 0, i32 %5905
  %5909 = load float, float* %5908, align 4, !tbaa !136, !noalias !126
  %5910 = fsub fast float %5909, %5795
  %5911 = fcmp fast olt float %5910, 0.000000e+00
  %5912 = select i1 %5911, float 0.000000e+00, float 1.000000e+00
  %5913 = fadd fast float %5912, %5907
  %5914 = fmul fast float %5912, %5910
  %5915 = fadd fast float %5914, %5906
  %5916 = add nuw nsw i32 %5905, 1
  %5917 = icmp eq i32 %5916, 4
  br i1 %5917, label %5918, label %5904, !llvm.loop !138

; <label>:5918                                    ; preds = %5904
  %5919 = add nuw nsw i32 %5872, 1
  %5920 = icmp eq i32 %5919, 8
  br i1 %5920, label %5921, label %5869, !llvm.loop !139

; <label>:5921                                    ; preds = %5918
  %5922 = fdiv fast float 1.000000e+00, %5913
  %5923 = fmul fast float %5922, %5915
  %5924 = fdiv fast float 1.000000e+00, %5795
  %5925 = fmul fast float %5923, %5924
  %5926 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  %5927 = call float @dx.op.binary.f32(i32 35, float %5926, float 0.000000e+00)  ; FMax(a,b)
  %5928 = fmul fast float %5913, 3.125000e-02
  %5929 = call float @dx.op.unary.f32(i32 7, float %5928)  ; Saturate(value)
  %5930 = fmul fast float %5929, 2.000000e+00
  %5931 = fadd fast float %5930, -1.000000e+00
  %5932 = fcmp fast ogt float %5931, 0.000000e+00
  %5933 = fcmp fast olt float %5931, 0.000000e+00
  %5934 = zext i1 %5932 to i32
  %5935 = zext i1 %5933 to i32
  %5936 = sub nsw i32 %5934, %5935
  %5937 = sitofp i32 %5936 to float
  %5938 = fmul fast float %5937, %5931
  %5939 = fsub fast float 1.000000e+00, %5938
  %5940 = fmul fast float %5939, %5939
  %5941 = fmul fast float %5940, %5939
  %5942 = fsub fast float %5939, %5941
  %5943 = fmul fast float %5942, %5927
  %5944 = fsub fast float 1.000000e+00, %5941
  %5945 = fsub fast float %5944, %5943
  %5946 = fmul fast float %5937, 5.000000e-01
  %5947 = fmul fast float %5946, %5945
  %5948 = fsub fast float 5.000000e-01, %5947
  br label %5949

; <label>:5949                                    ; preds = %5921, %5797, %5782
  %5950 = phi float [ 1.000000e+00, %5782 ], [ %5863, %5797 ], [ %5948, %5921 ]
  %5951 = fsub fast float %5616, %5451
  %5952 = fmul fast float %5951, %4989
  %5953 = fadd fast float %5952, %5451
  %5954 = fsub fast float %5783, %5953
  %5955 = fmul fast float %5954, %5019
  %5956 = fadd fast float %5955, %5953
  %5957 = fsub fast float %5950, %5956
  %5958 = fmul fast float %5957, %5045
  %5959 = fadd fast float %5958, %5956
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5962 = fcmp fast ogt float %5961, 0.000000e+00
  br i1 %5962, label %5963, label %6003, !dx.controlflow.hints !142

; <label>:5963                                    ; preds = %5949
  %5964 = fcmp fast ugt float %5961, 0.000000e+00
  br i1 %5964, label %5965, label %6000

; <label>:5965                                    ; preds = %5963
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.CBufRet.f32 %5966, 1
  %5969 = extractvalue %dx.types.CBufRet.f32 %5966, 2
  %5970 = extractvalue %dx.types.CBufRet.f32 %5966, 3
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.CBufRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.CBufRet.f32 %5971, 2
  %5975 = extractvalue %dx.types.CBufRet.f32 %5971, 3
  %5976 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5977 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.CBufRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5982 = fadd fast float %5979, %4904
  %5983 = fadd fast float %5980, %4905
  %5984 = fadd fast float %5981, %4906
  %5985 = fmul fast float %5982, %5967
  %5986 = call float @dx.op.tertiary.f32(i32 46, float %5968, float %5983, float %5985)  ; FMad(a,b,c)
  %5987 = call float @dx.op.tertiary.f32(i32 46, float %5969, float %5984, float %5986)  ; FMad(a,b,c)
  %5988 = fadd fast float %5987, %5970
  %5989 = fmul fast float %5982, %5972
  %5990 = call float @dx.op.tertiary.f32(i32 46, float %5973, float %5983, float %5989)  ; FMad(a,b,c)
  %5991 = call float @dx.op.tertiary.f32(i32 46, float %5974, float %5984, float %5990)  ; FMad(a,b,c)
  %5992 = fadd fast float %5991, %5975
  %5993 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5988, float %5992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5994 = extractvalue %dx.types.ResRet.f32 %5993, 0
  %5995 = fmul fast float %5994, %5977
  %5996 = fadd fast float %5995, %5976
  %5997 = call float @dx.op.unary.f32(i32 7, float %5996)  ; Saturate(value)
  %5998 = fmul fast float %5997, %5961
  %5999 = fsub fast float 1.000000e+00, %5998
  br label %6000

; <label>:6000                                    ; preds = %5965, %5963
  %6001 = phi float [ %5999, %5965 ], [ 1.000000e+00, %5963 ]
  %6002 = fmul fast float %6001, %5959
  br label %6003

; <label>:6003                                    ; preds = %6000, %5949, %4884
  %6004 = phi float [ 1.000000e+00, %4884 ], [ %6002, %6000 ], [ %5959, %5949 ]
  %6005 = call float @dx.op.binary.f32(i32 36, float %6004, float %6004)  ; FMin(a,b)
  %6006 = call float @dx.op.binary.f32(i32 36, float %6004, float %6005)  ; FMin(a,b)
  %6007 = fcmp fast ogt float %6006, 0.000000e+00
  br i1 %6007, label %6008, label %6173, !dx.controlflow.hints !143

; <label>:6008                                    ; preds = %6003
  %6009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6010 = extractvalue %dx.types.CBufRet.f32 %6009, 0
  %6011 = extractvalue %dx.types.CBufRet.f32 %6009, 1
  %6012 = extractvalue %dx.types.CBufRet.f32 %6009, 2
  %6013 = extractvalue %dx.types.CBufRet.f32 %6009, 3
  %6014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6015 = extractvalue %dx.types.CBufRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.CBufRet.f32 %6014, 1
  %6017 = extractvalue %dx.types.CBufRet.f32 %6014, 2
  %6018 = extractvalue %dx.types.CBufRet.f32 %6014, 3
  %6019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.CBufRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.CBufRet.f32 %6019, 2
  %6023 = extractvalue %dx.types.CBufRet.f32 %6019, 3
  %6024 = fmul fast float %6010, %4904
  %6025 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %6011, float %6024)  ; FMad(a,b,c)
  %6026 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %6012, float %6025)  ; FMad(a,b,c)
  %6027 = fadd fast float %6026, %6013
  %6028 = fmul fast float %6015, %4904
  %6029 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %6016, float %6028)  ; FMad(a,b,c)
  %6030 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %6017, float %6029)  ; FMad(a,b,c)
  %6031 = fadd fast float %6030, %6018
  %6032 = fmul fast float %6020, %4904
  %6033 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %6021, float %6032)  ; FMad(a,b,c)
  %6034 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %6022, float %6033)  ; FMad(a,b,c)
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6037 = extractvalue %dx.types.CBufRet.f32 %6035, 1
  %6038 = extractvalue %dx.types.CBufRet.f32 %6035, 3
  %6039 = fmul fast float %6038, %6027
  %6040 = fmul fast float %6038, %6031
  %6041 = fadd fast float %6039, %6036
  %6042 = fadd fast float %6040, %6037
  %6043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6044 = extractvalue %dx.types.CBufRet.f32 %6043, 0
  %6045 = extractvalue %dx.types.CBufRet.f32 %6043, 1
  %6046 = fsub fast float %6041, %6044
  %6047 = fsub fast float %6042, %6045
  %6048 = fcmp fast olt float %6046, 0.000000e+00
  %6049 = fcmp fast olt float %6047, 0.000000e+00
  %6050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6051 = extractvalue %dx.types.CBufRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.CBufRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.CBufRet.f32 %6050, 2
  %6054 = extractvalue %dx.types.CBufRet.f32 %6050, 3
  %6055 = select i1 %6048, float %6051, float %6053
  %6056 = select i1 %6049, float %6052, float %6054
  %6057 = fmul fast float %6055, %6046
  %6058 = fmul fast float %6056, %6047
  %6059 = call float @dx.op.unary.f32(i32 6, float %6057)  ; FAbs(value)
  %6060 = call float @dx.op.unary.f32(i32 6, float %6058)  ; FAbs(value)
  %6061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.f32 %6061, 0
  %6063 = call float @dx.op.binary.f32(i32 35, float %6059, float %6060)  ; FMax(a,b)
  %6064 = fsub fast float %6062, %6063
  %6065 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  %6066 = fcmp fast ogt float %6065, 0.000000e+00
  br i1 %6066, label %6067, label %6108, !dx.controlflow.hints !144

; <label>:6067                                    ; preds = %6008
  %6068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %6041, float %6042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6069 = extractvalue %dx.types.ResRet.f32 %6068, 1
  %6070 = fcmp fast ogt float %6069, 0.000000e+00
  br i1 %6070, label %6071, label %6103

; <label>:6071                                    ; preds = %6067
  %6072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %6041, float %6042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6073 = extractvalue %dx.types.ResRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.ResRet.f32 %6072, 1
  %6075 = extractvalue %dx.types.ResRet.f32 %6072, 2
  %6076 = extractvalue %dx.types.ResRet.f32 %6072, 3
  %6077 = fsub fast float 1.000000e+00, %6023
  %6078 = fsub fast float %6077, %6034
  %6079 = fmul fast float %6078, 0x400921FB60000000
  %6080 = fadd fast float %6079, 0x3FF921FB60000000
  %6081 = call float @dx.op.unary.f32(i32 13, float %6080)  ; Sin(value)
  %6082 = fadd fast float %6081, -1.000000e+00
  %6083 = fmul fast float %6082, 0x3FD45F3060000000
  %6084 = fmul fast float %6078, 0x401921FB60000000
  %6085 = fadd fast float %6084, 0x400921FB60000000
  %6086 = call float @dx.op.unary.f32(i32 13, float %6085)  ; Sin(value)
  %6087 = fadd fast float %6086, 0x3E7777A5C0000000
  %6088 = fmul fast float %6087, 0x3FC45F3060000000
  %6089 = fmul fast float %6078, 0x4022D97C80000000
  %6090 = fadd fast float %6089, 0x4012D97C80000000
  %6091 = call float @dx.op.unary.f32(i32 13, float %6090)  ; Sin(value)
  %6092 = fadd fast float %6091, 1.000000e+00
  %6093 = fmul fast float %6092, 0x3FBB2995E0000000
  %6094 = fmul fast float %6078, 0x402921FB60000000
  %6095 = fadd fast float %6094, 0x401921FB60000000
  %6096 = call float @dx.op.unary.f32(i32 13, float %6095)  ; Sin(value)
  %6097 = fadd fast float %6096, 0xBE8777A5C0000000
  %6098 = fmul fast float %6097, 0x3FB45F3060000000
  %6099 = call float @dx.op.dot4.f32(i32 56, float %6073, float %6074, float %6075, float %6076, float %6083, float %6088, float %6093, float %6098)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6100 = fmul fast float %6099, 0xBFF7154760000000
  %6101 = call float @dx.op.unary.f32(i32 21, float %6100)  ; Exp(value)
  %6102 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  br label %6103

; <label>:6103                                    ; preds = %6071, %6067
  %6104 = phi float [ %6102, %6071 ], [ 1.000000e+00, %6067 ]
  %6105 = fadd fast float %6104, -1.000000e+00
  %6106 = fmul fast float %6105, %6065
  %6107 = fadd fast float %6106, 1.000000e+00
  br label %6108

; <label>:6108                                    ; preds = %6103, %6008
  %6109 = phi float [ %6107, %6103 ], [ 1.000000e+00, %6008 ]
  %6110 = fmul fast float %6109, %6004
  %6111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6111, 0
  %6113 = extractvalue %dx.types.CBufRet.f32 %6111, 1
  %6114 = extractvalue %dx.types.CBufRet.f32 %6111, 2
  %6115 = fadd fast float %6112, %154
  %6116 = fadd fast float %6113, %155
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 1
  %6119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6120 = extractvalue %dx.types.CBufRet.f32 %6119, 0
  %6121 = extractvalue %dx.types.CBufRet.f32 %6119, 1
  %6122 = extractvalue %dx.types.CBufRet.f32 %6119, 2
  %6123 = fsub fast float -0.000000e+00, %6115
  %6124 = fsub fast float -0.000000e+00, %6116
  %6125 = fsub fast float %3004, %6114
  %6126 = fadd fast float %6125, %6118
  %6127 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6123, float %6124, float %6126)  ; Dot3(ax,ay,az,bx,by,bz)
  %6128 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6120, float %6121, float %6122)  ; Dot3(ax,ay,az,bx,by,bz)
  %6129 = fdiv fast float 1.000000e+00, %6128
  %6130 = fmul fast float %6129, %6127
  %6131 = fmul fast float %6120, %6130
  %6132 = fmul fast float %6121, %6130
  %6133 = fadd fast float %6131, %6115
  %6134 = fadd fast float %6132, %6116
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 0
  %6137 = extractvalue %dx.types.CBufRet.f32 %6135, 1
  %6138 = fsub fast float %6133, %6136
  %6139 = fsub fast float %6134, %6137
  %6140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.f32 %6140, 2
  %6142 = extractvalue %dx.types.CBufRet.f32 %6140, 3
  %6143 = fmul fast float %6138, %6141
  %6144 = fmul fast float %6139, %6142
  %6145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.i32 %6145, 3
  %6147 = icmp eq i32 %6146, 0
  br i1 %6147, label %6153, label %6148

; <label>:6148                                    ; preds = %6108
  %6149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %6143, float %6144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6150 = extractvalue %dx.types.ResRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.ResRet.f32 %6149, 1
  %6152 = extractvalue %dx.types.ResRet.f32 %6149, 2
  br label %6158

; <label>:6153                                    ; preds = %6108
  %6154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %6143, float %6144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6155 = extractvalue %dx.types.ResRet.f32 %6154, 0
  %6156 = extractvalue %dx.types.ResRet.f32 %6154, 1
  %6157 = extractvalue %dx.types.ResRet.f32 %6154, 2
  br label %6158

; <label>:6158                                    ; preds = %6153, %6148
  %6159 = phi float [ %6150, %6148 ], [ %6155, %6153 ]
  %6160 = phi float [ %6151, %6148 ], [ %6156, %6153 ]
  %6161 = phi float [ %6152, %6148 ], [ %6157, %6153 ]
  %6162 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6163 = fmul fast float %6162, %6159
  %6164 = extractvalue %dx.types.CBufRet.f32 %6117, 0
  %6165 = fsub fast float %6130, %6164
  %6166 = fsub fast float %6165, %6163
  %6167 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6166)  ; FMax(a,b)
  %6168 = fmul fast float %6167, %6160
  %6169 = call float @dx.op.binary.f32(i32 36, float %6161, float %6168)  ; FMin(a,b)
  %6170 = fmul fast float %6169, 0xBFF7154760000000
  %6171 = call float @dx.op.unary.f32(i32 21, float %6170)  ; Exp(value)
  %6172 = fmul fast float %6110, %6171
  br label %6173

; <label>:6173                                    ; preds = %6158, %6003
  %6174 = phi float [ %6172, %6158 ], [ %6004, %6003 ]
  %6175 = call float @dx.op.binary.f32(i32 36, float %6174, float %6174)  ; FMin(a,b)
  %6176 = call float @dx.op.binary.f32(i32 36, float %6174, float %6175)  ; FMin(a,b)
  %6177 = fcmp fast ogt float %6176, 0.000000e+00
  br i1 %6177, label %6178, label %6425, !dx.controlflow.hints !145

; <label>:6178                                    ; preds = %6173
  %6179 = fmul fast float %6174, %4896
  %6180 = fmul fast float %6174, %4897
  %6181 = fmul fast float %6174, %4898
  %6182 = fsub fast float %156, %2792
  %6183 = fcmp fast ogt float %6182, 0.000000e+00
  %6184 = fmul fast float %4885, 5.120000e+02
  %6185 = fmul fast float %4886, 5.120000e+02
  %6186 = fmul fast float %4887, 5.120000e+02
  %6187 = fadd fast float %6186, %156
  %6188 = fsub fast float %2792, %6187
  %6189 = fmul fast float %6188, 2.000000e+00
  %6190 = fadd fast float %6189, %6187
  %6191 = select i1 %6183, float %6190, float %6187
  %6192 = fsub fast float %6191, %156
  %6193 = call float @dx.op.dot3.f32(i32 55, float %6184, float %6185, float %6192, float %6184, float %6185, float %6192)  ; Dot3(ax,ay,az,bx,by,bz)
  %6194 = call float @dx.op.unary.f32(i32 25, float %6193)  ; Rsqrt(value)
  %6195 = fmul fast float %6194, %6184
  %6196 = fmul fast float %6194, %6185
  %6197 = fmul fast float %6194, %6192
  %6198 = fsub fast float %2792, %156
  %6199 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6198)  ; Dot3(ax,ay,az,bx,by,bz)
  %6200 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6195, float %6196, float %6197)  ; Dot3(ax,ay,az,bx,by,bz)
  %6201 = fdiv fast float 1.000000e+00, %6200
  %6202 = fmul fast float %6201, %6199
  %6203 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6182, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6204 = fcmp fast ogt float %6203, 0.000000e+00
  %6205 = fcmp fast olt float %6203, 0.000000e+00
  %6206 = zext i1 %6204 to i32
  %6207 = zext i1 %6205 to i32
  %6208 = sub nsw i32 %6206, %6207
  %6209 = sitofp i32 %6208 to float
  %6210 = fsub fast float %6191, %2792
  %6211 = call float @dx.op.dot3.f32(i32 55, float %6184, float %6185, float %6210, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6212 = fcmp fast ogt float %6211, 0.000000e+00
  %6213 = fcmp fast olt float %6211, 0.000000e+00
  %6214 = zext i1 %6212 to i32
  %6215 = zext i1 %6213 to i32
  %6216 = sub nsw i32 %6214, %6215
  %6217 = sitofp i32 %6216 to float
  %6218 = fcmp fast une float %6209, %6217
  br i1 %6218, label %6219, label %6229

; <label>:6219                                    ; preds = %6178
  %6220 = fmul fast float %6202, %6197
  %6221 = fmul fast float %6202, %6196
  %6222 = fmul fast float %6202, %6195
  %6223 = fmul fast float %6222, %6222
  %6224 = fmul fast float %6221, %6221
  %6225 = fadd fast float %6223, %6224
  %6226 = fmul fast float %6220, %6220
  %6227 = fadd fast float %6225, %6226
  %6228 = call float @dx.op.unary.f32(i32 24, float %6227)  ; Sqrt(value)
  br label %6239

; <label>:6229                                    ; preds = %6178
  %6230 = icmp slt i32 %6208, 0
  br i1 %6230, label %6231, label %6239

; <label>:6231                                    ; preds = %6229
  %6232 = fsub fast float %156, %6191
  %6233 = fmul fast float %6184, %6184
  %6234 = fmul fast float %6185, %6185
  %6235 = fadd fast float %6233, %6234
  %6236 = fmul fast float %6232, %6232
  %6237 = fadd fast float %6235, %6236
  %6238 = call float @dx.op.unary.f32(i32 24, float %6237)  ; Sqrt(value)
  br label %6239

; <label>:6239                                    ; preds = %6231, %6229, %6219
  %6240 = phi float [ %6228, %6219 ], [ %6238, %6231 ], [ 0.000000e+00, %6229 ]
  %6241 = fsub fast float -0.000000e+00, %6240
  %6242 = select i1 %6183, float -0.000000e+00, float %6241
  %6243 = fmul fast float %2793, 0x3FF7154760000000
  %6244 = fmul fast float %6243, %6242
  %6245 = fmul fast float %2794, 0x3FF7154760000000
  %6246 = fmul fast float %6245, %6242
  %6247 = fmul fast float %2795, 0x3FF7154760000000
  %6248 = fmul fast float %6247, %6242
  %6249 = call float @dx.op.unary.f32(i32 21, float %6244)  ; Exp(value)
  %6250 = call float @dx.op.unary.f32(i32 21, float %6246)  ; Exp(value)
  %6251 = call float @dx.op.unary.f32(i32 21, float %6248)  ; Exp(value)
  %6252 = call float @dx.op.unary.f32(i32 7, float %6249)  ; Saturate(value)
  %6253 = call float @dx.op.unary.f32(i32 7, float %6250)  ; Saturate(value)
  %6254 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6255 = fmul fast float %6179, %6252
  %6256 = fmul fast float %6180, %6253
  %6257 = fmul fast float %6181, %6254
  %6258 = fsub fast float %4885, %2992
  %6259 = fsub fast float %4886, %2991
  %6260 = fsub fast float %4887, %2990
  %6261 = call float @dx.op.dot3.f32(i32 55, float %6258, float %6259, float %6260, float %6258, float %6259, float %6260)  ; Dot3(ax,ay,az,bx,by,bz)
  %6262 = call float @dx.op.unary.f32(i32 25, float %6261)  ; Rsqrt(value)
  %6263 = fmul fast float %6262, %6258
  %6264 = fmul fast float %6262, %6259
  %6265 = fmul fast float %6262, %6260
  %6266 = call float @dx.op.dot3.f32(i32 55, float %4885, float %4886, float %4887, float %2999, float %3000, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6267 = call float @dx.op.dot3.f32(i32 55, float %2989, float %2988, float %2987, float %6263, float %6264, float %6265)  ; Dot3(ax,ay,az,bx,by,bz)
  %6268 = call float @dx.op.unary.f32(i32 7, float %6266)  ; Saturate(value)
  %6269 = fmul fast float %6268, %6268
  %6270 = fmul fast float %6269, %4880
  %6271 = call float @dx.op.unary.f32(i32 7, float %6270)  ; Saturate(value)
  %6272 = fmul fast float %6271, %6268
  %6273 = call float @dx.op.dot3.f32(i32 55, float %2999, float %3000, float %3001, float %6263, float %6264, float %6265)  ; Dot3(ax,ay,az,bx,by,bz)
  %6274 = fmul fast float %6273, %6273
  %6275 = call float @dx.op.unary.f32(i32 6, float %6266)  ; FAbs(value)
  %6276 = fsub fast float 1.000000e+00, %3025
  %6277 = fmul fast float %3007, %3007
  %6278 = fmul fast float %6277, %6276
  %6279 = fadd fast float %6278, %3025
  %6280 = bitcast float %6279 to i32
  %6281 = ashr i32 %6280, 1
  %6282 = add nsw i32 %6281, 532487669
  %6283 = bitcast i32 %6282 to float
  %6284 = fadd fast float %6283, %3007
  %6285 = fmul fast float %3025, %6274
  %6286 = fsub fast float 1.000000e+00, %6274
  %6287 = fadd fast float %6286, %6285
  %6288 = fmul fast float %6275, %6275
  %6289 = fmul fast float %6288, %6276
  %6290 = fadd fast float %6289, %3025
  %6291 = bitcast float %6290 to i32
  %6292 = ashr i32 %6291, 1
  %6293 = add nsw i32 %6292, 532487669
  %6294 = bitcast i32 %6293 to float
  %6295 = fadd fast float %6294, %6275
  %6296 = fmul fast float %6287, %6287
  %6297 = fmul fast float %6296, %6284
  %6298 = fmul fast float %6297, %6295
  %6299 = fdiv fast float 0x3FF0A00000000000, %6298
  %6300 = fmul fast float %6299, %3025
  %6301 = call float @dx.op.unary.f32(i32 6, float %6267)  ; FAbs(value)
  %6302 = fsub fast float 1.000000e+00, %6301
  %6303 = bitcast float %6302 to i32
  %6304 = sitofp i32 %6303 to float
  %6305 = fmul fast float %6304, 5.000000e+00
  %6306 = fadd fast float %6305, 0xC1EFBF8940000000
  %6307 = fptosi float %6306 to i32
  %6308 = bitcast i32 %6307 to float
  %6309 = fsub fast float 1.000000e+00, %2996
  %6310 = fsub fast float 1.000000e+00, %2997
  %6311 = fsub fast float 1.000000e+00, %3005
  %6312 = fmul fast float %6308, %6309
  %6313 = fmul fast float %6308, %6310
  %6314 = fmul fast float %6308, %6311
  %6315 = fadd fast float %6312, %2996
  %6316 = fadd fast float %6313, %2997
  %6317 = fadd fast float %6314, %3005
  br i1 %4303, label %6318, label %6341

; <label>:6318                                    ; preds = %6239
  %6319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %2370, float %6301, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6320 = extractvalue %dx.types.ResRet.f32 %6319, 0
  %6321 = extractvalue %dx.types.ResRet.f32 %6319, 1
  %6322 = extractvalue %dx.types.ResRet.f32 %6319, 2
  %6323 = fadd fast float %6320, -5.000000e-01
  %6324 = fadd fast float %6321, -5.000000e-01
  %6325 = fadd fast float %6322, -5.000000e-01
  %6326 = fmul fast float %2996, 4.000000e+00
  %6327 = fmul fast float %6326, %6309
  %6328 = fmul fast float %6327, %6323
  %6329 = fmul fast float %2997, 4.000000e+00
  %6330 = fmul fast float %6329, %6310
  %6331 = fmul fast float %6330, %6324
  %6332 = fmul fast float %3005, 4.000000e+00
  %6333 = fmul fast float %6332, %6311
  %6334 = fmul fast float %6333, %6325
  %6335 = fadd fast float %6328, %6315
  %6336 = fadd fast float %6331, %6316
  %6337 = fadd fast float %6334, %6317
  %6338 = call float @dx.op.unary.f32(i32 7, float %6335)  ; Saturate(value)
  %6339 = call float @dx.op.unary.f32(i32 7, float %6336)  ; Saturate(value)
  %6340 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  br label %6341

; <label>:6341                                    ; preds = %6318, %6239
  %6342 = phi float [ %6338, %6318 ], [ %6315, %6239 ]
  %6343 = phi float [ %6339, %6318 ], [ %6316, %6239 ]
  %6344 = phi float [ %6340, %6318 ], [ %6317, %6239 ]
  %6345 = fmul fast float %6266, 9.843750e-01
  %6346 = fadd fast float %6345, 7.812500e-03
  %6347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6346, float %4293, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6348 = extractvalue %dx.types.ResRet.f32 %6347, 2
  %6349 = extractvalue %dx.types.ResRet.f32 %6347, 3
  %6350 = fmul fast float %6348, %2996
  %6351 = fmul fast float %6348, %2997
  %6352 = fmul fast float %6348, %3005
  %6353 = fadd fast float %6350, %6349
  %6354 = fadd fast float %6351, %6349
  %6355 = fadd fast float %6352, %6349
  br i1 %4303, label %6356, label %6379

; <label>:6356                                    ; preds = %6341
  %6357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %2370, float %6266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6358 = extractvalue %dx.types.ResRet.f32 %6357, 0
  %6359 = extractvalue %dx.types.ResRet.f32 %6357, 1
  %6360 = extractvalue %dx.types.ResRet.f32 %6357, 2
  %6361 = fadd fast float %6358, -5.000000e-01
  %6362 = fadd fast float %6359, -5.000000e-01
  %6363 = fadd fast float %6360, -5.000000e-01
  %6364 = fmul fast float %2996, 4.000000e+00
  %6365 = fmul fast float %6364, %6309
  %6366 = fmul fast float %6365, %6361
  %6367 = fmul fast float %2997, 4.000000e+00
  %6368 = fmul fast float %6367, %6310
  %6369 = fmul fast float %6368, %6362
  %6370 = fmul fast float %3005, 4.000000e+00
  %6371 = fmul fast float %6370, %6311
  %6372 = fmul fast float %6371, %6363
  %6373 = fadd fast float %6366, %6353
  %6374 = fadd fast float %6369, %6354
  %6375 = fadd fast float %6372, %6355
  %6376 = call float @dx.op.unary.f32(i32 7, float %6373)  ; Saturate(value)
  %6377 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  %6378 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  br label %6379

; <label>:6379                                    ; preds = %6356, %6341
  %6380 = phi float [ %6376, %6356 ], [ %6353, %6341 ]
  %6381 = phi float [ %6377, %6356 ], [ %6354, %6341 ]
  %6382 = phi float [ %6378, %6356 ], [ %6355, %6341 ]
  %6383 = call float @dx.op.binary.f32(i32 35, float %6381, float %6382)  ; FMax(a,b)
  %6384 = call float @dx.op.binary.f32(i32 35, float %6380, float %6383)  ; FMax(a,b)
  %6385 = fsub fast float 1.000000e+00, %6384
  %6386 = fmul fast float %6342, %6300
  %6387 = fmul fast float %6343, %6300
  %6388 = fmul fast float %6344, %6300
  %6389 = fsub fast float 1.000000e+00, %6267
  %6390 = bitcast float %6389 to i32
  %6391 = sitofp i32 %6390 to float
  %6392 = fmul fast float %6391, 5.000000e+00
  %6393 = fadd fast float %6392, 0xC1EFBF8940000000
  %6394 = fptosi float %6393 to i32
  %6395 = bitcast i32 %6394 to float
  %6396 = fmul fast float %6395, %2369
  %6397 = fmul fast float %6385, %6396
  %6398 = fmul fast float %6397, %4845
  %6399 = fmul fast float %6397, %4846
  %6400 = fmul fast float %6397, %4847
  %6401 = fadd fast float %6398, %6386
  %6402 = fadd fast float %6399, %6387
  %6403 = fadd fast float %6400, %6388
  %6404 = fmul fast float %6272, %6255
  %6405 = fmul fast float %6404, %6385
  %6406 = fmul fast float %6272, %6256
  %6407 = fmul fast float %6406, %6385
  %6408 = fmul fast float %6272, %6257
  %6409 = fmul fast float %6408, %6385
  %6410 = fmul fast float %6404, %6401
  %6411 = fmul fast float %6406, %6402
  %6412 = fmul fast float %6408, %6403
  %6413 = fadd fast float %6405, %4829
  %6414 = fmul fast float %6413, %2390
  %6415 = fadd fast float %6407, %4830
  %6416 = fmul fast float %6415, %2390
  %6417 = fadd fast float %6409, %4831
  %6418 = fmul fast float %6417, %2390
  %6419 = fadd fast float %6410, %4872
  %6420 = fmul fast float %6419, %2390
  %6421 = fadd fast float %6411, %4875
  %6422 = fmul fast float %6421, %2390
  %6423 = fadd fast float %6412, %4878
  %6424 = fmul fast float %6423, %2390
  br label %6425

; <label>:6425                                    ; preds = %6379, %6173, %4825
  %6426 = phi float [ %4873, %4825 ], [ %4873, %6173 ], [ %6420, %6379 ]
  %6427 = phi float [ %4876, %4825 ], [ %4876, %6173 ], [ %6422, %6379 ]
  %6428 = phi float [ %4879, %4825 ], [ %4879, %6173 ], [ %6424, %6379 ]
  %6429 = phi float [ %4868, %4825 ], [ %4868, %6173 ], [ %6414, %6379 ]
  %6430 = phi float [ %4869, %4825 ], [ %4869, %6173 ], [ %6416, %6379 ]
  %6431 = phi float [ %4870, %4825 ], [ %4870, %6173 ], [ %6418, %6379 ]
  %6432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.i32 %6432, 0
  %6434 = icmp eq i32 %6433, 0
  br i1 %6434, label %7097, label %6435

; <label>:6435                                    ; preds = %6425
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6438 = extractvalue %dx.types.CBufRet.f32 %6436, 3
  %6439 = fmul fast float %6437, %107
  %6440 = fmul fast float %6438, %108
  %6441 = fptoui float %6439 to i32
  %6442 = fptoui float %6440 to i32
  %6443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.f32 %6443, 0
  %6445 = extractvalue %dx.types.CBufRet.f32 %6443, 2
  %6446 = extractvalue %dx.types.CBufRet.f32 %6443, 3
  %6447 = fadd fast float %95, -4.000000e+00
  %6448 = call float @dx.op.binary.f32(i32 35, float %6447, float 0.000000e+00)  ; FMax(a,b)
  %6449 = fadd fast float %6448, %6444
  %6450 = fmul fast float %6449, %6445
  %6451 = call float @dx.op.unary.f32(i32 23, float %6450)  ; Log(value)
  %6452 = fmul fast float %6451, %6446
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6455 = fmul fast float %6452, %6454
  %6456 = call float @dx.op.unary.f32(i32 7, float %6455)  ; Saturate(value)
  %6457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6458 = extractvalue %dx.types.CBufRet.i32 %6457, 1
  %6459 = add i32 %6458, -1
  %6460 = uitofp i32 %6458 to float
  %6461 = fmul fast float %6460, %6456
  %6462 = fptoui float %6461 to i32
  %6463 = call i32 @dx.op.binary.i32(i32 40, i32 %6462, i32 %6459)  ; UMin(a,b)
  %6464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.i32 %6464, 2
  %6466 = extractvalue %dx.types.CBufRet.i32 %6464, 3
  %6467 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6442, i32 %6465, i32 %6441)  ; UMad(a,b,c)
  %6468 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6463, i32 %6466, i32 %6467)  ; UMad(a,b,c)
  %6469 = add nsw i32 %6433, -1
  %6470 = call i32 @dx.op.binary.i32(i32 37, i32 %6469, i32 0)  ; IMax(a,b)
  %6471 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %6472 = fptoui float %6471 to i32
  %6473 = lshr i32 %6472, 5
  %6474 = call i32 @dx.op.binary.i32(i32 40, i32 %6473, i32 8191)  ; UMin(a,b)
  %6475 = shl i32 %6474, 2
  %6476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6475, i32 undef)  ; BufferLoad(srv,index,wot)
  %6477 = extractvalue %dx.types.ResRet.i32 %6476, 0
  %6478 = lshr i32 %6477, 16
  %6479 = and i32 %6477, 65535
  %6480 = lshr i32 %6477, 21
  %6481 = lshr i32 %6479, 5
  %6482 = call i32 @dx.op.binary.i32(i32 40, i32 %6481, i32 %6470)  ; UMin(a,b)
  %6483 = icmp ugt i32 %6480, %6482
  br i1 %6483, label %7097, label %6484

; <label>:6484                                    ; preds = %6435
  br label %6485

; <label>:6485                                    ; preds = %7087, %6484
  %6486 = phi i32 [ %7094, %7087 ], [ %6480, %6484 ]
  %6487 = phi float [ %7088, %7087 ], [ %6426, %6484 ]
  %6488 = phi float [ %7089, %7087 ], [ %6427, %6484 ]
  %6489 = phi float [ %7090, %7087 ], [ %6428, %6484 ]
  %6490 = phi float [ %7091, %7087 ], [ %6429, %6484 ]
  %6491 = phi float [ %7092, %7087 ], [ %6430, %6484 ]
  %6492 = phi float [ %7093, %7087 ], [ %6431, %6484 ]
  %6493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.i32 %6493, 0
  %6495 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6468, i32 %6494, i32 %6486)  ; UMad(a,b,c)
  %6496 = shl i32 %6495, 2
  %6497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6496, i32 undef)  ; BufferLoad(srv,index,wot)
  %6498 = extractvalue %dx.types.ResRet.i32 %6497, 0
  %6499 = shl i32 %6486, 5
  %6500 = sub nsw i32 %6478, %6499
  %6501 = call i32 @dx.op.binary.i32(i32 37, i32 %6500, i32 0)  ; IMax(a,b)
  %6502 = call i32 @dx.op.binary.i32(i32 38, i32 %6501, i32 31)  ; IMin(a,b)
  %6503 = sub nsw i32 1, %6478
  %6504 = add nsw i32 %6503, %6479
  %6505 = call i32 @dx.op.binary.i32(i32 37, i32 %6504, i32 0)  ; IMax(a,b)
  %6506 = call i32 @dx.op.binary.i32(i32 38, i32 %6505, i32 32)  ; IMin(a,b)
  %6507 = and i32 %6506, 31
  %6508 = shl i32 -1, %6507
  %6509 = xor i32 %6508, -1
  %6510 = and i32 %6502, 31
  %6511 = shl i32 %6509, %6510
  %6512 = icmp eq i32 %6506, 32
  %6513 = select i1 %6512, i32 -1, i32 %6511
  %6514 = and i32 %6513, %6498
  %6515 = icmp eq i32 %6514, 0
  br i1 %6515, label %7087, label %6516

; <label>:6516                                    ; preds = %6485
  br label %6517

; <label>:6517                                    ; preds = %6651, %6516
  %6518 = phi i32 [ %6529, %6651 ], [ %6514, %6516 ]
  %6519 = phi float [ %6652, %6651 ], [ %6487, %6516 ]
  %6520 = phi float [ %6653, %6651 ], [ %6488, %6516 ]
  %6521 = phi float [ %6654, %6651 ], [ %6489, %6516 ]
  %6522 = phi float [ %6655, %6651 ], [ %6490, %6516 ]
  %6523 = phi float [ %6656, %6651 ], [ %6491, %6516 ]
  %6524 = phi float [ %6657, %6651 ], [ %6492, %6516 ]
  %6525 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6518)  ; FirstbitLo(value)
  %6526 = add i32 %6525, %6499
  %6527 = and i32 %6525, 31
  %6528 = shl i32 1, %6527
  %6529 = xor i32 %6528, %6518
  %6530 = mul i32 %6526, 112
  %6531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6530, i32 undef)  ; BufferLoad(srv,index,wot)
  %6532 = extractvalue %dx.types.ResRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.ResRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.ResRet.f32 %6531, 2
  %6535 = or i32 %6530, 12
  %6536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6535, i32 undef)  ; BufferLoad(srv,index,wot)
  %6537 = extractvalue %dx.types.ResRet.f32 %6536, 0
  %6538 = add i32 %6530, 16
  %6539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6538, i32 undef)  ; BufferLoad(srv,index,wot)
  %6540 = extractvalue %dx.types.ResRet.f32 %6539, 0
  %6541 = extractvalue %dx.types.ResRet.f32 %6539, 1
  %6542 = extractvalue %dx.types.ResRet.f32 %6539, 2
  %6543 = add i32 %6530, 28
  %6544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6543, i32 undef)  ; BufferLoad(srv,index,wot)
  %6545 = extractvalue %dx.types.ResRet.i32 %6544, 0
  %6546 = add i32 %6530, 44
  %6547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6546, i32 undef)  ; BufferLoad(srv,index,wot)
  %6548 = extractvalue %dx.types.ResRet.f32 %6547, 0
  %6549 = add i32 %6530, 48
  %6550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6549, i32 undef)  ; BufferLoad(srv,index,wot)
  %6551 = extractvalue %dx.types.ResRet.f32 %6550, 0
  %6552 = extractvalue %dx.types.ResRet.f32 %6550, 1
  %6553 = extractvalue %dx.types.ResRet.f32 %6550, 2
  %6554 = extractvalue %dx.types.ResRet.f32 %6550, 3
  %6555 = add i32 %6530, 64
  %6556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6555, i32 undef)  ; BufferLoad(srv,index,wot)
  %6557 = extractvalue %dx.types.ResRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.ResRet.f32 %6556, 1
  %6559 = extractvalue %dx.types.ResRet.f32 %6556, 2
  %6560 = extractvalue %dx.types.ResRet.f32 %6556, 3
  %6561 = add i32 %6530, 80
  %6562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6561, i32 undef)  ; BufferLoad(srv,index,wot)
  %6563 = extractvalue %dx.types.ResRet.f32 %6562, 1
  %6564 = extractvalue %dx.types.ResRet.f32 %6562, 2
  %6565 = add i32 %6530, 92
  %6566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6565, i32 undef)  ; BufferLoad(srv,index,wot)
  %6567 = extractvalue %dx.types.ResRet.i32 %6566, 0
  %6568 = call float @dx.op.dot3.f32(i32 55, float %6532, float %6533, float %6534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6569 = select i1 %245, float %6563, float %6532
  %6570 = select i1 %245, float %6568, float %6533
  %6571 = select i1 %245, float %6564, float %6534
  %6572 = and i32 %6567, 65535
  %6573 = uitofp i32 %6572 to float
  %6574 = lshr i32 %6567, 16
  %6575 = uitofp i32 %6574 to float
  %6576 = and i32 %6545, 65535
  %6577 = and i32 %6545, 50331648
  %6578 = icmp eq i32 %6577, 33554432
  %6579 = fsub fast float %6551, %154
  %6580 = fsub fast float %6552, %155
  %6581 = fsub fast float %6553, %156
  %6582 = call float @dx.op.dot3.f32(i32 55, float %6579, float %6580, float %6581, float %6579, float %6580, float %6581)  ; Dot3(ax,ay,az,bx,by,bz)
  %6583 = call float @dx.op.unary.f32(i32 24, float %6582)  ; Sqrt(value)
  %6584 = fdiv fast float 1.000000e+00, %6583
  %6585 = fmul fast float %6584, %6579
  %6586 = fmul fast float %6584, %6580
  %6587 = fmul fast float %6584, %6581
  %6588 = fadd fast float %6583, %6537
  %6589 = fdiv fast float 1.000000e+00, %6588
  %6590 = fmul float %6548, %6589
  %6591 = fmul float %6590, %6590
  %6592 = call float @dx.op.unary.f32(i32 7, float %6591)  ; Saturate(value)
  br i1 %6578, label %6593, label %6614

; <label>:6593                                    ; preds = %6517
  %6594 = fmul fast float %6559, %6540
  %6595 = fmul fast float %6559, %6541
  %6596 = fmul fast float %6559, %6542
  %6597 = fadd fast float %6579, %6594
  %6598 = fadd fast float %6580, %6595
  %6599 = fadd fast float %6581, %6596
  %6600 = call float @dx.op.dot3.f32(i32 55, float %6597, float %6598, float %6599, float %6597, float %6598, float %6599)  ; Dot3(ax,ay,az,bx,by,bz)
  %6601 = call float @dx.op.unary.f32(i32 25, float %6600)  ; Rsqrt(value)
  %6602 = fmul fast float %6601, %6597
  %6603 = fmul fast float %6601, %6598
  %6604 = fmul fast float %6601, %6599
  %6605 = fsub fast float %154, %6551
  %6606 = fsub fast float %155, %6552
  %6607 = fsub fast float %156, %6553
  %6608 = fsub fast float -0.000000e+00, %6605
  %6609 = fsub fast float -0.000000e+00, %6606
  %6610 = fsub fast float -0.000000e+00, %6607
  %6611 = call float @dx.op.dot3.f32(i32 55, float %6608, float %6609, float %6610, float %6540, float %6541, float %6542)  ; Dot3(ax,ay,az,bx,by,bz)
  %6612 = fcmp fast ogt float %6611, 0.000000e+00
  %6613 = uitofp i1 %6612 to float
  br label %6614

; <label>:6614                                    ; preds = %6593, %6517
  %6615 = phi float [ %6613, %6593 ], [ 1.000000e+00, %6517 ]
  %6616 = phi float [ %6602, %6593 ], [ %6585, %6517 ]
  %6617 = phi float [ %6603, %6593 ], [ %6586, %6517 ]
  %6618 = phi float [ %6604, %6593 ], [ %6587, %6517 ]
  %6619 = call float @dx.op.dot3.f32(i32 55, float %6540, float %6541, float %6542, float %6616, float %6617, float %6618)  ; Dot3(ax,ay,az,bx,by,bz)
  %6620 = fmul fast float %6619, %6619
  %6621 = call float @dx.op.unary.f32(i32 7, float %6620)  ; Saturate(value)
  %6622 = fsub fast float 1.000000e+00, %6621
  %6623 = fmul fast float %6622, 5.000000e-01
  %6624 = fcmp fast ogt float %6619, 0.000000e+00
  %6625 = fsub fast float 1.000000e+00, %6623
  %6626 = select i1 %6624, float %6623, float %6625
  %6627 = fmul fast float %6626, %6575
  %6628 = fadd fast float %6627, %6573
  %6629 = fmul fast float %6628, 0x3EF0001000000000
  %6630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %6629, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6631 = extractvalue %dx.types.ResRet.f32 %6630, 0
  %6632 = fmul fast float %6619, %6557
  %6633 = fadd fast float %6632, %6558
  %6634 = call float @dx.op.unary.f32(i32 7, float %6633)  ; Saturate(value)
  %6635 = select i1 %6578, float 1.000000e+00, float %6634
  %6636 = select i1 %6578, float %6634, float 1.000000e+00
  %6637 = fmul fast float %6583, %6554
  %6638 = fsub fast float 1.000000e+00, %6637
  %6639 = fmul fast float %6638, %6560
  %6640 = call float @dx.op.unary.f32(i32 7, float %6639)  ; Saturate(value)
  %6641 = fmul fast float %6640, %6636
  %6642 = fmul fast float %6641, 2.000000e+00
  %6643 = fsub fast float 3.000000e+00, %6642
  %6644 = fmul fast float %6631, %6615
  %6645 = fmul fast float %6641, %6641
  %6646 = fmul fast float %6645, %6644
  %6647 = fmul fast float %6646, %6643
  %6648 = call float @dx.op.binary.f32(i32 36, float %6647, float %6647)  ; FMin(a,b)
  %6649 = call float @dx.op.binary.f32(i32 36, float %6647, float %6648)  ; FMin(a,b)
  %6650 = fcmp fast ogt float %6649, 0.000000e+00
  br i1 %6650, label %6659, label %6651, !dx.controlflow.hints !146

; <label>:6651                                    ; preds = %7043, %6805, %6614
  %6652 = phi float [ %6519, %6805 ], [ %6519, %6614 ], [ %7083, %7043 ]
  %6653 = phi float [ %6520, %6805 ], [ %6520, %6614 ], [ %7084, %7043 ]
  %6654 = phi float [ %6521, %6805 ], [ %6521, %6614 ], [ %7085, %7043 ]
  %6655 = phi float [ %6522, %6805 ], [ %6522, %6614 ], [ %7077, %7043 ]
  %6656 = phi float [ %6523, %6805 ], [ %6523, %6614 ], [ %7078, %7043 ]
  %6657 = phi float [ %6524, %6805 ], [ %6524, %6614 ], [ %7079, %7043 ]
  %6658 = icmp eq i32 %6518, %6528
  br i1 %6658, label %7086, label %6517

; <label>:6659                                    ; preds = %6614
  %6660 = icmp eq i32 %6576, 255
  br i1 %6660, label %6805, label %6661, !dx.controlflow.hints !147

; <label>:6661                                    ; preds = %6659
  %6662 = mul nuw nsw i32 %6576, 176
  %6663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6662, i32 undef)  ; BufferLoad(srv,index,wot)
  %6664 = extractvalue %dx.types.ResRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.ResRet.f32 %6663, 1
  %6666 = extractvalue %dx.types.ResRet.f32 %6663, 2
  %6667 = extractvalue %dx.types.ResRet.f32 %6663, 3
  %6668 = add nuw nsw i32 %6662, 16
  %6669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6668, i32 undef)  ; BufferLoad(srv,index,wot)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = extractvalue %dx.types.ResRet.f32 %6669, 1
  %6672 = add nuw nsw i32 %6662, 32
  %6673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6672, i32 undef)  ; BufferLoad(srv,index,wot)
  %6674 = extractvalue %dx.types.ResRet.f32 %6673, 0
  %6675 = extractvalue %dx.types.ResRet.f32 %6673, 1
  %6676 = extractvalue %dx.types.ResRet.f32 %6673, 2
  %6677 = add nuw nsw i32 %6662, 48
  %6678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6677, i32 undef)  ; BufferLoad(srv,index,wot)
  %6679 = extractvalue %dx.types.ResRet.f32 %6678, 0
  %6680 = extractvalue %dx.types.ResRet.f32 %6678, 1
  %6681 = extractvalue %dx.types.ResRet.f32 %6678, 2
  %6682 = extractvalue %dx.types.ResRet.f32 %6678, 3
  %6683 = add nuw nsw i32 %6662, 64
  %6684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6683, i32 undef)  ; BufferLoad(srv,index,wot)
  %6685 = extractvalue %dx.types.ResRet.f32 %6684, 0
  %6686 = extractvalue %dx.types.ResRet.f32 %6684, 1
  %6687 = extractvalue %dx.types.ResRet.f32 %6684, 2
  %6688 = extractvalue %dx.types.ResRet.f32 %6684, 3
  %6689 = add nuw nsw i32 %6662, 80
  %6690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6689, i32 undef)  ; BufferLoad(srv,index,wot)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.ResRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.ResRet.f32 %6690, 2
  %6694 = extractvalue %dx.types.ResRet.f32 %6690, 3
  %6695 = add nuw nsw i32 %6662, 96
  %6696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6695, i32 undef)  ; BufferLoad(srv,index,wot)
  %6697 = extractvalue %dx.types.ResRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.ResRet.f32 %6696, 1
  %6699 = extractvalue %dx.types.ResRet.f32 %6696, 2
  %6700 = extractvalue %dx.types.ResRet.f32 %6696, 3
  %6701 = bitcast float %6671 to i32
  %6702 = fmul fast float %6676, %80
  %6703 = fmul fast float %6676, %81
  %6704 = fmul fast float %6676, %82
  %6705 = fadd fast float %6702, %154
  %6706 = fadd fast float %6703, %155
  %6707 = fadd fast float %6704, %156
  %6708 = fmul fast float %6705, %6679
  %6709 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %6685, float %6708)  ; FMad(a,b,c)
  %6710 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6691, float %6709)  ; FMad(a,b,c)
  %6711 = fadd fast float %6710, %6697
  %6712 = fmul fast float %6705, %6680
  %6713 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %6686, float %6712)  ; FMad(a,b,c)
  %6714 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6692, float %6713)  ; FMad(a,b,c)
  %6715 = fadd fast float %6714, %6698
  %6716 = fmul fast float %6705, %6681
  %6717 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %6687, float %6716)  ; FMad(a,b,c)
  %6718 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6693, float %6717)  ; FMad(a,b,c)
  %6719 = fadd fast float %6718, %6699
  %6720 = fmul fast float %6705, %6682
  %6721 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %6688, float %6720)  ; FMad(a,b,c)
  %6722 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6694, float %6721)  ; FMad(a,b,c)
  %6723 = fadd fast float %6722, %6700
  %6724 = fdiv fast float %6711, %6723
  %6725 = fdiv fast float %6715, %6723
  %6726 = fdiv fast float %6719, %6723
  %6727 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6726)  ; FMax(a,b)
  %6728 = fmul fast float %256, 0x401921FB60000000
  %6729 = call float @dx.op.unary.f32(i32 13, float %6728)  ; Sin(value)
  %6730 = call float @dx.op.unary.f32(i32 12, float %6728)  ; Cos(value)
  %6731 = fmul fast float %6730, %6675
  %6732 = call float @dx.op.tertiary.f32(i32 46, float %6729, float %6675, float 0.000000e+00)  ; FMad(a,b,c)
  %6733 = fmul fast float %6675, %6729
  %6734 = fsub fast float -0.000000e+00, %6733
  %6735 = call float @dx.op.tertiary.f32(i32 46, float %6730, float %6675, float 0.000000e+00)  ; FMad(a,b,c)
  br label %6736

; <label>:6736                                    ; preds = %6736, %6661
  %6737 = phi float [ 0.000000e+00, %6661 ], [ %6769, %6736 ]
  %6738 = phi float [ 0.000000e+00, %6661 ], [ %6771, %6736 ]
  %6739 = phi i32 [ 0, %6661 ], [ %6772, %6736 ]
  %6740 = mul i32 %6739, 2
  %6741 = add i32 0, %6740
  %6742 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6741
  %6743 = load float, float* %6742, align 4
  %6744 = mul i32 %6739, 2
  %6745 = add i32 1, %6744
  %6746 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6745
  %6747 = load float, float* %6746, align 4
  %6748 = fmul fast float %6731, %6743
  %6749 = call float @dx.op.tertiary.f32(i32 46, float %6747, float %6734, float %6748)  ; FMad(a,b,c)
  %6750 = fmul fast float %6743, %6732
  %6751 = call float @dx.op.tertiary.f32(i32 46, float %6747, float %6735, float %6750)  ; FMad(a,b,c)
  %6752 = fadd fast float %6749, %6724
  %6753 = fadd fast float %6751, %6725
  %6754 = fmul fast float %6752, %6670
  %6755 = fmul fast float %6753, %6670
  %6756 = call float @dx.op.binary.f32(i32 35, float %6754, float %6666)  ; FMax(a,b)
  %6757 = call float @dx.op.binary.f32(i32 35, float %6755, float %6666)  ; FMax(a,b)
  %6758 = call float @dx.op.binary.f32(i32 36, float %6756, float %6667)  ; FMin(a,b)
  %6759 = call float @dx.op.binary.f32(i32 36, float %6757, float %6667)  ; FMin(a,b)
  %6760 = fadd fast float %6758, %6664
  %6761 = fadd fast float %6759, %6665
  %6762 = uitofp i32 %6701 to float
  %6763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %6760, float %6761, float %6762, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6764 = extractvalue %dx.types.ResRet.f32 %6763, 0
  %6765 = fsub fast float %6764, %6727
  %6766 = fsub fast float %6765, %6674
  %6767 = fcmp fast ogt float %6766, 0.000000e+00
  %6768 = select i1 %6767, float 1.000000e+00, float 0.000000e+00
  %6769 = fadd fast float %6768, %6737
  %6770 = select i1 %6767, float %6766, float 0.000000e+00
  %6771 = fadd fast float %6770, %6738
  %6772 = add nuw nsw i32 %6739, 1
  %6773 = icmp eq i32 %6772, 8
  br i1 %6773, label %6774, label %6736

; <label>:6774                                    ; preds = %6736
  %6775 = fdiv fast float 1.000000e+00, %6769
  %6776 = fmul fast float %6775, %6771
  %6777 = fdiv fast float 1.000000e+00, %6727
  %6778 = fmul fast float %6776, %6777
  %6779 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6780 = call float @dx.op.binary.f32(i32 35, float %6779, float 0.000000e+00)  ; FMax(a,b)
  %6781 = fmul fast float %6769, 1.250000e-01
  %6782 = call float @dx.op.unary.f32(i32 7, float %6781)  ; Saturate(value)
  %6783 = fmul fast float %6782, 2.000000e+00
  %6784 = fadd fast float %6783, -1.000000e+00
  %6785 = fcmp fast ogt float %6784, 0.000000e+00
  %6786 = fcmp fast olt float %6784, 0.000000e+00
  %6787 = zext i1 %6785 to i32
  %6788 = zext i1 %6786 to i32
  %6789 = sub nsw i32 %6787, %6788
  %6790 = sitofp i32 %6789 to float
  %6791 = fmul fast float %6790, %6784
  %6792 = fsub fast float 1.000000e+00, %6791
  %6793 = fmul fast float %6792, %6792
  %6794 = fmul fast float %6793, %6792
  %6795 = fsub fast float %6792, %6794
  %6796 = fmul fast float %6795, %6780
  %6797 = fsub fast float 1.000000e+00, %6794
  %6798 = fsub fast float %6797, %6796
  %6799 = fmul fast float %6790, 5.000000e-01
  %6800 = fmul fast float %6799, %6798
  %6801 = fsub fast float -5.000000e-01, %6800
  %6802 = fmul fast float %6801, %6635
  %6803 = fadd fast float %6802, 1.000000e+00
  %6804 = fmul fast float %6803, %6647
  br label %6805

; <label>:6805                                    ; preds = %6774, %6659
  %6806 = phi float [ %6804, %6774 ], [ %6647, %6659 ]
  %6807 = call float @dx.op.binary.f32(i32 36, float %6806, float %6806)  ; FMin(a,b)
  %6808 = call float @dx.op.binary.f32(i32 36, float %6806, float %6807)  ; FMin(a,b)
  %6809 = fcmp fast ogt float %6808, 0.000000e+00
  br i1 %6809, label %6810, label %6651, !dx.controlflow.hints !148

; <label>:6810                                    ; preds = %6805
  %6811 = fmul fast float %6806, %6569
  %6812 = fmul fast float %6806, %6570
  %6813 = fmul fast float %6806, %6571
  %6814 = fsub fast float %6553, %2792
  %6815 = fcmp fast ogt float %6814, 0.000000e+00
  %6816 = fsub fast float %156, %2792
  %6817 = fcmp fast ogt float %6816, 0.000000e+00
  %6818 = xor i1 %6817, %6815
  %6819 = fsub fast float %2792, %6553
  %6820 = fmul fast float %6819, 2.000000e+00
  %6821 = fadd fast float %6820, %6553
  %6822 = select i1 %6818, float %6553, float %6821
  %6823 = fsub fast float %6822, %156
  %6824 = call float @dx.op.dot3.f32(i32 55, float %6579, float %6580, float %6823, float %6579, float %6580, float %6823)  ; Dot3(ax,ay,az,bx,by,bz)
  %6825 = call float @dx.op.unary.f32(i32 25, float %6824)  ; Rsqrt(value)
  %6826 = fmul fast float %6825, %6579
  %6827 = fmul fast float %6825, %6580
  %6828 = fmul fast float %6825, %6823
  %6829 = fsub fast float %2792, %156
  %6830 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6829)  ; Dot3(ax,ay,az,bx,by,bz)
  %6831 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6826, float %6827, float %6828)  ; Dot3(ax,ay,az,bx,by,bz)
  %6832 = fdiv fast float 1.000000e+00, %6831
  %6833 = fmul fast float %6832, %6830
  %6834 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6816, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6835 = fcmp fast ogt float %6834, 0.000000e+00
  %6836 = fcmp fast olt float %6834, 0.000000e+00
  %6837 = zext i1 %6835 to i32
  %6838 = zext i1 %6836 to i32
  %6839 = sub nsw i32 %6837, %6838
  %6840 = sitofp i32 %6839 to float
  %6841 = fsub fast float %6822, %2792
  %6842 = call float @dx.op.dot3.f32(i32 55, float %6579, float %6580, float %6841, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6843 = fcmp fast ogt float %6842, 0.000000e+00
  %6844 = fcmp fast olt float %6842, 0.000000e+00
  %6845 = zext i1 %6843 to i32
  %6846 = zext i1 %6844 to i32
  %6847 = sub nsw i32 %6845, %6846
  %6848 = sitofp i32 %6847 to float
  %6849 = fcmp fast une float %6840, %6848
  br i1 %6849, label %6850, label %6860

; <label>:6850                                    ; preds = %6810
  %6851 = fmul fast float %6833, %6828
  %6852 = fmul fast float %6833, %6827
  %6853 = fmul fast float %6833, %6826
  %6854 = fmul fast float %6853, %6853
  %6855 = fmul fast float %6852, %6852
  %6856 = fadd fast float %6854, %6855
  %6857 = fmul fast float %6851, %6851
  %6858 = fadd fast float %6856, %6857
  %6859 = call float @dx.op.unary.f32(i32 24, float %6858)  ; Sqrt(value)
  br label %6872

; <label>:6860                                    ; preds = %6810
  %6861 = icmp slt i32 %6839, 0
  br i1 %6861, label %6862, label %6872

; <label>:6862                                    ; preds = %6860
  %6863 = fsub fast float %154, %6551
  %6864 = fsub fast float %155, %6552
  %6865 = fsub fast float %156, %6822
  %6866 = fmul fast float %6863, %6863
  %6867 = fmul fast float %6864, %6864
  %6868 = fadd fast float %6866, %6867
  %6869 = fmul fast float %6865, %6865
  %6870 = fadd fast float %6868, %6869
  %6871 = call float @dx.op.unary.f32(i32 24, float %6870)  ; Sqrt(value)
  br label %6872

; <label>:6872                                    ; preds = %6862, %6860, %6850
  %6873 = phi float [ %6859, %6850 ], [ %6871, %6862 ], [ 0.000000e+00, %6860 ]
  %6874 = and i1 %6817, %6815
  %6875 = fsub fast float -0.000000e+00, %6873
  %6876 = select i1 %6874, float -0.000000e+00, float %6875
  %6877 = fmul fast float %2793, 0x3FF7154760000000
  %6878 = fmul fast float %6877, %6876
  %6879 = fmul fast float %2794, 0x3FF7154760000000
  %6880 = fmul fast float %6879, %6876
  %6881 = fmul fast float %2795, 0x3FF7154760000000
  %6882 = fmul fast float %6881, %6876
  %6883 = call float @dx.op.unary.f32(i32 21, float %6878)  ; Exp(value)
  %6884 = call float @dx.op.unary.f32(i32 21, float %6880)  ; Exp(value)
  %6885 = call float @dx.op.unary.f32(i32 21, float %6882)  ; Exp(value)
  %6886 = call float @dx.op.unary.f32(i32 7, float %6883)  ; Saturate(value)
  %6887 = call float @dx.op.unary.f32(i32 7, float %6884)  ; Saturate(value)
  %6888 = call float @dx.op.unary.f32(i32 7, float %6885)  ; Saturate(value)
  %6889 = fmul fast float %6811, %6886
  %6890 = fmul fast float %6812, %6887
  %6891 = fmul fast float %6813, %6888
  %6892 = fsub fast float %6585, %2992
  %6893 = fsub fast float %6586, %2991
  %6894 = fsub fast float %6587, %2990
  %6895 = call float @dx.op.dot3.f32(i32 55, float %6892, float %6893, float %6894, float %6892, float %6893, float %6894)  ; Dot3(ax,ay,az,bx,by,bz)
  %6896 = call float @dx.op.unary.f32(i32 25, float %6895)  ; Rsqrt(value)
  %6897 = fmul fast float %6896, %6892
  %6898 = fmul fast float %6896, %6893
  %6899 = fmul fast float %6896, %6894
  %6900 = call float @dx.op.dot3.f32(i32 55, float %6585, float %6586, float %6587, float %2999, float %3000, float %3001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6901 = call float @dx.op.dot3.f32(i32 55, float %2989, float %2988, float %2987, float %6897, float %6898, float %6899)  ; Dot3(ax,ay,az,bx,by,bz)
  %6902 = call float @dx.op.unary.f32(i32 7, float %6900)  ; Saturate(value)
  %6903 = fmul fast float %6902, %6592
  %6904 = fmul fast float %6902, %6902
  %6905 = fmul fast float %6904, %4880
  %6906 = call float @dx.op.unary.f32(i32 7, float %6905)  ; Saturate(value)
  %6907 = fmul fast float %6903, %6906
  %6908 = bitcast float %6582 to i32
  %6909 = ashr i32 %6908, 1
  %6910 = sub nsw i32 1597463007, %6909
  %6911 = bitcast i32 %6910 to float
  %6912 = fmul fast float %6911, %6579
  %6913 = fmul fast float %6911, %6580
  %6914 = fmul fast float %6911, %6581
  %6915 = fsub fast float %6912, %2992
  %6916 = fsub fast float %6913, %2991
  %6917 = fsub fast float %6914, %2990
  %6918 = call float @dx.op.dot3.f32(i32 55, float %6915, float %6916, float %6917, float %6915, float %6916, float %6917)  ; Dot3(ax,ay,az,bx,by,bz)
  %6919 = call float @dx.op.unary.f32(i32 25, float %6918)  ; Rsqrt(value)
  %6920 = fmul fast float %6915, %6919
  %6921 = fmul fast float %6916, %6919
  %6922 = fmul fast float %6917, %6919
  %6923 = call float @dx.op.dot3.f32(i32 55, float %2999, float %3000, float %3001, float %6920, float %6921, float %6922)  ; Dot3(ax,ay,az,bx,by,bz)
  %6924 = fmul fast float %6923, %6923
  %6925 = call float @dx.op.unary.f32(i32 6, float %6900)  ; FAbs(value)
  %6926 = fsub fast float 1.000000e+00, %3025
  %6927 = fmul fast float %3007, %3007
  %6928 = fmul fast float %6927, %6926
  %6929 = fadd fast float %6928, %3025
  %6930 = bitcast float %6929 to i32
  %6931 = ashr i32 %6930, 1
  %6932 = add nsw i32 %6931, 532487669
  %6933 = bitcast i32 %6932 to float
  %6934 = fadd fast float %6933, %3007
  %6935 = fmul fast float %3025, %6924
  %6936 = fsub fast float 1.000000e+00, %6924
  %6937 = fadd fast float %6936, %6935
  %6938 = fmul fast float %6925, %6925
  %6939 = fmul fast float %6938, %6926
  %6940 = fadd fast float %6939, %3025
  %6941 = bitcast float %6940 to i32
  %6942 = ashr i32 %6941, 1
  %6943 = add nsw i32 %6942, 532487669
  %6944 = bitcast i32 %6943 to float
  %6945 = fadd fast float %6944, %6925
  %6946 = fmul fast float %6937, %6937
  %6947 = fmul fast float %6946, %6934
  %6948 = fmul fast float %6947, %6945
  %6949 = fdiv fast float 1.000000e+00, %6948
  %6950 = bitcast float %3025 to i32
  %6951 = sitofp i32 %6950 to float
  %6952 = fmul fast float %6951, 0x3FE7F73180000000
  %6953 = fadd fast float %6952, 0x41AFE27C40000000
  %6954 = fptosi float %6953 to i32
  %6955 = bitcast i32 %6954 to float
  %6956 = fmul fast float %6548, 0x3FD80E9D60000000
  %6957 = fmul fast float %6956, %6911
  %6958 = fadd fast float %6955, %6957
  %6959 = bitcast float %6958 to i32
  %6960 = sub nsw i32 2129859010, %6959
  %6961 = bitcast i32 %6960 to float
  %6962 = fmul fast float %3025, %6949
  %6963 = fmul fast float %6962, %6955
  %6964 = fmul fast float %6963, %6961
  %6965 = call float @dx.op.unary.f32(i32 6, float %6901)  ; FAbs(value)
  %6966 = fsub fast float 1.000000e+00, %6965
  %6967 = bitcast float %6966 to i32
  %6968 = sitofp i32 %6967 to float
  %6969 = fmul fast float %6968, 5.000000e+00
  %6970 = fadd fast float %6969, 0xC1EFBF8940000000
  %6971 = fptosi float %6970 to i32
  %6972 = bitcast i32 %6971 to float
  %6973 = fsub fast float 1.000000e+00, %2996
  %6974 = fsub fast float 1.000000e+00, %2997
  %6975 = fsub fast float 1.000000e+00, %3005
  %6976 = fmul fast float %6972, %6973
  %6977 = fmul fast float %6972, %6974
  %6978 = fmul fast float %6972, %6975
  %6979 = fadd fast float %6976, %2996
  %6980 = fadd fast float %6977, %2997
  %6981 = fadd fast float %6978, %3005
  br i1 %4303, label %6982, label %7005

; <label>:6982                                    ; preds = %6872
  %6983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %2370, float %6965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6984 = extractvalue %dx.types.ResRet.f32 %6983, 0
  %6985 = extractvalue %dx.types.ResRet.f32 %6983, 1
  %6986 = extractvalue %dx.types.ResRet.f32 %6983, 2
  %6987 = fadd fast float %6984, -5.000000e-01
  %6988 = fadd fast float %6985, -5.000000e-01
  %6989 = fadd fast float %6986, -5.000000e-01
  %6990 = fmul fast float %2996, 4.000000e+00
  %6991 = fmul fast float %6990, %6973
  %6992 = fmul fast float %6991, %6987
  %6993 = fmul fast float %2997, 4.000000e+00
  %6994 = fmul fast float %6993, %6974
  %6995 = fmul fast float %6994, %6988
  %6996 = fmul fast float %3005, 4.000000e+00
  %6997 = fmul fast float %6996, %6975
  %6998 = fmul fast float %6997, %6989
  %6999 = fadd fast float %6992, %6979
  %7000 = fadd fast float %6995, %6980
  %7001 = fadd fast float %6998, %6981
  %7002 = call float @dx.op.unary.f32(i32 7, float %6999)  ; Saturate(value)
  %7003 = call float @dx.op.unary.f32(i32 7, float %7000)  ; Saturate(value)
  %7004 = call float @dx.op.unary.f32(i32 7, float %7001)  ; Saturate(value)
  br label %7005

; <label>:7005                                    ; preds = %6982, %6872
  %7006 = phi float [ %7002, %6982 ], [ %6979, %6872 ]
  %7007 = phi float [ %7003, %6982 ], [ %6980, %6872 ]
  %7008 = phi float [ %7004, %6982 ], [ %6981, %6872 ]
  %7009 = fmul fast float %6900, 9.843750e-01
  %7010 = fadd fast float %7009, 7.812500e-03
  %7011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %7010, float %4293, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7012 = extractvalue %dx.types.ResRet.f32 %7011, 2
  %7013 = extractvalue %dx.types.ResRet.f32 %7011, 3
  %7014 = fmul fast float %7012, %2996
  %7015 = fmul fast float %7012, %2997
  %7016 = fmul fast float %7012, %3005
  %7017 = fadd fast float %7014, %7013
  %7018 = fadd fast float %7015, %7013
  %7019 = fadd fast float %7016, %7013
  br i1 %4303, label %7020, label %7043

; <label>:7020                                    ; preds = %7005
  %7021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %2370, float %6900, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7022 = extractvalue %dx.types.ResRet.f32 %7021, 0
  %7023 = extractvalue %dx.types.ResRet.f32 %7021, 1
  %7024 = extractvalue %dx.types.ResRet.f32 %7021, 2
  %7025 = fadd fast float %7022, -5.000000e-01
  %7026 = fadd fast float %7023, -5.000000e-01
  %7027 = fadd fast float %7024, -5.000000e-01
  %7028 = fmul fast float %2996, 4.000000e+00
  %7029 = fmul fast float %7028, %6973
  %7030 = fmul fast float %7029, %7025
  %7031 = fmul fast float %2997, 4.000000e+00
  %7032 = fmul fast float %7031, %6974
  %7033 = fmul fast float %7032, %7026
  %7034 = fmul fast float %3005, 4.000000e+00
  %7035 = fmul fast float %7034, %6975
  %7036 = fmul fast float %7035, %7027
  %7037 = fadd fast float %7030, %7017
  %7038 = fadd fast float %7033, %7018
  %7039 = fadd fast float %7036, %7019
  %7040 = call float @dx.op.unary.f32(i32 7, float %7037)  ; Saturate(value)
  %7041 = call float @dx.op.unary.f32(i32 7, float %7038)  ; Saturate(value)
  %7042 = call float @dx.op.unary.f32(i32 7, float %7039)  ; Saturate(value)
  br label %7043

; <label>:7043                                    ; preds = %7020, %7005
  %7044 = phi float [ %7040, %7020 ], [ %7017, %7005 ]
  %7045 = phi float [ %7041, %7020 ], [ %7018, %7005 ]
  %7046 = phi float [ %7042, %7020 ], [ %7019, %7005 ]
  %7047 = call float @dx.op.binary.f32(i32 35, float %7045, float %7046)  ; FMax(a,b)
  %7048 = call float @dx.op.binary.f32(i32 35, float %7044, float %7047)  ; FMax(a,b)
  %7049 = fsub fast float 1.000000e+00, %7048
  %7050 = fmul fast float %7006, %6964
  %7051 = fmul fast float %7007, %6964
  %7052 = fmul fast float %7008, %6964
  %7053 = fsub fast float 1.000000e+00, %6901
  %7054 = bitcast float %7053 to i32
  %7055 = sitofp i32 %7054 to float
  %7056 = fmul fast float %7055, 5.000000e+00
  %7057 = fadd fast float %7056, 0xC1EFBF8940000000
  %7058 = fptosi float %7057 to i32
  %7059 = bitcast i32 %7058 to float
  %7060 = fmul fast float %7059, %2369
  %7061 = fmul fast float %7049, %7060
  %7062 = fmul fast float %7061, %4845
  %7063 = fmul fast float %7061, %4846
  %7064 = fmul fast float %7061, %4847
  %7065 = fadd fast float %7062, %7050
  %7066 = fadd fast float %7063, %7051
  %7067 = fadd fast float %7064, %7052
  %7068 = fmul fast float %6889, %2390
  %7069 = fmul fast float %7068, %6907
  %7070 = fmul fast float %7069, %7049
  %7071 = fmul fast float %6890, %2390
  %7072 = fmul fast float %7071, %6907
  %7073 = fmul fast float %7072, %7049
  %7074 = fmul fast float %6891, %2390
  %7075 = fmul fast float %7074, %6907
  %7076 = fmul fast float %7075, %7049
  %7077 = fadd fast float %7070, %6522
  %7078 = fadd fast float %7073, %6523
  %7079 = fadd fast float %7076, %6524
  %7080 = fmul fast float %7069, %7065
  %7081 = fmul fast float %7072, %7066
  %7082 = fmul fast float %7075, %7067
  %7083 = fadd fast float %7080, %6519
  %7084 = fadd fast float %7081, %6520
  %7085 = fadd fast float %7082, %6521
  br label %6651

; <label>:7086                                    ; preds = %6651
  br label %7087

; <label>:7087                                    ; preds = %7086, %6485
  %7088 = phi float [ %6487, %6485 ], [ %6652, %7086 ]
  %7089 = phi float [ %6488, %6485 ], [ %6653, %7086 ]
  %7090 = phi float [ %6489, %6485 ], [ %6654, %7086 ]
  %7091 = phi float [ %6490, %6485 ], [ %6655, %7086 ]
  %7092 = phi float [ %6491, %6485 ], [ %6656, %7086 ]
  %7093 = phi float [ %6492, %6485 ], [ %6657, %7086 ]
  %7094 = add i32 %6486, 1
  %7095 = icmp ugt i32 %7094, %6482
  br i1 %7095, label %7096, label %6485

; <label>:7096                                    ; preds = %7087
  br label %7097

; <label>:7097                                    ; preds = %7096, %6435, %6425
  %7098 = phi float [ %6426, %6425 ], [ %6426, %6435 ], [ %7088, %7096 ]
  %7099 = phi float [ %6427, %6425 ], [ %6427, %6435 ], [ %7089, %7096 ]
  %7100 = phi float [ %6428, %6425 ], [ %6428, %6435 ], [ %7090, %7096 ]
  %7101 = phi float [ %6429, %6425 ], [ %6429, %6435 ], [ %7091, %7096 ]
  %7102 = phi float [ %6430, %6425 ], [ %6430, %6435 ], [ %7092, %7096 ]
  %7103 = phi float [ %6431, %6425 ], [ %6431, %6435 ], [ %7093, %7096 ]
  %7104 = fmul fast float %2390, %2390
  %7105 = fsub fast float 1.000000e+00, %7104
  %7106 = call float @dx.op.dot3.f32(i32 55, float %7105, float %7105, float %7105, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7107 = fsub fast float 1.000000e+00, %7106
  %7108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.f32 %7108, 0
  %7110 = fmul fast float %7109, %4851
  %7111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7112 = extractvalue %dx.types.CBufRet.f32 %7111, 3
  %7113 = fsub fast float 1.000000e+00, %2368
  %7114 = call float @dx.op.unary.f32(i32 7, float %7113)  ; Saturate(value)
  %7115 = fadd fast float %7103, %2367
  %7116 = fmul fast float %7115, %2368
  %7117 = fmul fast float %7114, %7112
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 3
  %7120 = fmul fast float %7101, %2993
  %7121 = fmul fast float %7102, %2994
  %7122 = fmul fast float %7103, %2995
  %7123 = fcmp fast ogt float %95, %205
  %7124 = and i1 %7123, %2798
  %7125 = or i1 %2804, %7124
  %7126 = icmp eq i32 %2797, 2
  %7127 = fcmp fast ole float %95, %205
  %7128 = and i1 %7127, %7126
  %7129 = or i1 %7128, %7125
  br i1 %7124, label %7130, label %7389

; <label>:7130                                    ; preds = %7097
  %7131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7132 = extractvalue %dx.types.CBufRet.f32 %7131, 2
  %7133 = extractvalue %dx.types.CBufRet.f32 %7131, 3
  %7134 = fmul fast float %7132, %107
  %7135 = fmul fast float %7133, %108
  %7136 = call float @dx.op.unary.f32(i32 7, float %7134)  ; Saturate(value)
  %7137 = call float @dx.op.unary.f32(i32 7, float %7135)  ; Saturate(value)
  %7138 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7136, float %7137, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7139 = extractvalue %dx.types.ResRet.f32 %7138, 0
  %7140 = extractvalue %dx.types.ResRet.f32 %7138, 1
  %7141 = extractvalue %dx.types.ResRet.f32 %7138, 2
  %7142 = extractvalue %dx.types.ResRet.f32 %7138, 3
  %7143 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7136, float %7137, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7144 = extractvalue %dx.types.ResRet.f32 %7143, 0
  %7145 = extractvalue %dx.types.ResRet.f32 %7143, 1
  %7146 = extractvalue %dx.types.ResRet.f32 %7143, 2
  %7147 = extractvalue %dx.types.ResRet.f32 %7143, 3
  %7148 = call float @dx.op.binary.f32(i32 35, float %7140, float %7141)  ; FMax(a,b)
  %7149 = call float @dx.op.binary.f32(i32 35, float %7139, float %7148)  ; FMax(a,b)
  %7150 = call float @dx.op.binary.f32(i32 35, float %7149, float %7142)  ; FMax(a,b)
  %7151 = call float @dx.op.binary.f32(i32 36, float %7145, float %7146)  ; FMin(a,b)
  %7152 = call float @dx.op.binary.f32(i32 36, float %7144, float %7151)  ; FMin(a,b)
  %7153 = call float @dx.op.binary.f32(i32 36, float %7152, float %7147)  ; FMin(a,b)
  %7154 = fmul fast float %7150, 2.550000e+02
  %7155 = fadd fast float %7154, 0x3F70101020000000
  %7156 = fptoui float %7155 to i32
  %7157 = fmul fast float %7153, 2.550000e+02
  %7158 = fadd fast float %7157, 0x3F70101020000000
  %7159 = fptoui float %7158 to i32
  %7160 = icmp ult i32 %7156, %7159
  br i1 %7160, label %7161, label %7329

; <label>:7161                                    ; preds = %7130
  %7162 = fcmp fast ogt float %94, 9.843750e-01
  %7163 = fadd fast float %95, -4.000000e+00
  %7164 = select i1 %7162, float -4.000000e+00, float %7163
  %7165 = call float @dx.op.binary.f32(i32 35, float %7164, float 0.000000e+00)  ; FMax(a,b)
  %7166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7167 = extractvalue %dx.types.CBufRet.f32 %7166, 0
  %7168 = fadd fast float %7167, %7165
  %7169 = extractvalue %dx.types.CBufRet.f32 %7166, 2
  %7170 = fmul fast float %7168, %7169
  %7171 = call float @dx.op.unary.f32(i32 23, float %7170)  ; Log(value)
  %7172 = extractvalue %dx.types.CBufRet.f32 %7166, 3
  %7173 = fmul fast float %7172, %7171
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 2
  %7176 = fmul fast float %7173, %7175
  %7177 = call float @dx.op.unary.f32(i32 7, float %7176)  ; Saturate(value)
  %7178 = uitofp i32 %7156 to float
  %7179 = uitofp i32 %7159 to float
  %7180 = fadd fast float %7178, 5.000000e-01
  %7181 = fadd fast float %7179, 5.000000e-01
  %7182 = fmul fast float %7175, %7180
  %7183 = fmul fast float %7175, %7181
  %7184 = fadd fast float %7182, 0x3F0FFB4800000000
  %7185 = fadd fast float %7183, 0xBF0FFB4800000000
  %7186 = call float @dx.op.binary.f32(i32 35, float %7177, float %7184)  ; FMax(a,b)
  %7187 = call float @dx.op.binary.f32(i32 36, float %7186, float %7185)  ; FMin(a,b)
  %7188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7189 = extractvalue %dx.types.CBufRet.f32 %7188, 1
  %7190 = extractvalue %dx.types.CBufRet.f32 %7188, 2
  %7191 = extractvalue %dx.types.CBufRet.f32 %7188, 0
  %7192 = fmul fast float %7189, %7187
  %7193 = fadd fast float %7191, %7192
  %7194 = fadd fast float %7191, %7190
  %7195 = fsub fast float %7189, %7190
  %7196 = fadd fast float %7195, %7191
  %7197 = call float @dx.op.binary.f32(i32 35, float %7193, float %7194)  ; FMax(a,b)
  %7198 = call float @dx.op.binary.f32(i32 36, float %7197, float %7196)  ; FMin(a,b)
  %7199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7136, float %7137, float %7198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7200 = extractvalue %dx.types.ResRet.f32 %7199, 0
  %7201 = extractvalue %dx.types.ResRet.f32 %7199, 1
  %7202 = extractvalue %dx.types.ResRet.f32 %7199, 2
  %7203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7204 = extractvalue %dx.types.CBufRet.i32 %7203, 0
  %7205 = extractvalue %dx.types.CBufRet.i32 %7203, 1
  %7206 = uitofp i32 %7204 to float
  %7207 = uitofp i32 %7205 to float
  %7208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7209 = extractvalue %dx.types.CBufRet.f32 %7208, 0
  %7210 = extractvalue %dx.types.CBufRet.f32 %7208, 1
  %7211 = fmul fast float %7206, %7136
  %7212 = fmul fast float %7207, %7137
  %7213 = fadd fast float %7211, -5.000000e-01
  %7214 = fadd fast float %7212, -5.000000e-01
  %7215 = call float @dx.op.unary.f32(i32 22, float %7213)  ; Frc(value)
  %7216 = call float @dx.op.unary.f32(i32 22, float %7214)  ; Frc(value)
  %7217 = fmul fast float %7215, %7215
  %7218 = fmul fast float %7217, %7215
  %7219 = fsub fast float 3.000000e+00, %7215
  %7220 = fmul fast float %7217, %7219
  %7221 = fmul fast float %7215, 3.000000e+00
  %7222 = fmul fast float %7218, 3.000000e+00
  %7223 = fmul fast float %7217, 6.000000e+00
  %7224 = fsub fast float %7222, %7223
  %7225 = fadd fast float %7224, 4.000000e+00
  %7226 = fmul fast float %7225, 0x3FC5555560000000
  %7227 = fmul fast float %7218, -3.000000e+00
  %7228 = fadd fast float %7217, %7215
  %7229 = fmul fast float %7228, 3.000000e+00
  %7230 = fadd fast float %7227, 1.000000e+00
  %7231 = fadd fast float %7230, %7229
  %7232 = fmul fast float %7218, 0x3FC5555560000000
  %7233 = fmul fast float %7216, %7216
  %7234 = fmul fast float %7233, %7216
  %7235 = fsub fast float 3.000000e+00, %7216
  %7236 = fmul fast float %7233, %7235
  %7237 = fmul fast float %7216, 3.000000e+00
  %7238 = fmul fast float %7234, 3.000000e+00
  %7239 = fmul fast float %7233, 6.000000e+00
  %7240 = fsub fast float %7238, %7239
  %7241 = fadd fast float %7240, 4.000000e+00
  %7242 = fmul fast float %7241, 0x3FC5555560000000
  %7243 = fmul fast float %7234, -3.000000e+00
  %7244 = fadd fast float %7233, %7216
  %7245 = fmul fast float %7244, 3.000000e+00
  %7246 = fadd fast float %7243, 1.000000e+00
  %7247 = fadd fast float %7246, %7245
  %7248 = fmul fast float %7234, 0x3FC5555560000000
  %7249 = fadd fast float %7215, 1.000000e+00
  %7250 = fsub fast float 1.000000e+00, %7221
  %7251 = fadd fast float %7250, %7220
  %7252 = fadd fast float %7251, %7225
  %7253 = fmul fast float %7252, 0x3FC5555560000000
  %7254 = fdiv fast float %7226, %7253
  %7255 = fsub fast float %7249, %7254
  %7256 = fsub fast float 1.000000e+00, %7215
  %7257 = fadd fast float %7231, %7218
  %7258 = fmul fast float %7257, 0x3FC5555560000000
  %7259 = fdiv fast float %7232, %7258
  %7260 = fadd fast float %7256, %7259
  %7261 = fadd fast float %7216, 1.000000e+00
  %7262 = fsub fast float 1.000000e+00, %7237
  %7263 = fadd fast float %7262, %7236
  %7264 = fadd fast float %7263, %7241
  %7265 = fmul fast float %7264, 0x3FC5555560000000
  %7266 = fdiv fast float %7242, %7265
  %7267 = fsub fast float %7261, %7266
  %7268 = fsub fast float 1.000000e+00, %7216
  %7269 = fadd fast float %7247, %7234
  %7270 = fmul fast float %7269, 0x3FC5555560000000
  %7271 = fdiv fast float %7248, %7270
  %7272 = fadd fast float %7271, %7268
  %7273 = fmul fast float %7255, %7209
  %7274 = fsub fast float %7136, %7273
  %7275 = fmul fast float %7260, %7209
  %7276 = fadd fast float %7275, %7136
  %7277 = fmul fast float %7272, %7210
  %7278 = fadd fast float %7277, %7137
  %7279 = fmul fast float %7267, %7210
  %7280 = fsub fast float %7137, %7279
  %7281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7274, float %7280, float %7198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7282 = extractvalue %dx.types.ResRet.f32 %7281, 0
  %7283 = extractvalue %dx.types.ResRet.f32 %7281, 1
  %7284 = extractvalue %dx.types.ResRet.f32 %7281, 2
  %7285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7276, float %7280, float %7198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7286 = extractvalue %dx.types.ResRet.f32 %7285, 0
  %7287 = extractvalue %dx.types.ResRet.f32 %7285, 1
  %7288 = extractvalue %dx.types.ResRet.f32 %7285, 2
  %7289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7274, float %7278, float %7198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7290 = extractvalue %dx.types.ResRet.f32 %7289, 0
  %7291 = extractvalue %dx.types.ResRet.f32 %7289, 1
  %7292 = extractvalue %dx.types.ResRet.f32 %7289, 2
  %7293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7276, float %7278, float %7198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7294 = extractvalue %dx.types.ResRet.f32 %7293, 0
  %7295 = extractvalue %dx.types.ResRet.f32 %7293, 1
  %7296 = extractvalue %dx.types.ResRet.f32 %7293, 2
  %7297 = fsub fast float %7290, %7282
  %7298 = fsub fast float %7291, %7283
  %7299 = fsub fast float %7292, %7284
  %7300 = fmul fast float %7297, %7270
  %7301 = fmul fast float %7298, %7270
  %7302 = fmul fast float %7299, %7270
  %7303 = fadd fast float %7300, %7282
  %7304 = fadd fast float %7301, %7283
  %7305 = fadd fast float %7302, %7284
  %7306 = fsub fast float %7294, %7286
  %7307 = fsub fast float %7295, %7287
  %7308 = fsub fast float %7296, %7288
  %7309 = fmul fast float %7306, %7270
  %7310 = fmul fast float %7307, %7270
  %7311 = fmul fast float %7308, %7270
  %7312 = fsub fast float %7286, %7303
  %7313 = fadd fast float %7312, %7309
  %7314 = fsub fast float %7287, %7304
  %7315 = fadd fast float %7314, %7310
  %7316 = fsub fast float %7288, %7305
  %7317 = fadd fast float %7316, %7311
  %7318 = fmul fast float %7313, %7258
  %7319 = fmul fast float %7315, %7258
  %7320 = fmul fast float %7317, %7258
  %7321 = fadd fast float %7318, %7303
  %7322 = fadd fast float %7319, %7304
  %7323 = fadd fast float %7320, %7305
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 1
  %7326 = fmul fast float %7321, %7325
  %7327 = fmul fast float %7322, %7325
  %7328 = fmul fast float %7323, %7325
  br label %7329

; <label>:7329                                    ; preds = %7161, %7130
  %7330 = phi float [ %7200, %7161 ], [ 1.000000e+00, %7130 ]
  %7331 = phi float [ %7201, %7161 ], [ 1.000000e+00, %7130 ]
  %7332 = phi float [ %7202, %7161 ], [ 1.000000e+00, %7130 ]
  %7333 = phi float [ %7326, %7161 ], [ 0.000000e+00, %7130 ]
  %7334 = phi float [ %7327, %7161 ], [ 0.000000e+00, %7130 ]
  %7335 = phi float [ %7328, %7161 ], [ 0.000000e+00, %7130 ]
  %7336 = fmul fast float %7333, %7107
  %7337 = fmul fast float %7334, %7107
  %7338 = fmul fast float %7335, %7107
  %7339 = call float @dx.op.dot3.f32(i32 55, float %7330, float %7331, float %7332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7340 = call float @dx.op.dot3.f32(i32 55, float %7336, float %7337, float %7338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7341 = select i1 %245, float %7339, float %7330
  %7342 = select i1 %245, float %7339, float %7331
  %7343 = select i1 %245, float 1.000000e+00, float %7332
  %7344 = select i1 %245, float %7340, float %7336
  %7345 = select i1 %245, float 0.000000e+00, float %7337
  %7346 = select i1 %245, float 0.000000e+00, float %7338
  %7347 = fmul fast float %7341, %7120
  %7348 = fmul fast float %7342, %7121
  %7349 = fmul fast float %7343, %7122
  %7350 = fadd fast float %7347, %7344
  %7351 = fadd fast float %7348, %7345
  %7352 = fadd fast float %7346, %7349
  %7353 = fmul fast float %7341, %7098
  %7354 = fmul fast float %7342, %7099
  %7355 = fmul fast float %7343, %7100
  %7356 = fmul fast float %107, 2.000000e+00
  %7357 = fmul fast float %7356, %7132
  %7358 = fmul fast float %108, 2.000000e+00
  %7359 = fmul fast float %7358, %7133
  %7360 = fsub fast float 1.000000e+00, %7357
  %7361 = fsub fast float 1.000000e+00, %7359
  %7362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7363 = extractvalue %dx.types.CBufRet.f32 %7362, 0
  %7364 = extractvalue %dx.types.CBufRet.f32 %7362, 1
  %7365 = extractvalue %dx.types.CBufRet.f32 %7362, 2
  %7366 = fmul fast float %7360, %7363
  %7367 = fmul fast float %7360, %7364
  %7368 = fmul fast float %7360, %7365
  %7369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.f32 %7369, 0
  %7371 = extractvalue %dx.types.CBufRet.f32 %7369, 1
  %7372 = extractvalue %dx.types.CBufRet.f32 %7369, 2
  %7373 = fmul fast float %7361, %7370
  %7374 = fmul fast float %7361, %7371
  %7375 = fmul fast float %7361, %7372
  %7376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7377 = extractvalue %dx.types.CBufRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.CBufRet.f32 %7376, 1
  %7379 = extractvalue %dx.types.CBufRet.f32 %7376, 2
  %7380 = fadd fast float %7373, %7377
  %7381 = fadd fast float %7380, %7366
  %7382 = fadd fast float %7374, %7378
  %7383 = fadd fast float %7382, %7367
  %7384 = fadd fast float %7375, %7379
  %7385 = fadd fast float %7384, %7368
  %7386 = fmul fast float %7381, %205
  %7387 = fmul fast float %7383, %205
  %7388 = fmul fast float %7385, %205
  br label %7389

; <label>:7389                                    ; preds = %7329, %7097
  %7390 = phi float [ %7386, %7329 ], [ %154, %7097 ]
  %7391 = phi float [ %7387, %7329 ], [ %155, %7097 ]
  %7392 = phi float [ %7388, %7329 ], [ %156, %7097 ]
  %7393 = phi float [ %205, %7329 ], [ %95, %7097 ]
  %7394 = phi float [ %7350, %7329 ], [ %7120, %7097 ]
  %7395 = phi float [ %7351, %7329 ], [ %7121, %7097 ]
  %7396 = phi float [ %7352, %7329 ], [ %7122, %7097 ]
  %7397 = phi float [ %7353, %7329 ], [ %7098, %7097 ]
  %7398 = phi float [ %7354, %7329 ], [ %7099, %7097 ]
  %7399 = phi float [ %7355, %7329 ], [ %7100, %7097 ]
  %7400 = phi float [ %7330, %7329 ], [ 1.000000e+00, %7097 ]
  br i1 %7129, label %8555, label %7401

; <label>:7401                                    ; preds = %7389
  %7402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7403 = extractvalue %dx.types.CBufRet.f32 %7402, 0
  %7404 = extractvalue %dx.types.CBufRet.f32 %7402, 1
  %7405 = extractvalue %dx.types.CBufRet.f32 %7402, 2
  %7406 = extractvalue %dx.types.CBufRet.f32 %7402, 3
  %7407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7408 = extractvalue %dx.types.CBufRet.f32 %7407, 0
  %7409 = extractvalue %dx.types.CBufRet.f32 %7407, 1
  %7410 = extractvalue %dx.types.CBufRet.f32 %7407, 2
  %7411 = extractvalue %dx.types.CBufRet.f32 %7407, 3
  %7412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7413 = extractvalue %dx.types.CBufRet.f32 %7412, 0
  %7414 = extractvalue %dx.types.CBufRet.f32 %7412, 1
  %7415 = extractvalue %dx.types.CBufRet.f32 %7412, 2
  %7416 = extractvalue %dx.types.CBufRet.f32 %7412, 3
  %7417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7418 = extractvalue %dx.types.CBufRet.f32 %7417, 0
  %7419 = extractvalue %dx.types.CBufRet.f32 %7417, 1
  %7420 = extractvalue %dx.types.CBufRet.f32 %7417, 2
  %7421 = extractvalue %dx.types.CBufRet.f32 %7417, 3
  %7422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7423 = extractvalue %dx.types.CBufRet.f32 %7422, 3
  %7424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7425 = extractvalue %dx.types.CBufRet.f32 %7424, 3
  %7426 = extractvalue %dx.types.CBufRet.f32 %7424, 0
  %7427 = extractvalue %dx.types.CBufRet.f32 %7424, 1
  %7428 = extractvalue %dx.types.CBufRet.f32 %7424, 2
  %7429 = fcmp fast olt float %7428, -5.000000e-01
  %7430 = call float @dx.op.dot3.f32(i32 55, float %7390, float %7391, float %7392, float %7390, float %7391, float %7392)  ; Dot3(ax,ay,az,bx,by,bz)
  %7431 = call float @dx.op.unary.f32(i32 25, float %7430)  ; Rsqrt(value)
  %7432 = fmul fast float %7431, %7430
  %7433 = fmul fast float %7431, %7390
  %7434 = fmul fast float %7431, %7391
  %7435 = fmul fast float %7431, %7392
  %7436 = fadd fast float %7432, %7406
  %7437 = call float @dx.op.dot3.f32(i32 55, float %7433, float %7434, float %7435, float %7403, float %7404, float %7405)  ; Dot3(ax,ay,az,bx,by,bz)
  %7438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7439 = extractvalue %dx.types.CBufRet.i32 %7438, 1
  %7440 = and i32 %7439, 1
  %7441 = icmp ne i32 %7440, 0
  %7442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7443 = extractvalue %dx.types.CBufRet.f32 %7442, 2
  %7444 = fcmp fast ogt float %7443, 0.000000e+00
  %7445 = and i1 %7441, %7444
  br i1 %7445, label %7446, label %7852, !dx.controlflow.hints !149

; <label>:7446                                    ; preds = %7401
  %7447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7448 = extractvalue %dx.types.CBufRet.f32 %7447, 3
  %7449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7450 = extractvalue %dx.types.CBufRet.f32 %7449, 2
  %7451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7452 = extractvalue %dx.types.CBufRet.f32 %7451, 2
  %7453 = fsub fast float %7450, %7452
  %7454 = and i32 %7439, 2
  %7455 = extractvalue %dx.types.CBufRet.i32 %7438, 0
  %7456 = call i32 @dx.op.binary.i32(i32 40, i32 %7455, i32 3)  ; UMin(a,b)
  %7457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7458 = extractvalue %dx.types.CBufRet.f32 %7457, 0
  %7459 = extractvalue %dx.types.CBufRet.f32 %7457, 1
  %7460 = extractvalue %dx.types.CBufRet.f32 %7451, 0
  %7461 = extractvalue %dx.types.CBufRet.f32 %7451, 1
  %7462 = fsub fast float %7458, %7460
  %7463 = fsub fast float %7459, %7461
  %7464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7465 = extractvalue %dx.types.CBufRet.f32 %7464, 0
  %7466 = fcmp fast ogt float %7465, 0.000000e+00
  %7467 = fsub fast float -0.000000e+00, %7462
  %7468 = fsub fast float -0.000000e+00, %7463
  %7469 = call float @dx.op.dot2.f32(i32 54, float %7433, float %7434, float %7433, float %7434)  ; Dot2(ax,ay,bx,by)
  %7470 = call float @dx.op.dot2.f32(i32 54, float %7433, float %7434, float %7467, float %7468)  ; Dot2(ax,ay,bx,by)
  %7471 = fmul fast float %7470, 2.000000e+00
  %7472 = call float @dx.op.dot2.f32(i32 54, float %7467, float %7468, float %7467, float %7468)  ; Dot2(ax,ay,bx,by)
  %7473 = fmul fast float %7465, %7465
  %7474 = fsub fast float %7472, %7473
  %7475 = fmul fast float %7471, %7471
  %7476 = fmul fast float %7469, 4.000000e+00
  %7477 = fmul fast float %7476, %7474
  %7478 = fsub fast float %7475, %7477
  %7479 = fcmp fast ogt float %7478, 0.000000e+00
  br i1 %7479, label %7480, label %7495

; <label>:7480                                    ; preds = %7446
  %7481 = fcmp fast ogt float %7471, 0.000000e+00
  %7482 = call float @dx.op.unary.f32(i32 24, float %7478)  ; Sqrt(value)
  %7483 = fsub fast float -0.000000e+00, %7482
  %7484 = select i1 %7481, float %7482, float %7483
  %7485 = fadd fast float %7484, %7471
  %7486 = fmul float %7485, -5.000000e-01
  %7487 = fdiv fast float %7486, %7469
  %7488 = call float @dx.op.binary.f32(i32 35, float %7487, float 0.000000e+00)  ; FMax(a,b)
  %7489 = call float @dx.op.binary.f32(i32 36, float %7432, float %7488)  ; FMin(a,b)
  %7490 = fdiv fast float %7474, %7486
  %7491 = call float @dx.op.binary.f32(i32 35, float %7490, float 0.000000e+00)  ; FMax(a,b)
  %7492 = call float @dx.op.binary.f32(i32 36, float %7432, float %7491)  ; FMin(a,b)
  %7493 = call float @dx.op.binary.f32(i32 36, float %7489, float %7492)  ; FMin(a,b)
  %7494 = call float @dx.op.binary.f32(i32 35, float %7489, float %7492)  ; FMax(a,b)
  br label %7495

; <label>:7495                                    ; preds = %7480, %7446
  %7496 = phi float [ %7494, %7480 ], [ -1.000000e+00, %7446 ]
  %7497 = phi float [ %7493, %7480 ], [ -1.000000e+00, %7446 ]
  %7498 = phi i1 [ true, %7480 ], [ false, %7446 ]
  %7499 = and i1 %7466, %7498
  br i1 %7499, label %7500, label %7502

; <label>:7500                                    ; preds = %7495
  %7501 = fcmp fast oeq float %7497, %7496
  br i1 %7501, label %7805, label %7503

; <label>:7502                                    ; preds = %7495
  br i1 %7466, label %7805, label %7503

; <label>:7503                                    ; preds = %7502, %7500
  %7504 = phi float [ %7432, %7502 ], [ %7496, %7500 ]
  %7505 = phi float [ 0.000000e+00, %7502 ], [ %7497, %7500 ]
  %7506 = icmp ne i32 %7454, 0
  %7507 = fmul fast float %7504, %7435
  %7508 = fadd fast float %7507, %7448
  %7509 = fmul fast float %7508, %7504
  %7510 = select i1 %7506, float 0.000000e+00, float %7509
  %7511 = fcmp fast oeq float %7435, 0.000000e+00
  %7512 = fdiv fast float %7453, %7435
  %7513 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7512)  ; FMax(a,b)
  %7514 = select i1 %7511, float %7504, float %7513
  %7515 = call float @dx.op.binary.f32(i32 36, float %7504, float %7514)  ; FMin(a,b)
  %7516 = fcmp fast ogt float %7435, 0.000000e+00
  %7517 = fcmp fast olt float %7453, 0.000000e+00
  br i1 %7516, label %7518, label %7575

; <label>:7518                                    ; preds = %7503
  %7519 = icmp eq i32 %7454, 0
  br i1 %7517, label %7520, label %7564

; <label>:7520                                    ; preds = %7518
  %7521 = select i1 %7519, float %7504, float 0.000000e+00
  %7522 = fsub fast float -0.000000e+00, %7521
  %7523 = call float @dx.op.unary.f32(i32 6, float %7522)  ; FAbs(value)
  %7524 = fmul fast float %7521, %7435
  %7525 = fadd fast float %7524, %7448
  %7526 = fmul fast float %7523, %7525
  %7527 = fsub fast float %7510, %7526
  %7528 = fsub fast float %7504, %7523
  %7529 = select i1 %7519, float %7528, float 0.000000e+00
  %7530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7531 = extractvalue %dx.types.CBufRet.f32 %7530, 0
  %7532 = extractvalue %dx.types.CBufRet.f32 %7530, 1
  %7533 = extractvalue %dx.types.CBufRet.f32 %7530, 2
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 0
  %7536 = extractvalue %dx.types.CBufRet.f32 %7534, 1
  %7537 = extractvalue %dx.types.CBufRet.f32 %7534, 2
  %7538 = extractvalue %dx.types.CBufRet.f32 %7534, 3
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 3
  %7541 = call float @dx.op.binary.f32(i32 36, float %7527, float %7540)  ; FMin(a,b)
  %7542 = fmul fast float %7538, %7529
  %7543 = call float @dx.op.unary.f32(i32 7, float %7542)  ; Saturate(value)
  %7544 = fsub fast float %7535, %7531
  %7545 = fsub fast float %7536, %7532
  %7546 = fsub fast float %7537, %7533
  %7547 = fmul fast float %7543, %7544
  %7548 = fmul fast float %7543, %7545
  %7549 = fmul fast float %7543, %7546
  %7550 = fadd fast float %7547, %7531
  %7551 = fadd fast float %7548, %7532
  %7552 = fadd fast float %7549, %7533
  %7553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.f32 %7553, 0
  %7555 = extractvalue %dx.types.CBufRet.f32 %7553, 1
  %7556 = fadd fast float %7555, %7554
  %7557 = call float @dx.op.unary.f32(i32 7, float %7556)  ; Saturate(value)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7553, 2
  %7559 = extractvalue %dx.types.CBufRet.f32 %7553, 3
  %7560 = fadd fast float %7559, %7558
  %7561 = call float @dx.op.unary.f32(i32 7, float %7560)  ; Saturate(value)
  %7562 = fmul fast float %7557, %7541
  %7563 = fmul fast float %7562, %7561
  br label %7805

; <label>:7564                                    ; preds = %7518
  br i1 %7519, label %7565, label %7586

; <label>:7565                                    ; preds = %7564
  %7566 = call float @dx.op.binary.f32(i32 36, float %7515, float %7505)  ; FMin(a,b)
  %7567 = fsub fast float %7515, %7566
  %7568 = fsub fast float %7567, %7504
  %7569 = call float @dx.op.unary.f32(i32 6, float %7568)  ; FAbs(value)
  %7570 = fadd fast float %7567, %7504
  %7571 = fmul fast float %7570, %7435
  %7572 = fadd fast float %7571, %7448
  %7573 = fmul fast float %7572, %7569
  %7574 = fsub fast float %7510, %7573
  br label %7586

; <label>:7575                                    ; preds = %7503
  br i1 %7517, label %7576, label %7586

; <label>:7576                                    ; preds = %7575
  %7577 = call float @dx.op.binary.f32(i32 35, float %7505, float %7515)  ; FMax(a,b)
  %7578 = icmp eq i32 %7454, 0
  %7579 = select i1 %7578, float %7515, float 0.000000e+00
  %7580 = fsub fast float -0.000000e+00, %7579
  %7581 = call float @dx.op.unary.f32(i32 6, float %7580)  ; FAbs(value)
  %7582 = fmul fast float %7579, %7435
  %7583 = fadd fast float %7582, %7448
  %7584 = fmul fast float %7581, %7583
  %7585 = fsub fast float %7510, %7584
  br label %7586

; <label>:7586                                    ; preds = %7576, %7575, %7565, %7564
  %7587 = phi float [ %7505, %7564 ], [ %7505, %7565 ], [ %7577, %7576 ], [ %7505, %7575 ]
  %7588 = phi float [ 0.000000e+00, %7564 ], [ %7569, %7565 ], [ %7581, %7576 ], [ 0.000000e+00, %7575 ]
  %7589 = phi float [ %7510, %7564 ], [ %7574, %7565 ], [ %7585, %7576 ], [ %7510, %7575 ]
  %7590 = phi float [ %7515, %7564 ], [ %7515, %7565 ], [ %7504, %7576 ], [ %7504, %7575 ]
  %7591 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %7591, align 4, !tbaa !136, !noalias !150
  %7592 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %7592, align 4, !tbaa !136, !noalias !150
  %7593 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %7593, align 4, !tbaa !136, !noalias !150
  %7594 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %7594, align 4, !tbaa !136, !noalias !150
  %7595 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %7595, align 4, !tbaa !136, !noalias !150
  %7596 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %7596, align 4, !tbaa !136, !noalias !150
  %7597 = icmp sgt i32 %7456, 0
  br i1 %7597, label %7598, label %7659

; <label>:7598                                    ; preds = %7586
  br label %7599

; <label>:7599                                    ; preds = %7648, %7598
  %7600 = phi i32 [ %7649, %7648 ], [ 0, %7598 ]
  %7601 = phi i32 [ %7650, %7648 ], [ 0, %7598 ]
  %7602 = add nuw i32 %7601, 171
  %7603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %7602)  ; CBufferLoadLegacy(handle,regIndex)
  %7604 = extractvalue %dx.types.CBufRet.f32 %7603, 0
  %7605 = extractvalue %dx.types.CBufRet.f32 %7603, 1
  %7606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7607 = extractvalue %dx.types.CBufRet.f32 %7606, 0
  %7608 = extractvalue %dx.types.CBufRet.f32 %7606, 1
  %7609 = fsub fast float %7604, %7607
  %7610 = fsub fast float %7605, %7608
  %7611 = extractvalue %dx.types.CBufRet.f32 %7603, 2
  %7612 = fsub fast float -0.000000e+00, %7609
  %7613 = fsub fast float -0.000000e+00, %7610
  %7614 = call float @dx.op.dot2.f32(i32 54, float %7433, float %7434, float %7612, float %7613)  ; Dot2(ax,ay,bx,by)
  %7615 = fmul fast float %7614, 2.000000e+00
  %7616 = call float @dx.op.dot2.f32(i32 54, float %7612, float %7613, float %7612, float %7613)  ; Dot2(ax,ay,bx,by)
  %7617 = fmul fast float %7611, %7611
  %7618 = fsub fast float %7616, %7617
  %7619 = fmul fast float %7615, %7615
  %7620 = fmul fast float %7476, %7618
  %7621 = fsub fast float %7619, %7620
  %7622 = fcmp fast ogt float %7621, 0.000000e+00
  br i1 %7622, label %7623, label %7638

; <label>:7623                                    ; preds = %7599
  %7624 = fcmp fast ogt float %7615, 0.000000e+00
  %7625 = call float @dx.op.unary.f32(i32 24, float %7621)  ; Sqrt(value)
  %7626 = fsub fast float -0.000000e+00, %7625
  %7627 = select i1 %7624, float %7625, float %7626
  %7628 = fadd fast float %7627, %7615
  %7629 = fmul float %7628, -5.000000e-01
  %7630 = fdiv fast float %7629, %7469
  %7631 = call float @dx.op.binary.f32(i32 35, float %7630, float 0.000000e+00)  ; FMax(a,b)
  %7632 = call float @dx.op.binary.f32(i32 36, float %7504, float %7631)  ; FMin(a,b)
  %7633 = fdiv fast float %7618, %7629
  %7634 = call float @dx.op.binary.f32(i32 35, float %7633, float 0.000000e+00)  ; FMax(a,b)
  %7635 = call float @dx.op.binary.f32(i32 36, float %7504, float %7634)  ; FMin(a,b)
  %7636 = call float @dx.op.binary.f32(i32 36, float %7632, float %7635)  ; FMin(a,b)
  %7637 = call float @dx.op.binary.f32(i32 35, float %7632, float %7635)  ; FMax(a,b)
  br label %7638

; <label>:7638                                    ; preds = %7623, %7599
  %7639 = phi float [ %7637, %7623 ], [ -1.000000e+00, %7599 ]
  %7640 = phi float [ %7636, %7623 ], [ -1.000000e+00, %7599 ]
  %7641 = phi i1 [ true, %7623 ], [ false, %7599 ]
  br i1 %7641, label %7642, label %7648

; <label>:7642                                    ; preds = %7638
  %7643 = call float @dx.op.binary.f32(i32 35, float %7587, float %7640)  ; FMax(a,b)
  %7644 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7601
  store float %7643, float* %7644, align 4, !tbaa !136, !noalias !150
  %7645 = call float @dx.op.binary.f32(i32 35, float %7587, float %7639)  ; FMax(a,b)
  %7646 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7601
  store float %7645, float* %7646, align 4, !tbaa !136, !noalias !150
  %7647 = add nsw i32 %7600, 1
  br label %7648

; <label>:7648                                    ; preds = %7642, %7638
  %7649 = phi i32 [ %7647, %7642 ], [ %7600, %7638 ]
  %7650 = add nuw nsw i32 %7601, 1
  %7651 = icmp eq i32 %7650, %7456
  br i1 %7651, label %7652, label %7599

; <label>:7652                                    ; preds = %7648
  %7653 = load float, float* %7593, align 4, !tbaa !136, !alias.scope !166, !noalias !169
  %7654 = load float, float* %7592, align 4, !tbaa !136, !alias.scope !172, !noalias !173
  %7655 = load float, float* %7591, align 4, !tbaa !136, !alias.scope !174, !noalias !175
  %7656 = load float, float* %7596, align 4, !tbaa !136, !alias.scope !176, !noalias !179
  %7657 = load float, float* %7595, align 4, !tbaa !136, !alias.scope !182, !noalias !183
  %7658 = load float, float* %7594, align 4, !tbaa !136, !alias.scope !184, !noalias !185
  br label %7659

; <label>:7659                                    ; preds = %7652, %7586
  %7660 = phi float [ -1.000000e+00, %7586 ], [ %7658, %7652 ]
  %7661 = phi float [ -1.000000e+00, %7586 ], [ %7657, %7652 ]
  %7662 = phi float [ -1.000000e+00, %7586 ], [ %7656, %7652 ]
  %7663 = phi float [ -1.000000e+00, %7586 ], [ %7655, %7652 ]
  %7664 = phi float [ -1.000000e+00, %7586 ], [ %7654, %7652 ]
  %7665 = phi float [ -1.000000e+00, %7586 ], [ %7653, %7652 ]
  %7666 = phi i32 [ 0, %7586 ], [ %7649, %7652 ]
  %7667 = call float @dx.op.binary.f32(i32 36, float %7664, float %7665)  ; FMin(a,b)
  %7668 = call float @dx.op.binary.f32(i32 36, float %7663, float %7667)  ; FMin(a,b)
  %7669 = call float @dx.op.binary.f32(i32 35, float %7663, float %7664)  ; FMax(a,b)
  %7670 = call float @dx.op.binary.f32(i32 36, float %7669, float %7665)  ; FMin(a,b)
  %7671 = call float @dx.op.binary.f32(i32 36, float %7663, float %7664)  ; FMin(a,b)
  %7672 = call float @dx.op.binary.f32(i32 35, float %7671, float %7670)  ; FMax(a,b)
  %7673 = call float @dx.op.binary.f32(i32 35, float %7664, float %7665)  ; FMax(a,b)
  %7674 = call float @dx.op.binary.f32(i32 35, float %7663, float %7673)  ; FMax(a,b)
  store float %7668, float* %7591, align 4, !tbaa !136, !alias.scope !174, !noalias !175
  store float %7672, float* %7592, align 4, !tbaa !136, !alias.scope !172, !noalias !173
  store float %7674, float* %7593, align 4, !tbaa !136, !alias.scope !166, !noalias !169
  %7675 = call float @dx.op.binary.f32(i32 36, float %7661, float %7662)  ; FMin(a,b)
  %7676 = call float @dx.op.binary.f32(i32 36, float %7660, float %7675)  ; FMin(a,b)
  %7677 = call float @dx.op.binary.f32(i32 35, float %7660, float %7661)  ; FMax(a,b)
  %7678 = call float @dx.op.binary.f32(i32 36, float %7677, float %7662)  ; FMin(a,b)
  %7679 = call float @dx.op.binary.f32(i32 36, float %7660, float %7661)  ; FMin(a,b)
  %7680 = call float @dx.op.binary.f32(i32 35, float %7679, float %7678)  ; FMax(a,b)
  %7681 = call float @dx.op.binary.f32(i32 35, float %7661, float %7662)  ; FMax(a,b)
  %7682 = call float @dx.op.binary.f32(i32 35, float %7660, float %7681)  ; FMax(a,b)
  store float %7676, float* %7594, align 4, !tbaa !136, !alias.scope !184, !noalias !185
  store float %7680, float* %7595, align 4, !tbaa !136, !alias.scope !182, !noalias !183
  store float %7682, float* %7596, align 4, !tbaa !136, !alias.scope !176, !noalias !179
  %7683 = sub nsw i32 3, %7666
  %7684 = icmp sgt i32 %7683, 2
  br i1 %7684, label %7685, label %7723

; <label>:7685                                    ; preds = %7659
  %7686 = icmp eq i32 %7454, 0
  %7687 = fsub fast float %7504, %7588
  %7688 = select i1 %7686, float %7687, float %7588
  %7689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7690 = extractvalue %dx.types.CBufRet.f32 %7689, 0
  %7691 = extractvalue %dx.types.CBufRet.f32 %7689, 1
  %7692 = extractvalue %dx.types.CBufRet.f32 %7689, 2
  %7693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7694 = extractvalue %dx.types.CBufRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.CBufRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.CBufRet.f32 %7693, 2
  %7697 = extractvalue %dx.types.CBufRet.f32 %7693, 3
  %7698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7699 = extractvalue %dx.types.CBufRet.f32 %7698, 3
  %7700 = call float @dx.op.binary.f32(i32 36, float %7589, float %7699)  ; FMin(a,b)
  %7701 = fmul fast float %7697, %7688
  %7702 = call float @dx.op.unary.f32(i32 7, float %7701)  ; Saturate(value)
  %7703 = fsub fast float %7694, %7690
  %7704 = fsub fast float %7695, %7691
  %7705 = fsub fast float %7696, %7692
  %7706 = fmul fast float %7702, %7703
  %7707 = fmul fast float %7702, %7704
  %7708 = fmul fast float %7702, %7705
  %7709 = fadd fast float %7706, %7690
  %7710 = fadd fast float %7707, %7691
  %7711 = fadd fast float %7708, %7692
  %7712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7713 = extractvalue %dx.types.CBufRet.f32 %7712, 0
  %7714 = extractvalue %dx.types.CBufRet.f32 %7712, 1
  %7715 = fadd fast float %7714, %7713
  %7716 = call float @dx.op.unary.f32(i32 7, float %7715)  ; Saturate(value)
  %7717 = extractvalue %dx.types.CBufRet.f32 %7712, 2
  %7718 = extractvalue %dx.types.CBufRet.f32 %7712, 3
  %7719 = fadd fast float %7718, %7717
  %7720 = call float @dx.op.unary.f32(i32 7, float %7719)  ; Saturate(value)
  %7721 = fmul fast float %7716, %7700
  %7722 = fmul fast float %7721, %7720
  br label %7805

; <label>:7723                                    ; preds = %7659
  %7724 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7683
  %7725 = load float, float* %7724, align 4, !tbaa !136, !noalias !150
  %7726 = fcmp fast olt float %7725, %7590
  %7727 = icmp sgt i32 %7666, 0
  %7728 = and i1 %7727, %7726
  br i1 %7728, label %7729, label %7766

; <label>:7729                                    ; preds = %7723
  br label %7730

; <label>:7730                                    ; preds = %7759, %7729
  %7731 = phi float [ %7760, %7759 ], [ %7588, %7729 ]
  %7732 = phi float [ %7761, %7759 ], [ %7589, %7729 ]
  %7733 = phi float [ %7741, %7759 ], [ %7725, %7729 ]
  %7734 = phi i32 [ %7738, %7759 ], [ %7683, %7729 ]
  %7735 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %7734
  %7736 = load float, float* %7735, align 4, !tbaa !136, !noalias !150
  %7737 = icmp slt i32 %7734, 2
  %7738 = add nsw i32 %7734, 1
  %7739 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7738
  %7740 = load float, float* %7739, align 4, !tbaa !136, !noalias !150
  %7741 = select i1 %7737, float %7740, float %7504
  %7742 = call float @dx.op.binary.f32(i32 36, float %7741, float %7736)  ; FMin(a,b)
  %7743 = call float @dx.op.binary.f32(i32 36, float %7590, float %7742)  ; FMin(a,b)
  %7744 = icmp eq i32 %7454, 0
  %7745 = fadd fast float %7743, %7733
  %7746 = fmul fast float %7745, %7435
  %7747 = fadd fast float %7746, %7448
  br i1 %7744, label %7753, label %7748

; <label>:7748                                    ; preds = %7730
  %7749 = fsub fast float %7743, %7733
  %7750 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7749)  ; FMax(a,b)
  %7751 = fmul fast float %7750, %7747
  %7752 = fadd fast float %7751, %7732
  br label %7759

; <label>:7753                                    ; preds = %7730
  %7754 = fsub fast float %7733, %7743
  %7755 = call float @dx.op.unary.f32(i32 6, float %7754)  ; FAbs(value)
  %7756 = fadd fast float %7755, %7731
  %7757 = fmul fast float %7755, %7747
  %7758 = fsub fast float %7732, %7757
  br label %7759

; <label>:7759                                    ; preds = %7753, %7748
  %7760 = phi float [ %7750, %7748 ], [ %7756, %7753 ]
  %7761 = phi float [ %7752, %7748 ], [ %7758, %7753 ]
  %7762 = fcmp fast olt float %7741, %7590
  %7763 = icmp slt i32 %7738, 3
  %7764 = and i1 %7763, %7762
  br i1 %7764, label %7730, label %7765

; <label>:7765                                    ; preds = %7759
  br label %7766

; <label>:7766                                    ; preds = %7765, %7723
  %7767 = phi float [ %7588, %7723 ], [ %7760, %7765 ]
  %7768 = phi float [ %7589, %7723 ], [ %7761, %7765 ]
  %7769 = fsub fast float %7504, %7767
  %7770 = select i1 %7506, float %7767, float %7769
  %7771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7772 = extractvalue %dx.types.CBufRet.f32 %7771, 0
  %7773 = extractvalue %dx.types.CBufRet.f32 %7771, 1
  %7774 = extractvalue %dx.types.CBufRet.f32 %7771, 2
  %7775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7776 = extractvalue %dx.types.CBufRet.f32 %7775, 0
  %7777 = extractvalue %dx.types.CBufRet.f32 %7775, 1
  %7778 = extractvalue %dx.types.CBufRet.f32 %7775, 2
  %7779 = extractvalue %dx.types.CBufRet.f32 %7775, 3
  %7780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7781 = extractvalue %dx.types.CBufRet.f32 %7780, 3
  %7782 = call float @dx.op.binary.f32(i32 36, float %7768, float %7781)  ; FMin(a,b)
  %7783 = fmul fast float %7779, %7770
  %7784 = call float @dx.op.unary.f32(i32 7, float %7783)  ; Saturate(value)
  %7785 = fsub fast float %7776, %7772
  %7786 = fsub fast float %7777, %7773
  %7787 = fsub fast float %7778, %7774
  %7788 = fmul fast float %7784, %7785
  %7789 = fmul fast float %7784, %7786
  %7790 = fmul fast float %7784, %7787
  %7791 = fadd fast float %7788, %7772
  %7792 = fadd fast float %7789, %7773
  %7793 = fadd fast float %7790, %7774
  %7794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7795 = extractvalue %dx.types.CBufRet.f32 %7794, 0
  %7796 = extractvalue %dx.types.CBufRet.f32 %7794, 1
  %7797 = fadd fast float %7796, %7795
  %7798 = call float @dx.op.unary.f32(i32 7, float %7797)  ; Saturate(value)
  %7799 = extractvalue %dx.types.CBufRet.f32 %7794, 2
  %7800 = extractvalue %dx.types.CBufRet.f32 %7794, 3
  %7801 = fadd fast float %7800, %7799
  %7802 = call float @dx.op.unary.f32(i32 7, float %7801)  ; Saturate(value)
  %7803 = fmul fast float %7798, %7782
  %7804 = fmul fast float %7803, %7802
  br label %7805

; <label>:7805                                    ; preds = %7766, %7685, %7520, %7502, %7500
  %7806 = phi float [ %7529, %7520 ], [ %7688, %7685 ], [ %7770, %7766 ], [ 0.000000e+00, %7500 ], [ 0.000000e+00, %7502 ]
  %7807 = phi float [ %7563, %7520 ], [ %7722, %7685 ], [ %7804, %7766 ], [ 0.000000e+00, %7500 ], [ 0.000000e+00, %7502 ]
  %7808 = phi float [ %7550, %7520 ], [ %7709, %7685 ], [ %7791, %7766 ], [ 0.000000e+00, %7500 ], [ 0.000000e+00, %7502 ]
  %7809 = phi float [ %7551, %7520 ], [ %7710, %7685 ], [ %7792, %7766 ], [ 0.000000e+00, %7500 ], [ 0.000000e+00, %7502 ]
  %7810 = phi float [ %7552, %7520 ], [ %7711, %7685 ], [ %7793, %7766 ], [ 0.000000e+00, %7500 ], [ 0.000000e+00, %7502 ]
  %7811 = fmul fast float %7443, %7807
  %7812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7813 = extractvalue %dx.types.CBufRet.f32 %7812, 2
  %7814 = fsub fast float %7450, %7813
  %7815 = fcmp fast olt float %7811, -2.000000e+01
  %7816 = call float @dx.op.unary.f32(i32 21, float %7811)  ; Exp(value)
  %7817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7818 = extractvalue %dx.types.CBufRet.f32 %7817, 2
  %7819 = extractvalue %dx.types.CBufRet.f32 %7817, 3
  %7820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7821 = extractvalue %dx.types.CBufRet.f32 %7820, 2
  %7822 = fmul fast float %7819, %7814
  %7823 = call float @dx.op.unary.f32(i32 7, float %7822)  ; Saturate(value)
  %7824 = fsub fast float 1.000000e+00, %7823
  %7825 = fmul fast float %7435, 5.000000e-01
  %7826 = fadd fast float %7825, 5.000000e-01
  %7827 = call float @dx.op.unary.f32(i32 7, float %7826)  ; Saturate(value)
  %7828 = fsub fast float 1.000000e+00, %7827
  %7829 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7824)  ; FMax(a,b)
  %7830 = fdiv fast float %7828, %7829
  %7831 = fsub fast float %7814, %7392
  %7832 = call float @dx.op.unary.f32(i32 6, float %7831)  ; FAbs(value)
  %7833 = fmul fast float %7832, %7818
  %7834 = call float @dx.op.unary.f32(i32 7, float %7830)  ; Saturate(value)
  %7835 = fsub fast float 1.000000e+00, %7833
  %7836 = fmul fast float %7835, %7834
  %7837 = fadd fast float %7836, %7833
  %7838 = fmul fast float %7821, %7814
  %7839 = call float @dx.op.unary.f32(i32 7, float %7838)  ; Saturate(value)
  %7840 = fsub fast float 1.000000e+00, %7837
  %7841 = fmul fast float %7840, %7839
  %7842 = fadd fast float %7841, %7837
  %7843 = call float @dx.op.unary.f32(i32 7, float %7842)  ; Saturate(value)
  %7844 = fadd fast float %7816, -1.000000e+00
  %7845 = select i1 %7815, float -1.000000e+00, float %7844
  %7846 = fmul fast float %7843, %7845
  %7847 = fadd fast float %7846, 1.000000e+00
  %7848 = fsub fast float -0.000000e+00, %7846
  %7849 = fmul fast float %7808, %7848
  %7850 = fmul fast float %7809, %7848
  %7851 = fmul fast float %7810, %7848
  br label %7852

; <label>:7852                                    ; preds = %7805, %7401
  %7853 = phi float [ %7806, %7805 ], [ 0.000000e+00, %7401 ]
  %7854 = phi float [ %7847, %7805 ], [ 1.000000e+00, %7401 ]
  %7855 = phi float [ %7849, %7805 ], [ 0.000000e+00, %7401 ]
  %7856 = phi float [ %7850, %7805 ], [ 0.000000e+00, %7401 ]
  %7857 = phi float [ %7851, %7805 ], [ 0.000000e+00, %7401 ]
  %7858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7859 = extractvalue %dx.types.CBufRet.f32 %7858, 1
  %7860 = fsub fast float 1.000000e+00, %7854
  %7861 = fmul fast float %7860, %7436
  %7862 = fmul fast float %7861, %7859
  %7863 = fsub fast float %7436, %7862
  br i1 %7429, label %7864, label %7893, !dx.controlflow.hints !186

; <label>:7864                                    ; preds = %7852
  %7865 = fmul fast float %7437, %7426
  %7866 = fadd fast float %7865, %7427
  %7867 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7868 = fmul fast float %7408, %7863
  %7869 = fsub fast float -0.000000e+00, %7868
  %7870 = fmul fast float %7409, %7863
  %7871 = fsub fast float -0.000000e+00, %7870
  %7872 = call float @dx.op.unary.f32(i32 21, float %7869)  ; Exp(value)
  %7873 = call float @dx.op.unary.f32(i32 21, float %7871)  ; Exp(value)
  %7874 = call float @dx.op.binary.f32(i32 35, float %7416, float %7872)  ; FMax(a,b)
  %7875 = call float @dx.op.binary.f32(i32 35, float %7416, float %7873)  ; FMax(a,b)
  %7876 = fsub fast float %7875, %7874
  %7877 = fmul fast float %7876, %7867
  %7878 = fadd fast float %7877, %7874
  %7879 = call float @dx.op.unary.f32(i32 7, float %7878)  ; Saturate(value)
  %7880 = fsub fast float %7413, %7418
  %7881 = fsub fast float %7414, %7419
  %7882 = fsub fast float %7415, %7420
  %7883 = fmul fast float %7867, %7880
  %7884 = fmul fast float %7867, %7881
  %7885 = fmul fast float %7867, %7882
  %7886 = fadd fast float %7883, %7418
  %7887 = fadd fast float %7884, %7419
  %7888 = fadd fast float %7885, %7420
  %7889 = fsub fast float 1.000000e+00, %7879
  %7890 = fmul fast float %7889, %7886
  %7891 = fmul fast float %7889, %7887
  %7892 = fmul fast float %7889, %7888
  br label %7952

; <label>:7893                                    ; preds = %7852
  %7894 = fmul fast float %7863, %7425
  %7895 = call float @dx.op.unary.f32(i32 7, float %7894)  ; Saturate(value)
  %7896 = fsub fast float 2.000000e+00, %7895
  %7897 = fmul fast float %7895, 9.921875e-01
  %7898 = fmul fast float %7897, %7896
  %7899 = fadd fast float %7898, 3.906250e-03
  %7900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7899, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7901 = extractvalue %dx.types.ResRet.f32 %7900, 0
  %7902 = fsub fast float %7895, %7901
  %7903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7902)  ; FMax(a,b)
  %7904 = fmul fast float %7411, %7392
  %7905 = call float @dx.op.unary.f32(i32 6, float %7904)  ; FAbs(value)
  %7906 = fcmp fast ogt float %7905, 0x3EB0C6F7A0000000
  br i1 %7906, label %7907, label %7913, !dx.controlflow.hints !187

; <label>:7907                                    ; preds = %7893
  %7908 = fmul fast float %7904, 0xBFF7154760000000
  %7909 = call float @dx.op.unary.f32(i32 21, float %7908)  ; Exp(value)
  %7910 = fsub fast float 1.000000e+00, %7909
  %7911 = fdiv fast float %7910, %7904
  %7912 = fmul fast float %7911, %7421
  br label %7913

; <label>:7913                                    ; preds = %7907, %7893
  %7914 = phi float [ %7912, %7907 ], [ %7421, %7893 ]
  %7915 = fadd fast float %7914, %7423
  %7916 = fmul fast float %7915, %7903
  %7917 = fmul fast float %7408, %7916
  %7918 = fsub fast float -0.000000e+00, %7917
  %7919 = fmul fast float %7409, %7916
  %7920 = fsub fast float -0.000000e+00, %7919
  %7921 = fmul fast float %7410, %7916
  %7922 = fsub fast float -0.000000e+00, %7921
  %7923 = call float @dx.op.unary.f32(i32 21, float %7918)  ; Exp(value)
  %7924 = call float @dx.op.unary.f32(i32 21, float %7920)  ; Exp(value)
  %7925 = call float @dx.op.unary.f32(i32 21, float %7922)  ; Exp(value)
  %7926 = fmul fast float %7437, %7437
  %7927 = fadd fast float %7926, 1.000000e+00
  %7928 = fmul fast float %7927, 0x3FAE8EC8A0000000
  %7929 = fmul fast float %7928, %7418
  %7930 = fmul fast float %7928, %7419
  %7931 = fmul fast float %7928, %7420
  %7932 = fmul fast float %7437, %7416
  %7933 = fsub fast float 1.000000e+00, %7932
  %7934 = fmul fast float %7416, %7416
  %7935 = fsub fast float 1.000000e+00, %7934
  %7936 = fmul fast float %7935, 0x3FB45F3060000000
  %7937 = fmul fast float %7933, %7933
  %7938 = fdiv fast float 1.000000e+00, %7937
  %7939 = fmul fast float %7936, %7938
  %7940 = fmul fast float %7939, %7413
  %7941 = fmul fast float %7939, %7414
  %7942 = fmul fast float %7939, %7415
  %7943 = fadd fast float %7940, %7929
  %7944 = fadd fast float %7941, %7930
  %7945 = fadd fast float %7942, %7931
  %7946 = fsub fast float 1.000000e+00, %7923
  %7947 = fsub fast float 1.000000e+00, %7924
  %7948 = fsub fast float 1.000000e+00, %7925
  %7949 = fmul fast float %7943, %7946
  %7950 = fmul fast float %7944, %7947
  %7951 = fmul fast float %7945, %7948
  br label %7952

; <label>:7952                                    ; preds = %7913, %7864
  %7953 = phi float [ %7890, %7864 ], [ %7949, %7913 ]
  %7954 = phi float [ %7891, %7864 ], [ %7950, %7913 ]
  %7955 = phi float [ %7892, %7864 ], [ %7951, %7913 ]
  %7956 = phi float [ %7879, %7864 ], [ %7923, %7913 ]
  %7957 = phi float [ %7879, %7864 ], [ %7924, %7913 ]
  %7958 = phi float [ %7879, %7864 ], [ %7925, %7913 ]
  br i1 %7445, label %7959, label %8157, !dx.controlflow.hints !188

; <label>:7959                                    ; preds = %7952
  %7960 = extractvalue %dx.types.CBufRet.f32 %7858, 0
  %7961 = fmul fast float %7960, %7860
  %7962 = fsub fast float %7855, %7953
  %7963 = fsub fast float %7856, %7954
  %7964 = fsub fast float %7857, %7955
  %7965 = fmul fast float %7961, %7962
  %7966 = fmul fast float %7961, %7963
  %7967 = fmul fast float %7961, %7964
  %7968 = fadd fast float %7965, %7953
  %7969 = fadd fast float %7966, %7954
  %7970 = fadd fast float %7967, %7955
  %7971 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7956)  ; FMax(a,b)
  %7972 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7957)  ; FMax(a,b)
  %7973 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7958)  ; FMax(a,b)
  %7974 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7854)  ; FMax(a,b)
  %7975 = call float @dx.op.binary.f32(i32 35, float %7853, float %7863)  ; FMax(a,b)
  %7976 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7975)  ; FMax(a,b)
  %7977 = fdiv fast float %7853, %7976
  %7978 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7979 = fdiv fast float %7863, %7976
  %7980 = call float @dx.op.unary.f32(i32 7, float %7979)  ; Saturate(value)
  %7981 = fcmp fast une float %7974, 1.000000e+00
  br i1 %7981, label %7982, label %7995, !dx.controlflow.hints !189

; <label>:7982                                    ; preds = %7959
  %7983 = call float @dx.op.unary.f32(i32 23, float %7974)  ; Log(value)
  %7984 = fmul fast float %7983, 0x3FE62E4300000000
  %7985 = fmul fast float %7855, %7984
  %7986 = fsub fast float -0.000000e+00, %7985
  %7987 = fmul fast float %7856, %7984
  %7988 = fsub fast float -0.000000e+00, %7987
  %7989 = fmul fast float %7857, %7984
  %7990 = fsub fast float -0.000000e+00, %7989
  %7991 = fsub fast float 1.000000e+00, %7974
  %7992 = fdiv fast float %7986, %7991
  %7993 = fdiv fast float %7988, %7991
  %7994 = fdiv fast float %7990, %7991
  br label %7995

; <label>:7995                                    ; preds = %7982, %7959
  %7996 = phi float [ %7992, %7982 ], [ %7855, %7959 ]
  %7997 = phi float [ %7993, %7982 ], [ %7856, %7959 ]
  %7998 = phi float [ %7994, %7982 ], [ %7857, %7959 ]
  %7999 = phi float [ %7984, %7982 ], [ 0.000000e+00, %7959 ]
  %8000 = fcmp fast une float %7971, 1.000000e+00
  br i1 %8000, label %8001, label %8008, !dx.controlflow.hints !190

; <label>:8001                                    ; preds = %7995
  %8002 = call float @dx.op.unary.f32(i32 23, float %7971)  ; Log(value)
  %8003 = fmul fast float %8002, 0x3FE62E4300000000
  %8004 = fmul fast float %7968, %8003
  %8005 = fsub fast float -0.000000e+00, %8004
  %8006 = fsub fast float 1.000000e+00, %7971
  %8007 = fdiv fast float %8005, %8006
  br label %8008

; <label>:8008                                    ; preds = %8001, %7995
  %8009 = phi float [ %8007, %8001 ], [ %7968, %7995 ]
  %8010 = phi float [ %8003, %8001 ], [ 0.000000e+00, %7995 ]
  %8011 = fcmp fast une float %7972, 1.000000e+00
  br i1 %8011, label %8012, label %8019, !dx.controlflow.hints !190

; <label>:8012                                    ; preds = %8008
  %8013 = call float @dx.op.unary.f32(i32 23, float %7972)  ; Log(value)
  %8014 = fmul fast float %8013, 0x3FE62E4300000000
  %8015 = fmul fast float %7969, %8014
  %8016 = fsub fast float -0.000000e+00, %8015
  %8017 = fsub fast float 1.000000e+00, %7972
  %8018 = fdiv fast float %8016, %8017
  br label %8019

; <label>:8019                                    ; preds = %8012, %8008
  %8020 = phi float [ %8018, %8012 ], [ %7969, %8008 ]
  %8021 = phi float [ %8014, %8012 ], [ 0.000000e+00, %8008 ]
  %8022 = fcmp fast une float %7973, 1.000000e+00
  br i1 %8022, label %8023, label %8030, !dx.controlflow.hints !190

; <label>:8023                                    ; preds = %8019
  %8024 = call float @dx.op.unary.f32(i32 23, float %7973)  ; Log(value)
  %8025 = fmul fast float %8024, 0x3FE62E4300000000
  %8026 = fmul fast float %7970, %8025
  %8027 = fsub fast float -0.000000e+00, %8026
  %8028 = fsub fast float 1.000000e+00, %7973
  %8029 = fdiv fast float %8027, %8028
  br label %8030

; <label>:8030                                    ; preds = %8023, %8019
  %8031 = phi float [ %8029, %8023 ], [ %7970, %8019 ]
  %8032 = phi float [ %8025, %8023 ], [ 0.000000e+00, %8019 ]
  %8033 = fmul fast float %7996, %7980
  %8034 = fmul fast float %7997, %7980
  %8035 = fmul fast float %7998, %7980
  %8036 = fmul fast float %7999, %7980
  %8037 = fmul fast float %8009, %7978
  %8038 = fmul fast float %8020, %7978
  %8039 = fmul fast float %8031, %7978
  %8040 = fmul fast float %8010, %7978
  %8041 = fmul fast float %8021, %7978
  %8042 = fmul fast float %8032, %7978
  %8043 = fadd fast float %8037, %8033
  %8044 = fadd fast float %8038, %8034
  %8045 = fadd fast float %8039, %8035
  %8046 = fadd fast float %8040, %8036
  %8047 = fadd fast float %8041, %8036
  %8048 = fadd fast float %8042, %8036
  %8049 = fcmp fast une float %8046, 0.000000e+00
  br i1 %8049, label %8050, label %8057, !dx.controlflow.hints !191

; <label>:8050                                    ; preds = %8030
  %8051 = fmul fast float %8046, 0x3FF7154760000000
  %8052 = call float @dx.op.unary.f32(i32 21, float %8051)  ; Exp(value)
  %8053 = fsub fast float 1.000000e+00, %8052
  %8054 = fmul fast float %8043, %8053
  %8055 = fsub fast float -0.000000e+00, %8054
  %8056 = fdiv fast float %8055, %8046
  br label %8057

; <label>:8057                                    ; preds = %8050, %8030
  %8058 = phi float [ %8052, %8050 ], [ 1.000000e+00, %8030 ]
  %8059 = phi float [ %8056, %8050 ], [ %8043, %8030 ]
  %8060 = fcmp fast une float %8047, 0.000000e+00
  br i1 %8060, label %8061, label %8068, !dx.controlflow.hints !191

; <label>:8061                                    ; preds = %8057
  %8062 = fmul fast float %8047, 0x3FF7154760000000
  %8063 = call float @dx.op.unary.f32(i32 21, float %8062)  ; Exp(value)
  %8064 = fsub fast float 1.000000e+00, %8063
  %8065 = fmul fast float %8044, %8064
  %8066 = fsub fast float -0.000000e+00, %8065
  %8067 = fdiv fast float %8066, %8047
  br label %8068

; <label>:8068                                    ; preds = %8061, %8057
  %8069 = phi float [ %8063, %8061 ], [ 1.000000e+00, %8057 ]
  %8070 = phi float [ %8067, %8061 ], [ %8044, %8057 ]
  %8071 = fcmp fast une float %8048, 0.000000e+00
  br i1 %8071, label %8072, label %8079, !dx.controlflow.hints !191

; <label>:8072                                    ; preds = %8068
  %8073 = fmul fast float %8048, 0x3FF7154760000000
  %8074 = call float @dx.op.unary.f32(i32 21, float %8073)  ; Exp(value)
  %8075 = fsub fast float 1.000000e+00, %8074
  %8076 = fmul fast float %8045, %8075
  %8077 = fsub fast float -0.000000e+00, %8076
  %8078 = fdiv fast float %8077, %8048
  br label %8079

; <label>:8079                                    ; preds = %8072, %8068
  %8080 = phi float [ %8074, %8072 ], [ 1.000000e+00, %8068 ]
  %8081 = phi float [ %8078, %8072 ], [ %8045, %8068 ]
  %8082 = fcmp fast ogt float %7978, %7980
  br i1 %8082, label %8083, label %8103

; <label>:8083                                    ; preds = %8079
  %8084 = fsub fast float 1.000000e+00, %7980
  %8085 = fmul fast float %7996, %8084
  %8086 = fmul fast float %7997, %8084
  %8087 = fmul fast float %7998, %8084
  %8088 = fmul fast float %7999, %8084
  %8089 = fcmp fast une float %8088, 0.000000e+00
  br i1 %8089, label %8090, label %8141, !dx.controlflow.hints !192

; <label>:8090                                    ; preds = %8083
  %8091 = fmul fast float %8088, 0x3FF7154760000000
  %8092 = call float @dx.op.unary.f32(i32 21, float %8091)  ; Exp(value)
  %8093 = fsub fast float 1.000000e+00, %8092
  %8094 = fmul fast float %8085, %8093
  %8095 = fsub fast float -0.000000e+00, %8094
  %8096 = fmul fast float %8086, %8093
  %8097 = fsub fast float -0.000000e+00, %8096
  %8098 = fmul fast float %8087, %8093
  %8099 = fsub fast float -0.000000e+00, %8098
  %8100 = fdiv fast float %8095, %8088
  %8101 = fdiv fast float %8097, %8088
  %8102 = fdiv fast float %8099, %8088
  br label %8141

; <label>:8103                                    ; preds = %8079
  %8104 = fsub fast float 1.000000e+00, %7978
  %8105 = fmul fast float %8009, %8104
  %8106 = fmul fast float %8020, %8104
  %8107 = fmul fast float %8031, %8104
  %8108 = fmul fast float %8010, %8104
  %8109 = fmul fast float %8021, %8104
  %8110 = fmul fast float %8032, %8104
  %8111 = fcmp fast une float %8108, 0.000000e+00
  br i1 %8111, label %8112, label %8119, !dx.controlflow.hints !191

; <label>:8112                                    ; preds = %8103
  %8113 = fmul fast float %8108, 0x3FF7154760000000
  %8114 = call float @dx.op.unary.f32(i32 21, float %8113)  ; Exp(value)
  %8115 = fsub fast float 1.000000e+00, %8114
  %8116 = fmul fast float %8105, %8115
  %8117 = fsub fast float -0.000000e+00, %8116
  %8118 = fdiv fast float %8117, %8108
  br label %8119

; <label>:8119                                    ; preds = %8112, %8103
  %8120 = phi float [ %8118, %8112 ], [ %8105, %8103 ]
  %8121 = phi float [ %8114, %8112 ], [ 1.000000e+00, %8103 ]
  %8122 = fcmp fast une float %8109, 0.000000e+00
  br i1 %8122, label %8123, label %8130, !dx.controlflow.hints !191

; <label>:8123                                    ; preds = %8119
  %8124 = fmul fast float %8109, 0x3FF7154760000000
  %8125 = call float @dx.op.unary.f32(i32 21, float %8124)  ; Exp(value)
  %8126 = fsub fast float 1.000000e+00, %8125
  %8127 = fmul fast float %8106, %8126
  %8128 = fsub fast float -0.000000e+00, %8127
  %8129 = fdiv fast float %8128, %8109
  br label %8130

; <label>:8130                                    ; preds = %8123, %8119
  %8131 = phi float [ %8129, %8123 ], [ %8106, %8119 ]
  %8132 = phi float [ %8125, %8123 ], [ 1.000000e+00, %8119 ]
  %8133 = fcmp fast une float %8110, 0.000000e+00
  br i1 %8133, label %8134, label %8141, !dx.controlflow.hints !191

; <label>:8134                                    ; preds = %8130
  %8135 = fmul fast float %8110, 0x3FF7154760000000
  %8136 = call float @dx.op.unary.f32(i32 21, float %8135)  ; Exp(value)
  %8137 = fsub fast float 1.000000e+00, %8136
  %8138 = fmul fast float %8107, %8137
  %8139 = fsub fast float -0.000000e+00, %8138
  %8140 = fdiv fast float %8139, %8110
  br label %8141

; <label>:8141                                    ; preds = %8134, %8130, %8090, %8083
  %8142 = phi float [ %8140, %8134 ], [ %8102, %8090 ], [ %8087, %8083 ], [ %8107, %8130 ]
  %8143 = phi float [ %8131, %8134 ], [ %8101, %8090 ], [ %8086, %8083 ], [ %8131, %8130 ]
  %8144 = phi float [ %8120, %8134 ], [ %8100, %8090 ], [ %8085, %8083 ], [ %8120, %8130 ]
  %8145 = phi float [ %8136, %8134 ], [ %8092, %8090 ], [ 1.000000e+00, %8083 ], [ 1.000000e+00, %8130 ]
  %8146 = phi float [ %8132, %8134 ], [ %8092, %8090 ], [ 1.000000e+00, %8083 ], [ %8132, %8130 ]
  %8147 = phi float [ %8121, %8134 ], [ %8092, %8090 ], [ 1.000000e+00, %8083 ], [ %8121, %8130 ]
  %8148 = fmul fast float %8147, %8059
  %8149 = fmul fast float %8146, %8070
  %8150 = fmul fast float %8145, %8081
  %8151 = fadd fast float %8148, %8144
  %8152 = fadd fast float %8149, %8143
  %8153 = fadd fast float %8150, %8142
  %8154 = fmul fast float %8147, %8058
  %8155 = fmul fast float %8146, %8069
  %8156 = fmul fast float %8145, %8080
  br label %8157

; <label>:8157                                    ; preds = %8141, %7952
  %8158 = phi float [ %8156, %8141 ], [ %7958, %7952 ]
  %8159 = phi float [ %8155, %8141 ], [ %7957, %7952 ]
  %8160 = phi float [ %8154, %8141 ], [ %7956, %7952 ]
  %8161 = phi float [ %8153, %8141 ], [ %7955, %7952 ]
  %8162 = phi float [ %8152, %8141 ], [ %7954, %7952 ]
  %8163 = phi float [ %8151, %8141 ], [ %7953, %7952 ]
  %8164 = fmul fast float %8163, %7107
  %8165 = fmul fast float %8162, %7107
  %8166 = fmul fast float %8161, %7107
  %8167 = fmul fast float %8160, %7400
  %8168 = call float @dx.op.dot3.f32(i32 55, float %8160, float %8159, float %8158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8169 = call float @dx.op.dot3.f32(i32 55, float %8164, float %8165, float %8166, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8170 = select i1 %245, float %8168, float %8160
  %8171 = select i1 %245, float %8168, float %8159
  %8172 = select i1 %245, float 1.000000e+00, float %8158
  %8173 = select i1 %245, float %8169, float %8164
  %8174 = select i1 %245, float 0.000000e+00, float %8165
  %8175 = select i1 %245, float 0.000000e+00, float %8166
  %8176 = fmul fast float %8170, %7394
  %8177 = fmul fast float %8171, %7395
  %8178 = fmul fast float %8172, %7396
  %8179 = fadd fast float %8176, %8173
  %8180 = fadd fast float %8177, %8174
  %8181 = fadd fast float %8175, %8178
  %8182 = fmul fast float %8170, %7397
  %8183 = fmul fast float %8171, %7398
  %8184 = fmul fast float %8172, %7399
  %8185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8186 = extractvalue %dx.types.CBufRet.i32 %8185, 0
  %8187 = icmp eq i32 %8186, 0
  br i1 %8187, label %8555, label %8188, !dx.controlflow.hints !193

; <label>:8188                                    ; preds = %8157
  %8189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8190 = extractvalue %dx.types.CBufRet.f32 %8189, 2
  %8191 = extractvalue %dx.types.CBufRet.f32 %8189, 3
  %8192 = fmul fast float %8190, %107
  %8193 = fmul fast float %8191, %108
  %8194 = fmul fast float %8192, 2.000000e+00
  %8195 = fmul fast float %8193, 2.000000e+00
  %8196 = fsub fast float 1.000000e+00, %8194
  %8197 = fsub fast float 1.000000e+00, %8195
  %8198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8199 = extractvalue %dx.types.CBufRet.f32 %8198, 0
  %8200 = extractvalue %dx.types.CBufRet.f32 %8198, 1
  %8201 = extractvalue %dx.types.CBufRet.f32 %8198, 2
  %8202 = fmul fast float %8196, %8199
  %8203 = fmul fast float %8196, %8200
  %8204 = fmul fast float %8196, %8201
  %8205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.f32 %8205, 0
  %8207 = extractvalue %dx.types.CBufRet.f32 %8205, 1
  %8208 = extractvalue %dx.types.CBufRet.f32 %8205, 2
  %8209 = fmul fast float %8197, %8206
  %8210 = fmul fast float %8197, %8207
  %8211 = fmul fast float %8197, %8208
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 0
  %8214 = extractvalue %dx.types.CBufRet.f32 %8212, 1
  %8215 = extractvalue %dx.types.CBufRet.f32 %8212, 2
  %8216 = fadd fast float %8209, %8213
  %8217 = fadd fast float %8216, %8202
  %8218 = fadd fast float %8210, %8214
  %8219 = fadd fast float %8218, %8203
  %8220 = fadd fast float %8211, %8215
  %8221 = fadd fast float %8220, %8204
  %8222 = fmul fast float %8217, %7393
  %8223 = fmul fast float %8219, %7393
  %8224 = fmul fast float %8221, %7393
  %8225 = fmul fast float %8222, %8222
  %8226 = fmul fast float %8223, %8223
  %8227 = fadd fast float %8225, %8226
  %8228 = fmul fast float %8224, %8224
  %8229 = fadd fast float %8227, %8228
  %8230 = call float @dx.op.unary.f32(i32 24, float %8229)  ; Sqrt(value)
  %8231 = extractvalue %dx.types.CBufRet.f32 %7118, 0
  %8232 = fsub fast float %8230, %8231
  %8233 = extractvalue %dx.types.CBufRet.f32 %7118, 2
  %8234 = fmul fast float %8232, %8233
  %8235 = call float @dx.op.unary.f32(i32 7, float %8234)  ; Saturate(value)
  %8236 = fadd fast float %8235, -5.000000e-01
  %8237 = fmul fast float %8236, 2.000000e+00
  %8238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8239 = extractvalue %dx.types.CBufRet.f32 %8238, 2
  %8240 = call float @dx.op.binary.f32(i32 36, float %8239, float %8237)  ; FMin(a,b)
  %8241 = fsub fast float -0.000000e+00, %8239
  %8242 = fcmp fast ogt float %8240, %8241
  br i1 %8242, label %8243, label %8555, !dx.controlflow.hints !194

; <label>:8243                                    ; preds = %8188
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 3
  %8246 = fcmp fast ogt float %8245, 0.000000e+00
  br i1 %8246, label %8247, label %8322, !dx.controlflow.hints !195

; <label>:8247                                    ; preds = %8243
  %8248 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %8249 = extractvalue %dx.types.Dimensions %8248, 0
  %8250 = sitofp i32 %8249 to float
  %8251 = extractvalue %dx.types.Dimensions %8248, 1
  %8252 = sitofp i32 %8251 to float
  %8253 = fmul fast float %8192, %8250
  %8254 = fmul fast float %8193, %8252
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 1
  %8257 = fsub fast float -0.000000e+00, %8256
  %8258 = fptoui float %8257 to i32
  %8259 = fptoui float %8253 to i32
  %8260 = fptoui float %8254 to i32
  %8261 = and i32 %8258, 31
  %8262 = lshr i32 %8259, %8261
  %8263 = lshr i32 %8260, %8261
  %8264 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %8258, i32 %8262, i32 %8263, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8265 = extractvalue %dx.types.ResRet.f32 %8264, 0
  %8266 = fcmp fast olt float %8265, -1.000000e+00
  %8267 = fcmp fast ogt float %8265, -1.000000e+00
  %8268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8268, 1
  %8270 = select i1 %8267, float %8269, float 1.000000e+00
  %8271 = fadd fast float %8265, 1.000000e+00
  %8272 = fmul fast float %8270, %8271
  %8273 = call float @dx.op.unary.f32(i32 6, float %8272)  ; FAbs(value)
  %8274 = extractvalue %dx.types.CBufRet.f32 %8268, 3
  %8275 = fcmp fast oge float %8273, %8274
  %8276 = select i1 %8275, float 0x4197782600000000, float %8273
  %8277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8278 = extractvalue %dx.types.CBufRet.f32 %8277, 0
  %8279 = extractvalue %dx.types.CBufRet.f32 %8277, 1
  %8280 = extractvalue %dx.types.CBufRet.f32 %8277, 2
  %8281 = select i1 %8266, float %8278, float %8199
  %8282 = select i1 %8266, float %8279, float %8200
  %8283 = select i1 %8266, float %8280, float %8201
  %8284 = fmul fast float %8281, %8196
  %8285 = fmul fast float %8282, %8196
  %8286 = fmul fast float %8283, %8196
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 0
  %8289 = extractvalue %dx.types.CBufRet.f32 %8287, 1
  %8290 = extractvalue %dx.types.CBufRet.f32 %8287, 2
  %8291 = select i1 %8266, float %8288, float %8206
  %8292 = select i1 %8266, float %8289, float %8207
  %8293 = select i1 %8266, float %8290, float %8208
  %8294 = fmul fast float %8291, %8197
  %8295 = fmul fast float %8292, %8197
  %8296 = fmul fast float %8293, %8197
  %8297 = fadd fast float %8294, %8284
  %8298 = fadd fast float %8295, %8285
  %8299 = fadd fast float %8296, %8286
  %8300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8301 = extractvalue %dx.types.CBufRet.f32 %8300, 0
  %8302 = extractvalue %dx.types.CBufRet.f32 %8300, 1
  %8303 = extractvalue %dx.types.CBufRet.f32 %8300, 2
  %8304 = select i1 %8266, float %8301, float %8213
  %8305 = select i1 %8266, float %8302, float %8214
  %8306 = select i1 %8266, float %8303, float %8215
  %8307 = fadd fast float %8297, %8304
  %8308 = fadd fast float %8298, %8305
  %8309 = fadd fast float %8299, %8306
  %8310 = fmul fast float %8307, %8276
  %8311 = fmul fast float %8308, %8276
  %8312 = fmul fast float %8309, %8276
  %8313 = fmul fast float %8310, %8310
  %8314 = fmul fast float %8311, %8311
  %8315 = fadd fast float %8313, %8314
  %8316 = fmul fast float %8312, %8312
  %8317 = fadd fast float %8315, %8316
  %8318 = call float @dx.op.unary.f32(i32 24, float %8317)  ; Sqrt(value)
  %8319 = fsub fast float %8318, %8231
  %8320 = fmul fast float %8319, %8233
  %8321 = call float @dx.op.unary.f32(i32 7, float %8320)  ; Saturate(value)
  br label %8322

; <label>:8322                                    ; preds = %8247, %8243
  %8323 = phi float [ %8321, %8247 ], [ 1.000000e+00, %8243 ]
  %8324 = fmul fast float %8240, 5.000000e-01
  %8325 = fadd fast float %8324, 5.000000e-01
  %8326 = call float @dx.op.unary.f32(i32 22, float %8325)  ; Frc(value)
  %8327 = call float @dx.op.unary.f32(i32 27, float %8326)  ; Round_ni(value)
  %8328 = call float @dx.op.unary.f32(i32 22, float %8326)  ; Frc(value)
  %8329 = fmul fast float %8328, 2.000000e+00
  %8330 = fadd fast float %8329, -1.000000e+00
  %8331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %8192, float %8193, float %8327, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8332 = extractvalue %dx.types.ResRet.f32 %8331, 0
  %8333 = extractvalue %dx.types.ResRet.f32 %8331, 1
  %8334 = extractvalue %dx.types.ResRet.f32 %8331, 2
  %8335 = extractvalue %dx.types.ResRet.f32 %8331, 3
  %8336 = fadd fast float %8332, -5.000000e-01
  %8337 = fadd fast float %8334, -5.000000e-01
  %8338 = fmul fast float %8336, 0xBFD5555560000000
  %8339 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8337, float %8338)  ; FMad(a,b,c)
  %8340 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8333, float 0.000000e+00)  ; FMad(a,b,c)
  %8341 = fadd fast float %8340, %8335
  %8342 = fmul fast float %8336, -7.500000e-01
  %8343 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8337, float %8342)  ; FMad(a,b,c)
  %8344 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8333, float 0.000000e+00)  ; FMad(a,b,c)
  %8345 = fadd fast float %8344, %8335
  %8346 = call float @dx.op.binary.f32(i32 35, float %8339, float -1.000000e+00)  ; FMax(a,b)
  %8347 = call float @dx.op.binary.f32(i32 35, float %8341, float -1.000000e+00)  ; FMax(a,b)
  %8348 = call float @dx.op.binary.f32(i32 35, float %8343, float -1.000000e+00)  ; FMax(a,b)
  %8349 = call float @dx.op.binary.f32(i32 35, float %8345, float -1.000000e+00)  ; FMax(a,b)
  %8350 = call float @dx.op.binary.f32(i32 36, float %8346, float 1.000000e+00)  ; FMin(a,b)
  %8351 = call float @dx.op.binary.f32(i32 36, float %8347, float 1.000000e+00)  ; FMin(a,b)
  %8352 = call float @dx.op.binary.f32(i32 36, float %8348, float 1.000000e+00)  ; FMin(a,b)
  %8353 = call float @dx.op.binary.f32(i32 36, float %8349, float 1.000000e+00)  ; FMin(a,b)
  %8354 = fcmp fast olt float %8350, 0x3FEFFF8020000000
  br i1 %8354, label %8355, label %8470, !dx.controlflow.hints !196

; <label>:8355                                    ; preds = %8322
  %8356 = extractvalue %dx.types.CBufRet.f32 %8238, 3
  %8357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.CBufRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.CBufRet.f32 %8357, 2
  %8361 = extractvalue %dx.types.CBufRet.f32 %8357, 3
  %8362 = fsub fast float %8358, %8350
  %8363 = fsub fast float %8359, %8351
  %8364 = fsub fast float %8360, %8352
  %8365 = fsub fast float %8361, %8353
  %8366 = fmul fast float %8362, %8356
  %8367 = fmul fast float %8363, %8356
  %8368 = fmul fast float %8364, %8356
  %8369 = fmul fast float %8365, %8356
  %8370 = fadd fast float %8366, %8350
  %8371 = fadd fast float %8367, %8351
  %8372 = fsub fast float -0.000000e+00, %8371
  %8373 = fadd fast float %8368, %8352
  %8374 = fadd fast float %8369, %8353
  %8375 = fmul fast float %8370, %8370
  %8376 = fsub fast float %8371, %8375
  %8377 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8376)  ; FMax(a,b)
  %8378 = fdiv fast float 1.000000e+00, %8377
  %8379 = fmul fast float %8371, %8370
  %8380 = fsub fast float %8373, %8379
  %8381 = fsub fast float %8330, %8370
  %8382 = fmul fast float %8330, %8330
  %8383 = fsub fast float %8382, %8371
  %8384 = fmul fast float %8381, %8378
  %8385 = fmul fast float %8384, %8380
  %8386 = fsub fast float %8383, %8385
  %8387 = fmul fast float %8371, %8371
  %8388 = fsub fast float %8374, %8387
  %8389 = fmul fast float %8380, %8380
  %8390 = fmul fast float %8389, %8378
  %8391 = fsub fast float %8388, %8390
  %8392 = fdiv fast float %8386, %8391
  %8393 = fmul fast float %8380, %8392
  %8394 = fsub fast float %8381, %8393
  %8395 = fmul fast float %8394, %8378
  %8396 = fmul fast float %8395, %8370
  %8397 = fsub fast float 1.000000e+00, %8396
  %8398 = fmul fast float %8371, %8392
  %8399 = fsub fast float %8397, %8398
  %8400 = fmul fast float %8395, %8395
  %8401 = fmul fast float %8392, 4.000000e+00
  %8402 = fmul fast float %8401, %8399
  %8403 = fsub fast float %8400, %8402
  %8404 = call float @dx.op.unary.f32(i32 24, float %8403)  ; Sqrt(value)
  %8405 = fcmp fast oge float %8395, 0.000000e+00
  %8406 = fsub fast float -0.000000e+00, %8404
  %8407 = select i1 %8405, float %8406, float %8404
  %8408 = fsub fast float %8407, %8395
  %8409 = fdiv fast float %8408, %8392
  %8410 = fdiv fast float %8399, %8408
  %8411 = fmul fast float %8409, 5.000000e-01
  %8412 = fmul fast float %8410, 2.000000e+00
  %8413 = select i1 %8405, float %8411, float %8412
  %8414 = select i1 %8405, float %8412, float %8411
  %8415 = call float @dx.op.binary.f32(i32 35, float %8413, float %8414)  ; FMax(a,b)
  %8416 = call float @dx.op.binary.f32(i32 36, float %8413, float %8414)  ; FMin(a,b)
  %8417 = fcmp fast ogt float %8330, %8416
  br i1 %8417, label %8418, label %8428

; <label>:8418                                    ; preds = %8355
  %8419 = fsub fast float %8330, %8416
  %8420 = fsub fast float %8415, %8416
  %8421 = fmul fast float %8419, %8420
  %8422 = fmul fast float %8415, %8330
  %8423 = fadd fast float %8415, %8330
  %8424 = fmul fast float %8423, %8370
  %8425 = fadd fast float %8422, %8371
  %8426 = fsub fast float %8425, %8424
  %8427 = fdiv fast float %8426, %8421
  br label %8428

; <label>:8428                                    ; preds = %8418, %8355
  %8429 = phi float [ %8427, %8418 ], [ 0.000000e+00, %8355 ]
  %8430 = fcmp fast ogt float %8330, %8415
  %8431 = fsub fast float %8330, %8415
  br i1 %8430, label %8432, label %8442

; <label>:8432                                    ; preds = %8428
  %8433 = fsub fast float %8415, %8416
  %8434 = fmul fast float %8433, %8431
  %8435 = fmul fast float %8416, %8330
  %8436 = fadd fast float %8416, %8330
  %8437 = fmul fast float %8436, %8370
  %8438 = fsub fast float %8372, %8435
  %8439 = fadd fast float %8438, %8437
  %8440 = fdiv fast float %8439, %8434
  %8441 = fadd fast float %8440, %8429
  br label %8442

; <label>:8442                                    ; preds = %8432, %8428
  %8443 = phi float [ %8441, %8432 ], [ %8429, %8428 ]
  %8444 = fsub fast float %8330, %8416
  %8445 = fmul fast float %8444, %8431
  %8446 = fmul fast float %8416, %8415
  %8447 = fadd fast float %8416, %8415
  %8448 = fmul fast float %8447, %8370
  %8449 = fadd fast float %8446, %8371
  %8450 = fsub fast float %8449, %8448
  %8451 = fdiv fast float %8450, %8445
  %8452 = call float @dx.op.unary.f32(i32 7, float %8443)  ; Saturate(value)
  %8453 = fcmp fast oeq float %7119, 0.000000e+00
  %8454 = extractvalue %dx.types.CBufRet.f32 %8238, 0
  %8455 = fcmp fast oeq float %8454, 0.000000e+00
  %8456 = or i1 %8453, %8455
  %8457 = fmul fast float %8454, 2.000000e+00
  %8458 = fadd fast float %8239, %8240
  %8459 = fdiv fast float %8458, %8457
  %8460 = call float @dx.op.unary.f32(i32 7, float %8459)  ; Saturate(value)
  %8461 = fmul fast float %8460, 2.000000e+00
  %8462 = fsub fast float 3.000000e+00, %8461
  %8463 = fmul fast float %8460, %8460
  %8464 = fmul fast float %8463, %8462
  %8465 = select i1 %8456, float 1.000000e+00, float %8464
  %8466 = fmul fast float %8451, %7119
  %8467 = fadd fast float %8452, %8466
  %8468 = call float @dx.op.unary.f32(i32 7, float %8467)  ; Saturate(value)
  %8469 = fmul fast float %8465, %8468
  br label %8470

; <label>:8470                                    ; preds = %8442, %8322
  %8471 = phi float [ %8469, %8442 ], [ 0.000000e+00, %8322 ]
  %8472 = fsub fast float 1.000000e+00, %8471
  %8473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %8192, float %8193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8474 = extractvalue %dx.types.ResRet.f32 %8473, 0
  %8475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.i32 %8475, 2
  %8477 = icmp eq i32 %8476, 0
  br i1 %8477, label %8483, label %8478

; <label>:8478                                    ; preds = %8470
  %8479 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  %8480 = fadd fast float %8474, -1.000000e+00
  %8481 = fmul fast float %8479, %8480
  %8482 = fadd fast float %8481, 1.000000e+00
  br label %8483

; <label>:8483                                    ; preds = %8478, %8470
  %8484 = phi float [ %8482, %8478 ], [ %8472, %8470 ]
  br i1 %8246, label %8485, label %8503

; <label>:8485                                    ; preds = %8483
  %8486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8487 = extractvalue %dx.types.CBufRet.f32 %8486, 1
  %8488 = fsub fast float %8323, %8487
  %8489 = call float @dx.op.unary.f32(i32 7, float %8488)  ; Saturate(value)
  %8490 = fsub fast float %8323, %8245
  %8491 = call float @dx.op.unary.f32(i32 7, float %8490)  ; Saturate(value)
  %8492 = fsub fast float %8489, %8491
  %8493 = fsub fast float %8325, %8491
  %8494 = fdiv fast float %8493, %8492
  %8495 = call float @dx.op.unary.f32(i32 7, float %8494)  ; Saturate(value)
  %8496 = fmul fast float %8495, 2.000000e+00
  %8497 = fsub fast float 3.000000e+00, %8496
  %8498 = fsub fast float %8474, %8484
  %8499 = fmul fast float %8495, %8495
  %8500 = fmul fast float %8499, %8498
  %8501 = fmul fast float %8500, %8497
  %8502 = fadd fast float %8501, %8484
  br label %8503

; <label>:8503                                    ; preds = %8485, %8483
  %8504 = phi float [ %8502, %8485 ], [ %8484, %8483 ]
  %8505 = call float @dx.op.binary.f32(i32 35, float %8474, float %8504)  ; FMax(a,b)
  %8506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8507 = extractvalue %dx.types.CBufRet.i32 %8506, 2
  %8508 = and i32 %8507, 1
  %8509 = icmp eq i32 %8508, 0
  %8510 = fcmp fast une float %8505, 1.000000e+00
  %8511 = and i1 %8510, %8509
  br i1 %8511, label %8512, label %8531

; <label>:8512                                    ; preds = %8503
  %8513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %8192, float %8193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8514 = extractvalue %dx.types.ResRet.f32 %8513, 0
  %8515 = extractvalue %dx.types.ResRet.f32 %8513, 1
  %8516 = extractvalue %dx.types.ResRet.f32 %8513, 2
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 1
  %8519 = fmul fast float %8518, %8514
  %8520 = fmul fast float %8518, %8515
  %8521 = fmul fast float %8518, %8516
  %8522 = fcmp fast ogt float %8474, 0x3FEFFF2E40000000
  %8523 = fsub fast float 1.000000e+00, %8505
  %8524 = fsub fast float 1.000000e+00, %8474
  %8525 = fdiv fast float %8523, %8524
  %8526 = call float @dx.op.unary.f32(i32 7, float %8525)  ; Saturate(value)
  %8527 = select i1 %8522, float 0.000000e+00, float %8526
  %8528 = fmul fast float %8519, %8527
  %8529 = fmul fast float %8520, %8527
  %8530 = fmul fast float %8521, %8527
  br label %8531

; <label>:8531                                    ; preds = %8512, %8503
  %8532 = phi float [ 0.000000e+00, %8503 ], [ %8528, %8512 ]
  %8533 = phi float [ 0.000000e+00, %8503 ], [ %8529, %8512 ]
  %8534 = phi float [ 0.000000e+00, %8503 ], [ %8530, %8512 ]
  %8535 = fmul fast float %8532, %7107
  %8536 = fmul fast float %8533, %7107
  %8537 = fmul fast float %8534, %7107
  %8538 = fmul fast float %8505, %8167
  %8539 = call float @dx.op.dot3.f32(i32 55, float %8505, float %8505, float %8505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8540 = call float @dx.op.dot3.f32(i32 55, float %8535, float %8536, float %8537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8541 = select i1 %245, float %8539, float %8505
  %8542 = select i1 %245, float 1.000000e+00, float %8505
  %8543 = select i1 %245, float %8540, float %8535
  %8544 = select i1 %245, float 0.000000e+00, float %8536
  %8545 = select i1 %245, float 0.000000e+00, float %8537
  %8546 = fmul fast float %8541, %8179
  %8547 = fmul fast float %8541, %8180
  %8548 = fmul fast float %8542, %8181
  %8549 = fadd fast float %8546, %8543
  %8550 = fadd fast float %8547, %8544
  %8551 = fadd fast float %8545, %8548
  %8552 = fmul fast float %8541, %8182
  %8553 = fmul fast float %8541, %8183
  %8554 = fmul fast float %8542, %8184
  br label %8555

; <label>:8555                                    ; preds = %8531, %8188, %8157, %7389
  %8556 = phi float [ %7394, %7389 ], [ %8179, %8157 ], [ %8549, %8531 ], [ %8179, %8188 ]
  %8557 = phi float [ %7395, %7389 ], [ %8180, %8157 ], [ %8550, %8531 ], [ %8180, %8188 ]
  %8558 = phi float [ %7396, %7389 ], [ %8181, %8157 ], [ %8551, %8531 ], [ %8181, %8188 ]
  %8559 = phi float [ %7397, %7389 ], [ %8182, %8157 ], [ %8552, %8531 ], [ %8182, %8188 ]
  %8560 = phi float [ %7398, %7389 ], [ %8183, %8157 ], [ %8553, %8531 ], [ %8183, %8188 ]
  %8561 = phi float [ %7399, %7389 ], [ %8184, %8157 ], [ %8554, %8531 ], [ %8184, %8188 ]
  %8562 = phi float [ %7400, %7389 ], [ %8167, %8157 ], [ %8538, %8531 ], [ %8167, %8188 ]
  %8563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8564 = extractvalue %dx.types.CBufRet.f32 %8563, 2
  %8565 = extractvalue %dx.types.CBufRet.f32 %8563, 3
  %8566 = fmul fast float %8564, %107
  %8567 = fmul fast float %8565, %108
  %8568 = call float @dx.op.unary.f32(i32 7, float %8566)  ; Saturate(value)
  %8569 = call float @dx.op.unary.f32(i32 7, float %8567)  ; Saturate(value)
  %8570 = select i1 %7129, i32 2, i32 0
  %8571 = or i32 %8570, 1
  %8572 = uitofp i32 %8571 to float
  %8573 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8568, float %8569, float %8572, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8574 = extractvalue %dx.types.ResRet.f32 %8573, 0
  %8575 = extractvalue %dx.types.ResRet.f32 %8573, 1
  %8576 = extractvalue %dx.types.ResRet.f32 %8573, 2
  %8577 = extractvalue %dx.types.ResRet.f32 %8573, 3
  %8578 = add nuw nsw i32 %8570, 2
  %8579 = uitofp i32 %8578 to float
  %8580 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %8568, float %8569, float %8579, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8581 = extractvalue %dx.types.ResRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.ResRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.ResRet.f32 %8580, 2
  %8584 = extractvalue %dx.types.ResRet.f32 %8580, 3
  %8585 = call float @dx.op.binary.f32(i32 35, float %8575, float %8576)  ; FMax(a,b)
  %8586 = call float @dx.op.binary.f32(i32 35, float %8574, float %8585)  ; FMax(a,b)
  %8587 = call float @dx.op.binary.f32(i32 35, float %8586, float %8577)  ; FMax(a,b)
  %8588 = call float @dx.op.binary.f32(i32 36, float %8582, float %8583)  ; FMin(a,b)
  %8589 = call float @dx.op.binary.f32(i32 36, float %8581, float %8588)  ; FMin(a,b)
  %8590 = call float @dx.op.binary.f32(i32 36, float %8589, float %8584)  ; FMin(a,b)
  %8591 = fmul fast float %8587, 2.550000e+02
  %8592 = fadd fast float %8591, 0x3F70101020000000
  %8593 = fptoui float %8592 to i32
  %8594 = fmul fast float %8590, 2.550000e+02
  %8595 = fadd fast float %8594, 0x3F70101020000000
  %8596 = fptoui float %8595 to i32
  %8597 = icmp ult i32 %8593, %8596
  br i1 %8597, label %8598, label %8767

; <label>:8598                                    ; preds = %8555
  %8599 = fcmp fast ogt float %94, 9.843750e-01
  %8600 = fadd fast float %7393, -4.000000e+00
  %8601 = select i1 %8599, float -4.000000e+00, float %8600
  %8602 = call float @dx.op.binary.f32(i32 35, float %8601, float 0.000000e+00)  ; FMax(a,b)
  %8603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8604 = extractvalue %dx.types.CBufRet.f32 %8603, 0
  %8605 = fadd fast float %8604, %8602
  %8606 = extractvalue %dx.types.CBufRet.f32 %8603, 2
  %8607 = fmul fast float %8605, %8606
  %8608 = call float @dx.op.unary.f32(i32 23, float %8607)  ; Log(value)
  %8609 = extractvalue %dx.types.CBufRet.f32 %8603, 3
  %8610 = fmul fast float %8609, %8608
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 2
  %8613 = fmul fast float %8610, %8612
  %8614 = call float @dx.op.unary.f32(i32 7, float %8613)  ; Saturate(value)
  %8615 = uitofp i32 %8593 to float
  %8616 = uitofp i32 %8596 to float
  %8617 = fadd fast float %8615, 5.000000e-01
  %8618 = fadd fast float %8616, 5.000000e-01
  %8619 = fmul fast float %8612, %8617
  %8620 = fmul fast float %8612, %8618
  %8621 = fadd fast float %8619, 0x3F0FFB4800000000
  %8622 = fadd fast float %8620, 0xBF0FFB4800000000
  %8623 = call float @dx.op.binary.f32(i32 35, float %8614, float %8621)  ; FMax(a,b)
  %8624 = call float @dx.op.binary.f32(i32 36, float %8623, float %8622)  ; FMin(a,b)
  %8625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8626 = extractvalue %dx.types.CBufRet.f32 %8625, 1
  %8627 = extractvalue %dx.types.CBufRet.f32 %8625, 2
  %8628 = extractvalue %dx.types.CBufRet.f32 %8625, 0
  %8629 = select i1 %7129, float %8628, float 0.000000e+00
  %8630 = fmul fast float %8626, %8624
  %8631 = fadd fast float %8629, %8630
  %8632 = fadd fast float %8629, %8627
  %8633 = fsub fast float %8626, %8627
  %8634 = fadd fast float %8633, %8629
  %8635 = call float @dx.op.binary.f32(i32 35, float %8631, float %8632)  ; FMax(a,b)
  %8636 = call float @dx.op.binary.f32(i32 36, float %8635, float %8634)  ; FMin(a,b)
  %8637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %8568, float %8569, float %8636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8638 = extractvalue %dx.types.ResRet.f32 %8637, 0
  %8639 = extractvalue %dx.types.ResRet.f32 %8637, 1
  %8640 = extractvalue %dx.types.ResRet.f32 %8637, 2
  %8641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8642 = extractvalue %dx.types.CBufRet.i32 %8641, 0
  %8643 = extractvalue %dx.types.CBufRet.i32 %8641, 1
  %8644 = uitofp i32 %8642 to float
  %8645 = uitofp i32 %8643 to float
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 0
  %8648 = extractvalue %dx.types.CBufRet.f32 %8646, 1
  %8649 = fmul fast float %8644, %8568
  %8650 = fmul fast float %8645, %8569
  %8651 = fadd fast float %8649, -5.000000e-01
  %8652 = fadd fast float %8650, -5.000000e-01
  %8653 = call float @dx.op.unary.f32(i32 22, float %8651)  ; Frc(value)
  %8654 = call float @dx.op.unary.f32(i32 22, float %8652)  ; Frc(value)
  %8655 = fmul fast float %8653, %8653
  %8656 = fmul fast float %8655, %8653
  %8657 = fsub fast float 3.000000e+00, %8653
  %8658 = fmul fast float %8655, %8657
  %8659 = fmul fast float %8653, 3.000000e+00
  %8660 = fmul fast float %8656, 3.000000e+00
  %8661 = fmul fast float %8655, 6.000000e+00
  %8662 = fsub fast float %8660, %8661
  %8663 = fadd fast float %8662, 4.000000e+00
  %8664 = fmul fast float %8663, 0x3FC5555560000000
  %8665 = fmul fast float %8656, -3.000000e+00
  %8666 = fadd fast float %8655, %8653
  %8667 = fmul fast float %8666, 3.000000e+00
  %8668 = fadd fast float %8665, 1.000000e+00
  %8669 = fadd fast float %8668, %8667
  %8670 = fmul fast float %8656, 0x3FC5555560000000
  %8671 = fmul fast float %8654, %8654
  %8672 = fmul fast float %8671, %8654
  %8673 = fsub fast float 3.000000e+00, %8654
  %8674 = fmul fast float %8671, %8673
  %8675 = fmul fast float %8654, 3.000000e+00
  %8676 = fmul fast float %8672, 3.000000e+00
  %8677 = fmul fast float %8671, 6.000000e+00
  %8678 = fsub fast float %8676, %8677
  %8679 = fadd fast float %8678, 4.000000e+00
  %8680 = fmul fast float %8679, 0x3FC5555560000000
  %8681 = fmul fast float %8672, -3.000000e+00
  %8682 = fadd fast float %8671, %8654
  %8683 = fmul fast float %8682, 3.000000e+00
  %8684 = fadd fast float %8681, 1.000000e+00
  %8685 = fadd fast float %8684, %8683
  %8686 = fmul fast float %8672, 0x3FC5555560000000
  %8687 = fadd fast float %8653, 1.000000e+00
  %8688 = fsub fast float 1.000000e+00, %8659
  %8689 = fadd fast float %8688, %8658
  %8690 = fadd fast float %8689, %8663
  %8691 = fmul fast float %8690, 0x3FC5555560000000
  %8692 = fdiv fast float %8664, %8691
  %8693 = fsub fast float %8687, %8692
  %8694 = fsub fast float 1.000000e+00, %8653
  %8695 = fadd fast float %8669, %8656
  %8696 = fmul fast float %8695, 0x3FC5555560000000
  %8697 = fdiv fast float %8670, %8696
  %8698 = fadd fast float %8694, %8697
  %8699 = fadd fast float %8654, 1.000000e+00
  %8700 = fsub fast float 1.000000e+00, %8675
  %8701 = fadd fast float %8700, %8674
  %8702 = fadd fast float %8701, %8679
  %8703 = fmul fast float %8702, 0x3FC5555560000000
  %8704 = fdiv fast float %8680, %8703
  %8705 = fsub fast float %8699, %8704
  %8706 = fsub fast float 1.000000e+00, %8654
  %8707 = fadd fast float %8685, %8672
  %8708 = fmul fast float %8707, 0x3FC5555560000000
  %8709 = fdiv fast float %8686, %8708
  %8710 = fadd fast float %8709, %8706
  %8711 = fmul fast float %8693, %8647
  %8712 = fsub fast float %8568, %8711
  %8713 = fmul fast float %8698, %8647
  %8714 = fadd fast float %8713, %8568
  %8715 = fmul fast float %8710, %8648
  %8716 = fadd fast float %8715, %8569
  %8717 = fmul fast float %8705, %8648
  %8718 = fsub fast float %8569, %8717
  %8719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8712, float %8718, float %8636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8720 = extractvalue %dx.types.ResRet.f32 %8719, 0
  %8721 = extractvalue %dx.types.ResRet.f32 %8719, 1
  %8722 = extractvalue %dx.types.ResRet.f32 %8719, 2
  %8723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8714, float %8718, float %8636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8724 = extractvalue %dx.types.ResRet.f32 %8723, 0
  %8725 = extractvalue %dx.types.ResRet.f32 %8723, 1
  %8726 = extractvalue %dx.types.ResRet.f32 %8723, 2
  %8727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8712, float %8716, float %8636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8728 = extractvalue %dx.types.ResRet.f32 %8727, 0
  %8729 = extractvalue %dx.types.ResRet.f32 %8727, 1
  %8730 = extractvalue %dx.types.ResRet.f32 %8727, 2
  %8731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8714, float %8716, float %8636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8732 = extractvalue %dx.types.ResRet.f32 %8731, 0
  %8733 = extractvalue %dx.types.ResRet.f32 %8731, 1
  %8734 = extractvalue %dx.types.ResRet.f32 %8731, 2
  %8735 = fsub fast float %8728, %8720
  %8736 = fsub fast float %8729, %8721
  %8737 = fsub fast float %8730, %8722
  %8738 = fmul fast float %8735, %8708
  %8739 = fmul fast float %8736, %8708
  %8740 = fmul fast float %8737, %8708
  %8741 = fadd fast float %8738, %8720
  %8742 = fadd fast float %8739, %8721
  %8743 = fadd fast float %8740, %8722
  %8744 = fsub fast float %8732, %8724
  %8745 = fsub fast float %8733, %8725
  %8746 = fsub fast float %8734, %8726
  %8747 = fmul fast float %8744, %8708
  %8748 = fmul fast float %8745, %8708
  %8749 = fmul fast float %8746, %8708
  %8750 = fsub fast float %8724, %8741
  %8751 = fadd fast float %8750, %8747
  %8752 = fsub fast float %8725, %8742
  %8753 = fadd fast float %8752, %8748
  %8754 = fsub fast float %8726, %8743
  %8755 = fadd fast float %8754, %8749
  %8756 = fmul fast float %8751, %8696
  %8757 = fmul fast float %8753, %8696
  %8758 = fmul fast float %8755, %8696
  %8759 = fadd fast float %8756, %8741
  %8760 = fadd fast float %8757, %8742
  %8761 = fadd fast float %8758, %8743
  %8762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8762, 1
  %8764 = fmul fast float %8759, %8763
  %8765 = fmul fast float %8760, %8763
  %8766 = fmul fast float %8761, %8763
  br label %8767

; <label>:8767                                    ; preds = %8598, %8555
  %8768 = phi float [ %8638, %8598 ], [ 1.000000e+00, %8555 ]
  %8769 = phi float [ %8639, %8598 ], [ 1.000000e+00, %8555 ]
  %8770 = phi float [ %8640, %8598 ], [ 1.000000e+00, %8555 ]
  %8771 = phi float [ %8764, %8598 ], [ 0.000000e+00, %8555 ]
  %8772 = phi float [ %8765, %8598 ], [ 0.000000e+00, %8555 ]
  %8773 = phi float [ %8766, %8598 ], [ 0.000000e+00, %8555 ]
  %8774 = fmul fast float %8771, %7107
  %8775 = fmul fast float %8772, %7107
  %8776 = fmul fast float %8773, %7107
  %8777 = fmul fast float %8768, %8562
  %8778 = call float @dx.op.dot3.f32(i32 55, float %8768, float %8769, float %8770, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8779 = call float @dx.op.dot3.f32(i32 55, float %8774, float %8775, float %8776, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8780 = select i1 %245, float %8778, float %8768
  %8781 = select i1 %245, float %8778, float %8769
  %8782 = select i1 %245, float 1.000000e+00, float %8770
  %8783 = select i1 %245, float %8779, float %8774
  %8784 = select i1 %245, float 0.000000e+00, float %8775
  %8785 = select i1 %245, float 0.000000e+00, float %8776
  %8786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8787 = extractvalue %dx.types.CBufRet.i32 %8786, 3
  %8788 = and i32 %8787, 3
  %8789 = icmp ne i32 %8788, 0
  %8790 = and i32 %8787, 4
  %8791 = icmp ne i32 %8790, 0
  %8792 = and i1 %8789, %8791
  %8793 = and i1 %245, %8792
  br i1 %8793, label %8794, label %8800

; <label>:8794                                    ; preds = %8767
  %8795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8796 = extractvalue %dx.types.CBufRet.f32 %8795, 1
  %8797 = fadd fast float %8777, -1.000000e+00
  %8798 = fmul fast float %8796, %8797
  %8799 = fadd fast float %8798, 1.000000e+00
  br label %8800

; <label>:8800                                    ; preds = %8794, %8767
  %8801 = phi float [ %8799, %8794 ], [ %8777, %8767 ]
  %8802 = fadd fast float %8559, %8556
  %8803 = fmul fast float %8780, %8802
  %8804 = fadd fast float %8803, %8783
  %8805 = fadd fast float %8560, %8557
  %8806 = fmul fast float %8781, %8805
  %8807 = fadd fast float %8806, %8784
  %8808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8809 = extractvalue %dx.types.CBufRet.f32 %8808, 0
  br i1 %245, label %8810, label %8834

; <label>:8810                                    ; preds = %8800
  %8811 = fadd fast float %8804, %8807
  %8812 = fmul fast float %8809, %8811
  %8813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8814 = extractvalue %dx.types.CBufRet.f32 %8813, 3
  %8815 = extractvalue %dx.types.CBufRet.f32 %7111, 1
  %8816 = fsub fast float %7116, %7110
  %8817 = fadd fast float %8816, %7117
  %8818 = fsub fast float %8817, %8815
  %8819 = extractvalue %dx.types.CBufRet.f32 %7111, 2
  %8820 = fmul fast float %8818, %8819
  %8821 = call float @dx.op.unary.f32(i32 7, float %8820)  ; Saturate(value)
  %8822 = fsub fast float %8821, %8814
  %8823 = fmul fast float %8822, %8801
  %8824 = fadd fast float %8823, %8814
  %8825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8826 = extractvalue %dx.types.CBufRet.f32 %8825, 0
  %8827 = fsub fast float %8824, %8826
  %8828 = fmul fast float %8827, 1.000000e+01
  %8829 = call float @dx.op.unary.f32(i32 7, float %8828)  ; Saturate(value)
  %8830 = fsub fast float %2366, %7107
  %8831 = fmul fast float %8829, %8830
  %8832 = fadd fast float %8831, %7107
  %8833 = fmul fast float %8832, %8824
  br label %8858

; <label>:8834                                    ; preds = %8800
  %8835 = fadd fast float %8561, %8558
  %8836 = fmul fast float %8782, %8835
  %8837 = fadd fast float %8836, %8785
  %8838 = fmul fast float %8809, %8804
  %8839 = fmul fast float %8809, %8807
  %8840 = fmul fast float %8809, %8837
  %8841 = call float @dx.op.binary.f32(i32 35, float %8839, float %8840)  ; FMax(a,b)
  %8842 = call float @dx.op.binary.f32(i32 35, float %8838, float %8841)  ; FMax(a,b)
  %8843 = call float @dx.op.binary.f32(i32 35, float %8842, float %7107)  ; FMax(a,b)
  %8844 = fcmp fast ugt float %8843, 0x3F10000000000000
  br i1 %8844, label %8846, label %8845

; <label>:8845                                    ; preds = %8834
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8846

; <label>:8846                                    ; preds = %8845, %8834
  %8847 = add i32 %71, 196
  %8848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %8847, i32 undef)  ; BufferLoad(srv,index,wot)
  %8849 = extractvalue %dx.types.ResRet.i32 %8848, 0
  %8850 = and i32 %8849, 32
  %8851 = icmp eq i32 %8850, 0
  br i1 %8851, label %8858, label %8852

; <label>:8852                                    ; preds = %8846
  %8853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.f32 %8853, 0
  %8855 = fmul fast float %8854, 0x3FE99999A0000000
  %8856 = fadd fast float %8854, %8838
  %8857 = fadd fast float %8855, %8840
  br label %8858

; <label>:8858                                    ; preds = %8852, %8846, %8810
  %8859 = phi float [ %8812, %8810 ], [ %8856, %8852 ], [ %8838, %8846 ]
  %8860 = phi float [ %8833, %8810 ], [ %8839, %8852 ], [ %8839, %8846 ]
  %8861 = phi float [ %8832, %8810 ], [ %8857, %8852 ], [ %8840, %8846 ]
  %8862 = phi float [ %8832, %8810 ], [ %7107, %8852 ], [ %7107, %8846 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8863 = call float @dx.op.binary.f32(i32 36, float %8859, float 3.225500e+04)  ; FMin(a,b)
  %8864 = call float @dx.op.binary.f32(i32 36, float %8860, float 3.225500e+04)  ; FMin(a,b)
  %8865 = call float @dx.op.binary.f32(i32 36, float %8861, float 3.225500e+04)  ; FMin(a,b)
  %8866 = call float @dx.op.binary.f32(i32 36, float %8862, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8863)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8864)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8865)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8866)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!84 = !{[32 x i32] [i32 30, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!85 = !{void ()* @ps_main, !"ps_main", !86, !4, !106}
!86 = !{!87, !104, null}
!87 = !{!88, !91, !93, !94, !96, !97, !98, !100, !102, !103}
!88 = !{i32 0, !"SV_Position", i8 9, i8 3, !89, i8 4, i32 1, i8 4, i32 0, i8 0, !90}
!89 = !{i32 0}
!90 = !{i32 3, i32 15}
!91 = !{i32 1, !"COLOR", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 1, i8 0, !92}
!92 = !{i32 3, i32 3}
!93 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 2, i8 0, !90}
!94 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !89, i8 2, i32 1, i8 3, i32 3, i8 0, !95}
!95 = !{i32 3, i32 7}
!96 = !{i32 4, !"NORMAL", i8 9, i8 0, !89, i8 2, i32 1, i8 3, i32 4, i8 0, !95}
!97 = !{i32 5, !"TANGENT", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 5, i8 0, !90}
!98 = !{i32 6, !"NORMAL_TRANSFORM", i8 9, i8 0, !99, i8 2, i32 1, i8 4, i32 6, i8 0, !90}
!99 = !{i32 1}
!100 = !{i32 7, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !89, i8 1, i32 1, i8 1, i32 7, i8 0, !101}
!101 = !{i32 3, i32 1}
!102 = !{i32 8, !"TRANSIENT_INDEX", i8 5, i8 0, !89, i8 1, i32 1, i8 1, i32 7, i8 1, !101}
!103 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !89, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!104 = !{!105}
!105 = !{i32 0, !"SV_Target", i8 9, i8 16, !89, i8 0, i32 1, i8 4, i32 0, i8 0, !90}
!106 = !{i32 0, i64 16}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !116}
!116 = !{!"llvm.loop.unroll.disable"}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = !{!123, !123, i64 0}
!123 = !{!"int", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C/C++ TBAA"}
!126 = !{!127, !129, !131, !133}
!127 = distinct !{!127, !128, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!128 = distinct !{!128, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!129 = distinct !{!129, !130, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!130 = distinct !{!130, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!131 = distinct !{!131, !132, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!132 = distinct !{!132, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!133 = distinct !{!133, !134, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!134 = distinct !{!134, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = !{!137, !137, i64 0}
!137 = !{!"float", !124, i64 0}
!138 = distinct !{!138, !116}
!139 = distinct !{!139, !116}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = !{!151, !153, !155, !156, !158, !159, !160, !162, !163, !164}
!151 = distinct !{!151, !152, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!152 = distinct !{!152, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!153 = distinct !{!153, !154, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!154 = distinct !{!154, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!155 = distinct !{!155, !154, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!156 = distinct !{!156, !157, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!157 = distinct !{!157, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!158 = distinct !{!158, !157, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!159 = distinct !{!159, !157, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!160 = distinct !{!160, !161, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!161 = distinct !{!161, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!162 = distinct !{!162, !161, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!163 = distinct !{!163, !161, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!164 = distinct !{!164, !165, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!165 = distinct !{!165, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"\01?sort@@YAXAIAM00@Z: %c"}
!168 = distinct !{!168, !"\01?sort@@YAXAIAM00@Z"}
!169 = !{!170, !171, !151, !153, !155, !156, !158, !159, !160, !162, !163, !164}
!170 = distinct !{!170, !168, !"\01?sort@@YAXAIAM00@Z: %a"}
!171 = distinct !{!171, !168, !"\01?sort@@YAXAIAM00@Z: %b"}
!172 = !{!171}
!173 = !{!170, !167, !151, !153, !155, !156, !158, !159, !160, !162, !163, !164}
!174 = !{!170}
!175 = !{!171, !167, !151, !153, !155, !156, !158, !159, !160, !162, !163, !164}
!176 = !{!177}
!177 = distinct !{!177, !178, !"\01?sort@@YAXAIAM00@Z: %c"}
!178 = distinct !{!178, !"\01?sort@@YAXAIAM00@Z"}
!179 = !{!180, !181, !151, !153, !155, !156, !158, !159, !160, !162, !163, !164}
!180 = distinct !{!180, !178, !"\01?sort@@YAXAIAM00@Z: %a"}
!181 = distinct !{!181, !178, !"\01?sort@@YAXAIAM00@Z: %b"}
!182 = !{!181}
!183 = !{!180, !177, !151, !153, !155, !156, !158, !159, !160, !162, !163, !164}
!184 = !{!180}
!185 = !{!181, !177, !151, !153, !155, !156, !158, !159, !160, !162, !163, !164}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 2}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 1}
!190 = distinct !{!190, !"dx.controlflow.hints", i32 1}
!191 = distinct !{!191, !"dx.controlflow.hints", i32 1}
!192 = distinct !{!192, !"dx.controlflow.hints", i32 1}
!193 = distinct !{!193, !"dx.controlflow.hints", i32 1}
!194 = distinct !{!194, !"dx.controlflow.hints", i32 1}
!195 = distinct !{!195, !"dx.controlflow.hints", i32 1}
!196 = distinct !{!196, !"dx.controlflow.hints", i32 1}

