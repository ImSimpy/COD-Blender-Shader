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
; shader hash: e9df28a89b4ce5ab1e3b9c9822c90347
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
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32     2darray      T5     t16,space2     1
;                                   texture     f32          3d      T6     t15,space2     1
;                                   texture     f32          2d      T7     t14,space2     1
;                                   texture     f32          2d      T8     t13,space2     1
;                                   texture     u32          2d      T9     t17,space2     1
;                                   texture     f32          3d     T10     t18,space2     1
;                                   texture     f32     2darray     T11     t23,space2     1
;                                   texture     f32     2darray     T12     t24,space2     1
;                                   texture     f32     2darray     T13     t25,space2     1
;                                   texture    byte         r/o     T14     t66,space1     1
;                                   texture     f32          2d     T15     t69,space2     1
;                                   texture    byte         r/o     T16     t49,space1     1
;                                   texture    byte         r/o     T17     t50,space1     1
;                                   texture    byte         r/o     T18     t51,space1     1
;                                   texture    byte         r/o     T19     t52,space1     1
;                                   texture    byte         r/o     T20      t3,space1     1
;                                   texture    byte         r/o     T21      t4,space1     1
;                                   texture    byte         r/o     T22      t5,space1     1
;                                   texture    byte         r/o     T23      t6,space1     1
;                                   texture     f32          2d     T24     t37,space2     1
;                                   texture     f32          2d     T25             t0     1
;                                   texture     f32          2d     T26     t58,space2     1
;                                   texture     f32          2d     T27     t59,space2     1
;                                   texture     f32          2d     T28     t60,space2     1
;                                   texture    byte         r/o     T29     t45,space1     1
;                                   texture    byte         r/o     T30     t46,space1     1
;                                   texture    byte         r/o     T31     t47,space1     1
;                                   texture    byte         r/o     T32     t48,space1     1
;                                   texture     f32          2d     T33     t57,space2     1
;                                   texture    byte         r/o     T34     t69,space1     1
;                                   texture     u32          2d     T35     t56,space2     1
;                                   texture     f32     2darray     T36     t35,space2     1
;                                   texture     f32          3d     T37     t31,space2     1
;                                   texture    byte         r/o     T38     t10,space1     1
;                                   texture    byte         r/o     T39      t1,space1     1
;                                   texture     f32          1d     T40     t32,space2     1
;                                   texture     f32     2darray     T41      t8,space2     1
;                                   texture     f32          2d     T42      t2,space2     1
;                                   texture     f32          2d     T43      t3,space2     1
;                                   texture     f32          2d     T44      t4,space2     1
;                                   textureunorm_f32     2darray     T45     t80,space2     1
;                                   texture    byte         r/o     T46     t67,space1     1
;                                   texture     f32          2d     T47      t7,space2     1
;                                   texture     f32          2d     T48      t6,space2     1
;                                   texture     f32          2d     T49      t5,space2     1
;                                   texture     f32          2d     T50     t38,space2     1
;                                   texture    byte         r/o     T51     t12,space1     1
;                                   texture    byte         r/o     T52     t13,space1     1
;                                   texture     f32          1d     T53     t30,space2     1
;                                   texture     f32          3d     T54     t44,space2     1
;                                   texture     f32          3d     T55     t45,space2     1
;                                   texture     f32     2darray     T56     t47,space2     1
;                                   textureunorm_f32     2darray     T57     t85,space2     1
;                                   texture     f32          2d     T58     t83,space2     1
;                                   texture     f32          2d     T59     t86,space2     1
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 59, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 58, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = alloca [4 x i32], align 4
  %67 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = alloca [12 x float], align 4
  %87 = alloca [12 x float], align 4
  %88 = alloca [4 x float], align 4
  %89 = alloca [4 x float], align 4
  %90 = alloca [4 x float], align 4
  %91 = alloca [3 x float], align 4
  %92 = alloca [3 x float], align 4
  %93 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %94 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fmul fast float %96, %82
  %98 = fmul fast float %96, %83
  %99 = fmul fast float %74, %71
  %100 = fmul fast float %75, %70
  %101 = fsub fast float %99, %100
  %102 = fmul fast float %75, %69
  %103 = fmul fast float %73, %71
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %73, %70
  %106 = fmul fast float %74, %69
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %101, %72
  %109 = fmul fast float %104, %72
  %110 = fmul fast float %107, %72
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %112, 2.000000e+00
  %115 = fmul fast float %114, %97
  %116 = fmul fast float %113, 2.000000e+00
  %117 = fmul fast float %116, %98
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %118, %121
  %125 = fmul fast float %118, %122
  %126 = fmul fast float %118, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fmul fast float %119, %128
  %132 = fmul fast float %119, %129
  %133 = fmul fast float %119, %130
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fadd fast float %131, %135
  %139 = fadd fast float %138, %124
  %140 = fadd fast float %132, %136
  %141 = fadd fast float %140, %125
  %142 = fadd fast float %133, %137
  %143 = fadd fast float %142, %126
  %144 = fmul fast float %139, %85
  %145 = fmul fast float %141, %85
  %146 = fmul fast float %143, %85
  %147 = fadd fast float %78, 5.000000e-01
  %148 = fptoui float %147 to i32
  %149 = shl i32 %148, 3
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = or i32 %149, 4
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %152, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = and i32 %151, 8191
  %156 = lshr i32 %151, 13
  %157 = and i32 %156, 8191
  %158 = lshr i32 %151, 26
  %159 = and i32 %154, 65535
  %160 = lshr i32 %154, 16
  %161 = uitofp i32 %159 to float
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %164 = uitofp i32 %160 to float
  %165 = uitofp i32 %155 to float
  %166 = fmul fast float %163, %165
  %167 = uitofp i32 %157 to float
  %168 = fmul fast float %163, %167
  %169 = fmul fast float %163, %76
  %170 = fmul fast float %169, %161
  %171 = fmul fast float %163, %77
  %172 = fmul fast float %171, %164
  %173 = fadd fast float %170, %166
  %174 = fadd fast float %168, %172
  %175 = uitofp i32 %158 to float
  %176 = fmul fast float %97, 5.000000e-01
  %177 = fmul fast float %98, 5.000000e-01
  %178 = fptosi float %176 to i32
  %179 = fptosi float %177 to i32
  %180 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %178, i32 %179, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = lshr i32 %181, 18
  %183 = uitofp i32 %182 to float
  %184 = fmul fast float %183, 0x3F4C00EBA0000000
  %185 = call float @dx.op.unary.f32(i32 21, float %184)  ; Exp(value)
  %186 = fadd fast float %185, -1.000000e+00
  %187 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %188 = extractvalue %dx.types.Dimensions %187, 0
  %189 = sitofp i32 %188 to float
  %190 = extractvalue %dx.types.Dimensions %187, 1
  %191 = sitofp i32 %190 to float
  %192 = fcmp fast oge float %176, %189
  %193 = fcmp fast oge float %177, %191
  %194 = or i1 %192, %193
  %195 = select i1 %194, float 0x4197782600000000, float %186
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 3
  %199 = fmul fast float %197, %97
  %200 = fmul fast float %198, %98
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = and i32 %202, 114688
  %204 = icmp ne i32 %203, 0
  %205 = select i1 %204, float %199, float 0.000000e+00
  %206 = select i1 %204, float %200, float 0.000000e+00
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %62, float %205, float %206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fmul fast float %208, 2.550000e+02
  %210 = fptoui float %209 to i32
  %211 = select i1 %204, i32 %210, i32 0
  %212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.i32 %212, 3
  %214 = and i32 %213, 3
  %215 = icmp ne i32 %214, 0
  %216 = and i32 %213, 4
  %217 = icmp ne i32 %216, 0
  %218 = and i1 %215, %217
  br i1 %218, label %219, label %228

; <label>:219                                     ; preds = %0
  %220 = fmul fast float %113, %98
  %221 = fmul fast float %112, %97
  %222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %61, float %221, float %220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = fsub fast float 1.000000e+00, %223
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = fcmp fast olt float %224, %226
  br label %236

; <label>:228                                     ; preds = %0
  %229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.i32 %229, 3
  %231 = and i32 %230, 3
  %232 = icmp ne i32 %231, 0
  %233 = and i32 %230, 4
  %234 = icmp eq i32 %233, 0
  %235 = and i1 %232, %234
  br label %236

; <label>:236                                     ; preds = %228, %219
  %237 = phi i1 [ %227, %219 ], [ %235, %228 ]
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 2
  %240 = fmul fast float %239, 0x3FE3C6EF40000000
  %241 = frem fast float %97, 2.560000e+02
  %242 = frem fast float %98, 2.560000e+02
  %243 = fptoui float %241 to i32
  %244 = fptoui float %242 to i32
  %245 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %243, i32 %244, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = fadd fast float %246, %240
  %248 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %249 = add i32 %68, 60
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %261 = add i32 %68, 72
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %275 = add i32 %68, 36
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %68, 96
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = fmul fast float %286, 0x3F50624DE0000000
  %290 = fmul fast float %288, 0x3F50624DE0000000
  %291 = add i32 %68, 108
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 2
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %305, label %296

; <label>:296                                     ; preds = %236
  %297 = add i32 %68, 180
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = add i32 %299, 0
  %301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %302 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %301, %dx.types.Handle %94, float %79, float %80, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 3
  %304 = fmul fast float %303, %81
  br label %305

; <label>:305                                     ; preds = %296, %236
  %306 = phi float [ %81, %236 ], [ %304, %296 ]
  %307 = add i32 %68, 24
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = add i32 %68, 28
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = or i32 %312, %309
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %1024, label %315

; <label>:315                                     ; preds = %305
  %316 = add i32 %68, 92
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = lshr i32 %318, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %320, 0x3F50624DE0000000
  %322 = add i32 %68, 40
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = lshr i32 %324, 16
  %326 = and i32 %325, 255
  %327 = lshr i32 %324, 24
  %328 = add i32 %68, 100
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %330, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %68, 32
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = lshr i32 %337, 22
  %339 = shl nuw nsw i32 %338, 5
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = shl i32 %337, 4
  %342 = and i32 %341, 32752
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %337, 7
  %345 = and i32 %344, 32752
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 3
  %349 = fmul fast float %348, 1.000000e+03
  %350 = fmul fast float %289, %349
  %351 = call float @dx.op.unary.f32(i32 22, float %350)  ; Frc(value)
  %352 = fadd fast float %351, %279
  %353 = fmul fast float %290, %349
  %354 = call float @dx.op.unary.f32(i32 22, float %353)  ; Frc(value)
  %355 = fadd fast float %354, %281
  %356 = fmul fast float %321, %349
  %357 = call float @dx.op.unary.f32(i32 22, float %356)  ; Frc(value)
  %358 = fmul fast float %357, 0x401921FB60000000
  %359 = fadd fast float %358, %340
  %360 = call float @dx.op.unary.f32(i32 13, float %359)  ; Sin(value)
  %361 = call float @dx.op.unary.f32(i32 12, float %359)  ; Cos(value)
  %362 = fsub fast float -0.000000e+00, %360
  %363 = fadd fast float %79, -5.000000e-01
  %364 = fadd fast float %80, -5.000000e-01
  %365 = fmul fast float %332, %363
  %366 = fmul fast float %334, %364
  %367 = fadd fast float %365, 5.000000e-01
  %368 = fadd fast float %366, 5.000000e-01
  %369 = fmul fast float %343, %367
  %370 = fmul fast float %346, %368
  %371 = fmul fast float %361, %369
  %372 = call float @dx.op.tertiary.f32(i32 46, float %362, float %370, float %371)  ; FMad(a,b,c)
  %373 = fmul fast float %360, %369
  %374 = call float @dx.op.tertiary.f32(i32 46, float %361, float %370, float %373)  ; FMad(a,b,c)
  %375 = fadd fast float %352, %372
  %376 = fadd fast float %355, %374
  %377 = icmp ugt i32 %326, 1
  %378 = icmp ugt i32 %324, 33554431
  %379 = or i1 %378, %377
  br i1 %379, label %380, label %405

; <label>:380                                     ; preds = %315
  %381 = add i32 %68, 84
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = lshr i32 %383, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = fmul fast float %348, %385
  %387 = call float @dx.op.unary.f32(i32 22, float %386)  ; Frc(value)
  %388 = mul nuw nsw i32 %326, %327
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %387, %389
  %391 = call float @dx.op.unary.f32(i32 27, float %390)  ; Round_ni(value)
  %392 = fptoui float %391 to i32
  %393 = urem i32 %392, %326
  %394 = udiv i32 %392, %327
  %395 = call float @dx.op.unary.f32(i32 22, float %375)  ; Frc(value)
  %396 = call float @dx.op.unary.f32(i32 22, float %376)  ; Frc(value)
  %397 = uitofp i32 %393 to float
  %398 = uitofp i32 %394 to float
  %399 = fadd fast float %395, %397
  %400 = fadd fast float %396, %398
  %401 = uitofp i32 %326 to float
  %402 = uitofp i32 %327 to float
  %403 = fdiv fast float %399, %401
  %404 = fdiv fast float %400, %402
  br label %405

; <label>:405                                     ; preds = %380, %315
  %406 = phi float [ %403, %380 ], [ %375, %315 ]
  %407 = phi float [ %404, %380 ], [ %376, %315 ]
  %408 = and i32 %309, 16777216
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %519, label %410

; <label>:410                                     ; preds = %405
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %415 = fadd fast float %412, %144
  %416 = fadd fast float %413, %145
  %417 = fadd fast float %414, %146
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 0
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = icmp eq i32 %67, 65535
  br i1 %421, label %516, label %422

; <label>:422                                     ; preds = %410
  %423 = lshr i32 %67, 1
  %424 = shl i32 %423, 2
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %67, 1
  %428 = icmp ne i32 %427, 0
  %429 = lshr i32 %426, 16
  %430 = and i32 %426, 65535
  %431 = select i1 %428, i32 %429, i32 %430
  %432 = icmp eq i32 %431, 65535
  br i1 %432, label %512, label %433

; <label>:433                                     ; preds = %422
  %434 = mul nuw nsw i32 %431, 40
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = add nuw nsw i32 %434, 12
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = add nuw nsw i32 %434, 24
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = extractvalue %dx.types.ResRet.f32 %445, 2
  %449 = add nuw nsw i32 %434, 36
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = fsub fast float %415, %436
  %453 = fsub fast float %416, %437
  %454 = fsub fast float %417, %438
  %455 = fmul fast float %451, %452
  %456 = fmul fast float %451, %453
  %457 = fmul fast float %451, %454
  %458 = call float @dx.op.unary.f32(i32 27, float %455)  ; Round_ni(value)
  %459 = call float @dx.op.unary.f32(i32 27, float %456)  ; Round_ni(value)
  %460 = call float @dx.op.unary.f32(i32 27, float %457)  ; Round_ni(value)
  %461 = fadd fast float %458, 5.000000e-01
  %462 = fadd fast float %459, 5.000000e-01
  %463 = fadd fast float %460, 5.000000e-01
  %464 = fmul fast float %461, %441
  %465 = fmul fast float %462, %442
  %466 = fmul fast float %463, %443
  %467 = shl i32 %67, 2
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = add i32 %469, 0
  %471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %472 = call float @dx.op.unary.f32(i32 22, float %464)  ; Frc(value)
  %473 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %474 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %471, %dx.types.Handle %62, float %472, float %473, float %474, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 2
  %479 = fmul fast float %476, 1.023000e+03
  %480 = fmul fast float %477, 1.023000e+03
  %481 = fmul fast float %478, 1.023000e+03
  %482 = fadd fast float %479, 5.000000e-01
  %483 = fadd fast float %480, 5.000000e-01
  %484 = fadd fast float %481, 5.000000e-01
  %485 = call float @dx.op.unary.f32(i32 27, float %482)  ; Round_ni(value)
  %486 = call float @dx.op.unary.f32(i32 27, float %483)  ; Round_ni(value)
  %487 = call float @dx.op.unary.f32(i32 27, float %484)  ; Round_ni(value)
  %488 = fsub fast float %455, %458
  %489 = fsub fast float %456, %459
  %490 = fsub fast float %457, %460
  %491 = fmul fast float %488, 7.500000e-01
  %492 = fmul fast float %489, 7.500000e-01
  %493 = fmul fast float %490, 7.500000e-01
  %494 = fadd fast float %458, 1.250000e-01
  %495 = fadd fast float %494, %491
  %496 = fadd fast float %495, %485
  %497 = fadd fast float %459, 1.250000e-01
  %498 = fadd fast float %497, %492
  %499 = fadd fast float %498, %486
  %500 = fadd fast float %460, 1.250000e-01
  %501 = fadd fast float %500, %493
  %502 = fadd fast float %501, %487
  %503 = fmul fast float %496, %446
  %504 = fmul fast float %499, %447
  %505 = fmul fast float %502, %448
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = add i32 %507, 0
  %509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %509, %dx.types.Handle %60, float %503, float %504, float %505, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  br label %512

; <label>:512                                     ; preds = %433, %422
  %513 = phi float [ %511, %433 ], [ -1.000000e+00, %422 ]
  %514 = fadd fast float %513, %420
  %515 = call float @dx.op.unary.f32(i32 7, float %514)  ; Saturate(value)
  br label %516

; <label>:516                                     ; preds = %512, %410
  %517 = phi float [ %515, %512 ], [ %420, %410 ]
  %518 = fmul fast float %517, %306
  br label %519

; <label>:519                                     ; preds = %516, %405
  %520 = phi float [ %518, %516 ], [ %306, %405 ]
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = and i32 %522, 256
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %571, label %525

; <label>:525                                     ; preds = %519
  %526 = add i32 %68, 168
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = add i32 %528, 0
  %530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %530, %dx.types.Handle %94, float %406, float %407, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = add i32 %68, 52
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = shl i32 %535, 4
  %537 = and i32 %536, 32752
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = lshr i32 %535, 7
  %540 = and i32 %539, 32752
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = fsub fast float 1.000000e+00, %520
  %543 = call float @dx.op.binary.f32(i32 35, float %542, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %544 = bitcast float %520 to i32
  %545 = sitofp i32 %544 to float
  %546 = fadd fast float %545, 0xC1CFBF8940000000
  %547 = fmul fast float %541, %546
  %548 = fadd fast float %547, 0x41CFBF8940000000
  %549 = fptosi float %548 to i32
  %550 = bitcast i32 %549 to float
  %551 = bitcast float %543 to i32
  %552 = sitofp i32 %551 to float
  %553 = fadd fast float %552, 0xC1CFBF8940000000
  %554 = fmul fast float %553, %541
  %555 = fadd fast float %554, 0x41CFBF8940000000
  %556 = fptosi float %555 to i32
  %557 = bitcast i32 %556 to float
  %558 = fmul fast float %550, %538
  %559 = fmul fast float %557, %538
  %560 = fsub fast float %543, %558
  %561 = fadd fast float %559, %543
  %562 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %563 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %564 = fsub fast float %532, %562
  %565 = fsub fast float %563, %562
  %566 = bitcast float %565 to i32
  %567 = sub nsw i32 2129859010, %566
  %568 = bitcast i32 %567 to float
  %569 = fmul fast float %568, %564
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  br label %571

; <label>:571                                     ; preds = %525, %519
  %572 = phi float [ %570, %525 ], [ %520, %519 ]
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 128
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %593, label %577

; <label>:577                                     ; preds = %571
  %578 = add i32 %68, 164
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = add i32 %580, 0
  %582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %582, %dx.types.Handle %94, float %406, float %407, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 524288
  %588 = icmp ne i32 %587, 0
  %589 = fcmp fast ogt float %584, 0x3FE0101020000000
  %590 = select i1 %589, float 1.000000e+00, float 0.000000e+00
  %591 = select i1 %588, float %590, float %584
  %592 = fmul fast float %591, %572
  br label %593

; <label>:593                                     ; preds = %577, %571
  %594 = phi float [ %592, %577 ], [ %572, %571 ]
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 16
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %797, label %599

; <label>:599                                     ; preds = %593
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = add i32 %68, 152
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = add i32 %604, 0
  %606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %605, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %607 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %606, %dx.types.Handle %93, float %406, float %407, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = extractvalue %dx.types.ResRet.f32 %607, 3
  %612 = and i32 %601, 255
  %613 = uitofp i32 %612 to float
  %614 = lshr i32 %601, 8
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %611, %613
  %618 = fadd fast float %617, %616
  %619 = fmul fast float %618, 0x3F70101000000000
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = and i32 %621, 512
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %632, label %624

; <label>:624                                     ; preds = %599
  %625 = add i32 %68, 172
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = add i32 %627, 0
  %629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %630 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %629, %dx.types.Handle %94, float %406, float %407, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  br label %632

; <label>:632                                     ; preds = %624, %599
  %633 = phi float [ %631, %624 ], [ 1.000000e+00, %599 ]
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = and i32 %635, 33554432
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %744, label %638

; <label>:638                                     ; preds = %632
  %639 = add i32 %68, 80
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = and i32 %641, 65535
  %643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %642)  ; LegacyF16ToF32(value)
  %644 = lshr i32 %641, 16
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = add i32 %68, 84
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = and i32 %648, 65535
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = lshr i32 %652, 24
  %654 = uitofp i32 %653 to float
  %655 = fmul fast float %654, 0x3F70101020000000
  %656 = and i32 %652, 255
  %657 = uitofp i32 %656 to float
  %658 = fmul fast float %657, 0x3F70101020000000
  %659 = lshr i32 %652, 8
  %660 = and i32 %659, 255
  %661 = uitofp i32 %660 to float
  %662 = fmul fast float %661, 0x3F70101020000000
  %663 = lshr i32 %652, 16
  %664 = and i32 %663, 255
  %665 = uitofp i32 %664 to float
  %666 = fmul fast float %665, 0x3F70101020000000
  %667 = add i32 %68, 76
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = lshr i32 %669, 24
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F70101020000000
  %673 = and i32 %669, 255
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F70101020000000
  %676 = lshr i32 %669, 8
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F70101020000000
  %680 = lshr i32 %669, 16
  %681 = and i32 %680, 255
  %682 = uitofp i32 %681 to float
  %683 = fmul fast float %682, 0x3F70101020000000
  %684 = bitcast float %608 to i32
  %685 = ashr i32 %684, 1
  %686 = sub nsw i32 1597463174, %685
  %687 = bitcast i32 %686 to float
  %688 = fmul fast float %608, 5.000000e-01
  %689 = fmul fast float %687, %687
  %690 = fmul fast float %689, %688
  %691 = fsub fast float 1.500000e+00, %690
  %692 = fmul fast float %687, %608
  %693 = fmul fast float %692, %691
  %694 = bitcast float %609 to i32
  %695 = ashr i32 %694, 1
  %696 = sub nsw i32 1597463174, %695
  %697 = bitcast i32 %696 to float
  %698 = fmul fast float %609, 5.000000e-01
  %699 = fmul fast float %697, %697
  %700 = fmul fast float %699, %698
  %701 = fsub fast float 1.500000e+00, %700
  %702 = fmul fast float %697, %609
  %703 = fmul fast float %702, %701
  %704 = bitcast float %610 to i32
  %705 = ashr i32 %704, 1
  %706 = sub nsw i32 1597463174, %705
  %707 = bitcast i32 %706 to float
  %708 = fmul fast float %610, 5.000000e-01
  %709 = fmul fast float %707, %707
  %710 = fmul fast float %709, %708
  %711 = fsub fast float 1.500000e+00, %710
  %712 = fmul fast float %707, %610
  %713 = fmul fast float %712, %711
  %714 = fsub fast float %693, %675
  %715 = fsub fast float %703, %679
  %716 = fsub fast float %713, %683
  %717 = fmul fast float %714, %643
  %718 = fmul fast float %715, %645
  %719 = fmul fast float %716, %650
  %720 = fadd fast float %717, %658
  %721 = fadd fast float %718, %662
  %722 = fadd fast float %719, %666
  %723 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %724 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %725 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %726 = fmul fast float %723, %723
  %727 = fmul fast float %724, %724
  %728 = fmul fast float %725, %725
  %729 = fsub fast float %726, %608
  %730 = fsub fast float %727, %609
  %731 = fsub fast float %728, %610
  %732 = fmul fast float %729, %633
  %733 = fmul fast float %730, %633
  %734 = fmul fast float %731, %633
  %735 = fadd fast float %732, %608
  %736 = fadd fast float %733, %609
  %737 = fadd fast float %734, %610
  %738 = fadd fast float %655, %619
  %739 = fsub fast float %738, %672
  %740 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %741 = fsub fast float %740, %619
  %742 = fmul fast float %741, %633
  %743 = fadd fast float %742, %619
  br label %797

; <label>:744                                     ; preds = %632
  %745 = and i32 %635, 134217728
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %781, label %747

; <label>:747                                     ; preds = %744
  %748 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %749 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %750 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %751 = fadd fast float %748, -5.000000e-01
  %752 = fadd fast float %749, -5.000000e-01
  %753 = fadd fast float %750, -5.000000e-01
  %754 = fmul fast float %751, %633
  %755 = fmul fast float %752, %633
  %756 = fmul fast float %753, %633
  %757 = fadd fast float %754, 5.000000e-01
  %758 = fadd fast float %755, 5.000000e-01
  %759 = fadd fast float %756, 5.000000e-01
  %760 = call float @dx.op.unary.f32(i32 24, float %608)  ; Sqrt(value)
  %761 = call float @dx.op.unary.f32(i32 24, float %609)  ; Sqrt(value)
  %762 = call float @dx.op.unary.f32(i32 24, float %610)  ; Sqrt(value)
  %763 = fmul fast float %757, 2.000000e+00
  %764 = fsub fast float 1.000000e+00, %763
  %765 = fmul fast float %764, %760
  %766 = fadd fast float %765, %763
  %767 = fmul fast float %766, %760
  %768 = fmul fast float %758, 2.000000e+00
  %769 = fsub fast float 1.000000e+00, %768
  %770 = fmul fast float %769, %761
  %771 = fadd fast float %770, %768
  %772 = fmul fast float %771, %761
  %773 = fmul fast float %759, 2.000000e+00
  %774 = fsub fast float 1.000000e+00, %773
  %775 = fmul fast float %774, %762
  %776 = fadd fast float %775, %773
  %777 = fmul fast float %776, %762
  %778 = fmul fast float %767, %767
  %779 = fmul fast float %772, %772
  %780 = fmul fast float %777, %777
  br label %797

; <label>:781                                     ; preds = %744
  %782 = fmul fast float %266, %266
  %783 = fmul fast float %270, %270
  %784 = fmul fast float %274, %274
  %785 = fadd fast float %782, -1.000000e+00
  %786 = fadd fast float %783, -1.000000e+00
  %787 = fadd fast float %784, -1.000000e+00
  %788 = fmul fast float %633, %785
  %789 = fmul fast float %633, %786
  %790 = fmul fast float %633, %787
  %791 = fadd fast float %788, 1.000000e+00
  %792 = fadd fast float %789, 1.000000e+00
  %793 = fadd fast float %790, 1.000000e+00
  %794 = fmul fast float %791, %608
  %795 = fmul fast float %792, %609
  %796 = fmul fast float %793, %610
  br label %797

; <label>:797                                     ; preds = %781, %747, %638, %593
  %798 = phi float [ %743, %638 ], [ %619, %747 ], [ %619, %781 ], [ 0x3FA23C0BE0000000, %593 ]
  %799 = phi float [ %735, %638 ], [ %778, %747 ], [ %794, %781 ], [ 1.000000e+00, %593 ]
  %800 = phi float [ %736, %638 ], [ %779, %747 ], [ %795, %781 ], [ 1.000000e+00, %593 ]
  %801 = phi float [ %737, %638 ], [ %780, %747 ], [ %796, %781 ], [ 1.000000e+00, %593 ]
  %802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.i32 %802, 1
  %804 = and i32 %803, 1
  %805 = icmp ne i32 %804, 0
  %806 = add i32 %68, 116
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 32
  %810 = icmp ne i32 %809, 0
  %811 = and i1 %805, %810
  %812 = select i1 %811, float 1.000000e+00, float %799
  %813 = select i1 %811, float 0x3FD3333340000000, float %800
  %814 = select i1 %811, float 0x3FD3333340000000, float %801
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 32
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %959, label %819

; <label>:819                                     ; preds = %797
  %820 = add i32 %68, 44
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = add i32 %68, 156
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = add i32 %825, 0
  %827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %826, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %828 = add i32 %68, 120
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = extractvalue %dx.types.ResRet.i32 %829, 1
  %832 = extractvalue %dx.types.ResRet.i32 %829, 2
  %833 = extractvalue %dx.types.ResRet.i32 %829, 3
  %834 = bitcast i32 %831 to float
  %835 = bitcast i32 %832 to float
  %836 = bitcast i32 %833 to float
  %837 = add i32 %68, 136
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = extractvalue %dx.types.ResRet.i32 %838, 1
  %841 = extractvalue %dx.types.ResRet.i32 %838, 2
  %842 = extractvalue %dx.types.ResRet.i32 %838, 3
  %843 = bitcast i32 %840 to float
  %844 = bitcast i32 %841 to float
  %845 = bitcast i32 %842 to float
  %846 = fmul fast float %834, %406
  %847 = fmul fast float %834, %407
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 3
  %850 = fmul fast float %849, %835
  %851 = fmul fast float %849, %836
  %852 = fadd fast float %850, %846
  %853 = fadd fast float %851, %847
  %854 = fmul fast float %843, %406
  %855 = fmul fast float %843, %407
  %856 = fmul fast float %849, %844
  %857 = fmul fast float %849, %845
  %858 = fadd fast float %856, %854
  %859 = fadd fast float %857, %855
  %860 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %827, i32 0)  ; GetDimensions(handle,mipLevel)
  %861 = extractvalue %dx.types.Dimensions %860, 3
  %862 = sitofp i32 %861 to float
  %863 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %827, %dx.types.Handle %93, float %852, float %853, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %864 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %827, %dx.types.Handle %93, float %858, float %859, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %865 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %827, %dx.types.Handle %93, float %852, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = extractvalue %dx.types.ResRet.f32 %865, 1
  %868 = extractvalue %dx.types.ResRet.f32 %865, 2
  %869 = extractvalue %dx.types.ResRet.f32 %865, 3
  %870 = and i32 %822, 255
  %871 = uitofp i32 %870 to float
  %872 = lshr i32 %822, 8
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = lshr i32 %822, 16
  %876 = and i32 %875, 255
  %877 = uitofp i32 %876 to float
  %878 = fmul fast float %877, 0x3F70101000000000
  %879 = fmul fast float %866, %871
  %880 = fadd fast float %879, %874
  %881 = fadd fast float %867, -5.000000e-01
  %882 = fadd fast float %869, -5.000000e-01
  %883 = fmul fast float %881, %878
  %884 = fmul fast float %882, %878
  %885 = fadd fast float %883, 5.000000e-01
  %886 = fadd fast float %884, 5.000000e-01
  %887 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %827, %dx.types.Handle %93, float %858, float %859, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = extractvalue %dx.types.ResRet.f32 %887, 1
  %890 = extractvalue %dx.types.ResRet.f32 %887, 2
  %891 = extractvalue %dx.types.ResRet.f32 %887, 3
  %892 = fmul fast float %888, %871
  %893 = fadd fast float %892, %874
  %894 = fadd fast float %889, -5.000000e-01
  %895 = fadd fast float %891, -5.000000e-01
  %896 = fmul fast float %894, %878
  %897 = fmul fast float %895, %878
  %898 = fadd fast float %896, 5.000000e-01
  %899 = fadd fast float %897, 5.000000e-01
  %900 = fmul fast float %885, 2.000000e+00
  %901 = fadd fast float %900, -1.000000e+00
  %902 = fmul fast float %886, 2.000000e+00
  %903 = fadd fast float %902, -1.000000e+00
  %904 = fadd fast float %901, %903
  %905 = fmul fast float %904, 5.000000e-01
  %906 = fsub fast float %901, %903
  %907 = fmul fast float %906, 5.000000e-01
  %908 = call float @dx.op.unary.f32(i32 6, float %905)  ; FAbs(value)
  %909 = fsub fast float 1.000000e+00, %908
  %910 = call float @dx.op.unary.f32(i32 6, float %907)  ; FAbs(value)
  %911 = fsub fast float %909, %910
  %912 = call float @dx.op.dot3.f32(i32 55, float %905, float %907, float %911, float %905, float %907, float %911)  ; Dot3(ax,ay,az,bx,by,bz)
  %913 = call float @dx.op.unary.f32(i32 25, float %912)  ; Rsqrt(value)
  %914 = fmul fast float %898, 2.000000e+00
  %915 = fadd fast float %914, -1.000000e+00
  %916 = fmul fast float %899, 2.000000e+00
  %917 = fadd fast float %916, -1.000000e+00
  %918 = fadd fast float %915, %917
  %919 = fmul fast float %918, 5.000000e-01
  %920 = fsub fast float %915, %917
  %921 = fmul fast float %920, 5.000000e-01
  %922 = call float @dx.op.unary.f32(i32 6, float %919)  ; FAbs(value)
  %923 = fsub fast float 1.000000e+00, %922
  %924 = call float @dx.op.unary.f32(i32 6, float %921)  ; FAbs(value)
  %925 = fsub fast float %923, %924
  %926 = call float @dx.op.dot3.f32(i32 55, float %919, float %921, float %925, float %919, float %921, float %925)  ; Dot3(ax,ay,az,bx,by,bz)
  %927 = call float @dx.op.unary.f32(i32 25, float %926)  ; Rsqrt(value)
  %928 = fadd fast float %862, -1.000000e+00
  %929 = fsub fast float %928, %863
  %930 = fmul fast float %929, 5.000000e-01
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = fsub fast float %928, %864
  %933 = fmul fast float %932, 5.000000e-01
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = bitcast i32 %830 to float
  %936 = bitcast i32 %839 to float
  %937 = fmul fast float %905, %935
  %938 = fmul fast float %937, %913
  %939 = fmul fast float %938, %931
  %940 = fmul fast float %907, %935
  %941 = fmul fast float %940, %913
  %942 = fmul fast float %941, %931
  %943 = fmul fast float %927, %936
  %944 = fmul fast float %943, %919
  %945 = fmul fast float %944, %934
  %946 = fmul fast float %943, %921
  %947 = fmul fast float %946, %934
  %948 = fadd fast float %945, %939
  %949 = fadd fast float %947, %942
  %950 = fmul fast float %868, %935
  %951 = fmul fast float %890, %936
  %952 = fadd fast float %951, %950
  %953 = fmul fast float %880, %935
  %954 = fmul fast float %893, %936
  %955 = fadd fast float %954, %953
  %956 = fmul fast float %955, 0x3F70101000000000
  %957 = call float @dx.op.dot2.f32(i32 54, float %948, float %949, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %958 = call float @dx.op.dot2.f32(i32 54, float %948, float %949, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %959

; <label>:959                                     ; preds = %819, %797
  %960 = phi float [ %956, %819 ], [ 0x3FD6666660000000, %797 ]
  %961 = phi float [ %957, %819 ], [ 0.000000e+00, %797 ]
  %962 = phi float [ %958, %819 ], [ 0.000000e+00, %797 ]
  %963 = phi float [ %952, %819 ], [ 1.000000e+00, %797 ]
  %964 = add i32 %68, 64
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = lshr i32 %966, 22
  %968 = shl nuw nsw i32 %967, 5
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = and i32 %971, 64
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %1007, label %974

; <label>:974                                     ; preds = %959
  %975 = add i32 %68, 160
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = add i32 %977, 0
  %979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 131072
  %983 = icmp eq i32 %982, 0
  %984 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %979, %dx.types.Handle %93, float %406, float %407, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %985 = extractvalue %dx.types.ResRet.f32 %984, 0
  %986 = extractvalue %dx.types.ResRet.f32 %984, 1
  %987 = extractvalue %dx.types.ResRet.f32 %984, 2
  %988 = fmul fast float %985, %254
  %989 = fmul fast float %986, %257
  %990 = fmul fast float %987, %260
  br i1 %983, label %997, label %991

; <label>:991                                     ; preds = %974
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = fmul fast float %993, %988
  %995 = fmul fast float %993, %989
  %996 = fmul fast float %993, %990
  br label %997

; <label>:997                                     ; preds = %991, %974
  %998 = phi float [ %994, %991 ], [ %988, %974 ]
  %999 = phi float [ %995, %991 ], [ %989, %974 ]
  %1000 = phi float [ %996, %991 ], [ %990, %974 ]
  %1001 = fmul fast float %998, %969
  %1002 = select i1 %237, float %1001, float %998
  %1003 = call float @dx.op.dot3.f32(i32 55, float %1002, float %999, float %1000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = select i1 %237, float 0.000000e+00, float %998
  %1005 = select i1 %237, float %1003, float %999
  %1006 = select i1 %237, float 0.000000e+00, float %1000
  br label %1007

; <label>:1007                                    ; preds = %997, %959
  %1008 = phi float [ %1004, %997 ], [ 0.000000e+00, %959 ]
  %1009 = phi float [ %1005, %997 ], [ 0.000000e+00, %959 ]
  %1010 = phi float [ %1006, %997 ], [ 0.000000e+00, %959 ]
  %1011 = add i32 %68, 48
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = and i32 %1013, 255
  %1015 = uitofp i32 %1014 to float
  %1016 = lshr i32 %1013, 8
  %1017 = and i32 %1016, 255
  %1018 = uitofp i32 %1017 to float
  %1019 = call float @dx.op.dot3.f32(i32 55, float %812, float %813, float %814, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1020 = fmul fast float %1018, %1019
  %1021 = fadd fast float %1020, %1015
  %1022 = fmul fast float %1021, 0x3F70101020000000
  %1023 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  br label %1024

; <label>:1024                                    ; preds = %1007, %305
  %1025 = phi float [ 0.000000e+00, %305 ], [ %961, %1007 ]
  %1026 = phi float [ 0.000000e+00, %305 ], [ %962, %1007 ]
  %1027 = phi float [ 0.000000e+00, %305 ], [ %812, %1007 ]
  %1028 = phi float [ 0.000000e+00, %305 ], [ %813, %1007 ]
  %1029 = phi float [ 0.000000e+00, %305 ], [ %814, %1007 ]
  %1030 = phi float [ 0.000000e+00, %305 ], [ %1008, %1007 ]
  %1031 = phi float [ 0.000000e+00, %305 ], [ %1009, %1007 ]
  %1032 = phi float [ 0.000000e+00, %305 ], [ %1010, %1007 ]
  %1033 = phi float [ 0.000000e+00, %305 ], [ %798, %1007 ]
  %1034 = phi float [ 0.000000e+00, %305 ], [ %594, %1007 ]
  %1035 = phi float [ 0.000000e+00, %305 ], [ %960, %1007 ]
  %1036 = phi float [ 0.000000e+00, %305 ], [ %963, %1007 ]
  %1037 = phi float [ 0.000000e+00, %305 ], [ %1023, %1007 ]
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1040 = call float @dx.op.dot2.f32(i32 54, float %1025, float %1026, float %1025, float %1026)  ; Dot2(ax,ay,bx,by)
  %1041 = fmul fast float %1040, 0x3FE3333340000000
  %1042 = fsub fast float 1.000000e+00, %1041
  %1043 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1026, float %1042, float %1025, float %1026, float %1042)  ; Dot3(ax,ay,az,bx,by,bz)
  %1044 = call float @dx.op.unary.f32(i32 25, float %1043)  ; Rsqrt(value)
  %1045 = fmul fast float %1044, %1025
  %1046 = fmul fast float %1044, %1026
  %1047 = fmul fast float %1042, %1044
  %1048 = fmul fast float %1047, %73
  %1049 = fmul fast float %1047, %74
  %1050 = fmul fast float %1047, %75
  %1051 = fmul fast float %1045, %69
  %1052 = fmul fast float %1045, %70
  %1053 = fmul fast float %1045, %71
  %1054 = fadd fast float %1048, %1051
  %1055 = fadd fast float %1049, %1052
  %1056 = fadd fast float %1050, %1053
  %1057 = fmul fast float %1046, %108
  %1058 = fmul fast float %1046, %109
  %1059 = fmul fast float %1046, %110
  %1060 = fadd fast float %1054, %1057
  %1061 = fadd fast float %1055, %1058
  %1062 = fadd fast float %1056, %1059
  %1063 = call float @dx.op.dot3.f32(i32 55, float %1060, float %1061, float %1062, float %1060, float %1061, float %1062)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = call float @dx.op.unary.f32(i32 25, float %1063)  ; Rsqrt(value)
  %1065 = fmul fast float %1060, %1064
  %1066 = fmul fast float %1061, %1064
  %1067 = fmul fast float %1062, %1064
  %1068 = fadd fast float %1033, 0xBFB99999A0000000
  %1069 = call float @dx.op.unary.f32(i32 7, float %1068)  ; Saturate(value)
  %1070 = fmul fast float %1069, 0x3FF1C71C80000000
  %1071 = call float @dx.op.binary.f32(i32 36, float %1033, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1072 = fsub fast float 1.000000e+00, %1070
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1074 = fmul fast float %1073, %1027
  %1075 = fmul fast float %1073, %1028
  %1076 = fmul fast float %1073, %1029
  %1077 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1078 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1079 = call float @dx.op.unary.f32(i32 7, float %1076)  ; Saturate(value)
  %1080 = fmul fast float %1070, %1027
  %1081 = fmul fast float %1070, %1028
  %1082 = fmul fast float %1070, %1029
  %1083 = fadd fast float %1080, %1071
  %1084 = fadd fast float %1081, %1071
  %1085 = fadd fast float %1082, %1071
  %1086 = call float @dx.op.unary.f32(i32 7, float %1083)  ; Saturate(value)
  %1087 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1088 = call float @dx.op.unary.f32(i32 7, float %1085)  ; Saturate(value)
  %1089 = call float @dx.op.unary.f32(i32 7, float %1035)  ; Saturate(value)
  %1090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.i32 %1090, 3
  %1092 = and i32 %1091, 8
  %1093 = icmp ne i32 %1092, 0
  %1094 = call float @dx.op.binary.f32(i32 35, float %1077, float %1027)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 35, float %1078, float %1027)  ; FMax(a,b)
  %1096 = call float @dx.op.binary.f32(i32 35, float %1079, float %1027)  ; FMax(a,b)
  %1097 = call float @dx.op.dot3.f32(i32 55, float %1077, float %1078, float %1079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = select i1 %237, float %1027, float %1077
  %1099 = select i1 %237, float %1097, float %1078
  %1100 = select i1 %237, float 1.000000e+00, float %1079
  %1101 = select i1 %1093, float %1094, float %1098
  %1102 = select i1 %1093, float %1095, float %1099
  %1103 = select i1 %1093, float %1096, float %1100
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.CBufRet.f32 %1104, 2
  %1108 = fadd fast float %1105, %144
  %1109 = fadd fast float %1106, %145
  %1110 = fadd fast float %1107, %146
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.CBufRet.f32 %1111, 1
  %1114 = fsub fast float %1108, %1112
  %1115 = fsub fast float %1109, %1113
  %1116 = fmul fast float %1114, %1114
  %1117 = fmul fast float %1115, %1115
  %1118 = fadd fast float %1116, %1117
  %1119 = call float @dx.op.unary.f32(i32 24, float %1118)  ; Sqrt(value)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1111, 2
  %1121 = fcmp fast olt float %1119, %1120
  br i1 %1121, label %1122, label %1189

; <label>:1122                                    ; preds = %1024
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1129 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1130 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1131 = extractvalue %dx.types.CBufRet.f32 %1127, 1
  %1132 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1133 = extractvalue %dx.types.CBufRet.f32 %1125, 3
  %1134 = extractvalue %dx.types.CBufRet.f32 %1127, 3
  %1135 = fadd fast float %1132, %1108
  %1136 = fadd fast float %1133, %1109
  %1137 = fadd fast float %1134, %1110
  %1138 = fmul fast float %1135, %1124
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %1126, float %1138)  ; FMad(a,b,c)
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %1128, float %1139)  ; FMad(a,b,c)
  %1141 = fmul fast float %1135, %1129
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %1136, float %1130, float %1141)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1137, float %1131, float %1142)  ; FMad(a,b,c)
  %1144 = fsub fast float %1140, %1132
  %1145 = fsub fast float %1143, %1133
  %1146 = fsub fast float %1144, %1112
  %1147 = fadd fast float %1146, %1120
  %1148 = fsub fast float %1145, %1113
  %1149 = fadd fast float %1148, %1120
  %1150 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1151 = fmul fast float %1147, %1150
  %1152 = fmul fast float %1149, %1150
  %1153 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1154 = call float @dx.op.unary.f32(i32 7, float %1152)  ; Saturate(value)
  %1155 = fsub fast float 1.000000e+00, %1153
  %1156 = fsub fast float 1.000000e+00, %1154
  %1157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %61, float %1155, float %1156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = fcmp fast ugt float %1158, 0.000000e+00
  br i1 %1159, label %1160, label %1463

; <label>:1160                                    ; preds = %1122
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 2
  %1163 = fmul fast float %1162, %1158
  %1164 = extractvalue %dx.types.CBufRet.f32 %1161, 3
  %1165 = fadd fast float %1164, %1163
  %1166 = extractvalue %dx.types.CBufRet.f32 %1127, 2
  %1167 = fadd fast float %1165, %1134
  %1168 = fmul fast float %1140, %1128
  %1169 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %1131, float %1168)  ; FMad(a,b,c)
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1167, float %1166, float %1169)  ; FMad(a,b,c)
  %1171 = fsub fast float %1170, %1134
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1174 = fsub fast float %1171, %1173
  %1175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %61, float %1155, float %1156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %61, float %1155, float %1156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1183 = fadd fast float %1180, %1176
  %1184 = fmul fast float %1183, 0x3F847AE140000000
  %1185 = fadd fast float %1181, %1177
  %1186 = fmul fast float %1185, 0x3F847AE140000000
  %1187 = fadd fast float %1182, %1178
  %1188 = fmul fast float %1187, 0x3F847AE140000000
  br label %1463

; <label>:1189                                    ; preds = %1024
  %1190 = and i32 %211, 1
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1463, label %1192

; <label>:1192                                    ; preds = %1189
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.CBufRet.f32 %1193, 1
  %1200 = extractvalue %dx.types.CBufRet.f32 %1195, 1
  %1201 = extractvalue %dx.types.CBufRet.f32 %1197, 1
  %1202 = extractvalue %dx.types.CBufRet.f32 %1193, 3
  %1203 = extractvalue %dx.types.CBufRet.f32 %1195, 3
  %1204 = extractvalue %dx.types.CBufRet.f32 %1197, 3
  %1205 = fadd fast float %1202, %1108
  %1206 = fadd fast float %1203, %1109
  %1207 = fadd fast float %1204, %1110
  %1208 = fmul fast float %1205, %1194
  %1209 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %1196, float %1208)  ; FMad(a,b,c)
  %1210 = call float @dx.op.tertiary.f32(i32 46, float %1207, float %1198, float %1209)  ; FMad(a,b,c)
  %1211 = fmul fast float %1205, %1199
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %1200, float %1211)  ; FMad(a,b,c)
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %1207, float %1201, float %1212)  ; FMad(a,b,c)
  %1214 = fsub fast float %1210, %1202
  %1215 = fsub fast float %1213, %1203
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.CBufRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.CBufRet.f32 %1216, 2
  %1220 = extractvalue %dx.types.CBufRet.f32 %1216, 3
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 3
  %1223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.i32 %1223, 0
  %1225 = extractvalue %dx.types.CBufRet.i32 %1223, 1
  %1226 = udiv i32 %1225, %1224
  %1227 = fsub fast float %1214, %1217
  %1228 = fsub fast float %1215, %1218
  %1229 = call float @dx.op.binary.f32(i32 35, float %1227, float 0.000000e+00)  ; FMax(a,b)
  %1230 = call float @dx.op.binary.f32(i32 35, float %1228, float 0.000000e+00)  ; FMax(a,b)
  %1231 = call float @dx.op.binary.f32(i32 36, float %1229, float %1219)  ; FMin(a,b)
  %1232 = call float @dx.op.binary.f32(i32 36, float %1230, float %1220)  ; FMin(a,b)
  %1233 = add i32 %1224, -1
  %1234 = add i32 %1226, -1
  %1235 = fmul fast float %1231, %1222
  %1236 = fmul fast float %1232, %1222
  %1237 = fptoui float %1235 to i32
  %1238 = fptoui float %1236 to i32
  %1239 = call i32 @dx.op.binary.i32(i32 40, i32 %1237, i32 %1233)  ; UMin(a,b)
  %1240 = call i32 @dx.op.binary.i32(i32 40, i32 %1238, i32 %1234)  ; UMin(a,b)
  %1241 = mul i32 %1240, %1224
  %1242 = add i32 %1241, %1239
  %1243 = shl i32 %1242, 2
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = icmp eq i32 %1245, -1
  br i1 %1246, label %1463, label %1247

; <label>:1247                                    ; preds = %1192
  %1248 = mul i32 %1245, 148
  %1249 = add i32 %1248, 4
  %1250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = add i32 %1248, 8
  %1253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 0
  %1255 = add i32 %1248, 36
  %1256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = add i32 %1248, 60
  %1259 = add i32 %1248, 92
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = add i32 %1248, 116
  %1263 = fsub fast float %1214, %1251
  %1264 = fsub fast float %1215, %1254
  %1265 = fmul fast float %1222, %1263
  %1266 = fmul fast float %1222, %1264
  %1267 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1268 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1269 = fsub fast float 1.000000e+00, %1268
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1272 = call float @dx.op.unary.f32(i32 83, float %1267)  ; DerivCoarseX(value)
  %1273 = call float @dx.op.unary.f32(i32 83, float %1269)  ; DerivCoarseX(value)
  %1274 = call float @dx.op.unary.f32(i32 84, float %1267)  ; DerivCoarseY(value)
  %1275 = call float @dx.op.unary.f32(i32 84, float %1269)  ; DerivCoarseY(value)
  %1276 = fmul fast float %1272, %1271
  %1277 = fmul fast float %1273, %1271
  %1278 = fmul fast float %1274, %1271
  %1279 = fmul fast float %1275, %1271
  %1280 = call float @dx.op.dot2.f32(i32 54, float %1278, float %1279, float %1278, float %1279)  ; Dot2(ax,ay,bx,by)
  %1281 = call float @dx.op.dot2.f32(i32 54, float %1276, float %1277, float %1276, float %1277)  ; Dot2(ax,ay,bx,by)
  %1282 = call float @dx.op.binary.f32(i32 35, float %1281, float %1280)  ; FMax(a,b)
  %1283 = call float @dx.op.unary.f32(i32 23, float %1282)  ; Log(value)
  %1284 = fmul fast float %1283, 5.000000e-01
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1287 = fadd fast float %1286, %1284
  %1288 = call float @dx.op.binary.f32(i32 35, float %1287, float 0.000000e+00)  ; FMax(a,b)
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1291 = fadd fast float %1290, %1288
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 3
  %1294 = fadd fast float %1291, %1293
  %1295 = add i32 %1261, 0
  %1296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1295, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1297 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1296, i32 0)  ; GetDimensions(handle,mipLevel)
  %1298 = extractvalue %dx.types.Dimensions %1297, 0
  %1299 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1298)  ; FirstbitLo(value)
  %1300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.i32 %1300, 1
  %1302 = sub nsw i32 %1301, %1299
  %1303 = sitofp i32 %1302 to float
  %1304 = fsub fast float %1294, %1303
  %1305 = call float @dx.op.binary.f32(i32 35, float %1304, float 0.000000e+00)  ; FMax(a,b)
  %1306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1296, %dx.types.Handle %59, float %1267, float %1269, float %1257, float undef, i32 0, i32 0, i32 undef, float %1305)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = fcmp ule float %1307, 0x3FE0101020000000
  %1309 = extractvalue %dx.types.CBufRet.i32 %1300, 0
  %1310 = and i32 %1309, 128
  %1311 = icmp ne i32 %1310, 0
  %1312 = and i1 %1308, %1311
  br i1 %1312, label %1463, label %1313

; <label>:1313                                    ; preds = %1247
  %1314 = add i32 %1248, 20
  %1315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = add i32 %1248, 24
  %1318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = add i32 %1248, 40
  %1321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = add i32 %1248, 96
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.f32 %1326, 2
  %1328 = fmul fast float %1327, %1267
  %1329 = fmul fast float %1327, %1269
  %1330 = extractvalue %dx.types.CBufRet.f32 %1326, 3
  %1331 = fadd fast float %1328, %1330
  %1332 = fadd fast float %1329, %1330
  %1333 = add i32 %1325, 0
  %1334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1333, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1335 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1334, i32 0)  ; GetDimensions(handle,mipLevel)
  %1336 = extractvalue %dx.types.Dimensions %1335, 0
  %1337 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1336)  ; FirstbitLo(value)
  %1338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.i32 %1338, 1
  %1340 = sub nsw i32 %1339, %1337
  %1341 = sitofp i32 %1340 to float
  %1342 = fsub fast float %1291, %1341
  %1343 = call float @dx.op.binary.f32(i32 35, float %1342, float 0.000000e+00)  ; FMax(a,b)
  %1344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1334, %dx.types.Handle %59, float %1331, float %1332, float %1322, float undef, i32 0, i32 0, i32 undef, float %1343)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = fmul fast float %1345, %1316
  %1347 = fadd fast float %1346, %1319
  %1348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.f32 %1348, 0
  %1350 = extractvalue %dx.types.CBufRet.f32 %1348, 1
  %1351 = extractvalue %dx.types.CBufRet.f32 %1348, 2
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 3
  %1354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1355 = extractvalue %dx.types.CBufRet.f32 %1354, 3
  %1356 = extractvalue %dx.types.CBufRet.f32 %1348, 3
  %1357 = fadd fast float %1353, %1214
  %1358 = fadd fast float %1355, %1215
  %1359 = fadd fast float %1347, %1356
  %1360 = fmul fast float %1357, %1349
  %1361 = call float @dx.op.tertiary.f32(i32 46, float %1358, float %1350, float %1360)  ; FMad(a,b,c)
  %1362 = call float @dx.op.tertiary.f32(i32 46, float %1359, float %1351, float %1361)  ; FMad(a,b,c)
  %1363 = fsub fast float %1362, %1356
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 2
  %1366 = fsub fast float %1363, %1365
  %1367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.i32 %1367, 0
  %1369 = call i32 @dx.op.binary.i32(i32 40, i32 %1245, i32 %1368)  ; UMin(a,b)
  %1370 = mul i32 %1369, 36
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = add i32 %1370, 4
  %1374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.f32 %1374, 0
  %1376 = fmul fast float %1375, %1267
  %1377 = fmul fast float %1375, %1269
  %1378 = extractvalue %dx.types.CBufRet.f32 %1374, 1
  %1379 = fadd fast float %1376, %1378
  %1380 = fadd fast float %1377, %1378
  %1381 = icmp eq i32 %1372, 0
  br i1 %1381, label %1450, label %1382

; <label>:1382                                    ; preds = %1313
  br label %1383

; <label>:1383                                    ; preds = %1440, %1382
  %1384 = phi float [ %1441, %1440 ], [ 0.000000e+00, %1382 ]
  %1385 = phi float [ %1442, %1440 ], [ 0.000000e+00, %1382 ]
  %1386 = phi float [ %1443, %1440 ], [ 0.000000e+00, %1382 ]
  %1387 = phi float [ %1444, %1440 ], [ 0.000000e+00, %1382 ]
  %1388 = phi float [ %1445, %1440 ], [ 0.000000e+00, %1382 ]
  %1389 = phi float [ %1446, %1440 ], [ 0.000000e+00, %1382 ]
  %1390 = phi i32 [ %1447, %1440 ], [ 0, %1382 ]
  %1391 = shl i32 %1390, 2
  %1392 = add i32 %1258, %1391
  %1393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = add i32 %1262, %1391
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %1397, 0
  %1399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1398, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1400 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1399, i32 0)  ; GetDimensions(handle,mipLevel)
  %1401 = extractvalue %dx.types.Dimensions %1400, 0
  %1402 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1401)  ; FirstbitLo(value)
  %1403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.i32 %1403, 1
  %1405 = sub nsw i32 %1404, %1402
  %1406 = sitofp i32 %1405 to float
  %1407 = fsub fast float %1291, %1406
  %1408 = call float @dx.op.binary.f32(i32 35, float %1407, float 0.000000e+00)  ; FMax(a,b)
  %1409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1399, %dx.types.Handle %59, float %1379, float %1380, float %1394, float undef, i32 0, i32 0, i32 undef, float %1408)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = fcmp fast ogt float %1410, 0.000000e+00
  br i1 %1411, label %1412, label %1440

; <label>:1412                                    ; preds = %1383
  %1413 = add i32 %1373, %1391
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = and i32 %1415, 32767
  %1417 = mul nuw nsw i32 %1416, 928
  %1418 = add nuw nsw i32 %1417, 48
  %1419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.ResRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.ResRet.f32 %1419, 2
  %1423 = add nuw nsw i32 %1417, 60
  %1424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = fmul fast float %1420, %1410
  %1429 = fmul fast float %1421, %1410
  %1430 = fmul fast float %1422, %1410
  %1431 = fadd fast float %1428, %1384
  %1432 = fadd fast float %1429, %1385
  %1433 = fadd fast float %1430, %1386
  %1434 = fmul fast float %1425, %1410
  %1435 = fmul fast float %1426, %1410
  %1436 = fmul fast float %1427, %1410
  %1437 = fadd fast float %1434, %1387
  %1438 = fadd fast float %1435, %1388
  %1439 = fadd fast float %1436, %1389
  br label %1440

; <label>:1440                                    ; preds = %1412, %1383
  %1441 = phi float [ %1431, %1412 ], [ %1384, %1383 ]
  %1442 = phi float [ %1432, %1412 ], [ %1385, %1383 ]
  %1443 = phi float [ %1433, %1412 ], [ %1386, %1383 ]
  %1444 = phi float [ %1437, %1412 ], [ %1387, %1383 ]
  %1445 = phi float [ %1438, %1412 ], [ %1388, %1383 ]
  %1446 = phi float [ %1439, %1412 ], [ %1389, %1383 ]
  %1447 = add nuw i32 %1390, 1
  %1448 = icmp eq i32 %1447, %1372
  br i1 %1448, label %1449, label %1383

; <label>:1449                                    ; preds = %1440
  br label %1450

; <label>:1450                                    ; preds = %1449, %1313
  %1451 = phi float [ 0.000000e+00, %1313 ], [ %1441, %1449 ]
  %1452 = phi float [ 0.000000e+00, %1313 ], [ %1442, %1449 ]
  %1453 = phi float [ 0.000000e+00, %1313 ], [ %1443, %1449 ]
  %1454 = phi float [ 0.000000e+00, %1313 ], [ %1444, %1449 ]
  %1455 = phi float [ 0.000000e+00, %1313 ], [ %1445, %1449 ]
  %1456 = phi float [ 0.000000e+00, %1313 ], [ %1446, %1449 ]
  %1457 = fadd fast float %1454, %1451
  %1458 = fmul fast float %1457, 0x3F847AE140000000
  %1459 = fadd fast float %1455, %1452
  %1460 = fmul fast float %1459, 0x3F847AE140000000
  %1461 = fadd fast float %1456, %1453
  %1462 = fmul fast float %1461, 0x3F847AE140000000
  br label %1463

; <label>:1463                                    ; preds = %1450, %1247, %1192, %1189, %1160, %1122
  %1464 = phi float [ %1174, %1160 ], [ -1.310720e+05, %1122 ], [ %1366, %1450 ], [ -1.310720e+05, %1192 ], [ -1.310720e+05, %1247 ], [ -1.310720e+05, %1189 ]
  %1465 = phi float [ %1184, %1160 ], [ 0.000000e+00, %1122 ], [ %1458, %1450 ], [ 0.000000e+00, %1192 ], [ 0.000000e+00, %1247 ], [ 0.000000e+00, %1189 ]
  %1466 = phi float [ %1186, %1160 ], [ 0.000000e+00, %1122 ], [ %1460, %1450 ], [ 0.000000e+00, %1192 ], [ 0.000000e+00, %1247 ], [ 0.000000e+00, %1189 ]
  %1467 = phi float [ %1188, %1160 ], [ 0.000000e+00, %1122 ], [ %1462, %1450 ], [ 0.000000e+00, %1192 ], [ 0.000000e+00, %1247 ], [ 0.000000e+00, %1189 ]
  %1468 = phi i1 [ true, %1160 ], [ false, %1122 ], [ true, %1450 ], [ false, %1192 ], [ false, %1247 ], [ false, %1189 ]
  %1469 = and i32 %211, 3
  %1470 = icmp eq i32 %1469, 1
  %1471 = select i1 %1470, float 1.000000e+00, float 0.000000e+00
  %1472 = fsub fast float %1464, %146
  %1473 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  %1474 = select i1 %1468, float %1473, float 1.000000e+00
  %1475 = fmul fast float %1474, %1471
  %1476 = icmp eq i32 %1469, 3
  %1477 = select i1 %1476, float 1.000000e+00, float %1475
  %1478 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1477)  ; FMax(a,b)
  %1479 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1480 = fcmp fast une float %1479, 0.000000e+00
  %1481 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %1482 = call float @dx.op.unary.f32(i32 25, float %1481)  ; Rsqrt(value)
  br i1 %1480, label %1490, label %1483

; <label>:1483                                    ; preds = %1463
  %1484 = fmul fast float %1482, %144
  %1485 = fmul fast float %1482, %145
  %1486 = fmul fast float %1482, %146
  %1487 = fsub fast float -0.000000e+00, %1484
  %1488 = fsub fast float -0.000000e+00, %1485
  %1489 = fsub fast float -0.000000e+00, %1486
  br label %1658

; <label>:1490                                    ; preds = %1463
  %1491 = fmul fast float %144, %1482
  %1492 = fsub fast float -0.000000e+00, %1491
  %1493 = fmul fast float %145, %1482
  %1494 = fsub fast float -0.000000e+00, %1493
  %1495 = fmul fast float %146, %1482
  %1496 = fsub fast float -0.000000e+00, %1495
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1492, float %1494, float %1496, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = fmul fast float %1479, 2.500000e+00
  %1499 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1500 = fmul fast float %1479, 0x4013FFFFE0000000
  %1501 = fadd fast float %1500, 0xBFFFFFFFE0000000
  %1502 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1503 = fmul fast float %1479, 0x4004000020000000
  %1504 = fadd fast float %1503, 0xBFF8000040000000
  %1505 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1506 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1507 = fmul fast float %1068, 1.000000e+01
  %1508 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1509 = fmul fast float %1508, 2.000000e+00
  %1510 = fsub fast float 3.000000e+00, %1509
  %1511 = fmul fast float %1508, %1508
  %1512 = fmul fast float %1511, %1510
  %1513 = fsub fast float 1.000000e+00, %1512
  %1514 = fsub fast float 0x3FE3333340000000, %1089
  %1515 = fmul fast float %1514, 0x400AAAAAA0000000
  %1516 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1517 = fmul fast float %1513, %1516
  %1518 = fmul fast float %1101, 0x3FEA2B8620000000
  %1519 = fmul fast float %1102, 0x3FEA2B8620000000
  %1520 = fmul fast float %1103, 0x3FEA2B8620000000
  %1521 = fadd fast float %1518, 0x3FC81DFBA0000000
  %1522 = fmul fast float %1521, %1101
  %1523 = fadd fast float %1522, 0x3F910E6020000000
  %1524 = fadd fast float %1519, 0x3FC81DFBA0000000
  %1525 = fmul fast float %1524, %1102
  %1526 = fadd fast float %1525, 0x3F910E6020000000
  %1527 = fadd fast float %1520, 0x3FC81DFBA0000000
  %1528 = fmul fast float %1527, %1103
  %1529 = fadd fast float %1528, 0x3F910E6020000000
  %1530 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1531 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1532 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1533 = fsub fast float %1530, %1101
  %1534 = fsub fast float %1531, %1102
  %1535 = fsub fast float %1532, %1103
  %1536 = fmul fast float %1533, %1506
  %1537 = fmul fast float %1536, %1517
  %1538 = fmul fast float %1534, %1506
  %1539 = fmul fast float %1538, %1517
  %1540 = fmul fast float %1535, %1506
  %1541 = fmul fast float %1540, %1517
  %1542 = fadd fast float %1537, %1101
  %1543 = fadd fast float %1539, %1102
  %1544 = fadd fast float %1541, %1103
  %1545 = fmul fast float %1036, %1036
  %1546 = fmul fast float %1545, %1545
  %1547 = fadd fast float %1502, 1.000000e+00
  %1548 = fsub fast float %1547, %1517
  %1549 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1550 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1551 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  %1552 = fsub fast float 1.000000e+00, %1546
  %1553 = call float @dx.op.binary.f32(i32 36, float %1549, float %1552)  ; FMin(a,b)
  %1554 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1555 = call float @dx.op.binary.f32(i32 35, float %1553, float %1554)  ; FMax(a,b)
  %1556 = fadd fast float %1551, 0xBFE4CCCCC0000000
  %1557 = fmul fast float %1556, 0x4006DB6DA0000000
  %1558 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1559 = fmul fast float %1558, 2.000000e+00
  %1560 = fsub fast float 3.000000e+00, %1559
  %1561 = bitcast float %1086 to i32
  %1562 = ashr i32 %1561, 1
  %1563 = add nsw i32 %1562, 532487669
  %1564 = bitcast i32 %1563 to float
  %1565 = fsub fast float 1.000000e+00, %1564
  %1566 = bitcast float %1565 to i32
  %1567 = sub nsw i32 2129859010, %1566
  %1568 = bitcast i32 %1567 to float
  %1569 = fmul fast float %1568, 2.000000e+00
  %1570 = bitcast float %1087 to i32
  %1571 = ashr i32 %1570, 1
  %1572 = add nsw i32 %1571, 532487669
  %1573 = bitcast i32 %1572 to float
  %1574 = fsub fast float 1.000000e+00, %1573
  %1575 = bitcast float %1574 to i32
  %1576 = sub nsw i32 2129859010, %1575
  %1577 = bitcast i32 %1576 to float
  %1578 = fmul fast float %1577, 2.000000e+00
  %1579 = bitcast float %1088 to i32
  %1580 = ashr i32 %1579, 1
  %1581 = add nsw i32 %1580, 532487669
  %1582 = bitcast i32 %1581 to float
  %1583 = fsub fast float 1.000000e+00, %1582
  %1584 = bitcast float %1583 to i32
  %1585 = sub nsw i32 2129859010, %1584
  %1586 = bitcast i32 %1585 to float
  %1587 = fmul fast float %1586, 2.000000e+00
  %1588 = fsub fast float 0x4002A9FBE0000000, %1569
  %1589 = fadd fast float %1569, 0x3FD54FDF00000000
  %1590 = bitcast float %1589 to i32
  %1591 = sub nsw i32 2129859010, %1590
  %1592 = bitcast i32 %1591 to float
  %1593 = fmul fast float %1592, %1588
  %1594 = fmul fast float %1593, %1593
  %1595 = fsub fast float 0x4002A9FBE0000000, %1578
  %1596 = fadd fast float %1578, 0x3FD54FDF00000000
  %1597 = bitcast float %1596 to i32
  %1598 = sub nsw i32 2129859010, %1597
  %1599 = bitcast i32 %1598 to float
  %1600 = fmul fast float %1599, %1595
  %1601 = fmul fast float %1600, %1600
  %1602 = fsub fast float 0x4002A9FBE0000000, %1587
  %1603 = fadd fast float %1587, 0x3FD54FDF00000000
  %1604 = bitcast float %1603 to i32
  %1605 = sub nsw i32 2129859010, %1604
  %1606 = bitcast i32 %1605 to float
  %1607 = fmul fast float %1606, %1602
  %1608 = fmul fast float %1607, %1607
  %1609 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1594)  ; FMax(a,b)
  %1610 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1601)  ; FMax(a,b)
  %1611 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1608)  ; FMax(a,b)
  %1612 = fsub fast float 1.000000e+00, %1497
  %1613 = fadd fast float %1612, %1513
  %1614 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1615 = fsub fast float 1.000000e+00, %1477
  %1616 = fmul fast float %1555, %1615
  %1617 = fmul fast float %1558, %1558
  %1618 = fmul fast float %1617, %1616
  %1619 = fmul fast float %1618, %1560
  %1620 = fmul fast float %1615, 0xBFE99999A0000000
  %1621 = fmul fast float %1620, %1506
  %1622 = fmul fast float %1621, %1517
  %1623 = fadd fast float %1622, 1.000000e+00
  %1624 = fadd fast float %1089, -1.000000e+00
  %1625 = fmul fast float %1623, %1624
  %1626 = fadd fast float %1625, 1.000000e+00
  %1627 = fsub fast float %1609, %1086
  %1628 = fsub fast float %1610, %1087
  %1629 = fsub fast float %1611, %1088
  %1630 = fmul fast float %1619, %1627
  %1631 = fmul fast float %1619, %1628
  %1632 = fmul fast float %1619, %1629
  %1633 = fadd fast float %1630, %1086
  %1634 = fadd fast float %1631, %1087
  %1635 = fadd fast float %1632, %1088
  %1636 = fsub fast float %73, %1065
  %1637 = fsub fast float %74, %1066
  %1638 = fsub fast float %75, %1067
  %1639 = fmul fast float %1619, %1636
  %1640 = fmul fast float %1619, %1637
  %1641 = fmul fast float %1619, %1638
  %1642 = fadd fast float %1639, %1065
  %1643 = fadd fast float %1640, %1066
  %1644 = fadd fast float %1641, %1067
  %1645 = fmul fast float %1619, %1614
  %1646 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1647 = fsub fast float 1.000000e+00, %1646
  %1648 = fmul fast float %1645, %1647
  %1649 = fadd fast float %1648, %1646
  %1650 = fsub fast float 1.000000e+00, %1036
  %1651 = fmul fast float %1619, %1650
  %1652 = fadd fast float %1651, %1036
  %1653 = call float @dx.op.dot3.f32(i32 55, float %1642, float %1643, float %1644, float %1642, float %1643, float %1644)  ; Dot3(ax,ay,az,bx,by,bz)
  %1654 = call float @dx.op.unary.f32(i32 25, float %1653)  ; Rsqrt(value)
  %1655 = fmul fast float %1642, %1654
  %1656 = fmul fast float %1643, %1654
  %1657 = fmul fast float %1644, %1654
  br label %1658

; <label>:1658                                    ; preds = %1490, %1483
  %1659 = phi float [ %1489, %1483 ], [ %1496, %1490 ]
  %1660 = phi float [ %1488, %1483 ], [ %1494, %1490 ]
  %1661 = phi float [ %1487, %1483 ], [ %1492, %1490 ]
  %1662 = phi float [ %1486, %1483 ], [ %1495, %1490 ]
  %1663 = phi float [ %1485, %1483 ], [ %1493, %1490 ]
  %1664 = phi float [ %1484, %1483 ], [ %1491, %1490 ]
  %1665 = phi float [ %1086, %1483 ], [ %1633, %1490 ]
  %1666 = phi float [ %1087, %1483 ], [ %1634, %1490 ]
  %1667 = phi float [ %1088, %1483 ], [ %1635, %1490 ]
  %1668 = phi float [ %1101, %1483 ], [ %1542, %1490 ]
  %1669 = phi float [ %1102, %1483 ], [ %1543, %1490 ]
  %1670 = phi float [ %1103, %1483 ], [ %1544, %1490 ]
  %1671 = phi float [ %1065, %1483 ], [ %1655, %1490 ]
  %1672 = phi float [ %1066, %1483 ], [ %1656, %1490 ]
  %1673 = phi float [ %1067, %1483 ], [ %1657, %1490 ]
  %1674 = phi float [ %1089, %1483 ], [ %1649, %1490 ]
  %1675 = phi float [ %1036, %1483 ], [ %1652, %1490 ]
  %1676 = fsub fast float -0.000000e+00, %146
  %1677 = select i1 %237, float 0.000000e+00, float %1667
  %1678 = call float @dx.op.dot3.f32(i32 55, float %1671, float %1672, float %1673, float %1661, float %1660, float %1659)  ; Dot3(ax,ay,az,bx,by,bz)
  %1679 = call float @dx.op.unary.f32(i32 7, float %1678)  ; Saturate(value)
  %1680 = call float @dx.op.dot3.f32(i32 55, float %1664, float %1663, float %1662, float %1671, float %1672, float %1673)  ; Dot3(ax,ay,az,bx,by,bz)
  %1681 = fmul fast float %1680, 2.000000e+00
  %1682 = fmul fast float %1681, %1671
  %1683 = fmul fast float %1681, %1672
  %1684 = fmul fast float %1681, %1673
  %1685 = fsub fast float %1664, %1682
  %1686 = fsub fast float %1663, %1683
  %1687 = fsub fast float %1662, %1684
  %1688 = call float @dx.op.binary.f32(i32 36, float %1675, float 1.000000e+00)  ; FMin(a,b)
  %1689 = fsub fast float 1.000000e+00, %1688
  %1690 = bitcast float %1689 to i32
  %1691 = ashr i32 %1690, 1
  %1692 = add nsw i32 %1691, 532487669
  %1693 = bitcast i32 %1692 to float
  %1694 = fsub fast float 1.000000e+00, %1674
  %1695 = call float @dx.op.binary.f32(i32 35, float %1694, float 0x3F847AE140000000)  ; FMax(a,b)
  %1696 = fmul fast float %1695, %1695
  %1697 = fmul fast float %1696, %1696
  %1698 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %61, float %1693, float %1697, float %1698, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1700 = extractvalue %dx.types.ResRet.f32 %1699, 0
  %1701 = fsub fast float 1.000000e+00, %1675
  %1702 = bitcast float %1701 to i32
  %1703 = sub nsw i32 2129859010, %1702
  %1704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.f32 %1704, 0
  %1706 = extractvalue %dx.types.CBufRet.f32 %1704, 1
  %1707 = fadd fast float %1705, %144
  %1708 = fadd fast float %1706, %145
  %1709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.i32 %1709, 0
  %1711 = icmp eq i32 %1710, 1
  br i1 %1711, label %1712, label %1747

; <label>:1712                                    ; preds = %1658
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1716 = fsub fast float %1707, %1714
  %1717 = fsub fast float %1708, %1715
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.CBufRet.f32 %1718, 1
  %1721 = fmul fast float %1716, %1719
  %1722 = fmul fast float %1717, %1720
  %1723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %61, float %1721, float %1722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = fcmp fast ogt float %1724, 0.000000e+00
  %1726 = extractvalue %dx.types.CBufRet.i32 %1709, 3
  %1727 = icmp ne i32 %1726, 0
  %1728 = and i1 %1725, %1727
  br i1 %1728, label %1729, label %1747, !dx.controlflow.hints !101

; <label>:1729                                    ; preds = %1712
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.CBufRet.f32 %1730, 1
  %1733 = fsub fast float %1707, %1731
  %1734 = fsub fast float %1708, %1732
  %1735 = fmul fast float %1733, %1733
  %1736 = fmul fast float %1734, %1734
  %1737 = fadd fast float %1735, %1736
  %1738 = uitofp i32 %1726 to float
  %1739 = fmul fast float %1738, %1738
  %1740 = fcmp fast ogt float %1737, %1739
  br i1 %1740, label %1747, label %1741

; <label>:1741                                    ; preds = %1729
  %1742 = call float @dx.op.unary.f32(i32 24, float %1737)  ; Sqrt(value)
  %1743 = fsub fast float %1738, %1742
  %1744 = fmul fast float %1743, 0x3F75555560000000
  %1745 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1746 = call float @dx.op.binary.f32(i32 36, float %1745, float %1724)  ; FMin(a,b)
  br label %1747

; <label>:1747                                    ; preds = %1741, %1729, %1712, %1658
  %1748 = phi float [ 1.000000e+00, %1658 ], [ %1746, %1741 ], [ %1724, %1712 ], [ 0.000000e+00, %1729 ]
  %1749 = fcmp fast ogt float %1748, 0.000000e+00
  br i1 %1749, label %1750, label %1849, !dx.controlflow.hints !102

; <label>:1750                                    ; preds = %1747
  %1751 = fadd fast float %175, 5.000000e-01
  %1752 = call float @dx.op.unary.f32(i32 27, float %1751)  ; Round_ni(value)
  %1753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %61, float %173, float %174, float %1752, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.ResRet.f32 %1753, 1
  %1756 = extractvalue %dx.types.ResRet.f32 %1753, 2
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 3
  %1759 = fmul fast float %1758, %1754
  %1760 = fmul fast float %1758, %1755
  %1761 = fmul fast float %1758, %1756
  %1762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %61, float %173, float %174, float %1752, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1763 = extractvalue %dx.types.ResRet.f32 %1762, 0
  %1764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %61, float %173, float %174, float %1752, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1765 = extractvalue %dx.types.ResRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.ResRet.f32 %1764, 1
  %1767 = fmul fast float %1765, 2.000000e+00
  %1768 = fmul fast float %1766, 2.000000e+00
  %1769 = fadd fast float %1767, -1.000000e+00
  %1770 = fadd fast float %1768, -1.000000e+00
  %1771 = fadd fast float %1769, %1770
  %1772 = fmul fast float %1771, 5.000000e-01
  %1773 = fsub fast float %1769, %1770
  %1774 = fmul fast float %1773, 5.000000e-01
  %1775 = call float @dx.op.unary.f32(i32 6, float %1772)  ; FAbs(value)
  %1776 = fsub fast float 1.000000e+00, %1775
  %1777 = call float @dx.op.unary.f32(i32 6, float %1774)  ; FAbs(value)
  %1778 = fsub fast float %1776, %1777
  %1779 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1778)  ; FMax(a,b)
  %1780 = call float @dx.op.dot3.f32(i32 55, float %1772, float %1774, float %1779, float %1772, float %1774, float %1779)  ; Dot3(ax,ay,az,bx,by,bz)
  %1781 = bitcast float %1780 to i32
  %1782 = ashr i32 %1781, 1
  %1783 = sub nsw i32 1597250115, %1782
  %1784 = bitcast i32 %1783 to float
  %1785 = fmul fast float %1784, %1772
  %1786 = fmul fast float %1784, %1774
  %1787 = fmul fast float %1784, %1779
  %1788 = fsub fast float 1.000000e+00, %1763
  %1789 = fdiv fast float %1788, %1787
  %1790 = fmul fast float %1787, %73
  %1791 = fmul fast float %1787, %74
  %1792 = fmul fast float %1787, %75
  %1793 = fmul fast float %1785, %69
  %1794 = fmul fast float %1785, %70
  %1795 = fmul fast float %1785, %71
  %1796 = fadd fast float %1790, %1793
  %1797 = fadd fast float %1791, %1794
  %1798 = fadd fast float %1792, %1795
  %1799 = fmul fast float %1786, %108
  %1800 = fmul fast float %1786, %109
  %1801 = fmul fast float %1786, %110
  %1802 = fadd fast float %1796, %1799
  %1803 = fadd fast float %1797, %1800
  %1804 = fadd fast float %1798, %1801
  %1805 = call float @dx.op.dot3.f32(i32 55, float %1802, float %1803, float %1804, float %1802, float %1803, float %1804)  ; Dot3(ax,ay,az,bx,by,bz)
  %1806 = call float @dx.op.unary.f32(i32 25, float %1805)  ; Rsqrt(value)
  %1807 = fmul fast float %1802, %1806
  %1808 = fmul fast float %1803, %1806
  %1809 = fmul fast float %1804, %1806
  %1810 = call float @dx.op.dot3.f32(i32 55, float %1671, float %1672, float %1673, float %1671, float %1672, float %1673)  ; Dot3(ax,ay,az,bx,by,bz)
  %1811 = call float @dx.op.unary.f32(i32 7, float %1810)  ; Saturate(value)
  %1812 = fmul fast float %1811, 5.000000e-01
  %1813 = fadd fast float %1812, 5.000000e-01
  %1814 = fmul fast float %1813, %1763
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1671, float %1672, float %1673, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = call float @dx.op.unary.f32(i32 7, float %1815)  ; Saturate(value)
  %1817 = fmul fast float %1816, %1789
  %1818 = fadd fast float %1814, %1817
  %1819 = fsub fast float 5.000000e-01, %1812
  %1820 = fmul fast float %1819, %1668
  %1821 = fmul fast float %1819, %1669
  %1822 = fmul fast float %1819, %1670
  %1823 = fadd fast float %1818, %1820
  %1824 = fmul fast float %1823, %1759
  %1825 = fadd fast float %1818, %1821
  %1826 = fmul fast float %1825, %1760
  %1827 = fadd fast float %1818, %1822
  %1828 = fmul fast float %1827, %1761
  %1829 = call float @dx.op.dot3.f32(i32 55, float %1685, float %1686, float %1687, float %1671, float %1672, float %1673)  ; Dot3(ax,ay,az,bx,by,bz)
  %1830 = call float @dx.op.unary.f32(i32 7, float %1829)  ; Saturate(value)
  %1831 = fmul fast float %1830, 5.000000e-01
  %1832 = fadd fast float %1831, 5.000000e-01
  %1833 = fmul fast float %1832, %1763
  %1834 = call float @dx.op.dot3.f32(i32 55, float %1685, float %1686, float %1687, float %1807, float %1808, float %1809)  ; Dot3(ax,ay,az,bx,by,bz)
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1836 = fmul fast float %1835, %1789
  %1837 = fadd fast float %1833, %1836
  %1838 = fsub fast float 5.000000e-01, %1831
  %1839 = fmul fast float %1838, %1668
  %1840 = fmul fast float %1838, %1669
  %1841 = fmul fast float %1838, %1670
  %1842 = fadd fast float %1837, %1839
  %1843 = fmul fast float %1842, %1759
  %1844 = fadd fast float %1837, %1840
  %1845 = fmul fast float %1844, %1760
  %1846 = fadd fast float %1837, %1841
  %1847 = fmul fast float %1846, %1761
  %1848 = call float @dx.op.dot3.f32(i32 55, float %1759, float %1760, float %1761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1849

; <label>:1849                                    ; preds = %1750, %1747
  %1850 = phi float [ %1848, %1750 ], [ 0.000000e+00, %1747 ]
  %1851 = phi float [ %1843, %1750 ], [ 0.000000e+00, %1747 ]
  %1852 = phi float [ %1845, %1750 ], [ 0.000000e+00, %1747 ]
  %1853 = phi float [ %1847, %1750 ], [ 0.000000e+00, %1747 ]
  %1854 = phi float [ %1824, %1750 ], [ 0.000000e+00, %1747 ]
  %1855 = phi float [ %1826, %1750 ], [ 0.000000e+00, %1747 ]
  %1856 = phi float [ %1828, %1750 ], [ 0.000000e+00, %1747 ]
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1859 = fcmp fast ogt float %1858, 0.000000e+00
  %1860 = and i1 %1749, %1859
  br i1 %1860, label %1861, label %2065, !dx.controlflow.hints !103

; <label>:1861                                    ; preds = %1849
  %1862 = extractvalue %dx.types.CBufRet.f32 %1704, 2
  %1863 = fadd fast float %1862, %146
  %1864 = fmul fast float %1671, 3.200000e+01
  %1865 = fmul fast float %1672, 3.200000e+01
  %1866 = fadd fast float %1707, %1864
  %1867 = fadd fast float %1708, %1865
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.CBufRet.f32 %1868, 1
  %1871 = fsub fast float %1866, %1869
  %1872 = fsub fast float %1867, %1870
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1876 = fmul fast float %1871, %1874
  %1877 = fmul fast float %1872, %1875
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.CBufRet.f32 %1878, 1
  %1881 = fsub fast float %1707, %1879
  %1882 = fsub fast float %1708, %1880
  %1883 = fmul fast float %1881, %1881
  %1884 = fmul fast float %1882, %1882
  %1885 = fadd fast float %1883, %1884
  %1886 = call float @dx.op.unary.f32(i32 24, float %1885)  ; Sqrt(value)
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.CBufRet.f32 %1887, 1
  %1890 = fsub fast float %1886, %1888
  %1891 = fdiv fast float %1890, %1889
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1893 = fmul fast float %1892, 2.000000e+00
  %1894 = fsub fast float 3.000000e+00, %1893
  %1895 = fmul fast float %1892, %1892
  %1896 = fmul fast float %1895, %1894
  %1897 = fcmp fast oge float %1876, 0.000000e+00
  %1898 = fcmp fast ole float %1876, 1.000000e+00
  %1899 = and i1 %1898, %1897
  %1900 = fcmp fast oge float %1877, 0.000000e+00
  %1901 = and i1 %1900, %1899
  %1902 = fcmp fast ole float %1877, 1.000000e+00
  %1903 = and i1 %1902, %1901
  %1904 = fcmp fast ogt float %1896, 0.000000e+00
  %1905 = and i1 %1904, %1903
  br i1 %1905, label %1906, label %2029, !dx.controlflow.hints !104

; <label>:1906                                    ; preds = %1861
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1909 = extractvalue %dx.types.CBufRet.f32 %1907, 3
  %1910 = fmul fast float %1908, %1876
  %1911 = fmul fast float %1909, %1877
  %1912 = call float @dx.op.unary.f32(i32 27, float %1910)  ; Round_ni(value)
  %1913 = call float @dx.op.unary.f32(i32 27, float %1911)  ; Round_ni(value)
  %1914 = fptosi float %1912 to i32
  %1915 = fptosi float %1913 to i32
  %1916 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %51, i32 0, i32 %1914, i32 %1915, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = lshr i32 %1917, 16
  %1919 = icmp eq i32 %1918, 65535
  br i1 %1919, label %2029, label %1920

; <label>:1920                                    ; preds = %1906
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = fmul fast float %1922, %1876
  %1924 = extractvalue %dx.types.CBufRet.f32 %1921, 1
  %1925 = fadd fast float %1923, %1924
  %1926 = extractvalue %dx.types.CBufRet.f32 %1921, 2
  %1927 = fmul fast float %1926, %1877
  %1928 = extractvalue %dx.types.CBufRet.f32 %1921, 3
  %1929 = fadd fast float %1927, %1928
  %1930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %61, float %1925, float %1929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.ResRet.f32 %1930, 1
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 1
  %1935 = extractvalue %dx.types.CBufRet.f32 %1933, 0
  %1936 = fsub fast float %1934, %1935
  %1937 = fmul fast float %1936, %1931
  %1938 = fadd fast float %1937, %1935
  %1939 = extractvalue %dx.types.CBufRet.f32 %1933, 3
  %1940 = extractvalue %dx.types.CBufRet.f32 %1933, 2
  %1941 = fsub fast float %1939, %1940
  %1942 = fmul fast float %1941, %1932
  %1943 = fadd fast float %1942, %1940
  %1944 = fsub fast float %1863, %1938
  %1945 = fsub fast float %1943, %1938
  %1946 = fdiv fast float %1944, %1945
  %1947 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1857, 1
  %1949 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1950 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1951 = fmul fast float %1949, %1876
  %1952 = fmul fast float %1950, %1877
  %1953 = fmul fast float %1951, 1.250000e-01
  %1954 = fmul fast float %1952, 1.250000e-01
  %1955 = call float @dx.op.unary.f32(i32 27, float %1953)  ; Round_ni(value)
  %1956 = call float @dx.op.unary.f32(i32 27, float %1954)  ; Round_ni(value)
  %1957 = fmul fast float %1955, 8.000000e+00
  %1958 = fmul fast float %1956, 8.000000e+00
  %1959 = fsub fast float %1951, %1957
  %1960 = fsub fast float %1952, %1958
  %1961 = fadd fast float %1959, 5.000000e-01
  %1962 = fadd fast float %1960, 5.000000e-01
  %1963 = and i32 %1918, 255
  %1964 = lshr i32 %1917, 24
  %1965 = mul nuw nsw i32 %1963, 9
  %1966 = uitofp i32 %1965 to float
  %1967 = mul nuw nsw i32 %1964, 9
  %1968 = uitofp i32 %1967 to float
  %1969 = fadd fast float %1961, %1966
  %1970 = fadd fast float %1962, %1968
  %1971 = fdiv fast float %1969, %1858
  %1972 = fdiv fast float %1970, %1948
  %1973 = fmul fast float %1947, 4.375000e-01
  %1974 = fadd fast float %1973, 3.125000e-02
  %1975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %61, float %1971, float %1972, float %1974, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.ResRet.f32 %1975, 1
  %1978 = extractvalue %dx.types.ResRet.f32 %1975, 2
  %1979 = fadd fast float %1973, 5.312500e-01
  %1980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %61, float %1971, float %1972, float %1979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1982 = extractvalue %dx.types.ResRet.f32 %1980, 1
  %1983 = extractvalue %dx.types.ResRet.f32 %1980, 2
  %1984 = fmul fast float %1981, 2.000000e+00
  %1985 = fmul fast float %1982, 2.000000e+00
  %1986 = fmul fast float %1983, 2.000000e+00
  %1987 = fadd fast float %1984, -1.000000e+00
  %1988 = fadd fast float %1985, -1.000000e+00
  %1989 = fadd fast float %1986, -1.000000e+00
  %1990 = fmul fast float %1987, %1987
  %1991 = fmul fast float %1988, %1988
  %1992 = fadd fast float %1990, %1991
  %1993 = fmul fast float %1989, %1989
  %1994 = fadd fast float %1992, %1993
  %1995 = call float @dx.op.unary.f32(i32 24, float %1994)  ; Sqrt(value)
  %1996 = fcmp fast ogt float %1995, 0.000000e+00
  br i1 %1996, label %1997, label %2001

; <label>:1997                                    ; preds = %1920
  %1998 = fdiv fast float %1987, %1995
  %1999 = fdiv fast float %1988, %1995
  %2000 = fdiv fast float %1989, %1995
  br label %2001

; <label>:2001                                    ; preds = %1997, %1920
  %2002 = phi float [ %1998, %1997 ], [ 0.000000e+00, %1920 ]
  %2003 = phi float [ %1999, %1997 ], [ 0.000000e+00, %1920 ]
  %2004 = phi float [ %2000, %1997 ], [ 0.000000e+00, %1920 ]
  %2005 = call float @dx.op.dot3.f32(i32 55, float %2002, float %2003, float %2004, float %1671, float %1672, float %1673)  ; Dot3(ax,ay,az,bx,by,bz)
  %2006 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2005)  ; FMax(a,b)
  %2007 = fmul fast float %2006, 0x400C5BF8A0000000
  %2008 = fmul fast float %1976, %1896
  %2009 = fmul fast float %2008, %2007
  %2010 = fmul fast float %1977, %1896
  %2011 = fmul fast float %2010, %2007
  %2012 = fmul fast float %1978, %1896
  %2013 = fmul fast float %2012, %2007
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 3
  %2016 = fmul fast float %2009, %2015
  %2017 = fmul fast float %2011, %2015
  %2018 = fmul fast float %2013, %2015
  %2019 = fcmp fast ogt float %1863, %1943
  br i1 %2019, label %2020, label %2029

; <label>:2020                                    ; preds = %2001
  %2021 = fmul fast float %1945, 0x3FC24924A0000000
  %2022 = fsub fast float %1863, %1943
  %2023 = fdiv fast float %2022, %2021
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2025 = fsub fast float 1.000000e+00, %2024
  %2026 = fmul fast float %2025, %2016
  %2027 = fmul fast float %2025, %2017
  %2028 = fmul fast float %2025, %2018
  br label %2029

; <label>:2029                                    ; preds = %2020, %2001, %1906, %1861
  %2030 = phi float [ %2028, %2020 ], [ %2018, %2001 ], [ 0.000000e+00, %1906 ], [ 0.000000e+00, %1861 ]
  %2031 = phi float [ %2027, %2020 ], [ %2017, %2001 ], [ 0.000000e+00, %1906 ], [ 0.000000e+00, %1861 ]
  %2032 = phi float [ %2026, %2020 ], [ %2016, %2001 ], [ 0.000000e+00, %1906 ], [ 0.000000e+00, %1861 ]
  %2033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2032)  ; FMax(a,b)
  %2034 = fmul fast float %2033, 0x3FD20DD760000000
  %2035 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1685, float %1686, float %1687)  ; Dot3(ax,ay,az,bx,by,bz)
  %2036 = fmul fast float %2035, 0x3FDF454380000000
  %2037 = fmul fast float %2035, %2035
  %2038 = fmul fast float %2037, 0x3FEE471020000000
  %2039 = fadd fast float %2038, 0xBFD42F6020000000
  %2040 = call float @dx.op.dot3.f32(i32 55, float %2033, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2041 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2031)  ; FMax(a,b)
  %2042 = fmul fast float %2041, 0x3FD20DD760000000
  %2043 = call float @dx.op.dot3.f32(i32 55, float %2041, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2044 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2030)  ; FMax(a,b)
  %2045 = fmul fast float %2044, 0x3FD20DD760000000
  %2046 = call float @dx.op.dot3.f32(i32 55, float %2044, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2047 = call float @dx.op.binary.f32(i32 35, float %2034, float 0.000000e+00)  ; FMax(a,b)
  %2048 = call float @dx.op.binary.f32(i32 35, float %2042, float 0.000000e+00)  ; FMax(a,b)
  %2049 = call float @dx.op.binary.f32(i32 35, float %2045, float 0.000000e+00)  ; FMax(a,b)
  %2050 = call float @dx.op.binary.f32(i32 35, float %2040, float 0.000000e+00)  ; FMax(a,b)
  %2051 = call float @dx.op.binary.f32(i32 35, float %2043, float 0.000000e+00)  ; FMax(a,b)
  %2052 = call float @dx.op.binary.f32(i32 35, float %2046, float 0.000000e+00)  ; FMax(a,b)
  %2053 = fmul fast float %2047, %1748
  %2054 = fmul fast float %2048, %1748
  %2055 = fmul fast float %2049, %1748
  %2056 = fadd fast float %2053, %1854
  %2057 = fadd fast float %2054, %1855
  %2058 = fadd fast float %2055, %1856
  %2059 = fmul fast float %2050, %1748
  %2060 = fmul fast float %2051, %1748
  %2061 = fmul fast float %2052, %1748
  %2062 = fadd fast float %2059, %1851
  %2063 = fadd fast float %2060, %1852
  %2064 = fadd fast float %2061, %1853
  br label %2065

; <label>:2065                                    ; preds = %2029, %1849
  %2066 = phi float [ %2062, %2029 ], [ %1851, %1849 ]
  %2067 = phi float [ %2063, %2029 ], [ %1852, %1849 ]
  %2068 = phi float [ %2064, %2029 ], [ %1853, %1849 ]
  %2069 = phi float [ %2056, %2029 ], [ %1854, %1849 ]
  %2070 = phi float [ %2057, %2029 ], [ %1855, %1849 ]
  %2071 = phi float [ %2058, %2029 ], [ %1856, %1849 ]
  %2072 = fcmp fast olt float %1748, 1.000000e+00
  br i1 %2072, label %2073, label %2896, !dx.controlflow.hints !105

; <label>:2073                                    ; preds = %2065
  %2074 = extractvalue %dx.types.CBufRet.f32 %1704, 2
  %2075 = fadd fast float %2074, %146
  %2076 = fmul fast float %1671, 3.200000e+01
  %2077 = fmul fast float %1672, 3.200000e+01
  %2078 = fadd fast float %1707, %2076
  %2079 = fadd fast float %1708, %2077
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.CBufRet.f32 %2080, 1
  %2083 = fsub fast float %2078, %2081
  %2084 = fsub fast float %2079, %2082
  %2085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2086 = extractvalue %dx.types.CBufRet.f32 %2085, 0
  %2087 = extractvalue %dx.types.CBufRet.f32 %2085, 1
  %2088 = fmul fast float %2083, %2086
  %2089 = fmul fast float %2084, %2087
  %2090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2091 = extractvalue %dx.types.CBufRet.f32 %2090, 0
  %2092 = fmul fast float %2088, %2091
  %2093 = extractvalue %dx.types.CBufRet.f32 %2090, 1
  %2094 = fadd fast float %2092, %2093
  %2095 = extractvalue %dx.types.CBufRet.f32 %2090, 2
  %2096 = fmul fast float %2095, %2089
  %2097 = extractvalue %dx.types.CBufRet.f32 %2090, 3
  %2098 = fadd fast float %2096, %2097
  %2099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %61, float %2094, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = extractvalue %dx.types.ResRet.f32 %2099, 1
  %2102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2102, 1
  %2104 = extractvalue %dx.types.CBufRet.f32 %2102, 0
  %2105 = fsub fast float %2103, %2104
  %2106 = fmul fast float %2105, %2100
  %2107 = fadd fast float %2106, %2104
  %2108 = extractvalue %dx.types.CBufRet.f32 %2102, 3
  %2109 = extractvalue %dx.types.CBufRet.f32 %2102, 2
  %2110 = fsub fast float %2108, %2109
  %2111 = fmul fast float %2110, %2101
  %2112 = fadd fast float %2111, %2109
  %2113 = fsub fast float %2075, %2107
  %2114 = fsub fast float %2112, %2107
  %2115 = fdiv fast float %2113, %2114
  %2116 = call float @dx.op.unary.f32(i32 7, float %2115)  ; Saturate(value)
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2119 = fmul fast float %2118, %2116
  %2120 = extractvalue %dx.types.CBufRet.f32 %2117, 1
  %2121 = fadd fast float %2119, %2120
  %2122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %2094, float %2098, float %2121, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2123 = extractvalue %dx.types.ResRet.f32 %2122, 0
  %2124 = extractvalue %dx.types.ResRet.f32 %2122, 1
  %2125 = extractvalue %dx.types.ResRet.f32 %2122, 2
  %2126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2126, 0
  %2128 = extractvalue %dx.types.CBufRet.f32 %2126, 1
  %2129 = extractvalue %dx.types.CBufRet.f32 %2126, 2
  %2130 = fmul fast float %2127, %2123
  %2131 = fmul fast float %2128, %2124
  %2132 = fmul fast float %2129, %2125
  %2133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2134 = extractvalue %dx.types.CBufRet.f32 %2133, 0
  %2135 = extractvalue %dx.types.CBufRet.f32 %2133, 1
  %2136 = extractvalue %dx.types.CBufRet.f32 %2133, 2
  %2137 = fadd fast float %2130, %2134
  %2138 = fadd fast float %2131, %2135
  %2139 = fadd fast float %2132, %2136
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 0
  %2142 = fmul fast float %2141, %2088
  %2143 = extractvalue %dx.types.CBufRet.f32 %2140, 1
  %2144 = fadd fast float %2142, %2143
  %2145 = extractvalue %dx.types.CBufRet.f32 %2140, 2
  %2146 = fmul fast float %2145, %2089
  %2147 = extractvalue %dx.types.CBufRet.f32 %2140, 3
  %2148 = fadd fast float %2146, %2147
  %2149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2150 = extractvalue %dx.types.CBufRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.CBufRet.f32 %2149, 1
  %2152 = extractvalue %dx.types.CBufRet.f32 %2149, 2
  %2153 = extractvalue %dx.types.CBufRet.f32 %2149, 3
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.CBufRet.f32 %2154, 1
  %2157 = extractvalue %dx.types.CBufRet.f32 %2154, 2
  %2158 = extractvalue %dx.types.CBufRet.f32 %2154, 3
  %2159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %61, float %2144, float %2148, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2160 = extractvalue %dx.types.ResRet.f32 %2159, 0
  %2161 = extractvalue %dx.types.ResRet.f32 %2159, 1
  %2162 = extractvalue %dx.types.ResRet.f32 %2159, 2
  %2163 = extractvalue %dx.types.ResRet.f32 %2159, 3
  %2164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %61, float %2144, float %2148, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2166 = extractvalue %dx.types.ResRet.f32 %2164, 1
  %2167 = extractvalue %dx.types.ResRet.f32 %2164, 2
  %2168 = extractvalue %dx.types.ResRet.f32 %2164, 3
  %2169 = fmul fast float %2160, %2137
  %2170 = fmul fast float %2165, %2137
  %2171 = fmul fast float %2167, %2137
  %2172 = fmul fast float %2163, %2137
  %2173 = fadd fast float %2169, %2150
  %2174 = fadd fast float %2170, %2151
  %2175 = fadd fast float %2171, %2152
  %2176 = fadd fast float %2172, %2153
  %2177 = fmul fast float %2161, %2137
  %2178 = fmul fast float %2166, %2137
  %2179 = fadd fast float %2177, %2155
  %2180 = fadd fast float %2178, %2156
  %2181 = fmul fast float %2162, %2137
  %2182 = fmul fast float %2168, %2137
  %2183 = fadd fast float %2181, %2157
  %2184 = fadd fast float %2182, %2158
  %2185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %61, float %2144, float %2148, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.ResRet.f32 %2185, 1
  %2188 = extractvalue %dx.types.ResRet.f32 %2185, 2
  %2189 = extractvalue %dx.types.ResRet.f32 %2185, 3
  %2190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %61, float %2144, float %2148, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2191 = extractvalue %dx.types.ResRet.f32 %2190, 0
  %2192 = extractvalue %dx.types.ResRet.f32 %2190, 1
  %2193 = extractvalue %dx.types.ResRet.f32 %2190, 2
  %2194 = extractvalue %dx.types.ResRet.f32 %2190, 3
  %2195 = fmul fast float %2186, %2138
  %2196 = fmul fast float %2191, %2138
  %2197 = fmul fast float %2193, %2138
  %2198 = fmul fast float %2189, %2138
  %2199 = fadd fast float %2173, %2195
  %2200 = fadd fast float %2174, %2196
  %2201 = fadd fast float %2175, %2197
  %2202 = fadd fast float %2176, %2198
  %2203 = fmul fast float %2187, %2138
  %2204 = fmul fast float %2192, %2138
  %2205 = fadd fast float %2179, %2203
  %2206 = fadd fast float %2180, %2204
  %2207 = fmul fast float %2188, %2138
  %2208 = fmul fast float %2194, %2138
  %2209 = fadd fast float %2183, %2207
  %2210 = fadd fast float %2184, %2208
  %2211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %61, float %2144, float %2148, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2212 = extractvalue %dx.types.ResRet.f32 %2211, 0
  %2213 = extractvalue %dx.types.ResRet.f32 %2211, 1
  %2214 = extractvalue %dx.types.ResRet.f32 %2211, 2
  %2215 = extractvalue %dx.types.ResRet.f32 %2211, 3
  %2216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %61, float %2144, float %2148, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2217 = extractvalue %dx.types.ResRet.f32 %2216, 0
  %2218 = extractvalue %dx.types.ResRet.f32 %2216, 1
  %2219 = extractvalue %dx.types.ResRet.f32 %2216, 2
  %2220 = extractvalue %dx.types.ResRet.f32 %2216, 3
  %2221 = fmul fast float %2212, %2139
  %2222 = fmul fast float %2217, %2139
  %2223 = fmul fast float %2219, %2139
  %2224 = fmul fast float %2215, %2139
  %2225 = fadd fast float %2199, %2221
  %2226 = fadd fast float %2200, %2222
  %2227 = fadd fast float %2201, %2223
  %2228 = fadd fast float %2202, %2224
  %2229 = fmul fast float %2213, %2139
  %2230 = fmul fast float %2218, %2139
  %2231 = fadd fast float %2205, %2229
  %2232 = fadd fast float %2206, %2230
  %2233 = fmul fast float %2214, %2139
  %2234 = fmul fast float %2220, %2139
  %2235 = fadd fast float %2209, %2233
  %2236 = fadd fast float %2210, %2234
  %2237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.f32 %2237, 0
  %2239 = fsub fast float %1707, %2238
  %2240 = fsub fast float %2081, %1707
  %2241 = call float @dx.op.binary.f32(i32 35, float %2240, float %2239)  ; FMax(a,b)
  %2242 = extractvalue %dx.types.CBufRet.f32 %2237, 1
  %2243 = fsub fast float %1708, %2242
  %2244 = fsub fast float %2082, %1708
  %2245 = call float @dx.op.binary.f32(i32 35, float %2244, float %2243)  ; FMax(a,b)
  %2246 = call float @dx.op.binary.f32(i32 35, float %2241, float %2245)  ; FMax(a,b)
  %2247 = extractvalue %dx.types.CBufRet.f32 %2085, 3
  %2248 = fmul fast float %2247, %2246
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2251 = extractvalue %dx.types.CBufRet.f32 %2250, 0
  %2252 = extractvalue %dx.types.CBufRet.f32 %2250, 1
  %2253 = extractvalue %dx.types.CBufRet.f32 %2250, 2
  %2254 = extractvalue %dx.types.CBufRet.f32 %2250, 3
  %2255 = fsub fast float %2251, %2225
  %2256 = fsub fast float %2252, %2226
  %2257 = fsub fast float %2253, %2227
  %2258 = fsub fast float %2254, %2228
  %2259 = fmul fast float %2255, %2249
  %2260 = fmul fast float %2256, %2249
  %2261 = fmul fast float %2257, %2249
  %2262 = fmul fast float %2258, %2249
  %2263 = fadd fast float %2259, %2225
  %2264 = fadd fast float %2260, %2226
  %2265 = fadd fast float %2261, %2227
  %2266 = fadd fast float %2262, %2228
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.CBufRet.f32 %2267, 1
  %2270 = fsub fast float %2268, %2231
  %2271 = fsub fast float %2269, %2232
  %2272 = fmul fast float %2270, %2249
  %2273 = fmul fast float %2271, %2249
  %2274 = fadd fast float %2272, %2231
  %2275 = fadd fast float %2273, %2232
  %2276 = extractvalue %dx.types.CBufRet.f32 %2267, 2
  %2277 = extractvalue %dx.types.CBufRet.f32 %2267, 3
  %2278 = fsub fast float %2276, %2235
  %2279 = fsub fast float %2277, %2236
  %2280 = fmul fast float %2278, %2249
  %2281 = fmul fast float %2279, %2249
  %2282 = fadd fast float %2280, %2235
  %2283 = fadd fast float %2281, %2236
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2286 = fmul fast float %2285, %2263
  %2287 = fmul fast float %2285, %2264
  %2288 = fmul fast float %2285, %2265
  %2289 = fmul fast float %2285, %2266
  %2290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2291 = extractvalue %dx.types.CBufRet.f32 %2290, 0
  %2292 = fmul fast float %2291, %2274
  %2293 = fmul fast float %2291, %2275
  %2294 = fadd fast float %2292, %2286
  %2295 = fadd fast float %2293, %2288
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2298 = fmul fast float %2297, %2282
  %2299 = fmul fast float %2297, %2283
  %2300 = fadd fast float %2294, %2298
  %2301 = fadd fast float %2295, %2299
  %2302 = extractvalue %dx.types.CBufRet.f32 %2284, 1
  %2303 = fmul fast float %2302, %2263
  %2304 = fmul fast float %2302, %2264
  %2305 = fmul fast float %2302, %2265
  %2306 = fmul fast float %2302, %2266
  %2307 = extractvalue %dx.types.CBufRet.f32 %2290, 1
  %2308 = fmul fast float %2307, %2274
  %2309 = fmul fast float %2307, %2275
  %2310 = fadd fast float %2308, %2303
  %2311 = fadd fast float %2309, %2305
  %2312 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2313 = fmul fast float %2312, %2282
  %2314 = fmul fast float %2312, %2283
  %2315 = fadd fast float %2310, %2313
  %2316 = fadd fast float %2311, %2314
  %2317 = extractvalue %dx.types.CBufRet.f32 %2284, 2
  %2318 = fmul fast float %2317, %2263
  %2319 = fmul fast float %2317, %2264
  %2320 = fmul fast float %2317, %2265
  %2321 = fmul fast float %2317, %2266
  %2322 = extractvalue %dx.types.CBufRet.f32 %2290, 2
  %2323 = fmul fast float %2322, %2274
  %2324 = fmul fast float %2322, %2275
  %2325 = fadd fast float %2323, %2318
  %2326 = fadd fast float %2324, %2320
  %2327 = extractvalue %dx.types.CBufRet.f32 %2296, 2
  %2328 = fmul fast float %2327, %2282
  %2329 = fmul fast float %2327, %2283
  %2330 = fadd fast float %2325, %2328
  %2331 = fadd fast float %2326, %2329
  %2332 = fmul fast float %2319, %2319
  %2333 = fmul fast float %2331, %2331
  %2334 = fmul fast float %2321, %2321
  %2335 = fadd fast float %2334, %2332
  %2336 = fadd fast float %2335, %2333
  %2337 = call float @dx.op.unary.f32(i32 24, float %2336)  ; Sqrt(value)
  %2338 = fcmp fast ugt float %2337, 0.000000e+00
  br i1 %2338, label %2339, label %2354

; <label>:2339                                    ; preds = %2073
  %2340 = fsub fast float -0.000000e+00, %2321
  %2341 = fdiv fast float %2340, %2337
  %2342 = fsub fast float -0.000000e+00, %2319
  %2343 = fdiv fast float %2342, %2337
  %2344 = fdiv fast float %2331, %2337
  %2345 = fmul fast float %2330, 0x3FE279A760000000
  %2346 = fmul fast float %2343, %2319
  %2347 = fmul fast float %2344, %2331
  %2348 = fmul fast float %2341, %2321
  %2349 = fadd fast float %2346, %2348
  %2350 = fsub fast float %2349, %2347
  %2351 = call float @dx.op.unary.f32(i32 6, float %2350)  ; FAbs(value)
  %2352 = fadd fast float %2351, 0x3DDB7CDFE0000000
  %2353 = fdiv fast float %2345, %2352
  br label %2354

; <label>:2354                                    ; preds = %2339, %2073
  %2355 = phi float [ %2353, %2339 ], [ 1.000000e+00, %2073 ]
  %2356 = fmul fast float %2304, %2304
  %2357 = fmul fast float %2316, %2316
  %2358 = fmul fast float %2306, %2306
  %2359 = fadd fast float %2358, %2356
  %2360 = fadd fast float %2359, %2357
  %2361 = call float @dx.op.unary.f32(i32 24, float %2360)  ; Sqrt(value)
  %2362 = fcmp fast ugt float %2361, 0.000000e+00
  br i1 %2362, label %2363, label %2378

; <label>:2363                                    ; preds = %2354
  %2364 = fsub fast float -0.000000e+00, %2306
  %2365 = fdiv fast float %2364, %2361
  %2366 = fsub fast float -0.000000e+00, %2304
  %2367 = fdiv fast float %2366, %2361
  %2368 = fdiv fast float %2316, %2361
  %2369 = fmul fast float %2315, 0x3FE279A760000000
  %2370 = fmul fast float %2367, %2304
  %2371 = fmul fast float %2368, %2316
  %2372 = fmul fast float %2365, %2306
  %2373 = fadd fast float %2370, %2372
  %2374 = fsub fast float %2373, %2371
  %2375 = call float @dx.op.unary.f32(i32 6, float %2374)  ; FAbs(value)
  %2376 = fadd fast float %2375, 0x3DDB7CDFE0000000
  %2377 = fdiv fast float %2369, %2376
  br label %2378

; <label>:2378                                    ; preds = %2363, %2354
  %2379 = phi float [ %2377, %2363 ], [ 1.000000e+00, %2354 ]
  %2380 = call float @dx.op.binary.f32(i32 36, float %2379, float %2355)  ; FMin(a,b)
  %2381 = fmul fast float %2287, %2287
  %2382 = fmul fast float %2301, %2301
  %2383 = fmul fast float %2289, %2289
  %2384 = fadd fast float %2383, %2381
  %2385 = fadd fast float %2384, %2382
  %2386 = call float @dx.op.unary.f32(i32 24, float %2385)  ; Sqrt(value)
  %2387 = fcmp fast ugt float %2386, 0.000000e+00
  br i1 %2387, label %2388, label %2403

; <label>:2388                                    ; preds = %2378
  %2389 = fsub fast float -0.000000e+00, %2289
  %2390 = fdiv fast float %2389, %2386
  %2391 = fsub fast float -0.000000e+00, %2287
  %2392 = fdiv fast float %2391, %2386
  %2393 = fdiv fast float %2301, %2386
  %2394 = fmul fast float %2300, 0x3FE279A760000000
  %2395 = fmul fast float %2392, %2287
  %2396 = fmul fast float %2393, %2301
  %2397 = fmul fast float %2390, %2289
  %2398 = fadd fast float %2395, %2397
  %2399 = fsub fast float %2398, %2396
  %2400 = call float @dx.op.unary.f32(i32 6, float %2399)  ; FAbs(value)
  %2401 = fadd fast float %2400, 0x3DDB7CDFE0000000
  %2402 = fdiv fast float %2394, %2401
  br label %2403

; <label>:2403                                    ; preds = %2388, %2378
  %2404 = phi float [ %2402, %2388 ], [ 1.000000e+00, %2378 ]
  %2405 = call float @dx.op.binary.f32(i32 36, float %2404, float %2380)  ; FMin(a,b)
  %2406 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  %2407 = fcmp fast olt float %2406, 1.000000e+00
  br i1 %2407, label %2408, label %2418

; <label>:2408                                    ; preds = %2403
  %2409 = fmul fast float %2406, %2287
  %2410 = fmul fast float %2406, %2301
  %2411 = fmul fast float %2406, %2289
  %2412 = fmul fast float %2406, %2304
  %2413 = fmul fast float %2406, %2316
  %2414 = fmul fast float %2406, %2306
  %2415 = fmul fast float %2406, %2319
  %2416 = fmul fast float %2406, %2331
  %2417 = fmul fast float %2406, %2321
  br label %2418

; <label>:2418                                    ; preds = %2408, %2403
  %2419 = phi float [ %2415, %2408 ], [ %2319, %2403 ]
  %2420 = phi float [ %2416, %2408 ], [ %2331, %2403 ]
  %2421 = phi float [ %2417, %2408 ], [ %2321, %2403 ]
  %2422 = phi float [ %2412, %2408 ], [ %2304, %2403 ]
  %2423 = phi float [ %2413, %2408 ], [ %2316, %2403 ]
  %2424 = phi float [ %2414, %2408 ], [ %2306, %2403 ]
  %2425 = phi float [ %2409, %2408 ], [ %2287, %2403 ]
  %2426 = phi float [ %2410, %2408 ], [ %2301, %2403 ]
  %2427 = phi float [ %2411, %2408 ], [ %2289, %2403 ]
  %2428 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2300)  ; FMax(a,b)
  %2429 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2315)  ; FMax(a,b)
  %2430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2330)  ; FMax(a,b)
  %2431 = fcmp fast oge float %2088, 0.000000e+00
  %2432 = and i1 %2431, %1859
  %2433 = fcmp fast ole float %2088, 1.000000e+00
  %2434 = and i1 %2433, %2432
  %2435 = fcmp fast oge float %2089, 0.000000e+00
  %2436 = and i1 %2435, %2434
  %2437 = fcmp fast ole float %2089, 1.000000e+00
  %2438 = and i1 %2437, %2436
  br i1 %2438, label %2439, label %2584, !dx.controlflow.hints !106

; <label>:2439                                    ; preds = %2418
  %2440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2441 = extractvalue %dx.types.CBufRet.f32 %2440, 2
  %2442 = extractvalue %dx.types.CBufRet.f32 %2440, 3
  %2443 = fmul fast float %2441, %2088
  %2444 = fmul fast float %2442, %2089
  %2445 = call float @dx.op.unary.f32(i32 27, float %2443)  ; Round_ni(value)
  %2446 = call float @dx.op.unary.f32(i32 27, float %2444)  ; Round_ni(value)
  %2447 = fptosi float %2445 to i32
  %2448 = fptosi float %2446 to i32
  %2449 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %51, i32 0, i32 %2447, i32 %2448, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 65535
  %2452 = lshr i32 %2450, 16
  %2453 = icmp eq i32 %2451, 65535
  br i1 %2453, label %2490, label %2454

; <label>:2454                                    ; preds = %2439
  %2455 = extractvalue %dx.types.CBufRet.f32 %1857, 1
  %2456 = extractvalue %dx.types.CBufRet.f32 %2440, 0
  %2457 = extractvalue %dx.types.CBufRet.f32 %2440, 1
  %2458 = fmul fast float %2456, %2088
  %2459 = fmul fast float %2457, %2089
  %2460 = fmul fast float %2458, 1.250000e-01
  %2461 = fmul fast float %2459, 1.250000e-01
  %2462 = call float @dx.op.unary.f32(i32 27, float %2460)  ; Round_ni(value)
  %2463 = call float @dx.op.unary.f32(i32 27, float %2461)  ; Round_ni(value)
  %2464 = fmul fast float %2462, 8.000000e+00
  %2465 = fmul fast float %2463, 8.000000e+00
  %2466 = and i32 %2450, 255
  %2467 = lshr i32 %2450, 8
  %2468 = and i32 %2467, 255
  %2469 = mul nuw nsw i32 %2466, 9
  %2470 = uitofp i32 %2469 to float
  %2471 = mul nuw nsw i32 %2468, 9
  %2472 = uitofp i32 %2471 to float
  %2473 = fadd fast float %2470, 5.000000e-01
  %2474 = fadd fast float %2473, %2458
  %2475 = fsub fast float %2474, %2464
  %2476 = fadd fast float %2472, 5.000000e-01
  %2477 = fadd fast float %2476, %2459
  %2478 = fsub fast float %2477, %2465
  %2479 = fdiv fast float %2475, %1858
  %2480 = fdiv fast float %2478, %2455
  %2481 = fmul fast float %2116, 4.375000e-01
  %2482 = fadd fast float %2481, 3.125000e-02
  %2483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %61, float %2479, float %2480, float %2482, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.ResRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.ResRet.f32 %2483, 2
  %2487 = fadd fast float %2484, %2428
  %2488 = fadd fast float %2485, %2429
  %2489 = fadd fast float %2486, %2430
  br label %2490

; <label>:2490                                    ; preds = %2454, %2439
  %2491 = phi float [ %2489, %2454 ], [ %2430, %2439 ]
  %2492 = phi float [ %2488, %2454 ], [ %2429, %2439 ]
  %2493 = phi float [ %2487, %2454 ], [ %2428, %2439 ]
  %2494 = icmp eq i32 %2452, 65535
  br i1 %2494, label %2584, label %2495

; <label>:2495                                    ; preds = %2490
  %2496 = extractvalue %dx.types.CBufRet.f32 %1857, 1
  %2497 = extractvalue %dx.types.CBufRet.f32 %2440, 0
  %2498 = extractvalue %dx.types.CBufRet.f32 %2440, 1
  %2499 = fmul fast float %2497, %2088
  %2500 = fmul fast float %2498, %2089
  %2501 = fmul fast float %2499, 1.250000e-01
  %2502 = fmul fast float %2500, 1.250000e-01
  %2503 = call float @dx.op.unary.f32(i32 27, float %2501)  ; Round_ni(value)
  %2504 = call float @dx.op.unary.f32(i32 27, float %2502)  ; Round_ni(value)
  %2505 = fmul fast float %2503, 8.000000e+00
  %2506 = fmul fast float %2504, 8.000000e+00
  %2507 = fsub fast float %2499, %2505
  %2508 = fsub fast float %2500, %2506
  %2509 = fadd fast float %2507, 5.000000e-01
  %2510 = fadd fast float %2508, 5.000000e-01
  %2511 = and i32 %2452, 255
  %2512 = lshr i32 %2450, 24
  %2513 = mul nuw nsw i32 %2511, 9
  %2514 = uitofp i32 %2513 to float
  %2515 = mul nuw nsw i32 %2512, 9
  %2516 = uitofp i32 %2515 to float
  %2517 = fadd fast float %2509, %2514
  %2518 = fadd fast float %2510, %2516
  %2519 = fdiv fast float %2517, %1858
  %2520 = fdiv fast float %2518, %2496
  %2521 = fmul fast float %2116, 4.375000e-01
  %2522 = fadd fast float %2521, 3.125000e-02
  %2523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %61, float %2519, float %2520, float %2522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2524 = extractvalue %dx.types.ResRet.f32 %2523, 0
  %2525 = extractvalue %dx.types.ResRet.f32 %2523, 1
  %2526 = extractvalue %dx.types.ResRet.f32 %2523, 2
  %2527 = fadd fast float %2521, 5.312500e-01
  %2528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %61, float %2519, float %2520, float %2527, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2529 = extractvalue %dx.types.ResRet.f32 %2528, 0
  %2530 = extractvalue %dx.types.ResRet.f32 %2528, 1
  %2531 = extractvalue %dx.types.ResRet.f32 %2528, 2
  %2532 = fmul fast float %2529, 2.000000e+00
  %2533 = fmul fast float %2530, 2.000000e+00
  %2534 = fmul fast float %2531, 2.000000e+00
  %2535 = fadd fast float %2532, -1.000000e+00
  %2536 = fadd fast float %2533, -1.000000e+00
  %2537 = fadd fast float %2534, -1.000000e+00
  %2538 = fmul fast float %2535, %2535
  %2539 = fmul fast float %2536, %2536
  %2540 = fadd fast float %2538, %2539
  %2541 = fmul fast float %2537, %2537
  %2542 = fadd fast float %2540, %2541
  %2543 = call float @dx.op.unary.f32(i32 24, float %2542)  ; Sqrt(value)
  %2544 = fcmp fast ogt float %2543, 0.000000e+00
  br i1 %2544, label %2545, label %2549

; <label>:2545                                    ; preds = %2495
  %2546 = fdiv fast float %2535, %2543
  %2547 = fdiv fast float %2536, %2543
  %2548 = fdiv fast float %2537, %2543
  br label %2549

; <label>:2549                                    ; preds = %2545, %2495
  %2550 = phi float [ %2546, %2545 ], [ 0.000000e+00, %2495 ]
  %2551 = phi float [ %2547, %2545 ], [ 0.000000e+00, %2495 ]
  %2552 = phi float [ %2548, %2545 ], [ 0.000000e+00, %2495 ]
  %2553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2554 = extractvalue %dx.types.CBufRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.CBufRet.f32 %2553, 1
  %2556 = fsub fast float %1707, %2554
  %2557 = fsub fast float %1708, %2555
  %2558 = fmul fast float %2556, %2556
  %2559 = fmul fast float %2557, %2557
  %2560 = fadd fast float %2558, %2559
  %2561 = call float @dx.op.unary.f32(i32 24, float %2560)  ; Sqrt(value)
  %2562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2563 = extractvalue %dx.types.CBufRet.f32 %2562, 0
  %2564 = extractvalue %dx.types.CBufRet.f32 %2562, 1
  %2565 = fsub fast float %2561, %2563
  %2566 = fdiv fast float %2565, %2564
  %2567 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2568 = fmul fast float %2567, 2.000000e+00
  %2569 = fsub fast float 3.000000e+00, %2568
  %2570 = fmul fast float %2567, %2567
  %2571 = fmul fast float %2570, %2569
  %2572 = call float @dx.op.dot3.f32(i32 55, float %2550, float %2551, float %2552, float %1671, float %1672, float %1673)  ; Dot3(ax,ay,az,bx,by,bz)
  %2573 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2572)  ; FMax(a,b)
  %2574 = fmul fast float %2573, 0x400C5BF8A0000000
  %2575 = fmul fast float %2571, %2524
  %2576 = fmul fast float %2575, %2574
  %2577 = fadd fast float %2576, %2493
  %2578 = fmul fast float %2571, %2525
  %2579 = fmul fast float %2578, %2574
  %2580 = fadd fast float %2579, %2492
  %2581 = fmul fast float %2571, %2526
  %2582 = fmul fast float %2581, %2574
  %2583 = fadd fast float %2582, %2491
  br label %2584

; <label>:2584                                    ; preds = %2549, %2490, %2418
  %2585 = phi float [ %2583, %2549 ], [ %2491, %2490 ], [ %2430, %2418 ]
  %2586 = phi float [ %2580, %2549 ], [ %2492, %2490 ], [ %2429, %2418 ]
  %2587 = phi float [ %2577, %2549 ], [ %2493, %2490 ], [ %2428, %2418 ]
  %2588 = fcmp fast ogt float %2075, %2112
  %2589 = and i1 %2431, %2588
  %2590 = and i1 %2433, %2589
  %2591 = and i1 %2435, %2590
  %2592 = and i1 %2437, %2591
  br i1 %2592, label %2593, label %2650, !dx.controlflow.hints !107

; <label>:2593                                    ; preds = %2584
  %2594 = fmul fast float %2114, 0x3FC24924A0000000
  %2595 = fsub fast float %2075, %2112
  %2596 = fdiv fast float %2595, %2594
  %2597 = call float @dx.op.unary.f32(i32 7, float %2596)  ; Saturate(value)
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 0
  %2600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2600, 0
  %2602 = extractvalue %dx.types.CBufRet.f32 %2600, 1
  %2603 = extractvalue %dx.types.CBufRet.f32 %2600, 2
  %2604 = fsub fast float %2599, %2587
  %2605 = fsub fast float %2601, %2425
  %2606 = fsub fast float %2602, %2426
  %2607 = fsub fast float %2603, %2427
  %2608 = fmul fast float %2604, %2597
  %2609 = fmul fast float %2605, %2597
  %2610 = fmul fast float %2606, %2597
  %2611 = fmul fast float %2607, %2597
  %2612 = fadd fast float %2608, %2587
  %2613 = fadd fast float %2609, %2425
  %2614 = fadd fast float %2610, %2426
  %2615 = fadd fast float %2611, %2427
  %2616 = extractvalue %dx.types.CBufRet.f32 %2598, 1
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.CBufRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.CBufRet.f32 %2617, 2
  %2621 = fsub fast float %2616, %2586
  %2622 = fsub fast float %2618, %2422
  %2623 = fsub fast float %2619, %2423
  %2624 = fsub fast float %2620, %2424
  %2625 = fmul fast float %2621, %2597
  %2626 = fmul fast float %2622, %2597
  %2627 = fmul fast float %2623, %2597
  %2628 = fmul fast float %2624, %2597
  %2629 = fadd fast float %2625, %2586
  %2630 = fadd fast float %2626, %2422
  %2631 = fadd fast float %2627, %2423
  %2632 = fadd fast float %2628, %2424
  %2633 = extractvalue %dx.types.CBufRet.f32 %2598, 2
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.CBufRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.CBufRet.f32 %2634, 2
  %2638 = fsub fast float %2633, %2585
  %2639 = fsub fast float %2635, %2419
  %2640 = fsub fast float %2636, %2420
  %2641 = fsub fast float %2637, %2421
  %2642 = fmul fast float %2638, %2597
  %2643 = fmul fast float %2639, %2597
  %2644 = fmul fast float %2640, %2597
  %2645 = fmul fast float %2641, %2597
  %2646 = fadd fast float %2642, %2585
  %2647 = fadd fast float %2643, %2419
  %2648 = fadd fast float %2644, %2420
  %2649 = fadd fast float %2645, %2421
  br label %2650

; <label>:2650                                    ; preds = %2593, %2584
  %2651 = phi float [ %2646, %2593 ], [ %2585, %2584 ]
  %2652 = phi float [ %2647, %2593 ], [ %2419, %2584 ]
  %2653 = phi float [ %2648, %2593 ], [ %2420, %2584 ]
  %2654 = phi float [ %2649, %2593 ], [ %2421, %2584 ]
  %2655 = phi float [ %2629, %2593 ], [ %2586, %2584 ]
  %2656 = phi float [ %2630, %2593 ], [ %2422, %2584 ]
  %2657 = phi float [ %2631, %2593 ], [ %2423, %2584 ]
  %2658 = phi float [ %2632, %2593 ], [ %2424, %2584 ]
  %2659 = phi float [ %2612, %2593 ], [ %2587, %2584 ]
  %2660 = phi float [ %2613, %2593 ], [ %2425, %2584 ]
  %2661 = phi float [ %2614, %2593 ], [ %2426, %2584 ]
  %2662 = phi float [ %2615, %2593 ], [ %2427, %2584 ]
  %2663 = extractvalue %dx.types.CBufRet.f32 %2237, 3
  %2664 = fmul fast float %2663, %2659
  %2665 = fmul fast float %2663, %2655
  %2666 = fmul fast float %2663, %2651
  %2667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2668 = extractvalue %dx.types.CBufRet.f32 %2667, 3
  %2669 = fmul fast float %2664, %2668
  %2670 = fmul fast float %2665, %2668
  %2671 = fmul fast float %2666, %2668
  %2672 = call float @dx.op.dot3.f32(i32 55, float %2669, float %2670, float %2671, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2673 = fmul fast float %2672, 0x3FD20DD760000000
  %2674 = fmul fast float %2660, 1.500000e+00
  %2675 = fmul fast float %2674, %2663
  %2676 = fmul fast float %2675, %2668
  %2677 = fmul fast float %2661, 1.500000e+00
  %2678 = fmul fast float %2677, %2663
  %2679 = fmul fast float %2678, %2668
  %2680 = fmul fast float %2662, 1.500000e+00
  %2681 = fmul fast float %2680, %2663
  %2682 = fmul fast float %2681, %2668
  %2683 = fmul fast float %2656, 1.500000e+00
  %2684 = fmul fast float %2683, %2663
  %2685 = fmul fast float %2684, %2668
  %2686 = fmul fast float %2657, 1.500000e+00
  %2687 = fmul fast float %2686, %2663
  %2688 = fmul fast float %2687, %2668
  %2689 = fmul fast float %2658, 1.500000e+00
  %2690 = fmul fast float %2689, %2663
  %2691 = fmul fast float %2690, %2668
  %2692 = fmul fast float %2652, 1.500000e+00
  %2693 = fmul fast float %2692, %2663
  %2694 = fmul fast float %2693, %2668
  %2695 = fmul fast float %2653, 1.500000e+00
  %2696 = fmul fast float %2695, %2663
  %2697 = fmul fast float %2696, %2668
  %2698 = fmul fast float %2654, 1.500000e+00
  %2699 = fmul fast float %2698, %2663
  %2700 = fmul fast float %2699, %2668
  %2701 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2669)  ; FMax(a,b)
  %2702 = call float @dx.op.dot3.f32(i32 55, float %2676, float %2679, float %2682, float %2676, float %2679, float %2682)  ; Dot3(ax,ay,az,bx,by,bz)
  %2703 = fcmp fast oeq float %2702, 0.000000e+00
  %2704 = fcmp fast oeq float %2701, 0.000000e+00
  %2705 = or i1 %2704, %2703
  br i1 %2705, label %2735, label %2706

; <label>:2706                                    ; preds = %2650
  %2707 = fsub fast float -0.000000e+00, %2682
  %2708 = fsub fast float -0.000000e+00, %2676
  %2709 = call float @dx.op.unary.f32(i32 24, float %2702)  ; Sqrt(value)
  %2710 = fdiv fast float %2709, %2701
  %2711 = fcmp fast ogt float %2710, 0x3FFB6F8900000000
  %2712 = select i1 %2711, float 0x3FFB6F8900000000, float %2710
  %2713 = fmul fast float %2712, 0x3FE8A23460000000
  %2714 = call float @dx.op.unary.f32(i32 7, float %2713)  ; Saturate(value)
  %2715 = call float @dx.op.binary.f32(i32 35, float %2712, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2716 = fmul fast float %2714, %2701
  %2717 = fmul fast float %2715, 0x3FF279A740000000
  %2718 = fadd fast float %2717, -1.000000e+00
  %2719 = call float @dx.op.dot3.f32(i32 55, float %2707, float %2708, float %2679, float %2707, float %2708, float %2679)  ; Dot3(ax,ay,az,bx,by,bz)
  %2720 = call float @dx.op.unary.f32(i32 25, float %2719)  ; Rsqrt(value)
  %2721 = fmul fast float %2720, %2707
  %2722 = fmul fast float %2720, %2708
  %2723 = fmul fast float %2720, %2679
  %2724 = fmul fast float %2718, %2718
  %2725 = fsub fast float 1.000000e+00, %2724
  %2726 = fmul fast float %2715, 0x40005F8BE0000000
  %2727 = fsub fast float 0x400C5BF8A0000000, %2726
  %2728 = fdiv fast float %2716, %2727
  %2729 = fmul fast float %2728, 0x3FEE31C3C0000000
  %2730 = fmul fast float %2729, %2725
  %2731 = fmul fast float %2715, 0x3FDACB7480000000
  %2732 = fadd fast float %2731, 0xBFD7347680000000
  %2733 = fmul fast float %2732, %2728
  %2734 = fmul fast float %2733, %2725
  br label %2735

; <label>:2735                                    ; preds = %2706, %2650
  %2736 = phi float [ %2721, %2706 ], [ 0.000000e+00, %2650 ]
  %2737 = phi float [ %2722, %2706 ], [ 0.000000e+00, %2650 ]
  %2738 = phi float [ %2723, %2706 ], [ 0.000000e+00, %2650 ]
  %2739 = phi float [ %2730, %2706 ], [ 0.000000e+00, %2650 ]
  %2740 = phi float [ %2734, %2706 ], [ 0.000000e+00, %2650 ]
  %2741 = call float @dx.op.dot3.f32(i32 55, float %2736, float %2737, float %2738, float %1671, float %1672, float %1673)  ; Dot3(ax,ay,az,bx,by,bz)
  %2742 = fmul fast float %2741, %2741
  %2743 = fmul fast float %2742, 0x3FEE471020000000
  %2744 = fadd fast float %2743, 0xBFD42F6020000000
  %2745 = fmul fast float %2701, 0x3FD20DD760000000
  %2746 = fmul fast float %2744, %2740
  %2747 = fmul fast float %2739, 0x3FDF454380000000
  %2748 = fmul fast float %2747, %2741
  %2749 = fadd fast float %2748, %2745
  %2750 = fadd fast float %2749, %2746
  %2751 = call float @dx.op.dot3.f32(i32 55, float %2736, float %2737, float %2738, float %1685, float %1686, float %1687)  ; Dot3(ax,ay,az,bx,by,bz)
  %2752 = fmul fast float %2751, 0x3FDF454380000000
  %2753 = fmul fast float %2751, %2751
  %2754 = fmul fast float %2753, 0x3FEE471020000000
  %2755 = fadd fast float %2754, 0xBFD42F6020000000
  %2756 = call float @dx.op.dot3.f32(i32 55, float %2701, float %2739, float %2740, float 0x3FD20DD760000000, float %2752, float %2755)  ; Dot3(ax,ay,az,bx,by,bz)
  %2757 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2670)  ; FMax(a,b)
  %2758 = call float @dx.op.dot3.f32(i32 55, float %2685, float %2688, float %2691, float %2685, float %2688, float %2691)  ; Dot3(ax,ay,az,bx,by,bz)
  %2759 = fcmp fast oeq float %2758, 0.000000e+00
  %2760 = fcmp fast oeq float %2757, 0.000000e+00
  %2761 = or i1 %2760, %2759
  br i1 %2761, label %2791, label %2762

; <label>:2762                                    ; preds = %2735
  %2763 = fsub fast float -0.000000e+00, %2691
  %2764 = fsub fast float -0.000000e+00, %2685
  %2765 = call float @dx.op.unary.f32(i32 24, float %2758)  ; Sqrt(value)
  %2766 = fdiv fast float %2765, %2757
  %2767 = fcmp fast ogt float %2766, 0x3FFB6F8900000000
  %2768 = select i1 %2767, float 0x3FFB6F8900000000, float %2766
  %2769 = fmul fast float %2768, 0x3FE8A23460000000
  %2770 = call float @dx.op.unary.f32(i32 7, float %2769)  ; Saturate(value)
  %2771 = call float @dx.op.binary.f32(i32 35, float %2768, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2772 = fmul fast float %2770, %2757
  %2773 = fmul fast float %2771, 0x3FF279A740000000
  %2774 = fadd fast float %2773, -1.000000e+00
  %2775 = call float @dx.op.dot3.f32(i32 55, float %2763, float %2764, float %2688, float %2763, float %2764, float %2688)  ; Dot3(ax,ay,az,bx,by,bz)
  %2776 = call float @dx.op.unary.f32(i32 25, float %2775)  ; Rsqrt(value)
  %2777 = fmul fast float %2776, %2763
  %2778 = fmul fast float %2776, %2764
  %2779 = fmul fast float %2776, %2688
  %2780 = fmul fast float %2774, %2774
  %2781 = fsub fast float 1.000000e+00, %2780
  %2782 = fmul fast float %2771, 0x40005F8BE0000000
  %2783 = fsub fast float 0x400C5BF8A0000000, %2782
  %2784 = fdiv fast float %2772, %2783
  %2785 = fmul fast float %2784, 0x3FEE31C3C0000000
  %2786 = fmul fast float %2785, %2781
  %2787 = fmul fast float %2771, 0x3FDACB7480000000
  %2788 = fadd fast float %2787, 0xBFD7347680000000
  %2789 = fmul fast float %2788, %2784
  %2790 = fmul fast float %2789, %2781
  br label %2791

; <label>:2791                                    ; preds = %2762, %2735
  %2792 = phi float [ %2777, %2762 ], [ 0.000000e+00, %2735 ]
  %2793 = phi float [ %2778, %2762 ], [ 0.000000e+00, %2735 ]
  %2794 = phi float [ %2779, %2762 ], [ 0.000000e+00, %2735 ]
  %2795 = phi float [ %2786, %2762 ], [ 0.000000e+00, %2735 ]
  %2796 = phi float [ %2790, %2762 ], [ 0.000000e+00, %2735 ]
  %2797 = call float @dx.op.dot3.f32(i32 55, float %2792, float %2793, float %2794, float %1671, float %1672, float %1673)  ; Dot3(ax,ay,az,bx,by,bz)
  %2798 = fmul fast float %2797, %2797
  %2799 = fmul fast float %2798, 0x3FEE471020000000
  %2800 = fadd fast float %2799, 0xBFD42F6020000000
  %2801 = fmul fast float %2757, 0x3FD20DD760000000
  %2802 = fmul fast float %2800, %2796
  %2803 = fmul fast float %2795, 0x3FDF454380000000
  %2804 = fmul fast float %2803, %2797
  %2805 = fadd fast float %2804, %2801
  %2806 = fadd fast float %2805, %2802
  %2807 = call float @dx.op.dot3.f32(i32 55, float %2792, float %2793, float %2794, float %1685, float %1686, float %1687)  ; Dot3(ax,ay,az,bx,by,bz)
  %2808 = fmul fast float %2807, 0x3FDF454380000000
  %2809 = fmul fast float %2807, %2807
  %2810 = fmul fast float %2809, 0x3FEE471020000000
  %2811 = fadd fast float %2810, 0xBFD42F6020000000
  %2812 = call float @dx.op.dot3.f32(i32 55, float %2757, float %2795, float %2796, float 0x3FD20DD760000000, float %2808, float %2811)  ; Dot3(ax,ay,az,bx,by,bz)
  %2813 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2671)  ; FMax(a,b)
  %2814 = call float @dx.op.dot3.f32(i32 55, float %2694, float %2697, float %2700, float %2694, float %2697, float %2700)  ; Dot3(ax,ay,az,bx,by,bz)
  %2815 = fcmp fast oeq float %2814, 0.000000e+00
  %2816 = fcmp fast oeq float %2813, 0.000000e+00
  %2817 = or i1 %2816, %2815
  br i1 %2817, label %2847, label %2818

; <label>:2818                                    ; preds = %2791
  %2819 = fsub fast float -0.000000e+00, %2700
  %2820 = fsub fast float -0.000000e+00, %2694
  %2821 = call float @dx.op.unary.f32(i32 24, float %2814)  ; Sqrt(value)
  %2822 = fdiv fast float %2821, %2813
  %2823 = fcmp fast ogt float %2822, 0x3FFB6F8900000000
  %2824 = select i1 %2823, float 0x3FFB6F8900000000, float %2822
  %2825 = fmul fast float %2824, 0x3FE8A23460000000
  %2826 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2827 = call float @dx.op.binary.f32(i32 35, float %2824, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2828 = fmul fast float %2826, %2813
  %2829 = fmul fast float %2827, 0x3FF279A740000000
  %2830 = fadd fast float %2829, -1.000000e+00
  %2831 = call float @dx.op.dot3.f32(i32 55, float %2819, float %2820, float %2697, float %2819, float %2820, float %2697)  ; Dot3(ax,ay,az,bx,by,bz)
  %2832 = call float @dx.op.unary.f32(i32 25, float %2831)  ; Rsqrt(value)
  %2833 = fmul fast float %2832, %2819
  %2834 = fmul fast float %2832, %2820
  %2835 = fmul fast float %2832, %2697
  %2836 = fmul fast float %2830, %2830
  %2837 = fsub fast float 1.000000e+00, %2836
  %2838 = fmul fast float %2827, 0x40005F8BE0000000
  %2839 = fsub fast float 0x400C5BF8A0000000, %2838
  %2840 = fdiv fast float %2828, %2839
  %2841 = fmul fast float %2840, 0x3FEE31C3C0000000
  %2842 = fmul fast float %2841, %2837
  %2843 = fmul fast float %2827, 0x3FDACB7480000000
  %2844 = fadd fast float %2843, 0xBFD7347680000000
  %2845 = fmul fast float %2844, %2840
  %2846 = fmul fast float %2845, %2837
  br label %2847

; <label>:2847                                    ; preds = %2818, %2791
  %2848 = phi float [ %2833, %2818 ], [ 0.000000e+00, %2791 ]
  %2849 = phi float [ %2834, %2818 ], [ 0.000000e+00, %2791 ]
  %2850 = phi float [ %2835, %2818 ], [ 0.000000e+00, %2791 ]
  %2851 = phi float [ %2842, %2818 ], [ 0.000000e+00, %2791 ]
  %2852 = phi float [ %2846, %2818 ], [ 0.000000e+00, %2791 ]
  %2853 = call float @dx.op.dot3.f32(i32 55, float %2848, float %2849, float %2850, float %1671, float %1672, float %1673)  ; Dot3(ax,ay,az,bx,by,bz)
  %2854 = fmul fast float %2853, %2853
  %2855 = fmul fast float %2854, 0x3FEE471020000000
  %2856 = fadd fast float %2855, 0xBFD42F6020000000
  %2857 = fmul fast float %2813, 0x3FD20DD760000000
  %2858 = fmul fast float %2856, %2852
  %2859 = fmul fast float %2851, 0x3FDF454380000000
  %2860 = fmul fast float %2859, %2853
  %2861 = fadd fast float %2860, %2857
  %2862 = fadd fast float %2861, %2858
  %2863 = call float @dx.op.dot3.f32(i32 55, float %2848, float %2849, float %2850, float %1685, float %1686, float %1687)  ; Dot3(ax,ay,az,bx,by,bz)
  %2864 = fmul fast float %2863, 0x3FDF454380000000
  %2865 = fmul fast float %2863, %2863
  %2866 = fmul fast float %2865, 0x3FEE471020000000
  %2867 = fadd fast float %2866, 0xBFD42F6020000000
  %2868 = call float @dx.op.dot3.f32(i32 55, float %2813, float %2851, float %2852, float 0x3FD20DD760000000, float %2864, float %2867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2869 = call float @dx.op.binary.f32(i32 35, float %2750, float 0.000000e+00)  ; FMax(a,b)
  %2870 = call float @dx.op.binary.f32(i32 35, float %2806, float 0.000000e+00)  ; FMax(a,b)
  %2871 = call float @dx.op.binary.f32(i32 35, float %2862, float 0.000000e+00)  ; FMax(a,b)
  %2872 = call float @dx.op.binary.f32(i32 35, float %2756, float 0.000000e+00)  ; FMax(a,b)
  %2873 = call float @dx.op.binary.f32(i32 35, float %2812, float 0.000000e+00)  ; FMax(a,b)
  %2874 = call float @dx.op.binary.f32(i32 35, float %2868, float 0.000000e+00)  ; FMax(a,b)
  %2875 = fsub fast float %2069, %2869
  %2876 = fsub fast float %2070, %2870
  %2877 = fsub fast float %2071, %2871
  %2878 = fmul fast float %2875, %1748
  %2879 = fmul fast float %2876, %1748
  %2880 = fmul fast float %2877, %1748
  %2881 = fadd fast float %2878, %2869
  %2882 = fadd fast float %2879, %2870
  %2883 = fadd fast float %2880, %2871
  %2884 = fsub fast float %2066, %2872
  %2885 = fsub fast float %2067, %2873
  %2886 = fsub fast float %2068, %2874
  %2887 = fmul fast float %2884, %1748
  %2888 = fmul fast float %2885, %1748
  %2889 = fmul fast float %2886, %1748
  %2890 = fadd fast float %2887, %2872
  %2891 = fadd fast float %2888, %2873
  %2892 = fadd fast float %2889, %2874
  %2893 = fsub fast float %1850, %2673
  %2894 = fmul fast float %2893, %1748
  %2895 = fadd fast float %2894, %2673
  br label %2896

; <label>:2896                                    ; preds = %2847, %2065
  %2897 = phi float [ %2895, %2847 ], [ %1850, %2065 ]
  %2898 = phi float [ %2890, %2847 ], [ %2066, %2065 ]
  %2899 = phi float [ %2891, %2847 ], [ %2067, %2065 ]
  %2900 = phi float [ %2892, %2847 ], [ %2068, %2065 ]
  %2901 = phi float [ %2881, %2847 ], [ %2069, %2065 ]
  %2902 = phi float [ %2882, %2847 ], [ %2070, %2065 ]
  %2903 = phi float [ %2883, %2847 ], [ %2071, %2065 ]
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 0
  %2906 = call float @dx.op.binary.f32(i32 36, float %1668, float %2905)  ; FMin(a,b)
  %2907 = fmul fast float %2906, %1689
  %2908 = fsub fast float 1.000000e+00, %2907
  %2909 = bitcast float %2908 to i32
  %2910 = sub nsw i32 2129859010, %2909
  %2911 = bitcast i32 %2910 to float
  %2912 = call float @dx.op.binary.f32(i32 36, float %1669, float %2905)  ; FMin(a,b)
  %2913 = fmul fast float %2912, %1689
  %2914 = fsub fast float 1.000000e+00, %2913
  %2915 = bitcast float %2914 to i32
  %2916 = sub nsw i32 2129859010, %2915
  %2917 = bitcast i32 %2916 to float
  %2918 = call float @dx.op.binary.f32(i32 36, float %1670, float %2905)  ; FMin(a,b)
  %2919 = fmul fast float %2918, %1689
  %2920 = fsub fast float 1.000000e+00, %2919
  %2921 = bitcast float %2920 to i32
  %2922 = sub nsw i32 2129859010, %2921
  %2923 = bitcast i32 %2922 to float
  %2924 = fmul fast float %2901, %1688
  %2925 = fmul fast float %2924, %2911
  %2926 = fmul fast float %2902, %1688
  %2927 = fmul fast float %2926, %2917
  %2928 = fmul fast float %2903, %1688
  %2929 = fmul fast float %2928, %2923
  %2930 = call float @dx.op.binary.f32(i32 36, float %1665, float %2905)  ; FMin(a,b)
  %2931 = fmul fast float %2930, %1689
  %2932 = fsub fast float 1.000000e+00, %2931
  %2933 = bitcast float %2932 to i32
  %2934 = sub nsw i32 2129859010, %2933
  %2935 = bitcast i32 %2934 to float
  %2936 = call float @dx.op.binary.f32(i32 36, float %1666, float %2905)  ; FMin(a,b)
  %2937 = fmul fast float %2936, %1689
  %2938 = fsub fast float 1.000000e+00, %2937
  %2939 = bitcast float %2938 to i32
  %2940 = sub nsw i32 2129859010, %2939
  %2941 = bitcast i32 %2940 to float
  %2942 = call float @dx.op.binary.f32(i32 36, float %1677, float %2905)  ; FMin(a,b)
  %2943 = fmul fast float %2942, %1689
  %2944 = fsub fast float 1.000000e+00, %2943
  %2945 = bitcast float %2944 to i32
  %2946 = sub nsw i32 2129859010, %2945
  %2947 = bitcast i32 %2946 to float
  %2948 = fmul fast float %2898, %1688
  %2949 = fmul fast float %2948, %2935
  %2950 = fmul fast float %2899, %1688
  %2951 = fmul fast float %2950, %2941
  %2952 = fmul fast float %2900, %1688
  %2953 = fmul fast float %2952, %2947
  %2954 = call float @dx.op.dot3.f32(i32 55, float %2925, float %2927, float %2929, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2955 = select i1 %237, float 0.000000e+00, float %2925
  %2956 = select i1 %237, float %2954, float %2927
  %2957 = select i1 %237, float 0.000000e+00, float %2929
  %2958 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2951, float %2953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2959 = select i1 %237, float 0.000000e+00, float %2949
  %2960 = select i1 %237, float %2958, float %2951
  %2961 = select i1 %237, float 0.000000e+00, float %2953
  %2962 = fmul fast float %1679, 9.843750e-01
  %2963 = fmul fast float %1674, 9.843750e-01
  %2964 = fadd fast float %2962, 7.812500e-03
  %2965 = fadd fast float %2963, 7.812500e-03
  %2966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %61, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2967 = extractvalue %dx.types.ResRet.f32 %2966, 2
  %2968 = extractvalue %dx.types.ResRet.f32 %2966, 3
  %2969 = fmul fast float %2967, %1665
  %2970 = fmul fast float %2967, %1666
  %2971 = fmul fast float %2967, %1677
  %2972 = fadd fast float %2969, %2968
  %2973 = fadd fast float %2970, %2968
  %2974 = fadd fast float %2971, %2968
  %2975 = call float @dx.op.binary.f32(i32 35, float %2973, float %2974)  ; FMax(a,b)
  %2976 = call float @dx.op.binary.f32(i32 35, float %2972, float %2975)  ; FMax(a,b)
  %2977 = fsub fast float 1.000000e+00, %2976
  %2978 = fmul fast float %2976, %1674
  %2979 = fadd fast float %2978, %1674
  %2980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2981 = extractvalue %dx.types.CBufRet.f32 %2980, 2
  %2982 = extractvalue %dx.types.CBufRet.f32 %2980, 3
  %2983 = fmul fast float %2979, %2981
  %2984 = fadd fast float %2983, %2982
  %2985 = call float @dx.op.unary.f32(i32 7, float %2984)  ; Saturate(value)
  %2986 = fsub fast float 1.000000e+00, %1700
  %2987 = fadd fast float %2986, %2985
  %2988 = call float @dx.op.unary.f32(i32 7, float %2987)  ; Saturate(value)
  %2989 = fcmp fast olt float %2988, 1.000000e+00
  br i1 %2989, label %2990, label %3466

; <label>:2990                                    ; preds = %2896
  %2991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2992 = extractvalue %dx.types.CBufRet.f32 %2991, 2
  %2993 = extractvalue %dx.types.CBufRet.f32 %2991, 3
  %2994 = fmul fast float %2992, %97
  %2995 = fmul fast float %2993, %98
  %2996 = fptoui float %2994 to i32
  %2997 = fptoui float %2995 to i32
  %2998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2999 = extractvalue %dx.types.CBufRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.CBufRet.f32 %2998, 2
  %3001 = extractvalue %dx.types.CBufRet.f32 %2998, 3
  %3002 = fadd fast float %85, -4.000000e+00
  %3003 = call float @dx.op.binary.f32(i32 35, float %3002, float 0.000000e+00)  ; FMax(a,b)
  %3004 = fadd fast float %3003, %2999
  %3005 = fmul fast float %3004, %3000
  %3006 = call float @dx.op.unary.f32(i32 23, float %3005)  ; Log(value)
  %3007 = fmul fast float %3006, %3001
  %3008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3009 = extractvalue %dx.types.CBufRet.f32 %3008, 2
  %3010 = fmul fast float %3007, %3009
  %3011 = call float @dx.op.unary.f32(i32 7, float %3010)  ; Saturate(value)
  %3012 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.i32 %3012, 1
  %3014 = add i32 %3013, -1
  %3015 = uitofp i32 %3013 to float
  %3016 = fmul fast float %3015, %3011
  %3017 = fptoui float %3016 to i32
  %3018 = call i32 @dx.op.binary.i32(i32 40, i32 %3017, i32 %3014)  ; UMin(a,b)
  %3019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.i32 %3019, 2
  %3021 = extractvalue %dx.types.CBufRet.i32 %3019, 3
  %3022 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2997, i32 %3020, i32 %2996)  ; UMad(a,b,c)
  %3023 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3018, i32 %3021, i32 %3022)  ; UMad(a,b,c)
  %3024 = call float @dx.op.binary.f32(i32 35, float %85, float 0.000000e+00)  ; FMax(a,b)
  %3025 = fptoui float %3024 to i32
  %3026 = lshr i32 %3025, 5
  %3027 = call i32 @dx.op.binary.i32(i32 40, i32 %3026, i32 8191)  ; UMin(a,b)
  %3028 = fsub fast float %1464, %146
  %3029 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  %3030 = fcmp fast ogt float %3029, 0.000000e+00
  %3031 = fcmp fast ogt float %1687, 0.000000e+00
  %3032 = and i1 %3031, %3030
  br i1 %3032, label %3033, label %3062

; <label>:3033                                    ; preds = %2990
  %3034 = call float @dx.op.dot3.f32(i32 55, float %1685, float %1686, float %1687, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3035 = call float @dx.op.binary.f32(i32 35, float %3034, float -1.000000e+00)  ; FMax(a,b)
  %3036 = call float @dx.op.binary.f32(i32 36, float %3035, float 1.000000e+00)  ; FMin(a,b)
  %3037 = fmul fast float %3036, %3036
  %3038 = fsub fast float 1.000000e+00, %3037
  %3039 = fmul fast float %3038, 0x3FFC6E2300000000
  %3040 = fsub fast float 1.000000e+00, %3039
  %3041 = fcmp fast ogt float %3040, 0.000000e+00
  %3042 = call float @dx.op.unary.f32(i32 24, float %3040)  ; Sqrt(value)
  %3043 = fsub fast float 1.000000e+00, %3042
  %3044 = call float @dx.op.unary.f32(i32 23, float %3043)  ; Log(value)
  %3045 = fmul fast float %3044, 5.000000e+00
  %3046 = call float @dx.op.unary.f32(i32 21, float %3045)  ; Exp(value)
  %3047 = fmul fast float %3046, 0x3FEF591A60000000
  %3048 = fadd fast float %3047, 0x3F94DCB540000000
  %3049 = select i1 %3041, float %3048, float 1.000000e+00
  %3050 = fcmp fast oge float %3049, 1.000000e+00
  %3051 = fmul fast float %3034, 2.000000e+00
  %3052 = fadd fast float %3051, %1687
  %3053 = select i1 %3050, float %3052, float %1687
  %3054 = fsub fast float %3053, %1687
  %3055 = fmul fast float %3054, %3029
  %3056 = fadd fast float %3055, %1687
  %3057 = call float @dx.op.dot3.f32(i32 55, float %1685, float %1686, float %3056, float %1685, float %1686, float %3056)  ; Dot3(ax,ay,az,bx,by,bz)
  %3058 = call float @dx.op.unary.f32(i32 25, float %3057)  ; Rsqrt(value)
  %3059 = fmul fast float %3058, %1685
  %3060 = fmul fast float %3058, %1686
  %3061 = fmul fast float %3056, %3058
  br label %3062

; <label>:3062                                    ; preds = %3033, %2990
  %3063 = phi float [ %3059, %3033 ], [ %1685, %2990 ]
  %3064 = phi float [ %3060, %3033 ], [ %1686, %2990 ]
  %3065 = phi float [ %3061, %3033 ], [ %1687, %2990 ]
  %3066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3067 = extractvalue %dx.types.CBufRet.i32 %3066, 2
  %3068 = add nsw i32 %3067, -1
  %3069 = call i32 @dx.op.binary.i32(i32 37, i32 %3068, i32 0)  ; IMax(a,b)
  %3070 = shl i32 %3027, 2
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = lshr i32 %3072, 16
  %3074 = and i32 %3072, 65535
  %3075 = lshr i32 %3072, 21
  %3076 = lshr i32 %3074, 5
  %3077 = call i32 @dx.op.binary.i32(i32 40, i32 %3076, i32 %3069)  ; UMin(a,b)
  %3078 = icmp ugt i32 %3075, %3077
  br i1 %3078, label %3442, label %3079

; <label>:3079                                    ; preds = %3062
  br label %3080

; <label>:3080                                    ; preds = %3434, %3079
  %3081 = phi float [ %3435, %3434 ], [ 0.000000e+00, %3079 ]
  %3082 = phi float [ %3436, %3434 ], [ 0.000000e+00, %3079 ]
  %3083 = phi float [ %3437, %3434 ], [ 0.000000e+00, %3079 ]
  %3084 = phi float [ %3438, %3434 ], [ 1.000000e+00, %3079 ]
  %3085 = phi i32 [ %3439, %3434 ], [ %3075, %3079 ]
  %3086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3087 = extractvalue %dx.types.CBufRet.i32 %3086, 2
  %3088 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3023, i32 %3087, i32 %3085)  ; UMad(a,b,c)
  %3089 = shl i32 %3088, 2
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = shl i32 %3085, 5
  %3093 = sub nsw i32 %3073, %3092
  %3094 = call i32 @dx.op.binary.i32(i32 37, i32 %3093, i32 0)  ; IMax(a,b)
  %3095 = call i32 @dx.op.binary.i32(i32 38, i32 %3094, i32 31)  ; IMin(a,b)
  %3096 = sub nsw i32 1, %3073
  %3097 = add nsw i32 %3096, %3074
  %3098 = call i32 @dx.op.binary.i32(i32 37, i32 %3097, i32 0)  ; IMax(a,b)
  %3099 = call i32 @dx.op.binary.i32(i32 38, i32 %3098, i32 32)  ; IMin(a,b)
  %3100 = and i32 %3099, 31
  %3101 = shl i32 -1, %3100
  %3102 = xor i32 %3101, -1
  %3103 = and i32 %3095, 31
  %3104 = shl i32 %3102, %3103
  %3105 = icmp eq i32 %3099, 32
  %3106 = select i1 %3105, i32 -1, i32 %3104
  %3107 = and i32 %3106, %3091
  %3108 = icmp eq i32 %3107, 0
  br i1 %3108, label %3434, label %3109

; <label>:3109                                    ; preds = %3080
  br label %3110

; <label>:3110                                    ; preds = %3217, %3109
  %3111 = phi float [ %3218, %3217 ], [ %3081, %3109 ]
  %3112 = phi float [ %3219, %3217 ], [ %3082, %3109 ]
  %3113 = phi float [ %3220, %3217 ], [ %3083, %3109 ]
  %3114 = phi float [ %3221, %3217 ], [ %3084, %3109 ]
  %3115 = phi i32 [ %3120, %3217 ], [ %3107, %3109 ]
  %3116 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3115)  ; FirstbitLo(value)
  %3117 = add i32 %3116, %3092
  %3118 = and i32 %3116, 31
  %3119 = shl i32 1, %3118
  %3120 = xor i32 %3119, %3115
  %3121 = mul i32 %3117, 72
  %3122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.f32 %3122, 0
  %3124 = extractvalue %dx.types.ResRet.f32 %3122, 1
  %3125 = extractvalue %dx.types.ResRet.f32 %3122, 2
  %3126 = add i32 %3121, 12
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = add i32 %3121, 16
  %3130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.ResRet.f32 %3130, 1
  %3133 = extractvalue %dx.types.ResRet.f32 %3130, 2
  %3134 = add i32 %3121, 28
  %3135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.f32 %3135, 0
  %3137 = add i32 %3121, 32
  %3138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.f32 %3138, 0
  %3140 = extractvalue %dx.types.ResRet.f32 %3138, 1
  %3141 = extractvalue %dx.types.ResRet.f32 %3138, 2
  %3142 = extractvalue %dx.types.ResRet.f32 %3138, 3
  %3143 = add i32 %3121, 48
  %3144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.f32 %3144, 0
  %3146 = extractvalue %dx.types.ResRet.f32 %3144, 1
  %3147 = add i32 %3121, 56
  %3148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.f32 %3148, 0
  %3150 = extractvalue %dx.types.ResRet.f32 %3148, 1
  %3151 = add i32 %3121, 64
  %3152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.f32 %3152, 0
  %3154 = extractvalue %dx.types.ResRet.f32 %3152, 1
  %3155 = mul i32 %3117, 60
  %3156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.f32 %3156, 0
  %3158 = extractvalue %dx.types.ResRet.f32 %3156, 1
  %3159 = extractvalue %dx.types.ResRet.f32 %3156, 2
  %3160 = add i32 %3155, 12
  %3161 = add i32 %3155, 48
  %3162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.f32 %3162, 0
  %3164 = extractvalue %dx.types.ResRet.f32 %3162, 1
  %3165 = extractvalue %dx.types.ResRet.f32 %3162, 2
  %3166 = and i32 %3128, 32767
  %3167 = bitcast float %3123 to i32
  %3168 = icmp eq i32 %3167, -1
  %3169 = bitcast float %3124 to i32
  %3170 = and i32 %3128, 32768
  %3171 = icmp ne i32 %3170, 0
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 0
  %3174 = extractvalue %dx.types.CBufRet.f32 %3172, 1
  %3175 = extractvalue %dx.types.CBufRet.f32 %3172, 2
  %3176 = fsub fast float %3157, %3173
  %3177 = fsub fast float %3158, %3174
  %3178 = fsub fast float %3159, %3175
  %3179 = fsub fast float %144, %3176
  %3180 = fsub fast float %145, %3177
  %3181 = fsub fast float %146, %3178
  %3182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.f32 %3182, 0
  %3184 = extractvalue %dx.types.ResRet.f32 %3182, 1
  %3185 = extractvalue %dx.types.ResRet.f32 %3182, 2
  %3186 = call float @dx.op.dot3.f32(i32 55, float %3179, float %3180, float %3181, float %3183, float %3184, float %3185)  ; Dot3(ax,ay,az,bx,by,bz)
  %3187 = add i32 %3155, 24
  %3188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.f32 %3188, 0
  %3190 = extractvalue %dx.types.ResRet.f32 %3188, 1
  %3191 = extractvalue %dx.types.ResRet.f32 %3188, 2
  %3192 = call float @dx.op.dot3.f32(i32 55, float %3179, float %3180, float %3181, float %3189, float %3190, float %3191)  ; Dot3(ax,ay,az,bx,by,bz)
  %3193 = add i32 %3155, 36
  %3194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.f32 %3194, 0
  %3196 = extractvalue %dx.types.ResRet.f32 %3194, 1
  %3197 = extractvalue %dx.types.ResRet.f32 %3194, 2
  %3198 = call float @dx.op.dot3.f32(i32 55, float %3179, float %3180, float %3181, float %3195, float %3196, float %3197)  ; Dot3(ax,ay,az,bx,by,bz)
  %3199 = call float @dx.op.unary.f32(i32 6, float %3186)  ; FAbs(value)
  %3200 = call float @dx.op.unary.f32(i32 6, float %3192)  ; FAbs(value)
  %3201 = call float @dx.op.unary.f32(i32 6, float %3198)  ; FAbs(value)
  %3202 = fsub fast float %3163, %3199
  %3203 = fsub fast float %3164, %3200
  %3204 = fsub fast float %3165, %3201
  %3205 = fmul fast float %3202, %3131
  %3206 = fmul fast float %3203, %3132
  %3207 = fmul fast float %3204, %3133
  %3208 = call float @dx.op.binary.f32(i32 36, float %3206, float %3207)  ; FMin(a,b)
  %3209 = call float @dx.op.binary.f32(i32 36, float %3205, float %3208)  ; FMin(a,b)
  %3210 = call float @dx.op.unary.f32(i32 7, float %3209)  ; Saturate(value)
  %3211 = call float @dx.op.binary.f32(i32 36, float %3114, float %3210)  ; FMin(a,b)
  %3212 = uitofp i1 %3171 to float
  %3213 = fadd fast float %3029, 1.000000e+00
  %3214 = fsub fast float %3213, %3212
  %3215 = fmul fast float %3211, %3214
  %3216 = fcmp fast ogt float %3215, 0.000000e+00
  br i1 %3216, label %3223, label %3217

; <label>:3217                                    ; preds = %3365, %3110
  %3218 = phi float [ %3429, %3365 ], [ %3111, %3110 ]
  %3219 = phi float [ %3430, %3365 ], [ %3112, %3110 ]
  %3220 = phi float [ %3431, %3365 ], [ %3113, %3110 ]
  %3221 = phi float [ %3432, %3365 ], [ %3114, %3110 ]
  %3222 = icmp eq i32 %3115, %3119
  br i1 %3222, label %3433, label %3110

; <label>:3223                                    ; preds = %3110
  br i1 %3168, label %3281, label %3224

; <label>:3224                                    ; preds = %3223
  %3225 = fsub fast float -0.000000e+00, %3183
  %3226 = fsub fast float -0.000000e+00, %3184
  %3227 = fsub fast float -0.000000e+00, %3185
  %3228 = call float @dx.op.dot3.f32(i32 55, float %3063, float %3064, float %3065, float %3225, float %3226, float %3227)  ; Dot3(ax,ay,az,bx,by,bz)
  %3229 = fsub fast float -0.000000e+00, %3228
  %3230 = call float @dx.op.dot3.f32(i32 55, float %3179, float %3180, float %3181, float %3225, float %3226, float %3227)  ; Dot3(ax,ay,az,bx,by,bz)
  %3231 = fadd fast float %3230, %3146
  %3232 = fadd fast float %3145, %3230
  %3233 = fsub fast float -0.000000e+00, %3232
  %3234 = fcmp ogt float %3228, -0.000000e+00
  %3235 = select i1 %3234, float %3233, float %3231
  %3236 = call float @dx.op.unary.f32(i32 6, float %3229)  ; FAbs(value)
  %3237 = fdiv fast float 1.000000e+00, %3236
  %3238 = fmul fast float %3235, %3237
  %3239 = call float @dx.op.binary.f32(i32 35, float %3238, float 0.000000e+00)  ; FMax(a,b)
  %3240 = fsub fast float -0.000000e+00, %3189
  %3241 = fsub fast float -0.000000e+00, %3190
  %3242 = fsub fast float -0.000000e+00, %3191
  %3243 = call float @dx.op.dot3.f32(i32 55, float %3063, float %3064, float %3065, float %3240, float %3241, float %3242)  ; Dot3(ax,ay,az,bx,by,bz)
  %3244 = fsub fast float -0.000000e+00, %3243
  %3245 = call float @dx.op.dot3.f32(i32 55, float %3179, float %3180, float %3181, float %3240, float %3241, float %3242)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = fadd fast float %3245, %3150
  %3247 = fadd fast float %3149, %3245
  %3248 = fsub fast float -0.000000e+00, %3247
  %3249 = fcmp ogt float %3243, -0.000000e+00
  %3250 = select i1 %3249, float %3248, float %3246
  %3251 = call float @dx.op.unary.f32(i32 6, float %3244)  ; FAbs(value)
  %3252 = fdiv fast float 1.000000e+00, %3251
  %3253 = fmul fast float %3250, %3252
  %3254 = call float @dx.op.binary.f32(i32 35, float %3253, float 0.000000e+00)  ; FMax(a,b)
  %3255 = fsub fast float -0.000000e+00, %3195
  %3256 = fsub fast float -0.000000e+00, %3196
  %3257 = fsub fast float -0.000000e+00, %3197
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3063, float %3064, float %3065, float %3255, float %3256, float %3257)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = fsub fast float -0.000000e+00, %3258
  %3260 = call float @dx.op.dot3.f32(i32 55, float %3179, float %3180, float %3181, float %3255, float %3256, float %3257)  ; Dot3(ax,ay,az,bx,by,bz)
  %3261 = fadd fast float %3260, %3154
  %3262 = fadd fast float %3153, %3260
  %3263 = fsub fast float -0.000000e+00, %3262
  %3264 = fcmp ogt float %3258, -0.000000e+00
  %3265 = select i1 %3264, float %3263, float %3261
  %3266 = call float @dx.op.unary.f32(i32 6, float %3259)  ; FAbs(value)
  %3267 = fdiv fast float 1.000000e+00, %3266
  %3268 = fmul fast float %3265, %3267
  %3269 = call float @dx.op.binary.f32(i32 35, float %3268, float 0.000000e+00)  ; FMax(a,b)
  %3270 = call float @dx.op.binary.f32(i32 36, float %3254, float %3269)  ; FMin(a,b)
  %3271 = call float @dx.op.binary.f32(i32 36, float %3239, float %3270)  ; FMin(a,b)
  %3272 = fmul fast float %3271, %3063
  %3273 = fmul fast float %3271, %3064
  %3274 = fmul fast float %3271, %3065
  %3275 = fadd fast float %3272, %144
  %3276 = fadd fast float %3273, %145
  %3277 = fadd fast float %3274, %146
  %3278 = fsub fast float %3275, %3123
  %3279 = fsub fast float %3276, %3124
  %3280 = fsub fast float %3277, %3125
  br label %3288

; <label>:3281                                    ; preds = %3223
  %3282 = fmul fast float %3063, 8.096000e+03
  %3283 = fmul fast float %3064, 8.096000e+03
  %3284 = fmul fast float %3065, 8.096000e+03
  %3285 = fadd fast float %3282, %144
  %3286 = fadd fast float %3283, %145
  %3287 = fadd fast float %3284, %146
  br label %3288

; <label>:3288                                    ; preds = %3281, %3224
  %3289 = phi float [ %3063, %3281 ], [ %3278, %3224 ]
  %3290 = phi float [ %3064, %3281 ], [ %3279, %3224 ]
  %3291 = phi float [ %3065, %3281 ], [ %3280, %3224 ]
  %3292 = phi float [ %3285, %3281 ], [ %3275, %3224 ]
  %3293 = phi float [ %3286, %3281 ], [ %3276, %3224 ]
  %3294 = phi float [ %3287, %3281 ], [ %3277, %3224 ]
  %3295 = fcmp fast olt float %3142, 1.000000e+00
  br i1 %3295, label %3296, label %3327, !dx.controlflow.hints !108

; <label>:3296                                    ; preds = %3288
  %3297 = fmul fast float %3291, %3140
  %3298 = fmul fast float %3290, %3141
  %3299 = fsub fast float %3297, %3298
  %3300 = fmul fast float %3289, %3141
  %3301 = fmul fast float %3291, %3139
  %3302 = fsub fast float %3300, %3301
  %3303 = fmul fast float %3290, %3139
  %3304 = fmul fast float %3289, %3140
  %3305 = fsub fast float %3303, %3304
  %3306 = fmul fast float %3299, 2.000000e+00
  %3307 = fmul fast float %3302, 2.000000e+00
  %3308 = fmul fast float %3305, 2.000000e+00
  %3309 = fmul fast float %3306, %3142
  %3310 = fmul fast float %3307, %3142
  %3311 = fmul fast float %3308, %3142
  %3312 = fmul fast float %3308, %3140
  %3313 = fmul fast float %3307, %3141
  %3314 = fmul fast float %3306, %3141
  %3315 = fmul fast float %3308, %3139
  %3316 = fmul fast float %3307, %3139
  %3317 = fmul fast float %3306, %3140
  %3318 = fadd fast float %3312, %3289
  %3319 = fadd fast float %3318, %3309
  %3320 = fsub fast float %3319, %3313
  %3321 = fsub fast float %3290, %3315
  %3322 = fadd fast float %3321, %3310
  %3323 = fadd fast float %3322, %3314
  %3324 = fadd fast float %3311, %3291
  %3325 = fsub fast float %3324, %3317
  %3326 = fadd fast float %3325, %3316
  br label %3327

; <label>:3327                                    ; preds = %3296, %3288
  %3328 = phi float [ %3320, %3296 ], [ %3289, %3288 ]
  %3329 = phi float [ %3323, %3296 ], [ %3290, %3288 ]
  %3330 = phi float [ %3326, %3296 ], [ %3291, %3288 ]
  br i1 %3168, label %3362, label %3331

; <label>:3331                                    ; preds = %3327
  %3332 = fmul fast float %1674, 0x400187C840000000
  %3333 = fadd fast float %3332, 0xC00EFC2120000000
  %3334 = fmul fast float %3333, %1674
  %3335 = fadd fast float %3334, 0x3FE5D16340000000
  %3336 = fmul fast float %3335, %1674
  %3337 = fadd fast float %3336, 1.000000e+00
  %3338 = call float @dx.op.unary.f32(i32 7, float %3337)  ; Saturate(value)
  %3339 = fsub fast float %3292, %144
  %3340 = fsub fast float %3293, %145
  %3341 = fsub fast float %3294, %146
  %3342 = fsub fast float %3292, %3123
  %3343 = fsub fast float %3293, %3124
  %3344 = fsub fast float %3294, %3125
  %3345 = call float @dx.op.dot3.f32(i32 55, float %3339, float %3340, float %3341, float %3339, float %3340, float %3341)  ; Dot3(ax,ay,az,bx,by,bz)
  %3346 = call float @dx.op.dot3.f32(i32 55, float %3342, float %3343, float %3344, float %3342, float %3343, float %3344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = fadd fast float %3346, 0x3EE4F8B580000000
  %3348 = fdiv fast float %3345, %3347
  %3349 = bitcast float %3348 to i32
  %3350 = ashr i32 %3349, 1
  %3351 = add nsw i32 %3350, 532487669
  %3352 = bitcast i32 %3351 to float
  %3353 = fmul fast float %3352, %3338
  %3354 = call float @dx.op.unary.f32(i32 7, float %3353)  ; Saturate(value)
  %3355 = fmul fast float %3354, 0x4009981AE0000000
  %3356 = fsub fast float 0x40111BBD80000000, %3355
  %3357 = fmul fast float %3356, %3354
  %3358 = fadd fast float %3357, 0xC0009F6020000000
  %3359 = fmul fast float %3358, %3354
  %3360 = fadd fast float %3359, 1.000000e+00
  %3361 = call float @dx.op.unary.f32(i32 7, float %3360)  ; Saturate(value)
  br label %3365

; <label>:3362                                    ; preds = %3327
  %3363 = icmp ne i32 %3169, -1
  %3364 = zext i1 %3363 to i32
  br label %3365

; <label>:3365                                    ; preds = %3362, %3331
  %3366 = phi float [ %1674, %3362 ], [ %3361, %3331 ]
  %3367 = phi i32 [ %3364, %3362 ], [ 0, %3331 ]
  %3368 = fmul float %3366, 5.000000e+00
  %3369 = fsub float 5.000000e+00, %3368
  %3370 = icmp ne i32 %3367, 0
  %3371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3372 = extractvalue %dx.types.CBufRet.f32 %3371, 3
  %3373 = fadd fast float %3372, %3369
  %3374 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3373)  ; FMax(a,b)
  %3375 = call float @dx.op.unary.f32(i32 6, float %3328)  ; FAbs(value)
  %3376 = call float @dx.op.unary.f32(i32 6, float %3329)  ; FAbs(value)
  %3377 = fadd fast float %3376, %3375
  %3378 = call float @dx.op.unary.f32(i32 6, float %3330)  ; FAbs(value)
  %3379 = fadd fast float %3377, %3378
  %3380 = fcmp fast oeq float %3379, 0.000000e+00
  %3381 = fdiv fast float 1.000000e+00, %3379
  %3382 = select i1 %3380, float 1.000000e+00, float %3381
  %3383 = fmul fast float %3382, %3328
  %3384 = fmul fast float %3382, %3329
  %3385 = call float @dx.op.unary.f32(i32 6, float %3384)  ; FAbs(value)
  %3386 = call float @dx.op.unary.f32(i32 6, float %3383)  ; FAbs(value)
  %3387 = fsub fast float 1.000000e+00, %3385
  %3388 = fsub fast float 1.000000e+00, %3386
  %3389 = fcmp fast oge float %3383, 0.000000e+00
  %3390 = fcmp fast oge float %3384, 0.000000e+00
  %3391 = select i1 %3389, float 1.000000e+00, float -1.000000e+00
  %3392 = select i1 %3390, float 1.000000e+00, float -1.000000e+00
  %3393 = fcmp fast ole float %3330, 0.000000e+00
  %3394 = fmul fast float %3391, %3387
  %3395 = fmul fast float %3392, %3388
  %3396 = select i1 %3393, float %3394, float %3383
  %3397 = select i1 %3393, float %3395, float %3384
  %3398 = fmul fast float %3396, 5.000000e-01
  %3399 = fmul fast float %3397, 5.000000e-01
  %3400 = fadd fast float %3398, 5.000000e-01
  %3401 = fadd fast float %3399, 5.000000e-01
  %3402 = uitofp i32 %3166 to float
  %3403 = call float @dx.op.binary.f32(i32 36, float %3374, float 3.000000e+00)  ; FMin(a,b)
  %3404 = fadd fast float %3403, 2.000000e+00
  %3405 = call float @dx.op.unary.f32(i32 21, float %3404)  ; Exp(value)
  %3406 = extractvalue %dx.types.CBufRet.f32 %3371, 1
  %3407 = fmul fast float %3406, %3405
  %3408 = fmul fast float %3407, 2.000000e+00
  %3409 = fsub fast float 1.000000e+00, %3408
  %3410 = fmul fast float %3400, %3409
  %3411 = fmul fast float %3401, %3409
  %3412 = fadd fast float %3410, %3407
  %3413 = fadd fast float %3411, %3407
  %3414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %59, float %3412, float %3413, float %3402, float undef, i32 0, i32 0, i32 undef, float %3374)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3415 = extractvalue %dx.types.ResRet.f32 %3414, 0
  %3416 = extractvalue %dx.types.ResRet.f32 %3414, 1
  %3417 = extractvalue %dx.types.ResRet.f32 %3414, 2
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3418, 3
  %3420 = fmul fast float %3419, %3136
  %3421 = call float @dx.op.binary.f32(i32 36, float %2897, float %3420)  ; FMin(a,b)
  %3422 = select i1 %3370, float %3421, float %3420
  %3423 = fmul fast float %3415, %3215
  %3424 = fmul fast float %3423, %3422
  %3425 = fmul fast float %3416, %3215
  %3426 = fmul fast float %3425, %3422
  %3427 = fmul fast float %3417, %3215
  %3428 = fmul fast float %3427, %3422
  %3429 = fadd fast float %3424, %3111
  %3430 = fadd fast float %3426, %3112
  %3431 = fadd fast float %3428, %3113
  %3432 = fsub fast float %3114, %3215
  br label %3217

; <label>:3433                                    ; preds = %3217
  br label %3434

; <label>:3434                                    ; preds = %3433, %3080
  %3435 = phi float [ %3081, %3080 ], [ %3218, %3433 ]
  %3436 = phi float [ %3082, %3080 ], [ %3219, %3433 ]
  %3437 = phi float [ %3083, %3080 ], [ %3220, %3433 ]
  %3438 = phi float [ %3084, %3080 ], [ %3221, %3433 ]
  %3439 = add i32 %3085, 1
  %3440 = icmp ugt i32 %3439, %3077
  br i1 %3440, label %3441, label %3080, !llvm.loop !109

; <label>:3441                                    ; preds = %3434
  br label %3442

; <label>:3442                                    ; preds = %3441, %3062
  %3443 = phi float [ 0.000000e+00, %3062 ], [ %3435, %3441 ]
  %3444 = phi float [ 0.000000e+00, %3062 ], [ %3436, %3441 ]
  %3445 = phi float [ 0.000000e+00, %3062 ], [ %3437, %3441 ]
  %3446 = call float @dx.op.dot3.f32(i32 55, float %3443, float %3444, float %3445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3447 = select i1 %237, float 0.000000e+00, float %3443
  %3448 = select i1 %237, float %3446, float %3444
  %3449 = select i1 %237, float 0.000000e+00, float %3445
  %3450 = fcmp fast olt float %2988, 0.000000e+00
  %3451 = call float @dx.op.unary.f32(i32 6, float %2988)  ; FAbs(value)
  %3452 = fmul fast float %3451, %2959
  %3453 = fmul fast float %3451, %2960
  %3454 = fmul fast float %3451, %2961
  %3455 = select i1 %3450, float %2959, float %3452
  %3456 = select i1 %3450, float %2960, float %3453
  %3457 = select i1 %3450, float %2961, float %3454
  %3458 = fsub fast float 1.000000e+00, %3451
  %3459 = call float @dx.op.unary.f32(i32 7, float %3458)  ; Saturate(value)
  %3460 = fmul fast float %3459, %3447
  %3461 = fmul fast float %3459, %3448
  %3462 = fmul fast float %3459, %3449
  %3463 = fadd fast float %3455, %3460
  %3464 = fadd fast float %3456, %3461
  %3465 = fadd fast float %3457, %3462
  br label %3466

; <label>:3466                                    ; preds = %3442, %2896
  %3467 = phi float [ %2959, %2896 ], [ %3463, %3442 ]
  %3468 = phi float [ %2960, %2896 ], [ %3464, %3442 ]
  %3469 = phi float [ %2961, %2896 ], [ %3465, %3442 ]
  %3470 = fmul fast float %2977, %2955
  %3471 = fmul fast float %2977, %2956
  %3472 = fmul fast float %2977, %2957
  %3473 = fmul fast float %3467, %2972
  %3474 = fmul fast float %3468, %2973
  %3475 = fmul fast float %3469, %2974
  %3476 = fmul fast float %3470, %1034
  %3477 = fmul fast float %3471, %1034
  %3478 = fmul fast float %3472, %1034
  %3479 = fadd fast float %3473, %1030
  %3480 = fmul fast float %3479, %1034
  %3481 = fadd fast float %3474, %1031
  %3482 = fmul fast float %3481, %1034
  %3483 = fadd fast float %3475, %1032
  %3484 = fmul fast float %3483, %1034
  %3485 = bitcast i32 %1703 to float
  %3486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3487 = extractvalue %dx.types.CBufRet.f32 %3486, 3
  %3488 = fcmp fast oeq float %3487, 0.000000e+00
  br i1 %3488, label %4961, label %3489

; <label>:3489                                    ; preds = %3466
  %3490 = extractvalue %dx.types.CBufRet.f32 %3486, 0
  %3491 = extractvalue %dx.types.CBufRet.f32 %3486, 1
  %3492 = extractvalue %dx.types.CBufRet.f32 %3486, 2
  %3493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3494 = extractvalue %dx.types.CBufRet.f32 %3493, 0
  %3495 = extractvalue %dx.types.CBufRet.f32 %3493, 1
  %3496 = extractvalue %dx.types.CBufRet.f32 %3493, 2
  %3497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  %3499 = extractvalue %dx.types.CBufRet.f32 %3497, 1
  %3500 = call float @dx.op.dot3.f32(i32 55, float %3494, float %3495, float %3496, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3501 = select i1 %237, float %3498, float %3494
  %3502 = select i1 %237, float %3500, float %3495
  %3503 = select i1 %237, float %3499, float %3496
  %3504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.f32 %3504, 2
  %3506 = fmul fast float %3505, %73
  %3507 = fmul fast float %3505, %74
  %3508 = fmul fast float %3505, %75
  %3509 = fadd fast float %3506, %144
  %3510 = fadd fast float %3507, %145
  %3511 = fadd fast float %3508, %146
  %3512 = fcmp fast olt float %3487, 0.000000e+00
  br i1 %3512, label %4608, label %3513

; <label>:3513                                    ; preds = %3489
  %3514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3515 = extractvalue %dx.types.CBufRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.CBufRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.CBufRet.f32 %3514, 2
  %3518 = extractvalue %dx.types.CBufRet.f32 %3514, 3
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.CBufRet.f32 %3519, 2
  %3523 = extractvalue %dx.types.CBufRet.f32 %3519, 3
  %3524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3525 = extractvalue %dx.types.CBufRet.f32 %3524, 0
  %3526 = extractvalue %dx.types.CBufRet.f32 %3524, 1
  %3527 = extractvalue %dx.types.CBufRet.f32 %3524, 2
  %3528 = extractvalue %dx.types.CBufRet.f32 %3524, 3
  %3529 = fmul fast float %3515, %3509
  %3530 = call float @dx.op.tertiary.f32(i32 46, float %3510, float %3516, float %3529)  ; FMad(a,b,c)
  %3531 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3517, float %3530)  ; FMad(a,b,c)
  %3532 = fadd fast float %3531, %3518
  %3533 = fmul fast float %3520, %3509
  %3534 = call float @dx.op.tertiary.f32(i32 46, float %3510, float %3521, float %3533)  ; FMad(a,b,c)
  %3535 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3522, float %3534)  ; FMad(a,b,c)
  %3536 = fadd fast float %3535, %3523
  %3537 = fmul fast float %3525, %3509
  %3538 = call float @dx.op.tertiary.f32(i32 46, float %3510, float %3526, float %3537)  ; FMad(a,b,c)
  %3539 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3527, float %3538)  ; FMad(a,b,c)
  %3540 = fadd fast float %3539, %3528
  %3541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3542 = extractvalue %dx.types.CBufRet.f32 %3541, 0
  %3543 = extractvalue %dx.types.CBufRet.f32 %3541, 1
  %3544 = extractvalue %dx.types.CBufRet.f32 %3541, 3
  %3545 = fmul fast float %3544, %3532
  %3546 = fmul fast float %3544, %3536
  %3547 = fadd fast float %3545, %3542
  %3548 = fadd fast float %3546, %3543
  %3549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3550 = extractvalue %dx.types.CBufRet.f32 %3549, 0
  %3551 = extractvalue %dx.types.CBufRet.f32 %3549, 1
  %3552 = extractvalue %dx.types.CBufRet.f32 %3549, 3
  %3553 = fmul fast float %3552, %3532
  %3554 = fmul fast float %3552, %3536
  %3555 = fadd fast float %3553, %3550
  %3556 = fadd fast float %3554, %3551
  %3557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.f32 %3557, 1
  %3559 = fsub fast float %3558, %3540
  %3560 = extractvalue %dx.types.CBufRet.f32 %3557, 2
  %3561 = fmul fast float %3559, %3560
  %3562 = fsub fast float 1.000000e+00, %3561
  %3563 = call float @dx.op.unary.f32(i32 7, float %3562)  ; Saturate(value)
  %3564 = extractvalue %dx.types.CBufRet.f32 %3549, 2
  %3565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3566 = extractvalue %dx.types.CBufRet.f32 %3565, 2
  %3567 = fadd fast float %3566, %3564
  %3568 = fcmp fast ogt float %3567, 0.000000e+00
  br i1 %3568, label %3569, label %3593

; <label>:3569                                    ; preds = %3513
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 0
  %3572 = extractvalue %dx.types.CBufRet.f32 %3570, 1
  %3573 = fsub fast float %3555, %3571
  %3574 = fsub fast float %3556, %3572
  %3575 = fcmp fast olt float %3573, 0.000000e+00
  %3576 = fcmp fast olt float %3574, 0.000000e+00
  %3577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3578 = extractvalue %dx.types.CBufRet.f32 %3577, 0
  %3579 = extractvalue %dx.types.CBufRet.f32 %3577, 1
  %3580 = extractvalue %dx.types.CBufRet.f32 %3577, 2
  %3581 = extractvalue %dx.types.CBufRet.f32 %3577, 3
  %3582 = select i1 %3575, float %3578, float %3580
  %3583 = select i1 %3576, float %3579, float %3581
  %3584 = fmul fast float %3582, %3573
  %3585 = fmul fast float %3583, %3574
  %3586 = call float @dx.op.unary.f32(i32 6, float %3584)  ; FAbs(value)
  %3587 = call float @dx.op.unary.f32(i32 6, float %3585)  ; FAbs(value)
  %3588 = extractvalue %dx.types.CBufRet.f32 %3504, 0
  %3589 = call float @dx.op.binary.f32(i32 35, float %3586, float %3587)  ; FMax(a,b)
  %3590 = fsub fast float %3588, %3589
  %3591 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3592 = fmul fast float %3591, %3563
  br label %3593

; <label>:3593                                    ; preds = %3569, %3513
  %3594 = phi float [ %3592, %3569 ], [ 0.000000e+00, %3513 ]
  %3595 = extractvalue %dx.types.CBufRet.f32 %3541, 2
  %3596 = extractvalue %dx.types.CBufRet.f32 %3565, 1
  %3597 = fadd fast float %3596, %3595
  %3598 = fcmp fast ogt float %3597, 0.000000e+00
  %3599 = extractvalue %dx.types.CBufRet.f32 %3504, 0
  br i1 %3598, label %3600, label %3623

; <label>:3600                                    ; preds = %3593
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3604 = fsub fast float %3547, %3602
  %3605 = fsub fast float %3548, %3603
  %3606 = fcmp fast olt float %3604, 0.000000e+00
  %3607 = fcmp fast olt float %3605, 0.000000e+00
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.CBufRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.CBufRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.CBufRet.f32 %3608, 3
  %3613 = select i1 %3606, float %3609, float %3611
  %3614 = select i1 %3607, float %3610, float %3612
  %3615 = fmul fast float %3613, %3604
  %3616 = fmul fast float %3614, %3605
  %3617 = call float @dx.op.unary.f32(i32 6, float %3615)  ; FAbs(value)
  %3618 = call float @dx.op.unary.f32(i32 6, float %3616)  ; FAbs(value)
  %3619 = call float @dx.op.binary.f32(i32 35, float %3617, float %3618)  ; FMax(a,b)
  %3620 = fsub fast float %3599, %3619
  %3621 = call float @dx.op.unary.f32(i32 7, float %3620)  ; Saturate(value)
  %3622 = fmul fast float %3621, %3563
  br label %3623

; <label>:3623                                    ; preds = %3600, %3593
  %3624 = phi float [ %3622, %3600 ], [ 0.000000e+00, %3593 ]
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 1
  %3627 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3629 = extractvalue %dx.types.CBufRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.CBufRet.f32 %3628, 1
  %3631 = fsub fast float %3532, %3629
  %3632 = fsub fast float %3536, %3630
  %3633 = fcmp fast olt float %3631, 0.000000e+00
  %3634 = fcmp fast olt float %3632, 0.000000e+00
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.CBufRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.CBufRet.f32 %3635, 2
  %3639 = extractvalue %dx.types.CBufRet.f32 %3635, 3
  %3640 = select i1 %3633, float %3636, float %3638
  %3641 = select i1 %3634, float %3637, float %3639
  %3642 = fmul fast float %3640, %3631
  %3643 = fmul fast float %3641, %3632
  %3644 = call float @dx.op.unary.f32(i32 6, float %3642)  ; FAbs(value)
  %3645 = call float @dx.op.unary.f32(i32 6, float %3643)  ; FAbs(value)
  %3646 = call float @dx.op.binary.f32(i32 35, float %3644, float %3645)  ; FMax(a,b)
  %3647 = fsub fast float %3599, %3646
  %3648 = call float @dx.op.unary.f32(i32 7, float %3647)  ; Saturate(value)
  %3649 = call float @dx.op.binary.f32(i32 36, float %3648, float %3627)  ; FMin(a,b)
  %3650 = fmul fast float %3649, %3563
  %3651 = fsub fast float %3624, %3650
  %3652 = fsub fast float %3594, %3624
  %3653 = fsub fast float %3652, %3650
  %3654 = call float @dx.op.binary.f32(i32 35, float %3624, float %3594)  ; FMax(a,b)
  %3655 = call float @dx.op.binary.f32(i32 35, float %3650, float %3654)  ; FMax(a,b)
  %3656 = fcmp fast olt float %3655, 1.000000e+00
  br i1 %3656, label %3657, label %4055, !dx.controlflow.hints !111

; <label>:3657                                    ; preds = %3623
  %3658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3659 = extractvalue %dx.types.CBufRet.f32 %3658, 0
  %3660 = fcmp fast une float %3659, 0.000000e+00
  br i1 %3660, label %3661, label %4055, !dx.controlflow.hints !112

; <label>:3661                                    ; preds = %3657
  %3662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3663 = extractvalue %dx.types.CBufRet.f32 %3662, 0
  %3664 = extractvalue %dx.types.CBufRet.f32 %3662, 1
  %3665 = extractvalue %dx.types.CBufRet.f32 %3662, 2
  %3666 = extractvalue %dx.types.CBufRet.f32 %3662, 3
  %3667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3668 = extractvalue %dx.types.CBufRet.f32 %3667, 0
  %3669 = extractvalue %dx.types.CBufRet.f32 %3667, 1
  %3670 = extractvalue %dx.types.CBufRet.f32 %3667, 2
  %3671 = extractvalue %dx.types.CBufRet.f32 %3667, 3
  %3672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.CBufRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.CBufRet.f32 %3672, 2
  %3676 = extractvalue %dx.types.CBufRet.f32 %3672, 3
  %3677 = fmul fast float %3663, %3509
  %3678 = call float @dx.op.tertiary.f32(i32 46, float %3510, float %3664, float %3677)  ; FMad(a,b,c)
  %3679 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3665, float %3678)  ; FMad(a,b,c)
  %3680 = fadd fast float %3679, %3666
  %3681 = fmul fast float %3668, %3509
  %3682 = call float @dx.op.tertiary.f32(i32 46, float %3510, float %3669, float %3681)  ; FMad(a,b,c)
  %3683 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3670, float %3682)  ; FMad(a,b,c)
  %3684 = fadd fast float %3683, %3671
  %3685 = fmul fast float %3673, %3509
  %3686 = call float @dx.op.tertiary.f32(i32 46, float %3510, float %3674, float %3685)  ; FMad(a,b,c)
  %3687 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %3675, float %3686)  ; FMad(a,b,c)
  %3688 = fadd fast float %3687, %3676
  %3689 = fcmp fast oge float %3680, 1.000000e+00
  %3690 = fcmp fast oge float %3684, 1.000000e+00
  %3691 = or i1 %3689, %3690
  %3692 = fcmp fast olt float %3680, 0.000000e+00
  %3693 = fcmp fast olt float %3684, 0.000000e+00
  %3694 = or i1 %3692, %3693
  %3695 = or i1 %3691, %3694
  br i1 %3695, label %4055, label %3696, !dx.controlflow.hints !113

; <label>:3696                                    ; preds = %3661
  %3697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3698 = extractvalue %dx.types.CBufRet.f32 %3697, 0
  %3699 = extractvalue %dx.types.CBufRet.f32 %3697, 1
  %3700 = extractvalue %dx.types.CBufRet.f32 %3697, 2
  %3701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3702 = extractvalue %dx.types.CBufRet.i32 %3701, 2
  %3703 = uitofp i32 %3702 to float
  %3704 = extractvalue %dx.types.CBufRet.i32 %3701, 3
  %3705 = uitofp i32 %3704 to float
  %3706 = extractvalue %dx.types.CBufRet.f32 %3697, 3
  %3707 = fmul fast float %3706, 2.000000e+00
  %3708 = fsub fast float %3680, %3698
  %3709 = fsub fast float %3684, %3699
  %3710 = fmul fast float %3707, %3708
  %3711 = fmul fast float %3707, %3709
  %3712 = fdiv fast float 1.000000e+00, %3492
  %3713 = fmul fast float %3711, %3712
  %3714 = call float @dx.op.unary.f32(i32 6, float %3713)  ; FAbs(value)
  %3715 = fmul fast float %3700, %3511
  %3716 = fmul fast float %3715, %3707
  %3717 = call float @dx.op.unary.f32(i32 6, float %3716)  ; FAbs(value)
  %3718 = call float @dx.op.unary.f32(i32 6, float %3710)  ; FAbs(value)
  %3719 = call float @dx.op.binary.f32(i32 35, float %3717, float %3714)  ; FMax(a,b)
  %3720 = call float @dx.op.binary.f32(i32 35, float %3718, float %3719)  ; FMax(a,b)
  %3721 = fmul fast float %3720, 2.000000e+00
  %3722 = call float @dx.op.unary.f32(i32 23, float %3721)  ; Log(value)
  %3723 = call float @dx.op.binary.f32(i32 35, float %3722, float %3703)  ; FMax(a,b)
  %3724 = call float @dx.op.unary.f32(i32 22, float %3723)  ; Frc(value)
  %3725 = fadd fast float %3724, 0xBFEA666660000000
  %3726 = fmul fast float %3725, 8.000000e+00
  %3727 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3728 = call float @dx.op.unary.f32(i32 27, float %3723)  ; Round_ni(value)
  %3729 = fadd fast float %3728, %3727
  %3730 = call float @dx.op.binary.f32(i32 36, float %3729, float %3705)  ; FMin(a,b)
  %3731 = call float @dx.op.unary.f32(i32 27, float %3730)  ; Round_ni(value)
  %3732 = fsub fast float -0.000000e+00, %3731
  %3733 = call float @dx.op.unary.f32(i32 21, float %3732)  ; Exp(value)
  %3734 = fmul fast float %3733, %3707
  %3735 = fmul fast float %3734, %3680
  %3736 = fmul fast float %3734, %3684
  %3737 = fmul fast float %3735, 2.500000e-01
  %3738 = fmul fast float %3736, 2.500000e-01
  %3739 = fadd fast float %3737, 5.000000e-01
  %3740 = fadd fast float %3738, 5.000000e-01
  %3741 = fsub fast float %3705, %3703
  %3742 = fptoui float %3741 to i32
  %3743 = add i32 %3742, 320
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 %3743)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3746 = extractvalue %dx.types.CBufRet.f32 %3744, 1
  %3747 = fcmp fast une float %3730, %3705
  %3748 = fsub fast float %3680, %3745
  %3749 = fsub fast float %3684, %3746
  %3750 = call float @dx.op.unary.f32(i32 6, float %3748)  ; FAbs(value)
  %3751 = call float @dx.op.unary.f32(i32 6, float %3749)  ; FAbs(value)
  %3752 = fmul fast float %3750, %3734
  %3753 = fmul fast float %3751, %3734
  %3754 = fcmp fast olt float %3752, 1.000000e+00
  %3755 = fcmp fast olt float %3753, 1.000000e+00
  %3756 = and i1 %3754, %3755
  %3757 = or i1 %3747, %3756
  br i1 %3757, label %3758, label %4055, !dx.controlflow.hints !114

; <label>:3758                                    ; preds = %3696
  %3759 = fmul fast float %3736, 5.000000e-01
  %3760 = fmul fast float %3735, 5.000000e-01
  %3761 = fadd fast float %3759, 5.000000e-01
  %3762 = fadd fast float %3760, 5.000000e-01
  %3763 = sitofp i32 %3702 to float
  %3764 = fsub fast float %3730, %3763
  %3765 = call float @dx.op.unary.f32(i32 27, float %3764)  ; Round_ni(value)
  %3766 = call float @dx.op.unary.f32(i32 22, float %3730)  ; Frc(value)
  %3767 = call float @dx.op.unary.f32(i32 22, float %3762)  ; Frc(value)
  %3768 = call float @dx.op.unary.f32(i32 22, float %3761)  ; Frc(value)
  %3769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %3767, float %3768, float %3765, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3770 = extractvalue %dx.types.ResRet.f32 %3769, 0
  %3771 = extractvalue %dx.types.ResRet.f32 %3769, 1
  %3772 = extractvalue %dx.types.ResRet.f32 %3769, 2
  %3773 = extractvalue %dx.types.ResRet.f32 %3769, 3
  %3774 = fcmp fast ogt float %3766, 0.000000e+00
  br i1 %3774, label %3775, label %3796, !dx.controlflow.hints !115

; <label>:3775                                    ; preds = %3758
  %3776 = fadd fast float %3765, 1.000000e+00
  %3777 = call float @dx.op.unary.f32(i32 22, float %3739)  ; Frc(value)
  %3778 = call float @dx.op.unary.f32(i32 22, float %3740)  ; Frc(value)
  %3779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %3777, float %3778, float %3776, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3780 = extractvalue %dx.types.ResRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.ResRet.f32 %3779, 1
  %3782 = extractvalue %dx.types.ResRet.f32 %3779, 2
  %3783 = extractvalue %dx.types.ResRet.f32 %3779, 3
  %3784 = fsub fast float %3780, %3770
  %3785 = fsub fast float %3781, %3771
  %3786 = fsub fast float %3782, %3772
  %3787 = fsub fast float %3783, %3773
  %3788 = fmul fast float %3784, %3766
  %3789 = fmul fast float %3785, %3766
  %3790 = fmul fast float %3786, %3766
  %3791 = fmul fast float %3787, %3766
  %3792 = fadd fast float %3788, %3770
  %3793 = fadd fast float %3789, %3771
  %3794 = fadd fast float %3790, %3772
  %3795 = fadd fast float %3791, %3773
  br label %3796

; <label>:3796                                    ; preds = %3775, %3758
  %3797 = phi float [ %3792, %3775 ], [ %3770, %3758 ]
  %3798 = phi float [ %3793, %3775 ], [ %3771, %3758 ]
  %3799 = phi float [ %3794, %3775 ], [ %3772, %3758 ]
  %3800 = phi float [ %3795, %3775 ], [ %3773, %3758 ]
  %3801 = fadd fast float %3797, -5.000000e-01
  %3802 = fadd fast float %3799, -5.000000e-01
  %3803 = fmul fast float %3801, 0xBFD5555560000000
  %3804 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3802, float %3803)  ; FMad(a,b,c)
  %3805 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3798, float 0.000000e+00)  ; FMad(a,b,c)
  %3806 = fadd fast float %3805, %3800
  %3807 = fmul fast float %3801, -7.500000e-01
  %3808 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3802, float %3807)  ; FMad(a,b,c)
  %3809 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3798, float 0.000000e+00)  ; FMad(a,b,c)
  %3810 = fadd fast float %3809, %3800
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 0
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.CBufRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.CBufRet.f32 %3813, 2
  %3817 = extractvalue %dx.types.CBufRet.f32 %3813, 3
  %3818 = fsub fast float %3814, %3804
  %3819 = fsub fast float %3815, %3806
  %3820 = fsub fast float %3816, %3808
  %3821 = fsub fast float %3817, %3810
  %3822 = fmul fast float %3818, %3812
  %3823 = fmul fast float %3819, %3812
  %3824 = fmul fast float %3820, %3812
  %3825 = fmul fast float %3821, %3812
  %3826 = fadd fast float %3822, %3804
  %3827 = fadd fast float %3823, %3806
  %3828 = fadd fast float %3824, %3808
  %3829 = fadd fast float %3825, %3810
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = and i32 %3831, 536870911
  %3833 = uitofp i32 %3832 to float
  %3834 = fmul fast float %3833, %3680
  %3835 = fmul fast float %3833, %3684
  %3836 = fptoui float %3834 to i32
  %3837 = fptoui float %3835 to i32
  %3838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.i32 %3838, 0
  %3840 = and i32 %3839, 31
  %3841 = lshr i32 %3836, %3840
  %3842 = lshr i32 %3837, %3840
  %3843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.i32 %3843, 0
  %3845 = and i32 %3844, 31
  %3846 = shl i32 1, %3845
  %3847 = call i32 @dx.op.binary.i32(i32 40, i32 %3846, i32 4)  ; UMin(a,b)
  %3848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.i32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.i32 %3848, 1
  %3851 = icmp eq i32 %3847, 0
  br i1 %3851, label %3893, label %3852

; <label>:3852                                    ; preds = %3796
  br label %3853

; <label>:3853                                    ; preds = %3881, %3852
  %3854 = phi i32 [ %3884, %3881 ], [ 0, %3852 ]
  %3855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.i32 %3855, 0
  %3857 = lshr i32 %3856, 16
  %3858 = and i32 %3857, 31
  %3859 = shl i32 %3842, %3858
  %3860 = add i32 %3859, %3841
  %3861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.i32 %3861, 0
  %3863 = and i32 %3862, 31
  %3864 = shl i32 %3860, %3863
  %3865 = add i32 %3864, %3854
  %3866 = shl i32 %3865, 2
  %3867 = add i32 %3866, 32
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = icmp slt i32 %3869, 0
  %3871 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %3854
  %3872 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %3854
  %3873 = bitcast float* %3871 to i32*
  %3874 = bitcast float* %3872 to i32*
  br i1 %3870, label %3875, label %3881

; <label>:3875                                    ; preds = %3853
  %3876 = and i32 %3869, 1073741823
  %3877 = add nuw nsw i32 %3876, 20
  %3878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3879 = extractvalue %dx.types.ResRet.i32 %3878, 0
  %3880 = extractvalue %dx.types.ResRet.i32 %3878, 1
  br label %3881

; <label>:3881                                    ; preds = %3875, %3853
  %3882 = phi i32 [ %3879, %3875 ], [ %3849, %3853 ]
  %3883 = phi i32 [ %3880, %3875 ], [ %3850, %3853 ]
  store i32 %3882, i32* %3873, align 4
  store i32 %3883, i32* %3874, align 4
  %3884 = add nuw i32 %3854, 1
  %3885 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.i32 %3885, 2
  %3887 = icmp eq i32 %3886, 0
  %3888 = icmp ugt i32 %3869, -1073741825
  %3889 = and i1 %3888, %3887
  %3890 = icmp ult i32 %3884, %3847
  %3891 = and i1 %3889, %3890
  br i1 %3891, label %3853, label %3892

; <label>:3892                                    ; preds = %3881
  br label %3893

; <label>:3893                                    ; preds = %3892, %3796
  %3894 = phi i32 [ 0, %3796 ], [ %3884, %3892 ]
  %3895 = extractvalue %dx.types.CBufRet.f32 %3658, 2
  %3896 = fptoui float %3895 to i32
  %3897 = icmp eq i32 %3896, 0
  br i1 %3897, label %3949, label %3898

; <label>:3898                                    ; preds = %3893
  br label %3899

; <label>:3899                                    ; preds = %3944, %3898
  %3900 = phi i32 [ %3945, %3944 ], [ %3894, %3898 ]
  %3901 = phi i32 [ %3946, %3944 ], [ 0, %3898 ]
  %3902 = lshr i32 %3901, 2
  %3903 = and i32 %3901, 3
  %3904 = add nuw nsw i32 %3902, 83
  %3905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 %3904)  ; CBufferLoadLegacy(handle,regIndex)
  %3906 = extractvalue %dx.types.CBufRet.i32 %3905, 0
  %3907 = extractvalue %dx.types.CBufRet.i32 %3905, 1
  %3908 = extractvalue %dx.types.CBufRet.i32 %3905, 2
  %3909 = extractvalue %dx.types.CBufRet.i32 %3905, 3
  %3910 = getelementptr inbounds [4 x i32], [4 x i32]* %66, i32 0, i32 0
  store i32 %3906, i32* %3910, align 4
  %3911 = getelementptr inbounds [4 x i32], [4 x i32]* %66, i32 0, i32 1
  store i32 %3907, i32* %3911, align 4
  %3912 = getelementptr inbounds [4 x i32], [4 x i32]* %66, i32 0, i32 2
  store i32 %3908, i32* %3912, align 4
  %3913 = getelementptr inbounds [4 x i32], [4 x i32]* %66, i32 0, i32 3
  store i32 %3909, i32* %3913, align 4
  %3914 = getelementptr inbounds [4 x i32], [4 x i32]* %66, i32 0, i32 %3903
  %3915 = load i32, i32* %3914, align 4, !tbaa !116, !noalias !120
  %3916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.i32 %3916, 0
  %3918 = lshr i32 %3917, 16
  %3919 = and i32 %3918, 31
  %3920 = shl i32 %3842, %3919
  %3921 = add i32 %3920, %3841
  %3922 = shl i32 %3921, 2
  %3923 = add i32 %3922, %3915
  %3924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3925 = extractvalue %dx.types.ResRet.i32 %3924, 0
  %3926 = icmp eq i32 %3925, 0
  br i1 %3926, label %3944, label %3927

; <label>:3927                                    ; preds = %3899
  %3928 = icmp slt i32 %3925, 0
  %3929 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %3900
  %3930 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %3900
  %3931 = bitcast float* %3929 to i32*
  %3932 = bitcast float* %3930 to i32*
  br i1 %3928, label %3933, label %3940

; <label>:3933                                    ; preds = %3927
  %3934 = and i32 %3925, 1073741823
  %3935 = add i32 %3915, 20
  %3936 = add i32 %3935, %3934
  %3937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3936, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.i32 %3937, 0
  %3939 = extractvalue %dx.types.ResRet.i32 %3937, 1
  br label %3940

; <label>:3940                                    ; preds = %3933, %3927
  %3941 = phi i32 [ %3938, %3933 ], [ %3849, %3927 ]
  %3942 = phi i32 [ %3939, %3933 ], [ %3850, %3927 ]
  store i32 %3941, i32* %3931, align 4
  store i32 %3942, i32* %3932, align 4
  %3943 = add i32 %3900, 1
  br label %3944

; <label>:3944                                    ; preds = %3940, %3899
  %3945 = phi i32 [ %3900, %3899 ], [ %3943, %3940 ]
  %3946 = add nuw i32 %3901, 1
  %3947 = icmp eq i32 %3946, %3896
  br i1 %3947, label %3948, label %3899

; <label>:3948                                    ; preds = %3944
  br label %3949

; <label>:3949                                    ; preds = %3948, %3893
  %3950 = phi i32 [ %3894, %3893 ], [ %3945, %3948 ]
  %3951 = icmp eq i32 %3950, 1
  %3952 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 0
  %3953 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  br i1 %3951, label %3954, label %3957

; <label>:3954                                    ; preds = %3949
  %3955 = load float, float* %3952, align 4
  %3956 = load float, float* %3953, align 4
  br label %3984

; <label>:3957                                    ; preds = %3949
  %3958 = load float, float* %3952, align 4
  %3959 = load float, float* %3953, align 4
  %3960 = fdiv fast float 1.000000e+00, %3959
  %3961 = fsub fast float %3958, %3960
  %3962 = icmp ugt i32 %3950, 1
  br i1 %3962, label %3963, label %3979

; <label>:3963                                    ; preds = %3957
  br label %3964

; <label>:3964                                    ; preds = %3964, %3963
  %3965 = phi float [ %3974, %3964 ], [ %3961, %3963 ]
  %3966 = phi float [ %3975, %3964 ], [ %3958, %3963 ]
  %3967 = phi i32 [ %3976, %3964 ], [ 1, %3963 ]
  %3968 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %3967
  %3969 = load float, float* %3968, align 4
  %3970 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %3967
  %3971 = load float, float* %3970, align 4
  %3972 = fdiv fast float 1.000000e+00, %3971
  %3973 = fsub fast float %3969, %3972
  %3974 = call float @dx.op.binary.f32(i32 36, float %3965, float %3973)  ; FMin(a,b)
  %3975 = call float @dx.op.binary.f32(i32 35, float %3966, float %3969)  ; FMax(a,b)
  %3976 = add nuw i32 %3967, 1
  %3977 = icmp eq i32 %3976, %3950
  br i1 %3977, label %3978, label %3964

; <label>:3978                                    ; preds = %3964
  br label %3979

; <label>:3979                                    ; preds = %3978, %3957
  %3980 = phi float [ %3961, %3957 ], [ %3974, %3978 ]
  %3981 = phi float [ %3958, %3957 ], [ %3975, %3978 ]
  %3982 = fsub fast float %3981, %3980
  %3983 = fdiv fast float 1.000000e+00, %3982
  br label %3984

; <label>:3984                                    ; preds = %3979, %3954
  %3985 = phi float [ %3955, %3954 ], [ %3981, %3979 ]
  %3986 = phi float [ %3956, %3954 ], [ %3983, %3979 ]
  %3987 = fadd fast float %3688, %3985
  %3988 = fmul fast float %3987, %3986
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3990 = fmul fast float %3989, 2.000000e+00
  %3991 = fsub fast float 1.000000e+00, %3990
  %3992 = fmul fast float %3826, %3826
  %3993 = fsub fast float %3827, %3992
  %3994 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3993)  ; FMax(a,b)
  %3995 = fdiv fast float 1.000000e+00, %3994
  %3996 = fmul fast float %3827, %3826
  %3997 = fsub fast float %3828, %3996
  %3998 = fsub fast float %3991, %3826
  %3999 = fmul fast float %3991, %3991
  %4000 = fsub fast float %3999, %3827
  %4001 = fmul fast float %3995, %3997
  %4002 = fmul fast float %4001, %3998
  %4003 = fsub fast float %4000, %4002
  %4004 = fmul fast float %3827, %3827
  %4005 = fsub fast float %3829, %4004
  %4006 = fmul fast float %3997, %3997
  %4007 = fmul fast float %4006, %3995
  %4008 = fsub fast float %4005, %4007
  %4009 = fdiv fast float %4003, %4008
  %4010 = fmul fast float %4009, %3997
  %4011 = fsub fast float %3998, %4010
  %4012 = fmul fast float %4011, %3995
  %4013 = fmul fast float %4012, %3826
  %4014 = fsub fast float 1.000000e+00, %4013
  %4015 = fmul fast float %4009, %3827
  %4016 = fsub fast float %4014, %4015
  %4017 = fmul fast float %4012, %4012
  %4018 = fmul fast float %4009, 4.000000e+00
  %4019 = fmul fast float %4018, %4016
  %4020 = fsub fast float %4017, %4019
  %4021 = call float @dx.op.unary.f32(i32 24, float %4020)  ; Sqrt(value)
  %4022 = fcmp fast oge float %4012, 0.000000e+00
  %4023 = fsub fast float -0.000000e+00, %4021
  %4024 = select i1 %4022, float %4023, float %4021
  %4025 = fsub fast float %4024, %4012
  %4026 = fdiv fast float %4025, %4009
  %4027 = fdiv fast float %4016, %4025
  %4028 = fmul fast float %4026, 5.000000e-01
  %4029 = fmul fast float %4027, 2.000000e+00
  %4030 = select i1 %4022, float %4028, float %4029
  %4031 = select i1 %4022, float %4029, float %4028
  %4032 = call float @dx.op.binary.f32(i32 35, float %4030, float %4031)  ; FMax(a,b)
  %4033 = call float @dx.op.binary.f32(i32 36, float %4030, float %4031)  ; FMin(a,b)
  %4034 = fcmp fast ogt float %3991, %4032
  %4035 = fsub fast float %3991, %4033
  %4036 = fsub fast float %3991, %4032
  %4037 = fsub fast float %4032, %4033
  %4038 = select i1 %4034, float %4036, float %4037
  %4039 = fmul float %4035, %4038
  %4040 = select i1 %4034, float %4033, float %3991
  %4041 = fcmp fast ogt float %3991, %4033
  %4042 = fmul fast float %4040, %4032
  %4043 = fadd fast float %4040, %4032
  %4044 = fmul fast float %4043, %3826
  %4045 = fadd fast float %4042, %3827
  %4046 = fsub fast float %4045, %4044
  %4047 = fdiv fast float %4046, %4039
  %4048 = select i1 %4041, float %4047, float 0.000000e+00
  %4049 = fsub fast float 1.000000e+00, %4048
  %4050 = select i1 %4034, float %4049, float %4048
  %4051 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4052 = extractvalue %dx.types.CBufRet.f32 %3811, 3
  %4053 = fmul fast float %4052, %4051
  %4054 = fsub fast float 1.000000e+00, %4053
  br label %4055

; <label>:4055                                    ; preds = %3984, %3696, %3661, %3657, %3623
  %4056 = phi float [ 1.000000e+00, %3623 ], [ %4054, %3984 ], [ 1.000000e+00, %3661 ], [ 1.000000e+00, %3696 ], [ 1.000000e+00, %3657 ]
  %4057 = fcmp fast ogt float %3653, 0.000000e+00
  br i1 %4057, label %4058, label %4220, !dx.controlflow.hints !129

; <label>:4058                                    ; preds = %4055
  %4059 = fadd fast float %3566, %3540
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 2
  %4062 = extractvalue %dx.types.CBufRet.f32 %4060, 3
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 2
  %4065 = call float @dx.op.binary.f32(i32 35, float %4059, float 0.000000e+00)  ; FMax(a,b)
  %4066 = fadd fast float %4065, 0x3F10000000000000
  %4067 = fcmp fast oeq float %4064, 0.000000e+00
  br i1 %4067, label %4068, label %4135

; <label>:4068                                    ; preds = %4058
  %4069 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4070 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4071 = fmul fast float %4070, %3555
  %4072 = fmul fast float %4069, %3556
  %4073 = fadd fast float %4071, 5.000000e-01
  %4074 = call float @dx.op.unary.f32(i32 27, float %4073)  ; Round_ni(value)
  %4075 = fadd fast float %4072, 5.000000e-01
  %4076 = call float @dx.op.unary.f32(i32 27, float %4075)  ; Round_ni(value)
  %4077 = fsub fast float %4073, %4074
  %4078 = fsub fast float %4075, %4076
  %4079 = fadd fast float %4074, -5.000000e-01
  %4080 = fadd fast float %4076, -5.000000e-01
  %4081 = fmul fast float %4077, 2.000000e+00
  %4082 = fsub fast float 3.000000e+00, %4081
  %4083 = fadd fast float %4081, 1.000000e+00
  %4084 = fsub fast float 2.000000e+00, %4077
  %4085 = bitcast float %4082 to i32
  %4086 = sub nsw i32 2129859010, %4085
  %4087 = bitcast i32 %4086 to float
  %4088 = fmul fast float %4087, %4084
  %4089 = fadd fast float %4088, -1.000000e+00
  %4090 = bitcast float %4083 to i32
  %4091 = sub nsw i32 2129859010, %4090
  %4092 = bitcast i32 %4091 to float
  %4093 = fmul fast float %4092, %4077
  %4094 = fadd fast float %4093, 1.000000e+00
  %4095 = fmul fast float %4078, 2.000000e+00
  %4096 = fsub fast float 3.000000e+00, %4095
  %4097 = fadd fast float %4095, 1.000000e+00
  %4098 = fsub fast float 2.000000e+00, %4078
  %4099 = bitcast float %4096 to i32
  %4100 = sub nsw i32 2129859010, %4099
  %4101 = bitcast i32 %4100 to float
  %4102 = fmul fast float %4101, %4098
  %4103 = fadd fast float %4102, -1.000000e+00
  %4104 = bitcast float %4097 to i32
  %4105 = sub nsw i32 2129859010, %4104
  %4106 = bitcast i32 %4105 to float
  %4107 = fmul fast float %4106, %4078
  %4108 = fadd fast float %4107, 1.000000e+00
  %4109 = fadd fast float %4089, %4079
  %4110 = fmul fast float %4109, %4061
  %4111 = fadd fast float %4103, %4080
  %4112 = fmul fast float %4111, %4062
  %4113 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %4110, float %4112, float undef, float undef, i32 0, i32 0, i32 undef, float %4066)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4115 = fmul fast float %4114, %4082
  %4116 = fadd fast float %4094, %4079
  %4117 = fmul fast float %4116, %4061
  %4118 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %4117, float %4112, float undef, float undef, i32 0, i32 0, i32 undef, float %4066)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = fmul fast float %4119, %4083
  %4121 = fadd fast float %4108, %4080
  %4122 = fmul fast float %4121, %4062
  %4123 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %4110, float %4122, float undef, float undef, i32 0, i32 0, i32 undef, float %4066)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4124 = extractvalue %dx.types.ResRet.f32 %4123, 0
  %4125 = fmul fast float %4124, %4082
  %4126 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %4117, float %4122, float undef, float undef, i32 0, i32 0, i32 undef, float %4066)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 0
  %4128 = fmul fast float %4127, %4083
  %4129 = fadd fast float %4128, %4125
  %4130 = fmul fast float %4129, %4097
  %4131 = fadd fast float %4120, %4115
  %4132 = fmul fast float %4131, %4096
  %4133 = fadd fast float %4132, %4130
  %4134 = fmul fast float %4133, 6.250000e-02
  br label %4220

; <label>:4135                                    ; preds = %4058
  %4136 = fmul fast float %248, 0x401921FB60000000
  %4137 = call float @dx.op.unary.f32(i32 13, float %4136)  ; Sin(value)
  %4138 = call float @dx.op.unary.f32(i32 12, float %4136)  ; Cos(value)
  %4139 = fsub fast float -0.000000e+00, %4137
  br label %4140

; <label>:4140                                    ; preds = %4189, %4135
  %4141 = phi float [ 0.000000e+00, %4135 ], [ %4184, %4189 ]
  %4142 = phi float [ 0.000000e+00, %4135 ], [ %4186, %4189 ]
  %4143 = phi i32 [ 0, %4135 ], [ %4190, %4189 ]
  %4144 = mul i32 %4143, 2
  %4145 = add i32 0, %4144
  %4146 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4145
  %4147 = load float, float* %4146, align 4
  %4148 = mul i32 %4143, 2
  %4149 = add i32 1, %4148
  %4150 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4149
  %4151 = load float, float* %4150, align 4
  %4152 = fmul fast float %4147, %4138
  %4153 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %4139, float %4152)  ; FMad(a,b,c)
  %4154 = fmul fast float %4147, %4137
  %4155 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %4138, float %4154)  ; FMad(a,b,c)
  %4156 = fmul fast float %4153, %4064
  %4157 = fmul fast float %4155, %4064
  %4158 = fadd fast float %4156, %3555
  %4159 = fadd fast float %4157, %3556
  %4160 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %62, float %4158, float %4159, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.ResRet.f32 %4160, 2
  %4164 = extractvalue %dx.types.ResRet.f32 %4160, 3
  %4165 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %4161, float* %4165, align 4
  %4166 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %4162, float* %4166, align 4
  %4167 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %4163, float* %4167, align 4
  %4168 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %4164, float* %4168, align 4
  %4169 = fsub fast float %4161, %4066
  %4170 = fcmp fast olt float %4169, 0.000000e+00
  %4171 = select i1 %4170, float 0.000000e+00, float 1.000000e+00
  %4172 = fadd fast float %4171, %4141
  %4173 = fmul fast float %4171, %4169
  %4174 = fadd fast float %4173, %4142
  br label %4175

; <label>:4175                                    ; preds = %4175, %4140
  %4176 = phi i32 [ 1, %4140 ], [ %4187, %4175 ]
  %4177 = phi float [ %4174, %4140 ], [ %4186, %4175 ]
  %4178 = phi float [ %4172, %4140 ], [ %4184, %4175 ]
  %4179 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %4176
  %4180 = load float, float* %4179, align 4, !tbaa !130, !noalias !120
  %4181 = fsub fast float %4180, %4066
  %4182 = fcmp fast olt float %4181, 0.000000e+00
  %4183 = select i1 %4182, float 0.000000e+00, float 1.000000e+00
  %4184 = fadd fast float %4183, %4178
  %4185 = fmul fast float %4183, %4181
  %4186 = fadd fast float %4185, %4177
  %4187 = add nuw nsw i32 %4176, 1
  %4188 = icmp eq i32 %4187, 4
  br i1 %4188, label %4189, label %4175, !llvm.loop !132

; <label>:4189                                    ; preds = %4175
  %4190 = add nuw nsw i32 %4143, 1
  %4191 = icmp eq i32 %4190, 8
  br i1 %4191, label %4192, label %4140, !llvm.loop !133

; <label>:4192                                    ; preds = %4189
  %4193 = fdiv fast float 1.000000e+00, %4184
  %4194 = fmul fast float %4193, %4186
  %4195 = fdiv fast float 1.000000e+00, %4066
  %4196 = fmul fast float %4194, %4195
  %4197 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4198 = call float @dx.op.binary.f32(i32 35, float %4197, float 0.000000e+00)  ; FMax(a,b)
  %4199 = fmul fast float %4184, 3.125000e-02
  %4200 = call float @dx.op.unary.f32(i32 7, float %4199)  ; Saturate(value)
  %4201 = fmul fast float %4200, 2.000000e+00
  %4202 = fadd fast float %4201, -1.000000e+00
  %4203 = fcmp fast ogt float %4202, 0.000000e+00
  %4204 = fcmp fast olt float %4202, 0.000000e+00
  %4205 = zext i1 %4203 to i32
  %4206 = zext i1 %4204 to i32
  %4207 = sub nsw i32 %4205, %4206
  %4208 = sitofp i32 %4207 to float
  %4209 = fmul fast float %4208, %4202
  %4210 = fsub fast float 1.000000e+00, %4209
  %4211 = fmul fast float %4210, %4210
  %4212 = fmul fast float %4211, %4210
  %4213 = fsub fast float %4210, %4212
  %4214 = fmul fast float %4213, %4198
  %4215 = fsub fast float 1.000000e+00, %4212
  %4216 = fsub fast float %4215, %4214
  %4217 = fmul fast float %4208, 5.000000e-01
  %4218 = fmul fast float %4217, %4216
  %4219 = fsub fast float 5.000000e-01, %4218
  br label %4220

; <label>:4220                                    ; preds = %4192, %4068, %4055
  %4221 = phi float [ 1.000000e+00, %4055 ], [ %4134, %4068 ], [ %4219, %4192 ]
  %4222 = fcmp fast ogt float %3651, 0.000000e+00
  br i1 %4222, label %4223, label %4387, !dx.controlflow.hints !134

; <label>:4223                                    ; preds = %4220
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4226 = fadd fast float %4225, %3540
  %4227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.f32 %4227, 2
  %4229 = extractvalue %dx.types.CBufRet.f32 %4227, 3
  %4230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.f32 %4230, 1
  %4232 = call float @dx.op.binary.f32(i32 35, float %4226, float 0.000000e+00)  ; FMax(a,b)
  %4233 = fadd fast float %4232, 0x3F10000000000000
  %4234 = fcmp fast oeq float %4231, 0.000000e+00
  br i1 %4234, label %4235, label %4302

; <label>:4235                                    ; preds = %4223
  %4236 = extractvalue %dx.types.CBufRet.f32 %4227, 1
  %4237 = extractvalue %dx.types.CBufRet.f32 %4227, 0
  %4238 = fmul fast float %4237, %3547
  %4239 = fmul fast float %4236, %3548
  %4240 = fadd fast float %4238, 5.000000e-01
  %4241 = call float @dx.op.unary.f32(i32 27, float %4240)  ; Round_ni(value)
  %4242 = fadd fast float %4239, 5.000000e-01
  %4243 = call float @dx.op.unary.f32(i32 27, float %4242)  ; Round_ni(value)
  %4244 = fsub fast float %4240, %4241
  %4245 = fsub fast float %4242, %4243
  %4246 = fadd fast float %4241, -5.000000e-01
  %4247 = fadd fast float %4243, -5.000000e-01
  %4248 = fmul fast float %4244, 2.000000e+00
  %4249 = fsub fast float 3.000000e+00, %4248
  %4250 = fadd fast float %4248, 1.000000e+00
  %4251 = fsub fast float 2.000000e+00, %4244
  %4252 = bitcast float %4249 to i32
  %4253 = sub nsw i32 2129859010, %4252
  %4254 = bitcast i32 %4253 to float
  %4255 = fmul fast float %4254, %4251
  %4256 = fadd fast float %4255, -1.000000e+00
  %4257 = bitcast float %4250 to i32
  %4258 = sub nsw i32 2129859010, %4257
  %4259 = bitcast i32 %4258 to float
  %4260 = fmul fast float %4259, %4244
  %4261 = fadd fast float %4260, 1.000000e+00
  %4262 = fmul fast float %4245, 2.000000e+00
  %4263 = fsub fast float 3.000000e+00, %4262
  %4264 = fadd fast float %4262, 1.000000e+00
  %4265 = fsub fast float 2.000000e+00, %4245
  %4266 = bitcast float %4263 to i32
  %4267 = sub nsw i32 2129859010, %4266
  %4268 = bitcast i32 %4267 to float
  %4269 = fmul fast float %4268, %4265
  %4270 = fadd fast float %4269, -1.000000e+00
  %4271 = bitcast float %4264 to i32
  %4272 = sub nsw i32 2129859010, %4271
  %4273 = bitcast i32 %4272 to float
  %4274 = fmul fast float %4273, %4245
  %4275 = fadd fast float %4274, 1.000000e+00
  %4276 = fadd fast float %4256, %4246
  %4277 = fmul fast float %4276, %4228
  %4278 = fadd fast float %4270, %4247
  %4279 = fmul fast float %4278, %4229
  %4280 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %4277, float %4279, float undef, float undef, i32 0, i32 0, i32 undef, float %4233)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = fmul fast float %4281, %4249
  %4283 = fadd fast float %4261, %4246
  %4284 = fmul fast float %4283, %4228
  %4285 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %4284, float %4279, float undef, float undef, i32 0, i32 0, i32 undef, float %4233)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = fmul fast float %4286, %4250
  %4288 = fadd fast float %4275, %4247
  %4289 = fmul fast float %4288, %4229
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %4277, float %4289, float undef, float undef, i32 0, i32 0, i32 undef, float %4233)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = fmul fast float %4291, %4249
  %4293 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %4284, float %4289, float undef, float undef, i32 0, i32 0, i32 undef, float %4233)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4294 = extractvalue %dx.types.ResRet.f32 %4293, 0
  %4295 = fmul fast float %4294, %4250
  %4296 = fadd fast float %4295, %4292
  %4297 = fmul fast float %4296, %4264
  %4298 = fadd fast float %4287, %4282
  %4299 = fmul fast float %4298, %4263
  %4300 = fadd fast float %4299, %4297
  %4301 = fmul fast float %4300, 6.250000e-02
  br label %4387

; <label>:4302                                    ; preds = %4223
  %4303 = fmul fast float %248, 0x401921FB60000000
  %4304 = call float @dx.op.unary.f32(i32 13, float %4303)  ; Sin(value)
  %4305 = call float @dx.op.unary.f32(i32 12, float %4303)  ; Cos(value)
  %4306 = fsub fast float -0.000000e+00, %4304
  br label %4307

; <label>:4307                                    ; preds = %4356, %4302
  %4308 = phi float [ 0.000000e+00, %4302 ], [ %4351, %4356 ]
  %4309 = phi float [ 0.000000e+00, %4302 ], [ %4353, %4356 ]
  %4310 = phi i32 [ 0, %4302 ], [ %4357, %4356 ]
  %4311 = mul i32 %4310, 2
  %4312 = add i32 0, %4311
  %4313 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4312
  %4314 = load float, float* %4313, align 4
  %4315 = mul i32 %4310, 2
  %4316 = add i32 1, %4315
  %4317 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4316
  %4318 = load float, float* %4317, align 4
  %4319 = fmul fast float %4314, %4305
  %4320 = call float @dx.op.tertiary.f32(i32 46, float %4318, float %4306, float %4319)  ; FMad(a,b,c)
  %4321 = fmul fast float %4314, %4304
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4318, float %4305, float %4321)  ; FMad(a,b,c)
  %4323 = fmul fast float %4320, %4231
  %4324 = fmul fast float %4322, %4231
  %4325 = fadd fast float %4323, %3547
  %4326 = fadd fast float %4324, %3548
  %4327 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %62, float %4325, float %4326, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4328 = extractvalue %dx.types.ResRet.f32 %4327, 0
  %4329 = extractvalue %dx.types.ResRet.f32 %4327, 1
  %4330 = extractvalue %dx.types.ResRet.f32 %4327, 2
  %4331 = extractvalue %dx.types.ResRet.f32 %4327, 3
  %4332 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %4328, float* %4332, align 4
  %4333 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %4329, float* %4333, align 4
  %4334 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %4330, float* %4334, align 4
  %4335 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %4331, float* %4335, align 4
  %4336 = fsub fast float %4328, %4233
  %4337 = fcmp fast olt float %4336, 0.000000e+00
  %4338 = select i1 %4337, float 0.000000e+00, float 1.000000e+00
  %4339 = fadd fast float %4338, %4308
  %4340 = fmul fast float %4338, %4336
  %4341 = fadd fast float %4340, %4309
  br label %4342

; <label>:4342                                    ; preds = %4342, %4307
  %4343 = phi i32 [ 1, %4307 ], [ %4354, %4342 ]
  %4344 = phi float [ %4341, %4307 ], [ %4353, %4342 ]
  %4345 = phi float [ %4339, %4307 ], [ %4351, %4342 ]
  %4346 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %4343
  %4347 = load float, float* %4346, align 4, !tbaa !130, !noalias !120
  %4348 = fsub fast float %4347, %4233
  %4349 = fcmp fast olt float %4348, 0.000000e+00
  %4350 = select i1 %4349, float 0.000000e+00, float 1.000000e+00
  %4351 = fadd fast float %4350, %4345
  %4352 = fmul fast float %4350, %4348
  %4353 = fadd fast float %4352, %4344
  %4354 = add nuw nsw i32 %4343, 1
  %4355 = icmp eq i32 %4354, 4
  br i1 %4355, label %4356, label %4342, !llvm.loop !132

; <label>:4356                                    ; preds = %4342
  %4357 = add nuw nsw i32 %4310, 1
  %4358 = icmp eq i32 %4357, 8
  br i1 %4358, label %4359, label %4307, !llvm.loop !133

; <label>:4359                                    ; preds = %4356
  %4360 = fdiv fast float 1.000000e+00, %4351
  %4361 = fmul fast float %4360, %4353
  %4362 = fdiv fast float 1.000000e+00, %4233
  %4363 = fmul fast float %4361, %4362
  %4364 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4365 = call float @dx.op.binary.f32(i32 35, float %4364, float 0.000000e+00)  ; FMax(a,b)
  %4366 = fmul fast float %4351, 3.125000e-02
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = fmul fast float %4367, 2.000000e+00
  %4369 = fadd fast float %4368, -1.000000e+00
  %4370 = fcmp fast ogt float %4369, 0.000000e+00
  %4371 = fcmp fast olt float %4369, 0.000000e+00
  %4372 = zext i1 %4370 to i32
  %4373 = zext i1 %4371 to i32
  %4374 = sub nsw i32 %4372, %4373
  %4375 = sitofp i32 %4374 to float
  %4376 = fmul fast float %4375, %4369
  %4377 = fsub fast float 1.000000e+00, %4376
  %4378 = fmul fast float %4377, %4377
  %4379 = fmul fast float %4378, %4377
  %4380 = fsub fast float %4377, %4379
  %4381 = fmul fast float %4380, %4365
  %4382 = fsub fast float 1.000000e+00, %4379
  %4383 = fsub fast float %4382, %4381
  %4384 = fmul fast float %4375, 5.000000e-01
  %4385 = fmul fast float %4384, %4383
  %4386 = fsub fast float 5.000000e-01, %4385
  br label %4387

; <label>:4387                                    ; preds = %4359, %4235, %4220
  %4388 = phi float [ 1.000000e+00, %4220 ], [ %4301, %4235 ], [ %4386, %4359 ]
  %4389 = fcmp fast ogt float %3650, 0.000000e+00
  br i1 %4389, label %4390, label %4554, !dx.controlflow.hints !135

; <label>:4390                                    ; preds = %4387
  %4391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4391, 0
  %4393 = fadd fast float %4392, %3540
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 2
  %4396 = extractvalue %dx.types.CBufRet.f32 %4394, 3
  %4397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.f32 %4397, 0
  %4399 = call float @dx.op.binary.f32(i32 35, float %4393, float 0.000000e+00)  ; FMax(a,b)
  %4400 = fadd fast float %4399, 0x3F10000000000000
  %4401 = fcmp fast oeq float %4398, 0.000000e+00
  br i1 %4401, label %4402, label %4469

; <label>:4402                                    ; preds = %4390
  %4403 = extractvalue %dx.types.CBufRet.f32 %4394, 1
  %4404 = extractvalue %dx.types.CBufRet.f32 %4394, 0
  %4405 = fmul fast float %4404, %3532
  %4406 = fmul fast float %4403, %3536
  %4407 = fadd fast float %4405, 5.000000e-01
  %4408 = call float @dx.op.unary.f32(i32 27, float %4407)  ; Round_ni(value)
  %4409 = fadd fast float %4406, 5.000000e-01
  %4410 = call float @dx.op.unary.f32(i32 27, float %4409)  ; Round_ni(value)
  %4411 = fsub fast float %4407, %4408
  %4412 = fsub fast float %4409, %4410
  %4413 = fadd fast float %4408, -5.000000e-01
  %4414 = fadd fast float %4410, -5.000000e-01
  %4415 = fmul fast float %4411, 2.000000e+00
  %4416 = fsub fast float 3.000000e+00, %4415
  %4417 = fadd fast float %4415, 1.000000e+00
  %4418 = fsub fast float 2.000000e+00, %4411
  %4419 = bitcast float %4416 to i32
  %4420 = sub nsw i32 2129859010, %4419
  %4421 = bitcast i32 %4420 to float
  %4422 = fmul fast float %4421, %4418
  %4423 = fadd fast float %4422, -1.000000e+00
  %4424 = bitcast float %4417 to i32
  %4425 = sub nsw i32 2129859010, %4424
  %4426 = bitcast i32 %4425 to float
  %4427 = fmul fast float %4426, %4411
  %4428 = fadd fast float %4427, 1.000000e+00
  %4429 = fmul fast float %4412, 2.000000e+00
  %4430 = fsub fast float 3.000000e+00, %4429
  %4431 = fadd fast float %4429, 1.000000e+00
  %4432 = fsub fast float 2.000000e+00, %4412
  %4433 = bitcast float %4430 to i32
  %4434 = sub nsw i32 2129859010, %4433
  %4435 = bitcast i32 %4434 to float
  %4436 = fmul fast float %4435, %4432
  %4437 = fadd fast float %4436, -1.000000e+00
  %4438 = bitcast float %4431 to i32
  %4439 = sub nsw i32 2129859010, %4438
  %4440 = bitcast i32 %4439 to float
  %4441 = fmul fast float %4440, %4412
  %4442 = fadd fast float %4441, 1.000000e+00
  %4443 = fadd fast float %4423, %4413
  %4444 = fmul fast float %4443, %4395
  %4445 = fadd fast float %4437, %4414
  %4446 = fmul fast float %4445, %4396
  %4447 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %4444, float %4446, float undef, float undef, i32 0, i32 0, i32 undef, float %4400)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4448 = extractvalue %dx.types.ResRet.f32 %4447, 0
  %4449 = fmul fast float %4448, %4416
  %4450 = fadd fast float %4428, %4413
  %4451 = fmul fast float %4450, %4395
  %4452 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %4451, float %4446, float undef, float undef, i32 0, i32 0, i32 undef, float %4400)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4453 = extractvalue %dx.types.ResRet.f32 %4452, 0
  %4454 = fmul fast float %4453, %4417
  %4455 = fadd fast float %4442, %4414
  %4456 = fmul fast float %4455, %4396
  %4457 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %4444, float %4456, float undef, float undef, i32 0, i32 0, i32 undef, float %4400)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 0
  %4459 = fmul fast float %4458, %4416
  %4460 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %4451, float %4456, float undef, float undef, i32 0, i32 0, i32 undef, float %4400)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4461 = extractvalue %dx.types.ResRet.f32 %4460, 0
  %4462 = fmul fast float %4461, %4417
  %4463 = fadd fast float %4462, %4459
  %4464 = fmul fast float %4463, %4431
  %4465 = fadd fast float %4454, %4449
  %4466 = fmul fast float %4465, %4430
  %4467 = fadd fast float %4466, %4464
  %4468 = fmul fast float %4467, 6.250000e-02
  br label %4554

; <label>:4469                                    ; preds = %4390
  %4470 = fmul fast float %248, 0x401921FB60000000
  %4471 = call float @dx.op.unary.f32(i32 13, float %4470)  ; Sin(value)
  %4472 = call float @dx.op.unary.f32(i32 12, float %4470)  ; Cos(value)
  %4473 = fsub fast float -0.000000e+00, %4471
  br label %4474

; <label>:4474                                    ; preds = %4523, %4469
  %4475 = phi float [ 0.000000e+00, %4469 ], [ %4518, %4523 ]
  %4476 = phi float [ 0.000000e+00, %4469 ], [ %4520, %4523 ]
  %4477 = phi i32 [ 0, %4469 ], [ %4524, %4523 ]
  %4478 = mul i32 %4477, 2
  %4479 = add i32 0, %4478
  %4480 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4479
  %4481 = load float, float* %4480, align 4
  %4482 = mul i32 %4477, 2
  %4483 = add i32 1, %4482
  %4484 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4483
  %4485 = load float, float* %4484, align 4
  %4486 = fmul fast float %4481, %4472
  %4487 = call float @dx.op.tertiary.f32(i32 46, float %4485, float %4473, float %4486)  ; FMad(a,b,c)
  %4488 = fmul fast float %4481, %4471
  %4489 = call float @dx.op.tertiary.f32(i32 46, float %4485, float %4472, float %4488)  ; FMad(a,b,c)
  %4490 = fmul fast float %4487, %4398
  %4491 = fmul fast float %4489, %4398
  %4492 = fadd fast float %4490, %3532
  %4493 = fadd fast float %4491, %3536
  %4494 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %62, float %4492, float %4493, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  %4496 = extractvalue %dx.types.ResRet.f32 %4494, 1
  %4497 = extractvalue %dx.types.ResRet.f32 %4494, 2
  %4498 = extractvalue %dx.types.ResRet.f32 %4494, 3
  %4499 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %4495, float* %4499, align 4
  %4500 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %4496, float* %4500, align 4
  %4501 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %4497, float* %4501, align 4
  %4502 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %4498, float* %4502, align 4
  %4503 = fsub fast float %4495, %4400
  %4504 = fcmp fast olt float %4503, 0.000000e+00
  %4505 = select i1 %4504, float 0.000000e+00, float 1.000000e+00
  %4506 = fadd fast float %4505, %4475
  %4507 = fmul fast float %4505, %4503
  %4508 = fadd fast float %4507, %4476
  br label %4509

; <label>:4509                                    ; preds = %4509, %4474
  %4510 = phi i32 [ 1, %4474 ], [ %4521, %4509 ]
  %4511 = phi float [ %4508, %4474 ], [ %4520, %4509 ]
  %4512 = phi float [ %4506, %4474 ], [ %4518, %4509 ]
  %4513 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %4510
  %4514 = load float, float* %4513, align 4, !tbaa !130, !noalias !120
  %4515 = fsub fast float %4514, %4400
  %4516 = fcmp fast olt float %4515, 0.000000e+00
  %4517 = select i1 %4516, float 0.000000e+00, float 1.000000e+00
  %4518 = fadd fast float %4517, %4512
  %4519 = fmul fast float %4517, %4515
  %4520 = fadd fast float %4519, %4511
  %4521 = add nuw nsw i32 %4510, 1
  %4522 = icmp eq i32 %4521, 4
  br i1 %4522, label %4523, label %4509, !llvm.loop !132

; <label>:4523                                    ; preds = %4509
  %4524 = add nuw nsw i32 %4477, 1
  %4525 = icmp eq i32 %4524, 8
  br i1 %4525, label %4526, label %4474, !llvm.loop !133

; <label>:4526                                    ; preds = %4523
  %4527 = fdiv fast float 1.000000e+00, %4518
  %4528 = fmul fast float %4527, %4520
  %4529 = fdiv fast float 1.000000e+00, %4400
  %4530 = fmul fast float %4528, %4529
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = call float @dx.op.binary.f32(i32 35, float %4531, float 0.000000e+00)  ; FMax(a,b)
  %4533 = fmul fast float %4518, 3.125000e-02
  %4534 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4535 = fmul fast float %4534, 2.000000e+00
  %4536 = fadd fast float %4535, -1.000000e+00
  %4537 = fcmp fast ogt float %4536, 0.000000e+00
  %4538 = fcmp fast olt float %4536, 0.000000e+00
  %4539 = zext i1 %4537 to i32
  %4540 = zext i1 %4538 to i32
  %4541 = sub nsw i32 %4539, %4540
  %4542 = sitofp i32 %4541 to float
  %4543 = fmul fast float %4542, %4536
  %4544 = fsub fast float 1.000000e+00, %4543
  %4545 = fmul fast float %4544, %4544
  %4546 = fmul fast float %4545, %4544
  %4547 = fsub fast float %4544, %4546
  %4548 = fmul fast float %4547, %4532
  %4549 = fsub fast float 1.000000e+00, %4546
  %4550 = fsub fast float %4549, %4548
  %4551 = fmul fast float %4542, 5.000000e-01
  %4552 = fmul fast float %4551, %4550
  %4553 = fsub fast float 5.000000e-01, %4552
  br label %4554

; <label>:4554                                    ; preds = %4526, %4402, %4387
  %4555 = phi float [ 1.000000e+00, %4387 ], [ %4468, %4402 ], [ %4553, %4526 ]
  %4556 = fsub fast float %4221, %4056
  %4557 = fmul fast float %4556, %3594
  %4558 = fadd fast float %4557, %4056
  %4559 = fsub fast float %4388, %4558
  %4560 = fmul fast float %4559, %3624
  %4561 = fadd fast float %4560, %4558
  %4562 = fsub fast float %4555, %4561
  %4563 = fmul fast float %4562, %3650
  %4564 = fadd fast float %4563, %4561
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4567 = fcmp fast ogt float %4566, 0.000000e+00
  br i1 %4567, label %4568, label %4608, !dx.controlflow.hints !136

; <label>:4568                                    ; preds = %4554
  %4569 = fcmp fast ugt float %4566, 0.000000e+00
  br i1 %4569, label %4570, label %4605

; <label>:4570                                    ; preds = %4568
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.CBufRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.CBufRet.f32 %4571, 2
  %4575 = extractvalue %dx.types.CBufRet.f32 %4571, 3
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.CBufRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.CBufRet.f32 %4576, 2
  %4580 = extractvalue %dx.types.CBufRet.f32 %4576, 3
  %4581 = extractvalue %dx.types.CBufRet.f32 %4565, 0
  %4582 = extractvalue %dx.types.CBufRet.f32 %4565, 1
  %4583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4583, 0
  %4585 = extractvalue %dx.types.CBufRet.f32 %4583, 1
  %4586 = extractvalue %dx.types.CBufRet.f32 %4583, 2
  %4587 = fadd fast float %4584, %3509
  %4588 = fadd fast float %4585, %3510
  %4589 = fadd fast float %4586, %3511
  %4590 = fmul fast float %4587, %4572
  %4591 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4588, float %4590)  ; FMad(a,b,c)
  %4592 = call float @dx.op.tertiary.f32(i32 46, float %4574, float %4589, float %4591)  ; FMad(a,b,c)
  %4593 = fadd fast float %4592, %4575
  %4594 = fmul fast float %4587, %4577
  %4595 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4588, float %4594)  ; FMad(a,b,c)
  %4596 = call float @dx.op.tertiary.f32(i32 46, float %4579, float %4589, float %4595)  ; FMad(a,b,c)
  %4597 = fadd fast float %4596, %4580
  %4598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %58, float %4593, float %4597, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = fmul fast float %4599, %4582
  %4601 = fadd fast float %4600, %4581
  %4602 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4603 = fmul fast float %4602, %4566
  %4604 = fsub fast float 1.000000e+00, %4603
  br label %4605

; <label>:4605                                    ; preds = %4570, %4568
  %4606 = phi float [ %4604, %4570 ], [ 1.000000e+00, %4568 ]
  %4607 = fmul fast float %4606, %4564
  br label %4608

; <label>:4608                                    ; preds = %4605, %4554, %3489
  %4609 = phi float [ 1.000000e+00, %3489 ], [ %4607, %4605 ], [ %4564, %4554 ]
  %4610 = call float @dx.op.binary.f32(i32 36, float %4609, float %4609)  ; FMin(a,b)
  %4611 = call float @dx.op.binary.f32(i32 36, float %4609, float %4610)  ; FMin(a,b)
  %4612 = fcmp fast ogt float %4611, 0.000000e+00
  br i1 %4612, label %4613, label %4778, !dx.controlflow.hints !137

; <label>:4613                                    ; preds = %4608
  %4614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4615 = extractvalue %dx.types.CBufRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.CBufRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.CBufRet.f32 %4614, 2
  %4618 = extractvalue %dx.types.CBufRet.f32 %4614, 3
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.CBufRet.f32 %4619, 2
  %4623 = extractvalue %dx.types.CBufRet.f32 %4619, 3
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.CBufRet.f32 %4624, 1
  %4627 = extractvalue %dx.types.CBufRet.f32 %4624, 2
  %4628 = extractvalue %dx.types.CBufRet.f32 %4624, 3
  %4629 = fmul fast float %4615, %3509
  %4630 = call float @dx.op.tertiary.f32(i32 46, float %3510, float %4616, float %4629)  ; FMad(a,b,c)
  %4631 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %4617, float %4630)  ; FMad(a,b,c)
  %4632 = fadd fast float %4631, %4618
  %4633 = fmul fast float %4620, %3509
  %4634 = call float @dx.op.tertiary.f32(i32 46, float %3510, float %4621, float %4633)  ; FMad(a,b,c)
  %4635 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %4622, float %4634)  ; FMad(a,b,c)
  %4636 = fadd fast float %4635, %4623
  %4637 = fmul fast float %4625, %3509
  %4638 = call float @dx.op.tertiary.f32(i32 46, float %3510, float %4626, float %4637)  ; FMad(a,b,c)
  %4639 = call float @dx.op.tertiary.f32(i32 46, float %3511, float %4627, float %4638)  ; FMad(a,b,c)
  %4640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.CBufRet.f32 %4640, 1
  %4643 = extractvalue %dx.types.CBufRet.f32 %4640, 3
  %4644 = fmul fast float %4643, %4632
  %4645 = fmul fast float %4643, %4636
  %4646 = fadd fast float %4644, %4641
  %4647 = fadd fast float %4645, %4642
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4651 = fsub fast float %4646, %4649
  %4652 = fsub fast float %4647, %4650
  %4653 = fcmp fast olt float %4651, 0.000000e+00
  %4654 = fcmp fast olt float %4652, 0.000000e+00
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 0
  %4657 = extractvalue %dx.types.CBufRet.f32 %4655, 1
  %4658 = extractvalue %dx.types.CBufRet.f32 %4655, 2
  %4659 = extractvalue %dx.types.CBufRet.f32 %4655, 3
  %4660 = select i1 %4653, float %4656, float %4658
  %4661 = select i1 %4654, float %4657, float %4659
  %4662 = fmul fast float %4660, %4651
  %4663 = fmul fast float %4661, %4652
  %4664 = call float @dx.op.unary.f32(i32 6, float %4662)  ; FAbs(value)
  %4665 = call float @dx.op.unary.f32(i32 6, float %4663)  ; FAbs(value)
  %4666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.f32 %4666, 0
  %4668 = call float @dx.op.binary.f32(i32 35, float %4664, float %4665)  ; FMax(a,b)
  %4669 = fsub fast float %4667, %4668
  %4670 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4671 = fcmp fast ogt float %4670, 0.000000e+00
  br i1 %4671, label %4672, label %4713, !dx.controlflow.hints !138

; <label>:4672                                    ; preds = %4613
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %61, float %4646, float %4647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 1
  %4675 = fcmp fast ogt float %4674, 0.000000e+00
  br i1 %4675, label %4676, label %4708

; <label>:4676                                    ; preds = %4672
  %4677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %61, float %4646, float %4647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4678 = extractvalue %dx.types.ResRet.f32 %4677, 0
  %4679 = extractvalue %dx.types.ResRet.f32 %4677, 1
  %4680 = extractvalue %dx.types.ResRet.f32 %4677, 2
  %4681 = extractvalue %dx.types.ResRet.f32 %4677, 3
  %4682 = fsub fast float 1.000000e+00, %4628
  %4683 = fsub fast float %4682, %4639
  %4684 = fmul fast float %4683, 0x400921FB60000000
  %4685 = fadd fast float %4684, 0x3FF921FB60000000
  %4686 = call float @dx.op.unary.f32(i32 13, float %4685)  ; Sin(value)
  %4687 = fadd fast float %4686, -1.000000e+00
  %4688 = fmul fast float %4687, 0x3FD45F3060000000
  %4689 = fmul fast float %4683, 0x401921FB60000000
  %4690 = fadd fast float %4689, 0x400921FB60000000
  %4691 = call float @dx.op.unary.f32(i32 13, float %4690)  ; Sin(value)
  %4692 = fadd fast float %4691, 0x3E7777A5C0000000
  %4693 = fmul fast float %4692, 0x3FC45F3060000000
  %4694 = fmul fast float %4683, 0x4022D97C80000000
  %4695 = fadd fast float %4694, 0x4012D97C80000000
  %4696 = call float @dx.op.unary.f32(i32 13, float %4695)  ; Sin(value)
  %4697 = fadd fast float %4696, 1.000000e+00
  %4698 = fmul fast float %4697, 0x3FBB2995E0000000
  %4699 = fmul fast float %4683, 0x402921FB60000000
  %4700 = fadd fast float %4699, 0x401921FB60000000
  %4701 = call float @dx.op.unary.f32(i32 13, float %4700)  ; Sin(value)
  %4702 = fadd fast float %4701, 0xBE8777A5C0000000
  %4703 = fmul fast float %4702, 0x3FB45F3060000000
  %4704 = call float @dx.op.dot4.f32(i32 56, float %4678, float %4679, float %4680, float %4681, float %4688, float %4693, float %4698, float %4703)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4705 = fmul fast float %4704, 0xBFF7154760000000
  %4706 = call float @dx.op.unary.f32(i32 21, float %4705)  ; Exp(value)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  br label %4708

; <label>:4708                                    ; preds = %4676, %4672
  %4709 = phi float [ %4707, %4676 ], [ 1.000000e+00, %4672 ]
  %4710 = fadd fast float %4709, -1.000000e+00
  %4711 = fmul fast float %4710, %4670
  %4712 = fadd fast float %4711, 1.000000e+00
  br label %4713

; <label>:4713                                    ; preds = %4708, %4613
  %4714 = phi float [ %4712, %4708 ], [ 1.000000e+00, %4613 ]
  %4715 = fmul fast float %4714, %4609
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 0
  %4718 = extractvalue %dx.types.CBufRet.f32 %4716, 1
  %4719 = extractvalue %dx.types.CBufRet.f32 %4716, 2
  %4720 = fadd fast float %4717, %144
  %4721 = fadd fast float %4718, %145
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 1
  %4724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4724, 0
  %4726 = extractvalue %dx.types.CBufRet.f32 %4724, 1
  %4727 = extractvalue %dx.types.CBufRet.f32 %4724, 2
  %4728 = fsub fast float -0.000000e+00, %4720
  %4729 = fsub fast float -0.000000e+00, %4721
  %4730 = fsub fast float %1676, %4719
  %4731 = fadd fast float %4730, %4723
  %4732 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4728, float %4729, float %4731)  ; Dot3(ax,ay,az,bx,by,bz)
  %4733 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4725, float %4726, float %4727)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = fdiv fast float 1.000000e+00, %4733
  %4735 = fmul fast float %4734, %4732
  %4736 = fmul fast float %4725, %4735
  %4737 = fmul fast float %4726, %4735
  %4738 = fadd fast float %4736, %4720
  %4739 = fadd fast float %4737, %4721
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 0
  %4742 = extractvalue %dx.types.CBufRet.f32 %4740, 1
  %4743 = fsub fast float %4738, %4741
  %4744 = fsub fast float %4739, %4742
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 2
  %4747 = extractvalue %dx.types.CBufRet.f32 %4745, 3
  %4748 = fmul fast float %4743, %4746
  %4749 = fmul fast float %4744, %4747
  %4750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.i32 %4750, 3
  %4752 = icmp eq i32 %4751, 0
  br i1 %4752, label %4758, label %4753

; <label>:4753                                    ; preds = %4713
  %4754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %60, float %4748, float %4749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4755 = extractvalue %dx.types.ResRet.f32 %4754, 0
  %4756 = extractvalue %dx.types.ResRet.f32 %4754, 1
  %4757 = extractvalue %dx.types.ResRet.f32 %4754, 2
  br label %4763

; <label>:4758                                    ; preds = %4713
  %4759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %61, float %4748, float %4749, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4760 = extractvalue %dx.types.ResRet.f32 %4759, 0
  %4761 = extractvalue %dx.types.ResRet.f32 %4759, 1
  %4762 = extractvalue %dx.types.ResRet.f32 %4759, 2
  br label %4763

; <label>:4763                                    ; preds = %4758, %4753
  %4764 = phi float [ %4755, %4753 ], [ %4760, %4758 ]
  %4765 = phi float [ %4756, %4753 ], [ %4761, %4758 ]
  %4766 = phi float [ %4757, %4753 ], [ %4762, %4758 ]
  %4767 = extractvalue %dx.types.CBufRet.f32 %4722, 2
  %4768 = fmul fast float %4767, %4764
  %4769 = extractvalue %dx.types.CBufRet.f32 %4722, 0
  %4770 = fsub fast float %4735, %4769
  %4771 = fsub fast float %4770, %4768
  %4772 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4771)  ; FMax(a,b)
  %4773 = fmul fast float %4772, %4765
  %4774 = call float @dx.op.binary.f32(i32 36, float %4766, float %4773)  ; FMin(a,b)
  %4775 = fmul fast float %4774, 0xBFF7154760000000
  %4776 = call float @dx.op.unary.f32(i32 21, float %4775)  ; Exp(value)
  %4777 = fmul fast float %4715, %4776
  br label %4778

; <label>:4778                                    ; preds = %4763, %4608
  %4779 = phi float [ %4777, %4763 ], [ %4609, %4608 ]
  %4780 = call float @dx.op.binary.f32(i32 36, float %4779, float %4779)  ; FMin(a,b)
  %4781 = call float @dx.op.binary.f32(i32 36, float %4779, float %4780)  ; FMin(a,b)
  %4782 = fcmp fast ogt float %4781, 0.000000e+00
  br i1 %4782, label %4783, label %4961, !dx.controlflow.hints !139

; <label>:4783                                    ; preds = %4778
  %4784 = fmul fast float %4779, %3501
  %4785 = fmul fast float %4779, %3502
  %4786 = fmul fast float %4779, %3503
  %4787 = fsub fast float %146, %1464
  %4788 = fcmp fast ogt float %4787, 0.000000e+00
  %4789 = fmul fast float %3490, 5.120000e+02
  %4790 = fmul fast float %3491, 5.120000e+02
  %4791 = fmul fast float %3492, 5.120000e+02
  %4792 = fadd fast float %4791, %146
  %4793 = fsub fast float %1464, %4792
  %4794 = fmul fast float %4793, 2.000000e+00
  %4795 = fadd fast float %4794, %4792
  %4796 = select i1 %4788, float %4795, float %4792
  %4797 = fsub fast float %4796, %146
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4797, float %4789, float %4790, float %4797)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = call float @dx.op.unary.f32(i32 25, float %4798)  ; Rsqrt(value)
  %4800 = fmul fast float %4799, %4789
  %4801 = fmul fast float %4799, %4790
  %4802 = fmul fast float %4799, %4797
  %4803 = fsub fast float %1464, %146
  %4804 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4803)  ; Dot3(ax,ay,az,bx,by,bz)
  %4805 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4800, float %4801, float %4802)  ; Dot3(ax,ay,az,bx,by,bz)
  %4806 = fdiv fast float 1.000000e+00, %4805
  %4807 = fmul fast float %4806, %4804
  %4808 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4787, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4809 = fcmp fast ogt float %4808, 0.000000e+00
  %4810 = fcmp fast olt float %4808, 0.000000e+00
  %4811 = zext i1 %4809 to i32
  %4812 = zext i1 %4810 to i32
  %4813 = sub nsw i32 %4811, %4812
  %4814 = sitofp i32 %4813 to float
  %4815 = fsub fast float %4796, %1464
  %4816 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4815, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4817 = fcmp fast ogt float %4816, 0.000000e+00
  %4818 = fcmp fast olt float %4816, 0.000000e+00
  %4819 = zext i1 %4817 to i32
  %4820 = zext i1 %4818 to i32
  %4821 = sub nsw i32 %4819, %4820
  %4822 = sitofp i32 %4821 to float
  %4823 = fcmp fast une float %4814, %4822
  br i1 %4823, label %4824, label %4834

; <label>:4824                                    ; preds = %4783
  %4825 = fmul fast float %4807, %4802
  %4826 = fmul fast float %4807, %4801
  %4827 = fmul fast float %4807, %4800
  %4828 = fmul fast float %4827, %4827
  %4829 = fmul fast float %4826, %4826
  %4830 = fadd fast float %4828, %4829
  %4831 = fmul fast float %4825, %4825
  %4832 = fadd fast float %4830, %4831
  %4833 = call float @dx.op.unary.f32(i32 24, float %4832)  ; Sqrt(value)
  br label %4844

; <label>:4834                                    ; preds = %4783
  %4835 = icmp slt i32 %4813, 0
  br i1 %4835, label %4836, label %4844

; <label>:4836                                    ; preds = %4834
  %4837 = fsub fast float %146, %4796
  %4838 = fmul fast float %4789, %4789
  %4839 = fmul fast float %4790, %4790
  %4840 = fadd fast float %4838, %4839
  %4841 = fmul fast float %4837, %4837
  %4842 = fadd fast float %4840, %4841
  %4843 = call float @dx.op.unary.f32(i32 24, float %4842)  ; Sqrt(value)
  br label %4844

; <label>:4844                                    ; preds = %4836, %4834, %4824
  %4845 = phi float [ %4833, %4824 ], [ %4843, %4836 ], [ 0.000000e+00, %4834 ]
  %4846 = fsub fast float -0.000000e+00, %4845
  %4847 = select i1 %4788, float -0.000000e+00, float %4846
  %4848 = fmul fast float %1465, 0x3FF7154760000000
  %4849 = fmul fast float %4848, %4847
  %4850 = fmul fast float %1466, 0x3FF7154760000000
  %4851 = fmul fast float %4850, %4847
  %4852 = fmul fast float %1467, 0x3FF7154760000000
  %4853 = fmul fast float %4852, %4847
  %4854 = call float @dx.op.unary.f32(i32 21, float %4849)  ; Exp(value)
  %4855 = call float @dx.op.unary.f32(i32 21, float %4851)  ; Exp(value)
  %4856 = call float @dx.op.unary.f32(i32 21, float %4853)  ; Exp(value)
  %4857 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4858 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4859 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4860 = fmul fast float %4784, %4857
  %4861 = fmul fast float %4785, %4858
  %4862 = fmul fast float %4786, %4859
  %4863 = fsub fast float %3490, %1664
  %4864 = fsub fast float %3491, %1663
  %4865 = fsub fast float %3492, %1662
  %4866 = call float @dx.op.dot3.f32(i32 55, float %4863, float %4864, float %4865, float %4863, float %4864, float %4865)  ; Dot3(ax,ay,az,bx,by,bz)
  %4867 = call float @dx.op.unary.f32(i32 25, float %4866)  ; Rsqrt(value)
  %4868 = fmul fast float %4867, %4863
  %4869 = fmul fast float %4867, %4864
  %4870 = fmul fast float %4867, %4865
  %4871 = call float @dx.op.dot3.f32(i32 55, float %3490, float %3491, float %3492, float %1671, float %1672, float %1673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4872 = call float @dx.op.dot3.f32(i32 55, float %1661, float %1660, float %1659, float %4868, float %4869, float %4870)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4874 = fmul fast float %4873, %4873
  %4875 = fmul fast float %4874, %3485
  %4876 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4877 = fmul fast float %4876, %4873
  %4878 = call float @dx.op.dot3.f32(i32 55, float %1671, float %1672, float %1673, float %4868, float %4869, float %4870)  ; Dot3(ax,ay,az,bx,by,bz)
  %4879 = fmul fast float %4878, %4878
  %4880 = call float @dx.op.unary.f32(i32 6, float %4871)  ; FAbs(value)
  %4881 = fsub fast float 1.000000e+00, %1697
  %4882 = fmul fast float %1679, %1679
  %4883 = fmul fast float %4882, %4881
  %4884 = fadd fast float %4883, %1697
  %4885 = bitcast float %4884 to i32
  %4886 = ashr i32 %4885, 1
  %4887 = add nsw i32 %4886, 532487669
  %4888 = bitcast i32 %4887 to float
  %4889 = fadd fast float %4888, %1679
  %4890 = fmul fast float %1697, %4879
  %4891 = fsub fast float 1.000000e+00, %4879
  %4892 = fadd fast float %4891, %4890
  %4893 = fmul fast float %4880, %4880
  %4894 = fmul fast float %4893, %4881
  %4895 = fadd fast float %4894, %1697
  %4896 = bitcast float %4895 to i32
  %4897 = ashr i32 %4896, 1
  %4898 = add nsw i32 %4897, 532487669
  %4899 = bitcast i32 %4898 to float
  %4900 = fadd fast float %4899, %4880
  %4901 = fmul fast float %4892, %4892
  %4902 = fmul fast float %4901, %4889
  %4903 = fmul fast float %4902, %4900
  %4904 = fdiv fast float 0x3FF0A00000000000, %4903
  %4905 = fmul fast float %4904, %1697
  %4906 = call float @dx.op.unary.f32(i32 6, float %4872)  ; FAbs(value)
  %4907 = fsub fast float 1.000000e+00, %4906
  %4908 = bitcast float %4907 to i32
  %4909 = sitofp i32 %4908 to float
  %4910 = fmul fast float %4909, 5.000000e+00
  %4911 = fadd fast float %4910, 0xC1EFBF8940000000
  %4912 = fptosi float %4911 to i32
  %4913 = bitcast i32 %4912 to float
  %4914 = fsub fast float 1.000000e+00, %1665
  %4915 = fsub fast float 1.000000e+00, %1666
  %4916 = fsub fast float 1.000000e+00, %1677
  %4917 = fmul fast float %4913, %4914
  %4918 = fmul fast float %4913, %4915
  %4919 = fmul fast float %4913, %4916
  %4920 = fadd fast float %4917, %1665
  %4921 = fadd fast float %4918, %1666
  %4922 = fadd fast float %4919, %1677
  %4923 = fmul fast float %4871, 9.843750e-01
  %4924 = fadd fast float %4923, 7.812500e-03
  %4925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %61, float %4924, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 2
  %4927 = extractvalue %dx.types.ResRet.f32 %4925, 3
  %4928 = fmul fast float %4926, %1665
  %4929 = fmul fast float %4926, %1666
  %4930 = fmul fast float %4926, %1677
  %4931 = fadd fast float %4928, %4927
  %4932 = fadd fast float %4929, %4927
  %4933 = fadd fast float %4930, %4927
  %4934 = call float @dx.op.binary.f32(i32 35, float %4932, float %4933)  ; FMax(a,b)
  %4935 = call float @dx.op.binary.f32(i32 35, float %4931, float %4934)  ; FMax(a,b)
  %4936 = fsub fast float 1.000000e+00, %4935
  %4937 = fmul fast float %4877, %4860
  %4938 = fmul fast float %4937, %4936
  %4939 = fmul fast float %4877, %4861
  %4940 = fmul fast float %4939, %4936
  %4941 = fmul fast float %4877, %4862
  %4942 = fmul fast float %4941, %4936
  %4943 = fmul fast float %4937, %4905
  %4944 = fmul fast float %4943, %4920
  %4945 = fmul fast float %4939, %4905
  %4946 = fmul fast float %4945, %4921
  %4947 = fmul fast float %4941, %4905
  %4948 = fmul fast float %4947, %4922
  %4949 = fadd fast float %4938, %3470
  %4950 = fmul fast float %4949, %1034
  %4951 = fadd fast float %4940, %3471
  %4952 = fmul fast float %4951, %1034
  %4953 = fadd fast float %4942, %3472
  %4954 = fmul fast float %4953, %1034
  %4955 = fadd fast float %4944, %3479
  %4956 = fmul fast float %4955, %1034
  %4957 = fadd fast float %4946, %3481
  %4958 = fmul fast float %4957, %1034
  %4959 = fadd fast float %4948, %3483
  %4960 = fmul fast float %4959, %1034
  br label %4961

; <label>:4961                                    ; preds = %4844, %4778, %3466
  %4962 = phi float [ %3480, %3466 ], [ %3480, %4778 ], [ %4956, %4844 ]
  %4963 = phi float [ %3482, %3466 ], [ %3482, %4778 ], [ %4958, %4844 ]
  %4964 = phi float [ %3484, %3466 ], [ %3484, %4778 ], [ %4960, %4844 ]
  %4965 = phi float [ %3476, %3466 ], [ %3476, %4778 ], [ %4950, %4844 ]
  %4966 = phi float [ %3477, %3466 ], [ %3477, %4778 ], [ %4952, %4844 ]
  %4967 = phi float [ %3478, %3466 ], [ %3478, %4778 ], [ %4954, %4844 ]
  %4968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.i32 %4968, 0
  %4970 = icmp eq i32 %4969, 0
  br i1 %4970, label %5564, label %4971

; <label>:4971                                    ; preds = %4961
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 2
  %4974 = extractvalue %dx.types.CBufRet.f32 %4972, 3
  %4975 = fmul fast float %4973, %97
  %4976 = fmul fast float %4974, %98
  %4977 = fptoui float %4975 to i32
  %4978 = fptoui float %4976 to i32
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4982 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %4983 = fadd fast float %85, -4.000000e+00
  %4984 = call float @dx.op.binary.f32(i32 35, float %4983, float 0.000000e+00)  ; FMax(a,b)
  %4985 = fadd fast float %4984, %4980
  %4986 = fmul fast float %4985, %4981
  %4987 = call float @dx.op.unary.f32(i32 23, float %4986)  ; Log(value)
  %4988 = fmul fast float %4987, %4982
  %4989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.f32 %4989, 2
  %4991 = fmul fast float %4988, %4990
  %4992 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.i32 %4993, 1
  %4995 = add i32 %4994, -1
  %4996 = uitofp i32 %4994 to float
  %4997 = fmul fast float %4996, %4992
  %4998 = fptoui float %4997 to i32
  %4999 = call i32 @dx.op.binary.i32(i32 40, i32 %4998, i32 %4995)  ; UMin(a,b)
  %5000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.i32 %5000, 2
  %5002 = extractvalue %dx.types.CBufRet.i32 %5000, 3
  %5003 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4978, i32 %5001, i32 %4977)  ; UMad(a,b,c)
  %5004 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4999, i32 %5002, i32 %5003)  ; UMad(a,b,c)
  %5005 = add nsw i32 %4969, -1
  %5006 = call i32 @dx.op.binary.i32(i32 37, i32 %5005, i32 0)  ; IMax(a,b)
  %5007 = call float @dx.op.binary.f32(i32 35, float %85, float 0.000000e+00)  ; FMax(a,b)
  %5008 = fptoui float %5007 to i32
  %5009 = lshr i32 %5008, 5
  %5010 = call i32 @dx.op.binary.i32(i32 40, i32 %5009, i32 8191)  ; UMin(a,b)
  %5011 = shl i32 %5010, 2
  %5012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5011, i32 undef)  ; BufferLoad(srv,index,wot)
  %5013 = extractvalue %dx.types.ResRet.i32 %5012, 0
  %5014 = lshr i32 %5013, 16
  %5015 = and i32 %5013, 65535
  %5016 = lshr i32 %5013, 21
  %5017 = lshr i32 %5015, 5
  %5018 = call i32 @dx.op.binary.i32(i32 40, i32 %5017, i32 %5006)  ; UMin(a,b)
  %5019 = icmp ugt i32 %5016, %5018
  br i1 %5019, label %5564, label %5020

; <label>:5020                                    ; preds = %4971
  br label %5021

; <label>:5021                                    ; preds = %5554, %5020
  %5022 = phi i32 [ %5561, %5554 ], [ %5016, %5020 ]
  %5023 = phi float [ %5555, %5554 ], [ %4962, %5020 ]
  %5024 = phi float [ %5556, %5554 ], [ %4963, %5020 ]
  %5025 = phi float [ %5557, %5554 ], [ %4964, %5020 ]
  %5026 = phi float [ %5558, %5554 ], [ %4965, %5020 ]
  %5027 = phi float [ %5559, %5554 ], [ %4966, %5020 ]
  %5028 = phi float [ %5560, %5554 ], [ %4967, %5020 ]
  %5029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.i32 %5029, 0
  %5031 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5004, i32 %5030, i32 %5022)  ; UMad(a,b,c)
  %5032 = shl i32 %5031, 2
  %5033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5032, i32 undef)  ; BufferLoad(srv,index,wot)
  %5034 = extractvalue %dx.types.ResRet.i32 %5033, 0
  %5035 = shl i32 %5022, 5
  %5036 = sub nsw i32 %5014, %5035
  %5037 = call i32 @dx.op.binary.i32(i32 37, i32 %5036, i32 0)  ; IMax(a,b)
  %5038 = call i32 @dx.op.binary.i32(i32 38, i32 %5037, i32 31)  ; IMin(a,b)
  %5039 = sub nsw i32 1, %5014
  %5040 = add nsw i32 %5039, %5015
  %5041 = call i32 @dx.op.binary.i32(i32 37, i32 %5040, i32 0)  ; IMax(a,b)
  %5042 = call i32 @dx.op.binary.i32(i32 38, i32 %5041, i32 32)  ; IMin(a,b)
  %5043 = and i32 %5042, 31
  %5044 = shl i32 -1, %5043
  %5045 = xor i32 %5044, -1
  %5046 = and i32 %5038, 31
  %5047 = shl i32 %5045, %5046
  %5048 = icmp eq i32 %5042, 32
  %5049 = select i1 %5048, i32 -1, i32 %5047
  %5050 = and i32 %5049, %5034
  %5051 = icmp eq i32 %5050, 0
  br i1 %5051, label %5554, label %5052

; <label>:5052                                    ; preds = %5021
  br label %5053

; <label>:5053                                    ; preds = %5187, %5052
  %5054 = phi i32 [ %5065, %5187 ], [ %5050, %5052 ]
  %5055 = phi float [ %5188, %5187 ], [ %5023, %5052 ]
  %5056 = phi float [ %5189, %5187 ], [ %5024, %5052 ]
  %5057 = phi float [ %5190, %5187 ], [ %5025, %5052 ]
  %5058 = phi float [ %5191, %5187 ], [ %5026, %5052 ]
  %5059 = phi float [ %5192, %5187 ], [ %5027, %5052 ]
  %5060 = phi float [ %5193, %5187 ], [ %5028, %5052 ]
  %5061 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5054)  ; FirstbitLo(value)
  %5062 = add i32 %5061, %5035
  %5063 = and i32 %5061, 31
  %5064 = shl i32 1, %5063
  %5065 = xor i32 %5064, %5054
  %5066 = mul i32 %5062, 112
  %5067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5066, i32 undef)  ; BufferLoad(srv,index,wot)
  %5068 = extractvalue %dx.types.ResRet.f32 %5067, 0
  %5069 = extractvalue %dx.types.ResRet.f32 %5067, 1
  %5070 = extractvalue %dx.types.ResRet.f32 %5067, 2
  %5071 = or i32 %5066, 12
  %5072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5071, i32 undef)  ; BufferLoad(srv,index,wot)
  %5073 = extractvalue %dx.types.ResRet.f32 %5072, 0
  %5074 = add i32 %5066, 16
  %5075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5074, i32 undef)  ; BufferLoad(srv,index,wot)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 0
  %5077 = extractvalue %dx.types.ResRet.f32 %5075, 1
  %5078 = extractvalue %dx.types.ResRet.f32 %5075, 2
  %5079 = add i32 %5066, 28
  %5080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5079, i32 undef)  ; BufferLoad(srv,index,wot)
  %5081 = extractvalue %dx.types.ResRet.i32 %5080, 0
  %5082 = add i32 %5066, 44
  %5083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5082, i32 undef)  ; BufferLoad(srv,index,wot)
  %5084 = extractvalue %dx.types.ResRet.f32 %5083, 0
  %5085 = add i32 %5066, 48
  %5086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5085, i32 undef)  ; BufferLoad(srv,index,wot)
  %5087 = extractvalue %dx.types.ResRet.f32 %5086, 0
  %5088 = extractvalue %dx.types.ResRet.f32 %5086, 1
  %5089 = extractvalue %dx.types.ResRet.f32 %5086, 2
  %5090 = extractvalue %dx.types.ResRet.f32 %5086, 3
  %5091 = add i32 %5066, 64
  %5092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5091, i32 undef)  ; BufferLoad(srv,index,wot)
  %5093 = extractvalue %dx.types.ResRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.ResRet.f32 %5092, 1
  %5095 = extractvalue %dx.types.ResRet.f32 %5092, 2
  %5096 = extractvalue %dx.types.ResRet.f32 %5092, 3
  %5097 = add i32 %5066, 80
  %5098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5097, i32 undef)  ; BufferLoad(srv,index,wot)
  %5099 = extractvalue %dx.types.ResRet.f32 %5098, 1
  %5100 = extractvalue %dx.types.ResRet.f32 %5098, 2
  %5101 = add i32 %5066, 92
  %5102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5101, i32 undef)  ; BufferLoad(srv,index,wot)
  %5103 = extractvalue %dx.types.ResRet.i32 %5102, 0
  %5104 = call float @dx.op.dot3.f32(i32 55, float %5068, float %5069, float %5070, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = select i1 %237, float %5099, float %5068
  %5106 = select i1 %237, float %5104, float %5069
  %5107 = select i1 %237, float %5100, float %5070
  %5108 = and i32 %5103, 65535
  %5109 = uitofp i32 %5108 to float
  %5110 = lshr i32 %5103, 16
  %5111 = uitofp i32 %5110 to float
  %5112 = and i32 %5081, 65535
  %5113 = and i32 %5081, 50331648
  %5114 = icmp eq i32 %5113, 33554432
  %5115 = fsub fast float %5087, %144
  %5116 = fsub fast float %5088, %145
  %5117 = fsub fast float %5089, %146
  %5118 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float %5115, float %5116, float %5117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5119 = call float @dx.op.unary.f32(i32 24, float %5118)  ; Sqrt(value)
  %5120 = fdiv fast float 1.000000e+00, %5119
  %5121 = fmul fast float %5120, %5115
  %5122 = fmul fast float %5120, %5116
  %5123 = fmul fast float %5120, %5117
  %5124 = fadd fast float %5119, %5073
  %5125 = fdiv fast float 1.000000e+00, %5124
  %5126 = fmul float %5084, %5125
  %5127 = fmul float %5126, %5126
  %5128 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  br i1 %5114, label %5129, label %5150

; <label>:5129                                    ; preds = %5053
  %5130 = fmul fast float %5095, %5076
  %5131 = fmul fast float %5095, %5077
  %5132 = fmul fast float %5095, %5078
  %5133 = fadd fast float %5115, %5130
  %5134 = fadd fast float %5116, %5131
  %5135 = fadd fast float %5117, %5132
  %5136 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5134, float %5135, float %5133, float %5134, float %5135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = call float @dx.op.unary.f32(i32 25, float %5136)  ; Rsqrt(value)
  %5138 = fmul fast float %5137, %5133
  %5139 = fmul fast float %5137, %5134
  %5140 = fmul fast float %5137, %5135
  %5141 = fsub fast float %144, %5087
  %5142 = fsub fast float %145, %5088
  %5143 = fsub fast float %146, %5089
  %5144 = fsub fast float -0.000000e+00, %5141
  %5145 = fsub fast float -0.000000e+00, %5142
  %5146 = fsub fast float -0.000000e+00, %5143
  %5147 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5145, float %5146, float %5076, float %5077, float %5078)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = fcmp fast ogt float %5147, 0.000000e+00
  %5149 = uitofp i1 %5148 to float
  br label %5150

; <label>:5150                                    ; preds = %5129, %5053
  %5151 = phi float [ %5149, %5129 ], [ 1.000000e+00, %5053 ]
  %5152 = phi float [ %5138, %5129 ], [ %5121, %5053 ]
  %5153 = phi float [ %5139, %5129 ], [ %5122, %5053 ]
  %5154 = phi float [ %5140, %5129 ], [ %5123, %5053 ]
  %5155 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5077, float %5078, float %5152, float %5153, float %5154)  ; Dot3(ax,ay,az,bx,by,bz)
  %5156 = fmul fast float %5155, %5155
  %5157 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5158 = fsub fast float 1.000000e+00, %5157
  %5159 = fmul fast float %5158, 5.000000e-01
  %5160 = fcmp fast ogt float %5155, 0.000000e+00
  %5161 = fsub fast float 1.000000e+00, %5159
  %5162 = select i1 %5160, float %5159, float %5161
  %5163 = fmul fast float %5162, %5111
  %5164 = fadd fast float %5163, %5109
  %5165 = fmul fast float %5164, 0x3EF0001000000000
  %5166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %61, float %5165, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5167 = extractvalue %dx.types.ResRet.f32 %5166, 0
  %5168 = fmul fast float %5155, %5093
  %5169 = fadd fast float %5168, %5094
  %5170 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5171 = select i1 %5114, float 1.000000e+00, float %5170
  %5172 = select i1 %5114, float %5170, float 1.000000e+00
  %5173 = fmul fast float %5119, %5090
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = fmul fast float %5174, %5096
  %5176 = call float @dx.op.unary.f32(i32 7, float %5175)  ; Saturate(value)
  %5177 = fmul fast float %5176, %5172
  %5178 = fmul fast float %5177, 2.000000e+00
  %5179 = fsub fast float 3.000000e+00, %5178
  %5180 = fmul fast float %5167, %5151
  %5181 = fmul fast float %5177, %5177
  %5182 = fmul fast float %5181, %5180
  %5183 = fmul fast float %5182, %5179
  %5184 = call float @dx.op.binary.f32(i32 36, float %5183, float %5183)  ; FMin(a,b)
  %5185 = call float @dx.op.binary.f32(i32 36, float %5183, float %5184)  ; FMin(a,b)
  %5186 = fcmp fast ogt float %5185, 0.000000e+00
  br i1 %5186, label %5195, label %5187, !dx.controlflow.hints !140

; <label>:5187                                    ; preds = %5408, %5341, %5150
  %5188 = phi float [ %5055, %5341 ], [ %5055, %5150 ], [ %5550, %5408 ]
  %5189 = phi float [ %5056, %5341 ], [ %5056, %5150 ], [ %5551, %5408 ]
  %5190 = phi float [ %5057, %5341 ], [ %5057, %5150 ], [ %5552, %5408 ]
  %5191 = phi float [ %5058, %5341 ], [ %5058, %5150 ], [ %5541, %5408 ]
  %5192 = phi float [ %5059, %5341 ], [ %5059, %5150 ], [ %5542, %5408 ]
  %5193 = phi float [ %5060, %5341 ], [ %5060, %5150 ], [ %5543, %5408 ]
  %5194 = icmp eq i32 %5054, %5064
  br i1 %5194, label %5553, label %5053

; <label>:5195                                    ; preds = %5150
  %5196 = icmp eq i32 %5112, 255
  br i1 %5196, label %5341, label %5197, !dx.controlflow.hints !141

; <label>:5197                                    ; preds = %5195
  %5198 = mul nuw nsw i32 %5112, 176
  %5199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5198, i32 undef)  ; BufferLoad(srv,index,wot)
  %5200 = extractvalue %dx.types.ResRet.f32 %5199, 0
  %5201 = extractvalue %dx.types.ResRet.f32 %5199, 1
  %5202 = extractvalue %dx.types.ResRet.f32 %5199, 2
  %5203 = extractvalue %dx.types.ResRet.f32 %5199, 3
  %5204 = add nuw nsw i32 %5198, 16
  %5205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5204, i32 undef)  ; BufferLoad(srv,index,wot)
  %5206 = extractvalue %dx.types.ResRet.f32 %5205, 0
  %5207 = extractvalue %dx.types.ResRet.f32 %5205, 1
  %5208 = add nuw nsw i32 %5198, 32
  %5209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5208, i32 undef)  ; BufferLoad(srv,index,wot)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = extractvalue %dx.types.ResRet.f32 %5209, 1
  %5212 = extractvalue %dx.types.ResRet.f32 %5209, 2
  %5213 = add nuw nsw i32 %5198, 48
  %5214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5213, i32 undef)  ; BufferLoad(srv,index,wot)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 0
  %5216 = extractvalue %dx.types.ResRet.f32 %5214, 1
  %5217 = extractvalue %dx.types.ResRet.f32 %5214, 2
  %5218 = extractvalue %dx.types.ResRet.f32 %5214, 3
  %5219 = add nuw nsw i32 %5198, 64
  %5220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5219, i32 undef)  ; BufferLoad(srv,index,wot)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.ResRet.f32 %5220, 1
  %5223 = extractvalue %dx.types.ResRet.f32 %5220, 2
  %5224 = extractvalue %dx.types.ResRet.f32 %5220, 3
  %5225 = add nuw nsw i32 %5198, 80
  %5226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5225, i32 undef)  ; BufferLoad(srv,index,wot)
  %5227 = extractvalue %dx.types.ResRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.ResRet.f32 %5226, 1
  %5229 = extractvalue %dx.types.ResRet.f32 %5226, 2
  %5230 = extractvalue %dx.types.ResRet.f32 %5226, 3
  %5231 = add nuw nsw i32 %5198, 96
  %5232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5231, i32 undef)  ; BufferLoad(srv,index,wot)
  %5233 = extractvalue %dx.types.ResRet.f32 %5232, 0
  %5234 = extractvalue %dx.types.ResRet.f32 %5232, 1
  %5235 = extractvalue %dx.types.ResRet.f32 %5232, 2
  %5236 = extractvalue %dx.types.ResRet.f32 %5232, 3
  %5237 = bitcast float %5207 to i32
  %5238 = fmul fast float %5212, %73
  %5239 = fmul fast float %5212, %74
  %5240 = fmul fast float %5212, %75
  %5241 = fadd fast float %5238, %144
  %5242 = fadd fast float %5239, %145
  %5243 = fadd fast float %5240, %146
  %5244 = fmul fast float %5241, %5215
  %5245 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5221, float %5244)  ; FMad(a,b,c)
  %5246 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5227, float %5245)  ; FMad(a,b,c)
  %5247 = fadd fast float %5246, %5233
  %5248 = fmul fast float %5241, %5216
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5222, float %5248)  ; FMad(a,b,c)
  %5250 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5228, float %5249)  ; FMad(a,b,c)
  %5251 = fadd fast float %5250, %5234
  %5252 = fmul fast float %5241, %5217
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5223, float %5252)  ; FMad(a,b,c)
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5229, float %5253)  ; FMad(a,b,c)
  %5255 = fadd fast float %5254, %5235
  %5256 = fmul fast float %5241, %5218
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5224, float %5256)  ; FMad(a,b,c)
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5230, float %5257)  ; FMad(a,b,c)
  %5259 = fadd fast float %5258, %5236
  %5260 = fdiv fast float %5247, %5259
  %5261 = fdiv fast float %5251, %5259
  %5262 = fdiv fast float %5255, %5259
  %5263 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5262)  ; FMax(a,b)
  %5264 = fmul fast float %248, 0x401921FB60000000
  %5265 = call float @dx.op.unary.f32(i32 13, float %5264)  ; Sin(value)
  %5266 = call float @dx.op.unary.f32(i32 12, float %5264)  ; Cos(value)
  %5267 = fmul fast float %5266, %5211
  %5268 = call float @dx.op.tertiary.f32(i32 46, float %5265, float %5211, float 0.000000e+00)  ; FMad(a,b,c)
  %5269 = fmul fast float %5211, %5265
  %5270 = fsub fast float -0.000000e+00, %5269
  %5271 = call float @dx.op.tertiary.f32(i32 46, float %5266, float %5211, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5272

; <label>:5272                                    ; preds = %5272, %5197
  %5273 = phi float [ 0.000000e+00, %5197 ], [ %5305, %5272 ]
  %5274 = phi float [ 0.000000e+00, %5197 ], [ %5307, %5272 ]
  %5275 = phi i32 [ 0, %5197 ], [ %5308, %5272 ]
  %5276 = mul i32 %5275, 2
  %5277 = add i32 0, %5276
  %5278 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5277
  %5279 = load float, float* %5278, align 4
  %5280 = mul i32 %5275, 2
  %5281 = add i32 1, %5280
  %5282 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5281
  %5283 = load float, float* %5282, align 4
  %5284 = fmul fast float %5267, %5279
  %5285 = call float @dx.op.tertiary.f32(i32 46, float %5283, float %5270, float %5284)  ; FMad(a,b,c)
  %5286 = fmul fast float %5279, %5268
  %5287 = call float @dx.op.tertiary.f32(i32 46, float %5283, float %5271, float %5286)  ; FMad(a,b,c)
  %5288 = fadd fast float %5285, %5260
  %5289 = fadd fast float %5287, %5261
  %5290 = fmul fast float %5288, %5206
  %5291 = fmul fast float %5289, %5206
  %5292 = call float @dx.op.binary.f32(i32 35, float %5290, float %5202)  ; FMax(a,b)
  %5293 = call float @dx.op.binary.f32(i32 35, float %5291, float %5202)  ; FMax(a,b)
  %5294 = call float @dx.op.binary.f32(i32 36, float %5292, float %5203)  ; FMin(a,b)
  %5295 = call float @dx.op.binary.f32(i32 36, float %5293, float %5203)  ; FMin(a,b)
  %5296 = fadd fast float %5294, %5200
  %5297 = fadd fast float %5295, %5201
  %5298 = uitofp i32 %5237 to float
  %5299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %62, float %5296, float %5297, float %5298, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5300 = extractvalue %dx.types.ResRet.f32 %5299, 0
  %5301 = fsub fast float %5300, %5263
  %5302 = fsub fast float %5301, %5210
  %5303 = fcmp fast ogt float %5302, 0.000000e+00
  %5304 = select i1 %5303, float 1.000000e+00, float 0.000000e+00
  %5305 = fadd fast float %5304, %5273
  %5306 = select i1 %5303, float %5302, float 0.000000e+00
  %5307 = fadd fast float %5306, %5274
  %5308 = add nuw nsw i32 %5275, 1
  %5309 = icmp eq i32 %5308, 8
  br i1 %5309, label %5310, label %5272

; <label>:5310                                    ; preds = %5272
  %5311 = fdiv fast float 1.000000e+00, %5305
  %5312 = fmul fast float %5311, %5307
  %5313 = fdiv fast float 1.000000e+00, %5263
  %5314 = fmul fast float %5312, %5313
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = call float @dx.op.binary.f32(i32 35, float %5315, float 0.000000e+00)  ; FMax(a,b)
  %5317 = fmul fast float %5305, 1.250000e-01
  %5318 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5319 = fmul fast float %5318, 2.000000e+00
  %5320 = fadd fast float %5319, -1.000000e+00
  %5321 = fcmp fast ogt float %5320, 0.000000e+00
  %5322 = fcmp fast olt float %5320, 0.000000e+00
  %5323 = zext i1 %5321 to i32
  %5324 = zext i1 %5322 to i32
  %5325 = sub nsw i32 %5323, %5324
  %5326 = sitofp i32 %5325 to float
  %5327 = fmul fast float %5326, %5320
  %5328 = fsub fast float 1.000000e+00, %5327
  %5329 = fmul fast float %5328, %5328
  %5330 = fmul fast float %5329, %5328
  %5331 = fsub fast float %5328, %5330
  %5332 = fmul fast float %5331, %5316
  %5333 = fsub fast float 1.000000e+00, %5330
  %5334 = fsub fast float %5333, %5332
  %5335 = fmul fast float %5326, 5.000000e-01
  %5336 = fmul fast float %5335, %5334
  %5337 = fsub fast float -5.000000e-01, %5336
  %5338 = fmul fast float %5337, %5171
  %5339 = fadd fast float %5338, 1.000000e+00
  %5340 = fmul fast float %5339, %5183
  br label %5341

; <label>:5341                                    ; preds = %5310, %5195
  %5342 = phi float [ %5340, %5310 ], [ %5183, %5195 ]
  %5343 = call float @dx.op.binary.f32(i32 36, float %5342, float %5342)  ; FMin(a,b)
  %5344 = call float @dx.op.binary.f32(i32 36, float %5342, float %5343)  ; FMin(a,b)
  %5345 = fcmp fast ogt float %5344, 0.000000e+00
  br i1 %5345, label %5346, label %5187, !dx.controlflow.hints !142

; <label>:5346                                    ; preds = %5341
  %5347 = fmul fast float %5342, %5105
  %5348 = fmul fast float %5342, %5106
  %5349 = fmul fast float %5342, %5107
  %5350 = fsub fast float %5089, %1464
  %5351 = fcmp fast ogt float %5350, 0.000000e+00
  %5352 = fsub fast float %146, %1464
  %5353 = fcmp fast ogt float %5352, 0.000000e+00
  %5354 = xor i1 %5353, %5351
  %5355 = fsub fast float %1464, %5089
  %5356 = fmul fast float %5355, 2.000000e+00
  %5357 = fadd fast float %5356, %5089
  %5358 = select i1 %5354, float %5089, float %5357
  %5359 = fsub fast float %5358, %146
  %5360 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5359, float %5115, float %5116, float %5359)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = call float @dx.op.unary.f32(i32 25, float %5360)  ; Rsqrt(value)
  %5362 = fmul fast float %5361, %5115
  %5363 = fmul fast float %5361, %5116
  %5364 = fmul fast float %5361, %5359
  %5365 = fsub fast float %1464, %146
  %5366 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5365)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5362, float %5363, float %5364)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = fdiv fast float 1.000000e+00, %5367
  %5369 = fmul fast float %5368, %5366
  %5370 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5352, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5371 = fcmp fast ogt float %5370, 0.000000e+00
  %5372 = fcmp fast olt float %5370, 0.000000e+00
  %5373 = zext i1 %5371 to i32
  %5374 = zext i1 %5372 to i32
  %5375 = sub nsw i32 %5373, %5374
  %5376 = sitofp i32 %5375 to float
  %5377 = fsub fast float %5358, %1464
  %5378 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5377, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = fcmp fast ogt float %5378, 0.000000e+00
  %5380 = fcmp fast olt float %5378, 0.000000e+00
  %5381 = zext i1 %5379 to i32
  %5382 = zext i1 %5380 to i32
  %5383 = sub nsw i32 %5381, %5382
  %5384 = sitofp i32 %5383 to float
  %5385 = fcmp fast une float %5376, %5384
  br i1 %5385, label %5386, label %5396

; <label>:5386                                    ; preds = %5346
  %5387 = fmul fast float %5369, %5364
  %5388 = fmul fast float %5369, %5363
  %5389 = fmul fast float %5369, %5362
  %5390 = fmul fast float %5389, %5389
  %5391 = fmul fast float %5388, %5388
  %5392 = fadd fast float %5390, %5391
  %5393 = fmul fast float %5387, %5387
  %5394 = fadd fast float %5392, %5393
  %5395 = call float @dx.op.unary.f32(i32 24, float %5394)  ; Sqrt(value)
  br label %5408

; <label>:5396                                    ; preds = %5346
  %5397 = icmp slt i32 %5375, 0
  br i1 %5397, label %5398, label %5408

; <label>:5398                                    ; preds = %5396
  %5399 = fsub fast float %144, %5087
  %5400 = fsub fast float %145, %5088
  %5401 = fsub fast float %146, %5358
  %5402 = fmul fast float %5399, %5399
  %5403 = fmul fast float %5400, %5400
  %5404 = fadd fast float %5402, %5403
  %5405 = fmul fast float %5401, %5401
  %5406 = fadd fast float %5404, %5405
  %5407 = call float @dx.op.unary.f32(i32 24, float %5406)  ; Sqrt(value)
  br label %5408

; <label>:5408                                    ; preds = %5398, %5396, %5386
  %5409 = phi float [ %5395, %5386 ], [ %5407, %5398 ], [ 0.000000e+00, %5396 ]
  %5410 = and i1 %5353, %5351
  %5411 = fsub fast float -0.000000e+00, %5409
  %5412 = select i1 %5410, float -0.000000e+00, float %5411
  %5413 = fmul fast float %1465, 0x3FF7154760000000
  %5414 = fmul fast float %5413, %5412
  %5415 = fmul fast float %1466, 0x3FF7154760000000
  %5416 = fmul fast float %5415, %5412
  %5417 = fmul fast float %1467, 0x3FF7154760000000
  %5418 = fmul fast float %5417, %5412
  %5419 = call float @dx.op.unary.f32(i32 21, float %5414)  ; Exp(value)
  %5420 = call float @dx.op.unary.f32(i32 21, float %5416)  ; Exp(value)
  %5421 = call float @dx.op.unary.f32(i32 21, float %5418)  ; Exp(value)
  %5422 = call float @dx.op.unary.f32(i32 7, float %5419)  ; Saturate(value)
  %5423 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5424 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5425 = fmul fast float %5347, %5422
  %5426 = fmul fast float %5348, %5423
  %5427 = fmul fast float %5349, %5424
  %5428 = fsub fast float %5121, %1664
  %5429 = fsub fast float %5122, %1663
  %5430 = fsub fast float %5123, %1662
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5428, float %5429, float %5430, float %5428, float %5429, float %5430)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = call float @dx.op.unary.f32(i32 25, float %5431)  ; Rsqrt(value)
  %5433 = fmul fast float %5432, %5428
  %5434 = fmul fast float %5432, %5429
  %5435 = fmul fast float %5432, %5430
  %5436 = call float @dx.op.dot3.f32(i32 55, float %5121, float %5122, float %5123, float %1671, float %1672, float %1673)  ; Dot3(ax,ay,az,bx,by,bz)
  %5437 = call float @dx.op.dot3.f32(i32 55, float %1661, float %1660, float %1659, float %5433, float %5434, float %5435)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5439 = fmul fast float %5438, %5128
  %5440 = fmul fast float %5438, %5438
  %5441 = fmul fast float %5440, %3485
  %5442 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5443 = fmul fast float %5439, %5442
  %5444 = bitcast float %5118 to i32
  %5445 = ashr i32 %5444, 1
  %5446 = sub nsw i32 1597463007, %5445
  %5447 = bitcast i32 %5446 to float
  %5448 = fmul fast float %5447, %5115
  %5449 = fmul fast float %5447, %5116
  %5450 = fmul fast float %5447, %5117
  %5451 = fsub fast float %5448, %1664
  %5452 = fsub fast float %5449, %1663
  %5453 = fsub fast float %5450, %1662
  %5454 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %5451, float %5452, float %5453)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = call float @dx.op.unary.f32(i32 25, float %5454)  ; Rsqrt(value)
  %5456 = fmul fast float %5451, %5455
  %5457 = fmul fast float %5452, %5455
  %5458 = fmul fast float %5453, %5455
  %5459 = call float @dx.op.dot3.f32(i32 55, float %1671, float %1672, float %1673, float %5456, float %5457, float %5458)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = fmul fast float %5459, %5459
  %5461 = call float @dx.op.unary.f32(i32 6, float %5436)  ; FAbs(value)
  %5462 = fsub fast float 1.000000e+00, %1697
  %5463 = fmul fast float %1679, %1679
  %5464 = fmul fast float %5463, %5462
  %5465 = fadd fast float %5464, %1697
  %5466 = bitcast float %5465 to i32
  %5467 = ashr i32 %5466, 1
  %5468 = add nsw i32 %5467, 532487669
  %5469 = bitcast i32 %5468 to float
  %5470 = fadd fast float %5469, %1679
  %5471 = fmul fast float %1697, %5460
  %5472 = fsub fast float 1.000000e+00, %5460
  %5473 = fadd fast float %5472, %5471
  %5474 = fmul fast float %5461, %5461
  %5475 = fmul fast float %5474, %5462
  %5476 = fadd fast float %5475, %1697
  %5477 = bitcast float %5476 to i32
  %5478 = ashr i32 %5477, 1
  %5479 = add nsw i32 %5478, 532487669
  %5480 = bitcast i32 %5479 to float
  %5481 = fadd fast float %5480, %5461
  %5482 = fmul fast float %5473, %5473
  %5483 = fmul fast float %5482, %5470
  %5484 = fmul fast float %5483, %5481
  %5485 = fdiv fast float 1.000000e+00, %5484
  %5486 = bitcast float %1697 to i32
  %5487 = sitofp i32 %5486 to float
  %5488 = fmul fast float %5487, 0x3FE7F73180000000
  %5489 = fadd fast float %5488, 0x41AFE27C40000000
  %5490 = fptosi float %5489 to i32
  %5491 = bitcast i32 %5490 to float
  %5492 = fmul fast float %5084, 0x3FD80E9D60000000
  %5493 = fmul fast float %5492, %5447
  %5494 = fadd fast float %5491, %5493
  %5495 = bitcast float %5494 to i32
  %5496 = sub nsw i32 2129859010, %5495
  %5497 = bitcast i32 %5496 to float
  %5498 = fmul fast float %1697, %5485
  %5499 = fmul fast float %5498, %5491
  %5500 = fmul fast float %5499, %5497
  %5501 = call float @dx.op.unary.f32(i32 6, float %5437)  ; FAbs(value)
  %5502 = fsub fast float 1.000000e+00, %5501
  %5503 = bitcast float %5502 to i32
  %5504 = sitofp i32 %5503 to float
  %5505 = fmul fast float %5504, 5.000000e+00
  %5506 = fadd fast float %5505, 0xC1EFBF8940000000
  %5507 = fptosi float %5506 to i32
  %5508 = bitcast i32 %5507 to float
  %5509 = fsub fast float 1.000000e+00, %1665
  %5510 = fsub fast float 1.000000e+00, %1666
  %5511 = fsub fast float 1.000000e+00, %1677
  %5512 = fmul fast float %5508, %5509
  %5513 = fmul fast float %5508, %5510
  %5514 = fmul fast float %5508, %5511
  %5515 = fadd fast float %5512, %1665
  %5516 = fadd fast float %5513, %1666
  %5517 = fadd fast float %5514, %1677
  %5518 = fmul fast float %5436, 9.843750e-01
  %5519 = fadd fast float %5518, 7.812500e-03
  %5520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %61, float %5519, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5521 = extractvalue %dx.types.ResRet.f32 %5520, 2
  %5522 = extractvalue %dx.types.ResRet.f32 %5520, 3
  %5523 = fmul fast float %5521, %1665
  %5524 = fmul fast float %5521, %1666
  %5525 = fmul fast float %5521, %1677
  %5526 = fadd fast float %5523, %5522
  %5527 = fadd fast float %5524, %5522
  %5528 = fadd fast float %5525, %5522
  %5529 = call float @dx.op.binary.f32(i32 35, float %5527, float %5528)  ; FMax(a,b)
  %5530 = call float @dx.op.binary.f32(i32 35, float %5526, float %5529)  ; FMax(a,b)
  %5531 = fsub fast float 1.000000e+00, %5530
  %5532 = fmul fast float %5425, %1034
  %5533 = fmul fast float %5532, %5443
  %5534 = fmul fast float %5533, %5531
  %5535 = fmul fast float %5426, %1034
  %5536 = fmul fast float %5535, %5443
  %5537 = fmul fast float %5536, %5531
  %5538 = fmul fast float %5427, %1034
  %5539 = fmul fast float %5538, %5443
  %5540 = fmul fast float %5539, %5531
  %5541 = fadd fast float %5534, %5058
  %5542 = fadd fast float %5537, %5059
  %5543 = fadd fast float %5540, %5060
  %5544 = fmul fast float %5533, %5515
  %5545 = fmul fast float %5544, %5500
  %5546 = fmul fast float %5536, %5516
  %5547 = fmul fast float %5546, %5500
  %5548 = fmul fast float %5539, %5517
  %5549 = fmul fast float %5548, %5500
  %5550 = fadd fast float %5545, %5055
  %5551 = fadd fast float %5547, %5056
  %5552 = fadd fast float %5549, %5057
  br label %5187

; <label>:5553                                    ; preds = %5187
  br label %5554

; <label>:5554                                    ; preds = %5553, %5021
  %5555 = phi float [ %5023, %5021 ], [ %5188, %5553 ]
  %5556 = phi float [ %5024, %5021 ], [ %5189, %5553 ]
  %5557 = phi float [ %5025, %5021 ], [ %5190, %5553 ]
  %5558 = phi float [ %5026, %5021 ], [ %5191, %5553 ]
  %5559 = phi float [ %5027, %5021 ], [ %5192, %5553 ]
  %5560 = phi float [ %5028, %5021 ], [ %5193, %5553 ]
  %5561 = add i32 %5022, 1
  %5562 = icmp ugt i32 %5561, %5018
  br i1 %5562, label %5563, label %5021

; <label>:5563                                    ; preds = %5554
  br label %5564

; <label>:5564                                    ; preds = %5563, %4971, %4961
  %5565 = phi float [ %4962, %4961 ], [ %4962, %4971 ], [ %5555, %5563 ]
  %5566 = phi float [ %4963, %4961 ], [ %4963, %4971 ], [ %5556, %5563 ]
  %5567 = phi float [ %4964, %4961 ], [ %4964, %4971 ], [ %5557, %5563 ]
  %5568 = phi float [ %4965, %4961 ], [ %4965, %4971 ], [ %5558, %5563 ]
  %5569 = phi float [ %4966, %4961 ], [ %4966, %4971 ], [ %5559, %5563 ]
  %5570 = phi float [ %4967, %4961 ], [ %4967, %4971 ], [ %5560, %5563 ]
  %5571 = fmul fast float %1034, %1034
  %5572 = fsub fast float 1.000000e+00, %5571
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5572, float %5572, float %5572, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = fsub fast float 1.000000e+00, %5573
  %5575 = fsub fast float 1.000000e+00, %1679
  %5576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5577 = extractvalue %dx.types.CBufRet.f32 %5576, 0
  %5578 = fmul fast float %5577, %5575
  %5579 = fmul fast float %1673, 2.000000e+00
  %5580 = fmul fast float %5579, %1680
  %5581 = fsub fast float %1662, %5580
  %5582 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5583 = fsub fast float 1.000000e+00, %5582
  %5584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5585 = extractvalue %dx.types.CBufRet.f32 %5584, 3
  %5586 = fmul fast float %5585, %5583
  %5587 = fsub fast float 1.000000e+00, %1037
  %5588 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5589 = fadd fast float %5570, %1039
  %5590 = fmul fast float %5589, %1037
  %5591 = fmul fast float %5586, %5588
  %5592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5593 = extractvalue %dx.types.CBufRet.f32 %5592, 3
  %5594 = fmul fast float %5568, %1668
  %5595 = fmul fast float %5569, %1669
  %5596 = fmul fast float %5570, %1670
  %5597 = fcmp fast ogt float %85, %195
  %5598 = and i1 %5597, %1470
  %5599 = or i1 %1476, %5598
  %5600 = icmp eq i32 %1469, 2
  %5601 = fcmp fast ole float %85, %195
  %5602 = and i1 %5601, %5600
  %5603 = or i1 %5602, %5599
  br i1 %5598, label %5604, label %5863

; <label>:5604                                    ; preds = %5564
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 2
  %5607 = extractvalue %dx.types.CBufRet.f32 %5605, 3
  %5608 = fmul fast float %5606, %97
  %5609 = fmul fast float %5607, %98
  %5610 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5611 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5612 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %61, float %5610, float %5611, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.ResRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.ResRet.f32 %5612, 2
  %5616 = extractvalue %dx.types.ResRet.f32 %5612, 3
  %5617 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %61, float %5610, float %5611, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5618 = extractvalue %dx.types.ResRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.ResRet.f32 %5617, 1
  %5620 = extractvalue %dx.types.ResRet.f32 %5617, 2
  %5621 = extractvalue %dx.types.ResRet.f32 %5617, 3
  %5622 = call float @dx.op.binary.f32(i32 35, float %5614, float %5615)  ; FMax(a,b)
  %5623 = call float @dx.op.binary.f32(i32 35, float %5613, float %5622)  ; FMax(a,b)
  %5624 = call float @dx.op.binary.f32(i32 35, float %5623, float %5616)  ; FMax(a,b)
  %5625 = call float @dx.op.binary.f32(i32 36, float %5619, float %5620)  ; FMin(a,b)
  %5626 = call float @dx.op.binary.f32(i32 36, float %5618, float %5625)  ; FMin(a,b)
  %5627 = call float @dx.op.binary.f32(i32 36, float %5626, float %5621)  ; FMin(a,b)
  %5628 = fmul fast float %5624, 2.550000e+02
  %5629 = fadd fast float %5628, 0x3F70101020000000
  %5630 = fptoui float %5629 to i32
  %5631 = fmul fast float %5627, 2.550000e+02
  %5632 = fadd fast float %5631, 0x3F70101020000000
  %5633 = fptoui float %5632 to i32
  %5634 = icmp ult i32 %5630, %5633
  br i1 %5634, label %5635, label %5803

; <label>:5635                                    ; preds = %5604
  %5636 = fcmp fast ogt float %84, 9.843750e-01
  %5637 = fadd fast float %85, -4.000000e+00
  %5638 = select i1 %5636, float -4.000000e+00, float %5637
  %5639 = call float @dx.op.binary.f32(i32 35, float %5638, float 0.000000e+00)  ; FMax(a,b)
  %5640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.f32 %5640, 0
  %5642 = fadd fast float %5641, %5639
  %5643 = extractvalue %dx.types.CBufRet.f32 %5640, 2
  %5644 = fmul fast float %5642, %5643
  %5645 = call float @dx.op.unary.f32(i32 23, float %5644)  ; Log(value)
  %5646 = extractvalue %dx.types.CBufRet.f32 %5640, 3
  %5647 = fmul fast float %5646, %5645
  %5648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5649 = extractvalue %dx.types.CBufRet.f32 %5648, 2
  %5650 = fmul fast float %5647, %5649
  %5651 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5652 = uitofp i32 %5630 to float
  %5653 = uitofp i32 %5633 to float
  %5654 = fadd fast float %5652, 5.000000e-01
  %5655 = fadd fast float %5653, 5.000000e-01
  %5656 = fmul fast float %5649, %5654
  %5657 = fmul fast float %5649, %5655
  %5658 = fadd fast float %5656, 0x3F0FFB4800000000
  %5659 = fadd fast float %5657, 0xBF0FFB4800000000
  %5660 = call float @dx.op.binary.f32(i32 35, float %5651, float %5658)  ; FMax(a,b)
  %5661 = call float @dx.op.binary.f32(i32 36, float %5660, float %5659)  ; FMin(a,b)
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 1
  %5664 = extractvalue %dx.types.CBufRet.f32 %5662, 2
  %5665 = extractvalue %dx.types.CBufRet.f32 %5662, 0
  %5666 = fmul fast float %5663, %5661
  %5667 = fadd fast float %5665, %5666
  %5668 = fadd fast float %5665, %5664
  %5669 = fsub fast float %5663, %5664
  %5670 = fadd fast float %5669, %5665
  %5671 = call float @dx.op.binary.f32(i32 35, float %5667, float %5668)  ; FMax(a,b)
  %5672 = call float @dx.op.binary.f32(i32 36, float %5671, float %5670)  ; FMin(a,b)
  %5673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %59, float %5610, float %5611, float %5672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5674 = extractvalue %dx.types.ResRet.f32 %5673, 0
  %5675 = extractvalue %dx.types.ResRet.f32 %5673, 1
  %5676 = extractvalue %dx.types.ResRet.f32 %5673, 2
  %5677 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.i32 %5677, 0
  %5679 = extractvalue %dx.types.CBufRet.i32 %5677, 1
  %5680 = uitofp i32 %5678 to float
  %5681 = uitofp i32 %5679 to float
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.CBufRet.f32 %5682, 1
  %5685 = fmul fast float %5680, %5610
  %5686 = fmul fast float %5681, %5611
  %5687 = fadd fast float %5685, -5.000000e-01
  %5688 = fadd fast float %5686, -5.000000e-01
  %5689 = call float @dx.op.unary.f32(i32 22, float %5687)  ; Frc(value)
  %5690 = call float @dx.op.unary.f32(i32 22, float %5688)  ; Frc(value)
  %5691 = fmul fast float %5689, %5689
  %5692 = fmul fast float %5691, %5689
  %5693 = fsub fast float 3.000000e+00, %5689
  %5694 = fmul fast float %5691, %5693
  %5695 = fmul fast float %5689, 3.000000e+00
  %5696 = fmul fast float %5692, 3.000000e+00
  %5697 = fmul fast float %5691, 6.000000e+00
  %5698 = fsub fast float %5696, %5697
  %5699 = fadd fast float %5698, 4.000000e+00
  %5700 = fmul fast float %5699, 0x3FC5555560000000
  %5701 = fmul fast float %5692, -3.000000e+00
  %5702 = fadd fast float %5691, %5689
  %5703 = fmul fast float %5702, 3.000000e+00
  %5704 = fadd fast float %5701, 1.000000e+00
  %5705 = fadd fast float %5704, %5703
  %5706 = fmul fast float %5692, 0x3FC5555560000000
  %5707 = fmul fast float %5690, %5690
  %5708 = fmul fast float %5707, %5690
  %5709 = fsub fast float 3.000000e+00, %5690
  %5710 = fmul fast float %5707, %5709
  %5711 = fmul fast float %5690, 3.000000e+00
  %5712 = fmul fast float %5708, 3.000000e+00
  %5713 = fmul fast float %5707, 6.000000e+00
  %5714 = fsub fast float %5712, %5713
  %5715 = fadd fast float %5714, 4.000000e+00
  %5716 = fmul fast float %5715, 0x3FC5555560000000
  %5717 = fmul fast float %5708, -3.000000e+00
  %5718 = fadd fast float %5707, %5690
  %5719 = fmul fast float %5718, 3.000000e+00
  %5720 = fadd fast float %5717, 1.000000e+00
  %5721 = fadd fast float %5720, %5719
  %5722 = fmul fast float %5708, 0x3FC5555560000000
  %5723 = fadd fast float %5689, 1.000000e+00
  %5724 = fsub fast float 1.000000e+00, %5695
  %5725 = fadd fast float %5724, %5694
  %5726 = fadd fast float %5725, %5699
  %5727 = fmul fast float %5726, 0x3FC5555560000000
  %5728 = fdiv fast float %5700, %5727
  %5729 = fsub fast float %5723, %5728
  %5730 = fsub fast float 1.000000e+00, %5689
  %5731 = fadd fast float %5705, %5692
  %5732 = fmul fast float %5731, 0x3FC5555560000000
  %5733 = fdiv fast float %5706, %5732
  %5734 = fadd fast float %5730, %5733
  %5735 = fadd fast float %5690, 1.000000e+00
  %5736 = fsub fast float 1.000000e+00, %5711
  %5737 = fadd fast float %5736, %5710
  %5738 = fadd fast float %5737, %5715
  %5739 = fmul fast float %5738, 0x3FC5555560000000
  %5740 = fdiv fast float %5716, %5739
  %5741 = fsub fast float %5735, %5740
  %5742 = fsub fast float 1.000000e+00, %5690
  %5743 = fadd fast float %5721, %5708
  %5744 = fmul fast float %5743, 0x3FC5555560000000
  %5745 = fdiv fast float %5722, %5744
  %5746 = fadd fast float %5745, %5742
  %5747 = fmul fast float %5729, %5683
  %5748 = fsub fast float %5610, %5747
  %5749 = fmul fast float %5734, %5683
  %5750 = fadd fast float %5749, %5610
  %5751 = fmul fast float %5746, %5684
  %5752 = fadd fast float %5751, %5611
  %5753 = fmul fast float %5741, %5684
  %5754 = fsub fast float %5611, %5753
  %5755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %59, float %5748, float %5754, float %5672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5756 = extractvalue %dx.types.ResRet.f32 %5755, 0
  %5757 = extractvalue %dx.types.ResRet.f32 %5755, 1
  %5758 = extractvalue %dx.types.ResRet.f32 %5755, 2
  %5759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %59, float %5750, float %5754, float %5672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5760 = extractvalue %dx.types.ResRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.ResRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.ResRet.f32 %5759, 2
  %5763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %59, float %5748, float %5752, float %5672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5764 = extractvalue %dx.types.ResRet.f32 %5763, 0
  %5765 = extractvalue %dx.types.ResRet.f32 %5763, 1
  %5766 = extractvalue %dx.types.ResRet.f32 %5763, 2
  %5767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %59, float %5750, float %5752, float %5672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5768 = extractvalue %dx.types.ResRet.f32 %5767, 0
  %5769 = extractvalue %dx.types.ResRet.f32 %5767, 1
  %5770 = extractvalue %dx.types.ResRet.f32 %5767, 2
  %5771 = fsub fast float %5764, %5756
  %5772 = fsub fast float %5765, %5757
  %5773 = fsub fast float %5766, %5758
  %5774 = fmul fast float %5771, %5744
  %5775 = fmul fast float %5772, %5744
  %5776 = fmul fast float %5773, %5744
  %5777 = fadd fast float %5774, %5756
  %5778 = fadd fast float %5775, %5757
  %5779 = fadd fast float %5776, %5758
  %5780 = fsub fast float %5768, %5760
  %5781 = fsub fast float %5769, %5761
  %5782 = fsub fast float %5770, %5762
  %5783 = fmul fast float %5780, %5744
  %5784 = fmul fast float %5781, %5744
  %5785 = fmul fast float %5782, %5744
  %5786 = fsub fast float %5760, %5777
  %5787 = fadd fast float %5786, %5783
  %5788 = fsub fast float %5761, %5778
  %5789 = fadd fast float %5788, %5784
  %5790 = fsub fast float %5762, %5779
  %5791 = fadd fast float %5790, %5785
  %5792 = fmul fast float %5787, %5732
  %5793 = fmul fast float %5789, %5732
  %5794 = fmul fast float %5791, %5732
  %5795 = fadd fast float %5792, %5777
  %5796 = fadd fast float %5793, %5778
  %5797 = fadd fast float %5794, %5779
  %5798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.f32 %5798, 1
  %5800 = fmul fast float %5795, %5799
  %5801 = fmul fast float %5796, %5799
  %5802 = fmul fast float %5797, %5799
  br label %5803

; <label>:5803                                    ; preds = %5635, %5604
  %5804 = phi float [ %5674, %5635 ], [ 1.000000e+00, %5604 ]
  %5805 = phi float [ %5675, %5635 ], [ 1.000000e+00, %5604 ]
  %5806 = phi float [ %5676, %5635 ], [ 1.000000e+00, %5604 ]
  %5807 = phi float [ %5800, %5635 ], [ 0.000000e+00, %5604 ]
  %5808 = phi float [ %5801, %5635 ], [ 0.000000e+00, %5604 ]
  %5809 = phi float [ %5802, %5635 ], [ 0.000000e+00, %5604 ]
  %5810 = fmul fast float %5807, %5574
  %5811 = fmul fast float %5808, %5574
  %5812 = fmul fast float %5809, %5574
  %5813 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5814 = call float @dx.op.dot3.f32(i32 55, float %5810, float %5811, float %5812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5815 = select i1 %237, float %5813, float %5804
  %5816 = select i1 %237, float %5813, float %5805
  %5817 = select i1 %237, float 1.000000e+00, float %5806
  %5818 = select i1 %237, float %5814, float %5810
  %5819 = select i1 %237, float 0.000000e+00, float %5811
  %5820 = select i1 %237, float 0.000000e+00, float %5812
  %5821 = fmul fast float %5815, %5594
  %5822 = fmul fast float %5816, %5595
  %5823 = fmul fast float %5817, %5596
  %5824 = fadd fast float %5821, %5818
  %5825 = fadd fast float %5822, %5819
  %5826 = fadd fast float %5820, %5823
  %5827 = fmul fast float %5815, %5565
  %5828 = fmul fast float %5816, %5566
  %5829 = fmul fast float %5817, %5567
  %5830 = fmul fast float %97, 2.000000e+00
  %5831 = fmul fast float %5830, %5606
  %5832 = fmul fast float %98, 2.000000e+00
  %5833 = fmul fast float %5832, %5607
  %5834 = fsub fast float 1.000000e+00, %5831
  %5835 = fsub fast float 1.000000e+00, %5833
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5839 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5840 = fmul fast float %5834, %5837
  %5841 = fmul fast float %5834, %5838
  %5842 = fmul fast float %5834, %5839
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.CBufRet.f32 %5843, 1
  %5846 = extractvalue %dx.types.CBufRet.f32 %5843, 2
  %5847 = fmul fast float %5835, %5844
  %5848 = fmul fast float %5835, %5845
  %5849 = fmul fast float %5835, %5846
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 0
  %5852 = extractvalue %dx.types.CBufRet.f32 %5850, 1
  %5853 = extractvalue %dx.types.CBufRet.f32 %5850, 2
  %5854 = fadd fast float %5847, %5851
  %5855 = fadd fast float %5854, %5840
  %5856 = fadd fast float %5848, %5852
  %5857 = fadd fast float %5856, %5841
  %5858 = fadd fast float %5849, %5853
  %5859 = fadd fast float %5858, %5842
  %5860 = fmul fast float %5855, %195
  %5861 = fmul fast float %5857, %195
  %5862 = fmul fast float %5859, %195
  br label %5863

; <label>:5863                                    ; preds = %5803, %5564
  %5864 = phi float [ %5860, %5803 ], [ %144, %5564 ]
  %5865 = phi float [ %5861, %5803 ], [ %145, %5564 ]
  %5866 = phi float [ %5862, %5803 ], [ %146, %5564 ]
  %5867 = phi float [ %195, %5803 ], [ %85, %5564 ]
  %5868 = phi float [ %5824, %5803 ], [ %5594, %5564 ]
  %5869 = phi float [ %5825, %5803 ], [ %5595, %5564 ]
  %5870 = phi float [ %5826, %5803 ], [ %5596, %5564 ]
  %5871 = phi float [ %5827, %5803 ], [ %5565, %5564 ]
  %5872 = phi float [ %5828, %5803 ], [ %5566, %5564 ]
  %5873 = phi float [ %5829, %5803 ], [ %5567, %5564 ]
  %5874 = phi float [ %5804, %5803 ], [ 1.000000e+00, %5564 ]
  br i1 %5603, label %7029, label %5875

; <label>:5875                                    ; preds = %5863
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5878 = extractvalue %dx.types.CBufRet.f32 %5876, 1
  %5879 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5880 = extractvalue %dx.types.CBufRet.f32 %5876, 3
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5883 = extractvalue %dx.types.CBufRet.f32 %5881, 1
  %5884 = extractvalue %dx.types.CBufRet.f32 %5881, 2
  %5885 = extractvalue %dx.types.CBufRet.f32 %5881, 3
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.CBufRet.f32 %5886, 1
  %5889 = extractvalue %dx.types.CBufRet.f32 %5886, 2
  %5890 = extractvalue %dx.types.CBufRet.f32 %5886, 3
  %5891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.f32 %5891, 0
  %5893 = extractvalue %dx.types.CBufRet.f32 %5891, 1
  %5894 = extractvalue %dx.types.CBufRet.f32 %5891, 2
  %5895 = extractvalue %dx.types.CBufRet.f32 %5891, 3
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 3
  %5898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5899 = extractvalue %dx.types.CBufRet.f32 %5898, 3
  %5900 = extractvalue %dx.types.CBufRet.f32 %5898, 0
  %5901 = extractvalue %dx.types.CBufRet.f32 %5898, 1
  %5902 = extractvalue %dx.types.CBufRet.f32 %5898, 2
  %5903 = fcmp fast olt float %5902, -5.000000e-01
  %5904 = call float @dx.op.dot3.f32(i32 55, float %5864, float %5865, float %5866, float %5864, float %5865, float %5866)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = call float @dx.op.unary.f32(i32 25, float %5904)  ; Rsqrt(value)
  %5906 = fmul fast float %5905, %5904
  %5907 = fmul fast float %5905, %5864
  %5908 = fmul fast float %5905, %5865
  %5909 = fmul fast float %5905, %5866
  %5910 = fadd fast float %5906, %5880
  %5911 = call float @dx.op.dot3.f32(i32 55, float %5907, float %5908, float %5909, float %5877, float %5878, float %5879)  ; Dot3(ax,ay,az,bx,by,bz)
  %5912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.i32 %5912, 1
  %5914 = and i32 %5913, 1
  %5915 = icmp ne i32 %5914, 0
  %5916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5917 = extractvalue %dx.types.CBufRet.f32 %5916, 2
  %5918 = fcmp fast ogt float %5917, 0.000000e+00
  %5919 = and i1 %5915, %5918
  br i1 %5919, label %5920, label %6326, !dx.controlflow.hints !143

; <label>:5920                                    ; preds = %5875
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 3
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 2
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 2
  %5927 = fsub fast float %5924, %5926
  %5928 = and i32 %5913, 2
  %5929 = extractvalue %dx.types.CBufRet.i32 %5912, 0
  %5930 = call i32 @dx.op.binary.i32(i32 40, i32 %5929, i32 3)  ; UMin(a,b)
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5934 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5935 = extractvalue %dx.types.CBufRet.f32 %5925, 1
  %5936 = fsub fast float %5932, %5934
  %5937 = fsub fast float %5933, %5935
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = fcmp fast ogt float %5939, 0.000000e+00
  %5941 = fsub fast float -0.000000e+00, %5936
  %5942 = fsub fast float -0.000000e+00, %5937
  %5943 = call float @dx.op.dot2.f32(i32 54, float %5907, float %5908, float %5907, float %5908)  ; Dot2(ax,ay,bx,by)
  %5944 = call float @dx.op.dot2.f32(i32 54, float %5907, float %5908, float %5941, float %5942)  ; Dot2(ax,ay,bx,by)
  %5945 = fmul fast float %5944, 2.000000e+00
  %5946 = call float @dx.op.dot2.f32(i32 54, float %5941, float %5942, float %5941, float %5942)  ; Dot2(ax,ay,bx,by)
  %5947 = fmul fast float %5939, %5939
  %5948 = fsub fast float %5946, %5947
  %5949 = fmul fast float %5945, %5945
  %5950 = fmul fast float %5943, 4.000000e+00
  %5951 = fmul fast float %5950, %5948
  %5952 = fsub fast float %5949, %5951
  %5953 = fcmp fast ogt float %5952, 0.000000e+00
  br i1 %5953, label %5954, label %5969

; <label>:5954                                    ; preds = %5920
  %5955 = fcmp fast ogt float %5945, 0.000000e+00
  %5956 = call float @dx.op.unary.f32(i32 24, float %5952)  ; Sqrt(value)
  %5957 = fsub fast float -0.000000e+00, %5956
  %5958 = select i1 %5955, float %5956, float %5957
  %5959 = fadd fast float %5958, %5945
  %5960 = fmul float %5959, -5.000000e-01
  %5961 = fdiv fast float %5960, %5943
  %5962 = call float @dx.op.binary.f32(i32 35, float %5961, float 0.000000e+00)  ; FMax(a,b)
  %5963 = call float @dx.op.binary.f32(i32 36, float %5906, float %5962)  ; FMin(a,b)
  %5964 = fdiv fast float %5948, %5960
  %5965 = call float @dx.op.binary.f32(i32 35, float %5964, float 0.000000e+00)  ; FMax(a,b)
  %5966 = call float @dx.op.binary.f32(i32 36, float %5906, float %5965)  ; FMin(a,b)
  %5967 = call float @dx.op.binary.f32(i32 36, float %5963, float %5966)  ; FMin(a,b)
  %5968 = call float @dx.op.binary.f32(i32 35, float %5963, float %5966)  ; FMax(a,b)
  br label %5969

; <label>:5969                                    ; preds = %5954, %5920
  %5970 = phi float [ %5968, %5954 ], [ -1.000000e+00, %5920 ]
  %5971 = phi float [ %5967, %5954 ], [ -1.000000e+00, %5920 ]
  %5972 = phi i1 [ true, %5954 ], [ false, %5920 ]
  %5973 = and i1 %5940, %5972
  br i1 %5973, label %5974, label %5976

; <label>:5974                                    ; preds = %5969
  %5975 = fcmp fast oeq float %5971, %5970
  br i1 %5975, label %6279, label %5977

; <label>:5976                                    ; preds = %5969
  br i1 %5940, label %6279, label %5977

; <label>:5977                                    ; preds = %5976, %5974
  %5978 = phi float [ %5906, %5976 ], [ %5970, %5974 ]
  %5979 = phi float [ 0.000000e+00, %5976 ], [ %5971, %5974 ]
  %5980 = icmp ne i32 %5928, 0
  %5981 = fmul fast float %5978, %5909
  %5982 = fadd fast float %5981, %5922
  %5983 = fmul fast float %5982, %5978
  %5984 = select i1 %5980, float 0.000000e+00, float %5983
  %5985 = fcmp fast oeq float %5909, 0.000000e+00
  %5986 = fdiv fast float %5927, %5909
  %5987 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5986)  ; FMax(a,b)
  %5988 = select i1 %5985, float %5978, float %5987
  %5989 = call float @dx.op.binary.f32(i32 36, float %5978, float %5988)  ; FMin(a,b)
  %5990 = fcmp fast ogt float %5909, 0.000000e+00
  %5991 = fcmp fast olt float %5927, 0.000000e+00
  br i1 %5990, label %5992, label %6049

; <label>:5992                                    ; preds = %5977
  %5993 = icmp eq i32 %5928, 0
  br i1 %5991, label %5994, label %6038

; <label>:5994                                    ; preds = %5992
  %5995 = select i1 %5993, float %5978, float 0.000000e+00
  %5996 = fsub fast float -0.000000e+00, %5995
  %5997 = call float @dx.op.unary.f32(i32 6, float %5996)  ; FAbs(value)
  %5998 = fmul fast float %5995, %5909
  %5999 = fadd fast float %5998, %5922
  %6000 = fmul fast float %5997, %5999
  %6001 = fsub fast float %5984, %6000
  %6002 = fsub fast float %5978, %5997
  %6003 = select i1 %5993, float %6002, float 0.000000e+00
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.CBufRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.CBufRet.f32 %6004, 2
  %6008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.f32 %6008, 0
  %6010 = extractvalue %dx.types.CBufRet.f32 %6008, 1
  %6011 = extractvalue %dx.types.CBufRet.f32 %6008, 2
  %6012 = extractvalue %dx.types.CBufRet.f32 %6008, 3
  %6013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.f32 %6013, 3
  %6015 = call float @dx.op.binary.f32(i32 36, float %6001, float %6014)  ; FMin(a,b)
  %6016 = fmul fast float %6012, %6003
  %6017 = call float @dx.op.unary.f32(i32 7, float %6016)  ; Saturate(value)
  %6018 = fsub fast float %6009, %6005
  %6019 = fsub fast float %6010, %6006
  %6020 = fsub fast float %6011, %6007
  %6021 = fmul fast float %6017, %6018
  %6022 = fmul fast float %6017, %6019
  %6023 = fmul fast float %6017, %6020
  %6024 = fadd fast float %6021, %6005
  %6025 = fadd fast float %6022, %6006
  %6026 = fadd fast float %6023, %6007
  %6027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.f32 %6027, 0
  %6029 = extractvalue %dx.types.CBufRet.f32 %6027, 1
  %6030 = fadd fast float %6029, %6028
  %6031 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  %6032 = extractvalue %dx.types.CBufRet.f32 %6027, 2
  %6033 = extractvalue %dx.types.CBufRet.f32 %6027, 3
  %6034 = fadd fast float %6033, %6032
  %6035 = call float @dx.op.unary.f32(i32 7, float %6034)  ; Saturate(value)
  %6036 = fmul fast float %6031, %6015
  %6037 = fmul fast float %6036, %6035
  br label %6279

; <label>:6038                                    ; preds = %5992
  br i1 %5993, label %6039, label %6060

; <label>:6039                                    ; preds = %6038
  %6040 = call float @dx.op.binary.f32(i32 36, float %5989, float %5979)  ; FMin(a,b)
  %6041 = fsub fast float %5989, %6040
  %6042 = fsub fast float %6041, %5978
  %6043 = call float @dx.op.unary.f32(i32 6, float %6042)  ; FAbs(value)
  %6044 = fadd fast float %6041, %5978
  %6045 = fmul fast float %6044, %5909
  %6046 = fadd fast float %6045, %5922
  %6047 = fmul fast float %6046, %6043
  %6048 = fsub fast float %5984, %6047
  br label %6060

; <label>:6049                                    ; preds = %5977
  br i1 %5991, label %6050, label %6060

; <label>:6050                                    ; preds = %6049
  %6051 = call float @dx.op.binary.f32(i32 35, float %5979, float %5989)  ; FMax(a,b)
  %6052 = icmp eq i32 %5928, 0
  %6053 = select i1 %6052, float %5989, float 0.000000e+00
  %6054 = fsub fast float -0.000000e+00, %6053
  %6055 = call float @dx.op.unary.f32(i32 6, float %6054)  ; FAbs(value)
  %6056 = fmul fast float %6053, %5909
  %6057 = fadd fast float %6056, %5922
  %6058 = fmul fast float %6055, %6057
  %6059 = fsub fast float %5984, %6058
  br label %6060

; <label>:6060                                    ; preds = %6050, %6049, %6039, %6038
  %6061 = phi float [ %5979, %6038 ], [ %5979, %6039 ], [ %6051, %6050 ], [ %5979, %6049 ]
  %6062 = phi float [ 0.000000e+00, %6038 ], [ %6043, %6039 ], [ %6055, %6050 ], [ 0.000000e+00, %6049 ]
  %6063 = phi float [ %5984, %6038 ], [ %6048, %6039 ], [ %6059, %6050 ], [ %5984, %6049 ]
  %6064 = phi float [ %5989, %6038 ], [ %5989, %6039 ], [ %5978, %6050 ], [ %5978, %6049 ]
  %6065 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %6065, align 4, !tbaa !130, !noalias !144
  %6066 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %6066, align 4, !tbaa !130, !noalias !144
  %6067 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %6067, align 4, !tbaa !130, !noalias !144
  %6068 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %6068, align 4, !tbaa !130, !noalias !144
  %6069 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %6069, align 4, !tbaa !130, !noalias !144
  %6070 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %6070, align 4, !tbaa !130, !noalias !144
  %6071 = icmp sgt i32 %5930, 0
  br i1 %6071, label %6072, label %6133

; <label>:6072                                    ; preds = %6060
  br label %6073

; <label>:6073                                    ; preds = %6122, %6072
  %6074 = phi i32 [ %6123, %6122 ], [ 0, %6072 ]
  %6075 = phi i32 [ %6124, %6122 ], [ 0, %6072 ]
  %6076 = add nuw i32 %6075, 171
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 %6076)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.CBufRet.f32 %6077, 1
  %6080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.f32 %6080, 0
  %6082 = extractvalue %dx.types.CBufRet.f32 %6080, 1
  %6083 = fsub fast float %6078, %6081
  %6084 = fsub fast float %6079, %6082
  %6085 = extractvalue %dx.types.CBufRet.f32 %6077, 2
  %6086 = fsub fast float -0.000000e+00, %6083
  %6087 = fsub fast float -0.000000e+00, %6084
  %6088 = call float @dx.op.dot2.f32(i32 54, float %5907, float %5908, float %6086, float %6087)  ; Dot2(ax,ay,bx,by)
  %6089 = fmul fast float %6088, 2.000000e+00
  %6090 = call float @dx.op.dot2.f32(i32 54, float %6086, float %6087, float %6086, float %6087)  ; Dot2(ax,ay,bx,by)
  %6091 = fmul fast float %6085, %6085
  %6092 = fsub fast float %6090, %6091
  %6093 = fmul fast float %6089, %6089
  %6094 = fmul fast float %5950, %6092
  %6095 = fsub fast float %6093, %6094
  %6096 = fcmp fast ogt float %6095, 0.000000e+00
  br i1 %6096, label %6097, label %6112

; <label>:6097                                    ; preds = %6073
  %6098 = fcmp fast ogt float %6089, 0.000000e+00
  %6099 = call float @dx.op.unary.f32(i32 24, float %6095)  ; Sqrt(value)
  %6100 = fsub fast float -0.000000e+00, %6099
  %6101 = select i1 %6098, float %6099, float %6100
  %6102 = fadd fast float %6101, %6089
  %6103 = fmul float %6102, -5.000000e-01
  %6104 = fdiv fast float %6103, %5943
  %6105 = call float @dx.op.binary.f32(i32 35, float %6104, float 0.000000e+00)  ; FMax(a,b)
  %6106 = call float @dx.op.binary.f32(i32 36, float %5978, float %6105)  ; FMin(a,b)
  %6107 = fdiv fast float %6092, %6103
  %6108 = call float @dx.op.binary.f32(i32 35, float %6107, float 0.000000e+00)  ; FMax(a,b)
  %6109 = call float @dx.op.binary.f32(i32 36, float %5978, float %6108)  ; FMin(a,b)
  %6110 = call float @dx.op.binary.f32(i32 36, float %6106, float %6109)  ; FMin(a,b)
  %6111 = call float @dx.op.binary.f32(i32 35, float %6106, float %6109)  ; FMax(a,b)
  br label %6112

; <label>:6112                                    ; preds = %6097, %6073
  %6113 = phi float [ %6111, %6097 ], [ -1.000000e+00, %6073 ]
  %6114 = phi float [ %6110, %6097 ], [ -1.000000e+00, %6073 ]
  %6115 = phi i1 [ true, %6097 ], [ false, %6073 ]
  br i1 %6115, label %6116, label %6122

; <label>:6116                                    ; preds = %6112
  %6117 = call float @dx.op.binary.f32(i32 35, float %6061, float %6114)  ; FMax(a,b)
  %6118 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %6075
  store float %6117, float* %6118, align 4, !tbaa !130, !noalias !144
  %6119 = call float @dx.op.binary.f32(i32 35, float %6061, float %6113)  ; FMax(a,b)
  %6120 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %6075
  store float %6119, float* %6120, align 4, !tbaa !130, !noalias !144
  %6121 = add nsw i32 %6074, 1
  br label %6122

; <label>:6122                                    ; preds = %6116, %6112
  %6123 = phi i32 [ %6121, %6116 ], [ %6074, %6112 ]
  %6124 = add nuw nsw i32 %6075, 1
  %6125 = icmp eq i32 %6124, %5930
  br i1 %6125, label %6126, label %6073

; <label>:6126                                    ; preds = %6122
  %6127 = load float, float* %6067, align 4, !tbaa !130, !alias.scope !160, !noalias !163
  %6128 = load float, float* %6066, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  %6129 = load float, float* %6065, align 4, !tbaa !130, !alias.scope !168, !noalias !169
  %6130 = load float, float* %6070, align 4, !tbaa !130, !alias.scope !170, !noalias !173
  %6131 = load float, float* %6069, align 4, !tbaa !130, !alias.scope !176, !noalias !177
  %6132 = load float, float* %6068, align 4, !tbaa !130, !alias.scope !178, !noalias !179
  br label %6133

; <label>:6133                                    ; preds = %6126, %6060
  %6134 = phi float [ -1.000000e+00, %6060 ], [ %6132, %6126 ]
  %6135 = phi float [ -1.000000e+00, %6060 ], [ %6131, %6126 ]
  %6136 = phi float [ -1.000000e+00, %6060 ], [ %6130, %6126 ]
  %6137 = phi float [ -1.000000e+00, %6060 ], [ %6129, %6126 ]
  %6138 = phi float [ -1.000000e+00, %6060 ], [ %6128, %6126 ]
  %6139 = phi float [ -1.000000e+00, %6060 ], [ %6127, %6126 ]
  %6140 = phi i32 [ 0, %6060 ], [ %6123, %6126 ]
  %6141 = call float @dx.op.binary.f32(i32 36, float %6138, float %6139)  ; FMin(a,b)
  %6142 = call float @dx.op.binary.f32(i32 36, float %6137, float %6141)  ; FMin(a,b)
  %6143 = call float @dx.op.binary.f32(i32 35, float %6137, float %6138)  ; FMax(a,b)
  %6144 = call float @dx.op.binary.f32(i32 36, float %6143, float %6139)  ; FMin(a,b)
  %6145 = call float @dx.op.binary.f32(i32 36, float %6137, float %6138)  ; FMin(a,b)
  %6146 = call float @dx.op.binary.f32(i32 35, float %6145, float %6144)  ; FMax(a,b)
  %6147 = call float @dx.op.binary.f32(i32 35, float %6138, float %6139)  ; FMax(a,b)
  %6148 = call float @dx.op.binary.f32(i32 35, float %6137, float %6147)  ; FMax(a,b)
  store float %6142, float* %6065, align 4, !tbaa !130, !alias.scope !168, !noalias !169
  store float %6146, float* %6066, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  store float %6148, float* %6067, align 4, !tbaa !130, !alias.scope !160, !noalias !163
  %6149 = call float @dx.op.binary.f32(i32 36, float %6135, float %6136)  ; FMin(a,b)
  %6150 = call float @dx.op.binary.f32(i32 36, float %6134, float %6149)  ; FMin(a,b)
  %6151 = call float @dx.op.binary.f32(i32 35, float %6134, float %6135)  ; FMax(a,b)
  %6152 = call float @dx.op.binary.f32(i32 36, float %6151, float %6136)  ; FMin(a,b)
  %6153 = call float @dx.op.binary.f32(i32 36, float %6134, float %6135)  ; FMin(a,b)
  %6154 = call float @dx.op.binary.f32(i32 35, float %6153, float %6152)  ; FMax(a,b)
  %6155 = call float @dx.op.binary.f32(i32 35, float %6135, float %6136)  ; FMax(a,b)
  %6156 = call float @dx.op.binary.f32(i32 35, float %6134, float %6155)  ; FMax(a,b)
  store float %6150, float* %6068, align 4, !tbaa !130, !alias.scope !178, !noalias !179
  store float %6154, float* %6069, align 4, !tbaa !130, !alias.scope !176, !noalias !177
  store float %6156, float* %6070, align 4, !tbaa !130, !alias.scope !170, !noalias !173
  %6157 = sub nsw i32 3, %6140
  %6158 = icmp sgt i32 %6157, 2
  br i1 %6158, label %6159, label %6197

; <label>:6159                                    ; preds = %6133
  %6160 = icmp eq i32 %5928, 0
  %6161 = fsub fast float %5978, %6062
  %6162 = select i1 %6160, float %6161, float %6062
  %6163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6164 = extractvalue %dx.types.CBufRet.f32 %6163, 0
  %6165 = extractvalue %dx.types.CBufRet.f32 %6163, 1
  %6166 = extractvalue %dx.types.CBufRet.f32 %6163, 2
  %6167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.f32 %6167, 0
  %6169 = extractvalue %dx.types.CBufRet.f32 %6167, 1
  %6170 = extractvalue %dx.types.CBufRet.f32 %6167, 2
  %6171 = extractvalue %dx.types.CBufRet.f32 %6167, 3
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.f32 %6172, 3
  %6174 = call float @dx.op.binary.f32(i32 36, float %6063, float %6173)  ; FMin(a,b)
  %6175 = fmul fast float %6171, %6162
  %6176 = call float @dx.op.unary.f32(i32 7, float %6175)  ; Saturate(value)
  %6177 = fsub fast float %6168, %6164
  %6178 = fsub fast float %6169, %6165
  %6179 = fsub fast float %6170, %6166
  %6180 = fmul fast float %6176, %6177
  %6181 = fmul fast float %6176, %6178
  %6182 = fmul fast float %6176, %6179
  %6183 = fadd fast float %6180, %6164
  %6184 = fadd fast float %6181, %6165
  %6185 = fadd fast float %6182, %6166
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 0
  %6188 = extractvalue %dx.types.CBufRet.f32 %6186, 1
  %6189 = fadd fast float %6188, %6187
  %6190 = call float @dx.op.unary.f32(i32 7, float %6189)  ; Saturate(value)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6186, 2
  %6192 = extractvalue %dx.types.CBufRet.f32 %6186, 3
  %6193 = fadd fast float %6192, %6191
  %6194 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6195 = fmul fast float %6190, %6174
  %6196 = fmul fast float %6195, %6194
  br label %6279

; <label>:6197                                    ; preds = %6133
  %6198 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %6157
  %6199 = load float, float* %6198, align 4, !tbaa !130, !noalias !144
  %6200 = fcmp fast olt float %6199, %6064
  %6201 = icmp sgt i32 %6140, 0
  %6202 = and i1 %6201, %6200
  br i1 %6202, label %6203, label %6240

; <label>:6203                                    ; preds = %6197
  br label %6204

; <label>:6204                                    ; preds = %6233, %6203
  %6205 = phi float [ %6234, %6233 ], [ %6062, %6203 ]
  %6206 = phi float [ %6235, %6233 ], [ %6063, %6203 ]
  %6207 = phi float [ %6215, %6233 ], [ %6199, %6203 ]
  %6208 = phi i32 [ %6212, %6233 ], [ %6157, %6203 ]
  %6209 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %6208
  %6210 = load float, float* %6209, align 4, !tbaa !130, !noalias !144
  %6211 = icmp slt i32 %6208, 2
  %6212 = add nsw i32 %6208, 1
  %6213 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %6212
  %6214 = load float, float* %6213, align 4, !tbaa !130, !noalias !144
  %6215 = select i1 %6211, float %6214, float %5978
  %6216 = call float @dx.op.binary.f32(i32 36, float %6215, float %6210)  ; FMin(a,b)
  %6217 = call float @dx.op.binary.f32(i32 36, float %6064, float %6216)  ; FMin(a,b)
  %6218 = icmp eq i32 %5928, 0
  %6219 = fadd fast float %6217, %6207
  %6220 = fmul fast float %6219, %5909
  %6221 = fadd fast float %6220, %5922
  br i1 %6218, label %6227, label %6222

; <label>:6222                                    ; preds = %6204
  %6223 = fsub fast float %6217, %6207
  %6224 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6223)  ; FMax(a,b)
  %6225 = fmul fast float %6224, %6221
  %6226 = fadd fast float %6225, %6206
  br label %6233

; <label>:6227                                    ; preds = %6204
  %6228 = fsub fast float %6207, %6217
  %6229 = call float @dx.op.unary.f32(i32 6, float %6228)  ; FAbs(value)
  %6230 = fadd fast float %6229, %6205
  %6231 = fmul fast float %6229, %6221
  %6232 = fsub fast float %6206, %6231
  br label %6233

; <label>:6233                                    ; preds = %6227, %6222
  %6234 = phi float [ %6224, %6222 ], [ %6230, %6227 ]
  %6235 = phi float [ %6226, %6222 ], [ %6232, %6227 ]
  %6236 = fcmp fast olt float %6215, %6064
  %6237 = icmp slt i32 %6212, 3
  %6238 = and i1 %6237, %6236
  br i1 %6238, label %6204, label %6239

; <label>:6239                                    ; preds = %6233
  br label %6240

; <label>:6240                                    ; preds = %6239, %6197
  %6241 = phi float [ %6062, %6197 ], [ %6234, %6239 ]
  %6242 = phi float [ %6063, %6197 ], [ %6235, %6239 ]
  %6243 = fsub fast float %5978, %6241
  %6244 = select i1 %5980, float %6241, float %6243
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6248 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.CBufRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.CBufRet.f32 %6249, 2
  %6253 = extractvalue %dx.types.CBufRet.f32 %6249, 3
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 3
  %6256 = call float @dx.op.binary.f32(i32 36, float %6242, float %6255)  ; FMin(a,b)
  %6257 = fmul fast float %6253, %6244
  %6258 = call float @dx.op.unary.f32(i32 7, float %6257)  ; Saturate(value)
  %6259 = fsub fast float %6250, %6246
  %6260 = fsub fast float %6251, %6247
  %6261 = fsub fast float %6252, %6248
  %6262 = fmul fast float %6258, %6259
  %6263 = fmul fast float %6258, %6260
  %6264 = fmul fast float %6258, %6261
  %6265 = fadd fast float %6262, %6246
  %6266 = fadd fast float %6263, %6247
  %6267 = fadd fast float %6264, %6248
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6271 = fadd fast float %6270, %6269
  %6272 = call float @dx.op.unary.f32(i32 7, float %6271)  ; Saturate(value)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6268, 2
  %6274 = extractvalue %dx.types.CBufRet.f32 %6268, 3
  %6275 = fadd fast float %6274, %6273
  %6276 = call float @dx.op.unary.f32(i32 7, float %6275)  ; Saturate(value)
  %6277 = fmul fast float %6272, %6256
  %6278 = fmul fast float %6277, %6276
  br label %6279

; <label>:6279                                    ; preds = %6240, %6159, %5994, %5976, %5974
  %6280 = phi float [ %6003, %5994 ], [ %6162, %6159 ], [ %6244, %6240 ], [ 0.000000e+00, %5974 ], [ 0.000000e+00, %5976 ]
  %6281 = phi float [ %6037, %5994 ], [ %6196, %6159 ], [ %6278, %6240 ], [ 0.000000e+00, %5974 ], [ 0.000000e+00, %5976 ]
  %6282 = phi float [ %6024, %5994 ], [ %6183, %6159 ], [ %6265, %6240 ], [ 0.000000e+00, %5974 ], [ 0.000000e+00, %5976 ]
  %6283 = phi float [ %6025, %5994 ], [ %6184, %6159 ], [ %6266, %6240 ], [ 0.000000e+00, %5974 ], [ 0.000000e+00, %5976 ]
  %6284 = phi float [ %6026, %5994 ], [ %6185, %6159 ], [ %6267, %6240 ], [ 0.000000e+00, %5974 ], [ 0.000000e+00, %5976 ]
  %6285 = fmul fast float %5917, %6281
  %6286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6287 = extractvalue %dx.types.CBufRet.f32 %6286, 2
  %6288 = fsub fast float %5924, %6287
  %6289 = fcmp fast olt float %6285, -2.000000e+01
  %6290 = call float @dx.op.unary.f32(i32 21, float %6285)  ; Exp(value)
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6293 = extractvalue %dx.types.CBufRet.f32 %6291, 3
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 2
  %6296 = fmul fast float %6293, %6288
  %6297 = call float @dx.op.unary.f32(i32 7, float %6296)  ; Saturate(value)
  %6298 = fsub fast float 1.000000e+00, %6297
  %6299 = fmul fast float %5909, 5.000000e-01
  %6300 = fadd fast float %6299, 5.000000e-01
  %6301 = call float @dx.op.unary.f32(i32 7, float %6300)  ; Saturate(value)
  %6302 = fsub fast float 1.000000e+00, %6301
  %6303 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6298)  ; FMax(a,b)
  %6304 = fdiv fast float %6302, %6303
  %6305 = fsub fast float %6288, %5866
  %6306 = call float @dx.op.unary.f32(i32 6, float %6305)  ; FAbs(value)
  %6307 = fmul fast float %6306, %6292
  %6308 = call float @dx.op.unary.f32(i32 7, float %6304)  ; Saturate(value)
  %6309 = fsub fast float 1.000000e+00, %6307
  %6310 = fmul fast float %6309, %6308
  %6311 = fadd fast float %6310, %6307
  %6312 = fmul fast float %6295, %6288
  %6313 = call float @dx.op.unary.f32(i32 7, float %6312)  ; Saturate(value)
  %6314 = fsub fast float 1.000000e+00, %6311
  %6315 = fmul fast float %6314, %6313
  %6316 = fadd fast float %6315, %6311
  %6317 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  %6318 = fadd fast float %6290, -1.000000e+00
  %6319 = select i1 %6289, float -1.000000e+00, float %6318
  %6320 = fmul fast float %6317, %6319
  %6321 = fadd fast float %6320, 1.000000e+00
  %6322 = fsub fast float -0.000000e+00, %6320
  %6323 = fmul fast float %6282, %6322
  %6324 = fmul fast float %6283, %6322
  %6325 = fmul fast float %6284, %6322
  br label %6326

; <label>:6326                                    ; preds = %6279, %5875
  %6327 = phi float [ %6280, %6279 ], [ 0.000000e+00, %5875 ]
  %6328 = phi float [ %6321, %6279 ], [ 1.000000e+00, %5875 ]
  %6329 = phi float [ %6323, %6279 ], [ 0.000000e+00, %5875 ]
  %6330 = phi float [ %6324, %6279 ], [ 0.000000e+00, %5875 ]
  %6331 = phi float [ %6325, %6279 ], [ 0.000000e+00, %5875 ]
  %6332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6333 = extractvalue %dx.types.CBufRet.f32 %6332, 1
  %6334 = fsub fast float 1.000000e+00, %6328
  %6335 = fmul fast float %6334, %5910
  %6336 = fmul fast float %6335, %6333
  %6337 = fsub fast float %5910, %6336
  br i1 %5903, label %6338, label %6367, !dx.controlflow.hints !180

; <label>:6338                                    ; preds = %6326
  %6339 = fmul fast float %5911, %5900
  %6340 = fadd fast float %6339, %5901
  %6341 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  %6342 = fmul fast float %5882, %6337
  %6343 = fsub fast float -0.000000e+00, %6342
  %6344 = fmul fast float %5883, %6337
  %6345 = fsub fast float -0.000000e+00, %6344
  %6346 = call float @dx.op.unary.f32(i32 21, float %6343)  ; Exp(value)
  %6347 = call float @dx.op.unary.f32(i32 21, float %6345)  ; Exp(value)
  %6348 = call float @dx.op.binary.f32(i32 35, float %5890, float %6346)  ; FMax(a,b)
  %6349 = call float @dx.op.binary.f32(i32 35, float %5890, float %6347)  ; FMax(a,b)
  %6350 = fsub fast float %6349, %6348
  %6351 = fmul fast float %6350, %6341
  %6352 = fadd fast float %6351, %6348
  %6353 = call float @dx.op.unary.f32(i32 7, float %6352)  ; Saturate(value)
  %6354 = fsub fast float %5887, %5892
  %6355 = fsub fast float %5888, %5893
  %6356 = fsub fast float %5889, %5894
  %6357 = fmul fast float %6341, %6354
  %6358 = fmul fast float %6341, %6355
  %6359 = fmul fast float %6341, %6356
  %6360 = fadd fast float %6357, %5892
  %6361 = fadd fast float %6358, %5893
  %6362 = fadd fast float %6359, %5894
  %6363 = fsub fast float 1.000000e+00, %6353
  %6364 = fmul fast float %6363, %6360
  %6365 = fmul fast float %6363, %6361
  %6366 = fmul fast float %6363, %6362
  br label %6426

; <label>:6367                                    ; preds = %6326
  %6368 = fmul fast float %6337, %5899
  %6369 = call float @dx.op.unary.f32(i32 7, float %6368)  ; Saturate(value)
  %6370 = fsub fast float 2.000000e+00, %6369
  %6371 = fmul fast float %6369, 9.921875e-01
  %6372 = fmul fast float %6371, %6370
  %6373 = fadd fast float %6372, 3.906250e-03
  %6374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %61, float %6373, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6375 = extractvalue %dx.types.ResRet.f32 %6374, 0
  %6376 = fsub fast float %6369, %6375
  %6377 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6376)  ; FMax(a,b)
  %6378 = fmul fast float %5885, %5866
  %6379 = call float @dx.op.unary.f32(i32 6, float %6378)  ; FAbs(value)
  %6380 = fcmp fast ogt float %6379, 0x3EB0C6F7A0000000
  br i1 %6380, label %6381, label %6387, !dx.controlflow.hints !181

; <label>:6381                                    ; preds = %6367
  %6382 = fmul fast float %6378, 0xBFF7154760000000
  %6383 = call float @dx.op.unary.f32(i32 21, float %6382)  ; Exp(value)
  %6384 = fsub fast float 1.000000e+00, %6383
  %6385 = fdiv fast float %6384, %6378
  %6386 = fmul fast float %6385, %5895
  br label %6387

; <label>:6387                                    ; preds = %6381, %6367
  %6388 = phi float [ %6386, %6381 ], [ %5895, %6367 ]
  %6389 = fadd fast float %6388, %5897
  %6390 = fmul fast float %6389, %6377
  %6391 = fmul fast float %5882, %6390
  %6392 = fsub fast float -0.000000e+00, %6391
  %6393 = fmul fast float %5883, %6390
  %6394 = fsub fast float -0.000000e+00, %6393
  %6395 = fmul fast float %5884, %6390
  %6396 = fsub fast float -0.000000e+00, %6395
  %6397 = call float @dx.op.unary.f32(i32 21, float %6392)  ; Exp(value)
  %6398 = call float @dx.op.unary.f32(i32 21, float %6394)  ; Exp(value)
  %6399 = call float @dx.op.unary.f32(i32 21, float %6396)  ; Exp(value)
  %6400 = fmul fast float %5911, %5911
  %6401 = fadd fast float %6400, 1.000000e+00
  %6402 = fmul fast float %6401, 0x3FAE8EC8A0000000
  %6403 = fmul fast float %6402, %5892
  %6404 = fmul fast float %6402, %5893
  %6405 = fmul fast float %6402, %5894
  %6406 = fmul fast float %5911, %5890
  %6407 = fsub fast float 1.000000e+00, %6406
  %6408 = fmul fast float %5890, %5890
  %6409 = fsub fast float 1.000000e+00, %6408
  %6410 = fmul fast float %6409, 0x3FB45F3060000000
  %6411 = fmul fast float %6407, %6407
  %6412 = fdiv fast float 1.000000e+00, %6411
  %6413 = fmul fast float %6410, %6412
  %6414 = fmul fast float %6413, %5887
  %6415 = fmul fast float %6413, %5888
  %6416 = fmul fast float %6413, %5889
  %6417 = fadd fast float %6414, %6403
  %6418 = fadd fast float %6415, %6404
  %6419 = fadd fast float %6416, %6405
  %6420 = fsub fast float 1.000000e+00, %6397
  %6421 = fsub fast float 1.000000e+00, %6398
  %6422 = fsub fast float 1.000000e+00, %6399
  %6423 = fmul fast float %6417, %6420
  %6424 = fmul fast float %6418, %6421
  %6425 = fmul fast float %6419, %6422
  br label %6426

; <label>:6426                                    ; preds = %6387, %6338
  %6427 = phi float [ %6364, %6338 ], [ %6423, %6387 ]
  %6428 = phi float [ %6365, %6338 ], [ %6424, %6387 ]
  %6429 = phi float [ %6366, %6338 ], [ %6425, %6387 ]
  %6430 = phi float [ %6353, %6338 ], [ %6397, %6387 ]
  %6431 = phi float [ %6353, %6338 ], [ %6398, %6387 ]
  %6432 = phi float [ %6353, %6338 ], [ %6399, %6387 ]
  br i1 %5919, label %6433, label %6631, !dx.controlflow.hints !182

; <label>:6433                                    ; preds = %6426
  %6434 = extractvalue %dx.types.CBufRet.f32 %6332, 0
  %6435 = fmul fast float %6434, %6334
  %6436 = fsub fast float %6329, %6427
  %6437 = fsub fast float %6330, %6428
  %6438 = fsub fast float %6331, %6429
  %6439 = fmul fast float %6435, %6436
  %6440 = fmul fast float %6435, %6437
  %6441 = fmul fast float %6435, %6438
  %6442 = fadd fast float %6439, %6427
  %6443 = fadd fast float %6440, %6428
  %6444 = fadd fast float %6441, %6429
  %6445 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6430)  ; FMax(a,b)
  %6446 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6431)  ; FMax(a,b)
  %6447 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6432)  ; FMax(a,b)
  %6448 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6328)  ; FMax(a,b)
  %6449 = call float @dx.op.binary.f32(i32 35, float %6327, float %6337)  ; FMax(a,b)
  %6450 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6449)  ; FMax(a,b)
  %6451 = fdiv fast float %6327, %6450
  %6452 = call float @dx.op.unary.f32(i32 7, float %6451)  ; Saturate(value)
  %6453 = fdiv fast float %6337, %6450
  %6454 = call float @dx.op.unary.f32(i32 7, float %6453)  ; Saturate(value)
  %6455 = fcmp fast une float %6448, 1.000000e+00
  br i1 %6455, label %6456, label %6469, !dx.controlflow.hints !183

; <label>:6456                                    ; preds = %6433
  %6457 = call float @dx.op.unary.f32(i32 23, float %6448)  ; Log(value)
  %6458 = fmul fast float %6457, 0x3FE62E4300000000
  %6459 = fmul fast float %6329, %6458
  %6460 = fsub fast float -0.000000e+00, %6459
  %6461 = fmul fast float %6330, %6458
  %6462 = fsub fast float -0.000000e+00, %6461
  %6463 = fmul fast float %6331, %6458
  %6464 = fsub fast float -0.000000e+00, %6463
  %6465 = fsub fast float 1.000000e+00, %6448
  %6466 = fdiv fast float %6460, %6465
  %6467 = fdiv fast float %6462, %6465
  %6468 = fdiv fast float %6464, %6465
  br label %6469

; <label>:6469                                    ; preds = %6456, %6433
  %6470 = phi float [ %6466, %6456 ], [ %6329, %6433 ]
  %6471 = phi float [ %6467, %6456 ], [ %6330, %6433 ]
  %6472 = phi float [ %6468, %6456 ], [ %6331, %6433 ]
  %6473 = phi float [ %6458, %6456 ], [ 0.000000e+00, %6433 ]
  %6474 = fcmp fast une float %6445, 1.000000e+00
  br i1 %6474, label %6475, label %6482, !dx.controlflow.hints !184

; <label>:6475                                    ; preds = %6469
  %6476 = call float @dx.op.unary.f32(i32 23, float %6445)  ; Log(value)
  %6477 = fmul fast float %6476, 0x3FE62E4300000000
  %6478 = fmul fast float %6442, %6477
  %6479 = fsub fast float -0.000000e+00, %6478
  %6480 = fsub fast float 1.000000e+00, %6445
  %6481 = fdiv fast float %6479, %6480
  br label %6482

; <label>:6482                                    ; preds = %6475, %6469
  %6483 = phi float [ %6481, %6475 ], [ %6442, %6469 ]
  %6484 = phi float [ %6477, %6475 ], [ 0.000000e+00, %6469 ]
  %6485 = fcmp fast une float %6446, 1.000000e+00
  br i1 %6485, label %6486, label %6493, !dx.controlflow.hints !184

; <label>:6486                                    ; preds = %6482
  %6487 = call float @dx.op.unary.f32(i32 23, float %6446)  ; Log(value)
  %6488 = fmul fast float %6487, 0x3FE62E4300000000
  %6489 = fmul fast float %6443, %6488
  %6490 = fsub fast float -0.000000e+00, %6489
  %6491 = fsub fast float 1.000000e+00, %6446
  %6492 = fdiv fast float %6490, %6491
  br label %6493

; <label>:6493                                    ; preds = %6486, %6482
  %6494 = phi float [ %6492, %6486 ], [ %6443, %6482 ]
  %6495 = phi float [ %6488, %6486 ], [ 0.000000e+00, %6482 ]
  %6496 = fcmp fast une float %6447, 1.000000e+00
  br i1 %6496, label %6497, label %6504, !dx.controlflow.hints !184

; <label>:6497                                    ; preds = %6493
  %6498 = call float @dx.op.unary.f32(i32 23, float %6447)  ; Log(value)
  %6499 = fmul fast float %6498, 0x3FE62E4300000000
  %6500 = fmul fast float %6444, %6499
  %6501 = fsub fast float -0.000000e+00, %6500
  %6502 = fsub fast float 1.000000e+00, %6447
  %6503 = fdiv fast float %6501, %6502
  br label %6504

; <label>:6504                                    ; preds = %6497, %6493
  %6505 = phi float [ %6503, %6497 ], [ %6444, %6493 ]
  %6506 = phi float [ %6499, %6497 ], [ 0.000000e+00, %6493 ]
  %6507 = fmul fast float %6470, %6454
  %6508 = fmul fast float %6471, %6454
  %6509 = fmul fast float %6472, %6454
  %6510 = fmul fast float %6473, %6454
  %6511 = fmul fast float %6483, %6452
  %6512 = fmul fast float %6494, %6452
  %6513 = fmul fast float %6505, %6452
  %6514 = fmul fast float %6484, %6452
  %6515 = fmul fast float %6495, %6452
  %6516 = fmul fast float %6506, %6452
  %6517 = fadd fast float %6511, %6507
  %6518 = fadd fast float %6512, %6508
  %6519 = fadd fast float %6513, %6509
  %6520 = fadd fast float %6514, %6510
  %6521 = fadd fast float %6515, %6510
  %6522 = fadd fast float %6516, %6510
  %6523 = fcmp fast une float %6520, 0.000000e+00
  br i1 %6523, label %6524, label %6531, !dx.controlflow.hints !185

; <label>:6524                                    ; preds = %6504
  %6525 = fmul fast float %6520, 0x3FF7154760000000
  %6526 = call float @dx.op.unary.f32(i32 21, float %6525)  ; Exp(value)
  %6527 = fsub fast float 1.000000e+00, %6526
  %6528 = fmul fast float %6517, %6527
  %6529 = fsub fast float -0.000000e+00, %6528
  %6530 = fdiv fast float %6529, %6520
  br label %6531

; <label>:6531                                    ; preds = %6524, %6504
  %6532 = phi float [ %6526, %6524 ], [ 1.000000e+00, %6504 ]
  %6533 = phi float [ %6530, %6524 ], [ %6517, %6504 ]
  %6534 = fcmp fast une float %6521, 0.000000e+00
  br i1 %6534, label %6535, label %6542, !dx.controlflow.hints !185

; <label>:6535                                    ; preds = %6531
  %6536 = fmul fast float %6521, 0x3FF7154760000000
  %6537 = call float @dx.op.unary.f32(i32 21, float %6536)  ; Exp(value)
  %6538 = fsub fast float 1.000000e+00, %6537
  %6539 = fmul fast float %6518, %6538
  %6540 = fsub fast float -0.000000e+00, %6539
  %6541 = fdiv fast float %6540, %6521
  br label %6542

; <label>:6542                                    ; preds = %6535, %6531
  %6543 = phi float [ %6537, %6535 ], [ 1.000000e+00, %6531 ]
  %6544 = phi float [ %6541, %6535 ], [ %6518, %6531 ]
  %6545 = fcmp fast une float %6522, 0.000000e+00
  br i1 %6545, label %6546, label %6553, !dx.controlflow.hints !185

; <label>:6546                                    ; preds = %6542
  %6547 = fmul fast float %6522, 0x3FF7154760000000
  %6548 = call float @dx.op.unary.f32(i32 21, float %6547)  ; Exp(value)
  %6549 = fsub fast float 1.000000e+00, %6548
  %6550 = fmul fast float %6519, %6549
  %6551 = fsub fast float -0.000000e+00, %6550
  %6552 = fdiv fast float %6551, %6522
  br label %6553

; <label>:6553                                    ; preds = %6546, %6542
  %6554 = phi float [ %6548, %6546 ], [ 1.000000e+00, %6542 ]
  %6555 = phi float [ %6552, %6546 ], [ %6519, %6542 ]
  %6556 = fcmp fast ogt float %6452, %6454
  br i1 %6556, label %6557, label %6577

; <label>:6557                                    ; preds = %6553
  %6558 = fsub fast float 1.000000e+00, %6454
  %6559 = fmul fast float %6470, %6558
  %6560 = fmul fast float %6471, %6558
  %6561 = fmul fast float %6472, %6558
  %6562 = fmul fast float %6473, %6558
  %6563 = fcmp fast une float %6562, 0.000000e+00
  br i1 %6563, label %6564, label %6615, !dx.controlflow.hints !186

; <label>:6564                                    ; preds = %6557
  %6565 = fmul fast float %6562, 0x3FF7154760000000
  %6566 = call float @dx.op.unary.f32(i32 21, float %6565)  ; Exp(value)
  %6567 = fsub fast float 1.000000e+00, %6566
  %6568 = fmul fast float %6559, %6567
  %6569 = fsub fast float -0.000000e+00, %6568
  %6570 = fmul fast float %6560, %6567
  %6571 = fsub fast float -0.000000e+00, %6570
  %6572 = fmul fast float %6561, %6567
  %6573 = fsub fast float -0.000000e+00, %6572
  %6574 = fdiv fast float %6569, %6562
  %6575 = fdiv fast float %6571, %6562
  %6576 = fdiv fast float %6573, %6562
  br label %6615

; <label>:6577                                    ; preds = %6553
  %6578 = fsub fast float 1.000000e+00, %6452
  %6579 = fmul fast float %6483, %6578
  %6580 = fmul fast float %6494, %6578
  %6581 = fmul fast float %6505, %6578
  %6582 = fmul fast float %6484, %6578
  %6583 = fmul fast float %6495, %6578
  %6584 = fmul fast float %6506, %6578
  %6585 = fcmp fast une float %6582, 0.000000e+00
  br i1 %6585, label %6586, label %6593, !dx.controlflow.hints !185

; <label>:6586                                    ; preds = %6577
  %6587 = fmul fast float %6582, 0x3FF7154760000000
  %6588 = call float @dx.op.unary.f32(i32 21, float %6587)  ; Exp(value)
  %6589 = fsub fast float 1.000000e+00, %6588
  %6590 = fmul fast float %6579, %6589
  %6591 = fsub fast float -0.000000e+00, %6590
  %6592 = fdiv fast float %6591, %6582
  br label %6593

; <label>:6593                                    ; preds = %6586, %6577
  %6594 = phi float [ %6592, %6586 ], [ %6579, %6577 ]
  %6595 = phi float [ %6588, %6586 ], [ 1.000000e+00, %6577 ]
  %6596 = fcmp fast une float %6583, 0.000000e+00
  br i1 %6596, label %6597, label %6604, !dx.controlflow.hints !185

; <label>:6597                                    ; preds = %6593
  %6598 = fmul fast float %6583, 0x3FF7154760000000
  %6599 = call float @dx.op.unary.f32(i32 21, float %6598)  ; Exp(value)
  %6600 = fsub fast float 1.000000e+00, %6599
  %6601 = fmul fast float %6580, %6600
  %6602 = fsub fast float -0.000000e+00, %6601
  %6603 = fdiv fast float %6602, %6583
  br label %6604

; <label>:6604                                    ; preds = %6597, %6593
  %6605 = phi float [ %6603, %6597 ], [ %6580, %6593 ]
  %6606 = phi float [ %6599, %6597 ], [ 1.000000e+00, %6593 ]
  %6607 = fcmp fast une float %6584, 0.000000e+00
  br i1 %6607, label %6608, label %6615, !dx.controlflow.hints !185

; <label>:6608                                    ; preds = %6604
  %6609 = fmul fast float %6584, 0x3FF7154760000000
  %6610 = call float @dx.op.unary.f32(i32 21, float %6609)  ; Exp(value)
  %6611 = fsub fast float 1.000000e+00, %6610
  %6612 = fmul fast float %6581, %6611
  %6613 = fsub fast float -0.000000e+00, %6612
  %6614 = fdiv fast float %6613, %6584
  br label %6615

; <label>:6615                                    ; preds = %6608, %6604, %6564, %6557
  %6616 = phi float [ %6614, %6608 ], [ %6576, %6564 ], [ %6561, %6557 ], [ %6581, %6604 ]
  %6617 = phi float [ %6605, %6608 ], [ %6575, %6564 ], [ %6560, %6557 ], [ %6605, %6604 ]
  %6618 = phi float [ %6594, %6608 ], [ %6574, %6564 ], [ %6559, %6557 ], [ %6594, %6604 ]
  %6619 = phi float [ %6610, %6608 ], [ %6566, %6564 ], [ 1.000000e+00, %6557 ], [ 1.000000e+00, %6604 ]
  %6620 = phi float [ %6606, %6608 ], [ %6566, %6564 ], [ 1.000000e+00, %6557 ], [ %6606, %6604 ]
  %6621 = phi float [ %6595, %6608 ], [ %6566, %6564 ], [ 1.000000e+00, %6557 ], [ %6595, %6604 ]
  %6622 = fmul fast float %6621, %6533
  %6623 = fmul fast float %6620, %6544
  %6624 = fmul fast float %6619, %6555
  %6625 = fadd fast float %6622, %6618
  %6626 = fadd fast float %6623, %6617
  %6627 = fadd fast float %6624, %6616
  %6628 = fmul fast float %6621, %6532
  %6629 = fmul fast float %6620, %6543
  %6630 = fmul fast float %6619, %6554
  br label %6631

; <label>:6631                                    ; preds = %6615, %6426
  %6632 = phi float [ %6630, %6615 ], [ %6432, %6426 ]
  %6633 = phi float [ %6629, %6615 ], [ %6431, %6426 ]
  %6634 = phi float [ %6628, %6615 ], [ %6430, %6426 ]
  %6635 = phi float [ %6627, %6615 ], [ %6429, %6426 ]
  %6636 = phi float [ %6626, %6615 ], [ %6428, %6426 ]
  %6637 = phi float [ %6625, %6615 ], [ %6427, %6426 ]
  %6638 = fmul fast float %6637, %5574
  %6639 = fmul fast float %6636, %5574
  %6640 = fmul fast float %6635, %5574
  %6641 = fmul fast float %6634, %5874
  %6642 = call float @dx.op.dot3.f32(i32 55, float %6634, float %6633, float %6632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6643 = call float @dx.op.dot3.f32(i32 55, float %6638, float %6639, float %6640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6644 = select i1 %237, float %6642, float %6634
  %6645 = select i1 %237, float %6642, float %6633
  %6646 = select i1 %237, float 1.000000e+00, float %6632
  %6647 = select i1 %237, float %6643, float %6638
  %6648 = select i1 %237, float 0.000000e+00, float %6639
  %6649 = select i1 %237, float 0.000000e+00, float %6640
  %6650 = fmul fast float %6644, %5868
  %6651 = fmul fast float %6645, %5869
  %6652 = fmul fast float %6646, %5870
  %6653 = fadd fast float %6650, %6647
  %6654 = fadd fast float %6651, %6648
  %6655 = fadd fast float %6649, %6652
  %6656 = fmul fast float %6644, %5871
  %6657 = fmul fast float %6645, %5872
  %6658 = fmul fast float %6646, %5873
  %6659 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.i32 %6659, 0
  %6661 = icmp eq i32 %6660, 0
  br i1 %6661, label %7029, label %6662, !dx.controlflow.hints !187

; <label>:6662                                    ; preds = %6631
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 2
  %6665 = extractvalue %dx.types.CBufRet.f32 %6663, 3
  %6666 = fmul fast float %6664, %97
  %6667 = fmul fast float %6665, %98
  %6668 = fmul fast float %6666, 2.000000e+00
  %6669 = fmul fast float %6667, 2.000000e+00
  %6670 = fsub fast float 1.000000e+00, %6668
  %6671 = fsub fast float 1.000000e+00, %6669
  %6672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6672, 0
  %6674 = extractvalue %dx.types.CBufRet.f32 %6672, 1
  %6675 = extractvalue %dx.types.CBufRet.f32 %6672, 2
  %6676 = fmul fast float %6670, %6673
  %6677 = fmul fast float %6670, %6674
  %6678 = fmul fast float %6670, %6675
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = extractvalue %dx.types.CBufRet.f32 %6679, 1
  %6682 = extractvalue %dx.types.CBufRet.f32 %6679, 2
  %6683 = fmul fast float %6671, %6680
  %6684 = fmul fast float %6671, %6681
  %6685 = fmul fast float %6671, %6682
  %6686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6687 = extractvalue %dx.types.CBufRet.f32 %6686, 0
  %6688 = extractvalue %dx.types.CBufRet.f32 %6686, 1
  %6689 = extractvalue %dx.types.CBufRet.f32 %6686, 2
  %6690 = fadd fast float %6683, %6687
  %6691 = fadd fast float %6690, %6676
  %6692 = fadd fast float %6684, %6688
  %6693 = fadd fast float %6692, %6677
  %6694 = fadd fast float %6685, %6689
  %6695 = fadd fast float %6694, %6678
  %6696 = fmul fast float %6691, %5867
  %6697 = fmul fast float %6693, %5867
  %6698 = fmul fast float %6695, %5867
  %6699 = fmul fast float %6696, %6696
  %6700 = fmul fast float %6697, %6697
  %6701 = fadd fast float %6699, %6700
  %6702 = fmul fast float %6698, %6698
  %6703 = fadd fast float %6701, %6702
  %6704 = call float @dx.op.unary.f32(i32 24, float %6703)  ; Sqrt(value)
  %6705 = extractvalue %dx.types.CBufRet.f32 %5592, 0
  %6706 = fsub fast float %6704, %6705
  %6707 = extractvalue %dx.types.CBufRet.f32 %5592, 2
  %6708 = fmul fast float %6706, %6707
  %6709 = call float @dx.op.unary.f32(i32 7, float %6708)  ; Saturate(value)
  %6710 = fadd fast float %6709, -5.000000e-01
  %6711 = fmul fast float %6710, 2.000000e+00
  %6712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6713 = extractvalue %dx.types.CBufRet.f32 %6712, 2
  %6714 = call float @dx.op.binary.f32(i32 36, float %6713, float %6711)  ; FMin(a,b)
  %6715 = fsub fast float -0.000000e+00, %6713
  %6716 = fcmp fast ogt float %6714, %6715
  br i1 %6716, label %6717, label %7029, !dx.controlflow.hints !188

; <label>:6717                                    ; preds = %6662
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 3
  %6720 = fcmp fast ogt float %6719, 0.000000e+00
  br i1 %6720, label %6721, label %6796, !dx.controlflow.hints !189

; <label>:6721                                    ; preds = %6717
  %6722 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %6723 = extractvalue %dx.types.Dimensions %6722, 0
  %6724 = sitofp i32 %6723 to float
  %6725 = extractvalue %dx.types.Dimensions %6722, 1
  %6726 = sitofp i32 %6725 to float
  %6727 = fmul fast float %6666, %6724
  %6728 = fmul fast float %6667, %6726
  %6729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6730 = extractvalue %dx.types.CBufRet.f32 %6729, 1
  %6731 = fsub fast float -0.000000e+00, %6730
  %6732 = fptoui float %6731 to i32
  %6733 = fptoui float %6727 to i32
  %6734 = fptoui float %6728 to i32
  %6735 = and i32 %6732, 31
  %6736 = lshr i32 %6733, %6735
  %6737 = lshr i32 %6734, %6735
  %6738 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %6732, i32 %6736, i32 %6737, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6739 = extractvalue %dx.types.ResRet.f32 %6738, 0
  %6740 = fcmp fast olt float %6739, -1.000000e+00
  %6741 = fcmp fast ogt float %6739, -1.000000e+00
  %6742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6742, 1
  %6744 = select i1 %6741, float %6743, float 1.000000e+00
  %6745 = fadd fast float %6739, 1.000000e+00
  %6746 = fmul fast float %6744, %6745
  %6747 = call float @dx.op.unary.f32(i32 6, float %6746)  ; FAbs(value)
  %6748 = extractvalue %dx.types.CBufRet.f32 %6742, 3
  %6749 = fcmp fast oge float %6747, %6748
  %6750 = select i1 %6749, float 0x4197782600000000, float %6747
  %6751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6751, 0
  %6753 = extractvalue %dx.types.CBufRet.f32 %6751, 1
  %6754 = extractvalue %dx.types.CBufRet.f32 %6751, 2
  %6755 = select i1 %6740, float %6752, float %6673
  %6756 = select i1 %6740, float %6753, float %6674
  %6757 = select i1 %6740, float %6754, float %6675
  %6758 = fmul fast float %6755, %6670
  %6759 = fmul fast float %6756, %6670
  %6760 = fmul fast float %6757, %6670
  %6761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6762 = extractvalue %dx.types.CBufRet.f32 %6761, 0
  %6763 = extractvalue %dx.types.CBufRet.f32 %6761, 1
  %6764 = extractvalue %dx.types.CBufRet.f32 %6761, 2
  %6765 = select i1 %6740, float %6762, float %6680
  %6766 = select i1 %6740, float %6763, float %6681
  %6767 = select i1 %6740, float %6764, float %6682
  %6768 = fmul fast float %6765, %6671
  %6769 = fmul fast float %6766, %6671
  %6770 = fmul fast float %6767, %6671
  %6771 = fadd fast float %6768, %6758
  %6772 = fadd fast float %6769, %6759
  %6773 = fadd fast float %6770, %6760
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 0
  %6776 = extractvalue %dx.types.CBufRet.f32 %6774, 1
  %6777 = extractvalue %dx.types.CBufRet.f32 %6774, 2
  %6778 = select i1 %6740, float %6775, float %6687
  %6779 = select i1 %6740, float %6776, float %6688
  %6780 = select i1 %6740, float %6777, float %6689
  %6781 = fadd fast float %6771, %6778
  %6782 = fadd fast float %6772, %6779
  %6783 = fadd fast float %6773, %6780
  %6784 = fmul fast float %6781, %6750
  %6785 = fmul fast float %6782, %6750
  %6786 = fmul fast float %6783, %6750
  %6787 = fmul fast float %6784, %6784
  %6788 = fmul fast float %6785, %6785
  %6789 = fadd fast float %6787, %6788
  %6790 = fmul fast float %6786, %6786
  %6791 = fadd fast float %6789, %6790
  %6792 = call float @dx.op.unary.f32(i32 24, float %6791)  ; Sqrt(value)
  %6793 = fsub fast float %6792, %6705
  %6794 = fmul fast float %6793, %6707
  %6795 = call float @dx.op.unary.f32(i32 7, float %6794)  ; Saturate(value)
  br label %6796

; <label>:6796                                    ; preds = %6721, %6717
  %6797 = phi float [ %6795, %6721 ], [ 1.000000e+00, %6717 ]
  %6798 = fmul fast float %6714, 5.000000e-01
  %6799 = fadd fast float %6798, 5.000000e-01
  %6800 = call float @dx.op.unary.f32(i32 22, float %6799)  ; Frc(value)
  %6801 = call float @dx.op.unary.f32(i32 27, float %6800)  ; Round_ni(value)
  %6802 = call float @dx.op.unary.f32(i32 22, float %6800)  ; Frc(value)
  %6803 = fmul fast float %6802, 2.000000e+00
  %6804 = fadd fast float %6803, -1.000000e+00
  %6805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %61, float %6666, float %6667, float %6801, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6806 = extractvalue %dx.types.ResRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.ResRet.f32 %6805, 1
  %6808 = extractvalue %dx.types.ResRet.f32 %6805, 2
  %6809 = extractvalue %dx.types.ResRet.f32 %6805, 3
  %6810 = fadd fast float %6806, -5.000000e-01
  %6811 = fadd fast float %6808, -5.000000e-01
  %6812 = fmul fast float %6810, 0xBFD5555560000000
  %6813 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6811, float %6812)  ; FMad(a,b,c)
  %6814 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6807, float 0.000000e+00)  ; FMad(a,b,c)
  %6815 = fadd fast float %6814, %6809
  %6816 = fmul fast float %6810, -7.500000e-01
  %6817 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6811, float %6816)  ; FMad(a,b,c)
  %6818 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6807, float 0.000000e+00)  ; FMad(a,b,c)
  %6819 = fadd fast float %6818, %6809
  %6820 = call float @dx.op.binary.f32(i32 35, float %6813, float -1.000000e+00)  ; FMax(a,b)
  %6821 = call float @dx.op.binary.f32(i32 35, float %6815, float -1.000000e+00)  ; FMax(a,b)
  %6822 = call float @dx.op.binary.f32(i32 35, float %6817, float -1.000000e+00)  ; FMax(a,b)
  %6823 = call float @dx.op.binary.f32(i32 35, float %6819, float -1.000000e+00)  ; FMax(a,b)
  %6824 = call float @dx.op.binary.f32(i32 36, float %6820, float 1.000000e+00)  ; FMin(a,b)
  %6825 = call float @dx.op.binary.f32(i32 36, float %6821, float 1.000000e+00)  ; FMin(a,b)
  %6826 = call float @dx.op.binary.f32(i32 36, float %6822, float 1.000000e+00)  ; FMin(a,b)
  %6827 = call float @dx.op.binary.f32(i32 36, float %6823, float 1.000000e+00)  ; FMin(a,b)
  %6828 = fcmp fast olt float %6824, 0x3FEFFF8020000000
  br i1 %6828, label %6829, label %6944, !dx.controlflow.hints !190

; <label>:6829                                    ; preds = %6796
  %6830 = extractvalue %dx.types.CBufRet.f32 %6712, 3
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.CBufRet.f32 %6831, 2
  %6835 = extractvalue %dx.types.CBufRet.f32 %6831, 3
  %6836 = fsub fast float %6832, %6824
  %6837 = fsub fast float %6833, %6825
  %6838 = fsub fast float %6834, %6826
  %6839 = fsub fast float %6835, %6827
  %6840 = fmul fast float %6836, %6830
  %6841 = fmul fast float %6837, %6830
  %6842 = fmul fast float %6838, %6830
  %6843 = fmul fast float %6839, %6830
  %6844 = fadd fast float %6840, %6824
  %6845 = fadd fast float %6841, %6825
  %6846 = fsub fast float -0.000000e+00, %6845
  %6847 = fadd fast float %6842, %6826
  %6848 = fadd fast float %6843, %6827
  %6849 = fmul fast float %6844, %6844
  %6850 = fsub fast float %6845, %6849
  %6851 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6850)  ; FMax(a,b)
  %6852 = fdiv fast float 1.000000e+00, %6851
  %6853 = fmul fast float %6845, %6844
  %6854 = fsub fast float %6847, %6853
  %6855 = fsub fast float %6804, %6844
  %6856 = fmul fast float %6804, %6804
  %6857 = fsub fast float %6856, %6845
  %6858 = fmul fast float %6855, %6852
  %6859 = fmul fast float %6858, %6854
  %6860 = fsub fast float %6857, %6859
  %6861 = fmul fast float %6845, %6845
  %6862 = fsub fast float %6848, %6861
  %6863 = fmul fast float %6854, %6854
  %6864 = fmul fast float %6863, %6852
  %6865 = fsub fast float %6862, %6864
  %6866 = fdiv fast float %6860, %6865
  %6867 = fmul fast float %6854, %6866
  %6868 = fsub fast float %6855, %6867
  %6869 = fmul fast float %6868, %6852
  %6870 = fmul fast float %6869, %6844
  %6871 = fsub fast float 1.000000e+00, %6870
  %6872 = fmul fast float %6845, %6866
  %6873 = fsub fast float %6871, %6872
  %6874 = fmul fast float %6869, %6869
  %6875 = fmul fast float %6866, 4.000000e+00
  %6876 = fmul fast float %6875, %6873
  %6877 = fsub fast float %6874, %6876
  %6878 = call float @dx.op.unary.f32(i32 24, float %6877)  ; Sqrt(value)
  %6879 = fcmp fast oge float %6869, 0.000000e+00
  %6880 = fsub fast float -0.000000e+00, %6878
  %6881 = select i1 %6879, float %6880, float %6878
  %6882 = fsub fast float %6881, %6869
  %6883 = fdiv fast float %6882, %6866
  %6884 = fdiv fast float %6873, %6882
  %6885 = fmul fast float %6883, 5.000000e-01
  %6886 = fmul fast float %6884, 2.000000e+00
  %6887 = select i1 %6879, float %6885, float %6886
  %6888 = select i1 %6879, float %6886, float %6885
  %6889 = call float @dx.op.binary.f32(i32 35, float %6887, float %6888)  ; FMax(a,b)
  %6890 = call float @dx.op.binary.f32(i32 36, float %6887, float %6888)  ; FMin(a,b)
  %6891 = fcmp fast ogt float %6804, %6890
  br i1 %6891, label %6892, label %6902

; <label>:6892                                    ; preds = %6829
  %6893 = fsub fast float %6804, %6890
  %6894 = fsub fast float %6889, %6890
  %6895 = fmul fast float %6893, %6894
  %6896 = fmul fast float %6889, %6804
  %6897 = fadd fast float %6889, %6804
  %6898 = fmul fast float %6897, %6844
  %6899 = fadd fast float %6896, %6845
  %6900 = fsub fast float %6899, %6898
  %6901 = fdiv fast float %6900, %6895
  br label %6902

; <label>:6902                                    ; preds = %6892, %6829
  %6903 = phi float [ %6901, %6892 ], [ 0.000000e+00, %6829 ]
  %6904 = fcmp fast ogt float %6804, %6889
  %6905 = fsub fast float %6804, %6889
  br i1 %6904, label %6906, label %6916

; <label>:6906                                    ; preds = %6902
  %6907 = fsub fast float %6889, %6890
  %6908 = fmul fast float %6907, %6905
  %6909 = fmul fast float %6890, %6804
  %6910 = fadd fast float %6890, %6804
  %6911 = fmul fast float %6910, %6844
  %6912 = fsub fast float %6846, %6909
  %6913 = fadd fast float %6912, %6911
  %6914 = fdiv fast float %6913, %6908
  %6915 = fadd fast float %6914, %6903
  br label %6916

; <label>:6916                                    ; preds = %6906, %6902
  %6917 = phi float [ %6915, %6906 ], [ %6903, %6902 ]
  %6918 = fsub fast float %6804, %6890
  %6919 = fmul fast float %6918, %6905
  %6920 = fmul fast float %6890, %6889
  %6921 = fadd fast float %6890, %6889
  %6922 = fmul fast float %6921, %6844
  %6923 = fadd fast float %6920, %6845
  %6924 = fsub fast float %6923, %6922
  %6925 = fdiv fast float %6924, %6919
  %6926 = call float @dx.op.unary.f32(i32 7, float %6917)  ; Saturate(value)
  %6927 = fcmp fast oeq float %5593, 0.000000e+00
  %6928 = extractvalue %dx.types.CBufRet.f32 %6712, 0
  %6929 = fcmp fast oeq float %6928, 0.000000e+00
  %6930 = or i1 %6927, %6929
  %6931 = fmul fast float %6928, 2.000000e+00
  %6932 = fadd fast float %6713, %6714
  %6933 = fdiv fast float %6932, %6931
  %6934 = call float @dx.op.unary.f32(i32 7, float %6933)  ; Saturate(value)
  %6935 = fmul fast float %6934, 2.000000e+00
  %6936 = fsub fast float 3.000000e+00, %6935
  %6937 = fmul fast float %6934, %6934
  %6938 = fmul fast float %6937, %6936
  %6939 = select i1 %6930, float 1.000000e+00, float %6938
  %6940 = fmul fast float %6925, %5593
  %6941 = fadd fast float %6926, %6940
  %6942 = call float @dx.op.unary.f32(i32 7, float %6941)  ; Saturate(value)
  %6943 = fmul fast float %6939, %6942
  br label %6944

; <label>:6944                                    ; preds = %6916, %6796
  %6945 = phi float [ %6943, %6916 ], [ 0.000000e+00, %6796 ]
  %6946 = fsub fast float 1.000000e+00, %6945
  %6947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %61, float %6666, float %6667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6948 = extractvalue %dx.types.ResRet.f32 %6947, 0
  %6949 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.i32 %6949, 2
  %6951 = icmp eq i32 %6950, 0
  br i1 %6951, label %6957, label %6952

; <label>:6952                                    ; preds = %6944
  %6953 = call float @dx.op.unary.f32(i32 7, float %6945)  ; Saturate(value)
  %6954 = fadd fast float %6948, -1.000000e+00
  %6955 = fmul fast float %6953, %6954
  %6956 = fadd fast float %6955, 1.000000e+00
  br label %6957

; <label>:6957                                    ; preds = %6952, %6944
  %6958 = phi float [ %6956, %6952 ], [ %6946, %6944 ]
  br i1 %6720, label %6959, label %6977

; <label>:6959                                    ; preds = %6957
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6962 = fsub fast float %6797, %6961
  %6963 = call float @dx.op.unary.f32(i32 7, float %6962)  ; Saturate(value)
  %6964 = fsub fast float %6797, %6719
  %6965 = call float @dx.op.unary.f32(i32 7, float %6964)  ; Saturate(value)
  %6966 = fsub fast float %6963, %6965
  %6967 = fsub fast float %6799, %6965
  %6968 = fdiv fast float %6967, %6966
  %6969 = call float @dx.op.unary.f32(i32 7, float %6968)  ; Saturate(value)
  %6970 = fmul fast float %6969, 2.000000e+00
  %6971 = fsub fast float 3.000000e+00, %6970
  %6972 = fsub fast float %6948, %6958
  %6973 = fmul fast float %6969, %6969
  %6974 = fmul fast float %6973, %6972
  %6975 = fmul fast float %6974, %6971
  %6976 = fadd fast float %6975, %6958
  br label %6977

; <label>:6977                                    ; preds = %6959, %6957
  %6978 = phi float [ %6976, %6959 ], [ %6958, %6957 ]
  %6979 = call float @dx.op.binary.f32(i32 35, float %6948, float %6978)  ; FMax(a,b)
  %6980 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6981 = extractvalue %dx.types.CBufRet.i32 %6980, 2
  %6982 = and i32 %6981, 1
  %6983 = icmp eq i32 %6982, 0
  %6984 = fcmp fast une float %6979, 1.000000e+00
  %6985 = and i1 %6984, %6983
  br i1 %6985, label %6986, label %7005

; <label>:6986                                    ; preds = %6977
  %6987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %61, float %6666, float %6667, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6988 = extractvalue %dx.types.ResRet.f32 %6987, 0
  %6989 = extractvalue %dx.types.ResRet.f32 %6987, 1
  %6990 = extractvalue %dx.types.ResRet.f32 %6987, 2
  %6991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6992 = extractvalue %dx.types.CBufRet.f32 %6991, 1
  %6993 = fmul fast float %6992, %6988
  %6994 = fmul fast float %6992, %6989
  %6995 = fmul fast float %6992, %6990
  %6996 = fcmp fast ogt float %6948, 0x3FEFFF2E40000000
  %6997 = fsub fast float 1.000000e+00, %6979
  %6998 = fsub fast float 1.000000e+00, %6948
  %6999 = fdiv fast float %6997, %6998
  %7000 = call float @dx.op.unary.f32(i32 7, float %6999)  ; Saturate(value)
  %7001 = select i1 %6996, float 0.000000e+00, float %7000
  %7002 = fmul fast float %6993, %7001
  %7003 = fmul fast float %6994, %7001
  %7004 = fmul fast float %6995, %7001
  br label %7005

; <label>:7005                                    ; preds = %6986, %6977
  %7006 = phi float [ 0.000000e+00, %6977 ], [ %7002, %6986 ]
  %7007 = phi float [ 0.000000e+00, %6977 ], [ %7003, %6986 ]
  %7008 = phi float [ 0.000000e+00, %6977 ], [ %7004, %6986 ]
  %7009 = fmul fast float %7006, %5574
  %7010 = fmul fast float %7007, %5574
  %7011 = fmul fast float %7008, %5574
  %7012 = fmul fast float %6979, %6641
  %7013 = call float @dx.op.dot3.f32(i32 55, float %6979, float %6979, float %6979, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7014 = call float @dx.op.dot3.f32(i32 55, float %7009, float %7010, float %7011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7015 = select i1 %237, float %7013, float %6979
  %7016 = select i1 %237, float 1.000000e+00, float %6979
  %7017 = select i1 %237, float %7014, float %7009
  %7018 = select i1 %237, float 0.000000e+00, float %7010
  %7019 = select i1 %237, float 0.000000e+00, float %7011
  %7020 = fmul fast float %7015, %6653
  %7021 = fmul fast float %7015, %6654
  %7022 = fmul fast float %7016, %6655
  %7023 = fadd fast float %7020, %7017
  %7024 = fadd fast float %7021, %7018
  %7025 = fadd fast float %7019, %7022
  %7026 = fmul fast float %7015, %6656
  %7027 = fmul fast float %7015, %6657
  %7028 = fmul fast float %7016, %6658
  br label %7029

; <label>:7029                                    ; preds = %7005, %6662, %6631, %5863
  %7030 = phi float [ %5868, %5863 ], [ %6653, %6631 ], [ %7023, %7005 ], [ %6653, %6662 ]
  %7031 = phi float [ %5869, %5863 ], [ %6654, %6631 ], [ %7024, %7005 ], [ %6654, %6662 ]
  %7032 = phi float [ %5870, %5863 ], [ %6655, %6631 ], [ %7025, %7005 ], [ %6655, %6662 ]
  %7033 = phi float [ %5871, %5863 ], [ %6656, %6631 ], [ %7026, %7005 ], [ %6656, %6662 ]
  %7034 = phi float [ %5872, %5863 ], [ %6657, %6631 ], [ %7027, %7005 ], [ %6657, %6662 ]
  %7035 = phi float [ %5873, %5863 ], [ %6658, %6631 ], [ %7028, %7005 ], [ %6658, %6662 ]
  %7036 = phi float [ %5874, %5863 ], [ %6641, %6631 ], [ %7012, %7005 ], [ %6641, %6662 ]
  %7037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7038 = extractvalue %dx.types.CBufRet.f32 %7037, 2
  %7039 = extractvalue %dx.types.CBufRet.f32 %7037, 3
  %7040 = fmul fast float %7038, %97
  %7041 = fmul fast float %7039, %98
  %7042 = call float @dx.op.unary.f32(i32 7, float %7040)  ; Saturate(value)
  %7043 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  %7044 = select i1 %5603, i32 2, i32 0
  %7045 = or i32 %7044, 1
  %7046 = uitofp i32 %7045 to float
  %7047 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %61, float %7042, float %7043, float %7046, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7048 = extractvalue %dx.types.ResRet.f32 %7047, 0
  %7049 = extractvalue %dx.types.ResRet.f32 %7047, 1
  %7050 = extractvalue %dx.types.ResRet.f32 %7047, 2
  %7051 = extractvalue %dx.types.ResRet.f32 %7047, 3
  %7052 = add nuw nsw i32 %7044, 2
  %7053 = uitofp i32 %7052 to float
  %7054 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %61, float %7042, float %7043, float %7053, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7055 = extractvalue %dx.types.ResRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.ResRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.ResRet.f32 %7054, 2
  %7058 = extractvalue %dx.types.ResRet.f32 %7054, 3
  %7059 = call float @dx.op.binary.f32(i32 35, float %7049, float %7050)  ; FMax(a,b)
  %7060 = call float @dx.op.binary.f32(i32 35, float %7048, float %7059)  ; FMax(a,b)
  %7061 = call float @dx.op.binary.f32(i32 35, float %7060, float %7051)  ; FMax(a,b)
  %7062 = call float @dx.op.binary.f32(i32 36, float %7056, float %7057)  ; FMin(a,b)
  %7063 = call float @dx.op.binary.f32(i32 36, float %7055, float %7062)  ; FMin(a,b)
  %7064 = call float @dx.op.binary.f32(i32 36, float %7063, float %7058)  ; FMin(a,b)
  %7065 = fmul fast float %7061, 2.550000e+02
  %7066 = fadd fast float %7065, 0x3F70101020000000
  %7067 = fptoui float %7066 to i32
  %7068 = fmul fast float %7064, 2.550000e+02
  %7069 = fadd fast float %7068, 0x3F70101020000000
  %7070 = fptoui float %7069 to i32
  %7071 = icmp ult i32 %7067, %7070
  br i1 %7071, label %7072, label %7241

; <label>:7072                                    ; preds = %7029
  %7073 = fcmp fast ogt float %84, 9.843750e-01
  %7074 = fadd fast float %5867, -4.000000e+00
  %7075 = select i1 %7073, float -4.000000e+00, float %7074
  %7076 = call float @dx.op.binary.f32(i32 35, float %7075, float 0.000000e+00)  ; FMax(a,b)
  %7077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7078 = extractvalue %dx.types.CBufRet.f32 %7077, 0
  %7079 = fadd fast float %7078, %7076
  %7080 = extractvalue %dx.types.CBufRet.f32 %7077, 2
  %7081 = fmul fast float %7079, %7080
  %7082 = call float @dx.op.unary.f32(i32 23, float %7081)  ; Log(value)
  %7083 = extractvalue %dx.types.CBufRet.f32 %7077, 3
  %7084 = fmul fast float %7083, %7082
  %7085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7086 = extractvalue %dx.types.CBufRet.f32 %7085, 2
  %7087 = fmul fast float %7084, %7086
  %7088 = call float @dx.op.unary.f32(i32 7, float %7087)  ; Saturate(value)
  %7089 = uitofp i32 %7067 to float
  %7090 = uitofp i32 %7070 to float
  %7091 = fadd fast float %7089, 5.000000e-01
  %7092 = fadd fast float %7090, 5.000000e-01
  %7093 = fmul fast float %7086, %7091
  %7094 = fmul fast float %7086, %7092
  %7095 = fadd fast float %7093, 0x3F0FFB4800000000
  %7096 = fadd fast float %7094, 0xBF0FFB4800000000
  %7097 = call float @dx.op.binary.f32(i32 35, float %7088, float %7095)  ; FMax(a,b)
  %7098 = call float @dx.op.binary.f32(i32 36, float %7097, float %7096)  ; FMin(a,b)
  %7099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.f32 %7099, 1
  %7101 = extractvalue %dx.types.CBufRet.f32 %7099, 2
  %7102 = extractvalue %dx.types.CBufRet.f32 %7099, 0
  %7103 = select i1 %5603, float %7102, float 0.000000e+00
  %7104 = fmul fast float %7100, %7098
  %7105 = fadd fast float %7103, %7104
  %7106 = fadd fast float %7103, %7101
  %7107 = fsub fast float %7100, %7101
  %7108 = fadd fast float %7107, %7103
  %7109 = call float @dx.op.binary.f32(i32 35, float %7105, float %7106)  ; FMax(a,b)
  %7110 = call float @dx.op.binary.f32(i32 36, float %7109, float %7108)  ; FMin(a,b)
  %7111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %59, float %7042, float %7043, float %7110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7112 = extractvalue %dx.types.ResRet.f32 %7111, 0
  %7113 = extractvalue %dx.types.ResRet.f32 %7111, 1
  %7114 = extractvalue %dx.types.ResRet.f32 %7111, 2
  %7115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7116 = extractvalue %dx.types.CBufRet.i32 %7115, 0
  %7117 = extractvalue %dx.types.CBufRet.i32 %7115, 1
  %7118 = uitofp i32 %7116 to float
  %7119 = uitofp i32 %7117 to float
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 0
  %7122 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7123 = fmul fast float %7118, %7042
  %7124 = fmul fast float %7119, %7043
  %7125 = fadd fast float %7123, -5.000000e-01
  %7126 = fadd fast float %7124, -5.000000e-01
  %7127 = call float @dx.op.unary.f32(i32 22, float %7125)  ; Frc(value)
  %7128 = call float @dx.op.unary.f32(i32 22, float %7126)  ; Frc(value)
  %7129 = fmul fast float %7127, %7127
  %7130 = fmul fast float %7129, %7127
  %7131 = fsub fast float 3.000000e+00, %7127
  %7132 = fmul fast float %7129, %7131
  %7133 = fmul fast float %7127, 3.000000e+00
  %7134 = fmul fast float %7130, 3.000000e+00
  %7135 = fmul fast float %7129, 6.000000e+00
  %7136 = fsub fast float %7134, %7135
  %7137 = fadd fast float %7136, 4.000000e+00
  %7138 = fmul fast float %7137, 0x3FC5555560000000
  %7139 = fmul fast float %7130, -3.000000e+00
  %7140 = fadd fast float %7129, %7127
  %7141 = fmul fast float %7140, 3.000000e+00
  %7142 = fadd fast float %7139, 1.000000e+00
  %7143 = fadd fast float %7142, %7141
  %7144 = fmul fast float %7130, 0x3FC5555560000000
  %7145 = fmul fast float %7128, %7128
  %7146 = fmul fast float %7145, %7128
  %7147 = fsub fast float 3.000000e+00, %7128
  %7148 = fmul fast float %7145, %7147
  %7149 = fmul fast float %7128, 3.000000e+00
  %7150 = fmul fast float %7146, 3.000000e+00
  %7151 = fmul fast float %7145, 6.000000e+00
  %7152 = fsub fast float %7150, %7151
  %7153 = fadd fast float %7152, 4.000000e+00
  %7154 = fmul fast float %7153, 0x3FC5555560000000
  %7155 = fmul fast float %7146, -3.000000e+00
  %7156 = fadd fast float %7145, %7128
  %7157 = fmul fast float %7156, 3.000000e+00
  %7158 = fadd fast float %7155, 1.000000e+00
  %7159 = fadd fast float %7158, %7157
  %7160 = fmul fast float %7146, 0x3FC5555560000000
  %7161 = fadd fast float %7127, 1.000000e+00
  %7162 = fsub fast float 1.000000e+00, %7133
  %7163 = fadd fast float %7162, %7132
  %7164 = fadd fast float %7163, %7137
  %7165 = fmul fast float %7164, 0x3FC5555560000000
  %7166 = fdiv fast float %7138, %7165
  %7167 = fsub fast float %7161, %7166
  %7168 = fsub fast float 1.000000e+00, %7127
  %7169 = fadd fast float %7143, %7130
  %7170 = fmul fast float %7169, 0x3FC5555560000000
  %7171 = fdiv fast float %7144, %7170
  %7172 = fadd fast float %7168, %7171
  %7173 = fadd fast float %7128, 1.000000e+00
  %7174 = fsub fast float 1.000000e+00, %7149
  %7175 = fadd fast float %7174, %7148
  %7176 = fadd fast float %7175, %7153
  %7177 = fmul fast float %7176, 0x3FC5555560000000
  %7178 = fdiv fast float %7154, %7177
  %7179 = fsub fast float %7173, %7178
  %7180 = fsub fast float 1.000000e+00, %7128
  %7181 = fadd fast float %7159, %7146
  %7182 = fmul fast float %7181, 0x3FC5555560000000
  %7183 = fdiv fast float %7160, %7182
  %7184 = fadd fast float %7183, %7180
  %7185 = fmul fast float %7167, %7121
  %7186 = fsub fast float %7042, %7185
  %7187 = fmul fast float %7172, %7121
  %7188 = fadd fast float %7187, %7042
  %7189 = fmul fast float %7184, %7122
  %7190 = fadd fast float %7189, %7043
  %7191 = fmul fast float %7179, %7122
  %7192 = fsub fast float %7043, %7191
  %7193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %59, float %7186, float %7192, float %7110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7194 = extractvalue %dx.types.ResRet.f32 %7193, 0
  %7195 = extractvalue %dx.types.ResRet.f32 %7193, 1
  %7196 = extractvalue %dx.types.ResRet.f32 %7193, 2
  %7197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %59, float %7188, float %7192, float %7110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7198 = extractvalue %dx.types.ResRet.f32 %7197, 0
  %7199 = extractvalue %dx.types.ResRet.f32 %7197, 1
  %7200 = extractvalue %dx.types.ResRet.f32 %7197, 2
  %7201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %59, float %7186, float %7190, float %7110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7202 = extractvalue %dx.types.ResRet.f32 %7201, 0
  %7203 = extractvalue %dx.types.ResRet.f32 %7201, 1
  %7204 = extractvalue %dx.types.ResRet.f32 %7201, 2
  %7205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %59, float %7188, float %7190, float %7110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7206 = extractvalue %dx.types.ResRet.f32 %7205, 0
  %7207 = extractvalue %dx.types.ResRet.f32 %7205, 1
  %7208 = extractvalue %dx.types.ResRet.f32 %7205, 2
  %7209 = fsub fast float %7202, %7194
  %7210 = fsub fast float %7203, %7195
  %7211 = fsub fast float %7204, %7196
  %7212 = fmul fast float %7209, %7182
  %7213 = fmul fast float %7210, %7182
  %7214 = fmul fast float %7211, %7182
  %7215 = fadd fast float %7212, %7194
  %7216 = fadd fast float %7213, %7195
  %7217 = fadd fast float %7214, %7196
  %7218 = fsub fast float %7206, %7198
  %7219 = fsub fast float %7207, %7199
  %7220 = fsub fast float %7208, %7200
  %7221 = fmul fast float %7218, %7182
  %7222 = fmul fast float %7219, %7182
  %7223 = fmul fast float %7220, %7182
  %7224 = fsub fast float %7198, %7215
  %7225 = fadd fast float %7224, %7221
  %7226 = fsub fast float %7199, %7216
  %7227 = fadd fast float %7226, %7222
  %7228 = fsub fast float %7200, %7217
  %7229 = fadd fast float %7228, %7223
  %7230 = fmul fast float %7225, %7170
  %7231 = fmul fast float %7227, %7170
  %7232 = fmul fast float %7229, %7170
  %7233 = fadd fast float %7230, %7215
  %7234 = fadd fast float %7231, %7216
  %7235 = fadd fast float %7232, %7217
  %7236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7237 = extractvalue %dx.types.CBufRet.f32 %7236, 1
  %7238 = fmul fast float %7233, %7237
  %7239 = fmul fast float %7234, %7237
  %7240 = fmul fast float %7235, %7237
  br label %7241

; <label>:7241                                    ; preds = %7072, %7029
  %7242 = phi float [ %7112, %7072 ], [ 1.000000e+00, %7029 ]
  %7243 = phi float [ %7113, %7072 ], [ 1.000000e+00, %7029 ]
  %7244 = phi float [ %7114, %7072 ], [ 1.000000e+00, %7029 ]
  %7245 = phi float [ %7238, %7072 ], [ 0.000000e+00, %7029 ]
  %7246 = phi float [ %7239, %7072 ], [ 0.000000e+00, %7029 ]
  %7247 = phi float [ %7240, %7072 ], [ 0.000000e+00, %7029 ]
  %7248 = fmul fast float %7245, %5574
  %7249 = fmul fast float %7246, %5574
  %7250 = fmul fast float %7247, %5574
  %7251 = fmul fast float %7242, %7036
  %7252 = call float @dx.op.dot3.f32(i32 55, float %7242, float %7243, float %7244, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7253 = call float @dx.op.dot3.f32(i32 55, float %7248, float %7249, float %7250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7254 = select i1 %237, float %7252, float %7242
  %7255 = select i1 %237, float %7252, float %7243
  %7256 = select i1 %237, float 1.000000e+00, float %7244
  %7257 = select i1 %237, float %7253, float %7248
  %7258 = select i1 %237, float 0.000000e+00, float %7249
  %7259 = select i1 %237, float 0.000000e+00, float %7250
  %7260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.i32 %7260, 3
  %7262 = and i32 %7261, 3
  %7263 = icmp ne i32 %7262, 0
  %7264 = and i32 %7261, 4
  %7265 = icmp ne i32 %7264, 0
  %7266 = and i1 %7263, %7265
  %7267 = and i1 %237, %7266
  br i1 %7267, label %7268, label %7274

; <label>:7268                                    ; preds = %7241
  %7269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7270 = extractvalue %dx.types.CBufRet.f32 %7269, 1
  %7271 = fadd fast float %7251, -1.000000e+00
  %7272 = fmul fast float %7270, %7271
  %7273 = fadd fast float %7272, 1.000000e+00
  br label %7274

; <label>:7274                                    ; preds = %7268, %7241
  %7275 = phi float [ %7273, %7268 ], [ %7251, %7241 ]
  %7276 = fadd fast float %7033, %7030
  %7277 = fmul fast float %7254, %7276
  %7278 = fadd fast float %7277, %7257
  %7279 = fadd fast float %7034, %7031
  %7280 = fmul fast float %7255, %7279
  %7281 = fadd fast float %7280, %7258
  %7282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7283 = extractvalue %dx.types.CBufRet.f32 %7282, 0
  br i1 %237, label %7284, label %7307

; <label>:7284                                    ; preds = %7274
  %7285 = fadd fast float %7278, %7281
  %7286 = fmul fast float %7283, %7285
  %7287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7288 = extractvalue %dx.types.CBufRet.f32 %7287, 3
  %7289 = extractvalue %dx.types.CBufRet.f32 %5584, 1
  %7290 = fsub fast float %5590, %5578
  %7291 = fadd fast float %7290, %5591
  %7292 = fsub fast float %7291, %7289
  %7293 = extractvalue %dx.types.CBufRet.f32 %5584, 2
  %7294 = fmul fast float %7292, %7293
  %7295 = call float @dx.op.unary.f32(i32 7, float %7294)  ; Saturate(value)
  %7296 = fsub fast float %7295, %7288
  %7297 = fmul fast float %7296, %7275
  %7298 = fadd fast float %7297, %7288
  %7299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7300 = extractvalue %dx.types.CBufRet.f32 %7299, 0
  %7301 = fsub fast float %7298, %7300
  %7302 = fmul fast float %7301, 1.000000e+01
  %7303 = call float @dx.op.unary.f32(i32 7, float %7302)  ; Saturate(value)
  %7304 = fmul fast float %7303, %5573
  %7305 = fadd fast float %7304, %5574
  %7306 = fmul fast float %7305, %7298
  br label %7331

; <label>:7307                                    ; preds = %7274
  %7308 = fadd fast float %7035, %7032
  %7309 = fmul fast float %7256, %7308
  %7310 = fadd fast float %7309, %7259
  %7311 = fmul fast float %7283, %7278
  %7312 = fmul fast float %7283, %7281
  %7313 = fmul fast float %7283, %7310
  %7314 = call float @dx.op.binary.f32(i32 35, float %7312, float %7313)  ; FMax(a,b)
  %7315 = call float @dx.op.binary.f32(i32 35, float %7311, float %7314)  ; FMax(a,b)
  %7316 = call float @dx.op.binary.f32(i32 35, float %7315, float %5574)  ; FMax(a,b)
  %7317 = fcmp fast ugt float %7316, 0x3F10000000000000
  br i1 %7317, label %7319, label %7318

; <label>:7318                                    ; preds = %7307
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7319

; <label>:7319                                    ; preds = %7318, %7307
  %7320 = add i32 %68, 116
  %7321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 %7320, i32 undef)  ; BufferLoad(srv,index,wot)
  %7322 = extractvalue %dx.types.ResRet.i32 %7321, 0
  %7323 = and i32 %7322, 32
  %7324 = icmp eq i32 %7323, 0
  br i1 %7324, label %7331, label %7325

; <label>:7325                                    ; preds = %7319
  %7326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.f32 %7326, 0
  %7328 = fmul fast float %7327, 0x3FE99999A0000000
  %7329 = fadd fast float %7327, %7311
  %7330 = fadd fast float %7328, %7313
  br label %7331

; <label>:7331                                    ; preds = %7325, %7319, %7284
  %7332 = phi float [ %7286, %7284 ], [ %7329, %7325 ], [ %7311, %7319 ]
  %7333 = phi float [ %7306, %7284 ], [ %7312, %7325 ], [ %7312, %7319 ]
  %7334 = phi float [ %7305, %7284 ], [ %7330, %7325 ], [ %7313, %7319 ]
  %7335 = phi float [ %7305, %7284 ], [ %5574, %7325 ], [ %5574, %7319 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7336 = call float @dx.op.binary.f32(i32 36, float %7332, float 3.225500e+04)  ; FMin(a,b)
  %7337 = call float @dx.op.binary.f32(i32 36, float %7333, float 3.225500e+04)  ; FMin(a,b)
  %7338 = call float @dx.op.binary.f32(i32 36, float %7334, float 3.225500e+04)  ; FMin(a,b)
  %7339 = call float @dx.op.binary.f32(i32 36, float %7335, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7336)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7337)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7338)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7339)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!80}
!dx.entryPoints = !{!81}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !69, !72}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !17}
!44 = !{i32 36, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!45 = !{i32 37, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!47 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!48 = !{i32 40, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!49 = !{i32 41, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!50 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!51 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!52 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!53 = !{i32 45, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !54}
!54 = !{i32 0, i32 14}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!59 = !{i32 50, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!60 = !{i32 51, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!61 = !{i32 52, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!62 = !{i32 53, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!63 = !{i32 54, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!64 = !{i32 55, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!65 = !{i32 56, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!66 = !{i32 57, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !54}
!67 = !{i32 58, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!68 = !{i32 59, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!69 = !{!70, !71}
!70 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!71 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!72 = !{!73, !74, !75, !76, !77, !78, !79}
!73 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!74 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!75 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!76 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!77 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!78 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!79 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!80 = !{[28 x i32] [i32 26, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!81 = !{void ()* @ps_main, !"ps_main", !82, !4, !100}
!82 = !{!83, !98, null}
!83 = !{!84, !87, !89, !91, !93, !94, !95, !96, !97}
!84 = !{i32 0, !"SV_Position", i8 9, i8 3, !85, i8 4, i32 1, i8 4, i32 0, i8 0, !86}
!85 = !{i32 0}
!86 = !{i32 3, i32 15}
!87 = !{i32 1, !"COLOR", i8 9, i8 0, !85, i8 2, i32 1, i8 4, i32 1, i8 0, !88}
!88 = !{i32 3, i32 1}
!89 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !85, i8 2, i32 1, i8 2, i32 2, i8 0, !90}
!90 = !{i32 3, i32 3}
!91 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !85, i8 2, i32 1, i8 3, i32 3, i8 0, !92}
!92 = !{i32 3, i32 7}
!93 = !{i32 4, !"NORMAL", i8 9, i8 0, !85, i8 2, i32 1, i8 3, i32 4, i8 0, !92}
!94 = !{i32 5, !"TANGENT", i8 9, i8 0, !85, i8 2, i32 1, i8 4, i32 5, i8 0, !86}
!95 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !85, i8 1, i32 1, i8 1, i32 6, i8 0, !88}
!96 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !85, i8 1, i32 1, i8 1, i32 6, i8 1, !88}
!97 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !85, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!98 = !{!99}
!99 = !{i32 0, !"SV_Target", i8 9, i8 16, !85, i8 0, i32 1, i8 4, i32 0, i8 0, !86}
!100 = !{i32 0, i64 16}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = !{!117, !117, i64 0}
!117 = !{!"int", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C/C++ TBAA"}
!120 = !{!121, !123, !125, !127}
!121 = distinct !{!121, !122, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!122 = distinct !{!122, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!123 = distinct !{!123, !124, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!124 = distinct !{!124, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!125 = distinct !{!125, !126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!126 = distinct !{!126, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!127 = distinct !{!127, !128, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!128 = distinct !{!128, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = !{!131, !131, i64 0}
!131 = !{!"float", !118, i64 0}
!132 = distinct !{!132, !110}
!133 = distinct !{!133, !110}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = !{!145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!145 = distinct !{!145, !146, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!146 = distinct !{!146, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!147 = distinct !{!147, !148, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!148 = distinct !{!148, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!149 = distinct !{!149, !148, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!150 = distinct !{!150, !151, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!151 = distinct !{!151, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!152 = distinct !{!152, !151, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!153 = distinct !{!153, !151, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!154 = distinct !{!154, !155, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!155 = distinct !{!155, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!156 = distinct !{!156, !155, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!157 = distinct !{!157, !155, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!158 = distinct !{!158, !159, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!159 = distinct !{!159, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"\01?sort@@YAXAIAM00@Z: %c"}
!162 = distinct !{!162, !"\01?sort@@YAXAIAM00@Z"}
!163 = !{!164, !165, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!164 = distinct !{!164, !162, !"\01?sort@@YAXAIAM00@Z: %a"}
!165 = distinct !{!165, !162, !"\01?sort@@YAXAIAM00@Z: %b"}
!166 = !{!165}
!167 = !{!164, !161, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!168 = !{!164}
!169 = !{!165, !161, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!170 = !{!171}
!171 = distinct !{!171, !172, !"\01?sort@@YAXAIAM00@Z: %c"}
!172 = distinct !{!172, !"\01?sort@@YAXAIAM00@Z"}
!173 = !{!174, !175, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!174 = distinct !{!174, !172, !"\01?sort@@YAXAIAM00@Z: %a"}
!175 = distinct !{!175, !172, !"\01?sort@@YAXAIAM00@Z: %b"}
!176 = !{!175}
!177 = !{!174, !171, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!178 = !{!174}
!179 = !{!175, !171, !145, !147, !149, !150, !152, !153, !154, !156, !157, !158}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 2}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}
!186 = distinct !{!186, !"dx.controlflow.hints", i32 1}
!187 = distinct !{!187, !"dx.controlflow.hints", i32 1}
!188 = distinct !{!188, !"dx.controlflow.hints", i32 1}
!189 = distinct !{!189, !"dx.controlflow.hints", i32 1}
!190 = distinct !{!190, !"dx.controlflow.hints", i32 1}

