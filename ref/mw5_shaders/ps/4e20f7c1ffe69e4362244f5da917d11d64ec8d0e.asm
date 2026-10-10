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
; shader hash: a5865c424d181d01324fb824150685d9
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
  %298 = add i32 %71, 164
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
  br i1 %315, label %957, label %316

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
  %527 = add i32 %71, 152
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
  %579 = add i32 %71, 148
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
  %603 = add i32 %71, 136
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
  %626 = add i32 %71, 156
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
  br i1 %819, label %892, label %820

; <label>:820                                     ; preds = %798
  %821 = add i32 %71, 44
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = add i32 %71, 140
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = add i32 %826, 0
  %828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %827, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %829 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %828, %dx.types.Handle %96, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = extractvalue %dx.types.ResRet.f32 %829, 2
  %833 = extractvalue %dx.types.ResRet.f32 %829, 3
  %834 = and i32 %823, 255
  %835 = uitofp i32 %834 to float
  %836 = lshr i32 %823, 8
  %837 = and i32 %836, 255
  %838 = uitofp i32 %837 to float
  %839 = lshr i32 %823, 16
  %840 = and i32 %839, 255
  %841 = uitofp i32 %840 to float
  %842 = fmul fast float %841, 0x3F70101000000000
  %843 = fmul fast float %830, %835
  %844 = fadd fast float %843, %838
  %845 = fmul fast float %844, 0x3F70101000000000
  %846 = fadd fast float %831, -5.000000e-01
  %847 = fadd fast float %833, -5.000000e-01
  %848 = fmul fast float %846, %842
  %849 = fmul fast float %847, %842
  %850 = fadd fast float %848, 5.000000e-01
  %851 = fadd fast float %849, 5.000000e-01
  %852 = fmul fast float %850, 2.000000e+00
  %853 = fadd fast float %852, -1.000000e+00
  %854 = fmul fast float %851, 2.000000e+00
  %855 = fadd fast float %854, -1.000000e+00
  %856 = fadd fast float %853, %855
  %857 = fmul fast float %856, 5.000000e-01
  %858 = fsub fast float %853, %855
  %859 = fmul fast float %858, 5.000000e-01
  %860 = call float @dx.op.unary.f32(i32 6, float %857)  ; FAbs(value)
  %861 = fsub fast float 1.000000e+00, %860
  %862 = call float @dx.op.unary.f32(i32 6, float %859)  ; FAbs(value)
  %863 = fsub fast float %861, %862
  %864 = call float @dx.op.dot3.f32(i32 55, float %857, float %859, float %863, float %857, float %859, float %863)  ; Dot3(ax,ay,az,bx,by,bz)
  %865 = call float @dx.op.unary.f32(i32 25, float %864)  ; Rsqrt(value)
  %866 = fmul fast float %857, %865
  %867 = fmul fast float %859, %865
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = and i32 %869, 67108864
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %888, label %872

; <label>:872                                     ; preds = %820
  %873 = add i32 %71, 88
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = and i32 %875, 65535
  %877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %876)  ; LegacyF16ToF32(value)
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = and i32 %879, 65535
  %881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %880)  ; LegacyF16ToF32(value)
  %882 = lshr i32 %875, 16
  %883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %882)  ; LegacyF16ToF32(value)
  %884 = fsub fast float %845, %883
  %885 = fmul fast float %884, %877
  %886 = fadd fast float %885, %881
  %887 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  br label %888

; <label>:888                                     ; preds = %872, %820
  %889 = phi float [ %887, %872 ], [ %845, %820 ]
  %890 = call float @dx.op.dot2.f32(i32 54, float %866, float %867, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %891 = call float @dx.op.dot2.f32(i32 54, float %866, float %867, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %892

; <label>:892                                     ; preds = %888, %798
  %893 = phi float [ %889, %888 ], [ 0x3FD6666660000000, %798 ]
  %894 = phi float [ %890, %888 ], [ 0.000000e+00, %798 ]
  %895 = phi float [ %891, %888 ], [ 0.000000e+00, %798 ]
  %896 = phi float [ %832, %888 ], [ 1.000000e+00, %798 ]
  %897 = add i32 %71, 64
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = lshr i32 %899, 22
  %901 = shl nuw nsw i32 %900, 5
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = and i32 %904, 64
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %940, label %907

; <label>:907                                     ; preds = %892
  %908 = add i32 %71, 144
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = add i32 %910, 0
  %912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = and i32 %914, 131072
  %916 = icmp eq i32 %915, 0
  %917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %912, %dx.types.Handle %96, float %407, float %408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = extractvalue %dx.types.ResRet.f32 %917, 1
  %920 = extractvalue %dx.types.ResRet.f32 %917, 2
  %921 = fmul fast float %918, %255
  %922 = fmul fast float %919, %258
  %923 = fmul fast float %920, %261
  br i1 %916, label %930, label %924

; <label>:924                                     ; preds = %907
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %927 = fmul fast float %926, %921
  %928 = fmul fast float %926, %922
  %929 = fmul fast float %926, %923
  br label %930

; <label>:930                                     ; preds = %924, %907
  %931 = phi float [ %927, %924 ], [ %921, %907 ]
  %932 = phi float [ %928, %924 ], [ %922, %907 ]
  %933 = phi float [ %929, %924 ], [ %923, %907 ]
  %934 = fmul fast float %931, %902
  %935 = select i1 %238, float %934, float %931
  %936 = call float @dx.op.dot3.f32(i32 55, float %935, float %932, float %933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = select i1 %238, float 0.000000e+00, float %931
  %938 = select i1 %238, float %936, float %932
  %939 = select i1 %238, float 0.000000e+00, float %933
  br label %940

; <label>:940                                     ; preds = %930, %892
  %941 = phi float [ %937, %930 ], [ 0.000000e+00, %892 ]
  %942 = phi float [ %938, %930 ], [ 0.000000e+00, %892 ]
  %943 = phi float [ %939, %930 ], [ 0.000000e+00, %892 ]
  %944 = add i32 %71, 48
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = and i32 %946, 255
  %948 = uitofp i32 %947 to float
  %949 = lshr i32 %946, 8
  %950 = and i32 %949, 255
  %951 = uitofp i32 %950 to float
  %952 = call float @dx.op.dot3.f32(i32 55, float %813, float %814, float %815, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %953 = fmul fast float %951, %952
  %954 = fadd fast float %953, %948
  %955 = fmul fast float %954, 0x3F70101020000000
  %956 = call float @dx.op.unary.f32(i32 7, float %955)  ; Saturate(value)
  br label %957

; <label>:957                                     ; preds = %940, %306
  %958 = phi float [ 0.000000e+00, %306 ], [ %894, %940 ]
  %959 = phi float [ 0.000000e+00, %306 ], [ %895, %940 ]
  %960 = phi float [ 0.000000e+00, %306 ], [ %813, %940 ]
  %961 = phi float [ 0.000000e+00, %306 ], [ %814, %940 ]
  %962 = phi float [ 0.000000e+00, %306 ], [ %815, %940 ]
  %963 = phi float [ 0.000000e+00, %306 ], [ %941, %940 ]
  %964 = phi float [ 0.000000e+00, %306 ], [ %942, %940 ]
  %965 = phi float [ 0.000000e+00, %306 ], [ %943, %940 ]
  %966 = phi float [ 0.000000e+00, %306 ], [ %799, %940 ]
  %967 = phi float [ 0.000000e+00, %306 ], [ %595, %940 ]
  %968 = phi float [ 0.000000e+00, %306 ], [ %893, %940 ]
  %969 = phi float [ 0.000000e+00, %306 ], [ %896, %940 ]
  %970 = phi float [ 0.000000e+00, %306 ], [ %956, %940 ]
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %973 = call float @dx.op.dot2.f32(i32 54, float %958, float %959, float %958, float %959)  ; Dot2(ax,ay,bx,by)
  %974 = fmul fast float %973, 0x3FE3333340000000
  %975 = fsub fast float 1.000000e+00, %974
  %976 = call float @dx.op.dot3.f32(i32 55, float %958, float %959, float %975, float %958, float %959, float %975)  ; Dot3(ax,ay,az,bx,by,bz)
  %977 = call float @dx.op.unary.f32(i32 25, float %976)  ; Rsqrt(value)
  %978 = fmul fast float %977, %958
  %979 = fmul fast float %977, %959
  %980 = fmul fast float %975, %977
  %981 = fmul fast float %980, %76
  %982 = fmul fast float %980, %77
  %983 = fmul fast float %980, %78
  %984 = fmul fast float %978, %72
  %985 = fmul fast float %978, %73
  %986 = fmul fast float %978, %74
  %987 = fadd fast float %981, %984
  %988 = fadd fast float %982, %985
  %989 = fadd fast float %983, %986
  %990 = fmul fast float %979, %111
  %991 = fmul fast float %979, %112
  %992 = fmul fast float %979, %113
  %993 = fadd fast float %987, %990
  %994 = fadd fast float %988, %991
  %995 = fadd fast float %989, %992
  %996 = call float @dx.op.dot3.f32(i32 55, float %993, float %994, float %995, float %993, float %994, float %995)  ; Dot3(ax,ay,az,bx,by,bz)
  %997 = call float @dx.op.unary.f32(i32 25, float %996)  ; Rsqrt(value)
  %998 = fmul fast float %993, %997
  %999 = fmul fast float %994, %997
  %1000 = fmul fast float %995, %997
  %1001 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %1002 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %1003 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %1004 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %1005 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %1006 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %1007 = fadd fast float %1001, %147
  %1008 = fadd fast float %1002, %148
  %1009 = fadd fast float %1003, %149
  %1010 = fadd fast float %1004, %147
  %1011 = fadd fast float %1005, %148
  %1012 = fadd fast float %1006, %149
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.CBufRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 2
  %1019 = extractvalue %dx.types.CBufRet.f32 %1017, 3
  %1020 = fmul fast float %1014, %100
  %1021 = fmul fast float %1020, %1018
  %1022 = fmul fast float %1015, %101
  %1023 = fmul fast float %1022, %1019
  %1024 = fptoui float %1021 to i32
  %1025 = fptoui float %1023 to i32
  %1026 = fadd fast float %1014, -1.000000e+00
  %1027 = fadd fast float %1015, -1.000000e+00
  %1028 = fptoui float %1026 to i32
  %1029 = fptoui float %1027 to i32
  %1030 = call i32 @dx.op.binary.i32(i32 40, i32 %1024, i32 %1028)  ; UMin(a,b)
  %1031 = call i32 @dx.op.binary.i32(i32 40, i32 %1025, i32 %1029)  ; UMin(a,b)
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 3
  %1035 = fmul fast float %1033, %88
  %1036 = fsub fast float %1035, %1034
  %1037 = fadd fast float %1016, -1.000000e+00
  %1038 = call float @dx.op.binary.f32(i32 36, float %1036, float %1037)  ; FMin(a,b)
  %1039 = fptoui float %1038 to i32
  %1040 = fptoui float %1014 to i32
  %1041 = fptoui float %1015 to i32
  %1042 = mul i32 %1039, %1041
  %1043 = add i32 %1042, %1031
  %1044 = mul i32 %1043, %1040
  %1045 = add i32 %1044, %1030
  %1046 = shl i32 %1045, 2
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = and i32 %1048, 1023
  %1050 = lshr i32 %1048, 10
  %1051 = icmp eq i32 %1049, 0
  br i1 %1051, label %1480, label %1052

; <label>:1052                                    ; preds = %957
  %1053 = and i32 %1048, 1023
  br label %1054

; <label>:1054                                    ; preds = %1181, %1052
  %1055 = phi float [ %1182, %1181 ], [ 0.000000e+00, %1052 ]
  %1056 = phi float [ %1183, %1181 ], [ %967, %1052 ]
  %1057 = phi float [ %1184, %1181 ], [ %972, %1052 ]
  %1058 = phi float [ %1185, %1181 ], [ %970, %1052 ]
  %1059 = phi float [ %1186, %1181 ], [ 0.000000e+00, %1052 ]
  %1060 = phi float [ %1187, %1181 ], [ 0.000000e+00, %1052 ]
  %1061 = phi float [ %1188, %1181 ], [ %963, %1052 ]
  %1062 = phi float [ %1189, %1181 ], [ %964, %1052 ]
  %1063 = phi float [ %1190, %1181 ], [ %965, %1052 ]
  %1064 = phi float [ %1191, %1181 ], [ %998, %1052 ]
  %1065 = phi float [ %1192, %1181 ], [ %999, %1052 ]
  %1066 = phi float [ %1193, %1181 ], [ %1000, %1052 ]
  %1067 = phi float [ %1194, %1181 ], [ %969, %1052 ]
  %1068 = phi float [ %1195, %1181 ], [ %968, %1052 ]
  %1069 = phi float [ %1196, %1181 ], [ 0.000000e+00, %1052 ]
  %1070 = phi float [ %1197, %1181 ], [ %966, %1052 ]
  %1071 = phi float [ %1198, %1181 ], [ %960, %1052 ]
  %1072 = phi float [ %1199, %1181 ], [ %961, %1052 ]
  %1073 = phi float [ %1200, %1181 ], [ %962, %1052 ]
  %1074 = phi i32 [ %1131, %1181 ], [ 0, %1052 ]
  %1075 = add nuw nsw i32 %1074, %1050
  %1076 = shl i32 %1075, 2
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = shl i32 %1078, 8
  %1080 = or i32 %1079, 48
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = extractvalue %dx.types.ResRet.f32 %1081, 3
  %1086 = or i32 %1079, 64
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.i32 %1087, 1
  %1090 = or i32 %1079, 80
  %1091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 3
  %1094 = or i32 %1079, 96
  %1095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.ResRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.ResRet.f32 %1095, 2
  %1099 = extractvalue %dx.types.ResRet.f32 %1095, 3
  %1100 = or i32 %1079, 112
  %1101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 2
  %1103 = or i32 %1079, 128
  %1104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = extractvalue %dx.types.ResRet.f32 %1104, 3
  %1109 = or i32 %1079, 144
  %1110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.ResRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.ResRet.f32 %1110, 2
  %1114 = extractvalue %dx.types.ResRet.f32 %1110, 3
  %1115 = or i32 %1079, 160
  %1116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.ResRet.f32 %1116, 2
  %1120 = extractvalue %dx.types.ResRet.f32 %1116, 3
  %1121 = or i32 %1079, 192
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = or i32 %1079, 208
  %1125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = or i32 %1079, 248
  %1128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = add nuw nsw i32 %1074, 1
  %1132 = bitcast float %1085 to i32
  %1133 = and i32 %1132, 2560
  %1134 = icmp eq i32 %1133, 0
  %1135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = extractvalue %dx.types.ResRet.f32 %1135, 3
  %1140 = call float @dx.op.dot4.f32(i32 56, float %1136, float %1137, float %1138, float %1139, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1141 = or i32 %1079, 16
  %1142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = extractvalue %dx.types.ResRet.f32 %1142, 1
  %1145 = extractvalue %dx.types.ResRet.f32 %1142, 2
  %1146 = extractvalue %dx.types.ResRet.f32 %1142, 3
  %1147 = call float @dx.op.dot4.f32(i32 56, float %1143, float %1144, float %1145, float %1146, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1148 = or i32 %1079, 32
  %1149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = extractvalue %dx.types.ResRet.f32 %1149, 3
  %1154 = call float @dx.op.dot4.f32(i32 56, float %1150, float %1151, float %1152, float %1153, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1155 = call float @dx.op.unary.f32(i32 27, float %1140)  ; Round_ni(value)
  %1156 = call float @dx.op.unary.f32(i32 6, float %1155)  ; FAbs(value)
  %1157 = call float @dx.op.unary.f32(i32 27, float %1147)  ; Round_ni(value)
  %1158 = call float @dx.op.unary.f32(i32 6, float %1157)  ; FAbs(value)
  %1159 = call float @dx.op.unary.f32(i32 6, float %1154)  ; FAbs(value)
  %1160 = call float @dx.op.unary.f32(i32 27, float %1159)  ; Round_ni(value)
  %1161 = fadd fast float %1158, %1156
  %1162 = fadd fast float %1161, %1160
  %1163 = fcmp fast oeq float %1162, 0.000000e+00
  %1164 = call float @dx.op.dot4.f32(i32 56, float %1136, float %1137, float %1138, float %1139, float %1007, float %1008, float %1009, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1165 = call float @dx.op.dot4.f32(i32 56, float %1143, float %1144, float %1145, float %1146, float %1007, float %1008, float %1009, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1166 = call float @dx.op.dot4.f32(i32 56, float %1136, float %1137, float %1138, float %1139, float %1010, float %1011, float %1012, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1167 = call float @dx.op.dot4.f32(i32 56, float %1143, float %1144, float %1145, float %1146, float %1010, float %1011, float %1012, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1168 = fsub fast float %1164, %1140
  %1169 = fsub fast float %1166, %1140
  %1170 = fsub fast float %1165, %1147
  %1171 = fsub fast float %1167, %1147
  %1172 = call float @dx.op.dot3.f32(i32 55, float %1082, float %1083, float %1084, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 2
  %1175 = fadd fast float %1174, %1172
  %1176 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1173, 0
  %1178 = fcmp fast ogt float %1176, %1177
  %1179 = and i1 %1163, %1178
  %1180 = and i1 %1134, %1179
  br i1 %1180, label %1202, label %1181

; <label>:1181                                    ; preds = %1466, %1283, %1202, %1054
  %1182 = phi float [ %1055, %1202 ], [ %1286, %1283 ], [ %1286, %1466 ], [ %1055, %1054 ]
  %1183 = phi float [ %1056, %1202 ], [ %1056, %1283 ], [ %1441, %1466 ], [ %1056, %1054 ]
  %1184 = phi float [ %1057, %1202 ], [ %1057, %1283 ], [ %1440, %1466 ], [ %1057, %1054 ]
  %1185 = phi float [ %1058, %1202 ], [ %1058, %1283 ], [ %1438, %1466 ], [ %1058, %1054 ]
  %1186 = phi float [ %1059, %1202 ], [ %1059, %1283 ], [ %1410, %1466 ], [ %1059, %1054 ]
  %1187 = phi float [ %1060, %1202 ], [ %1060, %1283 ], [ %1408, %1466 ], [ %1060, %1054 ]
  %1188 = phi float [ %1061, %1202 ], [ %1061, %1283 ], [ %1476, %1466 ], [ %1061, %1054 ]
  %1189 = phi float [ %1062, %1202 ], [ %1062, %1283 ], [ %1477, %1466 ], [ %1062, %1054 ]
  %1190 = phi float [ %1063, %1202 ], [ %1063, %1283 ], [ %1478, %1466 ], [ %1063, %1054 ]
  %1191 = phi float [ %1064, %1202 ], [ %1064, %1283 ], [ %1389, %1466 ], [ %1064, %1054 ]
  %1192 = phi float [ %1065, %1202 ], [ %1065, %1283 ], [ %1390, %1466 ], [ %1065, %1054 ]
  %1193 = phi float [ %1066, %1202 ], [ %1066, %1283 ], [ %1391, %1466 ], [ %1066, %1054 ]
  %1194 = phi float [ %1067, %1202 ], [ %1067, %1283 ], [ %1418, %1466 ], [ %1067, %1054 ]
  %1195 = phi float [ %1068, %1202 ], [ %1068, %1283 ], [ %1415, %1466 ], [ %1068, %1054 ]
  %1196 = phi float [ %1069, %1202 ], [ %1069, %1283 ], [ %1412, %1466 ], [ %1069, %1054 ]
  %1197 = phi float [ %1070, %1202 ], [ %1070, %1283 ], [ %1406, %1466 ], [ %1070, %1054 ]
  %1198 = phi float [ %1071, %1202 ], [ %1071, %1283 ], [ %1401, %1466 ], [ %1071, %1054 ]
  %1199 = phi float [ %1072, %1202 ], [ %1072, %1283 ], [ %1402, %1466 ], [ %1072, %1054 ]
  %1200 = phi float [ %1073, %1202 ], [ %1073, %1283 ], [ %1403, %1466 ], [ %1073, %1054 ]
  %1201 = icmp eq i32 %1131, %1053
  br i1 %1201, label %1479, label %1054

; <label>:1202                                    ; preds = %1054
  %1203 = extractvalue %dx.types.ResRet.f32 %1101, 3
  %1204 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1206 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1207 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1208 = extractvalue %dx.types.ResRet.i32 %1087, 3
  %1209 = extractvalue %dx.types.ResRet.i32 %1087, 2
  %1210 = add i32 %1208, 0
  %1211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1210, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1213 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1211, %dx.types.Handle %1212, float %1140, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float %1168, float %1170, float undef, float %1169, float %1171, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = fmul fast float %1214, %1207
  %1216 = fadd fast float %1215, %1206
  %1217 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1218 = fmul fast float %1140, %1096
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1147, float %1218)  ; FMad(a,b,c)
  %1220 = fadd fast float %1219, %1205
  %1221 = fmul fast float %1140, %1098
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %1147, float %1221)  ; FMad(a,b,c)
  %1223 = fadd fast float %1222, %1204
  %1224 = fmul fast float %1168, %1096
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1170, float %1224)  ; FMad(a,b,c)
  %1226 = fmul fast float %1168, %1098
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %1170, float %1226)  ; FMad(a,b,c)
  %1228 = fmul fast float %1169, %1096
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1097, float %1171, float %1228)  ; FMad(a,b,c)
  %1230 = fmul fast float %1169, %1098
  %1231 = call float @dx.op.tertiary.f32(i32 46, float %1099, float %1171, float %1230)  ; FMad(a,b,c)
  %1232 = add i32 %1209, 0
  %1233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1232, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1234 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1233, %dx.types.Handle %1212, float %1220, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float %1225, float %1227, float undef, float %1229, float %1231, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = and i32 %1132, 1024
  %1237 = icmp ne i32 %1236, 0
  %1238 = fcmp fast ogt float %1235, 0x3FE0101020000000
  %1239 = uitofp i1 %1238 to float
  %1240 = select i1 %1237, float %1239, float %1235
  %1241 = and i32 %1132, 8192
  %1242 = icmp ne i32 %1241, 0
  %1243 = select i1 %1242, float %1203, float 1.000000e+00
  %1244 = fmul fast float %1140, 2.000000e+00
  %1245 = fadd fast float %1244, -1.000000e+00
  %1246 = call float @dx.op.unary.f32(i32 6, float %1245)  ; FAbs(value)
  %1247 = fmul fast float %1246, %1129
  %1248 = fsub fast float %1247, %1129
  %1249 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1250 = fmul fast float %1147, 2.000000e+00
  %1251 = fadd fast float %1250, -1.000000e+00
  %1252 = call float @dx.op.unary.f32(i32 6, float %1251)  ; FAbs(value)
  %1253 = fmul fast float %1252, %1130
  %1254 = fsub fast float %1253, %1130
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1256 = fmul fast float %1159, %1092
  %1257 = fsub fast float %1256, %1092
  %1258 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1259 = fmul fast float %1217, %1243
  %1260 = fmul fast float %1259, %1214
  %1261 = fmul fast float %1260, %1249
  %1262 = fmul fast float %1261, %1240
  %1263 = fmul fast float %1262, %1255
  %1264 = fmul fast float %1263, %1258
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1267 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1268 = fsub fast float %1176, %1267
  %1269 = fmul fast float %1268, %1266
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = fmul fast float %1264, %1093
  %1272 = fadd fast float %1264, %1093
  %1273 = fmul fast float %1272, %1102
  %1274 = fsub fast float %1273, %1102
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1276 = and i32 %1132, 128
  %1277 = icmp ne i32 %1276, 0
  %1278 = select i1 %1277, float %1275, float %1271
  %1279 = fmul fast float %1278, %1270
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = fcmp fast ugt float %1279, %1281
  br i1 %1282, label %1283, label %1181

; <label>:1283                                    ; preds = %1202
  %1284 = select i1 %1242, float %1279, float 0.000000e+00
  %1285 = fadd fast float %1284, %1055
  %1286 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  br i1 %1242, label %1181, label %1287

; <label>:1287                                    ; preds = %1283
  %1288 = and i32 %1132, 4
  %1289 = and i32 %1132, 8
  %1290 = add i32 %1088, 0
  %1291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1290, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1293 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1291, %dx.types.Handle %1292, float %1220, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float %1225, float %1227, float undef, float %1229, float %1231, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.ResRet.f32 %1293, 2
  %1297 = extractvalue %dx.types.ResRet.f32 %1293, 3
  %1298 = bitcast float %1114 to i32
  %1299 = and i32 %1298, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = lshr i32 %1298, 8
  %1302 = and i32 %1301, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1297, %1300
  %1305 = fadd fast float %1304, %1303
  %1306 = fmul fast float %1305, 0x3F70101000000000
  %1307 = add i32 %1089, 0
  %1308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1307, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1309 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1308, %dx.types.Handle %1292, float %1220, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float %1225, float %1227, float undef, float %1229, float %1231, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.ResRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.ResRet.f32 %1309, 2
  %1313 = extractvalue %dx.types.ResRet.f32 %1309, 3
  %1314 = bitcast float %1108 to i32
  %1315 = and i32 %1314, 255
  %1316 = uitofp i32 %1315 to float
  %1317 = lshr i32 %1314, 8
  %1318 = and i32 %1317, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = lshr i32 %1314, 16
  %1321 = and i32 %1320, 255
  %1322 = uitofp i32 %1321 to float
  %1323 = fmul fast float %1322, 0x3F70101000000000
  %1324 = fmul fast float %1310, %1316
  %1325 = fadd fast float %1324, %1319
  %1326 = fmul fast float %1325, 0x3F70101000000000
  %1327 = fadd fast float %1311, -5.000000e-01
  %1328 = fadd fast float %1313, -5.000000e-01
  %1329 = fmul fast float %1327, %1323
  %1330 = fmul fast float %1328, %1323
  %1331 = fadd fast float %1329, 5.000000e-01
  %1332 = fadd fast float %1330, 5.000000e-01
  %1333 = fmul fast float %1294, %1117
  %1334 = fmul fast float %1295, %1118
  %1335 = fmul fast float %1296, %1119
  %1336 = fmul fast float %1331, 2.000000e+00
  %1337 = fadd fast float %1336, -1.000000e+00
  %1338 = fmul fast float %1332, 2.000000e+00
  %1339 = fadd fast float %1338, -1.000000e+00
  %1340 = fadd fast float %1337, %1339
  %1341 = fmul fast float %1340, 5.000000e-01
  %1342 = fsub fast float %1337, %1339
  %1343 = fmul fast float %1342, 5.000000e-01
  %1344 = call float @dx.op.unary.f32(i32 6, float %1341)  ; FAbs(value)
  %1345 = fsub fast float 1.000000e+00, %1344
  %1346 = call float @dx.op.unary.f32(i32 6, float %1343)  ; FAbs(value)
  %1347 = fsub fast float %1345, %1346
  %1348 = call float @dx.op.dot3.f32(i32 55, float %1341, float %1343, float %1347, float %1341, float %1343, float %1347)  ; Dot3(ax,ay,az,bx,by,bz)
  %1349 = call float @dx.op.unary.f32(i32 25, float %1348)  ; Rsqrt(value)
  %1350 = fmul fast float %1341, %1349
  %1351 = fmul fast float %1343, %1349
  %1352 = fmul fast float %1349, %1347
  %1353 = fmul fast float %1352, %1082
  %1354 = fmul fast float %1352, %1083
  %1355 = fmul fast float %1352, %1084
  %1356 = fmul fast float %1350, %1105
  %1357 = fmul fast float %1350, %1106
  %1358 = fmul fast float %1350, %1107
  %1359 = fadd fast float %1356, %1353
  %1360 = fadd fast float %1357, %1354
  %1361 = fadd fast float %1358, %1355
  %1362 = fmul fast float %1351, %1111
  %1363 = fmul fast float %1351, %1112
  %1364 = fmul fast float %1351, %1113
  %1365 = fadd fast float %1359, %1362
  %1366 = fadd fast float %1360, %1363
  %1367 = fadd fast float %1361, %1364
  %1368 = call float @dx.op.dot3.f32(i32 55, float %1365, float %1366, float %1367, float %1365, float %1366, float %1367)  ; Dot3(ax,ay,az,bx,by,bz)
  %1369 = call float @dx.op.unary.f32(i32 25, float %1368)  ; Rsqrt(value)
  %1370 = fmul fast float %1365, %1369
  %1371 = fmul fast float %1366, %1369
  %1372 = fmul fast float %1367, %1369
  %1373 = icmp ne i32 %1289, 0
  %1374 = select i1 %1373, float 1.000000e+00, float 0.000000e+00
  %1375 = fmul fast float %1279, %1374
  %1376 = and i32 %1132, 1
  %1377 = icmp eq i32 %1376, 0
  br i1 %1377, label %1378, label %1382

; <label>:1378                                    ; preds = %1287
  %1379 = fsub fast float %1370, %1064
  %1380 = fsub fast float %1371, %1065
  %1381 = fsub fast float %1372, %1066
  br label %1382

; <label>:1382                                    ; preds = %1378, %1287
  %1383 = phi float [ %1379, %1378 ], [ %1370, %1287 ]
  %1384 = phi float [ %1380, %1378 ], [ %1371, %1287 ]
  %1385 = phi float [ %1381, %1378 ], [ %1372, %1287 ]
  %1386 = fmul float %1385, %1375
  %1387 = fmul float %1384, %1375
  %1388 = fmul float %1383, %1375
  %1389 = fadd fast float %1388, %1064
  %1390 = fadd fast float %1387, %1065
  %1391 = fadd fast float %1386, %1066
  %1392 = icmp ne i32 %1288, 0
  %1393 = select i1 %1392, float 1.000000e+00, float 0.000000e+00
  %1394 = fmul fast float %1279, %1393
  %1395 = fsub fast float %1333, %1071
  %1396 = fsub fast float %1334, %1072
  %1397 = fsub fast float %1335, %1073
  %1398 = fmul fast float %1395, %1394
  %1399 = fmul fast float %1396, %1394
  %1400 = fmul fast float %1397, %1394
  %1401 = fadd fast float %1398, %1071
  %1402 = fadd fast float %1399, %1072
  %1403 = fadd fast float %1400, %1073
  %1404 = fsub fast float %1306, %1070
  %1405 = fmul fast float %1404, %1394
  %1406 = fadd fast float %1405, %1070
  %1407 = fmul fast float %1394, %1060
  %1408 = fsub fast float %1060, %1407
  %1409 = fmul fast float %1394, %1059
  %1410 = fsub fast float %1059, %1409
  %1411 = fadd fast float %1279, %1069
  %1412 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1413 = fsub fast float %1326, %1068
  %1414 = fmul fast float %1413, %1375
  %1415 = fadd fast float %1414, %1068
  %1416 = fsub fast float %1312, %1067
  %1417 = fmul fast float %1416, %1375
  %1418 = fadd fast float %1417, %1067
  %1419 = call float @dx.op.dot3.f32(i32 55, float %1333, float %1334, float %1335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.CBufRet.f32 %1420, 1
  %1423 = fmul fast float %1422, %1419
  %1424 = fadd fast float %1423, %1421
  %1425 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1426 = bitcast float %1120 to i32
  %1427 = and i32 %1426, 65535
  %1428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1427)  ; LegacyF16ToF32(value)
  %1429 = lshr i32 %1426, 16
  %1430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1429)  ; LegacyF16ToF32(value)
  %1431 = fcmp fast oge float %1428, 0.000000e+00
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 0
  %1434 = select i1 %1431, float %1428, float %1433
  %1435 = fadd fast float %1434, %1430
  %1436 = fsub fast float %1425, %1058
  %1437 = fmul fast float %1436, %1279
  %1438 = fadd fast float %1437, %1058
  %1439 = fmul fast float %1435, %1279
  %1440 = call float @dx.op.binary.f32(i32 35, float %1057, float %1439)  ; FMax(a,b)
  %1441 = call float @dx.op.binary.f32(i32 35, float %1056, float %1279)  ; FMax(a,b)
  %1442 = and i32 %1132, 16
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1466, label %1444

; <label>:1444                                    ; preds = %1382
  %1445 = bitcast float %1126 to i32
  %1446 = add i32 %1123, 0
  %1447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1446, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1448 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1447, %dx.types.Handle %1292, float %1220, float %1223, float undef, float undef, i32 0, i32 0, i32 undef, float %1225, float %1227, float undef, float %1229, float %1231, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = and i32 %1445, 65535
  %1453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1452)  ; LegacyF16ToF32(value)
  %1454 = fmul fast float %1449, %1117
  %1455 = fmul fast float %1450, %1118
  %1456 = fmul fast float %1451, %1119
  %1457 = and i32 %1132, 16384
  %1458 = icmp ne i32 %1457, 0
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 0
  %1461 = select i1 %1458, float %1460, float 1.000000e+00
  %1462 = fmul fast float %1461, %1453
  %1463 = fmul fast float %1454, %1462
  %1464 = fmul fast float %1455, %1462
  %1465 = fmul fast float %1456, %1462
  br label %1466

; <label>:1466                                    ; preds = %1444, %1382
  %1467 = phi float [ %1463, %1444 ], [ 0.000000e+00, %1382 ]
  %1468 = phi float [ %1464, %1444 ], [ 0.000000e+00, %1382 ]
  %1469 = phi float [ %1465, %1444 ], [ 0.000000e+00, %1382 ]
  %1470 = fsub fast float %1467, %1061
  %1471 = fsub fast float %1468, %1062
  %1472 = fsub fast float %1469, %1063
  %1473 = fmul fast float %1470, %1279
  %1474 = fmul fast float %1471, %1279
  %1475 = fmul fast float %1472, %1279
  %1476 = fadd fast float %1473, %1061
  %1477 = fadd fast float %1474, %1062
  %1478 = fadd fast float %1475, %1063
  br label %1181

; <label>:1479                                    ; preds = %1181
  br label %1480

; <label>:1480                                    ; preds = %1479, %957
  %1481 = phi float [ 0.000000e+00, %957 ], [ %1182, %1479 ]
  %1482 = phi float [ %967, %957 ], [ %1183, %1479 ]
  %1483 = phi float [ %972, %957 ], [ %1184, %1479 ]
  %1484 = phi float [ %970, %957 ], [ %1185, %1479 ]
  %1485 = phi float [ 0.000000e+00, %957 ], [ %1186, %1479 ]
  %1486 = phi float [ 0.000000e+00, %957 ], [ %1187, %1479 ]
  %1487 = phi float [ %963, %957 ], [ %1188, %1479 ]
  %1488 = phi float [ %964, %957 ], [ %1189, %1479 ]
  %1489 = phi float [ %965, %957 ], [ %1190, %1479 ]
  %1490 = phi float [ %998, %957 ], [ %1191, %1479 ]
  %1491 = phi float [ %999, %957 ], [ %1192, %1479 ]
  %1492 = phi float [ %1000, %957 ], [ %1193, %1479 ]
  %1493 = phi float [ %969, %957 ], [ %1194, %1479 ]
  %1494 = phi float [ %968, %957 ], [ %1195, %1479 ]
  %1495 = phi float [ 0.000000e+00, %957 ], [ %1196, %1479 ]
  %1496 = phi float [ %966, %957 ], [ %1197, %1479 ]
  %1497 = phi float [ %960, %957 ], [ %1198, %1479 ]
  %1498 = phi float [ %961, %957 ], [ %1199, %1479 ]
  %1499 = phi float [ %962, %957 ], [ %1200, %1479 ]
  %1500 = call float @dx.op.dot3.f32(i32 55, float %1490, float %1491, float %1492, float %1490, float %1491, float %1492)  ; Dot3(ax,ay,az,bx,by,bz)
  %1501 = call float @dx.op.unary.f32(i32 25, float %1500)  ; Rsqrt(value)
  %1502 = fmul fast float %1501, %1490
  %1503 = fmul fast float %1501, %1491
  %1504 = fmul fast float %1501, %1492
  %1505 = fadd fast float %1495, %967
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = call float @dx.op.dot3.f32(i32 55, float %1502, float %1503, float %1504, float %1502, float %1503, float %1504)  ; Dot3(ax,ay,az,bx,by,bz)
  %1508 = call float @dx.op.unary.f32(i32 25, float %1507)  ; Rsqrt(value)
  %1509 = fmul fast float %1508, %1502
  %1510 = fmul fast float %1508, %1503
  %1511 = fmul fast float %1508, %1504
  %1512 = fadd fast float %1496, 0xBFB99999A0000000
  %1513 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1514 = fmul fast float %1513, 0x3FF1C71C80000000
  %1515 = call float @dx.op.binary.f32(i32 36, float %1496, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1516 = fsub fast float 1.000000e+00, %1514
  %1517 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1518 = fmul fast float %1517, %1497
  %1519 = fmul fast float %1517, %1498
  %1520 = fmul fast float %1517, %1499
  %1521 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1522 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1523 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1524 = fmul fast float %1514, %1497
  %1525 = fmul fast float %1514, %1498
  %1526 = fmul fast float %1514, %1499
  %1527 = fadd fast float %1524, %1515
  %1528 = fadd fast float %1525, %1515
  %1529 = fadd fast float %1526, %1515
  %1530 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1531 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1532 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1533 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.i32 %1534, 3
  %1536 = and i32 %1535, 8
  %1537 = icmp ne i32 %1536, 0
  %1538 = call float @dx.op.binary.f32(i32 35, float %1521, float %1497)  ; FMax(a,b)
  %1539 = call float @dx.op.binary.f32(i32 35, float %1522, float %1497)  ; FMax(a,b)
  %1540 = call float @dx.op.binary.f32(i32 35, float %1523, float %1497)  ; FMax(a,b)
  %1541 = call float @dx.op.dot3.f32(i32 55, float %1521, float %1522, float %1523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1542 = select i1 %238, float %1497, float %1521
  %1543 = select i1 %238, float %1541, float %1522
  %1544 = select i1 %238, float 1.000000e+00, float %1523
  %1545 = select i1 %1537, float %1538, float %1542
  %1546 = select i1 %1537, float %1539, float %1543
  %1547 = select i1 %1537, float %1540, float %1544
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 0
  %1550 = extractvalue %dx.types.CBufRet.f32 %1548, 1
  %1551 = extractvalue %dx.types.CBufRet.f32 %1548, 2
  %1552 = fadd fast float %1549, %147
  %1553 = fadd fast float %1550, %148
  %1554 = fadd fast float %1551, %149
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %1558 = fsub fast float %1552, %1556
  %1559 = fsub fast float %1553, %1557
  %1560 = fmul fast float %1558, %1558
  %1561 = fmul fast float %1559, %1559
  %1562 = fadd fast float %1560, %1561
  %1563 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1555, 2
  %1565 = fcmp fast olt float %1563, %1564
  br i1 %1565, label %1566, label %1633

; <label>:1566                                    ; preds = %1480
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 0
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.f32 %1571, 0
  %1573 = extractvalue %dx.types.CBufRet.f32 %1567, 1
  %1574 = extractvalue %dx.types.CBufRet.f32 %1569, 1
  %1575 = extractvalue %dx.types.CBufRet.f32 %1571, 1
  %1576 = extractvalue %dx.types.CBufRet.f32 %1567, 3
  %1577 = extractvalue %dx.types.CBufRet.f32 %1569, 3
  %1578 = extractvalue %dx.types.CBufRet.f32 %1571, 3
  %1579 = fadd fast float %1576, %1552
  %1580 = fadd fast float %1577, %1553
  %1581 = fadd fast float %1578, %1554
  %1582 = fmul fast float %1579, %1568
  %1583 = call float @dx.op.tertiary.f32(i32 46, float %1580, float %1570, float %1582)  ; FMad(a,b,c)
  %1584 = call float @dx.op.tertiary.f32(i32 46, float %1581, float %1572, float %1583)  ; FMad(a,b,c)
  %1585 = fmul fast float %1579, %1573
  %1586 = call float @dx.op.tertiary.f32(i32 46, float %1580, float %1574, float %1585)  ; FMad(a,b,c)
  %1587 = call float @dx.op.tertiary.f32(i32 46, float %1581, float %1575, float %1586)  ; FMad(a,b,c)
  %1588 = fsub fast float %1584, %1576
  %1589 = fsub fast float %1587, %1577
  %1590 = fsub fast float %1588, %1556
  %1591 = fadd fast float %1590, %1564
  %1592 = fsub fast float %1589, %1557
  %1593 = fadd fast float %1592, %1564
  %1594 = extractvalue %dx.types.CBufRet.f32 %1555, 3
  %1595 = fmul fast float %1591, %1594
  %1596 = fmul fast float %1593, %1594
  %1597 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1598 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  %1599 = fsub fast float 1.000000e+00, %1597
  %1600 = fsub fast float 1.000000e+00, %1598
  %1601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1599, float %1600, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = fcmp fast ugt float %1602, 0.000000e+00
  br i1 %1603, label %1604, label %1907

; <label>:1604                                    ; preds = %1566
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 2
  %1607 = fmul fast float %1606, %1602
  %1608 = extractvalue %dx.types.CBufRet.f32 %1605, 3
  %1609 = fadd fast float %1608, %1607
  %1610 = extractvalue %dx.types.CBufRet.f32 %1571, 2
  %1611 = fadd fast float %1609, %1578
  %1612 = fmul fast float %1584, %1572
  %1613 = call float @dx.op.tertiary.f32(i32 46, float %1587, float %1575, float %1612)  ; FMad(a,b,c)
  %1614 = call float @dx.op.tertiary.f32(i32 46, float %1611, float %1610, float %1613)  ; FMad(a,b,c)
  %1615 = fsub fast float %1614, %1578
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 2
  %1618 = fsub fast float %1615, %1617
  %1619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1599, float %1600, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1620 = extractvalue %dx.types.ResRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.ResRet.f32 %1619, 1
  %1622 = extractvalue %dx.types.ResRet.f32 %1619, 2
  %1623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1599, float %1600, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1624 = extractvalue %dx.types.ResRet.f32 %1623, 0
  %1625 = extractvalue %dx.types.ResRet.f32 %1623, 1
  %1626 = extractvalue %dx.types.ResRet.f32 %1623, 2
  %1627 = fadd fast float %1624, %1620
  %1628 = fmul fast float %1627, 0x3F847AE140000000
  %1629 = fadd fast float %1625, %1621
  %1630 = fmul fast float %1629, 0x3F847AE140000000
  %1631 = fadd fast float %1626, %1622
  %1632 = fmul fast float %1631, 0x3F847AE140000000
  br label %1907

; <label>:1633                                    ; preds = %1480
  %1634 = and i32 %214, 1
  %1635 = icmp eq i32 %1634, 0
  br i1 %1635, label %1907, label %1636

; <label>:1636                                    ; preds = %1633
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 0
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.CBufRet.f32 %1637, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1645 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1646 = extractvalue %dx.types.CBufRet.f32 %1637, 3
  %1647 = extractvalue %dx.types.CBufRet.f32 %1639, 3
  %1648 = extractvalue %dx.types.CBufRet.f32 %1641, 3
  %1649 = fadd fast float %1646, %1552
  %1650 = fadd fast float %1647, %1553
  %1651 = fadd fast float %1648, %1554
  %1652 = fmul fast float %1649, %1638
  %1653 = call float @dx.op.tertiary.f32(i32 46, float %1650, float %1640, float %1652)  ; FMad(a,b,c)
  %1654 = call float @dx.op.tertiary.f32(i32 46, float %1651, float %1642, float %1653)  ; FMad(a,b,c)
  %1655 = fmul fast float %1649, %1643
  %1656 = call float @dx.op.tertiary.f32(i32 46, float %1650, float %1644, float %1655)  ; FMad(a,b,c)
  %1657 = call float @dx.op.tertiary.f32(i32 46, float %1651, float %1645, float %1656)  ; FMad(a,b,c)
  %1658 = fsub fast float %1654, %1646
  %1659 = fsub fast float %1657, %1647
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 0
  %1662 = extractvalue %dx.types.CBufRet.f32 %1660, 1
  %1663 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1664 = extractvalue %dx.types.CBufRet.f32 %1660, 3
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 3
  %1667 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.i32 %1667, 0
  %1669 = extractvalue %dx.types.CBufRet.i32 %1667, 1
  %1670 = udiv i32 %1669, %1668
  %1671 = fsub fast float %1658, %1661
  %1672 = fsub fast float %1659, %1662
  %1673 = call float @dx.op.binary.f32(i32 35, float %1671, float 0.000000e+00)  ; FMax(a,b)
  %1674 = call float @dx.op.binary.f32(i32 35, float %1672, float 0.000000e+00)  ; FMax(a,b)
  %1675 = call float @dx.op.binary.f32(i32 36, float %1673, float %1663)  ; FMin(a,b)
  %1676 = call float @dx.op.binary.f32(i32 36, float %1674, float %1664)  ; FMin(a,b)
  %1677 = add i32 %1668, -1
  %1678 = add i32 %1670, -1
  %1679 = fmul fast float %1675, %1666
  %1680 = fmul fast float %1676, %1666
  %1681 = fptoui float %1679 to i32
  %1682 = fptoui float %1680 to i32
  %1683 = call i32 @dx.op.binary.i32(i32 40, i32 %1681, i32 %1677)  ; UMin(a,b)
  %1684 = call i32 @dx.op.binary.i32(i32 40, i32 %1682, i32 %1678)  ; UMin(a,b)
  %1685 = mul i32 %1684, %1668
  %1686 = add i32 %1685, %1683
  %1687 = shl i32 %1686, 2
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1687, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = icmp eq i32 %1689, -1
  br i1 %1690, label %1907, label %1691

; <label>:1691                                    ; preds = %1636
  %1692 = mul i32 %1689, 148
  %1693 = add i32 %1692, 4
  %1694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.f32 %1694, 0
  %1696 = add i32 %1692, 8
  %1697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1696, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  %1699 = add i32 %1692, 36
  %1700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.f32 %1700, 0
  %1702 = add i32 %1692, 60
  %1703 = add i32 %1692, 92
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = add i32 %1692, 116
  %1707 = fsub fast float %1658, %1695
  %1708 = fsub fast float %1659, %1698
  %1709 = fmul fast float %1666, %1707
  %1710 = fmul fast float %1666, %1708
  %1711 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1712 = call float @dx.op.unary.f32(i32 7, float %1710)  ; Saturate(value)
  %1713 = fsub fast float 1.000000e+00, %1712
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 2
  %1716 = call float @dx.op.unary.f32(i32 83, float %1711)  ; DerivCoarseX(value)
  %1717 = call float @dx.op.unary.f32(i32 83, float %1713)  ; DerivCoarseX(value)
  %1718 = call float @dx.op.unary.f32(i32 84, float %1711)  ; DerivCoarseY(value)
  %1719 = call float @dx.op.unary.f32(i32 84, float %1713)  ; DerivCoarseY(value)
  %1720 = fmul fast float %1716, %1715
  %1721 = fmul fast float %1717, %1715
  %1722 = fmul fast float %1718, %1715
  %1723 = fmul fast float %1719, %1715
  %1724 = call float @dx.op.dot2.f32(i32 54, float %1722, float %1723, float %1722, float %1723)  ; Dot2(ax,ay,bx,by)
  %1725 = call float @dx.op.dot2.f32(i32 54, float %1720, float %1721, float %1720, float %1721)  ; Dot2(ax,ay,bx,by)
  %1726 = call float @dx.op.binary.f32(i32 35, float %1725, float %1724)  ; FMax(a,b)
  %1727 = call float @dx.op.unary.f32(i32 23, float %1726)  ; Log(value)
  %1728 = fmul fast float %1727, 5.000000e-01
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 1
  %1731 = fadd fast float %1730, %1728
  %1732 = call float @dx.op.binary.f32(i32 35, float %1731, float 0.000000e+00)  ; FMax(a,b)
  %1733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1734 = extractvalue %dx.types.CBufRet.f32 %1733, 3
  %1735 = fadd fast float %1734, %1732
  %1736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1737 = extractvalue %dx.types.CBufRet.f32 %1736, 3
  %1738 = fadd fast float %1735, %1737
  %1739 = add i32 %1705, 0
  %1740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1739, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1741 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1740, i32 0)  ; GetDimensions(handle,mipLevel)
  %1742 = extractvalue %dx.types.Dimensions %1741, 0
  %1743 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1742)  ; FirstbitLo(value)
  %1744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.i32 %1744, 1
  %1746 = sub nsw i32 %1745, %1743
  %1747 = sitofp i32 %1746 to float
  %1748 = fsub fast float %1738, %1747
  %1749 = call float @dx.op.binary.f32(i32 35, float %1748, float 0.000000e+00)  ; FMax(a,b)
  %1750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1740, %dx.types.Handle %62, float %1711, float %1713, float %1701, float undef, i32 0, i32 0, i32 undef, float %1749)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1751 = extractvalue %dx.types.ResRet.f32 %1750, 0
  %1752 = fcmp ule float %1751, 0x3FE0101020000000
  %1753 = extractvalue %dx.types.CBufRet.i32 %1744, 0
  %1754 = and i32 %1753, 128
  %1755 = icmp ne i32 %1754, 0
  %1756 = and i1 %1752, %1755
  br i1 %1756, label %1907, label %1757

; <label>:1757                                    ; preds = %1691
  %1758 = add i32 %1692, 20
  %1759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.f32 %1759, 0
  %1761 = add i32 %1692, 24
  %1762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.f32 %1762, 0
  %1764 = add i32 %1692, 40
  %1765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.f32 %1765, 0
  %1767 = add i32 %1692, 96
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 2
  %1772 = fmul fast float %1771, %1711
  %1773 = fmul fast float %1771, %1713
  %1774 = extractvalue %dx.types.CBufRet.f32 %1770, 3
  %1775 = fadd fast float %1772, %1774
  %1776 = fadd fast float %1773, %1774
  %1777 = add i32 %1769, 0
  %1778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1777, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1779 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1778, i32 0)  ; GetDimensions(handle,mipLevel)
  %1780 = extractvalue %dx.types.Dimensions %1779, 0
  %1781 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1780)  ; FirstbitLo(value)
  %1782 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.i32 %1782, 1
  %1784 = sub nsw i32 %1783, %1781
  %1785 = sitofp i32 %1784 to float
  %1786 = fsub fast float %1735, %1785
  %1787 = call float @dx.op.binary.f32(i32 35, float %1786, float 0.000000e+00)  ; FMax(a,b)
  %1788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1778, %dx.types.Handle %62, float %1775, float %1776, float %1766, float undef, i32 0, i32 0, i32 undef, float %1787)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = fmul fast float %1789, %1760
  %1791 = fadd fast float %1790, %1763
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 3
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 3
  %1800 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1801 = fadd fast float %1797, %1658
  %1802 = fadd fast float %1799, %1659
  %1803 = fadd fast float %1791, %1800
  %1804 = fmul fast float %1801, %1793
  %1805 = call float @dx.op.tertiary.f32(i32 46, float %1802, float %1794, float %1804)  ; FMad(a,b,c)
  %1806 = call float @dx.op.tertiary.f32(i32 46, float %1803, float %1795, float %1805)  ; FMad(a,b,c)
  %1807 = fsub fast float %1806, %1800
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 2
  %1810 = fsub fast float %1807, %1809
  %1811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.i32 %1811, 0
  %1813 = call i32 @dx.op.binary.i32(i32 40, i32 %1689, i32 %1812)  ; UMin(a,b)
  %1814 = mul i32 %1813, 36
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = add i32 %1814, 4
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = fmul fast float %1819, %1711
  %1821 = fmul fast float %1819, %1713
  %1822 = extractvalue %dx.types.CBufRet.f32 %1818, 1
  %1823 = fadd fast float %1820, %1822
  %1824 = fadd fast float %1821, %1822
  %1825 = icmp eq i32 %1816, 0
  br i1 %1825, label %1894, label %1826

; <label>:1826                                    ; preds = %1757
  br label %1827

; <label>:1827                                    ; preds = %1884, %1826
  %1828 = phi float [ %1885, %1884 ], [ 0.000000e+00, %1826 ]
  %1829 = phi float [ %1886, %1884 ], [ 0.000000e+00, %1826 ]
  %1830 = phi float [ %1887, %1884 ], [ 0.000000e+00, %1826 ]
  %1831 = phi float [ %1888, %1884 ], [ 0.000000e+00, %1826 ]
  %1832 = phi float [ %1889, %1884 ], [ 0.000000e+00, %1826 ]
  %1833 = phi float [ %1890, %1884 ], [ 0.000000e+00, %1826 ]
  %1834 = phi i32 [ %1891, %1884 ], [ 0, %1826 ]
  %1835 = shl i32 %1834, 2
  %1836 = add i32 %1702, %1835
  %1837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 0
  %1839 = add i32 %1706, %1835
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = add i32 %1841, 0
  %1843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1842, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1844 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1843, i32 0)  ; GetDimensions(handle,mipLevel)
  %1845 = extractvalue %dx.types.Dimensions %1844, 0
  %1846 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1845)  ; FirstbitLo(value)
  %1847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.i32 %1847, 1
  %1849 = sub nsw i32 %1848, %1846
  %1850 = sitofp i32 %1849 to float
  %1851 = fsub fast float %1735, %1850
  %1852 = call float @dx.op.binary.f32(i32 35, float %1851, float 0.000000e+00)  ; FMax(a,b)
  %1853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1843, %dx.types.Handle %62, float %1823, float %1824, float %1838, float undef, i32 0, i32 0, i32 undef, float %1852)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1854 = extractvalue %dx.types.ResRet.f32 %1853, 0
  %1855 = fcmp fast ogt float %1854, 0.000000e+00
  br i1 %1855, label %1856, label %1884

; <label>:1856                                    ; preds = %1827
  %1857 = add i32 %1817, %1835
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = and i32 %1859, 32767
  %1861 = mul nuw nsw i32 %1860, 928
  %1862 = add nuw nsw i32 %1861, 48
  %1863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.ResRet.f32 %1863, 1
  %1866 = extractvalue %dx.types.ResRet.f32 %1863, 2
  %1867 = add nuw nsw i32 %1861, 60
  %1868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.ResRet.f32 %1868, 1
  %1871 = extractvalue %dx.types.ResRet.f32 %1868, 2
  %1872 = fmul fast float %1864, %1854
  %1873 = fmul fast float %1865, %1854
  %1874 = fmul fast float %1866, %1854
  %1875 = fadd fast float %1872, %1828
  %1876 = fadd fast float %1873, %1829
  %1877 = fadd fast float %1874, %1830
  %1878 = fmul fast float %1869, %1854
  %1879 = fmul fast float %1870, %1854
  %1880 = fmul fast float %1871, %1854
  %1881 = fadd fast float %1878, %1831
  %1882 = fadd fast float %1879, %1832
  %1883 = fadd fast float %1880, %1833
  br label %1884

; <label>:1884                                    ; preds = %1856, %1827
  %1885 = phi float [ %1875, %1856 ], [ %1828, %1827 ]
  %1886 = phi float [ %1876, %1856 ], [ %1829, %1827 ]
  %1887 = phi float [ %1877, %1856 ], [ %1830, %1827 ]
  %1888 = phi float [ %1881, %1856 ], [ %1831, %1827 ]
  %1889 = phi float [ %1882, %1856 ], [ %1832, %1827 ]
  %1890 = phi float [ %1883, %1856 ], [ %1833, %1827 ]
  %1891 = add nuw i32 %1834, 1
  %1892 = icmp eq i32 %1891, %1816
  br i1 %1892, label %1893, label %1827

; <label>:1893                                    ; preds = %1884
  br label %1894

; <label>:1894                                    ; preds = %1893, %1757
  %1895 = phi float [ 0.000000e+00, %1757 ], [ %1885, %1893 ]
  %1896 = phi float [ 0.000000e+00, %1757 ], [ %1886, %1893 ]
  %1897 = phi float [ 0.000000e+00, %1757 ], [ %1887, %1893 ]
  %1898 = phi float [ 0.000000e+00, %1757 ], [ %1888, %1893 ]
  %1899 = phi float [ 0.000000e+00, %1757 ], [ %1889, %1893 ]
  %1900 = phi float [ 0.000000e+00, %1757 ], [ %1890, %1893 ]
  %1901 = fadd fast float %1898, %1895
  %1902 = fmul fast float %1901, 0x3F847AE140000000
  %1903 = fadd fast float %1899, %1896
  %1904 = fmul fast float %1903, 0x3F847AE140000000
  %1905 = fadd fast float %1900, %1897
  %1906 = fmul fast float %1905, 0x3F847AE140000000
  br label %1907

; <label>:1907                                    ; preds = %1894, %1691, %1636, %1633, %1604, %1566
  %1908 = phi float [ %1618, %1604 ], [ -1.310720e+05, %1566 ], [ %1810, %1894 ], [ -1.310720e+05, %1636 ], [ -1.310720e+05, %1691 ], [ -1.310720e+05, %1633 ]
  %1909 = phi float [ %1628, %1604 ], [ 0.000000e+00, %1566 ], [ %1902, %1894 ], [ 0.000000e+00, %1636 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1633 ]
  %1910 = phi float [ %1630, %1604 ], [ 0.000000e+00, %1566 ], [ %1904, %1894 ], [ 0.000000e+00, %1636 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1633 ]
  %1911 = phi float [ %1632, %1604 ], [ 0.000000e+00, %1566 ], [ %1906, %1894 ], [ 0.000000e+00, %1636 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1633 ]
  %1912 = phi i1 [ true, %1604 ], [ false, %1566 ], [ true, %1894 ], [ false, %1636 ], [ false, %1691 ], [ false, %1633 ]
  %1913 = and i32 %214, 3
  %1914 = icmp eq i32 %1913, 1
  %1915 = select i1 %1914, float 1.000000e+00, float 0.000000e+00
  %1916 = fsub fast float %1908, %149
  %1917 = call float @dx.op.unary.f32(i32 7, float %1916)  ; Saturate(value)
  %1918 = select i1 %1912, float %1917, float 1.000000e+00
  %1919 = fmul fast float %1918, %1915
  %1920 = icmp eq i32 %1913, 3
  %1921 = select i1 %1920, float 1.000000e+00, float %1919
  %1922 = call float @dx.op.binary.f32(i32 35, float %1481, float %1921)  ; FMax(a,b)
  %1923 = call float @dx.op.unary.f32(i32 7, float %1922)  ; Saturate(value)
  %1924 = fcmp fast une float %1923, 0.000000e+00
  %1925 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %1926 = call float @dx.op.unary.f32(i32 25, float %1925)  ; Rsqrt(value)
  br i1 %1924, label %1934, label %1927

; <label>:1927                                    ; preds = %1907
  %1928 = fmul fast float %1926, %147
  %1929 = fmul fast float %1926, %148
  %1930 = fmul fast float %1926, %149
  %1931 = fsub fast float -0.000000e+00, %1928
  %1932 = fsub fast float -0.000000e+00, %1929
  %1933 = fsub fast float -0.000000e+00, %1930
  br label %2102

; <label>:1934                                    ; preds = %1907
  %1935 = fmul fast float %147, %1926
  %1936 = fsub fast float -0.000000e+00, %1935
  %1937 = fmul fast float %148, %1926
  %1938 = fsub fast float -0.000000e+00, %1937
  %1939 = fmul fast float %149, %1926
  %1940 = fsub fast float -0.000000e+00, %1939
  %1941 = call float @dx.op.dot3.f32(i32 55, float %1936, float %1938, float %1940, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %1942 = fmul fast float %1923, 2.500000e+00
  %1943 = call float @dx.op.unary.f32(i32 7, float %1942)  ; Saturate(value)
  %1944 = fmul fast float %1923, 0x4013FFFFE0000000
  %1945 = fadd fast float %1944, 0xBFFFFFFFE0000000
  %1946 = call float @dx.op.unary.f32(i32 7, float %1945)  ; Saturate(value)
  %1947 = fmul fast float %1923, 0x4004000020000000
  %1948 = fadd fast float %1947, 0xBFF8000040000000
  %1949 = call float @dx.op.unary.f32(i32 7, float %1948)  ; Saturate(value)
  %1950 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1951 = fmul fast float %1512, 1.000000e+01
  %1952 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  %1953 = fmul fast float %1952, 2.000000e+00
  %1954 = fsub fast float 3.000000e+00, %1953
  %1955 = fmul fast float %1952, %1952
  %1956 = fmul fast float %1955, %1954
  %1957 = fsub fast float 1.000000e+00, %1956
  %1958 = fsub fast float 0x3FE3333340000000, %1533
  %1959 = fmul fast float %1958, 0x400AAAAAA0000000
  %1960 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1961 = fmul fast float %1957, %1960
  %1962 = fmul fast float %1545, 0x3FEA2B8620000000
  %1963 = fmul fast float %1546, 0x3FEA2B8620000000
  %1964 = fmul fast float %1547, 0x3FEA2B8620000000
  %1965 = fadd fast float %1962, 0x3FC81DFBA0000000
  %1966 = fmul fast float %1965, %1545
  %1967 = fadd fast float %1966, 0x3F910E6020000000
  %1968 = fadd fast float %1963, 0x3FC81DFBA0000000
  %1969 = fmul fast float %1968, %1546
  %1970 = fadd fast float %1969, 0x3F910E6020000000
  %1971 = fadd fast float %1964, 0x3FC81DFBA0000000
  %1972 = fmul fast float %1971, %1547
  %1973 = fadd fast float %1972, 0x3F910E6020000000
  %1974 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1975 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  %1976 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1977 = fsub fast float %1974, %1545
  %1978 = fsub fast float %1975, %1546
  %1979 = fsub fast float %1976, %1547
  %1980 = fmul fast float %1977, %1950
  %1981 = fmul fast float %1980, %1961
  %1982 = fmul fast float %1978, %1950
  %1983 = fmul fast float %1982, %1961
  %1984 = fmul fast float %1979, %1950
  %1985 = fmul fast float %1984, %1961
  %1986 = fadd fast float %1981, %1545
  %1987 = fadd fast float %1983, %1546
  %1988 = fadd fast float %1985, %1547
  %1989 = fmul fast float %1493, %1493
  %1990 = fmul fast float %1989, %1989
  %1991 = fadd fast float %1946, 1.000000e+00
  %1992 = fsub fast float %1991, %1961
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1995 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1996 = fsub fast float 1.000000e+00, %1990
  %1997 = call float @dx.op.binary.f32(i32 36, float %1993, float %1996)  ; FMin(a,b)
  %1998 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1999 = call float @dx.op.binary.f32(i32 35, float %1997, float %1998)  ; FMax(a,b)
  %2000 = fadd fast float %1995, 0xBFE4CCCCC0000000
  %2001 = fmul fast float %2000, 0x4006DB6DA0000000
  %2002 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2003 = fmul fast float %2002, 2.000000e+00
  %2004 = fsub fast float 3.000000e+00, %2003
  %2005 = bitcast float %1530 to i32
  %2006 = ashr i32 %2005, 1
  %2007 = add nsw i32 %2006, 532487669
  %2008 = bitcast i32 %2007 to float
  %2009 = fsub fast float 1.000000e+00, %2008
  %2010 = bitcast float %2009 to i32
  %2011 = sub nsw i32 2129859010, %2010
  %2012 = bitcast i32 %2011 to float
  %2013 = fmul fast float %2012, 2.000000e+00
  %2014 = bitcast float %1531 to i32
  %2015 = ashr i32 %2014, 1
  %2016 = add nsw i32 %2015, 532487669
  %2017 = bitcast i32 %2016 to float
  %2018 = fsub fast float 1.000000e+00, %2017
  %2019 = bitcast float %2018 to i32
  %2020 = sub nsw i32 2129859010, %2019
  %2021 = bitcast i32 %2020 to float
  %2022 = fmul fast float %2021, 2.000000e+00
  %2023 = bitcast float %1532 to i32
  %2024 = ashr i32 %2023, 1
  %2025 = add nsw i32 %2024, 532487669
  %2026 = bitcast i32 %2025 to float
  %2027 = fsub fast float 1.000000e+00, %2026
  %2028 = bitcast float %2027 to i32
  %2029 = sub nsw i32 2129859010, %2028
  %2030 = bitcast i32 %2029 to float
  %2031 = fmul fast float %2030, 2.000000e+00
  %2032 = fsub fast float 0x4002A9FBE0000000, %2013
  %2033 = fadd fast float %2013, 0x3FD54FDF00000000
  %2034 = bitcast float %2033 to i32
  %2035 = sub nsw i32 2129859010, %2034
  %2036 = bitcast i32 %2035 to float
  %2037 = fmul fast float %2036, %2032
  %2038 = fmul fast float %2037, %2037
  %2039 = fsub fast float 0x4002A9FBE0000000, %2022
  %2040 = fadd fast float %2022, 0x3FD54FDF00000000
  %2041 = bitcast float %2040 to i32
  %2042 = sub nsw i32 2129859010, %2041
  %2043 = bitcast i32 %2042 to float
  %2044 = fmul fast float %2043, %2039
  %2045 = fmul fast float %2044, %2044
  %2046 = fsub fast float 0x4002A9FBE0000000, %2031
  %2047 = fadd fast float %2031, 0x3FD54FDF00000000
  %2048 = bitcast float %2047 to i32
  %2049 = sub nsw i32 2129859010, %2048
  %2050 = bitcast i32 %2049 to float
  %2051 = fmul fast float %2050, %2046
  %2052 = fmul fast float %2051, %2051
  %2053 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2038)  ; FMax(a,b)
  %2054 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2045)  ; FMax(a,b)
  %2055 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2052)  ; FMax(a,b)
  %2056 = fsub fast float 1.000000e+00, %1941
  %2057 = fadd fast float %2056, %1957
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = fsub fast float 1.000000e+00, %1921
  %2060 = fmul fast float %1999, %2059
  %2061 = fmul fast float %2002, %2002
  %2062 = fmul fast float %2061, %2060
  %2063 = fmul fast float %2062, %2004
  %2064 = fmul fast float %2059, 0xBFE99999A0000000
  %2065 = fmul fast float %2064, %1950
  %2066 = fmul fast float %2065, %1961
  %2067 = fadd fast float %2066, 1.000000e+00
  %2068 = fadd fast float %1533, -1.000000e+00
  %2069 = fmul fast float %2067, %2068
  %2070 = fadd fast float %2069, 1.000000e+00
  %2071 = fsub fast float %2053, %1530
  %2072 = fsub fast float %2054, %1531
  %2073 = fsub fast float %2055, %1532
  %2074 = fmul fast float %2063, %2071
  %2075 = fmul fast float %2063, %2072
  %2076 = fmul fast float %2063, %2073
  %2077 = fadd fast float %2074, %1530
  %2078 = fadd fast float %2075, %1531
  %2079 = fadd fast float %2076, %1532
  %2080 = fsub fast float %76, %1509
  %2081 = fsub fast float %77, %1510
  %2082 = fsub fast float %78, %1511
  %2083 = fmul fast float %2063, %2080
  %2084 = fmul fast float %2063, %2081
  %2085 = fmul fast float %2063, %2082
  %2086 = fadd fast float %2083, %1509
  %2087 = fadd fast float %2084, %1510
  %2088 = fadd fast float %2085, %1511
  %2089 = fmul fast float %2063, %2058
  %2090 = call float @dx.op.unary.f32(i32 7, float %2070)  ; Saturate(value)
  %2091 = fsub fast float 1.000000e+00, %2090
  %2092 = fmul fast float %2089, %2091
  %2093 = fadd fast float %2092, %2090
  %2094 = fsub fast float 1.000000e+00, %1493
  %2095 = fmul fast float %2063, %2094
  %2096 = fadd fast float %2095, %1493
  %2097 = call float @dx.op.dot3.f32(i32 55, float %2086, float %2087, float %2088, float %2086, float %2087, float %2088)  ; Dot3(ax,ay,az,bx,by,bz)
  %2098 = call float @dx.op.unary.f32(i32 25, float %2097)  ; Rsqrt(value)
  %2099 = fmul fast float %2086, %2098
  %2100 = fmul fast float %2087, %2098
  %2101 = fmul fast float %2088, %2098
  br label %2102

; <label>:2102                                    ; preds = %1934, %1927
  %2103 = phi float [ %1933, %1927 ], [ %1940, %1934 ]
  %2104 = phi float [ %1932, %1927 ], [ %1938, %1934 ]
  %2105 = phi float [ %1931, %1927 ], [ %1936, %1934 ]
  %2106 = phi float [ %1930, %1927 ], [ %1939, %1934 ]
  %2107 = phi float [ %1929, %1927 ], [ %1937, %1934 ]
  %2108 = phi float [ %1928, %1927 ], [ %1935, %1934 ]
  %2109 = phi float [ %1545, %1927 ], [ %1986, %1934 ]
  %2110 = phi float [ %1546, %1927 ], [ %1987, %1934 ]
  %2111 = phi float [ %1547, %1927 ], [ %1988, %1934 ]
  %2112 = phi float [ %1509, %1927 ], [ %2099, %1934 ]
  %2113 = phi float [ %1510, %1927 ], [ %2100, %1934 ]
  %2114 = phi float [ %1511, %1927 ], [ %2101, %1934 ]
  %2115 = phi float [ %1530, %1927 ], [ %2077, %1934 ]
  %2116 = phi float [ %1531, %1927 ], [ %2078, %1934 ]
  %2117 = phi float [ %1532, %1927 ], [ %2079, %1934 ]
  %2118 = phi float [ %1533, %1927 ], [ %2093, %1934 ]
  %2119 = phi float [ %1493, %1927 ], [ %2096, %1934 ]
  %2120 = fsub fast float -0.000000e+00, %149
  %2121 = select i1 %238, float 0.000000e+00, float %2117
  %2122 = call float @dx.op.dot3.f32(i32 55, float %2112, float %2113, float %2114, float %2105, float %2104, float %2103)  ; Dot3(ax,ay,az,bx,by,bz)
  %2123 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  %2124 = call float @dx.op.dot3.f32(i32 55, float %2108, float %2107, float %2106, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %2125 = fmul fast float %2124, 2.000000e+00
  %2126 = fmul fast float %2125, %2112
  %2127 = fmul fast float %2125, %2113
  %2128 = fmul fast float %2125, %2114
  %2129 = fsub fast float %2108, %2126
  %2130 = fsub fast float %2107, %2127
  %2131 = fsub fast float %2106, %2128
  %2132 = call float @dx.op.binary.f32(i32 36, float %2119, float 1.000000e+00)  ; FMin(a,b)
  %2133 = fsub fast float 1.000000e+00, %2132
  %2134 = bitcast float %2133 to i32
  %2135 = ashr i32 %2134, 1
  %2136 = add nsw i32 %2135, 532487669
  %2137 = bitcast i32 %2136 to float
  %2138 = fsub fast float 1.000000e+00, %2118
  %2139 = call float @dx.op.binary.f32(i32 35, float %2138, float 0x3F847AE140000000)  ; FMax(a,b)
  %2140 = fmul fast float %2139, %2139
  %2141 = fmul fast float %2140, %2140
  %2142 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2137, float %2141, float %2142, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2144 = extractvalue %dx.types.ResRet.f32 %2143, 0
  %2145 = fsub fast float 1.000000e+00, %2119
  %2146 = bitcast float %2145 to i32
  %2147 = sub nsw i32 2129859010, %2146
  %2148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2149 = extractvalue %dx.types.CBufRet.f32 %2148, 0
  %2150 = extractvalue %dx.types.CBufRet.f32 %2148, 1
  %2151 = fadd fast float %2149, %147
  %2152 = fadd fast float %2150, %148
  %2153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.i32 %2153, 0
  %2155 = icmp eq i32 %2154, 1
  br i1 %2155, label %2156, label %2191

; <label>:2156                                    ; preds = %2102
  %2157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2158 = extractvalue %dx.types.CBufRet.f32 %2157, 0
  %2159 = extractvalue %dx.types.CBufRet.f32 %2157, 1
  %2160 = fsub fast float %2151, %2158
  %2161 = fsub fast float %2152, %2159
  %2162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2163 = extractvalue %dx.types.CBufRet.f32 %2162, 0
  %2164 = extractvalue %dx.types.CBufRet.f32 %2162, 1
  %2165 = fmul fast float %2160, %2163
  %2166 = fmul fast float %2161, %2164
  %2167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2165, float %2166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = fcmp fast ogt float %2168, 0.000000e+00
  %2170 = extractvalue %dx.types.CBufRet.i32 %2153, 3
  %2171 = icmp ne i32 %2170, 0
  %2172 = and i1 %2169, %2171
  br i1 %2172, label %2173, label %2191, !dx.controlflow.hints !105

; <label>:2173                                    ; preds = %2156
  %2174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2174, 0
  %2176 = extractvalue %dx.types.CBufRet.f32 %2174, 1
  %2177 = fsub fast float %2151, %2175
  %2178 = fsub fast float %2152, %2176
  %2179 = fmul fast float %2177, %2177
  %2180 = fmul fast float %2178, %2178
  %2181 = fadd fast float %2179, %2180
  %2182 = uitofp i32 %2170 to float
  %2183 = fmul fast float %2182, %2182
  %2184 = fcmp fast ogt float %2181, %2183
  br i1 %2184, label %2191, label %2185

; <label>:2185                                    ; preds = %2173
  %2186 = call float @dx.op.unary.f32(i32 24, float %2181)  ; Sqrt(value)
  %2187 = fsub fast float %2182, %2186
  %2188 = fmul fast float %2187, 0x3F75555560000000
  %2189 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2190 = call float @dx.op.binary.f32(i32 36, float %2189, float %2168)  ; FMin(a,b)
  br label %2191

; <label>:2191                                    ; preds = %2185, %2173, %2156, %2102
  %2192 = phi float [ 1.000000e+00, %2102 ], [ %2190, %2185 ], [ %2168, %2156 ], [ 0.000000e+00, %2173 ]
  %2193 = fcmp fast ogt float %2192, 0.000000e+00
  br i1 %2193, label %2194, label %2293, !dx.controlflow.hints !106

; <label>:2194                                    ; preds = %2191
  %2195 = fadd fast float %178, 5.000000e-01
  %2196 = call float @dx.op.unary.f32(i32 27, float %2195)  ; Round_ni(value)
  %2197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %176, float %177, float %2196, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2198 = extractvalue %dx.types.ResRet.f32 %2197, 0
  %2199 = extractvalue %dx.types.ResRet.f32 %2197, 1
  %2200 = extractvalue %dx.types.ResRet.f32 %2197, 2
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 3
  %2203 = fmul fast float %2202, %2198
  %2204 = fmul fast float %2202, %2199
  %2205 = fmul fast float %2202, %2200
  %2206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %176, float %177, float %2196, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %176, float %177, float %2196, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2209 = extractvalue %dx.types.ResRet.f32 %2208, 0
  %2210 = extractvalue %dx.types.ResRet.f32 %2208, 1
  %2211 = fmul fast float %2209, 2.000000e+00
  %2212 = fmul fast float %2210, 2.000000e+00
  %2213 = fadd fast float %2211, -1.000000e+00
  %2214 = fadd fast float %2212, -1.000000e+00
  %2215 = fadd fast float %2213, %2214
  %2216 = fmul fast float %2215, 5.000000e-01
  %2217 = fsub fast float %2213, %2214
  %2218 = fmul fast float %2217, 5.000000e-01
  %2219 = call float @dx.op.unary.f32(i32 6, float %2216)  ; FAbs(value)
  %2220 = fsub fast float 1.000000e+00, %2219
  %2221 = call float @dx.op.unary.f32(i32 6, float %2218)  ; FAbs(value)
  %2222 = fsub fast float %2220, %2221
  %2223 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2222)  ; FMax(a,b)
  %2224 = call float @dx.op.dot3.f32(i32 55, float %2216, float %2218, float %2223, float %2216, float %2218, float %2223)  ; Dot3(ax,ay,az,bx,by,bz)
  %2225 = bitcast float %2224 to i32
  %2226 = ashr i32 %2225, 1
  %2227 = sub nsw i32 1597250115, %2226
  %2228 = bitcast i32 %2227 to float
  %2229 = fmul fast float %2228, %2216
  %2230 = fmul fast float %2228, %2218
  %2231 = fmul fast float %2228, %2223
  %2232 = fsub fast float 1.000000e+00, %2207
  %2233 = fdiv fast float %2232, %2231
  %2234 = fmul fast float %2231, %76
  %2235 = fmul fast float %2231, %77
  %2236 = fmul fast float %2231, %78
  %2237 = fmul fast float %2229, %72
  %2238 = fmul fast float %2229, %73
  %2239 = fmul fast float %2229, %74
  %2240 = fadd fast float %2234, %2237
  %2241 = fadd fast float %2235, %2238
  %2242 = fadd fast float %2236, %2239
  %2243 = fmul fast float %2230, %111
  %2244 = fmul fast float %2230, %112
  %2245 = fmul fast float %2230, %113
  %2246 = fadd fast float %2240, %2243
  %2247 = fadd fast float %2241, %2244
  %2248 = fadd fast float %2242, %2245
  %2249 = call float @dx.op.dot3.f32(i32 55, float %2246, float %2247, float %2248, float %2246, float %2247, float %2248)  ; Dot3(ax,ay,az,bx,by,bz)
  %2250 = call float @dx.op.unary.f32(i32 25, float %2249)  ; Rsqrt(value)
  %2251 = fmul fast float %2246, %2250
  %2252 = fmul fast float %2247, %2250
  %2253 = fmul fast float %2248, %2250
  %2254 = call float @dx.op.dot3.f32(i32 55, float %2112, float %2113, float %2114, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %2255 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2256 = fmul fast float %2255, 5.000000e-01
  %2257 = fadd fast float %2256, 5.000000e-01
  %2258 = fmul fast float %2257, %2207
  %2259 = call float @dx.op.dot3.f32(i32 55, float %2112, float %2113, float %2114, float %2251, float %2252, float %2253)  ; Dot3(ax,ay,az,bx,by,bz)
  %2260 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2261 = fmul fast float %2260, %2233
  %2262 = fadd fast float %2258, %2261
  %2263 = fsub fast float 5.000000e-01, %2256
  %2264 = fmul fast float %2263, %2109
  %2265 = fmul fast float %2263, %2110
  %2266 = fmul fast float %2263, %2111
  %2267 = fadd fast float %2262, %2264
  %2268 = fmul fast float %2267, %2203
  %2269 = fadd fast float %2262, %2265
  %2270 = fmul fast float %2269, %2204
  %2271 = fadd fast float %2262, %2266
  %2272 = fmul fast float %2271, %2205
  %2273 = call float @dx.op.dot3.f32(i32 55, float %2129, float %2130, float %2131, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %2274 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  %2275 = fmul fast float %2274, 5.000000e-01
  %2276 = fadd fast float %2275, 5.000000e-01
  %2277 = fmul fast float %2276, %2207
  %2278 = call float @dx.op.dot3.f32(i32 55, float %2129, float %2130, float %2131, float %2251, float %2252, float %2253)  ; Dot3(ax,ay,az,bx,by,bz)
  %2279 = call float @dx.op.unary.f32(i32 7, float %2278)  ; Saturate(value)
  %2280 = fmul fast float %2279, %2233
  %2281 = fadd fast float %2277, %2280
  %2282 = fsub fast float 5.000000e-01, %2275
  %2283 = fmul fast float %2282, %2109
  %2284 = fmul fast float %2282, %2110
  %2285 = fmul fast float %2282, %2111
  %2286 = fadd fast float %2281, %2283
  %2287 = fmul fast float %2286, %2203
  %2288 = fadd fast float %2281, %2284
  %2289 = fmul fast float %2288, %2204
  %2290 = fadd fast float %2281, %2285
  %2291 = fmul fast float %2290, %2205
  %2292 = call float @dx.op.dot3.f32(i32 55, float %2203, float %2204, float %2205, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2293

; <label>:2293                                    ; preds = %2194, %2191
  %2294 = phi float [ %2292, %2194 ], [ 0.000000e+00, %2191 ]
  %2295 = phi float [ %2287, %2194 ], [ 0.000000e+00, %2191 ]
  %2296 = phi float [ %2289, %2194 ], [ 0.000000e+00, %2191 ]
  %2297 = phi float [ %2291, %2194 ], [ 0.000000e+00, %2191 ]
  %2298 = phi float [ %2268, %2194 ], [ 0.000000e+00, %2191 ]
  %2299 = phi float [ %2270, %2194 ], [ 0.000000e+00, %2191 ]
  %2300 = phi float [ %2272, %2194 ], [ 0.000000e+00, %2191 ]
  %2301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2302 = extractvalue %dx.types.CBufRet.f32 %2301, 0
  %2303 = fcmp fast ogt float %2302, 0.000000e+00
  %2304 = and i1 %2193, %2303
  br i1 %2304, label %2305, label %2509, !dx.controlflow.hints !107

; <label>:2305                                    ; preds = %2293
  %2306 = extractvalue %dx.types.CBufRet.f32 %2148, 2
  %2307 = fadd fast float %2306, %149
  %2308 = fmul fast float %2112, 3.200000e+01
  %2309 = fmul fast float %2113, 3.200000e+01
  %2310 = fadd fast float %2151, %2308
  %2311 = fadd fast float %2152, %2309
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.f32 %2312, 0
  %2314 = extractvalue %dx.types.CBufRet.f32 %2312, 1
  %2315 = fsub fast float %2310, %2313
  %2316 = fsub fast float %2311, %2314
  %2317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2318 = extractvalue %dx.types.CBufRet.f32 %2317, 0
  %2319 = extractvalue %dx.types.CBufRet.f32 %2317, 1
  %2320 = fmul fast float %2315, %2318
  %2321 = fmul fast float %2316, %2319
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.CBufRet.f32 %2322, 1
  %2325 = fsub fast float %2151, %2323
  %2326 = fsub fast float %2152, %2324
  %2327 = fmul fast float %2325, %2325
  %2328 = fmul fast float %2326, %2326
  %2329 = fadd fast float %2327, %2328
  %2330 = call float @dx.op.unary.f32(i32 24, float %2329)  ; Sqrt(value)
  %2331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2332 = extractvalue %dx.types.CBufRet.f32 %2331, 0
  %2333 = extractvalue %dx.types.CBufRet.f32 %2331, 1
  %2334 = fsub fast float %2330, %2332
  %2335 = fdiv fast float %2334, %2333
  %2336 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2337 = fmul fast float %2336, 2.000000e+00
  %2338 = fsub fast float 3.000000e+00, %2337
  %2339 = fmul fast float %2336, %2336
  %2340 = fmul fast float %2339, %2338
  %2341 = fcmp fast oge float %2320, 0.000000e+00
  %2342 = fcmp fast ole float %2320, 1.000000e+00
  %2343 = and i1 %2342, %2341
  %2344 = fcmp fast oge float %2321, 0.000000e+00
  %2345 = and i1 %2344, %2343
  %2346 = fcmp fast ole float %2321, 1.000000e+00
  %2347 = and i1 %2346, %2345
  %2348 = fcmp fast ogt float %2340, 0.000000e+00
  %2349 = and i1 %2348, %2347
  br i1 %2349, label %2350, label %2473, !dx.controlflow.hints !108

; <label>:2350                                    ; preds = %2305
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 2
  %2353 = extractvalue %dx.types.CBufRet.f32 %2351, 3
  %2354 = fmul fast float %2352, %2320
  %2355 = fmul fast float %2353, %2321
  %2356 = call float @dx.op.unary.f32(i32 27, float %2354)  ; Round_ni(value)
  %2357 = call float @dx.op.unary.f32(i32 27, float %2355)  ; Round_ni(value)
  %2358 = fptosi float %2356 to i32
  %2359 = fptosi float %2357 to i32
  %2360 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2358, i32 %2359, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = lshr i32 %2361, 16
  %2363 = icmp eq i32 %2362, 65535
  br i1 %2363, label %2473, label %2364

; <label>:2364                                    ; preds = %2350
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 0
  %2367 = fmul fast float %2366, %2320
  %2368 = extractvalue %dx.types.CBufRet.f32 %2365, 1
  %2369 = fadd fast float %2367, %2368
  %2370 = extractvalue %dx.types.CBufRet.f32 %2365, 2
  %2371 = fmul fast float %2370, %2321
  %2372 = extractvalue %dx.types.CBufRet.f32 %2365, 3
  %2373 = fadd fast float %2371, %2372
  %2374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2369, float %2373, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2375 = extractvalue %dx.types.ResRet.f32 %2374, 0
  %2376 = extractvalue %dx.types.ResRet.f32 %2374, 1
  %2377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = extractvalue %dx.types.CBufRet.f32 %2377, 1
  %2379 = extractvalue %dx.types.CBufRet.f32 %2377, 0
  %2380 = fsub fast float %2378, %2379
  %2381 = fmul fast float %2380, %2375
  %2382 = fadd fast float %2381, %2379
  %2383 = extractvalue %dx.types.CBufRet.f32 %2377, 3
  %2384 = extractvalue %dx.types.CBufRet.f32 %2377, 2
  %2385 = fsub fast float %2383, %2384
  %2386 = fmul fast float %2385, %2376
  %2387 = fadd fast float %2386, %2384
  %2388 = fsub fast float %2307, %2382
  %2389 = fsub fast float %2387, %2382
  %2390 = fdiv fast float %2388, %2389
  %2391 = call float @dx.op.unary.f32(i32 7, float %2390)  ; Saturate(value)
  %2392 = extractvalue %dx.types.CBufRet.f32 %2301, 1
  %2393 = extractvalue %dx.types.CBufRet.f32 %2351, 0
  %2394 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2395 = fmul fast float %2393, %2320
  %2396 = fmul fast float %2394, %2321
  %2397 = fmul fast float %2395, 1.250000e-01
  %2398 = fmul fast float %2396, 1.250000e-01
  %2399 = call float @dx.op.unary.f32(i32 27, float %2397)  ; Round_ni(value)
  %2400 = call float @dx.op.unary.f32(i32 27, float %2398)  ; Round_ni(value)
  %2401 = fmul fast float %2399, 8.000000e+00
  %2402 = fmul fast float %2400, 8.000000e+00
  %2403 = fsub fast float %2395, %2401
  %2404 = fsub fast float %2396, %2402
  %2405 = fadd fast float %2403, 5.000000e-01
  %2406 = fadd fast float %2404, 5.000000e-01
  %2407 = and i32 %2362, 255
  %2408 = lshr i32 %2361, 24
  %2409 = mul nuw nsw i32 %2407, 9
  %2410 = uitofp i32 %2409 to float
  %2411 = mul nuw nsw i32 %2408, 9
  %2412 = uitofp i32 %2411 to float
  %2413 = fadd fast float %2405, %2410
  %2414 = fadd fast float %2406, %2412
  %2415 = fdiv fast float %2413, %2302
  %2416 = fdiv fast float %2414, %2392
  %2417 = fmul fast float %2391, 4.375000e-01
  %2418 = fadd fast float %2417, 3.125000e-02
  %2419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2415, float %2416, float %2418, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.ResRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.ResRet.f32 %2419, 2
  %2423 = fadd fast float %2417, 5.312500e-01
  %2424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2415, float %2416, float %2423, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2425 = extractvalue %dx.types.ResRet.f32 %2424, 0
  %2426 = extractvalue %dx.types.ResRet.f32 %2424, 1
  %2427 = extractvalue %dx.types.ResRet.f32 %2424, 2
  %2428 = fmul fast float %2425, 2.000000e+00
  %2429 = fmul fast float %2426, 2.000000e+00
  %2430 = fmul fast float %2427, 2.000000e+00
  %2431 = fadd fast float %2428, -1.000000e+00
  %2432 = fadd fast float %2429, -1.000000e+00
  %2433 = fadd fast float %2430, -1.000000e+00
  %2434 = fmul fast float %2431, %2431
  %2435 = fmul fast float %2432, %2432
  %2436 = fadd fast float %2434, %2435
  %2437 = fmul fast float %2433, %2433
  %2438 = fadd fast float %2436, %2437
  %2439 = call float @dx.op.unary.f32(i32 24, float %2438)  ; Sqrt(value)
  %2440 = fcmp fast ogt float %2439, 0.000000e+00
  br i1 %2440, label %2441, label %2445

; <label>:2441                                    ; preds = %2364
  %2442 = fdiv fast float %2431, %2439
  %2443 = fdiv fast float %2432, %2439
  %2444 = fdiv fast float %2433, %2439
  br label %2445

; <label>:2445                                    ; preds = %2441, %2364
  %2446 = phi float [ %2442, %2441 ], [ 0.000000e+00, %2364 ]
  %2447 = phi float [ %2443, %2441 ], [ 0.000000e+00, %2364 ]
  %2448 = phi float [ %2444, %2441 ], [ 0.000000e+00, %2364 ]
  %2449 = call float @dx.op.dot3.f32(i32 55, float %2446, float %2447, float %2448, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %2450 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2449)  ; FMax(a,b)
  %2451 = fmul fast float %2450, 0x400C5BF8A0000000
  %2452 = fmul fast float %2420, %2340
  %2453 = fmul fast float %2452, %2451
  %2454 = fmul fast float %2421, %2340
  %2455 = fmul fast float %2454, %2451
  %2456 = fmul fast float %2422, %2340
  %2457 = fmul fast float %2456, %2451
  %2458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.f32 %2458, 3
  %2460 = fmul fast float %2453, %2459
  %2461 = fmul fast float %2455, %2459
  %2462 = fmul fast float %2457, %2459
  %2463 = fcmp fast ogt float %2307, %2387
  br i1 %2463, label %2464, label %2473

; <label>:2464                                    ; preds = %2445
  %2465 = fmul fast float %2389, 0x3FC24924A0000000
  %2466 = fsub fast float %2307, %2387
  %2467 = fdiv fast float %2466, %2465
  %2468 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2469 = fsub fast float 1.000000e+00, %2468
  %2470 = fmul fast float %2469, %2460
  %2471 = fmul fast float %2469, %2461
  %2472 = fmul fast float %2469, %2462
  br label %2473

; <label>:2473                                    ; preds = %2464, %2445, %2350, %2305
  %2474 = phi float [ %2472, %2464 ], [ %2462, %2445 ], [ 0.000000e+00, %2350 ], [ 0.000000e+00, %2305 ]
  %2475 = phi float [ %2471, %2464 ], [ %2461, %2445 ], [ 0.000000e+00, %2350 ], [ 0.000000e+00, %2305 ]
  %2476 = phi float [ %2470, %2464 ], [ %2460, %2445 ], [ 0.000000e+00, %2350 ], [ 0.000000e+00, %2305 ]
  %2477 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2476)  ; FMax(a,b)
  %2478 = fmul fast float %2477, 0x3FD20DD760000000
  %2479 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2129, float %2130, float %2131)  ; Dot3(ax,ay,az,bx,by,bz)
  %2480 = fmul fast float %2479, 0x3FDF454380000000
  %2481 = fmul fast float %2479, %2479
  %2482 = fmul fast float %2481, 0x3FEE471020000000
  %2483 = fadd fast float %2482, 0xBFD42F6020000000
  %2484 = call float @dx.op.dot3.f32(i32 55, float %2477, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2480, float %2483)  ; Dot3(ax,ay,az,bx,by,bz)
  %2485 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2475)  ; FMax(a,b)
  %2486 = fmul fast float %2485, 0x3FD20DD760000000
  %2487 = call float @dx.op.dot3.f32(i32 55, float %2485, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2480, float %2483)  ; Dot3(ax,ay,az,bx,by,bz)
  %2488 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2474)  ; FMax(a,b)
  %2489 = fmul fast float %2488, 0x3FD20DD760000000
  %2490 = call float @dx.op.dot3.f32(i32 55, float %2488, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2480, float %2483)  ; Dot3(ax,ay,az,bx,by,bz)
  %2491 = call float @dx.op.binary.f32(i32 35, float %2478, float 0.000000e+00)  ; FMax(a,b)
  %2492 = call float @dx.op.binary.f32(i32 35, float %2486, float 0.000000e+00)  ; FMax(a,b)
  %2493 = call float @dx.op.binary.f32(i32 35, float %2489, float 0.000000e+00)  ; FMax(a,b)
  %2494 = call float @dx.op.binary.f32(i32 35, float %2484, float 0.000000e+00)  ; FMax(a,b)
  %2495 = call float @dx.op.binary.f32(i32 35, float %2487, float 0.000000e+00)  ; FMax(a,b)
  %2496 = call float @dx.op.binary.f32(i32 35, float %2490, float 0.000000e+00)  ; FMax(a,b)
  %2497 = fmul fast float %2491, %2192
  %2498 = fmul fast float %2492, %2192
  %2499 = fmul fast float %2493, %2192
  %2500 = fadd fast float %2497, %2298
  %2501 = fadd fast float %2498, %2299
  %2502 = fadd fast float %2499, %2300
  %2503 = fmul fast float %2494, %2192
  %2504 = fmul fast float %2495, %2192
  %2505 = fmul fast float %2496, %2192
  %2506 = fadd fast float %2503, %2295
  %2507 = fadd fast float %2504, %2296
  %2508 = fadd fast float %2505, %2297
  br label %2509

; <label>:2509                                    ; preds = %2473, %2293
  %2510 = phi float [ %2506, %2473 ], [ %2295, %2293 ]
  %2511 = phi float [ %2507, %2473 ], [ %2296, %2293 ]
  %2512 = phi float [ %2508, %2473 ], [ %2297, %2293 ]
  %2513 = phi float [ %2500, %2473 ], [ %2298, %2293 ]
  %2514 = phi float [ %2501, %2473 ], [ %2299, %2293 ]
  %2515 = phi float [ %2502, %2473 ], [ %2300, %2293 ]
  %2516 = fcmp fast olt float %2192, 1.000000e+00
  br i1 %2516, label %2517, label %3340, !dx.controlflow.hints !109

; <label>:2517                                    ; preds = %2509
  %2518 = extractvalue %dx.types.CBufRet.f32 %2148, 2
  %2519 = fadd fast float %2518, %149
  %2520 = fmul fast float %2112, 3.200000e+01
  %2521 = fmul fast float %2113, 3.200000e+01
  %2522 = fadd fast float %2151, %2520
  %2523 = fadd fast float %2152, %2521
  %2524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2525 = extractvalue %dx.types.CBufRet.f32 %2524, 0
  %2526 = extractvalue %dx.types.CBufRet.f32 %2524, 1
  %2527 = fsub fast float %2522, %2525
  %2528 = fsub fast float %2523, %2526
  %2529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2530 = extractvalue %dx.types.CBufRet.f32 %2529, 0
  %2531 = extractvalue %dx.types.CBufRet.f32 %2529, 1
  %2532 = fmul fast float %2527, %2530
  %2533 = fmul fast float %2528, %2531
  %2534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2535 = extractvalue %dx.types.CBufRet.f32 %2534, 0
  %2536 = fmul fast float %2532, %2535
  %2537 = extractvalue %dx.types.CBufRet.f32 %2534, 1
  %2538 = fadd fast float %2536, %2537
  %2539 = extractvalue %dx.types.CBufRet.f32 %2534, 2
  %2540 = fmul fast float %2539, %2533
  %2541 = extractvalue %dx.types.CBufRet.f32 %2534, 3
  %2542 = fadd fast float %2540, %2541
  %2543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2538, float %2542, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2544 = extractvalue %dx.types.ResRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.ResRet.f32 %2543, 1
  %2546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2547 = extractvalue %dx.types.CBufRet.f32 %2546, 1
  %2548 = extractvalue %dx.types.CBufRet.f32 %2546, 0
  %2549 = fsub fast float %2547, %2548
  %2550 = fmul fast float %2549, %2544
  %2551 = fadd fast float %2550, %2548
  %2552 = extractvalue %dx.types.CBufRet.f32 %2546, 3
  %2553 = extractvalue %dx.types.CBufRet.f32 %2546, 2
  %2554 = fsub fast float %2552, %2553
  %2555 = fmul fast float %2554, %2545
  %2556 = fadd fast float %2555, %2553
  %2557 = fsub fast float %2519, %2551
  %2558 = fsub fast float %2556, %2551
  %2559 = fdiv fast float %2557, %2558
  %2560 = call float @dx.op.unary.f32(i32 7, float %2559)  ; Saturate(value)
  %2561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.f32 %2561, 0
  %2563 = fmul fast float %2562, %2560
  %2564 = extractvalue %dx.types.CBufRet.f32 %2561, 1
  %2565 = fadd fast float %2563, %2564
  %2566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2538, float %2542, float %2565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2567 = extractvalue %dx.types.ResRet.f32 %2566, 0
  %2568 = extractvalue %dx.types.ResRet.f32 %2566, 1
  %2569 = extractvalue %dx.types.ResRet.f32 %2566, 2
  %2570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2571 = extractvalue %dx.types.CBufRet.f32 %2570, 0
  %2572 = extractvalue %dx.types.CBufRet.f32 %2570, 1
  %2573 = extractvalue %dx.types.CBufRet.f32 %2570, 2
  %2574 = fmul fast float %2571, %2567
  %2575 = fmul fast float %2572, %2568
  %2576 = fmul fast float %2573, %2569
  %2577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.f32 %2577, 0
  %2579 = extractvalue %dx.types.CBufRet.f32 %2577, 1
  %2580 = extractvalue %dx.types.CBufRet.f32 %2577, 2
  %2581 = fadd fast float %2574, %2578
  %2582 = fadd fast float %2575, %2579
  %2583 = fadd fast float %2576, %2580
  %2584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2585 = extractvalue %dx.types.CBufRet.f32 %2584, 0
  %2586 = fmul fast float %2585, %2532
  %2587 = extractvalue %dx.types.CBufRet.f32 %2584, 1
  %2588 = fadd fast float %2586, %2587
  %2589 = extractvalue %dx.types.CBufRet.f32 %2584, 2
  %2590 = fmul fast float %2589, %2533
  %2591 = extractvalue %dx.types.CBufRet.f32 %2584, 3
  %2592 = fadd fast float %2590, %2591
  %2593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2594 = extractvalue %dx.types.CBufRet.f32 %2593, 0
  %2595 = extractvalue %dx.types.CBufRet.f32 %2593, 1
  %2596 = extractvalue %dx.types.CBufRet.f32 %2593, 2
  %2597 = extractvalue %dx.types.CBufRet.f32 %2593, 3
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 0
  %2600 = extractvalue %dx.types.CBufRet.f32 %2598, 1
  %2601 = extractvalue %dx.types.CBufRet.f32 %2598, 2
  %2602 = extractvalue %dx.types.CBufRet.f32 %2598, 3
  %2603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2588, float %2592, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2604 = extractvalue %dx.types.ResRet.f32 %2603, 0
  %2605 = extractvalue %dx.types.ResRet.f32 %2603, 1
  %2606 = extractvalue %dx.types.ResRet.f32 %2603, 2
  %2607 = extractvalue %dx.types.ResRet.f32 %2603, 3
  %2608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2588, float %2592, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2609 = extractvalue %dx.types.ResRet.f32 %2608, 0
  %2610 = extractvalue %dx.types.ResRet.f32 %2608, 1
  %2611 = extractvalue %dx.types.ResRet.f32 %2608, 2
  %2612 = extractvalue %dx.types.ResRet.f32 %2608, 3
  %2613 = fmul fast float %2604, %2581
  %2614 = fmul fast float %2609, %2581
  %2615 = fmul fast float %2611, %2581
  %2616 = fmul fast float %2607, %2581
  %2617 = fadd fast float %2613, %2594
  %2618 = fadd fast float %2614, %2595
  %2619 = fadd fast float %2615, %2596
  %2620 = fadd fast float %2616, %2597
  %2621 = fmul fast float %2605, %2581
  %2622 = fmul fast float %2610, %2581
  %2623 = fadd fast float %2621, %2599
  %2624 = fadd fast float %2622, %2600
  %2625 = fmul fast float %2606, %2581
  %2626 = fmul fast float %2612, %2581
  %2627 = fadd fast float %2625, %2601
  %2628 = fadd fast float %2626, %2602
  %2629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2588, float %2592, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2630 = extractvalue %dx.types.ResRet.f32 %2629, 0
  %2631 = extractvalue %dx.types.ResRet.f32 %2629, 1
  %2632 = extractvalue %dx.types.ResRet.f32 %2629, 2
  %2633 = extractvalue %dx.types.ResRet.f32 %2629, 3
  %2634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2588, float %2592, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2635 = extractvalue %dx.types.ResRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.ResRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.ResRet.f32 %2634, 2
  %2638 = extractvalue %dx.types.ResRet.f32 %2634, 3
  %2639 = fmul fast float %2630, %2582
  %2640 = fmul fast float %2635, %2582
  %2641 = fmul fast float %2637, %2582
  %2642 = fmul fast float %2633, %2582
  %2643 = fadd fast float %2617, %2639
  %2644 = fadd fast float %2618, %2640
  %2645 = fadd fast float %2619, %2641
  %2646 = fadd fast float %2620, %2642
  %2647 = fmul fast float %2631, %2582
  %2648 = fmul fast float %2636, %2582
  %2649 = fadd fast float %2623, %2647
  %2650 = fadd fast float %2624, %2648
  %2651 = fmul fast float %2632, %2582
  %2652 = fmul fast float %2638, %2582
  %2653 = fadd fast float %2627, %2651
  %2654 = fadd fast float %2628, %2652
  %2655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2588, float %2592, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2656 = extractvalue %dx.types.ResRet.f32 %2655, 0
  %2657 = extractvalue %dx.types.ResRet.f32 %2655, 1
  %2658 = extractvalue %dx.types.ResRet.f32 %2655, 2
  %2659 = extractvalue %dx.types.ResRet.f32 %2655, 3
  %2660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2588, float %2592, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2661 = extractvalue %dx.types.ResRet.f32 %2660, 0
  %2662 = extractvalue %dx.types.ResRet.f32 %2660, 1
  %2663 = extractvalue %dx.types.ResRet.f32 %2660, 2
  %2664 = extractvalue %dx.types.ResRet.f32 %2660, 3
  %2665 = fmul fast float %2656, %2583
  %2666 = fmul fast float %2661, %2583
  %2667 = fmul fast float %2663, %2583
  %2668 = fmul fast float %2659, %2583
  %2669 = fadd fast float %2643, %2665
  %2670 = fadd fast float %2644, %2666
  %2671 = fadd fast float %2645, %2667
  %2672 = fadd fast float %2646, %2668
  %2673 = fmul fast float %2657, %2583
  %2674 = fmul fast float %2662, %2583
  %2675 = fadd fast float %2649, %2673
  %2676 = fadd fast float %2650, %2674
  %2677 = fmul fast float %2658, %2583
  %2678 = fmul fast float %2664, %2583
  %2679 = fadd fast float %2653, %2677
  %2680 = fadd fast float %2654, %2678
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 0
  %2683 = fsub fast float %2151, %2682
  %2684 = fsub fast float %2525, %2151
  %2685 = call float @dx.op.binary.f32(i32 35, float %2684, float %2683)  ; FMax(a,b)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2681, 1
  %2687 = fsub fast float %2152, %2686
  %2688 = fsub fast float %2526, %2152
  %2689 = call float @dx.op.binary.f32(i32 35, float %2688, float %2687)  ; FMax(a,b)
  %2690 = call float @dx.op.binary.f32(i32 35, float %2685, float %2689)  ; FMax(a,b)
  %2691 = extractvalue %dx.types.CBufRet.f32 %2529, 3
  %2692 = fmul fast float %2691, %2690
  %2693 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 0
  %2696 = extractvalue %dx.types.CBufRet.f32 %2694, 1
  %2697 = extractvalue %dx.types.CBufRet.f32 %2694, 2
  %2698 = extractvalue %dx.types.CBufRet.f32 %2694, 3
  %2699 = fsub fast float %2695, %2669
  %2700 = fsub fast float %2696, %2670
  %2701 = fsub fast float %2697, %2671
  %2702 = fsub fast float %2698, %2672
  %2703 = fmul fast float %2699, %2693
  %2704 = fmul fast float %2700, %2693
  %2705 = fmul fast float %2701, %2693
  %2706 = fmul fast float %2702, %2693
  %2707 = fadd fast float %2703, %2669
  %2708 = fadd fast float %2704, %2670
  %2709 = fadd fast float %2705, %2671
  %2710 = fadd fast float %2706, %2672
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.CBufRet.f32 %2711, 1
  %2714 = fsub fast float %2712, %2675
  %2715 = fsub fast float %2713, %2676
  %2716 = fmul fast float %2714, %2693
  %2717 = fmul fast float %2715, %2693
  %2718 = fadd fast float %2716, %2675
  %2719 = fadd fast float %2717, %2676
  %2720 = extractvalue %dx.types.CBufRet.f32 %2711, 2
  %2721 = extractvalue %dx.types.CBufRet.f32 %2711, 3
  %2722 = fsub fast float %2720, %2679
  %2723 = fsub fast float %2721, %2680
  %2724 = fmul fast float %2722, %2693
  %2725 = fmul fast float %2723, %2693
  %2726 = fadd fast float %2724, %2679
  %2727 = fadd fast float %2725, %2680
  %2728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.f32 %2728, 0
  %2730 = fmul fast float %2729, %2707
  %2731 = fmul fast float %2729, %2708
  %2732 = fmul fast float %2729, %2709
  %2733 = fmul fast float %2729, %2710
  %2734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2734, 0
  %2736 = fmul fast float %2735, %2718
  %2737 = fmul fast float %2735, %2719
  %2738 = fadd fast float %2736, %2730
  %2739 = fadd fast float %2737, %2732
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2742 = fmul fast float %2741, %2726
  %2743 = fmul fast float %2741, %2727
  %2744 = fadd fast float %2738, %2742
  %2745 = fadd fast float %2739, %2743
  %2746 = extractvalue %dx.types.CBufRet.f32 %2728, 1
  %2747 = fmul fast float %2746, %2707
  %2748 = fmul fast float %2746, %2708
  %2749 = fmul fast float %2746, %2709
  %2750 = fmul fast float %2746, %2710
  %2751 = extractvalue %dx.types.CBufRet.f32 %2734, 1
  %2752 = fmul fast float %2751, %2718
  %2753 = fmul fast float %2751, %2719
  %2754 = fadd fast float %2752, %2747
  %2755 = fadd fast float %2753, %2749
  %2756 = extractvalue %dx.types.CBufRet.f32 %2740, 1
  %2757 = fmul fast float %2756, %2726
  %2758 = fmul fast float %2756, %2727
  %2759 = fadd fast float %2754, %2757
  %2760 = fadd fast float %2755, %2758
  %2761 = extractvalue %dx.types.CBufRet.f32 %2728, 2
  %2762 = fmul fast float %2761, %2707
  %2763 = fmul fast float %2761, %2708
  %2764 = fmul fast float %2761, %2709
  %2765 = fmul fast float %2761, %2710
  %2766 = extractvalue %dx.types.CBufRet.f32 %2734, 2
  %2767 = fmul fast float %2766, %2718
  %2768 = fmul fast float %2766, %2719
  %2769 = fadd fast float %2767, %2762
  %2770 = fadd fast float %2768, %2764
  %2771 = extractvalue %dx.types.CBufRet.f32 %2740, 2
  %2772 = fmul fast float %2771, %2726
  %2773 = fmul fast float %2771, %2727
  %2774 = fadd fast float %2769, %2772
  %2775 = fadd fast float %2770, %2773
  %2776 = fmul fast float %2763, %2763
  %2777 = fmul fast float %2775, %2775
  %2778 = fmul fast float %2765, %2765
  %2779 = fadd fast float %2778, %2776
  %2780 = fadd fast float %2779, %2777
  %2781 = call float @dx.op.unary.f32(i32 24, float %2780)  ; Sqrt(value)
  %2782 = fcmp fast ugt float %2781, 0.000000e+00
  br i1 %2782, label %2783, label %2798

; <label>:2783                                    ; preds = %2517
  %2784 = fsub fast float -0.000000e+00, %2765
  %2785 = fdiv fast float %2784, %2781
  %2786 = fsub fast float -0.000000e+00, %2763
  %2787 = fdiv fast float %2786, %2781
  %2788 = fdiv fast float %2775, %2781
  %2789 = fmul fast float %2774, 0x3FE279A760000000
  %2790 = fmul fast float %2787, %2763
  %2791 = fmul fast float %2788, %2775
  %2792 = fmul fast float %2785, %2765
  %2793 = fadd fast float %2790, %2792
  %2794 = fsub fast float %2793, %2791
  %2795 = call float @dx.op.unary.f32(i32 6, float %2794)  ; FAbs(value)
  %2796 = fadd fast float %2795, 0x3DDB7CDFE0000000
  %2797 = fdiv fast float %2789, %2796
  br label %2798

; <label>:2798                                    ; preds = %2783, %2517
  %2799 = phi float [ %2797, %2783 ], [ 1.000000e+00, %2517 ]
  %2800 = fmul fast float %2748, %2748
  %2801 = fmul fast float %2760, %2760
  %2802 = fmul fast float %2750, %2750
  %2803 = fadd fast float %2802, %2800
  %2804 = fadd fast float %2803, %2801
  %2805 = call float @dx.op.unary.f32(i32 24, float %2804)  ; Sqrt(value)
  %2806 = fcmp fast ugt float %2805, 0.000000e+00
  br i1 %2806, label %2807, label %2822

; <label>:2807                                    ; preds = %2798
  %2808 = fsub fast float -0.000000e+00, %2750
  %2809 = fdiv fast float %2808, %2805
  %2810 = fsub fast float -0.000000e+00, %2748
  %2811 = fdiv fast float %2810, %2805
  %2812 = fdiv fast float %2760, %2805
  %2813 = fmul fast float %2759, 0x3FE279A760000000
  %2814 = fmul fast float %2811, %2748
  %2815 = fmul fast float %2812, %2760
  %2816 = fmul fast float %2809, %2750
  %2817 = fadd fast float %2814, %2816
  %2818 = fsub fast float %2817, %2815
  %2819 = call float @dx.op.unary.f32(i32 6, float %2818)  ; FAbs(value)
  %2820 = fadd fast float %2819, 0x3DDB7CDFE0000000
  %2821 = fdiv fast float %2813, %2820
  br label %2822

; <label>:2822                                    ; preds = %2807, %2798
  %2823 = phi float [ %2821, %2807 ], [ 1.000000e+00, %2798 ]
  %2824 = call float @dx.op.binary.f32(i32 36, float %2823, float %2799)  ; FMin(a,b)
  %2825 = fmul fast float %2731, %2731
  %2826 = fmul fast float %2745, %2745
  %2827 = fmul fast float %2733, %2733
  %2828 = fadd fast float %2827, %2825
  %2829 = fadd fast float %2828, %2826
  %2830 = call float @dx.op.unary.f32(i32 24, float %2829)  ; Sqrt(value)
  %2831 = fcmp fast ugt float %2830, 0.000000e+00
  br i1 %2831, label %2832, label %2847

; <label>:2832                                    ; preds = %2822
  %2833 = fsub fast float -0.000000e+00, %2733
  %2834 = fdiv fast float %2833, %2830
  %2835 = fsub fast float -0.000000e+00, %2731
  %2836 = fdiv fast float %2835, %2830
  %2837 = fdiv fast float %2745, %2830
  %2838 = fmul fast float %2744, 0x3FE279A760000000
  %2839 = fmul fast float %2836, %2731
  %2840 = fmul fast float %2837, %2745
  %2841 = fmul fast float %2834, %2733
  %2842 = fadd fast float %2839, %2841
  %2843 = fsub fast float %2842, %2840
  %2844 = call float @dx.op.unary.f32(i32 6, float %2843)  ; FAbs(value)
  %2845 = fadd fast float %2844, 0x3DDB7CDFE0000000
  %2846 = fdiv fast float %2838, %2845
  br label %2847

; <label>:2847                                    ; preds = %2832, %2822
  %2848 = phi float [ %2846, %2832 ], [ 1.000000e+00, %2822 ]
  %2849 = call float @dx.op.binary.f32(i32 36, float %2848, float %2824)  ; FMin(a,b)
  %2850 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2851 = fcmp fast olt float %2850, 1.000000e+00
  br i1 %2851, label %2852, label %2862

; <label>:2852                                    ; preds = %2847
  %2853 = fmul fast float %2850, %2731
  %2854 = fmul fast float %2850, %2745
  %2855 = fmul fast float %2850, %2733
  %2856 = fmul fast float %2850, %2748
  %2857 = fmul fast float %2850, %2760
  %2858 = fmul fast float %2850, %2750
  %2859 = fmul fast float %2850, %2763
  %2860 = fmul fast float %2850, %2775
  %2861 = fmul fast float %2850, %2765
  br label %2862

; <label>:2862                                    ; preds = %2852, %2847
  %2863 = phi float [ %2859, %2852 ], [ %2763, %2847 ]
  %2864 = phi float [ %2860, %2852 ], [ %2775, %2847 ]
  %2865 = phi float [ %2861, %2852 ], [ %2765, %2847 ]
  %2866 = phi float [ %2856, %2852 ], [ %2748, %2847 ]
  %2867 = phi float [ %2857, %2852 ], [ %2760, %2847 ]
  %2868 = phi float [ %2858, %2852 ], [ %2750, %2847 ]
  %2869 = phi float [ %2853, %2852 ], [ %2731, %2847 ]
  %2870 = phi float [ %2854, %2852 ], [ %2745, %2847 ]
  %2871 = phi float [ %2855, %2852 ], [ %2733, %2847 ]
  %2872 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2744)  ; FMax(a,b)
  %2873 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2759)  ; FMax(a,b)
  %2874 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2774)  ; FMax(a,b)
  %2875 = fcmp fast oge float %2532, 0.000000e+00
  %2876 = and i1 %2875, %2303
  %2877 = fcmp fast ole float %2532, 1.000000e+00
  %2878 = and i1 %2877, %2876
  %2879 = fcmp fast oge float %2533, 0.000000e+00
  %2880 = and i1 %2879, %2878
  %2881 = fcmp fast ole float %2533, 1.000000e+00
  %2882 = and i1 %2881, %2880
  br i1 %2882, label %2883, label %3028, !dx.controlflow.hints !110

; <label>:2883                                    ; preds = %2862
  %2884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2884, 2
  %2886 = extractvalue %dx.types.CBufRet.f32 %2884, 3
  %2887 = fmul fast float %2885, %2532
  %2888 = fmul fast float %2886, %2533
  %2889 = call float @dx.op.unary.f32(i32 27, float %2887)  ; Round_ni(value)
  %2890 = call float @dx.op.unary.f32(i32 27, float %2888)  ; Round_ni(value)
  %2891 = fptosi float %2889 to i32
  %2892 = fptosi float %2890 to i32
  %2893 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2891, i32 %2892, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 65535
  %2896 = lshr i32 %2894, 16
  %2897 = icmp eq i32 %2895, 65535
  br i1 %2897, label %2934, label %2898

; <label>:2898                                    ; preds = %2883
  %2899 = extractvalue %dx.types.CBufRet.f32 %2301, 1
  %2900 = extractvalue %dx.types.CBufRet.f32 %2884, 0
  %2901 = extractvalue %dx.types.CBufRet.f32 %2884, 1
  %2902 = fmul fast float %2900, %2532
  %2903 = fmul fast float %2901, %2533
  %2904 = fmul fast float %2902, 1.250000e-01
  %2905 = fmul fast float %2903, 1.250000e-01
  %2906 = call float @dx.op.unary.f32(i32 27, float %2904)  ; Round_ni(value)
  %2907 = call float @dx.op.unary.f32(i32 27, float %2905)  ; Round_ni(value)
  %2908 = fmul fast float %2906, 8.000000e+00
  %2909 = fmul fast float %2907, 8.000000e+00
  %2910 = and i32 %2894, 255
  %2911 = lshr i32 %2894, 8
  %2912 = and i32 %2911, 255
  %2913 = mul nuw nsw i32 %2910, 9
  %2914 = uitofp i32 %2913 to float
  %2915 = mul nuw nsw i32 %2912, 9
  %2916 = uitofp i32 %2915 to float
  %2917 = fadd fast float %2914, 5.000000e-01
  %2918 = fadd fast float %2917, %2902
  %2919 = fsub fast float %2918, %2908
  %2920 = fadd fast float %2916, 5.000000e-01
  %2921 = fadd fast float %2920, %2903
  %2922 = fsub fast float %2921, %2909
  %2923 = fdiv fast float %2919, %2302
  %2924 = fdiv fast float %2922, %2899
  %2925 = fmul fast float %2560, 4.375000e-01
  %2926 = fadd fast float %2925, 3.125000e-02
  %2927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2923, float %2924, float %2926, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  %2929 = extractvalue %dx.types.ResRet.f32 %2927, 1
  %2930 = extractvalue %dx.types.ResRet.f32 %2927, 2
  %2931 = fadd fast float %2928, %2872
  %2932 = fadd fast float %2929, %2873
  %2933 = fadd fast float %2930, %2874
  br label %2934

; <label>:2934                                    ; preds = %2898, %2883
  %2935 = phi float [ %2933, %2898 ], [ %2874, %2883 ]
  %2936 = phi float [ %2932, %2898 ], [ %2873, %2883 ]
  %2937 = phi float [ %2931, %2898 ], [ %2872, %2883 ]
  %2938 = icmp eq i32 %2896, 65535
  br i1 %2938, label %3028, label %2939

; <label>:2939                                    ; preds = %2934
  %2940 = extractvalue %dx.types.CBufRet.f32 %2301, 1
  %2941 = extractvalue %dx.types.CBufRet.f32 %2884, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2884, 1
  %2943 = fmul fast float %2941, %2532
  %2944 = fmul fast float %2942, %2533
  %2945 = fmul fast float %2943, 1.250000e-01
  %2946 = fmul fast float %2944, 1.250000e-01
  %2947 = call float @dx.op.unary.f32(i32 27, float %2945)  ; Round_ni(value)
  %2948 = call float @dx.op.unary.f32(i32 27, float %2946)  ; Round_ni(value)
  %2949 = fmul fast float %2947, 8.000000e+00
  %2950 = fmul fast float %2948, 8.000000e+00
  %2951 = fsub fast float %2943, %2949
  %2952 = fsub fast float %2944, %2950
  %2953 = fadd fast float %2951, 5.000000e-01
  %2954 = fadd fast float %2952, 5.000000e-01
  %2955 = and i32 %2896, 255
  %2956 = lshr i32 %2894, 24
  %2957 = mul nuw nsw i32 %2955, 9
  %2958 = uitofp i32 %2957 to float
  %2959 = mul nuw nsw i32 %2956, 9
  %2960 = uitofp i32 %2959 to float
  %2961 = fadd fast float %2953, %2958
  %2962 = fadd fast float %2954, %2960
  %2963 = fdiv fast float %2961, %2302
  %2964 = fdiv fast float %2962, %2940
  %2965 = fmul fast float %2560, 4.375000e-01
  %2966 = fadd fast float %2965, 3.125000e-02
  %2967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2963, float %2964, float %2966, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2968 = extractvalue %dx.types.ResRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.ResRet.f32 %2967, 1
  %2970 = extractvalue %dx.types.ResRet.f32 %2967, 2
  %2971 = fadd fast float %2965, 5.312500e-01
  %2972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2963, float %2964, float %2971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.ResRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.ResRet.f32 %2972, 2
  %2976 = fmul fast float %2973, 2.000000e+00
  %2977 = fmul fast float %2974, 2.000000e+00
  %2978 = fmul fast float %2975, 2.000000e+00
  %2979 = fadd fast float %2976, -1.000000e+00
  %2980 = fadd fast float %2977, -1.000000e+00
  %2981 = fadd fast float %2978, -1.000000e+00
  %2982 = fmul fast float %2979, %2979
  %2983 = fmul fast float %2980, %2980
  %2984 = fadd fast float %2982, %2983
  %2985 = fmul fast float %2981, %2981
  %2986 = fadd fast float %2984, %2985
  %2987 = call float @dx.op.unary.f32(i32 24, float %2986)  ; Sqrt(value)
  %2988 = fcmp fast ogt float %2987, 0.000000e+00
  br i1 %2988, label %2989, label %2993

; <label>:2989                                    ; preds = %2939
  %2990 = fdiv fast float %2979, %2987
  %2991 = fdiv fast float %2980, %2987
  %2992 = fdiv fast float %2981, %2987
  br label %2993

; <label>:2993                                    ; preds = %2989, %2939
  %2994 = phi float [ %2990, %2989 ], [ 0.000000e+00, %2939 ]
  %2995 = phi float [ %2991, %2989 ], [ 0.000000e+00, %2939 ]
  %2996 = phi float [ %2992, %2989 ], [ 0.000000e+00, %2939 ]
  %2997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2998 = extractvalue %dx.types.CBufRet.f32 %2997, 0
  %2999 = extractvalue %dx.types.CBufRet.f32 %2997, 1
  %3000 = fsub fast float %2151, %2998
  %3001 = fsub fast float %2152, %2999
  %3002 = fmul fast float %3000, %3000
  %3003 = fmul fast float %3001, %3001
  %3004 = fadd fast float %3002, %3003
  %3005 = call float @dx.op.unary.f32(i32 24, float %3004)  ; Sqrt(value)
  %3006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3007 = extractvalue %dx.types.CBufRet.f32 %3006, 0
  %3008 = extractvalue %dx.types.CBufRet.f32 %3006, 1
  %3009 = fsub fast float %3005, %3007
  %3010 = fdiv fast float %3009, %3008
  %3011 = call float @dx.op.unary.f32(i32 7, float %3010)  ; Saturate(value)
  %3012 = fmul fast float %3011, 2.000000e+00
  %3013 = fsub fast float 3.000000e+00, %3012
  %3014 = fmul fast float %3011, %3011
  %3015 = fmul fast float %3014, %3013
  %3016 = call float @dx.op.dot3.f32(i32 55, float %2994, float %2995, float %2996, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3017 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3016)  ; FMax(a,b)
  %3018 = fmul fast float %3017, 0x400C5BF8A0000000
  %3019 = fmul fast float %3015, %2968
  %3020 = fmul fast float %3019, %3018
  %3021 = fadd fast float %3020, %2937
  %3022 = fmul fast float %3015, %2969
  %3023 = fmul fast float %3022, %3018
  %3024 = fadd fast float %3023, %2936
  %3025 = fmul fast float %3015, %2970
  %3026 = fmul fast float %3025, %3018
  %3027 = fadd fast float %3026, %2935
  br label %3028

; <label>:3028                                    ; preds = %2993, %2934, %2862
  %3029 = phi float [ %3027, %2993 ], [ %2935, %2934 ], [ %2874, %2862 ]
  %3030 = phi float [ %3024, %2993 ], [ %2936, %2934 ], [ %2873, %2862 ]
  %3031 = phi float [ %3021, %2993 ], [ %2937, %2934 ], [ %2872, %2862 ]
  %3032 = fcmp fast ogt float %2519, %2556
  %3033 = and i1 %2875, %3032
  %3034 = and i1 %2877, %3033
  %3035 = and i1 %2879, %3034
  %3036 = and i1 %2881, %3035
  br i1 %3036, label %3037, label %3094, !dx.controlflow.hints !111

; <label>:3037                                    ; preds = %3028
  %3038 = fmul fast float %2558, 0x3FC24924A0000000
  %3039 = fsub fast float %2519, %2556
  %3040 = fdiv fast float %3039, %3038
  %3041 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3043 = extractvalue %dx.types.CBufRet.f32 %3042, 0
  %3044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3045 = extractvalue %dx.types.CBufRet.f32 %3044, 0
  %3046 = extractvalue %dx.types.CBufRet.f32 %3044, 1
  %3047 = extractvalue %dx.types.CBufRet.f32 %3044, 2
  %3048 = fsub fast float %3043, %3031
  %3049 = fsub fast float %3045, %2869
  %3050 = fsub fast float %3046, %2870
  %3051 = fsub fast float %3047, %2871
  %3052 = fmul fast float %3048, %3041
  %3053 = fmul fast float %3049, %3041
  %3054 = fmul fast float %3050, %3041
  %3055 = fmul fast float %3051, %3041
  %3056 = fadd fast float %3052, %3031
  %3057 = fadd fast float %3053, %2869
  %3058 = fadd fast float %3054, %2870
  %3059 = fadd fast float %3055, %2871
  %3060 = extractvalue %dx.types.CBufRet.f32 %3042, 1
  %3061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3062 = extractvalue %dx.types.CBufRet.f32 %3061, 0
  %3063 = extractvalue %dx.types.CBufRet.f32 %3061, 1
  %3064 = extractvalue %dx.types.CBufRet.f32 %3061, 2
  %3065 = fsub fast float %3060, %3030
  %3066 = fsub fast float %3062, %2866
  %3067 = fsub fast float %3063, %2867
  %3068 = fsub fast float %3064, %2868
  %3069 = fmul fast float %3065, %3041
  %3070 = fmul fast float %3066, %3041
  %3071 = fmul fast float %3067, %3041
  %3072 = fmul fast float %3068, %3041
  %3073 = fadd fast float %3069, %3030
  %3074 = fadd fast float %3070, %2866
  %3075 = fadd fast float %3071, %2867
  %3076 = fadd fast float %3072, %2868
  %3077 = extractvalue %dx.types.CBufRet.f32 %3042, 2
  %3078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3079 = extractvalue %dx.types.CBufRet.f32 %3078, 0
  %3080 = extractvalue %dx.types.CBufRet.f32 %3078, 1
  %3081 = extractvalue %dx.types.CBufRet.f32 %3078, 2
  %3082 = fsub fast float %3077, %3029
  %3083 = fsub fast float %3079, %2863
  %3084 = fsub fast float %3080, %2864
  %3085 = fsub fast float %3081, %2865
  %3086 = fmul fast float %3082, %3041
  %3087 = fmul fast float %3083, %3041
  %3088 = fmul fast float %3084, %3041
  %3089 = fmul fast float %3085, %3041
  %3090 = fadd fast float %3086, %3029
  %3091 = fadd fast float %3087, %2863
  %3092 = fadd fast float %3088, %2864
  %3093 = fadd fast float %3089, %2865
  br label %3094

; <label>:3094                                    ; preds = %3037, %3028
  %3095 = phi float [ %3090, %3037 ], [ %3029, %3028 ]
  %3096 = phi float [ %3091, %3037 ], [ %2863, %3028 ]
  %3097 = phi float [ %3092, %3037 ], [ %2864, %3028 ]
  %3098 = phi float [ %3093, %3037 ], [ %2865, %3028 ]
  %3099 = phi float [ %3073, %3037 ], [ %3030, %3028 ]
  %3100 = phi float [ %3074, %3037 ], [ %2866, %3028 ]
  %3101 = phi float [ %3075, %3037 ], [ %2867, %3028 ]
  %3102 = phi float [ %3076, %3037 ], [ %2868, %3028 ]
  %3103 = phi float [ %3056, %3037 ], [ %3031, %3028 ]
  %3104 = phi float [ %3057, %3037 ], [ %2869, %3028 ]
  %3105 = phi float [ %3058, %3037 ], [ %2870, %3028 ]
  %3106 = phi float [ %3059, %3037 ], [ %2871, %3028 ]
  %3107 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %3108 = fmul fast float %3107, %3103
  %3109 = fmul fast float %3107, %3099
  %3110 = fmul fast float %3107, %3095
  %3111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3112 = extractvalue %dx.types.CBufRet.f32 %3111, 3
  %3113 = fmul fast float %3108, %3112
  %3114 = fmul fast float %3109, %3112
  %3115 = fmul fast float %3110, %3112
  %3116 = call float @dx.op.dot3.f32(i32 55, float %3113, float %3114, float %3115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3117 = fmul fast float %3116, 0x3FD20DD760000000
  %3118 = fmul fast float %3104, 1.500000e+00
  %3119 = fmul fast float %3118, %3107
  %3120 = fmul fast float %3119, %3112
  %3121 = fmul fast float %3105, 1.500000e+00
  %3122 = fmul fast float %3121, %3107
  %3123 = fmul fast float %3122, %3112
  %3124 = fmul fast float %3106, 1.500000e+00
  %3125 = fmul fast float %3124, %3107
  %3126 = fmul fast float %3125, %3112
  %3127 = fmul fast float %3100, 1.500000e+00
  %3128 = fmul fast float %3127, %3107
  %3129 = fmul fast float %3128, %3112
  %3130 = fmul fast float %3101, 1.500000e+00
  %3131 = fmul fast float %3130, %3107
  %3132 = fmul fast float %3131, %3112
  %3133 = fmul fast float %3102, 1.500000e+00
  %3134 = fmul fast float %3133, %3107
  %3135 = fmul fast float %3134, %3112
  %3136 = fmul fast float %3096, 1.500000e+00
  %3137 = fmul fast float %3136, %3107
  %3138 = fmul fast float %3137, %3112
  %3139 = fmul fast float %3097, 1.500000e+00
  %3140 = fmul fast float %3139, %3107
  %3141 = fmul fast float %3140, %3112
  %3142 = fmul fast float %3098, 1.500000e+00
  %3143 = fmul fast float %3142, %3107
  %3144 = fmul fast float %3143, %3112
  %3145 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3113)  ; FMax(a,b)
  %3146 = call float @dx.op.dot3.f32(i32 55, float %3120, float %3123, float %3126, float %3120, float %3123, float %3126)  ; Dot3(ax,ay,az,bx,by,bz)
  %3147 = fcmp fast oeq float %3146, 0.000000e+00
  %3148 = fcmp fast oeq float %3145, 0.000000e+00
  %3149 = or i1 %3148, %3147
  br i1 %3149, label %3179, label %3150

; <label>:3150                                    ; preds = %3094
  %3151 = fsub fast float -0.000000e+00, %3126
  %3152 = fsub fast float -0.000000e+00, %3120
  %3153 = call float @dx.op.unary.f32(i32 24, float %3146)  ; Sqrt(value)
  %3154 = fdiv fast float %3153, %3145
  %3155 = fcmp fast ogt float %3154, 0x3FFB6F8900000000
  %3156 = select i1 %3155, float 0x3FFB6F8900000000, float %3154
  %3157 = fmul fast float %3156, 0x3FE8A23460000000
  %3158 = call float @dx.op.unary.f32(i32 7, float %3157)  ; Saturate(value)
  %3159 = call float @dx.op.binary.f32(i32 35, float %3156, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3160 = fmul fast float %3158, %3145
  %3161 = fmul fast float %3159, 0x3FF279A740000000
  %3162 = fadd fast float %3161, -1.000000e+00
  %3163 = call float @dx.op.dot3.f32(i32 55, float %3151, float %3152, float %3123, float %3151, float %3152, float %3123)  ; Dot3(ax,ay,az,bx,by,bz)
  %3164 = call float @dx.op.unary.f32(i32 25, float %3163)  ; Rsqrt(value)
  %3165 = fmul fast float %3164, %3151
  %3166 = fmul fast float %3164, %3152
  %3167 = fmul fast float %3164, %3123
  %3168 = fmul fast float %3162, %3162
  %3169 = fsub fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3159, 0x40005F8BE0000000
  %3171 = fsub fast float 0x400C5BF8A0000000, %3170
  %3172 = fdiv fast float %3160, %3171
  %3173 = fmul fast float %3172, 0x3FEE31C3C0000000
  %3174 = fmul fast float %3173, %3169
  %3175 = fmul fast float %3159, 0x3FDACB7480000000
  %3176 = fadd fast float %3175, 0xBFD7347680000000
  %3177 = fmul fast float %3176, %3172
  %3178 = fmul fast float %3177, %3169
  br label %3179

; <label>:3179                                    ; preds = %3150, %3094
  %3180 = phi float [ %3165, %3150 ], [ 0.000000e+00, %3094 ]
  %3181 = phi float [ %3166, %3150 ], [ 0.000000e+00, %3094 ]
  %3182 = phi float [ %3167, %3150 ], [ 0.000000e+00, %3094 ]
  %3183 = phi float [ %3174, %3150 ], [ 0.000000e+00, %3094 ]
  %3184 = phi float [ %3178, %3150 ], [ 0.000000e+00, %3094 ]
  %3185 = call float @dx.op.dot3.f32(i32 55, float %3180, float %3181, float %3182, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3186 = fmul fast float %3185, %3185
  %3187 = fmul fast float %3186, 0x3FEE471020000000
  %3188 = fadd fast float %3187, 0xBFD42F6020000000
  %3189 = fmul fast float %3145, 0x3FD20DD760000000
  %3190 = fmul fast float %3188, %3184
  %3191 = fmul fast float %3183, 0x3FDF454380000000
  %3192 = fmul fast float %3191, %3185
  %3193 = fadd fast float %3192, %3189
  %3194 = fadd fast float %3193, %3190
  %3195 = call float @dx.op.dot3.f32(i32 55, float %3180, float %3181, float %3182, float %2129, float %2130, float %2131)  ; Dot3(ax,ay,az,bx,by,bz)
  %3196 = fmul fast float %3195, 0x3FDF454380000000
  %3197 = fmul fast float %3195, %3195
  %3198 = fmul fast float %3197, 0x3FEE471020000000
  %3199 = fadd fast float %3198, 0xBFD42F6020000000
  %3200 = call float @dx.op.dot3.f32(i32 55, float %3145, float %3183, float %3184, float 0x3FD20DD760000000, float %3196, float %3199)  ; Dot3(ax,ay,az,bx,by,bz)
  %3201 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3114)  ; FMax(a,b)
  %3202 = call float @dx.op.dot3.f32(i32 55, float %3129, float %3132, float %3135, float %3129, float %3132, float %3135)  ; Dot3(ax,ay,az,bx,by,bz)
  %3203 = fcmp fast oeq float %3202, 0.000000e+00
  %3204 = fcmp fast oeq float %3201, 0.000000e+00
  %3205 = or i1 %3204, %3203
  br i1 %3205, label %3235, label %3206

; <label>:3206                                    ; preds = %3179
  %3207 = fsub fast float -0.000000e+00, %3135
  %3208 = fsub fast float -0.000000e+00, %3129
  %3209 = call float @dx.op.unary.f32(i32 24, float %3202)  ; Sqrt(value)
  %3210 = fdiv fast float %3209, %3201
  %3211 = fcmp fast ogt float %3210, 0x3FFB6F8900000000
  %3212 = select i1 %3211, float 0x3FFB6F8900000000, float %3210
  %3213 = fmul fast float %3212, 0x3FE8A23460000000
  %3214 = call float @dx.op.unary.f32(i32 7, float %3213)  ; Saturate(value)
  %3215 = call float @dx.op.binary.f32(i32 35, float %3212, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3216 = fmul fast float %3214, %3201
  %3217 = fmul fast float %3215, 0x3FF279A740000000
  %3218 = fadd fast float %3217, -1.000000e+00
  %3219 = call float @dx.op.dot3.f32(i32 55, float %3207, float %3208, float %3132, float %3207, float %3208, float %3132)  ; Dot3(ax,ay,az,bx,by,bz)
  %3220 = call float @dx.op.unary.f32(i32 25, float %3219)  ; Rsqrt(value)
  %3221 = fmul fast float %3220, %3207
  %3222 = fmul fast float %3220, %3208
  %3223 = fmul fast float %3220, %3132
  %3224 = fmul fast float %3218, %3218
  %3225 = fsub fast float 1.000000e+00, %3224
  %3226 = fmul fast float %3215, 0x40005F8BE0000000
  %3227 = fsub fast float 0x400C5BF8A0000000, %3226
  %3228 = fdiv fast float %3216, %3227
  %3229 = fmul fast float %3228, 0x3FEE31C3C0000000
  %3230 = fmul fast float %3229, %3225
  %3231 = fmul fast float %3215, 0x3FDACB7480000000
  %3232 = fadd fast float %3231, 0xBFD7347680000000
  %3233 = fmul fast float %3232, %3228
  %3234 = fmul fast float %3233, %3225
  br label %3235

; <label>:3235                                    ; preds = %3206, %3179
  %3236 = phi float [ %3221, %3206 ], [ 0.000000e+00, %3179 ]
  %3237 = phi float [ %3222, %3206 ], [ 0.000000e+00, %3179 ]
  %3238 = phi float [ %3223, %3206 ], [ 0.000000e+00, %3179 ]
  %3239 = phi float [ %3230, %3206 ], [ 0.000000e+00, %3179 ]
  %3240 = phi float [ %3234, %3206 ], [ 0.000000e+00, %3179 ]
  %3241 = call float @dx.op.dot3.f32(i32 55, float %3236, float %3237, float %3238, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3242 = fmul fast float %3241, %3241
  %3243 = fmul fast float %3242, 0x3FEE471020000000
  %3244 = fadd fast float %3243, 0xBFD42F6020000000
  %3245 = fmul fast float %3201, 0x3FD20DD760000000
  %3246 = fmul fast float %3244, %3240
  %3247 = fmul fast float %3239, 0x3FDF454380000000
  %3248 = fmul fast float %3247, %3241
  %3249 = fadd fast float %3248, %3245
  %3250 = fadd fast float %3249, %3246
  %3251 = call float @dx.op.dot3.f32(i32 55, float %3236, float %3237, float %3238, float %2129, float %2130, float %2131)  ; Dot3(ax,ay,az,bx,by,bz)
  %3252 = fmul fast float %3251, 0x3FDF454380000000
  %3253 = fmul fast float %3251, %3251
  %3254 = fmul fast float %3253, 0x3FEE471020000000
  %3255 = fadd fast float %3254, 0xBFD42F6020000000
  %3256 = call float @dx.op.dot3.f32(i32 55, float %3201, float %3239, float %3240, float 0x3FD20DD760000000, float %3252, float %3255)  ; Dot3(ax,ay,az,bx,by,bz)
  %3257 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3115)  ; FMax(a,b)
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3138, float %3141, float %3144, float %3138, float %3141, float %3144)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = fcmp fast oeq float %3258, 0.000000e+00
  %3260 = fcmp fast oeq float %3257, 0.000000e+00
  %3261 = or i1 %3260, %3259
  br i1 %3261, label %3291, label %3262

; <label>:3262                                    ; preds = %3235
  %3263 = fsub fast float -0.000000e+00, %3144
  %3264 = fsub fast float -0.000000e+00, %3138
  %3265 = call float @dx.op.unary.f32(i32 24, float %3258)  ; Sqrt(value)
  %3266 = fdiv fast float %3265, %3257
  %3267 = fcmp fast ogt float %3266, 0x3FFB6F8900000000
  %3268 = select i1 %3267, float 0x3FFB6F8900000000, float %3266
  %3269 = fmul fast float %3268, 0x3FE8A23460000000
  %3270 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3271 = call float @dx.op.binary.f32(i32 35, float %3268, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3272 = fmul fast float %3270, %3257
  %3273 = fmul fast float %3271, 0x3FF279A740000000
  %3274 = fadd fast float %3273, -1.000000e+00
  %3275 = call float @dx.op.dot3.f32(i32 55, float %3263, float %3264, float %3141, float %3263, float %3264, float %3141)  ; Dot3(ax,ay,az,bx,by,bz)
  %3276 = call float @dx.op.unary.f32(i32 25, float %3275)  ; Rsqrt(value)
  %3277 = fmul fast float %3276, %3263
  %3278 = fmul fast float %3276, %3264
  %3279 = fmul fast float %3276, %3141
  %3280 = fmul fast float %3274, %3274
  %3281 = fsub fast float 1.000000e+00, %3280
  %3282 = fmul fast float %3271, 0x40005F8BE0000000
  %3283 = fsub fast float 0x400C5BF8A0000000, %3282
  %3284 = fdiv fast float %3272, %3283
  %3285 = fmul fast float %3284, 0x3FEE31C3C0000000
  %3286 = fmul fast float %3285, %3281
  %3287 = fmul fast float %3271, 0x3FDACB7480000000
  %3288 = fadd fast float %3287, 0xBFD7347680000000
  %3289 = fmul fast float %3288, %3284
  %3290 = fmul fast float %3289, %3281
  br label %3291

; <label>:3291                                    ; preds = %3262, %3235
  %3292 = phi float [ %3277, %3262 ], [ 0.000000e+00, %3235 ]
  %3293 = phi float [ %3278, %3262 ], [ 0.000000e+00, %3235 ]
  %3294 = phi float [ %3279, %3262 ], [ 0.000000e+00, %3235 ]
  %3295 = phi float [ %3286, %3262 ], [ 0.000000e+00, %3235 ]
  %3296 = phi float [ %3290, %3262 ], [ 0.000000e+00, %3235 ]
  %3297 = call float @dx.op.dot3.f32(i32 55, float %3292, float %3293, float %3294, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3298 = fmul fast float %3297, %3297
  %3299 = fmul fast float %3298, 0x3FEE471020000000
  %3300 = fadd fast float %3299, 0xBFD42F6020000000
  %3301 = fmul fast float %3257, 0x3FD20DD760000000
  %3302 = fmul fast float %3300, %3296
  %3303 = fmul fast float %3295, 0x3FDF454380000000
  %3304 = fmul fast float %3303, %3297
  %3305 = fadd fast float %3304, %3301
  %3306 = fadd fast float %3305, %3302
  %3307 = call float @dx.op.dot3.f32(i32 55, float %3292, float %3293, float %3294, float %2129, float %2130, float %2131)  ; Dot3(ax,ay,az,bx,by,bz)
  %3308 = fmul fast float %3307, 0x3FDF454380000000
  %3309 = fmul fast float %3307, %3307
  %3310 = fmul fast float %3309, 0x3FEE471020000000
  %3311 = fadd fast float %3310, 0xBFD42F6020000000
  %3312 = call float @dx.op.dot3.f32(i32 55, float %3257, float %3295, float %3296, float 0x3FD20DD760000000, float %3308, float %3311)  ; Dot3(ax,ay,az,bx,by,bz)
  %3313 = call float @dx.op.binary.f32(i32 35, float %3194, float 0.000000e+00)  ; FMax(a,b)
  %3314 = call float @dx.op.binary.f32(i32 35, float %3250, float 0.000000e+00)  ; FMax(a,b)
  %3315 = call float @dx.op.binary.f32(i32 35, float %3306, float 0.000000e+00)  ; FMax(a,b)
  %3316 = call float @dx.op.binary.f32(i32 35, float %3200, float 0.000000e+00)  ; FMax(a,b)
  %3317 = call float @dx.op.binary.f32(i32 35, float %3256, float 0.000000e+00)  ; FMax(a,b)
  %3318 = call float @dx.op.binary.f32(i32 35, float %3312, float 0.000000e+00)  ; FMax(a,b)
  %3319 = fsub fast float %2513, %3313
  %3320 = fsub fast float %2514, %3314
  %3321 = fsub fast float %2515, %3315
  %3322 = fmul fast float %3319, %2192
  %3323 = fmul fast float %3320, %2192
  %3324 = fmul fast float %3321, %2192
  %3325 = fadd fast float %3322, %3313
  %3326 = fadd fast float %3323, %3314
  %3327 = fadd fast float %3324, %3315
  %3328 = fsub fast float %2510, %3316
  %3329 = fsub fast float %2511, %3317
  %3330 = fsub fast float %2512, %3318
  %3331 = fmul fast float %3328, %2192
  %3332 = fmul fast float %3329, %2192
  %3333 = fmul fast float %3330, %2192
  %3334 = fadd fast float %3331, %3316
  %3335 = fadd fast float %3332, %3317
  %3336 = fadd fast float %3333, %3318
  %3337 = fsub fast float %2294, %3117
  %3338 = fmul fast float %3337, %2192
  %3339 = fadd fast float %3338, %3117
  br label %3340

; <label>:3340                                    ; preds = %3291, %2509
  %3341 = phi float [ %3339, %3291 ], [ %2294, %2509 ]
  %3342 = phi float [ %3334, %3291 ], [ %2510, %2509 ]
  %3343 = phi float [ %3335, %3291 ], [ %2511, %2509 ]
  %3344 = phi float [ %3336, %3291 ], [ %2512, %2509 ]
  %3345 = phi float [ %3325, %3291 ], [ %2513, %2509 ]
  %3346 = phi float [ %3326, %3291 ], [ %2514, %2509 ]
  %3347 = phi float [ %3327, %3291 ], [ %2515, %2509 ]
  %3348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3349 = extractvalue %dx.types.CBufRet.f32 %3348, 0
  %3350 = call float @dx.op.binary.f32(i32 36, float %2109, float %3349)  ; FMin(a,b)
  %3351 = fmul fast float %3350, %2133
  %3352 = fsub fast float 1.000000e+00, %3351
  %3353 = bitcast float %3352 to i32
  %3354 = sub nsw i32 2129859010, %3353
  %3355 = bitcast i32 %3354 to float
  %3356 = call float @dx.op.binary.f32(i32 36, float %2110, float %3349)  ; FMin(a,b)
  %3357 = fmul fast float %3356, %2133
  %3358 = fsub fast float 1.000000e+00, %3357
  %3359 = bitcast float %3358 to i32
  %3360 = sub nsw i32 2129859010, %3359
  %3361 = bitcast i32 %3360 to float
  %3362 = call float @dx.op.binary.f32(i32 36, float %2111, float %3349)  ; FMin(a,b)
  %3363 = fmul fast float %3362, %2133
  %3364 = fsub fast float 1.000000e+00, %3363
  %3365 = bitcast float %3364 to i32
  %3366 = sub nsw i32 2129859010, %3365
  %3367 = bitcast i32 %3366 to float
  %3368 = fmul fast float %3345, %2132
  %3369 = fmul fast float %3368, %3355
  %3370 = fmul fast float %3346, %2132
  %3371 = fmul fast float %3370, %3361
  %3372 = fmul fast float %3347, %2132
  %3373 = fmul fast float %3372, %3367
  %3374 = call float @dx.op.binary.f32(i32 36, float %2115, float %3349)  ; FMin(a,b)
  %3375 = fmul fast float %3374, %2133
  %3376 = fsub fast float 1.000000e+00, %3375
  %3377 = bitcast float %3376 to i32
  %3378 = sub nsw i32 2129859010, %3377
  %3379 = bitcast i32 %3378 to float
  %3380 = call float @dx.op.binary.f32(i32 36, float %2116, float %3349)  ; FMin(a,b)
  %3381 = fmul fast float %3380, %2133
  %3382 = fsub fast float 1.000000e+00, %3381
  %3383 = bitcast float %3382 to i32
  %3384 = sub nsw i32 2129859010, %3383
  %3385 = bitcast i32 %3384 to float
  %3386 = call float @dx.op.binary.f32(i32 36, float %2121, float %3349)  ; FMin(a,b)
  %3387 = fmul fast float %3386, %2133
  %3388 = fsub fast float 1.000000e+00, %3387
  %3389 = bitcast float %3388 to i32
  %3390 = sub nsw i32 2129859010, %3389
  %3391 = bitcast i32 %3390 to float
  %3392 = fmul fast float %3342, %2132
  %3393 = fmul fast float %3392, %3379
  %3394 = fmul fast float %3343, %2132
  %3395 = fmul fast float %3394, %3385
  %3396 = fmul fast float %3344, %2132
  %3397 = fmul fast float %3396, %3391
  %3398 = call float @dx.op.dot3.f32(i32 55, float %3369, float %3371, float %3373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3399 = select i1 %238, float 0.000000e+00, float %3369
  %3400 = select i1 %238, float %3398, float %3371
  %3401 = select i1 %238, float 0.000000e+00, float %3373
  %3402 = call float @dx.op.dot3.f32(i32 55, float %3393, float %3395, float %3397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3403 = select i1 %238, float 0.000000e+00, float %3393
  %3404 = select i1 %238, float %3402, float %3395
  %3405 = select i1 %238, float 0.000000e+00, float %3397
  %3406 = fmul fast float %2123, 9.843750e-01
  %3407 = fmul fast float %2118, 9.843750e-01
  %3408 = fadd fast float %3406, 7.812500e-03
  %3409 = fadd fast float %3407, 7.812500e-03
  %3410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3408, float %3409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 2
  %3412 = extractvalue %dx.types.ResRet.f32 %3410, 3
  %3413 = fmul fast float %3411, %2115
  %3414 = fmul fast float %3411, %2116
  %3415 = fmul fast float %3411, %2121
  %3416 = fadd fast float %3413, %3412
  %3417 = fadd fast float %3414, %3412
  %3418 = fadd fast float %3415, %3412
  %3419 = fcmp fast ogt float %1486, 0.000000e+00
  br i1 %3419, label %3420, label %3446

; <label>:3420                                    ; preds = %3340
  %3421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1486, float %2123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3422 = extractvalue %dx.types.ResRet.f32 %3421, 0
  %3423 = extractvalue %dx.types.ResRet.f32 %3421, 1
  %3424 = extractvalue %dx.types.ResRet.f32 %3421, 2
  %3425 = fadd fast float %3422, -5.000000e-01
  %3426 = fadd fast float %3423, -5.000000e-01
  %3427 = fadd fast float %3424, -5.000000e-01
  %3428 = fsub fast float 1.000000e+00, %2115
  %3429 = fsub fast float 1.000000e+00, %2116
  %3430 = fsub fast float 1.000000e+00, %2121
  %3431 = fmul fast float %2115, 4.000000e+00
  %3432 = fmul fast float %3431, %3428
  %3433 = fmul fast float %3432, %3425
  %3434 = fmul fast float %2116, 4.000000e+00
  %3435 = fmul fast float %3434, %3429
  %3436 = fmul fast float %3435, %3426
  %3437 = fmul fast float %2121, 4.000000e+00
  %3438 = fmul fast float %3437, %3430
  %3439 = fmul fast float %3438, %3427
  %3440 = fadd fast float %3433, %3416
  %3441 = fadd fast float %3436, %3417
  %3442 = fadd fast float %3439, %3418
  %3443 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3444 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  %3445 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  br label %3446

; <label>:3446                                    ; preds = %3420, %3340
  %3447 = phi float [ %3443, %3420 ], [ %3416, %3340 ]
  %3448 = phi float [ %3444, %3420 ], [ %3417, %3340 ]
  %3449 = phi float [ %3445, %3420 ], [ %3418, %3340 ]
  %3450 = call float @dx.op.binary.f32(i32 35, float %3448, float %3449)  ; FMax(a,b)
  %3451 = call float @dx.op.binary.f32(i32 35, float %3447, float %3450)  ; FMax(a,b)
  %3452 = fsub fast float 1.000000e+00, %3451
  %3453 = fmul fast float %3451, %2118
  %3454 = fadd fast float %3453, %2118
  %3455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.f32 %3455, 2
  %3457 = extractvalue %dx.types.CBufRet.f32 %3455, 3
  %3458 = fmul fast float %3454, %3456
  %3459 = fadd fast float %3458, %3457
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = fsub fast float 1.000000e+00, %2144
  %3462 = fadd fast float %3461, %3460
  %3463 = call float @dx.op.unary.f32(i32 7, float %3462)  ; Saturate(value)
  %3464 = fcmp fast olt float %3463, 1.000000e+00
  br i1 %3464, label %3465, label %3941

; <label>:3465                                    ; preds = %3446
  %3466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3467 = extractvalue %dx.types.CBufRet.f32 %3466, 2
  %3468 = extractvalue %dx.types.CBufRet.f32 %3466, 3
  %3469 = fmul fast float %3467, %100
  %3470 = fmul fast float %3468, %101
  %3471 = fptoui float %3469 to i32
  %3472 = fptoui float %3470 to i32
  %3473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3474 = extractvalue %dx.types.CBufRet.f32 %3473, 0
  %3475 = extractvalue %dx.types.CBufRet.f32 %3473, 2
  %3476 = extractvalue %dx.types.CBufRet.f32 %3473, 3
  %3477 = fadd fast float %88, -4.000000e+00
  %3478 = call float @dx.op.binary.f32(i32 35, float %3477, float 0.000000e+00)  ; FMax(a,b)
  %3479 = fadd fast float %3478, %3474
  %3480 = fmul fast float %3479, %3475
  %3481 = call float @dx.op.unary.f32(i32 23, float %3480)  ; Log(value)
  %3482 = fmul fast float %3481, %3476
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3485 = fmul fast float %3482, %3484
  %3486 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.i32 %3487, 1
  %3489 = add i32 %3488, -1
  %3490 = uitofp i32 %3488 to float
  %3491 = fmul fast float %3490, %3486
  %3492 = fptoui float %3491 to i32
  %3493 = call i32 @dx.op.binary.i32(i32 40, i32 %3492, i32 %3489)  ; UMin(a,b)
  %3494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.i32 %3494, 2
  %3496 = extractvalue %dx.types.CBufRet.i32 %3494, 3
  %3497 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3472, i32 %3495, i32 %3471)  ; UMad(a,b,c)
  %3498 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3493, i32 %3496, i32 %3497)  ; UMad(a,b,c)
  %3499 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %3500 = fptoui float %3499 to i32
  %3501 = lshr i32 %3500, 5
  %3502 = call i32 @dx.op.binary.i32(i32 40, i32 %3501, i32 8191)  ; UMin(a,b)
  %3503 = fsub fast float %1908, %149
  %3504 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  %3505 = fcmp fast ogt float %3504, 0.000000e+00
  %3506 = fcmp fast ogt float %2131, 0.000000e+00
  %3507 = and i1 %3506, %3505
  br i1 %3507, label %3508, label %3537

; <label>:3508                                    ; preds = %3465
  %3509 = call float @dx.op.dot3.f32(i32 55, float %2129, float %2130, float %2131, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3510 = call float @dx.op.binary.f32(i32 35, float %3509, float -1.000000e+00)  ; FMax(a,b)
  %3511 = call float @dx.op.binary.f32(i32 36, float %3510, float 1.000000e+00)  ; FMin(a,b)
  %3512 = fmul fast float %3511, %3511
  %3513 = fsub fast float 1.000000e+00, %3512
  %3514 = fmul fast float %3513, 0x3FFC6E2300000000
  %3515 = fsub fast float 1.000000e+00, %3514
  %3516 = fcmp fast ogt float %3515, 0.000000e+00
  %3517 = call float @dx.op.unary.f32(i32 24, float %3515)  ; Sqrt(value)
  %3518 = fsub fast float 1.000000e+00, %3517
  %3519 = call float @dx.op.unary.f32(i32 23, float %3518)  ; Log(value)
  %3520 = fmul fast float %3519, 5.000000e+00
  %3521 = call float @dx.op.unary.f32(i32 21, float %3520)  ; Exp(value)
  %3522 = fmul fast float %3521, 0x3FEF591A60000000
  %3523 = fadd fast float %3522, 0x3F94DCB540000000
  %3524 = select i1 %3516, float %3523, float 1.000000e+00
  %3525 = fcmp fast oge float %3524, 1.000000e+00
  %3526 = fmul fast float %3509, 2.000000e+00
  %3527 = fadd fast float %3526, %2131
  %3528 = select i1 %3525, float %3527, float %2131
  %3529 = fsub fast float %3528, %2131
  %3530 = fmul fast float %3529, %3504
  %3531 = fadd fast float %3530, %2131
  %3532 = call float @dx.op.dot3.f32(i32 55, float %2129, float %2130, float %3531, float %2129, float %2130, float %3531)  ; Dot3(ax,ay,az,bx,by,bz)
  %3533 = call float @dx.op.unary.f32(i32 25, float %3532)  ; Rsqrt(value)
  %3534 = fmul fast float %3533, %2129
  %3535 = fmul fast float %3533, %2130
  %3536 = fmul fast float %3531, %3533
  br label %3537

; <label>:3537                                    ; preds = %3508, %3465
  %3538 = phi float [ %3534, %3508 ], [ %2129, %3465 ]
  %3539 = phi float [ %3535, %3508 ], [ %2130, %3465 ]
  %3540 = phi float [ %3536, %3508 ], [ %2131, %3465 ]
  %3541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3542 = extractvalue %dx.types.CBufRet.i32 %3541, 2
  %3543 = add nsw i32 %3542, -1
  %3544 = call i32 @dx.op.binary.i32(i32 37, i32 %3543, i32 0)  ; IMax(a,b)
  %3545 = shl i32 %3502, 2
  %3546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.i32 %3546, 0
  %3548 = lshr i32 %3547, 16
  %3549 = and i32 %3547, 65535
  %3550 = lshr i32 %3547, 21
  %3551 = lshr i32 %3549, 5
  %3552 = call i32 @dx.op.binary.i32(i32 40, i32 %3551, i32 %3544)  ; UMin(a,b)
  %3553 = icmp ugt i32 %3550, %3552
  br i1 %3553, label %3917, label %3554

; <label>:3554                                    ; preds = %3537
  br label %3555

; <label>:3555                                    ; preds = %3909, %3554
  %3556 = phi float [ %3910, %3909 ], [ 0.000000e+00, %3554 ]
  %3557 = phi float [ %3911, %3909 ], [ 0.000000e+00, %3554 ]
  %3558 = phi float [ %3912, %3909 ], [ 0.000000e+00, %3554 ]
  %3559 = phi float [ %3913, %3909 ], [ 1.000000e+00, %3554 ]
  %3560 = phi i32 [ %3914, %3909 ], [ %3550, %3554 ]
  %3561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3562 = extractvalue %dx.types.CBufRet.i32 %3561, 2
  %3563 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3498, i32 %3562, i32 %3560)  ; UMad(a,b,c)
  %3564 = shl i32 %3563, 2
  %3565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3564, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.i32 %3565, 0
  %3567 = shl i32 %3560, 5
  %3568 = sub nsw i32 %3548, %3567
  %3569 = call i32 @dx.op.binary.i32(i32 37, i32 %3568, i32 0)  ; IMax(a,b)
  %3570 = call i32 @dx.op.binary.i32(i32 38, i32 %3569, i32 31)  ; IMin(a,b)
  %3571 = sub nsw i32 1, %3548
  %3572 = add nsw i32 %3571, %3549
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
  br i1 %3583, label %3909, label %3584

; <label>:3584                                    ; preds = %3555
  br label %3585

; <label>:3585                                    ; preds = %3692, %3584
  %3586 = phi float [ %3693, %3692 ], [ %3556, %3584 ]
  %3587 = phi float [ %3694, %3692 ], [ %3557, %3584 ]
  %3588 = phi float [ %3695, %3692 ], [ %3558, %3584 ]
  %3589 = phi float [ %3696, %3692 ], [ %3559, %3584 ]
  %3590 = phi i32 [ %3595, %3692 ], [ %3582, %3584 ]
  %3591 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3590)  ; FirstbitLo(value)
  %3592 = add i32 %3591, %3567
  %3593 = and i32 %3591, 31
  %3594 = shl i32 1, %3593
  %3595 = xor i32 %3594, %3590
  %3596 = mul i32 %3592, 72
  %3597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.ResRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.ResRet.f32 %3597, 2
  %3601 = add i32 %3596, 12
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = add i32 %3596, 16
  %3605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.ResRet.f32 %3605, 1
  %3608 = extractvalue %dx.types.ResRet.f32 %3605, 2
  %3609 = add i32 %3596, 28
  %3610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 0
  %3612 = add i32 %3596, 32
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = add i32 %3596, 48
  %3619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3622 = add i32 %3596, 56
  %3623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = add i32 %3596, 64
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = extractvalue %dx.types.ResRet.f32 %3627, 1
  %3630 = mul i32 %3592, 60
  %3631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.f32 %3631, 0
  %3633 = extractvalue %dx.types.ResRet.f32 %3631, 1
  %3634 = extractvalue %dx.types.ResRet.f32 %3631, 2
  %3635 = add i32 %3630, 12
  %3636 = add i32 %3630, 48
  %3637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.ResRet.f32 %3637, 1
  %3640 = extractvalue %dx.types.ResRet.f32 %3637, 2
  %3641 = and i32 %3603, 32767
  %3642 = bitcast float %3598 to i32
  %3643 = icmp eq i32 %3642, -1
  %3644 = bitcast float %3599 to i32
  %3645 = and i32 %3603, 32768
  %3646 = icmp ne i32 %3645, 0
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.CBufRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.CBufRet.f32 %3647, 2
  %3651 = fsub fast float %3632, %3648
  %3652 = fsub fast float %3633, %3649
  %3653 = fsub fast float %3634, %3650
  %3654 = fsub fast float %147, %3651
  %3655 = fsub fast float %148, %3652
  %3656 = fsub fast float %149, %3653
  %3657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.ResRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.ResRet.f32 %3657, 2
  %3661 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3655, float %3656, float %3658, float %3659, float %3660)  ; Dot3(ax,ay,az,bx,by,bz)
  %3662 = add i32 %3630, 24
  %3663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.ResRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.ResRet.f32 %3663, 2
  %3667 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3655, float %3656, float %3664, float %3665, float %3666)  ; Dot3(ax,ay,az,bx,by,bz)
  %3668 = add i32 %3630, 36
  %3669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3673 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3655, float %3656, float %3670, float %3671, float %3672)  ; Dot3(ax,ay,az,bx,by,bz)
  %3674 = call float @dx.op.unary.f32(i32 6, float %3661)  ; FAbs(value)
  %3675 = call float @dx.op.unary.f32(i32 6, float %3667)  ; FAbs(value)
  %3676 = call float @dx.op.unary.f32(i32 6, float %3673)  ; FAbs(value)
  %3677 = fsub fast float %3638, %3674
  %3678 = fsub fast float %3639, %3675
  %3679 = fsub fast float %3640, %3676
  %3680 = fmul fast float %3677, %3606
  %3681 = fmul fast float %3678, %3607
  %3682 = fmul fast float %3679, %3608
  %3683 = call float @dx.op.binary.f32(i32 36, float %3681, float %3682)  ; FMin(a,b)
  %3684 = call float @dx.op.binary.f32(i32 36, float %3680, float %3683)  ; FMin(a,b)
  %3685 = call float @dx.op.unary.f32(i32 7, float %3684)  ; Saturate(value)
  %3686 = call float @dx.op.binary.f32(i32 36, float %3589, float %3685)  ; FMin(a,b)
  %3687 = uitofp i1 %3646 to float
  %3688 = fadd fast float %3504, 1.000000e+00
  %3689 = fsub fast float %3688, %3687
  %3690 = fmul fast float %3686, %3689
  %3691 = fcmp fast ogt float %3690, 0.000000e+00
  br i1 %3691, label %3698, label %3692

; <label>:3692                                    ; preds = %3840, %3585
  %3693 = phi float [ %3904, %3840 ], [ %3586, %3585 ]
  %3694 = phi float [ %3905, %3840 ], [ %3587, %3585 ]
  %3695 = phi float [ %3906, %3840 ], [ %3588, %3585 ]
  %3696 = phi float [ %3907, %3840 ], [ %3589, %3585 ]
  %3697 = icmp eq i32 %3590, %3594
  br i1 %3697, label %3908, label %3585

; <label>:3698                                    ; preds = %3585
  br i1 %3643, label %3756, label %3699

; <label>:3699                                    ; preds = %3698
  %3700 = fsub fast float -0.000000e+00, %3658
  %3701 = fsub fast float -0.000000e+00, %3659
  %3702 = fsub fast float -0.000000e+00, %3660
  %3703 = call float @dx.op.dot3.f32(i32 55, float %3538, float %3539, float %3540, float %3700, float %3701, float %3702)  ; Dot3(ax,ay,az,bx,by,bz)
  %3704 = fsub fast float -0.000000e+00, %3703
  %3705 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3655, float %3656, float %3700, float %3701, float %3702)  ; Dot3(ax,ay,az,bx,by,bz)
  %3706 = fadd fast float %3705, %3621
  %3707 = fadd fast float %3620, %3705
  %3708 = fsub fast float -0.000000e+00, %3707
  %3709 = fcmp ogt float %3703, -0.000000e+00
  %3710 = select i1 %3709, float %3708, float %3706
  %3711 = call float @dx.op.unary.f32(i32 6, float %3704)  ; FAbs(value)
  %3712 = fdiv fast float 1.000000e+00, %3711
  %3713 = fmul fast float %3710, %3712
  %3714 = call float @dx.op.binary.f32(i32 35, float %3713, float 0.000000e+00)  ; FMax(a,b)
  %3715 = fsub fast float -0.000000e+00, %3664
  %3716 = fsub fast float -0.000000e+00, %3665
  %3717 = fsub fast float -0.000000e+00, %3666
  %3718 = call float @dx.op.dot3.f32(i32 55, float %3538, float %3539, float %3540, float %3715, float %3716, float %3717)  ; Dot3(ax,ay,az,bx,by,bz)
  %3719 = fsub fast float -0.000000e+00, %3718
  %3720 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3655, float %3656, float %3715, float %3716, float %3717)  ; Dot3(ax,ay,az,bx,by,bz)
  %3721 = fadd fast float %3720, %3625
  %3722 = fadd fast float %3624, %3720
  %3723 = fsub fast float -0.000000e+00, %3722
  %3724 = fcmp ogt float %3718, -0.000000e+00
  %3725 = select i1 %3724, float %3723, float %3721
  %3726 = call float @dx.op.unary.f32(i32 6, float %3719)  ; FAbs(value)
  %3727 = fdiv fast float 1.000000e+00, %3726
  %3728 = fmul fast float %3725, %3727
  %3729 = call float @dx.op.binary.f32(i32 35, float %3728, float 0.000000e+00)  ; FMax(a,b)
  %3730 = fsub fast float -0.000000e+00, %3670
  %3731 = fsub fast float -0.000000e+00, %3671
  %3732 = fsub fast float -0.000000e+00, %3672
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3538, float %3539, float %3540, float %3730, float %3731, float %3732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = fsub fast float -0.000000e+00, %3733
  %3735 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3655, float %3656, float %3730, float %3731, float %3732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3736 = fadd fast float %3735, %3629
  %3737 = fadd fast float %3628, %3735
  %3738 = fsub fast float -0.000000e+00, %3737
  %3739 = fcmp ogt float %3733, -0.000000e+00
  %3740 = select i1 %3739, float %3738, float %3736
  %3741 = call float @dx.op.unary.f32(i32 6, float %3734)  ; FAbs(value)
  %3742 = fdiv fast float 1.000000e+00, %3741
  %3743 = fmul fast float %3740, %3742
  %3744 = call float @dx.op.binary.f32(i32 35, float %3743, float 0.000000e+00)  ; FMax(a,b)
  %3745 = call float @dx.op.binary.f32(i32 36, float %3729, float %3744)  ; FMin(a,b)
  %3746 = call float @dx.op.binary.f32(i32 36, float %3714, float %3745)  ; FMin(a,b)
  %3747 = fmul fast float %3746, %3538
  %3748 = fmul fast float %3746, %3539
  %3749 = fmul fast float %3746, %3540
  %3750 = fadd fast float %3747, %147
  %3751 = fadd fast float %3748, %148
  %3752 = fadd fast float %3749, %149
  %3753 = fsub fast float %3750, %3598
  %3754 = fsub fast float %3751, %3599
  %3755 = fsub fast float %3752, %3600
  br label %3763

; <label>:3756                                    ; preds = %3698
  %3757 = fmul fast float %3538, 8.096000e+03
  %3758 = fmul fast float %3539, 8.096000e+03
  %3759 = fmul fast float %3540, 8.096000e+03
  %3760 = fadd fast float %3757, %147
  %3761 = fadd fast float %3758, %148
  %3762 = fadd fast float %3759, %149
  br label %3763

; <label>:3763                                    ; preds = %3756, %3699
  %3764 = phi float [ %3538, %3756 ], [ %3753, %3699 ]
  %3765 = phi float [ %3539, %3756 ], [ %3754, %3699 ]
  %3766 = phi float [ %3540, %3756 ], [ %3755, %3699 ]
  %3767 = phi float [ %3760, %3756 ], [ %3750, %3699 ]
  %3768 = phi float [ %3761, %3756 ], [ %3751, %3699 ]
  %3769 = phi float [ %3762, %3756 ], [ %3752, %3699 ]
  %3770 = fcmp fast olt float %3617, 1.000000e+00
  br i1 %3770, label %3771, label %3802, !dx.controlflow.hints !112

; <label>:3771                                    ; preds = %3763
  %3772 = fmul fast float %3766, %3615
  %3773 = fmul fast float %3765, %3616
  %3774 = fsub fast float %3772, %3773
  %3775 = fmul fast float %3764, %3616
  %3776 = fmul fast float %3766, %3614
  %3777 = fsub fast float %3775, %3776
  %3778 = fmul fast float %3765, %3614
  %3779 = fmul fast float %3764, %3615
  %3780 = fsub fast float %3778, %3779
  %3781 = fmul fast float %3774, 2.000000e+00
  %3782 = fmul fast float %3777, 2.000000e+00
  %3783 = fmul fast float %3780, 2.000000e+00
  %3784 = fmul fast float %3781, %3617
  %3785 = fmul fast float %3782, %3617
  %3786 = fmul fast float %3783, %3617
  %3787 = fmul fast float %3783, %3615
  %3788 = fmul fast float %3782, %3616
  %3789 = fmul fast float %3781, %3616
  %3790 = fmul fast float %3783, %3614
  %3791 = fmul fast float %3782, %3614
  %3792 = fmul fast float %3781, %3615
  %3793 = fadd fast float %3787, %3764
  %3794 = fadd fast float %3793, %3784
  %3795 = fsub fast float %3794, %3788
  %3796 = fsub fast float %3765, %3790
  %3797 = fadd fast float %3796, %3785
  %3798 = fadd fast float %3797, %3789
  %3799 = fadd fast float %3786, %3766
  %3800 = fsub fast float %3799, %3792
  %3801 = fadd fast float %3800, %3791
  br label %3802

; <label>:3802                                    ; preds = %3771, %3763
  %3803 = phi float [ %3795, %3771 ], [ %3764, %3763 ]
  %3804 = phi float [ %3798, %3771 ], [ %3765, %3763 ]
  %3805 = phi float [ %3801, %3771 ], [ %3766, %3763 ]
  br i1 %3643, label %3837, label %3806

; <label>:3806                                    ; preds = %3802
  %3807 = fmul fast float %2118, 0x400187C840000000
  %3808 = fadd fast float %3807, 0xC00EFC2120000000
  %3809 = fmul fast float %3808, %2118
  %3810 = fadd fast float %3809, 0x3FE5D16340000000
  %3811 = fmul fast float %3810, %2118
  %3812 = fadd fast float %3811, 1.000000e+00
  %3813 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3814 = fsub fast float %3767, %147
  %3815 = fsub fast float %3768, %148
  %3816 = fsub fast float %3769, %149
  %3817 = fsub fast float %3767, %3598
  %3818 = fsub fast float %3768, %3599
  %3819 = fsub fast float %3769, %3600
  %3820 = call float @dx.op.dot3.f32(i32 55, float %3814, float %3815, float %3816, float %3814, float %3815, float %3816)  ; Dot3(ax,ay,az,bx,by,bz)
  %3821 = call float @dx.op.dot3.f32(i32 55, float %3817, float %3818, float %3819, float %3817, float %3818, float %3819)  ; Dot3(ax,ay,az,bx,by,bz)
  %3822 = fadd fast float %3821, 0x3EE4F8B580000000
  %3823 = fdiv fast float %3820, %3822
  %3824 = bitcast float %3823 to i32
  %3825 = ashr i32 %3824, 1
  %3826 = add nsw i32 %3825, 532487669
  %3827 = bitcast i32 %3826 to float
  %3828 = fmul fast float %3827, %3813
  %3829 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3830 = fmul fast float %3829, 0x4009981AE0000000
  %3831 = fsub fast float 0x40111BBD80000000, %3830
  %3832 = fmul fast float %3831, %3829
  %3833 = fadd fast float %3832, 0xC0009F6020000000
  %3834 = fmul fast float %3833, %3829
  %3835 = fadd fast float %3834, 1.000000e+00
  %3836 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  br label %3840

; <label>:3837                                    ; preds = %3802
  %3838 = icmp ne i32 %3644, -1
  %3839 = zext i1 %3838 to i32
  br label %3840

; <label>:3840                                    ; preds = %3837, %3806
  %3841 = phi float [ %2118, %3837 ], [ %3836, %3806 ]
  %3842 = phi i32 [ %3839, %3837 ], [ 0, %3806 ]
  %3843 = fmul float %3841, 5.000000e+00
  %3844 = fsub float 5.000000e+00, %3843
  %3845 = icmp ne i32 %3842, 0
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 3
  %3848 = fadd fast float %3847, %3844
  %3849 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3848)  ; FMax(a,b)
  %3850 = call float @dx.op.unary.f32(i32 6, float %3803)  ; FAbs(value)
  %3851 = call float @dx.op.unary.f32(i32 6, float %3804)  ; FAbs(value)
  %3852 = fadd fast float %3851, %3850
  %3853 = call float @dx.op.unary.f32(i32 6, float %3805)  ; FAbs(value)
  %3854 = fadd fast float %3852, %3853
  %3855 = fcmp fast oeq float %3854, 0.000000e+00
  %3856 = fdiv fast float 1.000000e+00, %3854
  %3857 = select i1 %3855, float 1.000000e+00, float %3856
  %3858 = fmul fast float %3857, %3803
  %3859 = fmul fast float %3857, %3804
  %3860 = call float @dx.op.unary.f32(i32 6, float %3859)  ; FAbs(value)
  %3861 = call float @dx.op.unary.f32(i32 6, float %3858)  ; FAbs(value)
  %3862 = fsub fast float 1.000000e+00, %3860
  %3863 = fsub fast float 1.000000e+00, %3861
  %3864 = fcmp fast oge float %3858, 0.000000e+00
  %3865 = fcmp fast oge float %3859, 0.000000e+00
  %3866 = select i1 %3864, float 1.000000e+00, float -1.000000e+00
  %3867 = select i1 %3865, float 1.000000e+00, float -1.000000e+00
  %3868 = fcmp fast ole float %3805, 0.000000e+00
  %3869 = fmul fast float %3866, %3862
  %3870 = fmul fast float %3867, %3863
  %3871 = select i1 %3868, float %3869, float %3858
  %3872 = select i1 %3868, float %3870, float %3859
  %3873 = fmul fast float %3871, 5.000000e-01
  %3874 = fmul fast float %3872, 5.000000e-01
  %3875 = fadd fast float %3873, 5.000000e-01
  %3876 = fadd fast float %3874, 5.000000e-01
  %3877 = uitofp i32 %3641 to float
  %3878 = call float @dx.op.binary.f32(i32 36, float %3849, float 3.000000e+00)  ; FMin(a,b)
  %3879 = fadd fast float %3878, 2.000000e+00
  %3880 = call float @dx.op.unary.f32(i32 21, float %3879)  ; Exp(value)
  %3881 = extractvalue %dx.types.CBufRet.f32 %3846, 1
  %3882 = fmul fast float %3881, %3880
  %3883 = fmul fast float %3882, 2.000000e+00
  %3884 = fsub fast float 1.000000e+00, %3883
  %3885 = fmul fast float %3875, %3884
  %3886 = fmul fast float %3876, %3884
  %3887 = fadd fast float %3885, %3882
  %3888 = fadd fast float %3886, %3882
  %3889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %3887, float %3888, float %3877, float undef, i32 0, i32 0, i32 undef, float %3849)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3890 = extractvalue %dx.types.ResRet.f32 %3889, 0
  %3891 = extractvalue %dx.types.ResRet.f32 %3889, 1
  %3892 = extractvalue %dx.types.ResRet.f32 %3889, 2
  %3893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.f32 %3893, 3
  %3895 = fmul fast float %3894, %3611
  %3896 = call float @dx.op.binary.f32(i32 36, float %3341, float %3895)  ; FMin(a,b)
  %3897 = select i1 %3845, float %3896, float %3895
  %3898 = fmul fast float %3890, %3690
  %3899 = fmul fast float %3898, %3897
  %3900 = fmul fast float %3891, %3690
  %3901 = fmul fast float %3900, %3897
  %3902 = fmul fast float %3892, %3690
  %3903 = fmul fast float %3902, %3897
  %3904 = fadd fast float %3899, %3586
  %3905 = fadd fast float %3901, %3587
  %3906 = fadd fast float %3903, %3588
  %3907 = fsub fast float %3589, %3690
  br label %3692

; <label>:3908                                    ; preds = %3692
  br label %3909

; <label>:3909                                    ; preds = %3908, %3555
  %3910 = phi float [ %3556, %3555 ], [ %3693, %3908 ]
  %3911 = phi float [ %3557, %3555 ], [ %3694, %3908 ]
  %3912 = phi float [ %3558, %3555 ], [ %3695, %3908 ]
  %3913 = phi float [ %3559, %3555 ], [ %3696, %3908 ]
  %3914 = add i32 %3560, 1
  %3915 = icmp ugt i32 %3914, %3552
  br i1 %3915, label %3916, label %3555, !llvm.loop !113

; <label>:3916                                    ; preds = %3909
  br label %3917

; <label>:3917                                    ; preds = %3916, %3537
  %3918 = phi float [ 0.000000e+00, %3537 ], [ %3910, %3916 ]
  %3919 = phi float [ 0.000000e+00, %3537 ], [ %3911, %3916 ]
  %3920 = phi float [ 0.000000e+00, %3537 ], [ %3912, %3916 ]
  %3921 = call float @dx.op.dot3.f32(i32 55, float %3918, float %3919, float %3920, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3922 = select i1 %238, float 0.000000e+00, float %3918
  %3923 = select i1 %238, float %3921, float %3919
  %3924 = select i1 %238, float 0.000000e+00, float %3920
  %3925 = fcmp fast olt float %3463, 0.000000e+00
  %3926 = call float @dx.op.unary.f32(i32 6, float %3463)  ; FAbs(value)
  %3927 = fmul fast float %3926, %3403
  %3928 = fmul fast float %3926, %3404
  %3929 = fmul fast float %3926, %3405
  %3930 = select i1 %3925, float %3403, float %3927
  %3931 = select i1 %3925, float %3404, float %3928
  %3932 = select i1 %3925, float %3405, float %3929
  %3933 = fsub fast float 1.000000e+00, %3926
  %3934 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3935 = fmul fast float %3934, %3922
  %3936 = fmul fast float %3934, %3923
  %3937 = fmul fast float %3934, %3924
  %3938 = fadd fast float %3930, %3935
  %3939 = fadd fast float %3931, %3936
  %3940 = fadd fast float %3932, %3937
  br label %3941

; <label>:3941                                    ; preds = %3917, %3446
  %3942 = phi float [ %3403, %3446 ], [ %3938, %3917 ]
  %3943 = phi float [ %3404, %3446 ], [ %3939, %3917 ]
  %3944 = phi float [ %3405, %3446 ], [ %3940, %3917 ]
  %3945 = fmul fast float %3452, %3399
  %3946 = fmul fast float %3452, %3400
  %3947 = fmul fast float %3452, %3401
  %3948 = call float @dx.op.dot3.f32(i32 55, float %2109, float %2110, float %2111, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3949 = fcmp fast ogt float %3948, 0x3E7FF19E20000000
  %3950 = fdiv fast float 1.000000e+00, %3948
  %3951 = select i1 %3949, float %3950, float 0.000000e+00
  %3952 = fmul fast float %3951, %2109
  %3953 = fmul fast float %3951, %2110
  %3954 = fmul fast float %3951, %2111
  %3955 = fadd fast float %3952, -1.000000e+00
  %3956 = fadd fast float %3953, -1.000000e+00
  %3957 = fadd fast float %3954, -1.000000e+00
  %3958 = fmul fast float %3955, 5.000000e-01
  %3959 = fmul fast float %3956, 5.000000e-01
  %3960 = fmul fast float %3957, 5.000000e-01
  %3961 = fadd fast float %3958, 1.000000e+00
  %3962 = fadd fast float %3959, 1.000000e+00
  %3963 = fadd fast float %3960, 1.000000e+00
  %3964 = fmul fast float %3942, %3447
  %3965 = fmul fast float %3943, %3448
  %3966 = fmul fast float %3944, %3449
  %3967 = fsub fast float 1.000000e+00, %2123
  %3968 = bitcast float %3967 to i32
  %3969 = sitofp i32 %3968 to float
  %3970 = fmul fast float %3969, 5.000000e+00
  %3971 = fadd fast float %3970, 0xC1EFBF8940000000
  %3972 = fptosi float %3971 to i32
  %3973 = bitcast i32 %3972 to float
  %3974 = fmul fast float %3973, %1485
  %3975 = fmul fast float %3399, %3974
  %3976 = fmul fast float %3975, %3452
  %3977 = fmul fast float %3976, %3961
  %3978 = fmul fast float %3400, %3974
  %3979 = fmul fast float %3978, %3452
  %3980 = fmul fast float %3979, %3962
  %3981 = fmul fast float %3401, %3974
  %3982 = fmul fast float %3981, %3452
  %3983 = fmul fast float %3982, %3963
  %3984 = fmul fast float %3945, %1506
  %3985 = fmul fast float %3946, %1506
  %3986 = fmul fast float %3947, %1506
  %3987 = fadd fast float %3964, %1487
  %3988 = fadd fast float %3987, %3977
  %3989 = fmul fast float %3988, %1506
  %3990 = fadd fast float %3965, %1488
  %3991 = fadd fast float %3990, %3980
  %3992 = fmul fast float %3991, %1506
  %3993 = fadd fast float %3966, %1489
  %3994 = fadd fast float %3993, %3983
  %3995 = fmul fast float %3994, %1506
  %3996 = bitcast i32 %2147 to float
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 3
  %3999 = fcmp fast oeq float %3998, 0.000000e+00
  br i1 %3999, label %5541, label %4000

; <label>:4000                                    ; preds = %3941
  %4001 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %4002 = extractvalue %dx.types.CBufRet.f32 %3997, 1
  %4003 = extractvalue %dx.types.CBufRet.f32 %3997, 2
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 0
  %4006 = extractvalue %dx.types.CBufRet.f32 %4004, 1
  %4007 = extractvalue %dx.types.CBufRet.f32 %4004, 2
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.CBufRet.f32 %4008, 1
  %4011 = call float @dx.op.dot3.f32(i32 55, float %4005, float %4006, float %4007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4012 = select i1 %238, float %4009, float %4005
  %4013 = select i1 %238, float %4011, float %4006
  %4014 = select i1 %238, float %4010, float %4007
  %4015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4015, 2
  %4017 = fmul fast float %4016, %76
  %4018 = fmul fast float %4016, %77
  %4019 = fmul fast float %4016, %78
  %4020 = fadd fast float %4017, %147
  %4021 = fadd fast float %4018, %148
  %4022 = fadd fast float %4019, %149
  %4023 = fcmp fast olt float %3998, 0.000000e+00
  br i1 %4023, label %5119, label %4024

; <label>:4024                                    ; preds = %4000
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.CBufRet.f32 %4025, 2
  %4029 = extractvalue %dx.types.CBufRet.f32 %4025, 3
  %4030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4031 = extractvalue %dx.types.CBufRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.CBufRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.CBufRet.f32 %4030, 2
  %4034 = extractvalue %dx.types.CBufRet.f32 %4030, 3
  %4035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.CBufRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.CBufRet.f32 %4035, 2
  %4039 = extractvalue %dx.types.CBufRet.f32 %4035, 3
  %4040 = fmul fast float %4026, %4020
  %4041 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %4027, float %4040)  ; FMad(a,b,c)
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4028, float %4041)  ; FMad(a,b,c)
  %4043 = fadd fast float %4042, %4029
  %4044 = fmul fast float %4031, %4020
  %4045 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %4032, float %4044)  ; FMad(a,b,c)
  %4046 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4033, float %4045)  ; FMad(a,b,c)
  %4047 = fadd fast float %4046, %4034
  %4048 = fmul fast float %4036, %4020
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %4037, float %4048)  ; FMad(a,b,c)
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4038, float %4049)  ; FMad(a,b,c)
  %4051 = fadd fast float %4050, %4039
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4055 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4056 = fmul fast float %4055, %4043
  %4057 = fmul fast float %4055, %4047
  %4058 = fadd fast float %4056, %4053
  %4059 = fadd fast float %4057, %4054
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.CBufRet.f32 %4060, 3
  %4064 = fmul fast float %4063, %4043
  %4065 = fmul fast float %4063, %4047
  %4066 = fadd fast float %4064, %4061
  %4067 = fadd fast float %4065, %4062
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4070 = fsub fast float %4069, %4051
  %4071 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4072 = fmul fast float %4070, %4071
  %4073 = fsub fast float 1.000000e+00, %4072
  %4074 = call float @dx.op.unary.f32(i32 7, float %4073)  ; Saturate(value)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4060, 2
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 2
  %4078 = fadd fast float %4077, %4075
  %4079 = fcmp fast ogt float %4078, 0.000000e+00
  br i1 %4079, label %4080, label %4104

; <label>:4080                                    ; preds = %4024
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.CBufRet.f32 %4081, 1
  %4084 = fsub fast float %4066, %4082
  %4085 = fsub fast float %4067, %4083
  %4086 = fcmp fast olt float %4084, 0.000000e+00
  %4087 = fcmp fast olt float %4085, 0.000000e+00
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 0
  %4090 = extractvalue %dx.types.CBufRet.f32 %4088, 1
  %4091 = extractvalue %dx.types.CBufRet.f32 %4088, 2
  %4092 = extractvalue %dx.types.CBufRet.f32 %4088, 3
  %4093 = select i1 %4086, float %4089, float %4091
  %4094 = select i1 %4087, float %4090, float %4092
  %4095 = fmul fast float %4093, %4084
  %4096 = fmul fast float %4094, %4085
  %4097 = call float @dx.op.unary.f32(i32 6, float %4095)  ; FAbs(value)
  %4098 = call float @dx.op.unary.f32(i32 6, float %4096)  ; FAbs(value)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4015, 0
  %4100 = call float @dx.op.binary.f32(i32 35, float %4097, float %4098)  ; FMax(a,b)
  %4101 = fsub fast float %4099, %4100
  %4102 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4103 = fmul fast float %4102, %4074
  br label %4104

; <label>:4104                                    ; preds = %4080, %4024
  %4105 = phi float [ %4103, %4080 ], [ 0.000000e+00, %4024 ]
  %4106 = extractvalue %dx.types.CBufRet.f32 %4052, 2
  %4107 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4108 = fadd fast float %4107, %4106
  %4109 = fcmp fast ogt float %4108, 0.000000e+00
  %4110 = extractvalue %dx.types.CBufRet.f32 %4015, 0
  br i1 %4109, label %4111, label %4134

; <label>:4111                                    ; preds = %4104
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 0
  %4114 = extractvalue %dx.types.CBufRet.f32 %4112, 1
  %4115 = fsub fast float %4058, %4113
  %4116 = fsub fast float %4059, %4114
  %4117 = fcmp fast olt float %4115, 0.000000e+00
  %4118 = fcmp fast olt float %4116, 0.000000e+00
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 0
  %4121 = extractvalue %dx.types.CBufRet.f32 %4119, 1
  %4122 = extractvalue %dx.types.CBufRet.f32 %4119, 2
  %4123 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4124 = select i1 %4117, float %4120, float %4122
  %4125 = select i1 %4118, float %4121, float %4123
  %4126 = fmul fast float %4124, %4115
  %4127 = fmul fast float %4125, %4116
  %4128 = call float @dx.op.unary.f32(i32 6, float %4126)  ; FAbs(value)
  %4129 = call float @dx.op.unary.f32(i32 6, float %4127)  ; FAbs(value)
  %4130 = call float @dx.op.binary.f32(i32 35, float %4128, float %4129)  ; FMax(a,b)
  %4131 = fsub fast float %4110, %4130
  %4132 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4133 = fmul fast float %4132, %4074
  br label %4134

; <label>:4134                                    ; preds = %4111, %4104
  %4135 = phi float [ %4133, %4111 ], [ 0.000000e+00, %4104 ]
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 1
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.CBufRet.f32 %4139, 1
  %4142 = fsub fast float %4043, %4140
  %4143 = fsub fast float %4047, %4141
  %4144 = fcmp fast olt float %4142, 0.000000e+00
  %4145 = fcmp fast olt float %4143, 0.000000e+00
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 0
  %4148 = extractvalue %dx.types.CBufRet.f32 %4146, 1
  %4149 = extractvalue %dx.types.CBufRet.f32 %4146, 2
  %4150 = extractvalue %dx.types.CBufRet.f32 %4146, 3
  %4151 = select i1 %4144, float %4147, float %4149
  %4152 = select i1 %4145, float %4148, float %4150
  %4153 = fmul fast float %4151, %4142
  %4154 = fmul fast float %4152, %4143
  %4155 = call float @dx.op.unary.f32(i32 6, float %4153)  ; FAbs(value)
  %4156 = call float @dx.op.unary.f32(i32 6, float %4154)  ; FAbs(value)
  %4157 = call float @dx.op.binary.f32(i32 35, float %4155, float %4156)  ; FMax(a,b)
  %4158 = fsub fast float %4110, %4157
  %4159 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4160 = call float @dx.op.binary.f32(i32 36, float %4159, float %4138)  ; FMin(a,b)
  %4161 = fmul fast float %4160, %4074
  %4162 = fsub fast float %4135, %4161
  %4163 = fsub fast float %4105, %4135
  %4164 = fsub fast float %4163, %4161
  %4165 = call float @dx.op.binary.f32(i32 35, float %4135, float %4105)  ; FMax(a,b)
  %4166 = call float @dx.op.binary.f32(i32 35, float %4161, float %4165)  ; FMax(a,b)
  %4167 = fcmp fast olt float %4166, 1.000000e+00
  br i1 %4167, label %4168, label %4566, !dx.controlflow.hints !115

; <label>:4168                                    ; preds = %4134
  %4169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.f32 %4169, 0
  %4171 = fcmp fast une float %4170, 0.000000e+00
  br i1 %4171, label %4172, label %4566, !dx.controlflow.hints !116

; <label>:4172                                    ; preds = %4168
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.CBufRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.CBufRet.f32 %4173, 2
  %4177 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.CBufRet.f32 %4178, 2
  %4182 = extractvalue %dx.types.CBufRet.f32 %4178, 3
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.CBufRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.CBufRet.f32 %4183, 2
  %4187 = extractvalue %dx.types.CBufRet.f32 %4183, 3
  %4188 = fmul fast float %4174, %4020
  %4189 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %4175, float %4188)  ; FMad(a,b,c)
  %4190 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4176, float %4189)  ; FMad(a,b,c)
  %4191 = fadd fast float %4190, %4177
  %4192 = fmul fast float %4179, %4020
  %4193 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %4180, float %4192)  ; FMad(a,b,c)
  %4194 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4181, float %4193)  ; FMad(a,b,c)
  %4195 = fadd fast float %4194, %4182
  %4196 = fmul fast float %4184, %4020
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %4185, float %4196)  ; FMad(a,b,c)
  %4198 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4186, float %4197)  ; FMad(a,b,c)
  %4199 = fadd fast float %4198, %4187
  %4200 = fcmp fast oge float %4191, 1.000000e+00
  %4201 = fcmp fast oge float %4195, 1.000000e+00
  %4202 = or i1 %4200, %4201
  %4203 = fcmp fast olt float %4191, 0.000000e+00
  %4204 = fcmp fast olt float %4195, 0.000000e+00
  %4205 = or i1 %4203, %4204
  %4206 = or i1 %4202, %4205
  br i1 %4206, label %4566, label %4207, !dx.controlflow.hints !117

; <label>:4207                                    ; preds = %4172
  %4208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.CBufRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.CBufRet.f32 %4208, 2
  %4212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.i32 %4212, 2
  %4214 = uitofp i32 %4213 to float
  %4215 = extractvalue %dx.types.CBufRet.i32 %4212, 3
  %4216 = uitofp i32 %4215 to float
  %4217 = extractvalue %dx.types.CBufRet.f32 %4208, 3
  %4218 = fmul fast float %4217, 2.000000e+00
  %4219 = fsub fast float %4191, %4209
  %4220 = fsub fast float %4195, %4210
  %4221 = fmul fast float %4218, %4219
  %4222 = fmul fast float %4218, %4220
  %4223 = fdiv fast float 1.000000e+00, %4003
  %4224 = fmul fast float %4222, %4223
  %4225 = call float @dx.op.unary.f32(i32 6, float %4224)  ; FAbs(value)
  %4226 = fmul fast float %4211, %4022
  %4227 = fmul fast float %4226, %4218
  %4228 = call float @dx.op.unary.f32(i32 6, float %4227)  ; FAbs(value)
  %4229 = call float @dx.op.unary.f32(i32 6, float %4221)  ; FAbs(value)
  %4230 = call float @dx.op.binary.f32(i32 35, float %4228, float %4225)  ; FMax(a,b)
  %4231 = call float @dx.op.binary.f32(i32 35, float %4229, float %4230)  ; FMax(a,b)
  %4232 = fmul fast float %4231, 2.000000e+00
  %4233 = call float @dx.op.unary.f32(i32 23, float %4232)  ; Log(value)
  %4234 = call float @dx.op.binary.f32(i32 35, float %4233, float %4214)  ; FMax(a,b)
  %4235 = call float @dx.op.unary.f32(i32 22, float %4234)  ; Frc(value)
  %4236 = fadd fast float %4235, 0xBFEA666660000000
  %4237 = fmul fast float %4236, 8.000000e+00
  %4238 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4239 = call float @dx.op.unary.f32(i32 27, float %4234)  ; Round_ni(value)
  %4240 = fadd fast float %4239, %4238
  %4241 = call float @dx.op.binary.f32(i32 36, float %4240, float %4216)  ; FMin(a,b)
  %4242 = call float @dx.op.unary.f32(i32 27, float %4241)  ; Round_ni(value)
  %4243 = fsub fast float -0.000000e+00, %4242
  %4244 = call float @dx.op.unary.f32(i32 21, float %4243)  ; Exp(value)
  %4245 = fmul fast float %4244, %4218
  %4246 = fmul fast float %4245, %4191
  %4247 = fmul fast float %4245, %4195
  %4248 = fmul fast float %4246, 2.500000e-01
  %4249 = fmul fast float %4247, 2.500000e-01
  %4250 = fadd fast float %4248, 5.000000e-01
  %4251 = fadd fast float %4249, 5.000000e-01
  %4252 = fsub fast float %4216, %4214
  %4253 = fptoui float %4252 to i32
  %4254 = add i32 %4253, 320
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4254)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 0
  %4257 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4258 = fcmp fast une float %4241, %4216
  %4259 = fsub fast float %4191, %4256
  %4260 = fsub fast float %4195, %4257
  %4261 = call float @dx.op.unary.f32(i32 6, float %4259)  ; FAbs(value)
  %4262 = call float @dx.op.unary.f32(i32 6, float %4260)  ; FAbs(value)
  %4263 = fmul fast float %4261, %4245
  %4264 = fmul fast float %4262, %4245
  %4265 = fcmp fast olt float %4263, 1.000000e+00
  %4266 = fcmp fast olt float %4264, 1.000000e+00
  %4267 = and i1 %4265, %4266
  %4268 = or i1 %4258, %4267
  br i1 %4268, label %4269, label %4566, !dx.controlflow.hints !118

; <label>:4269                                    ; preds = %4207
  %4270 = fmul fast float %4247, 5.000000e-01
  %4271 = fmul fast float %4246, 5.000000e-01
  %4272 = fadd fast float %4270, 5.000000e-01
  %4273 = fadd fast float %4271, 5.000000e-01
  %4274 = sitofp i32 %4213 to float
  %4275 = fsub fast float %4241, %4274
  %4276 = call float @dx.op.unary.f32(i32 27, float %4275)  ; Round_ni(value)
  %4277 = call float @dx.op.unary.f32(i32 22, float %4241)  ; Frc(value)
  %4278 = call float @dx.op.unary.f32(i32 22, float %4273)  ; Frc(value)
  %4279 = call float @dx.op.unary.f32(i32 22, float %4272)  ; Frc(value)
  %4280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4278, float %4279, float %4276, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = extractvalue %dx.types.ResRet.f32 %4280, 1
  %4283 = extractvalue %dx.types.ResRet.f32 %4280, 2
  %4284 = extractvalue %dx.types.ResRet.f32 %4280, 3
  %4285 = fcmp fast ogt float %4277, 0.000000e+00
  br i1 %4285, label %4286, label %4307, !dx.controlflow.hints !119

; <label>:4286                                    ; preds = %4269
  %4287 = fadd fast float %4276, 1.000000e+00
  %4288 = call float @dx.op.unary.f32(i32 22, float %4250)  ; Frc(value)
  %4289 = call float @dx.op.unary.f32(i32 22, float %4251)  ; Frc(value)
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4288, float %4289, float %4287, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.ResRet.f32 %4290, 1
  %4293 = extractvalue %dx.types.ResRet.f32 %4290, 2
  %4294 = extractvalue %dx.types.ResRet.f32 %4290, 3
  %4295 = fsub fast float %4291, %4281
  %4296 = fsub fast float %4292, %4282
  %4297 = fsub fast float %4293, %4283
  %4298 = fsub fast float %4294, %4284
  %4299 = fmul fast float %4295, %4277
  %4300 = fmul fast float %4296, %4277
  %4301 = fmul fast float %4297, %4277
  %4302 = fmul fast float %4298, %4277
  %4303 = fadd fast float %4299, %4281
  %4304 = fadd fast float %4300, %4282
  %4305 = fadd fast float %4301, %4283
  %4306 = fadd fast float %4302, %4284
  br label %4307

; <label>:4307                                    ; preds = %4286, %4269
  %4308 = phi float [ %4303, %4286 ], [ %4281, %4269 ]
  %4309 = phi float [ %4304, %4286 ], [ %4282, %4269 ]
  %4310 = phi float [ %4305, %4286 ], [ %4283, %4269 ]
  %4311 = phi float [ %4306, %4286 ], [ %4284, %4269 ]
  %4312 = fadd fast float %4308, -5.000000e-01
  %4313 = fadd fast float %4310, -5.000000e-01
  %4314 = fmul fast float %4312, 0xBFD5555560000000
  %4315 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4313, float %4314)  ; FMad(a,b,c)
  %4316 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4309, float 0.000000e+00)  ; FMad(a,b,c)
  %4317 = fadd fast float %4316, %4311
  %4318 = fmul fast float %4312, -7.500000e-01
  %4319 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4313, float %4318)  ; FMad(a,b,c)
  %4320 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4309, float 0.000000e+00)  ; FMad(a,b,c)
  %4321 = fadd fast float %4320, %4311
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 0
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4326 = extractvalue %dx.types.CBufRet.f32 %4324, 1
  %4327 = extractvalue %dx.types.CBufRet.f32 %4324, 2
  %4328 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4329 = fsub fast float %4325, %4315
  %4330 = fsub fast float %4326, %4317
  %4331 = fsub fast float %4327, %4319
  %4332 = fsub fast float %4328, %4321
  %4333 = fmul fast float %4329, %4323
  %4334 = fmul fast float %4330, %4323
  %4335 = fmul fast float %4331, %4323
  %4336 = fmul fast float %4332, %4323
  %4337 = fadd fast float %4333, %4315
  %4338 = fadd fast float %4334, %4317
  %4339 = fadd fast float %4335, %4319
  %4340 = fadd fast float %4336, %4321
  %4341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.i32 %4341, 0
  %4343 = and i32 %4342, 536870911
  %4344 = uitofp i32 %4343 to float
  %4345 = fmul fast float %4344, %4191
  %4346 = fmul fast float %4344, %4195
  %4347 = fptoui float %4345 to i32
  %4348 = fptoui float %4346 to i32
  %4349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.i32 %4349, 0
  %4351 = and i32 %4350, 31
  %4352 = lshr i32 %4347, %4351
  %4353 = lshr i32 %4348, %4351
  %4354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4355 = extractvalue %dx.types.ResRet.i32 %4354, 0
  %4356 = and i32 %4355, 31
  %4357 = shl i32 1, %4356
  %4358 = call i32 @dx.op.binary.i32(i32 40, i32 %4357, i32 4)  ; UMin(a,b)
  %4359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4360 = extractvalue %dx.types.ResRet.i32 %4359, 0
  %4361 = extractvalue %dx.types.ResRet.i32 %4359, 1
  %4362 = icmp eq i32 %4358, 0
  br i1 %4362, label %4404, label %4363

; <label>:4363                                    ; preds = %4307
  br label %4364

; <label>:4364                                    ; preds = %4392, %4363
  %4365 = phi i32 [ %4395, %4392 ], [ 0, %4363 ]
  %4366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.i32 %4366, 0
  %4368 = lshr i32 %4367, 16
  %4369 = and i32 %4368, 31
  %4370 = shl i32 %4353, %4369
  %4371 = add i32 %4370, %4352
  %4372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4373 = extractvalue %dx.types.ResRet.i32 %4372, 0
  %4374 = and i32 %4373, 31
  %4375 = shl i32 %4371, %4374
  %4376 = add i32 %4375, %4365
  %4377 = shl i32 %4376, 2
  %4378 = add i32 %4377, 32
  %4379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4378, i32 undef)  ; BufferLoad(srv,index,wot)
  %4380 = extractvalue %dx.types.ResRet.i32 %4379, 0
  %4381 = icmp slt i32 %4380, 0
  %4382 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4365
  %4383 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4365
  %4384 = bitcast float* %4382 to i32*
  %4385 = bitcast float* %4383 to i32*
  br i1 %4381, label %4386, label %4392

; <label>:4386                                    ; preds = %4364
  %4387 = and i32 %4380, 1073741823
  %4388 = add nuw nsw i32 %4387, 20
  %4389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4388, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.i32 %4389, 0
  %4391 = extractvalue %dx.types.ResRet.i32 %4389, 1
  br label %4392

; <label>:4392                                    ; preds = %4386, %4364
  %4393 = phi i32 [ %4390, %4386 ], [ %4360, %4364 ]
  %4394 = phi i32 [ %4391, %4386 ], [ %4361, %4364 ]
  store i32 %4393, i32* %4384, align 4
  store i32 %4394, i32* %4385, align 4
  %4395 = add nuw i32 %4365, 1
  %4396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.i32 %4396, 2
  %4398 = icmp eq i32 %4397, 0
  %4399 = icmp ugt i32 %4380, -1073741825
  %4400 = and i1 %4399, %4398
  %4401 = icmp ult i32 %4395, %4358
  %4402 = and i1 %4400, %4401
  br i1 %4402, label %4364, label %4403

; <label>:4403                                    ; preds = %4392
  br label %4404

; <label>:4404                                    ; preds = %4403, %4307
  %4405 = phi i32 [ 0, %4307 ], [ %4395, %4403 ]
  %4406 = extractvalue %dx.types.CBufRet.f32 %4169, 2
  %4407 = fptoui float %4406 to i32
  %4408 = icmp eq i32 %4407, 0
  br i1 %4408, label %4460, label %4409

; <label>:4409                                    ; preds = %4404
  br label %4410

; <label>:4410                                    ; preds = %4455, %4409
  %4411 = phi i32 [ %4456, %4455 ], [ %4405, %4409 ]
  %4412 = phi i32 [ %4457, %4455 ], [ 0, %4409 ]
  %4413 = lshr i32 %4412, 2
  %4414 = and i32 %4412, 3
  %4415 = add nuw nsw i32 %4413, 83
  %4416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4415)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.i32 %4416, 0
  %4418 = extractvalue %dx.types.CBufRet.i32 %4416, 1
  %4419 = extractvalue %dx.types.CBufRet.i32 %4416, 2
  %4420 = extractvalue %dx.types.CBufRet.i32 %4416, 3
  %4421 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4417, i32* %4421, align 4
  %4422 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4418, i32* %4422, align 4
  %4423 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4419, i32* %4423, align 4
  %4424 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4420, i32* %4424, align 4
  %4425 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4414
  %4426 = load i32, i32* %4425, align 4, !tbaa !120, !noalias !124
  %4427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.i32 %4427, 0
  %4429 = lshr i32 %4428, 16
  %4430 = and i32 %4429, 31
  %4431 = shl i32 %4353, %4430
  %4432 = add i32 %4431, %4352
  %4433 = shl i32 %4432, 2
  %4434 = add i32 %4433, %4426
  %4435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4434, i32 undef)  ; BufferLoad(srv,index,wot)
  %4436 = extractvalue %dx.types.ResRet.i32 %4435, 0
  %4437 = icmp eq i32 %4436, 0
  br i1 %4437, label %4455, label %4438

; <label>:4438                                    ; preds = %4410
  %4439 = icmp slt i32 %4436, 0
  %4440 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4411
  %4441 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4411
  %4442 = bitcast float* %4440 to i32*
  %4443 = bitcast float* %4441 to i32*
  br i1 %4439, label %4444, label %4451

; <label>:4444                                    ; preds = %4438
  %4445 = and i32 %4436, 1073741823
  %4446 = add i32 %4426, 20
  %4447 = add i32 %4446, %4445
  %4448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4447, i32 undef)  ; BufferLoad(srv,index,wot)
  %4449 = extractvalue %dx.types.ResRet.i32 %4448, 0
  %4450 = extractvalue %dx.types.ResRet.i32 %4448, 1
  br label %4451

; <label>:4451                                    ; preds = %4444, %4438
  %4452 = phi i32 [ %4449, %4444 ], [ %4360, %4438 ]
  %4453 = phi i32 [ %4450, %4444 ], [ %4361, %4438 ]
  store i32 %4452, i32* %4442, align 4
  store i32 %4453, i32* %4443, align 4
  %4454 = add i32 %4411, 1
  br label %4455

; <label>:4455                                    ; preds = %4451, %4410
  %4456 = phi i32 [ %4411, %4410 ], [ %4454, %4451 ]
  %4457 = add nuw i32 %4412, 1
  %4458 = icmp eq i32 %4457, %4407
  br i1 %4458, label %4459, label %4410

; <label>:4459                                    ; preds = %4455
  br label %4460

; <label>:4460                                    ; preds = %4459, %4404
  %4461 = phi i32 [ %4405, %4404 ], [ %4456, %4459 ]
  %4462 = icmp eq i32 %4461, 1
  %4463 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %4464 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %4462, label %4465, label %4468

; <label>:4465                                    ; preds = %4460
  %4466 = load float, float* %4463, align 4
  %4467 = load float, float* %4464, align 4
  br label %4495

; <label>:4468                                    ; preds = %4460
  %4469 = load float, float* %4463, align 4
  %4470 = load float, float* %4464, align 4
  %4471 = fdiv fast float 1.000000e+00, %4470
  %4472 = fsub fast float %4469, %4471
  %4473 = icmp ugt i32 %4461, 1
  br i1 %4473, label %4474, label %4490

; <label>:4474                                    ; preds = %4468
  br label %4475

; <label>:4475                                    ; preds = %4475, %4474
  %4476 = phi float [ %4485, %4475 ], [ %4472, %4474 ]
  %4477 = phi float [ %4486, %4475 ], [ %4469, %4474 ]
  %4478 = phi i32 [ %4487, %4475 ], [ 1, %4474 ]
  %4479 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %4478
  %4480 = load float, float* %4479, align 4
  %4481 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4478
  %4482 = load float, float* %4481, align 4
  %4483 = fdiv fast float 1.000000e+00, %4482
  %4484 = fsub fast float %4480, %4483
  %4485 = call float @dx.op.binary.f32(i32 36, float %4476, float %4484)  ; FMin(a,b)
  %4486 = call float @dx.op.binary.f32(i32 35, float %4477, float %4480)  ; FMax(a,b)
  %4487 = add nuw i32 %4478, 1
  %4488 = icmp eq i32 %4487, %4461
  br i1 %4488, label %4489, label %4475

; <label>:4489                                    ; preds = %4475
  br label %4490

; <label>:4490                                    ; preds = %4489, %4468
  %4491 = phi float [ %4472, %4468 ], [ %4485, %4489 ]
  %4492 = phi float [ %4469, %4468 ], [ %4486, %4489 ]
  %4493 = fsub fast float %4492, %4491
  %4494 = fdiv fast float 1.000000e+00, %4493
  br label %4495

; <label>:4495                                    ; preds = %4490, %4465
  %4496 = phi float [ %4466, %4465 ], [ %4492, %4490 ]
  %4497 = phi float [ %4467, %4465 ], [ %4494, %4490 ]
  %4498 = fadd fast float %4199, %4496
  %4499 = fmul fast float %4498, %4497
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = fmul fast float %4500, 2.000000e+00
  %4502 = fsub fast float 1.000000e+00, %4501
  %4503 = fmul fast float %4337, %4337
  %4504 = fsub fast float %4338, %4503
  %4505 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4504)  ; FMax(a,b)
  %4506 = fdiv fast float 1.000000e+00, %4505
  %4507 = fmul fast float %4338, %4337
  %4508 = fsub fast float %4339, %4507
  %4509 = fsub fast float %4502, %4337
  %4510 = fmul fast float %4502, %4502
  %4511 = fsub fast float %4510, %4338
  %4512 = fmul fast float %4506, %4508
  %4513 = fmul fast float %4512, %4509
  %4514 = fsub fast float %4511, %4513
  %4515 = fmul fast float %4338, %4338
  %4516 = fsub fast float %4340, %4515
  %4517 = fmul fast float %4508, %4508
  %4518 = fmul fast float %4517, %4506
  %4519 = fsub fast float %4516, %4518
  %4520 = fdiv fast float %4514, %4519
  %4521 = fmul fast float %4520, %4508
  %4522 = fsub fast float %4509, %4521
  %4523 = fmul fast float %4522, %4506
  %4524 = fmul fast float %4523, %4337
  %4525 = fsub fast float 1.000000e+00, %4524
  %4526 = fmul fast float %4520, %4338
  %4527 = fsub fast float %4525, %4526
  %4528 = fmul fast float %4523, %4523
  %4529 = fmul fast float %4520, 4.000000e+00
  %4530 = fmul fast float %4529, %4527
  %4531 = fsub fast float %4528, %4530
  %4532 = call float @dx.op.unary.f32(i32 24, float %4531)  ; Sqrt(value)
  %4533 = fcmp fast oge float %4523, 0.000000e+00
  %4534 = fsub fast float -0.000000e+00, %4532
  %4535 = select i1 %4533, float %4534, float %4532
  %4536 = fsub fast float %4535, %4523
  %4537 = fdiv fast float %4536, %4520
  %4538 = fdiv fast float %4527, %4536
  %4539 = fmul fast float %4537, 5.000000e-01
  %4540 = fmul fast float %4538, 2.000000e+00
  %4541 = select i1 %4533, float %4539, float %4540
  %4542 = select i1 %4533, float %4540, float %4539
  %4543 = call float @dx.op.binary.f32(i32 35, float %4541, float %4542)  ; FMax(a,b)
  %4544 = call float @dx.op.binary.f32(i32 36, float %4541, float %4542)  ; FMin(a,b)
  %4545 = fcmp fast ogt float %4502, %4543
  %4546 = fsub fast float %4502, %4544
  %4547 = fsub fast float %4502, %4543
  %4548 = fsub fast float %4543, %4544
  %4549 = select i1 %4545, float %4547, float %4548
  %4550 = fmul float %4546, %4549
  %4551 = select i1 %4545, float %4544, float %4502
  %4552 = fcmp fast ogt float %4502, %4544
  %4553 = fmul fast float %4551, %4543
  %4554 = fadd fast float %4551, %4543
  %4555 = fmul fast float %4554, %4337
  %4556 = fadd fast float %4553, %4338
  %4557 = fsub fast float %4556, %4555
  %4558 = fdiv fast float %4557, %4550
  %4559 = select i1 %4552, float %4558, float 0.000000e+00
  %4560 = fsub fast float 1.000000e+00, %4559
  %4561 = select i1 %4545, float %4560, float %4559
  %4562 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4564 = fmul fast float %4563, %4562
  %4565 = fsub fast float 1.000000e+00, %4564
  br label %4566

; <label>:4566                                    ; preds = %4495, %4207, %4172, %4168, %4134
  %4567 = phi float [ 1.000000e+00, %4134 ], [ %4565, %4495 ], [ 1.000000e+00, %4172 ], [ 1.000000e+00, %4207 ], [ 1.000000e+00, %4168 ]
  %4568 = fcmp fast ogt float %4164, 0.000000e+00
  br i1 %4568, label %4569, label %4731, !dx.controlflow.hints !133

; <label>:4569                                    ; preds = %4566
  %4570 = fadd fast float %4077, %4051
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 2
  %4573 = extractvalue %dx.types.CBufRet.f32 %4571, 3
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 2
  %4576 = call float @dx.op.binary.f32(i32 35, float %4570, float 0.000000e+00)  ; FMax(a,b)
  %4577 = fadd fast float %4576, 0x3F10000000000000
  %4578 = fcmp fast oeq float %4575, 0.000000e+00
  br i1 %4578, label %4579, label %4646

; <label>:4579                                    ; preds = %4569
  %4580 = extractvalue %dx.types.CBufRet.f32 %4571, 1
  %4581 = extractvalue %dx.types.CBufRet.f32 %4571, 0
  %4582 = fmul fast float %4581, %4066
  %4583 = fmul fast float %4580, %4067
  %4584 = fadd fast float %4582, 5.000000e-01
  %4585 = call float @dx.op.unary.f32(i32 27, float %4584)  ; Round_ni(value)
  %4586 = fadd fast float %4583, 5.000000e-01
  %4587 = call float @dx.op.unary.f32(i32 27, float %4586)  ; Round_ni(value)
  %4588 = fsub fast float %4584, %4585
  %4589 = fsub fast float %4586, %4587
  %4590 = fadd fast float %4585, -5.000000e-01
  %4591 = fadd fast float %4587, -5.000000e-01
  %4592 = fmul fast float %4588, 2.000000e+00
  %4593 = fsub fast float 3.000000e+00, %4592
  %4594 = fadd fast float %4592, 1.000000e+00
  %4595 = fsub fast float 2.000000e+00, %4588
  %4596 = bitcast float %4593 to i32
  %4597 = sub nsw i32 2129859010, %4596
  %4598 = bitcast i32 %4597 to float
  %4599 = fmul fast float %4598, %4595
  %4600 = fadd fast float %4599, -1.000000e+00
  %4601 = bitcast float %4594 to i32
  %4602 = sub nsw i32 2129859010, %4601
  %4603 = bitcast i32 %4602 to float
  %4604 = fmul fast float %4603, %4588
  %4605 = fadd fast float %4604, 1.000000e+00
  %4606 = fmul fast float %4589, 2.000000e+00
  %4607 = fsub fast float 3.000000e+00, %4606
  %4608 = fadd fast float %4606, 1.000000e+00
  %4609 = fsub fast float 2.000000e+00, %4589
  %4610 = bitcast float %4607 to i32
  %4611 = sub nsw i32 2129859010, %4610
  %4612 = bitcast i32 %4611 to float
  %4613 = fmul fast float %4612, %4609
  %4614 = fadd fast float %4613, -1.000000e+00
  %4615 = bitcast float %4608 to i32
  %4616 = sub nsw i32 2129859010, %4615
  %4617 = bitcast i32 %4616 to float
  %4618 = fmul fast float %4617, %4589
  %4619 = fadd fast float %4618, 1.000000e+00
  %4620 = fadd fast float %4600, %4590
  %4621 = fmul fast float %4620, %4572
  %4622 = fadd fast float %4614, %4591
  %4623 = fmul fast float %4622, %4573
  %4624 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4621, float %4623, float undef, float undef, i32 0, i32 0, i32 undef, float %4577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4625 = extractvalue %dx.types.ResRet.f32 %4624, 0
  %4626 = fmul fast float %4625, %4593
  %4627 = fadd fast float %4605, %4590
  %4628 = fmul fast float %4627, %4572
  %4629 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4628, float %4623, float undef, float undef, i32 0, i32 0, i32 undef, float %4577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4630 = extractvalue %dx.types.ResRet.f32 %4629, 0
  %4631 = fmul fast float %4630, %4594
  %4632 = fadd fast float %4619, %4591
  %4633 = fmul fast float %4632, %4573
  %4634 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4621, float %4633, float undef, float undef, i32 0, i32 0, i32 undef, float %4577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = fmul fast float %4635, %4593
  %4637 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4628, float %4633, float undef, float undef, i32 0, i32 0, i32 undef, float %4577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = fmul fast float %4638, %4594
  %4640 = fadd fast float %4639, %4636
  %4641 = fmul fast float %4640, %4608
  %4642 = fadd fast float %4631, %4626
  %4643 = fmul fast float %4642, %4607
  %4644 = fadd fast float %4643, %4641
  %4645 = fmul fast float %4644, 6.250000e-02
  br label %4731

; <label>:4646                                    ; preds = %4569
  %4647 = fmul fast float %249, 0x401921FB60000000
  %4648 = call float @dx.op.unary.f32(i32 13, float %4647)  ; Sin(value)
  %4649 = call float @dx.op.unary.f32(i32 12, float %4647)  ; Cos(value)
  %4650 = fsub fast float -0.000000e+00, %4648
  br label %4651

; <label>:4651                                    ; preds = %4700, %4646
  %4652 = phi float [ 0.000000e+00, %4646 ], [ %4695, %4700 ]
  %4653 = phi float [ 0.000000e+00, %4646 ], [ %4697, %4700 ]
  %4654 = phi i32 [ 0, %4646 ], [ %4701, %4700 ]
  %4655 = mul i32 %4654, 2
  %4656 = add i32 0, %4655
  %4657 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4656
  %4658 = load float, float* %4657, align 4
  %4659 = mul i32 %4654, 2
  %4660 = add i32 1, %4659
  %4661 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4660
  %4662 = load float, float* %4661, align 4
  %4663 = fmul fast float %4658, %4649
  %4664 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4650, float %4663)  ; FMad(a,b,c)
  %4665 = fmul fast float %4658, %4648
  %4666 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4649, float %4665)  ; FMad(a,b,c)
  %4667 = fmul fast float %4664, %4575
  %4668 = fmul fast float %4666, %4575
  %4669 = fadd fast float %4667, %4066
  %4670 = fadd fast float %4668, %4067
  %4671 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4669, float %4670, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4672 = extractvalue %dx.types.ResRet.f32 %4671, 0
  %4673 = extractvalue %dx.types.ResRet.f32 %4671, 1
  %4674 = extractvalue %dx.types.ResRet.f32 %4671, 2
  %4675 = extractvalue %dx.types.ResRet.f32 %4671, 3
  %4676 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %4672, float* %4676, align 4
  %4677 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %4673, float* %4677, align 4
  %4678 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %4674, float* %4678, align 4
  %4679 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %4675, float* %4679, align 4
  %4680 = fsub fast float %4672, %4577
  %4681 = fcmp fast olt float %4680, 0.000000e+00
  %4682 = select i1 %4681, float 0.000000e+00, float 1.000000e+00
  %4683 = fadd fast float %4682, %4652
  %4684 = fmul fast float %4682, %4680
  %4685 = fadd fast float %4684, %4653
  br label %4686

; <label>:4686                                    ; preds = %4686, %4651
  %4687 = phi i32 [ 1, %4651 ], [ %4698, %4686 ]
  %4688 = phi float [ %4685, %4651 ], [ %4697, %4686 ]
  %4689 = phi float [ %4683, %4651 ], [ %4695, %4686 ]
  %4690 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %4687
  %4691 = load float, float* %4690, align 4, !tbaa !134, !noalias !124
  %4692 = fsub fast float %4691, %4577
  %4693 = fcmp fast olt float %4692, 0.000000e+00
  %4694 = select i1 %4693, float 0.000000e+00, float 1.000000e+00
  %4695 = fadd fast float %4694, %4689
  %4696 = fmul fast float %4694, %4692
  %4697 = fadd fast float %4696, %4688
  %4698 = add nuw nsw i32 %4687, 1
  %4699 = icmp eq i32 %4698, 4
  br i1 %4699, label %4700, label %4686, !llvm.loop !136

; <label>:4700                                    ; preds = %4686
  %4701 = add nuw nsw i32 %4654, 1
  %4702 = icmp eq i32 %4701, 8
  br i1 %4702, label %4703, label %4651, !llvm.loop !137

; <label>:4703                                    ; preds = %4700
  %4704 = fdiv fast float 1.000000e+00, %4695
  %4705 = fmul fast float %4704, %4697
  %4706 = fdiv fast float 1.000000e+00, %4577
  %4707 = fmul fast float %4705, %4706
  %4708 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4709 = call float @dx.op.binary.f32(i32 35, float %4708, float 0.000000e+00)  ; FMax(a,b)
  %4710 = fmul fast float %4695, 3.125000e-02
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = fmul fast float %4711, 2.000000e+00
  %4713 = fadd fast float %4712, -1.000000e+00
  %4714 = fcmp fast ogt float %4713, 0.000000e+00
  %4715 = fcmp fast olt float %4713, 0.000000e+00
  %4716 = zext i1 %4714 to i32
  %4717 = zext i1 %4715 to i32
  %4718 = sub nsw i32 %4716, %4717
  %4719 = sitofp i32 %4718 to float
  %4720 = fmul fast float %4719, %4713
  %4721 = fsub fast float 1.000000e+00, %4720
  %4722 = fmul fast float %4721, %4721
  %4723 = fmul fast float %4722, %4721
  %4724 = fsub fast float %4721, %4723
  %4725 = fmul fast float %4724, %4709
  %4726 = fsub fast float 1.000000e+00, %4723
  %4727 = fsub fast float %4726, %4725
  %4728 = fmul fast float %4719, 5.000000e-01
  %4729 = fmul fast float %4728, %4727
  %4730 = fsub fast float 5.000000e-01, %4729
  br label %4731

; <label>:4731                                    ; preds = %4703, %4579, %4566
  %4732 = phi float [ 1.000000e+00, %4566 ], [ %4645, %4579 ], [ %4730, %4703 ]
  %4733 = fcmp fast ogt float %4162, 0.000000e+00
  br i1 %4733, label %4734, label %4898, !dx.controlflow.hints !138

; <label>:4734                                    ; preds = %4731
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 1
  %4737 = fadd fast float %4736, %4051
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 2
  %4740 = extractvalue %dx.types.CBufRet.f32 %4738, 3
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 1
  %4743 = call float @dx.op.binary.f32(i32 35, float %4737, float 0.000000e+00)  ; FMax(a,b)
  %4744 = fadd fast float %4743, 0x3F10000000000000
  %4745 = fcmp fast oeq float %4742, 0.000000e+00
  br i1 %4745, label %4746, label %4813

; <label>:4746                                    ; preds = %4734
  %4747 = extractvalue %dx.types.CBufRet.f32 %4738, 1
  %4748 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4749 = fmul fast float %4748, %4058
  %4750 = fmul fast float %4747, %4059
  %4751 = fadd fast float %4749, 5.000000e-01
  %4752 = call float @dx.op.unary.f32(i32 27, float %4751)  ; Round_ni(value)
  %4753 = fadd fast float %4750, 5.000000e-01
  %4754 = call float @dx.op.unary.f32(i32 27, float %4753)  ; Round_ni(value)
  %4755 = fsub fast float %4751, %4752
  %4756 = fsub fast float %4753, %4754
  %4757 = fadd fast float %4752, -5.000000e-01
  %4758 = fadd fast float %4754, -5.000000e-01
  %4759 = fmul fast float %4755, 2.000000e+00
  %4760 = fsub fast float 3.000000e+00, %4759
  %4761 = fadd fast float %4759, 1.000000e+00
  %4762 = fsub fast float 2.000000e+00, %4755
  %4763 = bitcast float %4760 to i32
  %4764 = sub nsw i32 2129859010, %4763
  %4765 = bitcast i32 %4764 to float
  %4766 = fmul fast float %4765, %4762
  %4767 = fadd fast float %4766, -1.000000e+00
  %4768 = bitcast float %4761 to i32
  %4769 = sub nsw i32 2129859010, %4768
  %4770 = bitcast i32 %4769 to float
  %4771 = fmul fast float %4770, %4755
  %4772 = fadd fast float %4771, 1.000000e+00
  %4773 = fmul fast float %4756, 2.000000e+00
  %4774 = fsub fast float 3.000000e+00, %4773
  %4775 = fadd fast float %4773, 1.000000e+00
  %4776 = fsub fast float 2.000000e+00, %4756
  %4777 = bitcast float %4774 to i32
  %4778 = sub nsw i32 2129859010, %4777
  %4779 = bitcast i32 %4778 to float
  %4780 = fmul fast float %4779, %4776
  %4781 = fadd fast float %4780, -1.000000e+00
  %4782 = bitcast float %4775 to i32
  %4783 = sub nsw i32 2129859010, %4782
  %4784 = bitcast i32 %4783 to float
  %4785 = fmul fast float %4784, %4756
  %4786 = fadd fast float %4785, 1.000000e+00
  %4787 = fadd fast float %4767, %4757
  %4788 = fmul fast float %4787, %4739
  %4789 = fadd fast float %4781, %4758
  %4790 = fmul fast float %4789, %4740
  %4791 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4788, float %4790, float undef, float undef, i32 0, i32 0, i32 undef, float %4744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = fmul fast float %4792, %4760
  %4794 = fadd fast float %4772, %4757
  %4795 = fmul fast float %4794, %4739
  %4796 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4795, float %4790, float undef, float undef, i32 0, i32 0, i32 undef, float %4744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4797 = extractvalue %dx.types.ResRet.f32 %4796, 0
  %4798 = fmul fast float %4797, %4761
  %4799 = fadd fast float %4786, %4758
  %4800 = fmul fast float %4799, %4740
  %4801 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4788, float %4800, float undef, float undef, i32 0, i32 0, i32 undef, float %4744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = fmul fast float %4802, %4760
  %4804 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4795, float %4800, float undef, float undef, i32 0, i32 0, i32 undef, float %4744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4805 = extractvalue %dx.types.ResRet.f32 %4804, 0
  %4806 = fmul fast float %4805, %4761
  %4807 = fadd fast float %4806, %4803
  %4808 = fmul fast float %4807, %4775
  %4809 = fadd fast float %4798, %4793
  %4810 = fmul fast float %4809, %4774
  %4811 = fadd fast float %4810, %4808
  %4812 = fmul fast float %4811, 6.250000e-02
  br label %4898

; <label>:4813                                    ; preds = %4734
  %4814 = fmul fast float %249, 0x401921FB60000000
  %4815 = call float @dx.op.unary.f32(i32 13, float %4814)  ; Sin(value)
  %4816 = call float @dx.op.unary.f32(i32 12, float %4814)  ; Cos(value)
  %4817 = fsub fast float -0.000000e+00, %4815
  br label %4818

; <label>:4818                                    ; preds = %4867, %4813
  %4819 = phi float [ 0.000000e+00, %4813 ], [ %4862, %4867 ]
  %4820 = phi float [ 0.000000e+00, %4813 ], [ %4864, %4867 ]
  %4821 = phi i32 [ 0, %4813 ], [ %4868, %4867 ]
  %4822 = mul i32 %4821, 2
  %4823 = add i32 0, %4822
  %4824 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4823
  %4825 = load float, float* %4824, align 4
  %4826 = mul i32 %4821, 2
  %4827 = add i32 1, %4826
  %4828 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4827
  %4829 = load float, float* %4828, align 4
  %4830 = fmul fast float %4825, %4816
  %4831 = call float @dx.op.tertiary.f32(i32 46, float %4829, float %4817, float %4830)  ; FMad(a,b,c)
  %4832 = fmul fast float %4825, %4815
  %4833 = call float @dx.op.tertiary.f32(i32 46, float %4829, float %4816, float %4832)  ; FMad(a,b,c)
  %4834 = fmul fast float %4831, %4742
  %4835 = fmul fast float %4833, %4742
  %4836 = fadd fast float %4834, %4058
  %4837 = fadd fast float %4835, %4059
  %4838 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %4836, float %4837, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4839 = extractvalue %dx.types.ResRet.f32 %4838, 0
  %4840 = extractvalue %dx.types.ResRet.f32 %4838, 1
  %4841 = extractvalue %dx.types.ResRet.f32 %4838, 2
  %4842 = extractvalue %dx.types.ResRet.f32 %4838, 3
  %4843 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %4839, float* %4843, align 4
  %4844 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %4840, float* %4844, align 4
  %4845 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %4841, float* %4845, align 4
  %4846 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %4842, float* %4846, align 4
  %4847 = fsub fast float %4839, %4744
  %4848 = fcmp fast olt float %4847, 0.000000e+00
  %4849 = select i1 %4848, float 0.000000e+00, float 1.000000e+00
  %4850 = fadd fast float %4849, %4819
  %4851 = fmul fast float %4849, %4847
  %4852 = fadd fast float %4851, %4820
  br label %4853

; <label>:4853                                    ; preds = %4853, %4818
  %4854 = phi i32 [ 1, %4818 ], [ %4865, %4853 ]
  %4855 = phi float [ %4852, %4818 ], [ %4864, %4853 ]
  %4856 = phi float [ %4850, %4818 ], [ %4862, %4853 ]
  %4857 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %4854
  %4858 = load float, float* %4857, align 4, !tbaa !134, !noalias !124
  %4859 = fsub fast float %4858, %4744
  %4860 = fcmp fast olt float %4859, 0.000000e+00
  %4861 = select i1 %4860, float 0.000000e+00, float 1.000000e+00
  %4862 = fadd fast float %4861, %4856
  %4863 = fmul fast float %4861, %4859
  %4864 = fadd fast float %4863, %4855
  %4865 = add nuw nsw i32 %4854, 1
  %4866 = icmp eq i32 %4865, 4
  br i1 %4866, label %4867, label %4853, !llvm.loop !136

; <label>:4867                                    ; preds = %4853
  %4868 = add nuw nsw i32 %4821, 1
  %4869 = icmp eq i32 %4868, 8
  br i1 %4869, label %4870, label %4818, !llvm.loop !137

; <label>:4870                                    ; preds = %4867
  %4871 = fdiv fast float 1.000000e+00, %4862
  %4872 = fmul fast float %4871, %4864
  %4873 = fdiv fast float 1.000000e+00, %4744
  %4874 = fmul fast float %4872, %4873
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = call float @dx.op.binary.f32(i32 35, float %4875, float 0.000000e+00)  ; FMax(a,b)
  %4877 = fmul fast float %4862, 3.125000e-02
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = fmul fast float %4878, 2.000000e+00
  %4880 = fadd fast float %4879, -1.000000e+00
  %4881 = fcmp fast ogt float %4880, 0.000000e+00
  %4882 = fcmp fast olt float %4880, 0.000000e+00
  %4883 = zext i1 %4881 to i32
  %4884 = zext i1 %4882 to i32
  %4885 = sub nsw i32 %4883, %4884
  %4886 = sitofp i32 %4885 to float
  %4887 = fmul fast float %4886, %4880
  %4888 = fsub fast float 1.000000e+00, %4887
  %4889 = fmul fast float %4888, %4888
  %4890 = fmul fast float %4889, %4888
  %4891 = fsub fast float %4888, %4890
  %4892 = fmul fast float %4891, %4876
  %4893 = fsub fast float 1.000000e+00, %4890
  %4894 = fsub fast float %4893, %4892
  %4895 = fmul fast float %4886, 5.000000e-01
  %4896 = fmul fast float %4895, %4894
  %4897 = fsub fast float 5.000000e-01, %4896
  br label %4898

; <label>:4898                                    ; preds = %4870, %4746, %4731
  %4899 = phi float [ 1.000000e+00, %4731 ], [ %4812, %4746 ], [ %4897, %4870 ]
  %4900 = fcmp fast ogt float %4161, 0.000000e+00
  br i1 %4900, label %4901, label %5065, !dx.controlflow.hints !139

; <label>:4901                                    ; preds = %4898
  %4902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4903 = extractvalue %dx.types.CBufRet.f32 %4902, 0
  %4904 = fadd fast float %4903, %4051
  %4905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4906 = extractvalue %dx.types.CBufRet.f32 %4905, 2
  %4907 = extractvalue %dx.types.CBufRet.f32 %4905, 3
  %4908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.f32 %4908, 0
  %4910 = call float @dx.op.binary.f32(i32 35, float %4904, float 0.000000e+00)  ; FMax(a,b)
  %4911 = fadd fast float %4910, 0x3F10000000000000
  %4912 = fcmp fast oeq float %4909, 0.000000e+00
  br i1 %4912, label %4913, label %4980

; <label>:4913                                    ; preds = %4901
  %4914 = extractvalue %dx.types.CBufRet.f32 %4905, 1
  %4915 = extractvalue %dx.types.CBufRet.f32 %4905, 0
  %4916 = fmul fast float %4915, %4043
  %4917 = fmul fast float %4914, %4047
  %4918 = fadd fast float %4916, 5.000000e-01
  %4919 = call float @dx.op.unary.f32(i32 27, float %4918)  ; Round_ni(value)
  %4920 = fadd fast float %4917, 5.000000e-01
  %4921 = call float @dx.op.unary.f32(i32 27, float %4920)  ; Round_ni(value)
  %4922 = fsub fast float %4918, %4919
  %4923 = fsub fast float %4920, %4921
  %4924 = fadd fast float %4919, -5.000000e-01
  %4925 = fadd fast float %4921, -5.000000e-01
  %4926 = fmul fast float %4922, 2.000000e+00
  %4927 = fsub fast float 3.000000e+00, %4926
  %4928 = fadd fast float %4926, 1.000000e+00
  %4929 = fsub fast float 2.000000e+00, %4922
  %4930 = bitcast float %4927 to i32
  %4931 = sub nsw i32 2129859010, %4930
  %4932 = bitcast i32 %4931 to float
  %4933 = fmul fast float %4932, %4929
  %4934 = fadd fast float %4933, -1.000000e+00
  %4935 = bitcast float %4928 to i32
  %4936 = sub nsw i32 2129859010, %4935
  %4937 = bitcast i32 %4936 to float
  %4938 = fmul fast float %4937, %4922
  %4939 = fadd fast float %4938, 1.000000e+00
  %4940 = fmul fast float %4923, 2.000000e+00
  %4941 = fsub fast float 3.000000e+00, %4940
  %4942 = fadd fast float %4940, 1.000000e+00
  %4943 = fsub fast float 2.000000e+00, %4923
  %4944 = bitcast float %4941 to i32
  %4945 = sub nsw i32 2129859010, %4944
  %4946 = bitcast i32 %4945 to float
  %4947 = fmul fast float %4946, %4943
  %4948 = fadd fast float %4947, -1.000000e+00
  %4949 = bitcast float %4942 to i32
  %4950 = sub nsw i32 2129859010, %4949
  %4951 = bitcast i32 %4950 to float
  %4952 = fmul fast float %4951, %4923
  %4953 = fadd fast float %4952, 1.000000e+00
  %4954 = fadd fast float %4934, %4924
  %4955 = fmul fast float %4954, %4906
  %4956 = fadd fast float %4948, %4925
  %4957 = fmul fast float %4956, %4907
  %4958 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4955, float %4957, float undef, float undef, i32 0, i32 0, i32 undef, float %4911)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4959 = extractvalue %dx.types.ResRet.f32 %4958, 0
  %4960 = fmul fast float %4959, %4927
  %4961 = fadd fast float %4939, %4924
  %4962 = fmul fast float %4961, %4906
  %4963 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4962, float %4957, float undef, float undef, i32 0, i32 0, i32 undef, float %4911)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4964 = extractvalue %dx.types.ResRet.f32 %4963, 0
  %4965 = fmul fast float %4964, %4928
  %4966 = fadd fast float %4953, %4925
  %4967 = fmul fast float %4966, %4907
  %4968 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4955, float %4967, float undef, float undef, i32 0, i32 0, i32 undef, float %4911)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4969 = extractvalue %dx.types.ResRet.f32 %4968, 0
  %4970 = fmul fast float %4969, %4927
  %4971 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4962, float %4967, float undef, float undef, i32 0, i32 0, i32 undef, float %4911)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4972 = extractvalue %dx.types.ResRet.f32 %4971, 0
  %4973 = fmul fast float %4972, %4928
  %4974 = fadd fast float %4973, %4970
  %4975 = fmul fast float %4974, %4942
  %4976 = fadd fast float %4965, %4960
  %4977 = fmul fast float %4976, %4941
  %4978 = fadd fast float %4977, %4975
  %4979 = fmul fast float %4978, 6.250000e-02
  br label %5065

; <label>:4980                                    ; preds = %4901
  %4981 = fmul fast float %249, 0x401921FB60000000
  %4982 = call float @dx.op.unary.f32(i32 13, float %4981)  ; Sin(value)
  %4983 = call float @dx.op.unary.f32(i32 12, float %4981)  ; Cos(value)
  %4984 = fsub fast float -0.000000e+00, %4982
  br label %4985

; <label>:4985                                    ; preds = %5034, %4980
  %4986 = phi float [ 0.000000e+00, %4980 ], [ %5029, %5034 ]
  %4987 = phi float [ 0.000000e+00, %4980 ], [ %5031, %5034 ]
  %4988 = phi i32 [ 0, %4980 ], [ %5035, %5034 ]
  %4989 = mul i32 %4988, 2
  %4990 = add i32 0, %4989
  %4991 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4990
  %4992 = load float, float* %4991, align 4
  %4993 = mul i32 %4988, 2
  %4994 = add i32 1, %4993
  %4995 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4994
  %4996 = load float, float* %4995, align 4
  %4997 = fmul fast float %4992, %4983
  %4998 = call float @dx.op.tertiary.f32(i32 46, float %4996, float %4984, float %4997)  ; FMad(a,b,c)
  %4999 = fmul fast float %4992, %4982
  %5000 = call float @dx.op.tertiary.f32(i32 46, float %4996, float %4983, float %4999)  ; FMad(a,b,c)
  %5001 = fmul fast float %4998, %4909
  %5002 = fmul fast float %5000, %4909
  %5003 = fadd fast float %5001, %4043
  %5004 = fadd fast float %5002, %4047
  %5005 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5003, float %5004, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5006 = extractvalue %dx.types.ResRet.f32 %5005, 0
  %5007 = extractvalue %dx.types.ResRet.f32 %5005, 1
  %5008 = extractvalue %dx.types.ResRet.f32 %5005, 2
  %5009 = extractvalue %dx.types.ResRet.f32 %5005, 3
  %5010 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %5006, float* %5010, align 4
  %5011 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %5007, float* %5011, align 4
  %5012 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %5008, float* %5012, align 4
  %5013 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %5009, float* %5013, align 4
  %5014 = fsub fast float %5006, %4911
  %5015 = fcmp fast olt float %5014, 0.000000e+00
  %5016 = select i1 %5015, float 0.000000e+00, float 1.000000e+00
  %5017 = fadd fast float %5016, %4986
  %5018 = fmul fast float %5016, %5014
  %5019 = fadd fast float %5018, %4987
  br label %5020

; <label>:5020                                    ; preds = %5020, %4985
  %5021 = phi i32 [ 1, %4985 ], [ %5032, %5020 ]
  %5022 = phi float [ %5019, %4985 ], [ %5031, %5020 ]
  %5023 = phi float [ %5017, %4985 ], [ %5029, %5020 ]
  %5024 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %5021
  %5025 = load float, float* %5024, align 4, !tbaa !134, !noalias !124
  %5026 = fsub fast float %5025, %4911
  %5027 = fcmp fast olt float %5026, 0.000000e+00
  %5028 = select i1 %5027, float 0.000000e+00, float 1.000000e+00
  %5029 = fadd fast float %5028, %5023
  %5030 = fmul fast float %5028, %5026
  %5031 = fadd fast float %5030, %5022
  %5032 = add nuw nsw i32 %5021, 1
  %5033 = icmp eq i32 %5032, 4
  br i1 %5033, label %5034, label %5020, !llvm.loop !136

; <label>:5034                                    ; preds = %5020
  %5035 = add nuw nsw i32 %4988, 1
  %5036 = icmp eq i32 %5035, 8
  br i1 %5036, label %5037, label %4985, !llvm.loop !137

; <label>:5037                                    ; preds = %5034
  %5038 = fdiv fast float 1.000000e+00, %5029
  %5039 = fmul fast float %5038, %5031
  %5040 = fdiv fast float 1.000000e+00, %4911
  %5041 = fmul fast float %5039, %5040
  %5042 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5043 = call float @dx.op.binary.f32(i32 35, float %5042, float 0.000000e+00)  ; FMax(a,b)
  %5044 = fmul fast float %5029, 3.125000e-02
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = fmul fast float %5045, 2.000000e+00
  %5047 = fadd fast float %5046, -1.000000e+00
  %5048 = fcmp fast ogt float %5047, 0.000000e+00
  %5049 = fcmp fast olt float %5047, 0.000000e+00
  %5050 = zext i1 %5048 to i32
  %5051 = zext i1 %5049 to i32
  %5052 = sub nsw i32 %5050, %5051
  %5053 = sitofp i32 %5052 to float
  %5054 = fmul fast float %5053, %5047
  %5055 = fsub fast float 1.000000e+00, %5054
  %5056 = fmul fast float %5055, %5055
  %5057 = fmul fast float %5056, %5055
  %5058 = fsub fast float %5055, %5057
  %5059 = fmul fast float %5058, %5043
  %5060 = fsub fast float 1.000000e+00, %5057
  %5061 = fsub fast float %5060, %5059
  %5062 = fmul fast float %5053, 5.000000e-01
  %5063 = fmul fast float %5062, %5061
  %5064 = fsub fast float 5.000000e-01, %5063
  br label %5065

; <label>:5065                                    ; preds = %5037, %4913, %4898
  %5066 = phi float [ 1.000000e+00, %4898 ], [ %4979, %4913 ], [ %5064, %5037 ]
  %5067 = fsub fast float %4732, %4567
  %5068 = fmul fast float %5067, %4105
  %5069 = fadd fast float %5068, %4567
  %5070 = fsub fast float %4899, %5069
  %5071 = fmul fast float %5070, %4135
  %5072 = fadd fast float %5071, %5069
  %5073 = fsub fast float %5066, %5072
  %5074 = fmul fast float %5073, %4161
  %5075 = fadd fast float %5074, %5072
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 2
  %5078 = fcmp fast ogt float %5077, 0.000000e+00
  br i1 %5078, label %5079, label %5119, !dx.controlflow.hints !140

; <label>:5079                                    ; preds = %5065
  %5080 = fcmp fast ugt float %5077, 0.000000e+00
  br i1 %5080, label %5081, label %5116

; <label>:5081                                    ; preds = %5079
  %5082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5083 = extractvalue %dx.types.CBufRet.f32 %5082, 0
  %5084 = extractvalue %dx.types.CBufRet.f32 %5082, 1
  %5085 = extractvalue %dx.types.CBufRet.f32 %5082, 2
  %5086 = extractvalue %dx.types.CBufRet.f32 %5082, 3
  %5087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.f32 %5087, 0
  %5089 = extractvalue %dx.types.CBufRet.f32 %5087, 1
  %5090 = extractvalue %dx.types.CBufRet.f32 %5087, 2
  %5091 = extractvalue %dx.types.CBufRet.f32 %5087, 3
  %5092 = extractvalue %dx.types.CBufRet.f32 %5076, 0
  %5093 = extractvalue %dx.types.CBufRet.f32 %5076, 1
  %5094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.f32 %5094, 0
  %5096 = extractvalue %dx.types.CBufRet.f32 %5094, 1
  %5097 = extractvalue %dx.types.CBufRet.f32 %5094, 2
  %5098 = fadd fast float %5095, %4020
  %5099 = fadd fast float %5096, %4021
  %5100 = fadd fast float %5097, %4022
  %5101 = fmul fast float %5098, %5083
  %5102 = call float @dx.op.tertiary.f32(i32 46, float %5084, float %5099, float %5101)  ; FMad(a,b,c)
  %5103 = call float @dx.op.tertiary.f32(i32 46, float %5085, float %5100, float %5102)  ; FMad(a,b,c)
  %5104 = fadd fast float %5103, %5086
  %5105 = fmul fast float %5098, %5088
  %5106 = call float @dx.op.tertiary.f32(i32 46, float %5089, float %5099, float %5105)  ; FMad(a,b,c)
  %5107 = call float @dx.op.tertiary.f32(i32 46, float %5090, float %5100, float %5106)  ; FMad(a,b,c)
  %5108 = fadd fast float %5107, %5091
  %5109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5104, float %5108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5110 = extractvalue %dx.types.ResRet.f32 %5109, 0
  %5111 = fmul fast float %5110, %5093
  %5112 = fadd fast float %5111, %5092
  %5113 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5114 = fmul fast float %5113, %5077
  %5115 = fsub fast float 1.000000e+00, %5114
  br label %5116

; <label>:5116                                    ; preds = %5081, %5079
  %5117 = phi float [ %5115, %5081 ], [ 1.000000e+00, %5079 ]
  %5118 = fmul fast float %5117, %5075
  br label %5119

; <label>:5119                                    ; preds = %5116, %5065, %4000
  %5120 = phi float [ 1.000000e+00, %4000 ], [ %5118, %5116 ], [ %5075, %5065 ]
  %5121 = call float @dx.op.binary.f32(i32 36, float %5120, float %5120)  ; FMin(a,b)
  %5122 = call float @dx.op.binary.f32(i32 36, float %5120, float %5121)  ; FMin(a,b)
  %5123 = fcmp fast ogt float %5122, 0.000000e+00
  br i1 %5123, label %5124, label %5289, !dx.controlflow.hints !141

; <label>:5124                                    ; preds = %5119
  %5125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5126 = extractvalue %dx.types.CBufRet.f32 %5125, 0
  %5127 = extractvalue %dx.types.CBufRet.f32 %5125, 1
  %5128 = extractvalue %dx.types.CBufRet.f32 %5125, 2
  %5129 = extractvalue %dx.types.CBufRet.f32 %5125, 3
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  %5132 = extractvalue %dx.types.CBufRet.f32 %5130, 1
  %5133 = extractvalue %dx.types.CBufRet.f32 %5130, 2
  %5134 = extractvalue %dx.types.CBufRet.f32 %5130, 3
  %5135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  %5137 = extractvalue %dx.types.CBufRet.f32 %5135, 1
  %5138 = extractvalue %dx.types.CBufRet.f32 %5135, 2
  %5139 = extractvalue %dx.types.CBufRet.f32 %5135, 3
  %5140 = fmul fast float %5126, %4020
  %5141 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %5127, float %5140)  ; FMad(a,b,c)
  %5142 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %5128, float %5141)  ; FMad(a,b,c)
  %5143 = fadd fast float %5142, %5129
  %5144 = fmul fast float %5131, %4020
  %5145 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %5132, float %5144)  ; FMad(a,b,c)
  %5146 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %5133, float %5145)  ; FMad(a,b,c)
  %5147 = fadd fast float %5146, %5134
  %5148 = fmul fast float %5136, %4020
  %5149 = call float @dx.op.tertiary.f32(i32 46, float %4021, float %5137, float %5148)  ; FMad(a,b,c)
  %5150 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %5138, float %5149)  ; FMad(a,b,c)
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5151, 3
  %5155 = fmul fast float %5154, %5143
  %5156 = fmul fast float %5154, %5147
  %5157 = fadd fast float %5155, %5152
  %5158 = fadd fast float %5156, %5153
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  %5161 = extractvalue %dx.types.CBufRet.f32 %5159, 1
  %5162 = fsub fast float %5157, %5160
  %5163 = fsub fast float %5158, %5161
  %5164 = fcmp fast olt float %5162, 0.000000e+00
  %5165 = fcmp fast olt float %5163, 0.000000e+00
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 0
  %5168 = extractvalue %dx.types.CBufRet.f32 %5166, 1
  %5169 = extractvalue %dx.types.CBufRet.f32 %5166, 2
  %5170 = extractvalue %dx.types.CBufRet.f32 %5166, 3
  %5171 = select i1 %5164, float %5167, float %5169
  %5172 = select i1 %5165, float %5168, float %5170
  %5173 = fmul fast float %5171, %5162
  %5174 = fmul fast float %5172, %5163
  %5175 = call float @dx.op.unary.f32(i32 6, float %5173)  ; FAbs(value)
  %5176 = call float @dx.op.unary.f32(i32 6, float %5174)  ; FAbs(value)
  %5177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5177, 0
  %5179 = call float @dx.op.binary.f32(i32 35, float %5175, float %5176)  ; FMax(a,b)
  %5180 = fsub fast float %5178, %5179
  %5181 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5182 = fcmp fast ogt float %5181, 0.000000e+00
  br i1 %5182, label %5183, label %5224, !dx.controlflow.hints !142

; <label>:5183                                    ; preds = %5124
  %5184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5157, float %5158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5185 = extractvalue %dx.types.ResRet.f32 %5184, 1
  %5186 = fcmp fast ogt float %5185, 0.000000e+00
  br i1 %5186, label %5187, label %5219

; <label>:5187                                    ; preds = %5183
  %5188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5157, float %5158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5189 = extractvalue %dx.types.ResRet.f32 %5188, 0
  %5190 = extractvalue %dx.types.ResRet.f32 %5188, 1
  %5191 = extractvalue %dx.types.ResRet.f32 %5188, 2
  %5192 = extractvalue %dx.types.ResRet.f32 %5188, 3
  %5193 = fsub fast float 1.000000e+00, %5139
  %5194 = fsub fast float %5193, %5150
  %5195 = fmul fast float %5194, 0x400921FB60000000
  %5196 = fadd fast float %5195, 0x3FF921FB60000000
  %5197 = call float @dx.op.unary.f32(i32 13, float %5196)  ; Sin(value)
  %5198 = fadd fast float %5197, -1.000000e+00
  %5199 = fmul fast float %5198, 0x3FD45F3060000000
  %5200 = fmul fast float %5194, 0x401921FB60000000
  %5201 = fadd fast float %5200, 0x400921FB60000000
  %5202 = call float @dx.op.unary.f32(i32 13, float %5201)  ; Sin(value)
  %5203 = fadd fast float %5202, 0x3E7777A5C0000000
  %5204 = fmul fast float %5203, 0x3FC45F3060000000
  %5205 = fmul fast float %5194, 0x4022D97C80000000
  %5206 = fadd fast float %5205, 0x4012D97C80000000
  %5207 = call float @dx.op.unary.f32(i32 13, float %5206)  ; Sin(value)
  %5208 = fadd fast float %5207, 1.000000e+00
  %5209 = fmul fast float %5208, 0x3FBB2995E0000000
  %5210 = fmul fast float %5194, 0x402921FB60000000
  %5211 = fadd fast float %5210, 0x401921FB60000000
  %5212 = call float @dx.op.unary.f32(i32 13, float %5211)  ; Sin(value)
  %5213 = fadd fast float %5212, 0xBE8777A5C0000000
  %5214 = fmul fast float %5213, 0x3FB45F3060000000
  %5215 = call float @dx.op.dot4.f32(i32 56, float %5189, float %5190, float %5191, float %5192, float %5199, float %5204, float %5209, float %5214)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5216 = fmul fast float %5215, 0xBFF7154760000000
  %5217 = call float @dx.op.unary.f32(i32 21, float %5216)  ; Exp(value)
  %5218 = call float @dx.op.unary.f32(i32 7, float %5217)  ; Saturate(value)
  br label %5219

; <label>:5219                                    ; preds = %5187, %5183
  %5220 = phi float [ %5218, %5187 ], [ 1.000000e+00, %5183 ]
  %5221 = fadd fast float %5220, -1.000000e+00
  %5222 = fmul fast float %5221, %5181
  %5223 = fadd fast float %5222, 1.000000e+00
  br label %5224

; <label>:5224                                    ; preds = %5219, %5124
  %5225 = phi float [ %5223, %5219 ], [ 1.000000e+00, %5124 ]
  %5226 = fmul fast float %5225, %5120
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5229 = extractvalue %dx.types.CBufRet.f32 %5227, 1
  %5230 = extractvalue %dx.types.CBufRet.f32 %5227, 2
  %5231 = fadd fast float %5228, %147
  %5232 = fadd fast float %5229, %148
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 1
  %5235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.CBufRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.CBufRet.f32 %5235, 2
  %5239 = fsub fast float -0.000000e+00, %5231
  %5240 = fsub fast float -0.000000e+00, %5232
  %5241 = fsub fast float %2120, %5230
  %5242 = fadd fast float %5241, %5234
  %5243 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5239, float %5240, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5236, float %5237, float %5238)  ; Dot3(ax,ay,az,bx,by,bz)
  %5245 = fdiv fast float 1.000000e+00, %5244
  %5246 = fmul fast float %5245, %5243
  %5247 = fmul fast float %5236, %5246
  %5248 = fmul fast float %5237, %5246
  %5249 = fadd fast float %5247, %5231
  %5250 = fadd fast float %5248, %5232
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.CBufRet.f32 %5251, 1
  %5254 = fsub fast float %5249, %5252
  %5255 = fsub fast float %5250, %5253
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5258 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5259 = fmul fast float %5254, %5257
  %5260 = fmul fast float %5255, %5258
  %5261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.i32 %5261, 3
  %5263 = icmp eq i32 %5262, 0
  br i1 %5263, label %5269, label %5264

; <label>:5264                                    ; preds = %5224
  %5265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5259, float %5260, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = extractvalue %dx.types.ResRet.f32 %5265, 2
  br label %5274

; <label>:5269                                    ; preds = %5224
  %5270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5259, float %5260, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5271 = extractvalue %dx.types.ResRet.f32 %5270, 0
  %5272 = extractvalue %dx.types.ResRet.f32 %5270, 1
  %5273 = extractvalue %dx.types.ResRet.f32 %5270, 2
  br label %5274

; <label>:5274                                    ; preds = %5269, %5264
  %5275 = phi float [ %5266, %5264 ], [ %5271, %5269 ]
  %5276 = phi float [ %5267, %5264 ], [ %5272, %5269 ]
  %5277 = phi float [ %5268, %5264 ], [ %5273, %5269 ]
  %5278 = extractvalue %dx.types.CBufRet.f32 %5233, 2
  %5279 = fmul fast float %5278, %5275
  %5280 = extractvalue %dx.types.CBufRet.f32 %5233, 0
  %5281 = fsub fast float %5246, %5280
  %5282 = fsub fast float %5281, %5279
  %5283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5282)  ; FMax(a,b)
  %5284 = fmul fast float %5283, %5276
  %5285 = call float @dx.op.binary.f32(i32 36, float %5277, float %5284)  ; FMin(a,b)
  %5286 = fmul fast float %5285, 0xBFF7154760000000
  %5287 = call float @dx.op.unary.f32(i32 21, float %5286)  ; Exp(value)
  %5288 = fmul fast float %5226, %5287
  br label %5289

; <label>:5289                                    ; preds = %5274, %5119
  %5290 = phi float [ %5288, %5274 ], [ %5120, %5119 ]
  %5291 = call float @dx.op.binary.f32(i32 36, float %5290, float %5290)  ; FMin(a,b)
  %5292 = call float @dx.op.binary.f32(i32 36, float %5290, float %5291)  ; FMin(a,b)
  %5293 = fcmp fast ogt float %5292, 0.000000e+00
  br i1 %5293, label %5294, label %5541, !dx.controlflow.hints !143

; <label>:5294                                    ; preds = %5289
  %5295 = fmul fast float %5290, %4012
  %5296 = fmul fast float %5290, %4013
  %5297 = fmul fast float %5290, %4014
  %5298 = fsub fast float %149, %1908
  %5299 = fcmp fast ogt float %5298, 0.000000e+00
  %5300 = fmul fast float %4001, 5.120000e+02
  %5301 = fmul fast float %4002, 5.120000e+02
  %5302 = fmul fast float %4003, 5.120000e+02
  %5303 = fadd fast float %5302, %149
  %5304 = fsub fast float %1908, %5303
  %5305 = fmul fast float %5304, 2.000000e+00
  %5306 = fadd fast float %5305, %5303
  %5307 = select i1 %5299, float %5306, float %5303
  %5308 = fsub fast float %5307, %149
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5308, float %5300, float %5301, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = call float @dx.op.unary.f32(i32 25, float %5309)  ; Rsqrt(value)
  %5311 = fmul fast float %5310, %5300
  %5312 = fmul fast float %5310, %5301
  %5313 = fmul fast float %5310, %5308
  %5314 = fsub fast float %1908, %149
  %5315 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5314)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5311, float %5312, float %5313)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = fdiv fast float 1.000000e+00, %5316
  %5318 = fmul fast float %5317, %5315
  %5319 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5298, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = fcmp fast ogt float %5319, 0.000000e+00
  %5321 = fcmp fast olt float %5319, 0.000000e+00
  %5322 = zext i1 %5320 to i32
  %5323 = zext i1 %5321 to i32
  %5324 = sub nsw i32 %5322, %5323
  %5325 = sitofp i32 %5324 to float
  %5326 = fsub fast float %5307, %1908
  %5327 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5326, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = fcmp fast ogt float %5327, 0.000000e+00
  %5329 = fcmp fast olt float %5327, 0.000000e+00
  %5330 = zext i1 %5328 to i32
  %5331 = zext i1 %5329 to i32
  %5332 = sub nsw i32 %5330, %5331
  %5333 = sitofp i32 %5332 to float
  %5334 = fcmp fast une float %5325, %5333
  br i1 %5334, label %5335, label %5345

; <label>:5335                                    ; preds = %5294
  %5336 = fmul fast float %5318, %5313
  %5337 = fmul fast float %5318, %5312
  %5338 = fmul fast float %5318, %5311
  %5339 = fmul fast float %5338, %5338
  %5340 = fmul fast float %5337, %5337
  %5341 = fadd fast float %5339, %5340
  %5342 = fmul fast float %5336, %5336
  %5343 = fadd fast float %5341, %5342
  %5344 = call float @dx.op.unary.f32(i32 24, float %5343)  ; Sqrt(value)
  br label %5355

; <label>:5345                                    ; preds = %5294
  %5346 = icmp slt i32 %5324, 0
  br i1 %5346, label %5347, label %5355

; <label>:5347                                    ; preds = %5345
  %5348 = fsub fast float %149, %5307
  %5349 = fmul fast float %5300, %5300
  %5350 = fmul fast float %5301, %5301
  %5351 = fadd fast float %5349, %5350
  %5352 = fmul fast float %5348, %5348
  %5353 = fadd fast float %5351, %5352
  %5354 = call float @dx.op.unary.f32(i32 24, float %5353)  ; Sqrt(value)
  br label %5355

; <label>:5355                                    ; preds = %5347, %5345, %5335
  %5356 = phi float [ %5344, %5335 ], [ %5354, %5347 ], [ 0.000000e+00, %5345 ]
  %5357 = fsub fast float -0.000000e+00, %5356
  %5358 = select i1 %5299, float -0.000000e+00, float %5357
  %5359 = fmul fast float %1909, 0x3FF7154760000000
  %5360 = fmul fast float %5359, %5358
  %5361 = fmul fast float %1910, 0x3FF7154760000000
  %5362 = fmul fast float %5361, %5358
  %5363 = fmul fast float %1911, 0x3FF7154760000000
  %5364 = fmul fast float %5363, %5358
  %5365 = call float @dx.op.unary.f32(i32 21, float %5360)  ; Exp(value)
  %5366 = call float @dx.op.unary.f32(i32 21, float %5362)  ; Exp(value)
  %5367 = call float @dx.op.unary.f32(i32 21, float %5364)  ; Exp(value)
  %5368 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5369 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5370 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5371 = fmul fast float %5295, %5368
  %5372 = fmul fast float %5296, %5369
  %5373 = fmul fast float %5297, %5370
  %5374 = fsub fast float %4001, %2108
  %5375 = fsub fast float %4002, %2107
  %5376 = fsub fast float %4003, %2106
  %5377 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float %5374, float %5375, float %5376)  ; Dot3(ax,ay,az,bx,by,bz)
  %5378 = call float @dx.op.unary.f32(i32 25, float %5377)  ; Rsqrt(value)
  %5379 = fmul fast float %5378, %5374
  %5380 = fmul fast float %5378, %5375
  %5381 = fmul fast float %5378, %5376
  %5382 = call float @dx.op.dot3.f32(i32 55, float %4001, float %4002, float %4003, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5383 = call float @dx.op.dot3.f32(i32 55, float %2105, float %2104, float %2103, float %5379, float %5380, float %5381)  ; Dot3(ax,ay,az,bx,by,bz)
  %5384 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5385 = fmul fast float %5384, %5384
  %5386 = fmul fast float %5385, %3996
  %5387 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5388 = fmul fast float %5387, %5384
  %5389 = call float @dx.op.dot3.f32(i32 55, float %2112, float %2113, float %2114, float %5379, float %5380, float %5381)  ; Dot3(ax,ay,az,bx,by,bz)
  %5390 = fmul fast float %5389, %5389
  %5391 = call float @dx.op.unary.f32(i32 6, float %5382)  ; FAbs(value)
  %5392 = fsub fast float 1.000000e+00, %2141
  %5393 = fmul fast float %2123, %2123
  %5394 = fmul fast float %5393, %5392
  %5395 = fadd fast float %5394, %2141
  %5396 = bitcast float %5395 to i32
  %5397 = ashr i32 %5396, 1
  %5398 = add nsw i32 %5397, 532487669
  %5399 = bitcast i32 %5398 to float
  %5400 = fadd fast float %5399, %2123
  %5401 = fmul fast float %2141, %5390
  %5402 = fsub fast float 1.000000e+00, %5390
  %5403 = fadd fast float %5402, %5401
  %5404 = fmul fast float %5391, %5391
  %5405 = fmul fast float %5404, %5392
  %5406 = fadd fast float %5405, %2141
  %5407 = bitcast float %5406 to i32
  %5408 = ashr i32 %5407, 1
  %5409 = add nsw i32 %5408, 532487669
  %5410 = bitcast i32 %5409 to float
  %5411 = fadd fast float %5410, %5391
  %5412 = fmul fast float %5403, %5403
  %5413 = fmul fast float %5412, %5400
  %5414 = fmul fast float %5413, %5411
  %5415 = fdiv fast float 0x3FF0A00000000000, %5414
  %5416 = fmul fast float %5415, %2141
  %5417 = call float @dx.op.unary.f32(i32 6, float %5383)  ; FAbs(value)
  %5418 = fsub fast float 1.000000e+00, %5417
  %5419 = bitcast float %5418 to i32
  %5420 = sitofp i32 %5419 to float
  %5421 = fmul fast float %5420, 5.000000e+00
  %5422 = fadd fast float %5421, 0xC1EFBF8940000000
  %5423 = fptosi float %5422 to i32
  %5424 = bitcast i32 %5423 to float
  %5425 = fsub fast float 1.000000e+00, %2115
  %5426 = fsub fast float 1.000000e+00, %2116
  %5427 = fsub fast float 1.000000e+00, %2121
  %5428 = fmul fast float %5424, %5425
  %5429 = fmul fast float %5424, %5426
  %5430 = fmul fast float %5424, %5427
  %5431 = fadd fast float %5428, %2115
  %5432 = fadd fast float %5429, %2116
  %5433 = fadd fast float %5430, %2121
  br i1 %3419, label %5434, label %5457

; <label>:5434                                    ; preds = %5355
  %5435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1486, float %5417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5436 = extractvalue %dx.types.ResRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.ResRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.ResRet.f32 %5435, 2
  %5439 = fadd fast float %5436, -5.000000e-01
  %5440 = fadd fast float %5437, -5.000000e-01
  %5441 = fadd fast float %5438, -5.000000e-01
  %5442 = fmul fast float %2115, 4.000000e+00
  %5443 = fmul fast float %5442, %5425
  %5444 = fmul fast float %5443, %5439
  %5445 = fmul fast float %2116, 4.000000e+00
  %5446 = fmul fast float %5445, %5426
  %5447 = fmul fast float %5446, %5440
  %5448 = fmul fast float %2121, 4.000000e+00
  %5449 = fmul fast float %5448, %5427
  %5450 = fmul fast float %5449, %5441
  %5451 = fadd fast float %5444, %5431
  %5452 = fadd fast float %5447, %5432
  %5453 = fadd fast float %5450, %5433
  %5454 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5455 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5456 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  br label %5457

; <label>:5457                                    ; preds = %5434, %5355
  %5458 = phi float [ %5454, %5434 ], [ %5431, %5355 ]
  %5459 = phi float [ %5455, %5434 ], [ %5432, %5355 ]
  %5460 = phi float [ %5456, %5434 ], [ %5433, %5355 ]
  %5461 = fmul fast float %5382, 9.843750e-01
  %5462 = fadd fast float %5461, 7.812500e-03
  %5463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5462, float %3409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5464 = extractvalue %dx.types.ResRet.f32 %5463, 2
  %5465 = extractvalue %dx.types.ResRet.f32 %5463, 3
  %5466 = fmul fast float %5464, %2115
  %5467 = fmul fast float %5464, %2116
  %5468 = fmul fast float %5464, %2121
  %5469 = fadd fast float %5466, %5465
  %5470 = fadd fast float %5467, %5465
  %5471 = fadd fast float %5468, %5465
  br i1 %3419, label %5472, label %5495

; <label>:5472                                    ; preds = %5457
  %5473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1486, float %5382, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5474 = extractvalue %dx.types.ResRet.f32 %5473, 0
  %5475 = extractvalue %dx.types.ResRet.f32 %5473, 1
  %5476 = extractvalue %dx.types.ResRet.f32 %5473, 2
  %5477 = fadd fast float %5474, -5.000000e-01
  %5478 = fadd fast float %5475, -5.000000e-01
  %5479 = fadd fast float %5476, -5.000000e-01
  %5480 = fmul fast float %2115, 4.000000e+00
  %5481 = fmul fast float %5480, %5425
  %5482 = fmul fast float %5481, %5477
  %5483 = fmul fast float %2116, 4.000000e+00
  %5484 = fmul fast float %5483, %5426
  %5485 = fmul fast float %5484, %5478
  %5486 = fmul fast float %2121, 4.000000e+00
  %5487 = fmul fast float %5486, %5427
  %5488 = fmul fast float %5487, %5479
  %5489 = fadd fast float %5482, %5469
  %5490 = fadd fast float %5485, %5470
  %5491 = fadd fast float %5488, %5471
  %5492 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5493 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5494 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  br label %5495

; <label>:5495                                    ; preds = %5472, %5457
  %5496 = phi float [ %5492, %5472 ], [ %5469, %5457 ]
  %5497 = phi float [ %5493, %5472 ], [ %5470, %5457 ]
  %5498 = phi float [ %5494, %5472 ], [ %5471, %5457 ]
  %5499 = call float @dx.op.binary.f32(i32 35, float %5497, float %5498)  ; FMax(a,b)
  %5500 = call float @dx.op.binary.f32(i32 35, float %5496, float %5499)  ; FMax(a,b)
  %5501 = fsub fast float 1.000000e+00, %5500
  %5502 = fmul fast float %5458, %5416
  %5503 = fmul fast float %5459, %5416
  %5504 = fmul fast float %5460, %5416
  %5505 = fsub fast float 1.000000e+00, %5383
  %5506 = bitcast float %5505 to i32
  %5507 = sitofp i32 %5506 to float
  %5508 = fmul fast float %5507, 5.000000e+00
  %5509 = fadd fast float %5508, 0xC1EFBF8940000000
  %5510 = fptosi float %5509 to i32
  %5511 = bitcast i32 %5510 to float
  %5512 = fmul fast float %5511, %1485
  %5513 = fmul fast float %5501, %5512
  %5514 = fmul fast float %5513, %3961
  %5515 = fmul fast float %5513, %3962
  %5516 = fmul fast float %5513, %3963
  %5517 = fadd fast float %5514, %5502
  %5518 = fadd fast float %5515, %5503
  %5519 = fadd fast float %5516, %5504
  %5520 = fmul fast float %5388, %5371
  %5521 = fmul fast float %5520, %5501
  %5522 = fmul fast float %5388, %5372
  %5523 = fmul fast float %5522, %5501
  %5524 = fmul fast float %5388, %5373
  %5525 = fmul fast float %5524, %5501
  %5526 = fmul fast float %5520, %5517
  %5527 = fmul fast float %5522, %5518
  %5528 = fmul fast float %5524, %5519
  %5529 = fadd fast float %5521, %3945
  %5530 = fmul fast float %5529, %1506
  %5531 = fadd fast float %5523, %3946
  %5532 = fmul fast float %5531, %1506
  %5533 = fadd fast float %5525, %3947
  %5534 = fmul fast float %5533, %1506
  %5535 = fadd fast float %5526, %3988
  %5536 = fmul fast float %5535, %1506
  %5537 = fadd fast float %5527, %3991
  %5538 = fmul fast float %5537, %1506
  %5539 = fadd fast float %5528, %3994
  %5540 = fmul fast float %5539, %1506
  br label %5541

; <label>:5541                                    ; preds = %5495, %5289, %3941
  %5542 = phi float [ %3989, %3941 ], [ %3989, %5289 ], [ %5536, %5495 ]
  %5543 = phi float [ %3992, %3941 ], [ %3992, %5289 ], [ %5538, %5495 ]
  %5544 = phi float [ %3995, %3941 ], [ %3995, %5289 ], [ %5540, %5495 ]
  %5545 = phi float [ %3984, %3941 ], [ %3984, %5289 ], [ %5530, %5495 ]
  %5546 = phi float [ %3985, %3941 ], [ %3985, %5289 ], [ %5532, %5495 ]
  %5547 = phi float [ %3986, %3941 ], [ %3986, %5289 ], [ %5534, %5495 ]
  %5548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5549 = extractvalue %dx.types.CBufRet.i32 %5548, 0
  %5550 = icmp eq i32 %5549, 0
  br i1 %5550, label %6213, label %5551

; <label>:5551                                    ; preds = %5541
  %5552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5553 = extractvalue %dx.types.CBufRet.f32 %5552, 2
  %5554 = extractvalue %dx.types.CBufRet.f32 %5552, 3
  %5555 = fmul fast float %5553, %100
  %5556 = fmul fast float %5554, %101
  %5557 = fptoui float %5555 to i32
  %5558 = fptoui float %5556 to i32
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 0
  %5561 = extractvalue %dx.types.CBufRet.f32 %5559, 2
  %5562 = extractvalue %dx.types.CBufRet.f32 %5559, 3
  %5563 = fadd fast float %88, -4.000000e+00
  %5564 = call float @dx.op.binary.f32(i32 35, float %5563, float 0.000000e+00)  ; FMax(a,b)
  %5565 = fadd fast float %5564, %5560
  %5566 = fmul fast float %5565, %5561
  %5567 = call float @dx.op.unary.f32(i32 23, float %5566)  ; Log(value)
  %5568 = fmul fast float %5567, %5562
  %5569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5570 = extractvalue %dx.types.CBufRet.f32 %5569, 2
  %5571 = fmul fast float %5568, %5570
  %5572 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.i32 %5573, 1
  %5575 = add i32 %5574, -1
  %5576 = uitofp i32 %5574 to float
  %5577 = fmul fast float %5576, %5572
  %5578 = fptoui float %5577 to i32
  %5579 = call i32 @dx.op.binary.i32(i32 40, i32 %5578, i32 %5575)  ; UMin(a,b)
  %5580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5581 = extractvalue %dx.types.CBufRet.i32 %5580, 2
  %5582 = extractvalue %dx.types.CBufRet.i32 %5580, 3
  %5583 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5558, i32 %5581, i32 %5557)  ; UMad(a,b,c)
  %5584 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5579, i32 %5582, i32 %5583)  ; UMad(a,b,c)
  %5585 = add nsw i32 %5549, -1
  %5586 = call i32 @dx.op.binary.i32(i32 37, i32 %5585, i32 0)  ; IMax(a,b)
  %5587 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %5588 = fptoui float %5587 to i32
  %5589 = lshr i32 %5588, 5
  %5590 = call i32 @dx.op.binary.i32(i32 40, i32 %5589, i32 8191)  ; UMin(a,b)
  %5591 = shl i32 %5590, 2
  %5592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5591, i32 undef)  ; BufferLoad(srv,index,wot)
  %5593 = extractvalue %dx.types.ResRet.i32 %5592, 0
  %5594 = lshr i32 %5593, 16
  %5595 = and i32 %5593, 65535
  %5596 = lshr i32 %5593, 21
  %5597 = lshr i32 %5595, 5
  %5598 = call i32 @dx.op.binary.i32(i32 40, i32 %5597, i32 %5586)  ; UMin(a,b)
  %5599 = icmp ugt i32 %5596, %5598
  br i1 %5599, label %6213, label %5600

; <label>:5600                                    ; preds = %5551
  br label %5601

; <label>:5601                                    ; preds = %6203, %5600
  %5602 = phi i32 [ %6210, %6203 ], [ %5596, %5600 ]
  %5603 = phi float [ %6204, %6203 ], [ %5542, %5600 ]
  %5604 = phi float [ %6205, %6203 ], [ %5543, %5600 ]
  %5605 = phi float [ %6206, %6203 ], [ %5544, %5600 ]
  %5606 = phi float [ %6207, %6203 ], [ %5545, %5600 ]
  %5607 = phi float [ %6208, %6203 ], [ %5546, %5600 ]
  %5608 = phi float [ %6209, %6203 ], [ %5547, %5600 ]
  %5609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5610 = extractvalue %dx.types.CBufRet.i32 %5609, 0
  %5611 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5584, i32 %5610, i32 %5602)  ; UMad(a,b,c)
  %5612 = shl i32 %5611, 2
  %5613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5612, i32 undef)  ; BufferLoad(srv,index,wot)
  %5614 = extractvalue %dx.types.ResRet.i32 %5613, 0
  %5615 = shl i32 %5602, 5
  %5616 = sub nsw i32 %5594, %5615
  %5617 = call i32 @dx.op.binary.i32(i32 37, i32 %5616, i32 0)  ; IMax(a,b)
  %5618 = call i32 @dx.op.binary.i32(i32 38, i32 %5617, i32 31)  ; IMin(a,b)
  %5619 = sub nsw i32 1, %5594
  %5620 = add nsw i32 %5619, %5595
  %5621 = call i32 @dx.op.binary.i32(i32 37, i32 %5620, i32 0)  ; IMax(a,b)
  %5622 = call i32 @dx.op.binary.i32(i32 38, i32 %5621, i32 32)  ; IMin(a,b)
  %5623 = and i32 %5622, 31
  %5624 = shl i32 -1, %5623
  %5625 = xor i32 %5624, -1
  %5626 = and i32 %5618, 31
  %5627 = shl i32 %5625, %5626
  %5628 = icmp eq i32 %5622, 32
  %5629 = select i1 %5628, i32 -1, i32 %5627
  %5630 = and i32 %5629, %5614
  %5631 = icmp eq i32 %5630, 0
  br i1 %5631, label %6203, label %5632

; <label>:5632                                    ; preds = %5601
  br label %5633

; <label>:5633                                    ; preds = %5767, %5632
  %5634 = phi i32 [ %5645, %5767 ], [ %5630, %5632 ]
  %5635 = phi float [ %5768, %5767 ], [ %5603, %5632 ]
  %5636 = phi float [ %5769, %5767 ], [ %5604, %5632 ]
  %5637 = phi float [ %5770, %5767 ], [ %5605, %5632 ]
  %5638 = phi float [ %5771, %5767 ], [ %5606, %5632 ]
  %5639 = phi float [ %5772, %5767 ], [ %5607, %5632 ]
  %5640 = phi float [ %5773, %5767 ], [ %5608, %5632 ]
  %5641 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5634)  ; FirstbitLo(value)
  %5642 = add i32 %5641, %5615
  %5643 = and i32 %5641, 31
  %5644 = shl i32 1, %5643
  %5645 = xor i32 %5644, %5634
  %5646 = mul i32 %5642, 112
  %5647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5646, i32 undef)  ; BufferLoad(srv,index,wot)
  %5648 = extractvalue %dx.types.ResRet.f32 %5647, 0
  %5649 = extractvalue %dx.types.ResRet.f32 %5647, 1
  %5650 = extractvalue %dx.types.ResRet.f32 %5647, 2
  %5651 = or i32 %5646, 12
  %5652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5651, i32 undef)  ; BufferLoad(srv,index,wot)
  %5653 = extractvalue %dx.types.ResRet.f32 %5652, 0
  %5654 = add i32 %5646, 16
  %5655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5654, i32 undef)  ; BufferLoad(srv,index,wot)
  %5656 = extractvalue %dx.types.ResRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.ResRet.f32 %5655, 1
  %5658 = extractvalue %dx.types.ResRet.f32 %5655, 2
  %5659 = add i32 %5646, 28
  %5660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5659, i32 undef)  ; BufferLoad(srv,index,wot)
  %5661 = extractvalue %dx.types.ResRet.i32 %5660, 0
  %5662 = add i32 %5646, 44
  %5663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5662, i32 undef)  ; BufferLoad(srv,index,wot)
  %5664 = extractvalue %dx.types.ResRet.f32 %5663, 0
  %5665 = add i32 %5646, 48
  %5666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5665, i32 undef)  ; BufferLoad(srv,index,wot)
  %5667 = extractvalue %dx.types.ResRet.f32 %5666, 0
  %5668 = extractvalue %dx.types.ResRet.f32 %5666, 1
  %5669 = extractvalue %dx.types.ResRet.f32 %5666, 2
  %5670 = extractvalue %dx.types.ResRet.f32 %5666, 3
  %5671 = add i32 %5646, 64
  %5672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5671, i32 undef)  ; BufferLoad(srv,index,wot)
  %5673 = extractvalue %dx.types.ResRet.f32 %5672, 0
  %5674 = extractvalue %dx.types.ResRet.f32 %5672, 1
  %5675 = extractvalue %dx.types.ResRet.f32 %5672, 2
  %5676 = extractvalue %dx.types.ResRet.f32 %5672, 3
  %5677 = add i32 %5646, 80
  %5678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5677, i32 undef)  ; BufferLoad(srv,index,wot)
  %5679 = extractvalue %dx.types.ResRet.f32 %5678, 1
  %5680 = extractvalue %dx.types.ResRet.f32 %5678, 2
  %5681 = add i32 %5646, 92
  %5682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5681, i32 undef)  ; BufferLoad(srv,index,wot)
  %5683 = extractvalue %dx.types.ResRet.i32 %5682, 0
  %5684 = call float @dx.op.dot3.f32(i32 55, float %5648, float %5649, float %5650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = select i1 %238, float %5679, float %5648
  %5686 = select i1 %238, float %5684, float %5649
  %5687 = select i1 %238, float %5680, float %5650
  %5688 = and i32 %5683, 65535
  %5689 = uitofp i32 %5688 to float
  %5690 = lshr i32 %5683, 16
  %5691 = uitofp i32 %5690 to float
  %5692 = and i32 %5661, 65535
  %5693 = and i32 %5661, 50331648
  %5694 = icmp eq i32 %5693, 33554432
  %5695 = fsub fast float %5667, %147
  %5696 = fsub fast float %5668, %148
  %5697 = fsub fast float %5669, %149
  %5698 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5696, float %5697, float %5695, float %5696, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5699 = call float @dx.op.unary.f32(i32 24, float %5698)  ; Sqrt(value)
  %5700 = fdiv fast float 1.000000e+00, %5699
  %5701 = fmul fast float %5700, %5695
  %5702 = fmul fast float %5700, %5696
  %5703 = fmul fast float %5700, %5697
  %5704 = fadd fast float %5699, %5653
  %5705 = fdiv fast float 1.000000e+00, %5704
  %5706 = fmul float %5664, %5705
  %5707 = fmul float %5706, %5706
  %5708 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  br i1 %5694, label %5709, label %5730

; <label>:5709                                    ; preds = %5633
  %5710 = fmul fast float %5675, %5656
  %5711 = fmul fast float %5675, %5657
  %5712 = fmul fast float %5675, %5658
  %5713 = fadd fast float %5695, %5710
  %5714 = fadd fast float %5696, %5711
  %5715 = fadd fast float %5697, %5712
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5715, float %5713, float %5714, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = call float @dx.op.unary.f32(i32 25, float %5716)  ; Rsqrt(value)
  %5718 = fmul fast float %5717, %5713
  %5719 = fmul fast float %5717, %5714
  %5720 = fmul fast float %5717, %5715
  %5721 = fsub fast float %147, %5667
  %5722 = fsub fast float %148, %5668
  %5723 = fsub fast float %149, %5669
  %5724 = fsub fast float -0.000000e+00, %5721
  %5725 = fsub fast float -0.000000e+00, %5722
  %5726 = fsub fast float -0.000000e+00, %5723
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5724, float %5725, float %5726, float %5656, float %5657, float %5658)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = fcmp fast ogt float %5727, 0.000000e+00
  %5729 = uitofp i1 %5728 to float
  br label %5730

; <label>:5730                                    ; preds = %5709, %5633
  %5731 = phi float [ %5729, %5709 ], [ 1.000000e+00, %5633 ]
  %5732 = phi float [ %5718, %5709 ], [ %5701, %5633 ]
  %5733 = phi float [ %5719, %5709 ], [ %5702, %5633 ]
  %5734 = phi float [ %5720, %5709 ], [ %5703, %5633 ]
  %5735 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5657, float %5658, float %5732, float %5733, float %5734)  ; Dot3(ax,ay,az,bx,by,bz)
  %5736 = fmul fast float %5735, %5735
  %5737 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5738 = fsub fast float 1.000000e+00, %5737
  %5739 = fmul fast float %5738, 5.000000e-01
  %5740 = fcmp fast ogt float %5735, 0.000000e+00
  %5741 = fsub fast float 1.000000e+00, %5739
  %5742 = select i1 %5740, float %5739, float %5741
  %5743 = fmul fast float %5742, %5691
  %5744 = fadd fast float %5743, %5689
  %5745 = fmul fast float %5744, 0x3EF0001000000000
  %5746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %5745, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5747 = extractvalue %dx.types.ResRet.f32 %5746, 0
  %5748 = fmul fast float %5735, %5673
  %5749 = fadd fast float %5748, %5674
  %5750 = call float @dx.op.unary.f32(i32 7, float %5749)  ; Saturate(value)
  %5751 = select i1 %5694, float 1.000000e+00, float %5750
  %5752 = select i1 %5694, float %5750, float 1.000000e+00
  %5753 = fmul fast float %5699, %5670
  %5754 = fsub fast float 1.000000e+00, %5753
  %5755 = fmul fast float %5754, %5676
  %5756 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5757 = fmul fast float %5756, %5752
  %5758 = fmul fast float %5757, 2.000000e+00
  %5759 = fsub fast float 3.000000e+00, %5758
  %5760 = fmul fast float %5747, %5731
  %5761 = fmul fast float %5757, %5757
  %5762 = fmul fast float %5761, %5760
  %5763 = fmul fast float %5762, %5759
  %5764 = call float @dx.op.binary.f32(i32 36, float %5763, float %5763)  ; FMin(a,b)
  %5765 = call float @dx.op.binary.f32(i32 36, float %5763, float %5764)  ; FMin(a,b)
  %5766 = fcmp fast ogt float %5765, 0.000000e+00
  br i1 %5766, label %5775, label %5767, !dx.controlflow.hints !144

; <label>:5767                                    ; preds = %6159, %5921, %5730
  %5768 = phi float [ %5635, %5921 ], [ %5635, %5730 ], [ %6199, %6159 ]
  %5769 = phi float [ %5636, %5921 ], [ %5636, %5730 ], [ %6200, %6159 ]
  %5770 = phi float [ %5637, %5921 ], [ %5637, %5730 ], [ %6201, %6159 ]
  %5771 = phi float [ %5638, %5921 ], [ %5638, %5730 ], [ %6193, %6159 ]
  %5772 = phi float [ %5639, %5921 ], [ %5639, %5730 ], [ %6194, %6159 ]
  %5773 = phi float [ %5640, %5921 ], [ %5640, %5730 ], [ %6195, %6159 ]
  %5774 = icmp eq i32 %5634, %5644
  br i1 %5774, label %6202, label %5633

; <label>:5775                                    ; preds = %5730
  %5776 = icmp eq i32 %5692, 255
  br i1 %5776, label %5921, label %5777, !dx.controlflow.hints !145

; <label>:5777                                    ; preds = %5775
  %5778 = mul nuw nsw i32 %5692, 176
  %5779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5778, i32 undef)  ; BufferLoad(srv,index,wot)
  %5780 = extractvalue %dx.types.ResRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.ResRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.ResRet.f32 %5779, 2
  %5783 = extractvalue %dx.types.ResRet.f32 %5779, 3
  %5784 = add nuw nsw i32 %5778, 16
  %5785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5784, i32 undef)  ; BufferLoad(srv,index,wot)
  %5786 = extractvalue %dx.types.ResRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.ResRet.f32 %5785, 1
  %5788 = add nuw nsw i32 %5778, 32
  %5789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5788, i32 undef)  ; BufferLoad(srv,index,wot)
  %5790 = extractvalue %dx.types.ResRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.ResRet.f32 %5789, 1
  %5792 = extractvalue %dx.types.ResRet.f32 %5789, 2
  %5793 = add nuw nsw i32 %5778, 48
  %5794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5793, i32 undef)  ; BufferLoad(srv,index,wot)
  %5795 = extractvalue %dx.types.ResRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.ResRet.f32 %5794, 1
  %5797 = extractvalue %dx.types.ResRet.f32 %5794, 2
  %5798 = extractvalue %dx.types.ResRet.f32 %5794, 3
  %5799 = add nuw nsw i32 %5778, 64
  %5800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5799, i32 undef)  ; BufferLoad(srv,index,wot)
  %5801 = extractvalue %dx.types.ResRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.ResRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.ResRet.f32 %5800, 2
  %5804 = extractvalue %dx.types.ResRet.f32 %5800, 3
  %5805 = add nuw nsw i32 %5778, 80
  %5806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5805, i32 undef)  ; BufferLoad(srv,index,wot)
  %5807 = extractvalue %dx.types.ResRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.ResRet.f32 %5806, 1
  %5809 = extractvalue %dx.types.ResRet.f32 %5806, 2
  %5810 = extractvalue %dx.types.ResRet.f32 %5806, 3
  %5811 = add nuw nsw i32 %5778, 96
  %5812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5811, i32 undef)  ; BufferLoad(srv,index,wot)
  %5813 = extractvalue %dx.types.ResRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.ResRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.ResRet.f32 %5812, 2
  %5816 = extractvalue %dx.types.ResRet.f32 %5812, 3
  %5817 = bitcast float %5787 to i32
  %5818 = fmul fast float %5792, %76
  %5819 = fmul fast float %5792, %77
  %5820 = fmul fast float %5792, %78
  %5821 = fadd fast float %5818, %147
  %5822 = fadd fast float %5819, %148
  %5823 = fadd fast float %5820, %149
  %5824 = fmul fast float %5821, %5795
  %5825 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5801, float %5824)  ; FMad(a,b,c)
  %5826 = call float @dx.op.tertiary.f32(i32 46, float %5823, float %5807, float %5825)  ; FMad(a,b,c)
  %5827 = fadd fast float %5826, %5813
  %5828 = fmul fast float %5821, %5796
  %5829 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5802, float %5828)  ; FMad(a,b,c)
  %5830 = call float @dx.op.tertiary.f32(i32 46, float %5823, float %5808, float %5829)  ; FMad(a,b,c)
  %5831 = fadd fast float %5830, %5814
  %5832 = fmul fast float %5821, %5797
  %5833 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5803, float %5832)  ; FMad(a,b,c)
  %5834 = call float @dx.op.tertiary.f32(i32 46, float %5823, float %5809, float %5833)  ; FMad(a,b,c)
  %5835 = fadd fast float %5834, %5815
  %5836 = fmul fast float %5821, %5798
  %5837 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5804, float %5836)  ; FMad(a,b,c)
  %5838 = call float @dx.op.tertiary.f32(i32 46, float %5823, float %5810, float %5837)  ; FMad(a,b,c)
  %5839 = fadd fast float %5838, %5816
  %5840 = fdiv fast float %5827, %5839
  %5841 = fdiv fast float %5831, %5839
  %5842 = fdiv fast float %5835, %5839
  %5843 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5842)  ; FMax(a,b)
  %5844 = fmul fast float %249, 0x401921FB60000000
  %5845 = call float @dx.op.unary.f32(i32 13, float %5844)  ; Sin(value)
  %5846 = call float @dx.op.unary.f32(i32 12, float %5844)  ; Cos(value)
  %5847 = fmul fast float %5846, %5791
  %5848 = call float @dx.op.tertiary.f32(i32 46, float %5845, float %5791, float 0.000000e+00)  ; FMad(a,b,c)
  %5849 = fmul fast float %5791, %5845
  %5850 = fsub fast float -0.000000e+00, %5849
  %5851 = call float @dx.op.tertiary.f32(i32 46, float %5846, float %5791, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5852

; <label>:5852                                    ; preds = %5852, %5777
  %5853 = phi float [ 0.000000e+00, %5777 ], [ %5885, %5852 ]
  %5854 = phi float [ 0.000000e+00, %5777 ], [ %5887, %5852 ]
  %5855 = phi i32 [ 0, %5777 ], [ %5888, %5852 ]
  %5856 = mul i32 %5855, 2
  %5857 = add i32 0, %5856
  %5858 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5857
  %5859 = load float, float* %5858, align 4
  %5860 = mul i32 %5855, 2
  %5861 = add i32 1, %5860
  %5862 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5861
  %5863 = load float, float* %5862, align 4
  %5864 = fmul fast float %5847, %5859
  %5865 = call float @dx.op.tertiary.f32(i32 46, float %5863, float %5850, float %5864)  ; FMad(a,b,c)
  %5866 = fmul fast float %5859, %5848
  %5867 = call float @dx.op.tertiary.f32(i32 46, float %5863, float %5851, float %5866)  ; FMad(a,b,c)
  %5868 = fadd fast float %5865, %5840
  %5869 = fadd fast float %5867, %5841
  %5870 = fmul fast float %5868, %5786
  %5871 = fmul fast float %5869, %5786
  %5872 = call float @dx.op.binary.f32(i32 35, float %5870, float %5782)  ; FMax(a,b)
  %5873 = call float @dx.op.binary.f32(i32 35, float %5871, float %5782)  ; FMax(a,b)
  %5874 = call float @dx.op.binary.f32(i32 36, float %5872, float %5783)  ; FMin(a,b)
  %5875 = call float @dx.op.binary.f32(i32 36, float %5873, float %5783)  ; FMin(a,b)
  %5876 = fadd fast float %5874, %5780
  %5877 = fadd fast float %5875, %5781
  %5878 = uitofp i32 %5817 to float
  %5879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %5876, float %5877, float %5878, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5880 = extractvalue %dx.types.ResRet.f32 %5879, 0
  %5881 = fsub fast float %5880, %5843
  %5882 = fsub fast float %5881, %5790
  %5883 = fcmp fast ogt float %5882, 0.000000e+00
  %5884 = select i1 %5883, float 1.000000e+00, float 0.000000e+00
  %5885 = fadd fast float %5884, %5853
  %5886 = select i1 %5883, float %5882, float 0.000000e+00
  %5887 = fadd fast float %5886, %5854
  %5888 = add nuw nsw i32 %5855, 1
  %5889 = icmp eq i32 %5888, 8
  br i1 %5889, label %5890, label %5852

; <label>:5890                                    ; preds = %5852
  %5891 = fdiv fast float 1.000000e+00, %5885
  %5892 = fmul fast float %5891, %5887
  %5893 = fdiv fast float 1.000000e+00, %5843
  %5894 = fmul fast float %5892, %5893
  %5895 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5896 = call float @dx.op.binary.f32(i32 35, float %5895, float 0.000000e+00)  ; FMax(a,b)
  %5897 = fmul fast float %5885, 1.250000e-01
  %5898 = call float @dx.op.unary.f32(i32 7, float %5897)  ; Saturate(value)
  %5899 = fmul fast float %5898, 2.000000e+00
  %5900 = fadd fast float %5899, -1.000000e+00
  %5901 = fcmp fast ogt float %5900, 0.000000e+00
  %5902 = fcmp fast olt float %5900, 0.000000e+00
  %5903 = zext i1 %5901 to i32
  %5904 = zext i1 %5902 to i32
  %5905 = sub nsw i32 %5903, %5904
  %5906 = sitofp i32 %5905 to float
  %5907 = fmul fast float %5906, %5900
  %5908 = fsub fast float 1.000000e+00, %5907
  %5909 = fmul fast float %5908, %5908
  %5910 = fmul fast float %5909, %5908
  %5911 = fsub fast float %5908, %5910
  %5912 = fmul fast float %5911, %5896
  %5913 = fsub fast float 1.000000e+00, %5910
  %5914 = fsub fast float %5913, %5912
  %5915 = fmul fast float %5906, 5.000000e-01
  %5916 = fmul fast float %5915, %5914
  %5917 = fsub fast float -5.000000e-01, %5916
  %5918 = fmul fast float %5917, %5751
  %5919 = fadd fast float %5918, 1.000000e+00
  %5920 = fmul fast float %5919, %5763
  br label %5921

; <label>:5921                                    ; preds = %5890, %5775
  %5922 = phi float [ %5920, %5890 ], [ %5763, %5775 ]
  %5923 = call float @dx.op.binary.f32(i32 36, float %5922, float %5922)  ; FMin(a,b)
  %5924 = call float @dx.op.binary.f32(i32 36, float %5922, float %5923)  ; FMin(a,b)
  %5925 = fcmp fast ogt float %5924, 0.000000e+00
  br i1 %5925, label %5926, label %5767, !dx.controlflow.hints !146

; <label>:5926                                    ; preds = %5921
  %5927 = fmul fast float %5922, %5685
  %5928 = fmul fast float %5922, %5686
  %5929 = fmul fast float %5922, %5687
  %5930 = fsub fast float %5669, %1908
  %5931 = fcmp fast ogt float %5930, 0.000000e+00
  %5932 = fsub fast float %149, %1908
  %5933 = fcmp fast ogt float %5932, 0.000000e+00
  %5934 = xor i1 %5933, %5931
  %5935 = fsub fast float %1908, %5669
  %5936 = fmul fast float %5935, 2.000000e+00
  %5937 = fadd fast float %5936, %5669
  %5938 = select i1 %5934, float %5669, float %5937
  %5939 = fsub fast float %5938, %149
  %5940 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5696, float %5939, float %5695, float %5696, float %5939)  ; Dot3(ax,ay,az,bx,by,bz)
  %5941 = call float @dx.op.unary.f32(i32 25, float %5940)  ; Rsqrt(value)
  %5942 = fmul fast float %5941, %5695
  %5943 = fmul fast float %5941, %5696
  %5944 = fmul fast float %5941, %5939
  %5945 = fsub fast float %1908, %149
  %5946 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5945)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5942, float %5943, float %5944)  ; Dot3(ax,ay,az,bx,by,bz)
  %5948 = fdiv fast float 1.000000e+00, %5947
  %5949 = fmul fast float %5948, %5946
  %5950 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5932, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5951 = fcmp fast ogt float %5950, 0.000000e+00
  %5952 = fcmp fast olt float %5950, 0.000000e+00
  %5953 = zext i1 %5951 to i32
  %5954 = zext i1 %5952 to i32
  %5955 = sub nsw i32 %5953, %5954
  %5956 = sitofp i32 %5955 to float
  %5957 = fsub fast float %5938, %1908
  %5958 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5696, float %5957, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5959 = fcmp fast ogt float %5958, 0.000000e+00
  %5960 = fcmp fast olt float %5958, 0.000000e+00
  %5961 = zext i1 %5959 to i32
  %5962 = zext i1 %5960 to i32
  %5963 = sub nsw i32 %5961, %5962
  %5964 = sitofp i32 %5963 to float
  %5965 = fcmp fast une float %5956, %5964
  br i1 %5965, label %5966, label %5976

; <label>:5966                                    ; preds = %5926
  %5967 = fmul fast float %5949, %5944
  %5968 = fmul fast float %5949, %5943
  %5969 = fmul fast float %5949, %5942
  %5970 = fmul fast float %5969, %5969
  %5971 = fmul fast float %5968, %5968
  %5972 = fadd fast float %5970, %5971
  %5973 = fmul fast float %5967, %5967
  %5974 = fadd fast float %5972, %5973
  %5975 = call float @dx.op.unary.f32(i32 24, float %5974)  ; Sqrt(value)
  br label %5988

; <label>:5976                                    ; preds = %5926
  %5977 = icmp slt i32 %5955, 0
  br i1 %5977, label %5978, label %5988

; <label>:5978                                    ; preds = %5976
  %5979 = fsub fast float %147, %5667
  %5980 = fsub fast float %148, %5668
  %5981 = fsub fast float %149, %5938
  %5982 = fmul fast float %5979, %5979
  %5983 = fmul fast float %5980, %5980
  %5984 = fadd fast float %5982, %5983
  %5985 = fmul fast float %5981, %5981
  %5986 = fadd fast float %5984, %5985
  %5987 = call float @dx.op.unary.f32(i32 24, float %5986)  ; Sqrt(value)
  br label %5988

; <label>:5988                                    ; preds = %5978, %5976, %5966
  %5989 = phi float [ %5975, %5966 ], [ %5987, %5978 ], [ 0.000000e+00, %5976 ]
  %5990 = and i1 %5933, %5931
  %5991 = fsub fast float -0.000000e+00, %5989
  %5992 = select i1 %5990, float -0.000000e+00, float %5991
  %5993 = fmul fast float %1909, 0x3FF7154760000000
  %5994 = fmul fast float %5993, %5992
  %5995 = fmul fast float %1910, 0x3FF7154760000000
  %5996 = fmul fast float %5995, %5992
  %5997 = fmul fast float %1911, 0x3FF7154760000000
  %5998 = fmul fast float %5997, %5992
  %5999 = call float @dx.op.unary.f32(i32 21, float %5994)  ; Exp(value)
  %6000 = call float @dx.op.unary.f32(i32 21, float %5996)  ; Exp(value)
  %6001 = call float @dx.op.unary.f32(i32 21, float %5998)  ; Exp(value)
  %6002 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  %6003 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  %6004 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6005 = fmul fast float %5927, %6002
  %6006 = fmul fast float %5928, %6003
  %6007 = fmul fast float %5929, %6004
  %6008 = fsub fast float %5701, %2108
  %6009 = fsub fast float %5702, %2107
  %6010 = fsub fast float %5703, %2106
  %6011 = call float @dx.op.dot3.f32(i32 55, float %6008, float %6009, float %6010, float %6008, float %6009, float %6010)  ; Dot3(ax,ay,az,bx,by,bz)
  %6012 = call float @dx.op.unary.f32(i32 25, float %6011)  ; Rsqrt(value)
  %6013 = fmul fast float %6012, %6008
  %6014 = fmul fast float %6012, %6009
  %6015 = fmul fast float %6012, %6010
  %6016 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %5703, float %2112, float %2113, float %2114)  ; Dot3(ax,ay,az,bx,by,bz)
  %6017 = call float @dx.op.dot3.f32(i32 55, float %2105, float %2104, float %2103, float %6013, float %6014, float %6015)  ; Dot3(ax,ay,az,bx,by,bz)
  %6018 = call float @dx.op.unary.f32(i32 7, float %6016)  ; Saturate(value)
  %6019 = fmul fast float %6018, %5708
  %6020 = fmul fast float %6018, %6018
  %6021 = fmul fast float %6020, %3996
  %6022 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  %6023 = fmul fast float %6019, %6022
  %6024 = bitcast float %5698 to i32
  %6025 = ashr i32 %6024, 1
  %6026 = sub nsw i32 1597463007, %6025
  %6027 = bitcast i32 %6026 to float
  %6028 = fmul fast float %6027, %5695
  %6029 = fmul fast float %6027, %5696
  %6030 = fmul fast float %6027, %5697
  %6031 = fsub fast float %6028, %2108
  %6032 = fsub fast float %6029, %2107
  %6033 = fsub fast float %6030, %2106
  %6034 = call float @dx.op.dot3.f32(i32 55, float %6031, float %6032, float %6033, float %6031, float %6032, float %6033)  ; Dot3(ax,ay,az,bx,by,bz)
  %6035 = call float @dx.op.unary.f32(i32 25, float %6034)  ; Rsqrt(value)
  %6036 = fmul fast float %6031, %6035
  %6037 = fmul fast float %6032, %6035
  %6038 = fmul fast float %6033, %6035
  %6039 = call float @dx.op.dot3.f32(i32 55, float %2112, float %2113, float %2114, float %6036, float %6037, float %6038)  ; Dot3(ax,ay,az,bx,by,bz)
  %6040 = fmul fast float %6039, %6039
  %6041 = call float @dx.op.unary.f32(i32 6, float %6016)  ; FAbs(value)
  %6042 = fsub fast float 1.000000e+00, %2141
  %6043 = fmul fast float %2123, %2123
  %6044 = fmul fast float %6043, %6042
  %6045 = fadd fast float %6044, %2141
  %6046 = bitcast float %6045 to i32
  %6047 = ashr i32 %6046, 1
  %6048 = add nsw i32 %6047, 532487669
  %6049 = bitcast i32 %6048 to float
  %6050 = fadd fast float %6049, %2123
  %6051 = fmul fast float %2141, %6040
  %6052 = fsub fast float 1.000000e+00, %6040
  %6053 = fadd fast float %6052, %6051
  %6054 = fmul fast float %6041, %6041
  %6055 = fmul fast float %6054, %6042
  %6056 = fadd fast float %6055, %2141
  %6057 = bitcast float %6056 to i32
  %6058 = ashr i32 %6057, 1
  %6059 = add nsw i32 %6058, 532487669
  %6060 = bitcast i32 %6059 to float
  %6061 = fadd fast float %6060, %6041
  %6062 = fmul fast float %6053, %6053
  %6063 = fmul fast float %6062, %6050
  %6064 = fmul fast float %6063, %6061
  %6065 = fdiv fast float 1.000000e+00, %6064
  %6066 = bitcast float %2141 to i32
  %6067 = sitofp i32 %6066 to float
  %6068 = fmul fast float %6067, 0x3FE7F73180000000
  %6069 = fadd fast float %6068, 0x41AFE27C40000000
  %6070 = fptosi float %6069 to i32
  %6071 = bitcast i32 %6070 to float
  %6072 = fmul fast float %5664, 0x3FD80E9D60000000
  %6073 = fmul fast float %6072, %6027
  %6074 = fadd fast float %6071, %6073
  %6075 = bitcast float %6074 to i32
  %6076 = sub nsw i32 2129859010, %6075
  %6077 = bitcast i32 %6076 to float
  %6078 = fmul fast float %2141, %6065
  %6079 = fmul fast float %6078, %6071
  %6080 = fmul fast float %6079, %6077
  %6081 = call float @dx.op.unary.f32(i32 6, float %6017)  ; FAbs(value)
  %6082 = fsub fast float 1.000000e+00, %6081
  %6083 = bitcast float %6082 to i32
  %6084 = sitofp i32 %6083 to float
  %6085 = fmul fast float %6084, 5.000000e+00
  %6086 = fadd fast float %6085, 0xC1EFBF8940000000
  %6087 = fptosi float %6086 to i32
  %6088 = bitcast i32 %6087 to float
  %6089 = fsub fast float 1.000000e+00, %2115
  %6090 = fsub fast float 1.000000e+00, %2116
  %6091 = fsub fast float 1.000000e+00, %2121
  %6092 = fmul fast float %6088, %6089
  %6093 = fmul fast float %6088, %6090
  %6094 = fmul fast float %6088, %6091
  %6095 = fadd fast float %6092, %2115
  %6096 = fadd fast float %6093, %2116
  %6097 = fadd fast float %6094, %2121
  br i1 %3419, label %6098, label %6121

; <label>:6098                                    ; preds = %5988
  %6099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1486, float %6081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6100 = extractvalue %dx.types.ResRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.ResRet.f32 %6099, 1
  %6102 = extractvalue %dx.types.ResRet.f32 %6099, 2
  %6103 = fadd fast float %6100, -5.000000e-01
  %6104 = fadd fast float %6101, -5.000000e-01
  %6105 = fadd fast float %6102, -5.000000e-01
  %6106 = fmul fast float %2115, 4.000000e+00
  %6107 = fmul fast float %6106, %6089
  %6108 = fmul fast float %6107, %6103
  %6109 = fmul fast float %2116, 4.000000e+00
  %6110 = fmul fast float %6109, %6090
  %6111 = fmul fast float %6110, %6104
  %6112 = fmul fast float %2121, 4.000000e+00
  %6113 = fmul fast float %6112, %6091
  %6114 = fmul fast float %6113, %6105
  %6115 = fadd fast float %6108, %6095
  %6116 = fadd fast float %6111, %6096
  %6117 = fadd fast float %6114, %6097
  %6118 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6119 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6120 = call float @dx.op.unary.f32(i32 7, float %6117)  ; Saturate(value)
  br label %6121

; <label>:6121                                    ; preds = %6098, %5988
  %6122 = phi float [ %6118, %6098 ], [ %6095, %5988 ]
  %6123 = phi float [ %6119, %6098 ], [ %6096, %5988 ]
  %6124 = phi float [ %6120, %6098 ], [ %6097, %5988 ]
  %6125 = fmul fast float %6016, 9.843750e-01
  %6126 = fadd fast float %6125, 7.812500e-03
  %6127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6126, float %3409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6128 = extractvalue %dx.types.ResRet.f32 %6127, 2
  %6129 = extractvalue %dx.types.ResRet.f32 %6127, 3
  %6130 = fmul fast float %6128, %2115
  %6131 = fmul fast float %6128, %2116
  %6132 = fmul fast float %6128, %2121
  %6133 = fadd fast float %6130, %6129
  %6134 = fadd fast float %6131, %6129
  %6135 = fadd fast float %6132, %6129
  br i1 %3419, label %6136, label %6159

; <label>:6136                                    ; preds = %6121
  %6137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1486, float %6016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6138 = extractvalue %dx.types.ResRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.ResRet.f32 %6137, 1
  %6140 = extractvalue %dx.types.ResRet.f32 %6137, 2
  %6141 = fadd fast float %6138, -5.000000e-01
  %6142 = fadd fast float %6139, -5.000000e-01
  %6143 = fadd fast float %6140, -5.000000e-01
  %6144 = fmul fast float %2115, 4.000000e+00
  %6145 = fmul fast float %6144, %6089
  %6146 = fmul fast float %6145, %6141
  %6147 = fmul fast float %2116, 4.000000e+00
  %6148 = fmul fast float %6147, %6090
  %6149 = fmul fast float %6148, %6142
  %6150 = fmul fast float %2121, 4.000000e+00
  %6151 = fmul fast float %6150, %6091
  %6152 = fmul fast float %6151, %6143
  %6153 = fadd fast float %6146, %6133
  %6154 = fadd fast float %6149, %6134
  %6155 = fadd fast float %6152, %6135
  %6156 = call float @dx.op.unary.f32(i32 7, float %6153)  ; Saturate(value)
  %6157 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6158 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  br label %6159

; <label>:6159                                    ; preds = %6136, %6121
  %6160 = phi float [ %6156, %6136 ], [ %6133, %6121 ]
  %6161 = phi float [ %6157, %6136 ], [ %6134, %6121 ]
  %6162 = phi float [ %6158, %6136 ], [ %6135, %6121 ]
  %6163 = call float @dx.op.binary.f32(i32 35, float %6161, float %6162)  ; FMax(a,b)
  %6164 = call float @dx.op.binary.f32(i32 35, float %6160, float %6163)  ; FMax(a,b)
  %6165 = fsub fast float 1.000000e+00, %6164
  %6166 = fmul fast float %6122, %6080
  %6167 = fmul fast float %6123, %6080
  %6168 = fmul fast float %6124, %6080
  %6169 = fsub fast float 1.000000e+00, %6017
  %6170 = bitcast float %6169 to i32
  %6171 = sitofp i32 %6170 to float
  %6172 = fmul fast float %6171, 5.000000e+00
  %6173 = fadd fast float %6172, 0xC1EFBF8940000000
  %6174 = fptosi float %6173 to i32
  %6175 = bitcast i32 %6174 to float
  %6176 = fmul fast float %6175, %1485
  %6177 = fmul fast float %6165, %6176
  %6178 = fmul fast float %6177, %3961
  %6179 = fmul fast float %6177, %3962
  %6180 = fmul fast float %6177, %3963
  %6181 = fadd fast float %6178, %6166
  %6182 = fadd fast float %6179, %6167
  %6183 = fadd fast float %6180, %6168
  %6184 = fmul fast float %6005, %1506
  %6185 = fmul fast float %6184, %6023
  %6186 = fmul fast float %6185, %6165
  %6187 = fmul fast float %6006, %1506
  %6188 = fmul fast float %6187, %6023
  %6189 = fmul fast float %6188, %6165
  %6190 = fmul fast float %6007, %1506
  %6191 = fmul fast float %6190, %6023
  %6192 = fmul fast float %6191, %6165
  %6193 = fadd fast float %6186, %5638
  %6194 = fadd fast float %6189, %5639
  %6195 = fadd fast float %6192, %5640
  %6196 = fmul fast float %6185, %6181
  %6197 = fmul fast float %6188, %6182
  %6198 = fmul fast float %6191, %6183
  %6199 = fadd fast float %6196, %5635
  %6200 = fadd fast float %6197, %5636
  %6201 = fadd fast float %6198, %5637
  br label %5767

; <label>:6202                                    ; preds = %5767
  br label %6203

; <label>:6203                                    ; preds = %6202, %5601
  %6204 = phi float [ %5603, %5601 ], [ %5768, %6202 ]
  %6205 = phi float [ %5604, %5601 ], [ %5769, %6202 ]
  %6206 = phi float [ %5605, %5601 ], [ %5770, %6202 ]
  %6207 = phi float [ %5606, %5601 ], [ %5771, %6202 ]
  %6208 = phi float [ %5607, %5601 ], [ %5772, %6202 ]
  %6209 = phi float [ %5608, %5601 ], [ %5773, %6202 ]
  %6210 = add i32 %5602, 1
  %6211 = icmp ugt i32 %6210, %5598
  br i1 %6211, label %6212, label %5601

; <label>:6212                                    ; preds = %6203
  br label %6213

; <label>:6213                                    ; preds = %6212, %5551, %5541
  %6214 = phi float [ %5542, %5541 ], [ %5542, %5551 ], [ %6204, %6212 ]
  %6215 = phi float [ %5543, %5541 ], [ %5543, %5551 ], [ %6205, %6212 ]
  %6216 = phi float [ %5544, %5541 ], [ %5544, %5551 ], [ %6206, %6212 ]
  %6217 = phi float [ %5545, %5541 ], [ %5545, %5551 ], [ %6207, %6212 ]
  %6218 = phi float [ %5546, %5541 ], [ %5546, %5551 ], [ %6208, %6212 ]
  %6219 = phi float [ %5547, %5541 ], [ %5547, %5551 ], [ %6209, %6212 ]
  %6220 = fmul fast float %1506, %1506
  %6221 = fsub fast float 1.000000e+00, %6220
  %6222 = call float @dx.op.dot3.f32(i32 55, float %6221, float %6221, float %6221, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6223 = fsub fast float 1.000000e+00, %6222
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = fmul fast float %6225, %3967
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 3
  %6229 = fsub fast float 1.000000e+00, %1484
  %6230 = call float @dx.op.unary.f32(i32 7, float %6229)  ; Saturate(value)
  %6231 = fadd fast float %6219, %1483
  %6232 = fmul fast float %6231, %1484
  %6233 = fmul fast float %6230, %6228
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6236 = fmul fast float %6217, %2109
  %6237 = fmul fast float %6218, %2110
  %6238 = fmul fast float %6219, %2111
  %6239 = fcmp fast ogt float %88, %198
  %6240 = and i1 %6239, %1914
  %6241 = or i1 %1920, %6240
  %6242 = icmp eq i32 %1913, 2
  %6243 = fcmp fast ole float %88, %198
  %6244 = and i1 %6243, %6242
  %6245 = or i1 %6244, %6241
  br i1 %6240, label %6246, label %6505

; <label>:6246                                    ; preds = %6213
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6249 = extractvalue %dx.types.CBufRet.f32 %6247, 3
  %6250 = fmul fast float %6248, %100
  %6251 = fmul fast float %6249, %101
  %6252 = call float @dx.op.unary.f32(i32 7, float %6250)  ; Saturate(value)
  %6253 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6254 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6252, float %6253, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6255 = extractvalue %dx.types.ResRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.ResRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.ResRet.f32 %6254, 2
  %6258 = extractvalue %dx.types.ResRet.f32 %6254, 3
  %6259 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6252, float %6253, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.ResRet.f32 %6259, 2
  %6263 = extractvalue %dx.types.ResRet.f32 %6259, 3
  %6264 = call float @dx.op.binary.f32(i32 35, float %6256, float %6257)  ; FMax(a,b)
  %6265 = call float @dx.op.binary.f32(i32 35, float %6255, float %6264)  ; FMax(a,b)
  %6266 = call float @dx.op.binary.f32(i32 35, float %6265, float %6258)  ; FMax(a,b)
  %6267 = call float @dx.op.binary.f32(i32 36, float %6261, float %6262)  ; FMin(a,b)
  %6268 = call float @dx.op.binary.f32(i32 36, float %6260, float %6267)  ; FMin(a,b)
  %6269 = call float @dx.op.binary.f32(i32 36, float %6268, float %6263)  ; FMin(a,b)
  %6270 = fmul fast float %6266, 2.550000e+02
  %6271 = fadd fast float %6270, 0x3F70101020000000
  %6272 = fptoui float %6271 to i32
  %6273 = fmul fast float %6269, 2.550000e+02
  %6274 = fadd fast float %6273, 0x3F70101020000000
  %6275 = fptoui float %6274 to i32
  %6276 = icmp ult i32 %6272, %6275
  br i1 %6276, label %6277, label %6445

; <label>:6277                                    ; preds = %6246
  %6278 = fcmp fast ogt float %87, 9.843750e-01
  %6279 = fadd fast float %88, -4.000000e+00
  %6280 = select i1 %6278, float -4.000000e+00, float %6279
  %6281 = call float @dx.op.binary.f32(i32 35, float %6280, float 0.000000e+00)  ; FMax(a,b)
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 0
  %6284 = fadd fast float %6283, %6281
  %6285 = extractvalue %dx.types.CBufRet.f32 %6282, 2
  %6286 = fmul fast float %6284, %6285
  %6287 = call float @dx.op.unary.f32(i32 23, float %6286)  ; Log(value)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6282, 3
  %6289 = fmul fast float %6288, %6287
  %6290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6290, 2
  %6292 = fmul fast float %6289, %6291
  %6293 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  %6294 = uitofp i32 %6272 to float
  %6295 = uitofp i32 %6275 to float
  %6296 = fadd fast float %6294, 5.000000e-01
  %6297 = fadd fast float %6295, 5.000000e-01
  %6298 = fmul fast float %6291, %6296
  %6299 = fmul fast float %6291, %6297
  %6300 = fadd fast float %6298, 0x3F0FFB4800000000
  %6301 = fadd fast float %6299, 0xBF0FFB4800000000
  %6302 = call float @dx.op.binary.f32(i32 35, float %6293, float %6300)  ; FMax(a,b)
  %6303 = call float @dx.op.binary.f32(i32 36, float %6302, float %6301)  ; FMin(a,b)
  %6304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6305 = extractvalue %dx.types.CBufRet.f32 %6304, 1
  %6306 = extractvalue %dx.types.CBufRet.f32 %6304, 2
  %6307 = extractvalue %dx.types.CBufRet.f32 %6304, 0
  %6308 = fmul fast float %6305, %6303
  %6309 = fadd fast float %6307, %6308
  %6310 = fadd fast float %6307, %6306
  %6311 = fsub fast float %6305, %6306
  %6312 = fadd fast float %6311, %6307
  %6313 = call float @dx.op.binary.f32(i32 35, float %6309, float %6310)  ; FMax(a,b)
  %6314 = call float @dx.op.binary.f32(i32 36, float %6313, float %6312)  ; FMin(a,b)
  %6315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6252, float %6253, float %6314, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6316 = extractvalue %dx.types.ResRet.f32 %6315, 0
  %6317 = extractvalue %dx.types.ResRet.f32 %6315, 1
  %6318 = extractvalue %dx.types.ResRet.f32 %6315, 2
  %6319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.i32 %6319, 0
  %6321 = extractvalue %dx.types.CBufRet.i32 %6319, 1
  %6322 = uitofp i32 %6320 to float
  %6323 = uitofp i32 %6321 to float
  %6324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6325 = extractvalue %dx.types.CBufRet.f32 %6324, 0
  %6326 = extractvalue %dx.types.CBufRet.f32 %6324, 1
  %6327 = fmul fast float %6322, %6252
  %6328 = fmul fast float %6323, %6253
  %6329 = fadd fast float %6327, -5.000000e-01
  %6330 = fadd fast float %6328, -5.000000e-01
  %6331 = call float @dx.op.unary.f32(i32 22, float %6329)  ; Frc(value)
  %6332 = call float @dx.op.unary.f32(i32 22, float %6330)  ; Frc(value)
  %6333 = fmul fast float %6331, %6331
  %6334 = fmul fast float %6333, %6331
  %6335 = fsub fast float 3.000000e+00, %6331
  %6336 = fmul fast float %6333, %6335
  %6337 = fmul fast float %6331, 3.000000e+00
  %6338 = fmul fast float %6334, 3.000000e+00
  %6339 = fmul fast float %6333, 6.000000e+00
  %6340 = fsub fast float %6338, %6339
  %6341 = fadd fast float %6340, 4.000000e+00
  %6342 = fmul fast float %6341, 0x3FC5555560000000
  %6343 = fmul fast float %6334, -3.000000e+00
  %6344 = fadd fast float %6333, %6331
  %6345 = fmul fast float %6344, 3.000000e+00
  %6346 = fadd fast float %6343, 1.000000e+00
  %6347 = fadd fast float %6346, %6345
  %6348 = fmul fast float %6334, 0x3FC5555560000000
  %6349 = fmul fast float %6332, %6332
  %6350 = fmul fast float %6349, %6332
  %6351 = fsub fast float 3.000000e+00, %6332
  %6352 = fmul fast float %6349, %6351
  %6353 = fmul fast float %6332, 3.000000e+00
  %6354 = fmul fast float %6350, 3.000000e+00
  %6355 = fmul fast float %6349, 6.000000e+00
  %6356 = fsub fast float %6354, %6355
  %6357 = fadd fast float %6356, 4.000000e+00
  %6358 = fmul fast float %6357, 0x3FC5555560000000
  %6359 = fmul fast float %6350, -3.000000e+00
  %6360 = fadd fast float %6349, %6332
  %6361 = fmul fast float %6360, 3.000000e+00
  %6362 = fadd fast float %6359, 1.000000e+00
  %6363 = fadd fast float %6362, %6361
  %6364 = fmul fast float %6350, 0x3FC5555560000000
  %6365 = fadd fast float %6331, 1.000000e+00
  %6366 = fsub fast float 1.000000e+00, %6337
  %6367 = fadd fast float %6366, %6336
  %6368 = fadd fast float %6367, %6341
  %6369 = fmul fast float %6368, 0x3FC5555560000000
  %6370 = fdiv fast float %6342, %6369
  %6371 = fsub fast float %6365, %6370
  %6372 = fsub fast float 1.000000e+00, %6331
  %6373 = fadd fast float %6347, %6334
  %6374 = fmul fast float %6373, 0x3FC5555560000000
  %6375 = fdiv fast float %6348, %6374
  %6376 = fadd fast float %6372, %6375
  %6377 = fadd fast float %6332, 1.000000e+00
  %6378 = fsub fast float 1.000000e+00, %6353
  %6379 = fadd fast float %6378, %6352
  %6380 = fadd fast float %6379, %6357
  %6381 = fmul fast float %6380, 0x3FC5555560000000
  %6382 = fdiv fast float %6358, %6381
  %6383 = fsub fast float %6377, %6382
  %6384 = fsub fast float 1.000000e+00, %6332
  %6385 = fadd fast float %6363, %6350
  %6386 = fmul fast float %6385, 0x3FC5555560000000
  %6387 = fdiv fast float %6364, %6386
  %6388 = fadd fast float %6387, %6384
  %6389 = fmul fast float %6371, %6325
  %6390 = fsub fast float %6252, %6389
  %6391 = fmul fast float %6376, %6325
  %6392 = fadd fast float %6391, %6252
  %6393 = fmul fast float %6388, %6326
  %6394 = fadd fast float %6393, %6253
  %6395 = fmul fast float %6383, %6326
  %6396 = fsub fast float %6253, %6395
  %6397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6390, float %6396, float %6314, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6398 = extractvalue %dx.types.ResRet.f32 %6397, 0
  %6399 = extractvalue %dx.types.ResRet.f32 %6397, 1
  %6400 = extractvalue %dx.types.ResRet.f32 %6397, 2
  %6401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6392, float %6396, float %6314, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.ResRet.f32 %6401, 1
  %6404 = extractvalue %dx.types.ResRet.f32 %6401, 2
  %6405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6390, float %6394, float %6314, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.ResRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.ResRet.f32 %6405, 2
  %6409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6392, float %6394, float %6314, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6410 = extractvalue %dx.types.ResRet.f32 %6409, 0
  %6411 = extractvalue %dx.types.ResRet.f32 %6409, 1
  %6412 = extractvalue %dx.types.ResRet.f32 %6409, 2
  %6413 = fsub fast float %6406, %6398
  %6414 = fsub fast float %6407, %6399
  %6415 = fsub fast float %6408, %6400
  %6416 = fmul fast float %6413, %6386
  %6417 = fmul fast float %6414, %6386
  %6418 = fmul fast float %6415, %6386
  %6419 = fadd fast float %6416, %6398
  %6420 = fadd fast float %6417, %6399
  %6421 = fadd fast float %6418, %6400
  %6422 = fsub fast float %6410, %6402
  %6423 = fsub fast float %6411, %6403
  %6424 = fsub fast float %6412, %6404
  %6425 = fmul fast float %6422, %6386
  %6426 = fmul fast float %6423, %6386
  %6427 = fmul fast float %6424, %6386
  %6428 = fsub fast float %6402, %6419
  %6429 = fadd fast float %6428, %6425
  %6430 = fsub fast float %6403, %6420
  %6431 = fadd fast float %6430, %6426
  %6432 = fsub fast float %6404, %6421
  %6433 = fadd fast float %6432, %6427
  %6434 = fmul fast float %6429, %6374
  %6435 = fmul fast float %6431, %6374
  %6436 = fmul fast float %6433, %6374
  %6437 = fadd fast float %6434, %6419
  %6438 = fadd fast float %6435, %6420
  %6439 = fadd fast float %6436, %6421
  %6440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6441 = extractvalue %dx.types.CBufRet.f32 %6440, 1
  %6442 = fmul fast float %6437, %6441
  %6443 = fmul fast float %6438, %6441
  %6444 = fmul fast float %6439, %6441
  br label %6445

; <label>:6445                                    ; preds = %6277, %6246
  %6446 = phi float [ %6316, %6277 ], [ 1.000000e+00, %6246 ]
  %6447 = phi float [ %6317, %6277 ], [ 1.000000e+00, %6246 ]
  %6448 = phi float [ %6318, %6277 ], [ 1.000000e+00, %6246 ]
  %6449 = phi float [ %6442, %6277 ], [ 0.000000e+00, %6246 ]
  %6450 = phi float [ %6443, %6277 ], [ 0.000000e+00, %6246 ]
  %6451 = phi float [ %6444, %6277 ], [ 0.000000e+00, %6246 ]
  %6452 = fmul fast float %6449, %6223
  %6453 = fmul fast float %6450, %6223
  %6454 = fmul fast float %6451, %6223
  %6455 = call float @dx.op.dot3.f32(i32 55, float %6446, float %6447, float %6448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6456 = call float @dx.op.dot3.f32(i32 55, float %6452, float %6453, float %6454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6457 = select i1 %238, float %6455, float %6446
  %6458 = select i1 %238, float %6455, float %6447
  %6459 = select i1 %238, float 1.000000e+00, float %6448
  %6460 = select i1 %238, float %6456, float %6452
  %6461 = select i1 %238, float 0.000000e+00, float %6453
  %6462 = select i1 %238, float 0.000000e+00, float %6454
  %6463 = fmul fast float %6457, %6236
  %6464 = fmul fast float %6458, %6237
  %6465 = fmul fast float %6459, %6238
  %6466 = fadd fast float %6463, %6460
  %6467 = fadd fast float %6464, %6461
  %6468 = fadd fast float %6462, %6465
  %6469 = fmul fast float %6457, %6214
  %6470 = fmul fast float %6458, %6215
  %6471 = fmul fast float %6459, %6216
  %6472 = fmul fast float %100, 2.000000e+00
  %6473 = fmul fast float %6472, %6248
  %6474 = fmul fast float %101, 2.000000e+00
  %6475 = fmul fast float %6474, %6249
  %6476 = fsub fast float 1.000000e+00, %6473
  %6477 = fsub fast float 1.000000e+00, %6475
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 0
  %6480 = extractvalue %dx.types.CBufRet.f32 %6478, 1
  %6481 = extractvalue %dx.types.CBufRet.f32 %6478, 2
  %6482 = fmul fast float %6476, %6479
  %6483 = fmul fast float %6476, %6480
  %6484 = fmul fast float %6476, %6481
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 0
  %6487 = extractvalue %dx.types.CBufRet.f32 %6485, 1
  %6488 = extractvalue %dx.types.CBufRet.f32 %6485, 2
  %6489 = fmul fast float %6477, %6486
  %6490 = fmul fast float %6477, %6487
  %6491 = fmul fast float %6477, %6488
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.CBufRet.f32 %6492, 1
  %6495 = extractvalue %dx.types.CBufRet.f32 %6492, 2
  %6496 = fadd fast float %6489, %6493
  %6497 = fadd fast float %6496, %6482
  %6498 = fadd fast float %6490, %6494
  %6499 = fadd fast float %6498, %6483
  %6500 = fadd fast float %6491, %6495
  %6501 = fadd fast float %6500, %6484
  %6502 = fmul fast float %6497, %198
  %6503 = fmul fast float %6499, %198
  %6504 = fmul fast float %6501, %198
  br label %6505

; <label>:6505                                    ; preds = %6445, %6213
  %6506 = phi float [ %6502, %6445 ], [ %147, %6213 ]
  %6507 = phi float [ %6503, %6445 ], [ %148, %6213 ]
  %6508 = phi float [ %6504, %6445 ], [ %149, %6213 ]
  %6509 = phi float [ %198, %6445 ], [ %88, %6213 ]
  %6510 = phi float [ %6466, %6445 ], [ %6236, %6213 ]
  %6511 = phi float [ %6467, %6445 ], [ %6237, %6213 ]
  %6512 = phi float [ %6468, %6445 ], [ %6238, %6213 ]
  %6513 = phi float [ %6469, %6445 ], [ %6214, %6213 ]
  %6514 = phi float [ %6470, %6445 ], [ %6215, %6213 ]
  %6515 = phi float [ %6471, %6445 ], [ %6216, %6213 ]
  %6516 = phi float [ %6446, %6445 ], [ 1.000000e+00, %6213 ]
  br i1 %6245, label %7671, label %6517

; <label>:6517                                    ; preds = %6505
  %6518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.CBufRet.f32 %6518, 1
  %6521 = extractvalue %dx.types.CBufRet.f32 %6518, 2
  %6522 = extractvalue %dx.types.CBufRet.f32 %6518, 3
  %6523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6524 = extractvalue %dx.types.CBufRet.f32 %6523, 0
  %6525 = extractvalue %dx.types.CBufRet.f32 %6523, 1
  %6526 = extractvalue %dx.types.CBufRet.f32 %6523, 2
  %6527 = extractvalue %dx.types.CBufRet.f32 %6523, 3
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  %6530 = extractvalue %dx.types.CBufRet.f32 %6528, 1
  %6531 = extractvalue %dx.types.CBufRet.f32 %6528, 2
  %6532 = extractvalue %dx.types.CBufRet.f32 %6528, 3
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 0
  %6535 = extractvalue %dx.types.CBufRet.f32 %6533, 1
  %6536 = extractvalue %dx.types.CBufRet.f32 %6533, 2
  %6537 = extractvalue %dx.types.CBufRet.f32 %6533, 3
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 3
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 3
  %6542 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6543 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6544 = extractvalue %dx.types.CBufRet.f32 %6540, 2
  %6545 = fcmp fast olt float %6544, -5.000000e-01
  %6546 = call float @dx.op.dot3.f32(i32 55, float %6506, float %6507, float %6508, float %6506, float %6507, float %6508)  ; Dot3(ax,ay,az,bx,by,bz)
  %6547 = call float @dx.op.unary.f32(i32 25, float %6546)  ; Rsqrt(value)
  %6548 = fmul fast float %6547, %6546
  %6549 = fmul fast float %6547, %6506
  %6550 = fmul fast float %6547, %6507
  %6551 = fmul fast float %6547, %6508
  %6552 = fadd fast float %6548, %6522
  %6553 = call float @dx.op.dot3.f32(i32 55, float %6549, float %6550, float %6551, float %6519, float %6520, float %6521)  ; Dot3(ax,ay,az,bx,by,bz)
  %6554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6555 = extractvalue %dx.types.CBufRet.i32 %6554, 1
  %6556 = and i32 %6555, 1
  %6557 = icmp ne i32 %6556, 0
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 2
  %6560 = fcmp fast ogt float %6559, 0.000000e+00
  %6561 = and i1 %6557, %6560
  br i1 %6561, label %6562, label %6968, !dx.controlflow.hints !147

; <label>:6562                                    ; preds = %6517
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 3
  %6565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6566 = extractvalue %dx.types.CBufRet.f32 %6565, 2
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 2
  %6569 = fsub fast float %6566, %6568
  %6570 = and i32 %6555, 2
  %6571 = extractvalue %dx.types.CBufRet.i32 %6554, 0
  %6572 = call i32 @dx.op.binary.i32(i32 40, i32 %6571, i32 3)  ; UMin(a,b)
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6575 = extractvalue %dx.types.CBufRet.f32 %6573, 1
  %6576 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  %6577 = extractvalue %dx.types.CBufRet.f32 %6567, 1
  %6578 = fsub fast float %6574, %6576
  %6579 = fsub fast float %6575, %6577
  %6580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6580, 0
  %6582 = fcmp fast ogt float %6581, 0.000000e+00
  %6583 = fsub fast float -0.000000e+00, %6578
  %6584 = fsub fast float -0.000000e+00, %6579
  %6585 = call float @dx.op.dot2.f32(i32 54, float %6549, float %6550, float %6549, float %6550)  ; Dot2(ax,ay,bx,by)
  %6586 = call float @dx.op.dot2.f32(i32 54, float %6549, float %6550, float %6583, float %6584)  ; Dot2(ax,ay,bx,by)
  %6587 = fmul fast float %6586, 2.000000e+00
  %6588 = call float @dx.op.dot2.f32(i32 54, float %6583, float %6584, float %6583, float %6584)  ; Dot2(ax,ay,bx,by)
  %6589 = fmul fast float %6581, %6581
  %6590 = fsub fast float %6588, %6589
  %6591 = fmul fast float %6587, %6587
  %6592 = fmul fast float %6585, 4.000000e+00
  %6593 = fmul fast float %6592, %6590
  %6594 = fsub fast float %6591, %6593
  %6595 = fcmp fast ogt float %6594, 0.000000e+00
  br i1 %6595, label %6596, label %6611

; <label>:6596                                    ; preds = %6562
  %6597 = fcmp fast ogt float %6587, 0.000000e+00
  %6598 = call float @dx.op.unary.f32(i32 24, float %6594)  ; Sqrt(value)
  %6599 = fsub fast float -0.000000e+00, %6598
  %6600 = select i1 %6597, float %6598, float %6599
  %6601 = fadd fast float %6600, %6587
  %6602 = fmul float %6601, -5.000000e-01
  %6603 = fdiv fast float %6602, %6585
  %6604 = call float @dx.op.binary.f32(i32 35, float %6603, float 0.000000e+00)  ; FMax(a,b)
  %6605 = call float @dx.op.binary.f32(i32 36, float %6548, float %6604)  ; FMin(a,b)
  %6606 = fdiv fast float %6590, %6602
  %6607 = call float @dx.op.binary.f32(i32 35, float %6606, float 0.000000e+00)  ; FMax(a,b)
  %6608 = call float @dx.op.binary.f32(i32 36, float %6548, float %6607)  ; FMin(a,b)
  %6609 = call float @dx.op.binary.f32(i32 36, float %6605, float %6608)  ; FMin(a,b)
  %6610 = call float @dx.op.binary.f32(i32 35, float %6605, float %6608)  ; FMax(a,b)
  br label %6611

; <label>:6611                                    ; preds = %6596, %6562
  %6612 = phi float [ %6610, %6596 ], [ -1.000000e+00, %6562 ]
  %6613 = phi float [ %6609, %6596 ], [ -1.000000e+00, %6562 ]
  %6614 = phi i1 [ true, %6596 ], [ false, %6562 ]
  %6615 = and i1 %6582, %6614
  br i1 %6615, label %6616, label %6618

; <label>:6616                                    ; preds = %6611
  %6617 = fcmp fast oeq float %6613, %6612
  br i1 %6617, label %6921, label %6619

; <label>:6618                                    ; preds = %6611
  br i1 %6582, label %6921, label %6619

; <label>:6619                                    ; preds = %6618, %6616
  %6620 = phi float [ %6548, %6618 ], [ %6612, %6616 ]
  %6621 = phi float [ 0.000000e+00, %6618 ], [ %6613, %6616 ]
  %6622 = icmp ne i32 %6570, 0
  %6623 = fmul fast float %6620, %6551
  %6624 = fadd fast float %6623, %6564
  %6625 = fmul fast float %6624, %6620
  %6626 = select i1 %6622, float 0.000000e+00, float %6625
  %6627 = fcmp fast oeq float %6551, 0.000000e+00
  %6628 = fdiv fast float %6569, %6551
  %6629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6628)  ; FMax(a,b)
  %6630 = select i1 %6627, float %6620, float %6629
  %6631 = call float @dx.op.binary.f32(i32 36, float %6620, float %6630)  ; FMin(a,b)
  %6632 = fcmp fast ogt float %6551, 0.000000e+00
  %6633 = fcmp fast olt float %6569, 0.000000e+00
  br i1 %6632, label %6634, label %6691

; <label>:6634                                    ; preds = %6619
  %6635 = icmp eq i32 %6570, 0
  br i1 %6633, label %6636, label %6680

; <label>:6636                                    ; preds = %6634
  %6637 = select i1 %6635, float %6620, float 0.000000e+00
  %6638 = fsub fast float -0.000000e+00, %6637
  %6639 = call float @dx.op.unary.f32(i32 6, float %6638)  ; FAbs(value)
  %6640 = fmul fast float %6637, %6551
  %6641 = fadd fast float %6640, %6564
  %6642 = fmul fast float %6639, %6641
  %6643 = fsub fast float %6626, %6642
  %6644 = fsub fast float %6620, %6639
  %6645 = select i1 %6635, float %6644, float 0.000000e+00
  %6646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6647 = extractvalue %dx.types.CBufRet.f32 %6646, 0
  %6648 = extractvalue %dx.types.CBufRet.f32 %6646, 1
  %6649 = extractvalue %dx.types.CBufRet.f32 %6646, 2
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 0
  %6652 = extractvalue %dx.types.CBufRet.f32 %6650, 1
  %6653 = extractvalue %dx.types.CBufRet.f32 %6650, 2
  %6654 = extractvalue %dx.types.CBufRet.f32 %6650, 3
  %6655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6656 = extractvalue %dx.types.CBufRet.f32 %6655, 3
  %6657 = call float @dx.op.binary.f32(i32 36, float %6643, float %6656)  ; FMin(a,b)
  %6658 = fmul fast float %6654, %6645
  %6659 = call float @dx.op.unary.f32(i32 7, float %6658)  ; Saturate(value)
  %6660 = fsub fast float %6651, %6647
  %6661 = fsub fast float %6652, %6648
  %6662 = fsub fast float %6653, %6649
  %6663 = fmul fast float %6659, %6660
  %6664 = fmul fast float %6659, %6661
  %6665 = fmul fast float %6659, %6662
  %6666 = fadd fast float %6663, %6647
  %6667 = fadd fast float %6664, %6648
  %6668 = fadd fast float %6665, %6649
  %6669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6670 = extractvalue %dx.types.CBufRet.f32 %6669, 0
  %6671 = extractvalue %dx.types.CBufRet.f32 %6669, 1
  %6672 = fadd fast float %6671, %6670
  %6673 = call float @dx.op.unary.f32(i32 7, float %6672)  ; Saturate(value)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6669, 2
  %6675 = extractvalue %dx.types.CBufRet.f32 %6669, 3
  %6676 = fadd fast float %6675, %6674
  %6677 = call float @dx.op.unary.f32(i32 7, float %6676)  ; Saturate(value)
  %6678 = fmul fast float %6673, %6657
  %6679 = fmul fast float %6678, %6677
  br label %6921

; <label>:6680                                    ; preds = %6634
  br i1 %6635, label %6681, label %6702

; <label>:6681                                    ; preds = %6680
  %6682 = call float @dx.op.binary.f32(i32 36, float %6631, float %6621)  ; FMin(a,b)
  %6683 = fsub fast float %6631, %6682
  %6684 = fsub fast float %6683, %6620
  %6685 = call float @dx.op.unary.f32(i32 6, float %6684)  ; FAbs(value)
  %6686 = fadd fast float %6683, %6620
  %6687 = fmul fast float %6686, %6551
  %6688 = fadd fast float %6687, %6564
  %6689 = fmul fast float %6688, %6685
  %6690 = fsub fast float %6626, %6689
  br label %6702

; <label>:6691                                    ; preds = %6619
  br i1 %6633, label %6692, label %6702

; <label>:6692                                    ; preds = %6691
  %6693 = call float @dx.op.binary.f32(i32 35, float %6621, float %6631)  ; FMax(a,b)
  %6694 = icmp eq i32 %6570, 0
  %6695 = select i1 %6694, float %6631, float 0.000000e+00
  %6696 = fsub fast float -0.000000e+00, %6695
  %6697 = call float @dx.op.unary.f32(i32 6, float %6696)  ; FAbs(value)
  %6698 = fmul fast float %6695, %6551
  %6699 = fadd fast float %6698, %6564
  %6700 = fmul fast float %6697, %6699
  %6701 = fsub fast float %6626, %6700
  br label %6702

; <label>:6702                                    ; preds = %6692, %6691, %6681, %6680
  %6703 = phi float [ %6621, %6680 ], [ %6621, %6681 ], [ %6693, %6692 ], [ %6621, %6691 ]
  %6704 = phi float [ 0.000000e+00, %6680 ], [ %6685, %6681 ], [ %6697, %6692 ], [ 0.000000e+00, %6691 ]
  %6705 = phi float [ %6626, %6680 ], [ %6690, %6681 ], [ %6701, %6692 ], [ %6626, %6691 ]
  %6706 = phi float [ %6631, %6680 ], [ %6631, %6681 ], [ %6620, %6692 ], [ %6620, %6691 ]
  %6707 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %6707, align 4, !tbaa !134, !noalias !148
  %6708 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %6708, align 4, !tbaa !134, !noalias !148
  %6709 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %6709, align 4, !tbaa !134, !noalias !148
  %6710 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %6710, align 4, !tbaa !134, !noalias !148
  %6711 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %6711, align 4, !tbaa !134, !noalias !148
  %6712 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %6712, align 4, !tbaa !134, !noalias !148
  %6713 = icmp sgt i32 %6572, 0
  br i1 %6713, label %6714, label %6775

; <label>:6714                                    ; preds = %6702
  br label %6715

; <label>:6715                                    ; preds = %6764, %6714
  %6716 = phi i32 [ %6765, %6764 ], [ 0, %6714 ]
  %6717 = phi i32 [ %6766, %6764 ], [ 0, %6714 ]
  %6718 = add nuw i32 %6717, 171
  %6719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %6718)  ; CBufferLoadLegacy(handle,regIndex)
  %6720 = extractvalue %dx.types.CBufRet.f32 %6719, 0
  %6721 = extractvalue %dx.types.CBufRet.f32 %6719, 1
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6725 = fsub fast float %6720, %6723
  %6726 = fsub fast float %6721, %6724
  %6727 = extractvalue %dx.types.CBufRet.f32 %6719, 2
  %6728 = fsub fast float -0.000000e+00, %6725
  %6729 = fsub fast float -0.000000e+00, %6726
  %6730 = call float @dx.op.dot2.f32(i32 54, float %6549, float %6550, float %6728, float %6729)  ; Dot2(ax,ay,bx,by)
  %6731 = fmul fast float %6730, 2.000000e+00
  %6732 = call float @dx.op.dot2.f32(i32 54, float %6728, float %6729, float %6728, float %6729)  ; Dot2(ax,ay,bx,by)
  %6733 = fmul fast float %6727, %6727
  %6734 = fsub fast float %6732, %6733
  %6735 = fmul fast float %6731, %6731
  %6736 = fmul fast float %6592, %6734
  %6737 = fsub fast float %6735, %6736
  %6738 = fcmp fast ogt float %6737, 0.000000e+00
  br i1 %6738, label %6739, label %6754

; <label>:6739                                    ; preds = %6715
  %6740 = fcmp fast ogt float %6731, 0.000000e+00
  %6741 = call float @dx.op.unary.f32(i32 24, float %6737)  ; Sqrt(value)
  %6742 = fsub fast float -0.000000e+00, %6741
  %6743 = select i1 %6740, float %6741, float %6742
  %6744 = fadd fast float %6743, %6731
  %6745 = fmul float %6744, -5.000000e-01
  %6746 = fdiv fast float %6745, %6585
  %6747 = call float @dx.op.binary.f32(i32 35, float %6746, float 0.000000e+00)  ; FMax(a,b)
  %6748 = call float @dx.op.binary.f32(i32 36, float %6620, float %6747)  ; FMin(a,b)
  %6749 = fdiv fast float %6734, %6745
  %6750 = call float @dx.op.binary.f32(i32 35, float %6749, float 0.000000e+00)  ; FMax(a,b)
  %6751 = call float @dx.op.binary.f32(i32 36, float %6620, float %6750)  ; FMin(a,b)
  %6752 = call float @dx.op.binary.f32(i32 36, float %6748, float %6751)  ; FMin(a,b)
  %6753 = call float @dx.op.binary.f32(i32 35, float %6748, float %6751)  ; FMax(a,b)
  br label %6754

; <label>:6754                                    ; preds = %6739, %6715
  %6755 = phi float [ %6753, %6739 ], [ -1.000000e+00, %6715 ]
  %6756 = phi float [ %6752, %6739 ], [ -1.000000e+00, %6715 ]
  %6757 = phi i1 [ true, %6739 ], [ false, %6715 ]
  br i1 %6757, label %6758, label %6764

; <label>:6758                                    ; preds = %6754
  %6759 = call float @dx.op.binary.f32(i32 35, float %6703, float %6756)  ; FMax(a,b)
  %6760 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6717
  store float %6759, float* %6760, align 4, !tbaa !134, !noalias !148
  %6761 = call float @dx.op.binary.f32(i32 35, float %6703, float %6755)  ; FMax(a,b)
  %6762 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6717
  store float %6761, float* %6762, align 4, !tbaa !134, !noalias !148
  %6763 = add nsw i32 %6716, 1
  br label %6764

; <label>:6764                                    ; preds = %6758, %6754
  %6765 = phi i32 [ %6763, %6758 ], [ %6716, %6754 ]
  %6766 = add nuw nsw i32 %6717, 1
  %6767 = icmp eq i32 %6766, %6572
  br i1 %6767, label %6768, label %6715

; <label>:6768                                    ; preds = %6764
  %6769 = load float, float* %6709, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %6770 = load float, float* %6708, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  %6771 = load float, float* %6707, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  %6772 = load float, float* %6712, align 4, !tbaa !134, !alias.scope !174, !noalias !177
  %6773 = load float, float* %6711, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  %6774 = load float, float* %6710, align 4, !tbaa !134, !alias.scope !182, !noalias !183
  br label %6775

; <label>:6775                                    ; preds = %6768, %6702
  %6776 = phi float [ -1.000000e+00, %6702 ], [ %6774, %6768 ]
  %6777 = phi float [ -1.000000e+00, %6702 ], [ %6773, %6768 ]
  %6778 = phi float [ -1.000000e+00, %6702 ], [ %6772, %6768 ]
  %6779 = phi float [ -1.000000e+00, %6702 ], [ %6771, %6768 ]
  %6780 = phi float [ -1.000000e+00, %6702 ], [ %6770, %6768 ]
  %6781 = phi float [ -1.000000e+00, %6702 ], [ %6769, %6768 ]
  %6782 = phi i32 [ 0, %6702 ], [ %6765, %6768 ]
  %6783 = call float @dx.op.binary.f32(i32 36, float %6780, float %6781)  ; FMin(a,b)
  %6784 = call float @dx.op.binary.f32(i32 36, float %6779, float %6783)  ; FMin(a,b)
  %6785 = call float @dx.op.binary.f32(i32 35, float %6779, float %6780)  ; FMax(a,b)
  %6786 = call float @dx.op.binary.f32(i32 36, float %6785, float %6781)  ; FMin(a,b)
  %6787 = call float @dx.op.binary.f32(i32 36, float %6779, float %6780)  ; FMin(a,b)
  %6788 = call float @dx.op.binary.f32(i32 35, float %6787, float %6786)  ; FMax(a,b)
  %6789 = call float @dx.op.binary.f32(i32 35, float %6780, float %6781)  ; FMax(a,b)
  %6790 = call float @dx.op.binary.f32(i32 35, float %6779, float %6789)  ; FMax(a,b)
  store float %6784, float* %6707, align 4, !tbaa !134, !alias.scope !172, !noalias !173
  store float %6788, float* %6708, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  store float %6790, float* %6709, align 4, !tbaa !134, !alias.scope !164, !noalias !167
  %6791 = call float @dx.op.binary.f32(i32 36, float %6777, float %6778)  ; FMin(a,b)
  %6792 = call float @dx.op.binary.f32(i32 36, float %6776, float %6791)  ; FMin(a,b)
  %6793 = call float @dx.op.binary.f32(i32 35, float %6776, float %6777)  ; FMax(a,b)
  %6794 = call float @dx.op.binary.f32(i32 36, float %6793, float %6778)  ; FMin(a,b)
  %6795 = call float @dx.op.binary.f32(i32 36, float %6776, float %6777)  ; FMin(a,b)
  %6796 = call float @dx.op.binary.f32(i32 35, float %6795, float %6794)  ; FMax(a,b)
  %6797 = call float @dx.op.binary.f32(i32 35, float %6777, float %6778)  ; FMax(a,b)
  %6798 = call float @dx.op.binary.f32(i32 35, float %6776, float %6797)  ; FMax(a,b)
  store float %6792, float* %6710, align 4, !tbaa !134, !alias.scope !182, !noalias !183
  store float %6796, float* %6711, align 4, !tbaa !134, !alias.scope !180, !noalias !181
  store float %6798, float* %6712, align 4, !tbaa !134, !alias.scope !174, !noalias !177
  %6799 = sub nsw i32 3, %6782
  %6800 = icmp sgt i32 %6799, 2
  br i1 %6800, label %6801, label %6839

; <label>:6801                                    ; preds = %6775
  %6802 = icmp eq i32 %6570, 0
  %6803 = fsub fast float %6620, %6704
  %6804 = select i1 %6802, float %6803, float %6704
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.CBufRet.f32 %6805, 1
  %6808 = extractvalue %dx.types.CBufRet.f32 %6805, 2
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.CBufRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.CBufRet.f32 %6809, 2
  %6813 = extractvalue %dx.types.CBufRet.f32 %6809, 3
  %6814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6815 = extractvalue %dx.types.CBufRet.f32 %6814, 3
  %6816 = call float @dx.op.binary.f32(i32 36, float %6705, float %6815)  ; FMin(a,b)
  %6817 = fmul fast float %6813, %6804
  %6818 = call float @dx.op.unary.f32(i32 7, float %6817)  ; Saturate(value)
  %6819 = fsub fast float %6810, %6806
  %6820 = fsub fast float %6811, %6807
  %6821 = fsub fast float %6812, %6808
  %6822 = fmul fast float %6818, %6819
  %6823 = fmul fast float %6818, %6820
  %6824 = fmul fast float %6818, %6821
  %6825 = fadd fast float %6822, %6806
  %6826 = fadd fast float %6823, %6807
  %6827 = fadd fast float %6824, %6808
  %6828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6829 = extractvalue %dx.types.CBufRet.f32 %6828, 0
  %6830 = extractvalue %dx.types.CBufRet.f32 %6828, 1
  %6831 = fadd fast float %6830, %6829
  %6832 = call float @dx.op.unary.f32(i32 7, float %6831)  ; Saturate(value)
  %6833 = extractvalue %dx.types.CBufRet.f32 %6828, 2
  %6834 = extractvalue %dx.types.CBufRet.f32 %6828, 3
  %6835 = fadd fast float %6834, %6833
  %6836 = call float @dx.op.unary.f32(i32 7, float %6835)  ; Saturate(value)
  %6837 = fmul fast float %6832, %6816
  %6838 = fmul fast float %6837, %6836
  br label %6921

; <label>:6839                                    ; preds = %6775
  %6840 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6799
  %6841 = load float, float* %6840, align 4, !tbaa !134, !noalias !148
  %6842 = fcmp fast olt float %6841, %6706
  %6843 = icmp sgt i32 %6782, 0
  %6844 = and i1 %6843, %6842
  br i1 %6844, label %6845, label %6882

; <label>:6845                                    ; preds = %6839
  br label %6846

; <label>:6846                                    ; preds = %6875, %6845
  %6847 = phi float [ %6876, %6875 ], [ %6704, %6845 ]
  %6848 = phi float [ %6877, %6875 ], [ %6705, %6845 ]
  %6849 = phi float [ %6857, %6875 ], [ %6841, %6845 ]
  %6850 = phi i32 [ %6854, %6875 ], [ %6799, %6845 ]
  %6851 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %6850
  %6852 = load float, float* %6851, align 4, !tbaa !134, !noalias !148
  %6853 = icmp slt i32 %6850, 2
  %6854 = add nsw i32 %6850, 1
  %6855 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %6854
  %6856 = load float, float* %6855, align 4, !tbaa !134, !noalias !148
  %6857 = select i1 %6853, float %6856, float %6620
  %6858 = call float @dx.op.binary.f32(i32 36, float %6857, float %6852)  ; FMin(a,b)
  %6859 = call float @dx.op.binary.f32(i32 36, float %6706, float %6858)  ; FMin(a,b)
  %6860 = icmp eq i32 %6570, 0
  %6861 = fadd fast float %6859, %6849
  %6862 = fmul fast float %6861, %6551
  %6863 = fadd fast float %6862, %6564
  br i1 %6860, label %6869, label %6864

; <label>:6864                                    ; preds = %6846
  %6865 = fsub fast float %6859, %6849
  %6866 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6865)  ; FMax(a,b)
  %6867 = fmul fast float %6866, %6863
  %6868 = fadd fast float %6867, %6848
  br label %6875

; <label>:6869                                    ; preds = %6846
  %6870 = fsub fast float %6849, %6859
  %6871 = call float @dx.op.unary.f32(i32 6, float %6870)  ; FAbs(value)
  %6872 = fadd fast float %6871, %6847
  %6873 = fmul fast float %6871, %6863
  %6874 = fsub fast float %6848, %6873
  br label %6875

; <label>:6875                                    ; preds = %6869, %6864
  %6876 = phi float [ %6866, %6864 ], [ %6872, %6869 ]
  %6877 = phi float [ %6868, %6864 ], [ %6874, %6869 ]
  %6878 = fcmp fast olt float %6857, %6706
  %6879 = icmp slt i32 %6854, 3
  %6880 = and i1 %6879, %6878
  br i1 %6880, label %6846, label %6881

; <label>:6881                                    ; preds = %6875
  br label %6882

; <label>:6882                                    ; preds = %6881, %6839
  %6883 = phi float [ %6704, %6839 ], [ %6876, %6881 ]
  %6884 = phi float [ %6705, %6839 ], [ %6877, %6881 ]
  %6885 = fsub fast float %6620, %6883
  %6886 = select i1 %6622, float %6883, float %6885
  %6887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6887, 0
  %6889 = extractvalue %dx.types.CBufRet.f32 %6887, 1
  %6890 = extractvalue %dx.types.CBufRet.f32 %6887, 2
  %6891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6892 = extractvalue %dx.types.CBufRet.f32 %6891, 0
  %6893 = extractvalue %dx.types.CBufRet.f32 %6891, 1
  %6894 = extractvalue %dx.types.CBufRet.f32 %6891, 2
  %6895 = extractvalue %dx.types.CBufRet.f32 %6891, 3
  %6896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6896, 3
  %6898 = call float @dx.op.binary.f32(i32 36, float %6884, float %6897)  ; FMin(a,b)
  %6899 = fmul fast float %6895, %6886
  %6900 = call float @dx.op.unary.f32(i32 7, float %6899)  ; Saturate(value)
  %6901 = fsub fast float %6892, %6888
  %6902 = fsub fast float %6893, %6889
  %6903 = fsub fast float %6894, %6890
  %6904 = fmul fast float %6900, %6901
  %6905 = fmul fast float %6900, %6902
  %6906 = fmul fast float %6900, %6903
  %6907 = fadd fast float %6904, %6888
  %6908 = fadd fast float %6905, %6889
  %6909 = fadd fast float %6906, %6890
  %6910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.CBufRet.f32 %6910, 1
  %6913 = fadd fast float %6912, %6911
  %6914 = call float @dx.op.unary.f32(i32 7, float %6913)  ; Saturate(value)
  %6915 = extractvalue %dx.types.CBufRet.f32 %6910, 2
  %6916 = extractvalue %dx.types.CBufRet.f32 %6910, 3
  %6917 = fadd fast float %6916, %6915
  %6918 = call float @dx.op.unary.f32(i32 7, float %6917)  ; Saturate(value)
  %6919 = fmul fast float %6914, %6898
  %6920 = fmul fast float %6919, %6918
  br label %6921

; <label>:6921                                    ; preds = %6882, %6801, %6636, %6618, %6616
  %6922 = phi float [ %6645, %6636 ], [ %6804, %6801 ], [ %6886, %6882 ], [ 0.000000e+00, %6616 ], [ 0.000000e+00, %6618 ]
  %6923 = phi float [ %6679, %6636 ], [ %6838, %6801 ], [ %6920, %6882 ], [ 0.000000e+00, %6616 ], [ 0.000000e+00, %6618 ]
  %6924 = phi float [ %6666, %6636 ], [ %6825, %6801 ], [ %6907, %6882 ], [ 0.000000e+00, %6616 ], [ 0.000000e+00, %6618 ]
  %6925 = phi float [ %6667, %6636 ], [ %6826, %6801 ], [ %6908, %6882 ], [ 0.000000e+00, %6616 ], [ 0.000000e+00, %6618 ]
  %6926 = phi float [ %6668, %6636 ], [ %6827, %6801 ], [ %6909, %6882 ], [ 0.000000e+00, %6616 ], [ 0.000000e+00, %6618 ]
  %6927 = fmul fast float %6559, %6923
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6930 = fsub fast float %6566, %6929
  %6931 = fcmp fast olt float %6927, -2.000000e+01
  %6932 = call float @dx.op.unary.f32(i32 21, float %6927)  ; Exp(value)
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6935 = extractvalue %dx.types.CBufRet.f32 %6933, 3
  %6936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6936, 2
  %6938 = fmul fast float %6935, %6930
  %6939 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  %6940 = fsub fast float 1.000000e+00, %6939
  %6941 = fmul fast float %6551, 5.000000e-01
  %6942 = fadd fast float %6941, 5.000000e-01
  %6943 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6944 = fsub fast float 1.000000e+00, %6943
  %6945 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6940)  ; FMax(a,b)
  %6946 = fdiv fast float %6944, %6945
  %6947 = fsub fast float %6930, %6508
  %6948 = call float @dx.op.unary.f32(i32 6, float %6947)  ; FAbs(value)
  %6949 = fmul fast float %6948, %6934
  %6950 = call float @dx.op.unary.f32(i32 7, float %6946)  ; Saturate(value)
  %6951 = fsub fast float 1.000000e+00, %6949
  %6952 = fmul fast float %6951, %6950
  %6953 = fadd fast float %6952, %6949
  %6954 = fmul fast float %6937, %6930
  %6955 = call float @dx.op.unary.f32(i32 7, float %6954)  ; Saturate(value)
  %6956 = fsub fast float 1.000000e+00, %6953
  %6957 = fmul fast float %6956, %6955
  %6958 = fadd fast float %6957, %6953
  %6959 = call float @dx.op.unary.f32(i32 7, float %6958)  ; Saturate(value)
  %6960 = fadd fast float %6932, -1.000000e+00
  %6961 = select i1 %6931, float -1.000000e+00, float %6960
  %6962 = fmul fast float %6959, %6961
  %6963 = fadd fast float %6962, 1.000000e+00
  %6964 = fsub fast float -0.000000e+00, %6962
  %6965 = fmul fast float %6924, %6964
  %6966 = fmul fast float %6925, %6964
  %6967 = fmul fast float %6926, %6964
  br label %6968

; <label>:6968                                    ; preds = %6921, %6517
  %6969 = phi float [ %6922, %6921 ], [ 0.000000e+00, %6517 ]
  %6970 = phi float [ %6963, %6921 ], [ 1.000000e+00, %6517 ]
  %6971 = phi float [ %6965, %6921 ], [ 0.000000e+00, %6517 ]
  %6972 = phi float [ %6966, %6921 ], [ 0.000000e+00, %6517 ]
  %6973 = phi float [ %6967, %6921 ], [ 0.000000e+00, %6517 ]
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 1
  %6976 = fsub fast float 1.000000e+00, %6970
  %6977 = fmul fast float %6976, %6552
  %6978 = fmul fast float %6977, %6975
  %6979 = fsub fast float %6552, %6978
  br i1 %6545, label %6980, label %7009, !dx.controlflow.hints !184

; <label>:6980                                    ; preds = %6968
  %6981 = fmul fast float %6553, %6542
  %6982 = fadd fast float %6981, %6543
  %6983 = call float @dx.op.unary.f32(i32 7, float %6982)  ; Saturate(value)
  %6984 = fmul fast float %6524, %6979
  %6985 = fsub fast float -0.000000e+00, %6984
  %6986 = fmul fast float %6525, %6979
  %6987 = fsub fast float -0.000000e+00, %6986
  %6988 = call float @dx.op.unary.f32(i32 21, float %6985)  ; Exp(value)
  %6989 = call float @dx.op.unary.f32(i32 21, float %6987)  ; Exp(value)
  %6990 = call float @dx.op.binary.f32(i32 35, float %6532, float %6988)  ; FMax(a,b)
  %6991 = call float @dx.op.binary.f32(i32 35, float %6532, float %6989)  ; FMax(a,b)
  %6992 = fsub fast float %6991, %6990
  %6993 = fmul fast float %6992, %6983
  %6994 = fadd fast float %6993, %6990
  %6995 = call float @dx.op.unary.f32(i32 7, float %6994)  ; Saturate(value)
  %6996 = fsub fast float %6529, %6534
  %6997 = fsub fast float %6530, %6535
  %6998 = fsub fast float %6531, %6536
  %6999 = fmul fast float %6983, %6996
  %7000 = fmul fast float %6983, %6997
  %7001 = fmul fast float %6983, %6998
  %7002 = fadd fast float %6999, %6534
  %7003 = fadd fast float %7000, %6535
  %7004 = fadd fast float %7001, %6536
  %7005 = fsub fast float 1.000000e+00, %6995
  %7006 = fmul fast float %7005, %7002
  %7007 = fmul fast float %7005, %7003
  %7008 = fmul fast float %7005, %7004
  br label %7068

; <label>:7009                                    ; preds = %6968
  %7010 = fmul fast float %6979, %6541
  %7011 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  %7012 = fsub fast float 2.000000e+00, %7011
  %7013 = fmul fast float %7011, 9.921875e-01
  %7014 = fmul fast float %7013, %7012
  %7015 = fadd fast float %7014, 3.906250e-03
  %7016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7015, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7017 = extractvalue %dx.types.ResRet.f32 %7016, 0
  %7018 = fsub fast float %7011, %7017
  %7019 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7018)  ; FMax(a,b)
  %7020 = fmul fast float %6527, %6508
  %7021 = call float @dx.op.unary.f32(i32 6, float %7020)  ; FAbs(value)
  %7022 = fcmp fast ogt float %7021, 0x3EB0C6F7A0000000
  br i1 %7022, label %7023, label %7029, !dx.controlflow.hints !185

; <label>:7023                                    ; preds = %7009
  %7024 = fmul fast float %7020, 0xBFF7154760000000
  %7025 = call float @dx.op.unary.f32(i32 21, float %7024)  ; Exp(value)
  %7026 = fsub fast float 1.000000e+00, %7025
  %7027 = fdiv fast float %7026, %7020
  %7028 = fmul fast float %7027, %6537
  br label %7029

; <label>:7029                                    ; preds = %7023, %7009
  %7030 = phi float [ %7028, %7023 ], [ %6537, %7009 ]
  %7031 = fadd fast float %7030, %6539
  %7032 = fmul fast float %7031, %7019
  %7033 = fmul fast float %6524, %7032
  %7034 = fsub fast float -0.000000e+00, %7033
  %7035 = fmul fast float %6525, %7032
  %7036 = fsub fast float -0.000000e+00, %7035
  %7037 = fmul fast float %6526, %7032
  %7038 = fsub fast float -0.000000e+00, %7037
  %7039 = call float @dx.op.unary.f32(i32 21, float %7034)  ; Exp(value)
  %7040 = call float @dx.op.unary.f32(i32 21, float %7036)  ; Exp(value)
  %7041 = call float @dx.op.unary.f32(i32 21, float %7038)  ; Exp(value)
  %7042 = fmul fast float %6553, %6553
  %7043 = fadd fast float %7042, 1.000000e+00
  %7044 = fmul fast float %7043, 0x3FAE8EC8A0000000
  %7045 = fmul fast float %7044, %6534
  %7046 = fmul fast float %7044, %6535
  %7047 = fmul fast float %7044, %6536
  %7048 = fmul fast float %6553, %6532
  %7049 = fsub fast float 1.000000e+00, %7048
  %7050 = fmul fast float %6532, %6532
  %7051 = fsub fast float 1.000000e+00, %7050
  %7052 = fmul fast float %7051, 0x3FB45F3060000000
  %7053 = fmul fast float %7049, %7049
  %7054 = fdiv fast float 1.000000e+00, %7053
  %7055 = fmul fast float %7052, %7054
  %7056 = fmul fast float %7055, %6529
  %7057 = fmul fast float %7055, %6530
  %7058 = fmul fast float %7055, %6531
  %7059 = fadd fast float %7056, %7045
  %7060 = fadd fast float %7057, %7046
  %7061 = fadd fast float %7058, %7047
  %7062 = fsub fast float 1.000000e+00, %7039
  %7063 = fsub fast float 1.000000e+00, %7040
  %7064 = fsub fast float 1.000000e+00, %7041
  %7065 = fmul fast float %7059, %7062
  %7066 = fmul fast float %7060, %7063
  %7067 = fmul fast float %7061, %7064
  br label %7068

; <label>:7068                                    ; preds = %7029, %6980
  %7069 = phi float [ %7006, %6980 ], [ %7065, %7029 ]
  %7070 = phi float [ %7007, %6980 ], [ %7066, %7029 ]
  %7071 = phi float [ %7008, %6980 ], [ %7067, %7029 ]
  %7072 = phi float [ %6995, %6980 ], [ %7039, %7029 ]
  %7073 = phi float [ %6995, %6980 ], [ %7040, %7029 ]
  %7074 = phi float [ %6995, %6980 ], [ %7041, %7029 ]
  br i1 %6561, label %7075, label %7273, !dx.controlflow.hints !186

; <label>:7075                                    ; preds = %7068
  %7076 = extractvalue %dx.types.CBufRet.f32 %6974, 0
  %7077 = fmul fast float %7076, %6976
  %7078 = fsub fast float %6971, %7069
  %7079 = fsub fast float %6972, %7070
  %7080 = fsub fast float %6973, %7071
  %7081 = fmul fast float %7077, %7078
  %7082 = fmul fast float %7077, %7079
  %7083 = fmul fast float %7077, %7080
  %7084 = fadd fast float %7081, %7069
  %7085 = fadd fast float %7082, %7070
  %7086 = fadd fast float %7083, %7071
  %7087 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7072)  ; FMax(a,b)
  %7088 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7073)  ; FMax(a,b)
  %7089 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7074)  ; FMax(a,b)
  %7090 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6970)  ; FMax(a,b)
  %7091 = call float @dx.op.binary.f32(i32 35, float %6969, float %6979)  ; FMax(a,b)
  %7092 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7091)  ; FMax(a,b)
  %7093 = fdiv fast float %6969, %7092
  %7094 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7095 = fdiv fast float %6979, %7092
  %7096 = call float @dx.op.unary.f32(i32 7, float %7095)  ; Saturate(value)
  %7097 = fcmp fast une float %7090, 1.000000e+00
  br i1 %7097, label %7098, label %7111, !dx.controlflow.hints !187

; <label>:7098                                    ; preds = %7075
  %7099 = call float @dx.op.unary.f32(i32 23, float %7090)  ; Log(value)
  %7100 = fmul fast float %7099, 0x3FE62E4300000000
  %7101 = fmul fast float %6971, %7100
  %7102 = fsub fast float -0.000000e+00, %7101
  %7103 = fmul fast float %6972, %7100
  %7104 = fsub fast float -0.000000e+00, %7103
  %7105 = fmul fast float %6973, %7100
  %7106 = fsub fast float -0.000000e+00, %7105
  %7107 = fsub fast float 1.000000e+00, %7090
  %7108 = fdiv fast float %7102, %7107
  %7109 = fdiv fast float %7104, %7107
  %7110 = fdiv fast float %7106, %7107
  br label %7111

; <label>:7111                                    ; preds = %7098, %7075
  %7112 = phi float [ %7108, %7098 ], [ %6971, %7075 ]
  %7113 = phi float [ %7109, %7098 ], [ %6972, %7075 ]
  %7114 = phi float [ %7110, %7098 ], [ %6973, %7075 ]
  %7115 = phi float [ %7100, %7098 ], [ 0.000000e+00, %7075 ]
  %7116 = fcmp fast une float %7087, 1.000000e+00
  br i1 %7116, label %7117, label %7124, !dx.controlflow.hints !188

; <label>:7117                                    ; preds = %7111
  %7118 = call float @dx.op.unary.f32(i32 23, float %7087)  ; Log(value)
  %7119 = fmul fast float %7118, 0x3FE62E4300000000
  %7120 = fmul fast float %7084, %7119
  %7121 = fsub fast float -0.000000e+00, %7120
  %7122 = fsub fast float 1.000000e+00, %7087
  %7123 = fdiv fast float %7121, %7122
  br label %7124

; <label>:7124                                    ; preds = %7117, %7111
  %7125 = phi float [ %7123, %7117 ], [ %7084, %7111 ]
  %7126 = phi float [ %7119, %7117 ], [ 0.000000e+00, %7111 ]
  %7127 = fcmp fast une float %7088, 1.000000e+00
  br i1 %7127, label %7128, label %7135, !dx.controlflow.hints !188

; <label>:7128                                    ; preds = %7124
  %7129 = call float @dx.op.unary.f32(i32 23, float %7088)  ; Log(value)
  %7130 = fmul fast float %7129, 0x3FE62E4300000000
  %7131 = fmul fast float %7085, %7130
  %7132 = fsub fast float -0.000000e+00, %7131
  %7133 = fsub fast float 1.000000e+00, %7088
  %7134 = fdiv fast float %7132, %7133
  br label %7135

; <label>:7135                                    ; preds = %7128, %7124
  %7136 = phi float [ %7134, %7128 ], [ %7085, %7124 ]
  %7137 = phi float [ %7130, %7128 ], [ 0.000000e+00, %7124 ]
  %7138 = fcmp fast une float %7089, 1.000000e+00
  br i1 %7138, label %7139, label %7146, !dx.controlflow.hints !188

; <label>:7139                                    ; preds = %7135
  %7140 = call float @dx.op.unary.f32(i32 23, float %7089)  ; Log(value)
  %7141 = fmul fast float %7140, 0x3FE62E4300000000
  %7142 = fmul fast float %7086, %7141
  %7143 = fsub fast float -0.000000e+00, %7142
  %7144 = fsub fast float 1.000000e+00, %7089
  %7145 = fdiv fast float %7143, %7144
  br label %7146

; <label>:7146                                    ; preds = %7139, %7135
  %7147 = phi float [ %7145, %7139 ], [ %7086, %7135 ]
  %7148 = phi float [ %7141, %7139 ], [ 0.000000e+00, %7135 ]
  %7149 = fmul fast float %7112, %7096
  %7150 = fmul fast float %7113, %7096
  %7151 = fmul fast float %7114, %7096
  %7152 = fmul fast float %7115, %7096
  %7153 = fmul fast float %7125, %7094
  %7154 = fmul fast float %7136, %7094
  %7155 = fmul fast float %7147, %7094
  %7156 = fmul fast float %7126, %7094
  %7157 = fmul fast float %7137, %7094
  %7158 = fmul fast float %7148, %7094
  %7159 = fadd fast float %7153, %7149
  %7160 = fadd fast float %7154, %7150
  %7161 = fadd fast float %7155, %7151
  %7162 = fadd fast float %7156, %7152
  %7163 = fadd fast float %7157, %7152
  %7164 = fadd fast float %7158, %7152
  %7165 = fcmp fast une float %7162, 0.000000e+00
  br i1 %7165, label %7166, label %7173, !dx.controlflow.hints !189

; <label>:7166                                    ; preds = %7146
  %7167 = fmul fast float %7162, 0x3FF7154760000000
  %7168 = call float @dx.op.unary.f32(i32 21, float %7167)  ; Exp(value)
  %7169 = fsub fast float 1.000000e+00, %7168
  %7170 = fmul fast float %7159, %7169
  %7171 = fsub fast float -0.000000e+00, %7170
  %7172 = fdiv fast float %7171, %7162
  br label %7173

; <label>:7173                                    ; preds = %7166, %7146
  %7174 = phi float [ %7168, %7166 ], [ 1.000000e+00, %7146 ]
  %7175 = phi float [ %7172, %7166 ], [ %7159, %7146 ]
  %7176 = fcmp fast une float %7163, 0.000000e+00
  br i1 %7176, label %7177, label %7184, !dx.controlflow.hints !189

; <label>:7177                                    ; preds = %7173
  %7178 = fmul fast float %7163, 0x3FF7154760000000
  %7179 = call float @dx.op.unary.f32(i32 21, float %7178)  ; Exp(value)
  %7180 = fsub fast float 1.000000e+00, %7179
  %7181 = fmul fast float %7160, %7180
  %7182 = fsub fast float -0.000000e+00, %7181
  %7183 = fdiv fast float %7182, %7163
  br label %7184

; <label>:7184                                    ; preds = %7177, %7173
  %7185 = phi float [ %7179, %7177 ], [ 1.000000e+00, %7173 ]
  %7186 = phi float [ %7183, %7177 ], [ %7160, %7173 ]
  %7187 = fcmp fast une float %7164, 0.000000e+00
  br i1 %7187, label %7188, label %7195, !dx.controlflow.hints !189

; <label>:7188                                    ; preds = %7184
  %7189 = fmul fast float %7164, 0x3FF7154760000000
  %7190 = call float @dx.op.unary.f32(i32 21, float %7189)  ; Exp(value)
  %7191 = fsub fast float 1.000000e+00, %7190
  %7192 = fmul fast float %7161, %7191
  %7193 = fsub fast float -0.000000e+00, %7192
  %7194 = fdiv fast float %7193, %7164
  br label %7195

; <label>:7195                                    ; preds = %7188, %7184
  %7196 = phi float [ %7190, %7188 ], [ 1.000000e+00, %7184 ]
  %7197 = phi float [ %7194, %7188 ], [ %7161, %7184 ]
  %7198 = fcmp fast ogt float %7094, %7096
  br i1 %7198, label %7199, label %7219

; <label>:7199                                    ; preds = %7195
  %7200 = fsub fast float 1.000000e+00, %7096
  %7201 = fmul fast float %7112, %7200
  %7202 = fmul fast float %7113, %7200
  %7203 = fmul fast float %7114, %7200
  %7204 = fmul fast float %7115, %7200
  %7205 = fcmp fast une float %7204, 0.000000e+00
  br i1 %7205, label %7206, label %7257, !dx.controlflow.hints !190

; <label>:7206                                    ; preds = %7199
  %7207 = fmul fast float %7204, 0x3FF7154760000000
  %7208 = call float @dx.op.unary.f32(i32 21, float %7207)  ; Exp(value)
  %7209 = fsub fast float 1.000000e+00, %7208
  %7210 = fmul fast float %7201, %7209
  %7211 = fsub fast float -0.000000e+00, %7210
  %7212 = fmul fast float %7202, %7209
  %7213 = fsub fast float -0.000000e+00, %7212
  %7214 = fmul fast float %7203, %7209
  %7215 = fsub fast float -0.000000e+00, %7214
  %7216 = fdiv fast float %7211, %7204
  %7217 = fdiv fast float %7213, %7204
  %7218 = fdiv fast float %7215, %7204
  br label %7257

; <label>:7219                                    ; preds = %7195
  %7220 = fsub fast float 1.000000e+00, %7094
  %7221 = fmul fast float %7125, %7220
  %7222 = fmul fast float %7136, %7220
  %7223 = fmul fast float %7147, %7220
  %7224 = fmul fast float %7126, %7220
  %7225 = fmul fast float %7137, %7220
  %7226 = fmul fast float %7148, %7220
  %7227 = fcmp fast une float %7224, 0.000000e+00
  br i1 %7227, label %7228, label %7235, !dx.controlflow.hints !189

; <label>:7228                                    ; preds = %7219
  %7229 = fmul fast float %7224, 0x3FF7154760000000
  %7230 = call float @dx.op.unary.f32(i32 21, float %7229)  ; Exp(value)
  %7231 = fsub fast float 1.000000e+00, %7230
  %7232 = fmul fast float %7221, %7231
  %7233 = fsub fast float -0.000000e+00, %7232
  %7234 = fdiv fast float %7233, %7224
  br label %7235

; <label>:7235                                    ; preds = %7228, %7219
  %7236 = phi float [ %7234, %7228 ], [ %7221, %7219 ]
  %7237 = phi float [ %7230, %7228 ], [ 1.000000e+00, %7219 ]
  %7238 = fcmp fast une float %7225, 0.000000e+00
  br i1 %7238, label %7239, label %7246, !dx.controlflow.hints !189

; <label>:7239                                    ; preds = %7235
  %7240 = fmul fast float %7225, 0x3FF7154760000000
  %7241 = call float @dx.op.unary.f32(i32 21, float %7240)  ; Exp(value)
  %7242 = fsub fast float 1.000000e+00, %7241
  %7243 = fmul fast float %7222, %7242
  %7244 = fsub fast float -0.000000e+00, %7243
  %7245 = fdiv fast float %7244, %7225
  br label %7246

; <label>:7246                                    ; preds = %7239, %7235
  %7247 = phi float [ %7245, %7239 ], [ %7222, %7235 ]
  %7248 = phi float [ %7241, %7239 ], [ 1.000000e+00, %7235 ]
  %7249 = fcmp fast une float %7226, 0.000000e+00
  br i1 %7249, label %7250, label %7257, !dx.controlflow.hints !189

; <label>:7250                                    ; preds = %7246
  %7251 = fmul fast float %7226, 0x3FF7154760000000
  %7252 = call float @dx.op.unary.f32(i32 21, float %7251)  ; Exp(value)
  %7253 = fsub fast float 1.000000e+00, %7252
  %7254 = fmul fast float %7223, %7253
  %7255 = fsub fast float -0.000000e+00, %7254
  %7256 = fdiv fast float %7255, %7226
  br label %7257

; <label>:7257                                    ; preds = %7250, %7246, %7206, %7199
  %7258 = phi float [ %7256, %7250 ], [ %7218, %7206 ], [ %7203, %7199 ], [ %7223, %7246 ]
  %7259 = phi float [ %7247, %7250 ], [ %7217, %7206 ], [ %7202, %7199 ], [ %7247, %7246 ]
  %7260 = phi float [ %7236, %7250 ], [ %7216, %7206 ], [ %7201, %7199 ], [ %7236, %7246 ]
  %7261 = phi float [ %7252, %7250 ], [ %7208, %7206 ], [ 1.000000e+00, %7199 ], [ 1.000000e+00, %7246 ]
  %7262 = phi float [ %7248, %7250 ], [ %7208, %7206 ], [ 1.000000e+00, %7199 ], [ %7248, %7246 ]
  %7263 = phi float [ %7237, %7250 ], [ %7208, %7206 ], [ 1.000000e+00, %7199 ], [ %7237, %7246 ]
  %7264 = fmul fast float %7263, %7175
  %7265 = fmul fast float %7262, %7186
  %7266 = fmul fast float %7261, %7197
  %7267 = fadd fast float %7264, %7260
  %7268 = fadd fast float %7265, %7259
  %7269 = fadd fast float %7266, %7258
  %7270 = fmul fast float %7263, %7174
  %7271 = fmul fast float %7262, %7185
  %7272 = fmul fast float %7261, %7196
  br label %7273

; <label>:7273                                    ; preds = %7257, %7068
  %7274 = phi float [ %7272, %7257 ], [ %7074, %7068 ]
  %7275 = phi float [ %7271, %7257 ], [ %7073, %7068 ]
  %7276 = phi float [ %7270, %7257 ], [ %7072, %7068 ]
  %7277 = phi float [ %7269, %7257 ], [ %7071, %7068 ]
  %7278 = phi float [ %7268, %7257 ], [ %7070, %7068 ]
  %7279 = phi float [ %7267, %7257 ], [ %7069, %7068 ]
  %7280 = fmul fast float %7279, %6223
  %7281 = fmul fast float %7278, %6223
  %7282 = fmul fast float %7277, %6223
  %7283 = fmul fast float %7276, %6516
  %7284 = call float @dx.op.dot3.f32(i32 55, float %7276, float %7275, float %7274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7285 = call float @dx.op.dot3.f32(i32 55, float %7280, float %7281, float %7282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7286 = select i1 %238, float %7284, float %7276
  %7287 = select i1 %238, float %7284, float %7275
  %7288 = select i1 %238, float 1.000000e+00, float %7274
  %7289 = select i1 %238, float %7285, float %7280
  %7290 = select i1 %238, float 0.000000e+00, float %7281
  %7291 = select i1 %238, float 0.000000e+00, float %7282
  %7292 = fmul fast float %7286, %6510
  %7293 = fmul fast float %7287, %6511
  %7294 = fmul fast float %7288, %6512
  %7295 = fadd fast float %7292, %7289
  %7296 = fadd fast float %7293, %7290
  %7297 = fadd fast float %7291, %7294
  %7298 = fmul fast float %7286, %6513
  %7299 = fmul fast float %7287, %6514
  %7300 = fmul fast float %7288, %6515
  %7301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.i32 %7301, 0
  %7303 = icmp eq i32 %7302, 0
  br i1 %7303, label %7671, label %7304, !dx.controlflow.hints !191

; <label>:7304                                    ; preds = %7273
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 2
  %7307 = extractvalue %dx.types.CBufRet.f32 %7305, 3
  %7308 = fmul fast float %7306, %100
  %7309 = fmul fast float %7307, %101
  %7310 = fmul fast float %7308, 2.000000e+00
  %7311 = fmul fast float %7309, 2.000000e+00
  %7312 = fsub fast float 1.000000e+00, %7310
  %7313 = fsub fast float 1.000000e+00, %7311
  %7314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7315 = extractvalue %dx.types.CBufRet.f32 %7314, 0
  %7316 = extractvalue %dx.types.CBufRet.f32 %7314, 1
  %7317 = extractvalue %dx.types.CBufRet.f32 %7314, 2
  %7318 = fmul fast float %7312, %7315
  %7319 = fmul fast float %7312, %7316
  %7320 = fmul fast float %7312, %7317
  %7321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7321, 0
  %7323 = extractvalue %dx.types.CBufRet.f32 %7321, 1
  %7324 = extractvalue %dx.types.CBufRet.f32 %7321, 2
  %7325 = fmul fast float %7313, %7322
  %7326 = fmul fast float %7313, %7323
  %7327 = fmul fast float %7313, %7324
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.CBufRet.f32 %7328, 1
  %7331 = extractvalue %dx.types.CBufRet.f32 %7328, 2
  %7332 = fadd fast float %7325, %7329
  %7333 = fadd fast float %7332, %7318
  %7334 = fadd fast float %7326, %7330
  %7335 = fadd fast float %7334, %7319
  %7336 = fadd fast float %7327, %7331
  %7337 = fadd fast float %7336, %7320
  %7338 = fmul fast float %7333, %6509
  %7339 = fmul fast float %7335, %6509
  %7340 = fmul fast float %7337, %6509
  %7341 = fmul fast float %7338, %7338
  %7342 = fmul fast float %7339, %7339
  %7343 = fadd fast float %7341, %7342
  %7344 = fmul fast float %7340, %7340
  %7345 = fadd fast float %7343, %7344
  %7346 = call float @dx.op.unary.f32(i32 24, float %7345)  ; Sqrt(value)
  %7347 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %7348 = fsub fast float %7346, %7347
  %7349 = extractvalue %dx.types.CBufRet.f32 %6234, 2
  %7350 = fmul fast float %7348, %7349
  %7351 = call float @dx.op.unary.f32(i32 7, float %7350)  ; Saturate(value)
  %7352 = fadd fast float %7351, -5.000000e-01
  %7353 = fmul fast float %7352, 2.000000e+00
  %7354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7355 = extractvalue %dx.types.CBufRet.f32 %7354, 2
  %7356 = call float @dx.op.binary.f32(i32 36, float %7355, float %7353)  ; FMin(a,b)
  %7357 = fsub fast float -0.000000e+00, %7355
  %7358 = fcmp fast ogt float %7356, %7357
  br i1 %7358, label %7359, label %7671, !dx.controlflow.hints !192

; <label>:7359                                    ; preds = %7304
  %7360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7361 = extractvalue %dx.types.CBufRet.f32 %7360, 3
  %7362 = fcmp fast ogt float %7361, 0.000000e+00
  br i1 %7362, label %7363, label %7438, !dx.controlflow.hints !193

; <label>:7363                                    ; preds = %7359
  %7364 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7365 = extractvalue %dx.types.Dimensions %7364, 0
  %7366 = sitofp i32 %7365 to float
  %7367 = extractvalue %dx.types.Dimensions %7364, 1
  %7368 = sitofp i32 %7367 to float
  %7369 = fmul fast float %7308, %7366
  %7370 = fmul fast float %7309, %7368
  %7371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7372 = extractvalue %dx.types.CBufRet.f32 %7371, 1
  %7373 = fsub fast float -0.000000e+00, %7372
  %7374 = fptoui float %7373 to i32
  %7375 = fptoui float %7369 to i32
  %7376 = fptoui float %7370 to i32
  %7377 = and i32 %7374, 31
  %7378 = lshr i32 %7375, %7377
  %7379 = lshr i32 %7376, %7377
  %7380 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7374, i32 %7378, i32 %7379, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7381 = extractvalue %dx.types.ResRet.f32 %7380, 0
  %7382 = fcmp fast olt float %7381, -1.000000e+00
  %7383 = fcmp fast ogt float %7381, -1.000000e+00
  %7384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7385 = extractvalue %dx.types.CBufRet.f32 %7384, 1
  %7386 = select i1 %7383, float %7385, float 1.000000e+00
  %7387 = fadd fast float %7381, 1.000000e+00
  %7388 = fmul fast float %7386, %7387
  %7389 = call float @dx.op.unary.f32(i32 6, float %7388)  ; FAbs(value)
  %7390 = extractvalue %dx.types.CBufRet.f32 %7384, 3
  %7391 = fcmp fast oge float %7389, %7390
  %7392 = select i1 %7391, float 0x4197782600000000, float %7389
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 0
  %7395 = extractvalue %dx.types.CBufRet.f32 %7393, 1
  %7396 = extractvalue %dx.types.CBufRet.f32 %7393, 2
  %7397 = select i1 %7382, float %7394, float %7315
  %7398 = select i1 %7382, float %7395, float %7316
  %7399 = select i1 %7382, float %7396, float %7317
  %7400 = fmul fast float %7397, %7312
  %7401 = fmul fast float %7398, %7312
  %7402 = fmul fast float %7399, %7312
  %7403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7404 = extractvalue %dx.types.CBufRet.f32 %7403, 0
  %7405 = extractvalue %dx.types.CBufRet.f32 %7403, 1
  %7406 = extractvalue %dx.types.CBufRet.f32 %7403, 2
  %7407 = select i1 %7382, float %7404, float %7322
  %7408 = select i1 %7382, float %7405, float %7323
  %7409 = select i1 %7382, float %7406, float %7324
  %7410 = fmul fast float %7407, %7313
  %7411 = fmul fast float %7408, %7313
  %7412 = fmul fast float %7409, %7313
  %7413 = fadd fast float %7410, %7400
  %7414 = fadd fast float %7411, %7401
  %7415 = fadd fast float %7412, %7402
  %7416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7417 = extractvalue %dx.types.CBufRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.CBufRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.CBufRet.f32 %7416, 2
  %7420 = select i1 %7382, float %7417, float %7329
  %7421 = select i1 %7382, float %7418, float %7330
  %7422 = select i1 %7382, float %7419, float %7331
  %7423 = fadd fast float %7413, %7420
  %7424 = fadd fast float %7414, %7421
  %7425 = fadd fast float %7415, %7422
  %7426 = fmul fast float %7423, %7392
  %7427 = fmul fast float %7424, %7392
  %7428 = fmul fast float %7425, %7392
  %7429 = fmul fast float %7426, %7426
  %7430 = fmul fast float %7427, %7427
  %7431 = fadd fast float %7429, %7430
  %7432 = fmul fast float %7428, %7428
  %7433 = fadd fast float %7431, %7432
  %7434 = call float @dx.op.unary.f32(i32 24, float %7433)  ; Sqrt(value)
  %7435 = fsub fast float %7434, %7347
  %7436 = fmul fast float %7435, %7349
  %7437 = call float @dx.op.unary.f32(i32 7, float %7436)  ; Saturate(value)
  br label %7438

; <label>:7438                                    ; preds = %7363, %7359
  %7439 = phi float [ %7437, %7363 ], [ 1.000000e+00, %7359 ]
  %7440 = fmul fast float %7356, 5.000000e-01
  %7441 = fadd fast float %7440, 5.000000e-01
  %7442 = call float @dx.op.unary.f32(i32 22, float %7441)  ; Frc(value)
  %7443 = call float @dx.op.unary.f32(i32 27, float %7442)  ; Round_ni(value)
  %7444 = call float @dx.op.unary.f32(i32 22, float %7442)  ; Frc(value)
  %7445 = fmul fast float %7444, 2.000000e+00
  %7446 = fadd fast float %7445, -1.000000e+00
  %7447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7308, float %7309, float %7443, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7448 = extractvalue %dx.types.ResRet.f32 %7447, 0
  %7449 = extractvalue %dx.types.ResRet.f32 %7447, 1
  %7450 = extractvalue %dx.types.ResRet.f32 %7447, 2
  %7451 = extractvalue %dx.types.ResRet.f32 %7447, 3
  %7452 = fadd fast float %7448, -5.000000e-01
  %7453 = fadd fast float %7450, -5.000000e-01
  %7454 = fmul fast float %7452, 0xBFD5555560000000
  %7455 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7453, float %7454)  ; FMad(a,b,c)
  %7456 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7449, float 0.000000e+00)  ; FMad(a,b,c)
  %7457 = fadd fast float %7456, %7451
  %7458 = fmul fast float %7452, -7.500000e-01
  %7459 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7453, float %7458)  ; FMad(a,b,c)
  %7460 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7449, float 0.000000e+00)  ; FMad(a,b,c)
  %7461 = fadd fast float %7460, %7451
  %7462 = call float @dx.op.binary.f32(i32 35, float %7455, float -1.000000e+00)  ; FMax(a,b)
  %7463 = call float @dx.op.binary.f32(i32 35, float %7457, float -1.000000e+00)  ; FMax(a,b)
  %7464 = call float @dx.op.binary.f32(i32 35, float %7459, float -1.000000e+00)  ; FMax(a,b)
  %7465 = call float @dx.op.binary.f32(i32 35, float %7461, float -1.000000e+00)  ; FMax(a,b)
  %7466 = call float @dx.op.binary.f32(i32 36, float %7462, float 1.000000e+00)  ; FMin(a,b)
  %7467 = call float @dx.op.binary.f32(i32 36, float %7463, float 1.000000e+00)  ; FMin(a,b)
  %7468 = call float @dx.op.binary.f32(i32 36, float %7464, float 1.000000e+00)  ; FMin(a,b)
  %7469 = call float @dx.op.binary.f32(i32 36, float %7465, float 1.000000e+00)  ; FMin(a,b)
  %7470 = fcmp fast olt float %7466, 0x3FEFFF8020000000
  br i1 %7470, label %7471, label %7586, !dx.controlflow.hints !194

; <label>:7471                                    ; preds = %7438
  %7472 = extractvalue %dx.types.CBufRet.f32 %7354, 3
  %7473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7474 = extractvalue %dx.types.CBufRet.f32 %7473, 0
  %7475 = extractvalue %dx.types.CBufRet.f32 %7473, 1
  %7476 = extractvalue %dx.types.CBufRet.f32 %7473, 2
  %7477 = extractvalue %dx.types.CBufRet.f32 %7473, 3
  %7478 = fsub fast float %7474, %7466
  %7479 = fsub fast float %7475, %7467
  %7480 = fsub fast float %7476, %7468
  %7481 = fsub fast float %7477, %7469
  %7482 = fmul fast float %7478, %7472
  %7483 = fmul fast float %7479, %7472
  %7484 = fmul fast float %7480, %7472
  %7485 = fmul fast float %7481, %7472
  %7486 = fadd fast float %7482, %7466
  %7487 = fadd fast float %7483, %7467
  %7488 = fsub fast float -0.000000e+00, %7487
  %7489 = fadd fast float %7484, %7468
  %7490 = fadd fast float %7485, %7469
  %7491 = fmul fast float %7486, %7486
  %7492 = fsub fast float %7487, %7491
  %7493 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7492)  ; FMax(a,b)
  %7494 = fdiv fast float 1.000000e+00, %7493
  %7495 = fmul fast float %7487, %7486
  %7496 = fsub fast float %7489, %7495
  %7497 = fsub fast float %7446, %7486
  %7498 = fmul fast float %7446, %7446
  %7499 = fsub fast float %7498, %7487
  %7500 = fmul fast float %7497, %7494
  %7501 = fmul fast float %7500, %7496
  %7502 = fsub fast float %7499, %7501
  %7503 = fmul fast float %7487, %7487
  %7504 = fsub fast float %7490, %7503
  %7505 = fmul fast float %7496, %7496
  %7506 = fmul fast float %7505, %7494
  %7507 = fsub fast float %7504, %7506
  %7508 = fdiv fast float %7502, %7507
  %7509 = fmul fast float %7496, %7508
  %7510 = fsub fast float %7497, %7509
  %7511 = fmul fast float %7510, %7494
  %7512 = fmul fast float %7511, %7486
  %7513 = fsub fast float 1.000000e+00, %7512
  %7514 = fmul fast float %7487, %7508
  %7515 = fsub fast float %7513, %7514
  %7516 = fmul fast float %7511, %7511
  %7517 = fmul fast float %7508, 4.000000e+00
  %7518 = fmul fast float %7517, %7515
  %7519 = fsub fast float %7516, %7518
  %7520 = call float @dx.op.unary.f32(i32 24, float %7519)  ; Sqrt(value)
  %7521 = fcmp fast oge float %7511, 0.000000e+00
  %7522 = fsub fast float -0.000000e+00, %7520
  %7523 = select i1 %7521, float %7522, float %7520
  %7524 = fsub fast float %7523, %7511
  %7525 = fdiv fast float %7524, %7508
  %7526 = fdiv fast float %7515, %7524
  %7527 = fmul fast float %7525, 5.000000e-01
  %7528 = fmul fast float %7526, 2.000000e+00
  %7529 = select i1 %7521, float %7527, float %7528
  %7530 = select i1 %7521, float %7528, float %7527
  %7531 = call float @dx.op.binary.f32(i32 35, float %7529, float %7530)  ; FMax(a,b)
  %7532 = call float @dx.op.binary.f32(i32 36, float %7529, float %7530)  ; FMin(a,b)
  %7533 = fcmp fast ogt float %7446, %7532
  br i1 %7533, label %7534, label %7544

; <label>:7534                                    ; preds = %7471
  %7535 = fsub fast float %7446, %7532
  %7536 = fsub fast float %7531, %7532
  %7537 = fmul fast float %7535, %7536
  %7538 = fmul fast float %7531, %7446
  %7539 = fadd fast float %7531, %7446
  %7540 = fmul fast float %7539, %7486
  %7541 = fadd fast float %7538, %7487
  %7542 = fsub fast float %7541, %7540
  %7543 = fdiv fast float %7542, %7537
  br label %7544

; <label>:7544                                    ; preds = %7534, %7471
  %7545 = phi float [ %7543, %7534 ], [ 0.000000e+00, %7471 ]
  %7546 = fcmp fast ogt float %7446, %7531
  %7547 = fsub fast float %7446, %7531
  br i1 %7546, label %7548, label %7558

; <label>:7548                                    ; preds = %7544
  %7549 = fsub fast float %7531, %7532
  %7550 = fmul fast float %7549, %7547
  %7551 = fmul fast float %7532, %7446
  %7552 = fadd fast float %7532, %7446
  %7553 = fmul fast float %7552, %7486
  %7554 = fsub fast float %7488, %7551
  %7555 = fadd fast float %7554, %7553
  %7556 = fdiv fast float %7555, %7550
  %7557 = fadd fast float %7556, %7545
  br label %7558

; <label>:7558                                    ; preds = %7548, %7544
  %7559 = phi float [ %7557, %7548 ], [ %7545, %7544 ]
  %7560 = fsub fast float %7446, %7532
  %7561 = fmul fast float %7560, %7547
  %7562 = fmul fast float %7532, %7531
  %7563 = fadd fast float %7532, %7531
  %7564 = fmul fast float %7563, %7486
  %7565 = fadd fast float %7562, %7487
  %7566 = fsub fast float %7565, %7564
  %7567 = fdiv fast float %7566, %7561
  %7568 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  %7569 = fcmp fast oeq float %6235, 0.000000e+00
  %7570 = extractvalue %dx.types.CBufRet.f32 %7354, 0
  %7571 = fcmp fast oeq float %7570, 0.000000e+00
  %7572 = or i1 %7569, %7571
  %7573 = fmul fast float %7570, 2.000000e+00
  %7574 = fadd fast float %7355, %7356
  %7575 = fdiv fast float %7574, %7573
  %7576 = call float @dx.op.unary.f32(i32 7, float %7575)  ; Saturate(value)
  %7577 = fmul fast float %7576, 2.000000e+00
  %7578 = fsub fast float 3.000000e+00, %7577
  %7579 = fmul fast float %7576, %7576
  %7580 = fmul fast float %7579, %7578
  %7581 = select i1 %7572, float 1.000000e+00, float %7580
  %7582 = fmul fast float %7567, %6235
  %7583 = fadd fast float %7568, %7582
  %7584 = call float @dx.op.unary.f32(i32 7, float %7583)  ; Saturate(value)
  %7585 = fmul fast float %7581, %7584
  br label %7586

; <label>:7586                                    ; preds = %7558, %7438
  %7587 = phi float [ %7585, %7558 ], [ 0.000000e+00, %7438 ]
  %7588 = fsub fast float 1.000000e+00, %7587
  %7589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7308, float %7309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7590 = extractvalue %dx.types.ResRet.f32 %7589, 0
  %7591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.i32 %7591, 2
  %7593 = icmp eq i32 %7592, 0
  br i1 %7593, label %7599, label %7594

; <label>:7594                                    ; preds = %7586
  %7595 = call float @dx.op.unary.f32(i32 7, float %7587)  ; Saturate(value)
  %7596 = fadd fast float %7590, -1.000000e+00
  %7597 = fmul fast float %7595, %7596
  %7598 = fadd fast float %7597, 1.000000e+00
  br label %7599

; <label>:7599                                    ; preds = %7594, %7586
  %7600 = phi float [ %7598, %7594 ], [ %7588, %7586 ]
  br i1 %7362, label %7601, label %7619

; <label>:7601                                    ; preds = %7599
  %7602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.f32 %7602, 1
  %7604 = fsub fast float %7439, %7603
  %7605 = call float @dx.op.unary.f32(i32 7, float %7604)  ; Saturate(value)
  %7606 = fsub fast float %7439, %7361
  %7607 = call float @dx.op.unary.f32(i32 7, float %7606)  ; Saturate(value)
  %7608 = fsub fast float %7605, %7607
  %7609 = fsub fast float %7441, %7607
  %7610 = fdiv fast float %7609, %7608
  %7611 = call float @dx.op.unary.f32(i32 7, float %7610)  ; Saturate(value)
  %7612 = fmul fast float %7611, 2.000000e+00
  %7613 = fsub fast float 3.000000e+00, %7612
  %7614 = fsub fast float %7590, %7600
  %7615 = fmul fast float %7611, %7611
  %7616 = fmul fast float %7615, %7614
  %7617 = fmul fast float %7616, %7613
  %7618 = fadd fast float %7617, %7600
  br label %7619

; <label>:7619                                    ; preds = %7601, %7599
  %7620 = phi float [ %7618, %7601 ], [ %7600, %7599 ]
  %7621 = call float @dx.op.binary.f32(i32 35, float %7590, float %7620)  ; FMax(a,b)
  %7622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.i32 %7622, 2
  %7624 = and i32 %7623, 1
  %7625 = icmp eq i32 %7624, 0
  %7626 = fcmp fast une float %7621, 1.000000e+00
  %7627 = and i1 %7626, %7625
  br i1 %7627, label %7628, label %7647

; <label>:7628                                    ; preds = %7619
  %7629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7308, float %7309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 0
  %7631 = extractvalue %dx.types.ResRet.f32 %7629, 1
  %7632 = extractvalue %dx.types.ResRet.f32 %7629, 2
  %7633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7634 = extractvalue %dx.types.CBufRet.f32 %7633, 1
  %7635 = fmul fast float %7634, %7630
  %7636 = fmul fast float %7634, %7631
  %7637 = fmul fast float %7634, %7632
  %7638 = fcmp fast ogt float %7590, 0x3FEFFF2E40000000
  %7639 = fsub fast float 1.000000e+00, %7621
  %7640 = fsub fast float 1.000000e+00, %7590
  %7641 = fdiv fast float %7639, %7640
  %7642 = call float @dx.op.unary.f32(i32 7, float %7641)  ; Saturate(value)
  %7643 = select i1 %7638, float 0.000000e+00, float %7642
  %7644 = fmul fast float %7635, %7643
  %7645 = fmul fast float %7636, %7643
  %7646 = fmul fast float %7637, %7643
  br label %7647

; <label>:7647                                    ; preds = %7628, %7619
  %7648 = phi float [ 0.000000e+00, %7619 ], [ %7644, %7628 ]
  %7649 = phi float [ 0.000000e+00, %7619 ], [ %7645, %7628 ]
  %7650 = phi float [ 0.000000e+00, %7619 ], [ %7646, %7628 ]
  %7651 = fmul fast float %7648, %6223
  %7652 = fmul fast float %7649, %6223
  %7653 = fmul fast float %7650, %6223
  %7654 = fmul fast float %7621, %7283
  %7655 = call float @dx.op.dot3.f32(i32 55, float %7621, float %7621, float %7621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7656 = call float @dx.op.dot3.f32(i32 55, float %7651, float %7652, float %7653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7657 = select i1 %238, float %7655, float %7621
  %7658 = select i1 %238, float 1.000000e+00, float %7621
  %7659 = select i1 %238, float %7656, float %7651
  %7660 = select i1 %238, float 0.000000e+00, float %7652
  %7661 = select i1 %238, float 0.000000e+00, float %7653
  %7662 = fmul fast float %7657, %7295
  %7663 = fmul fast float %7657, %7296
  %7664 = fmul fast float %7658, %7297
  %7665 = fadd fast float %7662, %7659
  %7666 = fadd fast float %7663, %7660
  %7667 = fadd fast float %7661, %7664
  %7668 = fmul fast float %7657, %7298
  %7669 = fmul fast float %7657, %7299
  %7670 = fmul fast float %7658, %7300
  br label %7671

; <label>:7671                                    ; preds = %7647, %7304, %7273, %6505
  %7672 = phi float [ %6510, %6505 ], [ %7295, %7273 ], [ %7665, %7647 ], [ %7295, %7304 ]
  %7673 = phi float [ %6511, %6505 ], [ %7296, %7273 ], [ %7666, %7647 ], [ %7296, %7304 ]
  %7674 = phi float [ %6512, %6505 ], [ %7297, %7273 ], [ %7667, %7647 ], [ %7297, %7304 ]
  %7675 = phi float [ %6513, %6505 ], [ %7298, %7273 ], [ %7668, %7647 ], [ %7298, %7304 ]
  %7676 = phi float [ %6514, %6505 ], [ %7299, %7273 ], [ %7669, %7647 ], [ %7299, %7304 ]
  %7677 = phi float [ %6515, %6505 ], [ %7300, %7273 ], [ %7670, %7647 ], [ %7300, %7304 ]
  %7678 = phi float [ %6516, %6505 ], [ %7283, %7273 ], [ %7654, %7647 ], [ %7283, %7304 ]
  %7679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7680 = extractvalue %dx.types.CBufRet.f32 %7679, 2
  %7681 = extractvalue %dx.types.CBufRet.f32 %7679, 3
  %7682 = fmul fast float %7680, %100
  %7683 = fmul fast float %7681, %101
  %7684 = call float @dx.op.unary.f32(i32 7, float %7682)  ; Saturate(value)
  %7685 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7686 = select i1 %6245, i32 2, i32 0
  %7687 = or i32 %7686, 1
  %7688 = uitofp i32 %7687 to float
  %7689 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7684, float %7685, float %7688, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7690 = extractvalue %dx.types.ResRet.f32 %7689, 0
  %7691 = extractvalue %dx.types.ResRet.f32 %7689, 1
  %7692 = extractvalue %dx.types.ResRet.f32 %7689, 2
  %7693 = extractvalue %dx.types.ResRet.f32 %7689, 3
  %7694 = add nuw nsw i32 %7686, 2
  %7695 = uitofp i32 %7694 to float
  %7696 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7684, float %7685, float %7695, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7697 = extractvalue %dx.types.ResRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.ResRet.f32 %7696, 1
  %7699 = extractvalue %dx.types.ResRet.f32 %7696, 2
  %7700 = extractvalue %dx.types.ResRet.f32 %7696, 3
  %7701 = call float @dx.op.binary.f32(i32 35, float %7691, float %7692)  ; FMax(a,b)
  %7702 = call float @dx.op.binary.f32(i32 35, float %7690, float %7701)  ; FMax(a,b)
  %7703 = call float @dx.op.binary.f32(i32 35, float %7702, float %7693)  ; FMax(a,b)
  %7704 = call float @dx.op.binary.f32(i32 36, float %7698, float %7699)  ; FMin(a,b)
  %7705 = call float @dx.op.binary.f32(i32 36, float %7697, float %7704)  ; FMin(a,b)
  %7706 = call float @dx.op.binary.f32(i32 36, float %7705, float %7700)  ; FMin(a,b)
  %7707 = fmul fast float %7703, 2.550000e+02
  %7708 = fadd fast float %7707, 0x3F70101020000000
  %7709 = fptoui float %7708 to i32
  %7710 = fmul fast float %7706, 2.550000e+02
  %7711 = fadd fast float %7710, 0x3F70101020000000
  %7712 = fptoui float %7711 to i32
  %7713 = icmp ult i32 %7709, %7712
  br i1 %7713, label %7714, label %7883

; <label>:7714                                    ; preds = %7671
  %7715 = fcmp fast ogt float %87, 9.843750e-01
  %7716 = fadd fast float %6509, -4.000000e+00
  %7717 = select i1 %7715, float -4.000000e+00, float %7716
  %7718 = call float @dx.op.binary.f32(i32 35, float %7717, float 0.000000e+00)  ; FMax(a,b)
  %7719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7720 = extractvalue %dx.types.CBufRet.f32 %7719, 0
  %7721 = fadd fast float %7720, %7718
  %7722 = extractvalue %dx.types.CBufRet.f32 %7719, 2
  %7723 = fmul fast float %7721, %7722
  %7724 = call float @dx.op.unary.f32(i32 23, float %7723)  ; Log(value)
  %7725 = extractvalue %dx.types.CBufRet.f32 %7719, 3
  %7726 = fmul fast float %7725, %7724
  %7727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7728 = extractvalue %dx.types.CBufRet.f32 %7727, 2
  %7729 = fmul fast float %7726, %7728
  %7730 = call float @dx.op.unary.f32(i32 7, float %7729)  ; Saturate(value)
  %7731 = uitofp i32 %7709 to float
  %7732 = uitofp i32 %7712 to float
  %7733 = fadd fast float %7731, 5.000000e-01
  %7734 = fadd fast float %7732, 5.000000e-01
  %7735 = fmul fast float %7728, %7733
  %7736 = fmul fast float %7728, %7734
  %7737 = fadd fast float %7735, 0x3F0FFB4800000000
  %7738 = fadd fast float %7736, 0xBF0FFB4800000000
  %7739 = call float @dx.op.binary.f32(i32 35, float %7730, float %7737)  ; FMax(a,b)
  %7740 = call float @dx.op.binary.f32(i32 36, float %7739, float %7738)  ; FMin(a,b)
  %7741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7742 = extractvalue %dx.types.CBufRet.f32 %7741, 1
  %7743 = extractvalue %dx.types.CBufRet.f32 %7741, 2
  %7744 = extractvalue %dx.types.CBufRet.f32 %7741, 0
  %7745 = select i1 %6245, float %7744, float 0.000000e+00
  %7746 = fmul fast float %7742, %7740
  %7747 = fadd fast float %7745, %7746
  %7748 = fadd fast float %7745, %7743
  %7749 = fsub fast float %7742, %7743
  %7750 = fadd fast float %7749, %7745
  %7751 = call float @dx.op.binary.f32(i32 35, float %7747, float %7748)  ; FMax(a,b)
  %7752 = call float @dx.op.binary.f32(i32 36, float %7751, float %7750)  ; FMin(a,b)
  %7753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7684, float %7685, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7754 = extractvalue %dx.types.ResRet.f32 %7753, 0
  %7755 = extractvalue %dx.types.ResRet.f32 %7753, 1
  %7756 = extractvalue %dx.types.ResRet.f32 %7753, 2
  %7757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.i32 %7757, 0
  %7759 = extractvalue %dx.types.CBufRet.i32 %7757, 1
  %7760 = uitofp i32 %7758 to float
  %7761 = uitofp i32 %7759 to float
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.CBufRet.f32 %7762, 1
  %7765 = fmul fast float %7760, %7684
  %7766 = fmul fast float %7761, %7685
  %7767 = fadd fast float %7765, -5.000000e-01
  %7768 = fadd fast float %7766, -5.000000e-01
  %7769 = call float @dx.op.unary.f32(i32 22, float %7767)  ; Frc(value)
  %7770 = call float @dx.op.unary.f32(i32 22, float %7768)  ; Frc(value)
  %7771 = fmul fast float %7769, %7769
  %7772 = fmul fast float %7771, %7769
  %7773 = fsub fast float 3.000000e+00, %7769
  %7774 = fmul fast float %7771, %7773
  %7775 = fmul fast float %7769, 3.000000e+00
  %7776 = fmul fast float %7772, 3.000000e+00
  %7777 = fmul fast float %7771, 6.000000e+00
  %7778 = fsub fast float %7776, %7777
  %7779 = fadd fast float %7778, 4.000000e+00
  %7780 = fmul fast float %7779, 0x3FC5555560000000
  %7781 = fmul fast float %7772, -3.000000e+00
  %7782 = fadd fast float %7771, %7769
  %7783 = fmul fast float %7782, 3.000000e+00
  %7784 = fadd fast float %7781, 1.000000e+00
  %7785 = fadd fast float %7784, %7783
  %7786 = fmul fast float %7772, 0x3FC5555560000000
  %7787 = fmul fast float %7770, %7770
  %7788 = fmul fast float %7787, %7770
  %7789 = fsub fast float 3.000000e+00, %7770
  %7790 = fmul fast float %7787, %7789
  %7791 = fmul fast float %7770, 3.000000e+00
  %7792 = fmul fast float %7788, 3.000000e+00
  %7793 = fmul fast float %7787, 6.000000e+00
  %7794 = fsub fast float %7792, %7793
  %7795 = fadd fast float %7794, 4.000000e+00
  %7796 = fmul fast float %7795, 0x3FC5555560000000
  %7797 = fmul fast float %7788, -3.000000e+00
  %7798 = fadd fast float %7787, %7770
  %7799 = fmul fast float %7798, 3.000000e+00
  %7800 = fadd fast float %7797, 1.000000e+00
  %7801 = fadd fast float %7800, %7799
  %7802 = fmul fast float %7788, 0x3FC5555560000000
  %7803 = fadd fast float %7769, 1.000000e+00
  %7804 = fsub fast float 1.000000e+00, %7775
  %7805 = fadd fast float %7804, %7774
  %7806 = fadd fast float %7805, %7779
  %7807 = fmul fast float %7806, 0x3FC5555560000000
  %7808 = fdiv fast float %7780, %7807
  %7809 = fsub fast float %7803, %7808
  %7810 = fsub fast float 1.000000e+00, %7769
  %7811 = fadd fast float %7785, %7772
  %7812 = fmul fast float %7811, 0x3FC5555560000000
  %7813 = fdiv fast float %7786, %7812
  %7814 = fadd fast float %7810, %7813
  %7815 = fadd fast float %7770, 1.000000e+00
  %7816 = fsub fast float 1.000000e+00, %7791
  %7817 = fadd fast float %7816, %7790
  %7818 = fadd fast float %7817, %7795
  %7819 = fmul fast float %7818, 0x3FC5555560000000
  %7820 = fdiv fast float %7796, %7819
  %7821 = fsub fast float %7815, %7820
  %7822 = fsub fast float 1.000000e+00, %7770
  %7823 = fadd fast float %7801, %7788
  %7824 = fmul fast float %7823, 0x3FC5555560000000
  %7825 = fdiv fast float %7802, %7824
  %7826 = fadd fast float %7825, %7822
  %7827 = fmul fast float %7809, %7763
  %7828 = fsub fast float %7684, %7827
  %7829 = fmul fast float %7814, %7763
  %7830 = fadd fast float %7829, %7684
  %7831 = fmul fast float %7826, %7764
  %7832 = fadd fast float %7831, %7685
  %7833 = fmul fast float %7821, %7764
  %7834 = fsub fast float %7685, %7833
  %7835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7828, float %7834, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7836 = extractvalue %dx.types.ResRet.f32 %7835, 0
  %7837 = extractvalue %dx.types.ResRet.f32 %7835, 1
  %7838 = extractvalue %dx.types.ResRet.f32 %7835, 2
  %7839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7830, float %7834, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7840 = extractvalue %dx.types.ResRet.f32 %7839, 0
  %7841 = extractvalue %dx.types.ResRet.f32 %7839, 1
  %7842 = extractvalue %dx.types.ResRet.f32 %7839, 2
  %7843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7828, float %7832, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7844 = extractvalue %dx.types.ResRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.ResRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.ResRet.f32 %7843, 2
  %7847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7830, float %7832, float %7752, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7848 = extractvalue %dx.types.ResRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.ResRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.ResRet.f32 %7847, 2
  %7851 = fsub fast float %7844, %7836
  %7852 = fsub fast float %7845, %7837
  %7853 = fsub fast float %7846, %7838
  %7854 = fmul fast float %7851, %7824
  %7855 = fmul fast float %7852, %7824
  %7856 = fmul fast float %7853, %7824
  %7857 = fadd fast float %7854, %7836
  %7858 = fadd fast float %7855, %7837
  %7859 = fadd fast float %7856, %7838
  %7860 = fsub fast float %7848, %7840
  %7861 = fsub fast float %7849, %7841
  %7862 = fsub fast float %7850, %7842
  %7863 = fmul fast float %7860, %7824
  %7864 = fmul fast float %7861, %7824
  %7865 = fmul fast float %7862, %7824
  %7866 = fsub fast float %7840, %7857
  %7867 = fadd fast float %7866, %7863
  %7868 = fsub fast float %7841, %7858
  %7869 = fadd fast float %7868, %7864
  %7870 = fsub fast float %7842, %7859
  %7871 = fadd fast float %7870, %7865
  %7872 = fmul fast float %7867, %7812
  %7873 = fmul fast float %7869, %7812
  %7874 = fmul fast float %7871, %7812
  %7875 = fadd fast float %7872, %7857
  %7876 = fadd fast float %7873, %7858
  %7877 = fadd fast float %7874, %7859
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7880 = fmul fast float %7875, %7879
  %7881 = fmul fast float %7876, %7879
  %7882 = fmul fast float %7877, %7879
  br label %7883

; <label>:7883                                    ; preds = %7714, %7671
  %7884 = phi float [ %7754, %7714 ], [ 1.000000e+00, %7671 ]
  %7885 = phi float [ %7755, %7714 ], [ 1.000000e+00, %7671 ]
  %7886 = phi float [ %7756, %7714 ], [ 1.000000e+00, %7671 ]
  %7887 = phi float [ %7880, %7714 ], [ 0.000000e+00, %7671 ]
  %7888 = phi float [ %7881, %7714 ], [ 0.000000e+00, %7671 ]
  %7889 = phi float [ %7882, %7714 ], [ 0.000000e+00, %7671 ]
  %7890 = fmul fast float %7887, %6223
  %7891 = fmul fast float %7888, %6223
  %7892 = fmul fast float %7889, %6223
  %7893 = fmul fast float %7884, %7678
  %7894 = call float @dx.op.dot3.f32(i32 55, float %7884, float %7885, float %7886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7895 = call float @dx.op.dot3.f32(i32 55, float %7890, float %7891, float %7892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7896 = select i1 %238, float %7894, float %7884
  %7897 = select i1 %238, float %7894, float %7885
  %7898 = select i1 %238, float 1.000000e+00, float %7886
  %7899 = select i1 %238, float %7895, float %7890
  %7900 = select i1 %238, float 0.000000e+00, float %7891
  %7901 = select i1 %238, float 0.000000e+00, float %7892
  %7902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7903 = extractvalue %dx.types.CBufRet.i32 %7902, 3
  %7904 = and i32 %7903, 3
  %7905 = icmp ne i32 %7904, 0
  %7906 = and i32 %7903, 4
  %7907 = icmp ne i32 %7906, 0
  %7908 = and i1 %7905, %7907
  %7909 = and i1 %238, %7908
  br i1 %7909, label %7910, label %7916

; <label>:7910                                    ; preds = %7883
  %7911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7912 = extractvalue %dx.types.CBufRet.f32 %7911, 1
  %7913 = fadd fast float %7893, -1.000000e+00
  %7914 = fmul fast float %7912, %7913
  %7915 = fadd fast float %7914, 1.000000e+00
  br label %7916

; <label>:7916                                    ; preds = %7910, %7883
  %7917 = phi float [ %7915, %7910 ], [ %7893, %7883 ]
  %7918 = fadd fast float %7675, %7672
  %7919 = fmul fast float %7896, %7918
  %7920 = fadd fast float %7919, %7899
  %7921 = fadd fast float %7676, %7673
  %7922 = fmul fast float %7897, %7921
  %7923 = fadd fast float %7922, %7900
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 0
  br i1 %238, label %7926, label %7950

; <label>:7926                                    ; preds = %7916
  %7927 = fadd fast float %7920, %7923
  %7928 = fmul fast float %7925, %7927
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 3
  %7931 = extractvalue %dx.types.CBufRet.f32 %6227, 1
  %7932 = fsub fast float %6232, %6226
  %7933 = fadd fast float %7932, %6233
  %7934 = fsub fast float %7933, %7931
  %7935 = extractvalue %dx.types.CBufRet.f32 %6227, 2
  %7936 = fmul fast float %7934, %7935
  %7937 = call float @dx.op.unary.f32(i32 7, float %7936)  ; Saturate(value)
  %7938 = fsub fast float %7937, %7930
  %7939 = fmul fast float %7938, %7917
  %7940 = fadd fast float %7939, %7930
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 0
  %7943 = fsub fast float %7940, %7942
  %7944 = fmul fast float %7943, 1.000000e+01
  %7945 = call float @dx.op.unary.f32(i32 7, float %7944)  ; Saturate(value)
  %7946 = fsub fast float %1482, %6223
  %7947 = fmul fast float %7945, %7946
  %7948 = fadd fast float %7947, %6223
  %7949 = fmul fast float %7948, %7940
  br label %7974

; <label>:7950                                    ; preds = %7916
  %7951 = fadd fast float %7677, %7674
  %7952 = fmul fast float %7898, %7951
  %7953 = fadd fast float %7952, %7901
  %7954 = fmul fast float %7925, %7920
  %7955 = fmul fast float %7925, %7923
  %7956 = fmul fast float %7925, %7953
  %7957 = call float @dx.op.binary.f32(i32 35, float %7955, float %7956)  ; FMax(a,b)
  %7958 = call float @dx.op.binary.f32(i32 35, float %7954, float %7957)  ; FMax(a,b)
  %7959 = call float @dx.op.binary.f32(i32 35, float %7958, float %6223)  ; FMax(a,b)
  %7960 = fcmp fast ugt float %7959, 0x3F10000000000000
  br i1 %7960, label %7962, label %7961

; <label>:7961                                    ; preds = %7950
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7962

; <label>:7962                                    ; preds = %7961, %7950
  %7963 = add i32 %71, 132
  %7964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %7963, i32 undef)  ; BufferLoad(srv,index,wot)
  %7965 = extractvalue %dx.types.ResRet.i32 %7964, 0
  %7966 = and i32 %7965, 32
  %7967 = icmp eq i32 %7966, 0
  br i1 %7967, label %7974, label %7968

; <label>:7968                                    ; preds = %7962
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 0
  %7971 = fmul fast float %7970, 0x3FE99999A0000000
  %7972 = fadd fast float %7970, %7954
  %7973 = fadd fast float %7971, %7956
  br label %7974

; <label>:7974                                    ; preds = %7968, %7962, %7926
  %7975 = phi float [ %7928, %7926 ], [ %7972, %7968 ], [ %7954, %7962 ]
  %7976 = phi float [ %7949, %7926 ], [ %7955, %7968 ], [ %7955, %7962 ]
  %7977 = phi float [ %7948, %7926 ], [ %7973, %7968 ], [ %7956, %7962 ]
  %7978 = phi float [ %7948, %7926 ], [ %6223, %7968 ], [ %6223, %7962 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7979 = call float @dx.op.binary.f32(i32 36, float %7975, float 3.225500e+04)  ; FMin(a,b)
  %7980 = call float @dx.op.binary.f32(i32 36, float %7976, float 3.225500e+04)  ; FMin(a,b)
  %7981 = call float @dx.op.binary.f32(i32 36, float %7977, float 3.225500e+04)  ; FMin(a,b)
  %7982 = call float @dx.op.binary.f32(i32 36, float %7978, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7979)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7980)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7981)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7982)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

