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
; shader hash: fe465e8c579012fee273b3c1830952b4
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
;   [144 x i8] (type annotation not present)
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
;                                   texture     f32          2d     T29             t1     1
;                                   texture     f32          2d     T30     t58,space2     1
;                                   texture     f32          2d     T31     t59,space2     1
;                                   texture     f32          2d     T32     t60,space2     1
;                                   texture    byte         r/o     T33     t45,space1     1
;                                   texture    byte         r/o     T34     t46,space1     1
;                                   texture    byte         r/o     T35     t47,space1     1
;                                   texture    byte         r/o     T36     t48,space1     1
;                                   texture     f32          2d     T37     t57,space2     1
;                                   texture    byte         r/o     T38     t69,space1     1
;                                   texture     u32          2d     T39     t56,space2     1
;                                   texture     f32     2darray     T40     t35,space2     1
;                                   texture     f32          2d     T41     t34,space2     1
;                                   texture     f32          3d     T42     t31,space2     1
;                                   texture    byte         r/o     T43     t10,space1     1
;                                   texture    byte         r/o     T44      t1,space1     1
;                                   texture     f32          1d     T45     t32,space2     1
;                                   texture     f32     2darray     T46      t8,space2     1
;                                   texture     f32          2d     T47      t2,space2     1
;                                   texture     f32          2d     T48      t3,space2     1
;                                   texture     f32          2d     T49      t4,space2     1
;                                   textureunorm_f32     2darray     T50     t80,space2     1
;                                   texture    byte         r/o     T51     t67,space1     1
;                                   texture     f32          2d     T52      t7,space2     1
;                                   texture     f32          2d     T53      t6,space2     1
;                                   texture     f32          2d     T54      t5,space2     1
;                                   texture     f32          2d     T55     t38,space2     1
;                                   texture    byte         r/o     T56     t12,space1     1
;                                   texture    byte         r/o     T57     t13,space1     1
;                                   texture     f32          1d     T58     t30,space2     1
;                                   texture     f32          3d     T59     t44,space2     1
;                                   texture     f32          3d     T60     t45,space2     1
;                                   texture     f32     2darray     T61     t47,space2     1
;                                   textureunorm_f32     2darray     T62     t85,space2     1
;                                   texture     f32          2d     T63     t83,space2     1
;                                   texture     f32          2d     T64     t86,space2     1
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 64, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 63, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 62, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 61, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 60, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 59, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 58, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %70 = alloca [4 x i32], align 4
  %71 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = fmul fast float %100, %86
  %102 = fmul fast float %100, %87
  %103 = fmul fast float %78, %75
  %104 = fmul fast float %79, %74
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %79, %73
  %107 = fmul fast float %77, %75
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %77, %74
  %110 = fmul fast float %78, %73
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %105, %76
  %113 = fmul fast float %108, %76
  %114 = fmul fast float %111, %76
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %118 = fmul fast float %116, 2.000000e+00
  %119 = fmul fast float %118, %101
  %120 = fmul fast float %117, 2.000000e+00
  %121 = fmul fast float %120, %102
  %122 = fsub fast float 1.000000e+00, %119
  %123 = fsub fast float 1.000000e+00, %121
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fmul fast float %122, %125
  %129 = fmul fast float %122, %126
  %130 = fmul fast float %122, %127
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fmul fast float %123, %132
  %136 = fmul fast float %123, %133
  %137 = fmul fast float %123, %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fadd fast float %135, %139
  %143 = fadd fast float %142, %128
  %144 = fadd fast float %136, %140
  %145 = fadd fast float %144, %129
  %146 = fadd fast float %137, %141
  %147 = fadd fast float %146, %130
  %148 = fmul fast float %143, %89
  %149 = fmul fast float %145, %89
  %150 = fmul fast float %147, %89
  %151 = fadd fast float %82, 5.000000e-01
  %152 = fptoui float %151 to i32
  %153 = shl i32 %152, 3
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = or i32 %153, 4
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = and i32 %155, 8191
  %160 = lshr i32 %155, 13
  %161 = and i32 %160, 8191
  %162 = lshr i32 %155, 26
  %163 = and i32 %158, 65535
  %164 = lshr i32 %158, 16
  %165 = uitofp i32 %163 to float
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %168 = uitofp i32 %164 to float
  %169 = uitofp i32 %159 to float
  %170 = fmul fast float %167, %169
  %171 = uitofp i32 %161 to float
  %172 = fmul fast float %167, %171
  %173 = fmul fast float %167, %80
  %174 = fmul fast float %173, %165
  %175 = fmul fast float %167, %81
  %176 = fmul fast float %175, %168
  %177 = fadd fast float %174, %170
  %178 = fadd fast float %172, %176
  %179 = uitofp i32 %162 to float
  %180 = fmul fast float %101, 5.000000e-01
  %181 = fmul fast float %102, 5.000000e-01
  %182 = fptosi float %180 to i32
  %183 = fptosi float %181 to i32
  %184 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %182, i32 %183, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = lshr i32 %185, 18
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %187, 0x3F4C00EBA0000000
  %189 = call float @dx.op.unary.f32(i32 21, float %188)  ; Exp(value)
  %190 = fadd fast float %189, -1.000000e+00
  %191 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %192 = extractvalue %dx.types.Dimensions %191, 0
  %193 = sitofp i32 %192 to float
  %194 = extractvalue %dx.types.Dimensions %191, 1
  %195 = sitofp i32 %194 to float
  %196 = fcmp fast oge float %180, %193
  %197 = fcmp fast oge float %181, %195
  %198 = or i1 %196, %197
  %199 = select i1 %198, float 0x4197782600000000, float %190
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %203 = fmul fast float %201, %101
  %204 = fmul fast float %202, %102
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = and i32 %206, 114688
  %208 = icmp ne i32 %207, 0
  %209 = select i1 %208, float %203, float 0.000000e+00
  %210 = select i1 %208, float %204, float 0.000000e+00
  %211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %66, float %209, float %210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = fmul fast float %212, 2.550000e+02
  %214 = fptoui float %213 to i32
  %215 = select i1 %208, i32 %214, i32 0
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.i32 %217, 3
  %219 = and i32 %218, 3
  %220 = icmp ne i32 %219, 0
  %221 = and i32 %218, 4
  %222 = icmp ne i32 %221, 0
  %223 = and i1 %220, %222
  br i1 %223, label %224, label %235

; <label>:224                                     ; preds = %0
  %225 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %226 = fmul fast float %225, %102
  %227 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %228 = fmul fast float %227, %101
  %229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %65, float %228, float %226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = fsub fast float 1.000000e+00, %230
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = fcmp fast olt float %231, %233
  br label %238

; <label>:235                                     ; preds = %0
  %236 = icmp eq i32 %221, 0
  %237 = and i1 %220, %236
  br label %238

; <label>:238                                     ; preds = %235, %224
  %239 = phi i1 [ %234, %224 ], [ %237, %235 ]
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %242 = fmul fast float %241, 0x3FE3C6EF40000000
  %243 = frem fast float %101, 2.560000e+02
  %244 = frem fast float %102, 2.560000e+02
  %245 = fptoui float %243 to i32
  %246 = fptoui float %244 to i32
  %247 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %245, i32 %246, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = fadd fast float %248, %242
  %250 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %251 = add i32 %72, 60
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = shl i32 %253, 4
  %255 = and i32 %254, 32752
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %253, 7
  %258 = and i32 %257, 32752
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %253, 22
  %261 = shl nuw nsw i32 %260, 5
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = add i32 %72, 72
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = lshr i32 %265, 8
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = lshr i32 %265, 16
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = add i32 %72, 36
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 65535
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %279, 16
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %72, 96
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %286, 16
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = fmul fast float %288, 0x3F50624DE0000000
  %292 = fmul fast float %290, 0x3F50624DE0000000
  %293 = add i32 %72, 124
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 2
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %307, label %298

; <label>:298                                     ; preds = %238
  %299 = add i32 %72, 164
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = add i32 %301, 0
  %303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %303, %dx.types.Handle %98, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 3
  %306 = fmul fast float %305, %85
  br label %307

; <label>:307                                     ; preds = %298, %238
  %308 = phi float [ %85, %238 ], [ %306, %298 ]
  %309 = add i32 %72, 24
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = add i32 %72, 28
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = or i32 %314, %311
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %958, label %317

; <label>:317                                     ; preds = %307
  %318 = add i32 %72, 92
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = lshr i32 %320, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = fmul fast float %322, 0x3F50624DE0000000
  %324 = add i32 %72, 40
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = lshr i32 %326, 16
  %328 = and i32 %327, 255
  %329 = lshr i32 %326, 24
  %330 = add i32 %72, 100
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %72, 32
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = lshr i32 %339, 22
  %341 = shl nuw nsw i32 %340, 5
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = shl i32 %339, 4
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %339, 7
  %347 = and i32 %346, 32752
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 3
  %351 = fmul fast float %350, 1.000000e+03
  %352 = fmul fast float %291, %351
  %353 = call float @dx.op.unary.f32(i32 22, float %352)  ; Frc(value)
  %354 = fadd fast float %353, %281
  %355 = fmul fast float %292, %351
  %356 = call float @dx.op.unary.f32(i32 22, float %355)  ; Frc(value)
  %357 = fadd fast float %356, %283
  %358 = fmul fast float %323, %351
  %359 = call float @dx.op.unary.f32(i32 22, float %358)  ; Frc(value)
  %360 = fmul fast float %359, 0x401921FB60000000
  %361 = fadd fast float %360, %342
  %362 = call float @dx.op.unary.f32(i32 13, float %361)  ; Sin(value)
  %363 = call float @dx.op.unary.f32(i32 12, float %361)  ; Cos(value)
  %364 = fsub fast float -0.000000e+00, %362
  %365 = fadd fast float %83, -5.000000e-01
  %366 = fadd fast float %84, -5.000000e-01
  %367 = fmul fast float %334, %365
  %368 = fmul fast float %336, %366
  %369 = fadd fast float %367, 5.000000e-01
  %370 = fadd fast float %368, 5.000000e-01
  %371 = fmul fast float %345, %369
  %372 = fmul fast float %348, %370
  %373 = fmul fast float %363, %371
  %374 = call float @dx.op.tertiary.f32(i32 46, float %364, float %372, float %373)  ; FMad(a,b,c)
  %375 = fmul fast float %362, %371
  %376 = call float @dx.op.tertiary.f32(i32 46, float %363, float %372, float %375)  ; FMad(a,b,c)
  %377 = fadd fast float %354, %374
  %378 = fadd fast float %357, %376
  %379 = icmp ugt i32 %328, 1
  %380 = icmp ugt i32 %326, 33554431
  %381 = or i1 %380, %379
  br i1 %381, label %382, label %407

; <label>:382                                     ; preds = %317
  %383 = add i32 %72, 84
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = lshr i32 %385, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = fmul fast float %350, %387
  %389 = call float @dx.op.unary.f32(i32 22, float %388)  ; Frc(value)
  %390 = mul nuw nsw i32 %328, %329
  %391 = uitofp i32 %390 to float
  %392 = fmul fast float %389, %391
  %393 = call float @dx.op.unary.f32(i32 27, float %392)  ; Round_ni(value)
  %394 = fptoui float %393 to i32
  %395 = urem i32 %394, %328
  %396 = udiv i32 %394, %329
  %397 = call float @dx.op.unary.f32(i32 22, float %377)  ; Frc(value)
  %398 = call float @dx.op.unary.f32(i32 22, float %378)  ; Frc(value)
  %399 = uitofp i32 %395 to float
  %400 = uitofp i32 %396 to float
  %401 = fadd fast float %397, %399
  %402 = fadd fast float %398, %400
  %403 = uitofp i32 %328 to float
  %404 = uitofp i32 %329 to float
  %405 = fdiv fast float %401, %403
  %406 = fdiv fast float %402, %404
  br label %407

; <label>:407                                     ; preds = %382, %317
  %408 = phi float [ %405, %382 ], [ %377, %317 ]
  %409 = phi float [ %406, %382 ], [ %378, %317 ]
  %410 = and i32 %311, 16777216
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %521, label %412

; <label>:412                                     ; preds = %407
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %416 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %417 = fadd fast float %414, %148
  %418 = fadd fast float %415, %149
  %419 = fadd fast float %416, %150
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 0
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = icmp eq i32 %71, 65535
  br i1 %423, label %518, label %424

; <label>:424                                     ; preds = %412
  %425 = lshr i32 %71, 1
  %426 = shl i32 %425, 2
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %71, 1
  %430 = icmp ne i32 %429, 0
  %431 = lshr i32 %428, 16
  %432 = and i32 %428, 65535
  %433 = select i1 %430, i32 %431, i32 %432
  %434 = icmp eq i32 %433, 65535
  br i1 %434, label %514, label %435

; <label>:435                                     ; preds = %424
  %436 = mul nuw nsw i32 %433, 40
  %437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = add nuw nsw i32 %436, 12
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = extractvalue %dx.types.ResRet.f32 %442, 2
  %446 = add nuw nsw i32 %436, 24
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = add nuw nsw i32 %436, 36
  %452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = fsub fast float %417, %438
  %455 = fsub fast float %418, %439
  %456 = fsub fast float %419, %440
  %457 = fmul fast float %453, %454
  %458 = fmul fast float %453, %455
  %459 = fmul fast float %453, %456
  %460 = call float @dx.op.unary.f32(i32 27, float %457)  ; Round_ni(value)
  %461 = call float @dx.op.unary.f32(i32 27, float %458)  ; Round_ni(value)
  %462 = call float @dx.op.unary.f32(i32 27, float %459)  ; Round_ni(value)
  %463 = fadd fast float %460, 5.000000e-01
  %464 = fadd fast float %461, 5.000000e-01
  %465 = fadd fast float %462, 5.000000e-01
  %466 = fmul fast float %463, %443
  %467 = fmul fast float %464, %444
  %468 = fmul fast float %465, %445
  %469 = shl i32 %71, 2
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = add i32 %471, 0
  %473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %474 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %475 = call float @dx.op.unary.f32(i32 22, float %467)  ; Frc(value)
  %476 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %473, %dx.types.Handle %66, float %474, float %475, float %476, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = fmul fast float %478, 1.023000e+03
  %482 = fmul fast float %479, 1.023000e+03
  %483 = fmul fast float %480, 1.023000e+03
  %484 = fadd fast float %481, 5.000000e-01
  %485 = fadd fast float %482, 5.000000e-01
  %486 = fadd fast float %483, 5.000000e-01
  %487 = call float @dx.op.unary.f32(i32 27, float %484)  ; Round_ni(value)
  %488 = call float @dx.op.unary.f32(i32 27, float %485)  ; Round_ni(value)
  %489 = call float @dx.op.unary.f32(i32 27, float %486)  ; Round_ni(value)
  %490 = fsub fast float %457, %460
  %491 = fsub fast float %458, %461
  %492 = fsub fast float %459, %462
  %493 = fmul fast float %490, 7.500000e-01
  %494 = fmul fast float %491, 7.500000e-01
  %495 = fmul fast float %492, 7.500000e-01
  %496 = fadd fast float %460, 1.250000e-01
  %497 = fadd fast float %496, %493
  %498 = fadd fast float %497, %487
  %499 = fadd fast float %461, 1.250000e-01
  %500 = fadd fast float %499, %494
  %501 = fadd fast float %500, %488
  %502 = fadd fast float %462, 1.250000e-01
  %503 = fadd fast float %502, %495
  %504 = fadd fast float %503, %489
  %505 = fmul fast float %498, %448
  %506 = fmul fast float %501, %449
  %507 = fmul fast float %504, %450
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = add i32 %509, 0
  %511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %510, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %511, %dx.types.Handle %64, float %505, float %506, float %507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  br label %514

; <label>:514                                     ; preds = %435, %424
  %515 = phi float [ %513, %435 ], [ -1.000000e+00, %424 ]
  %516 = fadd fast float %515, %422
  %517 = call float @dx.op.unary.f32(i32 7, float %516)  ; Saturate(value)
  br label %518

; <label>:518                                     ; preds = %514, %412
  %519 = phi float [ %517, %514 ], [ %422, %412 ]
  %520 = fmul fast float %519, %308
  br label %521

; <label>:521                                     ; preds = %518, %407
  %522 = phi float [ %520, %518 ], [ %308, %407 ]
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 256
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %573, label %527

; <label>:527                                     ; preds = %521
  %528 = add i32 %72, 152
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = add i32 %530, 0
  %532 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %531, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %533 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %532, %dx.types.Handle %98, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = add i32 %72, 52
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = shl i32 %537, 4
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = lshr i32 %537, 7
  %542 = and i32 %541, 32752
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = fsub fast float 1.000000e+00, %522
  %545 = call float @dx.op.binary.f32(i32 35, float %544, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %546 = bitcast float %522 to i32
  %547 = sitofp i32 %546 to float
  %548 = fadd fast float %547, 0xC1CFBF8940000000
  %549 = fmul fast float %543, %548
  %550 = fadd fast float %549, 0x41CFBF8940000000
  %551 = fptosi float %550 to i32
  %552 = bitcast i32 %551 to float
  %553 = bitcast float %545 to i32
  %554 = sitofp i32 %553 to float
  %555 = fadd fast float %554, 0xC1CFBF8940000000
  %556 = fmul fast float %555, %543
  %557 = fadd fast float %556, 0x41CFBF8940000000
  %558 = fptosi float %557 to i32
  %559 = bitcast i32 %558 to float
  %560 = fmul fast float %552, %540
  %561 = fmul fast float %559, %540
  %562 = fsub fast float %545, %560
  %563 = fadd fast float %561, %545
  %564 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %565 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %566 = fsub fast float %534, %564
  %567 = fsub fast float %565, %564
  %568 = bitcast float %567 to i32
  %569 = sub nsw i32 2129859010, %568
  %570 = bitcast i32 %569 to float
  %571 = fmul fast float %570, %566
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  br label %573

; <label>:573                                     ; preds = %527, %521
  %574 = phi float [ %572, %527 ], [ %522, %521 ]
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 128
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %595, label %579

; <label>:579                                     ; preds = %573
  %580 = add i32 %72, 148
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = add i32 %582, 0
  %584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %584, %dx.types.Handle %98, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 524288
  %590 = icmp ne i32 %589, 0
  %591 = fcmp fast ogt float %586, 0x3FE0101020000000
  %592 = select i1 %591, float 1.000000e+00, float 0.000000e+00
  %593 = select i1 %590, float %592, float %586
  %594 = fmul fast float %593, %574
  br label %595

; <label>:595                                     ; preds = %579, %573
  %596 = phi float [ %594, %579 ], [ %574, %573 ]
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 16
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %799, label %601

; <label>:601                                     ; preds = %595
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = add i32 %72, 136
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = add i32 %606, 0
  %608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %608, %dx.types.Handle %97, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = extractvalue %dx.types.ResRet.f32 %609, 3
  %614 = and i32 %603, 255
  %615 = uitofp i32 %614 to float
  %616 = lshr i32 %603, 8
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %613, %615
  %620 = fadd fast float %619, %618
  %621 = fmul fast float %620, 0x3F70101000000000
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 512
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %634, label %626

; <label>:626                                     ; preds = %601
  %627 = add i32 %72, 156
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = add i32 %629, 0
  %631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %98, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  br label %634

; <label>:634                                     ; preds = %626, %601
  %635 = phi float [ %633, %626 ], [ 1.000000e+00, %601 ]
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 33554432
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %746, label %640

; <label>:640                                     ; preds = %634
  %641 = add i32 %72, 80
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 65535
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = lshr i32 %643, 16
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = add i32 %72, 84
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 65535
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = lshr i32 %654, 24
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = and i32 %654, 255
  %659 = uitofp i32 %658 to float
  %660 = fmul fast float %659, 0x3F70101020000000
  %661 = lshr i32 %654, 8
  %662 = and i32 %661, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = lshr i32 %654, 16
  %666 = and i32 %665, 255
  %667 = uitofp i32 %666 to float
  %668 = fmul fast float %667, 0x3F70101020000000
  %669 = add i32 %72, 76
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = lshr i32 %671, 24
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F70101020000000
  %675 = and i32 %671, 255
  %676 = uitofp i32 %675 to float
  %677 = fmul fast float %676, 0x3F70101020000000
  %678 = lshr i32 %671, 8
  %679 = and i32 %678, 255
  %680 = uitofp i32 %679 to float
  %681 = fmul fast float %680, 0x3F70101020000000
  %682 = lshr i32 %671, 16
  %683 = and i32 %682, 255
  %684 = uitofp i32 %683 to float
  %685 = fmul fast float %684, 0x3F70101020000000
  %686 = bitcast float %610 to i32
  %687 = ashr i32 %686, 1
  %688 = sub nsw i32 1597463174, %687
  %689 = bitcast i32 %688 to float
  %690 = fmul fast float %610, 5.000000e-01
  %691 = fmul fast float %689, %689
  %692 = fmul fast float %691, %690
  %693 = fsub fast float 1.500000e+00, %692
  %694 = fmul fast float %689, %610
  %695 = fmul fast float %694, %693
  %696 = bitcast float %611 to i32
  %697 = ashr i32 %696, 1
  %698 = sub nsw i32 1597463174, %697
  %699 = bitcast i32 %698 to float
  %700 = fmul fast float %611, 5.000000e-01
  %701 = fmul fast float %699, %699
  %702 = fmul fast float %701, %700
  %703 = fsub fast float 1.500000e+00, %702
  %704 = fmul fast float %699, %611
  %705 = fmul fast float %704, %703
  %706 = bitcast float %612 to i32
  %707 = ashr i32 %706, 1
  %708 = sub nsw i32 1597463174, %707
  %709 = bitcast i32 %708 to float
  %710 = fmul fast float %612, 5.000000e-01
  %711 = fmul fast float %709, %709
  %712 = fmul fast float %711, %710
  %713 = fsub fast float 1.500000e+00, %712
  %714 = fmul fast float %709, %612
  %715 = fmul fast float %714, %713
  %716 = fsub fast float %695, %677
  %717 = fsub fast float %705, %681
  %718 = fsub fast float %715, %685
  %719 = fmul fast float %716, %645
  %720 = fmul fast float %717, %647
  %721 = fmul fast float %718, %652
  %722 = fadd fast float %719, %660
  %723 = fadd fast float %720, %664
  %724 = fadd fast float %721, %668
  %725 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %726 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %728 = fmul fast float %725, %725
  %729 = fmul fast float %726, %726
  %730 = fmul fast float %727, %727
  %731 = fsub fast float %728, %610
  %732 = fsub fast float %729, %611
  %733 = fsub fast float %730, %612
  %734 = fmul fast float %731, %635
  %735 = fmul fast float %732, %635
  %736 = fmul fast float %733, %635
  %737 = fadd fast float %734, %610
  %738 = fadd fast float %735, %611
  %739 = fadd fast float %736, %612
  %740 = fadd fast float %657, %621
  %741 = fsub fast float %740, %674
  %742 = call float @dx.op.unary.f32(i32 7, float %741)  ; Saturate(value)
  %743 = fsub fast float %742, %621
  %744 = fmul fast float %743, %635
  %745 = fadd fast float %744, %621
  br label %799

; <label>:746                                     ; preds = %634
  %747 = and i32 %637, 134217728
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %783, label %749

; <label>:749                                     ; preds = %746
  %750 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %751 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %752 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %753 = fadd fast float %750, -5.000000e-01
  %754 = fadd fast float %751, -5.000000e-01
  %755 = fadd fast float %752, -5.000000e-01
  %756 = fmul fast float %753, %635
  %757 = fmul fast float %754, %635
  %758 = fmul fast float %755, %635
  %759 = fadd fast float %756, 5.000000e-01
  %760 = fadd fast float %757, 5.000000e-01
  %761 = fadd fast float %758, 5.000000e-01
  %762 = call float @dx.op.unary.f32(i32 24, float %610)  ; Sqrt(value)
  %763 = call float @dx.op.unary.f32(i32 24, float %611)  ; Sqrt(value)
  %764 = call float @dx.op.unary.f32(i32 24, float %612)  ; Sqrt(value)
  %765 = fmul fast float %759, 2.000000e+00
  %766 = fsub fast float 1.000000e+00, %765
  %767 = fmul fast float %766, %762
  %768 = fadd fast float %767, %765
  %769 = fmul fast float %768, %762
  %770 = fmul fast float %760, 2.000000e+00
  %771 = fsub fast float 1.000000e+00, %770
  %772 = fmul fast float %771, %763
  %773 = fadd fast float %772, %770
  %774 = fmul fast float %773, %763
  %775 = fmul fast float %761, 2.000000e+00
  %776 = fsub fast float 1.000000e+00, %775
  %777 = fmul fast float %776, %764
  %778 = fadd fast float %777, %775
  %779 = fmul fast float %778, %764
  %780 = fmul fast float %769, %769
  %781 = fmul fast float %774, %774
  %782 = fmul fast float %779, %779
  br label %799

; <label>:783                                     ; preds = %746
  %784 = fmul fast float %268, %268
  %785 = fmul fast float %272, %272
  %786 = fmul fast float %276, %276
  %787 = fadd fast float %784, -1.000000e+00
  %788 = fadd fast float %785, -1.000000e+00
  %789 = fadd fast float %786, -1.000000e+00
  %790 = fmul fast float %635, %787
  %791 = fmul fast float %635, %788
  %792 = fmul fast float %635, %789
  %793 = fadd fast float %790, 1.000000e+00
  %794 = fadd fast float %791, 1.000000e+00
  %795 = fadd fast float %792, 1.000000e+00
  %796 = fmul fast float %793, %610
  %797 = fmul fast float %794, %611
  %798 = fmul fast float %795, %612
  br label %799

; <label>:799                                     ; preds = %783, %749, %640, %595
  %800 = phi float [ %745, %640 ], [ %621, %749 ], [ %621, %783 ], [ 0x3FA23C0BE0000000, %595 ]
  %801 = phi float [ %737, %640 ], [ %780, %749 ], [ %796, %783 ], [ 1.000000e+00, %595 ]
  %802 = phi float [ %738, %640 ], [ %781, %749 ], [ %797, %783 ], [ 1.000000e+00, %595 ]
  %803 = phi float [ %739, %640 ], [ %782, %749 ], [ %798, %783 ], [ 1.000000e+00, %595 ]
  %804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.i32 %804, 1
  %806 = and i32 %805, 1
  %807 = icmp ne i32 %806, 0
  %808 = add i32 %72, 132
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 32
  %812 = icmp ne i32 %811, 0
  %813 = and i1 %807, %812
  %814 = select i1 %813, float 1.000000e+00, float %801
  %815 = select i1 %813, float 0x3FD3333340000000, float %802
  %816 = select i1 %813, float 0x3FD3333340000000, float %803
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 32
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %893, label %821

; <label>:821                                     ; preds = %799
  %822 = add i32 %72, 44
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = add i32 %72, 140
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = add i32 %827, 0
  %829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %830 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %829, %dx.types.Handle %97, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = extractvalue %dx.types.ResRet.f32 %830, 3
  %835 = and i32 %824, 255
  %836 = uitofp i32 %835 to float
  %837 = lshr i32 %824, 8
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = lshr i32 %824, 16
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101000000000
  %844 = fmul fast float %831, %836
  %845 = fadd fast float %844, %839
  %846 = fmul fast float %845, 0x3F70101000000000
  %847 = fadd fast float %832, -5.000000e-01
  %848 = fadd fast float %834, -5.000000e-01
  %849 = fmul fast float %847, %843
  %850 = fmul fast float %848, %843
  %851 = fadd fast float %849, 5.000000e-01
  %852 = fadd fast float %850, 5.000000e-01
  %853 = fmul fast float %851, 2.000000e+00
  %854 = fadd fast float %853, -1.000000e+00
  %855 = fmul fast float %852, 2.000000e+00
  %856 = fadd fast float %855, -1.000000e+00
  %857 = fadd fast float %854, %856
  %858 = fmul fast float %857, 5.000000e-01
  %859 = fsub fast float %854, %856
  %860 = fmul fast float %859, 5.000000e-01
  %861 = call float @dx.op.unary.f32(i32 6, float %858)  ; FAbs(value)
  %862 = fsub fast float 1.000000e+00, %861
  %863 = call float @dx.op.unary.f32(i32 6, float %860)  ; FAbs(value)
  %864 = fsub fast float %862, %863
  %865 = call float @dx.op.dot3.f32(i32 55, float %858, float %860, float %864, float %858, float %860, float %864)  ; Dot3(ax,ay,az,bx,by,bz)
  %866 = call float @dx.op.unary.f32(i32 25, float %865)  ; Rsqrt(value)
  %867 = fmul fast float %858, %866
  %868 = fmul fast float %860, %866
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 67108864
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %889, label %873

; <label>:873                                     ; preds = %821
  %874 = add i32 %72, 88
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = and i32 %876, 65535
  %878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %877)  ; LegacyF16ToF32(value)
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 65535
  %882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %881)  ; LegacyF16ToF32(value)
  %883 = lshr i32 %876, 16
  %884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %883)  ; LegacyF16ToF32(value)
  %885 = fsub fast float %846, %884
  %886 = fmul fast float %885, %878
  %887 = fadd fast float %886, %882
  %888 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  br label %889

; <label>:889                                     ; preds = %873, %821
  %890 = phi float [ %888, %873 ], [ %846, %821 ]
  %891 = call float @dx.op.dot2.f32(i32 54, float %867, float %868, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %892 = call float @dx.op.dot2.f32(i32 54, float %867, float %868, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %893

; <label>:893                                     ; preds = %889, %799
  %894 = phi float [ %890, %889 ], [ 0x3FD6666660000000, %799 ]
  %895 = phi float [ %891, %889 ], [ 0.000000e+00, %799 ]
  %896 = phi float [ %892, %889 ], [ 0.000000e+00, %799 ]
  %897 = phi float [ %833, %889 ], [ 1.000000e+00, %799 ]
  %898 = add i32 %72, 64
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = lshr i32 %900, 22
  %902 = shl nuw nsw i32 %901, 5
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 64
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %941, label %908

; <label>:908                                     ; preds = %893
  %909 = add i32 %72, 144
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = add i32 %911, 0
  %913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 131072
  %917 = icmp eq i32 %916, 0
  %918 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %913, %dx.types.Handle %97, float %408, float %409, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %919 = extractvalue %dx.types.ResRet.f32 %918, 0
  %920 = extractvalue %dx.types.ResRet.f32 %918, 1
  %921 = extractvalue %dx.types.ResRet.f32 %918, 2
  %922 = fmul fast float %919, %256
  %923 = fmul fast float %920, %259
  %924 = fmul fast float %921, %262
  br i1 %917, label %931, label %925

; <label>:925                                     ; preds = %908
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = fmul fast float %927, %922
  %929 = fmul fast float %927, %923
  %930 = fmul fast float %927, %924
  br label %931

; <label>:931                                     ; preds = %925, %908
  %932 = phi float [ %928, %925 ], [ %922, %908 ]
  %933 = phi float [ %929, %925 ], [ %923, %908 ]
  %934 = phi float [ %930, %925 ], [ %924, %908 ]
  %935 = fmul fast float %932, %903
  %936 = select i1 %239, float %935, float %932
  %937 = call float @dx.op.dot3.f32(i32 55, float %936, float %933, float %934, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = select i1 %239, float 0.000000e+00, float %932
  %939 = select i1 %239, float %937, float %933
  %940 = select i1 %239, float 0.000000e+00, float %934
  br label %941

; <label>:941                                     ; preds = %931, %893
  %942 = phi float [ %938, %931 ], [ 0.000000e+00, %893 ]
  %943 = phi float [ %939, %931 ], [ 0.000000e+00, %893 ]
  %944 = phi float [ %940, %931 ], [ 0.000000e+00, %893 ]
  %945 = add i32 %72, 48
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = and i32 %947, 255
  %949 = uitofp i32 %948 to float
  %950 = lshr i32 %947, 8
  %951 = and i32 %950, 255
  %952 = uitofp i32 %951 to float
  %953 = call float @dx.op.dot3.f32(i32 55, float %814, float %815, float %816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %954 = fmul fast float %952, %953
  %955 = fadd fast float %954, %949
  %956 = fmul fast float %955, 0x3F70101020000000
  %957 = call float @dx.op.unary.f32(i32 7, float %956)  ; Saturate(value)
  br label %958

; <label>:958                                     ; preds = %941, %307
  %959 = phi float [ 0.000000e+00, %307 ], [ %895, %941 ]
  %960 = phi float [ 0.000000e+00, %307 ], [ %896, %941 ]
  %961 = phi float [ 0.000000e+00, %307 ], [ %814, %941 ]
  %962 = phi float [ 0.000000e+00, %307 ], [ %815, %941 ]
  %963 = phi float [ 0.000000e+00, %307 ], [ %816, %941 ]
  %964 = phi float [ 0.000000e+00, %307 ], [ %942, %941 ]
  %965 = phi float [ 0.000000e+00, %307 ], [ %943, %941 ]
  %966 = phi float [ 0.000000e+00, %307 ], [ %944, %941 ]
  %967 = phi float [ 0.000000e+00, %307 ], [ %800, %941 ]
  %968 = phi float [ 0.000000e+00, %307 ], [ %596, %941 ]
  %969 = phi float [ 0.000000e+00, %307 ], [ %894, %941 ]
  %970 = phi float [ 0.000000e+00, %307 ], [ %897, %941 ]
  %971 = phi float [ 0.000000e+00, %307 ], [ %957, %941 ]
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 0
  %974 = call float @dx.op.dot2.f32(i32 54, float %959, float %960, float %959, float %960)  ; Dot2(ax,ay,bx,by)
  %975 = fmul fast float %974, 0x3FE3333340000000
  %976 = fsub fast float 1.000000e+00, %975
  %977 = call float @dx.op.dot3.f32(i32 55, float %959, float %960, float %976, float %959, float %960, float %976)  ; Dot3(ax,ay,az,bx,by,bz)
  %978 = call float @dx.op.unary.f32(i32 25, float %977)  ; Rsqrt(value)
  %979 = fmul fast float %978, %959
  %980 = fmul fast float %978, %960
  %981 = fmul fast float %976, %978
  %982 = fmul fast float %981, %77
  %983 = fmul fast float %981, %78
  %984 = fmul fast float %981, %79
  %985 = fmul fast float %979, %73
  %986 = fmul fast float %979, %74
  %987 = fmul fast float %979, %75
  %988 = fadd fast float %982, %985
  %989 = fadd fast float %983, %986
  %990 = fadd fast float %984, %987
  %991 = fmul fast float %980, %112
  %992 = fmul fast float %980, %113
  %993 = fmul fast float %980, %114
  %994 = fadd fast float %988, %991
  %995 = fadd fast float %989, %992
  %996 = fadd fast float %990, %993
  %997 = call float @dx.op.dot3.f32(i32 55, float %994, float %995, float %996, float %994, float %995, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = call float @dx.op.unary.f32(i32 25, float %997)  ; Rsqrt(value)
  %999 = fmul fast float %994, %998
  %1000 = fmul fast float %995, %998
  %1001 = fmul fast float %996, %998
  %1002 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1003 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %1004 = call float @dx.op.unary.f32(i32 83, float %150)  ; DerivCoarseX(value)
  %1005 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1006 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %1007 = call float @dx.op.unary.f32(i32 84, float %150)  ; DerivCoarseY(value)
  %1008 = fadd fast float %1002, %148
  %1009 = fadd fast float %1003, %149
  %1010 = fadd fast float %1004, %150
  %1011 = fadd fast float %1005, %148
  %1012 = fadd fast float %1006, %149
  %1013 = fadd fast float %1007, %150
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 3
  %1021 = fmul fast float %1015, %101
  %1022 = fmul fast float %1021, %1019
  %1023 = fmul fast float %1016, %102
  %1024 = fmul fast float %1023, %1020
  %1025 = fptoui float %1022 to i32
  %1026 = fptoui float %1024 to i32
  %1027 = fadd fast float %1015, -1.000000e+00
  %1028 = fadd fast float %1016, -1.000000e+00
  %1029 = fptoui float %1027 to i32
  %1030 = fptoui float %1028 to i32
  %1031 = call i32 @dx.op.binary.i32(i32 40, i32 %1025, i32 %1029)  ; UMin(a,b)
  %1032 = call i32 @dx.op.binary.i32(i32 40, i32 %1026, i32 %1030)  ; UMin(a,b)
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1035 = extractvalue %dx.types.CBufRet.f32 %1033, 3
  %1036 = fmul fast float %1034, %89
  %1037 = fsub fast float %1036, %1035
  %1038 = fadd fast float %1017, -1.000000e+00
  %1039 = call float @dx.op.binary.f32(i32 36, float %1037, float %1038)  ; FMin(a,b)
  %1040 = fptoui float %1039 to i32
  %1041 = fptoui float %1015 to i32
  %1042 = fptoui float %1016 to i32
  %1043 = mul i32 %1040, %1042
  %1044 = add i32 %1043, %1032
  %1045 = mul i32 %1044, %1041
  %1046 = add i32 %1045, %1031
  %1047 = shl i32 %1046, 2
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 1023
  %1051 = lshr i32 %1049, 10
  %1052 = icmp eq i32 %1050, 0
  br i1 %1052, label %1478, label %1053

; <label>:1053                                    ; preds = %958
  %1054 = and i32 %1049, 1023
  br label %1055

; <label>:1055                                    ; preds = %1181, %1053
  %1056 = phi float [ %1182, %1181 ], [ 0.000000e+00, %1053 ]
  %1057 = phi float [ %1183, %1181 ], [ %973, %1053 ]
  %1058 = phi float [ %1184, %1181 ], [ %971, %1053 ]
  %1059 = phi float [ %1185, %1181 ], [ 0.000000e+00, %1053 ]
  %1060 = phi float [ %1186, %1181 ], [ 0.000000e+00, %1053 ]
  %1061 = phi float [ %1187, %1181 ], [ %964, %1053 ]
  %1062 = phi float [ %1188, %1181 ], [ %965, %1053 ]
  %1063 = phi float [ %1189, %1181 ], [ %966, %1053 ]
  %1064 = phi float [ %1190, %1181 ], [ %999, %1053 ]
  %1065 = phi float [ %1191, %1181 ], [ %1000, %1053 ]
  %1066 = phi float [ %1192, %1181 ], [ %1001, %1053 ]
  %1067 = phi float [ %1193, %1181 ], [ %970, %1053 ]
  %1068 = phi float [ %1194, %1181 ], [ %969, %1053 ]
  %1069 = phi float [ %1195, %1181 ], [ 0.000000e+00, %1053 ]
  %1070 = phi float [ %1196, %1181 ], [ %967, %1053 ]
  %1071 = phi float [ %1197, %1181 ], [ %961, %1053 ]
  %1072 = phi float [ %1198, %1181 ], [ %962, %1053 ]
  %1073 = phi float [ %1199, %1181 ], [ %963, %1053 ]
  %1074 = phi i32 [ %1131, %1181 ], [ 0, %1053 ]
  %1075 = add nuw nsw i32 %1074, %1051
  %1076 = shl i32 %1075, 2
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = shl i32 %1078, 8
  %1080 = or i32 %1079, 48
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = extractvalue %dx.types.ResRet.f32 %1081, 3
  %1086 = or i32 %1079, 64
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.i32 %1087, 1
  %1090 = or i32 %1079, 80
  %1091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 3
  %1094 = or i32 %1079, 96
  %1095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.ResRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.ResRet.f32 %1095, 2
  %1099 = extractvalue %dx.types.ResRet.f32 %1095, 3
  %1100 = or i32 %1079, 112
  %1101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 2
  %1103 = or i32 %1079, 128
  %1104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = extractvalue %dx.types.ResRet.f32 %1104, 3
  %1109 = or i32 %1079, 144
  %1110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.ResRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.ResRet.f32 %1110, 2
  %1114 = extractvalue %dx.types.ResRet.f32 %1110, 3
  %1115 = or i32 %1079, 160
  %1116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.ResRet.f32 %1116, 2
  %1120 = extractvalue %dx.types.ResRet.f32 %1116, 3
  %1121 = or i32 %1079, 192
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = or i32 %1079, 208
  %1125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = or i32 %1079, 248
  %1128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = add nuw nsw i32 %1074, 1
  %1132 = bitcast float %1085 to i32
  %1133 = and i32 %1132, 2560
  %1134 = icmp eq i32 %1133, 0
  %1135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = extractvalue %dx.types.ResRet.f32 %1135, 3
  %1140 = call float @dx.op.dot4.f32(i32 56, float %1136, float %1137, float %1138, float %1139, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1141 = or i32 %1079, 16
  %1142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = extractvalue %dx.types.ResRet.f32 %1142, 1
  %1145 = extractvalue %dx.types.ResRet.f32 %1142, 2
  %1146 = extractvalue %dx.types.ResRet.f32 %1142, 3
  %1147 = call float @dx.op.dot4.f32(i32 56, float %1143, float %1144, float %1145, float %1146, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1148 = or i32 %1079, 32
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1154 = call float @dx.op.dot4.f32(i32 56, float %1150, float %1151, float %1152, float %1153, float %148, float %149, float %150, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1155 = call float @dx.op.unary.f32(i32 27, float %1140)  ; Round_ni(value)
  %1156 = call float @dx.op.unary.f32(i32 6, float %1155)  ; FAbs(value)
  %1157 = call float @dx.op.unary.f32(i32 27, float %1147)  ; Round_ni(value)
  %1158 = call float @dx.op.unary.f32(i32 6, float %1157)  ; FAbs(value)
  %1159 = call float @dx.op.unary.f32(i32 6, float %1154)  ; FAbs(value)
  %1160 = call float @dx.op.unary.f32(i32 27, float %1159)  ; Round_ni(value)
  %1161 = fadd fast float %1158, %1156
  %1162 = fadd fast float %1161, %1160
  %1163 = fcmp fast oeq float %1162, 0.000000e+00
  %1164 = call float @dx.op.dot4.f32(i32 56, float %1136, float %1137, float %1138, float %1139, float %1008, float %1009, float %1010, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1165 = call float @dx.op.dot4.f32(i32 56, float %1143, float %1144, float %1145, float %1146, float %1008, float %1009, float %1010, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1166 = call float @dx.op.dot4.f32(i32 56, float %1136, float %1137, float %1138, float %1139, float %1011, float %1012, float %1013, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1167 = call float @dx.op.dot4.f32(i32 56, float %1143, float %1144, float %1145, float %1146, float %1011, float %1012, float %1013, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1168 = fsub fast float %1164, %1140
  %1169 = fsub fast float %1166, %1140
  %1170 = fsub fast float %1165, %1147
  %1171 = fsub fast float %1167, %1147
  %1172 = call float @dx.op.dot3.f32(i32 55, float %1082, float %1083, float %1084, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 2
  %1175 = fadd fast float %1174, %1172
  %1176 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1173, 0
  %1178 = fcmp fast ogt float %1176, %1177
  %1179 = and i1 %1163, %1178
  %1180 = and i1 %1134, %1179
  br i1 %1180, label %1201, label %1181

; <label>:1181                                    ; preds = %1464, %1282, %1201, %1055
  %1182 = phi float [ %1056, %1201 ], [ %1285, %1282 ], [ %1285, %1464 ], [ %1056, %1055 ]
  %1183 = phi float [ %1057, %1201 ], [ %1057, %1282 ], [ %1439, %1464 ], [ %1057, %1055 ]
  %1184 = phi float [ %1058, %1201 ], [ %1058, %1282 ], [ %1437, %1464 ], [ %1058, %1055 ]
  %1185 = phi float [ %1059, %1201 ], [ %1059, %1282 ], [ %1409, %1464 ], [ %1059, %1055 ]
  %1186 = phi float [ %1060, %1201 ], [ %1060, %1282 ], [ %1407, %1464 ], [ %1060, %1055 ]
  %1187 = phi float [ %1061, %1201 ], [ %1061, %1282 ], [ %1474, %1464 ], [ %1061, %1055 ]
  %1188 = phi float [ %1062, %1201 ], [ %1062, %1282 ], [ %1475, %1464 ], [ %1062, %1055 ]
  %1189 = phi float [ %1063, %1201 ], [ %1063, %1282 ], [ %1476, %1464 ], [ %1063, %1055 ]
  %1190 = phi float [ %1064, %1201 ], [ %1064, %1282 ], [ %1388, %1464 ], [ %1064, %1055 ]
  %1191 = phi float [ %1065, %1201 ], [ %1065, %1282 ], [ %1389, %1464 ], [ %1065, %1055 ]
  %1192 = phi float [ %1066, %1201 ], [ %1066, %1282 ], [ %1390, %1464 ], [ %1066, %1055 ]
  %1193 = phi float [ %1067, %1201 ], [ %1067, %1282 ], [ %1417, %1464 ], [ %1067, %1055 ]
  %1194 = phi float [ %1068, %1201 ], [ %1068, %1282 ], [ %1414, %1464 ], [ %1068, %1055 ]
  %1195 = phi float [ %1069, %1201 ], [ %1069, %1282 ], [ %1411, %1464 ], [ %1069, %1055 ]
  %1196 = phi float [ %1070, %1201 ], [ %1070, %1282 ], [ %1405, %1464 ], [ %1070, %1055 ]
  %1197 = phi float [ %1071, %1201 ], [ %1071, %1282 ], [ %1400, %1464 ], [ %1071, %1055 ]
  %1198 = phi float [ %1072, %1201 ], [ %1072, %1282 ], [ %1401, %1464 ], [ %1072, %1055 ]
  %1199 = phi float [ %1073, %1201 ], [ %1073, %1282 ], [ %1402, %1464 ], [ %1073, %1055 ]
  %1200 = icmp eq i32 %1131, %1054
  br i1 %1200, label %1477, label %1055

; <label>:1201                                    ; preds = %1055
  %1202 = extractvalue %dx.types.ResRet.f32 %1101, 3
  %1203 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1204 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1207 = extractvalue %dx.types.ResRet.i32 %1087, 3
  %1208 = extractvalue %dx.types.ResRet.i32 %1087, 2
  %1209 = add i32 %1207, 0
  %1210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1209, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1212 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1210, %dx.types.Handle %1211, float %1140, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float %1168, float %1170, float undef, float %1169, float %1171, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1213 = extractvalue %dx.types.ResRet.f32 %1212, 0
  %1214 = fmul fast float %1213, %1206
  %1215 = fadd fast float %1214, %1205
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = fmul fast float %1140, %1096
  %1218 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1147, float %1217)  ; FMad(a,b,c)
  %1219 = fadd fast float %1218, %1204
  %1220 = fmul fast float %1140, %1098
  %1221 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %1147, float %1220)  ; FMad(a,b,c)
  %1222 = fadd fast float %1221, %1203
  %1223 = fmul fast float %1168, %1096
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1170, float %1223)  ; FMad(a,b,c)
  %1225 = fmul fast float %1168, %1098
  %1226 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %1170, float %1225)  ; FMad(a,b,c)
  %1227 = fmul fast float %1169, %1096
  %1228 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1171, float %1227)  ; FMad(a,b,c)
  %1229 = fmul fast float %1169, %1098
  %1230 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %1171, float %1229)  ; FMad(a,b,c)
  %1231 = add i32 %1208, 0
  %1232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1231, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1233 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1232, %dx.types.Handle %1211, float %1219, float %1222, float undef, float undef, i32 0, i32 0, i32 undef, float %1224, float %1226, float undef, float %1228, float %1230, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = and i32 %1132, 1024
  %1236 = icmp ne i32 %1235, 0
  %1237 = fcmp fast ogt float %1234, 0x3FE0101020000000
  %1238 = uitofp i1 %1237 to float
  %1239 = select i1 %1236, float %1238, float %1234
  %1240 = and i32 %1132, 8192
  %1241 = icmp ne i32 %1240, 0
  %1242 = select i1 %1241, float %1202, float 1.000000e+00
  %1243 = fmul fast float %1140, 2.000000e+00
  %1244 = fadd fast float %1243, -1.000000e+00
  %1245 = call float @dx.op.unary.f32(i32 6, float %1244)  ; FAbs(value)
  %1246 = fmul fast float %1245, %1129
  %1247 = fsub fast float %1246, %1129
  %1248 = call float @dx.op.unary.f32(i32 7, float %1247)  ; Saturate(value)
  %1249 = fmul fast float %1147, 2.000000e+00
  %1250 = fadd fast float %1249, -1.000000e+00
  %1251 = call float @dx.op.unary.f32(i32 6, float %1250)  ; FAbs(value)
  %1252 = fmul fast float %1251, %1130
  %1253 = fsub fast float %1252, %1130
  %1254 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  %1255 = fmul fast float %1159, %1092
  %1256 = fsub fast float %1255, %1092
  %1257 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1258 = fmul fast float %1216, %1242
  %1259 = fmul fast float %1258, %1213
  %1260 = fmul fast float %1259, %1248
  %1261 = fmul fast float %1260, %1239
  %1262 = fmul fast float %1261, %1254
  %1263 = fmul fast float %1262, %1257
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 1
  %1266 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  %1267 = fsub fast float %1176, %1266
  %1268 = fmul fast float %1267, %1265
  %1269 = call float @dx.op.unary.f32(i32 7, float %1268)  ; Saturate(value)
  %1270 = fmul fast float %1263, %1093
  %1271 = fadd fast float %1263, %1093
  %1272 = fmul fast float %1271, %1102
  %1273 = fsub fast float %1272, %1102
  %1274 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1275 = and i32 %1132, 128
  %1276 = icmp ne i32 %1275, 0
  %1277 = select i1 %1276, float %1274, float %1270
  %1278 = fmul fast float %1277, %1269
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1281 = fcmp fast ugt float %1278, %1280
  br i1 %1281, label %1282, label %1181

; <label>:1282                                    ; preds = %1201
  %1283 = select i1 %1241, float %1278, float 0.000000e+00
  %1284 = fadd fast float %1283, %1056
  %1285 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  br i1 %1241, label %1181, label %1286

; <label>:1286                                    ; preds = %1282
  %1287 = and i32 %1132, 4
  %1288 = and i32 %1132, 8
  %1289 = add i32 %1088, 0
  %1290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1289, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1292 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1290, %dx.types.Handle %1291, float %1219, float %1222, float undef, float undef, i32 0, i32 0, i32 undef, float %1224, float %1226, float undef, float %1228, float %1230, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.ResRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.ResRet.f32 %1292, 2
  %1296 = extractvalue %dx.types.ResRet.f32 %1292, 3
  %1297 = bitcast float %1114 to i32
  %1298 = and i32 %1297, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = lshr i32 %1297, 8
  %1301 = and i32 %1300, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1296, %1299
  %1304 = fadd fast float %1303, %1302
  %1305 = fmul fast float %1304, 0x3F70101000000000
  %1306 = add i32 %1089, 0
  %1307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1306, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1308 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1307, %dx.types.Handle %1291, float %1219, float %1222, float undef, float undef, i32 0, i32 0, i32 undef, float %1224, float %1226, float undef, float %1228, float %1230, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = extractvalue %dx.types.ResRet.f32 %1308, 1
  %1311 = extractvalue %dx.types.ResRet.f32 %1308, 2
  %1312 = extractvalue %dx.types.ResRet.f32 %1308, 3
  %1313 = bitcast float %1108 to i32
  %1314 = and i32 %1313, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = lshr i32 %1313, 8
  %1317 = and i32 %1316, 255
  %1318 = uitofp i32 %1317 to float
  %1319 = lshr i32 %1313, 16
  %1320 = and i32 %1319, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101000000000
  %1323 = fmul fast float %1309, %1315
  %1324 = fadd fast float %1323, %1318
  %1325 = fmul fast float %1324, 0x3F70101000000000
  %1326 = fadd fast float %1310, -5.000000e-01
  %1327 = fadd fast float %1312, -5.000000e-01
  %1328 = fmul fast float %1326, %1322
  %1329 = fmul fast float %1327, %1322
  %1330 = fadd fast float %1328, 5.000000e-01
  %1331 = fadd fast float %1329, 5.000000e-01
  %1332 = fmul fast float %1293, %1117
  %1333 = fmul fast float %1294, %1118
  %1334 = fmul fast float %1295, %1119
  %1335 = fmul fast float %1330, 2.000000e+00
  %1336 = fadd fast float %1335, -1.000000e+00
  %1337 = fmul fast float %1331, 2.000000e+00
  %1338 = fadd fast float %1337, -1.000000e+00
  %1339 = fadd fast float %1336, %1338
  %1340 = fmul fast float %1339, 5.000000e-01
  %1341 = fsub fast float %1336, %1338
  %1342 = fmul fast float %1341, 5.000000e-01
  %1343 = call float @dx.op.unary.f32(i32 6, float %1340)  ; FAbs(value)
  %1344 = fsub fast float 1.000000e+00, %1343
  %1345 = call float @dx.op.unary.f32(i32 6, float %1342)  ; FAbs(value)
  %1346 = fsub fast float %1344, %1345
  %1347 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1342, float %1346, float %1340, float %1342, float %1346)  ; Dot3(ax,ay,az,bx,by,bz)
  %1348 = call float @dx.op.unary.f32(i32 25, float %1347)  ; Rsqrt(value)
  %1349 = fmul fast float %1340, %1348
  %1350 = fmul fast float %1342, %1348
  %1351 = fmul fast float %1348, %1346
  %1352 = fmul fast float %1351, %1082
  %1353 = fmul fast float %1351, %1083
  %1354 = fmul fast float %1351, %1084
  %1355 = fmul fast float %1349, %1105
  %1356 = fmul fast float %1349, %1106
  %1357 = fmul fast float %1349, %1107
  %1358 = fadd fast float %1355, %1352
  %1359 = fadd fast float %1356, %1353
  %1360 = fadd fast float %1357, %1354
  %1361 = fmul fast float %1350, %1111
  %1362 = fmul fast float %1350, %1112
  %1363 = fmul fast float %1350, %1113
  %1364 = fadd fast float %1358, %1361
  %1365 = fadd fast float %1359, %1362
  %1366 = fadd fast float %1360, %1363
  %1367 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1364, float %1365, float %1366)  ; Dot3(ax,ay,az,bx,by,bz)
  %1368 = call float @dx.op.unary.f32(i32 25, float %1367)  ; Rsqrt(value)
  %1369 = fmul fast float %1364, %1368
  %1370 = fmul fast float %1365, %1368
  %1371 = fmul fast float %1366, %1368
  %1372 = icmp ne i32 %1288, 0
  %1373 = select i1 %1372, float 1.000000e+00, float 0.000000e+00
  %1374 = fmul fast float %1278, %1373
  %1375 = and i32 %1132, 1
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1377, label %1381

; <label>:1377                                    ; preds = %1286
  %1378 = fsub fast float %1369, %1064
  %1379 = fsub fast float %1370, %1065
  %1380 = fsub fast float %1371, %1066
  br label %1381

; <label>:1381                                    ; preds = %1377, %1286
  %1382 = phi float [ %1378, %1377 ], [ %1369, %1286 ]
  %1383 = phi float [ %1379, %1377 ], [ %1370, %1286 ]
  %1384 = phi float [ %1380, %1377 ], [ %1371, %1286 ]
  %1385 = fmul float %1384, %1374
  %1386 = fmul float %1383, %1374
  %1387 = fmul float %1382, %1374
  %1388 = fadd fast float %1387, %1064
  %1389 = fadd fast float %1386, %1065
  %1390 = fadd fast float %1385, %1066
  %1391 = icmp ne i32 %1287, 0
  %1392 = select i1 %1391, float 1.000000e+00, float 0.000000e+00
  %1393 = fmul fast float %1278, %1392
  %1394 = fsub fast float %1332, %1071
  %1395 = fsub fast float %1333, %1072
  %1396 = fsub fast float %1334, %1073
  %1397 = fmul fast float %1394, %1393
  %1398 = fmul fast float %1395, %1393
  %1399 = fmul fast float %1396, %1393
  %1400 = fadd fast float %1397, %1071
  %1401 = fadd fast float %1398, %1072
  %1402 = fadd fast float %1399, %1073
  %1403 = fsub fast float %1305, %1070
  %1404 = fmul fast float %1403, %1393
  %1405 = fadd fast float %1404, %1070
  %1406 = fmul fast float %1393, %1060
  %1407 = fsub fast float %1060, %1406
  %1408 = fmul fast float %1393, %1059
  %1409 = fsub fast float %1059, %1408
  %1410 = fadd fast float %1278, %1069
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1412 = fsub fast float %1325, %1068
  %1413 = fmul fast float %1412, %1374
  %1414 = fadd fast float %1413, %1068
  %1415 = fsub fast float %1311, %1067
  %1416 = fmul fast float %1415, %1374
  %1417 = fadd fast float %1416, %1067
  %1418 = call float @dx.op.dot3.f32(i32 55, float %1332, float %1333, float %1334, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1422 = fmul fast float %1421, %1418
  %1423 = fadd fast float %1422, %1420
  %1424 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1425 = bitcast float %1120 to i32
  %1426 = and i32 %1425, 65535
  %1427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1426)  ; LegacyF16ToF32(value)
  %1428 = lshr i32 %1425, 16
  %1429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1428)  ; LegacyF16ToF32(value)
  %1430 = fcmp fast oge float %1427, 0.000000e+00
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1433 = select i1 %1430, float %1427, float %1432
  %1434 = fadd fast float %1433, %1429
  %1435 = fsub fast float %1424, %1058
  %1436 = fmul fast float %1435, %1278
  %1437 = fadd fast float %1436, %1058
  %1438 = fmul fast float %1434, %1278
  %1439 = call float @dx.op.binary.f32(i32 35, float %1057, float %1438)  ; FMax(a,b)
  %1440 = and i32 %1132, 16
  %1441 = icmp eq i32 %1440, 0
  br i1 %1441, label %1464, label %1442

; <label>:1442                                    ; preds = %1381
  %1443 = bitcast float %1126 to i32
  %1444 = add i32 %1123, 0
  %1445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1444, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1446 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1445, %dx.types.Handle %1291, float %1219, float %1222, float undef, float undef, i32 0, i32 0, i32 undef, float %1224, float %1226, float undef, float %1228, float %1230, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.ResRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.ResRet.f32 %1446, 2
  %1450 = and i32 %1443, 65535
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = fmul fast float %1447, %1117
  %1453 = fmul fast float %1448, %1118
  %1454 = fmul fast float %1449, %1119
  %1455 = and i32 %1132, 16384
  %1456 = icmp ne i32 %1455, 0
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = select i1 %1456, float %1458, float 1.000000e+00
  %1460 = fmul fast float %1459, %1451
  %1461 = fmul fast float %1452, %1460
  %1462 = fmul fast float %1453, %1460
  %1463 = fmul fast float %1454, %1460
  br label %1464

; <label>:1464                                    ; preds = %1442, %1381
  %1465 = phi float [ %1461, %1442 ], [ 0.000000e+00, %1381 ]
  %1466 = phi float [ %1462, %1442 ], [ 0.000000e+00, %1381 ]
  %1467 = phi float [ %1463, %1442 ], [ 0.000000e+00, %1381 ]
  %1468 = fsub fast float %1465, %1061
  %1469 = fsub fast float %1466, %1062
  %1470 = fsub fast float %1467, %1063
  %1471 = fmul fast float %1468, %1278
  %1472 = fmul fast float %1469, %1278
  %1473 = fmul fast float %1470, %1278
  %1474 = fadd fast float %1471, %1061
  %1475 = fadd fast float %1472, %1062
  %1476 = fadd fast float %1473, %1063
  br label %1181

; <label>:1477                                    ; preds = %1181
  br label %1478

; <label>:1478                                    ; preds = %1477, %958
  %1479 = phi float [ 0.000000e+00, %958 ], [ %1182, %1477 ]
  %1480 = phi float [ %973, %958 ], [ %1183, %1477 ]
  %1481 = phi float [ %971, %958 ], [ %1184, %1477 ]
  %1482 = phi float [ 0.000000e+00, %958 ], [ %1185, %1477 ]
  %1483 = phi float [ 0.000000e+00, %958 ], [ %1186, %1477 ]
  %1484 = phi float [ %964, %958 ], [ %1187, %1477 ]
  %1485 = phi float [ %965, %958 ], [ %1188, %1477 ]
  %1486 = phi float [ %966, %958 ], [ %1189, %1477 ]
  %1487 = phi float [ %999, %958 ], [ %1190, %1477 ]
  %1488 = phi float [ %1000, %958 ], [ %1191, %1477 ]
  %1489 = phi float [ %1001, %958 ], [ %1192, %1477 ]
  %1490 = phi float [ %970, %958 ], [ %1193, %1477 ]
  %1491 = phi float [ %969, %958 ], [ %1194, %1477 ]
  %1492 = phi float [ 0.000000e+00, %958 ], [ %1195, %1477 ]
  %1493 = phi float [ %967, %958 ], [ %1196, %1477 ]
  %1494 = phi float [ %961, %958 ], [ %1197, %1477 ]
  %1495 = phi float [ %962, %958 ], [ %1198, %1477 ]
  %1496 = phi float [ %963, %958 ], [ %1199, %1477 ]
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1487, float %1488, float %1489, float %1487, float %1488, float %1489)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = call float @dx.op.unary.f32(i32 25, float %1497)  ; Rsqrt(value)
  %1499 = fmul fast float %1498, %1487
  %1500 = fmul fast float %1498, %1488
  %1501 = fmul fast float %1498, %1489
  %1502 = fadd fast float %1492, %968
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1504 = call float @dx.op.dot3.f32(i32 55, float %1499, float %1500, float %1501, float %1499, float %1500, float %1501)  ; Dot3(ax,ay,az,bx,by,bz)
  %1505 = call float @dx.op.unary.f32(i32 25, float %1504)  ; Rsqrt(value)
  %1506 = fmul fast float %1505, %1499
  %1507 = fmul fast float %1505, %1500
  %1508 = fmul fast float %1505, %1501
  %1509 = fadd fast float %1493, 0xBFB99999A0000000
  %1510 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  %1511 = fmul fast float %1510, 0x3FF1C71C80000000
  %1512 = call float @dx.op.binary.f32(i32 36, float %1493, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1513 = fsub fast float 1.000000e+00, %1511
  %1514 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1515 = fmul fast float %1514, %1494
  %1516 = fmul fast float %1514, %1495
  %1517 = fmul fast float %1514, %1496
  %1518 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1519 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1521 = fmul fast float %1511, %1494
  %1522 = fmul fast float %1511, %1495
  %1523 = fmul fast float %1511, %1496
  %1524 = fadd fast float %1521, %1512
  %1525 = fadd fast float %1522, %1512
  %1526 = fadd fast float %1523, %1512
  %1527 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  %1528 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1529 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1530 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.i32 %1531, 3
  %1533 = and i32 %1532, 8
  %1534 = icmp ne i32 %1533, 0
  %1535 = call float @dx.op.binary.f32(i32 35, float %1518, float %1494)  ; FMax(a,b)
  %1536 = call float @dx.op.binary.f32(i32 35, float %1519, float %1494)  ; FMax(a,b)
  %1537 = call float @dx.op.binary.f32(i32 35, float %1520, float %1494)  ; FMax(a,b)
  %1538 = call float @dx.op.dot3.f32(i32 55, float %1518, float %1519, float %1520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1539 = select i1 %239, float %1494, float %1518
  %1540 = select i1 %239, float %1538, float %1519
  %1541 = select i1 %239, float 1.000000e+00, float %1520
  %1542 = select i1 %1534, float %1535, float %1539
  %1543 = select i1 %1534, float %1536, float %1540
  %1544 = select i1 %1534, float %1537, float %1541
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.CBufRet.f32 %1545, 1
  %1548 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1549 = fadd fast float %1546, %148
  %1550 = fadd fast float %1547, %149
  %1551 = fadd fast float %1548, %150
  %1552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.CBufRet.f32 %1552, 1
  %1555 = fsub fast float %1549, %1553
  %1556 = fsub fast float %1550, %1554
  %1557 = fmul fast float %1555, %1555
  %1558 = fmul fast float %1556, %1556
  %1559 = fadd fast float %1557, %1558
  %1560 = call float @dx.op.unary.f32(i32 24, float %1559)  ; Sqrt(value)
  %1561 = extractvalue %dx.types.CBufRet.f32 %1552, 2
  %1562 = fcmp fast olt float %1560, %1561
  br i1 %1562, label %1563, label %1630

; <label>:1563                                    ; preds = %1478
  %1564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1564, 0
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 0
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = extractvalue %dx.types.CBufRet.f32 %1564, 1
  %1571 = extractvalue %dx.types.CBufRet.f32 %1566, 1
  %1572 = extractvalue %dx.types.CBufRet.f32 %1568, 1
  %1573 = extractvalue %dx.types.CBufRet.f32 %1564, 3
  %1574 = extractvalue %dx.types.CBufRet.f32 %1566, 3
  %1575 = extractvalue %dx.types.CBufRet.f32 %1568, 3
  %1576 = fadd fast float %1573, %1549
  %1577 = fadd fast float %1574, %1550
  %1578 = fadd fast float %1575, %1551
  %1579 = fmul fast float %1576, %1565
  %1580 = call float @dx.op.tertiary.f32(i32 46, float %1577, float %1567, float %1579)  ; FMad(a,b,c)
  %1581 = call float @dx.op.tertiary.f32(i32 46, float %1578, float %1569, float %1580)  ; FMad(a,b,c)
  %1582 = fmul fast float %1576, %1570
  %1583 = call float @dx.op.tertiary.f32(i32 46, float %1577, float %1571, float %1582)  ; FMad(a,b,c)
  %1584 = call float @dx.op.tertiary.f32(i32 46, float %1578, float %1572, float %1583)  ; FMad(a,b,c)
  %1585 = fsub fast float %1581, %1573
  %1586 = fsub fast float %1584, %1574
  %1587 = fsub fast float %1585, %1553
  %1588 = fadd fast float %1587, %1561
  %1589 = fsub fast float %1586, %1554
  %1590 = fadd fast float %1589, %1561
  %1591 = extractvalue %dx.types.CBufRet.f32 %1552, 3
  %1592 = fmul fast float %1588, %1591
  %1593 = fmul fast float %1590, %1591
  %1594 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1595 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1596 = fsub fast float 1.000000e+00, %1594
  %1597 = fsub fast float 1.000000e+00, %1595
  %1598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %65, float %1596, float %1597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 0
  %1600 = fcmp fast ugt float %1599, 0.000000e+00
  br i1 %1600, label %1601, label %1904

; <label>:1601                                    ; preds = %1563
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 2
  %1604 = fmul fast float %1603, %1599
  %1605 = extractvalue %dx.types.CBufRet.f32 %1602, 3
  %1606 = fadd fast float %1605, %1604
  %1607 = extractvalue %dx.types.CBufRet.f32 %1568, 2
  %1608 = fadd fast float %1606, %1575
  %1609 = fmul fast float %1581, %1569
  %1610 = call float @dx.op.tertiary.f32(i32 46, float %1584, float %1572, float %1609)  ; FMad(a,b,c)
  %1611 = call float @dx.op.tertiary.f32(i32 46, float %1608, float %1607, float %1610)  ; FMad(a,b,c)
  %1612 = fsub fast float %1611, %1575
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 2
  %1615 = fsub fast float %1612, %1614
  %1616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %65, float %1596, float %1597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 0
  %1618 = extractvalue %dx.types.ResRet.f32 %1616, 1
  %1619 = extractvalue %dx.types.ResRet.f32 %1616, 2
  %1620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %65, float %1596, float %1597, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1621 = extractvalue %dx.types.ResRet.f32 %1620, 0
  %1622 = extractvalue %dx.types.ResRet.f32 %1620, 1
  %1623 = extractvalue %dx.types.ResRet.f32 %1620, 2
  %1624 = fadd fast float %1621, %1617
  %1625 = fmul fast float %1624, 0x3F847AE140000000
  %1626 = fadd fast float %1622, %1618
  %1627 = fmul fast float %1626, 0x3F847AE140000000
  %1628 = fadd fast float %1623, %1619
  %1629 = fmul fast float %1628, 0x3F847AE140000000
  br label %1904

; <label>:1630                                    ; preds = %1478
  %1631 = and i32 %215, 1
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1904, label %1633

; <label>:1633                                    ; preds = %1630
  %1634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1635 = extractvalue %dx.types.CBufRet.f32 %1634, 0
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 0
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.CBufRet.f32 %1634, 1
  %1641 = extractvalue %dx.types.CBufRet.f32 %1636, 1
  %1642 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1643 = extractvalue %dx.types.CBufRet.f32 %1634, 3
  %1644 = extractvalue %dx.types.CBufRet.f32 %1636, 3
  %1645 = extractvalue %dx.types.CBufRet.f32 %1638, 3
  %1646 = fadd fast float %1643, %1549
  %1647 = fadd fast float %1644, %1550
  %1648 = fadd fast float %1645, %1551
  %1649 = fmul fast float %1646, %1635
  %1650 = call float @dx.op.tertiary.f32(i32 46, float %1647, float %1637, float %1649)  ; FMad(a,b,c)
  %1651 = call float @dx.op.tertiary.f32(i32 46, float %1648, float %1639, float %1650)  ; FMad(a,b,c)
  %1652 = fmul fast float %1646, %1640
  %1653 = call float @dx.op.tertiary.f32(i32 46, float %1647, float %1641, float %1652)  ; FMad(a,b,c)
  %1654 = call float @dx.op.tertiary.f32(i32 46, float %1648, float %1642, float %1653)  ; FMad(a,b,c)
  %1655 = fsub fast float %1651, %1643
  %1656 = fsub fast float %1654, %1644
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 0
  %1659 = extractvalue %dx.types.CBufRet.f32 %1657, 1
  %1660 = extractvalue %dx.types.CBufRet.f32 %1657, 2
  %1661 = extractvalue %dx.types.CBufRet.f32 %1657, 3
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 3
  %1664 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.i32 %1664, 0
  %1666 = extractvalue %dx.types.CBufRet.i32 %1664, 1
  %1667 = udiv i32 %1666, %1665
  %1668 = fsub fast float %1655, %1658
  %1669 = fsub fast float %1656, %1659
  %1670 = call float @dx.op.binary.f32(i32 35, float %1668, float 0.000000e+00)  ; FMax(a,b)
  %1671 = call float @dx.op.binary.f32(i32 35, float %1669, float 0.000000e+00)  ; FMax(a,b)
  %1672 = call float @dx.op.binary.f32(i32 36, float %1670, float %1660)  ; FMin(a,b)
  %1673 = call float @dx.op.binary.f32(i32 36, float %1671, float %1661)  ; FMin(a,b)
  %1674 = add i32 %1665, -1
  %1675 = add i32 %1667, -1
  %1676 = fmul fast float %1672, %1663
  %1677 = fmul fast float %1673, %1663
  %1678 = fptoui float %1676 to i32
  %1679 = fptoui float %1677 to i32
  %1680 = call i32 @dx.op.binary.i32(i32 40, i32 %1678, i32 %1674)  ; UMin(a,b)
  %1681 = call i32 @dx.op.binary.i32(i32 40, i32 %1679, i32 %1675)  ; UMin(a,b)
  %1682 = mul i32 %1681, %1665
  %1683 = add i32 %1682, %1680
  %1684 = shl i32 %1683, 2
  %1685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1684, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.i32 %1685, 0
  %1687 = icmp eq i32 %1686, -1
  br i1 %1687, label %1904, label %1688

; <label>:1688                                    ; preds = %1633
  %1689 = mul i32 %1686, 148
  %1690 = add i32 %1689, 4
  %1691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.f32 %1691, 0
  %1693 = add i32 %1689, 8
  %1694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.f32 %1694, 0
  %1696 = add i32 %1689, 36
  %1697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1696, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  %1699 = add i32 %1689, 60
  %1700 = add i32 %1689, 92
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = add i32 %1689, 116
  %1704 = fsub fast float %1655, %1692
  %1705 = fsub fast float %1656, %1695
  %1706 = fmul fast float %1663, %1704
  %1707 = fmul fast float %1663, %1705
  %1708 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1709 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 2
  %1713 = call float @dx.op.unary.f32(i32 83, float %1708)  ; DerivCoarseX(value)
  %1714 = call float @dx.op.unary.f32(i32 83, float %1710)  ; DerivCoarseX(value)
  %1715 = call float @dx.op.unary.f32(i32 84, float %1708)  ; DerivCoarseY(value)
  %1716 = call float @dx.op.unary.f32(i32 84, float %1710)  ; DerivCoarseY(value)
  %1717 = fmul fast float %1713, %1712
  %1718 = fmul fast float %1714, %1712
  %1719 = fmul fast float %1715, %1712
  %1720 = fmul fast float %1716, %1712
  %1721 = call float @dx.op.dot2.f32(i32 54, float %1719, float %1720, float %1719, float %1720)  ; Dot2(ax,ay,bx,by)
  %1722 = call float @dx.op.dot2.f32(i32 54, float %1717, float %1718, float %1717, float %1718)  ; Dot2(ax,ay,bx,by)
  %1723 = call float @dx.op.binary.f32(i32 35, float %1722, float %1721)  ; FMax(a,b)
  %1724 = call float @dx.op.unary.f32(i32 23, float %1723)  ; Log(value)
  %1725 = fmul fast float %1724, 5.000000e-01
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 1
  %1728 = fadd fast float %1727, %1725
  %1729 = call float @dx.op.binary.f32(i32 35, float %1728, float 0.000000e+00)  ; FMax(a,b)
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 3
  %1732 = fadd fast float %1731, %1729
  %1733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1734 = extractvalue %dx.types.CBufRet.f32 %1733, 3
  %1735 = fadd fast float %1732, %1734
  %1736 = add i32 %1702, 0
  %1737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1736, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1738 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1737, i32 0)  ; GetDimensions(handle,mipLevel)
  %1739 = extractvalue %dx.types.Dimensions %1738, 0
  %1740 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1739)  ; FirstbitLo(value)
  %1741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.i32 %1741, 1
  %1743 = sub nsw i32 %1742, %1740
  %1744 = sitofp i32 %1743 to float
  %1745 = fsub fast float %1735, %1744
  %1746 = call float @dx.op.binary.f32(i32 35, float %1745, float 0.000000e+00)  ; FMax(a,b)
  %1747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1737, %dx.types.Handle %63, float %1708, float %1710, float %1698, float undef, i32 0, i32 0, i32 undef, float %1746)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1748 = extractvalue %dx.types.ResRet.f32 %1747, 0
  %1749 = fcmp ule float %1748, 0x3FE0101020000000
  %1750 = extractvalue %dx.types.CBufRet.i32 %1741, 0
  %1751 = and i32 %1750, 128
  %1752 = icmp ne i32 %1751, 0
  %1753 = and i1 %1749, %1752
  br i1 %1753, label %1904, label %1754

; <label>:1754                                    ; preds = %1688
  %1755 = add i32 %1689, 20
  %1756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.f32 %1756, 0
  %1758 = add i32 %1689, 24
  %1759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.f32 %1759, 0
  %1761 = add i32 %1689, 40
  %1762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.f32 %1762, 0
  %1764 = add i32 %1689, 96
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1767, 2
  %1769 = fmul fast float %1768, %1708
  %1770 = fmul fast float %1768, %1710
  %1771 = extractvalue %dx.types.CBufRet.f32 %1767, 3
  %1772 = fadd fast float %1769, %1771
  %1773 = fadd fast float %1770, %1771
  %1774 = add i32 %1766, 0
  %1775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1774, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1776 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1775, i32 0)  ; GetDimensions(handle,mipLevel)
  %1777 = extractvalue %dx.types.Dimensions %1776, 0
  %1778 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1777)  ; FirstbitLo(value)
  %1779 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.i32 %1779, 1
  %1781 = sub nsw i32 %1780, %1778
  %1782 = sitofp i32 %1781 to float
  %1783 = fsub fast float %1732, %1782
  %1784 = call float @dx.op.binary.f32(i32 35, float %1783, float 0.000000e+00)  ; FMax(a,b)
  %1785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1775, %dx.types.Handle %63, float %1772, float %1773, float %1763, float undef, i32 0, i32 0, i32 undef, float %1784)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1787 = fmul fast float %1786, %1757
  %1788 = fadd fast float %1787, %1760
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 0
  %1791 = extractvalue %dx.types.CBufRet.f32 %1789, 1
  %1792 = extractvalue %dx.types.CBufRet.f32 %1789, 2
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 3
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 3
  %1797 = extractvalue %dx.types.CBufRet.f32 %1789, 3
  %1798 = fadd fast float %1794, %1655
  %1799 = fadd fast float %1796, %1656
  %1800 = fadd fast float %1788, %1797
  %1801 = fmul fast float %1798, %1790
  %1802 = call float @dx.op.tertiary.f32(i32 46, float %1799, float %1791, float %1801)  ; FMad(a,b,c)
  %1803 = call float @dx.op.tertiary.f32(i32 46, float %1800, float %1792, float %1802)  ; FMad(a,b,c)
  %1804 = fsub fast float %1803, %1797
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 2
  %1807 = fsub fast float %1804, %1806
  %1808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.i32 %1808, 0
  %1810 = call i32 @dx.op.binary.i32(i32 40, i32 %1686, i32 %1809)  ; UMin(a,b)
  %1811 = mul i32 %1810, 36
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = add i32 %1811, 4
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1817 = fmul fast float %1816, %1708
  %1818 = fmul fast float %1816, %1710
  %1819 = extractvalue %dx.types.CBufRet.f32 %1815, 1
  %1820 = fadd fast float %1817, %1819
  %1821 = fadd fast float %1818, %1819
  %1822 = icmp eq i32 %1813, 0
  br i1 %1822, label %1891, label %1823

; <label>:1823                                    ; preds = %1754
  br label %1824

; <label>:1824                                    ; preds = %1881, %1823
  %1825 = phi float [ %1882, %1881 ], [ 0.000000e+00, %1823 ]
  %1826 = phi float [ %1883, %1881 ], [ 0.000000e+00, %1823 ]
  %1827 = phi float [ %1884, %1881 ], [ 0.000000e+00, %1823 ]
  %1828 = phi float [ %1885, %1881 ], [ 0.000000e+00, %1823 ]
  %1829 = phi float [ %1886, %1881 ], [ 0.000000e+00, %1823 ]
  %1830 = phi float [ %1887, %1881 ], [ 0.000000e+00, %1823 ]
  %1831 = phi i32 [ %1888, %1881 ], [ 0, %1823 ]
  %1832 = shl i32 %1831, 2
  %1833 = add i32 %1699, %1832
  %1834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.f32 %1834, 0
  %1836 = add i32 %1703, %1832
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = add i32 %1838, 0
  %1840 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1839, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1841 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1840, i32 0)  ; GetDimensions(handle,mipLevel)
  %1842 = extractvalue %dx.types.Dimensions %1841, 0
  %1843 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1842)  ; FirstbitLo(value)
  %1844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.i32 %1844, 1
  %1846 = sub nsw i32 %1845, %1843
  %1847 = sitofp i32 %1846 to float
  %1848 = fsub fast float %1732, %1847
  %1849 = call float @dx.op.binary.f32(i32 35, float %1848, float 0.000000e+00)  ; FMax(a,b)
  %1850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1840, %dx.types.Handle %63, float %1820, float %1821, float %1835, float undef, i32 0, i32 0, i32 undef, float %1849)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = fcmp fast ogt float %1851, 0.000000e+00
  br i1 %1852, label %1853, label %1881

; <label>:1853                                    ; preds = %1824
  %1854 = add i32 %1814, %1832
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = and i32 %1856, 32767
  %1858 = mul nuw nsw i32 %1857, 928
  %1859 = add nuw nsw i32 %1858, 48
  %1860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.f32 %1860, 0
  %1862 = extractvalue %dx.types.ResRet.f32 %1860, 1
  %1863 = extractvalue %dx.types.ResRet.f32 %1860, 2
  %1864 = add nuw nsw i32 %1858, 60
  %1865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.ResRet.f32 %1865, 1
  %1868 = extractvalue %dx.types.ResRet.f32 %1865, 2
  %1869 = fmul fast float %1861, %1851
  %1870 = fmul fast float %1862, %1851
  %1871 = fmul fast float %1863, %1851
  %1872 = fadd fast float %1869, %1825
  %1873 = fadd fast float %1870, %1826
  %1874 = fadd fast float %1871, %1827
  %1875 = fmul fast float %1866, %1851
  %1876 = fmul fast float %1867, %1851
  %1877 = fmul fast float %1868, %1851
  %1878 = fadd fast float %1875, %1828
  %1879 = fadd fast float %1876, %1829
  %1880 = fadd fast float %1877, %1830
  br label %1881

; <label>:1881                                    ; preds = %1853, %1824
  %1882 = phi float [ %1872, %1853 ], [ %1825, %1824 ]
  %1883 = phi float [ %1873, %1853 ], [ %1826, %1824 ]
  %1884 = phi float [ %1874, %1853 ], [ %1827, %1824 ]
  %1885 = phi float [ %1878, %1853 ], [ %1828, %1824 ]
  %1886 = phi float [ %1879, %1853 ], [ %1829, %1824 ]
  %1887 = phi float [ %1880, %1853 ], [ %1830, %1824 ]
  %1888 = add nuw i32 %1831, 1
  %1889 = icmp eq i32 %1888, %1813
  br i1 %1889, label %1890, label %1824

; <label>:1890                                    ; preds = %1881
  br label %1891

; <label>:1891                                    ; preds = %1890, %1754
  %1892 = phi float [ 0.000000e+00, %1754 ], [ %1882, %1890 ]
  %1893 = phi float [ 0.000000e+00, %1754 ], [ %1883, %1890 ]
  %1894 = phi float [ 0.000000e+00, %1754 ], [ %1884, %1890 ]
  %1895 = phi float [ 0.000000e+00, %1754 ], [ %1885, %1890 ]
  %1896 = phi float [ 0.000000e+00, %1754 ], [ %1886, %1890 ]
  %1897 = phi float [ 0.000000e+00, %1754 ], [ %1887, %1890 ]
  %1898 = fadd fast float %1895, %1892
  %1899 = fmul fast float %1898, 0x3F847AE140000000
  %1900 = fadd fast float %1896, %1893
  %1901 = fmul fast float %1900, 0x3F847AE140000000
  %1902 = fadd fast float %1897, %1894
  %1903 = fmul fast float %1902, 0x3F847AE140000000
  br label %1904

; <label>:1904                                    ; preds = %1891, %1688, %1633, %1630, %1601, %1563
  %1905 = phi float [ %1615, %1601 ], [ -1.310720e+05, %1563 ], [ %1807, %1891 ], [ -1.310720e+05, %1633 ], [ -1.310720e+05, %1688 ], [ -1.310720e+05, %1630 ]
  %1906 = phi float [ %1625, %1601 ], [ 0.000000e+00, %1563 ], [ %1899, %1891 ], [ 0.000000e+00, %1633 ], [ 0.000000e+00, %1688 ], [ 0.000000e+00, %1630 ]
  %1907 = phi float [ %1627, %1601 ], [ 0.000000e+00, %1563 ], [ %1901, %1891 ], [ 0.000000e+00, %1633 ], [ 0.000000e+00, %1688 ], [ 0.000000e+00, %1630 ]
  %1908 = phi float [ %1629, %1601 ], [ 0.000000e+00, %1563 ], [ %1903, %1891 ], [ 0.000000e+00, %1633 ], [ 0.000000e+00, %1688 ], [ 0.000000e+00, %1630 ]
  %1909 = phi i1 [ true, %1601 ], [ false, %1563 ], [ true, %1891 ], [ false, %1633 ], [ false, %1688 ], [ false, %1630 ]
  %1910 = and i32 %215, 3
  %1911 = icmp eq i32 %1910, 1
  %1912 = select i1 %1911, float 1.000000e+00, float 0.000000e+00
  %1913 = fsub fast float %1905, %150
  %1914 = call float @dx.op.unary.f32(i32 7, float %1913)  ; Saturate(value)
  %1915 = select i1 %1909, float %1914, float 1.000000e+00
  %1916 = fmul fast float %1915, %1912
  %1917 = icmp eq i32 %1910, 3
  %1918 = select i1 %1917, float 1.000000e+00, float %1916
  %1919 = call float @dx.op.binary.f32(i32 35, float %1479, float %1918)  ; FMax(a,b)
  %1920 = call float @dx.op.unary.f32(i32 7, float %1919)  ; Saturate(value)
  %1921 = fcmp fast une float %1920, 0.000000e+00
  %1922 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %148, float %149, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %1923 = call float @dx.op.unary.f32(i32 25, float %1922)  ; Rsqrt(value)
  br i1 %1921, label %1931, label %1924

; <label>:1924                                    ; preds = %1904
  %1925 = fmul fast float %1923, %148
  %1926 = fmul fast float %1923, %149
  %1927 = fmul fast float %1923, %150
  %1928 = fsub fast float -0.000000e+00, %1925
  %1929 = fsub fast float -0.000000e+00, %1926
  %1930 = fsub fast float -0.000000e+00, %1927
  br label %2099

; <label>:1931                                    ; preds = %1904
  %1932 = fmul fast float %148, %1923
  %1933 = fsub fast float -0.000000e+00, %1932
  %1934 = fmul fast float %149, %1923
  %1935 = fsub fast float -0.000000e+00, %1934
  %1936 = fmul fast float %150, %1923
  %1937 = fsub fast float -0.000000e+00, %1936
  %1938 = call float @dx.op.dot3.f32(i32 55, float %1933, float %1935, float %1937, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %1939 = fmul fast float %1920, 2.500000e+00
  %1940 = call float @dx.op.unary.f32(i32 7, float %1939)  ; Saturate(value)
  %1941 = fmul fast float %1920, 0x4013FFFFE0000000
  %1942 = fadd fast float %1941, 0xBFFFFFFFE0000000
  %1943 = call float @dx.op.unary.f32(i32 7, float %1942)  ; Saturate(value)
  %1944 = fmul fast float %1920, 0x4004000020000000
  %1945 = fadd fast float %1944, 0xBFF8000040000000
  %1946 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  %1947 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1948 = fmul fast float %1509, 1.000000e+01
  %1949 = call float @dx.op.unary.f32(i32 7, float %1948)  ; Saturate(value)
  %1950 = fmul fast float %1949, 2.000000e+00
  %1951 = fsub fast float 3.000000e+00, %1950
  %1952 = fmul fast float %1949, %1949
  %1953 = fmul fast float %1952, %1951
  %1954 = fsub fast float 1.000000e+00, %1953
  %1955 = fsub fast float 0x3FE3333340000000, %1530
  %1956 = fmul fast float %1955, 0x400AAAAAA0000000
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = fmul fast float %1954, %1957
  %1959 = fmul fast float %1542, 0x3FEA2B8620000000
  %1960 = fmul fast float %1543, 0x3FEA2B8620000000
  %1961 = fmul fast float %1544, 0x3FEA2B8620000000
  %1962 = fadd fast float %1959, 0x3FC81DFBA0000000
  %1963 = fmul fast float %1962, %1542
  %1964 = fadd fast float %1963, 0x3F910E6020000000
  %1965 = fadd fast float %1960, 0x3FC81DFBA0000000
  %1966 = fmul fast float %1965, %1543
  %1967 = fadd fast float %1966, 0x3F910E6020000000
  %1968 = fadd fast float %1961, 0x3FC81DFBA0000000
  %1969 = fmul fast float %1968, %1544
  %1970 = fadd fast float %1969, 0x3F910E6020000000
  %1971 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1972 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1973 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  %1974 = fsub fast float %1971, %1542
  %1975 = fsub fast float %1972, %1543
  %1976 = fsub fast float %1973, %1544
  %1977 = fmul fast float %1974, %1947
  %1978 = fmul fast float %1977, %1958
  %1979 = fmul fast float %1975, %1947
  %1980 = fmul fast float %1979, %1958
  %1981 = fmul fast float %1976, %1947
  %1982 = fmul fast float %1981, %1958
  %1983 = fadd fast float %1978, %1542
  %1984 = fadd fast float %1980, %1543
  %1985 = fadd fast float %1982, %1544
  %1986 = fmul fast float %1490, %1490
  %1987 = fmul fast float %1986, %1986
  %1988 = fadd fast float %1943, 1.000000e+00
  %1989 = fsub fast float %1988, %1958
  %1990 = call float @dx.op.unary.f32(i32 7, float %1989)  ; Saturate(value)
  %1991 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = fsub fast float 1.000000e+00, %1987
  %1994 = call float @dx.op.binary.f32(i32 36, float %1990, float %1993)  ; FMin(a,b)
  %1995 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1996 = call float @dx.op.binary.f32(i32 35, float %1994, float %1995)  ; FMax(a,b)
  %1997 = fadd fast float %1992, 0xBFE4CCCCC0000000
  %1998 = fmul fast float %1997, 0x4006DB6DA0000000
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2000 = fmul fast float %1999, 2.000000e+00
  %2001 = fsub fast float 3.000000e+00, %2000
  %2002 = bitcast float %1527 to i32
  %2003 = ashr i32 %2002, 1
  %2004 = add nsw i32 %2003, 532487669
  %2005 = bitcast i32 %2004 to float
  %2006 = fsub fast float 1.000000e+00, %2005
  %2007 = bitcast float %2006 to i32
  %2008 = sub nsw i32 2129859010, %2007
  %2009 = bitcast i32 %2008 to float
  %2010 = fmul fast float %2009, 2.000000e+00
  %2011 = bitcast float %1528 to i32
  %2012 = ashr i32 %2011, 1
  %2013 = add nsw i32 %2012, 532487669
  %2014 = bitcast i32 %2013 to float
  %2015 = fsub fast float 1.000000e+00, %2014
  %2016 = bitcast float %2015 to i32
  %2017 = sub nsw i32 2129859010, %2016
  %2018 = bitcast i32 %2017 to float
  %2019 = fmul fast float %2018, 2.000000e+00
  %2020 = bitcast float %1529 to i32
  %2021 = ashr i32 %2020, 1
  %2022 = add nsw i32 %2021, 532487669
  %2023 = bitcast i32 %2022 to float
  %2024 = fsub fast float 1.000000e+00, %2023
  %2025 = bitcast float %2024 to i32
  %2026 = sub nsw i32 2129859010, %2025
  %2027 = bitcast i32 %2026 to float
  %2028 = fmul fast float %2027, 2.000000e+00
  %2029 = fsub fast float 0x4002A9FBE0000000, %2010
  %2030 = fadd fast float %2010, 0x3FD54FDF00000000
  %2031 = bitcast float %2030 to i32
  %2032 = sub nsw i32 2129859010, %2031
  %2033 = bitcast i32 %2032 to float
  %2034 = fmul fast float %2033, %2029
  %2035 = fmul fast float %2034, %2034
  %2036 = fsub fast float 0x4002A9FBE0000000, %2019
  %2037 = fadd fast float %2019, 0x3FD54FDF00000000
  %2038 = bitcast float %2037 to i32
  %2039 = sub nsw i32 2129859010, %2038
  %2040 = bitcast i32 %2039 to float
  %2041 = fmul fast float %2040, %2036
  %2042 = fmul fast float %2041, %2041
  %2043 = fsub fast float 0x4002A9FBE0000000, %2028
  %2044 = fadd fast float %2028, 0x3FD54FDF00000000
  %2045 = bitcast float %2044 to i32
  %2046 = sub nsw i32 2129859010, %2045
  %2047 = bitcast i32 %2046 to float
  %2048 = fmul fast float %2047, %2043
  %2049 = fmul fast float %2048, %2048
  %2050 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2035)  ; FMax(a,b)
  %2051 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2042)  ; FMax(a,b)
  %2052 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2049)  ; FMax(a,b)
  %2053 = fsub fast float 1.000000e+00, %1938
  %2054 = fadd fast float %2053, %1954
  %2055 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  %2056 = fsub fast float 1.000000e+00, %1918
  %2057 = fmul fast float %1996, %2056
  %2058 = fmul fast float %1999, %1999
  %2059 = fmul fast float %2058, %2057
  %2060 = fmul fast float %2059, %2001
  %2061 = fmul fast float %2056, 0xBFE99999A0000000
  %2062 = fmul fast float %2061, %1947
  %2063 = fmul fast float %2062, %1958
  %2064 = fadd fast float %2063, 1.000000e+00
  %2065 = fadd fast float %1530, -1.000000e+00
  %2066 = fmul fast float %2064, %2065
  %2067 = fadd fast float %2066, 1.000000e+00
  %2068 = fsub fast float %2050, %1527
  %2069 = fsub fast float %2051, %1528
  %2070 = fsub fast float %2052, %1529
  %2071 = fmul fast float %2060, %2068
  %2072 = fmul fast float %2060, %2069
  %2073 = fmul fast float %2060, %2070
  %2074 = fadd fast float %2071, %1527
  %2075 = fadd fast float %2072, %1528
  %2076 = fadd fast float %2073, %1529
  %2077 = fsub fast float %77, %1506
  %2078 = fsub fast float %78, %1507
  %2079 = fsub fast float %79, %1508
  %2080 = fmul fast float %2060, %2077
  %2081 = fmul fast float %2060, %2078
  %2082 = fmul fast float %2060, %2079
  %2083 = fadd fast float %2080, %1506
  %2084 = fadd fast float %2081, %1507
  %2085 = fadd fast float %2082, %1508
  %2086 = fmul fast float %2060, %2055
  %2087 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2088 = fsub fast float 1.000000e+00, %2087
  %2089 = fmul fast float %2086, %2088
  %2090 = fadd fast float %2089, %2087
  %2091 = fsub fast float 1.000000e+00, %1490
  %2092 = fmul fast float %2060, %2091
  %2093 = fadd fast float %2092, %1490
  %2094 = call float @dx.op.dot3.f32(i32 55, float %2083, float %2084, float %2085, float %2083, float %2084, float %2085)  ; Dot3(ax,ay,az,bx,by,bz)
  %2095 = call float @dx.op.unary.f32(i32 25, float %2094)  ; Rsqrt(value)
  %2096 = fmul fast float %2083, %2095
  %2097 = fmul fast float %2084, %2095
  %2098 = fmul fast float %2085, %2095
  br label %2099

; <label>:2099                                    ; preds = %1931, %1924
  %2100 = phi float [ %1930, %1924 ], [ %1937, %1931 ]
  %2101 = phi float [ %1929, %1924 ], [ %1935, %1931 ]
  %2102 = phi float [ %1928, %1924 ], [ %1933, %1931 ]
  %2103 = phi float [ %1927, %1924 ], [ %1936, %1931 ]
  %2104 = phi float [ %1926, %1924 ], [ %1934, %1931 ]
  %2105 = phi float [ %1925, %1924 ], [ %1932, %1931 ]
  %2106 = phi float [ %1527, %1924 ], [ %2074, %1931 ]
  %2107 = phi float [ %1528, %1924 ], [ %2075, %1931 ]
  %2108 = phi float [ %1529, %1924 ], [ %2076, %1931 ]
  %2109 = phi float [ %1542, %1924 ], [ %1983, %1931 ]
  %2110 = phi float [ %1543, %1924 ], [ %1984, %1931 ]
  %2111 = phi float [ %1544, %1924 ], [ %1985, %1931 ]
  %2112 = phi float [ %1506, %1924 ], [ %2096, %1931 ]
  %2113 = phi float [ %1507, %1924 ], [ %2097, %1931 ]
  %2114 = phi float [ %1508, %1924 ], [ %2098, %1931 ]
  %2115 = phi float [ %1530, %1924 ], [ %2090, %1931 ]
  %2116 = phi float [ %1490, %1924 ], [ %2093, %1931 ]
  %2117 = fsub fast float -0.000000e+00, %150
  %2118 = select i1 %239, float 0.000000e+00, float %2108
  %2119 = call float @dx.op.dot3.f32(i32 55, float %2112, float %2113, float %2114, float %2102, float %2101, float %2100)  ; Dot3(ax,ay,az,bx,by,bz)
  %2120 = call float @dx.op.unary.f32(i32 7, float %2119)  ; Saturate(value)
  %2121 = call float @dx.op.dot3.f32(i32 55, float %2105, float %2104, float %2103, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %2122 = fmul fast float %2121, 2.000000e+00
  %2123 = fmul fast float %2122, %2112
  %2124 = fmul fast float %2122, %2113
  %2125 = fmul fast float %2122, %2114
  %2126 = fsub fast float %2105, %2123
  %2127 = fsub fast float %2104, %2124
  %2128 = fsub fast float %2103, %2125
  %2129 = call float @dx.op.binary.f32(i32 36, float %2116, float 1.000000e+00)  ; FMin(a,b)
  %2130 = fsub fast float 1.000000e+00, %2129
  %2131 = bitcast float %2130 to i32
  %2132 = ashr i32 %2131, 1
  %2133 = add nsw i32 %2132, 532487669
  %2134 = bitcast i32 %2133 to float
  %2135 = fsub fast float 1.000000e+00, %2115
  %2136 = call float @dx.op.binary.f32(i32 35, float %2135, float 0x3F847AE140000000)  ; FMax(a,b)
  %2137 = fmul fast float %2136, %2136
  %2138 = fmul fast float %2137, %2137
  %2139 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  %2140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %65, float %2134, float %2138, float %2139, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2141 = extractvalue %dx.types.ResRet.f32 %2140, 0
  %2142 = fsub fast float 1.000000e+00, %2116
  %2143 = bitcast float %2142 to i32
  %2144 = sub nsw i32 2129859010, %2143
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.CBufRet.f32 %2145, 1
  %2148 = fadd fast float %2146, %148
  %2149 = fadd fast float %2147, %149
  %2150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.i32 %2150, 0
  %2152 = icmp eq i32 %2151, 1
  br i1 %2152, label %2153, label %2188

; <label>:2153                                    ; preds = %2099
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.CBufRet.f32 %2154, 1
  %2157 = fsub fast float %2148, %2155
  %2158 = fsub fast float %2149, %2156
  %2159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.f32 %2159, 0
  %2161 = extractvalue %dx.types.CBufRet.f32 %2159, 1
  %2162 = fmul fast float %2157, %2160
  %2163 = fmul fast float %2158, %2161
  %2164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %65, float %2162, float %2163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2166 = fcmp fast ogt float %2165, 0.000000e+00
  %2167 = extractvalue %dx.types.CBufRet.i32 %2150, 3
  %2168 = icmp ne i32 %2167, 0
  %2169 = and i1 %2166, %2168
  br i1 %2169, label %2170, label %2188, !dx.controlflow.hints !106

; <label>:2170                                    ; preds = %2153
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 0
  %2173 = extractvalue %dx.types.CBufRet.f32 %2171, 1
  %2174 = fsub fast float %2148, %2172
  %2175 = fsub fast float %2149, %2173
  %2176 = fmul fast float %2174, %2174
  %2177 = fmul fast float %2175, %2175
  %2178 = fadd fast float %2176, %2177
  %2179 = uitofp i32 %2167 to float
  %2180 = fmul fast float %2179, %2179
  %2181 = fcmp fast ogt float %2178, %2180
  br i1 %2181, label %2188, label %2182

; <label>:2182                                    ; preds = %2170
  %2183 = call float @dx.op.unary.f32(i32 24, float %2178)  ; Sqrt(value)
  %2184 = fsub fast float %2179, %2183
  %2185 = fmul fast float %2184, 0x3F75555560000000
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = call float @dx.op.binary.f32(i32 36, float %2186, float %2165)  ; FMin(a,b)
  br label %2188

; <label>:2188                                    ; preds = %2182, %2170, %2153, %2099
  %2189 = phi float [ 1.000000e+00, %2099 ], [ %2187, %2182 ], [ %2165, %2153 ], [ 0.000000e+00, %2170 ]
  %2190 = fcmp fast ogt float %2189, 0.000000e+00
  br i1 %2190, label %2191, label %2290, !dx.controlflow.hints !107

; <label>:2191                                    ; preds = %2188
  %2192 = fadd fast float %179, 5.000000e-01
  %2193 = call float @dx.op.unary.f32(i32 27, float %2192)  ; Round_ni(value)
  %2194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %65, float %177, float %178, float %2193, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2195 = extractvalue %dx.types.ResRet.f32 %2194, 0
  %2196 = extractvalue %dx.types.ResRet.f32 %2194, 1
  %2197 = extractvalue %dx.types.ResRet.f32 %2194, 2
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2200 = fmul fast float %2199, %2195
  %2201 = fmul fast float %2199, %2196
  %2202 = fmul fast float %2199, %2197
  %2203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %65, float %177, float %178, float %2193, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2204 = extractvalue %dx.types.ResRet.f32 %2203, 0
  %2205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %65, float %177, float %178, float %2193, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2206 = extractvalue %dx.types.ResRet.f32 %2205, 0
  %2207 = extractvalue %dx.types.ResRet.f32 %2205, 1
  %2208 = fmul fast float %2206, 2.000000e+00
  %2209 = fmul fast float %2207, 2.000000e+00
  %2210 = fadd fast float %2208, -1.000000e+00
  %2211 = fadd fast float %2209, -1.000000e+00
  %2212 = fadd fast float %2210, %2211
  %2213 = fmul fast float %2212, 5.000000e-01
  %2214 = fsub fast float %2210, %2211
  %2215 = fmul fast float %2214, 5.000000e-01
  %2216 = call float @dx.op.unary.f32(i32 6, float %2213)  ; FAbs(value)
  %2217 = fsub fast float 1.000000e+00, %2216
  %2218 = call float @dx.op.unary.f32(i32 6, float %2215)  ; FAbs(value)
  %2219 = fsub fast float %2217, %2218
  %2220 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2219)  ; FMax(a,b)
  %2221 = call float @dx.op.dot3.f32(i32 55, float %2213, float %2215, float %2220, float %2213, float %2215, float %2220)  ; Dot3(ax,ay,az,bx,by,bz)
  %2222 = bitcast float %2221 to i32
  %2223 = ashr i32 %2222, 1
  %2224 = sub nsw i32 1597250115, %2223
  %2225 = bitcast i32 %2224 to float
  %2226 = fmul fast float %2225, %2213
  %2227 = fmul fast float %2225, %2215
  %2228 = fmul fast float %2225, %2220
  %2229 = fsub fast float 1.000000e+00, %2204
  %2230 = fdiv fast float %2229, %2228
  %2231 = fmul fast float %2228, %77
  %2232 = fmul fast float %2228, %78
  %2233 = fmul fast float %2228, %79
  %2234 = fmul fast float %2226, %73
  %2235 = fmul fast float %2226, %74
  %2236 = fmul fast float %2226, %75
  %2237 = fadd fast float %2231, %2234
  %2238 = fadd fast float %2232, %2235
  %2239 = fadd fast float %2233, %2236
  %2240 = fmul fast float %2227, %112
  %2241 = fmul fast float %2227, %113
  %2242 = fmul fast float %2227, %114
  %2243 = fadd fast float %2237, %2240
  %2244 = fadd fast float %2238, %2241
  %2245 = fadd fast float %2239, %2242
  %2246 = call float @dx.op.dot3.f32(i32 55, float %2243, float %2244, float %2245, float %2243, float %2244, float %2245)  ; Dot3(ax,ay,az,bx,by,bz)
  %2247 = call float @dx.op.unary.f32(i32 25, float %2246)  ; Rsqrt(value)
  %2248 = fmul fast float %2243, %2247
  %2249 = fmul fast float %2244, %2247
  %2250 = fmul fast float %2245, %2247
  %2251 = call float @dx.op.dot3.f32(i32 55, float %2112, float %2113, float %2114, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2253 = fmul fast float %2252, 5.000000e-01
  %2254 = fadd fast float %2253, 5.000000e-01
  %2255 = fmul fast float %2254, %2204
  %2256 = call float @dx.op.dot3.f32(i32 55, float %2112, float %2113, float %2114, float %2248, float %2249, float %2250)  ; Dot3(ax,ay,az,bx,by,bz)
  %2257 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2258 = fmul fast float %2257, %2230
  %2259 = fadd fast float %2255, %2258
  %2260 = fsub fast float 5.000000e-01, %2253
  %2261 = fmul fast float %2260, %2109
  %2262 = fmul fast float %2260, %2110
  %2263 = fmul fast float %2260, %2111
  %2264 = fadd fast float %2259, %2261
  %2265 = fmul fast float %2264, %2200
  %2266 = fadd fast float %2259, %2262
  %2267 = fmul fast float %2266, %2201
  %2268 = fadd fast float %2259, %2263
  %2269 = fmul fast float %2268, %2202
  %2270 = call float @dx.op.dot3.f32(i32 55, float %2126, float %2127, float %2128, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %2271 = call float @dx.op.unary.f32(i32 7, float %2270)  ; Saturate(value)
  %2272 = fmul fast float %2271, 5.000000e-01
  %2273 = fadd fast float %2272, 5.000000e-01
  %2274 = fmul fast float %2273, %2204
  %2275 = call float @dx.op.dot3.f32(i32 55, float %2126, float %2127, float %2128, float %2248, float %2249, float %2250)  ; Dot3(ax,ay,az,bx,by,bz)
  %2276 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  %2277 = fmul fast float %2276, %2230
  %2278 = fadd fast float %2274, %2277
  %2279 = fsub fast float 5.000000e-01, %2272
  %2280 = fmul fast float %2279, %2109
  %2281 = fmul fast float %2279, %2110
  %2282 = fmul fast float %2279, %2111
  %2283 = fadd fast float %2278, %2280
  %2284 = fmul fast float %2283, %2200
  %2285 = fadd fast float %2278, %2281
  %2286 = fmul fast float %2285, %2201
  %2287 = fadd fast float %2278, %2282
  %2288 = fmul fast float %2287, %2202
  %2289 = call float @dx.op.dot3.f32(i32 55, float %2200, float %2201, float %2202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2290

; <label>:2290                                    ; preds = %2191, %2188
  %2291 = phi float [ %2289, %2191 ], [ 0.000000e+00, %2188 ]
  %2292 = phi float [ %2284, %2191 ], [ 0.000000e+00, %2188 ]
  %2293 = phi float [ %2286, %2191 ], [ 0.000000e+00, %2188 ]
  %2294 = phi float [ %2288, %2191 ], [ 0.000000e+00, %2188 ]
  %2295 = phi float [ %2265, %2191 ], [ 0.000000e+00, %2188 ]
  %2296 = phi float [ %2267, %2191 ], [ 0.000000e+00, %2188 ]
  %2297 = phi float [ %2269, %2191 ], [ 0.000000e+00, %2188 ]
  %2298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.f32 %2298, 0
  %2300 = fcmp fast ogt float %2299, 0.000000e+00
  %2301 = and i1 %2190, %2300
  br i1 %2301, label %2302, label %2506, !dx.controlflow.hints !108

; <label>:2302                                    ; preds = %2290
  %2303 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2304 = fadd fast float %2303, %150
  %2305 = fmul fast float %2112, 3.200000e+01
  %2306 = fmul fast float %2113, 3.200000e+01
  %2307 = fadd fast float %2148, %2305
  %2308 = fadd fast float %2149, %2306
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2312 = fsub fast float %2307, %2310
  %2313 = fsub fast float %2308, %2311
  %2314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2315 = extractvalue %dx.types.CBufRet.f32 %2314, 0
  %2316 = extractvalue %dx.types.CBufRet.f32 %2314, 1
  %2317 = fmul fast float %2312, %2315
  %2318 = fmul fast float %2313, %2316
  %2319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.CBufRet.f32 %2319, 1
  %2322 = fsub fast float %2148, %2320
  %2323 = fsub fast float %2149, %2321
  %2324 = fmul fast float %2322, %2322
  %2325 = fmul fast float %2323, %2323
  %2326 = fadd fast float %2324, %2325
  %2327 = call float @dx.op.unary.f32(i32 24, float %2326)  ; Sqrt(value)
  %2328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2328, 0
  %2330 = extractvalue %dx.types.CBufRet.f32 %2328, 1
  %2331 = fsub fast float %2327, %2329
  %2332 = fdiv fast float %2331, %2330
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2334 = fmul fast float %2333, 2.000000e+00
  %2335 = fsub fast float 3.000000e+00, %2334
  %2336 = fmul fast float %2333, %2333
  %2337 = fmul fast float %2336, %2335
  %2338 = fcmp fast oge float %2317, 0.000000e+00
  %2339 = fcmp fast ole float %2317, 1.000000e+00
  %2340 = and i1 %2339, %2338
  %2341 = fcmp fast oge float %2318, 0.000000e+00
  %2342 = and i1 %2341, %2340
  %2343 = fcmp fast ole float %2318, 1.000000e+00
  %2344 = and i1 %2343, %2342
  %2345 = fcmp fast ogt float %2337, 0.000000e+00
  %2346 = and i1 %2345, %2344
  br i1 %2346, label %2347, label %2470, !dx.controlflow.hints !109

; <label>:2347                                    ; preds = %2302
  %2348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2348, 2
  %2350 = extractvalue %dx.types.CBufRet.f32 %2348, 3
  %2351 = fmul fast float %2349, %2317
  %2352 = fmul fast float %2350, %2318
  %2353 = call float @dx.op.unary.f32(i32 27, float %2351)  ; Round_ni(value)
  %2354 = call float @dx.op.unary.f32(i32 27, float %2352)  ; Round_ni(value)
  %2355 = fptosi float %2353 to i32
  %2356 = fptosi float %2354 to i32
  %2357 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %55, i32 0, i32 %2355, i32 %2356, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = lshr i32 %2358, 16
  %2360 = icmp eq i32 %2359, 65535
  br i1 %2360, label %2470, label %2361

; <label>:2361                                    ; preds = %2347
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 0
  %2364 = fmul fast float %2363, %2317
  %2365 = extractvalue %dx.types.CBufRet.f32 %2362, 1
  %2366 = fadd fast float %2364, %2365
  %2367 = extractvalue %dx.types.CBufRet.f32 %2362, 2
  %2368 = fmul fast float %2367, %2318
  %2369 = extractvalue %dx.types.CBufRet.f32 %2362, 3
  %2370 = fadd fast float %2368, %2369
  %2371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %65, float %2366, float %2370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2372 = extractvalue %dx.types.ResRet.f32 %2371, 0
  %2373 = extractvalue %dx.types.ResRet.f32 %2371, 1
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 1
  %2376 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2377 = fsub fast float %2375, %2376
  %2378 = fmul fast float %2377, %2372
  %2379 = fadd fast float %2378, %2376
  %2380 = extractvalue %dx.types.CBufRet.f32 %2374, 3
  %2381 = extractvalue %dx.types.CBufRet.f32 %2374, 2
  %2382 = fsub fast float %2380, %2381
  %2383 = fmul fast float %2382, %2373
  %2384 = fadd fast float %2383, %2381
  %2385 = fsub fast float %2304, %2379
  %2386 = fsub fast float %2384, %2379
  %2387 = fdiv fast float %2385, %2386
  %2388 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2389 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2390 = extractvalue %dx.types.CBufRet.f32 %2348, 0
  %2391 = extractvalue %dx.types.CBufRet.f32 %2348, 1
  %2392 = fmul fast float %2390, %2317
  %2393 = fmul fast float %2391, %2318
  %2394 = fmul fast float %2392, 1.250000e-01
  %2395 = fmul fast float %2393, 1.250000e-01
  %2396 = call float @dx.op.unary.f32(i32 27, float %2394)  ; Round_ni(value)
  %2397 = call float @dx.op.unary.f32(i32 27, float %2395)  ; Round_ni(value)
  %2398 = fmul fast float %2396, 8.000000e+00
  %2399 = fmul fast float %2397, 8.000000e+00
  %2400 = fsub fast float %2392, %2398
  %2401 = fsub fast float %2393, %2399
  %2402 = fadd fast float %2400, 5.000000e-01
  %2403 = fadd fast float %2401, 5.000000e-01
  %2404 = and i32 %2359, 255
  %2405 = lshr i32 %2358, 24
  %2406 = mul nuw nsw i32 %2404, 9
  %2407 = uitofp i32 %2406 to float
  %2408 = mul nuw nsw i32 %2405, 9
  %2409 = uitofp i32 %2408 to float
  %2410 = fadd fast float %2402, %2407
  %2411 = fadd fast float %2403, %2409
  %2412 = fdiv fast float %2410, %2299
  %2413 = fdiv fast float %2411, %2389
  %2414 = fmul fast float %2388, 4.375000e-01
  %2415 = fadd fast float %2414, 3.125000e-02
  %2416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %65, float %2412, float %2413, float %2415, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2417 = extractvalue %dx.types.ResRet.f32 %2416, 0
  %2418 = extractvalue %dx.types.ResRet.f32 %2416, 1
  %2419 = extractvalue %dx.types.ResRet.f32 %2416, 2
  %2420 = fadd fast float %2414, 5.312500e-01
  %2421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %65, float %2412, float %2413, float %2420, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2422 = extractvalue %dx.types.ResRet.f32 %2421, 0
  %2423 = extractvalue %dx.types.ResRet.f32 %2421, 1
  %2424 = extractvalue %dx.types.ResRet.f32 %2421, 2
  %2425 = fmul fast float %2422, 2.000000e+00
  %2426 = fmul fast float %2423, 2.000000e+00
  %2427 = fmul fast float %2424, 2.000000e+00
  %2428 = fadd fast float %2425, -1.000000e+00
  %2429 = fadd fast float %2426, -1.000000e+00
  %2430 = fadd fast float %2427, -1.000000e+00
  %2431 = fmul fast float %2428, %2428
  %2432 = fmul fast float %2429, %2429
  %2433 = fadd fast float %2431, %2432
  %2434 = fmul fast float %2430, %2430
  %2435 = fadd fast float %2433, %2434
  %2436 = call float @dx.op.unary.f32(i32 24, float %2435)  ; Sqrt(value)
  %2437 = fcmp fast ogt float %2436, 0.000000e+00
  br i1 %2437, label %2438, label %2442

; <label>:2438                                    ; preds = %2361
  %2439 = fdiv fast float %2428, %2436
  %2440 = fdiv fast float %2429, %2436
  %2441 = fdiv fast float %2430, %2436
  br label %2442

; <label>:2442                                    ; preds = %2438, %2361
  %2443 = phi float [ %2439, %2438 ], [ 0.000000e+00, %2361 ]
  %2444 = phi float [ %2440, %2438 ], [ 0.000000e+00, %2361 ]
  %2445 = phi float [ %2441, %2438 ], [ 0.000000e+00, %2361 ]
  %2446 = call float @dx.op.dot3.f32(i32 55, float %2443, float %2444, float %2445, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %2447 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2446)  ; FMax(a,b)
  %2448 = fmul fast float %2447, 0x400C5BF8A0000000
  %2449 = fmul fast float %2417, %2337
  %2450 = fmul fast float %2449, %2448
  %2451 = fmul fast float %2418, %2337
  %2452 = fmul fast float %2451, %2448
  %2453 = fmul fast float %2419, %2337
  %2454 = fmul fast float %2453, %2448
  %2455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2456 = extractvalue %dx.types.CBufRet.f32 %2455, 3
  %2457 = fmul fast float %2450, %2456
  %2458 = fmul fast float %2452, %2456
  %2459 = fmul fast float %2454, %2456
  %2460 = fcmp fast ogt float %2304, %2384
  br i1 %2460, label %2461, label %2470

; <label>:2461                                    ; preds = %2442
  %2462 = fmul fast float %2386, 0x3FC24924A0000000
  %2463 = fsub fast float %2304, %2384
  %2464 = fdiv fast float %2463, %2462
  %2465 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2466 = fsub fast float 1.000000e+00, %2465
  %2467 = fmul fast float %2466, %2457
  %2468 = fmul fast float %2466, %2458
  %2469 = fmul fast float %2466, %2459
  br label %2470

; <label>:2470                                    ; preds = %2461, %2442, %2347, %2302
  %2471 = phi float [ %2469, %2461 ], [ %2459, %2442 ], [ 0.000000e+00, %2347 ], [ 0.000000e+00, %2302 ]
  %2472 = phi float [ %2468, %2461 ], [ %2458, %2442 ], [ 0.000000e+00, %2347 ], [ 0.000000e+00, %2302 ]
  %2473 = phi float [ %2467, %2461 ], [ %2457, %2442 ], [ 0.000000e+00, %2347 ], [ 0.000000e+00, %2302 ]
  %2474 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2473)  ; FMax(a,b)
  %2475 = fmul fast float %2474, 0x3FD20DD760000000
  %2476 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2126, float %2127, float %2128)  ; Dot3(ax,ay,az,bx,by,bz)
  %2477 = fmul fast float %2476, 0x3FDF454380000000
  %2478 = fmul fast float %2476, %2476
  %2479 = fmul fast float %2478, 0x3FEE471020000000
  %2480 = fadd fast float %2479, 0xBFD42F6020000000
  %2481 = call float @dx.op.dot3.f32(i32 55, float %2474, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2477, float %2480)  ; Dot3(ax,ay,az,bx,by,bz)
  %2482 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2472)  ; FMax(a,b)
  %2483 = fmul fast float %2482, 0x3FD20DD760000000
  %2484 = call float @dx.op.dot3.f32(i32 55, float %2482, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2477, float %2480)  ; Dot3(ax,ay,az,bx,by,bz)
  %2485 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2471)  ; FMax(a,b)
  %2486 = fmul fast float %2485, 0x3FD20DD760000000
  %2487 = call float @dx.op.dot3.f32(i32 55, float %2485, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2477, float %2480)  ; Dot3(ax,ay,az,bx,by,bz)
  %2488 = call float @dx.op.binary.f32(i32 35, float %2475, float 0.000000e+00)  ; FMax(a,b)
  %2489 = call float @dx.op.binary.f32(i32 35, float %2483, float 0.000000e+00)  ; FMax(a,b)
  %2490 = call float @dx.op.binary.f32(i32 35, float %2486, float 0.000000e+00)  ; FMax(a,b)
  %2491 = call float @dx.op.binary.f32(i32 35, float %2481, float 0.000000e+00)  ; FMax(a,b)
  %2492 = call float @dx.op.binary.f32(i32 35, float %2484, float 0.000000e+00)  ; FMax(a,b)
  %2493 = call float @dx.op.binary.f32(i32 35, float %2487, float 0.000000e+00)  ; FMax(a,b)
  %2494 = fmul fast float %2488, %2189
  %2495 = fmul fast float %2489, %2189
  %2496 = fmul fast float %2490, %2189
  %2497 = fadd fast float %2494, %2295
  %2498 = fadd fast float %2495, %2296
  %2499 = fadd fast float %2496, %2297
  %2500 = fmul fast float %2491, %2189
  %2501 = fmul fast float %2492, %2189
  %2502 = fmul fast float %2493, %2189
  %2503 = fadd fast float %2500, %2292
  %2504 = fadd fast float %2501, %2293
  %2505 = fadd fast float %2502, %2294
  br label %2506

; <label>:2506                                    ; preds = %2470, %2290
  %2507 = phi float [ %2503, %2470 ], [ %2292, %2290 ]
  %2508 = phi float [ %2504, %2470 ], [ %2293, %2290 ]
  %2509 = phi float [ %2505, %2470 ], [ %2294, %2290 ]
  %2510 = phi float [ %2497, %2470 ], [ %2295, %2290 ]
  %2511 = phi float [ %2498, %2470 ], [ %2296, %2290 ]
  %2512 = phi float [ %2499, %2470 ], [ %2297, %2290 ]
  %2513 = fcmp fast olt float %2189, 1.000000e+00
  br i1 %2513, label %2514, label %3337, !dx.controlflow.hints !110

; <label>:2514                                    ; preds = %2506
  %2515 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2516 = fadd fast float %2515, %150
  %2517 = fmul fast float %2112, 3.200000e+01
  %2518 = fmul fast float %2113, 3.200000e+01
  %2519 = fadd fast float %2148, %2517
  %2520 = fadd fast float %2149, %2518
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.CBufRet.f32 %2521, 1
  %2524 = fsub fast float %2519, %2522
  %2525 = fsub fast float %2520, %2523
  %2526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2527 = extractvalue %dx.types.CBufRet.f32 %2526, 0
  %2528 = extractvalue %dx.types.CBufRet.f32 %2526, 1
  %2529 = fmul fast float %2524, %2527
  %2530 = fmul fast float %2525, %2528
  %2531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2532 = extractvalue %dx.types.CBufRet.f32 %2531, 0
  %2533 = fmul fast float %2529, %2532
  %2534 = extractvalue %dx.types.CBufRet.f32 %2531, 1
  %2535 = fadd fast float %2533, %2534
  %2536 = extractvalue %dx.types.CBufRet.f32 %2531, 2
  %2537 = fmul fast float %2536, %2530
  %2538 = extractvalue %dx.types.CBufRet.f32 %2531, 3
  %2539 = fadd fast float %2537, %2538
  %2540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %65, float %2535, float %2539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2541 = extractvalue %dx.types.ResRet.f32 %2540, 0
  %2542 = extractvalue %dx.types.ResRet.f32 %2540, 1
  %2543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.f32 %2543, 1
  %2545 = extractvalue %dx.types.CBufRet.f32 %2543, 0
  %2546 = fsub fast float %2544, %2545
  %2547 = fmul fast float %2546, %2541
  %2548 = fadd fast float %2547, %2545
  %2549 = extractvalue %dx.types.CBufRet.f32 %2543, 3
  %2550 = extractvalue %dx.types.CBufRet.f32 %2543, 2
  %2551 = fsub fast float %2549, %2550
  %2552 = fmul fast float %2551, %2542
  %2553 = fadd fast float %2552, %2550
  %2554 = fsub fast float %2516, %2548
  %2555 = fsub fast float %2553, %2548
  %2556 = fdiv fast float %2554, %2555
  %2557 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  %2558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2559 = extractvalue %dx.types.CBufRet.f32 %2558, 0
  %2560 = fmul fast float %2559, %2557
  %2561 = extractvalue %dx.types.CBufRet.f32 %2558, 1
  %2562 = fadd fast float %2560, %2561
  %2563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %65, float %2535, float %2539, float %2562, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2564 = extractvalue %dx.types.ResRet.f32 %2563, 0
  %2565 = extractvalue %dx.types.ResRet.f32 %2563, 1
  %2566 = extractvalue %dx.types.ResRet.f32 %2563, 2
  %2567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.f32 %2567, 0
  %2569 = extractvalue %dx.types.CBufRet.f32 %2567, 1
  %2570 = extractvalue %dx.types.CBufRet.f32 %2567, 2
  %2571 = fmul fast float %2568, %2564
  %2572 = fmul fast float %2569, %2565
  %2573 = fmul fast float %2570, %2566
  %2574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2575 = extractvalue %dx.types.CBufRet.f32 %2574, 0
  %2576 = extractvalue %dx.types.CBufRet.f32 %2574, 1
  %2577 = extractvalue %dx.types.CBufRet.f32 %2574, 2
  %2578 = fadd fast float %2571, %2575
  %2579 = fadd fast float %2572, %2576
  %2580 = fadd fast float %2573, %2577
  %2581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2582 = extractvalue %dx.types.CBufRet.f32 %2581, 0
  %2583 = fmul fast float %2582, %2529
  %2584 = extractvalue %dx.types.CBufRet.f32 %2581, 1
  %2585 = fadd fast float %2583, %2584
  %2586 = extractvalue %dx.types.CBufRet.f32 %2581, 2
  %2587 = fmul fast float %2586, %2530
  %2588 = extractvalue %dx.types.CBufRet.f32 %2581, 3
  %2589 = fadd fast float %2587, %2588
  %2590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2591 = extractvalue %dx.types.CBufRet.f32 %2590, 0
  %2592 = extractvalue %dx.types.CBufRet.f32 %2590, 1
  %2593 = extractvalue %dx.types.CBufRet.f32 %2590, 2
  %2594 = extractvalue %dx.types.CBufRet.f32 %2590, 3
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 0
  %2597 = extractvalue %dx.types.CBufRet.f32 %2595, 1
  %2598 = extractvalue %dx.types.CBufRet.f32 %2595, 2
  %2599 = extractvalue %dx.types.CBufRet.f32 %2595, 3
  %2600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2585, float %2589, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2601 = extractvalue %dx.types.ResRet.f32 %2600, 0
  %2602 = extractvalue %dx.types.ResRet.f32 %2600, 1
  %2603 = extractvalue %dx.types.ResRet.f32 %2600, 2
  %2604 = extractvalue %dx.types.ResRet.f32 %2600, 3
  %2605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2585, float %2589, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2606 = extractvalue %dx.types.ResRet.f32 %2605, 0
  %2607 = extractvalue %dx.types.ResRet.f32 %2605, 1
  %2608 = extractvalue %dx.types.ResRet.f32 %2605, 2
  %2609 = extractvalue %dx.types.ResRet.f32 %2605, 3
  %2610 = fmul fast float %2601, %2578
  %2611 = fmul fast float %2606, %2578
  %2612 = fmul fast float %2608, %2578
  %2613 = fmul fast float %2604, %2578
  %2614 = fadd fast float %2610, %2591
  %2615 = fadd fast float %2611, %2592
  %2616 = fadd fast float %2612, %2593
  %2617 = fadd fast float %2613, %2594
  %2618 = fmul fast float %2602, %2578
  %2619 = fmul fast float %2607, %2578
  %2620 = fadd fast float %2618, %2596
  %2621 = fadd fast float %2619, %2597
  %2622 = fmul fast float %2603, %2578
  %2623 = fmul fast float %2609, %2578
  %2624 = fadd fast float %2622, %2598
  %2625 = fadd fast float %2623, %2599
  %2626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2585, float %2589, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2627 = extractvalue %dx.types.ResRet.f32 %2626, 0
  %2628 = extractvalue %dx.types.ResRet.f32 %2626, 1
  %2629 = extractvalue %dx.types.ResRet.f32 %2626, 2
  %2630 = extractvalue %dx.types.ResRet.f32 %2626, 3
  %2631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2585, float %2589, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2632 = extractvalue %dx.types.ResRet.f32 %2631, 0
  %2633 = extractvalue %dx.types.ResRet.f32 %2631, 1
  %2634 = extractvalue %dx.types.ResRet.f32 %2631, 2
  %2635 = extractvalue %dx.types.ResRet.f32 %2631, 3
  %2636 = fmul fast float %2627, %2579
  %2637 = fmul fast float %2632, %2579
  %2638 = fmul fast float %2634, %2579
  %2639 = fmul fast float %2630, %2579
  %2640 = fadd fast float %2614, %2636
  %2641 = fadd fast float %2615, %2637
  %2642 = fadd fast float %2616, %2638
  %2643 = fadd fast float %2617, %2639
  %2644 = fmul fast float %2628, %2579
  %2645 = fmul fast float %2633, %2579
  %2646 = fadd fast float %2620, %2644
  %2647 = fadd fast float %2621, %2645
  %2648 = fmul fast float %2629, %2579
  %2649 = fmul fast float %2635, %2579
  %2650 = fadd fast float %2624, %2648
  %2651 = fadd fast float %2625, %2649
  %2652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2585, float %2589, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2653 = extractvalue %dx.types.ResRet.f32 %2652, 0
  %2654 = extractvalue %dx.types.ResRet.f32 %2652, 1
  %2655 = extractvalue %dx.types.ResRet.f32 %2652, 2
  %2656 = extractvalue %dx.types.ResRet.f32 %2652, 3
  %2657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %65, float %2585, float %2589, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2658 = extractvalue %dx.types.ResRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.ResRet.f32 %2657, 1
  %2660 = extractvalue %dx.types.ResRet.f32 %2657, 2
  %2661 = extractvalue %dx.types.ResRet.f32 %2657, 3
  %2662 = fmul fast float %2653, %2580
  %2663 = fmul fast float %2658, %2580
  %2664 = fmul fast float %2660, %2580
  %2665 = fmul fast float %2656, %2580
  %2666 = fadd fast float %2640, %2662
  %2667 = fadd fast float %2641, %2663
  %2668 = fadd fast float %2642, %2664
  %2669 = fadd fast float %2643, %2665
  %2670 = fmul fast float %2654, %2580
  %2671 = fmul fast float %2659, %2580
  %2672 = fadd fast float %2646, %2670
  %2673 = fadd fast float %2647, %2671
  %2674 = fmul fast float %2655, %2580
  %2675 = fmul fast float %2661, %2580
  %2676 = fadd fast float %2650, %2674
  %2677 = fadd fast float %2651, %2675
  %2678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2679 = extractvalue %dx.types.CBufRet.f32 %2678, 0
  %2680 = fsub fast float %2148, %2679
  %2681 = fsub fast float %2522, %2148
  %2682 = call float @dx.op.binary.f32(i32 35, float %2681, float %2680)  ; FMax(a,b)
  %2683 = extractvalue %dx.types.CBufRet.f32 %2678, 1
  %2684 = fsub fast float %2149, %2683
  %2685 = fsub fast float %2523, %2149
  %2686 = call float @dx.op.binary.f32(i32 35, float %2685, float %2684)  ; FMax(a,b)
  %2687 = call float @dx.op.binary.f32(i32 35, float %2682, float %2686)  ; FMax(a,b)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2526, 3
  %2689 = fmul fast float %2688, %2687
  %2690 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  %2691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2692 = extractvalue %dx.types.CBufRet.f32 %2691, 0
  %2693 = extractvalue %dx.types.CBufRet.f32 %2691, 1
  %2694 = extractvalue %dx.types.CBufRet.f32 %2691, 2
  %2695 = extractvalue %dx.types.CBufRet.f32 %2691, 3
  %2696 = fsub fast float %2692, %2666
  %2697 = fsub fast float %2693, %2667
  %2698 = fsub fast float %2694, %2668
  %2699 = fsub fast float %2695, %2669
  %2700 = fmul fast float %2696, %2690
  %2701 = fmul fast float %2697, %2690
  %2702 = fmul fast float %2698, %2690
  %2703 = fmul fast float %2699, %2690
  %2704 = fadd fast float %2700, %2666
  %2705 = fadd fast float %2701, %2667
  %2706 = fadd fast float %2702, %2668
  %2707 = fadd fast float %2703, %2669
  %2708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.f32 %2708, 0
  %2710 = extractvalue %dx.types.CBufRet.f32 %2708, 1
  %2711 = fsub fast float %2709, %2672
  %2712 = fsub fast float %2710, %2673
  %2713 = fmul fast float %2711, %2690
  %2714 = fmul fast float %2712, %2690
  %2715 = fadd fast float %2713, %2672
  %2716 = fadd fast float %2714, %2673
  %2717 = extractvalue %dx.types.CBufRet.f32 %2708, 2
  %2718 = extractvalue %dx.types.CBufRet.f32 %2708, 3
  %2719 = fsub fast float %2717, %2676
  %2720 = fsub fast float %2718, %2677
  %2721 = fmul fast float %2719, %2690
  %2722 = fmul fast float %2720, %2690
  %2723 = fadd fast float %2721, %2676
  %2724 = fadd fast float %2722, %2677
  %2725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2726 = extractvalue %dx.types.CBufRet.f32 %2725, 0
  %2727 = fmul fast float %2726, %2704
  %2728 = fmul fast float %2726, %2705
  %2729 = fmul fast float %2726, %2706
  %2730 = fmul fast float %2726, %2707
  %2731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.f32 %2731, 0
  %2733 = fmul fast float %2732, %2715
  %2734 = fmul fast float %2732, %2716
  %2735 = fadd fast float %2733, %2727
  %2736 = fadd fast float %2734, %2729
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 0
  %2739 = fmul fast float %2738, %2723
  %2740 = fmul fast float %2738, %2724
  %2741 = fadd fast float %2735, %2739
  %2742 = fadd fast float %2736, %2740
  %2743 = extractvalue %dx.types.CBufRet.f32 %2725, 1
  %2744 = fmul fast float %2743, %2704
  %2745 = fmul fast float %2743, %2705
  %2746 = fmul fast float %2743, %2706
  %2747 = fmul fast float %2743, %2707
  %2748 = extractvalue %dx.types.CBufRet.f32 %2731, 1
  %2749 = fmul fast float %2748, %2715
  %2750 = fmul fast float %2748, %2716
  %2751 = fadd fast float %2749, %2744
  %2752 = fadd fast float %2750, %2746
  %2753 = extractvalue %dx.types.CBufRet.f32 %2737, 1
  %2754 = fmul fast float %2753, %2723
  %2755 = fmul fast float %2753, %2724
  %2756 = fadd fast float %2751, %2754
  %2757 = fadd fast float %2752, %2755
  %2758 = extractvalue %dx.types.CBufRet.f32 %2725, 2
  %2759 = fmul fast float %2758, %2704
  %2760 = fmul fast float %2758, %2705
  %2761 = fmul fast float %2758, %2706
  %2762 = fmul fast float %2758, %2707
  %2763 = extractvalue %dx.types.CBufRet.f32 %2731, 2
  %2764 = fmul fast float %2763, %2715
  %2765 = fmul fast float %2763, %2716
  %2766 = fadd fast float %2764, %2759
  %2767 = fadd fast float %2765, %2761
  %2768 = extractvalue %dx.types.CBufRet.f32 %2737, 2
  %2769 = fmul fast float %2768, %2723
  %2770 = fmul fast float %2768, %2724
  %2771 = fadd fast float %2766, %2769
  %2772 = fadd fast float %2767, %2770
  %2773 = fmul fast float %2760, %2760
  %2774 = fmul fast float %2772, %2772
  %2775 = fmul fast float %2762, %2762
  %2776 = fadd fast float %2775, %2773
  %2777 = fadd fast float %2776, %2774
  %2778 = call float @dx.op.unary.f32(i32 24, float %2777)  ; Sqrt(value)
  %2779 = fcmp fast ugt float %2778, 0.000000e+00
  br i1 %2779, label %2780, label %2795

; <label>:2780                                    ; preds = %2514
  %2781 = fsub fast float -0.000000e+00, %2762
  %2782 = fdiv fast float %2781, %2778
  %2783 = fsub fast float -0.000000e+00, %2760
  %2784 = fdiv fast float %2783, %2778
  %2785 = fdiv fast float %2772, %2778
  %2786 = fmul fast float %2771, 0x3FE279A760000000
  %2787 = fmul fast float %2784, %2760
  %2788 = fmul fast float %2785, %2772
  %2789 = fmul fast float %2782, %2762
  %2790 = fadd fast float %2787, %2789
  %2791 = fsub fast float %2790, %2788
  %2792 = call float @dx.op.unary.f32(i32 6, float %2791)  ; FAbs(value)
  %2793 = fadd fast float %2792, 0x3DDB7CDFE0000000
  %2794 = fdiv fast float %2786, %2793
  br label %2795

; <label>:2795                                    ; preds = %2780, %2514
  %2796 = phi float [ %2794, %2780 ], [ 1.000000e+00, %2514 ]
  %2797 = fmul fast float %2745, %2745
  %2798 = fmul fast float %2757, %2757
  %2799 = fmul fast float %2747, %2747
  %2800 = fadd fast float %2799, %2797
  %2801 = fadd fast float %2800, %2798
  %2802 = call float @dx.op.unary.f32(i32 24, float %2801)  ; Sqrt(value)
  %2803 = fcmp fast ugt float %2802, 0.000000e+00
  br i1 %2803, label %2804, label %2819

; <label>:2804                                    ; preds = %2795
  %2805 = fsub fast float -0.000000e+00, %2747
  %2806 = fdiv fast float %2805, %2802
  %2807 = fsub fast float -0.000000e+00, %2745
  %2808 = fdiv fast float %2807, %2802
  %2809 = fdiv fast float %2757, %2802
  %2810 = fmul fast float %2756, 0x3FE279A760000000
  %2811 = fmul fast float %2808, %2745
  %2812 = fmul fast float %2809, %2757
  %2813 = fmul fast float %2806, %2747
  %2814 = fadd fast float %2811, %2813
  %2815 = fsub fast float %2814, %2812
  %2816 = call float @dx.op.unary.f32(i32 6, float %2815)  ; FAbs(value)
  %2817 = fadd fast float %2816, 0x3DDB7CDFE0000000
  %2818 = fdiv fast float %2810, %2817
  br label %2819

; <label>:2819                                    ; preds = %2804, %2795
  %2820 = phi float [ %2818, %2804 ], [ 1.000000e+00, %2795 ]
  %2821 = call float @dx.op.binary.f32(i32 36, float %2820, float %2796)  ; FMin(a,b)
  %2822 = fmul fast float %2728, %2728
  %2823 = fmul fast float %2742, %2742
  %2824 = fmul fast float %2730, %2730
  %2825 = fadd fast float %2824, %2822
  %2826 = fadd fast float %2825, %2823
  %2827 = call float @dx.op.unary.f32(i32 24, float %2826)  ; Sqrt(value)
  %2828 = fcmp fast ugt float %2827, 0.000000e+00
  br i1 %2828, label %2829, label %2844

; <label>:2829                                    ; preds = %2819
  %2830 = fsub fast float -0.000000e+00, %2730
  %2831 = fdiv fast float %2830, %2827
  %2832 = fsub fast float -0.000000e+00, %2728
  %2833 = fdiv fast float %2832, %2827
  %2834 = fdiv fast float %2742, %2827
  %2835 = fmul fast float %2741, 0x3FE279A760000000
  %2836 = fmul fast float %2833, %2728
  %2837 = fmul fast float %2834, %2742
  %2838 = fmul fast float %2831, %2730
  %2839 = fadd fast float %2836, %2838
  %2840 = fsub fast float %2839, %2837
  %2841 = call float @dx.op.unary.f32(i32 6, float %2840)  ; FAbs(value)
  %2842 = fadd fast float %2841, 0x3DDB7CDFE0000000
  %2843 = fdiv fast float %2835, %2842
  br label %2844

; <label>:2844                                    ; preds = %2829, %2819
  %2845 = phi float [ %2843, %2829 ], [ 1.000000e+00, %2819 ]
  %2846 = call float @dx.op.binary.f32(i32 36, float %2845, float %2821)  ; FMin(a,b)
  %2847 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  %2848 = fcmp fast olt float %2847, 1.000000e+00
  br i1 %2848, label %2849, label %2859

; <label>:2849                                    ; preds = %2844
  %2850 = fmul fast float %2847, %2728
  %2851 = fmul fast float %2847, %2742
  %2852 = fmul fast float %2847, %2730
  %2853 = fmul fast float %2847, %2745
  %2854 = fmul fast float %2847, %2757
  %2855 = fmul fast float %2847, %2747
  %2856 = fmul fast float %2847, %2760
  %2857 = fmul fast float %2847, %2772
  %2858 = fmul fast float %2847, %2762
  br label %2859

; <label>:2859                                    ; preds = %2849, %2844
  %2860 = phi float [ %2856, %2849 ], [ %2760, %2844 ]
  %2861 = phi float [ %2857, %2849 ], [ %2772, %2844 ]
  %2862 = phi float [ %2858, %2849 ], [ %2762, %2844 ]
  %2863 = phi float [ %2853, %2849 ], [ %2745, %2844 ]
  %2864 = phi float [ %2854, %2849 ], [ %2757, %2844 ]
  %2865 = phi float [ %2855, %2849 ], [ %2747, %2844 ]
  %2866 = phi float [ %2850, %2849 ], [ %2728, %2844 ]
  %2867 = phi float [ %2851, %2849 ], [ %2742, %2844 ]
  %2868 = phi float [ %2852, %2849 ], [ %2730, %2844 ]
  %2869 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2741)  ; FMax(a,b)
  %2870 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2756)  ; FMax(a,b)
  %2871 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2771)  ; FMax(a,b)
  %2872 = fcmp fast oge float %2529, 0.000000e+00
  %2873 = and i1 %2872, %2300
  %2874 = fcmp fast ole float %2529, 1.000000e+00
  %2875 = and i1 %2874, %2873
  %2876 = fcmp fast oge float %2530, 0.000000e+00
  %2877 = and i1 %2876, %2875
  %2878 = fcmp fast ole float %2530, 1.000000e+00
  %2879 = and i1 %2878, %2877
  br i1 %2879, label %2880, label %3025, !dx.controlflow.hints !111

; <label>:2880                                    ; preds = %2859
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 2
  %2883 = extractvalue %dx.types.CBufRet.f32 %2881, 3
  %2884 = fmul fast float %2882, %2529
  %2885 = fmul fast float %2883, %2530
  %2886 = call float @dx.op.unary.f32(i32 27, float %2884)  ; Round_ni(value)
  %2887 = call float @dx.op.unary.f32(i32 27, float %2885)  ; Round_ni(value)
  %2888 = fptosi float %2886 to i32
  %2889 = fptosi float %2887 to i32
  %2890 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %55, i32 0, i32 %2888, i32 %2889, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, 65535
  %2893 = lshr i32 %2891, 16
  %2894 = icmp eq i32 %2892, 65535
  br i1 %2894, label %2931, label %2895

; <label>:2895                                    ; preds = %2880
  %2896 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2897 = extractvalue %dx.types.CBufRet.f32 %2881, 0
  %2898 = extractvalue %dx.types.CBufRet.f32 %2881, 1
  %2899 = fmul fast float %2897, %2529
  %2900 = fmul fast float %2898, %2530
  %2901 = fmul fast float %2899, 1.250000e-01
  %2902 = fmul fast float %2900, 1.250000e-01
  %2903 = call float @dx.op.unary.f32(i32 27, float %2901)  ; Round_ni(value)
  %2904 = call float @dx.op.unary.f32(i32 27, float %2902)  ; Round_ni(value)
  %2905 = fmul fast float %2903, 8.000000e+00
  %2906 = fmul fast float %2904, 8.000000e+00
  %2907 = and i32 %2891, 255
  %2908 = lshr i32 %2891, 8
  %2909 = and i32 %2908, 255
  %2910 = mul nuw nsw i32 %2907, 9
  %2911 = uitofp i32 %2910 to float
  %2912 = mul nuw nsw i32 %2909, 9
  %2913 = uitofp i32 %2912 to float
  %2914 = fadd fast float %2911, 5.000000e-01
  %2915 = fadd fast float %2914, %2899
  %2916 = fsub fast float %2915, %2905
  %2917 = fadd fast float %2913, 5.000000e-01
  %2918 = fadd fast float %2917, %2900
  %2919 = fsub fast float %2918, %2906
  %2920 = fdiv fast float %2916, %2299
  %2921 = fdiv fast float %2919, %2896
  %2922 = fmul fast float %2557, 4.375000e-01
  %2923 = fadd fast float %2922, 3.125000e-02
  %2924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %65, float %2920, float %2921, float %2923, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  %2926 = extractvalue %dx.types.ResRet.f32 %2924, 1
  %2927 = extractvalue %dx.types.ResRet.f32 %2924, 2
  %2928 = fadd fast float %2925, %2869
  %2929 = fadd fast float %2926, %2870
  %2930 = fadd fast float %2927, %2871
  br label %2931

; <label>:2931                                    ; preds = %2895, %2880
  %2932 = phi float [ %2930, %2895 ], [ %2871, %2880 ]
  %2933 = phi float [ %2929, %2895 ], [ %2870, %2880 ]
  %2934 = phi float [ %2928, %2895 ], [ %2869, %2880 ]
  %2935 = icmp eq i32 %2893, 65535
  br i1 %2935, label %3025, label %2936

; <label>:2936                                    ; preds = %2931
  %2937 = extractvalue %dx.types.CBufRet.f32 %2298, 1
  %2938 = extractvalue %dx.types.CBufRet.f32 %2881, 0
  %2939 = extractvalue %dx.types.CBufRet.f32 %2881, 1
  %2940 = fmul fast float %2938, %2529
  %2941 = fmul fast float %2939, %2530
  %2942 = fmul fast float %2940, 1.250000e-01
  %2943 = fmul fast float %2941, 1.250000e-01
  %2944 = call float @dx.op.unary.f32(i32 27, float %2942)  ; Round_ni(value)
  %2945 = call float @dx.op.unary.f32(i32 27, float %2943)  ; Round_ni(value)
  %2946 = fmul fast float %2944, 8.000000e+00
  %2947 = fmul fast float %2945, 8.000000e+00
  %2948 = fsub fast float %2940, %2946
  %2949 = fsub fast float %2941, %2947
  %2950 = fadd fast float %2948, 5.000000e-01
  %2951 = fadd fast float %2949, 5.000000e-01
  %2952 = and i32 %2893, 255
  %2953 = lshr i32 %2891, 24
  %2954 = mul nuw nsw i32 %2952, 9
  %2955 = uitofp i32 %2954 to float
  %2956 = mul nuw nsw i32 %2953, 9
  %2957 = uitofp i32 %2956 to float
  %2958 = fadd fast float %2950, %2955
  %2959 = fadd fast float %2951, %2957
  %2960 = fdiv fast float %2958, %2299
  %2961 = fdiv fast float %2959, %2937
  %2962 = fmul fast float %2557, 4.375000e-01
  %2963 = fadd fast float %2962, 3.125000e-02
  %2964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %65, float %2960, float %2961, float %2963, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.ResRet.f32 %2964, 1
  %2967 = extractvalue %dx.types.ResRet.f32 %2964, 2
  %2968 = fadd fast float %2962, 5.312500e-01
  %2969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %65, float %2960, float %2961, float %2968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2970 = extractvalue %dx.types.ResRet.f32 %2969, 0
  %2971 = extractvalue %dx.types.ResRet.f32 %2969, 1
  %2972 = extractvalue %dx.types.ResRet.f32 %2969, 2
  %2973 = fmul fast float %2970, 2.000000e+00
  %2974 = fmul fast float %2971, 2.000000e+00
  %2975 = fmul fast float %2972, 2.000000e+00
  %2976 = fadd fast float %2973, -1.000000e+00
  %2977 = fadd fast float %2974, -1.000000e+00
  %2978 = fadd fast float %2975, -1.000000e+00
  %2979 = fmul fast float %2976, %2976
  %2980 = fmul fast float %2977, %2977
  %2981 = fadd fast float %2979, %2980
  %2982 = fmul fast float %2978, %2978
  %2983 = fadd fast float %2981, %2982
  %2984 = call float @dx.op.unary.f32(i32 24, float %2983)  ; Sqrt(value)
  %2985 = fcmp fast ogt float %2984, 0.000000e+00
  br i1 %2985, label %2986, label %2990

; <label>:2986                                    ; preds = %2936
  %2987 = fdiv fast float %2976, %2984
  %2988 = fdiv fast float %2977, %2984
  %2989 = fdiv fast float %2978, %2984
  br label %2990

; <label>:2990                                    ; preds = %2986, %2936
  %2991 = phi float [ %2987, %2986 ], [ 0.000000e+00, %2936 ]
  %2992 = phi float [ %2988, %2986 ], [ 0.000000e+00, %2936 ]
  %2993 = phi float [ %2989, %2986 ], [ 0.000000e+00, %2936 ]
  %2994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2995 = extractvalue %dx.types.CBufRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.CBufRet.f32 %2994, 1
  %2997 = fsub fast float %2148, %2995
  %2998 = fsub fast float %2149, %2996
  %2999 = fmul fast float %2997, %2997
  %3000 = fmul fast float %2998, %2998
  %3001 = fadd fast float %2999, %3000
  %3002 = call float @dx.op.unary.f32(i32 24, float %3001)  ; Sqrt(value)
  %3003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3004 = extractvalue %dx.types.CBufRet.f32 %3003, 0
  %3005 = extractvalue %dx.types.CBufRet.f32 %3003, 1
  %3006 = fsub fast float %3002, %3004
  %3007 = fdiv fast float %3006, %3005
  %3008 = call float @dx.op.unary.f32(i32 7, float %3007)  ; Saturate(value)
  %3009 = fmul fast float %3008, 2.000000e+00
  %3010 = fsub fast float 3.000000e+00, %3009
  %3011 = fmul fast float %3008, %3008
  %3012 = fmul fast float %3011, %3010
  %3013 = call float @dx.op.dot3.f32(i32 55, float %2991, float %2992, float %2993, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3014 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3013)  ; FMax(a,b)
  %3015 = fmul fast float %3014, 0x400C5BF8A0000000
  %3016 = fmul fast float %3012, %2965
  %3017 = fmul fast float %3016, %3015
  %3018 = fadd fast float %3017, %2934
  %3019 = fmul fast float %3012, %2966
  %3020 = fmul fast float %3019, %3015
  %3021 = fadd fast float %3020, %2933
  %3022 = fmul fast float %3012, %2967
  %3023 = fmul fast float %3022, %3015
  %3024 = fadd fast float %3023, %2932
  br label %3025

; <label>:3025                                    ; preds = %2990, %2931, %2859
  %3026 = phi float [ %3024, %2990 ], [ %2932, %2931 ], [ %2871, %2859 ]
  %3027 = phi float [ %3021, %2990 ], [ %2933, %2931 ], [ %2870, %2859 ]
  %3028 = phi float [ %3018, %2990 ], [ %2934, %2931 ], [ %2869, %2859 ]
  %3029 = fcmp fast ogt float %2516, %2553
  %3030 = and i1 %2872, %3029
  %3031 = and i1 %2874, %3030
  %3032 = and i1 %2876, %3031
  %3033 = and i1 %2878, %3032
  br i1 %3033, label %3034, label %3091, !dx.controlflow.hints !112

; <label>:3034                                    ; preds = %3025
  %3035 = fmul fast float %2555, 0x3FC24924A0000000
  %3036 = fsub fast float %2516, %2553
  %3037 = fdiv fast float %3036, %3035
  %3038 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3040 = extractvalue %dx.types.CBufRet.f32 %3039, 0
  %3041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3042 = extractvalue %dx.types.CBufRet.f32 %3041, 0
  %3043 = extractvalue %dx.types.CBufRet.f32 %3041, 1
  %3044 = extractvalue %dx.types.CBufRet.f32 %3041, 2
  %3045 = fsub fast float %3040, %3028
  %3046 = fsub fast float %3042, %2866
  %3047 = fsub fast float %3043, %2867
  %3048 = fsub fast float %3044, %2868
  %3049 = fmul fast float %3045, %3038
  %3050 = fmul fast float %3046, %3038
  %3051 = fmul fast float %3047, %3038
  %3052 = fmul fast float %3048, %3038
  %3053 = fadd fast float %3049, %3028
  %3054 = fadd fast float %3050, %2866
  %3055 = fadd fast float %3051, %2867
  %3056 = fadd fast float %3052, %2868
  %3057 = extractvalue %dx.types.CBufRet.f32 %3039, 1
  %3058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3059 = extractvalue %dx.types.CBufRet.f32 %3058, 0
  %3060 = extractvalue %dx.types.CBufRet.f32 %3058, 1
  %3061 = extractvalue %dx.types.CBufRet.f32 %3058, 2
  %3062 = fsub fast float %3057, %3027
  %3063 = fsub fast float %3059, %2863
  %3064 = fsub fast float %3060, %2864
  %3065 = fsub fast float %3061, %2865
  %3066 = fmul fast float %3062, %3038
  %3067 = fmul fast float %3063, %3038
  %3068 = fmul fast float %3064, %3038
  %3069 = fmul fast float %3065, %3038
  %3070 = fadd fast float %3066, %3027
  %3071 = fadd fast float %3067, %2863
  %3072 = fadd fast float %3068, %2864
  %3073 = fadd fast float %3069, %2865
  %3074 = extractvalue %dx.types.CBufRet.f32 %3039, 2
  %3075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3076 = extractvalue %dx.types.CBufRet.f32 %3075, 0
  %3077 = extractvalue %dx.types.CBufRet.f32 %3075, 1
  %3078 = extractvalue %dx.types.CBufRet.f32 %3075, 2
  %3079 = fsub fast float %3074, %3026
  %3080 = fsub fast float %3076, %2860
  %3081 = fsub fast float %3077, %2861
  %3082 = fsub fast float %3078, %2862
  %3083 = fmul fast float %3079, %3038
  %3084 = fmul fast float %3080, %3038
  %3085 = fmul fast float %3081, %3038
  %3086 = fmul fast float %3082, %3038
  %3087 = fadd fast float %3083, %3026
  %3088 = fadd fast float %3084, %2860
  %3089 = fadd fast float %3085, %2861
  %3090 = fadd fast float %3086, %2862
  br label %3091

; <label>:3091                                    ; preds = %3034, %3025
  %3092 = phi float [ %3087, %3034 ], [ %3026, %3025 ]
  %3093 = phi float [ %3088, %3034 ], [ %2860, %3025 ]
  %3094 = phi float [ %3089, %3034 ], [ %2861, %3025 ]
  %3095 = phi float [ %3090, %3034 ], [ %2862, %3025 ]
  %3096 = phi float [ %3070, %3034 ], [ %3027, %3025 ]
  %3097 = phi float [ %3071, %3034 ], [ %2863, %3025 ]
  %3098 = phi float [ %3072, %3034 ], [ %2864, %3025 ]
  %3099 = phi float [ %3073, %3034 ], [ %2865, %3025 ]
  %3100 = phi float [ %3053, %3034 ], [ %3028, %3025 ]
  %3101 = phi float [ %3054, %3034 ], [ %2866, %3025 ]
  %3102 = phi float [ %3055, %3034 ], [ %2867, %3025 ]
  %3103 = phi float [ %3056, %3034 ], [ %2868, %3025 ]
  %3104 = extractvalue %dx.types.CBufRet.f32 %2678, 3
  %3105 = fmul fast float %3104, %3100
  %3106 = fmul fast float %3104, %3096
  %3107 = fmul fast float %3104, %3092
  %3108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.f32 %3108, 3
  %3110 = fmul fast float %3105, %3109
  %3111 = fmul fast float %3106, %3109
  %3112 = fmul fast float %3107, %3109
  %3113 = call float @dx.op.dot3.f32(i32 55, float %3110, float %3111, float %3112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3114 = fmul fast float %3113, 0x3FD20DD760000000
  %3115 = fmul fast float %3101, 1.500000e+00
  %3116 = fmul fast float %3115, %3104
  %3117 = fmul fast float %3116, %3109
  %3118 = fmul fast float %3102, 1.500000e+00
  %3119 = fmul fast float %3118, %3104
  %3120 = fmul fast float %3119, %3109
  %3121 = fmul fast float %3103, 1.500000e+00
  %3122 = fmul fast float %3121, %3104
  %3123 = fmul fast float %3122, %3109
  %3124 = fmul fast float %3097, 1.500000e+00
  %3125 = fmul fast float %3124, %3104
  %3126 = fmul fast float %3125, %3109
  %3127 = fmul fast float %3098, 1.500000e+00
  %3128 = fmul fast float %3127, %3104
  %3129 = fmul fast float %3128, %3109
  %3130 = fmul fast float %3099, 1.500000e+00
  %3131 = fmul fast float %3130, %3104
  %3132 = fmul fast float %3131, %3109
  %3133 = fmul fast float %3093, 1.500000e+00
  %3134 = fmul fast float %3133, %3104
  %3135 = fmul fast float %3134, %3109
  %3136 = fmul fast float %3094, 1.500000e+00
  %3137 = fmul fast float %3136, %3104
  %3138 = fmul fast float %3137, %3109
  %3139 = fmul fast float %3095, 1.500000e+00
  %3140 = fmul fast float %3139, %3104
  %3141 = fmul fast float %3140, %3109
  %3142 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3110)  ; FMax(a,b)
  %3143 = call float @dx.op.dot3.f32(i32 55, float %3117, float %3120, float %3123, float %3117, float %3120, float %3123)  ; Dot3(ax,ay,az,bx,by,bz)
  %3144 = fcmp fast oeq float %3143, 0.000000e+00
  %3145 = fcmp fast oeq float %3142, 0.000000e+00
  %3146 = or i1 %3145, %3144
  br i1 %3146, label %3176, label %3147

; <label>:3147                                    ; preds = %3091
  %3148 = fsub fast float -0.000000e+00, %3123
  %3149 = fsub fast float -0.000000e+00, %3117
  %3150 = call float @dx.op.unary.f32(i32 24, float %3143)  ; Sqrt(value)
  %3151 = fdiv fast float %3150, %3142
  %3152 = fcmp fast ogt float %3151, 0x3FFB6F8900000000
  %3153 = select i1 %3152, float 0x3FFB6F8900000000, float %3151
  %3154 = fmul fast float %3153, 0x3FE8A23460000000
  %3155 = call float @dx.op.unary.f32(i32 7, float %3154)  ; Saturate(value)
  %3156 = call float @dx.op.binary.f32(i32 35, float %3153, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3157 = fmul fast float %3155, %3142
  %3158 = fmul fast float %3156, 0x3FF279A740000000
  %3159 = fadd fast float %3158, -1.000000e+00
  %3160 = call float @dx.op.dot3.f32(i32 55, float %3148, float %3149, float %3120, float %3148, float %3149, float %3120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3161 = call float @dx.op.unary.f32(i32 25, float %3160)  ; Rsqrt(value)
  %3162 = fmul fast float %3161, %3148
  %3163 = fmul fast float %3161, %3149
  %3164 = fmul fast float %3161, %3120
  %3165 = fmul fast float %3159, %3159
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = fmul fast float %3156, 0x40005F8BE0000000
  %3168 = fsub fast float 0x400C5BF8A0000000, %3167
  %3169 = fdiv fast float %3157, %3168
  %3170 = fmul fast float %3169, 0x3FEE31C3C0000000
  %3171 = fmul fast float %3170, %3166
  %3172 = fmul fast float %3156, 0x3FDACB7480000000
  %3173 = fadd fast float %3172, 0xBFD7347680000000
  %3174 = fmul fast float %3173, %3169
  %3175 = fmul fast float %3174, %3166
  br label %3176

; <label>:3176                                    ; preds = %3147, %3091
  %3177 = phi float [ %3162, %3147 ], [ 0.000000e+00, %3091 ]
  %3178 = phi float [ %3163, %3147 ], [ 0.000000e+00, %3091 ]
  %3179 = phi float [ %3164, %3147 ], [ 0.000000e+00, %3091 ]
  %3180 = phi float [ %3171, %3147 ], [ 0.000000e+00, %3091 ]
  %3181 = phi float [ %3175, %3147 ], [ 0.000000e+00, %3091 ]
  %3182 = call float @dx.op.dot3.f32(i32 55, float %3177, float %3178, float %3179, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3183 = fmul fast float %3182, %3182
  %3184 = fmul fast float %3183, 0x3FEE471020000000
  %3185 = fadd fast float %3184, 0xBFD42F6020000000
  %3186 = fmul fast float %3142, 0x3FD20DD760000000
  %3187 = fmul fast float %3185, %3181
  %3188 = fmul fast float %3180, 0x3FDF454380000000
  %3189 = fmul fast float %3188, %3182
  %3190 = fadd fast float %3189, %3186
  %3191 = fadd fast float %3190, %3187
  %3192 = call float @dx.op.dot3.f32(i32 55, float %3177, float %3178, float %3179, float %2126, float %2127, float %2128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3193 = fmul fast float %3192, 0x3FDF454380000000
  %3194 = fmul fast float %3192, %3192
  %3195 = fmul fast float %3194, 0x3FEE471020000000
  %3196 = fadd fast float %3195, 0xBFD42F6020000000
  %3197 = call float @dx.op.dot3.f32(i32 55, float %3142, float %3180, float %3181, float 0x3FD20DD760000000, float %3193, float %3196)  ; Dot3(ax,ay,az,bx,by,bz)
  %3198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3111)  ; FMax(a,b)
  %3199 = call float @dx.op.dot3.f32(i32 55, float %3126, float %3129, float %3132, float %3126, float %3129, float %3132)  ; Dot3(ax,ay,az,bx,by,bz)
  %3200 = fcmp fast oeq float %3199, 0.000000e+00
  %3201 = fcmp fast oeq float %3198, 0.000000e+00
  %3202 = or i1 %3201, %3200
  br i1 %3202, label %3232, label %3203

; <label>:3203                                    ; preds = %3176
  %3204 = fsub fast float -0.000000e+00, %3132
  %3205 = fsub fast float -0.000000e+00, %3126
  %3206 = call float @dx.op.unary.f32(i32 24, float %3199)  ; Sqrt(value)
  %3207 = fdiv fast float %3206, %3198
  %3208 = fcmp fast ogt float %3207, 0x3FFB6F8900000000
  %3209 = select i1 %3208, float 0x3FFB6F8900000000, float %3207
  %3210 = fmul fast float %3209, 0x3FE8A23460000000
  %3211 = call float @dx.op.unary.f32(i32 7, float %3210)  ; Saturate(value)
  %3212 = call float @dx.op.binary.f32(i32 35, float %3209, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3213 = fmul fast float %3211, %3198
  %3214 = fmul fast float %3212, 0x3FF279A740000000
  %3215 = fadd fast float %3214, -1.000000e+00
  %3216 = call float @dx.op.dot3.f32(i32 55, float %3204, float %3205, float %3129, float %3204, float %3205, float %3129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3217 = call float @dx.op.unary.f32(i32 25, float %3216)  ; Rsqrt(value)
  %3218 = fmul fast float %3217, %3204
  %3219 = fmul fast float %3217, %3205
  %3220 = fmul fast float %3217, %3129
  %3221 = fmul fast float %3215, %3215
  %3222 = fsub fast float 1.000000e+00, %3221
  %3223 = fmul fast float %3212, 0x40005F8BE0000000
  %3224 = fsub fast float 0x400C5BF8A0000000, %3223
  %3225 = fdiv fast float %3213, %3224
  %3226 = fmul fast float %3225, 0x3FEE31C3C0000000
  %3227 = fmul fast float %3226, %3222
  %3228 = fmul fast float %3212, 0x3FDACB7480000000
  %3229 = fadd fast float %3228, 0xBFD7347680000000
  %3230 = fmul fast float %3229, %3225
  %3231 = fmul fast float %3230, %3222
  br label %3232

; <label>:3232                                    ; preds = %3203, %3176
  %3233 = phi float [ %3218, %3203 ], [ 0.000000e+00, %3176 ]
  %3234 = phi float [ %3219, %3203 ], [ 0.000000e+00, %3176 ]
  %3235 = phi float [ %3220, %3203 ], [ 0.000000e+00, %3176 ]
  %3236 = phi float [ %3227, %3203 ], [ 0.000000e+00, %3176 ]
  %3237 = phi float [ %3231, %3203 ], [ 0.000000e+00, %3176 ]
  %3238 = call float @dx.op.dot3.f32(i32 55, float %3233, float %3234, float %3235, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3239 = fmul fast float %3238, %3238
  %3240 = fmul fast float %3239, 0x3FEE471020000000
  %3241 = fadd fast float %3240, 0xBFD42F6020000000
  %3242 = fmul fast float %3198, 0x3FD20DD760000000
  %3243 = fmul fast float %3241, %3237
  %3244 = fmul fast float %3236, 0x3FDF454380000000
  %3245 = fmul fast float %3244, %3238
  %3246 = fadd fast float %3245, %3242
  %3247 = fadd fast float %3246, %3243
  %3248 = call float @dx.op.dot3.f32(i32 55, float %3233, float %3234, float %3235, float %2126, float %2127, float %2128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3249 = fmul fast float %3248, 0x3FDF454380000000
  %3250 = fmul fast float %3248, %3248
  %3251 = fmul fast float %3250, 0x3FEE471020000000
  %3252 = fadd fast float %3251, 0xBFD42F6020000000
  %3253 = call float @dx.op.dot3.f32(i32 55, float %3198, float %3236, float %3237, float 0x3FD20DD760000000, float %3249, float %3252)  ; Dot3(ax,ay,az,bx,by,bz)
  %3254 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3112)  ; FMax(a,b)
  %3255 = call float @dx.op.dot3.f32(i32 55, float %3135, float %3138, float %3141, float %3135, float %3138, float %3141)  ; Dot3(ax,ay,az,bx,by,bz)
  %3256 = fcmp fast oeq float %3255, 0.000000e+00
  %3257 = fcmp fast oeq float %3254, 0.000000e+00
  %3258 = or i1 %3257, %3256
  br i1 %3258, label %3288, label %3259

; <label>:3259                                    ; preds = %3232
  %3260 = fsub fast float -0.000000e+00, %3141
  %3261 = fsub fast float -0.000000e+00, %3135
  %3262 = call float @dx.op.unary.f32(i32 24, float %3255)  ; Sqrt(value)
  %3263 = fdiv fast float %3262, %3254
  %3264 = fcmp fast ogt float %3263, 0x3FFB6F8900000000
  %3265 = select i1 %3264, float 0x3FFB6F8900000000, float %3263
  %3266 = fmul fast float %3265, 0x3FE8A23460000000
  %3267 = call float @dx.op.unary.f32(i32 7, float %3266)  ; Saturate(value)
  %3268 = call float @dx.op.binary.f32(i32 35, float %3265, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3269 = fmul fast float %3267, %3254
  %3270 = fmul fast float %3268, 0x3FF279A740000000
  %3271 = fadd fast float %3270, -1.000000e+00
  %3272 = call float @dx.op.dot3.f32(i32 55, float %3260, float %3261, float %3138, float %3260, float %3261, float %3138)  ; Dot3(ax,ay,az,bx,by,bz)
  %3273 = call float @dx.op.unary.f32(i32 25, float %3272)  ; Rsqrt(value)
  %3274 = fmul fast float %3273, %3260
  %3275 = fmul fast float %3273, %3261
  %3276 = fmul fast float %3273, %3138
  %3277 = fmul fast float %3271, %3271
  %3278 = fsub fast float 1.000000e+00, %3277
  %3279 = fmul fast float %3268, 0x40005F8BE0000000
  %3280 = fsub fast float 0x400C5BF8A0000000, %3279
  %3281 = fdiv fast float %3269, %3280
  %3282 = fmul fast float %3281, 0x3FEE31C3C0000000
  %3283 = fmul fast float %3282, %3278
  %3284 = fmul fast float %3268, 0x3FDACB7480000000
  %3285 = fadd fast float %3284, 0xBFD7347680000000
  %3286 = fmul fast float %3285, %3281
  %3287 = fmul fast float %3286, %3278
  br label %3288

; <label>:3288                                    ; preds = %3259, %3232
  %3289 = phi float [ %3274, %3259 ], [ 0.000000e+00, %3232 ]
  %3290 = phi float [ %3275, %3259 ], [ 0.000000e+00, %3232 ]
  %3291 = phi float [ %3276, %3259 ], [ 0.000000e+00, %3232 ]
  %3292 = phi float [ %3283, %3259 ], [ 0.000000e+00, %3232 ]
  %3293 = phi float [ %3287, %3259 ], [ 0.000000e+00, %3232 ]
  %3294 = call float @dx.op.dot3.f32(i32 55, float %3289, float %3290, float %3291, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3295 = fmul fast float %3294, %3294
  %3296 = fmul fast float %3295, 0x3FEE471020000000
  %3297 = fadd fast float %3296, 0xBFD42F6020000000
  %3298 = fmul fast float %3254, 0x3FD20DD760000000
  %3299 = fmul fast float %3297, %3293
  %3300 = fmul fast float %3292, 0x3FDF454380000000
  %3301 = fmul fast float %3300, %3294
  %3302 = fadd fast float %3301, %3298
  %3303 = fadd fast float %3302, %3299
  %3304 = call float @dx.op.dot3.f32(i32 55, float %3289, float %3290, float %3291, float %2126, float %2127, float %2128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3305 = fmul fast float %3304, 0x3FDF454380000000
  %3306 = fmul fast float %3304, %3304
  %3307 = fmul fast float %3306, 0x3FEE471020000000
  %3308 = fadd fast float %3307, 0xBFD42F6020000000
  %3309 = call float @dx.op.dot3.f32(i32 55, float %3254, float %3292, float %3293, float 0x3FD20DD760000000, float %3305, float %3308)  ; Dot3(ax,ay,az,bx,by,bz)
  %3310 = call float @dx.op.binary.f32(i32 35, float %3191, float 0.000000e+00)  ; FMax(a,b)
  %3311 = call float @dx.op.binary.f32(i32 35, float %3247, float 0.000000e+00)  ; FMax(a,b)
  %3312 = call float @dx.op.binary.f32(i32 35, float %3303, float 0.000000e+00)  ; FMax(a,b)
  %3313 = call float @dx.op.binary.f32(i32 35, float %3197, float 0.000000e+00)  ; FMax(a,b)
  %3314 = call float @dx.op.binary.f32(i32 35, float %3253, float 0.000000e+00)  ; FMax(a,b)
  %3315 = call float @dx.op.binary.f32(i32 35, float %3309, float 0.000000e+00)  ; FMax(a,b)
  %3316 = fsub fast float %2510, %3310
  %3317 = fsub fast float %2511, %3311
  %3318 = fsub fast float %2512, %3312
  %3319 = fmul fast float %3316, %2189
  %3320 = fmul fast float %3317, %2189
  %3321 = fmul fast float %3318, %2189
  %3322 = fadd fast float %3319, %3310
  %3323 = fadd fast float %3320, %3311
  %3324 = fadd fast float %3321, %3312
  %3325 = fsub fast float %2507, %3313
  %3326 = fsub fast float %2508, %3314
  %3327 = fsub fast float %2509, %3315
  %3328 = fmul fast float %3325, %2189
  %3329 = fmul fast float %3326, %2189
  %3330 = fmul fast float %3327, %2189
  %3331 = fadd fast float %3328, %3313
  %3332 = fadd fast float %3329, %3314
  %3333 = fadd fast float %3330, %3315
  %3334 = fsub fast float %2291, %3114
  %3335 = fmul fast float %3334, %2189
  %3336 = fadd fast float %3335, %3114
  br label %3337

; <label>:3337                                    ; preds = %3288, %2506
  %3338 = phi float [ %3336, %3288 ], [ %2291, %2506 ]
  %3339 = phi float [ %3331, %3288 ], [ %2507, %2506 ]
  %3340 = phi float [ %3332, %3288 ], [ %2508, %2506 ]
  %3341 = phi float [ %3333, %3288 ], [ %2509, %2506 ]
  %3342 = phi float [ %3322, %3288 ], [ %2510, %2506 ]
  %3343 = phi float [ %3323, %3288 ], [ %2511, %2506 ]
  %3344 = phi float [ %3324, %3288 ], [ %2512, %2506 ]
  %3345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.f32 %3345, 0
  %3347 = call float @dx.op.binary.f32(i32 36, float %2109, float %3346)  ; FMin(a,b)
  %3348 = fmul fast float %3347, %2130
  %3349 = fsub fast float 1.000000e+00, %3348
  %3350 = bitcast float %3349 to i32
  %3351 = sub nsw i32 2129859010, %3350
  %3352 = bitcast i32 %3351 to float
  %3353 = call float @dx.op.binary.f32(i32 36, float %2110, float %3346)  ; FMin(a,b)
  %3354 = fmul fast float %3353, %2130
  %3355 = fsub fast float 1.000000e+00, %3354
  %3356 = bitcast float %3355 to i32
  %3357 = sub nsw i32 2129859010, %3356
  %3358 = bitcast i32 %3357 to float
  %3359 = call float @dx.op.binary.f32(i32 36, float %2111, float %3346)  ; FMin(a,b)
  %3360 = fmul fast float %3359, %2130
  %3361 = fsub fast float 1.000000e+00, %3360
  %3362 = bitcast float %3361 to i32
  %3363 = sub nsw i32 2129859010, %3362
  %3364 = bitcast i32 %3363 to float
  %3365 = fmul fast float %3342, %2129
  %3366 = fmul fast float %3365, %3352
  %3367 = fmul fast float %3343, %2129
  %3368 = fmul fast float %3367, %3358
  %3369 = fmul fast float %3344, %2129
  %3370 = fmul fast float %3369, %3364
  %3371 = call float @dx.op.binary.f32(i32 36, float %2106, float %3346)  ; FMin(a,b)
  %3372 = fmul fast float %3371, %2130
  %3373 = fsub fast float 1.000000e+00, %3372
  %3374 = bitcast float %3373 to i32
  %3375 = sub nsw i32 2129859010, %3374
  %3376 = bitcast i32 %3375 to float
  %3377 = call float @dx.op.binary.f32(i32 36, float %2107, float %3346)  ; FMin(a,b)
  %3378 = fmul fast float %3377, %2130
  %3379 = fsub fast float 1.000000e+00, %3378
  %3380 = bitcast float %3379 to i32
  %3381 = sub nsw i32 2129859010, %3380
  %3382 = bitcast i32 %3381 to float
  %3383 = call float @dx.op.binary.f32(i32 36, float %2118, float %3346)  ; FMin(a,b)
  %3384 = fmul fast float %3383, %2130
  %3385 = fsub fast float 1.000000e+00, %3384
  %3386 = bitcast float %3385 to i32
  %3387 = sub nsw i32 2129859010, %3386
  %3388 = bitcast i32 %3387 to float
  %3389 = fmul fast float %3339, %2129
  %3390 = fmul fast float %3389, %3376
  %3391 = fmul fast float %3340, %2129
  %3392 = fmul fast float %3391, %3382
  %3393 = fmul fast float %3341, %2129
  %3394 = fmul fast float %3393, %3388
  %3395 = call float @dx.op.dot3.f32(i32 55, float %3366, float %3368, float %3370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3396 = select i1 %239, float 0.000000e+00, float %3366
  %3397 = select i1 %239, float %3395, float %3368
  %3398 = select i1 %239, float 0.000000e+00, float %3370
  %3399 = call float @dx.op.dot3.f32(i32 55, float %3390, float %3392, float %3394, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3400 = select i1 %239, float 0.000000e+00, float %3390
  %3401 = select i1 %239, float %3399, float %3392
  %3402 = select i1 %239, float 0.000000e+00, float %3394
  %3403 = fmul fast float %2120, 9.843750e-01
  %3404 = fmul fast float %2115, 9.843750e-01
  %3405 = fadd fast float %3403, 7.812500e-03
  %3406 = fadd fast float %3404, 7.812500e-03
  %3407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %60, %dx.types.Handle %65, float %3405, float %3406, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3408 = extractvalue %dx.types.ResRet.f32 %3407, 2
  %3409 = extractvalue %dx.types.ResRet.f32 %3407, 3
  %3410 = fmul fast float %3408, %2106
  %3411 = fmul fast float %3408, %2107
  %3412 = fmul fast float %3408, %2118
  %3413 = fadd fast float %3410, %3409
  %3414 = fadd fast float %3411, %3409
  %3415 = fadd fast float %3412, %3409
  %3416 = fcmp fast ogt float %1483, 0.000000e+00
  br i1 %3416, label %3417, label %3443

; <label>:3417                                    ; preds = %3337
  %3418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %65, float %1483, float %2120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.ResRet.f32 %3418, 1
  %3421 = extractvalue %dx.types.ResRet.f32 %3418, 2
  %3422 = fadd fast float %3419, -5.000000e-01
  %3423 = fadd fast float %3420, -5.000000e-01
  %3424 = fadd fast float %3421, -5.000000e-01
  %3425 = fsub fast float 1.000000e+00, %2106
  %3426 = fsub fast float 1.000000e+00, %2107
  %3427 = fsub fast float 1.000000e+00, %2118
  %3428 = fmul fast float %2106, 4.000000e+00
  %3429 = fmul fast float %3428, %3425
  %3430 = fmul fast float %3429, %3422
  %3431 = fmul fast float %2107, 4.000000e+00
  %3432 = fmul fast float %3431, %3426
  %3433 = fmul fast float %3432, %3423
  %3434 = fmul fast float %2118, 4.000000e+00
  %3435 = fmul fast float %3434, %3427
  %3436 = fmul fast float %3435, %3424
  %3437 = fadd fast float %3430, %3413
  %3438 = fadd fast float %3433, %3414
  %3439 = fadd fast float %3436, %3415
  %3440 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3441 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  %3442 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  br label %3443

; <label>:3443                                    ; preds = %3417, %3337
  %3444 = phi float [ %3440, %3417 ], [ %3413, %3337 ]
  %3445 = phi float [ %3441, %3417 ], [ %3414, %3337 ]
  %3446 = phi float [ %3442, %3417 ], [ %3415, %3337 ]
  %3447 = call float @dx.op.binary.f32(i32 35, float %3445, float %3446)  ; FMax(a,b)
  %3448 = call float @dx.op.binary.f32(i32 35, float %3444, float %3447)  ; FMax(a,b)
  %3449 = fsub fast float 1.000000e+00, %3448
  %3450 = fmul fast float %3448, %2115
  %3451 = fadd fast float %3450, %2115
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.f32 %3452, 2
  %3454 = extractvalue %dx.types.CBufRet.f32 %3452, 3
  %3455 = fmul fast float %3451, %3453
  %3456 = fadd fast float %3455, %3454
  %3457 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  %3458 = fsub fast float 1.000000e+00, %2141
  %3459 = fadd fast float %3458, %3457
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = fcmp fast olt float %3460, 1.000000e+00
  br i1 %3461, label %3462, label %4044

; <label>:3462                                    ; preds = %3443
  %3463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3464 = extractvalue %dx.types.CBufRet.f32 %3463, 2
  %3465 = extractvalue %dx.types.CBufRet.f32 %3463, 3
  %3466 = fmul fast float %3464, %101
  %3467 = fmul fast float %3465, %102
  %3468 = fptoui float %3466 to i32
  %3469 = fptoui float %3467 to i32
  %3470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3471 = extractvalue %dx.types.CBufRet.f32 %3470, 0
  %3472 = extractvalue %dx.types.CBufRet.f32 %3470, 2
  %3473 = extractvalue %dx.types.CBufRet.f32 %3470, 3
  %3474 = fadd fast float %89, -4.000000e+00
  %3475 = call float @dx.op.binary.f32(i32 35, float %3474, float 0.000000e+00)  ; FMax(a,b)
  %3476 = fadd fast float %3475, %3471
  %3477 = fmul fast float %3476, %3472
  %3478 = call float @dx.op.unary.f32(i32 23, float %3477)  ; Log(value)
  %3479 = fmul fast float %3478, %3473
  %3480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3480, 2
  %3482 = fmul fast float %3479, %3481
  %3483 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  %3484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.i32 %3484, 1
  %3486 = add i32 %3485, -1
  %3487 = uitofp i32 %3485 to float
  %3488 = fmul fast float %3487, %3483
  %3489 = fptoui float %3488 to i32
  %3490 = call i32 @dx.op.binary.i32(i32 40, i32 %3489, i32 %3486)  ; UMin(a,b)
  %3491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3492 = extractvalue %dx.types.CBufRet.i32 %3491, 2
  %3493 = extractvalue %dx.types.CBufRet.i32 %3491, 3
  %3494 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3469, i32 %3492, i32 %3468)  ; UMad(a,b,c)
  %3495 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3490, i32 %3493, i32 %3494)  ; UMad(a,b,c)
  %3496 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %3497 = fptoui float %3496 to i32
  %3498 = lshr i32 %3497, 5
  %3499 = call i32 @dx.op.binary.i32(i32 40, i32 %3498, i32 8191)  ; UMin(a,b)
  %3500 = fsub fast float %1905, %150
  %3501 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3502 = fcmp fast ogt float %3501, 0.000000e+00
  %3503 = fcmp fast ogt float %2128, 0.000000e+00
  %3504 = and i1 %3503, %3502
  br i1 %3504, label %3505, label %3534

; <label>:3505                                    ; preds = %3462
  %3506 = call float @dx.op.dot3.f32(i32 55, float %2126, float %2127, float %2128, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = call float @dx.op.binary.f32(i32 35, float %3506, float -1.000000e+00)  ; FMax(a,b)
  %3508 = call float @dx.op.binary.f32(i32 36, float %3507, float 1.000000e+00)  ; FMin(a,b)
  %3509 = fmul fast float %3508, %3508
  %3510 = fsub fast float 1.000000e+00, %3509
  %3511 = fmul fast float %3510, 0x3FFC6E2300000000
  %3512 = fsub fast float 1.000000e+00, %3511
  %3513 = fcmp fast ogt float %3512, 0.000000e+00
  %3514 = call float @dx.op.unary.f32(i32 24, float %3512)  ; Sqrt(value)
  %3515 = fsub fast float 1.000000e+00, %3514
  %3516 = call float @dx.op.unary.f32(i32 23, float %3515)  ; Log(value)
  %3517 = fmul fast float %3516, 5.000000e+00
  %3518 = call float @dx.op.unary.f32(i32 21, float %3517)  ; Exp(value)
  %3519 = fmul fast float %3518, 0x3FEF591A60000000
  %3520 = fadd fast float %3519, 0x3F94DCB540000000
  %3521 = select i1 %3513, float %3520, float 1.000000e+00
  %3522 = fcmp fast oge float %3521, 1.000000e+00
  %3523 = fmul fast float %3506, 2.000000e+00
  %3524 = fadd fast float %3523, %2128
  %3525 = select i1 %3522, float %3524, float %2128
  %3526 = fsub fast float %3525, %2128
  %3527 = fmul fast float %3526, %3501
  %3528 = fadd fast float %3527, %2128
  %3529 = call float @dx.op.dot3.f32(i32 55, float %2126, float %2127, float %3528, float %2126, float %2127, float %3528)  ; Dot3(ax,ay,az,bx,by,bz)
  %3530 = call float @dx.op.unary.f32(i32 25, float %3529)  ; Rsqrt(value)
  %3531 = fmul fast float %3530, %2126
  %3532 = fmul fast float %3530, %2127
  %3533 = fmul fast float %3528, %3530
  br label %3534

; <label>:3534                                    ; preds = %3505, %3462
  %3535 = phi float [ %3531, %3505 ], [ %2126, %3462 ]
  %3536 = phi float [ %3532, %3505 ], [ %2127, %3462 ]
  %3537 = phi float [ %3533, %3505 ], [ %2128, %3462 ]
  %3538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3539 = extractvalue %dx.types.CBufRet.i32 %3538, 2
  %3540 = add nsw i32 %3539, -1
  %3541 = call i32 @dx.op.binary.i32(i32 37, i32 %3540, i32 0)  ; IMax(a,b)
  %3542 = shl i32 %3499, 2
  %3543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.i32 %3543, 0
  %3545 = lshr i32 %3544, 16
  %3546 = and i32 %3544, 65535
  %3547 = lshr i32 %3544, 21
  %3548 = lshr i32 %3546, 5
  %3549 = call i32 @dx.op.binary.i32(i32 40, i32 %3548, i32 %3541)  ; UMin(a,b)
  %3550 = icmp ugt i32 %3547, %3549
  br i1 %3550, label %3932, label %3551

; <label>:3551                                    ; preds = %3534
  br label %3552

; <label>:3552                                    ; preds = %3921, %3551
  %3553 = phi float [ %3922, %3921 ], [ 0.000000e+00, %3551 ]
  %3554 = phi float [ %3923, %3921 ], [ 0.000000e+00, %3551 ]
  %3555 = phi float [ %3924, %3921 ], [ 0.000000e+00, %3551 ]
  %3556 = phi float [ %3925, %3921 ], [ 1.000000e+00, %3551 ]
  %3557 = phi i32 [ %3929, %3921 ], [ %3547, %3551 ]
  %3558 = phi float [ %3926, %3921 ], [ 0.000000e+00, %3551 ]
  %3559 = phi float [ %3927, %3921 ], [ 0.000000e+00, %3551 ]
  %3560 = phi float [ %3928, %3921 ], [ 0.000000e+00, %3551 ]
  %3561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3562 = extractvalue %dx.types.CBufRet.i32 %3561, 2
  %3563 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3495, i32 %3562, i32 %3557)  ; UMad(a,b,c)
  %3564 = shl i32 %3563, 2
  %3565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3564, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.i32 %3565, 0
  %3567 = shl i32 %3557, 5
  %3568 = sub nsw i32 %3545, %3567
  %3569 = call i32 @dx.op.binary.i32(i32 37, i32 %3568, i32 0)  ; IMax(a,b)
  %3570 = call i32 @dx.op.binary.i32(i32 38, i32 %3569, i32 31)  ; IMin(a,b)
  %3571 = sub nsw i32 1, %3545
  %3572 = add nsw i32 %3571, %3546
  %3573 = call i32 @dx.op.binary.i32(i32 37, i32 %3572, i32 0)  ; IMax(a,b)
  %3574 = call i32 @dx.op.binary.i32(i32 38, i32 %3573, i32 32)  ; IMin(a,b)
  %3575 = and i32 %3574, 31
  %3576 = shl i32 -1, %3575
  %3577 = xor i32 %3576, -1
  %3578 = and i32 %3570, 31
  %3579 = shl i32 %3577, %3578
  %3580 = icmp eq i32 %3574, 32
  %3581 = select i1 %3580, i32 -1, i32 %3579
  %3582 = and i32 %3581, %3566
  %3583 = icmp eq i32 %3582, 0
  br i1 %3583, label %3921, label %3584

; <label>:3584                                    ; preds = %3552
  br label %3585

; <label>:3585                                    ; preds = %3695, %3584
  %3586 = phi float [ %3696, %3695 ], [ %3553, %3584 ]
  %3587 = phi float [ %3697, %3695 ], [ %3554, %3584 ]
  %3588 = phi float [ %3698, %3695 ], [ %3555, %3584 ]
  %3589 = phi float [ %3699, %3695 ], [ %3556, %3584 ]
  %3590 = phi i32 [ %3598, %3695 ], [ %3582, %3584 ]
  %3591 = phi float [ %3700, %3695 ], [ %3558, %3584 ]
  %3592 = phi float [ %3701, %3695 ], [ %3559, %3584 ]
  %3593 = phi float [ %3702, %3695 ], [ %3560, %3584 ]
  %3594 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3590)  ; FirstbitLo(value)
  %3595 = add i32 %3594, %3567
  %3596 = and i32 %3594, 31
  %3597 = shl i32 1, %3596
  %3598 = xor i32 %3597, %3590
  %3599 = mul i32 %3595, 72
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = add i32 %3599, 12
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = add i32 %3599, 16
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = add i32 %3599, 28
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = add i32 %3599, 32
  %3616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.ResRet.f32 %3616, 1
  %3619 = extractvalue %dx.types.ResRet.f32 %3616, 2
  %3620 = extractvalue %dx.types.ResRet.f32 %3616, 3
  %3621 = add i32 %3599, 48
  %3622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  %3624 = extractvalue %dx.types.ResRet.f32 %3622, 1
  %3625 = add i32 %3599, 56
  %3626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.f32 %3626, 0
  %3628 = extractvalue %dx.types.ResRet.f32 %3626, 1
  %3629 = add i32 %3599, 64
  %3630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = mul i32 %3595, 60
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = add i32 %3633, 12
  %3639 = add i32 %3633, 48
  %3640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.f32 %3640, 0
  %3642 = extractvalue %dx.types.ResRet.f32 %3640, 1
  %3643 = extractvalue %dx.types.ResRet.f32 %3640, 2
  %3644 = and i32 %3606, 32767
  %3645 = bitcast float %3601 to i32
  %3646 = icmp eq i32 %3645, -1
  %3647 = bitcast float %3602 to i32
  %3648 = and i32 %3606, 32768
  %3649 = icmp ne i32 %3648, 0
  %3650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3651 = extractvalue %dx.types.CBufRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.CBufRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.CBufRet.f32 %3650, 2
  %3654 = fsub fast float %3635, %3651
  %3655 = fsub fast float %3636, %3652
  %3656 = fsub fast float %3637, %3653
  %3657 = fsub fast float %148, %3654
  %3658 = fsub fast float %149, %3655
  %3659 = fsub fast float %150, %3656
  %3660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.ResRet.f32 %3660, 1
  %3663 = extractvalue %dx.types.ResRet.f32 %3660, 2
  %3664 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3658, float %3659, float %3661, float %3662, float %3663)  ; Dot3(ax,ay,az,bx,by,bz)
  %3665 = add i32 %3633, 24
  %3666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3669 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3670 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3658, float %3659, float %3667, float %3668, float %3669)  ; Dot3(ax,ay,az,bx,by,bz)
  %3671 = add i32 %3633, 36
  %3672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3676 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3658, float %3659, float %3673, float %3674, float %3675)  ; Dot3(ax,ay,az,bx,by,bz)
  %3677 = call float @dx.op.unary.f32(i32 6, float %3664)  ; FAbs(value)
  %3678 = call float @dx.op.unary.f32(i32 6, float %3670)  ; FAbs(value)
  %3679 = call float @dx.op.unary.f32(i32 6, float %3676)  ; FAbs(value)
  %3680 = fsub fast float %3641, %3677
  %3681 = fsub fast float %3642, %3678
  %3682 = fsub fast float %3643, %3679
  %3683 = fmul fast float %3680, %3609
  %3684 = fmul fast float %3681, %3610
  %3685 = fmul fast float %3682, %3611
  %3686 = call float @dx.op.binary.f32(i32 36, float %3684, float %3685)  ; FMin(a,b)
  %3687 = call float @dx.op.binary.f32(i32 36, float %3683, float %3686)  ; FMin(a,b)
  %3688 = call float @dx.op.unary.f32(i32 7, float %3687)  ; Saturate(value)
  %3689 = call float @dx.op.binary.f32(i32 36, float %3589, float %3688)  ; FMin(a,b)
  %3690 = uitofp i1 %3649 to float
  %3691 = fadd fast float %3501, 1.000000e+00
  %3692 = fsub fast float %3691, %3690
  %3693 = fmul fast float %3689, %3692
  %3694 = fcmp fast ogt float %3693, 0.000000e+00
  br i1 %3694, label %3704, label %3695

; <label>:3695                                    ; preds = %3846, %3585
  %3696 = phi float [ %3910, %3846 ], [ %3586, %3585 ]
  %3697 = phi float [ %3911, %3846 ], [ %3587, %3585 ]
  %3698 = phi float [ %3912, %3846 ], [ %3588, %3585 ]
  %3699 = phi float [ %3919, %3846 ], [ %3589, %3585 ]
  %3700 = phi float [ %3916, %3846 ], [ %3591, %3585 ]
  %3701 = phi float [ %3917, %3846 ], [ %3592, %3585 ]
  %3702 = phi float [ %3918, %3846 ], [ %3593, %3585 ]
  %3703 = icmp eq i32 %3590, %3597
  br i1 %3703, label %3920, label %3585

; <label>:3704                                    ; preds = %3585
  br i1 %3646, label %3762, label %3705

; <label>:3705                                    ; preds = %3704
  %3706 = fsub fast float -0.000000e+00, %3661
  %3707 = fsub fast float -0.000000e+00, %3662
  %3708 = fsub fast float -0.000000e+00, %3663
  %3709 = call float @dx.op.dot3.f32(i32 55, float %3535, float %3536, float %3537, float %3706, float %3707, float %3708)  ; Dot3(ax,ay,az,bx,by,bz)
  %3710 = fsub fast float -0.000000e+00, %3709
  %3711 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3658, float %3659, float %3706, float %3707, float %3708)  ; Dot3(ax,ay,az,bx,by,bz)
  %3712 = fadd fast float %3711, %3624
  %3713 = fadd fast float %3623, %3711
  %3714 = fsub fast float -0.000000e+00, %3713
  %3715 = fcmp ogt float %3709, -0.000000e+00
  %3716 = select i1 %3715, float %3714, float %3712
  %3717 = call float @dx.op.unary.f32(i32 6, float %3710)  ; FAbs(value)
  %3718 = fdiv fast float 1.000000e+00, %3717
  %3719 = fmul fast float %3716, %3718
  %3720 = call float @dx.op.binary.f32(i32 35, float %3719, float 0.000000e+00)  ; FMax(a,b)
  %3721 = fsub fast float -0.000000e+00, %3667
  %3722 = fsub fast float -0.000000e+00, %3668
  %3723 = fsub fast float -0.000000e+00, %3669
  %3724 = call float @dx.op.dot3.f32(i32 55, float %3535, float %3536, float %3537, float %3721, float %3722, float %3723)  ; Dot3(ax,ay,az,bx,by,bz)
  %3725 = fsub fast float -0.000000e+00, %3724
  %3726 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3658, float %3659, float %3721, float %3722, float %3723)  ; Dot3(ax,ay,az,bx,by,bz)
  %3727 = fadd fast float %3726, %3628
  %3728 = fadd fast float %3627, %3726
  %3729 = fsub fast float -0.000000e+00, %3728
  %3730 = fcmp ogt float %3724, -0.000000e+00
  %3731 = select i1 %3730, float %3729, float %3727
  %3732 = call float @dx.op.unary.f32(i32 6, float %3725)  ; FAbs(value)
  %3733 = fdiv fast float 1.000000e+00, %3732
  %3734 = fmul fast float %3731, %3733
  %3735 = call float @dx.op.binary.f32(i32 35, float %3734, float 0.000000e+00)  ; FMax(a,b)
  %3736 = fsub fast float -0.000000e+00, %3673
  %3737 = fsub fast float -0.000000e+00, %3674
  %3738 = fsub fast float -0.000000e+00, %3675
  %3739 = call float @dx.op.dot3.f32(i32 55, float %3535, float %3536, float %3537, float %3736, float %3737, float %3738)  ; Dot3(ax,ay,az,bx,by,bz)
  %3740 = fsub fast float -0.000000e+00, %3739
  %3741 = call float @dx.op.dot3.f32(i32 55, float %3657, float %3658, float %3659, float %3736, float %3737, float %3738)  ; Dot3(ax,ay,az,bx,by,bz)
  %3742 = fadd fast float %3741, %3632
  %3743 = fadd fast float %3631, %3741
  %3744 = fsub fast float -0.000000e+00, %3743
  %3745 = fcmp ogt float %3739, -0.000000e+00
  %3746 = select i1 %3745, float %3744, float %3742
  %3747 = call float @dx.op.unary.f32(i32 6, float %3740)  ; FAbs(value)
  %3748 = fdiv fast float 1.000000e+00, %3747
  %3749 = fmul fast float %3746, %3748
  %3750 = call float @dx.op.binary.f32(i32 35, float %3749, float 0.000000e+00)  ; FMax(a,b)
  %3751 = call float @dx.op.binary.f32(i32 36, float %3735, float %3750)  ; FMin(a,b)
  %3752 = call float @dx.op.binary.f32(i32 36, float %3720, float %3751)  ; FMin(a,b)
  %3753 = fmul fast float %3752, %3535
  %3754 = fmul fast float %3752, %3536
  %3755 = fmul fast float %3752, %3537
  %3756 = fadd fast float %3753, %148
  %3757 = fadd fast float %3754, %149
  %3758 = fadd fast float %3755, %150
  %3759 = fsub fast float %3756, %3601
  %3760 = fsub fast float %3757, %3602
  %3761 = fsub fast float %3758, %3603
  br label %3769

; <label>:3762                                    ; preds = %3704
  %3763 = fmul fast float %3535, 8.096000e+03
  %3764 = fmul fast float %3536, 8.096000e+03
  %3765 = fmul fast float %3537, 8.096000e+03
  %3766 = fadd fast float %3763, %148
  %3767 = fadd fast float %3764, %149
  %3768 = fadd fast float %3765, %150
  br label %3769

; <label>:3769                                    ; preds = %3762, %3705
  %3770 = phi float [ %3535, %3762 ], [ %3759, %3705 ]
  %3771 = phi float [ %3536, %3762 ], [ %3760, %3705 ]
  %3772 = phi float [ %3537, %3762 ], [ %3761, %3705 ]
  %3773 = phi float [ %3766, %3762 ], [ %3756, %3705 ]
  %3774 = phi float [ %3767, %3762 ], [ %3757, %3705 ]
  %3775 = phi float [ %3768, %3762 ], [ %3758, %3705 ]
  %3776 = fcmp fast olt float %3620, 1.000000e+00
  br i1 %3776, label %3777, label %3808, !dx.controlflow.hints !113

; <label>:3777                                    ; preds = %3769
  %3778 = fmul fast float %3772, %3618
  %3779 = fmul fast float %3771, %3619
  %3780 = fsub fast float %3778, %3779
  %3781 = fmul fast float %3770, %3619
  %3782 = fmul fast float %3772, %3617
  %3783 = fsub fast float %3781, %3782
  %3784 = fmul fast float %3771, %3617
  %3785 = fmul fast float %3770, %3618
  %3786 = fsub fast float %3784, %3785
  %3787 = fmul fast float %3780, 2.000000e+00
  %3788 = fmul fast float %3783, 2.000000e+00
  %3789 = fmul fast float %3786, 2.000000e+00
  %3790 = fmul fast float %3787, %3620
  %3791 = fmul fast float %3788, %3620
  %3792 = fmul fast float %3789, %3620
  %3793 = fmul fast float %3789, %3618
  %3794 = fmul fast float %3788, %3619
  %3795 = fmul fast float %3787, %3619
  %3796 = fmul fast float %3789, %3617
  %3797 = fmul fast float %3788, %3617
  %3798 = fmul fast float %3787, %3618
  %3799 = fadd fast float %3793, %3770
  %3800 = fadd fast float %3799, %3790
  %3801 = fsub fast float %3800, %3794
  %3802 = fsub fast float %3771, %3796
  %3803 = fadd fast float %3802, %3791
  %3804 = fadd fast float %3803, %3795
  %3805 = fadd fast float %3792, %3772
  %3806 = fsub fast float %3805, %3798
  %3807 = fadd fast float %3806, %3797
  br label %3808

; <label>:3808                                    ; preds = %3777, %3769
  %3809 = phi float [ %3801, %3777 ], [ %3770, %3769 ]
  %3810 = phi float [ %3804, %3777 ], [ %3771, %3769 ]
  %3811 = phi float [ %3807, %3777 ], [ %3772, %3769 ]
  br i1 %3646, label %3843, label %3812

; <label>:3812                                    ; preds = %3808
  %3813 = fmul fast float %2115, 0x400187C840000000
  %3814 = fadd fast float %3813, 0xC00EFC2120000000
  %3815 = fmul fast float %3814, %2115
  %3816 = fadd fast float %3815, 0x3FE5D16340000000
  %3817 = fmul fast float %3816, %2115
  %3818 = fadd fast float %3817, 1.000000e+00
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3820 = fsub fast float %3773, %148
  %3821 = fsub fast float %3774, %149
  %3822 = fsub fast float %3775, %150
  %3823 = fsub fast float %3773, %3601
  %3824 = fsub fast float %3774, %3602
  %3825 = fsub fast float %3775, %3603
  %3826 = call float @dx.op.dot3.f32(i32 55, float %3820, float %3821, float %3822, float %3820, float %3821, float %3822)  ; Dot3(ax,ay,az,bx,by,bz)
  %3827 = call float @dx.op.dot3.f32(i32 55, float %3823, float %3824, float %3825, float %3823, float %3824, float %3825)  ; Dot3(ax,ay,az,bx,by,bz)
  %3828 = fadd fast float %3827, 0x3EE4F8B580000000
  %3829 = fdiv fast float %3826, %3828
  %3830 = bitcast float %3829 to i32
  %3831 = ashr i32 %3830, 1
  %3832 = add nsw i32 %3831, 532487669
  %3833 = bitcast i32 %3832 to float
  %3834 = fmul fast float %3833, %3819
  %3835 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  %3836 = fmul fast float %3835, 0x4009981AE0000000
  %3837 = fsub fast float 0x40111BBD80000000, %3836
  %3838 = fmul fast float %3837, %3835
  %3839 = fadd fast float %3838, 0xC0009F6020000000
  %3840 = fmul fast float %3839, %3835
  %3841 = fadd fast float %3840, 1.000000e+00
  %3842 = call float @dx.op.unary.f32(i32 7, float %3841)  ; Saturate(value)
  br label %3846

; <label>:3843                                    ; preds = %3808
  %3844 = icmp ne i32 %3647, -1
  %3845 = zext i1 %3844 to i32
  br label %3846

; <label>:3846                                    ; preds = %3843, %3812
  %3847 = phi float [ %2115, %3843 ], [ %3842, %3812 ]
  %3848 = phi i32 [ %3845, %3843 ], [ 0, %3812 ]
  %3849 = fmul float %3847, 5.000000e+00
  %3850 = fsub float 5.000000e+00, %3849
  %3851 = icmp ne i32 %3848, 0
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 3
  %3854 = fadd fast float %3853, %3850
  %3855 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3854)  ; FMax(a,b)
  %3856 = call float @dx.op.unary.f32(i32 6, float %3809)  ; FAbs(value)
  %3857 = call float @dx.op.unary.f32(i32 6, float %3810)  ; FAbs(value)
  %3858 = fadd fast float %3857, %3856
  %3859 = call float @dx.op.unary.f32(i32 6, float %3811)  ; FAbs(value)
  %3860 = fadd fast float %3858, %3859
  %3861 = fcmp fast oeq float %3860, 0.000000e+00
  %3862 = fdiv fast float 1.000000e+00, %3860
  %3863 = select i1 %3861, float 1.000000e+00, float %3862
  %3864 = fmul fast float %3863, %3809
  %3865 = fmul fast float %3863, %3810
  %3866 = call float @dx.op.unary.f32(i32 6, float %3865)  ; FAbs(value)
  %3867 = call float @dx.op.unary.f32(i32 6, float %3864)  ; FAbs(value)
  %3868 = fsub fast float 1.000000e+00, %3866
  %3869 = fsub fast float 1.000000e+00, %3867
  %3870 = fcmp fast oge float %3864, 0.000000e+00
  %3871 = fcmp fast oge float %3865, 0.000000e+00
  %3872 = select i1 %3870, float 1.000000e+00, float -1.000000e+00
  %3873 = select i1 %3871, float 1.000000e+00, float -1.000000e+00
  %3874 = fcmp fast ole float %3811, 0.000000e+00
  %3875 = fmul fast float %3872, %3868
  %3876 = fmul fast float %3873, %3869
  %3877 = select i1 %3874, float %3875, float %3864
  %3878 = select i1 %3874, float %3876, float %3865
  %3879 = fmul fast float %3877, 5.000000e-01
  %3880 = fmul fast float %3878, 5.000000e-01
  %3881 = fadd fast float %3879, 5.000000e-01
  %3882 = fadd fast float %3880, 5.000000e-01
  %3883 = uitofp i32 %3644 to float
  %3884 = call float @dx.op.binary.f32(i32 36, float %3855, float 3.000000e+00)  ; FMin(a,b)
  %3885 = fadd fast float %3884, 2.000000e+00
  %3886 = call float @dx.op.unary.f32(i32 21, float %3885)  ; Exp(value)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3852, 1
  %3888 = fmul fast float %3887, %3886
  %3889 = fmul fast float %3888, 2.000000e+00
  %3890 = fsub fast float 1.000000e+00, %3889
  %3891 = fmul fast float %3881, %3890
  %3892 = fmul fast float %3882, %3890
  %3893 = fadd fast float %3891, %3888
  %3894 = fadd fast float %3892, %3888
  %3895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %63, float %3893, float %3894, float %3883, float undef, i32 0, i32 0, i32 undef, float %3855)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %3898 = extractvalue %dx.types.ResRet.f32 %3895, 2
  %3899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3899, 3
  %3901 = fmul fast float %3900, %3614
  %3902 = call float @dx.op.binary.f32(i32 36, float %3338, float %3901)  ; FMin(a,b)
  %3903 = select i1 %3851, float %3902, float %3901
  %3904 = fmul fast float %3896, %3693
  %3905 = fmul fast float %3904, %3903
  %3906 = fmul fast float %3897, %3693
  %3907 = fmul fast float %3906, %3903
  %3908 = fmul fast float %3898, %3693
  %3909 = fmul fast float %3908, %3903
  %3910 = fadd fast float %3905, %3586
  %3911 = fadd fast float %3907, %3587
  %3912 = fadd fast float %3909, %3588
  %3913 = fmul fast float %3773, %3693
  %3914 = fmul fast float %3774, %3693
  %3915 = fmul fast float %3775, %3693
  %3916 = fadd fast float %3913, %3591
  %3917 = fadd fast float %3914, %3592
  %3918 = fadd fast float %3915, %3593
  %3919 = fsub fast float %3589, %3693
  br label %3695

; <label>:3920                                    ; preds = %3695
  br label %3921

; <label>:3921                                    ; preds = %3920, %3552
  %3922 = phi float [ %3553, %3552 ], [ %3696, %3920 ]
  %3923 = phi float [ %3554, %3552 ], [ %3697, %3920 ]
  %3924 = phi float [ %3555, %3552 ], [ %3698, %3920 ]
  %3925 = phi float [ %3556, %3552 ], [ %3699, %3920 ]
  %3926 = phi float [ %3558, %3552 ], [ %3700, %3920 ]
  %3927 = phi float [ %3559, %3552 ], [ %3701, %3920 ]
  %3928 = phi float [ %3560, %3552 ], [ %3702, %3920 ]
  %3929 = add i32 %3557, 1
  %3930 = icmp ugt i32 %3929, %3549
  br i1 %3930, label %3931, label %3552, !llvm.loop !114

; <label>:3931                                    ; preds = %3921
  br label %3932

; <label>:3932                                    ; preds = %3931, %3534
  %3933 = phi float [ 0.000000e+00, %3534 ], [ %3922, %3931 ]
  %3934 = phi float [ 0.000000e+00, %3534 ], [ %3923, %3931 ]
  %3935 = phi float [ 0.000000e+00, %3534 ], [ %3924, %3931 ]
  %3936 = phi float [ 0.000000e+00, %3534 ], [ %3926, %3931 ]
  %3937 = phi float [ 0.000000e+00, %3534 ], [ %3927, %3931 ]
  %3938 = phi float [ 0.000000e+00, %3534 ], [ %3928, %3931 ]
  %3939 = call float @dx.op.dot3.f32(i32 55, float %3933, float %3934, float %3935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3940 = select i1 %239, float 0.000000e+00, float %3933
  %3941 = select i1 %239, float %3939, float %3934
  %3942 = select i1 %239, float 0.000000e+00, float %3935
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 0
  %3945 = extractvalue %dx.types.CBufRet.f32 %3943, 1
  %3946 = extractvalue %dx.types.CBufRet.f32 %3943, 2
  %3947 = extractvalue %dx.types.CBufRet.f32 %3943, 3
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.CBufRet.f32 %3948, 1
  %3951 = extractvalue %dx.types.CBufRet.f32 %3948, 2
  %3952 = extractvalue %dx.types.CBufRet.f32 %3948, 3
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.CBufRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.CBufRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.CBufRet.f32 %3953, 3
  %3958 = call float @dx.op.dot3.f32(i32 55, float %3954, float %3955, float %3956, float %2126, float %2127, float %2128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3959 = call float @dx.op.dot3.f32(i32 55, float %3936, float %3937, float %3938, float %3954, float %3955, float %3956)  ; Dot3(ax,ay,az,bx,by,bz)
  %3960 = call float @dx.op.dot3.f32(i32 55, float %148, float %149, float %150, float %3954, float %3955, float %3956)  ; Dot3(ax,ay,az,bx,by,bz)
  %3961 = fadd fast float %2115, -1.000000e+00
  %3962 = fsub fast float %3959, %3960
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 2
  %3965 = fmul fast float %3964, %3959
  %3966 = fdiv fast float 1.600000e+02, %3965
  %3967 = fmul fast float %3961, %3961
  %3968 = fmul fast float %3967, 0xBFB5B17960000000
  %3969 = fmul fast float %3968, %3962
  %3970 = fmul fast float %3969, %3966
  %3971 = call float @dx.op.unary.f32(i32 21, float %3970)  ; Exp(value)
  %3972 = fmul fast float %3971, 0x3FF04B2960000000
  %3973 = fsub fast float 0x3FF04B2960000000, %3972
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = fmul fast float %3974, 4.000000e+00
  %3976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.CBufRet.f32 %3976, 1
  %3979 = extractvalue %dx.types.CBufRet.f32 %3976, 2
  %3980 = fadd fast float %3977, %3936
  %3981 = fadd fast float %3978, %3937
  %3982 = fadd fast float %3979, %3938
  %3983 = fmul fast float %3980, %3944
  %3984 = call float @dx.op.tertiary.f32(i32 46, float %3981, float %3945, float %3983)  ; FMad(a,b,c)
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %3982, float %3946, float %3984)  ; FMad(a,b,c)
  %3986 = fadd fast float %3985, %3947
  %3987 = fmul fast float %3980, %3949
  %3988 = call float @dx.op.tertiary.f32(i32 46, float %3981, float %3950, float %3987)  ; FMad(a,b,c)
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %3982, float %3951, float %3988)  ; FMad(a,b,c)
  %3990 = fadd fast float %3989, %3952
  %3991 = fmul fast float %3980, %3954
  %3992 = call float @dx.op.tertiary.f32(i32 46, float %3981, float %3955, float %3991)  ; FMad(a,b,c)
  %3993 = call float @dx.op.tertiary.f32(i32 46, float %3982, float %3956, float %3992)  ; FMad(a,b,c)
  %3994 = fadd fast float %3993, %3957
  %3995 = fdiv fast float %3986, %3994
  %3996 = fdiv fast float %3990, %3994
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = extractvalue %dx.types.CBufRet.f32 %3997, 1
  %4000 = fmul fast float %3998, %3995
  %4001 = fmul fast float %3999, %3996
  %4002 = extractvalue %dx.types.CBufRet.f32 %3997, 2
  %4003 = extractvalue %dx.types.CBufRet.f32 %3997, 3
  %4004 = fadd fast float %4000, %4002
  %4005 = fadd fast float %4001, %4003
  %4006 = fmul fast float %3958, 8.000000e+00
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = fmul fast float %4004, 2.000000e+00
  %4011 = fmul fast float %4005, 2.000000e+00
  %4012 = fadd fast float %4010, -1.000000e+00
  %4013 = fadd fast float %4011, -1.000000e+00
  %4014 = fmul fast float %4012, %4012
  %4015 = fsub fast float 1.000000e+00, %4014
  %4016 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4017 = fmul fast float %4013, %4013
  %4018 = fsub fast float 1.000000e+00, %4017
  %4019 = call float @dx.op.unary.f32(i32 7, float %4018)  ; Saturate(value)
  %4020 = fmul fast float %4009, %4016
  %4021 = fmul fast float %4020, %4019
  %4022 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4023 = fmul fast float %4022, %4007
  %4024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %63, float %4004, float %4005, float undef, float undef, i32 0, i32 0, i32 undef, float %3975)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.ResRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.ResRet.f32 %4024, 2
  %4028 = select i1 %239, float 0.000000e+00, float %4026
  %4029 = select i1 %239, float 0.000000e+00, float %4027
  %4030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4031 = extractvalue %dx.types.CBufRet.f32 %4030, 2
  %4032 = fmul fast float %4031, %4025
  %4033 = fmul fast float %4028, %4031
  %4034 = fmul fast float %4029, %4031
  %4035 = fsub fast float %4032, %3940
  %4036 = fsub fast float %4033, %3941
  %4037 = fsub fast float %4034, %3942
  %4038 = fmul fast float %4035, %4023
  %4039 = fmul fast float %4036, %4023
  %4040 = fmul fast float %4037, %4023
  %4041 = fadd fast float %4038, %3940
  %4042 = fadd fast float %4039, %3941
  %4043 = fadd fast float %4040, %3942
  br label %4044

; <label>:4044                                    ; preds = %3932, %3443
  %4045 = phi float [ %3400, %3443 ], [ %4041, %3932 ]
  %4046 = phi float [ %3401, %3443 ], [ %4042, %3932 ]
  %4047 = phi float [ %3402, %3443 ], [ %4043, %3932 ]
  %4048 = fmul fast float %3449, %3396
  %4049 = fmul fast float %3449, %3397
  %4050 = fmul fast float %3449, %3398
  %4051 = call float @dx.op.dot3.f32(i32 55, float %2109, float %2110, float %2111, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4052 = fcmp fast ogt float %4051, 0x3E7FF19E20000000
  %4053 = fdiv fast float 1.000000e+00, %4051
  %4054 = select i1 %4052, float %4053, float 0.000000e+00
  %4055 = fmul fast float %4054, %2109
  %4056 = fmul fast float %4054, %2110
  %4057 = fmul fast float %4054, %2111
  %4058 = fadd fast float %4055, -1.000000e+00
  %4059 = fadd fast float %4056, -1.000000e+00
  %4060 = fadd fast float %4057, -1.000000e+00
  %4061 = fmul fast float %4058, 5.000000e-01
  %4062 = fmul fast float %4059, 5.000000e-01
  %4063 = fmul fast float %4060, 5.000000e-01
  %4064 = fadd fast float %4061, 1.000000e+00
  %4065 = fadd fast float %4062, 1.000000e+00
  %4066 = fadd fast float %4063, 1.000000e+00
  %4067 = fmul fast float %4045, %3444
  %4068 = fmul fast float %4046, %3445
  %4069 = fmul fast float %4047, %3446
  %4070 = fsub fast float 1.000000e+00, %2120
  %4071 = bitcast float %4070 to i32
  %4072 = sitofp i32 %4071 to float
  %4073 = fmul fast float %4072, 5.000000e+00
  %4074 = fadd fast float %4073, 0xC1EFBF8940000000
  %4075 = fptosi float %4074 to i32
  %4076 = bitcast i32 %4075 to float
  %4077 = fmul fast float %4076, %1482
  %4078 = fmul fast float %3396, %4077
  %4079 = fmul fast float %4078, %3449
  %4080 = fmul fast float %4079, %4064
  %4081 = fmul fast float %3397, %4077
  %4082 = fmul fast float %4081, %3449
  %4083 = fmul fast float %4082, %4065
  %4084 = fmul fast float %3398, %4077
  %4085 = fmul fast float %4084, %3449
  %4086 = fmul fast float %4085, %4066
  %4087 = fmul fast float %4048, %1503
  %4088 = fmul fast float %4049, %1503
  %4089 = fmul fast float %4050, %1503
  %4090 = fadd fast float %4067, %1484
  %4091 = fadd fast float %4090, %4080
  %4092 = fmul fast float %4091, %1503
  %4093 = fadd fast float %4068, %1485
  %4094 = fadd fast float %4093, %4083
  %4095 = fmul fast float %4094, %1503
  %4096 = fadd fast float %4069, %1486
  %4097 = fadd fast float %4096, %4086
  %4098 = fmul fast float %4097, %1503
  %4099 = bitcast i32 %2144 to float
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 3
  %4102 = fcmp fast oeq float %4101, 0.000000e+00
  br i1 %4102, label %5644, label %4103

; <label>:4103                                    ; preds = %4044
  %4104 = extractvalue %dx.types.CBufRet.f32 %4100, 0
  %4105 = extractvalue %dx.types.CBufRet.f32 %4100, 1
  %4106 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4109 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4110 = extractvalue %dx.types.CBufRet.f32 %4107, 2
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 0
  %4113 = extractvalue %dx.types.CBufRet.f32 %4111, 1
  %4114 = call float @dx.op.dot3.f32(i32 55, float %4108, float %4109, float %4110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4115 = select i1 %239, float %4112, float %4108
  %4116 = select i1 %239, float %4114, float %4109
  %4117 = select i1 %239, float %4113, float %4110
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 2
  %4120 = fmul fast float %4119, %77
  %4121 = fmul fast float %4119, %78
  %4122 = fmul fast float %4119, %79
  %4123 = fadd fast float %4120, %148
  %4124 = fadd fast float %4121, %149
  %4125 = fadd fast float %4122, %150
  %4126 = fcmp fast olt float %4101, 0.000000e+00
  br i1 %4126, label %5222, label %4127

; <label>:4127                                    ; preds = %4103
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.CBufRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4132 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 0
  %4135 = extractvalue %dx.types.CBufRet.f32 %4133, 1
  %4136 = extractvalue %dx.types.CBufRet.f32 %4133, 2
  %4137 = extractvalue %dx.types.CBufRet.f32 %4133, 3
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4142 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4143 = fmul fast float %4129, %4123
  %4144 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4130, float %4143)  ; FMad(a,b,c)
  %4145 = call float @dx.op.tertiary.f32(i32 46, float %4125, float %4131, float %4144)  ; FMad(a,b,c)
  %4146 = fadd fast float %4145, %4132
  %4147 = fmul fast float %4134, %4123
  %4148 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4135, float %4147)  ; FMad(a,b,c)
  %4149 = call float @dx.op.tertiary.f32(i32 46, float %4125, float %4136, float %4148)  ; FMad(a,b,c)
  %4150 = fadd fast float %4149, %4137
  %4151 = fmul fast float %4139, %4123
  %4152 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4140, float %4151)  ; FMad(a,b,c)
  %4153 = call float @dx.op.tertiary.f32(i32 46, float %4125, float %4141, float %4152)  ; FMad(a,b,c)
  %4154 = fadd fast float %4153, %4142
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4158 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4159 = fmul fast float %4158, %4146
  %4160 = fmul fast float %4158, %4150
  %4161 = fadd fast float %4159, %4156
  %4162 = fadd fast float %4160, %4157
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4166 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4167 = fmul fast float %4166, %4146
  %4168 = fmul fast float %4166, %4150
  %4169 = fadd fast float %4167, %4164
  %4170 = fadd fast float %4168, %4165
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4173 = fsub fast float %4172, %4154
  %4174 = extractvalue %dx.types.CBufRet.f32 %4171, 2
  %4175 = fmul fast float %4173, %4174
  %4176 = fsub fast float 1.000000e+00, %4175
  %4177 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4163, 2
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 2
  %4181 = fadd fast float %4180, %4178
  %4182 = fcmp fast ogt float %4181, 0.000000e+00
  br i1 %4182, label %4183, label %4207

; <label>:4183                                    ; preds = %4127
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.CBufRet.f32 %4184, 1
  %4187 = fsub fast float %4169, %4185
  %4188 = fsub fast float %4170, %4186
  %4189 = fcmp fast olt float %4187, 0.000000e+00
  %4190 = fcmp fast olt float %4188, 0.000000e+00
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.CBufRet.f32 %4191, 1
  %4194 = extractvalue %dx.types.CBufRet.f32 %4191, 2
  %4195 = extractvalue %dx.types.CBufRet.f32 %4191, 3
  %4196 = select i1 %4189, float %4192, float %4194
  %4197 = select i1 %4190, float %4193, float %4195
  %4198 = fmul fast float %4196, %4187
  %4199 = fmul fast float %4197, %4188
  %4200 = call float @dx.op.unary.f32(i32 6, float %4198)  ; FAbs(value)
  %4201 = call float @dx.op.unary.f32(i32 6, float %4199)  ; FAbs(value)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4118, 0
  %4203 = call float @dx.op.binary.f32(i32 35, float %4200, float %4201)  ; FMax(a,b)
  %4204 = fsub fast float %4202, %4203
  %4205 = call float @dx.op.unary.f32(i32 7, float %4204)  ; Saturate(value)
  %4206 = fmul fast float %4205, %4177
  br label %4207

; <label>:4207                                    ; preds = %4183, %4127
  %4208 = phi float [ %4206, %4183 ], [ 0.000000e+00, %4127 ]
  %4209 = extractvalue %dx.types.CBufRet.f32 %4155, 2
  %4210 = extractvalue %dx.types.CBufRet.f32 %4179, 1
  %4211 = fadd fast float %4210, %4209
  %4212 = fcmp fast ogt float %4211, 0.000000e+00
  %4213 = extractvalue %dx.types.CBufRet.f32 %4118, 0
  br i1 %4212, label %4214, label %4237

; <label>:4214                                    ; preds = %4207
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.CBufRet.f32 %4215, 1
  %4218 = fsub fast float %4161, %4216
  %4219 = fsub fast float %4162, %4217
  %4220 = fcmp fast olt float %4218, 0.000000e+00
  %4221 = fcmp fast olt float %4219, 0.000000e+00
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.CBufRet.f32 %4222, 1
  %4225 = extractvalue %dx.types.CBufRet.f32 %4222, 2
  %4226 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4227 = select i1 %4220, float %4223, float %4225
  %4228 = select i1 %4221, float %4224, float %4226
  %4229 = fmul fast float %4227, %4218
  %4230 = fmul fast float %4228, %4219
  %4231 = call float @dx.op.unary.f32(i32 6, float %4229)  ; FAbs(value)
  %4232 = call float @dx.op.unary.f32(i32 6, float %4230)  ; FAbs(value)
  %4233 = call float @dx.op.binary.f32(i32 35, float %4231, float %4232)  ; FMax(a,b)
  %4234 = fsub fast float %4213, %4233
  %4235 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4236 = fmul fast float %4235, %4177
  br label %4237

; <label>:4237                                    ; preds = %4214, %4207
  %4238 = phi float [ %4236, %4214 ], [ 0.000000e+00, %4207 ]
  %4239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.f32 %4239, 1
  %4241 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4245 = fsub fast float %4146, %4243
  %4246 = fsub fast float %4150, %4244
  %4247 = fcmp fast olt float %4245, 0.000000e+00
  %4248 = fcmp fast olt float %4246, 0.000000e+00
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.CBufRet.f32 %4249, 1
  %4252 = extractvalue %dx.types.CBufRet.f32 %4249, 2
  %4253 = extractvalue %dx.types.CBufRet.f32 %4249, 3
  %4254 = select i1 %4247, float %4250, float %4252
  %4255 = select i1 %4248, float %4251, float %4253
  %4256 = fmul fast float %4254, %4245
  %4257 = fmul fast float %4255, %4246
  %4258 = call float @dx.op.unary.f32(i32 6, float %4256)  ; FAbs(value)
  %4259 = call float @dx.op.unary.f32(i32 6, float %4257)  ; FAbs(value)
  %4260 = call float @dx.op.binary.f32(i32 35, float %4258, float %4259)  ; FMax(a,b)
  %4261 = fsub fast float %4213, %4260
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = call float @dx.op.binary.f32(i32 36, float %4262, float %4241)  ; FMin(a,b)
  %4264 = fmul fast float %4263, %4177
  %4265 = fsub fast float %4238, %4264
  %4266 = fsub fast float %4208, %4238
  %4267 = fsub fast float %4266, %4264
  %4268 = call float @dx.op.binary.f32(i32 35, float %4238, float %4208)  ; FMax(a,b)
  %4269 = call float @dx.op.binary.f32(i32 35, float %4264, float %4268)  ; FMax(a,b)
  %4270 = fcmp fast olt float %4269, 1.000000e+00
  br i1 %4270, label %4271, label %4669, !dx.controlflow.hints !116

; <label>:4271                                    ; preds = %4237
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4274 = fcmp fast une float %4273, 0.000000e+00
  br i1 %4274, label %4275, label %4669, !dx.controlflow.hints !117

; <label>:4275                                    ; preds = %4271
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 0
  %4278 = extractvalue %dx.types.CBufRet.f32 %4276, 1
  %4279 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4280 = extractvalue %dx.types.CBufRet.f32 %4276, 3
  %4281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.f32 %4281, 0
  %4283 = extractvalue %dx.types.CBufRet.f32 %4281, 1
  %4284 = extractvalue %dx.types.CBufRet.f32 %4281, 2
  %4285 = extractvalue %dx.types.CBufRet.f32 %4281, 3
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = extractvalue %dx.types.CBufRet.f32 %4286, 1
  %4289 = extractvalue %dx.types.CBufRet.f32 %4286, 2
  %4290 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4291 = fmul fast float %4277, %4123
  %4292 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4278, float %4291)  ; FMad(a,b,c)
  %4293 = call float @dx.op.tertiary.f32(i32 46, float %4125, float %4279, float %4292)  ; FMad(a,b,c)
  %4294 = fadd fast float %4293, %4280
  %4295 = fmul fast float %4282, %4123
  %4296 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4283, float %4295)  ; FMad(a,b,c)
  %4297 = call float @dx.op.tertiary.f32(i32 46, float %4125, float %4284, float %4296)  ; FMad(a,b,c)
  %4298 = fadd fast float %4297, %4285
  %4299 = fmul fast float %4287, %4123
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %4288, float %4299)  ; FMad(a,b,c)
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4125, float %4289, float %4300)  ; FMad(a,b,c)
  %4302 = fadd fast float %4301, %4290
  %4303 = fcmp fast oge float %4294, 1.000000e+00
  %4304 = fcmp fast oge float %4298, 1.000000e+00
  %4305 = or i1 %4303, %4304
  %4306 = fcmp fast olt float %4294, 0.000000e+00
  %4307 = fcmp fast olt float %4298, 0.000000e+00
  %4308 = or i1 %4306, %4307
  %4309 = or i1 %4305, %4308
  br i1 %4309, label %4669, label %4310, !dx.controlflow.hints !118

; <label>:4310                                    ; preds = %4275
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 0
  %4313 = extractvalue %dx.types.CBufRet.f32 %4311, 1
  %4314 = extractvalue %dx.types.CBufRet.f32 %4311, 2
  %4315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.i32 %4315, 2
  %4317 = uitofp i32 %4316 to float
  %4318 = extractvalue %dx.types.CBufRet.i32 %4315, 3
  %4319 = uitofp i32 %4318 to float
  %4320 = extractvalue %dx.types.CBufRet.f32 %4311, 3
  %4321 = fmul fast float %4320, 2.000000e+00
  %4322 = fsub fast float %4294, %4312
  %4323 = fsub fast float %4298, %4313
  %4324 = fmul fast float %4321, %4322
  %4325 = fmul fast float %4321, %4323
  %4326 = fdiv fast float 1.000000e+00, %4106
  %4327 = fmul fast float %4325, %4326
  %4328 = call float @dx.op.unary.f32(i32 6, float %4327)  ; FAbs(value)
  %4329 = fmul fast float %4314, %4125
  %4330 = fmul fast float %4329, %4321
  %4331 = call float @dx.op.unary.f32(i32 6, float %4330)  ; FAbs(value)
  %4332 = call float @dx.op.unary.f32(i32 6, float %4324)  ; FAbs(value)
  %4333 = call float @dx.op.binary.f32(i32 35, float %4331, float %4328)  ; FMax(a,b)
  %4334 = call float @dx.op.binary.f32(i32 35, float %4332, float %4333)  ; FMax(a,b)
  %4335 = fmul fast float %4334, 2.000000e+00
  %4336 = call float @dx.op.unary.f32(i32 23, float %4335)  ; Log(value)
  %4337 = call float @dx.op.binary.f32(i32 35, float %4336, float %4317)  ; FMax(a,b)
  %4338 = call float @dx.op.unary.f32(i32 22, float %4337)  ; Frc(value)
  %4339 = fadd fast float %4338, 0xBFEA666660000000
  %4340 = fmul fast float %4339, 8.000000e+00
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = call float @dx.op.unary.f32(i32 27, float %4337)  ; Round_ni(value)
  %4343 = fadd fast float %4342, %4341
  %4344 = call float @dx.op.binary.f32(i32 36, float %4343, float %4319)  ; FMin(a,b)
  %4345 = call float @dx.op.unary.f32(i32 27, float %4344)  ; Round_ni(value)
  %4346 = fsub fast float -0.000000e+00, %4345
  %4347 = call float @dx.op.unary.f32(i32 21, float %4346)  ; Exp(value)
  %4348 = fmul fast float %4347, %4321
  %4349 = fmul fast float %4348, %4294
  %4350 = fmul fast float %4348, %4298
  %4351 = fmul fast float %4349, 2.500000e-01
  %4352 = fmul fast float %4350, 2.500000e-01
  %4353 = fadd fast float %4351, 5.000000e-01
  %4354 = fadd fast float %4352, 5.000000e-01
  %4355 = fsub fast float %4319, %4317
  %4356 = fptoui float %4355 to i32
  %4357 = add i32 %4356, 320
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 %4357)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 0
  %4360 = extractvalue %dx.types.CBufRet.f32 %4358, 1
  %4361 = fcmp fast une float %4344, %4319
  %4362 = fsub fast float %4294, %4359
  %4363 = fsub fast float %4298, %4360
  %4364 = call float @dx.op.unary.f32(i32 6, float %4362)  ; FAbs(value)
  %4365 = call float @dx.op.unary.f32(i32 6, float %4363)  ; FAbs(value)
  %4366 = fmul fast float %4364, %4348
  %4367 = fmul fast float %4365, %4348
  %4368 = fcmp fast olt float %4366, 1.000000e+00
  %4369 = fcmp fast olt float %4367, 1.000000e+00
  %4370 = and i1 %4368, %4369
  %4371 = or i1 %4361, %4370
  br i1 %4371, label %4372, label %4669, !dx.controlflow.hints !119

; <label>:4372                                    ; preds = %4310
  %4373 = fmul fast float %4350, 5.000000e-01
  %4374 = fmul fast float %4349, 5.000000e-01
  %4375 = fadd fast float %4373, 5.000000e-01
  %4376 = fadd fast float %4374, 5.000000e-01
  %4377 = sitofp i32 %4316 to float
  %4378 = fsub fast float %4344, %4377
  %4379 = call float @dx.op.unary.f32(i32 27, float %4378)  ; Round_ni(value)
  %4380 = call float @dx.op.unary.f32(i32 22, float %4344)  ; Frc(value)
  %4381 = call float @dx.op.unary.f32(i32 22, float %4376)  ; Frc(value)
  %4382 = call float @dx.op.unary.f32(i32 22, float %4375)  ; Frc(value)
  %4383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %64, float %4381, float %4382, float %4379, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = extractvalue %dx.types.ResRet.f32 %4383, 1
  %4386 = extractvalue %dx.types.ResRet.f32 %4383, 2
  %4387 = extractvalue %dx.types.ResRet.f32 %4383, 3
  %4388 = fcmp fast ogt float %4380, 0.000000e+00
  br i1 %4388, label %4389, label %4410, !dx.controlflow.hints !120

; <label>:4389                                    ; preds = %4372
  %4390 = fadd fast float %4379, 1.000000e+00
  %4391 = call float @dx.op.unary.f32(i32 22, float %4353)  ; Frc(value)
  %4392 = call float @dx.op.unary.f32(i32 22, float %4354)  ; Frc(value)
  %4393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %64, float %4391, float %4392, float %4390, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.ResRet.f32 %4393, 1
  %4396 = extractvalue %dx.types.ResRet.f32 %4393, 2
  %4397 = extractvalue %dx.types.ResRet.f32 %4393, 3
  %4398 = fsub fast float %4394, %4384
  %4399 = fsub fast float %4395, %4385
  %4400 = fsub fast float %4396, %4386
  %4401 = fsub fast float %4397, %4387
  %4402 = fmul fast float %4398, %4380
  %4403 = fmul fast float %4399, %4380
  %4404 = fmul fast float %4400, %4380
  %4405 = fmul fast float %4401, %4380
  %4406 = fadd fast float %4402, %4384
  %4407 = fadd fast float %4403, %4385
  %4408 = fadd fast float %4404, %4386
  %4409 = fadd fast float %4405, %4387
  br label %4410

; <label>:4410                                    ; preds = %4389, %4372
  %4411 = phi float [ %4406, %4389 ], [ %4384, %4372 ]
  %4412 = phi float [ %4407, %4389 ], [ %4385, %4372 ]
  %4413 = phi float [ %4408, %4389 ], [ %4386, %4372 ]
  %4414 = phi float [ %4409, %4389 ], [ %4387, %4372 ]
  %4415 = fadd fast float %4411, -5.000000e-01
  %4416 = fadd fast float %4413, -5.000000e-01
  %4417 = fmul fast float %4415, 0xBFD5555560000000
  %4418 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4416, float %4417)  ; FMad(a,b,c)
  %4419 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4412, float 0.000000e+00)  ; FMad(a,b,c)
  %4420 = fadd fast float %4419, %4414
  %4421 = fmul fast float %4415, -7.500000e-01
  %4422 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4416, float %4421)  ; FMad(a,b,c)
  %4423 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4412, float 0.000000e+00)  ; FMad(a,b,c)
  %4424 = fadd fast float %4423, %4414
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 0
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.CBufRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.CBufRet.f32 %4427, 2
  %4431 = extractvalue %dx.types.CBufRet.f32 %4427, 3
  %4432 = fsub fast float %4428, %4418
  %4433 = fsub fast float %4429, %4420
  %4434 = fsub fast float %4430, %4422
  %4435 = fsub fast float %4431, %4424
  %4436 = fmul fast float %4432, %4426
  %4437 = fmul fast float %4433, %4426
  %4438 = fmul fast float %4434, %4426
  %4439 = fmul fast float %4435, %4426
  %4440 = fadd fast float %4436, %4418
  %4441 = fadd fast float %4437, %4420
  %4442 = fadd fast float %4438, %4422
  %4443 = fadd fast float %4439, %4424
  %4444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4445 = extractvalue %dx.types.ResRet.i32 %4444, 0
  %4446 = and i32 %4445, 536870911
  %4447 = uitofp i32 %4446 to float
  %4448 = fmul fast float %4447, %4294
  %4449 = fmul fast float %4447, %4298
  %4450 = fptoui float %4448 to i32
  %4451 = fptoui float %4449 to i32
  %4452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4453 = extractvalue %dx.types.ResRet.i32 %4452, 0
  %4454 = and i32 %4453, 31
  %4455 = lshr i32 %4450, %4454
  %4456 = lshr i32 %4451, %4454
  %4457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4458 = extractvalue %dx.types.ResRet.i32 %4457, 0
  %4459 = and i32 %4458, 31
  %4460 = shl i32 1, %4459
  %4461 = call i32 @dx.op.binary.i32(i32 40, i32 %4460, i32 4)  ; UMin(a,b)
  %4462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4463 = extractvalue %dx.types.ResRet.i32 %4462, 0
  %4464 = extractvalue %dx.types.ResRet.i32 %4462, 1
  %4465 = icmp eq i32 %4461, 0
  br i1 %4465, label %4507, label %4466

; <label>:4466                                    ; preds = %4410
  br label %4467

; <label>:4467                                    ; preds = %4495, %4466
  %4468 = phi i32 [ %4498, %4495 ], [ 0, %4466 ]
  %4469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4470 = extractvalue %dx.types.ResRet.i32 %4469, 0
  %4471 = lshr i32 %4470, 16
  %4472 = and i32 %4471, 31
  %4473 = shl i32 %4456, %4472
  %4474 = add i32 %4473, %4455
  %4475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4476 = extractvalue %dx.types.ResRet.i32 %4475, 0
  %4477 = and i32 %4476, 31
  %4478 = shl i32 %4474, %4477
  %4479 = add i32 %4478, %4468
  %4480 = shl i32 %4479, 2
  %4481 = add i32 %4480, 32
  %4482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4481, i32 undef)  ; BufferLoad(srv,index,wot)
  %4483 = extractvalue %dx.types.ResRet.i32 %4482, 0
  %4484 = icmp slt i32 %4483, 0
  %4485 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4468
  %4486 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4468
  %4487 = bitcast float* %4485 to i32*
  %4488 = bitcast float* %4486 to i32*
  br i1 %4484, label %4489, label %4495

; <label>:4489                                    ; preds = %4467
  %4490 = and i32 %4483, 1073741823
  %4491 = add nuw nsw i32 %4490, 20
  %4492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4491, i32 undef)  ; BufferLoad(srv,index,wot)
  %4493 = extractvalue %dx.types.ResRet.i32 %4492, 0
  %4494 = extractvalue %dx.types.ResRet.i32 %4492, 1
  br label %4495

; <label>:4495                                    ; preds = %4489, %4467
  %4496 = phi i32 [ %4493, %4489 ], [ %4463, %4467 ]
  %4497 = phi i32 [ %4494, %4489 ], [ %4464, %4467 ]
  store i32 %4496, i32* %4487, align 4
  store i32 %4497, i32* %4488, align 4
  %4498 = add nuw i32 %4468, 1
  %4499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.i32 %4499, 2
  %4501 = icmp eq i32 %4500, 0
  %4502 = icmp ugt i32 %4483, -1073741825
  %4503 = and i1 %4502, %4501
  %4504 = icmp ult i32 %4498, %4461
  %4505 = and i1 %4503, %4504
  br i1 %4505, label %4467, label %4506

; <label>:4506                                    ; preds = %4495
  br label %4507

; <label>:4507                                    ; preds = %4506, %4410
  %4508 = phi i32 [ 0, %4410 ], [ %4498, %4506 ]
  %4509 = extractvalue %dx.types.CBufRet.f32 %4272, 2
  %4510 = fptoui float %4509 to i32
  %4511 = icmp eq i32 %4510, 0
  br i1 %4511, label %4563, label %4512

; <label>:4512                                    ; preds = %4507
  br label %4513

; <label>:4513                                    ; preds = %4558, %4512
  %4514 = phi i32 [ %4559, %4558 ], [ %4508, %4512 ]
  %4515 = phi i32 [ %4560, %4558 ], [ 0, %4512 ]
  %4516 = lshr i32 %4515, 2
  %4517 = and i32 %4515, 3
  %4518 = add nuw nsw i32 %4516, 83
  %4519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 %4518)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.i32 %4519, 0
  %4521 = extractvalue %dx.types.CBufRet.i32 %4519, 1
  %4522 = extractvalue %dx.types.CBufRet.i32 %4519, 2
  %4523 = extractvalue %dx.types.CBufRet.i32 %4519, 3
  %4524 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 0
  store i32 %4520, i32* %4524, align 4
  %4525 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 1
  store i32 %4521, i32* %4525, align 4
  %4526 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 2
  store i32 %4522, i32* %4526, align 4
  %4527 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 3
  store i32 %4523, i32* %4527, align 4
  %4528 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 %4517
  %4529 = load i32, i32* %4528, align 4, !tbaa !121, !noalias !125
  %4530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4531 = extractvalue %dx.types.ResRet.i32 %4530, 0
  %4532 = lshr i32 %4531, 16
  %4533 = and i32 %4532, 31
  %4534 = shl i32 %4456, %4533
  %4535 = add i32 %4534, %4455
  %4536 = shl i32 %4535, 2
  %4537 = add i32 %4536, %4529
  %4538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4537, i32 undef)  ; BufferLoad(srv,index,wot)
  %4539 = extractvalue %dx.types.ResRet.i32 %4538, 0
  %4540 = icmp eq i32 %4539, 0
  br i1 %4540, label %4558, label %4541

; <label>:4541                                    ; preds = %4513
  %4542 = icmp slt i32 %4539, 0
  %4543 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4514
  %4544 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4514
  %4545 = bitcast float* %4543 to i32*
  %4546 = bitcast float* %4544 to i32*
  br i1 %4542, label %4547, label %4554

; <label>:4547                                    ; preds = %4541
  %4548 = and i32 %4539, 1073741823
  %4549 = add i32 %4529, 20
  %4550 = add i32 %4549, %4548
  %4551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.i32 %4551, 0
  %4553 = extractvalue %dx.types.ResRet.i32 %4551, 1
  br label %4554

; <label>:4554                                    ; preds = %4547, %4541
  %4555 = phi i32 [ %4552, %4547 ], [ %4463, %4541 ]
  %4556 = phi i32 [ %4553, %4547 ], [ %4464, %4541 ]
  store i32 %4555, i32* %4545, align 4
  store i32 %4556, i32* %4546, align 4
  %4557 = add i32 %4514, 1
  br label %4558

; <label>:4558                                    ; preds = %4554, %4513
  %4559 = phi i32 [ %4514, %4513 ], [ %4557, %4554 ]
  %4560 = add nuw i32 %4515, 1
  %4561 = icmp eq i32 %4560, %4510
  br i1 %4561, label %4562, label %4513

; <label>:4562                                    ; preds = %4558
  br label %4563

; <label>:4563                                    ; preds = %4562, %4507
  %4564 = phi i32 [ %4508, %4507 ], [ %4559, %4562 ]
  %4565 = icmp eq i32 %4564, 1
  %4566 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  %4567 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  br i1 %4565, label %4568, label %4571

; <label>:4568                                    ; preds = %4563
  %4569 = load float, float* %4566, align 4
  %4570 = load float, float* %4567, align 4
  br label %4598

; <label>:4571                                    ; preds = %4563
  %4572 = load float, float* %4566, align 4
  %4573 = load float, float* %4567, align 4
  %4574 = fdiv fast float 1.000000e+00, %4573
  %4575 = fsub fast float %4572, %4574
  %4576 = icmp ugt i32 %4564, 1
  br i1 %4576, label %4577, label %4593

; <label>:4577                                    ; preds = %4571
  br label %4578

; <label>:4578                                    ; preds = %4578, %4577
  %4579 = phi float [ %4588, %4578 ], [ %4575, %4577 ]
  %4580 = phi float [ %4589, %4578 ], [ %4572, %4577 ]
  %4581 = phi i32 [ %4590, %4578 ], [ 1, %4577 ]
  %4582 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4581
  %4583 = load float, float* %4582, align 4
  %4584 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4581
  %4585 = load float, float* %4584, align 4
  %4586 = fdiv fast float 1.000000e+00, %4585
  %4587 = fsub fast float %4583, %4586
  %4588 = call float @dx.op.binary.f32(i32 36, float %4579, float %4587)  ; FMin(a,b)
  %4589 = call float @dx.op.binary.f32(i32 35, float %4580, float %4583)  ; FMax(a,b)
  %4590 = add nuw i32 %4581, 1
  %4591 = icmp eq i32 %4590, %4564
  br i1 %4591, label %4592, label %4578

; <label>:4592                                    ; preds = %4578
  br label %4593

; <label>:4593                                    ; preds = %4592, %4571
  %4594 = phi float [ %4575, %4571 ], [ %4588, %4592 ]
  %4595 = phi float [ %4572, %4571 ], [ %4589, %4592 ]
  %4596 = fsub fast float %4595, %4594
  %4597 = fdiv fast float 1.000000e+00, %4596
  br label %4598

; <label>:4598                                    ; preds = %4593, %4568
  %4599 = phi float [ %4569, %4568 ], [ %4595, %4593 ]
  %4600 = phi float [ %4570, %4568 ], [ %4597, %4593 ]
  %4601 = fadd fast float %4302, %4599
  %4602 = fmul fast float %4601, %4600
  %4603 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4604 = fmul fast float %4603, 2.000000e+00
  %4605 = fsub fast float 1.000000e+00, %4604
  %4606 = fmul fast float %4440, %4440
  %4607 = fsub fast float %4441, %4606
  %4608 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4607)  ; FMax(a,b)
  %4609 = fdiv fast float 1.000000e+00, %4608
  %4610 = fmul fast float %4441, %4440
  %4611 = fsub fast float %4442, %4610
  %4612 = fsub fast float %4605, %4440
  %4613 = fmul fast float %4605, %4605
  %4614 = fsub fast float %4613, %4441
  %4615 = fmul fast float %4609, %4611
  %4616 = fmul fast float %4615, %4612
  %4617 = fsub fast float %4614, %4616
  %4618 = fmul fast float %4441, %4441
  %4619 = fsub fast float %4443, %4618
  %4620 = fmul fast float %4611, %4611
  %4621 = fmul fast float %4620, %4609
  %4622 = fsub fast float %4619, %4621
  %4623 = fdiv fast float %4617, %4622
  %4624 = fmul fast float %4623, %4611
  %4625 = fsub fast float %4612, %4624
  %4626 = fmul fast float %4625, %4609
  %4627 = fmul fast float %4626, %4440
  %4628 = fsub fast float 1.000000e+00, %4627
  %4629 = fmul fast float %4623, %4441
  %4630 = fsub fast float %4628, %4629
  %4631 = fmul fast float %4626, %4626
  %4632 = fmul fast float %4623, 4.000000e+00
  %4633 = fmul fast float %4632, %4630
  %4634 = fsub fast float %4631, %4633
  %4635 = call float @dx.op.unary.f32(i32 24, float %4634)  ; Sqrt(value)
  %4636 = fcmp fast oge float %4626, 0.000000e+00
  %4637 = fsub fast float -0.000000e+00, %4635
  %4638 = select i1 %4636, float %4637, float %4635
  %4639 = fsub fast float %4638, %4626
  %4640 = fdiv fast float %4639, %4623
  %4641 = fdiv fast float %4630, %4639
  %4642 = fmul fast float %4640, 5.000000e-01
  %4643 = fmul fast float %4641, 2.000000e+00
  %4644 = select i1 %4636, float %4642, float %4643
  %4645 = select i1 %4636, float %4643, float %4642
  %4646 = call float @dx.op.binary.f32(i32 35, float %4644, float %4645)  ; FMax(a,b)
  %4647 = call float @dx.op.binary.f32(i32 36, float %4644, float %4645)  ; FMin(a,b)
  %4648 = fcmp fast ogt float %4605, %4646
  %4649 = fsub fast float %4605, %4647
  %4650 = fsub fast float %4605, %4646
  %4651 = fsub fast float %4646, %4647
  %4652 = select i1 %4648, float %4650, float %4651
  %4653 = fmul float %4649, %4652
  %4654 = select i1 %4648, float %4647, float %4605
  %4655 = fcmp fast ogt float %4605, %4647
  %4656 = fmul fast float %4654, %4646
  %4657 = fadd fast float %4654, %4646
  %4658 = fmul fast float %4657, %4440
  %4659 = fadd fast float %4656, %4441
  %4660 = fsub fast float %4659, %4658
  %4661 = fdiv fast float %4660, %4653
  %4662 = select i1 %4655, float %4661, float 0.000000e+00
  %4663 = fsub fast float 1.000000e+00, %4662
  %4664 = select i1 %4648, float %4663, float %4662
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4425, 3
  %4667 = fmul fast float %4666, %4665
  %4668 = fsub fast float 1.000000e+00, %4667
  br label %4669

; <label>:4669                                    ; preds = %4598, %4310, %4275, %4271, %4237
  %4670 = phi float [ 1.000000e+00, %4237 ], [ %4668, %4598 ], [ 1.000000e+00, %4275 ], [ 1.000000e+00, %4310 ], [ 1.000000e+00, %4271 ]
  %4671 = fcmp fast ogt float %4267, 0.000000e+00
  br i1 %4671, label %4672, label %4834, !dx.controlflow.hints !134

; <label>:4672                                    ; preds = %4669
  %4673 = fadd fast float %4180, %4154
  %4674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4674, 2
  %4676 = extractvalue %dx.types.CBufRet.f32 %4674, 3
  %4677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4678 = extractvalue %dx.types.CBufRet.f32 %4677, 2
  %4679 = call float @dx.op.binary.f32(i32 35, float %4673, float 0.000000e+00)  ; FMax(a,b)
  %4680 = fadd fast float %4679, 0x3F10000000000000
  %4681 = fcmp fast oeq float %4678, 0.000000e+00
  br i1 %4681, label %4682, label %4749

; <label>:4682                                    ; preds = %4672
  %4683 = extractvalue %dx.types.CBufRet.f32 %4674, 1
  %4684 = extractvalue %dx.types.CBufRet.f32 %4674, 0
  %4685 = fmul fast float %4684, %4169
  %4686 = fmul fast float %4683, %4170
  %4687 = fadd fast float %4685, 5.000000e-01
  %4688 = call float @dx.op.unary.f32(i32 27, float %4687)  ; Round_ni(value)
  %4689 = fadd fast float %4686, 5.000000e-01
  %4690 = call float @dx.op.unary.f32(i32 27, float %4689)  ; Round_ni(value)
  %4691 = fsub fast float %4687, %4688
  %4692 = fsub fast float %4689, %4690
  %4693 = fadd fast float %4688, -5.000000e-01
  %4694 = fadd fast float %4690, -5.000000e-01
  %4695 = fmul fast float %4691, 2.000000e+00
  %4696 = fsub fast float 3.000000e+00, %4695
  %4697 = fadd fast float %4695, 1.000000e+00
  %4698 = fsub fast float 2.000000e+00, %4691
  %4699 = bitcast float %4696 to i32
  %4700 = sub nsw i32 2129859010, %4699
  %4701 = bitcast i32 %4700 to float
  %4702 = fmul fast float %4701, %4698
  %4703 = fadd fast float %4702, -1.000000e+00
  %4704 = bitcast float %4697 to i32
  %4705 = sub nsw i32 2129859010, %4704
  %4706 = bitcast i32 %4705 to float
  %4707 = fmul fast float %4706, %4691
  %4708 = fadd fast float %4707, 1.000000e+00
  %4709 = fmul fast float %4692, 2.000000e+00
  %4710 = fsub fast float 3.000000e+00, %4709
  %4711 = fadd fast float %4709, 1.000000e+00
  %4712 = fsub fast float 2.000000e+00, %4692
  %4713 = bitcast float %4710 to i32
  %4714 = sub nsw i32 2129859010, %4713
  %4715 = bitcast i32 %4714 to float
  %4716 = fmul fast float %4715, %4712
  %4717 = fadd fast float %4716, -1.000000e+00
  %4718 = bitcast float %4711 to i32
  %4719 = sub nsw i32 2129859010, %4718
  %4720 = bitcast i32 %4719 to float
  %4721 = fmul fast float %4720, %4692
  %4722 = fadd fast float %4721, 1.000000e+00
  %4723 = fadd fast float %4703, %4693
  %4724 = fmul fast float %4723, %4675
  %4725 = fadd fast float %4717, %4694
  %4726 = fmul fast float %4725, %4676
  %4727 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %67, float %4724, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4680)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 0
  %4729 = fmul fast float %4728, %4696
  %4730 = fadd fast float %4708, %4693
  %4731 = fmul fast float %4730, %4675
  %4732 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %67, float %4731, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4680)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4733 = extractvalue %dx.types.ResRet.f32 %4732, 0
  %4734 = fmul fast float %4733, %4697
  %4735 = fadd fast float %4722, %4694
  %4736 = fmul fast float %4735, %4676
  %4737 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %67, float %4724, float %4736, float undef, float undef, i32 0, i32 0, i32 undef, float %4680)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = fmul fast float %4738, %4696
  %4740 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %67, float %4731, float %4736, float undef, float undef, i32 0, i32 0, i32 undef, float %4680)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4741 = extractvalue %dx.types.ResRet.f32 %4740, 0
  %4742 = fmul fast float %4741, %4697
  %4743 = fadd fast float %4742, %4739
  %4744 = fmul fast float %4743, %4711
  %4745 = fadd fast float %4734, %4729
  %4746 = fmul fast float %4745, %4710
  %4747 = fadd fast float %4746, %4744
  %4748 = fmul fast float %4747, 6.250000e-02
  br label %4834

; <label>:4749                                    ; preds = %4672
  %4750 = fmul fast float %250, 0x401921FB60000000
  %4751 = call float @dx.op.unary.f32(i32 13, float %4750)  ; Sin(value)
  %4752 = call float @dx.op.unary.f32(i32 12, float %4750)  ; Cos(value)
  %4753 = fsub fast float -0.000000e+00, %4751
  br label %4754

; <label>:4754                                    ; preds = %4803, %4749
  %4755 = phi float [ 0.000000e+00, %4749 ], [ %4798, %4803 ]
  %4756 = phi float [ 0.000000e+00, %4749 ], [ %4800, %4803 ]
  %4757 = phi i32 [ 0, %4749 ], [ %4804, %4803 ]
  %4758 = mul i32 %4757, 2
  %4759 = add i32 0, %4758
  %4760 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4759
  %4761 = load float, float* %4760, align 4
  %4762 = mul i32 %4757, 2
  %4763 = add i32 1, %4762
  %4764 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4763
  %4765 = load float, float* %4764, align 4
  %4766 = fmul fast float %4761, %4752
  %4767 = call float @dx.op.tertiary.f32(i32 46, float %4765, float %4753, float %4766)  ; FMad(a,b,c)
  %4768 = fmul fast float %4761, %4751
  %4769 = call float @dx.op.tertiary.f32(i32 46, float %4765, float %4752, float %4768)  ; FMad(a,b,c)
  %4770 = fmul fast float %4767, %4678
  %4771 = fmul fast float %4769, %4678
  %4772 = fadd fast float %4770, %4169
  %4773 = fadd fast float %4771, %4170
  %4774 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %66, float %4772, float %4773, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 1
  %4777 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4778 = extractvalue %dx.types.ResRet.f32 %4774, 3
  %4779 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %4775, float* %4779, align 4
  %4780 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %4776, float* %4780, align 4
  %4781 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %4777, float* %4781, align 4
  %4782 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %4778, float* %4782, align 4
  %4783 = fsub fast float %4775, %4680
  %4784 = fcmp fast olt float %4783, 0.000000e+00
  %4785 = select i1 %4784, float 0.000000e+00, float 1.000000e+00
  %4786 = fadd fast float %4785, %4755
  %4787 = fmul fast float %4785, %4783
  %4788 = fadd fast float %4787, %4756
  br label %4789

; <label>:4789                                    ; preds = %4789, %4754
  %4790 = phi i32 [ 1, %4754 ], [ %4801, %4789 ]
  %4791 = phi float [ %4788, %4754 ], [ %4800, %4789 ]
  %4792 = phi float [ %4786, %4754 ], [ %4798, %4789 ]
  %4793 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %4790
  %4794 = load float, float* %4793, align 4, !tbaa !135, !noalias !125
  %4795 = fsub fast float %4794, %4680
  %4796 = fcmp fast olt float %4795, 0.000000e+00
  %4797 = select i1 %4796, float 0.000000e+00, float 1.000000e+00
  %4798 = fadd fast float %4797, %4792
  %4799 = fmul fast float %4797, %4795
  %4800 = fadd fast float %4799, %4791
  %4801 = add nuw nsw i32 %4790, 1
  %4802 = icmp eq i32 %4801, 4
  br i1 %4802, label %4803, label %4789, !llvm.loop !137

; <label>:4803                                    ; preds = %4789
  %4804 = add nuw nsw i32 %4757, 1
  %4805 = icmp eq i32 %4804, 8
  br i1 %4805, label %4806, label %4754, !llvm.loop !138

; <label>:4806                                    ; preds = %4803
  %4807 = fdiv fast float 1.000000e+00, %4798
  %4808 = fmul fast float %4807, %4800
  %4809 = fdiv fast float 1.000000e+00, %4680
  %4810 = fmul fast float %4808, %4809
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = call float @dx.op.binary.f32(i32 35, float %4811, float 0.000000e+00)  ; FMax(a,b)
  %4813 = fmul fast float %4798, 3.125000e-02
  %4814 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4815 = fmul fast float %4814, 2.000000e+00
  %4816 = fadd fast float %4815, -1.000000e+00
  %4817 = fcmp fast ogt float %4816, 0.000000e+00
  %4818 = fcmp fast olt float %4816, 0.000000e+00
  %4819 = zext i1 %4817 to i32
  %4820 = zext i1 %4818 to i32
  %4821 = sub nsw i32 %4819, %4820
  %4822 = sitofp i32 %4821 to float
  %4823 = fmul fast float %4822, %4816
  %4824 = fsub fast float 1.000000e+00, %4823
  %4825 = fmul fast float %4824, %4824
  %4826 = fmul fast float %4825, %4824
  %4827 = fsub fast float %4824, %4826
  %4828 = fmul fast float %4827, %4812
  %4829 = fsub fast float 1.000000e+00, %4826
  %4830 = fsub fast float %4829, %4828
  %4831 = fmul fast float %4822, 5.000000e-01
  %4832 = fmul fast float %4831, %4830
  %4833 = fsub fast float 5.000000e-01, %4832
  br label %4834

; <label>:4834                                    ; preds = %4806, %4682, %4669
  %4835 = phi float [ 1.000000e+00, %4669 ], [ %4748, %4682 ], [ %4833, %4806 ]
  %4836 = fcmp fast ogt float %4265, 0.000000e+00
  br i1 %4836, label %4837, label %5001, !dx.controlflow.hints !139

; <label>:4837                                    ; preds = %4834
  %4838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4838, 1
  %4840 = fadd fast float %4839, %4154
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 2
  %4843 = extractvalue %dx.types.CBufRet.f32 %4841, 3
  %4844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4845 = extractvalue %dx.types.CBufRet.f32 %4844, 1
  %4846 = call float @dx.op.binary.f32(i32 35, float %4840, float 0.000000e+00)  ; FMax(a,b)
  %4847 = fadd fast float %4846, 0x3F10000000000000
  %4848 = fcmp fast oeq float %4845, 0.000000e+00
  br i1 %4848, label %4849, label %4916

; <label>:4849                                    ; preds = %4837
  %4850 = extractvalue %dx.types.CBufRet.f32 %4841, 1
  %4851 = extractvalue %dx.types.CBufRet.f32 %4841, 0
  %4852 = fmul fast float %4851, %4161
  %4853 = fmul fast float %4850, %4162
  %4854 = fadd fast float %4852, 5.000000e-01
  %4855 = call float @dx.op.unary.f32(i32 27, float %4854)  ; Round_ni(value)
  %4856 = fadd fast float %4853, 5.000000e-01
  %4857 = call float @dx.op.unary.f32(i32 27, float %4856)  ; Round_ni(value)
  %4858 = fsub fast float %4854, %4855
  %4859 = fsub fast float %4856, %4857
  %4860 = fadd fast float %4855, -5.000000e-01
  %4861 = fadd fast float %4857, -5.000000e-01
  %4862 = fmul fast float %4858, 2.000000e+00
  %4863 = fsub fast float 3.000000e+00, %4862
  %4864 = fadd fast float %4862, 1.000000e+00
  %4865 = fsub fast float 2.000000e+00, %4858
  %4866 = bitcast float %4863 to i32
  %4867 = sub nsw i32 2129859010, %4866
  %4868 = bitcast i32 %4867 to float
  %4869 = fmul fast float %4868, %4865
  %4870 = fadd fast float %4869, -1.000000e+00
  %4871 = bitcast float %4864 to i32
  %4872 = sub nsw i32 2129859010, %4871
  %4873 = bitcast i32 %4872 to float
  %4874 = fmul fast float %4873, %4858
  %4875 = fadd fast float %4874, 1.000000e+00
  %4876 = fmul fast float %4859, 2.000000e+00
  %4877 = fsub fast float 3.000000e+00, %4876
  %4878 = fadd fast float %4876, 1.000000e+00
  %4879 = fsub fast float 2.000000e+00, %4859
  %4880 = bitcast float %4877 to i32
  %4881 = sub nsw i32 2129859010, %4880
  %4882 = bitcast i32 %4881 to float
  %4883 = fmul fast float %4882, %4879
  %4884 = fadd fast float %4883, -1.000000e+00
  %4885 = bitcast float %4878 to i32
  %4886 = sub nsw i32 2129859010, %4885
  %4887 = bitcast i32 %4886 to float
  %4888 = fmul fast float %4887, %4859
  %4889 = fadd fast float %4888, 1.000000e+00
  %4890 = fadd fast float %4870, %4860
  %4891 = fmul fast float %4890, %4842
  %4892 = fadd fast float %4884, %4861
  %4893 = fmul fast float %4892, %4843
  %4894 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %67, float %4891, float %4893, float undef, float undef, i32 0, i32 0, i32 undef, float %4847)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4895 = extractvalue %dx.types.ResRet.f32 %4894, 0
  %4896 = fmul fast float %4895, %4863
  %4897 = fadd fast float %4875, %4860
  %4898 = fmul fast float %4897, %4842
  %4899 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %67, float %4898, float %4893, float undef, float undef, i32 0, i32 0, i32 undef, float %4847)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4900 = extractvalue %dx.types.ResRet.f32 %4899, 0
  %4901 = fmul fast float %4900, %4864
  %4902 = fadd fast float %4889, %4861
  %4903 = fmul fast float %4902, %4843
  %4904 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %67, float %4891, float %4903, float undef, float undef, i32 0, i32 0, i32 undef, float %4847)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4905 = extractvalue %dx.types.ResRet.f32 %4904, 0
  %4906 = fmul fast float %4905, %4863
  %4907 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %67, float %4898, float %4903, float undef, float undef, i32 0, i32 0, i32 undef, float %4847)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = fmul fast float %4908, %4864
  %4910 = fadd fast float %4909, %4906
  %4911 = fmul fast float %4910, %4878
  %4912 = fadd fast float %4901, %4896
  %4913 = fmul fast float %4912, %4877
  %4914 = fadd fast float %4913, %4911
  %4915 = fmul fast float %4914, 6.250000e-02
  br label %5001

; <label>:4916                                    ; preds = %4837
  %4917 = fmul fast float %250, 0x401921FB60000000
  %4918 = call float @dx.op.unary.f32(i32 13, float %4917)  ; Sin(value)
  %4919 = call float @dx.op.unary.f32(i32 12, float %4917)  ; Cos(value)
  %4920 = fsub fast float -0.000000e+00, %4918
  br label %4921

; <label>:4921                                    ; preds = %4970, %4916
  %4922 = phi float [ 0.000000e+00, %4916 ], [ %4965, %4970 ]
  %4923 = phi float [ 0.000000e+00, %4916 ], [ %4967, %4970 ]
  %4924 = phi i32 [ 0, %4916 ], [ %4971, %4970 ]
  %4925 = mul i32 %4924, 2
  %4926 = add i32 0, %4925
  %4927 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4926
  %4928 = load float, float* %4927, align 4
  %4929 = mul i32 %4924, 2
  %4930 = add i32 1, %4929
  %4931 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4930
  %4932 = load float, float* %4931, align 4
  %4933 = fmul fast float %4928, %4919
  %4934 = call float @dx.op.tertiary.f32(i32 46, float %4932, float %4920, float %4933)  ; FMad(a,b,c)
  %4935 = fmul fast float %4928, %4918
  %4936 = call float @dx.op.tertiary.f32(i32 46, float %4932, float %4919, float %4935)  ; FMad(a,b,c)
  %4937 = fmul fast float %4934, %4845
  %4938 = fmul fast float %4936, %4845
  %4939 = fadd fast float %4937, %4161
  %4940 = fadd fast float %4938, %4162
  %4941 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %66, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = extractvalue %dx.types.ResRet.f32 %4941, 3
  %4946 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %4942, float* %4946, align 4
  %4947 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %4943, float* %4947, align 4
  %4948 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %4944, float* %4948, align 4
  %4949 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %4945, float* %4949, align 4
  %4950 = fsub fast float %4942, %4847
  %4951 = fcmp fast olt float %4950, 0.000000e+00
  %4952 = select i1 %4951, float 0.000000e+00, float 1.000000e+00
  %4953 = fadd fast float %4952, %4922
  %4954 = fmul fast float %4952, %4950
  %4955 = fadd fast float %4954, %4923
  br label %4956

; <label>:4956                                    ; preds = %4956, %4921
  %4957 = phi i32 [ 1, %4921 ], [ %4968, %4956 ]
  %4958 = phi float [ %4955, %4921 ], [ %4967, %4956 ]
  %4959 = phi float [ %4953, %4921 ], [ %4965, %4956 ]
  %4960 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %4957
  %4961 = load float, float* %4960, align 4, !tbaa !135, !noalias !125
  %4962 = fsub fast float %4961, %4847
  %4963 = fcmp fast olt float %4962, 0.000000e+00
  %4964 = select i1 %4963, float 0.000000e+00, float 1.000000e+00
  %4965 = fadd fast float %4964, %4959
  %4966 = fmul fast float %4964, %4962
  %4967 = fadd fast float %4966, %4958
  %4968 = add nuw nsw i32 %4957, 1
  %4969 = icmp eq i32 %4968, 4
  br i1 %4969, label %4970, label %4956, !llvm.loop !137

; <label>:4970                                    ; preds = %4956
  %4971 = add nuw nsw i32 %4924, 1
  %4972 = icmp eq i32 %4971, 8
  br i1 %4972, label %4973, label %4921, !llvm.loop !138

; <label>:4973                                    ; preds = %4970
  %4974 = fdiv fast float 1.000000e+00, %4965
  %4975 = fmul fast float %4974, %4967
  %4976 = fdiv fast float 1.000000e+00, %4847
  %4977 = fmul fast float %4975, %4976
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = call float @dx.op.binary.f32(i32 35, float %4978, float 0.000000e+00)  ; FMax(a,b)
  %4980 = fmul fast float %4965, 3.125000e-02
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4982 = fmul fast float %4981, 2.000000e+00
  %4983 = fadd fast float %4982, -1.000000e+00
  %4984 = fcmp fast ogt float %4983, 0.000000e+00
  %4985 = fcmp fast olt float %4983, 0.000000e+00
  %4986 = zext i1 %4984 to i32
  %4987 = zext i1 %4985 to i32
  %4988 = sub nsw i32 %4986, %4987
  %4989 = sitofp i32 %4988 to float
  %4990 = fmul fast float %4989, %4983
  %4991 = fsub fast float 1.000000e+00, %4990
  %4992 = fmul fast float %4991, %4991
  %4993 = fmul fast float %4992, %4991
  %4994 = fsub fast float %4991, %4993
  %4995 = fmul fast float %4994, %4979
  %4996 = fsub fast float 1.000000e+00, %4993
  %4997 = fsub fast float %4996, %4995
  %4998 = fmul fast float %4989, 5.000000e-01
  %4999 = fmul fast float %4998, %4997
  %5000 = fsub fast float 5.000000e-01, %4999
  br label %5001

; <label>:5001                                    ; preds = %4973, %4849, %4834
  %5002 = phi float [ 1.000000e+00, %4834 ], [ %4915, %4849 ], [ %5000, %4973 ]
  %5003 = fcmp fast ogt float %4264, 0.000000e+00
  br i1 %5003, label %5004, label %5168, !dx.controlflow.hints !140

; <label>:5004                                    ; preds = %5001
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 0
  %5007 = fadd fast float %5006, %4154
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 2
  %5010 = extractvalue %dx.types.CBufRet.f32 %5008, 3
  %5011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5011, 0
  %5013 = call float @dx.op.binary.f32(i32 35, float %5007, float 0.000000e+00)  ; FMax(a,b)
  %5014 = fadd fast float %5013, 0x3F10000000000000
  %5015 = fcmp fast oeq float %5012, 0.000000e+00
  br i1 %5015, label %5016, label %5083

; <label>:5016                                    ; preds = %5004
  %5017 = extractvalue %dx.types.CBufRet.f32 %5008, 1
  %5018 = extractvalue %dx.types.CBufRet.f32 %5008, 0
  %5019 = fmul fast float %5018, %4146
  %5020 = fmul fast float %5017, %4150
  %5021 = fadd fast float %5019, 5.000000e-01
  %5022 = call float @dx.op.unary.f32(i32 27, float %5021)  ; Round_ni(value)
  %5023 = fadd fast float %5020, 5.000000e-01
  %5024 = call float @dx.op.unary.f32(i32 27, float %5023)  ; Round_ni(value)
  %5025 = fsub fast float %5021, %5022
  %5026 = fsub fast float %5023, %5024
  %5027 = fadd fast float %5022, -5.000000e-01
  %5028 = fadd fast float %5024, -5.000000e-01
  %5029 = fmul fast float %5025, 2.000000e+00
  %5030 = fsub fast float 3.000000e+00, %5029
  %5031 = fadd fast float %5029, 1.000000e+00
  %5032 = fsub fast float 2.000000e+00, %5025
  %5033 = bitcast float %5030 to i32
  %5034 = sub nsw i32 2129859010, %5033
  %5035 = bitcast i32 %5034 to float
  %5036 = fmul fast float %5035, %5032
  %5037 = fadd fast float %5036, -1.000000e+00
  %5038 = bitcast float %5031 to i32
  %5039 = sub nsw i32 2129859010, %5038
  %5040 = bitcast i32 %5039 to float
  %5041 = fmul fast float %5040, %5025
  %5042 = fadd fast float %5041, 1.000000e+00
  %5043 = fmul fast float %5026, 2.000000e+00
  %5044 = fsub fast float 3.000000e+00, %5043
  %5045 = fadd fast float %5043, 1.000000e+00
  %5046 = fsub fast float 2.000000e+00, %5026
  %5047 = bitcast float %5044 to i32
  %5048 = sub nsw i32 2129859010, %5047
  %5049 = bitcast i32 %5048 to float
  %5050 = fmul fast float %5049, %5046
  %5051 = fadd fast float %5050, -1.000000e+00
  %5052 = bitcast float %5045 to i32
  %5053 = sub nsw i32 2129859010, %5052
  %5054 = bitcast i32 %5053 to float
  %5055 = fmul fast float %5054, %5026
  %5056 = fadd fast float %5055, 1.000000e+00
  %5057 = fadd fast float %5037, %5027
  %5058 = fmul fast float %5057, %5009
  %5059 = fadd fast float %5051, %5028
  %5060 = fmul fast float %5059, %5010
  %5061 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %5058, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float %5014)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5062 = extractvalue %dx.types.ResRet.f32 %5061, 0
  %5063 = fmul fast float %5062, %5030
  %5064 = fadd fast float %5042, %5027
  %5065 = fmul fast float %5064, %5009
  %5066 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %5065, float %5060, float undef, float undef, i32 0, i32 0, i32 undef, float %5014)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5067 = extractvalue %dx.types.ResRet.f32 %5066, 0
  %5068 = fmul fast float %5067, %5031
  %5069 = fadd fast float %5056, %5028
  %5070 = fmul fast float %5069, %5010
  %5071 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %5058, float %5070, float undef, float undef, i32 0, i32 0, i32 undef, float %5014)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5072 = extractvalue %dx.types.ResRet.f32 %5071, 0
  %5073 = fmul fast float %5072, %5030
  %5074 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %5065, float %5070, float undef, float undef, i32 0, i32 0, i32 undef, float %5014)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5075 = extractvalue %dx.types.ResRet.f32 %5074, 0
  %5076 = fmul fast float %5075, %5031
  %5077 = fadd fast float %5076, %5073
  %5078 = fmul fast float %5077, %5045
  %5079 = fadd fast float %5068, %5063
  %5080 = fmul fast float %5079, %5044
  %5081 = fadd fast float %5080, %5078
  %5082 = fmul fast float %5081, 6.250000e-02
  br label %5168

; <label>:5083                                    ; preds = %5004
  %5084 = fmul fast float %250, 0x401921FB60000000
  %5085 = call float @dx.op.unary.f32(i32 13, float %5084)  ; Sin(value)
  %5086 = call float @dx.op.unary.f32(i32 12, float %5084)  ; Cos(value)
  %5087 = fsub fast float -0.000000e+00, %5085
  br label %5088

; <label>:5088                                    ; preds = %5137, %5083
  %5089 = phi float [ 0.000000e+00, %5083 ], [ %5132, %5137 ]
  %5090 = phi float [ 0.000000e+00, %5083 ], [ %5134, %5137 ]
  %5091 = phi i32 [ 0, %5083 ], [ %5138, %5137 ]
  %5092 = mul i32 %5091, 2
  %5093 = add i32 0, %5092
  %5094 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5093
  %5095 = load float, float* %5094, align 4
  %5096 = mul i32 %5091, 2
  %5097 = add i32 1, %5096
  %5098 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5097
  %5099 = load float, float* %5098, align 4
  %5100 = fmul fast float %5095, %5086
  %5101 = call float @dx.op.tertiary.f32(i32 46, float %5099, float %5087, float %5100)  ; FMad(a,b,c)
  %5102 = fmul fast float %5095, %5085
  %5103 = call float @dx.op.tertiary.f32(i32 46, float %5099, float %5086, float %5102)  ; FMad(a,b,c)
  %5104 = fmul fast float %5101, %5012
  %5105 = fmul fast float %5103, %5012
  %5106 = fadd fast float %5104, %4146
  %5107 = fadd fast float %5105, %4150
  %5108 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %66, float %5106, float %5107, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 0
  %5110 = extractvalue %dx.types.ResRet.f32 %5108, 1
  %5111 = extractvalue %dx.types.ResRet.f32 %5108, 2
  %5112 = extractvalue %dx.types.ResRet.f32 %5108, 3
  %5113 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %5109, float* %5113, align 4
  %5114 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %5110, float* %5114, align 4
  %5115 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %5111, float* %5115, align 4
  %5116 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %5112, float* %5116, align 4
  %5117 = fsub fast float %5109, %5014
  %5118 = fcmp fast olt float %5117, 0.000000e+00
  %5119 = select i1 %5118, float 0.000000e+00, float 1.000000e+00
  %5120 = fadd fast float %5119, %5089
  %5121 = fmul fast float %5119, %5117
  %5122 = fadd fast float %5121, %5090
  br label %5123

; <label>:5123                                    ; preds = %5123, %5088
  %5124 = phi i32 [ 1, %5088 ], [ %5135, %5123 ]
  %5125 = phi float [ %5122, %5088 ], [ %5134, %5123 ]
  %5126 = phi float [ %5120, %5088 ], [ %5132, %5123 ]
  %5127 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %5124
  %5128 = load float, float* %5127, align 4, !tbaa !135, !noalias !125
  %5129 = fsub fast float %5128, %5014
  %5130 = fcmp fast olt float %5129, 0.000000e+00
  %5131 = select i1 %5130, float 0.000000e+00, float 1.000000e+00
  %5132 = fadd fast float %5131, %5126
  %5133 = fmul fast float %5131, %5129
  %5134 = fadd fast float %5133, %5125
  %5135 = add nuw nsw i32 %5124, 1
  %5136 = icmp eq i32 %5135, 4
  br i1 %5136, label %5137, label %5123, !llvm.loop !137

; <label>:5137                                    ; preds = %5123
  %5138 = add nuw nsw i32 %5091, 1
  %5139 = icmp eq i32 %5138, 8
  br i1 %5139, label %5140, label %5088, !llvm.loop !138

; <label>:5140                                    ; preds = %5137
  %5141 = fdiv fast float 1.000000e+00, %5132
  %5142 = fmul fast float %5141, %5134
  %5143 = fdiv fast float 1.000000e+00, %5014
  %5144 = fmul fast float %5142, %5143
  %5145 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5146 = call float @dx.op.binary.f32(i32 35, float %5145, float 0.000000e+00)  ; FMax(a,b)
  %5147 = fmul fast float %5132, 3.125000e-02
  %5148 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5149 = fmul fast float %5148, 2.000000e+00
  %5150 = fadd fast float %5149, -1.000000e+00
  %5151 = fcmp fast ogt float %5150, 0.000000e+00
  %5152 = fcmp fast olt float %5150, 0.000000e+00
  %5153 = zext i1 %5151 to i32
  %5154 = zext i1 %5152 to i32
  %5155 = sub nsw i32 %5153, %5154
  %5156 = sitofp i32 %5155 to float
  %5157 = fmul fast float %5156, %5150
  %5158 = fsub fast float 1.000000e+00, %5157
  %5159 = fmul fast float %5158, %5158
  %5160 = fmul fast float %5159, %5158
  %5161 = fsub fast float %5158, %5160
  %5162 = fmul fast float %5161, %5146
  %5163 = fsub fast float 1.000000e+00, %5160
  %5164 = fsub fast float %5163, %5162
  %5165 = fmul fast float %5156, 5.000000e-01
  %5166 = fmul fast float %5165, %5164
  %5167 = fsub fast float 5.000000e-01, %5166
  br label %5168

; <label>:5168                                    ; preds = %5140, %5016, %5001
  %5169 = phi float [ 1.000000e+00, %5001 ], [ %5082, %5016 ], [ %5167, %5140 ]
  %5170 = fsub fast float %4835, %4670
  %5171 = fmul fast float %5170, %4208
  %5172 = fadd fast float %5171, %4670
  %5173 = fsub fast float %5002, %5172
  %5174 = fmul fast float %5173, %4238
  %5175 = fadd fast float %5174, %5172
  %5176 = fsub fast float %5169, %5175
  %5177 = fmul fast float %5176, %4264
  %5178 = fadd fast float %5177, %5175
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 2
  %5181 = fcmp fast ogt float %5180, 0.000000e+00
  br i1 %5181, label %5182, label %5222, !dx.controlflow.hints !141

; <label>:5182                                    ; preds = %5168
  %5183 = fcmp fast ugt float %5180, 0.000000e+00
  br i1 %5183, label %5184, label %5219

; <label>:5184                                    ; preds = %5182
  %5185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.CBufRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.CBufRet.f32 %5185, 2
  %5189 = extractvalue %dx.types.CBufRet.f32 %5185, 3
  %5190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.CBufRet.f32 %5190, 1
  %5193 = extractvalue %dx.types.CBufRet.f32 %5190, 2
  %5194 = extractvalue %dx.types.CBufRet.f32 %5190, 3
  %5195 = extractvalue %dx.types.CBufRet.f32 %5179, 0
  %5196 = extractvalue %dx.types.CBufRet.f32 %5179, 1
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 0
  %5199 = extractvalue %dx.types.CBufRet.f32 %5197, 1
  %5200 = extractvalue %dx.types.CBufRet.f32 %5197, 2
  %5201 = fadd fast float %5198, %4123
  %5202 = fadd fast float %5199, %4124
  %5203 = fadd fast float %5200, %4125
  %5204 = fmul fast float %5201, %5186
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %5187, float %5202, float %5204)  ; FMad(a,b,c)
  %5206 = call float @dx.op.tertiary.f32(i32 46, float %5188, float %5203, float %5205)  ; FMad(a,b,c)
  %5207 = fadd fast float %5206, %5189
  %5208 = fmul fast float %5201, %5191
  %5209 = call float @dx.op.tertiary.f32(i32 46, float %5192, float %5202, float %5208)  ; FMad(a,b,c)
  %5210 = call float @dx.op.tertiary.f32(i32 46, float %5193, float %5203, float %5209)  ; FMad(a,b,c)
  %5211 = fadd fast float %5210, %5194
  %5212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %62, float %5207, float %5211, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = fmul fast float %5213, %5196
  %5215 = fadd fast float %5214, %5195
  %5216 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5217 = fmul fast float %5216, %5180
  %5218 = fsub fast float 1.000000e+00, %5217
  br label %5219

; <label>:5219                                    ; preds = %5184, %5182
  %5220 = phi float [ %5218, %5184 ], [ 1.000000e+00, %5182 ]
  %5221 = fmul fast float %5220, %5178
  br label %5222

; <label>:5222                                    ; preds = %5219, %5168, %4103
  %5223 = phi float [ 1.000000e+00, %4103 ], [ %5221, %5219 ], [ %5178, %5168 ]
  %5224 = call float @dx.op.binary.f32(i32 36, float %5223, float %5223)  ; FMin(a,b)
  %5225 = call float @dx.op.binary.f32(i32 36, float %5223, float %5224)  ; FMin(a,b)
  %5226 = fcmp fast ogt float %5225, 0.000000e+00
  br i1 %5226, label %5227, label %5392, !dx.controlflow.hints !142

; <label>:5227                                    ; preds = %5222
  %5228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5228, 0
  %5230 = extractvalue %dx.types.CBufRet.f32 %5228, 1
  %5231 = extractvalue %dx.types.CBufRet.f32 %5228, 2
  %5232 = extractvalue %dx.types.CBufRet.f32 %5228, 3
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 0
  %5235 = extractvalue %dx.types.CBufRet.f32 %5233, 1
  %5236 = extractvalue %dx.types.CBufRet.f32 %5233, 2
  %5237 = extractvalue %dx.types.CBufRet.f32 %5233, 3
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 0
  %5240 = extractvalue %dx.types.CBufRet.f32 %5238, 1
  %5241 = extractvalue %dx.types.CBufRet.f32 %5238, 2
  %5242 = extractvalue %dx.types.CBufRet.f32 %5238, 3
  %5243 = fmul fast float %5229, %4123
  %5244 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %5230, float %5243)  ; FMad(a,b,c)
  %5245 = call float @dx.op.tertiary.f32(i32 46, float %4125, float %5231, float %5244)  ; FMad(a,b,c)
  %5246 = fadd fast float %5245, %5232
  %5247 = fmul fast float %5234, %4123
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %5235, float %5247)  ; FMad(a,b,c)
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %4125, float %5236, float %5248)  ; FMad(a,b,c)
  %5250 = fadd fast float %5249, %5237
  %5251 = fmul fast float %5239, %4123
  %5252 = call float @dx.op.tertiary.f32(i32 46, float %4124, float %5240, float %5251)  ; FMad(a,b,c)
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %4125, float %5241, float %5252)  ; FMad(a,b,c)
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5257 = extractvalue %dx.types.CBufRet.f32 %5254, 3
  %5258 = fmul fast float %5257, %5246
  %5259 = fmul fast float %5257, %5250
  %5260 = fadd fast float %5258, %5255
  %5261 = fadd fast float %5259, %5256
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.CBufRet.f32 %5262, 1
  %5265 = fsub fast float %5260, %5263
  %5266 = fsub fast float %5261, %5264
  %5267 = fcmp fast olt float %5265, 0.000000e+00
  %5268 = fcmp fast olt float %5266, 0.000000e+00
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.CBufRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.CBufRet.f32 %5269, 2
  %5273 = extractvalue %dx.types.CBufRet.f32 %5269, 3
  %5274 = select i1 %5267, float %5270, float %5272
  %5275 = select i1 %5268, float %5271, float %5273
  %5276 = fmul fast float %5274, %5265
  %5277 = fmul fast float %5275, %5266
  %5278 = call float @dx.op.unary.f32(i32 6, float %5276)  ; FAbs(value)
  %5279 = call float @dx.op.unary.f32(i32 6, float %5277)  ; FAbs(value)
  %5280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.f32 %5280, 0
  %5282 = call float @dx.op.binary.f32(i32 35, float %5278, float %5279)  ; FMax(a,b)
  %5283 = fsub fast float %5281, %5282
  %5284 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5285 = fcmp fast ogt float %5284, 0.000000e+00
  br i1 %5285, label %5286, label %5327, !dx.controlflow.hints !143

; <label>:5286                                    ; preds = %5227
  %5287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %65, float %5260, float %5261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5288 = extractvalue %dx.types.ResRet.f32 %5287, 1
  %5289 = fcmp fast ogt float %5288, 0.000000e+00
  br i1 %5289, label %5290, label %5322

; <label>:5290                                    ; preds = %5286
  %5291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %65, float %5260, float %5261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.ResRet.f32 %5291, 1
  %5294 = extractvalue %dx.types.ResRet.f32 %5291, 2
  %5295 = extractvalue %dx.types.ResRet.f32 %5291, 3
  %5296 = fsub fast float 1.000000e+00, %5242
  %5297 = fsub fast float %5296, %5253
  %5298 = fmul fast float %5297, 0x400921FB60000000
  %5299 = fadd fast float %5298, 0x3FF921FB60000000
  %5300 = call float @dx.op.unary.f32(i32 13, float %5299)  ; Sin(value)
  %5301 = fadd fast float %5300, -1.000000e+00
  %5302 = fmul fast float %5301, 0x3FD45F3060000000
  %5303 = fmul fast float %5297, 0x401921FB60000000
  %5304 = fadd fast float %5303, 0x400921FB60000000
  %5305 = call float @dx.op.unary.f32(i32 13, float %5304)  ; Sin(value)
  %5306 = fadd fast float %5305, 0x3E7777A5C0000000
  %5307 = fmul fast float %5306, 0x3FC45F3060000000
  %5308 = fmul fast float %5297, 0x4022D97C80000000
  %5309 = fadd fast float %5308, 0x4012D97C80000000
  %5310 = call float @dx.op.unary.f32(i32 13, float %5309)  ; Sin(value)
  %5311 = fadd fast float %5310, 1.000000e+00
  %5312 = fmul fast float %5311, 0x3FBB2995E0000000
  %5313 = fmul fast float %5297, 0x402921FB60000000
  %5314 = fadd fast float %5313, 0x401921FB60000000
  %5315 = call float @dx.op.unary.f32(i32 13, float %5314)  ; Sin(value)
  %5316 = fadd fast float %5315, 0xBE8777A5C0000000
  %5317 = fmul fast float %5316, 0x3FB45F3060000000
  %5318 = call float @dx.op.dot4.f32(i32 56, float %5292, float %5293, float %5294, float %5295, float %5302, float %5307, float %5312, float %5317)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5319 = fmul fast float %5318, 0xBFF7154760000000
  %5320 = call float @dx.op.unary.f32(i32 21, float %5319)  ; Exp(value)
  %5321 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  br label %5322

; <label>:5322                                    ; preds = %5290, %5286
  %5323 = phi float [ %5321, %5290 ], [ 1.000000e+00, %5286 ]
  %5324 = fadd fast float %5323, -1.000000e+00
  %5325 = fmul fast float %5324, %5284
  %5326 = fadd fast float %5325, 1.000000e+00
  br label %5327

; <label>:5327                                    ; preds = %5322, %5227
  %5328 = phi float [ %5326, %5322 ], [ 1.000000e+00, %5227 ]
  %5329 = fmul fast float %5328, %5223
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.CBufRet.f32 %5330, 1
  %5333 = extractvalue %dx.types.CBufRet.f32 %5330, 2
  %5334 = fadd fast float %5331, %148
  %5335 = fadd fast float %5332, %149
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 1
  %5338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.f32 %5338, 0
  %5340 = extractvalue %dx.types.CBufRet.f32 %5338, 1
  %5341 = extractvalue %dx.types.CBufRet.f32 %5338, 2
  %5342 = fsub fast float -0.000000e+00, %5334
  %5343 = fsub fast float -0.000000e+00, %5335
  %5344 = fsub fast float %2117, %5333
  %5345 = fadd fast float %5344, %5337
  %5346 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5342, float %5343, float %5345)  ; Dot3(ax,ay,az,bx,by,bz)
  %5347 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5339, float %5340, float %5341)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = fdiv fast float 1.000000e+00, %5347
  %5349 = fmul fast float %5348, %5346
  %5350 = fmul fast float %5339, %5349
  %5351 = fmul fast float %5340, %5349
  %5352 = fadd fast float %5350, %5334
  %5353 = fadd fast float %5351, %5335
  %5354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.f32 %5354, 0
  %5356 = extractvalue %dx.types.CBufRet.f32 %5354, 1
  %5357 = fsub fast float %5352, %5355
  %5358 = fsub fast float %5353, %5356
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 2
  %5361 = extractvalue %dx.types.CBufRet.f32 %5359, 3
  %5362 = fmul fast float %5357, %5360
  %5363 = fmul fast float %5358, %5361
  %5364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.i32 %5364, 3
  %5366 = icmp eq i32 %5365, 0
  br i1 %5366, label %5372, label %5367

; <label>:5367                                    ; preds = %5327
  %5368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5362, float %5363, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = extractvalue %dx.types.ResRet.f32 %5368, 1
  %5371 = extractvalue %dx.types.ResRet.f32 %5368, 2
  br label %5377

; <label>:5372                                    ; preds = %5327
  %5373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %65, float %5362, float %5363, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5374 = extractvalue %dx.types.ResRet.f32 %5373, 0
  %5375 = extractvalue %dx.types.ResRet.f32 %5373, 1
  %5376 = extractvalue %dx.types.ResRet.f32 %5373, 2
  br label %5377

; <label>:5377                                    ; preds = %5372, %5367
  %5378 = phi float [ %5369, %5367 ], [ %5374, %5372 ]
  %5379 = phi float [ %5370, %5367 ], [ %5375, %5372 ]
  %5380 = phi float [ %5371, %5367 ], [ %5376, %5372 ]
  %5381 = extractvalue %dx.types.CBufRet.f32 %5336, 2
  %5382 = fmul fast float %5381, %5378
  %5383 = extractvalue %dx.types.CBufRet.f32 %5336, 0
  %5384 = fsub fast float %5349, %5383
  %5385 = fsub fast float %5384, %5382
  %5386 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5385)  ; FMax(a,b)
  %5387 = fmul fast float %5386, %5379
  %5388 = call float @dx.op.binary.f32(i32 36, float %5380, float %5387)  ; FMin(a,b)
  %5389 = fmul fast float %5388, 0xBFF7154760000000
  %5390 = call float @dx.op.unary.f32(i32 21, float %5389)  ; Exp(value)
  %5391 = fmul fast float %5329, %5390
  br label %5392

; <label>:5392                                    ; preds = %5377, %5222
  %5393 = phi float [ %5391, %5377 ], [ %5223, %5222 ]
  %5394 = call float @dx.op.binary.f32(i32 36, float %5393, float %5393)  ; FMin(a,b)
  %5395 = call float @dx.op.binary.f32(i32 36, float %5393, float %5394)  ; FMin(a,b)
  %5396 = fcmp fast ogt float %5395, 0.000000e+00
  br i1 %5396, label %5397, label %5644, !dx.controlflow.hints !144

; <label>:5397                                    ; preds = %5392
  %5398 = fmul fast float %5393, %4115
  %5399 = fmul fast float %5393, %4116
  %5400 = fmul fast float %5393, %4117
  %5401 = fsub fast float %150, %1905
  %5402 = fcmp fast ogt float %5401, 0.000000e+00
  %5403 = fmul fast float %4104, 5.120000e+02
  %5404 = fmul fast float %4105, 5.120000e+02
  %5405 = fmul fast float %4106, 5.120000e+02
  %5406 = fadd fast float %5405, %150
  %5407 = fsub fast float %1905, %5406
  %5408 = fmul fast float %5407, 2.000000e+00
  %5409 = fadd fast float %5408, %5406
  %5410 = select i1 %5402, float %5409, float %5406
  %5411 = fsub fast float %5410, %150
  %5412 = call float @dx.op.dot3.f32(i32 55, float %5403, float %5404, float %5411, float %5403, float %5404, float %5411)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = call float @dx.op.unary.f32(i32 25, float %5412)  ; Rsqrt(value)
  %5414 = fmul fast float %5413, %5403
  %5415 = fmul fast float %5413, %5404
  %5416 = fmul fast float %5413, %5411
  %5417 = fsub fast float %1905, %150
  %5418 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5417)  ; Dot3(ax,ay,az,bx,by,bz)
  %5419 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5414, float %5415, float %5416)  ; Dot3(ax,ay,az,bx,by,bz)
  %5420 = fdiv fast float 1.000000e+00, %5419
  %5421 = fmul fast float %5420, %5418
  %5422 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5401, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = fcmp fast ogt float %5422, 0.000000e+00
  %5424 = fcmp fast olt float %5422, 0.000000e+00
  %5425 = zext i1 %5423 to i32
  %5426 = zext i1 %5424 to i32
  %5427 = sub nsw i32 %5425, %5426
  %5428 = sitofp i32 %5427 to float
  %5429 = fsub fast float %5410, %1905
  %5430 = call float @dx.op.dot3.f32(i32 55, float %5403, float %5404, float %5429, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5431 = fcmp fast ogt float %5430, 0.000000e+00
  %5432 = fcmp fast olt float %5430, 0.000000e+00
  %5433 = zext i1 %5431 to i32
  %5434 = zext i1 %5432 to i32
  %5435 = sub nsw i32 %5433, %5434
  %5436 = sitofp i32 %5435 to float
  %5437 = fcmp fast une float %5428, %5436
  br i1 %5437, label %5438, label %5448

; <label>:5438                                    ; preds = %5397
  %5439 = fmul fast float %5421, %5416
  %5440 = fmul fast float %5421, %5415
  %5441 = fmul fast float %5421, %5414
  %5442 = fmul fast float %5441, %5441
  %5443 = fmul fast float %5440, %5440
  %5444 = fadd fast float %5442, %5443
  %5445 = fmul fast float %5439, %5439
  %5446 = fadd fast float %5444, %5445
  %5447 = call float @dx.op.unary.f32(i32 24, float %5446)  ; Sqrt(value)
  br label %5458

; <label>:5448                                    ; preds = %5397
  %5449 = icmp slt i32 %5427, 0
  br i1 %5449, label %5450, label %5458

; <label>:5450                                    ; preds = %5448
  %5451 = fsub fast float %150, %5410
  %5452 = fmul fast float %5403, %5403
  %5453 = fmul fast float %5404, %5404
  %5454 = fadd fast float %5452, %5453
  %5455 = fmul fast float %5451, %5451
  %5456 = fadd fast float %5454, %5455
  %5457 = call float @dx.op.unary.f32(i32 24, float %5456)  ; Sqrt(value)
  br label %5458

; <label>:5458                                    ; preds = %5450, %5448, %5438
  %5459 = phi float [ %5447, %5438 ], [ %5457, %5450 ], [ 0.000000e+00, %5448 ]
  %5460 = fsub fast float -0.000000e+00, %5459
  %5461 = select i1 %5402, float -0.000000e+00, float %5460
  %5462 = fmul fast float %1906, 0x3FF7154760000000
  %5463 = fmul fast float %5462, %5461
  %5464 = fmul fast float %1907, 0x3FF7154760000000
  %5465 = fmul fast float %5464, %5461
  %5466 = fmul fast float %1908, 0x3FF7154760000000
  %5467 = fmul fast float %5466, %5461
  %5468 = call float @dx.op.unary.f32(i32 21, float %5463)  ; Exp(value)
  %5469 = call float @dx.op.unary.f32(i32 21, float %5465)  ; Exp(value)
  %5470 = call float @dx.op.unary.f32(i32 21, float %5467)  ; Exp(value)
  %5471 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5472 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5473 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5474 = fmul fast float %5398, %5471
  %5475 = fmul fast float %5399, %5472
  %5476 = fmul fast float %5400, %5473
  %5477 = fsub fast float %4104, %2105
  %5478 = fsub fast float %4105, %2104
  %5479 = fsub fast float %4106, %2103
  %5480 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5478, float %5479, float %5477, float %5478, float %5479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = call float @dx.op.unary.f32(i32 25, float %5480)  ; Rsqrt(value)
  %5482 = fmul fast float %5481, %5477
  %5483 = fmul fast float %5481, %5478
  %5484 = fmul fast float %5481, %5479
  %5485 = call float @dx.op.dot3.f32(i32 55, float %4104, float %4105, float %4106, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = call float @dx.op.dot3.f32(i32 55, float %2102, float %2101, float %2100, float %5482, float %5483, float %5484)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = call float @dx.op.unary.f32(i32 7, float %5485)  ; Saturate(value)
  %5488 = fmul fast float %5487, %5487
  %5489 = fmul fast float %5488, %4099
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fmul fast float %5490, %5487
  %5492 = call float @dx.op.dot3.f32(i32 55, float %2112, float %2113, float %2114, float %5482, float %5483, float %5484)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fmul fast float %5492, %5492
  %5494 = call float @dx.op.unary.f32(i32 6, float %5485)  ; FAbs(value)
  %5495 = fsub fast float 1.000000e+00, %2138
  %5496 = fmul fast float %2120, %2120
  %5497 = fmul fast float %5496, %5495
  %5498 = fadd fast float %5497, %2138
  %5499 = bitcast float %5498 to i32
  %5500 = ashr i32 %5499, 1
  %5501 = add nsw i32 %5500, 532487669
  %5502 = bitcast i32 %5501 to float
  %5503 = fadd fast float %5502, %2120
  %5504 = fmul fast float %2138, %5493
  %5505 = fsub fast float 1.000000e+00, %5493
  %5506 = fadd fast float %5505, %5504
  %5507 = fmul fast float %5494, %5494
  %5508 = fmul fast float %5507, %5495
  %5509 = fadd fast float %5508, %2138
  %5510 = bitcast float %5509 to i32
  %5511 = ashr i32 %5510, 1
  %5512 = add nsw i32 %5511, 532487669
  %5513 = bitcast i32 %5512 to float
  %5514 = fadd fast float %5513, %5494
  %5515 = fmul fast float %5506, %5506
  %5516 = fmul fast float %5515, %5503
  %5517 = fmul fast float %5516, %5514
  %5518 = fdiv fast float 0x3FF0A00000000000, %5517
  %5519 = fmul fast float %5518, %2138
  %5520 = call float @dx.op.unary.f32(i32 6, float %5486)  ; FAbs(value)
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = bitcast float %5521 to i32
  %5523 = sitofp i32 %5522 to float
  %5524 = fmul fast float %5523, 5.000000e+00
  %5525 = fadd fast float %5524, 0xC1EFBF8940000000
  %5526 = fptosi float %5525 to i32
  %5527 = bitcast i32 %5526 to float
  %5528 = fsub fast float 1.000000e+00, %2106
  %5529 = fsub fast float 1.000000e+00, %2107
  %5530 = fsub fast float 1.000000e+00, %2118
  %5531 = fmul fast float %5527, %5528
  %5532 = fmul fast float %5527, %5529
  %5533 = fmul fast float %5527, %5530
  %5534 = fadd fast float %5531, %2106
  %5535 = fadd fast float %5532, %2107
  %5536 = fadd fast float %5533, %2118
  br i1 %3416, label %5537, label %5560

; <label>:5537                                    ; preds = %5458
  %5538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %65, float %1483, float %5520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.ResRet.f32 %5538, 1
  %5541 = extractvalue %dx.types.ResRet.f32 %5538, 2
  %5542 = fadd fast float %5539, -5.000000e-01
  %5543 = fadd fast float %5540, -5.000000e-01
  %5544 = fadd fast float %5541, -5.000000e-01
  %5545 = fmul fast float %2106, 4.000000e+00
  %5546 = fmul fast float %5545, %5528
  %5547 = fmul fast float %5546, %5542
  %5548 = fmul fast float %2107, 4.000000e+00
  %5549 = fmul fast float %5548, %5529
  %5550 = fmul fast float %5549, %5543
  %5551 = fmul fast float %2118, 4.000000e+00
  %5552 = fmul fast float %5551, %5530
  %5553 = fmul fast float %5552, %5544
  %5554 = fadd fast float %5547, %5534
  %5555 = fadd fast float %5550, %5535
  %5556 = fadd fast float %5553, %5536
  %5557 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5558 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5559 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  br label %5560

; <label>:5560                                    ; preds = %5537, %5458
  %5561 = phi float [ %5557, %5537 ], [ %5534, %5458 ]
  %5562 = phi float [ %5558, %5537 ], [ %5535, %5458 ]
  %5563 = phi float [ %5559, %5537 ], [ %5536, %5458 ]
  %5564 = fmul fast float %5485, 9.843750e-01
  %5565 = fadd fast float %5564, 7.812500e-03
  %5566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %60, %dx.types.Handle %65, float %5565, float %3406, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5567 = extractvalue %dx.types.ResRet.f32 %5566, 2
  %5568 = extractvalue %dx.types.ResRet.f32 %5566, 3
  %5569 = fmul fast float %5567, %2106
  %5570 = fmul fast float %5567, %2107
  %5571 = fmul fast float %5567, %2118
  %5572 = fadd fast float %5569, %5568
  %5573 = fadd fast float %5570, %5568
  %5574 = fadd fast float %5571, %5568
  br i1 %3416, label %5575, label %5598

; <label>:5575                                    ; preds = %5560
  %5576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %65, float %1483, float %5485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5577 = extractvalue %dx.types.ResRet.f32 %5576, 0
  %5578 = extractvalue %dx.types.ResRet.f32 %5576, 1
  %5579 = extractvalue %dx.types.ResRet.f32 %5576, 2
  %5580 = fadd fast float %5577, -5.000000e-01
  %5581 = fadd fast float %5578, -5.000000e-01
  %5582 = fadd fast float %5579, -5.000000e-01
  %5583 = fmul fast float %2106, 4.000000e+00
  %5584 = fmul fast float %5583, %5528
  %5585 = fmul fast float %5584, %5580
  %5586 = fmul fast float %2107, 4.000000e+00
  %5587 = fmul fast float %5586, %5529
  %5588 = fmul fast float %5587, %5581
  %5589 = fmul fast float %2118, 4.000000e+00
  %5590 = fmul fast float %5589, %5530
  %5591 = fmul fast float %5590, %5582
  %5592 = fadd fast float %5585, %5572
  %5593 = fadd fast float %5588, %5573
  %5594 = fadd fast float %5591, %5574
  %5595 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5596 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5597 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  br label %5598

; <label>:5598                                    ; preds = %5575, %5560
  %5599 = phi float [ %5595, %5575 ], [ %5572, %5560 ]
  %5600 = phi float [ %5596, %5575 ], [ %5573, %5560 ]
  %5601 = phi float [ %5597, %5575 ], [ %5574, %5560 ]
  %5602 = call float @dx.op.binary.f32(i32 35, float %5600, float %5601)  ; FMax(a,b)
  %5603 = call float @dx.op.binary.f32(i32 35, float %5599, float %5602)  ; FMax(a,b)
  %5604 = fsub fast float 1.000000e+00, %5603
  %5605 = fmul fast float %5561, %5519
  %5606 = fmul fast float %5562, %5519
  %5607 = fmul fast float %5563, %5519
  %5608 = fsub fast float 1.000000e+00, %5486
  %5609 = bitcast float %5608 to i32
  %5610 = sitofp i32 %5609 to float
  %5611 = fmul fast float %5610, 5.000000e+00
  %5612 = fadd fast float %5611, 0xC1EFBF8940000000
  %5613 = fptosi float %5612 to i32
  %5614 = bitcast i32 %5613 to float
  %5615 = fmul fast float %5614, %1482
  %5616 = fmul fast float %5604, %5615
  %5617 = fmul fast float %5616, %4064
  %5618 = fmul fast float %5616, %4065
  %5619 = fmul fast float %5616, %4066
  %5620 = fadd fast float %5617, %5605
  %5621 = fadd fast float %5618, %5606
  %5622 = fadd fast float %5619, %5607
  %5623 = fmul fast float %5491, %5474
  %5624 = fmul fast float %5623, %5604
  %5625 = fmul fast float %5491, %5475
  %5626 = fmul fast float %5625, %5604
  %5627 = fmul fast float %5491, %5476
  %5628 = fmul fast float %5627, %5604
  %5629 = fmul fast float %5623, %5620
  %5630 = fmul fast float %5625, %5621
  %5631 = fmul fast float %5627, %5622
  %5632 = fadd fast float %5624, %4048
  %5633 = fmul fast float %5632, %1503
  %5634 = fadd fast float %5626, %4049
  %5635 = fmul fast float %5634, %1503
  %5636 = fadd fast float %5628, %4050
  %5637 = fmul fast float %5636, %1503
  %5638 = fadd fast float %5629, %4091
  %5639 = fmul fast float %5638, %1503
  %5640 = fadd fast float %5630, %4094
  %5641 = fmul fast float %5640, %1503
  %5642 = fadd fast float %5631, %4097
  %5643 = fmul fast float %5642, %1503
  br label %5644

; <label>:5644                                    ; preds = %5598, %5392, %4044
  %5645 = phi float [ %4092, %4044 ], [ %4092, %5392 ], [ %5639, %5598 ]
  %5646 = phi float [ %4095, %4044 ], [ %4095, %5392 ], [ %5641, %5598 ]
  %5647 = phi float [ %4098, %4044 ], [ %4098, %5392 ], [ %5643, %5598 ]
  %5648 = phi float [ %4087, %4044 ], [ %4087, %5392 ], [ %5633, %5598 ]
  %5649 = phi float [ %4088, %4044 ], [ %4088, %5392 ], [ %5635, %5598 ]
  %5650 = phi float [ %4089, %4044 ], [ %4089, %5392 ], [ %5637, %5598 ]
  %5651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5652 = extractvalue %dx.types.CBufRet.i32 %5651, 0
  %5653 = icmp eq i32 %5652, 0
  br i1 %5653, label %6316, label %5654

; <label>:5654                                    ; preds = %5644
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 2
  %5657 = extractvalue %dx.types.CBufRet.f32 %5655, 3
  %5658 = fmul fast float %5656, %101
  %5659 = fmul fast float %5657, %102
  %5660 = fptoui float %5658 to i32
  %5661 = fptoui float %5659 to i32
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 0
  %5664 = extractvalue %dx.types.CBufRet.f32 %5662, 2
  %5665 = extractvalue %dx.types.CBufRet.f32 %5662, 3
  %5666 = fadd fast float %89, -4.000000e+00
  %5667 = call float @dx.op.binary.f32(i32 35, float %5666, float 0.000000e+00)  ; FMax(a,b)
  %5668 = fadd fast float %5667, %5663
  %5669 = fmul fast float %5668, %5664
  %5670 = call float @dx.op.unary.f32(i32 23, float %5669)  ; Log(value)
  %5671 = fmul fast float %5670, %5665
  %5672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.f32 %5672, 2
  %5674 = fmul fast float %5671, %5673
  %5675 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5676 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.i32 %5676, 1
  %5678 = add i32 %5677, -1
  %5679 = uitofp i32 %5677 to float
  %5680 = fmul fast float %5679, %5675
  %5681 = fptoui float %5680 to i32
  %5682 = call i32 @dx.op.binary.i32(i32 40, i32 %5681, i32 %5678)  ; UMin(a,b)
  %5683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.i32 %5683, 2
  %5685 = extractvalue %dx.types.CBufRet.i32 %5683, 3
  %5686 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5661, i32 %5684, i32 %5660)  ; UMad(a,b,c)
  %5687 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5682, i32 %5685, i32 %5686)  ; UMad(a,b,c)
  %5688 = add nsw i32 %5652, -1
  %5689 = call i32 @dx.op.binary.i32(i32 37, i32 %5688, i32 0)  ; IMax(a,b)
  %5690 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %5691 = fptoui float %5690 to i32
  %5692 = lshr i32 %5691, 5
  %5693 = call i32 @dx.op.binary.i32(i32 40, i32 %5692, i32 8191)  ; UMin(a,b)
  %5694 = shl i32 %5693, 2
  %5695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5694, i32 undef)  ; BufferLoad(srv,index,wot)
  %5696 = extractvalue %dx.types.ResRet.i32 %5695, 0
  %5697 = lshr i32 %5696, 16
  %5698 = and i32 %5696, 65535
  %5699 = lshr i32 %5696, 21
  %5700 = lshr i32 %5698, 5
  %5701 = call i32 @dx.op.binary.i32(i32 40, i32 %5700, i32 %5689)  ; UMin(a,b)
  %5702 = icmp ugt i32 %5699, %5701
  br i1 %5702, label %6316, label %5703

; <label>:5703                                    ; preds = %5654
  br label %5704

; <label>:5704                                    ; preds = %6306, %5703
  %5705 = phi i32 [ %6313, %6306 ], [ %5699, %5703 ]
  %5706 = phi float [ %6307, %6306 ], [ %5645, %5703 ]
  %5707 = phi float [ %6308, %6306 ], [ %5646, %5703 ]
  %5708 = phi float [ %6309, %6306 ], [ %5647, %5703 ]
  %5709 = phi float [ %6310, %6306 ], [ %5648, %5703 ]
  %5710 = phi float [ %6311, %6306 ], [ %5649, %5703 ]
  %5711 = phi float [ %6312, %6306 ], [ %5650, %5703 ]
  %5712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.i32 %5712, 0
  %5714 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5687, i32 %5713, i32 %5705)  ; UMad(a,b,c)
  %5715 = shl i32 %5714, 2
  %5716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5715, i32 undef)  ; BufferLoad(srv,index,wot)
  %5717 = extractvalue %dx.types.ResRet.i32 %5716, 0
  %5718 = shl i32 %5705, 5
  %5719 = sub nsw i32 %5697, %5718
  %5720 = call i32 @dx.op.binary.i32(i32 37, i32 %5719, i32 0)  ; IMax(a,b)
  %5721 = call i32 @dx.op.binary.i32(i32 38, i32 %5720, i32 31)  ; IMin(a,b)
  %5722 = sub nsw i32 1, %5697
  %5723 = add nsw i32 %5722, %5698
  %5724 = call i32 @dx.op.binary.i32(i32 37, i32 %5723, i32 0)  ; IMax(a,b)
  %5725 = call i32 @dx.op.binary.i32(i32 38, i32 %5724, i32 32)  ; IMin(a,b)
  %5726 = and i32 %5725, 31
  %5727 = shl i32 -1, %5726
  %5728 = xor i32 %5727, -1
  %5729 = and i32 %5721, 31
  %5730 = shl i32 %5728, %5729
  %5731 = icmp eq i32 %5725, 32
  %5732 = select i1 %5731, i32 -1, i32 %5730
  %5733 = and i32 %5732, %5717
  %5734 = icmp eq i32 %5733, 0
  br i1 %5734, label %6306, label %5735

; <label>:5735                                    ; preds = %5704
  br label %5736

; <label>:5736                                    ; preds = %5870, %5735
  %5737 = phi i32 [ %5748, %5870 ], [ %5733, %5735 ]
  %5738 = phi float [ %5871, %5870 ], [ %5706, %5735 ]
  %5739 = phi float [ %5872, %5870 ], [ %5707, %5735 ]
  %5740 = phi float [ %5873, %5870 ], [ %5708, %5735 ]
  %5741 = phi float [ %5874, %5870 ], [ %5709, %5735 ]
  %5742 = phi float [ %5875, %5870 ], [ %5710, %5735 ]
  %5743 = phi float [ %5876, %5870 ], [ %5711, %5735 ]
  %5744 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5737)  ; FirstbitLo(value)
  %5745 = add i32 %5744, %5718
  %5746 = and i32 %5744, 31
  %5747 = shl i32 1, %5746
  %5748 = xor i32 %5747, %5737
  %5749 = mul i32 %5745, 112
  %5750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5749, i32 undef)  ; BufferLoad(srv,index,wot)
  %5751 = extractvalue %dx.types.ResRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.ResRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.ResRet.f32 %5750, 2
  %5754 = or i32 %5749, 12
  %5755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5754, i32 undef)  ; BufferLoad(srv,index,wot)
  %5756 = extractvalue %dx.types.ResRet.f32 %5755, 0
  %5757 = add i32 %5749, 16
  %5758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5757, i32 undef)  ; BufferLoad(srv,index,wot)
  %5759 = extractvalue %dx.types.ResRet.f32 %5758, 0
  %5760 = extractvalue %dx.types.ResRet.f32 %5758, 1
  %5761 = extractvalue %dx.types.ResRet.f32 %5758, 2
  %5762 = add i32 %5749, 28
  %5763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5762, i32 undef)  ; BufferLoad(srv,index,wot)
  %5764 = extractvalue %dx.types.ResRet.i32 %5763, 0
  %5765 = add i32 %5749, 44
  %5766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5765, i32 undef)  ; BufferLoad(srv,index,wot)
  %5767 = extractvalue %dx.types.ResRet.f32 %5766, 0
  %5768 = add i32 %5749, 48
  %5769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5768, i32 undef)  ; BufferLoad(srv,index,wot)
  %5770 = extractvalue %dx.types.ResRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.ResRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.ResRet.f32 %5769, 2
  %5773 = extractvalue %dx.types.ResRet.f32 %5769, 3
  %5774 = add i32 %5749, 64
  %5775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5774, i32 undef)  ; BufferLoad(srv,index,wot)
  %5776 = extractvalue %dx.types.ResRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.ResRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.ResRet.f32 %5775, 2
  %5779 = extractvalue %dx.types.ResRet.f32 %5775, 3
  %5780 = add i32 %5749, 80
  %5781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5780, i32 undef)  ; BufferLoad(srv,index,wot)
  %5782 = extractvalue %dx.types.ResRet.f32 %5781, 1
  %5783 = extractvalue %dx.types.ResRet.f32 %5781, 2
  %5784 = add i32 %5749, 92
  %5785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5784, i32 undef)  ; BufferLoad(srv,index,wot)
  %5786 = extractvalue %dx.types.ResRet.i32 %5785, 0
  %5787 = call float @dx.op.dot3.f32(i32 55, float %5751, float %5752, float %5753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = select i1 %239, float %5782, float %5751
  %5789 = select i1 %239, float %5787, float %5752
  %5790 = select i1 %239, float %5783, float %5753
  %5791 = and i32 %5786, 65535
  %5792 = uitofp i32 %5791 to float
  %5793 = lshr i32 %5786, 16
  %5794 = uitofp i32 %5793 to float
  %5795 = and i32 %5764, 65535
  %5796 = and i32 %5764, 50331648
  %5797 = icmp eq i32 %5796, 33554432
  %5798 = fsub fast float %5770, %148
  %5799 = fsub fast float %5771, %149
  %5800 = fsub fast float %5772, %150
  %5801 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5799, float %5800, float %5798, float %5799, float %5800)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = call float @dx.op.unary.f32(i32 24, float %5801)  ; Sqrt(value)
  %5803 = fdiv fast float 1.000000e+00, %5802
  %5804 = fmul fast float %5803, %5798
  %5805 = fmul fast float %5803, %5799
  %5806 = fmul fast float %5803, %5800
  %5807 = fadd fast float %5802, %5756
  %5808 = fdiv fast float 1.000000e+00, %5807
  %5809 = fmul float %5767, %5808
  %5810 = fmul float %5809, %5809
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  br i1 %5797, label %5812, label %5833

; <label>:5812                                    ; preds = %5736
  %5813 = fmul fast float %5778, %5759
  %5814 = fmul fast float %5778, %5760
  %5815 = fmul fast float %5778, %5761
  %5816 = fadd fast float %5798, %5813
  %5817 = fadd fast float %5799, %5814
  %5818 = fadd fast float %5800, %5815
  %5819 = call float @dx.op.dot3.f32(i32 55, float %5816, float %5817, float %5818, float %5816, float %5817, float %5818)  ; Dot3(ax,ay,az,bx,by,bz)
  %5820 = call float @dx.op.unary.f32(i32 25, float %5819)  ; Rsqrt(value)
  %5821 = fmul fast float %5820, %5816
  %5822 = fmul fast float %5820, %5817
  %5823 = fmul fast float %5820, %5818
  %5824 = fsub fast float %148, %5770
  %5825 = fsub fast float %149, %5771
  %5826 = fsub fast float %150, %5772
  %5827 = fsub fast float -0.000000e+00, %5824
  %5828 = fsub fast float -0.000000e+00, %5825
  %5829 = fsub fast float -0.000000e+00, %5826
  %5830 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %5759, float %5760, float %5761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5831 = fcmp fast ogt float %5830, 0.000000e+00
  %5832 = uitofp i1 %5831 to float
  br label %5833

; <label>:5833                                    ; preds = %5812, %5736
  %5834 = phi float [ %5832, %5812 ], [ 1.000000e+00, %5736 ]
  %5835 = phi float [ %5821, %5812 ], [ %5804, %5736 ]
  %5836 = phi float [ %5822, %5812 ], [ %5805, %5736 ]
  %5837 = phi float [ %5823, %5812 ], [ %5806, %5736 ]
  %5838 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5760, float %5761, float %5835, float %5836, float %5837)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = fmul fast float %5838, %5838
  %5840 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  %5841 = fsub fast float 1.000000e+00, %5840
  %5842 = fmul fast float %5841, 5.000000e-01
  %5843 = fcmp fast ogt float %5838, 0.000000e+00
  %5844 = fsub fast float 1.000000e+00, %5842
  %5845 = select i1 %5843, float %5842, float %5844
  %5846 = fmul fast float %5845, %5794
  %5847 = fadd fast float %5846, %5792
  %5848 = fmul fast float %5847, 0x3EF0001000000000
  %5849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %65, float %5848, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5850 = extractvalue %dx.types.ResRet.f32 %5849, 0
  %5851 = fmul fast float %5838, %5776
  %5852 = fadd fast float %5851, %5777
  %5853 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5854 = select i1 %5797, float 1.000000e+00, float %5853
  %5855 = select i1 %5797, float %5853, float 1.000000e+00
  %5856 = fmul fast float %5802, %5773
  %5857 = fsub fast float 1.000000e+00, %5856
  %5858 = fmul fast float %5857, %5779
  %5859 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5860 = fmul fast float %5859, %5855
  %5861 = fmul fast float %5860, 2.000000e+00
  %5862 = fsub fast float 3.000000e+00, %5861
  %5863 = fmul fast float %5850, %5834
  %5864 = fmul fast float %5860, %5860
  %5865 = fmul fast float %5864, %5863
  %5866 = fmul fast float %5865, %5862
  %5867 = call float @dx.op.binary.f32(i32 36, float %5866, float %5866)  ; FMin(a,b)
  %5868 = call float @dx.op.binary.f32(i32 36, float %5866, float %5867)  ; FMin(a,b)
  %5869 = fcmp fast ogt float %5868, 0.000000e+00
  br i1 %5869, label %5878, label %5870, !dx.controlflow.hints !145

; <label>:5870                                    ; preds = %6262, %6024, %5833
  %5871 = phi float [ %5738, %6024 ], [ %5738, %5833 ], [ %6302, %6262 ]
  %5872 = phi float [ %5739, %6024 ], [ %5739, %5833 ], [ %6303, %6262 ]
  %5873 = phi float [ %5740, %6024 ], [ %5740, %5833 ], [ %6304, %6262 ]
  %5874 = phi float [ %5741, %6024 ], [ %5741, %5833 ], [ %6296, %6262 ]
  %5875 = phi float [ %5742, %6024 ], [ %5742, %5833 ], [ %6297, %6262 ]
  %5876 = phi float [ %5743, %6024 ], [ %5743, %5833 ], [ %6298, %6262 ]
  %5877 = icmp eq i32 %5737, %5747
  br i1 %5877, label %6305, label %5736

; <label>:5878                                    ; preds = %5833
  %5879 = icmp eq i32 %5795, 255
  br i1 %5879, label %6024, label %5880, !dx.controlflow.hints !146

; <label>:5880                                    ; preds = %5878
  %5881 = mul nuw nsw i32 %5795, 176
  %5882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5881, i32 undef)  ; BufferLoad(srv,index,wot)
  %5883 = extractvalue %dx.types.ResRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.ResRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.ResRet.f32 %5882, 2
  %5886 = extractvalue %dx.types.ResRet.f32 %5882, 3
  %5887 = add nuw nsw i32 %5881, 16
  %5888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5887, i32 undef)  ; BufferLoad(srv,index,wot)
  %5889 = extractvalue %dx.types.ResRet.f32 %5888, 0
  %5890 = extractvalue %dx.types.ResRet.f32 %5888, 1
  %5891 = add nuw nsw i32 %5881, 32
  %5892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5891, i32 undef)  ; BufferLoad(srv,index,wot)
  %5893 = extractvalue %dx.types.ResRet.f32 %5892, 0
  %5894 = extractvalue %dx.types.ResRet.f32 %5892, 1
  %5895 = extractvalue %dx.types.ResRet.f32 %5892, 2
  %5896 = add nuw nsw i32 %5881, 48
  %5897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5896, i32 undef)  ; BufferLoad(srv,index,wot)
  %5898 = extractvalue %dx.types.ResRet.f32 %5897, 0
  %5899 = extractvalue %dx.types.ResRet.f32 %5897, 1
  %5900 = extractvalue %dx.types.ResRet.f32 %5897, 2
  %5901 = extractvalue %dx.types.ResRet.f32 %5897, 3
  %5902 = add nuw nsw i32 %5881, 64
  %5903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5902, i32 undef)  ; BufferLoad(srv,index,wot)
  %5904 = extractvalue %dx.types.ResRet.f32 %5903, 0
  %5905 = extractvalue %dx.types.ResRet.f32 %5903, 1
  %5906 = extractvalue %dx.types.ResRet.f32 %5903, 2
  %5907 = extractvalue %dx.types.ResRet.f32 %5903, 3
  %5908 = add nuw nsw i32 %5881, 80
  %5909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5908, i32 undef)  ; BufferLoad(srv,index,wot)
  %5910 = extractvalue %dx.types.ResRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.ResRet.f32 %5909, 1
  %5912 = extractvalue %dx.types.ResRet.f32 %5909, 2
  %5913 = extractvalue %dx.types.ResRet.f32 %5909, 3
  %5914 = add nuw nsw i32 %5881, 96
  %5915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5914, i32 undef)  ; BufferLoad(srv,index,wot)
  %5916 = extractvalue %dx.types.ResRet.f32 %5915, 0
  %5917 = extractvalue %dx.types.ResRet.f32 %5915, 1
  %5918 = extractvalue %dx.types.ResRet.f32 %5915, 2
  %5919 = extractvalue %dx.types.ResRet.f32 %5915, 3
  %5920 = bitcast float %5890 to i32
  %5921 = fmul fast float %5895, %77
  %5922 = fmul fast float %5895, %78
  %5923 = fmul fast float %5895, %79
  %5924 = fadd fast float %5921, %148
  %5925 = fadd fast float %5922, %149
  %5926 = fadd fast float %5923, %150
  %5927 = fmul fast float %5924, %5898
  %5928 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %5904, float %5927)  ; FMad(a,b,c)
  %5929 = call float @dx.op.tertiary.f32(i32 46, float %5926, float %5910, float %5928)  ; FMad(a,b,c)
  %5930 = fadd fast float %5929, %5916
  %5931 = fmul fast float %5924, %5899
  %5932 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %5905, float %5931)  ; FMad(a,b,c)
  %5933 = call float @dx.op.tertiary.f32(i32 46, float %5926, float %5911, float %5932)  ; FMad(a,b,c)
  %5934 = fadd fast float %5933, %5917
  %5935 = fmul fast float %5924, %5900
  %5936 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %5906, float %5935)  ; FMad(a,b,c)
  %5937 = call float @dx.op.tertiary.f32(i32 46, float %5926, float %5912, float %5936)  ; FMad(a,b,c)
  %5938 = fadd fast float %5937, %5918
  %5939 = fmul fast float %5924, %5901
  %5940 = call float @dx.op.tertiary.f32(i32 46, float %5925, float %5907, float %5939)  ; FMad(a,b,c)
  %5941 = call float @dx.op.tertiary.f32(i32 46, float %5926, float %5913, float %5940)  ; FMad(a,b,c)
  %5942 = fadd fast float %5941, %5919
  %5943 = fdiv fast float %5930, %5942
  %5944 = fdiv fast float %5934, %5942
  %5945 = fdiv fast float %5938, %5942
  %5946 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5945)  ; FMax(a,b)
  %5947 = fmul fast float %250, 0x401921FB60000000
  %5948 = call float @dx.op.unary.f32(i32 13, float %5947)  ; Sin(value)
  %5949 = call float @dx.op.unary.f32(i32 12, float %5947)  ; Cos(value)
  %5950 = fmul fast float %5949, %5894
  %5951 = call float @dx.op.tertiary.f32(i32 46, float %5948, float %5894, float 0.000000e+00)  ; FMad(a,b,c)
  %5952 = fmul fast float %5894, %5948
  %5953 = fsub fast float -0.000000e+00, %5952
  %5954 = call float @dx.op.tertiary.f32(i32 46, float %5949, float %5894, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5955

; <label>:5955                                    ; preds = %5955, %5880
  %5956 = phi float [ 0.000000e+00, %5880 ], [ %5988, %5955 ]
  %5957 = phi float [ 0.000000e+00, %5880 ], [ %5990, %5955 ]
  %5958 = phi i32 [ 0, %5880 ], [ %5991, %5955 ]
  %5959 = mul i32 %5958, 2
  %5960 = add i32 0, %5959
  %5961 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5960
  %5962 = load float, float* %5961, align 4
  %5963 = mul i32 %5958, 2
  %5964 = add i32 1, %5963
  %5965 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5964
  %5966 = load float, float* %5965, align 4
  %5967 = fmul fast float %5950, %5962
  %5968 = call float @dx.op.tertiary.f32(i32 46, float %5966, float %5953, float %5967)  ; FMad(a,b,c)
  %5969 = fmul fast float %5962, %5951
  %5970 = call float @dx.op.tertiary.f32(i32 46, float %5966, float %5954, float %5969)  ; FMad(a,b,c)
  %5971 = fadd fast float %5968, %5943
  %5972 = fadd fast float %5970, %5944
  %5973 = fmul fast float %5971, %5889
  %5974 = fmul fast float %5972, %5889
  %5975 = call float @dx.op.binary.f32(i32 35, float %5973, float %5885)  ; FMax(a,b)
  %5976 = call float @dx.op.binary.f32(i32 35, float %5974, float %5885)  ; FMax(a,b)
  %5977 = call float @dx.op.binary.f32(i32 36, float %5975, float %5886)  ; FMin(a,b)
  %5978 = call float @dx.op.binary.f32(i32 36, float %5976, float %5886)  ; FMin(a,b)
  %5979 = fadd fast float %5977, %5883
  %5980 = fadd fast float %5978, %5884
  %5981 = uitofp i32 %5920 to float
  %5982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %66, float %5979, float %5980, float %5981, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5983 = extractvalue %dx.types.ResRet.f32 %5982, 0
  %5984 = fsub fast float %5983, %5946
  %5985 = fsub fast float %5984, %5893
  %5986 = fcmp fast ogt float %5985, 0.000000e+00
  %5987 = select i1 %5986, float 1.000000e+00, float 0.000000e+00
  %5988 = fadd fast float %5987, %5956
  %5989 = select i1 %5986, float %5985, float 0.000000e+00
  %5990 = fadd fast float %5989, %5957
  %5991 = add nuw nsw i32 %5958, 1
  %5992 = icmp eq i32 %5991, 8
  br i1 %5992, label %5993, label %5955

; <label>:5993                                    ; preds = %5955
  %5994 = fdiv fast float 1.000000e+00, %5988
  %5995 = fmul fast float %5994, %5990
  %5996 = fdiv fast float 1.000000e+00, %5946
  %5997 = fmul fast float %5995, %5996
  %5998 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  %5999 = call float @dx.op.binary.f32(i32 35, float %5998, float 0.000000e+00)  ; FMax(a,b)
  %6000 = fmul fast float %5988, 1.250000e-01
  %6001 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  %6002 = fmul fast float %6001, 2.000000e+00
  %6003 = fadd fast float %6002, -1.000000e+00
  %6004 = fcmp fast ogt float %6003, 0.000000e+00
  %6005 = fcmp fast olt float %6003, 0.000000e+00
  %6006 = zext i1 %6004 to i32
  %6007 = zext i1 %6005 to i32
  %6008 = sub nsw i32 %6006, %6007
  %6009 = sitofp i32 %6008 to float
  %6010 = fmul fast float %6009, %6003
  %6011 = fsub fast float 1.000000e+00, %6010
  %6012 = fmul fast float %6011, %6011
  %6013 = fmul fast float %6012, %6011
  %6014 = fsub fast float %6011, %6013
  %6015 = fmul fast float %6014, %5999
  %6016 = fsub fast float 1.000000e+00, %6013
  %6017 = fsub fast float %6016, %6015
  %6018 = fmul fast float %6009, 5.000000e-01
  %6019 = fmul fast float %6018, %6017
  %6020 = fsub fast float -5.000000e-01, %6019
  %6021 = fmul fast float %6020, %5854
  %6022 = fadd fast float %6021, 1.000000e+00
  %6023 = fmul fast float %6022, %5866
  br label %6024

; <label>:6024                                    ; preds = %5993, %5878
  %6025 = phi float [ %6023, %5993 ], [ %5866, %5878 ]
  %6026 = call float @dx.op.binary.f32(i32 36, float %6025, float %6025)  ; FMin(a,b)
  %6027 = call float @dx.op.binary.f32(i32 36, float %6025, float %6026)  ; FMin(a,b)
  %6028 = fcmp fast ogt float %6027, 0.000000e+00
  br i1 %6028, label %6029, label %5870, !dx.controlflow.hints !147

; <label>:6029                                    ; preds = %6024
  %6030 = fmul fast float %6025, %5788
  %6031 = fmul fast float %6025, %5789
  %6032 = fmul fast float %6025, %5790
  %6033 = fsub fast float %5772, %1905
  %6034 = fcmp fast ogt float %6033, 0.000000e+00
  %6035 = fsub fast float %150, %1905
  %6036 = fcmp fast ogt float %6035, 0.000000e+00
  %6037 = xor i1 %6036, %6034
  %6038 = fsub fast float %1905, %5772
  %6039 = fmul fast float %6038, 2.000000e+00
  %6040 = fadd fast float %6039, %5772
  %6041 = select i1 %6037, float %5772, float %6040
  %6042 = fsub fast float %6041, %150
  %6043 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5799, float %6042, float %5798, float %5799, float %6042)  ; Dot3(ax,ay,az,bx,by,bz)
  %6044 = call float @dx.op.unary.f32(i32 25, float %6043)  ; Rsqrt(value)
  %6045 = fmul fast float %6044, %5798
  %6046 = fmul fast float %6044, %5799
  %6047 = fmul fast float %6044, %6042
  %6048 = fsub fast float %1905, %150
  %6049 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6048)  ; Dot3(ax,ay,az,bx,by,bz)
  %6050 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6045, float %6046, float %6047)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = fdiv fast float 1.000000e+00, %6050
  %6052 = fmul fast float %6051, %6049
  %6053 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6035, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6054 = fcmp fast ogt float %6053, 0.000000e+00
  %6055 = fcmp fast olt float %6053, 0.000000e+00
  %6056 = zext i1 %6054 to i32
  %6057 = zext i1 %6055 to i32
  %6058 = sub nsw i32 %6056, %6057
  %6059 = sitofp i32 %6058 to float
  %6060 = fsub fast float %6041, %1905
  %6061 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5799, float %6060, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6062 = fcmp fast ogt float %6061, 0.000000e+00
  %6063 = fcmp fast olt float %6061, 0.000000e+00
  %6064 = zext i1 %6062 to i32
  %6065 = zext i1 %6063 to i32
  %6066 = sub nsw i32 %6064, %6065
  %6067 = sitofp i32 %6066 to float
  %6068 = fcmp fast une float %6059, %6067
  br i1 %6068, label %6069, label %6079

; <label>:6069                                    ; preds = %6029
  %6070 = fmul fast float %6052, %6047
  %6071 = fmul fast float %6052, %6046
  %6072 = fmul fast float %6052, %6045
  %6073 = fmul fast float %6072, %6072
  %6074 = fmul fast float %6071, %6071
  %6075 = fadd fast float %6073, %6074
  %6076 = fmul fast float %6070, %6070
  %6077 = fadd fast float %6075, %6076
  %6078 = call float @dx.op.unary.f32(i32 24, float %6077)  ; Sqrt(value)
  br label %6091

; <label>:6079                                    ; preds = %6029
  %6080 = icmp slt i32 %6058, 0
  br i1 %6080, label %6081, label %6091

; <label>:6081                                    ; preds = %6079
  %6082 = fsub fast float %148, %5770
  %6083 = fsub fast float %149, %5771
  %6084 = fsub fast float %150, %6041
  %6085 = fmul fast float %6082, %6082
  %6086 = fmul fast float %6083, %6083
  %6087 = fadd fast float %6085, %6086
  %6088 = fmul fast float %6084, %6084
  %6089 = fadd fast float %6087, %6088
  %6090 = call float @dx.op.unary.f32(i32 24, float %6089)  ; Sqrt(value)
  br label %6091

; <label>:6091                                    ; preds = %6081, %6079, %6069
  %6092 = phi float [ %6078, %6069 ], [ %6090, %6081 ], [ 0.000000e+00, %6079 ]
  %6093 = and i1 %6036, %6034
  %6094 = fsub fast float -0.000000e+00, %6092
  %6095 = select i1 %6093, float -0.000000e+00, float %6094
  %6096 = fmul fast float %1906, 0x3FF7154760000000
  %6097 = fmul fast float %6096, %6095
  %6098 = fmul fast float %1907, 0x3FF7154760000000
  %6099 = fmul fast float %6098, %6095
  %6100 = fmul fast float %1908, 0x3FF7154760000000
  %6101 = fmul fast float %6100, %6095
  %6102 = call float @dx.op.unary.f32(i32 21, float %6097)  ; Exp(value)
  %6103 = call float @dx.op.unary.f32(i32 21, float %6099)  ; Exp(value)
  %6104 = call float @dx.op.unary.f32(i32 21, float %6101)  ; Exp(value)
  %6105 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6106 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  %6107 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6108 = fmul fast float %6030, %6105
  %6109 = fmul fast float %6031, %6106
  %6110 = fmul fast float %6032, %6107
  %6111 = fsub fast float %5804, %2105
  %6112 = fsub fast float %5805, %2104
  %6113 = fsub fast float %5806, %2103
  %6114 = call float @dx.op.dot3.f32(i32 55, float %6111, float %6112, float %6113, float %6111, float %6112, float %6113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6115 = call float @dx.op.unary.f32(i32 25, float %6114)  ; Rsqrt(value)
  %6116 = fmul fast float %6115, %6111
  %6117 = fmul fast float %6115, %6112
  %6118 = fmul fast float %6115, %6113
  %6119 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %6120 = call float @dx.op.dot3.f32(i32 55, float %2102, float %2101, float %2100, float %6116, float %6117, float %6118)  ; Dot3(ax,ay,az,bx,by,bz)
  %6121 = call float @dx.op.unary.f32(i32 7, float %6119)  ; Saturate(value)
  %6122 = fmul fast float %6121, %5811
  %6123 = fmul fast float %6121, %6121
  %6124 = fmul fast float %6123, %4099
  %6125 = call float @dx.op.unary.f32(i32 7, float %6124)  ; Saturate(value)
  %6126 = fmul fast float %6122, %6125
  %6127 = bitcast float %5801 to i32
  %6128 = ashr i32 %6127, 1
  %6129 = sub nsw i32 1597463007, %6128
  %6130 = bitcast i32 %6129 to float
  %6131 = fmul fast float %6130, %5798
  %6132 = fmul fast float %6130, %5799
  %6133 = fmul fast float %6130, %5800
  %6134 = fsub fast float %6131, %2105
  %6135 = fsub fast float %6132, %2104
  %6136 = fsub fast float %6133, %2103
  %6137 = call float @dx.op.dot3.f32(i32 55, float %6134, float %6135, float %6136, float %6134, float %6135, float %6136)  ; Dot3(ax,ay,az,bx,by,bz)
  %6138 = call float @dx.op.unary.f32(i32 25, float %6137)  ; Rsqrt(value)
  %6139 = fmul fast float %6134, %6138
  %6140 = fmul fast float %6135, %6138
  %6141 = fmul fast float %6136, %6138
  %6142 = call float @dx.op.dot3.f32(i32 55, float %2112, float %2113, float %2114, float %6139, float %6140, float %6141)  ; Dot3(ax,ay,az,bx,by,bz)
  %6143 = fmul fast float %6142, %6142
  %6144 = call float @dx.op.unary.f32(i32 6, float %6119)  ; FAbs(value)
  %6145 = fsub fast float 1.000000e+00, %2138
  %6146 = fmul fast float %2120, %2120
  %6147 = fmul fast float %6146, %6145
  %6148 = fadd fast float %6147, %2138
  %6149 = bitcast float %6148 to i32
  %6150 = ashr i32 %6149, 1
  %6151 = add nsw i32 %6150, 532487669
  %6152 = bitcast i32 %6151 to float
  %6153 = fadd fast float %6152, %2120
  %6154 = fmul fast float %2138, %6143
  %6155 = fsub fast float 1.000000e+00, %6143
  %6156 = fadd fast float %6155, %6154
  %6157 = fmul fast float %6144, %6144
  %6158 = fmul fast float %6157, %6145
  %6159 = fadd fast float %6158, %2138
  %6160 = bitcast float %6159 to i32
  %6161 = ashr i32 %6160, 1
  %6162 = add nsw i32 %6161, 532487669
  %6163 = bitcast i32 %6162 to float
  %6164 = fadd fast float %6163, %6144
  %6165 = fmul fast float %6156, %6156
  %6166 = fmul fast float %6165, %6153
  %6167 = fmul fast float %6166, %6164
  %6168 = fdiv fast float 1.000000e+00, %6167
  %6169 = bitcast float %2138 to i32
  %6170 = sitofp i32 %6169 to float
  %6171 = fmul fast float %6170, 0x3FE7F73180000000
  %6172 = fadd fast float %6171, 0x41AFE27C40000000
  %6173 = fptosi float %6172 to i32
  %6174 = bitcast i32 %6173 to float
  %6175 = fmul fast float %5767, 0x3FD80E9D60000000
  %6176 = fmul fast float %6175, %6130
  %6177 = fadd fast float %6174, %6176
  %6178 = bitcast float %6177 to i32
  %6179 = sub nsw i32 2129859010, %6178
  %6180 = bitcast i32 %6179 to float
  %6181 = fmul fast float %2138, %6168
  %6182 = fmul fast float %6181, %6174
  %6183 = fmul fast float %6182, %6180
  %6184 = call float @dx.op.unary.f32(i32 6, float %6120)  ; FAbs(value)
  %6185 = fsub fast float 1.000000e+00, %6184
  %6186 = bitcast float %6185 to i32
  %6187 = sitofp i32 %6186 to float
  %6188 = fmul fast float %6187, 5.000000e+00
  %6189 = fadd fast float %6188, 0xC1EFBF8940000000
  %6190 = fptosi float %6189 to i32
  %6191 = bitcast i32 %6190 to float
  %6192 = fsub fast float 1.000000e+00, %2106
  %6193 = fsub fast float 1.000000e+00, %2107
  %6194 = fsub fast float 1.000000e+00, %2118
  %6195 = fmul fast float %6191, %6192
  %6196 = fmul fast float %6191, %6193
  %6197 = fmul fast float %6191, %6194
  %6198 = fadd fast float %6195, %2106
  %6199 = fadd fast float %6196, %2107
  %6200 = fadd fast float %6197, %2118
  br i1 %3416, label %6201, label %6224

; <label>:6201                                    ; preds = %6091
  %6202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %65, float %1483, float %6184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6203 = extractvalue %dx.types.ResRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.ResRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.ResRet.f32 %6202, 2
  %6206 = fadd fast float %6203, -5.000000e-01
  %6207 = fadd fast float %6204, -5.000000e-01
  %6208 = fadd fast float %6205, -5.000000e-01
  %6209 = fmul fast float %2106, 4.000000e+00
  %6210 = fmul fast float %6209, %6192
  %6211 = fmul fast float %6210, %6206
  %6212 = fmul fast float %2107, 4.000000e+00
  %6213 = fmul fast float %6212, %6193
  %6214 = fmul fast float %6213, %6207
  %6215 = fmul fast float %2118, 4.000000e+00
  %6216 = fmul fast float %6215, %6194
  %6217 = fmul fast float %6216, %6208
  %6218 = fadd fast float %6211, %6198
  %6219 = fadd fast float %6214, %6199
  %6220 = fadd fast float %6217, %6200
  %6221 = call float @dx.op.unary.f32(i32 7, float %6218)  ; Saturate(value)
  %6222 = call float @dx.op.unary.f32(i32 7, float %6219)  ; Saturate(value)
  %6223 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  br label %6224

; <label>:6224                                    ; preds = %6201, %6091
  %6225 = phi float [ %6221, %6201 ], [ %6198, %6091 ]
  %6226 = phi float [ %6222, %6201 ], [ %6199, %6091 ]
  %6227 = phi float [ %6223, %6201 ], [ %6200, %6091 ]
  %6228 = fmul fast float %6119, 9.843750e-01
  %6229 = fadd fast float %6228, 7.812500e-03
  %6230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %60, %dx.types.Handle %65, float %6229, float %3406, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6231 = extractvalue %dx.types.ResRet.f32 %6230, 2
  %6232 = extractvalue %dx.types.ResRet.f32 %6230, 3
  %6233 = fmul fast float %6231, %2106
  %6234 = fmul fast float %6231, %2107
  %6235 = fmul fast float %6231, %2118
  %6236 = fadd fast float %6233, %6232
  %6237 = fadd fast float %6234, %6232
  %6238 = fadd fast float %6235, %6232
  br i1 %3416, label %6239, label %6262

; <label>:6239                                    ; preds = %6224
  %6240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %65, float %1483, float %6119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6241 = extractvalue %dx.types.ResRet.f32 %6240, 0
  %6242 = extractvalue %dx.types.ResRet.f32 %6240, 1
  %6243 = extractvalue %dx.types.ResRet.f32 %6240, 2
  %6244 = fadd fast float %6241, -5.000000e-01
  %6245 = fadd fast float %6242, -5.000000e-01
  %6246 = fadd fast float %6243, -5.000000e-01
  %6247 = fmul fast float %2106, 4.000000e+00
  %6248 = fmul fast float %6247, %6192
  %6249 = fmul fast float %6248, %6244
  %6250 = fmul fast float %2107, 4.000000e+00
  %6251 = fmul fast float %6250, %6193
  %6252 = fmul fast float %6251, %6245
  %6253 = fmul fast float %2118, 4.000000e+00
  %6254 = fmul fast float %6253, %6194
  %6255 = fmul fast float %6254, %6246
  %6256 = fadd fast float %6249, %6236
  %6257 = fadd fast float %6252, %6237
  %6258 = fadd fast float %6255, %6238
  %6259 = call float @dx.op.unary.f32(i32 7, float %6256)  ; Saturate(value)
  %6260 = call float @dx.op.unary.f32(i32 7, float %6257)  ; Saturate(value)
  %6261 = call float @dx.op.unary.f32(i32 7, float %6258)  ; Saturate(value)
  br label %6262

; <label>:6262                                    ; preds = %6239, %6224
  %6263 = phi float [ %6259, %6239 ], [ %6236, %6224 ]
  %6264 = phi float [ %6260, %6239 ], [ %6237, %6224 ]
  %6265 = phi float [ %6261, %6239 ], [ %6238, %6224 ]
  %6266 = call float @dx.op.binary.f32(i32 35, float %6264, float %6265)  ; FMax(a,b)
  %6267 = call float @dx.op.binary.f32(i32 35, float %6263, float %6266)  ; FMax(a,b)
  %6268 = fsub fast float 1.000000e+00, %6267
  %6269 = fmul fast float %6225, %6183
  %6270 = fmul fast float %6226, %6183
  %6271 = fmul fast float %6227, %6183
  %6272 = fsub fast float 1.000000e+00, %6120
  %6273 = bitcast float %6272 to i32
  %6274 = sitofp i32 %6273 to float
  %6275 = fmul fast float %6274, 5.000000e+00
  %6276 = fadd fast float %6275, 0xC1EFBF8940000000
  %6277 = fptosi float %6276 to i32
  %6278 = bitcast i32 %6277 to float
  %6279 = fmul fast float %6278, %1482
  %6280 = fmul fast float %6268, %6279
  %6281 = fmul fast float %6280, %4064
  %6282 = fmul fast float %6280, %4065
  %6283 = fmul fast float %6280, %4066
  %6284 = fadd fast float %6281, %6269
  %6285 = fadd fast float %6282, %6270
  %6286 = fadd fast float %6283, %6271
  %6287 = fmul fast float %6108, %1503
  %6288 = fmul fast float %6287, %6126
  %6289 = fmul fast float %6288, %6268
  %6290 = fmul fast float %6109, %1503
  %6291 = fmul fast float %6290, %6126
  %6292 = fmul fast float %6291, %6268
  %6293 = fmul fast float %6110, %1503
  %6294 = fmul fast float %6293, %6126
  %6295 = fmul fast float %6294, %6268
  %6296 = fadd fast float %6289, %5741
  %6297 = fadd fast float %6292, %5742
  %6298 = fadd fast float %6295, %5743
  %6299 = fmul fast float %6288, %6284
  %6300 = fmul fast float %6291, %6285
  %6301 = fmul fast float %6294, %6286
  %6302 = fadd fast float %6299, %5738
  %6303 = fadd fast float %6300, %5739
  %6304 = fadd fast float %6301, %5740
  br label %5870

; <label>:6305                                    ; preds = %5870
  br label %6306

; <label>:6306                                    ; preds = %6305, %5704
  %6307 = phi float [ %5706, %5704 ], [ %5871, %6305 ]
  %6308 = phi float [ %5707, %5704 ], [ %5872, %6305 ]
  %6309 = phi float [ %5708, %5704 ], [ %5873, %6305 ]
  %6310 = phi float [ %5709, %5704 ], [ %5874, %6305 ]
  %6311 = phi float [ %5710, %5704 ], [ %5875, %6305 ]
  %6312 = phi float [ %5711, %5704 ], [ %5876, %6305 ]
  %6313 = add i32 %5705, 1
  %6314 = icmp ugt i32 %6313, %5701
  br i1 %6314, label %6315, label %5704

; <label>:6315                                    ; preds = %6306
  br label %6316

; <label>:6316                                    ; preds = %6315, %5654, %5644
  %6317 = phi float [ %5645, %5644 ], [ %5645, %5654 ], [ %6307, %6315 ]
  %6318 = phi float [ %5646, %5644 ], [ %5646, %5654 ], [ %6308, %6315 ]
  %6319 = phi float [ %5647, %5644 ], [ %5647, %5654 ], [ %6309, %6315 ]
  %6320 = phi float [ %5648, %5644 ], [ %5648, %5654 ], [ %6310, %6315 ]
  %6321 = phi float [ %5649, %5644 ], [ %5649, %5654 ], [ %6311, %6315 ]
  %6322 = phi float [ %5650, %5644 ], [ %5650, %5654 ], [ %6312, %6315 ]
  %6323 = fmul fast float %1503, %1503
  %6324 = fsub fast float 1.000000e+00, %6323
  %6325 = call float @dx.op.dot3.f32(i32 55, float %6324, float %6324, float %6324, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6326 = fsub fast float 1.000000e+00, %6325
  %6327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6328 = extractvalue %dx.types.CBufRet.f32 %6327, 0
  %6329 = fmul fast float %6328, %4070
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 3
  %6332 = fsub fast float 1.000000e+00, %1481
  %6333 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  %6334 = fadd fast float %6322, %1480
  %6335 = fmul fast float %6334, %1481
  %6336 = fmul fast float %6333, %6331
  %6337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.f32 %6337, 3
  %6339 = fmul fast float %6320, %2109
  %6340 = fmul fast float %6321, %2110
  %6341 = fmul fast float %6322, %2111
  %6342 = fcmp fast ogt float %89, %199
  %6343 = and i1 %6342, %1911
  %6344 = or i1 %1917, %6343
  %6345 = icmp eq i32 %1910, 2
  %6346 = fcmp fast ole float %89, %199
  %6347 = and i1 %6346, %6345
  %6348 = or i1 %6347, %6344
  br i1 %6343, label %6349, label %6608

; <label>:6349                                    ; preds = %6316
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 3
  %6353 = fmul fast float %6351, %101
  %6354 = fmul fast float %6352, %102
  %6355 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6356 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  %6357 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %65, float %6355, float %6356, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6358 = extractvalue %dx.types.ResRet.f32 %6357, 0
  %6359 = extractvalue %dx.types.ResRet.f32 %6357, 1
  %6360 = extractvalue %dx.types.ResRet.f32 %6357, 2
  %6361 = extractvalue %dx.types.ResRet.f32 %6357, 3
  %6362 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %65, float %6355, float %6356, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6363 = extractvalue %dx.types.ResRet.f32 %6362, 0
  %6364 = extractvalue %dx.types.ResRet.f32 %6362, 1
  %6365 = extractvalue %dx.types.ResRet.f32 %6362, 2
  %6366 = extractvalue %dx.types.ResRet.f32 %6362, 3
  %6367 = call float @dx.op.binary.f32(i32 35, float %6359, float %6360)  ; FMax(a,b)
  %6368 = call float @dx.op.binary.f32(i32 35, float %6358, float %6367)  ; FMax(a,b)
  %6369 = call float @dx.op.binary.f32(i32 35, float %6368, float %6361)  ; FMax(a,b)
  %6370 = call float @dx.op.binary.f32(i32 36, float %6364, float %6365)  ; FMin(a,b)
  %6371 = call float @dx.op.binary.f32(i32 36, float %6363, float %6370)  ; FMin(a,b)
  %6372 = call float @dx.op.binary.f32(i32 36, float %6371, float %6366)  ; FMin(a,b)
  %6373 = fmul fast float %6369, 2.550000e+02
  %6374 = fadd fast float %6373, 0x3F70101020000000
  %6375 = fptoui float %6374 to i32
  %6376 = fmul fast float %6372, 2.550000e+02
  %6377 = fadd fast float %6376, 0x3F70101020000000
  %6378 = fptoui float %6377 to i32
  %6379 = icmp ult i32 %6375, %6378
  br i1 %6379, label %6380, label %6548

; <label>:6380                                    ; preds = %6349
  %6381 = fcmp fast ogt float %88, 9.843750e-01
  %6382 = fadd fast float %89, -4.000000e+00
  %6383 = select i1 %6381, float -4.000000e+00, float %6382
  %6384 = call float @dx.op.binary.f32(i32 35, float %6383, float 0.000000e+00)  ; FMax(a,b)
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 0
  %6387 = fadd fast float %6386, %6384
  %6388 = extractvalue %dx.types.CBufRet.f32 %6385, 2
  %6389 = fmul fast float %6387, %6388
  %6390 = call float @dx.op.unary.f32(i32 23, float %6389)  ; Log(value)
  %6391 = extractvalue %dx.types.CBufRet.f32 %6385, 3
  %6392 = fmul fast float %6391, %6390
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 2
  %6395 = fmul fast float %6392, %6394
  %6396 = call float @dx.op.unary.f32(i32 7, float %6395)  ; Saturate(value)
  %6397 = uitofp i32 %6375 to float
  %6398 = uitofp i32 %6378 to float
  %6399 = fadd fast float %6397, 5.000000e-01
  %6400 = fadd fast float %6398, 5.000000e-01
  %6401 = fmul fast float %6394, %6399
  %6402 = fmul fast float %6394, %6400
  %6403 = fadd fast float %6401, 0x3F0FFB4800000000
  %6404 = fadd fast float %6402, 0xBF0FFB4800000000
  %6405 = call float @dx.op.binary.f32(i32 35, float %6396, float %6403)  ; FMax(a,b)
  %6406 = call float @dx.op.binary.f32(i32 36, float %6405, float %6404)  ; FMin(a,b)
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 1
  %6409 = extractvalue %dx.types.CBufRet.f32 %6407, 2
  %6410 = extractvalue %dx.types.CBufRet.f32 %6407, 0
  %6411 = fmul fast float %6408, %6406
  %6412 = fadd fast float %6410, %6411
  %6413 = fadd fast float %6410, %6409
  %6414 = fsub fast float %6408, %6409
  %6415 = fadd fast float %6414, %6410
  %6416 = call float @dx.op.binary.f32(i32 35, float %6412, float %6413)  ; FMax(a,b)
  %6417 = call float @dx.op.binary.f32(i32 36, float %6416, float %6415)  ; FMin(a,b)
  %6418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %63, float %6355, float %6356, float %6417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6419 = extractvalue %dx.types.ResRet.f32 %6418, 0
  %6420 = extractvalue %dx.types.ResRet.f32 %6418, 1
  %6421 = extractvalue %dx.types.ResRet.f32 %6418, 2
  %6422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6423 = extractvalue %dx.types.CBufRet.i32 %6422, 0
  %6424 = extractvalue %dx.types.CBufRet.i32 %6422, 1
  %6425 = uitofp i32 %6423 to float
  %6426 = uitofp i32 %6424 to float
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 0
  %6429 = extractvalue %dx.types.CBufRet.f32 %6427, 1
  %6430 = fmul fast float %6425, %6355
  %6431 = fmul fast float %6426, %6356
  %6432 = fadd fast float %6430, -5.000000e-01
  %6433 = fadd fast float %6431, -5.000000e-01
  %6434 = call float @dx.op.unary.f32(i32 22, float %6432)  ; Frc(value)
  %6435 = call float @dx.op.unary.f32(i32 22, float %6433)  ; Frc(value)
  %6436 = fmul fast float %6434, %6434
  %6437 = fmul fast float %6436, %6434
  %6438 = fsub fast float 3.000000e+00, %6434
  %6439 = fmul fast float %6436, %6438
  %6440 = fmul fast float %6434, 3.000000e+00
  %6441 = fmul fast float %6437, 3.000000e+00
  %6442 = fmul fast float %6436, 6.000000e+00
  %6443 = fsub fast float %6441, %6442
  %6444 = fadd fast float %6443, 4.000000e+00
  %6445 = fmul fast float %6444, 0x3FC5555560000000
  %6446 = fmul fast float %6437, -3.000000e+00
  %6447 = fadd fast float %6436, %6434
  %6448 = fmul fast float %6447, 3.000000e+00
  %6449 = fadd fast float %6446, 1.000000e+00
  %6450 = fadd fast float %6449, %6448
  %6451 = fmul fast float %6437, 0x3FC5555560000000
  %6452 = fmul fast float %6435, %6435
  %6453 = fmul fast float %6452, %6435
  %6454 = fsub fast float 3.000000e+00, %6435
  %6455 = fmul fast float %6452, %6454
  %6456 = fmul fast float %6435, 3.000000e+00
  %6457 = fmul fast float %6453, 3.000000e+00
  %6458 = fmul fast float %6452, 6.000000e+00
  %6459 = fsub fast float %6457, %6458
  %6460 = fadd fast float %6459, 4.000000e+00
  %6461 = fmul fast float %6460, 0x3FC5555560000000
  %6462 = fmul fast float %6453, -3.000000e+00
  %6463 = fadd fast float %6452, %6435
  %6464 = fmul fast float %6463, 3.000000e+00
  %6465 = fadd fast float %6462, 1.000000e+00
  %6466 = fadd fast float %6465, %6464
  %6467 = fmul fast float %6453, 0x3FC5555560000000
  %6468 = fadd fast float %6434, 1.000000e+00
  %6469 = fsub fast float 1.000000e+00, %6440
  %6470 = fadd fast float %6469, %6439
  %6471 = fadd fast float %6470, %6444
  %6472 = fmul fast float %6471, 0x3FC5555560000000
  %6473 = fdiv fast float %6445, %6472
  %6474 = fsub fast float %6468, %6473
  %6475 = fsub fast float 1.000000e+00, %6434
  %6476 = fadd fast float %6450, %6437
  %6477 = fmul fast float %6476, 0x3FC5555560000000
  %6478 = fdiv fast float %6451, %6477
  %6479 = fadd fast float %6475, %6478
  %6480 = fadd fast float %6435, 1.000000e+00
  %6481 = fsub fast float 1.000000e+00, %6456
  %6482 = fadd fast float %6481, %6455
  %6483 = fadd fast float %6482, %6460
  %6484 = fmul fast float %6483, 0x3FC5555560000000
  %6485 = fdiv fast float %6461, %6484
  %6486 = fsub fast float %6480, %6485
  %6487 = fsub fast float 1.000000e+00, %6435
  %6488 = fadd fast float %6466, %6453
  %6489 = fmul fast float %6488, 0x3FC5555560000000
  %6490 = fdiv fast float %6467, %6489
  %6491 = fadd fast float %6490, %6487
  %6492 = fmul fast float %6474, %6428
  %6493 = fsub fast float %6355, %6492
  %6494 = fmul fast float %6479, %6428
  %6495 = fadd fast float %6494, %6355
  %6496 = fmul fast float %6491, %6429
  %6497 = fadd fast float %6496, %6356
  %6498 = fmul fast float %6486, %6429
  %6499 = fsub fast float %6356, %6498
  %6500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %6493, float %6499, float %6417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6501 = extractvalue %dx.types.ResRet.f32 %6500, 0
  %6502 = extractvalue %dx.types.ResRet.f32 %6500, 1
  %6503 = extractvalue %dx.types.ResRet.f32 %6500, 2
  %6504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %6495, float %6499, float %6417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6505 = extractvalue %dx.types.ResRet.f32 %6504, 0
  %6506 = extractvalue %dx.types.ResRet.f32 %6504, 1
  %6507 = extractvalue %dx.types.ResRet.f32 %6504, 2
  %6508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %6493, float %6497, float %6417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6509 = extractvalue %dx.types.ResRet.f32 %6508, 0
  %6510 = extractvalue %dx.types.ResRet.f32 %6508, 1
  %6511 = extractvalue %dx.types.ResRet.f32 %6508, 2
  %6512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %6495, float %6497, float %6417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6513 = extractvalue %dx.types.ResRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.ResRet.f32 %6512, 1
  %6515 = extractvalue %dx.types.ResRet.f32 %6512, 2
  %6516 = fsub fast float %6509, %6501
  %6517 = fsub fast float %6510, %6502
  %6518 = fsub fast float %6511, %6503
  %6519 = fmul fast float %6516, %6489
  %6520 = fmul fast float %6517, %6489
  %6521 = fmul fast float %6518, %6489
  %6522 = fadd fast float %6519, %6501
  %6523 = fadd fast float %6520, %6502
  %6524 = fadd fast float %6521, %6503
  %6525 = fsub fast float %6513, %6505
  %6526 = fsub fast float %6514, %6506
  %6527 = fsub fast float %6515, %6507
  %6528 = fmul fast float %6525, %6489
  %6529 = fmul fast float %6526, %6489
  %6530 = fmul fast float %6527, %6489
  %6531 = fsub fast float %6505, %6522
  %6532 = fadd fast float %6531, %6528
  %6533 = fsub fast float %6506, %6523
  %6534 = fadd fast float %6533, %6529
  %6535 = fsub fast float %6507, %6524
  %6536 = fadd fast float %6535, %6530
  %6537 = fmul fast float %6532, %6477
  %6538 = fmul fast float %6534, %6477
  %6539 = fmul fast float %6536, %6477
  %6540 = fadd fast float %6537, %6522
  %6541 = fadd fast float %6538, %6523
  %6542 = fadd fast float %6539, %6524
  %6543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6544 = extractvalue %dx.types.CBufRet.f32 %6543, 1
  %6545 = fmul fast float %6540, %6544
  %6546 = fmul fast float %6541, %6544
  %6547 = fmul fast float %6542, %6544
  br label %6548

; <label>:6548                                    ; preds = %6380, %6349
  %6549 = phi float [ %6419, %6380 ], [ 1.000000e+00, %6349 ]
  %6550 = phi float [ %6420, %6380 ], [ 1.000000e+00, %6349 ]
  %6551 = phi float [ %6421, %6380 ], [ 1.000000e+00, %6349 ]
  %6552 = phi float [ %6545, %6380 ], [ 0.000000e+00, %6349 ]
  %6553 = phi float [ %6546, %6380 ], [ 0.000000e+00, %6349 ]
  %6554 = phi float [ %6547, %6380 ], [ 0.000000e+00, %6349 ]
  %6555 = fmul fast float %6552, %6326
  %6556 = fmul fast float %6553, %6326
  %6557 = fmul fast float %6554, %6326
  %6558 = call float @dx.op.dot3.f32(i32 55, float %6549, float %6550, float %6551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6559 = call float @dx.op.dot3.f32(i32 55, float %6555, float %6556, float %6557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6560 = select i1 %239, float %6558, float %6549
  %6561 = select i1 %239, float %6558, float %6550
  %6562 = select i1 %239, float 1.000000e+00, float %6551
  %6563 = select i1 %239, float %6559, float %6555
  %6564 = select i1 %239, float 0.000000e+00, float %6556
  %6565 = select i1 %239, float 0.000000e+00, float %6557
  %6566 = fmul fast float %6560, %6339
  %6567 = fmul fast float %6561, %6340
  %6568 = fmul fast float %6562, %6341
  %6569 = fadd fast float %6566, %6563
  %6570 = fadd fast float %6567, %6564
  %6571 = fadd fast float %6565, %6568
  %6572 = fmul fast float %6560, %6317
  %6573 = fmul fast float %6561, %6318
  %6574 = fmul fast float %6562, %6319
  %6575 = fmul fast float %101, 2.000000e+00
  %6576 = fmul fast float %6575, %6351
  %6577 = fmul fast float %102, 2.000000e+00
  %6578 = fmul fast float %6577, %6352
  %6579 = fsub fast float 1.000000e+00, %6576
  %6580 = fsub fast float 1.000000e+00, %6578
  %6581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6582 = extractvalue %dx.types.CBufRet.f32 %6581, 0
  %6583 = extractvalue %dx.types.CBufRet.f32 %6581, 1
  %6584 = extractvalue %dx.types.CBufRet.f32 %6581, 2
  %6585 = fmul fast float %6579, %6582
  %6586 = fmul fast float %6579, %6583
  %6587 = fmul fast float %6579, %6584
  %6588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.CBufRet.f32 %6588, 1
  %6591 = extractvalue %dx.types.CBufRet.f32 %6588, 2
  %6592 = fmul fast float %6580, %6589
  %6593 = fmul fast float %6580, %6590
  %6594 = fmul fast float %6580, %6591
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 0
  %6597 = extractvalue %dx.types.CBufRet.f32 %6595, 1
  %6598 = extractvalue %dx.types.CBufRet.f32 %6595, 2
  %6599 = fadd fast float %6592, %6596
  %6600 = fadd fast float %6599, %6585
  %6601 = fadd fast float %6593, %6597
  %6602 = fadd fast float %6601, %6586
  %6603 = fadd fast float %6594, %6598
  %6604 = fadd fast float %6603, %6587
  %6605 = fmul fast float %6600, %199
  %6606 = fmul fast float %6602, %199
  %6607 = fmul fast float %6604, %199
  br label %6608

; <label>:6608                                    ; preds = %6548, %6316
  %6609 = phi float [ %6605, %6548 ], [ %148, %6316 ]
  %6610 = phi float [ %6606, %6548 ], [ %149, %6316 ]
  %6611 = phi float [ %6607, %6548 ], [ %150, %6316 ]
  %6612 = phi float [ %199, %6548 ], [ %89, %6316 ]
  %6613 = phi float [ %6569, %6548 ], [ %6339, %6316 ]
  %6614 = phi float [ %6570, %6548 ], [ %6340, %6316 ]
  %6615 = phi float [ %6571, %6548 ], [ %6341, %6316 ]
  %6616 = phi float [ %6572, %6548 ], [ %6317, %6316 ]
  %6617 = phi float [ %6573, %6548 ], [ %6318, %6316 ]
  %6618 = phi float [ %6574, %6548 ], [ %6319, %6316 ]
  %6619 = phi float [ %6549, %6548 ], [ 1.000000e+00, %6316 ]
  br i1 %6348, label %7774, label %6620

; <label>:6620                                    ; preds = %6608
  %6621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6622 = extractvalue %dx.types.CBufRet.f32 %6621, 0
  %6623 = extractvalue %dx.types.CBufRet.f32 %6621, 1
  %6624 = extractvalue %dx.types.CBufRet.f32 %6621, 2
  %6625 = extractvalue %dx.types.CBufRet.f32 %6621, 3
  %6626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6627 = extractvalue %dx.types.CBufRet.f32 %6626, 0
  %6628 = extractvalue %dx.types.CBufRet.f32 %6626, 1
  %6629 = extractvalue %dx.types.CBufRet.f32 %6626, 2
  %6630 = extractvalue %dx.types.CBufRet.f32 %6626, 3
  %6631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6632 = extractvalue %dx.types.CBufRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.CBufRet.f32 %6631, 1
  %6634 = extractvalue %dx.types.CBufRet.f32 %6631, 2
  %6635 = extractvalue %dx.types.CBufRet.f32 %6631, 3
  %6636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6637 = extractvalue %dx.types.CBufRet.f32 %6636, 0
  %6638 = extractvalue %dx.types.CBufRet.f32 %6636, 1
  %6639 = extractvalue %dx.types.CBufRet.f32 %6636, 2
  %6640 = extractvalue %dx.types.CBufRet.f32 %6636, 3
  %6641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6642 = extractvalue %dx.types.CBufRet.f32 %6641, 3
  %6643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6644 = extractvalue %dx.types.CBufRet.f32 %6643, 3
  %6645 = extractvalue %dx.types.CBufRet.f32 %6643, 0
  %6646 = extractvalue %dx.types.CBufRet.f32 %6643, 1
  %6647 = extractvalue %dx.types.CBufRet.f32 %6643, 2
  %6648 = fcmp fast olt float %6647, -5.000000e-01
  %6649 = call float @dx.op.dot3.f32(i32 55, float %6609, float %6610, float %6611, float %6609, float %6610, float %6611)  ; Dot3(ax,ay,az,bx,by,bz)
  %6650 = call float @dx.op.unary.f32(i32 25, float %6649)  ; Rsqrt(value)
  %6651 = fmul fast float %6650, %6649
  %6652 = fmul fast float %6650, %6609
  %6653 = fmul fast float %6650, %6610
  %6654 = fmul fast float %6650, %6611
  %6655 = fadd fast float %6651, %6625
  %6656 = call float @dx.op.dot3.f32(i32 55, float %6652, float %6653, float %6654, float %6622, float %6623, float %6624)  ; Dot3(ax,ay,az,bx,by,bz)
  %6657 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.i32 %6657, 1
  %6659 = and i32 %6658, 1
  %6660 = icmp ne i32 %6659, 0
  %6661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.f32 %6661, 2
  %6663 = fcmp fast ogt float %6662, 0.000000e+00
  %6664 = and i1 %6660, %6663
  br i1 %6664, label %6665, label %7071, !dx.controlflow.hints !148

; <label>:6665                                    ; preds = %6620
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 3
  %6668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6669 = extractvalue %dx.types.CBufRet.f32 %6668, 2
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 2
  %6672 = fsub fast float %6669, %6671
  %6673 = and i32 %6658, 2
  %6674 = extractvalue %dx.types.CBufRet.i32 %6657, 0
  %6675 = call i32 @dx.op.binary.i32(i32 40, i32 %6674, i32 3)  ; UMin(a,b)
  %6676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6677 = extractvalue %dx.types.CBufRet.f32 %6676, 0
  %6678 = extractvalue %dx.types.CBufRet.f32 %6676, 1
  %6679 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  %6680 = extractvalue %dx.types.CBufRet.f32 %6670, 1
  %6681 = fsub fast float %6677, %6679
  %6682 = fsub fast float %6678, %6680
  %6683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6684 = extractvalue %dx.types.CBufRet.f32 %6683, 0
  %6685 = fcmp fast ogt float %6684, 0.000000e+00
  %6686 = fsub fast float -0.000000e+00, %6681
  %6687 = fsub fast float -0.000000e+00, %6682
  %6688 = call float @dx.op.dot2.f32(i32 54, float %6652, float %6653, float %6652, float %6653)  ; Dot2(ax,ay,bx,by)
  %6689 = call float @dx.op.dot2.f32(i32 54, float %6652, float %6653, float %6686, float %6687)  ; Dot2(ax,ay,bx,by)
  %6690 = fmul fast float %6689, 2.000000e+00
  %6691 = call float @dx.op.dot2.f32(i32 54, float %6686, float %6687, float %6686, float %6687)  ; Dot2(ax,ay,bx,by)
  %6692 = fmul fast float %6684, %6684
  %6693 = fsub fast float %6691, %6692
  %6694 = fmul fast float %6690, %6690
  %6695 = fmul fast float %6688, 4.000000e+00
  %6696 = fmul fast float %6695, %6693
  %6697 = fsub fast float %6694, %6696
  %6698 = fcmp fast ogt float %6697, 0.000000e+00
  br i1 %6698, label %6699, label %6714

; <label>:6699                                    ; preds = %6665
  %6700 = fcmp fast ogt float %6690, 0.000000e+00
  %6701 = call float @dx.op.unary.f32(i32 24, float %6697)  ; Sqrt(value)
  %6702 = fsub fast float -0.000000e+00, %6701
  %6703 = select i1 %6700, float %6701, float %6702
  %6704 = fadd fast float %6703, %6690
  %6705 = fmul float %6704, -5.000000e-01
  %6706 = fdiv fast float %6705, %6688
  %6707 = call float @dx.op.binary.f32(i32 35, float %6706, float 0.000000e+00)  ; FMax(a,b)
  %6708 = call float @dx.op.binary.f32(i32 36, float %6651, float %6707)  ; FMin(a,b)
  %6709 = fdiv fast float %6693, %6705
  %6710 = call float @dx.op.binary.f32(i32 35, float %6709, float 0.000000e+00)  ; FMax(a,b)
  %6711 = call float @dx.op.binary.f32(i32 36, float %6651, float %6710)  ; FMin(a,b)
  %6712 = call float @dx.op.binary.f32(i32 36, float %6708, float %6711)  ; FMin(a,b)
  %6713 = call float @dx.op.binary.f32(i32 35, float %6708, float %6711)  ; FMax(a,b)
  br label %6714

; <label>:6714                                    ; preds = %6699, %6665
  %6715 = phi float [ %6713, %6699 ], [ -1.000000e+00, %6665 ]
  %6716 = phi float [ %6712, %6699 ], [ -1.000000e+00, %6665 ]
  %6717 = phi i1 [ true, %6699 ], [ false, %6665 ]
  %6718 = and i1 %6685, %6717
  br i1 %6718, label %6719, label %6721

; <label>:6719                                    ; preds = %6714
  %6720 = fcmp fast oeq float %6716, %6715
  br i1 %6720, label %7024, label %6722

; <label>:6721                                    ; preds = %6714
  br i1 %6685, label %7024, label %6722

; <label>:6722                                    ; preds = %6721, %6719
  %6723 = phi float [ %6651, %6721 ], [ %6715, %6719 ]
  %6724 = phi float [ 0.000000e+00, %6721 ], [ %6716, %6719 ]
  %6725 = icmp ne i32 %6673, 0
  %6726 = fmul fast float %6723, %6654
  %6727 = fadd fast float %6726, %6667
  %6728 = fmul fast float %6727, %6723
  %6729 = select i1 %6725, float 0.000000e+00, float %6728
  %6730 = fcmp fast oeq float %6654, 0.000000e+00
  %6731 = fdiv fast float %6672, %6654
  %6732 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6731)  ; FMax(a,b)
  %6733 = select i1 %6730, float %6723, float %6732
  %6734 = call float @dx.op.binary.f32(i32 36, float %6723, float %6733)  ; FMin(a,b)
  %6735 = fcmp fast ogt float %6654, 0.000000e+00
  %6736 = fcmp fast olt float %6672, 0.000000e+00
  br i1 %6735, label %6737, label %6794

; <label>:6737                                    ; preds = %6722
  %6738 = icmp eq i32 %6673, 0
  br i1 %6736, label %6739, label %6783

; <label>:6739                                    ; preds = %6737
  %6740 = select i1 %6738, float %6723, float 0.000000e+00
  %6741 = fsub fast float -0.000000e+00, %6740
  %6742 = call float @dx.op.unary.f32(i32 6, float %6741)  ; FAbs(value)
  %6743 = fmul fast float %6740, %6654
  %6744 = fadd fast float %6743, %6667
  %6745 = fmul fast float %6742, %6744
  %6746 = fsub fast float %6729, %6745
  %6747 = fsub fast float %6723, %6742
  %6748 = select i1 %6738, float %6747, float 0.000000e+00
  %6749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.f32 %6749, 0
  %6751 = extractvalue %dx.types.CBufRet.f32 %6749, 1
  %6752 = extractvalue %dx.types.CBufRet.f32 %6749, 2
  %6753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6754 = extractvalue %dx.types.CBufRet.f32 %6753, 0
  %6755 = extractvalue %dx.types.CBufRet.f32 %6753, 1
  %6756 = extractvalue %dx.types.CBufRet.f32 %6753, 2
  %6757 = extractvalue %dx.types.CBufRet.f32 %6753, 3
  %6758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6759 = extractvalue %dx.types.CBufRet.f32 %6758, 3
  %6760 = call float @dx.op.binary.f32(i32 36, float %6746, float %6759)  ; FMin(a,b)
  %6761 = fmul fast float %6757, %6748
  %6762 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  %6763 = fsub fast float %6754, %6750
  %6764 = fsub fast float %6755, %6751
  %6765 = fsub fast float %6756, %6752
  %6766 = fmul fast float %6762, %6763
  %6767 = fmul fast float %6762, %6764
  %6768 = fmul fast float %6762, %6765
  %6769 = fadd fast float %6766, %6750
  %6770 = fadd fast float %6767, %6751
  %6771 = fadd fast float %6768, %6752
  %6772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6773 = extractvalue %dx.types.CBufRet.f32 %6772, 0
  %6774 = extractvalue %dx.types.CBufRet.f32 %6772, 1
  %6775 = fadd fast float %6774, %6773
  %6776 = call float @dx.op.unary.f32(i32 7, float %6775)  ; Saturate(value)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6772, 2
  %6778 = extractvalue %dx.types.CBufRet.f32 %6772, 3
  %6779 = fadd fast float %6778, %6777
  %6780 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  %6781 = fmul fast float %6776, %6760
  %6782 = fmul fast float %6781, %6780
  br label %7024

; <label>:6783                                    ; preds = %6737
  br i1 %6738, label %6784, label %6805

; <label>:6784                                    ; preds = %6783
  %6785 = call float @dx.op.binary.f32(i32 36, float %6734, float %6724)  ; FMin(a,b)
  %6786 = fsub fast float %6734, %6785
  %6787 = fsub fast float %6786, %6723
  %6788 = call float @dx.op.unary.f32(i32 6, float %6787)  ; FAbs(value)
  %6789 = fadd fast float %6786, %6723
  %6790 = fmul fast float %6789, %6654
  %6791 = fadd fast float %6790, %6667
  %6792 = fmul fast float %6791, %6788
  %6793 = fsub fast float %6729, %6792
  br label %6805

; <label>:6794                                    ; preds = %6722
  br i1 %6736, label %6795, label %6805

; <label>:6795                                    ; preds = %6794
  %6796 = call float @dx.op.binary.f32(i32 35, float %6724, float %6734)  ; FMax(a,b)
  %6797 = icmp eq i32 %6673, 0
  %6798 = select i1 %6797, float %6734, float 0.000000e+00
  %6799 = fsub fast float -0.000000e+00, %6798
  %6800 = call float @dx.op.unary.f32(i32 6, float %6799)  ; FAbs(value)
  %6801 = fmul fast float %6798, %6654
  %6802 = fadd fast float %6801, %6667
  %6803 = fmul fast float %6800, %6802
  %6804 = fsub fast float %6729, %6803
  br label %6805

; <label>:6805                                    ; preds = %6795, %6794, %6784, %6783
  %6806 = phi float [ %6724, %6783 ], [ %6724, %6784 ], [ %6796, %6795 ], [ %6724, %6794 ]
  %6807 = phi float [ 0.000000e+00, %6783 ], [ %6788, %6784 ], [ %6800, %6795 ], [ 0.000000e+00, %6794 ]
  %6808 = phi float [ %6729, %6783 ], [ %6793, %6784 ], [ %6804, %6795 ], [ %6729, %6794 ]
  %6809 = phi float [ %6734, %6783 ], [ %6734, %6784 ], [ %6723, %6795 ], [ %6723, %6794 ]
  %6810 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %6810, align 4, !tbaa !135, !noalias !149
  %6811 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %6811, align 4, !tbaa !135, !noalias !149
  %6812 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %6812, align 4, !tbaa !135, !noalias !149
  %6813 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %6813, align 4, !tbaa !135, !noalias !149
  %6814 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %6814, align 4, !tbaa !135, !noalias !149
  %6815 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %6815, align 4, !tbaa !135, !noalias !149
  %6816 = icmp sgt i32 %6675, 0
  br i1 %6816, label %6817, label %6878

; <label>:6817                                    ; preds = %6805
  br label %6818

; <label>:6818                                    ; preds = %6867, %6817
  %6819 = phi i32 [ %6868, %6867 ], [ 0, %6817 ]
  %6820 = phi i32 [ %6869, %6867 ], [ 0, %6817 ]
  %6821 = add nuw i32 %6820, 171
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 %6821)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 0
  %6824 = extractvalue %dx.types.CBufRet.f32 %6822, 1
  %6825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6826 = extractvalue %dx.types.CBufRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.CBufRet.f32 %6825, 1
  %6828 = fsub fast float %6823, %6826
  %6829 = fsub fast float %6824, %6827
  %6830 = extractvalue %dx.types.CBufRet.f32 %6822, 2
  %6831 = fsub fast float -0.000000e+00, %6828
  %6832 = fsub fast float -0.000000e+00, %6829
  %6833 = call float @dx.op.dot2.f32(i32 54, float %6652, float %6653, float %6831, float %6832)  ; Dot2(ax,ay,bx,by)
  %6834 = fmul fast float %6833, 2.000000e+00
  %6835 = call float @dx.op.dot2.f32(i32 54, float %6831, float %6832, float %6831, float %6832)  ; Dot2(ax,ay,bx,by)
  %6836 = fmul fast float %6830, %6830
  %6837 = fsub fast float %6835, %6836
  %6838 = fmul fast float %6834, %6834
  %6839 = fmul fast float %6695, %6837
  %6840 = fsub fast float %6838, %6839
  %6841 = fcmp fast ogt float %6840, 0.000000e+00
  br i1 %6841, label %6842, label %6857

; <label>:6842                                    ; preds = %6818
  %6843 = fcmp fast ogt float %6834, 0.000000e+00
  %6844 = call float @dx.op.unary.f32(i32 24, float %6840)  ; Sqrt(value)
  %6845 = fsub fast float -0.000000e+00, %6844
  %6846 = select i1 %6843, float %6844, float %6845
  %6847 = fadd fast float %6846, %6834
  %6848 = fmul float %6847, -5.000000e-01
  %6849 = fdiv fast float %6848, %6688
  %6850 = call float @dx.op.binary.f32(i32 35, float %6849, float 0.000000e+00)  ; FMax(a,b)
  %6851 = call float @dx.op.binary.f32(i32 36, float %6723, float %6850)  ; FMin(a,b)
  %6852 = fdiv fast float %6837, %6848
  %6853 = call float @dx.op.binary.f32(i32 35, float %6852, float 0.000000e+00)  ; FMax(a,b)
  %6854 = call float @dx.op.binary.f32(i32 36, float %6723, float %6853)  ; FMin(a,b)
  %6855 = call float @dx.op.binary.f32(i32 36, float %6851, float %6854)  ; FMin(a,b)
  %6856 = call float @dx.op.binary.f32(i32 35, float %6851, float %6854)  ; FMax(a,b)
  br label %6857

; <label>:6857                                    ; preds = %6842, %6818
  %6858 = phi float [ %6856, %6842 ], [ -1.000000e+00, %6818 ]
  %6859 = phi float [ %6855, %6842 ], [ -1.000000e+00, %6818 ]
  %6860 = phi i1 [ true, %6842 ], [ false, %6818 ]
  br i1 %6860, label %6861, label %6867

; <label>:6861                                    ; preds = %6857
  %6862 = call float @dx.op.binary.f32(i32 35, float %6806, float %6859)  ; FMax(a,b)
  %6863 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6820
  store float %6862, float* %6863, align 4, !tbaa !135, !noalias !149
  %6864 = call float @dx.op.binary.f32(i32 35, float %6806, float %6858)  ; FMax(a,b)
  %6865 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %6820
  store float %6864, float* %6865, align 4, !tbaa !135, !noalias !149
  %6866 = add nsw i32 %6819, 1
  br label %6867

; <label>:6867                                    ; preds = %6861, %6857
  %6868 = phi i32 [ %6866, %6861 ], [ %6819, %6857 ]
  %6869 = add nuw nsw i32 %6820, 1
  %6870 = icmp eq i32 %6869, %6675
  br i1 %6870, label %6871, label %6818

; <label>:6871                                    ; preds = %6867
  %6872 = load float, float* %6812, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %6873 = load float, float* %6811, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  %6874 = load float, float* %6810, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  %6875 = load float, float* %6815, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %6876 = load float, float* %6814, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  %6877 = load float, float* %6813, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  br label %6878

; <label>:6878                                    ; preds = %6871, %6805
  %6879 = phi float [ -1.000000e+00, %6805 ], [ %6877, %6871 ]
  %6880 = phi float [ -1.000000e+00, %6805 ], [ %6876, %6871 ]
  %6881 = phi float [ -1.000000e+00, %6805 ], [ %6875, %6871 ]
  %6882 = phi float [ -1.000000e+00, %6805 ], [ %6874, %6871 ]
  %6883 = phi float [ -1.000000e+00, %6805 ], [ %6873, %6871 ]
  %6884 = phi float [ -1.000000e+00, %6805 ], [ %6872, %6871 ]
  %6885 = phi i32 [ 0, %6805 ], [ %6868, %6871 ]
  %6886 = call float @dx.op.binary.f32(i32 36, float %6883, float %6884)  ; FMin(a,b)
  %6887 = call float @dx.op.binary.f32(i32 36, float %6882, float %6886)  ; FMin(a,b)
  %6888 = call float @dx.op.binary.f32(i32 35, float %6882, float %6883)  ; FMax(a,b)
  %6889 = call float @dx.op.binary.f32(i32 36, float %6888, float %6884)  ; FMin(a,b)
  %6890 = call float @dx.op.binary.f32(i32 36, float %6882, float %6883)  ; FMin(a,b)
  %6891 = call float @dx.op.binary.f32(i32 35, float %6890, float %6889)  ; FMax(a,b)
  %6892 = call float @dx.op.binary.f32(i32 35, float %6883, float %6884)  ; FMax(a,b)
  %6893 = call float @dx.op.binary.f32(i32 35, float %6882, float %6892)  ; FMax(a,b)
  store float %6887, float* %6810, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  store float %6891, float* %6811, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  store float %6893, float* %6812, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %6894 = call float @dx.op.binary.f32(i32 36, float %6880, float %6881)  ; FMin(a,b)
  %6895 = call float @dx.op.binary.f32(i32 36, float %6879, float %6894)  ; FMin(a,b)
  %6896 = call float @dx.op.binary.f32(i32 35, float %6879, float %6880)  ; FMax(a,b)
  %6897 = call float @dx.op.binary.f32(i32 36, float %6896, float %6881)  ; FMin(a,b)
  %6898 = call float @dx.op.binary.f32(i32 36, float %6879, float %6880)  ; FMin(a,b)
  %6899 = call float @dx.op.binary.f32(i32 35, float %6898, float %6897)  ; FMax(a,b)
  %6900 = call float @dx.op.binary.f32(i32 35, float %6880, float %6881)  ; FMax(a,b)
  %6901 = call float @dx.op.binary.f32(i32 35, float %6879, float %6900)  ; FMax(a,b)
  store float %6895, float* %6813, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  store float %6899, float* %6814, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  store float %6901, float* %6815, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %6902 = sub nsw i32 3, %6885
  %6903 = icmp sgt i32 %6902, 2
  br i1 %6903, label %6904, label %6942

; <label>:6904                                    ; preds = %6878
  %6905 = icmp eq i32 %6673, 0
  %6906 = fsub fast float %6723, %6807
  %6907 = select i1 %6905, float %6906, float %6807
  %6908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6909 = extractvalue %dx.types.CBufRet.f32 %6908, 0
  %6910 = extractvalue %dx.types.CBufRet.f32 %6908, 1
  %6911 = extractvalue %dx.types.CBufRet.f32 %6908, 2
  %6912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6913 = extractvalue %dx.types.CBufRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.CBufRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.CBufRet.f32 %6912, 2
  %6916 = extractvalue %dx.types.CBufRet.f32 %6912, 3
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 3
  %6919 = call float @dx.op.binary.f32(i32 36, float %6808, float %6918)  ; FMin(a,b)
  %6920 = fmul fast float %6916, %6907
  %6921 = call float @dx.op.unary.f32(i32 7, float %6920)  ; Saturate(value)
  %6922 = fsub fast float %6913, %6909
  %6923 = fsub fast float %6914, %6910
  %6924 = fsub fast float %6915, %6911
  %6925 = fmul fast float %6921, %6922
  %6926 = fmul fast float %6921, %6923
  %6927 = fmul fast float %6921, %6924
  %6928 = fadd fast float %6925, %6909
  %6929 = fadd fast float %6926, %6910
  %6930 = fadd fast float %6927, %6911
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 0
  %6933 = extractvalue %dx.types.CBufRet.f32 %6931, 1
  %6934 = fadd fast float %6933, %6932
  %6935 = call float @dx.op.unary.f32(i32 7, float %6934)  ; Saturate(value)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6931, 2
  %6937 = extractvalue %dx.types.CBufRet.f32 %6931, 3
  %6938 = fadd fast float %6937, %6936
  %6939 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  %6940 = fmul fast float %6935, %6919
  %6941 = fmul fast float %6940, %6939
  br label %7024

; <label>:6942                                    ; preds = %6878
  %6943 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6902
  %6944 = load float, float* %6943, align 4, !tbaa !135, !noalias !149
  %6945 = fcmp fast olt float %6944, %6809
  %6946 = icmp sgt i32 %6885, 0
  %6947 = and i1 %6946, %6945
  br i1 %6947, label %6948, label %6985

; <label>:6948                                    ; preds = %6942
  br label %6949

; <label>:6949                                    ; preds = %6978, %6948
  %6950 = phi float [ %6979, %6978 ], [ %6807, %6948 ]
  %6951 = phi float [ %6980, %6978 ], [ %6808, %6948 ]
  %6952 = phi float [ %6960, %6978 ], [ %6944, %6948 ]
  %6953 = phi i32 [ %6957, %6978 ], [ %6902, %6948 ]
  %6954 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %6953
  %6955 = load float, float* %6954, align 4, !tbaa !135, !noalias !149
  %6956 = icmp slt i32 %6953, 2
  %6957 = add nsw i32 %6953, 1
  %6958 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6957
  %6959 = load float, float* %6958, align 4, !tbaa !135, !noalias !149
  %6960 = select i1 %6956, float %6959, float %6723
  %6961 = call float @dx.op.binary.f32(i32 36, float %6960, float %6955)  ; FMin(a,b)
  %6962 = call float @dx.op.binary.f32(i32 36, float %6809, float %6961)  ; FMin(a,b)
  %6963 = icmp eq i32 %6673, 0
  %6964 = fadd fast float %6962, %6952
  %6965 = fmul fast float %6964, %6654
  %6966 = fadd fast float %6965, %6667
  br i1 %6963, label %6972, label %6967

; <label>:6967                                    ; preds = %6949
  %6968 = fsub fast float %6962, %6952
  %6969 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6968)  ; FMax(a,b)
  %6970 = fmul fast float %6969, %6966
  %6971 = fadd fast float %6970, %6951
  br label %6978

; <label>:6972                                    ; preds = %6949
  %6973 = fsub fast float %6952, %6962
  %6974 = call float @dx.op.unary.f32(i32 6, float %6973)  ; FAbs(value)
  %6975 = fadd fast float %6974, %6950
  %6976 = fmul fast float %6974, %6966
  %6977 = fsub fast float %6951, %6976
  br label %6978

; <label>:6978                                    ; preds = %6972, %6967
  %6979 = phi float [ %6969, %6967 ], [ %6975, %6972 ]
  %6980 = phi float [ %6971, %6967 ], [ %6977, %6972 ]
  %6981 = fcmp fast olt float %6960, %6809
  %6982 = icmp slt i32 %6957, 3
  %6983 = and i1 %6982, %6981
  br i1 %6983, label %6949, label %6984

; <label>:6984                                    ; preds = %6978
  br label %6985

; <label>:6985                                    ; preds = %6984, %6942
  %6986 = phi float [ %6807, %6942 ], [ %6979, %6984 ]
  %6987 = phi float [ %6808, %6942 ], [ %6980, %6984 ]
  %6988 = fsub fast float %6723, %6986
  %6989 = select i1 %6725, float %6986, float %6988
  %6990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6991 = extractvalue %dx.types.CBufRet.f32 %6990, 0
  %6992 = extractvalue %dx.types.CBufRet.f32 %6990, 1
  %6993 = extractvalue %dx.types.CBufRet.f32 %6990, 2
  %6994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6995 = extractvalue %dx.types.CBufRet.f32 %6994, 0
  %6996 = extractvalue %dx.types.CBufRet.f32 %6994, 1
  %6997 = extractvalue %dx.types.CBufRet.f32 %6994, 2
  %6998 = extractvalue %dx.types.CBufRet.f32 %6994, 3
  %6999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7000 = extractvalue %dx.types.CBufRet.f32 %6999, 3
  %7001 = call float @dx.op.binary.f32(i32 36, float %6987, float %7000)  ; FMin(a,b)
  %7002 = fmul fast float %6998, %6989
  %7003 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7004 = fsub fast float %6995, %6991
  %7005 = fsub fast float %6996, %6992
  %7006 = fsub fast float %6997, %6993
  %7007 = fmul fast float %7003, %7004
  %7008 = fmul fast float %7003, %7005
  %7009 = fmul fast float %7003, %7006
  %7010 = fadd fast float %7007, %6991
  %7011 = fadd fast float %7008, %6992
  %7012 = fadd fast float %7009, %6993
  %7013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7014 = extractvalue %dx.types.CBufRet.f32 %7013, 0
  %7015 = extractvalue %dx.types.CBufRet.f32 %7013, 1
  %7016 = fadd fast float %7015, %7014
  %7017 = call float @dx.op.unary.f32(i32 7, float %7016)  ; Saturate(value)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7013, 2
  %7019 = extractvalue %dx.types.CBufRet.f32 %7013, 3
  %7020 = fadd fast float %7019, %7018
  %7021 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  %7022 = fmul fast float %7017, %7001
  %7023 = fmul fast float %7022, %7021
  br label %7024

; <label>:7024                                    ; preds = %6985, %6904, %6739, %6721, %6719
  %7025 = phi float [ %6748, %6739 ], [ %6907, %6904 ], [ %6989, %6985 ], [ 0.000000e+00, %6719 ], [ 0.000000e+00, %6721 ]
  %7026 = phi float [ %6782, %6739 ], [ %6941, %6904 ], [ %7023, %6985 ], [ 0.000000e+00, %6719 ], [ 0.000000e+00, %6721 ]
  %7027 = phi float [ %6769, %6739 ], [ %6928, %6904 ], [ %7010, %6985 ], [ 0.000000e+00, %6719 ], [ 0.000000e+00, %6721 ]
  %7028 = phi float [ %6770, %6739 ], [ %6929, %6904 ], [ %7011, %6985 ], [ 0.000000e+00, %6719 ], [ 0.000000e+00, %6721 ]
  %7029 = phi float [ %6771, %6739 ], [ %6930, %6904 ], [ %7012, %6985 ], [ 0.000000e+00, %6719 ], [ 0.000000e+00, %6721 ]
  %7030 = fmul fast float %6662, %7026
  %7031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7032 = extractvalue %dx.types.CBufRet.f32 %7031, 2
  %7033 = fsub fast float %6669, %7032
  %7034 = fcmp fast olt float %7030, -2.000000e+01
  %7035 = call float @dx.op.unary.f32(i32 21, float %7030)  ; Exp(value)
  %7036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7037 = extractvalue %dx.types.CBufRet.f32 %7036, 2
  %7038 = extractvalue %dx.types.CBufRet.f32 %7036, 3
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 2
  %7041 = fmul fast float %7038, %7033
  %7042 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  %7043 = fsub fast float 1.000000e+00, %7042
  %7044 = fmul fast float %6654, 5.000000e-01
  %7045 = fadd fast float %7044, 5.000000e-01
  %7046 = call float @dx.op.unary.f32(i32 7, float %7045)  ; Saturate(value)
  %7047 = fsub fast float 1.000000e+00, %7046
  %7048 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7043)  ; FMax(a,b)
  %7049 = fdiv fast float %7047, %7048
  %7050 = fsub fast float %7033, %6611
  %7051 = call float @dx.op.unary.f32(i32 6, float %7050)  ; FAbs(value)
  %7052 = fmul fast float %7051, %7037
  %7053 = call float @dx.op.unary.f32(i32 7, float %7049)  ; Saturate(value)
  %7054 = fsub fast float 1.000000e+00, %7052
  %7055 = fmul fast float %7054, %7053
  %7056 = fadd fast float %7055, %7052
  %7057 = fmul fast float %7040, %7033
  %7058 = call float @dx.op.unary.f32(i32 7, float %7057)  ; Saturate(value)
  %7059 = fsub fast float 1.000000e+00, %7056
  %7060 = fmul fast float %7059, %7058
  %7061 = fadd fast float %7060, %7056
  %7062 = call float @dx.op.unary.f32(i32 7, float %7061)  ; Saturate(value)
  %7063 = fadd fast float %7035, -1.000000e+00
  %7064 = select i1 %7034, float -1.000000e+00, float %7063
  %7065 = fmul fast float %7062, %7064
  %7066 = fadd fast float %7065, 1.000000e+00
  %7067 = fsub fast float -0.000000e+00, %7065
  %7068 = fmul fast float %7027, %7067
  %7069 = fmul fast float %7028, %7067
  %7070 = fmul fast float %7029, %7067
  br label %7071

; <label>:7071                                    ; preds = %7024, %6620
  %7072 = phi float [ %7025, %7024 ], [ 0.000000e+00, %6620 ]
  %7073 = phi float [ %7066, %7024 ], [ 1.000000e+00, %6620 ]
  %7074 = phi float [ %7068, %7024 ], [ 0.000000e+00, %6620 ]
  %7075 = phi float [ %7069, %7024 ], [ 0.000000e+00, %6620 ]
  %7076 = phi float [ %7070, %7024 ], [ 0.000000e+00, %6620 ]
  %7077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7078 = extractvalue %dx.types.CBufRet.f32 %7077, 1
  %7079 = fsub fast float 1.000000e+00, %7073
  %7080 = fmul fast float %7079, %6655
  %7081 = fmul fast float %7080, %7078
  %7082 = fsub fast float %6655, %7081
  br i1 %6648, label %7083, label %7112, !dx.controlflow.hints !185

; <label>:7083                                    ; preds = %7071
  %7084 = fmul fast float %6656, %6645
  %7085 = fadd fast float %7084, %6646
  %7086 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7087 = fmul fast float %6627, %7082
  %7088 = fsub fast float -0.000000e+00, %7087
  %7089 = fmul fast float %6628, %7082
  %7090 = fsub fast float -0.000000e+00, %7089
  %7091 = call float @dx.op.unary.f32(i32 21, float %7088)  ; Exp(value)
  %7092 = call float @dx.op.unary.f32(i32 21, float %7090)  ; Exp(value)
  %7093 = call float @dx.op.binary.f32(i32 35, float %6635, float %7091)  ; FMax(a,b)
  %7094 = call float @dx.op.binary.f32(i32 35, float %6635, float %7092)  ; FMax(a,b)
  %7095 = fsub fast float %7094, %7093
  %7096 = fmul fast float %7095, %7086
  %7097 = fadd fast float %7096, %7093
  %7098 = call float @dx.op.unary.f32(i32 7, float %7097)  ; Saturate(value)
  %7099 = fsub fast float %6632, %6637
  %7100 = fsub fast float %6633, %6638
  %7101 = fsub fast float %6634, %6639
  %7102 = fmul fast float %7086, %7099
  %7103 = fmul fast float %7086, %7100
  %7104 = fmul fast float %7086, %7101
  %7105 = fadd fast float %7102, %6637
  %7106 = fadd fast float %7103, %6638
  %7107 = fadd fast float %7104, %6639
  %7108 = fsub fast float 1.000000e+00, %7098
  %7109 = fmul fast float %7108, %7105
  %7110 = fmul fast float %7108, %7106
  %7111 = fmul fast float %7108, %7107
  br label %7171

; <label>:7112                                    ; preds = %7071
  %7113 = fmul fast float %7082, %6644
  %7114 = call float @dx.op.unary.f32(i32 7, float %7113)  ; Saturate(value)
  %7115 = fsub fast float 2.000000e+00, %7114
  %7116 = fmul fast float %7114, 9.921875e-01
  %7117 = fmul fast float %7116, %7115
  %7118 = fadd fast float %7117, 3.906250e-03
  %7119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %65, float %7118, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7120 = extractvalue %dx.types.ResRet.f32 %7119, 0
  %7121 = fsub fast float %7114, %7120
  %7122 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7121)  ; FMax(a,b)
  %7123 = fmul fast float %6630, %6611
  %7124 = call float @dx.op.unary.f32(i32 6, float %7123)  ; FAbs(value)
  %7125 = fcmp fast ogt float %7124, 0x3EB0C6F7A0000000
  br i1 %7125, label %7126, label %7132, !dx.controlflow.hints !186

; <label>:7126                                    ; preds = %7112
  %7127 = fmul fast float %7123, 0xBFF7154760000000
  %7128 = call float @dx.op.unary.f32(i32 21, float %7127)  ; Exp(value)
  %7129 = fsub fast float 1.000000e+00, %7128
  %7130 = fdiv fast float %7129, %7123
  %7131 = fmul fast float %7130, %6640
  br label %7132

; <label>:7132                                    ; preds = %7126, %7112
  %7133 = phi float [ %7131, %7126 ], [ %6640, %7112 ]
  %7134 = fadd fast float %7133, %6642
  %7135 = fmul fast float %7134, %7122
  %7136 = fmul fast float %6627, %7135
  %7137 = fsub fast float -0.000000e+00, %7136
  %7138 = fmul fast float %6628, %7135
  %7139 = fsub fast float -0.000000e+00, %7138
  %7140 = fmul fast float %6629, %7135
  %7141 = fsub fast float -0.000000e+00, %7140
  %7142 = call float @dx.op.unary.f32(i32 21, float %7137)  ; Exp(value)
  %7143 = call float @dx.op.unary.f32(i32 21, float %7139)  ; Exp(value)
  %7144 = call float @dx.op.unary.f32(i32 21, float %7141)  ; Exp(value)
  %7145 = fmul fast float %6656, %6656
  %7146 = fadd fast float %7145, 1.000000e+00
  %7147 = fmul fast float %7146, 0x3FAE8EC8A0000000
  %7148 = fmul fast float %7147, %6637
  %7149 = fmul fast float %7147, %6638
  %7150 = fmul fast float %7147, %6639
  %7151 = fmul fast float %6656, %6635
  %7152 = fsub fast float 1.000000e+00, %7151
  %7153 = fmul fast float %6635, %6635
  %7154 = fsub fast float 1.000000e+00, %7153
  %7155 = fmul fast float %7154, 0x3FB45F3060000000
  %7156 = fmul fast float %7152, %7152
  %7157 = fdiv fast float 1.000000e+00, %7156
  %7158 = fmul fast float %7155, %7157
  %7159 = fmul fast float %7158, %6632
  %7160 = fmul fast float %7158, %6633
  %7161 = fmul fast float %7158, %6634
  %7162 = fadd fast float %7159, %7148
  %7163 = fadd fast float %7160, %7149
  %7164 = fadd fast float %7161, %7150
  %7165 = fsub fast float 1.000000e+00, %7142
  %7166 = fsub fast float 1.000000e+00, %7143
  %7167 = fsub fast float 1.000000e+00, %7144
  %7168 = fmul fast float %7162, %7165
  %7169 = fmul fast float %7163, %7166
  %7170 = fmul fast float %7164, %7167
  br label %7171

; <label>:7171                                    ; preds = %7132, %7083
  %7172 = phi float [ %7109, %7083 ], [ %7168, %7132 ]
  %7173 = phi float [ %7110, %7083 ], [ %7169, %7132 ]
  %7174 = phi float [ %7111, %7083 ], [ %7170, %7132 ]
  %7175 = phi float [ %7098, %7083 ], [ %7142, %7132 ]
  %7176 = phi float [ %7098, %7083 ], [ %7143, %7132 ]
  %7177 = phi float [ %7098, %7083 ], [ %7144, %7132 ]
  br i1 %6664, label %7178, label %7376, !dx.controlflow.hints !187

; <label>:7178                                    ; preds = %7171
  %7179 = extractvalue %dx.types.CBufRet.f32 %7077, 0
  %7180 = fmul fast float %7179, %7079
  %7181 = fsub fast float %7074, %7172
  %7182 = fsub fast float %7075, %7173
  %7183 = fsub fast float %7076, %7174
  %7184 = fmul fast float %7180, %7181
  %7185 = fmul fast float %7180, %7182
  %7186 = fmul fast float %7180, %7183
  %7187 = fadd fast float %7184, %7172
  %7188 = fadd fast float %7185, %7173
  %7189 = fadd fast float %7186, %7174
  %7190 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7175)  ; FMax(a,b)
  %7191 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7176)  ; FMax(a,b)
  %7192 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7177)  ; FMax(a,b)
  %7193 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7073)  ; FMax(a,b)
  %7194 = call float @dx.op.binary.f32(i32 35, float %7072, float %7082)  ; FMax(a,b)
  %7195 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7194)  ; FMax(a,b)
  %7196 = fdiv fast float %7072, %7195
  %7197 = call float @dx.op.unary.f32(i32 7, float %7196)  ; Saturate(value)
  %7198 = fdiv fast float %7082, %7195
  %7199 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7200 = fcmp fast une float %7193, 1.000000e+00
  br i1 %7200, label %7201, label %7214, !dx.controlflow.hints !188

; <label>:7201                                    ; preds = %7178
  %7202 = call float @dx.op.unary.f32(i32 23, float %7193)  ; Log(value)
  %7203 = fmul fast float %7202, 0x3FE62E4300000000
  %7204 = fmul fast float %7074, %7203
  %7205 = fsub fast float -0.000000e+00, %7204
  %7206 = fmul fast float %7075, %7203
  %7207 = fsub fast float -0.000000e+00, %7206
  %7208 = fmul fast float %7076, %7203
  %7209 = fsub fast float -0.000000e+00, %7208
  %7210 = fsub fast float 1.000000e+00, %7193
  %7211 = fdiv fast float %7205, %7210
  %7212 = fdiv fast float %7207, %7210
  %7213 = fdiv fast float %7209, %7210
  br label %7214

; <label>:7214                                    ; preds = %7201, %7178
  %7215 = phi float [ %7211, %7201 ], [ %7074, %7178 ]
  %7216 = phi float [ %7212, %7201 ], [ %7075, %7178 ]
  %7217 = phi float [ %7213, %7201 ], [ %7076, %7178 ]
  %7218 = phi float [ %7203, %7201 ], [ 0.000000e+00, %7178 ]
  %7219 = fcmp fast une float %7190, 1.000000e+00
  br i1 %7219, label %7220, label %7227, !dx.controlflow.hints !189

; <label>:7220                                    ; preds = %7214
  %7221 = call float @dx.op.unary.f32(i32 23, float %7190)  ; Log(value)
  %7222 = fmul fast float %7221, 0x3FE62E4300000000
  %7223 = fmul fast float %7187, %7222
  %7224 = fsub fast float -0.000000e+00, %7223
  %7225 = fsub fast float 1.000000e+00, %7190
  %7226 = fdiv fast float %7224, %7225
  br label %7227

; <label>:7227                                    ; preds = %7220, %7214
  %7228 = phi float [ %7226, %7220 ], [ %7187, %7214 ]
  %7229 = phi float [ %7222, %7220 ], [ 0.000000e+00, %7214 ]
  %7230 = fcmp fast une float %7191, 1.000000e+00
  br i1 %7230, label %7231, label %7238, !dx.controlflow.hints !189

; <label>:7231                                    ; preds = %7227
  %7232 = call float @dx.op.unary.f32(i32 23, float %7191)  ; Log(value)
  %7233 = fmul fast float %7232, 0x3FE62E4300000000
  %7234 = fmul fast float %7188, %7233
  %7235 = fsub fast float -0.000000e+00, %7234
  %7236 = fsub fast float 1.000000e+00, %7191
  %7237 = fdiv fast float %7235, %7236
  br label %7238

; <label>:7238                                    ; preds = %7231, %7227
  %7239 = phi float [ %7237, %7231 ], [ %7188, %7227 ]
  %7240 = phi float [ %7233, %7231 ], [ 0.000000e+00, %7227 ]
  %7241 = fcmp fast une float %7192, 1.000000e+00
  br i1 %7241, label %7242, label %7249, !dx.controlflow.hints !189

; <label>:7242                                    ; preds = %7238
  %7243 = call float @dx.op.unary.f32(i32 23, float %7192)  ; Log(value)
  %7244 = fmul fast float %7243, 0x3FE62E4300000000
  %7245 = fmul fast float %7189, %7244
  %7246 = fsub fast float -0.000000e+00, %7245
  %7247 = fsub fast float 1.000000e+00, %7192
  %7248 = fdiv fast float %7246, %7247
  br label %7249

; <label>:7249                                    ; preds = %7242, %7238
  %7250 = phi float [ %7248, %7242 ], [ %7189, %7238 ]
  %7251 = phi float [ %7244, %7242 ], [ 0.000000e+00, %7238 ]
  %7252 = fmul fast float %7215, %7199
  %7253 = fmul fast float %7216, %7199
  %7254 = fmul fast float %7217, %7199
  %7255 = fmul fast float %7218, %7199
  %7256 = fmul fast float %7228, %7197
  %7257 = fmul fast float %7239, %7197
  %7258 = fmul fast float %7250, %7197
  %7259 = fmul fast float %7229, %7197
  %7260 = fmul fast float %7240, %7197
  %7261 = fmul fast float %7251, %7197
  %7262 = fadd fast float %7256, %7252
  %7263 = fadd fast float %7257, %7253
  %7264 = fadd fast float %7258, %7254
  %7265 = fadd fast float %7259, %7255
  %7266 = fadd fast float %7260, %7255
  %7267 = fadd fast float %7261, %7255
  %7268 = fcmp fast une float %7265, 0.000000e+00
  br i1 %7268, label %7269, label %7276, !dx.controlflow.hints !190

; <label>:7269                                    ; preds = %7249
  %7270 = fmul fast float %7265, 0x3FF7154760000000
  %7271 = call float @dx.op.unary.f32(i32 21, float %7270)  ; Exp(value)
  %7272 = fsub fast float 1.000000e+00, %7271
  %7273 = fmul fast float %7262, %7272
  %7274 = fsub fast float -0.000000e+00, %7273
  %7275 = fdiv fast float %7274, %7265
  br label %7276

; <label>:7276                                    ; preds = %7269, %7249
  %7277 = phi float [ %7271, %7269 ], [ 1.000000e+00, %7249 ]
  %7278 = phi float [ %7275, %7269 ], [ %7262, %7249 ]
  %7279 = fcmp fast une float %7266, 0.000000e+00
  br i1 %7279, label %7280, label %7287, !dx.controlflow.hints !190

; <label>:7280                                    ; preds = %7276
  %7281 = fmul fast float %7266, 0x3FF7154760000000
  %7282 = call float @dx.op.unary.f32(i32 21, float %7281)  ; Exp(value)
  %7283 = fsub fast float 1.000000e+00, %7282
  %7284 = fmul fast float %7263, %7283
  %7285 = fsub fast float -0.000000e+00, %7284
  %7286 = fdiv fast float %7285, %7266
  br label %7287

; <label>:7287                                    ; preds = %7280, %7276
  %7288 = phi float [ %7282, %7280 ], [ 1.000000e+00, %7276 ]
  %7289 = phi float [ %7286, %7280 ], [ %7263, %7276 ]
  %7290 = fcmp fast une float %7267, 0.000000e+00
  br i1 %7290, label %7291, label %7298, !dx.controlflow.hints !190

; <label>:7291                                    ; preds = %7287
  %7292 = fmul fast float %7267, 0x3FF7154760000000
  %7293 = call float @dx.op.unary.f32(i32 21, float %7292)  ; Exp(value)
  %7294 = fsub fast float 1.000000e+00, %7293
  %7295 = fmul fast float %7264, %7294
  %7296 = fsub fast float -0.000000e+00, %7295
  %7297 = fdiv fast float %7296, %7267
  br label %7298

; <label>:7298                                    ; preds = %7291, %7287
  %7299 = phi float [ %7293, %7291 ], [ 1.000000e+00, %7287 ]
  %7300 = phi float [ %7297, %7291 ], [ %7264, %7287 ]
  %7301 = fcmp fast ogt float %7197, %7199
  br i1 %7301, label %7302, label %7322

; <label>:7302                                    ; preds = %7298
  %7303 = fsub fast float 1.000000e+00, %7199
  %7304 = fmul fast float %7215, %7303
  %7305 = fmul fast float %7216, %7303
  %7306 = fmul fast float %7217, %7303
  %7307 = fmul fast float %7218, %7303
  %7308 = fcmp fast une float %7307, 0.000000e+00
  br i1 %7308, label %7309, label %7360, !dx.controlflow.hints !191

; <label>:7309                                    ; preds = %7302
  %7310 = fmul fast float %7307, 0x3FF7154760000000
  %7311 = call float @dx.op.unary.f32(i32 21, float %7310)  ; Exp(value)
  %7312 = fsub fast float 1.000000e+00, %7311
  %7313 = fmul fast float %7304, %7312
  %7314 = fsub fast float -0.000000e+00, %7313
  %7315 = fmul fast float %7305, %7312
  %7316 = fsub fast float -0.000000e+00, %7315
  %7317 = fmul fast float %7306, %7312
  %7318 = fsub fast float -0.000000e+00, %7317
  %7319 = fdiv fast float %7314, %7307
  %7320 = fdiv fast float %7316, %7307
  %7321 = fdiv fast float %7318, %7307
  br label %7360

; <label>:7322                                    ; preds = %7298
  %7323 = fsub fast float 1.000000e+00, %7197
  %7324 = fmul fast float %7228, %7323
  %7325 = fmul fast float %7239, %7323
  %7326 = fmul fast float %7250, %7323
  %7327 = fmul fast float %7229, %7323
  %7328 = fmul fast float %7240, %7323
  %7329 = fmul fast float %7251, %7323
  %7330 = fcmp fast une float %7327, 0.000000e+00
  br i1 %7330, label %7331, label %7338, !dx.controlflow.hints !190

; <label>:7331                                    ; preds = %7322
  %7332 = fmul fast float %7327, 0x3FF7154760000000
  %7333 = call float @dx.op.unary.f32(i32 21, float %7332)  ; Exp(value)
  %7334 = fsub fast float 1.000000e+00, %7333
  %7335 = fmul fast float %7324, %7334
  %7336 = fsub fast float -0.000000e+00, %7335
  %7337 = fdiv fast float %7336, %7327
  br label %7338

; <label>:7338                                    ; preds = %7331, %7322
  %7339 = phi float [ %7337, %7331 ], [ %7324, %7322 ]
  %7340 = phi float [ %7333, %7331 ], [ 1.000000e+00, %7322 ]
  %7341 = fcmp fast une float %7328, 0.000000e+00
  br i1 %7341, label %7342, label %7349, !dx.controlflow.hints !190

; <label>:7342                                    ; preds = %7338
  %7343 = fmul fast float %7328, 0x3FF7154760000000
  %7344 = call float @dx.op.unary.f32(i32 21, float %7343)  ; Exp(value)
  %7345 = fsub fast float 1.000000e+00, %7344
  %7346 = fmul fast float %7325, %7345
  %7347 = fsub fast float -0.000000e+00, %7346
  %7348 = fdiv fast float %7347, %7328
  br label %7349

; <label>:7349                                    ; preds = %7342, %7338
  %7350 = phi float [ %7348, %7342 ], [ %7325, %7338 ]
  %7351 = phi float [ %7344, %7342 ], [ 1.000000e+00, %7338 ]
  %7352 = fcmp fast une float %7329, 0.000000e+00
  br i1 %7352, label %7353, label %7360, !dx.controlflow.hints !190

; <label>:7353                                    ; preds = %7349
  %7354 = fmul fast float %7329, 0x3FF7154760000000
  %7355 = call float @dx.op.unary.f32(i32 21, float %7354)  ; Exp(value)
  %7356 = fsub fast float 1.000000e+00, %7355
  %7357 = fmul fast float %7326, %7356
  %7358 = fsub fast float -0.000000e+00, %7357
  %7359 = fdiv fast float %7358, %7329
  br label %7360

; <label>:7360                                    ; preds = %7353, %7349, %7309, %7302
  %7361 = phi float [ %7359, %7353 ], [ %7321, %7309 ], [ %7306, %7302 ], [ %7326, %7349 ]
  %7362 = phi float [ %7350, %7353 ], [ %7320, %7309 ], [ %7305, %7302 ], [ %7350, %7349 ]
  %7363 = phi float [ %7339, %7353 ], [ %7319, %7309 ], [ %7304, %7302 ], [ %7339, %7349 ]
  %7364 = phi float [ %7355, %7353 ], [ %7311, %7309 ], [ 1.000000e+00, %7302 ], [ 1.000000e+00, %7349 ]
  %7365 = phi float [ %7351, %7353 ], [ %7311, %7309 ], [ 1.000000e+00, %7302 ], [ %7351, %7349 ]
  %7366 = phi float [ %7340, %7353 ], [ %7311, %7309 ], [ 1.000000e+00, %7302 ], [ %7340, %7349 ]
  %7367 = fmul fast float %7366, %7278
  %7368 = fmul fast float %7365, %7289
  %7369 = fmul fast float %7364, %7300
  %7370 = fadd fast float %7367, %7363
  %7371 = fadd fast float %7368, %7362
  %7372 = fadd fast float %7369, %7361
  %7373 = fmul fast float %7366, %7277
  %7374 = fmul fast float %7365, %7288
  %7375 = fmul fast float %7364, %7299
  br label %7376

; <label>:7376                                    ; preds = %7360, %7171
  %7377 = phi float [ %7375, %7360 ], [ %7177, %7171 ]
  %7378 = phi float [ %7374, %7360 ], [ %7176, %7171 ]
  %7379 = phi float [ %7373, %7360 ], [ %7175, %7171 ]
  %7380 = phi float [ %7372, %7360 ], [ %7174, %7171 ]
  %7381 = phi float [ %7371, %7360 ], [ %7173, %7171 ]
  %7382 = phi float [ %7370, %7360 ], [ %7172, %7171 ]
  %7383 = fmul fast float %7382, %6326
  %7384 = fmul fast float %7381, %6326
  %7385 = fmul fast float %7380, %6326
  %7386 = fmul fast float %7379, %6619
  %7387 = call float @dx.op.dot3.f32(i32 55, float %7379, float %7378, float %7377, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7388 = call float @dx.op.dot3.f32(i32 55, float %7383, float %7384, float %7385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7389 = select i1 %239, float %7387, float %7379
  %7390 = select i1 %239, float %7387, float %7378
  %7391 = select i1 %239, float 1.000000e+00, float %7377
  %7392 = select i1 %239, float %7388, float %7383
  %7393 = select i1 %239, float 0.000000e+00, float %7384
  %7394 = select i1 %239, float 0.000000e+00, float %7385
  %7395 = fmul fast float %7389, %6613
  %7396 = fmul fast float %7390, %6614
  %7397 = fmul fast float %7391, %6615
  %7398 = fadd fast float %7395, %7392
  %7399 = fadd fast float %7396, %7393
  %7400 = fadd fast float %7394, %7397
  %7401 = fmul fast float %7389, %6616
  %7402 = fmul fast float %7390, %6617
  %7403 = fmul fast float %7391, %6618
  %7404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7405 = extractvalue %dx.types.CBufRet.i32 %7404, 0
  %7406 = icmp eq i32 %7405, 0
  br i1 %7406, label %7774, label %7407, !dx.controlflow.hints !192

; <label>:7407                                    ; preds = %7376
  %7408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.f32 %7408, 2
  %7410 = extractvalue %dx.types.CBufRet.f32 %7408, 3
  %7411 = fmul fast float %7409, %101
  %7412 = fmul fast float %7410, %102
  %7413 = fmul fast float %7411, 2.000000e+00
  %7414 = fmul fast float %7412, 2.000000e+00
  %7415 = fsub fast float 1.000000e+00, %7413
  %7416 = fsub fast float 1.000000e+00, %7414
  %7417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7418 = extractvalue %dx.types.CBufRet.f32 %7417, 0
  %7419 = extractvalue %dx.types.CBufRet.f32 %7417, 1
  %7420 = extractvalue %dx.types.CBufRet.f32 %7417, 2
  %7421 = fmul fast float %7415, %7418
  %7422 = fmul fast float %7415, %7419
  %7423 = fmul fast float %7415, %7420
  %7424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7425 = extractvalue %dx.types.CBufRet.f32 %7424, 0
  %7426 = extractvalue %dx.types.CBufRet.f32 %7424, 1
  %7427 = extractvalue %dx.types.CBufRet.f32 %7424, 2
  %7428 = fmul fast float %7416, %7425
  %7429 = fmul fast float %7416, %7426
  %7430 = fmul fast float %7416, %7427
  %7431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7432 = extractvalue %dx.types.CBufRet.f32 %7431, 0
  %7433 = extractvalue %dx.types.CBufRet.f32 %7431, 1
  %7434 = extractvalue %dx.types.CBufRet.f32 %7431, 2
  %7435 = fadd fast float %7428, %7432
  %7436 = fadd fast float %7435, %7421
  %7437 = fadd fast float %7429, %7433
  %7438 = fadd fast float %7437, %7422
  %7439 = fadd fast float %7430, %7434
  %7440 = fadd fast float %7439, %7423
  %7441 = fmul fast float %7436, %6612
  %7442 = fmul fast float %7438, %6612
  %7443 = fmul fast float %7440, %6612
  %7444 = fmul fast float %7441, %7441
  %7445 = fmul fast float %7442, %7442
  %7446 = fadd fast float %7444, %7445
  %7447 = fmul fast float %7443, %7443
  %7448 = fadd fast float %7446, %7447
  %7449 = call float @dx.op.unary.f32(i32 24, float %7448)  ; Sqrt(value)
  %7450 = extractvalue %dx.types.CBufRet.f32 %6337, 0
  %7451 = fsub fast float %7449, %7450
  %7452 = extractvalue %dx.types.CBufRet.f32 %6337, 2
  %7453 = fmul fast float %7451, %7452
  %7454 = call float @dx.op.unary.f32(i32 7, float %7453)  ; Saturate(value)
  %7455 = fadd fast float %7454, -5.000000e-01
  %7456 = fmul fast float %7455, 2.000000e+00
  %7457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7458 = extractvalue %dx.types.CBufRet.f32 %7457, 2
  %7459 = call float @dx.op.binary.f32(i32 36, float %7458, float %7456)  ; FMin(a,b)
  %7460 = fsub fast float -0.000000e+00, %7458
  %7461 = fcmp fast ogt float %7459, %7460
  br i1 %7461, label %7462, label %7774, !dx.controlflow.hints !193

; <label>:7462                                    ; preds = %7407
  %7463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7464 = extractvalue %dx.types.CBufRet.f32 %7463, 3
  %7465 = fcmp fast ogt float %7464, 0.000000e+00
  br i1 %7465, label %7466, label %7541, !dx.controlflow.hints !194

; <label>:7466                                    ; preds = %7462
  %7467 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %7468 = extractvalue %dx.types.Dimensions %7467, 0
  %7469 = sitofp i32 %7468 to float
  %7470 = extractvalue %dx.types.Dimensions %7467, 1
  %7471 = sitofp i32 %7470 to float
  %7472 = fmul fast float %7411, %7469
  %7473 = fmul fast float %7412, %7471
  %7474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.f32 %7474, 1
  %7476 = fsub fast float -0.000000e+00, %7475
  %7477 = fptoui float %7476 to i32
  %7478 = fptoui float %7472 to i32
  %7479 = fptoui float %7473 to i32
  %7480 = and i32 %7477, 31
  %7481 = lshr i32 %7478, %7480
  %7482 = lshr i32 %7479, %7480
  %7483 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %7477, i32 %7481, i32 %7482, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7484 = extractvalue %dx.types.ResRet.f32 %7483, 0
  %7485 = fcmp fast olt float %7484, -1.000000e+00
  %7486 = fcmp fast ogt float %7484, -1.000000e+00
  %7487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7488 = extractvalue %dx.types.CBufRet.f32 %7487, 1
  %7489 = select i1 %7486, float %7488, float 1.000000e+00
  %7490 = fadd fast float %7484, 1.000000e+00
  %7491 = fmul fast float %7489, %7490
  %7492 = call float @dx.op.unary.f32(i32 6, float %7491)  ; FAbs(value)
  %7493 = extractvalue %dx.types.CBufRet.f32 %7487, 3
  %7494 = fcmp fast oge float %7492, %7493
  %7495 = select i1 %7494, float 0x4197782600000000, float %7492
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.CBufRet.f32 %7496, 1
  %7499 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7500 = select i1 %7485, float %7497, float %7418
  %7501 = select i1 %7485, float %7498, float %7419
  %7502 = select i1 %7485, float %7499, float %7420
  %7503 = fmul fast float %7500, %7415
  %7504 = fmul fast float %7501, %7415
  %7505 = fmul fast float %7502, %7415
  %7506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7507 = extractvalue %dx.types.CBufRet.f32 %7506, 0
  %7508 = extractvalue %dx.types.CBufRet.f32 %7506, 1
  %7509 = extractvalue %dx.types.CBufRet.f32 %7506, 2
  %7510 = select i1 %7485, float %7507, float %7425
  %7511 = select i1 %7485, float %7508, float %7426
  %7512 = select i1 %7485, float %7509, float %7427
  %7513 = fmul fast float %7510, %7416
  %7514 = fmul fast float %7511, %7416
  %7515 = fmul fast float %7512, %7416
  %7516 = fadd fast float %7513, %7503
  %7517 = fadd fast float %7514, %7504
  %7518 = fadd fast float %7515, %7505
  %7519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7520 = extractvalue %dx.types.CBufRet.f32 %7519, 0
  %7521 = extractvalue %dx.types.CBufRet.f32 %7519, 1
  %7522 = extractvalue %dx.types.CBufRet.f32 %7519, 2
  %7523 = select i1 %7485, float %7520, float %7432
  %7524 = select i1 %7485, float %7521, float %7433
  %7525 = select i1 %7485, float %7522, float %7434
  %7526 = fadd fast float %7516, %7523
  %7527 = fadd fast float %7517, %7524
  %7528 = fadd fast float %7518, %7525
  %7529 = fmul fast float %7526, %7495
  %7530 = fmul fast float %7527, %7495
  %7531 = fmul fast float %7528, %7495
  %7532 = fmul fast float %7529, %7529
  %7533 = fmul fast float %7530, %7530
  %7534 = fadd fast float %7532, %7533
  %7535 = fmul fast float %7531, %7531
  %7536 = fadd fast float %7534, %7535
  %7537 = call float @dx.op.unary.f32(i32 24, float %7536)  ; Sqrt(value)
  %7538 = fsub fast float %7537, %7450
  %7539 = fmul fast float %7538, %7452
  %7540 = call float @dx.op.unary.f32(i32 7, float %7539)  ; Saturate(value)
  br label %7541

; <label>:7541                                    ; preds = %7466, %7462
  %7542 = phi float [ %7540, %7466 ], [ 1.000000e+00, %7462 ]
  %7543 = fmul fast float %7459, 5.000000e-01
  %7544 = fadd fast float %7543, 5.000000e-01
  %7545 = call float @dx.op.unary.f32(i32 22, float %7544)  ; Frc(value)
  %7546 = call float @dx.op.unary.f32(i32 27, float %7545)  ; Round_ni(value)
  %7547 = call float @dx.op.unary.f32(i32 22, float %7545)  ; Frc(value)
  %7548 = fmul fast float %7547, 2.000000e+00
  %7549 = fadd fast float %7548, -1.000000e+00
  %7550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %65, float %7411, float %7412, float %7546, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7551 = extractvalue %dx.types.ResRet.f32 %7550, 0
  %7552 = extractvalue %dx.types.ResRet.f32 %7550, 1
  %7553 = extractvalue %dx.types.ResRet.f32 %7550, 2
  %7554 = extractvalue %dx.types.ResRet.f32 %7550, 3
  %7555 = fadd fast float %7551, -5.000000e-01
  %7556 = fadd fast float %7553, -5.000000e-01
  %7557 = fmul fast float %7555, 0xBFD5555560000000
  %7558 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7556, float %7557)  ; FMad(a,b,c)
  %7559 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7552, float 0.000000e+00)  ; FMad(a,b,c)
  %7560 = fadd fast float %7559, %7554
  %7561 = fmul fast float %7555, -7.500000e-01
  %7562 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7556, float %7561)  ; FMad(a,b,c)
  %7563 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7552, float 0.000000e+00)  ; FMad(a,b,c)
  %7564 = fadd fast float %7563, %7554
  %7565 = call float @dx.op.binary.f32(i32 35, float %7558, float -1.000000e+00)  ; FMax(a,b)
  %7566 = call float @dx.op.binary.f32(i32 35, float %7560, float -1.000000e+00)  ; FMax(a,b)
  %7567 = call float @dx.op.binary.f32(i32 35, float %7562, float -1.000000e+00)  ; FMax(a,b)
  %7568 = call float @dx.op.binary.f32(i32 35, float %7564, float -1.000000e+00)  ; FMax(a,b)
  %7569 = call float @dx.op.binary.f32(i32 36, float %7565, float 1.000000e+00)  ; FMin(a,b)
  %7570 = call float @dx.op.binary.f32(i32 36, float %7566, float 1.000000e+00)  ; FMin(a,b)
  %7571 = call float @dx.op.binary.f32(i32 36, float %7567, float 1.000000e+00)  ; FMin(a,b)
  %7572 = call float @dx.op.binary.f32(i32 36, float %7568, float 1.000000e+00)  ; FMin(a,b)
  %7573 = fcmp fast olt float %7569, 0x3FEFFF8020000000
  br i1 %7573, label %7574, label %7689, !dx.controlflow.hints !195

; <label>:7574                                    ; preds = %7541
  %7575 = extractvalue %dx.types.CBufRet.f32 %7457, 3
  %7576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7577 = extractvalue %dx.types.CBufRet.f32 %7576, 0
  %7578 = extractvalue %dx.types.CBufRet.f32 %7576, 1
  %7579 = extractvalue %dx.types.CBufRet.f32 %7576, 2
  %7580 = extractvalue %dx.types.CBufRet.f32 %7576, 3
  %7581 = fsub fast float %7577, %7569
  %7582 = fsub fast float %7578, %7570
  %7583 = fsub fast float %7579, %7571
  %7584 = fsub fast float %7580, %7572
  %7585 = fmul fast float %7581, %7575
  %7586 = fmul fast float %7582, %7575
  %7587 = fmul fast float %7583, %7575
  %7588 = fmul fast float %7584, %7575
  %7589 = fadd fast float %7585, %7569
  %7590 = fadd fast float %7586, %7570
  %7591 = fsub fast float -0.000000e+00, %7590
  %7592 = fadd fast float %7587, %7571
  %7593 = fadd fast float %7588, %7572
  %7594 = fmul fast float %7589, %7589
  %7595 = fsub fast float %7590, %7594
  %7596 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7595)  ; FMax(a,b)
  %7597 = fdiv fast float 1.000000e+00, %7596
  %7598 = fmul fast float %7590, %7589
  %7599 = fsub fast float %7592, %7598
  %7600 = fsub fast float %7549, %7589
  %7601 = fmul fast float %7549, %7549
  %7602 = fsub fast float %7601, %7590
  %7603 = fmul fast float %7600, %7597
  %7604 = fmul fast float %7603, %7599
  %7605 = fsub fast float %7602, %7604
  %7606 = fmul fast float %7590, %7590
  %7607 = fsub fast float %7593, %7606
  %7608 = fmul fast float %7599, %7599
  %7609 = fmul fast float %7608, %7597
  %7610 = fsub fast float %7607, %7609
  %7611 = fdiv fast float %7605, %7610
  %7612 = fmul fast float %7599, %7611
  %7613 = fsub fast float %7600, %7612
  %7614 = fmul fast float %7613, %7597
  %7615 = fmul fast float %7614, %7589
  %7616 = fsub fast float 1.000000e+00, %7615
  %7617 = fmul fast float %7590, %7611
  %7618 = fsub fast float %7616, %7617
  %7619 = fmul fast float %7614, %7614
  %7620 = fmul fast float %7611, 4.000000e+00
  %7621 = fmul fast float %7620, %7618
  %7622 = fsub fast float %7619, %7621
  %7623 = call float @dx.op.unary.f32(i32 24, float %7622)  ; Sqrt(value)
  %7624 = fcmp fast oge float %7614, 0.000000e+00
  %7625 = fsub fast float -0.000000e+00, %7623
  %7626 = select i1 %7624, float %7625, float %7623
  %7627 = fsub fast float %7626, %7614
  %7628 = fdiv fast float %7627, %7611
  %7629 = fdiv fast float %7618, %7627
  %7630 = fmul fast float %7628, 5.000000e-01
  %7631 = fmul fast float %7629, 2.000000e+00
  %7632 = select i1 %7624, float %7630, float %7631
  %7633 = select i1 %7624, float %7631, float %7630
  %7634 = call float @dx.op.binary.f32(i32 35, float %7632, float %7633)  ; FMax(a,b)
  %7635 = call float @dx.op.binary.f32(i32 36, float %7632, float %7633)  ; FMin(a,b)
  %7636 = fcmp fast ogt float %7549, %7635
  br i1 %7636, label %7637, label %7647

; <label>:7637                                    ; preds = %7574
  %7638 = fsub fast float %7549, %7635
  %7639 = fsub fast float %7634, %7635
  %7640 = fmul fast float %7638, %7639
  %7641 = fmul fast float %7634, %7549
  %7642 = fadd fast float %7634, %7549
  %7643 = fmul fast float %7642, %7589
  %7644 = fadd fast float %7641, %7590
  %7645 = fsub fast float %7644, %7643
  %7646 = fdiv fast float %7645, %7640
  br label %7647

; <label>:7647                                    ; preds = %7637, %7574
  %7648 = phi float [ %7646, %7637 ], [ 0.000000e+00, %7574 ]
  %7649 = fcmp fast ogt float %7549, %7634
  %7650 = fsub fast float %7549, %7634
  br i1 %7649, label %7651, label %7661

; <label>:7651                                    ; preds = %7647
  %7652 = fsub fast float %7634, %7635
  %7653 = fmul fast float %7652, %7650
  %7654 = fmul fast float %7635, %7549
  %7655 = fadd fast float %7635, %7549
  %7656 = fmul fast float %7655, %7589
  %7657 = fsub fast float %7591, %7654
  %7658 = fadd fast float %7657, %7656
  %7659 = fdiv fast float %7658, %7653
  %7660 = fadd fast float %7659, %7648
  br label %7661

; <label>:7661                                    ; preds = %7651, %7647
  %7662 = phi float [ %7660, %7651 ], [ %7648, %7647 ]
  %7663 = fsub fast float %7549, %7635
  %7664 = fmul fast float %7663, %7650
  %7665 = fmul fast float %7635, %7634
  %7666 = fadd fast float %7635, %7634
  %7667 = fmul fast float %7666, %7589
  %7668 = fadd fast float %7665, %7590
  %7669 = fsub fast float %7668, %7667
  %7670 = fdiv fast float %7669, %7664
  %7671 = call float @dx.op.unary.f32(i32 7, float %7662)  ; Saturate(value)
  %7672 = fcmp fast oeq float %6338, 0.000000e+00
  %7673 = extractvalue %dx.types.CBufRet.f32 %7457, 0
  %7674 = fcmp fast oeq float %7673, 0.000000e+00
  %7675 = or i1 %7672, %7674
  %7676 = fmul fast float %7673, 2.000000e+00
  %7677 = fadd fast float %7458, %7459
  %7678 = fdiv fast float %7677, %7676
  %7679 = call float @dx.op.unary.f32(i32 7, float %7678)  ; Saturate(value)
  %7680 = fmul fast float %7679, 2.000000e+00
  %7681 = fsub fast float 3.000000e+00, %7680
  %7682 = fmul fast float %7679, %7679
  %7683 = fmul fast float %7682, %7681
  %7684 = select i1 %7675, float 1.000000e+00, float %7683
  %7685 = fmul fast float %7670, %6338
  %7686 = fadd fast float %7671, %7685
  %7687 = call float @dx.op.unary.f32(i32 7, float %7686)  ; Saturate(value)
  %7688 = fmul fast float %7684, %7687
  br label %7689

; <label>:7689                                    ; preds = %7661, %7541
  %7690 = phi float [ %7688, %7661 ], [ 0.000000e+00, %7541 ]
  %7691 = fsub fast float 1.000000e+00, %7690
  %7692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %65, float %7411, float %7412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7693 = extractvalue %dx.types.ResRet.f32 %7692, 0
  %7694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7695 = extractvalue %dx.types.CBufRet.i32 %7694, 2
  %7696 = icmp eq i32 %7695, 0
  br i1 %7696, label %7702, label %7697

; <label>:7697                                    ; preds = %7689
  %7698 = call float @dx.op.unary.f32(i32 7, float %7690)  ; Saturate(value)
  %7699 = fadd fast float %7693, -1.000000e+00
  %7700 = fmul fast float %7698, %7699
  %7701 = fadd fast float %7700, 1.000000e+00
  br label %7702

; <label>:7702                                    ; preds = %7697, %7689
  %7703 = phi float [ %7701, %7697 ], [ %7691, %7689 ]
  br i1 %7465, label %7704, label %7722

; <label>:7704                                    ; preds = %7702
  %7705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7706 = extractvalue %dx.types.CBufRet.f32 %7705, 1
  %7707 = fsub fast float %7542, %7706
  %7708 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  %7709 = fsub fast float %7542, %7464
  %7710 = call float @dx.op.unary.f32(i32 7, float %7709)  ; Saturate(value)
  %7711 = fsub fast float %7708, %7710
  %7712 = fsub fast float %7544, %7710
  %7713 = fdiv fast float %7712, %7711
  %7714 = call float @dx.op.unary.f32(i32 7, float %7713)  ; Saturate(value)
  %7715 = fmul fast float %7714, 2.000000e+00
  %7716 = fsub fast float 3.000000e+00, %7715
  %7717 = fsub fast float %7693, %7703
  %7718 = fmul fast float %7714, %7714
  %7719 = fmul fast float %7718, %7717
  %7720 = fmul fast float %7719, %7716
  %7721 = fadd fast float %7720, %7703
  br label %7722

; <label>:7722                                    ; preds = %7704, %7702
  %7723 = phi float [ %7721, %7704 ], [ %7703, %7702 ]
  %7724 = call float @dx.op.binary.f32(i32 35, float %7693, float %7723)  ; FMax(a,b)
  %7725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.i32 %7725, 2
  %7727 = and i32 %7726, 1
  %7728 = icmp eq i32 %7727, 0
  %7729 = fcmp fast une float %7724, 1.000000e+00
  %7730 = and i1 %7729, %7728
  br i1 %7730, label %7731, label %7750

; <label>:7731                                    ; preds = %7722
  %7732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %65, float %7411, float %7412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7733 = extractvalue %dx.types.ResRet.f32 %7732, 0
  %7734 = extractvalue %dx.types.ResRet.f32 %7732, 1
  %7735 = extractvalue %dx.types.ResRet.f32 %7732, 2
  %7736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7737 = extractvalue %dx.types.CBufRet.f32 %7736, 1
  %7738 = fmul fast float %7737, %7733
  %7739 = fmul fast float %7737, %7734
  %7740 = fmul fast float %7737, %7735
  %7741 = fcmp fast ogt float %7693, 0x3FEFFF2E40000000
  %7742 = fsub fast float 1.000000e+00, %7724
  %7743 = fsub fast float 1.000000e+00, %7693
  %7744 = fdiv fast float %7742, %7743
  %7745 = call float @dx.op.unary.f32(i32 7, float %7744)  ; Saturate(value)
  %7746 = select i1 %7741, float 0.000000e+00, float %7745
  %7747 = fmul fast float %7738, %7746
  %7748 = fmul fast float %7739, %7746
  %7749 = fmul fast float %7740, %7746
  br label %7750

; <label>:7750                                    ; preds = %7731, %7722
  %7751 = phi float [ 0.000000e+00, %7722 ], [ %7747, %7731 ]
  %7752 = phi float [ 0.000000e+00, %7722 ], [ %7748, %7731 ]
  %7753 = phi float [ 0.000000e+00, %7722 ], [ %7749, %7731 ]
  %7754 = fmul fast float %7751, %6326
  %7755 = fmul fast float %7752, %6326
  %7756 = fmul fast float %7753, %6326
  %7757 = fmul fast float %7724, %7386
  %7758 = call float @dx.op.dot3.f32(i32 55, float %7724, float %7724, float %7724, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7759 = call float @dx.op.dot3.f32(i32 55, float %7754, float %7755, float %7756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7760 = select i1 %239, float %7758, float %7724
  %7761 = select i1 %239, float 1.000000e+00, float %7724
  %7762 = select i1 %239, float %7759, float %7754
  %7763 = select i1 %239, float 0.000000e+00, float %7755
  %7764 = select i1 %239, float 0.000000e+00, float %7756
  %7765 = fmul fast float %7760, %7398
  %7766 = fmul fast float %7760, %7399
  %7767 = fmul fast float %7761, %7400
  %7768 = fadd fast float %7765, %7762
  %7769 = fadd fast float %7766, %7763
  %7770 = fadd fast float %7764, %7767
  %7771 = fmul fast float %7760, %7401
  %7772 = fmul fast float %7760, %7402
  %7773 = fmul fast float %7761, %7403
  br label %7774

; <label>:7774                                    ; preds = %7750, %7407, %7376, %6608
  %7775 = phi float [ %6613, %6608 ], [ %7398, %7376 ], [ %7768, %7750 ], [ %7398, %7407 ]
  %7776 = phi float [ %6614, %6608 ], [ %7399, %7376 ], [ %7769, %7750 ], [ %7399, %7407 ]
  %7777 = phi float [ %6615, %6608 ], [ %7400, %7376 ], [ %7770, %7750 ], [ %7400, %7407 ]
  %7778 = phi float [ %6616, %6608 ], [ %7401, %7376 ], [ %7771, %7750 ], [ %7401, %7407 ]
  %7779 = phi float [ %6617, %6608 ], [ %7402, %7376 ], [ %7772, %7750 ], [ %7402, %7407 ]
  %7780 = phi float [ %6618, %6608 ], [ %7403, %7376 ], [ %7773, %7750 ], [ %7403, %7407 ]
  %7781 = phi float [ %6619, %6608 ], [ %7386, %7376 ], [ %7757, %7750 ], [ %7386, %7407 ]
  %7782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7783 = extractvalue %dx.types.CBufRet.f32 %7782, 2
  %7784 = extractvalue %dx.types.CBufRet.f32 %7782, 3
  %7785 = fmul fast float %7783, %101
  %7786 = fmul fast float %7784, %102
  %7787 = call float @dx.op.unary.f32(i32 7, float %7785)  ; Saturate(value)
  %7788 = call float @dx.op.unary.f32(i32 7, float %7786)  ; Saturate(value)
  %7789 = select i1 %6348, i32 2, i32 0
  %7790 = or i32 %7789, 1
  %7791 = uitofp i32 %7790 to float
  %7792 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %65, float %7787, float %7788, float %7791, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7793 = extractvalue %dx.types.ResRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.ResRet.f32 %7792, 1
  %7795 = extractvalue %dx.types.ResRet.f32 %7792, 2
  %7796 = extractvalue %dx.types.ResRet.f32 %7792, 3
  %7797 = add nuw nsw i32 %7789, 2
  %7798 = uitofp i32 %7797 to float
  %7799 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %65, float %7787, float %7788, float %7798, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7800 = extractvalue %dx.types.ResRet.f32 %7799, 0
  %7801 = extractvalue %dx.types.ResRet.f32 %7799, 1
  %7802 = extractvalue %dx.types.ResRet.f32 %7799, 2
  %7803 = extractvalue %dx.types.ResRet.f32 %7799, 3
  %7804 = call float @dx.op.binary.f32(i32 35, float %7794, float %7795)  ; FMax(a,b)
  %7805 = call float @dx.op.binary.f32(i32 35, float %7793, float %7804)  ; FMax(a,b)
  %7806 = call float @dx.op.binary.f32(i32 35, float %7805, float %7796)  ; FMax(a,b)
  %7807 = call float @dx.op.binary.f32(i32 36, float %7801, float %7802)  ; FMin(a,b)
  %7808 = call float @dx.op.binary.f32(i32 36, float %7800, float %7807)  ; FMin(a,b)
  %7809 = call float @dx.op.binary.f32(i32 36, float %7808, float %7803)  ; FMin(a,b)
  %7810 = fmul fast float %7806, 2.550000e+02
  %7811 = fadd fast float %7810, 0x3F70101020000000
  %7812 = fptoui float %7811 to i32
  %7813 = fmul fast float %7809, 2.550000e+02
  %7814 = fadd fast float %7813, 0x3F70101020000000
  %7815 = fptoui float %7814 to i32
  %7816 = icmp ult i32 %7812, %7815
  br i1 %7816, label %7817, label %7986

; <label>:7817                                    ; preds = %7774
  %7818 = fcmp fast ogt float %88, 9.843750e-01
  %7819 = fadd fast float %6612, -4.000000e+00
  %7820 = select i1 %7818, float -4.000000e+00, float %7819
  %7821 = call float @dx.op.binary.f32(i32 35, float %7820, float 0.000000e+00)  ; FMax(a,b)
  %7822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7823 = extractvalue %dx.types.CBufRet.f32 %7822, 0
  %7824 = fadd fast float %7823, %7821
  %7825 = extractvalue %dx.types.CBufRet.f32 %7822, 2
  %7826 = fmul fast float %7824, %7825
  %7827 = call float @dx.op.unary.f32(i32 23, float %7826)  ; Log(value)
  %7828 = extractvalue %dx.types.CBufRet.f32 %7822, 3
  %7829 = fmul fast float %7828, %7827
  %7830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7831 = extractvalue %dx.types.CBufRet.f32 %7830, 2
  %7832 = fmul fast float %7829, %7831
  %7833 = call float @dx.op.unary.f32(i32 7, float %7832)  ; Saturate(value)
  %7834 = uitofp i32 %7812 to float
  %7835 = uitofp i32 %7815 to float
  %7836 = fadd fast float %7834, 5.000000e-01
  %7837 = fadd fast float %7835, 5.000000e-01
  %7838 = fmul fast float %7831, %7836
  %7839 = fmul fast float %7831, %7837
  %7840 = fadd fast float %7838, 0x3F0FFB4800000000
  %7841 = fadd fast float %7839, 0xBF0FFB4800000000
  %7842 = call float @dx.op.binary.f32(i32 35, float %7833, float %7840)  ; FMax(a,b)
  %7843 = call float @dx.op.binary.f32(i32 36, float %7842, float %7841)  ; FMin(a,b)
  %7844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.f32 %7844, 1
  %7846 = extractvalue %dx.types.CBufRet.f32 %7844, 2
  %7847 = extractvalue %dx.types.CBufRet.f32 %7844, 0
  %7848 = select i1 %6348, float %7847, float 0.000000e+00
  %7849 = fmul fast float %7845, %7843
  %7850 = fadd fast float %7848, %7849
  %7851 = fadd fast float %7848, %7846
  %7852 = fsub fast float %7845, %7846
  %7853 = fadd fast float %7852, %7848
  %7854 = call float @dx.op.binary.f32(i32 35, float %7850, float %7851)  ; FMax(a,b)
  %7855 = call float @dx.op.binary.f32(i32 36, float %7854, float %7853)  ; FMin(a,b)
  %7856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %63, float %7787, float %7788, float %7855, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7857 = extractvalue %dx.types.ResRet.f32 %7856, 0
  %7858 = extractvalue %dx.types.ResRet.f32 %7856, 1
  %7859 = extractvalue %dx.types.ResRet.f32 %7856, 2
  %7860 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7861 = extractvalue %dx.types.CBufRet.i32 %7860, 0
  %7862 = extractvalue %dx.types.CBufRet.i32 %7860, 1
  %7863 = uitofp i32 %7861 to float
  %7864 = uitofp i32 %7862 to float
  %7865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7866 = extractvalue %dx.types.CBufRet.f32 %7865, 0
  %7867 = extractvalue %dx.types.CBufRet.f32 %7865, 1
  %7868 = fmul fast float %7863, %7787
  %7869 = fmul fast float %7864, %7788
  %7870 = fadd fast float %7868, -5.000000e-01
  %7871 = fadd fast float %7869, -5.000000e-01
  %7872 = call float @dx.op.unary.f32(i32 22, float %7870)  ; Frc(value)
  %7873 = call float @dx.op.unary.f32(i32 22, float %7871)  ; Frc(value)
  %7874 = fmul fast float %7872, %7872
  %7875 = fmul fast float %7874, %7872
  %7876 = fsub fast float 3.000000e+00, %7872
  %7877 = fmul fast float %7874, %7876
  %7878 = fmul fast float %7872, 3.000000e+00
  %7879 = fmul fast float %7875, 3.000000e+00
  %7880 = fmul fast float %7874, 6.000000e+00
  %7881 = fsub fast float %7879, %7880
  %7882 = fadd fast float %7881, 4.000000e+00
  %7883 = fmul fast float %7882, 0x3FC5555560000000
  %7884 = fmul fast float %7875, -3.000000e+00
  %7885 = fadd fast float %7874, %7872
  %7886 = fmul fast float %7885, 3.000000e+00
  %7887 = fadd fast float %7884, 1.000000e+00
  %7888 = fadd fast float %7887, %7886
  %7889 = fmul fast float %7875, 0x3FC5555560000000
  %7890 = fmul fast float %7873, %7873
  %7891 = fmul fast float %7890, %7873
  %7892 = fsub fast float 3.000000e+00, %7873
  %7893 = fmul fast float %7890, %7892
  %7894 = fmul fast float %7873, 3.000000e+00
  %7895 = fmul fast float %7891, 3.000000e+00
  %7896 = fmul fast float %7890, 6.000000e+00
  %7897 = fsub fast float %7895, %7896
  %7898 = fadd fast float %7897, 4.000000e+00
  %7899 = fmul fast float %7898, 0x3FC5555560000000
  %7900 = fmul fast float %7891, -3.000000e+00
  %7901 = fadd fast float %7890, %7873
  %7902 = fmul fast float %7901, 3.000000e+00
  %7903 = fadd fast float %7900, 1.000000e+00
  %7904 = fadd fast float %7903, %7902
  %7905 = fmul fast float %7891, 0x3FC5555560000000
  %7906 = fadd fast float %7872, 1.000000e+00
  %7907 = fsub fast float 1.000000e+00, %7878
  %7908 = fadd fast float %7907, %7877
  %7909 = fadd fast float %7908, %7882
  %7910 = fmul fast float %7909, 0x3FC5555560000000
  %7911 = fdiv fast float %7883, %7910
  %7912 = fsub fast float %7906, %7911
  %7913 = fsub fast float 1.000000e+00, %7872
  %7914 = fadd fast float %7888, %7875
  %7915 = fmul fast float %7914, 0x3FC5555560000000
  %7916 = fdiv fast float %7889, %7915
  %7917 = fadd fast float %7913, %7916
  %7918 = fadd fast float %7873, 1.000000e+00
  %7919 = fsub fast float 1.000000e+00, %7894
  %7920 = fadd fast float %7919, %7893
  %7921 = fadd fast float %7920, %7898
  %7922 = fmul fast float %7921, 0x3FC5555560000000
  %7923 = fdiv fast float %7899, %7922
  %7924 = fsub fast float %7918, %7923
  %7925 = fsub fast float 1.000000e+00, %7873
  %7926 = fadd fast float %7904, %7891
  %7927 = fmul fast float %7926, 0x3FC5555560000000
  %7928 = fdiv fast float %7905, %7927
  %7929 = fadd fast float %7928, %7925
  %7930 = fmul fast float %7912, %7866
  %7931 = fsub fast float %7787, %7930
  %7932 = fmul fast float %7917, %7866
  %7933 = fadd fast float %7932, %7787
  %7934 = fmul fast float %7929, %7867
  %7935 = fadd fast float %7934, %7788
  %7936 = fmul fast float %7924, %7867
  %7937 = fsub fast float %7788, %7936
  %7938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %7931, float %7937, float %7855, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7939 = extractvalue %dx.types.ResRet.f32 %7938, 0
  %7940 = extractvalue %dx.types.ResRet.f32 %7938, 1
  %7941 = extractvalue %dx.types.ResRet.f32 %7938, 2
  %7942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %7933, float %7937, float %7855, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7943 = extractvalue %dx.types.ResRet.f32 %7942, 0
  %7944 = extractvalue %dx.types.ResRet.f32 %7942, 1
  %7945 = extractvalue %dx.types.ResRet.f32 %7942, 2
  %7946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %7931, float %7935, float %7855, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7947 = extractvalue %dx.types.ResRet.f32 %7946, 0
  %7948 = extractvalue %dx.types.ResRet.f32 %7946, 1
  %7949 = extractvalue %dx.types.ResRet.f32 %7946, 2
  %7950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %63, float %7933, float %7935, float %7855, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7951 = extractvalue %dx.types.ResRet.f32 %7950, 0
  %7952 = extractvalue %dx.types.ResRet.f32 %7950, 1
  %7953 = extractvalue %dx.types.ResRet.f32 %7950, 2
  %7954 = fsub fast float %7947, %7939
  %7955 = fsub fast float %7948, %7940
  %7956 = fsub fast float %7949, %7941
  %7957 = fmul fast float %7954, %7927
  %7958 = fmul fast float %7955, %7927
  %7959 = fmul fast float %7956, %7927
  %7960 = fadd fast float %7957, %7939
  %7961 = fadd fast float %7958, %7940
  %7962 = fadd fast float %7959, %7941
  %7963 = fsub fast float %7951, %7943
  %7964 = fsub fast float %7952, %7944
  %7965 = fsub fast float %7953, %7945
  %7966 = fmul fast float %7963, %7927
  %7967 = fmul fast float %7964, %7927
  %7968 = fmul fast float %7965, %7927
  %7969 = fsub fast float %7943, %7960
  %7970 = fadd fast float %7969, %7966
  %7971 = fsub fast float %7944, %7961
  %7972 = fadd fast float %7971, %7967
  %7973 = fsub fast float %7945, %7962
  %7974 = fadd fast float %7973, %7968
  %7975 = fmul fast float %7970, %7915
  %7976 = fmul fast float %7972, %7915
  %7977 = fmul fast float %7974, %7915
  %7978 = fadd fast float %7975, %7960
  %7979 = fadd fast float %7976, %7961
  %7980 = fadd fast float %7977, %7962
  %7981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7982 = extractvalue %dx.types.CBufRet.f32 %7981, 1
  %7983 = fmul fast float %7978, %7982
  %7984 = fmul fast float %7979, %7982
  %7985 = fmul fast float %7980, %7982
  br label %7986

; <label>:7986                                    ; preds = %7817, %7774
  %7987 = phi float [ %7857, %7817 ], [ 1.000000e+00, %7774 ]
  %7988 = phi float [ %7858, %7817 ], [ 1.000000e+00, %7774 ]
  %7989 = phi float [ %7859, %7817 ], [ 1.000000e+00, %7774 ]
  %7990 = phi float [ %7983, %7817 ], [ 0.000000e+00, %7774 ]
  %7991 = phi float [ %7984, %7817 ], [ 0.000000e+00, %7774 ]
  %7992 = phi float [ %7985, %7817 ], [ 0.000000e+00, %7774 ]
  %7993 = fmul fast float %7990, %6326
  %7994 = fmul fast float %7991, %6326
  %7995 = fmul fast float %7992, %6326
  %7996 = fmul fast float %7987, %7781
  %7997 = call float @dx.op.dot3.f32(i32 55, float %7987, float %7988, float %7989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7998 = call float @dx.op.dot3.f32(i32 55, float %7993, float %7994, float %7995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7999 = select i1 %239, float %7997, float %7987
  %8000 = select i1 %239, float %7997, float %7988
  %8001 = select i1 %239, float 1.000000e+00, float %7989
  %8002 = select i1 %239, float %7998, float %7993
  %8003 = select i1 %239, float 0.000000e+00, float %7994
  %8004 = select i1 %239, float 0.000000e+00, float %7995
  %8005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8006 = extractvalue %dx.types.CBufRet.i32 %8005, 3
  %8007 = and i32 %8006, 3
  %8008 = icmp ne i32 %8007, 0
  %8009 = and i32 %8006, 4
  %8010 = icmp ne i32 %8009, 0
  %8011 = and i1 %8008, %8010
  %8012 = and i1 %239, %8011
  br i1 %8012, label %8013, label %8019

; <label>:8013                                    ; preds = %7986
  %8014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8015 = extractvalue %dx.types.CBufRet.f32 %8014, 1
  %8016 = fadd fast float %7996, -1.000000e+00
  %8017 = fmul fast float %8015, %8016
  %8018 = fadd fast float %8017, 1.000000e+00
  br label %8019

; <label>:8019                                    ; preds = %8013, %7986
  %8020 = phi float [ %8018, %8013 ], [ %7996, %7986 ]
  %8021 = fadd fast float %7778, %7775
  %8022 = fmul fast float %7999, %8021
  %8023 = fadd fast float %8022, %8002
  %8024 = fadd fast float %7779, %7776
  %8025 = fmul fast float %8000, %8024
  %8026 = fadd fast float %8025, %8003
  %8027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8028 = extractvalue %dx.types.CBufRet.f32 %8027, 0
  br i1 %239, label %8029, label %8052

; <label>:8029                                    ; preds = %8019
  %8030 = fadd fast float %8023, %8026
  %8031 = fmul fast float %8028, %8030
  %8032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.f32 %8032, 3
  %8034 = extractvalue %dx.types.CBufRet.f32 %6330, 1
  %8035 = fsub fast float %6335, %6329
  %8036 = fadd fast float %8035, %6336
  %8037 = fsub fast float %8036, %8034
  %8038 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %8039 = fmul fast float %8037, %8038
  %8040 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8041 = fsub fast float %8040, %8033
  %8042 = fmul fast float %8041, %8020
  %8043 = fadd fast float %8042, %8033
  %8044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8045 = extractvalue %dx.types.CBufRet.f32 %8044, 0
  %8046 = fsub fast float %8043, %8045
  %8047 = fmul fast float %8046, 1.000000e+01
  %8048 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8049 = fmul fast float %8048, %6325
  %8050 = fadd fast float %8049, %6326
  %8051 = fmul fast float %8050, %8043
  br label %8076

; <label>:8052                                    ; preds = %8019
  %8053 = fadd fast float %7780, %7777
  %8054 = fmul fast float %8001, %8053
  %8055 = fadd fast float %8054, %8004
  %8056 = fmul fast float %8028, %8023
  %8057 = fmul fast float %8028, %8026
  %8058 = fmul fast float %8028, %8055
  %8059 = call float @dx.op.binary.f32(i32 35, float %8057, float %8058)  ; FMax(a,b)
  %8060 = call float @dx.op.binary.f32(i32 35, float %8056, float %8059)  ; FMax(a,b)
  %8061 = call float @dx.op.binary.f32(i32 35, float %8060, float %6326)  ; FMax(a,b)
  %8062 = fcmp fast ugt float %8061, 0x3F10000000000000
  br i1 %8062, label %8064, label %8063

; <label>:8063                                    ; preds = %8052
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8064

; <label>:8064                                    ; preds = %8063, %8052
  %8065 = add i32 %72, 132
  %8066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %61, i32 %8065, i32 undef)  ; BufferLoad(srv,index,wot)
  %8067 = extractvalue %dx.types.ResRet.i32 %8066, 0
  %8068 = and i32 %8067, 32
  %8069 = icmp eq i32 %8068, 0
  br i1 %8069, label %8076, label %8070

; <label>:8070                                    ; preds = %8064
  %8071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8072 = extractvalue %dx.types.CBufRet.f32 %8071, 0
  %8073 = fmul fast float %8072, 0x3FE99999A0000000
  %8074 = fadd fast float %8072, %8056
  %8075 = fadd fast float %8073, %8058
  br label %8076

; <label>:8076                                    ; preds = %8070, %8064, %8029
  %8077 = phi float [ %8031, %8029 ], [ %8074, %8070 ], [ %8056, %8064 ]
  %8078 = phi float [ %8051, %8029 ], [ %8057, %8070 ], [ %8057, %8064 ]
  %8079 = phi float [ %8050, %8029 ], [ %8075, %8070 ], [ %8058, %8064 ]
  %8080 = phi float [ %8050, %8029 ], [ %6326, %8070 ], [ %6326, %8064 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8081 = call float @dx.op.binary.f32(i32 36, float %8077, float 3.225500e+04)  ; FMin(a,b)
  %8082 = call float @dx.op.binary.f32(i32 36, float %8078, float 3.225500e+04)  ; FMin(a,b)
  %8083 = call float @dx.op.binary.f32(i32 36, float %8079, float 3.225500e+04)  ; FMin(a,b)
  %8084 = call float @dx.op.binary.f32(i32 36, float %8080, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8081)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8082)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8083)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8084)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!85}
!dx.entryPoints = !{!86}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !74, !77}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
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
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!47 = !{i32 39, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !18}
!48 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!49 = !{i32 41, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!50 = !{i32 42, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!51 = !{i32 43, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!52 = !{i32 44, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!53 = !{i32 45, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!54 = !{i32 46, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!55 = !{i32 47, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!56 = !{i32 48, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!57 = !{i32 49, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!58 = !{i32 50, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !59}
!59 = !{i32 0, i32 14}
!60 = !{i32 51, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!61 = !{i32 52, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!63 = !{i32 54, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!64 = !{i32 55, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!65 = !{i32 56, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!66 = !{i32 57, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!67 = !{i32 58, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!68 = !{i32 59, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!69 = !{i32 60, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!70 = !{i32 61, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!71 = !{i32 62, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !59}
!72 = !{i32 63, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!73 = !{i32 64, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!74 = !{!75, !76}
!75 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!76 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!79 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!80 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!81 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!82 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!83 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!84 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!85 = !{[28 x i32] [i32 26, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!86 = !{void ()* @ps_main, !"ps_main", !87, !4, !105}
!87 = !{!88, !103, null}
!88 = !{!89, !92, !94, !96, !98, !99, !100, !101, !102}
!89 = !{i32 0, !"SV_Position", i8 9, i8 3, !90, i8 4, i32 1, i8 4, i32 0, i8 0, !91}
!90 = !{i32 0}
!91 = !{i32 3, i32 15}
!92 = !{i32 1, !"COLOR", i8 9, i8 0, !90, i8 2, i32 1, i8 4, i32 1, i8 0, !93}
!93 = !{i32 3, i32 1}
!94 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !90, i8 2, i32 1, i8 2, i32 2, i8 0, !95}
!95 = !{i32 3, i32 3}
!96 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !90, i8 2, i32 1, i8 3, i32 3, i8 0, !97}
!97 = !{i32 3, i32 7}
!98 = !{i32 4, !"NORMAL", i8 9, i8 0, !90, i8 2, i32 1, i8 3, i32 4, i8 0, !97}
!99 = !{i32 5, !"TANGENT", i8 9, i8 0, !90, i8 2, i32 1, i8 4, i32 5, i8 0, !91}
!100 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !90, i8 1, i32 1, i8 1, i32 6, i8 0, !93}
!101 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !90, i8 1, i32 1, i8 1, i32 6, i8 1, !93}
!102 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !90, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!103 = !{!104}
!104 = !{i32 0, !"SV_Target", i8 9, i8 16, !90, i8 0, i32 1, i8 4, i32 0, i8 0, !91}
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
!155 = distinct !{!155, !156, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!156 = distinct !{!156, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!157 = distinct !{!157, !156, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!158 = distinct !{!158, !156, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!159 = distinct !{!159, !160, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!160 = distinct !{!160, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!161 = distinct !{!161, !160, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!162 = distinct !{!162, !160, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

