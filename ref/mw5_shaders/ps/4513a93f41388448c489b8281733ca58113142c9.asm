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
; shader hash: 1f0bd91d63261ee7e4b1aca369cadf56
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
  %179 = add i32 %71, 136
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = extractvalue %dx.types.ResRet.i32 %180, 1
  %183 = extractvalue %dx.types.ResRet.i32 %180, 2
  %184 = extractvalue %dx.types.ResRet.i32 %180, 3
  %185 = bitcast i32 %181 to float
  %186 = bitcast i32 %182 to float
  %187 = bitcast i32 %183 to float
  %188 = bitcast i32 %184 to float
  %189 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %190 = call float @dx.op.unary.f32(i32 25, float %189)  ; Rsqrt(value)
  %191 = fmul fast float %190, %76
  %192 = fmul fast float %190, %77
  %193 = fmul fast float %190, %78
  %194 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %195 = call float @dx.op.unary.f32(i32 25, float %194)  ; Rsqrt(value)
  %196 = fmul fast float %195, %147
  %197 = fmul fast float %195, %148
  %198 = fmul fast float %195, %149
  %199 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %200 = fmul fast float %199, %199
  %201 = fmul fast float %200, %187
  %202 = fadd fast float %201, %188
  %203 = call float @dx.op.unary.f32(i32 7, float %202)  ; Saturate(value)
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %206 = fmul fast float %205, %194
  %207 = fsub fast float %185, %206
  %208 = fmul fast float %207, %186
  %209 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  %210 = fmul fast float %209, %203
  %211 = fmul fast float %100, 5.000000e-01
  %212 = fmul fast float %101, 5.000000e-01
  %213 = fptosi float %211 to i32
  %214 = fptosi float %212 to i32
  %215 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %213, i32 %214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = lshr i32 %216, 18
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F4C00EBA0000000
  %220 = call float @dx.op.unary.f32(i32 21, float %219)  ; Exp(value)
  %221 = fadd fast float %220, -1.000000e+00
  %222 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %223 = extractvalue %dx.types.Dimensions %222, 0
  %224 = sitofp i32 %223 to float
  %225 = extractvalue %dx.types.Dimensions %222, 1
  %226 = sitofp i32 %225 to float
  %227 = fcmp fast oge float %211, %224
  %228 = fcmp fast oge float %212, %226
  %229 = or i1 %227, %228
  %230 = select i1 %229, float 0x4197782600000000, float %221
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %234 = fmul fast float %232, %100
  %235 = fmul fast float %233, %101
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 114688
  %239 = icmp ne i32 %238, 0
  %240 = select i1 %239, float %234, float 0.000000e+00
  %241 = select i1 %239, float %235, float 0.000000e+00
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %65, float %240, float %241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fmul fast float %243, 2.550000e+02
  %245 = fptoui float %244 to i32
  %246 = select i1 %239, i32 %245, i32 0
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.i32 %248, 3
  %250 = and i32 %249, 3
  %251 = icmp ne i32 %250, 0
  %252 = and i32 %249, 4
  %253 = icmp ne i32 %252, 0
  %254 = and i1 %251, %253
  br i1 %254, label %255, label %266

; <label>:255                                     ; preds = %0
  %256 = extractvalue %dx.types.CBufRet.f32 %247, 3
  %257 = fmul fast float %256, %101
  %258 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %259 = fmul fast float %258, %100
  %260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %64, float %259, float %257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = fsub fast float 1.000000e+00, %261
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 0
  %265 = fcmp fast olt float %262, %264
  br label %269

; <label>:266                                     ; preds = %0
  %267 = icmp eq i32 %252, 0
  %268 = and i1 %251, %267
  br label %269

; <label>:269                                     ; preds = %266, %255
  %270 = phi i1 [ %265, %255 ], [ %268, %266 ]
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %273 = fmul fast float %272, 0x3FE3C6EF40000000
  %274 = frem fast float %100, 2.560000e+02
  %275 = frem fast float %101, 2.560000e+02
  %276 = fptoui float %274 to i32
  %277 = fptoui float %275 to i32
  %278 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %276, i32 %277, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = fadd fast float %279, %273
  %281 = call float @dx.op.unary.f32(i32 22, float %280)  ; Frc(value)
  %282 = add i32 %71, 60
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = shl i32 %284, 4
  %286 = and i32 %285, 32752
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %284, 7
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %284, 22
  %292 = shl nuw nsw i32 %291, 5
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %71, 72
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %296, 8
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %296, 16
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = add i32 %71, 36
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %71, 96
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fmul fast float %319, 0x3F50624DE0000000
  %323 = fmul fast float %321, 0x3F50624DE0000000
  %324 = add i32 %71, 124
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 2
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %338, label %329

; <label>:329                                     ; preds = %269
  %330 = add i32 %71, 248
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = add i32 %332, 0
  %334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %335 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %334, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 3
  %337 = fmul fast float %336, %84
  br label %338

; <label>:338                                     ; preds = %329, %269
  %339 = phi float [ %84, %269 ], [ %337, %329 ]
  %340 = add i32 %71, 24
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = add i32 %71, 28
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = or i32 %345, %342
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %1141, label %348

; <label>:348                                     ; preds = %338
  %349 = add i32 %71, 92
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = lshr i32 %351, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = fmul fast float %353, 0x3F50624DE0000000
  %355 = add i32 %71, 40
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = lshr i32 %357, 16
  %359 = and i32 %358, 255
  %360 = lshr i32 %357, 24
  %361 = add i32 %71, 100
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = add i32 %71, 32
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = lshr i32 %370, 22
  %372 = shl nuw nsw i32 %371, 5
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = shl i32 %370, 4
  %375 = and i32 %374, 32752
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %370, 7
  %378 = and i32 %377, 32752
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 3
  %382 = fmul fast float %381, 1.000000e+03
  %383 = fmul fast float %322, %382
  %384 = call float @dx.op.unary.f32(i32 22, float %383)  ; Frc(value)
  %385 = fadd fast float %384, %312
  %386 = fmul fast float %323, %382
  %387 = call float @dx.op.unary.f32(i32 22, float %386)  ; Frc(value)
  %388 = fadd fast float %387, %314
  %389 = fmul fast float %354, %382
  %390 = call float @dx.op.unary.f32(i32 22, float %389)  ; Frc(value)
  %391 = fmul fast float %390, 0x401921FB60000000
  %392 = fadd fast float %391, %373
  %393 = call float @dx.op.unary.f32(i32 13, float %392)  ; Sin(value)
  %394 = call float @dx.op.unary.f32(i32 12, float %392)  ; Cos(value)
  %395 = fsub fast float -0.000000e+00, %393
  %396 = fadd fast float %82, -5.000000e-01
  %397 = fadd fast float %83, -5.000000e-01
  %398 = fmul fast float %365, %396
  %399 = fmul fast float %367, %397
  %400 = fadd fast float %398, 5.000000e-01
  %401 = fadd fast float %399, 5.000000e-01
  %402 = fmul fast float %376, %400
  %403 = fmul fast float %379, %401
  %404 = fmul fast float %394, %402
  %405 = call float @dx.op.tertiary.f32(i32 46, float %395, float %403, float %404)  ; FMad(a,b,c)
  %406 = fmul fast float %393, %402
  %407 = call float @dx.op.tertiary.f32(i32 46, float %394, float %403, float %406)  ; FMad(a,b,c)
  %408 = fadd fast float %385, %405
  %409 = fadd fast float %388, %407
  %410 = icmp ugt i32 %359, 1
  %411 = icmp ugt i32 %357, 33554431
  %412 = or i1 %411, %410
  br i1 %412, label %413, label %438

; <label>:413                                     ; preds = %348
  %414 = add i32 %71, 84
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = lshr i32 %416, 16
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = fmul fast float %381, %418
  %420 = call float @dx.op.unary.f32(i32 22, float %419)  ; Frc(value)
  %421 = mul nuw nsw i32 %359, %360
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %420, %422
  %424 = call float @dx.op.unary.f32(i32 27, float %423)  ; Round_ni(value)
  %425 = fptoui float %424 to i32
  %426 = urem i32 %425, %359
  %427 = udiv i32 %425, %360
  %428 = call float @dx.op.unary.f32(i32 22, float %408)  ; Frc(value)
  %429 = call float @dx.op.unary.f32(i32 22, float %409)  ; Frc(value)
  %430 = uitofp i32 %426 to float
  %431 = uitofp i32 %427 to float
  %432 = fadd fast float %428, %430
  %433 = fadd fast float %429, %431
  %434 = uitofp i32 %359 to float
  %435 = uitofp i32 %360 to float
  %436 = fdiv fast float %432, %434
  %437 = fdiv fast float %433, %435
  br label %438

; <label>:438                                     ; preds = %413, %348
  %439 = phi float [ %436, %413 ], [ %408, %348 ]
  %440 = phi float [ %437, %413 ], [ %409, %348 ]
  %441 = and i32 %342, 16777216
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %552, label %443

; <label>:443                                     ; preds = %438
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 0
  %446 = extractvalue %dx.types.CBufRet.f32 %444, 1
  %447 = extractvalue %dx.types.CBufRet.f32 %444, 2
  %448 = fadd fast float %445, %147
  %449 = fadd fast float %446, %148
  %450 = fadd fast float %447, %149
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %453 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %454 = icmp eq i32 %70, 65535
  br i1 %454, label %549, label %455

; <label>:455                                     ; preds = %443
  %456 = lshr i32 %70, 1
  %457 = shl i32 %456, 2
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %70, 1
  %461 = icmp ne i32 %460, 0
  %462 = lshr i32 %459, 16
  %463 = and i32 %459, 65535
  %464 = select i1 %461, i32 %462, i32 %463
  %465 = icmp eq i32 %464, 65535
  br i1 %465, label %545, label %466

; <label>:466                                     ; preds = %455
  %467 = mul nuw nsw i32 %464, 40
  %468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 0
  %470 = extractvalue %dx.types.ResRet.f32 %468, 1
  %471 = extractvalue %dx.types.ResRet.f32 %468, 2
  %472 = add nuw nsw i32 %467, 12
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = add nuw nsw i32 %467, 24
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = add nuw nsw i32 %467, 36
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = fsub fast float %448, %469
  %486 = fsub fast float %449, %470
  %487 = fsub fast float %450, %471
  %488 = fmul fast float %484, %485
  %489 = fmul fast float %484, %486
  %490 = fmul fast float %484, %487
  %491 = call float @dx.op.unary.f32(i32 27, float %488)  ; Round_ni(value)
  %492 = call float @dx.op.unary.f32(i32 27, float %489)  ; Round_ni(value)
  %493 = call float @dx.op.unary.f32(i32 27, float %490)  ; Round_ni(value)
  %494 = fadd fast float %491, 5.000000e-01
  %495 = fadd fast float %492, 5.000000e-01
  %496 = fadd fast float %493, 5.000000e-01
  %497 = fmul fast float %494, %474
  %498 = fmul fast float %495, %475
  %499 = fmul fast float %496, %476
  %500 = shl i32 %70, 2
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = add i32 %502, 0
  %504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %503, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %505 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %506 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %507 = call float @dx.op.unary.f32(i32 22, float %499)  ; Frc(value)
  %508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %504, %dx.types.Handle %65, float %505, float %506, float %507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = extractvalue %dx.types.ResRet.f32 %508, 1
  %511 = extractvalue %dx.types.ResRet.f32 %508, 2
  %512 = fmul fast float %509, 1.023000e+03
  %513 = fmul fast float %510, 1.023000e+03
  %514 = fmul fast float %511, 1.023000e+03
  %515 = fadd fast float %512, 5.000000e-01
  %516 = fadd fast float %513, 5.000000e-01
  %517 = fadd fast float %514, 5.000000e-01
  %518 = call float @dx.op.unary.f32(i32 27, float %515)  ; Round_ni(value)
  %519 = call float @dx.op.unary.f32(i32 27, float %516)  ; Round_ni(value)
  %520 = call float @dx.op.unary.f32(i32 27, float %517)  ; Round_ni(value)
  %521 = fsub fast float %488, %491
  %522 = fsub fast float %489, %492
  %523 = fsub fast float %490, %493
  %524 = fmul fast float %521, 7.500000e-01
  %525 = fmul fast float %522, 7.500000e-01
  %526 = fmul fast float %523, 7.500000e-01
  %527 = fadd fast float %491, 1.250000e-01
  %528 = fadd fast float %527, %524
  %529 = fadd fast float %528, %518
  %530 = fadd fast float %492, 1.250000e-01
  %531 = fadd fast float %530, %525
  %532 = fadd fast float %531, %519
  %533 = fadd fast float %493, 1.250000e-01
  %534 = fadd fast float %533, %526
  %535 = fadd fast float %534, %520
  %536 = fmul fast float %529, %479
  %537 = fmul fast float %532, %480
  %538 = fmul fast float %535, %481
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = add i32 %540, 0
  %542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %542, %dx.types.Handle %63, float %536, float %537, float %538, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  br label %545

; <label>:545                                     ; preds = %466, %455
  %546 = phi float [ %544, %466 ], [ -1.000000e+00, %455 ]
  %547 = fadd fast float %546, %453
  %548 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  br label %549

; <label>:549                                     ; preds = %545, %443
  %550 = phi float [ %548, %545 ], [ %453, %443 ]
  %551 = fmul fast float %550, %339
  br label %552

; <label>:552                                     ; preds = %549, %438
  %553 = phi float [ %551, %549 ], [ %339, %438 ]
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 256
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %604, label %558

; <label>:558                                     ; preds = %552
  %559 = add i32 %71, 232
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = add i32 %561, 0
  %563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %563, %dx.types.Handle %97, float %439, float %440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = add i32 %71, 52
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = shl i32 %568, 4
  %570 = and i32 %569, 32752
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = lshr i32 %568, 7
  %573 = and i32 %572, 32752
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = fsub fast float 1.000000e+00, %553
  %576 = call float @dx.op.binary.f32(i32 35, float %575, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %577 = bitcast float %553 to i32
  %578 = sitofp i32 %577 to float
  %579 = fadd fast float %578, 0xC1CFBF8940000000
  %580 = fmul fast float %574, %579
  %581 = fadd fast float %580, 0x41CFBF8940000000
  %582 = fptosi float %581 to i32
  %583 = bitcast i32 %582 to float
  %584 = bitcast float %576 to i32
  %585 = sitofp i32 %584 to float
  %586 = fadd fast float %585, 0xC1CFBF8940000000
  %587 = fmul fast float %586, %574
  %588 = fadd fast float %587, 0x41CFBF8940000000
  %589 = fptosi float %588 to i32
  %590 = bitcast i32 %589 to float
  %591 = fmul fast float %583, %571
  %592 = fmul fast float %590, %571
  %593 = fsub fast float %576, %591
  %594 = fadd fast float %592, %576
  %595 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  %596 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %597 = fsub fast float %565, %595
  %598 = fsub fast float %596, %595
  %599 = bitcast float %598 to i32
  %600 = sub nsw i32 2129859010, %599
  %601 = bitcast i32 %600 to float
  %602 = fmul fast float %601, %597
  %603 = call float @dx.op.unary.f32(i32 7, float %602)  ; Saturate(value)
  br label %604

; <label>:604                                     ; preds = %558, %552
  %605 = phi float [ %603, %558 ], [ %553, %552 ]
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = and i32 %607, 128
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %626, label %610

; <label>:610                                     ; preds = %604
  %611 = add i32 %71, 228
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = add i32 %613, 0
  %615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %616 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %615, %dx.types.Handle %97, float %439, float %440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %619, 524288
  %621 = icmp ne i32 %620, 0
  %622 = fcmp fast ogt float %617, 0x3FE0101020000000
  %623 = select i1 %622, float 1.000000e+00, float 0.000000e+00
  %624 = select i1 %621, float %623, float %617
  %625 = fmul fast float %624, %605
  br label %626

; <label>:626                                     ; preds = %610, %604
  %627 = phi float [ %625, %610 ], [ %605, %604 ]
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = and i32 %629, 16
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %830, label %632

; <label>:632                                     ; preds = %626
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = add i32 %71, 216
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = add i32 %637, 0
  %639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %640 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %639, %dx.types.Handle %96, float %439, float %440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = extractvalue %dx.types.ResRet.f32 %640, 1
  %643 = extractvalue %dx.types.ResRet.f32 %640, 2
  %644 = extractvalue %dx.types.ResRet.f32 %640, 3
  %645 = and i32 %634, 255
  %646 = uitofp i32 %645 to float
  %647 = lshr i32 %634, 8
  %648 = and i32 %647, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %644, %646
  %651 = fadd fast float %650, %649
  %652 = fmul fast float %651, 0x3F70101000000000
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = and i32 %654, 512
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %665, label %657

; <label>:657                                     ; preds = %632
  %658 = add i32 %71, 236
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add i32 %660, 0
  %662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %662, %dx.types.Handle %97, float %439, float %440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  br label %665

; <label>:665                                     ; preds = %657, %632
  %666 = phi float [ %664, %657 ], [ 1.000000e+00, %632 ]
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 33554432
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %777, label %671

; <label>:671                                     ; preds = %665
  %672 = add i32 %71, 80
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 65535
  %676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %675)  ; LegacyF16ToF32(value)
  %677 = lshr i32 %674, 16
  %678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %677)  ; LegacyF16ToF32(value)
  %679 = add i32 %71, 84
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = and i32 %681, 65535
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = lshr i32 %685, 24
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %687, 0x3F70101020000000
  %689 = and i32 %685, 255
  %690 = uitofp i32 %689 to float
  %691 = fmul fast float %690, 0x3F70101020000000
  %692 = lshr i32 %685, 8
  %693 = and i32 %692, 255
  %694 = uitofp i32 %693 to float
  %695 = fmul fast float %694, 0x3F70101020000000
  %696 = lshr i32 %685, 16
  %697 = and i32 %696, 255
  %698 = uitofp i32 %697 to float
  %699 = fmul fast float %698, 0x3F70101020000000
  %700 = add i32 %71, 76
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = lshr i32 %702, 24
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %704, 0x3F70101020000000
  %706 = and i32 %702, 255
  %707 = uitofp i32 %706 to float
  %708 = fmul fast float %707, 0x3F70101020000000
  %709 = lshr i32 %702, 8
  %710 = and i32 %709, 255
  %711 = uitofp i32 %710 to float
  %712 = fmul fast float %711, 0x3F70101020000000
  %713 = lshr i32 %702, 16
  %714 = and i32 %713, 255
  %715 = uitofp i32 %714 to float
  %716 = fmul fast float %715, 0x3F70101020000000
  %717 = bitcast float %641 to i32
  %718 = ashr i32 %717, 1
  %719 = sub nsw i32 1597463174, %718
  %720 = bitcast i32 %719 to float
  %721 = fmul fast float %641, 5.000000e-01
  %722 = fmul fast float %720, %720
  %723 = fmul fast float %722, %721
  %724 = fsub fast float 1.500000e+00, %723
  %725 = fmul fast float %720, %641
  %726 = fmul fast float %725, %724
  %727 = bitcast float %642 to i32
  %728 = ashr i32 %727, 1
  %729 = sub nsw i32 1597463174, %728
  %730 = bitcast i32 %729 to float
  %731 = fmul fast float %642, 5.000000e-01
  %732 = fmul fast float %730, %730
  %733 = fmul fast float %732, %731
  %734 = fsub fast float 1.500000e+00, %733
  %735 = fmul fast float %730, %642
  %736 = fmul fast float %735, %734
  %737 = bitcast float %643 to i32
  %738 = ashr i32 %737, 1
  %739 = sub nsw i32 1597463174, %738
  %740 = bitcast i32 %739 to float
  %741 = fmul fast float %643, 5.000000e-01
  %742 = fmul fast float %740, %740
  %743 = fmul fast float %742, %741
  %744 = fsub fast float 1.500000e+00, %743
  %745 = fmul fast float %740, %643
  %746 = fmul fast float %745, %744
  %747 = fsub fast float %726, %708
  %748 = fsub fast float %736, %712
  %749 = fsub fast float %746, %716
  %750 = fmul fast float %747, %676
  %751 = fmul fast float %748, %678
  %752 = fmul fast float %749, %683
  %753 = fadd fast float %750, %691
  %754 = fadd fast float %751, %695
  %755 = fadd fast float %752, %699
  %756 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %757 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %758 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  %759 = fmul fast float %756, %756
  %760 = fmul fast float %757, %757
  %761 = fmul fast float %758, %758
  %762 = fsub fast float %759, %641
  %763 = fsub fast float %760, %642
  %764 = fsub fast float %761, %643
  %765 = fmul fast float %762, %666
  %766 = fmul fast float %763, %666
  %767 = fmul fast float %764, %666
  %768 = fadd fast float %765, %641
  %769 = fadd fast float %766, %642
  %770 = fadd fast float %767, %643
  %771 = fadd fast float %688, %652
  %772 = fsub fast float %771, %705
  %773 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %774 = fsub fast float %773, %652
  %775 = fmul fast float %774, %666
  %776 = fadd fast float %775, %652
  br label %830

; <label>:777                                     ; preds = %665
  %778 = and i32 %668, 134217728
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %814, label %780

; <label>:780                                     ; preds = %777
  %781 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %782 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %783 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %784 = fadd fast float %781, -5.000000e-01
  %785 = fadd fast float %782, -5.000000e-01
  %786 = fadd fast float %783, -5.000000e-01
  %787 = fmul fast float %784, %666
  %788 = fmul fast float %785, %666
  %789 = fmul fast float %786, %666
  %790 = fadd fast float %787, 5.000000e-01
  %791 = fadd fast float %788, 5.000000e-01
  %792 = fadd fast float %789, 5.000000e-01
  %793 = call float @dx.op.unary.f32(i32 24, float %641)  ; Sqrt(value)
  %794 = call float @dx.op.unary.f32(i32 24, float %642)  ; Sqrt(value)
  %795 = call float @dx.op.unary.f32(i32 24, float %643)  ; Sqrt(value)
  %796 = fmul fast float %790, 2.000000e+00
  %797 = fsub fast float 1.000000e+00, %796
  %798 = fmul fast float %797, %793
  %799 = fadd fast float %798, %796
  %800 = fmul fast float %799, %793
  %801 = fmul fast float %791, 2.000000e+00
  %802 = fsub fast float 1.000000e+00, %801
  %803 = fmul fast float %802, %794
  %804 = fadd fast float %803, %801
  %805 = fmul fast float %804, %794
  %806 = fmul fast float %792, 2.000000e+00
  %807 = fsub fast float 1.000000e+00, %806
  %808 = fmul fast float %807, %795
  %809 = fadd fast float %808, %806
  %810 = fmul fast float %809, %795
  %811 = fmul fast float %800, %800
  %812 = fmul fast float %805, %805
  %813 = fmul fast float %810, %810
  br label %830

; <label>:814                                     ; preds = %777
  %815 = fmul fast float %299, %299
  %816 = fmul fast float %303, %303
  %817 = fmul fast float %307, %307
  %818 = fadd fast float %815, -1.000000e+00
  %819 = fadd fast float %816, -1.000000e+00
  %820 = fadd fast float %817, -1.000000e+00
  %821 = fmul fast float %666, %818
  %822 = fmul fast float %666, %819
  %823 = fmul fast float %666, %820
  %824 = fadd fast float %821, 1.000000e+00
  %825 = fadd fast float %822, 1.000000e+00
  %826 = fadd fast float %823, 1.000000e+00
  %827 = fmul fast float %824, %641
  %828 = fmul fast float %825, %642
  %829 = fmul fast float %826, %643
  br label %830

; <label>:830                                     ; preds = %814, %780, %671, %626
  %831 = phi float [ %776, %671 ], [ %652, %780 ], [ %652, %814 ], [ 0x3FA23C0BE0000000, %626 ]
  %832 = phi float [ %768, %671 ], [ %811, %780 ], [ %827, %814 ], [ 1.000000e+00, %626 ]
  %833 = phi float [ %769, %671 ], [ %812, %780 ], [ %828, %814 ], [ 1.000000e+00, %626 ]
  %834 = phi float [ %770, %671 ], [ %813, %780 ], [ %829, %814 ], [ 1.000000e+00, %626 ]
  %835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.i32 %835, 1
  %837 = and i32 %836, 1
  %838 = icmp ne i32 %837, 0
  %839 = add i32 %71, 132
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 32
  %843 = icmp ne i32 %842, 0
  %844 = and i1 %838, %843
  %845 = select i1 %844, float 1.000000e+00, float %832
  %846 = select i1 %844, float 0x3FD3333340000000, float %833
  %847 = select i1 %844, float 0x3FD3333340000000, float %834
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 32
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %992, label %852

; <label>:852                                     ; preds = %830
  %853 = add i32 %71, 44
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = add i32 %71, 220
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = add i32 %858, 0
  %860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %861 = add i32 %71, 184
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = extractvalue %dx.types.ResRet.i32 %862, 1
  %865 = extractvalue %dx.types.ResRet.i32 %862, 2
  %866 = extractvalue %dx.types.ResRet.i32 %862, 3
  %867 = bitcast i32 %864 to float
  %868 = bitcast i32 %865 to float
  %869 = bitcast i32 %866 to float
  %870 = add i32 %71, 200
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = extractvalue %dx.types.ResRet.i32 %871, 1
  %874 = extractvalue %dx.types.ResRet.i32 %871, 2
  %875 = extractvalue %dx.types.ResRet.i32 %871, 3
  %876 = bitcast i32 %873 to float
  %877 = bitcast i32 %874 to float
  %878 = bitcast i32 %875 to float
  %879 = fmul fast float %867, %439
  %880 = fmul fast float %867, %440
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %883 = fmul fast float %882, %868
  %884 = fmul fast float %882, %869
  %885 = fadd fast float %883, %879
  %886 = fadd fast float %884, %880
  %887 = fmul fast float %876, %439
  %888 = fmul fast float %876, %440
  %889 = fmul fast float %882, %877
  %890 = fmul fast float %882, %878
  %891 = fadd fast float %889, %887
  %892 = fadd fast float %890, %888
  %893 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %860, i32 0)  ; GetDimensions(handle,mipLevel)
  %894 = extractvalue %dx.types.Dimensions %893, 3
  %895 = sitofp i32 %894 to float
  %896 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %860, %dx.types.Handle %96, float %885, float %886, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %897 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %860, %dx.types.Handle %96, float %891, float %892, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %898 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %860, %dx.types.Handle %96, float %885, float %886, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 0
  %900 = extractvalue %dx.types.ResRet.f32 %898, 1
  %901 = extractvalue %dx.types.ResRet.f32 %898, 2
  %902 = extractvalue %dx.types.ResRet.f32 %898, 3
  %903 = and i32 %855, 255
  %904 = uitofp i32 %903 to float
  %905 = lshr i32 %855, 8
  %906 = and i32 %905, 255
  %907 = uitofp i32 %906 to float
  %908 = lshr i32 %855, 16
  %909 = and i32 %908, 255
  %910 = uitofp i32 %909 to float
  %911 = fmul fast float %910, 0x3F70101000000000
  %912 = fmul fast float %899, %904
  %913 = fadd fast float %912, %907
  %914 = fadd fast float %900, -5.000000e-01
  %915 = fadd fast float %902, -5.000000e-01
  %916 = fmul fast float %914, %911
  %917 = fmul fast float %915, %911
  %918 = fadd fast float %916, 5.000000e-01
  %919 = fadd fast float %917, 5.000000e-01
  %920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %860, %dx.types.Handle %96, float %891, float %892, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 2
  %924 = extractvalue %dx.types.ResRet.f32 %920, 3
  %925 = fmul fast float %921, %904
  %926 = fadd fast float %925, %907
  %927 = fadd fast float %922, -5.000000e-01
  %928 = fadd fast float %924, -5.000000e-01
  %929 = fmul fast float %927, %911
  %930 = fmul fast float %928, %911
  %931 = fadd fast float %929, 5.000000e-01
  %932 = fadd fast float %930, 5.000000e-01
  %933 = fmul fast float %918, 2.000000e+00
  %934 = fadd fast float %933, -1.000000e+00
  %935 = fmul fast float %919, 2.000000e+00
  %936 = fadd fast float %935, -1.000000e+00
  %937 = fadd fast float %934, %936
  %938 = fmul fast float %937, 5.000000e-01
  %939 = fsub fast float %934, %936
  %940 = fmul fast float %939, 5.000000e-01
  %941 = call float @dx.op.unary.f32(i32 6, float %938)  ; FAbs(value)
  %942 = fsub fast float 1.000000e+00, %941
  %943 = call float @dx.op.unary.f32(i32 6, float %940)  ; FAbs(value)
  %944 = fsub fast float %942, %943
  %945 = call float @dx.op.dot3.f32(i32 55, float %938, float %940, float %944, float %938, float %940, float %944)  ; Dot3(ax,ay,az,bx,by,bz)
  %946 = call float @dx.op.unary.f32(i32 25, float %945)  ; Rsqrt(value)
  %947 = fmul fast float %931, 2.000000e+00
  %948 = fadd fast float %947, -1.000000e+00
  %949 = fmul fast float %932, 2.000000e+00
  %950 = fadd fast float %949, -1.000000e+00
  %951 = fadd fast float %948, %950
  %952 = fmul fast float %951, 5.000000e-01
  %953 = fsub fast float %948, %950
  %954 = fmul fast float %953, 5.000000e-01
  %955 = call float @dx.op.unary.f32(i32 6, float %952)  ; FAbs(value)
  %956 = fsub fast float 1.000000e+00, %955
  %957 = call float @dx.op.unary.f32(i32 6, float %954)  ; FAbs(value)
  %958 = fsub fast float %956, %957
  %959 = call float @dx.op.dot3.f32(i32 55, float %952, float %954, float %958, float %952, float %954, float %958)  ; Dot3(ax,ay,az,bx,by,bz)
  %960 = call float @dx.op.unary.f32(i32 25, float %959)  ; Rsqrt(value)
  %961 = fadd fast float %895, -1.000000e+00
  %962 = fsub fast float %961, %896
  %963 = fmul fast float %962, 5.000000e-01
  %964 = call float @dx.op.unary.f32(i32 7, float %963)  ; Saturate(value)
  %965 = fsub fast float %961, %897
  %966 = fmul fast float %965, 5.000000e-01
  %967 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  %968 = bitcast i32 %863 to float
  %969 = bitcast i32 %872 to float
  %970 = fmul fast float %938, %968
  %971 = fmul fast float %970, %946
  %972 = fmul fast float %971, %964
  %973 = fmul fast float %940, %968
  %974 = fmul fast float %973, %946
  %975 = fmul fast float %974, %964
  %976 = fmul fast float %960, %969
  %977 = fmul fast float %976, %952
  %978 = fmul fast float %977, %967
  %979 = fmul fast float %976, %954
  %980 = fmul fast float %979, %967
  %981 = fadd fast float %978, %972
  %982 = fadd fast float %980, %975
  %983 = fmul fast float %901, %968
  %984 = fmul fast float %923, %969
  %985 = fadd fast float %984, %983
  %986 = fmul fast float %913, %968
  %987 = fmul fast float %926, %969
  %988 = fadd fast float %987, %986
  %989 = fmul fast float %988, 0x3F70101000000000
  %990 = call float @dx.op.dot2.f32(i32 54, float %981, float %982, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %991 = call float @dx.op.dot2.f32(i32 54, float %981, float %982, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %992

; <label>:992                                     ; preds = %852, %830
  %993 = phi float [ %989, %852 ], [ 0x3FD6666660000000, %830 ]
  %994 = phi float [ %990, %852 ], [ 0.000000e+00, %830 ]
  %995 = phi float [ %991, %852 ], [ 0.000000e+00, %830 ]
  %996 = phi float [ %985, %852 ], [ 1.000000e+00, %830 ]
  %997 = add i32 %71, 64
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = lshr i32 %999, 22
  %1001 = shl nuw nsw i32 %1000, 5
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 64
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1040, label %1007

; <label>:1007                                    ; preds = %992
  %1008 = add i32 %71, 224
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = add i32 %1010, 0
  %1012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 131072
  %1016 = icmp eq i32 %1015, 0
  %1017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1012, %dx.types.Handle %96, float %439, float %440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.ResRet.f32 %1017, 2
  %1021 = fmul fast float %1018, %287
  %1022 = fmul fast float %1019, %290
  %1023 = fmul fast float %1020, %293
  br i1 %1016, label %1030, label %1024

; <label>:1024                                    ; preds = %1007
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 0
  %1027 = fmul fast float %1026, %1021
  %1028 = fmul fast float %1026, %1022
  %1029 = fmul fast float %1026, %1023
  br label %1030

; <label>:1030                                    ; preds = %1024, %1007
  %1031 = phi float [ %1027, %1024 ], [ %1021, %1007 ]
  %1032 = phi float [ %1028, %1024 ], [ %1022, %1007 ]
  %1033 = phi float [ %1029, %1024 ], [ %1023, %1007 ]
  %1034 = fmul fast float %1031, %1002
  %1035 = select i1 %270, float %1034, float %1031
  %1036 = call float @dx.op.dot3.f32(i32 55, float %1035, float %1032, float %1033, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1037 = select i1 %270, float 0.000000e+00, float %1031
  %1038 = select i1 %270, float %1036, float %1032
  %1039 = select i1 %270, float 0.000000e+00, float %1033
  br label %1040

; <label>:1040                                    ; preds = %1030, %992
  %1041 = phi float [ %1037, %1030 ], [ 0.000000e+00, %992 ]
  %1042 = phi float [ %1038, %1030 ], [ 0.000000e+00, %992 ]
  %1043 = phi float [ %1039, %1030 ], [ 0.000000e+00, %992 ]
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = and i32 %1045, 1024
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1078, label %1048

; <label>:1048                                    ; preds = %1040
  %1049 = add i32 %71, 56
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = and i32 %1051, 255
  %1053 = uitofp i32 %1052 to float
  %1054 = fmul fast float %1053, 0x3F70101020000000
  %1055 = lshr i32 %1051, 8
  %1056 = and i32 %1055, 255
  %1057 = uitofp i32 %1056 to float
  %1058 = fmul fast float %1057, 0x3F70101020000000
  %1059 = lshr i32 %1051, 16
  %1060 = and i32 %1059, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = fmul fast float %1061, 0x3F70101020000000
  %1063 = fmul fast float %1054, %1054
  %1064 = fmul fast float %1058, %1058
  %1065 = fmul fast float %1062, %1062
  %1066 = add i32 %71, 240
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = add i32 %1068, 0
  %1070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1070, %dx.types.Handle %97, float %439, float %440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1075 = fmul fast float %1063, %1072
  %1076 = fmul fast float %1064, %1073
  %1077 = fmul fast float %1065, %1074
  br label %1078

; <label>:1078                                    ; preds = %1048, %1040
  %1079 = phi float [ %1075, %1048 ], [ 0.000000e+00, %1040 ]
  %1080 = phi float [ %1076, %1048 ], [ 0.000000e+00, %1040 ]
  %1081 = phi float [ %1077, %1048 ], [ 0.000000e+00, %1040 ]
  %1082 = fcmp fast ogt float %1079, 0.000000e+00
  %1083 = fcmp fast ogt float %1080, 0.000000e+00
  %1084 = fcmp fast ogt float %1081, 0.000000e+00
  %1085 = call float @dx.op.unary.f32(i32 23, float %1079)  ; Log(value)
  %1086 = call float @dx.op.unary.f32(i32 23, float %1080)  ; Log(value)
  %1087 = call float @dx.op.unary.f32(i32 23, float %1081)  ; Log(value)
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = lshr i32 %1089, 7
  %1091 = and i32 %1090, 32752
  %1092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1091)  ; LegacyF16ToF32(value)
  %1093 = fmul fast float %1085, 0xBFE62E4300000000
  %1094 = fmul fast float %1093, %1092
  %1095 = fmul fast float %1086, 0xBFE62E4300000000
  %1096 = fmul fast float %1095, %1092
  %1097 = fmul fast float %1087, 0xBFE62E4300000000
  %1098 = fmul fast float %1097, %1092
  %1099 = select i1 %1082, float %1094, float 1.270000e+02
  %1100 = select i1 %1083, float %1096, float 1.270000e+02
  %1101 = select i1 %1084, float %1098, float 1.270000e+02
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = and i32 %1103, 10240
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1126, label %1106

; <label>:1106                                    ; preds = %1078
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 2048
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1126, label %1111

; <label>:1111                                    ; preds = %1106
  %1112 = add i32 %71, 244
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %1114, 0
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1116, %dx.types.Handle %97, float %439, float %440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 3
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = shl i32 %1120, 4
  %1122 = and i32 %1121, 32752
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = fmul fast float %1123, %1118
  %1125 = call float @dx.op.binary.f32(i32 35, float %1124, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1126

; <label>:1126                                    ; preds = %1111, %1106, %1078
  %1127 = phi float [ %1125, %1111 ], [ 0x3F70101020000000, %1106 ], [ 0x3F70101020000000, %1078 ]
  %1128 = add i32 %71, 48
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = and i32 %1130, 255
  %1132 = uitofp i32 %1131 to float
  %1133 = lshr i32 %1130, 8
  %1134 = and i32 %1133, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = call float @dx.op.dot3.f32(i32 55, float %845, float %846, float %847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1137 = fmul fast float %1135, %1136
  %1138 = fadd fast float %1137, %1132
  %1139 = fmul fast float %1138, 0x3F70101020000000
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  br label %1141

; <label>:1141                                    ; preds = %1126, %338
  %1142 = phi float [ 0.000000e+00, %338 ], [ %994, %1126 ]
  %1143 = phi float [ 0.000000e+00, %338 ], [ %995, %1126 ]
  %1144 = phi float [ 0.000000e+00, %338 ], [ %845, %1126 ]
  %1145 = phi float [ 0.000000e+00, %338 ], [ %846, %1126 ]
  %1146 = phi float [ 0.000000e+00, %338 ], [ %847, %1126 ]
  %1147 = phi float [ 0.000000e+00, %338 ], [ %1041, %1126 ]
  %1148 = phi float [ 0.000000e+00, %338 ], [ %1042, %1126 ]
  %1149 = phi float [ 0.000000e+00, %338 ], [ %1043, %1126 ]
  %1150 = phi float [ 0.000000e+00, %338 ], [ %1099, %1126 ]
  %1151 = phi float [ 0.000000e+00, %338 ], [ %1100, %1126 ]
  %1152 = phi float [ 0.000000e+00, %338 ], [ %1101, %1126 ]
  %1153 = phi float [ 0.000000e+00, %338 ], [ %831, %1126 ]
  %1154 = phi float [ 0.000000e+00, %338 ], [ %627, %1126 ]
  %1155 = phi float [ 0.000000e+00, %338 ], [ %993, %1126 ]
  %1156 = phi float [ 0.000000e+00, %338 ], [ %996, %1126 ]
  %1157 = phi float [ 0.000000e+00, %338 ], [ %1127, %1126 ]
  %1158 = phi float [ 0.000000e+00, %338 ], [ %1140, %1126 ]
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = call float @dx.op.dot2.f32(i32 54, float %1142, float %1143, float %1142, float %1143)  ; Dot2(ax,ay,bx,by)
  %1162 = fmul fast float %1161, 0x3FE3333340000000
  %1163 = fsub fast float 1.000000e+00, %1162
  %1164 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1143, float %1163, float %1142, float %1143, float %1163)  ; Dot3(ax,ay,az,bx,by,bz)
  %1165 = call float @dx.op.unary.f32(i32 25, float %1164)  ; Rsqrt(value)
  %1166 = fmul fast float %1165, %1142
  %1167 = fmul fast float %1165, %1143
  %1168 = fmul fast float %1163, %1165
  %1169 = fmul fast float %1168, %76
  %1170 = fmul fast float %1168, %77
  %1171 = fmul fast float %1168, %78
  %1172 = fmul fast float %1166, %72
  %1173 = fmul fast float %1166, %73
  %1174 = fmul fast float %1166, %74
  %1175 = fadd fast float %1169, %1172
  %1176 = fadd fast float %1170, %1173
  %1177 = fadd fast float %1171, %1174
  %1178 = fmul fast float %1167, %111
  %1179 = fmul fast float %1167, %112
  %1180 = fmul fast float %1167, %113
  %1181 = fadd fast float %1175, %1178
  %1182 = fadd fast float %1176, %1179
  %1183 = fadd fast float %1177, %1180
  %1184 = call float @dx.op.dot3.f32(i32 55, float %1181, float %1182, float %1183, float %1181, float %1182, float %1183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1185 = call float @dx.op.unary.f32(i32 25, float %1184)  ; Rsqrt(value)
  %1186 = fmul fast float %1181, %1185
  %1187 = fmul fast float %1182, %1185
  %1188 = fmul fast float %1183, %1185
  %1189 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %1190 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1191 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %1192 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %1193 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1194 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %1195 = fadd fast float %1189, %147
  %1196 = fadd fast float %1190, %148
  %1197 = fadd fast float %1191, %149
  %1198 = fadd fast float %1192, %147
  %1199 = fadd fast float %1193, %148
  %1200 = fadd fast float %1194, %149
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1204 = extractvalue %dx.types.CBufRet.f32 %1201, 2
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 2
  %1207 = extractvalue %dx.types.CBufRet.f32 %1205, 3
  %1208 = fmul fast float %1202, %100
  %1209 = fmul fast float %1208, %1206
  %1210 = fmul fast float %1203, %101
  %1211 = fmul fast float %1210, %1207
  %1212 = fptoui float %1209 to i32
  %1213 = fptoui float %1211 to i32
  %1214 = fadd fast float %1202, -1.000000e+00
  %1215 = fadd fast float %1203, -1.000000e+00
  %1216 = fptoui float %1214 to i32
  %1217 = fptoui float %1215 to i32
  %1218 = call i32 @dx.op.binary.i32(i32 40, i32 %1212, i32 %1216)  ; UMin(a,b)
  %1219 = call i32 @dx.op.binary.i32(i32 40, i32 %1213, i32 %1217)  ; UMin(a,b)
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 2
  %1222 = extractvalue %dx.types.CBufRet.f32 %1220, 3
  %1223 = fmul fast float %1221, %88
  %1224 = fsub fast float %1223, %1222
  %1225 = fadd fast float %1204, -1.000000e+00
  %1226 = call float @dx.op.binary.f32(i32 36, float %1224, float %1225)  ; FMin(a,b)
  %1227 = fptoui float %1226 to i32
  %1228 = fptoui float %1202 to i32
  %1229 = fptoui float %1203 to i32
  %1230 = mul i32 %1227, %1229
  %1231 = add i32 %1230, %1219
  %1232 = mul i32 %1231, %1228
  %1233 = add i32 %1232, %1218
  %1234 = shl i32 %1233, 2
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 1023
  %1238 = lshr i32 %1236, 10
  %1239 = icmp eq i32 %1237, 0
  br i1 %1239, label %1693, label %1240

; <label>:1240                                    ; preds = %1141
  %1241 = and i32 %1236, 1023
  br label %1242

; <label>:1242                                    ; preds = %1371, %1240
  %1243 = phi float [ %1372, %1371 ], [ 0.000000e+00, %1240 ]
  %1244 = phi float [ %1373, %1371 ], [ %1160, %1240 ]
  %1245 = phi float [ %1374, %1371 ], [ %1158, %1240 ]
  %1246 = phi float [ %1375, %1371 ], [ %1150, %1240 ]
  %1247 = phi float [ %1376, %1371 ], [ %1151, %1240 ]
  %1248 = phi float [ %1377, %1371 ], [ %1152, %1240 ]
  %1249 = phi float [ %1378, %1371 ], [ 0.000000e+00, %1240 ]
  %1250 = phi float [ %1379, %1371 ], [ 0.000000e+00, %1240 ]
  %1251 = phi float [ %1380, %1371 ], [ %1147, %1240 ]
  %1252 = phi float [ %1381, %1371 ], [ %1148, %1240 ]
  %1253 = phi float [ %1382, %1371 ], [ %1149, %1240 ]
  %1254 = phi float [ %1383, %1371 ], [ %1186, %1240 ]
  %1255 = phi float [ %1384, %1371 ], [ %1187, %1240 ]
  %1256 = phi float [ %1385, %1371 ], [ %1188, %1240 ]
  %1257 = phi float [ %1386, %1371 ], [ %1156, %1240 ]
  %1258 = phi float [ %1387, %1371 ], [ %1155, %1240 ]
  %1259 = phi float [ %1388, %1371 ], [ 0.000000e+00, %1240 ]
  %1260 = phi float [ %1389, %1371 ], [ %1153, %1240 ]
  %1261 = phi float [ %1390, %1371 ], [ %1144, %1240 ]
  %1262 = phi float [ %1391, %1371 ], [ %1145, %1240 ]
  %1263 = phi float [ %1392, %1371 ], [ %1146, %1240 ]
  %1264 = phi i32 [ %1321, %1371 ], [ 0, %1240 ]
  %1265 = add nuw nsw i32 %1264, %1238
  %1266 = shl i32 %1265, 2
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = shl i32 %1268, 8
  %1270 = or i32 %1269, 48
  %1271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.ResRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.ResRet.f32 %1271, 2
  %1275 = extractvalue %dx.types.ResRet.f32 %1271, 3
  %1276 = or i32 %1269, 64
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.i32 %1277, 1
  %1280 = or i32 %1269, 80
  %1281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 2
  %1283 = extractvalue %dx.types.ResRet.f32 %1281, 3
  %1284 = or i32 %1269, 96
  %1285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.ResRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.ResRet.f32 %1285, 2
  %1289 = extractvalue %dx.types.ResRet.f32 %1285, 3
  %1290 = or i32 %1269, 112
  %1291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 2
  %1293 = or i32 %1269, 128
  %1294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.ResRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.ResRet.f32 %1294, 2
  %1298 = extractvalue %dx.types.ResRet.f32 %1294, 3
  %1299 = or i32 %1269, 144
  %1300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  %1302 = extractvalue %dx.types.ResRet.f32 %1300, 1
  %1303 = extractvalue %dx.types.ResRet.f32 %1300, 2
  %1304 = extractvalue %dx.types.ResRet.f32 %1300, 3
  %1305 = or i32 %1269, 160
  %1306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.ResRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.ResRet.f32 %1306, 2
  %1310 = extractvalue %dx.types.ResRet.f32 %1306, 3
  %1311 = or i32 %1269, 192
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = or i32 %1269, 208
  %1315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = or i32 %1269, 248
  %1318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = extractvalue %dx.types.ResRet.f32 %1318, 1
  %1321 = add nuw nsw i32 %1264, 1
  %1322 = bitcast float %1275 to i32
  %1323 = and i32 %1322, 2560
  %1324 = icmp eq i32 %1323, 0
  %1325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.f32 %1325, 0
  %1327 = extractvalue %dx.types.ResRet.f32 %1325, 1
  %1328 = extractvalue %dx.types.ResRet.f32 %1325, 2
  %1329 = extractvalue %dx.types.ResRet.f32 %1325, 3
  %1330 = call float @dx.op.dot4.f32(i32 56, float %1326, float %1327, float %1328, float %1329, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1331 = or i32 %1269, 16
  %1332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  %1334 = extractvalue %dx.types.ResRet.f32 %1332, 1
  %1335 = extractvalue %dx.types.ResRet.f32 %1332, 2
  %1336 = extractvalue %dx.types.ResRet.f32 %1332, 3
  %1337 = call float @dx.op.dot4.f32(i32 56, float %1333, float %1334, float %1335, float %1336, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1338 = or i32 %1269, 32
  %1339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.ResRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.ResRet.f32 %1339, 2
  %1343 = extractvalue %dx.types.ResRet.f32 %1339, 3
  %1344 = call float @dx.op.dot4.f32(i32 56, float %1340, float %1341, float %1342, float %1343, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1345 = call float @dx.op.unary.f32(i32 27, float %1330)  ; Round_ni(value)
  %1346 = call float @dx.op.unary.f32(i32 6, float %1345)  ; FAbs(value)
  %1347 = call float @dx.op.unary.f32(i32 27, float %1337)  ; Round_ni(value)
  %1348 = call float @dx.op.unary.f32(i32 6, float %1347)  ; FAbs(value)
  %1349 = call float @dx.op.unary.f32(i32 6, float %1344)  ; FAbs(value)
  %1350 = call float @dx.op.unary.f32(i32 27, float %1349)  ; Round_ni(value)
  %1351 = fadd fast float %1348, %1346
  %1352 = fadd fast float %1351, %1350
  %1353 = fcmp fast oeq float %1352, 0.000000e+00
  %1354 = call float @dx.op.dot4.f32(i32 56, float %1326, float %1327, float %1328, float %1329, float %1195, float %1196, float %1197, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1355 = call float @dx.op.dot4.f32(i32 56, float %1333, float %1334, float %1335, float %1336, float %1195, float %1196, float %1197, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1356 = call float @dx.op.dot4.f32(i32 56, float %1326, float %1327, float %1328, float %1329, float %1198, float %1199, float %1200, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1357 = call float @dx.op.dot4.f32(i32 56, float %1333, float %1334, float %1335, float %1336, float %1198, float %1199, float %1200, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1358 = fsub fast float %1354, %1330
  %1359 = fsub fast float %1356, %1330
  %1360 = fsub fast float %1355, %1337
  %1361 = fsub fast float %1357, %1337
  %1362 = call float @dx.op.dot3.f32(i32 55, float %1272, float %1273, float %1274, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1365 = fadd fast float %1364, %1362
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1368 = fcmp fast ogt float %1366, %1367
  %1369 = and i1 %1353, %1368
  %1370 = and i1 %1324, %1369
  br i1 %1370, label %1394, label %1371

; <label>:1371                                    ; preds = %1679, %1475, %1394, %1242
  %1372 = phi float [ %1243, %1394 ], [ %1478, %1475 ], [ %1478, %1679 ], [ %1243, %1242 ]
  %1373 = phi float [ %1244, %1394 ], [ %1244, %1475 ], [ %1655, %1679 ], [ %1244, %1242 ]
  %1374 = phi float [ %1245, %1394 ], [ %1245, %1475 ], [ %1653, %1679 ], [ %1245, %1242 ]
  %1375 = phi float [ %1246, %1394 ], [ %1246, %1475 ], [ %1631, %1679 ], [ %1246, %1242 ]
  %1376 = phi float [ %1247, %1394 ], [ %1247, %1475 ], [ %1632, %1679 ], [ %1247, %1242 ]
  %1377 = phi float [ %1248, %1394 ], [ %1248, %1475 ], [ %1633, %1679 ], [ %1248, %1242 ]
  %1378 = phi float [ %1249, %1394 ], [ %1249, %1475 ], [ %1602, %1679 ], [ %1249, %1242 ]
  %1379 = phi float [ %1250, %1394 ], [ %1250, %1475 ], [ %1600, %1679 ], [ %1250, %1242 ]
  %1380 = phi float [ %1251, %1394 ], [ %1251, %1475 ], [ %1689, %1679 ], [ %1251, %1242 ]
  %1381 = phi float [ %1252, %1394 ], [ %1252, %1475 ], [ %1690, %1679 ], [ %1252, %1242 ]
  %1382 = phi float [ %1253, %1394 ], [ %1253, %1475 ], [ %1691, %1679 ], [ %1253, %1242 ]
  %1383 = phi float [ %1254, %1394 ], [ %1254, %1475 ], [ %1581, %1679 ], [ %1254, %1242 ]
  %1384 = phi float [ %1255, %1394 ], [ %1255, %1475 ], [ %1582, %1679 ], [ %1255, %1242 ]
  %1385 = phi float [ %1256, %1394 ], [ %1256, %1475 ], [ %1583, %1679 ], [ %1256, %1242 ]
  %1386 = phi float [ %1257, %1394 ], [ %1257, %1475 ], [ %1611, %1679 ], [ %1257, %1242 ]
  %1387 = phi float [ %1258, %1394 ], [ %1258, %1475 ], [ %1608, %1679 ], [ %1258, %1242 ]
  %1388 = phi float [ %1259, %1394 ], [ %1259, %1475 ], [ %1605, %1679 ], [ %1259, %1242 ]
  %1389 = phi float [ %1260, %1394 ], [ %1260, %1475 ], [ %1598, %1679 ], [ %1260, %1242 ]
  %1390 = phi float [ %1261, %1394 ], [ %1261, %1475 ], [ %1593, %1679 ], [ %1261, %1242 ]
  %1391 = phi float [ %1262, %1394 ], [ %1262, %1475 ], [ %1594, %1679 ], [ %1262, %1242 ]
  %1392 = phi float [ %1263, %1394 ], [ %1263, %1475 ], [ %1595, %1679 ], [ %1263, %1242 ]
  %1393 = icmp eq i32 %1321, %1241
  br i1 %1393, label %1692, label %1242

; <label>:1394                                    ; preds = %1242
  %1395 = extractvalue %dx.types.ResRet.f32 %1291, 3
  %1396 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1397 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1398 = extractvalue %dx.types.ResRet.f32 %1281, 1
  %1399 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1400 = extractvalue %dx.types.ResRet.i32 %1277, 3
  %1401 = extractvalue %dx.types.ResRet.i32 %1277, 2
  %1402 = add i32 %1400, 0
  %1403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1402, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1405 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1403, %dx.types.Handle %1404, float %1330, float %1337, float undef, float undef, i32 0, i32 0, i32 undef, float %1358, float %1360, float undef, float %1359, float %1361, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = fmul fast float %1406, %1399
  %1408 = fadd fast float %1407, %1398
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1410 = fmul fast float %1330, %1286
  %1411 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %1337, float %1410)  ; FMad(a,b,c)
  %1412 = fadd fast float %1411, %1397
  %1413 = fmul fast float %1330, %1288
  %1414 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %1337, float %1413)  ; FMad(a,b,c)
  %1415 = fadd fast float %1414, %1396
  %1416 = fmul fast float %1358, %1286
  %1417 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %1360, float %1416)  ; FMad(a,b,c)
  %1418 = fmul fast float %1358, %1288
  %1419 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %1360, float %1418)  ; FMad(a,b,c)
  %1420 = fmul fast float %1359, %1286
  %1421 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %1361, float %1420)  ; FMad(a,b,c)
  %1422 = fmul fast float %1359, %1288
  %1423 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %1361, float %1422)  ; FMad(a,b,c)
  %1424 = add i32 %1401, 0
  %1425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1424, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1426 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1425, %dx.types.Handle %1404, float %1412, float %1415, float undef, float undef, i32 0, i32 0, i32 undef, float %1417, float %1419, float undef, float %1421, float %1423, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  %1428 = and i32 %1322, 1024
  %1429 = icmp ne i32 %1428, 0
  %1430 = fcmp fast ogt float %1427, 0x3FE0101020000000
  %1431 = uitofp i1 %1430 to float
  %1432 = select i1 %1429, float %1431, float %1427
  %1433 = and i32 %1322, 8192
  %1434 = icmp ne i32 %1433, 0
  %1435 = select i1 %1434, float %1395, float 1.000000e+00
  %1436 = fmul fast float %1330, 2.000000e+00
  %1437 = fadd fast float %1436, -1.000000e+00
  %1438 = call float @dx.op.unary.f32(i32 6, float %1437)  ; FAbs(value)
  %1439 = fmul fast float %1438, %1319
  %1440 = fsub fast float %1439, %1319
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = fmul fast float %1337, 2.000000e+00
  %1443 = fadd fast float %1442, -1.000000e+00
  %1444 = call float @dx.op.unary.f32(i32 6, float %1443)  ; FAbs(value)
  %1445 = fmul fast float %1444, %1320
  %1446 = fsub fast float %1445, %1320
  %1447 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  %1448 = fmul fast float %1349, %1282
  %1449 = fsub fast float %1448, %1282
  %1450 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1451 = fmul fast float %1409, %1435
  %1452 = fmul fast float %1451, %1406
  %1453 = fmul fast float %1452, %1441
  %1454 = fmul fast float %1453, %1432
  %1455 = fmul fast float %1454, %1447
  %1456 = fmul fast float %1455, %1450
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1459 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1460 = fsub fast float %1366, %1459
  %1461 = fmul fast float %1460, %1458
  %1462 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  %1463 = fmul fast float %1456, %1283
  %1464 = fadd fast float %1456, %1283
  %1465 = fmul fast float %1464, %1292
  %1466 = fsub fast float %1465, %1292
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1468 = and i32 %1322, 128
  %1469 = icmp ne i32 %1468, 0
  %1470 = select i1 %1469, float %1467, float %1463
  %1471 = fmul fast float %1470, %1462
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1474 = fcmp fast ugt float %1471, %1473
  br i1 %1474, label %1475, label %1371

; <label>:1475                                    ; preds = %1394
  %1476 = select i1 %1434, float %1471, float 0.000000e+00
  %1477 = fadd fast float %1476, %1243
  %1478 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  br i1 %1434, label %1371, label %1479

; <label>:1479                                    ; preds = %1475
  %1480 = and i32 %1322, 4
  %1481 = and i32 %1322, 8
  %1482 = add i32 %1278, 0
  %1483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1482, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1485 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1483, %dx.types.Handle %1484, float %1412, float %1415, float undef, float undef, i32 0, i32 0, i32 undef, float %1417, float %1419, float undef, float %1421, float %1423, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = extractvalue %dx.types.ResRet.f32 %1485, 1
  %1488 = extractvalue %dx.types.ResRet.f32 %1485, 2
  %1489 = extractvalue %dx.types.ResRet.f32 %1485, 3
  %1490 = bitcast float %1304 to i32
  %1491 = and i32 %1490, 255
  %1492 = uitofp i32 %1491 to float
  %1493 = lshr i32 %1490, 8
  %1494 = and i32 %1493, 255
  %1495 = uitofp i32 %1494 to float
  %1496 = fmul fast float %1489, %1492
  %1497 = fadd fast float %1496, %1495
  %1498 = fmul fast float %1497, 0x3F70101000000000
  %1499 = add i32 %1279, 0
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1499, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1500, %dx.types.Handle %1484, float %1412, float %1415, float undef, float undef, i32 0, i32 0, i32 undef, float %1417, float %1419, float undef, float %1421, float %1423, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = extractvalue %dx.types.ResRet.f32 %1501, 1
  %1504 = extractvalue %dx.types.ResRet.f32 %1501, 2
  %1505 = extractvalue %dx.types.ResRet.f32 %1501, 3
  %1506 = bitcast float %1298 to i32
  %1507 = and i32 %1506, 255
  %1508 = uitofp i32 %1507 to float
  %1509 = lshr i32 %1506, 8
  %1510 = and i32 %1509, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = lshr i32 %1506, 16
  %1513 = and i32 %1512, 255
  %1514 = uitofp i32 %1513 to float
  %1515 = fmul fast float %1514, 0x3F70101000000000
  %1516 = fmul fast float %1502, %1508
  %1517 = fadd fast float %1516, %1511
  %1518 = fmul fast float %1517, 0x3F70101000000000
  %1519 = fadd fast float %1503, -5.000000e-01
  %1520 = fadd fast float %1505, -5.000000e-01
  %1521 = fmul fast float %1519, %1515
  %1522 = fmul fast float %1520, %1515
  %1523 = fadd fast float %1521, 5.000000e-01
  %1524 = fadd fast float %1522, 5.000000e-01
  %1525 = fmul fast float %1486, %1307
  %1526 = fmul fast float %1487, %1308
  %1527 = fmul fast float %1488, %1309
  %1528 = fmul fast float %1523, 2.000000e+00
  %1529 = fadd fast float %1528, -1.000000e+00
  %1530 = fmul fast float %1524, 2.000000e+00
  %1531 = fadd fast float %1530, -1.000000e+00
  %1532 = fadd fast float %1529, %1531
  %1533 = fmul fast float %1532, 5.000000e-01
  %1534 = fsub fast float %1529, %1531
  %1535 = fmul fast float %1534, 5.000000e-01
  %1536 = call float @dx.op.unary.f32(i32 6, float %1533)  ; FAbs(value)
  %1537 = fsub fast float 1.000000e+00, %1536
  %1538 = call float @dx.op.unary.f32(i32 6, float %1535)  ; FAbs(value)
  %1539 = fsub fast float %1537, %1538
  %1540 = call float @dx.op.dot3.f32(i32 55, float %1533, float %1535, float %1539, float %1533, float %1535, float %1539)  ; Dot3(ax,ay,az,bx,by,bz)
  %1541 = call float @dx.op.unary.f32(i32 25, float %1540)  ; Rsqrt(value)
  %1542 = fmul fast float %1533, %1541
  %1543 = fmul fast float %1535, %1541
  %1544 = fmul fast float %1541, %1539
  %1545 = fmul fast float %1544, %1272
  %1546 = fmul fast float %1544, %1273
  %1547 = fmul fast float %1544, %1274
  %1548 = fmul fast float %1542, %1295
  %1549 = fmul fast float %1542, %1296
  %1550 = fmul fast float %1542, %1297
  %1551 = fadd fast float %1548, %1545
  %1552 = fadd fast float %1549, %1546
  %1553 = fadd fast float %1550, %1547
  %1554 = fmul fast float %1543, %1301
  %1555 = fmul fast float %1543, %1302
  %1556 = fmul fast float %1543, %1303
  %1557 = fadd fast float %1551, %1554
  %1558 = fadd fast float %1552, %1555
  %1559 = fadd fast float %1553, %1556
  %1560 = call float @dx.op.dot3.f32(i32 55, float %1557, float %1558, float %1559, float %1557, float %1558, float %1559)  ; Dot3(ax,ay,az,bx,by,bz)
  %1561 = call float @dx.op.unary.f32(i32 25, float %1560)  ; Rsqrt(value)
  %1562 = fmul fast float %1557, %1561
  %1563 = fmul fast float %1558, %1561
  %1564 = fmul fast float %1559, %1561
  %1565 = icmp ne i32 %1481, 0
  %1566 = select i1 %1565, float 1.000000e+00, float 0.000000e+00
  %1567 = fmul fast float %1471, %1566
  %1568 = and i32 %1322, 1
  %1569 = icmp eq i32 %1568, 0
  br i1 %1569, label %1570, label %1574

; <label>:1570                                    ; preds = %1479
  %1571 = fsub fast float %1562, %1254
  %1572 = fsub fast float %1563, %1255
  %1573 = fsub fast float %1564, %1256
  br label %1574

; <label>:1574                                    ; preds = %1570, %1479
  %1575 = phi float [ %1571, %1570 ], [ %1562, %1479 ]
  %1576 = phi float [ %1572, %1570 ], [ %1563, %1479 ]
  %1577 = phi float [ %1573, %1570 ], [ %1564, %1479 ]
  %1578 = fmul float %1577, %1567
  %1579 = fmul float %1576, %1567
  %1580 = fmul float %1575, %1567
  %1581 = fadd fast float %1580, %1254
  %1582 = fadd fast float %1579, %1255
  %1583 = fadd fast float %1578, %1256
  %1584 = icmp ne i32 %1480, 0
  %1585 = select i1 %1584, float 1.000000e+00, float 0.000000e+00
  %1586 = fmul fast float %1471, %1585
  %1587 = fsub fast float %1525, %1261
  %1588 = fsub fast float %1526, %1262
  %1589 = fsub fast float %1527, %1263
  %1590 = fmul fast float %1587, %1586
  %1591 = fmul fast float %1588, %1586
  %1592 = fmul fast float %1589, %1586
  %1593 = fadd fast float %1590, %1261
  %1594 = fadd fast float %1591, %1262
  %1595 = fadd fast float %1592, %1263
  %1596 = fsub fast float %1498, %1260
  %1597 = fmul fast float %1596, %1586
  %1598 = fadd fast float %1597, %1260
  %1599 = fmul fast float %1586, %1250
  %1600 = fsub fast float %1250, %1599
  %1601 = fmul fast float %1586, %1249
  %1602 = fsub fast float %1249, %1601
  %1603 = bitcast float %1316 to i32
  %1604 = fadd fast float %1471, %1259
  %1605 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1606 = fsub fast float %1518, %1258
  %1607 = fmul fast float %1606, %1567
  %1608 = fadd fast float %1607, %1258
  %1609 = fsub fast float %1504, %1257
  %1610 = fmul fast float %1609, %1567
  %1611 = fadd fast float %1610, %1257
  br i1 %1569, label %1620, label %1612

; <label>:1612                                    ; preds = %1574
  %1613 = and i32 %1322, 32768
  %1614 = icmp eq i32 %1613, 0
  br i1 %1614, label %1630, label %1615

; <label>:1615                                    ; preds = %1612
  %1616 = fmul fast float %1567, 1.270000e+02
  %1617 = fadd fast float %1616, %1246
  %1618 = fadd fast float %1616, %1247
  %1619 = fadd fast float %1616, %1248
  br label %1630

; <label>:1620                                    ; preds = %1574
  %1621 = fsub fast float 1.270000e+02, %1246
  %1622 = fsub fast float 1.270000e+02, %1247
  %1623 = fsub fast float 1.270000e+02, %1248
  %1624 = fmul fast float %1567, %1621
  %1625 = fmul fast float %1567, %1622
  %1626 = fmul fast float %1567, %1623
  %1627 = fadd fast float %1624, %1246
  %1628 = fadd fast float %1625, %1247
  %1629 = fadd fast float %1626, %1248
  br label %1630

; <label>:1630                                    ; preds = %1620, %1615, %1612
  %1631 = phi float [ %1617, %1615 ], [ %1246, %1612 ], [ %1627, %1620 ]
  %1632 = phi float [ %1618, %1615 ], [ %1247, %1612 ], [ %1628, %1620 ]
  %1633 = phi float [ %1619, %1615 ], [ %1248, %1612 ], [ %1629, %1620 ]
  %1634 = call float @dx.op.dot3.f32(i32 55, float %1525, float %1526, float %1527, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = fmul fast float %1637, %1634
  %1639 = fadd fast float %1638, %1636
  %1640 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1641 = bitcast float %1310 to i32
  %1642 = and i32 %1641, 65535
  %1643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1642)  ; LegacyF16ToF32(value)
  %1644 = lshr i32 %1641, 16
  %1645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1644)  ; LegacyF16ToF32(value)
  %1646 = fcmp fast oge float %1643, 0.000000e+00
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = select i1 %1646, float %1643, float %1648
  %1650 = fadd fast float %1649, %1645
  %1651 = fsub fast float %1640, %1245
  %1652 = fmul fast float %1651, %1471
  %1653 = fadd fast float %1652, %1245
  %1654 = fmul fast float %1650, %1471
  %1655 = call float @dx.op.binary.f32(i32 35, float %1244, float %1654)  ; FMax(a,b)
  %1656 = and i32 %1322, 16
  %1657 = icmp eq i32 %1656, 0
  br i1 %1657, label %1679, label %1658

; <label>:1658                                    ; preds = %1630
  %1659 = add i32 %1313, 0
  %1660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1659, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1661 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1660, %dx.types.Handle %1484, float %1412, float %1415, float undef, float undef, i32 0, i32 0, i32 undef, float %1417, float %1419, float undef, float %1421, float %1423, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.ResRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.ResRet.f32 %1661, 2
  %1665 = and i32 %1603, 65535
  %1666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1665)  ; LegacyF16ToF32(value)
  %1667 = fmul fast float %1662, %1307
  %1668 = fmul fast float %1663, %1308
  %1669 = fmul fast float %1664, %1309
  %1670 = and i32 %1322, 16384
  %1671 = icmp ne i32 %1670, 0
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1674 = select i1 %1671, float %1673, float 1.000000e+00
  %1675 = fmul fast float %1674, %1666
  %1676 = fmul fast float %1667, %1675
  %1677 = fmul fast float %1668, %1675
  %1678 = fmul fast float %1669, %1675
  br label %1679

; <label>:1679                                    ; preds = %1658, %1630
  %1680 = phi float [ %1676, %1658 ], [ 0.000000e+00, %1630 ]
  %1681 = phi float [ %1677, %1658 ], [ 0.000000e+00, %1630 ]
  %1682 = phi float [ %1678, %1658 ], [ 0.000000e+00, %1630 ]
  %1683 = fsub fast float %1680, %1251
  %1684 = fsub fast float %1681, %1252
  %1685 = fsub fast float %1682, %1253
  %1686 = fmul fast float %1683, %1471
  %1687 = fmul fast float %1684, %1471
  %1688 = fmul fast float %1685, %1471
  %1689 = fadd fast float %1686, %1251
  %1690 = fadd fast float %1687, %1252
  %1691 = fadd fast float %1688, %1253
  br label %1371

; <label>:1692                                    ; preds = %1371
  br label %1693

; <label>:1693                                    ; preds = %1692, %1141
  %1694 = phi float [ 0.000000e+00, %1141 ], [ %1372, %1692 ]
  %1695 = phi float [ %1160, %1141 ], [ %1373, %1692 ]
  %1696 = phi float [ %1158, %1141 ], [ %1374, %1692 ]
  %1697 = phi float [ %1150, %1141 ], [ %1375, %1692 ]
  %1698 = phi float [ %1151, %1141 ], [ %1376, %1692 ]
  %1699 = phi float [ %1152, %1141 ], [ %1377, %1692 ]
  %1700 = phi float [ 0.000000e+00, %1141 ], [ %1378, %1692 ]
  %1701 = phi float [ 0.000000e+00, %1141 ], [ %1379, %1692 ]
  %1702 = phi float [ %1147, %1141 ], [ %1380, %1692 ]
  %1703 = phi float [ %1148, %1141 ], [ %1381, %1692 ]
  %1704 = phi float [ %1149, %1141 ], [ %1382, %1692 ]
  %1705 = phi float [ %1186, %1141 ], [ %1383, %1692 ]
  %1706 = phi float [ %1187, %1141 ], [ %1384, %1692 ]
  %1707 = phi float [ %1188, %1141 ], [ %1385, %1692 ]
  %1708 = phi float [ %1156, %1141 ], [ %1386, %1692 ]
  %1709 = phi float [ %1155, %1141 ], [ %1387, %1692 ]
  %1710 = phi float [ 0.000000e+00, %1141 ], [ %1388, %1692 ]
  %1711 = phi float [ %1153, %1141 ], [ %1389, %1692 ]
  %1712 = phi float [ %1144, %1141 ], [ %1390, %1692 ]
  %1713 = phi float [ %1145, %1141 ], [ %1391, %1692 ]
  %1714 = phi float [ %1146, %1141 ], [ %1392, %1692 ]
  %1715 = call float @dx.op.dot3.f32(i32 55, float %1705, float %1706, float %1707, float %1705, float %1706, float %1707)  ; Dot3(ax,ay,az,bx,by,bz)
  %1716 = call float @dx.op.unary.f32(i32 25, float %1715)  ; Rsqrt(value)
  %1717 = fmul fast float %1716, %1705
  %1718 = fmul fast float %1716, %1706
  %1719 = fmul fast float %1716, %1707
  %1720 = fadd fast float %1710, %1154
  %1721 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1722 = call float @dx.op.dot3.f32(i32 55, float %1717, float %1718, float %1719, float %1717, float %1718, float %1719)  ; Dot3(ax,ay,az,bx,by,bz)
  %1723 = call float @dx.op.unary.f32(i32 25, float %1722)  ; Rsqrt(value)
  %1724 = fmul fast float %1723, %1717
  %1725 = fmul fast float %1723, %1718
  %1726 = fmul fast float %1723, %1719
  %1727 = add i32 %71, 168
  %1728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1727, i32 undef)  ; BufferLoad(srv,index,wot)
  %1729 = extractvalue %dx.types.ResRet.i32 %1728, 0
  %1730 = extractvalue %dx.types.ResRet.i32 %1728, 1
  %1731 = extractvalue %dx.types.ResRet.i32 %1728, 2
  %1732 = extractvalue %dx.types.ResRet.i32 %1728, 3
  %1733 = bitcast i32 %1729 to float
  %1734 = bitcast i32 %1730 to float
  %1735 = bitcast i32 %1731 to float
  %1736 = bitcast i32 %1732 to float
  %1737 = fsub fast float %1712, %1733
  %1738 = fsub fast float %1713, %1734
  %1739 = fsub fast float %1714, %1735
  %1740 = fmul fast float %1737, %210
  %1741 = fmul fast float %1738, %210
  %1742 = fmul fast float %1739, %210
  %1743 = fadd fast float %1740, %1733
  %1744 = fadd fast float %1741, %1734
  %1745 = fadd fast float %1742, %1735
  %1746 = fsub fast float %1721, %1736
  %1747 = fmul fast float %1746, %210
  %1748 = fadd fast float %1747, %1736
  %1749 = fadd fast float %1711, 0xBFB99999A0000000
  %1750 = call float @dx.op.unary.f32(i32 7, float %1749)  ; Saturate(value)
  %1751 = fmul fast float %1750, 0x3FF1C71C80000000
  %1752 = call float @dx.op.binary.f32(i32 36, float %1711, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1753 = fsub fast float 1.000000e+00, %1751
  %1754 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1755 = fmul fast float %1743, %1754
  %1756 = fmul fast float %1744, %1754
  %1757 = fmul fast float %1745, %1754
  %1758 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1759 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  %1760 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  %1761 = fmul fast float %1743, %1751
  %1762 = fmul fast float %1744, %1751
  %1763 = fmul fast float %1745, %1751
  %1764 = fadd fast float %1761, %1752
  %1765 = fadd fast float %1762, %1752
  %1766 = fadd fast float %1763, %1752
  %1767 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1768 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1769 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1770 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1771 = call float @dx.op.binary.f32(i32 36, float %1697, float 1.270000e+02)  ; FMin(a,b)
  %1772 = call float @dx.op.binary.f32(i32 36, float %1698, float 1.270000e+02)  ; FMin(a,b)
  %1773 = call float @dx.op.binary.f32(i32 36, float %1699, float 1.270000e+02)  ; FMin(a,b)
  %1774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.i32 %1774, 3
  %1776 = and i32 %1775, 8
  %1777 = icmp ne i32 %1776, 0
  %1778 = call float @dx.op.binary.f32(i32 35, float %1758, float %1743)  ; FMax(a,b)
  %1779 = call float @dx.op.binary.f32(i32 35, float %1759, float %1743)  ; FMax(a,b)
  %1780 = call float @dx.op.binary.f32(i32 35, float %1760, float %1743)  ; FMax(a,b)
  %1781 = call float @dx.op.dot3.f32(i32 55, float %1758, float %1759, float %1760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1782 = select i1 %270, float %1743, float %1758
  %1783 = select i1 %270, float %1781, float %1759
  %1784 = select i1 %270, float 1.000000e+00, float %1760
  %1785 = select i1 %1777, float %1778, float %1782
  %1786 = select i1 %1777, float %1779, float %1783
  %1787 = select i1 %1777, float %1780, float %1784
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1792 = fadd fast float %1789, %147
  %1793 = fadd fast float %1790, %148
  %1794 = fadd fast float %1791, %149
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.CBufRet.f32 %1795, 1
  %1798 = fsub fast float %1792, %1796
  %1799 = fsub fast float %1793, %1797
  %1800 = fmul fast float %1798, %1798
  %1801 = fmul fast float %1799, %1799
  %1802 = fadd fast float %1800, %1801
  %1803 = call float @dx.op.unary.f32(i32 24, float %1802)  ; Sqrt(value)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1795, 2
  %1805 = fcmp fast olt float %1803, %1804
  br i1 %1805, label %1806, label %1873

; <label>:1806                                    ; preds = %1693
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 0
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 0
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 0
  %1813 = extractvalue %dx.types.CBufRet.f32 %1807, 1
  %1814 = extractvalue %dx.types.CBufRet.f32 %1809, 1
  %1815 = extractvalue %dx.types.CBufRet.f32 %1811, 1
  %1816 = extractvalue %dx.types.CBufRet.f32 %1807, 3
  %1817 = extractvalue %dx.types.CBufRet.f32 %1809, 3
  %1818 = extractvalue %dx.types.CBufRet.f32 %1811, 3
  %1819 = fadd fast float %1816, %1792
  %1820 = fadd fast float %1817, %1793
  %1821 = fadd fast float %1818, %1794
  %1822 = fmul fast float %1819, %1808
  %1823 = call float @dx.op.tertiary.f32(i32 46, float %1820, float %1810, float %1822)  ; FMad(a,b,c)
  %1824 = call float @dx.op.tertiary.f32(i32 46, float %1821, float %1812, float %1823)  ; FMad(a,b,c)
  %1825 = fmul fast float %1819, %1813
  %1826 = call float @dx.op.tertiary.f32(i32 46, float %1820, float %1814, float %1825)  ; FMad(a,b,c)
  %1827 = call float @dx.op.tertiary.f32(i32 46, float %1821, float %1815, float %1826)  ; FMad(a,b,c)
  %1828 = fsub fast float %1824, %1816
  %1829 = fsub fast float %1827, %1817
  %1830 = fsub fast float %1828, %1796
  %1831 = fadd fast float %1830, %1804
  %1832 = fsub fast float %1829, %1797
  %1833 = fadd fast float %1832, %1804
  %1834 = extractvalue %dx.types.CBufRet.f32 %1795, 3
  %1835 = fmul fast float %1831, %1834
  %1836 = fmul fast float %1833, %1834
  %1837 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  %1838 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1839 = fsub fast float 1.000000e+00, %1837
  %1840 = fsub fast float 1.000000e+00, %1838
  %1841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = fcmp fast ugt float %1842, 0.000000e+00
  br i1 %1843, label %1844, label %2147

; <label>:1844                                    ; preds = %1806
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 2
  %1847 = fmul fast float %1846, %1842
  %1848 = extractvalue %dx.types.CBufRet.f32 %1845, 3
  %1849 = fadd fast float %1848, %1847
  %1850 = extractvalue %dx.types.CBufRet.f32 %1811, 2
  %1851 = fadd fast float %1849, %1818
  %1852 = fmul fast float %1824, %1812
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %1827, float %1815, float %1852)  ; FMad(a,b,c)
  %1854 = call float @dx.op.tertiary.f32(i32 46, float %1851, float %1850, float %1853)  ; FMad(a,b,c)
  %1855 = fsub fast float %1854, %1818
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 2
  %1858 = fsub fast float %1855, %1857
  %1859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1860 = extractvalue %dx.types.ResRet.f32 %1859, 0
  %1861 = extractvalue %dx.types.ResRet.f32 %1859, 1
  %1862 = extractvalue %dx.types.ResRet.f32 %1859, 2
  %1863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1864 = extractvalue %dx.types.ResRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.ResRet.f32 %1863, 1
  %1866 = extractvalue %dx.types.ResRet.f32 %1863, 2
  %1867 = fadd fast float %1864, %1860
  %1868 = fmul fast float %1867, 0x3F847AE140000000
  %1869 = fadd fast float %1865, %1861
  %1870 = fmul fast float %1869, 0x3F847AE140000000
  %1871 = fadd fast float %1866, %1862
  %1872 = fmul fast float %1871, 0x3F847AE140000000
  br label %2147

; <label>:1873                                    ; preds = %1693
  %1874 = and i32 %246, 1
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %2147, label %1876

; <label>:1876                                    ; preds = %1873
  %1877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1877, 0
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 0
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.CBufRet.f32 %1877, 1
  %1884 = extractvalue %dx.types.CBufRet.f32 %1879, 1
  %1885 = extractvalue %dx.types.CBufRet.f32 %1881, 1
  %1886 = extractvalue %dx.types.CBufRet.f32 %1877, 3
  %1887 = extractvalue %dx.types.CBufRet.f32 %1879, 3
  %1888 = extractvalue %dx.types.CBufRet.f32 %1881, 3
  %1889 = fadd fast float %1886, %1792
  %1890 = fadd fast float %1887, %1793
  %1891 = fadd fast float %1888, %1794
  %1892 = fmul fast float %1889, %1878
  %1893 = call float @dx.op.tertiary.f32(i32 46, float %1890, float %1880, float %1892)  ; FMad(a,b,c)
  %1894 = call float @dx.op.tertiary.f32(i32 46, float %1891, float %1882, float %1893)  ; FMad(a,b,c)
  %1895 = fmul fast float %1889, %1883
  %1896 = call float @dx.op.tertiary.f32(i32 46, float %1890, float %1884, float %1895)  ; FMad(a,b,c)
  %1897 = call float @dx.op.tertiary.f32(i32 46, float %1891, float %1885, float %1896)  ; FMad(a,b,c)
  %1898 = fsub fast float %1894, %1886
  %1899 = fsub fast float %1897, %1887
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1904 = extractvalue %dx.types.CBufRet.f32 %1900, 3
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 3
  %1907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.i32 %1907, 0
  %1909 = extractvalue %dx.types.CBufRet.i32 %1907, 1
  %1910 = udiv i32 %1909, %1908
  %1911 = fsub fast float %1898, %1901
  %1912 = fsub fast float %1899, %1902
  %1913 = call float @dx.op.binary.f32(i32 35, float %1911, float 0.000000e+00)  ; FMax(a,b)
  %1914 = call float @dx.op.binary.f32(i32 35, float %1912, float 0.000000e+00)  ; FMax(a,b)
  %1915 = call float @dx.op.binary.f32(i32 36, float %1913, float %1903)  ; FMin(a,b)
  %1916 = call float @dx.op.binary.f32(i32 36, float %1914, float %1904)  ; FMin(a,b)
  %1917 = add i32 %1908, -1
  %1918 = add i32 %1910, -1
  %1919 = fmul fast float %1915, %1906
  %1920 = fmul fast float %1916, %1906
  %1921 = fptoui float %1919 to i32
  %1922 = fptoui float %1920 to i32
  %1923 = call i32 @dx.op.binary.i32(i32 40, i32 %1921, i32 %1917)  ; UMin(a,b)
  %1924 = call i32 @dx.op.binary.i32(i32 40, i32 %1922, i32 %1918)  ; UMin(a,b)
  %1925 = mul i32 %1924, %1908
  %1926 = add i32 %1925, %1923
  %1927 = shl i32 %1926, 2
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = icmp eq i32 %1929, -1
  br i1 %1930, label %2147, label %1931

; <label>:1931                                    ; preds = %1876
  %1932 = mul i32 %1929, 148
  %1933 = add i32 %1932, 4
  %1934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = add i32 %1932, 8
  %1937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = add i32 %1932, 36
  %1940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = add i32 %1932, 60
  %1943 = add i32 %1932, 92
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = add i32 %1932, 116
  %1947 = fsub fast float %1898, %1935
  %1948 = fsub fast float %1899, %1938
  %1949 = fmul fast float %1906, %1947
  %1950 = fmul fast float %1906, %1948
  %1951 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1952 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1953 = fsub fast float 1.000000e+00, %1952
  %1954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1955 = extractvalue %dx.types.CBufRet.f32 %1954, 2
  %1956 = call float @dx.op.unary.f32(i32 83, float %1951)  ; DerivCoarseX(value)
  %1957 = call float @dx.op.unary.f32(i32 83, float %1953)  ; DerivCoarseX(value)
  %1958 = call float @dx.op.unary.f32(i32 84, float %1951)  ; DerivCoarseY(value)
  %1959 = call float @dx.op.unary.f32(i32 84, float %1953)  ; DerivCoarseY(value)
  %1960 = fmul fast float %1956, %1955
  %1961 = fmul fast float %1957, %1955
  %1962 = fmul fast float %1958, %1955
  %1963 = fmul fast float %1959, %1955
  %1964 = call float @dx.op.dot2.f32(i32 54, float %1962, float %1963, float %1962, float %1963)  ; Dot2(ax,ay,bx,by)
  %1965 = call float @dx.op.dot2.f32(i32 54, float %1960, float %1961, float %1960, float %1961)  ; Dot2(ax,ay,bx,by)
  %1966 = call float @dx.op.binary.f32(i32 35, float %1965, float %1964)  ; FMax(a,b)
  %1967 = call float @dx.op.unary.f32(i32 23, float %1966)  ; Log(value)
  %1968 = fmul fast float %1967, 5.000000e-01
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 1
  %1971 = fadd fast float %1970, %1968
  %1972 = call float @dx.op.binary.f32(i32 35, float %1971, float 0.000000e+00)  ; FMax(a,b)
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 3
  %1975 = fadd fast float %1974, %1972
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 3
  %1978 = fadd fast float %1975, %1977
  %1979 = add i32 %1945, 0
  %1980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1979, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1981 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1980, i32 0)  ; GetDimensions(handle,mipLevel)
  %1982 = extractvalue %dx.types.Dimensions %1981, 0
  %1983 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1982)  ; FirstbitLo(value)
  %1984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1985 = extractvalue %dx.types.CBufRet.i32 %1984, 1
  %1986 = sub nsw i32 %1985, %1983
  %1987 = sitofp i32 %1986 to float
  %1988 = fsub fast float %1978, %1987
  %1989 = call float @dx.op.binary.f32(i32 35, float %1988, float 0.000000e+00)  ; FMax(a,b)
  %1990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1980, %dx.types.Handle %62, float %1951, float %1953, float %1941, float undef, i32 0, i32 0, i32 undef, float %1989)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = fcmp ule float %1991, 0x3FE0101020000000
  %1993 = extractvalue %dx.types.CBufRet.i32 %1984, 0
  %1994 = and i32 %1993, 128
  %1995 = icmp ne i32 %1994, 0
  %1996 = and i1 %1992, %1995
  br i1 %1996, label %2147, label %1997

; <label>:1997                                    ; preds = %1931
  %1998 = add i32 %1932, 20
  %1999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.f32 %1999, 0
  %2001 = add i32 %1932, 24
  %2002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = add i32 %1932, 40
  %2005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  %2007 = add i32 %1932, 96
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2011 = extractvalue %dx.types.CBufRet.f32 %2010, 2
  %2012 = fmul fast float %2011, %1951
  %2013 = fmul fast float %2011, %1953
  %2014 = extractvalue %dx.types.CBufRet.f32 %2010, 3
  %2015 = fadd fast float %2012, %2014
  %2016 = fadd fast float %2013, %2014
  %2017 = add i32 %2009, 0
  %2018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2017, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2019 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2018, i32 0)  ; GetDimensions(handle,mipLevel)
  %2020 = extractvalue %dx.types.Dimensions %2019, 0
  %2021 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2020)  ; FirstbitLo(value)
  %2022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.i32 %2022, 1
  %2024 = sub nsw i32 %2023, %2021
  %2025 = sitofp i32 %2024 to float
  %2026 = fsub fast float %1975, %2025
  %2027 = call float @dx.op.binary.f32(i32 35, float %2026, float 0.000000e+00)  ; FMax(a,b)
  %2028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2018, %dx.types.Handle %62, float %2015, float %2016, float %2006, float undef, i32 0, i32 0, i32 undef, float %2027)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2029 = extractvalue %dx.types.ResRet.f32 %2028, 0
  %2030 = fmul fast float %2029, %2000
  %2031 = fadd fast float %2030, %2003
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 0
  %2034 = extractvalue %dx.types.CBufRet.f32 %2032, 1
  %2035 = extractvalue %dx.types.CBufRet.f32 %2032, 2
  %2036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.f32 %2036, 3
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 3
  %2040 = extractvalue %dx.types.CBufRet.f32 %2032, 3
  %2041 = fadd fast float %2037, %1898
  %2042 = fadd fast float %2039, %1899
  %2043 = fadd fast float %2031, %2040
  %2044 = fmul fast float %2041, %2033
  %2045 = call float @dx.op.tertiary.f32(i32 46, float %2042, float %2034, float %2044)  ; FMad(a,b,c)
  %2046 = call float @dx.op.tertiary.f32(i32 46, float %2043, float %2035, float %2045)  ; FMad(a,b,c)
  %2047 = fsub fast float %2046, %2040
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 2
  %2050 = fsub fast float %2047, %2049
  %2051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2052 = extractvalue %dx.types.CBufRet.i32 %2051, 0
  %2053 = call i32 @dx.op.binary.i32(i32 40, i32 %1929, i32 %2052)  ; UMin(a,b)
  %2054 = mul i32 %2053, 36
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = add i32 %2054, 4
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 0
  %2060 = fmul fast float %2059, %1951
  %2061 = fmul fast float %2059, %1953
  %2062 = extractvalue %dx.types.CBufRet.f32 %2058, 1
  %2063 = fadd fast float %2060, %2062
  %2064 = fadd fast float %2061, %2062
  %2065 = icmp eq i32 %2056, 0
  br i1 %2065, label %2134, label %2066

; <label>:2066                                    ; preds = %1997
  br label %2067

; <label>:2067                                    ; preds = %2124, %2066
  %2068 = phi float [ %2125, %2124 ], [ 0.000000e+00, %2066 ]
  %2069 = phi float [ %2126, %2124 ], [ 0.000000e+00, %2066 ]
  %2070 = phi float [ %2127, %2124 ], [ 0.000000e+00, %2066 ]
  %2071 = phi float [ %2128, %2124 ], [ 0.000000e+00, %2066 ]
  %2072 = phi float [ %2129, %2124 ], [ 0.000000e+00, %2066 ]
  %2073 = phi float [ %2130, %2124 ], [ 0.000000e+00, %2066 ]
  %2074 = phi i32 [ %2131, %2124 ], [ 0, %2066 ]
  %2075 = shl i32 %2074, 2
  %2076 = add i32 %1942, %2075
  %2077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2076, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.f32 %2077, 0
  %2079 = add i32 %1946, %2075
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = add i32 %2081, 0
  %2083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2082, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2084 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2083, i32 0)  ; GetDimensions(handle,mipLevel)
  %2085 = extractvalue %dx.types.Dimensions %2084, 0
  %2086 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2085)  ; FirstbitLo(value)
  %2087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.i32 %2087, 1
  %2089 = sub nsw i32 %2088, %2086
  %2090 = sitofp i32 %2089 to float
  %2091 = fsub fast float %1975, %2090
  %2092 = call float @dx.op.binary.f32(i32 35, float %2091, float 0.000000e+00)  ; FMax(a,b)
  %2093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2083, %dx.types.Handle %62, float %2063, float %2064, float %2078, float undef, i32 0, i32 0, i32 undef, float %2092)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2094 = extractvalue %dx.types.ResRet.f32 %2093, 0
  %2095 = fcmp fast ogt float %2094, 0.000000e+00
  br i1 %2095, label %2096, label %2124

; <label>:2096                                    ; preds = %2067
  %2097 = add i32 %2057, %2075
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = and i32 %2099, 32767
  %2101 = mul nuw nsw i32 %2100, 928
  %2102 = add nuw nsw i32 %2101, 48
  %2103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.ResRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.ResRet.f32 %2103, 2
  %2107 = add nuw nsw i32 %2101, 60
  %2108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.ResRet.f32 %2108, 1
  %2111 = extractvalue %dx.types.ResRet.f32 %2108, 2
  %2112 = fmul fast float %2104, %2094
  %2113 = fmul fast float %2105, %2094
  %2114 = fmul fast float %2106, %2094
  %2115 = fadd fast float %2112, %2068
  %2116 = fadd fast float %2113, %2069
  %2117 = fadd fast float %2114, %2070
  %2118 = fmul fast float %2109, %2094
  %2119 = fmul fast float %2110, %2094
  %2120 = fmul fast float %2111, %2094
  %2121 = fadd fast float %2118, %2071
  %2122 = fadd fast float %2119, %2072
  %2123 = fadd fast float %2120, %2073
  br label %2124

; <label>:2124                                    ; preds = %2096, %2067
  %2125 = phi float [ %2115, %2096 ], [ %2068, %2067 ]
  %2126 = phi float [ %2116, %2096 ], [ %2069, %2067 ]
  %2127 = phi float [ %2117, %2096 ], [ %2070, %2067 ]
  %2128 = phi float [ %2121, %2096 ], [ %2071, %2067 ]
  %2129 = phi float [ %2122, %2096 ], [ %2072, %2067 ]
  %2130 = phi float [ %2123, %2096 ], [ %2073, %2067 ]
  %2131 = add nuw i32 %2074, 1
  %2132 = icmp eq i32 %2131, %2056
  br i1 %2132, label %2133, label %2067

; <label>:2133                                    ; preds = %2124
  br label %2134

; <label>:2134                                    ; preds = %2133, %1997
  %2135 = phi float [ 0.000000e+00, %1997 ], [ %2125, %2133 ]
  %2136 = phi float [ 0.000000e+00, %1997 ], [ %2126, %2133 ]
  %2137 = phi float [ 0.000000e+00, %1997 ], [ %2127, %2133 ]
  %2138 = phi float [ 0.000000e+00, %1997 ], [ %2128, %2133 ]
  %2139 = phi float [ 0.000000e+00, %1997 ], [ %2129, %2133 ]
  %2140 = phi float [ 0.000000e+00, %1997 ], [ %2130, %2133 ]
  %2141 = fadd fast float %2138, %2135
  %2142 = fmul fast float %2141, 0x3F847AE140000000
  %2143 = fadd fast float %2139, %2136
  %2144 = fmul fast float %2143, 0x3F847AE140000000
  %2145 = fadd fast float %2140, %2137
  %2146 = fmul fast float %2145, 0x3F847AE140000000
  br label %2147

; <label>:2147                                    ; preds = %2134, %1931, %1876, %1873, %1844, %1806
  %2148 = phi float [ %1858, %1844 ], [ -1.310720e+05, %1806 ], [ %2050, %2134 ], [ -1.310720e+05, %1876 ], [ -1.310720e+05, %1931 ], [ -1.310720e+05, %1873 ]
  %2149 = phi float [ %1868, %1844 ], [ 0.000000e+00, %1806 ], [ %2142, %2134 ], [ 0.000000e+00, %1876 ], [ 0.000000e+00, %1931 ], [ 0.000000e+00, %1873 ]
  %2150 = phi float [ %1870, %1844 ], [ 0.000000e+00, %1806 ], [ %2144, %2134 ], [ 0.000000e+00, %1876 ], [ 0.000000e+00, %1931 ], [ 0.000000e+00, %1873 ]
  %2151 = phi float [ %1872, %1844 ], [ 0.000000e+00, %1806 ], [ %2146, %2134 ], [ 0.000000e+00, %1876 ], [ 0.000000e+00, %1931 ], [ 0.000000e+00, %1873 ]
  %2152 = phi i1 [ true, %1844 ], [ false, %1806 ], [ true, %2134 ], [ false, %1876 ], [ false, %1931 ], [ false, %1873 ]
  %2153 = and i32 %246, 3
  %2154 = icmp eq i32 %2153, 1
  %2155 = select i1 %2154, float 1.000000e+00, float 0.000000e+00
  %2156 = fsub fast float %2148, %149
  %2157 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2158 = select i1 %2152, float %2157, float 1.000000e+00
  %2159 = fmul fast float %2158, %2155
  %2160 = icmp eq i32 %2153, 3
  %2161 = select i1 %2160, float 1.000000e+00, float %2159
  %2162 = call float @dx.op.binary.f32(i32 35, float %1694, float %2161)  ; FMax(a,b)
  %2163 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2164 = fcmp fast une float %2163, 0.000000e+00
  %2165 = fsub fast float -0.000000e+00, %196
  %2166 = fsub fast float -0.000000e+00, %197
  %2167 = fsub fast float -0.000000e+00, %198
  br i1 %2164, label %2168, label %2330

; <label>:2168                                    ; preds = %2147
  %2169 = call float @dx.op.dot3.f32(i32 55, float %2165, float %2166, float %2167, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %2170 = fmul fast float %2163, 2.500000e+00
  %2171 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2172 = fmul fast float %2163, 0x4013FFFFE0000000
  %2173 = fadd fast float %2172, 0xBFFFFFFFE0000000
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = fmul fast float %2163, 0x4004000020000000
  %2176 = fadd fast float %2175, 0xBFF8000040000000
  %2177 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2178 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2179 = fmul fast float %1749, 1.000000e+01
  %2180 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2181 = fmul fast float %2180, 2.000000e+00
  %2182 = fsub fast float 3.000000e+00, %2181
  %2183 = fmul fast float %2180, %2180
  %2184 = fmul fast float %2183, %2182
  %2185 = fsub fast float 1.000000e+00, %2184
  %2186 = fsub fast float 0x3FE3333340000000, %1770
  %2187 = fmul fast float %2186, 0x400AAAAAA0000000
  %2188 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2189 = fmul fast float %2185, %2188
  %2190 = fmul fast float %1785, 0x3FEA2B8620000000
  %2191 = fmul fast float %1786, 0x3FEA2B8620000000
  %2192 = fmul fast float %1787, 0x3FEA2B8620000000
  %2193 = fadd fast float %2190, 0x3FC81DFBA0000000
  %2194 = fmul fast float %2193, %1785
  %2195 = fadd fast float %2194, 0x3F910E6020000000
  %2196 = fadd fast float %2191, 0x3FC81DFBA0000000
  %2197 = fmul fast float %2196, %1786
  %2198 = fadd fast float %2197, 0x3F910E6020000000
  %2199 = fadd fast float %2192, 0x3FC81DFBA0000000
  %2200 = fmul fast float %2199, %1787
  %2201 = fadd fast float %2200, 0x3F910E6020000000
  %2202 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2203 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2204 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  %2205 = fsub fast float %2202, %1785
  %2206 = fsub fast float %2203, %1786
  %2207 = fsub fast float %2204, %1787
  %2208 = fmul fast float %2205, %2178
  %2209 = fmul fast float %2208, %2189
  %2210 = fmul fast float %2206, %2178
  %2211 = fmul fast float %2210, %2189
  %2212 = fmul fast float %2207, %2178
  %2213 = fmul fast float %2212, %2189
  %2214 = fadd fast float %2209, %1785
  %2215 = fadd fast float %2211, %1786
  %2216 = fadd fast float %2213, %1787
  %2217 = fmul fast float %1708, %1708
  %2218 = fmul fast float %2217, %2217
  %2219 = fadd fast float %2174, 1.000000e+00
  %2220 = fsub fast float %2219, %2189
  %2221 = call float @dx.op.unary.f32(i32 7, float %2220)  ; Saturate(value)
  %2222 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2223 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  %2224 = fsub fast float 1.000000e+00, %2218
  %2225 = call float @dx.op.binary.f32(i32 36, float %2221, float %2224)  ; FMin(a,b)
  %2226 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2227 = call float @dx.op.binary.f32(i32 35, float %2225, float %2226)  ; FMax(a,b)
  %2228 = fadd fast float %2223, 0xBFE4CCCCC0000000
  %2229 = fmul fast float %2228, 0x4006DB6DA0000000
  %2230 = call float @dx.op.unary.f32(i32 7, float %2229)  ; Saturate(value)
  %2231 = fmul fast float %2230, 2.000000e+00
  %2232 = fsub fast float 3.000000e+00, %2231
  %2233 = bitcast float %1767 to i32
  %2234 = ashr i32 %2233, 1
  %2235 = add nsw i32 %2234, 532487669
  %2236 = bitcast i32 %2235 to float
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = bitcast float %2237 to i32
  %2239 = sub nsw i32 2129859010, %2238
  %2240 = bitcast i32 %2239 to float
  %2241 = fmul fast float %2240, 2.000000e+00
  %2242 = bitcast float %1768 to i32
  %2243 = ashr i32 %2242, 1
  %2244 = add nsw i32 %2243, 532487669
  %2245 = bitcast i32 %2244 to float
  %2246 = fsub fast float 1.000000e+00, %2245
  %2247 = bitcast float %2246 to i32
  %2248 = sub nsw i32 2129859010, %2247
  %2249 = bitcast i32 %2248 to float
  %2250 = fmul fast float %2249, 2.000000e+00
  %2251 = bitcast float %1769 to i32
  %2252 = ashr i32 %2251, 1
  %2253 = add nsw i32 %2252, 532487669
  %2254 = bitcast i32 %2253 to float
  %2255 = fsub fast float 1.000000e+00, %2254
  %2256 = bitcast float %2255 to i32
  %2257 = sub nsw i32 2129859010, %2256
  %2258 = bitcast i32 %2257 to float
  %2259 = fmul fast float %2258, 2.000000e+00
  %2260 = fsub fast float 0x4002A9FBE0000000, %2241
  %2261 = fadd fast float %2241, 0x3FD54FDF00000000
  %2262 = bitcast float %2261 to i32
  %2263 = sub nsw i32 2129859010, %2262
  %2264 = bitcast i32 %2263 to float
  %2265 = fmul fast float %2264, %2260
  %2266 = fmul fast float %2265, %2265
  %2267 = fsub fast float 0x4002A9FBE0000000, %2250
  %2268 = fadd fast float %2250, 0x3FD54FDF00000000
  %2269 = bitcast float %2268 to i32
  %2270 = sub nsw i32 2129859010, %2269
  %2271 = bitcast i32 %2270 to float
  %2272 = fmul fast float %2271, %2267
  %2273 = fmul fast float %2272, %2272
  %2274 = fsub fast float 0x4002A9FBE0000000, %2259
  %2275 = fadd fast float %2259, 0x3FD54FDF00000000
  %2276 = bitcast float %2275 to i32
  %2277 = sub nsw i32 2129859010, %2276
  %2278 = bitcast i32 %2277 to float
  %2279 = fmul fast float %2278, %2274
  %2280 = fmul fast float %2279, %2279
  %2281 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2266)  ; FMax(a,b)
  %2282 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2273)  ; FMax(a,b)
  %2283 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2280)  ; FMax(a,b)
  %2284 = fsub fast float 1.000000e+00, %2169
  %2285 = fadd fast float %2284, %2185
  %2286 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  %2287 = fsub fast float 1.000000e+00, %2161
  %2288 = fmul fast float %2227, %2287
  %2289 = fmul fast float %2230, %2230
  %2290 = fmul fast float %2289, %2288
  %2291 = fmul fast float %2290, %2232
  %2292 = fmul fast float %2287, 0xBFE99999A0000000
  %2293 = fmul fast float %2292, %2178
  %2294 = fmul fast float %2293, %2189
  %2295 = fadd fast float %2294, 1.000000e+00
  %2296 = fadd fast float %1770, -1.000000e+00
  %2297 = fmul fast float %2295, %2296
  %2298 = fadd fast float %2297, 1.000000e+00
  %2299 = fsub fast float %2281, %1767
  %2300 = fsub fast float %2282, %1768
  %2301 = fsub fast float %2283, %1769
  %2302 = fmul fast float %2291, %2299
  %2303 = fmul fast float %2291, %2300
  %2304 = fmul fast float %2291, %2301
  %2305 = fadd fast float %2302, %1767
  %2306 = fadd fast float %2303, %1768
  %2307 = fadd fast float %2304, %1769
  %2308 = fsub fast float %76, %1724
  %2309 = fsub fast float %77, %1725
  %2310 = fsub fast float %78, %1726
  %2311 = fmul fast float %2291, %2308
  %2312 = fmul fast float %2291, %2309
  %2313 = fmul fast float %2291, %2310
  %2314 = fadd fast float %2311, %1724
  %2315 = fadd fast float %2312, %1725
  %2316 = fadd fast float %2313, %1726
  %2317 = fmul fast float %2291, %2286
  %2318 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  %2319 = fsub fast float 1.000000e+00, %2318
  %2320 = fmul fast float %2317, %2319
  %2321 = fadd fast float %2320, %2318
  %2322 = fsub fast float 1.000000e+00, %1708
  %2323 = fmul fast float %2291, %2322
  %2324 = fadd fast float %2323, %1708
  %2325 = call float @dx.op.dot3.f32(i32 55, float %2314, float %2315, float %2316, float %2314, float %2315, float %2316)  ; Dot3(ax,ay,az,bx,by,bz)
  %2326 = call float @dx.op.unary.f32(i32 25, float %2325)  ; Rsqrt(value)
  %2327 = fmul fast float %2314, %2326
  %2328 = fmul fast float %2315, %2326
  %2329 = fmul fast float %2316, %2326
  br label %2330

; <label>:2330                                    ; preds = %2168, %2147
  %2331 = phi float [ %2305, %2168 ], [ %1767, %2147 ]
  %2332 = phi float [ %2306, %2168 ], [ %1768, %2147 ]
  %2333 = phi float [ %2307, %2168 ], [ %1769, %2147 ]
  %2334 = phi float [ %2214, %2168 ], [ %1785, %2147 ]
  %2335 = phi float [ %2215, %2168 ], [ %1786, %2147 ]
  %2336 = phi float [ %2216, %2168 ], [ %1787, %2147 ]
  %2337 = phi float [ %2327, %2168 ], [ %1724, %2147 ]
  %2338 = phi float [ %2328, %2168 ], [ %1725, %2147 ]
  %2339 = phi float [ %2329, %2168 ], [ %1726, %2147 ]
  %2340 = phi float [ %2321, %2168 ], [ %1770, %2147 ]
  %2341 = phi float [ %2324, %2168 ], [ %1708, %2147 ]
  %2342 = fsub fast float -0.000000e+00, %149
  %2343 = select i1 %270, float 0.000000e+00, float %2333
  %2344 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float %2165, float %2166, float %2167)  ; Dot3(ax,ay,az,bx,by,bz)
  %2345 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2346 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %2347 = fmul fast float %2346, 2.000000e+00
  %2348 = fmul fast float %2347, %2337
  %2349 = fmul fast float %2347, %2338
  %2350 = fmul fast float %2347, %2339
  %2351 = fsub fast float %196, %2348
  %2352 = fsub fast float %197, %2349
  %2353 = fsub fast float %198, %2350
  %2354 = call float @dx.op.binary.f32(i32 36, float %2341, float 1.000000e+00)  ; FMin(a,b)
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = bitcast float %2355 to i32
  %2357 = ashr i32 %2356, 1
  %2358 = add nsw i32 %2357, 532487669
  %2359 = bitcast i32 %2358 to float
  %2360 = fsub fast float 1.000000e+00, %2340
  %2361 = call float @dx.op.binary.f32(i32 35, float %2360, float 0x3F847AE140000000)  ; FMax(a,b)
  %2362 = fmul fast float %2361, %2361
  %2363 = fmul fast float %2362, %2362
  %2364 = call float @dx.op.unary.f32(i32 7, float %2345)  ; Saturate(value)
  %2365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2359, float %2363, float %2364, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2366 = extractvalue %dx.types.ResRet.f32 %2365, 0
  %2367 = fsub fast float 1.000000e+00, %2341
  %2368 = bitcast float %2367 to i32
  %2369 = sub nsw i32 2129859010, %2368
  %2370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.f32 %2370, 0
  %2372 = extractvalue %dx.types.CBufRet.f32 %2370, 1
  %2373 = fadd fast float %2371, %147
  %2374 = fadd fast float %2372, %148
  %2375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.i32 %2375, 0
  %2377 = icmp eq i32 %2376, 1
  br i1 %2377, label %2378, label %2413

; <label>:2378                                    ; preds = %2330
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.CBufRet.f32 %2379, 1
  %2382 = fsub fast float %2373, %2380
  %2383 = fsub fast float %2374, %2381
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2387 = fmul fast float %2382, %2385
  %2388 = fmul fast float %2383, %2386
  %2389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2387, float %2388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2390 = extractvalue %dx.types.ResRet.f32 %2389, 0
  %2391 = fcmp fast ogt float %2390, 0.000000e+00
  %2392 = extractvalue %dx.types.CBufRet.i32 %2375, 3
  %2393 = icmp ne i32 %2392, 0
  %2394 = and i1 %2391, %2393
  br i1 %2394, label %2395, label %2413, !dx.controlflow.hints !105

; <label>:2395                                    ; preds = %2378
  %2396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2396, 0
  %2398 = extractvalue %dx.types.CBufRet.f32 %2396, 1
  %2399 = fsub fast float %2373, %2397
  %2400 = fsub fast float %2374, %2398
  %2401 = fmul fast float %2399, %2399
  %2402 = fmul fast float %2400, %2400
  %2403 = fadd fast float %2401, %2402
  %2404 = uitofp i32 %2392 to float
  %2405 = fmul fast float %2404, %2404
  %2406 = fcmp fast ogt float %2403, %2405
  br i1 %2406, label %2413, label %2407

; <label>:2407                                    ; preds = %2395
  %2408 = call float @dx.op.unary.f32(i32 24, float %2403)  ; Sqrt(value)
  %2409 = fsub fast float %2404, %2408
  %2410 = fmul fast float %2409, 0x3F75555560000000
  %2411 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  %2412 = call float @dx.op.binary.f32(i32 36, float %2411, float %2390)  ; FMin(a,b)
  br label %2413

; <label>:2413                                    ; preds = %2407, %2395, %2378, %2330
  %2414 = phi float [ 1.000000e+00, %2330 ], [ %2412, %2407 ], [ %2390, %2378 ], [ 0.000000e+00, %2395 ]
  %2415 = fcmp fast ogt float %2414, 0.000000e+00
  br i1 %2415, label %2416, label %2515, !dx.controlflow.hints !106

; <label>:2416                                    ; preds = %2413
  %2417 = fadd fast float %178, 5.000000e-01
  %2418 = call float @dx.op.unary.f32(i32 27, float %2417)  ; Round_ni(value)
  %2419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %176, float %177, float %2418, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.ResRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.ResRet.f32 %2419, 2
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 3
  %2425 = fmul fast float %2424, %2420
  %2426 = fmul fast float %2424, %2421
  %2427 = fmul fast float %2424, %2422
  %2428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %176, float %177, float %2418, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2429 = extractvalue %dx.types.ResRet.f32 %2428, 0
  %2430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %176, float %177, float %2418, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2431 = extractvalue %dx.types.ResRet.f32 %2430, 0
  %2432 = extractvalue %dx.types.ResRet.f32 %2430, 1
  %2433 = fmul fast float %2431, 2.000000e+00
  %2434 = fmul fast float %2432, 2.000000e+00
  %2435 = fadd fast float %2433, -1.000000e+00
  %2436 = fadd fast float %2434, -1.000000e+00
  %2437 = fadd fast float %2435, %2436
  %2438 = fmul fast float %2437, 5.000000e-01
  %2439 = fsub fast float %2435, %2436
  %2440 = fmul fast float %2439, 5.000000e-01
  %2441 = call float @dx.op.unary.f32(i32 6, float %2438)  ; FAbs(value)
  %2442 = fsub fast float 1.000000e+00, %2441
  %2443 = call float @dx.op.unary.f32(i32 6, float %2440)  ; FAbs(value)
  %2444 = fsub fast float %2442, %2443
  %2445 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2444)  ; FMax(a,b)
  %2446 = call float @dx.op.dot3.f32(i32 55, float %2438, float %2440, float %2445, float %2438, float %2440, float %2445)  ; Dot3(ax,ay,az,bx,by,bz)
  %2447 = bitcast float %2446 to i32
  %2448 = ashr i32 %2447, 1
  %2449 = sub nsw i32 1597250115, %2448
  %2450 = bitcast i32 %2449 to float
  %2451 = fmul fast float %2450, %2438
  %2452 = fmul fast float %2450, %2440
  %2453 = fmul fast float %2450, %2445
  %2454 = fsub fast float 1.000000e+00, %2429
  %2455 = fdiv fast float %2454, %2453
  %2456 = fmul fast float %2453, %76
  %2457 = fmul fast float %2453, %77
  %2458 = fmul fast float %2453, %78
  %2459 = fmul fast float %2451, %72
  %2460 = fmul fast float %2451, %73
  %2461 = fmul fast float %2451, %74
  %2462 = fadd fast float %2456, %2459
  %2463 = fadd fast float %2457, %2460
  %2464 = fadd fast float %2458, %2461
  %2465 = fmul fast float %2452, %111
  %2466 = fmul fast float %2452, %112
  %2467 = fmul fast float %2452, %113
  %2468 = fadd fast float %2462, %2465
  %2469 = fadd fast float %2463, %2466
  %2470 = fadd fast float %2464, %2467
  %2471 = call float @dx.op.dot3.f32(i32 55, float %2468, float %2469, float %2470, float %2468, float %2469, float %2470)  ; Dot3(ax,ay,az,bx,by,bz)
  %2472 = call float @dx.op.unary.f32(i32 25, float %2471)  ; Rsqrt(value)
  %2473 = fmul fast float %2468, %2472
  %2474 = fmul fast float %2469, %2472
  %2475 = fmul fast float %2470, %2472
  %2476 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %2477 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  %2478 = fmul fast float %2477, 5.000000e-01
  %2479 = fadd fast float %2478, 5.000000e-01
  %2480 = fmul fast float %2479, %2429
  %2481 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float %2473, float %2474, float %2475)  ; Dot3(ax,ay,az,bx,by,bz)
  %2482 = call float @dx.op.unary.f32(i32 7, float %2481)  ; Saturate(value)
  %2483 = fmul fast float %2482, %2455
  %2484 = fadd fast float %2480, %2483
  %2485 = fsub fast float 5.000000e-01, %2478
  %2486 = fmul fast float %2485, %2334
  %2487 = fmul fast float %2485, %2335
  %2488 = fmul fast float %2485, %2336
  %2489 = fadd fast float %2484, %2486
  %2490 = fmul fast float %2489, %2425
  %2491 = fadd fast float %2484, %2487
  %2492 = fmul fast float %2491, %2426
  %2493 = fadd fast float %2484, %2488
  %2494 = fmul fast float %2493, %2427
  %2495 = call float @dx.op.dot3.f32(i32 55, float %2351, float %2352, float %2353, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %2496 = call float @dx.op.unary.f32(i32 7, float %2495)  ; Saturate(value)
  %2497 = fmul fast float %2496, 5.000000e-01
  %2498 = fadd fast float %2497, 5.000000e-01
  %2499 = fmul fast float %2498, %2429
  %2500 = call float @dx.op.dot3.f32(i32 55, float %2351, float %2352, float %2353, float %2473, float %2474, float %2475)  ; Dot3(ax,ay,az,bx,by,bz)
  %2501 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  %2502 = fmul fast float %2501, %2455
  %2503 = fadd fast float %2499, %2502
  %2504 = fsub fast float 5.000000e-01, %2497
  %2505 = fmul fast float %2504, %2334
  %2506 = fmul fast float %2504, %2335
  %2507 = fmul fast float %2504, %2336
  %2508 = fadd fast float %2503, %2505
  %2509 = fmul fast float %2508, %2425
  %2510 = fadd fast float %2503, %2506
  %2511 = fmul fast float %2510, %2426
  %2512 = fadd fast float %2503, %2507
  %2513 = fmul fast float %2512, %2427
  %2514 = call float @dx.op.dot3.f32(i32 55, float %2425, float %2426, float %2427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2515

; <label>:2515                                    ; preds = %2416, %2413
  %2516 = phi float [ %2514, %2416 ], [ 0.000000e+00, %2413 ]
  %2517 = phi float [ %2509, %2416 ], [ 0.000000e+00, %2413 ]
  %2518 = phi float [ %2511, %2416 ], [ 0.000000e+00, %2413 ]
  %2519 = phi float [ %2513, %2416 ], [ 0.000000e+00, %2413 ]
  %2520 = phi float [ %2490, %2416 ], [ 0.000000e+00, %2413 ]
  %2521 = phi float [ %2492, %2416 ], [ 0.000000e+00, %2413 ]
  %2522 = phi float [ %2494, %2416 ], [ 0.000000e+00, %2413 ]
  %2523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2524 = extractvalue %dx.types.CBufRet.f32 %2523, 0
  %2525 = fcmp fast ogt float %2524, 0.000000e+00
  %2526 = and i1 %2415, %2525
  br i1 %2526, label %2527, label %2731, !dx.controlflow.hints !107

; <label>:2527                                    ; preds = %2515
  %2528 = extractvalue %dx.types.CBufRet.f32 %2370, 2
  %2529 = fadd fast float %2528, %149
  %2530 = fmul fast float %2337, 3.200000e+01
  %2531 = fmul fast float %2338, 3.200000e+01
  %2532 = fadd fast float %2373, %2530
  %2533 = fadd fast float %2374, %2531
  %2534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2535 = extractvalue %dx.types.CBufRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.CBufRet.f32 %2534, 1
  %2537 = fsub fast float %2532, %2535
  %2538 = fsub fast float %2533, %2536
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.CBufRet.f32 %2539, 1
  %2542 = fmul fast float %2537, %2540
  %2543 = fmul fast float %2538, %2541
  %2544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2545 = extractvalue %dx.types.CBufRet.f32 %2544, 0
  %2546 = extractvalue %dx.types.CBufRet.f32 %2544, 1
  %2547 = fsub fast float %2373, %2545
  %2548 = fsub fast float %2374, %2546
  %2549 = fmul fast float %2547, %2547
  %2550 = fmul fast float %2548, %2548
  %2551 = fadd fast float %2549, %2550
  %2552 = call float @dx.op.unary.f32(i32 24, float %2551)  ; Sqrt(value)
  %2553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2554 = extractvalue %dx.types.CBufRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.CBufRet.f32 %2553, 1
  %2556 = fsub fast float %2552, %2554
  %2557 = fdiv fast float %2556, %2555
  %2558 = call float @dx.op.unary.f32(i32 7, float %2557)  ; Saturate(value)
  %2559 = fmul fast float %2558, 2.000000e+00
  %2560 = fsub fast float 3.000000e+00, %2559
  %2561 = fmul fast float %2558, %2558
  %2562 = fmul fast float %2561, %2560
  %2563 = fcmp fast oge float %2542, 0.000000e+00
  %2564 = fcmp fast ole float %2542, 1.000000e+00
  %2565 = and i1 %2564, %2563
  %2566 = fcmp fast oge float %2543, 0.000000e+00
  %2567 = and i1 %2566, %2565
  %2568 = fcmp fast ole float %2543, 1.000000e+00
  %2569 = and i1 %2568, %2567
  %2570 = fcmp fast ogt float %2562, 0.000000e+00
  %2571 = and i1 %2570, %2569
  br i1 %2571, label %2572, label %2695, !dx.controlflow.hints !108

; <label>:2572                                    ; preds = %2527
  %2573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.f32 %2573, 2
  %2575 = extractvalue %dx.types.CBufRet.f32 %2573, 3
  %2576 = fmul fast float %2574, %2542
  %2577 = fmul fast float %2575, %2543
  %2578 = call float @dx.op.unary.f32(i32 27, float %2576)  ; Round_ni(value)
  %2579 = call float @dx.op.unary.f32(i32 27, float %2577)  ; Round_ni(value)
  %2580 = fptosi float %2578 to i32
  %2581 = fptosi float %2579 to i32
  %2582 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2580, i32 %2581, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = lshr i32 %2583, 16
  %2585 = icmp eq i32 %2584, 65535
  br i1 %2585, label %2695, label %2586

; <label>:2586                                    ; preds = %2572
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2589 = fmul fast float %2588, %2542
  %2590 = extractvalue %dx.types.CBufRet.f32 %2587, 1
  %2591 = fadd fast float %2589, %2590
  %2592 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2593 = fmul fast float %2592, %2543
  %2594 = extractvalue %dx.types.CBufRet.f32 %2587, 3
  %2595 = fadd fast float %2593, %2594
  %2596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2591, float %2595, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2597 = extractvalue %dx.types.ResRet.f32 %2596, 0
  %2598 = extractvalue %dx.types.ResRet.f32 %2596, 1
  %2599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2600 = extractvalue %dx.types.CBufRet.f32 %2599, 1
  %2601 = extractvalue %dx.types.CBufRet.f32 %2599, 0
  %2602 = fsub fast float %2600, %2601
  %2603 = fmul fast float %2602, %2597
  %2604 = fadd fast float %2603, %2601
  %2605 = extractvalue %dx.types.CBufRet.f32 %2599, 3
  %2606 = extractvalue %dx.types.CBufRet.f32 %2599, 2
  %2607 = fsub fast float %2605, %2606
  %2608 = fmul fast float %2607, %2598
  %2609 = fadd fast float %2608, %2606
  %2610 = fsub fast float %2529, %2604
  %2611 = fsub fast float %2609, %2604
  %2612 = fdiv fast float %2610, %2611
  %2613 = call float @dx.op.unary.f32(i32 7, float %2612)  ; Saturate(value)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2523, 1
  %2615 = extractvalue %dx.types.CBufRet.f32 %2573, 0
  %2616 = extractvalue %dx.types.CBufRet.f32 %2573, 1
  %2617 = fmul fast float %2615, %2542
  %2618 = fmul fast float %2616, %2543
  %2619 = fmul fast float %2617, 1.250000e-01
  %2620 = fmul fast float %2618, 1.250000e-01
  %2621 = call float @dx.op.unary.f32(i32 27, float %2619)  ; Round_ni(value)
  %2622 = call float @dx.op.unary.f32(i32 27, float %2620)  ; Round_ni(value)
  %2623 = fmul fast float %2621, 8.000000e+00
  %2624 = fmul fast float %2622, 8.000000e+00
  %2625 = fsub fast float %2617, %2623
  %2626 = fsub fast float %2618, %2624
  %2627 = fadd fast float %2625, 5.000000e-01
  %2628 = fadd fast float %2626, 5.000000e-01
  %2629 = and i32 %2584, 255
  %2630 = lshr i32 %2583, 24
  %2631 = mul nuw nsw i32 %2629, 9
  %2632 = uitofp i32 %2631 to float
  %2633 = mul nuw nsw i32 %2630, 9
  %2634 = uitofp i32 %2633 to float
  %2635 = fadd fast float %2627, %2632
  %2636 = fadd fast float %2628, %2634
  %2637 = fdiv fast float %2635, %2524
  %2638 = fdiv fast float %2636, %2614
  %2639 = fmul fast float %2613, 4.375000e-01
  %2640 = fadd fast float %2639, 3.125000e-02
  %2641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2637, float %2638, float %2640, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 0
  %2643 = extractvalue %dx.types.ResRet.f32 %2641, 1
  %2644 = extractvalue %dx.types.ResRet.f32 %2641, 2
  %2645 = fadd fast float %2639, 5.312500e-01
  %2646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2637, float %2638, float %2645, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = extractvalue %dx.types.ResRet.f32 %2646, 1
  %2649 = extractvalue %dx.types.ResRet.f32 %2646, 2
  %2650 = fmul fast float %2647, 2.000000e+00
  %2651 = fmul fast float %2648, 2.000000e+00
  %2652 = fmul fast float %2649, 2.000000e+00
  %2653 = fadd fast float %2650, -1.000000e+00
  %2654 = fadd fast float %2651, -1.000000e+00
  %2655 = fadd fast float %2652, -1.000000e+00
  %2656 = fmul fast float %2653, %2653
  %2657 = fmul fast float %2654, %2654
  %2658 = fadd fast float %2656, %2657
  %2659 = fmul fast float %2655, %2655
  %2660 = fadd fast float %2658, %2659
  %2661 = call float @dx.op.unary.f32(i32 24, float %2660)  ; Sqrt(value)
  %2662 = fcmp fast ogt float %2661, 0.000000e+00
  br i1 %2662, label %2663, label %2667

; <label>:2663                                    ; preds = %2586
  %2664 = fdiv fast float %2653, %2661
  %2665 = fdiv fast float %2654, %2661
  %2666 = fdiv fast float %2655, %2661
  br label %2667

; <label>:2667                                    ; preds = %2663, %2586
  %2668 = phi float [ %2664, %2663 ], [ 0.000000e+00, %2586 ]
  %2669 = phi float [ %2665, %2663 ], [ 0.000000e+00, %2586 ]
  %2670 = phi float [ %2666, %2663 ], [ 0.000000e+00, %2586 ]
  %2671 = call float @dx.op.dot3.f32(i32 55, float %2668, float %2669, float %2670, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %2672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2671)  ; FMax(a,b)
  %2673 = fmul fast float %2672, 0x400C5BF8A0000000
  %2674 = fmul fast float %2642, %2562
  %2675 = fmul fast float %2674, %2673
  %2676 = fmul fast float %2643, %2562
  %2677 = fmul fast float %2676, %2673
  %2678 = fmul fast float %2644, %2562
  %2679 = fmul fast float %2678, %2673
  %2680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2681 = extractvalue %dx.types.CBufRet.f32 %2680, 3
  %2682 = fmul fast float %2675, %2681
  %2683 = fmul fast float %2677, %2681
  %2684 = fmul fast float %2679, %2681
  %2685 = fcmp fast ogt float %2529, %2609
  br i1 %2685, label %2686, label %2695

; <label>:2686                                    ; preds = %2667
  %2687 = fmul fast float %2611, 0x3FC24924A0000000
  %2688 = fsub fast float %2529, %2609
  %2689 = fdiv fast float %2688, %2687
  %2690 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  %2691 = fsub fast float 1.000000e+00, %2690
  %2692 = fmul fast float %2691, %2682
  %2693 = fmul fast float %2691, %2683
  %2694 = fmul fast float %2691, %2684
  br label %2695

; <label>:2695                                    ; preds = %2686, %2667, %2572, %2527
  %2696 = phi float [ %2694, %2686 ], [ %2684, %2667 ], [ 0.000000e+00, %2572 ], [ 0.000000e+00, %2527 ]
  %2697 = phi float [ %2693, %2686 ], [ %2683, %2667 ], [ 0.000000e+00, %2572 ], [ 0.000000e+00, %2527 ]
  %2698 = phi float [ %2692, %2686 ], [ %2682, %2667 ], [ 0.000000e+00, %2572 ], [ 0.000000e+00, %2527 ]
  %2699 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2698)  ; FMax(a,b)
  %2700 = fmul fast float %2699, 0x3FD20DD760000000
  %2701 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2351, float %2352, float %2353)  ; Dot3(ax,ay,az,bx,by,bz)
  %2702 = fmul fast float %2701, 0x3FDF454380000000
  %2703 = fmul fast float %2701, %2701
  %2704 = fmul fast float %2703, 0x3FEE471020000000
  %2705 = fadd fast float %2704, 0xBFD42F6020000000
  %2706 = call float @dx.op.dot3.f32(i32 55, float %2699, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2702, float %2705)  ; Dot3(ax,ay,az,bx,by,bz)
  %2707 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2697)  ; FMax(a,b)
  %2708 = fmul fast float %2707, 0x3FD20DD760000000
  %2709 = call float @dx.op.dot3.f32(i32 55, float %2707, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2702, float %2705)  ; Dot3(ax,ay,az,bx,by,bz)
  %2710 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2696)  ; FMax(a,b)
  %2711 = fmul fast float %2710, 0x3FD20DD760000000
  %2712 = call float @dx.op.dot3.f32(i32 55, float %2710, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2702, float %2705)  ; Dot3(ax,ay,az,bx,by,bz)
  %2713 = call float @dx.op.binary.f32(i32 35, float %2700, float 0.000000e+00)  ; FMax(a,b)
  %2714 = call float @dx.op.binary.f32(i32 35, float %2708, float 0.000000e+00)  ; FMax(a,b)
  %2715 = call float @dx.op.binary.f32(i32 35, float %2711, float 0.000000e+00)  ; FMax(a,b)
  %2716 = call float @dx.op.binary.f32(i32 35, float %2706, float 0.000000e+00)  ; FMax(a,b)
  %2717 = call float @dx.op.binary.f32(i32 35, float %2709, float 0.000000e+00)  ; FMax(a,b)
  %2718 = call float @dx.op.binary.f32(i32 35, float %2712, float 0.000000e+00)  ; FMax(a,b)
  %2719 = fmul fast float %2713, %2414
  %2720 = fmul fast float %2714, %2414
  %2721 = fmul fast float %2715, %2414
  %2722 = fadd fast float %2719, %2520
  %2723 = fadd fast float %2720, %2521
  %2724 = fadd fast float %2721, %2522
  %2725 = fmul fast float %2716, %2414
  %2726 = fmul fast float %2717, %2414
  %2727 = fmul fast float %2718, %2414
  %2728 = fadd fast float %2725, %2517
  %2729 = fadd fast float %2726, %2518
  %2730 = fadd fast float %2727, %2519
  br label %2731

; <label>:2731                                    ; preds = %2695, %2515
  %2732 = phi float [ %2728, %2695 ], [ %2517, %2515 ]
  %2733 = phi float [ %2729, %2695 ], [ %2518, %2515 ]
  %2734 = phi float [ %2730, %2695 ], [ %2519, %2515 ]
  %2735 = phi float [ %2722, %2695 ], [ %2520, %2515 ]
  %2736 = phi float [ %2723, %2695 ], [ %2521, %2515 ]
  %2737 = phi float [ %2724, %2695 ], [ %2522, %2515 ]
  %2738 = fcmp fast olt float %2414, 1.000000e+00
  br i1 %2738, label %2739, label %3562, !dx.controlflow.hints !109

; <label>:2739                                    ; preds = %2731
  %2740 = extractvalue %dx.types.CBufRet.f32 %2370, 2
  %2741 = fadd fast float %2740, %149
  %2742 = fmul fast float %2337, 3.200000e+01
  %2743 = fmul fast float %2338, 3.200000e+01
  %2744 = fadd fast float %2373, %2742
  %2745 = fadd fast float %2374, %2743
  %2746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2747 = extractvalue %dx.types.CBufRet.f32 %2746, 0
  %2748 = extractvalue %dx.types.CBufRet.f32 %2746, 1
  %2749 = fsub fast float %2744, %2747
  %2750 = fsub fast float %2745, %2748
  %2751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2752 = extractvalue %dx.types.CBufRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.CBufRet.f32 %2751, 1
  %2754 = fmul fast float %2749, %2752
  %2755 = fmul fast float %2750, %2753
  %2756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2757 = extractvalue %dx.types.CBufRet.f32 %2756, 0
  %2758 = fmul fast float %2754, %2757
  %2759 = extractvalue %dx.types.CBufRet.f32 %2756, 1
  %2760 = fadd fast float %2758, %2759
  %2761 = extractvalue %dx.types.CBufRet.f32 %2756, 2
  %2762 = fmul fast float %2761, %2755
  %2763 = extractvalue %dx.types.CBufRet.f32 %2756, 3
  %2764 = fadd fast float %2762, %2763
  %2765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2760, float %2764, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  %2767 = extractvalue %dx.types.ResRet.f32 %2765, 1
  %2768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2768, 1
  %2770 = extractvalue %dx.types.CBufRet.f32 %2768, 0
  %2771 = fsub fast float %2769, %2770
  %2772 = fmul fast float %2771, %2766
  %2773 = fadd fast float %2772, %2770
  %2774 = extractvalue %dx.types.CBufRet.f32 %2768, 3
  %2775 = extractvalue %dx.types.CBufRet.f32 %2768, 2
  %2776 = fsub fast float %2774, %2775
  %2777 = fmul fast float %2776, %2767
  %2778 = fadd fast float %2777, %2775
  %2779 = fsub fast float %2741, %2773
  %2780 = fsub fast float %2778, %2773
  %2781 = fdiv fast float %2779, %2780
  %2782 = call float @dx.op.unary.f32(i32 7, float %2781)  ; Saturate(value)
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 0
  %2785 = fmul fast float %2784, %2782
  %2786 = extractvalue %dx.types.CBufRet.f32 %2783, 1
  %2787 = fadd fast float %2785, %2786
  %2788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2760, float %2764, float %2787, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2789 = extractvalue %dx.types.ResRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.ResRet.f32 %2788, 1
  %2791 = extractvalue %dx.types.ResRet.f32 %2788, 2
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2796 = fmul fast float %2793, %2789
  %2797 = fmul fast float %2794, %2790
  %2798 = fmul fast float %2795, %2791
  %2799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.f32 %2799, 0
  %2801 = extractvalue %dx.types.CBufRet.f32 %2799, 1
  %2802 = extractvalue %dx.types.CBufRet.f32 %2799, 2
  %2803 = fadd fast float %2796, %2800
  %2804 = fadd fast float %2797, %2801
  %2805 = fadd fast float %2798, %2802
  %2806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2807 = extractvalue %dx.types.CBufRet.f32 %2806, 0
  %2808 = fmul fast float %2807, %2754
  %2809 = extractvalue %dx.types.CBufRet.f32 %2806, 1
  %2810 = fadd fast float %2808, %2809
  %2811 = extractvalue %dx.types.CBufRet.f32 %2806, 2
  %2812 = fmul fast float %2811, %2755
  %2813 = extractvalue %dx.types.CBufRet.f32 %2806, 3
  %2814 = fadd fast float %2812, %2813
  %2815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2816 = extractvalue %dx.types.CBufRet.f32 %2815, 0
  %2817 = extractvalue %dx.types.CBufRet.f32 %2815, 1
  %2818 = extractvalue %dx.types.CBufRet.f32 %2815, 2
  %2819 = extractvalue %dx.types.CBufRet.f32 %2815, 3
  %2820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.f32 %2820, 0
  %2822 = extractvalue %dx.types.CBufRet.f32 %2820, 1
  %2823 = extractvalue %dx.types.CBufRet.f32 %2820, 2
  %2824 = extractvalue %dx.types.CBufRet.f32 %2820, 3
  %2825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2810, float %2814, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2826 = extractvalue %dx.types.ResRet.f32 %2825, 0
  %2827 = extractvalue %dx.types.ResRet.f32 %2825, 1
  %2828 = extractvalue %dx.types.ResRet.f32 %2825, 2
  %2829 = extractvalue %dx.types.ResRet.f32 %2825, 3
  %2830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2810, float %2814, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.ResRet.f32 %2830, 1
  %2833 = extractvalue %dx.types.ResRet.f32 %2830, 2
  %2834 = extractvalue %dx.types.ResRet.f32 %2830, 3
  %2835 = fmul fast float %2826, %2803
  %2836 = fmul fast float %2831, %2803
  %2837 = fmul fast float %2833, %2803
  %2838 = fmul fast float %2829, %2803
  %2839 = fadd fast float %2835, %2816
  %2840 = fadd fast float %2836, %2817
  %2841 = fadd fast float %2837, %2818
  %2842 = fadd fast float %2838, %2819
  %2843 = fmul fast float %2827, %2803
  %2844 = fmul fast float %2832, %2803
  %2845 = fadd fast float %2843, %2821
  %2846 = fadd fast float %2844, %2822
  %2847 = fmul fast float %2828, %2803
  %2848 = fmul fast float %2834, %2803
  %2849 = fadd fast float %2847, %2823
  %2850 = fadd fast float %2848, %2824
  %2851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2810, float %2814, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2852 = extractvalue %dx.types.ResRet.f32 %2851, 0
  %2853 = extractvalue %dx.types.ResRet.f32 %2851, 1
  %2854 = extractvalue %dx.types.ResRet.f32 %2851, 2
  %2855 = extractvalue %dx.types.ResRet.f32 %2851, 3
  %2856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2810, float %2814, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  %2858 = extractvalue %dx.types.ResRet.f32 %2856, 1
  %2859 = extractvalue %dx.types.ResRet.f32 %2856, 2
  %2860 = extractvalue %dx.types.ResRet.f32 %2856, 3
  %2861 = fmul fast float %2852, %2804
  %2862 = fmul fast float %2857, %2804
  %2863 = fmul fast float %2859, %2804
  %2864 = fmul fast float %2855, %2804
  %2865 = fadd fast float %2839, %2861
  %2866 = fadd fast float %2840, %2862
  %2867 = fadd fast float %2841, %2863
  %2868 = fadd fast float %2842, %2864
  %2869 = fmul fast float %2853, %2804
  %2870 = fmul fast float %2858, %2804
  %2871 = fadd fast float %2845, %2869
  %2872 = fadd fast float %2846, %2870
  %2873 = fmul fast float %2854, %2804
  %2874 = fmul fast float %2860, %2804
  %2875 = fadd fast float %2849, %2873
  %2876 = fadd fast float %2850, %2874
  %2877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2810, float %2814, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2878 = extractvalue %dx.types.ResRet.f32 %2877, 0
  %2879 = extractvalue %dx.types.ResRet.f32 %2877, 1
  %2880 = extractvalue %dx.types.ResRet.f32 %2877, 2
  %2881 = extractvalue %dx.types.ResRet.f32 %2877, 3
  %2882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2810, float %2814, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2883 = extractvalue %dx.types.ResRet.f32 %2882, 0
  %2884 = extractvalue %dx.types.ResRet.f32 %2882, 1
  %2885 = extractvalue %dx.types.ResRet.f32 %2882, 2
  %2886 = extractvalue %dx.types.ResRet.f32 %2882, 3
  %2887 = fmul fast float %2878, %2805
  %2888 = fmul fast float %2883, %2805
  %2889 = fmul fast float %2885, %2805
  %2890 = fmul fast float %2881, %2805
  %2891 = fadd fast float %2865, %2887
  %2892 = fadd fast float %2866, %2888
  %2893 = fadd fast float %2867, %2889
  %2894 = fadd fast float %2868, %2890
  %2895 = fmul fast float %2879, %2805
  %2896 = fmul fast float %2884, %2805
  %2897 = fadd fast float %2871, %2895
  %2898 = fadd fast float %2872, %2896
  %2899 = fmul fast float %2880, %2805
  %2900 = fmul fast float %2886, %2805
  %2901 = fadd fast float %2875, %2899
  %2902 = fadd fast float %2876, %2900
  %2903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2904 = extractvalue %dx.types.CBufRet.f32 %2903, 0
  %2905 = fsub fast float %2373, %2904
  %2906 = fsub fast float %2747, %2373
  %2907 = call float @dx.op.binary.f32(i32 35, float %2906, float %2905)  ; FMax(a,b)
  %2908 = extractvalue %dx.types.CBufRet.f32 %2903, 1
  %2909 = fsub fast float %2374, %2908
  %2910 = fsub fast float %2748, %2374
  %2911 = call float @dx.op.binary.f32(i32 35, float %2910, float %2909)  ; FMax(a,b)
  %2912 = call float @dx.op.binary.f32(i32 35, float %2907, float %2911)  ; FMax(a,b)
  %2913 = extractvalue %dx.types.CBufRet.f32 %2751, 3
  %2914 = fmul fast float %2913, %2912
  %2915 = call float @dx.op.unary.f32(i32 7, float %2914)  ; Saturate(value)
  %2916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.f32 %2916, 0
  %2918 = extractvalue %dx.types.CBufRet.f32 %2916, 1
  %2919 = extractvalue %dx.types.CBufRet.f32 %2916, 2
  %2920 = extractvalue %dx.types.CBufRet.f32 %2916, 3
  %2921 = fsub fast float %2917, %2891
  %2922 = fsub fast float %2918, %2892
  %2923 = fsub fast float %2919, %2893
  %2924 = fsub fast float %2920, %2894
  %2925 = fmul fast float %2921, %2915
  %2926 = fmul fast float %2922, %2915
  %2927 = fmul fast float %2923, %2915
  %2928 = fmul fast float %2924, %2915
  %2929 = fadd fast float %2925, %2891
  %2930 = fadd fast float %2926, %2892
  %2931 = fadd fast float %2927, %2893
  %2932 = fadd fast float %2928, %2894
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 0
  %2935 = extractvalue %dx.types.CBufRet.f32 %2933, 1
  %2936 = fsub fast float %2934, %2897
  %2937 = fsub fast float %2935, %2898
  %2938 = fmul fast float %2936, %2915
  %2939 = fmul fast float %2937, %2915
  %2940 = fadd fast float %2938, %2897
  %2941 = fadd fast float %2939, %2898
  %2942 = extractvalue %dx.types.CBufRet.f32 %2933, 2
  %2943 = extractvalue %dx.types.CBufRet.f32 %2933, 3
  %2944 = fsub fast float %2942, %2901
  %2945 = fsub fast float %2943, %2902
  %2946 = fmul fast float %2944, %2915
  %2947 = fmul fast float %2945, %2915
  %2948 = fadd fast float %2946, %2901
  %2949 = fadd fast float %2947, %2902
  %2950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2951 = extractvalue %dx.types.CBufRet.f32 %2950, 0
  %2952 = fmul fast float %2951, %2929
  %2953 = fmul fast float %2951, %2930
  %2954 = fmul fast float %2951, %2931
  %2955 = fmul fast float %2951, %2932
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 0
  %2958 = fmul fast float %2957, %2940
  %2959 = fmul fast float %2957, %2941
  %2960 = fadd fast float %2958, %2952
  %2961 = fadd fast float %2959, %2954
  %2962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2963 = extractvalue %dx.types.CBufRet.f32 %2962, 0
  %2964 = fmul fast float %2963, %2948
  %2965 = fmul fast float %2963, %2949
  %2966 = fadd fast float %2960, %2964
  %2967 = fadd fast float %2961, %2965
  %2968 = extractvalue %dx.types.CBufRet.f32 %2950, 1
  %2969 = fmul fast float %2968, %2929
  %2970 = fmul fast float %2968, %2930
  %2971 = fmul fast float %2968, %2931
  %2972 = fmul fast float %2968, %2932
  %2973 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2974 = fmul fast float %2973, %2940
  %2975 = fmul fast float %2973, %2941
  %2976 = fadd fast float %2974, %2969
  %2977 = fadd fast float %2975, %2971
  %2978 = extractvalue %dx.types.CBufRet.f32 %2962, 1
  %2979 = fmul fast float %2978, %2948
  %2980 = fmul fast float %2978, %2949
  %2981 = fadd fast float %2976, %2979
  %2982 = fadd fast float %2977, %2980
  %2983 = extractvalue %dx.types.CBufRet.f32 %2950, 2
  %2984 = fmul fast float %2983, %2929
  %2985 = fmul fast float %2983, %2930
  %2986 = fmul fast float %2983, %2931
  %2987 = fmul fast float %2983, %2932
  %2988 = extractvalue %dx.types.CBufRet.f32 %2956, 2
  %2989 = fmul fast float %2988, %2940
  %2990 = fmul fast float %2988, %2941
  %2991 = fadd fast float %2989, %2984
  %2992 = fadd fast float %2990, %2986
  %2993 = extractvalue %dx.types.CBufRet.f32 %2962, 2
  %2994 = fmul fast float %2993, %2948
  %2995 = fmul fast float %2993, %2949
  %2996 = fadd fast float %2991, %2994
  %2997 = fadd fast float %2992, %2995
  %2998 = fmul fast float %2985, %2985
  %2999 = fmul fast float %2997, %2997
  %3000 = fmul fast float %2987, %2987
  %3001 = fadd fast float %3000, %2998
  %3002 = fadd fast float %3001, %2999
  %3003 = call float @dx.op.unary.f32(i32 24, float %3002)  ; Sqrt(value)
  %3004 = fcmp fast ugt float %3003, 0.000000e+00
  br i1 %3004, label %3005, label %3020

; <label>:3005                                    ; preds = %2739
  %3006 = fsub fast float -0.000000e+00, %2987
  %3007 = fdiv fast float %3006, %3003
  %3008 = fsub fast float -0.000000e+00, %2985
  %3009 = fdiv fast float %3008, %3003
  %3010 = fdiv fast float %2997, %3003
  %3011 = fmul fast float %2996, 0x3FE279A760000000
  %3012 = fmul fast float %3009, %2985
  %3013 = fmul fast float %3010, %2997
  %3014 = fmul fast float %3007, %2987
  %3015 = fadd fast float %3012, %3014
  %3016 = fsub fast float %3015, %3013
  %3017 = call float @dx.op.unary.f32(i32 6, float %3016)  ; FAbs(value)
  %3018 = fadd fast float %3017, 0x3DDB7CDFE0000000
  %3019 = fdiv fast float %3011, %3018
  br label %3020

; <label>:3020                                    ; preds = %3005, %2739
  %3021 = phi float [ %3019, %3005 ], [ 1.000000e+00, %2739 ]
  %3022 = fmul fast float %2970, %2970
  %3023 = fmul fast float %2982, %2982
  %3024 = fmul fast float %2972, %2972
  %3025 = fadd fast float %3024, %3022
  %3026 = fadd fast float %3025, %3023
  %3027 = call float @dx.op.unary.f32(i32 24, float %3026)  ; Sqrt(value)
  %3028 = fcmp fast ugt float %3027, 0.000000e+00
  br i1 %3028, label %3029, label %3044

; <label>:3029                                    ; preds = %3020
  %3030 = fsub fast float -0.000000e+00, %2972
  %3031 = fdiv fast float %3030, %3027
  %3032 = fsub fast float -0.000000e+00, %2970
  %3033 = fdiv fast float %3032, %3027
  %3034 = fdiv fast float %2982, %3027
  %3035 = fmul fast float %2981, 0x3FE279A760000000
  %3036 = fmul fast float %3033, %2970
  %3037 = fmul fast float %3034, %2982
  %3038 = fmul fast float %3031, %2972
  %3039 = fadd fast float %3036, %3038
  %3040 = fsub fast float %3039, %3037
  %3041 = call float @dx.op.unary.f32(i32 6, float %3040)  ; FAbs(value)
  %3042 = fadd fast float %3041, 0x3DDB7CDFE0000000
  %3043 = fdiv fast float %3035, %3042
  br label %3044

; <label>:3044                                    ; preds = %3029, %3020
  %3045 = phi float [ %3043, %3029 ], [ 1.000000e+00, %3020 ]
  %3046 = call float @dx.op.binary.f32(i32 36, float %3045, float %3021)  ; FMin(a,b)
  %3047 = fmul fast float %2953, %2953
  %3048 = fmul fast float %2967, %2967
  %3049 = fmul fast float %2955, %2955
  %3050 = fadd fast float %3049, %3047
  %3051 = fadd fast float %3050, %3048
  %3052 = call float @dx.op.unary.f32(i32 24, float %3051)  ; Sqrt(value)
  %3053 = fcmp fast ugt float %3052, 0.000000e+00
  br i1 %3053, label %3054, label %3069

; <label>:3054                                    ; preds = %3044
  %3055 = fsub fast float -0.000000e+00, %2955
  %3056 = fdiv fast float %3055, %3052
  %3057 = fsub fast float -0.000000e+00, %2953
  %3058 = fdiv fast float %3057, %3052
  %3059 = fdiv fast float %2967, %3052
  %3060 = fmul fast float %2966, 0x3FE279A760000000
  %3061 = fmul fast float %3058, %2953
  %3062 = fmul fast float %3059, %2967
  %3063 = fmul fast float %3056, %2955
  %3064 = fadd fast float %3061, %3063
  %3065 = fsub fast float %3064, %3062
  %3066 = call float @dx.op.unary.f32(i32 6, float %3065)  ; FAbs(value)
  %3067 = fadd fast float %3066, 0x3DDB7CDFE0000000
  %3068 = fdiv fast float %3060, %3067
  br label %3069

; <label>:3069                                    ; preds = %3054, %3044
  %3070 = phi float [ %3068, %3054 ], [ 1.000000e+00, %3044 ]
  %3071 = call float @dx.op.binary.f32(i32 36, float %3070, float %3046)  ; FMin(a,b)
  %3072 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  %3073 = fcmp fast olt float %3072, 1.000000e+00
  br i1 %3073, label %3074, label %3084

; <label>:3074                                    ; preds = %3069
  %3075 = fmul fast float %3072, %2953
  %3076 = fmul fast float %3072, %2967
  %3077 = fmul fast float %3072, %2955
  %3078 = fmul fast float %3072, %2970
  %3079 = fmul fast float %3072, %2982
  %3080 = fmul fast float %3072, %2972
  %3081 = fmul fast float %3072, %2985
  %3082 = fmul fast float %3072, %2997
  %3083 = fmul fast float %3072, %2987
  br label %3084

; <label>:3084                                    ; preds = %3074, %3069
  %3085 = phi float [ %3081, %3074 ], [ %2985, %3069 ]
  %3086 = phi float [ %3082, %3074 ], [ %2997, %3069 ]
  %3087 = phi float [ %3083, %3074 ], [ %2987, %3069 ]
  %3088 = phi float [ %3078, %3074 ], [ %2970, %3069 ]
  %3089 = phi float [ %3079, %3074 ], [ %2982, %3069 ]
  %3090 = phi float [ %3080, %3074 ], [ %2972, %3069 ]
  %3091 = phi float [ %3075, %3074 ], [ %2953, %3069 ]
  %3092 = phi float [ %3076, %3074 ], [ %2967, %3069 ]
  %3093 = phi float [ %3077, %3074 ], [ %2955, %3069 ]
  %3094 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2966)  ; FMax(a,b)
  %3095 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2981)  ; FMax(a,b)
  %3096 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2996)  ; FMax(a,b)
  %3097 = fcmp fast oge float %2754, 0.000000e+00
  %3098 = and i1 %3097, %2525
  %3099 = fcmp fast ole float %2754, 1.000000e+00
  %3100 = and i1 %3099, %3098
  %3101 = fcmp fast oge float %2755, 0.000000e+00
  %3102 = and i1 %3101, %3100
  %3103 = fcmp fast ole float %2755, 1.000000e+00
  %3104 = and i1 %3103, %3102
  br i1 %3104, label %3105, label %3250, !dx.controlflow.hints !110

; <label>:3105                                    ; preds = %3084
  %3106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3107 = extractvalue %dx.types.CBufRet.f32 %3106, 2
  %3108 = extractvalue %dx.types.CBufRet.f32 %3106, 3
  %3109 = fmul fast float %3107, %2754
  %3110 = fmul fast float %3108, %2755
  %3111 = call float @dx.op.unary.f32(i32 27, float %3109)  ; Round_ni(value)
  %3112 = call float @dx.op.unary.f32(i32 27, float %3110)  ; Round_ni(value)
  %3113 = fptosi float %3111 to i32
  %3114 = fptosi float %3112 to i32
  %3115 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %3113, i32 %3114, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = and i32 %3116, 65535
  %3118 = lshr i32 %3116, 16
  %3119 = icmp eq i32 %3117, 65535
  br i1 %3119, label %3156, label %3120

; <label>:3120                                    ; preds = %3105
  %3121 = extractvalue %dx.types.CBufRet.f32 %2523, 1
  %3122 = extractvalue %dx.types.CBufRet.f32 %3106, 0
  %3123 = extractvalue %dx.types.CBufRet.f32 %3106, 1
  %3124 = fmul fast float %3122, %2754
  %3125 = fmul fast float %3123, %2755
  %3126 = fmul fast float %3124, 1.250000e-01
  %3127 = fmul fast float %3125, 1.250000e-01
  %3128 = call float @dx.op.unary.f32(i32 27, float %3126)  ; Round_ni(value)
  %3129 = call float @dx.op.unary.f32(i32 27, float %3127)  ; Round_ni(value)
  %3130 = fmul fast float %3128, 8.000000e+00
  %3131 = fmul fast float %3129, 8.000000e+00
  %3132 = and i32 %3116, 255
  %3133 = lshr i32 %3116, 8
  %3134 = and i32 %3133, 255
  %3135 = mul nuw nsw i32 %3132, 9
  %3136 = uitofp i32 %3135 to float
  %3137 = mul nuw nsw i32 %3134, 9
  %3138 = uitofp i32 %3137 to float
  %3139 = fadd fast float %3136, 5.000000e-01
  %3140 = fadd fast float %3139, %3124
  %3141 = fsub fast float %3140, %3130
  %3142 = fadd fast float %3138, 5.000000e-01
  %3143 = fadd fast float %3142, %3125
  %3144 = fsub fast float %3143, %3131
  %3145 = fdiv fast float %3141, %2524
  %3146 = fdiv fast float %3144, %3121
  %3147 = fmul fast float %2782, 4.375000e-01
  %3148 = fadd fast float %3147, 3.125000e-02
  %3149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3145, float %3146, float %3148, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3150 = extractvalue %dx.types.ResRet.f32 %3149, 0
  %3151 = extractvalue %dx.types.ResRet.f32 %3149, 1
  %3152 = extractvalue %dx.types.ResRet.f32 %3149, 2
  %3153 = fadd fast float %3150, %3094
  %3154 = fadd fast float %3151, %3095
  %3155 = fadd fast float %3152, %3096
  br label %3156

; <label>:3156                                    ; preds = %3120, %3105
  %3157 = phi float [ %3155, %3120 ], [ %3096, %3105 ]
  %3158 = phi float [ %3154, %3120 ], [ %3095, %3105 ]
  %3159 = phi float [ %3153, %3120 ], [ %3094, %3105 ]
  %3160 = icmp eq i32 %3118, 65535
  br i1 %3160, label %3250, label %3161

; <label>:3161                                    ; preds = %3156
  %3162 = extractvalue %dx.types.CBufRet.f32 %2523, 1
  %3163 = extractvalue %dx.types.CBufRet.f32 %3106, 0
  %3164 = extractvalue %dx.types.CBufRet.f32 %3106, 1
  %3165 = fmul fast float %3163, %2754
  %3166 = fmul fast float %3164, %2755
  %3167 = fmul fast float %3165, 1.250000e-01
  %3168 = fmul fast float %3166, 1.250000e-01
  %3169 = call float @dx.op.unary.f32(i32 27, float %3167)  ; Round_ni(value)
  %3170 = call float @dx.op.unary.f32(i32 27, float %3168)  ; Round_ni(value)
  %3171 = fmul fast float %3169, 8.000000e+00
  %3172 = fmul fast float %3170, 8.000000e+00
  %3173 = fsub fast float %3165, %3171
  %3174 = fsub fast float %3166, %3172
  %3175 = fadd fast float %3173, 5.000000e-01
  %3176 = fadd fast float %3174, 5.000000e-01
  %3177 = and i32 %3118, 255
  %3178 = lshr i32 %3116, 24
  %3179 = mul nuw nsw i32 %3177, 9
  %3180 = uitofp i32 %3179 to float
  %3181 = mul nuw nsw i32 %3178, 9
  %3182 = uitofp i32 %3181 to float
  %3183 = fadd fast float %3175, %3180
  %3184 = fadd fast float %3176, %3182
  %3185 = fdiv fast float %3183, %2524
  %3186 = fdiv fast float %3184, %3162
  %3187 = fmul fast float %2782, 4.375000e-01
  %3188 = fadd fast float %3187, 3.125000e-02
  %3189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3185, float %3186, float %3188, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3190 = extractvalue %dx.types.ResRet.f32 %3189, 0
  %3191 = extractvalue %dx.types.ResRet.f32 %3189, 1
  %3192 = extractvalue %dx.types.ResRet.f32 %3189, 2
  %3193 = fadd fast float %3187, 5.312500e-01
  %3194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %3185, float %3186, float %3193, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3195 = extractvalue %dx.types.ResRet.f32 %3194, 0
  %3196 = extractvalue %dx.types.ResRet.f32 %3194, 1
  %3197 = extractvalue %dx.types.ResRet.f32 %3194, 2
  %3198 = fmul fast float %3195, 2.000000e+00
  %3199 = fmul fast float %3196, 2.000000e+00
  %3200 = fmul fast float %3197, 2.000000e+00
  %3201 = fadd fast float %3198, -1.000000e+00
  %3202 = fadd fast float %3199, -1.000000e+00
  %3203 = fadd fast float %3200, -1.000000e+00
  %3204 = fmul fast float %3201, %3201
  %3205 = fmul fast float %3202, %3202
  %3206 = fadd fast float %3204, %3205
  %3207 = fmul fast float %3203, %3203
  %3208 = fadd fast float %3206, %3207
  %3209 = call float @dx.op.unary.f32(i32 24, float %3208)  ; Sqrt(value)
  %3210 = fcmp fast ogt float %3209, 0.000000e+00
  br i1 %3210, label %3211, label %3215

; <label>:3211                                    ; preds = %3161
  %3212 = fdiv fast float %3201, %3209
  %3213 = fdiv fast float %3202, %3209
  %3214 = fdiv fast float %3203, %3209
  br label %3215

; <label>:3215                                    ; preds = %3211, %3161
  %3216 = phi float [ %3212, %3211 ], [ 0.000000e+00, %3161 ]
  %3217 = phi float [ %3213, %3211 ], [ 0.000000e+00, %3161 ]
  %3218 = phi float [ %3214, %3211 ], [ 0.000000e+00, %3161 ]
  %3219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.f32 %3219, 0
  %3221 = extractvalue %dx.types.CBufRet.f32 %3219, 1
  %3222 = fsub fast float %2373, %3220
  %3223 = fsub fast float %2374, %3221
  %3224 = fmul fast float %3222, %3222
  %3225 = fmul fast float %3223, %3223
  %3226 = fadd fast float %3224, %3225
  %3227 = call float @dx.op.unary.f32(i32 24, float %3226)  ; Sqrt(value)
  %3228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3229 = extractvalue %dx.types.CBufRet.f32 %3228, 0
  %3230 = extractvalue %dx.types.CBufRet.f32 %3228, 1
  %3231 = fsub fast float %3227, %3229
  %3232 = fdiv fast float %3231, %3230
  %3233 = call float @dx.op.unary.f32(i32 7, float %3232)  ; Saturate(value)
  %3234 = fmul fast float %3233, 2.000000e+00
  %3235 = fsub fast float 3.000000e+00, %3234
  %3236 = fmul fast float %3233, %3233
  %3237 = fmul fast float %3236, %3235
  %3238 = call float @dx.op.dot3.f32(i32 55, float %3216, float %3217, float %3218, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %3239 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3238)  ; FMax(a,b)
  %3240 = fmul fast float %3239, 0x400C5BF8A0000000
  %3241 = fmul fast float %3237, %3190
  %3242 = fmul fast float %3241, %3240
  %3243 = fadd fast float %3242, %3159
  %3244 = fmul fast float %3237, %3191
  %3245 = fmul fast float %3244, %3240
  %3246 = fadd fast float %3245, %3158
  %3247 = fmul fast float %3237, %3192
  %3248 = fmul fast float %3247, %3240
  %3249 = fadd fast float %3248, %3157
  br label %3250

; <label>:3250                                    ; preds = %3215, %3156, %3084
  %3251 = phi float [ %3249, %3215 ], [ %3157, %3156 ], [ %3096, %3084 ]
  %3252 = phi float [ %3246, %3215 ], [ %3158, %3156 ], [ %3095, %3084 ]
  %3253 = phi float [ %3243, %3215 ], [ %3159, %3156 ], [ %3094, %3084 ]
  %3254 = fcmp fast ogt float %2741, %2778
  %3255 = and i1 %3097, %3254
  %3256 = and i1 %3099, %3255
  %3257 = and i1 %3101, %3256
  %3258 = and i1 %3103, %3257
  br i1 %3258, label %3259, label %3316, !dx.controlflow.hints !111

; <label>:3259                                    ; preds = %3250
  %3260 = fmul fast float %2780, 0x3FC24924A0000000
  %3261 = fsub fast float %2741, %2778
  %3262 = fdiv fast float %3261, %3260
  %3263 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 0
  %3266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.CBufRet.f32 %3266, 1
  %3269 = extractvalue %dx.types.CBufRet.f32 %3266, 2
  %3270 = fsub fast float %3265, %3253
  %3271 = fsub fast float %3267, %3091
  %3272 = fsub fast float %3268, %3092
  %3273 = fsub fast float %3269, %3093
  %3274 = fmul fast float %3270, %3263
  %3275 = fmul fast float %3271, %3263
  %3276 = fmul fast float %3272, %3263
  %3277 = fmul fast float %3273, %3263
  %3278 = fadd fast float %3274, %3253
  %3279 = fadd fast float %3275, %3091
  %3280 = fadd fast float %3276, %3092
  %3281 = fadd fast float %3277, %3093
  %3282 = extractvalue %dx.types.CBufRet.f32 %3264, 1
  %3283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3284 = extractvalue %dx.types.CBufRet.f32 %3283, 0
  %3285 = extractvalue %dx.types.CBufRet.f32 %3283, 1
  %3286 = extractvalue %dx.types.CBufRet.f32 %3283, 2
  %3287 = fsub fast float %3282, %3252
  %3288 = fsub fast float %3284, %3088
  %3289 = fsub fast float %3285, %3089
  %3290 = fsub fast float %3286, %3090
  %3291 = fmul fast float %3287, %3263
  %3292 = fmul fast float %3288, %3263
  %3293 = fmul fast float %3289, %3263
  %3294 = fmul fast float %3290, %3263
  %3295 = fadd fast float %3291, %3252
  %3296 = fadd fast float %3292, %3088
  %3297 = fadd fast float %3293, %3089
  %3298 = fadd fast float %3294, %3090
  %3299 = extractvalue %dx.types.CBufRet.f32 %3264, 2
  %3300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.CBufRet.f32 %3300, 1
  %3303 = extractvalue %dx.types.CBufRet.f32 %3300, 2
  %3304 = fsub fast float %3299, %3251
  %3305 = fsub fast float %3301, %3085
  %3306 = fsub fast float %3302, %3086
  %3307 = fsub fast float %3303, %3087
  %3308 = fmul fast float %3304, %3263
  %3309 = fmul fast float %3305, %3263
  %3310 = fmul fast float %3306, %3263
  %3311 = fmul fast float %3307, %3263
  %3312 = fadd fast float %3308, %3251
  %3313 = fadd fast float %3309, %3085
  %3314 = fadd fast float %3310, %3086
  %3315 = fadd fast float %3311, %3087
  br label %3316

; <label>:3316                                    ; preds = %3259, %3250
  %3317 = phi float [ %3312, %3259 ], [ %3251, %3250 ]
  %3318 = phi float [ %3313, %3259 ], [ %3085, %3250 ]
  %3319 = phi float [ %3314, %3259 ], [ %3086, %3250 ]
  %3320 = phi float [ %3315, %3259 ], [ %3087, %3250 ]
  %3321 = phi float [ %3295, %3259 ], [ %3252, %3250 ]
  %3322 = phi float [ %3296, %3259 ], [ %3088, %3250 ]
  %3323 = phi float [ %3297, %3259 ], [ %3089, %3250 ]
  %3324 = phi float [ %3298, %3259 ], [ %3090, %3250 ]
  %3325 = phi float [ %3278, %3259 ], [ %3253, %3250 ]
  %3326 = phi float [ %3279, %3259 ], [ %3091, %3250 ]
  %3327 = phi float [ %3280, %3259 ], [ %3092, %3250 ]
  %3328 = phi float [ %3281, %3259 ], [ %3093, %3250 ]
  %3329 = extractvalue %dx.types.CBufRet.f32 %2903, 3
  %3330 = fmul fast float %3329, %3325
  %3331 = fmul fast float %3329, %3321
  %3332 = fmul fast float %3329, %3317
  %3333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3334 = extractvalue %dx.types.CBufRet.f32 %3333, 3
  %3335 = fmul fast float %3330, %3334
  %3336 = fmul fast float %3331, %3334
  %3337 = fmul fast float %3332, %3334
  %3338 = call float @dx.op.dot3.f32(i32 55, float %3335, float %3336, float %3337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3339 = fmul fast float %3338, 0x3FD20DD760000000
  %3340 = fmul fast float %3326, 1.500000e+00
  %3341 = fmul fast float %3340, %3329
  %3342 = fmul fast float %3341, %3334
  %3343 = fmul fast float %3327, 1.500000e+00
  %3344 = fmul fast float %3343, %3329
  %3345 = fmul fast float %3344, %3334
  %3346 = fmul fast float %3328, 1.500000e+00
  %3347 = fmul fast float %3346, %3329
  %3348 = fmul fast float %3347, %3334
  %3349 = fmul fast float %3322, 1.500000e+00
  %3350 = fmul fast float %3349, %3329
  %3351 = fmul fast float %3350, %3334
  %3352 = fmul fast float %3323, 1.500000e+00
  %3353 = fmul fast float %3352, %3329
  %3354 = fmul fast float %3353, %3334
  %3355 = fmul fast float %3324, 1.500000e+00
  %3356 = fmul fast float %3355, %3329
  %3357 = fmul fast float %3356, %3334
  %3358 = fmul fast float %3318, 1.500000e+00
  %3359 = fmul fast float %3358, %3329
  %3360 = fmul fast float %3359, %3334
  %3361 = fmul fast float %3319, 1.500000e+00
  %3362 = fmul fast float %3361, %3329
  %3363 = fmul fast float %3362, %3334
  %3364 = fmul fast float %3320, 1.500000e+00
  %3365 = fmul fast float %3364, %3329
  %3366 = fmul fast float %3365, %3334
  %3367 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3335)  ; FMax(a,b)
  %3368 = call float @dx.op.dot3.f32(i32 55, float %3342, float %3345, float %3348, float %3342, float %3345, float %3348)  ; Dot3(ax,ay,az,bx,by,bz)
  %3369 = fcmp fast oeq float %3368, 0.000000e+00
  %3370 = fcmp fast oeq float %3367, 0.000000e+00
  %3371 = or i1 %3370, %3369
  br i1 %3371, label %3401, label %3372

; <label>:3372                                    ; preds = %3316
  %3373 = fsub fast float -0.000000e+00, %3348
  %3374 = fsub fast float -0.000000e+00, %3342
  %3375 = call float @dx.op.unary.f32(i32 24, float %3368)  ; Sqrt(value)
  %3376 = fdiv fast float %3375, %3367
  %3377 = fcmp fast ogt float %3376, 0x3FFB6F8900000000
  %3378 = select i1 %3377, float 0x3FFB6F8900000000, float %3376
  %3379 = fmul fast float %3378, 0x3FE8A23460000000
  %3380 = call float @dx.op.unary.f32(i32 7, float %3379)  ; Saturate(value)
  %3381 = call float @dx.op.binary.f32(i32 35, float %3378, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3382 = fmul fast float %3380, %3367
  %3383 = fmul fast float %3381, 0x3FF279A740000000
  %3384 = fadd fast float %3383, -1.000000e+00
  %3385 = call float @dx.op.dot3.f32(i32 55, float %3373, float %3374, float %3345, float %3373, float %3374, float %3345)  ; Dot3(ax,ay,az,bx,by,bz)
  %3386 = call float @dx.op.unary.f32(i32 25, float %3385)  ; Rsqrt(value)
  %3387 = fmul fast float %3386, %3373
  %3388 = fmul fast float %3386, %3374
  %3389 = fmul fast float %3386, %3345
  %3390 = fmul fast float %3384, %3384
  %3391 = fsub fast float 1.000000e+00, %3390
  %3392 = fmul fast float %3381, 0x40005F8BE0000000
  %3393 = fsub fast float 0x400C5BF8A0000000, %3392
  %3394 = fdiv fast float %3382, %3393
  %3395 = fmul fast float %3394, 0x3FEE31C3C0000000
  %3396 = fmul fast float %3395, %3391
  %3397 = fmul fast float %3381, 0x3FDACB7480000000
  %3398 = fadd fast float %3397, 0xBFD7347680000000
  %3399 = fmul fast float %3398, %3394
  %3400 = fmul fast float %3399, %3391
  br label %3401

; <label>:3401                                    ; preds = %3372, %3316
  %3402 = phi float [ %3387, %3372 ], [ 0.000000e+00, %3316 ]
  %3403 = phi float [ %3388, %3372 ], [ 0.000000e+00, %3316 ]
  %3404 = phi float [ %3389, %3372 ], [ 0.000000e+00, %3316 ]
  %3405 = phi float [ %3396, %3372 ], [ 0.000000e+00, %3316 ]
  %3406 = phi float [ %3400, %3372 ], [ 0.000000e+00, %3316 ]
  %3407 = call float @dx.op.dot3.f32(i32 55, float %3402, float %3403, float %3404, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %3408 = fmul fast float %3407, %3407
  %3409 = fmul fast float %3408, 0x3FEE471020000000
  %3410 = fadd fast float %3409, 0xBFD42F6020000000
  %3411 = fmul fast float %3367, 0x3FD20DD760000000
  %3412 = fmul fast float %3410, %3406
  %3413 = fmul fast float %3405, 0x3FDF454380000000
  %3414 = fmul fast float %3413, %3407
  %3415 = fadd fast float %3414, %3411
  %3416 = fadd fast float %3415, %3412
  %3417 = call float @dx.op.dot3.f32(i32 55, float %3402, float %3403, float %3404, float %2351, float %2352, float %2353)  ; Dot3(ax,ay,az,bx,by,bz)
  %3418 = fmul fast float %3417, 0x3FDF454380000000
  %3419 = fmul fast float %3417, %3417
  %3420 = fmul fast float %3419, 0x3FEE471020000000
  %3421 = fadd fast float %3420, 0xBFD42F6020000000
  %3422 = call float @dx.op.dot3.f32(i32 55, float %3367, float %3405, float %3406, float 0x3FD20DD760000000, float %3418, float %3421)  ; Dot3(ax,ay,az,bx,by,bz)
  %3423 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3336)  ; FMax(a,b)
  %3424 = call float @dx.op.dot3.f32(i32 55, float %3351, float %3354, float %3357, float %3351, float %3354, float %3357)  ; Dot3(ax,ay,az,bx,by,bz)
  %3425 = fcmp fast oeq float %3424, 0.000000e+00
  %3426 = fcmp fast oeq float %3423, 0.000000e+00
  %3427 = or i1 %3426, %3425
  br i1 %3427, label %3457, label %3428

; <label>:3428                                    ; preds = %3401
  %3429 = fsub fast float -0.000000e+00, %3357
  %3430 = fsub fast float -0.000000e+00, %3351
  %3431 = call float @dx.op.unary.f32(i32 24, float %3424)  ; Sqrt(value)
  %3432 = fdiv fast float %3431, %3423
  %3433 = fcmp fast ogt float %3432, 0x3FFB6F8900000000
  %3434 = select i1 %3433, float 0x3FFB6F8900000000, float %3432
  %3435 = fmul fast float %3434, 0x3FE8A23460000000
  %3436 = call float @dx.op.unary.f32(i32 7, float %3435)  ; Saturate(value)
  %3437 = call float @dx.op.binary.f32(i32 35, float %3434, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3438 = fmul fast float %3436, %3423
  %3439 = fmul fast float %3437, 0x3FF279A740000000
  %3440 = fadd fast float %3439, -1.000000e+00
  %3441 = call float @dx.op.dot3.f32(i32 55, float %3429, float %3430, float %3354, float %3429, float %3430, float %3354)  ; Dot3(ax,ay,az,bx,by,bz)
  %3442 = call float @dx.op.unary.f32(i32 25, float %3441)  ; Rsqrt(value)
  %3443 = fmul fast float %3442, %3429
  %3444 = fmul fast float %3442, %3430
  %3445 = fmul fast float %3442, %3354
  %3446 = fmul fast float %3440, %3440
  %3447 = fsub fast float 1.000000e+00, %3446
  %3448 = fmul fast float %3437, 0x40005F8BE0000000
  %3449 = fsub fast float 0x400C5BF8A0000000, %3448
  %3450 = fdiv fast float %3438, %3449
  %3451 = fmul fast float %3450, 0x3FEE31C3C0000000
  %3452 = fmul fast float %3451, %3447
  %3453 = fmul fast float %3437, 0x3FDACB7480000000
  %3454 = fadd fast float %3453, 0xBFD7347680000000
  %3455 = fmul fast float %3454, %3450
  %3456 = fmul fast float %3455, %3447
  br label %3457

; <label>:3457                                    ; preds = %3428, %3401
  %3458 = phi float [ %3443, %3428 ], [ 0.000000e+00, %3401 ]
  %3459 = phi float [ %3444, %3428 ], [ 0.000000e+00, %3401 ]
  %3460 = phi float [ %3445, %3428 ], [ 0.000000e+00, %3401 ]
  %3461 = phi float [ %3452, %3428 ], [ 0.000000e+00, %3401 ]
  %3462 = phi float [ %3456, %3428 ], [ 0.000000e+00, %3401 ]
  %3463 = call float @dx.op.dot3.f32(i32 55, float %3458, float %3459, float %3460, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %3464 = fmul fast float %3463, %3463
  %3465 = fmul fast float %3464, 0x3FEE471020000000
  %3466 = fadd fast float %3465, 0xBFD42F6020000000
  %3467 = fmul fast float %3423, 0x3FD20DD760000000
  %3468 = fmul fast float %3466, %3462
  %3469 = fmul fast float %3461, 0x3FDF454380000000
  %3470 = fmul fast float %3469, %3463
  %3471 = fadd fast float %3470, %3467
  %3472 = fadd fast float %3471, %3468
  %3473 = call float @dx.op.dot3.f32(i32 55, float %3458, float %3459, float %3460, float %2351, float %2352, float %2353)  ; Dot3(ax,ay,az,bx,by,bz)
  %3474 = fmul fast float %3473, 0x3FDF454380000000
  %3475 = fmul fast float %3473, %3473
  %3476 = fmul fast float %3475, 0x3FEE471020000000
  %3477 = fadd fast float %3476, 0xBFD42F6020000000
  %3478 = call float @dx.op.dot3.f32(i32 55, float %3423, float %3461, float %3462, float 0x3FD20DD760000000, float %3474, float %3477)  ; Dot3(ax,ay,az,bx,by,bz)
  %3479 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3337)  ; FMax(a,b)
  %3480 = call float @dx.op.dot3.f32(i32 55, float %3360, float %3363, float %3366, float %3360, float %3363, float %3366)  ; Dot3(ax,ay,az,bx,by,bz)
  %3481 = fcmp fast oeq float %3480, 0.000000e+00
  %3482 = fcmp fast oeq float %3479, 0.000000e+00
  %3483 = or i1 %3482, %3481
  br i1 %3483, label %3513, label %3484

; <label>:3484                                    ; preds = %3457
  %3485 = fsub fast float -0.000000e+00, %3366
  %3486 = fsub fast float -0.000000e+00, %3360
  %3487 = call float @dx.op.unary.f32(i32 24, float %3480)  ; Sqrt(value)
  %3488 = fdiv fast float %3487, %3479
  %3489 = fcmp fast ogt float %3488, 0x3FFB6F8900000000
  %3490 = select i1 %3489, float 0x3FFB6F8900000000, float %3488
  %3491 = fmul fast float %3490, 0x3FE8A23460000000
  %3492 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  %3493 = call float @dx.op.binary.f32(i32 35, float %3490, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3494 = fmul fast float %3492, %3479
  %3495 = fmul fast float %3493, 0x3FF279A740000000
  %3496 = fadd fast float %3495, -1.000000e+00
  %3497 = call float @dx.op.dot3.f32(i32 55, float %3485, float %3486, float %3363, float %3485, float %3486, float %3363)  ; Dot3(ax,ay,az,bx,by,bz)
  %3498 = call float @dx.op.unary.f32(i32 25, float %3497)  ; Rsqrt(value)
  %3499 = fmul fast float %3498, %3485
  %3500 = fmul fast float %3498, %3486
  %3501 = fmul fast float %3498, %3363
  %3502 = fmul fast float %3496, %3496
  %3503 = fsub fast float 1.000000e+00, %3502
  %3504 = fmul fast float %3493, 0x40005F8BE0000000
  %3505 = fsub fast float 0x400C5BF8A0000000, %3504
  %3506 = fdiv fast float %3494, %3505
  %3507 = fmul fast float %3506, 0x3FEE31C3C0000000
  %3508 = fmul fast float %3507, %3503
  %3509 = fmul fast float %3493, 0x3FDACB7480000000
  %3510 = fadd fast float %3509, 0xBFD7347680000000
  %3511 = fmul fast float %3510, %3506
  %3512 = fmul fast float %3511, %3503
  br label %3513

; <label>:3513                                    ; preds = %3484, %3457
  %3514 = phi float [ %3499, %3484 ], [ 0.000000e+00, %3457 ]
  %3515 = phi float [ %3500, %3484 ], [ 0.000000e+00, %3457 ]
  %3516 = phi float [ %3501, %3484 ], [ 0.000000e+00, %3457 ]
  %3517 = phi float [ %3508, %3484 ], [ 0.000000e+00, %3457 ]
  %3518 = phi float [ %3512, %3484 ], [ 0.000000e+00, %3457 ]
  %3519 = call float @dx.op.dot3.f32(i32 55, float %3514, float %3515, float %3516, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %3520 = fmul fast float %3519, %3519
  %3521 = fmul fast float %3520, 0x3FEE471020000000
  %3522 = fadd fast float %3521, 0xBFD42F6020000000
  %3523 = fmul fast float %3479, 0x3FD20DD760000000
  %3524 = fmul fast float %3522, %3518
  %3525 = fmul fast float %3517, 0x3FDF454380000000
  %3526 = fmul fast float %3525, %3519
  %3527 = fadd fast float %3526, %3523
  %3528 = fadd fast float %3527, %3524
  %3529 = call float @dx.op.dot3.f32(i32 55, float %3514, float %3515, float %3516, float %2351, float %2352, float %2353)  ; Dot3(ax,ay,az,bx,by,bz)
  %3530 = fmul fast float %3529, 0x3FDF454380000000
  %3531 = fmul fast float %3529, %3529
  %3532 = fmul fast float %3531, 0x3FEE471020000000
  %3533 = fadd fast float %3532, 0xBFD42F6020000000
  %3534 = call float @dx.op.dot3.f32(i32 55, float %3479, float %3517, float %3518, float 0x3FD20DD760000000, float %3530, float %3533)  ; Dot3(ax,ay,az,bx,by,bz)
  %3535 = call float @dx.op.binary.f32(i32 35, float %3416, float 0.000000e+00)  ; FMax(a,b)
  %3536 = call float @dx.op.binary.f32(i32 35, float %3472, float 0.000000e+00)  ; FMax(a,b)
  %3537 = call float @dx.op.binary.f32(i32 35, float %3528, float 0.000000e+00)  ; FMax(a,b)
  %3538 = call float @dx.op.binary.f32(i32 35, float %3422, float 0.000000e+00)  ; FMax(a,b)
  %3539 = call float @dx.op.binary.f32(i32 35, float %3478, float 0.000000e+00)  ; FMax(a,b)
  %3540 = call float @dx.op.binary.f32(i32 35, float %3534, float 0.000000e+00)  ; FMax(a,b)
  %3541 = fsub fast float %2735, %3535
  %3542 = fsub fast float %2736, %3536
  %3543 = fsub fast float %2737, %3537
  %3544 = fmul fast float %3541, %2414
  %3545 = fmul fast float %3542, %2414
  %3546 = fmul fast float %3543, %2414
  %3547 = fadd fast float %3544, %3535
  %3548 = fadd fast float %3545, %3536
  %3549 = fadd fast float %3546, %3537
  %3550 = fsub fast float %2732, %3538
  %3551 = fsub fast float %2733, %3539
  %3552 = fsub fast float %2734, %3540
  %3553 = fmul fast float %3550, %2414
  %3554 = fmul fast float %3551, %2414
  %3555 = fmul fast float %3552, %2414
  %3556 = fadd fast float %3553, %3538
  %3557 = fadd fast float %3554, %3539
  %3558 = fadd fast float %3555, %3540
  %3559 = fsub fast float %2516, %3339
  %3560 = fmul fast float %3559, %2414
  %3561 = fadd fast float %3560, %3339
  br label %3562

; <label>:3562                                    ; preds = %3513, %2731
  %3563 = phi float [ %3561, %3513 ], [ %2516, %2731 ]
  %3564 = phi float [ %3556, %3513 ], [ %2732, %2731 ]
  %3565 = phi float [ %3557, %3513 ], [ %2733, %2731 ]
  %3566 = phi float [ %3558, %3513 ], [ %2734, %2731 ]
  %3567 = phi float [ %3547, %3513 ], [ %2735, %2731 ]
  %3568 = phi float [ %3548, %3513 ], [ %2736, %2731 ]
  %3569 = phi float [ %3549, %3513 ], [ %2737, %2731 ]
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 0
  %3572 = call float @dx.op.binary.f32(i32 36, float %2334, float %3571)  ; FMin(a,b)
  %3573 = fmul fast float %3572, %2355
  %3574 = fsub fast float 1.000000e+00, %3573
  %3575 = bitcast float %3574 to i32
  %3576 = sub nsw i32 2129859010, %3575
  %3577 = bitcast i32 %3576 to float
  %3578 = call float @dx.op.binary.f32(i32 36, float %2335, float %3571)  ; FMin(a,b)
  %3579 = fmul fast float %3578, %2355
  %3580 = fsub fast float 1.000000e+00, %3579
  %3581 = bitcast float %3580 to i32
  %3582 = sub nsw i32 2129859010, %3581
  %3583 = bitcast i32 %3582 to float
  %3584 = call float @dx.op.binary.f32(i32 36, float %2336, float %3571)  ; FMin(a,b)
  %3585 = fmul fast float %3584, %2355
  %3586 = fsub fast float 1.000000e+00, %3585
  %3587 = bitcast float %3586 to i32
  %3588 = sub nsw i32 2129859010, %3587
  %3589 = bitcast i32 %3588 to float
  %3590 = fmul fast float %3567, %2354
  %3591 = fmul fast float %3590, %3577
  %3592 = fmul fast float %3568, %2354
  %3593 = fmul fast float %3592, %3583
  %3594 = fmul fast float %3569, %2354
  %3595 = fmul fast float %3594, %3589
  %3596 = call float @dx.op.binary.f32(i32 36, float %2331, float %3571)  ; FMin(a,b)
  %3597 = fmul fast float %3596, %2355
  %3598 = fsub fast float 1.000000e+00, %3597
  %3599 = bitcast float %3598 to i32
  %3600 = sub nsw i32 2129859010, %3599
  %3601 = bitcast i32 %3600 to float
  %3602 = call float @dx.op.binary.f32(i32 36, float %2332, float %3571)  ; FMin(a,b)
  %3603 = fmul fast float %3602, %2355
  %3604 = fsub fast float 1.000000e+00, %3603
  %3605 = bitcast float %3604 to i32
  %3606 = sub nsw i32 2129859010, %3605
  %3607 = bitcast i32 %3606 to float
  %3608 = call float @dx.op.binary.f32(i32 36, float %2343, float %3571)  ; FMin(a,b)
  %3609 = fmul fast float %3608, %2355
  %3610 = fsub fast float 1.000000e+00, %3609
  %3611 = bitcast float %3610 to i32
  %3612 = sub nsw i32 2129859010, %3611
  %3613 = bitcast i32 %3612 to float
  %3614 = fmul fast float %3564, %2354
  %3615 = fmul fast float %3614, %3601
  %3616 = fmul fast float %3565, %2354
  %3617 = fmul fast float %3616, %3607
  %3618 = fmul fast float %3566, %2354
  %3619 = fmul fast float %3618, %3613
  %3620 = call float @dx.op.dot3.f32(i32 55, float %3591, float %3593, float %3595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3621 = select i1 %270, float 0.000000e+00, float %3591
  %3622 = select i1 %270, float %3620, float %3593
  %3623 = select i1 %270, float 0.000000e+00, float %3595
  %3624 = call float @dx.op.dot3.f32(i32 55, float %3615, float %3617, float %3619, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3625 = select i1 %270, float 0.000000e+00, float %3615
  %3626 = select i1 %270, float %3624, float %3617
  %3627 = select i1 %270, float 0.000000e+00, float %3619
  %3628 = fmul fast float %1157, %1157
  %3629 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  %3630 = fmul fast float %2345, 9.843750e-01
  %3631 = fmul fast float %2340, 9.843750e-01
  %3632 = fadd fast float %3630, 7.812500e-03
  %3633 = fadd fast float %3631, 7.812500e-03
  %3634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3632, float %3633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = extractvalue %dx.types.ResRet.f32 %3634, 3
  %3639 = fsub fast float 1.000000e+00, %3629
  %3640 = fsub fast float %3637, %3635
  %3641 = fsub fast float %3638, %3636
  %3642 = fmul fast float %3640, %3639
  %3643 = fmul fast float %3641, %3639
  %3644 = fadd fast float %3642, %3635
  %3645 = fadd fast float %3643, %3636
  %3646 = fmul fast float %3644, %2331
  %3647 = fmul fast float %3644, %2332
  %3648 = fmul fast float %3644, %2343
  %3649 = fadd fast float %3646, %3645
  %3650 = fadd fast float %3647, %3645
  %3651 = fadd fast float %3648, %3645
  %3652 = fcmp fast ogt float %1701, 0.000000e+00
  br i1 %3652, label %3653, label %3679

; <label>:3653                                    ; preds = %3562
  %3654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1701, float %2345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = extractvalue %dx.types.ResRet.f32 %3654, 1
  %3657 = extractvalue %dx.types.ResRet.f32 %3654, 2
  %3658 = fadd fast float %3655, -5.000000e-01
  %3659 = fadd fast float %3656, -5.000000e-01
  %3660 = fadd fast float %3657, -5.000000e-01
  %3661 = fsub fast float 1.000000e+00, %2331
  %3662 = fsub fast float 1.000000e+00, %2332
  %3663 = fsub fast float 1.000000e+00, %2343
  %3664 = fmul fast float %2331, 4.000000e+00
  %3665 = fmul fast float %3664, %3661
  %3666 = fmul fast float %3665, %3658
  %3667 = fmul fast float %2332, 4.000000e+00
  %3668 = fmul fast float %3667, %3662
  %3669 = fmul fast float %3668, %3659
  %3670 = fmul fast float %2343, 4.000000e+00
  %3671 = fmul fast float %3670, %3663
  %3672 = fmul fast float %3671, %3660
  %3673 = fadd fast float %3666, %3649
  %3674 = fadd fast float %3669, %3650
  %3675 = fadd fast float %3672, %3651
  %3676 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3677 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3678 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  br label %3679

; <label>:3679                                    ; preds = %3653, %3562
  %3680 = phi float [ %3676, %3653 ], [ %3649, %3562 ]
  %3681 = phi float [ %3677, %3653 ], [ %3650, %3562 ]
  %3682 = phi float [ %3678, %3653 ], [ %3651, %3562 ]
  %3683 = call float @dx.op.binary.f32(i32 35, float %3681, float %3682)  ; FMax(a,b)
  %3684 = call float @dx.op.binary.f32(i32 35, float %3680, float %3683)  ; FMax(a,b)
  %3685 = fsub fast float 1.000000e+00, %3684
  %3686 = fmul fast float %3684, %2340
  %3687 = fadd fast float %3686, %2340
  %3688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3689 = extractvalue %dx.types.CBufRet.f32 %3688, 2
  %3690 = extractvalue %dx.types.CBufRet.f32 %3688, 3
  %3691 = fmul fast float %3687, %3689
  %3692 = fadd fast float %3691, %3690
  %3693 = call float @dx.op.unary.f32(i32 7, float %3692)  ; Saturate(value)
  %3694 = fsub fast float 1.000000e+00, %2366
  %3695 = fadd fast float %3694, %3693
  %3696 = call float @dx.op.unary.f32(i32 7, float %3695)  ; Saturate(value)
  %3697 = fcmp fast olt float %3696, 1.000000e+00
  br i1 %3697, label %3698, label %4174

; <label>:3698                                    ; preds = %3679
  %3699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3700 = extractvalue %dx.types.CBufRet.f32 %3699, 2
  %3701 = extractvalue %dx.types.CBufRet.f32 %3699, 3
  %3702 = fmul fast float %3700, %100
  %3703 = fmul fast float %3701, %101
  %3704 = fptoui float %3702 to i32
  %3705 = fptoui float %3703 to i32
  %3706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3707 = extractvalue %dx.types.CBufRet.f32 %3706, 0
  %3708 = extractvalue %dx.types.CBufRet.f32 %3706, 2
  %3709 = extractvalue %dx.types.CBufRet.f32 %3706, 3
  %3710 = fadd fast float %88, -4.000000e+00
  %3711 = call float @dx.op.binary.f32(i32 35, float %3710, float 0.000000e+00)  ; FMax(a,b)
  %3712 = fadd fast float %3711, %3707
  %3713 = fmul fast float %3712, %3708
  %3714 = call float @dx.op.unary.f32(i32 23, float %3713)  ; Log(value)
  %3715 = fmul fast float %3714, %3709
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 2
  %3718 = fmul fast float %3715, %3717
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.i32 %3720, 1
  %3722 = add i32 %3721, -1
  %3723 = uitofp i32 %3721 to float
  %3724 = fmul fast float %3723, %3719
  %3725 = fptoui float %3724 to i32
  %3726 = call i32 @dx.op.binary.i32(i32 40, i32 %3725, i32 %3722)  ; UMin(a,b)
  %3727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.i32 %3727, 2
  %3729 = extractvalue %dx.types.CBufRet.i32 %3727, 3
  %3730 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3705, i32 %3728, i32 %3704)  ; UMad(a,b,c)
  %3731 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3726, i32 %3729, i32 %3730)  ; UMad(a,b,c)
  %3732 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %3733 = fptoui float %3732 to i32
  %3734 = lshr i32 %3733, 5
  %3735 = call i32 @dx.op.binary.i32(i32 40, i32 %3734, i32 8191)  ; UMin(a,b)
  %3736 = fsub fast float %2148, %149
  %3737 = call float @dx.op.unary.f32(i32 7, float %3736)  ; Saturate(value)
  %3738 = fcmp fast ogt float %3737, 0.000000e+00
  %3739 = fcmp fast ogt float %2353, 0.000000e+00
  %3740 = and i1 %3739, %3738
  br i1 %3740, label %3741, label %3770

; <label>:3741                                    ; preds = %3698
  %3742 = call float @dx.op.dot3.f32(i32 55, float %2351, float %2352, float %2353, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3743 = call float @dx.op.binary.f32(i32 35, float %3742, float -1.000000e+00)  ; FMax(a,b)
  %3744 = call float @dx.op.binary.f32(i32 36, float %3743, float 1.000000e+00)  ; FMin(a,b)
  %3745 = fmul fast float %3744, %3744
  %3746 = fsub fast float 1.000000e+00, %3745
  %3747 = fmul fast float %3746, 0x3FFC6E2300000000
  %3748 = fsub fast float 1.000000e+00, %3747
  %3749 = fcmp fast ogt float %3748, 0.000000e+00
  %3750 = call float @dx.op.unary.f32(i32 24, float %3748)  ; Sqrt(value)
  %3751 = fsub fast float 1.000000e+00, %3750
  %3752 = call float @dx.op.unary.f32(i32 23, float %3751)  ; Log(value)
  %3753 = fmul fast float %3752, 5.000000e+00
  %3754 = call float @dx.op.unary.f32(i32 21, float %3753)  ; Exp(value)
  %3755 = fmul fast float %3754, 0x3FEF591A60000000
  %3756 = fadd fast float %3755, 0x3F94DCB540000000
  %3757 = select i1 %3749, float %3756, float 1.000000e+00
  %3758 = fcmp fast oge float %3757, 1.000000e+00
  %3759 = fmul fast float %3742, 2.000000e+00
  %3760 = fadd fast float %3759, %2353
  %3761 = select i1 %3758, float %3760, float %2353
  %3762 = fsub fast float %3761, %2353
  %3763 = fmul fast float %3762, %3737
  %3764 = fadd fast float %3763, %2353
  %3765 = call float @dx.op.dot3.f32(i32 55, float %2351, float %2352, float %3764, float %2351, float %2352, float %3764)  ; Dot3(ax,ay,az,bx,by,bz)
  %3766 = call float @dx.op.unary.f32(i32 25, float %3765)  ; Rsqrt(value)
  %3767 = fmul fast float %3766, %2351
  %3768 = fmul fast float %3766, %2352
  %3769 = fmul fast float %3764, %3766
  br label %3770

; <label>:3770                                    ; preds = %3741, %3698
  %3771 = phi float [ %3767, %3741 ], [ %2351, %3698 ]
  %3772 = phi float [ %3768, %3741 ], [ %2352, %3698 ]
  %3773 = phi float [ %3769, %3741 ], [ %2353, %3698 ]
  %3774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.i32 %3774, 2
  %3776 = add nsw i32 %3775, -1
  %3777 = call i32 @dx.op.binary.i32(i32 37, i32 %3776, i32 0)  ; IMax(a,b)
  %3778 = shl i32 %3735, 2
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3778, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = lshr i32 %3780, 16
  %3782 = and i32 %3780, 65535
  %3783 = lshr i32 %3780, 21
  %3784 = lshr i32 %3782, 5
  %3785 = call i32 @dx.op.binary.i32(i32 40, i32 %3784, i32 %3777)  ; UMin(a,b)
  %3786 = icmp ugt i32 %3783, %3785
  br i1 %3786, label %4150, label %3787

; <label>:3787                                    ; preds = %3770
  br label %3788

; <label>:3788                                    ; preds = %4142, %3787
  %3789 = phi float [ %4143, %4142 ], [ 0.000000e+00, %3787 ]
  %3790 = phi float [ %4144, %4142 ], [ 0.000000e+00, %3787 ]
  %3791 = phi float [ %4145, %4142 ], [ 0.000000e+00, %3787 ]
  %3792 = phi float [ %4146, %4142 ], [ 1.000000e+00, %3787 ]
  %3793 = phi i32 [ %4147, %4142 ], [ %3783, %3787 ]
  %3794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.i32 %3794, 2
  %3796 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3731, i32 %3795, i32 %3793)  ; UMad(a,b,c)
  %3797 = shl i32 %3796, 2
  %3798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3797, i32 undef)  ; BufferLoad(srv,index,wot)
  %3799 = extractvalue %dx.types.ResRet.i32 %3798, 0
  %3800 = shl i32 %3793, 5
  %3801 = sub nsw i32 %3781, %3800
  %3802 = call i32 @dx.op.binary.i32(i32 37, i32 %3801, i32 0)  ; IMax(a,b)
  %3803 = call i32 @dx.op.binary.i32(i32 38, i32 %3802, i32 31)  ; IMin(a,b)
  %3804 = sub nsw i32 1, %3781
  %3805 = add nsw i32 %3804, %3782
  %3806 = call i32 @dx.op.binary.i32(i32 37, i32 %3805, i32 0)  ; IMax(a,b)
  %3807 = call i32 @dx.op.binary.i32(i32 38, i32 %3806, i32 32)  ; IMin(a,b)
  %3808 = and i32 %3807, 31
  %3809 = shl i32 -1, %3808
  %3810 = xor i32 %3809, -1
  %3811 = and i32 %3803, 31
  %3812 = shl i32 %3810, %3811
  %3813 = icmp eq i32 %3807, 32
  %3814 = select i1 %3813, i32 -1, i32 %3812
  %3815 = and i32 %3814, %3799
  %3816 = icmp eq i32 %3815, 0
  br i1 %3816, label %4142, label %3817

; <label>:3817                                    ; preds = %3788
  br label %3818

; <label>:3818                                    ; preds = %3925, %3817
  %3819 = phi float [ %3926, %3925 ], [ %3789, %3817 ]
  %3820 = phi float [ %3927, %3925 ], [ %3790, %3817 ]
  %3821 = phi float [ %3928, %3925 ], [ %3791, %3817 ]
  %3822 = phi float [ %3929, %3925 ], [ %3792, %3817 ]
  %3823 = phi i32 [ %3828, %3925 ], [ %3815, %3817 ]
  %3824 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3823)  ; FirstbitLo(value)
  %3825 = add i32 %3824, %3800
  %3826 = and i32 %3824, 31
  %3827 = shl i32 1, %3826
  %3828 = xor i32 %3827, %3823
  %3829 = mul i32 %3825, 72
  %3830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.ResRet.f32 %3830, 1
  %3833 = extractvalue %dx.types.ResRet.f32 %3830, 2
  %3834 = add i32 %3829, 12
  %3835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.i32 %3835, 0
  %3837 = add i32 %3829, 16
  %3838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = extractvalue %dx.types.ResRet.f32 %3838, 1
  %3841 = extractvalue %dx.types.ResRet.f32 %3838, 2
  %3842 = add i32 %3829, 28
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = add i32 %3829, 32
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = extractvalue %dx.types.ResRet.f32 %3846, 3
  %3851 = add i32 %3829, 48
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = add i32 %3829, 56
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = add i32 %3829, 64
  %3860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = extractvalue %dx.types.ResRet.f32 %3860, 1
  %3863 = mul i32 %3825, 60
  %3864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = extractvalue %dx.types.ResRet.f32 %3864, 2
  %3868 = add i32 %3863, 12
  %3869 = add i32 %3863, 48
  %3870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3874 = and i32 %3836, 32767
  %3875 = bitcast float %3831 to i32
  %3876 = icmp eq i32 %3875, -1
  %3877 = bitcast float %3832 to i32
  %3878 = and i32 %3836, 32768
  %3879 = icmp ne i32 %3878, 0
  %3880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3881 = extractvalue %dx.types.CBufRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.CBufRet.f32 %3880, 1
  %3883 = extractvalue %dx.types.CBufRet.f32 %3880, 2
  %3884 = fsub fast float %3865, %3881
  %3885 = fsub fast float %3866, %3882
  %3886 = fsub fast float %3867, %3883
  %3887 = fsub fast float %147, %3884
  %3888 = fsub fast float %148, %3885
  %3889 = fsub fast float %149, %3886
  %3890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3890, 1
  %3893 = extractvalue %dx.types.ResRet.f32 %3890, 2
  %3894 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float %3891, float %3892, float %3893)  ; Dot3(ax,ay,az,bx,by,bz)
  %3895 = add i32 %3863, 24
  %3896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3895, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.ResRet.f32 %3896, 1
  %3899 = extractvalue %dx.types.ResRet.f32 %3896, 2
  %3900 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float %3897, float %3898, float %3899)  ; Dot3(ax,ay,az,bx,by,bz)
  %3901 = add i32 %3863, 36
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float %3903, float %3904, float %3905)  ; Dot3(ax,ay,az,bx,by,bz)
  %3907 = call float @dx.op.unary.f32(i32 6, float %3894)  ; FAbs(value)
  %3908 = call float @dx.op.unary.f32(i32 6, float %3900)  ; FAbs(value)
  %3909 = call float @dx.op.unary.f32(i32 6, float %3906)  ; FAbs(value)
  %3910 = fsub fast float %3871, %3907
  %3911 = fsub fast float %3872, %3908
  %3912 = fsub fast float %3873, %3909
  %3913 = fmul fast float %3910, %3839
  %3914 = fmul fast float %3911, %3840
  %3915 = fmul fast float %3912, %3841
  %3916 = call float @dx.op.binary.f32(i32 36, float %3914, float %3915)  ; FMin(a,b)
  %3917 = call float @dx.op.binary.f32(i32 36, float %3913, float %3916)  ; FMin(a,b)
  %3918 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  %3919 = call float @dx.op.binary.f32(i32 36, float %3822, float %3918)  ; FMin(a,b)
  %3920 = uitofp i1 %3879 to float
  %3921 = fadd fast float %3737, 1.000000e+00
  %3922 = fsub fast float %3921, %3920
  %3923 = fmul fast float %3919, %3922
  %3924 = fcmp fast ogt float %3923, 0.000000e+00
  br i1 %3924, label %3931, label %3925

; <label>:3925                                    ; preds = %4073, %3818
  %3926 = phi float [ %4137, %4073 ], [ %3819, %3818 ]
  %3927 = phi float [ %4138, %4073 ], [ %3820, %3818 ]
  %3928 = phi float [ %4139, %4073 ], [ %3821, %3818 ]
  %3929 = phi float [ %4140, %4073 ], [ %3822, %3818 ]
  %3930 = icmp eq i32 %3823, %3827
  br i1 %3930, label %4141, label %3818

; <label>:3931                                    ; preds = %3818
  br i1 %3876, label %3989, label %3932

; <label>:3932                                    ; preds = %3931
  %3933 = fsub fast float -0.000000e+00, %3891
  %3934 = fsub fast float -0.000000e+00, %3892
  %3935 = fsub fast float -0.000000e+00, %3893
  %3936 = call float @dx.op.dot3.f32(i32 55, float %3771, float %3772, float %3773, float %3933, float %3934, float %3935)  ; Dot3(ax,ay,az,bx,by,bz)
  %3937 = fsub fast float -0.000000e+00, %3936
  %3938 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float %3933, float %3934, float %3935)  ; Dot3(ax,ay,az,bx,by,bz)
  %3939 = fadd fast float %3938, %3854
  %3940 = fadd fast float %3853, %3938
  %3941 = fsub fast float -0.000000e+00, %3940
  %3942 = fcmp ogt float %3936, -0.000000e+00
  %3943 = select i1 %3942, float %3941, float %3939
  %3944 = call float @dx.op.unary.f32(i32 6, float %3937)  ; FAbs(value)
  %3945 = fdiv fast float 1.000000e+00, %3944
  %3946 = fmul fast float %3943, %3945
  %3947 = call float @dx.op.binary.f32(i32 35, float %3946, float 0.000000e+00)  ; FMax(a,b)
  %3948 = fsub fast float -0.000000e+00, %3897
  %3949 = fsub fast float -0.000000e+00, %3898
  %3950 = fsub fast float -0.000000e+00, %3899
  %3951 = call float @dx.op.dot3.f32(i32 55, float %3771, float %3772, float %3773, float %3948, float %3949, float %3950)  ; Dot3(ax,ay,az,bx,by,bz)
  %3952 = fsub fast float -0.000000e+00, %3951
  %3953 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float %3948, float %3949, float %3950)  ; Dot3(ax,ay,az,bx,by,bz)
  %3954 = fadd fast float %3953, %3858
  %3955 = fadd fast float %3857, %3953
  %3956 = fsub fast float -0.000000e+00, %3955
  %3957 = fcmp ogt float %3951, -0.000000e+00
  %3958 = select i1 %3957, float %3956, float %3954
  %3959 = call float @dx.op.unary.f32(i32 6, float %3952)  ; FAbs(value)
  %3960 = fdiv fast float 1.000000e+00, %3959
  %3961 = fmul fast float %3958, %3960
  %3962 = call float @dx.op.binary.f32(i32 35, float %3961, float 0.000000e+00)  ; FMax(a,b)
  %3963 = fsub fast float -0.000000e+00, %3903
  %3964 = fsub fast float -0.000000e+00, %3904
  %3965 = fsub fast float -0.000000e+00, %3905
  %3966 = call float @dx.op.dot3.f32(i32 55, float %3771, float %3772, float %3773, float %3963, float %3964, float %3965)  ; Dot3(ax,ay,az,bx,by,bz)
  %3967 = fsub fast float -0.000000e+00, %3966
  %3968 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float %3963, float %3964, float %3965)  ; Dot3(ax,ay,az,bx,by,bz)
  %3969 = fadd fast float %3968, %3862
  %3970 = fadd fast float %3861, %3968
  %3971 = fsub fast float -0.000000e+00, %3970
  %3972 = fcmp ogt float %3966, -0.000000e+00
  %3973 = select i1 %3972, float %3971, float %3969
  %3974 = call float @dx.op.unary.f32(i32 6, float %3967)  ; FAbs(value)
  %3975 = fdiv fast float 1.000000e+00, %3974
  %3976 = fmul fast float %3973, %3975
  %3977 = call float @dx.op.binary.f32(i32 35, float %3976, float 0.000000e+00)  ; FMax(a,b)
  %3978 = call float @dx.op.binary.f32(i32 36, float %3962, float %3977)  ; FMin(a,b)
  %3979 = call float @dx.op.binary.f32(i32 36, float %3947, float %3978)  ; FMin(a,b)
  %3980 = fmul fast float %3979, %3771
  %3981 = fmul fast float %3979, %3772
  %3982 = fmul fast float %3979, %3773
  %3983 = fadd fast float %3980, %147
  %3984 = fadd fast float %3981, %148
  %3985 = fadd fast float %3982, %149
  %3986 = fsub fast float %3983, %3831
  %3987 = fsub fast float %3984, %3832
  %3988 = fsub fast float %3985, %3833
  br label %3996

; <label>:3989                                    ; preds = %3931
  %3990 = fmul fast float %3771, 8.096000e+03
  %3991 = fmul fast float %3772, 8.096000e+03
  %3992 = fmul fast float %3773, 8.096000e+03
  %3993 = fadd fast float %3990, %147
  %3994 = fadd fast float %3991, %148
  %3995 = fadd fast float %3992, %149
  br label %3996

; <label>:3996                                    ; preds = %3989, %3932
  %3997 = phi float [ %3771, %3989 ], [ %3986, %3932 ]
  %3998 = phi float [ %3772, %3989 ], [ %3987, %3932 ]
  %3999 = phi float [ %3773, %3989 ], [ %3988, %3932 ]
  %4000 = phi float [ %3993, %3989 ], [ %3983, %3932 ]
  %4001 = phi float [ %3994, %3989 ], [ %3984, %3932 ]
  %4002 = phi float [ %3995, %3989 ], [ %3985, %3932 ]
  %4003 = fcmp fast olt float %3850, 1.000000e+00
  br i1 %4003, label %4004, label %4035, !dx.controlflow.hints !112

; <label>:4004                                    ; preds = %3996
  %4005 = fmul fast float %3999, %3848
  %4006 = fmul fast float %3998, %3849
  %4007 = fsub fast float %4005, %4006
  %4008 = fmul fast float %3997, %3849
  %4009 = fmul fast float %3999, %3847
  %4010 = fsub fast float %4008, %4009
  %4011 = fmul fast float %3998, %3847
  %4012 = fmul fast float %3997, %3848
  %4013 = fsub fast float %4011, %4012
  %4014 = fmul fast float %4007, 2.000000e+00
  %4015 = fmul fast float %4010, 2.000000e+00
  %4016 = fmul fast float %4013, 2.000000e+00
  %4017 = fmul fast float %4014, %3850
  %4018 = fmul fast float %4015, %3850
  %4019 = fmul fast float %4016, %3850
  %4020 = fmul fast float %4016, %3848
  %4021 = fmul fast float %4015, %3849
  %4022 = fmul fast float %4014, %3849
  %4023 = fmul fast float %4016, %3847
  %4024 = fmul fast float %4015, %3847
  %4025 = fmul fast float %4014, %3848
  %4026 = fadd fast float %4020, %3997
  %4027 = fadd fast float %4026, %4017
  %4028 = fsub fast float %4027, %4021
  %4029 = fsub fast float %3998, %4023
  %4030 = fadd fast float %4029, %4018
  %4031 = fadd fast float %4030, %4022
  %4032 = fadd fast float %4019, %3999
  %4033 = fsub fast float %4032, %4025
  %4034 = fadd fast float %4033, %4024
  br label %4035

; <label>:4035                                    ; preds = %4004, %3996
  %4036 = phi float [ %4028, %4004 ], [ %3997, %3996 ]
  %4037 = phi float [ %4031, %4004 ], [ %3998, %3996 ]
  %4038 = phi float [ %4034, %4004 ], [ %3999, %3996 ]
  br i1 %3876, label %4070, label %4039

; <label>:4039                                    ; preds = %4035
  %4040 = fmul fast float %2340, 0x400187C840000000
  %4041 = fadd fast float %4040, 0xC00EFC2120000000
  %4042 = fmul fast float %4041, %2340
  %4043 = fadd fast float %4042, 0x3FE5D16340000000
  %4044 = fmul fast float %4043, %2340
  %4045 = fadd fast float %4044, 1.000000e+00
  %4046 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4047 = fsub fast float %4000, %147
  %4048 = fsub fast float %4001, %148
  %4049 = fsub fast float %4002, %149
  %4050 = fsub fast float %4000, %3831
  %4051 = fsub fast float %4001, %3832
  %4052 = fsub fast float %4002, %3833
  %4053 = call float @dx.op.dot3.f32(i32 55, float %4047, float %4048, float %4049, float %4047, float %4048, float %4049)  ; Dot3(ax,ay,az,bx,by,bz)
  %4054 = call float @dx.op.dot3.f32(i32 55, float %4050, float %4051, float %4052, float %4050, float %4051, float %4052)  ; Dot3(ax,ay,az,bx,by,bz)
  %4055 = fadd fast float %4054, 0x3EE4F8B580000000
  %4056 = fdiv fast float %4053, %4055
  %4057 = bitcast float %4056 to i32
  %4058 = ashr i32 %4057, 1
  %4059 = add nsw i32 %4058, 532487669
  %4060 = bitcast i32 %4059 to float
  %4061 = fmul fast float %4060, %4046
  %4062 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4063 = fmul fast float %4062, 0x4009981AE0000000
  %4064 = fsub fast float 0x40111BBD80000000, %4063
  %4065 = fmul fast float %4064, %4062
  %4066 = fadd fast float %4065, 0xC0009F6020000000
  %4067 = fmul fast float %4066, %4062
  %4068 = fadd fast float %4067, 1.000000e+00
  %4069 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  br label %4073

; <label>:4070                                    ; preds = %4035
  %4071 = icmp ne i32 %3877, -1
  %4072 = zext i1 %4071 to i32
  br label %4073

; <label>:4073                                    ; preds = %4070, %4039
  %4074 = phi float [ %2340, %4070 ], [ %4069, %4039 ]
  %4075 = phi i32 [ %4072, %4070 ], [ 0, %4039 ]
  %4076 = fmul float %4074, 5.000000e+00
  %4077 = fsub float 5.000000e+00, %4076
  %4078 = icmp ne i32 %4075, 0
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4081 = fadd fast float %4080, %4077
  %4082 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4081)  ; FMax(a,b)
  %4083 = call float @dx.op.unary.f32(i32 6, float %4036)  ; FAbs(value)
  %4084 = call float @dx.op.unary.f32(i32 6, float %4037)  ; FAbs(value)
  %4085 = fadd fast float %4084, %4083
  %4086 = call float @dx.op.unary.f32(i32 6, float %4038)  ; FAbs(value)
  %4087 = fadd fast float %4085, %4086
  %4088 = fcmp fast oeq float %4087, 0.000000e+00
  %4089 = fdiv fast float 1.000000e+00, %4087
  %4090 = select i1 %4088, float 1.000000e+00, float %4089
  %4091 = fmul fast float %4090, %4036
  %4092 = fmul fast float %4090, %4037
  %4093 = call float @dx.op.unary.f32(i32 6, float %4092)  ; FAbs(value)
  %4094 = call float @dx.op.unary.f32(i32 6, float %4091)  ; FAbs(value)
  %4095 = fsub fast float 1.000000e+00, %4093
  %4096 = fsub fast float 1.000000e+00, %4094
  %4097 = fcmp fast oge float %4091, 0.000000e+00
  %4098 = fcmp fast oge float %4092, 0.000000e+00
  %4099 = select i1 %4097, float 1.000000e+00, float -1.000000e+00
  %4100 = select i1 %4098, float 1.000000e+00, float -1.000000e+00
  %4101 = fcmp fast ole float %4038, 0.000000e+00
  %4102 = fmul fast float %4099, %4095
  %4103 = fmul fast float %4100, %4096
  %4104 = select i1 %4101, float %4102, float %4091
  %4105 = select i1 %4101, float %4103, float %4092
  %4106 = fmul fast float %4104, 5.000000e-01
  %4107 = fmul fast float %4105, 5.000000e-01
  %4108 = fadd fast float %4106, 5.000000e-01
  %4109 = fadd fast float %4107, 5.000000e-01
  %4110 = uitofp i32 %3874 to float
  %4111 = call float @dx.op.binary.f32(i32 36, float %4082, float 3.000000e+00)  ; FMin(a,b)
  %4112 = fadd fast float %4111, 2.000000e+00
  %4113 = call float @dx.op.unary.f32(i32 21, float %4112)  ; Exp(value)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4115 = fmul fast float %4114, %4113
  %4116 = fmul fast float %4115, 2.000000e+00
  %4117 = fsub fast float 1.000000e+00, %4116
  %4118 = fmul fast float %4108, %4117
  %4119 = fmul fast float %4109, %4117
  %4120 = fadd fast float %4118, %4115
  %4121 = fadd fast float %4119, %4115
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %4120, float %4121, float %4110, float undef, i32 0, i32 0, i32 undef, float %4082)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4128 = fmul fast float %4127, %3844
  %4129 = call float @dx.op.binary.f32(i32 36, float %3563, float %4128)  ; FMin(a,b)
  %4130 = select i1 %4078, float %4129, float %4128
  %4131 = fmul fast float %4123, %3923
  %4132 = fmul fast float %4131, %4130
  %4133 = fmul fast float %4124, %3923
  %4134 = fmul fast float %4133, %4130
  %4135 = fmul fast float %4125, %3923
  %4136 = fmul fast float %4135, %4130
  %4137 = fadd fast float %4132, %3819
  %4138 = fadd fast float %4134, %3820
  %4139 = fadd fast float %4136, %3821
  %4140 = fsub fast float %3822, %3923
  br label %3925

; <label>:4141                                    ; preds = %3925
  br label %4142

; <label>:4142                                    ; preds = %4141, %3788
  %4143 = phi float [ %3789, %3788 ], [ %3926, %4141 ]
  %4144 = phi float [ %3790, %3788 ], [ %3927, %4141 ]
  %4145 = phi float [ %3791, %3788 ], [ %3928, %4141 ]
  %4146 = phi float [ %3792, %3788 ], [ %3929, %4141 ]
  %4147 = add i32 %3793, 1
  %4148 = icmp ugt i32 %4147, %3785
  br i1 %4148, label %4149, label %3788, !llvm.loop !113

; <label>:4149                                    ; preds = %4142
  br label %4150

; <label>:4150                                    ; preds = %4149, %3770
  %4151 = phi float [ 0.000000e+00, %3770 ], [ %4143, %4149 ]
  %4152 = phi float [ 0.000000e+00, %3770 ], [ %4144, %4149 ]
  %4153 = phi float [ 0.000000e+00, %3770 ], [ %4145, %4149 ]
  %4154 = call float @dx.op.dot3.f32(i32 55, float %4151, float %4152, float %4153, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4155 = select i1 %270, float 0.000000e+00, float %4151
  %4156 = select i1 %270, float %4154, float %4152
  %4157 = select i1 %270, float 0.000000e+00, float %4153
  %4158 = fcmp fast olt float %3696, 0.000000e+00
  %4159 = call float @dx.op.unary.f32(i32 6, float %3696)  ; FAbs(value)
  %4160 = fmul fast float %4159, %3625
  %4161 = fmul fast float %4159, %3626
  %4162 = fmul fast float %4159, %3627
  %4163 = select i1 %4158, float %3625, float %4160
  %4164 = select i1 %4158, float %3626, float %4161
  %4165 = select i1 %4158, float %3627, float %4162
  %4166 = fsub fast float 1.000000e+00, %4159
  %4167 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4168 = fmul fast float %4167, %4155
  %4169 = fmul fast float %4167, %4156
  %4170 = fmul fast float %4167, %4157
  %4171 = fadd fast float %4163, %4168
  %4172 = fadd fast float %4164, %4169
  %4173 = fadd fast float %4165, %4170
  br label %4174

; <label>:4174                                    ; preds = %4150, %3679
  %4175 = phi float [ %3625, %3679 ], [ %4171, %4150 ]
  %4176 = phi float [ %3626, %3679 ], [ %4172, %4150 ]
  %4177 = phi float [ %3627, %3679 ], [ %4173, %4150 ]
  %4178 = fmul fast float %3685, %3621
  %4179 = fmul fast float %3685, %3622
  %4180 = fmul fast float %3685, %3623
  %4181 = call float @dx.op.dot3.f32(i32 55, float %2334, float %2335, float %2336, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4182 = fcmp fast ogt float %4181, 0x3E7FF19E20000000
  %4183 = fdiv fast float 1.000000e+00, %4181
  %4184 = select i1 %4182, float %4183, float 0.000000e+00
  %4185 = fmul fast float %4184, %2334
  %4186 = fmul fast float %4184, %2335
  %4187 = fmul fast float %4184, %2336
  %4188 = fadd fast float %4185, -1.000000e+00
  %4189 = fadd fast float %4186, -1.000000e+00
  %4190 = fadd fast float %4187, -1.000000e+00
  %4191 = fmul fast float %4188, 5.000000e-01
  %4192 = fmul fast float %4189, 5.000000e-01
  %4193 = fmul fast float %4190, 5.000000e-01
  %4194 = fadd fast float %4191, 1.000000e+00
  %4195 = fadd fast float %4192, 1.000000e+00
  %4196 = fadd fast float %4193, 1.000000e+00
  %4197 = call float @dx.op.binary.f32(i32 35, float %2345, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4198 = fdiv fast float %1157, %4197
  %4199 = fcmp fast olt float %1771, 1.270000e+02
  %4200 = fcmp fast olt float %1772, 1.270000e+02
  %4201 = fcmp fast olt float %1773, 1.270000e+02
  %4202 = fmul fast float %1771, 0xBFF7154760000000
  %4203 = fmul fast float %4202, %4198
  %4204 = fmul fast float %1772, 0xBFF7154760000000
  %4205 = fmul fast float %4204, %4198
  %4206 = fmul fast float %1773, 0xBFF7154760000000
  %4207 = fmul fast float %4206, %4198
  %4208 = call float @dx.op.unary.f32(i32 21, float %4203)  ; Exp(value)
  %4209 = call float @dx.op.unary.f32(i32 21, float %4205)  ; Exp(value)
  %4210 = call float @dx.op.unary.f32(i32 21, float %4207)  ; Exp(value)
  %4211 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4212 = call float @dx.op.unary.f32(i32 7, float %4209)  ; Saturate(value)
  %4213 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4214 = select i1 %4199, float %4211, float 0.000000e+00
  %4215 = select i1 %4200, float %4212, float 0.000000e+00
  %4216 = select i1 %4201, float %4213, float 0.000000e+00
  %4217 = fmul fast float %4214, %3685
  %4218 = fmul fast float %4215, %3685
  %4219 = fmul fast float %4216, %3685
  %4220 = fadd fast float %4217, -1.000000e+00
  %4221 = fadd fast float %4218, -1.000000e+00
  %4222 = fadd fast float %4219, -1.000000e+00
  %4223 = fmul fast float %4175, %3680
  %4224 = fmul fast float %4176, %3681
  %4225 = fmul fast float %4177, %3682
  %4226 = fsub fast float 1.000000e+00, %2345
  %4227 = bitcast float %4226 to i32
  %4228 = sitofp i32 %4227 to float
  %4229 = fmul fast float %4228, 5.000000e+00
  %4230 = fadd fast float %4229, 0xC1EFBF8940000000
  %4231 = fptosi float %4230 to i32
  %4232 = bitcast i32 %4231 to float
  %4233 = fmul fast float %4232, %1700
  %4234 = fmul fast float %3621, %4233
  %4235 = fmul fast float %4234, %3685
  %4236 = fmul fast float %4235, %4194
  %4237 = fmul fast float %3622, %4233
  %4238 = fmul fast float %4237, %3685
  %4239 = fmul fast float %4238, %4195
  %4240 = fmul fast float %3623, %4233
  %4241 = fmul fast float %4240, %3685
  %4242 = fmul fast float %4241, %4196
  %4243 = fmul fast float %4178, %1748
  %4244 = fmul fast float %4179, %1748
  %4245 = fmul fast float %4180, %1748
  %4246 = fadd fast float %4223, %1702
  %4247 = fadd fast float %4246, %4236
  %4248 = fmul fast float %4247, %1748
  %4249 = fadd fast float %4224, %1703
  %4250 = fadd fast float %4249, %4239
  %4251 = fmul fast float %4250, %1748
  %4252 = fadd fast float %4225, %1704
  %4253 = fadd fast float %4252, %4242
  %4254 = fmul fast float %4253, %1748
  %4255 = bitcast i32 %2369 to float
  %4256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4257 = extractvalue %dx.types.CBufRet.f32 %4256, 3
  %4258 = fcmp fast oeq float %4257, 0.000000e+00
  br i1 %4258, label %5812, label %4259

; <label>:4259                                    ; preds = %4174
  %4260 = extractvalue %dx.types.CBufRet.f32 %4256, 0
  %4261 = extractvalue %dx.types.CBufRet.f32 %4256, 1
  %4262 = extractvalue %dx.types.CBufRet.f32 %4256, 2
  %4263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.f32 %4263, 0
  %4265 = extractvalue %dx.types.CBufRet.f32 %4263, 1
  %4266 = extractvalue %dx.types.CBufRet.f32 %4263, 2
  %4267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.CBufRet.f32 %4267, 1
  %4270 = call float @dx.op.dot3.f32(i32 55, float %4264, float %4265, float %4266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4271 = select i1 %270, float %4268, float %4264
  %4272 = select i1 %270, float %4270, float %4265
  %4273 = select i1 %270, float %4269, float %4266
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 2
  %4276 = fmul fast float %4275, %76
  %4277 = fmul fast float %4275, %77
  %4278 = fmul fast float %4275, %78
  %4279 = fadd fast float %4276, %147
  %4280 = fadd fast float %4277, %148
  %4281 = fadd fast float %4278, %149
  %4282 = fcmp fast olt float %4257, 0.000000e+00
  br i1 %4282, label %5378, label %4283

; <label>:4283                                    ; preds = %4259
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.CBufRet.f32 %4284, 1
  %4287 = extractvalue %dx.types.CBufRet.f32 %4284, 2
  %4288 = extractvalue %dx.types.CBufRet.f32 %4284, 3
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4292 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4293 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4294, 0
  %4296 = extractvalue %dx.types.CBufRet.f32 %4294, 1
  %4297 = extractvalue %dx.types.CBufRet.f32 %4294, 2
  %4298 = extractvalue %dx.types.CBufRet.f32 %4294, 3
  %4299 = fmul fast float %4285, %4279
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %4286, float %4299)  ; FMad(a,b,c)
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %4287, float %4300)  ; FMad(a,b,c)
  %4302 = fadd fast float %4301, %4288
  %4303 = fmul fast float %4290, %4279
  %4304 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %4291, float %4303)  ; FMad(a,b,c)
  %4305 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %4292, float %4304)  ; FMad(a,b,c)
  %4306 = fadd fast float %4305, %4293
  %4307 = fmul fast float %4295, %4279
  %4308 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %4296, float %4307)  ; FMad(a,b,c)
  %4309 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %4297, float %4308)  ; FMad(a,b,c)
  %4310 = fadd fast float %4309, %4298
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 0
  %4313 = extractvalue %dx.types.CBufRet.f32 %4311, 1
  %4314 = extractvalue %dx.types.CBufRet.f32 %4311, 3
  %4315 = fmul fast float %4314, %4302
  %4316 = fmul fast float %4314, %4306
  %4317 = fadd fast float %4315, %4312
  %4318 = fadd fast float %4316, %4313
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4322 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4323 = fmul fast float %4322, %4302
  %4324 = fmul fast float %4322, %4306
  %4325 = fadd fast float %4323, %4320
  %4326 = fadd fast float %4324, %4321
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 1
  %4329 = fsub fast float %4328, %4310
  %4330 = extractvalue %dx.types.CBufRet.f32 %4327, 2
  %4331 = fmul fast float %4329, %4330
  %4332 = fsub fast float 1.000000e+00, %4331
  %4333 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4319, 2
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 2
  %4337 = fadd fast float %4336, %4334
  %4338 = fcmp fast ogt float %4337, 0.000000e+00
  br i1 %4338, label %4339, label %4363

; <label>:4339                                    ; preds = %4283
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 0
  %4342 = extractvalue %dx.types.CBufRet.f32 %4340, 1
  %4343 = fsub fast float %4325, %4341
  %4344 = fsub fast float %4326, %4342
  %4345 = fcmp fast olt float %4343, 0.000000e+00
  %4346 = fcmp fast olt float %4344, 0.000000e+00
  %4347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4348 = extractvalue %dx.types.CBufRet.f32 %4347, 0
  %4349 = extractvalue %dx.types.CBufRet.f32 %4347, 1
  %4350 = extractvalue %dx.types.CBufRet.f32 %4347, 2
  %4351 = extractvalue %dx.types.CBufRet.f32 %4347, 3
  %4352 = select i1 %4345, float %4348, float %4350
  %4353 = select i1 %4346, float %4349, float %4351
  %4354 = fmul fast float %4352, %4343
  %4355 = fmul fast float %4353, %4344
  %4356 = call float @dx.op.unary.f32(i32 6, float %4354)  ; FAbs(value)
  %4357 = call float @dx.op.unary.f32(i32 6, float %4355)  ; FAbs(value)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4274, 0
  %4359 = call float @dx.op.binary.f32(i32 35, float %4356, float %4357)  ; FMax(a,b)
  %4360 = fsub fast float %4358, %4359
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fmul fast float %4361, %4333
  br label %4363

; <label>:4363                                    ; preds = %4339, %4283
  %4364 = phi float [ %4362, %4339 ], [ 0.000000e+00, %4283 ]
  %4365 = extractvalue %dx.types.CBufRet.f32 %4311, 2
  %4366 = extractvalue %dx.types.CBufRet.f32 %4335, 1
  %4367 = fadd fast float %4366, %4365
  %4368 = fcmp fast ogt float %4367, 0.000000e+00
  %4369 = extractvalue %dx.types.CBufRet.f32 %4274, 0
  br i1 %4368, label %4370, label %4393

; <label>:4370                                    ; preds = %4363
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.CBufRet.f32 %4371, 1
  %4374 = fsub fast float %4317, %4372
  %4375 = fsub fast float %4318, %4373
  %4376 = fcmp fast olt float %4374, 0.000000e+00
  %4377 = fcmp fast olt float %4375, 0.000000e+00
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4380 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4381 = extractvalue %dx.types.CBufRet.f32 %4378, 2
  %4382 = extractvalue %dx.types.CBufRet.f32 %4378, 3
  %4383 = select i1 %4376, float %4379, float %4381
  %4384 = select i1 %4377, float %4380, float %4382
  %4385 = fmul fast float %4383, %4374
  %4386 = fmul fast float %4384, %4375
  %4387 = call float @dx.op.unary.f32(i32 6, float %4385)  ; FAbs(value)
  %4388 = call float @dx.op.unary.f32(i32 6, float %4386)  ; FAbs(value)
  %4389 = call float @dx.op.binary.f32(i32 35, float %4387, float %4388)  ; FMax(a,b)
  %4390 = fsub fast float %4369, %4389
  %4391 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4392 = fmul fast float %4391, %4333
  br label %4393

; <label>:4393                                    ; preds = %4370, %4363
  %4394 = phi float [ %4392, %4370 ], [ 0.000000e+00, %4363 ]
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 1
  %4397 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 0
  %4400 = extractvalue %dx.types.CBufRet.f32 %4398, 1
  %4401 = fsub fast float %4302, %4399
  %4402 = fsub fast float %4306, %4400
  %4403 = fcmp fast olt float %4401, 0.000000e+00
  %4404 = fcmp fast olt float %4402, 0.000000e+00
  %4405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4406 = extractvalue %dx.types.CBufRet.f32 %4405, 0
  %4407 = extractvalue %dx.types.CBufRet.f32 %4405, 1
  %4408 = extractvalue %dx.types.CBufRet.f32 %4405, 2
  %4409 = extractvalue %dx.types.CBufRet.f32 %4405, 3
  %4410 = select i1 %4403, float %4406, float %4408
  %4411 = select i1 %4404, float %4407, float %4409
  %4412 = fmul fast float %4410, %4401
  %4413 = fmul fast float %4411, %4402
  %4414 = call float @dx.op.unary.f32(i32 6, float %4412)  ; FAbs(value)
  %4415 = call float @dx.op.unary.f32(i32 6, float %4413)  ; FAbs(value)
  %4416 = call float @dx.op.binary.f32(i32 35, float %4414, float %4415)  ; FMax(a,b)
  %4417 = fsub fast float %4369, %4416
  %4418 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4419 = call float @dx.op.binary.f32(i32 36, float %4418, float %4397)  ; FMin(a,b)
  %4420 = fmul fast float %4419, %4333
  %4421 = fsub fast float %4394, %4420
  %4422 = fsub fast float %4364, %4394
  %4423 = fsub fast float %4422, %4420
  %4424 = call float @dx.op.binary.f32(i32 35, float %4394, float %4364)  ; FMax(a,b)
  %4425 = call float @dx.op.binary.f32(i32 35, float %4420, float %4424)  ; FMax(a,b)
  %4426 = fcmp fast olt float %4425, 1.000000e+00
  br i1 %4426, label %4427, label %4825, !dx.controlflow.hints !115

; <label>:4427                                    ; preds = %4393
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 0
  %4430 = fcmp fast une float %4429, 0.000000e+00
  br i1 %4430, label %4431, label %4825, !dx.controlflow.hints !116

; <label>:4431                                    ; preds = %4427
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.CBufRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.CBufRet.f32 %4432, 2
  %4436 = extractvalue %dx.types.CBufRet.f32 %4432, 3
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.CBufRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4441 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 0
  %4444 = extractvalue %dx.types.CBufRet.f32 %4442, 1
  %4445 = extractvalue %dx.types.CBufRet.f32 %4442, 2
  %4446 = extractvalue %dx.types.CBufRet.f32 %4442, 3
  %4447 = fmul fast float %4433, %4279
  %4448 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %4434, float %4447)  ; FMad(a,b,c)
  %4449 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %4435, float %4448)  ; FMad(a,b,c)
  %4450 = fadd fast float %4449, %4436
  %4451 = fmul fast float %4438, %4279
  %4452 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %4439, float %4451)  ; FMad(a,b,c)
  %4453 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %4440, float %4452)  ; FMad(a,b,c)
  %4454 = fadd fast float %4453, %4441
  %4455 = fmul fast float %4443, %4279
  %4456 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %4444, float %4455)  ; FMad(a,b,c)
  %4457 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %4445, float %4456)  ; FMad(a,b,c)
  %4458 = fadd fast float %4457, %4446
  %4459 = fcmp fast oge float %4450, 1.000000e+00
  %4460 = fcmp fast oge float %4454, 1.000000e+00
  %4461 = or i1 %4459, %4460
  %4462 = fcmp fast olt float %4450, 0.000000e+00
  %4463 = fcmp fast olt float %4454, 0.000000e+00
  %4464 = or i1 %4462, %4463
  %4465 = or i1 %4461, %4464
  br i1 %4465, label %4825, label %4466, !dx.controlflow.hints !117

; <label>:4466                                    ; preds = %4431
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4470 = extractvalue %dx.types.CBufRet.f32 %4467, 2
  %4471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.i32 %4471, 2
  %4473 = uitofp i32 %4472 to float
  %4474 = extractvalue %dx.types.CBufRet.i32 %4471, 3
  %4475 = uitofp i32 %4474 to float
  %4476 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4477 = fmul fast float %4476, 2.000000e+00
  %4478 = fsub fast float %4450, %4468
  %4479 = fsub fast float %4454, %4469
  %4480 = fmul fast float %4477, %4478
  %4481 = fmul fast float %4477, %4479
  %4482 = fdiv fast float 1.000000e+00, %4262
  %4483 = fmul fast float %4481, %4482
  %4484 = call float @dx.op.unary.f32(i32 6, float %4483)  ; FAbs(value)
  %4485 = fmul fast float %4470, %4281
  %4486 = fmul fast float %4485, %4477
  %4487 = call float @dx.op.unary.f32(i32 6, float %4486)  ; FAbs(value)
  %4488 = call float @dx.op.unary.f32(i32 6, float %4480)  ; FAbs(value)
  %4489 = call float @dx.op.binary.f32(i32 35, float %4487, float %4484)  ; FMax(a,b)
  %4490 = call float @dx.op.binary.f32(i32 35, float %4488, float %4489)  ; FMax(a,b)
  %4491 = fmul fast float %4490, 2.000000e+00
  %4492 = call float @dx.op.unary.f32(i32 23, float %4491)  ; Log(value)
  %4493 = call float @dx.op.binary.f32(i32 35, float %4492, float %4473)  ; FMax(a,b)
  %4494 = call float @dx.op.unary.f32(i32 22, float %4493)  ; Frc(value)
  %4495 = fadd fast float %4494, 0xBFEA666660000000
  %4496 = fmul fast float %4495, 8.000000e+00
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = call float @dx.op.unary.f32(i32 27, float %4493)  ; Round_ni(value)
  %4499 = fadd fast float %4498, %4497
  %4500 = call float @dx.op.binary.f32(i32 36, float %4499, float %4475)  ; FMin(a,b)
  %4501 = call float @dx.op.unary.f32(i32 27, float %4500)  ; Round_ni(value)
  %4502 = fsub fast float -0.000000e+00, %4501
  %4503 = call float @dx.op.unary.f32(i32 21, float %4502)  ; Exp(value)
  %4504 = fmul fast float %4503, %4477
  %4505 = fmul fast float %4504, %4450
  %4506 = fmul fast float %4504, %4454
  %4507 = fmul fast float %4505, 2.500000e-01
  %4508 = fmul fast float %4506, 2.500000e-01
  %4509 = fadd fast float %4507, 5.000000e-01
  %4510 = fadd fast float %4508, 5.000000e-01
  %4511 = fsub fast float %4475, %4473
  %4512 = fptoui float %4511 to i32
  %4513 = add i32 %4512, 320
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4513)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 1
  %4517 = fcmp fast une float %4500, %4475
  %4518 = fsub fast float %4450, %4515
  %4519 = fsub fast float %4454, %4516
  %4520 = call float @dx.op.unary.f32(i32 6, float %4518)  ; FAbs(value)
  %4521 = call float @dx.op.unary.f32(i32 6, float %4519)  ; FAbs(value)
  %4522 = fmul fast float %4520, %4504
  %4523 = fmul fast float %4521, %4504
  %4524 = fcmp fast olt float %4522, 1.000000e+00
  %4525 = fcmp fast olt float %4523, 1.000000e+00
  %4526 = and i1 %4524, %4525
  %4527 = or i1 %4517, %4526
  br i1 %4527, label %4528, label %4825, !dx.controlflow.hints !118

; <label>:4528                                    ; preds = %4466
  %4529 = fmul fast float %4506, 5.000000e-01
  %4530 = fmul fast float %4505, 5.000000e-01
  %4531 = fadd fast float %4529, 5.000000e-01
  %4532 = fadd fast float %4530, 5.000000e-01
  %4533 = sitofp i32 %4472 to float
  %4534 = fsub fast float %4500, %4533
  %4535 = call float @dx.op.unary.f32(i32 27, float %4534)  ; Round_ni(value)
  %4536 = call float @dx.op.unary.f32(i32 22, float %4500)  ; Frc(value)
  %4537 = call float @dx.op.unary.f32(i32 22, float %4532)  ; Frc(value)
  %4538 = call float @dx.op.unary.f32(i32 22, float %4531)  ; Frc(value)
  %4539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4537, float %4538, float %4535, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4540 = extractvalue %dx.types.ResRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.ResRet.f32 %4539, 1
  %4542 = extractvalue %dx.types.ResRet.f32 %4539, 2
  %4543 = extractvalue %dx.types.ResRet.f32 %4539, 3
  %4544 = fcmp fast ogt float %4536, 0.000000e+00
  br i1 %4544, label %4545, label %4566, !dx.controlflow.hints !119

; <label>:4545                                    ; preds = %4528
  %4546 = fadd fast float %4535, 1.000000e+00
  %4547 = call float @dx.op.unary.f32(i32 22, float %4509)  ; Frc(value)
  %4548 = call float @dx.op.unary.f32(i32 22, float %4510)  ; Frc(value)
  %4549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4547, float %4548, float %4546, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.ResRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.ResRet.f32 %4549, 2
  %4553 = extractvalue %dx.types.ResRet.f32 %4549, 3
  %4554 = fsub fast float %4550, %4540
  %4555 = fsub fast float %4551, %4541
  %4556 = fsub fast float %4552, %4542
  %4557 = fsub fast float %4553, %4543
  %4558 = fmul fast float %4554, %4536
  %4559 = fmul fast float %4555, %4536
  %4560 = fmul fast float %4556, %4536
  %4561 = fmul fast float %4557, %4536
  %4562 = fadd fast float %4558, %4540
  %4563 = fadd fast float %4559, %4541
  %4564 = fadd fast float %4560, %4542
  %4565 = fadd fast float %4561, %4543
  br label %4566

; <label>:4566                                    ; preds = %4545, %4528
  %4567 = phi float [ %4562, %4545 ], [ %4540, %4528 ]
  %4568 = phi float [ %4563, %4545 ], [ %4541, %4528 ]
  %4569 = phi float [ %4564, %4545 ], [ %4542, %4528 ]
  %4570 = phi float [ %4565, %4545 ], [ %4543, %4528 ]
  %4571 = fadd fast float %4567, -5.000000e-01
  %4572 = fadd fast float %4569, -5.000000e-01
  %4573 = fmul fast float %4571, 0xBFD5555560000000
  %4574 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4572, float %4573)  ; FMad(a,b,c)
  %4575 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4568, float 0.000000e+00)  ; FMad(a,b,c)
  %4576 = fadd fast float %4575, %4570
  %4577 = fmul fast float %4571, -7.500000e-01
  %4578 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4572, float %4577)  ; FMad(a,b,c)
  %4579 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4568, float 0.000000e+00)  ; FMad(a,b,c)
  %4580 = fadd fast float %4579, %4570
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 0
  %4583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4583, 0
  %4585 = extractvalue %dx.types.CBufRet.f32 %4583, 1
  %4586 = extractvalue %dx.types.CBufRet.f32 %4583, 2
  %4587 = extractvalue %dx.types.CBufRet.f32 %4583, 3
  %4588 = fsub fast float %4584, %4574
  %4589 = fsub fast float %4585, %4576
  %4590 = fsub fast float %4586, %4578
  %4591 = fsub fast float %4587, %4580
  %4592 = fmul fast float %4588, %4582
  %4593 = fmul fast float %4589, %4582
  %4594 = fmul fast float %4590, %4582
  %4595 = fmul fast float %4591, %4582
  %4596 = fadd fast float %4592, %4574
  %4597 = fadd fast float %4593, %4576
  %4598 = fadd fast float %4594, %4578
  %4599 = fadd fast float %4595, %4580
  %4600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.i32 %4600, 0
  %4602 = and i32 %4601, 536870911
  %4603 = uitofp i32 %4602 to float
  %4604 = fmul fast float %4603, %4450
  %4605 = fmul fast float %4603, %4454
  %4606 = fptoui float %4604 to i32
  %4607 = fptoui float %4605 to i32
  %4608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.i32 %4608, 0
  %4610 = and i32 %4609, 31
  %4611 = lshr i32 %4606, %4610
  %4612 = lshr i32 %4607, %4610
  %4613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4614 = extractvalue %dx.types.ResRet.i32 %4613, 0
  %4615 = and i32 %4614, 31
  %4616 = shl i32 1, %4615
  %4617 = call i32 @dx.op.binary.i32(i32 40, i32 %4616, i32 4)  ; UMin(a,b)
  %4618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4619 = extractvalue %dx.types.ResRet.i32 %4618, 0
  %4620 = extractvalue %dx.types.ResRet.i32 %4618, 1
  %4621 = icmp eq i32 %4617, 0
  br i1 %4621, label %4663, label %4622

; <label>:4622                                    ; preds = %4566
  br label %4623

; <label>:4623                                    ; preds = %4651, %4622
  %4624 = phi i32 [ %4654, %4651 ], [ 0, %4622 ]
  %4625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4626 = extractvalue %dx.types.ResRet.i32 %4625, 0
  %4627 = lshr i32 %4626, 16
  %4628 = and i32 %4627, 31
  %4629 = shl i32 %4612, %4628
  %4630 = add i32 %4629, %4611
  %4631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4632 = extractvalue %dx.types.ResRet.i32 %4631, 0
  %4633 = and i32 %4632, 31
  %4634 = shl i32 %4630, %4633
  %4635 = add i32 %4634, %4624
  %4636 = shl i32 %4635, 2
  %4637 = add i32 %4636, 32
  %4638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4637, i32 undef)  ; BufferLoad(srv,index,wot)
  %4639 = extractvalue %dx.types.ResRet.i32 %4638, 0
  %4640 = icmp slt i32 %4639, 0
  %4641 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4624
  %4642 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4624
  %4643 = bitcast float* %4641 to i32*
  %4644 = bitcast float* %4642 to i32*
  br i1 %4640, label %4645, label %4651

; <label>:4645                                    ; preds = %4623
  %4646 = and i32 %4639, 1073741823
  %4647 = add nuw nsw i32 %4646, 20
  %4648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4647, i32 undef)  ; BufferLoad(srv,index,wot)
  %4649 = extractvalue %dx.types.ResRet.i32 %4648, 0
  %4650 = extractvalue %dx.types.ResRet.i32 %4648, 1
  br label %4651

; <label>:4651                                    ; preds = %4645, %4623
  %4652 = phi i32 [ %4649, %4645 ], [ %4619, %4623 ]
  %4653 = phi i32 [ %4650, %4645 ], [ %4620, %4623 ]
  store i32 %4652, i32* %4643, align 4
  store i32 %4653, i32* %4644, align 4
  %4654 = add nuw i32 %4624, 1
  %4655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.i32 %4655, 2
  %4657 = icmp eq i32 %4656, 0
  %4658 = icmp ugt i32 %4639, -1073741825
  %4659 = and i1 %4658, %4657
  %4660 = icmp ult i32 %4654, %4617
  %4661 = and i1 %4659, %4660
  br i1 %4661, label %4623, label %4662

; <label>:4662                                    ; preds = %4651
  br label %4663

; <label>:4663                                    ; preds = %4662, %4566
  %4664 = phi i32 [ 0, %4566 ], [ %4654, %4662 ]
  %4665 = extractvalue %dx.types.CBufRet.f32 %4428, 2
  %4666 = fptoui float %4665 to i32
  %4667 = icmp eq i32 %4666, 0
  br i1 %4667, label %4719, label %4668

; <label>:4668                                    ; preds = %4663
  br label %4669

; <label>:4669                                    ; preds = %4714, %4668
  %4670 = phi i32 [ %4715, %4714 ], [ %4664, %4668 ]
  %4671 = phi i32 [ %4716, %4714 ], [ 0, %4668 ]
  %4672 = lshr i32 %4671, 2
  %4673 = and i32 %4671, 3
  %4674 = add nuw nsw i32 %4672, 83
  %4675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4674)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.i32 %4675, 0
  %4677 = extractvalue %dx.types.CBufRet.i32 %4675, 1
  %4678 = extractvalue %dx.types.CBufRet.i32 %4675, 2
  %4679 = extractvalue %dx.types.CBufRet.i32 %4675, 3
  %4680 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4676, i32* %4680, align 4
  %4681 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4677, i32* %4681, align 4
  %4682 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4678, i32* %4682, align 4
  %4683 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4679, i32* %4683, align 4
  %4684 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4673
  %4685 = load i32, i32* %4684, align 4, !tbaa !120, !noalias !124
  %4686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4687 = extractvalue %dx.types.ResRet.i32 %4686, 0
  %4688 = lshr i32 %4687, 16
  %4689 = and i32 %4688, 31
  %4690 = shl i32 %4612, %4689
  %4691 = add i32 %4690, %4611
  %4692 = shl i32 %4691, 2
  %4693 = add i32 %4692, %4685
  %4694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4693, i32 undef)  ; BufferLoad(srv,index,wot)
  %4695 = extractvalue %dx.types.ResRet.i32 %4694, 0
  %4696 = icmp eq i32 %4695, 0
  br i1 %4696, label %4714, label %4697

; <label>:4697                                    ; preds = %4669
  %4698 = icmp slt i32 %4695, 0
  %4699 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4670
  %4700 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4670
  %4701 = bitcast float* %4699 to i32*
  %4702 = bitcast float* %4700 to i32*
  br i1 %4698, label %4703, label %4710

; <label>:4703                                    ; preds = %4697
  %4704 = and i32 %4695, 1073741823
  %4705 = add i32 %4685, 20
  %4706 = add i32 %4705, %4704
  %4707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4706, i32 undef)  ; BufferLoad(srv,index,wot)
  %4708 = extractvalue %dx.types.ResRet.i32 %4707, 0
  %4709 = extractvalue %dx.types.ResRet.i32 %4707, 1
  br label %4710

; <label>:4710                                    ; preds = %4703, %4697
  %4711 = phi i32 [ %4708, %4703 ], [ %4619, %4697 ]
  %4712 = phi i32 [ %4709, %4703 ], [ %4620, %4697 ]
  store i32 %4711, i32* %4701, align 4
  store i32 %4712, i32* %4702, align 4
  %4713 = add i32 %4670, 1
  br label %4714

; <label>:4714                                    ; preds = %4710, %4669
  %4715 = phi i32 [ %4670, %4669 ], [ %4713, %4710 ]
  %4716 = add nuw i32 %4671, 1
  %4717 = icmp eq i32 %4716, %4666
  br i1 %4717, label %4718, label %4669

; <label>:4718                                    ; preds = %4714
  br label %4719

; <label>:4719                                    ; preds = %4718, %4663
  %4720 = phi i32 [ %4664, %4663 ], [ %4715, %4718 ]
  %4721 = icmp eq i32 %4720, 1
  %4722 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %4723 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %4721, label %4724, label %4727

; <label>:4724                                    ; preds = %4719
  %4725 = load float, float* %4722, align 4
  %4726 = load float, float* %4723, align 4
  br label %4754

; <label>:4727                                    ; preds = %4719
  %4728 = load float, float* %4722, align 4
  %4729 = load float, float* %4723, align 4
  %4730 = fdiv fast float 1.000000e+00, %4729
  %4731 = fsub fast float %4728, %4730
  %4732 = icmp ugt i32 %4720, 1
  br i1 %4732, label %4733, label %4749

; <label>:4733                                    ; preds = %4727
  br label %4734

; <label>:4734                                    ; preds = %4734, %4733
  %4735 = phi float [ %4744, %4734 ], [ %4731, %4733 ]
  %4736 = phi float [ %4745, %4734 ], [ %4728, %4733 ]
  %4737 = phi i32 [ %4746, %4734 ], [ 1, %4733 ]
  %4738 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4737
  %4739 = load float, float* %4738, align 4
  %4740 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4737
  %4741 = load float, float* %4740, align 4
  %4742 = fdiv fast float 1.000000e+00, %4741
  %4743 = fsub fast float %4739, %4742
  %4744 = call float @dx.op.binary.f32(i32 36, float %4735, float %4743)  ; FMin(a,b)
  %4745 = call float @dx.op.binary.f32(i32 35, float %4736, float %4739)  ; FMax(a,b)
  %4746 = add nuw i32 %4737, 1
  %4747 = icmp eq i32 %4746, %4720
  br i1 %4747, label %4748, label %4734

; <label>:4748                                    ; preds = %4734
  br label %4749

; <label>:4749                                    ; preds = %4748, %4727
  %4750 = phi float [ %4731, %4727 ], [ %4744, %4748 ]
  %4751 = phi float [ %4728, %4727 ], [ %4745, %4748 ]
  %4752 = fsub fast float %4751, %4750
  %4753 = fdiv fast float 1.000000e+00, %4752
  br label %4754

; <label>:4754                                    ; preds = %4749, %4724
  %4755 = phi float [ %4725, %4724 ], [ %4751, %4749 ]
  %4756 = phi float [ %4726, %4724 ], [ %4753, %4749 ]
  %4757 = fadd fast float %4458, %4755
  %4758 = fmul fast float %4757, %4756
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fmul fast float %4759, 2.000000e+00
  %4761 = fsub fast float 1.000000e+00, %4760
  %4762 = fmul fast float %4596, %4596
  %4763 = fsub fast float %4597, %4762
  %4764 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4763)  ; FMax(a,b)
  %4765 = fdiv fast float 1.000000e+00, %4764
  %4766 = fmul fast float %4597, %4596
  %4767 = fsub fast float %4598, %4766
  %4768 = fsub fast float %4761, %4596
  %4769 = fmul fast float %4761, %4761
  %4770 = fsub fast float %4769, %4597
  %4771 = fmul fast float %4765, %4767
  %4772 = fmul fast float %4771, %4768
  %4773 = fsub fast float %4770, %4772
  %4774 = fmul fast float %4597, %4597
  %4775 = fsub fast float %4599, %4774
  %4776 = fmul fast float %4767, %4767
  %4777 = fmul fast float %4776, %4765
  %4778 = fsub fast float %4775, %4777
  %4779 = fdiv fast float %4773, %4778
  %4780 = fmul fast float %4779, %4767
  %4781 = fsub fast float %4768, %4780
  %4782 = fmul fast float %4781, %4765
  %4783 = fmul fast float %4782, %4596
  %4784 = fsub fast float 1.000000e+00, %4783
  %4785 = fmul fast float %4779, %4597
  %4786 = fsub fast float %4784, %4785
  %4787 = fmul fast float %4782, %4782
  %4788 = fmul fast float %4779, 4.000000e+00
  %4789 = fmul fast float %4788, %4786
  %4790 = fsub fast float %4787, %4789
  %4791 = call float @dx.op.unary.f32(i32 24, float %4790)  ; Sqrt(value)
  %4792 = fcmp fast oge float %4782, 0.000000e+00
  %4793 = fsub fast float -0.000000e+00, %4791
  %4794 = select i1 %4792, float %4793, float %4791
  %4795 = fsub fast float %4794, %4782
  %4796 = fdiv fast float %4795, %4779
  %4797 = fdiv fast float %4786, %4795
  %4798 = fmul fast float %4796, 5.000000e-01
  %4799 = fmul fast float %4797, 2.000000e+00
  %4800 = select i1 %4792, float %4798, float %4799
  %4801 = select i1 %4792, float %4799, float %4798
  %4802 = call float @dx.op.binary.f32(i32 35, float %4800, float %4801)  ; FMax(a,b)
  %4803 = call float @dx.op.binary.f32(i32 36, float %4800, float %4801)  ; FMin(a,b)
  %4804 = fcmp fast ogt float %4761, %4802
  %4805 = fsub fast float %4761, %4803
  %4806 = fsub fast float %4761, %4802
  %4807 = fsub fast float %4802, %4803
  %4808 = select i1 %4804, float %4806, float %4807
  %4809 = fmul float %4805, %4808
  %4810 = select i1 %4804, float %4803, float %4761
  %4811 = fcmp fast ogt float %4761, %4803
  %4812 = fmul fast float %4810, %4802
  %4813 = fadd fast float %4810, %4802
  %4814 = fmul fast float %4813, %4596
  %4815 = fadd fast float %4812, %4597
  %4816 = fsub fast float %4815, %4814
  %4817 = fdiv fast float %4816, %4809
  %4818 = select i1 %4811, float %4817, float 0.000000e+00
  %4819 = fsub fast float 1.000000e+00, %4818
  %4820 = select i1 %4804, float %4819, float %4818
  %4821 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4581, 3
  %4823 = fmul fast float %4822, %4821
  %4824 = fsub fast float 1.000000e+00, %4823
  br label %4825

; <label>:4825                                    ; preds = %4754, %4466, %4431, %4427, %4393
  %4826 = phi float [ 1.000000e+00, %4393 ], [ %4824, %4754 ], [ 1.000000e+00, %4431 ], [ 1.000000e+00, %4466 ], [ 1.000000e+00, %4427 ]
  %4827 = fcmp fast ogt float %4423, 0.000000e+00
  br i1 %4827, label %4828, label %4990, !dx.controlflow.hints !133

; <label>:4828                                    ; preds = %4825
  %4829 = fadd fast float %4336, %4310
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 2
  %4832 = extractvalue %dx.types.CBufRet.f32 %4830, 3
  %4833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4834 = extractvalue %dx.types.CBufRet.f32 %4833, 2
  %4835 = call float @dx.op.binary.f32(i32 35, float %4829, float 0.000000e+00)  ; FMax(a,b)
  %4836 = fadd fast float %4835, 0x3F10000000000000
  %4837 = fcmp fast oeq float %4834, 0.000000e+00
  br i1 %4837, label %4838, label %4905

; <label>:4838                                    ; preds = %4828
  %4839 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4840 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4841 = fmul fast float %4840, %4325
  %4842 = fmul fast float %4839, %4326
  %4843 = fadd fast float %4841, 5.000000e-01
  %4844 = call float @dx.op.unary.f32(i32 27, float %4843)  ; Round_ni(value)
  %4845 = fadd fast float %4842, 5.000000e-01
  %4846 = call float @dx.op.unary.f32(i32 27, float %4845)  ; Round_ni(value)
  %4847 = fsub fast float %4843, %4844
  %4848 = fsub fast float %4845, %4846
  %4849 = fadd fast float %4844, -5.000000e-01
  %4850 = fadd fast float %4846, -5.000000e-01
  %4851 = fmul fast float %4847, 2.000000e+00
  %4852 = fsub fast float 3.000000e+00, %4851
  %4853 = fadd fast float %4851, 1.000000e+00
  %4854 = fsub fast float 2.000000e+00, %4847
  %4855 = bitcast float %4852 to i32
  %4856 = sub nsw i32 2129859010, %4855
  %4857 = bitcast i32 %4856 to float
  %4858 = fmul fast float %4857, %4854
  %4859 = fadd fast float %4858, -1.000000e+00
  %4860 = bitcast float %4853 to i32
  %4861 = sub nsw i32 2129859010, %4860
  %4862 = bitcast i32 %4861 to float
  %4863 = fmul fast float %4862, %4847
  %4864 = fadd fast float %4863, 1.000000e+00
  %4865 = fmul fast float %4848, 2.000000e+00
  %4866 = fsub fast float 3.000000e+00, %4865
  %4867 = fadd fast float %4865, 1.000000e+00
  %4868 = fsub fast float 2.000000e+00, %4848
  %4869 = bitcast float %4866 to i32
  %4870 = sub nsw i32 2129859010, %4869
  %4871 = bitcast i32 %4870 to float
  %4872 = fmul fast float %4871, %4868
  %4873 = fadd fast float %4872, -1.000000e+00
  %4874 = bitcast float %4867 to i32
  %4875 = sub nsw i32 2129859010, %4874
  %4876 = bitcast i32 %4875 to float
  %4877 = fmul fast float %4876, %4848
  %4878 = fadd fast float %4877, 1.000000e+00
  %4879 = fadd fast float %4859, %4849
  %4880 = fmul fast float %4879, %4831
  %4881 = fadd fast float %4873, %4850
  %4882 = fmul fast float %4881, %4832
  %4883 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4880, float %4882, float undef, float undef, i32 0, i32 0, i32 undef, float %4836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4884 = extractvalue %dx.types.ResRet.f32 %4883, 0
  %4885 = fmul fast float %4884, %4852
  %4886 = fadd fast float %4864, %4849
  %4887 = fmul fast float %4886, %4831
  %4888 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4887, float %4882, float undef, float undef, i32 0, i32 0, i32 undef, float %4836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4889 = extractvalue %dx.types.ResRet.f32 %4888, 0
  %4890 = fmul fast float %4889, %4853
  %4891 = fadd fast float %4878, %4850
  %4892 = fmul fast float %4891, %4832
  %4893 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4880, float %4892, float undef, float undef, i32 0, i32 0, i32 undef, float %4836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4894 = extractvalue %dx.types.ResRet.f32 %4893, 0
  %4895 = fmul fast float %4894, %4852
  %4896 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4887, float %4892, float undef, float undef, i32 0, i32 0, i32 undef, float %4836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = fmul fast float %4897, %4853
  %4899 = fadd fast float %4898, %4895
  %4900 = fmul fast float %4899, %4867
  %4901 = fadd fast float %4890, %4885
  %4902 = fmul fast float %4901, %4866
  %4903 = fadd fast float %4902, %4900
  %4904 = fmul fast float %4903, 6.250000e-02
  br label %4990

; <label>:4905                                    ; preds = %4828
  %4906 = fmul fast float %281, 0x401921FB60000000
  %4907 = call float @dx.op.unary.f32(i32 13, float %4906)  ; Sin(value)
  %4908 = call float @dx.op.unary.f32(i32 12, float %4906)  ; Cos(value)
  %4909 = fsub fast float -0.000000e+00, %4907
  br label %4910

; <label>:4910                                    ; preds = %4959, %4905
  %4911 = phi float [ 0.000000e+00, %4905 ], [ %4954, %4959 ]
  %4912 = phi float [ 0.000000e+00, %4905 ], [ %4956, %4959 ]
  %4913 = phi i32 [ 0, %4905 ], [ %4960, %4959 ]
  %4914 = mul i32 %4913, 2
  %4915 = add i32 0, %4914
  %4916 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4915
  %4917 = load float, float* %4916, align 4
  %4918 = mul i32 %4913, 2
  %4919 = add i32 1, %4918
  %4920 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4919
  %4921 = load float, float* %4920, align 4
  %4922 = fmul fast float %4917, %4908
  %4923 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4909, float %4922)  ; FMad(a,b,c)
  %4924 = fmul fast float %4917, %4907
  %4925 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4908, float %4924)  ; FMad(a,b,c)
  %4926 = fmul fast float %4923, %4834
  %4927 = fmul fast float %4925, %4834
  %4928 = fadd fast float %4926, %4325
  %4929 = fadd fast float %4927, %4326
  %4930 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4928, float %4929, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4931 = extractvalue %dx.types.ResRet.f32 %4930, 0
  %4932 = extractvalue %dx.types.ResRet.f32 %4930, 1
  %4933 = extractvalue %dx.types.ResRet.f32 %4930, 2
  %4934 = extractvalue %dx.types.ResRet.f32 %4930, 3
  %4935 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %4931, float* %4935, align 4
  %4936 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %4932, float* %4936, align 4
  %4937 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %4933, float* %4937, align 4
  %4938 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %4934, float* %4938, align 4
  %4939 = fsub fast float %4931, %4836
  %4940 = fcmp fast olt float %4939, 0.000000e+00
  %4941 = select i1 %4940, float 0.000000e+00, float 1.000000e+00
  %4942 = fadd fast float %4941, %4911
  %4943 = fmul fast float %4941, %4939
  %4944 = fadd fast float %4943, %4912
  br label %4945

; <label>:4945                                    ; preds = %4945, %4910
  %4946 = phi i32 [ 1, %4910 ], [ %4957, %4945 ]
  %4947 = phi float [ %4944, %4910 ], [ %4956, %4945 ]
  %4948 = phi float [ %4942, %4910 ], [ %4954, %4945 ]
  %4949 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %4946
  %4950 = load float, float* %4949, align 4, !tbaa !134, !noalias !124
  %4951 = fsub fast float %4950, %4836
  %4952 = fcmp fast olt float %4951, 0.000000e+00
  %4953 = select i1 %4952, float 0.000000e+00, float 1.000000e+00
  %4954 = fadd fast float %4953, %4948
  %4955 = fmul fast float %4953, %4951
  %4956 = fadd fast float %4955, %4947
  %4957 = add nuw nsw i32 %4946, 1
  %4958 = icmp eq i32 %4957, 4
  br i1 %4958, label %4959, label %4945, !llvm.loop !136

; <label>:4959                                    ; preds = %4945
  %4960 = add nuw nsw i32 %4913, 1
  %4961 = icmp eq i32 %4960, 8
  br i1 %4961, label %4962, label %4910, !llvm.loop !137

; <label>:4962                                    ; preds = %4959
  %4963 = fdiv fast float 1.000000e+00, %4954
  %4964 = fmul fast float %4963, %4956
  %4965 = fdiv fast float 1.000000e+00, %4836
  %4966 = fmul fast float %4964, %4965
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = call float @dx.op.binary.f32(i32 35, float %4967, float 0.000000e+00)  ; FMax(a,b)
  %4969 = fmul fast float %4954, 3.125000e-02
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = fmul fast float %4970, 2.000000e+00
  %4972 = fadd fast float %4971, -1.000000e+00
  %4973 = fcmp fast ogt float %4972, 0.000000e+00
  %4974 = fcmp fast olt float %4972, 0.000000e+00
  %4975 = zext i1 %4973 to i32
  %4976 = zext i1 %4974 to i32
  %4977 = sub nsw i32 %4975, %4976
  %4978 = sitofp i32 %4977 to float
  %4979 = fmul fast float %4978, %4972
  %4980 = fsub fast float 1.000000e+00, %4979
  %4981 = fmul fast float %4980, %4980
  %4982 = fmul fast float %4981, %4980
  %4983 = fsub fast float %4980, %4982
  %4984 = fmul fast float %4983, %4968
  %4985 = fsub fast float 1.000000e+00, %4982
  %4986 = fsub fast float %4985, %4984
  %4987 = fmul fast float %4978, 5.000000e-01
  %4988 = fmul fast float %4987, %4986
  %4989 = fsub fast float 5.000000e-01, %4988
  br label %4990

; <label>:4990                                    ; preds = %4962, %4838, %4825
  %4991 = phi float [ 1.000000e+00, %4825 ], [ %4904, %4838 ], [ %4989, %4962 ]
  %4992 = fcmp fast ogt float %4421, 0.000000e+00
  br i1 %4992, label %4993, label %5157, !dx.controlflow.hints !138

; <label>:4993                                    ; preds = %4990
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 1
  %4996 = fadd fast float %4995, %4310
  %4997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4998 = extractvalue %dx.types.CBufRet.f32 %4997, 2
  %4999 = extractvalue %dx.types.CBufRet.f32 %4997, 3
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 1
  %5002 = call float @dx.op.binary.f32(i32 35, float %4996, float 0.000000e+00)  ; FMax(a,b)
  %5003 = fadd fast float %5002, 0x3F10000000000000
  %5004 = fcmp fast oeq float %5001, 0.000000e+00
  br i1 %5004, label %5005, label %5072

; <label>:5005                                    ; preds = %4993
  %5006 = extractvalue %dx.types.CBufRet.f32 %4997, 1
  %5007 = extractvalue %dx.types.CBufRet.f32 %4997, 0
  %5008 = fmul fast float %5007, %4317
  %5009 = fmul fast float %5006, %4318
  %5010 = fadd fast float %5008, 5.000000e-01
  %5011 = call float @dx.op.unary.f32(i32 27, float %5010)  ; Round_ni(value)
  %5012 = fadd fast float %5009, 5.000000e-01
  %5013 = call float @dx.op.unary.f32(i32 27, float %5012)  ; Round_ni(value)
  %5014 = fsub fast float %5010, %5011
  %5015 = fsub fast float %5012, %5013
  %5016 = fadd fast float %5011, -5.000000e-01
  %5017 = fadd fast float %5013, -5.000000e-01
  %5018 = fmul fast float %5014, 2.000000e+00
  %5019 = fsub fast float 3.000000e+00, %5018
  %5020 = fadd fast float %5018, 1.000000e+00
  %5021 = fsub fast float 2.000000e+00, %5014
  %5022 = bitcast float %5019 to i32
  %5023 = sub nsw i32 2129859010, %5022
  %5024 = bitcast i32 %5023 to float
  %5025 = fmul fast float %5024, %5021
  %5026 = fadd fast float %5025, -1.000000e+00
  %5027 = bitcast float %5020 to i32
  %5028 = sub nsw i32 2129859010, %5027
  %5029 = bitcast i32 %5028 to float
  %5030 = fmul fast float %5029, %5014
  %5031 = fadd fast float %5030, 1.000000e+00
  %5032 = fmul fast float %5015, 2.000000e+00
  %5033 = fsub fast float 3.000000e+00, %5032
  %5034 = fadd fast float %5032, 1.000000e+00
  %5035 = fsub fast float 2.000000e+00, %5015
  %5036 = bitcast float %5033 to i32
  %5037 = sub nsw i32 2129859010, %5036
  %5038 = bitcast i32 %5037 to float
  %5039 = fmul fast float %5038, %5035
  %5040 = fadd fast float %5039, -1.000000e+00
  %5041 = bitcast float %5034 to i32
  %5042 = sub nsw i32 2129859010, %5041
  %5043 = bitcast i32 %5042 to float
  %5044 = fmul fast float %5043, %5015
  %5045 = fadd fast float %5044, 1.000000e+00
  %5046 = fadd fast float %5026, %5016
  %5047 = fmul fast float %5046, %4998
  %5048 = fadd fast float %5040, %5017
  %5049 = fmul fast float %5048, %4999
  %5050 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5047, float %5049, float undef, float undef, i32 0, i32 0, i32 undef, float %5003)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5051 = extractvalue %dx.types.ResRet.f32 %5050, 0
  %5052 = fmul fast float %5051, %5019
  %5053 = fadd fast float %5031, %5016
  %5054 = fmul fast float %5053, %4998
  %5055 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5054, float %5049, float undef, float undef, i32 0, i32 0, i32 undef, float %5003)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5056 = extractvalue %dx.types.ResRet.f32 %5055, 0
  %5057 = fmul fast float %5056, %5020
  %5058 = fadd fast float %5045, %5017
  %5059 = fmul fast float %5058, %4999
  %5060 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5047, float %5059, float undef, float undef, i32 0, i32 0, i32 undef, float %5003)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5061 = extractvalue %dx.types.ResRet.f32 %5060, 0
  %5062 = fmul fast float %5061, %5019
  %5063 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %5054, float %5059, float undef, float undef, i32 0, i32 0, i32 undef, float %5003)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5064 = extractvalue %dx.types.ResRet.f32 %5063, 0
  %5065 = fmul fast float %5064, %5020
  %5066 = fadd fast float %5065, %5062
  %5067 = fmul fast float %5066, %5034
  %5068 = fadd fast float %5057, %5052
  %5069 = fmul fast float %5068, %5033
  %5070 = fadd fast float %5069, %5067
  %5071 = fmul fast float %5070, 6.250000e-02
  br label %5157

; <label>:5072                                    ; preds = %4993
  %5073 = fmul fast float %281, 0x401921FB60000000
  %5074 = call float @dx.op.unary.f32(i32 13, float %5073)  ; Sin(value)
  %5075 = call float @dx.op.unary.f32(i32 12, float %5073)  ; Cos(value)
  %5076 = fsub fast float -0.000000e+00, %5074
  br label %5077

; <label>:5077                                    ; preds = %5126, %5072
  %5078 = phi float [ 0.000000e+00, %5072 ], [ %5121, %5126 ]
  %5079 = phi float [ 0.000000e+00, %5072 ], [ %5123, %5126 ]
  %5080 = phi i32 [ 0, %5072 ], [ %5127, %5126 ]
  %5081 = mul i32 %5080, 2
  %5082 = add i32 0, %5081
  %5083 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5082
  %5084 = load float, float* %5083, align 4
  %5085 = mul i32 %5080, 2
  %5086 = add i32 1, %5085
  %5087 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5086
  %5088 = load float, float* %5087, align 4
  %5089 = fmul fast float %5084, %5075
  %5090 = call float @dx.op.tertiary.f32(i32 46, float %5088, float %5076, float %5089)  ; FMad(a,b,c)
  %5091 = fmul fast float %5084, %5074
  %5092 = call float @dx.op.tertiary.f32(i32 46, float %5088, float %5075, float %5091)  ; FMad(a,b,c)
  %5093 = fmul fast float %5090, %5001
  %5094 = fmul fast float %5092, %5001
  %5095 = fadd fast float %5093, %4317
  %5096 = fadd fast float %5094, %4318
  %5097 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %5095, float %5096, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5098 = extractvalue %dx.types.ResRet.f32 %5097, 0
  %5099 = extractvalue %dx.types.ResRet.f32 %5097, 1
  %5100 = extractvalue %dx.types.ResRet.f32 %5097, 2
  %5101 = extractvalue %dx.types.ResRet.f32 %5097, 3
  %5102 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %5098, float* %5102, align 4
  %5103 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %5099, float* %5103, align 4
  %5104 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %5100, float* %5104, align 4
  %5105 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %5101, float* %5105, align 4
  %5106 = fsub fast float %5098, %5003
  %5107 = fcmp fast olt float %5106, 0.000000e+00
  %5108 = select i1 %5107, float 0.000000e+00, float 1.000000e+00
  %5109 = fadd fast float %5108, %5078
  %5110 = fmul fast float %5108, %5106
  %5111 = fadd fast float %5110, %5079
  br label %5112

; <label>:5112                                    ; preds = %5112, %5077
  %5113 = phi i32 [ 1, %5077 ], [ %5124, %5112 ]
  %5114 = phi float [ %5111, %5077 ], [ %5123, %5112 ]
  %5115 = phi float [ %5109, %5077 ], [ %5121, %5112 ]
  %5116 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %5113
  %5117 = load float, float* %5116, align 4, !tbaa !134, !noalias !124
  %5118 = fsub fast float %5117, %5003
  %5119 = fcmp fast olt float %5118, 0.000000e+00
  %5120 = select i1 %5119, float 0.000000e+00, float 1.000000e+00
  %5121 = fadd fast float %5120, %5115
  %5122 = fmul fast float %5120, %5118
  %5123 = fadd fast float %5122, %5114
  %5124 = add nuw nsw i32 %5113, 1
  %5125 = icmp eq i32 %5124, 4
  br i1 %5125, label %5126, label %5112, !llvm.loop !136

; <label>:5126                                    ; preds = %5112
  %5127 = add nuw nsw i32 %5080, 1
  %5128 = icmp eq i32 %5127, 8
  br i1 %5128, label %5129, label %5077, !llvm.loop !137

; <label>:5129                                    ; preds = %5126
  %5130 = fdiv fast float 1.000000e+00, %5121
  %5131 = fmul fast float %5130, %5123
  %5132 = fdiv fast float 1.000000e+00, %5003
  %5133 = fmul fast float %5131, %5132
  %5134 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5135 = call float @dx.op.binary.f32(i32 35, float %5134, float 0.000000e+00)  ; FMax(a,b)
  %5136 = fmul fast float %5121, 3.125000e-02
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = fmul fast float %5137, 2.000000e+00
  %5139 = fadd fast float %5138, -1.000000e+00
  %5140 = fcmp fast ogt float %5139, 0.000000e+00
  %5141 = fcmp fast olt float %5139, 0.000000e+00
  %5142 = zext i1 %5140 to i32
  %5143 = zext i1 %5141 to i32
  %5144 = sub nsw i32 %5142, %5143
  %5145 = sitofp i32 %5144 to float
  %5146 = fmul fast float %5145, %5139
  %5147 = fsub fast float 1.000000e+00, %5146
  %5148 = fmul fast float %5147, %5147
  %5149 = fmul fast float %5148, %5147
  %5150 = fsub fast float %5147, %5149
  %5151 = fmul fast float %5150, %5135
  %5152 = fsub fast float 1.000000e+00, %5149
  %5153 = fsub fast float %5152, %5151
  %5154 = fmul fast float %5145, 5.000000e-01
  %5155 = fmul fast float %5154, %5153
  %5156 = fsub fast float 5.000000e-01, %5155
  br label %5157

; <label>:5157                                    ; preds = %5129, %5005, %4990
  %5158 = phi float [ 1.000000e+00, %4990 ], [ %5071, %5005 ], [ %5156, %5129 ]
  %5159 = fcmp fast ogt float %4420, 0.000000e+00
  br i1 %5159, label %5160, label %5324, !dx.controlflow.hints !139

; <label>:5160                                    ; preds = %5157
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = fadd fast float %5162, %4310
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 2
  %5166 = extractvalue %dx.types.CBufRet.f32 %5164, 3
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = call float @dx.op.binary.f32(i32 35, float %5163, float 0.000000e+00)  ; FMax(a,b)
  %5170 = fadd fast float %5169, 0x3F10000000000000
  %5171 = fcmp fast oeq float %5168, 0.000000e+00
  br i1 %5171, label %5172, label %5239

; <label>:5172                                    ; preds = %5160
  %5173 = extractvalue %dx.types.CBufRet.f32 %5164, 1
  %5174 = extractvalue %dx.types.CBufRet.f32 %5164, 0
  %5175 = fmul fast float %5174, %4302
  %5176 = fmul fast float %5173, %4306
  %5177 = fadd fast float %5175, 5.000000e-01
  %5178 = call float @dx.op.unary.f32(i32 27, float %5177)  ; Round_ni(value)
  %5179 = fadd fast float %5176, 5.000000e-01
  %5180 = call float @dx.op.unary.f32(i32 27, float %5179)  ; Round_ni(value)
  %5181 = fsub fast float %5177, %5178
  %5182 = fsub fast float %5179, %5180
  %5183 = fadd fast float %5178, -5.000000e-01
  %5184 = fadd fast float %5180, -5.000000e-01
  %5185 = fmul fast float %5181, 2.000000e+00
  %5186 = fsub fast float 3.000000e+00, %5185
  %5187 = fadd fast float %5185, 1.000000e+00
  %5188 = fsub fast float 2.000000e+00, %5181
  %5189 = bitcast float %5186 to i32
  %5190 = sub nsw i32 2129859010, %5189
  %5191 = bitcast i32 %5190 to float
  %5192 = fmul fast float %5191, %5188
  %5193 = fadd fast float %5192, -1.000000e+00
  %5194 = bitcast float %5187 to i32
  %5195 = sub nsw i32 2129859010, %5194
  %5196 = bitcast i32 %5195 to float
  %5197 = fmul fast float %5196, %5181
  %5198 = fadd fast float %5197, 1.000000e+00
  %5199 = fmul fast float %5182, 2.000000e+00
  %5200 = fsub fast float 3.000000e+00, %5199
  %5201 = fadd fast float %5199, 1.000000e+00
  %5202 = fsub fast float 2.000000e+00, %5182
  %5203 = bitcast float %5200 to i32
  %5204 = sub nsw i32 2129859010, %5203
  %5205 = bitcast i32 %5204 to float
  %5206 = fmul fast float %5205, %5202
  %5207 = fadd fast float %5206, -1.000000e+00
  %5208 = bitcast float %5201 to i32
  %5209 = sub nsw i32 2129859010, %5208
  %5210 = bitcast i32 %5209 to float
  %5211 = fmul fast float %5210, %5182
  %5212 = fadd fast float %5211, 1.000000e+00
  %5213 = fadd fast float %5193, %5183
  %5214 = fmul fast float %5213, %5165
  %5215 = fadd fast float %5207, %5184
  %5216 = fmul fast float %5215, %5166
  %5217 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5214, float %5216, float undef, float undef, i32 0, i32 0, i32 undef, float %5170)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 0
  %5219 = fmul fast float %5218, %5186
  %5220 = fadd fast float %5198, %5183
  %5221 = fmul fast float %5220, %5165
  %5222 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5221, float %5216, float undef, float undef, i32 0, i32 0, i32 undef, float %5170)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = fmul fast float %5223, %5187
  %5225 = fadd fast float %5212, %5184
  %5226 = fmul fast float %5225, %5166
  %5227 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5214, float %5226, float undef, float undef, i32 0, i32 0, i32 undef, float %5170)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5228 = extractvalue %dx.types.ResRet.f32 %5227, 0
  %5229 = fmul fast float %5228, %5186
  %5230 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %5221, float %5226, float undef, float undef, i32 0, i32 0, i32 undef, float %5170)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5231 = extractvalue %dx.types.ResRet.f32 %5230, 0
  %5232 = fmul fast float %5231, %5187
  %5233 = fadd fast float %5232, %5229
  %5234 = fmul fast float %5233, %5201
  %5235 = fadd fast float %5224, %5219
  %5236 = fmul fast float %5235, %5200
  %5237 = fadd fast float %5236, %5234
  %5238 = fmul fast float %5237, 6.250000e-02
  br label %5324

; <label>:5239                                    ; preds = %5160
  %5240 = fmul fast float %281, 0x401921FB60000000
  %5241 = call float @dx.op.unary.f32(i32 13, float %5240)  ; Sin(value)
  %5242 = call float @dx.op.unary.f32(i32 12, float %5240)  ; Cos(value)
  %5243 = fsub fast float -0.000000e+00, %5241
  br label %5244

; <label>:5244                                    ; preds = %5293, %5239
  %5245 = phi float [ 0.000000e+00, %5239 ], [ %5288, %5293 ]
  %5246 = phi float [ 0.000000e+00, %5239 ], [ %5290, %5293 ]
  %5247 = phi i32 [ 0, %5239 ], [ %5294, %5293 ]
  %5248 = mul i32 %5247, 2
  %5249 = add i32 0, %5248
  %5250 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5249
  %5251 = load float, float* %5250, align 4
  %5252 = mul i32 %5247, 2
  %5253 = add i32 1, %5252
  %5254 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5253
  %5255 = load float, float* %5254, align 4
  %5256 = fmul fast float %5251, %5242
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %5255, float %5243, float %5256)  ; FMad(a,b,c)
  %5258 = fmul fast float %5251, %5241
  %5259 = call float @dx.op.tertiary.f32(i32 46, float %5255, float %5242, float %5258)  ; FMad(a,b,c)
  %5260 = fmul fast float %5257, %5168
  %5261 = fmul fast float %5259, %5168
  %5262 = fadd fast float %5260, %4302
  %5263 = fadd fast float %5261, %4306
  %5264 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5262, float %5263, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5265 = extractvalue %dx.types.ResRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.f32 %5264, 1
  %5267 = extractvalue %dx.types.ResRet.f32 %5264, 2
  %5268 = extractvalue %dx.types.ResRet.f32 %5264, 3
  %5269 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %5265, float* %5269, align 4
  %5270 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %5266, float* %5270, align 4
  %5271 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %5267, float* %5271, align 4
  %5272 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %5268, float* %5272, align 4
  %5273 = fsub fast float %5265, %5170
  %5274 = fcmp fast olt float %5273, 0.000000e+00
  %5275 = select i1 %5274, float 0.000000e+00, float 1.000000e+00
  %5276 = fadd fast float %5275, %5245
  %5277 = fmul fast float %5275, %5273
  %5278 = fadd fast float %5277, %5246
  br label %5279

; <label>:5279                                    ; preds = %5279, %5244
  %5280 = phi i32 [ 1, %5244 ], [ %5291, %5279 ]
  %5281 = phi float [ %5278, %5244 ], [ %5290, %5279 ]
  %5282 = phi float [ %5276, %5244 ], [ %5288, %5279 ]
  %5283 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %5280
  %5284 = load float, float* %5283, align 4, !tbaa !134, !noalias !124
  %5285 = fsub fast float %5284, %5170
  %5286 = fcmp fast olt float %5285, 0.000000e+00
  %5287 = select i1 %5286, float 0.000000e+00, float 1.000000e+00
  %5288 = fadd fast float %5287, %5282
  %5289 = fmul fast float %5287, %5285
  %5290 = fadd fast float %5289, %5281
  %5291 = add nuw nsw i32 %5280, 1
  %5292 = icmp eq i32 %5291, 4
  br i1 %5292, label %5293, label %5279, !llvm.loop !136

; <label>:5293                                    ; preds = %5279
  %5294 = add nuw nsw i32 %5247, 1
  %5295 = icmp eq i32 %5294, 8
  br i1 %5295, label %5296, label %5244, !llvm.loop !137

; <label>:5296                                    ; preds = %5293
  %5297 = fdiv fast float 1.000000e+00, %5288
  %5298 = fmul fast float %5297, %5290
  %5299 = fdiv fast float 1.000000e+00, %5170
  %5300 = fmul fast float %5298, %5299
  %5301 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5302 = call float @dx.op.binary.f32(i32 35, float %5301, float 0.000000e+00)  ; FMax(a,b)
  %5303 = fmul fast float %5288, 3.125000e-02
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = fmul fast float %5304, 2.000000e+00
  %5306 = fadd fast float %5305, -1.000000e+00
  %5307 = fcmp fast ogt float %5306, 0.000000e+00
  %5308 = fcmp fast olt float %5306, 0.000000e+00
  %5309 = zext i1 %5307 to i32
  %5310 = zext i1 %5308 to i32
  %5311 = sub nsw i32 %5309, %5310
  %5312 = sitofp i32 %5311 to float
  %5313 = fmul fast float %5312, %5306
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = fmul fast float %5314, %5314
  %5316 = fmul fast float %5315, %5314
  %5317 = fsub fast float %5314, %5316
  %5318 = fmul fast float %5317, %5302
  %5319 = fsub fast float 1.000000e+00, %5316
  %5320 = fsub fast float %5319, %5318
  %5321 = fmul fast float %5312, 5.000000e-01
  %5322 = fmul fast float %5321, %5320
  %5323 = fsub fast float 5.000000e-01, %5322
  br label %5324

; <label>:5324                                    ; preds = %5296, %5172, %5157
  %5325 = phi float [ 1.000000e+00, %5157 ], [ %5238, %5172 ], [ %5323, %5296 ]
  %5326 = fsub fast float %4991, %4826
  %5327 = fmul fast float %5326, %4364
  %5328 = fadd fast float %5327, %4826
  %5329 = fsub fast float %5158, %5328
  %5330 = fmul fast float %5329, %4394
  %5331 = fadd fast float %5330, %5328
  %5332 = fsub fast float %5325, %5331
  %5333 = fmul fast float %5332, %4420
  %5334 = fadd fast float %5333, %5331
  %5335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.f32 %5335, 2
  %5337 = fcmp fast ogt float %5336, 0.000000e+00
  br i1 %5337, label %5338, label %5378, !dx.controlflow.hints !140

; <label>:5338                                    ; preds = %5324
  %5339 = fcmp fast ugt float %5336, 0.000000e+00
  br i1 %5339, label %5340, label %5375

; <label>:5340                                    ; preds = %5338
  %5341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.CBufRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.CBufRet.f32 %5341, 2
  %5345 = extractvalue %dx.types.CBufRet.f32 %5341, 3
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 0
  %5348 = extractvalue %dx.types.CBufRet.f32 %5346, 1
  %5349 = extractvalue %dx.types.CBufRet.f32 %5346, 2
  %5350 = extractvalue %dx.types.CBufRet.f32 %5346, 3
  %5351 = extractvalue %dx.types.CBufRet.f32 %5335, 0
  %5352 = extractvalue %dx.types.CBufRet.f32 %5335, 1
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 0
  %5355 = extractvalue %dx.types.CBufRet.f32 %5353, 1
  %5356 = extractvalue %dx.types.CBufRet.f32 %5353, 2
  %5357 = fadd fast float %5354, %4279
  %5358 = fadd fast float %5355, %4280
  %5359 = fadd fast float %5356, %4281
  %5360 = fmul fast float %5357, %5342
  %5361 = call float @dx.op.tertiary.f32(i32 46, float %5343, float %5358, float %5360)  ; FMad(a,b,c)
  %5362 = call float @dx.op.tertiary.f32(i32 46, float %5344, float %5359, float %5361)  ; FMad(a,b,c)
  %5363 = fadd fast float %5362, %5345
  %5364 = fmul fast float %5357, %5347
  %5365 = call float @dx.op.tertiary.f32(i32 46, float %5348, float %5358, float %5364)  ; FMad(a,b,c)
  %5366 = call float @dx.op.tertiary.f32(i32 46, float %5349, float %5359, float %5365)  ; FMad(a,b,c)
  %5367 = fadd fast float %5366, %5350
  %5368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5363, float %5367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = fmul fast float %5369, %5352
  %5371 = fadd fast float %5370, %5351
  %5372 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5373 = fmul fast float %5372, %5336
  %5374 = fsub fast float 1.000000e+00, %5373
  br label %5375

; <label>:5375                                    ; preds = %5340, %5338
  %5376 = phi float [ %5374, %5340 ], [ 1.000000e+00, %5338 ]
  %5377 = fmul fast float %5376, %5334
  br label %5378

; <label>:5378                                    ; preds = %5375, %5324, %4259
  %5379 = phi float [ 1.000000e+00, %4259 ], [ %5377, %5375 ], [ %5334, %5324 ]
  %5380 = call float @dx.op.binary.f32(i32 36, float %5379, float %5379)  ; FMin(a,b)
  %5381 = call float @dx.op.binary.f32(i32 36, float %5379, float %5380)  ; FMin(a,b)
  %5382 = fcmp fast ogt float %5381, 0.000000e+00
  br i1 %5382, label %5383, label %5548, !dx.controlflow.hints !141

; <label>:5383                                    ; preds = %5378
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.CBufRet.f32 %5384, 1
  %5387 = extractvalue %dx.types.CBufRet.f32 %5384, 2
  %5388 = extractvalue %dx.types.CBufRet.f32 %5384, 3
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.CBufRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.CBufRet.f32 %5389, 2
  %5393 = extractvalue %dx.types.CBufRet.f32 %5389, 3
  %5394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.f32 %5394, 0
  %5396 = extractvalue %dx.types.CBufRet.f32 %5394, 1
  %5397 = extractvalue %dx.types.CBufRet.f32 %5394, 2
  %5398 = extractvalue %dx.types.CBufRet.f32 %5394, 3
  %5399 = fmul fast float %5385, %4279
  %5400 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %5386, float %5399)  ; FMad(a,b,c)
  %5401 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %5387, float %5400)  ; FMad(a,b,c)
  %5402 = fadd fast float %5401, %5388
  %5403 = fmul fast float %5390, %4279
  %5404 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %5391, float %5403)  ; FMad(a,b,c)
  %5405 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %5392, float %5404)  ; FMad(a,b,c)
  %5406 = fadd fast float %5405, %5393
  %5407 = fmul fast float %5395, %4279
  %5408 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %5396, float %5407)  ; FMad(a,b,c)
  %5409 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %5397, float %5408)  ; FMad(a,b,c)
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.CBufRet.f32 %5410, 1
  %5413 = extractvalue %dx.types.CBufRet.f32 %5410, 3
  %5414 = fmul fast float %5413, %5402
  %5415 = fmul fast float %5413, %5406
  %5416 = fadd fast float %5414, %5411
  %5417 = fadd fast float %5415, %5412
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 0
  %5420 = extractvalue %dx.types.CBufRet.f32 %5418, 1
  %5421 = fsub fast float %5416, %5419
  %5422 = fsub fast float %5417, %5420
  %5423 = fcmp fast olt float %5421, 0.000000e+00
  %5424 = fcmp fast olt float %5422, 0.000000e+00
  %5425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5426 = extractvalue %dx.types.CBufRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.CBufRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.CBufRet.f32 %5425, 2
  %5429 = extractvalue %dx.types.CBufRet.f32 %5425, 3
  %5430 = select i1 %5423, float %5426, float %5428
  %5431 = select i1 %5424, float %5427, float %5429
  %5432 = fmul fast float %5430, %5421
  %5433 = fmul fast float %5431, %5422
  %5434 = call float @dx.op.unary.f32(i32 6, float %5432)  ; FAbs(value)
  %5435 = call float @dx.op.unary.f32(i32 6, float %5433)  ; FAbs(value)
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5438 = call float @dx.op.binary.f32(i32 35, float %5434, float %5435)  ; FMax(a,b)
  %5439 = fsub fast float %5437, %5438
  %5440 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5441 = fcmp fast ogt float %5440, 0.000000e+00
  br i1 %5441, label %5442, label %5483, !dx.controlflow.hints !142

; <label>:5442                                    ; preds = %5383
  %5443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5416, float %5417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5444 = extractvalue %dx.types.ResRet.f32 %5443, 1
  %5445 = fcmp fast ogt float %5444, 0.000000e+00
  br i1 %5445, label %5446, label %5478

; <label>:5446                                    ; preds = %5442
  %5447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5416, float %5417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.ResRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.ResRet.f32 %5447, 2
  %5451 = extractvalue %dx.types.ResRet.f32 %5447, 3
  %5452 = fsub fast float 1.000000e+00, %5398
  %5453 = fsub fast float %5452, %5409
  %5454 = fmul fast float %5453, 0x400921FB60000000
  %5455 = fadd fast float %5454, 0x3FF921FB60000000
  %5456 = call float @dx.op.unary.f32(i32 13, float %5455)  ; Sin(value)
  %5457 = fadd fast float %5456, -1.000000e+00
  %5458 = fmul fast float %5457, 0x3FD45F3060000000
  %5459 = fmul fast float %5453, 0x401921FB60000000
  %5460 = fadd fast float %5459, 0x400921FB60000000
  %5461 = call float @dx.op.unary.f32(i32 13, float %5460)  ; Sin(value)
  %5462 = fadd fast float %5461, 0x3E7777A5C0000000
  %5463 = fmul fast float %5462, 0x3FC45F3060000000
  %5464 = fmul fast float %5453, 0x4022D97C80000000
  %5465 = fadd fast float %5464, 0x4012D97C80000000
  %5466 = call float @dx.op.unary.f32(i32 13, float %5465)  ; Sin(value)
  %5467 = fadd fast float %5466, 1.000000e+00
  %5468 = fmul fast float %5467, 0x3FBB2995E0000000
  %5469 = fmul fast float %5453, 0x402921FB60000000
  %5470 = fadd fast float %5469, 0x401921FB60000000
  %5471 = call float @dx.op.unary.f32(i32 13, float %5470)  ; Sin(value)
  %5472 = fadd fast float %5471, 0xBE8777A5C0000000
  %5473 = fmul fast float %5472, 0x3FB45F3060000000
  %5474 = call float @dx.op.dot4.f32(i32 56, float %5448, float %5449, float %5450, float %5451, float %5458, float %5463, float %5468, float %5473)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5475 = fmul fast float %5474, 0xBFF7154760000000
  %5476 = call float @dx.op.unary.f32(i32 21, float %5475)  ; Exp(value)
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  br label %5478

; <label>:5478                                    ; preds = %5446, %5442
  %5479 = phi float [ %5477, %5446 ], [ 1.000000e+00, %5442 ]
  %5480 = fadd fast float %5479, -1.000000e+00
  %5481 = fmul fast float %5480, %5440
  %5482 = fadd fast float %5481, 1.000000e+00
  br label %5483

; <label>:5483                                    ; preds = %5478, %5383
  %5484 = phi float [ %5482, %5478 ], [ 1.000000e+00, %5383 ]
  %5485 = fmul fast float %5484, %5379
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5490 = fadd fast float %5487, %147
  %5491 = fadd fast float %5488, %148
  %5492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5493 = extractvalue %dx.types.CBufRet.f32 %5492, 1
  %5494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5495 = extractvalue %dx.types.CBufRet.f32 %5494, 0
  %5496 = extractvalue %dx.types.CBufRet.f32 %5494, 1
  %5497 = extractvalue %dx.types.CBufRet.f32 %5494, 2
  %5498 = fsub fast float -0.000000e+00, %5490
  %5499 = fsub fast float -0.000000e+00, %5491
  %5500 = fsub fast float %2342, %5489
  %5501 = fadd fast float %5500, %5493
  %5502 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5498, float %5499, float %5501)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5495, float %5496, float %5497)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = fdiv fast float 1.000000e+00, %5503
  %5505 = fmul fast float %5504, %5502
  %5506 = fmul fast float %5495, %5505
  %5507 = fmul fast float %5496, %5505
  %5508 = fadd fast float %5506, %5490
  %5509 = fadd fast float %5507, %5491
  %5510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.f32 %5510, 0
  %5512 = extractvalue %dx.types.CBufRet.f32 %5510, 1
  %5513 = fsub fast float %5508, %5511
  %5514 = fsub fast float %5509, %5512
  %5515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5516 = extractvalue %dx.types.CBufRet.f32 %5515, 2
  %5517 = extractvalue %dx.types.CBufRet.f32 %5515, 3
  %5518 = fmul fast float %5513, %5516
  %5519 = fmul fast float %5514, %5517
  %5520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = extractvalue %dx.types.CBufRet.i32 %5520, 3
  %5522 = icmp eq i32 %5521, 0
  br i1 %5522, label %5528, label %5523

; <label>:5523                                    ; preds = %5483
  %5524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5518, float %5519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5525 = extractvalue %dx.types.ResRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.ResRet.f32 %5524, 1
  %5527 = extractvalue %dx.types.ResRet.f32 %5524, 2
  br label %5533

; <label>:5528                                    ; preds = %5483
  %5529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5518, float %5519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5530 = extractvalue %dx.types.ResRet.f32 %5529, 0
  %5531 = extractvalue %dx.types.ResRet.f32 %5529, 1
  %5532 = extractvalue %dx.types.ResRet.f32 %5529, 2
  br label %5533

; <label>:5533                                    ; preds = %5528, %5523
  %5534 = phi float [ %5525, %5523 ], [ %5530, %5528 ]
  %5535 = phi float [ %5526, %5523 ], [ %5531, %5528 ]
  %5536 = phi float [ %5527, %5523 ], [ %5532, %5528 ]
  %5537 = extractvalue %dx.types.CBufRet.f32 %5492, 2
  %5538 = fmul fast float %5537, %5534
  %5539 = extractvalue %dx.types.CBufRet.f32 %5492, 0
  %5540 = fsub fast float %5505, %5539
  %5541 = fsub fast float %5540, %5538
  %5542 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5541)  ; FMax(a,b)
  %5543 = fmul fast float %5542, %5535
  %5544 = call float @dx.op.binary.f32(i32 36, float %5536, float %5543)  ; FMin(a,b)
  %5545 = fmul fast float %5544, 0xBFF7154760000000
  %5546 = call float @dx.op.unary.f32(i32 21, float %5545)  ; Exp(value)
  %5547 = fmul fast float %5485, %5546
  br label %5548

; <label>:5548                                    ; preds = %5533, %5378
  %5549 = phi float [ %5547, %5533 ], [ %5379, %5378 ]
  %5550 = call float @dx.op.binary.f32(i32 36, float %5549, float %5549)  ; FMin(a,b)
  %5551 = call float @dx.op.binary.f32(i32 36, float %5549, float %5550)  ; FMin(a,b)
  %5552 = fcmp fast ogt float %5551, 0.000000e+00
  br i1 %5552, label %5553, label %5812, !dx.controlflow.hints !143

; <label>:5553                                    ; preds = %5548
  %5554 = fmul fast float %5549, %4271
  %5555 = fmul fast float %5549, %4272
  %5556 = fmul fast float %5549, %4273
  %5557 = fsub fast float %149, %2148
  %5558 = fcmp fast ogt float %5557, 0.000000e+00
  %5559 = fmul fast float %4260, 5.120000e+02
  %5560 = fmul fast float %4261, 5.120000e+02
  %5561 = fmul fast float %4262, 5.120000e+02
  %5562 = fadd fast float %5561, %149
  %5563 = fsub fast float %2148, %5562
  %5564 = fmul fast float %5563, 2.000000e+00
  %5565 = fadd fast float %5564, %5562
  %5566 = select i1 %5558, float %5565, float %5562
  %5567 = fsub fast float %5566, %149
  %5568 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5560, float %5567, float %5559, float %5560, float %5567)  ; Dot3(ax,ay,az,bx,by,bz)
  %5569 = call float @dx.op.unary.f32(i32 25, float %5568)  ; Rsqrt(value)
  %5570 = fmul fast float %5569, %5559
  %5571 = fmul fast float %5569, %5560
  %5572 = fmul fast float %5569, %5567
  %5573 = fsub fast float %2148, %149
  %5574 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5573)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5570, float %5571, float %5572)  ; Dot3(ax,ay,az,bx,by,bz)
  %5576 = fdiv fast float 1.000000e+00, %5575
  %5577 = fmul fast float %5576, %5574
  %5578 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5557, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = fcmp fast ogt float %5578, 0.000000e+00
  %5580 = fcmp fast olt float %5578, 0.000000e+00
  %5581 = zext i1 %5579 to i32
  %5582 = zext i1 %5580 to i32
  %5583 = sub nsw i32 %5581, %5582
  %5584 = sitofp i32 %5583 to float
  %5585 = fsub fast float %5566, %2148
  %5586 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5560, float %5585, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = fcmp fast ogt float %5586, 0.000000e+00
  %5588 = fcmp fast olt float %5586, 0.000000e+00
  %5589 = zext i1 %5587 to i32
  %5590 = zext i1 %5588 to i32
  %5591 = sub nsw i32 %5589, %5590
  %5592 = sitofp i32 %5591 to float
  %5593 = fcmp fast une float %5584, %5592
  br i1 %5593, label %5594, label %5604

; <label>:5594                                    ; preds = %5553
  %5595 = fmul fast float %5577, %5572
  %5596 = fmul fast float %5577, %5571
  %5597 = fmul fast float %5577, %5570
  %5598 = fmul fast float %5597, %5597
  %5599 = fmul fast float %5596, %5596
  %5600 = fadd fast float %5598, %5599
  %5601 = fmul fast float %5595, %5595
  %5602 = fadd fast float %5600, %5601
  %5603 = call float @dx.op.unary.f32(i32 24, float %5602)  ; Sqrt(value)
  br label %5614

; <label>:5604                                    ; preds = %5553
  %5605 = icmp slt i32 %5583, 0
  br i1 %5605, label %5606, label %5614

; <label>:5606                                    ; preds = %5604
  %5607 = fsub fast float %149, %5566
  %5608 = fmul fast float %5559, %5559
  %5609 = fmul fast float %5560, %5560
  %5610 = fadd fast float %5608, %5609
  %5611 = fmul fast float %5607, %5607
  %5612 = fadd fast float %5610, %5611
  %5613 = call float @dx.op.unary.f32(i32 24, float %5612)  ; Sqrt(value)
  br label %5614

; <label>:5614                                    ; preds = %5606, %5604, %5594
  %5615 = phi float [ %5603, %5594 ], [ %5613, %5606 ], [ 0.000000e+00, %5604 ]
  %5616 = fsub fast float -0.000000e+00, %5615
  %5617 = select i1 %5558, float -0.000000e+00, float %5616
  %5618 = fmul fast float %2149, 0x3FF7154760000000
  %5619 = fmul fast float %5618, %5617
  %5620 = fmul fast float %2150, 0x3FF7154760000000
  %5621 = fmul fast float %5620, %5617
  %5622 = fmul fast float %2151, 0x3FF7154760000000
  %5623 = fmul fast float %5622, %5617
  %5624 = call float @dx.op.unary.f32(i32 21, float %5619)  ; Exp(value)
  %5625 = call float @dx.op.unary.f32(i32 21, float %5621)  ; Exp(value)
  %5626 = call float @dx.op.unary.f32(i32 21, float %5623)  ; Exp(value)
  %5627 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5628 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5629 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5630 = fmul fast float %5554, %5627
  %5631 = fmul fast float %5555, %5628
  %5632 = fmul fast float %5556, %5629
  %5633 = fsub fast float %4260, %196
  %5634 = fsub fast float %4261, %197
  %5635 = fsub fast float %4262, %198
  %5636 = call float @dx.op.dot3.f32(i32 55, float %5633, float %5634, float %5635, float %5633, float %5634, float %5635)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = call float @dx.op.unary.f32(i32 25, float %5636)  ; Rsqrt(value)
  %5638 = fmul fast float %5637, %5633
  %5639 = fmul fast float %5637, %5634
  %5640 = fmul fast float %5637, %5635
  %5641 = call float @dx.op.dot3.f32(i32 55, float %4260, float %4261, float %4262, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = call float @dx.op.dot3.f32(i32 55, float %2165, float %2166, float %2167, float %5638, float %5639, float %5640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5644 = fmul fast float %5643, %5643
  %5645 = fmul fast float %5644, %4255
  %5646 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5647 = fmul fast float %5646, %5643
  %5648 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float %5638, float %5639, float %5640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5649 = fmul fast float %5648, %5648
  %5650 = call float @dx.op.unary.f32(i32 6, float %5641)  ; FAbs(value)
  %5651 = fsub fast float 1.000000e+00, %2363
  %5652 = fmul fast float %2345, %2345
  %5653 = fmul fast float %5652, %5651
  %5654 = fadd fast float %5653, %2363
  %5655 = bitcast float %5654 to i32
  %5656 = ashr i32 %5655, 1
  %5657 = add nsw i32 %5656, 532487669
  %5658 = bitcast i32 %5657 to float
  %5659 = fadd fast float %5658, %2345
  %5660 = fmul fast float %2363, %5649
  %5661 = fsub fast float 1.000000e+00, %5649
  %5662 = fadd fast float %5661, %5660
  %5663 = fmul fast float %5650, %5650
  %5664 = fmul fast float %5663, %5651
  %5665 = fadd fast float %5664, %2363
  %5666 = bitcast float %5665 to i32
  %5667 = ashr i32 %5666, 1
  %5668 = add nsw i32 %5667, 532487669
  %5669 = bitcast i32 %5668 to float
  %5670 = fadd fast float %5669, %5650
  %5671 = fmul fast float %5662, %5662
  %5672 = fmul fast float %5671, %5659
  %5673 = fmul fast float %5672, %5670
  %5674 = fdiv fast float 0x3FF0A00000000000, %5673
  %5675 = fmul fast float %5674, %2363
  %5676 = fmul fast float %3629, 0x3FF9999980000000
  %5677 = fsub fast float 5.000000e+00, %5676
  %5678 = call float @dx.op.unary.f32(i32 6, float %5642)  ; FAbs(value)
  %5679 = fsub fast float 1.000000e+00, %5678
  %5680 = fmul fast float %3629, 0x41D9660740000000
  %5681 = fadd fast float %5680, 0xC1EFBF8940000000
  %5682 = bitcast float %5679 to i32
  %5683 = sitofp i32 %5682 to float
  %5684 = fmul fast float %5683, %5677
  %5685 = fadd fast float %5681, %5684
  %5686 = fptosi float %5685 to i32
  %5687 = bitcast i32 %5686 to float
  %5688 = fsub fast float 1.000000e+00, %2331
  %5689 = fsub fast float 1.000000e+00, %2332
  %5690 = fsub fast float 1.000000e+00, %2343
  %5691 = fmul fast float %5687, %5688
  %5692 = fmul fast float %5687, %5689
  %5693 = fmul fast float %5687, %5690
  %5694 = fadd fast float %5691, %2331
  %5695 = fadd fast float %5692, %2332
  %5696 = fadd fast float %5693, %2343
  br i1 %3652, label %5697, label %5720

; <label>:5697                                    ; preds = %5614
  %5698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1701, float %5678, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5699 = extractvalue %dx.types.ResRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.ResRet.f32 %5698, 1
  %5701 = extractvalue %dx.types.ResRet.f32 %5698, 2
  %5702 = fadd fast float %5699, -5.000000e-01
  %5703 = fadd fast float %5700, -5.000000e-01
  %5704 = fadd fast float %5701, -5.000000e-01
  %5705 = fmul fast float %2331, 4.000000e+00
  %5706 = fmul fast float %5705, %5688
  %5707 = fmul fast float %5706, %5702
  %5708 = fmul fast float %2332, 4.000000e+00
  %5709 = fmul fast float %5708, %5689
  %5710 = fmul fast float %5709, %5703
  %5711 = fmul fast float %2343, 4.000000e+00
  %5712 = fmul fast float %5711, %5690
  %5713 = fmul fast float %5712, %5704
  %5714 = fadd fast float %5707, %5694
  %5715 = fadd fast float %5710, %5695
  %5716 = fadd fast float %5713, %5696
  %5717 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5718 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5719 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  br label %5720

; <label>:5720                                    ; preds = %5697, %5614
  %5721 = phi float [ %5717, %5697 ], [ %5694, %5614 ]
  %5722 = phi float [ %5718, %5697 ], [ %5695, %5614 ]
  %5723 = phi float [ %5719, %5697 ], [ %5696, %5614 ]
  %5724 = fmul fast float %5641, 9.843750e-01
  %5725 = fadd fast float %5724, 7.812500e-03
  %5726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5725, float %3633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5727 = extractvalue %dx.types.ResRet.f32 %5726, 0
  %5728 = extractvalue %dx.types.ResRet.f32 %5726, 1
  %5729 = extractvalue %dx.types.ResRet.f32 %5726, 2
  %5730 = extractvalue %dx.types.ResRet.f32 %5726, 3
  %5731 = fsub fast float %5729, %5727
  %5732 = fsub fast float %5730, %5728
  %5733 = fmul fast float %5731, %3639
  %5734 = fmul fast float %5732, %3639
  %5735 = fadd fast float %5733, %5727
  %5736 = fadd fast float %5734, %5728
  %5737 = fmul fast float %5735, %2331
  %5738 = fmul fast float %5735, %2332
  %5739 = fmul fast float %5735, %2343
  %5740 = fadd fast float %5737, %5736
  %5741 = fadd fast float %5738, %5736
  %5742 = fadd fast float %5739, %5736
  br i1 %3652, label %5743, label %5766

; <label>:5743                                    ; preds = %5720
  %5744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1701, float %5641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = extractvalue %dx.types.ResRet.f32 %5744, 1
  %5747 = extractvalue %dx.types.ResRet.f32 %5744, 2
  %5748 = fadd fast float %5745, -5.000000e-01
  %5749 = fadd fast float %5746, -5.000000e-01
  %5750 = fadd fast float %5747, -5.000000e-01
  %5751 = fmul fast float %2331, 4.000000e+00
  %5752 = fmul fast float %5751, %5688
  %5753 = fmul fast float %5752, %5748
  %5754 = fmul fast float %2332, 4.000000e+00
  %5755 = fmul fast float %5754, %5689
  %5756 = fmul fast float %5755, %5749
  %5757 = fmul fast float %2343, 4.000000e+00
  %5758 = fmul fast float %5757, %5690
  %5759 = fmul fast float %5758, %5750
  %5760 = fadd fast float %5753, %5740
  %5761 = fadd fast float %5756, %5741
  %5762 = fadd fast float %5759, %5742
  %5763 = call float @dx.op.unary.f32(i32 7, float %5760)  ; Saturate(value)
  %5764 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  %5765 = call float @dx.op.unary.f32(i32 7, float %5762)  ; Saturate(value)
  br label %5766

; <label>:5766                                    ; preds = %5743, %5720
  %5767 = phi float [ %5763, %5743 ], [ %5740, %5720 ]
  %5768 = phi float [ %5764, %5743 ], [ %5741, %5720 ]
  %5769 = phi float [ %5765, %5743 ], [ %5742, %5720 ]
  %5770 = call float @dx.op.binary.f32(i32 35, float %5768, float %5769)  ; FMax(a,b)
  %5771 = call float @dx.op.binary.f32(i32 35, float %5767, float %5770)  ; FMax(a,b)
  %5772 = fsub fast float 1.000000e+00, %5771
  %5773 = fmul fast float %5721, %5675
  %5774 = fmul fast float %5722, %5675
  %5775 = fmul fast float %5723, %5675
  %5776 = fsub fast float 1.000000e+00, %5642
  %5777 = bitcast float %5776 to i32
  %5778 = sitofp i32 %5777 to float
  %5779 = fmul fast float %5778, 5.000000e+00
  %5780 = fadd fast float %5779, 0xC1EFBF8940000000
  %5781 = fptosi float %5780 to i32
  %5782 = bitcast i32 %5781 to float
  %5783 = fmul fast float %5782, %1700
  %5784 = fmul fast float %5772, %5783
  %5785 = fmul fast float %5784, %4194
  %5786 = fmul fast float %5784, %4195
  %5787 = fmul fast float %5784, %4196
  %5788 = fadd fast float %5785, %5773
  %5789 = fadd fast float %5786, %5774
  %5790 = fadd fast float %5787, %5775
  %5791 = fmul fast float %5647, %5630
  %5792 = fmul fast float %5791, %5772
  %5793 = fmul fast float %5647, %5631
  %5794 = fmul fast float %5793, %5772
  %5795 = fmul fast float %5647, %5632
  %5796 = fmul fast float %5795, %5772
  %5797 = fmul fast float %5791, %5788
  %5798 = fmul fast float %5793, %5789
  %5799 = fmul fast float %5795, %5790
  %5800 = fadd fast float %5792, %4178
  %5801 = fmul fast float %5800, %1748
  %5802 = fadd fast float %5794, %4179
  %5803 = fmul fast float %5802, %1748
  %5804 = fadd fast float %5796, %4180
  %5805 = fmul fast float %5804, %1748
  %5806 = fadd fast float %5797, %4247
  %5807 = fmul fast float %5806, %1748
  %5808 = fadd fast float %5798, %4250
  %5809 = fmul fast float %5808, %1748
  %5810 = fadd fast float %5799, %4253
  %5811 = fmul fast float %5810, %1748
  br label %5812

; <label>:5812                                    ; preds = %5766, %5548, %4174
  %5813 = phi float [ %4248, %4174 ], [ %4248, %5548 ], [ %5807, %5766 ]
  %5814 = phi float [ %4251, %4174 ], [ %4251, %5548 ], [ %5809, %5766 ]
  %5815 = phi float [ %4254, %4174 ], [ %4254, %5548 ], [ %5811, %5766 ]
  %5816 = phi float [ %4243, %4174 ], [ %4243, %5548 ], [ %5801, %5766 ]
  %5817 = phi float [ %4244, %4174 ], [ %4244, %5548 ], [ %5803, %5766 ]
  %5818 = phi float [ %4245, %4174 ], [ %4245, %5548 ], [ %5805, %5766 ]
  %5819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.i32 %5819, 0
  %5821 = icmp eq i32 %5820, 0
  br i1 %5821, label %6496, label %5822

; <label>:5822                                    ; preds = %5812
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5825 = extractvalue %dx.types.CBufRet.f32 %5823, 3
  %5826 = fmul fast float %5824, %100
  %5827 = fmul fast float %5825, %101
  %5828 = fptoui float %5826 to i32
  %5829 = fptoui float %5827 to i32
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.CBufRet.f32 %5830, 2
  %5833 = extractvalue %dx.types.CBufRet.f32 %5830, 3
  %5834 = fadd fast float %88, -4.000000e+00
  %5835 = call float @dx.op.binary.f32(i32 35, float %5834, float 0.000000e+00)  ; FMax(a,b)
  %5836 = fadd fast float %5835, %5831
  %5837 = fmul fast float %5836, %5832
  %5838 = call float @dx.op.unary.f32(i32 23, float %5837)  ; Log(value)
  %5839 = fmul fast float %5838, %5833
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 2
  %5842 = fmul fast float %5839, %5841
  %5843 = call float @dx.op.unary.f32(i32 7, float %5842)  ; Saturate(value)
  %5844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.i32 %5844, 1
  %5846 = add i32 %5845, -1
  %5847 = uitofp i32 %5845 to float
  %5848 = fmul fast float %5847, %5843
  %5849 = fptoui float %5848 to i32
  %5850 = call i32 @dx.op.binary.i32(i32 40, i32 %5849, i32 %5846)  ; UMin(a,b)
  %5851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.i32 %5851, 2
  %5853 = extractvalue %dx.types.CBufRet.i32 %5851, 3
  %5854 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5829, i32 %5852, i32 %5828)  ; UMad(a,b,c)
  %5855 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5850, i32 %5853, i32 %5854)  ; UMad(a,b,c)
  %5856 = add nsw i32 %5820, -1
  %5857 = call i32 @dx.op.binary.i32(i32 37, i32 %5856, i32 0)  ; IMax(a,b)
  %5858 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %5859 = fptoui float %5858 to i32
  %5860 = lshr i32 %5859, 5
  %5861 = call i32 @dx.op.binary.i32(i32 40, i32 %5860, i32 8191)  ; UMin(a,b)
  %5862 = shl i32 %5861, 2
  %5863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5862, i32 undef)  ; BufferLoad(srv,index,wot)
  %5864 = extractvalue %dx.types.ResRet.i32 %5863, 0
  %5865 = lshr i32 %5864, 16
  %5866 = and i32 %5864, 65535
  %5867 = lshr i32 %5864, 21
  %5868 = lshr i32 %5866, 5
  %5869 = call i32 @dx.op.binary.i32(i32 40, i32 %5868, i32 %5857)  ; UMin(a,b)
  %5870 = icmp ugt i32 %5867, %5869
  br i1 %5870, label %6496, label %5871

; <label>:5871                                    ; preds = %5822
  br label %5872

; <label>:5872                                    ; preds = %6486, %5871
  %5873 = phi i32 [ %6493, %6486 ], [ %5867, %5871 ]
  %5874 = phi float [ %6487, %6486 ], [ %5813, %5871 ]
  %5875 = phi float [ %6488, %6486 ], [ %5814, %5871 ]
  %5876 = phi float [ %6489, %6486 ], [ %5815, %5871 ]
  %5877 = phi float [ %6490, %6486 ], [ %5816, %5871 ]
  %5878 = phi float [ %6491, %6486 ], [ %5817, %5871 ]
  %5879 = phi float [ %6492, %6486 ], [ %5818, %5871 ]
  %5880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.i32 %5880, 0
  %5882 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5855, i32 %5881, i32 %5873)  ; UMad(a,b,c)
  %5883 = shl i32 %5882, 2
  %5884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5883, i32 undef)  ; BufferLoad(srv,index,wot)
  %5885 = extractvalue %dx.types.ResRet.i32 %5884, 0
  %5886 = shl i32 %5873, 5
  %5887 = sub nsw i32 %5865, %5886
  %5888 = call i32 @dx.op.binary.i32(i32 37, i32 %5887, i32 0)  ; IMax(a,b)
  %5889 = call i32 @dx.op.binary.i32(i32 38, i32 %5888, i32 31)  ; IMin(a,b)
  %5890 = sub nsw i32 1, %5865
  %5891 = add nsw i32 %5890, %5866
  %5892 = call i32 @dx.op.binary.i32(i32 37, i32 %5891, i32 0)  ; IMax(a,b)
  %5893 = call i32 @dx.op.binary.i32(i32 38, i32 %5892, i32 32)  ; IMin(a,b)
  %5894 = and i32 %5893, 31
  %5895 = shl i32 -1, %5894
  %5896 = xor i32 %5895, -1
  %5897 = and i32 %5889, 31
  %5898 = shl i32 %5896, %5897
  %5899 = icmp eq i32 %5893, 32
  %5900 = select i1 %5899, i32 -1, i32 %5898
  %5901 = and i32 %5900, %5885
  %5902 = icmp eq i32 %5901, 0
  br i1 %5902, label %6486, label %5903

; <label>:5903                                    ; preds = %5872
  br label %5904

; <label>:5904                                    ; preds = %6038, %5903
  %5905 = phi i32 [ %5916, %6038 ], [ %5901, %5903 ]
  %5906 = phi float [ %6039, %6038 ], [ %5874, %5903 ]
  %5907 = phi float [ %6040, %6038 ], [ %5875, %5903 ]
  %5908 = phi float [ %6041, %6038 ], [ %5876, %5903 ]
  %5909 = phi float [ %6042, %6038 ], [ %5877, %5903 ]
  %5910 = phi float [ %6043, %6038 ], [ %5878, %5903 ]
  %5911 = phi float [ %6044, %6038 ], [ %5879, %5903 ]
  %5912 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5905)  ; FirstbitLo(value)
  %5913 = add i32 %5912, %5886
  %5914 = and i32 %5912, 31
  %5915 = shl i32 1, %5914
  %5916 = xor i32 %5915, %5905
  %5917 = mul i32 %5913, 112
  %5918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5917, i32 undef)  ; BufferLoad(srv,index,wot)
  %5919 = extractvalue %dx.types.ResRet.f32 %5918, 0
  %5920 = extractvalue %dx.types.ResRet.f32 %5918, 1
  %5921 = extractvalue %dx.types.ResRet.f32 %5918, 2
  %5922 = or i32 %5917, 12
  %5923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5922, i32 undef)  ; BufferLoad(srv,index,wot)
  %5924 = extractvalue %dx.types.ResRet.f32 %5923, 0
  %5925 = add i32 %5917, 16
  %5926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5925, i32 undef)  ; BufferLoad(srv,index,wot)
  %5927 = extractvalue %dx.types.ResRet.f32 %5926, 0
  %5928 = extractvalue %dx.types.ResRet.f32 %5926, 1
  %5929 = extractvalue %dx.types.ResRet.f32 %5926, 2
  %5930 = add i32 %5917, 28
  %5931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5930, i32 undef)  ; BufferLoad(srv,index,wot)
  %5932 = extractvalue %dx.types.ResRet.i32 %5931, 0
  %5933 = add i32 %5917, 44
  %5934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5933, i32 undef)  ; BufferLoad(srv,index,wot)
  %5935 = extractvalue %dx.types.ResRet.f32 %5934, 0
  %5936 = add i32 %5917, 48
  %5937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5936, i32 undef)  ; BufferLoad(srv,index,wot)
  %5938 = extractvalue %dx.types.ResRet.f32 %5937, 0
  %5939 = extractvalue %dx.types.ResRet.f32 %5937, 1
  %5940 = extractvalue %dx.types.ResRet.f32 %5937, 2
  %5941 = extractvalue %dx.types.ResRet.f32 %5937, 3
  %5942 = add i32 %5917, 64
  %5943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5942, i32 undef)  ; BufferLoad(srv,index,wot)
  %5944 = extractvalue %dx.types.ResRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.ResRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.ResRet.f32 %5943, 2
  %5947 = extractvalue %dx.types.ResRet.f32 %5943, 3
  %5948 = add i32 %5917, 80
  %5949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5948, i32 undef)  ; BufferLoad(srv,index,wot)
  %5950 = extractvalue %dx.types.ResRet.f32 %5949, 1
  %5951 = extractvalue %dx.types.ResRet.f32 %5949, 2
  %5952 = add i32 %5917, 92
  %5953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5952, i32 undef)  ; BufferLoad(srv,index,wot)
  %5954 = extractvalue %dx.types.ResRet.i32 %5953, 0
  %5955 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %5921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5956 = select i1 %270, float %5950, float %5919
  %5957 = select i1 %270, float %5955, float %5920
  %5958 = select i1 %270, float %5951, float %5921
  %5959 = and i32 %5954, 65535
  %5960 = uitofp i32 %5959 to float
  %5961 = lshr i32 %5954, 16
  %5962 = uitofp i32 %5961 to float
  %5963 = and i32 %5932, 65535
  %5964 = and i32 %5932, 50331648
  %5965 = icmp eq i32 %5964, 33554432
  %5966 = fsub fast float %5938, %147
  %5967 = fsub fast float %5939, %148
  %5968 = fsub fast float %5940, %149
  %5969 = call float @dx.op.dot3.f32(i32 55, float %5966, float %5967, float %5968, float %5966, float %5967, float %5968)  ; Dot3(ax,ay,az,bx,by,bz)
  %5970 = call float @dx.op.unary.f32(i32 24, float %5969)  ; Sqrt(value)
  %5971 = fdiv fast float 1.000000e+00, %5970
  %5972 = fmul fast float %5971, %5966
  %5973 = fmul fast float %5971, %5967
  %5974 = fmul fast float %5971, %5968
  %5975 = fadd fast float %5970, %5924
  %5976 = fdiv fast float 1.000000e+00, %5975
  %5977 = fmul float %5935, %5976
  %5978 = fmul float %5977, %5977
  %5979 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  br i1 %5965, label %5980, label %6001

; <label>:5980                                    ; preds = %5904
  %5981 = fmul fast float %5946, %5927
  %5982 = fmul fast float %5946, %5928
  %5983 = fmul fast float %5946, %5929
  %5984 = fadd fast float %5966, %5981
  %5985 = fadd fast float %5967, %5982
  %5986 = fadd fast float %5968, %5983
  %5987 = call float @dx.op.dot3.f32(i32 55, float %5984, float %5985, float %5986, float %5984, float %5985, float %5986)  ; Dot3(ax,ay,az,bx,by,bz)
  %5988 = call float @dx.op.unary.f32(i32 25, float %5987)  ; Rsqrt(value)
  %5989 = fmul fast float %5988, %5984
  %5990 = fmul fast float %5988, %5985
  %5991 = fmul fast float %5988, %5986
  %5992 = fsub fast float %147, %5938
  %5993 = fsub fast float %148, %5939
  %5994 = fsub fast float %149, %5940
  %5995 = fsub fast float -0.000000e+00, %5992
  %5996 = fsub fast float -0.000000e+00, %5993
  %5997 = fsub fast float -0.000000e+00, %5994
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5995, float %5996, float %5997, float %5927, float %5928, float %5929)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = fcmp fast ogt float %5998, 0.000000e+00
  %6000 = uitofp i1 %5999 to float
  br label %6001

; <label>:6001                                    ; preds = %5980, %5904
  %6002 = phi float [ %6000, %5980 ], [ 1.000000e+00, %5904 ]
  %6003 = phi float [ %5989, %5980 ], [ %5972, %5904 ]
  %6004 = phi float [ %5990, %5980 ], [ %5973, %5904 ]
  %6005 = phi float [ %5991, %5980 ], [ %5974, %5904 ]
  %6006 = call float @dx.op.dot3.f32(i32 55, float %5927, float %5928, float %5929, float %6003, float %6004, float %6005)  ; Dot3(ax,ay,az,bx,by,bz)
  %6007 = fmul fast float %6006, %6006
  %6008 = call float @dx.op.unary.f32(i32 7, float %6007)  ; Saturate(value)
  %6009 = fsub fast float 1.000000e+00, %6008
  %6010 = fmul fast float %6009, 5.000000e-01
  %6011 = fcmp fast ogt float %6006, 0.000000e+00
  %6012 = fsub fast float 1.000000e+00, %6010
  %6013 = select i1 %6011, float %6010, float %6012
  %6014 = fmul fast float %6013, %5962
  %6015 = fadd fast float %6014, %5960
  %6016 = fmul fast float %6015, 0x3EF0001000000000
  %6017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %6016, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6018 = extractvalue %dx.types.ResRet.f32 %6017, 0
  %6019 = fmul fast float %6006, %5944
  %6020 = fadd fast float %6019, %5945
  %6021 = call float @dx.op.unary.f32(i32 7, float %6020)  ; Saturate(value)
  %6022 = select i1 %5965, float 1.000000e+00, float %6021
  %6023 = select i1 %5965, float %6021, float 1.000000e+00
  %6024 = fmul fast float %5970, %5941
  %6025 = fsub fast float 1.000000e+00, %6024
  %6026 = fmul fast float %6025, %5947
  %6027 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6028 = fmul fast float %6027, %6023
  %6029 = fmul fast float %6028, 2.000000e+00
  %6030 = fsub fast float 3.000000e+00, %6029
  %6031 = fmul fast float %6018, %6002
  %6032 = fmul fast float %6028, %6028
  %6033 = fmul fast float %6032, %6031
  %6034 = fmul fast float %6033, %6030
  %6035 = call float @dx.op.binary.f32(i32 36, float %6034, float %6034)  ; FMin(a,b)
  %6036 = call float @dx.op.binary.f32(i32 36, float %6034, float %6035)  ; FMin(a,b)
  %6037 = fcmp fast ogt float %6036, 0.000000e+00
  br i1 %6037, label %6046, label %6038, !dx.controlflow.hints !144

; <label>:6038                                    ; preds = %6442, %6192, %6001
  %6039 = phi float [ %5906, %6192 ], [ %5906, %6001 ], [ %6482, %6442 ]
  %6040 = phi float [ %5907, %6192 ], [ %5907, %6001 ], [ %6483, %6442 ]
  %6041 = phi float [ %5908, %6192 ], [ %5908, %6001 ], [ %6484, %6442 ]
  %6042 = phi float [ %5909, %6192 ], [ %5909, %6001 ], [ %6476, %6442 ]
  %6043 = phi float [ %5910, %6192 ], [ %5910, %6001 ], [ %6477, %6442 ]
  %6044 = phi float [ %5911, %6192 ], [ %5911, %6001 ], [ %6478, %6442 ]
  %6045 = icmp eq i32 %5905, %5915
  br i1 %6045, label %6485, label %5904

; <label>:6046                                    ; preds = %6001
  %6047 = icmp eq i32 %5963, 255
  br i1 %6047, label %6192, label %6048, !dx.controlflow.hints !145

; <label>:6048                                    ; preds = %6046
  %6049 = mul nuw nsw i32 %5963, 176
  %6050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6049, i32 undef)  ; BufferLoad(srv,index,wot)
  %6051 = extractvalue %dx.types.ResRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.ResRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.ResRet.f32 %6050, 2
  %6054 = extractvalue %dx.types.ResRet.f32 %6050, 3
  %6055 = add nuw nsw i32 %6049, 16
  %6056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6055, i32 undef)  ; BufferLoad(srv,index,wot)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.ResRet.f32 %6056, 1
  %6059 = add nuw nsw i32 %6049, 32
  %6060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6059, i32 undef)  ; BufferLoad(srv,index,wot)
  %6061 = extractvalue %dx.types.ResRet.f32 %6060, 0
  %6062 = extractvalue %dx.types.ResRet.f32 %6060, 1
  %6063 = extractvalue %dx.types.ResRet.f32 %6060, 2
  %6064 = add nuw nsw i32 %6049, 48
  %6065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6064, i32 undef)  ; BufferLoad(srv,index,wot)
  %6066 = extractvalue %dx.types.ResRet.f32 %6065, 0
  %6067 = extractvalue %dx.types.ResRet.f32 %6065, 1
  %6068 = extractvalue %dx.types.ResRet.f32 %6065, 2
  %6069 = extractvalue %dx.types.ResRet.f32 %6065, 3
  %6070 = add nuw nsw i32 %6049, 64
  %6071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6070, i32 undef)  ; BufferLoad(srv,index,wot)
  %6072 = extractvalue %dx.types.ResRet.f32 %6071, 0
  %6073 = extractvalue %dx.types.ResRet.f32 %6071, 1
  %6074 = extractvalue %dx.types.ResRet.f32 %6071, 2
  %6075 = extractvalue %dx.types.ResRet.f32 %6071, 3
  %6076 = add nuw nsw i32 %6049, 80
  %6077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6076, i32 undef)  ; BufferLoad(srv,index,wot)
  %6078 = extractvalue %dx.types.ResRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.ResRet.f32 %6077, 1
  %6080 = extractvalue %dx.types.ResRet.f32 %6077, 2
  %6081 = extractvalue %dx.types.ResRet.f32 %6077, 3
  %6082 = add nuw nsw i32 %6049, 96
  %6083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6082, i32 undef)  ; BufferLoad(srv,index,wot)
  %6084 = extractvalue %dx.types.ResRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.ResRet.f32 %6083, 1
  %6086 = extractvalue %dx.types.ResRet.f32 %6083, 2
  %6087 = extractvalue %dx.types.ResRet.f32 %6083, 3
  %6088 = bitcast float %6058 to i32
  %6089 = fmul fast float %6063, %76
  %6090 = fmul fast float %6063, %77
  %6091 = fmul fast float %6063, %78
  %6092 = fadd fast float %6089, %147
  %6093 = fadd fast float %6090, %148
  %6094 = fadd fast float %6091, %149
  %6095 = fmul fast float %6092, %6066
  %6096 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6072, float %6095)  ; FMad(a,b,c)
  %6097 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6078, float %6096)  ; FMad(a,b,c)
  %6098 = fadd fast float %6097, %6084
  %6099 = fmul fast float %6092, %6067
  %6100 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6073, float %6099)  ; FMad(a,b,c)
  %6101 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6079, float %6100)  ; FMad(a,b,c)
  %6102 = fadd fast float %6101, %6085
  %6103 = fmul fast float %6092, %6068
  %6104 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6074, float %6103)  ; FMad(a,b,c)
  %6105 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6080, float %6104)  ; FMad(a,b,c)
  %6106 = fadd fast float %6105, %6086
  %6107 = fmul fast float %6092, %6069
  %6108 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6075, float %6107)  ; FMad(a,b,c)
  %6109 = call float @dx.op.tertiary.f32(i32 46, float %6094, float %6081, float %6108)  ; FMad(a,b,c)
  %6110 = fadd fast float %6109, %6087
  %6111 = fdiv fast float %6098, %6110
  %6112 = fdiv fast float %6102, %6110
  %6113 = fdiv fast float %6106, %6110
  %6114 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6113)  ; FMax(a,b)
  %6115 = fmul fast float %281, 0x401921FB60000000
  %6116 = call float @dx.op.unary.f32(i32 13, float %6115)  ; Sin(value)
  %6117 = call float @dx.op.unary.f32(i32 12, float %6115)  ; Cos(value)
  %6118 = fmul fast float %6117, %6062
  %6119 = call float @dx.op.tertiary.f32(i32 46, float %6116, float %6062, float 0.000000e+00)  ; FMad(a,b,c)
  %6120 = fmul fast float %6062, %6116
  %6121 = fsub fast float -0.000000e+00, %6120
  %6122 = call float @dx.op.tertiary.f32(i32 46, float %6117, float %6062, float 0.000000e+00)  ; FMad(a,b,c)
  br label %6123

; <label>:6123                                    ; preds = %6123, %6048
  %6124 = phi float [ 0.000000e+00, %6048 ], [ %6156, %6123 ]
  %6125 = phi float [ 0.000000e+00, %6048 ], [ %6158, %6123 ]
  %6126 = phi i32 [ 0, %6048 ], [ %6159, %6123 ]
  %6127 = mul i32 %6126, 2
  %6128 = add i32 0, %6127
  %6129 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6128
  %6130 = load float, float* %6129, align 4
  %6131 = mul i32 %6126, 2
  %6132 = add i32 1, %6131
  %6133 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6132
  %6134 = load float, float* %6133, align 4
  %6135 = fmul fast float %6118, %6130
  %6136 = call float @dx.op.tertiary.f32(i32 46, float %6134, float %6121, float %6135)  ; FMad(a,b,c)
  %6137 = fmul fast float %6130, %6119
  %6138 = call float @dx.op.tertiary.f32(i32 46, float %6134, float %6122, float %6137)  ; FMad(a,b,c)
  %6139 = fadd fast float %6136, %6111
  %6140 = fadd fast float %6138, %6112
  %6141 = fmul fast float %6139, %6057
  %6142 = fmul fast float %6140, %6057
  %6143 = call float @dx.op.binary.f32(i32 35, float %6141, float %6053)  ; FMax(a,b)
  %6144 = call float @dx.op.binary.f32(i32 35, float %6142, float %6053)  ; FMax(a,b)
  %6145 = call float @dx.op.binary.f32(i32 36, float %6143, float %6054)  ; FMin(a,b)
  %6146 = call float @dx.op.binary.f32(i32 36, float %6144, float %6054)  ; FMin(a,b)
  %6147 = fadd fast float %6145, %6051
  %6148 = fadd fast float %6146, %6052
  %6149 = uitofp i32 %6088 to float
  %6150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %6147, float %6148, float %6149, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6151 = extractvalue %dx.types.ResRet.f32 %6150, 0
  %6152 = fsub fast float %6151, %6114
  %6153 = fsub fast float %6152, %6061
  %6154 = fcmp fast ogt float %6153, 0.000000e+00
  %6155 = select i1 %6154, float 1.000000e+00, float 0.000000e+00
  %6156 = fadd fast float %6155, %6124
  %6157 = select i1 %6154, float %6153, float 0.000000e+00
  %6158 = fadd fast float %6157, %6125
  %6159 = add nuw nsw i32 %6126, 1
  %6160 = icmp eq i32 %6159, 8
  br i1 %6160, label %6161, label %6123

; <label>:6161                                    ; preds = %6123
  %6162 = fdiv fast float 1.000000e+00, %6156
  %6163 = fmul fast float %6162, %6158
  %6164 = fdiv fast float 1.000000e+00, %6114
  %6165 = fmul fast float %6163, %6164
  %6166 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  %6167 = call float @dx.op.binary.f32(i32 35, float %6166, float 0.000000e+00)  ; FMax(a,b)
  %6168 = fmul fast float %6156, 1.250000e-01
  %6169 = call float @dx.op.unary.f32(i32 7, float %6168)  ; Saturate(value)
  %6170 = fmul fast float %6169, 2.000000e+00
  %6171 = fadd fast float %6170, -1.000000e+00
  %6172 = fcmp fast ogt float %6171, 0.000000e+00
  %6173 = fcmp fast olt float %6171, 0.000000e+00
  %6174 = zext i1 %6172 to i32
  %6175 = zext i1 %6173 to i32
  %6176 = sub nsw i32 %6174, %6175
  %6177 = sitofp i32 %6176 to float
  %6178 = fmul fast float %6177, %6171
  %6179 = fsub fast float 1.000000e+00, %6178
  %6180 = fmul fast float %6179, %6179
  %6181 = fmul fast float %6180, %6179
  %6182 = fsub fast float %6179, %6181
  %6183 = fmul fast float %6182, %6167
  %6184 = fsub fast float 1.000000e+00, %6181
  %6185 = fsub fast float %6184, %6183
  %6186 = fmul fast float %6177, 5.000000e-01
  %6187 = fmul fast float %6186, %6185
  %6188 = fsub fast float -5.000000e-01, %6187
  %6189 = fmul fast float %6188, %6022
  %6190 = fadd fast float %6189, 1.000000e+00
  %6191 = fmul fast float %6190, %6034
  br label %6192

; <label>:6192                                    ; preds = %6161, %6046
  %6193 = phi float [ %6191, %6161 ], [ %6034, %6046 ]
  %6194 = call float @dx.op.binary.f32(i32 36, float %6193, float %6193)  ; FMin(a,b)
  %6195 = call float @dx.op.binary.f32(i32 36, float %6193, float %6194)  ; FMin(a,b)
  %6196 = fcmp fast ogt float %6195, 0.000000e+00
  br i1 %6196, label %6197, label %6038, !dx.controlflow.hints !146

; <label>:6197                                    ; preds = %6192
  %6198 = fmul fast float %6193, %5956
  %6199 = fmul fast float %6193, %5957
  %6200 = fmul fast float %6193, %5958
  %6201 = fsub fast float %5940, %2148
  %6202 = fcmp fast ogt float %6201, 0.000000e+00
  %6203 = fsub fast float %149, %2148
  %6204 = fcmp fast ogt float %6203, 0.000000e+00
  %6205 = xor i1 %6204, %6202
  %6206 = fsub fast float %2148, %5940
  %6207 = fmul fast float %6206, 2.000000e+00
  %6208 = fadd fast float %6207, %5940
  %6209 = select i1 %6205, float %5940, float %6208
  %6210 = fsub fast float %6209, %149
  %6211 = call float @dx.op.dot3.f32(i32 55, float %5966, float %5967, float %6210, float %5966, float %5967, float %6210)  ; Dot3(ax,ay,az,bx,by,bz)
  %6212 = call float @dx.op.unary.f32(i32 25, float %6211)  ; Rsqrt(value)
  %6213 = fmul fast float %6212, %5966
  %6214 = fmul fast float %6212, %5967
  %6215 = fmul fast float %6212, %6210
  %6216 = fsub fast float %2148, %149
  %6217 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6216)  ; Dot3(ax,ay,az,bx,by,bz)
  %6218 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6213, float %6214, float %6215)  ; Dot3(ax,ay,az,bx,by,bz)
  %6219 = fdiv fast float 1.000000e+00, %6218
  %6220 = fmul fast float %6219, %6217
  %6221 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6203, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6222 = fcmp fast ogt float %6221, 0.000000e+00
  %6223 = fcmp fast olt float %6221, 0.000000e+00
  %6224 = zext i1 %6222 to i32
  %6225 = zext i1 %6223 to i32
  %6226 = sub nsw i32 %6224, %6225
  %6227 = sitofp i32 %6226 to float
  %6228 = fsub fast float %6209, %2148
  %6229 = call float @dx.op.dot3.f32(i32 55, float %5966, float %5967, float %6228, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6230 = fcmp fast ogt float %6229, 0.000000e+00
  %6231 = fcmp fast olt float %6229, 0.000000e+00
  %6232 = zext i1 %6230 to i32
  %6233 = zext i1 %6231 to i32
  %6234 = sub nsw i32 %6232, %6233
  %6235 = sitofp i32 %6234 to float
  %6236 = fcmp fast une float %6227, %6235
  br i1 %6236, label %6237, label %6247

; <label>:6237                                    ; preds = %6197
  %6238 = fmul fast float %6220, %6215
  %6239 = fmul fast float %6220, %6214
  %6240 = fmul fast float %6220, %6213
  %6241 = fmul fast float %6240, %6240
  %6242 = fmul fast float %6239, %6239
  %6243 = fadd fast float %6241, %6242
  %6244 = fmul fast float %6238, %6238
  %6245 = fadd fast float %6243, %6244
  %6246 = call float @dx.op.unary.f32(i32 24, float %6245)  ; Sqrt(value)
  br label %6259

; <label>:6247                                    ; preds = %6197
  %6248 = icmp slt i32 %6226, 0
  br i1 %6248, label %6249, label %6259

; <label>:6249                                    ; preds = %6247
  %6250 = fsub fast float %147, %5938
  %6251 = fsub fast float %148, %5939
  %6252 = fsub fast float %149, %6209
  %6253 = fmul fast float %6250, %6250
  %6254 = fmul fast float %6251, %6251
  %6255 = fadd fast float %6253, %6254
  %6256 = fmul fast float %6252, %6252
  %6257 = fadd fast float %6255, %6256
  %6258 = call float @dx.op.unary.f32(i32 24, float %6257)  ; Sqrt(value)
  br label %6259

; <label>:6259                                    ; preds = %6249, %6247, %6237
  %6260 = phi float [ %6246, %6237 ], [ %6258, %6249 ], [ 0.000000e+00, %6247 ]
  %6261 = and i1 %6204, %6202
  %6262 = fsub fast float -0.000000e+00, %6260
  %6263 = select i1 %6261, float -0.000000e+00, float %6262
  %6264 = fmul fast float %2149, 0x3FF7154760000000
  %6265 = fmul fast float %6264, %6263
  %6266 = fmul fast float %2150, 0x3FF7154760000000
  %6267 = fmul fast float %6266, %6263
  %6268 = fmul fast float %2151, 0x3FF7154760000000
  %6269 = fmul fast float %6268, %6263
  %6270 = call float @dx.op.unary.f32(i32 21, float %6265)  ; Exp(value)
  %6271 = call float @dx.op.unary.f32(i32 21, float %6267)  ; Exp(value)
  %6272 = call float @dx.op.unary.f32(i32 21, float %6269)  ; Exp(value)
  %6273 = call float @dx.op.unary.f32(i32 7, float %6270)  ; Saturate(value)
  %6274 = call float @dx.op.unary.f32(i32 7, float %6271)  ; Saturate(value)
  %6275 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6276 = fmul fast float %6198, %6273
  %6277 = fmul fast float %6199, %6274
  %6278 = fmul fast float %6200, %6275
  %6279 = fsub fast float %5972, %196
  %6280 = fsub fast float %5973, %197
  %6281 = fsub fast float %5974, %198
  %6282 = call float @dx.op.dot3.f32(i32 55, float %6279, float %6280, float %6281, float %6279, float %6280, float %6281)  ; Dot3(ax,ay,az,bx,by,bz)
  %6283 = call float @dx.op.unary.f32(i32 25, float %6282)  ; Rsqrt(value)
  %6284 = fmul fast float %6283, %6279
  %6285 = fmul fast float %6283, %6280
  %6286 = fmul fast float %6283, %6281
  %6287 = call float @dx.op.dot3.f32(i32 55, float %5972, float %5973, float %5974, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %6288 = call float @dx.op.dot3.f32(i32 55, float %2165, float %2166, float %2167, float %6284, float %6285, float %6286)  ; Dot3(ax,ay,az,bx,by,bz)
  %6289 = call float @dx.op.unary.f32(i32 7, float %6287)  ; Saturate(value)
  %6290 = fmul fast float %6289, %5979
  %6291 = fmul fast float %6289, %6289
  %6292 = fmul fast float %6291, %4255
  %6293 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  %6294 = fmul fast float %6290, %6293
  %6295 = bitcast float %5969 to i32
  %6296 = ashr i32 %6295, 1
  %6297 = sub nsw i32 1597463007, %6296
  %6298 = bitcast i32 %6297 to float
  %6299 = fmul fast float %6298, %5966
  %6300 = fmul fast float %6298, %5967
  %6301 = fmul fast float %6298, %5968
  %6302 = fsub fast float %6299, %196
  %6303 = fsub fast float %6300, %197
  %6304 = fsub fast float %6301, %198
  %6305 = call float @dx.op.dot3.f32(i32 55, float %6302, float %6303, float %6304, float %6302, float %6303, float %6304)  ; Dot3(ax,ay,az,bx,by,bz)
  %6306 = call float @dx.op.unary.f32(i32 25, float %6305)  ; Rsqrt(value)
  %6307 = fmul fast float %6302, %6306
  %6308 = fmul fast float %6303, %6306
  %6309 = fmul fast float %6304, %6306
  %6310 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float %6307, float %6308, float %6309)  ; Dot3(ax,ay,az,bx,by,bz)
  %6311 = fmul fast float %6310, %6310
  %6312 = call float @dx.op.unary.f32(i32 6, float %6287)  ; FAbs(value)
  %6313 = fsub fast float 1.000000e+00, %2363
  %6314 = fmul fast float %2345, %2345
  %6315 = fmul fast float %6314, %6313
  %6316 = fadd fast float %6315, %2363
  %6317 = bitcast float %6316 to i32
  %6318 = ashr i32 %6317, 1
  %6319 = add nsw i32 %6318, 532487669
  %6320 = bitcast i32 %6319 to float
  %6321 = fadd fast float %6320, %2345
  %6322 = fmul fast float %2363, %6311
  %6323 = fsub fast float 1.000000e+00, %6311
  %6324 = fadd fast float %6323, %6322
  %6325 = fmul fast float %6312, %6312
  %6326 = fmul fast float %6325, %6313
  %6327 = fadd fast float %6326, %2363
  %6328 = bitcast float %6327 to i32
  %6329 = ashr i32 %6328, 1
  %6330 = add nsw i32 %6329, 532487669
  %6331 = bitcast i32 %6330 to float
  %6332 = fadd fast float %6331, %6312
  %6333 = fmul fast float %6324, %6324
  %6334 = fmul fast float %6333, %6321
  %6335 = fmul fast float %6334, %6332
  %6336 = fdiv fast float 1.000000e+00, %6335
  %6337 = bitcast float %2363 to i32
  %6338 = sitofp i32 %6337 to float
  %6339 = fmul fast float %6338, 0x3FE7F73180000000
  %6340 = fadd fast float %6339, 0x41AFE27C40000000
  %6341 = fptosi float %6340 to i32
  %6342 = bitcast i32 %6341 to float
  %6343 = fmul fast float %5935, 0x3FD80E9D60000000
  %6344 = fmul fast float %6343, %6298
  %6345 = fadd fast float %6342, %6344
  %6346 = bitcast float %6345 to i32
  %6347 = sub nsw i32 2129859010, %6346
  %6348 = bitcast i32 %6347 to float
  %6349 = fmul fast float %2363, %6336
  %6350 = fmul fast float %6349, %6342
  %6351 = fmul fast float %6350, %6348
  %6352 = fmul fast float %3629, 0x3FF9999980000000
  %6353 = fsub fast float 5.000000e+00, %6352
  %6354 = call float @dx.op.unary.f32(i32 6, float %6288)  ; FAbs(value)
  %6355 = fsub fast float 1.000000e+00, %6354
  %6356 = fmul fast float %3629, 0x41D9660740000000
  %6357 = fadd fast float %6356, 0xC1EFBF8940000000
  %6358 = bitcast float %6355 to i32
  %6359 = sitofp i32 %6358 to float
  %6360 = fmul fast float %6359, %6353
  %6361 = fadd fast float %6357, %6360
  %6362 = fptosi float %6361 to i32
  %6363 = bitcast i32 %6362 to float
  %6364 = fsub fast float 1.000000e+00, %2331
  %6365 = fsub fast float 1.000000e+00, %2332
  %6366 = fsub fast float 1.000000e+00, %2343
  %6367 = fmul fast float %6363, %6364
  %6368 = fmul fast float %6363, %6365
  %6369 = fmul fast float %6363, %6366
  %6370 = fadd fast float %6367, %2331
  %6371 = fadd fast float %6368, %2332
  %6372 = fadd fast float %6369, %2343
  br i1 %3652, label %6373, label %6396

; <label>:6373                                    ; preds = %6259
  %6374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1701, float %6354, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6375 = extractvalue %dx.types.ResRet.f32 %6374, 0
  %6376 = extractvalue %dx.types.ResRet.f32 %6374, 1
  %6377 = extractvalue %dx.types.ResRet.f32 %6374, 2
  %6378 = fadd fast float %6375, -5.000000e-01
  %6379 = fadd fast float %6376, -5.000000e-01
  %6380 = fadd fast float %6377, -5.000000e-01
  %6381 = fmul fast float %2331, 4.000000e+00
  %6382 = fmul fast float %6381, %6364
  %6383 = fmul fast float %6382, %6378
  %6384 = fmul fast float %2332, 4.000000e+00
  %6385 = fmul fast float %6384, %6365
  %6386 = fmul fast float %6385, %6379
  %6387 = fmul fast float %2343, 4.000000e+00
  %6388 = fmul fast float %6387, %6366
  %6389 = fmul fast float %6388, %6380
  %6390 = fadd fast float %6383, %6370
  %6391 = fadd fast float %6386, %6371
  %6392 = fadd fast float %6389, %6372
  %6393 = call float @dx.op.unary.f32(i32 7, float %6390)  ; Saturate(value)
  %6394 = call float @dx.op.unary.f32(i32 7, float %6391)  ; Saturate(value)
  %6395 = call float @dx.op.unary.f32(i32 7, float %6392)  ; Saturate(value)
  br label %6396

; <label>:6396                                    ; preds = %6373, %6259
  %6397 = phi float [ %6393, %6373 ], [ %6370, %6259 ]
  %6398 = phi float [ %6394, %6373 ], [ %6371, %6259 ]
  %6399 = phi float [ %6395, %6373 ], [ %6372, %6259 ]
  %6400 = fmul fast float %6287, 9.843750e-01
  %6401 = fadd fast float %6400, 7.812500e-03
  %6402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6401, float %3633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6403 = extractvalue %dx.types.ResRet.f32 %6402, 0
  %6404 = extractvalue %dx.types.ResRet.f32 %6402, 1
  %6405 = extractvalue %dx.types.ResRet.f32 %6402, 2
  %6406 = extractvalue %dx.types.ResRet.f32 %6402, 3
  %6407 = fsub fast float %6405, %6403
  %6408 = fsub fast float %6406, %6404
  %6409 = fmul fast float %6407, %3639
  %6410 = fmul fast float %6408, %3639
  %6411 = fadd fast float %6409, %6403
  %6412 = fadd fast float %6410, %6404
  %6413 = fmul fast float %6411, %2331
  %6414 = fmul fast float %6411, %2332
  %6415 = fmul fast float %6411, %2343
  %6416 = fadd fast float %6413, %6412
  %6417 = fadd fast float %6414, %6412
  %6418 = fadd fast float %6415, %6412
  br i1 %3652, label %6419, label %6442

; <label>:6419                                    ; preds = %6396
  %6420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1701, float %6287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6421 = extractvalue %dx.types.ResRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.ResRet.f32 %6420, 1
  %6423 = extractvalue %dx.types.ResRet.f32 %6420, 2
  %6424 = fadd fast float %6421, -5.000000e-01
  %6425 = fadd fast float %6422, -5.000000e-01
  %6426 = fadd fast float %6423, -5.000000e-01
  %6427 = fmul fast float %2331, 4.000000e+00
  %6428 = fmul fast float %6427, %6364
  %6429 = fmul fast float %6428, %6424
  %6430 = fmul fast float %2332, 4.000000e+00
  %6431 = fmul fast float %6430, %6365
  %6432 = fmul fast float %6431, %6425
  %6433 = fmul fast float %2343, 4.000000e+00
  %6434 = fmul fast float %6433, %6366
  %6435 = fmul fast float %6434, %6426
  %6436 = fadd fast float %6429, %6416
  %6437 = fadd fast float %6432, %6417
  %6438 = fadd fast float %6435, %6418
  %6439 = call float @dx.op.unary.f32(i32 7, float %6436)  ; Saturate(value)
  %6440 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6441 = call float @dx.op.unary.f32(i32 7, float %6438)  ; Saturate(value)
  br label %6442

; <label>:6442                                    ; preds = %6419, %6396
  %6443 = phi float [ %6439, %6419 ], [ %6416, %6396 ]
  %6444 = phi float [ %6440, %6419 ], [ %6417, %6396 ]
  %6445 = phi float [ %6441, %6419 ], [ %6418, %6396 ]
  %6446 = call float @dx.op.binary.f32(i32 35, float %6444, float %6445)  ; FMax(a,b)
  %6447 = call float @dx.op.binary.f32(i32 35, float %6443, float %6446)  ; FMax(a,b)
  %6448 = fsub fast float 1.000000e+00, %6447
  %6449 = fmul fast float %6397, %6351
  %6450 = fmul fast float %6398, %6351
  %6451 = fmul fast float %6399, %6351
  %6452 = fsub fast float 1.000000e+00, %6288
  %6453 = bitcast float %6452 to i32
  %6454 = sitofp i32 %6453 to float
  %6455 = fmul fast float %6454, 5.000000e+00
  %6456 = fadd fast float %6455, 0xC1EFBF8940000000
  %6457 = fptosi float %6456 to i32
  %6458 = bitcast i32 %6457 to float
  %6459 = fmul fast float %6458, %1700
  %6460 = fmul fast float %6448, %6459
  %6461 = fmul fast float %6460, %4194
  %6462 = fmul fast float %6460, %4195
  %6463 = fmul fast float %6460, %4196
  %6464 = fadd fast float %6461, %6449
  %6465 = fadd fast float %6462, %6450
  %6466 = fadd fast float %6463, %6451
  %6467 = fmul fast float %6276, %1748
  %6468 = fmul fast float %6467, %6294
  %6469 = fmul fast float %6468, %6448
  %6470 = fmul fast float %6277, %1748
  %6471 = fmul fast float %6470, %6294
  %6472 = fmul fast float %6471, %6448
  %6473 = fmul fast float %6278, %1748
  %6474 = fmul fast float %6473, %6294
  %6475 = fmul fast float %6474, %6448
  %6476 = fadd fast float %6469, %5909
  %6477 = fadd fast float %6472, %5910
  %6478 = fadd fast float %6475, %5911
  %6479 = fmul fast float %6468, %6464
  %6480 = fmul fast float %6471, %6465
  %6481 = fmul fast float %6474, %6466
  %6482 = fadd fast float %6479, %5906
  %6483 = fadd fast float %6480, %5907
  %6484 = fadd fast float %6481, %5908
  br label %6038

; <label>:6485                                    ; preds = %6038
  br label %6486

; <label>:6486                                    ; preds = %6485, %5872
  %6487 = phi float [ %5874, %5872 ], [ %6039, %6485 ]
  %6488 = phi float [ %5875, %5872 ], [ %6040, %6485 ]
  %6489 = phi float [ %5876, %5872 ], [ %6041, %6485 ]
  %6490 = phi float [ %5877, %5872 ], [ %6042, %6485 ]
  %6491 = phi float [ %5878, %5872 ], [ %6043, %6485 ]
  %6492 = phi float [ %5879, %5872 ], [ %6044, %6485 ]
  %6493 = add i32 %5873, 1
  %6494 = icmp ugt i32 %6493, %5869
  br i1 %6494, label %6495, label %5872

; <label>:6495                                    ; preds = %6486
  br label %6496

; <label>:6496                                    ; preds = %6495, %5822, %5812
  %6497 = phi float [ %5813, %5812 ], [ %5813, %5822 ], [ %6487, %6495 ]
  %6498 = phi float [ %5814, %5812 ], [ %5814, %5822 ], [ %6488, %6495 ]
  %6499 = phi float [ %5815, %5812 ], [ %5815, %5822 ], [ %6489, %6495 ]
  %6500 = phi float [ %5816, %5812 ], [ %5816, %5822 ], [ %6490, %6495 ]
  %6501 = phi float [ %5817, %5812 ], [ %5817, %5822 ], [ %6491, %6495 ]
  %6502 = phi float [ %5818, %5812 ], [ %5818, %5822 ], [ %6492, %6495 ]
  %6503 = fmul fast float %1748, %1748
  %6504 = fmul fast float %6503, %4220
  %6505 = fmul fast float %6503, %4221
  %6506 = fmul fast float %6503, %4222
  %6507 = fadd fast float %6504, 1.000000e+00
  %6508 = fadd fast float %6505, 1.000000e+00
  %6509 = fadd fast float %6506, 1.000000e+00
  %6510 = call float @dx.op.dot3.f32(i32 55, float %6507, float %6508, float %6509, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6511 = fsub fast float 1.000000e+00, %6510
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 0
  %6514 = fmul fast float %6513, %4226
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 3
  %6517 = fsub fast float 1.000000e+00, %1696
  %6518 = call float @dx.op.unary.f32(i32 7, float %6517)  ; Saturate(value)
  %6519 = fadd fast float %6502, %1695
  %6520 = fmul fast float %6519, %1696
  %6521 = fmul fast float %6518, %6516
  %6522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %1727, i32 undef)  ; BufferLoad(srv,index,wot)
  %6523 = extractvalue %dx.types.ResRet.i32 %6522, 3
  %6524 = bitcast i32 %6523 to float
  %6525 = fsub fast float %6511, %6524
  %6526 = fmul fast float %6525, %210
  %6527 = fadd fast float %6526, %6524
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 3
  %6530 = fmul fast float %6500, %2334
  %6531 = fmul fast float %6501, %2335
  %6532 = fmul fast float %6502, %2336
  %6533 = fcmp fast ogt float %88, %230
  %6534 = and i1 %6533, %2154
  %6535 = or i1 %2160, %6534
  %6536 = icmp eq i32 %2153, 2
  %6537 = fcmp fast ole float %88, %230
  %6538 = and i1 %6537, %6536
  %6539 = or i1 %6538, %6535
  br i1 %6534, label %6540, label %6799

; <label>:6540                                    ; preds = %6496
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 2
  %6543 = extractvalue %dx.types.CBufRet.f32 %6541, 3
  %6544 = fmul fast float %6542, %100
  %6545 = fmul fast float %6543, %101
  %6546 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6547 = call float @dx.op.unary.f32(i32 7, float %6545)  ; Saturate(value)
  %6548 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6546, float %6547, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6549 = extractvalue %dx.types.ResRet.f32 %6548, 0
  %6550 = extractvalue %dx.types.ResRet.f32 %6548, 1
  %6551 = extractvalue %dx.types.ResRet.f32 %6548, 2
  %6552 = extractvalue %dx.types.ResRet.f32 %6548, 3
  %6553 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6546, float %6547, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6554 = extractvalue %dx.types.ResRet.f32 %6553, 0
  %6555 = extractvalue %dx.types.ResRet.f32 %6553, 1
  %6556 = extractvalue %dx.types.ResRet.f32 %6553, 2
  %6557 = extractvalue %dx.types.ResRet.f32 %6553, 3
  %6558 = call float @dx.op.binary.f32(i32 35, float %6550, float %6551)  ; FMax(a,b)
  %6559 = call float @dx.op.binary.f32(i32 35, float %6549, float %6558)  ; FMax(a,b)
  %6560 = call float @dx.op.binary.f32(i32 35, float %6559, float %6552)  ; FMax(a,b)
  %6561 = call float @dx.op.binary.f32(i32 36, float %6555, float %6556)  ; FMin(a,b)
  %6562 = call float @dx.op.binary.f32(i32 36, float %6554, float %6561)  ; FMin(a,b)
  %6563 = call float @dx.op.binary.f32(i32 36, float %6562, float %6557)  ; FMin(a,b)
  %6564 = fmul fast float %6560, 2.550000e+02
  %6565 = fadd fast float %6564, 0x3F70101020000000
  %6566 = fptoui float %6565 to i32
  %6567 = fmul fast float %6563, 2.550000e+02
  %6568 = fadd fast float %6567, 0x3F70101020000000
  %6569 = fptoui float %6568 to i32
  %6570 = icmp ult i32 %6566, %6569
  br i1 %6570, label %6571, label %6739

; <label>:6571                                    ; preds = %6540
  %6572 = fcmp fast ogt float %87, 9.843750e-01
  %6573 = fadd fast float %88, -4.000000e+00
  %6574 = select i1 %6572, float -4.000000e+00, float %6573
  %6575 = call float @dx.op.binary.f32(i32 35, float %6574, float 0.000000e+00)  ; FMax(a,b)
  %6576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6576, 0
  %6578 = fadd fast float %6577, %6575
  %6579 = extractvalue %dx.types.CBufRet.f32 %6576, 2
  %6580 = fmul fast float %6578, %6579
  %6581 = call float @dx.op.unary.f32(i32 23, float %6580)  ; Log(value)
  %6582 = extractvalue %dx.types.CBufRet.f32 %6576, 3
  %6583 = fmul fast float %6582, %6581
  %6584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6585 = extractvalue %dx.types.CBufRet.f32 %6584, 2
  %6586 = fmul fast float %6583, %6585
  %6587 = call float @dx.op.unary.f32(i32 7, float %6586)  ; Saturate(value)
  %6588 = uitofp i32 %6566 to float
  %6589 = uitofp i32 %6569 to float
  %6590 = fadd fast float %6588, 5.000000e-01
  %6591 = fadd fast float %6589, 5.000000e-01
  %6592 = fmul fast float %6585, %6590
  %6593 = fmul fast float %6585, %6591
  %6594 = fadd fast float %6592, 0x3F0FFB4800000000
  %6595 = fadd fast float %6593, 0xBF0FFB4800000000
  %6596 = call float @dx.op.binary.f32(i32 35, float %6587, float %6594)  ; FMax(a,b)
  %6597 = call float @dx.op.binary.f32(i32 36, float %6596, float %6595)  ; FMin(a,b)
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 1
  %6600 = extractvalue %dx.types.CBufRet.f32 %6598, 2
  %6601 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6602 = fmul fast float %6599, %6597
  %6603 = fadd fast float %6601, %6602
  %6604 = fadd fast float %6601, %6600
  %6605 = fsub fast float %6599, %6600
  %6606 = fadd fast float %6605, %6601
  %6607 = call float @dx.op.binary.f32(i32 35, float %6603, float %6604)  ; FMax(a,b)
  %6608 = call float @dx.op.binary.f32(i32 36, float %6607, float %6606)  ; FMin(a,b)
  %6609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6546, float %6547, float %6608, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6610 = extractvalue %dx.types.ResRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.ResRet.f32 %6609, 1
  %6612 = extractvalue %dx.types.ResRet.f32 %6609, 2
  %6613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.i32 %6613, 0
  %6615 = extractvalue %dx.types.CBufRet.i32 %6613, 1
  %6616 = uitofp i32 %6614 to float
  %6617 = uitofp i32 %6615 to float
  %6618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6619 = extractvalue %dx.types.CBufRet.f32 %6618, 0
  %6620 = extractvalue %dx.types.CBufRet.f32 %6618, 1
  %6621 = fmul fast float %6616, %6546
  %6622 = fmul fast float %6617, %6547
  %6623 = fadd fast float %6621, -5.000000e-01
  %6624 = fadd fast float %6622, -5.000000e-01
  %6625 = call float @dx.op.unary.f32(i32 22, float %6623)  ; Frc(value)
  %6626 = call float @dx.op.unary.f32(i32 22, float %6624)  ; Frc(value)
  %6627 = fmul fast float %6625, %6625
  %6628 = fmul fast float %6627, %6625
  %6629 = fsub fast float 3.000000e+00, %6625
  %6630 = fmul fast float %6627, %6629
  %6631 = fmul fast float %6625, 3.000000e+00
  %6632 = fmul fast float %6628, 3.000000e+00
  %6633 = fmul fast float %6627, 6.000000e+00
  %6634 = fsub fast float %6632, %6633
  %6635 = fadd fast float %6634, 4.000000e+00
  %6636 = fmul fast float %6635, 0x3FC5555560000000
  %6637 = fmul fast float %6628, -3.000000e+00
  %6638 = fadd fast float %6627, %6625
  %6639 = fmul fast float %6638, 3.000000e+00
  %6640 = fadd fast float %6637, 1.000000e+00
  %6641 = fadd fast float %6640, %6639
  %6642 = fmul fast float %6628, 0x3FC5555560000000
  %6643 = fmul fast float %6626, %6626
  %6644 = fmul fast float %6643, %6626
  %6645 = fsub fast float 3.000000e+00, %6626
  %6646 = fmul fast float %6643, %6645
  %6647 = fmul fast float %6626, 3.000000e+00
  %6648 = fmul fast float %6644, 3.000000e+00
  %6649 = fmul fast float %6643, 6.000000e+00
  %6650 = fsub fast float %6648, %6649
  %6651 = fadd fast float %6650, 4.000000e+00
  %6652 = fmul fast float %6651, 0x3FC5555560000000
  %6653 = fmul fast float %6644, -3.000000e+00
  %6654 = fadd fast float %6643, %6626
  %6655 = fmul fast float %6654, 3.000000e+00
  %6656 = fadd fast float %6653, 1.000000e+00
  %6657 = fadd fast float %6656, %6655
  %6658 = fmul fast float %6644, 0x3FC5555560000000
  %6659 = fadd fast float %6625, 1.000000e+00
  %6660 = fsub fast float 1.000000e+00, %6631
  %6661 = fadd fast float %6660, %6630
  %6662 = fadd fast float %6661, %6635
  %6663 = fmul fast float %6662, 0x3FC5555560000000
  %6664 = fdiv fast float %6636, %6663
  %6665 = fsub fast float %6659, %6664
  %6666 = fsub fast float 1.000000e+00, %6625
  %6667 = fadd fast float %6641, %6628
  %6668 = fmul fast float %6667, 0x3FC5555560000000
  %6669 = fdiv fast float %6642, %6668
  %6670 = fadd fast float %6666, %6669
  %6671 = fadd fast float %6626, 1.000000e+00
  %6672 = fsub fast float 1.000000e+00, %6647
  %6673 = fadd fast float %6672, %6646
  %6674 = fadd fast float %6673, %6651
  %6675 = fmul fast float %6674, 0x3FC5555560000000
  %6676 = fdiv fast float %6652, %6675
  %6677 = fsub fast float %6671, %6676
  %6678 = fsub fast float 1.000000e+00, %6626
  %6679 = fadd fast float %6657, %6644
  %6680 = fmul fast float %6679, 0x3FC5555560000000
  %6681 = fdiv fast float %6658, %6680
  %6682 = fadd fast float %6681, %6678
  %6683 = fmul fast float %6665, %6619
  %6684 = fsub fast float %6546, %6683
  %6685 = fmul fast float %6670, %6619
  %6686 = fadd fast float %6685, %6546
  %6687 = fmul fast float %6682, %6620
  %6688 = fadd fast float %6687, %6547
  %6689 = fmul fast float %6677, %6620
  %6690 = fsub fast float %6547, %6689
  %6691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6684, float %6690, float %6608, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6692 = extractvalue %dx.types.ResRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.ResRet.f32 %6691, 1
  %6694 = extractvalue %dx.types.ResRet.f32 %6691, 2
  %6695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6686, float %6690, float %6608, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6696 = extractvalue %dx.types.ResRet.f32 %6695, 0
  %6697 = extractvalue %dx.types.ResRet.f32 %6695, 1
  %6698 = extractvalue %dx.types.ResRet.f32 %6695, 2
  %6699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6684, float %6688, float %6608, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6700 = extractvalue %dx.types.ResRet.f32 %6699, 0
  %6701 = extractvalue %dx.types.ResRet.f32 %6699, 1
  %6702 = extractvalue %dx.types.ResRet.f32 %6699, 2
  %6703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6686, float %6688, float %6608, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6704 = extractvalue %dx.types.ResRet.f32 %6703, 0
  %6705 = extractvalue %dx.types.ResRet.f32 %6703, 1
  %6706 = extractvalue %dx.types.ResRet.f32 %6703, 2
  %6707 = fsub fast float %6700, %6692
  %6708 = fsub fast float %6701, %6693
  %6709 = fsub fast float %6702, %6694
  %6710 = fmul fast float %6707, %6680
  %6711 = fmul fast float %6708, %6680
  %6712 = fmul fast float %6709, %6680
  %6713 = fadd fast float %6710, %6692
  %6714 = fadd fast float %6711, %6693
  %6715 = fadd fast float %6712, %6694
  %6716 = fsub fast float %6704, %6696
  %6717 = fsub fast float %6705, %6697
  %6718 = fsub fast float %6706, %6698
  %6719 = fmul fast float %6716, %6680
  %6720 = fmul fast float %6717, %6680
  %6721 = fmul fast float %6718, %6680
  %6722 = fsub fast float %6696, %6713
  %6723 = fadd fast float %6722, %6719
  %6724 = fsub fast float %6697, %6714
  %6725 = fadd fast float %6724, %6720
  %6726 = fsub fast float %6698, %6715
  %6727 = fadd fast float %6726, %6721
  %6728 = fmul fast float %6723, %6668
  %6729 = fmul fast float %6725, %6668
  %6730 = fmul fast float %6727, %6668
  %6731 = fadd fast float %6728, %6713
  %6732 = fadd fast float %6729, %6714
  %6733 = fadd fast float %6730, %6715
  %6734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6734, 1
  %6736 = fmul fast float %6731, %6735
  %6737 = fmul fast float %6732, %6735
  %6738 = fmul fast float %6733, %6735
  br label %6739

; <label>:6739                                    ; preds = %6571, %6540
  %6740 = phi float [ %6610, %6571 ], [ 1.000000e+00, %6540 ]
  %6741 = phi float [ %6611, %6571 ], [ 1.000000e+00, %6540 ]
  %6742 = phi float [ %6612, %6571 ], [ 1.000000e+00, %6540 ]
  %6743 = phi float [ %6736, %6571 ], [ 0.000000e+00, %6540 ]
  %6744 = phi float [ %6737, %6571 ], [ 0.000000e+00, %6540 ]
  %6745 = phi float [ %6738, %6571 ], [ 0.000000e+00, %6540 ]
  %6746 = fmul fast float %6743, %6527
  %6747 = fmul fast float %6744, %6527
  %6748 = fmul fast float %6745, %6527
  %6749 = call float @dx.op.dot3.f32(i32 55, float %6740, float %6741, float %6742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6750 = call float @dx.op.dot3.f32(i32 55, float %6746, float %6747, float %6748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6751 = select i1 %270, float %6749, float %6740
  %6752 = select i1 %270, float %6749, float %6741
  %6753 = select i1 %270, float 1.000000e+00, float %6742
  %6754 = select i1 %270, float %6750, float %6746
  %6755 = select i1 %270, float 0.000000e+00, float %6747
  %6756 = select i1 %270, float 0.000000e+00, float %6748
  %6757 = fmul fast float %6751, %6530
  %6758 = fmul fast float %6752, %6531
  %6759 = fmul fast float %6753, %6532
  %6760 = fadd fast float %6757, %6754
  %6761 = fadd fast float %6758, %6755
  %6762 = fadd fast float %6756, %6759
  %6763 = fmul fast float %6751, %6497
  %6764 = fmul fast float %6752, %6498
  %6765 = fmul fast float %6753, %6499
  %6766 = fmul fast float %100, 2.000000e+00
  %6767 = fmul fast float %6766, %6542
  %6768 = fmul fast float %101, 2.000000e+00
  %6769 = fmul fast float %6768, %6543
  %6770 = fsub fast float 1.000000e+00, %6767
  %6771 = fsub fast float 1.000000e+00, %6769
  %6772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6773 = extractvalue %dx.types.CBufRet.f32 %6772, 0
  %6774 = extractvalue %dx.types.CBufRet.f32 %6772, 1
  %6775 = extractvalue %dx.types.CBufRet.f32 %6772, 2
  %6776 = fmul fast float %6770, %6773
  %6777 = fmul fast float %6770, %6774
  %6778 = fmul fast float %6770, %6775
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 0
  %6781 = extractvalue %dx.types.CBufRet.f32 %6779, 1
  %6782 = extractvalue %dx.types.CBufRet.f32 %6779, 2
  %6783 = fmul fast float %6771, %6780
  %6784 = fmul fast float %6771, %6781
  %6785 = fmul fast float %6771, %6782
  %6786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6787 = extractvalue %dx.types.CBufRet.f32 %6786, 0
  %6788 = extractvalue %dx.types.CBufRet.f32 %6786, 1
  %6789 = extractvalue %dx.types.CBufRet.f32 %6786, 2
  %6790 = fadd fast float %6783, %6787
  %6791 = fadd fast float %6790, %6776
  %6792 = fadd fast float %6784, %6788
  %6793 = fadd fast float %6792, %6777
  %6794 = fadd fast float %6785, %6789
  %6795 = fadd fast float %6794, %6778
  %6796 = fmul fast float %6791, %230
  %6797 = fmul fast float %6793, %230
  %6798 = fmul fast float %6795, %230
  br label %6799

; <label>:6799                                    ; preds = %6739, %6496
  %6800 = phi float [ %6796, %6739 ], [ %147, %6496 ]
  %6801 = phi float [ %6797, %6739 ], [ %148, %6496 ]
  %6802 = phi float [ %6798, %6739 ], [ %149, %6496 ]
  %6803 = phi float [ %230, %6739 ], [ %88, %6496 ]
  %6804 = phi float [ %6760, %6739 ], [ %6530, %6496 ]
  %6805 = phi float [ %6761, %6739 ], [ %6531, %6496 ]
  %6806 = phi float [ %6762, %6739 ], [ %6532, %6496 ]
  %6807 = phi float [ %6763, %6739 ], [ %6497, %6496 ]
  %6808 = phi float [ %6764, %6739 ], [ %6498, %6496 ]
  %6809 = phi float [ %6765, %6739 ], [ %6499, %6496 ]
  %6810 = phi float [ %6740, %6739 ], [ 1.000000e+00, %6496 ]
  br i1 %6539, label %7965, label %6811

; <label>:6811                                    ; preds = %6799
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 0
  %6814 = extractvalue %dx.types.CBufRet.f32 %6812, 1
  %6815 = extractvalue %dx.types.CBufRet.f32 %6812, 2
  %6816 = extractvalue %dx.types.CBufRet.f32 %6812, 3
  %6817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6818 = extractvalue %dx.types.CBufRet.f32 %6817, 0
  %6819 = extractvalue %dx.types.CBufRet.f32 %6817, 1
  %6820 = extractvalue %dx.types.CBufRet.f32 %6817, 2
  %6821 = extractvalue %dx.types.CBufRet.f32 %6817, 3
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 0
  %6824 = extractvalue %dx.types.CBufRet.f32 %6822, 1
  %6825 = extractvalue %dx.types.CBufRet.f32 %6822, 2
  %6826 = extractvalue %dx.types.CBufRet.f32 %6822, 3
  %6827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6828 = extractvalue %dx.types.CBufRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.CBufRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.CBufRet.f32 %6827, 2
  %6831 = extractvalue %dx.types.CBufRet.f32 %6827, 3
  %6832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6833 = extractvalue %dx.types.CBufRet.f32 %6832, 3
  %6834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6835 = extractvalue %dx.types.CBufRet.f32 %6834, 3
  %6836 = extractvalue %dx.types.CBufRet.f32 %6834, 0
  %6837 = extractvalue %dx.types.CBufRet.f32 %6834, 1
  %6838 = extractvalue %dx.types.CBufRet.f32 %6834, 2
  %6839 = fcmp fast olt float %6838, -5.000000e-01
  %6840 = call float @dx.op.dot3.f32(i32 55, float %6800, float %6801, float %6802, float %6800, float %6801, float %6802)  ; Dot3(ax,ay,az,bx,by,bz)
  %6841 = call float @dx.op.unary.f32(i32 25, float %6840)  ; Rsqrt(value)
  %6842 = fmul fast float %6841, %6840
  %6843 = fmul fast float %6841, %6800
  %6844 = fmul fast float %6841, %6801
  %6845 = fmul fast float %6841, %6802
  %6846 = fadd fast float %6842, %6816
  %6847 = call float @dx.op.dot3.f32(i32 55, float %6843, float %6844, float %6845, float %6813, float %6814, float %6815)  ; Dot3(ax,ay,az,bx,by,bz)
  %6848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.i32 %6848, 1
  %6850 = and i32 %6849, 1
  %6851 = icmp ne i32 %6850, 0
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 2
  %6854 = fcmp fast ogt float %6853, 0.000000e+00
  %6855 = and i1 %6851, %6854
  br i1 %6855, label %6856, label %7262, !dx.controlflow.hints !147

; <label>:6856                                    ; preds = %6811
  %6857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.f32 %6857, 3
  %6859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6860 = extractvalue %dx.types.CBufRet.f32 %6859, 2
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %6863 = fsub fast float %6860, %6862
  %6864 = and i32 %6849, 2
  %6865 = extractvalue %dx.types.CBufRet.i32 %6848, 0
  %6866 = call i32 @dx.op.binary.i32(i32 40, i32 %6865, i32 3)  ; UMin(a,b)
  %6867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6868 = extractvalue %dx.types.CBufRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.CBufRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.CBufRet.f32 %6861, 0
  %6871 = extractvalue %dx.types.CBufRet.f32 %6861, 1
  %6872 = fsub fast float %6868, %6870
  %6873 = fsub fast float %6869, %6871
  %6874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6875 = extractvalue %dx.types.CBufRet.f32 %6874, 0
  %6876 = fcmp fast ogt float %6875, 0.000000e+00
  %6877 = fsub fast float -0.000000e+00, %6872
  %6878 = fsub fast float -0.000000e+00, %6873
  %6879 = call float @dx.op.dot2.f32(i32 54, float %6843, float %6844, float %6843, float %6844)  ; Dot2(ax,ay,bx,by)
  %6880 = call float @dx.op.dot2.f32(i32 54, float %6843, float %6844, float %6877, float %6878)  ; Dot2(ax,ay,bx,by)
  %6881 = fmul fast float %6880, 2.000000e+00
  %6882 = call float @dx.op.dot2.f32(i32 54, float %6877, float %6878, float %6877, float %6878)  ; Dot2(ax,ay,bx,by)
  %6883 = fmul fast float %6875, %6875
  %6884 = fsub fast float %6882, %6883
  %6885 = fmul fast float %6881, %6881
  %6886 = fmul fast float %6879, 4.000000e+00
  %6887 = fmul fast float %6886, %6884
  %6888 = fsub fast float %6885, %6887
  %6889 = fcmp fast ogt float %6888, 0.000000e+00
  br i1 %6889, label %6890, label %6905

; <label>:6890                                    ; preds = %6856
  %6891 = fcmp fast ogt float %6881, 0.000000e+00
  %6892 = call float @dx.op.unary.f32(i32 24, float %6888)  ; Sqrt(value)
  %6893 = fsub fast float -0.000000e+00, %6892
  %6894 = select i1 %6891, float %6892, float %6893
  %6895 = fadd fast float %6894, %6881
  %6896 = fmul float %6895, -5.000000e-01
  %6897 = fdiv fast float %6896, %6879
  %6898 = call float @dx.op.binary.f32(i32 35, float %6897, float 0.000000e+00)  ; FMax(a,b)
  %6899 = call float @dx.op.binary.f32(i32 36, float %6842, float %6898)  ; FMin(a,b)
  %6900 = fdiv fast float %6884, %6896
  %6901 = call float @dx.op.binary.f32(i32 35, float %6900, float 0.000000e+00)  ; FMax(a,b)
  %6902 = call float @dx.op.binary.f32(i32 36, float %6842, float %6901)  ; FMin(a,b)
  %6903 = call float @dx.op.binary.f32(i32 36, float %6899, float %6902)  ; FMin(a,b)
  %6904 = call float @dx.op.binary.f32(i32 35, float %6899, float %6902)  ; FMax(a,b)
  br label %6905

; <label>:6905                                    ; preds = %6890, %6856
  %6906 = phi float [ %6904, %6890 ], [ -1.000000e+00, %6856 ]
  %6907 = phi float [ %6903, %6890 ], [ -1.000000e+00, %6856 ]
  %6908 = phi i1 [ true, %6890 ], [ false, %6856 ]
  %6909 = and i1 %6876, %6908
  br i1 %6909, label %6910, label %6912

; <label>:6910                                    ; preds = %6905
  %6911 = fcmp fast oeq float %6907, %6906
  br i1 %6911, label %7215, label %6913

; <label>:6912                                    ; preds = %6905
  br i1 %6876, label %7215, label %6913

; <label>:6913                                    ; preds = %6912, %6910
  %6914 = phi float [ %6842, %6912 ], [ %6906, %6910 ]
  %6915 = phi float [ 0.000000e+00, %6912 ], [ %6907, %6910 ]
  %6916 = icmp ne i32 %6864, 0
  %6917 = fmul fast float %6914, %6845
  %6918 = fadd fast float %6917, %6858
  %6919 = fmul fast float %6918, %6914
  %6920 = select i1 %6916, float 0.000000e+00, float %6919
  %6921 = fcmp fast oeq float %6845, 0.000000e+00
  %6922 = fdiv fast float %6863, %6845
  %6923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6922)  ; FMax(a,b)
  %6924 = select i1 %6921, float %6914, float %6923
  %6925 = call float @dx.op.binary.f32(i32 36, float %6914, float %6924)  ; FMin(a,b)
  %6926 = fcmp fast ogt float %6845, 0.000000e+00
  %6927 = fcmp fast olt float %6863, 0.000000e+00
  br i1 %6926, label %6928, label %6985

; <label>:6928                                    ; preds = %6913
  %6929 = icmp eq i32 %6864, 0
  br i1 %6927, label %6930, label %6974

; <label>:6930                                    ; preds = %6928
  %6931 = select i1 %6929, float %6914, float 0.000000e+00
  %6932 = fsub fast float -0.000000e+00, %6931
  %6933 = call float @dx.op.unary.f32(i32 6, float %6932)  ; FAbs(value)
  %6934 = fmul fast float %6931, %6845
  %6935 = fadd fast float %6934, %6858
  %6936 = fmul fast float %6933, %6935
  %6937 = fsub fast float %6920, %6936
  %6938 = fsub fast float %6914, %6933
  %6939 = select i1 %6929, float %6938, float 0.000000e+00
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 0
  %6942 = extractvalue %dx.types.CBufRet.f32 %6940, 1
  %6943 = extractvalue %dx.types.CBufRet.f32 %6940, 2
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %6946 = extractvalue %dx.types.CBufRet.f32 %6944, 1
  %6947 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6948 = extractvalue %dx.types.CBufRet.f32 %6944, 3
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 3
  %6951 = call float @dx.op.binary.f32(i32 36, float %6937, float %6950)  ; FMin(a,b)
  %6952 = fmul fast float %6948, %6939
  %6953 = call float @dx.op.unary.f32(i32 7, float %6952)  ; Saturate(value)
  %6954 = fsub fast float %6945, %6941
  %6955 = fsub fast float %6946, %6942
  %6956 = fsub fast float %6947, %6943
  %6957 = fmul fast float %6953, %6954
  %6958 = fmul fast float %6953, %6955
  %6959 = fmul fast float %6953, %6956
  %6960 = fadd fast float %6957, %6941
  %6961 = fadd fast float %6958, %6942
  %6962 = fadd fast float %6959, %6943
  %6963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6964 = extractvalue %dx.types.CBufRet.f32 %6963, 0
  %6965 = extractvalue %dx.types.CBufRet.f32 %6963, 1
  %6966 = fadd fast float %6965, %6964
  %6967 = call float @dx.op.unary.f32(i32 7, float %6966)  ; Saturate(value)
  %6968 = extractvalue %dx.types.CBufRet.f32 %6963, 2
  %6969 = extractvalue %dx.types.CBufRet.f32 %6963, 3
  %6970 = fadd fast float %6969, %6968
  %6971 = call float @dx.op.unary.f32(i32 7, float %6970)  ; Saturate(value)
  %6972 = fmul fast float %6967, %6951
  %6973 = fmul fast float %6972, %6971
  br label %7215

; <label>:6974                                    ; preds = %6928
  br i1 %6929, label %6975, label %6996

; <label>:6975                                    ; preds = %6974
  %6976 = call float @dx.op.binary.f32(i32 36, float %6925, float %6915)  ; FMin(a,b)
  %6977 = fsub fast float %6925, %6976
  %6978 = fsub fast float %6977, %6914
  %6979 = call float @dx.op.unary.f32(i32 6, float %6978)  ; FAbs(value)
  %6980 = fadd fast float %6977, %6914
  %6981 = fmul fast float %6980, %6845
  %6982 = fadd fast float %6981, %6858
  %6983 = fmul fast float %6982, %6979
  %6984 = fsub fast float %6920, %6983
  br label %6996

; <label>:6985                                    ; preds = %6913
  br i1 %6927, label %6986, label %6996

; <label>:6986                                    ; preds = %6985
  %6987 = call float @dx.op.binary.f32(i32 35, float %6915, float %6925)  ; FMax(a,b)
  %6988 = icmp eq i32 %6864, 0
  %6989 = select i1 %6988, float %6925, float 0.000000e+00
  %6990 = fsub fast float -0.000000e+00, %6989
  %6991 = call float @dx.op.unary.f32(i32 6, float %6990)  ; FAbs(value)
  %6992 = fmul fast float %6989, %6845
  %6993 = fadd fast float %6992, %6858
  %6994 = fmul fast float %6991, %6993
  %6995 = fsub fast float %6920, %6994
  br label %6996

; <label>:6996                                    ; preds = %6986, %6985, %6975, %6974
  %6997 = phi float [ %6915, %6974 ], [ %6915, %6975 ], [ %6987, %6986 ], [ %6915, %6985 ]
  %6998 = phi float [ 0.000000e+00, %6974 ], [ %6979, %6975 ], [ %6991, %6986 ], [ 0.000000e+00, %6985 ]
  %6999 = phi float [ %6920, %6974 ], [ %6984, %6975 ], [ %6995, %6986 ], [ %6920, %6985 ]
  %7000 = phi float [ %6925, %6974 ], [ %6925, %6975 ], [ %6914, %6986 ], [ %6914, %6985 ]
  %7001 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %7001, align 4, !tbaa !134, !noalias !148
  %7002 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %7002, align 4, !tbaa !134, !noalias !148
  %7003 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %7003, align 4, !tbaa !134, !noalias !148
  %7004 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %7004, align 4, !tbaa !134, !noalias !148
  %7005 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %7005, align 4, !tbaa !134, !noalias !148
  %7006 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %7006, align 4, !tbaa !134, !noalias !148
  %7007 = icmp sgt i32 %6866, 0
  br i1 %7007, label %7008, label %7069

; <label>:7008                                    ; preds = %6996
  br label %7009

; <label>:7009                                    ; preds = %7058, %7008
  %7010 = phi i32 [ %7059, %7058 ], [ 0, %7008 ]
  %7011 = phi i32 [ %7060, %7058 ], [ 0, %7008 ]
  %7012 = add nuw i32 %7011, 171
  %7013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %7012)  ; CBufferLoadLegacy(handle,regIndex)
  %7014 = extractvalue %dx.types.CBufRet.f32 %7013, 0
  %7015 = extractvalue %dx.types.CBufRet.f32 %7013, 1
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7019 = fsub fast float %7014, %7017
  %7020 = fsub fast float %7015, %7018
  %7021 = extractvalue %dx.types.CBufRet.f32 %7013, 2
  %7022 = fsub fast float -0.000000e+00, %7019
  %7023 = fsub fast float -0.000000e+00, %7020
  %7024 = call float @dx.op.dot2.f32(i32 54, float %6843, float %6844, float %7022, float %7023)  ; Dot2(ax,ay,bx,by)
  %7025 = fmul fast float %7024, 2.000000e+00
  %7026 = call float @dx.op.dot2.f32(i32 54, float %7022, float %7023, float %7022, float %7023)  ; Dot2(ax,ay,bx,by)
  %7027 = fmul fast float %7021, %7021
  %7028 = fsub fast float %7026, %7027
  %7029 = fmul fast float %7025, %7025
  %7030 = fmul fast float %6886, %7028
  %7031 = fsub fast float %7029, %7030
  %7032 = fcmp fast ogt float %7031, 0.000000e+00
  br i1 %7032, label %7033, label %7048

; <label>:7033                                    ; preds = %7009
  %7034 = fcmp fast ogt float %7025, 0.000000e+00
  %7035 = call float @dx.op.unary.f32(i32 24, float %7031)  ; Sqrt(value)
  %7036 = fsub fast float -0.000000e+00, %7035
  %7037 = select i1 %7034, float %7035, float %7036
  %7038 = fadd fast float %7037, %7025
  %7039 = fmul float %7038, -5.000000e-01
  %7040 = fdiv fast float %7039, %6879
  %7041 = call float @dx.op.binary.f32(i32 35, float %7040, float 0.000000e+00)  ; FMax(a,b)
  %7042 = call float @dx.op.binary.f32(i32 36, float %6914, float %7041)  ; FMin(a,b)
  %7043 = fdiv fast float %7028, %7039
  %7044 = call float @dx.op.binary.f32(i32 35, float %7043, float 0.000000e+00)  ; FMax(a,b)
  %7045 = call float @dx.op.binary.f32(i32 36, float %6914, float %7044)  ; FMin(a,b)
  %7046 = call float @dx.op.binary.f32(i32 36, float %7042, float %7045)  ; FMin(a,b)
  %7047 = call float @dx.op.binary.f32(i32 35, float %7042, float %7045)  ; FMax(a,b)
  br label %7048

; <label>:7048                                    ; preds = %7033, %7009
  %7049 = phi float [ %7047, %7033 ], [ -1.000000e+00, %7009 ]
  %7050 = phi float [ %7046, %7033 ], [ -1.000000e+00, %7009 ]
  %7051 = phi i1 [ true, %7033 ], [ false, %7009 ]
  br i1 %7051, label %7052, label %7058

; <label>:7052                                    ; preds = %7048
  %7053 = call float @dx.op.binary.f32(i32 35, float %6997, float %7050)  ; FMax(a,b)
  %7054 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7011
  store float %7053, float* %7054, align 4, !tbaa !134, !noalias !148
  %7055 = call float @dx.op.binary.f32(i32 35, float %6997, float %7049)  ; FMax(a,b)
  %7056 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7011
  store float %7055, float* %7056, align 4, !tbaa !134, !noalias !148
  %7057 = add nsw i32 %7010, 1
  br label %7058

; <label>:7058                                    ; preds = %7052, %7048
  %7059 = phi i32 [ %7057, %7052 ], [ %7010, %7048 ]
  %7060 = add nuw nsw i32 %7011, 1
  %7061 = icmp eq i32 %7060, %6866
  br i1 %7061, label %7062, label %7009

; <label>:7062                                    ; preds = %7058
  %7063 = load float, float* %7003, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %7064 = load float, float* %7002, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  %7065 = load float, float* %7001, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  %7066 = load float, float* %7006, align 4, !tbaa !134, !alias.scope !174, !noalias !177
  %7067 = load float, float* %7005, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  %7068 = load float, float* %7004, align 4, !tbaa !134, !alias.scope !182, !noalias !183
  br label %7069

; <label>:7069                                    ; preds = %7062, %6996
  %7070 = phi float [ -1.000000e+00, %6996 ], [ %7068, %7062 ]
  %7071 = phi float [ -1.000000e+00, %6996 ], [ %7067, %7062 ]
  %7072 = phi float [ -1.000000e+00, %6996 ], [ %7066, %7062 ]
  %7073 = phi float [ -1.000000e+00, %6996 ], [ %7065, %7062 ]
  %7074 = phi float [ -1.000000e+00, %6996 ], [ %7064, %7062 ]
  %7075 = phi float [ -1.000000e+00, %6996 ], [ %7063, %7062 ]
  %7076 = phi i32 [ 0, %6996 ], [ %7059, %7062 ]
  %7077 = call float @dx.op.binary.f32(i32 36, float %7074, float %7075)  ; FMin(a,b)
  %7078 = call float @dx.op.binary.f32(i32 36, float %7073, float %7077)  ; FMin(a,b)
  %7079 = call float @dx.op.binary.f32(i32 35, float %7073, float %7074)  ; FMax(a,b)
  %7080 = call float @dx.op.binary.f32(i32 36, float %7079, float %7075)  ; FMin(a,b)
  %7081 = call float @dx.op.binary.f32(i32 36, float %7073, float %7074)  ; FMin(a,b)
  %7082 = call float @dx.op.binary.f32(i32 35, float %7081, float %7080)  ; FMax(a,b)
  %7083 = call float @dx.op.binary.f32(i32 35, float %7074, float %7075)  ; FMax(a,b)
  %7084 = call float @dx.op.binary.f32(i32 35, float %7073, float %7083)  ; FMax(a,b)
  store float %7078, float* %7001, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  store float %7082, float* %7002, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  store float %7084, float* %7003, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %7085 = call float @dx.op.binary.f32(i32 36, float %7071, float %7072)  ; FMin(a,b)
  %7086 = call float @dx.op.binary.f32(i32 36, float %7070, float %7085)  ; FMin(a,b)
  %7087 = call float @dx.op.binary.f32(i32 35, float %7070, float %7071)  ; FMax(a,b)
  %7088 = call float @dx.op.binary.f32(i32 36, float %7087, float %7072)  ; FMin(a,b)
  %7089 = call float @dx.op.binary.f32(i32 36, float %7070, float %7071)  ; FMin(a,b)
  %7090 = call float @dx.op.binary.f32(i32 35, float %7089, float %7088)  ; FMax(a,b)
  %7091 = call float @dx.op.binary.f32(i32 35, float %7071, float %7072)  ; FMax(a,b)
  %7092 = call float @dx.op.binary.f32(i32 35, float %7070, float %7091)  ; FMax(a,b)
  store float %7086, float* %7004, align 4, !tbaa !134, !alias.scope !182, !noalias !183
  store float %7090, float* %7005, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  store float %7092, float* %7006, align 4, !tbaa !134, !alias.scope !174, !noalias !177
  %7093 = sub nsw i32 3, %7076
  %7094 = icmp sgt i32 %7093, 2
  br i1 %7094, label %7095, label %7133

; <label>:7095                                    ; preds = %7069
  %7096 = icmp eq i32 %6864, 0
  %7097 = fsub fast float %6914, %6998
  %7098 = select i1 %7096, float %7097, float %6998
  %7099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.f32 %7099, 0
  %7101 = extractvalue %dx.types.CBufRet.f32 %7099, 1
  %7102 = extractvalue %dx.types.CBufRet.f32 %7099, 2
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7106 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %7107 = extractvalue %dx.types.CBufRet.f32 %7103, 3
  %7108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.f32 %7108, 3
  %7110 = call float @dx.op.binary.f32(i32 36, float %6999, float %7109)  ; FMin(a,b)
  %7111 = fmul fast float %7107, %7098
  %7112 = call float @dx.op.unary.f32(i32 7, float %7111)  ; Saturate(value)
  %7113 = fsub fast float %7104, %7100
  %7114 = fsub fast float %7105, %7101
  %7115 = fsub fast float %7106, %7102
  %7116 = fmul fast float %7112, %7113
  %7117 = fmul fast float %7112, %7114
  %7118 = fmul fast float %7112, %7115
  %7119 = fadd fast float %7116, %7100
  %7120 = fadd fast float %7117, %7101
  %7121 = fadd fast float %7118, %7102
  %7122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7123 = extractvalue %dx.types.CBufRet.f32 %7122, 0
  %7124 = extractvalue %dx.types.CBufRet.f32 %7122, 1
  %7125 = fadd fast float %7124, %7123
  %7126 = call float @dx.op.unary.f32(i32 7, float %7125)  ; Saturate(value)
  %7127 = extractvalue %dx.types.CBufRet.f32 %7122, 2
  %7128 = extractvalue %dx.types.CBufRet.f32 %7122, 3
  %7129 = fadd fast float %7128, %7127
  %7130 = call float @dx.op.unary.f32(i32 7, float %7129)  ; Saturate(value)
  %7131 = fmul fast float %7126, %7110
  %7132 = fmul fast float %7131, %7130
  br label %7215

; <label>:7133                                    ; preds = %7069
  %7134 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7093
  %7135 = load float, float* %7134, align 4, !tbaa !134, !noalias !148
  %7136 = fcmp fast olt float %7135, %7000
  %7137 = icmp sgt i32 %7076, 0
  %7138 = and i1 %7137, %7136
  br i1 %7138, label %7139, label %7176

; <label>:7139                                    ; preds = %7133
  br label %7140

; <label>:7140                                    ; preds = %7169, %7139
  %7141 = phi float [ %7170, %7169 ], [ %6998, %7139 ]
  %7142 = phi float [ %7171, %7169 ], [ %6999, %7139 ]
  %7143 = phi float [ %7151, %7169 ], [ %7135, %7139 ]
  %7144 = phi i32 [ %7148, %7169 ], [ %7093, %7139 ]
  %7145 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7144
  %7146 = load float, float* %7145, align 4, !tbaa !134, !noalias !148
  %7147 = icmp slt i32 %7144, 2
  %7148 = add nsw i32 %7144, 1
  %7149 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %7148
  %7150 = load float, float* %7149, align 4, !tbaa !134, !noalias !148
  %7151 = select i1 %7147, float %7150, float %6914
  %7152 = call float @dx.op.binary.f32(i32 36, float %7151, float %7146)  ; FMin(a,b)
  %7153 = call float @dx.op.binary.f32(i32 36, float %7000, float %7152)  ; FMin(a,b)
  %7154 = icmp eq i32 %6864, 0
  %7155 = fadd fast float %7153, %7143
  %7156 = fmul fast float %7155, %6845
  %7157 = fadd fast float %7156, %6858
  br i1 %7154, label %7163, label %7158

; <label>:7158                                    ; preds = %7140
  %7159 = fsub fast float %7153, %7143
  %7160 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7159)  ; FMax(a,b)
  %7161 = fmul fast float %7160, %7157
  %7162 = fadd fast float %7161, %7142
  br label %7169

; <label>:7163                                    ; preds = %7140
  %7164 = fsub fast float %7143, %7153
  %7165 = call float @dx.op.unary.f32(i32 6, float %7164)  ; FAbs(value)
  %7166 = fadd fast float %7165, %7141
  %7167 = fmul fast float %7165, %7157
  %7168 = fsub fast float %7142, %7167
  br label %7169

; <label>:7169                                    ; preds = %7163, %7158
  %7170 = phi float [ %7160, %7158 ], [ %7166, %7163 ]
  %7171 = phi float [ %7162, %7158 ], [ %7168, %7163 ]
  %7172 = fcmp fast olt float %7151, %7000
  %7173 = icmp slt i32 %7148, 3
  %7174 = and i1 %7173, %7172
  br i1 %7174, label %7140, label %7175

; <label>:7175                                    ; preds = %7169
  br label %7176

; <label>:7176                                    ; preds = %7175, %7133
  %7177 = phi float [ %6998, %7133 ], [ %7170, %7175 ]
  %7178 = phi float [ %6999, %7133 ], [ %7171, %7175 ]
  %7179 = fsub fast float %6914, %7177
  %7180 = select i1 %6916, float %7177, float %7179
  %7181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7182 = extractvalue %dx.types.CBufRet.f32 %7181, 0
  %7183 = extractvalue %dx.types.CBufRet.f32 %7181, 1
  %7184 = extractvalue %dx.types.CBufRet.f32 %7181, 2
  %7185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7186 = extractvalue %dx.types.CBufRet.f32 %7185, 0
  %7187 = extractvalue %dx.types.CBufRet.f32 %7185, 1
  %7188 = extractvalue %dx.types.CBufRet.f32 %7185, 2
  %7189 = extractvalue %dx.types.CBufRet.f32 %7185, 3
  %7190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7191 = extractvalue %dx.types.CBufRet.f32 %7190, 3
  %7192 = call float @dx.op.binary.f32(i32 36, float %7178, float %7191)  ; FMin(a,b)
  %7193 = fmul fast float %7189, %7180
  %7194 = call float @dx.op.unary.f32(i32 7, float %7193)  ; Saturate(value)
  %7195 = fsub fast float %7186, %7182
  %7196 = fsub fast float %7187, %7183
  %7197 = fsub fast float %7188, %7184
  %7198 = fmul fast float %7194, %7195
  %7199 = fmul fast float %7194, %7196
  %7200 = fmul fast float %7194, %7197
  %7201 = fadd fast float %7198, %7182
  %7202 = fadd fast float %7199, %7183
  %7203 = fadd fast float %7200, %7184
  %7204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7205 = extractvalue %dx.types.CBufRet.f32 %7204, 0
  %7206 = extractvalue %dx.types.CBufRet.f32 %7204, 1
  %7207 = fadd fast float %7206, %7205
  %7208 = call float @dx.op.unary.f32(i32 7, float %7207)  ; Saturate(value)
  %7209 = extractvalue %dx.types.CBufRet.f32 %7204, 2
  %7210 = extractvalue %dx.types.CBufRet.f32 %7204, 3
  %7211 = fadd fast float %7210, %7209
  %7212 = call float @dx.op.unary.f32(i32 7, float %7211)  ; Saturate(value)
  %7213 = fmul fast float %7208, %7192
  %7214 = fmul fast float %7213, %7212
  br label %7215

; <label>:7215                                    ; preds = %7176, %7095, %6930, %6912, %6910
  %7216 = phi float [ %6939, %6930 ], [ %7098, %7095 ], [ %7180, %7176 ], [ 0.000000e+00, %6910 ], [ 0.000000e+00, %6912 ]
  %7217 = phi float [ %6973, %6930 ], [ %7132, %7095 ], [ %7214, %7176 ], [ 0.000000e+00, %6910 ], [ 0.000000e+00, %6912 ]
  %7218 = phi float [ %6960, %6930 ], [ %7119, %7095 ], [ %7201, %7176 ], [ 0.000000e+00, %6910 ], [ 0.000000e+00, %6912 ]
  %7219 = phi float [ %6961, %6930 ], [ %7120, %7095 ], [ %7202, %7176 ], [ 0.000000e+00, %6910 ], [ 0.000000e+00, %6912 ]
  %7220 = phi float [ %6962, %6930 ], [ %7121, %7095 ], [ %7203, %7176 ], [ 0.000000e+00, %6910 ], [ 0.000000e+00, %6912 ]
  %7221 = fmul fast float %6853, %7217
  %7222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7223 = extractvalue %dx.types.CBufRet.f32 %7222, 2
  %7224 = fsub fast float %6860, %7223
  %7225 = fcmp fast olt float %7221, -2.000000e+01
  %7226 = call float @dx.op.unary.f32(i32 21, float %7221)  ; Exp(value)
  %7227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7228 = extractvalue %dx.types.CBufRet.f32 %7227, 2
  %7229 = extractvalue %dx.types.CBufRet.f32 %7227, 3
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 2
  %7232 = fmul fast float %7229, %7224
  %7233 = call float @dx.op.unary.f32(i32 7, float %7232)  ; Saturate(value)
  %7234 = fsub fast float 1.000000e+00, %7233
  %7235 = fmul fast float %6845, 5.000000e-01
  %7236 = fadd fast float %7235, 5.000000e-01
  %7237 = call float @dx.op.unary.f32(i32 7, float %7236)  ; Saturate(value)
  %7238 = fsub fast float 1.000000e+00, %7237
  %7239 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7234)  ; FMax(a,b)
  %7240 = fdiv fast float %7238, %7239
  %7241 = fsub fast float %7224, %6802
  %7242 = call float @dx.op.unary.f32(i32 6, float %7241)  ; FAbs(value)
  %7243 = fmul fast float %7242, %7228
  %7244 = call float @dx.op.unary.f32(i32 7, float %7240)  ; Saturate(value)
  %7245 = fsub fast float 1.000000e+00, %7243
  %7246 = fmul fast float %7245, %7244
  %7247 = fadd fast float %7246, %7243
  %7248 = fmul fast float %7231, %7224
  %7249 = call float @dx.op.unary.f32(i32 7, float %7248)  ; Saturate(value)
  %7250 = fsub fast float 1.000000e+00, %7247
  %7251 = fmul fast float %7250, %7249
  %7252 = fadd fast float %7251, %7247
  %7253 = call float @dx.op.unary.f32(i32 7, float %7252)  ; Saturate(value)
  %7254 = fadd fast float %7226, -1.000000e+00
  %7255 = select i1 %7225, float -1.000000e+00, float %7254
  %7256 = fmul fast float %7253, %7255
  %7257 = fadd fast float %7256, 1.000000e+00
  %7258 = fsub fast float -0.000000e+00, %7256
  %7259 = fmul fast float %7218, %7258
  %7260 = fmul fast float %7219, %7258
  %7261 = fmul fast float %7220, %7258
  br label %7262

; <label>:7262                                    ; preds = %7215, %6811
  %7263 = phi float [ %7216, %7215 ], [ 0.000000e+00, %6811 ]
  %7264 = phi float [ %7257, %7215 ], [ 1.000000e+00, %6811 ]
  %7265 = phi float [ %7259, %7215 ], [ 0.000000e+00, %6811 ]
  %7266 = phi float [ %7260, %7215 ], [ 0.000000e+00, %6811 ]
  %7267 = phi float [ %7261, %7215 ], [ 0.000000e+00, %6811 ]
  %7268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7269 = extractvalue %dx.types.CBufRet.f32 %7268, 1
  %7270 = fsub fast float 1.000000e+00, %7264
  %7271 = fmul fast float %7270, %6846
  %7272 = fmul fast float %7271, %7269
  %7273 = fsub fast float %6846, %7272
  br i1 %6839, label %7274, label %7303, !dx.controlflow.hints !184

; <label>:7274                                    ; preds = %7262
  %7275 = fmul fast float %6847, %6836
  %7276 = fadd fast float %7275, %6837
  %7277 = call float @dx.op.unary.f32(i32 7, float %7276)  ; Saturate(value)
  %7278 = fmul fast float %6818, %7273
  %7279 = fsub fast float -0.000000e+00, %7278
  %7280 = fmul fast float %6819, %7273
  %7281 = fsub fast float -0.000000e+00, %7280
  %7282 = call float @dx.op.unary.f32(i32 21, float %7279)  ; Exp(value)
  %7283 = call float @dx.op.unary.f32(i32 21, float %7281)  ; Exp(value)
  %7284 = call float @dx.op.binary.f32(i32 35, float %6826, float %7282)  ; FMax(a,b)
  %7285 = call float @dx.op.binary.f32(i32 35, float %6826, float %7283)  ; FMax(a,b)
  %7286 = fsub fast float %7285, %7284
  %7287 = fmul fast float %7286, %7277
  %7288 = fadd fast float %7287, %7284
  %7289 = call float @dx.op.unary.f32(i32 7, float %7288)  ; Saturate(value)
  %7290 = fsub fast float %6823, %6828
  %7291 = fsub fast float %6824, %6829
  %7292 = fsub fast float %6825, %6830
  %7293 = fmul fast float %7277, %7290
  %7294 = fmul fast float %7277, %7291
  %7295 = fmul fast float %7277, %7292
  %7296 = fadd fast float %7293, %6828
  %7297 = fadd fast float %7294, %6829
  %7298 = fadd fast float %7295, %6830
  %7299 = fsub fast float 1.000000e+00, %7289
  %7300 = fmul fast float %7299, %7296
  %7301 = fmul fast float %7299, %7297
  %7302 = fmul fast float %7299, %7298
  br label %7362

; <label>:7303                                    ; preds = %7262
  %7304 = fmul fast float %7273, %6835
  %7305 = call float @dx.op.unary.f32(i32 7, float %7304)  ; Saturate(value)
  %7306 = fsub fast float 2.000000e+00, %7305
  %7307 = fmul fast float %7305, 9.921875e-01
  %7308 = fmul fast float %7307, %7306
  %7309 = fadd fast float %7308, 3.906250e-03
  %7310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7309, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7311 = extractvalue %dx.types.ResRet.f32 %7310, 0
  %7312 = fsub fast float %7305, %7311
  %7313 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7312)  ; FMax(a,b)
  %7314 = fmul fast float %6821, %6802
  %7315 = call float @dx.op.unary.f32(i32 6, float %7314)  ; FAbs(value)
  %7316 = fcmp fast ogt float %7315, 0x3EB0C6F7A0000000
  br i1 %7316, label %7317, label %7323, !dx.controlflow.hints !185

; <label>:7317                                    ; preds = %7303
  %7318 = fmul fast float %7314, 0xBFF7154760000000
  %7319 = call float @dx.op.unary.f32(i32 21, float %7318)  ; Exp(value)
  %7320 = fsub fast float 1.000000e+00, %7319
  %7321 = fdiv fast float %7320, %7314
  %7322 = fmul fast float %7321, %6831
  br label %7323

; <label>:7323                                    ; preds = %7317, %7303
  %7324 = phi float [ %7322, %7317 ], [ %6831, %7303 ]
  %7325 = fadd fast float %7324, %6833
  %7326 = fmul fast float %7325, %7313
  %7327 = fmul fast float %6818, %7326
  %7328 = fsub fast float -0.000000e+00, %7327
  %7329 = fmul fast float %6819, %7326
  %7330 = fsub fast float -0.000000e+00, %7329
  %7331 = fmul fast float %6820, %7326
  %7332 = fsub fast float -0.000000e+00, %7331
  %7333 = call float @dx.op.unary.f32(i32 21, float %7328)  ; Exp(value)
  %7334 = call float @dx.op.unary.f32(i32 21, float %7330)  ; Exp(value)
  %7335 = call float @dx.op.unary.f32(i32 21, float %7332)  ; Exp(value)
  %7336 = fmul fast float %6847, %6847
  %7337 = fadd fast float %7336, 1.000000e+00
  %7338 = fmul fast float %7337, 0x3FAE8EC8A0000000
  %7339 = fmul fast float %7338, %6828
  %7340 = fmul fast float %7338, %6829
  %7341 = fmul fast float %7338, %6830
  %7342 = fmul fast float %6847, %6826
  %7343 = fsub fast float 1.000000e+00, %7342
  %7344 = fmul fast float %6826, %6826
  %7345 = fsub fast float 1.000000e+00, %7344
  %7346 = fmul fast float %7345, 0x3FB45F3060000000
  %7347 = fmul fast float %7343, %7343
  %7348 = fdiv fast float 1.000000e+00, %7347
  %7349 = fmul fast float %7346, %7348
  %7350 = fmul fast float %7349, %6823
  %7351 = fmul fast float %7349, %6824
  %7352 = fmul fast float %7349, %6825
  %7353 = fadd fast float %7350, %7339
  %7354 = fadd fast float %7351, %7340
  %7355 = fadd fast float %7352, %7341
  %7356 = fsub fast float 1.000000e+00, %7333
  %7357 = fsub fast float 1.000000e+00, %7334
  %7358 = fsub fast float 1.000000e+00, %7335
  %7359 = fmul fast float %7353, %7356
  %7360 = fmul fast float %7354, %7357
  %7361 = fmul fast float %7355, %7358
  br label %7362

; <label>:7362                                    ; preds = %7323, %7274
  %7363 = phi float [ %7300, %7274 ], [ %7359, %7323 ]
  %7364 = phi float [ %7301, %7274 ], [ %7360, %7323 ]
  %7365 = phi float [ %7302, %7274 ], [ %7361, %7323 ]
  %7366 = phi float [ %7289, %7274 ], [ %7333, %7323 ]
  %7367 = phi float [ %7289, %7274 ], [ %7334, %7323 ]
  %7368 = phi float [ %7289, %7274 ], [ %7335, %7323 ]
  br i1 %6855, label %7369, label %7567, !dx.controlflow.hints !186

; <label>:7369                                    ; preds = %7362
  %7370 = extractvalue %dx.types.CBufRet.f32 %7268, 0
  %7371 = fmul fast float %7370, %7270
  %7372 = fsub fast float %7265, %7363
  %7373 = fsub fast float %7266, %7364
  %7374 = fsub fast float %7267, %7365
  %7375 = fmul fast float %7371, %7372
  %7376 = fmul fast float %7371, %7373
  %7377 = fmul fast float %7371, %7374
  %7378 = fadd fast float %7375, %7363
  %7379 = fadd fast float %7376, %7364
  %7380 = fadd fast float %7377, %7365
  %7381 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7366)  ; FMax(a,b)
  %7382 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7367)  ; FMax(a,b)
  %7383 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7368)  ; FMax(a,b)
  %7384 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7264)  ; FMax(a,b)
  %7385 = call float @dx.op.binary.f32(i32 35, float %7263, float %7273)  ; FMax(a,b)
  %7386 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7385)  ; FMax(a,b)
  %7387 = fdiv fast float %7263, %7386
  %7388 = call float @dx.op.unary.f32(i32 7, float %7387)  ; Saturate(value)
  %7389 = fdiv fast float %7273, %7386
  %7390 = call float @dx.op.unary.f32(i32 7, float %7389)  ; Saturate(value)
  %7391 = fcmp fast une float %7384, 1.000000e+00
  br i1 %7391, label %7392, label %7405, !dx.controlflow.hints !187

; <label>:7392                                    ; preds = %7369
  %7393 = call float @dx.op.unary.f32(i32 23, float %7384)  ; Log(value)
  %7394 = fmul fast float %7393, 0x3FE62E4300000000
  %7395 = fmul fast float %7265, %7394
  %7396 = fsub fast float -0.000000e+00, %7395
  %7397 = fmul fast float %7266, %7394
  %7398 = fsub fast float -0.000000e+00, %7397
  %7399 = fmul fast float %7267, %7394
  %7400 = fsub fast float -0.000000e+00, %7399
  %7401 = fsub fast float 1.000000e+00, %7384
  %7402 = fdiv fast float %7396, %7401
  %7403 = fdiv fast float %7398, %7401
  %7404 = fdiv fast float %7400, %7401
  br label %7405

; <label>:7405                                    ; preds = %7392, %7369
  %7406 = phi float [ %7402, %7392 ], [ %7265, %7369 ]
  %7407 = phi float [ %7403, %7392 ], [ %7266, %7369 ]
  %7408 = phi float [ %7404, %7392 ], [ %7267, %7369 ]
  %7409 = phi float [ %7394, %7392 ], [ 0.000000e+00, %7369 ]
  %7410 = fcmp fast une float %7381, 1.000000e+00
  br i1 %7410, label %7411, label %7418, !dx.controlflow.hints !188

; <label>:7411                                    ; preds = %7405
  %7412 = call float @dx.op.unary.f32(i32 23, float %7381)  ; Log(value)
  %7413 = fmul fast float %7412, 0x3FE62E4300000000
  %7414 = fmul fast float %7378, %7413
  %7415 = fsub fast float -0.000000e+00, %7414
  %7416 = fsub fast float 1.000000e+00, %7381
  %7417 = fdiv fast float %7415, %7416
  br label %7418

; <label>:7418                                    ; preds = %7411, %7405
  %7419 = phi float [ %7417, %7411 ], [ %7378, %7405 ]
  %7420 = phi float [ %7413, %7411 ], [ 0.000000e+00, %7405 ]
  %7421 = fcmp fast une float %7382, 1.000000e+00
  br i1 %7421, label %7422, label %7429, !dx.controlflow.hints !188

; <label>:7422                                    ; preds = %7418
  %7423 = call float @dx.op.unary.f32(i32 23, float %7382)  ; Log(value)
  %7424 = fmul fast float %7423, 0x3FE62E4300000000
  %7425 = fmul fast float %7379, %7424
  %7426 = fsub fast float -0.000000e+00, %7425
  %7427 = fsub fast float 1.000000e+00, %7382
  %7428 = fdiv fast float %7426, %7427
  br label %7429

; <label>:7429                                    ; preds = %7422, %7418
  %7430 = phi float [ %7428, %7422 ], [ %7379, %7418 ]
  %7431 = phi float [ %7424, %7422 ], [ 0.000000e+00, %7418 ]
  %7432 = fcmp fast une float %7383, 1.000000e+00
  br i1 %7432, label %7433, label %7440, !dx.controlflow.hints !188

; <label>:7433                                    ; preds = %7429
  %7434 = call float @dx.op.unary.f32(i32 23, float %7383)  ; Log(value)
  %7435 = fmul fast float %7434, 0x3FE62E4300000000
  %7436 = fmul fast float %7380, %7435
  %7437 = fsub fast float -0.000000e+00, %7436
  %7438 = fsub fast float 1.000000e+00, %7383
  %7439 = fdiv fast float %7437, %7438
  br label %7440

; <label>:7440                                    ; preds = %7433, %7429
  %7441 = phi float [ %7439, %7433 ], [ %7380, %7429 ]
  %7442 = phi float [ %7435, %7433 ], [ 0.000000e+00, %7429 ]
  %7443 = fmul fast float %7406, %7390
  %7444 = fmul fast float %7407, %7390
  %7445 = fmul fast float %7408, %7390
  %7446 = fmul fast float %7409, %7390
  %7447 = fmul fast float %7419, %7388
  %7448 = fmul fast float %7430, %7388
  %7449 = fmul fast float %7441, %7388
  %7450 = fmul fast float %7420, %7388
  %7451 = fmul fast float %7431, %7388
  %7452 = fmul fast float %7442, %7388
  %7453 = fadd fast float %7447, %7443
  %7454 = fadd fast float %7448, %7444
  %7455 = fadd fast float %7449, %7445
  %7456 = fadd fast float %7450, %7446
  %7457 = fadd fast float %7451, %7446
  %7458 = fadd fast float %7452, %7446
  %7459 = fcmp fast une float %7456, 0.000000e+00
  br i1 %7459, label %7460, label %7467, !dx.controlflow.hints !189

; <label>:7460                                    ; preds = %7440
  %7461 = fmul fast float %7456, 0x3FF7154760000000
  %7462 = call float @dx.op.unary.f32(i32 21, float %7461)  ; Exp(value)
  %7463 = fsub fast float 1.000000e+00, %7462
  %7464 = fmul fast float %7453, %7463
  %7465 = fsub fast float -0.000000e+00, %7464
  %7466 = fdiv fast float %7465, %7456
  br label %7467

; <label>:7467                                    ; preds = %7460, %7440
  %7468 = phi float [ %7462, %7460 ], [ 1.000000e+00, %7440 ]
  %7469 = phi float [ %7466, %7460 ], [ %7453, %7440 ]
  %7470 = fcmp fast une float %7457, 0.000000e+00
  br i1 %7470, label %7471, label %7478, !dx.controlflow.hints !189

; <label>:7471                                    ; preds = %7467
  %7472 = fmul fast float %7457, 0x3FF7154760000000
  %7473 = call float @dx.op.unary.f32(i32 21, float %7472)  ; Exp(value)
  %7474 = fsub fast float 1.000000e+00, %7473
  %7475 = fmul fast float %7454, %7474
  %7476 = fsub fast float -0.000000e+00, %7475
  %7477 = fdiv fast float %7476, %7457
  br label %7478

; <label>:7478                                    ; preds = %7471, %7467
  %7479 = phi float [ %7473, %7471 ], [ 1.000000e+00, %7467 ]
  %7480 = phi float [ %7477, %7471 ], [ %7454, %7467 ]
  %7481 = fcmp fast une float %7458, 0.000000e+00
  br i1 %7481, label %7482, label %7489, !dx.controlflow.hints !189

; <label>:7482                                    ; preds = %7478
  %7483 = fmul fast float %7458, 0x3FF7154760000000
  %7484 = call float @dx.op.unary.f32(i32 21, float %7483)  ; Exp(value)
  %7485 = fsub fast float 1.000000e+00, %7484
  %7486 = fmul fast float %7455, %7485
  %7487 = fsub fast float -0.000000e+00, %7486
  %7488 = fdiv fast float %7487, %7458
  br label %7489

; <label>:7489                                    ; preds = %7482, %7478
  %7490 = phi float [ %7484, %7482 ], [ 1.000000e+00, %7478 ]
  %7491 = phi float [ %7488, %7482 ], [ %7455, %7478 ]
  %7492 = fcmp fast ogt float %7388, %7390
  br i1 %7492, label %7493, label %7513

; <label>:7493                                    ; preds = %7489
  %7494 = fsub fast float 1.000000e+00, %7390
  %7495 = fmul fast float %7406, %7494
  %7496 = fmul fast float %7407, %7494
  %7497 = fmul fast float %7408, %7494
  %7498 = fmul fast float %7409, %7494
  %7499 = fcmp fast une float %7498, 0.000000e+00
  br i1 %7499, label %7500, label %7551, !dx.controlflow.hints !190

; <label>:7500                                    ; preds = %7493
  %7501 = fmul fast float %7498, 0x3FF7154760000000
  %7502 = call float @dx.op.unary.f32(i32 21, float %7501)  ; Exp(value)
  %7503 = fsub fast float 1.000000e+00, %7502
  %7504 = fmul fast float %7495, %7503
  %7505 = fsub fast float -0.000000e+00, %7504
  %7506 = fmul fast float %7496, %7503
  %7507 = fsub fast float -0.000000e+00, %7506
  %7508 = fmul fast float %7497, %7503
  %7509 = fsub fast float -0.000000e+00, %7508
  %7510 = fdiv fast float %7505, %7498
  %7511 = fdiv fast float %7507, %7498
  %7512 = fdiv fast float %7509, %7498
  br label %7551

; <label>:7513                                    ; preds = %7489
  %7514 = fsub fast float 1.000000e+00, %7388
  %7515 = fmul fast float %7419, %7514
  %7516 = fmul fast float %7430, %7514
  %7517 = fmul fast float %7441, %7514
  %7518 = fmul fast float %7420, %7514
  %7519 = fmul fast float %7431, %7514
  %7520 = fmul fast float %7442, %7514
  %7521 = fcmp fast une float %7518, 0.000000e+00
  br i1 %7521, label %7522, label %7529, !dx.controlflow.hints !189

; <label>:7522                                    ; preds = %7513
  %7523 = fmul fast float %7518, 0x3FF7154760000000
  %7524 = call float @dx.op.unary.f32(i32 21, float %7523)  ; Exp(value)
  %7525 = fsub fast float 1.000000e+00, %7524
  %7526 = fmul fast float %7515, %7525
  %7527 = fsub fast float -0.000000e+00, %7526
  %7528 = fdiv fast float %7527, %7518
  br label %7529

; <label>:7529                                    ; preds = %7522, %7513
  %7530 = phi float [ %7528, %7522 ], [ %7515, %7513 ]
  %7531 = phi float [ %7524, %7522 ], [ 1.000000e+00, %7513 ]
  %7532 = fcmp fast une float %7519, 0.000000e+00
  br i1 %7532, label %7533, label %7540, !dx.controlflow.hints !189

; <label>:7533                                    ; preds = %7529
  %7534 = fmul fast float %7519, 0x3FF7154760000000
  %7535 = call float @dx.op.unary.f32(i32 21, float %7534)  ; Exp(value)
  %7536 = fsub fast float 1.000000e+00, %7535
  %7537 = fmul fast float %7516, %7536
  %7538 = fsub fast float -0.000000e+00, %7537
  %7539 = fdiv fast float %7538, %7519
  br label %7540

; <label>:7540                                    ; preds = %7533, %7529
  %7541 = phi float [ %7539, %7533 ], [ %7516, %7529 ]
  %7542 = phi float [ %7535, %7533 ], [ 1.000000e+00, %7529 ]
  %7543 = fcmp fast une float %7520, 0.000000e+00
  br i1 %7543, label %7544, label %7551, !dx.controlflow.hints !189

; <label>:7544                                    ; preds = %7540
  %7545 = fmul fast float %7520, 0x3FF7154760000000
  %7546 = call float @dx.op.unary.f32(i32 21, float %7545)  ; Exp(value)
  %7547 = fsub fast float 1.000000e+00, %7546
  %7548 = fmul fast float %7517, %7547
  %7549 = fsub fast float -0.000000e+00, %7548
  %7550 = fdiv fast float %7549, %7520
  br label %7551

; <label>:7551                                    ; preds = %7544, %7540, %7500, %7493
  %7552 = phi float [ %7550, %7544 ], [ %7512, %7500 ], [ %7497, %7493 ], [ %7517, %7540 ]
  %7553 = phi float [ %7541, %7544 ], [ %7511, %7500 ], [ %7496, %7493 ], [ %7541, %7540 ]
  %7554 = phi float [ %7530, %7544 ], [ %7510, %7500 ], [ %7495, %7493 ], [ %7530, %7540 ]
  %7555 = phi float [ %7546, %7544 ], [ %7502, %7500 ], [ 1.000000e+00, %7493 ], [ 1.000000e+00, %7540 ]
  %7556 = phi float [ %7542, %7544 ], [ %7502, %7500 ], [ 1.000000e+00, %7493 ], [ %7542, %7540 ]
  %7557 = phi float [ %7531, %7544 ], [ %7502, %7500 ], [ 1.000000e+00, %7493 ], [ %7531, %7540 ]
  %7558 = fmul fast float %7557, %7469
  %7559 = fmul fast float %7556, %7480
  %7560 = fmul fast float %7555, %7491
  %7561 = fadd fast float %7558, %7554
  %7562 = fadd fast float %7559, %7553
  %7563 = fadd fast float %7560, %7552
  %7564 = fmul fast float %7557, %7468
  %7565 = fmul fast float %7556, %7479
  %7566 = fmul fast float %7555, %7490
  br label %7567

; <label>:7567                                    ; preds = %7551, %7362
  %7568 = phi float [ %7566, %7551 ], [ %7368, %7362 ]
  %7569 = phi float [ %7565, %7551 ], [ %7367, %7362 ]
  %7570 = phi float [ %7564, %7551 ], [ %7366, %7362 ]
  %7571 = phi float [ %7563, %7551 ], [ %7365, %7362 ]
  %7572 = phi float [ %7562, %7551 ], [ %7364, %7362 ]
  %7573 = phi float [ %7561, %7551 ], [ %7363, %7362 ]
  %7574 = fmul fast float %7573, %6527
  %7575 = fmul fast float %7572, %6527
  %7576 = fmul fast float %7571, %6527
  %7577 = fmul fast float %7570, %6810
  %7578 = call float @dx.op.dot3.f32(i32 55, float %7570, float %7569, float %7568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7579 = call float @dx.op.dot3.f32(i32 55, float %7574, float %7575, float %7576, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7580 = select i1 %270, float %7578, float %7570
  %7581 = select i1 %270, float %7578, float %7569
  %7582 = select i1 %270, float 1.000000e+00, float %7568
  %7583 = select i1 %270, float %7579, float %7574
  %7584 = select i1 %270, float 0.000000e+00, float %7575
  %7585 = select i1 %270, float 0.000000e+00, float %7576
  %7586 = fmul fast float %7580, %6804
  %7587 = fmul fast float %7581, %6805
  %7588 = fmul fast float %7582, %6806
  %7589 = fadd fast float %7586, %7583
  %7590 = fadd fast float %7587, %7584
  %7591 = fadd fast float %7585, %7588
  %7592 = fmul fast float %7580, %6807
  %7593 = fmul fast float %7581, %6808
  %7594 = fmul fast float %7582, %6809
  %7595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7596 = extractvalue %dx.types.CBufRet.i32 %7595, 0
  %7597 = icmp eq i32 %7596, 0
  br i1 %7597, label %7965, label %7598, !dx.controlflow.hints !191

; <label>:7598                                    ; preds = %7567
  %7599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7600 = extractvalue %dx.types.CBufRet.f32 %7599, 2
  %7601 = extractvalue %dx.types.CBufRet.f32 %7599, 3
  %7602 = fmul fast float %7600, %100
  %7603 = fmul fast float %7601, %101
  %7604 = fmul fast float %7602, 2.000000e+00
  %7605 = fmul fast float %7603, 2.000000e+00
  %7606 = fsub fast float 1.000000e+00, %7604
  %7607 = fsub fast float 1.000000e+00, %7605
  %7608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7609 = extractvalue %dx.types.CBufRet.f32 %7608, 0
  %7610 = extractvalue %dx.types.CBufRet.f32 %7608, 1
  %7611 = extractvalue %dx.types.CBufRet.f32 %7608, 2
  %7612 = fmul fast float %7606, %7609
  %7613 = fmul fast float %7606, %7610
  %7614 = fmul fast float %7606, %7611
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 0
  %7617 = extractvalue %dx.types.CBufRet.f32 %7615, 1
  %7618 = extractvalue %dx.types.CBufRet.f32 %7615, 2
  %7619 = fmul fast float %7607, %7616
  %7620 = fmul fast float %7607, %7617
  %7621 = fmul fast float %7607, %7618
  %7622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.f32 %7622, 0
  %7624 = extractvalue %dx.types.CBufRet.f32 %7622, 1
  %7625 = extractvalue %dx.types.CBufRet.f32 %7622, 2
  %7626 = fadd fast float %7619, %7623
  %7627 = fadd fast float %7626, %7612
  %7628 = fadd fast float %7620, %7624
  %7629 = fadd fast float %7628, %7613
  %7630 = fadd fast float %7621, %7625
  %7631 = fadd fast float %7630, %7614
  %7632 = fmul fast float %7627, %6803
  %7633 = fmul fast float %7629, %6803
  %7634 = fmul fast float %7631, %6803
  %7635 = fmul fast float %7632, %7632
  %7636 = fmul fast float %7633, %7633
  %7637 = fadd fast float %7635, %7636
  %7638 = fmul fast float %7634, %7634
  %7639 = fadd fast float %7637, %7638
  %7640 = call float @dx.op.unary.f32(i32 24, float %7639)  ; Sqrt(value)
  %7641 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  %7642 = fsub fast float %7640, %7641
  %7643 = extractvalue %dx.types.CBufRet.f32 %6528, 2
  %7644 = fmul fast float %7642, %7643
  %7645 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7646 = fadd fast float %7645, -5.000000e-01
  %7647 = fmul fast float %7646, 2.000000e+00
  %7648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7649 = extractvalue %dx.types.CBufRet.f32 %7648, 2
  %7650 = call float @dx.op.binary.f32(i32 36, float %7649, float %7647)  ; FMin(a,b)
  %7651 = fsub fast float -0.000000e+00, %7649
  %7652 = fcmp fast ogt float %7650, %7651
  br i1 %7652, label %7653, label %7965, !dx.controlflow.hints !192

; <label>:7653                                    ; preds = %7598
  %7654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7655 = extractvalue %dx.types.CBufRet.f32 %7654, 3
  %7656 = fcmp fast ogt float %7655, 0.000000e+00
  br i1 %7656, label %7657, label %7732, !dx.controlflow.hints !193

; <label>:7657                                    ; preds = %7653
  %7658 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7659 = extractvalue %dx.types.Dimensions %7658, 0
  %7660 = sitofp i32 %7659 to float
  %7661 = extractvalue %dx.types.Dimensions %7658, 1
  %7662 = sitofp i32 %7661 to float
  %7663 = fmul fast float %7602, %7660
  %7664 = fmul fast float %7603, %7662
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 1
  %7667 = fsub fast float -0.000000e+00, %7666
  %7668 = fptoui float %7667 to i32
  %7669 = fptoui float %7663 to i32
  %7670 = fptoui float %7664 to i32
  %7671 = and i32 %7668, 31
  %7672 = lshr i32 %7669, %7671
  %7673 = lshr i32 %7670, %7671
  %7674 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7668, i32 %7672, i32 %7673, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7675 = extractvalue %dx.types.ResRet.f32 %7674, 0
  %7676 = fcmp fast olt float %7675, -1.000000e+00
  %7677 = fcmp fast ogt float %7675, -1.000000e+00
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 1
  %7680 = select i1 %7677, float %7679, float 1.000000e+00
  %7681 = fadd fast float %7675, 1.000000e+00
  %7682 = fmul fast float %7680, %7681
  %7683 = call float @dx.op.unary.f32(i32 6, float %7682)  ; FAbs(value)
  %7684 = extractvalue %dx.types.CBufRet.f32 %7678, 3
  %7685 = fcmp fast oge float %7683, %7684
  %7686 = select i1 %7685, float 0x4197782600000000, float %7683
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.CBufRet.f32 %7687, 1
  %7690 = extractvalue %dx.types.CBufRet.f32 %7687, 2
  %7691 = select i1 %7676, float %7688, float %7609
  %7692 = select i1 %7676, float %7689, float %7610
  %7693 = select i1 %7676, float %7690, float %7611
  %7694 = fmul fast float %7691, %7606
  %7695 = fmul fast float %7692, %7606
  %7696 = fmul fast float %7693, %7606
  %7697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7698 = extractvalue %dx.types.CBufRet.f32 %7697, 0
  %7699 = extractvalue %dx.types.CBufRet.f32 %7697, 1
  %7700 = extractvalue %dx.types.CBufRet.f32 %7697, 2
  %7701 = select i1 %7676, float %7698, float %7616
  %7702 = select i1 %7676, float %7699, float %7617
  %7703 = select i1 %7676, float %7700, float %7618
  %7704 = fmul fast float %7701, %7607
  %7705 = fmul fast float %7702, %7607
  %7706 = fmul fast float %7703, %7607
  %7707 = fadd fast float %7704, %7694
  %7708 = fadd fast float %7705, %7695
  %7709 = fadd fast float %7706, %7696
  %7710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7711 = extractvalue %dx.types.CBufRet.f32 %7710, 0
  %7712 = extractvalue %dx.types.CBufRet.f32 %7710, 1
  %7713 = extractvalue %dx.types.CBufRet.f32 %7710, 2
  %7714 = select i1 %7676, float %7711, float %7623
  %7715 = select i1 %7676, float %7712, float %7624
  %7716 = select i1 %7676, float %7713, float %7625
  %7717 = fadd fast float %7707, %7714
  %7718 = fadd fast float %7708, %7715
  %7719 = fadd fast float %7709, %7716
  %7720 = fmul fast float %7717, %7686
  %7721 = fmul fast float %7718, %7686
  %7722 = fmul fast float %7719, %7686
  %7723 = fmul fast float %7720, %7720
  %7724 = fmul fast float %7721, %7721
  %7725 = fadd fast float %7723, %7724
  %7726 = fmul fast float %7722, %7722
  %7727 = fadd fast float %7725, %7726
  %7728 = call float @dx.op.unary.f32(i32 24, float %7727)  ; Sqrt(value)
  %7729 = fsub fast float %7728, %7641
  %7730 = fmul fast float %7729, %7643
  %7731 = call float @dx.op.unary.f32(i32 7, float %7730)  ; Saturate(value)
  br label %7732

; <label>:7732                                    ; preds = %7657, %7653
  %7733 = phi float [ %7731, %7657 ], [ 1.000000e+00, %7653 ]
  %7734 = fmul fast float %7650, 5.000000e-01
  %7735 = fadd fast float %7734, 5.000000e-01
  %7736 = call float @dx.op.unary.f32(i32 22, float %7735)  ; Frc(value)
  %7737 = call float @dx.op.unary.f32(i32 27, float %7736)  ; Round_ni(value)
  %7738 = call float @dx.op.unary.f32(i32 22, float %7736)  ; Frc(value)
  %7739 = fmul fast float %7738, 2.000000e+00
  %7740 = fadd fast float %7739, -1.000000e+00
  %7741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7602, float %7603, float %7737, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7742 = extractvalue %dx.types.ResRet.f32 %7741, 0
  %7743 = extractvalue %dx.types.ResRet.f32 %7741, 1
  %7744 = extractvalue %dx.types.ResRet.f32 %7741, 2
  %7745 = extractvalue %dx.types.ResRet.f32 %7741, 3
  %7746 = fadd fast float %7742, -5.000000e-01
  %7747 = fadd fast float %7744, -5.000000e-01
  %7748 = fmul fast float %7746, 0xBFD5555560000000
  %7749 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7747, float %7748)  ; FMad(a,b,c)
  %7750 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7743, float 0.000000e+00)  ; FMad(a,b,c)
  %7751 = fadd fast float %7750, %7745
  %7752 = fmul fast float %7746, -7.500000e-01
  %7753 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7747, float %7752)  ; FMad(a,b,c)
  %7754 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7743, float 0.000000e+00)  ; FMad(a,b,c)
  %7755 = fadd fast float %7754, %7745
  %7756 = call float @dx.op.binary.f32(i32 35, float %7749, float -1.000000e+00)  ; FMax(a,b)
  %7757 = call float @dx.op.binary.f32(i32 35, float %7751, float -1.000000e+00)  ; FMax(a,b)
  %7758 = call float @dx.op.binary.f32(i32 35, float %7753, float -1.000000e+00)  ; FMax(a,b)
  %7759 = call float @dx.op.binary.f32(i32 35, float %7755, float -1.000000e+00)  ; FMax(a,b)
  %7760 = call float @dx.op.binary.f32(i32 36, float %7756, float 1.000000e+00)  ; FMin(a,b)
  %7761 = call float @dx.op.binary.f32(i32 36, float %7757, float 1.000000e+00)  ; FMin(a,b)
  %7762 = call float @dx.op.binary.f32(i32 36, float %7758, float 1.000000e+00)  ; FMin(a,b)
  %7763 = call float @dx.op.binary.f32(i32 36, float %7759, float 1.000000e+00)  ; FMin(a,b)
  %7764 = fcmp fast olt float %7760, 0x3FEFFF8020000000
  br i1 %7764, label %7765, label %7880, !dx.controlflow.hints !194

; <label>:7765                                    ; preds = %7732
  %7766 = extractvalue %dx.types.CBufRet.f32 %7648, 3
  %7767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.f32 %7767, 0
  %7769 = extractvalue %dx.types.CBufRet.f32 %7767, 1
  %7770 = extractvalue %dx.types.CBufRet.f32 %7767, 2
  %7771 = extractvalue %dx.types.CBufRet.f32 %7767, 3
  %7772 = fsub fast float %7768, %7760
  %7773 = fsub fast float %7769, %7761
  %7774 = fsub fast float %7770, %7762
  %7775 = fsub fast float %7771, %7763
  %7776 = fmul fast float %7772, %7766
  %7777 = fmul fast float %7773, %7766
  %7778 = fmul fast float %7774, %7766
  %7779 = fmul fast float %7775, %7766
  %7780 = fadd fast float %7776, %7760
  %7781 = fadd fast float %7777, %7761
  %7782 = fsub fast float -0.000000e+00, %7781
  %7783 = fadd fast float %7778, %7762
  %7784 = fadd fast float %7779, %7763
  %7785 = fmul fast float %7780, %7780
  %7786 = fsub fast float %7781, %7785
  %7787 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7786)  ; FMax(a,b)
  %7788 = fdiv fast float 1.000000e+00, %7787
  %7789 = fmul fast float %7781, %7780
  %7790 = fsub fast float %7783, %7789
  %7791 = fsub fast float %7740, %7780
  %7792 = fmul fast float %7740, %7740
  %7793 = fsub fast float %7792, %7781
  %7794 = fmul fast float %7791, %7788
  %7795 = fmul fast float %7794, %7790
  %7796 = fsub fast float %7793, %7795
  %7797 = fmul fast float %7781, %7781
  %7798 = fsub fast float %7784, %7797
  %7799 = fmul fast float %7790, %7790
  %7800 = fmul fast float %7799, %7788
  %7801 = fsub fast float %7798, %7800
  %7802 = fdiv fast float %7796, %7801
  %7803 = fmul fast float %7790, %7802
  %7804 = fsub fast float %7791, %7803
  %7805 = fmul fast float %7804, %7788
  %7806 = fmul fast float %7805, %7780
  %7807 = fsub fast float 1.000000e+00, %7806
  %7808 = fmul fast float %7781, %7802
  %7809 = fsub fast float %7807, %7808
  %7810 = fmul fast float %7805, %7805
  %7811 = fmul fast float %7802, 4.000000e+00
  %7812 = fmul fast float %7811, %7809
  %7813 = fsub fast float %7810, %7812
  %7814 = call float @dx.op.unary.f32(i32 24, float %7813)  ; Sqrt(value)
  %7815 = fcmp fast oge float %7805, 0.000000e+00
  %7816 = fsub fast float -0.000000e+00, %7814
  %7817 = select i1 %7815, float %7816, float %7814
  %7818 = fsub fast float %7817, %7805
  %7819 = fdiv fast float %7818, %7802
  %7820 = fdiv fast float %7809, %7818
  %7821 = fmul fast float %7819, 5.000000e-01
  %7822 = fmul fast float %7820, 2.000000e+00
  %7823 = select i1 %7815, float %7821, float %7822
  %7824 = select i1 %7815, float %7822, float %7821
  %7825 = call float @dx.op.binary.f32(i32 35, float %7823, float %7824)  ; FMax(a,b)
  %7826 = call float @dx.op.binary.f32(i32 36, float %7823, float %7824)  ; FMin(a,b)
  %7827 = fcmp fast ogt float %7740, %7826
  br i1 %7827, label %7828, label %7838

; <label>:7828                                    ; preds = %7765
  %7829 = fsub fast float %7740, %7826
  %7830 = fsub fast float %7825, %7826
  %7831 = fmul fast float %7829, %7830
  %7832 = fmul fast float %7825, %7740
  %7833 = fadd fast float %7825, %7740
  %7834 = fmul fast float %7833, %7780
  %7835 = fadd fast float %7832, %7781
  %7836 = fsub fast float %7835, %7834
  %7837 = fdiv fast float %7836, %7831
  br label %7838

; <label>:7838                                    ; preds = %7828, %7765
  %7839 = phi float [ %7837, %7828 ], [ 0.000000e+00, %7765 ]
  %7840 = fcmp fast ogt float %7740, %7825
  %7841 = fsub fast float %7740, %7825
  br i1 %7840, label %7842, label %7852

; <label>:7842                                    ; preds = %7838
  %7843 = fsub fast float %7825, %7826
  %7844 = fmul fast float %7843, %7841
  %7845 = fmul fast float %7826, %7740
  %7846 = fadd fast float %7826, %7740
  %7847 = fmul fast float %7846, %7780
  %7848 = fsub fast float %7782, %7845
  %7849 = fadd fast float %7848, %7847
  %7850 = fdiv fast float %7849, %7844
  %7851 = fadd fast float %7850, %7839
  br label %7852

; <label>:7852                                    ; preds = %7842, %7838
  %7853 = phi float [ %7851, %7842 ], [ %7839, %7838 ]
  %7854 = fsub fast float %7740, %7826
  %7855 = fmul fast float %7854, %7841
  %7856 = fmul fast float %7826, %7825
  %7857 = fadd fast float %7826, %7825
  %7858 = fmul fast float %7857, %7780
  %7859 = fadd fast float %7856, %7781
  %7860 = fsub fast float %7859, %7858
  %7861 = fdiv fast float %7860, %7855
  %7862 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7863 = fcmp fast oeq float %6529, 0.000000e+00
  %7864 = extractvalue %dx.types.CBufRet.f32 %7648, 0
  %7865 = fcmp fast oeq float %7864, 0.000000e+00
  %7866 = or i1 %7863, %7865
  %7867 = fmul fast float %7864, 2.000000e+00
  %7868 = fadd fast float %7649, %7650
  %7869 = fdiv fast float %7868, %7867
  %7870 = call float @dx.op.unary.f32(i32 7, float %7869)  ; Saturate(value)
  %7871 = fmul fast float %7870, 2.000000e+00
  %7872 = fsub fast float 3.000000e+00, %7871
  %7873 = fmul fast float %7870, %7870
  %7874 = fmul fast float %7873, %7872
  %7875 = select i1 %7866, float 1.000000e+00, float %7874
  %7876 = fmul fast float %7861, %6529
  %7877 = fadd fast float %7862, %7876
  %7878 = call float @dx.op.unary.f32(i32 7, float %7877)  ; Saturate(value)
  %7879 = fmul fast float %7875, %7878
  br label %7880

; <label>:7880                                    ; preds = %7852, %7732
  %7881 = phi float [ %7879, %7852 ], [ 0.000000e+00, %7732 ]
  %7882 = fsub fast float 1.000000e+00, %7881
  %7883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7602, float %7603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7884 = extractvalue %dx.types.ResRet.f32 %7883, 0
  %7885 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7886 = extractvalue %dx.types.CBufRet.i32 %7885, 2
  %7887 = icmp eq i32 %7886, 0
  br i1 %7887, label %7893, label %7888

; <label>:7888                                    ; preds = %7880
  %7889 = call float @dx.op.unary.f32(i32 7, float %7881)  ; Saturate(value)
  %7890 = fadd fast float %7884, -1.000000e+00
  %7891 = fmul fast float %7889, %7890
  %7892 = fadd fast float %7891, 1.000000e+00
  br label %7893

; <label>:7893                                    ; preds = %7888, %7880
  %7894 = phi float [ %7892, %7888 ], [ %7882, %7880 ]
  br i1 %7656, label %7895, label %7913

; <label>:7895                                    ; preds = %7893
  %7896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7897 = extractvalue %dx.types.CBufRet.f32 %7896, 1
  %7898 = fsub fast float %7733, %7897
  %7899 = call float @dx.op.unary.f32(i32 7, float %7898)  ; Saturate(value)
  %7900 = fsub fast float %7733, %7655
  %7901 = call float @dx.op.unary.f32(i32 7, float %7900)  ; Saturate(value)
  %7902 = fsub fast float %7899, %7901
  %7903 = fsub fast float %7735, %7901
  %7904 = fdiv fast float %7903, %7902
  %7905 = call float @dx.op.unary.f32(i32 7, float %7904)  ; Saturate(value)
  %7906 = fmul fast float %7905, 2.000000e+00
  %7907 = fsub fast float 3.000000e+00, %7906
  %7908 = fsub fast float %7884, %7894
  %7909 = fmul fast float %7905, %7905
  %7910 = fmul fast float %7909, %7908
  %7911 = fmul fast float %7910, %7907
  %7912 = fadd fast float %7911, %7894
  br label %7913

; <label>:7913                                    ; preds = %7895, %7893
  %7914 = phi float [ %7912, %7895 ], [ %7894, %7893 ]
  %7915 = call float @dx.op.binary.f32(i32 35, float %7884, float %7914)  ; FMax(a,b)
  %7916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.i32 %7916, 2
  %7918 = and i32 %7917, 1
  %7919 = icmp eq i32 %7918, 0
  %7920 = fcmp fast une float %7915, 1.000000e+00
  %7921 = and i1 %7920, %7919
  br i1 %7921, label %7922, label %7941

; <label>:7922                                    ; preds = %7913
  %7923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7602, float %7603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7924 = extractvalue %dx.types.ResRet.f32 %7923, 0
  %7925 = extractvalue %dx.types.ResRet.f32 %7923, 1
  %7926 = extractvalue %dx.types.ResRet.f32 %7923, 2
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 1
  %7929 = fmul fast float %7928, %7924
  %7930 = fmul fast float %7928, %7925
  %7931 = fmul fast float %7928, %7926
  %7932 = fcmp fast ogt float %7884, 0x3FEFFF2E40000000
  %7933 = fsub fast float 1.000000e+00, %7915
  %7934 = fsub fast float 1.000000e+00, %7884
  %7935 = fdiv fast float %7933, %7934
  %7936 = call float @dx.op.unary.f32(i32 7, float %7935)  ; Saturate(value)
  %7937 = select i1 %7932, float 0.000000e+00, float %7936
  %7938 = fmul fast float %7929, %7937
  %7939 = fmul fast float %7930, %7937
  %7940 = fmul fast float %7931, %7937
  br label %7941

; <label>:7941                                    ; preds = %7922, %7913
  %7942 = phi float [ 0.000000e+00, %7913 ], [ %7938, %7922 ]
  %7943 = phi float [ 0.000000e+00, %7913 ], [ %7939, %7922 ]
  %7944 = phi float [ 0.000000e+00, %7913 ], [ %7940, %7922 ]
  %7945 = fmul fast float %7942, %6527
  %7946 = fmul fast float %7943, %6527
  %7947 = fmul fast float %7944, %6527
  %7948 = fmul fast float %7915, %7577
  %7949 = call float @dx.op.dot3.f32(i32 55, float %7915, float %7915, float %7915, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7950 = call float @dx.op.dot3.f32(i32 55, float %7945, float %7946, float %7947, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7951 = select i1 %270, float %7949, float %7915
  %7952 = select i1 %270, float 1.000000e+00, float %7915
  %7953 = select i1 %270, float %7950, float %7945
  %7954 = select i1 %270, float 0.000000e+00, float %7946
  %7955 = select i1 %270, float 0.000000e+00, float %7947
  %7956 = fmul fast float %7951, %7589
  %7957 = fmul fast float %7951, %7590
  %7958 = fmul fast float %7952, %7591
  %7959 = fadd fast float %7956, %7953
  %7960 = fadd fast float %7957, %7954
  %7961 = fadd fast float %7955, %7958
  %7962 = fmul fast float %7951, %7592
  %7963 = fmul fast float %7951, %7593
  %7964 = fmul fast float %7952, %7594
  br label %7965

; <label>:7965                                    ; preds = %7941, %7598, %7567, %6799
  %7966 = phi float [ %6804, %6799 ], [ %7589, %7567 ], [ %7959, %7941 ], [ %7589, %7598 ]
  %7967 = phi float [ %6805, %6799 ], [ %7590, %7567 ], [ %7960, %7941 ], [ %7590, %7598 ]
  %7968 = phi float [ %6806, %6799 ], [ %7591, %7567 ], [ %7961, %7941 ], [ %7591, %7598 ]
  %7969 = phi float [ %6807, %6799 ], [ %7592, %7567 ], [ %7962, %7941 ], [ %7592, %7598 ]
  %7970 = phi float [ %6808, %6799 ], [ %7593, %7567 ], [ %7963, %7941 ], [ %7593, %7598 ]
  %7971 = phi float [ %6809, %6799 ], [ %7594, %7567 ], [ %7964, %7941 ], [ %7594, %7598 ]
  %7972 = phi float [ %6810, %6799 ], [ %7577, %7567 ], [ %7948, %7941 ], [ %7577, %7598 ]
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 2
  %7975 = extractvalue %dx.types.CBufRet.f32 %7973, 3
  %7976 = fmul fast float %7974, %100
  %7977 = fmul fast float %7975, %101
  %7978 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7979 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7980 = select i1 %6539, i32 2, i32 0
  %7981 = or i32 %7980, 1
  %7982 = uitofp i32 %7981 to float
  %7983 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7978, float %7979, float %7982, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7984 = extractvalue %dx.types.ResRet.f32 %7983, 0
  %7985 = extractvalue %dx.types.ResRet.f32 %7983, 1
  %7986 = extractvalue %dx.types.ResRet.f32 %7983, 2
  %7987 = extractvalue %dx.types.ResRet.f32 %7983, 3
  %7988 = add nuw nsw i32 %7980, 2
  %7989 = uitofp i32 %7988 to float
  %7990 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7978, float %7979, float %7989, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7991 = extractvalue %dx.types.ResRet.f32 %7990, 0
  %7992 = extractvalue %dx.types.ResRet.f32 %7990, 1
  %7993 = extractvalue %dx.types.ResRet.f32 %7990, 2
  %7994 = extractvalue %dx.types.ResRet.f32 %7990, 3
  %7995 = call float @dx.op.binary.f32(i32 35, float %7985, float %7986)  ; FMax(a,b)
  %7996 = call float @dx.op.binary.f32(i32 35, float %7984, float %7995)  ; FMax(a,b)
  %7997 = call float @dx.op.binary.f32(i32 35, float %7996, float %7987)  ; FMax(a,b)
  %7998 = call float @dx.op.binary.f32(i32 36, float %7992, float %7993)  ; FMin(a,b)
  %7999 = call float @dx.op.binary.f32(i32 36, float %7991, float %7998)  ; FMin(a,b)
  %8000 = call float @dx.op.binary.f32(i32 36, float %7999, float %7994)  ; FMin(a,b)
  %8001 = fmul fast float %7997, 2.550000e+02
  %8002 = fadd fast float %8001, 0x3F70101020000000
  %8003 = fptoui float %8002 to i32
  %8004 = fmul fast float %8000, 2.550000e+02
  %8005 = fadd fast float %8004, 0x3F70101020000000
  %8006 = fptoui float %8005 to i32
  %8007 = icmp ult i32 %8003, %8006
  br i1 %8007, label %8008, label %8177

; <label>:8008                                    ; preds = %7965
  %8009 = fcmp fast ogt float %87, 9.843750e-01
  %8010 = fadd fast float %6803, -4.000000e+00
  %8011 = select i1 %8009, float -4.000000e+00, float %8010
  %8012 = call float @dx.op.binary.f32(i32 35, float %8011, float 0.000000e+00)  ; FMax(a,b)
  %8013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8014 = extractvalue %dx.types.CBufRet.f32 %8013, 0
  %8015 = fadd fast float %8014, %8012
  %8016 = extractvalue %dx.types.CBufRet.f32 %8013, 2
  %8017 = fmul fast float %8015, %8016
  %8018 = call float @dx.op.unary.f32(i32 23, float %8017)  ; Log(value)
  %8019 = extractvalue %dx.types.CBufRet.f32 %8013, 3
  %8020 = fmul fast float %8019, %8018
  %8021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8022 = extractvalue %dx.types.CBufRet.f32 %8021, 2
  %8023 = fmul fast float %8020, %8022
  %8024 = call float @dx.op.unary.f32(i32 7, float %8023)  ; Saturate(value)
  %8025 = uitofp i32 %8003 to float
  %8026 = uitofp i32 %8006 to float
  %8027 = fadd fast float %8025, 5.000000e-01
  %8028 = fadd fast float %8026, 5.000000e-01
  %8029 = fmul fast float %8022, %8027
  %8030 = fmul fast float %8022, %8028
  %8031 = fadd fast float %8029, 0x3F0FFB4800000000
  %8032 = fadd fast float %8030, 0xBF0FFB4800000000
  %8033 = call float @dx.op.binary.f32(i32 35, float %8024, float %8031)  ; FMax(a,b)
  %8034 = call float @dx.op.binary.f32(i32 36, float %8033, float %8032)  ; FMin(a,b)
  %8035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8036 = extractvalue %dx.types.CBufRet.f32 %8035, 1
  %8037 = extractvalue %dx.types.CBufRet.f32 %8035, 2
  %8038 = extractvalue %dx.types.CBufRet.f32 %8035, 0
  %8039 = select i1 %6539, float %8038, float 0.000000e+00
  %8040 = fmul fast float %8036, %8034
  %8041 = fadd fast float %8039, %8040
  %8042 = fadd fast float %8039, %8037
  %8043 = fsub fast float %8036, %8037
  %8044 = fadd fast float %8043, %8039
  %8045 = call float @dx.op.binary.f32(i32 35, float %8041, float %8042)  ; FMax(a,b)
  %8046 = call float @dx.op.binary.f32(i32 36, float %8045, float %8044)  ; FMin(a,b)
  %8047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7978, float %7979, float %8046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8048 = extractvalue %dx.types.ResRet.f32 %8047, 0
  %8049 = extractvalue %dx.types.ResRet.f32 %8047, 1
  %8050 = extractvalue %dx.types.ResRet.f32 %8047, 2
  %8051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8052 = extractvalue %dx.types.CBufRet.i32 %8051, 0
  %8053 = extractvalue %dx.types.CBufRet.i32 %8051, 1
  %8054 = uitofp i32 %8052 to float
  %8055 = uitofp i32 %8053 to float
  %8056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8057 = extractvalue %dx.types.CBufRet.f32 %8056, 0
  %8058 = extractvalue %dx.types.CBufRet.f32 %8056, 1
  %8059 = fmul fast float %8054, %7978
  %8060 = fmul fast float %8055, %7979
  %8061 = fadd fast float %8059, -5.000000e-01
  %8062 = fadd fast float %8060, -5.000000e-01
  %8063 = call float @dx.op.unary.f32(i32 22, float %8061)  ; Frc(value)
  %8064 = call float @dx.op.unary.f32(i32 22, float %8062)  ; Frc(value)
  %8065 = fmul fast float %8063, %8063
  %8066 = fmul fast float %8065, %8063
  %8067 = fsub fast float 3.000000e+00, %8063
  %8068 = fmul fast float %8065, %8067
  %8069 = fmul fast float %8063, 3.000000e+00
  %8070 = fmul fast float %8066, 3.000000e+00
  %8071 = fmul fast float %8065, 6.000000e+00
  %8072 = fsub fast float %8070, %8071
  %8073 = fadd fast float %8072, 4.000000e+00
  %8074 = fmul fast float %8073, 0x3FC5555560000000
  %8075 = fmul fast float %8066, -3.000000e+00
  %8076 = fadd fast float %8065, %8063
  %8077 = fmul fast float %8076, 3.000000e+00
  %8078 = fadd fast float %8075, 1.000000e+00
  %8079 = fadd fast float %8078, %8077
  %8080 = fmul fast float %8066, 0x3FC5555560000000
  %8081 = fmul fast float %8064, %8064
  %8082 = fmul fast float %8081, %8064
  %8083 = fsub fast float 3.000000e+00, %8064
  %8084 = fmul fast float %8081, %8083
  %8085 = fmul fast float %8064, 3.000000e+00
  %8086 = fmul fast float %8082, 3.000000e+00
  %8087 = fmul fast float %8081, 6.000000e+00
  %8088 = fsub fast float %8086, %8087
  %8089 = fadd fast float %8088, 4.000000e+00
  %8090 = fmul fast float %8089, 0x3FC5555560000000
  %8091 = fmul fast float %8082, -3.000000e+00
  %8092 = fadd fast float %8081, %8064
  %8093 = fmul fast float %8092, 3.000000e+00
  %8094 = fadd fast float %8091, 1.000000e+00
  %8095 = fadd fast float %8094, %8093
  %8096 = fmul fast float %8082, 0x3FC5555560000000
  %8097 = fadd fast float %8063, 1.000000e+00
  %8098 = fsub fast float 1.000000e+00, %8069
  %8099 = fadd fast float %8098, %8068
  %8100 = fadd fast float %8099, %8073
  %8101 = fmul fast float %8100, 0x3FC5555560000000
  %8102 = fdiv fast float %8074, %8101
  %8103 = fsub fast float %8097, %8102
  %8104 = fsub fast float 1.000000e+00, %8063
  %8105 = fadd fast float %8079, %8066
  %8106 = fmul fast float %8105, 0x3FC5555560000000
  %8107 = fdiv fast float %8080, %8106
  %8108 = fadd fast float %8104, %8107
  %8109 = fadd fast float %8064, 1.000000e+00
  %8110 = fsub fast float 1.000000e+00, %8085
  %8111 = fadd fast float %8110, %8084
  %8112 = fadd fast float %8111, %8089
  %8113 = fmul fast float %8112, 0x3FC5555560000000
  %8114 = fdiv fast float %8090, %8113
  %8115 = fsub fast float %8109, %8114
  %8116 = fsub fast float 1.000000e+00, %8064
  %8117 = fadd fast float %8095, %8082
  %8118 = fmul fast float %8117, 0x3FC5555560000000
  %8119 = fdiv fast float %8096, %8118
  %8120 = fadd fast float %8119, %8116
  %8121 = fmul fast float %8103, %8057
  %8122 = fsub fast float %7978, %8121
  %8123 = fmul fast float %8108, %8057
  %8124 = fadd fast float %8123, %7978
  %8125 = fmul fast float %8120, %8058
  %8126 = fadd fast float %8125, %7979
  %8127 = fmul fast float %8115, %8058
  %8128 = fsub fast float %7979, %8127
  %8129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8122, float %8128, float %8046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8130 = extractvalue %dx.types.ResRet.f32 %8129, 0
  %8131 = extractvalue %dx.types.ResRet.f32 %8129, 1
  %8132 = extractvalue %dx.types.ResRet.f32 %8129, 2
  %8133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8124, float %8128, float %8046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8134 = extractvalue %dx.types.ResRet.f32 %8133, 0
  %8135 = extractvalue %dx.types.ResRet.f32 %8133, 1
  %8136 = extractvalue %dx.types.ResRet.f32 %8133, 2
  %8137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8122, float %8126, float %8046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8138 = extractvalue %dx.types.ResRet.f32 %8137, 0
  %8139 = extractvalue %dx.types.ResRet.f32 %8137, 1
  %8140 = extractvalue %dx.types.ResRet.f32 %8137, 2
  %8141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %8124, float %8126, float %8046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8142 = extractvalue %dx.types.ResRet.f32 %8141, 0
  %8143 = extractvalue %dx.types.ResRet.f32 %8141, 1
  %8144 = extractvalue %dx.types.ResRet.f32 %8141, 2
  %8145 = fsub fast float %8138, %8130
  %8146 = fsub fast float %8139, %8131
  %8147 = fsub fast float %8140, %8132
  %8148 = fmul fast float %8145, %8118
  %8149 = fmul fast float %8146, %8118
  %8150 = fmul fast float %8147, %8118
  %8151 = fadd fast float %8148, %8130
  %8152 = fadd fast float %8149, %8131
  %8153 = fadd fast float %8150, %8132
  %8154 = fsub fast float %8142, %8134
  %8155 = fsub fast float %8143, %8135
  %8156 = fsub fast float %8144, %8136
  %8157 = fmul fast float %8154, %8118
  %8158 = fmul fast float %8155, %8118
  %8159 = fmul fast float %8156, %8118
  %8160 = fsub fast float %8134, %8151
  %8161 = fadd fast float %8160, %8157
  %8162 = fsub fast float %8135, %8152
  %8163 = fadd fast float %8162, %8158
  %8164 = fsub fast float %8136, %8153
  %8165 = fadd fast float %8164, %8159
  %8166 = fmul fast float %8161, %8106
  %8167 = fmul fast float %8163, %8106
  %8168 = fmul fast float %8165, %8106
  %8169 = fadd fast float %8166, %8151
  %8170 = fadd fast float %8167, %8152
  %8171 = fadd fast float %8168, %8153
  %8172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8172, 1
  %8174 = fmul fast float %8169, %8173
  %8175 = fmul fast float %8170, %8173
  %8176 = fmul fast float %8171, %8173
  br label %8177

; <label>:8177                                    ; preds = %8008, %7965
  %8178 = phi float [ %8048, %8008 ], [ 1.000000e+00, %7965 ]
  %8179 = phi float [ %8049, %8008 ], [ 1.000000e+00, %7965 ]
  %8180 = phi float [ %8050, %8008 ], [ 1.000000e+00, %7965 ]
  %8181 = phi float [ %8174, %8008 ], [ 0.000000e+00, %7965 ]
  %8182 = phi float [ %8175, %8008 ], [ 0.000000e+00, %7965 ]
  %8183 = phi float [ %8176, %8008 ], [ 0.000000e+00, %7965 ]
  %8184 = fmul fast float %8181, %6527
  %8185 = fmul fast float %8182, %6527
  %8186 = fmul fast float %8183, %6527
  %8187 = fmul fast float %8178, %7972
  %8188 = call float @dx.op.dot3.f32(i32 55, float %8178, float %8179, float %8180, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8189 = call float @dx.op.dot3.f32(i32 55, float %8184, float %8185, float %8186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8190 = select i1 %270, float %8188, float %8178
  %8191 = select i1 %270, float %8188, float %8179
  %8192 = select i1 %270, float 1.000000e+00, float %8180
  %8193 = select i1 %270, float %8189, float %8184
  %8194 = select i1 %270, float 0.000000e+00, float %8185
  %8195 = select i1 %270, float 0.000000e+00, float %8186
  %8196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8197 = extractvalue %dx.types.CBufRet.i32 %8196, 3
  %8198 = and i32 %8197, 3
  %8199 = icmp ne i32 %8198, 0
  %8200 = and i32 %8197, 4
  %8201 = icmp ne i32 %8200, 0
  %8202 = and i1 %8199, %8201
  %8203 = and i1 %270, %8202
  br i1 %8203, label %8204, label %8210

; <label>:8204                                    ; preds = %8177
  %8205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.f32 %8205, 1
  %8207 = fadd fast float %8187, -1.000000e+00
  %8208 = fmul fast float %8206, %8207
  %8209 = fadd fast float %8208, 1.000000e+00
  br label %8210

; <label>:8210                                    ; preds = %8204, %8177
  %8211 = phi float [ %8209, %8204 ], [ %8187, %8177 ]
  %8212 = fadd fast float %7969, %7966
  %8213 = fmul fast float %8190, %8212
  %8214 = fadd fast float %8213, %8193
  %8215 = fadd fast float %7970, %7967
  %8216 = fmul fast float %8191, %8215
  %8217 = fadd fast float %8216, %8194
  %8218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8219 = extractvalue %dx.types.CBufRet.f32 %8218, 0
  br i1 %270, label %8220, label %8244

; <label>:8220                                    ; preds = %8210
  %8221 = fadd fast float %8214, %8217
  %8222 = fmul fast float %8219, %8221
  %8223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8224 = extractvalue %dx.types.CBufRet.f32 %8223, 3
  %8225 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %8226 = fsub fast float %6520, %6514
  %8227 = fadd fast float %8226, %6521
  %8228 = fsub fast float %8227, %8225
  %8229 = extractvalue %dx.types.CBufRet.f32 %6515, 2
  %8230 = fmul fast float %8228, %8229
  %8231 = call float @dx.op.unary.f32(i32 7, float %8230)  ; Saturate(value)
  %8232 = fsub fast float %8231, %8224
  %8233 = fmul fast float %8232, %8211
  %8234 = fadd fast float %8233, %8224
  %8235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8236 = extractvalue %dx.types.CBufRet.f32 %8235, 0
  %8237 = fsub fast float %8234, %8236
  %8238 = fmul fast float %8237, 1.000000e+01
  %8239 = call float @dx.op.unary.f32(i32 7, float %8238)  ; Saturate(value)
  %8240 = fsub fast float 1.000000e+00, %6527
  %8241 = fmul fast float %8239, %8240
  %8242 = fadd fast float %8241, %6527
  %8243 = fmul fast float %8242, %8234
  br label %8268

; <label>:8244                                    ; preds = %8210
  %8245 = fadd fast float %7971, %7968
  %8246 = fmul fast float %8192, %8245
  %8247 = fadd fast float %8246, %8195
  %8248 = fmul fast float %8219, %8214
  %8249 = fmul fast float %8219, %8217
  %8250 = fmul fast float %8219, %8247
  %8251 = call float @dx.op.binary.f32(i32 35, float %8249, float %8250)  ; FMax(a,b)
  %8252 = call float @dx.op.binary.f32(i32 35, float %8248, float %8251)  ; FMax(a,b)
  %8253 = call float @dx.op.binary.f32(i32 35, float %8252, float %6527)  ; FMax(a,b)
  %8254 = fcmp fast ugt float %8253, 0x3F10000000000000
  br i1 %8254, label %8256, label %8255

; <label>:8255                                    ; preds = %8244
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8256

; <label>:8256                                    ; preds = %8255, %8244
  %8257 = add i32 %71, 132
  %8258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %8257, i32 undef)  ; BufferLoad(srv,index,wot)
  %8259 = extractvalue %dx.types.ResRet.i32 %8258, 0
  %8260 = and i32 %8259, 32
  %8261 = icmp eq i32 %8260, 0
  br i1 %8261, label %8268, label %8262

; <label>:8262                                    ; preds = %8256
  %8263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8264 = extractvalue %dx.types.CBufRet.f32 %8263, 0
  %8265 = fmul fast float %8264, 0x3FE99999A0000000
  %8266 = fadd fast float %8264, %8248
  %8267 = fadd fast float %8265, %8250
  br label %8268

; <label>:8268                                    ; preds = %8262, %8256, %8220
  %8269 = phi float [ %8222, %8220 ], [ %8266, %8262 ], [ %8248, %8256 ]
  %8270 = phi float [ %8243, %8220 ], [ %8249, %8262 ], [ %8249, %8256 ]
  %8271 = phi float [ %8242, %8220 ], [ %8267, %8262 ], [ %8250, %8256 ]
  %8272 = phi float [ %8242, %8220 ], [ %6527, %8262 ], [ %6527, %8256 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8273 = call float @dx.op.binary.f32(i32 36, float %8269, float 3.225500e+04)  ; FMin(a,b)
  %8274 = call float @dx.op.binary.f32(i32 36, float %8270, float 3.225500e+04)  ; FMin(a,b)
  %8275 = call float @dx.op.binary.f32(i32 36, float %8271, float 3.225500e+04)  ; FMin(a,b)
  %8276 = call float @dx.op.binary.f32(i32 36, float %8272, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8273)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8274)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8275)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8276)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

