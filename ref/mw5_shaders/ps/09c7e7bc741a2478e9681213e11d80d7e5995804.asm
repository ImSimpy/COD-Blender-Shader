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
; SV_IsFrontFace           0     z         6    FFACE    uint     z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 23e49f15c1f521feafee613722967217
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
; Number of inputs: 27, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26 }
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
  %71 = icmp ne i32 %70, 0
  %72 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = alloca [12 x float], align 4
  %92 = alloca [12 x float], align 4
  %93 = alloca [4 x float], align 4
  %94 = alloca [4 x float], align 4
  %95 = alloca [4 x float], align 4
  %96 = alloca [3 x float], align 4
  %97 = alloca [3 x float], align 4
  %98 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %99 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = fmul fast float %101, %87
  %103 = fmul fast float %101, %88
  %104 = select i1 %71, float 1.000000e+00, float -1.000000e+00
  %105 = fmul fast float %78, %104
  %106 = fmul fast float %79, %104
  %107 = fmul fast float %80, %104
  %108 = fmul fast float %74, %104
  %109 = fmul fast float %75, %104
  %110 = fmul fast float %76, %104
  %111 = fmul fast float %79, %76
  %112 = fmul fast float %80, %75
  %113 = fsub fast float %111, %112
  %114 = fmul fast float %80, %74
  %115 = fmul fast float %78, %76
  %116 = fsub fast float %114, %115
  %117 = fmul fast float %78, %75
  %118 = fmul fast float %79, %74
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %77, %104
  %121 = fmul fast float %120, %113
  %122 = fmul fast float %120, %116
  %123 = fmul fast float %120, %119
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 3
  %127 = fmul fast float %125, 2.000000e+00
  %128 = fmul fast float %127, %102
  %129 = fmul fast float %126, 2.000000e+00
  %130 = fmul fast float %129, %103
  %131 = fsub fast float 1.000000e+00, %128
  %132 = fsub fast float 1.000000e+00, %130
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fmul fast float %131, %134
  %138 = fmul fast float %131, %135
  %139 = fmul fast float %131, %136
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = fmul fast float %132, %141
  %145 = fmul fast float %132, %142
  %146 = fmul fast float %132, %143
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fadd fast float %144, %148
  %152 = fadd fast float %151, %137
  %153 = fadd fast float %145, %149
  %154 = fadd fast float %153, %138
  %155 = fadd fast float %146, %150
  %156 = fadd fast float %155, %139
  %157 = fmul fast float %152, %90
  %158 = fmul fast float %154, %90
  %159 = fmul fast float %156, %90
  %160 = fadd fast float %83, 5.000000e-01
  %161 = fptoui float %160 to i32
  %162 = shl i32 %161, 3
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = or i32 %162, 4
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = and i32 %164, 8191
  %169 = lshr i32 %164, 13
  %170 = and i32 %169, 8191
  %171 = lshr i32 %164, 26
  %172 = and i32 %167, 65535
  %173 = lshr i32 %167, 16
  %174 = uitofp i32 %172 to float
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %177 = uitofp i32 %173 to float
  %178 = uitofp i32 %168 to float
  %179 = fmul fast float %176, %178
  %180 = uitofp i32 %170 to float
  %181 = fmul fast float %176, %180
  %182 = fmul fast float %176, %81
  %183 = fmul fast float %182, %174
  %184 = fmul fast float %176, %82
  %185 = fmul fast float %184, %177
  %186 = fadd fast float %183, %179
  %187 = fadd fast float %181, %185
  %188 = uitofp i32 %171 to float
  %189 = fmul fast float %102, 5.000000e-01
  %190 = fmul fast float %103, 5.000000e-01
  %191 = fptosi float %189 to i32
  %192 = fptosi float %190 to i32
  %193 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %191, i32 %192, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = lshr i32 %194, 18
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F4C00EBA0000000
  %198 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %199 = fadd fast float %198, -1.000000e+00
  %200 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %201 = extractvalue %dx.types.Dimensions %200, 0
  %202 = sitofp i32 %201 to float
  %203 = extractvalue %dx.types.Dimensions %200, 1
  %204 = sitofp i32 %203 to float
  %205 = fcmp fast oge float %189, %202
  %206 = fcmp fast oge float %190, %204
  %207 = or i1 %205, %206
  %208 = select i1 %207, float 0x4197782600000000, float %199
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = extractvalue %dx.types.CBufRet.f32 %209, 3
  %212 = fmul fast float %210, %102
  %213 = fmul fast float %211, %103
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 114688
  %217 = icmp ne i32 %216, 0
  %218 = select i1 %217, float %212, float 0.000000e+00
  %219 = select i1 %217, float %213, float 0.000000e+00
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %65, float %218, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = fmul fast float %221, 2.550000e+02
  %223 = fptoui float %222 to i32
  %224 = select i1 %217, i32 %223, i32 0
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.i32 %226, 3
  %228 = and i32 %227, 3
  %229 = icmp ne i32 %228, 0
  %230 = and i32 %227, 4
  %231 = icmp ne i32 %230, 0
  %232 = and i1 %229, %231
  br i1 %232, label %233, label %244

; <label>:233                                     ; preds = %0
  %234 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %235 = fmul fast float %234, %103
  %236 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %237 = fmul fast float %236, %102
  %238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %64, float %237, float %235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = fsub fast float 1.000000e+00, %239
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %243 = fcmp fast olt float %240, %242
  br label %247

; <label>:244                                     ; preds = %0
  %245 = icmp eq i32 %230, 0
  %246 = and i1 %229, %245
  br label %247

; <label>:247                                     ; preds = %244, %233
  %248 = phi i1 [ %243, %233 ], [ %246, %244 ]
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %251 = fmul fast float %250, 0x3FE3C6EF40000000
  %252 = frem fast float %102, 2.560000e+02
  %253 = frem fast float %103, 2.560000e+02
  %254 = fptoui float %252 to i32
  %255 = fptoui float %253 to i32
  %256 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %254, i32 %255, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = fadd fast float %257, %251
  %259 = call float @dx.op.unary.f32(i32 22, float %258)  ; Frc(value)
  %260 = add i32 %73, 60
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = shl i32 %262, 4
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %262, 7
  %267 = and i32 %266, 32752
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %262, 22
  %270 = shl nuw nsw i32 %269, 5
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = add i32 %73, 72
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = lshr i32 %274, 8
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %274, 16
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = add i32 %73, 36
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %73, 96
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = fmul fast float %297, 0x3F50624DE0000000
  %301 = fmul fast float %299, 0x3F50624DE0000000
  %302 = add i32 %73, 108
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 2
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %316, label %307

; <label>:307                                     ; preds = %247
  %308 = add i32 %73, 228
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = add i32 %310, 0
  %312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %312, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 3
  %315 = fmul fast float %314, %86
  br label %316

; <label>:316                                     ; preds = %307, %247
  %317 = phi float [ %86, %247 ], [ %315, %307 ]
  %318 = add i32 %73, 24
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = add i32 %73, 28
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = or i32 %323, %320
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %967, label %326

; <label>:326                                     ; preds = %316
  %327 = add i32 %73, 92
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = lshr i32 %329, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = fmul fast float %331, 0x3F50624DE0000000
  %333 = add i32 %73, 40
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = lshr i32 %335, 16
  %337 = and i32 %336, 255
  %338 = lshr i32 %335, 24
  %339 = add i32 %73, 100
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %73, 32
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = lshr i32 %348, 22
  %350 = shl nuw nsw i32 %349, 5
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = shl i32 %348, 4
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %348, 7
  %356 = and i32 %355, 32752
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 3
  %360 = fmul fast float %359, 1.000000e+03
  %361 = fmul fast float %300, %360
  %362 = call float @dx.op.unary.f32(i32 22, float %361)  ; Frc(value)
  %363 = fadd fast float %362, %290
  %364 = fmul fast float %301, %360
  %365 = call float @dx.op.unary.f32(i32 22, float %364)  ; Frc(value)
  %366 = fadd fast float %365, %292
  %367 = fmul fast float %332, %360
  %368 = call float @dx.op.unary.f32(i32 22, float %367)  ; Frc(value)
  %369 = fmul fast float %368, 0x401921FB60000000
  %370 = fadd fast float %369, %351
  %371 = call float @dx.op.unary.f32(i32 13, float %370)  ; Sin(value)
  %372 = call float @dx.op.unary.f32(i32 12, float %370)  ; Cos(value)
  %373 = fsub fast float -0.000000e+00, %371
  %374 = fadd fast float %84, -5.000000e-01
  %375 = fadd fast float %85, -5.000000e-01
  %376 = fmul fast float %343, %374
  %377 = fmul fast float %345, %375
  %378 = fadd fast float %376, 5.000000e-01
  %379 = fadd fast float %377, 5.000000e-01
  %380 = fmul fast float %354, %378
  %381 = fmul fast float %357, %379
  %382 = fmul fast float %372, %380
  %383 = call float @dx.op.tertiary.f32(i32 46, float %373, float %381, float %382)  ; FMad(a,b,c)
  %384 = fmul fast float %371, %380
  %385 = call float @dx.op.tertiary.f32(i32 46, float %372, float %381, float %384)  ; FMad(a,b,c)
  %386 = fadd fast float %363, %383
  %387 = fadd fast float %366, %385
  %388 = icmp ugt i32 %337, 1
  %389 = icmp ugt i32 %335, 33554431
  %390 = or i1 %389, %388
  br i1 %390, label %391, label %416

; <label>:391                                     ; preds = %326
  %392 = add i32 %73, 84
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = lshr i32 %394, 16
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = fmul fast float %359, %396
  %398 = call float @dx.op.unary.f32(i32 22, float %397)  ; Frc(value)
  %399 = mul nuw nsw i32 %337, %338
  %400 = uitofp i32 %399 to float
  %401 = fmul fast float %398, %400
  %402 = call float @dx.op.unary.f32(i32 27, float %401)  ; Round_ni(value)
  %403 = fptoui float %402 to i32
  %404 = urem i32 %403, %337
  %405 = udiv i32 %403, %338
  %406 = call float @dx.op.unary.f32(i32 22, float %386)  ; Frc(value)
  %407 = call float @dx.op.unary.f32(i32 22, float %387)  ; Frc(value)
  %408 = uitofp i32 %404 to float
  %409 = uitofp i32 %405 to float
  %410 = fadd fast float %406, %408
  %411 = fadd fast float %407, %409
  %412 = uitofp i32 %337 to float
  %413 = uitofp i32 %338 to float
  %414 = fdiv fast float %410, %412
  %415 = fdiv fast float %411, %413
  br label %416

; <label>:416                                     ; preds = %391, %326
  %417 = phi float [ %414, %391 ], [ %386, %326 ]
  %418 = phi float [ %415, %391 ], [ %387, %326 ]
  %419 = and i32 %320, 16777216
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %530, label %421

; <label>:421                                     ; preds = %416
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = fadd fast float %423, %157
  %427 = fadd fast float %424, %158
  %428 = fadd fast float %425, %159
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %431 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %432 = icmp eq i32 %72, 65535
  br i1 %432, label %527, label %433

; <label>:433                                     ; preds = %421
  %434 = lshr i32 %72, 1
  %435 = shl i32 %434, 2
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %72, 1
  %439 = icmp ne i32 %438, 0
  %440 = lshr i32 %437, 16
  %441 = and i32 %437, 65535
  %442 = select i1 %439, i32 %440, i32 %441
  %443 = icmp eq i32 %442, 65535
  br i1 %443, label %523, label %444

; <label>:444                                     ; preds = %433
  %445 = mul nuw nsw i32 %442, 40
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = add nuw nsw i32 %445, 12
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = add nuw nsw i32 %445, 24
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = extractvalue %dx.types.ResRet.f32 %456, 2
  %460 = add nuw nsw i32 %445, 36
  %461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = fsub fast float %426, %447
  %464 = fsub fast float %427, %448
  %465 = fsub fast float %428, %449
  %466 = fmul fast float %462, %463
  %467 = fmul fast float %462, %464
  %468 = fmul fast float %462, %465
  %469 = call float @dx.op.unary.f32(i32 27, float %466)  ; Round_ni(value)
  %470 = call float @dx.op.unary.f32(i32 27, float %467)  ; Round_ni(value)
  %471 = call float @dx.op.unary.f32(i32 27, float %468)  ; Round_ni(value)
  %472 = fadd fast float %469, 5.000000e-01
  %473 = fadd fast float %470, 5.000000e-01
  %474 = fadd fast float %471, 5.000000e-01
  %475 = fmul fast float %472, %452
  %476 = fmul fast float %473, %453
  %477 = fmul fast float %474, %454
  %478 = shl i32 %72, 2
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = add i32 %480, 0
  %482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %483 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %484 = call float @dx.op.unary.f32(i32 22, float %476)  ; Frc(value)
  %485 = call float @dx.op.unary.f32(i32 22, float %477)  ; Frc(value)
  %486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %482, %dx.types.Handle %65, float %483, float %484, float %485, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = extractvalue %dx.types.ResRet.f32 %486, 2
  %490 = fmul fast float %487, 1.023000e+03
  %491 = fmul fast float %488, 1.023000e+03
  %492 = fmul fast float %489, 1.023000e+03
  %493 = fadd fast float %490, 5.000000e-01
  %494 = fadd fast float %491, 5.000000e-01
  %495 = fadd fast float %492, 5.000000e-01
  %496 = call float @dx.op.unary.f32(i32 27, float %493)  ; Round_ni(value)
  %497 = call float @dx.op.unary.f32(i32 27, float %494)  ; Round_ni(value)
  %498 = call float @dx.op.unary.f32(i32 27, float %495)  ; Round_ni(value)
  %499 = fsub fast float %466, %469
  %500 = fsub fast float %467, %470
  %501 = fsub fast float %468, %471
  %502 = fmul fast float %499, 7.500000e-01
  %503 = fmul fast float %500, 7.500000e-01
  %504 = fmul fast float %501, 7.500000e-01
  %505 = fadd fast float %469, 1.250000e-01
  %506 = fadd fast float %505, %502
  %507 = fadd fast float %506, %496
  %508 = fadd fast float %470, 1.250000e-01
  %509 = fadd fast float %508, %503
  %510 = fadd fast float %509, %497
  %511 = fadd fast float %471, 1.250000e-01
  %512 = fadd fast float %511, %504
  %513 = fadd fast float %512, %498
  %514 = fmul fast float %507, %457
  %515 = fmul fast float %510, %458
  %516 = fmul fast float %513, %459
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = add i32 %518, 0
  %520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %520, %dx.types.Handle %63, float %514, float %515, float %516, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  br label %523

; <label>:523                                     ; preds = %444, %433
  %524 = phi float [ %522, %444 ], [ -1.000000e+00, %433 ]
  %525 = fadd fast float %524, %431
  %526 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  br label %527

; <label>:527                                     ; preds = %523, %421
  %528 = phi float [ %526, %523 ], [ %431, %421 ]
  %529 = fmul fast float %528, %317
  br label %530

; <label>:530                                     ; preds = %527, %416
  %531 = phi float [ %529, %527 ], [ %317, %416 ]
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 256
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %582, label %536

; <label>:536                                     ; preds = %530
  %537 = add i32 %73, 216
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add i32 %539, 0
  %541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %542 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %99, float %417, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = add i32 %73, 52
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = shl i32 %546, 4
  %548 = and i32 %547, 32752
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = lshr i32 %546, 7
  %551 = and i32 %550, 32752
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = fsub fast float 1.000000e+00, %531
  %554 = call float @dx.op.binary.f32(i32 35, float %553, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %555 = bitcast float %531 to i32
  %556 = sitofp i32 %555 to float
  %557 = fadd fast float %556, 0xC1CFBF8940000000
  %558 = fmul fast float %552, %557
  %559 = fadd fast float %558, 0x41CFBF8940000000
  %560 = fptosi float %559 to i32
  %561 = bitcast i32 %560 to float
  %562 = bitcast float %554 to i32
  %563 = sitofp i32 %562 to float
  %564 = fadd fast float %563, 0xC1CFBF8940000000
  %565 = fmul fast float %564, %552
  %566 = fadd fast float %565, 0x41CFBF8940000000
  %567 = fptosi float %566 to i32
  %568 = bitcast i32 %567 to float
  %569 = fmul fast float %561, %549
  %570 = fmul fast float %568, %549
  %571 = fsub fast float %554, %569
  %572 = fadd fast float %570, %554
  %573 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %574 = call float @dx.op.unary.f32(i32 7, float %572)  ; Saturate(value)
  %575 = fsub fast float %543, %573
  %576 = fsub fast float %574, %573
  %577 = bitcast float %576 to i32
  %578 = sub nsw i32 2129859010, %577
  %579 = bitcast i32 %578 to float
  %580 = fmul fast float %579, %575
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  br label %582

; <label>:582                                     ; preds = %536, %530
  %583 = phi float [ %581, %536 ], [ %531, %530 ]
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 128
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %604, label %588

; <label>:588                                     ; preds = %582
  %589 = add i32 %73, 212
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = add i32 %591, 0
  %593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %592, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %594 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %593, %dx.types.Handle %99, float %417, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %597, 524288
  %599 = icmp ne i32 %598, 0
  %600 = fcmp fast ogt float %595, 0x3FE0101020000000
  %601 = select i1 %600, float 1.000000e+00, float 0.000000e+00
  %602 = select i1 %599, float %601, float %595
  %603 = fmul fast float %602, %583
  br label %604

; <label>:604                                     ; preds = %588, %582
  %605 = phi float [ %603, %588 ], [ %583, %582 ]
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = and i32 %607, 16
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %808, label %610

; <label>:610                                     ; preds = %604
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = add i32 %73, 200
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = add i32 %615, 0
  %617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %617, %dx.types.Handle %98, float %417, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = extractvalue %dx.types.ResRet.f32 %618, 2
  %622 = extractvalue %dx.types.ResRet.f32 %618, 3
  %623 = and i32 %612, 255
  %624 = uitofp i32 %623 to float
  %625 = lshr i32 %612, 8
  %626 = and i32 %625, 255
  %627 = uitofp i32 %626 to float
  %628 = fmul fast float %622, %624
  %629 = fadd fast float %628, %627
  %630 = fmul fast float %629, 0x3F70101000000000
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = and i32 %632, 512
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %643, label %635

; <label>:635                                     ; preds = %610
  %636 = add i32 %73, 220
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = add i32 %638, 0
  %640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %640, %dx.types.Handle %99, float %417, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  br label %643

; <label>:643                                     ; preds = %635, %610
  %644 = phi float [ %642, %635 ], [ 1.000000e+00, %610 ]
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = and i32 %646, 33554432
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %755, label %649

; <label>:649                                     ; preds = %643
  %650 = add i32 %73, 80
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = and i32 %652, 65535
  %654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %653)  ; LegacyF16ToF32(value)
  %655 = lshr i32 %652, 16
  %656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %655)  ; LegacyF16ToF32(value)
  %657 = add i32 %73, 84
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = and i32 %659, 65535
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = lshr i32 %663, 24
  %665 = uitofp i32 %664 to float
  %666 = fmul fast float %665, 0x3F70101020000000
  %667 = and i32 %663, 255
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %668, 0x3F70101020000000
  %670 = lshr i32 %663, 8
  %671 = and i32 %670, 255
  %672 = uitofp i32 %671 to float
  %673 = fmul fast float %672, 0x3F70101020000000
  %674 = lshr i32 %663, 16
  %675 = and i32 %674, 255
  %676 = uitofp i32 %675 to float
  %677 = fmul fast float %676, 0x3F70101020000000
  %678 = add i32 %73, 76
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = lshr i32 %680, 24
  %682 = uitofp i32 %681 to float
  %683 = fmul fast float %682, 0x3F70101020000000
  %684 = and i32 %680, 255
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3F70101020000000
  %687 = lshr i32 %680, 8
  %688 = and i32 %687, 255
  %689 = uitofp i32 %688 to float
  %690 = fmul fast float %689, 0x3F70101020000000
  %691 = lshr i32 %680, 16
  %692 = and i32 %691, 255
  %693 = uitofp i32 %692 to float
  %694 = fmul fast float %693, 0x3F70101020000000
  %695 = bitcast float %619 to i32
  %696 = ashr i32 %695, 1
  %697 = sub nsw i32 1597463174, %696
  %698 = bitcast i32 %697 to float
  %699 = fmul fast float %619, 5.000000e-01
  %700 = fmul fast float %698, %698
  %701 = fmul fast float %700, %699
  %702 = fsub fast float 1.500000e+00, %701
  %703 = fmul fast float %698, %619
  %704 = fmul fast float %703, %702
  %705 = bitcast float %620 to i32
  %706 = ashr i32 %705, 1
  %707 = sub nsw i32 1597463174, %706
  %708 = bitcast i32 %707 to float
  %709 = fmul fast float %620, 5.000000e-01
  %710 = fmul fast float %708, %708
  %711 = fmul fast float %710, %709
  %712 = fsub fast float 1.500000e+00, %711
  %713 = fmul fast float %708, %620
  %714 = fmul fast float %713, %712
  %715 = bitcast float %621 to i32
  %716 = ashr i32 %715, 1
  %717 = sub nsw i32 1597463174, %716
  %718 = bitcast i32 %717 to float
  %719 = fmul fast float %621, 5.000000e-01
  %720 = fmul fast float %718, %718
  %721 = fmul fast float %720, %719
  %722 = fsub fast float 1.500000e+00, %721
  %723 = fmul fast float %718, %621
  %724 = fmul fast float %723, %722
  %725 = fsub fast float %704, %686
  %726 = fsub fast float %714, %690
  %727 = fsub fast float %724, %694
  %728 = fmul fast float %725, %654
  %729 = fmul fast float %726, %656
  %730 = fmul fast float %727, %661
  %731 = fadd fast float %728, %669
  %732 = fadd fast float %729, %673
  %733 = fadd fast float %730, %677
  %734 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %735 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %736 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %737 = fmul fast float %734, %734
  %738 = fmul fast float %735, %735
  %739 = fmul fast float %736, %736
  %740 = fsub fast float %737, %619
  %741 = fsub fast float %738, %620
  %742 = fsub fast float %739, %621
  %743 = fmul fast float %740, %644
  %744 = fmul fast float %741, %644
  %745 = fmul fast float %742, %644
  %746 = fadd fast float %743, %619
  %747 = fadd fast float %744, %620
  %748 = fadd fast float %745, %621
  %749 = fadd fast float %666, %630
  %750 = fsub fast float %749, %683
  %751 = call float @dx.op.unary.f32(i32 7, float %750)  ; Saturate(value)
  %752 = fsub fast float %751, %630
  %753 = fmul fast float %752, %644
  %754 = fadd fast float %753, %630
  br label %808

; <label>:755                                     ; preds = %643
  %756 = and i32 %646, 134217728
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %792, label %758

; <label>:758                                     ; preds = %755
  %759 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %760 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %761 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %762 = fadd fast float %759, -5.000000e-01
  %763 = fadd fast float %760, -5.000000e-01
  %764 = fadd fast float %761, -5.000000e-01
  %765 = fmul fast float %762, %644
  %766 = fmul fast float %763, %644
  %767 = fmul fast float %764, %644
  %768 = fadd fast float %765, 5.000000e-01
  %769 = fadd fast float %766, 5.000000e-01
  %770 = fadd fast float %767, 5.000000e-01
  %771 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %772 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %773 = call float @dx.op.unary.f32(i32 24, float %621)  ; Sqrt(value)
  %774 = fmul fast float %768, 2.000000e+00
  %775 = fsub fast float 1.000000e+00, %774
  %776 = fmul fast float %775, %771
  %777 = fadd fast float %776, %774
  %778 = fmul fast float %777, %771
  %779 = fmul fast float %769, 2.000000e+00
  %780 = fsub fast float 1.000000e+00, %779
  %781 = fmul fast float %780, %772
  %782 = fadd fast float %781, %779
  %783 = fmul fast float %782, %772
  %784 = fmul fast float %770, 2.000000e+00
  %785 = fsub fast float 1.000000e+00, %784
  %786 = fmul fast float %785, %773
  %787 = fadd fast float %786, %784
  %788 = fmul fast float %787, %773
  %789 = fmul fast float %778, %778
  %790 = fmul fast float %783, %783
  %791 = fmul fast float %788, %788
  br label %808

; <label>:792                                     ; preds = %755
  %793 = fmul fast float %277, %277
  %794 = fmul fast float %281, %281
  %795 = fmul fast float %285, %285
  %796 = fadd fast float %793, -1.000000e+00
  %797 = fadd fast float %794, -1.000000e+00
  %798 = fadd fast float %795, -1.000000e+00
  %799 = fmul fast float %644, %796
  %800 = fmul fast float %644, %797
  %801 = fmul fast float %644, %798
  %802 = fadd fast float %799, 1.000000e+00
  %803 = fadd fast float %800, 1.000000e+00
  %804 = fadd fast float %801, 1.000000e+00
  %805 = fmul fast float %802, %619
  %806 = fmul fast float %803, %620
  %807 = fmul fast float %804, %621
  br label %808

; <label>:808                                     ; preds = %792, %758, %649, %604
  %809 = phi float [ %754, %649 ], [ %630, %758 ], [ %630, %792 ], [ 0x3FA23C0BE0000000, %604 ]
  %810 = phi float [ %746, %649 ], [ %789, %758 ], [ %805, %792 ], [ 1.000000e+00, %604 ]
  %811 = phi float [ %747, %649 ], [ %790, %758 ], [ %806, %792 ], [ 1.000000e+00, %604 ]
  %812 = phi float [ %748, %649 ], [ %791, %758 ], [ %807, %792 ], [ 1.000000e+00, %604 ]
  %813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.i32 %813, 1
  %815 = and i32 %814, 1
  %816 = icmp ne i32 %815, 0
  %817 = add i32 %73, 116
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = and i32 %819, 32
  %821 = icmp ne i32 %820, 0
  %822 = and i1 %816, %821
  %823 = select i1 %822, float 1.000000e+00, float %810
  %824 = select i1 %822, float 0x3FD3333340000000, float %811
  %825 = select i1 %822, float 0x3FD3333340000000, float %812
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 32
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %902, label %830

; <label>:830                                     ; preds = %808
  %831 = add i32 %73, 44
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = add i32 %73, 204
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = add i32 %836, 0
  %838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %838, %dx.types.Handle %98, float %417, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = extractvalue %dx.types.ResRet.f32 %839, 3
  %844 = and i32 %833, 255
  %845 = uitofp i32 %844 to float
  %846 = lshr i32 %833, 8
  %847 = and i32 %846, 255
  %848 = uitofp i32 %847 to float
  %849 = lshr i32 %833, 16
  %850 = and i32 %849, 255
  %851 = uitofp i32 %850 to float
  %852 = fmul fast float %851, 0x3F70101000000000
  %853 = fmul fast float %840, %845
  %854 = fadd fast float %853, %848
  %855 = fmul fast float %854, 0x3F70101000000000
  %856 = fadd fast float %841, -5.000000e-01
  %857 = fadd fast float %843, -5.000000e-01
  %858 = fmul fast float %856, %852
  %859 = fmul fast float %857, %852
  %860 = fadd fast float %858, 5.000000e-01
  %861 = fadd fast float %859, 5.000000e-01
  %862 = fmul fast float %860, 2.000000e+00
  %863 = fadd fast float %862, -1.000000e+00
  %864 = fmul fast float %861, 2.000000e+00
  %865 = fadd fast float %864, -1.000000e+00
  %866 = fadd fast float %863, %865
  %867 = fmul fast float %866, 5.000000e-01
  %868 = fsub fast float %863, %865
  %869 = fmul fast float %868, 5.000000e-01
  %870 = call float @dx.op.unary.f32(i32 6, float %867)  ; FAbs(value)
  %871 = fsub fast float 1.000000e+00, %870
  %872 = call float @dx.op.unary.f32(i32 6, float %869)  ; FAbs(value)
  %873 = fsub fast float %871, %872
  %874 = call float @dx.op.dot3.f32(i32 55, float %867, float %869, float %873, float %867, float %869, float %873)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = call float @dx.op.unary.f32(i32 25, float %874)  ; Rsqrt(value)
  %876 = fmul fast float %867, %875
  %877 = fmul fast float %869, %875
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = and i32 %879, 67108864
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %898, label %882

; <label>:882                                     ; preds = %830
  %883 = add i32 %73, 88
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = and i32 %885, 65535
  %887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %886)  ; LegacyF16ToF32(value)
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = and i32 %889, 65535
  %891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %890)  ; LegacyF16ToF32(value)
  %892 = lshr i32 %885, 16
  %893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %892)  ; LegacyF16ToF32(value)
  %894 = fsub fast float %855, %893
  %895 = fmul fast float %894, %887
  %896 = fadd fast float %895, %891
  %897 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  br label %898

; <label>:898                                     ; preds = %882, %830
  %899 = phi float [ %897, %882 ], [ %855, %830 ]
  %900 = call float @dx.op.dot2.f32(i32 54, float %876, float %877, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %901 = call float @dx.op.dot2.f32(i32 54, float %876, float %877, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %902

; <label>:902                                     ; preds = %898, %808
  %903 = phi float [ %899, %898 ], [ 0x3FD6666660000000, %808 ]
  %904 = phi float [ %900, %898 ], [ 0.000000e+00, %808 ]
  %905 = phi float [ %901, %898 ], [ 0.000000e+00, %808 ]
  %906 = phi float [ %842, %898 ], [ 1.000000e+00, %808 ]
  %907 = add i32 %73, 64
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = lshr i32 %909, 22
  %911 = shl nuw nsw i32 %910, 5
  %912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %911)  ; LegacyF16ToF32(value)
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = and i32 %914, 64
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %950, label %917

; <label>:917                                     ; preds = %902
  %918 = add i32 %73, 208
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = add i32 %920, 0
  %922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = and i32 %924, 131072
  %926 = icmp eq i32 %925, 0
  %927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %922, %dx.types.Handle %98, float %417, float %418, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 0
  %929 = extractvalue %dx.types.ResRet.f32 %927, 1
  %930 = extractvalue %dx.types.ResRet.f32 %927, 2
  %931 = fmul fast float %928, %265
  %932 = fmul fast float %929, %268
  %933 = fmul fast float %930, %271
  br i1 %926, label %940, label %934

; <label>:934                                     ; preds = %917
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = fmul fast float %936, %931
  %938 = fmul fast float %936, %932
  %939 = fmul fast float %936, %933
  br label %940

; <label>:940                                     ; preds = %934, %917
  %941 = phi float [ %937, %934 ], [ %931, %917 ]
  %942 = phi float [ %938, %934 ], [ %932, %917 ]
  %943 = phi float [ %939, %934 ], [ %933, %917 ]
  %944 = fmul fast float %941, %912
  %945 = select i1 %248, float %944, float %941
  %946 = call float @dx.op.dot3.f32(i32 55, float %945, float %942, float %943, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %947 = select i1 %248, float 0.000000e+00, float %941
  %948 = select i1 %248, float %946, float %942
  %949 = select i1 %248, float 0.000000e+00, float %943
  br label %950

; <label>:950                                     ; preds = %940, %902
  %951 = phi float [ %947, %940 ], [ 0.000000e+00, %902 ]
  %952 = phi float [ %948, %940 ], [ 0.000000e+00, %902 ]
  %953 = phi float [ %949, %940 ], [ 0.000000e+00, %902 ]
  %954 = add i32 %73, 48
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = and i32 %956, 255
  %958 = uitofp i32 %957 to float
  %959 = lshr i32 %956, 8
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = call float @dx.op.dot3.f32(i32 55, float %823, float %824, float %825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %963 = fmul fast float %961, %962
  %964 = fadd fast float %963, %958
  %965 = fmul fast float %964, 0x3F70101020000000
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  br label %967

; <label>:967                                     ; preds = %950, %316
  %968 = phi float [ 0.000000e+00, %316 ], [ %904, %950 ]
  %969 = phi float [ 0.000000e+00, %316 ], [ %905, %950 ]
  %970 = phi float [ 0.000000e+00, %316 ], [ %823, %950 ]
  %971 = phi float [ 0.000000e+00, %316 ], [ %824, %950 ]
  %972 = phi float [ 0.000000e+00, %316 ], [ %825, %950 ]
  %973 = phi float [ 0.000000e+00, %316 ], [ %951, %950 ]
  %974 = phi float [ 0.000000e+00, %316 ], [ %952, %950 ]
  %975 = phi float [ 0.000000e+00, %316 ], [ %953, %950 ]
  %976 = phi float [ 0.000000e+00, %316 ], [ %809, %950 ]
  %977 = phi float [ 0.000000e+00, %316 ], [ %605, %950 ]
  %978 = phi float [ 0.000000e+00, %316 ], [ %903, %950 ]
  %979 = phi float [ 0.000000e+00, %316 ], [ %906, %950 ]
  %980 = phi float [ 0.000000e+00, %316 ], [ %966, %950 ]
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = call float @dx.op.dot2.f32(i32 54, float %968, float %969, float %968, float %969)  ; Dot2(ax,ay,bx,by)
  %984 = fmul fast float %983, 0x3FE3333340000000
  %985 = fsub fast float 1.000000e+00, %984
  %986 = call float @dx.op.dot3.f32(i32 55, float %968, float %969, float %985, float %968, float %969, float %985)  ; Dot3(ax,ay,az,bx,by,bz)
  %987 = call float @dx.op.unary.f32(i32 25, float %986)  ; Rsqrt(value)
  %988 = fmul fast float %987, %968
  %989 = fmul fast float %987, %969
  %990 = fmul fast float %985, %987
  %991 = fmul fast float %990, %105
  %992 = fmul fast float %990, %106
  %993 = fmul fast float %990, %107
  %994 = fmul fast float %988, %108
  %995 = fmul fast float %988, %109
  %996 = fmul fast float %988, %110
  %997 = fadd fast float %991, %994
  %998 = fadd fast float %992, %995
  %999 = fadd fast float %993, %996
  %1000 = fmul fast float %989, %121
  %1001 = fmul fast float %989, %122
  %1002 = fmul fast float %989, %123
  %1003 = fadd fast float %997, %1000
  %1004 = fadd fast float %998, %1001
  %1005 = fadd fast float %999, %1002
  %1006 = call float @dx.op.dot3.f32(i32 55, float %1003, float %1004, float %1005, float %1003, float %1004, float %1005)  ; Dot3(ax,ay,az,bx,by,bz)
  %1007 = call float @dx.op.unary.f32(i32 25, float %1006)  ; Rsqrt(value)
  %1008 = fmul fast float %1003, %1007
  %1009 = fmul fast float %1004, %1007
  %1010 = fmul fast float %1005, %1007
  %1011 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %1012 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %1013 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %1014 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %1015 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %1016 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %1017 = fadd fast float %1011, %157
  %1018 = fadd fast float %1012, %158
  %1019 = fadd fast float %1013, %159
  %1020 = fadd fast float %1014, %157
  %1021 = fadd fast float %1015, %158
  %1022 = fadd fast float %1016, %159
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.CBufRet.f32 %1023, 2
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1029 = extractvalue %dx.types.CBufRet.f32 %1027, 3
  %1030 = fmul fast float %1024, %102
  %1031 = fmul fast float %1030, %1028
  %1032 = fmul fast float %1025, %103
  %1033 = fmul fast float %1032, %1029
  %1034 = fptoui float %1031 to i32
  %1035 = fptoui float %1033 to i32
  %1036 = fadd fast float %1024, -1.000000e+00
  %1037 = fadd fast float %1025, -1.000000e+00
  %1038 = fptoui float %1036 to i32
  %1039 = fptoui float %1037 to i32
  %1040 = call i32 @dx.op.binary.i32(i32 40, i32 %1034, i32 %1038)  ; UMin(a,b)
  %1041 = call i32 @dx.op.binary.i32(i32 40, i32 %1035, i32 %1039)  ; UMin(a,b)
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1044 = extractvalue %dx.types.CBufRet.f32 %1042, 3
  %1045 = fmul fast float %1043, %90
  %1046 = fsub fast float %1045, %1044
  %1047 = fadd fast float %1026, -1.000000e+00
  %1048 = call float @dx.op.binary.f32(i32 36, float %1046, float %1047)  ; FMin(a,b)
  %1049 = fptoui float %1048 to i32
  %1050 = fptoui float %1024 to i32
  %1051 = fptoui float %1025 to i32
  %1052 = mul i32 %1049, %1051
  %1053 = add i32 %1052, %1041
  %1054 = mul i32 %1053, %1050
  %1055 = add i32 %1054, %1040
  %1056 = shl i32 %1055, 2
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = and i32 %1058, 1023
  %1060 = lshr i32 %1058, 10
  %1061 = icmp eq i32 %1059, 0
  br i1 %1061, label %1490, label %1062

; <label>:1062                                    ; preds = %967
  %1063 = and i32 %1058, 1023
  br label %1064

; <label>:1064                                    ; preds = %1191, %1062
  %1065 = phi float [ %1192, %1191 ], [ 0.000000e+00, %1062 ]
  %1066 = phi float [ %1193, %1191 ], [ %977, %1062 ]
  %1067 = phi float [ %1194, %1191 ], [ %982, %1062 ]
  %1068 = phi float [ %1195, %1191 ], [ %980, %1062 ]
  %1069 = phi float [ %1196, %1191 ], [ 0.000000e+00, %1062 ]
  %1070 = phi float [ %1197, %1191 ], [ 0.000000e+00, %1062 ]
  %1071 = phi float [ %1198, %1191 ], [ %973, %1062 ]
  %1072 = phi float [ %1199, %1191 ], [ %974, %1062 ]
  %1073 = phi float [ %1200, %1191 ], [ %975, %1062 ]
  %1074 = phi float [ %1201, %1191 ], [ %1008, %1062 ]
  %1075 = phi float [ %1202, %1191 ], [ %1009, %1062 ]
  %1076 = phi float [ %1203, %1191 ], [ %1010, %1062 ]
  %1077 = phi float [ %1204, %1191 ], [ %979, %1062 ]
  %1078 = phi float [ %1205, %1191 ], [ %978, %1062 ]
  %1079 = phi float [ %1206, %1191 ], [ 0.000000e+00, %1062 ]
  %1080 = phi float [ %1207, %1191 ], [ %976, %1062 ]
  %1081 = phi float [ %1208, %1191 ], [ %970, %1062 ]
  %1082 = phi float [ %1209, %1191 ], [ %971, %1062 ]
  %1083 = phi float [ %1210, %1191 ], [ %972, %1062 ]
  %1084 = phi i32 [ %1141, %1191 ], [ 0, %1062 ]
  %1085 = add nuw nsw i32 %1084, %1060
  %1086 = shl i32 %1085, 2
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = shl i32 %1088, 8
  %1090 = or i32 %1089, 48
  %1091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1095 = extractvalue %dx.types.ResRet.f32 %1091, 3
  %1096 = or i32 %1089, 64
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = extractvalue %dx.types.ResRet.i32 %1097, 1
  %1100 = or i32 %1089, 80
  %1101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 2
  %1103 = extractvalue %dx.types.ResRet.f32 %1101, 3
  %1104 = or i32 %1089, 96
  %1105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1110 = or i32 %1089, 112
  %1111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1113 = or i32 %1089, 128
  %1114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = extractvalue %dx.types.ResRet.f32 %1114, 3
  %1119 = or i32 %1089, 144
  %1120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = extractvalue %dx.types.ResRet.f32 %1120, 3
  %1125 = or i32 %1089, 160
  %1126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  %1130 = extractvalue %dx.types.ResRet.f32 %1126, 3
  %1131 = or i32 %1089, 192
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = or i32 %1089, 208
  %1135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = or i32 %1089, 248
  %1138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = add nuw nsw i32 %1084, 1
  %1142 = bitcast float %1095 to i32
  %1143 = and i32 %1142, 2560
  %1144 = icmp eq i32 %1143, 0
  %1145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1145, 2
  %1149 = extractvalue %dx.types.ResRet.f32 %1145, 3
  %1150 = call float @dx.op.dot4.f32(i32 56, float %1146, float %1147, float %1148, float %1149, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1151 = or i32 %1089, 16
  %1152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1152, 2
  %1156 = extractvalue %dx.types.ResRet.f32 %1152, 3
  %1157 = call float @dx.op.dot4.f32(i32 56, float %1153, float %1154, float %1155, float %1156, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1158 = or i32 %1089, 32
  %1159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.ResRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.ResRet.f32 %1159, 2
  %1163 = extractvalue %dx.types.ResRet.f32 %1159, 3
  %1164 = call float @dx.op.dot4.f32(i32 56, float %1160, float %1161, float %1162, float %1163, float %157, float %158, float %159, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1165 = call float @dx.op.unary.f32(i32 27, float %1150)  ; Round_ni(value)
  %1166 = call float @dx.op.unary.f32(i32 6, float %1165)  ; FAbs(value)
  %1167 = call float @dx.op.unary.f32(i32 27, float %1157)  ; Round_ni(value)
  %1168 = call float @dx.op.unary.f32(i32 6, float %1167)  ; FAbs(value)
  %1169 = call float @dx.op.unary.f32(i32 6, float %1164)  ; FAbs(value)
  %1170 = call float @dx.op.unary.f32(i32 27, float %1169)  ; Round_ni(value)
  %1171 = fadd fast float %1168, %1166
  %1172 = fadd fast float %1171, %1170
  %1173 = fcmp fast oeq float %1172, 0.000000e+00
  %1174 = call float @dx.op.dot4.f32(i32 56, float %1146, float %1147, float %1148, float %1149, float %1017, float %1018, float %1019, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1175 = call float @dx.op.dot4.f32(i32 56, float %1153, float %1154, float %1155, float %1156, float %1017, float %1018, float %1019, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1176 = call float @dx.op.dot4.f32(i32 56, float %1146, float %1147, float %1148, float %1149, float %1020, float %1021, float %1022, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1177 = call float @dx.op.dot4.f32(i32 56, float %1153, float %1154, float %1155, float %1156, float %1020, float %1021, float %1022, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1178 = fsub fast float %1174, %1150
  %1179 = fsub fast float %1176, %1150
  %1180 = fsub fast float %1175, %1157
  %1181 = fsub fast float %1177, %1157
  %1182 = call float @dx.op.dot3.f32(i32 55, float %1092, float %1093, float %1094, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1185 = fadd fast float %1184, %1182
  %1186 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1188 = fcmp fast ogt float %1186, %1187
  %1189 = and i1 %1173, %1188
  %1190 = and i1 %1144, %1189
  br i1 %1190, label %1212, label %1191

; <label>:1191                                    ; preds = %1476, %1293, %1212, %1064
  %1192 = phi float [ %1065, %1212 ], [ %1296, %1293 ], [ %1296, %1476 ], [ %1065, %1064 ]
  %1193 = phi float [ %1066, %1212 ], [ %1066, %1293 ], [ %1451, %1476 ], [ %1066, %1064 ]
  %1194 = phi float [ %1067, %1212 ], [ %1067, %1293 ], [ %1450, %1476 ], [ %1067, %1064 ]
  %1195 = phi float [ %1068, %1212 ], [ %1068, %1293 ], [ %1448, %1476 ], [ %1068, %1064 ]
  %1196 = phi float [ %1069, %1212 ], [ %1069, %1293 ], [ %1420, %1476 ], [ %1069, %1064 ]
  %1197 = phi float [ %1070, %1212 ], [ %1070, %1293 ], [ %1418, %1476 ], [ %1070, %1064 ]
  %1198 = phi float [ %1071, %1212 ], [ %1071, %1293 ], [ %1486, %1476 ], [ %1071, %1064 ]
  %1199 = phi float [ %1072, %1212 ], [ %1072, %1293 ], [ %1487, %1476 ], [ %1072, %1064 ]
  %1200 = phi float [ %1073, %1212 ], [ %1073, %1293 ], [ %1488, %1476 ], [ %1073, %1064 ]
  %1201 = phi float [ %1074, %1212 ], [ %1074, %1293 ], [ %1399, %1476 ], [ %1074, %1064 ]
  %1202 = phi float [ %1075, %1212 ], [ %1075, %1293 ], [ %1400, %1476 ], [ %1075, %1064 ]
  %1203 = phi float [ %1076, %1212 ], [ %1076, %1293 ], [ %1401, %1476 ], [ %1076, %1064 ]
  %1204 = phi float [ %1077, %1212 ], [ %1077, %1293 ], [ %1428, %1476 ], [ %1077, %1064 ]
  %1205 = phi float [ %1078, %1212 ], [ %1078, %1293 ], [ %1425, %1476 ], [ %1078, %1064 ]
  %1206 = phi float [ %1079, %1212 ], [ %1079, %1293 ], [ %1422, %1476 ], [ %1079, %1064 ]
  %1207 = phi float [ %1080, %1212 ], [ %1080, %1293 ], [ %1416, %1476 ], [ %1080, %1064 ]
  %1208 = phi float [ %1081, %1212 ], [ %1081, %1293 ], [ %1411, %1476 ], [ %1081, %1064 ]
  %1209 = phi float [ %1082, %1212 ], [ %1082, %1293 ], [ %1412, %1476 ], [ %1082, %1064 ]
  %1210 = phi float [ %1083, %1212 ], [ %1083, %1293 ], [ %1413, %1476 ], [ %1083, %1064 ]
  %1211 = icmp eq i32 %1141, %1063
  br i1 %1211, label %1489, label %1064

; <label>:1212                                    ; preds = %1064
  %1213 = extractvalue %dx.types.ResRet.f32 %1111, 3
  %1214 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1217 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1218 = extractvalue %dx.types.ResRet.i32 %1097, 3
  %1219 = extractvalue %dx.types.ResRet.i32 %1097, 2
  %1220 = add i32 %1218, 0
  %1221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1220, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1223 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1221, %dx.types.Handle %1222, float %1150, float %1157, float undef, float undef, i32 0, i32 0, i32 undef, float %1178, float %1180, float undef, float %1179, float %1181, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = fmul fast float %1224, %1217
  %1226 = fadd fast float %1225, %1216
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1228 = fmul fast float %1150, %1106
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %1157, float %1228)  ; FMad(a,b,c)
  %1230 = fadd fast float %1229, %1215
  %1231 = fmul fast float %1150, %1108
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1109, float %1157, float %1231)  ; FMad(a,b,c)
  %1233 = fadd fast float %1232, %1214
  %1234 = fmul fast float %1178, %1106
  %1235 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %1180, float %1234)  ; FMad(a,b,c)
  %1236 = fmul fast float %1178, %1108
  %1237 = call float @dx.op.tertiary.f32(i32 46, float %1109, float %1180, float %1236)  ; FMad(a,b,c)
  %1238 = fmul fast float %1179, %1106
  %1239 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %1181, float %1238)  ; FMad(a,b,c)
  %1240 = fmul fast float %1179, %1108
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1109, float %1181, float %1240)  ; FMad(a,b,c)
  %1242 = add i32 %1219, 0
  %1243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1242, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1244 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1243, %dx.types.Handle %1222, float %1230, float %1233, float undef, float undef, i32 0, i32 0, i32 undef, float %1235, float %1237, float undef, float %1239, float %1241, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = and i32 %1142, 1024
  %1247 = icmp ne i32 %1246, 0
  %1248 = fcmp fast ogt float %1245, 0x3FE0101020000000
  %1249 = uitofp i1 %1248 to float
  %1250 = select i1 %1247, float %1249, float %1245
  %1251 = and i32 %1142, 8192
  %1252 = icmp ne i32 %1251, 0
  %1253 = select i1 %1252, float %1213, float 1.000000e+00
  %1254 = fmul fast float %1150, 2.000000e+00
  %1255 = fadd fast float %1254, -1.000000e+00
  %1256 = call float @dx.op.unary.f32(i32 6, float %1255)  ; FAbs(value)
  %1257 = fmul fast float %1256, %1139
  %1258 = fsub fast float %1257, %1139
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = fmul fast float %1157, 2.000000e+00
  %1261 = fadd fast float %1260, -1.000000e+00
  %1262 = call float @dx.op.unary.f32(i32 6, float %1261)  ; FAbs(value)
  %1263 = fmul fast float %1262, %1140
  %1264 = fsub fast float %1263, %1140
  %1265 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1266 = fmul fast float %1169, %1102
  %1267 = fsub fast float %1266, %1102
  %1268 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1269 = fmul fast float %1227, %1253
  %1270 = fmul fast float %1269, %1224
  %1271 = fmul fast float %1270, %1259
  %1272 = fmul fast float %1271, %1250
  %1273 = fmul fast float %1272, %1265
  %1274 = fmul fast float %1273, %1268
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 1
  %1277 = extractvalue %dx.types.CBufRet.f32 %1275, 0
  %1278 = fsub fast float %1186, %1277
  %1279 = fmul fast float %1278, %1276
  %1280 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1281 = fmul fast float %1274, %1103
  %1282 = fadd fast float %1274, %1103
  %1283 = fmul fast float %1282, %1112
  %1284 = fsub fast float %1283, %1112
  %1285 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  %1286 = and i32 %1142, 128
  %1287 = icmp ne i32 %1286, 0
  %1288 = select i1 %1287, float %1285, float %1281
  %1289 = fmul fast float %1288, %1280
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 0
  %1292 = fcmp fast ugt float %1289, %1291
  br i1 %1292, label %1293, label %1191

; <label>:1293                                    ; preds = %1212
  %1294 = select i1 %1252, float %1289, float 0.000000e+00
  %1295 = fadd fast float %1294, %1065
  %1296 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  br i1 %1252, label %1191, label %1297

; <label>:1297                                    ; preds = %1293
  %1298 = and i32 %1142, 4
  %1299 = and i32 %1142, 8
  %1300 = add i32 %1098, 0
  %1301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1300, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1303 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1301, %dx.types.Handle %1302, float %1230, float %1233, float undef, float undef, i32 0, i32 0, i32 undef, float %1235, float %1237, float undef, float %1239, float %1241, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1304 = extractvalue %dx.types.ResRet.f32 %1303, 0
  %1305 = extractvalue %dx.types.ResRet.f32 %1303, 1
  %1306 = extractvalue %dx.types.ResRet.f32 %1303, 2
  %1307 = extractvalue %dx.types.ResRet.f32 %1303, 3
  %1308 = bitcast float %1124 to i32
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = lshr i32 %1308, 8
  %1312 = and i32 %1311, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1307, %1310
  %1315 = fadd fast float %1314, %1313
  %1316 = fmul fast float %1315, 0x3F70101000000000
  %1317 = add i32 %1099, 0
  %1318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1317, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1319 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1318, %dx.types.Handle %1302, float %1230, float %1233, float undef, float undef, i32 0, i32 0, i32 undef, float %1235, float %1237, float undef, float %1239, float %1241, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 0
  %1321 = extractvalue %dx.types.ResRet.f32 %1319, 1
  %1322 = extractvalue %dx.types.ResRet.f32 %1319, 2
  %1323 = extractvalue %dx.types.ResRet.f32 %1319, 3
  %1324 = bitcast float %1118 to i32
  %1325 = and i32 %1324, 255
  %1326 = uitofp i32 %1325 to float
  %1327 = lshr i32 %1324, 8
  %1328 = and i32 %1327, 255
  %1329 = uitofp i32 %1328 to float
  %1330 = lshr i32 %1324, 16
  %1331 = and i32 %1330, 255
  %1332 = uitofp i32 %1331 to float
  %1333 = fmul fast float %1332, 0x3F70101000000000
  %1334 = fmul fast float %1320, %1326
  %1335 = fadd fast float %1334, %1329
  %1336 = fmul fast float %1335, 0x3F70101000000000
  %1337 = fadd fast float %1321, -5.000000e-01
  %1338 = fadd fast float %1323, -5.000000e-01
  %1339 = fmul fast float %1337, %1333
  %1340 = fmul fast float %1338, %1333
  %1341 = fadd fast float %1339, 5.000000e-01
  %1342 = fadd fast float %1340, 5.000000e-01
  %1343 = fmul fast float %1304, %1127
  %1344 = fmul fast float %1305, %1128
  %1345 = fmul fast float %1306, %1129
  %1346 = fmul fast float %1341, 2.000000e+00
  %1347 = fadd fast float %1346, -1.000000e+00
  %1348 = fmul fast float %1342, 2.000000e+00
  %1349 = fadd fast float %1348, -1.000000e+00
  %1350 = fadd fast float %1347, %1349
  %1351 = fmul fast float %1350, 5.000000e-01
  %1352 = fsub fast float %1347, %1349
  %1353 = fmul fast float %1352, 5.000000e-01
  %1354 = call float @dx.op.unary.f32(i32 6, float %1351)  ; FAbs(value)
  %1355 = fsub fast float 1.000000e+00, %1354
  %1356 = call float @dx.op.unary.f32(i32 6, float %1353)  ; FAbs(value)
  %1357 = fsub fast float %1355, %1356
  %1358 = call float @dx.op.dot3.f32(i32 55, float %1351, float %1353, float %1357, float %1351, float %1353, float %1357)  ; Dot3(ax,ay,az,bx,by,bz)
  %1359 = call float @dx.op.unary.f32(i32 25, float %1358)  ; Rsqrt(value)
  %1360 = fmul fast float %1351, %1359
  %1361 = fmul fast float %1353, %1359
  %1362 = fmul fast float %1359, %1357
  %1363 = fmul fast float %1362, %1092
  %1364 = fmul fast float %1362, %1093
  %1365 = fmul fast float %1362, %1094
  %1366 = fmul fast float %1360, %1115
  %1367 = fmul fast float %1360, %1116
  %1368 = fmul fast float %1360, %1117
  %1369 = fadd fast float %1366, %1363
  %1370 = fadd fast float %1367, %1364
  %1371 = fadd fast float %1368, %1365
  %1372 = fmul fast float %1361, %1121
  %1373 = fmul fast float %1361, %1122
  %1374 = fmul fast float %1361, %1123
  %1375 = fadd fast float %1369, %1372
  %1376 = fadd fast float %1370, %1373
  %1377 = fadd fast float %1371, %1374
  %1378 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1375, float %1376, float %1377)  ; Dot3(ax,ay,az,bx,by,bz)
  %1379 = call float @dx.op.unary.f32(i32 25, float %1378)  ; Rsqrt(value)
  %1380 = fmul fast float %1375, %1379
  %1381 = fmul fast float %1376, %1379
  %1382 = fmul fast float %1377, %1379
  %1383 = icmp ne i32 %1299, 0
  %1384 = select i1 %1383, float 1.000000e+00, float 0.000000e+00
  %1385 = fmul fast float %1289, %1384
  %1386 = and i32 %1142, 1
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1388, label %1392

; <label>:1388                                    ; preds = %1297
  %1389 = fsub fast float %1380, %1074
  %1390 = fsub fast float %1381, %1075
  %1391 = fsub fast float %1382, %1076
  br label %1392

; <label>:1392                                    ; preds = %1388, %1297
  %1393 = phi float [ %1389, %1388 ], [ %1380, %1297 ]
  %1394 = phi float [ %1390, %1388 ], [ %1381, %1297 ]
  %1395 = phi float [ %1391, %1388 ], [ %1382, %1297 ]
  %1396 = fmul float %1395, %1385
  %1397 = fmul float %1394, %1385
  %1398 = fmul float %1393, %1385
  %1399 = fadd fast float %1398, %1074
  %1400 = fadd fast float %1397, %1075
  %1401 = fadd fast float %1396, %1076
  %1402 = icmp ne i32 %1298, 0
  %1403 = select i1 %1402, float 1.000000e+00, float 0.000000e+00
  %1404 = fmul fast float %1289, %1403
  %1405 = fsub fast float %1343, %1081
  %1406 = fsub fast float %1344, %1082
  %1407 = fsub fast float %1345, %1083
  %1408 = fmul fast float %1405, %1404
  %1409 = fmul fast float %1406, %1404
  %1410 = fmul fast float %1407, %1404
  %1411 = fadd fast float %1408, %1081
  %1412 = fadd fast float %1409, %1082
  %1413 = fadd fast float %1410, %1083
  %1414 = fsub fast float %1316, %1080
  %1415 = fmul fast float %1414, %1404
  %1416 = fadd fast float %1415, %1080
  %1417 = fmul fast float %1404, %1070
  %1418 = fsub fast float %1070, %1417
  %1419 = fmul fast float %1404, %1069
  %1420 = fsub fast float %1069, %1419
  %1421 = fadd fast float %1289, %1079
  %1422 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1423 = fsub fast float %1336, %1078
  %1424 = fmul fast float %1423, %1385
  %1425 = fadd fast float %1424, %1078
  %1426 = fsub fast float %1322, %1077
  %1427 = fmul fast float %1426, %1385
  %1428 = fadd fast float %1427, %1077
  %1429 = call float @dx.op.dot3.f32(i32 55, float %1343, float %1344, float %1345, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1433 = fmul fast float %1432, %1429
  %1434 = fadd fast float %1433, %1431
  %1435 = call float @dx.op.unary.f32(i32 7, float %1434)  ; Saturate(value)
  %1436 = bitcast float %1130 to i32
  %1437 = and i32 %1436, 65535
  %1438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1437)  ; LegacyF16ToF32(value)
  %1439 = lshr i32 %1436, 16
  %1440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1439)  ; LegacyF16ToF32(value)
  %1441 = fcmp fast oge float %1438, 0.000000e+00
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1444 = select i1 %1441, float %1438, float %1443
  %1445 = fadd fast float %1444, %1440
  %1446 = fsub fast float %1435, %1068
  %1447 = fmul fast float %1446, %1289
  %1448 = fadd fast float %1447, %1068
  %1449 = fmul fast float %1445, %1289
  %1450 = call float @dx.op.binary.f32(i32 35, float %1067, float %1449)  ; FMax(a,b)
  %1451 = call float @dx.op.binary.f32(i32 35, float %1066, float %1289)  ; FMax(a,b)
  %1452 = and i32 %1142, 16
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1476, label %1454

; <label>:1454                                    ; preds = %1392
  %1455 = bitcast float %1136 to i32
  %1456 = add i32 %1133, 0
  %1457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1456, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1458 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1457, %dx.types.Handle %1302, float %1230, float %1233, float undef, float undef, i32 0, i32 0, i32 undef, float %1235, float %1237, float undef, float %1239, float %1241, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1459 = extractvalue %dx.types.ResRet.f32 %1458, 0
  %1460 = extractvalue %dx.types.ResRet.f32 %1458, 1
  %1461 = extractvalue %dx.types.ResRet.f32 %1458, 2
  %1462 = and i32 %1455, 65535
  %1463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1462)  ; LegacyF16ToF32(value)
  %1464 = fmul fast float %1459, %1127
  %1465 = fmul fast float %1460, %1128
  %1466 = fmul fast float %1461, %1129
  %1467 = and i32 %1142, 16384
  %1468 = icmp ne i32 %1467, 0
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 0
  %1471 = select i1 %1468, float %1470, float 1.000000e+00
  %1472 = fmul fast float %1471, %1463
  %1473 = fmul fast float %1464, %1472
  %1474 = fmul fast float %1465, %1472
  %1475 = fmul fast float %1466, %1472
  br label %1476

; <label>:1476                                    ; preds = %1454, %1392
  %1477 = phi float [ %1473, %1454 ], [ 0.000000e+00, %1392 ]
  %1478 = phi float [ %1474, %1454 ], [ 0.000000e+00, %1392 ]
  %1479 = phi float [ %1475, %1454 ], [ 0.000000e+00, %1392 ]
  %1480 = fsub fast float %1477, %1071
  %1481 = fsub fast float %1478, %1072
  %1482 = fsub fast float %1479, %1073
  %1483 = fmul fast float %1480, %1289
  %1484 = fmul fast float %1481, %1289
  %1485 = fmul fast float %1482, %1289
  %1486 = fadd fast float %1483, %1071
  %1487 = fadd fast float %1484, %1072
  %1488 = fadd fast float %1485, %1073
  br label %1191

; <label>:1489                                    ; preds = %1191
  br label %1490

; <label>:1490                                    ; preds = %1489, %967
  %1491 = phi float [ 0.000000e+00, %967 ], [ %1192, %1489 ]
  %1492 = phi float [ %977, %967 ], [ %1193, %1489 ]
  %1493 = phi float [ %982, %967 ], [ %1194, %1489 ]
  %1494 = phi float [ %980, %967 ], [ %1195, %1489 ]
  %1495 = phi float [ 0.000000e+00, %967 ], [ %1196, %1489 ]
  %1496 = phi float [ 0.000000e+00, %967 ], [ %1197, %1489 ]
  %1497 = phi float [ %973, %967 ], [ %1198, %1489 ]
  %1498 = phi float [ %974, %967 ], [ %1199, %1489 ]
  %1499 = phi float [ %975, %967 ], [ %1200, %1489 ]
  %1500 = phi float [ %1008, %967 ], [ %1201, %1489 ]
  %1501 = phi float [ %1009, %967 ], [ %1202, %1489 ]
  %1502 = phi float [ %1010, %967 ], [ %1203, %1489 ]
  %1503 = phi float [ %979, %967 ], [ %1204, %1489 ]
  %1504 = phi float [ %978, %967 ], [ %1205, %1489 ]
  %1505 = phi float [ 0.000000e+00, %967 ], [ %1206, %1489 ]
  %1506 = phi float [ %976, %967 ], [ %1207, %1489 ]
  %1507 = phi float [ %970, %967 ], [ %1208, %1489 ]
  %1508 = phi float [ %971, %967 ], [ %1209, %1489 ]
  %1509 = phi float [ %972, %967 ], [ %1210, %1489 ]
  %1510 = call float @dx.op.dot3.f32(i32 55, float %1500, float %1501, float %1502, float %1500, float %1501, float %1502)  ; Dot3(ax,ay,az,bx,by,bz)
  %1511 = call float @dx.op.unary.f32(i32 25, float %1510)  ; Rsqrt(value)
  %1512 = fmul fast float %1511, %1500
  %1513 = fmul fast float %1511, %1501
  %1514 = fmul fast float %1511, %1502
  %1515 = fadd fast float %1505, %977
  %1516 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1517 = call float @dx.op.dot3.f32(i32 55, float %1512, float %1513, float %1514, float %1512, float %1513, float %1514)  ; Dot3(ax,ay,az,bx,by,bz)
  %1518 = call float @dx.op.unary.f32(i32 25, float %1517)  ; Rsqrt(value)
  %1519 = fmul fast float %1518, %1512
  %1520 = fmul fast float %1518, %1513
  %1521 = fmul fast float %1518, %1514
  %1522 = fadd fast float %1506, 0xBFB99999A0000000
  %1523 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1524 = fmul fast float %1523, 0x3FF1C71C80000000
  %1525 = call float @dx.op.binary.f32(i32 36, float %1506, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1526 = fsub fast float 1.000000e+00, %1524
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1528 = fmul fast float %1527, %1507
  %1529 = fmul fast float %1527, %1508
  %1530 = fmul fast float %1527, %1509
  %1531 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1532 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1533 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  %1534 = fmul fast float %1524, %1507
  %1535 = fmul fast float %1524, %1508
  %1536 = fmul fast float %1524, %1509
  %1537 = fadd fast float %1534, %1525
  %1538 = fadd fast float %1535, %1525
  %1539 = fadd fast float %1536, %1525
  %1540 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  %1541 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1542 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1543 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.i32 %1544, 3
  %1546 = and i32 %1545, 8
  %1547 = icmp ne i32 %1546, 0
  %1548 = call float @dx.op.binary.f32(i32 35, float %1531, float %1507)  ; FMax(a,b)
  %1549 = call float @dx.op.binary.f32(i32 35, float %1532, float %1507)  ; FMax(a,b)
  %1550 = call float @dx.op.binary.f32(i32 35, float %1533, float %1507)  ; FMax(a,b)
  %1551 = call float @dx.op.dot3.f32(i32 55, float %1531, float %1532, float %1533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1552 = select i1 %248, float %1507, float %1531
  %1553 = select i1 %248, float %1551, float %1532
  %1554 = select i1 %248, float 1.000000e+00, float %1533
  %1555 = select i1 %1547, float %1548, float %1552
  %1556 = select i1 %1547, float %1549, float %1553
  %1557 = select i1 %1547, float %1550, float %1554
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 0
  %1560 = extractvalue %dx.types.CBufRet.f32 %1558, 1
  %1561 = extractvalue %dx.types.CBufRet.f32 %1558, 2
  %1562 = fadd fast float %1559, %157
  %1563 = fadd fast float %1560, %158
  %1564 = fadd fast float %1561, %159
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.CBufRet.f32 %1565, 1
  %1568 = fsub fast float %1562, %1566
  %1569 = fsub fast float %1563, %1567
  %1570 = fmul fast float %1568, %1568
  %1571 = fmul fast float %1569, %1569
  %1572 = fadd fast float %1570, %1571
  %1573 = call float @dx.op.unary.f32(i32 24, float %1572)  ; Sqrt(value)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1565, 2
  %1575 = fcmp fast olt float %1573, %1574
  br i1 %1575, label %1576, label %1643

; <label>:1576                                    ; preds = %1490
  %1577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1577, 0
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 0
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  %1583 = extractvalue %dx.types.CBufRet.f32 %1577, 1
  %1584 = extractvalue %dx.types.CBufRet.f32 %1579, 1
  %1585 = extractvalue %dx.types.CBufRet.f32 %1581, 1
  %1586 = extractvalue %dx.types.CBufRet.f32 %1577, 3
  %1587 = extractvalue %dx.types.CBufRet.f32 %1579, 3
  %1588 = extractvalue %dx.types.CBufRet.f32 %1581, 3
  %1589 = fadd fast float %1586, %1562
  %1590 = fadd fast float %1587, %1563
  %1591 = fadd fast float %1588, %1564
  %1592 = fmul fast float %1589, %1578
  %1593 = call float @dx.op.tertiary.f32(i32 46, float %1590, float %1580, float %1592)  ; FMad(a,b,c)
  %1594 = call float @dx.op.tertiary.f32(i32 46, float %1591, float %1582, float %1593)  ; FMad(a,b,c)
  %1595 = fmul fast float %1589, %1583
  %1596 = call float @dx.op.tertiary.f32(i32 46, float %1590, float %1584, float %1595)  ; FMad(a,b,c)
  %1597 = call float @dx.op.tertiary.f32(i32 46, float %1591, float %1585, float %1596)  ; FMad(a,b,c)
  %1598 = fsub fast float %1594, %1586
  %1599 = fsub fast float %1597, %1587
  %1600 = fsub fast float %1598, %1566
  %1601 = fadd fast float %1600, %1574
  %1602 = fsub fast float %1599, %1567
  %1603 = fadd fast float %1602, %1574
  %1604 = extractvalue %dx.types.CBufRet.f32 %1565, 3
  %1605 = fmul fast float %1601, %1604
  %1606 = fmul fast float %1603, %1604
  %1607 = call float @dx.op.unary.f32(i32 7, float %1605)  ; Saturate(value)
  %1608 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1609 = fsub fast float 1.000000e+00, %1607
  %1610 = fsub fast float 1.000000e+00, %1608
  %1611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %64, float %1609, float %1610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1612 = extractvalue %dx.types.ResRet.f32 %1611, 0
  %1613 = fcmp fast ugt float %1612, 0.000000e+00
  br i1 %1613, label %1614, label %1917

; <label>:1614                                    ; preds = %1576
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 2
  %1617 = fmul fast float %1616, %1612
  %1618 = extractvalue %dx.types.CBufRet.f32 %1615, 3
  %1619 = fadd fast float %1618, %1617
  %1620 = extractvalue %dx.types.CBufRet.f32 %1581, 2
  %1621 = fadd fast float %1619, %1588
  %1622 = fmul fast float %1594, %1582
  %1623 = call float @dx.op.tertiary.f32(i32 46, float %1597, float %1585, float %1622)  ; FMad(a,b,c)
  %1624 = call float @dx.op.tertiary.f32(i32 46, float %1621, float %1620, float %1623)  ; FMad(a,b,c)
  %1625 = fsub fast float %1624, %1588
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1628 = fsub fast float %1625, %1627
  %1629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %64, float %1609, float %1610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1630 = extractvalue %dx.types.ResRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.ResRet.f32 %1629, 1
  %1632 = extractvalue %dx.types.ResRet.f32 %1629, 2
  %1633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %1609, float %1610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1634 = extractvalue %dx.types.ResRet.f32 %1633, 0
  %1635 = extractvalue %dx.types.ResRet.f32 %1633, 1
  %1636 = extractvalue %dx.types.ResRet.f32 %1633, 2
  %1637 = fadd fast float %1634, %1630
  %1638 = fmul fast float %1637, 0x3F847AE140000000
  %1639 = fadd fast float %1635, %1631
  %1640 = fmul fast float %1639, 0x3F847AE140000000
  %1641 = fadd fast float %1636, %1632
  %1642 = fmul fast float %1641, 0x3F847AE140000000
  br label %1917

; <label>:1643                                    ; preds = %1490
  %1644 = and i32 %224, 1
  %1645 = icmp eq i32 %1644, 0
  br i1 %1645, label %1917, label %1646

; <label>:1646                                    ; preds = %1643
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 0
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 0
  %1653 = extractvalue %dx.types.CBufRet.f32 %1647, 1
  %1654 = extractvalue %dx.types.CBufRet.f32 %1649, 1
  %1655 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1656 = extractvalue %dx.types.CBufRet.f32 %1647, 3
  %1657 = extractvalue %dx.types.CBufRet.f32 %1649, 3
  %1658 = extractvalue %dx.types.CBufRet.f32 %1651, 3
  %1659 = fadd fast float %1656, %1562
  %1660 = fadd fast float %1657, %1563
  %1661 = fadd fast float %1658, %1564
  %1662 = fmul fast float %1659, %1648
  %1663 = call float @dx.op.tertiary.f32(i32 46, float %1660, float %1650, float %1662)  ; FMad(a,b,c)
  %1664 = call float @dx.op.tertiary.f32(i32 46, float %1661, float %1652, float %1663)  ; FMad(a,b,c)
  %1665 = fmul fast float %1659, %1653
  %1666 = call float @dx.op.tertiary.f32(i32 46, float %1660, float %1654, float %1665)  ; FMad(a,b,c)
  %1667 = call float @dx.op.tertiary.f32(i32 46, float %1661, float %1655, float %1666)  ; FMad(a,b,c)
  %1668 = fsub fast float %1664, %1656
  %1669 = fsub fast float %1667, %1657
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.CBufRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.CBufRet.f32 %1670, 2
  %1674 = extractvalue %dx.types.CBufRet.f32 %1670, 3
  %1675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1676 = extractvalue %dx.types.CBufRet.f32 %1675, 3
  %1677 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.i32 %1677, 0
  %1679 = extractvalue %dx.types.CBufRet.i32 %1677, 1
  %1680 = udiv i32 %1679, %1678
  %1681 = fsub fast float %1668, %1671
  %1682 = fsub fast float %1669, %1672
  %1683 = call float @dx.op.binary.f32(i32 35, float %1681, float 0.000000e+00)  ; FMax(a,b)
  %1684 = call float @dx.op.binary.f32(i32 35, float %1682, float 0.000000e+00)  ; FMax(a,b)
  %1685 = call float @dx.op.binary.f32(i32 36, float %1683, float %1673)  ; FMin(a,b)
  %1686 = call float @dx.op.binary.f32(i32 36, float %1684, float %1674)  ; FMin(a,b)
  %1687 = add i32 %1678, -1
  %1688 = add i32 %1680, -1
  %1689 = fmul fast float %1685, %1676
  %1690 = fmul fast float %1686, %1676
  %1691 = fptoui float %1689 to i32
  %1692 = fptoui float %1690 to i32
  %1693 = call i32 @dx.op.binary.i32(i32 40, i32 %1691, i32 %1687)  ; UMin(a,b)
  %1694 = call i32 @dx.op.binary.i32(i32 40, i32 %1692, i32 %1688)  ; UMin(a,b)
  %1695 = mul i32 %1694, %1678
  %1696 = add i32 %1695, %1693
  %1697 = shl i32 %1696, 2
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = icmp eq i32 %1699, -1
  br i1 %1700, label %1917, label %1701

; <label>:1701                                    ; preds = %1646
  %1702 = mul i32 %1699, 148
  %1703 = add i32 %1702, 4
  %1704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.f32 %1704, 0
  %1706 = add i32 %1702, 8
  %1707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1708 = extractvalue %dx.types.ResRet.f32 %1707, 0
  %1709 = add i32 %1702, 36
  %1710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.f32 %1710, 0
  %1712 = add i32 %1702, 60
  %1713 = add i32 %1702, 92
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = add i32 %1702, 116
  %1717 = fsub fast float %1668, %1705
  %1718 = fsub fast float %1669, %1708
  %1719 = fmul fast float %1676, %1717
  %1720 = fmul fast float %1676, %1718
  %1721 = call float @dx.op.unary.f32(i32 7, float %1719)  ; Saturate(value)
  %1722 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1726 = call float @dx.op.unary.f32(i32 83, float %1721)  ; DerivCoarseX(value)
  %1727 = call float @dx.op.unary.f32(i32 83, float %1723)  ; DerivCoarseX(value)
  %1728 = call float @dx.op.unary.f32(i32 84, float %1721)  ; DerivCoarseY(value)
  %1729 = call float @dx.op.unary.f32(i32 84, float %1723)  ; DerivCoarseY(value)
  %1730 = fmul fast float %1726, %1725
  %1731 = fmul fast float %1727, %1725
  %1732 = fmul fast float %1728, %1725
  %1733 = fmul fast float %1729, %1725
  %1734 = call float @dx.op.dot2.f32(i32 54, float %1732, float %1733, float %1732, float %1733)  ; Dot2(ax,ay,bx,by)
  %1735 = call float @dx.op.dot2.f32(i32 54, float %1730, float %1731, float %1730, float %1731)  ; Dot2(ax,ay,bx,by)
  %1736 = call float @dx.op.binary.f32(i32 35, float %1735, float %1734)  ; FMax(a,b)
  %1737 = call float @dx.op.unary.f32(i32 23, float %1736)  ; Log(value)
  %1738 = fmul fast float %1737, 5.000000e-01
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 1
  %1741 = fadd fast float %1740, %1738
  %1742 = call float @dx.op.binary.f32(i32 35, float %1741, float 0.000000e+00)  ; FMax(a,b)
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 3
  %1745 = fadd fast float %1744, %1742
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 3
  %1748 = fadd fast float %1745, %1747
  %1749 = add i32 %1715, 0
  %1750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1749, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1751 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1750, i32 0)  ; GetDimensions(handle,mipLevel)
  %1752 = extractvalue %dx.types.Dimensions %1751, 0
  %1753 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1752)  ; FirstbitLo(value)
  %1754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.i32 %1754, 1
  %1756 = sub nsw i32 %1755, %1753
  %1757 = sitofp i32 %1756 to float
  %1758 = fsub fast float %1748, %1757
  %1759 = call float @dx.op.binary.f32(i32 35, float %1758, float 0.000000e+00)  ; FMax(a,b)
  %1760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1750, %dx.types.Handle %62, float %1721, float %1723, float %1711, float undef, i32 0, i32 0, i32 undef, float %1759)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1761 = extractvalue %dx.types.ResRet.f32 %1760, 0
  %1762 = fcmp ule float %1761, 0x3FE0101020000000
  %1763 = extractvalue %dx.types.CBufRet.i32 %1754, 0
  %1764 = and i32 %1763, 128
  %1765 = icmp ne i32 %1764, 0
  %1766 = and i1 %1762, %1765
  br i1 %1766, label %1917, label %1767

; <label>:1767                                    ; preds = %1701
  %1768 = add i32 %1702, 20
  %1769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.f32 %1769, 0
  %1771 = add i32 %1702, 24
  %1772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.f32 %1772, 0
  %1774 = add i32 %1702, 40
  %1775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.f32 %1775, 0
  %1777 = add i32 %1702, 96
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 2
  %1782 = fmul fast float %1781, %1721
  %1783 = fmul fast float %1781, %1723
  %1784 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1785 = fadd fast float %1782, %1784
  %1786 = fadd fast float %1783, %1784
  %1787 = add i32 %1779, 0
  %1788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1787, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1789 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1788, i32 0)  ; GetDimensions(handle,mipLevel)
  %1790 = extractvalue %dx.types.Dimensions %1789, 0
  %1791 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1790)  ; FirstbitLo(value)
  %1792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.i32 %1792, 1
  %1794 = sub nsw i32 %1793, %1791
  %1795 = sitofp i32 %1794 to float
  %1796 = fsub fast float %1745, %1795
  %1797 = call float @dx.op.binary.f32(i32 35, float %1796, float 0.000000e+00)  ; FMax(a,b)
  %1798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1788, %dx.types.Handle %62, float %1785, float %1786, float %1776, float undef, i32 0, i32 0, i32 undef, float %1797)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1799 = extractvalue %dx.types.ResRet.f32 %1798, 0
  %1800 = fmul fast float %1799, %1770
  %1801 = fadd fast float %1800, %1773
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.CBufRet.f32 %1802, 1
  %1805 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1807 = extractvalue %dx.types.CBufRet.f32 %1806, 3
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 3
  %1810 = extractvalue %dx.types.CBufRet.f32 %1802, 3
  %1811 = fadd fast float %1807, %1668
  %1812 = fadd fast float %1809, %1669
  %1813 = fadd fast float %1801, %1810
  %1814 = fmul fast float %1811, %1803
  %1815 = call float @dx.op.tertiary.f32(i32 46, float %1812, float %1804, float %1814)  ; FMad(a,b,c)
  %1816 = call float @dx.op.tertiary.f32(i32 46, float %1813, float %1805, float %1815)  ; FMad(a,b,c)
  %1817 = fsub fast float %1816, %1810
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  %1820 = fsub fast float %1817, %1819
  %1821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.i32 %1821, 0
  %1823 = call i32 @dx.op.binary.i32(i32 40, i32 %1699, i32 %1822)  ; UMin(a,b)
  %1824 = mul i32 %1823, 36
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = add i32 %1824, 4
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 0
  %1830 = fmul fast float %1829, %1721
  %1831 = fmul fast float %1829, %1723
  %1832 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1833 = fadd fast float %1830, %1832
  %1834 = fadd fast float %1831, %1832
  %1835 = icmp eq i32 %1826, 0
  br i1 %1835, label %1904, label %1836

; <label>:1836                                    ; preds = %1767
  br label %1837

; <label>:1837                                    ; preds = %1894, %1836
  %1838 = phi float [ %1895, %1894 ], [ 0.000000e+00, %1836 ]
  %1839 = phi float [ %1896, %1894 ], [ 0.000000e+00, %1836 ]
  %1840 = phi float [ %1897, %1894 ], [ 0.000000e+00, %1836 ]
  %1841 = phi float [ %1898, %1894 ], [ 0.000000e+00, %1836 ]
  %1842 = phi float [ %1899, %1894 ], [ 0.000000e+00, %1836 ]
  %1843 = phi float [ %1900, %1894 ], [ 0.000000e+00, %1836 ]
  %1844 = phi i32 [ %1901, %1894 ], [ 0, %1836 ]
  %1845 = shl i32 %1844, 2
  %1846 = add i32 %1712, %1845
  %1847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1849 = add i32 %1716, %1845
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = add i32 %1851, 0
  %1853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1852, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1854 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1853, i32 0)  ; GetDimensions(handle,mipLevel)
  %1855 = extractvalue %dx.types.Dimensions %1854, 0
  %1856 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1855)  ; FirstbitLo(value)
  %1857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.i32 %1857, 1
  %1859 = sub nsw i32 %1858, %1856
  %1860 = sitofp i32 %1859 to float
  %1861 = fsub fast float %1745, %1860
  %1862 = call float @dx.op.binary.f32(i32 35, float %1861, float 0.000000e+00)  ; FMax(a,b)
  %1863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1853, %dx.types.Handle %62, float %1833, float %1834, float %1848, float undef, i32 0, i32 0, i32 undef, float %1862)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1864 = extractvalue %dx.types.ResRet.f32 %1863, 0
  %1865 = fcmp fast ogt float %1864, 0.000000e+00
  br i1 %1865, label %1866, label %1894

; <label>:1866                                    ; preds = %1837
  %1867 = add i32 %1827, %1845
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = and i32 %1869, 32767
  %1871 = mul nuw nsw i32 %1870, 928
  %1872 = add nuw nsw i32 %1871, 48
  %1873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.ResRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.ResRet.f32 %1873, 2
  %1877 = add nuw nsw i32 %1871, 60
  %1878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1882 = fmul fast float %1874, %1864
  %1883 = fmul fast float %1875, %1864
  %1884 = fmul fast float %1876, %1864
  %1885 = fadd fast float %1882, %1838
  %1886 = fadd fast float %1883, %1839
  %1887 = fadd fast float %1884, %1840
  %1888 = fmul fast float %1879, %1864
  %1889 = fmul fast float %1880, %1864
  %1890 = fmul fast float %1881, %1864
  %1891 = fadd fast float %1888, %1841
  %1892 = fadd fast float %1889, %1842
  %1893 = fadd fast float %1890, %1843
  br label %1894

; <label>:1894                                    ; preds = %1866, %1837
  %1895 = phi float [ %1885, %1866 ], [ %1838, %1837 ]
  %1896 = phi float [ %1886, %1866 ], [ %1839, %1837 ]
  %1897 = phi float [ %1887, %1866 ], [ %1840, %1837 ]
  %1898 = phi float [ %1891, %1866 ], [ %1841, %1837 ]
  %1899 = phi float [ %1892, %1866 ], [ %1842, %1837 ]
  %1900 = phi float [ %1893, %1866 ], [ %1843, %1837 ]
  %1901 = add nuw i32 %1844, 1
  %1902 = icmp eq i32 %1901, %1826
  br i1 %1902, label %1903, label %1837

; <label>:1903                                    ; preds = %1894
  br label %1904

; <label>:1904                                    ; preds = %1903, %1767
  %1905 = phi float [ 0.000000e+00, %1767 ], [ %1895, %1903 ]
  %1906 = phi float [ 0.000000e+00, %1767 ], [ %1896, %1903 ]
  %1907 = phi float [ 0.000000e+00, %1767 ], [ %1897, %1903 ]
  %1908 = phi float [ 0.000000e+00, %1767 ], [ %1898, %1903 ]
  %1909 = phi float [ 0.000000e+00, %1767 ], [ %1899, %1903 ]
  %1910 = phi float [ 0.000000e+00, %1767 ], [ %1900, %1903 ]
  %1911 = fadd fast float %1908, %1905
  %1912 = fmul fast float %1911, 0x3F847AE140000000
  %1913 = fadd fast float %1909, %1906
  %1914 = fmul fast float %1913, 0x3F847AE140000000
  %1915 = fadd fast float %1910, %1907
  %1916 = fmul fast float %1915, 0x3F847AE140000000
  br label %1917

; <label>:1917                                    ; preds = %1904, %1701, %1646, %1643, %1614, %1576
  %1918 = phi float [ %1628, %1614 ], [ -1.310720e+05, %1576 ], [ %1820, %1904 ], [ -1.310720e+05, %1646 ], [ -1.310720e+05, %1701 ], [ -1.310720e+05, %1643 ]
  %1919 = phi float [ %1638, %1614 ], [ 0.000000e+00, %1576 ], [ %1912, %1904 ], [ 0.000000e+00, %1646 ], [ 0.000000e+00, %1701 ], [ 0.000000e+00, %1643 ]
  %1920 = phi float [ %1640, %1614 ], [ 0.000000e+00, %1576 ], [ %1914, %1904 ], [ 0.000000e+00, %1646 ], [ 0.000000e+00, %1701 ], [ 0.000000e+00, %1643 ]
  %1921 = phi float [ %1642, %1614 ], [ 0.000000e+00, %1576 ], [ %1916, %1904 ], [ 0.000000e+00, %1646 ], [ 0.000000e+00, %1701 ], [ 0.000000e+00, %1643 ]
  %1922 = phi i1 [ true, %1614 ], [ false, %1576 ], [ true, %1904 ], [ false, %1646 ], [ false, %1701 ], [ false, %1643 ]
  %1923 = and i32 %224, 3
  %1924 = icmp eq i32 %1923, 1
  %1925 = select i1 %1924, float 1.000000e+00, float 0.000000e+00
  %1926 = fsub fast float %1918, %159
  %1927 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1928 = select i1 %1922, float %1927, float 1.000000e+00
  %1929 = fmul fast float %1928, %1925
  %1930 = icmp eq i32 %1923, 3
  %1931 = select i1 %1930, float 1.000000e+00, float %1929
  %1932 = call float @dx.op.binary.f32(i32 35, float %1491, float %1931)  ; FMax(a,b)
  %1933 = call float @dx.op.unary.f32(i32 7, float %1932)  ; Saturate(value)
  %1934 = fcmp fast une float %1933, 0.000000e+00
  %1935 = call float @dx.op.dot3.f32(i32 55, float %157, float %158, float %159, float %157, float %158, float %159)  ; Dot3(ax,ay,az,bx,by,bz)
  %1936 = call float @dx.op.unary.f32(i32 25, float %1935)  ; Rsqrt(value)
  br i1 %1934, label %1944, label %1937

; <label>:1937                                    ; preds = %1917
  %1938 = fmul fast float %1936, %157
  %1939 = fmul fast float %1936, %158
  %1940 = fmul fast float %1936, %159
  %1941 = fsub fast float -0.000000e+00, %1938
  %1942 = fsub fast float -0.000000e+00, %1939
  %1943 = fsub fast float -0.000000e+00, %1940
  br label %2112

; <label>:1944                                    ; preds = %1917
  %1945 = fmul fast float %157, %1936
  %1946 = fsub fast float -0.000000e+00, %1945
  %1947 = fmul fast float %158, %1936
  %1948 = fsub fast float -0.000000e+00, %1947
  %1949 = fmul fast float %159, %1936
  %1950 = fsub fast float -0.000000e+00, %1949
  %1951 = call float @dx.op.dot3.f32(i32 55, float %1946, float %1948, float %1950, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1952 = fmul fast float %1933, 2.500000e+00
  %1953 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %1954 = fmul fast float %1933, 0x4013FFFFE0000000
  %1955 = fadd fast float %1954, 0xBFFFFFFFE0000000
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1957 = fmul fast float %1933, 0x4004000020000000
  %1958 = fadd fast float %1957, 0xBFF8000040000000
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1961 = fmul fast float %1522, 1.000000e+01
  %1962 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  %1963 = fmul fast float %1962, 2.000000e+00
  %1964 = fsub fast float 3.000000e+00, %1963
  %1965 = fmul fast float %1962, %1962
  %1966 = fmul fast float %1965, %1964
  %1967 = fsub fast float 1.000000e+00, %1966
  %1968 = fsub fast float 0x3FE3333340000000, %1543
  %1969 = fmul fast float %1968, 0x400AAAAAA0000000
  %1970 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1971 = fmul fast float %1967, %1970
  %1972 = fmul fast float %1555, 0x3FEA2B8620000000
  %1973 = fmul fast float %1556, 0x3FEA2B8620000000
  %1974 = fmul fast float %1557, 0x3FEA2B8620000000
  %1975 = fadd fast float %1972, 0x3FC81DFBA0000000
  %1976 = fmul fast float %1975, %1555
  %1977 = fadd fast float %1976, 0x3F910E6020000000
  %1978 = fadd fast float %1973, 0x3FC81DFBA0000000
  %1979 = fmul fast float %1978, %1556
  %1980 = fadd fast float %1979, 0x3F910E6020000000
  %1981 = fadd fast float %1974, 0x3FC81DFBA0000000
  %1982 = fmul fast float %1981, %1557
  %1983 = fadd fast float %1982, 0x3F910E6020000000
  %1984 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1985 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1986 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1987 = fsub fast float %1984, %1555
  %1988 = fsub fast float %1985, %1556
  %1989 = fsub fast float %1986, %1557
  %1990 = fmul fast float %1987, %1960
  %1991 = fmul fast float %1990, %1971
  %1992 = fmul fast float %1988, %1960
  %1993 = fmul fast float %1992, %1971
  %1994 = fmul fast float %1989, %1960
  %1995 = fmul fast float %1994, %1971
  %1996 = fadd fast float %1991, %1555
  %1997 = fadd fast float %1993, %1556
  %1998 = fadd fast float %1995, %1557
  %1999 = fmul fast float %1503, %1503
  %2000 = fmul fast float %1999, %1999
  %2001 = fadd fast float %1956, 1.000000e+00
  %2002 = fsub fast float %2001, %1971
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2004 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2005 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2006 = fsub fast float 1.000000e+00, %2000
  %2007 = call float @dx.op.binary.f32(i32 36, float %2003, float %2006)  ; FMin(a,b)
  %2008 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %2009 = call float @dx.op.binary.f32(i32 35, float %2007, float %2008)  ; FMax(a,b)
  %2010 = fadd fast float %2005, 0xBFE4CCCCC0000000
  %2011 = fmul fast float %2010, 0x4006DB6DA0000000
  %2012 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  %2013 = fmul fast float %2012, 2.000000e+00
  %2014 = fsub fast float 3.000000e+00, %2013
  %2015 = bitcast float %1540 to i32
  %2016 = ashr i32 %2015, 1
  %2017 = add nsw i32 %2016, 532487669
  %2018 = bitcast i32 %2017 to float
  %2019 = fsub fast float 1.000000e+00, %2018
  %2020 = bitcast float %2019 to i32
  %2021 = sub nsw i32 2129859010, %2020
  %2022 = bitcast i32 %2021 to float
  %2023 = fmul fast float %2022, 2.000000e+00
  %2024 = bitcast float %1541 to i32
  %2025 = ashr i32 %2024, 1
  %2026 = add nsw i32 %2025, 532487669
  %2027 = bitcast i32 %2026 to float
  %2028 = fsub fast float 1.000000e+00, %2027
  %2029 = bitcast float %2028 to i32
  %2030 = sub nsw i32 2129859010, %2029
  %2031 = bitcast i32 %2030 to float
  %2032 = fmul fast float %2031, 2.000000e+00
  %2033 = bitcast float %1542 to i32
  %2034 = ashr i32 %2033, 1
  %2035 = add nsw i32 %2034, 532487669
  %2036 = bitcast i32 %2035 to float
  %2037 = fsub fast float 1.000000e+00, %2036
  %2038 = bitcast float %2037 to i32
  %2039 = sub nsw i32 2129859010, %2038
  %2040 = bitcast i32 %2039 to float
  %2041 = fmul fast float %2040, 2.000000e+00
  %2042 = fsub fast float 0x4002A9FBE0000000, %2023
  %2043 = fadd fast float %2023, 0x3FD54FDF00000000
  %2044 = bitcast float %2043 to i32
  %2045 = sub nsw i32 2129859010, %2044
  %2046 = bitcast i32 %2045 to float
  %2047 = fmul fast float %2046, %2042
  %2048 = fmul fast float %2047, %2047
  %2049 = fsub fast float 0x4002A9FBE0000000, %2032
  %2050 = fadd fast float %2032, 0x3FD54FDF00000000
  %2051 = bitcast float %2050 to i32
  %2052 = sub nsw i32 2129859010, %2051
  %2053 = bitcast i32 %2052 to float
  %2054 = fmul fast float %2053, %2049
  %2055 = fmul fast float %2054, %2054
  %2056 = fsub fast float 0x4002A9FBE0000000, %2041
  %2057 = fadd fast float %2041, 0x3FD54FDF00000000
  %2058 = bitcast float %2057 to i32
  %2059 = sub nsw i32 2129859010, %2058
  %2060 = bitcast i32 %2059 to float
  %2061 = fmul fast float %2060, %2056
  %2062 = fmul fast float %2061, %2061
  %2063 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2048)  ; FMax(a,b)
  %2064 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2055)  ; FMax(a,b)
  %2065 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2062)  ; FMax(a,b)
  %2066 = fsub fast float 1.000000e+00, %1951
  %2067 = fadd fast float %2066, %1967
  %2068 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2069 = fsub fast float 1.000000e+00, %1931
  %2070 = fmul fast float %2009, %2069
  %2071 = fmul fast float %2012, %2012
  %2072 = fmul fast float %2071, %2070
  %2073 = fmul fast float %2072, %2014
  %2074 = fmul fast float %2069, 0xBFE99999A0000000
  %2075 = fmul fast float %2074, %1960
  %2076 = fmul fast float %2075, %1971
  %2077 = fadd fast float %2076, 1.000000e+00
  %2078 = fadd fast float %1543, -1.000000e+00
  %2079 = fmul fast float %2077, %2078
  %2080 = fadd fast float %2079, 1.000000e+00
  %2081 = fsub fast float %2063, %1540
  %2082 = fsub fast float %2064, %1541
  %2083 = fsub fast float %2065, %1542
  %2084 = fmul fast float %2073, %2081
  %2085 = fmul fast float %2073, %2082
  %2086 = fmul fast float %2073, %2083
  %2087 = fadd fast float %2084, %1540
  %2088 = fadd fast float %2085, %1541
  %2089 = fadd fast float %2086, %1542
  %2090 = fsub fast float %105, %1519
  %2091 = fsub fast float %106, %1520
  %2092 = fsub fast float %107, %1521
  %2093 = fmul fast float %2073, %2090
  %2094 = fmul fast float %2073, %2091
  %2095 = fmul fast float %2073, %2092
  %2096 = fadd fast float %2093, %1519
  %2097 = fadd fast float %2094, %1520
  %2098 = fadd fast float %2095, %1521
  %2099 = fmul fast float %2073, %2068
  %2100 = call float @dx.op.unary.f32(i32 7, float %2080)  ; Saturate(value)
  %2101 = fsub fast float 1.000000e+00, %2100
  %2102 = fmul fast float %2099, %2101
  %2103 = fadd fast float %2102, %2100
  %2104 = fsub fast float 1.000000e+00, %1503
  %2105 = fmul fast float %2073, %2104
  %2106 = fadd fast float %2105, %1503
  %2107 = call float @dx.op.dot3.f32(i32 55, float %2096, float %2097, float %2098, float %2096, float %2097, float %2098)  ; Dot3(ax,ay,az,bx,by,bz)
  %2108 = call float @dx.op.unary.f32(i32 25, float %2107)  ; Rsqrt(value)
  %2109 = fmul fast float %2096, %2108
  %2110 = fmul fast float %2097, %2108
  %2111 = fmul fast float %2098, %2108
  br label %2112

; <label>:2112                                    ; preds = %1944, %1937
  %2113 = phi float [ %1943, %1937 ], [ %1950, %1944 ]
  %2114 = phi float [ %1942, %1937 ], [ %1948, %1944 ]
  %2115 = phi float [ %1941, %1937 ], [ %1946, %1944 ]
  %2116 = phi float [ %1940, %1937 ], [ %1949, %1944 ]
  %2117 = phi float [ %1939, %1937 ], [ %1947, %1944 ]
  %2118 = phi float [ %1938, %1937 ], [ %1945, %1944 ]
  %2119 = phi float [ %1540, %1937 ], [ %2087, %1944 ]
  %2120 = phi float [ %1541, %1937 ], [ %2088, %1944 ]
  %2121 = phi float [ %1542, %1937 ], [ %2089, %1944 ]
  %2122 = phi float [ %1519, %1937 ], [ %2109, %1944 ]
  %2123 = phi float [ %1520, %1937 ], [ %2110, %1944 ]
  %2124 = phi float [ %1521, %1937 ], [ %2111, %1944 ]
  %2125 = phi float [ %1555, %1937 ], [ %1996, %1944 ]
  %2126 = phi float [ %1556, %1937 ], [ %1997, %1944 ]
  %2127 = phi float [ %1557, %1937 ], [ %1998, %1944 ]
  %2128 = phi float [ %1543, %1937 ], [ %2103, %1944 ]
  %2129 = phi float [ %1503, %1937 ], [ %2106, %1944 ]
  %2130 = fsub fast float -0.000000e+00, %159
  %2131 = select i1 %248, float 0.000000e+00, float %2121
  %2132 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2123, float %2124, float %2115, float %2114, float %2113)  ; Dot3(ax,ay,az,bx,by,bz)
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2134 = call float @dx.op.dot3.f32(i32 55, float %2118, float %2117, float %2116, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %2135 = fmul fast float %2134, 2.000000e+00
  %2136 = fmul fast float %2135, %2122
  %2137 = fmul fast float %2135, %2123
  %2138 = fmul fast float %2135, %2124
  %2139 = fsub fast float %2118, %2136
  %2140 = fsub fast float %2117, %2137
  %2141 = fsub fast float %2116, %2138
  %2142 = call float @dx.op.binary.f32(i32 36, float %2129, float 1.000000e+00)  ; FMin(a,b)
  %2143 = fsub fast float 1.000000e+00, %2142
  %2144 = bitcast float %2143 to i32
  %2145 = ashr i32 %2144, 1
  %2146 = add nsw i32 %2145, 532487669
  %2147 = bitcast i32 %2146 to float
  %2148 = fsub fast float 1.000000e+00, %2128
  %2149 = call float @dx.op.binary.f32(i32 35, float %2148, float 0x3F847AE140000000)  ; FMax(a,b)
  %2150 = fmul fast float %2149, %2149
  %2151 = fmul fast float %2150, %2150
  %2152 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %64, float %2147, float %2151, float %2152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2154 = extractvalue %dx.types.ResRet.f32 %2153, 0
  %2155 = fsub fast float 1.000000e+00, %2129
  %2156 = bitcast float %2155 to i32
  %2157 = sub nsw i32 2129859010, %2156
  %2158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2158, 0
  %2160 = extractvalue %dx.types.CBufRet.f32 %2158, 1
  %2161 = fadd fast float %2159, %157
  %2162 = fadd fast float %2160, %158
  %2163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2164 = extractvalue %dx.types.CBufRet.i32 %2163, 0
  %2165 = icmp eq i32 %2164, 1
  br i1 %2165, label %2166, label %2201

; <label>:2166                                    ; preds = %2112
  %2167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2168 = extractvalue %dx.types.CBufRet.f32 %2167, 0
  %2169 = extractvalue %dx.types.CBufRet.f32 %2167, 1
  %2170 = fsub fast float %2161, %2168
  %2171 = fsub fast float %2162, %2169
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 0
  %2174 = extractvalue %dx.types.CBufRet.f32 %2172, 1
  %2175 = fmul fast float %2170, %2173
  %2176 = fmul fast float %2171, %2174
  %2177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %2175, float %2176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2178 = extractvalue %dx.types.ResRet.f32 %2177, 0
  %2179 = fcmp fast ogt float %2178, 0.000000e+00
  %2180 = extractvalue %dx.types.CBufRet.i32 %2163, 3
  %2181 = icmp ne i32 %2180, 0
  %2182 = and i1 %2179, %2181
  br i1 %2182, label %2183, label %2201, !dx.controlflow.hints !106

; <label>:2183                                    ; preds = %2166
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 0
  %2186 = extractvalue %dx.types.CBufRet.f32 %2184, 1
  %2187 = fsub fast float %2161, %2185
  %2188 = fsub fast float %2162, %2186
  %2189 = fmul fast float %2187, %2187
  %2190 = fmul fast float %2188, %2188
  %2191 = fadd fast float %2189, %2190
  %2192 = uitofp i32 %2180 to float
  %2193 = fmul fast float %2192, %2192
  %2194 = fcmp fast ogt float %2191, %2193
  br i1 %2194, label %2201, label %2195

; <label>:2195                                    ; preds = %2183
  %2196 = call float @dx.op.unary.f32(i32 24, float %2191)  ; Sqrt(value)
  %2197 = fsub fast float %2192, %2196
  %2198 = fmul fast float %2197, 0x3F75555560000000
  %2199 = call float @dx.op.unary.f32(i32 7, float %2198)  ; Saturate(value)
  %2200 = call float @dx.op.binary.f32(i32 36, float %2199, float %2178)  ; FMin(a,b)
  br label %2201

; <label>:2201                                    ; preds = %2195, %2183, %2166, %2112
  %2202 = phi float [ 1.000000e+00, %2112 ], [ %2200, %2195 ], [ %2178, %2166 ], [ 0.000000e+00, %2183 ]
  %2203 = fcmp fast ogt float %2202, 0.000000e+00
  br i1 %2203, label %2204, label %2303, !dx.controlflow.hints !107

; <label>:2204                                    ; preds = %2201
  %2205 = fadd fast float %188, 5.000000e-01
  %2206 = call float @dx.op.unary.f32(i32 27, float %2205)  ; Round_ni(value)
  %2207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %64, float %186, float %187, float %2206, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2208 = extractvalue %dx.types.ResRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.ResRet.f32 %2207, 1
  %2210 = extractvalue %dx.types.ResRet.f32 %2207, 2
  %2211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2212 = extractvalue %dx.types.CBufRet.f32 %2211, 3
  %2213 = fmul fast float %2212, %2208
  %2214 = fmul fast float %2212, %2209
  %2215 = fmul fast float %2212, %2210
  %2216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %64, float %186, float %187, float %2206, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2217 = extractvalue %dx.types.ResRet.f32 %2216, 0
  %2218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %64, float %186, float %187, float %2206, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 0
  %2220 = extractvalue %dx.types.ResRet.f32 %2218, 1
  %2221 = fmul fast float %2219, 2.000000e+00
  %2222 = fmul fast float %2220, 2.000000e+00
  %2223 = fadd fast float %2221, -1.000000e+00
  %2224 = fadd fast float %2222, -1.000000e+00
  %2225 = fadd fast float %2223, %2224
  %2226 = fmul fast float %2225, 5.000000e-01
  %2227 = fsub fast float %2223, %2224
  %2228 = fmul fast float %2227, 5.000000e-01
  %2229 = call float @dx.op.unary.f32(i32 6, float %2226)  ; FAbs(value)
  %2230 = fsub fast float 1.000000e+00, %2229
  %2231 = call float @dx.op.unary.f32(i32 6, float %2228)  ; FAbs(value)
  %2232 = fsub fast float %2230, %2231
  %2233 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2232)  ; FMax(a,b)
  %2234 = call float @dx.op.dot3.f32(i32 55, float %2226, float %2228, float %2233, float %2226, float %2228, float %2233)  ; Dot3(ax,ay,az,bx,by,bz)
  %2235 = bitcast float %2234 to i32
  %2236 = ashr i32 %2235, 1
  %2237 = sub nsw i32 1597250115, %2236
  %2238 = bitcast i32 %2237 to float
  %2239 = fmul fast float %2238, %2226
  %2240 = fmul fast float %2238, %2228
  %2241 = fmul fast float %2238, %2233
  %2242 = fsub fast float 1.000000e+00, %2217
  %2243 = fdiv fast float %2242, %2241
  %2244 = fmul fast float %2241, %105
  %2245 = fmul fast float %2241, %106
  %2246 = fmul fast float %2241, %107
  %2247 = fmul fast float %2239, %108
  %2248 = fmul fast float %2239, %109
  %2249 = fmul fast float %2239, %110
  %2250 = fadd fast float %2244, %2247
  %2251 = fadd fast float %2245, %2248
  %2252 = fadd fast float %2246, %2249
  %2253 = fmul fast float %2240, %121
  %2254 = fmul fast float %2240, %122
  %2255 = fmul fast float %2240, %123
  %2256 = fadd fast float %2250, %2253
  %2257 = fadd fast float %2251, %2254
  %2258 = fadd fast float %2252, %2255
  %2259 = call float @dx.op.dot3.f32(i32 55, float %2256, float %2257, float %2258, float %2256, float %2257, float %2258)  ; Dot3(ax,ay,az,bx,by,bz)
  %2260 = call float @dx.op.unary.f32(i32 25, float %2259)  ; Rsqrt(value)
  %2261 = fmul fast float %2256, %2260
  %2262 = fmul fast float %2257, %2260
  %2263 = fmul fast float %2258, %2260
  %2264 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2123, float %2124, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %2265 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2266 = fmul fast float %2265, 5.000000e-01
  %2267 = fadd fast float %2266, 5.000000e-01
  %2268 = fmul fast float %2267, %2217
  %2269 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2123, float %2124, float %2261, float %2262, float %2263)  ; Dot3(ax,ay,az,bx,by,bz)
  %2270 = call float @dx.op.unary.f32(i32 7, float %2269)  ; Saturate(value)
  %2271 = fmul fast float %2270, %2243
  %2272 = fadd fast float %2268, %2271
  %2273 = fsub fast float 5.000000e-01, %2266
  %2274 = fmul fast float %2273, %2125
  %2275 = fmul fast float %2273, %2126
  %2276 = fmul fast float %2273, %2127
  %2277 = fadd fast float %2272, %2274
  %2278 = fmul fast float %2277, %2213
  %2279 = fadd fast float %2272, %2275
  %2280 = fmul fast float %2279, %2214
  %2281 = fadd fast float %2272, %2276
  %2282 = fmul fast float %2281, %2215
  %2283 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %2284 = call float @dx.op.unary.f32(i32 7, float %2283)  ; Saturate(value)
  %2285 = fmul fast float %2284, 5.000000e-01
  %2286 = fadd fast float %2285, 5.000000e-01
  %2287 = fmul fast float %2286, %2217
  %2288 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float %2261, float %2262, float %2263)  ; Dot3(ax,ay,az,bx,by,bz)
  %2289 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2290 = fmul fast float %2289, %2243
  %2291 = fadd fast float %2287, %2290
  %2292 = fsub fast float 5.000000e-01, %2285
  %2293 = fmul fast float %2292, %2125
  %2294 = fmul fast float %2292, %2126
  %2295 = fmul fast float %2292, %2127
  %2296 = fadd fast float %2291, %2293
  %2297 = fmul fast float %2296, %2213
  %2298 = fadd fast float %2291, %2294
  %2299 = fmul fast float %2298, %2214
  %2300 = fadd fast float %2291, %2295
  %2301 = fmul fast float %2300, %2215
  %2302 = call float @dx.op.dot3.f32(i32 55, float %2213, float %2214, float %2215, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2303

; <label>:2303                                    ; preds = %2204, %2201
  %2304 = phi float [ %2302, %2204 ], [ 0.000000e+00, %2201 ]
  %2305 = phi float [ %2297, %2204 ], [ 0.000000e+00, %2201 ]
  %2306 = phi float [ %2299, %2204 ], [ 0.000000e+00, %2201 ]
  %2307 = phi float [ %2301, %2204 ], [ 0.000000e+00, %2201 ]
  %2308 = phi float [ %2278, %2204 ], [ 0.000000e+00, %2201 ]
  %2309 = phi float [ %2280, %2204 ], [ 0.000000e+00, %2201 ]
  %2310 = phi float [ %2282, %2204 ], [ 0.000000e+00, %2201 ]
  %2311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.f32 %2311, 0
  %2313 = fcmp fast ogt float %2312, 0.000000e+00
  %2314 = and i1 %2203, %2313
  br i1 %2314, label %2315, label %2519, !dx.controlflow.hints !108

; <label>:2315                                    ; preds = %2303
  %2316 = extractvalue %dx.types.CBufRet.f32 %2158, 2
  %2317 = fadd fast float %2316, %159
  %2318 = fmul fast float %2122, 3.200000e+01
  %2319 = fmul fast float %2123, 3.200000e+01
  %2320 = fadd fast float %2161, %2318
  %2321 = fadd fast float %2162, %2319
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.CBufRet.f32 %2322, 1
  %2325 = fsub fast float %2320, %2323
  %2326 = fsub fast float %2321, %2324
  %2327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2328 = extractvalue %dx.types.CBufRet.f32 %2327, 0
  %2329 = extractvalue %dx.types.CBufRet.f32 %2327, 1
  %2330 = fmul fast float %2325, %2328
  %2331 = fmul fast float %2326, %2329
  %2332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2333 = extractvalue %dx.types.CBufRet.f32 %2332, 0
  %2334 = extractvalue %dx.types.CBufRet.f32 %2332, 1
  %2335 = fsub fast float %2161, %2333
  %2336 = fsub fast float %2162, %2334
  %2337 = fmul fast float %2335, %2335
  %2338 = fmul fast float %2336, %2336
  %2339 = fadd fast float %2337, %2338
  %2340 = call float @dx.op.unary.f32(i32 24, float %2339)  ; Sqrt(value)
  %2341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2342 = extractvalue %dx.types.CBufRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.CBufRet.f32 %2341, 1
  %2344 = fsub fast float %2340, %2342
  %2345 = fdiv fast float %2344, %2343
  %2346 = call float @dx.op.unary.f32(i32 7, float %2345)  ; Saturate(value)
  %2347 = fmul fast float %2346, 2.000000e+00
  %2348 = fsub fast float 3.000000e+00, %2347
  %2349 = fmul fast float %2346, %2346
  %2350 = fmul fast float %2349, %2348
  %2351 = fcmp fast oge float %2330, 0.000000e+00
  %2352 = fcmp fast ole float %2330, 1.000000e+00
  %2353 = and i1 %2352, %2351
  %2354 = fcmp fast oge float %2331, 0.000000e+00
  %2355 = and i1 %2354, %2353
  %2356 = fcmp fast ole float %2331, 1.000000e+00
  %2357 = and i1 %2356, %2355
  %2358 = fcmp fast ogt float %2350, 0.000000e+00
  %2359 = and i1 %2358, %2357
  br i1 %2359, label %2360, label %2483, !dx.controlflow.hints !109

; <label>:2360                                    ; preds = %2315
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.f32 %2361, 2
  %2363 = extractvalue %dx.types.CBufRet.f32 %2361, 3
  %2364 = fmul fast float %2362, %2330
  %2365 = fmul fast float %2363, %2331
  %2366 = call float @dx.op.unary.f32(i32 27, float %2364)  ; Round_ni(value)
  %2367 = call float @dx.op.unary.f32(i32 27, float %2365)  ; Round_ni(value)
  %2368 = fptosi float %2366 to i32
  %2369 = fptosi float %2367 to i32
  %2370 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2368, i32 %2369, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = lshr i32 %2371, 16
  %2373 = icmp eq i32 %2372, 65535
  br i1 %2373, label %2483, label %2374

; <label>:2374                                    ; preds = %2360
  %2375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.f32 %2375, 0
  %2377 = fmul fast float %2376, %2330
  %2378 = extractvalue %dx.types.CBufRet.f32 %2375, 1
  %2379 = fadd fast float %2377, %2378
  %2380 = extractvalue %dx.types.CBufRet.f32 %2375, 2
  %2381 = fmul fast float %2380, %2331
  %2382 = extractvalue %dx.types.CBufRet.f32 %2375, 3
  %2383 = fadd fast float %2381, %2382
  %2384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2379, float %2383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.ResRet.f32 %2384, 1
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 1
  %2389 = extractvalue %dx.types.CBufRet.f32 %2387, 0
  %2390 = fsub fast float %2388, %2389
  %2391 = fmul fast float %2390, %2385
  %2392 = fadd fast float %2391, %2389
  %2393 = extractvalue %dx.types.CBufRet.f32 %2387, 3
  %2394 = extractvalue %dx.types.CBufRet.f32 %2387, 2
  %2395 = fsub fast float %2393, %2394
  %2396 = fmul fast float %2395, %2386
  %2397 = fadd fast float %2396, %2394
  %2398 = fsub fast float %2317, %2392
  %2399 = fsub fast float %2397, %2392
  %2400 = fdiv fast float %2398, %2399
  %2401 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  %2402 = extractvalue %dx.types.CBufRet.f32 %2311, 1
  %2403 = extractvalue %dx.types.CBufRet.f32 %2361, 0
  %2404 = extractvalue %dx.types.CBufRet.f32 %2361, 1
  %2405 = fmul fast float %2403, %2330
  %2406 = fmul fast float %2404, %2331
  %2407 = fmul fast float %2405, 1.250000e-01
  %2408 = fmul fast float %2406, 1.250000e-01
  %2409 = call float @dx.op.unary.f32(i32 27, float %2407)  ; Round_ni(value)
  %2410 = call float @dx.op.unary.f32(i32 27, float %2408)  ; Round_ni(value)
  %2411 = fmul fast float %2409, 8.000000e+00
  %2412 = fmul fast float %2410, 8.000000e+00
  %2413 = fsub fast float %2405, %2411
  %2414 = fsub fast float %2406, %2412
  %2415 = fadd fast float %2413, 5.000000e-01
  %2416 = fadd fast float %2414, 5.000000e-01
  %2417 = and i32 %2372, 255
  %2418 = lshr i32 %2371, 24
  %2419 = mul nuw nsw i32 %2417, 9
  %2420 = uitofp i32 %2419 to float
  %2421 = mul nuw nsw i32 %2418, 9
  %2422 = uitofp i32 %2421 to float
  %2423 = fadd fast float %2415, %2420
  %2424 = fadd fast float %2416, %2422
  %2425 = fdiv fast float %2423, %2312
  %2426 = fdiv fast float %2424, %2402
  %2427 = fmul fast float %2401, 4.375000e-01
  %2428 = fadd fast float %2427, 3.125000e-02
  %2429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2425, float %2426, float %2428, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2430 = extractvalue %dx.types.ResRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.ResRet.f32 %2429, 1
  %2432 = extractvalue %dx.types.ResRet.f32 %2429, 2
  %2433 = fadd fast float %2427, 5.312500e-01
  %2434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2425, float %2426, float %2433, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.ResRet.f32 %2434, 1
  %2437 = extractvalue %dx.types.ResRet.f32 %2434, 2
  %2438 = fmul fast float %2435, 2.000000e+00
  %2439 = fmul fast float %2436, 2.000000e+00
  %2440 = fmul fast float %2437, 2.000000e+00
  %2441 = fadd fast float %2438, -1.000000e+00
  %2442 = fadd fast float %2439, -1.000000e+00
  %2443 = fadd fast float %2440, -1.000000e+00
  %2444 = fmul fast float %2441, %2441
  %2445 = fmul fast float %2442, %2442
  %2446 = fadd fast float %2444, %2445
  %2447 = fmul fast float %2443, %2443
  %2448 = fadd fast float %2446, %2447
  %2449 = call float @dx.op.unary.f32(i32 24, float %2448)  ; Sqrt(value)
  %2450 = fcmp fast ogt float %2449, 0.000000e+00
  br i1 %2450, label %2451, label %2455

; <label>:2451                                    ; preds = %2374
  %2452 = fdiv fast float %2441, %2449
  %2453 = fdiv fast float %2442, %2449
  %2454 = fdiv fast float %2443, %2449
  br label %2455

; <label>:2455                                    ; preds = %2451, %2374
  %2456 = phi float [ %2452, %2451 ], [ 0.000000e+00, %2374 ]
  %2457 = phi float [ %2453, %2451 ], [ 0.000000e+00, %2374 ]
  %2458 = phi float [ %2454, %2451 ], [ 0.000000e+00, %2374 ]
  %2459 = call float @dx.op.dot3.f32(i32 55, float %2456, float %2457, float %2458, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %2460 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2459)  ; FMax(a,b)
  %2461 = fmul fast float %2460, 0x400C5BF8A0000000
  %2462 = fmul fast float %2430, %2350
  %2463 = fmul fast float %2462, %2461
  %2464 = fmul fast float %2431, %2350
  %2465 = fmul fast float %2464, %2461
  %2466 = fmul fast float %2432, %2350
  %2467 = fmul fast float %2466, %2461
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 3
  %2470 = fmul fast float %2463, %2469
  %2471 = fmul fast float %2465, %2469
  %2472 = fmul fast float %2467, %2469
  %2473 = fcmp fast ogt float %2317, %2397
  br i1 %2473, label %2474, label %2483

; <label>:2474                                    ; preds = %2455
  %2475 = fmul fast float %2399, 0x3FC24924A0000000
  %2476 = fsub fast float %2317, %2397
  %2477 = fdiv fast float %2476, %2475
  %2478 = call float @dx.op.unary.f32(i32 7, float %2477)  ; Saturate(value)
  %2479 = fsub fast float 1.000000e+00, %2478
  %2480 = fmul fast float %2479, %2470
  %2481 = fmul fast float %2479, %2471
  %2482 = fmul fast float %2479, %2472
  br label %2483

; <label>:2483                                    ; preds = %2474, %2455, %2360, %2315
  %2484 = phi float [ %2482, %2474 ], [ %2472, %2455 ], [ 0.000000e+00, %2360 ], [ 0.000000e+00, %2315 ]
  %2485 = phi float [ %2481, %2474 ], [ %2471, %2455 ], [ 0.000000e+00, %2360 ], [ 0.000000e+00, %2315 ]
  %2486 = phi float [ %2480, %2474 ], [ %2470, %2455 ], [ 0.000000e+00, %2360 ], [ 0.000000e+00, %2315 ]
  %2487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2486)  ; FMax(a,b)
  %2488 = fmul fast float %2487, 0x3FD20DD760000000
  %2489 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2139, float %2140, float %2141)  ; Dot3(ax,ay,az,bx,by,bz)
  %2490 = fmul fast float %2489, 0x3FDF454380000000
  %2491 = fmul fast float %2489, %2489
  %2492 = fmul fast float %2491, 0x3FEE471020000000
  %2493 = fadd fast float %2492, 0xBFD42F6020000000
  %2494 = call float @dx.op.dot3.f32(i32 55, float %2487, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2490, float %2493)  ; Dot3(ax,ay,az,bx,by,bz)
  %2495 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2485)  ; FMax(a,b)
  %2496 = fmul fast float %2495, 0x3FD20DD760000000
  %2497 = call float @dx.op.dot3.f32(i32 55, float %2495, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2490, float %2493)  ; Dot3(ax,ay,az,bx,by,bz)
  %2498 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2484)  ; FMax(a,b)
  %2499 = fmul fast float %2498, 0x3FD20DD760000000
  %2500 = call float @dx.op.dot3.f32(i32 55, float %2498, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2490, float %2493)  ; Dot3(ax,ay,az,bx,by,bz)
  %2501 = call float @dx.op.binary.f32(i32 35, float %2488, float 0.000000e+00)  ; FMax(a,b)
  %2502 = call float @dx.op.binary.f32(i32 35, float %2496, float 0.000000e+00)  ; FMax(a,b)
  %2503 = call float @dx.op.binary.f32(i32 35, float %2499, float 0.000000e+00)  ; FMax(a,b)
  %2504 = call float @dx.op.binary.f32(i32 35, float %2494, float 0.000000e+00)  ; FMax(a,b)
  %2505 = call float @dx.op.binary.f32(i32 35, float %2497, float 0.000000e+00)  ; FMax(a,b)
  %2506 = call float @dx.op.binary.f32(i32 35, float %2500, float 0.000000e+00)  ; FMax(a,b)
  %2507 = fmul fast float %2501, %2202
  %2508 = fmul fast float %2502, %2202
  %2509 = fmul fast float %2503, %2202
  %2510 = fadd fast float %2507, %2308
  %2511 = fadd fast float %2508, %2309
  %2512 = fadd fast float %2509, %2310
  %2513 = fmul fast float %2504, %2202
  %2514 = fmul fast float %2505, %2202
  %2515 = fmul fast float %2506, %2202
  %2516 = fadd fast float %2513, %2305
  %2517 = fadd fast float %2514, %2306
  %2518 = fadd fast float %2515, %2307
  br label %2519

; <label>:2519                                    ; preds = %2483, %2303
  %2520 = phi float [ %2516, %2483 ], [ %2305, %2303 ]
  %2521 = phi float [ %2517, %2483 ], [ %2306, %2303 ]
  %2522 = phi float [ %2518, %2483 ], [ %2307, %2303 ]
  %2523 = phi float [ %2510, %2483 ], [ %2308, %2303 ]
  %2524 = phi float [ %2511, %2483 ], [ %2309, %2303 ]
  %2525 = phi float [ %2512, %2483 ], [ %2310, %2303 ]
  %2526 = fcmp fast olt float %2202, 1.000000e+00
  br i1 %2526, label %2527, label %3350, !dx.controlflow.hints !110

; <label>:2527                                    ; preds = %2519
  %2528 = extractvalue %dx.types.CBufRet.f32 %2158, 2
  %2529 = fadd fast float %2528, %159
  %2530 = fmul fast float %2122, 3.200000e+01
  %2531 = fmul fast float %2123, 3.200000e+01
  %2532 = fadd fast float %2161, %2530
  %2533 = fadd fast float %2162, %2531
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
  %2544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2545 = extractvalue %dx.types.CBufRet.f32 %2544, 0
  %2546 = fmul fast float %2542, %2545
  %2547 = extractvalue %dx.types.CBufRet.f32 %2544, 1
  %2548 = fadd fast float %2546, %2547
  %2549 = extractvalue %dx.types.CBufRet.f32 %2544, 2
  %2550 = fmul fast float %2549, %2543
  %2551 = extractvalue %dx.types.CBufRet.f32 %2544, 3
  %2552 = fadd fast float %2550, %2551
  %2553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %64, float %2548, float %2552, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2554 = extractvalue %dx.types.ResRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.ResRet.f32 %2553, 1
  %2556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2557 = extractvalue %dx.types.CBufRet.f32 %2556, 1
  %2558 = extractvalue %dx.types.CBufRet.f32 %2556, 0
  %2559 = fsub fast float %2557, %2558
  %2560 = fmul fast float %2559, %2554
  %2561 = fadd fast float %2560, %2558
  %2562 = extractvalue %dx.types.CBufRet.f32 %2556, 3
  %2563 = extractvalue %dx.types.CBufRet.f32 %2556, 2
  %2564 = fsub fast float %2562, %2563
  %2565 = fmul fast float %2564, %2555
  %2566 = fadd fast float %2565, %2563
  %2567 = fsub fast float %2529, %2561
  %2568 = fsub fast float %2566, %2561
  %2569 = fdiv fast float %2567, %2568
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2572 = extractvalue %dx.types.CBufRet.f32 %2571, 0
  %2573 = fmul fast float %2572, %2570
  %2574 = extractvalue %dx.types.CBufRet.f32 %2571, 1
  %2575 = fadd fast float %2573, %2574
  %2576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %64, float %2548, float %2552, float %2575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2577 = extractvalue %dx.types.ResRet.f32 %2576, 0
  %2578 = extractvalue %dx.types.ResRet.f32 %2576, 1
  %2579 = extractvalue %dx.types.ResRet.f32 %2576, 2
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 0
  %2582 = extractvalue %dx.types.CBufRet.f32 %2580, 1
  %2583 = extractvalue %dx.types.CBufRet.f32 %2580, 2
  %2584 = fmul fast float %2581, %2577
  %2585 = fmul fast float %2582, %2578
  %2586 = fmul fast float %2583, %2579
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2589 = extractvalue %dx.types.CBufRet.f32 %2587, 1
  %2590 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2591 = fadd fast float %2584, %2588
  %2592 = fadd fast float %2585, %2589
  %2593 = fadd fast float %2586, %2590
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 0
  %2596 = fmul fast float %2595, %2542
  %2597 = extractvalue %dx.types.CBufRet.f32 %2594, 1
  %2598 = fadd fast float %2596, %2597
  %2599 = extractvalue %dx.types.CBufRet.f32 %2594, 2
  %2600 = fmul fast float %2599, %2543
  %2601 = extractvalue %dx.types.CBufRet.f32 %2594, 3
  %2602 = fadd fast float %2600, %2601
  %2603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2604 = extractvalue %dx.types.CBufRet.f32 %2603, 0
  %2605 = extractvalue %dx.types.CBufRet.f32 %2603, 1
  %2606 = extractvalue %dx.types.CBufRet.f32 %2603, 2
  %2607 = extractvalue %dx.types.CBufRet.f32 %2603, 3
  %2608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2609 = extractvalue %dx.types.CBufRet.f32 %2608, 0
  %2610 = extractvalue %dx.types.CBufRet.f32 %2608, 1
  %2611 = extractvalue %dx.types.CBufRet.f32 %2608, 2
  %2612 = extractvalue %dx.types.CBufRet.f32 %2608, 3
  %2613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2598, float %2602, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2614 = extractvalue %dx.types.ResRet.f32 %2613, 0
  %2615 = extractvalue %dx.types.ResRet.f32 %2613, 1
  %2616 = extractvalue %dx.types.ResRet.f32 %2613, 2
  %2617 = extractvalue %dx.types.ResRet.f32 %2613, 3
  %2618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2598, float %2602, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2619 = extractvalue %dx.types.ResRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.ResRet.f32 %2618, 1
  %2621 = extractvalue %dx.types.ResRet.f32 %2618, 2
  %2622 = extractvalue %dx.types.ResRet.f32 %2618, 3
  %2623 = fmul fast float %2614, %2591
  %2624 = fmul fast float %2619, %2591
  %2625 = fmul fast float %2621, %2591
  %2626 = fmul fast float %2617, %2591
  %2627 = fadd fast float %2623, %2604
  %2628 = fadd fast float %2624, %2605
  %2629 = fadd fast float %2625, %2606
  %2630 = fadd fast float %2626, %2607
  %2631 = fmul fast float %2615, %2591
  %2632 = fmul fast float %2620, %2591
  %2633 = fadd fast float %2631, %2609
  %2634 = fadd fast float %2632, %2610
  %2635 = fmul fast float %2616, %2591
  %2636 = fmul fast float %2622, %2591
  %2637 = fadd fast float %2635, %2611
  %2638 = fadd fast float %2636, %2612
  %2639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2598, float %2602, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2640 = extractvalue %dx.types.ResRet.f32 %2639, 0
  %2641 = extractvalue %dx.types.ResRet.f32 %2639, 1
  %2642 = extractvalue %dx.types.ResRet.f32 %2639, 2
  %2643 = extractvalue %dx.types.ResRet.f32 %2639, 3
  %2644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2598, float %2602, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2645 = extractvalue %dx.types.ResRet.f32 %2644, 0
  %2646 = extractvalue %dx.types.ResRet.f32 %2644, 1
  %2647 = extractvalue %dx.types.ResRet.f32 %2644, 2
  %2648 = extractvalue %dx.types.ResRet.f32 %2644, 3
  %2649 = fmul fast float %2640, %2592
  %2650 = fmul fast float %2645, %2592
  %2651 = fmul fast float %2647, %2592
  %2652 = fmul fast float %2643, %2592
  %2653 = fadd fast float %2627, %2649
  %2654 = fadd fast float %2628, %2650
  %2655 = fadd fast float %2629, %2651
  %2656 = fadd fast float %2630, %2652
  %2657 = fmul fast float %2641, %2592
  %2658 = fmul fast float %2646, %2592
  %2659 = fadd fast float %2633, %2657
  %2660 = fadd fast float %2634, %2658
  %2661 = fmul fast float %2642, %2592
  %2662 = fmul fast float %2648, %2592
  %2663 = fadd fast float %2637, %2661
  %2664 = fadd fast float %2638, %2662
  %2665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2598, float %2602, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2666 = extractvalue %dx.types.ResRet.f32 %2665, 0
  %2667 = extractvalue %dx.types.ResRet.f32 %2665, 1
  %2668 = extractvalue %dx.types.ResRet.f32 %2665, 2
  %2669 = extractvalue %dx.types.ResRet.f32 %2665, 3
  %2670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %64, float %2598, float %2602, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2671 = extractvalue %dx.types.ResRet.f32 %2670, 0
  %2672 = extractvalue %dx.types.ResRet.f32 %2670, 1
  %2673 = extractvalue %dx.types.ResRet.f32 %2670, 2
  %2674 = extractvalue %dx.types.ResRet.f32 %2670, 3
  %2675 = fmul fast float %2666, %2593
  %2676 = fmul fast float %2671, %2593
  %2677 = fmul fast float %2673, %2593
  %2678 = fmul fast float %2669, %2593
  %2679 = fadd fast float %2653, %2675
  %2680 = fadd fast float %2654, %2676
  %2681 = fadd fast float %2655, %2677
  %2682 = fadd fast float %2656, %2678
  %2683 = fmul fast float %2667, %2593
  %2684 = fmul fast float %2672, %2593
  %2685 = fadd fast float %2659, %2683
  %2686 = fadd fast float %2660, %2684
  %2687 = fmul fast float %2668, %2593
  %2688 = fmul fast float %2674, %2593
  %2689 = fadd fast float %2663, %2687
  %2690 = fadd fast float %2664, %2688
  %2691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2692 = extractvalue %dx.types.CBufRet.f32 %2691, 0
  %2693 = fsub fast float %2161, %2692
  %2694 = fsub fast float %2535, %2161
  %2695 = call float @dx.op.binary.f32(i32 35, float %2694, float %2693)  ; FMax(a,b)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2691, 1
  %2697 = fsub fast float %2162, %2696
  %2698 = fsub fast float %2536, %2162
  %2699 = call float @dx.op.binary.f32(i32 35, float %2698, float %2697)  ; FMax(a,b)
  %2700 = call float @dx.op.binary.f32(i32 35, float %2695, float %2699)  ; FMax(a,b)
  %2701 = extractvalue %dx.types.CBufRet.f32 %2539, 3
  %2702 = fmul fast float %2701, %2700
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.CBufRet.f32 %2704, 2
  %2708 = extractvalue %dx.types.CBufRet.f32 %2704, 3
  %2709 = fsub fast float %2705, %2679
  %2710 = fsub fast float %2706, %2680
  %2711 = fsub fast float %2707, %2681
  %2712 = fsub fast float %2708, %2682
  %2713 = fmul fast float %2709, %2703
  %2714 = fmul fast float %2710, %2703
  %2715 = fmul fast float %2711, %2703
  %2716 = fmul fast float %2712, %2703
  %2717 = fadd fast float %2713, %2679
  %2718 = fadd fast float %2714, %2680
  %2719 = fadd fast float %2715, %2681
  %2720 = fadd fast float %2716, %2682
  %2721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2722 = extractvalue %dx.types.CBufRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.CBufRet.f32 %2721, 1
  %2724 = fsub fast float %2722, %2685
  %2725 = fsub fast float %2723, %2686
  %2726 = fmul fast float %2724, %2703
  %2727 = fmul fast float %2725, %2703
  %2728 = fadd fast float %2726, %2685
  %2729 = fadd fast float %2727, %2686
  %2730 = extractvalue %dx.types.CBufRet.f32 %2721, 2
  %2731 = extractvalue %dx.types.CBufRet.f32 %2721, 3
  %2732 = fsub fast float %2730, %2689
  %2733 = fsub fast float %2731, %2690
  %2734 = fmul fast float %2732, %2703
  %2735 = fmul fast float %2733, %2703
  %2736 = fadd fast float %2734, %2689
  %2737 = fadd fast float %2735, %2690
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = fmul fast float %2739, %2717
  %2741 = fmul fast float %2739, %2718
  %2742 = fmul fast float %2739, %2719
  %2743 = fmul fast float %2739, %2720
  %2744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2745 = extractvalue %dx.types.CBufRet.f32 %2744, 0
  %2746 = fmul fast float %2745, %2728
  %2747 = fmul fast float %2745, %2729
  %2748 = fadd fast float %2746, %2740
  %2749 = fadd fast float %2747, %2742
  %2750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2751 = extractvalue %dx.types.CBufRet.f32 %2750, 0
  %2752 = fmul fast float %2751, %2736
  %2753 = fmul fast float %2751, %2737
  %2754 = fadd fast float %2748, %2752
  %2755 = fadd fast float %2749, %2753
  %2756 = extractvalue %dx.types.CBufRet.f32 %2738, 1
  %2757 = fmul fast float %2756, %2717
  %2758 = fmul fast float %2756, %2718
  %2759 = fmul fast float %2756, %2719
  %2760 = fmul fast float %2756, %2720
  %2761 = extractvalue %dx.types.CBufRet.f32 %2744, 1
  %2762 = fmul fast float %2761, %2728
  %2763 = fmul fast float %2761, %2729
  %2764 = fadd fast float %2762, %2757
  %2765 = fadd fast float %2763, %2759
  %2766 = extractvalue %dx.types.CBufRet.f32 %2750, 1
  %2767 = fmul fast float %2766, %2736
  %2768 = fmul fast float %2766, %2737
  %2769 = fadd fast float %2764, %2767
  %2770 = fadd fast float %2765, %2768
  %2771 = extractvalue %dx.types.CBufRet.f32 %2738, 2
  %2772 = fmul fast float %2771, %2717
  %2773 = fmul fast float %2771, %2718
  %2774 = fmul fast float %2771, %2719
  %2775 = fmul fast float %2771, %2720
  %2776 = extractvalue %dx.types.CBufRet.f32 %2744, 2
  %2777 = fmul fast float %2776, %2728
  %2778 = fmul fast float %2776, %2729
  %2779 = fadd fast float %2777, %2772
  %2780 = fadd fast float %2778, %2774
  %2781 = extractvalue %dx.types.CBufRet.f32 %2750, 2
  %2782 = fmul fast float %2781, %2736
  %2783 = fmul fast float %2781, %2737
  %2784 = fadd fast float %2779, %2782
  %2785 = fadd fast float %2780, %2783
  %2786 = fmul fast float %2773, %2773
  %2787 = fmul fast float %2785, %2785
  %2788 = fmul fast float %2775, %2775
  %2789 = fadd fast float %2788, %2786
  %2790 = fadd fast float %2789, %2787
  %2791 = call float @dx.op.unary.f32(i32 24, float %2790)  ; Sqrt(value)
  %2792 = fcmp fast ugt float %2791, 0.000000e+00
  br i1 %2792, label %2793, label %2808

; <label>:2793                                    ; preds = %2527
  %2794 = fsub fast float -0.000000e+00, %2775
  %2795 = fdiv fast float %2794, %2791
  %2796 = fsub fast float -0.000000e+00, %2773
  %2797 = fdiv fast float %2796, %2791
  %2798 = fdiv fast float %2785, %2791
  %2799 = fmul fast float %2784, 0x3FE279A760000000
  %2800 = fmul fast float %2797, %2773
  %2801 = fmul fast float %2798, %2785
  %2802 = fmul fast float %2795, %2775
  %2803 = fadd fast float %2800, %2802
  %2804 = fsub fast float %2803, %2801
  %2805 = call float @dx.op.unary.f32(i32 6, float %2804)  ; FAbs(value)
  %2806 = fadd fast float %2805, 0x3DDB7CDFE0000000
  %2807 = fdiv fast float %2799, %2806
  br label %2808

; <label>:2808                                    ; preds = %2793, %2527
  %2809 = phi float [ %2807, %2793 ], [ 1.000000e+00, %2527 ]
  %2810 = fmul fast float %2758, %2758
  %2811 = fmul fast float %2770, %2770
  %2812 = fmul fast float %2760, %2760
  %2813 = fadd fast float %2812, %2810
  %2814 = fadd fast float %2813, %2811
  %2815 = call float @dx.op.unary.f32(i32 24, float %2814)  ; Sqrt(value)
  %2816 = fcmp fast ugt float %2815, 0.000000e+00
  br i1 %2816, label %2817, label %2832

; <label>:2817                                    ; preds = %2808
  %2818 = fsub fast float -0.000000e+00, %2760
  %2819 = fdiv fast float %2818, %2815
  %2820 = fsub fast float -0.000000e+00, %2758
  %2821 = fdiv fast float %2820, %2815
  %2822 = fdiv fast float %2770, %2815
  %2823 = fmul fast float %2769, 0x3FE279A760000000
  %2824 = fmul fast float %2821, %2758
  %2825 = fmul fast float %2822, %2770
  %2826 = fmul fast float %2819, %2760
  %2827 = fadd fast float %2824, %2826
  %2828 = fsub fast float %2827, %2825
  %2829 = call float @dx.op.unary.f32(i32 6, float %2828)  ; FAbs(value)
  %2830 = fadd fast float %2829, 0x3DDB7CDFE0000000
  %2831 = fdiv fast float %2823, %2830
  br label %2832

; <label>:2832                                    ; preds = %2817, %2808
  %2833 = phi float [ %2831, %2817 ], [ 1.000000e+00, %2808 ]
  %2834 = call float @dx.op.binary.f32(i32 36, float %2833, float %2809)  ; FMin(a,b)
  %2835 = fmul fast float %2741, %2741
  %2836 = fmul fast float %2755, %2755
  %2837 = fmul fast float %2743, %2743
  %2838 = fadd fast float %2837, %2835
  %2839 = fadd fast float %2838, %2836
  %2840 = call float @dx.op.unary.f32(i32 24, float %2839)  ; Sqrt(value)
  %2841 = fcmp fast ugt float %2840, 0.000000e+00
  br i1 %2841, label %2842, label %2857

; <label>:2842                                    ; preds = %2832
  %2843 = fsub fast float -0.000000e+00, %2743
  %2844 = fdiv fast float %2843, %2840
  %2845 = fsub fast float -0.000000e+00, %2741
  %2846 = fdiv fast float %2845, %2840
  %2847 = fdiv fast float %2755, %2840
  %2848 = fmul fast float %2754, 0x3FE279A760000000
  %2849 = fmul fast float %2846, %2741
  %2850 = fmul fast float %2847, %2755
  %2851 = fmul fast float %2844, %2743
  %2852 = fadd fast float %2849, %2851
  %2853 = fsub fast float %2852, %2850
  %2854 = call float @dx.op.unary.f32(i32 6, float %2853)  ; FAbs(value)
  %2855 = fadd fast float %2854, 0x3DDB7CDFE0000000
  %2856 = fdiv fast float %2848, %2855
  br label %2857

; <label>:2857                                    ; preds = %2842, %2832
  %2858 = phi float [ %2856, %2842 ], [ 1.000000e+00, %2832 ]
  %2859 = call float @dx.op.binary.f32(i32 36, float %2858, float %2834)  ; FMin(a,b)
  %2860 = call float @dx.op.unary.f32(i32 7, float %2859)  ; Saturate(value)
  %2861 = fcmp fast olt float %2860, 1.000000e+00
  br i1 %2861, label %2862, label %2872

; <label>:2862                                    ; preds = %2857
  %2863 = fmul fast float %2860, %2741
  %2864 = fmul fast float %2860, %2755
  %2865 = fmul fast float %2860, %2743
  %2866 = fmul fast float %2860, %2758
  %2867 = fmul fast float %2860, %2770
  %2868 = fmul fast float %2860, %2760
  %2869 = fmul fast float %2860, %2773
  %2870 = fmul fast float %2860, %2785
  %2871 = fmul fast float %2860, %2775
  br label %2872

; <label>:2872                                    ; preds = %2862, %2857
  %2873 = phi float [ %2869, %2862 ], [ %2773, %2857 ]
  %2874 = phi float [ %2870, %2862 ], [ %2785, %2857 ]
  %2875 = phi float [ %2871, %2862 ], [ %2775, %2857 ]
  %2876 = phi float [ %2866, %2862 ], [ %2758, %2857 ]
  %2877 = phi float [ %2867, %2862 ], [ %2770, %2857 ]
  %2878 = phi float [ %2868, %2862 ], [ %2760, %2857 ]
  %2879 = phi float [ %2863, %2862 ], [ %2741, %2857 ]
  %2880 = phi float [ %2864, %2862 ], [ %2755, %2857 ]
  %2881 = phi float [ %2865, %2862 ], [ %2743, %2857 ]
  %2882 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2754)  ; FMax(a,b)
  %2883 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2769)  ; FMax(a,b)
  %2884 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2784)  ; FMax(a,b)
  %2885 = fcmp fast oge float %2542, 0.000000e+00
  %2886 = and i1 %2885, %2313
  %2887 = fcmp fast ole float %2542, 1.000000e+00
  %2888 = and i1 %2887, %2886
  %2889 = fcmp fast oge float %2543, 0.000000e+00
  %2890 = and i1 %2889, %2888
  %2891 = fcmp fast ole float %2543, 1.000000e+00
  %2892 = and i1 %2891, %2890
  br i1 %2892, label %2893, label %3038, !dx.controlflow.hints !111

; <label>:2893                                    ; preds = %2872
  %2894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.f32 %2894, 2
  %2896 = extractvalue %dx.types.CBufRet.f32 %2894, 3
  %2897 = fmul fast float %2895, %2542
  %2898 = fmul fast float %2896, %2543
  %2899 = call float @dx.op.unary.f32(i32 27, float %2897)  ; Round_ni(value)
  %2900 = call float @dx.op.unary.f32(i32 27, float %2898)  ; Round_ni(value)
  %2901 = fptosi float %2899 to i32
  %2902 = fptosi float %2900 to i32
  %2903 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %54, i32 0, i32 %2901, i32 %2902, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = and i32 %2904, 65535
  %2906 = lshr i32 %2904, 16
  %2907 = icmp eq i32 %2905, 65535
  br i1 %2907, label %2944, label %2908

; <label>:2908                                    ; preds = %2893
  %2909 = extractvalue %dx.types.CBufRet.f32 %2311, 1
  %2910 = extractvalue %dx.types.CBufRet.f32 %2894, 0
  %2911 = extractvalue %dx.types.CBufRet.f32 %2894, 1
  %2912 = fmul fast float %2910, %2542
  %2913 = fmul fast float %2911, %2543
  %2914 = fmul fast float %2912, 1.250000e-01
  %2915 = fmul fast float %2913, 1.250000e-01
  %2916 = call float @dx.op.unary.f32(i32 27, float %2914)  ; Round_ni(value)
  %2917 = call float @dx.op.unary.f32(i32 27, float %2915)  ; Round_ni(value)
  %2918 = fmul fast float %2916, 8.000000e+00
  %2919 = fmul fast float %2917, 8.000000e+00
  %2920 = and i32 %2904, 255
  %2921 = lshr i32 %2904, 8
  %2922 = and i32 %2921, 255
  %2923 = mul nuw nsw i32 %2920, 9
  %2924 = uitofp i32 %2923 to float
  %2925 = mul nuw nsw i32 %2922, 9
  %2926 = uitofp i32 %2925 to float
  %2927 = fadd fast float %2924, 5.000000e-01
  %2928 = fadd fast float %2927, %2912
  %2929 = fsub fast float %2928, %2918
  %2930 = fadd fast float %2926, 5.000000e-01
  %2931 = fadd fast float %2930, %2913
  %2932 = fsub fast float %2931, %2919
  %2933 = fdiv fast float %2929, %2312
  %2934 = fdiv fast float %2932, %2909
  %2935 = fmul fast float %2570, 4.375000e-01
  %2936 = fadd fast float %2935, 3.125000e-02
  %2937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2933, float %2934, float %2936, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2938 = extractvalue %dx.types.ResRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.ResRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.ResRet.f32 %2937, 2
  %2941 = fadd fast float %2938, %2882
  %2942 = fadd fast float %2939, %2883
  %2943 = fadd fast float %2940, %2884
  br label %2944

; <label>:2944                                    ; preds = %2908, %2893
  %2945 = phi float [ %2943, %2908 ], [ %2884, %2893 ]
  %2946 = phi float [ %2942, %2908 ], [ %2883, %2893 ]
  %2947 = phi float [ %2941, %2908 ], [ %2882, %2893 ]
  %2948 = icmp eq i32 %2906, 65535
  br i1 %2948, label %3038, label %2949

; <label>:2949                                    ; preds = %2944
  %2950 = extractvalue %dx.types.CBufRet.f32 %2311, 1
  %2951 = extractvalue %dx.types.CBufRet.f32 %2894, 0
  %2952 = extractvalue %dx.types.CBufRet.f32 %2894, 1
  %2953 = fmul fast float %2951, %2542
  %2954 = fmul fast float %2952, %2543
  %2955 = fmul fast float %2953, 1.250000e-01
  %2956 = fmul fast float %2954, 1.250000e-01
  %2957 = call float @dx.op.unary.f32(i32 27, float %2955)  ; Round_ni(value)
  %2958 = call float @dx.op.unary.f32(i32 27, float %2956)  ; Round_ni(value)
  %2959 = fmul fast float %2957, 8.000000e+00
  %2960 = fmul fast float %2958, 8.000000e+00
  %2961 = fsub fast float %2953, %2959
  %2962 = fsub fast float %2954, %2960
  %2963 = fadd fast float %2961, 5.000000e-01
  %2964 = fadd fast float %2962, 5.000000e-01
  %2965 = and i32 %2906, 255
  %2966 = lshr i32 %2904, 24
  %2967 = mul nuw nsw i32 %2965, 9
  %2968 = uitofp i32 %2967 to float
  %2969 = mul nuw nsw i32 %2966, 9
  %2970 = uitofp i32 %2969 to float
  %2971 = fadd fast float %2963, %2968
  %2972 = fadd fast float %2964, %2970
  %2973 = fdiv fast float %2971, %2312
  %2974 = fdiv fast float %2972, %2950
  %2975 = fmul fast float %2570, 4.375000e-01
  %2976 = fadd fast float %2975, 3.125000e-02
  %2977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2973, float %2974, float %2976, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.ResRet.f32 %2977, 1
  %2980 = extractvalue %dx.types.ResRet.f32 %2977, 2
  %2981 = fadd fast float %2975, 5.312500e-01
  %2982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %64, float %2973, float %2974, float %2981, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2986 = fmul fast float %2983, 2.000000e+00
  %2987 = fmul fast float %2984, 2.000000e+00
  %2988 = fmul fast float %2985, 2.000000e+00
  %2989 = fadd fast float %2986, -1.000000e+00
  %2990 = fadd fast float %2987, -1.000000e+00
  %2991 = fadd fast float %2988, -1.000000e+00
  %2992 = fmul fast float %2989, %2989
  %2993 = fmul fast float %2990, %2990
  %2994 = fadd fast float %2992, %2993
  %2995 = fmul fast float %2991, %2991
  %2996 = fadd fast float %2994, %2995
  %2997 = call float @dx.op.unary.f32(i32 24, float %2996)  ; Sqrt(value)
  %2998 = fcmp fast ogt float %2997, 0.000000e+00
  br i1 %2998, label %2999, label %3003

; <label>:2999                                    ; preds = %2949
  %3000 = fdiv fast float %2989, %2997
  %3001 = fdiv fast float %2990, %2997
  %3002 = fdiv fast float %2991, %2997
  br label %3003

; <label>:3003                                    ; preds = %2999, %2949
  %3004 = phi float [ %3000, %2999 ], [ 0.000000e+00, %2949 ]
  %3005 = phi float [ %3001, %2999 ], [ 0.000000e+00, %2949 ]
  %3006 = phi float [ %3002, %2999 ], [ 0.000000e+00, %2949 ]
  %3007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3008 = extractvalue %dx.types.CBufRet.f32 %3007, 0
  %3009 = extractvalue %dx.types.CBufRet.f32 %3007, 1
  %3010 = fsub fast float %2161, %3008
  %3011 = fsub fast float %2162, %3009
  %3012 = fmul fast float %3010, %3010
  %3013 = fmul fast float %3011, %3011
  %3014 = fadd fast float %3012, %3013
  %3015 = call float @dx.op.unary.f32(i32 24, float %3014)  ; Sqrt(value)
  %3016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3017 = extractvalue %dx.types.CBufRet.f32 %3016, 0
  %3018 = extractvalue %dx.types.CBufRet.f32 %3016, 1
  %3019 = fsub fast float %3015, %3017
  %3020 = fdiv fast float %3019, %3018
  %3021 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3022 = fmul fast float %3021, 2.000000e+00
  %3023 = fsub fast float 3.000000e+00, %3022
  %3024 = fmul fast float %3021, %3021
  %3025 = fmul fast float %3024, %3023
  %3026 = call float @dx.op.dot3.f32(i32 55, float %3004, float %3005, float %3006, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3027 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3026)  ; FMax(a,b)
  %3028 = fmul fast float %3027, 0x400C5BF8A0000000
  %3029 = fmul fast float %3025, %2978
  %3030 = fmul fast float %3029, %3028
  %3031 = fadd fast float %3030, %2947
  %3032 = fmul fast float %3025, %2979
  %3033 = fmul fast float %3032, %3028
  %3034 = fadd fast float %3033, %2946
  %3035 = fmul fast float %3025, %2980
  %3036 = fmul fast float %3035, %3028
  %3037 = fadd fast float %3036, %2945
  br label %3038

; <label>:3038                                    ; preds = %3003, %2944, %2872
  %3039 = phi float [ %3037, %3003 ], [ %2945, %2944 ], [ %2884, %2872 ]
  %3040 = phi float [ %3034, %3003 ], [ %2946, %2944 ], [ %2883, %2872 ]
  %3041 = phi float [ %3031, %3003 ], [ %2947, %2944 ], [ %2882, %2872 ]
  %3042 = fcmp fast ogt float %2529, %2566
  %3043 = and i1 %2885, %3042
  %3044 = and i1 %2887, %3043
  %3045 = and i1 %2889, %3044
  %3046 = and i1 %2891, %3045
  br i1 %3046, label %3047, label %3104, !dx.controlflow.hints !112

; <label>:3047                                    ; preds = %3038
  %3048 = fmul fast float %2568, 0x3FC24924A0000000
  %3049 = fsub fast float %2529, %2566
  %3050 = fdiv fast float %3049, %3048
  %3051 = call float @dx.op.unary.f32(i32 7, float %3050)  ; Saturate(value)
  %3052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3053 = extractvalue %dx.types.CBufRet.f32 %3052, 0
  %3054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3055 = extractvalue %dx.types.CBufRet.f32 %3054, 0
  %3056 = extractvalue %dx.types.CBufRet.f32 %3054, 1
  %3057 = extractvalue %dx.types.CBufRet.f32 %3054, 2
  %3058 = fsub fast float %3053, %3041
  %3059 = fsub fast float %3055, %2879
  %3060 = fsub fast float %3056, %2880
  %3061 = fsub fast float %3057, %2881
  %3062 = fmul fast float %3058, %3051
  %3063 = fmul fast float %3059, %3051
  %3064 = fmul fast float %3060, %3051
  %3065 = fmul fast float %3061, %3051
  %3066 = fadd fast float %3062, %3041
  %3067 = fadd fast float %3063, %2879
  %3068 = fadd fast float %3064, %2880
  %3069 = fadd fast float %3065, %2881
  %3070 = extractvalue %dx.types.CBufRet.f32 %3052, 1
  %3071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3072 = extractvalue %dx.types.CBufRet.f32 %3071, 0
  %3073 = extractvalue %dx.types.CBufRet.f32 %3071, 1
  %3074 = extractvalue %dx.types.CBufRet.f32 %3071, 2
  %3075 = fsub fast float %3070, %3040
  %3076 = fsub fast float %3072, %2876
  %3077 = fsub fast float %3073, %2877
  %3078 = fsub fast float %3074, %2878
  %3079 = fmul fast float %3075, %3051
  %3080 = fmul fast float %3076, %3051
  %3081 = fmul fast float %3077, %3051
  %3082 = fmul fast float %3078, %3051
  %3083 = fadd fast float %3079, %3040
  %3084 = fadd fast float %3080, %2876
  %3085 = fadd fast float %3081, %2877
  %3086 = fadd fast float %3082, %2878
  %3087 = extractvalue %dx.types.CBufRet.f32 %3052, 2
  %3088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3089 = extractvalue %dx.types.CBufRet.f32 %3088, 0
  %3090 = extractvalue %dx.types.CBufRet.f32 %3088, 1
  %3091 = extractvalue %dx.types.CBufRet.f32 %3088, 2
  %3092 = fsub fast float %3087, %3039
  %3093 = fsub fast float %3089, %2873
  %3094 = fsub fast float %3090, %2874
  %3095 = fsub fast float %3091, %2875
  %3096 = fmul fast float %3092, %3051
  %3097 = fmul fast float %3093, %3051
  %3098 = fmul fast float %3094, %3051
  %3099 = fmul fast float %3095, %3051
  %3100 = fadd fast float %3096, %3039
  %3101 = fadd fast float %3097, %2873
  %3102 = fadd fast float %3098, %2874
  %3103 = fadd fast float %3099, %2875
  br label %3104

; <label>:3104                                    ; preds = %3047, %3038
  %3105 = phi float [ %3100, %3047 ], [ %3039, %3038 ]
  %3106 = phi float [ %3101, %3047 ], [ %2873, %3038 ]
  %3107 = phi float [ %3102, %3047 ], [ %2874, %3038 ]
  %3108 = phi float [ %3103, %3047 ], [ %2875, %3038 ]
  %3109 = phi float [ %3083, %3047 ], [ %3040, %3038 ]
  %3110 = phi float [ %3084, %3047 ], [ %2876, %3038 ]
  %3111 = phi float [ %3085, %3047 ], [ %2877, %3038 ]
  %3112 = phi float [ %3086, %3047 ], [ %2878, %3038 ]
  %3113 = phi float [ %3066, %3047 ], [ %3041, %3038 ]
  %3114 = phi float [ %3067, %3047 ], [ %2879, %3038 ]
  %3115 = phi float [ %3068, %3047 ], [ %2880, %3038 ]
  %3116 = phi float [ %3069, %3047 ], [ %2881, %3038 ]
  %3117 = extractvalue %dx.types.CBufRet.f32 %2691, 3
  %3118 = fmul fast float %3117, %3113
  %3119 = fmul fast float %3117, %3109
  %3120 = fmul fast float %3117, %3105
  %3121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.f32 %3121, 3
  %3123 = fmul fast float %3118, %3122
  %3124 = fmul fast float %3119, %3122
  %3125 = fmul fast float %3120, %3122
  %3126 = call float @dx.op.dot3.f32(i32 55, float %3123, float %3124, float %3125, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3127 = fmul fast float %3126, 0x3FD20DD760000000
  %3128 = fmul fast float %3114, 1.500000e+00
  %3129 = fmul fast float %3128, %3117
  %3130 = fmul fast float %3129, %3122
  %3131 = fmul fast float %3115, 1.500000e+00
  %3132 = fmul fast float %3131, %3117
  %3133 = fmul fast float %3132, %3122
  %3134 = fmul fast float %3116, 1.500000e+00
  %3135 = fmul fast float %3134, %3117
  %3136 = fmul fast float %3135, %3122
  %3137 = fmul fast float %3110, 1.500000e+00
  %3138 = fmul fast float %3137, %3117
  %3139 = fmul fast float %3138, %3122
  %3140 = fmul fast float %3111, 1.500000e+00
  %3141 = fmul fast float %3140, %3117
  %3142 = fmul fast float %3141, %3122
  %3143 = fmul fast float %3112, 1.500000e+00
  %3144 = fmul fast float %3143, %3117
  %3145 = fmul fast float %3144, %3122
  %3146 = fmul fast float %3106, 1.500000e+00
  %3147 = fmul fast float %3146, %3117
  %3148 = fmul fast float %3147, %3122
  %3149 = fmul fast float %3107, 1.500000e+00
  %3150 = fmul fast float %3149, %3117
  %3151 = fmul fast float %3150, %3122
  %3152 = fmul fast float %3108, 1.500000e+00
  %3153 = fmul fast float %3152, %3117
  %3154 = fmul fast float %3153, %3122
  %3155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3123)  ; FMax(a,b)
  %3156 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3133, float %3136, float %3130, float %3133, float %3136)  ; Dot3(ax,ay,az,bx,by,bz)
  %3157 = fcmp fast oeq float %3156, 0.000000e+00
  %3158 = fcmp fast oeq float %3155, 0.000000e+00
  %3159 = or i1 %3158, %3157
  br i1 %3159, label %3189, label %3160

; <label>:3160                                    ; preds = %3104
  %3161 = fsub fast float -0.000000e+00, %3136
  %3162 = fsub fast float -0.000000e+00, %3130
  %3163 = call float @dx.op.unary.f32(i32 24, float %3156)  ; Sqrt(value)
  %3164 = fdiv fast float %3163, %3155
  %3165 = fcmp fast ogt float %3164, 0x3FFB6F8900000000
  %3166 = select i1 %3165, float 0x3FFB6F8900000000, float %3164
  %3167 = fmul fast float %3166, 0x3FE8A23460000000
  %3168 = call float @dx.op.unary.f32(i32 7, float %3167)  ; Saturate(value)
  %3169 = call float @dx.op.binary.f32(i32 35, float %3166, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3170 = fmul fast float %3168, %3155
  %3171 = fmul fast float %3169, 0x3FF279A740000000
  %3172 = fadd fast float %3171, -1.000000e+00
  %3173 = call float @dx.op.dot3.f32(i32 55, float %3161, float %3162, float %3133, float %3161, float %3162, float %3133)  ; Dot3(ax,ay,az,bx,by,bz)
  %3174 = call float @dx.op.unary.f32(i32 25, float %3173)  ; Rsqrt(value)
  %3175 = fmul fast float %3174, %3161
  %3176 = fmul fast float %3174, %3162
  %3177 = fmul fast float %3174, %3133
  %3178 = fmul fast float %3172, %3172
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = fmul fast float %3169, 0x40005F8BE0000000
  %3181 = fsub fast float 0x400C5BF8A0000000, %3180
  %3182 = fdiv fast float %3170, %3181
  %3183 = fmul fast float %3182, 0x3FEE31C3C0000000
  %3184 = fmul fast float %3183, %3179
  %3185 = fmul fast float %3169, 0x3FDACB7480000000
  %3186 = fadd fast float %3185, 0xBFD7347680000000
  %3187 = fmul fast float %3186, %3182
  %3188 = fmul fast float %3187, %3179
  br label %3189

; <label>:3189                                    ; preds = %3160, %3104
  %3190 = phi float [ %3175, %3160 ], [ 0.000000e+00, %3104 ]
  %3191 = phi float [ %3176, %3160 ], [ 0.000000e+00, %3104 ]
  %3192 = phi float [ %3177, %3160 ], [ 0.000000e+00, %3104 ]
  %3193 = phi float [ %3184, %3160 ], [ 0.000000e+00, %3104 ]
  %3194 = phi float [ %3188, %3160 ], [ 0.000000e+00, %3104 ]
  %3195 = call float @dx.op.dot3.f32(i32 55, float %3190, float %3191, float %3192, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3196 = fmul fast float %3195, %3195
  %3197 = fmul fast float %3196, 0x3FEE471020000000
  %3198 = fadd fast float %3197, 0xBFD42F6020000000
  %3199 = fmul fast float %3155, 0x3FD20DD760000000
  %3200 = fmul fast float %3198, %3194
  %3201 = fmul fast float %3193, 0x3FDF454380000000
  %3202 = fmul fast float %3201, %3195
  %3203 = fadd fast float %3202, %3199
  %3204 = fadd fast float %3203, %3200
  %3205 = call float @dx.op.dot3.f32(i32 55, float %3190, float %3191, float %3192, float %2139, float %2140, float %2141)  ; Dot3(ax,ay,az,bx,by,bz)
  %3206 = fmul fast float %3205, 0x3FDF454380000000
  %3207 = fmul fast float %3205, %3205
  %3208 = fmul fast float %3207, 0x3FEE471020000000
  %3209 = fadd fast float %3208, 0xBFD42F6020000000
  %3210 = call float @dx.op.dot3.f32(i32 55, float %3155, float %3193, float %3194, float 0x3FD20DD760000000, float %3206, float %3209)  ; Dot3(ax,ay,az,bx,by,bz)
  %3211 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3124)  ; FMax(a,b)
  %3212 = call float @dx.op.dot3.f32(i32 55, float %3139, float %3142, float %3145, float %3139, float %3142, float %3145)  ; Dot3(ax,ay,az,bx,by,bz)
  %3213 = fcmp fast oeq float %3212, 0.000000e+00
  %3214 = fcmp fast oeq float %3211, 0.000000e+00
  %3215 = or i1 %3214, %3213
  br i1 %3215, label %3245, label %3216

; <label>:3216                                    ; preds = %3189
  %3217 = fsub fast float -0.000000e+00, %3145
  %3218 = fsub fast float -0.000000e+00, %3139
  %3219 = call float @dx.op.unary.f32(i32 24, float %3212)  ; Sqrt(value)
  %3220 = fdiv fast float %3219, %3211
  %3221 = fcmp fast ogt float %3220, 0x3FFB6F8900000000
  %3222 = select i1 %3221, float 0x3FFB6F8900000000, float %3220
  %3223 = fmul fast float %3222, 0x3FE8A23460000000
  %3224 = call float @dx.op.unary.f32(i32 7, float %3223)  ; Saturate(value)
  %3225 = call float @dx.op.binary.f32(i32 35, float %3222, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3226 = fmul fast float %3224, %3211
  %3227 = fmul fast float %3225, 0x3FF279A740000000
  %3228 = fadd fast float %3227, -1.000000e+00
  %3229 = call float @dx.op.dot3.f32(i32 55, float %3217, float %3218, float %3142, float %3217, float %3218, float %3142)  ; Dot3(ax,ay,az,bx,by,bz)
  %3230 = call float @dx.op.unary.f32(i32 25, float %3229)  ; Rsqrt(value)
  %3231 = fmul fast float %3230, %3217
  %3232 = fmul fast float %3230, %3218
  %3233 = fmul fast float %3230, %3142
  %3234 = fmul fast float %3228, %3228
  %3235 = fsub fast float 1.000000e+00, %3234
  %3236 = fmul fast float %3225, 0x40005F8BE0000000
  %3237 = fsub fast float 0x400C5BF8A0000000, %3236
  %3238 = fdiv fast float %3226, %3237
  %3239 = fmul fast float %3238, 0x3FEE31C3C0000000
  %3240 = fmul fast float %3239, %3235
  %3241 = fmul fast float %3225, 0x3FDACB7480000000
  %3242 = fadd fast float %3241, 0xBFD7347680000000
  %3243 = fmul fast float %3242, %3238
  %3244 = fmul fast float %3243, %3235
  br label %3245

; <label>:3245                                    ; preds = %3216, %3189
  %3246 = phi float [ %3231, %3216 ], [ 0.000000e+00, %3189 ]
  %3247 = phi float [ %3232, %3216 ], [ 0.000000e+00, %3189 ]
  %3248 = phi float [ %3233, %3216 ], [ 0.000000e+00, %3189 ]
  %3249 = phi float [ %3240, %3216 ], [ 0.000000e+00, %3189 ]
  %3250 = phi float [ %3244, %3216 ], [ 0.000000e+00, %3189 ]
  %3251 = call float @dx.op.dot3.f32(i32 55, float %3246, float %3247, float %3248, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3252 = fmul fast float %3251, %3251
  %3253 = fmul fast float %3252, 0x3FEE471020000000
  %3254 = fadd fast float %3253, 0xBFD42F6020000000
  %3255 = fmul fast float %3211, 0x3FD20DD760000000
  %3256 = fmul fast float %3254, %3250
  %3257 = fmul fast float %3249, 0x3FDF454380000000
  %3258 = fmul fast float %3257, %3251
  %3259 = fadd fast float %3258, %3255
  %3260 = fadd fast float %3259, %3256
  %3261 = call float @dx.op.dot3.f32(i32 55, float %3246, float %3247, float %3248, float %2139, float %2140, float %2141)  ; Dot3(ax,ay,az,bx,by,bz)
  %3262 = fmul fast float %3261, 0x3FDF454380000000
  %3263 = fmul fast float %3261, %3261
  %3264 = fmul fast float %3263, 0x3FEE471020000000
  %3265 = fadd fast float %3264, 0xBFD42F6020000000
  %3266 = call float @dx.op.dot3.f32(i32 55, float %3211, float %3249, float %3250, float 0x3FD20DD760000000, float %3262, float %3265)  ; Dot3(ax,ay,az,bx,by,bz)
  %3267 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3125)  ; FMax(a,b)
  %3268 = call float @dx.op.dot3.f32(i32 55, float %3148, float %3151, float %3154, float %3148, float %3151, float %3154)  ; Dot3(ax,ay,az,bx,by,bz)
  %3269 = fcmp fast oeq float %3268, 0.000000e+00
  %3270 = fcmp fast oeq float %3267, 0.000000e+00
  %3271 = or i1 %3270, %3269
  br i1 %3271, label %3301, label %3272

; <label>:3272                                    ; preds = %3245
  %3273 = fsub fast float -0.000000e+00, %3154
  %3274 = fsub fast float -0.000000e+00, %3148
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
  %3285 = call float @dx.op.dot3.f32(i32 55, float %3273, float %3274, float %3151, float %3273, float %3274, float %3151)  ; Dot3(ax,ay,az,bx,by,bz)
  %3286 = call float @dx.op.unary.f32(i32 25, float %3285)  ; Rsqrt(value)
  %3287 = fmul fast float %3286, %3273
  %3288 = fmul fast float %3286, %3274
  %3289 = fmul fast float %3286, %3151
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

; <label>:3301                                    ; preds = %3272, %3245
  %3302 = phi float [ %3287, %3272 ], [ 0.000000e+00, %3245 ]
  %3303 = phi float [ %3288, %3272 ], [ 0.000000e+00, %3245 ]
  %3304 = phi float [ %3289, %3272 ], [ 0.000000e+00, %3245 ]
  %3305 = phi float [ %3296, %3272 ], [ 0.000000e+00, %3245 ]
  %3306 = phi float [ %3300, %3272 ], [ 0.000000e+00, %3245 ]
  %3307 = call float @dx.op.dot3.f32(i32 55, float %3302, float %3303, float %3304, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3308 = fmul fast float %3307, %3307
  %3309 = fmul fast float %3308, 0x3FEE471020000000
  %3310 = fadd fast float %3309, 0xBFD42F6020000000
  %3311 = fmul fast float %3267, 0x3FD20DD760000000
  %3312 = fmul fast float %3310, %3306
  %3313 = fmul fast float %3305, 0x3FDF454380000000
  %3314 = fmul fast float %3313, %3307
  %3315 = fadd fast float %3314, %3311
  %3316 = fadd fast float %3315, %3312
  %3317 = call float @dx.op.dot3.f32(i32 55, float %3302, float %3303, float %3304, float %2139, float %2140, float %2141)  ; Dot3(ax,ay,az,bx,by,bz)
  %3318 = fmul fast float %3317, 0x3FDF454380000000
  %3319 = fmul fast float %3317, %3317
  %3320 = fmul fast float %3319, 0x3FEE471020000000
  %3321 = fadd fast float %3320, 0xBFD42F6020000000
  %3322 = call float @dx.op.dot3.f32(i32 55, float %3267, float %3305, float %3306, float 0x3FD20DD760000000, float %3318, float %3321)  ; Dot3(ax,ay,az,bx,by,bz)
  %3323 = call float @dx.op.binary.f32(i32 35, float %3204, float 0.000000e+00)  ; FMax(a,b)
  %3324 = call float @dx.op.binary.f32(i32 35, float %3260, float 0.000000e+00)  ; FMax(a,b)
  %3325 = call float @dx.op.binary.f32(i32 35, float %3316, float 0.000000e+00)  ; FMax(a,b)
  %3326 = call float @dx.op.binary.f32(i32 35, float %3210, float 0.000000e+00)  ; FMax(a,b)
  %3327 = call float @dx.op.binary.f32(i32 35, float %3266, float 0.000000e+00)  ; FMax(a,b)
  %3328 = call float @dx.op.binary.f32(i32 35, float %3322, float 0.000000e+00)  ; FMax(a,b)
  %3329 = fsub fast float %2523, %3323
  %3330 = fsub fast float %2524, %3324
  %3331 = fsub fast float %2525, %3325
  %3332 = fmul fast float %3329, %2202
  %3333 = fmul fast float %3330, %2202
  %3334 = fmul fast float %3331, %2202
  %3335 = fadd fast float %3332, %3323
  %3336 = fadd fast float %3333, %3324
  %3337 = fadd fast float %3334, %3325
  %3338 = fsub fast float %2520, %3326
  %3339 = fsub fast float %2521, %3327
  %3340 = fsub fast float %2522, %3328
  %3341 = fmul fast float %3338, %2202
  %3342 = fmul fast float %3339, %2202
  %3343 = fmul fast float %3340, %2202
  %3344 = fadd fast float %3341, %3326
  %3345 = fadd fast float %3342, %3327
  %3346 = fadd fast float %3343, %3328
  %3347 = fsub fast float %2304, %3127
  %3348 = fmul fast float %3347, %2202
  %3349 = fadd fast float %3348, %3127
  br label %3350

; <label>:3350                                    ; preds = %3301, %2519
  %3351 = phi float [ %3349, %3301 ], [ %2304, %2519 ]
  %3352 = phi float [ %3344, %3301 ], [ %2520, %2519 ]
  %3353 = phi float [ %3345, %3301 ], [ %2521, %2519 ]
  %3354 = phi float [ %3346, %3301 ], [ %2522, %2519 ]
  %3355 = phi float [ %3335, %3301 ], [ %2523, %2519 ]
  %3356 = phi float [ %3336, %3301 ], [ %2524, %2519 ]
  %3357 = phi float [ %3337, %3301 ], [ %2525, %2519 ]
  %3358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3358, 0
  %3360 = call float @dx.op.binary.f32(i32 36, float %2125, float %3359)  ; FMin(a,b)
  %3361 = fmul fast float %3360, %2143
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = bitcast float %3362 to i32
  %3364 = sub nsw i32 2129859010, %3363
  %3365 = bitcast i32 %3364 to float
  %3366 = call float @dx.op.binary.f32(i32 36, float %2126, float %3359)  ; FMin(a,b)
  %3367 = fmul fast float %3366, %2143
  %3368 = fsub fast float 1.000000e+00, %3367
  %3369 = bitcast float %3368 to i32
  %3370 = sub nsw i32 2129859010, %3369
  %3371 = bitcast i32 %3370 to float
  %3372 = call float @dx.op.binary.f32(i32 36, float %2127, float %3359)  ; FMin(a,b)
  %3373 = fmul fast float %3372, %2143
  %3374 = fsub fast float 1.000000e+00, %3373
  %3375 = bitcast float %3374 to i32
  %3376 = sub nsw i32 2129859010, %3375
  %3377 = bitcast i32 %3376 to float
  %3378 = fmul fast float %3355, %2142
  %3379 = fmul fast float %3378, %3365
  %3380 = fmul fast float %3356, %2142
  %3381 = fmul fast float %3380, %3371
  %3382 = fmul fast float %3357, %2142
  %3383 = fmul fast float %3382, %3377
  %3384 = call float @dx.op.binary.f32(i32 36, float %2119, float %3359)  ; FMin(a,b)
  %3385 = fmul fast float %3384, %2143
  %3386 = fsub fast float 1.000000e+00, %3385
  %3387 = bitcast float %3386 to i32
  %3388 = sub nsw i32 2129859010, %3387
  %3389 = bitcast i32 %3388 to float
  %3390 = call float @dx.op.binary.f32(i32 36, float %2120, float %3359)  ; FMin(a,b)
  %3391 = fmul fast float %3390, %2143
  %3392 = fsub fast float 1.000000e+00, %3391
  %3393 = bitcast float %3392 to i32
  %3394 = sub nsw i32 2129859010, %3393
  %3395 = bitcast i32 %3394 to float
  %3396 = call float @dx.op.binary.f32(i32 36, float %2131, float %3359)  ; FMin(a,b)
  %3397 = fmul fast float %3396, %2143
  %3398 = fsub fast float 1.000000e+00, %3397
  %3399 = bitcast float %3398 to i32
  %3400 = sub nsw i32 2129859010, %3399
  %3401 = bitcast i32 %3400 to float
  %3402 = fmul fast float %3352, %2142
  %3403 = fmul fast float %3402, %3389
  %3404 = fmul fast float %3353, %2142
  %3405 = fmul fast float %3404, %3395
  %3406 = fmul fast float %3354, %2142
  %3407 = fmul fast float %3406, %3401
  %3408 = call float @dx.op.dot3.f32(i32 55, float %3379, float %3381, float %3383, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3409 = select i1 %248, float 0.000000e+00, float %3379
  %3410 = select i1 %248, float %3408, float %3381
  %3411 = select i1 %248, float 0.000000e+00, float %3383
  %3412 = call float @dx.op.dot3.f32(i32 55, float %3403, float %3405, float %3407, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3413 = select i1 %248, float 0.000000e+00, float %3403
  %3414 = select i1 %248, float %3412, float %3405
  %3415 = select i1 %248, float 0.000000e+00, float %3407
  %3416 = fmul fast float %2133, 9.843750e-01
  %3417 = fmul fast float %2128, 9.843750e-01
  %3418 = fadd fast float %3416, 7.812500e-03
  %3419 = fadd fast float %3417, 7.812500e-03
  %3420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %3418, float %3419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3421 = extractvalue %dx.types.ResRet.f32 %3420, 2
  %3422 = extractvalue %dx.types.ResRet.f32 %3420, 3
  %3423 = fmul fast float %3421, %2119
  %3424 = fmul fast float %3421, %2120
  %3425 = fmul fast float %3421, %2131
  %3426 = fadd fast float %3423, %3422
  %3427 = fadd fast float %3424, %3422
  %3428 = fadd fast float %3425, %3422
  %3429 = fcmp fast ogt float %1496, 0.000000e+00
  br i1 %3429, label %3430, label %3456

; <label>:3430                                    ; preds = %3350
  %3431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1496, float %2133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3432 = extractvalue %dx.types.ResRet.f32 %3431, 0
  %3433 = extractvalue %dx.types.ResRet.f32 %3431, 1
  %3434 = extractvalue %dx.types.ResRet.f32 %3431, 2
  %3435 = fadd fast float %3432, -5.000000e-01
  %3436 = fadd fast float %3433, -5.000000e-01
  %3437 = fadd fast float %3434, -5.000000e-01
  %3438 = fsub fast float 1.000000e+00, %2119
  %3439 = fsub fast float 1.000000e+00, %2120
  %3440 = fsub fast float 1.000000e+00, %2131
  %3441 = fmul fast float %2119, 4.000000e+00
  %3442 = fmul fast float %3441, %3438
  %3443 = fmul fast float %3442, %3435
  %3444 = fmul fast float %2120, 4.000000e+00
  %3445 = fmul fast float %3444, %3439
  %3446 = fmul fast float %3445, %3436
  %3447 = fmul fast float %2131, 4.000000e+00
  %3448 = fmul fast float %3447, %3440
  %3449 = fmul fast float %3448, %3437
  %3450 = fadd fast float %3443, %3426
  %3451 = fadd fast float %3446, %3427
  %3452 = fadd fast float %3449, %3428
  %3453 = call float @dx.op.unary.f32(i32 7, float %3450)  ; Saturate(value)
  %3454 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3455 = call float @dx.op.unary.f32(i32 7, float %3452)  ; Saturate(value)
  br label %3456

; <label>:3456                                    ; preds = %3430, %3350
  %3457 = phi float [ %3453, %3430 ], [ %3426, %3350 ]
  %3458 = phi float [ %3454, %3430 ], [ %3427, %3350 ]
  %3459 = phi float [ %3455, %3430 ], [ %3428, %3350 ]
  %3460 = call float @dx.op.binary.f32(i32 35, float %3458, float %3459)  ; FMax(a,b)
  %3461 = call float @dx.op.binary.f32(i32 35, float %3457, float %3460)  ; FMax(a,b)
  %3462 = fsub fast float 1.000000e+00, %3461
  %3463 = fmul fast float %3461, %2128
  %3464 = fadd fast float %3463, %2128
  %3465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3466 = extractvalue %dx.types.CBufRet.f32 %3465, 2
  %3467 = extractvalue %dx.types.CBufRet.f32 %3465, 3
  %3468 = fmul fast float %3464, %3466
  %3469 = fadd fast float %3468, %3467
  %3470 = call float @dx.op.unary.f32(i32 7, float %3469)  ; Saturate(value)
  %3471 = fsub fast float 1.000000e+00, %2154
  %3472 = fadd fast float %3471, %3470
  %3473 = call float @dx.op.unary.f32(i32 7, float %3472)  ; Saturate(value)
  %3474 = fcmp fast olt float %3473, 1.000000e+00
  br i1 %3474, label %3475, label %3951

; <label>:3475                                    ; preds = %3456
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 2
  %3478 = extractvalue %dx.types.CBufRet.f32 %3476, 3
  %3479 = fmul fast float %3477, %102
  %3480 = fmul fast float %3478, %103
  %3481 = fptoui float %3479 to i32
  %3482 = fptoui float %3480 to i32
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3486 = extractvalue %dx.types.CBufRet.f32 %3483, 3
  %3487 = fadd fast float %90, -4.000000e+00
  %3488 = call float @dx.op.binary.f32(i32 35, float %3487, float 0.000000e+00)  ; FMax(a,b)
  %3489 = fadd fast float %3488, %3484
  %3490 = fmul fast float %3489, %3485
  %3491 = call float @dx.op.unary.f32(i32 23, float %3490)  ; Log(value)
  %3492 = fmul fast float %3491, %3486
  %3493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3494 = extractvalue %dx.types.CBufRet.f32 %3493, 2
  %3495 = fmul fast float %3492, %3494
  %3496 = call float @dx.op.unary.f32(i32 7, float %3495)  ; Saturate(value)
  %3497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.i32 %3497, 1
  %3499 = add i32 %3498, -1
  %3500 = uitofp i32 %3498 to float
  %3501 = fmul fast float %3500, %3496
  %3502 = fptoui float %3501 to i32
  %3503 = call i32 @dx.op.binary.i32(i32 40, i32 %3502, i32 %3499)  ; UMin(a,b)
  %3504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.i32 %3504, 2
  %3506 = extractvalue %dx.types.CBufRet.i32 %3504, 3
  %3507 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3482, i32 %3505, i32 %3481)  ; UMad(a,b,c)
  %3508 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3503, i32 %3506, i32 %3507)  ; UMad(a,b,c)
  %3509 = call float @dx.op.binary.f32(i32 35, float %90, float 0.000000e+00)  ; FMax(a,b)
  %3510 = fptoui float %3509 to i32
  %3511 = lshr i32 %3510, 5
  %3512 = call i32 @dx.op.binary.i32(i32 40, i32 %3511, i32 8191)  ; UMin(a,b)
  %3513 = fsub fast float %1918, %159
  %3514 = call float @dx.op.unary.f32(i32 7, float %3513)  ; Saturate(value)
  %3515 = fcmp fast ogt float %3514, 0.000000e+00
  %3516 = fcmp fast ogt float %2141, 0.000000e+00
  %3517 = and i1 %3516, %3515
  br i1 %3517, label %3518, label %3547

; <label>:3518                                    ; preds = %3475
  %3519 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3520 = call float @dx.op.binary.f32(i32 35, float %3519, float -1.000000e+00)  ; FMax(a,b)
  %3521 = call float @dx.op.binary.f32(i32 36, float %3520, float 1.000000e+00)  ; FMin(a,b)
  %3522 = fmul fast float %3521, %3521
  %3523 = fsub fast float 1.000000e+00, %3522
  %3524 = fmul fast float %3523, 0x3FFC6E2300000000
  %3525 = fsub fast float 1.000000e+00, %3524
  %3526 = fcmp fast ogt float %3525, 0.000000e+00
  %3527 = call float @dx.op.unary.f32(i32 24, float %3525)  ; Sqrt(value)
  %3528 = fsub fast float 1.000000e+00, %3527
  %3529 = call float @dx.op.unary.f32(i32 23, float %3528)  ; Log(value)
  %3530 = fmul fast float %3529, 5.000000e+00
  %3531 = call float @dx.op.unary.f32(i32 21, float %3530)  ; Exp(value)
  %3532 = fmul fast float %3531, 0x3FEF591A60000000
  %3533 = fadd fast float %3532, 0x3F94DCB540000000
  %3534 = select i1 %3526, float %3533, float 1.000000e+00
  %3535 = fcmp fast oge float %3534, 1.000000e+00
  %3536 = fmul fast float %3519, 2.000000e+00
  %3537 = fadd fast float %3536, %2141
  %3538 = select i1 %3535, float %3537, float %2141
  %3539 = fsub fast float %3538, %2141
  %3540 = fmul fast float %3539, %3514
  %3541 = fadd fast float %3540, %2141
  %3542 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %3541, float %2139, float %2140, float %3541)  ; Dot3(ax,ay,az,bx,by,bz)
  %3543 = call float @dx.op.unary.f32(i32 25, float %3542)  ; Rsqrt(value)
  %3544 = fmul fast float %3543, %2139
  %3545 = fmul fast float %3543, %2140
  %3546 = fmul fast float %3541, %3543
  br label %3547

; <label>:3547                                    ; preds = %3518, %3475
  %3548 = phi float [ %3544, %3518 ], [ %2139, %3475 ]
  %3549 = phi float [ %3545, %3518 ], [ %2140, %3475 ]
  %3550 = phi float [ %3546, %3518 ], [ %2141, %3475 ]
  %3551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3552 = extractvalue %dx.types.CBufRet.i32 %3551, 2
  %3553 = add nsw i32 %3552, -1
  %3554 = call i32 @dx.op.binary.i32(i32 37, i32 %3553, i32 0)  ; IMax(a,b)
  %3555 = shl i32 %3512, 2
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = lshr i32 %3557, 16
  %3559 = and i32 %3557, 65535
  %3560 = lshr i32 %3557, 21
  %3561 = lshr i32 %3559, 5
  %3562 = call i32 @dx.op.binary.i32(i32 40, i32 %3561, i32 %3554)  ; UMin(a,b)
  %3563 = icmp ugt i32 %3560, %3562
  br i1 %3563, label %3927, label %3564

; <label>:3564                                    ; preds = %3547
  br label %3565

; <label>:3565                                    ; preds = %3919, %3564
  %3566 = phi float [ %3920, %3919 ], [ 0.000000e+00, %3564 ]
  %3567 = phi float [ %3921, %3919 ], [ 0.000000e+00, %3564 ]
  %3568 = phi float [ %3922, %3919 ], [ 0.000000e+00, %3564 ]
  %3569 = phi float [ %3923, %3919 ], [ 1.000000e+00, %3564 ]
  %3570 = phi i32 [ %3924, %3919 ], [ %3560, %3564 ]
  %3571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3572 = extractvalue %dx.types.CBufRet.i32 %3571, 2
  %3573 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3508, i32 %3572, i32 %3570)  ; UMad(a,b,c)
  %3574 = shl i32 %3573, 2
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = shl i32 %3570, 5
  %3578 = sub nsw i32 %3558, %3577
  %3579 = call i32 @dx.op.binary.i32(i32 37, i32 %3578, i32 0)  ; IMax(a,b)
  %3580 = call i32 @dx.op.binary.i32(i32 38, i32 %3579, i32 31)  ; IMin(a,b)
  %3581 = sub nsw i32 1, %3558
  %3582 = add nsw i32 %3581, %3559
  %3583 = call i32 @dx.op.binary.i32(i32 37, i32 %3582, i32 0)  ; IMax(a,b)
  %3584 = call i32 @dx.op.binary.i32(i32 38, i32 %3583, i32 32)  ; IMin(a,b)
  %3585 = and i32 %3584, 31
  %3586 = shl i32 -1, %3585
  %3587 = xor i32 %3586, -1
  %3588 = and i32 %3580, 31
  %3589 = shl i32 %3587, %3588
  %3590 = icmp eq i32 %3584, 32
  %3591 = select i1 %3590, i32 -1, i32 %3589
  %3592 = and i32 %3591, %3576
  %3593 = icmp eq i32 %3592, 0
  br i1 %3593, label %3919, label %3594

; <label>:3594                                    ; preds = %3565
  br label %3595

; <label>:3595                                    ; preds = %3702, %3594
  %3596 = phi float [ %3703, %3702 ], [ %3566, %3594 ]
  %3597 = phi float [ %3704, %3702 ], [ %3567, %3594 ]
  %3598 = phi float [ %3705, %3702 ], [ %3568, %3594 ]
  %3599 = phi float [ %3706, %3702 ], [ %3569, %3594 ]
  %3600 = phi i32 [ %3605, %3702 ], [ %3592, %3594 ]
  %3601 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3600)  ; FirstbitLo(value)
  %3602 = add i32 %3601, %3577
  %3603 = and i32 %3601, 31
  %3604 = shl i32 1, %3603
  %3605 = xor i32 %3604, %3600
  %3606 = mul i32 %3602, 72
  %3607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = add i32 %3606, 12
  %3612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.i32 %3612, 0
  %3614 = add i32 %3606, 16
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3619 = add i32 %3606, 28
  %3620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = add i32 %3606, 32
  %3623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = extractvalue %dx.types.ResRet.f32 %3623, 3
  %3628 = add i32 %3606, 48
  %3629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.ResRet.f32 %3629, 1
  %3632 = add i32 %3606, 56
  %3633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.ResRet.f32 %3633, 1
  %3636 = add i32 %3606, 64
  %3637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.ResRet.f32 %3637, 1
  %3640 = mul i32 %3602, 60
  %3641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.ResRet.f32 %3641, 1
  %3644 = extractvalue %dx.types.ResRet.f32 %3641, 2
  %3645 = add i32 %3640, 12
  %3646 = add i32 %3640, 48
  %3647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.ResRet.f32 %3647, 2
  %3651 = and i32 %3613, 32767
  %3652 = bitcast float %3608 to i32
  %3653 = icmp eq i32 %3652, -1
  %3654 = bitcast float %3609 to i32
  %3655 = and i32 %3613, 32768
  %3656 = icmp ne i32 %3655, 0
  %3657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.CBufRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.CBufRet.f32 %3657, 2
  %3661 = fsub fast float %3642, %3658
  %3662 = fsub fast float %3643, %3659
  %3663 = fsub fast float %3644, %3660
  %3664 = fsub fast float %157, %3661
  %3665 = fsub fast float %158, %3662
  %3666 = fsub fast float %159, %3663
  %3667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3669 = extractvalue %dx.types.ResRet.f32 %3667, 1
  %3670 = extractvalue %dx.types.ResRet.f32 %3667, 2
  %3671 = call float @dx.op.dot3.f32(i32 55, float %3664, float %3665, float %3666, float %3668, float %3669, float %3670)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = add i32 %3640, 24
  %3673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3672, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.f32 %3673, 0
  %3675 = extractvalue %dx.types.ResRet.f32 %3673, 1
  %3676 = extractvalue %dx.types.ResRet.f32 %3673, 2
  %3677 = call float @dx.op.dot3.f32(i32 55, float %3664, float %3665, float %3666, float %3674, float %3675, float %3676)  ; Dot3(ax,ay,az,bx,by,bz)
  %3678 = add i32 %3640, 36
  %3679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.f32 %3679, 0
  %3681 = extractvalue %dx.types.ResRet.f32 %3679, 1
  %3682 = extractvalue %dx.types.ResRet.f32 %3679, 2
  %3683 = call float @dx.op.dot3.f32(i32 55, float %3664, float %3665, float %3666, float %3680, float %3681, float %3682)  ; Dot3(ax,ay,az,bx,by,bz)
  %3684 = call float @dx.op.unary.f32(i32 6, float %3671)  ; FAbs(value)
  %3685 = call float @dx.op.unary.f32(i32 6, float %3677)  ; FAbs(value)
  %3686 = call float @dx.op.unary.f32(i32 6, float %3683)  ; FAbs(value)
  %3687 = fsub fast float %3648, %3684
  %3688 = fsub fast float %3649, %3685
  %3689 = fsub fast float %3650, %3686
  %3690 = fmul fast float %3687, %3616
  %3691 = fmul fast float %3688, %3617
  %3692 = fmul fast float %3689, %3618
  %3693 = call float @dx.op.binary.f32(i32 36, float %3691, float %3692)  ; FMin(a,b)
  %3694 = call float @dx.op.binary.f32(i32 36, float %3690, float %3693)  ; FMin(a,b)
  %3695 = call float @dx.op.unary.f32(i32 7, float %3694)  ; Saturate(value)
  %3696 = call float @dx.op.binary.f32(i32 36, float %3599, float %3695)  ; FMin(a,b)
  %3697 = uitofp i1 %3656 to float
  %3698 = fadd fast float %3514, 1.000000e+00
  %3699 = fsub fast float %3698, %3697
  %3700 = fmul fast float %3696, %3699
  %3701 = fcmp fast ogt float %3700, 0.000000e+00
  br i1 %3701, label %3708, label %3702

; <label>:3702                                    ; preds = %3850, %3595
  %3703 = phi float [ %3914, %3850 ], [ %3596, %3595 ]
  %3704 = phi float [ %3915, %3850 ], [ %3597, %3595 ]
  %3705 = phi float [ %3916, %3850 ], [ %3598, %3595 ]
  %3706 = phi float [ %3917, %3850 ], [ %3599, %3595 ]
  %3707 = icmp eq i32 %3600, %3604
  br i1 %3707, label %3918, label %3595

; <label>:3708                                    ; preds = %3595
  br i1 %3653, label %3766, label %3709

; <label>:3709                                    ; preds = %3708
  %3710 = fsub fast float -0.000000e+00, %3668
  %3711 = fsub fast float -0.000000e+00, %3669
  %3712 = fsub fast float -0.000000e+00, %3670
  %3713 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float %3710, float %3711, float %3712)  ; Dot3(ax,ay,az,bx,by,bz)
  %3714 = fsub fast float -0.000000e+00, %3713
  %3715 = call float @dx.op.dot3.f32(i32 55, float %3664, float %3665, float %3666, float %3710, float %3711, float %3712)  ; Dot3(ax,ay,az,bx,by,bz)
  %3716 = fadd fast float %3715, %3631
  %3717 = fadd fast float %3630, %3715
  %3718 = fsub fast float -0.000000e+00, %3717
  %3719 = fcmp ogt float %3713, -0.000000e+00
  %3720 = select i1 %3719, float %3718, float %3716
  %3721 = call float @dx.op.unary.f32(i32 6, float %3714)  ; FAbs(value)
  %3722 = fdiv fast float 1.000000e+00, %3721
  %3723 = fmul fast float %3720, %3722
  %3724 = call float @dx.op.binary.f32(i32 35, float %3723, float 0.000000e+00)  ; FMax(a,b)
  %3725 = fsub fast float -0.000000e+00, %3674
  %3726 = fsub fast float -0.000000e+00, %3675
  %3727 = fsub fast float -0.000000e+00, %3676
  %3728 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float %3725, float %3726, float %3727)  ; Dot3(ax,ay,az,bx,by,bz)
  %3729 = fsub fast float -0.000000e+00, %3728
  %3730 = call float @dx.op.dot3.f32(i32 55, float %3664, float %3665, float %3666, float %3725, float %3726, float %3727)  ; Dot3(ax,ay,az,bx,by,bz)
  %3731 = fadd fast float %3730, %3635
  %3732 = fadd fast float %3634, %3730
  %3733 = fsub fast float -0.000000e+00, %3732
  %3734 = fcmp ogt float %3728, -0.000000e+00
  %3735 = select i1 %3734, float %3733, float %3731
  %3736 = call float @dx.op.unary.f32(i32 6, float %3729)  ; FAbs(value)
  %3737 = fdiv fast float 1.000000e+00, %3736
  %3738 = fmul fast float %3735, %3737
  %3739 = call float @dx.op.binary.f32(i32 35, float %3738, float 0.000000e+00)  ; FMax(a,b)
  %3740 = fsub fast float -0.000000e+00, %3680
  %3741 = fsub fast float -0.000000e+00, %3681
  %3742 = fsub fast float -0.000000e+00, %3682
  %3743 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float %3740, float %3741, float %3742)  ; Dot3(ax,ay,az,bx,by,bz)
  %3744 = fsub fast float -0.000000e+00, %3743
  %3745 = call float @dx.op.dot3.f32(i32 55, float %3664, float %3665, float %3666, float %3740, float %3741, float %3742)  ; Dot3(ax,ay,az,bx,by,bz)
  %3746 = fadd fast float %3745, %3639
  %3747 = fadd fast float %3638, %3745
  %3748 = fsub fast float -0.000000e+00, %3747
  %3749 = fcmp ogt float %3743, -0.000000e+00
  %3750 = select i1 %3749, float %3748, float %3746
  %3751 = call float @dx.op.unary.f32(i32 6, float %3744)  ; FAbs(value)
  %3752 = fdiv fast float 1.000000e+00, %3751
  %3753 = fmul fast float %3750, %3752
  %3754 = call float @dx.op.binary.f32(i32 35, float %3753, float 0.000000e+00)  ; FMax(a,b)
  %3755 = call float @dx.op.binary.f32(i32 36, float %3739, float %3754)  ; FMin(a,b)
  %3756 = call float @dx.op.binary.f32(i32 36, float %3724, float %3755)  ; FMin(a,b)
  %3757 = fmul fast float %3756, %3548
  %3758 = fmul fast float %3756, %3549
  %3759 = fmul fast float %3756, %3550
  %3760 = fadd fast float %3757, %157
  %3761 = fadd fast float %3758, %158
  %3762 = fadd fast float %3759, %159
  %3763 = fsub fast float %3760, %3608
  %3764 = fsub fast float %3761, %3609
  %3765 = fsub fast float %3762, %3610
  br label %3773

; <label>:3766                                    ; preds = %3708
  %3767 = fmul fast float %3548, 8.096000e+03
  %3768 = fmul fast float %3549, 8.096000e+03
  %3769 = fmul fast float %3550, 8.096000e+03
  %3770 = fadd fast float %3767, %157
  %3771 = fadd fast float %3768, %158
  %3772 = fadd fast float %3769, %159
  br label %3773

; <label>:3773                                    ; preds = %3766, %3709
  %3774 = phi float [ %3548, %3766 ], [ %3763, %3709 ]
  %3775 = phi float [ %3549, %3766 ], [ %3764, %3709 ]
  %3776 = phi float [ %3550, %3766 ], [ %3765, %3709 ]
  %3777 = phi float [ %3770, %3766 ], [ %3760, %3709 ]
  %3778 = phi float [ %3771, %3766 ], [ %3761, %3709 ]
  %3779 = phi float [ %3772, %3766 ], [ %3762, %3709 ]
  %3780 = fcmp fast olt float %3627, 1.000000e+00
  br i1 %3780, label %3781, label %3812, !dx.controlflow.hints !113

; <label>:3781                                    ; preds = %3773
  %3782 = fmul fast float %3776, %3625
  %3783 = fmul fast float %3775, %3626
  %3784 = fsub fast float %3782, %3783
  %3785 = fmul fast float %3774, %3626
  %3786 = fmul fast float %3776, %3624
  %3787 = fsub fast float %3785, %3786
  %3788 = fmul fast float %3775, %3624
  %3789 = fmul fast float %3774, %3625
  %3790 = fsub fast float %3788, %3789
  %3791 = fmul fast float %3784, 2.000000e+00
  %3792 = fmul fast float %3787, 2.000000e+00
  %3793 = fmul fast float %3790, 2.000000e+00
  %3794 = fmul fast float %3791, %3627
  %3795 = fmul fast float %3792, %3627
  %3796 = fmul fast float %3793, %3627
  %3797 = fmul fast float %3793, %3625
  %3798 = fmul fast float %3792, %3626
  %3799 = fmul fast float %3791, %3626
  %3800 = fmul fast float %3793, %3624
  %3801 = fmul fast float %3792, %3624
  %3802 = fmul fast float %3791, %3625
  %3803 = fadd fast float %3797, %3774
  %3804 = fadd fast float %3803, %3794
  %3805 = fsub fast float %3804, %3798
  %3806 = fsub fast float %3775, %3800
  %3807 = fadd fast float %3806, %3795
  %3808 = fadd fast float %3807, %3799
  %3809 = fadd fast float %3796, %3776
  %3810 = fsub fast float %3809, %3802
  %3811 = fadd fast float %3810, %3801
  br label %3812

; <label>:3812                                    ; preds = %3781, %3773
  %3813 = phi float [ %3805, %3781 ], [ %3774, %3773 ]
  %3814 = phi float [ %3808, %3781 ], [ %3775, %3773 ]
  %3815 = phi float [ %3811, %3781 ], [ %3776, %3773 ]
  br i1 %3653, label %3847, label %3816

; <label>:3816                                    ; preds = %3812
  %3817 = fmul fast float %2128, 0x400187C840000000
  %3818 = fadd fast float %3817, 0xC00EFC2120000000
  %3819 = fmul fast float %3818, %2128
  %3820 = fadd fast float %3819, 0x3FE5D16340000000
  %3821 = fmul fast float %3820, %2128
  %3822 = fadd fast float %3821, 1.000000e+00
  %3823 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3824 = fsub fast float %3777, %157
  %3825 = fsub fast float %3778, %158
  %3826 = fsub fast float %3779, %159
  %3827 = fsub fast float %3777, %3608
  %3828 = fsub fast float %3778, %3609
  %3829 = fsub fast float %3779, %3610
  %3830 = call float @dx.op.dot3.f32(i32 55, float %3824, float %3825, float %3826, float %3824, float %3825, float %3826)  ; Dot3(ax,ay,az,bx,by,bz)
  %3831 = call float @dx.op.dot3.f32(i32 55, float %3827, float %3828, float %3829, float %3827, float %3828, float %3829)  ; Dot3(ax,ay,az,bx,by,bz)
  %3832 = fadd fast float %3831, 0x3EE4F8B580000000
  %3833 = fdiv fast float %3830, %3832
  %3834 = bitcast float %3833 to i32
  %3835 = ashr i32 %3834, 1
  %3836 = add nsw i32 %3835, 532487669
  %3837 = bitcast i32 %3836 to float
  %3838 = fmul fast float %3837, %3823
  %3839 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3840 = fmul fast float %3839, 0x4009981AE0000000
  %3841 = fsub fast float 0x40111BBD80000000, %3840
  %3842 = fmul fast float %3841, %3839
  %3843 = fadd fast float %3842, 0xC0009F6020000000
  %3844 = fmul fast float %3843, %3839
  %3845 = fadd fast float %3844, 1.000000e+00
  %3846 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  br label %3850

; <label>:3847                                    ; preds = %3812
  %3848 = icmp ne i32 %3654, -1
  %3849 = zext i1 %3848 to i32
  br label %3850

; <label>:3850                                    ; preds = %3847, %3816
  %3851 = phi float [ %2128, %3847 ], [ %3846, %3816 ]
  %3852 = phi i32 [ %3849, %3847 ], [ 0, %3816 ]
  %3853 = fmul float %3851, 5.000000e+00
  %3854 = fsub float 5.000000e+00, %3853
  %3855 = icmp ne i32 %3852, 0
  %3856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3857 = extractvalue %dx.types.CBufRet.f32 %3856, 3
  %3858 = fadd fast float %3857, %3854
  %3859 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3858)  ; FMax(a,b)
  %3860 = call float @dx.op.unary.f32(i32 6, float %3813)  ; FAbs(value)
  %3861 = call float @dx.op.unary.f32(i32 6, float %3814)  ; FAbs(value)
  %3862 = fadd fast float %3861, %3860
  %3863 = call float @dx.op.unary.f32(i32 6, float %3815)  ; FAbs(value)
  %3864 = fadd fast float %3862, %3863
  %3865 = fcmp fast oeq float %3864, 0.000000e+00
  %3866 = fdiv fast float 1.000000e+00, %3864
  %3867 = select i1 %3865, float 1.000000e+00, float %3866
  %3868 = fmul fast float %3867, %3813
  %3869 = fmul fast float %3867, %3814
  %3870 = call float @dx.op.unary.f32(i32 6, float %3869)  ; FAbs(value)
  %3871 = call float @dx.op.unary.f32(i32 6, float %3868)  ; FAbs(value)
  %3872 = fsub fast float 1.000000e+00, %3870
  %3873 = fsub fast float 1.000000e+00, %3871
  %3874 = fcmp fast oge float %3868, 0.000000e+00
  %3875 = fcmp fast oge float %3869, 0.000000e+00
  %3876 = select i1 %3874, float 1.000000e+00, float -1.000000e+00
  %3877 = select i1 %3875, float 1.000000e+00, float -1.000000e+00
  %3878 = fcmp fast ole float %3815, 0.000000e+00
  %3879 = fmul fast float %3876, %3872
  %3880 = fmul fast float %3877, %3873
  %3881 = select i1 %3878, float %3879, float %3868
  %3882 = select i1 %3878, float %3880, float %3869
  %3883 = fmul fast float %3881, 5.000000e-01
  %3884 = fmul fast float %3882, 5.000000e-01
  %3885 = fadd fast float %3883, 5.000000e-01
  %3886 = fadd fast float %3884, 5.000000e-01
  %3887 = uitofp i32 %3651 to float
  %3888 = call float @dx.op.binary.f32(i32 36, float %3859, float 3.000000e+00)  ; FMin(a,b)
  %3889 = fadd fast float %3888, 2.000000e+00
  %3890 = call float @dx.op.unary.f32(i32 21, float %3889)  ; Exp(value)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3856, 1
  %3892 = fmul fast float %3891, %3890
  %3893 = fmul fast float %3892, 2.000000e+00
  %3894 = fsub fast float 1.000000e+00, %3893
  %3895 = fmul fast float %3885, %3894
  %3896 = fmul fast float %3886, %3894
  %3897 = fadd fast float %3895, %3892
  %3898 = fadd fast float %3896, %3892
  %3899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %3897, float %3898, float %3887, float undef, i32 0, i32 0, i32 undef, float %3859)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3900 = extractvalue %dx.types.ResRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.ResRet.f32 %3899, 1
  %3902 = extractvalue %dx.types.ResRet.f32 %3899, 2
  %3903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3903, 3
  %3905 = fmul fast float %3904, %3621
  %3906 = call float @dx.op.binary.f32(i32 36, float %3351, float %3905)  ; FMin(a,b)
  %3907 = select i1 %3855, float %3906, float %3905
  %3908 = fmul fast float %3900, %3700
  %3909 = fmul fast float %3908, %3907
  %3910 = fmul fast float %3901, %3700
  %3911 = fmul fast float %3910, %3907
  %3912 = fmul fast float %3902, %3700
  %3913 = fmul fast float %3912, %3907
  %3914 = fadd fast float %3909, %3596
  %3915 = fadd fast float %3911, %3597
  %3916 = fadd fast float %3913, %3598
  %3917 = fsub fast float %3599, %3700
  br label %3702

; <label>:3918                                    ; preds = %3702
  br label %3919

; <label>:3919                                    ; preds = %3918, %3565
  %3920 = phi float [ %3566, %3565 ], [ %3703, %3918 ]
  %3921 = phi float [ %3567, %3565 ], [ %3704, %3918 ]
  %3922 = phi float [ %3568, %3565 ], [ %3705, %3918 ]
  %3923 = phi float [ %3569, %3565 ], [ %3706, %3918 ]
  %3924 = add i32 %3570, 1
  %3925 = icmp ugt i32 %3924, %3562
  br i1 %3925, label %3926, label %3565, !llvm.loop !114

; <label>:3926                                    ; preds = %3919
  br label %3927

; <label>:3927                                    ; preds = %3926, %3547
  %3928 = phi float [ 0.000000e+00, %3547 ], [ %3920, %3926 ]
  %3929 = phi float [ 0.000000e+00, %3547 ], [ %3921, %3926 ]
  %3930 = phi float [ 0.000000e+00, %3547 ], [ %3922, %3926 ]
  %3931 = call float @dx.op.dot3.f32(i32 55, float %3928, float %3929, float %3930, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3932 = select i1 %248, float 0.000000e+00, float %3928
  %3933 = select i1 %248, float %3931, float %3929
  %3934 = select i1 %248, float 0.000000e+00, float %3930
  %3935 = fcmp fast olt float %3473, 0.000000e+00
  %3936 = call float @dx.op.unary.f32(i32 6, float %3473)  ; FAbs(value)
  %3937 = fmul fast float %3936, %3413
  %3938 = fmul fast float %3936, %3414
  %3939 = fmul fast float %3936, %3415
  %3940 = select i1 %3935, float %3413, float %3937
  %3941 = select i1 %3935, float %3414, float %3938
  %3942 = select i1 %3935, float %3415, float %3939
  %3943 = fsub fast float 1.000000e+00, %3936
  %3944 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3945 = fmul fast float %3944, %3932
  %3946 = fmul fast float %3944, %3933
  %3947 = fmul fast float %3944, %3934
  %3948 = fadd fast float %3940, %3945
  %3949 = fadd fast float %3941, %3946
  %3950 = fadd fast float %3942, %3947
  br label %3951

; <label>:3951                                    ; preds = %3927, %3456
  %3952 = phi float [ %3413, %3456 ], [ %3948, %3927 ]
  %3953 = phi float [ %3414, %3456 ], [ %3949, %3927 ]
  %3954 = phi float [ %3415, %3456 ], [ %3950, %3927 ]
  %3955 = fmul fast float %3462, %3409
  %3956 = fmul fast float %3462, %3410
  %3957 = fmul fast float %3462, %3411
  %3958 = call float @dx.op.dot3.f32(i32 55, float %2125, float %2126, float %2127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3959 = fcmp fast ogt float %3958, 0x3E7FF19E20000000
  %3960 = fdiv fast float 1.000000e+00, %3958
  %3961 = select i1 %3959, float %3960, float 0.000000e+00
  %3962 = fmul fast float %3961, %2125
  %3963 = fmul fast float %3961, %2126
  %3964 = fmul fast float %3961, %2127
  %3965 = fadd fast float %3962, -1.000000e+00
  %3966 = fadd fast float %3963, -1.000000e+00
  %3967 = fadd fast float %3964, -1.000000e+00
  %3968 = fmul fast float %3965, 5.000000e-01
  %3969 = fmul fast float %3966, 5.000000e-01
  %3970 = fmul fast float %3967, 5.000000e-01
  %3971 = fadd fast float %3968, 1.000000e+00
  %3972 = fadd fast float %3969, 1.000000e+00
  %3973 = fadd fast float %3970, 1.000000e+00
  %3974 = fmul fast float %3952, %3457
  %3975 = fmul fast float %3953, %3458
  %3976 = fmul fast float %3954, %3459
  %3977 = fsub fast float 1.000000e+00, %2133
  %3978 = bitcast float %3977 to i32
  %3979 = sitofp i32 %3978 to float
  %3980 = fmul fast float %3979, 5.000000e+00
  %3981 = fadd fast float %3980, 0xC1EFBF8940000000
  %3982 = fptosi float %3981 to i32
  %3983 = bitcast i32 %3982 to float
  %3984 = fmul fast float %3983, %1495
  %3985 = fmul fast float %3409, %3984
  %3986 = fmul fast float %3985, %3462
  %3987 = fmul fast float %3986, %3971
  %3988 = fmul fast float %3410, %3984
  %3989 = fmul fast float %3988, %3462
  %3990 = fmul fast float %3989, %3972
  %3991 = fmul fast float %3411, %3984
  %3992 = fmul fast float %3991, %3462
  %3993 = fmul fast float %3992, %3973
  %3994 = fmul fast float %3955, %1516
  %3995 = fmul fast float %3956, %1516
  %3996 = fmul fast float %3957, %1516
  %3997 = fadd fast float %3974, %1497
  %3998 = fadd fast float %3997, %3987
  %3999 = fmul fast float %3998, %1516
  %4000 = fadd fast float %3975, %1498
  %4001 = fadd fast float %4000, %3990
  %4002 = fmul fast float %4001, %1516
  %4003 = fadd fast float %3976, %1499
  %4004 = fadd fast float %4003, %3993
  %4005 = fmul fast float %4004, %1516
  %4006 = bitcast i32 %2157 to float
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 3
  %4009 = fcmp fast oeq float %4008, 0.000000e+00
  br i1 %4009, label %5551, label %4010

; <label>:4010                                    ; preds = %3951
  %4011 = extractvalue %dx.types.CBufRet.f32 %4007, 0
  %4012 = extractvalue %dx.types.CBufRet.f32 %4007, 1
  %4013 = extractvalue %dx.types.CBufRet.f32 %4007, 2
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4016 = extractvalue %dx.types.CBufRet.f32 %4014, 1
  %4017 = extractvalue %dx.types.CBufRet.f32 %4014, 2
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 0
  %4020 = extractvalue %dx.types.CBufRet.f32 %4018, 1
  %4021 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = select i1 %248, float %4019, float %4015
  %4023 = select i1 %248, float %4021, float %4016
  %4024 = select i1 %248, float %4020, float %4017
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 2
  %4027 = fmul fast float %4026, %105
  %4028 = fmul fast float %4026, %106
  %4029 = fmul fast float %4026, %107
  %4030 = fadd fast float %4027, %157
  %4031 = fadd fast float %4028, %158
  %4032 = fadd fast float %4029, %159
  %4033 = fcmp fast olt float %4008, 0.000000e+00
  br i1 %4033, label %5129, label %4034

; <label>:4034                                    ; preds = %4010
  %4035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.CBufRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.CBufRet.f32 %4035, 2
  %4039 = extractvalue %dx.types.CBufRet.f32 %4035, 3
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.CBufRet.f32 %4040, 1
  %4043 = extractvalue %dx.types.CBufRet.f32 %4040, 2
  %4044 = extractvalue %dx.types.CBufRet.f32 %4040, 3
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.CBufRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.CBufRet.f32 %4045, 2
  %4049 = extractvalue %dx.types.CBufRet.f32 %4045, 3
  %4050 = fmul fast float %4036, %4030
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4037, float %4050)  ; FMad(a,b,c)
  %4052 = call float @dx.op.tertiary.f32(i32 46, float %4032, float %4038, float %4051)  ; FMad(a,b,c)
  %4053 = fadd fast float %4052, %4039
  %4054 = fmul fast float %4041, %4030
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4042, float %4054)  ; FMad(a,b,c)
  %4056 = call float @dx.op.tertiary.f32(i32 46, float %4032, float %4043, float %4055)  ; FMad(a,b,c)
  %4057 = fadd fast float %4056, %4044
  %4058 = fmul fast float %4046, %4030
  %4059 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4047, float %4058)  ; FMad(a,b,c)
  %4060 = call float @dx.op.tertiary.f32(i32 46, float %4032, float %4048, float %4059)  ; FMad(a,b,c)
  %4061 = fadd fast float %4060, %4049
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4065 = extractvalue %dx.types.CBufRet.f32 %4062, 3
  %4066 = fmul fast float %4065, %4053
  %4067 = fmul fast float %4065, %4057
  %4068 = fadd fast float %4066, %4063
  %4069 = fadd fast float %4067, %4064
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 0
  %4072 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4073 = extractvalue %dx.types.CBufRet.f32 %4070, 3
  %4074 = fmul fast float %4073, %4053
  %4075 = fmul fast float %4073, %4057
  %4076 = fadd fast float %4074, %4071
  %4077 = fadd fast float %4075, %4072
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4080 = fsub fast float %4079, %4061
  %4081 = extractvalue %dx.types.CBufRet.f32 %4078, 2
  %4082 = fmul fast float %4080, %4081
  %4083 = fsub fast float 1.000000e+00, %4082
  %4084 = call float @dx.op.unary.f32(i32 7, float %4083)  ; Saturate(value)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4070, 2
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 2
  %4088 = fadd fast float %4087, %4085
  %4089 = fcmp fast ogt float %4088, 0.000000e+00
  br i1 %4089, label %4090, label %4114

; <label>:4090                                    ; preds = %4034
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 0
  %4093 = extractvalue %dx.types.CBufRet.f32 %4091, 1
  %4094 = fsub fast float %4076, %4092
  %4095 = fsub fast float %4077, %4093
  %4096 = fcmp fast olt float %4094, 0.000000e+00
  %4097 = fcmp fast olt float %4095, 0.000000e+00
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4102 = extractvalue %dx.types.CBufRet.f32 %4098, 3
  %4103 = select i1 %4096, float %4099, float %4101
  %4104 = select i1 %4097, float %4100, float %4102
  %4105 = fmul fast float %4103, %4094
  %4106 = fmul fast float %4104, %4095
  %4107 = call float @dx.op.unary.f32(i32 6, float %4105)  ; FAbs(value)
  %4108 = call float @dx.op.unary.f32(i32 6, float %4106)  ; FAbs(value)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4110 = call float @dx.op.binary.f32(i32 35, float %4107, float %4108)  ; FMax(a,b)
  %4111 = fsub fast float %4109, %4110
  %4112 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4113 = fmul fast float %4112, %4084
  br label %4114

; <label>:4114                                    ; preds = %4090, %4034
  %4115 = phi float [ %4113, %4090 ], [ 0.000000e+00, %4034 ]
  %4116 = extractvalue %dx.types.CBufRet.f32 %4062, 2
  %4117 = extractvalue %dx.types.CBufRet.f32 %4086, 1
  %4118 = fadd fast float %4117, %4116
  %4119 = fcmp fast ogt float %4118, 0.000000e+00
  %4120 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  br i1 %4119, label %4121, label %4144

; <label>:4121                                    ; preds = %4114
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.CBufRet.f32 %4122, 1
  %4125 = fsub fast float %4068, %4123
  %4126 = fsub fast float %4069, %4124
  %4127 = fcmp fast olt float %4125, 0.000000e+00
  %4128 = fcmp fast olt float %4126, 0.000000e+00
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.CBufRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4133 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4134 = select i1 %4127, float %4130, float %4132
  %4135 = select i1 %4128, float %4131, float %4133
  %4136 = fmul fast float %4134, %4125
  %4137 = fmul fast float %4135, %4126
  %4138 = call float @dx.op.unary.f32(i32 6, float %4136)  ; FAbs(value)
  %4139 = call float @dx.op.unary.f32(i32 6, float %4137)  ; FAbs(value)
  %4140 = call float @dx.op.binary.f32(i32 35, float %4138, float %4139)  ; FMax(a,b)
  %4141 = fsub fast float %4120, %4140
  %4142 = call float @dx.op.unary.f32(i32 7, float %4141)  ; Saturate(value)
  %4143 = fmul fast float %4142, %4084
  br label %4144

; <label>:4144                                    ; preds = %4121, %4114
  %4145 = phi float [ %4143, %4121 ], [ 0.000000e+00, %4114 ]
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 1
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.CBufRet.f32 %4149, 1
  %4152 = fsub fast float %4053, %4150
  %4153 = fsub fast float %4057, %4151
  %4154 = fcmp fast olt float %4152, 0.000000e+00
  %4155 = fcmp fast olt float %4153, 0.000000e+00
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4160 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4161 = select i1 %4154, float %4157, float %4159
  %4162 = select i1 %4155, float %4158, float %4160
  %4163 = fmul fast float %4161, %4152
  %4164 = fmul fast float %4162, %4153
  %4165 = call float @dx.op.unary.f32(i32 6, float %4163)  ; FAbs(value)
  %4166 = call float @dx.op.unary.f32(i32 6, float %4164)  ; FAbs(value)
  %4167 = call float @dx.op.binary.f32(i32 35, float %4165, float %4166)  ; FMax(a,b)
  %4168 = fsub fast float %4120, %4167
  %4169 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4170 = call float @dx.op.binary.f32(i32 36, float %4169, float %4148)  ; FMin(a,b)
  %4171 = fmul fast float %4170, %4084
  %4172 = fsub fast float %4145, %4171
  %4173 = fsub fast float %4115, %4145
  %4174 = fsub fast float %4173, %4171
  %4175 = call float @dx.op.binary.f32(i32 35, float %4145, float %4115)  ; FMax(a,b)
  %4176 = call float @dx.op.binary.f32(i32 35, float %4171, float %4175)  ; FMax(a,b)
  %4177 = fcmp fast olt float %4176, 1.000000e+00
  br i1 %4177, label %4178, label %4576, !dx.controlflow.hints !116

; <label>:4178                                    ; preds = %4144
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 0
  %4181 = fcmp fast une float %4180, 0.000000e+00
  br i1 %4181, label %4182, label %4576, !dx.controlflow.hints !117

; <label>:4182                                    ; preds = %4178
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.CBufRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.CBufRet.f32 %4183, 2
  %4187 = extractvalue %dx.types.CBufRet.f32 %4183, 3
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.CBufRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.CBufRet.f32 %4188, 2
  %4192 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.CBufRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.CBufRet.f32 %4193, 2
  %4197 = extractvalue %dx.types.CBufRet.f32 %4193, 3
  %4198 = fmul fast float %4184, %4030
  %4199 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4185, float %4198)  ; FMad(a,b,c)
  %4200 = call float @dx.op.tertiary.f32(i32 46, float %4032, float %4186, float %4199)  ; FMad(a,b,c)
  %4201 = fadd fast float %4200, %4187
  %4202 = fmul fast float %4189, %4030
  %4203 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4190, float %4202)  ; FMad(a,b,c)
  %4204 = call float @dx.op.tertiary.f32(i32 46, float %4032, float %4191, float %4203)  ; FMad(a,b,c)
  %4205 = fadd fast float %4204, %4192
  %4206 = fmul fast float %4194, %4030
  %4207 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4195, float %4206)  ; FMad(a,b,c)
  %4208 = call float @dx.op.tertiary.f32(i32 46, float %4032, float %4196, float %4207)  ; FMad(a,b,c)
  %4209 = fadd fast float %4208, %4197
  %4210 = fcmp fast oge float %4201, 1.000000e+00
  %4211 = fcmp fast oge float %4205, 1.000000e+00
  %4212 = or i1 %4210, %4211
  %4213 = fcmp fast olt float %4201, 0.000000e+00
  %4214 = fcmp fast olt float %4205, 0.000000e+00
  %4215 = or i1 %4213, %4214
  %4216 = or i1 %4212, %4215
  br i1 %4216, label %4576, label %4217, !dx.controlflow.hints !118

; <label>:4217                                    ; preds = %4182
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.CBufRet.f32 %4218, 1
  %4221 = extractvalue %dx.types.CBufRet.f32 %4218, 2
  %4222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.i32 %4222, 2
  %4224 = uitofp i32 %4223 to float
  %4225 = extractvalue %dx.types.CBufRet.i32 %4222, 3
  %4226 = uitofp i32 %4225 to float
  %4227 = extractvalue %dx.types.CBufRet.f32 %4218, 3
  %4228 = fmul fast float %4227, 2.000000e+00
  %4229 = fsub fast float %4201, %4219
  %4230 = fsub fast float %4205, %4220
  %4231 = fmul fast float %4228, %4229
  %4232 = fmul fast float %4228, %4230
  %4233 = fdiv fast float 1.000000e+00, %4013
  %4234 = fmul fast float %4232, %4233
  %4235 = call float @dx.op.unary.f32(i32 6, float %4234)  ; FAbs(value)
  %4236 = fmul fast float %4221, %4032
  %4237 = fmul fast float %4236, %4228
  %4238 = call float @dx.op.unary.f32(i32 6, float %4237)  ; FAbs(value)
  %4239 = call float @dx.op.unary.f32(i32 6, float %4231)  ; FAbs(value)
  %4240 = call float @dx.op.binary.f32(i32 35, float %4238, float %4235)  ; FMax(a,b)
  %4241 = call float @dx.op.binary.f32(i32 35, float %4239, float %4240)  ; FMax(a,b)
  %4242 = fmul fast float %4241, 2.000000e+00
  %4243 = call float @dx.op.unary.f32(i32 23, float %4242)  ; Log(value)
  %4244 = call float @dx.op.binary.f32(i32 35, float %4243, float %4224)  ; FMax(a,b)
  %4245 = call float @dx.op.unary.f32(i32 22, float %4244)  ; Frc(value)
  %4246 = fadd fast float %4245, 0xBFEA666660000000
  %4247 = fmul fast float %4246, 8.000000e+00
  %4248 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4249 = call float @dx.op.unary.f32(i32 27, float %4244)  ; Round_ni(value)
  %4250 = fadd fast float %4249, %4248
  %4251 = call float @dx.op.binary.f32(i32 36, float %4250, float %4226)  ; FMin(a,b)
  %4252 = call float @dx.op.unary.f32(i32 27, float %4251)  ; Round_ni(value)
  %4253 = fsub fast float -0.000000e+00, %4252
  %4254 = call float @dx.op.unary.f32(i32 21, float %4253)  ; Exp(value)
  %4255 = fmul fast float %4254, %4228
  %4256 = fmul fast float %4255, %4201
  %4257 = fmul fast float %4255, %4205
  %4258 = fmul fast float %4256, 2.500000e-01
  %4259 = fmul fast float %4257, 2.500000e-01
  %4260 = fadd fast float %4258, 5.000000e-01
  %4261 = fadd fast float %4259, 5.000000e-01
  %4262 = fsub fast float %4226, %4224
  %4263 = fptoui float %4262 to i32
  %4264 = add i32 %4263, 320
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %4264)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 0
  %4267 = extractvalue %dx.types.CBufRet.f32 %4265, 1
  %4268 = fcmp fast une float %4251, %4226
  %4269 = fsub fast float %4201, %4266
  %4270 = fsub fast float %4205, %4267
  %4271 = call float @dx.op.unary.f32(i32 6, float %4269)  ; FAbs(value)
  %4272 = call float @dx.op.unary.f32(i32 6, float %4270)  ; FAbs(value)
  %4273 = fmul fast float %4271, %4255
  %4274 = fmul fast float %4272, %4255
  %4275 = fcmp fast olt float %4273, 1.000000e+00
  %4276 = fcmp fast olt float %4274, 1.000000e+00
  %4277 = and i1 %4275, %4276
  %4278 = or i1 %4268, %4277
  br i1 %4278, label %4279, label %4576, !dx.controlflow.hints !119

; <label>:4279                                    ; preds = %4217
  %4280 = fmul fast float %4257, 5.000000e-01
  %4281 = fmul fast float %4256, 5.000000e-01
  %4282 = fadd fast float %4280, 5.000000e-01
  %4283 = fadd fast float %4281, 5.000000e-01
  %4284 = sitofp i32 %4223 to float
  %4285 = fsub fast float %4251, %4284
  %4286 = call float @dx.op.unary.f32(i32 27, float %4285)  ; Round_ni(value)
  %4287 = call float @dx.op.unary.f32(i32 22, float %4251)  ; Frc(value)
  %4288 = call float @dx.op.unary.f32(i32 22, float %4283)  ; Frc(value)
  %4289 = call float @dx.op.unary.f32(i32 22, float %4282)  ; Frc(value)
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4288, float %4289, float %4286, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.ResRet.f32 %4290, 1
  %4293 = extractvalue %dx.types.ResRet.f32 %4290, 2
  %4294 = extractvalue %dx.types.ResRet.f32 %4290, 3
  %4295 = fcmp fast ogt float %4287, 0.000000e+00
  br i1 %4295, label %4296, label %4317, !dx.controlflow.hints !120

; <label>:4296                                    ; preds = %4279
  %4297 = fadd fast float %4286, 1.000000e+00
  %4298 = call float @dx.op.unary.f32(i32 22, float %4260)  ; Frc(value)
  %4299 = call float @dx.op.unary.f32(i32 22, float %4261)  ; Frc(value)
  %4300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %63, float %4298, float %4299, float %4297, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.ResRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.ResRet.f32 %4300, 2
  %4304 = extractvalue %dx.types.ResRet.f32 %4300, 3
  %4305 = fsub fast float %4301, %4291
  %4306 = fsub fast float %4302, %4292
  %4307 = fsub fast float %4303, %4293
  %4308 = fsub fast float %4304, %4294
  %4309 = fmul fast float %4305, %4287
  %4310 = fmul fast float %4306, %4287
  %4311 = fmul fast float %4307, %4287
  %4312 = fmul fast float %4308, %4287
  %4313 = fadd fast float %4309, %4291
  %4314 = fadd fast float %4310, %4292
  %4315 = fadd fast float %4311, %4293
  %4316 = fadd fast float %4312, %4294
  br label %4317

; <label>:4317                                    ; preds = %4296, %4279
  %4318 = phi float [ %4313, %4296 ], [ %4291, %4279 ]
  %4319 = phi float [ %4314, %4296 ], [ %4292, %4279 ]
  %4320 = phi float [ %4315, %4296 ], [ %4293, %4279 ]
  %4321 = phi float [ %4316, %4296 ], [ %4294, %4279 ]
  %4322 = fadd fast float %4318, -5.000000e-01
  %4323 = fadd fast float %4320, -5.000000e-01
  %4324 = fmul fast float %4322, 0xBFD5555560000000
  %4325 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4323, float %4324)  ; FMad(a,b,c)
  %4326 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4319, float 0.000000e+00)  ; FMad(a,b,c)
  %4327 = fadd fast float %4326, %4321
  %4328 = fmul fast float %4322, -7.500000e-01
  %4329 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4323, float %4328)  ; FMad(a,b,c)
  %4330 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4319, float 0.000000e+00)  ; FMad(a,b,c)
  %4331 = fadd fast float %4330, %4321
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 0
  %4336 = extractvalue %dx.types.CBufRet.f32 %4334, 1
  %4337 = extractvalue %dx.types.CBufRet.f32 %4334, 2
  %4338 = extractvalue %dx.types.CBufRet.f32 %4334, 3
  %4339 = fsub fast float %4335, %4325
  %4340 = fsub fast float %4336, %4327
  %4341 = fsub fast float %4337, %4329
  %4342 = fsub fast float %4338, %4331
  %4343 = fmul fast float %4339, %4333
  %4344 = fmul fast float %4340, %4333
  %4345 = fmul fast float %4341, %4333
  %4346 = fmul fast float %4342, %4333
  %4347 = fadd fast float %4343, %4325
  %4348 = fadd fast float %4344, %4327
  %4349 = fadd fast float %4345, %4329
  %4350 = fadd fast float %4346, %4331
  %4351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.i32 %4351, 0
  %4353 = and i32 %4352, 536870911
  %4354 = uitofp i32 %4353 to float
  %4355 = fmul fast float %4354, %4201
  %4356 = fmul fast float %4354, %4205
  %4357 = fptoui float %4355 to i32
  %4358 = fptoui float %4356 to i32
  %4359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4360 = extractvalue %dx.types.ResRet.i32 %4359, 0
  %4361 = and i32 %4360, 31
  %4362 = lshr i32 %4357, %4361
  %4363 = lshr i32 %4358, %4361
  %4364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.i32 %4364, 0
  %4366 = and i32 %4365, 31
  %4367 = shl i32 1, %4366
  %4368 = call i32 @dx.op.binary.i32(i32 40, i32 %4367, i32 4)  ; UMin(a,b)
  %4369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.i32 %4369, 0
  %4371 = extractvalue %dx.types.ResRet.i32 %4369, 1
  %4372 = icmp eq i32 %4368, 0
  br i1 %4372, label %4414, label %4373

; <label>:4373                                    ; preds = %4317
  br label %4374

; <label>:4374                                    ; preds = %4402, %4373
  %4375 = phi i32 [ %4405, %4402 ], [ 0, %4373 ]
  %4376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4377 = extractvalue %dx.types.ResRet.i32 %4376, 0
  %4378 = lshr i32 %4377, 16
  %4379 = and i32 %4378, 31
  %4380 = shl i32 %4363, %4379
  %4381 = add i32 %4380, %4362
  %4382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4383 = extractvalue %dx.types.ResRet.i32 %4382, 0
  %4384 = and i32 %4383, 31
  %4385 = shl i32 %4381, %4384
  %4386 = add i32 %4385, %4375
  %4387 = shl i32 %4386, 2
  %4388 = add i32 %4387, 32
  %4389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4388, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.i32 %4389, 0
  %4391 = icmp slt i32 %4390, 0
  %4392 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4375
  %4393 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %4375
  %4394 = bitcast float* %4392 to i32*
  %4395 = bitcast float* %4393 to i32*
  br i1 %4391, label %4396, label %4402

; <label>:4396                                    ; preds = %4374
  %4397 = and i32 %4390, 1073741823
  %4398 = add nuw nsw i32 %4397, 20
  %4399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4400 = extractvalue %dx.types.ResRet.i32 %4399, 0
  %4401 = extractvalue %dx.types.ResRet.i32 %4399, 1
  br label %4402

; <label>:4402                                    ; preds = %4396, %4374
  %4403 = phi i32 [ %4400, %4396 ], [ %4370, %4374 ]
  %4404 = phi i32 [ %4401, %4396 ], [ %4371, %4374 ]
  store i32 %4403, i32* %4394, align 4
  store i32 %4404, i32* %4395, align 4
  %4405 = add nuw i32 %4375, 1
  %4406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.i32 %4406, 2
  %4408 = icmp eq i32 %4407, 0
  %4409 = icmp ugt i32 %4390, -1073741825
  %4410 = and i1 %4409, %4408
  %4411 = icmp ult i32 %4405, %4368
  %4412 = and i1 %4410, %4411
  br i1 %4412, label %4374, label %4413

; <label>:4413                                    ; preds = %4402
  br label %4414

; <label>:4414                                    ; preds = %4413, %4317
  %4415 = phi i32 [ 0, %4317 ], [ %4405, %4413 ]
  %4416 = extractvalue %dx.types.CBufRet.f32 %4179, 2
  %4417 = fptoui float %4416 to i32
  %4418 = icmp eq i32 %4417, 0
  br i1 %4418, label %4470, label %4419

; <label>:4419                                    ; preds = %4414
  br label %4420

; <label>:4420                                    ; preds = %4465, %4419
  %4421 = phi i32 [ %4466, %4465 ], [ %4415, %4419 ]
  %4422 = phi i32 [ %4467, %4465 ], [ 0, %4419 ]
  %4423 = lshr i32 %4422, 2
  %4424 = and i32 %4422, 3
  %4425 = add nuw nsw i32 %4423, 83
  %4426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 %4425)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.i32 %4426, 0
  %4428 = extractvalue %dx.types.CBufRet.i32 %4426, 1
  %4429 = extractvalue %dx.types.CBufRet.i32 %4426, 2
  %4430 = extractvalue %dx.types.CBufRet.i32 %4426, 3
  %4431 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %4427, i32* %4431, align 4
  %4432 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %4428, i32* %4432, align 4
  %4433 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %4429, i32* %4433, align 4
  %4434 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %4430, i32* %4434, align 4
  %4435 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %4424
  %4436 = load i32, i32* %4435, align 4, !tbaa !121, !noalias !125
  %4437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.i32 %4437, 0
  %4439 = lshr i32 %4438, 16
  %4440 = and i32 %4439, 31
  %4441 = shl i32 %4363, %4440
  %4442 = add i32 %4441, %4362
  %4443 = shl i32 %4442, 2
  %4444 = add i32 %4443, %4436
  %4445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4446 = extractvalue %dx.types.ResRet.i32 %4445, 0
  %4447 = icmp eq i32 %4446, 0
  br i1 %4447, label %4465, label %4448

; <label>:4448                                    ; preds = %4420
  %4449 = icmp slt i32 %4446, 0
  %4450 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4421
  %4451 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %4421
  %4452 = bitcast float* %4450 to i32*
  %4453 = bitcast float* %4451 to i32*
  br i1 %4449, label %4454, label %4461

; <label>:4454                                    ; preds = %4448
  %4455 = and i32 %4446, 1073741823
  %4456 = add i32 %4436, 20
  %4457 = add i32 %4456, %4455
  %4458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4457, i32 undef)  ; BufferLoad(srv,index,wot)
  %4459 = extractvalue %dx.types.ResRet.i32 %4458, 0
  %4460 = extractvalue %dx.types.ResRet.i32 %4458, 1
  br label %4461

; <label>:4461                                    ; preds = %4454, %4448
  %4462 = phi i32 [ %4459, %4454 ], [ %4370, %4448 ]
  %4463 = phi i32 [ %4460, %4454 ], [ %4371, %4448 ]
  store i32 %4462, i32* %4452, align 4
  store i32 %4463, i32* %4453, align 4
  %4464 = add i32 %4421, 1
  br label %4465

; <label>:4465                                    ; preds = %4461, %4420
  %4466 = phi i32 [ %4421, %4420 ], [ %4464, %4461 ]
  %4467 = add nuw i32 %4422, 1
  %4468 = icmp eq i32 %4467, %4417
  br i1 %4468, label %4469, label %4420

; <label>:4469                                    ; preds = %4465
  br label %4470

; <label>:4470                                    ; preds = %4469, %4414
  %4471 = phi i32 [ %4415, %4414 ], [ %4466, %4469 ]
  %4472 = icmp eq i32 %4471, 1
  %4473 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  %4474 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  br i1 %4472, label %4475, label %4478

; <label>:4475                                    ; preds = %4470
  %4476 = load float, float* %4473, align 4
  %4477 = load float, float* %4474, align 4
  br label %4505

; <label>:4478                                    ; preds = %4470
  %4479 = load float, float* %4473, align 4
  %4480 = load float, float* %4474, align 4
  %4481 = fdiv fast float 1.000000e+00, %4480
  %4482 = fsub fast float %4479, %4481
  %4483 = icmp ugt i32 %4471, 1
  br i1 %4483, label %4484, label %4500

; <label>:4484                                    ; preds = %4478
  br label %4485

; <label>:4485                                    ; preds = %4485, %4484
  %4486 = phi float [ %4495, %4485 ], [ %4482, %4484 ]
  %4487 = phi float [ %4496, %4485 ], [ %4479, %4484 ]
  %4488 = phi i32 [ %4497, %4485 ], [ 1, %4484 ]
  %4489 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4488
  %4490 = load float, float* %4489, align 4
  %4491 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %4488
  %4492 = load float, float* %4491, align 4
  %4493 = fdiv fast float 1.000000e+00, %4492
  %4494 = fsub fast float %4490, %4493
  %4495 = call float @dx.op.binary.f32(i32 36, float %4486, float %4494)  ; FMin(a,b)
  %4496 = call float @dx.op.binary.f32(i32 35, float %4487, float %4490)  ; FMax(a,b)
  %4497 = add nuw i32 %4488, 1
  %4498 = icmp eq i32 %4497, %4471
  br i1 %4498, label %4499, label %4485

; <label>:4499                                    ; preds = %4485
  br label %4500

; <label>:4500                                    ; preds = %4499, %4478
  %4501 = phi float [ %4482, %4478 ], [ %4495, %4499 ]
  %4502 = phi float [ %4479, %4478 ], [ %4496, %4499 ]
  %4503 = fsub fast float %4502, %4501
  %4504 = fdiv fast float 1.000000e+00, %4503
  br label %4505

; <label>:4505                                    ; preds = %4500, %4475
  %4506 = phi float [ %4476, %4475 ], [ %4502, %4500 ]
  %4507 = phi float [ %4477, %4475 ], [ %4504, %4500 ]
  %4508 = fadd fast float %4209, %4506
  %4509 = fmul fast float %4508, %4507
  %4510 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4511 = fmul fast float %4510, 2.000000e+00
  %4512 = fsub fast float 1.000000e+00, %4511
  %4513 = fmul fast float %4347, %4347
  %4514 = fsub fast float %4348, %4513
  %4515 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4514)  ; FMax(a,b)
  %4516 = fdiv fast float 1.000000e+00, %4515
  %4517 = fmul fast float %4348, %4347
  %4518 = fsub fast float %4349, %4517
  %4519 = fsub fast float %4512, %4347
  %4520 = fmul fast float %4512, %4512
  %4521 = fsub fast float %4520, %4348
  %4522 = fmul fast float %4516, %4518
  %4523 = fmul fast float %4522, %4519
  %4524 = fsub fast float %4521, %4523
  %4525 = fmul fast float %4348, %4348
  %4526 = fsub fast float %4350, %4525
  %4527 = fmul fast float %4518, %4518
  %4528 = fmul fast float %4527, %4516
  %4529 = fsub fast float %4526, %4528
  %4530 = fdiv fast float %4524, %4529
  %4531 = fmul fast float %4530, %4518
  %4532 = fsub fast float %4519, %4531
  %4533 = fmul fast float %4532, %4516
  %4534 = fmul fast float %4533, %4347
  %4535 = fsub fast float 1.000000e+00, %4534
  %4536 = fmul fast float %4530, %4348
  %4537 = fsub fast float %4535, %4536
  %4538 = fmul fast float %4533, %4533
  %4539 = fmul fast float %4530, 4.000000e+00
  %4540 = fmul fast float %4539, %4537
  %4541 = fsub fast float %4538, %4540
  %4542 = call float @dx.op.unary.f32(i32 24, float %4541)  ; Sqrt(value)
  %4543 = fcmp fast oge float %4533, 0.000000e+00
  %4544 = fsub fast float -0.000000e+00, %4542
  %4545 = select i1 %4543, float %4544, float %4542
  %4546 = fsub fast float %4545, %4533
  %4547 = fdiv fast float %4546, %4530
  %4548 = fdiv fast float %4537, %4546
  %4549 = fmul fast float %4547, 5.000000e-01
  %4550 = fmul fast float %4548, 2.000000e+00
  %4551 = select i1 %4543, float %4549, float %4550
  %4552 = select i1 %4543, float %4550, float %4549
  %4553 = call float @dx.op.binary.f32(i32 35, float %4551, float %4552)  ; FMax(a,b)
  %4554 = call float @dx.op.binary.f32(i32 36, float %4551, float %4552)  ; FMin(a,b)
  %4555 = fcmp fast ogt float %4512, %4553
  %4556 = fsub fast float %4512, %4554
  %4557 = fsub fast float %4512, %4553
  %4558 = fsub fast float %4553, %4554
  %4559 = select i1 %4555, float %4557, float %4558
  %4560 = fmul float %4556, %4559
  %4561 = select i1 %4555, float %4554, float %4512
  %4562 = fcmp fast ogt float %4512, %4554
  %4563 = fmul fast float %4561, %4553
  %4564 = fadd fast float %4561, %4553
  %4565 = fmul fast float %4564, %4347
  %4566 = fadd fast float %4563, %4348
  %4567 = fsub fast float %4566, %4565
  %4568 = fdiv fast float %4567, %4560
  %4569 = select i1 %4562, float %4568, float 0.000000e+00
  %4570 = fsub fast float 1.000000e+00, %4569
  %4571 = select i1 %4555, float %4570, float %4569
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = extractvalue %dx.types.CBufRet.f32 %4332, 3
  %4574 = fmul fast float %4573, %4572
  %4575 = fsub fast float 1.000000e+00, %4574
  br label %4576

; <label>:4576                                    ; preds = %4505, %4217, %4182, %4178, %4144
  %4577 = phi float [ 1.000000e+00, %4144 ], [ %4575, %4505 ], [ 1.000000e+00, %4182 ], [ 1.000000e+00, %4217 ], [ 1.000000e+00, %4178 ]
  %4578 = fcmp fast ogt float %4174, 0.000000e+00
  br i1 %4578, label %4579, label %4741, !dx.controlflow.hints !134

; <label>:4579                                    ; preds = %4576
  %4580 = fadd fast float %4087, %4061
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 2
  %4583 = extractvalue %dx.types.CBufRet.f32 %4581, 3
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 2
  %4586 = call float @dx.op.binary.f32(i32 35, float %4580, float 0.000000e+00)  ; FMax(a,b)
  %4587 = fadd fast float %4586, 0x3F10000000000000
  %4588 = fcmp fast oeq float %4585, 0.000000e+00
  br i1 %4588, label %4589, label %4656

; <label>:4589                                    ; preds = %4579
  %4590 = extractvalue %dx.types.CBufRet.f32 %4581, 1
  %4591 = extractvalue %dx.types.CBufRet.f32 %4581, 0
  %4592 = fmul fast float %4591, %4076
  %4593 = fmul fast float %4590, %4077
  %4594 = fadd fast float %4592, 5.000000e-01
  %4595 = call float @dx.op.unary.f32(i32 27, float %4594)  ; Round_ni(value)
  %4596 = fadd fast float %4593, 5.000000e-01
  %4597 = call float @dx.op.unary.f32(i32 27, float %4596)  ; Round_ni(value)
  %4598 = fsub fast float %4594, %4595
  %4599 = fsub fast float %4596, %4597
  %4600 = fadd fast float %4595, -5.000000e-01
  %4601 = fadd fast float %4597, -5.000000e-01
  %4602 = fmul fast float %4598, 2.000000e+00
  %4603 = fsub fast float 3.000000e+00, %4602
  %4604 = fadd fast float %4602, 1.000000e+00
  %4605 = fsub fast float 2.000000e+00, %4598
  %4606 = bitcast float %4603 to i32
  %4607 = sub nsw i32 2129859010, %4606
  %4608 = bitcast i32 %4607 to float
  %4609 = fmul fast float %4608, %4605
  %4610 = fadd fast float %4609, -1.000000e+00
  %4611 = bitcast float %4604 to i32
  %4612 = sub nsw i32 2129859010, %4611
  %4613 = bitcast i32 %4612 to float
  %4614 = fmul fast float %4613, %4598
  %4615 = fadd fast float %4614, 1.000000e+00
  %4616 = fmul fast float %4599, 2.000000e+00
  %4617 = fsub fast float 3.000000e+00, %4616
  %4618 = fadd fast float %4616, 1.000000e+00
  %4619 = fsub fast float 2.000000e+00, %4599
  %4620 = bitcast float %4617 to i32
  %4621 = sub nsw i32 2129859010, %4620
  %4622 = bitcast i32 %4621 to float
  %4623 = fmul fast float %4622, %4619
  %4624 = fadd fast float %4623, -1.000000e+00
  %4625 = bitcast float %4618 to i32
  %4626 = sub nsw i32 2129859010, %4625
  %4627 = bitcast i32 %4626 to float
  %4628 = fmul fast float %4627, %4599
  %4629 = fadd fast float %4628, 1.000000e+00
  %4630 = fadd fast float %4610, %4600
  %4631 = fmul fast float %4630, %4582
  %4632 = fadd fast float %4624, %4601
  %4633 = fmul fast float %4632, %4583
  %4634 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4631, float %4633, float undef, float undef, i32 0, i32 0, i32 undef, float %4587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = fmul fast float %4635, %4603
  %4637 = fadd fast float %4615, %4600
  %4638 = fmul fast float %4637, %4582
  %4639 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4638, float %4633, float undef, float undef, i32 0, i32 0, i32 undef, float %4587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4640 = extractvalue %dx.types.ResRet.f32 %4639, 0
  %4641 = fmul fast float %4640, %4604
  %4642 = fadd fast float %4629, %4601
  %4643 = fmul fast float %4642, %4583
  %4644 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4631, float %4643, float undef, float undef, i32 0, i32 0, i32 undef, float %4587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4646 = fmul fast float %4645, %4603
  %4647 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %66, float %4638, float %4643, float undef, float undef, i32 0, i32 0, i32 undef, float %4587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = fmul fast float %4648, %4604
  %4650 = fadd fast float %4649, %4646
  %4651 = fmul fast float %4650, %4618
  %4652 = fadd fast float %4641, %4636
  %4653 = fmul fast float %4652, %4617
  %4654 = fadd fast float %4653, %4651
  %4655 = fmul fast float %4654, 6.250000e-02
  br label %4741

; <label>:4656                                    ; preds = %4579
  %4657 = fmul fast float %259, 0x401921FB60000000
  %4658 = call float @dx.op.unary.f32(i32 13, float %4657)  ; Sin(value)
  %4659 = call float @dx.op.unary.f32(i32 12, float %4657)  ; Cos(value)
  %4660 = fsub fast float -0.000000e+00, %4658
  br label %4661

; <label>:4661                                    ; preds = %4710, %4656
  %4662 = phi float [ 0.000000e+00, %4656 ], [ %4705, %4710 ]
  %4663 = phi float [ 0.000000e+00, %4656 ], [ %4707, %4710 ]
  %4664 = phi i32 [ 0, %4656 ], [ %4711, %4710 ]
  %4665 = mul i32 %4664, 2
  %4666 = add i32 0, %4665
  %4667 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4666
  %4668 = load float, float* %4667, align 4
  %4669 = mul i32 %4664, 2
  %4670 = add i32 1, %4669
  %4671 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4670
  %4672 = load float, float* %4671, align 4
  %4673 = fmul fast float %4668, %4659
  %4674 = call float @dx.op.tertiary.f32(i32 46, float %4672, float %4660, float %4673)  ; FMad(a,b,c)
  %4675 = fmul fast float %4668, %4658
  %4676 = call float @dx.op.tertiary.f32(i32 46, float %4672, float %4659, float %4675)  ; FMad(a,b,c)
  %4677 = fmul fast float %4674, %4585
  %4678 = fmul fast float %4676, %4585
  %4679 = fadd fast float %4677, %4076
  %4680 = fadd fast float %4678, %4077
  %4681 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %65, float %4679, float %4680, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = extractvalue %dx.types.ResRet.f32 %4681, 1
  %4684 = extractvalue %dx.types.ResRet.f32 %4681, 2
  %4685 = extractvalue %dx.types.ResRet.f32 %4681, 3
  %4686 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %4682, float* %4686, align 4
  %4687 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %4683, float* %4687, align 4
  %4688 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %4684, float* %4688, align 4
  %4689 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %4685, float* %4689, align 4
  %4690 = fsub fast float %4682, %4587
  %4691 = fcmp fast olt float %4690, 0.000000e+00
  %4692 = select i1 %4691, float 0.000000e+00, float 1.000000e+00
  %4693 = fadd fast float %4692, %4662
  %4694 = fmul fast float %4692, %4690
  %4695 = fadd fast float %4694, %4663
  br label %4696

; <label>:4696                                    ; preds = %4696, %4661
  %4697 = phi i32 [ 1, %4661 ], [ %4708, %4696 ]
  %4698 = phi float [ %4695, %4661 ], [ %4707, %4696 ]
  %4699 = phi float [ %4693, %4661 ], [ %4705, %4696 ]
  %4700 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %4697
  %4701 = load float, float* %4700, align 4, !tbaa !135, !noalias !125
  %4702 = fsub fast float %4701, %4587
  %4703 = fcmp fast olt float %4702, 0.000000e+00
  %4704 = select i1 %4703, float 0.000000e+00, float 1.000000e+00
  %4705 = fadd fast float %4704, %4699
  %4706 = fmul fast float %4704, %4702
  %4707 = fadd fast float %4706, %4698
  %4708 = add nuw nsw i32 %4697, 1
  %4709 = icmp eq i32 %4708, 4
  br i1 %4709, label %4710, label %4696, !llvm.loop !137

; <label>:4710                                    ; preds = %4696
  %4711 = add nuw nsw i32 %4664, 1
  %4712 = icmp eq i32 %4711, 8
  br i1 %4712, label %4713, label %4661, !llvm.loop !138

; <label>:4713                                    ; preds = %4710
  %4714 = fdiv fast float 1.000000e+00, %4705
  %4715 = fmul fast float %4714, %4707
  %4716 = fdiv fast float 1.000000e+00, %4587
  %4717 = fmul fast float %4715, %4716
  %4718 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4719 = call float @dx.op.binary.f32(i32 35, float %4718, float 0.000000e+00)  ; FMax(a,b)
  %4720 = fmul fast float %4705, 3.125000e-02
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = fmul fast float %4721, 2.000000e+00
  %4723 = fadd fast float %4722, -1.000000e+00
  %4724 = fcmp fast ogt float %4723, 0.000000e+00
  %4725 = fcmp fast olt float %4723, 0.000000e+00
  %4726 = zext i1 %4724 to i32
  %4727 = zext i1 %4725 to i32
  %4728 = sub nsw i32 %4726, %4727
  %4729 = sitofp i32 %4728 to float
  %4730 = fmul fast float %4729, %4723
  %4731 = fsub fast float 1.000000e+00, %4730
  %4732 = fmul fast float %4731, %4731
  %4733 = fmul fast float %4732, %4731
  %4734 = fsub fast float %4731, %4733
  %4735 = fmul fast float %4734, %4719
  %4736 = fsub fast float 1.000000e+00, %4733
  %4737 = fsub fast float %4736, %4735
  %4738 = fmul fast float %4729, 5.000000e-01
  %4739 = fmul fast float %4738, %4737
  %4740 = fsub fast float 5.000000e-01, %4739
  br label %4741

; <label>:4741                                    ; preds = %4713, %4589, %4576
  %4742 = phi float [ 1.000000e+00, %4576 ], [ %4655, %4589 ], [ %4740, %4713 ]
  %4743 = fcmp fast ogt float %4172, 0.000000e+00
  br i1 %4743, label %4744, label %4908, !dx.controlflow.hints !139

; <label>:4744                                    ; preds = %4741
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 1
  %4747 = fadd fast float %4746, %4061
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 2
  %4750 = extractvalue %dx.types.CBufRet.f32 %4748, 3
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 1
  %4753 = call float @dx.op.binary.f32(i32 35, float %4747, float 0.000000e+00)  ; FMax(a,b)
  %4754 = fadd fast float %4753, 0x3F10000000000000
  %4755 = fcmp fast oeq float %4752, 0.000000e+00
  br i1 %4755, label %4756, label %4823

; <label>:4756                                    ; preds = %4744
  %4757 = extractvalue %dx.types.CBufRet.f32 %4748, 1
  %4758 = extractvalue %dx.types.CBufRet.f32 %4748, 0
  %4759 = fmul fast float %4758, %4068
  %4760 = fmul fast float %4757, %4069
  %4761 = fadd fast float %4759, 5.000000e-01
  %4762 = call float @dx.op.unary.f32(i32 27, float %4761)  ; Round_ni(value)
  %4763 = fadd fast float %4760, 5.000000e-01
  %4764 = call float @dx.op.unary.f32(i32 27, float %4763)  ; Round_ni(value)
  %4765 = fsub fast float %4761, %4762
  %4766 = fsub fast float %4763, %4764
  %4767 = fadd fast float %4762, -5.000000e-01
  %4768 = fadd fast float %4764, -5.000000e-01
  %4769 = fmul fast float %4765, 2.000000e+00
  %4770 = fsub fast float 3.000000e+00, %4769
  %4771 = fadd fast float %4769, 1.000000e+00
  %4772 = fsub fast float 2.000000e+00, %4765
  %4773 = bitcast float %4770 to i32
  %4774 = sub nsw i32 2129859010, %4773
  %4775 = bitcast i32 %4774 to float
  %4776 = fmul fast float %4775, %4772
  %4777 = fadd fast float %4776, -1.000000e+00
  %4778 = bitcast float %4771 to i32
  %4779 = sub nsw i32 2129859010, %4778
  %4780 = bitcast i32 %4779 to float
  %4781 = fmul fast float %4780, %4765
  %4782 = fadd fast float %4781, 1.000000e+00
  %4783 = fmul fast float %4766, 2.000000e+00
  %4784 = fsub fast float 3.000000e+00, %4783
  %4785 = fadd fast float %4783, 1.000000e+00
  %4786 = fsub fast float 2.000000e+00, %4766
  %4787 = bitcast float %4784 to i32
  %4788 = sub nsw i32 2129859010, %4787
  %4789 = bitcast i32 %4788 to float
  %4790 = fmul fast float %4789, %4786
  %4791 = fadd fast float %4790, -1.000000e+00
  %4792 = bitcast float %4785 to i32
  %4793 = sub nsw i32 2129859010, %4792
  %4794 = bitcast i32 %4793 to float
  %4795 = fmul fast float %4794, %4766
  %4796 = fadd fast float %4795, 1.000000e+00
  %4797 = fadd fast float %4777, %4767
  %4798 = fmul fast float %4797, %4749
  %4799 = fadd fast float %4791, %4768
  %4800 = fmul fast float %4799, %4750
  %4801 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4798, float %4800, float undef, float undef, i32 0, i32 0, i32 undef, float %4754)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = fmul fast float %4802, %4770
  %4804 = fadd fast float %4782, %4767
  %4805 = fmul fast float %4804, %4749
  %4806 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4805, float %4800, float undef, float undef, i32 0, i32 0, i32 undef, float %4754)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4807 = extractvalue %dx.types.ResRet.f32 %4806, 0
  %4808 = fmul fast float %4807, %4771
  %4809 = fadd fast float %4796, %4768
  %4810 = fmul fast float %4809, %4750
  %4811 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4798, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float %4754)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4812 = extractvalue %dx.types.ResRet.f32 %4811, 0
  %4813 = fmul fast float %4812, %4770
  %4814 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %66, float %4805, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float %4754)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4815 = extractvalue %dx.types.ResRet.f32 %4814, 0
  %4816 = fmul fast float %4815, %4771
  %4817 = fadd fast float %4816, %4813
  %4818 = fmul fast float %4817, %4785
  %4819 = fadd fast float %4808, %4803
  %4820 = fmul fast float %4819, %4784
  %4821 = fadd fast float %4820, %4818
  %4822 = fmul fast float %4821, 6.250000e-02
  br label %4908

; <label>:4823                                    ; preds = %4744
  %4824 = fmul fast float %259, 0x401921FB60000000
  %4825 = call float @dx.op.unary.f32(i32 13, float %4824)  ; Sin(value)
  %4826 = call float @dx.op.unary.f32(i32 12, float %4824)  ; Cos(value)
  %4827 = fsub fast float -0.000000e+00, %4825
  br label %4828

; <label>:4828                                    ; preds = %4877, %4823
  %4829 = phi float [ 0.000000e+00, %4823 ], [ %4872, %4877 ]
  %4830 = phi float [ 0.000000e+00, %4823 ], [ %4874, %4877 ]
  %4831 = phi i32 [ 0, %4823 ], [ %4878, %4877 ]
  %4832 = mul i32 %4831, 2
  %4833 = add i32 0, %4832
  %4834 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4833
  %4835 = load float, float* %4834, align 4
  %4836 = mul i32 %4831, 2
  %4837 = add i32 1, %4836
  %4838 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4837
  %4839 = load float, float* %4838, align 4
  %4840 = fmul fast float %4835, %4826
  %4841 = call float @dx.op.tertiary.f32(i32 46, float %4839, float %4827, float %4840)  ; FMad(a,b,c)
  %4842 = fmul fast float %4835, %4825
  %4843 = call float @dx.op.tertiary.f32(i32 46, float %4839, float %4826, float %4842)  ; FMad(a,b,c)
  %4844 = fmul fast float %4841, %4752
  %4845 = fmul fast float %4843, %4752
  %4846 = fadd fast float %4844, %4068
  %4847 = fadd fast float %4845, %4069
  %4848 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %65, float %4846, float %4847, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4849 = extractvalue %dx.types.ResRet.f32 %4848, 0
  %4850 = extractvalue %dx.types.ResRet.f32 %4848, 1
  %4851 = extractvalue %dx.types.ResRet.f32 %4848, 2
  %4852 = extractvalue %dx.types.ResRet.f32 %4848, 3
  %4853 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %4849, float* %4853, align 4
  %4854 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %4850, float* %4854, align 4
  %4855 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %4851, float* %4855, align 4
  %4856 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %4852, float* %4856, align 4
  %4857 = fsub fast float %4849, %4754
  %4858 = fcmp fast olt float %4857, 0.000000e+00
  %4859 = select i1 %4858, float 0.000000e+00, float 1.000000e+00
  %4860 = fadd fast float %4859, %4829
  %4861 = fmul fast float %4859, %4857
  %4862 = fadd fast float %4861, %4830
  br label %4863

; <label>:4863                                    ; preds = %4863, %4828
  %4864 = phi i32 [ 1, %4828 ], [ %4875, %4863 ]
  %4865 = phi float [ %4862, %4828 ], [ %4874, %4863 ]
  %4866 = phi float [ %4860, %4828 ], [ %4872, %4863 ]
  %4867 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %4864
  %4868 = load float, float* %4867, align 4, !tbaa !135, !noalias !125
  %4869 = fsub fast float %4868, %4754
  %4870 = fcmp fast olt float %4869, 0.000000e+00
  %4871 = select i1 %4870, float 0.000000e+00, float 1.000000e+00
  %4872 = fadd fast float %4871, %4866
  %4873 = fmul fast float %4871, %4869
  %4874 = fadd fast float %4873, %4865
  %4875 = add nuw nsw i32 %4864, 1
  %4876 = icmp eq i32 %4875, 4
  br i1 %4876, label %4877, label %4863, !llvm.loop !137

; <label>:4877                                    ; preds = %4863
  %4878 = add nuw nsw i32 %4831, 1
  %4879 = icmp eq i32 %4878, 8
  br i1 %4879, label %4880, label %4828, !llvm.loop !138

; <label>:4880                                    ; preds = %4877
  %4881 = fdiv fast float 1.000000e+00, %4872
  %4882 = fmul fast float %4881, %4874
  %4883 = fdiv fast float 1.000000e+00, %4754
  %4884 = fmul fast float %4882, %4883
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = call float @dx.op.binary.f32(i32 35, float %4885, float 0.000000e+00)  ; FMax(a,b)
  %4887 = fmul fast float %4872, 3.125000e-02
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fmul fast float %4888, 2.000000e+00
  %4890 = fadd fast float %4889, -1.000000e+00
  %4891 = fcmp fast ogt float %4890, 0.000000e+00
  %4892 = fcmp fast olt float %4890, 0.000000e+00
  %4893 = zext i1 %4891 to i32
  %4894 = zext i1 %4892 to i32
  %4895 = sub nsw i32 %4893, %4894
  %4896 = sitofp i32 %4895 to float
  %4897 = fmul fast float %4896, %4890
  %4898 = fsub fast float 1.000000e+00, %4897
  %4899 = fmul fast float %4898, %4898
  %4900 = fmul fast float %4899, %4898
  %4901 = fsub fast float %4898, %4900
  %4902 = fmul fast float %4901, %4886
  %4903 = fsub fast float 1.000000e+00, %4900
  %4904 = fsub fast float %4903, %4902
  %4905 = fmul fast float %4896, 5.000000e-01
  %4906 = fmul fast float %4905, %4904
  %4907 = fsub fast float 5.000000e-01, %4906
  br label %4908

; <label>:4908                                    ; preds = %4880, %4756, %4741
  %4909 = phi float [ 1.000000e+00, %4741 ], [ %4822, %4756 ], [ %4907, %4880 ]
  %4910 = fcmp fast ogt float %4171, 0.000000e+00
  br i1 %4910, label %4911, label %5075, !dx.controlflow.hints !140

; <label>:4911                                    ; preds = %4908
  %4912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4912, 0
  %4914 = fadd fast float %4913, %4061
  %4915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4916 = extractvalue %dx.types.CBufRet.f32 %4915, 2
  %4917 = extractvalue %dx.types.CBufRet.f32 %4915, 3
  %4918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4919 = extractvalue %dx.types.CBufRet.f32 %4918, 0
  %4920 = call float @dx.op.binary.f32(i32 35, float %4914, float 0.000000e+00)  ; FMax(a,b)
  %4921 = fadd fast float %4920, 0x3F10000000000000
  %4922 = fcmp fast oeq float %4919, 0.000000e+00
  br i1 %4922, label %4923, label %4990

; <label>:4923                                    ; preds = %4911
  %4924 = extractvalue %dx.types.CBufRet.f32 %4915, 1
  %4925 = extractvalue %dx.types.CBufRet.f32 %4915, 0
  %4926 = fmul fast float %4925, %4053
  %4927 = fmul fast float %4924, %4057
  %4928 = fadd fast float %4926, 5.000000e-01
  %4929 = call float @dx.op.unary.f32(i32 27, float %4928)  ; Round_ni(value)
  %4930 = fadd fast float %4927, 5.000000e-01
  %4931 = call float @dx.op.unary.f32(i32 27, float %4930)  ; Round_ni(value)
  %4932 = fsub fast float %4928, %4929
  %4933 = fsub fast float %4930, %4931
  %4934 = fadd fast float %4929, -5.000000e-01
  %4935 = fadd fast float %4931, -5.000000e-01
  %4936 = fmul fast float %4932, 2.000000e+00
  %4937 = fsub fast float 3.000000e+00, %4936
  %4938 = fadd fast float %4936, 1.000000e+00
  %4939 = fsub fast float 2.000000e+00, %4932
  %4940 = bitcast float %4937 to i32
  %4941 = sub nsw i32 2129859010, %4940
  %4942 = bitcast i32 %4941 to float
  %4943 = fmul fast float %4942, %4939
  %4944 = fadd fast float %4943, -1.000000e+00
  %4945 = bitcast float %4938 to i32
  %4946 = sub nsw i32 2129859010, %4945
  %4947 = bitcast i32 %4946 to float
  %4948 = fmul fast float %4947, %4932
  %4949 = fadd fast float %4948, 1.000000e+00
  %4950 = fmul fast float %4933, 2.000000e+00
  %4951 = fsub fast float 3.000000e+00, %4950
  %4952 = fadd fast float %4950, 1.000000e+00
  %4953 = fsub fast float 2.000000e+00, %4933
  %4954 = bitcast float %4951 to i32
  %4955 = sub nsw i32 2129859010, %4954
  %4956 = bitcast i32 %4955 to float
  %4957 = fmul fast float %4956, %4953
  %4958 = fadd fast float %4957, -1.000000e+00
  %4959 = bitcast float %4952 to i32
  %4960 = sub nsw i32 2129859010, %4959
  %4961 = bitcast i32 %4960 to float
  %4962 = fmul fast float %4961, %4933
  %4963 = fadd fast float %4962, 1.000000e+00
  %4964 = fadd fast float %4944, %4934
  %4965 = fmul fast float %4964, %4916
  %4966 = fadd fast float %4958, %4935
  %4967 = fmul fast float %4966, %4917
  %4968 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4965, float %4967, float undef, float undef, i32 0, i32 0, i32 undef, float %4921)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4969 = extractvalue %dx.types.ResRet.f32 %4968, 0
  %4970 = fmul fast float %4969, %4937
  %4971 = fadd fast float %4949, %4934
  %4972 = fmul fast float %4971, %4916
  %4973 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4972, float %4967, float undef, float undef, i32 0, i32 0, i32 undef, float %4921)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4974 = extractvalue %dx.types.ResRet.f32 %4973, 0
  %4975 = fmul fast float %4974, %4938
  %4976 = fadd fast float %4963, %4935
  %4977 = fmul fast float %4976, %4917
  %4978 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4965, float %4977, float undef, float undef, i32 0, i32 0, i32 undef, float %4921)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4979 = extractvalue %dx.types.ResRet.f32 %4978, 0
  %4980 = fmul fast float %4979, %4937
  %4981 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %66, float %4972, float %4977, float undef, float undef, i32 0, i32 0, i32 undef, float %4921)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4982 = extractvalue %dx.types.ResRet.f32 %4981, 0
  %4983 = fmul fast float %4982, %4938
  %4984 = fadd fast float %4983, %4980
  %4985 = fmul fast float %4984, %4952
  %4986 = fadd fast float %4975, %4970
  %4987 = fmul fast float %4986, %4951
  %4988 = fadd fast float %4987, %4985
  %4989 = fmul fast float %4988, 6.250000e-02
  br label %5075

; <label>:4990                                    ; preds = %4911
  %4991 = fmul fast float %259, 0x401921FB60000000
  %4992 = call float @dx.op.unary.f32(i32 13, float %4991)  ; Sin(value)
  %4993 = call float @dx.op.unary.f32(i32 12, float %4991)  ; Cos(value)
  %4994 = fsub fast float -0.000000e+00, %4992
  br label %4995

; <label>:4995                                    ; preds = %5044, %4990
  %4996 = phi float [ 0.000000e+00, %4990 ], [ %5039, %5044 ]
  %4997 = phi float [ 0.000000e+00, %4990 ], [ %5041, %5044 ]
  %4998 = phi i32 [ 0, %4990 ], [ %5045, %5044 ]
  %4999 = mul i32 %4998, 2
  %5000 = add i32 0, %4999
  %5001 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5000
  %5002 = load float, float* %5001, align 4
  %5003 = mul i32 %4998, 2
  %5004 = add i32 1, %5003
  %5005 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5004
  %5006 = load float, float* %5005, align 4
  %5007 = fmul fast float %5002, %4993
  %5008 = call float @dx.op.tertiary.f32(i32 46, float %5006, float %4994, float %5007)  ; FMad(a,b,c)
  %5009 = fmul fast float %5002, %4992
  %5010 = call float @dx.op.tertiary.f32(i32 46, float %5006, float %4993, float %5009)  ; FMad(a,b,c)
  %5011 = fmul fast float %5008, %4919
  %5012 = fmul fast float %5010, %4919
  %5013 = fadd fast float %5011, %4053
  %5014 = fadd fast float %5012, %4057
  %5015 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %65, float %5013, float %5014, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5016 = extractvalue %dx.types.ResRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.ResRet.f32 %5015, 1
  %5018 = extractvalue %dx.types.ResRet.f32 %5015, 2
  %5019 = extractvalue %dx.types.ResRet.f32 %5015, 3
  %5020 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %5016, float* %5020, align 4
  %5021 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %5017, float* %5021, align 4
  %5022 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %5018, float* %5022, align 4
  %5023 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %5019, float* %5023, align 4
  %5024 = fsub fast float %5016, %4921
  %5025 = fcmp fast olt float %5024, 0.000000e+00
  %5026 = select i1 %5025, float 0.000000e+00, float 1.000000e+00
  %5027 = fadd fast float %5026, %4996
  %5028 = fmul fast float %5026, %5024
  %5029 = fadd fast float %5028, %4997
  br label %5030

; <label>:5030                                    ; preds = %5030, %4995
  %5031 = phi i32 [ 1, %4995 ], [ %5042, %5030 ]
  %5032 = phi float [ %5029, %4995 ], [ %5041, %5030 ]
  %5033 = phi float [ %5027, %4995 ], [ %5039, %5030 ]
  %5034 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %5031
  %5035 = load float, float* %5034, align 4, !tbaa !135, !noalias !125
  %5036 = fsub fast float %5035, %4921
  %5037 = fcmp fast olt float %5036, 0.000000e+00
  %5038 = select i1 %5037, float 0.000000e+00, float 1.000000e+00
  %5039 = fadd fast float %5038, %5033
  %5040 = fmul fast float %5038, %5036
  %5041 = fadd fast float %5040, %5032
  %5042 = add nuw nsw i32 %5031, 1
  %5043 = icmp eq i32 %5042, 4
  br i1 %5043, label %5044, label %5030, !llvm.loop !137

; <label>:5044                                    ; preds = %5030
  %5045 = add nuw nsw i32 %4998, 1
  %5046 = icmp eq i32 %5045, 8
  br i1 %5046, label %5047, label %4995, !llvm.loop !138

; <label>:5047                                    ; preds = %5044
  %5048 = fdiv fast float 1.000000e+00, %5039
  %5049 = fmul fast float %5048, %5041
  %5050 = fdiv fast float 1.000000e+00, %4921
  %5051 = fmul fast float %5049, %5050
  %5052 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5053 = call float @dx.op.binary.f32(i32 35, float %5052, float 0.000000e+00)  ; FMax(a,b)
  %5054 = fmul fast float %5039, 3.125000e-02
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = fmul fast float %5055, 2.000000e+00
  %5057 = fadd fast float %5056, -1.000000e+00
  %5058 = fcmp fast ogt float %5057, 0.000000e+00
  %5059 = fcmp fast olt float %5057, 0.000000e+00
  %5060 = zext i1 %5058 to i32
  %5061 = zext i1 %5059 to i32
  %5062 = sub nsw i32 %5060, %5061
  %5063 = sitofp i32 %5062 to float
  %5064 = fmul fast float %5063, %5057
  %5065 = fsub fast float 1.000000e+00, %5064
  %5066 = fmul fast float %5065, %5065
  %5067 = fmul fast float %5066, %5065
  %5068 = fsub fast float %5065, %5067
  %5069 = fmul fast float %5068, %5053
  %5070 = fsub fast float 1.000000e+00, %5067
  %5071 = fsub fast float %5070, %5069
  %5072 = fmul fast float %5063, 5.000000e-01
  %5073 = fmul fast float %5072, %5071
  %5074 = fsub fast float 5.000000e-01, %5073
  br label %5075

; <label>:5075                                    ; preds = %5047, %4923, %4908
  %5076 = phi float [ 1.000000e+00, %4908 ], [ %4989, %4923 ], [ %5074, %5047 ]
  %5077 = fsub fast float %4742, %4577
  %5078 = fmul fast float %5077, %4115
  %5079 = fadd fast float %5078, %4577
  %5080 = fsub fast float %4909, %5079
  %5081 = fmul fast float %5080, %4145
  %5082 = fadd fast float %5081, %5079
  %5083 = fsub fast float %5076, %5082
  %5084 = fmul fast float %5083, %4171
  %5085 = fadd fast float %5084, %5082
  %5086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5087 = extractvalue %dx.types.CBufRet.f32 %5086, 2
  %5088 = fcmp fast ogt float %5087, 0.000000e+00
  br i1 %5088, label %5089, label %5129, !dx.controlflow.hints !141

; <label>:5089                                    ; preds = %5075
  %5090 = fcmp fast ugt float %5087, 0.000000e+00
  br i1 %5090, label %5091, label %5126

; <label>:5091                                    ; preds = %5089
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.CBufRet.f32 %5092, 1
  %5095 = extractvalue %dx.types.CBufRet.f32 %5092, 2
  %5096 = extractvalue %dx.types.CBufRet.f32 %5092, 3
  %5097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5098 = extractvalue %dx.types.CBufRet.f32 %5097, 0
  %5099 = extractvalue %dx.types.CBufRet.f32 %5097, 1
  %5100 = extractvalue %dx.types.CBufRet.f32 %5097, 2
  %5101 = extractvalue %dx.types.CBufRet.f32 %5097, 3
  %5102 = extractvalue %dx.types.CBufRet.f32 %5086, 0
  %5103 = extractvalue %dx.types.CBufRet.f32 %5086, 1
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.CBufRet.f32 %5104, 1
  %5107 = extractvalue %dx.types.CBufRet.f32 %5104, 2
  %5108 = fadd fast float %5105, %4030
  %5109 = fadd fast float %5106, %4031
  %5110 = fadd fast float %5107, %4032
  %5111 = fmul fast float %5108, %5093
  %5112 = call float @dx.op.tertiary.f32(i32 46, float %5094, float %5109, float %5111)  ; FMad(a,b,c)
  %5113 = call float @dx.op.tertiary.f32(i32 46, float %5095, float %5110, float %5112)  ; FMad(a,b,c)
  %5114 = fadd fast float %5113, %5096
  %5115 = fmul fast float %5108, %5098
  %5116 = call float @dx.op.tertiary.f32(i32 46, float %5099, float %5109, float %5115)  ; FMad(a,b,c)
  %5117 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5110, float %5116)  ; FMad(a,b,c)
  %5118 = fadd fast float %5117, %5101
  %5119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %61, float %5114, float %5118, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5120 = extractvalue %dx.types.ResRet.f32 %5119, 0
  %5121 = fmul fast float %5120, %5103
  %5122 = fadd fast float %5121, %5102
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = fmul fast float %5123, %5087
  %5125 = fsub fast float 1.000000e+00, %5124
  br label %5126

; <label>:5126                                    ; preds = %5091, %5089
  %5127 = phi float [ %5125, %5091 ], [ 1.000000e+00, %5089 ]
  %5128 = fmul fast float %5127, %5085
  br label %5129

; <label>:5129                                    ; preds = %5126, %5075, %4010
  %5130 = phi float [ 1.000000e+00, %4010 ], [ %5128, %5126 ], [ %5085, %5075 ]
  %5131 = call float @dx.op.binary.f32(i32 36, float %5130, float %5130)  ; FMin(a,b)
  %5132 = call float @dx.op.binary.f32(i32 36, float %5130, float %5131)  ; FMin(a,b)
  %5133 = fcmp fast ogt float %5132, 0.000000e+00
  br i1 %5133, label %5134, label %5299, !dx.controlflow.hints !142

; <label>:5134                                    ; preds = %5129
  %5135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  %5137 = extractvalue %dx.types.CBufRet.f32 %5135, 1
  %5138 = extractvalue %dx.types.CBufRet.f32 %5135, 2
  %5139 = extractvalue %dx.types.CBufRet.f32 %5135, 3
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5144 = extractvalue %dx.types.CBufRet.f32 %5140, 3
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 1
  %5148 = extractvalue %dx.types.CBufRet.f32 %5145, 2
  %5149 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5150 = fmul fast float %5136, %4030
  %5151 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %5137, float %5150)  ; FMad(a,b,c)
  %5152 = call float @dx.op.tertiary.f32(i32 46, float %4032, float %5138, float %5151)  ; FMad(a,b,c)
  %5153 = fadd fast float %5152, %5139
  %5154 = fmul fast float %5141, %4030
  %5155 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %5142, float %5154)  ; FMad(a,b,c)
  %5156 = call float @dx.op.tertiary.f32(i32 46, float %4032, float %5143, float %5155)  ; FMad(a,b,c)
  %5157 = fadd fast float %5156, %5144
  %5158 = fmul fast float %5146, %4030
  %5159 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %5147, float %5158)  ; FMad(a,b,c)
  %5160 = call float @dx.op.tertiary.f32(i32 46, float %4032, float %5148, float %5159)  ; FMad(a,b,c)
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = extractvalue %dx.types.CBufRet.f32 %5161, 1
  %5164 = extractvalue %dx.types.CBufRet.f32 %5161, 3
  %5165 = fmul fast float %5164, %5153
  %5166 = fmul fast float %5164, %5157
  %5167 = fadd fast float %5165, %5162
  %5168 = fadd fast float %5166, %5163
  %5169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.f32 %5169, 0
  %5171 = extractvalue %dx.types.CBufRet.f32 %5169, 1
  %5172 = fsub fast float %5167, %5170
  %5173 = fsub fast float %5168, %5171
  %5174 = fcmp fast olt float %5172, 0.000000e+00
  %5175 = fcmp fast olt float %5173, 0.000000e+00
  %5176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5177 = extractvalue %dx.types.CBufRet.f32 %5176, 0
  %5178 = extractvalue %dx.types.CBufRet.f32 %5176, 1
  %5179 = extractvalue %dx.types.CBufRet.f32 %5176, 2
  %5180 = extractvalue %dx.types.CBufRet.f32 %5176, 3
  %5181 = select i1 %5174, float %5177, float %5179
  %5182 = select i1 %5175, float %5178, float %5180
  %5183 = fmul fast float %5181, %5172
  %5184 = fmul fast float %5182, %5173
  %5185 = call float @dx.op.unary.f32(i32 6, float %5183)  ; FAbs(value)
  %5186 = call float @dx.op.unary.f32(i32 6, float %5184)  ; FAbs(value)
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 0
  %5189 = call float @dx.op.binary.f32(i32 35, float %5185, float %5186)  ; FMax(a,b)
  %5190 = fsub fast float %5188, %5189
  %5191 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5192 = fcmp fast ogt float %5191, 0.000000e+00
  br i1 %5192, label %5193, label %5234, !dx.controlflow.hints !143

; <label>:5193                                    ; preds = %5134
  %5194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %5167, float %5168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5195 = extractvalue %dx.types.ResRet.f32 %5194, 1
  %5196 = fcmp fast ogt float %5195, 0.000000e+00
  br i1 %5196, label %5197, label %5229

; <label>:5197                                    ; preds = %5193
  %5198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %64, float %5167, float %5168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5199 = extractvalue %dx.types.ResRet.f32 %5198, 0
  %5200 = extractvalue %dx.types.ResRet.f32 %5198, 1
  %5201 = extractvalue %dx.types.ResRet.f32 %5198, 2
  %5202 = extractvalue %dx.types.ResRet.f32 %5198, 3
  %5203 = fsub fast float 1.000000e+00, %5149
  %5204 = fsub fast float %5203, %5160
  %5205 = fmul fast float %5204, 0x400921FB60000000
  %5206 = fadd fast float %5205, 0x3FF921FB60000000
  %5207 = call float @dx.op.unary.f32(i32 13, float %5206)  ; Sin(value)
  %5208 = fadd fast float %5207, -1.000000e+00
  %5209 = fmul fast float %5208, 0x3FD45F3060000000
  %5210 = fmul fast float %5204, 0x401921FB60000000
  %5211 = fadd fast float %5210, 0x400921FB60000000
  %5212 = call float @dx.op.unary.f32(i32 13, float %5211)  ; Sin(value)
  %5213 = fadd fast float %5212, 0x3E7777A5C0000000
  %5214 = fmul fast float %5213, 0x3FC45F3060000000
  %5215 = fmul fast float %5204, 0x4022D97C80000000
  %5216 = fadd fast float %5215, 0x4012D97C80000000
  %5217 = call float @dx.op.unary.f32(i32 13, float %5216)  ; Sin(value)
  %5218 = fadd fast float %5217, 1.000000e+00
  %5219 = fmul fast float %5218, 0x3FBB2995E0000000
  %5220 = fmul fast float %5204, 0x402921FB60000000
  %5221 = fadd fast float %5220, 0x401921FB60000000
  %5222 = call float @dx.op.unary.f32(i32 13, float %5221)  ; Sin(value)
  %5223 = fadd fast float %5222, 0xBE8777A5C0000000
  %5224 = fmul fast float %5223, 0x3FB45F3060000000
  %5225 = call float @dx.op.dot4.f32(i32 56, float %5199, float %5200, float %5201, float %5202, float %5209, float %5214, float %5219, float %5224)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5226 = fmul fast float %5225, 0xBFF7154760000000
  %5227 = call float @dx.op.unary.f32(i32 21, float %5226)  ; Exp(value)
  %5228 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  br label %5229

; <label>:5229                                    ; preds = %5197, %5193
  %5230 = phi float [ %5228, %5197 ], [ 1.000000e+00, %5193 ]
  %5231 = fadd fast float %5230, -1.000000e+00
  %5232 = fmul fast float %5231, %5191
  %5233 = fadd fast float %5232, 1.000000e+00
  br label %5234

; <label>:5234                                    ; preds = %5229, %5134
  %5235 = phi float [ %5233, %5229 ], [ 1.000000e+00, %5134 ]
  %5236 = fmul fast float %5235, %5130
  %5237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5238 = extractvalue %dx.types.CBufRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.CBufRet.f32 %5237, 1
  %5240 = extractvalue %dx.types.CBufRet.f32 %5237, 2
  %5241 = fadd fast float %5238, %157
  %5242 = fadd fast float %5239, %158
  %5243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.f32 %5243, 1
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.CBufRet.f32 %5245, 1
  %5248 = extractvalue %dx.types.CBufRet.f32 %5245, 2
  %5249 = fsub fast float -0.000000e+00, %5241
  %5250 = fsub fast float -0.000000e+00, %5242
  %5251 = fsub fast float %2130, %5240
  %5252 = fadd fast float %5251, %5244
  %5253 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5249, float %5250, float %5252)  ; Dot3(ax,ay,az,bx,by,bz)
  %5254 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5246, float %5247, float %5248)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = fdiv fast float 1.000000e+00, %5254
  %5256 = fmul fast float %5255, %5253
  %5257 = fmul fast float %5246, %5256
  %5258 = fmul fast float %5247, %5256
  %5259 = fadd fast float %5257, %5241
  %5260 = fadd fast float %5258, %5242
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.CBufRet.f32 %5261, 1
  %5264 = fsub fast float %5259, %5262
  %5265 = fsub fast float %5260, %5263
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5268 = extractvalue %dx.types.CBufRet.f32 %5266, 3
  %5269 = fmul fast float %5264, %5267
  %5270 = fmul fast float %5265, %5268
  %5271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.i32 %5271, 3
  %5273 = icmp eq i32 %5272, 0
  br i1 %5273, label %5279, label %5274

; <label>:5274                                    ; preds = %5234
  %5275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %63, float %5269, float %5270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  br label %5284

; <label>:5279                                    ; preds = %5234
  %5280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %64, float %5269, float %5270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5281 = extractvalue %dx.types.ResRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.ResRet.f32 %5280, 1
  %5283 = extractvalue %dx.types.ResRet.f32 %5280, 2
  br label %5284

; <label>:5284                                    ; preds = %5279, %5274
  %5285 = phi float [ %5276, %5274 ], [ %5281, %5279 ]
  %5286 = phi float [ %5277, %5274 ], [ %5282, %5279 ]
  %5287 = phi float [ %5278, %5274 ], [ %5283, %5279 ]
  %5288 = extractvalue %dx.types.CBufRet.f32 %5243, 2
  %5289 = fmul fast float %5288, %5285
  %5290 = extractvalue %dx.types.CBufRet.f32 %5243, 0
  %5291 = fsub fast float %5256, %5290
  %5292 = fsub fast float %5291, %5289
  %5293 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5292)  ; FMax(a,b)
  %5294 = fmul fast float %5293, %5286
  %5295 = call float @dx.op.binary.f32(i32 36, float %5287, float %5294)  ; FMin(a,b)
  %5296 = fmul fast float %5295, 0xBFF7154760000000
  %5297 = call float @dx.op.unary.f32(i32 21, float %5296)  ; Exp(value)
  %5298 = fmul fast float %5236, %5297
  br label %5299

; <label>:5299                                    ; preds = %5284, %5129
  %5300 = phi float [ %5298, %5284 ], [ %5130, %5129 ]
  %5301 = call float @dx.op.binary.f32(i32 36, float %5300, float %5300)  ; FMin(a,b)
  %5302 = call float @dx.op.binary.f32(i32 36, float %5300, float %5301)  ; FMin(a,b)
  %5303 = fcmp fast ogt float %5302, 0.000000e+00
  br i1 %5303, label %5304, label %5551, !dx.controlflow.hints !144

; <label>:5304                                    ; preds = %5299
  %5305 = fmul fast float %5300, %4022
  %5306 = fmul fast float %5300, %4023
  %5307 = fmul fast float %5300, %4024
  %5308 = fsub fast float %159, %1918
  %5309 = fcmp fast ogt float %5308, 0.000000e+00
  %5310 = fmul fast float %4011, 5.120000e+02
  %5311 = fmul fast float %4012, 5.120000e+02
  %5312 = fmul fast float %4013, 5.120000e+02
  %5313 = fadd fast float %5312, %159
  %5314 = fsub fast float %1918, %5313
  %5315 = fmul fast float %5314, 2.000000e+00
  %5316 = fadd fast float %5315, %5313
  %5317 = select i1 %5309, float %5316, float %5313
  %5318 = fsub fast float %5317, %159
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5310, float %5311, float %5318, float %5310, float %5311, float %5318)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.unary.f32(i32 25, float %5319)  ; Rsqrt(value)
  %5321 = fmul fast float %5320, %5310
  %5322 = fmul fast float %5320, %5311
  %5323 = fmul fast float %5320, %5318
  %5324 = fsub fast float %1918, %159
  %5325 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5324)  ; Dot3(ax,ay,az,bx,by,bz)
  %5326 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5321, float %5322, float %5323)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = fdiv fast float 1.000000e+00, %5326
  %5328 = fmul fast float %5327, %5325
  %5329 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5308, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = fcmp fast ogt float %5329, 0.000000e+00
  %5331 = fcmp fast olt float %5329, 0.000000e+00
  %5332 = zext i1 %5330 to i32
  %5333 = zext i1 %5331 to i32
  %5334 = sub nsw i32 %5332, %5333
  %5335 = sitofp i32 %5334 to float
  %5336 = fsub fast float %5317, %1918
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5310, float %5311, float %5336, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = fcmp fast ogt float %5337, 0.000000e+00
  %5339 = fcmp fast olt float %5337, 0.000000e+00
  %5340 = zext i1 %5338 to i32
  %5341 = zext i1 %5339 to i32
  %5342 = sub nsw i32 %5340, %5341
  %5343 = sitofp i32 %5342 to float
  %5344 = fcmp fast une float %5335, %5343
  br i1 %5344, label %5345, label %5355

; <label>:5345                                    ; preds = %5304
  %5346 = fmul fast float %5328, %5323
  %5347 = fmul fast float %5328, %5322
  %5348 = fmul fast float %5328, %5321
  %5349 = fmul fast float %5348, %5348
  %5350 = fmul fast float %5347, %5347
  %5351 = fadd fast float %5349, %5350
  %5352 = fmul fast float %5346, %5346
  %5353 = fadd fast float %5351, %5352
  %5354 = call float @dx.op.unary.f32(i32 24, float %5353)  ; Sqrt(value)
  br label %5365

; <label>:5355                                    ; preds = %5304
  %5356 = icmp slt i32 %5334, 0
  br i1 %5356, label %5357, label %5365

; <label>:5357                                    ; preds = %5355
  %5358 = fsub fast float %159, %5317
  %5359 = fmul fast float %5310, %5310
  %5360 = fmul fast float %5311, %5311
  %5361 = fadd fast float %5359, %5360
  %5362 = fmul fast float %5358, %5358
  %5363 = fadd fast float %5361, %5362
  %5364 = call float @dx.op.unary.f32(i32 24, float %5363)  ; Sqrt(value)
  br label %5365

; <label>:5365                                    ; preds = %5357, %5355, %5345
  %5366 = phi float [ %5354, %5345 ], [ %5364, %5357 ], [ 0.000000e+00, %5355 ]
  %5367 = fsub fast float -0.000000e+00, %5366
  %5368 = select i1 %5309, float -0.000000e+00, float %5367
  %5369 = fmul fast float %1919, 0x3FF7154760000000
  %5370 = fmul fast float %5369, %5368
  %5371 = fmul fast float %1920, 0x3FF7154760000000
  %5372 = fmul fast float %5371, %5368
  %5373 = fmul fast float %1921, 0x3FF7154760000000
  %5374 = fmul fast float %5373, %5368
  %5375 = call float @dx.op.unary.f32(i32 21, float %5370)  ; Exp(value)
  %5376 = call float @dx.op.unary.f32(i32 21, float %5372)  ; Exp(value)
  %5377 = call float @dx.op.unary.f32(i32 21, float %5374)  ; Exp(value)
  %5378 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5379 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5380 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5381 = fmul fast float %5305, %5378
  %5382 = fmul fast float %5306, %5379
  %5383 = fmul fast float %5307, %5380
  %5384 = fsub fast float %4011, %2118
  %5385 = fsub fast float %4012, %2117
  %5386 = fsub fast float %4013, %2116
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5384, float %5385, float %5386, float %5384, float %5385, float %5386)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = call float @dx.op.unary.f32(i32 25, float %5387)  ; Rsqrt(value)
  %5389 = fmul fast float %5388, %5384
  %5390 = fmul fast float %5388, %5385
  %5391 = fmul fast float %5388, %5386
  %5392 = call float @dx.op.dot3.f32(i32 55, float %4011, float %4012, float %4013, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5393 = call float @dx.op.dot3.f32(i32 55, float %2115, float %2114, float %2113, float %5389, float %5390, float %5391)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5395 = fmul fast float %5394, %5394
  %5396 = fmul fast float %5395, %4006
  %5397 = call float @dx.op.unary.f32(i32 7, float %5396)  ; Saturate(value)
  %5398 = fmul fast float %5397, %5394
  %5399 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2123, float %2124, float %5389, float %5390, float %5391)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = fmul fast float %5399, %5399
  %5401 = call float @dx.op.unary.f32(i32 6, float %5392)  ; FAbs(value)
  %5402 = fsub fast float 1.000000e+00, %2151
  %5403 = fmul fast float %2133, %2133
  %5404 = fmul fast float %5403, %5402
  %5405 = fadd fast float %5404, %2151
  %5406 = bitcast float %5405 to i32
  %5407 = ashr i32 %5406, 1
  %5408 = add nsw i32 %5407, 532487669
  %5409 = bitcast i32 %5408 to float
  %5410 = fadd fast float %5409, %2133
  %5411 = fmul fast float %2151, %5400
  %5412 = fsub fast float 1.000000e+00, %5400
  %5413 = fadd fast float %5412, %5411
  %5414 = fmul fast float %5401, %5401
  %5415 = fmul fast float %5414, %5402
  %5416 = fadd fast float %5415, %2151
  %5417 = bitcast float %5416 to i32
  %5418 = ashr i32 %5417, 1
  %5419 = add nsw i32 %5418, 532487669
  %5420 = bitcast i32 %5419 to float
  %5421 = fadd fast float %5420, %5401
  %5422 = fmul fast float %5413, %5413
  %5423 = fmul fast float %5422, %5410
  %5424 = fmul fast float %5423, %5421
  %5425 = fdiv fast float 0x3FF0A00000000000, %5424
  %5426 = fmul fast float %5425, %2151
  %5427 = call float @dx.op.unary.f32(i32 6, float %5393)  ; FAbs(value)
  %5428 = fsub fast float 1.000000e+00, %5427
  %5429 = bitcast float %5428 to i32
  %5430 = sitofp i32 %5429 to float
  %5431 = fmul fast float %5430, 5.000000e+00
  %5432 = fadd fast float %5431, 0xC1EFBF8940000000
  %5433 = fptosi float %5432 to i32
  %5434 = bitcast i32 %5433 to float
  %5435 = fsub fast float 1.000000e+00, %2119
  %5436 = fsub fast float 1.000000e+00, %2120
  %5437 = fsub fast float 1.000000e+00, %2131
  %5438 = fmul fast float %5434, %5435
  %5439 = fmul fast float %5434, %5436
  %5440 = fmul fast float %5434, %5437
  %5441 = fadd fast float %5438, %2119
  %5442 = fadd fast float %5439, %2120
  %5443 = fadd fast float %5440, %2131
  br i1 %3429, label %5444, label %5467

; <label>:5444                                    ; preds = %5365
  %5445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1496, float %5427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.ResRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.ResRet.f32 %5445, 2
  %5449 = fadd fast float %5446, -5.000000e-01
  %5450 = fadd fast float %5447, -5.000000e-01
  %5451 = fadd fast float %5448, -5.000000e-01
  %5452 = fmul fast float %2119, 4.000000e+00
  %5453 = fmul fast float %5452, %5435
  %5454 = fmul fast float %5453, %5449
  %5455 = fmul fast float %2120, 4.000000e+00
  %5456 = fmul fast float %5455, %5436
  %5457 = fmul fast float %5456, %5450
  %5458 = fmul fast float %2131, 4.000000e+00
  %5459 = fmul fast float %5458, %5437
  %5460 = fmul fast float %5459, %5451
  %5461 = fadd fast float %5454, %5441
  %5462 = fadd fast float %5457, %5442
  %5463 = fadd fast float %5460, %5443
  %5464 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5465 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5466 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  br label %5467

; <label>:5467                                    ; preds = %5444, %5365
  %5468 = phi float [ %5464, %5444 ], [ %5441, %5365 ]
  %5469 = phi float [ %5465, %5444 ], [ %5442, %5365 ]
  %5470 = phi float [ %5466, %5444 ], [ %5443, %5365 ]
  %5471 = fmul fast float %5392, 9.843750e-01
  %5472 = fadd fast float %5471, 7.812500e-03
  %5473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %5472, float %3419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5474 = extractvalue %dx.types.ResRet.f32 %5473, 2
  %5475 = extractvalue %dx.types.ResRet.f32 %5473, 3
  %5476 = fmul fast float %5474, %2119
  %5477 = fmul fast float %5474, %2120
  %5478 = fmul fast float %5474, %2131
  %5479 = fadd fast float %5476, %5475
  %5480 = fadd fast float %5477, %5475
  %5481 = fadd fast float %5478, %5475
  br i1 %3429, label %5482, label %5505

; <label>:5482                                    ; preds = %5467
  %5483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1496, float %5392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5484 = extractvalue %dx.types.ResRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.ResRet.f32 %5483, 1
  %5486 = extractvalue %dx.types.ResRet.f32 %5483, 2
  %5487 = fadd fast float %5484, -5.000000e-01
  %5488 = fadd fast float %5485, -5.000000e-01
  %5489 = fadd fast float %5486, -5.000000e-01
  %5490 = fmul fast float %2119, 4.000000e+00
  %5491 = fmul fast float %5490, %5435
  %5492 = fmul fast float %5491, %5487
  %5493 = fmul fast float %2120, 4.000000e+00
  %5494 = fmul fast float %5493, %5436
  %5495 = fmul fast float %5494, %5488
  %5496 = fmul fast float %2131, 4.000000e+00
  %5497 = fmul fast float %5496, %5437
  %5498 = fmul fast float %5497, %5489
  %5499 = fadd fast float %5492, %5479
  %5500 = fadd fast float %5495, %5480
  %5501 = fadd fast float %5498, %5481
  %5502 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5503 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5504 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  br label %5505

; <label>:5505                                    ; preds = %5482, %5467
  %5506 = phi float [ %5502, %5482 ], [ %5479, %5467 ]
  %5507 = phi float [ %5503, %5482 ], [ %5480, %5467 ]
  %5508 = phi float [ %5504, %5482 ], [ %5481, %5467 ]
  %5509 = call float @dx.op.binary.f32(i32 35, float %5507, float %5508)  ; FMax(a,b)
  %5510 = call float @dx.op.binary.f32(i32 35, float %5506, float %5509)  ; FMax(a,b)
  %5511 = fsub fast float 1.000000e+00, %5510
  %5512 = fmul fast float %5468, %5426
  %5513 = fmul fast float %5469, %5426
  %5514 = fmul fast float %5470, %5426
  %5515 = fsub fast float 1.000000e+00, %5393
  %5516 = bitcast float %5515 to i32
  %5517 = sitofp i32 %5516 to float
  %5518 = fmul fast float %5517, 5.000000e+00
  %5519 = fadd fast float %5518, 0xC1EFBF8940000000
  %5520 = fptosi float %5519 to i32
  %5521 = bitcast i32 %5520 to float
  %5522 = fmul fast float %5521, %1495
  %5523 = fmul fast float %5511, %5522
  %5524 = fmul fast float %5523, %3971
  %5525 = fmul fast float %5523, %3972
  %5526 = fmul fast float %5523, %3973
  %5527 = fadd fast float %5524, %5512
  %5528 = fadd fast float %5525, %5513
  %5529 = fadd fast float %5526, %5514
  %5530 = fmul fast float %5398, %5381
  %5531 = fmul fast float %5530, %5511
  %5532 = fmul fast float %5398, %5382
  %5533 = fmul fast float %5532, %5511
  %5534 = fmul fast float %5398, %5383
  %5535 = fmul fast float %5534, %5511
  %5536 = fmul fast float %5530, %5527
  %5537 = fmul fast float %5532, %5528
  %5538 = fmul fast float %5534, %5529
  %5539 = fadd fast float %5531, %3955
  %5540 = fmul fast float %5539, %1516
  %5541 = fadd fast float %5533, %3956
  %5542 = fmul fast float %5541, %1516
  %5543 = fadd fast float %5535, %3957
  %5544 = fmul fast float %5543, %1516
  %5545 = fadd fast float %5536, %3998
  %5546 = fmul fast float %5545, %1516
  %5547 = fadd fast float %5537, %4001
  %5548 = fmul fast float %5547, %1516
  %5549 = fadd fast float %5538, %4004
  %5550 = fmul fast float %5549, %1516
  br label %5551

; <label>:5551                                    ; preds = %5505, %5299, %3951
  %5552 = phi float [ %3999, %3951 ], [ %3999, %5299 ], [ %5546, %5505 ]
  %5553 = phi float [ %4002, %3951 ], [ %4002, %5299 ], [ %5548, %5505 ]
  %5554 = phi float [ %4005, %3951 ], [ %4005, %5299 ], [ %5550, %5505 ]
  %5555 = phi float [ %3994, %3951 ], [ %3994, %5299 ], [ %5540, %5505 ]
  %5556 = phi float [ %3995, %3951 ], [ %3995, %5299 ], [ %5542, %5505 ]
  %5557 = phi float [ %3996, %3951 ], [ %3996, %5299 ], [ %5544, %5505 ]
  %5558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.i32 %5558, 0
  %5560 = icmp eq i32 %5559, 0
  br i1 %5560, label %6223, label %5561

; <label>:5561                                    ; preds = %5551
  %5562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5563 = extractvalue %dx.types.CBufRet.f32 %5562, 2
  %5564 = extractvalue %dx.types.CBufRet.f32 %5562, 3
  %5565 = fmul fast float %5563, %102
  %5566 = fmul fast float %5564, %103
  %5567 = fptoui float %5565 to i32
  %5568 = fptoui float %5566 to i32
  %5569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5570 = extractvalue %dx.types.CBufRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.CBufRet.f32 %5569, 2
  %5572 = extractvalue %dx.types.CBufRet.f32 %5569, 3
  %5573 = fadd fast float %90, -4.000000e+00
  %5574 = call float @dx.op.binary.f32(i32 35, float %5573, float 0.000000e+00)  ; FMax(a,b)
  %5575 = fadd fast float %5574, %5570
  %5576 = fmul fast float %5575, %5571
  %5577 = call float @dx.op.unary.f32(i32 23, float %5576)  ; Log(value)
  %5578 = fmul fast float %5577, %5572
  %5579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.f32 %5579, 2
  %5581 = fmul fast float %5578, %5580
  %5582 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.i32 %5583, 1
  %5585 = add i32 %5584, -1
  %5586 = uitofp i32 %5584 to float
  %5587 = fmul fast float %5586, %5582
  %5588 = fptoui float %5587 to i32
  %5589 = call i32 @dx.op.binary.i32(i32 40, i32 %5588, i32 %5585)  ; UMin(a,b)
  %5590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5591 = extractvalue %dx.types.CBufRet.i32 %5590, 2
  %5592 = extractvalue %dx.types.CBufRet.i32 %5590, 3
  %5593 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5568, i32 %5591, i32 %5567)  ; UMad(a,b,c)
  %5594 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5589, i32 %5592, i32 %5593)  ; UMad(a,b,c)
  %5595 = add nsw i32 %5559, -1
  %5596 = call i32 @dx.op.binary.i32(i32 37, i32 %5595, i32 0)  ; IMax(a,b)
  %5597 = call float @dx.op.binary.f32(i32 35, float %90, float 0.000000e+00)  ; FMax(a,b)
  %5598 = fptoui float %5597 to i32
  %5599 = lshr i32 %5598, 5
  %5600 = call i32 @dx.op.binary.i32(i32 40, i32 %5599, i32 8191)  ; UMin(a,b)
  %5601 = shl i32 %5600, 2
  %5602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5601, i32 undef)  ; BufferLoad(srv,index,wot)
  %5603 = extractvalue %dx.types.ResRet.i32 %5602, 0
  %5604 = lshr i32 %5603, 16
  %5605 = and i32 %5603, 65535
  %5606 = lshr i32 %5603, 21
  %5607 = lshr i32 %5605, 5
  %5608 = call i32 @dx.op.binary.i32(i32 40, i32 %5607, i32 %5596)  ; UMin(a,b)
  %5609 = icmp ugt i32 %5606, %5608
  br i1 %5609, label %6223, label %5610

; <label>:5610                                    ; preds = %5561
  br label %5611

; <label>:5611                                    ; preds = %6213, %5610
  %5612 = phi i32 [ %6220, %6213 ], [ %5606, %5610 ]
  %5613 = phi float [ %6214, %6213 ], [ %5552, %5610 ]
  %5614 = phi float [ %6215, %6213 ], [ %5553, %5610 ]
  %5615 = phi float [ %6216, %6213 ], [ %5554, %5610 ]
  %5616 = phi float [ %6217, %6213 ], [ %5555, %5610 ]
  %5617 = phi float [ %6218, %6213 ], [ %5556, %5610 ]
  %5618 = phi float [ %6219, %6213 ], [ %5557, %5610 ]
  %5619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5620 = extractvalue %dx.types.CBufRet.i32 %5619, 0
  %5621 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5594, i32 %5620, i32 %5612)  ; UMad(a,b,c)
  %5622 = shl i32 %5621, 2
  %5623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5622, i32 undef)  ; BufferLoad(srv,index,wot)
  %5624 = extractvalue %dx.types.ResRet.i32 %5623, 0
  %5625 = shl i32 %5612, 5
  %5626 = sub nsw i32 %5604, %5625
  %5627 = call i32 @dx.op.binary.i32(i32 37, i32 %5626, i32 0)  ; IMax(a,b)
  %5628 = call i32 @dx.op.binary.i32(i32 38, i32 %5627, i32 31)  ; IMin(a,b)
  %5629 = sub nsw i32 1, %5604
  %5630 = add nsw i32 %5629, %5605
  %5631 = call i32 @dx.op.binary.i32(i32 37, i32 %5630, i32 0)  ; IMax(a,b)
  %5632 = call i32 @dx.op.binary.i32(i32 38, i32 %5631, i32 32)  ; IMin(a,b)
  %5633 = and i32 %5632, 31
  %5634 = shl i32 -1, %5633
  %5635 = xor i32 %5634, -1
  %5636 = and i32 %5628, 31
  %5637 = shl i32 %5635, %5636
  %5638 = icmp eq i32 %5632, 32
  %5639 = select i1 %5638, i32 -1, i32 %5637
  %5640 = and i32 %5639, %5624
  %5641 = icmp eq i32 %5640, 0
  br i1 %5641, label %6213, label %5642

; <label>:5642                                    ; preds = %5611
  br label %5643

; <label>:5643                                    ; preds = %5777, %5642
  %5644 = phi i32 [ %5655, %5777 ], [ %5640, %5642 ]
  %5645 = phi float [ %5778, %5777 ], [ %5613, %5642 ]
  %5646 = phi float [ %5779, %5777 ], [ %5614, %5642 ]
  %5647 = phi float [ %5780, %5777 ], [ %5615, %5642 ]
  %5648 = phi float [ %5781, %5777 ], [ %5616, %5642 ]
  %5649 = phi float [ %5782, %5777 ], [ %5617, %5642 ]
  %5650 = phi float [ %5783, %5777 ], [ %5618, %5642 ]
  %5651 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5644)  ; FirstbitLo(value)
  %5652 = add i32 %5651, %5625
  %5653 = and i32 %5651, 31
  %5654 = shl i32 1, %5653
  %5655 = xor i32 %5654, %5644
  %5656 = mul i32 %5652, 112
  %5657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5656, i32 undef)  ; BufferLoad(srv,index,wot)
  %5658 = extractvalue %dx.types.ResRet.f32 %5657, 0
  %5659 = extractvalue %dx.types.ResRet.f32 %5657, 1
  %5660 = extractvalue %dx.types.ResRet.f32 %5657, 2
  %5661 = or i32 %5656, 12
  %5662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5661, i32 undef)  ; BufferLoad(srv,index,wot)
  %5663 = extractvalue %dx.types.ResRet.f32 %5662, 0
  %5664 = add i32 %5656, 16
  %5665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5664, i32 undef)  ; BufferLoad(srv,index,wot)
  %5666 = extractvalue %dx.types.ResRet.f32 %5665, 0
  %5667 = extractvalue %dx.types.ResRet.f32 %5665, 1
  %5668 = extractvalue %dx.types.ResRet.f32 %5665, 2
  %5669 = add i32 %5656, 28
  %5670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5669, i32 undef)  ; BufferLoad(srv,index,wot)
  %5671 = extractvalue %dx.types.ResRet.i32 %5670, 0
  %5672 = add i32 %5656, 44
  %5673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5672, i32 undef)  ; BufferLoad(srv,index,wot)
  %5674 = extractvalue %dx.types.ResRet.f32 %5673, 0
  %5675 = add i32 %5656, 48
  %5676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5675, i32 undef)  ; BufferLoad(srv,index,wot)
  %5677 = extractvalue %dx.types.ResRet.f32 %5676, 0
  %5678 = extractvalue %dx.types.ResRet.f32 %5676, 1
  %5679 = extractvalue %dx.types.ResRet.f32 %5676, 2
  %5680 = extractvalue %dx.types.ResRet.f32 %5676, 3
  %5681 = add i32 %5656, 64
  %5682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5681, i32 undef)  ; BufferLoad(srv,index,wot)
  %5683 = extractvalue %dx.types.ResRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.ResRet.f32 %5682, 1
  %5685 = extractvalue %dx.types.ResRet.f32 %5682, 2
  %5686 = extractvalue %dx.types.ResRet.f32 %5682, 3
  %5687 = add i32 %5656, 80
  %5688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5687, i32 undef)  ; BufferLoad(srv,index,wot)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 1
  %5690 = extractvalue %dx.types.ResRet.f32 %5688, 2
  %5691 = add i32 %5656, 92
  %5692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5691, i32 undef)  ; BufferLoad(srv,index,wot)
  %5693 = extractvalue %dx.types.ResRet.i32 %5692, 0
  %5694 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5659, float %5660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5695 = select i1 %248, float %5689, float %5658
  %5696 = select i1 %248, float %5694, float %5659
  %5697 = select i1 %248, float %5690, float %5660
  %5698 = and i32 %5693, 65535
  %5699 = uitofp i32 %5698 to float
  %5700 = lshr i32 %5693, 16
  %5701 = uitofp i32 %5700 to float
  %5702 = and i32 %5671, 65535
  %5703 = and i32 %5671, 50331648
  %5704 = icmp eq i32 %5703, 33554432
  %5705 = fsub fast float %5677, %157
  %5706 = fsub fast float %5678, %158
  %5707 = fsub fast float %5679, %159
  %5708 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %5707, float %5705, float %5706, float %5707)  ; Dot3(ax,ay,az,bx,by,bz)
  %5709 = call float @dx.op.unary.f32(i32 24, float %5708)  ; Sqrt(value)
  %5710 = fdiv fast float 1.000000e+00, %5709
  %5711 = fmul fast float %5710, %5705
  %5712 = fmul fast float %5710, %5706
  %5713 = fmul fast float %5710, %5707
  %5714 = fadd fast float %5709, %5663
  %5715 = fdiv fast float 1.000000e+00, %5714
  %5716 = fmul float %5674, %5715
  %5717 = fmul float %5716, %5716
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  br i1 %5704, label %5719, label %5740

; <label>:5719                                    ; preds = %5643
  %5720 = fmul fast float %5685, %5666
  %5721 = fmul fast float %5685, %5667
  %5722 = fmul fast float %5685, %5668
  %5723 = fadd fast float %5705, %5720
  %5724 = fadd fast float %5706, %5721
  %5725 = fadd fast float %5707, %5722
  %5726 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = call float @dx.op.unary.f32(i32 25, float %5726)  ; Rsqrt(value)
  %5728 = fmul fast float %5727, %5723
  %5729 = fmul fast float %5727, %5724
  %5730 = fmul fast float %5727, %5725
  %5731 = fsub fast float %157, %5677
  %5732 = fsub fast float %158, %5678
  %5733 = fsub fast float %159, %5679
  %5734 = fsub fast float -0.000000e+00, %5731
  %5735 = fsub fast float -0.000000e+00, %5732
  %5736 = fsub fast float -0.000000e+00, %5733
  %5737 = call float @dx.op.dot3.f32(i32 55, float %5734, float %5735, float %5736, float %5666, float %5667, float %5668)  ; Dot3(ax,ay,az,bx,by,bz)
  %5738 = fcmp fast ogt float %5737, 0.000000e+00
  %5739 = uitofp i1 %5738 to float
  br label %5740

; <label>:5740                                    ; preds = %5719, %5643
  %5741 = phi float [ %5739, %5719 ], [ 1.000000e+00, %5643 ]
  %5742 = phi float [ %5728, %5719 ], [ %5711, %5643 ]
  %5743 = phi float [ %5729, %5719 ], [ %5712, %5643 ]
  %5744 = phi float [ %5730, %5719 ], [ %5713, %5643 ]
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5666, float %5667, float %5668, float %5742, float %5743, float %5744)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = fmul fast float %5745, %5745
  %5747 = call float @dx.op.unary.f32(i32 7, float %5746)  ; Saturate(value)
  %5748 = fsub fast float 1.000000e+00, %5747
  %5749 = fmul fast float %5748, 5.000000e-01
  %5750 = fcmp fast ogt float %5745, 0.000000e+00
  %5751 = fsub fast float 1.000000e+00, %5749
  %5752 = select i1 %5750, float %5749, float %5751
  %5753 = fmul fast float %5752, %5701
  %5754 = fadd fast float %5753, %5699
  %5755 = fmul fast float %5754, 0x3EF0001000000000
  %5756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %5755, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5757 = extractvalue %dx.types.ResRet.f32 %5756, 0
  %5758 = fmul fast float %5745, %5683
  %5759 = fadd fast float %5758, %5684
  %5760 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5761 = select i1 %5704, float 1.000000e+00, float %5760
  %5762 = select i1 %5704, float %5760, float 1.000000e+00
  %5763 = fmul fast float %5709, %5680
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = fmul fast float %5764, %5686
  %5766 = call float @dx.op.unary.f32(i32 7, float %5765)  ; Saturate(value)
  %5767 = fmul fast float %5766, %5762
  %5768 = fmul fast float %5767, 2.000000e+00
  %5769 = fsub fast float 3.000000e+00, %5768
  %5770 = fmul fast float %5757, %5741
  %5771 = fmul fast float %5767, %5767
  %5772 = fmul fast float %5771, %5770
  %5773 = fmul fast float %5772, %5769
  %5774 = call float @dx.op.binary.f32(i32 36, float %5773, float %5773)  ; FMin(a,b)
  %5775 = call float @dx.op.binary.f32(i32 36, float %5773, float %5774)  ; FMin(a,b)
  %5776 = fcmp fast ogt float %5775, 0.000000e+00
  br i1 %5776, label %5785, label %5777, !dx.controlflow.hints !145

; <label>:5777                                    ; preds = %6169, %5931, %5740
  %5778 = phi float [ %5645, %5931 ], [ %5645, %5740 ], [ %6209, %6169 ]
  %5779 = phi float [ %5646, %5931 ], [ %5646, %5740 ], [ %6210, %6169 ]
  %5780 = phi float [ %5647, %5931 ], [ %5647, %5740 ], [ %6211, %6169 ]
  %5781 = phi float [ %5648, %5931 ], [ %5648, %5740 ], [ %6203, %6169 ]
  %5782 = phi float [ %5649, %5931 ], [ %5649, %5740 ], [ %6204, %6169 ]
  %5783 = phi float [ %5650, %5931 ], [ %5650, %5740 ], [ %6205, %6169 ]
  %5784 = icmp eq i32 %5644, %5654
  br i1 %5784, label %6212, label %5643

; <label>:5785                                    ; preds = %5740
  %5786 = icmp eq i32 %5702, 255
  br i1 %5786, label %5931, label %5787, !dx.controlflow.hints !146

; <label>:5787                                    ; preds = %5785
  %5788 = mul nuw nsw i32 %5702, 176
  %5789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5788, i32 undef)  ; BufferLoad(srv,index,wot)
  %5790 = extractvalue %dx.types.ResRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.ResRet.f32 %5789, 1
  %5792 = extractvalue %dx.types.ResRet.f32 %5789, 2
  %5793 = extractvalue %dx.types.ResRet.f32 %5789, 3
  %5794 = add nuw nsw i32 %5788, 16
  %5795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5794, i32 undef)  ; BufferLoad(srv,index,wot)
  %5796 = extractvalue %dx.types.ResRet.f32 %5795, 0
  %5797 = extractvalue %dx.types.ResRet.f32 %5795, 1
  %5798 = add nuw nsw i32 %5788, 32
  %5799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5798, i32 undef)  ; BufferLoad(srv,index,wot)
  %5800 = extractvalue %dx.types.ResRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.ResRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.ResRet.f32 %5799, 2
  %5803 = add nuw nsw i32 %5788, 48
  %5804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5803, i32 undef)  ; BufferLoad(srv,index,wot)
  %5805 = extractvalue %dx.types.ResRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.ResRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.ResRet.f32 %5804, 2
  %5808 = extractvalue %dx.types.ResRet.f32 %5804, 3
  %5809 = add nuw nsw i32 %5788, 64
  %5810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5809, i32 undef)  ; BufferLoad(srv,index,wot)
  %5811 = extractvalue %dx.types.ResRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.ResRet.f32 %5810, 1
  %5813 = extractvalue %dx.types.ResRet.f32 %5810, 2
  %5814 = extractvalue %dx.types.ResRet.f32 %5810, 3
  %5815 = add nuw nsw i32 %5788, 80
  %5816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5815, i32 undef)  ; BufferLoad(srv,index,wot)
  %5817 = extractvalue %dx.types.ResRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.ResRet.f32 %5816, 1
  %5819 = extractvalue %dx.types.ResRet.f32 %5816, 2
  %5820 = extractvalue %dx.types.ResRet.f32 %5816, 3
  %5821 = add nuw nsw i32 %5788, 96
  %5822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5821, i32 undef)  ; BufferLoad(srv,index,wot)
  %5823 = extractvalue %dx.types.ResRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.ResRet.f32 %5822, 1
  %5825 = extractvalue %dx.types.ResRet.f32 %5822, 2
  %5826 = extractvalue %dx.types.ResRet.f32 %5822, 3
  %5827 = bitcast float %5797 to i32
  %5828 = fmul fast float %5802, %105
  %5829 = fmul fast float %5802, %106
  %5830 = fmul fast float %5802, %107
  %5831 = fadd fast float %5828, %157
  %5832 = fadd fast float %5829, %158
  %5833 = fadd fast float %5830, %159
  %5834 = fmul fast float %5831, %5805
  %5835 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5811, float %5834)  ; FMad(a,b,c)
  %5836 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5817, float %5835)  ; FMad(a,b,c)
  %5837 = fadd fast float %5836, %5823
  %5838 = fmul fast float %5831, %5806
  %5839 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5812, float %5838)  ; FMad(a,b,c)
  %5840 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5818, float %5839)  ; FMad(a,b,c)
  %5841 = fadd fast float %5840, %5824
  %5842 = fmul fast float %5831, %5807
  %5843 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5813, float %5842)  ; FMad(a,b,c)
  %5844 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5819, float %5843)  ; FMad(a,b,c)
  %5845 = fadd fast float %5844, %5825
  %5846 = fmul fast float %5831, %5808
  %5847 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5814, float %5846)  ; FMad(a,b,c)
  %5848 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5820, float %5847)  ; FMad(a,b,c)
  %5849 = fadd fast float %5848, %5826
  %5850 = fdiv fast float %5837, %5849
  %5851 = fdiv fast float %5841, %5849
  %5852 = fdiv fast float %5845, %5849
  %5853 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5852)  ; FMax(a,b)
  %5854 = fmul fast float %259, 0x401921FB60000000
  %5855 = call float @dx.op.unary.f32(i32 13, float %5854)  ; Sin(value)
  %5856 = call float @dx.op.unary.f32(i32 12, float %5854)  ; Cos(value)
  %5857 = fmul fast float %5856, %5801
  %5858 = call float @dx.op.tertiary.f32(i32 46, float %5855, float %5801, float 0.000000e+00)  ; FMad(a,b,c)
  %5859 = fmul fast float %5801, %5855
  %5860 = fsub fast float -0.000000e+00, %5859
  %5861 = call float @dx.op.tertiary.f32(i32 46, float %5856, float %5801, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5862

; <label>:5862                                    ; preds = %5862, %5787
  %5863 = phi float [ 0.000000e+00, %5787 ], [ %5895, %5862 ]
  %5864 = phi float [ 0.000000e+00, %5787 ], [ %5897, %5862 ]
  %5865 = phi i32 [ 0, %5787 ], [ %5898, %5862 ]
  %5866 = mul i32 %5865, 2
  %5867 = add i32 0, %5866
  %5868 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5867
  %5869 = load float, float* %5868, align 4
  %5870 = mul i32 %5865, 2
  %5871 = add i32 1, %5870
  %5872 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5871
  %5873 = load float, float* %5872, align 4
  %5874 = fmul fast float %5857, %5869
  %5875 = call float @dx.op.tertiary.f32(i32 46, float %5873, float %5860, float %5874)  ; FMad(a,b,c)
  %5876 = fmul fast float %5869, %5858
  %5877 = call float @dx.op.tertiary.f32(i32 46, float %5873, float %5861, float %5876)  ; FMad(a,b,c)
  %5878 = fadd fast float %5875, %5850
  %5879 = fadd fast float %5877, %5851
  %5880 = fmul fast float %5878, %5796
  %5881 = fmul fast float %5879, %5796
  %5882 = call float @dx.op.binary.f32(i32 35, float %5880, float %5792)  ; FMax(a,b)
  %5883 = call float @dx.op.binary.f32(i32 35, float %5881, float %5792)  ; FMax(a,b)
  %5884 = call float @dx.op.binary.f32(i32 36, float %5882, float %5793)  ; FMin(a,b)
  %5885 = call float @dx.op.binary.f32(i32 36, float %5883, float %5793)  ; FMin(a,b)
  %5886 = fadd fast float %5884, %5790
  %5887 = fadd fast float %5885, %5791
  %5888 = uitofp i32 %5827 to float
  %5889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %65, float %5886, float %5887, float %5888, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5890 = extractvalue %dx.types.ResRet.f32 %5889, 0
  %5891 = fsub fast float %5890, %5853
  %5892 = fsub fast float %5891, %5800
  %5893 = fcmp fast ogt float %5892, 0.000000e+00
  %5894 = select i1 %5893, float 1.000000e+00, float 0.000000e+00
  %5895 = fadd fast float %5894, %5863
  %5896 = select i1 %5893, float %5892, float 0.000000e+00
  %5897 = fadd fast float %5896, %5864
  %5898 = add nuw nsw i32 %5865, 1
  %5899 = icmp eq i32 %5898, 8
  br i1 %5899, label %5900, label %5862

; <label>:5900                                    ; preds = %5862
  %5901 = fdiv fast float 1.000000e+00, %5895
  %5902 = fmul fast float %5901, %5897
  %5903 = fdiv fast float 1.000000e+00, %5853
  %5904 = fmul fast float %5902, %5903
  %5905 = call float @dx.op.unary.f32(i32 7, float %5904)  ; Saturate(value)
  %5906 = call float @dx.op.binary.f32(i32 35, float %5905, float 0.000000e+00)  ; FMax(a,b)
  %5907 = fmul fast float %5895, 1.250000e-01
  %5908 = call float @dx.op.unary.f32(i32 7, float %5907)  ; Saturate(value)
  %5909 = fmul fast float %5908, 2.000000e+00
  %5910 = fadd fast float %5909, -1.000000e+00
  %5911 = fcmp fast ogt float %5910, 0.000000e+00
  %5912 = fcmp fast olt float %5910, 0.000000e+00
  %5913 = zext i1 %5911 to i32
  %5914 = zext i1 %5912 to i32
  %5915 = sub nsw i32 %5913, %5914
  %5916 = sitofp i32 %5915 to float
  %5917 = fmul fast float %5916, %5910
  %5918 = fsub fast float 1.000000e+00, %5917
  %5919 = fmul fast float %5918, %5918
  %5920 = fmul fast float %5919, %5918
  %5921 = fsub fast float %5918, %5920
  %5922 = fmul fast float %5921, %5906
  %5923 = fsub fast float 1.000000e+00, %5920
  %5924 = fsub fast float %5923, %5922
  %5925 = fmul fast float %5916, 5.000000e-01
  %5926 = fmul fast float %5925, %5924
  %5927 = fsub fast float -5.000000e-01, %5926
  %5928 = fmul fast float %5927, %5761
  %5929 = fadd fast float %5928, 1.000000e+00
  %5930 = fmul fast float %5929, %5773
  br label %5931

; <label>:5931                                    ; preds = %5900, %5785
  %5932 = phi float [ %5930, %5900 ], [ %5773, %5785 ]
  %5933 = call float @dx.op.binary.f32(i32 36, float %5932, float %5932)  ; FMin(a,b)
  %5934 = call float @dx.op.binary.f32(i32 36, float %5932, float %5933)  ; FMin(a,b)
  %5935 = fcmp fast ogt float %5934, 0.000000e+00
  br i1 %5935, label %5936, label %5777, !dx.controlflow.hints !147

; <label>:5936                                    ; preds = %5931
  %5937 = fmul fast float %5932, %5695
  %5938 = fmul fast float %5932, %5696
  %5939 = fmul fast float %5932, %5697
  %5940 = fsub fast float %5679, %1918
  %5941 = fcmp fast ogt float %5940, 0.000000e+00
  %5942 = fsub fast float %159, %1918
  %5943 = fcmp fast ogt float %5942, 0.000000e+00
  %5944 = xor i1 %5943, %5941
  %5945 = fsub fast float %1918, %5679
  %5946 = fmul fast float %5945, 2.000000e+00
  %5947 = fadd fast float %5946, %5679
  %5948 = select i1 %5944, float %5679, float %5947
  %5949 = fsub fast float %5948, %159
  %5950 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %5949, float %5705, float %5706, float %5949)  ; Dot3(ax,ay,az,bx,by,bz)
  %5951 = call float @dx.op.unary.f32(i32 25, float %5950)  ; Rsqrt(value)
  %5952 = fmul fast float %5951, %5705
  %5953 = fmul fast float %5951, %5706
  %5954 = fmul fast float %5951, %5949
  %5955 = fsub fast float %1918, %159
  %5956 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5955)  ; Dot3(ax,ay,az,bx,by,bz)
  %5957 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5952, float %5953, float %5954)  ; Dot3(ax,ay,az,bx,by,bz)
  %5958 = fdiv fast float 1.000000e+00, %5957
  %5959 = fmul fast float %5958, %5956
  %5960 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5942, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = fcmp fast ogt float %5960, 0.000000e+00
  %5962 = fcmp fast olt float %5960, 0.000000e+00
  %5963 = zext i1 %5961 to i32
  %5964 = zext i1 %5962 to i32
  %5965 = sub nsw i32 %5963, %5964
  %5966 = sitofp i32 %5965 to float
  %5967 = fsub fast float %5948, %1918
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5706, float %5967, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = fcmp fast ogt float %5968, 0.000000e+00
  %5970 = fcmp fast olt float %5968, 0.000000e+00
  %5971 = zext i1 %5969 to i32
  %5972 = zext i1 %5970 to i32
  %5973 = sub nsw i32 %5971, %5972
  %5974 = sitofp i32 %5973 to float
  %5975 = fcmp fast une float %5966, %5974
  br i1 %5975, label %5976, label %5986

; <label>:5976                                    ; preds = %5936
  %5977 = fmul fast float %5959, %5954
  %5978 = fmul fast float %5959, %5953
  %5979 = fmul fast float %5959, %5952
  %5980 = fmul fast float %5979, %5979
  %5981 = fmul fast float %5978, %5978
  %5982 = fadd fast float %5980, %5981
  %5983 = fmul fast float %5977, %5977
  %5984 = fadd fast float %5982, %5983
  %5985 = call float @dx.op.unary.f32(i32 24, float %5984)  ; Sqrt(value)
  br label %5998

; <label>:5986                                    ; preds = %5936
  %5987 = icmp slt i32 %5965, 0
  br i1 %5987, label %5988, label %5998

; <label>:5988                                    ; preds = %5986
  %5989 = fsub fast float %157, %5677
  %5990 = fsub fast float %158, %5678
  %5991 = fsub fast float %159, %5948
  %5992 = fmul fast float %5989, %5989
  %5993 = fmul fast float %5990, %5990
  %5994 = fadd fast float %5992, %5993
  %5995 = fmul fast float %5991, %5991
  %5996 = fadd fast float %5994, %5995
  %5997 = call float @dx.op.unary.f32(i32 24, float %5996)  ; Sqrt(value)
  br label %5998

; <label>:5998                                    ; preds = %5988, %5986, %5976
  %5999 = phi float [ %5985, %5976 ], [ %5997, %5988 ], [ 0.000000e+00, %5986 ]
  %6000 = and i1 %5943, %5941
  %6001 = fsub fast float -0.000000e+00, %5999
  %6002 = select i1 %6000, float -0.000000e+00, float %6001
  %6003 = fmul fast float %1919, 0x3FF7154760000000
  %6004 = fmul fast float %6003, %6002
  %6005 = fmul fast float %1920, 0x3FF7154760000000
  %6006 = fmul fast float %6005, %6002
  %6007 = fmul fast float %1921, 0x3FF7154760000000
  %6008 = fmul fast float %6007, %6002
  %6009 = call float @dx.op.unary.f32(i32 21, float %6004)  ; Exp(value)
  %6010 = call float @dx.op.unary.f32(i32 21, float %6006)  ; Exp(value)
  %6011 = call float @dx.op.unary.f32(i32 21, float %6008)  ; Exp(value)
  %6012 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6013 = call float @dx.op.unary.f32(i32 7, float %6010)  ; Saturate(value)
  %6014 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  %6015 = fmul fast float %5937, %6012
  %6016 = fmul fast float %5938, %6013
  %6017 = fmul fast float %5939, %6014
  %6018 = fsub fast float %5711, %2118
  %6019 = fsub fast float %5712, %2117
  %6020 = fsub fast float %5713, %2116
  %6021 = call float @dx.op.dot3.f32(i32 55, float %6018, float %6019, float %6020, float %6018, float %6019, float %6020)  ; Dot3(ax,ay,az,bx,by,bz)
  %6022 = call float @dx.op.unary.f32(i32 25, float %6021)  ; Rsqrt(value)
  %6023 = fmul fast float %6022, %6018
  %6024 = fmul fast float %6022, %6019
  %6025 = fmul fast float %6022, %6020
  %6026 = call float @dx.op.dot3.f32(i32 55, float %5711, float %5712, float %5713, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %6027 = call float @dx.op.dot3.f32(i32 55, float %2115, float %2114, float %2113, float %6023, float %6024, float %6025)  ; Dot3(ax,ay,az,bx,by,bz)
  %6028 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6029 = fmul fast float %6028, %5718
  %6030 = fmul fast float %6028, %6028
  %6031 = fmul fast float %6030, %4006
  %6032 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  %6033 = fmul fast float %6029, %6032
  %6034 = bitcast float %5708 to i32
  %6035 = ashr i32 %6034, 1
  %6036 = sub nsw i32 1597463007, %6035
  %6037 = bitcast i32 %6036 to float
  %6038 = fmul fast float %6037, %5705
  %6039 = fmul fast float %6037, %5706
  %6040 = fmul fast float %6037, %5707
  %6041 = fsub fast float %6038, %2118
  %6042 = fsub fast float %6039, %2117
  %6043 = fsub fast float %6040, %2116
  %6044 = call float @dx.op.dot3.f32(i32 55, float %6041, float %6042, float %6043, float %6041, float %6042, float %6043)  ; Dot3(ax,ay,az,bx,by,bz)
  %6045 = call float @dx.op.unary.f32(i32 25, float %6044)  ; Rsqrt(value)
  %6046 = fmul fast float %6041, %6045
  %6047 = fmul fast float %6042, %6045
  %6048 = fmul fast float %6043, %6045
  %6049 = call float @dx.op.dot3.f32(i32 55, float %2122, float %2123, float %2124, float %6046, float %6047, float %6048)  ; Dot3(ax,ay,az,bx,by,bz)
  %6050 = fmul fast float %6049, %6049
  %6051 = call float @dx.op.unary.f32(i32 6, float %6026)  ; FAbs(value)
  %6052 = fsub fast float 1.000000e+00, %2151
  %6053 = fmul fast float %2133, %2133
  %6054 = fmul fast float %6053, %6052
  %6055 = fadd fast float %6054, %2151
  %6056 = bitcast float %6055 to i32
  %6057 = ashr i32 %6056, 1
  %6058 = add nsw i32 %6057, 532487669
  %6059 = bitcast i32 %6058 to float
  %6060 = fadd fast float %6059, %2133
  %6061 = fmul fast float %2151, %6050
  %6062 = fsub fast float 1.000000e+00, %6050
  %6063 = fadd fast float %6062, %6061
  %6064 = fmul fast float %6051, %6051
  %6065 = fmul fast float %6064, %6052
  %6066 = fadd fast float %6065, %2151
  %6067 = bitcast float %6066 to i32
  %6068 = ashr i32 %6067, 1
  %6069 = add nsw i32 %6068, 532487669
  %6070 = bitcast i32 %6069 to float
  %6071 = fadd fast float %6070, %6051
  %6072 = fmul fast float %6063, %6063
  %6073 = fmul fast float %6072, %6060
  %6074 = fmul fast float %6073, %6071
  %6075 = fdiv fast float 1.000000e+00, %6074
  %6076 = bitcast float %2151 to i32
  %6077 = sitofp i32 %6076 to float
  %6078 = fmul fast float %6077, 0x3FE7F73180000000
  %6079 = fadd fast float %6078, 0x41AFE27C40000000
  %6080 = fptosi float %6079 to i32
  %6081 = bitcast i32 %6080 to float
  %6082 = fmul fast float %5674, 0x3FD80E9D60000000
  %6083 = fmul fast float %6082, %6037
  %6084 = fadd fast float %6081, %6083
  %6085 = bitcast float %6084 to i32
  %6086 = sub nsw i32 2129859010, %6085
  %6087 = bitcast i32 %6086 to float
  %6088 = fmul fast float %2151, %6075
  %6089 = fmul fast float %6088, %6081
  %6090 = fmul fast float %6089, %6087
  %6091 = call float @dx.op.unary.f32(i32 6, float %6027)  ; FAbs(value)
  %6092 = fsub fast float 1.000000e+00, %6091
  %6093 = bitcast float %6092 to i32
  %6094 = sitofp i32 %6093 to float
  %6095 = fmul fast float %6094, 5.000000e+00
  %6096 = fadd fast float %6095, 0xC1EFBF8940000000
  %6097 = fptosi float %6096 to i32
  %6098 = bitcast i32 %6097 to float
  %6099 = fsub fast float 1.000000e+00, %2119
  %6100 = fsub fast float 1.000000e+00, %2120
  %6101 = fsub fast float 1.000000e+00, %2131
  %6102 = fmul fast float %6098, %6099
  %6103 = fmul fast float %6098, %6100
  %6104 = fmul fast float %6098, %6101
  %6105 = fadd fast float %6102, %2119
  %6106 = fadd fast float %6103, %2120
  %6107 = fadd fast float %6104, %2131
  br i1 %3429, label %6108, label %6131

; <label>:6108                                    ; preds = %5998
  %6109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1496, float %6091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6110 = extractvalue %dx.types.ResRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.ResRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.ResRet.f32 %6109, 2
  %6113 = fadd fast float %6110, -5.000000e-01
  %6114 = fadd fast float %6111, -5.000000e-01
  %6115 = fadd fast float %6112, -5.000000e-01
  %6116 = fmul fast float %2119, 4.000000e+00
  %6117 = fmul fast float %6116, %6099
  %6118 = fmul fast float %6117, %6113
  %6119 = fmul fast float %2120, 4.000000e+00
  %6120 = fmul fast float %6119, %6100
  %6121 = fmul fast float %6120, %6114
  %6122 = fmul fast float %2131, 4.000000e+00
  %6123 = fmul fast float %6122, %6101
  %6124 = fmul fast float %6123, %6115
  %6125 = fadd fast float %6118, %6105
  %6126 = fadd fast float %6121, %6106
  %6127 = fadd fast float %6124, %6107
  %6128 = call float @dx.op.unary.f32(i32 7, float %6125)  ; Saturate(value)
  %6129 = call float @dx.op.unary.f32(i32 7, float %6126)  ; Saturate(value)
  %6130 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  br label %6131

; <label>:6131                                    ; preds = %6108, %5998
  %6132 = phi float [ %6128, %6108 ], [ %6105, %5998 ]
  %6133 = phi float [ %6129, %6108 ], [ %6106, %5998 ]
  %6134 = phi float [ %6130, %6108 ], [ %6107, %5998 ]
  %6135 = fmul fast float %6026, 9.843750e-01
  %6136 = fadd fast float %6135, 7.812500e-03
  %6137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %6136, float %3419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6138 = extractvalue %dx.types.ResRet.f32 %6137, 2
  %6139 = extractvalue %dx.types.ResRet.f32 %6137, 3
  %6140 = fmul fast float %6138, %2119
  %6141 = fmul fast float %6138, %2120
  %6142 = fmul fast float %6138, %2131
  %6143 = fadd fast float %6140, %6139
  %6144 = fadd fast float %6141, %6139
  %6145 = fadd fast float %6142, %6139
  br i1 %3429, label %6146, label %6169

; <label>:6146                                    ; preds = %6131
  %6147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %64, float %1496, float %6026, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6148 = extractvalue %dx.types.ResRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.ResRet.f32 %6147, 1
  %6150 = extractvalue %dx.types.ResRet.f32 %6147, 2
  %6151 = fadd fast float %6148, -5.000000e-01
  %6152 = fadd fast float %6149, -5.000000e-01
  %6153 = fadd fast float %6150, -5.000000e-01
  %6154 = fmul fast float %2119, 4.000000e+00
  %6155 = fmul fast float %6154, %6099
  %6156 = fmul fast float %6155, %6151
  %6157 = fmul fast float %2120, 4.000000e+00
  %6158 = fmul fast float %6157, %6100
  %6159 = fmul fast float %6158, %6152
  %6160 = fmul fast float %2131, 4.000000e+00
  %6161 = fmul fast float %6160, %6101
  %6162 = fmul fast float %6161, %6153
  %6163 = fadd fast float %6156, %6143
  %6164 = fadd fast float %6159, %6144
  %6165 = fadd fast float %6162, %6145
  %6166 = call float @dx.op.unary.f32(i32 7, float %6163)  ; Saturate(value)
  %6167 = call float @dx.op.unary.f32(i32 7, float %6164)  ; Saturate(value)
  %6168 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  br label %6169

; <label>:6169                                    ; preds = %6146, %6131
  %6170 = phi float [ %6166, %6146 ], [ %6143, %6131 ]
  %6171 = phi float [ %6167, %6146 ], [ %6144, %6131 ]
  %6172 = phi float [ %6168, %6146 ], [ %6145, %6131 ]
  %6173 = call float @dx.op.binary.f32(i32 35, float %6171, float %6172)  ; FMax(a,b)
  %6174 = call float @dx.op.binary.f32(i32 35, float %6170, float %6173)  ; FMax(a,b)
  %6175 = fsub fast float 1.000000e+00, %6174
  %6176 = fmul fast float %6132, %6090
  %6177 = fmul fast float %6133, %6090
  %6178 = fmul fast float %6134, %6090
  %6179 = fsub fast float 1.000000e+00, %6027
  %6180 = bitcast float %6179 to i32
  %6181 = sitofp i32 %6180 to float
  %6182 = fmul fast float %6181, 5.000000e+00
  %6183 = fadd fast float %6182, 0xC1EFBF8940000000
  %6184 = fptosi float %6183 to i32
  %6185 = bitcast i32 %6184 to float
  %6186 = fmul fast float %6185, %1495
  %6187 = fmul fast float %6175, %6186
  %6188 = fmul fast float %6187, %3971
  %6189 = fmul fast float %6187, %3972
  %6190 = fmul fast float %6187, %3973
  %6191 = fadd fast float %6188, %6176
  %6192 = fadd fast float %6189, %6177
  %6193 = fadd fast float %6190, %6178
  %6194 = fmul fast float %6015, %1516
  %6195 = fmul fast float %6194, %6033
  %6196 = fmul fast float %6195, %6175
  %6197 = fmul fast float %6016, %1516
  %6198 = fmul fast float %6197, %6033
  %6199 = fmul fast float %6198, %6175
  %6200 = fmul fast float %6017, %1516
  %6201 = fmul fast float %6200, %6033
  %6202 = fmul fast float %6201, %6175
  %6203 = fadd fast float %6196, %5648
  %6204 = fadd fast float %6199, %5649
  %6205 = fadd fast float %6202, %5650
  %6206 = fmul fast float %6195, %6191
  %6207 = fmul fast float %6198, %6192
  %6208 = fmul fast float %6201, %6193
  %6209 = fadd fast float %6206, %5645
  %6210 = fadd fast float %6207, %5646
  %6211 = fadd fast float %6208, %5647
  br label %5777

; <label>:6212                                    ; preds = %5777
  br label %6213

; <label>:6213                                    ; preds = %6212, %5611
  %6214 = phi float [ %5613, %5611 ], [ %5778, %6212 ]
  %6215 = phi float [ %5614, %5611 ], [ %5779, %6212 ]
  %6216 = phi float [ %5615, %5611 ], [ %5780, %6212 ]
  %6217 = phi float [ %5616, %5611 ], [ %5781, %6212 ]
  %6218 = phi float [ %5617, %5611 ], [ %5782, %6212 ]
  %6219 = phi float [ %5618, %5611 ], [ %5783, %6212 ]
  %6220 = add i32 %5612, 1
  %6221 = icmp ugt i32 %6220, %5608
  br i1 %6221, label %6222, label %5611

; <label>:6222                                    ; preds = %6213
  br label %6223

; <label>:6223                                    ; preds = %6222, %5561, %5551
  %6224 = phi float [ %5552, %5551 ], [ %5552, %5561 ], [ %6214, %6222 ]
  %6225 = phi float [ %5553, %5551 ], [ %5553, %5561 ], [ %6215, %6222 ]
  %6226 = phi float [ %5554, %5551 ], [ %5554, %5561 ], [ %6216, %6222 ]
  %6227 = phi float [ %5555, %5551 ], [ %5555, %5561 ], [ %6217, %6222 ]
  %6228 = phi float [ %5556, %5551 ], [ %5556, %5561 ], [ %6218, %6222 ]
  %6229 = phi float [ %5557, %5551 ], [ %5557, %5561 ], [ %6219, %6222 ]
  %6230 = fmul fast float %1516, %1516
  %6231 = fsub fast float 1.000000e+00, %6230
  %6232 = call float @dx.op.dot3.f32(i32 55, float %6231, float %6231, float %6231, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = fsub fast float 1.000000e+00, %6232
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = fmul fast float %6235, %3977
  %6237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6238 = extractvalue %dx.types.CBufRet.f32 %6237, 3
  %6239 = fsub fast float 1.000000e+00, %1494
  %6240 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6241 = fadd fast float %6229, %1493
  %6242 = fmul fast float %6241, %1494
  %6243 = fmul fast float %6240, %6238
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 3
  %6246 = fmul fast float %6227, %2125
  %6247 = fmul fast float %6228, %2126
  %6248 = fmul fast float %6229, %2127
  %6249 = fcmp fast ogt float %90, %208
  %6250 = and i1 %6249, %1924
  %6251 = or i1 %1930, %6250
  %6252 = icmp eq i32 %1923, 2
  %6253 = fcmp fast ole float %90, %208
  %6254 = and i1 %6253, %6252
  %6255 = or i1 %6254, %6251
  br i1 %6250, label %6256, label %6515

; <label>:6256                                    ; preds = %6223
  %6257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.f32 %6257, 2
  %6259 = extractvalue %dx.types.CBufRet.f32 %6257, 3
  %6260 = fmul fast float %6258, %102
  %6261 = fmul fast float %6259, %103
  %6262 = call float @dx.op.unary.f32(i32 7, float %6260)  ; Saturate(value)
  %6263 = call float @dx.op.unary.f32(i32 7, float %6261)  ; Saturate(value)
  %6264 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6262, float %6263, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6265 = extractvalue %dx.types.ResRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.ResRet.f32 %6264, 1
  %6267 = extractvalue %dx.types.ResRet.f32 %6264, 2
  %6268 = extractvalue %dx.types.ResRet.f32 %6264, 3
  %6269 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %6262, float %6263, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6270 = extractvalue %dx.types.ResRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.ResRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.ResRet.f32 %6269, 2
  %6273 = extractvalue %dx.types.ResRet.f32 %6269, 3
  %6274 = call float @dx.op.binary.f32(i32 35, float %6266, float %6267)  ; FMax(a,b)
  %6275 = call float @dx.op.binary.f32(i32 35, float %6265, float %6274)  ; FMax(a,b)
  %6276 = call float @dx.op.binary.f32(i32 35, float %6275, float %6268)  ; FMax(a,b)
  %6277 = call float @dx.op.binary.f32(i32 36, float %6271, float %6272)  ; FMin(a,b)
  %6278 = call float @dx.op.binary.f32(i32 36, float %6270, float %6277)  ; FMin(a,b)
  %6279 = call float @dx.op.binary.f32(i32 36, float %6278, float %6273)  ; FMin(a,b)
  %6280 = fmul fast float %6276, 2.550000e+02
  %6281 = fadd fast float %6280, 0x3F70101020000000
  %6282 = fptoui float %6281 to i32
  %6283 = fmul fast float %6279, 2.550000e+02
  %6284 = fadd fast float %6283, 0x3F70101020000000
  %6285 = fptoui float %6284 to i32
  %6286 = icmp ult i32 %6282, %6285
  br i1 %6286, label %6287, label %6455

; <label>:6287                                    ; preds = %6256
  %6288 = fcmp fast ogt float %89, 9.843750e-01
  %6289 = fadd fast float %90, -4.000000e+00
  %6290 = select i1 %6288, float -4.000000e+00, float %6289
  %6291 = call float @dx.op.binary.f32(i32 35, float %6290, float 0.000000e+00)  ; FMax(a,b)
  %6292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.f32 %6292, 0
  %6294 = fadd fast float %6293, %6291
  %6295 = extractvalue %dx.types.CBufRet.f32 %6292, 2
  %6296 = fmul fast float %6294, %6295
  %6297 = call float @dx.op.unary.f32(i32 23, float %6296)  ; Log(value)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6292, 3
  %6299 = fmul fast float %6298, %6297
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 2
  %6302 = fmul fast float %6299, %6301
  %6303 = call float @dx.op.unary.f32(i32 7, float %6302)  ; Saturate(value)
  %6304 = uitofp i32 %6282 to float
  %6305 = uitofp i32 %6285 to float
  %6306 = fadd fast float %6304, 5.000000e-01
  %6307 = fadd fast float %6305, 5.000000e-01
  %6308 = fmul fast float %6301, %6306
  %6309 = fmul fast float %6301, %6307
  %6310 = fadd fast float %6308, 0x3F0FFB4800000000
  %6311 = fadd fast float %6309, 0xBF0FFB4800000000
  %6312 = call float @dx.op.binary.f32(i32 35, float %6303, float %6310)  ; FMax(a,b)
  %6313 = call float @dx.op.binary.f32(i32 36, float %6312, float %6311)  ; FMin(a,b)
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 1
  %6316 = extractvalue %dx.types.CBufRet.f32 %6314, 2
  %6317 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6318 = fmul fast float %6315, %6313
  %6319 = fadd fast float %6317, %6318
  %6320 = fadd fast float %6317, %6316
  %6321 = fsub fast float %6315, %6316
  %6322 = fadd fast float %6321, %6317
  %6323 = call float @dx.op.binary.f32(i32 35, float %6319, float %6320)  ; FMax(a,b)
  %6324 = call float @dx.op.binary.f32(i32 36, float %6323, float %6322)  ; FMin(a,b)
  %6325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %6262, float %6263, float %6324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6326 = extractvalue %dx.types.ResRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.ResRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.ResRet.f32 %6325, 2
  %6329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.i32 %6329, 0
  %6331 = extractvalue %dx.types.CBufRet.i32 %6329, 1
  %6332 = uitofp i32 %6330 to float
  %6333 = uitofp i32 %6331 to float
  %6334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6334, 0
  %6336 = extractvalue %dx.types.CBufRet.f32 %6334, 1
  %6337 = fmul fast float %6332, %6262
  %6338 = fmul fast float %6333, %6263
  %6339 = fadd fast float %6337, -5.000000e-01
  %6340 = fadd fast float %6338, -5.000000e-01
  %6341 = call float @dx.op.unary.f32(i32 22, float %6339)  ; Frc(value)
  %6342 = call float @dx.op.unary.f32(i32 22, float %6340)  ; Frc(value)
  %6343 = fmul fast float %6341, %6341
  %6344 = fmul fast float %6343, %6341
  %6345 = fsub fast float 3.000000e+00, %6341
  %6346 = fmul fast float %6343, %6345
  %6347 = fmul fast float %6341, 3.000000e+00
  %6348 = fmul fast float %6344, 3.000000e+00
  %6349 = fmul fast float %6343, 6.000000e+00
  %6350 = fsub fast float %6348, %6349
  %6351 = fadd fast float %6350, 4.000000e+00
  %6352 = fmul fast float %6351, 0x3FC5555560000000
  %6353 = fmul fast float %6344, -3.000000e+00
  %6354 = fadd fast float %6343, %6341
  %6355 = fmul fast float %6354, 3.000000e+00
  %6356 = fadd fast float %6353, 1.000000e+00
  %6357 = fadd fast float %6356, %6355
  %6358 = fmul fast float %6344, 0x3FC5555560000000
  %6359 = fmul fast float %6342, %6342
  %6360 = fmul fast float %6359, %6342
  %6361 = fsub fast float 3.000000e+00, %6342
  %6362 = fmul fast float %6359, %6361
  %6363 = fmul fast float %6342, 3.000000e+00
  %6364 = fmul fast float %6360, 3.000000e+00
  %6365 = fmul fast float %6359, 6.000000e+00
  %6366 = fsub fast float %6364, %6365
  %6367 = fadd fast float %6366, 4.000000e+00
  %6368 = fmul fast float %6367, 0x3FC5555560000000
  %6369 = fmul fast float %6360, -3.000000e+00
  %6370 = fadd fast float %6359, %6342
  %6371 = fmul fast float %6370, 3.000000e+00
  %6372 = fadd fast float %6369, 1.000000e+00
  %6373 = fadd fast float %6372, %6371
  %6374 = fmul fast float %6360, 0x3FC5555560000000
  %6375 = fadd fast float %6341, 1.000000e+00
  %6376 = fsub fast float 1.000000e+00, %6347
  %6377 = fadd fast float %6376, %6346
  %6378 = fadd fast float %6377, %6351
  %6379 = fmul fast float %6378, 0x3FC5555560000000
  %6380 = fdiv fast float %6352, %6379
  %6381 = fsub fast float %6375, %6380
  %6382 = fsub fast float 1.000000e+00, %6341
  %6383 = fadd fast float %6357, %6344
  %6384 = fmul fast float %6383, 0x3FC5555560000000
  %6385 = fdiv fast float %6358, %6384
  %6386 = fadd fast float %6382, %6385
  %6387 = fadd fast float %6342, 1.000000e+00
  %6388 = fsub fast float 1.000000e+00, %6363
  %6389 = fadd fast float %6388, %6362
  %6390 = fadd fast float %6389, %6367
  %6391 = fmul fast float %6390, 0x3FC5555560000000
  %6392 = fdiv fast float %6368, %6391
  %6393 = fsub fast float %6387, %6392
  %6394 = fsub fast float 1.000000e+00, %6342
  %6395 = fadd fast float %6373, %6360
  %6396 = fmul fast float %6395, 0x3FC5555560000000
  %6397 = fdiv fast float %6374, %6396
  %6398 = fadd fast float %6397, %6394
  %6399 = fmul fast float %6381, %6335
  %6400 = fsub fast float %6262, %6399
  %6401 = fmul fast float %6386, %6335
  %6402 = fadd fast float %6401, %6262
  %6403 = fmul fast float %6398, %6336
  %6404 = fadd fast float %6403, %6263
  %6405 = fmul fast float %6393, %6336
  %6406 = fsub fast float %6263, %6405
  %6407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6400, float %6406, float %6324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.ResRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.ResRet.f32 %6407, 2
  %6411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6402, float %6406, float %6324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6412 = extractvalue %dx.types.ResRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.ResRet.f32 %6411, 1
  %6414 = extractvalue %dx.types.ResRet.f32 %6411, 2
  %6415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6400, float %6404, float %6324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6416 = extractvalue %dx.types.ResRet.f32 %6415, 0
  %6417 = extractvalue %dx.types.ResRet.f32 %6415, 1
  %6418 = extractvalue %dx.types.ResRet.f32 %6415, 2
  %6419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %6402, float %6404, float %6324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6420 = extractvalue %dx.types.ResRet.f32 %6419, 0
  %6421 = extractvalue %dx.types.ResRet.f32 %6419, 1
  %6422 = extractvalue %dx.types.ResRet.f32 %6419, 2
  %6423 = fsub fast float %6416, %6408
  %6424 = fsub fast float %6417, %6409
  %6425 = fsub fast float %6418, %6410
  %6426 = fmul fast float %6423, %6396
  %6427 = fmul fast float %6424, %6396
  %6428 = fmul fast float %6425, %6396
  %6429 = fadd fast float %6426, %6408
  %6430 = fadd fast float %6427, %6409
  %6431 = fadd fast float %6428, %6410
  %6432 = fsub fast float %6420, %6412
  %6433 = fsub fast float %6421, %6413
  %6434 = fsub fast float %6422, %6414
  %6435 = fmul fast float %6432, %6396
  %6436 = fmul fast float %6433, %6396
  %6437 = fmul fast float %6434, %6396
  %6438 = fsub fast float %6412, %6429
  %6439 = fadd fast float %6438, %6435
  %6440 = fsub fast float %6413, %6430
  %6441 = fadd fast float %6440, %6436
  %6442 = fsub fast float %6414, %6431
  %6443 = fadd fast float %6442, %6437
  %6444 = fmul fast float %6439, %6384
  %6445 = fmul fast float %6441, %6384
  %6446 = fmul fast float %6443, %6384
  %6447 = fadd fast float %6444, %6429
  %6448 = fadd fast float %6445, %6430
  %6449 = fadd fast float %6446, %6431
  %6450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6451 = extractvalue %dx.types.CBufRet.f32 %6450, 1
  %6452 = fmul fast float %6447, %6451
  %6453 = fmul fast float %6448, %6451
  %6454 = fmul fast float %6449, %6451
  br label %6455

; <label>:6455                                    ; preds = %6287, %6256
  %6456 = phi float [ %6326, %6287 ], [ 1.000000e+00, %6256 ]
  %6457 = phi float [ %6327, %6287 ], [ 1.000000e+00, %6256 ]
  %6458 = phi float [ %6328, %6287 ], [ 1.000000e+00, %6256 ]
  %6459 = phi float [ %6452, %6287 ], [ 0.000000e+00, %6256 ]
  %6460 = phi float [ %6453, %6287 ], [ 0.000000e+00, %6256 ]
  %6461 = phi float [ %6454, %6287 ], [ 0.000000e+00, %6256 ]
  %6462 = fmul fast float %6459, %6233
  %6463 = fmul fast float %6460, %6233
  %6464 = fmul fast float %6461, %6233
  %6465 = call float @dx.op.dot3.f32(i32 55, float %6456, float %6457, float %6458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6466 = call float @dx.op.dot3.f32(i32 55, float %6462, float %6463, float %6464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6467 = select i1 %248, float %6465, float %6456
  %6468 = select i1 %248, float %6465, float %6457
  %6469 = select i1 %248, float 1.000000e+00, float %6458
  %6470 = select i1 %248, float %6466, float %6462
  %6471 = select i1 %248, float 0.000000e+00, float %6463
  %6472 = select i1 %248, float 0.000000e+00, float %6464
  %6473 = fmul fast float %6467, %6246
  %6474 = fmul fast float %6468, %6247
  %6475 = fmul fast float %6469, %6248
  %6476 = fadd fast float %6473, %6470
  %6477 = fadd fast float %6474, %6471
  %6478 = fadd fast float %6472, %6475
  %6479 = fmul fast float %6467, %6224
  %6480 = fmul fast float %6468, %6225
  %6481 = fmul fast float %6469, %6226
  %6482 = fmul fast float %102, 2.000000e+00
  %6483 = fmul fast float %6482, %6258
  %6484 = fmul fast float %103, 2.000000e+00
  %6485 = fmul fast float %6484, %6259
  %6486 = fsub fast float 1.000000e+00, %6483
  %6487 = fsub fast float 1.000000e+00, %6485
  %6488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.CBufRet.f32 %6488, 1
  %6491 = extractvalue %dx.types.CBufRet.f32 %6488, 2
  %6492 = fmul fast float %6486, %6489
  %6493 = fmul fast float %6486, %6490
  %6494 = fmul fast float %6486, %6491
  %6495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6496 = extractvalue %dx.types.CBufRet.f32 %6495, 0
  %6497 = extractvalue %dx.types.CBufRet.f32 %6495, 1
  %6498 = extractvalue %dx.types.CBufRet.f32 %6495, 2
  %6499 = fmul fast float %6487, %6496
  %6500 = fmul fast float %6487, %6497
  %6501 = fmul fast float %6487, %6498
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 0
  %6504 = extractvalue %dx.types.CBufRet.f32 %6502, 1
  %6505 = extractvalue %dx.types.CBufRet.f32 %6502, 2
  %6506 = fadd fast float %6499, %6503
  %6507 = fadd fast float %6506, %6492
  %6508 = fadd fast float %6500, %6504
  %6509 = fadd fast float %6508, %6493
  %6510 = fadd fast float %6501, %6505
  %6511 = fadd fast float %6510, %6494
  %6512 = fmul fast float %6507, %208
  %6513 = fmul fast float %6509, %208
  %6514 = fmul fast float %6511, %208
  br label %6515

; <label>:6515                                    ; preds = %6455, %6223
  %6516 = phi float [ %6512, %6455 ], [ %157, %6223 ]
  %6517 = phi float [ %6513, %6455 ], [ %158, %6223 ]
  %6518 = phi float [ %6514, %6455 ], [ %159, %6223 ]
  %6519 = phi float [ %208, %6455 ], [ %90, %6223 ]
  %6520 = phi float [ %6476, %6455 ], [ %6246, %6223 ]
  %6521 = phi float [ %6477, %6455 ], [ %6247, %6223 ]
  %6522 = phi float [ %6478, %6455 ], [ %6248, %6223 ]
  %6523 = phi float [ %6479, %6455 ], [ %6224, %6223 ]
  %6524 = phi float [ %6480, %6455 ], [ %6225, %6223 ]
  %6525 = phi float [ %6481, %6455 ], [ %6226, %6223 ]
  %6526 = phi float [ %6456, %6455 ], [ 1.000000e+00, %6223 ]
  br i1 %6255, label %7681, label %6527

; <label>:6527                                    ; preds = %6515
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  %6530 = extractvalue %dx.types.CBufRet.f32 %6528, 1
  %6531 = extractvalue %dx.types.CBufRet.f32 %6528, 2
  %6532 = extractvalue %dx.types.CBufRet.f32 %6528, 3
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 0
  %6535 = extractvalue %dx.types.CBufRet.f32 %6533, 1
  %6536 = extractvalue %dx.types.CBufRet.f32 %6533, 2
  %6537 = extractvalue %dx.types.CBufRet.f32 %6533, 3
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 0
  %6540 = extractvalue %dx.types.CBufRet.f32 %6538, 1
  %6541 = extractvalue %dx.types.CBufRet.f32 %6538, 2
  %6542 = extractvalue %dx.types.CBufRet.f32 %6538, 3
  %6543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6544 = extractvalue %dx.types.CBufRet.f32 %6543, 0
  %6545 = extractvalue %dx.types.CBufRet.f32 %6543, 1
  %6546 = extractvalue %dx.types.CBufRet.f32 %6543, 2
  %6547 = extractvalue %dx.types.CBufRet.f32 %6543, 3
  %6548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6549 = extractvalue %dx.types.CBufRet.f32 %6548, 3
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 3
  %6552 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6553 = extractvalue %dx.types.CBufRet.f32 %6550, 1
  %6554 = extractvalue %dx.types.CBufRet.f32 %6550, 2
  %6555 = fcmp fast olt float %6554, -5.000000e-01
  %6556 = call float @dx.op.dot3.f32(i32 55, float %6516, float %6517, float %6518, float %6516, float %6517, float %6518)  ; Dot3(ax,ay,az,bx,by,bz)
  %6557 = call float @dx.op.unary.f32(i32 25, float %6556)  ; Rsqrt(value)
  %6558 = fmul fast float %6557, %6556
  %6559 = fmul fast float %6557, %6516
  %6560 = fmul fast float %6557, %6517
  %6561 = fmul fast float %6557, %6518
  %6562 = fadd fast float %6558, %6532
  %6563 = call float @dx.op.dot3.f32(i32 55, float %6559, float %6560, float %6561, float %6529, float %6530, float %6531)  ; Dot3(ax,ay,az,bx,by,bz)
  %6564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6565 = extractvalue %dx.types.CBufRet.i32 %6564, 1
  %6566 = and i32 %6565, 1
  %6567 = icmp ne i32 %6566, 0
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 2
  %6570 = fcmp fast ogt float %6569, 0.000000e+00
  %6571 = and i1 %6567, %6570
  br i1 %6571, label %6572, label %6978, !dx.controlflow.hints !148

; <label>:6572                                    ; preds = %6527
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 3
  %6575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6575, 2
  %6577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6578 = extractvalue %dx.types.CBufRet.f32 %6577, 2
  %6579 = fsub fast float %6576, %6578
  %6580 = and i32 %6565, 2
  %6581 = extractvalue %dx.types.CBufRet.i32 %6564, 0
  %6582 = call i32 @dx.op.binary.i32(i32 40, i32 %6581, i32 3)  ; UMin(a,b)
  %6583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6584 = extractvalue %dx.types.CBufRet.f32 %6583, 0
  %6585 = extractvalue %dx.types.CBufRet.f32 %6583, 1
  %6586 = extractvalue %dx.types.CBufRet.f32 %6577, 0
  %6587 = extractvalue %dx.types.CBufRet.f32 %6577, 1
  %6588 = fsub fast float %6584, %6586
  %6589 = fsub fast float %6585, %6587
  %6590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.f32 %6590, 0
  %6592 = fcmp fast ogt float %6591, 0.000000e+00
  %6593 = fsub fast float -0.000000e+00, %6588
  %6594 = fsub fast float -0.000000e+00, %6589
  %6595 = call float @dx.op.dot2.f32(i32 54, float %6559, float %6560, float %6559, float %6560)  ; Dot2(ax,ay,bx,by)
  %6596 = call float @dx.op.dot2.f32(i32 54, float %6559, float %6560, float %6593, float %6594)  ; Dot2(ax,ay,bx,by)
  %6597 = fmul fast float %6596, 2.000000e+00
  %6598 = call float @dx.op.dot2.f32(i32 54, float %6593, float %6594, float %6593, float %6594)  ; Dot2(ax,ay,bx,by)
  %6599 = fmul fast float %6591, %6591
  %6600 = fsub fast float %6598, %6599
  %6601 = fmul fast float %6597, %6597
  %6602 = fmul fast float %6595, 4.000000e+00
  %6603 = fmul fast float %6602, %6600
  %6604 = fsub fast float %6601, %6603
  %6605 = fcmp fast ogt float %6604, 0.000000e+00
  br i1 %6605, label %6606, label %6621

; <label>:6606                                    ; preds = %6572
  %6607 = fcmp fast ogt float %6597, 0.000000e+00
  %6608 = call float @dx.op.unary.f32(i32 24, float %6604)  ; Sqrt(value)
  %6609 = fsub fast float -0.000000e+00, %6608
  %6610 = select i1 %6607, float %6608, float %6609
  %6611 = fadd fast float %6610, %6597
  %6612 = fmul float %6611, -5.000000e-01
  %6613 = fdiv fast float %6612, %6595
  %6614 = call float @dx.op.binary.f32(i32 35, float %6613, float 0.000000e+00)  ; FMax(a,b)
  %6615 = call float @dx.op.binary.f32(i32 36, float %6558, float %6614)  ; FMin(a,b)
  %6616 = fdiv fast float %6600, %6612
  %6617 = call float @dx.op.binary.f32(i32 35, float %6616, float 0.000000e+00)  ; FMax(a,b)
  %6618 = call float @dx.op.binary.f32(i32 36, float %6558, float %6617)  ; FMin(a,b)
  %6619 = call float @dx.op.binary.f32(i32 36, float %6615, float %6618)  ; FMin(a,b)
  %6620 = call float @dx.op.binary.f32(i32 35, float %6615, float %6618)  ; FMax(a,b)
  br label %6621

; <label>:6621                                    ; preds = %6606, %6572
  %6622 = phi float [ %6620, %6606 ], [ -1.000000e+00, %6572 ]
  %6623 = phi float [ %6619, %6606 ], [ -1.000000e+00, %6572 ]
  %6624 = phi i1 [ true, %6606 ], [ false, %6572 ]
  %6625 = and i1 %6592, %6624
  br i1 %6625, label %6626, label %6628

; <label>:6626                                    ; preds = %6621
  %6627 = fcmp fast oeq float %6623, %6622
  br i1 %6627, label %6931, label %6629

; <label>:6628                                    ; preds = %6621
  br i1 %6592, label %6931, label %6629

; <label>:6629                                    ; preds = %6628, %6626
  %6630 = phi float [ %6558, %6628 ], [ %6622, %6626 ]
  %6631 = phi float [ 0.000000e+00, %6628 ], [ %6623, %6626 ]
  %6632 = icmp ne i32 %6580, 0
  %6633 = fmul fast float %6630, %6561
  %6634 = fadd fast float %6633, %6574
  %6635 = fmul fast float %6634, %6630
  %6636 = select i1 %6632, float 0.000000e+00, float %6635
  %6637 = fcmp fast oeq float %6561, 0.000000e+00
  %6638 = fdiv fast float %6579, %6561
  %6639 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6638)  ; FMax(a,b)
  %6640 = select i1 %6637, float %6630, float %6639
  %6641 = call float @dx.op.binary.f32(i32 36, float %6630, float %6640)  ; FMin(a,b)
  %6642 = fcmp fast ogt float %6561, 0.000000e+00
  %6643 = fcmp fast olt float %6579, 0.000000e+00
  br i1 %6642, label %6644, label %6701

; <label>:6644                                    ; preds = %6629
  %6645 = icmp eq i32 %6580, 0
  br i1 %6643, label %6646, label %6690

; <label>:6646                                    ; preds = %6644
  %6647 = select i1 %6645, float %6630, float 0.000000e+00
  %6648 = fsub fast float -0.000000e+00, %6647
  %6649 = call float @dx.op.unary.f32(i32 6, float %6648)  ; FAbs(value)
  %6650 = fmul fast float %6647, %6561
  %6651 = fadd fast float %6650, %6574
  %6652 = fmul fast float %6649, %6651
  %6653 = fsub fast float %6636, %6652
  %6654 = fsub fast float %6630, %6649
  %6655 = select i1 %6645, float %6654, float 0.000000e+00
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 0
  %6658 = extractvalue %dx.types.CBufRet.f32 %6656, 1
  %6659 = extractvalue %dx.types.CBufRet.f32 %6656, 2
  %6660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6661 = extractvalue %dx.types.CBufRet.f32 %6660, 0
  %6662 = extractvalue %dx.types.CBufRet.f32 %6660, 1
  %6663 = extractvalue %dx.types.CBufRet.f32 %6660, 2
  %6664 = extractvalue %dx.types.CBufRet.f32 %6660, 3
  %6665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6666 = extractvalue %dx.types.CBufRet.f32 %6665, 3
  %6667 = call float @dx.op.binary.f32(i32 36, float %6653, float %6666)  ; FMin(a,b)
  %6668 = fmul fast float %6664, %6655
  %6669 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6670 = fsub fast float %6661, %6657
  %6671 = fsub fast float %6662, %6658
  %6672 = fsub fast float %6663, %6659
  %6673 = fmul fast float %6669, %6670
  %6674 = fmul fast float %6669, %6671
  %6675 = fmul fast float %6669, %6672
  %6676 = fadd fast float %6673, %6657
  %6677 = fadd fast float %6674, %6658
  %6678 = fadd fast float %6675, %6659
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = extractvalue %dx.types.CBufRet.f32 %6679, 1
  %6682 = fadd fast float %6681, %6680
  %6683 = call float @dx.op.unary.f32(i32 7, float %6682)  ; Saturate(value)
  %6684 = extractvalue %dx.types.CBufRet.f32 %6679, 2
  %6685 = extractvalue %dx.types.CBufRet.f32 %6679, 3
  %6686 = fadd fast float %6685, %6684
  %6687 = call float @dx.op.unary.f32(i32 7, float %6686)  ; Saturate(value)
  %6688 = fmul fast float %6683, %6667
  %6689 = fmul fast float %6688, %6687
  br label %6931

; <label>:6690                                    ; preds = %6644
  br i1 %6645, label %6691, label %6712

; <label>:6691                                    ; preds = %6690
  %6692 = call float @dx.op.binary.f32(i32 36, float %6641, float %6631)  ; FMin(a,b)
  %6693 = fsub fast float %6641, %6692
  %6694 = fsub fast float %6693, %6630
  %6695 = call float @dx.op.unary.f32(i32 6, float %6694)  ; FAbs(value)
  %6696 = fadd fast float %6693, %6630
  %6697 = fmul fast float %6696, %6561
  %6698 = fadd fast float %6697, %6574
  %6699 = fmul fast float %6698, %6695
  %6700 = fsub fast float %6636, %6699
  br label %6712

; <label>:6701                                    ; preds = %6629
  br i1 %6643, label %6702, label %6712

; <label>:6702                                    ; preds = %6701
  %6703 = call float @dx.op.binary.f32(i32 35, float %6631, float %6641)  ; FMax(a,b)
  %6704 = icmp eq i32 %6580, 0
  %6705 = select i1 %6704, float %6641, float 0.000000e+00
  %6706 = fsub fast float -0.000000e+00, %6705
  %6707 = call float @dx.op.unary.f32(i32 6, float %6706)  ; FAbs(value)
  %6708 = fmul fast float %6705, %6561
  %6709 = fadd fast float %6708, %6574
  %6710 = fmul fast float %6707, %6709
  %6711 = fsub fast float %6636, %6710
  br label %6712

; <label>:6712                                    ; preds = %6702, %6701, %6691, %6690
  %6713 = phi float [ %6631, %6690 ], [ %6631, %6691 ], [ %6703, %6702 ], [ %6631, %6701 ]
  %6714 = phi float [ 0.000000e+00, %6690 ], [ %6695, %6691 ], [ %6707, %6702 ], [ 0.000000e+00, %6701 ]
  %6715 = phi float [ %6636, %6690 ], [ %6700, %6691 ], [ %6711, %6702 ], [ %6636, %6701 ]
  %6716 = phi float [ %6641, %6690 ], [ %6641, %6691 ], [ %6630, %6702 ], [ %6630, %6701 ]
  %6717 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %6717, align 4, !tbaa !135, !noalias !149
  %6718 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %6718, align 4, !tbaa !135, !noalias !149
  %6719 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %6719, align 4, !tbaa !135, !noalias !149
  %6720 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %6720, align 4, !tbaa !135, !noalias !149
  %6721 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %6721, align 4, !tbaa !135, !noalias !149
  %6722 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %6722, align 4, !tbaa !135, !noalias !149
  %6723 = icmp sgt i32 %6582, 0
  br i1 %6723, label %6724, label %6785

; <label>:6724                                    ; preds = %6712
  br label %6725

; <label>:6725                                    ; preds = %6774, %6724
  %6726 = phi i32 [ %6775, %6774 ], [ 0, %6724 ]
  %6727 = phi i32 [ %6776, %6774 ], [ 0, %6724 ]
  %6728 = add nuw i32 %6727, 171
  %6729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %6728)  ; CBufferLoadLegacy(handle,regIndex)
  %6730 = extractvalue %dx.types.CBufRet.f32 %6729, 0
  %6731 = extractvalue %dx.types.CBufRet.f32 %6729, 1
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = fsub fast float %6730, %6733
  %6736 = fsub fast float %6731, %6734
  %6737 = extractvalue %dx.types.CBufRet.f32 %6729, 2
  %6738 = fsub fast float -0.000000e+00, %6735
  %6739 = fsub fast float -0.000000e+00, %6736
  %6740 = call float @dx.op.dot2.f32(i32 54, float %6559, float %6560, float %6738, float %6739)  ; Dot2(ax,ay,bx,by)
  %6741 = fmul fast float %6740, 2.000000e+00
  %6742 = call float @dx.op.dot2.f32(i32 54, float %6738, float %6739, float %6738, float %6739)  ; Dot2(ax,ay,bx,by)
  %6743 = fmul fast float %6737, %6737
  %6744 = fsub fast float %6742, %6743
  %6745 = fmul fast float %6741, %6741
  %6746 = fmul fast float %6602, %6744
  %6747 = fsub fast float %6745, %6746
  %6748 = fcmp fast ogt float %6747, 0.000000e+00
  br i1 %6748, label %6749, label %6764

; <label>:6749                                    ; preds = %6725
  %6750 = fcmp fast ogt float %6741, 0.000000e+00
  %6751 = call float @dx.op.unary.f32(i32 24, float %6747)  ; Sqrt(value)
  %6752 = fsub fast float -0.000000e+00, %6751
  %6753 = select i1 %6750, float %6751, float %6752
  %6754 = fadd fast float %6753, %6741
  %6755 = fmul float %6754, -5.000000e-01
  %6756 = fdiv fast float %6755, %6595
  %6757 = call float @dx.op.binary.f32(i32 35, float %6756, float 0.000000e+00)  ; FMax(a,b)
  %6758 = call float @dx.op.binary.f32(i32 36, float %6630, float %6757)  ; FMin(a,b)
  %6759 = fdiv fast float %6744, %6755
  %6760 = call float @dx.op.binary.f32(i32 35, float %6759, float 0.000000e+00)  ; FMax(a,b)
  %6761 = call float @dx.op.binary.f32(i32 36, float %6630, float %6760)  ; FMin(a,b)
  %6762 = call float @dx.op.binary.f32(i32 36, float %6758, float %6761)  ; FMin(a,b)
  %6763 = call float @dx.op.binary.f32(i32 35, float %6758, float %6761)  ; FMax(a,b)
  br label %6764

; <label>:6764                                    ; preds = %6749, %6725
  %6765 = phi float [ %6763, %6749 ], [ -1.000000e+00, %6725 ]
  %6766 = phi float [ %6762, %6749 ], [ -1.000000e+00, %6725 ]
  %6767 = phi i1 [ true, %6749 ], [ false, %6725 ]
  br i1 %6767, label %6768, label %6774

; <label>:6768                                    ; preds = %6764
  %6769 = call float @dx.op.binary.f32(i32 35, float %6713, float %6766)  ; FMax(a,b)
  %6770 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %6727
  store float %6769, float* %6770, align 4, !tbaa !135, !noalias !149
  %6771 = call float @dx.op.binary.f32(i32 35, float %6713, float %6765)  ; FMax(a,b)
  %6772 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %6727
  store float %6771, float* %6772, align 4, !tbaa !135, !noalias !149
  %6773 = add nsw i32 %6726, 1
  br label %6774

; <label>:6774                                    ; preds = %6768, %6764
  %6775 = phi i32 [ %6773, %6768 ], [ %6726, %6764 ]
  %6776 = add nuw nsw i32 %6727, 1
  %6777 = icmp eq i32 %6776, %6582
  br i1 %6777, label %6778, label %6725

; <label>:6778                                    ; preds = %6774
  %6779 = load float, float* %6719, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %6780 = load float, float* %6718, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  %6781 = load float, float* %6717, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  %6782 = load float, float* %6722, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %6783 = load float, float* %6721, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  %6784 = load float, float* %6720, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  br label %6785

; <label>:6785                                    ; preds = %6778, %6712
  %6786 = phi float [ -1.000000e+00, %6712 ], [ %6784, %6778 ]
  %6787 = phi float [ -1.000000e+00, %6712 ], [ %6783, %6778 ]
  %6788 = phi float [ -1.000000e+00, %6712 ], [ %6782, %6778 ]
  %6789 = phi float [ -1.000000e+00, %6712 ], [ %6781, %6778 ]
  %6790 = phi float [ -1.000000e+00, %6712 ], [ %6780, %6778 ]
  %6791 = phi float [ -1.000000e+00, %6712 ], [ %6779, %6778 ]
  %6792 = phi i32 [ 0, %6712 ], [ %6775, %6778 ]
  %6793 = call float @dx.op.binary.f32(i32 36, float %6790, float %6791)  ; FMin(a,b)
  %6794 = call float @dx.op.binary.f32(i32 36, float %6789, float %6793)  ; FMin(a,b)
  %6795 = call float @dx.op.binary.f32(i32 35, float %6789, float %6790)  ; FMax(a,b)
  %6796 = call float @dx.op.binary.f32(i32 36, float %6795, float %6791)  ; FMin(a,b)
  %6797 = call float @dx.op.binary.f32(i32 36, float %6789, float %6790)  ; FMin(a,b)
  %6798 = call float @dx.op.binary.f32(i32 35, float %6797, float %6796)  ; FMax(a,b)
  %6799 = call float @dx.op.binary.f32(i32 35, float %6790, float %6791)  ; FMax(a,b)
  %6800 = call float @dx.op.binary.f32(i32 35, float %6789, float %6799)  ; FMax(a,b)
  store float %6794, float* %6717, align 4, !tbaa !135, !alias.scope !173, !noalias !174
  store float %6798, float* %6718, align 4, !tbaa !135, !alias.scope !171, !noalias !172
  store float %6800, float* %6719, align 4, !tbaa !135, !alias.scope !165, !noalias !168
  %6801 = call float @dx.op.binary.f32(i32 36, float %6787, float %6788)  ; FMin(a,b)
  %6802 = call float @dx.op.binary.f32(i32 36, float %6786, float %6801)  ; FMin(a,b)
  %6803 = call float @dx.op.binary.f32(i32 35, float %6786, float %6787)  ; FMax(a,b)
  %6804 = call float @dx.op.binary.f32(i32 36, float %6803, float %6788)  ; FMin(a,b)
  %6805 = call float @dx.op.binary.f32(i32 36, float %6786, float %6787)  ; FMin(a,b)
  %6806 = call float @dx.op.binary.f32(i32 35, float %6805, float %6804)  ; FMax(a,b)
  %6807 = call float @dx.op.binary.f32(i32 35, float %6787, float %6788)  ; FMax(a,b)
  %6808 = call float @dx.op.binary.f32(i32 35, float %6786, float %6807)  ; FMax(a,b)
  store float %6802, float* %6720, align 4, !tbaa !135, !alias.scope !183, !noalias !184
  store float %6806, float* %6721, align 4, !tbaa !135, !alias.scope !181, !noalias !182
  store float %6808, float* %6722, align 4, !tbaa !135, !alias.scope !175, !noalias !178
  %6809 = sub nsw i32 3, %6792
  %6810 = icmp sgt i32 %6809, 2
  br i1 %6810, label %6811, label %6849

; <label>:6811                                    ; preds = %6785
  %6812 = icmp eq i32 %6580, 0
  %6813 = fsub fast float %6630, %6714
  %6814 = select i1 %6812, float %6813, float %6714
  %6815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6816 = extractvalue %dx.types.CBufRet.f32 %6815, 0
  %6817 = extractvalue %dx.types.CBufRet.f32 %6815, 1
  %6818 = extractvalue %dx.types.CBufRet.f32 %6815, 2
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 0
  %6821 = extractvalue %dx.types.CBufRet.f32 %6819, 1
  %6822 = extractvalue %dx.types.CBufRet.f32 %6819, 2
  %6823 = extractvalue %dx.types.CBufRet.f32 %6819, 3
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 3
  %6826 = call float @dx.op.binary.f32(i32 36, float %6715, float %6825)  ; FMin(a,b)
  %6827 = fmul fast float %6823, %6814
  %6828 = call float @dx.op.unary.f32(i32 7, float %6827)  ; Saturate(value)
  %6829 = fsub fast float %6820, %6816
  %6830 = fsub fast float %6821, %6817
  %6831 = fsub fast float %6822, %6818
  %6832 = fmul fast float %6828, %6829
  %6833 = fmul fast float %6828, %6830
  %6834 = fmul fast float %6828, %6831
  %6835 = fadd fast float %6832, %6816
  %6836 = fadd fast float %6833, %6817
  %6837 = fadd fast float %6834, %6818
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %6841 = fadd fast float %6840, %6839
  %6842 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6843 = extractvalue %dx.types.CBufRet.f32 %6838, 2
  %6844 = extractvalue %dx.types.CBufRet.f32 %6838, 3
  %6845 = fadd fast float %6844, %6843
  %6846 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  %6847 = fmul fast float %6842, %6826
  %6848 = fmul fast float %6847, %6846
  br label %6931

; <label>:6849                                    ; preds = %6785
  %6850 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %6809
  %6851 = load float, float* %6850, align 4, !tbaa !135, !noalias !149
  %6852 = fcmp fast olt float %6851, %6716
  %6853 = icmp sgt i32 %6792, 0
  %6854 = and i1 %6853, %6852
  br i1 %6854, label %6855, label %6892

; <label>:6855                                    ; preds = %6849
  br label %6856

; <label>:6856                                    ; preds = %6885, %6855
  %6857 = phi float [ %6886, %6885 ], [ %6714, %6855 ]
  %6858 = phi float [ %6887, %6885 ], [ %6715, %6855 ]
  %6859 = phi float [ %6867, %6885 ], [ %6851, %6855 ]
  %6860 = phi i32 [ %6864, %6885 ], [ %6809, %6855 ]
  %6861 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %6860
  %6862 = load float, float* %6861, align 4, !tbaa !135, !noalias !149
  %6863 = icmp slt i32 %6860, 2
  %6864 = add nsw i32 %6860, 1
  %6865 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %6864
  %6866 = load float, float* %6865, align 4, !tbaa !135, !noalias !149
  %6867 = select i1 %6863, float %6866, float %6630
  %6868 = call float @dx.op.binary.f32(i32 36, float %6867, float %6862)  ; FMin(a,b)
  %6869 = call float @dx.op.binary.f32(i32 36, float %6716, float %6868)  ; FMin(a,b)
  %6870 = icmp eq i32 %6580, 0
  %6871 = fadd fast float %6869, %6859
  %6872 = fmul fast float %6871, %6561
  %6873 = fadd fast float %6872, %6574
  br i1 %6870, label %6879, label %6874

; <label>:6874                                    ; preds = %6856
  %6875 = fsub fast float %6869, %6859
  %6876 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6875)  ; FMax(a,b)
  %6877 = fmul fast float %6876, %6873
  %6878 = fadd fast float %6877, %6858
  br label %6885

; <label>:6879                                    ; preds = %6856
  %6880 = fsub fast float %6859, %6869
  %6881 = call float @dx.op.unary.f32(i32 6, float %6880)  ; FAbs(value)
  %6882 = fadd fast float %6881, %6857
  %6883 = fmul fast float %6881, %6873
  %6884 = fsub fast float %6858, %6883
  br label %6885

; <label>:6885                                    ; preds = %6879, %6874
  %6886 = phi float [ %6876, %6874 ], [ %6882, %6879 ]
  %6887 = phi float [ %6878, %6874 ], [ %6884, %6879 ]
  %6888 = fcmp fast olt float %6867, %6716
  %6889 = icmp slt i32 %6864, 3
  %6890 = and i1 %6889, %6888
  br i1 %6890, label %6856, label %6891

; <label>:6891                                    ; preds = %6885
  br label %6892

; <label>:6892                                    ; preds = %6891, %6849
  %6893 = phi float [ %6714, %6849 ], [ %6886, %6891 ]
  %6894 = phi float [ %6715, %6849 ], [ %6887, %6891 ]
  %6895 = fsub fast float %6630, %6893
  %6896 = select i1 %6632, float %6893, float %6895
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.CBufRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.CBufRet.f32 %6897, 2
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 0
  %6903 = extractvalue %dx.types.CBufRet.f32 %6901, 1
  %6904 = extractvalue %dx.types.CBufRet.f32 %6901, 2
  %6905 = extractvalue %dx.types.CBufRet.f32 %6901, 3
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 3
  %6908 = call float @dx.op.binary.f32(i32 36, float %6894, float %6907)  ; FMin(a,b)
  %6909 = fmul fast float %6905, %6896
  %6910 = call float @dx.op.unary.f32(i32 7, float %6909)  ; Saturate(value)
  %6911 = fsub fast float %6902, %6898
  %6912 = fsub fast float %6903, %6899
  %6913 = fsub fast float %6904, %6900
  %6914 = fmul fast float %6910, %6911
  %6915 = fmul fast float %6910, %6912
  %6916 = fmul fast float %6910, %6913
  %6917 = fadd fast float %6914, %6898
  %6918 = fadd fast float %6915, %6899
  %6919 = fadd fast float %6916, %6900
  %6920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6921 = extractvalue %dx.types.CBufRet.f32 %6920, 0
  %6922 = extractvalue %dx.types.CBufRet.f32 %6920, 1
  %6923 = fadd fast float %6922, %6921
  %6924 = call float @dx.op.unary.f32(i32 7, float %6923)  ; Saturate(value)
  %6925 = extractvalue %dx.types.CBufRet.f32 %6920, 2
  %6926 = extractvalue %dx.types.CBufRet.f32 %6920, 3
  %6927 = fadd fast float %6926, %6925
  %6928 = call float @dx.op.unary.f32(i32 7, float %6927)  ; Saturate(value)
  %6929 = fmul fast float %6924, %6908
  %6930 = fmul fast float %6929, %6928
  br label %6931

; <label>:6931                                    ; preds = %6892, %6811, %6646, %6628, %6626
  %6932 = phi float [ %6655, %6646 ], [ %6814, %6811 ], [ %6896, %6892 ], [ 0.000000e+00, %6626 ], [ 0.000000e+00, %6628 ]
  %6933 = phi float [ %6689, %6646 ], [ %6848, %6811 ], [ %6930, %6892 ], [ 0.000000e+00, %6626 ], [ 0.000000e+00, %6628 ]
  %6934 = phi float [ %6676, %6646 ], [ %6835, %6811 ], [ %6917, %6892 ], [ 0.000000e+00, %6626 ], [ 0.000000e+00, %6628 ]
  %6935 = phi float [ %6677, %6646 ], [ %6836, %6811 ], [ %6918, %6892 ], [ 0.000000e+00, %6626 ], [ 0.000000e+00, %6628 ]
  %6936 = phi float [ %6678, %6646 ], [ %6837, %6811 ], [ %6919, %6892 ], [ 0.000000e+00, %6626 ], [ 0.000000e+00, %6628 ]
  %6937 = fmul fast float %6569, %6933
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 2
  %6940 = fsub fast float %6576, %6939
  %6941 = fcmp fast olt float %6937, -2.000000e+01
  %6942 = call float @dx.op.unary.f32(i32 21, float %6937)  ; Exp(value)
  %6943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6944 = extractvalue %dx.types.CBufRet.f32 %6943, 2
  %6945 = extractvalue %dx.types.CBufRet.f32 %6943, 3
  %6946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6947 = extractvalue %dx.types.CBufRet.f32 %6946, 2
  %6948 = fmul fast float %6945, %6940
  %6949 = call float @dx.op.unary.f32(i32 7, float %6948)  ; Saturate(value)
  %6950 = fsub fast float 1.000000e+00, %6949
  %6951 = fmul fast float %6561, 5.000000e-01
  %6952 = fadd fast float %6951, 5.000000e-01
  %6953 = call float @dx.op.unary.f32(i32 7, float %6952)  ; Saturate(value)
  %6954 = fsub fast float 1.000000e+00, %6953
  %6955 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6950)  ; FMax(a,b)
  %6956 = fdiv fast float %6954, %6955
  %6957 = fsub fast float %6940, %6518
  %6958 = call float @dx.op.unary.f32(i32 6, float %6957)  ; FAbs(value)
  %6959 = fmul fast float %6958, %6944
  %6960 = call float @dx.op.unary.f32(i32 7, float %6956)  ; Saturate(value)
  %6961 = fsub fast float 1.000000e+00, %6959
  %6962 = fmul fast float %6961, %6960
  %6963 = fadd fast float %6962, %6959
  %6964 = fmul fast float %6947, %6940
  %6965 = call float @dx.op.unary.f32(i32 7, float %6964)  ; Saturate(value)
  %6966 = fsub fast float 1.000000e+00, %6963
  %6967 = fmul fast float %6966, %6965
  %6968 = fadd fast float %6967, %6963
  %6969 = call float @dx.op.unary.f32(i32 7, float %6968)  ; Saturate(value)
  %6970 = fadd fast float %6942, -1.000000e+00
  %6971 = select i1 %6941, float -1.000000e+00, float %6970
  %6972 = fmul fast float %6969, %6971
  %6973 = fadd fast float %6972, 1.000000e+00
  %6974 = fsub fast float -0.000000e+00, %6972
  %6975 = fmul fast float %6934, %6974
  %6976 = fmul fast float %6935, %6974
  %6977 = fmul fast float %6936, %6974
  br label %6978

; <label>:6978                                    ; preds = %6931, %6527
  %6979 = phi float [ %6932, %6931 ], [ 0.000000e+00, %6527 ]
  %6980 = phi float [ %6973, %6931 ], [ 1.000000e+00, %6527 ]
  %6981 = phi float [ %6975, %6931 ], [ 0.000000e+00, %6527 ]
  %6982 = phi float [ %6976, %6931 ], [ 0.000000e+00, %6527 ]
  %6983 = phi float [ %6977, %6931 ], [ 0.000000e+00, %6527 ]
  %6984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6985 = extractvalue %dx.types.CBufRet.f32 %6984, 1
  %6986 = fsub fast float 1.000000e+00, %6980
  %6987 = fmul fast float %6986, %6562
  %6988 = fmul fast float %6987, %6985
  %6989 = fsub fast float %6562, %6988
  br i1 %6555, label %6990, label %7019, !dx.controlflow.hints !185

; <label>:6990                                    ; preds = %6978
  %6991 = fmul fast float %6563, %6552
  %6992 = fadd fast float %6991, %6553
  %6993 = call float @dx.op.unary.f32(i32 7, float %6992)  ; Saturate(value)
  %6994 = fmul fast float %6534, %6989
  %6995 = fsub fast float -0.000000e+00, %6994
  %6996 = fmul fast float %6535, %6989
  %6997 = fsub fast float -0.000000e+00, %6996
  %6998 = call float @dx.op.unary.f32(i32 21, float %6995)  ; Exp(value)
  %6999 = call float @dx.op.unary.f32(i32 21, float %6997)  ; Exp(value)
  %7000 = call float @dx.op.binary.f32(i32 35, float %6542, float %6998)  ; FMax(a,b)
  %7001 = call float @dx.op.binary.f32(i32 35, float %6542, float %6999)  ; FMax(a,b)
  %7002 = fsub fast float %7001, %7000
  %7003 = fmul fast float %7002, %6993
  %7004 = fadd fast float %7003, %7000
  %7005 = call float @dx.op.unary.f32(i32 7, float %7004)  ; Saturate(value)
  %7006 = fsub fast float %6539, %6544
  %7007 = fsub fast float %6540, %6545
  %7008 = fsub fast float %6541, %6546
  %7009 = fmul fast float %6993, %7006
  %7010 = fmul fast float %6993, %7007
  %7011 = fmul fast float %6993, %7008
  %7012 = fadd fast float %7009, %6544
  %7013 = fadd fast float %7010, %6545
  %7014 = fadd fast float %7011, %6546
  %7015 = fsub fast float 1.000000e+00, %7005
  %7016 = fmul fast float %7015, %7012
  %7017 = fmul fast float %7015, %7013
  %7018 = fmul fast float %7015, %7014
  br label %7078

; <label>:7019                                    ; preds = %6978
  %7020 = fmul fast float %6989, %6551
  %7021 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  %7022 = fsub fast float 2.000000e+00, %7021
  %7023 = fmul fast float %7021, 9.921875e-01
  %7024 = fmul fast float %7023, %7022
  %7025 = fadd fast float %7024, 3.906250e-03
  %7026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %64, float %7025, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7027 = extractvalue %dx.types.ResRet.f32 %7026, 0
  %7028 = fsub fast float %7021, %7027
  %7029 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7028)  ; FMax(a,b)
  %7030 = fmul fast float %6537, %6518
  %7031 = call float @dx.op.unary.f32(i32 6, float %7030)  ; FAbs(value)
  %7032 = fcmp fast ogt float %7031, 0x3EB0C6F7A0000000
  br i1 %7032, label %7033, label %7039, !dx.controlflow.hints !186

; <label>:7033                                    ; preds = %7019
  %7034 = fmul fast float %7030, 0xBFF7154760000000
  %7035 = call float @dx.op.unary.f32(i32 21, float %7034)  ; Exp(value)
  %7036 = fsub fast float 1.000000e+00, %7035
  %7037 = fdiv fast float %7036, %7030
  %7038 = fmul fast float %7037, %6547
  br label %7039

; <label>:7039                                    ; preds = %7033, %7019
  %7040 = phi float [ %7038, %7033 ], [ %6547, %7019 ]
  %7041 = fadd fast float %7040, %6549
  %7042 = fmul fast float %7041, %7029
  %7043 = fmul fast float %6534, %7042
  %7044 = fsub fast float -0.000000e+00, %7043
  %7045 = fmul fast float %6535, %7042
  %7046 = fsub fast float -0.000000e+00, %7045
  %7047 = fmul fast float %6536, %7042
  %7048 = fsub fast float -0.000000e+00, %7047
  %7049 = call float @dx.op.unary.f32(i32 21, float %7044)  ; Exp(value)
  %7050 = call float @dx.op.unary.f32(i32 21, float %7046)  ; Exp(value)
  %7051 = call float @dx.op.unary.f32(i32 21, float %7048)  ; Exp(value)
  %7052 = fmul fast float %6563, %6563
  %7053 = fadd fast float %7052, 1.000000e+00
  %7054 = fmul fast float %7053, 0x3FAE8EC8A0000000
  %7055 = fmul fast float %7054, %6544
  %7056 = fmul fast float %7054, %6545
  %7057 = fmul fast float %7054, %6546
  %7058 = fmul fast float %6563, %6542
  %7059 = fsub fast float 1.000000e+00, %7058
  %7060 = fmul fast float %6542, %6542
  %7061 = fsub fast float 1.000000e+00, %7060
  %7062 = fmul fast float %7061, 0x3FB45F3060000000
  %7063 = fmul fast float %7059, %7059
  %7064 = fdiv fast float 1.000000e+00, %7063
  %7065 = fmul fast float %7062, %7064
  %7066 = fmul fast float %7065, %6539
  %7067 = fmul fast float %7065, %6540
  %7068 = fmul fast float %7065, %6541
  %7069 = fadd fast float %7066, %7055
  %7070 = fadd fast float %7067, %7056
  %7071 = fadd fast float %7068, %7057
  %7072 = fsub fast float 1.000000e+00, %7049
  %7073 = fsub fast float 1.000000e+00, %7050
  %7074 = fsub fast float 1.000000e+00, %7051
  %7075 = fmul fast float %7069, %7072
  %7076 = fmul fast float %7070, %7073
  %7077 = fmul fast float %7071, %7074
  br label %7078

; <label>:7078                                    ; preds = %7039, %6990
  %7079 = phi float [ %7016, %6990 ], [ %7075, %7039 ]
  %7080 = phi float [ %7017, %6990 ], [ %7076, %7039 ]
  %7081 = phi float [ %7018, %6990 ], [ %7077, %7039 ]
  %7082 = phi float [ %7005, %6990 ], [ %7049, %7039 ]
  %7083 = phi float [ %7005, %6990 ], [ %7050, %7039 ]
  %7084 = phi float [ %7005, %6990 ], [ %7051, %7039 ]
  br i1 %6571, label %7085, label %7283, !dx.controlflow.hints !187

; <label>:7085                                    ; preds = %7078
  %7086 = extractvalue %dx.types.CBufRet.f32 %6984, 0
  %7087 = fmul fast float %7086, %6986
  %7088 = fsub fast float %6981, %7079
  %7089 = fsub fast float %6982, %7080
  %7090 = fsub fast float %6983, %7081
  %7091 = fmul fast float %7087, %7088
  %7092 = fmul fast float %7087, %7089
  %7093 = fmul fast float %7087, %7090
  %7094 = fadd fast float %7091, %7079
  %7095 = fadd fast float %7092, %7080
  %7096 = fadd fast float %7093, %7081
  %7097 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7082)  ; FMax(a,b)
  %7098 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7083)  ; FMax(a,b)
  %7099 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7084)  ; FMax(a,b)
  %7100 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6980)  ; FMax(a,b)
  %7101 = call float @dx.op.binary.f32(i32 35, float %6979, float %6989)  ; FMax(a,b)
  %7102 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7101)  ; FMax(a,b)
  %7103 = fdiv fast float %6979, %7102
  %7104 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7105 = fdiv fast float %6989, %7102
  %7106 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  %7107 = fcmp fast une float %7100, 1.000000e+00
  br i1 %7107, label %7108, label %7121, !dx.controlflow.hints !188

; <label>:7108                                    ; preds = %7085
  %7109 = call float @dx.op.unary.f32(i32 23, float %7100)  ; Log(value)
  %7110 = fmul fast float %7109, 0x3FE62E4300000000
  %7111 = fmul fast float %6981, %7110
  %7112 = fsub fast float -0.000000e+00, %7111
  %7113 = fmul fast float %6982, %7110
  %7114 = fsub fast float -0.000000e+00, %7113
  %7115 = fmul fast float %6983, %7110
  %7116 = fsub fast float -0.000000e+00, %7115
  %7117 = fsub fast float 1.000000e+00, %7100
  %7118 = fdiv fast float %7112, %7117
  %7119 = fdiv fast float %7114, %7117
  %7120 = fdiv fast float %7116, %7117
  br label %7121

; <label>:7121                                    ; preds = %7108, %7085
  %7122 = phi float [ %7118, %7108 ], [ %6981, %7085 ]
  %7123 = phi float [ %7119, %7108 ], [ %6982, %7085 ]
  %7124 = phi float [ %7120, %7108 ], [ %6983, %7085 ]
  %7125 = phi float [ %7110, %7108 ], [ 0.000000e+00, %7085 ]
  %7126 = fcmp fast une float %7097, 1.000000e+00
  br i1 %7126, label %7127, label %7134, !dx.controlflow.hints !189

; <label>:7127                                    ; preds = %7121
  %7128 = call float @dx.op.unary.f32(i32 23, float %7097)  ; Log(value)
  %7129 = fmul fast float %7128, 0x3FE62E4300000000
  %7130 = fmul fast float %7094, %7129
  %7131 = fsub fast float -0.000000e+00, %7130
  %7132 = fsub fast float 1.000000e+00, %7097
  %7133 = fdiv fast float %7131, %7132
  br label %7134

; <label>:7134                                    ; preds = %7127, %7121
  %7135 = phi float [ %7133, %7127 ], [ %7094, %7121 ]
  %7136 = phi float [ %7129, %7127 ], [ 0.000000e+00, %7121 ]
  %7137 = fcmp fast une float %7098, 1.000000e+00
  br i1 %7137, label %7138, label %7145, !dx.controlflow.hints !189

; <label>:7138                                    ; preds = %7134
  %7139 = call float @dx.op.unary.f32(i32 23, float %7098)  ; Log(value)
  %7140 = fmul fast float %7139, 0x3FE62E4300000000
  %7141 = fmul fast float %7095, %7140
  %7142 = fsub fast float -0.000000e+00, %7141
  %7143 = fsub fast float 1.000000e+00, %7098
  %7144 = fdiv fast float %7142, %7143
  br label %7145

; <label>:7145                                    ; preds = %7138, %7134
  %7146 = phi float [ %7144, %7138 ], [ %7095, %7134 ]
  %7147 = phi float [ %7140, %7138 ], [ 0.000000e+00, %7134 ]
  %7148 = fcmp fast une float %7099, 1.000000e+00
  br i1 %7148, label %7149, label %7156, !dx.controlflow.hints !189

; <label>:7149                                    ; preds = %7145
  %7150 = call float @dx.op.unary.f32(i32 23, float %7099)  ; Log(value)
  %7151 = fmul fast float %7150, 0x3FE62E4300000000
  %7152 = fmul fast float %7096, %7151
  %7153 = fsub fast float -0.000000e+00, %7152
  %7154 = fsub fast float 1.000000e+00, %7099
  %7155 = fdiv fast float %7153, %7154
  br label %7156

; <label>:7156                                    ; preds = %7149, %7145
  %7157 = phi float [ %7155, %7149 ], [ %7096, %7145 ]
  %7158 = phi float [ %7151, %7149 ], [ 0.000000e+00, %7145 ]
  %7159 = fmul fast float %7122, %7106
  %7160 = fmul fast float %7123, %7106
  %7161 = fmul fast float %7124, %7106
  %7162 = fmul fast float %7125, %7106
  %7163 = fmul fast float %7135, %7104
  %7164 = fmul fast float %7146, %7104
  %7165 = fmul fast float %7157, %7104
  %7166 = fmul fast float %7136, %7104
  %7167 = fmul fast float %7147, %7104
  %7168 = fmul fast float %7158, %7104
  %7169 = fadd fast float %7163, %7159
  %7170 = fadd fast float %7164, %7160
  %7171 = fadd fast float %7165, %7161
  %7172 = fadd fast float %7166, %7162
  %7173 = fadd fast float %7167, %7162
  %7174 = fadd fast float %7168, %7162
  %7175 = fcmp fast une float %7172, 0.000000e+00
  br i1 %7175, label %7176, label %7183, !dx.controlflow.hints !190

; <label>:7176                                    ; preds = %7156
  %7177 = fmul fast float %7172, 0x3FF7154760000000
  %7178 = call float @dx.op.unary.f32(i32 21, float %7177)  ; Exp(value)
  %7179 = fsub fast float 1.000000e+00, %7178
  %7180 = fmul fast float %7169, %7179
  %7181 = fsub fast float -0.000000e+00, %7180
  %7182 = fdiv fast float %7181, %7172
  br label %7183

; <label>:7183                                    ; preds = %7176, %7156
  %7184 = phi float [ %7178, %7176 ], [ 1.000000e+00, %7156 ]
  %7185 = phi float [ %7182, %7176 ], [ %7169, %7156 ]
  %7186 = fcmp fast une float %7173, 0.000000e+00
  br i1 %7186, label %7187, label %7194, !dx.controlflow.hints !190

; <label>:7187                                    ; preds = %7183
  %7188 = fmul fast float %7173, 0x3FF7154760000000
  %7189 = call float @dx.op.unary.f32(i32 21, float %7188)  ; Exp(value)
  %7190 = fsub fast float 1.000000e+00, %7189
  %7191 = fmul fast float %7170, %7190
  %7192 = fsub fast float -0.000000e+00, %7191
  %7193 = fdiv fast float %7192, %7173
  br label %7194

; <label>:7194                                    ; preds = %7187, %7183
  %7195 = phi float [ %7189, %7187 ], [ 1.000000e+00, %7183 ]
  %7196 = phi float [ %7193, %7187 ], [ %7170, %7183 ]
  %7197 = fcmp fast une float %7174, 0.000000e+00
  br i1 %7197, label %7198, label %7205, !dx.controlflow.hints !190

; <label>:7198                                    ; preds = %7194
  %7199 = fmul fast float %7174, 0x3FF7154760000000
  %7200 = call float @dx.op.unary.f32(i32 21, float %7199)  ; Exp(value)
  %7201 = fsub fast float 1.000000e+00, %7200
  %7202 = fmul fast float %7171, %7201
  %7203 = fsub fast float -0.000000e+00, %7202
  %7204 = fdiv fast float %7203, %7174
  br label %7205

; <label>:7205                                    ; preds = %7198, %7194
  %7206 = phi float [ %7200, %7198 ], [ 1.000000e+00, %7194 ]
  %7207 = phi float [ %7204, %7198 ], [ %7171, %7194 ]
  %7208 = fcmp fast ogt float %7104, %7106
  br i1 %7208, label %7209, label %7229

; <label>:7209                                    ; preds = %7205
  %7210 = fsub fast float 1.000000e+00, %7106
  %7211 = fmul fast float %7122, %7210
  %7212 = fmul fast float %7123, %7210
  %7213 = fmul fast float %7124, %7210
  %7214 = fmul fast float %7125, %7210
  %7215 = fcmp fast une float %7214, 0.000000e+00
  br i1 %7215, label %7216, label %7267, !dx.controlflow.hints !191

; <label>:7216                                    ; preds = %7209
  %7217 = fmul fast float %7214, 0x3FF7154760000000
  %7218 = call float @dx.op.unary.f32(i32 21, float %7217)  ; Exp(value)
  %7219 = fsub fast float 1.000000e+00, %7218
  %7220 = fmul fast float %7211, %7219
  %7221 = fsub fast float -0.000000e+00, %7220
  %7222 = fmul fast float %7212, %7219
  %7223 = fsub fast float -0.000000e+00, %7222
  %7224 = fmul fast float %7213, %7219
  %7225 = fsub fast float -0.000000e+00, %7224
  %7226 = fdiv fast float %7221, %7214
  %7227 = fdiv fast float %7223, %7214
  %7228 = fdiv fast float %7225, %7214
  br label %7267

; <label>:7229                                    ; preds = %7205
  %7230 = fsub fast float 1.000000e+00, %7104
  %7231 = fmul fast float %7135, %7230
  %7232 = fmul fast float %7146, %7230
  %7233 = fmul fast float %7157, %7230
  %7234 = fmul fast float %7136, %7230
  %7235 = fmul fast float %7147, %7230
  %7236 = fmul fast float %7158, %7230
  %7237 = fcmp fast une float %7234, 0.000000e+00
  br i1 %7237, label %7238, label %7245, !dx.controlflow.hints !190

; <label>:7238                                    ; preds = %7229
  %7239 = fmul fast float %7234, 0x3FF7154760000000
  %7240 = call float @dx.op.unary.f32(i32 21, float %7239)  ; Exp(value)
  %7241 = fsub fast float 1.000000e+00, %7240
  %7242 = fmul fast float %7231, %7241
  %7243 = fsub fast float -0.000000e+00, %7242
  %7244 = fdiv fast float %7243, %7234
  br label %7245

; <label>:7245                                    ; preds = %7238, %7229
  %7246 = phi float [ %7244, %7238 ], [ %7231, %7229 ]
  %7247 = phi float [ %7240, %7238 ], [ 1.000000e+00, %7229 ]
  %7248 = fcmp fast une float %7235, 0.000000e+00
  br i1 %7248, label %7249, label %7256, !dx.controlflow.hints !190

; <label>:7249                                    ; preds = %7245
  %7250 = fmul fast float %7235, 0x3FF7154760000000
  %7251 = call float @dx.op.unary.f32(i32 21, float %7250)  ; Exp(value)
  %7252 = fsub fast float 1.000000e+00, %7251
  %7253 = fmul fast float %7232, %7252
  %7254 = fsub fast float -0.000000e+00, %7253
  %7255 = fdiv fast float %7254, %7235
  br label %7256

; <label>:7256                                    ; preds = %7249, %7245
  %7257 = phi float [ %7255, %7249 ], [ %7232, %7245 ]
  %7258 = phi float [ %7251, %7249 ], [ 1.000000e+00, %7245 ]
  %7259 = fcmp fast une float %7236, 0.000000e+00
  br i1 %7259, label %7260, label %7267, !dx.controlflow.hints !190

; <label>:7260                                    ; preds = %7256
  %7261 = fmul fast float %7236, 0x3FF7154760000000
  %7262 = call float @dx.op.unary.f32(i32 21, float %7261)  ; Exp(value)
  %7263 = fsub fast float 1.000000e+00, %7262
  %7264 = fmul fast float %7233, %7263
  %7265 = fsub fast float -0.000000e+00, %7264
  %7266 = fdiv fast float %7265, %7236
  br label %7267

; <label>:7267                                    ; preds = %7260, %7256, %7216, %7209
  %7268 = phi float [ %7266, %7260 ], [ %7228, %7216 ], [ %7213, %7209 ], [ %7233, %7256 ]
  %7269 = phi float [ %7257, %7260 ], [ %7227, %7216 ], [ %7212, %7209 ], [ %7257, %7256 ]
  %7270 = phi float [ %7246, %7260 ], [ %7226, %7216 ], [ %7211, %7209 ], [ %7246, %7256 ]
  %7271 = phi float [ %7262, %7260 ], [ %7218, %7216 ], [ 1.000000e+00, %7209 ], [ 1.000000e+00, %7256 ]
  %7272 = phi float [ %7258, %7260 ], [ %7218, %7216 ], [ 1.000000e+00, %7209 ], [ %7258, %7256 ]
  %7273 = phi float [ %7247, %7260 ], [ %7218, %7216 ], [ 1.000000e+00, %7209 ], [ %7247, %7256 ]
  %7274 = fmul fast float %7273, %7185
  %7275 = fmul fast float %7272, %7196
  %7276 = fmul fast float %7271, %7207
  %7277 = fadd fast float %7274, %7270
  %7278 = fadd fast float %7275, %7269
  %7279 = fadd fast float %7276, %7268
  %7280 = fmul fast float %7273, %7184
  %7281 = fmul fast float %7272, %7195
  %7282 = fmul fast float %7271, %7206
  br label %7283

; <label>:7283                                    ; preds = %7267, %7078
  %7284 = phi float [ %7282, %7267 ], [ %7084, %7078 ]
  %7285 = phi float [ %7281, %7267 ], [ %7083, %7078 ]
  %7286 = phi float [ %7280, %7267 ], [ %7082, %7078 ]
  %7287 = phi float [ %7279, %7267 ], [ %7081, %7078 ]
  %7288 = phi float [ %7278, %7267 ], [ %7080, %7078 ]
  %7289 = phi float [ %7277, %7267 ], [ %7079, %7078 ]
  %7290 = fmul fast float %7289, %6233
  %7291 = fmul fast float %7288, %6233
  %7292 = fmul fast float %7287, %6233
  %7293 = fmul fast float %7286, %6526
  %7294 = call float @dx.op.dot3.f32(i32 55, float %7286, float %7285, float %7284, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7295 = call float @dx.op.dot3.f32(i32 55, float %7290, float %7291, float %7292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7296 = select i1 %248, float %7294, float %7286
  %7297 = select i1 %248, float %7294, float %7285
  %7298 = select i1 %248, float 1.000000e+00, float %7284
  %7299 = select i1 %248, float %7295, float %7290
  %7300 = select i1 %248, float 0.000000e+00, float %7291
  %7301 = select i1 %248, float 0.000000e+00, float %7292
  %7302 = fmul fast float %7296, %6520
  %7303 = fmul fast float %7297, %6521
  %7304 = fmul fast float %7298, %6522
  %7305 = fadd fast float %7302, %7299
  %7306 = fadd fast float %7303, %7300
  %7307 = fadd fast float %7301, %7304
  %7308 = fmul fast float %7296, %6523
  %7309 = fmul fast float %7297, %6524
  %7310 = fmul fast float %7298, %6525
  %7311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7312 = extractvalue %dx.types.CBufRet.i32 %7311, 0
  %7313 = icmp eq i32 %7312, 0
  br i1 %7313, label %7681, label %7314, !dx.controlflow.hints !192

; <label>:7314                                    ; preds = %7283
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7317 = extractvalue %dx.types.CBufRet.f32 %7315, 3
  %7318 = fmul fast float %7316, %102
  %7319 = fmul fast float %7317, %103
  %7320 = fmul fast float %7318, 2.000000e+00
  %7321 = fmul fast float %7319, 2.000000e+00
  %7322 = fsub fast float 1.000000e+00, %7320
  %7323 = fsub fast float 1.000000e+00, %7321
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 0
  %7326 = extractvalue %dx.types.CBufRet.f32 %7324, 1
  %7327 = extractvalue %dx.types.CBufRet.f32 %7324, 2
  %7328 = fmul fast float %7322, %7325
  %7329 = fmul fast float %7322, %7326
  %7330 = fmul fast float %7322, %7327
  %7331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7332 = extractvalue %dx.types.CBufRet.f32 %7331, 0
  %7333 = extractvalue %dx.types.CBufRet.f32 %7331, 1
  %7334 = extractvalue %dx.types.CBufRet.f32 %7331, 2
  %7335 = fmul fast float %7323, %7332
  %7336 = fmul fast float %7323, %7333
  %7337 = fmul fast float %7323, %7334
  %7338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7339 = extractvalue %dx.types.CBufRet.f32 %7338, 0
  %7340 = extractvalue %dx.types.CBufRet.f32 %7338, 1
  %7341 = extractvalue %dx.types.CBufRet.f32 %7338, 2
  %7342 = fadd fast float %7335, %7339
  %7343 = fadd fast float %7342, %7328
  %7344 = fadd fast float %7336, %7340
  %7345 = fadd fast float %7344, %7329
  %7346 = fadd fast float %7337, %7341
  %7347 = fadd fast float %7346, %7330
  %7348 = fmul fast float %7343, %6519
  %7349 = fmul fast float %7345, %6519
  %7350 = fmul fast float %7347, %6519
  %7351 = fmul fast float %7348, %7348
  %7352 = fmul fast float %7349, %7349
  %7353 = fadd fast float %7351, %7352
  %7354 = fmul fast float %7350, %7350
  %7355 = fadd fast float %7353, %7354
  %7356 = call float @dx.op.unary.f32(i32 24, float %7355)  ; Sqrt(value)
  %7357 = extractvalue %dx.types.CBufRet.f32 %6244, 0
  %7358 = fsub fast float %7356, %7357
  %7359 = extractvalue %dx.types.CBufRet.f32 %6244, 2
  %7360 = fmul fast float %7358, %7359
  %7361 = call float @dx.op.unary.f32(i32 7, float %7360)  ; Saturate(value)
  %7362 = fadd fast float %7361, -5.000000e-01
  %7363 = fmul fast float %7362, 2.000000e+00
  %7364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7365 = extractvalue %dx.types.CBufRet.f32 %7364, 2
  %7366 = call float @dx.op.binary.f32(i32 36, float %7365, float %7363)  ; FMin(a,b)
  %7367 = fsub fast float -0.000000e+00, %7365
  %7368 = fcmp fast ogt float %7366, %7367
  br i1 %7368, label %7369, label %7681, !dx.controlflow.hints !193

; <label>:7369                                    ; preds = %7314
  %7370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7371 = extractvalue %dx.types.CBufRet.f32 %7370, 3
  %7372 = fcmp fast ogt float %7371, 0.000000e+00
  br i1 %7372, label %7373, label %7448, !dx.controlflow.hints !194

; <label>:7373                                    ; preds = %7369
  %7374 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7375 = extractvalue %dx.types.Dimensions %7374, 0
  %7376 = sitofp i32 %7375 to float
  %7377 = extractvalue %dx.types.Dimensions %7374, 1
  %7378 = sitofp i32 %7377 to float
  %7379 = fmul fast float %7318, %7376
  %7380 = fmul fast float %7319, %7378
  %7381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7382 = extractvalue %dx.types.CBufRet.f32 %7381, 1
  %7383 = fsub fast float -0.000000e+00, %7382
  %7384 = fptoui float %7383 to i32
  %7385 = fptoui float %7379 to i32
  %7386 = fptoui float %7380 to i32
  %7387 = and i32 %7384, 31
  %7388 = lshr i32 %7385, %7387
  %7389 = lshr i32 %7386, %7387
  %7390 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7384, i32 %7388, i32 %7389, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 0
  %7392 = fcmp fast olt float %7391, -1.000000e+00
  %7393 = fcmp fast ogt float %7391, -1.000000e+00
  %7394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.f32 %7394, 1
  %7396 = select i1 %7393, float %7395, float 1.000000e+00
  %7397 = fadd fast float %7391, 1.000000e+00
  %7398 = fmul fast float %7396, %7397
  %7399 = call float @dx.op.unary.f32(i32 6, float %7398)  ; FAbs(value)
  %7400 = extractvalue %dx.types.CBufRet.f32 %7394, 3
  %7401 = fcmp fast oge float %7399, %7400
  %7402 = select i1 %7401, float 0x4197782600000000, float %7399
  %7403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7404 = extractvalue %dx.types.CBufRet.f32 %7403, 0
  %7405 = extractvalue %dx.types.CBufRet.f32 %7403, 1
  %7406 = extractvalue %dx.types.CBufRet.f32 %7403, 2
  %7407 = select i1 %7392, float %7404, float %7325
  %7408 = select i1 %7392, float %7405, float %7326
  %7409 = select i1 %7392, float %7406, float %7327
  %7410 = fmul fast float %7407, %7322
  %7411 = fmul fast float %7408, %7322
  %7412 = fmul fast float %7409, %7322
  %7413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7414 = extractvalue %dx.types.CBufRet.f32 %7413, 0
  %7415 = extractvalue %dx.types.CBufRet.f32 %7413, 1
  %7416 = extractvalue %dx.types.CBufRet.f32 %7413, 2
  %7417 = select i1 %7392, float %7414, float %7332
  %7418 = select i1 %7392, float %7415, float %7333
  %7419 = select i1 %7392, float %7416, float %7334
  %7420 = fmul fast float %7417, %7323
  %7421 = fmul fast float %7418, %7323
  %7422 = fmul fast float %7419, %7323
  %7423 = fadd fast float %7420, %7410
  %7424 = fadd fast float %7421, %7411
  %7425 = fadd fast float %7422, %7412
  %7426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7427 = extractvalue %dx.types.CBufRet.f32 %7426, 0
  %7428 = extractvalue %dx.types.CBufRet.f32 %7426, 1
  %7429 = extractvalue %dx.types.CBufRet.f32 %7426, 2
  %7430 = select i1 %7392, float %7427, float %7339
  %7431 = select i1 %7392, float %7428, float %7340
  %7432 = select i1 %7392, float %7429, float %7341
  %7433 = fadd fast float %7423, %7430
  %7434 = fadd fast float %7424, %7431
  %7435 = fadd fast float %7425, %7432
  %7436 = fmul fast float %7433, %7402
  %7437 = fmul fast float %7434, %7402
  %7438 = fmul fast float %7435, %7402
  %7439 = fmul fast float %7436, %7436
  %7440 = fmul fast float %7437, %7437
  %7441 = fadd fast float %7439, %7440
  %7442 = fmul fast float %7438, %7438
  %7443 = fadd fast float %7441, %7442
  %7444 = call float @dx.op.unary.f32(i32 24, float %7443)  ; Sqrt(value)
  %7445 = fsub fast float %7444, %7357
  %7446 = fmul fast float %7445, %7359
  %7447 = call float @dx.op.unary.f32(i32 7, float %7446)  ; Saturate(value)
  br label %7448

; <label>:7448                                    ; preds = %7373, %7369
  %7449 = phi float [ %7447, %7373 ], [ 1.000000e+00, %7369 ]
  %7450 = fmul fast float %7366, 5.000000e-01
  %7451 = fadd fast float %7450, 5.000000e-01
  %7452 = call float @dx.op.unary.f32(i32 22, float %7451)  ; Frc(value)
  %7453 = call float @dx.op.unary.f32(i32 27, float %7452)  ; Round_ni(value)
  %7454 = call float @dx.op.unary.f32(i32 22, float %7452)  ; Frc(value)
  %7455 = fmul fast float %7454, 2.000000e+00
  %7456 = fadd fast float %7455, -1.000000e+00
  %7457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %7318, float %7319, float %7453, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7458 = extractvalue %dx.types.ResRet.f32 %7457, 0
  %7459 = extractvalue %dx.types.ResRet.f32 %7457, 1
  %7460 = extractvalue %dx.types.ResRet.f32 %7457, 2
  %7461 = extractvalue %dx.types.ResRet.f32 %7457, 3
  %7462 = fadd fast float %7458, -5.000000e-01
  %7463 = fadd fast float %7460, -5.000000e-01
  %7464 = fmul fast float %7462, 0xBFD5555560000000
  %7465 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7463, float %7464)  ; FMad(a,b,c)
  %7466 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7459, float 0.000000e+00)  ; FMad(a,b,c)
  %7467 = fadd fast float %7466, %7461
  %7468 = fmul fast float %7462, -7.500000e-01
  %7469 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7463, float %7468)  ; FMad(a,b,c)
  %7470 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7459, float 0.000000e+00)  ; FMad(a,b,c)
  %7471 = fadd fast float %7470, %7461
  %7472 = call float @dx.op.binary.f32(i32 35, float %7465, float -1.000000e+00)  ; FMax(a,b)
  %7473 = call float @dx.op.binary.f32(i32 35, float %7467, float -1.000000e+00)  ; FMax(a,b)
  %7474 = call float @dx.op.binary.f32(i32 35, float %7469, float -1.000000e+00)  ; FMax(a,b)
  %7475 = call float @dx.op.binary.f32(i32 35, float %7471, float -1.000000e+00)  ; FMax(a,b)
  %7476 = call float @dx.op.binary.f32(i32 36, float %7472, float 1.000000e+00)  ; FMin(a,b)
  %7477 = call float @dx.op.binary.f32(i32 36, float %7473, float 1.000000e+00)  ; FMin(a,b)
  %7478 = call float @dx.op.binary.f32(i32 36, float %7474, float 1.000000e+00)  ; FMin(a,b)
  %7479 = call float @dx.op.binary.f32(i32 36, float %7475, float 1.000000e+00)  ; FMin(a,b)
  %7480 = fcmp fast olt float %7476, 0x3FEFFF8020000000
  br i1 %7480, label %7481, label %7596, !dx.controlflow.hints !195

; <label>:7481                                    ; preds = %7448
  %7482 = extractvalue %dx.types.CBufRet.f32 %7364, 3
  %7483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7484 = extractvalue %dx.types.CBufRet.f32 %7483, 0
  %7485 = extractvalue %dx.types.CBufRet.f32 %7483, 1
  %7486 = extractvalue %dx.types.CBufRet.f32 %7483, 2
  %7487 = extractvalue %dx.types.CBufRet.f32 %7483, 3
  %7488 = fsub fast float %7484, %7476
  %7489 = fsub fast float %7485, %7477
  %7490 = fsub fast float %7486, %7478
  %7491 = fsub fast float %7487, %7479
  %7492 = fmul fast float %7488, %7482
  %7493 = fmul fast float %7489, %7482
  %7494 = fmul fast float %7490, %7482
  %7495 = fmul fast float %7491, %7482
  %7496 = fadd fast float %7492, %7476
  %7497 = fadd fast float %7493, %7477
  %7498 = fsub fast float -0.000000e+00, %7497
  %7499 = fadd fast float %7494, %7478
  %7500 = fadd fast float %7495, %7479
  %7501 = fmul fast float %7496, %7496
  %7502 = fsub fast float %7497, %7501
  %7503 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7502)  ; FMax(a,b)
  %7504 = fdiv fast float 1.000000e+00, %7503
  %7505 = fmul fast float %7497, %7496
  %7506 = fsub fast float %7499, %7505
  %7507 = fsub fast float %7456, %7496
  %7508 = fmul fast float %7456, %7456
  %7509 = fsub fast float %7508, %7497
  %7510 = fmul fast float %7507, %7504
  %7511 = fmul fast float %7510, %7506
  %7512 = fsub fast float %7509, %7511
  %7513 = fmul fast float %7497, %7497
  %7514 = fsub fast float %7500, %7513
  %7515 = fmul fast float %7506, %7506
  %7516 = fmul fast float %7515, %7504
  %7517 = fsub fast float %7514, %7516
  %7518 = fdiv fast float %7512, %7517
  %7519 = fmul fast float %7506, %7518
  %7520 = fsub fast float %7507, %7519
  %7521 = fmul fast float %7520, %7504
  %7522 = fmul fast float %7521, %7496
  %7523 = fsub fast float 1.000000e+00, %7522
  %7524 = fmul fast float %7497, %7518
  %7525 = fsub fast float %7523, %7524
  %7526 = fmul fast float %7521, %7521
  %7527 = fmul fast float %7518, 4.000000e+00
  %7528 = fmul fast float %7527, %7525
  %7529 = fsub fast float %7526, %7528
  %7530 = call float @dx.op.unary.f32(i32 24, float %7529)  ; Sqrt(value)
  %7531 = fcmp fast oge float %7521, 0.000000e+00
  %7532 = fsub fast float -0.000000e+00, %7530
  %7533 = select i1 %7531, float %7532, float %7530
  %7534 = fsub fast float %7533, %7521
  %7535 = fdiv fast float %7534, %7518
  %7536 = fdiv fast float %7525, %7534
  %7537 = fmul fast float %7535, 5.000000e-01
  %7538 = fmul fast float %7536, 2.000000e+00
  %7539 = select i1 %7531, float %7537, float %7538
  %7540 = select i1 %7531, float %7538, float %7537
  %7541 = call float @dx.op.binary.f32(i32 35, float %7539, float %7540)  ; FMax(a,b)
  %7542 = call float @dx.op.binary.f32(i32 36, float %7539, float %7540)  ; FMin(a,b)
  %7543 = fcmp fast ogt float %7456, %7542
  br i1 %7543, label %7544, label %7554

; <label>:7544                                    ; preds = %7481
  %7545 = fsub fast float %7456, %7542
  %7546 = fsub fast float %7541, %7542
  %7547 = fmul fast float %7545, %7546
  %7548 = fmul fast float %7541, %7456
  %7549 = fadd fast float %7541, %7456
  %7550 = fmul fast float %7549, %7496
  %7551 = fadd fast float %7548, %7497
  %7552 = fsub fast float %7551, %7550
  %7553 = fdiv fast float %7552, %7547
  br label %7554

; <label>:7554                                    ; preds = %7544, %7481
  %7555 = phi float [ %7553, %7544 ], [ 0.000000e+00, %7481 ]
  %7556 = fcmp fast ogt float %7456, %7541
  %7557 = fsub fast float %7456, %7541
  br i1 %7556, label %7558, label %7568

; <label>:7558                                    ; preds = %7554
  %7559 = fsub fast float %7541, %7542
  %7560 = fmul fast float %7559, %7557
  %7561 = fmul fast float %7542, %7456
  %7562 = fadd fast float %7542, %7456
  %7563 = fmul fast float %7562, %7496
  %7564 = fsub fast float %7498, %7561
  %7565 = fadd fast float %7564, %7563
  %7566 = fdiv fast float %7565, %7560
  %7567 = fadd fast float %7566, %7555
  br label %7568

; <label>:7568                                    ; preds = %7558, %7554
  %7569 = phi float [ %7567, %7558 ], [ %7555, %7554 ]
  %7570 = fsub fast float %7456, %7542
  %7571 = fmul fast float %7570, %7557
  %7572 = fmul fast float %7542, %7541
  %7573 = fadd fast float %7542, %7541
  %7574 = fmul fast float %7573, %7496
  %7575 = fadd fast float %7572, %7497
  %7576 = fsub fast float %7575, %7574
  %7577 = fdiv fast float %7576, %7571
  %7578 = call float @dx.op.unary.f32(i32 7, float %7569)  ; Saturate(value)
  %7579 = fcmp fast oeq float %6245, 0.000000e+00
  %7580 = extractvalue %dx.types.CBufRet.f32 %7364, 0
  %7581 = fcmp fast oeq float %7580, 0.000000e+00
  %7582 = or i1 %7579, %7581
  %7583 = fmul fast float %7580, 2.000000e+00
  %7584 = fadd fast float %7365, %7366
  %7585 = fdiv fast float %7584, %7583
  %7586 = call float @dx.op.unary.f32(i32 7, float %7585)  ; Saturate(value)
  %7587 = fmul fast float %7586, 2.000000e+00
  %7588 = fsub fast float 3.000000e+00, %7587
  %7589 = fmul fast float %7586, %7586
  %7590 = fmul fast float %7589, %7588
  %7591 = select i1 %7582, float 1.000000e+00, float %7590
  %7592 = fmul fast float %7577, %6245
  %7593 = fadd fast float %7578, %7592
  %7594 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7595 = fmul fast float %7591, %7594
  br label %7596

; <label>:7596                                    ; preds = %7568, %7448
  %7597 = phi float [ %7595, %7568 ], [ 0.000000e+00, %7448 ]
  %7598 = fsub fast float 1.000000e+00, %7597
  %7599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %64, float %7318, float %7319, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7600 = extractvalue %dx.types.ResRet.f32 %7599, 0
  %7601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7602 = extractvalue %dx.types.CBufRet.i32 %7601, 2
  %7603 = icmp eq i32 %7602, 0
  br i1 %7603, label %7609, label %7604

; <label>:7604                                    ; preds = %7596
  %7605 = call float @dx.op.unary.f32(i32 7, float %7597)  ; Saturate(value)
  %7606 = fadd fast float %7600, -1.000000e+00
  %7607 = fmul fast float %7605, %7606
  %7608 = fadd fast float %7607, 1.000000e+00
  br label %7609

; <label>:7609                                    ; preds = %7604, %7596
  %7610 = phi float [ %7608, %7604 ], [ %7598, %7596 ]
  br i1 %7372, label %7611, label %7629

; <label>:7611                                    ; preds = %7609
  %7612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7613 = extractvalue %dx.types.CBufRet.f32 %7612, 1
  %7614 = fsub fast float %7449, %7613
  %7615 = call float @dx.op.unary.f32(i32 7, float %7614)  ; Saturate(value)
  %7616 = fsub fast float %7449, %7371
  %7617 = call float @dx.op.unary.f32(i32 7, float %7616)  ; Saturate(value)
  %7618 = fsub fast float %7615, %7617
  %7619 = fsub fast float %7451, %7617
  %7620 = fdiv fast float %7619, %7618
  %7621 = call float @dx.op.unary.f32(i32 7, float %7620)  ; Saturate(value)
  %7622 = fmul fast float %7621, 2.000000e+00
  %7623 = fsub fast float 3.000000e+00, %7622
  %7624 = fsub fast float %7600, %7610
  %7625 = fmul fast float %7621, %7621
  %7626 = fmul fast float %7625, %7624
  %7627 = fmul fast float %7626, %7623
  %7628 = fadd fast float %7627, %7610
  br label %7629

; <label>:7629                                    ; preds = %7611, %7609
  %7630 = phi float [ %7628, %7611 ], [ %7610, %7609 ]
  %7631 = call float @dx.op.binary.f32(i32 35, float %7600, float %7630)  ; FMax(a,b)
  %7632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7633 = extractvalue %dx.types.CBufRet.i32 %7632, 2
  %7634 = and i32 %7633, 1
  %7635 = icmp eq i32 %7634, 0
  %7636 = fcmp fast une float %7631, 1.000000e+00
  %7637 = and i1 %7636, %7635
  br i1 %7637, label %7638, label %7657

; <label>:7638                                    ; preds = %7629
  %7639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %64, float %7318, float %7319, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7640 = extractvalue %dx.types.ResRet.f32 %7639, 0
  %7641 = extractvalue %dx.types.ResRet.f32 %7639, 1
  %7642 = extractvalue %dx.types.ResRet.f32 %7639, 2
  %7643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7644 = extractvalue %dx.types.CBufRet.f32 %7643, 1
  %7645 = fmul fast float %7644, %7640
  %7646 = fmul fast float %7644, %7641
  %7647 = fmul fast float %7644, %7642
  %7648 = fcmp fast ogt float %7600, 0x3FEFFF2E40000000
  %7649 = fsub fast float 1.000000e+00, %7631
  %7650 = fsub fast float 1.000000e+00, %7600
  %7651 = fdiv fast float %7649, %7650
  %7652 = call float @dx.op.unary.f32(i32 7, float %7651)  ; Saturate(value)
  %7653 = select i1 %7648, float 0.000000e+00, float %7652
  %7654 = fmul fast float %7645, %7653
  %7655 = fmul fast float %7646, %7653
  %7656 = fmul fast float %7647, %7653
  br label %7657

; <label>:7657                                    ; preds = %7638, %7629
  %7658 = phi float [ 0.000000e+00, %7629 ], [ %7654, %7638 ]
  %7659 = phi float [ 0.000000e+00, %7629 ], [ %7655, %7638 ]
  %7660 = phi float [ 0.000000e+00, %7629 ], [ %7656, %7638 ]
  %7661 = fmul fast float %7658, %6233
  %7662 = fmul fast float %7659, %6233
  %7663 = fmul fast float %7660, %6233
  %7664 = fmul fast float %7631, %7293
  %7665 = call float @dx.op.dot3.f32(i32 55, float %7631, float %7631, float %7631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7666 = call float @dx.op.dot3.f32(i32 55, float %7661, float %7662, float %7663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7667 = select i1 %248, float %7665, float %7631
  %7668 = select i1 %248, float 1.000000e+00, float %7631
  %7669 = select i1 %248, float %7666, float %7661
  %7670 = select i1 %248, float 0.000000e+00, float %7662
  %7671 = select i1 %248, float 0.000000e+00, float %7663
  %7672 = fmul fast float %7667, %7305
  %7673 = fmul fast float %7667, %7306
  %7674 = fmul fast float %7668, %7307
  %7675 = fadd fast float %7672, %7669
  %7676 = fadd fast float %7673, %7670
  %7677 = fadd fast float %7671, %7674
  %7678 = fmul fast float %7667, %7308
  %7679 = fmul fast float %7667, %7309
  %7680 = fmul fast float %7668, %7310
  br label %7681

; <label>:7681                                    ; preds = %7657, %7314, %7283, %6515
  %7682 = phi float [ %6520, %6515 ], [ %7305, %7283 ], [ %7675, %7657 ], [ %7305, %7314 ]
  %7683 = phi float [ %6521, %6515 ], [ %7306, %7283 ], [ %7676, %7657 ], [ %7306, %7314 ]
  %7684 = phi float [ %6522, %6515 ], [ %7307, %7283 ], [ %7677, %7657 ], [ %7307, %7314 ]
  %7685 = phi float [ %6523, %6515 ], [ %7308, %7283 ], [ %7678, %7657 ], [ %7308, %7314 ]
  %7686 = phi float [ %6524, %6515 ], [ %7309, %7283 ], [ %7679, %7657 ], [ %7309, %7314 ]
  %7687 = phi float [ %6525, %6515 ], [ %7310, %7283 ], [ %7680, %7657 ], [ %7310, %7314 ]
  %7688 = phi float [ %6526, %6515 ], [ %7293, %7283 ], [ %7664, %7657 ], [ %7293, %7314 ]
  %7689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7690 = extractvalue %dx.types.CBufRet.f32 %7689, 2
  %7691 = extractvalue %dx.types.CBufRet.f32 %7689, 3
  %7692 = fmul fast float %7690, %102
  %7693 = fmul fast float %7691, %103
  %7694 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7695 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7696 = select i1 %6255, i32 2, i32 0
  %7697 = or i32 %7696, 1
  %7698 = uitofp i32 %7697 to float
  %7699 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7694, float %7695, float %7698, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7700 = extractvalue %dx.types.ResRet.f32 %7699, 0
  %7701 = extractvalue %dx.types.ResRet.f32 %7699, 1
  %7702 = extractvalue %dx.types.ResRet.f32 %7699, 2
  %7703 = extractvalue %dx.types.ResRet.f32 %7699, 3
  %7704 = add nuw nsw i32 %7696, 2
  %7705 = uitofp i32 %7704 to float
  %7706 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %64, float %7694, float %7695, float %7705, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7707 = extractvalue %dx.types.ResRet.f32 %7706, 0
  %7708 = extractvalue %dx.types.ResRet.f32 %7706, 1
  %7709 = extractvalue %dx.types.ResRet.f32 %7706, 2
  %7710 = extractvalue %dx.types.ResRet.f32 %7706, 3
  %7711 = call float @dx.op.binary.f32(i32 35, float %7701, float %7702)  ; FMax(a,b)
  %7712 = call float @dx.op.binary.f32(i32 35, float %7700, float %7711)  ; FMax(a,b)
  %7713 = call float @dx.op.binary.f32(i32 35, float %7712, float %7703)  ; FMax(a,b)
  %7714 = call float @dx.op.binary.f32(i32 36, float %7708, float %7709)  ; FMin(a,b)
  %7715 = call float @dx.op.binary.f32(i32 36, float %7707, float %7714)  ; FMin(a,b)
  %7716 = call float @dx.op.binary.f32(i32 36, float %7715, float %7710)  ; FMin(a,b)
  %7717 = fmul fast float %7713, 2.550000e+02
  %7718 = fadd fast float %7717, 0x3F70101020000000
  %7719 = fptoui float %7718 to i32
  %7720 = fmul fast float %7716, 2.550000e+02
  %7721 = fadd fast float %7720, 0x3F70101020000000
  %7722 = fptoui float %7721 to i32
  %7723 = icmp ult i32 %7719, %7722
  br i1 %7723, label %7724, label %7893

; <label>:7724                                    ; preds = %7681
  %7725 = fcmp fast ogt float %89, 9.843750e-01
  %7726 = fadd fast float %6519, -4.000000e+00
  %7727 = select i1 %7725, float -4.000000e+00, float %7726
  %7728 = call float @dx.op.binary.f32(i32 35, float %7727, float 0.000000e+00)  ; FMax(a,b)
  %7729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7730 = extractvalue %dx.types.CBufRet.f32 %7729, 0
  %7731 = fadd fast float %7730, %7728
  %7732 = extractvalue %dx.types.CBufRet.f32 %7729, 2
  %7733 = fmul fast float %7731, %7732
  %7734 = call float @dx.op.unary.f32(i32 23, float %7733)  ; Log(value)
  %7735 = extractvalue %dx.types.CBufRet.f32 %7729, 3
  %7736 = fmul fast float %7735, %7734
  %7737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7738 = extractvalue %dx.types.CBufRet.f32 %7737, 2
  %7739 = fmul fast float %7736, %7738
  %7740 = call float @dx.op.unary.f32(i32 7, float %7739)  ; Saturate(value)
  %7741 = uitofp i32 %7719 to float
  %7742 = uitofp i32 %7722 to float
  %7743 = fadd fast float %7741, 5.000000e-01
  %7744 = fadd fast float %7742, 5.000000e-01
  %7745 = fmul fast float %7738, %7743
  %7746 = fmul fast float %7738, %7744
  %7747 = fadd fast float %7745, 0x3F0FFB4800000000
  %7748 = fadd fast float %7746, 0xBF0FFB4800000000
  %7749 = call float @dx.op.binary.f32(i32 35, float %7740, float %7747)  ; FMax(a,b)
  %7750 = call float @dx.op.binary.f32(i32 36, float %7749, float %7748)  ; FMin(a,b)
  %7751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7752 = extractvalue %dx.types.CBufRet.f32 %7751, 1
  %7753 = extractvalue %dx.types.CBufRet.f32 %7751, 2
  %7754 = extractvalue %dx.types.CBufRet.f32 %7751, 0
  %7755 = select i1 %6255, float %7754, float 0.000000e+00
  %7756 = fmul fast float %7752, %7750
  %7757 = fadd fast float %7755, %7756
  %7758 = fadd fast float %7755, %7753
  %7759 = fsub fast float %7752, %7753
  %7760 = fadd fast float %7759, %7755
  %7761 = call float @dx.op.binary.f32(i32 35, float %7757, float %7758)  ; FMax(a,b)
  %7762 = call float @dx.op.binary.f32(i32 36, float %7761, float %7760)  ; FMin(a,b)
  %7763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %62, float %7694, float %7695, float %7762, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7764 = extractvalue %dx.types.ResRet.f32 %7763, 0
  %7765 = extractvalue %dx.types.ResRet.f32 %7763, 1
  %7766 = extractvalue %dx.types.ResRet.f32 %7763, 2
  %7767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.i32 %7767, 0
  %7769 = extractvalue %dx.types.CBufRet.i32 %7767, 1
  %7770 = uitofp i32 %7768 to float
  %7771 = uitofp i32 %7769 to float
  %7772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7773 = extractvalue %dx.types.CBufRet.f32 %7772, 0
  %7774 = extractvalue %dx.types.CBufRet.f32 %7772, 1
  %7775 = fmul fast float %7770, %7694
  %7776 = fmul fast float %7771, %7695
  %7777 = fadd fast float %7775, -5.000000e-01
  %7778 = fadd fast float %7776, -5.000000e-01
  %7779 = call float @dx.op.unary.f32(i32 22, float %7777)  ; Frc(value)
  %7780 = call float @dx.op.unary.f32(i32 22, float %7778)  ; Frc(value)
  %7781 = fmul fast float %7779, %7779
  %7782 = fmul fast float %7781, %7779
  %7783 = fsub fast float 3.000000e+00, %7779
  %7784 = fmul fast float %7781, %7783
  %7785 = fmul fast float %7779, 3.000000e+00
  %7786 = fmul fast float %7782, 3.000000e+00
  %7787 = fmul fast float %7781, 6.000000e+00
  %7788 = fsub fast float %7786, %7787
  %7789 = fadd fast float %7788, 4.000000e+00
  %7790 = fmul fast float %7789, 0x3FC5555560000000
  %7791 = fmul fast float %7782, -3.000000e+00
  %7792 = fadd fast float %7781, %7779
  %7793 = fmul fast float %7792, 3.000000e+00
  %7794 = fadd fast float %7791, 1.000000e+00
  %7795 = fadd fast float %7794, %7793
  %7796 = fmul fast float %7782, 0x3FC5555560000000
  %7797 = fmul fast float %7780, %7780
  %7798 = fmul fast float %7797, %7780
  %7799 = fsub fast float 3.000000e+00, %7780
  %7800 = fmul fast float %7797, %7799
  %7801 = fmul fast float %7780, 3.000000e+00
  %7802 = fmul fast float %7798, 3.000000e+00
  %7803 = fmul fast float %7797, 6.000000e+00
  %7804 = fsub fast float %7802, %7803
  %7805 = fadd fast float %7804, 4.000000e+00
  %7806 = fmul fast float %7805, 0x3FC5555560000000
  %7807 = fmul fast float %7798, -3.000000e+00
  %7808 = fadd fast float %7797, %7780
  %7809 = fmul fast float %7808, 3.000000e+00
  %7810 = fadd fast float %7807, 1.000000e+00
  %7811 = fadd fast float %7810, %7809
  %7812 = fmul fast float %7798, 0x3FC5555560000000
  %7813 = fadd fast float %7779, 1.000000e+00
  %7814 = fsub fast float 1.000000e+00, %7785
  %7815 = fadd fast float %7814, %7784
  %7816 = fadd fast float %7815, %7789
  %7817 = fmul fast float %7816, 0x3FC5555560000000
  %7818 = fdiv fast float %7790, %7817
  %7819 = fsub fast float %7813, %7818
  %7820 = fsub fast float 1.000000e+00, %7779
  %7821 = fadd fast float %7795, %7782
  %7822 = fmul fast float %7821, 0x3FC5555560000000
  %7823 = fdiv fast float %7796, %7822
  %7824 = fadd fast float %7820, %7823
  %7825 = fadd fast float %7780, 1.000000e+00
  %7826 = fsub fast float 1.000000e+00, %7801
  %7827 = fadd fast float %7826, %7800
  %7828 = fadd fast float %7827, %7805
  %7829 = fmul fast float %7828, 0x3FC5555560000000
  %7830 = fdiv fast float %7806, %7829
  %7831 = fsub fast float %7825, %7830
  %7832 = fsub fast float 1.000000e+00, %7780
  %7833 = fadd fast float %7811, %7798
  %7834 = fmul fast float %7833, 0x3FC5555560000000
  %7835 = fdiv fast float %7812, %7834
  %7836 = fadd fast float %7835, %7832
  %7837 = fmul fast float %7819, %7773
  %7838 = fsub fast float %7694, %7837
  %7839 = fmul fast float %7824, %7773
  %7840 = fadd fast float %7839, %7694
  %7841 = fmul fast float %7836, %7774
  %7842 = fadd fast float %7841, %7695
  %7843 = fmul fast float %7831, %7774
  %7844 = fsub fast float %7695, %7843
  %7845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7838, float %7844, float %7762, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7846 = extractvalue %dx.types.ResRet.f32 %7845, 0
  %7847 = extractvalue %dx.types.ResRet.f32 %7845, 1
  %7848 = extractvalue %dx.types.ResRet.f32 %7845, 2
  %7849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7840, float %7844, float %7762, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7850 = extractvalue %dx.types.ResRet.f32 %7849, 0
  %7851 = extractvalue %dx.types.ResRet.f32 %7849, 1
  %7852 = extractvalue %dx.types.ResRet.f32 %7849, 2
  %7853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7838, float %7842, float %7762, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7854 = extractvalue %dx.types.ResRet.f32 %7853, 0
  %7855 = extractvalue %dx.types.ResRet.f32 %7853, 1
  %7856 = extractvalue %dx.types.ResRet.f32 %7853, 2
  %7857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %7840, float %7842, float %7762, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7858 = extractvalue %dx.types.ResRet.f32 %7857, 0
  %7859 = extractvalue %dx.types.ResRet.f32 %7857, 1
  %7860 = extractvalue %dx.types.ResRet.f32 %7857, 2
  %7861 = fsub fast float %7854, %7846
  %7862 = fsub fast float %7855, %7847
  %7863 = fsub fast float %7856, %7848
  %7864 = fmul fast float %7861, %7834
  %7865 = fmul fast float %7862, %7834
  %7866 = fmul fast float %7863, %7834
  %7867 = fadd fast float %7864, %7846
  %7868 = fadd fast float %7865, %7847
  %7869 = fadd fast float %7866, %7848
  %7870 = fsub fast float %7858, %7850
  %7871 = fsub fast float %7859, %7851
  %7872 = fsub fast float %7860, %7852
  %7873 = fmul fast float %7870, %7834
  %7874 = fmul fast float %7871, %7834
  %7875 = fmul fast float %7872, %7834
  %7876 = fsub fast float %7850, %7867
  %7877 = fadd fast float %7876, %7873
  %7878 = fsub fast float %7851, %7868
  %7879 = fadd fast float %7878, %7874
  %7880 = fsub fast float %7852, %7869
  %7881 = fadd fast float %7880, %7875
  %7882 = fmul fast float %7877, %7822
  %7883 = fmul fast float %7879, %7822
  %7884 = fmul fast float %7881, %7822
  %7885 = fadd fast float %7882, %7867
  %7886 = fadd fast float %7883, %7868
  %7887 = fadd fast float %7884, %7869
  %7888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7889 = extractvalue %dx.types.CBufRet.f32 %7888, 1
  %7890 = fmul fast float %7885, %7889
  %7891 = fmul fast float %7886, %7889
  %7892 = fmul fast float %7887, %7889
  br label %7893

; <label>:7893                                    ; preds = %7724, %7681
  %7894 = phi float [ %7764, %7724 ], [ 1.000000e+00, %7681 ]
  %7895 = phi float [ %7765, %7724 ], [ 1.000000e+00, %7681 ]
  %7896 = phi float [ %7766, %7724 ], [ 1.000000e+00, %7681 ]
  %7897 = phi float [ %7890, %7724 ], [ 0.000000e+00, %7681 ]
  %7898 = phi float [ %7891, %7724 ], [ 0.000000e+00, %7681 ]
  %7899 = phi float [ %7892, %7724 ], [ 0.000000e+00, %7681 ]
  %7900 = fmul fast float %7897, %6233
  %7901 = fmul fast float %7898, %6233
  %7902 = fmul fast float %7899, %6233
  %7903 = fmul fast float %7894, %7688
  %7904 = call float @dx.op.dot3.f32(i32 55, float %7894, float %7895, float %7896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7905 = call float @dx.op.dot3.f32(i32 55, float %7900, float %7901, float %7902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7906 = select i1 %248, float %7904, float %7894
  %7907 = select i1 %248, float %7904, float %7895
  %7908 = select i1 %248, float 1.000000e+00, float %7896
  %7909 = select i1 %248, float %7905, float %7900
  %7910 = select i1 %248, float 0.000000e+00, float %7901
  %7911 = select i1 %248, float 0.000000e+00, float %7902
  %7912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.i32 %7912, 3
  %7914 = and i32 %7913, 3
  %7915 = icmp ne i32 %7914, 0
  %7916 = and i32 %7913, 4
  %7917 = icmp ne i32 %7916, 0
  %7918 = and i1 %7915, %7917
  %7919 = and i1 %248, %7918
  br i1 %7919, label %7920, label %7926

; <label>:7920                                    ; preds = %7893
  %7921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7922 = extractvalue %dx.types.CBufRet.f32 %7921, 1
  %7923 = fadd fast float %7903, -1.000000e+00
  %7924 = fmul fast float %7922, %7923
  %7925 = fadd fast float %7924, 1.000000e+00
  br label %7926

; <label>:7926                                    ; preds = %7920, %7893
  %7927 = phi float [ %7925, %7920 ], [ %7903, %7893 ]
  %7928 = fadd fast float %7685, %7682
  %7929 = fmul fast float %7906, %7928
  %7930 = fadd fast float %7929, %7909
  %7931 = fadd fast float %7686, %7683
  %7932 = fmul fast float %7907, %7931
  %7933 = fadd fast float %7932, %7910
  %7934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7935 = extractvalue %dx.types.CBufRet.f32 %7934, 0
  br i1 %248, label %7936, label %7960

; <label>:7936                                    ; preds = %7926
  %7937 = fadd fast float %7930, %7933
  %7938 = fmul fast float %7935, %7937
  %7939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7939, 3
  %7941 = extractvalue %dx.types.CBufRet.f32 %6237, 1
  %7942 = fsub fast float %6242, %6236
  %7943 = fadd fast float %7942, %6243
  %7944 = fsub fast float %7943, %7941
  %7945 = extractvalue %dx.types.CBufRet.f32 %6237, 2
  %7946 = fmul fast float %7944, %7945
  %7947 = call float @dx.op.unary.f32(i32 7, float %7946)  ; Saturate(value)
  %7948 = fsub fast float %7947, %7940
  %7949 = fmul fast float %7948, %7927
  %7950 = fadd fast float %7949, %7940
  %7951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7952 = extractvalue %dx.types.CBufRet.f32 %7951, 0
  %7953 = fsub fast float %7950, %7952
  %7954 = fmul fast float %7953, 1.000000e+01
  %7955 = call float @dx.op.unary.f32(i32 7, float %7954)  ; Saturate(value)
  %7956 = fsub fast float %1492, %6233
  %7957 = fmul fast float %7955, %7956
  %7958 = fadd fast float %7957, %6233
  %7959 = fmul fast float %7958, %7950
  br label %7984

; <label>:7960                                    ; preds = %7926
  %7961 = fadd fast float %7687, %7684
  %7962 = fmul fast float %7908, %7961
  %7963 = fadd fast float %7962, %7911
  %7964 = fmul fast float %7935, %7930
  %7965 = fmul fast float %7935, %7933
  %7966 = fmul fast float %7935, %7963
  %7967 = call float @dx.op.binary.f32(i32 35, float %7965, float %7966)  ; FMax(a,b)
  %7968 = call float @dx.op.binary.f32(i32 35, float %7964, float %7967)  ; FMax(a,b)
  %7969 = call float @dx.op.binary.f32(i32 35, float %7968, float %6233)  ; FMax(a,b)
  %7970 = fcmp fast ugt float %7969, 0x3F10000000000000
  br i1 %7970, label %7972, label %7971

; <label>:7971                                    ; preds = %7960
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7972

; <label>:7972                                    ; preds = %7971, %7960
  %7973 = add i32 %73, 116
  %7974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 %7973, i32 undef)  ; BufferLoad(srv,index,wot)
  %7975 = extractvalue %dx.types.ResRet.i32 %7974, 0
  %7976 = and i32 %7975, 32
  %7977 = icmp eq i32 %7976, 0
  br i1 %7977, label %7984, label %7978

; <label>:7978                                    ; preds = %7972
  %7979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7980 = extractvalue %dx.types.CBufRet.f32 %7979, 0
  %7981 = fmul fast float %7980, 0x3FE99999A0000000
  %7982 = fadd fast float %7980, %7964
  %7983 = fadd fast float %7981, %7966
  br label %7984

; <label>:7984                                    ; preds = %7978, %7972, %7936
  %7985 = phi float [ %7938, %7936 ], [ %7982, %7978 ], [ %7964, %7972 ]
  %7986 = phi float [ %7959, %7936 ], [ %7965, %7978 ], [ %7965, %7972 ]
  %7987 = phi float [ %7958, %7936 ], [ %7983, %7978 ], [ %7966, %7972 ]
  %7988 = phi float [ %7958, %7936 ], [ %6233, %7978 ], [ %6233, %7972 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7989 = call float @dx.op.binary.f32(i32 36, float %7985, float 3.225500e+04)  ; FMin(a,b)
  %7990 = call float @dx.op.binary.f32(i32 36, float %7986, float 3.225500e+04)  ; FMin(a,b)
  %7991 = call float @dx.op.binary.f32(i32 36, float %7987, float 3.225500e+04)  ; FMin(a,b)
  %7992 = call float @dx.op.binary.f32(i32 36, float %7988, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7989)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7990)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7991)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7992)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!84 = !{[29 x i32] [i32 27, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!85 = !{void ()* @ps_main, !"ps_main", !86, !4, !105}
!86 = !{!87, !103, null}
!87 = !{!88, !91, !93, !95, !97, !98, !99, !100, !101, !102}
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
!101 = !{i32 8, !"SV_IsFrontFace", i8 5, i8 13, !89, i8 1, i32 1, i8 1, i32 6, i8 2, !92}
!102 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !89, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!103 = !{!104}
!104 = !{i32 0, !"SV_Target", i8 9, i8 16, !89, i8 0, i32 1, i8 4, i32 0, i8 0, !90}
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

